object FrmComissao_Report: TFrmComissao_Report
  Left = 410
  Top = 284
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Comiss'#227'o Sobre Vendas (OBSOLETO)'
  ClientHeight = 287
  ClientWidth = 687
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
    Height = 287
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 666
    Height = 287
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 3
      Top = 257
      Width = 659
      Height = 5
      Shape = bsTopLine
    end
    object Label2: TLabel
      Left = 5
      Top = 4
      Width = 41
      Height = 13
      Caption = 'Per'#237'odo:'
    end
    object LblTipo: TLabel
      Left = 168
      Top = 77
      Width = 84
      Height = 13
      Caption = 'Tipo de Relat'#243'rio:'
    end
    object Label3: TLabel
      Left = 5
      Top = 40
      Width = 49
      Height = 13
      Caption = 'Vendedor:'
    end
    object SbFuncionario: TSpeedButton
      Left = 45
      Top = 55
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
    object Label1: TLabel
      Left = 5
      Top = 77
      Width = 48
      Height = 13
      Caption = 'Comiss'#227'o:'
    end
    object Label4: TLabel
      Left = 195
      Top = 3
      Width = 110
      Height = 13
      Caption = 'Comiss'#227'o Baseada em:'
      Visible = False
    end
    object CbComissao: TComboBox
      Left = 5
      Top = 91
      Width = 158
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 5
      Text = 'Vinculada a Venda'
      Items.Strings = (
        'Vinculada a Venda'
        'Vinculada ao Recebimento'
      )
    end
    object BitBtnConfirm: TBitBtn
      Left = 493
      Top = 260
      Width = 85
      Height = 25
      Caption = '&Imprimir'
      TabOrder = 7
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 250 bytes}
    end
    object BitBtnCancel: TBitBtn
      Left = 579
      Top = 260
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 8
      OnClick = BitBtnCancelClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object EdtDt_Start: TDateEdit
      Left = 5
      Top = 18
      Width = 90
      Height = 19
      CheckOnExit = True
      DialogTitle = 'Selecione a Data'
      GlyphKind = gkCustom
      Glyph.Data = {binary 1850 bytes}
      NumGlyphs = 1
      StartOfWeek = Sun
      TabOrder = 0
    end
    object EdtDt_End: TDateEdit
      Left = 100
      Top = 18
      Width = 90
      Height = 19
      CheckOnExit = True
      DialogTitle = 'Selecione a Data'
      GlyphKind = gkCustom
      Glyph.Data = {binary 1850 bytes}
      NumGlyphs = 1
      StartOfWeek = Sun
      TabOrder = 1
    end
    object CbTipo: TComboBox
      Left = 168
      Top = 91
      Width = 86
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 6
      Text = 'Analit'#237'co'
      Items.Strings = (
        'Analit'#237'co'
        'Sint'#233'tico'
      )
    end
    object EdtCd_Funcionario: TCurrencyEdit
      Tag = 2
      Left = 5
      Top = 55
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 3
      OnExit = EdtCd_FuncionarioExit
      OnKeyDown = EdtCd_EmitenteKeyDown
    end
    object EdtNm_Funcionario: TEdit
      Left = 69
      Top = 55
      Width = 308
      Height = 19
      TabStop = False
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 30
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
    end
    object CbBase: TComboBox
      Left = 195
      Top = 17
      Width = 211
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 2
      Text = 'Or'#231'amentos e Atendimento no Balc'#227'o'
      Visible = False
      Items.Strings = (
        'Or'#231'amentos e Atendimento no Balc'#227'o'
        'Or'#231'amentos'
        'Atendimento no Balc'#227'o'
      )
    end
    object SctRepSintetico: TSctReport
      Left = 276
      Top = 89
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
      TabOrder = 9
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
      MTop = 89
      MLeft = 276
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
        Description = 'Comiss'#227'o Sobre Vendas - Vinculado a Venda (Sint'#233'tico)'
        CloseDataSet = False
        DataRange = drAllRecords
        OmitLastPgFt = False
        Head = ReportHeaderBand
        Detail = DetailBand
        Foot = ReportFooterBand
        PageHead = PageHeaderBand
        PageFoot = PageFooterBand
        DataSource = DsSintetico
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
        object DataSourceGuide: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = DsSintetico
        end
        object adodsvendacd_funcionarioVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'cd_funcionario'
          DataSource = DsSintetico
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsvendanm_funcionarioVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nm_funcionario'
          DataSource = DsSintetico
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsvendavl_vendaVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'vl_venda'
          DataSource = DsSintetico
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsvendavl_comissaoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'vl_comissao'
          DataSource = DsSintetico
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object TotalOfvl_venda: TSctTotalvar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Variable = adodsvendavl_vendaVar
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidTotalVar
        end
        object TotalOfvl_comissao: TSctTotalvar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Variable = adodsvendavl_comissaoVar
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidTotalVar
        end
        object adodsvendaNr_AtendimentoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_Atendimento'
          DataSource = DsSintetico
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object TotalOfNr_Atendimento: TSctTotalvar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Variable = adodsvendaNr_AtendimentoVar
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
          DataSource = DsAnalitico
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
            Width = 279
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Comiss'#227'o - Vinculado as Vendas (Sint'#233'tico)'
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
            Top = 32
            Width = 698
            Height = 7
          end
          object SctPerSintetico: TSctvarlabel
            Left = 2
            Top = 20
            Width = 339
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            Caption = 'Per'#237'odo: dd/mm/yyyy'
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
            Left = 1
            Top = 0
            Width = 49
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsvendacd_funcionarioVar
          end
          object Sctvarlabel8: TSctvarlabel
            Left = 54
            Top = 0
            Width = 347
            Height = 17
            Variable = adodsvendanm_funcionarioVar
          end
          object Sctvarlabel9: TSctvarlabel
            Left = 605
            Top = 0
            Width = 92
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsvendavl_comissaoVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
          end
          object Sctvarlabel16: TSctvarlabel
            Left = 510
            Top = 0
            Width = 92
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsvendavl_vendaVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
          end
          object Sctvarlabel18: TSctvarlabel
            Left = 415
            Top = 0
            Width = 92
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsvendaNr_AtendimentoVar
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
            Left = 400
            Top = 1
            Width = 296
            Height = 5
            AlignVertical = laTop
          end
          object SctTotalvarLabel1: TSctTotalvarLabel
            Left = 605
            Top = 3
            Width = 93
            Height = 17
            TotalVariable = TotalOfvl_comissao
            DataFormat.DisplayFormat = '#,##0.00'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Sctvarlabel14: TSctvarlabel
            Left = 402
            Top = 3
            Width = 42
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Totais:'
          end
          object SctTotalvarLabel2: TSctTotalvarLabel
            Left = 510
            Top = 3
            Width = 92
            Height = 18
            TotalVariable = TotalOfvl_venda
            DataFormat.DisplayFormat = '#,##0.00'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object SctTotalvarLabel3: TSctTotalvarLabel
            Left = 450
            Top = 2
            Width = 57
            Height = 18
            TotalVariable = TotalOfNr_Atendimento
            DataFormat.DisplayFormat = '#,##0'
            DataFormat.Digits = 0
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
            Left = 1
            Top = 0
            Width = 49
            Height = 17
            AlignHorizontal = laRight
            Caption = 'C'#243'digo'
          end
          object Sctvarlabel6: TSctvarlabel
            Left = 54
            Top = 0
            Width = 127
            Height = 17
            Caption = 'Vendedor'
          end
          object Sctvarlabel10: TSctvarlabel
            Left = 605
            Top = 0
            Width = 92
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Comiss'#227'o'
          end
          object Sctvarlabel15: TSctvarlabel
            Left = 510
            Top = 0
            Width = 92
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Vendido'
          end
          object Sctvarlabel17: TSctvarlabel
            Left = 415
            Top = 0
            Width = 92
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Atendimentos'
          end
        end
      end
    end
    object SctRepAnalitico: TSctReport
      Left = 362
      Top = 89
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
      STop = 6
      SLeft = 4
      SWidth = 767
      SHeight = 385
      MTop = 89
      MLeft = 362
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
        Description = 'Comiss'#227'o Sobre Vendas - Vinculado a Venda (Anal'#237'tico)'
        CloseDataSet = False
        DataRange = drAllRecords
        OmitLastPgFt = False
        Head = SctBand1
        Detail = SctBand3
        Foot = SctBand5
        PageHead = SctBand2
        PageFoot = SctBand4
        DataSource = DsAnalitico
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
        object SctDataSourceGuide4: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = FrmCidade_Find.DsFind
        end
        object Group: TSctGroup
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Header = GroupHeader
          Footer = GroupFooter
          Variable = adodsanaliticocd_funcionarioVar
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
        object DataSourceGuide6: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = DsSintetico
        end
        object DataSourceGuide7: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = DsAnalitico
        end
        object adodsanaliticocd_funcionarioVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'cd_funcionario'
          DataSource = DsAnalitico
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsanaliticonm_funcionarioVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nm_funcionario'
          DataSource = DsAnalitico
          UpdateLevel = SctLevel3
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
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsanaliticovl_comissaoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'vl_comissao'
          DataSource = DsAnalitico
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsanaliticoCd_ClasseVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Cd_Classe'
          DataSource = DsAnalitico
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsanaliticoNm_ClasseVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nm_Classe'
          DataSource = DsAnalitico
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object TotalOfvl_venda1: TSctTotalvar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Variable = adodsanaliticovl_vendaVar
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidTotalVar
        end
        object TotalOfvl_comissao1: TSctTotalvar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Variable = adodsanaliticovl_comissaoVar
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidTotalVar
        end
        object TotalOfNr_Atendimento1: TSctTotalvar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidTotalVar
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
        object adodsanaliticoPr_ClasseVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Pr_Classe'
          DataSource = DsAnalitico
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
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
          object Sctvarlabel19: TSctvarlabel
            Left = 2
            Top = 1
            Width = 279
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Comiss'#227'o - Vinculado as Vendas (Anal'#237'tico)'
          end
          object Sctvarlabel20: TSctvarlabel
            Left = 601
            Top = 1
            Width = 31
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Data:'
          end
          object Sctvarlabel21: TSctvarlabel
            Left = 634
            Top = 1
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = SctDateTimeVar1
            DataFormat.DisplayFormat = 'dd/mm/yyyy'
          end
          object Sctvarlabel22: TSctvarlabel
            Left = 598
            Top = 18
            Width = 34
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Hora:'
          end
          object Sctvarlabel23: TSctvarlabel
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
            Top = 32
            Width = 698
            Height = 7
          end
          object SctPerAnalitico: TSctvarlabel
            Left = 2
            Top = 20
            Width = 339
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            Caption = 'Per'#237'odo: dd/mm/yyyy'
          end
        end
        object SctBand3: TSctBand
          Left = 0
          Top = 142
          Width = 748
          Height = 18
          ParentColor = True
          BandName = 'Detail'
          Updatelevel = SctLevel3
          object Sctvarlabel25: TSctvarlabel
            Left = 1
            Top = 0
            Width = 49
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsanaliticoCd_ClasseVar
          end
          object Sctvarlabel26: TSctvarlabel
            Left = 54
            Top = 0
            Width = 347
            Height = 17
            Variable = adodsanaliticoNm_ClasseVar
          end
          object Sctvarlabel27: TSctvarlabel
            Left = 605
            Top = 0
            Width = 92
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsanaliticovl_comissaoVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
          end
          object Sctvarlabel28: TSctvarlabel
            Left = 510
            Top = 0
            Width = 92
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsanaliticovl_vendaVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
          end
          object Sctvarlabel38: TSctvarlabel
            Left = 412
            Top = 1
            Width = 92
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsanaliticoPr_ClasseVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
          end
        end
        object SctBand4: TSctBand
          Left = 0
          Top = 231
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
            Variable = adodsfilialDp_FilialVar1
          end
          object Sctvarlabel30: TSctvarlabel
            Left = 616
            Top = 2
            Width = 44
            Height = 17
            AlignHorizontal = laRight
            Caption = 'P'#225'gina:'
          end
          object Sctvarlabel31: TSctvarlabel
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
          Top = 266
          Width = 748
          Height = 20
          ParentColor = True
          BandName = 'Report Footer'
          Updatelevel = SctLevel5
          object SctLine7: TSctLine
            Left = 390
            Top = 1
            Width = 306
            Height = 5
            AlignVertical = laTop
          end
          object SctTotalvarLabel4: TSctTotalvarLabel
            Left = 605
            Top = 3
            Width = 93
            Height = 17
            TotalVariable = TotalOfvl_comissao1
            DataFormat.DisplayFormat = '#,##0.00'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Sctvarlabel32: TSctvarlabel
            Left = 435
            Top = 3
            Width = 71
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
          object SctTotalvarLabel5: TSctTotalvarLabel
            Left = 510
            Top = 3
            Width = 92
            Height = 18
            TotalVariable = TotalOfvl_venda1
            DataFormat.DisplayFormat = '#,##0.00'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object SctSubBand1: TSctSubBand
          Left = 0
          Top = 74
          Width = 748
          Height = 20
          Color = 16316664
          BandName = 'PageHeaderBandSub'
          Updatelevel = SctLevel2
          Band = SctBand2
          Above = False
          object SctLine8: TSctLine
            Left = 0
            Top = 13
            Width = 698
            Height = 7
          end
          object Sctvarlabel33: TSctvarlabel
            Left = 1
            Top = 0
            Width = 49
            Height = 17
            AlignHorizontal = laRight
            Caption = 'C'#243'digo'
          end
          object Sctvarlabel34: TSctvarlabel
            Left = 54
            Top = 0
            Width = 127
            Height = 17
            Caption = 'Classe'
          end
          object Sctvarlabel35: TSctvarlabel
            Left = 605
            Top = 0
            Width = 92
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Comiss'#227'o'
          end
          object Sctvarlabel36: TSctvarlabel
            Left = 510
            Top = 0
            Width = 92
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Vendido'
          end
          object Sctvarlabel24: TSctvarlabel
            Left = 412
            Top = 0
            Width = 92
            Height = 17
            AlignHorizontal = laRight
            Caption = '% Comiss'#227'o'
          end
        end
        object GroupHeader: TSctBand
          Left = 0
          Top = 109
          Width = 748
          Height = 18
          Color = 16316664
          BandName = 'Group Header'
          Updatelevel = GroupHeaderLevel
          object Sctvarlabel39: TSctvarlabel
            Left = 1
            Top = 0
            Width = 450
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Variable = adodsanaliticonm_funcionarioVar
          end
        end
        object GroupFooter: TSctBand
          Left = 0
          Top = 175
          Width = 748
          Height = 20
          Color = 16316664
          BandName = 'Group Footer'
          Updatelevel = GroupFooterLevel
          object SctLine9: TSctLine
            Left = 390
            Top = 1
            Width = 306
            Height = 5
            AlignVertical = laTop
          end
          object SctTotalvarLabel6: TSctTotalvarLabel
            Left = 605
            Top = 3
            Width = 93
            Height = 17
            TotalVariable = TotalOfvl_comissao1
            DataFormat.DisplayFormat = '#,##0.00'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Sctvarlabel37: TSctvarlabel
            Left = 390
            Top = 3
            Width = 116
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Total do Vendedor:'
          end
          object SctTotalvarLabel7: TSctTotalvarLabel
            Left = 510
            Top = 2
            Width = 92
            Height = 18
            TotalVariable = TotalOfvl_venda1
            DataFormat.DisplayFormat = '#,##0.00'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object GroupFooterSub: TSctSubBand
          Left = 0
          Top = 210
          Width = 748
          Height = 6
          ParentColor = True
          BandName = 'GroupFooterSub'
          Updatelevel = GroupFooterLevel
          Band = GroupFooter
          Above = False
        end
      end
    end
  end
  object ADOCmdComissao: TMultADOCMD
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLOther0.Strings = (
      '-- Cria a tabela temporaria'
      'create table #tblcomissao('
      '  id_comissao varchar( 8 ),'
      '  cd_funcionario smallint,'
      '  nm_funcionario varchar( 50 ),'
      '  cd_classe smallint,'
      '  nm_classe varchar( 50 ),'
      '  vl_item numeric( 12, 3 ),'
      '  pr_funcionario numeric( 8, 3 ),'
      '  pr_produto numeric( 8, 3 ),'
      '  pr_grupo numeric( 8, 3 ),'
      '  pr_subgrupo numeric( 8, 3 ),'
      '  pr_classe numeric( 8, 3 )'
      '  )'
    )
    SQLOther1.Strings = (
      '-- Apaga os dados se existirem'
      'truncate table #TblComissao'
    )
    SQLOther2.Strings = (
      '-- Prepara o insert dos dados'
      'insert into #TblComissao( Id_Comissao, Cd_Funcionario, Nm_Funcionario,'
      '   Cd_Classe, Nm_Classe, Vl_Item, Pr_Funcionario, Pr_Produto, Pr_Grupo,'
      '   Pr_SubGrupo, Pr_Classe )'
    )
    SQLOther3.Strings = (
      '-- Comiss'#227'o baseada no atendimento no balcao'
      'select'
      '  ''''B'''' + Cast( B.Nr_Balcao as VarChar ), B.Cd_Funcionario, F.Nm_Funcionario,'
      '  P.Cd_Classe, C.Nm_Classe,'
      '  ( BI.Vl_Unitario * BI.Qt_Item ) -'
      '    coalesce('
      '      case'
      '        when B.Pr_Desconto > 0 then BI.Vl_Unitario * BI.Qt_Item / 100 * B.Pr_Desconto'
      '        else ( BI.Vl_Unitario * BI.Qt_Item / 100 ) * ( B.Vl_Desconto / B.Vl_Pedido * 100.0 )'
      '      end, 0.0 ) +'
      ''
      '    coalesce('
      '      case'
      '        when B.Pr_Custo > 0 then BI.Vl_Unitario * BI.Qt_Item / 100 * B.Pr_Custo'
      '        else ( BI.Vl_Unitario * BI.Qt_Item / 100 ) * ( B.Vl_Custo / B.Vl_Pedido * 100.0 )'
      '      end, 0.0 ) as Vl_Item,'
      ''
      '  coalesce( F.Pr_Comissao,  0.0 ) as Pr_Funcionario,'
      '  coalesce( P.Pr_Comissao,  0.0 ) as Pr_Produto,'
      '  coalesce( G.Pr_Comissao,  0.0 ) as Pr_Grupo,'
      '  coalesce( SG.Pr_Comissao, 0.0 ) as Pr_SubGrupo,'
      '  coalesce( C.Pr_Comissao,  0.0 ) as Pr_Classe'
      ''
      'from'
      '  Balcao B'
      ''
      'inner join'
      '  Funcionario F'
      'on'
      '  F.Cd_Funcionario = B.Cd_Funcionario'
      ''
      'inner join'
      '  Balcao_Item BI'
      'on'
      '  BI.Cd_Filial     = B.Cd_Filial and'
      '  BI.Nr_Balcao     = B.Nr_Balcao and'
      '  BI.Fl_Confirmado = ''''1'''
      ''
      'inner join'
      '  Produto P'
      'on'
      '  P.Cd_Produto = BI.Cd_Produto'
      ''
      'inner join'
      '  Grupo G'
      'on'
      '  G.Cd_Grupo = P.Cd_Grupo'
      ''
      'inner join'
      '  SubGrupo SG'
      'on'
      '  SG.Cd_SubGrupo = P.Cd_SubGrupo'
      ''
      'inner join'
      '  Classe C'
      'on'
      '  C.Cd_Classe = P.Cd_Classe'
      ''
      'where'
      '  B.Cd_Filial  = @Cd_Filial and'
      '  B.St_Balcao  = ''''9'''' and'
      '  B.Dt_Fatura >= @Dt_Start and'
      '  B.Dt_Fatura  < @Dt_End'
    )
    SQLOther4.Strings = (
      '-- Baseada no Or'#231'amento'
      'select'
      '  ''''O'''' + Cast( O.Nr_Orcamento as VarChar ), O.Cd_Funcionario, F.Nm_Funcionario,'
      '  P.Cd_Classe, C.Nm_Classe, OI.Vl_Venda as Vl_Item,'
      '  coalesce( F.Pr_Comissao,  0.0 ) as Pr_Funcionario,'
      '  coalesce( P.Pr_Comissao,  0.0 ) as Pr_Produto,'
      '  coalesce( G.Pr_Comissao,  0.0 ) as Pr_Grupo,'
      '  coalesce( SG.Pr_Comissao, 0.0 ) as Pr_SubGrupo,'
      '  coalesce( C.Pr_Comissao,  0.0 ) as Pr_Classe'
      ''
      'from'
      '  Orcamento O'
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
      ''
      'inner join'
      '  Grupo G'
      'on'
      '  G.Cd_Grupo = P.Cd_Grupo'
      ''
      'inner join'
      '  SubGrupo SG'
      'on'
      '  SG.Cd_SubGrupo = P.Cd_SubGrupo'
      ''
      'inner join'
      '  Classe C'
      'on'
      '  C.Cd_Classe = P.Cd_Classe'
      ''
      'where'
      '  O.Cd_Filial    = @Cd_Filial and'
      '  O.St_Orcamento = ''''9'''' and'
      '  O.Dt_Fatura   >= @Dt_Start and'
      '  O.Dt_Fatura    < @Dt_End'
    )
    Left = 66
    Top = 257
  end
  object ADODsSintetico: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  BC.Cd_Funcionario, BC.Nm_Funcionario,'#13#10'  count( distinct BC.Id_Comissao ) as Nr_Atendimento,'#13#10'  sum( BC.Vl_Item ) as Vl_Venda,'#13#10'  sum('#13#10'    case'#13#10'      when BC.Pr_Classe      > 0 then BC.Vl_Item / 100.0 * BC.Pr_Classe'#13#10'      when BC.Pr_SubGrupo    > 0 then BC.Vl_Item / 100.0 * BC.Pr_SubGrupo'#13#10'      when BC.Pr_Grupo       > 0 then BC.Vl_Item / 100.0 * BC.Pr_Grupo'#13#10'      when BC.Pr_Produto     > 0 then BC.Vl_Item / 100.0 * BC.Pr_Produto'#13#10'      when BC.Pr_Funcionario > 0 then BC.Vl_Item / 100.0 * BC.Pr_Funcionario'#13#10'      else 0'#13#10'    end ) as Vl_Comissao'#13#10#13#10'from'#13#10'  #TblComissao BC'#13#10#13#10'group by'#13#10'  BC.Cd_Funcionario, BC.Nm_Funcionario'#13#10'  '#13#10'order by'#13#10'  BC.Nm_Funcionario'
    Parameters = <>
    Left = 125
    Top = 257
    object ADODsSinteticocd_funcionario: TSmallintField
      FieldName = 'cd_funcionario'
    end
    object ADODsSinteticonm_funcionario: TStringField
      FieldName = 'nm_funcionario'
      Size = 50
    end
    object ADODsSinteticovl_venda: TBCDField
      FieldName = 'vl_venda'
      Precision = 28
      Size = 6
    end
    object ADODsSinteticovl_comissao: TBCDField
      FieldName = 'vl_comissao'
      Precision = 28
      Size = 6
    end
    object ADODsSinteticoNr_Atendimento: TIntegerField
      FieldName = 'Nr_Atendimento'
    end
  end
  object DsSintetico: TDataSource
    DataSet = ADODsSintetico
    Left = 95
    Top = 257
  end
  object ADODsAnalitico: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  BC.Cd_Funcionario, BC.Nm_Funcionario, BC.Cd_Classe, BC.Nm_Classe, BC.Pr_Classe,'#13#10'  sum( BC.Vl_Item ) as Vl_Venda,'#13#10'  sum('#13#10'    case'#13#10'      when BC.Pr_Classe      > 0 then BC.Vl_Item / 100.0 * BC.Pr_Classe'#13#10'      when BC.Pr_SubGrupo    > 0 then BC.Vl_Item / 100.0 * BC.Pr_SubGrupo'#13#10'      when BC.Pr_Grupo       > 0 then BC.Vl_Item / 100.0 * BC.Pr_Grupo'#13#10'      when BC.Pr_Produto     > 0 then BC.Vl_Item / 100.0 * BC.Pr_Produto'#13#10'      when BC.Pr_Funcionario > 0 then BC.Vl_Item / 100.0 * BC.Pr_Funcionario'#13#10'      else 0'#13#10'    end ) as Vl_Comissao'#13#10#13#10'from'#13#10'  #TblComissao BC'#13#10#13#10'group by'#13#10'  BC.Cd_Funcionario, BC.Nm_Funcionario, BC.Cd_Classe, BC.Nm_Classe, BC.Pr_Classe'#13#10'  '#13#10'order by'#13#10'  BC.Nm_Funcionario'
    Parameters = <>
    Left = 185
    Top = 257
    object ADODsAnaliticocd_funcionario: TSmallintField
      FieldName = 'cd_funcionario'
    end
    object ADODsAnaliticonm_funcionario: TStringField
      FieldName = 'nm_funcionario'
      Size = 50
    end
    object ADODsAnaliticovl_venda: TBCDField
      FieldName = 'vl_venda'
      Precision = 28
      Size = 6
    end
    object ADODsAnaliticovl_comissao: TBCDField
      FieldName = 'vl_comissao'
      Precision = 28
      Size = 6
    end
    object ADODsAnaliticoCd_Classe: TSmallintField
      FieldName = 'Cd_Classe'
    end
    object ADODsAnaliticoNm_Classe: TStringField
      FieldName = 'Nm_Classe'
      Size = 50
    end
    object ADODsAnaliticoPr_Classe: TBCDField
      FieldName = 'Pr_Classe'
      Size = 0
    end
  end
  object DsAnalitico: TDataSource
    DataSet = ADODsAnalitico
    Left = 155
    Top = 257
  end
end
