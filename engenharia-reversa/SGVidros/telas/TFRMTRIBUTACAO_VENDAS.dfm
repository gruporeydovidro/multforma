object FrmTributacao_Vendas: TFrmTributacao_Vendas
  Left = 316
  Top = 201
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Tributa'#231#227'o sobre as Vendas'
  ClientHeight = 182
  ClientWidth = 486
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
    Height = 182
    Align = alLeft
    TabOrder = 0
    ExplicitHeight = 183
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 465
    Height = 182
    Align = alClient
    ParentColor = True
    TabOrder = 1
    ExplicitHeight = 183
    object BvlSeparator: TBevel
      Left = 3
      Top = 152
      Width = 458
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
    object Label4: TLabel
      Left = 5
      Top = 40
      Width = 116
      Height = 13
      Caption = 'Tributa'#231#227'o Baseada em:'
    end
    object BitBtnConfirm: TBitBtn
      Left = 292
      Top = 155
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 3
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 378
      Top = 155
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 4
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
    object CbBase: TComboBox
      Left = 5
      Top = 54
      Width = 211
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 2
      Items.Strings = (
        'Or'#231'amentos e Atendimento no Balc'#227'o'
        'Or'#231'amentos'
        'Atendimento no Balc'#227'o'
      )
    end
    object SctRepTributacao: TSctReport
      Left = 225
      Top = 80
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
      TabOrder = 5
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
      MTop = 80
      MLeft = 225
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
        Description = 'Tributacao Sobre Vendas'
        CloseDataSet = False
        DataRange = drAllRecords
        OmitLastPgFt = False
        Head = ReportHeaderBand
        Detail = DetailBand
        Foot = ReportFooterBand
        PageHead = PageHeaderBand
        PageFoot = PageFooterBand
        DataSource = DsTributacao
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
          DataSource = DsTributacao
        end
        object adodstributacaocd_tributacaoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'cd_tributacao'
          DataSource = DsTributacao
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodstributacaods_tributacaoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'ds_tributacao'
          DataSource = DsTributacao
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodstributacaopr_contribVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'pr_contrib'
          DataSource = DsTributacao
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodstributacaopr_naocontribVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'pr_naocontrib'
          DataSource = DsTributacao
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodstributacaovl_tributacaoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'vl_tributacao'
          DataSource = DsTributacao
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object TotalOfvl_tributacao: TSctTotalvar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Variable = adodstributacaovl_tributacaoVar
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidTotalVar
        end
        object Group: TSctGroup
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Header = GroupHeader
          Footer = GroupFooter
          Variable = adodstributacaoDt_TributacaoVar
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
        object adodstributacaoDp_TributacaoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_Tributacao'
          DataSource = DsTributacao
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodstributacaoDt_TributacaoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dt_Tributacao'
          DataSource = DsTributacao
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
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
            Caption = 'Tributacao Sobre Vendas'
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
          object SctPerVenda: TSctvarlabel
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
          Top = 143
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
            Variable = adodstributacaocd_tributacaoVar
          end
          object Sctvarlabel8: TSctvarlabel
            Left = 54
            Top = 0
            Width = 272
            Height = 17
            Variable = adodstributacaods_tributacaoVar
          end
          object Sctvarlabel9: TSctvarlabel
            Left = 620
            Top = 0
            Width = 76
            Height = 17
            AlignHorizontal = laRight
            Variable = adodstributacaovl_tributacaoVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
          end
          object Sctvarlabel16: TSctvarlabel
            Left = 530
            Top = 0
            Width = 87
            Height = 17
            AlignHorizontal = laRight
            Variable = adodstributacaopr_naocontribVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
          end
          object Sctvarlabel18: TSctvarlabel
            Left = 465
            Top = 0
            Width = 61
            Height = 17
            AlignHorizontal = laRight
            Variable = adodstributacaopr_contribVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
          end
          object Sctvarlabel20: TSctvarlabel
            Left = 330
            Top = 0
            Width = 131
            Height = 17
            Variable = adodstributacaoDp_TributacaoVar
          end
        end
        object PageFooterBand: TSctBand
          Left = 0
          Top = 211
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
          Top = 246
          Width = 748
          Height = 20
          ParentColor = True
          BandName = 'Report Footer'
          Updatelevel = ReportFooterBandlevel
          object SctLine5: TSctLine
            Left = 525
            Top = 1
            Width = 171
            Height = 5
            AlignVertical = laTop
          end
          object SctTotalvarLabel1: TSctTotalvarLabel
            Left = 605
            Top = 3
            Width = 93
            Height = 17
            TotalVariable = TotalOfvl_tributacao
            DataFormat.DisplayFormat = '#,##0.00'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Sctvarlabel14: TSctvarlabel
            Left = 510
            Top = 3
            Width = 89
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
            Caption = 'Descri'#231#227'o da Tributa'#231#227'o'
          end
          object Sctvarlabel10: TSctvarlabel
            Left = 620
            Top = 0
            Width = 76
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Total'
          end
          object Sctvarlabel15: TSctvarlabel
            Left = 530
            Top = 0
            Width = 87
            Height = 17
            AlignHorizontal = laRight
            Caption = 'N'#227'o Contribuinte'
          end
          object Sctvarlabel17: TSctvarlabel
            Left = 465
            Top = 0
            Width = 61
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Contribuinte'
          end
          object Sctvarlabel19: TSctvarlabel
            Left = 330
            Top = 0
            Width = 106
            Height = 17
            Caption = 'Tipo de Tributa'#231#227'o'
          end
        end
        object GroupHeader: TSctBand
          Left = 0
          Top = 109
          Width = 748
          Height = 19
          ParentColor = True
          BandName = 'Group Header'
          Updatelevel = GroupHeaderLevel
          object Sctvarlabel21: TSctvarlabel
            Left = 1
            Top = 1
            Width = 111
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Variable = adodstributacaoDt_TributacaoVar
            DataFormat.DisplayFormat = 'dd/mm/yyyy'
          end
        end
        object GroupFooter: TSctBand
          Left = 0
          Top = 176
          Width = 748
          Height = 20
          ParentColor = True
          BandName = 'Group Footer'
          Updatelevel = GroupFooterLevel
          object SctLine3: TSctLine
            Left = 525
            Top = 1
            Width = 171
            Height = 5
            AlignVertical = laTop
          end
          object SctTotalvarLabel2: TSctTotalvarLabel
            Left = 605
            Top = 3
            Width = 93
            Height = 17
            TotalVariable = TotalOfvl_tributacao
            DataFormat.DisplayFormat = '#,##0.00'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Sctvarlabel22: TSctvarlabel
            Left = 510
            Top = 3
            Width = 89
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
  object ADOCmdTributacao: TMultADOCMD
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLOther0.Strings = (
      '-- Cria a tabela temporaria'
      'create table #tbltributacao'
      '  ('
      '  dt_tributacao smalldatetime,'
      '  cd_tributacao smallint,'
      '  ds_tributacao varchar( 60 ),'
      '  tp_tributacao char( 1 ),'
      '  pr_contrib numeric( 7, 2 ),'
      '  pr_naocontrib numeric( 7, 2 ),'
      '  vl_tributacao numeric( 12, 2 )'
      '  )'
    )
    SQLOther1.Strings = (
      '-- Apaga os dados se existirem'
      'truncate table #TblTributacao'
    )
    SQLOther2.Strings = (
      '-- Prepara o insert dos dados'
      'insert into #TblTributacao( Dt_Tributacao, Cd_Tributacao, Ds_Tributacao,'
      '   Tp_Tributacao, Pr_Contrib, Pr_NaoContrib, Vl_Tributacao )'
    )
    SQLOther3.Strings = (
      '-- Venda baseada no atendimento no balcao'
      'select'
      '  Cast( B.Dt_Fatura as SmallDateTime ), P.Cd_Tributacao, T.Ds_Tributacao, T.Tp_Tributacao,'
      '  T.Pr_Contrib, T.Pr_NaoContrib,'
      '  sum( ( BI.Vl_Unitario * BI.Qt_Item ) -'
      '    coalesce('
      '      case'
      '        when B.Pr_Desconto > 0 then ( BI.Vl_Unitario * BI.Qt_Item ) / 100.0 * B.Pr_Desconto'
      '        else B.Vl_Desconto / B.Vl_Pedido * 100.0'
      '      end, 0.0 ) +'
      ''
      '    coalesce('
      '      case'
      '        when B.Pr_Custo > 0 then ( BI.Vl_Unitario * BI.Qt_Item ) / 100.0 * B.Pr_Custo'
      '        else B.Vl_Custo / B.Vl_Pedido * 100.0'
      '      end, 0.0 ) ) as Vl_Tributacao'
      ''
      'from'
      '  Balcao B'
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
      '  Tributacao T'
      'on'
      '  T.Cd_Tributacao = P.Cd_Tributacao'
      ''
      'where'
      '  B.Cd_Filial  = @Cd_Filial and'
      '  B.St_Balcao  = ''''9'''' and'
      '  B.Dt_Fatura >= @Dt_Start and'
      '  B.Dt_Fatura  < @Dt_End'
    )
    SQLOther4.Strings = (
      '-- Venda baseada no or'#231'amento'
      'select'
      '  O.Dt_Fatura, P.Cd_Tributacao, T.Ds_Tributacao, T.Tp_Tributacao,'
      '  T.Pr_Contrib, T.Pr_NaoContrib,'
      '  sum( ( OI.Vl_Unitario * OI.Qt_Item ) -'
      '    coalesce('
      '      case'
      '        when O.Pr_Desconto > 0 then ( OI.Vl_Unitario * OI.Qt_Item ) / 100 * O.Pr_Desconto'
      '        else O.Vl_Desconto / O.Vl_Pedido * 100.0'
      '      end, 0.0 ) +'
      ''
      '    coalesce('
      '      case'
      '        when O.Pr_Custo > 0 then ( OI.Vl_Unitario * OI.Qt_Item ) / 100 * O.Pr_Custo'
      '        else O.Vl_Custo / O.Vl_Pedido * 100.0'
      '      end, 0.0 ) ) as Vl_Tributacao'
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
      '  P.Cd_Produto = OI.Cd_Produto'
      ''
      'inner join'
      '  Tributacao T'
      'on'
      '  T.Cd_Tributacao = P.Cd_Tributacao'
      ''
      'where'
      '  O.Cd_Filial    = @Cd_Filial and'
      '  O.St_Orcamento = ''''9'''' and'
      '  O.Dt_Fatura   >= @Dt_Start and'
      '  O.Dt_Fatura    < @Dt_End'
    )
    SQLOther5.Strings = (
      'group by'
      '  B.Dt_Fatura, P.Cd_Tributacao, T.Ds_Tributacao, T.Tp_Tributacao,'
      '  T.Pr_Contrib, T.Pr_NaoContrib'
    )
    SQLOther6.Strings = (
      'group by'
      '  O.Dt_Fatura, P.Cd_Tributacao, T.Ds_Tributacao, T.Tp_Tributacao,'
      '  T.Pr_Contrib, T.Pr_NaoContrib'
    )
    Left = 26
    Top = 153
  end
  object ADODsTributacao: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    OnCalcFields = ADODsTributacaoCalcFields
    CommandText = 'select'#13#10'  Dt_Tributacao, Cd_Tributacao, Ds_Tributacao, Tp_Tributacao, Pr_Contrib, '#13#10'  Pr_NaoContrib, sum( Vl_Tributacao ) as Vl_Tributacao'#13#10#13#10'from'#13#10'  #TblTributacao'#13#10#13#10'group by'#13#10'  Dt_Tributacao, Cd_Tributacao, Ds_Tributacao, Tp_Tributacao, Pr_Contrib, '#13#10'  Pr_NaoContrib'#13#10#13#10'order by'#13#10'  Dt_Tributacao, Ds_Tributacao'
    Parameters = <>
    Left = 85
    Top = 153
    object ADODsTributacaocd_tributacao: TSmallintField
      FieldName = 'cd_tributacao'
    end
    object ADODsTributacaods_tributacao: TStringField
      FieldName = 'ds_tributacao'
      Size = 60
    end
    object ADODsTributacaotp_tributacao: TStringField
      FieldName = 'tp_tributacao'
      FixedChar = True
      Size = 1
    end
    object ADODsTributacaopr_contrib: TBCDField
      FieldName = 'pr_contrib'
      Precision = 7
      Size = 2
    end
    object ADODsTributacaopr_naocontrib: TBCDField
      FieldName = 'pr_naocontrib'
      Precision = 7
      Size = 2
    end
    object ADODsTributacaovl_tributacao: TBCDField
      FieldName = 'vl_tributacao'
      Precision = 12
      Size = 2
    end
    object ADODsTributacaoDp_Tributacao: TStringField
      FieldKind = fkCalculated
      FieldName = 'Dp_Tributacao'
      Size = 25
      Calculated = True
    end
    object ADODsTributacaoDt_Tributacao: TDateField
      FieldName = 'Dt_Tributacao'
    end
  end
  object DsTributacao: TDataSource
    DataSet = ADODsTributacao
    Left = 55
    Top = 153
  end
end
