object DmCheck: TDmCheck
  OldCreateOrder = False
  Height = 381
  Width = 563
  object ADODsCheck_01: TMultADODS
    Connection = FrmMain.ADOConMaster
    LockType = ltReadOnly
    Parameters = <>
    SQLSelect.Strings = (
      '-- Tabela de Pre'#231'os'
      'select'
      '  Cd_Tabela, Ds_Tabela, Dt_Inicio, Dt_Termino, Fl_Ativa, Nr_Entrega'
      ''
      'from'
      '  Produto_TblPreco'
      ''
      'where'
      '  Cd_Tabela = :Cd_Tabela'
    )
    SQLInsert.Strings = (
      '-- Localiza'#231#227'o do Produto no Estoque'
      'select'
      '  Cd_Localizacao, Ds_Localizacao'
      ''
      'from'
      '  Localizacao'
      ''
      'where'
      '  Cd_Localizacao = :Cd_Localizacao'
    )
    SQLUpdate.Strings = (
      '-- Prazo de Aquisi'#231#227'o do Produto'
      'select'
      '  Nr_Prazo'
      ''
      'from'
      '  Produto_Prazo'
      ''
      'where'
      '  Nr_Prazo = :Nr_Prazo'
    )
    SQLPrimary.Strings = (
      '-- SubGrupo de Produto'
      'select'
      '  Cd_SubGrupo, Nm_SubGrupo'
      ''
      'from'
      '  SubGrupo'
      ''
      'where'
      '  Cd_SubGrupo = :Cd_SubGrupo'
    )
    SQLOther0.Strings = (
      '-- Teste do Grupo de Usu'#225'rios'
      'select'
      '  cd_grupo, nm_grupo'
      ''
      'from'
      '  usuario_grupo'
      ''
      'where'
      '  cd_grupo = :cd_grupo'
    )
    SQLOther1.Strings = (
      '-- Teste do Grupo de Fotos'
      'select'
      '  cd_grupo, nm_grupo'
      ''
      'from'
      '  Foto_Grupo'
      ''
      'where'
      '  cd_grupo = :cd_grupo'
    )
    SQLOther2.Strings = (
      '-- Teste de Cidade'
      'select'
      '  C.Cd_Cidade, C.Nm_Cidade, C.Sg_Estado, C.Nr_CEP,'
      '  C.Nm_Cidade + '''' - '''' + C.Sg_Estado as Dp_Cidade, C.Cd_IBGE'
      ''
      'from'
      '  Cidade C'
      ''
      'inner join'
      '  Estado E'
      'on'
      '  E.Sg_Estado = C.Sg_Estado'
      ''
      'where'
      '  C.Cd_Cidade = :Cd_Cidade'
    )
    SQLOther3.Strings = (
      '-- Grupo de Emitente'
      'select'
      '  Cd_Grupo, Nm_Grupo'
      ''
      'from'
      '  Emitente_Grupo'
      ''
      'where'
      '  Cd_Grupo = :Cd_Grupo'
    )
    SQLOther4.Strings = (
      '-- SubGrupo de Emitente'
      'select'
      '  Cd_SubGrupo, Nm_SubGrupo'
      ''
      'from'
      '  Emitente_SubGrupo'
      ''
      'where'
      '  Cd_SubGrupo = :Cd_SubGrupo'
    )
    SQLOther5.Strings = (
      '-- Portador'
      'select'
      '  Cd_Portador, Nm_Portador, Tp_Cobranca, Cd_Banco, Nr_Remessa, Ds_Livre,'
      '  Cd_Agencia, Cd_Carteira, Nr_Conta, Ds_Livre'
      ''
      'from'
      '  Portador'
      ''
      'where'
      '  Cd_Portador = :Cd_Portador'
    )
    SQLOther6.Strings = (
      '-- Usuario'
      'select'
      '  Cd_Usuario, Nm_Usuario'
      ''
      'from'
      '  Usuario'
      ''
      'where'
      '  Cd_Usuario = :Cd_Usuario'
    )
    SQLOther7.Strings = (
      '-- Estado'
      'select'
      '  E.Sg_Estado, E.Nm_Estado, EA.Pr_Contribuinte, EA.Pr_NaoContrib'
      ''
      'from'
      '  Estado E'
      ''
      'left join'
      '  Estado_Aliquota EA'
      'on'
      '  EA.Sg_Origem  = :Sg_Origem and'
      '  EA.Sg_Destino = E.Sg_Estado'
      ''
      'where'
      '  E.Sg_Estado = :Sg_Estado'
    )
    SQLOther8.Strings = (
      '-------------------- Emitente'
      'select'
      '  E.Cd_Emitente, E.Nm_Emitente, C.Sg_Estado, E.Fl_Contribuinte, ESG.Cd_Tabela,'
      '  E.Nr_Endereco, E.Mm_Nota, E.Nm_Fantasia'
      ''
      'from'
      '  Emitente E'
      ''
      'inner join'
      '  Emitente_SubGrupo ESG'
      'on'
      '  ESG.Cd_SubGrupo = E.Cd_SubGrupo'
      ''
      'left join'
      '  Emitente_Endereco EE'
      'on'
      '  EE.Cd_Emitente = E.Cd_Emitente and'
      '  EE.Nr_Endereco = E.Nr_Endereco'
      ''
      'left join'
      '  Cidade C'
      'on'
      '  C.Cd_Cidade = EE.Cd_Cidade'
      ''
      'where'
      '  /* Emitente */'
      ''
      'order by'
      '  E.Cd_Emitente'
    )
    SQLOther9.Strings = (
      '-- Grupo de Produtos'
      'select'
      '  Cd_Grupo, Nm_Grupo, Cd_ClasFiscal, Fl_Moldura, Cd_CEST'
      ''
      'from'
      '  Grupo'
      ''
      'where'
      '  Cd_Grupo = :Cd_Grupo'
    )
    Left = 35
    Top = 15
  end
  object ADODsClasse: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = '-- Classe de Produto'#13#10'select'#13#10'  Cd_Classe, Nm_Classe, Im_Classe'#13#10#13#10'from'#13#10'  Classe'#13#10#13#10'where'#13#10'  Cd_Classe = :Cd_Classe'
    Parameters = <
      item
        Name = 'Cd_Classe'
        DataType = ftSmallint
        Size = -1
        Value = nil?
      end>
    Left = 125
    Top = 15
    object ADODsClassecd_classe: TSmallintField
      FieldName = 'cd_classe'
    end
    object ADODsClassenm_classe: TStringField
      FieldName = 'nm_classe'
      Size = 50
    end
    object ADODsClasseim_classe: TBlobField
      FieldName = 'im_classe'
    end
  end
  object ADODsProduto: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = '-- Produto'#13#10'select'#13#10'  P.Cd_Produto, P.Nm_Produto, P.Sg_Estoque, P.Fl_Lote, PP.Vl_Custo, PU.Nr_Fator,'#13#10'  A.Vl_Arredondamento, P.Fl_Ativo, P.Sg_Venda, P.Fl_Produto, PP.Vl_Venda, PP.Vl_Reposicao'#13#10#13#10'from'#13#10'  Produto P'#13#10#13#10'left join'#13#10'  Produto_Preco PP'#13#10'on'#13#10'  PP.Cd_Tabela  = :Cd_Tabela and'#13#10'  PP.Cd_Produto = P.Cd_Produto'#13#10#13#10'left join'#13#10'  Produto_Unidade PU'#13#10'on'#13#10'  PU.Cd_Produto = P.Cd_Produto and'#13#10'  PU.Sg_Unidade = P.Sg_Estoque'#13#10'  '#13#10'left join'#13#10'  Arredondamento A'#13#10'on'#13#10'  A.Cd_Arredondamento = P.Cd_Arredondamento'#13#10#13#10'where'#13#10'  P.Cd_Produto = :Cd_Produto'#13#10
    Parameters = <
      item
        Name = 'Cd_Tabela'
        DataType = ftString
        Size = 1
        Value = ' '
      end
      item
        Name = 'Cd_Produto'
        DataType = ftInteger
        Size = -1
        Value = 0
      end>
    Left = 210
    Top = 16
    object ADODsProdutocd_produto: TIntegerField
      FieldName = 'cd_produto'
    end
    object ADODsProdutonm_produto: TStringField
      FieldName = 'nm_produto'
      Size = 120
    end
    object ADODsProdutosg_estoque: TStringField
      FieldName = 'sg_estoque'
      FixedChar = True
      Size = 2
    end
    object ADODsProdutofl_lote: TStringField
      FieldName = 'fl_lote'
      FixedChar = True
      Size = 1
    end
    object ADODsProdutovl_custo: TBCDField
      FieldName = 'vl_custo'
      Precision = 12
      Size = 3
    end
    object ADODsProdutonr_fator: TBCDField
      FieldName = 'nr_fator'
      Precision = 18
      Size = 3
    end
    object ADODsProdutoVl_Arredondamento: TSmallintField
      FieldName = 'Vl_Arredondamento'
    end
    object ADODsProdutoFl_Ativo: TStringField
      FieldName = 'Fl_Ativo'
      FixedChar = True
      Size = 1
    end
    object ADODsProdutoSg_Venda: TStringField
      FieldName = 'Sg_Venda'
      FixedChar = True
      Size = 2
    end
    object ADODsProdutoFl_Produto: TStringField
      FieldName = 'Fl_Produto'
      FixedChar = True
      Size = 1
    end
    object ADODsProdutoVl_Venda: TBCDField
      FieldName = 'Vl_Venda'
      Precision = 12
      Size = 5
    end
    object ADODsProdutoVl_Reposicao: TBCDField
      FieldName = 'Vl_Reposicao'
      Precision = 12
      Size = 5
    end
  end
  object ADODsCheck_02: TMultADODS
    Connection = FrmMain.ADOConMaster
    LockType = ltReadOnly
    Parameters = <>
    SQLSelect.Strings = (
      '-- Banco'
      'select'
      '  Cd_Banco, Sg_Banco'
      ''
      'from'
      '  Banco'
      ''
      'where'
      '  Cd_Banco = :Cd_Banco'
    )
    SQLInsert.Strings = (
      '-- Filial'
      'select'
      '  Cd_Filial, Nm_Filial, Nm_Abreviado'
      ''
      'from'
      '  Filial'
      ''
      'where'
      '  Cd_Filial = :Cd_Filial'
    )
    SQLUpdate.Strings = (
      '/* Teste do pedido de compras */'
      'select'
      '  Nr_Compra, St_Compra'
      ''
      'from'
      '  Compra'
      ''
      'where'
      '  Cd_Filial = :Cd_Filial and'
      '  Nr_Compra = :Nr_Compra'
    )
    SQLPrimary.Strings = (
      '-- Transportador'
      'select'
      '  Cd_Transportador, Nm_Transportador, Nr_Placa, Nr_Capacidade'
      ''
      'from'
      '  Transportador'
      ''
      'where'
      '  Cd_Transportador = :Cd_Transportador'
    )
    SQLOther0.Strings = (
      '-- CFOP'
      'select'
      '  Cd_CFOP, Ds_CFOP, Tp_Operacao, Fl_Inventario'
      ''
      'from'
      '  CFOP'
      ''
      'where'
      '  Cd_CFOP = :Cd_CFOP'
    )
    SQLOther1.Strings = (
      '-- Unidades'
      'select'
      '  Sg_Unidade + '''' - '''' + Ds_Unidade as Dp_Unidade'
      ''
      'from'
      '  Unidade'
      ''
      'where'
      '  Sg_Unidade = :Sg_Unidade'
    )
    SQLOther2.Strings = (
      '-- Grupo de Aplicacao'
      'select'
      '  Cd_Grupo, Nm_Grupo'
      ''
      'from'
      '  Aplicacao_Grupo'
      ''
      'where'
      '  Cd_Grupo = :Cd_Grupo'
    )
    SQLOther3.Strings = (
      '-- SubGrupo de Aplicacao'
      'select'
      '  Cd_SubGrupo, Nm_SubGrupo'
      ''
      'from'
      '  Aplicacao_SubGrupo'
      ''
      'where'
      '  Cd_SubGrupo = :Cd_SubGrupo'
    )
    SQLOther4.Strings = (
      '-- Historico'
      'select'
      '  Cd_Historico, Ds_Historico, Tp_Historico'
      ''
      'from'
      '  Historico'
      ''
      'where'
      '  Cd_Historico = :Cd_Historico'
    )
    SQLOther5.Strings = (
      '-- Funcion'#225'rio'
      'select'
      '  Cd_Funcionario, Nm_Funcionario'
      ''
      'from'
      '  Funcionario'
      ''
      'where'
      '  Cd_Funcionario = :Cd_Funcionario'
    )
    SQLOther6.Strings = (
      'select'
      '  EE.Ds_Titulo, C.Sg_Estado'
      ''
      'from'
      '  Emitente_Endereco EE'
      ''
      'left join'
      '  Cidade C'
      'on'
      '  C.Cd_Cidade = EE.Cd_Cidade'
      ''
      'where'
      '  EE.Cd_Emitente = :Cd_Emitente and'
      '  EE.Nr_Endereco = :Nr_Endereco'
    )
    SQLOther7.Strings = (
      '-- Tributa'#231#227'o de produtos'
      'select'
      '  Cd_Tributacao, Ds_Tributacao, Pr_Contrib, Pr_NaoContrib'
      ''
      'from'
      '  Tributacao'
      ''
      'where'
      '  Cd_Tributacao = :Cd_Tributacao'
    )
    SQLOther8.Strings = (
      '-- Laboratorio'
      'select'
      '  Cd_Laboratorio, Nm_Laboratorio'
      ''
      'from'
      '  Laboratorio'
      ''
      'where'
      '  Cd_Laboratorio = :Cd_Laboratorio'
    )
    SQLOther9.Strings = (
      '-- Medico'
      'select'
      '  M.Cd_Medico, M.Nm_Medico, M.Id_Medico,'
      '  M.Sg_Estado_ID + '''' - '''' + E.Nm_Estado as Dp_Estado'
      ''
      'from'
      '  Medico M'
      ''
      'inner join'
      '  Estado E'
      'on'
      '  E.Sg_Estado = M.Sg_Estado_ID'
      ''
      'where'
      '  -- A linha abaixo '#233' mudada em tempo de execu'#231#227'o'
      '  Cd_Medico = :Cd_Medico'
    )
    Left = 35
    Top = 65
  end
  object ADODsCredito: TMultADODS
    Connection = FrmMain.ADOConMaster
    LockType = ltReadOnly
    Parameters = <>
    SQLOther0.Strings = (
      '-- Testa se existe duplicata em atraso'
      'select top 1'
      '  R.Nr_Receber'
      ''
      'from'
      '  Receber R'
      ''
      'inner join'
      '  Receber_Parcela RP'
      'on'
      '  RP.Cd_Filial     = R.Cd_Filial and'
      '  RP.Nr_Receber    = R.Nr_Receber and'
      '  RP.Dt_Vencimento < :Dt_Atual and'
      '  RP.Vl_Parcela    > RP.Vl_Recebido'
      ''
      'where'
      '  R.Cd_Emitente = :Cd_Emitente and'
      '  R.St_Receber <= ''''2'''
    )
    SQLOther1.Strings = (
      '-- Limite de cr'#233'dito'
      'select'
      '  E.Vl_Limite_Credito,'
      '  sum( RP.Vl_Parcela - RP.Vl_Recebido ) as Vl_Saldo'
      ''
      'from'
      '  Emitente E'
      ''
      'left join'
      '  Receber R'
      'on'
      '  R.Cd_Emitente = E.Cd_Emitente and'
      '  R.St_Receber <= ''''2'''
      ''
      'left join'
      '  Receber_Parcela RP'
      'on'
      '  RP.Cd_Filial     = R.Cd_Filial and'
      '  RP.Nr_Receber    = R.Nr_Receber and'
      '  RP.Vl_Parcela    > RP.Vl_Recebido'
      ''
      'where'
      '  E.Cd_Emitente = :Cd_Emitente'
      ''
      'group by'
      '  E.Vl_Limite_Credito'
    )
    SQLOther2.Strings = (
      '--------------- Saldo de Credito'
      'select'
      '  sum( Vl_Lancamento * ( case when Tp_Lancamento = ''''1'''' then 1 else -1 end ) ) as Vl_Credito'
      ''
      'from'
      '  Emitente_Credito'
      ''
      'where'
      '  Cd_Emitente = :Cd_Emitente'
    )
    Left = 210
    Top = 75
  end
  object ADODsAux: TADODataSet
    Connection = FrmMain.ADOConMaster
    LockType = ltReadOnly
    Parameters = <>
    Left = 320
    Top = 185
  end
  object ADODsCheck_03: TMultADODS
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLOther0.Strings = (
      'select'
      '  Cd_Arredondamento, Ds_Arredondamento, Vl_Arredondamento'
      ''
      'from'
      '  Arredondamento'
      ''
      'where'
      '  Cd_Arredondamento = :Cd_Arredondamento'
    )
    SQLOther1.Strings = (
      'select'
      '  Cd_SubProduto, Nm_SubProduto'
      ''
      'from'
      '  SubProduto'
      ''
      'where'
      '  Cd_SubProduto = :Cd_SubProduto'
    )
    SQLOther2.Strings = (
      'select'
      '  Nm_Projeto'
      '  '
      'from'
      '  Projeto'
      '  '
      'where'
      '  Cd_Projeto = :Cd_Projeto'
    )
    SQLOther3.Strings = (
      'select'
      '  Cd_Rota, Ds_Rota'
      ''
      'from'
      '  Rota'
      ''
      'where'
      '  Cd_Rota = :Cd_Rota'
    )
    SQLOther4.Strings = (
      '-------------------- Conta Corrente CCorrente'
      'select'
      '  Id_Conta, Ds_Conta'
      ''
      'from'
      '  CCorrente'
      ''
      'where'
      '  Id_Conta = :Id_Conta'
    )
    SQLOther5.Strings = (
      '--------------- Setor'
      'select'
      '  Cd_Setor, Nm_Setor, Sg_Setor'
      ''
      'from'
      '  Setor'
      ''
      'where'
      '  Cd_Setor = :Cd_Setor'
    )
    SQLOther6.Strings = (
      '-------------------- Motivo PCP'
      'select'
      '  Cd_Motivo, Ds_Motivo'
      ''
      'from'
      '  Motivo'
      ''
      'where'
      '  Cd_Motivo = :Cd_Motivo'
    )
    SQLOther7.Strings = (
      '-- ------------ Verifica se o Or'#231'amento foi modificado'
      'select'
      '  St_Orcamento, Vl_Orcamento'
      ''
      'from'
      '  Orcamento_Total'
      ''
      'where'
      '  Cd_Filial    = :Cd_Filial and'
      '  Nr_Orcamento = :Nr_Orcamento'
    )
    Left = 35
    Top = 115
  end
end
