import { z } from 'zod';

export const listQuery = z.object({
  q: z.string().trim().optional(),
  page: z.coerce.number().int().min(1).default(1),
  pageSize: z.coerce.number().int().min(1).max(200).default(50),
});

export function offset(page: number, pageSize: number) {
  return (page - 1) * pageSize;
}
