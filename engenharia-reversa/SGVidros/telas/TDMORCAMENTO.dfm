object DmOrcamento: TDmOrcamento
  OldCreateOrder = False
  Height = 493
  Width = 588
  object ADODsAux01: TMultADOCMD
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    Left = 48
    Top = 24
  end
  object ADOCmdAux01: TMultADOCMD
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLOther0.Strings = (
      '--------------- Inclus'#227'o da imagem do item'
      'update'
      '  Orcamento_Item'
      ''
      'set'
      '  Im_SubProduto = :Im_SubProduto'
      ''
      'where'
      '  Cd_Filial    = :Cd_Filial and'
      '  Nr_Orcamento = :Nr_Orcamento and'
      '  Nr_Item      = :Nr_Item'
    )
    Left = 160
    Top = 24
  end
  object ADODsOrcamento: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  O.Nr_Orcamento, O.Dt_Emissao, O.St_Orcamento, O.Cd_Emitente, E.Nm_Emitente,'#13#10'  O.Cd_Funcionario, F.Nm_Funcionario, O.Vl_Pedido_Frete, O.Ps_Pedido,'#13#10'  O.Vl_Pedido, O.Mg_Pedido, O.Pr_Desconto, O.Vl_Desconto, O.Pr_Custo,'#13#10'  O.Vl_Custo, O.Cd_Tabela, O.Fl_FormaPagto, O.Nr_Fatura, O.Vl_IPI,'#13#10'  R.Nr_Receber, E.Cd_Portador, O.Nr_ECF, E.Fl_Contribuinte, O.Dt_Fatura,'#13#10'  O.Fl_Frete, O.Ds_Quantidade, O.Ds_Especie, O.Ds_Marca, O.Vl_STB,'#13#10'  O.Fl_Impresso, O.Nr_Juncao, '#13#10'  O.Vl_Baseicms, O.Pr_Icms, O.Vl_Icms, O.Vl_BaseST, O.Cd_Cfop, O.Cd_Transportador,'#13#10'  O.Mm_Nota, O.Nr_Entrega, E.Nm_Fantasia, O.Mm_Observacao'#13#10#13#10'from'#13#10'  Orcamento O'#13#10#13#10'inner join'#13#10'  Funcionario F'#13#10'on'#13#10'  F.Cd_Funcionario = O.Cd_Funcionario'#13#10#13#10'left join'#13#10'  Emitente E'#13#10'on'#13#10'  E.Cd_Emitente = O.Cd_Emitente'#13#10#13#10'left join'#13#10'  Receber R'#13#10'on'#13#10'  R.Cd_Filial     = O.Cd_Filial and'#13#10'  R.Nr_Orcamento = O.Nr_Orcamento and'#13#10'  R.St_Receber   < ''''4'''#13#10#13#10'where'#13#10'  O.Cd_Filial    = :Cd_Filial and'#13#10'  O.Nr_Orcamento = :Nr_Orcamento'
    Parameters = <
      item
        Name = 'Cd_Filial'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = nil?
      end
      item
        Name = 'Nr_Orcamento'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = nil?
      end>
    Left = 39
    Top = 99
    object ADODsOrcamentonr_orcamento: TIntegerField
      FieldName = 'nr_orcamento'
    end
    object ADODsOrcamentodt_emissao: TDateTimeField
      FieldName = 'dt_emissao'
    end
    object ADODsOrcamentost_orcamento: TStringField
      FieldName = 'st_orcamento'
      FixedChar = True
      Size = 1
    end
    object ADODsOrcamentocd_emitente: TIntegerField
      FieldName = 'cd_emitente'
    end
    object ADODsOrcamentonm_emitente: TStringField
      FieldName = 'nm_emitente'
      Size = 50
    end
    object ADODsOrcamentocd_funcionario: TSmallintField
      FieldName = 'cd_funcionario'
    end
    object ADODsOrcamentonm_funcionario: TStringField
      FieldName = 'nm_funcionario'
      Size = 50
    end
    object ADODsOrcamentovl_pedido_frete: TBCDField
      FieldName = 'vl_pedido_frete'
      Precision = 12
      Size = 2
    end
    object ADODsOrcamentops_pedido: TBCDField
      FieldName = 'ps_pedido'
      Precision = 12
      Size = 3
    end
    object ADODsOrcamentovl_pedido: TBCDField
      FieldName = 'vl_pedido'
      Precision = 12
      Size = 2
    end
    object ADODsOrcamentomg_pedido: TBCDField
      FieldName = 'mg_pedido'
      Precision = 12
      Size = 2
    end
    object ADODsOrcamentopr_desconto: TBCDField
      FieldName = 'pr_desconto'
      Precision = 7
      Size = 2
    end
    object ADODsOrcamentovl_desconto: TBCDField
      FieldName = 'vl_desconto'
      Precision = 12
      Size = 2
    end
    object ADODsOrcamentopr_custo: TBCDField
      FieldName = 'pr_custo'
      Precision = 7
      Size = 2
    end
    object ADODsOrcamentovl_custo: TBCDField
      FieldName = 'vl_custo'
      Precision = 12
      Size = 2
    end
    object ADODsOrcamentocd_tabela: TStringField
      FieldName = 'cd_tabela'
      Size = 10
    end
    object ADODsOrcamentodp_situacao: TStringField
      FieldKind = fkCalculated
      FieldName = 'dp_situacao'
      Calculated = True
    end
    object ADODsOrcamentofl_formapagto: TStringField
      FieldName = 'fl_formapagto'
      FixedChar = True
      Size = 1
    end
    object ADODsOrcamentodp_pagamento: TStringField
      FieldKind = fkCalculated
      FieldName = 'dp_pagamento'
      Calculated = True
    end
    object ADODsOrcamentonr_fatura: TIntegerField
      FieldName = 'nr_fatura'
    end
    object ADODsOrcamentovl_ipi: TBCDField
      FieldName = 'vl_ipi'
      Precision = 12
      Size = 2
    end
    object ADODsOrcamentonr_receber: TIntegerField
      FieldName = 'nr_receber'
    end
    object ADODsOrcamentoVl_Total: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Vl_Total'
      Calculated = True
    end
    object ADODsOrcamentocd_portador: TSmallintField
      FieldName = 'cd_portador'
    end
    object ADODsOrcamentonr_ecf: TIntegerField
      FieldName = 'nr_ecf'
    end
    object ADODsOrcamentoFl_Contribuinte: TStringField
      FieldName = 'Fl_Contribuinte'
      FixedChar = True
      Size = 1
    end
    object ADODsOrcamentoDt_Fatura: TDateTimeField
      FieldName = 'Dt_Fatura'
    end
    object ADODsOrcamentoFl_Frete: TStringField
      FieldName = 'Fl_Frete'
      FixedChar = True
      Size = 1
    end
    object ADODsOrcamentoDs_Quantidade: TStringField
      FieldName = 'Ds_Quantidade'
    end
    object ADODsOrcamentoDs_Especie: TStringField
      FieldName = 'Ds_Especie'
    end
    object ADODsOrcamentoDs_Marca: TStringField
      FieldName = 'Ds_Marca'
    end
    object ADODsOrcamentoVl_STB: TBCDField
      FieldName = 'Vl_STB'
      Precision = 12
      Size = 2
    end
    object ADODsOrcamentoFl_Impresso: TStringField
      FieldName = 'Fl_Impresso'
      FixedChar = True
      Size = 1
    end
    object ADODsOrcamentoNr_Juncao: TIntegerField
      FieldName = 'Nr_Juncao'
    end
    object ADODsOrcamentoVl_Baseicms: TBCDField
      FieldName = 'Vl_Baseicms'
      Precision = 12
      Size = 2
    end
    object ADODsOrcamentoPr_Icms: TBCDField
      FieldName = 'Pr_Icms'
      Precision = 12
      Size = 2
    end
    object ADODsOrcamentoVl_Icms: TBCDField
      FieldName = 'Vl_Icms'
      Precision = 12
      Size = 2
    end
    object ADODsOrcamentoVl_BaseST: TBCDField
      FieldName = 'Vl_BaseST'
      Precision = 12
      Size = 3
    end
    object ADODsOrcamentoCd_Cfop: TStringField
      FieldName = 'Cd_Cfop'
      FixedChar = True
      Size = 4
    end
    object ADODsOrcamentoCd_Transportador: TSmallintField
      FieldName = 'Cd_Transportador'
    end
    object ADODsOrcamentoMm_Nota: TMemoField
      FieldName = 'Mm_Nota'
      BlobType = ftMemo
    end
    object ADODsOrcamentoNr_Entrega: TSmallintField
      FieldName = 'Nr_Entrega'
    end
    object ADODsOrcamentoDp_Emitente: TStringField
      FieldKind = fkCalculated
      FieldName = 'Dp_Emitente'
      Size = 83
      Calculated = True
    end
    object ADODsOrcamentoNm_Fantasia: TStringField
      FieldName = 'Nm_Fantasia'
      Size = 30
    end
    object ADODsOrcamentoMm_Observacao: TMemoField
      FieldName = 'Mm_Observacao'
      BlobType = ftMemo
    end
  end
  object ADODsItem: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'select'#13#10'  OI.Cd_Filial, OI.Nr_Orcamento, OI.Nr_Item, OI.Cd_Produto, OI.Nm_Produto,'#13#10'  OI.Sg_Unidade, OI.Qt_Item, OI.Vl_Unitario, OI.Fl_Confirmado, OI.Qt_Estoque,'#13#10'  OI.Pr_Margem, OI.Qt_Agregado, OI.Pr_Reducao, OI.Fl_STB, P.Sg_Venda,'#13#10'  P.Nm_Produto as Nm_ProdEstoque, P.Sg_Estoque, OI.Ps_Produto, P.Nm_Abreviado,'#13#10'  P.Fl_Produto, P.Pr_Vendedor, OI.Nr_Lote, OI.Dt_Fabricacao, OI.Dt_Validade,'#13#10'  P.Fl_Lote, OI.Cd_SubProduto, OI.Ds_Ambiente, OI.Fl_Medida, OI.Im_SubProduto,'#13#10'  P.Fl_Perecivel, G.Fl_Moldura'#13#10#13#10'from'#13#10'  Orcamento_Item OI'#13#10#13#10'left join'#13#10'  Produto P'#13#10'on'#13#10'  P.Cd_Produto = OI.Cd_Produto'#13#10#13#10'left join'#13#10'  Grupo G'#13#10'on'#13#10'  G.Cd_Grupo = P.Cd_Grupo'#13#10#13#10'where'#13#10'  OI.Cd_Filial    = :Cd_Filial and'#13#10'  OI.Nr_Orcamento = :Nr_Orcamento'#13#10#13#10'order by'#13#10'  OI.Cd_Filial, OI.Nr_Orcamento, OI.Nr_Item desc'
    Parameters = <
      item
        Name = 'Cd_Filial'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = nil?
      end
      item
        Name = 'Nr_Orcamento'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = nil?
      end>
    SQLOther0.Strings = (
      '--------------- Itens do or'#231'amento'
      'select'
      '  OI.Cd_Filial, OI.Nr_Orcamento, OI.Nr_Item, OI.Cd_Produto, OI.Nm_Produto,'
      '  OI.Sg_Unidade, OI.Qt_Item, OI.Vl_Unitario, OI.Fl_Confirmado, OI.Qt_Estoque,'
      '  OI.Pr_Margem, OI.Qt_Agregado, OI.Pr_Reducao, OI.Fl_STB, P.Sg_Venda,'
      '  P.Nm_Produto as Nm_ProdEstoque, P.Sg_Estoque, OI.Ps_Produto, P.Nm_Abreviado,'
      '  P.Fl_Produto, P.Pr_Vendedor, OI.Nr_Lote, OI.Dt_Fabricacao, OI.Dt_Validade,'
      '  P.Fl_Lote, OI.Cd_SubProduto, OI.Ds_Ambiente, OI.Fl_Medida, OI.Im_SubProduto,'
      '  P.Fl_Perecivel, G.Fl_Moldura'
      ''
      'from'
      '  Orcamento_Item OI'
      ''
      'left join'
      '  Produto P'
      'on'
      '  P.Cd_Produto = OI.Cd_Produto'
      ''
      'left join'
      '  Grupo G'
      'on'
      '  G.Cd_Grupo = P.Cd_Grupo'
      ''
      'where'
      '  OI.Cd_Filial    = :Cd_Filial and'
      '  OI.Nr_Orcamento = :Nr_Orcamento'
      '  /* Nr_Item */'
      ''
      'order by'
      '  OI.Cd_Filial, OI.Nr_Orcamento, OI.Nr_Item desc'
    )
    Left = 160
    Top = 104
    object ADODsItemCd_Filial: TSmallintField
      FieldName = 'Cd_Filial'
    end
    object ADODsItemNr_Orcamento: TIntegerField
      FieldName = 'Nr_Orcamento'
    end
    object ADODsItemNr_Item: TSmallintField
      FieldName = 'Nr_Item'
    end
    object ADODsItemCd_Produto: TIntegerField
      FieldName = 'Cd_Produto'
    end
    object ADODsItemNm_Produto: TStringField
      FieldName = 'Nm_Produto'
      Size = 120
    end
    object ADODsItemSg_Unidade: TStringField
      FieldName = 'Sg_Unidade'
      FixedChar = True
      Size = 2
    end
    object ADODsItemQt_Item: TBCDField
      FieldName = 'Qt_Item'
      Precision = 12
      Size = 3
    end
    object ADODsItemVl_Unitario: TBCDField
      FieldName = 'Vl_Unitario'
      Precision = 13
      Size = 5
    end
    object ADODsItemFl_Confirmado: TStringField
      FieldName = 'Fl_Confirmado'
      FixedChar = True
      Size = 1
    end
    object ADODsItemQt_Estoque: TBCDField
      FieldName = 'Qt_Estoque'
      Precision = 12
      Size = 3
    end
    object ADODsItemPr_Margem: TBCDField
      FieldName = 'Pr_Margem'
      Precision = 9
      Size = 2
    end
    object ADODsItemQt_Agregado: TBCDField
      FieldName = 'Qt_Agregado'
      Precision = 9
      Size = 3
    end
    object ADODsItemPr_Reducao: TBCDField
      FieldName = 'Pr_Reducao'
      Precision = 7
      Size = 2
    end
    object ADODsItemFl_STB: TStringField
      FieldName = 'Fl_STB'
      FixedChar = True
      Size = 1
    end
    object ADODsItemSg_Venda: TStringField
      FieldName = 'Sg_Venda'
      FixedChar = True
      Size = 2
    end
    object ADODsItemNm_ProdEstoque: TStringField
      FieldName = 'Nm_ProdEstoque'
      Size = 120
    end
    object ADODsItemSg_Estoque: TStringField
      FieldName = 'Sg_Estoque'
      FixedChar = True
      Size = 2
    end
    object ADODsItemPs_Produto: TBCDField
      FieldName = 'Ps_Produto'
      Precision = 18
      Size = 3
    end
    object ADODsItemNm_Abreviado: TStringField
      FieldName = 'Nm_Abreviado'
      Size = 40
    end
    object ADODsItemFl_Produto: TStringField
      FieldName = 'Fl_Produto'
      FixedChar = True
      Size = 1
    end
    object ADODsItemPr_Vendedor: TBCDField
      FieldName = 'Pr_Vendedor'
      Precision = 9
      Size = 2
    end
    object ADODsItemNr_Lote: TStringField
      FieldName = 'Nr_Lote'
      Size = 15
    end
    object ADODsItemDt_Fabricacao: TDateTimeField
      FieldName = 'Dt_Fabricacao'
    end
    object ADODsItemDt_Validade: TDateTimeField
      FieldName = 'Dt_Validade'
    end
    object ADODsItemFl_Lote: TStringField
      FieldName = 'Fl_Lote'
      FixedChar = True
      Size = 1
    end
    object ADODsItemCd_SubProduto: TSmallintField
      FieldName = 'Cd_SubProduto'
    end
    object ADODsItemDs_Ambiente: TStringField
      FieldName = 'Ds_Ambiente'
      Size = 50
    end
    object ADODsItemFl_Medida: TStringField
      FieldName = 'Fl_Medida'
      FixedChar = True
      Size = 1
    end
    object ADODsItemIm_SubProduto: TBlobField
      FieldName = 'Im_SubProduto'
    end
    object ADODsItemFl_Perecivel: TStringField
      FieldName = 'Fl_Perecivel'
      FixedChar = True
      Size = 1
    end
    object ADODsItemFl_Moldura: TStringField
      FieldName = 'Fl_Moldura'
      FixedChar = True
      Size = 1
    end
  end
end
