# Engenharia reversa — SG-Vidros e AutoExec

Análise estática feita com o REA (`rea-agents` 6.4.0) e com scripts próprios de decodificação. Nenhum executável foi rodado.

## Artefatos analisados

| Arquivo | SHA-256 | Formato |
|---|---|---|
| `SGVidros.exe` (24,6 MB) | `c7ddaf3cb31747dd03498347ffa1db26891dd01041f12e293764ffb2a4d19136` | PE32 x86, GUI, nativo (sem CLI/.NET) |
| `AutoExec.exe` (582 KB) | `5cc0c6be493c8f3a5badf11902d2e63bcd371336b5ff9a6f584fa7a9ac430603` | PE32 x86, GUI, nativo |

Evidências REA:

| Operação | AutoExec | SGVidros |
|---|---|---|
| `inspect_artifact` | `ev_9716642b…3d30f` | `ev_51dd28dd…4f6e` |
| `inspect_pe_resources` | `ev_a3051a9c…bf81` | `ev_81ba3121…cf0f` |
| `inspect_managed_artifact` | `not-managed` (sem diretório CLI) | `not-managed` (sem diretório CLI) |

O inventário de recursos do SGVidros cobriu 1.450 entradas (721 recursos), com status `complete`. Os 401 recursos RCDATA foram extraídos pelos offsets registrados pelo REA, e o SHA-256 de cada um foi conferido.

## Conclusões

**Observado** = lido diretamente do binário. **Inferido** = dedução a partir do observado. **Desconhecido** = exige descompilar o código.

### Identidade
- **Observado:** o produto é o "Multforma SG-Vidros – Sistema de Gestão Empresarial", da Multforma Software Ltda (CNPJ 02.202.954/0001-02 nas strings). O mesmo executável contém os nomes de outras linhas do fabricante: SG-Comercial, SG-Farma e SG-Mármore.
- **Inferido:** foi escrito em Delphi não-Unicode, provavelmente Delphi 2007. Os indícios são formulários DFM binários (`TPF0`), strings em cp1252 e propriedades `Explicit*`.
- **Observado:** usa as bibliotecas de terceiros ACBr (NF-e, NFC-e, boleto, ECF, SPED), FortesReport (`TRL*`), ACE Reporter (`TSct*`) e Indy.

### Banco de dados
- **Observado:** o acesso é por ADO/OLE DB (`Provider=SQLOLEDB.1`), ou seja, Microsoft SQL Server. Os componentes próprios do fabricante são `TMultADODS` e `TMultADOCMD`. Há consultas a `master..sysprocesses`, funções `dbo.SgRound` e `dbo.IntToStrZero` e as procedures `EmitenteChange` e `ProdutoChange`.
- **Observado:** a conexão é configurada no INI, na seção `[Database Connection]` (chaves `ServerName`, `DataBase`, `TimeOut` e `UserID`). O servidor remoto padrão é `dbcliente.multforma.com.br,20762`.
- **Esquema reconstruído:** 155 tabelas e cerca de 1.800 colunas, em [`SGVidros/esquema.sql`](SGVidros/esquema.sql). Os tipos vêm de campos persistentes; quando não observados, foram inferidos pelo prefixo do nome. Chaves e índices **não** estão no executável.
- **Convenção de nomes:** `CD_` código, `NR_` número, `NM_` nome, `DS_` descrição, `VL_` valor, `PR_` percentual, `QT_` quantidade, `DT_` data, `FL_` flag, `TP_` tipo, `ST_` situação, `SG_` sigla, `IM_` imagem, `PS_` peso.
- A maioria das tabelas é multi-filial, com chave composta iniciada por `CD_FILIAL`. Exemplos: `ORCAMENTO (CD_FILIAL, NR_ORCAMENTO)` e `ORCAMENTO_ITEM (CD_FILIAL, NR_ORCAMENTO, NR_ITEM)`.

### Funcionalidades (menu principal, `TFRMMAIN`)
São 371 telas de negócio, listadas em [`SGVidros/telas.md`](SGVidros/telas.md). Os formulários decodificados estão em [`SGVidros/telas/`](SGVidros/telas/) e as 814 consultas SQL embutidas em [`SGVidros/consultas.sql`](SGVidros/consultas.sql).

| Menu | Principais funções |
|---|---|
| Configurações | Grupos de usuário e acessos, Estado/alíquota de ICMS, grupos de emitente, rotas, aplicações, históricos, bancos, portadores, CFOP, estações, configuração da nota fiscal |
| Cadastros | Filial, cidades, emitentes (clientes e fornecedores), comissão, funcionários, fotos, usuários, transportador, estrutura de estoque (grupo, subgrupo, classe, unidade, **arredondamento**, tributação, localização, composto, fabricante, subproduto, **partes e peças de projeto**), produto, tabela de preços, **projetos**, estoque |
| Compra | Pedido de compra, NF de entrada, contas a pagar (baixa, cópia, alerta, relatórios) |
| Vendas | **Ordem de medição**, **orçamento/atendimento**, bloqueio, tele-atendimento, consulta de preço, **ordem de serviço desenhada (CAD)**, montagem de carga, NF de saída, contas a receber (baixa, remessa/retorno bancário, cobrança por e-mail), cheques e borderô, recibo |
| Movimentações | Caixa, conta corrente, comissão, acerto de estoque, contatos, mala direta, **produção (setores, marcação por setor, motivos de defeito)**, **instalação**, NF-e |
| Fiscal | Inventários, Sintegra, SPED Contribuições e Fiscal, ECF (X/Z, sangria, suprimento), livros fiscais |
| Relatórios | Vendas (período, produto, vendedor, margem, filial), rankings, previsão de entrega, compras, entradas, saídas, financeiros, NF-e e NFC-e |

### Regras de negócio do ramo vidraceiro
Observadas nas telas e no SQL:
- **Produto:** unidade de estoque e de venda (`MT` metro, `PC` peça, `UN` unidade), tipo (produto, serviço, conjunto), espessura, perda (%), moldura (cm), arredondamento, preços por tabela (`PRODUTO_PRECO`) e fator de conversão de unidade (`PRODUTO_UNIDADE.NR_FATOR`).
- **Arredondamento:** cadastro com valor em centímetros (`VL_ARREDONDAMENTO`), associado ao produto e usado no cálculo do item por medida (`TFRMORCAMENTO_PERIMETRO`).
- **Item por medida:** comprimento, largura e altura em cm, m ou mm; ambiente (banheiro, cozinha…); quantidade; detalhamento.
- **Projeto:** gabarito com produto (vidro padrão), partes e peças; cada item tem fórmulas de altura e largura e folgas em mm. No orçamento vira `ORCAMENTO_PROJETO` e `ORCAMENTO_PROJETO_ITEM` (altura, largura, folgas, valor unitário).
- **Fechamento:** formas de pagamento (dinheiro, a prazo, crédito, cheque, contra apresentação, multiparcelado, débito, PIX), parcelas, frete, desconto e acréscimo. Destino dos produtos: produção, retirada no balcão ou instalação.
- **Produção:** orçamento alocado em produção, setores, marcação por setor, peças defeituosas com motivo.

### AutoExec.exe
- **Observado:** é o atualizador e lançador do SG-Vidros. Tem uma tela única (`TFrmMain`, "Atualização"), lê o `AutoExec.INI` (seção `[Atualizador]`, chaves `ActualApp`, `Application` e `IconApp`) e usa `version.dll`.
- **Inferido:** compara a versão do executável de origem, numa unidade de rede, com a cópia local. Se a origem for mais nova, pede confirmação ("Atualizar"), copia o arquivo e preserva os atributos. A mensagem de erro cita a unidade de rede mapeada e a configuração do INI.

### Achado de segurança
- **Observado:** os formulários trazem credenciais embutidas pelo fabricante: senha do usuário `sa` do SQL Server, credenciais de FTP/HTTP de download e licença, e senha cifrada. **As credenciais foram mascaradas** nos arquivos deste repositório (`***REMOVIDO***`).

### Desconhecido (exige descompilar o código Pascal)
- A fórmula exata do arredondamento (múltiplo superior por lado, área mínima etc.), a avaliação das fórmulas de projeto e o cálculo de impostos. Essa lógica fica no código compilado, não nos recursos. Para obtê-la é preciso um motor nativo (Ghidra/IDA), que não estava instalado.

## Reprodução
Ferramentas usadas: `rea inspect-artifact`, `rea inspect-pe-resources`, `rea inspect-managed-artifact` e, em seguida, a extração de RCDATA pelos offsets do REA e a decodificação dos DFM binários (TPF0) para texto.
