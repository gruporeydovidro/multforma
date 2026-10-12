// Geração de CSV no navegador (funções puras + download).

export interface ColunaCsv<T> {
  titulo: string;
  valor: (linha: T) => string | number | null | undefined;
}

/** Número no padrão brasileiro para planilhas (vírgula decimal, sem separador de milhar). */
export const numeroCsv = (v: number | null | undefined, casas = 2) => (v == null ? '' : v.toFixed(casas).replace('.', ','));

function celula(v: string | number | null | undefined): string {
  const s = v == null ? '' : String(v);
  return /[";\n\r]/.test(s) ? `"${s.replace(/"/g, '""')}"` : s;
}

/** Monta o CSV com ';' (padrão do Excel em pt-BR). */
export function gerarCsv<T>(colunas: ColunaCsv<T>[], linhas: T[], rodape?: (string | number | null)[]): string {
  const out = [colunas.map((c) => celula(c.titulo)).join(';')];
  for (const l of linhas) out.push(colunas.map((c) => celula(c.valor(l))).join(';'));
  if (rodape) out.push(rodape.map(celula).join(';'));
  return out.join('\r\n');
}

/** Dispara o download do CSV (com BOM para o Excel reconhecer UTF-8). */
export function baixarCsv(nomeArquivo: string, conteudo: string) {
  const blob = new Blob(['﻿', conteudo], { type: 'text/csv;charset=utf-8' });
  const url = URL.createObjectURL(blob);
  const a = document.createElement('a');
  a.href = url;
  a.download = nomeArquivo.endsWith('.csv') ? nomeArquivo : `${nomeArquivo}.csv`;
  document.body.appendChild(a);
  a.click();
  a.remove();
  URL.revokeObjectURL(url);
}
