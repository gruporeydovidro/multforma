import type { ModuleDef } from '../lib/module';
import inicio from './inicio';
import cadastros from './cadastros';
import projetos from './projetos';
import orcamentos from './orcamentos';
import producao from './producao';
import estoque from './estoque';
import financeiro from './financeiro';
import relatorios from './relatorios';

/** Ordem do menu lateral. */
export const modules: ModuleDef[] = [inicio, orcamentos, projetos, producao, estoque, financeiro, relatorios, cadastros];
