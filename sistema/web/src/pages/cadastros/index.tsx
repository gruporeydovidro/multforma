import type { ModuleDef } from '../../lib/module';
import { FiliaisLista, FilialForm } from './Filiais';
import { FuncionarioForm, FuncionariosLista } from './Funcionarios';
import { MinhaSenhaPage } from './MinhaSenha';
import { PessoaForm, PessoasLista } from './Pessoas';
import { ProdutoForm, ProdutosLista } from './Produtos';
import { ArredondamentosPage, GruposPage, TabelasPrecoPage } from './Simples';
import { UsuarioForm, UsuariosLista } from './Usuarios';

const ADMIN = ['admin'] as const;

const modulo: ModuleDef = {
  titulo: 'Cadastros',
  menu: [
    { label: 'Clientes', path: '/cadastros/clientes' },
    { label: 'Fornecedores', path: '/cadastros/fornecedores' },
    { label: 'Produtos', path: '/cadastros/produtos' },
    { label: 'Funcionários', path: '/cadastros/funcionarios', perfis: [...ADMIN] },
    { label: 'Grupos de produto', path: '/cadastros/grupos', perfis: [...ADMIN] },
    { label: 'Arredondamentos', path: '/cadastros/arredondamentos', perfis: [...ADMIN] },
    { label: 'Tabelas de preço', path: '/cadastros/tabelas-preco', perfis: [...ADMIN] },
    { label: 'Filiais', path: '/cadastros/filiais', perfis: [...ADMIN] },
    { label: 'Usuários', path: '/cadastros/usuarios', perfis: [...ADMIN] },
    { label: 'Minha senha', path: '/cadastros/minha-senha' },
  ],
  routes: [
    { path: 'cadastros/clientes', element: <PessoasLista papel="cliente" /> },
    { path: 'cadastros/clientes/:id', element: <PessoaForm papel="cliente" /> },
    { path: 'cadastros/fornecedores', element: <PessoasLista papel="fornecedor" /> },
    { path: 'cadastros/fornecedores/:id', element: <PessoaForm papel="fornecedor" /> },
    { path: 'cadastros/produtos', element: <ProdutosLista /> },
    { path: 'cadastros/produtos/:id', element: <ProdutoForm /> },
    { path: 'cadastros/funcionarios', element: <FuncionariosLista /> },
    { path: 'cadastros/funcionarios/:id', element: <FuncionarioForm /> },
    { path: 'cadastros/grupos', element: <GruposPage /> },
    { path: 'cadastros/arredondamentos', element: <ArredondamentosPage /> },
    { path: 'cadastros/tabelas-preco', element: <TabelasPrecoPage /> },
    { path: 'cadastros/filiais', element: <FiliaisLista /> },
    { path: 'cadastros/filiais/:id', element: <FilialForm /> },
    { path: 'cadastros/usuarios', element: <UsuariosLista /> },
    { path: 'cadastros/usuarios/:id', element: <UsuarioForm /> },
    { path: 'cadastros/minha-senha', element: <MinhaSenhaPage /> },
  ],
};

export default modulo;
