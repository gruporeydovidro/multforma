import { useEffect, useRef, useState } from 'react';
import { useParams } from 'react-router-dom';
import { Alert, Card, DataTable, Input, Select } from '../../components/ui';
import { can, useAuth } from '../../lib/auth';
import { decimal, money } from '../../lib/format';
import { useAsync } from '../../lib/useAsync';
import { cadastrosApi, type ProdutoItem, type TabelaPreco } from './api';
import { AtivoBadge, Checkbox, FILTRO_ATIVO, FormularioCadastro, ListaCadastro, SimNao } from './components';
import { confirmarDesativacao, excluirRegistro, useEdicao, useNavegacaoCadastro } from './hooks';
import { lerNumero } from '../../lib/numero';
import { doFormulario, listaDePrecos, margemPct, paraFormulario, precosInvalidos, textoNumero, UNIDADES, type ValoresForm } from './util';

const ROTA = 'cadastros/produtos';
const CAMPOS = [
  'codigo', 'nome', 'tipo', 'grupo_id', 'unidade_venda', 'espessura_mm', 'perda_pct', 'arredondamento_id',
  'area_minima_m2', 'custo', 'preco_venda', 'estoque_minimo', 'controla_estoque', 'ncm', 'ativo',
];
const NUMERICOS = ['grupo_id', 'arredondamento_id', 'espessura_mm', 'perda_pct', 'area_minima_m2', 'custo', 'preco_venda', 'estoque_minimo'];
const VAZIO: ValoresForm = {
  ...paraFormulario({}, CAMPOS), tipo: 'produto', unidade_venda: 'UN', perda_pct: '0', area_minima_m2: '0',
  custo: '0', preco_venda: '0', estoque_minimo: '0', controla_estoque: true, ativo: true,
};

const TODOS = { pageSize: 200 };

/** Grupos, arredondamentos e tabelas de preço para os selects e a seção de preços. */
function useApoioProduto() {
  return useAsync(() => Promise.all([
    cadastrosApi.grupos.listar(TODOS),
    cadastrosApi.arredondamentos.listar(TODOS),
    cadastrosApi.tabelasPreco.listar(TODOS),
  ]).then(([g, a, t]) => ({ grupos: g.items, arredondamentos: a.items, tabelas: t.items })));
}

export function ProdutosLista() {
  const { user } = useAuth();
  const nav = useNavegacaoCadastro(ROTA);
  const apoio = useApoioProduto();
  const filtroGrupo = {
    nome: 'grupo_id',
    rotulo: 'Grupo',
    opcoes: [{ valor: '', rotulo: 'Todos' }, ...(apoio.data?.grupos ?? []).map((g) => ({ valor: String(g.id), rotulo: g.nome }))],
  };
  const filtroTipo = { nome: 'tipo', rotulo: 'Tipo', opcoes: [{ valor: '', rotulo: 'Todos' }, { valor: 'produto', rotulo: 'Produtos' }, { valor: 'servico', rotulo: 'Serviços' }] };
  return (
    <ListaCadastro<ProdutoItem>
      titulo="Produtos e serviços"
      listar={cadastrosApi.produtos.listar}
      filtros={[filtroTipo, filtroGrupo, FILTRO_ATIVO]}
      busca="Código ou nome"
      onAbrir={(p) => nav.abrir(p.id)}
      acoes={can(user, 'vendedor', 'financeiro') && <button className="btn primary" onClick={() => nav.abrir('novo')}>Novo produto</button>}
      colunas={[
        { header: 'Código', render: (p) => <strong>{p.codigo}</strong>, width: '110px' },
        { header: 'Nome', render: (p) => p.nome },
        { header: 'Grupo', render: (p) => p.grupo_nome },
        { header: 'Unid.', render: (p) => p.unidade_venda, align: 'center' },
        { header: 'Esp. (mm)', render: (p) => (p.espessura_mm === null ? '' : decimal(p.espessura_mm, 0)), align: 'right' },
        { header: 'Preço de venda', render: (p) => money(p.preco_venda), align: 'right' },
        { header: 'Estoque', render: (p) => <SimNao valor={p.controla_estoque} />, align: 'center' },
        { header: 'Situação', render: (p) => <AtivoBadge ativo={p.ativo} />, width: '90px' },
      ]}
    />
  );
}

export function ProdutoForm() {
  const { id: param } = useParams();
  const { user } = useAuth();
  const nav = useNavegacaoCadastro(ROTA);
  const { id, form, registro, carregando, assumir } = useEdicao(param, cadastrosApi.produtos.obter, VAZIO, (p) => paraFormulario(p, CAMPOS));
  const apoio = useApoioProduto();
  const [precos, setPrecos] = useState<Record<number, string>>({});
  /** Produto cujos preços já estão na tela (criado agora): não recarregar por cima do que foi digitado. */
  const precosDe = useRef<number | null>(null);

  useEffect(() => {
    if (id === null || precosDe.current === id) return;
    precosDe.current = id;
    cadastrosApi.produtos.precos(id)
      .then((lista) => setPrecos(Object.fromEntries(lista.map((p) => [p.tabela_preco_id, textoNumero(p.preco)]))))
      .catch((e) => form.setErro(e.message));
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [id]);

  /**
   * Grava o produto e depois os preços por tabela. Logo após criar, a tela passa a ser a do produto criado
   * (rota trocada com replace), para que uma falha nos preços não faça o próximo Salvar criá-lo de novo.
   */
  const salvar = async () => {
    if (form.enviando) return;
    if (precosInvalidos(precos).length) return form.setErro('Há preço por tabela inválido. Corrija ou deixe em branco.');
    if (!confirmarDesativacao(registro, form.valores)) return;
    const ok = await form.enviar(async () => {
      const produto = await cadastrosApi.produtos.salvar(id, doFormulario(form.valores, NUMERICOS));
      if (id === null) {
        precosDe.current = produto.id;
        assumir(produto.id, produto);
        nav.trocarPara(produto.id);
      }
      try {
        await cadastrosApi.produtos.salvarPrecos(produto.id, listaDePrecos(precos));
      } catch (e) {
        throw new Error(`Produto salvo, mas os preços por tabela não foram gravados: ${(e as Error).message}. Corrija e salve de novo.`);
      }
    });
    if (ok) nav.voltar();
  };
  const excluir = async () => {
    const feito = id && (await excluirRegistro(form, () => cadastrosApi.produtos.excluir(id)));
    if (!feito) return;
    if (feito.aviso) window.alert(feito.aviso);
    nav.voltar();
  };

  /** Serviço não controla estoque; ao virar produto, volta ao padrão (controla). */
  const trocarTipo = (tipo: string) => {
    form.definir('tipo', tipo);
    form.definir('controla_estoque', tipo === 'produto');
  };

  const servico = form.valores.tipo === 'servico';
  const vidro = form.valores.unidade_venda === 'M2';
  const custo = lerNumero(String(form.valores.custo)) ?? 0;
  const venda = lerNumero(String(form.valores.preco_venda)) ?? 0;
  const margem = margemPct(custo, venda);

  return (
    <FormularioCadastro
      titulo={id ? registro ? `${registro.codigo} · ${registro.nome}` : 'Carregando…' : 'Novo produto'}
      form={form}
      podeGravar={can(user, 'vendedor', 'financeiro')}
      carregando={carregando}
      onSalvar={salvar}
      onExcluir={id ? excluir : undefined}
      onVoltar={nav.voltar}
    >
      <Alert>{apoio.error}</Alert>
      <Card title="Dados do produto">
        <div className="grid">
          <Input label="Código" className="col-2" required autoFocus {...form.campo('codigo')} />
          <Input label="Nome" className="col-6" required {...form.campo('nome')} />
          <Select label="Tipo" className="col-2" {...form.campo('tipo')} onChange={(e) => trocarTipo(e.target.value)}>
            <option value="produto">Produto</option>
            <option value="servico">Serviço</option>
          </Select>
          <Checkbox label="Ativo" className="col-2" {...form.marca('ativo')} />
          <Select label="Grupo" className="col-4" {...form.campo('grupo_id')}>
            <option value="">Sem grupo</option>
            {apoio.data?.grupos.map((g) => <option key={g.id} value={g.id}>{g.nome}</option>)}
          </Select>
          <Select label="Unidade de venda" className="col-4" {...form.campo('unidade_venda')}>
            {Object.entries(UNIDADES).map(([v, r]) => <option key={v} value={v}>{v} · {r}</option>)}
          </Select>
          <Input label="NCM" className="col-4" {...form.campo('ncm')} />
        </div>
      </Card>
      <Card title="Medidas e cálculo">
        <div className="grid">
          <Input label="Espessura (mm)" className="col-3" inputMode="decimal" {...form.campo('espessura_mm')} />
          <Select label="Arredondamento" className="col-3" {...form.campo('arredondamento_id')}>
            <option value="">Sem arredondamento</option>
            {apoio.data?.arredondamentos.map((a) => <option key={a.id} value={a.id}>{a.descricao} ({a.valor_cm} cm)</option>)}
          </Select>
          <Input label="Área mínima (m²)" className="col-3" inputMode="decimal" disabled={!vidro}
            hint={vidro ? 'Cobrança mínima por peça' : 'Só para venda em m²'} {...form.campo('area_minima_m2')} />
          <Input label="Perda (%)" className="col-3" inputMode="decimal" {...form.campo('perda_pct')} />
        </div>
      </Card>
      <Card title="Custo, preço e estoque">
        <div className="grid">
          <Input label="Custo (R$)" className="col-3" inputMode="decimal" {...form.campo('custo')} />
          <Input label="Preço de venda (R$)" className="col-3" inputMode="decimal"
            hint={margem === null ? undefined : `Margem: ${decimal(margem, 1)}%`} {...form.campo('preco_venda')} />
          <Input label="Estoque mínimo" className="col-3" inputMode="decimal" {...form.campo('estoque_minimo')} />
          <Checkbox label="Controla estoque" className="col-3" disabled={servico} {...form.marca('controla_estoque')} />
        </div>
      </Card>
      <Card title="Preços por tabela">
        <p className="muted" style={{ marginTop: 0 }}>Deixe em branco para usar o preço de venda ({money(venda)}) naquela tabela.</p>
        <DataTable<TabelaPreco>
          rows={apoio.data?.tabelas}
          rowKey={(t) => t.id}
          empty="Nenhuma tabela de preço cadastrada."
          columns={[
            { header: 'Tabela', render: (t) => <>{t.nome} {!t.ativo && <AtivoBadge ativo={false} />}</> },
            {
              header: 'Preço (R$)',
              width: '200px',
              render: (t) => (
                <input inputMode="decimal" aria-label={`Preço na tabela ${t.nome}`} placeholder={textoNumero(venda)}
                  value={precos[t.id] ?? ''} onChange={(e) => setPrecos((p) => ({ ...p, [t.id]: e.target.value }))} />
              ),
            },
            {
              header: 'Margem',
              align: 'right',
              width: '100px',
              render: (t) => {
                const m = margemPct(custo, lerNumero(precos[t.id]) ?? venda);
                return m === null ? '' : `${decimal(m, 1)}%`;
              },
            },
          ]}
        />
      </Card>
    </FormularioCadastro>
  );
}
