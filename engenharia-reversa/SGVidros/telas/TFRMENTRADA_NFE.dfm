object FrmEntrada_NFe: TFrmEntrada_NFe
  Left = 294
  Top = 173
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Entrada pelo XML da NF-e'
  ClientHeight = 626
  ClientWidth = 1009
  Color = clWhite
  Ctl3D = False
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 21
    Height = 626
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 988
    Height = 626
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 3
      Top = 596
      Width = 980
      Height = 5
      Shape = bsTopLine
    end
    object SbProcessar: TSpeedButton
      Left = 432
      Top = 15
      Width = 121
      Height = 21
      Hint = 'Processa o arquivo escolhido'
      Caption = '&Processar os dados'
      Flat = True
      Glyph.Data = {binary 442 bytes}
      ParentShowHint = False
      ShowHint = True
      OnClick = SbProcessarClick
    end
    object Label10: TLabel
      Left = 6
      Top = 36
      Width = 57
      Height = 13
      Caption = 'Fornecedor:'
    end
    object Label2: TLabel
      Left = 6
      Top = 107
      Width = 27
      Height = 13
      Caption = 'S'#233'rie:'
    end
    object Label3: TLabel
      Left = 35
      Top = 107
      Width = 48
      Height = 13
      Caption = 'Fatura N'#186':'
    end
    object Label5: TLabel
      Left = 6
      Top = 72
      Width = 31
      Height = 13
      Caption = 'CFOP:'
    end
    object Label6: TLabel
      Left = 97
      Top = 107
      Width = 42
      Height = 13
      Caption = 'Emiss'#227'o:'
    end
    object Label7: TLabel
      Left = 189
      Top = 107
      Width = 62
      Height = 13
      Caption = 'Lan'#231'amento:'
    end
    object Label14: TLabel
      Left = 6
      Top = 142
      Width = 71
      Height = 13
      Caption = 'Base de ICMS:'
    end
    object Label8: TLabel
      Left = 91
      Top = 142
      Width = 41
      Height = 13
      Caption = 'Aliquota:'
    end
    object Label9: TLabel
      Left = 136
      Top = 142
      Width = 29
      Height = 13
      Caption = 'ICMS:'
    end
    object Label11: TLabel
      Left = 420
      Top = 142
      Width = 67
      Height = 13
      Caption = 'Valor Produto:'
    end
    object Label12: TLabel
      Left = 505
      Top = 142
      Width = 27
      Height = 13
      Caption = 'Frete:'
    end
    object Label13: TLabel
      Left = 175
      Top = 174
      Width = 16
      Height = 13
      Caption = 'IPI:'
    end
    object Label15: TLabel
      Left = 510
      Top = 174
      Width = 27
      Height = 13
      Caption = 'Total:'
    end
    object Label16: TLabel
      Left = 594
      Top = 174
      Width = 55
      Height = 13
      Caption = 'Peso Bruto:'
    end
    object Label4: TLabel
      Left = 6
      Top = 285
      Width = 66
      Height = 13
      Caption = 'Observa'#231#245'es:'
    end
    object Label19: TLabel
      Left = 221
      Top = 142
      Width = 103
      Height = 13
      Caption = 'Base de Substitui'#231#227'o:'
    end
    object Label20: TLabel
      Left = 328
      Top = 142
      Width = 88
      Height = 13
      Caption = 'Valor Substirui'#231#227'o:'
    end
    object Label21: TLabel
      Left = 6
      Top = 174
      Width = 37
      Height = 13
      Caption = 'Seguro:'
    end
    object Label22: TLabel
      Left = 91
      Top = 174
      Width = 45
      Height = 13
      Caption = 'Despesa:'
    end
    object Label24: TLabel
      Left = 496
      Top = 285
      Width = 146
      Height = 13
      Caption = 'Observa'#231#245'es para Nota Fiscal:'
    end
    object Label25: TLabel
      Left = 124
      Top = 212
      Width = 41
      Height = 13
      Caption = 'Esp'#233'cie:'
    end
    object Label26: TLabel
      Left = 318
      Top = 248
      Width = 75
      Height = 13
      Caption = 'Frete por conta:'
    end
    object Label27: TLabel
      Left = 368
      Top = 212
      Width = 141
      Height = 13
      Caption = 'Modelo de Documento Fiscal:'
    end
    object Label28: TLabel
      Left = 669
      Top = 174
      Width = 66
      Height = 13
      Caption = 'Peso L'#237'quido:'
    end
    object Label29: TLabel
      Left = 260
      Top = 174
      Width = 49
      Height = 13
      Caption = 'Desconto:'
    end
    object Label30: TLabel
      Left = 483
      Top = 248
      Width = 85
      Height = 13
      Caption = 'Emitente da Nota:'
    end
    object Label31: TLabel
      Left = 411
      Top = 248
      Width = 30
      Height = 13
      Caption = 'Placa:'
    end
    object Label23: TLabel
      Left = 6
      Top = 248
      Width = 69
      Height = 13
      Caption = 'Transportador:'
    end
    object Label1: TLabel
      Left = 7
      Top = 358
      Width = 45
      Height = 13
      Caption = 'Produtos:'
    end
    object Label17: TLabel
      Left = 10
      Top = 560
      Width = 74
      Height = 13
      Caption = 'ICMS (R$ / % ):'
      FocusControl = DbEdtPr_Icms
    end
    object Label33: TLabel
      Left = 167
      Top = 560
      Width = 58
      Height = 13
      Caption = 'IPI (R$ / %):'
      FocusControl = DbEdtVl_IPI
    end
    object Label34: TLabel
      Left = 285
      Top = 560
      Width = 62
      Height = 13
      Caption = 'PIS (R$ / %):'
      FocusControl = DbEdPrl_Pis
    end
    object Label37: TLabel
      Left = 401
      Top = 560
      Width = 74
      Height = 13
      Caption = 'Cofins (R$ / %):'
      FocusControl = DbEdtVl_Cofins
    end
    object Label18: TLabel
      Left = 162
      Top = 519
      Width = 72
      Height = 13
      Caption = 'CST / CSOSN:'
      FocusControl = DbEdtCd_CST
    end
    object Label32: TLabel
      Left = 236
      Top = 519
      Width = 31
      Height = 13
      Caption = 'CFOP:'
      FocusControl = DbEdtCd_CFOP
    end
    object Label35: TLabel
      Left = 661
      Top = 519
      Width = 167
      Height = 13
      Caption = 'C'#243'digo de Barras (GTIN / EAN 13):'
      FocusControl = DbEdtCd_Barra
    end
    object Label36: TLabel
      Left = 834
      Top = 519
      Width = 94
      Height = 13
      Caption = 'Class. Fiscal (NCM):'
      FocusControl = DbEdtCd_NCM
    end
    object Label40: TLabel
      Left = 343
      Top = 174
      Width = 17
      Height = 13
      Caption = 'Pis:'
    end
    object Label41: TLabel
      Left = 426
      Top = 174
      Width = 32
      Height = 13
      Caption = 'Cofins:'
    end
    object SbCFOP: TSpeedButton
      Left = 36
      Top = 86
      Width = 23
      Height = 19
      Hint = 'Seleciona CFOP'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbCFOPClick
    end
    object SbArquivo: TSpeedButton
      Left = 407
      Top = 16
      Width = 23
      Height = 19
      Hint = 'Selecionar o Arquivo'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbArquivoClick
    end
    object Label38: TLabel
      Left = 586
      Top = 36
      Width = 72
      Height = 13
      Caption = 'Chave da NFe:'
    end
    object LblProcesso: TLabel
      Left = 808
      Top = 228
      Width = 3
      Height = 13
    end
    object Label39: TLabel
      Left = 6
      Top = 519
      Width = 74
      Height = 13
      Caption = 'C'#243'digo na NFe:'
      FocusControl = DbEdtCd_Produto_NFe
    end
    object Label42: TLabel
      Left = 126
      Top = 560
      Width = 26
      Height = 13
      Caption = 'MVA:'
      FocusControl = DbEdtPr_Icms
    end
    object Label44: TLabel
      Left = 516
      Top = 559
      Width = 54
      Height = 13
      Caption = 'Tributa'#231#227'o:'
      FocusControl = DBEdit3
    end
    object Label77: TLabel
      Left = 282
      Top = 107
      Width = 83
      Height = 13
      Caption = 'Consumidor Final:'
    end
    object Label46: TLabel
      Left = 436
      Top = 72
      Width = 108
      Height = 13
      Caption = 'Finalidade da Emiss'#227'o:'
    end
    object BitBtnConfirm: TBitBtn
      Left = 815
      Top = 599
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 51
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 901
      Top = 599
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 52
      OnClick = BitBtnCancelClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object EdtNm_File: TLabeledEdit
      Tag = 1
      Left = 6
      Top = 16
      Width = 400
      Height = 19
      EditLabel.Width = 113
      EditLabel.Height = 13
      EditLabel.Caption = 'Escolha o arquivo XML:'
      TabOrder = 0
      OnKeyDown = EdtCd_CFOPKeyDown
    end
    object EdtNm_Emitente: TEdit
      Left = 58
      Top = 51
      Width = 525
      Height = 19
      TabStop = False
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
    end
    object EdtCd_Serie: TEdit
      Left = 6
      Top = 121
      Width = 26
      Height = 19
      CharCase = ecUpperCase
      MaxLength = 3
      TabOrder = 7
    end
    object EdtNr_Fatura: TCurrencyEdit
      Left = 35
      Top = 121
      Width = 59
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 8
    end
    object EdtCd_CFOP: TEdit
      Tag = 2
      Left = 6
      Top = 86
      Width = 30
      Height = 19
      MaxLength = 4
      TabOrder = 3
      OnExit = EdtCd_CFOPExit
      OnKeyDown = EdtCd_CFOPKeyDown
    end
    object EdtDs_CFOP: TEdit
      Left = 60
      Top = 86
      Width = 369
      Height = 19
      TabStop = False
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
    end
    object EdtDt_Emissao: TDateEdit
      Left = 97
      Top = 121
      Width = 89
      Height = 19
      CheckOnExit = True
      DialogTitle = 'Selecione a Data'
      GlyphKind = gkCustom
      Glyph.Data = {binary 1850 bytes}
      NumGlyphs = 1
      StartOfWeek = Sun
      TabOrder = 9
    end
    object EdtDt_Lancamento: TDateEdit
      Left = 189
      Top = 121
      Width = 89
      Height = 19
      CheckOnExit = True
      DialogTitle = 'Selecione a Data'
      GlyphKind = gkCustom
      Glyph.Data = {binary 1850 bytes}
      NumGlyphs = 1
      StartOfWeek = Sun
      TabOrder = 10
    end
    object EdtVl_BaseICMS: TCurrencyEdit
      Left = 6
      Top = 156
      Width = 79
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 12
    end
    object EdtPr_ICMS: TCurrencyEdit
      Left = 91
      Top = 156
      Width = 39
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      Ctl3D = False
      DisplayFormat = '##0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 13
    end
    object EdtVl_ICMS: TCurrencyEdit
      Left = 136
      Top = 156
      Width = 79
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 14
    end
    object EdtVl_Produto: TCurrencyEdit
      Left = 420
      Top = 156
      Width = 79
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 17
    end
    object EdtVl_Frete: TCurrencyEdit
      Left = 505
      Top = 156
      Width = 79
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 18
    end
    object EdtVl_IPI: TCurrencyEdit
      Left = 175
      Top = 188
      Width = 79
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 21
    end
    object EdtVl_Nota: TCurrencyEdit
      Left = 510
      Top = 188
      Width = 79
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 25
    end
    object EdtPs_Nota: TCurrencyEdit
      Left = 594
      Top = 188
      Width = 69
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      Ctl3D = False
      DecimalPlaces = 3
      DisplayFormat = '#,##0.0##'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 26
    end
    object MmObservacao: TMemo
      Left = 6
      Top = 300
      Width = 485
      Height = 56
      MaxLength = 8190
      ScrollBars = ssVertical
      TabOrder = 36
    end
    object EdtVl_BaseSubst: TCurrencyEdit
      Left = 221
      Top = 156
      Width = 79
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 15
    end
    object EdtVl_Substituicao: TCurrencyEdit
      Left = 328
      Top = 156
      Width = 79
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 16
    end
    object EdtVl_Seguro: TCurrencyEdit
      Left = 6
      Top = 188
      Width = 79
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 19
    end
    object EdtVl_Despesa: TCurrencyEdit
      Left = 91
      Top = 188
      Width = 79
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 20
    end
    object EdtDs_Quantidade: TLabeledEdit
      Left = 6
      Top = 226
      Width = 113
      Height = 19
      EditLabel.Width = 58
      EditLabel.Height = 13
      EditLabel.Caption = 'Quantidade:'
      LabelSpacing = 2
      MaxLength = 20
      TabOrder = 28
    end
    object EdtDs_Marca: TLabeledEdit
      Left = 248
      Top = 226
      Width = 114
      Height = 19
      EditLabel.Width = 33
      EditLabel.Height = 13
      EditLabel.Caption = 'Marca:'
      LabelSpacing = 2
      MaxLength = 20
      TabOrder = 30
    end
    object EdtNm_Transportador: TEdit
      Left = 6
      Top = 263
      Width = 307
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
      TabOrder = 32
    end
    object MmNota: TMemo
      Left = 496
      Top = 300
      Width = 485
      Height = 56
      MaxLength = 8190
      ScrollBars = ssVertical
      TabOrder = 37
    end
    object CbEspecie: TComboBox
      Left = 124
      Top = 226
      Width = 120
      Height = 21
      ItemHeight = 13
      MaxLength = 20
      TabOrder = 29
      Items.Strings = (
        'Volume'
        'Caixa'
        'Pe'#231'a'
        'Amarrados'
        'Pacote'
        'Rolo'
      )
    end
    object CbFrete: TComboBox
      Left = 318
      Top = 262
      Width = 88
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      MaxLength = 20
      TabOrder = 33
      Items.Strings = (
        'Emitente'
        'Destinat'#225'rio'
      )
    end
    object CbModeloFiscal: TComboBox
      Left = 368
      Top = 226
      Width = 293
      Height = 21
      Style = csDropDownList
      DropDownCount = 23
      ItemHeight = 13
      ItemIndex = 22
      TabOrder = 31
      Text = '55 - NFe'
      Items.Strings = (
        '01 - Nota Fiscal Modelo 1'
        '02 - Nota Fiscal de Venda a Consumidor'
        '03 - Nota Fiscal de Entrada'
        '04 - Nota Fiscal de Produtor'
        '06 - Nota Fiscal/Conta de Energia El'#233'trica'
        '07 - Nota Fiscal de Servi'#231'o de Transporte'
        '08 - Conhecimento de Transporte Rodovi'#225'rio de Cargas'
        '09 - Conhecimento de Transporte Aquavi'#225'rio de Cargas'
        '10 - Conhecimento A'#233'rio'
        '11 - Conhecimento de Transporte Ferrovi'#225'rio de Cargas'
        '13 - Bilhete de Passagem Rodovi'#225'ria'
        '14 - Bilhete de Passagem Aquavi'#225'rio'
        '15 - Bilhete de Passagem e Nota de Bagagem'
        '16 - Bilhete de Passagem Ferrovi'#225'ria'
        '17 - Despacho de Transporte'
        '18 - Resumo Movimento Di'#225'rio'
        '20 - Ordem de Coleta de Carga'
        '21 - Nota Fiscal de Servi'#231'o de Comunica'#231#227'o'
        '22 - Nota Fiscal de Servi'#231'o de Telecomunica'#231#245'es'
        '24 - Autoriza'#231#227'o de Carregamento e Transporte'
        '25 - Manifesto de Carga'
        '26 - Conhecimento de Transporte Multimodal de Cargas'
        '55 - NFe'
      )
    end
    object EdtPs_Liquido: TCurrencyEdit
      Left = 669
      Top = 188
      Width = 70
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      Ctl3D = False
      DecimalPlaces = 3
      DisplayFormat = '#,##0.0##'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 27
    end
    object EdtVl_Desconto: TCurrencyEdit
      Left = 260
      Top = 188
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 22
    end
    object CbFlEmitente: TComboBox
      Left = 483
      Top = 262
      Width = 89
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      MaxLength = 20
      TabOrder = 35
      Items.Strings = (
        'Pr'#243'prio'
        'Terceiro'
      )
    end
    object EdtNr_Placa: TMaskEdit
      Left = 411
      Top = 262
      Width = 69
      Height = 19
      AutoSize = False
      CharCase = ecUpperCase
      MaxLength = 7
      TabOrder = 34
    end
    object EdtCd_Emitente: TCurrencyEdit
      Tag = 1
      Left = 6
      Top = 51
      Width = 50
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      TabStop = False
      AutoSize = False
      Color = clSilver
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object DbGItem: TDBGrid
      Left = 6
      Top = 372
      Width = 975
      Height = 146
      DataSource = DsNFeItem
      FixedColor = clSilver
      Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 38
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = DbGItemDblClick
      OnKeyPress = DbGItemKeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'Cd_Produto_NFe'
          Width = 74
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nm_Produto_NFe'
          Width = 250
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Sg_Unidade_NFe'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Qt_Item'
          Width = 58
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Vl_Unitario'
          Title.Alignment = taRightJustify
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Cd_Produto'
          Title.Alignment = taRightJustify
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nm_Produto'
          Width = 250
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Sg_Unidade'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Qt_Estoque'
          Title.Alignment = taRightJustify
          Width = 70
          Visible = True
        end>
    end
    object DbEdtPr_Icms: TDBEdit
      Left = 81
      Top = 575
      Width = 40
      Height = 19
      TabStop = False
      Color = clSilver
      DataField = 'Pr_Icms'
      DataSource = DsNFeItem
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 53
    end
    object DbEdtVl_Icms: TDBEdit
      Left = 8
      Top = 575
      Width = 70
      Height = 19
      TabStop = False
      Color = clSilver
      DataField = 'Vl_Icms'
      DataSource = DsNFeItem
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 44
    end
    object DbEdtPr_IPI: TDBEdit
      Left = 240
      Top = 575
      Width = 40
      Height = 19
      TabStop = False
      Color = clSilver
      DataField = 'Pr_Ipi'
      DataSource = DsNFeItem
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 46
    end
    object DbEdtVl_IPI: TDBEdit
      Left = 167
      Top = 575
      Width = 70
      Height = 19
      TabStop = False
      Color = clSilver
      DataField = 'Vl_Ipi'
      DataSource = DsNFeItem
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 45
    end
    object DbEdPrl_Pis: TDBEdit
      Left = 356
      Top = 575
      Width = 40
      Height = 19
      TabStop = False
      Color = clSilver
      DataField = 'Pr_Pis'
      DataSource = DsNFeItem
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 48
    end
    object DbEdtVl_Pis: TDBEdit
      Left = 285
      Top = 575
      Width = 70
      Height = 19
      TabStop = False
      Color = clSilver
      DataField = 'Vl_Pis'
      DataSource = DsNFeItem
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 47
    end
    object DbEdtPr_Cofins: TDBEdit
      Left = 473
      Top = 575
      Width = 40
      Height = 19
      TabStop = False
      Color = clSilver
      DataField = 'Pr_Cofins'
      DataSource = DsNFeItem
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 50
    end
    object DbEdtVl_Cofins: TDBEdit
      Left = 401
      Top = 575
      Width = 70
      Height = 19
      TabStop = False
      Color = clSilver
      DataField = 'Vl_Cofins'
      DataSource = DsNFeItem
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 49
    end
    object DbEdtCd_CST: TDBEdit
      Left = 162
      Top = 535
      Width = 39
      Height = 19
      TabStop = False
      Color = clSilver
      DataField = 'Cd_CST'
      DataSource = DsNFeItem
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 39
    end
    object DbEdtCd_CFOP: TDBEdit
      Left = 236
      Top = 535
      Width = 52
      Height = 19
      TabStop = False
      Color = clSilver
      DataField = 'Cd_CFOP'
      DataSource = DsNFeItem
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 40
    end
    object DbEdtDs_CFOP: TDBEdit
      Left = 289
      Top = 535
      Width = 369
      Height = 19
      TabStop = False
      Color = clSilver
      DataField = 'Ds_CFOP'
      DataSource = DsNFeItem
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 41
    end
    object DbEdtCd_Barra: TDBEdit
      Left = 661
      Top = 535
      Width = 170
      Height = 19
      TabStop = False
      Color = clSilver
      DataField = 'Cd_Barra'
      DataSource = DsNFeItem
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 42
    end
    object DbEdtCd_NCM: TDBEdit
      Left = 834
      Top = 535
      Width = 87
      Height = 19
      TabStop = False
      Color = clSilver
      DataField = 'Cd_NCM'
      DataSource = DsNFeItem
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 43
    end
    object EdtVl_Pis: TCurrencyEdit
      Left = 343
      Top = 188
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 23
    end
    object EdtVl_Cofins: TCurrencyEdit
      Left = 426
      Top = 188
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 24
    end
    object CkBFornecedor: TCheckBox
      Left = 6
      Top = 602
      Width = 168
      Height = 17
      Caption = 'Vincular C'#243'digo de Fornecedor'
      Checked = True
      State = cbChecked
      TabOrder = 54
    end
    object CkBBarra: TCheckBox
      Left = 180
      Top = 602
      Width = 144
      Height = 17
      Caption = 'Vincular C'#243'digo de Barras'
      Checked = True
      State = cbChecked
      TabOrder = 55
    end
    object CkBNCM: TCheckBox
      Left = 330
      Top = 602
      Width = 86
      Height = 17
      Caption = 'Vincular NCM'
      Checked = True
      State = cbChecked
      TabOrder = 56
    end
    object EdtNr_chNFe: TEdit
      Left = 586
      Top = 51
      Width = 388
      Height = 19
      TabStop = False
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 57
    end
    object DbEdtCd_Produto_NFe: TDBEdit
      Left = 6
      Top = 535
      Width = 154
      Height = 19
      TabStop = False
      Color = clSilver
      DataField = 'Cd_Produto_NFe'
      DataSource = DsNFeItem
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 58
    end
    object DbEdtPr_MVA: TDBEdit
      Left = 124
      Top = 575
      Width = 40
      Height = 19
      TabStop = False
      Color = clSilver
      DataField = 'Pr_MVA'
      DataSource = DsNFeItem
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 59
    end
    object DBEdit3: TDBEdit
      Left = 516
      Top = 575
      Width = 31
      Height = 19
      TabStop = False
      Color = clSilver
      DataField = 'Cd_Tributacao'
      DataSource = DsNFeItem
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 60
    end
    object DbEdtDs_Tributacao: TDBEdit
      Left = 548
      Top = 575
      Width = 301
      Height = 19
      TabStop = False
      Color = clSilver
      DataField = 'Ds_Tributacao'
      DataSource = DsNFeItem
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 61
    end
    object CbConFinal: TComboBox
      Left = 282
      Top = 121
      Width = 60
      Height = 21
      Style = csDropDownList
      Ctl3D = False
      ItemHeight = 13
      ItemIndex = 0
      ParentCtl3D = False
      TabOrder = 11
      Text = 'Sim'
      Items.Strings = (
        'Sim'
        'N'#227'o'
      )
    end
    object CbfinNFe: TbctComboBox
      Left = 434
      Top = 86
      Width = 149
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 5
      Items.Strings = (
        'Normal'
        'Complementar'
        'NF-e de ajuste'
        'Devolu'#231#227'o de mercadoria'
      )
      Value = '-1'
      ValueList.Strings = (
        '1'
        '2'
        '3'
        '4'
      )
    end
    object EdtnatOp: TLabeledEdit
      Left = 586
      Top = 86
      Width = 295
      Height = 19
      EditLabel.Width = 111
      EditLabel.Height = 13
      EditLabel.Caption = 'Natureza da Opera'#231#227'o:'
      LabelSpacing = 2
      MaxLength = 60
      TabOrder = 6
    end
  end
  object OpenDlg: TOpenDialog
    Filter = 'Arquivos de NFe|*.xml'
    Left = 793
    Top = 72
  end
  object ACBrNFe: TACBrNFe
    Configuracoes.Geral.SSLLib = libCustom
    Configuracoes.Geral.SSLCryptLib = cryNone
    Configuracoes.Geral.SSLHttpLib = httpIndy
    Configuracoes.Geral.SSLXmlSignLib = xsNone
    Configuracoes.Geral.FormatoAlerta = 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.'
    Configuracoes.Geral.ValidarDigest = False
    Configuracoes.Geral.VersaoQRCode = veqr000
    Configuracoes.Arquivos.AdicionarLiteral = True
    Configuracoes.Arquivos.OrdenacaoPath = <>
    Configuracoes.Arquivos.EmissaoPathNFe = True
    Configuracoes.Arquivos.PathNFe = 'D:\delphi\ACBr\trunk\ACBrNFePCN\ACBrNFeMonitor\Arqs'
    Configuracoes.Arquivos.PathInu = 'D:\delphi\ACBr\trunk\ACBrNFePCN\ACBrNFeMonitor\Arqs'
    Configuracoes.WebServices.UF = 'SP'
    Configuracoes.WebServices.AguardarConsultaRet = 15000
    Configuracoes.WebServices.IntervaloTentativas = 3000
    Configuracoes.WebServices.AjustaAguardaConsultaRet = True
    Configuracoes.WebServices.QuebradeLinha = '|'
    Configuracoes.RespTec.IdCSRT = 0
    Left = 839
    Top = 72
  end
  object ADOCmdEmitente: TMultADOCMD
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLInsert.Strings = (
      '-------------------- Inclui o emitente'
      'insert into Emitente( Cd_Emitente, Nm_Emitente, Nm_Fantasia, Dt_Cadastro,'
      '   Dt_Alteracao, Tp_Pessoa, Nr_Documento, Nr_Insc_Estadual, Vl_Limite_Credito,'
      '   Cd_Credito, Cd_Grupo, Cd_SubGrupo, Fl_Contribuinte, Fl_Exportador, Ds_EMail,'
      '   Ds_Site, Cd_Usuario, Cd_Portador, Dt_Nascimento, Nr_Identidade,'
      '   Nm_Orgao_emissor, Dt_Emissao_ID, Nm_Pai, Nm_Mae, Fl_Grau_Instrucao,'
      '   St_Grau_Instrucao, Ds_Naturalidade, Fl_Estado_Civil, Nm_Conjuje,'
      '   Dt_Nascimento_conjuje, Mm_Observacao, Mm_Restricao, Sg_Estado_Emissor,'
      '   Fl_Pagamento, Nr_Pagamento, Cd_Funcionario, Nr_Insc_Municipal, Dt_Atividade,'
      '   Fl_ConFinal )'
      ''
      'values( :Cd_Emitente, :Nm_Emitente, :Nm_Fantasia, :Dt_Cadastro,'
      '   :Dt_Alteracao, :Tp_Pessoa, :Nr_Documento, :Nr_Insc_Estadual, :Vl_Limite_Credito,'
      '   :Cd_Credito, :Cd_Grupo, :Cd_SubGrupo, :Fl_Contribuinte, :Fl_Exportador, :Ds_EMail,'
      '   :Ds_Site, :Cd_Usuario, :Cd_Portador, :Dt_Nascimento, :Nr_Identidade,'
      '   :Nm_Orgao_emissor, :Dt_Emissao_ID, :Nm_Pai, :Nm_Mae, :Fl_Grau_Instrucao,'
      '   :St_Grau_Instrucao, :Ds_Naturalidade, :Fl_Estado_Civil, :Nm_Conjuje,'
      '   :Dt_Nascimento_conjuje, :Mm_Observacao, :Mm_Restricao, :Sg_Estado_Emissor,'
      '   :Fl_Pagamento, :Nr_Pagamento, :Cd_Funcionario, :Nr_Insc_Municipal,'
      '   :Dt_Atividade, :Fl_ConFinal )'
    )
    SQLOther0.Strings = (
      '-------------------- Inclui o endere'#231'o'
      'insert into Emitente_Endereco( Cd_Emitente, Nr_Endereco, Ds_Titulo, Ds_Endereco,'
      '   Nm_Bairro, Ds_Complemento, Nr_CEP, Cd_Cidade, Nr_Telefone_1, Nr_Telefone_2,'
      '   Nr_Telefone_3, Nr_FAX, Nr_Celular_1, Nr_Celular_2, Mm_Observacao, Ds_Numero )'
      ''
      'values( :Cd_Emitente, :Nr_Endereco, :Ds_Titulo, :Ds_Endereco, :Nm_Bairro,'
      '   :Ds_Complemento, :Nr_CEP, :Cd_Cidade, :Nr_Telefone_1, :Nr_Telefone_2,'
      '   :Nr_Telefone_3, :Nr_FAX, :Nr_Celular_1, :Nr_Celular_2, :Mm_Observacao,'
      '   :Ds_Numero )'
    )
    SQLOther1.Strings = (
      '-------------------- Atualiza o endere'#231'o do cliente'
      'update'
      '  Emitente'
      ''
      'set'
      '  Nr_Endereco    = :Nr_Endereco,'
      '  Nr_EndCobranca = :Nr_EndCobranca'
      ''
      'where'
      '  Cd_Emitente = :Cd_Emitente'
    )
    SQLOther2.Strings = (
      '-------------------- Contato do Cliente'
      'insert into Emitente_Contato( Cd_Emitente, Nr_Contato, Nm_Contato,'
      '   Dt_Nascimento, Ds_Cargo, Ds_EMail, Nr_Telefone, Nr_Ramal, Nr_Celular,'
      '   Nr_Fax )'
      'values( :Cd_Emitente, :Nr_Contato, :Nm_Contato,'
      '   :Dt_Nascimento, :Ds_Cargo, :Ds_EMail, :Nr_Telefone, :Nr_Ramal, :Nr_Celular,'
      '   :Nr_Fax )'
    )
    Left = 734
    Top = 111
  end
  object ADODsEmitente: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'select top 1'#13#10'  A.Cd_Emitente + 1 as Cd_Emitente'#13#10#13#10'from'#13#10'  Emitente A'#13#10#13#10'where'#13#10'  not exists( '#13#10'  select'#13#10'    B.Cd_Emitente'#13#10#13#10'  from'#13#10'    Emitente  B'#13#10#13#10'  where'#13#10'    B.Cd_Emitente = A.Cd_Emitente + 1'#13#10'  )'#13#10#13#10'order by'#13#10'  A.Cd_Emitente'#13#10
    Parameters = <>
    SQLPrimary.Strings = (
      '-------------------- Seleciona o c'#243'digo do emitente'
      'select top 1'
      '  A.Cd_Emitente + 1 as Cd_Emitente'
      ''
      'from'
      '  Emitente A'
      ''
      'where'
      '  not exists( '
      '  select'
      '    B.Cd_Emitente'
      ''
      '  from'
      '    Emitente  B'
      ''
      '  where'
      '    B.Cd_Emitente = A.Cd_Emitente + 1'
      '  )'
      ''
      'order by'
      '  A.Cd_Emitente'
    )
    SQLOther0.Strings = (
      '-------------------- Verifica se existe algum cadastrado com o CNPJ / CPF'
      'select'
      '  Cd_Emitente, Nm_Emitente, Nm_Fantasia'
      ''
      'from'
      '  Emitente'
      ''
      'where'
      '  Nr_Documento = :Nr_Documento'
    )
    SQLOther1.Strings = (
      '--------------- Proximo Emitente'
      'select top 1'
      '  A.Cd_Emitente + 1 as Cd_Emitente'
      ''
      'from'
      '  Emitente A'
      ''
      'where'
      '  not exists( '
      '  select'
      '    B.Cd_Emitente'
      ''
      '  from'
      '    Emitente  B'
      ''
      '  where'
      '    B.Cd_Emitente = A.Cd_Emitente + 1'
      '  )'
      ''
      'order by'
      '  A.Cd_Emitente'
    )
    SQLOther2.Strings = (
      '--------------- Codigo do emitente novo'
      'select top 1'
      '  A.Cd_Emitente + 1 as Cd_Emitente'
      ''
      'from'
      '  Emitente A'
      ''
      'where'
      '  not exists( '
      '  select'
      '    B.Cd_Emitente'
      ''
      '  from'
      '    Emitente  B'
      ''
      '  where'
      '    B.Cd_Emitente = A.Cd_Emitente + 1'
      '  )'
      ''
      'order by'
      '  A.Cd_Emitente'
    )
    Left = 763
    Top = 110
  end
  object ADODsCidade: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'select'#13#10'  Cd_Cidade'#13#10#13#10'from'#13#10'  Cidade'#13#10'where'#13#10'  Cd_IBGE = :Cd_IBGE'
    Parameters = <
      item
        Name = 'Cd_IBGE'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = nil?
      end>
    Left = 793
    Top = 110
    object ADODsCidadeCd_Cidade: TIntegerField
      FieldName = 'Cd_Cidade'
    end
  end
  object ADOCmdNFe: TMultADOCMD
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLOther0.Strings = (
      '-- ------------ Cria a table temporaria'
      'if Object_ID( ''''EntradaNFeItem'''' ) is not null'
      '  drop table EntradaNFeItem'
      ''
      'create table EntradaNFeItem'
      '  ('
      '  Nr_SPID Int,'
      '  Nr_Item smallint,'
      '  Cd_Produto int,'
      '  Sg_Unidade char( 2 ),'
      '  Qt_Item numeric( 18, 3 ),'
      '  Qt_Estoque numeric( 18, 3 ),'
      '  Vl_Unitario numeric( 18, 3 ),'
      '  Pr_Desconto numeric( 7, 2 ),'
      '  Vl_Total Numeric( 18, 3 ),'
      '  Pr_Icms numeric( 7, 2 ),'
      '  Vl_Icms numeric( 18, 3 ),'
      '  Pr_Ipi numeric( 7, 2 ),'
      '  Vl_Ipi numeric( 18, 3 ),'
      '  Pr_Pis Numeric( 7, 2 ),'
      '  Vl_Pis Numeric( 18, 3 ),'
      '  Pr_Cofins Numeric( 7, 2 ),'
      '  Vl_Cofins Numeric( 18, 3 ),'
      '  Pr_MVA Numeric( 7, 2 ),'
      ''
      '  Cd_Produto_NFe VarChar( 50 ),'
      '  Nm_Produto_NFe varchar( 255 ),'
      '  Sg_Unidade_NFe char( 5 ),'
      '  Qt_Item_NFe numeric( 18, 3 ),'
      '  Vl_Unitario_NFe numeric( 18, 3 ),'
      '  Cd_Barra VarChar( 20 ),'
      '  Cd_NCM VarChar( 10 ),'
      '  Cd_CST VarChar( 3 ),'
      '  Cd_CFOP VarChar( 4 ),'
      '  Fl_Importar Char( 1 ),'
      '  Fl_Inventario Char( 1 ),'
      '  Nr_Lote varchar( 15 ),'
      '  Dt_Fabricacao SmallDateTime,'
      '  Dt_Validade SmallDateTime,'
      '  Cd_Tributacao SmallInt,'
      '  Cd_CEST VarChar( 7 )'
      '  )'
    )
    SQLOther1.Strings = (
      '--------------- Inclui os itens na tabela temporaria'
      'insert into EntradaNFeItem( Nr_SPID, Nr_Item, Qt_Item, Vl_Unitario,'
      '  Pr_Icms, Vl_Icms, Pr_Ipi, Vl_Ipi, Pr_Pis, Vl_Pis, Pr_Cofins, Vl_Cofins,'
      '  Cd_Produto_NFe, Nm_Produto_NFe, Sg_Unidade_NFe, Cd_Barra, Cd_NCM, Cd_CST,'
      '  Cd_CFOP, Fl_Importar, Pr_MVA, Cd_CEST )'
      ''
      'values( @@SPID, :Nr_Item, :Qt_Item, :Vl_Unitario,'
      '  :Pr_Icms, :Vl_Icms, :Pr_Ipi, :Vl_Ipi, :Pr_Pis, :Vl_Pis, :Pr_Cofins, :Vl_Cofins,'
      '  :Cd_Produto_NFe, :Nm_Produto_NFe, :Sg_Unidade_NFe, :Cd_Barra, :Cd_NCM, :Cd_CST,'
      '  :Cd_CFOP, ''''1'''', :Pr_MVA, :Cd_CEST )'
    )
    SQLOther2.Strings = (
      '--------------- Grava altera'#231#227'o manual do item'
      'update'
      '  EntradaNFeItem'
      ''
      'set'
      '  Cd_Produto    = :Cd_Produto,'
      '  Sg_Unidade    = :Sg_Unidade,'
      '  Qt_Item       = :Qt_Item,'
      '  Qt_Estoque    = :Qt_Estoque,'
      '  Vl_Unitario   = :Vl_Unitario,'
      '  Pr_Icms       = :Pr_Icms,'
      '  Vl_Icms       = :Vl_Icms,'
      '  Pr_Ipi        = :Pr_Ipi,'
      '  Vl_Ipi        = :Vl_Ipi,'
      '  Pr_Pis        = :Pr_Pis,'
      '  Vl_Pis        = :Vl_Pis,'
      '  Pr_Cofins     = :Pr_Cofins,'
      '  Vl_Cofins     = :Vl_Cofins,'
      '  Cd_CST        = :Cd_CST,'
      '  Cd_CFOP       = :Cd_CFOP,'
      '  Nr_Lote       = :Nr_Lote,'
      '  Dt_Fabricacao = :Dt_Fabricacao,'
      '  Dt_Validade   = :Dt_Validade,'
      '  Fl_Inventario = :Fl_Inventario,'
      '  Pr_MVA        = :Pr_MVA,'
      '  Cd_Tributacao = :Cd_Tributacao'
      ''
      'where'
      '  Nr_SPID      = @@SPID and'
      '  Nr_Item      = :Nr_Item'
    )
    SQLOther3.Strings = (
      '--------------- Inclui os itens da entrada da NFe'
      'insert into Entrada_Item( Cd_Filial, Nr_Entrada, Nr_Item, Cd_Produto,'
      '   Sg_Unidade, Qt_Item, Qt_Estoque, Vl_Unitario, Nr_Lote, Dt_Fabricacao,'
      '   Dt_Validade, Pr_Desconto, Pr_ICMS, Vl_ICMS, Pr_IPI, Vl_IPI, Nm_Produto,'
      '   Cd_CST, Cd_CFOP, Fl_Inventario, Pr_PIS, Vl_PIS, Pr_Cofins, Vl_Cofins,'
      '   Pr_MVA, Cd_Tributacao )'
      ''
      'values( :Cd_Filial, :Nr_Entrada, :Nr_Item, :Cd_Produto, :Sg_Unidade,'
      '   :Qt_Item, :Qt_Estoque, :Vl_Unitario, :Nr_Lote, :Dt_Fabricacao,'
      '   :Dt_Validade, :Pr_Desconto, :Pr_ICMS, :Vl_ICMS, :Pr_IPI, :Vl_IPI,'
      '   :Nm_Produto, :Cd_CST, :Cd_CFOP, :Fl_Inventario, :Pr_PIS, :Vl_PIS,'
      '   :Pr_Cofins, :Vl_Cofins, :Pr_MVA, :Cd_Tributacao )'
    )
    SQLOther4.Strings = (
      '--------------- Cria o vinculo com o codigo do Fornecedor / Emitente'
      'declare'
      '  @Cd_Produto Integer,'
      '  @Cd_Emitente Integer,'
      '  @Cd_Produto_Emitente VarChar( 30 )'
      ''
      'select'
      '  @Cd_Produto          = :Cd_Produto,'
      '  @Cd_Emitente         = :Cd_Emitente,'
      '  @Cd_Produto_Emitente = :Cd_Produto_Emitente'
      ''
      'if not Exists('
      '   select'
      '     Cd_Produto'
      ''
      '   from'
      '     Produto_Fornecedor'
      ''
      '   where'
      '    Cd_Produto          = @Cd_Produto and'
      '    Cd_Emitente         = @Cd_Emitente and'
      '    Cd_Produto_Emitente = @Cd_Produto_Emitente'
      '   )'
      '  insert into Produto_Fornecedor( Cd_Produto, Cd_Emitente, Cd_Produto_Emitente,'
      '     Nr_Fator_Fornecedor, Nr_Fator_Distribuidor )'
      '  values( @Cd_Produto, @Cd_Emitente, @Cd_Produto_Emitente, 0, 0 )'
    )
    SQLOther5.Strings = (
      '--------------- Processa produtos que ja tenham associa'#231#227'o'
      'update'
      '  EntradaNFeItem'
      ''
      'set'
      '  Cd_Produto = Coalesce( E.Cd_Produto, PFor.Cd_Produto, PB.Cd_Produto, PFab.Cd_Produto )'
      ''
      'from'
      '  EntradaNFeItem E'
      ''
      '--------------- Caso ja tenha informado o produto na edi'#231#227'o'
      'left join'
      '  Produto PE'
      'on'
      '  PE.Cd_Produto = E.Cd_Produto'
      ''
      '--------------- Tenta pela associa'#231#227'o pelo codigo em tabela auxiliar'
      'left join'
      '  Produto_Fornecedor PF'
      'on'
      '  PF.Cd_Emitente         = :Cd_Emitente and'
      '  PF.Cd_Produto_Emitente = E.Cd_Produto_NFe'
      ''
      'left join'
      '  Produto PFor'
      'on'
      '  PFor.Cd_Produto = PF.Cd_Produto'
      ''
      '--------------- Tenta pelo codigo de barras'
      'left join'
      '  Produto PB'
      'on'
      '  PB.Cd_Barra = E.Cd_Barra'
      ''
      '--------------- Tenta pelo codigo do fabricante na table Produto'
      'left join'
      '  Produto PFab'
      'on'
      '  PFab.Cd_Fabricante = E.Cd_Produto_NFe'
      ''
      'where'
      '  Nr_SPID = @@SPID'
      ''
      '--------------- Processa sem GTIN'
      'update'
      '  EntradaNFeItem'
      ''
      'set'
      '  Cd_Produto = null'
      ''
      'where'
      '  Cd_Barra like ''''%SEM G%'''
      ''
      '--------------- Processa Unidades que ja tenham associa'#231#227'o'
      'update'
      '  EntradaNFeItem'
      ''
      'set'
      '  Sg_Unidade = PU.Sg_Unidade,'
      '  Qt_Estoque = EI.Qt_Item * IsNull( PU.Nr_Fator, 1.0 )'
      ''
      'from'
      '  EntradaNFeItem EI'
      ''
      'inner join'
      '  Produto_Unidade PU'
      'on'
      '  PU.Cd_Produto = EI.Cd_Produto and'
      '  PU.Sg_Unidade = EI.Sg_Unidade_NFe'
      ''
      'where'
      '  EI.Nr_SPID = @@SPID and'
      '  EI.Cd_Produto is not null'
      ''
    )
    Left = 114
    Top = 408
  end
  object DsNFeItem: TDataSource
    DataSet = ADODsNFeItem
    Left = 152
    Top = 408
  end
  object ADODsNFeItem: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'select distinct'#13#10'  E.Nr_Item, E.Qt_Item, E.Vl_Unitario, E.Pr_Desconto,'#13#10'  E.Pr_Icms, E.Vl_Icms, E.Pr_Ipi, E.Vl_Ipi, E.Pr_Pis, E.Vl_Pis, E.Pr_Cofins,'#13#10'  E.Vl_Cofins, E.Cd_Produto_NFe, E.Nm_Produto_NFe, E.Sg_Unidade_NFe, E.Cd_Barra,'#13#10'  E.Cd_NCM, E.Cd_CST, E.Cd_CFOP, CF.Ds_CFOP,'#13#10'  Cd_Produto = Coalesce( E.Cd_Produto, PFor.Cd_Produto, PFab.Cd_Produto ),'#13#10'  Nm_Produto = Coalesce( PE.Nm_Produto, PFor.Nm_Produto, PFab.Nm_Produto ),'#13#10'  E.Sg_Unidade,  E.Qt_Estoque,'#13#10'  Fl_Inventario = Coalesce( E.Fl_Inventario, CF.Fl_Inventario ), '#13#10'  E.Dt_Fabricacao, E.Dt_Validade, E.Nr_Lote, E.Pr_MVA,'#13#10#13#10'  E.Cd_Tributacao, T.Ds_Tributacao, E.Cd_CEST'#13#10#13#10'from'#13#10'  EntradaNFeItem E'#13#10#13#10'--------------- Caso ja tenha informado o produto na edi'#231#227'o'#13#10'left join'#13#10'  Produto PE'#13#10'on'#13#10'  PE.Cd_Produto = E.Cd_Produto'#13#10#13#10'--------------- Tenta pela associa'#231#227'o pelo codigo em tabela auxiliar'#13#10'left join'#13#10'  Produto_Fornecedor PF'#13#10'on'#13#10'  PF.Cd_Emitente         = :Cd_Emitente and'#13#10'  PF.Cd_Produto_Emitente = E.Cd_Produto_NFe'#13#10#13#10'left join'#13#10'  Produto PFor'#13#10'on'#13#10'  PFor.Cd_Produto = PF.Cd_Produto'#13#10#13#10'--------------- Tenta pelo codigo do fabricante na table Produto'#13#10'left join'#13#10'  Produto PFab'#13#10'on'#13#10'  PFab.Cd_Fabricante = E.Cd_Produto_NFe'#13#10'  '#13#10'--------------- Testa a unidade do produto'#13#10'left join'#13#10'  Produto_Unidade PU'#13#10'on'#13#10'  PU.Cd_Produto = Coalesce( E.Cd_Produto, PFor.Cd_Produto, PFab.Cd_Produto ) and'#13#10'  PU.Sg_Unidade = E.Sg_Unidade_NFe'#13#10#13#10'left join'#13#10'  CFOP CF'#13#10'on'#13#10'  CF.Cd_CFOP = E.Cd_CFOP'#13#10#13#10'left join'#13#10'  Tributacao T'#13#10'on'#13#10'  T.Cd_Tributacao = E.Cd_Tributacao'#13#10#13#10'where'#13#10'  Nr_SPID = @@SPID'#13#10#13#10'order by'#13#10'  Nr_Item'
    Parameters = <
      item
        Name = 'Cd_Emitente'
        DataType = ftInteger
        Size = -1
        Value = nil?
      end>
    Left = 184
    Top = 408
    object ADODsNFeItemNr_Item: TSmallintField
      FieldName = 'Nr_Item'
    end
    object ADODsNFeItemQt_Item: TBCDField
      DisplayLabel = 'Quantidade'
      FieldName = 'Qt_Item'
      DisplayFormat = '#,###.###'
      Precision = 18
      Size = 3
    end
    object ADODsNFeItemVl_Unitario: TBCDField
      DisplayLabel = 'Unit. NFe'
      FieldName = 'Vl_Unitario'
      DisplayFormat = '#,##0.00###'
      Precision = 18
      Size = 3
    end
    object ADODsNFeItemPr_Icms: TBCDField
      FieldName = 'Pr_Icms'
      DisplayFormat = '#,##0.00###'
      Precision = 7
      Size = 2
    end
    object ADODsNFeItemVl_Icms: TBCDField
      FieldName = 'Vl_Icms'
      DisplayFormat = '#,##0.00###'
      Precision = 18
      Size = 3
    end
    object ADODsNFeItemPr_Ipi: TBCDField
      FieldName = 'Pr_Ipi'
      DisplayFormat = '#,##0.00###'
      Precision = 7
      Size = 2
    end
    object ADODsNFeItemVl_Ipi: TBCDField
      FieldName = 'Vl_Ipi'
      DisplayFormat = '#,##0.00###'
      Precision = 18
      Size = 3
    end
    object ADODsNFeItemPr_Pis: TBCDField
      FieldName = 'Pr_Pis'
      DisplayFormat = '#,##0.00###'
      Precision = 7
      Size = 2
    end
    object ADODsNFeItemVl_Pis: TBCDField
      FieldName = 'Vl_Pis'
      DisplayFormat = '#,##0.00###'
      Precision = 18
      Size = 3
    end
    object ADODsNFeItemPr_Cofins: TBCDField
      FieldName = 'Pr_Cofins'
      DisplayFormat = '#,##0.00###'
      Precision = 7
      Size = 2
    end
    object ADODsNFeItemVl_Cofins: TBCDField
      FieldName = 'Vl_Cofins'
      DisplayFormat = '#,##0.00###'
      Precision = 18
      Size = 3
    end
    object ADODsNFeItemCd_Produto_NFe: TStringField
      DisplayLabel = 'C'#243'digo na NFe'
      FieldName = 'Cd_Produto_NFe'
      Size = 50
    end
    object ADODsNFeItemNm_Produto_NFe: TStringField
      DisplayLabel = 'Nome na NFe'
      FieldName = 'Nm_Produto_NFe'
      Size = 255
    end
    object ADODsNFeItemSg_Unidade_NFe: TStringField
      DisplayLabel = 'Unid NFe'
      FieldName = 'Sg_Unidade_NFe'
      FixedChar = True
      Size = 5
    end
    object ADODsNFeItemCd_Barra: TStringField
      FieldName = 'Cd_Barra'
    end
    object ADODsNFeItemCd_NCM: TStringField
      FieldName = 'Cd_NCM'
      Size = 10
    end
    object ADODsNFeItemCd_CST: TStringField
      FieldName = 'Cd_CST'
      Size = 3
    end
    object ADODsNFeItemCd_CFOP: TStringField
      FieldName = 'Cd_CFOP'
      Size = 4
    end
    object ADODsNFeItemCd_Produto: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'Cd_Produto'
      ReadOnly = True
    end
    object ADODsNFeItemNm_Produto: TStringField
      DisplayLabel = 'Nome do Produto'
      FieldName = 'Nm_Produto'
      ReadOnly = True
      Size = 120
    end
    object ADODsNFeItemSg_Unidade: TStringField
      DisplayLabel = 'Unid Estoque'
      FieldName = 'Sg_Unidade'
      FixedChar = True
      Size = 2
    end
    object ADODsNFeItemQt_Estoque: TBCDField
      DisplayLabel = 'Estoque'
      FieldName = 'Qt_Estoque'
      ReadOnly = True
      DisplayFormat = '#,###.###'
      Precision = 31
      Size = 7
    end
    object ADODsNFeItemDs_CFOP: TStringField
      FieldName = 'Ds_CFOP'
      Size = 50
    end
    object ADODsNFeItemFl_Inventario: TStringField
      FieldName = 'Fl_Inventario'
      FixedChar = True
      Size = 1
    end
    object ADODsNFeItemDt_Fabricacao: TDateTimeField
      FieldName = 'Dt_Fabricacao'
    end
    object ADODsNFeItemDt_Validade: TDateTimeField
      FieldName = 'Dt_Validade'
    end
    object ADODsNFeItemNr_Lote: TStringField
      FieldName = 'Nr_Lote'
      Size = 15
    end
    object ADODsNFeItemPr_Desconto: TBCDField
      FieldName = 'Pr_Desconto'
      Precision = 7
      Size = 2
    end
    object ADODsNFeItemPr_MVA: TBCDField
      FieldName = 'Pr_MVA'
      DisplayFormat = '#,##0.00###'
    end
    object ADODsNFeItemCd_Tributacao: TSmallintField
      FieldName = 'Cd_Tributacao'
    end
    object ADODsNFeItemDs_Tributacao: TStringField
      FieldName = 'Ds_Tributacao'
      Size = 60
    end
    object ADODsNFeItemCd_CEST: TStringField
      FieldName = 'Cd_CEST'
      Size = 7
    end
  end
end
