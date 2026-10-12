process.env.DATABASE_URL = process.env.TEST_DATABASE_URL ?? 'postgres://postgres@127.0.0.1:5433/vidrogest_test';
process.env.JWT_SECRET = 'test-secret';
