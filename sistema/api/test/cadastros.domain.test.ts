import { describe, expect, it } from 'vitest';
import { CpfCnpj } from '../src/modules/cadastros/domain/cpf-cnpj.js';
import { ErroDeValidacao } from '../src/modules/cadastros/domain/erros.js';
import { DocumentoDaPessoa } from '../src/modules/cadastros/domain/pessoa.js';
import { PrecosDoProduto } from '../src/modules/cadastros/domain/precos.js';
import { Senha } from '../src/modules/cadastros/domain/senha.js';
import { Login, PoliticaDeAutoAlteracao } from '../src/modules/cadastros/domain/usuario.js';

/** Captura o ErroDeValidacao lançado por fn. */
function erro(fn: () => unknown): ErroDeValidacao {
  try {
    fn();
  } catch (e) {
    if (e instanceof ErroDeValidacao) return e;
    throw e;
  }
  throw new Error('nenhum erro lançado');
}

describe('CpfCnpj', () => {
  it.each(['529.982.247-25', '52998224725', '111.444.777-35'])('aceita CPF válido %s', (v) => {
    expect(CpfCnpj.cpfValido(v)).toBe(true);
    expect(CpfCnpj.analisar(v)?.tipo).toBe('cpf');
  });

  it.each(['529.982.247-24', '111.111.111-11', '1234567890', '00000000000'])('rejeita CPF inválido %s', (v) => {
    expect(CpfCnpj.cpfValido(v)).toBe(false);
  });

  it.each(['11.222.333/0001-81', '11444777000161'])('aceita CNPJ numérico válido %s', (v) => {
    expect(CpfCnpj.analisar(v)?.tipo).toBe('cnpj');
  });

  it('aceita CNPJ alfanumérico (formato 2026)', () => {
    expect(CpfCnpj.cnpjValido('12.ABC.345/01DE-35')).toBe(true);
    expect(CpfCnpj.cnpjValido('12abc34501de35')).toBe(true);
    expect(CpfCnpj.cnpjValido('12.ABC.345/01DE-36')).toBe(false);
  });

  it.each(['11.222.333/0001-80', '00.000.000/0000-00', '11.222.333/0001'])('rejeita CNPJ inválido %s', (v) => {
    expect(CpfCnpj.cnpjValido(v)).toBe(false);
  });

  it('formata com a máscara padrão', () => {
    expect(CpfCnpj.analisar('52998224725')!.formatado).toBe('529.982.247-25');
    expect(CpfCnpj.analisar('11222333000181')!.formatado).toBe('11.222.333/0001-81');
  });

  it('exigir() falha com o campo e o tipo esperado', () => {
    const e = erro(() => CpfCnpj.exigir('11.222.333/0001-81', 'cpf', 'documento'));
    expect(e.campo).toBe('documento');
    expect(e.message).toBe('CPF inválido');
  });
});

describe('DocumentoDaPessoa', () => {
  it('vazio vira null', () => {
    expect(DocumentoDaPessoa.normalizar('F', '')).toBeNull();
    expect(DocumentoDaPessoa.normalizar('J', null)).toBeNull();
  });

  it('pessoa física exige CPF e jurídica exige CNPJ', () => {
    expect(DocumentoDaPessoa.normalizar('F', '52998224725')).toBe('529.982.247-25');
    expect(DocumentoDaPessoa.normalizar('J', '11222333000181')).toBe('11.222.333/0001-81');
    expect(erro(() => DocumentoDaPessoa.normalizar('F', '11222333000181')).message).toBe('CPF inválido');
    expect(erro(() => DocumentoDaPessoa.normalizar('J', '52998224725')).message).toBe('CNPJ inválido');
  });
});

describe('Login', () => {
  it('normaliza para minúsculas', () => {
    expect(Login.criar('  Maria.Silva ').valor).toBe('maria.silva');
  });

  it.each(['ab', 'com espaço', 'acentuação', 'x'.repeat(41)])('rejeita %s', (v) => {
    expect(erro(() => Login.criar(v)).campo).toBe('login');
  });
});

describe('Senha', () => {
  it('exige o tamanho mínimo', () => {
    expect(erro(() => Senha.criar('12345')).campo).toBe('senha');
    expect(erro(() => Senha.criar('123', 'nova_senha')).campo).toBe('nova_senha');
  });

  it('gera hash bcrypt que confere só com a senha certa', async () => {
    const hash = await Senha.criar('segredo1').gerarHash();
    expect(hash).not.toContain('segredo1');
    expect(await Senha.confere('segredo1', hash)).toBe(true);
    expect(await Senha.confere('segredo2', hash)).toBe(false);
  });
});

describe('PoliticaDeAutoAlteracao', () => {
  const politica = new PoliticaDeAutoAlteracao(1);

  it('impede o próprio usuário de se desativar, perder o perfil admin ou se excluir', () => {
    expect(erro(() => politica.validarEdicao(1, { ativo: false })).campo).toBe('ativo');
    expect(erro(() => politica.validarEdicao(1, { perfil: 'vendedor' })).campo).toBe('perfil');
    expect(erro(() => politica.validarExclusao(1)).campo).toBe('id');
  });

  it('permite alterar outros usuários e a si mesmo sem bloqueio', () => {
    expect(() => politica.validarEdicao(2, { ativo: false, perfil: 'vendedor' })).not.toThrow();
    expect(() => politica.validarEdicao(1, { ativo: true, perfil: 'admin' })).not.toThrow();
    expect(() => politica.validarExclusao(2)).not.toThrow();
  });
});

describe('PrecosDoProduto', () => {
  it('rejeita tabela repetida e preço negativo', () => {
    expect(erro(() => PrecosDoProduto.criar([{ tabela_preco_id: 1, preco: 1 }, { tabela_preco_id: 1, preco: 2 }])).campo).toBe('precos');
    expect(erro(() => PrecosDoProduto.criar([{ tabela_preco_id: 1, preco: -1 }])).campo).toBe('precos');
  });

  it('arredonda a 4 casas e lista as tabelas', () => {
    const p = PrecosDoProduto.criar([{ tabela_preco_id: 3, preco: 10.123456 }]);
    expect(p.itens).toEqual([{ tabela_preco_id: 3, preco: 10.1235 }]);
    expect(p.tabelas).toEqual([3]);
  });
});
