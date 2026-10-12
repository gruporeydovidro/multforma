object FrmExporta_EntradaSaida: TFrmExporta_EntradaSaida
  Left = 322
  Top = 226
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Exporta'#231#227'o de Arquivos Cont'#225'beis'
  ClientHeight = 352
  ClientWidth = 785
  Color = clWhite
  Ctl3D = False
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 21
    Height = 352
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 764
    Height = 352
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 2
      Top = 323
      Width = 758
      Height = 5
      Shape = bsTopLine
    end
    object Label1: TLabel
      Left = 5
      Top = 4
      Width = 104
      Height = 13
      Caption = 'Selecione o Software:'
    end
    object Label2: TLabel
      Left = 114
      Top = 4
      Width = 41
      Height = 13
      Caption = 'Per'#237'odo:'
    end
    object SbEntrada: TSpeedButton
      Tag = 1
      Left = 290
      Top = 77
      Width = 23
      Height = 21
      Hint = 'Salvar como...'
      Flat = True
      Glyph.Data = {binary 378 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbEntradaClick
    end
    object SbEntradaItem: TSpeedButton
      Tag = 2
      Left = 603
      Top = 77
      Width = 23
      Height = 21
      Hint = 'Salvar como...'
      Flat = True
      Glyph.Data = {binary 378 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbEntradaClick
    end
    object SbSaida: TSpeedButton
      Tag = 3
      Left = 290
      Top = 134
      Width = 23
      Height = 21
      Hint = 'Salvar como...'
      Flat = True
      Glyph.Data = {binary 378 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbEntradaClick
    end
    object SbSaidaItem: TSpeedButton
      Tag = 4
      Left = 603
      Top = 134
      Width = 23
      Height = 21
      Hint = 'Salvar como...'
      Flat = True
      Glyph.Data = {binary 378 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbEntradaClick
    end
    object SbProdutos: TSpeedButton
      Tag = 5
      Left = 290
      Top = 190
      Width = 23
      Height = 21
      Hint = 'Salvar como...'
      Flat = True
      Glyph.Data = {binary 378 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbEntradaClick
    end
    object SbTerceiros: TSpeedButton
      Tag = 6
      Left = 603
      Top = 190
      Width = 23
      Height = 21
      Hint = 'Salvar como...'
      Flat = True
      Glyph.Data = {binary 378 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbEntradaClick
    end
    object SbProdCSV: TSpeedButton
      Tag = 7
      Left = 290
      Top = 246
      Width = 23
      Height = 21
      Hint = 'Salvar como...'
      Flat = True
      Glyph.Data = {binary 378 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbEntradaClick
    end
    object SbEmitCSV: TSpeedButton
      Tag = 8
      Left = 603
      Top = 246
      Width = 23
      Height = 21
      Hint = 'Salvar como...'
      Flat = True
      Glyph.Data = {binary 378 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbEntradaClick
    end
    object BitBtnConfirm: TBitBtn
      Left = 592
      Top = 325
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 17
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 677
      Top = 325
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 18
      OnClick = BitBtnCancelClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object CbSoft: TComboBox
      Left = 5
      Top = 18
      Width = 101
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      MaxLength = 8
      TabOrder = 0
      Text = 'Prosoft'
      Items.Strings = (
        'Prosoft'
      )
    end
    object EdtDt_Start: TDateEdit
      Left = 114
      Top = 18
      Width = 89
      Height = 19
      CheckOnExit = True
      DialogTitle = 'Selecione a Data'
      GlyphKind = gkCustom
      Glyph.Data = {binary 1850 bytes}
      NumGlyphs = 1
      StartOfWeek = Sun
      TabOrder = 1
      Text = '01/01/2000'
    end
    object EdtDt_End: TDateEdit
      Left = 209
      Top = 18
      Width = 89
      Height = 19
      CheckOnExit = True
      DialogTitle = 'Selecione a Data'
      GlyphKind = gkCustom
      Glyph.Data = {binary 1850 bytes}
      NumGlyphs = 1
      StartOfWeek = Sun
      TabOrder = 2
      Text = '31/12/2008'
    end
    object CkBEntrada: TCheckBox
      Left = 5
      Top = 45
      Width = 97
      Height = 17
      Caption = 'Gerar Entradas'
      Checked = True
      State = cbChecked
      TabOrder = 3
      OnClick = CkBEntradaClick
    end
    object EdtNm_Entrada: TLabeledEdit
      Left = 6
      Top = 77
      Width = 285
      Height = 19
      EditLabel.Width = 107
      EditLabel.Height = 13
      EditLabel.Caption = 'Registro das Entradas:'
      LabelSpacing = 2
      TabOrder = 4
      Text = 'Entrada.txt'
    end
    object EdtNm_EntradaItem: TLabeledEdit
      Left = 318
      Top = 79
      Width = 285
      Height = 19
      EditLabel.Width = 143
      EditLabel.Height = 13
      EditLabel.Caption = 'Registro dos Itens da Entrada:'
      LabelSpacing = 2
      TabOrder = 5
      Text = 'Item_Ent.TXT'
    end
    object CkBSaida: TCheckBox
      Left = 5
      Top = 102
      Width = 97
      Height = 17
      Caption = 'Gerar Saidas'
      Checked = True
      State = cbChecked
      TabOrder = 6
      OnClick = CkBSaidaClick
    end
    object EdtNm_Saida: TLabeledEdit
      Left = 5
      Top = 136
      Width = 285
      Height = 19
      EditLabel.Width = 97
      EditLabel.Height = 13
      EditLabel.Caption = 'Registro das Saidas:'
      LabelSpacing = 2
      TabOrder = 7
      Text = 'Saida.TXT'
    end
    object EdtNm_SaidaItem: TLabeledEdit
      Left = 318
      Top = 136
      Width = 285
      Height = 19
      EditLabel.Width = 135
      EditLabel.Height = 13
      EditLabel.Caption = 'Registro Dos Itens da Saida:'
      LabelSpacing = 2
      TabOrder = 8
      Text = 'Item_Sai.TXT'
    end
    object PgBarFile: TProgressBar
      Left = 5
      Top = 301
      Width = 751
      Height = 17
      TabOrder = 16
    end
    object STxtProcesso: TStaticText
      Left = 5
      Top = 284
      Width = 54
      Height = 17
      Caption = 'Progresso:'
      TabOrder = 19
    end
    object EdtNm_Produto: TLabeledEdit
      Left = 5
      Top = 192
      Width = 285
      Height = 19
      EditLabel.Width = 45
      EditLabel.Height = 13
      EditLabel.Caption = 'Produtos:'
      LabelSpacing = 2
      TabOrder = 10
      Text = 'Produto.TXT'
    end
    object CkBProdutos: TCheckBox
      Left = 5
      Top = 158
      Width = 132
      Height = 17
      Caption = 'Gerar Produtos TXT'
      Checked = True
      State = cbChecked
      TabOrder = 9
      OnClick = CkBProdutosClick
    end
    object EdtNm_Terceiros: TLabeledEdit
      Left = 318
      Top = 192
      Width = 285
      Height = 19
      EditLabel.Width = 47
      EditLabel.Height = 13
      EditLabel.Caption = 'Terceiros:'
      LabelSpacing = 2
      TabOrder = 11
      Text = 'Terceiros.TXT'
    end
    object CkBTerceiros: TCheckBox
      Left = 318
      Top = 158
      Width = 308
      Height = 17
      Caption = 'Terceiros (Emitente - Clientes e Fornecedores) TXT'
      Checked = True
      State = cbChecked
      TabOrder = 20
      OnClick = CkBTerceirosClick
    end
    object EdtNm_ProdCSV: TLabeledEdit
      Left = 5
      Top = 248
      Width = 285
      Height = 19
      EditLabel.Width = 45
      EditLabel.Height = 13
      EditLabel.Caption = 'Produtos:'
      LabelSpacing = 2
      TabOrder = 13
      Text = 'Produto.CSV'
    end
    object CkBProdCSV: TCheckBox
      Left = 5
      Top = 214
      Width = 132
      Height = 17
      Caption = 'Gerar Produtos CSV'
      Checked = True
      State = cbChecked
      TabOrder = 12
      OnClick = CkBProdutosClick
    end
    object EdtNm_TerCSV: TLabeledEdit
      Left = 318
      Top = 248
      Width = 285
      Height = 19
      EditLabel.Width = 47
      EditLabel.Height = 13
      EditLabel.Caption = 'Terceiros:'
      LabelSpacing = 2
      TabOrder = 15
      Text = 'Terceiros.CSV'
    end
    object CkBTerCSV: TCheckBox
      Left = 318
      Top = 214
      Width = 279
      Height = 17
      Caption = 'Terceiros (Emitente - Clientes e Fornecedores) CSV'
      Checked = True
      State = cbChecked
      TabOrder = 14
      OnClick = CkBTerceirosClick
    end
  end
  object ADODsEntradaOLD: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  E.Cd_Filial, E.Nr_Entrada, EM.Nr_Documento, E.Dt_Emissao, E.Dt_Lancamento,'#13#10'  E.Nr_Fatura, E.Cd_Serie, E.Vl_BaseICMS, E.Vl_ICMS,'#13#10'  E.Vl_Substituicao, E.Vl_IPI, E.Pr_ICMS, E.Vl_Nota, EM.Nr_Insc_Estadual,'#13#10'  E.Cd_CFOP, E.Cd_ModeloFiscal, E.Fl_Frete, E.Nr_chNFe,'#13#10#13#10'  Vl_Produto = case when E.Vl_Produto = 0 then E.Vl_Nota else E.Vl_Produto end'#13#10'  '#13#10'from'#13#10'  Entrada E'#13#10'  '#13#10'inner join'#13#10'  Emitente EM'#13#10'on'#13#10'  EM.Cd_Emitente = E.Cd_Emitente'#13#10'  '#13#10'where'#13#10'  E.Cd_Filial      = :Cd_Filial and'#13#10'  E.St_Entrada = ''''2'''' and'#13#10'  E.Dt_Lancamento >= :Dt_Start and'#13#10'  E.Dt_Lancamento  < :Dt_End'#13#10'  '#13#10'order by'#13#10'  E.Nr_Entrada'
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
        Name = 'Dt_Start'
        DataType = ftDateTime
        Precision = 16
        Size = 16
        Value = nil?
      end
      item
        Name = 'Dt_End'
        DataType = ftDateTime
        Precision = 16
        Size = 16
        Value = nil?
      end>
    Left = 691
    Top = 87
    object ADODsEntradaOLDcd_filial: TSmallintField
      FieldName = 'cd_filial'
    end
    object ADODsEntradaOLDnr_entrada: TIntegerField
      FieldName = 'nr_entrada'
    end
    object ADODsEntradaOLDnr_documento: TStringField
      FieldName = 'nr_documento'
      Size = 14
    end
    object ADODsEntradaOLDdt_emissao: TDateTimeField
      FieldName = 'dt_emissao'
    end
    object ADODsEntradaOLDdt_lancamento: TDateTimeField
      FieldName = 'dt_lancamento'
    end
    object ADODsEntradaOLDnr_fatura: TIntegerField
      FieldName = 'nr_fatura'
    end
    object ADODsEntradaOLDcd_serie: TStringField
      FieldName = 'cd_serie'
      Size = 3
    end
    object ADODsEntradaOLDvl_produto: TBCDField
      FieldName = 'vl_produto'
      Precision = 12
      Size = 2
    end
    object ADODsEntradaOLDvl_baseicms: TBCDField
      FieldName = 'vl_baseicms'
      Precision = 12
      Size = 2
    end
    object ADODsEntradaOLDvl_icms: TBCDField
      FieldName = 'vl_icms'
      Precision = 12
      Size = 2
    end
    object ADODsEntradaOLDvl_substituicao: TBCDField
      FieldName = 'vl_substituicao'
      Precision = 12
      Size = 2
    end
    object ADODsEntradaOLDvl_ipi: TBCDField
      FieldName = 'vl_ipi'
      Precision = 12
      Size = 2
    end
    object ADODsEntradaOLDpr_icms: TBCDField
      FieldName = 'pr_icms'
      Precision = 9
      Size = 2
    end
    object ADODsEntradaOLDvl_nota: TBCDField
      FieldName = 'vl_nota'
      Precision = 12
      Size = 2
    end
    object ADODsEntradaOLDnr_insc_estadual: TStringField
      FieldName = 'nr_insc_estadual'
      Size = 18
    end
    object ADODsEntradaOLDcd_cfop: TStringField
      FieldName = 'cd_cfop'
      FixedChar = True
      Size = 4
    end
    object ADODsEntradaOLDCd_ModeloFiscal: TStringField
      FieldName = 'Cd_ModeloFiscal'
      FixedChar = True
      Size = 2
    end
    object ADODsEntradaOLDFl_Frete: TStringField
      FieldName = 'Fl_Frete'
      FixedChar = True
      Size = 1
    end
    object ADODsEntradaOLDNr_chNFe: TStringField
      FieldName = 'Nr_chNFe'
      Size = 255
    end
  end
  object DsEntrada: TDataSource
    DataSet = ADODsEntradaOLD
    Left = 567
    Top = 263
  end
  object ADODsEntradaItemOLD: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  EI.Cd_Filial, EI.Nr_Entrada, EI.Nr_Item, EI.Cd_Produto, EI.Sg_Unidade,'#13#10'  T.Cd_CST, EI.Qt_Item, EI.Vl_Unitario, EI.Pr_Desconto, EI.Pr_IPI, EI.Vl_IPI,'#13#10'  EI.Pr_ICMS, EI.Vl_ICMS, T.Tp_Tributacao, P.Nm_Produto, P.Cd_ClasFiscal,'#13#10'  T.Pr_Contrib, P.Pr_IPI as Pr_IPIProduto'#13#10#13#10'from'#13#10'  Entrada_Item EI'#13#10#13#10'inner join'#13#10'  Produto P'#13#10'on'#13#10'  P.Cd_Produto = EI.Cd_Produto'#13#10#13#10'inner join'#13#10'  Tributacao T'#13#10'on'#13#10'  T.Cd_Tributacao = P.Cd_Tributacao'#13#10#13#10'where'#13#10'  EI.Cd_Filial  = :Cd_Filial and'#13#10'  EI.Nr_Entrada = :Nr_Entrada'
    DataSource = DsEntrada
    IndexFieldNames = 'cd_filial;nr_entrada'
    MasterFields = 'Cd_Filial;Nr_Entrada'
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
        Name = 'Nr_Entrada'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = nil?
      end>
    Left = 691
    Top = 200
    object ADODsEntradaItemOLDcd_filial: TSmallintField
      FieldName = 'cd_filial'
    end
    object ADODsEntradaItemOLDnr_entrada: TIntegerField
      FieldName = 'nr_entrada'
    end
    object ADODsEntradaItemOLDnr_item: TSmallintField
      FieldName = 'nr_item'
    end
    object ADODsEntradaItemOLDcd_produto: TIntegerField
      FieldName = 'cd_produto'
    end
    object ADODsEntradaItemOLDsg_unidade: TStringField
      FieldName = 'sg_unidade'
      FixedChar = True
      Size = 2
    end
    object ADODsEntradaItemOLDcd_cst: TStringField
      FieldName = 'cd_cst'
      Size = 5
    end
    object ADODsEntradaItemOLDqt_item: TBCDField
      FieldName = 'qt_item'
      Precision = 18
      Size = 3
    end
    object ADODsEntradaItemOLDvl_unitario: TBCDField
      FieldName = 'vl_unitario'
      Precision = 18
      Size = 3
    end
    object ADODsEntradaItemOLDpr_desconto: TBCDField
      FieldName = 'pr_desconto'
      Precision = 7
      Size = 2
    end
    object ADODsEntradaItemOLDpr_ipi: TBCDField
      FieldName = 'pr_ipi'
      Precision = 7
      Size = 2
    end
    object ADODsEntradaItemOLDvl_ipi: TBCDField
      FieldName = 'vl_ipi'
      Precision = 18
      Size = 3
    end
    object ADODsEntradaItemOLDvl_icms: TBCDField
      FieldName = 'vl_icms'
      Precision = 18
      Size = 3
    end
    object ADODsEntradaItemOLDtp_tributacao: TStringField
      FieldName = 'tp_tributacao'
      FixedChar = True
      Size = 1
    end
    object ADODsEntradaItemOLDnm_produto: TStringField
      FieldName = 'nm_produto'
      Size = 120
    end
    object ADODsEntradaItemOLDcd_clasfiscal: TStringField
      FieldName = 'cd_clasfiscal'
      Size = 10
    end
    object ADODsEntradaItemOLDpr_icms: TBCDField
      FieldName = 'pr_icms'
      Precision = 7
      Size = 2
    end
    object ADODsEntradaItemOLDPr_Contrib: TBCDField
      FieldName = 'Pr_Contrib'
      Precision = 7
      Size = 2
    end
    object ADODsEntradaItemOLDPr_IPIProduto: TBCDField
      FieldName = 'Pr_IPIProduto'
      Precision = 9
      Size = 2
    end
  end
  object ADODsSaidaOLD: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    OnCalcFields = ADODsSaidaOLDCalcFields
    CommandText = '-- Or'#231'amentos'#13#10'select'#13#10'  ''''1'''' as Fl_Origem, O.Cd_Filial, O.Nr_Orcamento, Cast( Null as Int ) as Nr_Saida,'#13#10'  O.Cd_Serie, O.Nr_Fatura, O.Dt_Saida, O.Vl_Pedido, O.Vl_Desconto, O.Vl_Custo,'#13#10'  O.Pr_Custo, O.Vl_Produto, O.Vl_BaseICMS, O.Vl_ICMS, O.Vl_IPI, O.Vl_STB,'#13#10'  O.Pr_ICMS, E.Nr_Documento, C.Sg_Estado, O.Fl_FormaPagto, O.Dt_Fatura,'#13#10'  O.Cd_CFOP, O.Nr_ECF, O.Vl_Pedido_Frete, O.Pr_Desconto, CF.Tp_CFOP, '#13#10'  E.Fl_Contribuinte, ''''01'''' as Cd_ModeloFiscal'#13#10#13#10'from'#13#10'  Orcamento O'#13#10'  '#13#10'left join'#13#10'  Emitente E'#13#10'on'#13#10'  E.Cd_Emitente = O.Cd_Emitente'#13#10'  '#13#10'left join'#13#10'  Emitente_Endereco EE'#13#10'on'#13#10'  EE.Cd_Emitente = E.Cd_Emitente and'#13#10'  EE.Nr_Endereco = E.Nr_Endereco'#13#10'  '#13#10'left join'#13#10'  Cidade C'#13#10'on'#13#10'  C.Cd_Cidade = EE.Cd_Cidade'#13#10#13#10'left join'#13#10'  CFOP CF'#13#10'on'#13#10'  CF.Cd_CFOP = O.Cd_CFOP'#13#10'  '#13#10'where'#13#10'  O.Cd_Filial    = 1 and'#13#10'  O.St_Orcamento = ''''9'''' and'#13#10'  O.Dt_Fatura   >= ''''01/01/2005'''' and'#13#10'  O.Dt_Fatura    < ''''01/01/2006'''#13#10#13#10'union'#13#10#13#10'-- Sa'#237'das'#13#10'select'#13#10'  ''''2'''' as Fl_Origem, S.Cd_Filial, Cast( Null as Int ) as Nr_Orcamento, S.Nr_Saida,'#13#10'  S.Cd_Serie, S.Nr_Fatura, S.Dt_Emissao, S.Vl_Nota, 0.0 as Vl_Desconto,'#13#10'  0.0 as Vl_Custo, 0.0 as Pr_Custo, S.Vl_Produto, S.Vl_BaseICMS, S.Vl_ICMS,'#13#10'  S.Vl_IPI, S.Vl_Substituicao as Vl_STB, S.Pr_ICMS, E.Nr_Documento,'#13#10'  C.Sg_Estado, ''''0'''' as Fl_FormaPagto, S.Dt_Emissao as Dt_Fatura, S.Cd_CFOP,'#13#10'  Cast( Null as Int ) as Nr_ECF, 0.0 as Vl_Pedido_Frete, 0.0 as Pr_Desconto, CF.Tp_CFOP, '#13#10'  E.Fl_Contribuinte, S.Cd_ModeloFiscal'#13#10#13#10'from'#13#10'  Saida S'#13#10'  '#13#10'left join'#13#10'  Emitente E'#13#10'on'#13#10'  E.Cd_Emitente = S.Cd_Emitente'#13#10'  '#13#10'left join'#13#10'  Emitente_Endereco EE'#13#10'on'#13#10'  EE.Cd_Emitente = E.Cd_Emitente and'#13#10'  EE.Nr_Endereco = E.Nr_Endereco'#13#10'  '#13#10'left join'#13#10'  Cidade C'#13#10'on'#13#10'  C.Cd_Cidade = EE.Cd_Cidade'#13#10#13#10'left join'#13#10'  CFOP CF'#13#10'on'#13#10'  CF.Cd_CFOP = S.Cd_CFOP'#13#10#13#10'where'#13#10'  S.Cd_Filial   = 1 and'#13#10'  S.St_Saida    = ''''2'''' and'#13#10'  S.Dt_Emissao >= ''''01/01/2001'''' and'#13#10'  S.Dt_Emissao  < ''''01/01/2006'''#13#10'  '#13#10'order by'#13#10'  Nr_Fatura'
    Parameters = <>
    SQLOther0.Strings = (
      'declare'
      '  @Cd_Filial SmallInt,'
      '  @Dt_Start SmallDateTime,'
      '  @Dt_End SmallDateTime'
      ''
      'select'
      '  @Cd_Filial = :Cd_Filial,'
      '  @Dt_Start  = :Dt_Start,'
      '  @Dt_End    = :Dt_End'
      ''
      '-------------------- Or'#231'amentos'
      'select'
      '  ''''1'''' as Fl_Origem, O.Cd_Filial, O.Nr_Orcamento, Cast( Null as Int ) as Nr_Saida,'
      '  O.Cd_Serie, O.Nr_Fatura, O.Dt_Fatura as Dt_Saida, O.Vl_Pedido, O.Vl_Desconto, O.Vl_Custo,'
      '  O.Pr_Custo, O.Vl_Produto, O.Vl_BaseICMS, O.Vl_ICMS, O.Vl_IPI, O.Vl_STB,'
      '  O.Pr_ICMS, E.Nr_Documento, C.Sg_Estado, O.Fl_FormaPagto, O.Dt_Fatura,'
      '  O.Cd_CFOP, O.Nr_ECF, O.Vl_Pedido_Frete, O.Pr_Desconto, CF.Tp_CFOP, '
      '  E.Fl_Contribuinte, ''''01'''' as Cd_ModeloFiscal,'
      ''
      '  Vl_Outras ='
      '    ('
      '    select'
      '      sum( Vl_'
      '    )'
      ''
      'from'
      '  Orcamento O'
      '  '
      'left join'
      '  Emitente E'
      'on'
      '  E.Cd_Emitente = O.Cd_Emitente'
      '  '
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
      'left join'
      '  CFOP CF'
      'on'
      '  CF.Cd_CFOP = O.Cd_CFOP'
      ''
      'where'
      '  O.Cd_Filial    = @Cd_Filial and'
      '  O.St_Orcamento = ''''9'''' and'
      '  O.Dt_Fatura   >= @Dt_Start and'
      '  O.Dt_Fatura    < @Dt_End'
      ''
      'union all'
      ''
      '-------------------- Sa'#237'das'
      'select'
      '  ''''2'''' as Fl_Origem, S.Cd_Filial, Cast( Null as Int ) as Nr_Orcamento, S.Nr_Saida,'
      '  S.Cd_Serie, S.Nr_Fatura, S.Dt_Emissao, S.Vl_Nota, 0.0 as Vl_Desconto,'
      '  0.0 as Vl_Custo, 0.0 as Pr_Custo, S.Vl_Produto, S.Vl_BaseICMS, S.Vl_ICMS,'
      '  S.Vl_IPI, S.Vl_Substituicao as Vl_STB, S.Pr_ICMS, E.Nr_Documento,'
      '  C.Sg_Estado, ''''0'''' as Fl_FormaPagto, S.Dt_Emissao as Dt_Fatura, S.Cd_CFOP,'
      '  Cast( Null as Int ) as Nr_ECF, 0.0 as Vl_Pedido_Frete, 0.0 as Pr_Desconto,'
      '  CF.Tp_CFOP, E.Fl_Contribuinte, S.Cd_ModeloFiscal'
      ''
      'from'
      '  Saida S'
      '  '
      'left join'
      '  Emitente E'
      'on'
      '  E.Cd_Emitente = S.Cd_Emitente'
      '  '
      'left join'
      '  Emitente_Endereco EE'
      'on'
      '  EE.Cd_Emitente = E.Cd_Emitente and'
      '  EE.Nr_Endereco = E.Nr_Endereco'
      '  '
      'left join'
      '  Cidade C'
      'on'
      '  C.Cd_Cidade = EE.Cd_Cidade'
      ''
      'left join'
      '  CFOP CF'
      'on'
      '  CF.Cd_CFOP = S.Cd_CFOP'
      ''
      'where'
      '  S.Cd_Filial   = @Cd_Filial and'
      '  S.St_Saida    = ''''2'''' and'
      '  S.Dt_Emissao >= @Dt_Start and'
      '  S.Dt_Emissao  < @Dt_End'
      ''
      'order by'
      '  Nr_Fatura'
    )
    Left = 696
    Top = 264
    object ADODsSaidaOLDfl_origem: TStringField
      FieldName = 'fl_origem'
      Size = 8190
    end
    object ADODsSaidaOLDcd_filial: TSmallintField
      FieldName = 'cd_filial'
    end
    object ADODsSaidaOLDnr_orcamento: TIntegerField
      FieldName = 'nr_orcamento'
    end
    object ADODsSaidaOLDnr_saida: TIntegerField
      FieldName = 'nr_saida'
    end
    object ADODsSaidaOLDcd_serie: TStringField
      FieldName = 'cd_serie'
      Size = 3
    end
    object ADODsSaidaOLDnr_fatura: TIntegerField
      FieldName = 'nr_fatura'
    end
    object ADODsSaidaOLDdt_saida: TDateTimeField
      FieldName = 'dt_saida'
    end
    object ADODsSaidaOLDvl_pedido: TBCDField
      FieldName = 'vl_pedido'
      Precision = 12
      Size = 2
    end
    object ADODsSaidaOLDvl_desconto: TBCDField
      FieldName = 'vl_desconto'
      Precision = 10
      Size = 5
    end
    object ADODsSaidaOLDvl_custo: TBCDField
      FieldName = 'vl_custo'
      Precision = 10
      Size = 5
    end
    object ADODsSaidaOLDpr_custo: TBCDField
      FieldName = 'pr_custo'
      Precision = 10
      Size = 5
    end
    object ADODsSaidaOLDvl_produto: TBCDField
      FieldName = 'vl_produto'
      Precision = 12
      Size = 2
    end
    object ADODsSaidaOLDvl_baseicms: TBCDField
      FieldName = 'vl_baseicms'
      Precision = 12
      Size = 2
    end
    object ADODsSaidaOLDvl_icms: TBCDField
      FieldName = 'vl_icms'
      Precision = 12
      Size = 2
    end
    object ADODsSaidaOLDvl_ipi: TBCDField
      FieldName = 'vl_ipi'
      Precision = 12
      Size = 2
    end
    object ADODsSaidaOLDvl_stb: TBCDField
      FieldName = 'vl_stb'
      Precision = 12
      Size = 2
    end
    object ADODsSaidaOLDpr_icms: TBCDField
      FieldName = 'pr_icms'
      Precision = 10
      Size = 5
    end
    object ADODsSaidaOLDnr_documento: TStringField
      FieldName = 'nr_documento'
      Size = 14
    end
    object ADODsSaidaOLDsg_estado: TStringField
      FieldName = 'sg_estado'
      FixedChar = True
      Size = 2
    end
    object ADODsSaidaOLDfl_formapagto: TStringField
      FieldName = 'fl_formapagto'
      FixedChar = True
      Size = 1
    end
    object ADODsSaidaOLDdt_fatura: TDateTimeField
      FieldName = 'dt_fatura'
    end
    object ADODsSaidaOLDcd_cfop: TStringField
      FieldName = 'cd_cfop'
      FixedChar = True
      Size = 4
    end
    object ADODsSaidaOLDVl_Total: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Vl_Total'
      Calculated = True
    end
    object ADODsSaidaOLDnr_ecf: TIntegerField
      FieldName = 'nr_ecf'
    end
    object ADODsSaidaOLDDp_Desconto: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Dp_Desconto'
      Calculated = True
    end
    object ADODsSaidaOLDvl_pedido_frete: TBCDField
      FieldName = 'vl_pedido_frete'
      Precision = 12
      Size = 6
    end
    object ADODsSaidaOLDpr_desconto: TBCDField
      FieldName = 'pr_desconto'
      Precision = 10
      Size = 5
    end
    object ADODsSaidaOLDtp_cfop: TStringField
      FieldName = 'tp_cfop'
      FixedChar = True
      Size = 1
    end
    object ADODsSaidaOLDfl_contribuinte: TStringField
      FieldName = 'fl_contribuinte'
      FixedChar = True
      Size = 1
    end
    object ADODsSaidaOLDCd_ModeloFiscal: TStringField
      FieldName = 'Cd_ModeloFiscal'
      ReadOnly = True
      Size = 2
    end
  end
  object DsSaida: TDataSource
    DataSet = ADODsSaidaOLD
    Left = 668
    Top = 264
  end
  object ADODsSaidaItemOLD: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    OnCalcFields = ADODsSaidaItemOLDCalcFields
    CommandText = 'select'#13#10'  OI.Nr_Item, OI.Sg_Unidade, OI.Qt_Item, OI.Vl_Unitario, P.Nm_Produto,'#13#10'  P.Cd_ClasFiscal, P.Pr_IPI, P.Nm_Abreviado, T.Pr_Contrib, T.Pr_NaoContrib, T.Cd_CST, T.Tp_Tributacao, OI.Cd_Produto'#13#10'  '#13#10'from'#13#10'  Orcamento_Item OI'#13#10'  '#13#10'inner join'#13#10'  Produto P'#13#10'on'#13#10'  P.Cd_Produto = OI.Cd_Produto and'#13#10'  P.Fl_Produto < ''''3''''                  -- Somente produto e servi'#231'o'#13#10'  '#13#10'inner join'#13#10'  Tributacao T'#13#10'on'#13#10'  T.Cd_Tributacao = P.Cd_Tributacao'#13#10'  '#13#10'where'#13#10'  OI.Cd_Filial     = :Cd_Filial and'#13#10'  OI.Nr_Orcamento  = :Nr_Orcamento and'#13#10'  OI.Fl_Confirmado = ''''1'''
    Parameters = <
      item
        Name = 'Cd_Filial'
        DataType = ftSmallint
        Size = -1
        Value = nil?
      end
      item
        Name = 'Nr_Orcamento'
        DataType = ftInteger
        Size = -1
        Value = nil?
      end>
    SQLOther0.Strings = (
      '-- Or'#231'amentos'
      'select'
      '  OI.Nr_Item, OI.Sg_Unidade, OI.Qt_Item, OI.Vl_Unitario, P.Nm_Produto,'
      '  P.Cd_ClasFiscal, P.Pr_IPI, P.Nm_Abreviado, T.Pr_Contrib, T.Pr_NaoContrib,'
      '  T.Cd_CST, T.Tp_Tributacao, OI.Cd_Produto'
      '  '
      'from'
      '  Orcamento_Item OI'
      '  '
      'inner join'
      '  Produto P'
      'on'
      '  P.Cd_Produto = OI.Cd_Produto and'
      '  P.Fl_Produto < ''''3''''                  -- Somente produto e servi'#231'o'
      '  '
      'inner join'
      '  Tributacao T'
      'on'
      '  T.Cd_Tributacao = P.Cd_Tributacao'
      '  '
      'where'
      '  OI.Cd_Filial     = :Cd_Filial and'
      '  OI.Nr_Orcamento  = :Nr_Orcamento and'
      '  OI.Fl_Confirmado = ''''1'''
      ''
      'union'
      ''
      'select'
      '  OC.Nr_Item, OC.Sg_Unidade, OC.Qt_Item * OI.Qt_Item as Qt_Item,'
      '  OC.Vl_Unitario, P.Nm_Produto, P.Cd_ClasFiscal, P.Pr_IPI, P.Nm_Abreviado,'
      '  T.Pr_Contrib, T.Pr_NaoContrib, T.Cd_CST, T.Tp_Tributacao, OC.Cd_Produto'
      ''
      'from'
      '  Orcamento_Item OI'
      ''
      'inner join'
      '  Orcamento_Conjunto OC'
      'on'
      '  OC.Cd_Filial    = OI.Cd_Filial and'
      '  OC.Nr_Orcamento = OI.Nr_Orcamento and'
      '  OC.Nr_Item      = OI.Nr_Item'
      '  '
      'inner join'
      '  Produto P'
      'on'
      '  P.Cd_Produto = OC.Cd_Produto    -- Somente conjunto'
      ''
      'inner join'
      '  Tributacao T'
      'on'
      '  T.Cd_Tributacao = P.Cd_Tributacao'
      ''
      'where'
      '  OI.Cd_Filial     = :Cd_Filial and'
      '  OI.Nr_Orcamento  = :Nr_Orcamento and'
      '  OI.Fl_Confirmado = ''''1'''
    )
    SQLOther1.Strings = (
      '-- Saidas'
      'select'
      '  SI.Nr_Item, SI.Sg_Unidade, SI.Qt_Item, SI.Vl_Unitario, P.Nm_Produto,'
      '  P.Cd_ClasFiscal, P.Pr_IPI, P.Nm_Abreviado, T.Pr_Contrib, T.Pr_NaoContrib,'
      '  T.Cd_CST, T.Tp_Tributacao, SI.Cd_Produto'
      ''
      'from'
      '  Saida_Item SI'
      ''
      'inner join'
      '  Produto P'
      'on'
      '  P.Cd_Produto = SI.Cd_Produto        -- Somente produto e servi'#231'o'
      ''
      'inner join'
      '  Tributacao T'
      'on'
      '  T.Cd_Tributacao = P.Cd_Tributacao'
      ''
      'where'
      '  SI.Cd_Filial = :Cd_Filial and'
      '  SI.Nr_Saida  = :Nr_Saida'
    )
    Left = 726
    Top = 264
    object ADODsSaidaItemOLDnr_item: TSmallintField
      FieldName = 'nr_item'
    end
    object ADODsSaidaItemOLDsg_unidade: TStringField
      FieldName = 'sg_unidade'
      FixedChar = True
      Size = 2
    end
    object ADODsSaidaItemOLDqt_item: TBCDField
      FieldName = 'qt_item'
      Precision = 12
      Size = 3
    end
    object ADODsSaidaItemOLDvl_unitario: TBCDField
      FieldName = 'vl_unitario'
      Precision = 12
      Size = 3
    end
    object ADODsSaidaItemOLDnm_produto: TStringField
      FieldName = 'nm_produto'
      Size = 120
    end
    object ADODsSaidaItemOLDcd_clasfiscal: TStringField
      FieldName = 'cd_clasfiscal'
      Size = 10
    end
    object ADODsSaidaItemOLDpr_ipi: TBCDField
      FieldName = 'pr_ipi'
      Precision = 9
      Size = 2
    end
    object ADODsSaidaItemOLDnm_abreviado: TStringField
      FieldName = 'nm_abreviado'
      Size = 40
    end
    object ADODsSaidaItemOLDpr_contrib: TBCDField
      FieldName = 'pr_contrib'
      Precision = 7
      Size = 2
    end
    object ADODsSaidaItemOLDpr_naocontrib: TBCDField
      FieldName = 'pr_naocontrib'
      Precision = 7
      Size = 2
    end
    object ADODsSaidaItemOLDcd_cst: TStringField
      FieldName = 'cd_cst'
      Size = 5
    end
    object ADODsSaidaItemOLDVl_Total: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Vl_Total'
      Calculated = True
    end
    object ADODsSaidaItemOLDVl_IPI: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Vl_IPI'
      Calculated = True
    end
    object ADODsSaidaItemOLDVl_BaseICMS: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Vl_BaseICMS'
      Calculated = True
    end
    object ADODsSaidaItemOLDVl_Base_STB: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Vl_Base_STB'
      Calculated = True
    end
    object ADODsSaidaItemOLDtp_tributacao: TStringField
      FieldName = 'tp_tributacao'
      FixedChar = True
      Size = 1
    end
    object ADODsSaidaItemOLDPr_Reducao: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Pr_Reducao'
      Calculated = True
    end
    object ADODsSaidaItemOLDVl_ICMS: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Vl_ICMS'
      Calculated = True
    end
    object ADODsSaidaItemOLDcd_produto: TIntegerField
      FieldName = 'cd_produto'
    end
  end
  object ADODsOrigem: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = '-------------------- Notas de Vendas - Orcamento (filtrar cancelado e faturado)'#13#10'declare'#13#10'  @Cd_Filial SmallInt,'#13#10'  @Dt_Start SmallDateTime,'#13#10'  @Dt_End SmallDateTime'#13#10#13#10'select'#13#10'  @Cd_Filial = :Cd_Filial,'#13#10'  @Dt_Start  = :Dt_Start,'#13#10'  @Dt_End    = :Dt_End'#13#10#13#10'--------------- Or'#231'amento - Faturados'#13#10'select'#13#10'  ''''1'''' as Fl_Origem, O.Nr_Orcamento as Nr_Origem, O.St_Orcamento as St_Origem'#13#10#13#10'from'#13#10'  Orcamento O'#13#10#13#10'inner join'#13#10'  CFOP CF'#13#10'on'#13#10'  CF.Cd_CFOP     = O.Cd_CFOP and'#13#10'  CF.Fl_Sintegra = ''''1'''#13#10#13#10'where'#13#10'  O.Cd_Filial    = @Cd_Filial and'#13#10'  O.Fl_Estoque   = ''''1'''' and'#13#10'  O.St_Orcamento = ''''9'''' and'#13#10'  O.Dt_Fatura   >= @Dt_Start and'#13#10'  O.Dt_Fatura    < @Dt_End and'#13#10'  O.Nr_Fatura    > 0'#13#10#13#10'--------------- Or'#231'amento - Cancelados'#13#10'union'#13#10'select'#13#10'  ''''1'''' as Fl_Origem, O.Nr_Orcamento as Nr_Origem, O.St_Orcamento as St_Origem'#13#10#13#10'from'#13#10'  Orcamento O'#13#10#13#10'inner join'#13#10'  CFOP CF'#13#10'on'#13#10'  CF.Cd_CFOP     = O.Cd_CFOP and'#13#10'  CF.Fl_Sintegra = ''''1'''#13#10#13#10'where'#13#10'  O.Cd_Filial    = @Cd_Filial and'#13#10'  O.Fl_Estoque   = ''''1'''' and'#13#10'  O.St_Orcamento = ''''2'''' and'#13#10'  O.Dt_Fatura   >= @Dt_Start and'#13#10'  O.Dt_Fatura    < @Dt_End and'#13#10'  O.Nr_Fatura    > 0'#13#10#13#10'-------------------- Notas de Sa'#237'das - Saida'#13#10'union'#13#10'select'#13#10'  ''''2'''' as Fl_Origem, S.Nr_Saida as Nr_Origem, S.St_Saida as St_Origem'#13#10#13#10'from'#13#10'  Saida S'#13#10#13#10'inner join'#13#10'  CFOP CF'#13#10'on'#13#10'  CF.Cd_CFOP     = S.Cd_CFOP and'#13#10'  CF.Fl_Sintegra = ''''1'''#13#10#13#10'where'#13#10'  S.Cd_Filial   = @Cd_Filial and'#13#10'  S.Fl_Estoque  = ''''1'''' and'#13#10'  S.Dt_Emissao >= @Dt_Start and'#13#10'  S.Dt_Emissao  < @Dt_End and'#13#10'  S.St_Saida   >= ''''2''''             ----- Somente Cancelado/Fechado'#13#10#13#10'-------------------- Notas de Entradas - Entrada'#13#10'union'#13#10#13#10'select'#13#10'  ''''3'''' as Fl_Origem, E.Nr_Entrada as Nr_Origem, E.St_Entrada as St_Origem'#13#10#13#10'from'#13#10'  Entrada E'#13#10#13#10'inner join'#13#10'  CFOP CF'#13#10'on'#13#10'  CF.Cd_CFOP     = E.Cd_CFOP and'#13#10'  CF.Fl_Sintegra = ''''1'''#13#10#13#10'where'#13#10'  E.Cd_Filial      = @Cd_Filial and'#13#10'  E.Fl_Estoque     = ''''1'''' and'#13#10'  E.Dt_Lancamento >= @Dt_Start and'#13#10'  E.Dt_Lancamento  < @Dt_End and'#13#10'  E.St_Entrada    >= ''''2''''             ----- Somente Cancelado/Fechado'
    Parameters = <
      item
        Name = 'Cd_Filial'
        DataType = ftSmallint
        Size = -1
        Value = nil?
      end
      item
        Name = 'Dt_Start'
        DataType = ftDateTime
        Size = -1
        Value = nil?
      end
      item
        Name = 'Dt_End'
        DataType = ftDateTime
        Size = -1
        Value = nil?
      end>
    SQLOther0.Strings = (
      '-------------------- Cabe'#231'alho'
      'declare'
      '  @Cd_Filial SmallInt,'
      '  @Dt_Start SmallDateTime,'
      '  @Dt_End SmallDateTime'
      ''
      'select'
      '  @Cd_Filial = :Cd_Filial,'
      '  @Dt_Start  = :Dt_Start,'
      '  @Dt_End    = :Dt_End'
      ''
      ''
    )
    SQLOther1.Strings = (
      '--------------- Or'#231'amento - Faturados'
      'select'
      '  ''''1'''' as Fl_Origem, O.Nr_Orcamento as Nr_Origem, O.St_Orcamento as St_Origem'
      ''
      'from'
      '  Orcamento O'
      ''
      'inner join'
      '  CFOP CF'
      'on'
      '  CF.Cd_CFOP     = O.Cd_CFOP and'
      '  CF.Fl_Sintegra = ''''1'''
      ''
      'where'
      '  O.Cd_Filial    = @Cd_Filial and'
      '  O.Fl_Estoque   = ''''1'''' and'
      '  O.St_Orcamento = ''''9'''' and'
      '  O.Dt_Fatura   >= @Dt_Start and'
      '  O.Dt_Fatura    < @Dt_End and'
      '  O.Nr_Fatura    > 0'
      ''
      '--------------- Or'#231'amento - Cancelados'
      'union'
      'select'
      '  ''''1'''' as Fl_Origem, O.Nr_Orcamento as Nr_Origem, O.St_Orcamento as St_Origem'
      ''
      'from'
      '  Orcamento O'
      ''
      'inner join'
      '  CFOP CF'
      'on'
      '  CF.Cd_CFOP     = O.Cd_CFOP and'
      '  CF.Fl_Sintegra = ''''1'''
      ''
      'where'
      '  O.Cd_Filial    = @Cd_Filial and'
      '  O.Fl_Estoque   = ''''1'''' and'
      '  O.St_Orcamento = ''''2'''' and'
      '  O.Dt_Fatura   >= @Dt_Start and'
      '  O.Dt_Fatura    < @Dt_End and'
      '  O.Nr_Fatura    > 0'
      ''
      '-------------------- Notas de Sa'#237'das - Saida'
      'union'
      'select'
      '  ''''2'''' as Fl_Origem, S.Nr_Saida as Nr_Origem, S.St_Saida as St_Origem'
      ''
      'from'
      '  Saida S'
      ''
      'inner join'
      '  CFOP CF'
      'on'
      '  CF.Cd_CFOP     = S.Cd_CFOP and'
      '  CF.Fl_Sintegra = ''''1'''
      ''
      'where'
      '  S.Cd_Filial   = @Cd_Filial and'
      '  S.Fl_Estoque  = ''''1'''' and'
      '  S.Dt_Emissao >= @Dt_Start and'
      '  S.Dt_Emissao  < @Dt_End and'
      '  S.St_Saida   >= ''''2''''             ----- Somente Cancelado/Fechado'
      ''
    )
    SQLOther2.Strings = (
      '-------------------- Notas de Entradas - Entrada'
      'select'
      '  ''''3'''' as Fl_Origem, E.Nr_Entrada as Nr_Origem, E.St_Entrada as St_Origem'
      ''
      'from'
      '  Entrada E'
      ''
      'inner join'
      '  CFOP CF'
      'on'
      '  CF.Cd_CFOP     = E.Cd_CFOP and'
      '  CF.Fl_Sintegra = ''''1'''
      ''
      'where'
      '  E.Cd_Filial      = @Cd_Filial and'
      '  E.Fl_Estoque     = ''''1'''' and'
      '  E.Dt_Lancamento >= @Dt_Start and'
      '  E.Dt_Lancamento  < @Dt_End and'
      '  E.St_Entrada    >= ''''2''''             ----- Somente Cancelado/Fechado'
    )
    Left = 457
    Top = 19
    object ADODsOrigemFl_Origem: TStringField
      FieldName = 'Fl_Origem'
      ReadOnly = True
      Size = 1
    end
    object ADODsOrigemNr_Origem: TIntegerField
      FieldName = 'Nr_Origem'
      ReadOnly = True
    end
    object ADODsOrigemSt_Origem: TStringField
      FieldName = 'St_Origem'
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
  end
  object ADODsProduto: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'if Object_ID( ''''TempDB..#ProdProsoft'''' ) is not null'#13#10'  drop table #ProdProsoft'#13#10#13#10'declare '#13#10'  @Cd_FIlial SmallInt,'#13#10'  @Dt_Start SmallDateTime,'#13#10'  @Dt_End SmallDateTime,'#13#10'  @Cd_Tabela VarChar( 10 )'#13#10#13#10'select'#13#10'  @Cd_Filial = :Cd_Filial,'#13#10'  @Dt_Start  = :Dt_Start,'#13#10'  @Dt_End    = :Dt_End,'#13#10'  @Cd_Tabela = :Cd_Tabela'#13#10#13#10'--------------- Produtos Alterados '#13#10'select'#13#10'  P.Cd_Produto, P.Nm_Produto, P.Nr_Sequencia, P.Cd_Grupo, G.Nm_Grupo,'#13#10'  P.Cd_SubGrupo, SG.Nm_SubGrupo, P.Cd_Classe, C.Nm_Classe, C.Im_Classe,'#13#10'  P.Cd_Localizacao, L.Ds_Localizacao, P.Cd_ClasFiscal, '#13#10'  P.Nr_Prazo, P.Sg_Estoque, P.Sg_Venda, P.Fl_Estrutura, P.Nm_Abreviado,'#13#10'  P.Sg_Estoque + '''' - '''' + UE.Ds_Unidade as Dp_Estoque,'#13#10'  P.Sg_Venda + '''' - '''' + UV.Ds_Unidade as Dp_Venda,'#13#10'  P.Fl_Ativo, P.Pr_Gerente, P.Pr_Vendedor, P.Qt_Est_Minimo, P.Fl_Perecivel,'#13#10'  P.Qt_Est_Maximo, P.Dt_Cadastro, P.Dt_Alteracao, P.Pr_IPI, P.Ps_Produto, P.Im_Produto,'#13#10'  P.Cd_Fabricante, P.Cd_Barra, P.Tp_Preco, P.Fl_ImgClasse,'#13#10'  P.Fl_Origem, P.Nr_Reg_Federal, P.Fl_Psicotropico, P.Fl_Lote, P.Fl_Produto,'#13#10'  P.Pr_Lucro, P.Pr_Comissao, P.Cd_Laboratorio, LB.Nm_Laboratorio, '#13#10'  P.Cd_Tributacao, T.Ds_Tributacao, PP.Vl_Venda, PP.Vl_Custo, PP.Vl_Promocao,'#13#10'  PP.Vl_Reposicao, P.Cd_Arredondamento, A.Ds_Arredondamento,'#13#10'  PP.Dt_Alteracao as Dt_AltPreco, P.Nr_MoldEspessura, P.Nr_MoldPerda, '#13#10'  G.Fl_Moldura, P.Vl_MVA, P.Cd_Baixa, PB.NM_Produto as Nm_Baixa,'#13#10#13#10'  T.Pr_Contrib, T.Cd_CST, T.Tp_Tributacao, P.Cd_CEST'#13#10#13#10'into'#13#10'  #ProdProsoft'#13#10#13#10'from'#13#10'  Produto P'#13#10#13#10'inner join'#13#10'  Grupo G'#13#10'on'#13#10'  G.Cd_Grupo = P.Cd_Grupo'#13#10#13#10'inner join'#13#10'  SubGrupo SG'#13#10'on'#13#10'  SG.Cd_SubGrupo = P.Cd_SubGrupo'#13#10#13#10'inner join'#13#10'  Classe C'#13#10'on'#13#10'  C.Cd_Classe = P.Cd_Classe'#13#10#13#10'inner join'#13#10'  Localizacao L'#13#10'on'#13#10'  L.Cd_Localizacao = P.Cd_Localizacao'#13#10#13#10'inner join'#13#10'  Unidade UE'#13#10'on'#13#10'  UE.Sg_Unidade = P.Sg_Estoque'#13#10#13#10'inner join'#13#10'  Unidade UV'#13#10'on'#13#10'  UV.Sg_Unidade = P.Sg_Venda'#13#10#13#10'inner join'#13#10'  Tributacao T'#13#10'on'#13#10'  T.Cd_Tributacao = P.Cd_Tributacao'#13#10#13#10'left join'#13#10'  Laboratorio LB'#13#10'on'#13#10'  LB.Cd_Laboratorio = P.Cd_Laboratorio'#13#10#13#10'left join'#13#10'  Produto_Preco PP'#13#10'on'#13#10'  PP.Cd_Tabela  = @Cd_Tabela and'#13#10'  PP.Cd_Produto = P.Cd_Produto'#13#10#13#10'left join'#13#10'  Arredondamento A'#13#10'on'#13#10'  A.Cd_Arredondamento = P.Cd_Arredondamento'#13#10#13#10'left join'#13#10'  Produto PB'#13#10'on'#13#10'  PB.Cd_Produto = P.Cd_Baixa'#13#10#13#10'where'#13#10'  P.Dt_Alteracao >= @Dt_Start and'#13#10'  P.Dt_Alteracao  < @Dt_End'#13#10#13#10'--------------- Produtos em entrada'#13#10'insert into #ProdProsoft'#13#10'select'#13#10'  P.Cd_Produto, P.Nm_Produto, P.Nr_Sequencia, P.Cd_Grupo, G.Nm_Grupo,'#13#10'  P.Cd_SubGrupo, SG.Nm_SubGrupo, P.Cd_Classe, C.Nm_Classe, C.Im_Classe,'#13#10'  P.Cd_Localizacao, L.Ds_Localizacao, P.Cd_ClasFiscal, '#13#10'  P.Nr_Prazo, P.Sg_Estoque, P.Sg_Venda, P.Fl_Estrutura, P.Nm_Abreviado,'#13#10'  P.Sg_Estoque + '''' - '''' + UE.Ds_Unidade as Dp_Estoque,'#13#10'  P.Sg_Venda + '''' - '''' + UV.Ds_Unidade as Dp_Venda,'#13#10'  P.Fl_Ativo, P.Pr_Gerente, P.Pr_Vendedor, P.Qt_Est_Minimo, P.Fl_Perecivel,'#13#10'  P.Qt_Est_Maximo, P.Dt_Cadastro, P.Dt_Alteracao, P.Pr_IPI, P.Ps_Produto, P.Im_Produto,'#13#10'  P.Cd_Fabricante, P.Cd_Barra, P.Tp_Preco, P.Fl_ImgClasse,'#13#10'  P.Fl_Origem, P.Nr_Reg_Federal, P.Fl_Psicotropico, P.Fl_Lote, P.Fl_Produto,'#13#10'  P.Pr_Lucro, P.Pr_Comissao, P.Cd_Laboratorio, LB.Nm_Laboratorio, '#13#10'  P.Cd_Tributacao, T.Ds_Tributacao, PP.Vl_Venda, PP.Vl_Custo, PP.Vl_Promocao,'#13#10'  PP.Vl_Reposicao, P.Cd_Arredondamento, A.Ds_Arredondamento,'#13#10'  PP.Dt_Alteracao as Dt_AltPreco, P.Nr_MoldEspessura, P.Nr_MoldPerda, '#13#10'  G.Fl_Moldura, P.Vl_MVA, P.Cd_Baixa, PB.NM_Produto as Nm_Baixa,'#13#10#13#10'  T.Pr_Contrib, T.Cd_CST, T.Tp_Tributacao, P.Cd_CEST'#13#10#13#10'from'#13#10'  Entrada E'#13#10#13#10'inner join'#13#10'  Entrada_Item EI'#13#10'on'#13#10'  EI.Cd_Filial  = E.Cd_Filial and'#13#10'  EI.Nr_Entrada = E.Nr_Entrada'#13#10#13#10'inner join'#13#10'  Produto P'#13#10'on'#13#10'  P.Cd_Produto = EI.Cd_Produto '#13#10#13#10'inner join'#13#10'  Grupo G'#13#10'on'#13#10'  G.Cd_Grupo = P.Cd_Grupo'#13#10#13#10'inner join'#13#10'  SubGrupo SG'#13#10'on'#13#10'  SG.Cd_SubGrupo = P.Cd_SubGrupo'#13#10#13#10'inner join'#13#10'  Classe C'#13#10'on'#13#10'  C.Cd_Classe = P.Cd_Classe'#13#10#13#10'inner join'#13#10'  Localizacao L'#13#10'on'#13#10'  L.Cd_Localizacao = P.Cd_Localizacao'#13#10#13#10'inner join'#13#10'  Unidade UE'#13#10'on'#13#10'  UE.Sg_Unidade = P.Sg_Estoque'#13#10#13#10'inner join'#13#10'  Unidade UV'#13#10'on'#13#10'  UV.Sg_Unidade = P.Sg_Venda'#13#10#13#10'inner join'#13#10'  Tributacao T'#13#10'on'#13#10'  T.Cd_Tributacao = P.Cd_Tributacao'#13#10#13#10'left join'#13#10'  Laboratorio LB'#13#10'on'#13#10'  LB.Cd_Laboratorio = P.Cd_Laboratorio'#13#10#13#10'left join'#13#10'  Produto_Preco PP'#13#10'on'#13#10'  PP.Cd_Tabela  = @Cd_Tabela and'#13#10'  PP.Cd_Produto = P.Cd_Produto'#13#10#13#10'left join'#13#10'  Arredondamento A'#13#10'on'#13#10'  A.Cd_Arredondamento = P.Cd_Arredondamento'#13#10#13#10'left join'#13#10'  Produto PB'#13#10'on'#13#10'  PB.Cd_Produto = P.Cd_Baixa'#13#10#13#10'where'#13#10'  E.Cd_Filial      = @Cd_Filial and'#13#10'  E.Dt_Lancamento >= @Dt_Start and'#13#10'  E.Dt_Lancamento  < @Dt_End'#13#10#13#10'--------------- Produtos em Saida'#13#10'insert into #ProdProsoft'#13#10'select'#13#10'  P.Cd_Produto, P.Nm_Produto, P.Nr_Sequencia, P.Cd_Grupo, G.Nm_Grupo,'#13#10'  P.Cd_SubGrupo, SG.Nm_SubGrupo, P.Cd_Classe, C.Nm_Classe, C.Im_Classe,'#13#10'  P.Cd_Localizacao, L.Ds_Localizacao, P.Cd_ClasFiscal, '#13#10'  P.Nr_Prazo, P.Sg_Estoque, P.Sg_Venda, P.Fl_Estrutura, P.Nm_Abreviado,'#13#10'  P.Sg_Estoque + '''' - '''' + UE.Ds_Unidade as Dp_Estoque,'#13#10'  P.Sg_Venda + '''' - '''' + UV.Ds_Unidade as Dp_Venda,'#13#10'  P.Fl_Ativo, P.Pr_Gerente, P.Pr_Vendedor, P.Qt_Est_Minimo, P.Fl_Perecivel,'#13#10'  P.Qt_Est_Maximo, P.Dt_Cadastro, P.Dt_Alteracao, P.Pr_IPI, P.Ps_Produto, P.Im_Produto,'#13#10'  P.Cd_Fabricante, P.Cd_Barra, P.Tp_Preco, P.Fl_ImgClasse,'#13#10'  P.Fl_Origem, P.Nr_Reg_Federal, P.Fl_Psicotropico, P.Fl_Lote, P.Fl_Produto,'#13#10'  P.Pr_Lucro, P.Pr_Comissao, P.Cd_Laboratorio, LB.Nm_Laboratorio, '#13#10'  P.Cd_Tributacao, T.Ds_Tributacao, PP.Vl_Venda, PP.Vl_Custo, PP.Vl_Promocao,'#13#10'  PP.Vl_Reposicao, P.Cd_Arredondamento, A.Ds_Arredondamento,'#13#10'  PP.Dt_Alteracao as Dt_AltPreco, P.Nr_MoldEspessura, P.Nr_MoldPerda, '#13#10'  G.Fl_Moldura, P.Vl_MVA, P.Cd_Baixa, PB.NM_Produto as Nm_Baixa,'#13#10#13#10'  T.Pr_Contrib, T.Cd_CST, T.Tp_Tributacao, P.Cd_CEST'#13#10#13#10'from'#13#10'  Saida S'#13#10#13#10'inner join'#13#10'  Saida_Item SI'#13#10'on'#13#10'  SI.Cd_Filial = S.Cd_Filial and'#13#10'  SI.Nr_Saida  = S.Nr_Saida'#13#10#13#10'inner join'#13#10'  Produto P'#13#10'on'#13#10'  P.Cd_Produto = SI.Cd_Produto '#13#10#13#10'inner join'#13#10'  Grupo G'#13#10'on'#13#10'  G.Cd_Grupo = P.Cd_Grupo'#13#10#13#10'inner join'#13#10'  SubGrupo SG'#13#10'on'#13#10'  SG.Cd_SubGrupo = P.Cd_SubGrupo'#13#10#13#10'inner join'#13#10'  Classe C'#13#10'on'#13#10'  C.Cd_Classe = P.Cd_Classe'#13#10#13#10'inner join'#13#10'  Localizacao L'#13#10'on'#13#10'  L.Cd_Localizacao = P.Cd_Localizacao'#13#10#13#10'inner join'#13#10'  Unidade UE'#13#10'on'#13#10'  UE.Sg_Unidade = P.Sg_Estoque'#13#10#13#10'inner join'#13#10'  Unidade UV'#13#10'on'#13#10'  UV.Sg_Unidade = P.Sg_Venda'#13#10#13#10'inner join'#13#10'  Tributacao T'#13#10'on'#13#10'  T.Cd_Tributacao = P.Cd_Tributacao'#13#10#13#10'left join'#13#10'  Laboratorio LB'#13#10'on'#13#10'  LB.Cd_Laboratorio = P.Cd_Laboratorio'#13#10#13#10'left join'#13#10'  Produto_Preco PP'#13#10'on'#13#10'  PP.Cd_Tabela  = @Cd_Tabela and'#13#10'  PP.Cd_Produto = P.Cd_Produto'#13#10#13#10'left join'#13#10'  Arredondamento A'#13#10'on'#13#10'  A.Cd_Arredondamento = P.Cd_Arredondamento'#13#10#13#10'left join'#13#10'  Produto PB'#13#10'on'#13#10'  PB.Cd_Produto = P.Cd_Baixa'#13#10#13#10'where'#13#10'  S.Cd_Filial      = @Cd_Filial and'#13#10'  S.Dt_Lancamento >= @Dt_Start and'#13#10'  S.Dt_Lancamento  < @Dt_End'#13#10#13#10'select '#13#10'  Cd_Produto, Nm_Produto, Nr_Sequencia, Cd_Grupo, Nm_Grupo,'#13#10'  Cd_SubGrupo, Nm_SubGrupo, Cd_Classe, Nm_Classe, Im_Classe,'#13#10'  Cd_Localizacao, Ds_Localizacao, Cd_ClasFiscal, '#13#10'  Nr_Prazo, Sg_Estoque, Sg_Venda, Fl_Estrutura, Nm_Abreviado,'#13#10'  Dp_Estoque,'#13#10'  Dp_Venda,'#13#10'  Fl_Ativo, Pr_Gerente, Pr_Vendedor, Qt_Est_Minimo, Fl_Perecivel,'#13#10'  Qt_Est_Maximo, Dt_Cadastro, Dt_Alteracao, Pr_IPI, Ps_Produto, Im_Produto,'#13#10'  Cd_Fabricante, Cd_Barra, Tp_Preco, Fl_ImgClasse,'#13#10'  Fl_Origem, Nr_Reg_Federal, Fl_Psicotropico, Fl_Lote, Fl_Produto,'#13#10'  Pr_Lucro, Pr_Comissao, Cd_Laboratorio, Nm_Laboratorio, '#13#10'  Cd_Tributacao, Ds_Tributacao, Vl_Venda, Vl_Custo, Vl_Promocao,'#13#10'  Vl_Reposicao, Cd_Arredondamento, Ds_Arredondamento,'#13#10'  Dt_AltPreco, Nr_MoldEspessura, Nr_MoldPerda, '#13#10'  Fl_Moldura, Vl_MVA, Cd_Baixa, Nm_Baixa,'#13#10#13#10'  Pr_Contrib, Cd_CST, Tp_Tributacao, Cd_CEST'#13#10'  '#13#10'from '#13#10'  #ProdProsoft'#13#10
    Parameters = <
      item
        Name = 'Cd_Filial'
        DataType = ftSmallint
        Size = -1
        Value = 1
      end
      item
        Name = 'Dt_Start'
        DataType = ftDateTime
        Size = -1
        Value = 36526.0
      end
      item
        Name = 'Dt_End'
        DataType = ftDateTime
        Size = -1
        Value = 42216.0
      end
      item
        Name = 'Cd_Tabela'
        DataType = ftString
        Size = 6
        Value = 'PADRAO'
      end>
    Left = 448
    Top = 264
    object ADODsProdutoCd_Produto: TIntegerField
      FieldName = 'Cd_Produto'
    end
    object ADODsProdutoNm_Produto: TStringField
      FieldName = 'Nm_Produto'
      Size = 120
    end
    object ADODsProdutoNr_Sequencia: TIntegerField
      FieldName = 'Nr_Sequencia'
    end
    object ADODsProdutoCd_Grupo: TSmallintField
      FieldName = 'Cd_Grupo'
    end
    object ADODsProdutoNm_Grupo: TStringField
      FieldName = 'Nm_Grupo'
      Size = 50
    end
    object ADODsProdutoCd_SubGrupo: TSmallintField
      FieldName = 'Cd_SubGrupo'
    end
    object ADODsProdutoNm_SubGrupo: TStringField
      FieldName = 'Nm_SubGrupo'
      Size = 50
    end
    object ADODsProdutoCd_Classe: TSmallintField
      FieldName = 'Cd_Classe'
    end
    object ADODsProdutoNm_Classe: TStringField
      FieldName = 'Nm_Classe'
      Size = 50
    end
    object ADODsProdutoIm_Classe: TBlobField
      FieldName = 'Im_Classe'
    end
    object ADODsProdutoCd_Localizacao: TSmallintField
      FieldName = 'Cd_Localizacao'
    end
    object ADODsProdutoDs_Localizacao: TStringField
      FieldName = 'Ds_Localizacao'
      Size = 50
    end
    object ADODsProdutoCd_ClasFiscal: TStringField
      FieldName = 'Cd_ClasFiscal'
      Size = 10
    end
    object ADODsProdutoNr_Prazo: TSmallintField
      FieldName = 'Nr_Prazo'
    end
    object ADODsProdutoSg_Estoque: TStringField
      FieldName = 'Sg_Estoque'
      FixedChar = True
      Size = 2
    end
    object ADODsProdutoSg_Venda: TStringField
      FieldName = 'Sg_Venda'
      FixedChar = True
      Size = 2
    end
    object ADODsProdutoFl_Estrutura: TStringField
      FieldName = 'Fl_Estrutura'
      FixedChar = True
      Size = 1
    end
    object ADODsProdutoNm_Abreviado: TStringField
      FieldName = 'Nm_Abreviado'
      Size = 40
    end
    object ADODsProdutoDp_Estoque: TStringField
      FieldName = 'Dp_Estoque'
      ReadOnly = True
      Size = 35
    end
    object ADODsProdutoDp_Venda: TStringField
      FieldName = 'Dp_Venda'
      ReadOnly = True
      Size = 35
    end
    object ADODsProdutoFl_Ativo: TStringField
      FieldName = 'Fl_Ativo'
      FixedChar = True
      Size = 1
    end
    object ADODsProdutoPr_Gerente: TBCDField
      FieldName = 'Pr_Gerente'
      Precision = 9
      Size = 2
    end
    object ADODsProdutoPr_Vendedor: TBCDField
      FieldName = 'Pr_Vendedor'
      Precision = 9
      Size = 2
    end
    object ADODsProdutoQt_Est_Minimo: TBCDField
      FieldName = 'Qt_Est_Minimo'
      Precision = 18
      Size = 3
    end
    object ADODsProdutoFl_Perecivel: TStringField
      FieldName = 'Fl_Perecivel'
      FixedChar = True
      Size = 1
    end
    object ADODsProdutoQt_Est_Maximo: TBCDField
      FieldName = 'Qt_Est_Maximo'
      Precision = 18
      Size = 3
    end
    object ADODsProdutoDt_Cadastro: TDateTimeField
      FieldName = 'Dt_Cadastro'
    end
    object ADODsProdutoDt_Alteracao: TDateTimeField
      FieldName = 'Dt_Alteracao'
    end
    object ADODsProdutoPr_IPI: TBCDField
      FieldName = 'Pr_IPI'
      Precision = 9
      Size = 2
    end
    object ADODsProdutoPs_Produto: TBCDField
      FieldName = 'Ps_Produto'
      Precision = 18
      Size = 3
    end
    object ADODsProdutoIm_Produto: TBlobField
      FieldName = 'Im_Produto'
    end
    object ADODsProdutoCd_Fabricante: TStringField
      FieldName = 'Cd_Fabricante'
    end
    object ADODsProdutoCd_Barra: TStringField
      FieldName = 'Cd_Barra'
    end
    object ADODsProdutoTp_Preco: TStringField
      FieldName = 'Tp_Preco'
      FixedChar = True
      Size = 1
    end
    object ADODsProdutoFl_ImgClasse: TStringField
      FieldName = 'Fl_ImgClasse'
      FixedChar = True
      Size = 1
    end
    object ADODsProdutoFl_Origem: TStringField
      FieldName = 'Fl_Origem'
      FixedChar = True
      Size = 1
    end
    object ADODsProdutoNr_Reg_Federal: TStringField
      FieldName = 'Nr_Reg_Federal'
      Size = 30
    end
    object ADODsProdutoFl_Psicotropico: TStringField
      FieldName = 'Fl_Psicotropico'
      FixedChar = True
      Size = 1
    end
    object ADODsProdutoFl_Lote: TStringField
      FieldName = 'Fl_Lote'
      FixedChar = True
      Size = 1
    end
    object ADODsProdutoFl_Produto: TStringField
      FieldName = 'Fl_Produto'
      FixedChar = True
      Size = 1
    end
    object ADODsProdutoPr_Lucro: TBCDField
      FieldName = 'Pr_Lucro'
      Precision = 7
      Size = 2
    end
    object ADODsProdutoPr_Comissao: TBCDField
      FieldName = 'Pr_Comissao'
      Precision = 7
      Size = 2
    end
    object ADODsProdutoCd_Laboratorio: TSmallintField
      FieldName = 'Cd_Laboratorio'
    end
    object ADODsProdutoNm_Laboratorio: TStringField
      FieldName = 'Nm_Laboratorio'
      Size = 50
    end
    object ADODsProdutoCd_Tributacao: TSmallintField
      FieldName = 'Cd_Tributacao'
    end
    object ADODsProdutoDs_Tributacao: TStringField
      FieldName = 'Ds_Tributacao'
      Size = 60
    end
    object ADODsProdutoVl_Venda: TBCDField
      FieldName = 'Vl_Venda'
      Precision = 12
      Size = 5
    end
    object ADODsProdutoVl_Custo: TBCDField
      FieldName = 'Vl_Custo'
      Precision = 12
      Size = 5
    end
    object ADODsProdutoVl_Promocao: TBCDField
      FieldName = 'Vl_Promocao'
      Precision = 12
      Size = 3
    end
    object ADODsProdutoVl_Reposicao: TBCDField
      FieldName = 'Vl_Reposicao'
      Precision = 12
      Size = 5
    end
    object ADODsProdutoCd_Arredondamento: TSmallintField
      FieldName = 'Cd_Arredondamento'
    end
    object ADODsProdutoDs_Arredondamento: TStringField
      FieldName = 'Ds_Arredondamento'
      Size = 30
    end
    object ADODsProdutoDt_AltPreco: TDateTimeField
      FieldName = 'Dt_AltPreco'
    end
    object ADODsProdutoNr_MoldEspessura: TBCDField
      FieldName = 'Nr_MoldEspessura'
      Precision = 9
      Size = 2
    end
    object ADODsProdutoNr_MoldPerda: TBCDField
      FieldName = 'Nr_MoldPerda'
      Precision = 9
      Size = 2
    end
    object ADODsProdutoFl_Moldura: TStringField
      FieldName = 'Fl_Moldura'
      FixedChar = True
      Size = 1
    end
    object ADODsProdutoVl_MVA: TBCDField
      FieldName = 'Vl_MVA'
      Precision = 12
      Size = 3
    end
    object ADODsProdutoCd_Baixa: TIntegerField
      FieldName = 'Cd_Baixa'
    end
    object ADODsProdutoNm_Baixa: TStringField
      FieldName = 'Nm_Baixa'
      Size = 120
    end
    object ADODsProdutoPr_Contrib: TBCDField
      FieldName = 'Pr_Contrib'
      Precision = 7
      Size = 2
    end
    object ADODsProdutoCd_CST: TStringField
      FieldName = 'Cd_CST'
      Size = 5
    end
    object ADODsProdutoTp_Tributacao: TStringField
      FieldName = 'Tp_Tributacao'
      FixedChar = True
      Size = 1
    end
    object ADODsProdutoCd_CEST: TStringField
      FieldName = 'Cd_CEST'
      Size = 7
    end
  end
  object ADODsEntradaItem: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'select'#13#10'  Nr_Documento, Cd_ModeloFiscal, Cd_Serie, Nr_Fatura, Cd_CFOPProduto,'#13#10'  Cd_CST, Cd_Produto, Dp_Produto, Qt_Imprimir, Vl_Total_Item, Vl_Base_ICMS_Item,'#13#10'  Vl_DescItem, Fl_Imposto, Dt_Fatura, Vl_Unitario, Dt_Saida,'#13#10'  Vl_Substituicao = Vl_ST_Item,'#13#10#13#10'  Vl_IPI_Item,'#13#10'  Pr_Aliquota ='#13#10'    ( case when ( Vl_ICMS_Item > 0.0 ) and ( Cd_CST <> ''''060'''' ) then Pr_Item_ICMS_Real end ),'#13#10#13#10'  Pr_ICMS ='#13#10'    ( case when ( Cd_CST <> ''''060'''' ) then Pr_ICMS end ),'#13#10#13#10'  Cd_ClasFiscal, Sg_Unidade, Vl_BaseST_Item, Nr_Item, Pr_Reducao,'#13#10'  Pr_IPI, Vl_ICMS_Item, Tp_Tributacao,'#13#10#13#10'  Vl_Isento = ('#13#10'    ( case'#13#10'        when ( Cd_CST in ( ''''040'''', ''''041'''', ''''030'''', ''''110'''', ''''210'''', ''''070'''', ''''170'''', ''''270'''', ''''520'''' ) ) or ( ( Cd_CST = ''''010'''' ) and ( Fl_Origem <> ''''3'''' ) and ( Pr_Contrib > 0 ) ) then'#13#10'          ( Vl_Total_Item - ( case when Vl_Total_Item > 0.0 and Vl_DescItem is not null then Vl_DescItem else 0.0 end ) + Vl_IPI_Item +  Vl_DespesaItem + Vl_SeguroItem + Vl_FreteItem )'#13#10#13#10#9'      else'#13#10'          0.0'#13#10'      end'#13#10'    ) +'#13#10#13#10'    -------------------- No caso de redu'#231#227'o a diferen'#231'a da base de calculo compoe o Isento - 31/10/2012'#13#10'    ( case'#13#10'        when ( Cd_CST in ( ''''020'''', ''''520'''' ) ) then'#13#10'          ( Vl_Total_Item - ( case when Vl_Total_Item > 0.0 and Vl_DescItem is not null then Vl_DescItem else 0.0 end ) + Vl_IPI_Item +  Vl_DespesaItem + Vl_SeguroItem + Vl_FreteItem - Vl_Base_ICMS_Item )'#13#10'        else'#13#10'          0.0'#13#10'      end'#13#10'    ) ),'#13#10#13#10'  Vl_Outras ='#13#10'    case'#13#10'      when Cd_CST in ( ''''020'''', ''''000'''' ) then 0.0'#13#10'      when'#13#10'        ( Cd_CST in ( ''''060'''', ''''050'''', ''''090'''', ''''102'''', ''''160'''', ''''260'''', ''''290'''', ''''010'''', ''''360'''' ) or'#13#10'        ( Vl_ICMS_Item = 0.0 and Cd_CST = ''''000'''' ) ) or'#13#10'        ( Cd_CST = ''''100'''' and Vl_ICMS_Item = 0.0 ) or'#13#10'        ( Cd_CST = ''''500'''' and Cd_CFOP in ( ''''5405'''', ''''1403'''' ) ) or'#13#10'        ( Cd_CST in ( ''''101'''', ''''040'''' ) and Cd_CFOP in ( ''''1102'''' ) ) then'#13#10'        ( Vl_Total_Item - ( case when Vl_Total_Item > 0.0 and Vl_DescItem is not null then Vl_DescItem else 0.0 end ) + Vl_IPI_Item +  Vl_DespesaItem + Vl_SeguroItem + Vl_FreteItem )'#13#10#13#10'    end'#13#10#13#10'from'#13#10'  ##NotaProcessa'#13#10#13#10'where'#13#10'  Id_Processo = @@SPID and'#13#10'  Fl_Origem   = ''''3'''' and'#13#10'  -------------------------------------------------------------- Cd_Produto > 0 and'#13#10'  St_Nota = ''''N'''' and'#13#10'  ('#13#10'  Cd_ModeloFiscal = ''''01'''' or    --------------- Modelo 2 - Consumidor final'#13#10'  ( Cd_ModeloFiscal > ''''02'''' and Cd_ModeloFiscal < ''''07'''' ) or'#13#10'  ( Cd_ModeloFiscal > ''''11'''' and Cd_ModeloFiscal < ''''58'''' )'#13#10'  ) and'#13#10'  not Cd_CFOPProduto in ( ''''5929'''', ''''6929'''' )  '#13#10#13#10'order by'#13#10'  Nr_Documento, Cd_Serie, Nr_Fatura, Cd_CST'
    Parameters = <>
    Left = 625
    Top = 263
    object ADODsEntradaItemNr_Documento: TStringField
      FieldName = 'Nr_Documento'
      Size = 14
    end
    object ADODsEntradaItemCd_ModeloFiscal: TStringField
      FieldName = 'Cd_ModeloFiscal'
      FixedChar = True
      Size = 2
    end
    object ADODsEntradaItemCd_Serie: TStringField
      FieldName = 'Cd_Serie'
      Size = 3
    end
    object ADODsEntradaItemNr_Fatura: TIntegerField
      FieldName = 'Nr_Fatura'
    end
    object ADODsEntradaItemCd_CFOPProduto: TStringField
      FieldName = 'Cd_CFOPProduto'
      Size = 4
    end
    object ADODsEntradaItemCd_CST: TStringField
      FieldName = 'Cd_CST'
      Size = 254
    end
    object ADODsEntradaItemCd_Produto: TIntegerField
      FieldName = 'Cd_Produto'
    end
    object ADODsEntradaItemDp_Produto: TStringField
      FieldName = 'Dp_Produto'
      Size = 200
    end
    object ADODsEntradaItemQt_Imprimir: TBCDField
      FieldName = 'Qt_Imprimir'
      Precision = 12
      Size = 3
    end
    object ADODsEntradaItemVl_Total_Item: TBCDField
      FieldName = 'Vl_Total_Item'
      Precision = 12
      Size = 3
    end
    object ADODsEntradaItemVl_Base_ICMS_Item: TBCDField
      FieldName = 'Vl_Base_ICMS_Item'
      Precision = 12
      Size = 3
    end
    object ADODsEntradaItemVl_Substituicao: TBCDField
      FieldName = 'Vl_Substituicao'
      ReadOnly = True
      Precision = 12
      Size = 3
    end
    object ADODsEntradaItemVl_IPI_Item: TBCDField
      FieldName = 'Vl_IPI_Item'
      Precision = 12
      Size = 3
    end
    object ADODsEntradaItemPr_Aliquota: TBCDField
      FieldName = 'Pr_Aliquota'
      ReadOnly = True
      Precision = 12
      Size = 2
    end
    object ADODsEntradaItemVl_DescItem: TBCDField
      FieldName = 'Vl_DescItem'
      Precision = 12
      Size = 3
    end
    object ADODsEntradaItemFl_Imposto: TStringField
      FieldName = 'Fl_Imposto'
      FixedChar = True
      Size = 1
    end
    object ADODsEntradaItemSg_Unidade: TStringField
      FieldName = 'Sg_Unidade'
      FixedChar = True
      Size = 2
    end
    object ADODsEntradaItemPr_IPI: TBCDField
      FieldName = 'Pr_IPI'
      Precision = 12
      Size = 2
    end
    object ADODsEntradaItemVl_Unitario: TBCDField
      FieldName = 'Vl_Unitario'
      Precision = 12
      Size = 3
    end
    object ADODsEntradaItemCd_ClasFiscal: TStringField
      FieldName = 'Cd_ClasFiscal'
      Size = 10
    end
    object ADODsEntradaItemVl_BaseST_Item: TBCDField
      FieldName = 'Vl_BaseST_Item'
      Precision = 12
      Size = 3
    end
    object ADODsEntradaItemNr_Item: TSmallintField
      FieldName = 'Nr_Item'
    end
    object ADODsEntradaItemVl_ICMS_Item: TBCDField
      FieldName = 'Vl_ICMS_Item'
      Precision = 12
      Size = 3
    end
    object ADODsEntradaItemVl_Outras: TBCDField
      FieldName = 'Vl_Outras'
      ReadOnly = True
      Precision = 17
      Size = 3
    end
    object ADODsEntradaItemVl_Isento: TBCDField
      FieldName = 'Vl_Isento'
      ReadOnly = True
      Precision = 19
      Size = 3
    end
    object ADODsEntradaItemDt_Fatura: TDateTimeField
      FieldName = 'Dt_Fatura'
    end
    object ADODsEntradaItemDt_Saida: TDateTimeField
      FieldName = 'Dt_Saida'
    end
    object ADODsEntradaItemPr_ICMS: TBCDField
      FieldName = 'Pr_ICMS'
      ReadOnly = True
      Precision = 12
      Size = 2
    end
    object ADODsEntradaItemPr_Reducao: TBCDField
      FieldName = 'Pr_Reducao'
      Precision = 12
      Size = 2
    end
    object ADODsEntradaItemTp_Tributacao: TStringField
      FieldName = 'Tp_Tributacao'
      FixedChar = True
      Size = 1
    end
  end
  object ADOCmdExporta: TMultADOCMD
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLOther0.Strings = (
      '--------------- Notas sem item coloca valor para item'
      'update'
      '  ##NotaProcessa'
      ''
      'set'
      '  Nr_Item       = 1,'
      '  Cd_CST        = ''''090'''','
      '  Qt_Item       = 1,'
      '  Vl_Unitario   = Vl_Nota,'
      '  Vl_Total_Item = Vl_Nota,'
      '  Qt_Imprimir   = 1'
      ''
      'where'
      '  Nr_Item = 0'
    )
    Left = 544
    Top = 240
  end
  object ADODsTerceiros: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  E.Cd_Emitente, E.Nm_Emitente, E.Nm_Fantasia, E.Dt_Cadastro, E.Dt_Alteracao,'#13#10'  E.Tp_Pessoa, E.Nr_Documento, E.Nr_Insc_Estadual, E.Vl_Limite_Credito,'#13#10'  E.Cd_Credito, EC.Nm_Emitente as Nm_Credito, E.Fl_Contribuinte, E.Ds_EMail, E.Ds_Site,'#13#10'  E.Dt_Nascimento, E.Nr_Identidade, E.Nm_Orgao_emissor, E.Dt_Emissao_ID, '#13#10'  E.Sg_Estado_Emissor, E.Nr_Endereco, E.Nr_EndCobranca, E.Fl_Pagamento, E.Nr_Pagamento,'#13#10'  E.Nr_Insc_Municipal, E.Dt_Atividade, E.Ds_EMailCob, E.Pr_Desconto, E.Ds_EMailNFe,'#13#10#13#10'  EE.Ds_Titulo, EE.Ds_Endereco, EE.Nm_Bairro, EE.Ds_Complemento, EE.Nr_CEP, EE.Cd_Cidade,'#13#10'  C.Nm_Cidade, C.Cd_IBGE, C.Cd_Pais, C.Sg_Estado,'#13#10' EE.Nr_Telefone_1, EE.Nr_Telefone_2, EE.Nr_Telefone_3, EE.Nr_FAX, EE.Nr_Celular_1,'#13#10'  EE.Ds_Numero'#13#10#13#10'from'#13#10'  Emitente E'#13#10#13#10'inner join'#13#10'  Emitente_Endereco EE'#13#10'on'#13#10'  EE.Cd_Emitente = E.Cd_Emitente and'#13#10'  EE.Nr_Endereco = E.Nr_Endereco'#13#10#13#10'inner join'#13#10'  Cidade C'#13#10'on'#13#10'  C.Cd_Cidade = EE.Cd_Cidade'#13#10#13#10'left join'#13#10'  Emitente EC'#13#10'on'#13#10'  EC.Cd_Emitente = E.Cd_Credito'#13#10#13#10'left join'#13#10'  Estado ET'#13#10'on'#13#10'  ET.Sg_Estado = E.Sg_Estado_Emissor'#13#10#13#10'where'#13#10'  E.Dt_Alteracao >= :Dt_Start and'#13#10'  E.Dt_Alteracao   < :Dt_End'#13#10#13#10'order by'#13#10'  E.Nm_Emitente'
    Parameters = <
      item
        Name = 'Dt_Start'
        DataType = ftDateTime
        Precision = 16
        Size = 16
        Value = nil?
      end
      item
        Name = 'Dt_End'
        DataType = ftDateTime
        Precision = 16
        Size = 16
        Value = nil?
      end>
    Left = 719
    Top = 143
    object ADODsTerceirosCd_Emitente: TIntegerField
      FieldName = 'Cd_Emitente'
    end
    object ADODsTerceirosNm_Emitente: TStringField
      FieldName = 'Nm_Emitente'
      Size = 50
    end
    object ADODsTerceirosNm_Fantasia: TStringField
      FieldName = 'Nm_Fantasia'
      Size = 30
    end
    object ADODsTerceirosDt_Cadastro: TDateTimeField
      FieldName = 'Dt_Cadastro'
    end
    object ADODsTerceirosDt_Alteracao: TDateTimeField
      FieldName = 'Dt_Alteracao'
    end
    object ADODsTerceirosTp_Pessoa: TStringField
      FieldName = 'Tp_Pessoa'
      FixedChar = True
      Size = 1
    end
    object ADODsTerceirosNr_Documento: TStringField
      FieldName = 'Nr_Documento'
      Size = 14
    end
    object ADODsTerceirosNr_Insc_Estadual: TStringField
      FieldName = 'Nr_Insc_Estadual'
    end
    object ADODsTerceirosVl_Limite_Credito: TBCDField
      FieldName = 'Vl_Limite_Credito'
      Precision = 12
      Size = 2
    end
    object ADODsTerceirosCd_Credito: TIntegerField
      FieldName = 'Cd_Credito'
    end
    object ADODsTerceirosNm_Credito: TStringField
      FieldName = 'Nm_Credito'
      Size = 50
    end
    object ADODsTerceirosFl_Contribuinte: TStringField
      FieldName = 'Fl_Contribuinte'
      FixedChar = True
      Size = 1
    end
    object ADODsTerceirosDs_EMail: TStringField
      FieldName = 'Ds_EMail'
      Size = 150
    end
    object ADODsTerceirosDs_Site: TStringField
      FieldName = 'Ds_Site'
      Size = 50
    end
    object ADODsTerceirosDt_Nascimento: TDateTimeField
      FieldName = 'Dt_Nascimento'
    end
    object ADODsTerceirosNr_Identidade: TStringField
      FieldName = 'Nr_Identidade'
    end
    object ADODsTerceirosNm_Orgao_emissor: TStringField
      FieldName = 'Nm_Orgao_emissor'
      Size = 10
    end
    object ADODsTerceirosDt_Emissao_ID: TDateTimeField
      FieldName = 'Dt_Emissao_ID'
    end
    object ADODsTerceirosSg_Estado_Emissor: TStringField
      FieldName = 'Sg_Estado_Emissor'
      FixedChar = True
      Size = 2
    end
    object ADODsTerceirosNr_Endereco: TSmallintField
      FieldName = 'Nr_Endereco'
    end
    object ADODsTerceirosNr_EndCobranca: TSmallintField
      FieldName = 'Nr_EndCobranca'
    end
    object ADODsTerceirosFl_Pagamento: TStringField
      FieldName = 'Fl_Pagamento'
      FixedChar = True
      Size = 1
    end
    object ADODsTerceirosNr_Pagamento: TSmallintField
      FieldName = 'Nr_Pagamento'
    end
    object ADODsTerceirosNr_Insc_Municipal: TStringField
      FieldName = 'Nr_Insc_Municipal'
    end
    object ADODsTerceirosDt_Atividade: TDateTimeField
      FieldName = 'Dt_Atividade'
    end
    object ADODsTerceirosDs_EMailCob: TStringField
      FieldName = 'Ds_EMailCob'
      Size = 150
    end
    object ADODsTerceirosPr_Desconto: TBCDField
      FieldName = 'Pr_Desconto'
      Precision = 9
      Size = 3
    end
    object ADODsTerceirosDs_EMailNFe: TStringField
      FieldName = 'Ds_EMailNFe'
      Size = 100
    end
    object ADODsTerceirosDs_Titulo: TStringField
      FieldName = 'Ds_Titulo'
      Size = 50
    end
    object ADODsTerceirosDs_Endereco: TStringField
      FieldName = 'Ds_Endereco'
      Size = 50
    end
    object ADODsTerceirosNm_Bairro: TStringField
      FieldName = 'Nm_Bairro'
      Size = 30
    end
    object ADODsTerceirosDs_Complemento: TStringField
      FieldName = 'Ds_Complemento'
      Size = 30
    end
    object ADODsTerceirosNr_CEP: TStringField
      FieldName = 'Nr_CEP'
      FixedChar = True
      Size = 8
    end
    object ADODsTerceirosCd_Cidade: TIntegerField
      FieldName = 'Cd_Cidade'
    end
    object ADODsTerceirosNm_Cidade: TStringField
      FieldName = 'Nm_Cidade'
      Size = 60
    end
    object ADODsTerceirosCd_IBGE: TStringField
      FieldName = 'Cd_IBGE'
      Size = 10
    end
    object ADODsTerceirosCd_Pais: TStringField
      FieldName = 'Cd_Pais'
      Size = 10
    end
    object ADODsTerceirosNr_Telefone_1: TStringField
      FieldName = 'Nr_Telefone_1'
      Size = 10
    end
    object ADODsTerceirosNr_Telefone_2: TStringField
      FieldName = 'Nr_Telefone_2'
      Size = 10
    end
    object ADODsTerceirosNr_Telefone_3: TStringField
      FieldName = 'Nr_Telefone_3'
      Size = 10
    end
    object ADODsTerceirosNr_FAX: TStringField
      FieldName = 'Nr_FAX'
      Size = 10
    end
    object ADODsTerceirosDs_Numero: TStringField
      FieldName = 'Ds_Numero'
      Size = 10
    end
    object ADODsTerceirosSg_Estado: TStringField
      FieldName = 'Sg_Estado'
      FixedChar = True
      Size = 2
    end
    object ADODsTerceirosNr_Celular_1: TStringField
      FieldName = 'Nr_Celular_1'
      Size = 11
    end
  end
  object ADODsSaida: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    OnCalcFields = ADODsSaidaCalcFields
    CommandText = 'select'#13#10'  Fl_Origem, Vl_STB, Cd_CST,'#13#10'  Cd_ModeloFiscal, Nr_Documento, Nr_Insc_Estadual, Dt_Fatura, Sg_Estado, Fl_Imposto,'#13#10'  Cd_Serie, Nr_Fatura, Cd_CFOPProduto, Fl_Emitente, St_Nota, Vl_DescNota, Tp_Pessoa,'#13#10'  Fl_FormaPagto, Nr_Orcamento, Fl_Contribuinte,'#13#10#13#10'  Pr_ICMS ='#13#10'    ( case'#13#10'        when Cd_CST = ''''060'''' then 0.0'#13#10'        when Vl_ICMS_Item > 0.0 and Pr_ICMS is not null then Pr_ICMS'#13#10'        when ( Fl_Origem = ''''3'''' ) then Pr_Contrib'#13#10'        else 0.0'#13#10'      end'#13#10'    ),'#13#10#13#10'  sum( Vl_Total_Item      - ( case when Vl_Total_Item > 0.0 and Vl_DescItem is not null then Vl_DescItem else 0.0 end ) + Vl_IPI_Item +  Vl_DespesaItem + Vl_SeguroItem + Vl_FreteItem ) as Vl_Nota,'#13#10'  sum( Vl_Base_ICMS_Item ) as Vl_BaseICMS,'#13#10'  sum( Vl_ICMS_Item ) as Vl_ICMS,'#13#10#13#10'  Vl_ST ='#13#10'    sum('#13#10'      ('#13#10#13#10'      case'#13#10'        when ( Fl_Origem = ''''3'''' ) and ( Cd_CST in ( ''''060'''' ) ) then 0.0'#13#10'        when ( Fl_Origem = ''''3'''' ) and ( Cd_CST in ( ''''010'''', ''''110'''', ''''210'''', ''''070'''', ''''170'''', ''''270'''' ) ) then Vl_ST_Item'#13#10'        else Vl_ST_Item'#13#10'      end'#13#10#13#10'/* Vl_ST_Item */ )'#13#10'      - ( case when Vl_ST_Item > 0.0 and Vl_DescItem is not null then Vl_DescItem else 0.0 end ) +  Vl_DespesaItem + Vl_SeguroItem + Vl_FreteItem ),'#13#10#13#10'  Vl_NaoTributado ='#13#10'    sum('#13#10'      case'#13#10'        -- when Vl_ICMS = 0.0 and ( Fl_Origem = ''''3'''' ) then Vl_Total_Item'#13#10'        when Tp_Tributacao = ''''3'''' then Vl_Total_Item - ( case when Vl_Total_Item > 0.0 and Vl_DescItem is not null then Vl_DescItem else 0.0 end )'#13#10#13#10'      end ),'#13#10#13#10'  sum( Vl_IPI_Item ) as Vl_IPI,'#13#10#13#10'  Vl_Outras = sum('#13#10'    case when '#13#10'               ( Cd_CST in ( ''''060'''', ''''050'''', ''''090'''', ''''102'''' ) or '#13#10'               ( Vl_ICMS_Item = 0.0 and Cd_CST = ''''000'''' ) ) or'#13#10'               ( Cd_CST = ''''100'''' and Vl_ICMS_Item = 0.0 ) or '#13#10'               ( Cd_CST = ''''500'''' and Cd_CFOP in ( ''''5405'''', ''''1403'''' ) ) or'#13#10'               ( Cd_CST in ( ''''101'''', ''''040'''' ) and Cd_CFOP in ( ''''1102'''' ) ) then'#13#10'     ( Vl_Total_Item - ( case when Vl_Total_Item > 0.0 and Vl_DescItem is not null then Vl_DescItem else 0.0 end ) + Vl_IPI_Item +  Vl_DespesaItem + Vl_SeguroItem + Vl_FreteItem ) '#13#10#13#10'    end ),'#13#10#13#10'  Vl_Isento = sum('#13#10'    ( case when ( Cd_CST in ( ''''040'''', ''''041'''', ''''030'''', ''''110'''', ''''210'''', ''''070'''', ''''170'''', ''''270'''' ) ) or ( ( Cd_CST = ''''010'''' ) and ( Fl_Origem <> ''''3'''' ) and ( Pr_Contrib > 0 ) ) then'#13#10'                ( Vl_Total_Item - ( case when Vl_Total_Item > 0.0 and Vl_DescItem is not null then Vl_DescItem else 0.0 end ) + Vl_IPI_Item +  Vl_DespesaItem + Vl_SeguroItem + Vl_FreteItem ) '#13#10#9'  else 0.0 end ) +'#13#10#13#10'    -------------------- No caso de redu'#231#227'o a diferen'#231'a da base de calculo compoe o Isento - 31/10/2012'#13#10'    ( case when ( Cd_CST in ( ''''020'''' ) ) then'#13#10'     ( Vl_Total_Item - ( case when Vl_Total_Item > 0.0 and Vl_DescItem is not null then Vl_DescItem else 0.0 end ) + Vl_IPI_Item +  Vl_DespesaItem + Vl_SeguroItem + Vl_FreteItem - Vl_Base_ICMS_Item ) '#13#10'    else 0.0 end )'#13#10'    ),'#13#10#13#10'  Vl_Desconto = sum( Vl_DescItem )'#13#10#13#10'from'#13#10'  ##NotaProcessa'#13#10#13#10'where'#13#10'  Id_Processo = @@SPID and'#13#10'  Fl_Origem    <= ''''2'''' and'#13#10'  ('#13#10'  Cd_ModeloFiscal = ''''01'''' or    --------------- Modelo 2 - Consumidor final'#13#10'  ( Cd_ModeloFiscal > ''''02'''' and Cd_ModeloFiscal < ''''07'''' ) or'#13#10'  ( Cd_ModeloFiscal > ''''11'''' and Cd_ModeloFiscal < ''''57'''' )'#13#10'  )'#13#10#13#10'group by'#13#10'  Fl_Origem, Vl_STB, Cd_CST,'#13#10'  Cd_ModeloFiscal, Nr_Documento, Nr_Insc_Estadual, Dt_Fatura, Sg_Estado, Fl_Imposto,'#13#10'  Cd_Serie, Nr_Fatura, Cd_CFOPProduto, Fl_Emitente, St_Nota, Vl_DescNota, Tp_Pessoa,'#13#10'  Fl_FormaPagto, Nr_Orcamento, Fl_Contribuinte,'#13#10#13#10'    ( case'#13#10'        when Cd_CST = ''''060'''' then 0.0'#13#10'        when Vl_ICMS_Item > 0.0 and Pr_ICMS is not null then Pr_ICMS'#13#10'        when ( Fl_Origem = ''''3'''' ) then Pr_Contrib'#13#10'        else 0.0'#13#10'      end'#13#10'    )'#13#10#13#10'order by'#13#10'   Fl_Origem, Cd_Serie, Nr_Fatura, Cd_CST'
    Parameters = <>
    Left = 690
    Top = 231
    object ADODsSaidaCd_ModeloFiscal: TStringField
      FieldName = 'Cd_ModeloFiscal'
      FixedChar = True
      Size = 2
    end
    object ADODsSaidaNr_Documento: TStringField
      FieldName = 'Nr_Documento'
      Size = 14
    end
    object ADODsSaidaNr_Insc_Estadual: TStringField
      FieldName = 'Nr_Insc_Estadual'
    end
    object ADODsSaidaDt_Fatura: TDateTimeField
      FieldName = 'Dt_Fatura'
    end
    object ADODsSaidaSg_Estado: TStringField
      FieldName = 'Sg_Estado'
      FixedChar = True
      Size = 2
    end
    object ADODsSaidaCd_Serie: TStringField
      FieldName = 'Cd_Serie'
      Size = 3
    end
    object ADODsSaidaNr_Fatura: TIntegerField
      FieldName = 'Nr_Fatura'
    end
    object ADODsSaidaCd_CFOPProduto: TStringField
      FieldName = 'Cd_CFOPProduto'
      Size = 4
    end
    object ADODsSaidaFl_Emitente: TStringField
      FieldName = 'Fl_Emitente'
      FixedChar = True
      Size = 1
    end
    object ADODsSaidaSt_Nota: TStringField
      FieldName = 'St_Nota'
      FixedChar = True
      Size = 1
    end
    object ADODsSaidaVl_Nota: TBCDField
      FieldName = 'Vl_Nota'
      ReadOnly = True
      Precision = 32
      Size = 3
    end
    object ADODsSaidaVl_BaseICMS: TBCDField
      FieldName = 'Vl_BaseICMS'
      ReadOnly = True
      Precision = 32
      Size = 3
    end
    object ADODsSaidaVl_ICMS: TBCDField
      FieldName = 'Vl_ICMS'
      ReadOnly = True
      Precision = 32
      Size = 3
    end
    object ADODsSaidaVl_NaoTributado: TBCDField
      FieldName = 'Vl_NaoTributado'
      ReadOnly = True
      Precision = 32
      Size = 3
    end
    object ADODsSaidaVl_DescNota: TBCDField
      FieldName = 'Vl_DescNota'
      Precision = 12
      Size = 3
    end
    object ADODsSaidaVl_ST: TBCDField
      FieldName = 'Vl_ST'
      ReadOnly = True
      Precision = 32
      Size = 3
    end
    object ADODsSaidaVl_IPI: TBCDField
      FieldName = 'Vl_IPI'
      ReadOnly = True
      Precision = 32
      Size = 3
    end
    object ADODsSaidaFl_Imposto: TStringField
      FieldName = 'Fl_Imposto'
      FixedChar = True
      Size = 1
    end
    object ADODsSaidaFl_Origem: TStringField
      FieldName = 'Fl_Origem'
      FixedChar = True
      Size = 1
    end
    object ADODsSaidaTp_Pessoa: TStringField
      FieldName = 'Tp_Pessoa'
      FixedChar = True
      Size = 1
    end
    object ADODsSaidaVl_Outras: TBCDField
      FieldName = 'Vl_Outras'
      ReadOnly = True
      Precision = 32
      Size = 3
    end
    object ADODsSaidaVl_Isento: TBCDField
      FieldName = 'Vl_Isento'
      ReadOnly = True
      Precision = 32
      Size = 3
    end
    object ADODsSaidaVl_STB: TBCDField
      FieldName = 'Vl_STB'
      Precision = 12
      Size = 3
    end
    object ADODsSaidaFl_FormaPagto: TStringField
      FieldName = 'Fl_FormaPagto'
      FixedChar = True
      Size = 1
    end
    object ADODsSaidaVl_Desconto: TBCDField
      FieldName = 'Vl_Desconto'
      ReadOnly = True
      Precision = 32
      Size = 3
    end
    object ADODsSaidaNr_Orcamento: TIntegerField
      FieldName = 'Nr_Orcamento'
    end
    object ADODsSaidaFl_Contribuinte: TStringField
      FieldName = 'Fl_Contribuinte'
      FixedChar = True
      Size = 1
    end
    object ADODsSaidaPr_ICMS: TBCDField
      FieldName = 'Pr_ICMS'
      ReadOnly = True
      Precision = 12
      Size = 2
    end
    object ADODsSaidaCd_CST: TStringField
      FieldName = 'Cd_CST'
      Size = 254
    end
    object ADODsSaidaNr_chNFe: TStringField
      FieldKind = fkCalculated
      FieldName = 'Nr_chNFe'
      Size = 44
      Calculated = True
    end
  end
  object ADODsSaidaItem: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'select'#13#10'  Nr_Documento, Cd_ModeloFiscal, Cd_Serie, Nr_Fatura, Cd_CFOPProduto,'#13#10'  Cd_CST, Cd_Produto, Dp_Produto, Qt_Imprimir, Vl_Total_Item, Vl_Base_ICMS_Item,'#13#10'  Vl_DescItem, Fl_Imposto, Dt_Fatura, Vl_Unitario,'#13#10'  Vl_Substituicao = Vl_ST_Item,'#13#10#13#10'  Vl_IPI_Item,'#13#10'  Pr_Aliquota ='#13#10'    ( case when ( Vl_ICMS_Item > 0.0 ) and ( Cd_CST <> ''''060'''' ) then Pr_Item_ICMS_Real end ),'#13#10#13#10'  Pr_ICMS = '#13#10'    ( case when ( Cd_CST <> ''''060'''' ) then Pr_ICMS end ),'#13#10#13#10'  Cd_ClasFiscal, Sg_Unidade, Vl_BaseST_Item, Nr_Item, Pr_Reducao,'#13#10'  Pr_IPI, Vl_ICMS_Item, Tp_Tributacao,'#13#10#13#10'  Vl_Isento = ('#13#10'    ( case when ( Cd_CST in ( ''''040'''', ''''041'''', ''''030'''', ''''110'''', ''''210'''', ''''070'''', ''''170'''', ''''270'''' ) ) or ( ( Cd_CST = ''''010'''' ) and ( Fl_Origem <> ''''3'''' ) and ( Pr_Contrib > 0 ) ) then'#13#10'                ( Vl_Total_Item - ( case when Vl_Total_Item > 0.0 and Vl_DescItem is not null then Vl_DescItem else 0.0 end ) + Vl_IPI_Item +  Vl_DespesaItem + Vl_SeguroItem + Vl_FreteItem ) '#13#10#9'  else 0.0 end ) +'#13#10#13#10'    -------------------- No caso de redu'#231#227'o a diferen'#231'a da base de calculo compoe o Isento - 31/10/2012'#13#10'    ( case when ( Cd_CST in ( ''''020'''' ) ) then'#13#10'     ( Vl_Total_Item - ( case when Vl_Total_Item > 0.0 and Vl_DescItem is not null then Vl_DescItem else 0.0 end ) + Vl_IPI_Item +  Vl_DespesaItem + Vl_SeguroItem + Vl_FreteItem - Vl_Base_ICMS_Item ) '#13#10'    else 0.0 end )'#13#10'    ),'#13#10#13#10'  Vl_Outras = '#13#10'    case '#13#10'      when Cd_CST = ''''020'''' then 0.0'#13#10'      when '#13#10'        ( Cd_CST in ( ''''060'''', ''''050'''', ''''090'''', ''''102'''', ''''160'''' ) or '#13#10'        ( Vl_ICMS_Item = 0.0 and Cd_CST = ''''000'''' ) ) or'#13#10'        ( Cd_CST = ''''100'''' and Vl_ICMS_Item = 0.0 ) or '#13#10'        ( Cd_CST = ''''500'''' and Cd_CFOP in ( ''''5405'''', ''''1403'''' ) ) or'#13#10'        ( Cd_CST in ( ''''101'''', ''''040'''' ) and Cd_CFOP in ( ''''1102'''' ) ) then'#13#10'        ( Vl_Total_Item - ( case when Vl_Total_Item > 0.0 and Vl_DescItem is not null then Vl_DescItem else 0.0 end ) + Vl_IPI_Item +  Vl_DespesaItem + Vl_SeguroItem + Vl_FreteItem ) '#13#10#13#10'    end'#13#10#13#10'from'#13#10'  ##NotaProcessa'#13#10#13#10'where'#13#10'  Id_Processo = @@SPID and'#13#10'  Fl_Origem   <= ''''2'''' and'#13#10'  Cd_Produto > 0 and'#13#10'  St_Nota = ''''N'''' and'#13#10'  ('#13#10'  Cd_ModeloFiscal = ''''01'''' or    --------------- Modelo 2 - Consumidor final'#13#10'  ( Cd_ModeloFiscal > ''''02'''' and Cd_ModeloFiscal < ''''07'''' ) or'#13#10'  ( Cd_ModeloFiscal > ''''11'''' and Cd_ModeloFiscal < ''''57'''' )'#13#10'  ) and'#13#10'  not Cd_CFOPProduto in ( ''''5929'''', ''''6929'''' )  '#13#10#13#10'order by'#13#10'  Cd_Serie, Nr_Fatura, Cd_CST'
    Parameters = <>
    Left = 727
    Top = 233
    object ADODsSaidaItemNr_Documento: TStringField
      FieldName = 'Nr_Documento'
      Size = 14
    end
    object ADODsSaidaItemCd_ModeloFiscal: TStringField
      FieldName = 'Cd_ModeloFiscal'
      FixedChar = True
      Size = 2
    end
    object ADODsSaidaItemCd_Serie: TStringField
      FieldName = 'Cd_Serie'
      Size = 3
    end
    object ADODsSaidaItemNr_Fatura: TIntegerField
      FieldName = 'Nr_Fatura'
    end
    object ADODsSaidaItemCd_CFOPProduto: TStringField
      FieldName = 'Cd_CFOPProduto'
      Size = 4
    end
    object ADODsSaidaItemCd_CST: TStringField
      FieldName = 'Cd_CST'
      Size = 254
    end
    object ADODsSaidaItemCd_Produto: TIntegerField
      FieldName = 'Cd_Produto'
    end
    object ADODsSaidaItemDp_Produto: TStringField
      FieldName = 'Dp_Produto'
      Size = 200
    end
    object ADODsSaidaItemQt_Imprimir: TBCDField
      FieldName = 'Qt_Imprimir'
      Precision = 12
      Size = 3
    end
    object ADODsSaidaItemVl_Total_Item: TBCDField
      FieldName = 'Vl_Total_Item'
      Precision = 12
      Size = 3
    end
    object ADODsSaidaItemVl_Base_ICMS_Item: TBCDField
      FieldName = 'Vl_Base_ICMS_Item'
      Precision = 12
      Size = 3
    end
    object ADODsSaidaItemVl_Substituicao: TBCDField
      FieldName = 'Vl_Substituicao'
      ReadOnly = True
      Precision = 12
      Size = 3
    end
    object ADODsSaidaItemVl_IPI_Item: TBCDField
      FieldName = 'Vl_IPI_Item'
      Precision = 12
      Size = 3
    end
    object ADODsSaidaItemPr_Aliquota: TBCDField
      FieldName = 'Pr_Aliquota'
      ReadOnly = True
      Precision = 12
      Size = 2
    end
    object ADODsSaidaItemVl_DescItem: TBCDField
      FieldName = 'Vl_DescItem'
      Precision = 12
      Size = 3
    end
    object ADODsSaidaItemFl_Imposto: TStringField
      FieldName = 'Fl_Imposto'
      FixedChar = True
      Size = 1
    end
    object ADODsSaidaItemCd_ClasFiscal: TStringField
      FieldName = 'Cd_ClasFiscal'
      Size = 10
    end
    object ADODsSaidaItemSg_Unidade: TStringField
      FieldName = 'Sg_Unidade'
      FixedChar = True
      Size = 2
    end
    object ADODsSaidaItemVl_BaseST_Item: TBCDField
      FieldName = 'Vl_BaseST_Item'
      Precision = 12
      Size = 3
    end
    object ADODsSaidaItemNr_Item: TSmallintField
      FieldName = 'Nr_Item'
    end
    object ADODsSaidaItemPr_Reducao: TBCDField
      FieldName = 'Pr_Reducao'
      Precision = 12
      Size = 2
    end
    object ADODsSaidaItemPr_IPI: TBCDField
      FieldName = 'Pr_IPI'
      Precision = 12
      Size = 2
    end
    object ADODsSaidaItemVl_ICMS_Item: TBCDField
      FieldName = 'Vl_ICMS_Item'
      Precision = 12
      Size = 3
    end
    object ADODsSaidaItemTp_Tributacao: TStringField
      FieldName = 'Tp_Tributacao'
      FixedChar = True
      Size = 1
    end
    object ADODsSaidaItemVl_Isento: TBCDField
      FieldName = 'Vl_Isento'
      ReadOnly = True
      Precision = 19
      Size = 3
    end
    object ADODsSaidaItemDt_Fatura: TDateTimeField
      FieldName = 'Dt_Fatura'
    end
    object ADODsSaidaItemVl_Outras: TBCDField
      FieldName = 'Vl_Outras'
      ReadOnly = True
      Precision = 17
      Size = 3
    end
    object ADODsSaidaItemPr_ICMS: TBCDField
      FieldName = 'Pr_ICMS'
      Precision = 12
      Size = 2
    end
    object ADODsSaidaItemVl_Unitario: TBCDField
      FieldName = 'Vl_Unitario'
      Precision = 12
      Size = 3
    end
  end
  object ADODsNrChNFe: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'select'#13#10'  Nr_chNFe'#13#10#13#10'from'#13#10'  NFe N'#13#10#13#10'where'#13#10'  N.Cd_Filial = :Cd_Filial and'#13#10'  N.Fl_Origem = :Fl_Origem and'#13#10'  N.Nr_Origem = :Nr_Origem and'#13#10'  N.St_NFe     > ''''1'''#13#10#13#10'order by'#13#10'  Id_Origem desc'
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
        Name = 'Fl_Origem'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 1
        Value = nil?
      end
      item
        Name = 'Nr_Origem'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = nil?
      end>
    Left = 440
    Top = 320
    object ADODsNrChNFeNr_chNFe: TStringField
      FieldName = 'Nr_chNFe'
      Size = 255
    end
  end
  object ADODsEntrada: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    OnCalcFields = ADODsEntradaCalcFields
    CommandText = 'select'#13#10'  Fl_Origem, Vl_STB, Cd_CST, Fl_Frete,'#13#10'  Cd_ModeloFiscal, Nr_Documento, Nr_Insc_Estadual, Dt_Fatura, Sg_Estado, Fl_Imposto,'#13#10'  Cd_Serie, Nr_Fatura, Cd_CFOPProduto, Fl_Emitente, St_Nota, Vl_DescNota, Tp_Pessoa,'#13#10'  Fl_FormaPagto, Nr_Orcamento, Fl_Contribuinte,'#13#10#13#10'  Pr_ICMS ='#13#10'    ( case'#13#10'        when Cd_CST = ''''060'''' then 0.0'#13#10'        when Vl_ICMS_Item > 0.0 and Pr_ICMS is not null then Pr_ICMS'#13#10'        when ( Fl_Origem = ''''3'''' ) then Pr_Contrib'#13#10'        else 0.0'#13#10'      end'#13#10'    ),'#13#10#13#10'  sum( Vl_Total_Item      - ( case when Vl_Total_Item > 0.0 and Vl_DescItem is not null then Vl_DescItem else 0.0 end ) + Vl_IPI_Item +  Vl_DespesaItem + Vl_SeguroItem + Vl_FreteItem ) as Vl_Nota,'#13#10'  sum( Vl_Base_ICMS_Item ) as Vl_BaseICMS,'#13#10'  sum( Vl_ICMS_Item ) as Vl_ICMS,'#13#10#13#10'  Vl_ST ='#13#10'    sum('#13#10'      ('#13#10'      case'#13#10'        when ( Fl_Origem = ''''3'''' ) and ( Cd_CST in ( ''''060'''' ) ) then 0.0'#13#10'        when ( Fl_Origem = ''''3'''' ) and ( Cd_CST in ( ''''010'''', ''''110'''', ''''210'''', ''''070'''', ''''170'''', ''''270'''', ''''160'''' ) ) then Vl_ST_Item'#13#10'        else Vl_ST_Item'#13#10'      end'#13#10#13#10'/* Vl_ST_Item */ )'#13#10'      - ( case when Vl_ST_Item > 0.0 and Vl_DescItem is not null then Vl_DescItem else 0.0 end ) +  Vl_DespesaItem + Vl_SeguroItem + Vl_FreteItem ),'#13#10#13#10'  Vl_NaoTributado ='#13#10'    sum('#13#10'      case'#13#10'        -- when Vl_ICMS = 0.0 and ( Fl_Origem = ''''3'''' ) then Vl_Total_Item'#13#10'        when Tp_Tributacao = ''''3'''' then Vl_Total_Item - ( case when Vl_Total_Item > 0.0 and Vl_DescItem is not null then Vl_DescItem else 0.0 end )'#13#10#13#10'      end ),'#13#10#13#10'  sum( Vl_IPI_Item ) as Vl_IPI,'#13#10#13#10'  Vl_Outras = sum('#13#10'    case'#13#10'      when Cd_CST in ( ''''020'''', ''''000'''' ) then 0.0'#13#10'      when ( Cd_CST in ( ''''060'''', ''''050'''', ''''090'''', ''''102'''', ''''160'''', ''''260'''', ''''290'''', ''''010'''', ''''360'''' ) or'#13#10'           ( Vl_ICMS_Item = 0.0 and Cd_CST = ''''000'''' ) ) or'#13#10'           ( Cd_CST = ''''100'''' and Vl_ICMS_Item = 0.0 ) or'#13#10'           ( Cd_CST = ''''500'''' and Cd_CFOP in ( ''''5405'''', ''''1403'''' ) ) or'#13#10'           ( Cd_CST in ( ''''101'''', ''''040'''' ) and Cd_CFOP in ( ''''1102'''' ) ) then'#13#10'        ( Vl_Total_Item - ( case when Vl_Total_Item > 0.0 and Vl_DescItem is not null then Vl_DescItem else 0.0 end ) + Vl_DespesaItem + Vl_SeguroItem + Vl_FreteItem )'#13#10#13#10'    end ),'#13#10#13#10'  Vl_Isento = sum('#13#10'    ( case'#13#10#9'      when ( Cd_CST in ( ''''040'''', ''''041'''', ''''030'''', ''''110'''', ''''210'''', ''''070'''', ''''170'''', ''''270'''' ) ) or ( ( Cd_CST = ''''010'''' ) and ( Fl_Origem <> ''''3'''' ) and ( Pr_Contrib > 0 ) ) then'#13#10'          ( Vl_Total_Item - ( case when Vl_Total_Item > 0.0 and Vl_DescItem is not null then Vl_DescItem else 0.0 end ) + Vl_IPI_Item +  Vl_DespesaItem + Vl_SeguroItem + Vl_FreteItem )'#13#10#9'    else'#13#10#9'      0.0'#13#10#9'    end ) +'#13#10#13#10'    -------------------- No caso de redu'#231#227'o a diferen'#231'a da base de calculo compoe o Isento - 31/10/2012'#13#10'    ( case'#13#10'        when ( Cd_CST in ( ''''020'''' ) ) then'#13#10'         ( Vl_Total_Item - ( case when Vl_Total_Item > 0.0 and Vl_DescItem is not null then Vl_DescItem else 0.0 end ) + Vl_IPI_Item +  Vl_DespesaItem + Vl_SeguroItem + Vl_FreteItem - Vl_Base_ICMS_Item )'#13#10'      else'#13#10#9'       0.0'#13#10#9'    end )'#13#10'    ),'#13#10#13#10'  Vl_Desconto = sum( Vl_DescItem ),'#13#10#13#10'  Dt_Saida'#13#10#13#10'from'#13#10'  ##NotaProcessa'#13#10#13#10'where'#13#10'  Id_Processo = @@SPID and'#13#10'  Fl_Origem    = ''''3'''' and'#13#10'  ('#13#10'  Cd_ModeloFiscal = ''''01'''' or    --------------- Modelo 2 - Consumidor final'#13#10'  ( Cd_ModeloFiscal > ''''02'''' and Cd_ModeloFiscal < ''''07'''' ) or'#13#10'  ( Cd_ModeloFiscal > ''''11'''' and Cd_ModeloFiscal < ''''58'''' )'#13#10'  )'#13#10#13#10'group by'#13#10'  Fl_Origem, Vl_STB, Cd_CST, Fl_Frete,'#13#10'  Cd_ModeloFiscal, Nr_Documento, Nr_Insc_Estadual, Dt_Fatura, Sg_Estado, Fl_Imposto,'#13#10'  Cd_Serie, Nr_Fatura, Cd_CFOPProduto, Fl_Emitente, St_Nota, Vl_DescNota, Tp_Pessoa,'#13#10'  Fl_FormaPagto, Nr_Orcamento, Fl_Contribuinte,'#13#10#13#10'    ( case'#13#10'        when Cd_CST = ''''060'''' then 0.0'#13#10'        when Vl_ICMS_Item > 0.0 and Pr_ICMS is not null then Pr_ICMS'#13#10'        when ( Fl_Origem = ''''3'''' ) then Pr_Contrib'#13#10'        else 0.0'#13#10'      end'#13#10'    ),'#13#10#13#10'  Dt_Saida'#13#10#13#10'order by'#13#10'   Fl_Origem, Cd_Serie, Nr_Fatura, Cd_CST'
    Parameters = <>
    Left = 597
    Top = 263
    object ADODsEntradaFl_Origem: TStringField
      FieldName = 'Fl_Origem'
      FixedChar = True
      Size = 1
    end
    object ADODsEntradaVl_STB: TBCDField
      FieldName = 'Vl_STB'
      Precision = 12
      Size = 3
    end
    object ADODsEntradaCd_CST: TStringField
      FieldName = 'Cd_CST'
      Size = 254
    end
    object ADODsEntradaCd_ModeloFiscal: TStringField
      FieldName = 'Cd_ModeloFiscal'
      FixedChar = True
      Size = 2
    end
    object ADODsEntradaNr_Documento: TStringField
      FieldName = 'Nr_Documento'
      Size = 14
    end
    object ADODsEntradaNr_Insc_Estadual: TStringField
      FieldName = 'Nr_Insc_Estadual'
    end
    object ADODsEntradaDt_Fatura: TDateTimeField
      FieldName = 'Dt_Fatura'
    end
    object ADODsEntradaSg_Estado: TStringField
      FieldName = 'Sg_Estado'
      FixedChar = True
      Size = 2
    end
    object ADODsEntradaFl_Imposto: TStringField
      FieldName = 'Fl_Imposto'
      FixedChar = True
      Size = 1
    end
    object ADODsEntradaCd_Serie: TStringField
      FieldName = 'Cd_Serie'
      Size = 3
    end
    object ADODsEntradaNr_Fatura: TIntegerField
      FieldName = 'Nr_Fatura'
    end
    object ADODsEntradaCd_CFOPProduto: TStringField
      FieldName = 'Cd_CFOPProduto'
      Size = 4
    end
    object ADODsEntradaFl_Emitente: TStringField
      FieldName = 'Fl_Emitente'
      FixedChar = True
      Size = 1
    end
    object ADODsEntradaSt_Nota: TStringField
      FieldName = 'St_Nota'
      FixedChar = True
      Size = 1
    end
    object ADODsEntradaVl_DescNota: TBCDField
      FieldName = 'Vl_DescNota'
      Precision = 12
      Size = 3
    end
    object ADODsEntradaTp_Pessoa: TStringField
      FieldName = 'Tp_Pessoa'
      FixedChar = True
      Size = 1
    end
    object ADODsEntradaFl_FormaPagto: TStringField
      FieldName = 'Fl_FormaPagto'
      FixedChar = True
      Size = 1
    end
    object ADODsEntradaNr_Orcamento: TIntegerField
      FieldName = 'Nr_Orcamento'
    end
    object ADODsEntradaFl_Contribuinte: TStringField
      FieldName = 'Fl_Contribuinte'
      FixedChar = True
      Size = 1
    end
    object ADODsEntradaPr_ICMS: TBCDField
      FieldName = 'Pr_ICMS'
      ReadOnly = True
      Precision = 12
      Size = 2
    end
    object ADODsEntradaVl_Nota: TBCDField
      FieldName = 'Vl_Nota'
      ReadOnly = True
      Precision = 32
      Size = 3
    end
    object ADODsEntradaVl_BaseICMS: TBCDField
      FieldName = 'Vl_BaseICMS'
      ReadOnly = True
      Precision = 32
      Size = 3
    end
    object ADODsEntradaVl_ICMS: TBCDField
      FieldName = 'Vl_ICMS'
      ReadOnly = True
      Precision = 32
      Size = 3
    end
    object ADODsEntradaVl_ST: TBCDField
      FieldName = 'Vl_ST'
      ReadOnly = True
      Precision = 32
      Size = 3
    end
    object ADODsEntradaVl_NaoTributado: TBCDField
      FieldName = 'Vl_NaoTributado'
      ReadOnly = True
      Precision = 32
      Size = 3
    end
    object ADODsEntradaVl_IPI: TBCDField
      FieldName = 'Vl_IPI'
      ReadOnly = True
      Precision = 32
      Size = 3
    end
    object ADODsEntradaVl_Outras: TBCDField
      FieldName = 'Vl_Outras'
      ReadOnly = True
      Precision = 32
      Size = 3
    end
    object ADODsEntradaVl_Isento: TBCDField
      FieldName = 'Vl_Isento'
      ReadOnly = True
      Precision = 32
      Size = 3
    end
    object ADODsEntradaVl_Desconto: TBCDField
      FieldName = 'Vl_Desconto'
      ReadOnly = True
      Precision = 32
      Size = 3
    end
    object ADODsEntradaDt_Saida: TDateTimeField
      FieldName = 'Dt_Saida'
    end
    object ADODsEntradaDt_Emissao: TDateTimeField
      FieldKind = fkCalculated
      FieldName = 'Dt_Emissao'
      Calculated = True
    end
    object ADODsEntradaFl_Frete: TStringField
      FieldName = 'Fl_Frete'
      FixedChar = True
      Size = 1
    end
    object ADODsEntradaNr_chNFe: TStringField
      FieldKind = fkCalculated
      FieldName = 'Nr_chNFe'
      Size = 44
      Calculated = True
    end
  end
  object ADODsEntEmissao: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'select'#13#10'  Dt_Emissao'#13#10#13#10'from'#13#10'  Entrada'#13#10#13#10'where'#13#10'  Cd_Filial = :Cd_Filial and'#13#10'  Nr_Entrada = :Nr_Entrada'
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
        Name = 'Nr_Entrada'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = nil?
      end>
    Left = 600
    Top = 232
    object ADODsEntEmissaoDt_Emissao: TDateTimeField
      FieldName = 'Dt_Emissao'
    end
  end
  object ADODsEntradaChave: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'select'#13#10'  Nr_chNFe'#13#10#13#10'from'#13#10'  Entrada'#13#10#13#10'where'#13#10'  Cd_Filial = :Cd_Filial and'#13#10'  Nr_Entrada = :Nr_Entrada'
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
        Name = 'Nr_Entrada'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = nil?
      end>
    Left = 472
    Top = 320
    object ADODsEntradaChaveNr_chNFe: TStringField
      FieldName = 'Nr_chNFe'
      Size = 255
    end
  end
end
