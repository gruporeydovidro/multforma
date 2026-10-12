object FrmOrcamento_Copia: TFrmOrcamento_Copia
  Left = 294
  Top = 173
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Copia de Or'#231'amento'
  ClientHeight = 122
  ClientWidth = 500
  Color = clWhite
  Ctl3D = False
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 21
    Height = 122
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 479
    Height = 122
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 3
      Top = 92
      Width = 470
      Height = 5
      Shape = bsTopLine
    end
    object SbFilial: TSpeedButton
      Left = 45
      Top = 17
      Width = 23
      Height = 19
      Hint = 'Seleciona Filial'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbFilialClick
    end
    object Label4: TLabel
      Left = 5
      Top = 3
      Width = 104
      Height = 13
      Caption = 'Filial destino da c'#243'pia:'
    end
    object BitBtnConfirm: TBitBtn
      Left = 305
      Top = 95
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 2
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 391
      Top = 95
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 3
      OnClick = BitBtnCancelClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object EdtCd_Filial: TCurrencyEdit
      Left = 5
      Top = 17
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '###'
      TabOrder = 0
      OnExit = EdtCd_FilialExit
      OnKeyDown = EdtCd_FilialKeyDown
    end
    object EdtNm_Filial: TEdit
      Left = 69
      Top = 17
      Width = 268
      Height = 19
      TabStop = False
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 30
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
  end
  object ADOCmdCopia: TMultADOCMD
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLOther0.Strings = (
      '-------------------- Seleciona os dados da copia'
      'declare'
      '  @Cd_OldFilial SmallInt,'
      '  @Nr_OldOrcamento Int,'
      '  @Cd_NewFilial SmallInt,'
      '  @Nr_NewOrcamento Int'
      ''
      'select'
      '  @Cd_OldFilial    = :Cd_OldFilial,'
      '  @Cd_NewFilial    = :Cd_NewFilial,'
      '  @Nr_OldOrcamento = :Nr_OldOrcamento,'
      '  @Nr_NewOrcamento = :Nr_NewOrcamento'
      ''
      '-------------------- Orcamento'
      'insert into Orcamento( Cd_Filial, Nr_Orcamento, Dt_Emissao, St_Orcamento,'
      '   Fl_Estoque, Tp_Carga, Cd_Emitente, Cd_Funcionario, Fl_Formapagto,'
      '   Nr_Endereco, Nr_Pedido_emitente, Nm_Contato, Vl_Coleta_frete, Ps_Coleta,'
      '   Vl_Coleta, Mg_Coleta, Vl_Pedido_frete, Ps_Pedido, Vl_Pedido, Mg_Pedido,'
      '   Vl_Baseicms, Pr_Icms, Vl_Icms, Vl_Produto, Vl_Ipi, Vl_Stb, Pr_Desconto,'
      '   Vl_Desconto, Pr_Custo, Vl_Custo, Vl_ISS, Cd_Tabela, Fl_Frete, Nr_Ecf,'
      '   Cd_Serie, Nr_Fatura, Dt_Fatura, Cd_Cfop, Cd_Transportador, Dt_Saida,'
      '   Ds_Quantidade, Ds_Especie, Ds_Marca, Mm_Observacao, Mm_Nota,'
      '   Dt_Confirmado, Nr_Entrega, Nr_Validade, Cd_Usuario, Vl_Servico, Ps_Liquido,'
      '   Fl_ConFinal )'
      ''
      'select'
      '  @Cd_NewFilial, @Nr_NewOrcamento, :Dt_Emissao, ''''1'''' as St_Orcamento,'
      '  Fl_Estoque, Tp_Carga, Cd_Emitente, Cd_Funcionario, Fl_Formapagto,'
      '  Nr_Endereco, Nr_Pedido_emitente, Nm_Contato, Vl_Coleta_frete, Ps_Coleta,'
      '  Vl_Coleta, Mg_Coleta, Vl_Pedido_frete, Ps_Pedido, Vl_Pedido, Mg_Pedido,'
      '  Vl_Baseicms, Pr_Icms, Vl_Icms, Vl_Produto, Vl_Ipi, Vl_Stb, Pr_Desconto,'
      '  Vl_Desconto, Pr_Custo, Vl_Custo, Vl_ISS, Cd_Tabela, Fl_Frete, null as Nr_Ecf,'
      '  null as Cd_Serie, null as Nr_Fatura, null as Dt_Fatura, Cd_Cfop, Cd_Transportador, Dt_Saida,'
      '  Ds_Quantidade, Ds_Especie, Ds_Marca, Mm_Observacao, Mm_Nota,'
      '  null as Dt_Confirmado, Nr_Entrega, Nr_Validade, :Cd_Usuario, Vl_Servico, Ps_Liquido, Fl_ConFinal'
      ''
      'from'
      '  Orcamento'
      ''
      'where'
      '  Cd_Filial    = @Cd_OldFilial and'
      '  Nr_Orcamento = @Nr_OldOrcamento'
      ''
      '-------------------- Orcamento_Comissao'
      'insert into Orcamento_Comissao( Cd_Filial, Nr_Orcamento, Cd_Funcionario )'
      'select'
      '  @Cd_NewFilial, @Nr_NewOrcamento, Cd_Funcionario'
      ''
      'from'
      '  Orcamento_Comissao'
      ''
      'where'
      '  Cd_Filial    = @Cd_OldFilial and'
      '  Nr_Orcamento = @Nr_OldOrcamento'
      ''
      '-------------------- Orcamento_Parcela'
      'insert into Orcamento_Parcela( Cd_Filial, Nr_Orcamento, Nr_Prazo, Nr_Parcela,'
      '   Fl_Parcela, Cd_Portador, Dt_Vencimento, Vl_Parcela, Cd_Banco, Cd_Agencia,'
      '   Nr_Conta, Nr_Cheque, Dt_Emissao, Nr_Documento, Nm_Cliente, Nr_Telefone )'
      ''
      'select'
      '  @Cd_NewFilial, @Nr_NewOrcamento, Nr_Prazo, Nr_Parcela,'
      '  Fl_Parcela, Cd_Portador, Dt_Vencimento, Vl_Parcela, Cd_Banco, Cd_Agencia,'
      '  Nr_Conta, Nr_Cheque, Dt_Emissao, Nr_Documento, Nm_Cliente, Nr_Telefone'
      ''
      'from'
      '  Orcamento_Parcela'
      ''
      'where'
      '  Cd_Filial    = @Cd_OldFilial and'
      '  Nr_Orcamento = @Nr_OldOrcamento'
      ''
      '-------------------- Orcamento_Pagamento'
      'insert into Orcamento_Pagamento( Cd_Filial, Nr_Orcamento, Cd_Laboratorio,'
      '   Ds_Condicao, Tp_Frete, Cd_Transportador, Dt_Conf_representada,'
      '   Dt_Saida_representada, Dt_Conf_emitente, Mm_Observacao )'
      ''
      'select'
      '  @Cd_NewFilial, @Nr_NewOrcamento, Cd_Laboratorio,'
      '  Ds_Condicao, Tp_Frete, Cd_Transportador, Dt_Conf_representada,'
      '  Dt_Saida_representada, Dt_Conf_emitente, Mm_Observacao'
      ''
      'from'
      '  Orcamento_Pagamento'
      ''
      'where'
      '  Cd_Filial    = @Cd_OldFilial and'
      '  Nr_Orcamento = @Nr_OldOrcamento'
      ''
      '-------------------- Orcamento_Item'
      'insert into Orcamento_Item( Cd_Filial, Nr_Orcamento, Nr_Item, Cd_Produto,'
      '   Nm_Produto, Sg_Unidade, Qt_Item, Vl_Unitario, Fl_Confirmado, Qt_Estoque,'
      '   Ps_Produto, Pr_Margem, Qt_Agregado, Pr_Reducao, Fl_Stb, Nr_Lote,'
      '   Dt_Fabricacao, Dt_Validade, cd_subproduto, ds_ambiente, fl_medida,'
      '   Im_SubProduto, Fl_OrdemServico, Sg_Venda, Qt_Venda )'
      ''
      'select'
      '  @Cd_NewFilial, @Nr_NewOrcamento, Nr_Item, Cd_Produto,'
      '  Nm_Produto, Sg_Unidade, Qt_Item, Vl_Unitario, Fl_Confirmado, Qt_Estoque,'
      '  Ps_Produto, Pr_Margem, Qt_Agregado, Pr_Reducao, Fl_Stb, Nr_Lote,'
      '  Dt_Fabricacao, Dt_Validade, cd_subproduto, ds_ambiente, fl_medida,'
      '  Im_SubProduto, Fl_OrdemServico, Sg_Venda, Qt_Venda'
      ''
      'from'
      '  Orcamento_Item'
      ''
      'where'
      '  Cd_Filial    = @Cd_OldFilial and'
      '  Nr_Orcamento = @Nr_OldOrcamento'
      ''
      '-------------------- Orcamento_Conjunto'
      'insert into Orcamento_Conjunto( Cd_Filial, Nr_Orcamento, Nr_Item, Cd_Produto,'
      '   Sg_Unidade, Qt_Item, Vl_Unitario, Nm_Produto )'
      ''
      'select'
      '  @Cd_NewFilial, @Nr_NewOrcamento, Nr_Item, Cd_Produto,'
      '   Sg_Unidade, Qt_Item, Vl_Unitario, Nm_Produto '
      ''
      'from'
      '  Orcamento_Conjunto'
      ''
      'where'
      '  Cd_Filial    = @Cd_OldFilial and'
      '  Nr_Orcamento = @Nr_OldOrcamento'
      ''
      '-------------------- Orcamento_Descritivo'
      'insert into Orcamento_Descritivo( Cd_Filial, Nr_Orcamento, Nr_Item, Ds_Item,'
      '   Qt_Item, Vl_Item, Im_Item, Sg_Unidade )'
      ''
      'select'
      '  @Cd_NewFilial, @Nr_NewOrcamento, Nr_Item, Ds_Item,'
      '  Qt_Item, Vl_Item, Im_Item, Sg_Unidade'
      ''
      'from'
      '  Orcamento_Descritivo'
      ''
      'where'
      '  Cd_Filial    = @Cd_OldFilial and'
      '  Nr_Orcamento = @Nr_OldOrcamento'
    )
    SQLOther1.Strings = (
      '-------------------- Orcamento_Detalhe'
      'insert into Orcamento_Detalhe( Cd_Filial, Nr_Orcamento, Nr_Item, Nr_Detalhe,'
      '   Qt_Item, Nr_Comprimento, Nr_Largura, Nr_Altura, Ds_Detalhe )'
      ''
      'select'
      '  @Cd_NewFilial, @Nr_NewOrcamento, Nr_Item, Nr_Detalhe,'
      '  Qt_Item, Nr_Comprimento, Nr_Largura, Nr_Altura, Ds_Detalhe'
      ''
      'from'
      '  Orcamento_Detalhe'
      ''
      'where'
      '  Cd_Filial    = @Cd_OldFilial and'
      '  Nr_Orcamento = @Nr_OldOrcamento'
      ''
      '-------------------- Orcamento_Projeto'
      'insert into Orcamento_Projeto( Cd_Filial, Nr_Orcamento, Nr_Projeto, Cd_Projeto,'
      '    Qt_Projeto, Mm_Observacao, Ds_Ambiente, Nr_PrazoEntrega, Vl_Projeto )'
      ''
      'select'
      '  @Cd_NewFilial, @Nr_NewOrcamento, Nr_Projeto, Cd_Projeto,'
      '  Qt_Projeto, Mm_Observacao, Ds_Ambiente, Nr_PrazoEntrega, Vl_Projeto'
      ''
      'from'
      '  Orcamento_Projeto'
      ''
      'where'
      '  Cd_Filial    = @Cd_OldFilial and'
      '  Nr_Orcamento = @Nr_OldOrcamento'
      ''
      '-------------------- Orcamento_Projeto_Parte'
      'insert into Orcamento_Projeto_Parte( Cd_Filial, Nr_Orcamento, Nr_Projeto,'
      '   Cd_Parte, Nr_Altura, Nr_Largura )'
      ''
      'select'
      '  @Cd_NewFilial, @Nr_NewOrcamento, Nr_Projeto,'
      '  Cd_Parte, Nr_Altura, Nr_Largura'
      ''
      'from'
      '  Orcamento_Projeto_Parte'
      ''
      'where'
      '  Cd_Filial    = @Cd_OldFilial and'
      '  Nr_Orcamento = @Nr_OldOrcamento'
      ''
      '-------------------- Orcamento_Projeto_Item'
      'insert into Orcamento_Projeto_Item( Cd_Filial, Nr_Orcamento, Nr_Projeto,'
      '   Nr_Item, Tp_Item, Cd_Parte, Cd_Peca, Nr_Altura, Nr_Altura_Folga,'
      '   Nr_Largura, Nr_Largura_Folga, Cd_Produto, Sg_Unidade, Qt_Item, Vl_Unitario,'
      '   Nr_Altura_Direita, Nr_Largura_Direita, Nr_Item_Projeto )'
      ''
      'select'
      '  @Cd_NewFilial, @Nr_NewOrcamento, Nr_Projeto,'
      '  Nr_Item, Tp_Item, Cd_Parte, Cd_Peca, Nr_Altura, Nr_Altura_Folga,'
      '  Nr_Largura, Nr_Largura_Folga, Cd_Produto, Sg_Unidade, Qt_Item, Vl_Unitario,'
      '  Nr_Altura_Direita, Nr_Largura_Direita, Nr_Item_Projeto'
      ''
      'from'
      '  Orcamento_Projeto_Item'
      ''
      'where'
      '  Cd_Filial    = @Cd_OldFilial and'
      '  Nr_Orcamento = @Nr_OldOrcamento'
      ''
    )
    Left = 40
    Top = 56
  end
  object ADODsNew: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'select'#13#10'  max( Nr_Orcamento ) as Nr_Orcamento'#13#10#13#10'from'#13#10'  Orcamento'#13#10#13#10'where'#13#10'  Cd_Filial = :Cd_Filial'
    Parameters = <
      item
        Name = 'Cd_Filial'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = nil?
      end>
    Left = 74
    Top = 56
    object ADODsNewNr_Orcamento: TIntegerField
      FieldName = 'Nr_Orcamento'
      ReadOnly = True
    end
  end
end
