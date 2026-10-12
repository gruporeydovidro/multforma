import type { Db } from '../../lib/db.js';
import type { BaixaContaReceberInput, FinanceiroPort, GerarContasReceberInput } from '../../shared/contracts.js';
import { Dinheiro } from './domain/dinheiro.js';
import { MovimentacaoTitulos, SENTIDO_RECEBER } from './movimentacao-titulos.js';
import { criarRepositorios, type FabricaRepositorios } from './repositorios.js';
import { traduzirErros } from './servico-base.js';

/**
 * Implementação da porta FinanceiroPort (usada por outros módulos, ex.: fechamento de orçamento).
 * Os métodos participam da transação de quem chama (`db`).
 */
export class FinanceiroService implements FinanceiroPort {
  constructor(private readonly fabrica: FabricaRepositorios = criarRepositorios) {}

  /** Cria os títulos a receber de uma venda. Retorna os ids criados. */
  gerarContasReceber(db: Db, args: GerarContasReceberInput): Promise<number[]> {
    const { receber } = this.fabrica(db);
    return traduzirErros(async () => {
      const ids: number[] = [];
      for (const p of args.parcelas) {
        ids.push(
          await receber.inserir({
            filial_id: args.filial_id,
            cliente_id: args.cliente_id,
            orcamento_id: args.orcamento_id,
            documento: args.documento,
            parcela: p.numero,
            vencimento: p.vencimento,
            valor: Dinheiro.arredondar(p.valor),
            forma_pagamento: p.forma_pagamento,
          }),
        );
      }
      return ids;
    });
  }

  /** Baixa (total ou parcial) de um título a receber, com a entrada no caixa. */
  async baixarContaReceber(db: Db, args: BaixaContaReceberInput): Promise<void> {
    const { receber, caixa } = this.fabrica(db);
    await traduzirErros(() =>
      new MovimentacaoTitulos(receber, caixa, SENTIDO_RECEBER).baixar(args.id, undefined, {
        valor: args.valor,
        data: args.data,
        forma_pagamento: args.forma_pagamento,
        usuario_id: args.usuario_id,
      }),
    );
  }
}
