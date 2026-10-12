import { describe, expect, it } from 'vitest';
import {
  ErroProducao, ItemProducao, montarPainel, OrdemProducao, planejarItens, resolverPeriodo, RoteiroProducao,
} from '../src/modules/producao/domain/index.js';

// Domínio puro: sem banco.
const roteiro = new RoteiroProducao([
  { id: 30, nome: 'Têmpera', ordem: 3, ativo: true },
  { id: 10, nome: 'Corte', ordem: 1, ativo: true },
  { id: 20, nome: 'Lapidação', ordem: 2, ativo: false },
  { id: 40, nome: 'Expedição', ordem: 4, ativo: true },
]);

const erro = (fn: () => unknown) => {
  try {
    fn();
  } catch (e) {
    return e as ErroProducao;
  }
  throw new Error('esperava erro');
};

describe('RoteiroProducao', () => {
  it('ordena pela ordem e pula setores inativos', () => {
    expect(roteiro.primeiro()?.id).toBe(10);
    expect(roteiro.proximo(10)?.id).toBe(30);
    expect(roteiro.proximo(20)?.id).toBe(30); // item que já estava num setor desativado segue adiante
    expect(roteiro.proximo(40)).toBeUndefined();
    expect(roteiro.ativos().map((s) => s.id)).toEqual([10, 30, 40]);
  });

  it('desempata pelo id', () => {
    const r = new RoteiroProducao([{ id: 2, nome: 'B', ordem: 1, ativo: true }, { id: 1, nome: 'A', ordem: 1, ativo: true }]);
    expect(r.primeiro()?.id).toBe(1);
    expect(r.proximo(1)?.id).toBe(2);
  });

  it('rejeita setor desconhecido', () => {
    expect(erro(() => roteiro.proximo(99)).message).toMatch(/inexistente/);
  });
});

describe('ItemProducao', () => {
  it('avança setor a setor até concluir', () => {
    const item = new ItemProducao(1, 2, 10, 'pendente');
    const m = item.marcar({ setorId: 10 }, roteiro);
    expect(m).toMatchObject({ itemId: 1, setorId: 10, quantidade: 2, defeito: false, motivoId: null });
    expect(item.setorAtualId).toBe(30);
    expect(item.status).toBe('em_producao');
    item.marcar({ setorId: 30 }, roteiro);
    item.marcar({ setorId: 40 }, roteiro);
    expect(item.status).toBe('concluido');
    expect(item.setorAtualId).toBeNull();
    expect(erro(() => item.marcar({ setorId: 40 }, roteiro)).tipo).toBe('conflito');
  });

  it('valida setor, quantidade e motivo', () => {
    const item = new ItemProducao(1, 2, 10, 'pendente');
    expect(erro(() => item.marcar({ setorId: 30 }, roteiro)).tipo).toBe('invalido');
    expect(erro(() => item.marcar({ setorId: 10, quantidade: 3 }, roteiro)).message).toMatch(/Quantidade maior/);
    expect(erro(() => item.marcar({ setorId: 10, quantidade: 0 }, roteiro)).tipo).toBe('invalido');
    expect(erro(() => item.marcar({ setorId: 10, defeito: true }, roteiro)).message).toMatch(/motivo/);
    expect(item.status).toBe('pendente');
  });

  it('defeito separa o item e refazer volta ao primeiro setor', () => {
    const item = new ItemProducao(1, 1, 30, 'em_producao');
    const m = item.marcar({ setorId: 30, defeito: true, motivoId: 4, observacao: 'trincou' }, roteiro);
    expect(m).toMatchObject({ defeito: true, motivoId: 4, observacao: 'trincou', quantidade: 1 });
    expect(item.status).toBe('defeito');
    expect(item.setorAtualId).toBe(30);
    expect(erro(() => item.marcar({ setorId: 30 }, roteiro)).tipo).toBe('conflito');
    item.refazer(roteiro);
    expect(item.status).toBe('pendente');
    expect(item.setorAtualId).toBe(10);
    expect(erro(() => item.refazer(roteiro)).tipo).toBe('conflito');
  });

  it('refazer exige ao menos um setor ativo', () => {
    const item = new ItemProducao(1, 1, 10, 'defeito');
    expect(erro(() => item.refazer(new RoteiroProducao([{ id: 10, nome: 'X', ordem: 1, ativo: false }]))).tipo).toBe('invalido');
  });
});

describe('ItemProducao: marcação parcial (acúmulo por setor)', () => {
  it('acumula as marcações sem defeito e só avança quando completa o lote', () => {
    const item = new ItemProducao(1, 10, 10, 'pendente');
    const m = item.marcar({ setorId: 10, quantidade: 1 }, roteiro);
    expect(m).toMatchObject({ quantidade: 1, avancou: false });
    expect(item).toMatchObject({ setorAtualId: 10, status: 'em_producao', processadoNoSetor: 1, restanteNoSetor: 9 });
    item.marcar({ setorId: 10, quantidade: 4 }, roteiro);
    expect(item.restanteNoSetor).toBe(5);
    expect(erro(() => item.marcar({ setorId: 10, quantidade: 6 }, roteiro)).message).toMatch(/restante no setor \(5/);
    expect(item.processadoNoSetor).toBe(5);
    expect(item.marcar({ setorId: 10, quantidade: 5 }, roteiro).avancou).toBe(true);
    expect(item).toMatchObject({ setorAtualId: 30, status: 'em_producao', processadoNoSetor: 0, restanteNoSetor: 10 });
  });

  it('sem quantidade, marca o restante do setor; no último setor só conclui com o lote completo', () => {
    const item = new ItemProducao(1, 10, 40, 'em_producao', 7);
    expect(erro(() => item.marcar({ setorId: 40, quantidade: 4 }, roteiro)).tipo).toBe('invalido');
    expect(item.marcar({ setorId: 40 }, roteiro)).toMatchObject({ quantidade: 3, avancou: true });
    expect(item.status).toBe('concluido');
    const parcial = new ItemProducao(2, 10, 40, 'em_producao');
    parcial.marcar({ setorId: 40, quantidade: 1 }, roteiro);
    expect(parcial.status).toBe('em_producao');
    expect(parcial.concluido).toBe(false);
  });

  it('aceita quantidades fracionárias sem erro de ponto flutuante', () => {
    const item = new ItemProducao(1, 0.3, 10, 'pendente');
    item.marcar({ setorId: 10, quantidade: 0.1 }, roteiro);
    item.marcar({ setorId: 10, quantidade: 0.2 }, roteiro);
    expect(item.setorAtualId).toBe(30);
  });

  it('defeito registra a quantidade defeituosa e refazer zera o acúmulo', () => {
    const item = new ItemProducao(1, 10, 30, 'em_producao', 4);
    expect(erro(() => item.marcar({ setorId: 30, quantidade: 11, defeito: true, motivoId: 2 }, roteiro)).message).toMatch(/Quantidade maior/);
    const m = item.marcar({ setorId: 30, quantidade: 3, defeito: true, motivoId: 2 }, roteiro);
    expect(m).toMatchObject({ quantidade: 3, defeito: true, motivoId: 2, avancou: false });
    expect(item.status).toBe('defeito');
    item.refazer(roteiro);
    expect(item).toMatchObject({ setorAtualId: 10, status: 'pendente', processadoNoSetor: 0, restanteNoSetor: 10 });
  });
});

describe('OrdemProducao', () => {
  const nova = () => new OrdemProducao(7, 'aguardando', [new ItemProducao(1, 1, 10, 'pendente'), new ItemProducao(2, 1, 40, 'em_producao')]);

  it('inicia na primeira marcação e conclui quando todos os itens terminam', () => {
    const o = nova();
    o.marcarItem(1, { setorId: 10 }, roteiro);
    expect(o.status).toBe('em_producao');
    expect(o.eventos).toEqual({ iniciou: true, concluiu: false });
    o.marcarItem(2, { setorId: 40 }, roteiro);
    o.marcarItem(1, { setorId: 30 }, roteiro);
    expect(o.status).toBe('em_producao');
    o.marcarItem(1, { setorId: 40 }, roteiro);
    expect(o.status).toBe('concluida');
    expect(o.eventos.concluiu).toBe(true);
    expect(erro(() => o.marcarItem(1, { setorId: 40 }, roteiro)).message).toMatch(/concluída/);
    expect(erro(() => o.cancelar()).tipo).toBe('conflito');
  });

  it('item inexistente e ordem cancelada', () => {
    const o = nova();
    expect(erro(() => o.marcarItem(99, { setorId: 10 }, roteiro)).tipo).toBe('nao_encontrado');
    o.cancelar();
    expect(o.status).toBe('cancelada');
    expect(erro(() => o.marcarItem(1, { setorId: 10 }, roteiro)).tipo).toBe('conflito');
    expect(erro(() => o.refazerItem(1, roteiro)).tipo).toBe('conflito');
    expect(erro(() => o.cancelar()).message).toMatch(/já cancelada/);
  });

  it('marcação parcial no último setor não conclui a ordem', () => {
    const o = new OrdemProducao(1, 'em_producao', [new ItemProducao(1, 10, 40, 'em_producao'), new ItemProducao(2, 1, null, 'concluido')]);
    o.marcarItem(1, { setorId: 40, quantidade: 1 }, roteiro);
    expect(o.status).toBe('em_producao');
    o.marcarItem(1, { setorId: 40, quantidade: 8 }, roteiro);
    expect(o.status).toBe('em_producao');
    o.marcarItem(1, { setorId: 40, quantidade: 1 }, roteiro);
    expect(o.status).toBe('concluida');
    expect(o.eventos.concluiu).toBe(true);
  });

  it('defeito não conclui a ordem', () => {
    const o = new OrdemProducao(1, 'em_producao', [new ItemProducao(1, 1, 40, 'em_producao')]);
    o.marcarItem(1, { setorId: 40, defeito: true, motivoId: 1 }, roteiro);
    expect(o.status).toBe('em_producao');
    expect(o.eventos).toEqual({ iniciou: false, concluiu: false });
  });
});

describe('planejamento, painel e período', () => {
  it('planeja os itens no primeiro setor e ignora quantidade zero', () => {
    const itens = planejarItens(
      [
        { orcamento_item_id: 1, produto_id: 1, descricao: 'Vidro', quantidade: 2, largura_mm: 500, altura_mm: 900 },
        { orcamento_item_id: 2, produto_id: 1, descricao: 'Zero', quantidade: 0, largura_mm: null, altura_mm: null },
      ],
      roteiro,
    );
    expect(itens).toHaveLength(1);
    expect(itens[0].setor_atual_id).toBe(10);
  });

  it('sem setor ativo, recusa planejar (conflito) em vez de criar itens sem setor', () => {
    const semSetor = new RoteiroProducao([{ id: 10, nome: 'Corte', ordem: 1, ativo: false }]);
    const item = { orcamento_item_id: 1, produto_id: 1, descricao: 'Vidro', quantidade: 1, largura_mm: 500, altura_mm: 900 };
    const e = erro(() => planejarItens([item], semSetor));
    expect(e.tipo).toBe('conflito');
    expect(e.message).toMatch(/Nenhum setor de produção ativo/);
    expect(planejarItens([{ ...item, quantidade: 0 }], semSetor)).toEqual([]);
  });

  it('agrupa o painel por setor', () => {
    const p = montarPainel(roteiro.ativos(), [
      { item_id: 1, setor_atual_id: 10, status: 'pendente', quantidade: 2 },
      { item_id: 2, setor_atual_id: 10, status: 'em_producao', quantidade: 1 },
      { item_id: 3, setor_atual_id: 30, status: 'defeito', quantidade: 1 },
    ]);
    expect(p.setores.map((s) => [s.id, s.total_itens, s.total_pecas])).toEqual([[10, 2, 3], [30, 0, 0], [40, 0, 0]]);
    expect(p.defeitos.map((d) => d.item_id)).toEqual([3]);
  });

  it('resolve o período padrão do mês', () => {
    expect(resolverPeriodo({}, '2026-10-12')).toEqual({ de: '2026-10-01', ate: '2026-10-12' });
    expect(resolverPeriodo({ de: '2026-01-05', ate: '2026-02-01' }, '2026-10-12')).toEqual({ de: '2026-01-05', ate: '2026-02-01' });
    expect(erro(() => resolverPeriodo({ de: '2026-03-01', ate: '2026-02-01' }, '2026-10-12')).tipo).toBe('invalido');
  });
});
