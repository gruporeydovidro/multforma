# Convenções do VidroGest (leitura obrigatória para quem implementa módulos)

## Stack
- **API**: Node 22, TypeScript (ESM, imports terminam em `.js`), Fastify 5, `pg` (SQL puro), Zod. Pasta `api/`.
- **Web**: React 18 + Vite + React Router 6, CSS próprio em `web/src/styles.css`. Pasta `web/`.
- **Banco**: PostgreSQL. Esquema único em `api/src/db/migrations/001_base.sql`; leia-o antes de começar.
- **Não instale dependências novas.** Não faça commits. Não altere arquivos fora da sua área, exceto quando indicado.

## Ambiente local
- Postgres de desenvolvimento: `postgres://postgres@127.0.0.1:5433/vidrogest` e de teste: `.../vidrogest_test` (já existem).
- Testes da API: `cd api && npx vitest run test/<arquivo>.test.ts`. Typecheck: `cd api && npx tsc --noEmit` e `cd web && npx tsc -b --noEmit`.
- Os testes compartilham o banco `vidrogest_test` e rodam em série. `useTestApp()` (em `api/test/helpers.ts`) recria o banco e aplica o seed no início de cada arquivo.

## API
- Cada módulo é um plugin em `api/src/modules/<modulo>/routes.ts`, montado em `/api/<modulo>` (registro em `api/src/modules/index.ts`, já feito).
- Toda rota exige sessão, exceto as marcadas com `config: { public: true }`. O usuário está em `req.user` (`{ id, nome, login, perfil, filial_id }`).
- Permissão: `preHandler: requirePerfil('vendedor')` (de `lib/auth.ts`); o perfil `admin` sempre passa.
- **Multi-filial**: registros com `filial_id` são lidos e gravados sempre com `req.user.filial_id`. Nunca aceite `filial_id` do cliente.
- Validação: Zod em body e query (`schema.parse(req.body)`). Erros: lance `HttpError`, `notFound()`, `badRequest()` ou `conflict()` (de `lib/http.ts`). Erros do Postgres (23505, 23503, 23514) já viram 409/400.
- Banco: `query`, `queryOne` e `withTx` (de `lib/db.ts`). Use **sempre** parâmetros `$1, $2…`, nunca interpole valores no SQL. `numeric` chega como `number` e `date` como `'YYYY-MM-DD'`.
- Registre em `log_sistema` (`logAcao`, de `lib/log.ts`) as ações relevantes: fechar orçamento, baixas, cancelamentos e acertos de estoque.
- Formatos de resposta:
  - Listagem: `GET /recurso?q=&page=&pageSize=` → `{ items, total, page, pageSize }` (use `listQuery` e `offset` de `lib/paging.ts`).
  - Detalhe: `GET /recurso/:id` → objeto (404 se não existir).
  - Criação: `POST /recurso` → objeto criado, status 201.
  - Edição: `PUT /recurso/:id` → objeto atualizado.
  - Exclusão: `DELETE /recurso/:id` → 204. Se houver vínculos, a FK gera 409; prefira desativar (`ativo=false`) quando a tabela tiver `ativo`.
  - Ações: `POST /recurso/:id/<acao>` (ex.: `/orcamentos/12/fechar`).
- Numeração por filial: `proximoNumero(client, 'orcamento' | 'ordem_producao', filialId)` dentro de `withTx`.

### Contratos entre módulos (já implementados; use, não duplique)
- `modules/estoque/service.ts`: `registrarMovimento(db, {...})` e `saldo(db, filialId, produtoId)`.
- `modules/financeiro/service.ts`: `gerarContasReceber(db, {...})` e `baixarContaReceber(db, {...})`.
- `modules/producao/service.ts`: `criarOrdemProducao(db, orcamentoId)`.
- Quem é dono desses arquivos pode melhorá-los, sem mudar as assinaturas.

### Endpoints de cadastro que outros módulos consomem (dono: Cadastros)
- `GET /api/cadastros/pessoas?q=&tipo=cliente|fornecedor&page=&pageSize=` → `{ items: [{ id, nome, fantasia, cpf_cnpj, tipo, telefone, cidade, uf, ativo }], ... }`. `tipo=cliente` inclui `ambos`; o mesmo vale para `fornecedor`.
- `GET /api/cadastros/produtos?q=&ativo=true&page=&pageSize=` → `{ items: [{ id, codigo, nome, tipo, unidade_venda, preco_venda, espessura_mm, ativo }], ... }`. `q` busca no código e no nome.
- `GET /api/cadastros/funcionarios?vendedor=true` e `?instalador=true` → paginado.
- `GET /api/cadastros/tabelas-preco` → `{ items: [{ id, nome, ativo }] }`.
- `GET /api/cadastros/arredondamentos`, `/grupos`, `/filiais`, `/usuarios` (usuários: só admin).

## Regras de cálculo (dono: Orçamentos)
- Medidas em **mm**. Arredondamento do produto: `passo = valor_cm * 10`; `dim_calc = ceil(dim / passo) * passo`. Sem arredondamento, `dim_calc = dim`.
- `M2`: `area_un = max(Lc * Ac / 1e6, area_minima_m2)`; `medida_cobrada = area_un * quantidade`.
- `ML`: `medida_cobrada = 2 * (Lc + Ac) / 1000 * quantidade` (perímetro).
- `UN`, `PC`, `KG`: `medida_cobrada = quantidade`.
- Preço: o da `produto_preco` da tabela do orçamento, se houver; senão `produto.preco_venda`. O usuário pode alterar o preço unitário do item.
- `total_item = round2(medida_cobrada * preco_unitario - desconto_valor)`, com `medida_cobrada` arredondada a 4 casas.
- Projeto: cada `projeto_item` gera um `orcamento_item` ligado a `orcamento_projeto_id`. Largura = `avaliar(formula_largura, {L, A}) - folga_largura_mm`; altura idem. Fórmulas aceitam números, `L`, `A`, `+ - * /`, parênteses e `min()`/`max()`. **Proibido `eval`/`Function`.** Produto = `projeto_item.produto_id` ou, se nulo, o vidro escolhido. Quantidade = `projeto_item.quantidade * orcamento_projeto.quantidade`. Itens sem fórmula usam só a quantidade.
- Totais: `subtotal = Σ total_item`; desconto geral = `desconto_pct > 0 ? subtotal * pct / 100 : desconto_valor`; `total = subtotal - desconto + acrescimo_valor + frete_valor`. Recalcule e grave após cada alteração de item.
- Fluxo de status: `aberto → aprovado → fechado`; `aberto|aprovado → cancelado`. Itens só podem ser editados em `aberto`. O fechamento (transação única):
  1. as parcelas informadas devem somar o total (tolerância de R$ 0,01);
  2. grava em `orcamento_parcela`, chama `gerarContasReceber` e, para forma à vista (`dinheiro`, `pix`, `cartao_debito`), chama `baixarContaReceber` no ato;
  3. para produtos com `controla_estoque`, chama `registrarMovimento` (saída, origem `venda`, quantidade = `medida_cobrada`);
  4. se `destino = 'producao'`, chama `criarOrdemProducao`;
  5. grava `status='fechado'`, `fechado_em` e o log.
- Formas de pagamento (valores): `dinheiro`, `pix`, `cartao_debito`, `cartao_credito`, `boleto`, `cheque`, `a_prazo`.

## Web
- Cada módulo exporta um `ModuleDef` em `web/src/pages/<modulo>/index.tsx` (`menu` e `routes`); o layout e o roteador montam tudo sozinhos. Coloque as páginas do módulo **dentro da pasta dele**.
- Rotas sem barra inicial e com prefixo do módulo, ex.: `cadastros/clientes`, `cadastros/clientes/:id` (`:id = 'novo'` cria). A rota `''` (página inicial `/`) é do módulo Início.
- Use os componentes de `web/src/components/ui.tsx` (`PageHeader`, `Card`, `Input`, `Select`, `TextArea`, `DataTable`, `Pager`, `Modal`, `Alert`, `Badge`, `SearchBox`, `AsyncSelect`), `api`/`qs` de `lib/api.ts`, `useAsync` e os formatadores de `lib/format.ts` (`money`, `decimal`, `date`, `today`, `addDays`).
- Layout de formulário: `<div className="grid">` com campos `className="col-4"` etc. Botões: `btn`, `btn primary`, `btn danger`, `btn ghost`, `btn small`.
- Mostre erros da API com `<Alert>` e desabilite os botões durante o envio. Textos da interface em português do Brasil.
- Permissões no menu: `perfis: ['vendedor']` etc. (admin vê tudo).
