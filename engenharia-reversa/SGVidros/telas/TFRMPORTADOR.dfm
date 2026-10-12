object FrmPortador: TFrmPortador
  Left = 374
  Top = 172
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Portador'
  ClientHeight = 443
  ClientWidth = 767
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
    Height = 443
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 746
    Height = 443
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 1
      Top = 413
      Width = 741
      Height = 5
      Shape = bsTopLine
    end
    object Label1: TLabel
      Left = 5
      Top = 32
      Width = 36
      Height = 13
      Caption = 'C'#243'digo:'
    end
    object Label2: TLabel
      Left = 51
      Top = 32
      Width = 43
      Height = 13
      Caption = 'Portador:'
    end
    object Label3: TLabel
      Left = 483
      Top = 31
      Width = 34
      Height = 13
      Caption = 'Banco:'
    end
    object Label4: TLabel
      Left = 529
      Top = 31
      Width = 42
      Height = 13
      Caption = 'Ag'#234'ncia:'
    end
    object Label5: TLabel
      Left = 592
      Top = 31
      Width = 31
      Height = 13
      Caption = 'Conta:'
    end
    object Label6: TLabel
      Left = 5
      Top = 68
      Width = 70
      Height = 13
      Caption = 'Taxa de Juros:'
    end
    object Label7: TLabel
      Left = 123
      Top = 68
      Width = 39
      Height = 13
      Caption = 'Carteira:'
    end
    object Label8: TLabel
      Left = 5
      Top = 176
      Width = 200
      Height = 13
      Caption = 'Instru'#231#227'o do Boleto (M'#225'ximo de 10 linhas):'
    end
    object Label9: TLabel
      Left = 306
      Top = 68
      Width = 47
      Height = 13
      Caption = 'Remessa:'
    end
    object Label10: TLabel
      Left = 365
      Top = 31
      Width = 98
      Height = 13
      Caption = 'Meio de Pagamento:'
    end
    object Label11: TLabel
      Left = 358
      Top = 68
      Width = 88
      Height = 13
      Caption = 'Tipo de Cobran'#231'a:'
    end
    object Label12: TLabel
      Left = 5
      Top = 103
      Width = 169
      Height = 13
      Caption = 'Protesto (ap'#243's o vencimento - dias):'
    end
    object Label13: TLabel
      Left = 5
      Top = 141
      Width = 79
      Height = 13
      Caption = 'T'#237'tulo do Boleto:'
    end
    object Label14: TLabel
      Left = 224
      Top = 141
      Width = 258
      Height = 13
      Caption = 'Campo Livre (Ex.:N'#186' de Contratos, N'#186' do Cedente etc):'
    end
    object BvlMoldura: TBevel
      Left = 5
      Top = 356
      Width = 205
      Height = 51
      Shape = bsFrame
    end
    object ImgLogo: TImage
      Left = 7
      Top = 359
      Width = 200
      Height = 45
      Center = True
    end
    object Label15: TLabel
      Left = 5
      Top = 341
      Width = 143
      Height = 13
      Caption = 'Logo para o Boleto (45 x 165):'
    end
    object Label16: TLabel
      Left = 166
      Top = 68
      Width = 123
      Height = 13
      Caption = 'Apresenta'#231#227'o da Carteira:'
    end
    object Label17: TLabel
      Left = 80
      Top = 68
      Width = 29
      Height = 13
      Caption = 'Multa:'
    end
    object Label18: TLabel
      Left = 280
      Top = 176
      Width = 459
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'J$ = Valor do Juros M$ = Valor da Multa  NF$ = N'#186' da NF-e'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label19: TLabel
      Left = 212
      Top = 378
      Width = 162
      Height = 13
      Caption = 'Tamanho do Separador do boleto:'
    end
    object Label20: TLabel
      Left = 347
      Top = 103
      Width = 159
      Height = 13
      Caption = 'Imprimir Comprovante de Entrega:'
    end
    object SbEmitente: TSpeedButton
      Left = 55
      Top = 320
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
    object Label21: TLabel
      Left = 5
      Top = 305
      Width = 368
      Height = 13
      Caption = 'Fornecedor do Cart'#227'o de Cr'#233'dito (este ser'#225' utilizado para vendas com cart'#227'o):'
    end
    object Label22: TLabel
      Left = 390
      Top = 305
      Width = 99
      Height = 13
      Caption = 'Taxa Administradora:'
    end
    object Label23: TLabel
      Left = 493
      Top = 305
      Width = 63
      Height = 13
      Caption = 'Tarifa Boleto:'
    end
    object Label24: TLabel
      Left = 213
      Top = 342
      Width = 198
      Height = 13
      Caption = 'Local de Pagamento (texto para o boleto):'
    end
    object Label25: TLabel
      Left = 570
      Top = 68
      Width = 167
      Height = 13
      Caption = 'Descritivo da Cobran'#231'a / Varia'#231#227'o:'
    end
    object Label26: TLabel
      Left = 510
      Top = 103
      Width = 88
      Height = 13
      Caption = 'Indicador (Sicredi):'
    end
    object Label27: TLabel
      Left = 600
      Top = 103
      Width = 122
      Height = 13
      Caption = 'Unidade (Sicredi/Sicoob):'
    end
    object Label28: TLabel
      Left = 483
      Top = 141
      Width = 86
      Height = 13
      Caption = 'Modelo do Boleto:'
    end
    object Label29: TLabel
      Left = 5
      Top = 269
      Width = 49
      Height = 13
      Caption = 'Cliente ID:'
      Visible = False
    end
    object Label30: TLabel
      Left = 316
      Top = 269
      Width = 69
      Height = 13
      Caption = 'Cliente Secret:'
      Visible = False
    end
    object Label31: TLabel
      Left = 176
      Top = 103
      Width = 130
      Height = 13
      Caption = 'Limite de Pagamento - dias:'
    end
    object PnlToolMain: TPanel
      Left = 1
      Top = 1
      Width = 744
      Height = 26
      Align = alTop
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 32
      object PnlDatabase: TPanel
        Left = 0
        Top = 0
        Width = 744
        Height = 26
        Align = alClient
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 0
        object ActToolBDatabase: TActionToolBar
          Left = 0
          Top = 0
          Width = 744
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
      Left = 572
      Top = 416
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 29
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 482 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 659
      Top = 416
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 31
      OnClick = BitBtnCancelClick
      Glyph.Data = {binary 482 bytes}
      NumGlyphs = 2
    end
    object EdtCd_Portador: TCurrencyEdit
      Left = 5
      Top = 46
      Width = 38
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      TabStop = False
      AutoSize = False
      Color = clSilver
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object EdtNm_Portador: TEdit
      Left = 51
      Top = 46
      Width = 306
      Height = 19
      MaxLength = 50
      TabOrder = 1
    end
    object EdtNr_Conta: TEdit
      Left = 592
      Top = 45
      Width = 88
      Height = 19
      MaxLength = 10
      TabOrder = 5
    end
    object EdtPr_TaxaJuros: TCurrencyEdit
      Left = 5
      Top = 82
      Width = 38
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DisplayFormat = '#,##0.00'
      TabOrder = 6
    end
    object EdtCd_Carteira: TCurrencyEdit
      Left = 123
      Top = 82
      Width = 38
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 8
    end
    object EdtNr_Remessa: TCurrencyEdit
      Left = 306
      Top = 82
      Width = 38
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 10
    end
    object CbTipoCobranca: TComboBox
      Left = 358
      Top = 82
      Width = 209
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 11
      Text = 'T'#237'tulo Descontado / Cobran'#231'a Simples'
      Items.Strings = (
        'T'#237'tulo Descontado / Cobran'#231'a Simples'
        'Sem Registro'
        'Caucionada'
        'Cobran'#231'a com Registro'
        'Cobran'#231'a com Registro / Santander'
      )
    end
    object EdtNr_Prazo_Protesto: TCurrencyEdit
      Left = 5
      Top = 117
      Width = 38
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 13
    end
    object EdtDs_Boleto: TEdit
      Left = 5
      Top = 155
      Width = 212
      Height = 19
      MaxLength = 20
      TabOrder = 18
    end
    object EdtCd_Banco: TMaskEdit
      Left = 483
      Top = 45
      Width = 38
      Height = 19
      EditMask = '###-#;0; '
      MaxLength = 5
      TabOrder = 3
    end
    object EdtCd_Agencia: TMaskEdit
      Left = 529
      Top = 45
      Width = 54
      Height = 19
      CharCase = ecUpperCase
      EditMask = '####-A;0; '
      MaxLength = 6
      TabOrder = 4
    end
    object MmInstrucao: TMemo
      Left = 5
      Top = 191
      Width = 734
      Height = 76
      MaxLength = 8190
      ScrollBars = ssVertical
      TabOrder = 21
    end
    object EdtDs_Livre: TEdit
      Left = 224
      Top = 155
      Width = 183
      Height = 19
      Hint = 'Caso seja banco CEF colocar o numero do cedente com 6 digitos - 5 do codigo e 1 do digito verificador'
      MaxLength = 30
      ParentShowHint = False
      ShowHint = True
      TabOrder = 19
    end
    object SctReport: TSctReport
      Left = 635
      Top = 295
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
      TabOrder = 33
      Visible = False
      Minimized = True
      Prompt = True
      AutoRun = False
      SuppressStatus = False
      PixelsPerInch = 96
      STop = 5
      SLeft = 5
      SWidth = 836
      SHeight = 581
      MTop = 295
      MLeft = 635
      SAlign = alNone
      Version = vAce1_0
      object ReportPage: TSctGrouppage
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
        Description = 'Portador'
        CloseDataSet = False
        DataRange = drAllRecords
        OmitLastPgFt = False
        Head = ReportHeaderBand
        Detail = DetailBand
        Foot = ReportFooterBand
        PageHead = PageHeaderBand
        PageFoot = PageFooterBand
        DataSource = DsReport
        Order = 1
        object ReportHeaderBandlevel: TSctLevel
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          IsHeader = True
        end
        object PageHeaderBandlevel: TSctLevel
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          IsHeader = True
        end
        object DetailBandlevel: TSctLevel
          Left = 0
          Top = 0
          Width = 0
          Height = 0
        end
        object PageFooterBandlevel: TSctLevel
          Left = 0
          Top = 0
          Width = 0
          Height = 0
        end
        object ReportFooterBandlevel: TSctLevel
          Left = 0
          Top = 0
          Width = 0
          Height = 0
        end
        object svarDateTime: TSctDateTimeVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          UpdateLevel = ReportHeaderBandlevel
          AutoVar = True
          ID = vidDateTimeVar
        end
        object svarPage: TSctPageVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          UpdateLevel = PageHeaderBandlevel
          AutoVar = True
          ID = vidPageVar
        end
        object DataSourceGuide: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = DsReport
        end
        object DataSourceGuide1: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = DmMaster.DsUsuario
        end
        object DataSourceGuide2: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = DmMaster.DsFilial
        end
        object adodsfilialDp_FilialVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_Filial'
          DataSource = DmMaster.DsFilial
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportcd_portadorVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'cd_portador'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportnm_portadorVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nm_portador'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object TotalOfcd_portador: TSctTotalvar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Variable = adodsreportcd_portadorVar
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidTotalVar
        end
        object DataSourceGuide4: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = FrmPortador_Find.DsFind
        end
        object DataSourceGuide5: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = FrmEmitente_Find.DsFind
        end
        object DataSourceGuide6: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = FrmEmitente_Find.DsContato
        end
        object DataSourceGuide3: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = DmMaster.DsConexao
        end
        object DataSourceGuide7: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = DmMaster.DsConecadoMes
        end
        object ReportHeaderBand: TSctBand
          Left = 0
          Top = 0
          Width = 748
          Height = 5
          ParentColor = True
          BandName = 'Report Header'
          Updatelevel = ReportHeaderBandlevel
          Visible = False
        end
        object PageHeaderBand: TSctBand
          Left = 0
          Top = 20
          Width = 748
          Height = 39
          ParentColor = True
          BandName = 'Page Header'
          Updatelevel = PageHeaderBandlevel
          object SctTitle: TSctvarlabel
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
            Caption = 'Portador'
          end
          object Sctvarlabel1: TSctvarlabel
            Left = 601
            Top = 1
            Width = 31
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Data:'
          end
          object Sctvarlabel2: TSctvarlabel
            Left = 634
            Top = 1
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = svarDateTime
            DataFormat.DisplayFormat = 'dd/mm/yyyy'
          end
          object Sctvarlabel3: TSctvarlabel
            Left = 598
            Top = 18
            Width = 34
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Hora:'
          end
          object Sctvarlabel4: TSctvarlabel
            Left = 634
            Top = 18
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = svarDateTime
            DataFormat.DisplayFormat = 'hh:mm:ss'
          end
          object SctLine1: TSctLine
            Left = 0
            Top = 31
            Width = 698
            Height = 7
          end
        end
        object DetailBand: TSctBand
          Left = 0
          Top = 109
          Width = 748
          Height = 18
          ParentColor = True
          BandName = 'Detail'
          Updatelevel = DetailBandlevel
          object Sctvarlabel7: TSctvarlabel
            Left = 0
            Top = 0
            Width = 38
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsreportcd_portadorVar
          end
          object Sctvarlabel8: TSctvarlabel
            Left = 43
            Top = 0
            Width = 463
            Height = 17
            Variable = adodsreportnm_portadorVar
          end
        end
        object PageFooterBand: TSctBand
          Left = 0
          Top = 142
          Width = 748
          Height = 20
          ParentColor = True
          BandName = 'Page Footer'
          Updatelevel = PageFooterBandlevel
          object SctLine4: TSctLine
            Left = 0
            Top = 1
            Width = 698
            Height = 7
            AlignVertical = laTop
          end
          object Sctvarlabel11: TSctvarlabel
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
            Variable = adodsfilialDp_FilialVar
          end
          object Sctvarlabel12: TSctvarlabel
            Left = 616
            Top = 2
            Width = 44
            Height = 17
            AlignHorizontal = laRight
            Caption = 'P'#225'gina:'
          end
          object Sctvarlabel13: TSctvarlabel
            Left = 663
            Top = 2
            Width = 35
            Height = 17
            AlignHorizontal = laRight
            Variable = svarPage
            DataFormat.DisplayFormat = '#,###'
          end
        end
        object ReportFooterBand: TSctBand
          Left = 0
          Top = 177
          Width = 748
          Height = 20
          ParentColor = True
          BandName = 'Report Footer'
          Updatelevel = ReportFooterBandlevel
          object SctLine5: TSctLine
            Left = 490
            Top = 1
            Width = 206
            Height = 5
            AlignVertical = laTop
          end
          object SctTotalvarLabel1: TSctTotalvarLabel
            Left = 663
            Top = 3
            Width = 35
            Height = 17
            TotalVariable = TotalOfcd_portador
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
          object Sctvarlabel14: TSctvarlabel
            Left = 485
            Top = 3
            Width = 172
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Total de Portadores:'
          end
        end
        object PageHeaderBandSub: TSctSubBand
          Left = 0
          Top = 74
          Width = 748
          Height = 20
          Color = 16316664
          BandName = 'PageHeaderBandSub'
          Updatelevel = PageHeaderBandlevel
          Band = PageHeaderBand
          Above = False
          object SctLine2: TSctLine
            Left = 0
            Top = 13
            Width = 698
            Height = 7
          end
          object Sctvarlabel5: TSctvarlabel
            Left = 0
            Top = 0
            Width = 38
            Height = 17
            AlignHorizontal = laRight
            Caption = 'C'#243'digo'
          end
          object Sctvarlabel6: TSctvarlabel
            Left = 43
            Top = 0
            Width = 188
            Height = 17
            Caption = 'Nome do Portador'
          end
        end
      end
    end
    object EdtDs_Carteira: TEdit
      Left = 166
      Top = 82
      Width = 135
      Height = 19
      MaxLength = 20
      TabOrder = 9
    end
    object EdtPr_Multa: TCurrencyEdit
      Left = 80
      Top = 82
      Width = 38
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DisplayFormat = '#,##0.00'
      TabOrder = 7
    end
    object EdtNr_Separador: TCurrencyEdit
      Left = 212
      Top = 392
      Width = 38
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 30
    end
    object CbEntrega: TComboBox
      Left = 347
      Top = 117
      Width = 60
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 1
      TabOrder = 15
      Text = 'N'#227'o'
      Items.Strings = (
        'Sim'
        'N'#227'o'
      )
    end
    object EdtCd_Emitente: TCurrencyEdit
      Tag = 1
      Left = 5
      Top = 320
      Width = 50
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 24
      OnExit = EdtCd_EmitenteExit
      OnKeyDown = EdtCd_EmitenteKeyDown
    end
    object EdtNm_Emitente: TEdit
      Left = 78
      Top = 320
      Width = 308
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
      TabOrder = 25
    end
    object EdPr_TxAdmCartao: TCurrencyEdit
      Left = 390
      Top = 320
      Width = 38
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DisplayFormat = '#,##0.00'
      TabOrder = 26
    end
    object EdtVl_Tarifa: TCurrencyEdit
      Left = 493
      Top = 320
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DisplayFormat = '#,##0.00'
      TabOrder = 27
    end
    object EdtDs_LocalPagamento: TEdit
      Left = 213
      Top = 356
      Width = 460
      Height = 19
      MaxLength = 100
      TabOrder = 28
    end
    object EdtDs_Cobranca: TEdit
      Left = 570
      Top = 82
      Width = 169
      Height = 19
      MaxLength = 30
      TabOrder = 12
    end
    object EdtNr_Indicador: TCurrencyEdit
      Left = 510
      Top = 117
      Width = 38
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 16
    end
    object EdtNr_Unidade: TCurrencyEdit
      Left = 600
      Top = 117
      Width = 38
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 17
    end
    object CbTpModelo: TComboBox
      Left = 483
      Top = 155
      Width = 155
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 20
      Text = 'Padr'#227'o A4 - Antigo'
      Items.Strings = (
        'Padr'#227'o A4 - Antigo'
        'Padr'#227'o A4 - Novo (PDF)'
        'Carn'#234
        'Fatura'
        'A4 - com recibo de entrega'
      )
    end
    object CbPagamento: TbctComboBox
      Left = 363
      Top = 45
      Width = 119
      Height = 21
      Style = csDropDownList
      DropDownCount = 20
      ItemHeight = 13
      TabOrder = 2
      Items.Strings = (
        'Dinheiro'
        'Cheque'
        'Boleto'
        'Cart'#227'o Cr'#233'dito'
        'Dep'#243'sito'
        'Transfer'#234'ncia'
        'Vale'
        'Tiquete'
        'Duplicata'
        'Cart'#227'o D'#233'bito'
        'PIX'
      )
      Value = '-1'
      ValueList.Strings = (
        '1'
        '2'
        '3'
        '4'
        '5'
        '6'
        '7'
        '8'
        '9'
        'A'
        'B'
      )
    end
    object EdtClienteID: TEdit
      Left = 5
      Top = 283
      Width = 306
      Height = 19
      MaxLength = 256
      TabOrder = 22
      Visible = False
    end
    object EdtClienteSecret: TEdit
      Left = 316
      Top = 283
      Width = 306
      Height = 19
      MaxLength = 256
      TabOrder = 23
      Visible = False
    end
    object EdtNr_DataLimite: TCurrencyEdit
      Left = 176
      Top = 117
      Width = 38
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 14
    end
  end
  object ADODsDados: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  P.cd_portador, P.nm_portador, P.cd_banco, P.cd_agencia, P.nr_conta,'#13#10'  P.pr_taxajuros, P.cd_carteira, P.nr_remessa, P.fl_pagamento,'#13#10'  P.nr_prazo_protesto, P.tp_cobranca, P.ds_boleto, P.mm_instrucao,'#13#10'  P.ds_livre, P.im_logo, P.ds_carteira, P.Pr_Multa, P.Nr_Separador,'#13#10'  P.Fl_Entrega, P.Cd_Emitente, E.Nm_Emitente, P.Pr_TxAdmCartao,'#13#10'  P.Vl_Tarifa, P.Ds_LocalPagamento, P.Ds_Cobranca, P.Nr_Indicador,'#13#10'  P.Nr_Unidade, P.Tp_Modelo, P.ClienteID, P.ClienteSecret, P.Nr_DataLimite'#13#10#13#10'from'#13#10'  Portador P'#13#10#13#10'left join'#13#10'  Emitente E'#13#10'on'#13#10'  E.Cd_Emitente = P.Cd_Emitente'#13#10#13#10'where'#13#10'  P.cd_portador = :Cd_Portador'
    Parameters = <
      item
        Name = 'Cd_Portador'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = nil?
      end>
    Left = 83
    Top = 373
    object ADODsDadoscd_portador: TSmallintField
      FieldName = 'cd_portador'
    end
    object ADODsDadosnm_portador: TStringField
      FieldName = 'nm_portador'
      Size = 50
    end
    object ADODsDadoscd_banco: TStringField
      FieldName = 'cd_banco'
      FixedChar = True
      Size = 4
    end
    object ADODsDadoscd_agencia: TStringField
      FieldName = 'cd_agencia'
      FixedChar = True
      Size = 5
    end
    object ADODsDadosnr_conta: TStringField
      FieldName = 'nr_conta'
      Size = 10
    end
    object ADODsDadospr_taxajuros: TBCDField
      FieldName = 'pr_taxajuros'
      Precision = 9
      Size = 2
    end
    object ADODsDadoscd_carteira: TSmallintField
      FieldName = 'cd_carteira'
    end
    object ADODsDadosnr_remessa: TSmallintField
      FieldName = 'nr_remessa'
    end
    object ADODsDadosfl_pagamento: TStringField
      FieldName = 'fl_pagamento'
      FixedChar = True
      Size = 1
    end
    object ADODsDadosnr_prazo_protesto: TSmallintField
      FieldName = 'nr_prazo_protesto'
    end
    object ADODsDadostp_cobranca: TStringField
      FieldName = 'tp_cobranca'
      FixedChar = True
      Size = 1
    end
    object ADODsDadosds_boleto: TStringField
      FieldName = 'ds_boleto'
    end
    object ADODsDadosds_livre: TStringField
      FieldName = 'ds_livre'
      Size = 30
    end
    object ADODsDadosim_logo: TBlobField
      FieldName = 'im_logo'
    end
    object ADODsDadosds_carteira: TStringField
      FieldName = 'ds_carteira'
    end
    object ADODsDadospr_multa: TBCDField
      FieldName = 'pr_multa'
      Precision = 7
      Size = 2
    end
    object ADODsDadosmm_instrucao: TMemoField
      FieldName = 'mm_instrucao'
      BlobType = ftMemo
    end
    object ADODsDadosNr_Separador: TSmallintField
      FieldName = 'Nr_Separador'
    end
    object ADODsDadosFl_Entrega: TStringField
      FieldName = 'Fl_Entrega'
      FixedChar = True
      Size = 1
    end
    object ADODsDadosCd_Emitente: TIntegerField
      FieldName = 'Cd_Emitente'
    end
    object ADODsDadosNm_Emitente: TStringField
      FieldName = 'Nm_Emitente'
      Size = 50
    end
    object ADODsDadosPr_TxAdmCartao: TBCDField
      FieldName = 'Pr_TxAdmCartao'
      Precision = 9
    end
    object ADODsDadosVl_Tarifa: TBCDField
      FieldName = 'Vl_Tarifa'
      Precision = 12
      Size = 2
    end
    object ADODsDadosDs_LocalPagamento: TStringField
      FieldName = 'Ds_LocalPagamento'
      Size = 100
    end
    object ADODsDadosDs_Cobranca: TStringField
      FieldName = 'Ds_Cobranca'
      Size = 30
    end
    object ADODsDadosNr_Indicador: TSmallintField
      FieldName = 'Nr_Indicador'
    end
    object ADODsDadosNr_Unidade: TSmallintField
      FieldName = 'Nr_Unidade'
    end
    object ADODsDadosTp_Modelo: TStringField
      FieldName = 'Tp_Modelo'
      FixedChar = True
      Size = 1
    end
    object ADODsDadosClienteID: TStringField
      FieldName = 'ClienteID'
      Size = 256
    end
    object ADODsDadosClienteSecret: TStringField
      FieldName = 'ClienteSecret'
      Size = 256
    end
    object ADODsDadosNr_DataLimite: TSmallintField
      FieldName = 'Nr_DataLimite'
    end
  end
  object ADOCmdDados: TMultADOCMD
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLInsert.Strings = (
      'insert into portador( cd_Portador, nm_Portador, cd_banco, cd_agencia, nr_conta,'
      '  pr_taxajuros, cd_carteira, nr_remessa, fl_pagamento, nr_prazo_protesto,'
      '  tp_cobranca, ds_boleto, ds_livre, mm_instrucao, Im_Logo, Ds_Carteira,'
      '  Pr_Multa, Nr_Separador, Fl_Entrega, Cd_Emitente, Pr_TxAdmCartao, Vl_Tarifa,'
      '  Ds_LocalPagamento, Ds_Cobranca, Nr_Indicador, Nr_Unidade, Tp_Modelo, ClienteID, ClienteSecret,'
      '  Nr_DataLimite )'
      'values( :cd_Portador, :nm_Portador, :cd_banco, :cd_agencia, :nr_conta,'
      '  :pr_taxajuros, :cd_carteira, :nr_remessa, :fl_pagamento, :nr_prazo_protesto,'
      '  :tp_cobranca, :ds_boleto, :ds_livre, :mm_instrucao, :Im_Logo, :Ds_Carteira,'
      '  :Pr_Multa, :Nr_Separador, :Fl_Entrega, :Cd_Emitente, :Pr_TxAdmCartao,'
      '  :Vl_Tarifa, :Ds_LocalPagamento, :Ds_Cobranca, :Nr_Indicador, :Nr_Unidade,'
      '  :Tp_Modelo, :ClienteID, :ClienteSecret, :Nr_DataLimite )'
    )
    SQLUpdate.Strings = (
      'update'
      '  portador'
      ''
      'set'
      '  nm_portador       = :nm_portador,'
      '  cd_banco          = :cd_banco,'
      '  cd_agencia        = :cd_agencia,'
      '  nr_conta          = :nr_conta,'
      '  pr_taxajuros      = :pr_taxajuros,'
      '  cd_carteira       = :cd_carteira,'
      '  nr_remessa        = :nr_remessa,'
      '  tp_cobranca       = :tp_cobranca,'
      '  fl_pagamento      = :fl_pagamento,'
      '  nr_prazo_protesto = :nr_prazo_protesto,'
      '  ds_boleto         = :ds_boleto,'
      '  ds_livre          = :ds_livre,'
      '  mm_instrucao      = :mm_instrucao,'
      '  Ds_Carteira       = :Ds_Carteira,'
      '  Im_Logo           = :Im_Logo,'
      '  Pr_Multa          = :Pr_Multa,'
      '  Nr_Separador      = :Nr_Separador,'
      '  Fl_Entrega        = :Fl_Entrega,'
      '  Cd_Emitente       = :Cd_Emitente,'
      '  Pr_TxAdmCartao    = :Pr_TxAdmCartao,'
      '  Vl_Tarifa         = :Vl_Tarifa,'
      '  Ds_LocalPagamento = :Ds_LocalPagamento,'
      '  Ds_Cobranca       = :Ds_Cobranca,'
      '  Nr_Indicador      = :Nr_Indicador,'
      '  Nr_Unidade        = :Nr_Unidade,'
      '  Tp_Modelo         = :Tp_Modelo,'
      '  ClienteID         = :ClienteID,'
      '  ClienteSecret     = :ClienteSecret,'
      '  Nr_DataLimite     = :Nr_DataLimite'
      ''
      'where'
      '  cd_portador   = :Cd_Portador'
    )
    SQLDelete.Strings = (
      'delete from'
      '  portador'
      ''
      'where'
      '  cd_portador = :Cd_Portador'
    )
    SQLOther0.Strings = (
      '-- ------------ Apagar arquivos CRT e Key'
      'update'
      '  Portador'
      ''
      'set'
      '  ArquivoCRT = :ArquivoCRT,'
      '  ArquivoKey = :ArquivoKey'
      ''
      'where'
      '  Cd_Portador = :Cd_Portador'
    )
    Left = 113
    Top = 373
  end
  object DsReport: TDataSource
    DataSet = ADODsReport
    Left = 23
    Top = 373
  end
  object ADODsReport: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  cd_portador, nm_portador'#13#10#13#10'from'#13#10'  portador'#13#10#13#10'order by'#13#10'  nm_portador'
    Parameters = <>
    Left = 53
    Top = 373
    object ADODsReportcd_portador: TSmallintField
      FieldName = 'cd_portador'
    end
    object ADODsReportnm_portador: TStringField
      FieldName = 'nm_portador'
      Size = 50
    end
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
            Items = <
              item
                Action = ActCopiar
                Caption = '&Copiar Portador...'
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
            Action = ActReport
            ImageIndex = 20
            ShortCut = 117
          end
          item
            Caption = '-'
          end
          item
            Action = ActLoad
            ImageIndex = 4
          end
          item
            Action = ActClear
            ImageIndex = 32
          end
          item
            Action = ActSave
            ImageIndex = 33
          end
          item
            Caption = '-'
          end
          item
            Action = ActAjustar
            ImageIndex = 34
          end
          item
            Action = ActZoom
            ImageIndex = 36
          end
          item
            Caption = '-'
          end
          item
            Visible = False
            Action = ActArquivoLoad
            ImageIndex = 26
          end
          item
            Visible = False
            Action = ActArquivoDel
            ImageIndex = 32
          end>
        ActionBar = ActToolBDatabase
      end
      item
      end>
    Images = FrmMain.ImgLstMenu
    Left = 643
    Top = 1
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
      Hint = 'Relat'#243'rio'
      ImageIndex = 20
      ShortCut = 117
      OnExecute = ActReportExecute
    end
    object ActLoad: TAction
      Category = '3-Imagem'
      Hint = 'Carregar imagem'
      ImageIndex = 4
      OnExecute = ActLoadExecute
    end
    object ActClear: TAction
      Category = '3-Imagem'
      Hint = 'Apagar a figura'
      ImageIndex = 32
      OnExecute = ActClearExecute
    end
    object ActSave: TAction
      Category = '3-Imagem'
      Hint = 'Salvar a imagem'
      ImageIndex = 33
      OnExecute = ActSaveExecute
    end
    object ActAjustar: TAction
      Category = '3-Imagem'
      Hint = 'Ajustar figura ao quadro'
      ImageIndex = 34
      OnExecute = ActAjustarExecute
    end
    object ActZoom: TAction
      Category = '3-Imagem'
      Hint = 'Efeito "Zoom" na imagem'
      ImageIndex = 36
      OnExecute = ActZoomExecute
    end
    object ActCopiar: TAction
      Category = '2-Database'
      Caption = 'Copiar Portador...'
      ImageIndex = 16
      OnExecute = ActCopiarExecute
    end
    object ActArquivoLoad: TAction
      Category = '2-Database'
      Hint = 'Carregar arquivos CRT e Key'
      ImageIndex = 26
      Visible = False
      OnExecute = ActArquivoLoadExecute
    end
    object ActArquivoDel: TAction
      Category = '2-Database'
      Hint = 'Apagar os arquivos CRT e Key'
      ImageIndex = 32
      Visible = False
      OnExecute = ActArquivoDelExecute
    end
  end
end
