import { defineConfig } from 'vitest/config';

export default defineConfig({
  test: {
    // Todos os testes compartilham o mesmo banco de teste.
    fileParallelism: false,
    setupFiles: ['test/setup.ts'],
    testTimeout: 20000,
    hookTimeout: 30000,
  },
});
