import { buildApp } from './app.js';
import { migrate } from './db/migrate.js';

const port = Number(process.env.PORT ?? 3333);
const app = await buildApp({ logger: true });
if (process.env.AUTO_MIGRATE !== 'false') await migrate();
await app.listen({ port, host: '0.0.0.0' });
