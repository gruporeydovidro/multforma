import type { AcertoInput, EntradaInput, SaidaInput } from './api';
import { lerNumero } from '../../lib/numero';

// Regras puras do formulário de movimentação (entrada, saída e acerto).

export type ModoMovimento = 'entrada' | 'saida' | 'acerto';

export interface MovimentoForm {
  produto_id: number | null;
  quantidade: string;
  custo_unitario: string;
  saldo_contado: string;
  documento: string;
  observacao: string;
}

export const formVazio = (produto_id: number | null = null): MovimentoForm => ({
  produto_id,
  quantidade: '',
  custo_unitario: '',
  saldo_contado: '',
  documento: '',
  observacao: '',
});

export const TITULOS: Record<ModoMovimento, { titulo: string; botao: string; sucesso: string }> = {
  entrada: { titulo: 'Entrada de estoque', botao: 'Registrar entrada', sucesso: 'Entrada registrada.' },
  saida: { titulo: 'Saída de estoque', botao: 'Registrar saída', sucesso: 'Saída registrada.' },
  acerto: { titulo: 'Acerto de estoque', botao: 'Registrar acerto', sucesso: 'Acerto registrado.' },
};

type Requisicao =
  | { modo: 'entrada'; body: EntradaInput }
  | { modo: 'saida'; body: SaidaInput }
  | { modo: 'acerto'; body: AcertoInput };

/** Valida o formulário e monta o corpo da requisição do modo. */
export function montarRequisicao(modo: ModoMovimento, f: MovimentoForm): { erro: string } | Requisicao {
  if (!f.produto_id) return { erro: 'Selecione o produto.' };
  const observacao = f.observacao.trim() || null;
  if (modo === 'acerto') {
    const contado = lerNumero(f.saldo_contado);
    if (contado === null || contado < 0) return { erro: 'Informe o saldo contado (zero ou mais).' };
    return { modo, body: { produto_id: f.produto_id, saldo_contado: contado, observacao } };
  }
  const quantidade = lerNumero(f.quantidade);
  if (!quantidade || quantidade <= 0) return { erro: 'Informe a quantidade.' };
  const documento = f.documento.trim() || null;
  if (modo === 'saida') return { modo, body: { produto_id: f.produto_id, quantidade, documento, observacao } };
  const custo = lerNumero(f.custo_unitario);
  if (f.custo_unitario.trim() && (custo === null || custo < 0)) return { erro: 'Custo unitário inválido.' };
  return { modo, body: { produto_id: f.produto_id, quantidade, custo_unitario: custo, documento, observacao } };
}
