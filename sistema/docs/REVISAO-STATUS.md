# Status das revisões

Fontes: revisão do Codex (`REVISAO-CODEX.md`) e revisões independentes da API e do front-end.
Validação: 280 testes da API, typecheck da API e do web, e teste de ponta a ponta no navegador (Chromium).

## Achados do Codex
| Achado | Status | Onde |
|---|---|---|
| [P1] Sessão não revalida perfil/filial | Corrigido | `auth.service.ts` (`validarSessao` recarrega perfil, filial e ativo a cada requisição) |
| [P1] Venda e movimentos manuais sem o mesmo bloqueio de estoque | Corrigido | `MovimentoRepository.travarProduto` (advisory lock por produto em todos os escritores); fechamento baixa em ordem de `produto_id` |
| [P1] Marcação parcial conclui o lote inteiro | Corrigido | `ItemProducao`: acumula por setor e só avança com o lote completo |
| [P2] Arredondamento do orçamento (10,075 → 10,07) | Corrigido | `shared/numeros.ts`, único para todos os módulos |
| [P2] Respostas antigas sobrescrevem a atual (`useAsync`) | Corrigido | `lib/useAsync.ts` e `AsyncSelect` descartam respostas fora de ordem |

## Principais achados das revisões independentes
| Achado | Severidade | Status |
|---|---|---|
| Rotas acessíveis sem login com URL codificada (`/%61pi/...`) | Crítico | Corrigido: a decisão usa a rota casada e nega por padrão; há teste de regressão |
| Ordem de produção com a medida arredondada como medida de corte | Alto | Corrigido: usa a medida real |
| Data "de hoje" em UTC no front | Alto | Corrigido: `lib/format.ts` usa data local; banco no fuso da empresa |
| Enter/duplo clique duplicando itens e cadastros | Alto | Corrigido: `useEnvio` ignora envio concorrente; formulários com submit desabilitado |
| Cliente digitado e não selecionado | Alto | Corrigido: `AsyncSelect` zera a seleção; cabeçalho exige cliente |
| Desconto em % não zera | Médio | Corrigido |
| Custo médio global calculado com saldo de uma filial | Médio | Corrigido: saldo total |
| Serviço com baixa de estoque | Baixo | Corrigido: padrão por tipo e filtro na baixa |
| Entradas inválidas gerando erro 500 (datas, overflow) | Baixo | Corrigido: validação compartilhada `shared/validacao.ts` |
| Perfil vendo ações que a API recusa | Médio | Corrigido: guarda de rota por perfil e permissões centralizadas no orçamento |
| Login sem limite de tentativas, segredo JWT padrão, detalhes do Postgres nas respostas | Médio/baixo | Corrigido |
| Duplicações (arredondamento, parsers numéricos, formas de pagamento, hooks de envio, filtros) | Manutenção | Unificadas no núcleo compartilhado (`api/src/shared`, `web/src/lib`) |

## Limitações conhecidas (aceitas no MVP)
- O logout apaga o cookie, mas o JWT emitido segue válido até expirar (12 h). Como a sessão é revalidada no banco, desativar o usuário corta o acesso na hora.
- O limite de tentativas de login fica em memória (uma instância).
- A margem dos relatórios usa o custo atual do produto e é sinalizada como `margem_estimada`.
