object FrmEntrada: TFrmEntrada
  Left = 324
  Top = 187
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Entrada no Estoque'
  ClientHeight = 536
  ClientWidth = 934
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
  PixelsPerInch = 96
  TextHeight = 13
  object PnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 21
    Height = 536
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 913
    Height = 536
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 1
      Top = 506
      Width = 907
      Height = 5
      Shape = bsTopLine
    end
    object LblEmitente: TLabel
      Left = 5
      Top = 515
      Width = 67
      Height = 13
      Caption = 'LblEmitente'
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
      Width = 911
      Height = 26
      Align = alTop
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 0
      object PnlDatabase: TPanel
        Left = 0
        Top = 0
        Width = 911
        Height = 26
        Align = alClient
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 0
        object ActToolBDatabase: TActionToolBar
          Left = 0
          Top = 0
          Width = 911
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
    object BitBtnConfirm: TBitBtn
      Left = 739
      Top = 509
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 1
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 482 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 825
      Top = 509
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 2
      OnClick = BitBtnCancelClick
      Glyph.Data = {binary 482 bytes}
      NumGlyphs = 2
    end
    object PgCEntrada: TPageControl
      Left = -1
      Top = 27
      Width = 906
      Height = 476
      ActivePage = TabSEntrada
      TabOrder = 3
      OnChange = PgCEntradaChange
      object TabSEntrada: TTabSheet
        Caption = '                    Dados da Entrada                    '
        object Label1: TLabel
          Left = 4
          Top = 2
          Width = 55
          Height = 13
          Caption = 'Entrada N'#186':'
        end
        object Label10: TLabel
          Left = 181
          Top = 1
          Width = 137
          Height = 13
          Caption = 'Fornecedor (CNPJ / C'#243'digo):'
        end
        object SbEmitente: TSpeedButton
          Left = 274
          Top = 16
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
          Left = 4
          Top = 74
          Width = 27
          Height = 13
          Caption = 'S'#233'rie:'
        end
        object Label3: TLabel
          Left = 36
          Top = 74
          Width = 48
          Height = 13
          Caption = 'Fatura N'#186':'
        end
        object Label5: TLabel
          Left = 4
          Top = 39
          Width = 31
          Height = 13
          Caption = 'CFOP:'
        end
        object SbCFOP: TSpeedButton
          Left = 35
          Top = 53
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
        object Label6: TLabel
          Left = 102
          Top = 74
          Width = 42
          Height = 13
          Caption = 'Emiss'#227'o:'
        end
        object Label7: TLabel
          Left = 197
          Top = 74
          Width = 62
          Height = 13
          Caption = 'Lan'#231'amento:'
        end
        object Label14: TLabel
          Left = 4
          Top = 109
          Width = 71
          Height = 13
          Caption = 'Base de ICMS:'
        end
        object Label8: TLabel
          Left = 89
          Top = 109
          Width = 41
          Height = 13
          Caption = 'Aliquota:'
        end
        object Label9: TLabel
          Left = 134
          Top = 109
          Width = 29
          Height = 13
          Caption = 'ICMS:'
        end
        object Label11: TLabel
          Left = 418
          Top = 109
          Width = 67
          Height = 13
          Caption = 'Valor Produto:'
        end
        object Label12: TLabel
          Left = 503
          Top = 109
          Width = 27
          Height = 13
          Caption = 'Frete:'
        end
        object Label13: TLabel
          Left = 168
          Top = 145
          Width = 16
          Height = 13
          Caption = 'IPI:'
        end
        object Label15: TLabel
          Left = 500
          Top = 145
          Width = 27
          Height = 13
          Caption = 'Total:'
        end
        object Label16: TLabel
          Left = 584
          Top = 145
          Width = 55
          Height = 13
          Caption = 'Peso Bruto:'
        end
        object Label4: TLabel
          Left = 4
          Top = 256
          Width = 66
          Height = 13
          Caption = 'Observa'#231#245'es:'
        end
        object Label18: TLabel
          Left = 64
          Top = 2
          Width = 45
          Height = 13
          Caption = 'Situa'#231#227'o:'
        end
        object Label19: TLabel
          Left = 219
          Top = 109
          Width = 103
          Height = 13
          Caption = 'Base de Substitui'#231#227'o:'
        end
        object Label20: TLabel
          Left = 326
          Top = 109
          Width = 88
          Height = 13
          Caption = 'Valor Substitui'#231#227'o:'
        end
        object Label21: TLabel
          Left = 4
          Top = 145
          Width = 37
          Height = 13
          Caption = 'Seguro:'
        end
        object Label22: TLabel
          Left = 86
          Top = 145
          Width = 45
          Height = 13
          Caption = 'Despesa:'
        end
        object Label23: TLabel
          Left = 4
          Top = 219
          Width = 69
          Height = 13
          Caption = 'Transportador:'
        end
        object SbTransportador: TSpeedButton
          Left = 53
          Top = 234
          Width = 23
          Height = 19
          Hint = 'Seleciona Transportador'
          Flat = True
          Glyph.Data = {binary 1430 bytes}
          NumGlyphs = 2
          ParentShowHint = False
          ShowHint = True
          OnClick = SbTransportadorClick
        end
        object Label24: TLabel
          Left = 450
          Top = 256
          Width = 146
          Height = 13
          Caption = 'Observa'#231#245'es para Nota Fiscal:'
        end
        object Label25: TLabel
          Left = 122
          Top = 183
          Width = 41
          Height = 13
          Caption = 'Esp'#233'cie:'
        end
        object Label26: TLabel
          Left = 388
          Top = 219
          Width = 75
          Height = 13
          Caption = 'Frete por conta:'
        end
        object Label27: TLabel
          Left = 366
          Top = 183
          Width = 141
          Height = 13
          Caption = 'Modelo de Documento Fiscal:'
        end
        object Label28: TLabel
          Left = 652
          Top = 145
          Width = 66
          Height = 13
          Caption = 'Peso L'#237'quido:'
        end
        object Label29: TLabel
          Left = 251
          Top = 145
          Width = 49
          Height = 13
          Caption = 'Desconto:'
        end
        object Label30: TLabel
          Left = 577
          Top = 219
          Width = 85
          Height = 13
          Caption = 'Emitente da Nota:'
        end
        object Label31: TLabel
          Left = 505
          Top = 219
          Width = 30
          Height = 13
          Caption = 'Placa:'
        end
        object Label40: TLabel
          Left = 334
          Top = 145
          Width = 17
          Height = 13
          Caption = 'Pis:'
        end
        object Label41: TLabel
          Left = 417
          Top = 145
          Width = 32
          Height = 13
          Caption = 'Cofins:'
        end
        object Label45: TLabel
          Left = 309
          Top = 413
          Width = 220
          Height = 13
          Caption = 'N'#186' do Cupom Fiscal (para NF-e de devolu'#231#227'o):'
        end
        object Label77: TLabel
          Left = 290
          Top = 74
          Width = 83
          Height = 13
          Caption = 'Consumidor Final:'
        end
        object LblChaveNFe: TLabel
          Left = 4
          Top = 413
          Width = 75
          Height = 13
          Caption = 'Chave da NF-e:'
        end
        object Label46: TLabel
          Left = 448
          Top = 39
          Width = 108
          Height = 13
          Caption = 'Finalidade da Emiss'#227'o:'
        end
        object EdtNr_Entrada: TCurrencyEdit
          Left = 4
          Top = 16
          Width = 55
          Height = 19
          Margins.Left = 2
          Margins.Top = 2
          TabStop = False
          AutoSize = False
          Color = clSilver
          DecimalPlaces = 0
          DisplayFormat = '#,##0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
        end
        object EdtNm_Emitente: TEdit
          Left = 298
          Top = 16
          Width = 545
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
          TabOrder = 3
          OnChange = EdtNm_EmitenteChange
        end
        object EdtCd_Serie: TEdit
          Left = 4
          Top = 88
          Width = 27
          Height = 19
          CharCase = ecUpperCase
          MaxLength = 3
          TabOrder = 8
        end
        object EdtNr_Fatura: TCurrencyEdit
          Left = 36
          Top = 88
          Width = 60
          Height = 19
          Margins.Left = 2
          Margins.Top = 2
          AutoSize = False
          DecimalPlaces = 0
          DisplayFormat = '#,###'
          TabOrder = 9
          OnExit = EdtNr_FaturaExit
        end
        object EdtCd_CFOP: TEdit
          Left = 4
          Top = 53
          Width = 31
          Height = 19
          MaxLength = 4
          TabOrder = 4
          OnExit = EdtCd_CFOPExit
          OnKeyDown = EdtCd_EmitenteKeyDown
        end
        object EdtDs_CFOP: TEdit
          Left = 59
          Top = 53
          Width = 383
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
          TabOrder = 5
        end
        object EdtDt_Emissao: TDateEdit
          Left = 102
          Top = 88
          Width = 90
          Height = 19
          CheckOnExit = True
          DialogTitle = 'Selecione a Data'
          GlyphKind = gkCustom
          Glyph.Data = {binary 1850 bytes}
          NumGlyphs = 1
          StartOfWeek = Sun
          TabOrder = 10
        end
        object EdtDt_Lancamento: TDateEdit
          Left = 197
          Top = 88
          Width = 90
          Height = 19
          CheckOnExit = True
          DialogTitle = 'Selecione a Data'
          GlyphKind = gkCustom
          Glyph.Data = {binary 1850 bytes}
          NumGlyphs = 1
          StartOfWeek = Sun
          TabOrder = 11
        end
        object EdtVl_BaseICMS: TCurrencyEdit
          Left = 4
          Top = 123
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
          TabOrder = 13
        end
        object EdtPr_ICMS: TCurrencyEdit
          Left = 89
          Top = 123
          Width = 40
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
          TabOrder = 14
          OnExit = EdtPr_ICMSExit
        end
        object EdtVl_ICMS: TCurrencyEdit
          Left = 134
          Top = 123
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
          TabOrder = 15
        end
        object EdtVl_Produto: TCurrencyEdit
          Left = 418
          Top = 123
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
          TabOrder = 18
          OnChange = EdtVl_ProdutoChange
        end
        object EdtVl_Frete: TCurrencyEdit
          Left = 503
          Top = 123
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
          TabOrder = 19
          OnChange = EdtVl_ProdutoChange
        end
        object EdtVl_IPI: TCurrencyEdit
          Left = 168
          Top = 159
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
          OnChange = EdtVl_ProdutoChange
        end
        object EdtVl_Nota: TCurrencyEdit
          Left = 500
          Top = 159
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
          TabOrder = 26
        end
        object EdtPs_Nota: TCurrencyEdit
          Left = 584
          Top = 159
          Width = 65
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
        object MmObservacao: TMemo
          Left = 4
          Top = 271
          Width = 441
          Height = 141
          MaxLength = 8190
          ScrollBars = ssVertical
          TabOrder = 38
        end
        object EdtDs_Situacao: TEdit
          Left = 64
          Top = 16
          Width = 112
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
          TabOrder = 1
        end
        object EdtVl_BaseSubst: TCurrencyEdit
          Left = 219
          Top = 123
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
          TabOrder = 16
          OnChange = EdtVl_ProdutoChange
        end
        object EdtVl_Substituicao: TCurrencyEdit
          Left = 326
          Top = 123
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
          TabOrder = 17
          OnChange = EdtVl_ProdutoChange
        end
        object EdtVl_Seguro: TCurrencyEdit
          Left = 4
          Top = 159
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
          TabOrder = 20
          OnChange = EdtVl_ProdutoChange
        end
        object EdtVl_Despesa: TCurrencyEdit
          Left = 86
          Top = 159
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
          TabOrder = 21
          OnChange = EdtVl_ProdutoChange
        end
        object EdtDs_Quantidade: TLabeledEdit
          Left = 4
          Top = 197
          Width = 114
          Height = 19
          EditLabel.Width = 58
          EditLabel.Height = 13
          EditLabel.Caption = 'Quantidade:'
          LabelSpacing = 2
          MaxLength = 20
          TabOrder = 29
        end
        object EdtDs_Marca: TLabeledEdit
          Left = 246
          Top = 197
          Width = 115
          Height = 19
          EditLabel.Width = 33
          EditLabel.Height = 13
          EditLabel.Caption = 'Marca:'
          LabelSpacing = 2
          MaxLength = 20
          TabOrder = 31
        end
        object EdtCd_Transportador: TCurrencyEdit
          Tag = 2
          Left = 4
          Top = 234
          Width = 50
          Height = 19
          Margins.Left = 2
          Margins.Top = 2
          AutoSize = False
          DecimalPlaces = 0
          DisplayFormat = '#,###'
          TabOrder = 33
          OnExit = EdtCd_TransportadorExit
          OnKeyDown = EdtCd_EmitenteKeyDown
        end
        object EdtNm_Transportador: TEdit
          Left = 77
          Top = 234
          Width = 308
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
          TabOrder = 34
        end
        object MmNota: TMemo
          Left = 450
          Top = 272
          Width = 441
          Height = 140
          MaxLength = 8190
          ScrollBars = ssVertical
          TabOrder = 40
        end
        object CbEspecie: TComboBox
          Left = 122
          Top = 197
          Width = 121
          Height = 21
          ItemHeight = 13
          MaxLength = 20
          TabOrder = 30
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
          Left = 388
          Top = 233
          Width = 115
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          ItemIndex = 1
          MaxLength = 20
          TabOrder = 35
          Text = 'Destinat'#225'rio (FOB)'
          Items.Strings = (
            'Emitente (CIF)'
            'Destinat'#225'rio (FOB)'
          )
        end
        object EdtCd_Emitente: TMaskEdit
          Left = 180
          Top = 16
          Width = 93
          Height = 19
          EditMask = '##############;0; '
          MaxLength = 14
          TabOrder = 2
          OnExit = EdtCd_EmitenteExit
          OnKeyDown = EdtCd_EmitenteKeyDown
        end
        object CbModeloFiscal: TComboBox
          Left = 366
          Top = 197
          Width = 293
          Height = 21
          Style = csDropDownList
          DropDownCount = 23
          ItemHeight = 13
          TabOrder = 32
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
            '55 - NF-e'
            '57 - CT-e'
            '65 - NFC-e'
            '99 - Outras'
          )
        end
        object EdtPs_Liquido: TCurrencyEdit
          Left = 652
          Top = 159
          Width = 65
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
          TabOrder = 28
        end
        object EdtVl_Desconto: TCurrencyEdit
          Left = 251
          Top = 159
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
          OnChange = EdtVl_ProdutoChange
        end
        object CbFlEmitente: TComboBox
          Left = 577
          Top = 233
          Width = 89
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          MaxLength = 20
          TabOrder = 37
          Items.Strings = (
            'Pr'#243'prio'
            'Terceiro'
          )
        end
        object EdtNr_Placa: TMaskEdit
          Left = 505
          Top = 233
          Width = 69
          Height = 19
          AutoSize = False
          CharCase = ecUpperCase
          MaxLength = 7
          TabOrder = 36
        end
        object EdtVl_Pis: TCurrencyEdit
          Left = 334
          Top = 159
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
          OnChange = EdtVl_ProdutoChange
        end
        object EdtVl_Cofins: TCurrencyEdit
          Left = 417
          Top = 159
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
          TabOrder = 25
          OnChange = EdtVl_ProdutoChange
        end
        object EdtNr_CupomFiscal: TCurrencyEdit
          Left = 309
          Top = 427
          Width = 60
          Height = 19
          Margins.Left = 2
          Margins.Top = 2
          AutoSize = False
          DecimalPlaces = 0
          DisplayFormat = '#,###'
          TabOrder = 41
          OnExit = EdtNr_FaturaExit
        end
        object CbConFinal: TComboBox
          Left = 290
          Top = 88
          Width = 60
          Height = 21
          Style = csDropDownList
          Ctl3D = False
          ItemHeight = 13
          ItemIndex = 0
          ParentCtl3D = False
          TabOrder = 12
          Text = 'Sim'
          Items.Strings = (
            'Sim'
            'N'#227'o'
          )
        end
        object EdtNr_chNFe: TMaskEdit
          Left = 4
          Top = 427
          Width = 301
          Height = 19
          EditMask = '9999 9999 9999 9999 9999 9999 9999 9999 9999 9999 9999;0; '
          MaxLength = 54
          TabOrder = 39
          OnChange = EdtNr_chNFeChange
        end
        object CbfinNFe: TbctComboBox
          Left = 446
          Top = 53
          Width = 149
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          TabOrder = 6
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
          Left = 598
          Top = 53
          Width = 295
          Height = 19
          EditLabel.Width = 111
          EditLabel.Height = 13
          EditLabel.Caption = 'Natureza da Opera'#231#227'o:'
          LabelSpacing = 2
          MaxLength = 60
          TabOrder = 7
        end
      end
      object TabSProdutos: TTabSheet
        Caption = '                              Produtos                              '
        ImageIndex = 1
        object Label17: TLabel
          Left = 4
          Top = 2
          Width = 100
          Height = 13
          Caption = 'Produtos da Entrada:'
        end
        object DbTxtProduto: TDBText
          Left = 3
          Top = 361
          Width = 79
          Height = 13
          AutoSize = True
          DataField = 'Nm_Produto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object LblTotal: TLabel
          Left = 585
          Top = 361
          Width = 290
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'LblTotal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label32: TLabel
          Left = 8
          Top = 375
          Width = 95
          Height = 13
          Caption = 'Sit. Tribut'#225'ria (CST):'
          FocusControl = DbEdtCd_CST
        end
        object Label33: TLabel
          Left = 104
          Top = 375
          Width = 31
          Height = 13
          Caption = 'CFOP:'
          FocusControl = DbEdtCd_CFOP
        end
        object Label35: TLabel
          Left = 540
          Top = 375
          Width = 74
          Height = 13
          Caption = 'ICMS (R$ / % ):'
          FocusControl = DbEdtvl_icms
        end
        object Label37: TLabel
          Left = 699
          Top = 375
          Width = 58
          Height = 13
          Caption = 'IPI (R$ / %):'
          FocusControl = DbEdtvl_ipi
        end
        object Label34: TLabel
          Left = 8
          Top = 411
          Width = 79
          Height = 13
          Caption = 'Numero do Lote:'
          FocusControl = DbEdtnr_lote
        end
        object Label36: TLabel
          Left = 141
          Top = 411
          Width = 56
          Height = 13
          Caption = 'Fabrica'#231#227'o:'
          FocusControl = DbEdtdt_fabricacao
        end
        object Label38: TLabel
          Left = 214
          Top = 411
          Width = 44
          Height = 13
          Caption = 'Validade:'
          FocusControl = DbEdtdt_validade
        end
        object Label39: TLabel
          Left = 287
          Top = 411
          Width = 138
          Height = 13
          Caption = 'Movimenta'#231#227'o no Invent'#225'rio:'
          FocusControl = DbEdtFl_Inventario
        end
        object Label42: TLabel
          Left = 448
          Top = 411
          Width = 97
          Height = 13
          Caption = 'PIS (CST / % / R$ ):'
          FocusControl = DbEdtCd_CST_PIS
        end
        object Label43: TLabel
          Left = 664
          Top = 375
          Width = 26
          Height = 13
          Caption = 'MVA:'
          FocusControl = DBEdit2
        end
        object Label44: TLabel
          Left = 573
          Top = 411
          Width = 54
          Height = 13
          Caption = 'Tributa'#231#227'o:'
          FocusControl = DBEdit3
        end
        object DbGProduto: TDBGrid
          Left = 3
          Top = 14
          Width = 891
          Height = 344
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
          OnEnter = DbGProdutoEnter
          OnExit = DbGProdutoExit
          Columns = <
            item
              Expanded = False
              FieldName = 'cd_produto'
              Title.Alignment = taRightJustify
              Width = 72
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'cd_produto_emitente'
              Width = 70
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Nm_Produto'
              Width = 378
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'Cd_CFOP'
              Title.Alignment = taCenter
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'Cd_CST'
              Title.Alignment = taCenter
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Sg_Unidade'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Qt_Item'
              Title.Alignment = taRightJustify
              Width = 65
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Qt_Estoque'
              Title.Alignment = taRightJustify
              Width = 65
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Vl_Unitario'
              Width = 65
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Vl_Total'
              Title.Alignment = taRightJustify
              Width = 65
              Visible = True
            end>
        end
        object DbEdtCd_CST: TDBEdit
          Left = 8
          Top = 391
          Width = 39
          Height = 19
          TabStop = False
          Color = clSilver
          DataField = 'Cd_CST'
          DataSource = DsProduto
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
        end
        object DbEdtCd_CFOP: TDBEdit
          Left = 104
          Top = 391
          Width = 31
          Height = 19
          TabStop = False
          Color = clSilver
          DataField = 'Cd_CFOP'
          DataSource = DsProduto
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
        end
        object DbEdtDs_CFOP: TDBEdit
          Left = 136
          Top = 391
          Width = 400
          Height = 19
          TabStop = False
          Color = clSilver
          DataField = 'Ds_CFOP'
          DataSource = DsProduto
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 3
        end
        object DbEdtpr_icms: TDBEdit
          Left = 621
          Top = 391
          Width = 40
          Height = 19
          TabStop = False
          Color = clSilver
          DataField = 'pr_icms'
          DataSource = DsProduto
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 4
        end
        object DbEdtvl_icms: TDBEdit
          Left = 540
          Top = 391
          Width = 80
          Height = 19
          TabStop = False
          Color = clSilver
          DataField = 'vl_icms'
          DataSource = DsProduto
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 5
        end
        object DbEdtpr_ipi: TDBEdit
          Left = 782
          Top = 391
          Width = 40
          Height = 19
          TabStop = False
          Color = clSilver
          DataField = 'pr_ipi'
          DataSource = DsProduto
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 6
        end
        object DbEdtvl_ipi: TDBEdit
          Left = 699
          Top = 391
          Width = 80
          Height = 19
          TabStop = False
          Color = clSilver
          DataField = 'vl_ipi'
          DataSource = DsProduto
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 7
        end
        object DbEdtnr_lote: TDBEdit
          Left = 8
          Top = 427
          Width = 130
          Height = 19
          TabStop = False
          Color = clSilver
          DataField = 'nr_lote'
          DataSource = DsProduto
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 8
        end
        object DbEdtdt_fabricacao: TDBEdit
          Left = 141
          Top = 427
          Width = 70
          Height = 19
          TabStop = False
          Color = clSilver
          DataField = 'dt_fabricacao'
          DataSource = DsProduto
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 9
        end
        object DbEdtdt_validade: TDBEdit
          Left = 214
          Top = 427
          Width = 70
          Height = 19
          TabStop = False
          Color = clSilver
          DataField = 'dt_validade'
          DataSource = DsProduto
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 10
        end
        object DbEdtFl_Inventario: TDBEdit
          Left = 287
          Top = 427
          Width = 157
          Height = 19
          TabStop = False
          Color = clSilver
          DataField = 'Dp_Inventario'
          DataSource = DsProduto
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 11
        end
        object DbEdtPr_Pis: TDBEdit
          Left = 483
          Top = 427
          Width = 40
          Height = 19
          TabStop = False
          Color = clSilver
          DataField = 'Vl_Pis'
          DataSource = DsProduto
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 12
        end
        object DbEdtCd_CST_PIS: TDBEdit
          Left = 448
          Top = 427
          Width = 33
          Height = 19
          TabStop = False
          Color = clSilver
          DataField = 'Pr_Pis'
          DataSource = DsProduto
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 13
        end
        object DBEdit2: TDBEdit
          Left = 664
          Top = 391
          Width = 33
          Height = 19
          TabStop = False
          Color = clSilver
          DataField = 'Pr_MVA'
          DataSource = DsProduto
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 14
        end
        object DBEdit3: TDBEdit
          Left = 573
          Top = 427
          Width = 31
          Height = 19
          TabStop = False
          Color = clSilver
          DataField = 'Cd_Tributacao'
          DataSource = DsProduto
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 15
        end
        object DbEdtDs_Tributacao: TDBEdit
          Left = 605
          Top = 427
          Width = 290
          Height = 19
          TabStop = False
          Color = clSilver
          DataField = 'Ds_Tributacao'
          DataSource = DsProduto
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 16
        end
      end
    end
    object SctReport: TSctReport
      Left = 568
      Top = 481
      Width = 82
      Height = 44
      HorzScrollBar.Visible = False
      VertScrollBar.Visible = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      Visible = False
      Minimized = True
      Prompt = True
      AutoRun = False
      OnBeforePrint = SctReportBeforePrint
      SuppressStatus = False
      PixelsPerInch = 96
      STop = 5
      SLeft = 5
      SWidth = 836
      SHeight = 581
      MTop = 481
      MLeft = 568
      SAlign = alNone
      Version = vAce1_0
      object SctGrouppage1: TSctGrouppage
        Left = 35
        Top = 55
        Width = 27
        Height = 0
        Color = clWhite
        ParentColor = False
        TabOrder = 2
        ClipLabels = False
        PageSetup.Orientation = poPortrait
        PageSetup.Size = psA4
        PageSetup.Height = 11.69291338582677
        PageSetup.Width = 8.26771653543307
        PageSetup.PreviewSettings.ModalPreview = mpNonModal
        PageSetup.PreviewSettings.PreviewOwner = poAppOwned
        PageSetup.PreviewSettings.FormStyle = pfsMDIChild
        PageSetup.PreviewSettings.Zoom = azHeight
        BorderType = btNone
        Description = 'Entrada'
        CloseDataSet = False
        DataRange = drAllRecords
        OmitLastPgFt = False
        Head = SctBand1
        Detail = SctBand3
        Foot = SctBand5
        PageHead = SctBand2
        PageFoot = SctBand4
        DataSource = DsProduto
        Order = 1
        object SctLevel1: TSctLevel
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          IsHeader = True
        end
        object SctLevel2: TSctLevel
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          IsHeader = True
        end
        object SctLevel3: TSctLevel
          Left = 0
          Top = 0
          Width = 0
          Height = 0
        end
        object SctLevel4: TSctLevel
          Left = 0
          Top = 0
          Width = 0
          Height = 0
        end
        object SctLevel5: TSctLevel
          Left = 0
          Top = 0
          Width = 0
          Height = 0
        end
        object SctDateTimeVar1: TSctDateTimeVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          UpdateLevel = SctLevel1
          AutoVar = True
          ID = vidDateTimeVar
        end
        object SctPageVar1: TSctPageVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          UpdateLevel = SctLevel2
          AutoVar = True
          ID = vidPageVar
        end
        object SctDataSourceGuide1: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = DsReport
        end
        object SctDataSourceGuide2: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = DmMaster.DsUsuario
        end
        object SctDataSourceGuide3: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = DmMaster.DsFilial
        end
        object SctDataSourceGuide4: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = FrmFoto_Grupo_Find.DsFind
        end
        object SctDataSourceGuide5: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = FrmCidade_Find.DsFind
        end
        object adodsdadosnr_entradaVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nr_entrada'
          DataSource = DsReport
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsdadoscd_emitenteVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'cd_emitente'
          DataSource = DsReport
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsdadosnm_emitenteVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nm_emitente'
          DataSource = DsReport
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsdadoscd_serieVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'cd_serie'
          DataSource = DsReport
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsdadosnr_faturaVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nr_fatura'
          DataSource = DsReport
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsdadoscd_cfopVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'cd_cfop'
          DataSource = DsReport
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsdadosds_cfopVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'ds_cfop'
          DataSource = DsReport
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsdadosdt_emissaoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'dt_emissao'
          DataSource = DsReport
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsdadosdt_lancamentoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'dt_lancamento'
          DataSource = DsReport
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsdadosvl_baseicmsVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'vl_baseicms'
          DataSource = DsReport
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsdadospr_icmsVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'pr_icms'
          DataSource = DsReport
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsdadosvl_icmsVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'vl_icms'
          DataSource = DsReport
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsdadosvl_produtoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'vl_produto'
          DataSource = DsReport
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsdadosvl_freteVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'vl_frete'
          DataSource = DsReport
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsdadosvl_ipiVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'vl_ipi'
          DataSource = DsReport
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsdadosvl_notaVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'vl_nota'
          DataSource = DsReport
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsdadosps_notaVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'ps_nota'
          DataSource = DsReport
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsdadosnr_pagarVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nr_pagar'
          DataSource = DsReport
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsfilialDp_FilialVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_Filial'
          DataSource = DmMaster.DsFilial
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object TotalOfCd_Produto: TSctTotalvar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidTotalVar
        end
        object DataSourceGuide: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = FrmEmitente_Find.DsFind
        end
        object DataSourceGuide1: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = FrmEmitente_Find.DsContato
        end
        object DataSourceGuide2: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = FrmNota.DsNota
        end
        object DataSourceGuide3: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = FrmPagar.DsParcela
        end
        object DataSourceGuide4: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = FrmPagar.DsHistorico
        end
        object DataSourceGuide6: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = FrmCFOP_Find.DsFind
        end
        object DataSourceGuide7: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = FrmEntrada_NFe.DsNFeItem
        end
        object DataSourceGuide5: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = DsProduto
        end
        object adodsprodutoNm_ProdutoVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nm_Produto'
          DataSource = DsProduto
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsprodutoSg_UnidadeVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Sg_Unidade'
          DataSource = DsProduto
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsprodutoQt_ItemVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Qt_Item'
          DataSource = DsProduto
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsprodutoQt_EstoqueVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Qt_Estoque'
          DataSource = DsProduto
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsprodutoVl_TotalVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Vl_Total'
          DataSource = DsProduto
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsprodutocd_produtoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'cd_produto'
          DataSource = DsProduto
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object DataSourceGuide18: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = FrmEntrada_Item_Select.DsFind
        end
        object adodsprodutoDs_LocalizacaoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ds_Localizacao'
          DataSource = DsProduto
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object Group: TSctGroup
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Header = GroupHeader
          Footer = GroupFooter
          Variable = adodsprodutoDs_LocalizacaoVar
          Level = 0
        end
        object GroupHeaderLevel: TSctLevel
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          IsHeader = True
        end
        object GroupFooterLevel: TSctLevel
          Left = 0
          Top = 0
          Width = 0
          Height = 0
        end
        object DataSourceGuide20: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = DmMaster.DsConexao
        end
        object DataSourceGuide22: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = FrmSaida_Find.DsFind
        end
        object DataSourceGuide24: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = DmMaster.DsConecadoMes
        end
        object DataSourceGuide26: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = FrmProduto_Tabela_Update.DsItem
        end
        object SctBand1: TSctBand
          Left = 0
          Top = 0
          Width = 748
          Height = 5
          ParentColor = True
          BandName = 'Report Header'
          Updatelevel = SctLevel1
          Visible = False
        end
        object SctBand2: TSctBand
          Left = 0
          Top = 20
          Width = 748
          Height = 39
          ParentColor = True
          BandName = 'Page Header'
          Updatelevel = SctLevel2
          object Sctvarlabel9: TSctvarlabel
            Left = 2
            Top = 1
            Width = 211
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Entrada no Estoque'
          end
          object Sctvarlabel10: TSctvarlabel
            Left = 601
            Top = 1
            Width = 31
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Data:'
          end
          object Sctvarlabel15: TSctvarlabel
            Left = 634
            Top = 1
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = SctDateTimeVar1
            DataFormat.DisplayFormat = 'dd/mm/yyyy'
          end
          object Sctvarlabel16: TSctvarlabel
            Left = 598
            Top = 18
            Width = 34
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Hora:'
          end
          object Sctvarlabel17: TSctvarlabel
            Left = 634
            Top = 18
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = SctDateTimeVar1
            DataFormat.DisplayFormat = 'hh:mm:ss'
          end
          object SctLine3: TSctLine
            Left = 0
            Top = 31
            Width = 698
            Height = 7
          end
        end
        object SctBand3: TSctBand
          Left = 0
          Top = 296
          Width = 748
          Height = 18
          ParentColor = True
          BandName = 'Detail'
          Updatelevel = SctLevel3
          Stretch = True
          object Sctvarlabel18: TSctvarlabel
            Left = 0
            Top = 1
            Width = 51
            Height = 17
            AlignHorizontal = laRight
            WrapText = True
            Stretch = True
            Variable = adodsprodutocd_produtoVar
          end
          object Sctvarlabel19: TSctvarlabel
            Left = 55
            Top = 1
            Width = 328
            Height = 17
            WrapText = True
            Stretch = True
            Variable = adodsprodutoNm_ProdutoVar1
          end
          object Sctvarlabel26: TSctvarlabel
            Left = 633
            Top = 1
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            BorderMargin = 1
            WrapText = True
            Stretch = True
            Variable = adodsprodutoVl_TotalVar1
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
          end
          object Sctvarlabel55: TSctvarlabel
            Left = 564
            Top = 1
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            BorderMargin = 1
            WrapText = True
            Stretch = True
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
          end
          object Sctvarlabel56: TSctvarlabel
            Left = 494
            Top = 1
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            BorderMargin = 1
            WrapText = True
            Stretch = True
            Variable = adodsprodutoQt_EstoqueVar1
            DataFormat.DisplayFormat = '#,##0.0##'
            DataFormat.Digits = 3
          end
          object Sctvarlabel57: TSctvarlabel
            Left = 423
            Top = 1
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            BorderMargin = 1
            WrapText = True
            Stretch = True
            Variable = adodsprodutoQt_ItemVar1
            DataFormat.DisplayFormat = '#,##0.0##'
            DataFormat.Digits = 3
          end
          object Sctvarlabel58: TSctvarlabel
            Left = 392
            Top = 1
            Width = 31
            Height = 17
            AlignHorizontal = laCenter
            BorderMargin = 1
            WrapText = True
            Stretch = True
            Variable = adodsprodutoSg_UnidadeVar1
          end
        end
        object SctBand4: TSctBand
          Left = 0
          Top = 346
          Width = 748
          Height = 20
          ParentColor = True
          BandName = 'Page Footer'
          Updatelevel = SctLevel4
          object SctLine6: TSctLine
            Left = 0
            Top = 1
            Width = 698
            Height = 7
            AlignVertical = laTop
          end
          object Sctvarlabel20: TSctvarlabel
            Left = 2
            Top = 2
            Width = 344
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            Variable = adodsfilialDp_FilialVar1
          end
          object Sctvarlabel21: TSctvarlabel
            Left = 616
            Top = 2
            Width = 44
            Height = 17
            AlignHorizontal = laRight
            Caption = 'P'#225'gina:'
          end
          object Sctvarlabel22: TSctvarlabel
            Left = 663
            Top = 2
            Width = 35
            Height = 17
            AlignHorizontal = laRight
            Variable = SctPageVar1
            DataFormat.DisplayFormat = '#,###'
          end
        end
        object SctBand5: TSctBand
          Left = 0
          Top = 381
          Width = 748
          Height = 20
          ParentColor = True
          BandName = 'Report Footer'
          Updatelevel = SctLevel5
          object SctLine7: TSctLine
            Left = 570
            Top = 1
            Width = 126
            Height = 5
            AlignVertical = laTop
          end
          object SctTotalvarLabel1: TSctTotalvarLabel
            Left = 663
            Top = 3
            Width = 35
            Height = 17
            TotalVariable = TotalOfCd_Produto
            TotalType = ttCount
            DataFormat.DisplayFormat = '#,##0'
            DataFormat.Digits = 0
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Sctvarlabel23: TSctvarlabel
            Left = 565
            Top = 3
            Width = 92
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Total de Itens:'
          end
        end
        object PageHeaderBandSub_1: TSctSubBand
          Left = 0
          Top = 74
          Width = 748
          Height = 134
          Color = 16316664
          BandName = 'PageHeaderBandSub_1'
          Updatelevel = SctLevel2
          Stretch = True
          Band = SctBand2
          Above = False
          object Sctvarlabel24: TSctvarlabel
            Left = 3
            Top = 0
            Width = 58
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Entrada N'#186':'
          end
          object Sctvarlabel25: TSctvarlabel
            Left = 3
            Top = 16
            Width = 58
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsdadosnr_entradaVar
            DataFormat.DisplayFormat = '#,##0'
          end
          object Sctvarlabel27: TSctvarlabel
            Left = 66
            Top = 0
            Width = 58
            Height = 17
            Caption = 'Situa'#231#227'o'
          end
          object SctLblSituacao: TSctvarlabel
            Left = 66
            Top = 16
            Width = 58
            Height = 17
            DataFormat.DisplayFormat = '#,##0'
            Caption = 'Aberto'
          end
          object Sctvarlabel1: TSctvarlabel
            Left = 128
            Top = 0
            Width = 67
            Height = 17
            Caption = 'Fornecedor'
          end
          object Sctvarlabel2: TSctvarlabel
            Left = 128
            Top = 16
            Width = 40
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsdadoscd_emitenteVar
            DataFormat.DisplayFormat = '#,##0'
          end
          object Sctvarlabel3: TSctvarlabel
            Left = 170
            Top = 16
            Width = 308
            Height = 17
            Variable = adodsdadosnm_emitenteVar
          end
          object Sctvarlabel4: TSctvarlabel
            Left = 3
            Top = 33
            Width = 31
            Height = 17
            Caption = 'S'#233'rie'
          end
          object Sctvarlabel5: TSctvarlabel
            Left = 3
            Top = 49
            Width = 31
            Height = 17
            Variable = adodsdadoscd_serieVar
          end
          object Sctvarlabel6: TSctvarlabel
            Left = 37
            Top = 33
            Width = 52
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Fatura N'#186
          end
          object Sctvarlabel7: TSctvarlabel
            Left = 37
            Top = 49
            Width = 52
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsdadosnr_faturaVar
            DataFormat.DisplayFormat = '#,##0'
          end
          object Sctvarlabel8: TSctvarlabel
            Left = 93
            Top = 33
            Width = 67
            Height = 17
            Caption = 'CFOP'
          end
          object Sctvarlabel11: TSctvarlabel
            Left = 93
            Top = 49
            Width = 33
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsdadoscd_cfopVar
          end
          object Sctvarlabel12: TSctvarlabel
            Left = 128
            Top = 49
            Width = 271
            Height = 17
            Variable = adodsdadosds_cfopVar
          end
          object Sctvarlabel13: TSctvarlabel
            Left = 404
            Top = 33
            Width = 63
            Height = 17
            AlignHorizontal = laCenter
            Caption = 'Emiss'#227'o'
          end
          object Sctvarlabel14: TSctvarlabel
            Left = 404
            Top = 49
            Width = 63
            Height = 17
            AlignHorizontal = laCenter
            Variable = adodsdadosdt_emissaoVar
            DataFormat.DisplayFormat = 'dd/mm/yyyy'
          end
          object Sctvarlabel28: TSctvarlabel
            Left = 472
            Top = 33
            Width = 63
            Height = 17
            AlignHorizontal = laCenter
            Caption = 'Lan'#231'amento'
          end
          object Sctvarlabel29: TSctvarlabel
            Left = 472
            Top = 49
            Width = 63
            Height = 17
            AlignHorizontal = laCenter
            Variable = adodsdadosdt_lancamentoVar
            DataFormat.DisplayFormat = 'dd/mm/yyyy'
          end
          object Sctvarlabel30: TSctvarlabel
            Left = 3
            Top = 66
            Width = 72
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Base de ICMS'
          end
          object Sctvarlabel31: TSctvarlabel
            Left = 3
            Top = 82
            Width = 72
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsdadosvl_baseicmsVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
          end
          object Sctvarlabel32: TSctvarlabel
            Left = 79
            Top = 66
            Width = 49
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Aliquota'
          end
          object Sctvarlabel33: TSctvarlabel
            Left = 79
            Top = 82
            Width = 49
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsdadospr_icmsVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
          end
          object Sctvarlabel34: TSctvarlabel
            Left = 133
            Top = 66
            Width = 72
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Valor do ICMS'
          end
          object Sctvarlabel35: TSctvarlabel
            Left = 133
            Top = 82
            Width = 72
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsdadosvl_icmsVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
          end
          object Sctvarlabel36: TSctvarlabel
            Left = 209
            Top = 66
            Width = 72
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Valor Produto'
          end
          object Sctvarlabel37: TSctvarlabel
            Left = 209
            Top = 82
            Width = 72
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsdadosvl_produtoVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
          end
          object Sctvarlabel38: TSctvarlabel
            Left = 285
            Top = 66
            Width = 72
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Frete'
          end
          object Sctvarlabel39: TSctvarlabel
            Left = 285
            Top = 82
            Width = 72
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsdadosvl_freteVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
          end
          object Sctvarlabel40: TSctvarlabel
            Left = 361
            Top = 66
            Width = 72
            Height = 17
            AlignHorizontal = laRight
            Caption = 'IPI'
          end
          object Sctvarlabel41: TSctvarlabel
            Left = 361
            Top = 82
            Width = 72
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsdadosvl_ipiVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
          end
          object Sctvarlabel42: TSctvarlabel
            Left = 437
            Top = 66
            Width = 72
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Total'
          end
          object Sctvarlabel43: TSctvarlabel
            Left = 437
            Top = 82
            Width = 72
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsdadosvl_notaVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
          end
          object Sctvarlabel44: TSctvarlabel
            Left = 514
            Top = 66
            Width = 72
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Peso:'
          end
          object Sctvarlabel45: TSctvarlabel
            Left = 514
            Top = 82
            Width = 72
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsdadosps_notaVar
            DataFormat.DisplayFormat = '#,##0.00#'
            DataFormat.Digits = 2
          end
          object Sctvarlabel46: TSctvarlabel
            Left = 2
            Top = 99
            Width = 69
            Height = 17
            Caption = 'Observa'#231#245'es'
          end
          object Sctvarlabel47: TSctvarlabel
            Left = 2
            Top = 115
            Width = 581
            Height = 17
            WrapText = True
            Stretch = True
          end
        end
        object PageHeaderBandSub_2: TSctSubBand
          Left = 0
          Top = 223
          Width = 748
          Height = 23
          Color = 16316664
          BandName = 'PageHeaderBandSub_2'
          Updatelevel = SctLevel2
          Band = SctBand2
          Order = 1
          Above = False
          object SctLine1: TSctLine
            Left = 0
            Top = 1
            Width = 698
            Height = 7
            AlignVertical = laTop
          end
          object Sctvarlabel48: TSctvarlabel
            Left = 0
            Top = 3
            Width = 51
            Height = 17
            AlignHorizontal = laRight
            Caption = 'C'#243'digo'
          end
          object Sctvarlabel49: TSctvarlabel
            Left = 55
            Top = 3
            Width = 65
            Height = 17
            Caption = 'Produto'
          end
          object Sctvarlabel50: TSctvarlabel
            Left = 633
            Top = 3
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Total'
          end
          object Sctvarlabel51: TSctvarlabel
            Left = 564
            Top = 3
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Unit'#225'rio'
          end
          object Sctvarlabel52: TSctvarlabel
            Left = 494
            Top = 3
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Estoque'
          end
          object Sctvarlabel53: TSctvarlabel
            Left = 423
            Top = 3
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Quantidade'
          end
          object Sctvarlabel54: TSctvarlabel
            Left = 392
            Top = 3
            Width = 31
            Height = 17
            AlignHorizontal = laCenter
            Caption = 'Unid.'
          end
          object SctLine2: TSctLine
            Left = 0
            Top = 16
            Width = 698
            Height = 7
          end
        end
        object GroupHeader: TSctBand
          Left = 0
          Top = 261
          Width = 748
          Height = 20
          ParentColor = True
          BandName = 'Group Header'
          Updatelevel = GroupHeaderLevel
          object Sctvarlabel61: TSctvarlabel
            Left = 21
            Top = 2
            Width = 391
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            WrapText = True
            Stretch = True
            Variable = adodsprodutoDs_LocalizacaoVar
          end
        end
        object GroupFooter: TSctBand
          Left = 0
          Top = 329
          Width = 748
          Height = 2
          ParentColor = True
          BandName = 'Group Footer'
          Updatelevel = GroupFooterLevel
          Visible = False
        end
      end
    end
    object SctRepTermica: TSctReport
      Left = 480
      Top = 485
      Width = 82
      Height = 44
      HorzScrollBar.Visible = False
      VertScrollBar.Visible = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      Visible = False
      Minimized = True
      Prompt = True
      AutoRun = False
      SuppressStatus = False
      PixelsPerInch = 96
      STop = 46
      SLeft = 96
      SWidth = 802
      SHeight = 484
      MTop = 485
      MLeft = 480
      SAlign = alNone
      Version = vAce1_0
      object SctGrpTermica: TSctGrouppage
        Left = 35
        Top = 55
        Width = 27
        Height = 0
        Color = clWhite
        ParentColor = False
        TabOrder = 2
        ClipLabels = False
        PageSetup.Orientation = poPortrait
        PageSetup.Size = psA4
        PageSetup.Source = psUpper
        PageSetup.Duplex = pdSimplex
        PageSetup.Height = 29.7
        PageSetup.Width = 21.0
        PageSetup.PrintQuality = pqHigh
        PageSetup.Units = unitCentiMeters
        PageSetup.LeftMargin = 0.8
        PageSetup.RightMargin = 0
        PageSetup.TopMargin = 0.3
        PageSetup.BottomMargin = 0
        BorderType = btNone
        Description = 'Etiquetas para Impressora T'#233'rmica'
        CloseDataSet = False
        DataRange = drAllRecords
        OnDataStart = SctGrpTermicaDataStart
        OnDataSkip = SctGrpTermicaDataSkip
        OmitLastPgFt = False
        Head = SctBand6
        Detail = SctBand8
        Foot = SctBand10
        PageHead = SctBand7
        PageFoot = SctBand9
        DataSource = DmMaster.DsFilial
        Order = 1
        object SctLevel6: TSctLevel
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          IsHeader = True
        end
        object SctLevel7: TSctLevel
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          IsHeader = True
        end
        object SctLevel8: TSctLevel
          Left = 0
          Top = 0
          Width = 0
          Height = 0
        end
        object SctLevel9: TSctLevel
          Left = 0
          Top = 0
          Width = 0
          Height = 0
        end
        object SctLevel10: TSctLevel
          Left = 0
          Top = 0
          Width = 0
          Height = 0
        end
        object SctDateTimeVar2: TSctDateTimeVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          UpdateLevel = SctLevel6
          AutoVar = True
          ID = vidDateTimeVar
        end
        object SctPageVar2: TSctPageVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          UpdateLevel = SctLevel7
          AutoVar = True
          ID = vidPageVar
        end
        object SctDataSourceGuide9: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel8
          DataSource = DmMaster.DsUsuario
        end
        object SctDataSourceGuide10: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel8
          DataSource = DmMaster.DsFilial
        end
        object ExpVarBC: TSctExprVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataType = dtypeString
          OnGetData = ExpVarBCGetData
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidExprVar
        end
        object DataSourceGuide8: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel8
          DataSource = DsReport
        end
        object DataSourceGuide9: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel8
          DataSource = FrmEmitente_Find.DsFind
        end
        object DataSourceGuide10: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel8
          DataSource = FrmEmitente_Find.DsContato
        end
        object DataSourceGuide11: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel8
          DataSource = FrmCFOP_Find.DsFind
        end
        object DataSourceGuide12: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel8
          DataSource = FrmNota.DsNota
        end
        object DataSourceGuide13: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel8
          DataSource = FrmPagar.DsParcela
        end
        object DataSourceGuide14: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel8
          DataSource = FrmPagar.DsHistorico
        end
        object DataSourceGuide15: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel8
          DataSource = FrmEntrada_NFe.DsNFeItem
        end
        object DataSourceGuide16: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel8
          DataSource = DsProduto
        end
        object adodsfilialNm_AbreviadoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nm_Abreviado'
          DataSource = DmMaster.DsFilial
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsfilialNr_TelefoneVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_Telefone'
          DataSource = DmMaster.DsFilial
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidAutoDataVar
        end
        object DataSourceGuide17: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel8
          DataSource = FrmEntrada_Item_Select.DsFind
        end
        object DataSourceGuide19: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel8
          DataSource = DmMaster.DsConexao
        end
        object DataSourceGuide21: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel8
          DataSource = FrmSaida_Find.DsFind
        end
        object DataSourceGuide23: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel8
          DataSource = DmMaster.DsConecadoMes
        end
        object DataSourceGuide25: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel8
          DataSource = FrmProduto_Tabela_Update.DsItem
        end
        object SctBand6: TSctBand
          Left = 0
          Top = 0
          Width = 813
          Height = 0
          ParentColor = True
          BandName = 'Report Header'
          Updatelevel = SctLevel6
          Visible = False
        end
        object SctBand7: TSctBand
          Left = 0
          Top = 15
          Width = 813
          Height = 0
          ParentColor = True
          BandName = 'Page Header'
          Updatelevel = SctLevel7
          Visible = False
        end
        object SctBand9: TSctBand
          Left = 0
          Top = 330
          Width = 813
          Height = 0
          ParentColor = True
          BandName = 'Page Footer'
          Updatelevel = SctLevel9
          Visible = False
        end
        object SctBand10: TSctBand
          Left = 0
          Top = 345
          Width = 813
          Height = 0
          ParentColor = True
          BandName = 'Report Footer'
          Updatelevel = SctLevel10
          Visible = False
        end
        object SctBand8: TSctBand
          Left = 0
          Top = 30
          Width = 813
          Height = 285
          ParentColor = True
          BandName = 'Detail'
          Updatelevel = SctLevel8
          NewPage = True
          object SctBC: TSctBarCodeLabel
            Left = 2
            Top = 220
            Width = 359
            Height = 39
            Variable = ExpVarBC
            BarCodeBrush.Color = clBlack
            AlignHorizontal = laCenter
            BarCodeType = bct2of5
          end
          object SctTxtCdProduto: TSctvarlabel
            Left = 90
            Top = 50
            Width = 191
            Height = 42
            Color = clBlack
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -32
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = False
            AlignHorizontal = laCenter
            Caption = 'C'#243'digo'
          end
          object Sctvarlabel59: TSctvarlabel
            Left = -1
            Top = 16
            Width = 265
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Variable = adodsfilialNm_AbreviadoVar
          end
          object SctVarProduto: TSctvarlabel
            Left = 2
            Top = 98
            Width = 359
            Height = 62
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -19
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignVertical = laMiddle
            AlignHorizontal = laCenter
            WrapText = True
            Caption = 'Produto'
          end
          object Sctvarlabel60: TSctvarlabel
            Left = 267
            Top = 14
            Width = 92
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Variable = adodsfilialNr_TelefoneVar
            DataFormat.DisplayFormat = '(##) ####-####;0; '
          end
          object SctVarCdFabricante: TSctvarlabel
            Left = 2
            Top = 166
            Width = 359
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laCenter
            Caption = 'C'#243'digo do Fabricante'
          end
          object SctVarNmFabricante: TSctvarlabel
            Left = 2
            Top = 183
            Width = 359
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laCenter
            Caption = 'Nome do Fabricante'
          end
        end
      end
    end
    object SctRepTerm3x10: TSctReport
      Left = 378
      Top = 490
      Width = 82
      Height = 44
      HorzScrollBar.Visible = False
      VertScrollBar.Visible = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      Visible = False
      Minimized = True
      Prompt = True
      AutoRun = False
      SuppressStatus = False
      PixelsPerInch = 96
      STop = 109
      SLeft = 63
      SWidth = 802
      SHeight = 484
      MTop = 490
      MLeft = 378
      SAlign = alNone
      Version = vAce1_0
      object SctGrpTer3x10: TSctGrouppage
        Left = 35
        Top = 55
        Width = 27
        Height = 0
        Color = clWhite
        ParentColor = False
        TabOrder = 2
        ClipLabels = False
        PageSetup.Orientation = poPortrait
        PageSetup.Size = psA4
        PageSetup.Source = psUpper
        PageSetup.Duplex = pdSimplex
        PageSetup.Height = 29.7
        PageSetup.Width = 21.0
        PageSetup.PrintQuality = pqHigh
        PageSetup.Units = unitCentiMeters
        PageSetup.LeftMargin = 0.8
        PageSetup.RightMargin = 0
        PageSetup.TopMargin = 0.3
        PageSetup.BottomMargin = 0
        BorderType = btNone
        Description = 'Etiquetas para Impressora T'#233'rmica'
        CloseDataSet = False
        DataRange = drAllRecords
        OnDataStart = SctGrpTermicaDataStart
        OnDataSkip = SctGrpTermicaDataSkip
        OmitLastPgFt = False
        Head = SctBand11
        Detail = SctBand15
        Foot = SctBand14
        PageHead = SctBand12
        PageFoot = SctBand13
        DataSource = DmMaster.DsFilial
        Order = 1
        object SctLevel11: TSctLevel
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          IsHeader = True
        end
        object SctLevel12: TSctLevel
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          IsHeader = True
        end
        object SctLevel13: TSctLevel
          Left = 0
          Top = 0
          Width = 0
          Height = 0
        end
        object SctLevel14: TSctLevel
          Left = 0
          Top = 0
          Width = 0
          Height = 0
        end
        object SctLevel15: TSctLevel
          Left = 0
          Top = 0
          Width = 0
          Height = 0
        end
        object SctDateTimeVar3: TSctDateTimeVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          UpdateLevel = SctLevel11
          AutoVar = True
          ID = vidDateTimeVar
        end
        object SctPageVar3: TSctPageVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          UpdateLevel = SctLevel12
          AutoVar = True
          ID = vidPageVar
        end
        object SctDataSourceGuide6: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel13
          DataSource = DmMaster.DsUsuario
        end
        object SctDataSourceGuide7: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel13
          DataSource = DmMaster.DsFilial
        end
        object SctExprVar1: TSctExprVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataType = dtypeString
          OnGetData = ExpVarBCGetData
          UpdateLevel = SctLevel13
          AutoVar = False
          ID = vidExprVar
        end
        object SctDataSourceGuide8: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel13
          DataSource = DsReport
        end
        object SctDataSourceGuide11: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel13
          DataSource = FrmEmitente_Find.DsFind
        end
        object SctDataSourceGuide12: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel13
          DataSource = FrmEmitente_Find.DsContato
        end
        object SctDataSourceGuide13: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel13
          DataSource = FrmCFOP_Find.DsFind
        end
        object SctDataSourceGuide14: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel13
          DataSource = FrmNota.DsNota
        end
        object SctDataSourceGuide15: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel13
          DataSource = FrmPagar.DsParcela
        end
        object SctDataSourceGuide16: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel13
          DataSource = FrmPagar.DsHistorico
        end
        object SctDataSourceGuide17: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel13
          DataSource = FrmEntrada_NFe.DsNFeItem
        end
        object SctDataSourceGuide18: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel13
          DataSource = DsProduto
        end
        object SctDataSourceGuide19: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel13
          DataSource = FrmEntrada_Item_Select.DsFind
        end
        object SctDataSourceGuide20: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel13
          DataSource = DmMaster.DsConexao
        end
        object SctDataSourceGuide21: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel13
          DataSource = FrmSaida_Find.DsFind
        end
        object SctDataSourceGuide22: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel13
          DataSource = DmMaster.DsConecadoMes
        end
        object SctDataSourceGuide23: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel13
          DataSource = FrmProduto_Tabela_Update.DsItem
        end
        object adodsfilialNm_AbreviadoVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nm_Abreviado'
          DataSource = DmMaster.DsFilial
          UpdateLevel = SctLevel13
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsfilialNr_TelefoneVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_Telefone'
          DataSource = DmMaster.DsFilial
          UpdateLevel = SctLevel13
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctBand11: TSctBand
          Left = 0
          Top = 0
          Width = 813
          Height = 0
          ParentColor = True
          BandName = 'Report Header'
          Updatelevel = SctLevel11
          Visible = False
        end
        object SctBand12: TSctBand
          Left = 0
          Top = 15
          Width = 813
          Height = 0
          ParentColor = True
          BandName = 'Page Header'
          Updatelevel = SctLevel12
          Visible = False
        end
        object SctBand13: TSctBand
          Left = 0
          Top = 165
          Width = 813
          Height = 0
          ParentColor = True
          BandName = 'Page Footer'
          Updatelevel = SctLevel14
          Visible = False
        end
        object SctBand14: TSctBand
          Left = 0
          Top = 180
          Width = 813
          Height = 0
          ParentColor = True
          BandName = 'Report Footer'
          Updatelevel = SctLevel15
          Visible = False
        end
        object SctBand15: TSctBand
          Left = 0
          Top = 30
          Width = 813
          Height = 120
          ParentColor = True
          BandName = 'Detail'
          Updatelevel = SctLevel13
          NewPage = True
          object SctBC2: TSctBarCodeLabel
            Left = 144
            Top = 68
            Width = 217
            Height = 39
            Variable = SctExprVar1
            BarCodeBrush.Color = clBlack
            AlignHorizontal = laCenter
            BarCodeType = bct2of5
          end
          object SctTxtCdProduto2: TSctvarlabel
            Left = -1
            Top = 67
            Width = 139
            Height = 41
            Color = clBlack
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -21
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = False
            AlignVertical = laCenterVert
            AlignHorizontal = laCenter
            Caption = '0000000000'
          end
          object SctVarProduto2: TSctvarlabel
            Left = 2
            Top = 7
            Width = 359
            Height = 55
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignVertical = laMiddle
            AlignHorizontal = laCenter
            WrapText = True
            Caption = 'ASDJKLHDJFALSK DFLASKDJHFLASKJDHDFALSDKJFAS ASDLKJFHALSDKJFHALSDJKHFALSDKJHFLASJD kjhlkjsddh R$ 1890,00'
          end
        end
      end
    end
  end
  object ActManCadastro: TActionManager
    ActionBars = <
      item
        Items = <
          item
            Action = ActFirst
            ImageIndex = 19
            ShortCut = 8312
          end
          item
            Action = ActPrior
            ImageIndex = 12
            ShortCut = 8313
          end
          item
            Action = ActNext
            ImageIndex = 13
            ShortCut = 8314
          end
          item
            Action = ActLast
            ImageIndex = 14
            ShortCut = 8315
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
            Action = ActDel
            ImageIndex = 17
            ShortCut = 116
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
            Action = ActLast
            ImageIndex = 14
            ShortCut = 8315
          end
          item
            Action = ActNext
            ImageIndex = 13
            ShortCut = 8314
          end
          item
            Action = ActPrior
            ImageIndex = 12
            ShortCut = 8313
          end
          item
            Action = ActDel
            ImageIndex = 17
            ShortCut = 116
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
            ShortCut = 8312
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
            ShortCut = 8312
          end
          item
            Action = ActPrior
            ImageIndex = 13
            ShortCut = 8313
          end
          item
            Action = ActNext
            ImageIndex = 14
            ShortCut = 8314
          end
          item
            Action = ActLast
            ImageIndex = 15
            ShortCut = 8315
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
            Action = ActDel
            ImageIndex = 19
            ShortCut = 116
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
            ShortCut = 8312
          end
          item
            Action = ActPrior
            ImageIndex = 13
            ShortCut = 8313
          end
          item
            Action = ActNext
            ImageIndex = 14
            ShortCut = 8314
          end
          item
            Action = ActLast
            ImageIndex = 15
            ShortCut = 8315
          end>
      end
      item
        Items = <
          item
            Action = ActFirst
            ImageIndex = 12
            ShortCut = 8312
          end
          item
            Action = ActPrior
            ImageIndex = 13
            ShortCut = 8313
          end
          item
            Action = ActNext
            ImageIndex = 14
            ShortCut = 8314
          end
          item
            Action = ActLast
            ImageIndex = 15
            ShortCut = 8315
          end
          item
            Caption = '-'
          end
          item
            Items = <
              item
                Action = ActItemIns
                Caption = '&Incluir itens por Sele'#231#227'o...'
                ImageIndex = 16
              end
              item
                Action = ActInsertNFe
                Caption = 'I&ncluir Registro pelo XML da NFe'
                ImageIndex = 16
              end
              item
                Action = ActImportaSaida
                Caption = 'I&mportar de uma Sa'#237'da'
                ImageIndex = 8
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
            Action = ActDel
            ImageIndex = 19
            ShortCut = 116
          end
          item
            Items = <
              item
                Action = ActRepNota
                Caption = '&Nota...'
                ImageIndex = 20
              end>
            Action = ActReport
            ImageIndex = 20
            ShowCaption = False
            ShortCut = 117
          end
          item
            Caption = '-'
          end
          item
            Action = ActImporta
            ImageIndex = 35
          end
          item
            Action = ActFechar
            ImageIndex = 26
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
            Action = ActNFe
            ImageIndex = 10
          end
          item
            Caption = '-'
          end
          item
            ContextItems = <
              item
                Action = ActEtqPortal
                ImageIndex = 45
              end>
            Items = <
              item
                Action = ActEtiqTermica
                Caption = '&Etiqueta t'#233'rmica (7 x 10cm)'
                ImageIndex = 45
              end
              item
                Action = ActEtiqTer3x10
                ImageIndex = 45
              end>
            Action = ActEtiqueta
            ImageIndex = 45
          end
          item
            Action = ActEtqPortal
            ImageIndex = 45
          end
          item
            Items = <
              item
                Action = ActPrecoProduto
                Caption = '&Por Produto...'
                ImageIndex = 0
              end
              item
                Action = ActPrecoCusto
                Caption = '&Atualizar somente o custo...'
                ImageIndex = 0
              end>
            Action = ActPreco
            ImageIndex = 0
          end
          item
            Action = ActProdRural
            ImageIndex = 4
          end
          item
            Action = ActPagar
            ImageIndex = 39
          end>
        ActionBar = ActToolBDatabase
      end
      item
      end>
    Images = FrmMain.ImgLstMenu
    Left = 615
    Top = 5
    StyleName = 'XP Style'
    object ActFirst: TAction
      Category = '1-Navigator'
      Hint = 'Primeiro Registro'
      ImageIndex = 12
      ShortCut = 8312
      OnExecute = ActFirstExecute
    end
    object ActPrior: TAction
      Category = '1-Navigator'
      Hint = 'Registro Anterior'
      ImageIndex = 13
      ShortCut = 8313
      OnExecute = ActPriorExecute
    end
    object ActNext: TAction
      Category = '1-Navigator'
      Hint = 'Pr'#243'ximo Registro'
      ImageIndex = 14
      ShortCut = 8314
      OnExecute = ActNextExecute
    end
    object ActLast: TAction
      Category = '1-Navigator'
      Hint = #218'ltimo Registro'
      ImageIndex = 15
      ShortCut = 8315
      OnExecute = ActLastExecute
    end
    object ActInsert: TAction
      Category = '2-Database'
      Hint = 'Incluir um Novo Registro'
      ImageIndex = 16
      ShortCut = 113
      OnExecute = ActInsertExecute
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
    object ActDel: TAction
      Category = '2-Database'
      Hint = 'Excluir este Registro'
      ImageIndex = 19
      ShortCut = 116
      SecondaryShortCuts.Strings = (
        'Linha 1'
        'Linha 2'
        'Linha 3'
      )
      OnExecute = ActDelExecute
    end
    object ActReport: TAction
      Category = '2-Database'
      Hint = 'Relat'#243'rio'
      ImageIndex = 20
      ShortCut = 117
      OnExecute = ActReportExecute
    end
    object ActRepNota: TAction
      Category = '2-Database'
      Caption = 'Nota...'
      ImageIndex = 20
      OnExecute = ActRepNotaExecute
    end
    object ActImporta: TAction
      Category = '2-Database'
      Hint = 'Importa'#231#227'o de Dados'
      ImageIndex = 35
      OnExecute = ActImportaExecute
    end
    object ActFechar: TAction
      Category = '2-Database'
      Hint = 'Fechar Entrada e Atualizar o Estoque'
      ImageIndex = 26
      ShortCut = 118
      OnExecute = ActFecharExecute
    end
    object ActCancel: TAction
      Category = '2-Database'
      Hint = 'Cancelar da Entrada'
      ImageIndex = 21
      ShortCut = 119
      OnExecute = ActCancelExecute
    end
    object ActRedo: TAction
      Category = '2-Database'
      Hint = 'Retornar o Entrada para "Aberto"'
      ImageIndex = 38
      ShortCut = 120
      OnExecute = ActRedoExecute
    end
    object ActEtiqueta: TAction
      Category = '2-Database'
      Hint = 'Etiqueta do Produto'
      ImageIndex = 45
      OnExecute = ActEtiquetaExecute
    end
    object ActEtqPortal: TAction
      Category = '2-Database'
      ImageIndex = 45
      OnExecute = ActEtqPortalExecute
    end
    object ActEtiqTermica: TAction
      Tag = 1
      Category = '2-Database'
      Caption = 'Etiqueta t'#233'rmica (7 x 10cm)'
      ImageIndex = 45
      OnExecute = ActEtiqTermicaExecute
    end
    object ActEtiqTer3x10: TAction
      Tag = 2
      Category = '2-Database'
      Caption = 'Etiqueta t'#233'rmica (3 x 10cm)'
      ImageIndex = 45
      OnExecute = ActEtiqTermicaExecute
    end
    object ActPagar: TAction
      Category = '2-Database'
      Hint = 'Lan'#231'ar o Contas '#224' Pagar'
      ImageIndex = 39
      OnExecute = ActPagarExecute
    end
    object ActPreco: TAction
      Category = '2-Database'
      Hint = 'Atualiza'#231#227'o do Pre'#231'o do Produto'
      ImageIndex = 0
      OnExecute = ActPrecoExecute
    end
    object ActPrecoProduto: TAction
      Category = '2-Database'
      Caption = 'Por Produto...'
      ImageIndex = 0
      OnExecute = ActPrecoProdutoExecute
    end
    object ActPrecoCusto: TAction
      Category = '2-Database'
      Caption = 'Atualizar somente o custo...'
      ImageIndex = 0
      OnExecute = ActPrecoCustoExecute
    end
    object ActItemIns: TAction
      Category = '2-Database'
      Caption = 'Incluir itens por Sele'#231#227'o...'
      ImageIndex = 16
      OnExecute = ActItemInsExecute
    end
    object ActNFe: TAction
      Category = '2-Database'
      Hint = 'Nota Fiscal Eletr'#244'nica - NFe...'
      ImageIndex = 10
      OnExecute = ActNFeExecute
    end
    object ActProdRural: TAction
      Category = '2-Database'
      Hint = 'Nota Fiscal de Produtor Rural'
      ImageIndex = 4
      OnExecute = ActProdRuralExecute
    end
    object ActInsertNFe: TAction
      Category = '2-Database'
      Caption = 'Incluir Registro pelo XML da NFe'
      ImageIndex = 16
      OnExecute = ActInsertNFeExecute
    end
    object ActImportaSaida: TAction
      Category = '2-Database'
      Caption = 'Importar de uma Sa'#237'da'
      ImageIndex = 8
      OnExecute = ActImportaSaidaExecute
    end
  end
  object ADODsDados: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    OnCalcFields = ADODsDadosCalcFields
    CommandText = 'select'#13#10'  A.Nr_Entrada, A.Cd_Emitente, B.Nm_Emitente, A.Cd_Serie, A.Nr_Fatura,'#13#10'  A.Cd_CFOP, D.Ds_CFOP, A.Dt_Emissao, A.St_Entrada,'#13#10'  A.Dt_Lancamento, A.Vl_BaseICMS, A.Pr_ICMS, A.Vl_ICMS, A.Vl_Produto, '#13#10'  A.Vl_Frete, A.Vl_IPI, A.Vl_Nota, A.Vl_BaseSubst, A.Vl_Substituicao, '#13#10'  A.Vl_Seguro, A.Vl_Despesa, A.Ps_Nota, C.Nr_Pagar, A.Mm_Observacao, '#13#10'  A.Cd_Transportador, T.Nm_Transportador, A.Ds_Quantidade, A.Ds_Especie, '#13#10'  A.Ds_Marca, A.Mm_Nota, A.Fl_Frete, A.Cd_ModeloFiscal, A.Ps_Liquido,'#13#10'  A.Vl_Desconto, Coalesce( A.Fl_Emitente, ''''1'''' ) as Fl_Emitente, A.Nr_Placa,'#13#10'  B.Nm_Fantasia, A.Vl_PIS, A.Vl_Cofins, A.Nr_chNFe, A.Nr_CupomFiscal,'#13#10'  A.Fl_ConFinal, A.finNFe, A.natOp'#13#10#13#10'from'#13#10'  Entrada A'#13#10#13#10'inner join'#13#10'  Emitente B'#13#10'on'#13#10'  B.Cd_Emitente = A.Cd_Emitente'#13#10#13#10'left join'#13#10'  Pagar C'#13#10'on'#13#10'  C.Cd_Filial    = A.Cd_Filial and'#13#10'  C.Nr_Entrada = A.Nr_Entrada'#13#10#13#10'left join'#13#10'  CFOP D'#13#10'on'#13#10'  D.Cd_CFOP = A.Cd_CFOP'#13#10#13#10'left join'#13#10'  Transportador T'#13#10'on'#13#10'  T.Cd_Transportador = A.Cd_Transportador'#13#10#13#10'where'#13#10'  A.Cd_Filial  = :Cd_Filial and'#13#10'  A.Nr_Entrada = :Nr_Entrada'
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
        Name = 'Nr_Entrada'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 1
      end>
    Left = 430
    Top = 403
    object ADODsDadosnr_entrada: TIntegerField
      FieldName = 'nr_entrada'
    end
    object ADODsDadoscd_emitente: TIntegerField
      FieldName = 'cd_emitente'
    end
    object ADODsDadosnm_emitente: TStringField
      FieldName = 'nm_emitente'
      Size = 50
    end
    object ADODsDadoscd_serie: TStringField
      FieldName = 'cd_serie'
      Size = 3
    end
    object ADODsDadosnr_fatura: TIntegerField
      FieldName = 'nr_fatura'
    end
    object ADODsDadoscd_cfop: TStringField
      FieldName = 'cd_cfop'
      FixedChar = True
      Size = 4
    end
    object ADODsDadosds_cfop: TStringField
      FieldName = 'ds_cfop'
      Size = 50
    end
    object ADODsDadosdt_emissao: TDateTimeField
      FieldName = 'dt_emissao'
    end
    object ADODsDadosdt_lancamento: TDateTimeField
      FieldName = 'dt_lancamento'
    end
    object ADODsDadosvl_baseicms: TBCDField
      FieldName = 'vl_baseicms'
      Precision = 12
      Size = 2
    end
    object ADODsDadospr_icms: TBCDField
      FieldName = 'pr_icms'
      Precision = 9
      Size = 2
    end
    object ADODsDadosvl_icms: TBCDField
      FieldName = 'vl_icms'
      Precision = 12
      Size = 2
    end
    object ADODsDadosvl_produto: TBCDField
      FieldName = 'vl_produto'
      Precision = 12
      Size = 2
    end
    object ADODsDadosvl_frete: TBCDField
      FieldName = 'vl_frete'
      Precision = 12
      Size = 2
    end
    object ADODsDadosvl_ipi: TBCDField
      FieldName = 'vl_ipi'
      Precision = 12
      Size = 2
    end
    object ADODsDadosvl_nota: TBCDField
      FieldName = 'vl_nota'
      Precision = 12
      Size = 2
    end
    object ADODsDadosps_nota: TBCDField
      FieldName = 'ps_nota'
      Precision = 12
      Size = 3
    end
    object ADODsDadosnr_pagar: TIntegerField
      FieldName = 'nr_pagar'
    end
    object ADODsDadosst_entrada: TStringField
      FieldName = 'st_entrada'
      FixedChar = True
      Size = 1
    end
    object ADODsDadosvl_basesubst: TBCDField
      FieldName = 'vl_basesubst'
      Precision = 12
      Size = 2
    end
    object ADODsDadosvl_substituicao: TBCDField
      FieldName = 'vl_substituicao'
      Precision = 12
      Size = 2
    end
    object ADODsDadosvl_seguro: TBCDField
      FieldName = 'vl_seguro'
      Precision = 12
      Size = 2
    end
    object ADODsDadosvl_despesa: TBCDField
      FieldName = 'vl_despesa'
      Precision = 12
      Size = 2
    end
    object ADODsDadoscd_transportador: TSmallintField
      FieldName = 'cd_transportador'
    end
    object ADODsDadosnm_transportador: TStringField
      FieldName = 'nm_transportador'
      Size = 50
    end
    object ADODsDadosds_quantidade: TStringField
      FieldName = 'ds_quantidade'
    end
    object ADODsDadosds_especie: TStringField
      FieldName = 'ds_especie'
    end
    object ADODsDadosds_marca: TStringField
      FieldName = 'ds_marca'
    end
    object ADODsDadosMm_Observacao: TMemoField
      FieldName = 'Mm_Observacao'
      BlobType = ftMemo
    end
    object ADODsDadosMm_Nota: TMemoField
      FieldName = 'Mm_Nota'
      BlobType = ftMemo
    end
    object ADODsDadosFl_Frete: TStringField
      FieldName = 'Fl_Frete'
      FixedChar = True
      Size = 1
    end
    object ADODsDadosCd_ModeloFiscal: TStringField
      FieldName = 'Cd_ModeloFiscal'
      FixedChar = True
      Size = 2
    end
    object ADODsDadosPs_Liquido: TBCDField
      FieldName = 'Ps_Liquido'
      Precision = 12
      Size = 3
    end
    object ADODsDadosVl_Desconto: TBCDField
      FieldName = 'Vl_Desconto'
      Precision = 12
      Size = 3
    end
    object ADODsDadosFl_Emitente: TStringField
      FieldName = 'Fl_Emitente'
      FixedChar = True
      Size = 1
    end
    object ADODsDadosNr_Placa: TStringField
      FieldName = 'Nr_Placa'
      Size = 7
    end
    object ADODsDadosNm_Fantasia: TStringField
      FieldName = 'Nm_Fantasia'
      Size = 30
    end
    object ADODsDadosDp_Emitente: TStringField
      FieldKind = fkCalculated
      FieldName = 'Dp_Emitente'
      Size = 83
      Calculated = True
    end
    object ADODsDadosVl_PIS: TBCDField
      FieldName = 'Vl_PIS'
      Precision = 18
      Size = 3
    end
    object ADODsDadosVl_Cofins: TBCDField
      FieldName = 'Vl_Cofins'
      Precision = 18
      Size = 3
    end
    object ADODsDadosNr_chNFe: TStringField
      FieldName = 'Nr_chNFe'
      Size = 255
    end
    object ADODsDadosNr_CupomFiscal: TIntegerField
      FieldName = 'Nr_CupomFiscal'
    end
    object ADODsDadosFl_ConFinal: TStringField
      FieldName = 'Fl_ConFinal'
      FixedChar = True
      Size = 1
    end
    object ADODsDadosfinNFe: TStringField
      FieldName = 'finNFe'
      FixedChar = True
      Size = 1
    end
    object ADODsDadosnatOp: TStringField
      FieldName = 'natOp'
      Size = 60
    end
  end
  object ADOCmdDados: TMultADOCMD
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLInsert.Strings = (
      'insert into Entrada( Cd_Filial, Nr_Entrada, Cd_Emitente, Cd_Serie, Nr_Fatura,'
      '  Cd_CFOP, Dt_Emissao, Dt_Lancamento, Vl_BaseICMS, Pr_ICMS,'
      '  Vl_ICMS, Vl_Produto, Vl_Frete, Vl_IPI, Vl_Nota, Ps_Nota, Mm_Observacao,'
      '  St_Entrada, Vl_BaseSubst, Vl_Substituicao, Vl_Seguro, Vl_Despesa,'
      '  Ds_Quantidade, Ds_Especie, Ds_Marca, Cd_Transportador, Mm_Nota, Fl_Frete,'
      '  Cd_ModeloFiscal, Ps_Liquido, Vl_Desconto, Fl_Emitente, Nr_Placa, Vl_Pis,'
      '  Vl_Cofins, Mm_NFe, Nr_chNFe, Nr_CupomFiscal, Fl_ConFinal, finNFe, natOp )'
      ''
      'values( :Cd_Filial, :Nr_Entrada, :Cd_Emitente, :Cd_Serie, :Nr_Fatura,'
      '  :Cd_CFOP, :Dt_Emissao, :Dt_Lancamento, :Vl_BaseICMS, :Pr_ICMS,'
      '  :Vl_ICMS, :Vl_Produto, :Vl_Frete, :Vl_IPI, :Vl_Nota, :Ps_Nota, :Mm_Observacao,'
      '  ''''1'''', :Vl_BaseSubst, :Vl_Substituicao, :Vl_Seguro, :Vl_Despesa, :Ds_Quantidade,'
      '  :Ds_Especie, :Ds_Marca, :Cd_Transportador, :Mm_Nota, :Fl_Frete,'
      '  :Cd_ModeloFiscal, :Ps_Liquido, :Vl_Desconto, :Fl_Emitente, :Nr_Placa,'
      '  :Vl_Pis, :Vl_Cofins, :Mm_NFe, :Nr_chNFe, :Nr_CupomFiscal, :Fl_ConFinal, :finNFe, :natOp )'
    )
    SQLUpdate.Strings = (
      'update'
      '  Entrada'
      '  '
      'set'
      '  Cd_Emitente      = :Cd_Emitente,'
      '  Cd_Serie         = :Cd_Serie,'
      '  Nr_Fatura        = :Nr_Fatura,'
      '  Cd_CFOP          = :Cd_CFOP,'
      '  Dt_Emissao       = :Dt_Emissao,'
      '  Dt_Lancamento    = :Dt_Lancamento,'
      '  Vl_BaseICMS      = :Vl_BaseICMS,'
      '  Pr_ICMS          = :Pr_ICMS,'
      '  Vl_ICMS          = :Vl_ICMS,'
      '  Vl_Produto       = :Vl_Produto,'
      '  Vl_Frete         = :Vl_Frete,'
      '  Vl_IPI           = :Vl_IPI,'
      '  Vl_Nota          = :Vl_Nota,'
      '  Ps_Nota          = :Ps_Nota,'
      '  Vl_BaseSubst     = :Vl_BaseSubst,'
      '  Vl_Substituicao  = :Vl_Substituicao,'
      '  Vl_Seguro        = :Vl_Seguro,'
      '  Vl_Despesa       = :Vl_Despesa,'
      '  Ds_Quantidade    = :Ds_Quantidade,'
      '  Ds_Especie       = :Ds_Especie,'
      '  Ds_Marca         = :Ds_Marca,'
      '  Cd_Transportador = :Cd_Transportador,'
      '  Mm_Observacao    = :Mm_Observacao,'
      '  Mm_Nota          = :Mm_Nota,'
      '  Fl_Frete         = :Fl_Frete,'
      '  Cd_ModeloFiscal  = :Cd_ModeloFiscal,'
      '  Ps_Liquido       = :Ps_Liquido,'
      '  Vl_Desconto      = :Vl_Desconto,'
      '  Fl_Emitente      = :Fl_Emitente,'
      '  Nr_Placa         = :Nr_Placa,'
      '  Vl_Pis           = :Vl_Pis,'
      '  Vl_Cofins        = :Vl_Cofins,'
      '  Nr_chNFe         = :Nr_chNFe,'
      '  Nr_CupomFiscal   = :Nr_CupomFiscal,'
      '  Fl_ConFinal      = :Fl_ConFinal,'
      '  finNFe           = :finNFe,'
      '  natOp            = :natOp'
      ''
      'where'
      '  Cd_Filial  = :Cd_Filial and'
      '  Nr_Entrada = :Nr_Entrada'
    )
    SQLDelete.Strings = (
      'delete from'
      '  Entrada'
      ''
      'where'
      '  Cd_Filial  = :Cd_Filial and'
      '  Nr_Entrada = :Nr_Entrada'
    )
    SQLOther0.Strings = (
      'update'
      '  Entrada'
      ''
      'set'
      '  St_Entrada = :St_Entrada'
      ''
      'where'
      '  Cd_Filial  = :Cd_Filial and'
      '  Nr_Entrada = :Nr_Entrada'
    )
    SQLOther1.Strings = (
      'delete from'
      '  Entrada_Item'
      ''
      'where'
      '  Cd_Filial  = :Cd_Filial and'
      '  Nr_Entrada = :Nr_Entrada and'
      '  Nr_Item    = :Nr_Item'
    )
    SQLOther2.Strings = (
      'execute Entrada_Estoque :Cd_Filial, :Nr_Entrada, :St_Entrada, '
      '  :St_Antiga, :Cd_Tabela '
    )
    SQLOther3.Strings = (
      '--------------- Atualizar somente o pre'#231'o de custo da mercadoria'
      'declare'
      '  @Cd_Tabela VarChar( 10 )'
      ''
      'set'
      '  @Cd_Tabela = :Cd_Tabela'
      ''
      'update'
      '  Produto_Preco'
      ''
      'set'
      '  Vl_Custo = EI.Vl_Unitario / Coalesce( PU.Nr_Fator, 1.0 )'
      ''
      'from'
      '  Entrada_Item EI'
      ''
      'inner join'
      '  Produto_Preco PP'
      'on'
      '  PP.Cd_Tabela  = @Cd_Tabela and'
      '  PP.Cd_Produto = EI.Cd_Produto'
      ''
      'left join'
      '  Produto_Unidade PU'
      'on'
      '  PU.Cd_Produto = EI.Cd_Produto and'
      '  PU.Sg_Unidade = EI.Sg_Unidade'
      ''
      'where'
      '  EI.Cd_Filial  = :Cd_Filial and'
      '  Ei.Nr_Entrada = :Nr_Entrada'
    )
    SQLOther4.Strings = (
      '--------------- Entrada importada da Sa'#237'da'
      'declare'
      '  @Cd_Filial SmallInt'
      ''
      'set @Cd_Filial = :Cd_Filial'
      ''
      'insert into Entrada_Item( Cd_Filial, Nr_Entrada, Nr_Item, Cd_Produto,'
      '   Sg_Unidade, Qt_Item, Qt_Estoque, Vl_Unitario, Nr_Lote, Dt_Fabricacao,'
      '   Dt_Validade, Pr_Desconto, Pr_ICMS, Vl_ICMS, Pr_IPI, Vl_IPI, Nm_Produto,'
      '   Cd_CST, Cd_CFOP, Fl_Inventario, Pr_PIS, Vl_Pis, Pr_Cofins, Vl_Cofins,'
      '   Pr_MVA, Cd_Tributacao )'
      ''
      'select'
      '  @Cd_Filial, :Nr_Entrada, SI.Nr_Item, SI.Cd_Produto,'
      '  SI.Sg_Unidade, SI.Qt_Item, SI.Qt_Estoque, SI.Vl_Unitario, SI.Nr_Lote, SI.Dt_Fabricacao,'
      '  SI.Dt_Validade, 0 as Pr_Desconto, SI.Pr_ICMS, 0 as Vl_ICMS, SI.Pr_IPI, 0 as Vl_IPI,'
      '  SI.Nm_Produto, T.Cd_CST as Cd_CST, T.Cd_CFOPDentro, IsNull( CF.Fl_Inventario, ''''0'''' ), T.Pr_PIS,'
      '  0 as Vl_Pis, T.Pr_Cofins, null as Vl_Cofins, null as Pr_MVA, SI.Cd_Tributacao'
      ''
      'from'
      '  Saida S'
      ''
      'inner join'
      '  Saida_Item SI'
      'on'
      '  SI.Cd_Filial = S.Cd_Filial and'
      '  SI.Nr_Saida  = S.Nr_Saida'
      ''
      'left join'
      '  Tributacao T'
      'on'
      '  T.Cd_Tributacao = SI.Cd_Tributacao'
      ''
      'left join'
      '  CFOP CF'
      'on'
      '  CF.Cd_CFOP = T.Cd_CFOPDentro'
      ''
      'where'
      '  S.Cd_Filial = :Cd_FilialSaida and'
      '  S.Nr_Saida  = :Nr_Saida'
    )
    Left = 460
    Top = 403
  end
  object ADODsNavegar: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = '-- First'#13#10'select top 1'#13#10'  Nr_Entrada'#13#10#13#10'from'#13#10'  Entrada'#13#10#13#10'where'#13#10'  Cd_Filial = :Cd_Filial'#13#10#13#10'order by'#13#10'  Nr_Entrada'#13#10
    Parameters = <
      item
        Name = 'Cd_Filial'
        DataType = ftSmallint
        Size = -1
        Value = nil?
      end>
    SQLPrimary.Strings = (
      'select'
      '  max( A.Nr_Entrada ) + 1 as Nr_Entrada'
      ''
      'from'
      '  Entrada A'
      ''
      'where'
      '  Cd_Filial = :Cd_Filial'
    )
    SQLOther0.Strings = (
      '-- First'
      'select top 1'
      '  Nr_Entrada'
      ''
      'from'
      '  Entrada'
      ''
      'where'
      '  Cd_Filial = :Cd_Filial'
      ''
      'order by'
      '  Nr_Entrada'
    )
    SQLOther1.Strings = (
      '-- Prior'
      'select top 1'
      '  Nr_Entrada'
      ''
      'from'
      '  Entrada'
      ''
      'where'
      '  Cd_Filial  = :Cd_Filial and'
      '  Nr_Entrada < :Nr_Entrada'
      ''
      'order by'
      '  Nr_Entrada desc'
    )
    SQLOther2.Strings = (
      '-- Next'
      'select top 1'
      '  Nr_Entrada'
      ''
      'from'
      '  Entrada'
      ''
      'where'
      '  Cd_Filial  = :Cd_Filial and'
      '  Nr_Entrada > :Nr_Entrada'
      ''
      'order by'
      '  Nr_Entrada'
    )
    SQLOther3.Strings = (
      '-- Last'
      'select top 1'
      '  Nr_Entrada'
      ''
      'from'
      '  Entrada'
      ''
      'where'
      '  Cd_Filial = :Cd_Filial'
      ''
      'order by'
      '  Nr_Entrada desc'
    )
    SQLOther4.Strings = (
      '-- Verifica se ja digitou a fatura do cliente'
      'select'
      '  Nr_Entrada'
      ''
      'from'
      '  Entrada'
      ''
      'where'
      '  Cd_Filial   = :Cd_Filial and'
      '  Cd_Emitente = :Cd_Emitente and'
      '  Nr_Fatura   = :Nr_Fatura'
    )
    SQLOther5.Strings = (
      '--------------- Verifica se tem NFe para processamento'
      'select '
      '  Nr_Origem as Nr_Entrada'
      ''
      'from'
      '  NFe'
      ''
      'where'
      '  Cd_Filial = :Cd_Filial and'
      '  Fl_Origem = ''''3'''' and'
      '  Nr_Origem = :Nr_Entrada'
    )
    Left = 490
    Top = 403
    object ADODsNavegarnr_entrada: TIntegerField
      FieldName = 'nr_entrada'
    end
  end
  object DsReport: TDataSource
    DataSet = ADODsDados
    Left = 402
    Top = 403
  end
  object ADODsProduto: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    OnCalcFields = ADODsProdutoCalcFields
    CommandText = '--------------- Itens da Entrada'#13#10'select'#13#10'  A.Cd_Filial, A.Nr_Entrada, A.Nr_Item, A.Cd_Produto,'#13#10'  case'#13#10'    when A.Cd_Produto is null or ( B.Nm_Produto <> A.Nm_Produto ) then A.Nm_Produto'#13#10'    else B.Nm_Produto'#13#10'  end as Nm_Produto, A.Sg_Unidade,'#13#10'  B.Sg_Estoque, A.Qt_Item, A.Qt_Estoque, A.Vl_Unitario, B.Fl_Lote,'#13#10'  A.Nr_Lote, A.Dt_Fabricacao, A.Dt_Validade, PF.Cd_Produto_Emitente,'#13#10'  dbo.SGRound( ( A.Vl_Unitario -'#13#10'    case'#13#10'      when A.Pr_Desconto = 0 then 0'#13#10'      else A.Vl_Unitario / 100.0 * A.Pr_Desconto'#13#10'    end ) * A.Qt_Item ) as Vl_Total, A.Pr_Desconto,'#13#10'  A.Pr_ICMS, A.Vl_ICMS, A.Pr_IPI, A.Vl_IPI, A.Cd_CST,'#13#10'  A.Cd_CFOP, CF.Ds_CFOP, A.Fl_Inventario,'#13#10'  A.Pr_Pis, A.Vl_Pis,'#13#10'  A.Pr_Cofins, A.Vl_Cofins, B.Cd_Barra, B.Cd_Fabricante,'#13#10'  L.Nm_Laboratorio, A.Pr_MVA, Loc.Ds_Localizacao,'#13#10#13#10'  A.Cd_Tributacao, T.Ds_Tributacao,'#13#10#13#10'  PP.Vl_Venda * IsNull( PU.Nr_Fator, 1.0 ) as Vl_Venda'#13#10#13#10'from'#13#10'  Entrada_Item A'#13#10#13#10'left join'#13#10'  Produto B'#13#10'on'#13#10'  B.Cd_Produto = A.Cd_Produto'#13#10#13#10'left join'#13#10'  Produto_Fornecedor PF'#13#10'on'#13#10'  PF.Cd_Produto  = B.Cd_Produto and'#13#10'  PF.Cd_Emitente = :Cd_Emitente'#13#10#13#10'left join'#13#10'  CFOP CF'#13#10'on'#13#10'  CF.Cd_CFOP = A.Cd_CFOP'#13#10#13#10'left join'#13#10'  Laboratorio L'#13#10'on'#13#10'  L.Cd_Laboratorio = B.Cd_Laboratorio'#13#10#13#10'left join'#13#10'  Localizacao Loc'#13#10'on'#13#10'  Loc.Cd_Localizacao = B.Cd_Localizacao'#13#10#13#10'left join'#13#10'  Tributacao T'#13#10'on'#13#10'  T.Cd_Tributacao = A.Cd_Tributacao'#13#10#13#10'left join'#13#10'  Produto_Unidade PU'#13#10'on'#13#10'  PU.Cd_Produto = A.Cd_Produto and'#13#10'  PU.Sg_Unidade = B.Sg_Venda'#13#10#13#10'left join'#13#10'  Produto_Preco PP'#13#10'on'#13#10'  PP.Cd_Tabela  = :Cd_Tabela and'#13#10'  PP.Cd_Produto = A.Cd_Produto'#13#10#13#10'where'#13#10'  A.Cd_Filial   = :Cd_Filial and'#13#10'  A.Nr_Entrada = :Nr_Entrada'#13#10#13#10'order by'#13#10'  A.Cd_Filial, A.Nr_Entrada, A.Nr_Item'
    Parameters = <
      item
        Name = 'Cd_Emitente'
        DataType = ftInteger
        Size = -1
        Value = 1
      end
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
        Value = 21
      end
      item
        Name = 'Nr_Entrada'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 1
      end>
    SQLOther0.Strings = (
      '--------------- Itens da Entrada'
      'select'
      '  A.Cd_Filial, A.Nr_Entrada, A.Nr_Item, A.Cd_Produto,'
      '  case'
      '    when A.Cd_Produto is null or ( B.Nm_Produto <> A.Nm_Produto ) then A.Nm_Produto'
      '    else B.Nm_Produto'
      '  end as Nm_Produto, A.Sg_Unidade,'
      '  B.Sg_Estoque, A.Qt_Item, A.Qt_Estoque, A.Vl_Unitario, B.Fl_Lote,'
      '  A.Nr_Lote, A.Dt_Fabricacao, A.Dt_Validade, PF.Cd_Produto_Emitente,'
      '  dbo.SGRound( ( A.Vl_Unitario -'
      '    case'
      '      when A.Pr_Desconto = 0 then 0'
      '      else A.Vl_Unitario / 100.0 * A.Pr_Desconto'
      '    end ) * A.Qt_Item ) as Vl_Total, A.Pr_Desconto,'
      '  A.Pr_ICMS, A.Vl_ICMS, A.Pr_IPI, A.Vl_IPI, A.Cd_CST,'
      '  A.Cd_CFOP, CF.Ds_CFOP, A.Fl_Inventario,'
      '  A.Pr_Pis, A.Vl_Pis,'
      '  A.Pr_Cofins, A.Vl_Cofins, B.Cd_Barra, B.Cd_Fabricante,'
      '  L.Nm_Laboratorio, A.Pr_MVA, Loc.Ds_Localizacao,'
      ''
      '  A.Cd_Tributacao, T.Ds_Tributacao,'
      ''
      '  PP.Vl_Venda * IsNull( PU.Nr_Fator, 1.0 ) as Vl_Venda'
      ''
      'from'
      '  Entrada_Item A'
      ''
      'left join'
      '  Produto B'
      'on'
      '  B.Cd_Produto = A.Cd_Produto'
      ''
      'left join'
      '  Produto_Fornecedor PF'
      'on'
      '  PF.Cd_Produto  = B.Cd_Produto and'
      '  PF.Cd_Emitente = :Cd_Emitente'
      ''
      'left join'
      '  CFOP CF'
      'on'
      '  CF.Cd_CFOP = A.Cd_CFOP'
      ''
      'left join'
      '  Laboratorio L'
      'on'
      '  L.Cd_Laboratorio = B.Cd_Laboratorio'
      ''
      'left join'
      '  Localizacao Loc'
      'on'
      '  Loc.Cd_Localizacao = B.Cd_Localizacao'
      ''
      'left join'
      '  Tributacao T'
      'on'
      '  T.Cd_Tributacao = A.Cd_Tributacao'
      ''
      'left join'
      '  Produto_Unidade PU'
      'on'
      '  PU.Cd_Produto = A.Cd_Produto and'
      '  PU.Sg_Unidade = B.Sg_Venda'
      ''
      'left join'
      '  Produto_Preco PP'
      'on'
      '  PP.Cd_Tabela  = :Cd_Tabela and'
      '  PP.Cd_Produto = A.Cd_Produto'
      ''
      'where'
      '  A.Cd_Filial   = :Cd_Filial and'
      '  A.Nr_Entrada = :Nr_Entrada'
      ''
      'order by'
      '  A.Cd_Filial, A.Nr_Entrada, A.Nr_Item'
    )
    SQLOther1.Strings = (
      '--------------- Relatorio de Entrada - 22/08/2013'
      'select'
      '  A.Cd_Filial, A.Nr_Entrada, A.Nr_Item, A.Cd_Produto, '
      '  case '
      '    when A.Cd_Produto is null or ( B.Nm_Produto <> A.Nm_Produto ) then A.Nm_Produto '
      '    else B.Nm_Produto '
      '  end as Nm_Produto, A.Sg_Unidade,'
      '  B.Sg_Estoque, A.Qt_Item, A.Qt_Estoque, A.Vl_Unitario, B.Fl_Lote,'
      '  A.Nr_Lote, A.Dt_Fabricacao, A.Dt_Validade, PF.Cd_Produto_Emitente,'
      '  Round( ( A.Vl_Unitario -'
      '    case'
      '      when A.Pr_Desconto = 0 then 0'
      '      else A.Vl_Unitario / 100.0 * A.Pr_Desconto'
      '    end ) * A.Qt_Item, 2 ) as Vl_Total, A.Pr_Desconto,'
      '  A.Pr_ICMS, A.Vl_ICMS, A.Pr_IPI, A.Vl_IPI, A.Cd_CST,'
      '  A.Cd_CFOP, CF.Ds_CFOP, A.Fl_Inventario, '
      '  A.Pr_Pis, A.Vl_Pis,'
      '  A.Pr_Cofins, A.Vl_Cofins, B.Cd_Barra, B.Cd_Fabricante,'
      '  L.Nm_Laboratorio, A.Pr_MVA, Loc.Ds_Localizacao,'
      ''
      '  A.Cd_Tributacao, T.Ds_Tributacao,'
      ''
      '  PP.Vl_Venda * IsNull( PU.Nr_Fator, 1.0 ) as Vl_Venda'
      ''
      'from'
      '  Entrada_Item A'
      ''
      'left join'
      '  Produto B'
      'on'
      '  B.Cd_Produto = A.Cd_Produto'
      ''
      'left join'
      '  Produto_Fornecedor PF'
      'on'
      '  PF.Cd_Produto  = B.Cd_Produto and'
      '  PF.Cd_Emitente = :Cd_Emitente'
      ''
      'left join'
      '  CFOP CF'
      'on'
      '  CF.Cd_CFOP = A.Cd_CFOP'
      ''
      'left join'
      '  Laboratorio L'
      'on'
      '  L.Cd_Laboratorio = B.Cd_Laboratorio'
      ''
      'left join'
      '  Localizacao Loc'
      'on'
      '  Loc.Cd_Localizacao = B.Cd_Localizacao'
      ''
      'left join'
      '  Tributacao T'
      'on'
      '  T.Cd_Tributacao = A.Cd_Tributacao'
      ''
      'left join'
      '  Produto_Unidade PU'
      'on'
      '  PU.Cd_Produto = A.Cd_Produto and'
      '  PU.Sg_Unidade = B.Sg_Venda'
      ''
      'left join'
      '  Produto_Preco PP'
      'on'
      '  PP.Cd_Tabela  = :Cd_Tabela and'
      '  PP.Cd_Produto = A.Cd_Produto'
      ''
      'where'
      '  A.Cd_Filial  = :Cd_Filial and'
      '  A.Nr_Entrada = :Nr_Entrada'
      ''
      'order by'
      '  A.Cd_Filial, A.Nr_Entrada, Loc.Ds_Localizacao, A.Nr_Item'
    )
    Left = 551
    Top = 404
    object ADODsProdutoNr_Entrada: TIntegerField
      FieldName = 'Nr_Entrada'
    end
    object ADODsProdutoNr_Item: TSmallintField
      FieldName = 'Nr_Item'
    end
    object ADODsProdutoNm_Produto: TStringField
      DisplayLabel = 'Produto'
      FieldName = 'Nm_Produto'
      Size = 120
    end
    object ADODsProdutoSg_Unidade: TStringField
      DisplayLabel = 'Unid.'
      FieldName = 'Sg_Unidade'
      Size = 2
    end
    object ADODsProdutoSg_Estoque: TStringField
      FieldName = 'Sg_Estoque'
      Size = 2
    end
    object ADODsProdutoQt_Item: TBCDField
      DisplayLabel = 'Quantidade'
      DisplayWidth = 19
      FieldName = 'Qt_Item'
      DisplayFormat = '#,##0.0####'
      Precision = 18
      Size = 3
    end
    object ADODsProdutoQt_Estoque: TBCDField
      DisplayLabel = 'Estoque'
      FieldName = 'Qt_Estoque'
      DisplayFormat = '#,##0.0####'
      Precision = 18
      Size = 3
    end
    object ADODsProdutoVl_Total: TBCDField
      DisplayLabel = 'Total'
      FieldName = 'Vl_Total'
      ReadOnly = True
      DisplayFormat = '#,##0.00'
      Precision = 32
      Size = 6
    end
    object ADODsProdutofl_lote: TStringField
      FieldName = 'fl_lote'
      FixedChar = True
      Size = 1
    end
    object ADODsProdutonr_lote: TStringField
      FieldName = 'nr_lote'
      Size = 15
    end
    object ADODsProdutodt_fabricacao: TDateTimeField
      FieldName = 'dt_fabricacao'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object ADODsProdutodt_validade: TDateTimeField
      FieldName = 'dt_validade'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object ADODsProdutocd_produto: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'cd_produto'
    end
    object ADODsProdutocd_produto_emitente: TStringField
      DisplayLabel = 'Fornecedor'
      FieldName = 'cd_produto_emitente'
    end
    object ADODsProdutopr_desconto: TBCDField
      FieldName = 'pr_desconto'
      DisplayFormat = '#,##0.00'
      Precision = 7
      Size = 2
    end
    object ADODsProdutopr_icms: TBCDField
      FieldName = 'pr_icms'
      DisplayFormat = '#,##0.00'
      Precision = 7
      Size = 2
    end
    object ADODsProdutovl_icms: TBCDField
      FieldName = 'vl_icms'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 3
    end
    object ADODsProdutopr_ipi: TBCDField
      FieldName = 'pr_ipi'
      DisplayFormat = '#,##0.00'
      Precision = 7
      Size = 2
    end
    object ADODsProdutovl_ipi: TBCDField
      FieldName = 'vl_ipi'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 3
    end
    object ADODsProdutoCd_CST: TStringField
      DisplayLabel = 'CST'
      FieldName = 'Cd_CST'
      Size = 3
    end
    object ADODsProdutoCd_CFOP: TStringField
      DisplayLabel = 'CFOP'
      FieldName = 'Cd_CFOP'
      FixedChar = True
      Size = 4
    end
    object ADODsProdutoDs_CFOP: TStringField
      FieldName = 'Ds_CFOP'
      Size = 50
    end
    object ADODsProdutoFl_Inventario: TStringField
      FieldName = 'Fl_Inventario'
      FixedChar = True
      Size = 1
    end
    object ADODsProdutoDp_Inventario: TStringField
      FieldKind = fkCalculated
      FieldName = 'Dp_Inventario'
      Size = 35
      Calculated = True
    end
    object ADODsProdutoCd_Filial: TSmallintField
      FieldName = 'Cd_Filial'
    end
    object ADODsProdutoPr_Pis: TBCDField
      FieldName = 'Pr_Pis'
      Precision = 7
      Size = 2
    end
    object ADODsProdutoVl_Pis: TBCDField
      FieldName = 'Vl_Pis'
      Precision = 18
      Size = 3
    end
    object ADODsProdutoPr_Cofins: TBCDField
      FieldName = 'Pr_Cofins'
      Precision = 7
      Size = 2
    end
    object ADODsProdutoVl_Cofins: TBCDField
      FieldName = 'Vl_Cofins'
      Precision = 18
      Size = 3
    end
    object ADODsProdutoCd_Barra: TStringField
      FieldName = 'Cd_Barra'
    end
    object ADODsProdutoCd_Fabricante: TStringField
      FieldName = 'Cd_Fabricante'
    end
    object ADODsProdutonm_Laboratorio: TStringField
      FieldName = 'nm_Laboratorio'
      Size = 50
    end
    object ADODsProdutoVl_Unitario: TBCDField
      DisplayLabel = 'Unit'#225'rio'
      FieldName = 'Vl_Unitario'
      DisplayFormat = '#,##0.00###'
      Precision = 18
      Size = 5
    end
    object ADODsProdutoPr_MVA: TBCDField
      FieldName = 'Pr_MVA'
      DisplayFormat = '#,##0.00'
      Precision = 9
      Size = 2
    end
    object ADODsProdutoDs_Localizacao: TStringField
      FieldName = 'Ds_Localizacao'
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
      ReadOnly = True
      Precision = 31
      Size = 8
    end
  end
  object DsProduto: TDataSource
    DataSet = ADODsProduto
    Left = 522
    Top = 405
  end
  object ADODsTributacao: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'select'#13#10'  T.Cd_Entrada, TE.Ds_Tributacao as Ds_Entrada,'#13#10#13#10'  Cd_CST ='#13#10'    case'#13#10'      when E.Fl_Contribuinte = ''''1'''' then T.Cd_CST'#13#10'      else T.Cd_CST_NC'#13#10#13#10'    end,'#13#10#13#10'  Cd_CFOP ='#13#10'    case'#13#10'      when :Sg_Filial = C.Sg_Estado then T.Cd_CFOPDentro'#13#10'      else T.Cd_CFOPFora'#13#10#13#10'    end'#13#10#13#10'from'#13#10'  Produto P'#13#10#13#10'inner join'#13#10'  Tributacao T'#13#10'on'#13#10'  T.Cd_Tributacao = P.Cd_Tributacao'#13#10#13#10'inner join'#13#10'  Tributacao TE'#13#10'on'#13#10'  TE.Cd_Tributacao = T.Cd_Entrada'#13#10#13#10'inner join'#13#10'  Emitente E'#13#10'on '#13#10'  E.Cd_Emitente = :Cd_Emitente '#13#10#13#10'inner join'#13#10'  Emitente_Endereco EE'#13#10'on'#13#10'  EE.Cd_Emitente = E.Cd_Emitente and'#13#10'  EE.Nr_Endereco = E.Nr_Endereco '#13#10#13#10'inner join'#13#10'  Cidade C'#13#10'on'#13#10'  C.Cd_Cidade = EE.Cd_Cidade'#13#10#13#10'where'#13#10'  P.Cd_Produto = :Cd_Produto'
    Parameters = <
      item
        Name = 'Sg_Filial'
        DataType = ftString
        Size = 2
        Value = 'ES'
      end
      item
        Name = 'Cd_Emitente'
        DataType = ftInteger
        Size = -1
        Value = nil?
      end
      item
        Name = 'Cd_Produto'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = nil?
      end>
    Left = 288
    Top = 408
    object ADODsTributacaoCd_Entrada: TSmallintField
      FieldName = 'Cd_Entrada'
    end
    object ADODsTributacaoDs_Entrada: TStringField
      FieldName = 'Ds_Entrada'
      Size = 30
    end
    object ADODsTributacaoCd_CST: TStringField
      FieldName = 'Cd_CST'
      Size = 5
    end
    object ADODsTributacaoCd_CFOP: TStringField
      FieldName = 'Cd_CFOP'
      ReadOnly = True
      FixedChar = True
      Size = 4
    end
  end
  object ADODsSaida: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    OnCalcFields = ADODsDadosCalcFields
    CommandText = 'select'#13#10'  A.Nr_Saida, A.Cd_Emitente, B.Nm_Emitente, A.Cd_Serie, A.Nr_Fatura,'#13#10'  A.Cd_CFOP, D.Ds_CFOP, A.Dt_Emissao, A.St_Saida,'#13#10'  A.Dt_Lancamento, A.Vl_BaseICMS, A.Pr_ICMS, A.Vl_ICMS, A.Vl_Produto,'#13#10'  A.Vl_Frete, A.Vl_IPI, A.Vl_Nota, A.Ps_Nota, A.Mm_Observacao,'#13#10'  B.Fl_Contribuinte, C.Sg_Estado, A.Vl_BaseSubst, A.Vl_Substituicao,'#13#10'  A.Vl_Seguro, A.Vl_Despesa, A.Cd_Transportador, T.Nm_Transportador,'#13#10'  A.Ds_Quantidade, A.Ds_Especie, A.Ds_Marca, A.Mm_Nota, A.Fl_Frete,'#13#10'  A.Cd_ModeloFiscal, A.Ps_Liquido, A.Vl_Desconto, A.Nr_Placa, B.Nm_Fantasia,'#13#10'  A.refNFe, A.Nr_ECF'#13#10#13#10'from'#13#10'  Saida A'#13#10#13#10'inner join'#13#10'  Emitente B'#13#10'on'#13#10'  B.Cd_Emitente = A.Cd_Emitente'#13#10#13#10'left join'#13#10'  CFOP D'#13#10'on'#13#10'  D.Cd_CFOP = A.Cd_CFOP'#13#10#13#10'left join'#13#10'  Emitente_Endereco EE'#13#10'on'#13#10'  EE.Cd_Emitente = A.Cd_Emitente and'#13#10'  EE.Nr_Endereco = B.Nr_Endereco'#13#10#13#10'left join'#13#10'  Cidade C'#13#10'on'#13#10'  C.Cd_Cidade = EE.Cd_Cidade'#13#10#13#10'left join'#13#10'  Transportador T'#13#10'on'#13#10'  T.Cd_Transportador = A.Cd_Transportador'#13#10#13#10'where'#13#10'  A.Cd_Filial = :Cd_Filial and'#13#10'  A.Nr_Saida  = :Nr_Saida'
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
        Name = 'Nr_Saida'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = nil?
      end>
    Left = 671
    Top = 2
    object ADODsSaidaNr_Saida: TIntegerField
      FieldName = 'Nr_Saida'
    end
    object ADODsSaidaCd_Emitente: TIntegerField
      FieldName = 'Cd_Emitente'
    end
    object ADODsSaidaNm_Emitente: TStringField
      FieldName = 'Nm_Emitente'
      Size = 50
    end
    object ADODsSaidaCd_Serie: TStringField
      FieldName = 'Cd_Serie'
      Size = 3
    end
    object ADODsSaidaNr_Fatura: TIntegerField
      FieldName = 'Nr_Fatura'
    end
    object ADODsSaidaCd_CFOP: TStringField
      FieldName = 'Cd_CFOP'
      FixedChar = True
      Size = 4
    end
    object ADODsSaidaDs_CFOP: TStringField
      FieldName = 'Ds_CFOP'
      Size = 50
    end
    object ADODsSaidaDt_Emissao: TDateTimeField
      FieldName = 'Dt_Emissao'
    end
    object ADODsSaidaSt_Saida: TStringField
      FieldName = 'St_Saida'
      FixedChar = True
      Size = 1
    end
    object ADODsSaidaDt_Lancamento: TDateTimeField
      FieldName = 'Dt_Lancamento'
    end
    object ADODsSaidaVl_BaseICMS: TBCDField
      FieldName = 'Vl_BaseICMS'
      Precision = 12
      Size = 2
    end
    object ADODsSaidaPr_ICMS: TBCDField
      FieldName = 'Pr_ICMS'
      Precision = 9
      Size = 2
    end
    object ADODsSaidaVl_ICMS: TBCDField
      FieldName = 'Vl_ICMS'
      Precision = 12
      Size = 2
    end
    object ADODsSaidaVl_Frete: TBCDField
      FieldName = 'Vl_Frete'
      Precision = 12
      Size = 2
    end
    object ADODsSaidaVl_Produto: TBCDField
      FieldName = 'Vl_Produto'
      Precision = 12
      Size = 2
    end
    object ADODsSaidaVl_IPI: TBCDField
      FieldName = 'Vl_IPI'
      Precision = 12
      Size = 2
    end
    object ADODsSaidaVl_Nota: TBCDField
      FieldName = 'Vl_Nota'
      Precision = 12
      Size = 2
    end
    object ADODsSaidaPs_Nota: TBCDField
      FieldName = 'Ps_Nota'
      Precision = 12
      Size = 3
    end
    object ADODsSaidaMm_Observacao: TMemoField
      FieldName = 'Mm_Observacao'
      BlobType = ftMemo
    end
    object ADODsSaidaFl_Contribuinte: TStringField
      FieldName = 'Fl_Contribuinte'
      FixedChar = True
      Size = 1
    end
    object ADODsSaidaSg_Estado: TStringField
      FieldName = 'Sg_Estado'
      FixedChar = True
      Size = 2
    end
    object ADODsSaidaVl_BaseSubst: TBCDField
      FieldName = 'Vl_BaseSubst'
      Precision = 12
      Size = 2
    end
    object ADODsSaidaVl_Substituicao: TBCDField
      FieldName = 'Vl_Substituicao'
      Precision = 12
      Size = 2
    end
    object ADODsSaidaVl_Seguro: TBCDField
      FieldName = 'Vl_Seguro'
      Precision = 12
      Size = 2
    end
    object ADODsSaidaVl_Despesa: TBCDField
      FieldName = 'Vl_Despesa'
      Precision = 12
      Size = 2
    end
    object ADODsSaidaCd_Transportador: TSmallintField
      FieldName = 'Cd_Transportador'
    end
    object ADODsSaidaNm_Transportador: TStringField
      FieldName = 'Nm_Transportador'
      Size = 50
    end
    object ADODsSaidaDs_Quantidade: TStringField
      FieldName = 'Ds_Quantidade'
    end
    object ADODsSaidaDs_Especie: TStringField
      FieldName = 'Ds_Especie'
    end
    object ADODsSaidaDs_Marca: TStringField
      FieldName = 'Ds_Marca'
    end
    object ADODsSaidaMm_Nota: TMemoField
      FieldName = 'Mm_Nota'
      BlobType = ftMemo
    end
    object ADODsSaidaFl_Frete: TStringField
      FieldName = 'Fl_Frete'
      FixedChar = True
      Size = 1
    end
    object ADODsSaidaPs_Liquido: TBCDField
      FieldName = 'Ps_Liquido'
      Precision = 12
      Size = 3
    end
    object ADODsSaidaCd_ModeloFiscal: TStringField
      FieldName = 'Cd_ModeloFiscal'
      FixedChar = True
      Size = 2
    end
    object ADODsSaidaVl_Desconto: TBCDField
      FieldName = 'Vl_Desconto'
      Precision = 12
      Size = 3
    end
    object ADODsSaidaNr_Placa: TStringField
      FieldName = 'Nr_Placa'
      Size = 7
    end
    object ADODsSaidaNm_Fantasia: TStringField
      FieldName = 'Nm_Fantasia'
      Size = 30
    end
    object ADODsSaidarefNFe: TStringField
      FieldName = 'refNFe'
      Size = 44
    end
    object ADODsSaidaNr_ECF: TIntegerField
      FieldName = 'Nr_ECF'
    end
  end
end
