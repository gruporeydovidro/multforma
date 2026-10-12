object FrmEstacao: TFrmEstacao
  Left = 365
  Top = 189
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Esta'#231#227'o de Trabalho (Computador)'
  ClientHeight = 462
  ClientWidth = 775
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
    Height = 462
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 754
    Height = 462
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 2
      Top = 432
      Width = 748
      Height = 5
      Shape = bsTopLine
    end
    object Label8: TLabel
      Left = 5
      Top = 102
      Width = 84
      Height = 13
      Caption = 'Impressora Fiscal:'
    end
    object Label9: TLabel
      Left = 205
      Top = 102
      Width = 57
      Height = 13
      Caption = 'Porta Serial:'
    end
    object Label1: TLabel
      Left = 490
      Top = 30
      Width = 105
      Height = 13
      Caption = 'Al'#237'quotas Carregadas:'
    end
    object Label2: TLabel
      Left = 209
      Top = 177
      Width = 352
      Height = 13
      Caption = 'Texto da Mensagem Promocial (a linha deve ter no m'#225'ximo 40 caracteres):'
    end
    object Label3: TLabel
      Left = 5
      Top = 177
      Width = 198
      Height = 13
      Caption = 'O que imprimir na mensagem promocional:'
    end
    object Label4: TLabel
      Left = 355
      Top = 36
      Width = 87
      Height = 13
      Caption = 'Tamanho da Tela:'
      Visible = False
    end
    object Label27: TLabel
      Left = 5
      Top = 141
      Width = 141
      Height = 13
      Caption = 'Modelo de Documento Fiscal:'
    end
    object Label10: TLabel
      Left = 426
      Top = 102
      Width = 49
      Height = 13
      Caption = 'N'#186' Ordem:'
    end
    object Label5: TLabel
      Left = 5
      Top = 243
      Width = 56
      Height = 13
      Caption = 'Nota Fiscal:'
    end
    object Label6: TLabel
      Left = 378
      Top = 243
      Width = 48
      Height = 13
      Caption = 'Duplicata:'
    end
    object Label7: TLabel
      Left = 5
      Top = 281
      Width = 33
      Height = 13
      Caption = 'Boleto:'
    end
    object Label11: TLabel
      Left = 5
      Top = 319
      Width = 65
      Height = 13
      Caption = 'DANFE NF-e:'
    end
    object Label12: TLabel
      Left = 209
      Top = 443
      Width = 23
      Height = 13
      Caption = 'NFe:'
      Visible = False
    end
    object Label13: TLabel
      Left = 5
      Top = 358
      Width = 124
      Height = 13
      Caption = 'Ordem de Estoque (O. E.):'
    end
    object Label14: TLabel
      Left = 378
      Top = 358
      Width = 121
      Height = 13
      Caption = 'Ordem de Servi'#231'o (O. S.):'
    end
    object Label15: TLabel
      Left = 266
      Top = 242
      Width = 107
      Height = 13
      Caption = 'Impress'#227'o Autom'#225'tica:'
    end
    object Label16: TLabel
      Left = 641
      Top = 242
      Width = 107
      Height = 13
      Caption = 'Impress'#227'o Autom'#225'tica:'
    end
    object Label17: TLabel
      Left = 266
      Top = 280
      Width = 107
      Height = 13
      Caption = 'Impress'#227'o Autom'#225'tica:'
    end
    object Label18: TLabel
      Left = 266
      Top = 318
      Width = 107
      Height = 13
      Caption = 'Impress'#227'o Autom'#225'tica:'
    end
    object Label19: TLabel
      Left = 472
      Top = 442
      Width = 107
      Height = 13
      Caption = 'Impress'#227'o Autom'#225'tica:'
      Visible = False
    end
    object Label20: TLabel
      Left = 266
      Top = 358
      Width = 107
      Height = 13
      Caption = 'Impress'#227'o Autom'#225'tica:'
    end
    object Label21: TLabel
      Left = 641
      Top = 358
      Width = 107
      Height = 13
      Caption = 'Impress'#227'o Autom'#225'tica:'
    end
    object Label22: TLabel
      Left = 379
      Top = 280
      Width = 55
      Height = 13
      Caption = 'Or'#231'amento:'
    end
    object Label23: TLabel
      Left = 640
      Top = 280
      Width = 107
      Height = 13
      Caption = 'Impress'#227'o Autom'#225'tica:'
    end
    object Label24: TLabel
      Left = 642
      Top = 318
      Width = 107
      Height = 13
      Caption = 'Impress'#227'o Autom'#225'tica:'
    end
    object Label25: TLabel
      Left = 379
      Top = 319
      Width = 72
      Height = 13
      Caption = 'DANFE NFC-e:'
    end
    object LblDsEtiqueta: TLabel
      Left = 5
      Top = 394
      Width = 153
      Height = 13
      Caption = 'Etiqueta em impressora T'#233'rmica:'
      Visible = False
    end
    object LblFlEtiqueta: TLabel
      Left = 268
      Top = 393
      Width = 107
      Height = 13
      Caption = 'Impress'#227'o Autom'#225'tica:'
      Visible = False
    end
    object PnlToolMain: TPanel
      Left = 1
      Top = 1
      Width = 752
      Height = 26
      Align = alTop
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 34
      object PnlDatabase: TPanel
        Left = 0
        Top = 0
        Width = 567
        Height = 26
        Align = alClient
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 0
        object ActToolBDatabase: TActionToolBar
          Left = 0
          Top = 0
          Width = 567
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
      object PnlAliquota: TPanel
        Left = 567
        Top = 0
        Width = 185
        Height = 26
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 1
        object ActToolBAliquota: TActionToolBar
          Left = 0
          Top = 0
          Width = 185
          Height = 26
          Cursor = crHandPoint
          ActionManager = ActManCadastro
          Caption = 'ActToolBAliquota'
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
      Left = 581
      Top = 435
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 31
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 482 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 667
      Top = 435
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 32
      OnClick = BitBtnCancelClick
      Glyph.Data = {binary 482 bytes}
      NumGlyphs = 2
    end
    object EdtDs_Estacao: TLabeledEdit
      Left = 5
      Top = 81
      Width = 308
      Height = 19
      AutoSelect = False
      EditLabel.Width = 51
      EditLabel.Height = 13
      EditLabel.Caption = 'Descri'#231#227'o:'
      LabelSpacing = 2
      MaxLength = 50
      TabOrder = 1
    end
    object EdtNm_Estacao: TLabeledEdit
      Left = 5
      Top = 45
      Width = 308
      Height = 19
      CharCase = ecUpperCase
      EditLabel.Width = 88
      EditLabel.Height = 13
      EditLabel.Caption = 'Nome da Esta'#231#227'o:'
      LabelSpacing = 2
      MaxLength = 70
      TabOrder = 0
      OnExit = EdtNm_EstacaoExit
    end
    object CbECF: TComboBox
      Left = 5
      Top = 117
      Width = 196
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 2
      Text = '<<< Nenhuma >>>'
      Items.Strings = (
        '<<< Nenhuma >>>'
        'Sigtron/Daruma FS-345 (ou similar)'
        'Bematech MP-20 FI II'
        'Yanco'
        'Impressora com Bobina'
        'Elgin'
        'Epson'
        'Daruma FS-700'
      )
    end
    object CbPortaIF: TComboBox
      Left = 205
      Top = 117
      Width = 57
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 3
      Items.Strings = (
        'COM1'
        'COM2'
        'COM3'
        'COM4'
        'COM5'
        'COM6'
        'USB'
      )
    end
    object DbGAliquota: TDBGrid
      Left = 490
      Top = 45
      Width = 209
      Height = 91
      TabStop = False
      DataSource = DsAliquota
      FixedColor = clSilver
      Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 33
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnEnter = DbGAliquotaEnter
      OnExit = DbGAliquotaExit
      Columns = <
        item
          Expanded = False
          FieldName = 'Dp_Tipo'
          Width = 77
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cd_aliquota'
          Width = 57
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'pr_aliquota'
          Title.Alignment = taRightJustify
          Width = 52
          Visible = True
        end>
    end
    object MmPromocional: TMemo
      Left = 209
      Top = 192
      Width = 356
      Height = 49
      ScrollBars = ssVertical
      TabOrder = 10
    end
    object CbPromocional: TComboBox
      Left = 5
      Top = 192
      Width = 155
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 9
      Items.Strings = (
        'Informa'#231#245'es do Cliente'
        'Mensagem Promocional'
      )
    end
    object CbTela: TComboBox
      Left = 355
      Top = 51
      Width = 129
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 7
      Visible = False
      Items.Strings = (
        'At'#233' 640 x 480'
        'Superior '#224' 640 x 480'
      )
    end
    object EdtDs_Path_PRN: TLabeledEdit
      Left = 303
      Top = 155
      Width = 308
      Height = 19
      AutoSelect = False
      EditLabel.Width = 226
      EditLabel.Height = 13
      EditLabel.Caption = 'Localiza'#231#227'o da Impressora - impress'#227'o matricial:'
      LabelSpacing = 2
      MaxLength = 100
      TabOrder = 8
    end
    object CbModeloFiscal: TComboBox
      Left = 5
      Top = 155
      Width = 293
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 6
      Items.Strings = (
        '2B - Maquina Registradora'
        '2C - Cupom Fiscal via PDV'
        '2D - Cupom Fiscal via ECF'
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
      )
    end
    object EdtNr_Serie: TLabeledEdit
      Left = 267
      Top = 117
      Width = 154
      Height = 19
      AutoSelect = False
      CharCase = ecUpperCase
      EditLabel.Width = 153
      EditLabel.Height = 13
      EditLabel.Caption = 'N'#250'mero de S'#233'rie de Fabrica'#231#227'o:'
      LabelSpacing = 2
      MaxLength = 20
      TabOrder = 4
    end
    object EdtNr_Ordem: TCurrencyEdit
      Tag = 1
      Left = 426
      Top = 117
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 5
    end
    object CbDsNota: TComboBox
      Left = 5
      Top = 257
      Width = 310
      Height = 21
      ItemHeight = 13
      TabOrder = 11
    end
    object CbDsDuplicata: TComboBox
      Left = 378
      Top = 257
      Width = 310
      Height = 21
      ItemHeight = 13
      TabOrder = 13
    end
    object CbDsBoleto: TComboBox
      Left = 5
      Top = 295
      Width = 310
      Height = 21
      ItemHeight = 13
      TabOrder = 15
    end
    object CbDsDanfe: TComboBox
      Left = 5
      Top = 333
      Width = 310
      Height = 21
      ItemHeight = 13
      TabOrder = 19
    end
    object CbDsNFe: TComboBox
      Left = 209
      Top = 457
      Width = 310
      Height = 21
      ItemHeight = 13
      TabOrder = 23
      Visible = False
    end
    object CbDsOEstoque: TComboBox
      Left = 5
      Top = 372
      Width = 310
      Height = 21
      ItemHeight = 13
      TabOrder = 25
    end
    object CbDsOServico: TComboBox
      Left = 378
      Top = 372
      Width = 310
      Height = 21
      ItemHeight = 13
      TabOrder = 27
    end
    object CbFlNota: TComboBox
      Left = 316
      Top = 257
      Width = 57
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 12
      Items.Strings = (
        'Sim'
        'N'#227'o'
      )
    end
    object CbFlDuplicata: TComboBox
      Left = 691
      Top = 257
      Width = 57
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 14
      Items.Strings = (
        'Sim'
        'N'#227'o'
      )
    end
    object CbFlBoleto: TComboBox
      Left = 316
      Top = 295
      Width = 57
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 16
      Items.Strings = (
        'Sim'
        'N'#227'o'
      )
    end
    object CbFlDanfe: TComboBox
      Left = 316
      Top = 333
      Width = 57
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 20
      Items.Strings = (
        'Sim'
        'N'#227'o'
      )
    end
    object CbFlNFe: TComboBox
      Left = 522
      Top = 457
      Width = 57
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 24
      Visible = False
      Items.Strings = (
        'Sim'
        'N'#227'o'
      )
    end
    object CbFlOEstoque: TComboBox
      Left = 316
      Top = 373
      Width = 57
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 26
      Items.Strings = (
        'Sim'
        'N'#227'o'
      )
    end
    object CbFlOServico: TComboBox
      Left = 691
      Top = 373
      Width = 57
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 28
      Items.Strings = (
        'Sim'
        'N'#227'o'
      )
    end
    object CbDsOrcamento: TComboBox
      Left = 379
      Top = 295
      Width = 310
      Height = 21
      ItemHeight = 13
      TabOrder = 17
    end
    object CbFlOrcamento: TComboBox
      Left = 690
      Top = 295
      Width = 57
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 18
      Items.Strings = (
        'Sim'
        'N'#227'o'
      )
    end
    object SctReport: TSctReport
      Left = 602
      Top = 81
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
      TabOrder = 35
      Visible = False
      Minimized = True
      Prompt = True
      AutoRun = False
      SuppressStatus = False
      PixelsPerInch = 96
      STop = 95
      SLeft = 90
      SWidth = 836
      SHeight = 581
      MTop = 81
      MLeft = 602
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
        Description = 'Esta'#231#227'o de Trabalho'
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
        object DataSourceGuide3: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = FrmHistorico_Find.DsFind
        end
        object DataSourceGuide4: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = FrmEstacao_Find.DsFind
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
        object DataSourceGuide5: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = DsAliquota
        end
        object adodsreportnm_estacaoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nm_estacao'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportds_estacaoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'ds_estacao'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportDp_IFiscalVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_IFiscal'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object TotalOfnm_estacao: TSctTotalvar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Variable = adodsreportnm_estacaoVar
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidTotalVar
        end
        object adodsreportDp_PortaVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_Porta'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object DataSourceGuide6: TSctDataSourceGuide
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
            Width = 264
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Esta'#231#227'o de Trabalho (Computador)'
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
          object Sctvarlabel9: TSctvarlabel
            Left = -5
            Top = 0
            Width = 221
            Height = 17
            WrapText = True
            Stretch = True
            Variable = adodsreportnm_estacaoVar
          end
          object Sctvarlabel10: TSctvarlabel
            Left = 221
            Top = 0
            Width = 229
            Height = 17
            WrapText = True
            Stretch = True
            Variable = adodsreportds_estacaoVar
          end
          object Sctvarlabel8: TSctvarlabel
            Left = 456
            Top = 0
            Width = 189
            Height = 17
            WrapText = True
            Stretch = True
            Variable = adodsreportDp_IFiscalVar
          end
          object Sctvarlabel16: TSctvarlabel
            Left = 649
            Top = 0
            Width = 47
            Height = 17
            AlignHorizontal = laCenter
            WrapText = True
            Stretch = True
            Variable = adodsreportDp_PortaVar
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
            Left = 620
            Top = 1
            Width = 76
            Height = 5
            AlignVertical = laTop
          end
          object SctTotalvarLabel1: TSctTotalvarLabel
            Left = 663
            Top = 3
            Width = 35
            Height = 17
            TotalVariable = TotalOfnm_estacao
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
            Left = 560
            Top = 3
            Width = 97
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Total'
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
            Width = 136
            Height = 17
            Caption = 'Nome da Esta'#231#227'o'
          end
          object Sctvarlabel6: TSctvarlabel
            Left = 221
            Top = 0
            Width = 193
            Height = 17
            Caption = 'Descri'#231#227'o da Esta'#231#227'o'
          end
          object Sctvarlabel7: TSctvarlabel
            Left = 456
            Top = 0
            Width = 130
            Height = 17
            Caption = 'Impressora Fiscal'
          end
          object Sctvarlabel15: TSctvarlabel
            Left = 649
            Top = 0
            Width = 47
            Height = 17
            AlignHorizontal = laCenter
            Caption = 'Porta'
          end
        end
      end
    end
    object CbDsPrnNFCe: TComboBox
      Left = 379
      Top = 333
      Width = 310
      Height = 21
      ItemHeight = 13
      TabOrder = 21
    end
    object CbFlPrnNFCe: TComboBox
      Left = 692
      Top = 333
      Width = 57
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 22
      Items.Strings = (
        'Sim'
        'N'#227'o'
      )
    end
    object CbDsEtiqueta: TComboBox
      Left = 5
      Top = 408
      Width = 310
      Height = 21
      ItemHeight = 13
      TabOrder = 29
      Visible = False
    end
    object CbFlEtiqueta: TComboBox
      Left = 318
      Top = 408
      Width = 57
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 30
      Visible = False
      Items.Strings = (
        'Sim'
        'N'#227'o'
      )
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
          end>
        ActionBar = ActToolBDatabase
      end
      item
      end
      item
        Items = <
          item
            Action = ActAliIns
            ImageIndex = 16
            ShortCut = 118
          end
          item
            Action = ActAliDel
            ImageIndex = 19
            ShortCut = 119
          end>
        ActionBar = ActToolBAliquota
      end>
    Images = FrmMain.ImgLstMenu
    Left = 495
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
      OnExecute = ActDelExecute
    end
    object ActReport: TAction
      Category = '2-Database'
      Hint = 'Relat'#243'rio'
      ImageIndex = 20
      ShortCut = 117
      OnExecute = ActReportExecute
    end
    object ActAliIns: TAction
      Category = '3-Aliquota'
      Hint = 'Incluir Al'#237'quota para Esta'#231#227'o'
      ImageIndex = 16
      ShortCut = 118
      OnExecute = ActAliInsExecute
    end
    object ActAliDel: TAction
      Category = '3-Aliquota'
      Hint = 'Excluir Al'#237'quota da Esta'#231#227'o'
      ImageIndex = 19
      ShortCut = 119
      OnExecute = ActAliDelExecute
    end
  end
  object ADODsDados: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  Nm_Estacao, Ds_Estacao, Tp_IFiscal, Nr_PortaIFiscal, Fl_Promocional,'#13#10'  Fl_Tela, Mm_Promocional, Ds_Path_PRN, Nr_Serie, Nr_Ordem,'#13#10'  Cd_ModeloFiscal, Ds_PrnNota, Ds_PrnDuplicata, Ds_PrnBoleto, '#13#10'  Ds_PrnDanfe, Ds_PrnNFe, Ds_PrnOEstoque, Ds_PrnOServico, Ds_PrnOrcamento,'#13#10'  Fl_PrnNota, Fl_PrnDuplicata, Fl_PrnBoleto, Fl_PrnDanfe, Fl_PrnNFe,'#13#10'  Fl_PrnOEstoque, Fl_PrnOServico, Fl_PrnOrcamento, Ds_PrnNFCe,'#13#10'  Fl_PrnNFCe, Ds_PrnEtiqueta, Fl_PrnEtiqueta'#13#10#13#10'from'#13#10'  Estacao'#13#10#13#10'where'#13#10'  Nm_Estacao = :Nm_Estacao'
    Parameters = <
      item
        Name = 'Nm_Estacao'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 70
        Value = ' '
      end>
    Left = 528
    Top = 403
    object ADODsDadosnm_estacao: TStringField
      FieldName = 'nm_estacao'
      Size = 70
    end
    object ADODsDadosds_estacao: TStringField
      FieldName = 'ds_estacao'
      Size = 50
    end
    object ADODsDadostp_ifiscal: TStringField
      FieldName = 'tp_ifiscal'
      FixedChar = True
      Size = 1
    end
    object ADODsDadosnr_portaifiscal: TStringField
      FieldName = 'nr_portaifiscal'
      FixedChar = True
      Size = 1
    end
    object ADODsDadosfl_promocional: TStringField
      FieldName = 'fl_promocional'
      FixedChar = True
      Size = 1
    end
    object ADODsDadosfl_tela: TStringField
      FieldName = 'fl_tela'
      FixedChar = True
      Size = 1
    end
    object ADODsDadosds_path_prn: TStringField
      FieldName = 'ds_path_prn'
      Size = 100
    end
    object ADODsDadosMm_Promocional: TMemoField
      FieldName = 'Mm_Promocional'
      BlobType = ftMemo
    end
    object ADODsDadosNr_Serie: TStringField
      FieldName = 'Nr_Serie'
    end
    object ADODsDadosNr_Ordem: TSmallintField
      FieldName = 'Nr_Ordem'
    end
    object ADODsDadosCd_ModeloFiscal: TStringField
      FieldName = 'Cd_ModeloFiscal'
      Size = 2
    end
    object ADODsDadosDs_PrnNota: TStringField
      FieldName = 'Ds_PrnNota'
      Size = 200
    end
    object ADODsDadosDs_PrnDuplicata: TStringField
      FieldName = 'Ds_PrnDuplicata'
      Size = 200
    end
    object ADODsDadosDs_PrnBoleto: TStringField
      FieldName = 'Ds_PrnBoleto'
      Size = 200
    end
    object ADODsDadosDs_PrnDanfe: TStringField
      FieldName = 'Ds_PrnDanfe'
      Size = 200
    end
    object ADODsDadosDs_PrnNFe: TStringField
      FieldName = 'Ds_PrnNFe'
      Size = 200
    end
    object ADODsDadosDs_PrnOEstoque: TStringField
      FieldName = 'Ds_PrnOEstoque'
      Size = 200
    end
    object ADODsDadosDs_PrnOServico: TStringField
      FieldName = 'Ds_PrnOServico'
      Size = 200
    end
    object ADODsDadosFl_PrnNota: TStringField
      FieldName = 'Fl_PrnNota'
      FixedChar = True
      Size = 1
    end
    object ADODsDadosFl_PrnDuplicata: TStringField
      FieldName = 'Fl_PrnDuplicata'
      FixedChar = True
      Size = 1
    end
    object ADODsDadosFl_PrnBoleto: TStringField
      FieldName = 'Fl_PrnBoleto'
      FixedChar = True
      Size = 1
    end
    object ADODsDadosFl_PrnDanfe: TStringField
      FieldName = 'Fl_PrnDanfe'
      FixedChar = True
      Size = 1
    end
    object ADODsDadosFl_PrnNFe: TStringField
      FieldName = 'Fl_PrnNFe'
      FixedChar = True
      Size = 1
    end
    object ADODsDadosFl_PrnOEstoque: TStringField
      FieldName = 'Fl_PrnOEstoque'
      FixedChar = True
      Size = 1
    end
    object ADODsDadosFl_PrnOServico: TStringField
      FieldName = 'Fl_PrnOServico'
      FixedChar = True
      Size = 1
    end
    object ADODsDadosFl_PrnOrcamento: TStringField
      FieldName = 'Fl_PrnOrcamento'
      FixedChar = True
      Size = 1
    end
    object ADODsDadosDs_PrnOrcamento: TStringField
      FieldName = 'Ds_PrnOrcamento'
      Size = 200
    end
    object ADODsDadosDs_PrnNFCe: TStringField
      FieldName = 'Ds_PrnNFCe'
      Size = 200
    end
    object ADODsDadosFl_PrnNFCe: TStringField
      FieldName = 'Fl_PrnNFCe'
      Size = 200
    end
    object ADODsDadosDs_PrnEtiqueta: TStringField
      FieldName = 'Ds_PrnEtiqueta'
      Size = 200
    end
    object ADODsDadosFl_PrnEtiqueta: TStringField
      FieldName = 'Fl_PrnEtiqueta'
      FixedChar = True
      Size = 1
    end
  end
  object ADOCmdDados: TMultADOCMD
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLInsert.Strings = (
      'insert into Estacao( Nm_Estacao, Ds_Estacao, Tp_IFiscal, Nr_PortaIFiscal,'
      '   Fl_Promocional, Fl_Tela, Mm_Promocional, Ds_Path_PRN, Nr_Serie, Nr_Ordem,'
      '   Cd_ModeloFiscal, Ds_PrnDuplicata, Ds_PrnNota, Ds_PrnBoleto,'
      '   Ds_PrnDanfe, Ds_PrnNFe, Ds_PrnOEstoque, Ds_PrnOServico,'
      '   Fl_PrnNota, Fl_PrnDuplicata, Fl_PrnBoleto, Fl_PrnDanfe, Fl_PrnNFe,'
      '   Fl_PrnOEstoque, Fl_PrnOServico, Ds_PrnOrcamento, Fl_PrnOrcamento,'
      '   Ds_PrnNFCe, Fl_PrnNFCe, Ds_PrnEtiqueta, Fl_PrnEtiqueta )'
      ''
      'values( :Nm_Estacao, :Ds_Estacao, :Tp_IFiscal, :Nr_PortaIFiscal,'
      '   :Fl_Promocional, :Fl_Tela, :Mm_Promocional, :Ds_Path_PRN, :Nr_Serie,'
      '   :Nr_Ordem, :Cd_ModeloFiscal, :Ds_PrnDuplicata, :Ds_PrnNota, :Ds_PrnBoleto,'
      '   :Ds_PrnDanfe, :Ds_PrnNFe, :Ds_PrnOEstoque, :Ds_PrnOServico,'
      '   :Fl_PrnNota, :Fl_PrnDuplicata, :Fl_PrnBoleto, :Fl_PrnDanfe, :Fl_PrnNFe,'
      '   :Fl_PrnOEstoque, :Fl_PrnOServico, :Ds_PrnOrcamento, :Fl_PrnOrcamento,'
      '   :Ds_PrnNFCe, :Fl_PrnNFCe, :Ds_PrnEtiqueta, :Fl_PrnEtiqueta )'
    )
    SQLUpdate.Strings = (
      'update'
      '  Estacao'
      ''
      'set'
      '  Ds_Estacao       = :Ds_Estacao,'
      '  Tp_IFiscal       = :Tp_IFiscal,'
      '  Nr_PortaIFiscal  = :Nr_PortaIFiscal,'
      '  Ds_Path_PRN      = :Ds_Path_PRN,'
      '  Fl_Promocional   = :Fl_Promocional,'
      '  Fl_Tela          = :Fl_Tela,'
      '  Mm_Promocional   = :Mm_Promocional,'
      '  Nr_Serie         = :Nr_Serie,'
      '  Nr_Ordem         = :Nr_Ordem,'
      '  Cd_ModeloFiscal  = :Cd_ModeloFiscal,'
      '  Ds_PrnDuplicata  = :Ds_PrnDuplicata,'
      '  Ds_PrnNota       = :Ds_PrnNota,'
      '  Ds_PrnBoleto     = :Ds_PrnBoleto,'
      '  Ds_PrnDanfe      = :Ds_PrnDanfe,'
      '  Ds_PrnNFe        = :Ds_PrnNFe,'
      '  Ds_PrnOEstoque   = :Ds_PrnOEstoque,'
      '  Ds_PrnOServico   = :Ds_PrnOServico,'
      '  Ds_PrnOrcamento  = :Ds_PrnOrcamento,'
      '  Fl_PrnNota       = :Fl_PrnNota,'
      '  Fl_PrnDuplicata  = :Fl_PrnDuplicata,'
      '  Fl_PrnBoleto     = :Fl_PrnBoleto,'
      '  Fl_PrnDanfe      = :Fl_PrnDanfe,'
      '  Fl_PrnNFe        = :Fl_PrnNFe,'
      '  Fl_PrnOEstoque   = :Fl_PrnOEstoque,'
      '  Fl_PrnOServico   = :Fl_PrnOServico,'
      '  Fl_PrnOrcamento  = :Fl_PrnOrcamento,'
      '  Ds_PrnNFCe       = :Ds_PrnNFCe,'
      '  Fl_PrnNFCe       = :Fl_PrnNFCe,'
      '  Ds_PrnEtiqueta   = :Ds_PrnEtiqueta,'
      '  Fl_PrnEtiqueta   = :Fl_PrnEtiqueta'
      ''
      'where'
      '  Nm_Estacao = :Nm_Estacao'
    )
    SQLDelete.Strings = (
      'delete from'
      '  Estacao'
      ''
      'where'
      '  Nm_Estacao = :Nm_Estacao'
    )
    SQLOther0.Strings = (
      'delete from'
      '  Estacao_Aliquota'
      ''
      'where'
      '  Nm_Estacao  = :Nm_Estacao and'
      '  Cd_Aliquota = :Cd_Aliquota'
    )
    Left = 556
    Top = 403
  end
  object ADODsNavegar: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = '-- First'#13#10'select top 1'#13#10'  Nm_Estacao'#13#10#13#10'from'#13#10'  Estacao'#13#10#13#10'order by'#13#10'  Nm_Estacao'
    Parameters = <>
    SQLPrimary.Strings = (
      '-- Check Primary Key'
      'select'
      '  Nm_Estacao'
      ''
      'from'
      '  Estacao'
      ''
      'where'
      '  Nm_Estacao = :Nm_Estacao'
    )
    SQLOther0.Strings = (
      '-- First'
      'select top 1'
      '  Nm_Estacao'
      ''
      'from'
      '  Estacao'
      ''
      'order by'
      '  Nm_Estacao'
    )
    SQLOther1.Strings = (
      '-- Prior'
      'select top 1'
      '  Nm_Estacao'
      ''
      'from'
      '  Estacao'
      ''
      'where'
      '  Nm_Estacao < :Nm_Estacao'
      ''
      'order by'
      '  Nm_Estacao desc'
    )
    SQLOther2.Strings = (
      '-- Next'
      'select top 1'
      '  Nm_Estacao'
      ''
      'from'
      '  Estacao'
      ''
      'where'
      '  Nm_Estacao > :Nm_Estacao'
      ''
      'order by'
      '  Nm_Estacao'
    )
    SQLOther3.Strings = (
      '-- Last'
      'select top 1'
      '  Nm_Estacao'
      ''
      'from'
      '  Estacao'
      ''
      'order by'
      '  Nm_Estacao desc'
    )
    SQLOther9.Strings = (
      'select'
      '  max( cd_grupo ) as cd_grupo'
      ''
      'from'
      '  usuario_grupo'
    )
    Left = 584
    Top = 403
    object ADODsNavegarnm_estacao: TStringField
      FieldName = 'nm_estacao'
      Size = 70
    end
  end
  object DsReport: TDataSource
    DataSet = ADODsReport
    Left = 615
    Top = 403
  end
  object ADODsReport: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    OnCalcFields = ADODsReportCalcFields
    CommandText = 'select'#13#10'  Nm_Estacao, Ds_Estacao, Tp_IFiscal, Nr_PortaIFiscal'#13#10#13#10'from'#13#10'  Estacao'#13#10#13#10'order by'#13#10'  Nm_Estacao'
    Parameters = <>
    Left = 645
    Top = 403
    object ADODsReportnm_estacao: TStringField
      FieldName = 'nm_estacao'
      Size = 70
    end
    object ADODsReportds_estacao: TStringField
      FieldName = 'ds_estacao'
      Size = 50
    end
    object ADODsReporttp_ifiscal: TStringField
      FieldName = 'tp_ifiscal'
      FixedChar = True
      Size = 1
    end
    object ADODsReportnr_portaifiscal: TStringField
      FieldName = 'nr_portaifiscal'
      FixedChar = True
      Size = 1
    end
    object ADODsReportDp_IFiscal: TStringField
      FieldKind = fkCalculated
      FieldName = 'Dp_IFiscal'
      Size = 27
      Calculated = True
    end
    object ADODsReportDp_Porta: TStringField
      FieldKind = fkCalculated
      FieldName = 'Dp_Porta'
      Size = 4
      Calculated = True
    end
  end
  object DsAliquota: TDataSource
    DataSet = ADODsAliquota
    Left = 680
    Top = 403
  end
  object ADODsAliquota: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    OnCalcFields = ADODsAliquotaCalcFields
    CommandText = 'select'#13#10'  Nm_Estacao, Cd_Aliquota, Pr_Aliquota, Tp_Aliquota'#13#10#13#10'from'#13#10'  Estacao_Aliquota'#13#10#13#10'where'#13#10'  Nm_Estacao = :Nm_Estacao'#13#10#13#10'order by'#13#10'  Cd_Aliquota'
    Parameters = <
      item
        Name = 'Nm_Estacao'
        DataType = ftString
        Size = -1
        Value = nil?
      end>
    Left = 710
    Top = 403
    object ADODsAliquotanm_estacao: TStringField
      FieldName = 'nm_estacao'
      Size = 70
    end
    object ADODsAliquotacd_aliquota: TStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'cd_aliquota'
      Size = 15
    end
    object ADODsAliquotapr_aliquota: TBCDField
      DisplayLabel = 'Aliquota'
      FieldName = 'pr_aliquota'
      DisplayFormat = '#,##0.00'
      Precision = 9
      Size = 2
    end
    object ADODsAliquotatp_aliquota: TStringField
      FieldName = 'tp_aliquota'
      FixedChar = True
      Size = 1
    end
    object ADODsAliquotaDp_Tipo: TStringField
      DisplayLabel = 'Tipo'
      FieldKind = fkCalculated
      FieldName = 'Dp_Tipo'
      Size = 15
      Calculated = True
    end
  end
end
