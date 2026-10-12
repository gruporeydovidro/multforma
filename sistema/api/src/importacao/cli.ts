// Uso: npm run importar -- [--verificar] [--listar-unidade=CE] [--escopo=recente|tudo|cadastros] [--desde=AAAA-MM-DD] [--schema=multforma]
// ORIGEM_DATABASE_URL = banco do sistema anterior (só leitura); DATABASE_URL = banco do VidroGest.
import { fileURLToPath } from 'node:url';
import { closePool, getPool } from '../lib/db.js';
import { migrate } from '../db/migrate.js';
import { Importador } from './importador.js';
import { MapaLegado } from './mapa-legado.js';
import { dataAnosAtras, type Escopo, type OpcoesImportacao } from './opcoes.js';
import { OrigemLegado } from './origem.js';
import { Relatorio } from './relatorio.js';

function argumento(nome: string): string | undefined {
  const a = process.argv.find((x) => x.startsWith(`--${nome}=`));
  return a?.slice(nome.length + 3);
}

export async function principal(): Promise<number> {
  const origemUrl = process.env.ORIGEM_DATABASE_URL;
  if (!origemUrl) throw new Error('Defina ORIGEM_DATABASE_URL com o banco do sistema anterior');
  const escopo = (argumento('escopo') ?? 'recente') as Escopo;
  if (!['recente', 'tudo', 'cadastros'].includes(escopo)) throw new Error('--escopo deve ser recente, tudo ou cadastros');
  const desde = argumento('desde') ?? dataAnosAtras(2);
  if (!/^\d{4}-\d{2}-\d{2}$/.test(desde)) throw new Error('--desde deve estar no formato AAAA-MM-DD');
  const opcoes: OpcoesImportacao = { escopo, desde, schemaOrigem: argumento('schema') ?? 'multforma', tamanhoLote: 1000 };
  const verificar = process.argv.includes('--verificar');

  const origem = new OrigemLegado(origemUrl, opcoes.schemaOrigem);
  const destino = getPool();
  const relatorio = new Relatorio();
  try {
    const ctx = { origem, destino, mapa: new MapaLegado(destino), opcoes, relatorio, log: (m: string) => console.log(m) };
    const importador = new Importador(ctx);
    const unidade = argumento('listar-unidade');
    if (unidade) {
      console.log(await importador.listarUnidade(unidade));
      return 0;
    }
    if (verificar) {
      const r = await importador.verificar();
      console.log(r.texto);
      return r.ok ? 0 : 1;
    }
    await migrate(destino);
    const inicio = Date.now();
    await importador.executar();
    console.log(relatorio.resumo());
    console.log(`\nConcluído em ${Math.round((Date.now() - inicio) / 1000)} s. Pode rodar de novo: o que já foi importado é ignorado.`);
    return 0;
  } finally {
    await origem.fechar();
    await closePool();
  }
}

if (process.argv[1] && fileURLToPath(import.meta.url) === process.argv[1]) {
  principal()
    .then((code) => process.exit(code))
    .catch((e) => {
      console.error(`Erro: ${e.message}`);
      process.exit(1);
    });
}
