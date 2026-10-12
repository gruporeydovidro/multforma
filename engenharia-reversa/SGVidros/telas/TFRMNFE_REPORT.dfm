object FrmNFe_Report: TFrmNFe_Report
  Left = 294
  Top = 173
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Rel. de NF-e'
  ClientHeight = 254
  ClientWidth = 601
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
    Height = 254
    Align = alLeft
    TabOrder = 0
    ExplicitHeight = 370
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 580
    Height = 254
    Align = alClient
    ParentColor = True
    TabOrder = 1
    ExplicitWidth = 743
    ExplicitHeight = 370
    object BvlSeparator: TBevel
      Left = 2
      Top = 224
      Width = 573
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
    object Label10: TLabel
      Left = 5
      Top = 38
      Width = 97
      Height = 13
      Caption = 'Cliente/ Fornecedor:'
    end
    object SbEmitente: TSpeedButton
      Left = 55
      Top = 52
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
    object BitBtnCancel: TBitBtn
      Left = 493
      Top = 227
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 5
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
    object BitBtnReport: TBitBtn
      Left = 406
      Top = 227
      Width = 85
      Height = 25
      Caption = '&Imprimir'
      TabOrder = 4
      OnClick = BitBtnReportClick
      Glyph.Data = {binary 1146 bytes}
    end
    object CkBZebrado: TCheckBox
      Left = 5
      Top = 231
      Width = 111
      Height = 17
      TabStop = False
      Caption = 'Imprimir "&Zebrado"'
      Checked = True
      State = cbChecked
      TabOrder = 7
    end
    object SctReport: TSctReport
      Left = 270
      Top = 65
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
      TabOrder = 6
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
      MTop = 65
      MLeft = 270
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
        Description = 'Relat'#243'rio de NF-e'
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
          DataSource = FrmEstado_Find.DsFind
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
        object adodsreportDt_DhRecbtoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dt_DhRecbto'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportNm_EmitenteVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nm_Emitente'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportNr_FaturaVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_Fatura'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportVl_FaturaVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Vl_Fatura'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportDp_SituacaoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_Situacao'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportDp_OrigemVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_Origem'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
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
          Variable = adodsreportDp_SituacaoVar
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
        object TotalOfVl_Fatura: TSctTotalvar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Variable = adodsreportVl_FaturaVar
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidTotalVar
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
            Caption = 'NFe'
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
          object SctPerPago: TSctvarlabel
            Left = 2
            Top = 20
            Width = 604
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
          Top = 144
          Width = 748
          Height = 18
          ParentColor = True
          BandName = 'Detail'
          Updatelevel = DetailBandlevel
          OnBeforePrint = DetailBandBeforePrint
          object Sctvarlabel10: TSctvarlabel
            Left = 0
            Top = 0
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsreportDp_OrigemVar
          end
          object Sctvarlabel15: TSctvarlabel
            Left = 68
            Top = 0
            Width = 410
            Height = 17
            Variable = adodsreportNm_EmitenteVar
          end
          object Sctvarlabel16: TSctvarlabel
            Left = 572
            Top = 0
            Width = 60
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsreportNr_FaturaVar
          end
          object Sctvarlabel18: TSctvarlabel
            Left = 636
            Top = 0
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsreportVl_FaturaVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
          end
          object Sctvarlabel19: TSctvarlabel
            Left = 480
            Top = 0
            Width = 81
            Height = 17
            AlignHorizontal = laCenter
            Variable = adodsreportDt_DhRecbtoVar
            DataFormat.DisplayFormat = 'dd/mm/yyyy HH:MM'
          end
        end
        object PageFooterBand: TSctBand
          Left = 0
          Top = 217
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
          Top = 252
          Width = 748
          Height = 20
          ParentColor = True
          BandName = 'Report Footer'
          Updatelevel = ReportFooterBandlevel
          object SctLine5: TSctLine
            Left = 488
            Top = 1
            Width = 208
            Height = 5
            AlignVertical = laTop
          end
          object SctTotalvarLabel1: TSctTotalvarLabel
            Left = 601
            Top = 3
            Width = 97
            Height = 17
            TotalVariable = TotalOfVl_Fatura
            DataFormat.DisplayFormat = '#,##0.00'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Sctvarlabel14: TSctvarlabel
            Left = 480
            Top = 3
            Width = 78
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
          object SctTotalvarLabel4: TSctTotalvarLabel
            Left = 562
            Top = 3
            Width = 35
            Height = 17
            TotalVariable = TotalOfVl_Fatura
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
            Width = 65
            Height = 17
            AlignHorizontal = laCenter
            Caption = 'Origem'
          end
          object Sctvarlabel6: TSctvarlabel
            Left = 68
            Top = 0
            Width = 410
            Height = 17
            Caption = 'Cliente / Fornecedor'
          end
          object Sctvarlabel7: TSctvarlabel
            Left = 572
            Top = 0
            Width = 60
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Fatura'
          end
          object Sctvarlabel8: TSctvarlabel
            Left = 636
            Top = 0
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Valor'
          end
          object Sctvarlabel17: TSctvarlabel
            Left = 480
            Top = 0
            Width = 81
            Height = 17
            AlignHorizontal = laCenter
            Caption = 'Processada'
          end
        end
        object GroupHeader: TSctBand
          Left = 0
          Top = 109
          Width = 748
          Height = 20
          ParentColor = True
          BandName = 'Group Header'
          Updatelevel = GroupHeaderLevel
          object Sctvarlabel9: TSctvarlabel
            Left = 0
            Top = 1
            Width = 213
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Variable = adodsreportDp_SituacaoVar
          end
        end
        object GroupFooter: TSctBand
          Left = 0
          Top = 177
          Width = 748
          Height = 25
          ParentColor = True
          BandName = 'Group Footer'
          Updatelevel = GroupFooterLevel
          object SctLine3: TSctLine
            Left = 520
            Top = 1
            Width = 176
            Height = 5
            AlignVertical = laTop
          end
          object SctTotalvarLabel2: TSctTotalvarLabel
            Left = 601
            Top = 3
            Width = 97
            Height = 17
            TotalVariable = TotalOfVl_Fatura
            DataFormat.DisplayFormat = '#,##0.00'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Sctvarlabel20: TSctvarlabel
            Left = 520
            Top = 3
            Width = 38
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
          object SctTotalvarLabel3: TSctTotalvarLabel
            Left = 562
            Top = 3
            Width = 35
            Height = 17
            TotalVariable = TotalOfVl_Fatura
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
        end
      end
    end
    object EdtCd_Emitente: TCurrencyEdit
      Tag = 1
      Left = 5
      Top = 52
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
      Left = 78
      Top = 52
      Width = 411
      Height = 19
      TabStop = False
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 50
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
    end
  end
  object ADODsReport: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    OnCalcFields = ADODsReportCalcFields
    CommandText = 'select'#13#10'  N.Cd_Filial, N.Fl_Origem, N.Nr_Origem, N.Id_Origem, N.St_NFe, N.Dt_NFe,'#13#10'  N.Nm_Arquivo, N.Id_Lote, N.Ds_Lote, N.Nr_Recibo, N.Nr_Situacao, N.Ds_Motivo,'#13#10'  N.Fl_Gerar, N.Nr_chNFe, N.Nr_nProt, N.Nr_cStat, N.Ds_xMotivo,'#13#10'  N.Dt_DhRecbto, N.Mm_NFe, N.Ds_Justificativa, EM.Nm_Emitente, EM.Ds_EMailNFe,'#13#10'  EM.Cd_Emitente,'#13#10#13#10'  Nr_Fatura ='#13#10'    case N.Fl_Origem'#13#10'      when ''''1'''' then OT.Nr_Fatura'#13#10'      when ''''2'''' then S.Nr_Fatura'#13#10'      when ''''3'''' then E.Nr_Fatura'#13#10#13#10'    end,'#13#10#13#10'  Vl_Fatura ='#13#10'    case N.Fl_Origem'#13#10'      when ''''1'''' then OT.Vl_Orcamento'#13#10'      when ''''2'''' then S.Vl_Nota'#13#10'      when ''''3'''' then E.Vl_Nota'#13#10#13#10'    end'#13#10#13#10'from'#13#10'  NFe N'#13#10#13#10'left join'#13#10'  Orcamento_Total OT'#13#10'on'#13#10'  OT.Cd_Filial    = N.Cd_Filial and'#13#10'  OT.Nr_Orcamento = N.Nr_Origem'#13#10#13#10'left join'#13#10'  Saida S'#13#10'on'#13#10'  S.Cd_Filial    = N.Cd_Filial and'#13#10'  S.Nr_Saida     = N.Nr_Origem'#13#10#13#10'left join'#13#10'  Entrada E'#13#10'on'#13#10'  E.Cd_Filial    = N.Cd_Filial and'#13#10'  E.Nr_Entrada   = N.Nr_Origem'#13#10#13#10'left join'#13#10'  Emitente EM'#13#10'on'#13#10'  EM.Cd_Emitente ='#13#10'   case N.Fl_Origem'#13#10'     when ''''1'''' then OT.Cd_Emitente'#13#10'     when ''''2'''' then S.Cd_Emitente'#13#10'     when ''''3'''' then E.Cd_Emitente'#13#10#13#10'   end'#13#10#13#10'where'#13#10'  N.Cd_Filial = :Cd_Filial and'#13#10'  N.St_NFe    > ''''1'''' and'#13#10'  N.St_NFe    < ''''9'''' and'#13#10'  N.Dt_NFe   >= :Dt_Start and'#13#10'  N.Dt_NFe    < :Dt_End'#13#10#13#10'order by'#13#10'  N.St_NFe, N.Dt_DhRecbto desc'
    Parameters = <
      item
        Name = 'Cd_Filial'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = 9
      end
      item
        Name = 'Dt_Start'
        DataType = ftDateTime
        Precision = 16
        Size = 16
        Value = 36526.0
      end
      item
        Name = 'Dt_End'
        DataType = ftDateTime
        Precision = 16
        Size = 16
        Value = 43831.0
      end>
    SQLOther0.Strings = (
      '-- ------------ Sem emitente no filtro'
      'select'
      '  N.Cd_Filial, N.Fl_Origem, N.Nr_Origem, N.Id_Origem, N.St_NFe, N.Dt_NFe,'
      '  N.Nm_Arquivo, N.Id_Lote, N.Ds_Lote, N.Nr_Recibo, N.Nr_Situacao, N.Ds_Motivo,'
      '  N.Fl_Gerar, N.Nr_chNFe, N.Nr_nProt, N.Nr_cStat, N.Ds_xMotivo,'
      '  N.Dt_DhRecbto, N.Mm_NFe, N.Ds_Justificativa, N.Nm_Emitente, N.Ds_EMailNFe,'
      '  N.Cd_Emitente, N.Nr_Fatura, N.Vl_Fatura'
      ''
      'from'
      '  NFe_vw N'
      ''
      'where'
      '  N.Cd_Filial = :Cd_Filial and'
      '  N.St_NFe    > ''''1'''' and'
      '  N.St_NFe    < ''''9'''' and'
      '  N.Dt_NFe   >= :Dt_Start and'
      '  N.Dt_NFe    < :Dt_End'
      '  /* Cd_Emitente */'
      ''
      'order by'
      '  N.St_NFe, N.Dt_DhRecbto desc'
    )
    Left = 90
    Top = 88
    object ADODsReportCd_Filial: TSmallintField
      FieldName = 'Cd_Filial'
    end
    object ADODsReportFl_Origem: TStringField
      FieldName = 'Fl_Origem'
      FixedChar = True
      Size = 1
    end
    object ADODsReportNr_Origem: TIntegerField
      FieldName = 'Nr_Origem'
    end
    object ADODsReportId_Origem: TSmallintField
      FieldName = 'Id_Origem'
    end
    object ADODsReportSt_NFe: TStringField
      FieldName = 'St_NFe'
      FixedChar = True
      Size = 1
    end
    object ADODsReportDt_NFe: TDateTimeField
      FieldName = 'Dt_NFe'
    end
    object ADODsReportNm_Arquivo: TStringField
      FieldName = 'Nm_Arquivo'
      Size = 255
    end
    object ADODsReportId_Lote: TIntegerField
      FieldName = 'Id_Lote'
    end
    object ADODsReportDs_Lote: TStringField
      FieldName = 'Ds_Lote'
      Size = 255
    end
    object ADODsReportNr_Recibo: TStringField
      FieldName = 'Nr_Recibo'
    end
    object ADODsReportNr_Situacao: TStringField
      FieldName = 'Nr_Situacao'
    end
    object ADODsReportDs_Motivo: TStringField
      FieldName = 'Ds_Motivo'
      Size = 255
    end
    object ADODsReportFl_Gerar: TStringField
      FieldName = 'Fl_Gerar'
      FixedChar = True
      Size = 1
    end
    object ADODsReportNr_chNFe: TStringField
      FieldName = 'Nr_chNFe'
      Size = 255
    end
    object ADODsReportNr_nProt: TStringField
      FieldName = 'Nr_nProt'
      Size = 255
    end
    object ADODsReportNr_cStat: TSmallintField
      FieldName = 'Nr_cStat'
    end
    object ADODsReportDt_DhRecbto: TDateTimeField
      FieldName = 'Dt_DhRecbto'
      DisplayFormat = 'dd/mm/yyyy HH:mm'
    end
    object ADODsReportMm_NFe: TMemoField
      FieldName = 'Mm_NFe'
      BlobType = ftMemo
    end
    object ADODsReportDs_Justificativa: TStringField
      FieldName = 'Ds_Justificativa'
      Size = 255
    end
    object ADODsReportCd_Emitente: TIntegerField
      FieldName = 'Cd_Emitente'
    end
    object ADODsReportNm_Emitente: TStringField
      DisplayLabel = 'Cliente / Fornecedor'
      FieldName = 'Nm_Emitente'
      ReadOnly = True
      Size = 50
    end
    object ADODsReportNr_Fatura: TIntegerField
      DisplayLabel = 'Fatura'
      FieldName = 'Nr_Fatura'
      ReadOnly = True
    end
    object ADODsReportVl_Fatura: TBCDField
      DisplayLabel = 'Valor'
      FieldName = 'Vl_Fatura'
      ReadOnly = True
      DisplayFormat = '#,##0.00'
      Precision = 28
      Size = 9
    end
    object ADODsReportDp_Situacao: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldKind = fkCalculated
      FieldName = 'Dp_Situacao'
      Calculated = True
    end
    object ADODsReportDp_Origem: TStringField
      DisplayLabel = 'Origem'
      FieldKind = fkCalculated
      FieldName = 'Dp_Origem'
      Calculated = True
    end
    object ADODsReportDs_xMotivo: TStringField
      FieldName = 'Ds_xMotivo'
      Size = 255
    end
    object ADODsReportDs_EMailNFe: TStringField
      FieldName = 'Ds_EMailNFe'
      Size = 100
    end
  end
  object DsReport: TDataSource
    DataSet = ADODsReport
    Left = 60
    Top = 88
  end
end
