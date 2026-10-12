object FrmReceber_Baixa: TFrmReceber_Baixa
  Left = 312
  Top = 186
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Baixa de Contas '#224' Receber'
  ClientHeight = 541
  ClientWidth = 884
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 21
    Height = 541
    Align = alLeft
    TabOrder = 1
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 863
    Height = 541
    Align = alClient
    ParentColor = True
    TabOrder = 0
    object BvlSeparator: TBevel
      Left = 3
      Top = 510
      Width = 854
      Height = 5
      Shape = bsTopLine
    end
    object Label1: TLabel
      Left = 86
      Top = 1
      Width = 44
      Height = 13
      Caption = 'Receber:'
    end
    object Label12: TLabel
      Left = 159
      Top = 0
      Width = 35
      Height = 13
      Caption = 'Cliente:'
    end
    object SbEmitente: TSpeedButton
      Left = 204
      Top = 15
      Width = 23
      Height = 19
      Hint = 'Seleciona Fornecedor'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbEmitenteClick
    end
    object Label2: TLabel
      Left = 577
      Top = 1
      Width = 41
      Height = 13
      Caption = 'Per'#237'odo:'
    end
    object SbOpen: TSpeedButton
      Left = 768
      Top = 54
      Width = 85
      Height = 19
      Hint = 'Visualizar (F5)'
      Caption = '&Selecionar'
      Flat = True
      Glyph.Data = {binary 250 bytes}
      ParentShowHint = False
      ShowHint = True
      OnClick = SbOpenClick
    end
    object Label14: TLabel
      Left = 5
      Top = 447
      Width = 102
      Height = 13
      Caption = '&Documento de Baixa:'
      FocusControl = EdtNr_DoctoBaixa
    end
    object Label5: TLabel
      Left = 766
      Top = 0
      Width = 55
      Height = 13
      Caption = 'Movimento:'
    end
    object BvlSeparator_1: TBevel
      Left = 3
      Top = 74
      Width = 854
      Height = 5
      Shape = bsTopLine
    end
    object Label3: TLabel
      Left = 5
      Top = 77
      Width = 44
      Height = 13
      Caption = 'Parcelas:'
    end
    object Bevel1: TBevel
      Left = 3
      Top = 407
      Width = 854
      Height = 5
      Shape = bsTopLine
    end
    object Label4: TLabel
      Left = 5
      Top = 412
      Width = 57
      Height = 13
      Caption = 'Pagamento:'
    end
    object Label6: TLabel
      Left = 90
      Top = 412
      Width = 28
      Height = 13
      Caption = 'Juros:'
    end
    object Label7: TLabel
      Left = 175
      Top = 412
      Width = 29
      Height = 13
      Caption = 'Multa:'
    end
    object Label8: TLabel
      Left = 260
      Top = 412
      Width = 75
      Height = 13
      Caption = 'Outros Cr'#233'ditos:'
    end
    object Label9: TLabel
      Left = 345
      Top = 412
      Width = 56
      Height = 13
      Caption = 'Abatimento:'
    end
    object Label10: TLabel
      Left = 430
      Top = 412
      Width = 49
      Height = 13
      Caption = 'Desconto:'
    end
    object Label11: TLabel
      Left = 515
      Top = 412
      Width = 73
      Height = 13
      Caption = 'Outros D'#233'bitos:'
    end
    object SbReceber: TSpeedButton
      Left = 132
      Top = 15
      Width = 23
      Height = 19
      Hint = 'Seleciona Conta '#224' Receber'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbReceberClick
    end
    object Label19: TLabel
      Left = 298
      Top = 37
      Width = 291
      Height = 13
      Caption = 'Hist'#243'rico (Informe o hist'#243'rico para gerar lan'#231'amento no caixa):'
    end
    object SbHistorico: TSpeedButton
      Tag = 1
      Left = 338
      Top = 52
      Width = 23
      Height = 19
      Hint = 'Consulta de Hist'#243'rio'
      Flat = True
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
      OnClick = SbHistoricoClick
    end
    object Label13: TLabel
      Left = 5
      Top = 1
      Width = 74
      Height = 13
      Caption = 'Fatura/Parcela:'
    end
    object Label15: TLabel
      Left = 232
      Top = 447
      Width = 120
      Height = 13
      Caption = 'O&bserva'#231#245'es da Parcela:'
      FocusControl = MmObsParcela
    end
    object LblTotal: TLabel
      Left = 391
      Top = 392
      Width = 442
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
    object Label18: TLabel
      Left = 5
      Top = 37
      Width = 43
      Height = 13
      Caption = 'Portador:'
    end
    object SbPortador: TSpeedButton
      Left = 45
      Top = 52
      Width = 23
      Height = 19
      Hint = 'Seleciona Portador'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbPortadorClick
    end
    object BitBtnConfirm: TBitBtn
      Left = 690
      Top = 514
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 21
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 776
      Top = 514
      Width = 85
      Height = 25
      Cancel = True
      Caption = '&Cancelar'
      TabOrder = 23
      OnClick = BitBtnCancelClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object EdtNr_Receber: TCurrencyEdit
      Tag = 1
      Left = 86
      Top = 15
      Width = 45
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnKeyDown = EdtNr_ReceberKeyDown
    end
    object EdtCd_Emitente: TCurrencyEdit
      Tag = 2
      Left = 159
      Top = 15
      Width = 45
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 3
      OnExit = EdtCd_EmitenteExit
      OnKeyDown = EdtNr_ReceberKeyDown
    end
    object EdtNm_Emitente: TEdit
      Left = 228
      Top = 15
      Width = 346
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
      TabOrder = 4
    end
    object EdtDt_Start: TDateEdit
      Left = 577
      Top = 15
      Width = 90
      Height = 19
      CheckOnExit = True
      DialogTitle = 'Selecione a Data'
      GlyphKind = gkCustom
      Glyph.Data = {binary 1850 bytes}
      NumGlyphs = 1
      StartOfWeek = Sun
      TabOrder = 5
      OnKeyDown = EdtNr_ReceberKeyDown
    end
    object EdtDt_End: TDateEdit
      Left = 672
      Top = 15
      Width = 90
      Height = 19
      CheckOnExit = True
      DialogTitle = 'Selecione a Data'
      GlyphKind = gkCustom
      Glyph.Data = {binary 1850 bytes}
      NumGlyphs = 1
      StartOfWeek = Sun
      TabOrder = 6
      OnKeyDown = EdtNr_ReceberKeyDown
    end
    object EdtNr_DoctoBaixa: TEdit
      Left = 5
      Top = 462
      Width = 221
      Height = 19
      Ctl3D = False
      MaxLength = 20
      ParentCtl3D = False
      TabOrder = 22
    end
    object EdtDt_Movto: TDateEdit
      Left = 766
      Top = 15
      Width = 90
      Height = 19
      CheckOnExit = True
      DialogTitle = 'Selecione a Data'
      GlyphKind = gkCustom
      Glyph.Data = {binary 1850 bytes}
      NumGlyphs = 1
      StartOfWeek = Sun
      TabOrder = 7
    end
    object EdtVl_Pagamento: TCurrencyEdit
      Left = 5
      Top = 427
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      TabOrder = 14
    end
    object EdtVl_Juros: TCurrencyEdit
      Left = 90
      Top = 427
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      TabOrder = 15
    end
    object EdtVl_Multa: TCurrencyEdit
      Left = 175
      Top = 427
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      TabOrder = 16
    end
    object EdtVl_Creditos: TCurrencyEdit
      Left = 260
      Top = 427
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      TabOrder = 17
    end
    object EdtVl_Abatimento: TCurrencyEdit
      Left = 345
      Top = 427
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      TabOrder = 18
    end
    object EdtVl_Desconto: TCurrencyEdit
      Left = 430
      Top = 427
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      TabOrder = 19
    end
    object EdtVl_Debitos: TCurrencyEdit
      Left = 515
      Top = 427
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      TabOrder = 20
    end
    object EdtCd_Historico: TCurrencyEdit
      Tag = 3
      Left = 298
      Top = 52
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '###'
      TabOrder = 10
      OnExit = EdtCd_HistoricoExit
      OnKeyDown = EdtNr_ReceberKeyDown
    end
    object EdtDs_Historico: TEdit
      Left = 361
      Top = 52
      Width = 228
      Height = 19
      TabStop = False
      AutoSize = False
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 11
    end
    object EdtPr_Juros: TCurrencyEdit
      Left = 592
      Top = 52
      Width = 50
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DisplayFormat = '#,##0.00'
      TabOrder = 13
    end
    object CkBJuros: TCheckBox
      Left = 592
      Top = 35
      Width = 225
      Height = 17
      Caption = 'Taxa de Juros Mensal (Usar a do Portador):'
      Checked = True
      State = cbChecked
      TabOrder = 12
    end
    object EdtNr_Fatura: TCurrencyEdit
      Tag = 1
      Left = 5
      Top = 15
      Width = 50
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '###'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnKeyDown = EdtNr_ReceberKeyDown
    end
    object EdtNr_Parcela: TCurrencyEdit
      Tag = 1
      Left = 56
      Top = 15
      Width = 25
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '###'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnExit = EdtNr_ParcelaExit
      OnKeyDown = EdtNr_ReceberKeyDown
    end
    object MmObsParcela: TMemo
      Left = 232
      Top = 462
      Width = 521
      Height = 45
      ScrollBars = ssVertical
      TabOrder = 24
    end
    object RdBtnParcelas: TRadioButton
      Left = 414
      Top = 75
      Width = 113
      Height = 17
      Caption = 'Somente parcelas'
      Checked = True
      TabOrder = 25
      TabStop = True
      OnClick = RdBtnParcelasClick
    end
    object RdBtnProduto: TRadioButton
      Left = 526
      Top = 75
      Width = 113
      Height = 17
      Caption = 'Produtos Vendidos'
      TabOrder = 26
      OnClick = RdBtnParcelasClick
    end
    object RdBtnBancario: TRadioButton
      Left = 639
      Top = 75
      Width = 113
      Height = 17
      Caption = 'Controle Banc'#225'rio'
      TabOrder = 27
      OnClick = RdBtnParcelasClick
    end
    object PnlProdutos: TPanel
      Left = 1
      Top = 301
      Width = 856
      Height = 96
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 28
      object LblVendedor: TLabel
        Left = 5
        Top = -1
        Width = 49
        Height = 13
        Caption = 'Vendedor:'
      end
      object DbTxtVendedor: TDBText
        Left = 56
        Top = 0
        Width = 75
        Height = 13
        AutoSize = True
        DataField = 'Dp_Vendedor'
        DataSource = DsParcela
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DbGProduto: TDBGrid
        Left = 5
        Top = 20
        Width = 691
        Height = 75
        DataSource = DsProduto
        FixedColor = clSilver
        Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = DbGProdutoDblClick
        OnEnter = DbGParcelasEnter
        OnExit = DbGParcelasExit
        OnKeyPress = DbGProdutoKeyPress
        Columns = <
          item
            Expanded = False
            FieldName = 'nm_produto'
            Width = 444
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'qt_item'
            Title.Alignment = taRightJustify
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'vl_unitario'
            Title.Alignment = taRightJustify
            Width = 65
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'vl_total'
            Title.Alignment = taRightJustify
            Width = 79
            Visible = True
          end>
      end
    end
    object DbGParcelas: TDBGrid
      Left = 6
      Top = 93
      Width = 851
      Height = 126
      DataSource = DsParcela
      FixedColor = clSilver
      Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      PopupMenu = PopMenReceber
      TabOrder = 29
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = DbGParcelasDblClick
      OnEnter = DbGParcelasEnter
      OnExit = DbGParcelasExit
      OnKeyDown = DbGParcelasKeyDown
      Columns = <
        item
          Alignment = taRightJustify
          Expanded = False
          FieldName = 'dp_receber'
          Title.Alignment = taRightJustify
          Width = 71
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Dp_Emitente'
          Width = 316
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nr_fatura'
          Title.Alignment = taRightJustify
          Width = 44
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dt_emissao'
          Title.Alignment = taCenter
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Dt_Vencimento'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nr_Dias'
          Width = 33
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Vl_Parcela'
          Title.Alignment = taRightJustify
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'vl_recebido'
          Title.Alignment = taRightJustify
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Dp_Saldo'
          Title.Alignment = taRightJustify
          Width = 80
          Visible = True
        end>
    end
    object PnlBancario: TPanel
      Left = 1
      Top = 223
      Width = 856
      Height = 75
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 30
      object Label16: TLabel
        Left = 6
        Top = 2
        Width = 167
        Height = 13
        Caption = 'Conta Corrente (Controle Banc'#225'rio):'
      end
      object SbConta: TSpeedButton
        Tag = 1
        Left = 50
        Top = 17
        Width = 22
        Height = 19
        Hint = 'Consulta de Conta'
        Flat = True
        Glyph.Data = {binary 2066 bytes}
        NumGlyphs = 2
        OnClick = SbContaClick
      end
      object Label17: TLabel
        Left = 390
        Top = 1
        Width = 24
        Height = 13
        Caption = 'Tipo:'
      end
      object SbHistConta: TSpeedButton
        Tag = 2
        Left = 46
        Top = 52
        Width = 23
        Height = 19
        Hint = 'Consulta de Hist'#243'rio'
        Flat = True
        Glyph.Data = {binary 2066 bytes}
        NumGlyphs = 2
        OnClick = SbHistoricoClick
      end
      object Label20: TLabel
        Left = 6
        Top = 36
        Width = 44
        Height = 13
        Caption = 'Hist'#243'rico:'
      end
      object Label21: TLabel
        Left = 615
        Top = 36
        Width = 54
        Height = 13
        Caption = 'Bloqueado:'
      end
      object Label22: TLabel
        Left = 687
        Top = 36
        Width = 65
        Height = 13
        Caption = 'Compensado:'
      end
      object EdtDs_Conta: TEdit
        Left = 73
        Top = 17
        Width = 313
        Height = 19
        TabStop = False
        AutoSize = False
        Color = clSilver
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
      end
      object EdtId_Conta: TCurrencyEdit
        Tag = 5
        Left = 6
        Top = 17
        Width = 40
        Height = 19
        Margins.Left = 2
        Margins.Top = 2
        AutoSize = False
        DecimalPlaces = 0
        DisplayFormat = '###'
        TabOrder = 0
        OnExit = EdtId_ContaExit
        OnKeyDown = EdtNr_ReceberKeyDown
      end
      object CbTp_Lancamento: TComboBox
        Left = 390
        Top = 16
        Width = 170
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        TabOrder = 2
        Items.Strings = (
          '1 - Dep'#243'sito em Dinheiro'
          '2 - Dep'#243'sito em Cheque'
          '3 - Tranfer'#234'ncia (Entrada)'
        )
      end
      object EdtCd_HistConta: TCurrencyEdit
        Tag = 4
        Left = 6
        Top = 52
        Width = 40
        Height = 19
        Margins.Left = 2
        Margins.Top = 2
        AutoSize = False
        DecimalPlaces = 0
        DisplayFormat = '###'
        TabOrder = 3
        OnExit = EdtCd_HistoricoExit
        OnKeyDown = EdtNr_ReceberKeyDown
      end
      object EdtNm_HistConta: TEdit
        Left = 69
        Top = 52
        Width = 282
        Height = 19
        TabStop = False
        AutoSize = False
        Color = clSilver
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 4
      end
      object EdtDs_Lancamento: TLabeledEdit
        Left = 355
        Top = 52
        Width = 257
        Height = 19
        AutoSelect = False
        EditLabel.Width = 120
        EditLabel.Height = 13
        EditLabel.Caption = 'Descri'#231#227'o complementar:'
        LabelSpacing = 2
        MaxLength = 50
        TabOrder = 5
      end
      object CbBloqueado: TComboBox
        Left = 615
        Top = 51
        Width = 66
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        TabOrder = 6
        Items.Strings = (
          'Sim'
          'N'#227'o'
        )
      end
      object CbCompensado: TComboBox
        Left = 687
        Top = 51
        Width = 66
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        TabOrder = 7
        Items.Strings = (
          'Sim'
          'N'#227'o'
        )
      end
      object CkBUnico: TCheckBox
        Left = 739
        Top = 1
        Width = 112
        Height = 17
        Caption = 'Lan'#231'amento '#250'nico'
        Checked = True
        Ctl3D = False
        ParentCtl3D = False
        State = cbChecked
        TabOrder = 8
      end
    end
    object EdtNm_Portador: TEdit
      Left = 69
      Top = 52
      Width = 226
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
      TabOrder = 9
    end
    object EdtCd_Portador: TCurrencyEdit
      Tag = 6
      Left = 5
      Top = 52
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 8
      OnExit = EdtCd_PortadorExit
      OnKeyDown = EdtNr_ReceberKeyDown
    end
  end
  object ADODsParcela: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    BeforeScroll = ADODsParcelaBeforeScroll
    OnCalcFields = ADODsParcelaCalcFields
    CommandText = 'select'#13#10'  A.Nr_Receber, A.Nr_Parcela, A.Dt_Vencimento, A.Vl_Parcela, A.Vl_Recebido,'#13#10'  Cast( B.Cd_Emitente as VarChar ) + '''' - '''' + C.Nm_Emitente as Dp_Emitente,'#13#10'  A.Vl_Parcela - A.Vl_Recebido as Vl_Saldo, B.Nr_Balcao, B.Nr_Orcamento,'#13#10'  Cast( A.Nr_Receber as VarChar ) + ''''/'''' + dbo.IntToStrZero( A.Nr_Parcela, 2 ) as Dp_Receber,'#13#10'  DateDiff( Day, A.Dt_Vencimento, ''''04/10/2007'''' ) as Nr_Dias, A.Cd_Filial, B.Dt_Emissao,'#13#10'  FB.Nm_Funcionario as Nm_Balcao, FO.Nm_Funcionario as Nm_Orcamento,'#13#10'  P.Pr_TaxaJuros, O.Nr_Fatura, B.Cd_Emitente, A.Mm_Observacao'#13#10'  '#13#10'from'#13#10'  Receber_Parcela A'#13#10#13#10'inner join'#13#10'  Receber B'#13#10'on'#13#10'  B.Cd_Filial  = A.Cd_Filial and'#13#10'  B.Nr_Receber = A.Nr_Receber and'#13#10'  B.St_Receber <= ''''2'''#13#10#13#10'inner join'#13#10'  Emitente C'#13#10'on'#13#10'  C.Cd_Emitente = B.Cd_Emitente'#13#10#13#10'inner join'#13#10'  Portador P'#13#10'on'#13#10'  P.Cd_Portador = A.Cd_Portador'#13#10#13#10'left join'#13#10'  Orcamento O'#13#10'on'#13#10'  O.Cd_Filial    = B.Cd_Filial and'#13#10'  O.Nr_Orcamento = B.Nr_Orcamento'#13#10'  /* Fatura */'#13#10#13#10'left join'#13#10'  Funcionario FO'#13#10'on'#13#10'  FO.Cd_Funcionario = O.Cd_Funcionario'#13#10#13#10'left join'#13#10'  Balcao BA'#13#10'on'#13#10'  BA.Cd_Filial = B.Cd_Filial and'#13#10'  BA.Nr_Balcao = B.Nr_Balcao'#13#10#13#10'left join'#13#10'  Funcionario FB'#13#10'on'#13#10'  FB.Cd_Funcionario = BA.Cd_Funcionario'#13#10'  '#13#10'where'#13#10'  A.Cd_Filial = :Cd_Filial and'#13#10#13#10'  A.Vl_Parcela > A.Vl_Recebido'#13#10#13#10'order by'#13#10'  A.Dt_Vencimento, A.Nr_Receber, A.Nr_Parcela'
    Parameters = <
      item
        Name = 'Cd_Filial'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = nil?
      end>
    SQLOther1.Strings = (
      'select'
      '  A.Nr_Receber, A.Nr_Parcela, A.Dt_Vencimento, A.Vl_Parcela, A.Vl_Recebido,'
      '  Cast( B.Cd_Emitente as VarChar ) + '''' - '''' + C.Nm_Emitente as Dp_Emitente,'
      ''
      '  A.Vl_Parcela - A.Vl_Recebido - Coalesce('
      '          ('
      '          select'
      '            sum( RH.Vl_Lancamento )'
      ''
      '          from'
      '            Receber_Historico RH'
      ''
      '          where'
      '            RH.Cd_Filial      = A.Cd_Filial and'
      '            RH.Nr_Receber     = A.Nr_Receber and'
      '            RH.Nr_Parcela     = A.Nr_Parcela and'
      '            RH.Tp_Lancamento >= ''''5'''' and'
      '            RH.Tp_Lancamento <= ''''7'''
      '          ), 0.0 ) as Vl_Saldo,'
      ''
      '  B.Nr_Balcao, B.Nr_Orcamento,'
      '  Cast( A.Nr_Receber as VarChar ) + ''''/'''' + dbo.IntToStrZero( A.Nr_Parcela, 2 ) as Dp_Receber,'
      '  DateDiff( Day, A.Dt_Vencimento, @Dt_Now ) as Nr_Dias, A.Cd_Filial, B.Dt_Emissao,'
      '  FB.Nm_Funcionario as Nm_Balcao, FO.Nm_Funcionario as Nm_Orcamento,'
      '  P.Pr_TaxaJuros, O.Nr_Fatura, B.Cd_Emitente, A.Mm_Observacao'
      '  '
      'from'
      '  Receber_Parcela A'
      ''
      'inner join'
      '  Receber B'
      'on'
      '  B.Cd_Filial  = A.Cd_Filial and'
      '  B.Nr_Receber = A.Nr_Receber and'
    )
    SQLOther2.Strings = (
      '  B.St_Receber <= ''''2'''
      ''
      'inner join'
      '  Emitente C'
      'on'
      '  C.Cd_Emitente = B.Cd_Emitente'
      ''
      'inner join'
      '  Portador P'
      'on'
      '  P.Cd_Portador = A.Cd_Portador'
      ''
      '/* Join Orcamento */'
      '  Orcamento O'
      'on'
      '  O.Cd_Filial    = B.Cd_Filial and'
      '  O.Nr_Orcamento = B.Nr_Orcamento'
      '  /* Fatura */'
      ''
      'left join'
      '  Funcionario FO'
      'on'
      '  FO.Cd_Funcionario = O.Cd_Funcionario'
      ''
      'left join'
      '  Balcao BA'
      'on'
      '  BA.Cd_Filial = B.Cd_Filial and'
      '  BA.Nr_Balcao = B.Nr_Balcao'
      ''
      'left join'
      '  Funcionario FB'
      'on'
      '  FB.Cd_Funcionario = BA.Cd_Funcionario'
      '  '
      'where'
      '  A.Cd_Filial = :Cd_Filial and'
    )
    Left = 52
    Top = 482
    object ADODsParcelaNr_Parcela: TSmallintField
      FieldName = 'Nr_Parcela'
    end
    object ADODsParcelaDt_Vencimento: TDateTimeField
      DisplayLabel = 'Vencimento'
      FieldName = 'Dt_Vencimento'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object ADODsParcelaVl_Parcela: TBCDField
      DisplayLabel = 'Parcela'
      FieldName = 'Vl_Parcela'
      DisplayFormat = '#,##0.00'
      Precision = 10
    end
    object ADODsParcelaDp_Emitente: TStringField
      DisplayLabel = 'Cliente'
      FieldName = 'Dp_Emitente'
      ReadOnly = True
      Size = 58
    end
    object ADODsParcelaVl_Saldo: TBCDField
      DisplayLabel = 'Saldo'
      FieldName = 'Vl_Saldo'
      ReadOnly = True
      DisplayFormat = '#,##0.00'
      Precision = 10
    end
    object ADODsParcelaNr_Dias: TIntegerField
      DisplayLabel = 'Atraso'
      FieldName = 'Nr_Dias'
      ReadOnly = True
      DisplayFormat = '#,##0'
    end
    object ADODsParcelanr_receber: TIntegerField
      FieldName = 'nr_receber'
    end
    object ADODsParcelavl_recebido: TBCDField
      DisplayLabel = 'Recebido'
      FieldName = 'vl_recebido'
      DisplayFormat = '#,##0.00'
      Precision = 12
      Size = 2
    end
    object ADODsParceladp_receber: TStringField
      DisplayLabel = 'Receber'
      FieldName = 'dp_receber'
      Size = 254
    end
    object ADODsParcelanr_balcao: TIntegerField
      FieldName = 'nr_balcao'
    end
    object ADODsParcelanr_orcamento: TIntegerField
      FieldName = 'nr_orcamento'
    end
    object ADODsParcelacd_filial: TSmallintField
      FieldName = 'cd_filial'
    end
    object ADODsParcelaCd_Filial_Balcao: TSmallintField
      FieldKind = fkCalculated
      FieldName = 'Cd_Filial_Balcao'
      Calculated = True
    end
    object ADODsParcelaCd_Filial_Orcamento: TSmallintField
      FieldKind = fkCalculated
      FieldName = 'Cd_Filial_Orcamento'
      Calculated = True
    end
    object ADODsParceladt_emissao: TDateTimeField
      DisplayLabel = 'Compra'
      FieldName = 'dt_emissao'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object ADODsParcelanm_balcao: TStringField
      FieldName = 'nm_balcao'
      Size = 50
    end
    object ADODsParcelanm_orcamento: TStringField
      FieldName = 'nm_orcamento'
      Size = 50
    end
    object ADODsParcelaDp_Vendedor: TStringField
      FieldKind = fkCalculated
      FieldName = 'Dp_Vendedor'
      Size = 50
      Calculated = True
    end
    object ADODsParcelapr_taxajuros: TBCDField
      FieldName = 'pr_taxajuros'
      Precision = 9
      Size = 2
    end
    object ADODsParcelaDp_Saldo: TFloatField
      DisplayLabel = 'Saldo'
      FieldKind = fkCalculated
      FieldName = 'Dp_Saldo'
      DisplayFormat = '#,##0.00'
      Calculated = True
    end
    object ADODsParcelaVl_Juros: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Vl_Juros'
      Calculated = True
    end
    object ADODsParcelanr_fatura: TIntegerField
      DisplayLabel = 'Fatura'
      FieldName = 'nr_fatura'
    end
    object ADODsParcelacd_emitente: TIntegerField
      FieldName = 'cd_emitente'
    end
    object ADODsParcelaMm_Observacao: TMemoField
      FieldName = 'Mm_Observacao'
      BlobType = ftMemo
    end
  end
  object DsParcela: TDataSource
    DataSet = ADODsParcela
    Left = 22
    Top = 482
  end
  object ADODsLancto: TMultADODS
    Connection = FrmMain.ADOConMaster
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  max( Nr_Lancamento ) as NewLancto'#13#10#13#10'from'#13#10'  Receber_Historico'#13#10#13#10'where'#13#10'  Cd_Filial  = :Cd_Filial and'#13#10'  Nr_Receber = :Nr_Receber and'#13#10'  Nr_Parcela = :Nr_Parcela'
    FieldDefs = <>
    Parameters = <
      item
        Name = 'Cd_Filial'
        Size = -1
        Value = nil?
      end
      item
        Name = 'Nr_Receber'
        Size = -1
        Value = nil?
      end
      item
        Name = 'Nr_Parcela'
        Size = -1
        Value = nil?
      end>
    StoreDefs = True
    SQLOther0.Strings = (
      '-------------------- Lan'#231'amento de Historico'
      'select'
      '  max( Nr_Lancamento ) as NewLancto'
      ''
      'from'
      '  Receber_Historico'
      ''
      'where'
      '  Cd_Filial  = :Cd_Filial and'
      '  Nr_Receber = :Nr_Receber and'
      '  Nr_Parcela = :Nr_Parcela'
    )
    SQLOther1.Strings = (
      '-------------------- Proximo lan'#231'amento no caixa'
      'select'
      '  max( Nr_Lancamento ) as NewLancto'
      ''
      'from'
      '  Caixa'
      ''
      'where'
      '  Cd_Filial  = :Cd_Filial '
    )
    SQLOther2.Strings = (
      '-------------------- Lan'#231'amento de CCorrente'
      'select'
      '  max( Nr_Lancamento ) as NewLancto'
      ''
      'from'
      '  CCorrente_Lancto'
      ''
      'where'
      '  Id_Conta      = :Id_Conta'
      ''
    )
    Left = 94
    Top = 482
  end
  object ADOCmdInsert: TMultADOCMD
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLOther0.Strings = (
      'insert into Receber_Historico( Cd_Filial, Nr_Receber, Nr_Parcela, Nr_Lancamento,'
      '   Tp_Lancamento, Dt_Lancamento, Vl_Lancamento, Nr_DoctoBaixa, Cd_Usuario )'
      'values( :Cd_Filial, :Nr_Receber, :Nr_Parcela, :Nr_Lancamento, :Tp_Lancamento,'
      '   :Dt_Lancamento, :Vl_Lancamento, :Nr_DoctoBaixa, :Cd_Usuario )'
    )
    SQLOther1.Strings = (
      '-- Insere lan'#231'amento no caixa'
      'insert into Caixa( Cd_Filial, Nr_Lancamento, Dt_Lancamento,'
      '  Tp_Lancamento, Vl_Lancamento, Ds_Lancamento, Cd_Historico, Nr_Documento,'
      '  Nr_Receber, Nr_Receber_Par, Nr_Receber_Lancto, Cd_Usuario )'
      ''
      'values( :Cd_Filial, :Nr_Lancamento, :Dt_Lancamento,'
      '  ''''1'''', :Vl_Lancamento, :Ds_Lancamento, :Cd_Historico, :Nr_Documento,'
      '  :Nr_Receber, :Nr_Receber_Par, :Nr_Receber_Lancto, :Cd_Usuario )'
    )
    SQLOther2.Strings = (
      '-------------------- Alterar as Observa'#231#245'es da Parcela'
      'update'
      '  Receber_Parcela'
      ''
      'set'
      '  Mm_Observacao = :Mm_Observacao'
      ''
      'where'
      '  Cd_Filial  = :Cd_Filial and'
      '  Nr_Receber = :Nr_Receber and'
      '  Nr_Parcela = :Nr_Parcela'
    )
    SQLOther3.Strings = (
      'declare'
      '  @Id_Conta SmallInt,'
      '  @Vl_Saldo Numeric( 12, 3 ),'
      '  @Vl_Bloqueado Numeric( 12, 3 )'
      ''
      'select'
      '  @Id_Conta = :Id_Conta'
      ''
      '-------------------- Inclus'#227'o de CCorrente'
      'insert into CCorrente_Lancto( Id_Conta, Nr_Lancamento, Tp_Lancamento,'
      '   Dt_Lancamento, Vl_Lancamento, Cd_Historico, Ds_Lancamento, Nr_Documento,'
      '   Fl_Bloqueado, Fl_Compensado )'
      ''
      'values( @Id_Conta, :Nr_Lancamento, :Tp_Lancamento, :Dt_Lancamento,'
      '   :Vl_Lancamento, :Cd_Historico, :Ds_Lancamento, :Nr_Documento,'
      '   :Fl_Bloqueado, :Fl_Compensado )'
      ''
      '-------------------- Recalcula os saldos'
      'select'
      '  @Vl_Saldo = sum('
      '    case'
      '      when Tp_Lancamento <= ''''3'''' then Vl_Lancamento'
      '      else -1 * Vl_Lancamento'
      '    end ),'
      ''
      '  @Vl_Bloqueado = sum('
      '    case'
      '      when Fl_Bloqueado = ''''1'''' then Vl_Lancamento'
      '      else 0'
      '    end )'
      ''
      'from'
      '  CCorrente_Lancto'
      ''
      'where'
      '  Id_Conta      = @Id_Conta and'
      '  Fl_Compensado = ''''1'''
      ''
      '-------------------- Atualiza os Saldos'
      'update'
      '  CCorrente'
      ''
      'set'
      '  Vl_Saldo     = Coalesce( @Vl_Saldo, 0.0 ),'
      '  Vl_Bloqueado = Coalesce( @Vl_Bloqueado, 0.0 )'
      ''
      'where'
      '  Id_Conta = @Id_Conta'
    )
    Left = 124
    Top = 482
  end
  object DsProduto: TDataSource
    DataSet = ADODsProduto
    Left = 168
    Top = 482
  end
  object ADODsProduto: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  ''''1'''' as Fl_Local, BI.Nr_Item, B.Nr_Balcao as Nr_Atendimento, P.Nm_Produto,'#13#10'  BI.Qt_Item, BI.Vl_Unitario, BI.Vl_Unitario * BI.Qt_Item as Vl_Total'#13#10#13#10'from'#13#10'  Balcao B'#13#10#13#10'inner join'#13#10'  Balcao_Item BI'#13#10'on'#13#10'  BI.Cd_Filial     = B.Cd_Filial and'#13#10'  BI.Nr_Balcao     = B.Nr_Balcao and'#13#10'  BI.Fl_Confirmado = ''''1'''#13#10#13#10'inner join'#13#10'  Produto P'#13#10'on'#13#10'  P.Cd_Produto = BI.Cd_Produto'#13#10#13#10'where'#13#10'  B.Cd_Filial = :Cd_Filial_Balcao and'#13#10'  B.Nr_Balcao = :Nr_Balcao'#13#10#13#10'union'#13#10#13#10'select'#13#10'  ''''2'''' as Fl_Local, OI.Nr_Item, O.Nr_Orcamento as Nr_Atendimento,'#13#10'  case'#13#10'    when OI.Cd_Produto is null then OI.Nm_Produto'#13#10'    else P.Nm_Produto'#13#10'  end, OI.Qt_Item, OI.Vl_Unitario, OI.Vl_Unitario * OI.Qt_Item as Vl_Total'#13#10#13#10'from'#13#10'  Orcamento O'#13#10#13#10'inner join'#13#10'  Orcamento_Item OI'#13#10'on'#13#10'  OI.Cd_Filial     = O.Cd_Filial and'#13#10'  OI.Nr_Orcamento  = O.Nr_Orcamento and'#13#10'  OI.Fl_Confirmado = ''''1'''#13#10#13#10'left join'#13#10'  Produto P'#13#10'on'#13#10'  P.Cd_Produto = OI.Cd_Produto'#13#10#13#10'where'#13#10'  O.Cd_Filial    = :Cd_Filial_Orcamento and'#13#10'  O.Nr_Orcamento = :Nr_Orcamento'#13#10#13#10'order by'#13#10'  2'
    DataSource = DsParcela
    MasterFields = 'Cd_Filial_Balcao;Nr_Balcao;Cd_Filial_Orcamento;Nr_Orcamento'
    Parameters = <
      item
        Name = 'Cd_Filial_Balcao'
        DataType = ftSmallint
        Value = nil?
      end
      item
        Name = 'Nr_Balcao'
        DataType = ftInteger
        Value = nil?
      end
      item
        Name = 'Cd_Filial_Orcamento'
        DataType = ftSmallint
        Value = nil?
      end
      item
        Name = 'Nr_Orcamento'
        DataType = ftInteger
        Value = 1
      end>
    Left = 197
    Top = 482
    object ADODsProdutonm_produto: TStringField
      DisplayLabel = 'Produto'
      FieldName = 'nm_produto'
      Size = 120
    end
    object ADODsProdutoqt_item: TBCDField
      DisplayLabel = 'Quantidade'
      FieldName = 'qt_item'
      DisplayFormat = '#,##0'
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
    object ADODsProdutovl_total: TBCDField
      DisplayLabel = 'Total'
      FieldName = 'vl_total'
      DisplayFormat = '#,##0.00'
      Precision = 28
      Size = 6
    end
    object ADODsProdutofl_local: TStringField
      FieldName = 'fl_local'
      Size = 254
    end
    object ADODsProdutonr_item: TSmallintField
      FieldName = 'nr_item'
    end
    object ADODsProdutonr_atendimento: TIntegerField
      FieldName = 'nr_atendimento'
    end
  end
  object PopMenReceber: TPopupMenu
    Left = 268
    Top = 484
    object ContasReceber1: TMenuItem
      Caption = 'Contas '#224' Receber'
      OnClick = ContasReceber1Click
    end
    object ItemMenEmitente: TMenuItem
      Caption = 'Cadastro do Emitente'
      OnClick = ItemMenEmitenteClick
    end
  end
end
