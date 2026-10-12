# VidroGest — gestão web para vidraçarias (MVP)

Sistema web inspirado nas funções observadas na engenharia reversa do SG-Vidros (ver `../engenharia-reversa/README.md`). O código, o banco e a interface foram escritos do zero: nenhum código, marca ou dado do sistema original foi reaproveitado.

## Funcionalidades
- **Vendas**: orçamentos com itens por medida (m², metro linear, unidade), arredondamento por produto, área mínima, projetos (box, janelas etc.) com fórmulas e folgas, descontos, frete, aprovação, fechamento com parcelas e impressão.
- **Projetos**: gabaritos de esquadria com peças calculadas a partir do vão (L x A) e um simulador.
- **Produção**: ordem de produção gerada no fechamento, marcação por setor, defeitos com motivo, painel do chão de fábrica e impressão da ordem.
- **Estoque**: saldos, mínimo, entradas com custo médio, saídas, acertos e movimentações.
- **Financeiro**: contas a receber e a pagar (baixa parcial, cancelamento, estorno), caixa e recibos.
- **Relatórios**: vendas por período, vendedor, cliente e produto (com margem), rankings, resumo financeiro e painel inicial.
- **Cadastros**: clientes e fornecedores, produtos com preços por tabela, funcionários, grupos, arredondamentos, filiais e usuários com perfis (`admin`, `vendedor`, `producao`, `financeiro`).

## Como rodar localmente
Requisitos: Node 22 e PostgreSQL 14 ou superior.

```bash
cd sistema
npm install
cp .env.example .env            # ajuste DATABASE_URL e JWT_SECRET
export $(grep -v '^#' .env | xargs)
npm run seed                    # cria as tabelas e os dados iniciais (login: admin / ADMIN_PASSWORD)
npm run dev                     # API em :3333 e web em http://localhost:5173
```

## Produção
```bash
npm run build                   # compila a API e o front-end
NODE_ENV=production DATABASE_URL=... JWT_SECRET=... node api/dist/server.js
```
Em produção a API serve o front-end compilado (`web/dist`) na mesma porta. As migrações rodam ao iniciar (desligue com `AUTO_MIGRATE=false`).

**Neon (PostgreSQL gerenciado):** use a connection string do Neon com `?sslmode=require` em `DATABASE_URL`.

## Importar os dados do sistema anterior
Veja [`docs/IMPORTACAO.md`](docs/IMPORTACAO.md): `npm run importar -- --verificar` (só lê) e `npm run importar`.

## Testes
```bash
cd api && npx vitest run         # usa postgres://postgres@127.0.0.1:5433/vidrogest_test (ou TEST_DATABASE_URL)
```

## Estrutura
- `api/` — Fastify + PostgreSQL. Esquema em `api/src/db/migrations`, módulos em `api/src/modules/<modulo>`.
- `web/` — React + Vite. Páginas em `web/src/pages/<modulo>`.
- `docs/CONVENCOES.md` — padrões de API, regras de cálculo e contratos entre módulos.
