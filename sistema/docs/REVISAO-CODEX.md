A inspeção encontrou falhas de autorização, concorrência, transição de produção, arredondamento e carregamento do front-end. Não havia diff local; os achados descrevem o sistema existente, e a revisão não executou a suíte de testes nem alterou arquivos.

Full review comments:

- [P1] Atualize perfil e filial ao validar a sessão — sistema/api/src/modules/auth/auth.service.ts:17-18
  Se um administrador rebaixar o perfil ou transferir a filial de um usuário conectado, a sessão continua usando os dados antigos do JWT por até 12 horas: esta validação verifica somente `ativo`. Assim, um ex-administrador mantém privilégios administrativos e um usuário transferido continua acessando a filial anterior. Correção sugerida: carregar os dados atuais do usuário e substituir `req.user`, ou invalidar tokens quando esses atributos mudarem. Isso compromete as regras de autorização e isolamento de [CONVENCOES.md:40–42](sistema/docs/CONVENCOES.md#L40-L42). Severidade: alta.

- [P1] Serialize movimentos de venda com os movimentos manuais — sistema/api/src/modules/estoque/estoque.service.ts:13-14
  Durante um fechamento concorrente com um acerto de inventário, a venda insere o movimento sem adquirir o bloqueio de produto usado por `MovimentacaoService`. Por exemplo, o acerto lê saldo 10 e contagem 8, uma venda retira 3, e o acerto grava −2: o saldo termina em 5, embora a contagem informada seja 8. A mesma ausência de serialização permite que uma saída manual valide um saldo desatualizado. Correção sugerida: fazer todos os escritores, inclusive esta porta consumida pelo fechamento, adquirirem o mesmo bloqueio antes da leitura/alteração de saldo. Severidade: alta.

- [P1] Não conclua um lote inteiro com uma marcação parcial — sistema/api/src/modules/producao/domain/item-producao.ts:63-65
  Para um item com quantidade 10, a API aceita marcar somente 1, mas avança o item inteiro ao próximo setor; no último setor, declara as 10 peças concluídas. As 9 restantes deixam de poder ser marcadas no setor anterior e a ordem pode ser concluída prematuramente. Correção sugerida: acumular a quantidade processada por setor e avançar apenas quando atingir a quantidade do lote, ou rejeitar marcações parciais se o modelo representar lotes indivisíveis. Severidade: alta.

- [P2] Corrija o arredondamento decimal dos valores do orçamento — sistema/api/src/modules/orcamentos/domain/numeros.ts:2-4
  Um item UN com quantidade 1 e preço 10,075 produz total 10,07 em vez de 10,08. Adicionar um `Number.EPSILON` absoluto não corrige o erro binário nessa magnitude; o resultado foi reproduzido com Node. A função é usada nos totais de itens e orçamentos, enquanto o módulo financeiro emprega outro algoritmo, criando resultados inconsistentes. Correção sugerida: centralizar um arredondamento decimal confiável, com testes para 10,075 e outros valores de meio centavo, conforme a regra de cálculo de [CONVENCOES.md:73](sistema/docs/CONVENCOES.md#L73). Severidade: média.

- [P2] Ignore respostas de carregamentos que já foram substituídos — sistema/web/src/lib/useAsync.ts:13-16
  Quando filtros mudam rapidamente, duas chamadas podem terminar em ordem inversa e a resposta antiga sobrescreve a lista correspondente ao filtro atual. O mesmo hook é usado por `useOrcamento(id)`: navegar entre orçamentos pode deixar os dados do orçamento anterior associados às ações do novo ID. Correção sugerida: identificar cada execução e atualizar dados, erro e loading somente para a execução vigente, invalidando também chamadas pendentes na limpeza do efeito. Severidade: média.
