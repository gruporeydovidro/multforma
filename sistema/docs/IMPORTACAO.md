# Importação dos dados do sistema anterior (SG-Vidros)

O importador lê o banco antigo **apenas em modo leitura** e grava no banco do VidroGest. Ele pode ser executado de novo quantas vezes for preciso, porque cada registro importado guarda a sua chave antiga na tabela `legado_mapa` e não é gravado duas vezes.

## O que é importado
| Sistema anterior | VidroGest | Observações |
|---|---|---|
| `filial` | Filiais | A primeira filial antiga assume a "Matriz" criada na instalação. |
| `emitente` + `emitente_endereco` | Clientes/fornecedores | É fornecedor quem aparece em contas a pagar ou como fornecedor de produto; é cliente quem aparece em orçamentos ou contas a receber. CPF/CNPJ inválido ou repetido não é gravado no campo de documento e fica registrado nas observações. |
| `funcionario` | Funcionários | É vendedor quem aparece como vendedor em algum orçamento. |
| `grupo`, `arredondamento`, `produto_tblpreco` | Grupos, arredondamentos, tabelas de preço | Nomes que já existem recebem o código antigo entre parênteses. |
| `produto` + `produto_preco` | Produtos e preços por tabela | O código do produto é o mesmo do sistema antigo. As unidades são convertidas assim: `M2` vira M², `MT`/`ML` viram metro linear, `PÇ`/`PC` viram peça e as demais viram unidade. A área mínima vem do grupo. |
| `projeto` + `projeto_item` | Projetos | As fórmulas são convertidas para L/A (por exemplo `LARGURA/2+25` vira `L/2+25`) e validadas. As que não puderem ser convertidas ficam anotadas na descrição do projeto. |
| `usuario` | Usuários | Entram **inativos** e sem a senha antiga. O administrador define a senha e ativa cada um em Cadastros → Usuários. |
| `estoque_saldo` | Saldo inicial de estoque | Gravado como um acerto "SALDO INICIAL". |
| `orcamento` + itens + parcelas | Orçamentos | O número é o mesmo do sistema antigo, e os totais vêm das views de total do sistema antigo. As medidas (largura/altura) não são importadas; ficam a medida cobrada e o valor. |
| `receber` / `pagar` + parcelas | Contas a receber / a pagar | Uma conta por parcela, com o valor pago e a data da última baixa. |
| `caixa` | Caixa | Os valores negativos viram saídas. |

## Escopos
- `--escopo=recente` (**padrão**): todos os cadastros, mais os orçamentos e o caixa dos **últimos 2 anos**, e as contas a receber e a pagar desse período ou **ainda com saldo em aberto**. As propostas antigas que nunca viraram venda (situação '1') não entram. O movimento de caixa anterior ao corte entra como um único lançamento de "Saldo anterior" por filial. O corte pode ser mudado com `--desde=AAAA-MM-DD`.
- `--escopo=tudo`: todo o histórico. É a opção mais demorada.
- `--escopo=cadastros`: só os cadastros e o saldo de estoque.

## Como executar (Windows, PowerShell)
1. Use o banco `vidrogest` do Neon já criado. O ideal é que ele esteja **sem orçamentos de teste**, porque números de orçamento já usados são pulados.
2. No painel do Neon, pegue duas *connection strings* com o role **`neondb_owner`**:
   - **origem:** database `neondb` (onde está o schema `multforma`);
   - **destino:** database `vidrogest`.
3. Rode, dentro de `D:\PROJETOS\multforma\sistema\api`:

```powershell
cd D:\PROJETOS\multforma\sistema\api
git pull origin claude/nice-newton-ek4a4e
npm install

$env:ORIGEM_DATABASE_URL = "postgresql://neondb_owner:SENHA@ep-...neon.tech/neondb?sslmode=require"
$env:DATABASE_URL        = "postgresql://neondb_owner:SENHA@ep-...neon.tech/vidrogest?sslmode=require"
$env:NODE_ENV = "development"

# 1) Verificação (só lê a origem; não grava nada)
npm run importar -- --verificar

# 2) Importação
npm run importar
```

Para outro escopo, use por exemplo `npm run importar -- --escopo=tudo`.

Ao terminar, o importador mostra uma tabela com o que foi lido, gravado e ignorado em cada etapa, e os avisos (documentos inválidos, fórmulas não convertidas etc.).

## Depois de importar
- Ative os usuários e defina as senhas em **Cadastros → Usuários**.
- Confira os avisos de fórmulas não convertidas nos projetos indicados.
- Os itens de orçamento cujo produto não existe mais apontam para o produto inativo "Item do sistema anterior".
