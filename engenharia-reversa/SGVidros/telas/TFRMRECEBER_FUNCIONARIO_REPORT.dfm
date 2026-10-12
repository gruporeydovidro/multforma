object FrmReceber_Funcionario_Report: TFrmReceber_Funcionario_Report
  Left = 294
  Top = 173
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Rel. de Contas '#224' Receber por Vendedor'
  ClientHeight = 231
  ClientWidth = 737
  Color = clWhite
  Ctl3D = False
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
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
    Height = 231
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 716
    Height = 231
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 2
      Top = 201
      Width = 709
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
    object Label12: TLabel
      Left = 5
      Top = 37
      Width = 35
      Height = 13
      Caption = 'Cliente:'
    end
    object SbPortador: TSpeedButton
      Left = 45
      Top = 89
      Width = 23
      Height = 19
      Hint = 'Seleciona Portador'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbPortadorClick
    end
    object Label10: TLabel
      Left = 5
      Top = 74
      Width = 43
      Height = 13
      Caption = 'Portador:'
    end
    object Label63: TLabel
      Left = 5
      Top = 110
      Width = 113
      Height = 13
      Caption = 'Vendedor (Funcion'#225'rio):'
    end
    object SbFuncionario: TSpeedButton
      Left = 45
      Top = 125
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
      Left = 194
      Top = 4
      Width = 94
      Height = 13
      Caption = 'Ordem do Relat'#243'rio:'
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
      TabOrder = 3
      OnExit = EdtCd_EmitenteExit
      OnKeyDown = EdtCd_EmitenteKeyDown
    end
    object EdtNm_Emitente: TEdit
      Left = 84
      Top = 52
      Width = 450
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
      TabOrder = 4
    end
    object EdtCd_Portador: TCurrencyEdit
      Tag = 2
      Left = 5
      Top = 89
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 5
      OnExit = EdtCd_PortadorExit
      OnKeyDown = EdtCd_EmitenteKeyDown
    end
    object EdtNm_Portador: TEdit
      Left = 68
      Top = 89
      Width = 450
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
      TabOrder = 6
    end
    object EdtCd_Funcionario: TCurrencyEdit
      Tag = 6
      Left = 5
      Top = 125
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 7
      OnExit = EdtCd_FuncionarioExit
      OnKeyDown = EdtCd_EmitenteKeyDown
    end
    object EdtNm_Funcionario: TEdit
      Left = 68
      Top = 125
      Width = 450
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
      TabOrder = 8
    end
    object BitBtnReport: TBitBtn
      Left = 543
      Top = 204
      Width = 85
      Height = 25
      Caption = '&Imprimir'
      TabOrder = 9
      OnClick = BitBtnReportClick
      Glyph.Data = {binary 1146 bytes}
    end
    object BitBtnCancel: TBitBtn
      Left = 629
      Top = 204
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 10
      OnClick = BitBtnCancelClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object CbOrdem: TComboBox
      Left = 194
      Top = 18
      Width = 103
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 2
      Items.Strings = (
        'Cliente'
        'Vencimento'
      )
    end
    object CkBZebrado: TCheckBox
      Left = 5
      Top = 208
      Width = 111
      Height = 17
      TabStop = False
      Caption = 'Imprimir "&Zebrado"'
      Checked = True
      State = cbChecked
      TabOrder = 12
    end
    object SctRepReceber: TSctReport
      Left = 382
      Top = 77
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
      TabOrder = 11
      Visible = False
      Minimized = True
      Prompt = True
      AutoRun = False
      SuppressStatus = False
      PixelsPerInch = 96
      STop = 50
      SLeft = 0
      SWidth = 833
      SHeight = 503
      MTop = 77
      MLeft = 382
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
        PageSetup.Height = 11.6929133858268
        PageSetup.Width = 8.26771653543307
        PageSetup.PreviewSettings.ModalPreview = mpNonModal
        PageSetup.PreviewSettings.PreviewOwner = poAppOwned
        PageSetup.PreviewSettings.FormStyle = pfsMDIChild
        PageSetup.LeftMargin = 0.3
        PageSetup.RightMargin = 0.3
        PageSetup.TopMargin = 0.3
        BorderType = btNone
        Description = 'Contas '#224' Receber'
        CloseDataSet = False
        DataRange = drAllRecords
        OmitLastPgFt = False
        Head = SctBand8
        Detail = SctDetailVendaPeriodo
        Foot = SctBand12
        PageHead = SctBand9
        PageFoot = SctBand11
        DataSource = DsReceber
        Order = 1
        object SctLevel8: TSctLevel
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          IsHeader = True
        end
        object SctLevel9: TSctLevel
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          IsHeader = True
        end
        object SctLevel10: TSctLevel
          Left = 0
          Top = 0
          Width = 0
          Height = 0
        end
        object SctLevel11: TSctLevel
          Left = 0
          Top = 0
          Width = 0
          Height = 0
        end
        object SctLevel12: TSctLevel
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
          UpdateLevel = SctLevel8
          AutoVar = True
          ID = vidDateTimeVar
        end
        object SctPageVar2: TSctPageVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          UpdateLevel = SctLevel9
          AutoVar = True
          ID = vidPageVar
        end
        object SctGrpVendedor: TSctGroup
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Header = SctGrpEstado
          Footer = SctGrpFtEstado
          Variable = adodsreceberDp_FuncionarioVar
          Level = 0
        end
        object SctLevel13: TSctLevel
          Left = 30
          Top = 0
          Width = 0
          Height = 0
          IsHeader = True
        end
        object SctLevel14: TSctLevel
          Left = 30
          Top = 0
          Width = 0
          Height = 0
        end
        object DataSourceGuide4: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel10
          DataSource = DsReceber
        end
        object DataSourceGuide6: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel10
          DataSource = DmMaster.DsUsuario
        end
        object DataSourceGuide7: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel10
          DataSource = DmMaster.DsFilial
        end
        object adodsfilialDp_FilialVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_Filial'
          DataSource = DmMaster.DsFilial
          UpdateLevel = SctLevel10
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreceberDt_VencimentoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dt_Vencimento'
          DataSource = DsReceber
          UpdateLevel = SctLevel10
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreceberVl_ParcelaVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Vl_Parcela'
          DataSource = DsReceber
          UpdateLevel = SctLevel10
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreceberDp_EmitenteVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_Emitente'
          DataSource = DsReceber
          UpdateLevel = SctLevel10
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreceberVl_SaldoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Vl_Saldo'
          DataSource = DsReceber
          UpdateLevel = SctLevel10
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreceberDp_ReceberVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_Receber'
          DataSource = DsReceber
          UpdateLevel = SctLevel10
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreceberVl_RecebidoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Vl_Recebido'
          DataSource = DsReceber
          UpdateLevel = SctLevel10
          AutoVar = False
          ID = vidAutoDataVar
        end
        object TotalOfVl_Parcela1: TSctTotalvar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Variable = adodsreceberVl_ParcelaVar
          UpdateLevel = SctLevel10
          AutoVar = False
          ID = vidTotalVar
        end
        object TotalOfVl_Saldo1: TSctTotalvar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Variable = adodsreceberVl_SaldoVar
          UpdateLevel = SctLevel10
          AutoVar = False
          ID = vidTotalVar
        end
        object TotalOfVl_Recebido: TSctTotalvar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Variable = adodsreceberVl_RecebidoVar
          UpdateLevel = SctLevel10
          AutoVar = False
          ID = vidTotalVar
        end
        object DataSourceGuide8: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel10
          DataSource = FrmPortador_Find.DsFind
        end
        object DataSourceGuide: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel10
          DataSource = FrmEmitente_Find.DsFind
        end
        object DataSourceGuide1: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel10
          DataSource = FrmEmitente_Find.DsContato
        end
        object DataSourceGuide2: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel10
          DataSource = FrmFuncionario_Find.DsFind
        end
        object adodsreceberDp_FuncionarioVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_Funcionario'
          DataSource = DsReceber
          UpdateLevel = SctLevel10
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctGrpQuebra: TSctGroup
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Header = GroupHeader
          Footer = GroupFooter
          Variable = adodsreceberDp_QuebraVar
          Level = 1
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
        object adodsreceberDp_QuebraVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_Quebra'
          DataSource = DsReceber
          UpdateLevel = SctLevel10
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreceberNr_OrcamentoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_Orcamento'
          DataSource = DsReceber
          UpdateLevel = SctLevel10
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreceberDp_FaturaVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_Fatura'
          DataSource = DsReceber
          UpdateLevel = SctLevel10
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctBand8: TSctBand
          Left = 0
          Top = 0
          Width = 786
          Height = 7
          ParentColor = True
          BandName = 'Report Header'
          Updatelevel = SctLevel8
          Visible = False
        end
        object SctBand9: TSctBand
          Left = 0
          Top = 22
          Width = 786
          Height = 44
          ParentColor = True
          BandName = 'Page Header'
          Updatelevel = SctLevel9
          object SctVendaPeriodo: TSctvarlabel
            Left = 2
            Top = 2
            Width = 289
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Contas '#224' Receber por Vendedor'
          end
          object Sctvarlabel105: TSctvarlabel
            Left = 633
            Top = 1
            Width = 34
            Height = 17
            Caption = 'Data:'
          end
          object Sctvarlabel106: TSctvarlabel
            Left = 671
            Top = 1
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = SctDateTimeVar2
            DataFormat.DisplayFormat = 'dd/mm/yyyy'
          end
          object Sctvarlabel114: TSctvarlabel
            Left = 633
            Top = 19
            Width = 34
            Height = 17
            Caption = 'Hora:'
          end
          object Sctvarlabel115: TSctvarlabel
            Left = 671
            Top = 19
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = SctDateTimeVar2
            DataFormat.DisplayFormat = 'hh:mm:ss'
          end
          object SctLine8: TSctLine
            Left = 1
            Top = 38
            Width = 734
            Height = 6
          end
          object SctPerPagar: TSctvarlabel
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
        object SctDetailVendaPeriodo: TSctBand
          Left = 0
          Top = 168
          Width = 786
          Height = 19
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = True
          ParentFont = False
          BandName = 'Detail'
          Updatelevel = SctLevel10
          Stretch = True
          OnBeforePrint = SctDetailVendaPeriodoBeforePrint
          object Sctvarlabel35: TSctvarlabel
            Left = 0
            Top = 1
            Width = 58
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsreceberDp_ReceberVar
          end
          object Sctvarlabel36: TSctvarlabel
            Left = 62
            Top = 0
            Width = 258
            Height = 17
            WrapText = True
            Stretch = True
            Variable = adodsreceberDp_EmitenteVar
          end
          object Sctvarlabel37: TSctvarlabel
            Left = 666
            Top = 1
            Width = 70
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsreceberVl_SaldoVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.SuppressNulls = True
            DataFormat.Digits = 2
          end
          object Sctvarlabel38: TSctvarlabel
            Left = 590
            Top = 1
            Width = 70
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsreceberVl_RecebidoVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.SuppressNulls = True
            DataFormat.Digits = 2
          end
          object Sctvarlabel39: TSctvarlabel
            Left = 515
            Top = 1
            Width = 70
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsreceberVl_ParcelaVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.SuppressNulls = True
            DataFormat.Digits = 2
          end
          object Sctvarlabel52: TSctvarlabel
            Left = 450
            Top = 0
            Width = 61
            Height = 17
            AlignHorizontal = laRight
            WrapText = True
            Stretch = True
            Variable = adodsreceberDp_FaturaVar
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel2: TSctvarlabel
            Left = 384
            Top = 1
            Width = 65
            Height = 17
            AlignHorizontal = laCenter
            Variable = adodsreceberDt_VencimentoVar
            DataFormat.DisplayFormat = 'dd/mm/yyyy'
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel5: TSctvarlabel
            Left = 322
            Top = 1
            Width = 58
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsreceberNr_OrcamentoVar
            DataFormat.DisplayFormat = '###'
            DataFormat.SuppressNulls = True
          end
        end
        object SctBand11: TSctBand
          Left = 0
          Top = 288
          Width = 786
          Height = 23
          Color = 15987699
          BandName = 'Page Footer'
          Updatelevel = SctLevel11
          object SctLine9: TSctLine
            Left = 1
            Top = 1
            Width = 734
            Height = 6
            AlignVertical = laTop
          end
          object Sctvarlabel124: TSctvarlabel
            Left = 1
            Top = 4
            Width = 460
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            Variable = adodsfilialDp_FilialVar1
          end
          object Sctvarlabel125: TSctvarlabel
            Left = 655
            Top = 4
            Width = 45
            Height = 17
            AlignHorizontal = laRight
            Caption = 'P'#225'gina:'
          end
          object Sctvarlabel126: TSctvarlabel
            Left = 701
            Top = 4
            Width = 35
            Height = 17
            AlignHorizontal = laRight
            Variable = SctPageVar2
            DataFormat.DisplayFormat = '#,##0'
          end
        end
        object SctBand12: TSctBand
          Left = 0
          Top = 326
          Width = 786
          Height = 22
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = True
          ParentFont = False
          BandName = 'Report Footer'
          Updatelevel = SctLevel12
          object SctLine7: TSctLine
            Left = 390
            Top = 2
            Width = 346
            Height = 5
            AlignVertical = laTop
          end
          object SctTotalvarLabel22: TSctTotalvarLabel
            Left = 515
            Top = 5
            Width = 70
            Height = 17
            TotalVariable = TotalOfVl_Parcela1
            DataFormat.DisplayFormat = '#,##0.00'
          end
          object SctTotalvarLabel23: TSctTotalvarLabel
            Left = 590
            Top = 5
            Width = 70
            Height = 17
            TotalVariable = TotalOfVl_Recebido
            DataFormat.DisplayFormat = '#,##0.00'
          end
          object SctTotalvarLabel24: TSctTotalvarLabel
            Left = 666
            Top = 5
            Width = 70
            Height = 17
            TotalVariable = TotalOfVl_Saldo1
            DataFormat.DisplayFormat = '#,##0.00'
          end
          object Sctvarlabel47: TSctvarlabel
            Left = 408
            Top = 5
            Width = 103
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Total Geral'
          end
        end
        object PgHdPedido: TSctSubBand
          Left = 0
          Top = 81
          Width = 786
          Height = 19
          Color = 15987699
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          BandName = 'PageHeaderBandSub'
          Updatelevel = SctLevel9
          Band = SctBand9
          Above = False
          object Sctvarlabel42: TSctvarlabel
            Left = 0
            Top = 1
            Width = 58
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Receber'
          end
          object Sctvarlabel43: TSctvarlabel
            Left = 63
            Top = 1
            Width = 65
            Height = 17
            Caption = 'Cliente'
          end
          object Sctvarlabel44: TSctvarlabel
            Left = 666
            Top = 1
            Width = 70
            Height = 17
            AlignHorizontal = laRight
            DataFormat.SuppressNulls = True
            Caption = 'Saldo'
          end
          object Sctvarlabel45: TSctvarlabel
            Left = 590
            Top = 1
            Width = 70
            Height = 17
            AlignHorizontal = laRight
            DataFormat.SuppressNulls = True
            Caption = 'Recebido'
          end
          object Sctvarlabel46: TSctvarlabel
            Left = 515
            Top = 1
            Width = 70
            Height = 17
            AlignHorizontal = laRight
            DataFormat.SuppressNulls = True
            Caption = 'Parcela'
          end
          object SctLine10: TSctLine
            Left = 1
            Top = 13
            Width = 734
            Height = 6
          end
          object Sctvarlabel51: TSctvarlabel
            Left = 450
            Top = 1
            Width = 61
            Height = 17
            AlignHorizontal = laRight
            DataFormat.SuppressNulls = True
            Caption = 'Fatura / CF'
          end
          object Sctvarlabel1: TSctvarlabel
            Left = 384
            Top = 1
            Width = 65
            Height = 17
            AlignHorizontal = laCenter
            DataFormat.SuppressNulls = True
            Caption = 'Vencimento'
          end
          object Sctvarlabel6: TSctvarlabel
            Left = 322
            Top = 1
            Width = 58
            Height = 17
            AlignHorizontal = laRight
            DataFormat.SuppressNulls = True
            Caption = 'Or'#231'amento'
          end
        end
        object SctGrpEstado: TSctBand
          Left = 0
          Top = 115
          Width = 786
          Height = 20
          Color = 15987699
          BandName = 'SctGrpVendedor Header'
          Updatelevel = SctLevel13
          object Sctvarlabel40: TSctvarlabel
            Left = 0
            Top = 1
            Width = 63
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Vendedor:'
          end
          object Sctvarlabel4: TSctvarlabel
            Left = 65
            Top = 1
            Width = 507
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Variable = adodsreceberDp_FuncionarioVar
          end
        end
        object SctGrpFtEstado: TSctBand
          Left = 0
          Top = 242
          Width = 786
          Height = 31
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = True
          ParentFont = False
          BandName = 'SctGrpVendedor Footer'
          Updatelevel = SctLevel14
          object SctLine6: TSctLine
            Left = 376
            Top = 2
            Width = 360
            Height = 5
            AlignVertical = laTop
          end
          object SctTotalvarLabel19: TSctTotalvarLabel
            Left = 515
            Top = 5
            Width = 70
            Height = 17
            TotalVariable = TotalOfVl_Parcela1
            DataFormat.DisplayFormat = '#,##0.00'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object SctTotalvarLabel20: TSctTotalvarLabel
            Left = 590
            Top = 5
            Width = 70
            Height = 17
            TotalVariable = TotalOfVl_Recebido
            DataFormat.DisplayFormat = '#,##0.00'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object SctTotalvarLabel21: TSctTotalvarLabel
            Left = 666
            Top = 5
            Width = 70
            Height = 17
            TotalVariable = TotalOfVl_Saldo1
            DataFormat.DisplayFormat = '#,##0.00'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Sctvarlabel41: TSctvarlabel
            Left = 390
            Top = 5
            Width = 121
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Total do Vendedor'
          end
        end
        object GroupHeader: TSctBand
          Left = 0
          Top = 150
          Width = 786
          Height = 3
          ParentColor = True
          BandName = 'SctGrpQuebra Header'
          Updatelevel = GroupHeaderLevel
          Visible = False
        end
        object GroupFooter: TSctBand
          Left = 0
          Top = 202
          Width = 786
          Height = 25
          ParentColor = True
          BandName = 'SctGrpQuebra Footer'
          Updatelevel = GroupFooterLevel
          object SctLine1: TSctLine
            Left = 176
            Top = 2
            Width = 560
            Height = 5
            AlignVertical = laTop
          end
          object SctTotalvarLabel1: TSctTotalvarLabel
            Left = 515
            Top = 3
            Width = 70
            Height = 17
            TotalVariable = TotalOfVl_Parcela1
            DataFormat.DisplayFormat = '#,##0.00'
          end
          object SctTotalvarLabel2: TSctTotalvarLabel
            Left = 590
            Top = 3
            Width = 70
            Height = 17
            TotalVariable = TotalOfVl_Recebido
            DataFormat.DisplayFormat = '#,##0.00'
          end
          object SctTotalvarLabel3: TSctTotalvarLabel
            Left = 666
            Top = 3
            Width = 70
            Height = 17
            TotalVariable = TotalOfVl_Saldo1
            DataFormat.DisplayFormat = '#,##0.00'
          end
          object Sctvarlabel3: TSctvarlabel
            Left = 184
            Top = 3
            Width = 327
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsreceberDp_QuebraVar
            Caption = 'Total do Vencimento'
          end
        end
      end
    end
  end
  object ADODsReceber: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    OnCalcFields = ADODsReceberCalcFields
    CommandText = 'select'#13#10'  A.Nr_Receber, A.Nr_Parcela, A.Dt_Vencimento, A.Vl_Parcela, OT.Nr_Fatura,'#13#10'  D.Nm_Emitente + '''' - '''' + Cast( B.Cd_Emitente as VarChar( 6 ) ) as Dp_Emitente,'#13#10'  sum( C.Vl_Lancamento ) as Vl_Recebido, OT.Nr_Orcamento, O.Nr_ECF,'#13#10'  Cast( A.Nr_Receber as VarChar( 6 ) ) + ''''/'''' +'#13#10'  dbo.IntToStrZero( A.Nr_Parcela, 2 ) as Dp_Receber,'#13#10'  OT.Nm_Funcionario + '''' - '''' + Cast( OT.Cd_Funcionario as VarChar ) as Dp_Funcionario'#13#10#13#10'from'#13#10'  Receber_Parcela A'#13#10#13#10'inner join'#13#10'  Receber B'#13#10'on'#13#10'  B.Cd_Filial  = A.Cd_Filial and'#13#10'  B.Nr_Receber = A.Nr_Receber and'#13#10'  B.St_Receber <= ''''2'''#13#10#13#10'inner join'#13#10'  Emitente D'#13#10'on'#13#10'  D.Cd_Emitente = B.Cd_Emitente'#13#10#13#10'inner join'#13#10'  Orcamento_Total OT'#13#10'on'#13#10'  OT.Cd_Filial    = B.Cd_Filial and'#13#10'  OT.Nr_Orcamento = B.Nr_Orcamento'#13#10'  /* Cd_Funcionario */'#13#10#13#10'inner join'#13#10'  Orcamento O'#13#10'on'#13#10'  O.Cd_Filial    = OT.Cd_Filial and'#13#10'  O.Nr_Orcamento = OT.Nr_Orcamento'#13#10#13#10'left join'#13#10'  Receber_Historico C'#13#10'on'#13#10'  C.Cd_Filial     = A.Cd_Filial and'#13#10'  C.Nr_Receber    = A.Nr_Receber and'#13#10'  C.Nr_Parcela    = A.Nr_Parcela and'#13#10'  C.Tp_Lancamento >= ''''2'''#13#10#13#10'where'#13#10'  A.Cd_Filial      = :Cd_Filial and'#13#10'  A.Dt_Vencimento >= ''''10/01/2014'''' and'#13#10'  A.Dt_Vencimento < ''''11/01/2014'''#13#10'group by'#13#10'  A.Nr_Receber, A.Nr_Parcela, A.Dt_Vencimento, A.Vl_Parcela,'#13#10'  OT.Nr_Fatura, O.Nr_ECF,'#13#10'  D.Nm_Emitente + '''' - '''' + Cast( B.Cd_Emitente as VarChar( 6 ) ),'#13#10'  OT.Nm_Funcionario + '''' - '''' + Cast( OT.Cd_Funcionario as VarChar ),'#13#10'  OT.Nr_Orcamento'#13#10#13#10'having'#13#10'  A.Vl_Parcela >'#13#10'  ( case when sum( C.Vl_Lancamento ) is null then 0.0 else sum( C.Vl_Lancamento ) end )'#13#10#13#10'-------------------- Ordem de Cliente (emitente)'#13#10'order by'#13#10'  OT.Nm_Funcionario + '''' - '''' + Cast( OT.Cd_Funcionario as VarChar ),'#13#10'  D.Nm_Emitente + '''' - '''' + Cast( B.Cd_Emitente as VarChar( 6 ) ),'#13#10'  A.Dt_Vencimento'
    Parameters = <
      item
        Name = 'Cd_Filial'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = 1
      end>
    SQLOther1.Strings = (
      'select'
      '  A.Nr_Receber, A.Nr_Parcela, A.Dt_Vencimento, A.Vl_Parcela, OT.Nr_Fatura,'
      '  D.Nm_Emitente + '''' - '''' + Cast( B.Cd_Emitente as VarChar( 6 ) ) as Dp_Emitente,'
      '  sum( C.Vl_Lancamento ) as Vl_Recebido, OT.Nr_Orcamento, O.Nr_ECF,'
      '  Cast( A.Nr_Receber as VarChar( 6 ) ) + ''''/'''' +'
      '  dbo.IntToStrZero( A.Nr_Parcela, 2 ) as Dp_Receber,'
      '  OT.Nm_Funcionario + '''' - '''' + Cast( OT.Cd_Funcionario as VarChar ) as Dp_Funcionario'
      ''
      'from'
      '  Receber_Parcela A'
      ''
      'inner join'
      '  Receber B'
      'on'
      '  B.Cd_Filial  = A.Cd_Filial and'
      '  B.Nr_Receber = A.Nr_Receber and'
      '  B.St_Receber <= ''''2'''
    )
    SQLOther2.Strings = (
      'inner join'
      '  Emitente D'
      'on'
      '  D.Cd_Emitente = B.Cd_Emitente'
      ''
      'inner join'
      '  Orcamento_Total OT'
      'on'
      '  OT.Cd_Filial    = B.Cd_Filial and'
      '  OT.Nr_Orcamento = B.Nr_Orcamento'
      '  /* Cd_Funcionario */'
      ''
      'inner join'
      '  Orcamento O'
      'on'
      '  O.Cd_Filial    = OT.Cd_Filial and'
      '  O.Nr_Orcamento = OT.Nr_Orcamento'
      '  '
      'left join'
      '  Receber_Historico C'
      'on'
      '  C.Cd_Filial     = A.Cd_Filial and'
      '  C.Nr_Receber    = A.Nr_Receber and'
      '  C.Nr_Parcela    = A.Nr_Parcela and'
      '  C.Tp_Lancamento >= ''''2'''
      ''
      'where'
      '  A.Cd_Filial      = :Cd_Filial and'
      '  A.Dt_Vencimento >= @Dt_Start and'
      '  A.Dt_Vencimento < @Dt_End'
    )
    SQLOther3.Strings = (
      'group by'
      '  A.Nr_Receber, A.Nr_Parcela, A.Dt_Vencimento, A.Vl_Parcela, OT.Nr_Fatura,'
      '  D.Nm_Emitente + '''' - '''' + Cast( B.Cd_Emitente as VarChar( 6 ) ),'
      '  OT.Nm_Funcionario + '''' - '''' + Cast( OT.Cd_Funcionario as VarChar ),'
      '  OT.Nr_Orcamento, O.Nr_ECF'
      ''
      'having'
      '  A.Vl_Parcela >'
      '  ( case when sum( C.Vl_Lancamento ) is null then 0.0 else sum( C.Vl_Lancamento ) end )'
      ''
      '-------------------- Ordem de Cliente (emitente)'
      'order by'
      '  OT.Nm_Funcionario + '''' - '''' + Cast( OT.Cd_Funcionario as VarChar ),'
      '  D.Nm_Emitente + '''' - '''' + Cast( B.Cd_Emitente as VarChar( 6 ) ),'
      '  A.Dt_Vencimento'
    )
    SQLOther4.Strings = (
      'group by'
      '  A.Nr_Receber, A.Nr_Parcela, A.Dt_Vencimento, A.Vl_Parcela, OT.Nr_Fatura,'
      '  D.Nm_Emitente + '''' - '''' + Cast( B.Cd_Emitente as VarChar( 6 ) ),'
      '  OT.Nm_Funcionario + '''' - '''' + Cast( OT.Cd_Funcionario as VarChar ),'
      '  OT.Nr_Orcamento, O.Nr_ECF'
      ''
      'having'
      '  A.Vl_Parcela >'
      '  ( case when sum( C.Vl_Lancamento ) is null then 0.0 else sum( C.Vl_Lancamento ) end )'
      ''
      '-------------------- Ordem de Vencimento'
      'order by'
      '  OT.Nm_Funcionario + '''' - '''' + Cast( OT.Cd_Funcionario as VarChar ), A.Dt_Vencimento,'
      '  D.Nm_Emitente + '''' - '''' + Cast( B.Cd_Emitente as VarChar( 6 ) )'
    )
    Left = 450
    Top = 20
    object ADODsReceberNr_Parcela: TSmallintField
      FieldName = 'Nr_Parcela'
    end
    object ADODsReceberDt_Vencimento: TDateTimeField
      FieldName = 'Dt_Vencimento'
    end
    object ADODsReceberVl_Parcela: TBCDField
      FieldName = 'Vl_Parcela'
      Precision = 10
    end
    object ADODsReceberDp_Emitente: TStringField
      FieldName = 'Dp_Emitente'
      Size = 58
    end
    object ADODsReceberVl_Saldo: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Vl_Saldo'
      Calculated = True
    end
    object ADODsReceberNr_Receber: TIntegerField
      FieldName = 'Nr_Receber'
    end
    object ADODsReceberDp_Receber: TStringField
      FieldName = 'Dp_Receber'
      ReadOnly = True
      Size = 8
    end
    object ADODsReceberVl_Recebido: TBCDField
      FieldName = 'Vl_Recebido'
      ReadOnly = True
      Precision = 19
    end
    object ADODsRecebernr_fatura: TIntegerField
      FieldName = 'nr_fatura'
    end
    object ADODsReceberDp_Funcionario: TStringField
      FieldName = 'Dp_Funcionario'
      ReadOnly = True
      Size = 83
    end
    object ADODsReceberDp_Quebra: TStringField
      FieldKind = fkCalculated
      FieldName = 'Dp_Quebra'
      Size = 150
      Calculated = True
    end
    object ADODsReceberNr_Orcamento: TIntegerField
      FieldName = 'Nr_Orcamento'
    end
    object ADODsReceberNr_ECF: TIntegerField
      FieldName = 'Nr_ECF'
    end
    object ADODsReceberDp_Fatura: TStringField
      FieldKind = fkCalculated
      FieldName = 'Dp_Fatura'
      Calculated = True
    end
  end
  object DsReceber: TDataSource
    DataSet = ADODsReceber
    Left = 419
    Top = 20
  end
end
