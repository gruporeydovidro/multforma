object FrmOrcamento_Laboratorio: TFrmOrcamento_Laboratorio
  Left = 340
  Top = 251
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Vendas por Laborat'#243'rio/Fabricante'
  ClientHeight = 266
  ClientWidth = 670
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
    Height = 266
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 649
    Height = 266
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 2
      Top = 235
      Width = 642
      Height = 5
      Shape = bsTopLine
    end
    object Label1: TLabel
      Left = 5
      Top = 2
      Width = 41
      Height = 13
      Caption = 'Per'#237'odo:'
    end
    object SbLabSel: TSpeedButton
      Left = 45
      Top = 53
      Width = 23
      Height = 19
      Hint = 'Seleciona o Laborat'#243'rio/Fabricante'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbLabSelClick
    end
    object Label5: TLabel
      Left = 5
      Top = 38
      Width = 111
      Height = 13
      Caption = 'Laborat'#243'rio/Fabricante:'
    end
    object LblReport: TLabel
      Left = 195
      Top = 2
      Width = 84
      Height = 13
      Caption = 'Tipo de Relat'#243'rio:'
    end
    object SbCidade: TSpeedButton
      Left = 55
      Top = 90
      Width = 23
      Height = 19
      Hint = 'Seleciona Cidade'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbCidadeClick
    end
    object LblCidade: TLabel
      Left = 5
      Top = 75
      Width = 36
      Height = 13
      Caption = 'Cidade:'
    end
    object BitBtnReport: TBitBtn
      Left = 476
      Top = 239
      Width = 85
      Height = 25
      Caption = '&Imprimir'
      TabOrder = 5
      OnClick = BitBtnReportClick
      Glyph.Data = {binary 1146 bytes}
    end
    object BitBtnCancel: TBitBtn
      Left = 562
      Top = 239
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 6
      OnClick = BitBtnCancelClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object EdtDt_Start: TDateEdit
      Left = 5
      Top = 16
      Width = 90
      Height = 19
      CheckOnExit = True
      DialogTitle = 'Selecione a Data'
      GlyphKind = gkCustom
      Glyph.Data = {binary 390 bytes}
      NumGlyphs = 1
      StartOfWeek = Sun
      TabOrder = 0
    end
    object EdtDt_End: TDateEdit
      Left = 100
      Top = 16
      Width = 90
      Height = 19
      CheckOnExit = True
      DialogTitle = 'Selecione a Data'
      GlyphKind = gkCustom
      Glyph.Data = {binary 390 bytes}
      NumGlyphs = 1
      StartOfWeek = Sun
      TabOrder = 1
    end
    object EdtCd_LabSel: TCurrencyEdit
      Tag = 1
      Left = 5
      Top = 53
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 3
      OnExit = EdtCd_LabSelExit
      OnKeyDown = EdtCd_LabSelKeyDown
    end
    object EdtNm_LabSel: TEdit
      Left = 68
      Top = 53
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
      TabOrder = 4
    end
    object CbReport: TComboBox
      Left = 195
      Top = 16
      Width = 156
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 2
      OnChange = CbReportChange
      Items.Strings = (
        'Produto - Anal'#237'tico'
        'Produto - Sint'#233'tico'
        'Cliente - Anal'#237'tico'
        'Cliente - Sint'#233'tico'
        'Cidade - Sint'#233'tico'
        'Cidade/Produto - Sint'#233'tico'
        'Cidade/Cliente - Sint'#233'tico'
      )
    end
    object CkBZebrado: TCheckBox
      Left = 6
      Top = 243
      Width = 111
      Height = 17
      TabStop = False
      Caption = 'Imprimir "&Zebrado"'
      Checked = True
      State = cbChecked
      TabOrder = 9
    end
    object EdtCd_Cidade: TCurrencyEdit
      Tag = 2
      Left = 5
      Top = 90
      Width = 50
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '###'
      TabOrder = 12
      OnExit = EdtCd_CidadeExit
      OnKeyDown = EdtCd_LabSelKeyDown
    end
    object EdtNm_Cidade: TEdit
      Left = 76
      Top = 90
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
      TabOrder = 13
    end
    object SctRepCliente: TSctReport
      Left = 284
      Top = 119
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
      TabOrder = 16
      Visible = False
      Minimized = True
      Prompt = True
      AutoRun = False
      SuppressStatus = False
      PixelsPerInch = 96
      STop = 29
      SLeft = 362
      SWidth = 836
      SHeight = 581
      MTop = 119
      MLeft = 284
      SAlign = alNone
      Version = vAce1_0
      object SctGrouppage6: TSctGrouppage
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
        Description = 'Vendas por Lab/Fab por Clientes'
        CloseDataSet = False
        DataRange = drAllRecords
        OmitLastPgFt = False
        Head = SctBand32
        Detail = SctBand34
        Foot = SctBand36
        PageHead = SctBand33
        PageFoot = SctBand35
        DataSource = DsCliente
        Order = 1
        object SctLevel34: TSctLevel
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          IsHeader = True
        end
        object SctLevel35: TSctLevel
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          IsHeader = True
        end
        object SctLevel36: TSctLevel
          Left = 0
          Top = 0
          Width = 0
          Height = 0
        end
        object SctLevel37: TSctLevel
          Left = 0
          Top = 0
          Width = 0
          Height = 0
        end
        object SctLevel38: TSctLevel
          Left = 0
          Top = 0
          Width = 0
          Height = 0
        end
        object SctDateTimeVar6: TSctDateTimeVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          UpdateLevel = SctLevel34
          AutoVar = True
          ID = vidDateTimeVar
        end
        object SctPageVar6: TSctPageVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          UpdateLevel = SctLevel35
          AutoVar = True
          ID = vidPageVar
        end
        object SctDataSourceGuide31: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel36
          DataSource = DmMaster.DsUsuario
        end
        object SctDataSourceGuide32: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel36
          DataSource = DmMaster.DsFilial
        end
        object SctDataSourceGuide33: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel36
          DataSource = FrmFoto_Grupo_Find.DsFind
        end
        object SctDBVar6: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_Filial'
          DataSource = DmMaster.DsFilial
          UpdateLevel = SctLevel36
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDataSourceGuide34: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel36
          DataSource = FrmCidade_Find.DsFind
        end
        object SctGroup5: TSctGroup
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Header = SctBand37
          Footer = SctBand38
          Variable = adodsclientecd_groupVar
          Level = 0
        end
        object SctLevel39: TSctLevel
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          IsHeader = True
        end
        object SctLevel40: TSctLevel
          Left = 0
          Top = 0
          Width = 0
          Height = 0
        end
        object SctDataSourceGuide35: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel36
          DataSource = DsAnalitico
        end
        object SctDataSourceGuide36: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel36
          DataSource = DsSintetico
        end
        object SctDataSourceGuide37: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel36
          DataSource = DsCliAnalitico
        end
        object SctDataSourceGuide38: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel36
          DataSource = DsCliSintetico
        end
        object SctDataSourceGuide39: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel36
          DataSource = DsCidade
        end
        object SctDataSourceGuide40: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel36
          DataSource = DsProduto
        end
        object DataSourceGuide30: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel36
          DataSource = DsCliente
        end
        object adodsclientecd_laboratorioVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'cd_laboratorio'
          DataSource = DsCliente
          UpdateLevel = SctLevel36
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsclientenm_laboratorioVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nm_laboratorio'
          DataSource = DsCliente
          UpdateLevel = SctLevel36
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsclientecd_cidadeVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'cd_cidade'
          DataSource = DsCliente
          UpdateLevel = SctLevel36
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsclientenm_cidadeVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nm_cidade'
          DataSource = DsCliente
          UpdateLevel = SctLevel36
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsclientecd_emitenteVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'cd_emitente'
          DataSource = DsCliente
          UpdateLevel = SctLevel36
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsclientenm_emitenteVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nm_emitente'
          DataSource = DsCliente
          UpdateLevel = SctLevel36
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsclientevl_vendidoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'vl_vendido'
          DataSource = DsCliente
          UpdateLevel = SctLevel36
          AutoVar = False
          ID = vidAutoDataVar
        end
        object TotalOfvl_vendido2: TSctTotalvar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Variable = adodsclientevl_vendidoVar
          UpdateLevel = SctLevel36
          AutoVar = False
          ID = vidTotalVar
        end
        object adodsclientecd_groupVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'cd_group'
          DataSource = DsCliente
          UpdateLevel = SctLevel36
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctBand32: TSctBand
          Left = 0
          Top = 0
          Width = 748
          Height = 5
          ParentColor = True
          BandName = 'Report Header'
          Updatelevel = SctLevel34
          Visible = False
        end
        object SctBand33: TSctBand
          Left = 0
          Top = 20
          Width = 748
          Height = 39
          ParentColor = True
          BandName = 'Page Header'
          Updatelevel = SctLevel35
          object Sctvarlabel96: TSctvarlabel
            Left = 2
            Top = 1
            Width = 379
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Vendas por Laborat'#243'rio/Fabricante por Cidades/Clientes'
          end
          object Sctvarlabel112: TSctvarlabel
            Left = 601
            Top = 1
            Width = 31
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Data:'
          end
          object Sctvarlabel113: TSctvarlabel
            Left = 634
            Top = 1
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = SctDateTimeVar6
            DataFormat.DisplayFormat = 'dd/mm/yyyy'
          end
          object Sctvarlabel114: TSctvarlabel
            Left = 598
            Top = 18
            Width = 34
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Hora:'
          end
          object Sctvarlabel115: TSctvarlabel
            Left = 634
            Top = 18
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = SctDateTimeVar6
            DataFormat.DisplayFormat = 'hh:mm:ss'
          end
          object SctLine32: TSctLine
            Left = 0
            Top = 31
            Width = 698
            Height = 7
          end
          object SctTxtPerCliente: TSctvarlabel
            Left = 2
            Top = 18
            Width = 224
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
          end
        end
        object SctBand34: TSctBand
          Left = 0
          Top = 142
          Width = 748
          Height = 21
          ParentColor = True
          BandName = 'Detail'
          Updatelevel = SctLevel36
          OnBeforePrint = SctBand34BeforePrint
          object Sctvarlabel116: TSctvarlabel
            Left = 0
            Top = 2
            Width = 38
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsclientecd_emitenteVar
          end
          object Sctvarlabel117: TSctvarlabel
            Left = 43
            Top = 2
            Width = 493
            Height = 17
            Variable = adodsclientenm_emitenteVar
          end
          object Sctvarlabel118: TSctvarlabel
            Left = 545
            Top = 2
            Width = 70
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsclientevl_vendidoVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
          end
          object SctVarPr_Cliente: TSctvarlabel
            Left = 620
            Top = 2
            Width = 77
            Height = 17
            AlignHorizontal = laRight
            Caption = '0,00'
          end
        end
        object SctBand35: TSctBand
          Left = 0
          Top = 213
          Width = 748
          Height = 20
          ParentColor = True
          BandName = 'Page Footer'
          Updatelevel = SctLevel37
          object SctLine33: TSctLine
            Left = 0
            Top = 1
            Width = 698
            Height = 7
            AlignVertical = laTop
          end
          object Sctvarlabel122: TSctvarlabel
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
            Variable = SctDBVar6
          end
          object Sctvarlabel123: TSctvarlabel
            Left = 616
            Top = 2
            Width = 44
            Height = 17
            AlignHorizontal = laRight
            Caption = 'P'#225'gina:'
          end
          object Sctvarlabel124: TSctvarlabel
            Left = 663
            Top = 2
            Width = 35
            Height = 17
            AlignHorizontal = laRight
            Variable = SctPageVar6
            DataFormat.DisplayFormat = '#,###'
          end
        end
        object SctBand36: TSctBand
          Left = 0
          Top = 248
          Width = 748
          Height = 20
          ParentColor = True
          BandName = 'Report Footer'
          Updatelevel = SctLevel38
          object SctLine34: TSctLine
            Left = 470
            Top = 1
            Width = 144
            Height = 5
            AlignVertical = laTop
          end
          object SctTotalvarLabel12: TSctTotalvarLabel
            Left = 545
            Top = 3
            Width = 70
            Height = 17
            TotalVariable = TotalOfvl_vendido2
            DataFormat.DisplayFormat = '#,##0.00'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Sctvarlabel125: TSctvarlabel
            Left = 453
            Top = 3
            Width = 87
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
        object SctSubBand6: TSctSubBand
          Left = 0
          Top = 74
          Width = 748
          Height = 20
          Color = 16316664
          BandName = 'PageHeaderBandSub'
          Updatelevel = SctLevel35
          Band = SctBand33
          Above = False
          object SctLine35: TSctLine
            Left = 0
            Top = 13
            Width = 698
            Height = 7
          end
          object Sctvarlabel126: TSctvarlabel
            Left = 0
            Top = 0
            Width = 38
            Height = 17
            AlignHorizontal = laRight
            Caption = 'C'#243'digo'
          end
          object Sctvarlabel127: TSctvarlabel
            Left = 43
            Top = 0
            Width = 133
            Height = 17
            Caption = 'Nome do Cliente'
          end
          object Sctvarlabel128: TSctvarlabel
            Left = 620
            Top = 1
            Width = 77
            Height = 17
            AlignHorizontal = laRight
            Caption = '% sobre o total'
          end
          object Sctvarlabel129: TSctvarlabel
            Left = 545
            Top = 0
            Width = 70
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Total Vendido'
          end
        end
        object SctBand37: TSctBand
          Left = 0
          Top = 109
          Width = 748
          Height = 18
          Color = 16316664
          BandName = 'Group Header'
          Updatelevel = SctLevel39
          NewPageRepeat = True
          OnBeforePrint = SctBand37BeforePrint
          object Sctvarlabel132: TSctvarlabel
            Left = 1
            Top = 0
            Width = 400
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Variable = adodsclientenm_laboratorioVar
          end
          object SctLine36: TSctLine
            Left = 0
            Top = 11
            Width = 698
            Height = 7
          end
          object Sctvarlabel133: TSctvarlabel
            Left = 405
            Top = 0
            Width = 291
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Variable = adodsclientenm_cidadeVar
          end
        end
        object SctBand38: TSctBand
          Left = 0
          Top = 178
          Width = 748
          Height = 20
          ParentColor = True
          BandName = 'Group Footer'
          Updatelevel = SctLevel40
          object SctLine37: TSctLine
            Left = 385
            Top = 1
            Width = 229
            Height = 5
            AlignVertical = laTop
          end
          object SctTotalvarLabel13: TSctTotalvarLabel
            Left = 545
            Top = 3
            Width = 70
            Height = 17
            TotalVariable = TotalOfvl_vendido2
            DataFormat.DisplayFormat = '#,##0.00'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Sctvarlabel134: TSctvarlabel
            Left = 380
            Top = 3
            Width = 160
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Total do Fabricante/Cidade:'
          end
        end
      end
    end
    object SctRepAnalitico: TSctReport
      Left = 7
      Top = 188
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
      TabOrder = 7
      Visible = False
      Minimized = True
      Prompt = True
      AutoRun = False
      SuppressStatus = False
      PixelsPerInch = 96
      STop = 90
      SLeft = 423
      SWidth = 836
      SHeight = 581
      MTop = 188
      MLeft = 7
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
        PageSetup.LeftMargin = 0.3
        PageSetup.RightMargin = 0.3
        BorderType = btNone
        Description = 'Vendas por Laborat'#243'rio/Fabricante Anal'#237'tico'
        CloseDataSet = False
        DataRange = drAllRecords
        OmitLastPgFt = False
        Head = ReportHeaderBand
        Detail = SctDetailAnalitico
        Foot = ReportFooterBand
        PageHead = PageHeaderBand
        PageFoot = PageFooterBand
        DataSource = DsAnalitico
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
          DataSource = FrmFoto_Grupo_Find.DsFind
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
        object DataSourceGuide4: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = FrmCidade_Find.DsFind
        end
        object Group: TSctGroup
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Header = GroupHeader
          Footer = GroupFooter
          Variable = adodsanaliticocd_laboratorioVar
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
        object DataSourceGuide: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = DsAnalitico
        end
        object adodsanaliticocd_laboratorioVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'cd_laboratorio'
          DataSource = DsAnalitico
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsanaliticonm_laboratorioVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nm_laboratorio'
          DataSource = DsAnalitico
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsanaliticocd_produtoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'cd_produto'
          DataSource = DsAnalitico
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsanaliticonm_produtoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nm_produto'
          DataSource = DsAnalitico
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsanaliticovl_vendaVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'vl_venda'
          DataSource = DsAnalitico
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsanaliticoqt_vendidoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'qt_vendido'
          DataSource = DsAnalitico
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object TotalOfvl_venda: TSctTotalvar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Variable = adodsanaliticovl_vendaVar
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidTotalVar
        end
        object TotalOfqt_vendido: TSctTotalvar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Variable = adodsanaliticoqt_vendidoVar
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidTotalVar
        end
        object DataSourceGuide5: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = DsSintetico
        end
        object DataSourceGuide7: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = DsCliAnalitico
        end
        object DataSourceGuide12: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = DsCliSintetico
        end
        object DataSourceGuide24: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = DsCidade
        end
        object DataSourceGuide29: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = DsProduto
        end
        object DataSourceGuide31: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = DsCliente
        end
        object ReportHeaderBand: TSctBand
          Left = 0
          Top = 0
          Width = 786
          Height = 5
          ParentColor = True
          BandName = 'Report Header'
          Updatelevel = ReportHeaderBandlevel
          Visible = False
        end
        object PageHeaderBand: TSctBand
          Left = 0
          Top = 20
          Width = 786
          Height = 39
          ParentColor = True
          BandName = 'Page Header'
          Updatelevel = PageHeaderBandlevel
          object SctTitle: TSctvarlabel
            Left = 2
            Top = 1
            Width = 304
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Vendas por Laborat'#243'rio/Fabricante - Anal'#237'tico'
          end
          object Sctvarlabel1: TSctvarlabel
            Left = 638
            Top = 1
            Width = 31
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Data:'
          end
          object Sctvarlabel2: TSctvarlabel
            Left = 671
            Top = 1
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = svarDateTime
            DataFormat.DisplayFormat = 'dd/mm/yyyy'
          end
          object Sctvarlabel3: TSctvarlabel
            Left = 635
            Top = 18
            Width = 34
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Hora:'
          end
          object Sctvarlabel4: TSctvarlabel
            Left = 671
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
            Width = 736
            Height = 7
          end
          object SctVarPerAnalitico: TSctvarlabel
            Left = 1
            Top = 18
            Width = 313
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Per'#237'odo'
          end
        end
        object SctDetailAnalitico: TSctBand
          Left = 0
          Top = 141
          Width = 786
          Height = 21
          ParentColor = True
          BandName = 'SctDetailAnalitico'
          Updatelevel = DetailBandlevel
          Stretch = True
          OnBeforePrint = SctBand14BeforePrint
          object Sctvarlabel7: TSctvarlabel
            Left = 58
            Top = 2
            Width = 60
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsanaliticocd_produtoVar
          end
          object Sctvarlabel8: TSctvarlabel
            Left = 121
            Top = 2
            Width = 459
            Height = 17
            Variable = adodsanaliticonm_produtoVar
          end
          object Sctvarlabel15: TSctvarlabel
            Left = 655
            Top = 2
            Width = 80
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsanaliticovl_vendaVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
          end
          object Sctvarlabel16: TSctvarlabel
            Left = 585
            Top = 3
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsanaliticoqt_vendidoVar
            DataFormat.DisplayFormat = '#,##0.0##'
            DataFormat.Digits = 3
          end
        end
        object PageFooterBand: TSctBand
          Left = 0
          Top = 213
          Width = 786
          Height = 20
          ParentColor = True
          BandName = 'Page Footer'
          Updatelevel = PageFooterBandlevel
          object SctLine4: TSctLine
            Left = 0
            Top = 1
            Width = 736
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
            Left = 654
            Top = 2
            Width = 44
            Height = 17
            AlignHorizontal = laRight
            Caption = 'P'#225'gina:'
          end
          object Sctvarlabel13: TSctvarlabel
            Left = 701
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
          Top = 248
          Width = 786
          Height = 20
          ParentColor = True
          BandName = 'Report Footer'
          Updatelevel = ReportFooterBandlevel
          object SctLine3: TSctLine
            Left = 438
            Top = 1
            Width = 296
            Height = 5
            AlignVertical = laTop
          end
          object SctTotalvarLabel1: TSctTotalvarLabel
            Left = 655
            Top = 3
            Width = 80
            Height = 17
            TotalVariable = TotalOfvl_venda
            DataFormat.DisplayFormat = '#,##0.00'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Sctvarlabel14: TSctvarlabel
            Left = 481
            Top = 3
            Width = 99
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
          object SctTotalvarLabel17: TSctTotalvarLabel
            Left = 585
            Top = 3
            Width = 65
            Height = 17
            TotalVariable = TotalOfqt_vendido
            DataFormat.DisplayFormat = '#,##0.##'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object PageHeaderBandSub: TSctSubBand
          Left = 0
          Top = 74
          Width = 786
          Height = 20
          Color = 16316664
          BandName = 'PageHeaderBandSub'
          Updatelevel = PageHeaderBandlevel
          Band = PageHeaderBand
          Above = False
          object SctLine2: TSctLine
            Left = 0
            Top = 13
            Width = 736
            Height = 7
          end
          object Sctvarlabel5: TSctvarlabel
            Left = 58
            Top = 0
            Width = 60
            Height = 17
            AlignHorizontal = laRight
            Caption = 'C'#243'digo'
          end
          object Sctvarlabel6: TSctvarlabel
            Left = 121
            Top = 0
            Width = 133
            Height = 17
            Caption = 'Produto'
          end
          object Sctvarlabel17: TSctvarlabel
            Left = 670
            Top = 0
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Valor'
          end
          object Sctvarlabel10: TSctvarlabel
            Left = 585
            Top = 1
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Quantidade'
          end
        end
        object GroupHeader: TSctBand
          Left = 0
          Top = 109
          Width = 786
          Height = 17
          Color = 16316664
          BandName = 'Group Header'
          Updatelevel = GroupHeaderLevel
          NewPageRepeat = True
          object Sctvarlabel9: TSctvarlabel
            Left = 1
            Top = 0
            Width = 313
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Variable = adodsanaliticonm_laboratorioVar
          end
        end
        object GroupFooter: TSctBand
          Left = 0
          Top = 177
          Width = 786
          Height = 21
          ParentColor = True
          BandName = 'Group Footer'
          Updatelevel = GroupFooterLevel
          OnBeforePrint = GroupFooterBeforePrint
          object SctLine6: TSctLine
            Left = 106
            Top = 1
            Width = 628
            Height = 5
            AlignVertical = laTop
          end
          object SctTotalvarLabel2: TSctTotalvarLabel
            Left = 655
            Top = 3
            Width = 80
            Height = 17
            TotalVariable = TotalOfvl_venda
            DataFormat.DisplayFormat = '#,##0.00'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Sctvarlabel22: TSctvarlabel
            Left = 481
            Top = 3
            Width = 99
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Total do Lab/Fab:'
          end
          object SctTxtLucro: TSctvarlabel
            Left = 151
            Top = 3
            Width = 324
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Lucro:'
          end
          object SctTotalvarLabel16: TSctTotalvarLabel
            Left = 585
            Top = 3
            Width = 65
            Height = 17
            TotalVariable = TotalOfqt_vendido
            DataFormat.DisplayFormat = '#,##0.##'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
      end
    end
    object SctRepCidade: TSctReport
      Left = 110
      Top = 119
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
      TabOrder = 14
      Visible = False
      Minimized = True
      Prompt = True
      AutoRun = False
      SuppressStatus = False
      PixelsPerInch = 96
      STop = 64
      SLeft = 362
      SWidth = 836
      SHeight = 581
      MTop = 119
      MLeft = 110
      SAlign = alNone
      Version = vAce1_0
      object SctGrouppage4: TSctGrouppage
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
        Description = 'Vendas por Lab/Fab por Cidade'
        CloseDataSet = False
        DataRange = drAllRecords
        OmitLastPgFt = False
        Head = SctBand19
        Detail = DetailBand
        Foot = SctBand22
        PageHead = SctBand20
        PageFoot = SctBand21
        DataSource = DsCidade
        Order = 1
        object SctLevel20: TSctLevel
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          IsHeader = True
        end
        object SctLevel21: TSctLevel
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          IsHeader = True
        end
        object SctLevel22: TSctLevel
          Left = 0
          Top = 0
          Width = 0
          Height = 0
        end
        object SctLevel23: TSctLevel
          Left = 0
          Top = 0
          Width = 0
          Height = 0
        end
        object SctLevel24: TSctLevel
          Left = 0
          Top = 0
          Width = 0
          Height = 0
        end
        object SctDateTimeVar4: TSctDateTimeVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          UpdateLevel = SctLevel20
          AutoVar = True
          ID = vidDateTimeVar
        end
        object SctPageVar4: TSctPageVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          UpdateLevel = SctLevel21
          AutoVar = True
          ID = vidPageVar
        end
        object SctDataSourceGuide18: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel22
          DataSource = DmMaster.DsUsuario
        end
        object SctDataSourceGuide19: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel22
          DataSource = DmMaster.DsFilial
        end
        object SctDataSourceGuide20: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel22
          DataSource = FrmFoto_Grupo_Find.DsFind
        end
        object SctDBVar4: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_Filial'
          DataSource = DmMaster.DsFilial
          UpdateLevel = SctLevel22
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDataSourceGuide21: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel22
          DataSource = FrmCidade_Find.DsFind
        end
        object SctGroup3: TSctGroup
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Header = SctBand23
          Footer = SctBand24
          Variable = adodscidadecd_laboratorioVar
          Level = 0
        end
        object SctLevel25: TSctLevel
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          IsHeader = True
        end
        object SctLevel26: TSctLevel
          Left = 0
          Top = 0
          Width = 0
          Height = 0
        end
        object DataSourceGuide16: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel22
          DataSource = DsAnalitico
        end
        object DataSourceGuide17: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel22
          DataSource = DsSintetico
        end
        object DataSourceGuide18: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel22
          DataSource = DsCliAnalitico
        end
        object DataSourceGuide19: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel22
          DataSource = DsCliSintetico
        end
        object DataSourceGuide20: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel22
          DataSource = DsCidade
        end
        object adodscidadenm_laboratorioVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nm_laboratorio'
          DataSource = DsCidade
          UpdateLevel = SctLevel22
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodscidadecd_cidadeVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'cd_cidade'
          DataSource = DsCidade
          UpdateLevel = SctLevel22
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodscidadenm_cidadeVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nm_cidade'
          DataSource = DsCidade
          UpdateLevel = SctLevel22
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodscidadevl_vendidoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'vl_vendido'
          DataSource = DsCidade
          UpdateLevel = SctLevel22
          AutoVar = False
          ID = vidAutoDataVar
        end
        object TotalOfvl_vendido: TSctTotalvar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Variable = adodscidadevl_vendidoVar
          UpdateLevel = SctLevel22
          AutoVar = False
          ID = vidTotalVar
        end
        object adodscidadecd_laboratorioVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'cd_laboratorio'
          DataSource = DsCidade
          UpdateLevel = SctLevel22
          AutoVar = False
          ID = vidAutoDataVar
        end
        object DataSourceGuide25: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel22
          DataSource = DsProduto
        end
        object DataSourceGuide35: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel22
          DataSource = DsCliente
        end
        object SctBand19: TSctBand
          Left = 0
          Top = 0
          Width = 748
          Height = 5
          ParentColor = True
          BandName = 'Report Header'
          Updatelevel = SctLevel20
          Visible = False
        end
        object SctBand20: TSctBand
          Left = 0
          Top = 20
          Width = 748
          Height = 39
          ParentColor = True
          BandName = 'Page Header'
          Updatelevel = SctLevel21
          object Sctvarlabel60: TSctvarlabel
            Left = 2
            Top = 1
            Width = 379
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Vendas por Laborat'#243'rio/Fabricante por Cidades - Sintetico'
          end
          object Sctvarlabel71: TSctvarlabel
            Left = 601
            Top = 1
            Width = 31
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Data:'
          end
          object Sctvarlabel72: TSctvarlabel
            Left = 634
            Top = 1
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = SctDateTimeVar4
            DataFormat.DisplayFormat = 'dd/mm/yyyy'
          end
          object Sctvarlabel73: TSctvarlabel
            Left = 598
            Top = 18
            Width = 34
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Hora:'
          end
          object Sctvarlabel74: TSctvarlabel
            Left = 634
            Top = 18
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = SctDateTimeVar4
            DataFormat.DisplayFormat = 'hh:mm:ss'
          end
          object SctLine20: TSctLine
            Left = 0
            Top = 31
            Width = 698
            Height = 7
          end
          object SctTxtPerCidade: TSctvarlabel
            Left = 2
            Top = 18
            Width = 224
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
          end
        end
        object DetailBand: TSctBand
          Left = 0
          Top = 142
          Width = 748
          Height = 21
          ParentColor = True
          BandName = 'Detail'
          Updatelevel = SctLevel22
          OnBeforePrint = DetailBandBeforePrint
          object Sctvarlabel75: TSctvarlabel
            Left = 11
            Top = 2
            Width = 38
            Height = 17
            AlignHorizontal = laRight
            Variable = adodscidadecd_cidadeVar
          end
          object Sctvarlabel76: TSctvarlabel
            Left = 54
            Top = 2
            Width = 327
            Height = 17
            Variable = adodscidadenm_cidadeVar
          end
          object Sctvarlabel86: TSctvarlabel
            Left = 545
            Top = 2
            Width = 70
            Height = 17
            AlignHorizontal = laRight
            Variable = adodscidadevl_vendidoVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
          end
          object SctVarPr_CidLab: TSctvarlabel
            Left = 620
            Top = 2
            Width = 77
            Height = 17
            AlignHorizontal = laRight
            Caption = '0,00'
          end
        end
        object SctBand21: TSctBand
          Left = 0
          Top = 213
          Width = 748
          Height = 20
          ParentColor = True
          BandName = 'Page Footer'
          Updatelevel = SctLevel23
          object SctLine21: TSctLine
            Left = 0
            Top = 1
            Width = 698
            Height = 7
            AlignVertical = laTop
          end
          object Sctvarlabel77: TSctvarlabel
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
            Variable = SctDBVar4
          end
          object Sctvarlabel78: TSctvarlabel
            Left = 616
            Top = 2
            Width = 44
            Height = 17
            AlignHorizontal = laRight
            Caption = 'P'#225'gina:'
          end
          object Sctvarlabel79: TSctvarlabel
            Left = 663
            Top = 2
            Width = 35
            Height = 17
            AlignHorizontal = laRight
            Variable = SctPageVar4
            DataFormat.DisplayFormat = '#,###'
          end
        end
        object SctBand22: TSctBand
          Left = 0
          Top = 248
          Width = 748
          Height = 20
          ParentColor = True
          BandName = 'Report Footer'
          Updatelevel = SctLevel24
          object SctLine22: TSctLine
            Left = 470
            Top = 1
            Width = 144
            Height = 5
            AlignVertical = laTop
          end
          object SctTotalvarLabel8: TSctTotalvarLabel
            Left = 545
            Top = 3
            Width = 70
            Height = 17
            TotalVariable = TotalOfvl_vendido
            DataFormat.DisplayFormat = '#,##0.00'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Sctvarlabel80: TSctvarlabel
            Left = 453
            Top = 3
            Width = 87
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
        object SctSubBand4: TSctSubBand
          Left = 0
          Top = 74
          Width = 748
          Height = 20
          Color = 16316664
          BandName = 'PageHeaderBandSub'
          Updatelevel = SctLevel21
          Band = SctBand20
          Above = False
          object SctLine23: TSctLine
            Left = 0
            Top = 13
            Width = 698
            Height = 7
          end
          object Sctvarlabel81: TSctvarlabel
            Left = 11
            Top = 0
            Width = 38
            Height = 17
            AlignHorizontal = laRight
            Caption = 'C'#243'digo'
          end
          object Sctvarlabel82: TSctvarlabel
            Left = 54
            Top = 0
            Width = 133
            Height = 17
            Caption = 'Nome da Cidade'
          end
          object Sctvarlabel84: TSctvarlabel
            Left = 620
            Top = 1
            Width = 77
            Height = 17
            AlignHorizontal = laRight
            Caption = '% sobre o total'
          end
          object Sctvarlabel85: TSctvarlabel
            Left = 545
            Top = 0
            Width = 70
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Total Vendido'
          end
        end
        object SctBand23: TSctBand
          Left = 0
          Top = 109
          Width = 748
          Height = 18
          Color = 16316664
          BandName = 'Group Header'
          Updatelevel = SctLevel25
          NewPageRepeat = True
          OnBeforePrint = SctBand23BeforePrint
          object Sctvarlabel83: TSctvarlabel
            Left = 1
            Top = 0
            Width = 313
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Variable = adodscidadenm_laboratorioVar
          end
          object SctLine24: TSctLine
            Left = 0
            Top = 11
            Width = 698
            Height = 7
          end
        end
        object SctBand24: TSctBand
          Left = 0
          Top = 178
          Width = 748
          Height = 20
          ParentColor = True
          BandName = 'Group Footer'
          Updatelevel = SctLevel26
          object SctLine25: TSctLine
            Left = 425
            Top = 1
            Width = 189
            Height = 5
            AlignVertical = laTop
          end
          object SctTotalvarLabel9: TSctTotalvarLabel
            Left = 545
            Top = 3
            Width = 70
            Height = 17
            TotalVariable = TotalOfvl_vendido
            DataFormat.DisplayFormat = '#,##0.00'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Sctvarlabel88: TSctvarlabel
            Left = 415
            Top = 3
            Width = 125
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Total do Fabricante:'
          end
        end
      end
    end
    object SctRepProduto: TSctReport
      Left = 199
      Top = 119
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
      TabOrder = 15
      Visible = False
      Minimized = True
      Prompt = True
      AutoRun = False
      SuppressStatus = False
      PixelsPerInch = 96
      STop = 16
      SLeft = 394
      SWidth = 836
      SHeight = 581
      MTop = 119
      MLeft = 199
      SAlign = alNone
      Version = vAce1_0
      object SctGrouppage5: TSctGrouppage
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
        Description = 'Vendas por Lab/Fab por Produto'
        CloseDataSet = False
        DataRange = drAllRecords
        OmitLastPgFt = False
        Head = SctBand25
        Detail = SctBand27
        Foot = SctBand29
        PageHead = SctBand26
        PageFoot = SctBand28
        DataSource = DsProduto
        Order = 1
        object SctLevel27: TSctLevel
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          IsHeader = True
        end
        object SctLevel28: TSctLevel
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          IsHeader = True
        end
        object SctLevel29: TSctLevel
          Left = 0
          Top = 0
          Width = 0
          Height = 0
        end
        object SctLevel30: TSctLevel
          Left = 0
          Top = 0
          Width = 0
          Height = 0
        end
        object SctLevel31: TSctLevel
          Left = 0
          Top = 0
          Width = 0
          Height = 0
        end
        object SctDateTimeVar5: TSctDateTimeVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          UpdateLevel = SctLevel27
          AutoVar = True
          ID = vidDateTimeVar
        end
        object SctPageVar5: TSctPageVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          UpdateLevel = SctLevel28
          AutoVar = True
          ID = vidPageVar
        end
        object SctDataSourceGuide17: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel29
          DataSource = DmMaster.DsUsuario
        end
        object SctDataSourceGuide22: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel29
          DataSource = DmMaster.DsFilial
        end
        object SctDataSourceGuide23: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel29
          DataSource = FrmFoto_Grupo_Find.DsFind
        end
        object SctDBVar5: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_Filial'
          DataSource = DmMaster.DsFilial
          UpdateLevel = SctLevel29
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDataSourceGuide24: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel29
          DataSource = FrmCidade_Find.DsFind
        end
        object SctGroup4: TSctGroup
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Header = SctBand30
          Footer = SctBand31
          Variable = adodsprodutocd_groupVar5
          Level = 0
        end
        object SctLevel32: TSctLevel
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          IsHeader = True
        end
        object SctLevel33: TSctLevel
          Left = 0
          Top = 0
          Width = 0
          Height = 0
        end
        object SctDataSourceGuide25: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel29
          DataSource = DsAnalitico
        end
        object SctDataSourceGuide26: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel29
          DataSource = DsSintetico
        end
        object SctDataSourceGuide27: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel29
          DataSource = DsCliAnalitico
        end
        object SctDataSourceGuide28: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel29
          DataSource = DsCliSintetico
        end
        object SctDataSourceGuide29: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel29
          DataSource = DsCidade
        end
        object SctDataSourceGuide30: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel29
          DataSource = DsProduto
        end
        object adodsprodutocd_laboratorioVar5: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'cd_laboratorio'
          DataSource = DsProduto
          UpdateLevel = SctLevel29
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsprodutonm_laboratorioVar5: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nm_laboratorio'
          DataSource = DsProduto
          UpdateLevel = SctLevel29
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsprodutocd_cidadeVar5: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'cd_cidade'
          DataSource = DsProduto
          UpdateLevel = SctLevel29
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsprodutonm_cidadeVar5: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nm_cidade'
          DataSource = DsProduto
          UpdateLevel = SctLevel29
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsprodutocd_produtoVar5: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'cd_produto'
          DataSource = DsProduto
          UpdateLevel = SctLevel29
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsprodutonm_produtoVar5: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nm_produto'
          DataSource = DsProduto
          UpdateLevel = SctLevel29
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsprodutoqt_vendidoVar5: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'qt_vendido'
          DataSource = DsProduto
          UpdateLevel = SctLevel29
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsprodutovl_vendidoVar5: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'vl_vendido'
          DataSource = DsProduto
          UpdateLevel = SctLevel29
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsprodutosg_unidadeVar5: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'sg_unidade'
          DataSource = DsProduto
          UpdateLevel = SctLevel29
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsprodutocd_groupVar5: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'cd_group'
          DataSource = DsProduto
          UpdateLevel = SctLevel29
          AutoVar = False
          ID = vidAutoDataVar
        end
        object TotalOfvl_vendido1: TSctTotalvar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Variable = adodsprodutovl_vendidoVar5
          UpdateLevel = SctLevel29
          AutoVar = False
          ID = vidTotalVar
        end
        object DataSourceGuide36: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel29
          DataSource = DsCliente
        end
        object TotalOfqt_vendido1: TSctTotalvar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Variable = adodsprodutoqt_vendidoVar5
          UpdateLevel = SctLevel29
          AutoVar = False
          ID = vidTotalVar
        end
        object SctBand25: TSctBand
          Left = 0
          Top = 0
          Width = 748
          Height = 5
          ParentColor = True
          BandName = 'Report Header'
          Updatelevel = SctLevel27
          Visible = False
        end
        object SctBand26: TSctBand
          Left = 0
          Top = 20
          Width = 748
          Height = 39
          ParentColor = True
          BandName = 'Page Header'
          Updatelevel = SctLevel28
          object Sctvarlabel87: TSctvarlabel
            Left = 2
            Top = 1
            Width = 379
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Vendas por Laborat'#243'rio/Fabricante por Cidades/Produtos'
          end
          object Sctvarlabel89: TSctvarlabel
            Left = 601
            Top = 1
            Width = 31
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Data:'
          end
          object Sctvarlabel90: TSctvarlabel
            Left = 634
            Top = 1
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = SctDateTimeVar5
            DataFormat.DisplayFormat = 'dd/mm/yyyy'
          end
          object Sctvarlabel91: TSctvarlabel
            Left = 598
            Top = 18
            Width = 34
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Hora:'
          end
          object Sctvarlabel92: TSctvarlabel
            Left = 634
            Top = 18
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = SctDateTimeVar5
            DataFormat.DisplayFormat = 'hh:mm:ss'
          end
          object SctLine26: TSctLine
            Left = 0
            Top = 31
            Width = 698
            Height = 7
          end
          object SctTxtPerProduto: TSctvarlabel
            Left = 2
            Top = 18
            Width = 224
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
          end
        end
        object SctBand27: TSctBand
          Left = 0
          Top = 142
          Width = 748
          Height = 21
          ParentColor = True
          BandName = 'Detail'
          Updatelevel = SctLevel29
          OnBeforePrint = SctBand27BeforePrint
          object Sctvarlabel93: TSctvarlabel
            Left = 0
            Top = 2
            Width = 38
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsprodutocd_produtoVar5
          end
          object Sctvarlabel94: TSctvarlabel
            Left = 43
            Top = 2
            Width = 384
            Height = 17
            Variable = adodsprodutonm_produtoVar5
          end
          object Sctvarlabel95: TSctvarlabel
            Left = 545
            Top = 2
            Width = 70
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsprodutovl_vendidoVar5
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
          end
          object SctVarPr_Total: TSctvarlabel
            Left = 620
            Top = 3
            Width = 77
            Height = 17
            AlignHorizontal = laRight
            Caption = '0,00'
          end
          object Sctvarlabel109: TSctvarlabel
            Left = 465
            Top = 2
            Width = 75
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsprodutoqt_vendidoVar5
            DataFormat.DisplayFormat = '#,##0.0##'
            DataFormat.Digits = 3
          end
          object Sctvarlabel110: TSctvarlabel
            Left = 431
            Top = 2
            Width = 29
            Height = 17
            Variable = adodsprodutosg_unidadeVar5
          end
        end
        object SctBand28: TSctBand
          Left = 0
          Top = 213
          Width = 748
          Height = 20
          ParentColor = True
          BandName = 'Page Footer'
          Updatelevel = SctLevel30
          object SctLine27: TSctLine
            Left = 0
            Top = 1
            Width = 698
            Height = 7
            AlignVertical = laTop
          end
          object Sctvarlabel97: TSctvarlabel
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
            Variable = SctDBVar5
          end
          object Sctvarlabel98: TSctvarlabel
            Left = 616
            Top = 2
            Width = 44
            Height = 17
            AlignHorizontal = laRight
            Caption = 'P'#225'gina:'
          end
          object Sctvarlabel99: TSctvarlabel
            Left = 663
            Top = 2
            Width = 35
            Height = 17
            AlignHorizontal = laRight
            Variable = SctPageVar5
            DataFormat.DisplayFormat = '#,###'
          end
        end
        object SctBand29: TSctBand
          Left = 0
          Top = 248
          Width = 748
          Height = 20
          ParentColor = True
          BandName = 'Report Footer'
          Updatelevel = SctLevel31
          object SctLine28: TSctLine
            Left = 302
            Top = 1
            Width = 312
            Height = 5
            AlignVertical = laTop
          end
          object SctTotalvarLabel10: TSctTotalvarLabel
            Left = 545
            Top = 3
            Width = 70
            Height = 17
            TotalVariable = TotalOfvl_vendido1
            DataFormat.DisplayFormat = '#,##0.00'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Sctvarlabel100: TSctvarlabel
            Left = 375
            Top = 2
            Width = 87
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
          object SctTotalvarLabel15: TSctTotalvarLabel
            Left = 465
            Top = 1
            Width = 70
            Height = 17
            TotalVariable = TotalOfqt_vendido1
            DataFormat.DisplayFormat = '#,##0.#'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object SctSubBand5: TSctSubBand
          Left = 0
          Top = 74
          Width = 748
          Height = 20
          Color = 16316664
          BandName = 'PageHeaderBandSub'
          Updatelevel = SctLevel28
          Band = SctBand26
          Above = False
          object SctLine29: TSctLine
            Left = 0
            Top = 13
            Width = 698
            Height = 7
          end
          object Sctvarlabel101: TSctvarlabel
            Left = 0
            Top = 0
            Width = 38
            Height = 17
            AlignHorizontal = laRight
            Caption = 'C'#243'digo'
          end
          object Sctvarlabel102: TSctvarlabel
            Left = 43
            Top = 0
            Width = 133
            Height = 17
            Caption = 'Nome do Produto'
          end
          object Sctvarlabel103: TSctvarlabel
            Left = 620
            Top = 1
            Width = 77
            Height = 17
            AlignHorizontal = laRight
            Caption = '% sobre o total'
          end
          object Sctvarlabel104: TSctvarlabel
            Left = 545
            Top = 0
            Width = 70
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Total Vendido'
          end
          object Sctvarlabel107: TSctvarlabel
            Left = 431
            Top = 0
            Width = 29
            Height = 17
            AlignHorizontal = laCenter
            Caption = 'Unid.'
          end
          object Sctvarlabel108: TSctvarlabel
            Left = 465
            Top = 1
            Width = 75
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Quantidade'
          end
        end
        object SctBand30: TSctBand
          Left = 0
          Top = 109
          Width = 748
          Height = 18
          Color = 16316664
          BandName = 'Group Header'
          Updatelevel = SctLevel32
          object Sctvarlabel105: TSctvarlabel
            Left = 1
            Top = 0
            Width = 400
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Variable = adodsprodutonm_laboratorioVar5
          end
          object SctLine30: TSctLine
            Left = 0
            Top = 11
            Width = 698
            Height = 7
          end
          object Sctvarlabel111: TSctvarlabel
            Left = 405
            Top = 0
            Width = 291
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Variable = adodsprodutonm_cidadeVar5
          end
        end
        object SctBand31: TSctBand
          Left = 0
          Top = 178
          Width = 748
          Height = 20
          ParentColor = True
          BandName = 'Group Footer'
          Updatelevel = SctLevel33
          object SctLine31: TSctLine
            Left = 302
            Top = 1
            Width = 312
            Height = 5
            AlignVertical = laTop
          end
          object SctTotalvarLabel11: TSctTotalvarLabel
            Left = 545
            Top = 3
            Width = 70
            Height = 17
            TotalVariable = TotalOfvl_vendido1
            DataFormat.DisplayFormat = '#,##0.00'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Sctvarlabel106: TSctvarlabel
            Left = 302
            Top = 3
            Width = 160
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Total do Fabricante/Cidade:'
          end
          object SctTotalvarLabel14: TSctTotalvarLabel
            Left = 465
            Top = 0
            Width = 70
            Height = 17
            TotalVariable = TotalOfqt_vendido1
            DataFormat.DisplayFormat = '#,##0.#'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
      end
    end
    object SctRepSintetico: TSctReport
      Left = 91
      Top = 187
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
      TabOrder = 8
      Visible = False
      Minimized = True
      Prompt = True
      AutoRun = False
      SuppressStatus = False
      PixelsPerInch = 96
      STop = 53
      SLeft = 437
      SWidth = 836
      SHeight = 581
      MTop = 187
      MLeft = 91
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
        PageSetup.LeftMargin = 0.3
        PageSetup.RightMargin = 0.3
        BorderType = btNone
        Description = 'Vendas por Laborat'#243'rio/Fabricante Sint'#233'tico'
        CloseDataSet = False
        DataRange = drAllRecords
        OmitLastPgFt = False
        Head = SctBand1
        Detail = SctDetailSintetico
        Foot = SctBand5
        PageHead = SctBand2
        PageFoot = SctBand4
        DataSource = DsSintetico
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
          DataSource = DmMaster.DsUsuario
        end
        object SctDataSourceGuide2: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = DmMaster.DsFilial
        end
        object SctDataSourceGuide3: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = FrmFoto_Grupo_Find.DsFind
        end
        object SctDBVar1: TSctDBVar
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
        object SctDataSourceGuide4: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = FrmCidade_Find.DsFind
        end
        object SctDataSourceGuide5: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = DsAnalitico
        end
        object SctDataSourceGuide6: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = DsSintetico
        end
        object adodssinteticocd_laboratorioVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'cd_laboratorio'
          DataSource = DsSintetico
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodssinteticonm_laboratorioVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nm_laboratorio'
          DataSource = DsSintetico
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodssinteticovl_vendaVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'vl_venda'
          DataSource = DsSintetico
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object TotalOfvl_venda1: TSctTotalvar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Variable = adodssinteticovl_vendaVar
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidTotalVar
        end
        object DataSourceGuide6: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = DsCliAnalitico
        end
        object DataSourceGuide11: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = DsCliSintetico
        end
        object DataSourceGuide23: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = DsCidade
        end
        object DataSourceGuide28: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = DsProduto
        end
        object DataSourceGuide32: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = DsCliente
        end
        object adodssinteticoQt_VendaVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Qt_Venda'
          DataSource = DsSintetico
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctBand1: TSctBand
          Left = 0
          Top = 0
          Width = 786
          Height = 5
          ParentColor = True
          BandName = 'Report Header'
          Updatelevel = SctLevel1
          Visible = False
        end
        object SctBand2: TSctBand
          Left = 0
          Top = 20
          Width = 786
          Height = 39
          ParentColor = True
          BandName = 'Page Header'
          Updatelevel = SctLevel2
          object Sctvarlabel18: TSctvarlabel
            Left = 2
            Top = 1
            Width = 289
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Vendas por Laborat'#243'rio/Fabricante - Sint'#233'tico'
          end
          object Sctvarlabel19: TSctvarlabel
            Left = 638
            Top = 1
            Width = 31
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Data:'
          end
          object Sctvarlabel20: TSctvarlabel
            Left = 671
            Top = 1
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = SctDateTimeVar1
            DataFormat.DisplayFormat = 'dd/mm/yyyy'
          end
          object Sctvarlabel21: TSctvarlabel
            Left = 635
            Top = 18
            Width = 34
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Hora:'
          end
          object Sctvarlabel23: TSctvarlabel
            Left = 671
            Top = 18
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = SctDateTimeVar1
            DataFormat.DisplayFormat = 'hh:mm:ss'
          end
          object SctLine5: TSctLine
            Left = 0
            Top = 31
            Width = 736
            Height = 7
          end
          object SctVarPerSintetico: TSctvarlabel
            Left = 1
            Top = 18
            Width = 313
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Per'#237'odo'
          end
        end
        object SctDetailSintetico: TSctBand
          Left = 0
          Top = 109
          Width = 786
          Height = 22
          ParentColor = True
          BandName = 'SctDetailSintetico'
          Updatelevel = SctLevel3
          Stretch = True
          OnBeforePrint = SctBand14BeforePrint
          object Sctvarlabel25: TSctvarlabel
            Left = 0
            Top = 2
            Width = 60
            Height = 17
            AlignHorizontal = laRight
            Variable = adodssinteticocd_laboratorioVar
          end
          object Sctvarlabel26: TSctvarlabel
            Left = 63
            Top = 2
            Width = 515
            Height = 17
            Variable = adodssinteticonm_laboratorioVar
          end
          object Sctvarlabel27: TSctvarlabel
            Left = 655
            Top = 2
            Width = 80
            Height = 17
            AlignHorizontal = laRight
            Variable = adodssinteticovl_vendaVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
          end
          object Sctvarlabel120: TSctvarlabel
            Left = 584
            Top = 2
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = adodssinteticoQt_VendaVar
            DataFormat.DisplayFormat = '#,##0'
          end
        end
        object SctBand4: TSctBand
          Left = 0
          Top = 146
          Width = 786
          Height = 20
          ParentColor = True
          BandName = 'Page Footer'
          Updatelevel = SctLevel4
          object SctLine7: TSctLine
            Left = 0
            Top = 1
            Width = 736
            Height = 7
            AlignVertical = laTop
          end
          object Sctvarlabel29: TSctvarlabel
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
            Variable = SctDBVar1
          end
          object Sctvarlabel30: TSctvarlabel
            Left = 654
            Top = 2
            Width = 44
            Height = 17
            AlignHorizontal = laRight
            Caption = 'P'#225'gina:'
          end
          object Sctvarlabel31: TSctvarlabel
            Left = 701
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
          Top = 181
          Width = 786
          Height = 22
          ParentColor = True
          BandName = 'Report Footer'
          Updatelevel = SctLevel5
          object SctLine8: TSctLine
            Left = 540
            Top = 3
            Width = 194
            Height = 5
            AlignVertical = laTop
          end
          object SctTotalvarLabel3: TSctTotalvarLabel
            Left = 655
            Top = 5
            Width = 80
            Height = 17
            TotalVariable = TotalOfvl_venda1
            Level = SctLevel4
            DataFormat.DisplayFormat = '#,##0.00'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Sctvarlabel32: TSctvarlabel
            Left = 550
            Top = 5
            Width = 99
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
        object SctSubBand1: TSctSubBand
          Left = 0
          Top = 74
          Width = 786
          Height = 20
          Color = 16316664
          BandName = 'PageHeaderBandSub'
          Updatelevel = SctLevel2
          Band = SctBand2
          Above = False
          object SctLine9: TSctLine
            Left = 0
            Top = 13
            Width = 736
            Height = 7
          end
          object Sctvarlabel33: TSctvarlabel
            Left = 0
            Top = 0
            Width = 60
            Height = 17
            AlignHorizontal = laRight
            Caption = 'C'#243'digo'
          end
          object Sctvarlabel34: TSctvarlabel
            Left = 63
            Top = 0
            Width = 133
            Height = 17
            Caption = 'Laborat'#243'rio/Fabricante'
          end
          object Sctvarlabel35: TSctvarlabel
            Left = 670
            Top = 0
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Valor'
          end
          object Sctvarlabel119: TSctvarlabel
            Left = 584
            Top = 0
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Quantidade'
          end
        end
      end
    end
    object SctRepCliAnalitico: TSctReport
      Left = 177
      Top = 187
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
      TabOrder = 10
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
      MTop = 187
      MLeft = 177
      SAlign = alNone
      Version = vAce1_0
      object SctGrouppage2: TSctGrouppage
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
        PageSetup.LeftMargin = 0.3
        PageSetup.RightMargin = 0.3
        BorderType = btNone
        Description = 'Vendas por Laborat'#243'rio/Fabricante Anal'#237'tico'
        CloseDataSet = False
        DataRange = drAllRecords
        OmitLastPgFt = False
        Head = SctBand3
        Detail = SctBand7
        Foot = SctBand9
        PageHead = SctBand6
        PageFoot = SctBand8
        DataSource = DsCliAnalitico
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
        object SctDataSourceGuide7: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel8
          DataSource = DmMaster.DsUsuario
        end
        object SctDataSourceGuide8: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel8
          DataSource = DmMaster.DsFilial
        end
        object SctDataSourceGuide9: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel8
          DataSource = FrmFoto_Grupo_Find.DsFind
        end
        object SctDBVar2: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_Filial'
          DataSource = DmMaster.DsFilial
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDataSourceGuide10: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel8
          DataSource = FrmCidade_Find.DsFind
        end
        object SctGroup1: TSctGroup
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Header = SctBand10
          Footer = SctBand11
          Variable = adodsclianaliticonm_laboratorioVar
          Level = 0
        end
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
        end
        object SctDataSourceGuide11: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel8
          DataSource = DsCliAnalitico
        end
        object adodsclianaliticonm_laboratorioVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nm_laboratorio'
          DataSource = DsCliAnalitico
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsclianaliticonr_orcamentoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nr_orcamento'
          DataSource = DsCliAnalitico
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsclianaliticonm_emitenteVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nm_emitente'
          DataSource = DsCliAnalitico
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsclianaliticodt_faturaVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'dt_fatura'
          DataSource = DsCliAnalitico
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsclianaliticonm_funcionarioVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nm_funcionario'
          DataSource = DsCliAnalitico
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidAutoDataVar
        end
        object DataSourceGuide8: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel8
          DataSource = DsAnalitico
        end
        object DataSourceGuide9: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel8
          DataSource = DsSintetico
        end
        object adodsclianaliticovl_orcamentoVar2: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'vl_orcamento'
          DataSource = DsCliAnalitico
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidAutoDataVar
        end
        object TotalOfvl_orcamento: TSctTotalvar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Variable = adodsclianaliticovl_orcamentoVar2
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidTotalVar
        end
        object DataSourceGuide10: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel8
          DataSource = DsCliSintetico
        end
        object DataSourceGuide22: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel8
          DataSource = DsCidade
        end
        object DataSourceGuide27: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel8
          DataSource = DsProduto
        end
        object DataSourceGuide33: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel8
          DataSource = DsCliente
        end
        object SctBand3: TSctBand
          Left = 0
          Top = 0
          Width = 786
          Height = 5
          ParentColor = True
          BandName = 'Report Header'
          Updatelevel = SctLevel6
          Visible = False
        end
        object SctBand6: TSctBand
          Left = 0
          Top = 20
          Width = 786
          Height = 39
          ParentColor = True
          BandName = 'Page Header'
          Updatelevel = SctLevel7
          object Sctvarlabel24: TSctvarlabel
            Left = 2
            Top = 1
            Width = 304
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Vendas por Laborat'#243'rio/Fabricante - Anal'#237'tico'
          end
          object Sctvarlabel28: TSctvarlabel
            Left = 638
            Top = 1
            Width = 31
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Data:'
          end
          object Sctvarlabel36: TSctvarlabel
            Left = 671
            Top = 1
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = SctDateTimeVar2
            DataFormat.DisplayFormat = 'dd/mm/yyyy'
          end
          object Sctvarlabel37: TSctvarlabel
            Left = 635
            Top = 18
            Width = 34
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Hora:'
          end
          object Sctvarlabel38: TSctvarlabel
            Left = 671
            Top = 18
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = SctDateTimeVar2
            DataFormat.DisplayFormat = 'hh:mm:ss'
          end
          object SctLine10: TSctLine
            Left = 0
            Top = 31
            Width = 736
            Height = 7
          end
          object SctVarPerCliAnalitico: TSctvarlabel
            Left = 1
            Top = 18
            Width = 313
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Per'#237'odo'
          end
        end
        object SctBand7: TSctBand
          Left = 0
          Top = 141
          Width = 786
          Height = 19
          ParentColor = True
          BandName = 'SctDetailAnalitico'
          Updatelevel = SctLevel8
          Stretch = True
          OnBeforePrint = SctBand14BeforePrint
          object Sctvarlabel40: TSctvarlabel
            Left = 61
            Top = 0
            Width = 306
            Height = 17
            Variable = adodsclianaliticonm_emitenteVar
          end
          object Sctvarlabel41: TSctvarlabel
            Left = 655
            Top = 0
            Width = 80
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsclianaliticovl_orcamentoVar2
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
          end
          object Sctvarlabel42: TSctvarlabel
            Left = 585
            Top = 1
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsclianaliticodt_faturaVar
            DataFormat.DisplayFormat = 'dd/mm/yyyy'
          end
          object Sctvarlabel43: TSctvarlabel
            Left = 370
            Top = 0
            Width = 212
            Height = 17
            Variable = adodsclianaliticonm_funcionarioVar
          end
          object Sctvarlabel54: TSctvarlabel
            Left = 0
            Top = 0
            Width = 56
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsclianaliticonr_orcamentoVar
          end
        end
        object SctBand8: TSctBand
          Left = 0
          Top = 211
          Width = 786
          Height = 20
          ParentColor = True
          BandName = 'Page Footer'
          Updatelevel = SctLevel9
          object SctLine11: TSctLine
            Left = 0
            Top = 1
            Width = 736
            Height = 7
            AlignVertical = laTop
          end
          object Sctvarlabel44: TSctvarlabel
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
            Variable = SctDBVar2
          end
          object Sctvarlabel45: TSctvarlabel
            Left = 654
            Top = 2
            Width = 44
            Height = 17
            AlignHorizontal = laRight
            Caption = 'P'#225'gina:'
          end
          object Sctvarlabel46: TSctvarlabel
            Left = 701
            Top = 2
            Width = 35
            Height = 17
            AlignHorizontal = laRight
            Variable = SctPageVar2
            DataFormat.DisplayFormat = '#,###'
          end
        end
        object SctBand9: TSctBand
          Left = 0
          Top = 246
          Width = 786
          Height = 20
          ParentColor = True
          BandName = 'Report Footer'
          Updatelevel = SctLevel10
          object SctLine12: TSctLine
            Left = 540
            Top = 1
            Width = 194
            Height = 5
            AlignVertical = laTop
          end
          object SctTotalvarLabel4: TSctTotalvarLabel
            Left = 655
            Top = 3
            Width = 80
            Height = 17
            TotalVariable = TotalOfvl_orcamento
            DataFormat.DisplayFormat = '#,##0.00'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Sctvarlabel47: TSctvarlabel
            Left = 550
            Top = 3
            Width = 99
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
        object SctSubBand2: TSctSubBand
          Left = 0
          Top = 74
          Width = 786
          Height = 20
          Color = 16316664
          BandName = 'PageHeaderBandSub'
          Updatelevel = SctLevel7
          Band = SctBand6
          Above = False
          object SctLine13: TSctLine
            Left = 0
            Top = 13
            Width = 736
            Height = 7
          end
          object Sctvarlabel48: TSctvarlabel
            Left = 61
            Top = 0
            Width = 133
            Height = 17
            Caption = 'Cliente'
          end
          object Sctvarlabel49: TSctvarlabel
            Left = 670
            Top = 0
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Valor'
          end
          object Sctvarlabel50: TSctvarlabel
            Left = 585
            Top = 0
            Width = 65
            Height = 17
            AlignHorizontal = laCenter
            Caption = 'Fatura'
          end
          object Sctvarlabel51: TSctvarlabel
            Left = 367
            Top = 0
            Width = 65
            Height = 17
            Caption = 'Vendedor'
          end
          object Sctvarlabel55: TSctvarlabel
            Left = 0
            Top = 0
            Width = 56
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Or'#231'amento'
          end
        end
        object SctBand10: TSctBand
          Left = 0
          Top = 109
          Width = 786
          Height = 17
          Color = 16316664
          BandName = 'Group Header'
          Updatelevel = SctLevel11
          NewPageRepeat = True
          object Sctvarlabel52: TSctvarlabel
            Left = 1
            Top = 0
            Width = 313
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Variable = adodsclianaliticonm_laboratorioVar
          end
        end
        object SctBand11: TSctBand
          Left = 0
          Top = 175
          Width = 786
          Height = 21
          ParentColor = True
          BandName = 'Group Footer'
          Updatelevel = SctLevel12
          object SctLine14: TSctLine
            Left = 540
            Top = 1
            Width = 194
            Height = 5
            AlignVertical = laTop
          end
          object SctTotalvarLabel5: TSctTotalvarLabel
            Left = 655
            Top = 3
            Width = 80
            Height = 17
            TotalVariable = TotalOfvl_orcamento
            DataFormat.DisplayFormat = '#,##0.00'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Sctvarlabel53: TSctvarlabel
            Left = 550
            Top = 3
            Width = 99
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Total do Lab/Fab:'
          end
        end
      end
    end
    object SctRepCliSintetico: TSctReport
      Left = 260
      Top = 188
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
      TabOrder = 11
      Visible = False
      Minimized = True
      Prompt = True
      AutoRun = False
      SuppressStatus = False
      PixelsPerInch = 96
      STop = 38
      SLeft = 390
      SWidth = 836
      SHeight = 581
      MTop = 188
      MLeft = 260
      SAlign = alNone
      Version = vAce1_0
      object SctGrouppage3: TSctGrouppage
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
        PageSetup.LeftMargin = 0.3
        PageSetup.RightMargin = 0.3
        BorderType = btNone
        Description = 'Vendas por Laborat'#243'rio/Fabricante Sint'#233'tico'
        CloseDataSet = False
        DataRange = drAllRecords
        OmitLastPgFt = False
        Head = SctBand12
        Detail = SctBand14
        Foot = SctBand16
        PageHead = SctBand13
        PageFoot = SctBand15
        DataSource = DsCliSintetico
        Order = 1
        object SctLevel13: TSctLevel
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          IsHeader = True
        end
        object SctLevel14: TSctLevel
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          IsHeader = True
        end
        object SctLevel15: TSctLevel
          Left = 0
          Top = 0
          Width = 0
          Height = 0
        end
        object SctLevel16: TSctLevel
          Left = 0
          Top = 0
          Width = 0
          Height = 0
        end
        object SctLevel17: TSctLevel
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
          UpdateLevel = SctLevel13
          AutoVar = True
          ID = vidDateTimeVar
        end
        object SctPageVar3: TSctPageVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          UpdateLevel = SctLevel14
          AutoVar = True
          ID = vidPageVar
        end
        object SctDataSourceGuide12: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel15
          DataSource = DmMaster.DsUsuario
        end
        object SctDataSourceGuide13: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel15
          DataSource = DmMaster.DsFilial
        end
        object SctDataSourceGuide14: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel15
          DataSource = FrmFoto_Grupo_Find.DsFind
        end
        object SctDBVar3: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_Filial'
          DataSource = DmMaster.DsFilial
          UpdateLevel = SctLevel15
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDataSourceGuide15: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel15
          DataSource = FrmCidade_Find.DsFind
        end
        object SctGroup2: TSctGroup
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Header = SctBand17
          Footer = SctBand18
          Variable = adodsclisinteticonm_laboratorioVar
          Level = 0
        end
        object SctLevel18: TSctLevel
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          IsHeader = True
        end
        object SctLevel19: TSctLevel
          Left = 0
          Top = 0
          Width = 0
          Height = 0
        end
        object SctDataSourceGuide16: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel15
          DataSource = DsCliSintetico
        end
        object adodsclisinteticonm_laboratorioVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nm_laboratorio'
          DataSource = DsCliSintetico
          UpdateLevel = SctLevel15
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsclisinteticonm_emitenteVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nm_emitente'
          DataSource = DsCliSintetico
          UpdateLevel = SctLevel15
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsclisinteticovl_orcamentoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'vl_orcamento'
          DataSource = DsCliSintetico
          UpdateLevel = SctLevel15
          AutoVar = False
          ID = vidAutoDataVar
        end
        object DataSourceGuide13: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel15
          DataSource = DsAnalitico
        end
        object DataSourceGuide14: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel15
          DataSource = DsSintetico
        end
        object DataSourceGuide15: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel15
          DataSource = DsCliAnalitico
        end
        object TotalOfvl_orcamento1: TSctTotalvar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Variable = adodsclisinteticovl_orcamentoVar
          UpdateLevel = SctLevel15
          AutoVar = False
          ID = vidTotalVar
        end
        object DataSourceGuide21: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel15
          DataSource = DsCidade
        end
        object DataSourceGuide26: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel15
          DataSource = DsProduto
        end
        object DataSourceGuide34: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel15
          DataSource = DsCliente
        end
        object adodsclisinteticoQt_OrcamentoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Qt_Orcamento'
          DataSource = DsCliSintetico
          UpdateLevel = SctLevel15
          AutoVar = False
          ID = vidAutoDataVar
        end
        object TotalOfQt_Orcamento: TSctTotalvar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Variable = adodsclisinteticoQt_OrcamentoVar
          UpdateLevel = SctLevel15
          AutoVar = False
          ID = vidTotalVar
        end
        object SctBand12: TSctBand
          Left = 0
          Top = 0
          Width = 786
          Height = 5
          ParentColor = True
          BandName = 'Report Header'
          Updatelevel = SctLevel13
          Visible = False
        end
        object SctBand13: TSctBand
          Left = 0
          Top = 20
          Width = 786
          Height = 39
          ParentColor = True
          BandName = 'Page Header'
          Updatelevel = SctLevel14
          object Sctvarlabel39: TSctvarlabel
            Left = 2
            Top = 1
            Width = 304
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Vendas por Laborat'#243'rio/Fabricante - Sint'#233'tico'
          end
          object Sctvarlabel56: TSctvarlabel
            Left = 638
            Top = 1
            Width = 31
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Data:'
          end
          object Sctvarlabel57: TSctvarlabel
            Left = 671
            Top = 1
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = SctDateTimeVar3
            DataFormat.DisplayFormat = 'dd/mm/yyyy'
          end
          object Sctvarlabel58: TSctvarlabel
            Left = 635
            Top = 18
            Width = 34
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Hora:'
          end
          object Sctvarlabel59: TSctvarlabel
            Left = 671
            Top = 18
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = SctDateTimeVar3
            DataFormat.DisplayFormat = 'hh:mm:ss'
          end
          object SctLine15: TSctLine
            Left = 0
            Top = 31
            Width = 736
            Height = 7
          end
          object SctVarPerCliSintetico: TSctvarlabel
            Left = 1
            Top = 18
            Width = 313
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Per'#237'odo'
          end
        end
        object SctBand14: TSctBand
          Left = 0
          Top = 141
          Width = 786
          Height = 22
          ParentColor = True
          BandName = 'SctDetailAnalitico'
          Updatelevel = SctLevel15
          Stretch = True
          OnBeforePrint = SctBand14BeforePrint
          object Sctvarlabel61: TSctvarlabel
            Left = 21
            Top = 3
            Width = 435
            Height = 17
            Variable = adodsclisinteticonm_emitenteVar
          end
          object Sctvarlabel62: TSctvarlabel
            Left = 539
            Top = 3
            Width = 80
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsclisinteticovl_orcamentoVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
          end
          object Sctvarlabel130: TSctvarlabel
            Left = 462
            Top = 3
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsclisinteticoQt_OrcamentoVar
            DataFormat.DisplayFormat = '#,##0'
          end
        end
        object SctBand15: TSctBand
          Left = 0
          Top = 214
          Width = 786
          Height = 20
          ParentColor = True
          BandName = 'Page Footer'
          Updatelevel = SctLevel16
          object SctLine16: TSctLine
            Left = 0
            Top = 1
            Width = 736
            Height = 7
            AlignVertical = laTop
          end
          object Sctvarlabel63: TSctvarlabel
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
            Variable = SctDBVar3
          end
          object Sctvarlabel64: TSctvarlabel
            Left = 654
            Top = 2
            Width = 44
            Height = 17
            AlignHorizontal = laRight
            Caption = 'P'#225'gina:'
          end
          object Sctvarlabel65: TSctvarlabel
            Left = 701
            Top = 2
            Width = 35
            Height = 17
            AlignHorizontal = laRight
            Variable = SctPageVar3
            DataFormat.DisplayFormat = '#,###'
          end
        end
        object SctBand16: TSctBand
          Left = 0
          Top = 249
          Width = 786
          Height = 20
          ParentColor = True
          BandName = 'Report Footer'
          Updatelevel = SctLevel17
          object SctLine17: TSctLine
            Left = 240
            Top = 1
            Width = 377
            Height = 5
            AlignVertical = laTop
          end
          object SctTotalvarLabel6: TSctTotalvarLabel
            Left = 539
            Top = 3
            Width = 80
            Height = 17
            TotalVariable = TotalOfvl_orcamento1
            DataFormat.DisplayFormat = '#,##0.00'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Sctvarlabel66: TSctvarlabel
            Left = 287
            Top = 3
            Width = 126
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
          object SctTotalvarLabel20: TSctTotalvarLabel
            Left = 462
            Top = 3
            Width = 65
            Height = 17
            TotalVariable = TotalOfQt_Orcamento
            DataFormat.DisplayFormat = '#,##0'
            DataFormat.Digits = 0
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object SctTotalvarLabel21: TSctTotalvarLabel
            Left = 417
            Top = 3
            Width = 32
            Height = 17
            TotalVariable = TotalOfQt_Orcamento
            TotalType = ttCount
            DataFormat.DisplayFormat = '(#,##0)'
            DataFormat.Digits = 0
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laLeft
          end
        end
        object SctSubBand3: TSctSubBand
          Left = 0
          Top = 74
          Width = 786
          Height = 20
          Color = 16316664
          BandName = 'PageHeaderBandSub'
          Updatelevel = SctLevel14
          Band = SctBand13
          Above = False
          object SctLine18: TSctLine
            Left = 0
            Top = 13
            Width = 736
            Height = 7
          end
          object Sctvarlabel67: TSctvarlabel
            Left = 21
            Top = 0
            Width = 133
            Height = 17
            Caption = 'Cliente'
          end
          object Sctvarlabel68: TSctvarlabel
            Left = 539
            Top = 0
            Width = 80
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Valor'
          end
          object Sctvarlabel121: TSctvarlabel
            Left = 462
            Top = 0
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Quantidade'
          end
        end
        object SctBand17: TSctBand
          Left = 0
          Top = 109
          Width = 786
          Height = 17
          Color = 16316664
          BandName = 'Group Header'
          Updatelevel = SctLevel18
          NewPageRepeat = True
          object Sctvarlabel69: TSctvarlabel
            Left = 1
            Top = 0
            Width = 313
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Variable = adodsclisinteticonm_laboratorioVar
          end
        end
        object SctBand18: TSctBand
          Left = 0
          Top = 178
          Width = 786
          Height = 21
          ParentColor = True
          BandName = 'Group Footer'
          Updatelevel = SctLevel19
          object SctLine19: TSctLine
            Left = 240
            Top = 1
            Width = 377
            Height = 5
            AlignVertical = laTop
          end
          object SctTotalvarLabel7: TSctTotalvarLabel
            Left = 539
            Top = 3
            Width = 80
            Height = 17
            TotalVariable = TotalOfvl_orcamento1
            DataFormat.DisplayFormat = '#,##0.00'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Sctvarlabel70: TSctvarlabel
            Left = 287
            Top = 4
            Width = 126
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
          object SctTotalvarLabel18: TSctTotalvarLabel
            Left = 462
            Top = 3
            Width = 65
            Height = 17
            TotalVariable = TotalOfQt_Orcamento
            DataFormat.DisplayFormat = '#,##0'
            DataFormat.Digits = 0
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object SctTotalvarLabel19: TSctTotalvarLabel
            Left = 417
            Top = 3
            Width = 32
            Height = 17
            TotalVariable = TotalOfQt_Orcamento
            TotalType = ttCount
            DataFormat.DisplayFormat = '(#,##0)'
            DataFormat.Digits = 0
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laLeft
          end
        end
      end
    end
  end
  object ADODsAnalitico: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  P.Cd_Laboratorio, L.Nm_Laboratorio, OI.Cd_Produto, OI.Nm_Produto,'#13#10'  sum( OI.Vl_Venda ) as Vl_Venda, sum( OI.Qt_Estoque ) as Qt_Vendido,'#13#10'  L.Pr_Comissao'#13#10#13#10'from'#13#10'  Orcamento O'#13#10#13#10'inner join'#13#10'  Orcamento_Item_Total OI'#13#10'on'#13#10'  OI.Cd_Filial     = O.Cd_Filial and'#13#10'  OI.Nr_Orcamento  = O.Nr_Orcamento and'#13#10'  OI.Fl_Confirmado = ''''1'''#13#10#13#10'inner join'#13#10'  Produto P'#13#10'on'#13#10'  P.Cd_Produto = OI.Cd_Produto'#13#10#13#10'left join'#13#10'  Laboratorio L'#13#10'on'#13#10'  L.Cd_Laboratorio = P.Cd_Laboratorio'#13#10#13#10'group by'#13#10'  P.Cd_Laboratorio, L.Nm_Laboratorio, OI.Cd_Produto, OI.Nm_Produto, L.Pr_Comissao'#13#10#13#10'order by'#13#10'  P.Cd_Laboratorio, L.Nm_Laboratorio, 5 desc'
    Parameters = <>
    SQLOther0.Strings = (
      'select'
      '  P.Cd_Laboratorio, L.Nm_Laboratorio, OI.Cd_Produto, OI.Nm_Produto,'
      '  sum( OI.Vl_Venda ) as Vl_Venda, sum( OI.Qt_Estoque ) as Qt_Vendido,'
      '  L.Pr_Comissao'
      ''
      'from'
      '  Orcamento O'
      ''
      'inner join'
      '  Orcamento_Item_Total OI'
      'on'
      '  OI.Cd_Filial     = O.Cd_Filial and'
      '  OI.Nr_Orcamento  = O.Nr_Orcamento and'
      '  OI.Fl_Confirmado = ''''1'''
      ''
      'inner join'
      '  Produto P'
      'on'
      '  P.Cd_Produto = OI.Cd_Produto'
      '  /* Cd_Laboratorio */'
      ''
      'left join'
      '  Laboratorio L'
      'on'
      '  L.Cd_Laboratorio = P.Cd_Laboratorio'
      ''
      'where'
      '  O.Cd_Filial    = :Cd_Filial and'
      '  O.St_Orcamento = ''''9'''' and'
      '  O.Dt_Fatura   >= :Dt_Start and'
      '  O.Dt_Fatura    < :Dt_End'
      ''
      'group by'
      '  P.Cd_Laboratorio, L.Nm_Laboratorio, OI.Cd_Produto, OI.Nm_Produto, L.Pr_Comissao'
      ''
      'order by'
      '  P.Cd_Laboratorio, L.Nm_Laboratorio, 5 desc'
    )
    Left = 66
    Top = 198
    object ADODsAnaliticocd_laboratorio: TSmallintField
      FieldName = 'cd_laboratorio'
    end
    object ADODsAnaliticonm_laboratorio: TStringField
      FieldName = 'nm_laboratorio'
      Size = 50
    end
    object ADODsAnaliticocd_produto: TIntegerField
      FieldName = 'cd_produto'
    end
    object ADODsAnaliticonm_produto: TStringField
      FieldName = 'nm_produto'
      Size = 120
    end
    object ADODsAnaliticovl_venda: TBCDField
      FieldName = 'vl_venda'
      Precision = 14
      Size = 7
    end
    object ADODsAnaliticoqt_vendido: TBCDField
      FieldName = 'qt_vendido'
      Precision = 14
      Size = 7
    end
    object ADODsAnaliticoPr_Comissao: TBCDField
      FieldName = 'Pr_Comissao'
      Precision = 9
      Size = 3
    end
  end
  object DsAnalitico: TDataSource
    DataSet = ADODsAnalitico
    Left = 38
    Top = 198
  end
  object ADODsSintetico: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  P.Cd_Laboratorio, L.Nm_Laboratorio,'#13#10'  sum( OI.Vl_Venda ) as Vl_Venda,'#13#10'  count( distinct OI.Nr_Orcamento ) as Qt_Venda'#13#10'from'#13#10'  Orcamento O'#13#10#13#10'inner join'#13#10'  Orcamento_Item_Total OI'#13#10'on'#13#10'  OI.Cd_Filial     = O.Cd_Filial and'#13#10'  OI.Nr_Orcamento  = O.Nr_Orcamento and'#13#10'  OI.Fl_Confirmado = ''''1'''#13#10#13#10'inner join'#13#10'  Produto P'#13#10'on'#13#10'  P.Cd_Produto = OI.Cd_Produto'#13#10'  /* Cd_Laboratorio */'#13#10#13#10'left join'#13#10'  Laboratorio L'#13#10'on'#13#10'  L.Cd_Laboratorio = P.Cd_Laboratorio'#13#10#13#10'where'#13#10'  O.Cd_Filial    = :Cd_Filial and'#13#10'  O.St_Orcamento = ''''9'''' and'#13#10'  O.Dt_Fatura   >= :Dt_Start and'#13#10'  O.Dt_Fatura    < :Dt_End'#13#10#13#10'group by'#13#10'  P.Cd_Laboratorio, L.Nm_Laboratorio'#13#10#13#10'order by'#13#10'  3 desc'
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
        Attributes = [paNullable]
        DataType = ftDateTime
        Precision = 16
        Size = 16
        Value = nil?
      end
      item
        Name = 'Dt_End'
        Attributes = [paNullable]
        DataType = ftDateTime
        Precision = 16
        Size = 16
        Value = nil?
      end>
    SQLOther0.Strings = (
      'select'
      '  P.Cd_Laboratorio, L.Nm_Laboratorio,'
      '  sum( OI.Vl_Venda ) as Vl_Venda,'
      '  count( distinct OI.Nr_Orcamento ) as Qt_Venda'
      'from'
      '  Orcamento O'
      ''
      'inner join'
      '  Orcamento_Item_Total OI'
      'on'
      '  OI.Cd_Filial     = O.Cd_Filial and'
      '  OI.Nr_Orcamento  = O.Nr_Orcamento and'
      '  OI.Fl_Confirmado = ''''1'''
      ''
      'inner join'
      '  Produto P'
      'on'
      '  P.Cd_Produto = OI.Cd_Produto'
      '  /* Cd_Laboratorio */'
      ''
      'left join'
      '  Laboratorio L'
      'on'
      '  L.Cd_Laboratorio = P.Cd_Laboratorio'
      ''
      'where'
      '  O.Cd_Filial    = :Cd_Filial and'
      '  O.St_Orcamento = ''''9'''' and'
      '  O.Dt_Fatura   >= :Dt_Start and'
      '  O.Dt_Fatura    < :Dt_End'
      ''
      'group by'
      '  P.Cd_Laboratorio, L.Nm_Laboratorio'
      ''
      'order by'
      '  3 desc'
    )
    Left = 151
    Top = 199
    object ADODsSinteticocd_laboratorio: TSmallintField
      FieldName = 'cd_laboratorio'
    end
    object ADODsSinteticonm_laboratorio: TStringField
      FieldName = 'nm_laboratorio'
      Size = 50
    end
    object ADODsSinteticovl_venda: TBCDField
      FieldName = 'vl_venda'
      Precision = 28
      Size = 6
    end
    object ADODsSinteticoQt_Venda: TIntegerField
      FieldName = 'Qt_Venda'
      ReadOnly = True
    end
  end
  object DsSintetico: TDataSource
    DataSet = ADODsSintetico
    Left = 121
    Top = 198
  end
  object DsCliAnalitico: TDataSource
    DataSet = ADODsCliAnalitico
    Left = 211
    Top = 198
  end
  object ADODsCliAnalitico: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  L.Nm_Laboratorio, O.Nr_Orcamento, E.Nm_Emitente, O.Dt_Fatura, F.Nm_Funcionario,'#13#10'  sum( OI.Vl_Venda::::Numeric(12,3) ) as Vl_Orcamento'#13#10#13#10'from'#13#10'  Orcamento O'#13#10#13#10'inner join'#13#10'  Emitente E'#13#10'on'#13#10'  E.Cd_Emitente = O.Cd_Emitente'#13#10#13#10'inner join'#13#10'  Funcionario F'#13#10'on'#13#10'  F.Cd_Funcionario = O.Cd_Funcionario'#13#10#13#10'inner join'#13#10'  Orcamento_Item_Total OI'#13#10'on'#13#10'  OI.Cd_Filial     = O.Cd_Filial and'#13#10'  OI.Nr_Orcamento  = O.Nr_Orcamento and'#13#10'  OI.Fl_Confirmado = ''''1'''#13#10#13#10'inner join'#13#10'  Produto P'#13#10'on'#13#10'  P.Cd_Produto = OI.Cd_Produto'#13#10'  /* Laboratorio */'#13#10#13#10'inner join'#13#10'  Laboratorio L'#13#10'on'#13#10'  L.Cd_Laboratorio = P.Cd_Laboratorio'#13#10#13#10'where'#13#10'  O.Cd_Filial  = :Cd_Filial and'#13#10'  O.Dt_Fatura >= :Dt_Start and'#13#10'  O.Dt_Fatura  < :Dt_End'#13#10#13#10'group by'#13#10'    L.Nm_Laboratorio, O.Nr_Orcamento, E.Nm_Emitente, O.Dt_Fatura,'#13#10'    F.Nm_Funcionario'#13#10#13#10'order by'#13#10'  L.Nm_Laboratorio, O.Dt_Fatura, O.Nr_Orcamento'
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
        Name = 'Dt_Start'
        Attributes = [paNullable]
        DataType = ftDateTime
        Precision = 16
        Size = 16
        Value = 36526.0
      end
      item
        Name = 'Dt_End'
        Attributes = [paNullable]
        DataType = ftDateTime
        Precision = 16
        Size = 16
        Value = 38718.0
      end>
    SQLOther0.Strings = (
      'select'
      '  L.Nm_Laboratorio, O.Nr_Orcamento, E.Nm_Emitente, O.Dt_Fatura, F.Nm_Funcionario,'
      '  sum( OI.Vl_Venda ) as Vl_Orcamento'
      ''
      'from'
      '  Orcamento O'
      ''
      'inner join'
      '  Emitente E'
      'on'
      '  E.Cd_Emitente = O.Cd_Emitente'
      ''
      'inner join'
      '  Funcionario F'
      'on'
      '  F.Cd_Funcionario = O.Cd_Funcionario'
      ''
      'inner join'
      '  Orcamento_Item_Total OI'
      'on'
      '  OI.Cd_Filial     = O.Cd_Filial and'
      '  OI.Nr_Orcamento  = O.Nr_Orcamento and'
      '  OI.Fl_Confirmado = ''''1'''
      ''
      'inner join'
      '  Produto P'
      'on'
      '  P.Cd_Produto = OI.Cd_Produto'
      '  /* Laboratorio */'
      ''
      'inner join'
      '  Laboratorio L'
      'on'
      '  L.Cd_Laboratorio = P.Cd_Laboratorio'
      ''
      'where'
      '  O.Cd_Filial    = :Cd_Filial and'
      '  O.St_Orcamento = ''''9'''' and'
      '  O.Dt_Fatura   >= :Dt_Start and'
      '  O.Dt_Fatura    < :Dt_End'
      ''
      'group by'
      '  L.Nm_Laboratorio, O.Nr_Orcamento, E.Nm_Emitente, O.Dt_Fatura,'
      '  F.Nm_Funcionario'
      ''
      'order by'
      '  L.Nm_Laboratorio, E.Nm_Emitente, O.Dt_Fatura, O.Nr_Orcamento'
    )
    Left = 241
    Top = 198
    object ADODsCliAnaliticonm_laboratorio: TStringField
      FieldName = 'nm_laboratorio'
      Size = 50
    end
    object ADODsCliAnaliticonr_orcamento: TIntegerField
      FieldName = 'nr_orcamento'
    end
    object ADODsCliAnaliticonm_emitente: TStringField
      FieldName = 'nm_emitente'
      Size = 50
    end
    object ADODsCliAnaliticodt_fatura: TDateTimeField
      FieldName = 'dt_fatura'
    end
    object ADODsCliAnaliticonm_funcionario: TStringField
      FieldName = 'nm_funcionario'
      Size = 50
    end
    object ADODsCliAnaliticovl_orcamento: TBCDField
      FieldName = 'vl_orcamento'
      Precision = 16
      Size = 8
    end
  end
  object ADODsCliSintetico: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  L.Nm_Laboratorio, E.Nm_Emitente,'#13#10'  sum( OI.Vl_Venda ) as Vl_Orcamento,'#13#10'  count( distinct OI.Nr_Orcamento ) as Qt_Orcamento'#13#10#13#10'from'#13#10'  Orcamento O'#13#10#13#10'inner join'#13#10'  Emitente E'#13#10'on'#13#10'  E.Cd_Emitente = O.Cd_Emitente'#13#10#13#10'inner join'#13#10'  Orcamento_Item_Total OI'#13#10'on'#13#10'  OI.Cd_Filial     = O.Cd_Filial and'#13#10'  OI.Nr_Orcamento  = O.Nr_Orcamento and'#13#10'  OI.Fl_Confirmado = ''''1'''#13#10#13#10'inner join'#13#10'  Produto P'#13#10'on'#13#10'  P.Cd_Produto = OI.Cd_Produto'#13#10'  /* Laboratorio */'#13#10#13#10'inner join'#13#10'  Laboratorio L'#13#10'on'#13#10'  L.Cd_Laboratorio = P.Cd_Laboratorio'#13#10#13#10'where'#13#10'  O.Cd_Filial    = :Cd_Filial and'#13#10'  O.St_Orcamento = ''''9'''' and'#13#10'  O.Dt_Fatura   >= :Dt_Start and'#13#10'  O.Dt_Fatura    < :Dt_End'#13#10#13#10'group by'#13#10'    L.Nm_Laboratorio, E.Nm_Emitente'#13#10#13#10'order by'#13#10'  L.Nm_Laboratorio, E.Nm_Emitente'
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
        Name = 'Dt_Start'
        Attributes = [paNullable]
        DataType = ftDateTime
        Precision = 16
        Size = 16
        Value = 36526.0
      end
      item
        Name = 'Dt_End'
        Attributes = [paNullable]
        DataType = ftDateTime
        Precision = 16
        Size = 16
        Value = 38718.0
      end>
    SQLOther0.Strings = (
      'select'
      '  L.Nm_Laboratorio, E.Nm_Emitente,'
      '  sum( OI.Vl_Venda ) as Vl_Orcamento,'
      '  count( distinct OI.Nr_Orcamento ) as Qt_Orcamento'
      ''
      'from'
      '  Orcamento O'
      ''
      'inner join'
      '  Emitente E'
      'on'
      '  E.Cd_Emitente = O.Cd_Emitente'
      ''
      'inner join'
      '  Orcamento_Item_Total OI'
      'on'
      '  OI.Cd_Filial     = O.Cd_Filial and'
      '  OI.Nr_Orcamento  = O.Nr_Orcamento and'
      '  OI.Fl_Confirmado = ''''1'''
      ''
      'inner join'
      '  Produto P'
      'on'
      '  P.Cd_Produto = OI.Cd_Produto'
      '  /* Laboratorio */'
      ''
      'inner join'
      '  Laboratorio L'
      'on'
      '  L.Cd_Laboratorio = P.Cd_Laboratorio'
      ''
      'where'
      '  O.Cd_Filial    = :Cd_Filial and'
      '  O.St_Orcamento = ''''9'''' and'
      '  O.Dt_Fatura   >= :Dt_Start and'
      '  O.Dt_Fatura    < :Dt_End'
      ''
      'group by'
      '    L.Nm_Laboratorio, E.Nm_Emitente'
      ''
      'order by'
      '  L.Nm_Laboratorio, E.Nm_Emitente'
    )
    Left = 321
    Top = 198
    object ADODsCliSinteticonm_laboratorio: TStringField
      FieldName = 'nm_laboratorio'
      Size = 50
    end
    object ADODsCliSinteticonm_emitente: TStringField
      FieldName = 'nm_emitente'
      Size = 50
    end
    object ADODsCliSinteticovl_orcamento: TBCDField
      FieldName = 'vl_orcamento'
      Precision = 22
      Size = 11
    end
    object ADODsCliSinteticoQt_Orcamento: TIntegerField
      FieldName = 'Qt_Orcamento'
      ReadOnly = True
    end
  end
  object DsCliSintetico: TDataSource
    DataSet = ADODsCliSintetico
    Left = 291
    Top = 198
  end
  object ADOCmdCidade: TMultADOCMD
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLOther0.Strings = (
      '-- Cria tabela temporaria'
      'create table #labreport'
      '  ('
      '  cd_cidade int,'
      '  nm_cidade varchar( 60 ),'
      '  sg_estado char( 2 ),'
      '  cd_produto int,'
      '  nm_produto varchar( 120 ),'
      '  sg_unidade char( 2 ),'
      '  cd_laboratorio smallint,'
      '  nm_laboratorio varchar( 50 ),'
      '  qt_vendido numeric( 12, 3 ),'
      '  vl_vendido numeric( 12, 3 ),'
      '  pr_vendido numeric( 9, 3 ),'
      '  cd_emitente int,'
      '  nm_emitente varchar( 50 ),'
      '  Pr_Comissao numeric( 9, 3 )'
      '  )'
    )
    SQLOther1.Strings = (
      'truncate table #LabReport'
    )
    SQLOther2.Strings = (
      '-- Inclui os dados da cidade'
      'insert into #LabReport( Cd_Cidade, Nm_Cidade, Sg_Estado, Cd_Produto, Nm_Produto,'
      '  Sg_Unidade, Cd_Laboratorio, Nm_Laboratorio, Cd_Emitente, Nm_Emitente,'
      '  Qt_Vendido, Vl_Vendido, Pr_Comissao )'
      'select'
      '  EE.Cd_Cidade, C.Nm_Cidade, C.Sg_Estado, OI.Cd_Produto, OI.Nm_Produto,'
      '  OI.Sg_Estoque, P.Cd_Laboratorio, L.Nm_Laboratorio, O.Cd_Emitente,'
      '  E.Nm_Emitente, sum( OI.Qt_Estoque ) as Qt_Vendido,'
      '  sum( OI.Vl_Venda ) as Vl_Vendido, L.Pr_Comissao'
      ''
      'from'
      '  Orcamento O'
      ''
      'inner join'
      '  Orcamento_Item_Total OI'
      'on'
      '  OI.Cd_Filial     = O.Cd_Filial and'
      '  OI.Nr_Orcamento  = O.Nr_Orcamento and'
      '  OI.Fl_Confirmado = ''''1'''
      ''
      'inner join'
      '  Produto P'
      'on'
      '  P.Cd_Produto = OI.Cd_Produto'
      '  /* Cd_Laboratorio */'
      ''
      'inner join'
      '  Laboratorio L'
      'on'
      '  L.Cd_Laboratorio = P.Cd_Laboratorio'
      ''
      'inner join'
      '  Emitente E'
      'on'
      '  E.Cd_Emitente = O.Cd_Emitente'
      ''
      'inner join'
      '  Emitente_Endereco EE'
      'on'
      '  EE.Cd_Emitente = E.Cd_Emitente and'
      '  EE.Nr_Endereco = E.Nr_Endereco'
      '  /* Cd_Cidade */'
      ''
      'inner join'
      '  Cidade C'
      'on'
      '  C.Cd_Cidade = EE.Cd_Cidade'
      ''
      'where'
      '  O.Cd_Filial    = :Cd_Filial and'
      '  O.St_Orcamento = ''''9'''' and'
      '  O.Dt_Fatura   >= :Dt_Start and'
      '  O.Dt_Fatura    < :Dt_End'
      ''
      'group by'
      '  OI.Cd_Produto, OI.Nm_Produto, P.Cd_Laboratorio, L.Nm_Laboratorio,'
      '  OI.Sg_Estoque, EE.Cd_Cidade, C.Nm_Cidade, C.Sg_Estado,'
      '  O.Cd_Emitente, E.Nm_Emitente, L.Pr_Comissao'
    )
    Left = 361
    Top = 198
  end
  object ADODsAux: TMultADODS
    Connection = FrmMain.ADOConMaster
    LockType = ltReadOnly
    Parameters = <>
    SQLOther0.Strings = (
      '-- Total por Laboratorio'
      'select'
      '  sum( Vl_Vendido ) as Vl_Vendido'
      ''
      'from'
      '  #LabReport'
      ''
      'where'
      '  Cd_Laboratorio = :Cd_Laboratorio'
      ''
    )
    SQLOther1.Strings = (
      '-- Total por Laboratorio'
      'select'
      '  sum( Vl_Vendido ) as Vl_Vendido'
      ''
      'from'
      '  #LabReport'
      ''
      'where'
      '  Cd_Laboratorio = :Cd_Laboratorio and'
      '  Cd_Cidade      = :Cd_Cidade'
    )
    Left = 391
    Top = 197
  end
  object ADODsCidade: TADODataSet
    Connection = FrmMain.ADOConMaster
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  Cd_Laboratorio, Nm_Laboratorio, Cd_Cidade, Nm_Cidade, Sg_Estado,'#13#10'  sum( Qt_Vendido ) as Qt_Vendido,'#13#10'  sum( Vl_Vendido ) as Vl_Vendido'#13#10'  '#13#10'from'#13#10'  #LabReport'#13#10'  '#13#10'group by'#13#10'  Cd_Laboratorio, Nm_Laboratorio, Cd_Cidade, Nm_Cidade, Sg_Estado'#13#10'  '#13#10'order by'#13#10'  Nm_Laboratorio, Cd_Laboratorio, 7 desc'
    Parameters = <>
    Left = 174
    Top = 151
    object ADODsCidadecd_laboratorio: TSmallintField
      FieldName = 'cd_laboratorio'
    end
    object ADODsCidadenm_laboratorio: TStringField
      FieldName = 'nm_laboratorio'
      Size = 50
    end
    object ADODsCidadecd_cidade: TIntegerField
      FieldName = 'cd_cidade'
    end
    object ADODsCidadenm_cidade: TStringField
      FieldName = 'nm_cidade'
      Size = 60
    end
    object ADODsCidadesg_estado: TStringField
      FieldName = 'sg_estado'
      FixedChar = True
      Size = 2
    end
    object ADODsCidadeqt_vendido: TBCDField
      FieldName = 'qt_vendido'
      Precision = 28
      Size = 6
    end
    object ADODsCidadevl_vendido: TBCDField
      FieldName = 'vl_vendido'
      Precision = 28
      Size = 6
    end
  end
  object DsCidade: TDataSource
    DataSet = ADODsCidade
    Left = 144
    Top = 151
  end
  object ADODsProduto: TADODataSet
    Connection = FrmMain.ADOConMaster
    LockType = ltReadOnly
    OnCalcFields = ADODsProdutoCalcFields
    CommandText = 'select'#13#10'  Cd_Laboratorio, Nm_Laboratorio, Cd_Cidade, Nm_Cidade,'#13#10'  Cd_Produto, Nm_Produto, Sg_Unidade,'#13#10'  sum( Qt_Vendido ) as Qt_Vendido,'#13#10'  sum( Vl_Vendido ) as Vl_Vendido'#13#10'  '#13#10'from'#13#10'  #LabReport'#13#10'  '#13#10'group by'#13#10'  Cd_Laboratorio, Nm_Laboratorio, Cd_Cidade, Nm_Cidade,'#13#10'  Cd_Produto, Nm_Produto, Sg_Unidade'#13#10'  '#13#10'order by'#13#10'  Nm_Laboratorio, Cd_Laboratorio, Nm_Cidade, Cd_Cidade, 8 desc'
    Parameters = <>
    Left = 261
    Top = 146
    object ADODsProdutocd_laboratorio: TSmallintField
      FieldName = 'cd_laboratorio'
    end
    object ADODsProdutonm_laboratorio: TStringField
      FieldName = 'nm_laboratorio'
      Size = 50
    end
    object ADODsProdutocd_cidade: TIntegerField
      FieldName = 'cd_cidade'
    end
    object ADODsProdutonm_cidade: TStringField
      FieldName = 'nm_cidade'
      Size = 60
    end
    object ADODsProdutocd_produto: TIntegerField
      FieldName = 'cd_produto'
    end
    object ADODsProdutonm_produto: TStringField
      FieldName = 'nm_produto'
      Size = 120
    end
    object ADODsProdutoqt_vendido: TBCDField
      FieldName = 'qt_vendido'
      Precision = 28
      Size = 6
    end
    object ADODsProdutovl_vendido: TBCDField
      FieldName = 'vl_vendido'
      Precision = 28
      Size = 6
    end
    object ADODsProdutosg_unidade: TStringField
      FieldName = 'sg_unidade'
      FixedChar = True
      Size = 2
    end
    object ADODsProdutocd_group: TStringField
      FieldKind = fkCalculated
      FieldName = 'cd_group'
      Size = 10
      Calculated = True
    end
  end
  object DsProduto: TDataSource
    DataSet = ADODsProduto
    Left = 232
    Top = 146
  end
  object ADODsCliente: TADODataSet
    Connection = FrmMain.ADOConMaster
    LockType = ltReadOnly
    OnCalcFields = ADODsClienteCalcFields
    CommandText = 'select'#13#10'  Cd_Laboratorio, Nm_Laboratorio, Cd_Cidade, Nm_Cidade,'#13#10'  Cd_Emitente, Nm_Emitente, '#13#10'  sum( Qt_Vendido ) as Qt_Vendido,'#13#10'  sum( Vl_Vendido ) as Vl_Vendido'#13#10'  '#13#10'from'#13#10'  #LabReport'#13#10'  '#13#10'group by'#13#10'  Cd_Laboratorio, Nm_Laboratorio, Cd_Cidade, Nm_Cidade,'#13#10'  Cd_Emitente, Nm_Emitente'#13#10'  '#13#10'order by'#13#10'  Nm_Laboratorio, Cd_Laboratorio, Nm_Cidade, Cd_Cidade, 8 desc'
    Parameters = <>
    Left = 350
    Top = 146
    object ADODsClientecd_laboratorio: TSmallintField
      FieldName = 'cd_laboratorio'
    end
    object ADODsClientenm_laboratorio: TStringField
      FieldName = 'nm_laboratorio'
      Size = 50
    end
    object ADODsClientecd_cidade: TIntegerField
      FieldName = 'cd_cidade'
    end
    object ADODsClientenm_cidade: TStringField
      FieldName = 'nm_cidade'
      Size = 60
    end
    object ADODsClientecd_emitente: TIntegerField
      FieldName = 'cd_emitente'
    end
    object ADODsClientenm_emitente: TStringField
      FieldName = 'nm_emitente'
      Size = 50
    end
    object ADODsClientevl_vendido: TBCDField
      FieldName = 'vl_vendido'
      Precision = 28
      Size = 6
    end
    object ADODsClientecd_group: TStringField
      FieldKind = fkCalculated
      FieldName = 'cd_group'
      Size = 10
      Calculated = True
    end
  end
  object DsCliente: TDataSource
    DataSet = ADODsCliente
    Left = 320
    Top = 146
  end
end
