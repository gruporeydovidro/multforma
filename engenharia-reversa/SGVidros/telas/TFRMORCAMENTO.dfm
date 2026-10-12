object FrmOrcamento: TFrmOrcamento
  Left = 412
  Top = 290
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Atendimento'
  ClientHeight = 474
  ClientWidth = 831
  Color = clWhite
  Ctl3D = False
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object PnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 21
    Height = 474
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 810
    Height = 474
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object LblDsOrcamento: TLabel
      Left = 5
      Top = 29
      Width = 118
      Height = 13
      Caption = 'Atendimento/Data/Hora:'
    end
    object Label3: TLabel
      Left = 490
      Top = 66
      Width = 49
      Height = 13
      Caption = 'Vendedor:'
    end
    object SbFuncionario: TSpeedButton
      Left = 530
      Top = 81
      Width = 23
      Height = 19
      Hint = 'Seleciona Vendedor'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbFuncionarioClick
    end
    object LblTabPreco: TLabel
      Left = 442
      Top = 29
      Width = 87
      Height = 13
      Caption = 'Tabela de Pre'#231'os:'
    end
    object SbTabPreco: TSpeedButton
      Left = 552
      Top = 44
      Width = 23
      Height = 19
      Hint = 'Seleciona Tabela de Pre'#231'o'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbTabPrecoClick
    end
    object SbEmitente: TSpeedButton
      Left = 55
      Top = 81
      Width = 23
      Height = 19
      Hint = 'Seleciona Cliente'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbEmitenteClick
    end
    object Label2: TLabel
      Left = 5
      Top = 66
      Width = 35
      Height = 13
      Caption = 'Cliente:'
    end
    object BvlSeparator_1: TBevel
      Left = 2
      Top = 105
      Width = 755
      Height = 5
      Shape = bsTopLine
    end
    object SbProduto: TSpeedButton
      Left = 275
      Top = 124
      Width = 23
      Height = 19
      Hint = 'Seleciona Produto'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbProdutoClick
    end
    object Label6: TLabel
      Left = 304
      Top = 108
      Width = 92
      Height = 13
      Caption = 'Unidade de Venda:'
    end
    object Label4: TLabel
      Left = 471
      Top = 108
      Width = 58
      Height = 13
      Caption = 'Quantidade:'
    end
    object Label5: TLabel
      Left = 626
      Top = 108
      Width = 49
      Height = 13
      Caption = 'Desconto:'
    end
    object Label7: TLabel
      Left = 547
      Top = 108
      Width = 39
      Height = 13
      Caption = 'Unit'#225'rio:'
    end
    object Label8: TLabel
      Left = 678
      Top = 108
      Width = 27
      Height = 13
      Caption = 'Total:'
    end
    object BvlSeparator_2: TBevel
      Left = 2
      Top = 147
      Width = 755
      Height = 5
      Shape = bsTopLine
    end
    object SbEmitenteGo: TSpeedButton
      Left = 437
      Top = 81
      Width = 23
      Height = 19
      Hint = 'Cadastro do Cliente'
      Flat = True
      Glyph.Data = {binary 582 bytes}
      ParentShowHint = False
      ShowHint = True
      OnClick = SbEmitenteGoClick
    end
    object DbTxtProduto: TDBText
      Left = 6
      Top = 149
      Width = 345
      Height = 25
      DataField = 'Dp_Produto'
      DataSource = DsProdSelect
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      WordWrap = True
    end
    object LblTotal: TLabel
      Left = 230
      Top = 447
      Width = 356
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Total: 0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LblInfo: TLabel
      Left = 6
      Top = 447
      Width = 70
      Height = 13
      Caption = 'Informa'#231#245'es'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LblFullTotal: TLabel
      Left = 585
      Top = 447
      Width = 168
      Height = 27
      Alignment = taRightJustify
      AutoSize = False
      Caption = '0,00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object SbEmitenteNew: TSpeedButton
      Left = 461
      Top = 81
      Width = 23
      Height = 19
      Hint = 'Inclus'#227'o R'#225'pida de Cliente'
      Flat = True
      Glyph.Data = {binary 1594 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbEmitenteNewClick
    end
    object Label9: TLabel
      Left = 578
      Top = 29
      Width = 107
      Height = 13
      Caption = 'Desconto ( % / Valor ):'
      FocusControl = EdtPr_DescPed
    end
    object SbDescAcresc: TSpeedButton
      Left = 705
      Top = 44
      Width = 23
      Height = 19
      Hint = 'Distribuir Desconto ou acr'#233'scimo'
      Flat = True
      Glyph.Data = {binary 1594 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbDescAcrescClick
    end
    object SbProdPrecoTab: TSpeedButton
      Left = 730
      Top = 44
      Width = 23
      Height = 19
      Hint = 'Retornar o Pre'#231'o definido em Tabela'
      Flat = True
      Glyph.Data = {binary 1594 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbProdPrecoTabClick
    end
    object DbTxtSaldo: TDBText
      Left = 274
      Top = 160
      Width = 65
      Height = 17
      Alignment = taRightJustify
      DataField = 'qt_estoque'
      DataSource = DsProdSelect
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object PnlToolMain: TPanel
      Left = 1
      Top = 1
      Width = 808
      Height = 26
      Align = alTop
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 19
      object PnlDatabase: TPanel
        Left = 0
        Top = 0
        Width = 808
        Height = 26
        Align = alClient
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 0
        object ActToolBDatabase: TActionToolBar
          Left = 0
          Top = 0
          Width = 808
          Height = 26
          Cursor = crHandPoint
          ActionManager = ActManCadastro
          Caption = 'ActToolBDatabase'
          ColorMap.HighlightColor = clWhite
          ColorMap.BtnSelectedColor = clBtnFace
          ColorMap.UnusedColor = clWhite
          ParentShowHint = False
          ShowHint = True
          Spacing = 0
        end
      end
    end
    object EdtNr_Orcamento: TCurrencyEdit
      Left = 5
      Top = 44
      Width = 50
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      TabStop = False
      AutoSize = False
      Color = clSilver
      DecimalPlaces = 0
      DisplayFormat = '###'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object EdtDt_Emissao: TDateEdit
      Left = 55
      Top = 44
      Width = 90
      Height = 19
      DialogTitle = 'Selecione a Data'
      GlyphKind = gkCustom
      Glyph.Data = {binary 390 bytes}
      NumGlyphs = 1
      StartOfWeek = Sun
      TabOrder = 1
    end
    object EdtSt_Orcamento: TLabeledEdit
      Left = 186
      Top = 44
      Width = 120
      Height = 19
      TabStop = False
      Color = clSilver
      EditLabel.Width = 45
      EditLabel.Height = 13
      EditLabel.Caption = 'Situa'#231#227'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      LabelSpacing = 2
      ParentFont = False
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 3
    end
    object EdtCd_Funcionario: TCurrencyEdit
      Tag = 2
      Left = 490
      Top = 81
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 10
      OnExit = EdtCd_FuncionarioExit
      OnKeyDown = EdtCd_FuncionarioKeyDown
    end
    object EdtNm_Funcionario: TEdit
      Left = 554
      Top = 81
      Width = 200
      Height = 19
      TabStop = False
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 30
      ParentFont = False
      ReadOnly = True
      TabOrder = 11
    end
    object EdtCd_Tabela: TEdit
      Tag = 1
      Left = 442
      Top = 44
      Width = 110
      Height = 19
      CharCase = ecUpperCase
      TabOrder = 5
      OnExit = EdtCd_TabelaExit
      OnKeyDown = EdtCd_FuncionarioKeyDown
    end
    object EdtCd_Emitente: TCurrencyEdit
      Tag = 3
      Left = 5
      Top = 81
      Width = 50
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 8
      OnExit = EdtCd_EmitenteExit
      OnKeyDown = EdtCd_FuncionarioKeyDown
    end
    object EdtNm_Emitente: TEdit
      Left = 78
      Top = 81
      Width = 358
      Height = 19
      TabStop = False
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 9
    end
    object EdtNm_Produto: TLabeledEdit
      Tag = 4
      Left = 5
      Top = 123
      Width = 270
      Height = 19
      EditLabel.Width = 253
      EditLabel.Height = 13
      EditLabel.Caption = '&Descri'#231#227'o do Produto / C'#243'digo de Barras/Fabricante:'
      LabelSpacing = 2
      MaxLength = 120
      TabOrder = 12
      OnEnter = EdtNm_ProdutoEnter
      OnExit = EdtNm_ProdutoExit
      OnKeyDown = EdtCd_FuncionarioKeyDown
    end
    object CbUnidade: TComboBox
      Left = 304
      Top = 122
      Width = 165
      Height = 21
      Style = csDropDownList
      Ctl3D = True
      ItemHeight = 0
      ParentCtl3D = False
      TabOrder = 13
      OnChange = CbUnidadeChange
    end
    object EdtQt_Item: TCurrencyEdit
      Left = 471
      Top = 122
      Width = 70
      Height = 19
      Hint = 'Pressione a barra de espa'#231'os para abrir'#13#10'a tela de detalhamento do item'
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 3
      DisplayFormat = '#,##0.00#'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 14
      OnChange = EdtQt_ItemChange
      OnExit = EdtQt_ItemExit
      OnKeyPress = EdtQt_ItemKeyPress
    end
    object EdtPr_Desconto: TCurrencyEdit
      Left = 626
      Top = 122
      Width = 49
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DisplayFormat = '#,##0.00'
      TabOrder = 16
      OnChange = EdtPr_DescontoChange
    end
    object EdtVl_Unitario: TCurrencyEdit
      Left = 547
      Top = 122
      Width = 75
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 3
      DisplayFormat = '#,##0.00#'
      TabOrder = 15
      OnChange = EdtQt_ItemChange
    end
    object EdtVl_Total: TCurrencyEdit
      Left = 678
      Top = 122
      Width = 75
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      Color = clSilver
      DecimalPlaces = 3
      DisplayFormat = '#,##0.00#'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 17
      OnEnter = EdtVl_TotalEnter
    end
    object DbGProduto: TDBGrid
      Left = 5
      Top = 175
      Width = 799
      Height = 266
      DataSource = DsProduto
      FixedColor = clSilver
      Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 18
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = DbGProdutoDblClick
      OnEnter = DbGProdutoEnter
      OnExit = DbGProdutoExit
      OnKeyDown = DbGProdutoKeyDown
      OnKeyPress = DbGProdutoKeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'Dp_Produto'
          Width = 452
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'sg_unidade'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'qt_item'
          Title.Alignment = taRightJustify
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'vl_unitario'
          Title.Alignment = taRightJustify
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Vl_Total'
          Title.Alignment = taRightJustify
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'pr_margem'
          Title.Alignment = taRightJustify
          Width = 50
          Visible = True
        end>
    end
    object EdtDs_Pagamento: TLabeledEdit
      Left = 309
      Top = 44
      Width = 130
      Height = 19
      TabStop = False
      Color = clSilver
      EditLabel.Width = 120
      EditLabel.Height = 13
      EditLabel.Caption = 'Condi'#231#227'o de Pagamento:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      LabelSpacing = 2
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
    end
    object EdtHr_Orcamento: TEdit
      Left = 145
      Top = 44
      Width = 38
      Height = 19
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
    object BitBtnConfirm: TBitBtn
      Left = 642
      Top = 149
      Width = 80
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 20
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 482 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 723
      Top = 149
      Width = 80
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 21
      OnClick = BitBtnCancelClick
      Glyph.Data = {binary 482 bytes}
      NumGlyphs = 2
    end
    object PnlAction_4: TPanel
      Left = 347
      Top = 148
      Width = 293
      Height = 27
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 22
      object ActToolBProdutos: TActionToolBar
        Left = 0
        Top = 0
        Width = 293
        Height = 27
        Cursor = crHandPoint
        ActionManager = ActManCadastro
        Align = alClient
        Caption = 'ActToolBProdutos'
        ColorMap.HighlightColor = clWhite
        ColorMap.BtnSelectedColor = clBtnFace
        ColorMap.UnusedColor = clWhite
        ParentShowHint = False
        ShowHint = True
        Spacing = 0
      end
    end
    object EdtPr_DescPed: TCurrencyEdit
      Tag = 1
      Left = 578
      Top = 44
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DisplayFormat = '#,##0.00'
      TabOrder = 6
      OnChange = EdtPr_DescPedChange
      OnEnter = EdtPr_DescPedEnter
    end
    object EdtVl_DescPed: TCurrencyEdit
      Tag = 2
      Left = 623
      Top = 44
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      TabOrder = 7
      OnChange = EdtPr_DescPedChange
      OnEnter = EdtPr_DescPedEnter
    end
  end
  object ADODsDados: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    OnCalcFields = ADODsDadosCalcFields
    CommandText = 'select'#13#10'  O.Nr_Orcamento, O.Dt_Emissao, O.St_Orcamento, O.Cd_Emitente, E.Nm_Emitente,'#13#10'  O.Cd_Funcionario, F.Nm_Funcionario, O.Vl_Pedido_Frete, O.Ps_Pedido,'#13#10'  O.Vl_Pedido, O.Mg_Pedido, O.Pr_Desconto, O.Vl_Desconto, O.Pr_Custo,'#13#10'  O.Vl_Custo, O.Cd_Tabela, O.Fl_FormaPagto, O.Nr_Fatura, O.Vl_IPI,'#13#10'  R.Nr_Receber, E.Cd_Portador, O.Nr_ECF, E.Fl_Contribuinte, O.Dt_Fatura,'#13#10'  O.Fl_Frete, O.Ds_Quantidade, O.Ds_Especie, O.Ds_Marca, O.Vl_STB,'#13#10'  O.Fl_Impresso, O.Nr_Juncao, '#13#10'  O.Vl_Baseicms, O.Pr_Icms, O.Vl_Icms, O.Vl_BaseST, O.Cd_Cfop, O.Cd_Transportador,'#13#10'  O.Mm_Nota, O.Nr_Entrega, E.Nm_Fantasia, O.Mm_Observacao, O.Fl_ConFinal'#13#10#13#10'from'#13#10'  Orcamento O'#13#10#13#10'inner join'#13#10'  Funcionario F'#13#10'on'#13#10'  F.Cd_Funcionario = O.Cd_Funcionario'#13#10#13#10'left join'#13#10'  Emitente E'#13#10'on'#13#10'  E.Cd_Emitente = O.Cd_Emitente'#13#10#13#10'left join'#13#10'  Receber R'#13#10'on'#13#10'  R.Cd_Filial     = O.Cd_Filial and'#13#10'  R.Nr_Orcamento = O.Nr_Orcamento and'#13#10'  R.St_Receber   < ''''4'''#13#10#13#10'where'#13#10'  O.Cd_Filial    = :Cd_Filial and'#13#10'  O.Nr_Orcamento = :Nr_Orcamento'
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
    Left = 31
    Top = 339
    object ADODsDadosnr_orcamento: TIntegerField
      FieldName = 'nr_orcamento'
    end
    object ADODsDadosdt_emissao: TDateTimeField
      FieldName = 'dt_emissao'
    end
    object ADODsDadosst_orcamento: TStringField
      FieldName = 'st_orcamento'
      FixedChar = True
      Size = 1
    end
    object ADODsDadoscd_emitente: TIntegerField
      FieldName = 'cd_emitente'
    end
    object ADODsDadosnm_emitente: TStringField
      FieldName = 'nm_emitente'
      Size = 50
    end
    object ADODsDadoscd_funcionario: TSmallintField
      FieldName = 'cd_funcionario'
    end
    object ADODsDadosnm_funcionario: TStringField
      FieldName = 'nm_funcionario'
      Size = 50
    end
    object ADODsDadosvl_pedido_frete: TBCDField
      FieldName = 'vl_pedido_frete'
      Precision = 12
      Size = 2
    end
    object ADODsDadosps_pedido: TBCDField
      FieldName = 'ps_pedido'
      Precision = 12
      Size = 3
    end
    object ADODsDadosvl_pedido: TBCDField
      FieldName = 'vl_pedido'
      Precision = 12
      Size = 2
    end
    object ADODsDadosmg_pedido: TBCDField
      FieldName = 'mg_pedido'
      Precision = 12
      Size = 2
    end
    object ADODsDadospr_desconto: TBCDField
      FieldName = 'pr_desconto'
      Precision = 7
      Size = 2
    end
    object ADODsDadosvl_desconto: TBCDField
      FieldName = 'vl_desconto'
      Precision = 12
      Size = 2
    end
    object ADODsDadospr_custo: TBCDField
      FieldName = 'pr_custo'
      Precision = 7
      Size = 2
    end
    object ADODsDadosvl_custo: TBCDField
      FieldName = 'vl_custo'
      Precision = 12
      Size = 2
    end
    object ADODsDadoscd_tabela: TStringField
      FieldName = 'cd_tabela'
      Size = 10
    end
    object ADODsDadosdp_situacao: TStringField
      FieldKind = fkCalculated
      FieldName = 'dp_situacao'
      Calculated = True
    end
    object ADODsDadosfl_formapagto: TStringField
      FieldName = 'fl_formapagto'
      FixedChar = True
      Size = 1
    end
    object ADODsDadosdp_pagamento: TStringField
      FieldKind = fkCalculated
      FieldName = 'dp_pagamento'
      Calculated = True
    end
    object ADODsDadosnr_fatura: TIntegerField
      FieldName = 'nr_fatura'
    end
    object ADODsDadosvl_ipi: TBCDField
      FieldName = 'vl_ipi'
      Precision = 12
      Size = 2
    end
    object ADODsDadosnr_receber: TIntegerField
      FieldName = 'nr_receber'
    end
    object ADODsDadosVl_Total: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Vl_Total'
      Calculated = True
    end
    object ADODsDadoscd_portador: TSmallintField
      FieldName = 'cd_portador'
    end
    object ADODsDadosnr_ecf: TIntegerField
      FieldName = 'nr_ecf'
    end
    object ADODsDadosFl_Contribuinte: TStringField
      FieldName = 'Fl_Contribuinte'
      FixedChar = True
      Size = 1
    end
    object ADODsDadosDt_Fatura: TDateTimeField
      FieldName = 'Dt_Fatura'
    end
    object ADODsDadosFl_Frete: TStringField
      FieldName = 'Fl_Frete'
      FixedChar = True
      Size = 1
    end
    object ADODsDadosDs_Quantidade: TStringField
      FieldName = 'Ds_Quantidade'
    end
    object ADODsDadosDs_Especie: TStringField
      FieldName = 'Ds_Especie'
    end
    object ADODsDadosDs_Marca: TStringField
      FieldName = 'Ds_Marca'
    end
    object ADODsDadosVl_STB: TBCDField
      FieldName = 'Vl_STB'
      Precision = 12
      Size = 2
    end
    object ADODsDadosFl_Impresso: TStringField
      FieldName = 'Fl_Impresso'
      FixedChar = True
      Size = 1
    end
    object ADODsDadosNr_Juncao: TIntegerField
      FieldName = 'Nr_Juncao'
    end
    object ADODsDadosVl_Baseicms: TBCDField
      FieldName = 'Vl_Baseicms'
      Precision = 12
      Size = 2
    end
    object ADODsDadosPr_Icms: TBCDField
      FieldName = 'Pr_Icms'
      Precision = 12
      Size = 2
    end
    object ADODsDadosVl_Icms: TBCDField
      FieldName = 'Vl_Icms'
      Precision = 12
      Size = 2
    end
    object ADODsDadosVl_BaseST: TBCDField
      FieldName = 'Vl_BaseST'
      Precision = 12
      Size = 3
    end
    object ADODsDadosCd_Cfop: TStringField
      FieldName = 'Cd_Cfop'
      FixedChar = True
      Size = 4
    end
    object ADODsDadosCd_Transportador: TSmallintField
      FieldName = 'Cd_Transportador'
    end
    object ADODsDadosMm_Nota: TMemoField
      FieldName = 'Mm_Nota'
      BlobType = ftMemo
    end
    object ADODsDadosNr_Entrega: TSmallintField
      FieldName = 'Nr_Entrega'
    end
    object ADODsDadosDp_Emitente: TStringField
      FieldKind = fkCalculated
      FieldName = 'Dp_Emitente'
      Size = 83
      Calculated = True
    end
    object ADODsDadosNm_Fantasia: TStringField
      FieldName = 'Nm_Fantasia'
      Size = 30
    end
    object ADODsDadosMm_Observacao: TMemoField
      FieldName = 'Mm_Observacao'
      BlobType = ftMemo
    end
    object ADODsDadosFl_ConFinal: TStringField
      FieldName = 'Fl_ConFinal'
      FixedChar = True
      Size = 1
    end
  end
  object DsProduto: TDataSource
    DataSet = ADODsProduto
    Left = 120
    Top = 339
  end
  object ADODsProduto: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    OnCalcFields = ADODsProdutoCalcFields
    CommandText = 'select'#13#10'  OI.Cd_Filial, OI.Nr_Orcamento, OI.Nr_Item, OI.Cd_Produto, OI.Nm_Produto,'#13#10'  OI.Sg_Unidade, OI.Qt_Item, OI.Vl_Unitario, OI.Fl_Confirmado, OI.Qt_Estoque,'#13#10'  OI.Pr_Margem, OI.Qt_Agregado, OI.Pr_Reducao, OI.Fl_STB, P.Sg_Venda,'#13#10'  P.Nm_Produto as Nm_ProdEstoque, P.Sg_Estoque, OI.Ps_Produto, P.Nm_Abreviado,'#13#10'  P.Fl_Produto, P.Pr_Vendedor, OI.Nr_Lote, OI.Dt_Fabricacao, OI.Dt_Validade,'#13#10'  P.Fl_Lote, OI.Cd_SubProduto, OI.Ds_Ambiente, OI.Fl_Medida, OI.Im_SubProduto,'#13#10'  P.Fl_Perecivel, G.Fl_Moldura, OI.xPed, OI.nItemPed'#13#10#13#10'from'#13#10'  Orcamento_Item OI'#13#10#13#10'left join'#13#10'  Produto P'#13#10'on'#13#10'  P.Cd_Produto = OI.Cd_Produto'#13#10#13#10'left join'#13#10'  Grupo G'#13#10'on'#13#10'  G.Cd_Grupo = P.Cd_Grupo'#13#10#13#10'where'#13#10'  OI.Cd_Filial    = :Cd_Filial and'#13#10'  OI.Nr_Orcamento = :Nr_Orcamento'#13#10#13#10'order by'#13#10'  OI.Nr_Item desc'
    Parameters = <
      item
        Name = 'Cd_Filial'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = 1
      end
      item
        Name = 'Nr_Orcamento'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 160
      end>
    Left = 150
    Top = 339
    object ADODsProdutocd_filial: TSmallintField
      FieldName = 'cd_filial'
    end
    object ADODsProdutonr_orcamento: TIntegerField
      FieldName = 'nr_orcamento'
    end
    object ADODsProdutonr_item: TSmallintField
      FieldName = 'nr_item'
    end
    object ADODsProdutocd_produto: TIntegerField
      FieldName = 'cd_produto'
    end
    object ADODsProdutonm_produto: TStringField
      FieldName = 'nm_produto'
      Size = 120
    end
    object ADODsProdutosg_unidade: TStringField
      DisplayLabel = 'Unid.'
      FieldName = 'sg_unidade'
      FixedChar = True
      Size = 2
    end
    object ADODsProdutoqt_item: TBCDField
      DisplayLabel = 'Quantidade'
      FieldName = 'qt_item'
      Precision = 12
      Size = 3
    end
    object ADODsProdutovl_unitario: TBCDField
      DisplayLabel = 'Unit'#225'rio'
      FieldName = 'vl_unitario'
      DisplayFormat = '#,##0.00'
      Precision = 12
      Size = 3
    end
    object ADODsProdutofl_confirmado: TStringField
      FieldName = 'fl_confirmado'
      FixedChar = True
      Size = 1
    end
    object ADODsProdutoqt_estoque: TBCDField
      FieldName = 'qt_estoque'
      Precision = 12
      Size = 3
    end
    object ADODsProdutopr_margem: TBCDField
      DisplayLabel = 'Margem'
      FieldName = 'pr_margem'
      DisplayFormat = '#,##0.00'
      Precision = 9
      Size = 2
    end
    object ADODsProdutoqt_agregado: TBCDField
      FieldName = 'qt_agregado'
      Precision = 9
      Size = 3
    end
    object ADODsProdutopr_reducao: TBCDField
      FieldName = 'pr_reducao'
      Precision = 7
      Size = 2
    end
    object ADODsProdutofl_stb: TStringField
      FieldName = 'fl_stb'
      FixedChar = True
      Size = 1
    end
    object ADODsProdutosg_venda: TStringField
      FieldName = 'sg_venda'
      FixedChar = True
      Size = 2
    end
    object ADODsProdutonm_prodestoque: TStringField
      DisplayLabel = 'Produto'
      FieldName = 'nm_prodestoque'
      Size = 120
    end
    object ADODsProdutosg_estoque: TStringField
      FieldName = 'sg_estoque'
      FixedChar = True
      Size = 2
    end
    object ADODsProdutops_produto: TBCDField
      FieldName = 'ps_produto'
      Precision = 18
      Size = 3
    end
    object ADODsProdutonm_abreviado: TStringField
      FieldName = 'nm_abreviado'
      Size = 40
    end
    object ADODsProdutofl_produto: TStringField
      FieldName = 'fl_produto'
      FixedChar = True
      Size = 1
    end
    object ADODsProdutoDp_Produto: TStringField
      DisplayLabel = 'Produto'
      FieldKind = fkCalculated
      FieldName = 'Dp_Produto'
      Size = 120
      Calculated = True
    end
    object ADODsProdutoVl_Total: TFloatField
      DisplayLabel = 'Total'
      FieldKind = fkCalculated
      FieldName = 'Vl_Total'
      DisplayFormat = '#,##0.00'
      Calculated = True
    end
    object ADODsProdutopr_vendedor: TBCDField
      FieldName = 'pr_vendedor'
      Precision = 9
      Size = 2
    end
    object ADODsProdutoNr_Lote: TStringField
      FieldName = 'Nr_Lote'
      Size = 15
    end
    object ADODsProdutoDt_Fabricacao: TDateTimeField
      FieldName = 'Dt_Fabricacao'
    end
    object ADODsProdutoDt_Validade: TDateTimeField
      FieldName = 'Dt_Validade'
    end
    object ADODsProdutoFl_Lote: TStringField
      FieldName = 'Fl_Lote'
      FixedChar = True
      Size = 1
    end
    object ADODsProdutoCd_SubProduto: TSmallintField
      FieldName = 'Cd_SubProduto'
    end
    object ADODsProdutoDs_Ambiente: TStringField
      FieldName = 'Ds_Ambiente'
      Size = 50
    end
    object ADODsProdutoFl_Medida: TStringField
      FieldName = 'Fl_Medida'
      FixedChar = True
      Size = 1
    end
    object ADODsProdutoIm_SubProduto: TBlobField
      FieldName = 'Im_SubProduto'
    end
    object ADODsProdutoFl_Perecivel: TStringField
      FieldName = 'Fl_Perecivel'
      FixedChar = True
      Size = 1
    end
    object ADODsProdutoFl_Moldura: TStringField
      FieldName = 'Fl_Moldura'
      FixedChar = True
      Size = 1
    end
    object ADODsProdutoxPed: TStringField
      FieldName = 'xPed'
    end
    object ADODsProdutonItemPed: TSmallintField
      FieldName = 'nItemPed'
    end
  end
  object ADODsNavegar: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = '-- First'#13#10'select top 1'#13#10'  Nr_Orcamento'#13#10#13#10'from'#13#10'  Orcamento'#13#10#13#10'where'#13#10'  Cd_Filial = :Cd_Filial'#13#10'order by'#13#10'  Nr_Orcamento'#13#10
    Parameters = <
      item
        Name = 'Cd_Filial'
        DataType = ftSmallint
        Size = -1
        Value = nil?
      end>
    SQLPrimary.Strings = (
      'select'
      '  max( Nr_Orcamento ) as Nr_Orcamento'
      ''
      'from'
      '  Orcamento'
      ''
      'where'
      '  Cd_Filial = :Cd_Filial'
    )
    SQLOther0.Strings = (
      '-- First'
      'select top 1'
      '  Nr_Orcamento'
      ''
      'from'
      '  Orcamento'
      ''
      'where'
      '  Cd_Filial = :Cd_Filial'
      '  '
      'order by'
      '  Nr_Orcamento'
    )
    SQLOther1.Strings = (
      '-- Prior'
      'select top 1'
      '  Nr_Orcamento'
      ''
      'from'
      '  Orcamento'
      ''
      'where'
      '  Cd_Filial    = :Cd_Filial and'
      '  Nr_Orcamento < :Nr_Orcamento'
      ''
      'order by'
      '  Nr_Orcamento desc'
    )
    SQLOther2.Strings = (
      '-- Next'
      'select top 1'
      '  Nr_Orcamento'
      ''
      'from'
      '  Orcamento'
      ''
      'where'
      '  Cd_Filial    = :Cd_Filial and'
      '  Nr_Orcamento > :Nr_Orcamento'
      ''
      'order by'
      '  Nr_Orcamento'
    )
    SQLOther3.Strings = (
      '-- Last'
      'select top 1'
      '  Nr_Orcamento'
      ''
      'from'
      '  Orcamento'
      ''
      'where'
      '  Cd_Filial = :Cd_Filial'
      '  '
      'order by'
      '  Nr_Orcamento desc'
    )
    SQLOther4.Strings = (
      '--------------- Verifica se tem NFe para processamento'
      'select '
      '  Nr_Origem as Nr_Orcamento'
      ''
      'from'
      '  NFe'
      ''
      'where'
      '  Cd_Filial = :Cd_Filial and'
      '  Fl_Origem = ''''1'''' and'
      '  Nr_Origem = :Nr_Orcamento'
    )
    Left = 91
    Top = 339
    object ADODsNavegarnr_orcamento: TIntegerField
      FieldName = 'nr_orcamento'
    end
  end
  object ADODsEmitente: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  E.Cd_Emitente, E.Nm_Emitente, E.Cd_Credito, E.Mm_Restricao,'#13#10'  E.Nr_Endereco, E.Fl_Contribuinte, EA.Pr_Contribuinte, EA.Pr_NaoContrib,'#13#10'  E.Fl_Exportador, EC.Nm_Emitente as Nm_Credito,'#13#10'  Cast( E.Cd_Credito as VarChar( 8 ) ) + '''' - '''' + EC.Nm_Emitente as Dp_Credito,'#13#10'  EC.Mm_Restricao as Mm_Restricao_Titular, C.Sg_Estado,'#13#10'  E.Cd_Funcionario, F.Nm_Funcionario, ESG.Cd_Tabela, E.Mm_Nota, '#13#10'  E.Pr_Desconto, E.Nm_Fantasia,'#13#10#13#10'  E.Nr_Documento, EE.Ds_Endereco, EE.Nm_Bairro, EE.Nr_CEP, '#13#10'  E.Nr_Insc_Estadual, E.Fl_ConFinal'#13#10#13#10'from'#13#10'  Emitente E'#13#10#13#10'inner join'#13#10'  Emitente EC'#13#10'on'#13#10'  EC.Cd_Emitente = E.Cd_Credito'#13#10#13#10'inner join'#13#10'  Emitente_SubGrupo ESG'#13#10'on'#13#10'  ESG.Cd_SubGrupo = E.Cd_SubGrupo'#13#10#13#10'left join'#13#10'  Emitente_Endereco EE'#13#10'on'#13#10'  EE.Cd_Emitente = E.Cd_Emitente and'#13#10'  EE.Nr_Endereco = E.Nr_Endereco'#13#10#13#10'left join'#13#10'  Cidade C'#13#10'on'#13#10'  C.Cd_Cidade = EE.Cd_Cidade'#13#10#13#10'left join'#13#10'  Estado_Aliquota EA'#13#10'on'#13#10'  EA.Sg_Origem  = :Sg_Origem and'#13#10'  EA.Sg_Destino = C.Sg_Estado'#13#10#13#10'left join'#13#10'  Funcionario F'#13#10'on'#13#10'  F.Cd_Funcionario = E.Cd_Funcionario'#13#10#13#10'where'#13#10'  E.Cd_Emitente = :Cd_Emitente'
    Parameters = <
      item
        Name = 'Sg_Origem'
        DataType = ftString
        Size = 1
        Value = ' '
      end
      item
        Name = 'Cd_Emitente'
        DataType = ftInteger
        Size = -1
        Value = 0
      end>
    Left = 181
    Top = 339
    object ADODsEmitentecd_emitente: TIntegerField
      FieldName = 'cd_emitente'
    end
    object ADODsEmitentenm_emitente: TStringField
      FieldName = 'nm_emitente'
      Size = 50
    end
    object ADODsEmitentecd_credito: TIntegerField
      FieldName = 'cd_credito'
    end
    object ADODsEmitentenr_endereco: TSmallintField
      FieldName = 'nr_endereco'
    end
    object ADODsEmitentefl_contribuinte: TStringField
      FieldName = 'fl_contribuinte'
      FixedChar = True
      Size = 1
    end
    object ADODsEmitentepr_contribuinte: TBCDField
      FieldName = 'pr_contribuinte'
      Precision = 9
      Size = 2
    end
    object ADODsEmitentepr_naocontrib: TBCDField
      FieldName = 'pr_naocontrib'
      Precision = 9
      Size = 2
    end
    object ADODsEmitentefl_exportador: TStringField
      FieldName = 'fl_exportador'
      FixedChar = True
      Size = 1
    end
    object ADODsEmitentenm_credito: TStringField
      FieldName = 'nm_credito'
      Size = 50
    end
    object ADODsEmitentedp_credito: TStringField
      FieldName = 'dp_credito'
      Size = 254
    end
    object ADODsEmitentesg_estado: TStringField
      FieldName = 'sg_estado'
      FixedChar = True
      Size = 2
    end
    object ADODsEmitentecd_funcionario: TSmallintField
      FieldName = 'cd_funcionario'
    end
    object ADODsEmitentenm_funcionario: TStringField
      FieldName = 'nm_funcionario'
      Size = 50
    end
    object ADODsEmitenteMm_Restricao: TMemoField
      FieldName = 'Mm_Restricao'
      BlobType = ftMemo
    end
    object ADODsEmitenteMm_Restricao_Titular: TMemoField
      FieldName = 'Mm_Restricao_Titular'
      BlobType = ftMemo
    end
    object ADODsEmitenteCd_Tabela: TStringField
      FieldName = 'Cd_Tabela'
      Size = 10
    end
    object ADODsEmitenteMm_Nota: TMemoField
      FieldName = 'Mm_Nota'
      BlobType = ftMemo
    end
    object ADODsEmitentePr_Desconto: TBCDField
      FieldName = 'Pr_Desconto'
      Precision = 9
      Size = 3
    end
    object ADODsEmitenteNr_Documento: TStringField
      FieldName = 'Nr_Documento'
      Size = 14
    end
    object ADODsEmitenteDs_Endereco: TStringField
      FieldName = 'Ds_Endereco'
      Size = 50
    end
    object ADODsEmitenteNr_CEP: TStringField
      FieldName = 'Nr_CEP'
      FixedChar = True
      Size = 8
    end
    object ADODsEmitenteNr_Insc_Estadual: TStringField
      FieldName = 'Nr_Insc_Estadual'
    end
    object ADODsEmitenteNm_Bairro: TStringField
      FieldName = 'Nm_Bairro'
      Size = 30
    end
    object ADODsEmitenteNm_Fantasia: TStringField
      FieldName = 'Nm_Fantasia'
      Size = 30
    end
    object ADODsEmitenteFl_ConFinal: TStringField
      FieldName = 'Fl_ConFinal'
      FixedChar = True
      Size = 1
    end
  end
  object ADOCmdDados: TMultADOCMD
    CommandText = 'insert into Orcamento( Cd_Filial, Nr_Orcamento, Dt_Emissao, St_Orcamento,'#13#10'  Tp_Carga, Cd_Emitente, Cd_Funcionario, Fl_FormaPagto, Nr_Endereco,'#13#10'  Cd_Tabela, Pr_ICMS, Pr_Desconto, Vl_Desconto, Pr_Custo, Vl_Custo,'#13#10'  Vl_Coleta_Frete, Vl_Pedido_Frete )'#13#10#13#10'values( :Cd_Filial, :Nr_Orcamento, :Dt_Emissao, ''''1'''', :Tp_Carga,'#13#10'  :Cd_Emitente, :Cd_Funcionario, :Fl_FormaPagto, :Nr_Endereco,'#13#10'  :Cd_Tabela, :Pr_ICMS, :Pr_Desconto, :Vl_Desconto, :Pr_Custo, :Vl_Custo,'#13#10'  :Vl_Coleta_Frete, :Vl_Pedido_Frete )'#13#10
    Connection = FrmMain.ADOConMaster
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
      end
      item
        Name = 'Dt_Emissao'
        DataType = ftDateTime
        Precision = 16
        Size = 16
        Value = nil?
      end
      item
        Name = 'Fl_Estoque'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 1
        Value = nil?
      end
      item
        Name = 'Tp_Carga'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 1
        Value = nil?
      end
      item
        Name = 'Cd_Emitente'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = nil?
      end
      item
        Name = 'Cd_Funcionario'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = nil?
      end
      item
        Name = 'Fl_FormaPagto'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 1
        Value = nil?
      end
      item
        Name = 'Nr_Endereco'
        Attributes = [paSigned, paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = nil?
      end
      item
        Name = 'Cd_Tabela'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = nil?
      end
      item
        Name = 'Pr_ICMS'
        Attributes = [paSigned, paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 12
        Size = 19
        Value = nil?
      end
      item
        Name = 'Pr_Desconto'
        Attributes = [paSigned, paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 7
        Size = 19
        Value = nil?
      end
      item
        Name = 'Vl_Desconto'
        Attributes = [paSigned, paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 12
        Size = 19
        Value = nil?
      end
      item
        Name = 'Pr_Custo'
        Attributes = [paSigned, paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 7
        Size = 19
        Value = nil?
      end
      item
        Name = 'Vl_Custo'
        Attributes = [paSigned, paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 12
        Size = 19
        Value = nil?
      end
      item
        Name = 'Vl_Coleta_Frete'
        Attributes = [paSigned, paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 12
        Size = 19
        Value = nil?
      end
      item
        Name = 'Vl_Pedido_Frete'
        Attributes = [paSigned, paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 12
        Size = 19
        Value = nil?
      end>
    SQLSelect.Strings = (
      '-- Grava o n'#250'mero do cupom'
      'update'
      '  Orcamento'
      ''
      'set'
      '  Nr_ECF = :Nr_ECF'
      ''
      'where'
      '  Cd_Filial    = :Cd_Filial and'
      '  Nr_Orcamento = :Nr_Orcamento'
    )
    SQLInsert.Strings = (
      'insert into Orcamento( Cd_Filial, Nr_Orcamento, Dt_Emissao, St_Orcamento,'
      '  Tp_Carga, Cd_Emitente, Cd_Funcionario, Fl_FormaPagto, Nr_Endereco,'
      '  Cd_Tabela, Pr_ICMS, Pr_Desconto, Vl_Desconto, Pr_Custo, Vl_Custo,'
      '  Vl_Coleta_Frete, Vl_Pedido_Frete, Cd_Usuario, Mm_Nota,'
      '  Nr_Entrega, Fl_Frete, Fl_ConFinal )'
      ''
      'values( :Cd_Filial, :Nr_Orcamento, :Dt_Emissao, ''''1'''', :Tp_Carga,'
      '  :Cd_Emitente, :Cd_Funcionario, :Fl_FormaPagto, :Nr_Endereco,'
      '  :Cd_Tabela, :Pr_ICMS, :Pr_Desconto, :Vl_Desconto, :Pr_Custo, :Vl_Custo,'
      '  :Vl_Coleta_Frete, :Vl_Pedido_Frete, :Cd_Usuario, :Mm_Nota,'
      '  :Nr_Entrega, :Fl_Frete, :Fl_ConFinal )'
    )
    SQLUpdate.Strings = (
      'update'
      '  Orcamento'
      ''
      'set'
      '  Dt_Emissao         = :Dt_Emissao,'
      '  Tp_Carga           = :Tp_Carga,'
      '  Cd_Emitente        = :Cd_Emitente,'
      '  Nr_Endereco        = :Nr_Endereco,'
      '  Cd_Funcionario     = :Cd_Funcionario,'
      '  Cd_Tabela          = :Cd_Tabela,'
      '  Pr_ICMS            = :Pr_ICMS,'
      '  Cd_Usuario         = :Cd_Usuario,'
      '  Pr_Desconto        = :Pr_Desconto,'
      '  Vl_Desconto        = :Vl_Desconto,'
      '  Nr_Entrega         = :Nr_Entrega'
      ''
      'where'
      '  Cd_Filial    = :Cd_Filial and'
      '  Nr_Orcamento = :Nr_Orcamento'
    )
    SQLDelete.Strings = (
      '/* Muda a situa'#231#227'o do or'#231'amento */'
      'update'
      '  Orcamento'
      ''
      'set'
      '  St_Orcamento = ''''9'''','
      '  Dt_Fatura    = :Dt_Fatura'
      ''
      'where'
      '  Cd_Filial    = :Cd_Filial and'
      '  Nr_Orcamento = :Nr_Orcamento'
    )
    SQLPrimary.Strings = (
      '-- Inclui as parcelas do parcelamento a prazo'
      'insert into Orcamento_Parcela( Cd_Filial, Nr_Orcamento, Nr_Prazo, Cd_Portador,'
      '   Dt_Vencimento, Vl_Parcela )'
      'select'
      '  Cd_Filial, :Nr_Orcamento, Nr_Prazo, Cd_Portador, Dt_Vencimento, Vl_Parcela'
      ''
      'from'
      '  Orc_Par_Tmp'
    )
    SQLOther0.Strings = (
      '-- Excluir parcela do or'#231'amento'
      'delete from'
      '  Orcamento_Parcela'
      ''
      'where'
      '  Cd_Filial    = :Cd_Filial and'
      '  Nr_Orcamento = :Nr_Orcamento and'
      '  Nr_Prazo     = :Nr_Prazo'
    )
    SQLOther1.Strings = (
      '--------------- Excluir item do or'#231'amento'
      'declare'
      '  @Cd_Filial SmallInt,'
      '  @Nr_Orcamento Int,'
      '  @Nr_Item SmallInt'
      ''
      'select'
      '  @Cd_Filial    = :Cd_Filial,'
      '  @Nr_Orcamento = :Nr_Orcamento,'
      '  @Nr_Item      = :Nr_Item'
      ''
      'delete from'
      '  Orcamento_Item'
      ''
      'where'
      '  Cd_Filial    = @Cd_Filial and'
      '  Nr_Orcamento = @Nr_Orcamento and'
      '  Nr_Item      = @Nr_Item'
      ''
      '--------------- Corrige a ordem dos itens - 09/10/2012'
      'update'
      '  Orcamento_Item'
      ''
      'set'
      '  Nr_Item = Nr_Item - 1'
      ''
      'where'
      '  Cd_Filial    = @Cd_Filial and'
      '  Nr_Orcamento = @Nr_Orcamento and'
      '  Nr_Item      > @Nr_Item'
    )
    SQLOther2.Strings = (
      '-- Atualizar dados do or'#231'amentento'
      'execute Orcamento_Update :Cd_Filial, :Nr_Orcamento,  :Pr_ICMS,'
      '  :Fl_Exportador, :Fl_ReduzICMS, :Fl_Contribuinte, :Cd_Tabela, :Fl_Parcelar,'
      '  :Vl_Frete'
    )
    SQLOther3.Strings = (
      '-- Excluir todas as parcelas do or'#231'amento'
      'delete from'
      '  Orcamento_Parcela'
      ''
      'where'
      '  Cd_Filial    = :Cd_Filial and'
      '  Nr_Orcamento = :Nr_Orcamento '
    )
    SQLOther4.Strings = (
      '-- Altera a situa'#231#227'o de produto selecionado no estoque'
      'update'
      '  Orcamento_Item'
      ''
      'set'
      '  Fl_Confirmado = :Fl_Confirmado'
      ''
      'where'
      '  Cd_Filial    = :Cd_Filial and'
      '  Nr_Orcamento = :Nr_Orcamento and'
      '  Nr_Item      = :Nr_Item'
    )
    SQLOther5.Strings = (
      '-- Altera'#231#227'o do valor das parcelas'
      'update'
      '  Orcamento_Parcela'
      ''
      'set'
      '  Vl_Parcela = :Vl_Parcela'
      ''
      'where'
      '  Cd_Filial    = :Cd_Filial and'
      '  Nr_Orcamento = :Nr_Orcamento and'
      '  Nr_Prazo     = :Nr_Prazo'
    )
    SQLOther6.Strings = (
      '-- Atualiza'#231#227'o do situa'#231#227'o do or'#231'amento'
      'execute Orcamento_Situacao :Cd_Filial, :Nr_Orcamento, :St_New, :St_Old, :Dt_Confirmado '
    )
    SQLOther7.Strings = (
      '-- Atribui'#231#227'o de estoque te'#243'rico'
      'update'
      '  Orcamento_Item'
      ''
      'set'
      '  Qt_Estoque ='
      '    case'
      '      when Cd_Produto is null then Qt_Item'
      '      else Qt_Item * Coalesce('
      '      ('
      '      select'
      '        Nr_Fator'
      ''
      '      from'
      '        Produto_Unidade PU'
      ''
      '      where'
      '        PU.Cd_Produto = Orcamento_Item.Cd_Produto and'
      '        PU.Sg_Unidade = Orcamento_Item.Sg_Unidade'
      '      ), 1.0 )'
      ''
      '    end'
      ''
      'where'
      '  Cd_Filial    = :Cd_Filial and'
      '  Nr_Orcamento = :Nr_Orcamento'
    )
    SQLOther8.Strings = (
      '-- Cria a table para parcelamento a vista'
      'create temporary table orc_par_tmp'
      '  ('
      '  cd_filial smallint not null,'
      '  nr_orcamento int not null,'
      '  nr_prazo smallint not null,'
      '  cd_portador smallint not null,'
      '  dt_vencimento date,'
      '  vl_parcela numeric( 12, 2 ),'
      '  constraint orc_par_tmp_pkey primary key ( cd_filial, nr_orcamento, nr_prazo )'
      '  );'
    )
    SQLOther9.Strings = (
      'delete from'
      '  Orc_Par_Tmp'
    )
    Left = 62
    Top = 339
  end
  object ActManCadastro: TActionManager
    ActionBars = <
      item
        Items = <
          item
            Action = ActFirst
            ImageIndex = 19
          end
          item
            Action = ActPrior
            ImageIndex = 12
          end
          item
            Action = ActNext
            ImageIndex = 13
          end
          item
            Action = ActLast
            ImageIndex = 14
          end
          item
            Action = ActInsert
            ImageIndex = 15
            ShortCut = 113
          end
          item
            Action = ActEdit
            ImageIndex = 16
            ShortCut = 115
          end
          item
            Action = ActFind
            ShortCut = 114
          end
          item
            Items = <
              item
                Action = ActRepEstoque
              end>
            Action = ActReport
            ImageIndex = 18
            ShortCut = 117
          end>
      end
      item
        Items = <
          item
            Action = ActLast
            ImageIndex = 14
          end
          item
            Action = ActNext
            ImageIndex = 13
          end
          item
            Action = ActPrior
            ImageIndex = 12
          end
          item
            Action = ActFind
            ShortCut = 114
          end
          item
            Action = ActEdit
            ImageIndex = 16
            ShortCut = 115
          end
          item
            Action = ActInsert
            ImageIndex = 15
            ShortCut = 113
          end
          item
            Action = ActFirst
            ImageIndex = 19
          end
          item
            Action = ActReport
            ImageIndex = 18
            ShortCut = 117
          end>
      end
      item
        Items = <
          item
            Action = ActFirst
            ImageIndex = 12
          end
          item
            Action = ActPrior
            ImageIndex = 13
          end
          item
            Action = ActNext
            ImageIndex = 14
          end
          item
            Action = ActLast
            ImageIndex = 15
          end>
      end
      item
      end
      item
        Items = <
          item
            Action = ActInsert
            ImageIndex = 16
            ShortCut = 113
          end
          item
            Action = ActEdit
            ImageIndex = 17
            ShortCut = 115
          end
          item
            Action = ActFind
            ImageIndex = 18
            ShortCut = 114
          end
          item
            Action = ActReport
            ImageIndex = 20
            ShortCut = 117
          end>
      end
      item
        Items = <
          item
            Action = ActFirst
            ImageIndex = 12
          end
          item
            Action = ActPrior
            ImageIndex = 13
          end
          item
            Action = ActNext
            ImageIndex = 14
          end
          item
            Action = ActLast
            ImageIndex = 15
          end>
      end
      item
        Items = <
          item
            Action = ActFirst
            ImageIndex = 12
          end
          item
            Action = ActPrior
            ImageIndex = 13
          end
          item
            Action = ActNext
            ImageIndex = 14
          end
          item
            Action = ActLast
            ImageIndex = 15
          end
          item
            Caption = '-'
          end
          item
            Action = ActInsert
            ImageIndex = 16
            ShortCut = 113
          end
          item
            Action = ActFind
            ImageIndex = 17
            ShortCut = 114
          end
          item
            Action = ActEdit
            ImageIndex = 18
            ShortCut = 115
          end
          item
            Action = ActReport
            ImageIndex = 20
            ShortCut = 117
          end
          item
            Caption = '-'
          end
          item
            Action = ActConfirm
            ImageIndex = 22
            ShortCut = 118
          end
          item
            Action = ActRedo
            ImageIndex = 38
            ShortCut = 120
          end
          item
            Action = ActEstoque
            ImageIndex = 26
          end
          item
            Action = ActFatura
            ImageIndex = 40
            ShortCut = 121
          end
          item
            Action = ActContato
            ImageIndex = 25
          end
          item
            Action = ActOptions
            ImageIndex = 1
          end>
      end
      item
      end
      item
        Items = <
          item
            Action = ActFirst
            ImageIndex = 12
          end
          item
            Action = ActPrior
            ImageIndex = 13
          end
          item
            Action = ActNext
            ImageIndex = 14
          end
          item
            Action = ActLast
            ImageIndex = 15
          end
          item
            Caption = '-'
          end
          item
            Action = ActInsert
            ImageIndex = 16
            ShortCut = 113
          end
          item
            Action = ActFind
            ImageIndex = 17
            ShortCut = 114
          end
          item
            Action = ActEdit
            ImageIndex = 18
            ShortCut = 115
          end
          item
            Action = ActReport
            ImageIndex = 20
            ShortCut = 117
          end
          item
            Caption = '-'
          end
          item
            Action = ActCancel
            ImageIndex = 21
            ShortCut = 119
          end
          item
            Action = ActConfirm
            ImageIndex = 22
            ShortCut = 118
          end
          item
            Action = ActRedo
            ImageIndex = 38
            ShortCut = 120
          end
          item
            Action = ActEstoque
            ImageIndex = 26
          end
          item
            Action = ActFatura
            ImageIndex = 40
            ShortCut = 121
          end
          item
            Action = ActContato
            ImageIndex = 25
          end
          item
            Action = ActOptions
            ImageIndex = 1
          end>
      end
      item
        Items = <
          item
            Action = ActLast
            ImageIndex = 15
          end
          item
            Action = ActNext
            ImageIndex = 14
          end
          item
            Action = ActPrior
            ImageIndex = 13
          end
          item
            Caption = '-'
          end
          item
            Action = ActFirst
            ImageIndex = 12
          end>
      end
      item
        Items = <
          item
            Items = <
              item
                Action = ActReceber
              end
              item
                Action = ActFaturaInfo
              end>
            Caption = ' '
            ImageIndex = 1
          end>
      end
      item
        Items = <
          item
            Action = ActFirst
            ImageIndex = 12
          end
          item
            Action = ActPrior
            ImageIndex = 13
          end
          item
            Action = ActNext
            ImageIndex = 14
          end
          item
            Action = ActLast
            ImageIndex = 15
          end
          item
            Caption = '-'
          end
          item
            Items = <
              item
                Action = ActCopia
                Caption = '&C'#243'piar Or'#231'amento...'
                ImageIndex = 16
              end>
            Action = ActInsert
            ImageIndex = 16
            ShortCut = 113
          end
          item
            Action = ActFind
            ImageIndex = 17
            ShortCut = 114
          end
          item
            Action = ActEdit
            ImageIndex = 18
            ShortCut = 115
          end
          item
            Items = <
              item
                Action = ActRepEstoque
                Caption = '&Ordem de Estoque'
                ImageIndex = 20
              end
              item
                Action = ActOrdemServico
                Caption = 'O&rdem de Servi'#231'o...'
                ImageIndex = 20
              end
              item
                Action = ActEtiqueta
                Caption = '&Etiquetas...'
                ImageIndex = 20
              end
              item
                Tag = 2
                Action = SctRepCopia
                Caption = '&C'#243'pia do Or'#231'amento...'
                ImageIndex = 20
              end>
            Action = ActReport
            ImageIndex = 20
            ShortCut = 117
          end
          item
            Caption = '-'
          end
          item
            Action = ActFechamento
            ImageIndex = 5
            ShortCut = 16502
          end
          item
            Action = ActConfirm
            ImageIndex = 22
            ShortCut = 118
          end
          item
            Action = ActDividir
            ImageIndex = 47
          end
          item
            Items = <
              item
                Action = ActJuncaoOrc
                Caption = '&Jun'#231#227'o por Or'#231'amento...'
                ImageIndex = 48
              end>
            Action = ActJuncao
            ImageIndex = 48
          end
          item
            Action = ActEstoque
            ImageIndex = 26
          end
          item
            Action = ActCancel
            ImageIndex = 21
            ShortCut = 119
          end
          item
            Action = ActRedo
            ImageIndex = 38
            ShortCut = 120
          end
          item
            Action = ActPagamento
            ImageIndex = 39
          end
          item
            Caption = '-'
          end
          item
            Items = <
              item
                Action = ActContatoNew
                Caption = '&Incluir Novo Contato para o or'#231'amento'
                ImageIndex = 25
              end>
            Action = ActContato
            ImageIndex = 25
          end
          item
            Action = ActFatura
            ImageIndex = 40
            ShortCut = 121
          end
          item
            Caption = '-'
          end
          item
            Action = ActShow
            ImageIndex = 36
          end
          item
            Items = <
              item
                Action = ActReceber
                Caption = '&Contas '#224' Receber...'
                ImageIndex = 39
              end
              item
                Action = ActFaturaInfo
                Caption = '&Informar Dados da Fatura...'
                ImageIndex = 59
              end
              item
                Visible = False
                Action = ActReCupom
                Caption = '&Re-Emitir Cupom Fiscal...'
                ImageIndex = 45
              end
              item
                Action = ActReNota
                Caption = 'R&e-Emitir Nota...'
                ImageIndex = 20
              end
              item
                Action = ActConsignacao
                Caption = '&Nota de Consigna'#231#227'o...'
                ImageIndex = 50
              end
              item
                Action = ActNotaSR
                Caption = 'N&ota de Simples Remessa...'
                ImageIndex = 43
              end
              item
                Action = ActSaidaCopiar
                Caption = 'Co&piar para Saida do Estoque...'
                ImageIndex = 34
              end
              item
                Action = ActProducao
                Caption = 'A&loca'#231#227'o em Processo de Produ'#231#227'o...'
                ImageIndex = 43
              end
              item
                Action = ActCarga
                Caption = '&Aloca'#231#227'o em Cargas...'
                ImageIndex = 52
              end
              item
                Action = ActNFe
                Caption = '&Gerar NFe...'
                ImageIndex = 10
              end
              item
                Action = ActNFCe
                Caption = 'Ge&rar NFC-e...'
                ImageIndex = 8
              end
              item
                Action = ActImportRTO
                ImageIndex = 34
              end>
            Caption = '&Ferramentas'
            ImageIndex = 1
            ShowCaption = False
          end>
        ActionBar = ActToolBDatabase
      end
      item
        Items = <
          item
            Caption = '-'
          end>
      end
      item
        Items = <
          item
            Action = ActProdOldNegocio
            ImageIndex = 38
            ShortCut = 16498
          end
          item
            Action = ActProdDel
            ImageIndex = 19
            ShortCut = 16500
          end
          item
            Action = ActProdFalta
            ImageIndex = 25
            ShortCut = 16507
          end
          item
            Action = ActProdSaldo
            ImageIndex = 26
            ShortCut = 16501
          end
          item
            Action = ActProdAvulso
            ImageIndex = 23
            ShortCut = 16503
          end>
      end
      item
        Items = <
          item
            Caption = '-'
          end>
      end
      item
        Items = <
          item
            Caption = '-'
          end
          item
            Action = ActInsert
            ImageIndex = 16
            ShortCut = 113
          end
          item
            Action = ActFind
            ImageIndex = 17
            ShortCut = 114
          end
          item
            Action = ActEdit
            ImageIndex = 18
            ShortCut = 115
          end>
      end
      item
        Items = <
          item
            Caption = '-'
          end
          item
            Action = ActConfirm
            ImageIndex = 22
            ShortCut = 118
          end
          item
            Action = ActCancel
            ImageIndex = 21
            ShortCut = 119
          end
          item
            Action = ActRedo
            ImageIndex = 38
            ShortCut = 120
          end
          item
            Action = ActEstoque
            ImageIndex = 26
          end
          item
            Action = ActFatura
            ImageIndex = 40
            ShortCut = 121
          end
          item
            Action = ActContato
            ImageIndex = 25
          end>
      end
      item
        Items = <
          item
            Action = ActReport
            ImageIndex = 20
            ShortCut = 117
          end>
      end
      item
        Items = <
          item
            Caption = '-'
          end
          item
            Action = ActInsert
            ImageIndex = 16
            ShortCut = 113
          end
          item
            Action = ActFind
            ImageIndex = 17
            ShortCut = 114
          end
          item
            Action = ActEdit
            ImageIndex = 18
            ShortCut = 115
          end>
      end
      item
        Items = <
          item
            Items = <
              item
                Action = ActRepOrcamento
                ShortCut = 117
              end
              item
                Action = ActRepEstoque
              end>
            Caption = ' '
            ImageIndex = 20
          end>
      end
      item
        Items = <
          item
            Caption = '-'
          end
          item
            Action = ActConfirm
            ImageIndex = 22
            ShortCut = 118
          end
          item
            Action = ActCancel
            ImageIndex = 21
            ShortCut = 119
          end
          item
            Action = ActRedo
            ImageIndex = 38
            ShortCut = 120
          end
          item
            Action = ActEstoque
            ImageIndex = 26
          end
          item
            Action = ActFatura
            ImageIndex = 40
            ShortCut = 121
          end
          item
            Action = ActContato
            ImageIndex = 25
          end>
      end
      item
        Items = <
          item
            Items = <
              item
                Action = ActFaturaInfo
              end
              item
                Action = ActReceber
              end>
            Caption = ' '
            ImageIndex = 1
          end>
      end
      item
        Items = <
          item
            Action = ActProjeto
            ImageIndex = 51
            ShortCut = 16497
          end
          item
            Action = ActProdOldNegocio
            ImageIndex = 38
            ShortCut = 16498
          end
          item
            Action = ActPerimetro
            ImageIndex = 62
            ShortCut = 24690
          end
          item
            Action = ActProdDel
            ImageIndex = 19
            ShortCut = 16500
          end
          item
            Action = ActProdSaldo
            ImageIndex = 26
            ShortCut = 16501
          end
          item
            Action = ActProdConfirm
            ImageIndex = 22
            ShortCut = 16502
          end
          item
            Action = ActProdAvulso
            ImageIndex = 23
            ShortCut = 16503
          end
          item
            Action = ActDescritivo
            ImageIndex = 8
            ShortCut = 16506
          end
          item
            Action = ActProdFalta
            ImageIndex = 25
            ShortCut = 16507
          end
          item
            Action = ActProdCopia
            ImageIndex = 16
          end
          item
            Items = <
              item
                Action = ActImgScanner
                ImageIndex = 63
              end>
            Action = ActImgItem
            ImageIndex = 4
            ShortCut = 24699
          end>
        ActionBar = ActToolBProdutos
      end>
    Images = FrmMain.ImgLstMenu
    Left = 724
    Top = 3
    StyleName = 'XP Style'
    object ActFirst: TAction
      Category = '1-Navigator'
      Hint = 'Primeiro Registro'
      ImageIndex = 12
      OnExecute = ActFirstExecute
    end
    object ActPrior: TAction
      Category = '1-Navigator'
      Hint = 'Registro Anterior'
      ImageIndex = 13
      OnExecute = ActPriorExecute
    end
    object ActNext: TAction
      Category = '1-Navigator'
      Hint = 'Pr'#243'ximo Registro'
      ImageIndex = 14
      OnExecute = ActNextExecute
    end
    object ActLast: TAction
      Category = '1-Navigator'
      Hint = #218'ltimo Registro'
      ImageIndex = 15
      OnExecute = ActLastExecute
    end
    object ActInsert: TAction
      Category = '2-Database'
      Hint = 'Incluir um Novo Registro'
      ImageIndex = 16
      ShortCut = 113
      OnExecute = ActInsertExecute
    end
    object ActCopia: TAction
      Category = '2-Database'
      Caption = 'C'#243'piar Or'#231'amento...'
      ImageIndex = 16
      OnExecute = ActCopiaExecute
    end
    object ActFind: TAction
      Category = '2-Database'
      Hint = 'Consultar Registros'
      ImageIndex = 17
      ShortCut = 114
      OnExecute = ActFindExecute
    end
    object ActEdit: TAction
      Category = '2-Database'
      Hint = 'Alterar o Registro Corrente'
      ImageIndex = 18
      ShortCut = 115
      OnExecute = ActEditExecute
    end
    object ActRelatorios: TAction
      Category = '5-Relatorios'
      Hint = 'Relat'#243'rio'
      ImageIndex = 20
    end
    object ActReport: TAction
      Tag = 1
      Category = '5-Relatorios'
      Hint = 'Relat'#243'rio'
      ImageIndex = 20
      ShortCut = 117
      OnExecute = ActReportExecute
    end
    object ActRepEstoque: TAction
      Category = '5-Relatorios'
      Caption = 'Ordem de Estoque'
      Hint = 'Impress'#227'o da Ordem de Estoque'
      ImageIndex = 20
      OnExecute = ActRepEstoqueExecute
    end
    object ActOrdemServico: TAction
      Category = '5-Relatorios'
      Caption = 'Ordem de Servi'#231'o...'
      ImageIndex = 20
      OnExecute = ActOrdemServicoExecute
    end
    object ActFechamento: TAction
      Category = '2-Database'
      Hint = 'Condi'#231#245'es de Pagamento'#13#10'Informa'#231#245'es Gerais'#13#10'Observa'#231#245'es'#13#10'Comiss'#227'o'
      ImageIndex = 5
      ShortCut = 16502
      OnExecute = ActFechamentoExecute
    end
    object ActConfirm: TAction
      Category = '2-Database'
      Hint = 'Confirmar Or'#231'amento'
      ImageIndex = 22
      ShortCut = 118
      OnExecute = ActConfirmExecute
    end
    object ActDividir: TAction
      Category = '2-Database'
      Hint = 'Dividir Atendimento'
      ImageIndex = 47
      OnExecute = ActDividirExecute
    end
    object ActJuncao: TAction
      Category = '2-Database'
      Hint = '"Juntar" Atendimentos'
      ImageIndex = 48
      OnExecute = ActJuncaoExecute
    end
    object ActJuncaoOrc: TAction
      Category = '2-Database'
      Caption = 'Jun'#231#227'o por Or'#231'amento...'
      ImageIndex = 48
      OnExecute = ActJuncaoOrcExecute
    end
    object ActEstoque: TAction
      Category = '2-Database'
      Hint = 'Confirma'#231#227'o de Estoque'
      ImageIndex = 26
      OnExecute = ActEstoqueExecute
    end
    object ActCancel: TAction
      Category = '2-Database'
      Hint = 'Cancelar o Or'#231'amento'
      ImageIndex = 21
      ShortCut = 119
      OnExecute = ActCancelExecute
    end
    object ActRedo: TAction
      Category = '2-Database'
      Hint = 'Retornar o Or'#231'amento para Situa'#231#227'o Inicial'
      ImageIndex = 38
      ShortCut = 120
      OnExecute = ActRedoExecute
    end
    object ActFatura: TAction
      Category = '2-Database'
      Hint = 'Fechar o Or'#231'amento'
      ImageIndex = 40
      ShortCut = 121
      OnExecute = ActFaturaExecute
    end
    object ActContato: TAction
      Category = '2-Database'
      Hint = 'Gerenciar Contato do Or'#231'amento'
      ImageIndex = 25
      OnExecute = ActContatoExecute
    end
    object ActOptions: TAction
      Category = '2-Database'
      Hint = 'Op'#231#245'es'
      ImageIndex = 1
    end
    object ActProjeto: TAction
      Category = '4-Produto'
      Hint = 'Projetos do Or'#231'amento'
      ImageIndex = 51
      ShortCut = 16497
      OnExecute = ActProjetoExecute
    end
    object ActProdOldNegocio: TAction
      Category = '4-Produto'
      Hint = 'Negocia'#231#227'o anterior do produto'
      ImageIndex = 38
      ShortCut = 16498
      OnExecute = ActProdOldNegocioExecute
    end
    object ActPerimetro: TAction
      Category = '4-Produto'
      Hint = 'Per'#237'metro do Produto'
      ImageIndex = 62
      ShortCut = 24690
      OnExecute = ActPerimetroExecute
    end
    object ActProdDel: TAction
      Category = '4-Produto'
      Hint = 'Excluir este item'
      ImageIndex = 19
      ShortCut = 16500
      OnExecute = ActProdDelExecute
    end
    object ActProdSaldo: TAction
      Category = '4-Produto'
      Hint = 'Saldo de Estoque'
      ImageIndex = 26
      ShortCut = 16501
      OnExecute = ActProdSaldoExecute
    end
    object ActProdConfirm: TAction
      Category = '4-Produto'
      Hint = 'Confirmar Todos os Produtos'
      ImageIndex = 22
      ShortCut = 16502
      OnExecute = ActProdConfirmExecute
    end
    object ActProdAvulso: TAction
      Tag = 2
      Category = '4-Produto'
      Hint = 'Item Avulso'
      ImageIndex = 23
      ShortCut = 16503
      OnExecute = ActProdAvulsoExecute
    end
    object ActRepOrcamento: TAction
      Category = '5-Relatorios'
      Caption = 'Or'#231'amento'
      Hint = 'Impress'#227'o do Or'#231'amento'
      ImageIndex = 20
      ShortCut = 117
    end
    object ActReceber: TAction
      Category = '6-Tools'
      Caption = 'Contas '#224' Receber...'
      ImageIndex = 39
      OnExecute = ActReceberExecute
    end
    object ActFaturaInfo: TAction
      Category = '6-Tools'
      Caption = 'Informar Dados da Fatura...'
      ImageIndex = 59
      OnExecute = ActFaturaInfoExecute
    end
    object ActReCupom: TAction
      Category = '6-Tools'
      Caption = 'Re-Emitir Cupom Fiscal...'
      ImageIndex = 45
      Visible = False
      OnExecute = ActReCupomExecute
    end
    object ActDescritivo: TAction
      Category = '4-Produto'
      Hint = 'Fazer Or'#231'amento Descritivo'
      ImageIndex = 8
      ShortCut = 16506
      OnExecute = ActDescritivoExecute
    end
    object ActProdFalta: TAction
      Category = '4-Produto'
      Hint = 'Incluir no Pedido de Compra para produtos em Falta'
      ImageIndex = 25
      ShortCut = 16507
      OnExecute = ActProdFaltaExecute
    end
    object ActReNota: TAction
      Category = '6-Tools'
      Caption = 'Re-Emitir Nota...'
      ImageIndex = 20
      OnExecute = ActReNotaExecute
    end
    object ActPagamento: TAction
      Category = '2-Database'
      Hint = 'Condi'#231#245'es de Pagamento'
      ImageIndex = 39
      OnExecute = ActPagamentoExecute
    end
    object ActShow: TAction
      Category = '2-Database'
      Hint = 'Mostrar detalhes do Or'#231'amento'
      ImageIndex = 36
      OnExecute = ActShowExecute
    end
    object ActConsignacao: TAction
      Category = '6-Tools'
      Caption = 'Nota de Consigna'#231#227'o...'
      ImageIndex = 50
      OnExecute = ActConsignacaoExecute
    end
    object ActEtiqueta: TAction
      Category = '5-Relatorios'
      Caption = 'Etiquetas...'
      ImageIndex = 20
      OnExecute = ActEtiquetaExecute
    end
    object ActNotaSR: TAction
      Category = '6-Tools'
      Caption = 'Nota de Simples Remessa...'
      ImageIndex = 59
      OnExecute = ActNotaSRExecute
    end
    object ActSaidaCopiar: TAction
      Category = '6-Tools'
      Caption = 'Copiar para Saida do Estoque...'
      ImageIndex = 34
      OnExecute = ActSaidaCopiarExecute
    end
    object ActCarga: TAction
      Category = '6-Tools'
      Caption = 'Aloca'#231#227'o em Cargas...'
      ImageIndex = 52
      OnExecute = ActCargaExecute
    end
    object SctRepCopia: TAction
      Tag = 2
      Category = '5-Relatorios'
      Caption = 'C'#243'pia do Or'#231'amento...'
      ImageIndex = 20
      OnExecute = SctRepCopiaExecute
    end
    object ActProducao: TAction
      Category = '6-Tools'
      Caption = 'Aloca'#231#227'o em Processo de Produ'#231#227'o...'
      ImageIndex = 43
      OnExecute = ActProducaoExecute
    end
    object ActNFe: TAction
      Category = '6-Tools'
      Caption = 'Gerar NFe...'
      ImageIndex = 10
      OnExecute = ActNFeExecute
    end
    object ActImgItem: TAction
      Category = '4-Produto'
      Hint = 'Carregar imagem para o Item'
      ImageIndex = 4
      ShortCut = 24699
      OnExecute = ActImgItemExecute
    end
    object ActImgScanner: TAction
      Category = '4-Produto'
      Caption = 'Carregar imagem do Scanner'
      ImageIndex = 63
      OnExecute = ActImgScannerExecute
    end
    object ActContatoNew: TAction
      Category = '2-Database'
      Caption = 'Incluir Novo Contato para o or'#231'amento'
      Hint = 'Incluir Novo Contato para o or'#231'amento'
      ImageIndex = 25
      OnExecute = ActContatoNewExecute
    end
    object ActNFCe: TAction
      Category = '6-Tools'
      Caption = 'Gerar NFC-e...'
      ImageIndex = 8
      OnExecute = ActNFCeExecute
    end
    object ActProdCopia: TAction
      Category = '4-Produto'
      Hint = 'Copiar Item'
      ImageIndex = 16
      OnExecute = ActProdCopiaExecute
    end
    object ActImportRTO: TAction
      Category = '6-Tools'
      Caption = 'Importar XML RTO'
      ImageIndex = 34
      OnExecute = ActImportRTOExecute
    end
  end
  object ADODsAux: TMultADODS
    Connection = FrmMain.ADOConMaster
    LockType = ltReadOnly
    Parameters = <>
    SQLOther0.Strings = (
      '-- Verifica a exist'#234'ncia de produto sem confirma'#231#227'o de estoque'
      'select'
      '  Nr_Item'
      ''
      'from'
      '  Orcamento_Item'
      ''
      'where'
      '  Cd_Filial     = :Cd_Filial and'
      '  Nr_Orcamento  = :Nr_Orcamento and'
      '  Fl_Confirmado = ''''1'''' and'
      '  ('
      '  Qt_Estoque is null or'
      '  Qt_Estoque = 0'
      '  )'
    )
    SQLOther1.Strings = (
      '-- Verifica produto com margem de lucro inferior a minima'
      'select top 1'
      '  OI.Cd_Produto'
      ''
      'from'
      '  Orcamento_Item OI'
      ''
      'inner join'
      '  Produto P'
      'on'
      '  P.Cd_Produto  = OI.Cd_Produto and'
      '  P.Pr_Vendedor > OI.Pr_Margem'
      ''
      'where'
      '  OI.Cd_Filial     = :Cd_Filial and'
      '  OI.Nr_Orcamento  = :Nr_Orcamento and'
      '  OI.Fl_Confirmado = ''''1'''
    )
    SQLOther2.Strings = (
      '-------------------- Verifica produto sem estoque'
      'declare @Cd_Filial SmallInt'
      'declare @Nr_Orcamento Int'
      ''
      'set @Cd_Filial    = :Cd_Filial'
      'set @Nr_Orcamento = :Nr_Orcamento'
      ''
      '-------------------- Produtos'
      'select top 1'
      '  OI.Nr_Item'
      ''
      'from'
      '  Orcamento_Item OI'
      ''
      'inner join'
      '  Produto P'
      'on'
      '  P.Cd_Produto   = OI.Cd_Produto and'
      '  P.Fl_Produto   = ''''1'''' and               -- Critica somente os produtos'
      '  P.Fl_Perecivel = ''''2'''' and               -- n'#227'o considera pereciveis'
      '  P.Cd_Baixa is null '
      ''
      'inner join'
      '  Produto_Unidade PU'
      'on'
      '  PU.Cd_Produto = OI.Cd_Produto and'
      '  PU.Sg_Unidade = OI.Sg_Unidade'
      ''
      'inner join'
      '  Estoque_Saldo ES'
      'on'
      '  ES.Cd_Filial  = OI.Cd_Filial and'
      '  ES.Cd_Produto = OI.Cd_Produto and'
      '  ( ES.Qt_Liquido / Coalesce( PU.Nr_Fator, 1.0 ) ) < OI.Qt_Item'
      ''
      'where'
      '  OI.Cd_Filial     = @Cd_Filial and'
      '  OI.Nr_Orcamento  = @Nr_Orcamento and'
      '  OI.Fl_Confirmado = ''''1'''
      ''
      'union all'
      ''
      '-------------------- Conjuntos'
      'select top 1'
      '  OC.Nr_Item'
      ''
      'from'
      '  Orcamento_Conjunto OC'
      ''
      'inner join'
      '  Orcamento_Item OI'
      'on'
      '  OI.Cd_Filial     = OC.Cd_Filial and'
      '  OI.Nr_Orcamento  = OC.Nr_Orcamento and'
      '  OI.Nr_Item       = OC.Nr_Item and'
      '  OI.Fl_Confirmado = ''''1'''
      ''
      'inner join'
      '  Produto_Unidade PU'
      'on'
      '  PU.Cd_Produto = OC.Cd_Produto and'
      '  PU.Sg_Unidade = OC.Sg_Unidade'
      ''
      'inner join'
      '  Estoque_Saldo ES'
      'on'
      '  ES.Cd_Filial  = OC.Cd_Filial and'
      '  ES.Cd_Produto = OC.Cd_Produto and'
      '  ( ES.Qt_Liquido / Coalesce( PU.Nr_Fator, 1.0 ) ) < ( OC.Qt_Item )'
      ''
      'where'
      '  OC.Cd_Filial    = @Cd_Filial and'
      '  OC.Nr_Orcamento = @Nr_Orcamento'
      ''
      '--------------- Itens de baixa - 21/12/2010'
      'union all'
      'select top 1'
      '  OI.Nr_Item'
      ''
      'from'
      '  Orcamento_Item OI'
      ''
      'inner join'
      '  Produto P'
      'on'
      '  P.Cd_Produto = OI.Cd_Produto and'
      '  P.Fl_Produto = ''''1''''                      -- Critica somente os produtos'
      ''
      'inner join'
      '  Produto PB'
      'on'
      '  PB.Cd_Produto = P.Cd_Baixa'
      ''
      'inner join'
      '  Produto_Unidade PU'
      'on'
      '  PU.Cd_Produto = PB.Cd_Produto and'
      '  PU.Sg_Unidade = OI.Sg_Unidade'
      ''
      'inner join'
      '  Estoque_Saldo ES'
      'on'
      '  ES.Cd_Filial  = OI.Cd_Filial and'
      '  ES.Cd_Produto = PB.Cd_Produto and'
      '  ( ES.Qt_Liquido / Coalesce( PU.Nr_Fator, 1.0 ) ) < OI.Qt_Item'
      ''
      'where'
      '  OI.Cd_Filial     = @Cd_Filial and'
      '  OI.Nr_Orcamento  = @Nr_Orcamento and'
      '  OI.Fl_Confirmado = ''''1'''
      ''
      '--------------- Produtos que n'#227'o existem na tabela de Estoque - Itens'
      'union all'
      'select top 1'
      '  OI.Nr_Item'
      ''
      'from'
      '  Orcamento_Item OI'
      ''
      'inner join'
      '  Produto P'
      'on'
      '  P.Cd_Produto   = OI.Cd_Produto and'
      '  P.Fl_Produto   = ''''1'''' and               -- Critica somente os produtos'
      '  P.Fl_Perecivel = ''''2''''                   -- n'#227'o considera pereciveis'
      ''
      'where'
      '  OI.Cd_Filial     = @Cd_Filial and'
      '  OI.Nr_Orcamento  = @Nr_Orcamento and'
      '  OI.Fl_Confirmado = ''''1'''' and'
      '  not exists('
      '    select'
      '      E.Cd_Produto'
      ''
      '    from'
      '      Estoque E'
      ''
      '    where'
      '      E.Cd_Filial  = OI.Cd_Filial and'
      '      E.Cd_Produto = OI.Cd_Produto'
      '    )'
      ''
      '--------------- Produtos que n'#227'o existem na tabela de Estoque - Conjunto'
      'union all'
      'select top 1'
      '  OC.Nr_Item'
      ''
      'from'
      '  Orcamento_Conjunto OC'
      ''
      'inner join'
      '  Orcamento_Item OI'
      'on'
      '  OI.Cd_Filial     = OC.Cd_Filial and'
      '  OI.Nr_Orcamento  = OC.Nr_Orcamento and'
      '  OI.Nr_Item       = OC.Nr_Item and'
      '  OI.Fl_Confirmado = ''''1'''
      ''
      'inner join'
      '  Produto_Unidade PU'
      'on'
      '  PU.Cd_Produto = OC.Cd_Produto and'
      '  PU.Sg_Unidade = OC.Sg_Unidade'
      ''
      'where'
      '  OC.Cd_Filial    = @Cd_Filial and'
      '  OC.Nr_Orcamento = @Nr_Orcamento and'
      '  not exists('
      '    select'
      '      E.Cd_Produto'
      ''
      '    from'
      '      Estoque E'
      ''
      '    where'
      '      E.Cd_Filial  = OC.Cd_Filial and'
      '      E.Cd_Produto = OC.Cd_Produto '
      '    )'
      ''
      '--------------- Produtos que n'#227'o existem na tabela de Estoque - Itens de Baixa 21/12/2010'
      'union all'
      'select top 1'
      '  OI.Nr_Item'
      ''
      'from'
      '  Orcamento_Item OI'
      ''
      'inner join'
      '  Produto P'
      'on'
      '  P.Cd_Produto   = OI.Cd_Produto and'
      '  P.Fl_Produto   = ''''1'''' and               -- Critica somente os produtos'
      '  P.Fl_Perecivel = ''''2''''                   -- n'#227'o considera pereciveis'
      ''
      'inner join'
      '  Produto PB'
      'on'
      '  PB.Cd_Produto = PB.Cd_Baixa'
      ''
      'where'
      '  OI.Cd_Filial     = @Cd_Filial and'
      '  OI.Nr_Orcamento  = @Nr_Orcamento and'
      '  OI.Fl_Confirmado = ''''1'''' and'
      '  not exists('
      '    select'
      '      E.Cd_Produto'
      ''
      '    from'
      '      Estoque E'
      ''
      '    where'
      '      E.Cd_Filial  = OI.Cd_Filial and'
      '      E.Cd_Produto = PB.Cd_Produto'
      '    )'
    )
    SQLOther3.Strings = (
      '/*  Valor Total dos Projetos do Or'#231'amento */'
      'select'
      '  cast(sum(Qt_Projeto * Vl_Projeto) as numeric(18,3)) as Vl_TotalProjetos'
      ''
      'from'
      '  Orcamento_Projeto'
      ''
      'where'
      '  Cd_Filial    = :Cd_Filial and'
      '  Nr_Orcamento = :Nr_Orcamento'
    )
    SQLOther4.Strings = (
      '-------------------- Verifica se existem itens avulsos'
      'select top 1'
      '  Nr_Item'
      ''
      'from'
      '  Orcamento_Item'
      ''
      'where'
      '  Cd_Filial    = :Cd_Filial and'
      '  Nr_Orcamento = :Nr_Orcamento and'
      '  Cd_Produto is null'
    )
    SQLOther5.Strings = (
      '--------------- Verifica se o emitente tem mais de um endere'#231'o'
      'select'
      '  count( * ) as Nr_Enderecos'
      ''
      'from'
      '  Emitente_Endereco'
      ''
      'where'
      '  Cd_Emitente = :Cd_Emitente'
    )
    Left = 209
    Top = 339
  end
  object ADODsProdSelect: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    OnCalcFields = ADODsProdSelectCalcFields
    CommandText = 'select'#13#10'  P.Cd_Produto, P.Nm_Produto, P.Sg_Venda, P.Cd_Fabricante, P.Cd_Barra, P.Fl_Produto,'#13#10'  PP.Vl_Venda * Coalesce( PU.Nr_Fator, 1.0 ) as Vl_Venda, '#13#10'  PP.Vl_Promocao * Coalesce( PU.Nr_Fator, 1.0 ) as Vl_Promocao,'#13#10'  E.Qt_Entrada - E.Qt_Orcamento - E.Qt_Balcao - E.Qt_Saida - E.Qt_Reserva as Qt_Estoque,'#13#10'  P.Fl_Lote, PP.Vl_Venda as Vl_Tabela, P.Tp_Preco, G.Fl_Moldura, L.Nm_Laboratorio,'#13#10'  P.Fl_Ativo'#13#10#13#10'from'#13#10'  Produto P'#13#10#13#10'inner join'#13#10'  Grupo G'#13#10'on'#13#10'  G.Cd_Grupo = P.Cd_Grupo'#13#10#13#10'left join'#13#10'  Produto_Preco PP'#13#10'on'#13#10'  PP.Cd_Tabela  = :Cd_Tabela and'#13#10'  PP.Cd_Produto = P.Cd_Produto'#13#10#13#10'left join'#13#10'  Estoque E'#13#10'on'#13#10'  E.Cd_Filial = :Cd_Filial and'#13#10'  E.Cd_Produto = P.Cd_Produto and'#13#10'  E.Fl_Estoque = :Fl_Estoque'#13#10#13#10'left join'#13#10'  Produto_Unidade PU'#13#10'on'#13#10'  PU.Cd_Produto = P.Cd_Produto and'#13#10'  PU.Sg_Unidade = P.Sg_Venda'#13#10#13#10'left join'#13#10'  Laboratorio L'#13#10'on'#13#10'  L.Cd_Laboratorio = P.Cd_Laboratorio'#13#10#13#10'where'#13#10'  P.Fl_Ativo = ''''1'''' and'#13#10'  P.Nm_Produto like :Find'#13#10#13#10'order by'#13#10'  P.Nm_Produto'
    Parameters = <
      item
        Name = 'Cd_Tabela'
        DataType = ftString
        Size = 6
        Value = 'PADRAO'
      end
      item
        Name = 'Cd_Filial'
        DataType = ftSmallint
        Size = -1
        Value = 0
      end
      item
        Name = 'Fl_Estoque'
        DataType = ftString
        Size = 1
        Value = '1'
      end
      item
        Name = 'Find'
        DataType = ftString
        Size = 2
        Value = 'a%'
      end>
    SQLInsert.Strings = (
      ''
    )
    SQLOther0.Strings = (
      '/* C'#243'digo de Barras com os 13 digitos */'
      'select'
      '  P.Cd_Produto, P.Nm_Produto, P.Sg_Venda, P.Cd_Fabricante, P.Cd_Barra, P.Fl_Produto,'
      '  PP.Vl_Venda * Coalesce( PU.Nr_Fator, 1.0 ) as Vl_Venda, '
      '  PP.Vl_Promocao * Coalesce( PU.Nr_Fator, 1.0 ) as Vl_Promocao,'
      '  E.Qt_Entrada - E.Qt_Orcamento - E.Qt_Balcao - E.Qt_Saida - E.Qt_Reserva as Qt_Estoque,'
      '  P.Fl_Lote, PP.Vl_Venda as Vl_Tabela, P.Tp_Preco, G.Fl_Moldura, L.Nm_Laboratorio,'
      '  P.Fl_Ativo'
      ''
      'from'
      '  Produto P'
      ''
      'inner join'
      '  Grupo G'
      'on'
      '  G.Cd_Grupo = P.Cd_Grupo'
      ''
      'left join'
      '  Produto_Preco PP'
      'on'
      '  PP.Cd_Tabela  = :Cd_Tabela and'
      '  PP.Cd_Produto = P.Cd_Produto'
      ''
      'left join'
      '  Estoque E'
      'on'
      '  E.Cd_Filial  = :Cd_Filial and'
      '  E.Cd_Produto = Coalesce( P.Cd_Baixa, P.Cd_Produto )      -- Mudado em 07/11/2011'
      ''
      'left join'
      '  Produto_Unidade PU'
      'on'
      '  PU.Cd_Produto = P.Cd_Produto and'
      '  PU.Sg_Unidade = P.Sg_Venda'
      ''
      'left join'
      '  Laboratorio L'
      'on'
      '  L.Cd_Laboratorio = P.Cd_Laboratorio'
      ''
      'where'
      '  P.Fl_Ativo = ''''1'''' and'
      '  P.Cd_Barra = :Find'
      ''
      'order by'
      '  P.Cd_Barra'
    )
    SQLOther1.Strings = (
      '/* Nome do Produto e SubProduto */'
      'declare @Find VarChar( 150 )'
      'set @Find = :Find'
      ''
      'select'
      '  P.Cd_Produto, P.Nm_Produto, P.Nr_Sequencia, P.Sg_Venda, P.Cd_Fabricante,'
      '  P.Cd_Barra, P.Fl_Produto,'
      '   PP.Vl_Venda * Coalesce( PU.Nr_Fator, 1.0 ) as Vl_Venda,'
      '  PP.Vl_Promocao * Coalesce( PU.Nr_Fator, 1.0 ) as Vl_Promocao,'
      '  E.Qt_Entrada - E.Qt_Orcamento - E.Qt_Balcao - E.Qt_Saida - E.Qt_Reserva as Qt_Estoque,'
      '  P.Fl_Lote, PP.Vl_Venda as Vl_Tabela, P.Tp_Preco, G.Fl_Moldura, L.Nm_Laboratorio,'
      '  P.Fl_Ativo'
      ''
      'from'
      '  Produto P'
      ''
      'inner join'
      '  Grupo G'
      'on'
      '  G.Cd_Grupo = P.Cd_Grupo'
      ''
      'left join'
      '  Produto_Preco PP'
      'on'
      '  PP.Cd_Tabela  = :Cd_Tabela and'
      '  PP.Cd_Produto = P.Cd_Produto'
      ''
      'left join'
      '  Estoque E'
      'on'
      '  E.Cd_Filial  = :Cd_Filial and'
      '  E.Cd_Produto = Coalesce( P.Cd_Baixa, P.Cd_Produto )      -- Mudado em 07/11/2011'
      ''
      'left join'
      '  Produto_Unidade PU'
      'on'
      '  PU.Cd_Produto = P.Cd_Produto and'
      '  PU.Sg_Unidade = P.Sg_Venda'
      ''
      'left join'
      '  Laboratorio L'
      'on'
      '  L.Cd_Laboratorio = P.Cd_Laboratorio'
      ''
      ''
      'where'
      '  P.Fl_Ativo = ''''1'''' and'
      '  P.Nm_Produto like @Find'
      ''
      'union'
      ''
      'select'
      '  SP.Cd_SubProduto, SP.Nm_SubProduto, 0 as Nr_Sequencia, ''''M2'''','
      '  Cast( null as VarChar( 20 ) ) as Cd_Fabricante,'
      '  Cast( null as VarChar( 20 ) ) as Cd_Barra,'
      '  ''''4'''' as Fl_Produto,'
      '  0.0 as Vl_Venda,'
      '  0.0 as Vl_Promocao,'
      '  0.0 as Qt_Estoque,'
      '  ''''2'''' as Fl_Lote, 0.0 as Vl_Tabela, ''''1'''' as Tp_Preco, ''''2'''' as Fl_Moldura,'
      '  '''''' as Nm_Laboratorio, ''''1'''' as Fl_Ativo'
      ''
      'from'
      '  SubProduto SP'
      ''
      'where'
      '  SP.Fl_Ativo = ''''1'''' and'
      '  SP.Nm_SubProduto like @Find'
      ''
      'order by'
      '  /* Ordem */'
      ''
    )
    SQLOther2.Strings = (
      '/* C'#243'digo de Barras com parte do c'#243'digo */'
      'select'
      '  P.Cd_Produto, P.Nm_Produto, P.Sg_Venda, P.Cd_Fabricante, P.Cd_Barra, P.Fl_Produto,'
      '  PP.Vl_Venda * Coalesce( PU.Nr_Fator, 1.0 ) as Vl_Venda, '
      '  PP.Vl_Promocao * Coalesce( PU.Nr_Fator, 1.0 ) as Vl_Promocao,'
      '  E.Qt_Entrada - E.Qt_Orcamento - E.Qt_Balcao - E.Qt_Saida - E.Qt_Reserva as Qt_Estoque,'
      '  P.Fl_Lote, PP.Vl_Venda as Vl_Tabela, P.Tp_Preco, G.Fl_Moldura, L.Nm_Laboratorio,'
      '  P.Fl_Ativo'
      ''
      'from'
      '  Produto P'
      ''
      'inner join'
      '  Grupo G'
      'on'
      '  G.Cd_Grupo = P.Cd_Grupo'
      ''
      'left join'
      '  Produto_Preco PP'
      'on'
      '  PP.Cd_Tabela  = :Cd_Tabela and'
      '  PP.Cd_Produto = P.Cd_Produto'
      ''
      'left join'
      '  Estoque E'
      'on'
      '  E.Cd_Filial  = :Cd_Filial and'
      '  E.Cd_Produto = Coalesce( P.Cd_Baixa, P.Cd_Produto )      -- Mudado em 07/11/2011'
      ''
      'left join'
      '  Produto_Unidade PU'
      'on'
      '  PU.Cd_Produto = P.Cd_Produto and'
      '  PU.Sg_Unidade = P.Sg_Venda'
      ''
      'left join'
      '  Laboratorio L'
      'on'
      '  L.Cd_Laboratorio = P.Cd_Laboratorio'
      ''
      'where'
      '  P.Fl_Ativo = ''''1'''' and'
      '  P.Cd_Barra like :Find'
      ''
      'order by'
      '  P.Cd_Barra'
    )
    SQLOther3.Strings = (
      '/* C'#243'digo do Produto */'
      'select'
      '  P.Cd_Produto, P.Nm_Produto, P.Sg_Venda, P.Cd_Fabricante, P.Cd_Barra, P.Fl_Produto,'
      '  PP.Vl_Venda * Coalesce( PU.Nr_Fator, 1.0 ) as Vl_Venda, '
      '  PP.Vl_Promocao * Coalesce( PU.Nr_Fator, 1.0 ) as Vl_Promocao,'
      '  E.Qt_Entrada - E.Qt_Orcamento - E.Qt_Balcao - E.Qt_Saida - E.Qt_Reserva as Qt_Estoque,'
      '  P.Fl_Lote, PP.Vl_Venda as Vl_Tabela, P.Tp_Preco, G.Fl_Moldura, L.Nm_Laboratorio,'
      '  P.Fl_Ativo'
      ''
      'from'
      '  Produto P'
      ''
      'inner join'
      '  Grupo G'
      'on'
      '  G.Cd_Grupo = P.Cd_Grupo'
      ''
      'left join'
      '  Produto_Preco PP'
      'on'
      '  PP.Cd_Tabela  = :Cd_Tabela and'
      '  PP.Cd_Produto = P.Cd_Produto'
      ''
      'left join'
      '  Estoque E'
      'on'
      '  E.Cd_Filial  = :Cd_Filial and'
      '  E.Cd_Produto = Coalesce( P.Cd_Baixa, P.Cd_Produto )      -- Mudado em 07/11/2011'
      ''
      'left join'
      '  Produto_Unidade PU'
      'on'
      '  PU.Cd_Produto = P.Cd_Produto and'
      '  PU.Sg_Unidade = P.Sg_Venda'
      ''
      'left join'
      '  Laboratorio L'
      'on'
      '  L.Cd_Laboratorio = P.Cd_Laboratorio'
      ''
      'where'
      '  P.Cd_Produto = :Find'
    )
    SQLOther4.Strings = (
      '/* C'#243'digo do Fabricante */'
      'select'
      '  P.Cd_Produto, P.Nm_Produto, P.Sg_Venda, P.Cd_Fabricante, P.Cd_Barra, P.Fl_Produto,'
      '  PP.Vl_Venda * Coalesce( PU.Nr_Fator, 1.0 ) as Vl_Venda, '
      '  PP.Vl_Promocao * Coalesce( PU.Nr_Fator, 1.0 ) as Vl_Promocao,'
      '  E.Qt_Entrada - E.Qt_Orcamento - E.Qt_Balcao - E.Qt_Saida - E.Qt_Reserva as Qt_Estoque,'
      '  P.Fl_Lote, PP.Vl_Venda as Vl_Tabela, P.Tp_Preco, G.Fl_Moldura, L.Nm_Laboratorio,'
      '  P.Fl_Ativo'
      ''
      'from'
      '  Produto P'
      ''
      'inner join'
      '  Grupo G'
      'on'
      '  G.Cd_Grupo = P.Cd_Grupo'
      ''
      'left join'
      '  Produto_Preco PP'
      'on'
      '  PP.Cd_Tabela  = :Cd_Tabela and'
      '  PP.Cd_Produto = P.Cd_Produto'
      ''
      'left join'
      '  Estoque E'
      'on'
      '  E.Cd_Filial  = :Cd_Filial and'
      '  E.Cd_Produto = Coalesce( P.Cd_Baixa, P.Cd_Produto )      -- Mudado em 07/11/2011'
      ''
      'left join'
      '  Produto_Unidade PU'
      'on'
      '  PU.Cd_Produto = P.Cd_Produto and'
      '  PU.Sg_Unidade = P.Sg_Venda'
      ''
      'left join'
      '  Laboratorio L'
      'on'
      '  L.Cd_Laboratorio = P.Cd_Laboratorio'
      ''
      'where'
      '  P.Cd_Fabricante = :Find'
    )
    Left = 273
    Top = 339
    object ADODsProdSelectcd_produto: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'cd_produto'
    end
    object ADODsProdSelectnm_produto: TStringField
      DisplayLabel = 'Produto'
      FieldName = 'nm_produto'
      Size = 120
    end
    object ADODsProdSelectsg_venda: TStringField
      FieldName = 'sg_venda'
      FixedChar = True
      Size = 2
    end
    object ADODsProdSelectvl_venda: TBCDField
      DisplayLabel = 'Unit'#225'rio'
      FieldName = 'vl_venda'
      DisplayFormat = '#,##0.00'
      Precision = 12
      Size = 3
    end
    object ADODsProdSelectvl_promocao: TBCDField
      FieldName = 'vl_promocao'
      Precision = 12
      Size = 3
    end
    object ADODsProdSelectcd_fabricante: TStringField
      FieldName = 'cd_fabricante'
    end
    object ADODsProdSelectcd_barra: TStringField
      DisplayLabel = 'C'#243'digo de Barras'
      FieldName = 'cd_barra'
    end
    object ADODsProdSelectqt_estoque: TBCDField
      DisplayLabel = 'Estoque'
      FieldName = 'qt_estoque'
      Precision = 14
      Size = 7
    end
    object ADODsProdSelectfl_produto: TStringField
      FieldName = 'fl_produto'
      FixedChar = True
      Size = 1
    end
    object ADODsProdSelectFl_Lote: TStringField
      FieldName = 'Fl_Lote'
      FixedChar = True
      Size = 1
    end
    object ADODsProdSelectVl_Tabela: TBCDField
      FieldName = 'Vl_Tabela'
      Precision = 12
      Size = 3
    end
    object ADODsProdSelectTp_Preco: TStringField
      FieldName = 'Tp_Preco'
      FixedChar = True
      Size = 1
    end
    object ADODsProdSelectDp_Produto: TStringField
      FieldKind = fkCalculated
      FieldName = 'Dp_Produto'
      Size = 130
      Calculated = True
    end
    object ADODsProdSelectFl_Moldura: TStringField
      FieldName = 'Fl_Moldura'
      FixedChar = True
      Size = 1
    end
    object ADODsProdSelectNm_Laboratorio: TStringField
      FieldName = 'Nm_Laboratorio'
      Size = 50
    end
    object ADODsProdSelectFl_Ativo: TStringField
      FieldName = 'Fl_Ativo'
      FixedChar = True
      Size = 1
    end
  end
  object ADODsUnidLoad: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  PU.Sg_Unidade, PU.Nr_Fator, PU.Nr_Indice'#13#10#13#10'from'#13#10'  Produto_Unidade PU'#13#10#13#10'where'#13#10'  PU.Cd_Produto = :Cd_Produto'
    Parameters = <
      item
        Name = 'Cd_Produto'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = nil?
      end>
    Left = 302
    Top = 339
    object ADODsUnidLoadsg_unidade: TStringField
      FieldName = 'sg_unidade'
      FixedChar = True
      Size = 2
    end
    object ADODsUnidLoadnr_fator: TBCDField
      FieldName = 'nr_fator'
      Precision = 18
      Size = 3
    end
    object ADODsUnidLoadNr_Indice: TBCDField
      FieldName = 'Nr_Indice'
      Precision = 9
    end
  end
  object ADOCmdProduto: TMultADOCMD
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLInsert.Strings = (
      'insert into Orcamento_Item( Cd_Filial, Nr_Orcamento, Nr_Item, Cd_Produto,'
      '   Nm_Produto, Sg_Unidade, Qt_Item, Vl_Unitario, Fl_Confirmado, Pr_Reducao,'
      '   Fl_STB, Ps_Produto, Fl_OrdemServico )'
      'values( :Cd_Filial, :Nr_Orcamento, :Nr_Item, :Cd_Produto, :Nm_Produto,'
      '   :Sg_Unidade, :Qt_Item, :Vl_Unitario, :Fl_Confirmado, :Pr_Reducao, :Fl_STB,'
      '   :Ps_Produto, ''''2'''' )'
    )
    SQLUpdate.Strings = (
      'update'
      '  Orcamento_Item'
      ''
      'set'
      '  Cd_Produto    = :Cd_Produto,'
      '  Nm_Produto    = :Nm_Produto,'
      '  Sg_Unidade    = :Sg_Unidade,'
      '  Qt_Item       = :Qt_Item,'
      '  Vl_Unitario   = :Vl_Unitario,'
      '  Fl_Confirmado = :Fl_Confirmado,'
      '  Pr_Reducao    = :Pr_Reducao,'
      '  Fl_STB        = :Fl_STB,'
      '  Ps_Produto    = :Ps_Produto'
      ''
      'where'
      '  Cd_Filial    = :Cd_Filial and'
      '  Nr_Orcamento = :Nr_Orcamento and'
      '  Nr_Item      = :Nr_Item'
    )
    SQLOther0.Strings = (
      '/* Incluir o item de conjunto */'
      'insert into Orcamento_Conjunto( Cd_Filial, Nr_Orcamento, Nr_Item, Cd_Produto,'
      '   Sg_Unidade, Qt_Item, Vl_Unitario )'
      'values( :Cd_Filial, :Nr_Orcamento, :Nr_Item, :Cd_Produto, :Sg_Unidade,'
      '   :Qt_Item, :Vl_Unitario )'
    )
    SQLOther1.Strings = (
      '/* Alterar o item de conjunto */'
      'update'
      '  Orcamento_Conjunto'
      ''
      'set'
      '  Sg_Unidade  = :Sg_Unidade,'
      '  Qt_Item     = :Qt_Item,'
      '  Vl_Unitario = :Vl_Unitario'
      ''
      'where'
      '  Cd_Filial    = :Cd_Filial and'
      '  Nr_Orcamento = :Nr_Orcamento and'
      '  Nr_Item      = :Nr_Item and'
      '  Cd_Produto   = :Cd_Produto'
    )
    SQLOther2.Strings = (
      '-------------- Conteudo antigo colocado no Other3'
      '  if Object_ID( ''''TempDB..#orcamento_conjunto_tmp'''' ) is not null'
      '    truncate table #orcamento_conjunto_tmp'
      ''
      '  else'
      '    create table #orcamento_conjunto_tmp'
      '      ('
      '      cd_filial smallint not null,'
      '      nr_orcamento int not null,'
      '      cd_produto int not null,'
      '      sg_unidade char( 2 ) not null,'
      '      qt_item numeric( 18, 3 ) not null,'
      '      vl_unitario numeric( 12, 3 ) not null,'
      '      nm_produto varchar( 120 ),'
      '      cd_oldproduto int,'
      '      vl_venda numeric( 12, 3 )'
      '      )'
      ''
    )
    SQLOther3.Strings = (
      'create table ##item_ou_tmp'
      '  ('
      '  fl_confirmado char( 1 ),'
      '  fl_produto char( 1 ),'
      '  vl_total numeric( 12, 3 ),'
      '  ps_total numeric( 12, 3 ),'
      '  vl_baseicms numeric( 12, 3 ),'
      '  vl_ipi numeric( 12, 3 ),'
      '  vl_stb numeric( 12, 3 ),'
      '  vl_custo numeric( 12, 3 )'
      '  );'
      ''
      'create table ##orcamento_conjunto_tmp'
      '  ('
      '  cd_filial smallint not null,'
      '  nr_orcamento int not null,'
      '  cd_produto int not null,'
      '  sg_unidade char( 2 ) not null,'
      '  qt_item numeric( 18, 3 ) not null,'
      '  vl_unitario numeric( 12, 3 ) not null,'
      '  nm_produto varchar( 120 ),'
      '  cd_oldproduto int,'
      '  vl_venda numeric( 12, 3 )'
      '  );'
    )
    SQLOther4.Strings = (
      '-------------------- Recalculo do pre'#231'o de venda na troca de tabela'
      'declare'
      '  @Cd_Filial SmallInt,'
      '  @Nr_Orcamento Int,'
      '  @Cd_Tabela VarChar( 10 ),'
      '  @Vl_Dolar Numeric( 9, 4 )'
      ''
      'select'
      '  @Cd_Filial    = :Cd_Filial,'
      '  @Nr_Orcamento = :Nr_Orcamento,'
      '  @Cd_Tabela    = :Cd_Tabela,'
      '  @Vl_Dolar     = :Vl_Dolar'
      ''
      '-------------------- Itens de Venda'
      'update'
      '  Orcamento_Item'
      ''
      'set'
      '  Vl_Unitario = Coalesce('
      '    ('
      '    select'
      '      PP.Vl_Venda * Coalesce( PU.Nr_Fator, 1.0 ) * Coalesce( PU.Nr_Indice, 1.0 ) *'
      '      case when P.Tp_Preco = ''''2'''' then @Vl_Dolar else 1.0 end      ----- Dolar'
      ''
      '    from'
      '      Produto_Preco PP'
      ''
      '    inner join'
      '      Produto P'
      '    on'
      '      P.Cd_Produto = PP.Cd_Produto'
      ''
      '    left join'
      '      Produto_Unidade PU'
      '    on'
      '      PU.Cd_Produto = PP.Cd_Produto and'
      '      PU.Sg_Unidade = Orcamento_Item.Sg_Unidade'
      ''
      '    where'
      '      PP.Cd_Tabela  = @Cd_Tabela and'
      '      PP.Cd_Produto = Orcamento_Item.Cd_Produto'
      '    ), 1.0 )'
      ''
      'where'
      '  Cd_Filial    = @Cd_Filial and'
      '  Nr_Orcamento = @Nr_Orcamento AND'
      '  Cd_Produto is not null'
      ''
      '-------------------- Itens de Conjunto'
      'update'
      '  Orcamento_Conjunto'
      ''
      'set'
      '  Vl_Unitario = @Vl_Dolar * Coalesce('
      '    ('
      '    select'
      '      PP.Vl_Venda * Coalesce( PU.Nr_Fator, 1.0 ) * Coalesce( PU.Nr_Indice, 1.0 ) *'
      '      case when P.Tp_Preco = ''''2'''' then @Vl_Dolar else 1.0 end      ----- Dolar'
      ''
      '    from'
      '      Produto_Preco PP'
      ''
      '    inner join'
      '      Produto P'
      '    on'
      '      P.Cd_Produto = PP.Cd_Produto'
      ''
      '    left join'
      '      Produto_Unidade PU'
      '    on'
      '      PU.Cd_Produto = PP.Cd_Produto and'
      '      PU.Sg_Unidade = Orcamento_Conjunto.Sg_Unidade'
      ''
      '    where'
      '      PP.Cd_Tabela  = @Cd_Tabela and'
      '      PP.Cd_Produto = Orcamento_Conjunto.Cd_Produto'
      '    ), 1.0 )'
      ''
      'where'
      '  Cd_Filial    = @Cd_Filial and'
      '  Nr_Orcamento = @Nr_Orcamento'
      ''
      '-------------------- Valor total do conjunto nos itens'
      'update'
      '  Orcamento_Item'
      ''
      'set'
      '  Vl_Unitario ='
      '    ('
      '    select'
      '      sum( OC.Qt_Item * OC.Vl_Unitario )'
      ''
      '    from'
      '      Orcamento_Conjunto OC'
      ''
      '    where'
      '      OC.Cd_Filial    = OI.Cd_Filial and'
      '      OC.Nr_Orcamento = OI.Nr_Orcamento and'
      '      OC.Nr_Item      = OI.Nr_Item'
      '    )'
      ''
      'from'
      '  Orcamento_Item OI'
      ''
      'inner join'
      '  Produto P'
      'on'
      '  P.Cd_Produto = OI.Cd_Produto and'
      '  P.Fl_Produto = ''''3'''
      ''
      'where'
      '  OI.Cd_Filial    = @Cd_Filial and'
      '  OI.Nr_Orcamento = @Nr_Orcamento'
      ''
      '-------------------- Valor dos itens de projeto'
      'update'
      '  Orcamento_Projeto_Item'
      ''
      'set'
      '  Vl_Unitario = Coalesce('
      '    ('
      '    select'
      '      PP.Vl_Venda * Coalesce( PU.Nr_Fator, 1.0 ) * Coalesce( PU.Nr_Indice, 1.0 ) *'
      '      case when P.Tp_Preco = ''''2'''' then @Vl_Dolar else 1.0 end      ----- Dolar'
      ''
      '    from'
      '      Produto_Preco PP'
      ''
      '    inner join'
      '      Produto P'
      '    on'
      '      P.Cd_Produto = PP.Cd_Produto'
      '      '
      '    left join'
      '      Produto_Unidade PU'
      '    on'
      '      PU.Cd_Produto = PP.Cd_Produto and'
      '      PU.Sg_Unidade = Orcamento_Projeto_Item.Sg_Unidade'
      ''
      '    where'
      '      PP.Cd_Tabela  = @Cd_Tabela and'
      '      PP.Cd_Produto = Orcamento_Projeto_Item.Cd_Produto'
      '    ), 1.0 )'
      ''
      'where'
      '  Cd_Filial    = @Cd_Filial and'
      '  Nr_Orcamento = @Nr_Orcamento'
      ''
      '-------------------- Valor dos projetos'
      'update'
      '  Orcamento_Projeto'
      ''
      'set'
      '  Vl_Projeto ='
      '    ('
      '    select'
      '      sum( OPI.Vl_Unitario * OPI.Qt_Item )'
      ''
      '    from'
      '      Orcamento_Projeto_Item OPI'
      ''
      '    inner join'
      '      Produto P'
      '    on'
      '      P.Cd_Produto = OPI.Cd_Produto'
      ''
      '    where'
      '      OPI.Cd_Filial    = Orcamento_Projeto.Cd_Filial and'
      '      OPI.Nr_Orcamento = Orcamento_Projeto.Nr_Orcamento and'
      '      OPI.Nr_Projeto   = Orcamento_Projeto.Nr_Projeto'
      '    )'
      ''
      'where'
      '  Cd_Filial    = @Cd_Filial and'
      '  Nr_Orcamento = @Nr_Orcamento'
    )
    SQLOther5.Strings = (
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
    SQLOther6.Strings = (
      '--------------- Inclus'#227'o de Bloqueio'
      'declare'
      '  @Cd_Filial SmallInt,'
      '  @Nr_Orcamento Int,'
      '  @Nr_Bloqueio SmallInt'
      ''
      'select'
      '  @Cd_Filial    = :Cd_Filial,'
      '  @Nr_Orcamento = :Nr_Orcamento'
      ''
      'select'
      '  @Nr_Bloqueio  = Coalesce('
      '    ('
      '    select'
      '      max( Nr_Bloqueio ) + 1'
      ''
      '    from'
      '      Orcamento_Bloqueio'
      ''
      '    where'
      '      Cd_Filial    = @Cd_Filial and'
      '      Nr_Orcamento = @Nr_Orcamento'
      '    ), 1 )'
      ''
      'insert into Orcamento_Bloqueio( Cd_Filial, Nr_Orcamento, Nr_Bloqueio,'
      '   St_Bloqueio, Tp_Bloqueio, Dt_Bloqueio, Cd_Bloqueio )'
      'values( @Cd_Filial, @Nr_Orcamento, @Nr_Bloqueio,'
      '   ''''1'''', :Tp_Bloqueio, :Dt_Bloqueio, :Cd_Bloqueio )'
      ''
    )
    SQLOther7.Strings = (
      '--------------- Confirmar todos os itens do or'#231'amento'
      'update'
      '  Orcamento_Item'
      ''
      'set'
      '  Fl_Confirmado = ''''1'''
      ''
      'where'
      '  Cd_Filial    = :Cd_Filial and'
      '  Nr_Orcamento = :Nr_Orcamento '
    )
    SQLOther8.Strings = (
      '--------------- Excluir o vendedor da comiss'#227'o'
      'delete from'
      '  Orcamento_Comissao'
      ''
      'where'
      '  Cd_Filial      = :Cd_Filial and'
      '  Nr_Orcamento   = :Nr_Orcamento and'
      '  Cd_Funcionario = :cd_Funcionario'
    )
    SQLOther9.Strings = (
      '--------------- Copia do item'
      'declare'
      '  @Cd_Filial SmallInt,'
      '  @Nr_Orcamento Int,'
      '  @Nr_ItemNew SmallInt,'
      '  @Nr_ItemOld SmallInt'
      ''
      'select'
      '  @Cd_Filial    = :Cd_Filial,'
      '  @Nr_Orcamento = :Nr_Orcamento,'
      '  @Nr_ItemOld   = :Nr_ItemOld'
      ''
      'set @Nr_ItemNew = 1 +'
      '  ('
      '  select'
      '    max( Nr_Item )'
      ''
      '  from'
      '    Orcamento_Item'
      '  where'
      '    Cd_Filial    = @Cd_Filial and'
      '    Nr_Orcamento = @Nr_Orcamento'
      '  )'
      ''
      '--------------- Inclus'#227'o do item'
      'insert into Orcamento_Item( Cd_Filial, Nr_Orcamento, Nr_Item, Cd_Produto,'
      '   Nm_Produto, Sg_Unidade, Qt_Item, Vl_Unitario, Fl_Confirmado, Cd_SubProduto,'
      '   Im_SubProduto, Ds_Ambiente, Fl_Medida, Nr_Lote, Dt_Fabricacao, Dt_Validade,'
      '   Fl_OrdemServico, Cd_Tributacao, xPed, nItemPed )'
      ''
      'select'
      '  @Cd_Filial, @Nr_Orcamento, @Nr_ItemNew, Cd_Produto, Nm_Produto,'
      '  Sg_Unidade, Qt_Item, Vl_Unitario, Fl_Confirmado, Cd_SubProduto,'
      '  Im_SubProduto, Ds_Ambiente, Fl_Medida, Nr_Lote, Dt_Fabricacao,'
      '  Dt_Validade, Fl_OrdemServico, Cd_Tributacao, xPed, nItemPed'
      ''
      'from'
      '  Orcamento_Item'
      ''
      'where'
      '  Cd_Filial    = @Cd_Filial and'
      '  Nr_Orcamento = @Nr_Orcamento and'
      '  Nr_Item      = @Nr_ItemOld'
      ''
      '--------------- Inclus'#227'o dos detalhamentos'
      '--------------- Inclusao dos itens'
      'insert into Orcamento_Detalhe( Cd_Filial, Nr_Orcamento, Nr_Item, Nr_Detalhe,'
      '  Qt_Item, Nr_Comprimento, Nr_Largura, Nr_Altura, Ds_Detalhe )'
      ''
      'select'
      '  @Cd_Filial, @Nr_Orcamento, @Nr_ItemNew, Nr_Detalhe, Qt_Item, Nr_Comprimento,'
      '  Nr_Largura, Nr_Altura, Ds_Detalhe'
      ''
      'from'
      '  Orcamento_Detalhe'
      ''
      'where'
      '  Cd_Filial    = @Cd_Filial and'
      '  Nr_Orcamento = @Nr_Orcamento and'
      '  Nr_Item      = @Nr_ItemOld'
    )
    Left = 333
    Top = 339
  end
  object DsProdSelect: TDataSource
    DataSet = ADODsProdSelect
    Left = 243
    Top = 339
  end
  object PopMenDescAcresc: TPopupMenu
    Left = 736
    Top = 72
    object ItemMenDesconto: TMenuItem
      Caption = 'Distribuir Desconto'
      OnClick = ItemMenDescontoClick
    end
    object AcrscimoDesconto1: TMenuItem
      Caption = 'Acr'#233'scimo / Desconto'
      OnClick = AcrscimoDesconto1Click
    end
  end
  object ADODsNFe: TADODataSet
    Connection = FrmMain.ADOConMaster
    CommandText = 'select'#13#10'  N.St_NFe'#13#10#13#10'from'#13#10'  NFe N'#13#10#13#10'where'#13#10'  N.Cd_Filial = :Cd_Filial and'#13#10'  N.Fl_Origem = ''''1'''' and'#13#10'  N.Nr_Origem = :Nr_Orcamento and'#13#10'  N.St_NFe    > ''''1'''
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
    Left = 368
    Top = 344
  end
end
