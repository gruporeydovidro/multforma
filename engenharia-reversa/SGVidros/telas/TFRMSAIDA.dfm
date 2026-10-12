object FrmSaida: TFrmSaida
  Left = 323
  Top = 240
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Sa'#237'da no Estoque'
  ClientHeight = 538
  ClientWidth = 922
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
  PixelsPerInch = 96
  TextHeight = 13
  object PnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 21
    Height = 538
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 901
    Height = 538
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 3
      Top = 506
      Width = 894
      Height = 5
      Shape = bsTopLine
    end
    object LblEmitente: TLabel
      Left = 6
      Top = 516
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
      Width = 899
      Height = 26
      Align = alTop
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 0
      object PnlDatabase: TPanel
        Left = 0
        Top = 0
        Width = 899
        Height = 26
        Align = alClient
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 0
        object ActToolBDatabase: TActionToolBar
          Left = 0
          Top = 0
          Width = 899
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
      Left = 728
      Top = 511
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 1
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 482 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 814
      Top = 511
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 2
      OnClick = BitBtnCancelClick
      Glyph.Data = {binary 482 bytes}
      NumGlyphs = 2
    end
    object PgCSaida: TPageControl
      Left = 6
      Top = 33
      Width = 888
      Height = 471
      ActivePage = TabSSaida
      TabOrder = 3
      OnChange = PgCSaidaChange
      object TabSSaida: TTabSheet
        Caption = '                    Dados da Sa'#237'da                    '
        object Label1: TLabel
          Left = 4
          Top = 2
          Width = 47
          Height = 13
          Caption = 'Sa'#237'da N'#186':'
        end
        object Label10: TLabel
          Left = 181
          Top = 1
          Width = 35
          Height = 13
          Caption = 'Cliente:'
        end
        object SbEmitente: TSpeedButton
          Left = 231
          Top = 16
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
          Left = 4
          Top = 73
          Width = 27
          Height = 13
          Caption = 'S'#233'rie:'
        end
        object Label3: TLabel
          Left = 36
          Top = 73
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
          Left = 101
          Top = 73
          Width = 42
          Height = 13
          Caption = 'Emiss'#227'o:'
        end
        object Label7: TLabel
          Left = 196
          Top = 73
          Width = 62
          Height = 13
          Caption = 'Lan'#231'amento:'
        end
        object Label14: TLabel
          Left = 4
          Top = 107
          Width = 71
          Height = 13
          Caption = 'Base de ICMS:'
        end
        object Label8: TLabel
          Left = 89
          Top = 107
          Width = 41
          Height = 13
          Caption = 'Aliquota:'
        end
        object Label9: TLabel
          Left = 134
          Top = 107
          Width = 29
          Height = 13
          Caption = 'ICMS:'
        end
        object Label11: TLabel
          Left = 418
          Top = 107
          Width = 67
          Height = 13
          Caption = 'Valor Produto:'
        end
        object Label12: TLabel
          Left = 503
          Top = 107
          Width = 27
          Height = 13
          Caption = 'Frete:'
        end
        object Label13: TLabel
          Left = 174
          Top = 143
          Width = 16
          Height = 13
          Caption = 'IPI:'
        end
        object Label15: TLabel
          Left = 342
          Top = 143
          Width = 27
          Height = 13
          Caption = 'Total:'
        end
        object Label16: TLabel
          Left = 426
          Top = 143
          Width = 55
          Height = 13
          Caption = 'Peso Bruto:'
        end
        object Label4: TLabel
          Left = 4
          Top = 248
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
          Top = 107
          Width = 103
          Height = 13
          Caption = 'Base de Substitui'#231#227'o:'
        end
        object Label20: TLabel
          Left = 326
          Top = 107
          Width = 88
          Height = 13
          Caption = 'Valor Substitui'#231#227'o:'
        end
        object Label21: TLabel
          Left = 4
          Top = 143
          Width = 37
          Height = 13
          Caption = 'Seguro:'
        end
        object Label22: TLabel
          Left = 89
          Top = 143
          Width = 45
          Height = 13
          Caption = 'Despesa:'
        end
        object Label23: TLabel
          Left = 4
          Top = 212
          Width = 69
          Height = 13
          Caption = 'Transportador:'
        end
        object SbTransportador: TSpeedButton
          Left = 53
          Top = 227
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
          Left = 442
          Top = 248
          Width = 146
          Height = 13
          Caption = 'Observa'#231#245'es para Nota Fiscal:'
        end
        object Label25: TLabel
          Left = 390
          Top = 212
          Width = 75
          Height = 13
          Caption = 'Frete por conta:'
        end
        object Label27: TLabel
          Left = 366
          Top = 178
          Width = 141
          Height = 13
          Caption = 'Modelo de Documento Fiscal:'
        end
        object Label28: TLabel
          Left = 500
          Top = 143
          Width = 66
          Height = 13
          Caption = 'Peso L'#237'quido:'
        end
        object Label29: TLabel
          Left = 258
          Top = 143
          Width = 49
          Height = 13
          Caption = 'Desconto:'
        end
        object Label31: TLabel
          Left = 507
          Top = 212
          Width = 30
          Height = 13
          Caption = 'Placa:'
        end
        object Label32: TLabel
          Left = 288
          Top = 73
          Width = 81
          Height = 13
          Caption = 'N'#186' Cupom Fiscal:'
        end
        object Label77: TLabel
          Left = 371
          Top = 73
          Width = 83
          Height = 13
          Caption = 'Consumidor Final:'
        end
        object Label17: TLabel
          Left = 432
          Top = 39
          Width = 108
          Height = 13
          Caption = 'Finalidade da Emiss'#227'o:'
        end
        object EdtNr_Saida: TCurrencyEdit
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
        object EdtCd_Emitente: TCurrencyEdit
          Tag = 1
          Left = 181
          Top = 16
          Width = 50
          Height = 19
          Margins.Left = 2
          Margins.Top = 2
          AutoSize = False
          DecimalPlaces = 0
          DisplayFormat = '#,###'
          TabOrder = 2
          OnExit = EdtCd_EmitenteExit
          OnKeyDown = EdtCd_EmitenteKeyDown
        end
        object EdtNm_Emitente: TEdit
          Left = 255
          Top = 16
          Width = 482
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
          Top = 87
          Width = 27
          Height = 19
          CharCase = ecUpperCase
          MaxLength = 3
          TabOrder = 8
          OnExit = EdtCd_SerieExit
        end
        object EdtNr_Fatura: TCurrencyEdit
          Left = 36
          Top = 87
          Width = 60
          Height = 19
          Margins.Left = 2
          Margins.Top = 2
          AutoSize = False
          DecimalPlaces = 0
          DisplayFormat = '#,###'
          TabOrder = 9
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
          Width = 366
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
          Left = 101
          Top = 87
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
        object EdtDt_Lancamento: TDateEdit
          Left = 196
          Top = 87
          Width = 89
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
          Top = 121
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
          TabOrder = 14
        end
        object EdtPr_ICMS: TCurrencyEdit
          Left = 89
          Top = 121
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
          TabOrder = 15
        end
        object EdtVl_ICMS: TCurrencyEdit
          Left = 134
          Top = 121
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
        end
        object EdtVl_Produto: TCurrencyEdit
          Left = 418
          Top = 121
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
        end
        object EdtVl_Frete: TCurrencyEdit
          Left = 503
          Top = 121
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
        end
        object EdtVl_IPI: TCurrencyEdit
          Left = 174
          Top = 157
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
        object EdtVl_Nota: TCurrencyEdit
          Left = 342
          Top = 157
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
        end
        object EdtPs_Nota: TCurrencyEdit
          Left = 426
          Top = 157
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
          TabOrder = 26
        end
        object MmObservacao: TMemo
          Left = 4
          Top = 263
          Width = 435
          Height = 143
          MaxLength = 8190
          ScrollBars = ssVertical
          TabOrder = 36
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
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
        end
        object EdtVl_BaseSubst: TCurrencyEdit
          Left = 219
          Top = 121
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
        end
        object EdtVl_Substituicao: TCurrencyEdit
          Left = 326
          Top = 121
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
        end
        object EdtVl_Seguro: TCurrencyEdit
          Left = 4
          Top = 157
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
        end
        object EdtVl_Despesa: TCurrencyEdit
          Left = 89
          Top = 157
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
        object EdtCd_Transportador: TCurrencyEdit
          Tag = 2
          Left = 4
          Top = 227
          Width = 50
          Height = 19
          Margins.Left = 2
          Margins.Top = 2
          AutoSize = False
          DecimalPlaces = 0
          DisplayFormat = '#,###'
          TabOrder = 32
          OnExit = EdtCd_TransportadorExit
          OnKeyDown = EdtCd_EmitenteKeyDown
        end
        object EdtNm_Transportador: TEdit
          Left = 77
          Top = 227
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
          TabOrder = 33
        end
        object EdtDs_Quantidade: TLabeledEdit
          Left = 4
          Top = 192
          Width = 114
          Height = 19
          EditLabel.Width = 58
          EditLabel.Height = 13
          EditLabel.Caption = 'Quantidade:'
          LabelSpacing = 2
          MaxLength = 20
          TabOrder = 28
        end
        object EdtDs_Especie: TLabeledEdit
          Left = 123
          Top = 192
          Width = 115
          Height = 19
          EditLabel.Width = 41
          EditLabel.Height = 13
          EditLabel.Caption = 'Esp'#233'cie:'
          LabelSpacing = 2
          MaxLength = 20
          TabOrder = 29
        end
        object EdtDs_Marca: TLabeledEdit
          Left = 245
          Top = 192
          Width = 115
          Height = 19
          EditLabel.Width = 33
          EditLabel.Height = 13
          EditLabel.Caption = 'Marca:'
          LabelSpacing = 2
          MaxLength = 20
          TabOrder = 30
        end
        object MmNota: TMemo
          Left = 442
          Top = 263
          Width = 435
          Height = 143
          MaxLength = 8190
          ScrollBars = ssVertical
          TabOrder = 37
        end
        object CbFrete: TComboBox
          Left = 390
          Top = 227
          Width = 115
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          ItemIndex = 1
          MaxLength = 20
          TabOrder = 34
          Text = 'Destinat'#225'rio (FOB)'
          Items.Strings = (
            'Emitente (CIF)'
            'Destinat'#225'rio (FOB)'
          )
        end
        object CbModeloFiscal: TComboBox
          Left = 366
          Top = 192
          Width = 293
          Height = 21
          Style = csDropDownList
          DropDownCount = 23
          ItemHeight = 13
          TabOrder = 31
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
          Left = 500
          Top = 157
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
          Left = 258
          Top = 157
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
        object EdtNr_Placa: TMaskEdit
          Left = 507
          Top = 227
          Width = 69
          Height = 19
          AutoSize = False
          CharCase = ecUpperCase
          MaxLength = 7
          TabOrder = 35
        end
        object EdtrefNFe: TLabeledEdit
          Left = 4
          Top = 423
          Width = 381
          Height = 19
          EditLabel.Width = 134
          EditLabel.Height = 13
          EditLabel.Caption = 'Chave da NFe referenciada:'
          LabelSpacing = 2
          MaxLength = 44
          TabOrder = 38
          OnChange = EdtrefNFeChange
        end
        object EdtNr_ECF: TCurrencyEdit
          Left = 288
          Top = 87
          Width = 60
          Height = 19
          Margins.Left = 2
          Margins.Top = 2
          AutoSize = False
          DecimalPlaces = 0
          DisplayFormat = '#,###'
          TabOrder = 12
        end
        object CbConFinal: TComboBox
          Left = 371
          Top = 87
          Width = 60
          Height = 21
          Style = csDropDownList
          Ctl3D = False
          ItemHeight = 13
          ItemIndex = 0
          ParentCtl3D = False
          TabOrder = 13
          Text = 'Sim'
          Items.Strings = (
            'Sim'
            'N'#227'o'
          )
        end
        object CbfinNFe: TbctComboBox
          Left = 430
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
          Left = 582
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
        Caption = '                         Produtos                         '
        ImageIndex = 1
        object LblProdutos: TLabel
          Left = 1
          Top = 2
          Width = 111
          Height = 13
          Caption = 'Produtos da Sa'#237'da:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object LblTotalItens: TLabel
          Left = 576
          Top = 344
          Width = 283
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Valor Total: 0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label44: TLabel
          Left = 0
          Top = 379
          Width = 54
          Height = 13
          Caption = 'Tributa'#231#227'o:'
          FocusControl = DBEdit3
        end
        object Label30: TLabel
          Left = 0
          Top = 344
          Width = 40
          Height = 13
          Caption = 'Produto:'
          FocusControl = DbEdtCd_Produto
        end
        object DbGProduto: TDBGrid
          Left = 1
          Top = 16
          Width = 876
          Height = 322
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
              Width = 46
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Nm_Produto'
              Width = 356
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Dp_Tributacao'
              Width = 164
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
              Title.Alignment = taRightJustify
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
        object DBEdit3: TDBEdit
          Left = 0
          Top = 395
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
          TabOrder = 1
        end
        object DbEdtDs_Tributacao: TDBEdit
          Left = 33
          Top = 395
          Width = 400
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
          TabOrder = 2
        end
        object DbEdtCd_Produto: TDBEdit
          Left = 0
          Top = 360
          Width = 85
          Height = 19
          TabStop = False
          Color = clSilver
          DataField = 'cd_produto'
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
        object DbEdtNm_Produto: TDBEdit
          Left = 86
          Top = 360
          Width = 421
          Height = 19
          TabStop = False
          Color = clSilver
          DataField = 'Nm_Produto'
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
      end
      object TabSParcela: TTabSheet
        Caption = '               Vencimentos das Parcelas                    '
        ImageIndex = 2
        object Label26: TLabel
          Left = 4
          Top = 2
          Width = 123
          Height = 13
          Caption = 'Vencimento das Parcelas:'
        end
        object DbGParcela: TDBGrid
          Left = 4
          Top = 16
          Width = 720
          Height = 193
          DataSource = DsParcela
          FixedColor = clSilver
          Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnEnter = DbGProdutoEnter
          OnExit = DbGProdutoExit
          Columns = <
            item
              Expanded = False
              FieldName = 'Nr_Documento'
              Width = 137
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Dt_Vencimento'
              Title.Alignment = taCenter
              Width = 131
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Vl_Parcela'
              Title.Alignment = taRightJustify
              Width = 117
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Ds_FormaPagamento'
              Width = 311
              Visible = True
            end>
        end
      end
    end
    object SctReport: TSctReport
      Left = 342
      Top = 494
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
      MTop = 494
      MLeft = 342
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
        Description = 'Sa'#237'da'
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
        object adodsprodutoVl_UnitarioVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Vl_Unitario'
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
        object adodsdadosnr_saidaVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nr_saida'
          DataSource = DsReport
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
        object Group: TSctGroup
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Header = GroupHeader
          Footer = GroupFooter
          Variable = adodsprodutonm_classeVar
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
        object adodsprodutonm_classeVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nm_classe'
          DataSource = DsProduto
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object TotalOfVl_Total: TSctTotalvar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Variable = adodsprodutoVl_TotalVar1
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
          DataSource = FrmNota.DsNota
        end
        object DataSourceGuide1: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = DsParcela
        end
        object DataSourceGuide2: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = FrmEmitente_Find.DsFind
        end
        object DataSourceGuide3: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = FrmEmitente_Find.DsContato
        end
        object DataSourceGuide4: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = FrmCFOP_Find.DsFind
        end
        object DataSourceGuide6: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = FrmSaida_Item_Select.DsFind
        end
        object DataSourceGuide7: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = DmMaster.DsConexao
        end
        object DataSourceGuide8: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = FrmSaida_Find.DsFind
        end
        object DataSourceGuide9: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = DmMaster.DsConecadoMes
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
            Caption = 'Sa'#237'da no Estoque'
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
            Left = -5
            Top = 1
            Width = 58
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
            Variable = adodsprodutoVl_UnitarioVar1
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
          Top = 366
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
          Top = 401
          Width = 748
          Height = 20
          ParentColor = True
          BandName = 'Report Footer'
          Updatelevel = SctLevel5
          object SctLine5: TSctLine
            Left = 550
            Top = 1
            Width = 146
            Height = 5
            AlignVertical = laTop
          end
          object SctTotalvarLabel1: TSctTotalvarLabel
            Left = 620
            Top = 3
            Width = 78
            Height = 17
            TotalVariable = TotalOfVl_Total
            DataFormat.DisplayFormat = '#,##0.00'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Sctvarlabel23: TSctvarlabel
            Left = 550
            Top = 3
            Width = 65
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Total Geral:'
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
            Caption = 'Sa'#237'da N'#186':'
          end
          object Sctvarlabel25: TSctvarlabel
            Left = 3
            Top = 16
            Width = 58
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsdadosnr_saidaVar
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
            Caption = 'Cliente'
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
            Width = 56
            Height = 17
            AlignHorizontal = laRight
            Caption = 'C'#243'digo'
          end
          object Sctvarlabel49: TSctvarlabel
            Left = 58
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
          Color = 16316664
          BandName = 'Group Header'
          Updatelevel = GroupHeaderLevel
          object Sctvarlabel59: TSctvarlabel
            Left = 1
            Top = 1
            Width = 415
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Variable = adodsprodutonm_classeVar
          end
        end
        object GroupFooter: TSctBand
          Left = 0
          Top = 329
          Width = 748
          Height = 22
          ParentColor = True
          BandName = 'Group Footer'
          Updatelevel = GroupFooterLevel
          object SctLine4: TSctLine
            Left = 550
            Top = 1
            Width = 146
            Height = 5
            AlignVertical = laTop
          end
          object SctTotalvarLabel2: TSctTotalvarLabel
            Left = 620
            Top = 3
            Width = 78
            Height = 17
            TotalVariable = TotalOfVl_Total
            DataFormat.DisplayFormat = '#,##0.00'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Sctvarlabel60: TSctvarlabel
            Left = 523
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
            Caption = 'Total:'
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
            Caption = '&Saida...'
            ImageIndex = 20
            ShowCaption = False
            ShortCut = 117
          end
          item
            Caption = '-'
          end
          item
            Action = ActImport
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
            Action = ActPerecivel
            ImageIndex = 6
          end>
        ActionBar = ActToolBDatabase
      end
      item
      end>
    Images = FrmMain.ImgLstMenu
    Left = 715
    Top = 42
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
      OnExecute = ActDelExecute
    end
    object ActReport: TAction
      Category = '2-Database'
      Caption = 'Saida...'
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
    object ActFechar: TAction
      Category = '2-Database'
      Hint = 'Fechar Sa'#237'da e Atualizar o Estoque'
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
      Hint = 'Retornar o Sa'#237'da para "Aberto"'
      ImageIndex = 38
      ShortCut = 120
      OnExecute = ActRedoExecute
    end
    object ActPerecivel: TAction
      Category = '2-Database'
      Hint = '"Zerar" Pereciveis'
      ImageIndex = 6
      OnExecute = ActPerecivelExecute
    end
    object ActImport: TAction
      Category = '2-Database'
      Hint = 'Importar os Itens do Or'#231'amento'
      ImageIndex = 35
      OnExecute = ActImportExecute
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
  end
  object ADODsDados: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    OnCalcFields = ADODsDadosCalcFields
    CommandText = 'select'#13#10'  A.Nr_Saida, A.Cd_Emitente, B.Nm_Emitente, A.Cd_Serie, A.Nr_Fatura,'#13#10'  A.Cd_CFOP, D.Ds_CFOP, A.Dt_Emissao, A.St_Saida,'#13#10'  A.Dt_Lancamento, A.Vl_BaseICMS, A.Pr_ICMS, A.Vl_ICMS, A.Vl_Produto,'#13#10'  A.Vl_Frete, A.Vl_IPI, A.Vl_Nota, A.Ps_Nota, A.Mm_Observacao,'#13#10'  B.Fl_Contribuinte, C.Sg_Estado, A.Vl_BaseSubst, A.Vl_Substituicao,'#13#10'  A.Vl_Seguro, A.Vl_Despesa, A.Cd_Transportador, T.Nm_Transportador,'#13#10'  A.Ds_Quantidade, A.Ds_Especie, A.Ds_Marca, A.Mm_Nota, A.Fl_Frete,'#13#10'  A.Cd_ModeloFiscal, A.Ps_Liquido, A.Vl_Desconto, A.Nr_Placa, B.Nm_Fantasia,'#13#10'  A.refNFe, A.Nr_ECF, A.Fl_ConFinal, '#13#10'  Cd_Tabela =  case when ESG.Cd_Tabela is not null then ESG.Cd_Tabela else F.Cd_Tabela end,'#13#10'  A.finNFe, A.natOp'#13#10#13#10'from'#13#10'  Saida A'#13#10#13#10'inner join'#13#10'  Emitente B'#13#10'on'#13#10'  B.Cd_Emitente = A.Cd_Emitente'#13#10#13#10'inner join'#13#10'  Emitente_SubGrupo ESG'#13#10'on'#13#10'  ESG.Cd_SubGrupo = B.Cd_SubGrupo'#13#10#13#10'inner join'#13#10'  Filial F'#13#10'on'#13#10'  F.Cd_Filial = A.Cd_Filial'#13#10#13#10'left join'#13#10'  CFOP D'#13#10'on'#13#10'  D.Cd_CFOP = A.Cd_CFOP'#13#10#13#10'left join'#13#10'  Emitente_Endereco EE'#13#10'on'#13#10'  EE.Cd_Emitente = A.Cd_Emitente and'#13#10'  EE.Nr_Endereco = B.Nr_Endereco'#13#10#13#10'left join'#13#10'  Cidade C'#13#10'on'#13#10'  C.Cd_Cidade = EE.Cd_Cidade'#13#10#13#10'left join'#13#10'  Transportador T'#13#10'on'#13#10'  T.Cd_Transportador = A.Cd_Transportador'#13#10#13#10'where'#13#10'  A.Cd_Filial = :Cd_Filial and'#13#10'  A.Nr_Saida  = :Nr_Saida'
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
    object ADODsDadosnr_saida: TIntegerField
      FieldName = 'nr_saida'
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
    object ADODsDadosst_saida: TStringField
      FieldName = 'st_saida'
      FixedChar = True
      Size = 1
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
    object ADODsDadosfl_contribuinte: TStringField
      FieldName = 'fl_contribuinte'
      FixedChar = True
      Size = 1
    end
    object ADODsDadossg_estado: TStringField
      FieldName = 'sg_estado'
      FixedChar = True
      Size = 2
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
    object ADODsDadosrefNFe: TStringField
      FieldName = 'refNFe'
      Size = 44
    end
    object ADODsDadosNr_ECF: TIntegerField
      FieldName = 'Nr_ECF'
    end
    object ADODsDadosFl_ConFinal: TStringField
      FieldName = 'Fl_ConFinal'
      FixedChar = True
      Size = 1
    end
    object ADODsDadosCd_Tabela: TStringField
      FieldName = 'Cd_Tabela'
      ReadOnly = True
      Size = 10
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
      'insert into Saida( Cd_Filial, Nr_Saida, Cd_Emitente, Cd_Serie, Nr_Fatura,'
      '  Cd_CFOP, Dt_Emissao, Dt_Lancamento, Vl_BaseICMS, Pr_ICMS,'
      '  Vl_ICMS, Vl_Produto, Vl_Frete, Vl_IPI, Vl_Nota, Ps_Nota, Mm_Observacao,'
      '  St_Saida, Vl_BaseSubst, Vl_Substituicao, Vl_Seguro, Vl_Despesa,'
      '  Ds_Quantidade, Ds_Especie, Ds_Marca, Cd_Transportador, Mm_Nota, Fl_Frete,'
      '  Cd_ModeloFiscal, Ps_Liquido, Vl_Desconto, Nr_Placa, refNFe, Nr_ECF, Fl_ConFinal,'
      '  finNfe, natOp )'
      ''
      'values( :Cd_Filial, :Nr_Saida, :Cd_Emitente, :Cd_Serie, :Nr_Fatura,'
      '  :Cd_CFOP, :Dt_Emissao, :Dt_Lancamento, :Vl_BaseICMS, :Pr_ICMS,'
      '  :Vl_ICMS, :Vl_Produto, :Vl_Frete, :Vl_IPI, :Vl_Nota, :Ps_Nota, :Mm_Observacao,'
      '  ''''1'''', :Vl_BaseSubst, :Vl_Substituicao, :Vl_Seguro, :Vl_Despesa, :Ds_Quantidade,'
      '  :Ds_Especie, :Ds_Marca, :Cd_Transportador, :Mm_Nota, :Fl_Frete,'
      '  :Cd_ModeloFiscal, :Ps_Liquido, :Vl_Desconto, :Nr_Placa, :refNFe, :Nr_ECF, :Fl_ConFinal,'
      '  :finNfe, :natOp )'
    )
    SQLUpdate.Strings = (
      'update'
      '  Saida'
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
      '  Nr_Placa         = :Nr_Placa,'
      '  refNFe           = :refNFe,'
      '  Nr_ECF           = :Nr_ECF,'
      '  Fl_ConFinal      = :Fl_ConFinal,'
      '  finNfe           = :finNfe,'
      '  natOp            = :natOp'
      '  '
      'where'
      '  Cd_Filial = :Cd_Filial and'
      '  Nr_Saida  = :Nr_Saida'
    )
    SQLDelete.Strings = (
      'delete from'
      '  Saida'
      ''
      'where'
      '  Cd_Filial = :Cd_Filial and'
      '  Nr_Saida  = :Nr_Saida'
    )
    SQLOther0.Strings = (
      'update'
      '  Saida'
      ''
      'set'
      '  St_Saida = :St_Saida'
      ''
      'where'
      '  Cd_Filial = :Cd_Filial and'
      '  Nr_Saida  = :Nr_Saida'
    )
    SQLOther1.Strings = (
      'delete from'
      '  Saida_Item'
      ''
      'where'
      '  Cd_Filial = :Cd_Filial and'
      '  Nr_Saida  = :Nr_Saida and'
      '  Nr_Item   = :Nr_Item'
    )
    SQLOther2.Strings = (
      'execute Saida_Estoque :Cd_Filial, :Nr_Saida, :St_Saida, :St_Antiga'
    )
    SQLOther3.Strings = (
      '-- Atualiza os totais'
      'update'
      '  Saida'
      ''
      'set'
      '  Vl_Produto  = :Vl_Produto,'
      '  Vl_IPI      = :Vl_IPI,'
      '  Vl_BaseICMS = :Vl_BaseICMS,'
      '  Vl_ICMS     = :Vl_ICMS,'
      '  Vl_Nota     = :Vl_Nota,'
      '  Ps_Nota     = :Ps_Nota'
      ''
      'where'
      '  Cd_Filial = :Cd_Filial and'
      '  Nr_Saida  = :Nr_Saida'
    )
    SQLOther4.Strings = (
      '-------------------- Exclus'#227'o de parcelas'
      'delete from'
      '  Saida_Parcela'
      ''
      'where'
      '  Cd_Filial    = :Cd_Filial and'
      '  Nr_Saida     = :Nr_Saida and'
      '  Nr_Documento = :Nr_Documento'
    )
    SQLOther5.Strings = (
      '--------------- Zerar Pereciveis'
      'insert into Saida_Item( Cd_Filial, Nr_Saida, Nr_Item, Cd_Produto, Sg_Unidade,'
      '  Qt_Item, Qt_Estoque, Vl_Unitario, Nm_Produto )'
      'select'
      '  ES.Cd_Filial, :Nr_Saida, ROW_NUMBER() OVER ( ORDER BY ES.Cd_Produto ) + :Nr_Item,'
      '  ES.Cd_Produto,'
      '  ES.Sg_Estoque, ES.Qt_Saldo, ES.Qt_Saldo, 0.01, P.Nm_Produto'
      ''
      'from'
      '  Estoque_Saldo ES'
      ''
      'inner join'
      '  Produto P'
      'on'
      '  P.Cd_Produto   = ES.Cd_Produto and'
      '  P.Fl_Perecivel = ''''1'''
      ''
      'where'
      '  Cd_Filial  = :Cd_Filial and'
      '  Qt_Saldo   > 0.0'
      ''
      'order by'
      '  ES.Cd_Produto'
    )
    SQLOther6.Strings = (
      'declare'
      '  @Cd_Filial SmallInt,'
      '  @Nr_Saida Int,'
      '  @Nr_Orcamento Int,'
      '  @Cd_Tabela VarChar( 10 ),'
      '  @Nr_Item SmallInt'
      ''
      'select'
      '  @Cd_Filial    = :Cd_Filial,'
      '  @Nr_Saida '#9'= :Nr_Saida,'
      '  @Nr_Orcamento = :Nr_Orcamento,'
      '  @Cd_Tabela    = :Cd_Tabela,'
      '  @Nr_Item = Coalesce('
      '  ('
      '  select'
      '    max( Nr_Item )'
      '  from'
      '    Saida_Item'
      ''
      '  where'
      '    Cd_Filial = @Cd_Filial and'
      '    Nr_Saida  = @Nr_Saida'
      '  ), 0 )'
      ''
      '-------------------- Importar os dados do Or'#231'amento'
      'insert into Saida_Item( Cd_Filial, Nr_Saida, Nr_Item, Cd_Produto, Sg_Unidade,'
      '  Qt_Item, Vl_Unitario, Qt_Estoque, Nm_Produto )'
      ''
      '/* Este select pega somente os produtos */'
      'select'
      '  O.Cd_Filial, @Nr_Saida, OI.Nr_Item + @Nr_Item, OI.Cd_Produto,'
      '  OI.Sg_Unidade, OI.Qt_Item, PP.Vl_Custo,'
      '  OI.Qt_Item * ( case when PU.Nr_Fator is null then 1 else PU.Nr_Fator end ),'
      '  P.Nm_Produto'
      ''
      'from'
      '  Orcamento O'
      ''
      'inner join'
      '  Orcamento_Item OI'
      'on'
      '  OI.Cd_Filial     = O.Cd_Filial and'
      '  OI.Nr_Orcamento  = O.Nr_Orcamento and'
      '  OI.Fl_Confirmado = ''''1'''
      ''
      'inner join'
      '  Produto P'
      'on'
      '  P.Cd_Produto = OI.Cd_Produto and'
      '  P.Fl_Produto = ''''1''''   /* Somente produtos */'
      ''
      'inner join'
      '  Produto_Preco PP'
      'on'
      '  PP.Cd_Tabela  = @Cd_Tabela and'
      '  PP.Cd_Produto = OI.Cd_Produto'
      ''
      'left join'
      '  Produto_Unidade PU'
      'on'
      '  PU.Cd_Produto = OI.Cd_Produto and'
      '  PU.Sg_Unidade = OI.Sg_Unidade'
      ''
      'where'
      '  O.Cd_Filial    = @Cd_Filial and'
      '  O.Nr_Orcamento = @Nr_Orcamento'
      ''
      '/* Este pega somente as cestas */'
      'set @Nr_Item = Coalesce('
      '  ('
      '  select'
      '    max( Nr_Item )'
      '  from'
      '    Saida_Item'
      ''
      '  where'
      '    Cd_Filial = @Cd_Filial and'
      '    Nr_Saida  = @Nr_Saida'
      '  ), 0 )'
      ''
      'insert into Saida_Item( Cd_Filial, Nr_Saida, Nr_Item, Cd_Produto, Sg_Unidade,'
      '  Qt_Item, Vl_Unitario, Qt_Estoque, Nm_Produto )'
      'select'
      '  O.Cd_Filial, @Nr_Saida, OI.Nr_Item + @Nr_Item + OJ.Cd_Produto, OJ.Cd_Produto,'
      '  OJ.Sg_Unidade, OI.Qt_Item * OJ.Qt_Item, PP.Vl_Custo,'
      '  OI.Qt_Item * OJ.Qt_Item, P.Nm_Produto'
      ''
      'from'
      '  Orcamento O'
      ''
      'inner join'
      '  Orcamento_Item OI'
      'on'
      '  OI.Cd_Filial     = O.Cd_Filial and'
      '  OI.Nr_Orcamento  = O.Nr_Orcamento and'
      '  OI.Fl_Confirmado = ''''1'''
      ''
      'inner join'
      '  Orcamento_Conjunto OJ'
      'on'
      '  OJ.Cd_Filial    = OI.Cd_Filial and'
      '  OJ.Nr_Orcamento = OI.Nr_Orcamento and'
      '  OJ.Nr_Item      = OI.Nr_Item'
      ''
      'inner join'
      '  Produto P'
      'on'
      '  P.Cd_Produto = OJ.Cd_Produto and'
      '  P.Fl_Produto = ''''1''''   /* Somente produtos */'
      ''
      'inner join'
      '  Produto_Preco PP'
      'on'
      '  PP.Cd_Tabela  = @Cd_Tabela and'
      '  PP.Cd_Produto = OI.Cd_Produto'
      ''
      'left join'
      '  Produto_Unidade PU'
      'on'
      '  PU.Cd_Produto = OJ.Cd_Produto and'
      '  PU.Sg_Unidade = OJ.Sg_Unidade'
      ''
      ''
      'where'
      '  O.Cd_Filial    = @Cd_Filial and'
      '  O.Nr_Orcamento = @Nr_Orcamento'
    )
    Left = 701
    Top = 2
  end
  object ADODsNavegar: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = '-- First'#13#10'select top 1'#13#10'  Nr_Saida'#13#10#13#10'from'#13#10'  Saida'#13#10#13#10'where'#13#10'  Cd_Filial = :Cd_Filial'#13#10#13#10'order by'#13#10'  Nr_Saida'
    Parameters = <
      item
        Name = 'Cd_Filial'
        DataType = ftSmallint
        Size = -1
        Value = nil?
      end>
    SQLPrimary.Strings = (
      'select'
      '  max( A.Nr_Saida ) + 1 as Nr_Saida'
      ''
      'from'
      '  Saida A'
      ''
      'where'
      '  Cd_Filial = :Cd_Filial'
    )
    SQLOther0.Strings = (
      '-- First'
      'select top 1'
      '  Nr_Saida'
      ''
      'from'
      '  Saida'
      ''
      'where'
      '  Cd_Filial = :Cd_Filial'
      ''
      'order by'
      '  Nr_Saida'
    )
    SQLOther1.Strings = (
      '-- Prior'
      'select top 1'
      '  Nr_Saida'
      ''
      'from'
      '  Saida'
      ''
      'where'
      '  Cd_Filial = :Cd_Filial and'
      '  Nr_Saida  < :Nr_Saida'
      ''
      'order by'
      '  Nr_Saida desc'
    )
    SQLOther2.Strings = (
      '-- Next'
      'select top 1'
      '  Nr_Saida'
      ''
      'from'
      '  Saida'
      ''
      'where'
      '  Cd_Filial = :Cd_Filial and'
      '  Nr_Saida  > :Nr_Saida'
      ''
      'order by'
      '  Nr_Saida'
    )
    SQLOther3.Strings = (
      '-- Last'
      'select top 1'
      '  Nr_Saida'
      ''
      'from'
      '  Saida'
      ''
      'where'
      '  Cd_Filial = :Cd_Filial'
      ''
      'order by'
      '  Nr_Saida desc'
    )
    SQLOther4.Strings = (
      '--------------- Verifica se tem NFe para processamento'
      'select '
      '  Nr_Origem as Nr_Saida'
      ''
      'from'
      '  NFe'
      ''
      'where'
      '  Cd_Filial = :Cd_Filial and'
      '  Fl_Origem = ''''2'''' and'
      '  Nr_Origem = :Nr_Saida'
    )
    Left = 731
    Top = 2
    object ADODsNavegarnr_saida: TIntegerField
      FieldName = 'nr_saida'
    end
  end
  object DsReport: TDataSource
    DataSet = ADODsDados
    Left = 642
    Top = 2
  end
  object ADODsProduto: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    OnCalcFields = ADODsProdutoCalcFields
    CommandText = 'select'#13#10'  A.Nr_Saida, A.Nr_Item, A.Cd_Produto,  A.Nm_Produto, A.Sg_Unidade,'#13#10'  B.Sg_Estoque, A.Qt_Item, A.Qt_Estoque, A.Vl_Unitario, '#13#10'  dbo.SGRound( A.Vl_Unitario * A.Qt_Item ) as Vl_Total, C.Nm_Classe,'#13#10'  A.Nr_Lote, A.Dt_Fabricacao, A.Dt_Validade, B.Fl_Lote, A.Pr_ICMS, A.Pr_IPI,'#13#10#13#10'  A.Cd_Tributacao, T.Ds_Tributacao, A.xPed, A.nItemPed'#13#10#13#10'from'#13#10'  Saida_Item A'#13#10#13#10'left join'#13#10'  Produto B'#13#10'on'#13#10'  B.Cd_Produto = A.Cd_Produto'#13#10#13#10'left join'#13#10'  Classe C'#13#10'on'#13#10'  C.Cd_Classe = B.Cd_Classe'#13#10#13#10'left join'#13#10'  Tributacao T'#13#10'on'#13#10'  T.Cd_Tributacao = A.Cd_Tributacao'#13#10#13#10'where'#13#10'  A.Cd_Filial  = :Cd_Filial and'#13#10'  A.Nr_Saida  = :Nr_Saida'#13#10#13#10'order by'#13#10'  C.Nm_Classe, A.Nr_Item'
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
        Name = 'Nr_Saida'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = nil?
      end>
    Left = 792
    Top = 3
    object ADODsProdutoNr_Saida: TIntegerField
      FieldName = 'Nr_Saida'
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
      DisplayFormat = '#,##0.0##'
      Precision = 18
      Size = 3
    end
    object ADODsProdutoQt_Estoque: TBCDField
      DisplayLabel = 'Estoque'
      FieldName = 'Qt_Estoque'
      DisplayFormat = '#,##0.0##'
      Precision = 18
      Size = 3
    end
    object ADODsProdutoVl_Unitario: TBCDField
      DisplayLabel = 'Unit'#225'rio'
      FieldName = 'Vl_Unitario'
      DisplayFormat = '#,##0.00###'
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
    object ADODsProdutocd_produto: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'cd_produto'
    end
    object ADODsProdutonm_classe: TStringField
      FieldName = 'nm_classe'
      Size = 50
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
    object ADODsProdutoPr_ICMS: TBCDField
      FieldName = 'Pr_ICMS'
      Precision = 8
      Size = 2
    end
    object ADODsProdutoPr_IPI: TBCDField
      FieldName = 'Pr_IPI'
      Precision = 8
      Size = 2
    end
    object ADODsProdutoCd_Tributacao: TSmallintField
      FieldName = 'Cd_Tributacao'
    end
    object ADODsProdutoDs_Tributacao: TStringField
      FieldName = 'Ds_Tributacao'
      Size = 60
    end
    object ADODsProdutoDp_Tributacao: TStringField
      DisplayLabel = 'Tributa'#231#227'o'
      FieldKind = fkCalculated
      FieldName = 'Dp_Tributacao'
      Size = 80
      Calculated = True
    end
    object ADODsProdutoxPed: TStringField
      FieldName = 'xPed'
    end
    object ADODsProdutonItemPed: TSmallintField
      FieldName = 'nItemPed'
    end
  end
  object DsProduto: TDataSource
    DataSet = ADODsProduto
    Left = 762
    Top = 3
  end
  object ADODsTotal: TMultADODS
    Connection = FrmMain.ADOConMaster
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  sum( P.Ps_Produto ) as Ps_Produto,'#13#10'  sum( Round( SI.Vl_Unitario * SI.Qt_Item, 2 ) ) as Vl_Produto,'#13#10'  sum('#13#10'    case'#13#10'      when P.Pr_IPI = 0 then 0.0'#13#10'      else'#13#10'        Round( SI.Vl_Unitario * SI.Qt_Item / 100 * P.Pr_IPI, 2 )'#13#10'    end ) as Vl_IPI,'#13#10'  sum('#13#10'    case'#13#10'      when ''''1'''' = ''''2'''' then Round( SI.Vl_Unitario * SI.Qt_Item, 2 )'#13#10'      else'#13#10'        Round( SI.Vl_Unitario * SI.Qt_Item / 100 *'#13#10'        ('#13#10'        case'#13#10'          when ''''2'''' = ''''1'''' then'#13#10'            case when P.Pr_Reduz_Contrib = 0 then 17 else P.Pr_Reduz_Contrib end'#13#10#13#10'          else'#13#10'            case when P.Pr_Reduz_NaoContrib = 0 then 17 else P.Pr_Reduz_NaoContrib end'#13#10#13#10'        end'#13#10'        ) / 17 * 100, 2 )'#13#10'    end ) as Vl_BaseICMS'#13#10#13#10'from'#13#10'  Saida_Item SI'#13#10#13#10'inner join'#13#10'  Produto P'#13#10'on'#13#10'  P.Cd_Produto = SI.Cd_Produto'#13#10#13#10'where'#13#10'  SI.Cd_Filial = 1 and'#13#10'  SI.Nr_Saida  = 2'
    Parameters = <>
    SQLOther0.Strings = (
      '-- Totais da Saida'
      'select'
      '  sum( P.Ps_Produto * SI.Qt_Estoque ) as Ps_Produto,'
      '  sum( Round( SI.Vl_Unitario * SI.Qt_Item, 2 ) ) as Vl_Produto,'
      '  sum('
      '    case'
      '      when SI.Pr_IPI is null or SI.Pr_IPI = 0 then'
      '        case'
      '          when P.Pr_IPI = 0 then 0.0'
      '          else'
      '            Round( SI.Vl_Unitario * SI.Qt_Item / 100.0 * P.Pr_IPI, 2 )'
      '        end'
      '      else Round( SI.Vl_Unitario * SI.Qt_Item / 100.0 * SI.Pr_IPI, 2 )'
      '    end'
      '    ) as Vl_IPI,'
      '    '
      '  sum('
      '    case'
      '      when :Fl_Reducao = ''''2'''' then Round( SI.Vl_Unitario * SI.Qt_Item, 2 )'
      '      else'
      '        Round( SI.Vl_Unitario * SI.Qt_Item / 100.0 *'
      '        ('
      '        case'
      '          when :Fl_Contribuinte = ''''1'''' then'
      '            case when T.Pr_Contrib = 0 then <<pr_aliquota>> else T.Pr_Contrib end'
      ''
      '          else'
      '            case when T.Pr_NaoContrib = 0 then <<pr_aliquota>> else T.Pr_NaoContrib end'
      ''
      '        end'
      '        ) / <<pr_aliquota>> * 100.0, 2 )'
      '    end ) as Vl_BaseICMS'
      ''
      'from'
      '  Saida_Item SI'
      ''
      'inner join'
      '  Produto P'
      'on'
      '  P.Cd_Produto = SI.Cd_Produto'
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
    Left = 824
    Top = 4
    object ADODsTotalps_produto: TBCDField
      FieldName = 'ps_produto'
      Precision = 10
      Size = 5
    end
    object ADODsTotalvl_produto: TBCDField
      FieldName = 'vl_produto'
      Precision = 16
      Size = 8
    end
    object ADODsTotalvl_ipi: TBCDField
      FieldName = 'vl_ipi'
      Precision = 10
      Size = 5
    end
    object ADODsTotalvl_baseicms: TBCDField
      FieldName = 'vl_baseicms'
      Precision = 16
      Size = 8
    end
  end
  object DsParcela: TDataSource
    DataSet = ADODsParcela
    Left = 855
    Top = 3
  end
  object ADODsParcela: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    OnCalcFields = ADODsParcelaCalcFields
    CommandText = 'select'#13#10'  Cd_Filial, Nr_Saida, Nr_Documento, Dt_Vencimento, Vl_Parcela,'#13#10'  Cd_FormaPagamento'#13#10#13#10'from'#13#10'  Saida_Parcela'#13#10#13#10'where'#13#10'  Cd_Filial  = :Cd_Filial and'#13#10'  Nr_Saida = :Nr_Saida'#13#10#13#10'order by'#13#10'  Dt_Vencimento'
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
        Name = 'Nr_Saida'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = nil?
      end>
    Left = 887
    Top = 3
    object ADODsParcelaCd_Filial: TSmallintField
      FieldName = 'Cd_Filial'
    end
    object ADODsParcelaNr_Saida: TIntegerField
      FieldName = 'Nr_Saida'
    end
    object ADODsParcelaNr_Documento: TStringField
      DisplayLabel = 'Documento / Fatura'
      FieldName = 'Nr_Documento'
      Size = 12
    end
    object ADODsParcelaDt_Vencimento: TDateTimeField
      DisplayLabel = 'Vencimento'
      FieldName = 'Dt_Vencimento'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object ADODsParcelaVl_Parcela: TBCDField
      DisplayLabel = 'Valor da Parcela'
      FieldName = 'Vl_Parcela'
      DisplayFormat = '#,##0.00#'
      Precision = 12
      Size = 3
    end
    object ADODsParcelaCd_FormaPagamento: TStringField
      FieldName = 'Cd_FormaPagamento'
      Size = 2
    end
    object ADODsParcelaDs_FormaPagamento: TStringField
      DisplayLabel = 'Forma de Pagamento'
      FieldKind = fkCalculated
      FieldName = 'Ds_FormaPagamento'
      Size = 60
      Calculated = True
    end
  end
end
