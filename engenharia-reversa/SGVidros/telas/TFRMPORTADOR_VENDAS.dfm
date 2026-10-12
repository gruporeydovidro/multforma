object FrmPortador_Vendas: TFrmPortador_Vendas
  Left = 294
  Top = 173
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Relat'#243'rio de Vendas por Portador'
  ClientHeight = 228
  ClientWidth = 514
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
    Height = 228
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 493
    Height = 228
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 2
      Top = 199
      Width = 487
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
    object Label1: TLabel
      Left = 196
      Top = 4
      Width = 73
      Height = 13
      Caption = 'Utilizar data de:'
    end
    object BitBtnConfirm: TBitBtn
      Left = 320
      Top = 201
      Width = 85
      Height = 25
      Caption = '&Imprimir'
      TabOrder = 3
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 250 bytes}
    end
    object BitBtnCancel: TBitBtn
      Left = 406
      Top = 201
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
    object CbData: TComboBox
      Left = 196
      Top = 18
      Width = 108
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 2
      Text = 'Emiss'#227'o'
      Items.Strings = (
        'Emiss'#227'o'
        'Vencimento'
      )
    end
    object SctRepPortador: TSctReport
      Left = 32
      Top = 51
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
      STop = 6
      SLeft = -21
      SWidth = 796
      SHeight = 581
      MTop = 51
      MLeft = 32
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
        Description = 'Vendas por Portador'
        CloseDataSet = False
        DataRange = drAllRecords
        OmitLastPgFt = False
        Head = ReportHeaderBand
        Detail = DetailBand
        Foot = ReportFooterBand
        PageHead = PageHeaderBand
        PageFoot = PageFooterBand
        DataSource = DsPortador
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
        object DataSourceGuide5: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = FrmFuncionario_Find.DsFind
        end
        object DataSourceGuide: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = DsPortador
        end
        object adodsportadorCd_PortadorVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Cd_Portador'
          DataSource = DsPortador
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsportadorNm_PortadorVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nm_Portador'
          DataSource = DsPortador
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsportadorVl_PortadorVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Vl_Portador'
          DataSource = DsPortador
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object TotalOfVl_Portador: TSctTotalvar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Variable = adodsportadorVl_PortadorVar
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidTotalVar
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
            Width = 211
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Vendas por Portador'
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
          object SctVarPeriodo: TSctvarlabel
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
          end
        end
        object DetailBand: TSctBand
          Left = 0
          Top = 109
          Width = 786
          Height = 18
          ParentColor = True
          BandName = 'Detail'
          Updatelevel = DetailBandlevel
          Stretch = True
          object Sctvarlabel7: TSctvarlabel
            Left = -4
            Top = 0
            Width = 60
            Height = 17
            AlignHorizontal = laRight
            WrapText = True
            Stretch = True
            Variable = adodsportadorCd_PortadorVar
          end
          object Sctvarlabel8: TSctvarlabel
            Left = 61
            Top = 0
            Width = 297
            Height = 17
            WrapText = True
            Stretch = True
            Variable = adodsportadorNm_PortadorVar
          end
          object Sctvarlabel19: TSctvarlabel
            Left = 360
            Top = 0
            Width = 81
            Height = 17
            AlignHorizontal = laRight
            WrapText = True
            Stretch = True
            Variable = adodsportadorVl_PortadorVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
          end
        end
        object PageFooterBand: TSctBand
          Left = 0
          Top = 142
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
          Top = 177
          Width = 786
          Height = 20
          ParentColor = True
          BandName = 'Report Footer'
          Updatelevel = ReportFooterBandlevel
          object SctLine3: TSctLine
            Left = 306
            Top = 1
            Width = 138
            Height = 5
            AlignVertical = laTop
          end
          object SctTotalvarLabel1: TSctTotalvarLabel
            Left = 360
            Top = 3
            Width = 81
            Height = 17
            TotalVariable = TotalOfVl_Portador
            DataFormat.DisplayFormat = '#,##0.00'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Sctvarlabel26: TSctvarlabel
            Left = 266
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
            Left = 1
            Top = 0
            Width = 58
            Height = 17
            AlignHorizontal = laRight
            Caption = 'C'#243'digo'
          end
          object Sctvarlabel10: TSctvarlabel
            Left = 61
            Top = 0
            Width = 65
            Height = 17
            Caption = 'Portador'
          end
          object Sctvarlabel15: TSctvarlabel
            Left = 360
            Top = 0
            Width = 81
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Valor'
          end
        end
      end
    end
  end
  object DsPortador: TDataSource
    DataSet = ADODsPortador
    Left = 160
    Top = 64
  end
  object ADODsPortador: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = '-------------------- Vendas por emiss'#227'o'#13#10'select'#13#10'  RP.Cd_Portador, P.Nm_Portador, sum( RP.Vl_Parcela ) as Vl_Portador'#13#10#13#10'from'#13#10'  Receber R'#13#10#13#10'inner join'#13#10'  Receber_Parcela RP'#13#10'on'#13#10'  RP.Cd_Filial  = R.Cd_Filial and'#13#10'  RP.Nr_Receber = R.Nr_Receber '#13#10#13#10'inner join'#13#10'  Portador P'#13#10'on'#13#10'  P.Cd_Portador = RP.Cd_Portador'#13#10#13#10'where'#13#10'  R.Cd_Filial   = :Cd_Filial and'#13#10'  R.Dt_Emissao >= :Dt_Start and'#13#10'  R.Dt_Emissao  < :Dt_End and'#13#10'  R.St_Receber  < ''''4''''                   -- N'#227'o considera os cancelados'#13#10#13#10'group by'#13#10'  RP.Cd_Portador, P.Nm_Portador'#13#10#13#10'order by'#13#10'  3 desc'#13#10
    Parameters = <
      item
        Name = 'Cd_Filial'
        DataType = ftSmallint
        Size = -1
        Value = 1
      end
      item
        Name = 'Dt_Start'
        DataType = ftString
        Size = 10
        Value = '01/01/2000'
      end
      item
        Name = 'Dt_End'
        DataType = ftString
        Size = 10
        Value = '01/01/2010'
      end>
    SQLOther0.Strings = (
      '-------------------- Vendas por emiss'#227'o'
      'select'
      '  RP.Cd_Portador, P.Nm_Portador, sum( RP.Vl_Parcela ) as Vl_Portador'
      ''
      'from'
      '  Receber R'
      ''
      'inner join'
      '  Receber_Parcela RP'
      'on'
      '  RP.Cd_Filial  = R.Cd_Filial and'
      '  RP.Nr_Receber = R.Nr_Receber '
      ''
      'inner join'
      '  Portador P'
      'on'
      '  P.Cd_Portador = RP.Cd_Portador'
      ''
      'where'
      '  R.Cd_Filial   = :Cd_Filial and'
      '  R.Dt_Emissao >= :Dt_Start and'
      '  R.Dt_Emissao  < :Dt_End and'
      '  R.St_Receber  < ''''4''''                   -- N'#227'o considera os cancelados'
      ''
      'group by'
      '  RP.Cd_Portador, P.Nm_Portador'
      ''
      'order by'
      '  3 desc'
    )
    SQLOther1.Strings = (
      '-------------------- Vendas por Vencimento'
      'select'
      '  RP.Cd_Portador, P.Nm_Portador, sum( RP.Vl_Parcela ) as Vl_Portador'
      ''
      'from'
      '  Receber_Parcela RP'
      ''
      'inner join'
      '  Receber R'
      ''
      'on'
      '  R.Cd_Filial  = RP.Cd_Filial and'
      '  R.Nr_Receber = RP.Nr_Receber and'
      '  R.St_Receber < ''''4''''                    -- N'#227'o considera os cancelados'
      ''
      'inner join'
      '  Portador P'
      'on'
      '  P.Cd_Portador = RP.Cd_Portador'
      ''
      'where'
      '  RP.Cd_Filial      = :Cd_Filial and'
      '  RP.Dt_Vencimento >= :Dt_Start and'
      '  RP.Dt_Vencimento  < :Dt_End'
      ''
      'group by'
      '  RP.Cd_Portador, P.Nm_Portador'
      ''
      'order by'
      '  3 desc'
    )
    Left = 190
    Top = 64
    object ADODsPortadorCd_Portador: TSmallintField
      FieldName = 'Cd_Portador'
    end
    object ADODsPortadorNm_Portador: TStringField
      FieldName = 'Nm_Portador'
      Size = 50
    end
    object ADODsPortadorVl_Portador: TBCDField
      FieldName = 'Vl_Portador'
      ReadOnly = True
      Precision = 32
      Size = 2
    end
  end
end
