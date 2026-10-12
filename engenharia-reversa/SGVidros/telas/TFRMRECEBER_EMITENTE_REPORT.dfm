object FrmReceber_Emitente_Report: TFrmReceber_Emitente_Report
  Left = 454
  Top = 210
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Contas '#224' Receber/Recebidas por Cliente'
  ClientHeight = 282
  ClientWidth = 729
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
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 708
    Height = 282
    Align = alClient
    ParentColor = True
    TabOrder = 3
    OnDblClick = PnlFundoDblClick
    object BvlSeparator: TBevel
      Left = 3
      Top = 250
      Width = 699
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
      Top = 124
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
      Top = 109
      Width = 43
      Height = 13
      Caption = 'Portador:'
    end
    object Label1: TLabel
      Left = 195
      Top = 4
      Width = 36
      Height = 13
      Caption = 'Contas:'
    end
    object Label5: TLabel
      Left = 5
      Top = 74
      Width = 91
      Height = 13
      Caption = 'Grupo de Emitente:'
    end
    object SbGrupo: TSpeedButton
      Left = 45
      Top = 89
      Width = 23
      Height = 19
      Hint = 'Seleciona Grupo de Emitente'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbGrupoClick
    end
    object SbSubGrupo: TSpeedButton
      Left = 383
      Top = 89
      Width = 23
      Height = 19
      Hint = 'Consulta SubGrupo de Emitente'
      Flat = True
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
      OnClick = SbSubGrupoClick
    end
    object Label20: TLabel
      Left = 342
      Top = 73
      Width = 110
      Height = 13
      Caption = 'SubGrupo de Emitente:'
    end
    object BitBtnReport: TBitBtn
      Left = 535
      Top = 254
      Width = 85
      Height = 25
      Caption = '&Imprimir'
      TabOrder = 11
      OnClick = BitBtnReportClick
      Glyph.Data = {binary 1146 bytes}
    end
    object BitBtnCancel: TBitBtn
      Left = 621
      Top = 254
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 12
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
      Left = 78
      Top = 52
      Width = 421
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
      Tag = 4
      Left = 5
      Top = 124
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 9
      OnExit = EdtCd_PortadorExit
      OnKeyDown = EdtCd_EmitenteKeyDown
    end
    object EdtNm_Portador: TEdit
      Left = 69
      Top = 124
      Width = 324
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
      TabOrder = 10
    end
    object CbConta: TComboBox
      Left = 195
      Top = 18
      Width = 126
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 2
      Items.Strings = (
        #192' Receber'
        'Recebidas'
        'Extrato'
      )
    end
    object EdtCd_Grupo: TCurrencyEdit
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
      OnExit = EdtCd_GrupoExit
      OnKeyDown = EdtCd_EmitenteKeyDown
    end
    object EdtNm_Grupo: TEdit
      Left = 69
      Top = 89
      Width = 268
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
    object EdtCd_SubGrupo: TCurrencyEdit
      Tag = 3
      Left = 342
      Top = 89
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '###'
      TabOrder = 7
      OnExit = EdtCd_SubGrupoExit
      OnKeyDown = EdtCd_EmitenteKeyDown
    end
    object EdtNm_SubGrupo: TEdit
      Left = 408
      Top = 89
      Width = 289
      Height = 19
      TabStop = False
      AutoSize = False
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 8
    end
    object CkBZebrado: TCheckBox
      Left = 6
      Top = 257
      Width = 111
      Height = 17
      TabStop = False
      Caption = 'Imprimir "&Zebrado"'
      Checked = True
      State = cbChecked
      TabOrder = 14
    end
    object SctRepExtrato: TSctReport
      Left = 554
      Top = 2
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
      TabOrder = 13
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
      MTop = 2
      MLeft = 554
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
        Description = 'Rel. de Extrado de CR por Cliente'
        CloseDataSet = False
        DataRange = drAllRecords
        OmitLastPgFt = False
        Head = SctBand1
        Detail = SctBand3
        Foot = SctBand5
        PageHead = SctBand2
        PageFoot = SctBand4
        DataSource = DsExtrato
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
        object DataSourceGuide16: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = DsRecebido
        end
        object DataSourceGuide17: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = DsReceber
        end
        object DataSourceGuide18: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = DsExtrato
        end
        object DataSourceGuide19: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = FrmEmitente_Find.DsFind
        end
        object DataSourceGuide20: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = FrmEmitente_Find.DsContato
        end
        object DataSourceGuide21: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = FrmPortador_Find.DsFind
        end
        object adodsextratoCd_EmitenteVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Cd_Emitente'
          DataSource = DsExtrato
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsextratoNm_EmitenteVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nm_Emitente'
          DataSource = DsExtrato
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsextratoVl_ParcelaVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Vl_Parcela'
          DataSource = DsExtrato
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsextratoNr_OrcamentoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_Orcamento'
          DataSource = DsExtrato
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsextratoVl_RecebidoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Vl_Recebido'
          DataSource = DsExtrato
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsextratoVl_SaldoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Vl_Saldo'
          DataSource = DsExtrato
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsextratoNm_PortadorVar2: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nm_Portador'
          DataSource = DsExtrato
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object GrpEmitente: TSctGroup
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Header = Group1Header
          Footer = Group1Footer
          Variable = adodsextratoCd_EmitenteVar
          Level = 0
        end
        object Group1HeaderLevel: TSctLevel
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          IsHeader = True
        end
        object Group1FooterLevel: TSctLevel
          Left = 0
          Top = 0
          Width = 0
          Height = 0
        end
        object adodsextratoDp_ReceberVar2: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_Receber'
          DataSource = DsExtrato
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsextratoDt_VencimentoVar2: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dt_Vencimento'
          DataSource = DsExtrato
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object TotalOfVl_Saldo2: TSctTotalvar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Variable = adodsextratoVl_SaldoVar
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidTotalVar
        end
        object TotalOfVl_Recebido1: TSctTotalvar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Variable = adodsextratoVl_RecebidoVar
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidTotalVar
        end
        object TotalOfVl_Parcela2: TSctTotalvar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Variable = adodsextratoVl_ParcelaVar
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidTotalVar
        end
        object adodsextratoNm_FuncionarioVar2: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nm_Funcionario'
          DataSource = DsExtrato
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsextratoDs_FaturaVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ds_Fatura'
          DataSource = DsExtrato
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object DataSourceGuide24: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = DmMaster.DsConexao
        end
        object adodsextratoDp_EmitenteVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_Emitente'
          DataSource = DsExtrato
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object DataSourceGuide27: TSctDataSourceGuide
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
          object SctTitle: TSctvarlabel
            Left = 2
            Top = 1
            Width = 271
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Extrato de Contas a Receber por Cliente'
          end
          object Sctvarlabel58: TSctvarlabel
            Left = 639
            Top = 1
            Width = 31
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Data:'
          end
          object Sctvarlabel59: TSctvarlabel
            Left = 672
            Top = 1
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = SctDateTimeVar1
            DataFormat.DisplayFormat = 'dd/mm/yyyy'
          end
          object Sctvarlabel60: TSctvarlabel
            Left = 636
            Top = 18
            Width = 34
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Hora:'
          end
          object Sctvarlabel61: TSctvarlabel
            Left = 672
            Top = 18
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = SctDateTimeVar1
            DataFormat.DisplayFormat = 'hh:mm:ss'
          end
          object SctLine11: TSctLine
            Left = 0
            Top = 31
            Width = 737
            Height = 7
          end
          object SctVarPerExtrato: TSctvarlabel
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
        object SctBand3: TSctBand
          Left = 0
          Top = 143
          Width = 786
          Height = 18
          ParentColor = True
          BandName = 'Detail'
          Updatelevel = SctLevel3
          Stretch = True
          OnBeforePrint = SctBand3BeforePrint
          object Sctvarlabel63: TSctvarlabel
            Left = 0
            Top = 0
            Width = 58
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsextratoDp_ReceberVar2
          end
          object Sctvarlabel64: TSctvarlabel
            Left = 670
            Top = 0
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsextratoVl_SaldoVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.SuppressNulls = True
            DataFormat.Digits = 2
          end
          object Sctvarlabel65: TSctvarlabel
            Left = 602
            Top = 0
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsextratoVl_RecebidoVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.SuppressNulls = True
            DataFormat.Digits = 2
          end
          object Sctvarlabel79: TSctvarlabel
            Left = 534
            Top = 0
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsextratoVl_ParcelaVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.SuppressNulls = True
            DataFormat.Digits = 2
          end
          object Sctvarlabel80: TSctvarlabel
            Left = 473
            Top = -1
            Width = 61
            Height = 17
            AlignHorizontal = laRight
            WrapText = True
            Stretch = True
            Variable = adodsextratoDs_FaturaVar1
          end
          object Sctvarlabel81: TSctvarlabel
            Left = 412
            Top = 0
            Width = 60
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsextratoNr_OrcamentoVar
          end
          object Sctvarlabel82: TSctvarlabel
            Left = 344
            Top = 0
            Width = 65
            Height = 17
            AlignHorizontal = laCenter
            Variable = adodsextratoDt_VencimentoVar2
            DataFormat.DisplayFormat = 'dd/mm/yyyy'
          end
          object Sctvarlabel62: TSctvarlabel
            Left = 62
            Top = -1
            Width = 139
            Height = 17
            WrapText = True
            Stretch = True
            Variable = adodsextratoNm_FuncionarioVar2
          end
          object Sctvarlabel83: TSctvarlabel
            Left = 206
            Top = -1
            Width = 137
            Height = 17
            WrapText = True
            Stretch = True
            Variable = adodsextratoNm_PortadorVar2
          end
        end
        object SctBand4: TSctBand
          Left = 0
          Top = 218
          Width = 786
          Height = 20
          ParentColor = True
          BandName = 'Page Footer'
          Updatelevel = SctLevel4
          object SctLine12: TSctLine
            Left = 0
            Top = 1
            Width = 737
            Height = 7
            AlignVertical = laTop
          end
          object Sctvarlabel66: TSctvarlabel
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
          object Sctvarlabel67: TSctvarlabel
            Left = 616
            Top = 2
            Width = 44
            Height = 17
            AlignHorizontal = laRight
            Caption = 'P'#225'gina:'
          end
          object Sctvarlabel68: TSctvarlabel
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
          Top = 253
          Width = 786
          Height = 21
          ParentColor = True
          BandName = 'Report Footer'
          Updatelevel = SctLevel5
          object SctLine15: TSctLine
            Left = 430
            Top = 1
            Width = 307
            Height = 7
            AlignVertical = laTop
          end
          object Sctvarlabel86: TSctvarlabel
            Left = 430
            Top = 2
            Width = 98
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Total Geral'
          end
          object SctTotalvarLabel10: TSctTotalvarLabel
            Left = 534
            Top = 2
            Width = 65
            Height = 17
            TotalVariable = TotalOfVl_Parcela2
            DataFormat.DisplayFormat = '#,##0.00'
          end
          object SctTotalvarLabel26: TSctTotalvarLabel
            Left = 602
            Top = 2
            Width = 65
            Height = 17
            TotalVariable = TotalOfVl_Recebido1
            DataFormat.DisplayFormat = '#,##0.00'
          end
          object SctTotalvarLabel27: TSctTotalvarLabel
            Left = 670
            Top = 2
            Width = 65
            Height = 17
            TotalVariable = TotalOfVl_Saldo2
            DataFormat.DisplayFormat = '#,##0.00'
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
          object SctLine14: TSctLine
            Left = 0
            Top = 13
            Width = 737
            Height = 7
          end
          object Sctvarlabel70: TSctvarlabel
            Left = 0
            Top = 0
            Width = 58
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Receber'
          end
          object Sctvarlabel73: TSctvarlabel
            Left = 670
            Top = 0
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Saldo'
          end
          object Sctvarlabel71: TSctvarlabel
            Left = 602
            Top = 0
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Recebido'
          end
          object Sctvarlabel72: TSctvarlabel
            Left = 534
            Top = 0
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Valor'
          end
          object Sctvarlabel76: TSctvarlabel
            Left = 473
            Top = 0
            Width = 61
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Fatura / CF'
          end
          object Sctvarlabel77: TSctvarlabel
            Left = 412
            Top = 0
            Width = 60
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Or'#231'amento'
          end
          object Sctvarlabel78: TSctvarlabel
            Left = 344
            Top = 0
            Width = 65
            Height = 17
            AlignHorizontal = laCenter
            Caption = 'Vencimento'
          end
          object Sctvarlabel89: TSctvarlabel
            Left = 206
            Top = 1
            Width = 137
            Height = 17
            WrapText = True
            Stretch = True
            Caption = 'Portador'
          end
          object Sctvarlabel90: TSctvarlabel
            Left = 62
            Top = 1
            Width = 139
            Height = 17
            WrapText = True
            Stretch = True
            Caption = 'Vendedor'
          end
        end
        object Group1Header: TSctBand
          Left = 0
          Top = 109
          Width = 786
          Height = 19
          ParentColor = True
          BandName = 'GrpEmitente Header'
          Updatelevel = Group1HeaderLevel
          object Sctvarlabel74: TSctvarlabel
            Left = 1
            Top = 1
            Width = 65
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Variable = adodsextratoCd_EmitenteVar
          end
          object Sctvarlabel75: TSctvarlabel
            Left = 67
            Top = 1
            Width = 625
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Variable = adodsextratoDp_EmitenteVar1
          end
        end
        object Group1Footer: TSctBand
          Left = 0
          Top = 176
          Width = 786
          Height = 27
          ParentColor = True
          BandName = 'GrpEmitente Footer'
          Updatelevel = Group1FooterLevel
          object SctLine13: TSctLine
            Left = 430
            Top = 1
            Width = 307
            Height = 7
            AlignVertical = laTop
          end
          object Sctvarlabel69: TSctvarlabel
            Left = 430
            Top = 2
            Width = 98
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Totais do Cliente:'
          end
          object SctTotalvarLabel9: TSctTotalvarLabel
            Left = 534
            Top = 2
            Width = 65
            Height = 17
            TotalVariable = TotalOfVl_Parcela2
            DataFormat.DisplayFormat = '#,##0.00'
          end
          object SctTotalvarLabel18: TSctTotalvarLabel
            Left = 602
            Top = 2
            Width = 65
            Height = 17
            TotalVariable = TotalOfVl_Recebido1
            DataFormat.DisplayFormat = '#,##0.00'
          end
          object SctTotalvarLabel25: TSctTotalvarLabel
            Left = 670
            Top = 2
            Width = 65
            Height = 17
            TotalVariable = TotalOfVl_Saldo2
            DataFormat.DisplayFormat = '#,##0.00'
          end
        end
      end
    end
  end
  object PnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 21
    Height = 282
    Align = alLeft
    TabOrder = 2
  end
  object SctRepRecebido: TSctReport
    Left = 76
    Top = 149
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
    TabOrder = 0
    Visible = False
    Minimized = True
    Prompt = True
    AutoRun = False
    SuppressStatus = False
    PixelsPerInch = 96
    STop = 50
    SLeft = 1
    SWidth = 1020
    SHeight = 526
    MTop = 149
    MLeft = 76
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
      PageSetup.LeftMargin = 0.3
      PageSetup.RightMargin = 0.1
      PageSetup.TopMargin = 0.3
      BorderType = btNone
      Description = 'Contas Recebidas por Cliente'
      CloseDataSet = False
      DataRange = drAllRecords
      OmitLastPgFt = False
      Head = ReportHeaderBand
      Detail = DetailBand
      Foot = ReportFooterBand
      PageHead = PageHeaderBand
      PageFoot = PageFooterBand
      DataSource = DsRecebido
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
        DataSource = DsRecebido
      end
      object Group: TSctGroup
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        Header = GroupHeader
        Footer = GroupFooter
        Variable = adodsrecebidoDp_EmitenteVar
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
      object DataSourceGuide2: TSctDataSourceGuide
        Left = 112
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = DetailBandlevel
        DataSource = DsReceber
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
      object DataSourceGuide5: TSctDataSourceGuide
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
      object adodsrecebidoDp_ReceberVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Dp_Receber'
        DataSource = DsRecebido
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsrecebidoDt_VencimentoVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Dt_Vencimento'
        DataSource = DsRecebido
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsrecebidoVl_ParcelaVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Vl_Parcela'
        DataSource = DsRecebido
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsrecebidoDp_EmitenteVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Dp_Emitente'
        DataSource = DsRecebido
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsrecebidoDt_LancamentoVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Dt_Lancamento'
        DataSource = DsRecebido
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsrecebidoVl_PagamentoVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Vl_Pagamento'
        DataSource = DsRecebido
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsrecebidoVl_JurosVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Vl_Juros'
        DataSource = DsRecebido
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsrecebidoVl_MultaVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Vl_Multa'
        DataSource = DsRecebido
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsrecebidoVl_CreditoVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Vl_Credito'
        DataSource = DsRecebido
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsrecebidoVl_AbatimentoVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Vl_Abatimento'
        DataSource = DsRecebido
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsrecebidoVl_DescontoVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Vl_Desconto'
        DataSource = DsRecebido
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsrecebidoVl_DebitoVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Vl_Debito'
        DataSource = DsRecebido
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsrecebidoVl_SaldoVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Vl_Saldo'
        DataSource = DsRecebido
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object TotalOfVl_Parcela: TSctTotalvar
        Left = 85
        Top = 0
        Width = 0
        Height = 0
        Variable = adodsrecebidoVl_ParcelaVar
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidTotalVar
      end
      object TotalOfVl_Pagamento: TSctTotalvar
        Left = 85
        Top = 0
        Width = 0
        Height = 0
        Variable = adodsrecebidoVl_PagamentoVar
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidTotalVar
      end
      object TotalOfVl_Juros: TSctTotalvar
        Left = 85
        Top = 0
        Width = 0
        Height = 0
        Variable = adodsrecebidoVl_JurosVar
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidTotalVar
      end
      object TotalOfVl_Multa: TSctTotalvar
        Left = 85
        Top = 0
        Width = 0
        Height = 0
        Variable = adodsrecebidoVl_MultaVar
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidTotalVar
      end
      object TotalOfVl_Credito: TSctTotalvar
        Left = 85
        Top = 0
        Width = 0
        Height = 0
        Variable = adodsrecebidoVl_CreditoVar
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidTotalVar
      end
      object TotalOfVl_Abatimento: TSctTotalvar
        Left = 85
        Top = 0
        Width = 0
        Height = 0
        Variable = adodsrecebidoVl_AbatimentoVar
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidTotalVar
      end
      object TotalOfVl_Desconto: TSctTotalvar
        Left = 85
        Top = 0
        Width = 0
        Height = 0
        Variable = adodsrecebidoVl_DescontoVar
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidTotalVar
      end
      object TotalOfVl_Debito: TSctTotalvar
        Left = 85
        Top = 0
        Width = 0
        Height = 0
        Variable = adodsrecebidoVl_DebitoVar
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidTotalVar
      end
      object TotalOfVl_Saldo: TSctTotalvar
        Left = 85
        Top = 0
        Width = 0
        Height = 0
        Variable = adodsrecebidoVl_SaldoVar
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidTotalVar
      end
      object DataSourceGuide9: TSctDataSourceGuide
        Left = 85
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = DetailBandlevel
        DataSource = FrmPortador_Find.DsFind
      end
      object DataSourceGuide12: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = DetailBandlevel
        DataSource = FrmEmitente_Find.DsFind
      end
      object DataSourceGuide13: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = DetailBandlevel
        DataSource = FrmEmitente_Find.DsContato
      end
      object adodsrecebidoVl_OldRecebidoVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Vl_OldRecebido'
        DataSource = DsRecebido
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object TotalOfVl_OldRecebido: TSctTotalvar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        Variable = adodsrecebidoVl_OldRecebidoVar
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidTotalVar
      end
      object DataSourceGuide15: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = DetailBandlevel
        DataSource = DsExtrato
      end
      object DataSourceGuide23: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = DetailBandlevel
        DataSource = DmMaster.DsConexao
      end
      object DataSourceGuide25: TSctDataSourceGuide
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
        Width = 805
        Height = 7
        ParentColor = True
        BandName = 'Report Header'
        Updatelevel = ReportHeaderBandlevel
        Visible = False
      end
      object PageHeaderBand: TSctBand
        Left = 0
        Top = 22
        Width = 805
        Height = 44
        ParentColor = True
        BandName = 'Page Header'
        Updatelevel = PageHeaderBandlevel
        object Sctvarlabel1: TSctvarlabel
          Left = 2
          Top = 2
          Width = 204
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Caption = 'Contas Recebidas por Cliente'
        end
        object Sctvarlabel2: TSctvarlabel
          Left = 651
          Top = 1
          Width = 34
          Height = 17
          Caption = 'Data:'
        end
        object Sctvarlabel3: TSctvarlabel
          Left = 689
          Top = 1
          Width = 65
          Height = 17
          AlignHorizontal = laRight
          Variable = svarDateTime
          DataFormat.DisplayFormat = 'dd/mm/yyyy'
        end
        object Sctvarlabel4: TSctvarlabel
          Left = 651
          Top = 19
          Width = 34
          Height = 17
          Caption = 'Hora:'
        end
        object Sctvarlabel5: TSctvarlabel
          Left = 689
          Top = 19
          Width = 65
          Height = 17
          AlignHorizontal = laRight
          Variable = svarDateTime
          DataFormat.DisplayFormat = 'hh:mm:ss'
        end
        object SctLine1: TSctLine
          Left = 1
          Top = 38
          Width = 754
          Height = 6
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
        Top = 166
        Width = 805
        Height = 19
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = True
        ParentFont = False
        BandName = 'Detail'
        Updatelevel = DetailBandlevel
        Stretch = True
        OnBeforePrint = DetailBandBeforePrint
        object Sctvarlabel28: TSctvarlabel
          Left = 0
          Top = 1
          Width = 58
          Height = 17
          AlignHorizontal = laRight
          Variable = adodsrecebidoDp_ReceberVar
        end
        object Sctvarlabel16: TSctvarlabel
          Left = 445
          Top = 1
          Width = 55
          Height = 17
          AlignHorizontal = laRight
          WrapText = True
          Variable = adodsrecebidoVl_CreditoVar
          DataFormat.DisplayFormat = '#,##0.00'
          DataFormat.SuppressNulls = True
          DataFormat.Digits = 2
        end
        object Sctvarlabel17: TSctvarlabel
          Left = 385
          Top = 1
          Width = 55
          Height = 17
          AlignHorizontal = laRight
          Variable = adodsrecebidoVl_MultaVar
          DataFormat.DisplayFormat = '#,##0.00'
          DataFormat.SuppressNulls = True
          DataFormat.Digits = 2
        end
        object Sctvarlabel18: TSctvarlabel
          Left = 321
          Top = 1
          Width = 60
          Height = 17
          AlignHorizontal = laRight
          Variable = adodsrecebidoVl_JurosVar
          DataFormat.DisplayFormat = '#,##0.00'
          DataFormat.SuppressNulls = True
          DataFormat.Digits = 2
        end
        object Sctvarlabel19: TSctvarlabel
          Left = 257
          Top = 1
          Width = 60
          Height = 17
          AlignHorizontal = laRight
          Variable = adodsrecebidoVl_PagamentoVar
          DataFormat.DisplayFormat = '#,##0.00'
          DataFormat.SuppressNulls = True
          DataFormat.Digits = 2
        end
        object Sctvarlabel20: TSctvarlabel
          Left = 192
          Top = 1
          Width = 60
          Height = 17
          AlignHorizontal = laRight
          Variable = adodsrecebidoVl_ParcelaVar
          DataFormat.DisplayFormat = '#,##0.00'
          DataFormat.SuppressNulls = True
          DataFormat.Digits = 2
        end
        object Sctvarlabel21: TSctvarlabel
          Left = 633
          Top = 1
          Width = 55
          Height = 17
          AlignHorizontal = laRight
          WrapText = True
          Variable = adodsrecebidoVl_DebitoVar
          DataFormat.DisplayFormat = '#,##0.00'
          DataFormat.SuppressNulls = True
          DataFormat.Digits = 2
        end
        object Sctvarlabel25: TSctvarlabel
          Left = 569
          Top = 1
          Width = 60
          Height = 17
          AlignHorizontal = laRight
          Variable = adodsrecebidoVl_DescontoVar
          DataFormat.DisplayFormat = '#,##0.00'
          DataFormat.SuppressNulls = True
          DataFormat.Digits = 2
        end
        object Sctvarlabel26: TSctvarlabel
          Left = 505
          Top = 1
          Width = 60
          Height = 17
          AlignHorizontal = laRight
          Variable = adodsrecebidoVl_AbatimentoVar
          DataFormat.DisplayFormat = '#,##0.00'
          DataFormat.SuppressNulls = True
          DataFormat.Digits = 2
        end
        object Sctvarlabel29: TSctvarlabel
          Left = 689
          Top = 1
          Width = 60
          Height = 17
          AlignHorizontal = laRight
          Variable = adodsrecebidoVl_SaldoVar
          DataFormat.DisplayFormat = '#,##0.00'
          DataFormat.Digits = 2
        end
        object Sctvarlabel30: TSctvarlabel
          Left = 63
          Top = 1
          Width = 60
          Height = 17
          AlignHorizontal = laCenter
          Variable = adodsrecebidoDt_VencimentoVar
          DataFormat.DisplayFormat = 'dd/mm/yyyy'
          DataFormat.SuppressNulls = True
        end
        object Sctvarlabel32: TSctvarlabel
          Left = 129
          Top = 1
          Width = 60
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Variable = adodsrecebidoDt_LancamentoVar
          DataFormat.DisplayFormat = 'dd/mm/yyyy'
          DataFormat.SuppressNulls = True
        end
      end
      object PageFooterBand: TSctBand
        Left = 0
        Top = 253
        Width = 805
        Height = 19
        Color = 15987699
        BandName = 'Page Footer'
        Updatelevel = PageFooterBandlevel
        object SctLine3: TSctLine
          Left = 1
          Top = 1
          Width = 754
          Height = 6
          AlignVertical = laTop
        end
        object Sctvarlabel22: TSctvarlabel
          Left = 1
          Top = 1
          Width = 460
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
          Variable = adodsfilialDp_FilialVar
        end
        object Sctvarlabel23: TSctvarlabel
          Left = 670
          Top = 1
          Width = 45
          Height = 17
          AlignHorizontal = laRight
          Caption = 'P'#225'gina:'
        end
        object Sctvarlabel24: TSctvarlabel
          Left = 716
          Top = 1
          Width = 35
          Height = 17
          AlignHorizontal = laRight
          Variable = svarPage
          DataFormat.DisplayFormat = '#,##0'
        end
      end
      object ReportFooterBand: TSctBand
        Left = 0
        Top = 287
        Width = 805
        Height = 38
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = True
        ParentFont = False
        BandName = 'Report Footer'
        Updatelevel = ReportFooterBandlevel
        OnBeforePrint = ReportFooterBandBeforePrint
        object SctTotalvarLabel11: TSctTotalvarLabel
          Left = 257
          Top = 2
          Width = 60
          Height = 17
          TotalVariable = TotalOfVl_Pagamento
          DataFormat.DisplayFormat = '#,##0.00'
        end
        object SctTotalvarLabel12: TSctTotalvarLabel
          Left = 321
          Top = 2
          Width = 60
          Height = 17
          TotalVariable = TotalOfVl_Juros
          DataFormat.DisplayFormat = '#,##0.00'
        end
        object SctTotalvarLabel13: TSctTotalvarLabel
          Left = 385
          Top = 2
          Width = 55
          Height = 17
          TotalVariable = TotalOfVl_Multa
          DataFormat.DisplayFormat = '#,##0.00'
        end
        object SctTotalvarLabel14: TSctTotalvarLabel
          Left = 445
          Top = 2
          Width = 55
          Height = 17
          TotalVariable = TotalOfVl_Credito
          DataFormat.DisplayFormat = '#,##0.00'
        end
        object SctTotalvarLabel15: TSctTotalvarLabel
          Left = 505
          Top = 2
          Width = 60
          Height = 17
          TotalVariable = TotalOfVl_Abatimento
          DataFormat.DisplayFormat = '#,##0.00'
        end
        object SctTotalvarLabel16: TSctTotalvarLabel
          Left = 569
          Top = 2
          Width = 60
          Height = 17
          TotalVariable = TotalOfVl_Desconto
          DataFormat.DisplayFormat = '#,##0.00'
        end
        object SctTotalvarLabel17: TSctTotalvarLabel
          Left = 633
          Top = 2
          Width = 55
          Height = 17
          TotalVariable = TotalOfVl_Debito
          DataFormat.DisplayFormat = '#,##0.00'
        end
        object Sctvarlabel34: TSctvarlabel
          Left = 56
          Top = 2
          Width = 109
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
          AlignHorizontal = laRight
          Caption = 'Total Geral:'
        end
        object SctLine5: TSctLine
          Left = 33
          Top = 1
          Width = 717
          Height = 6
          AlignVertical = laTop
        end
        object SctVarVlParcela: TSctvarlabel
          Left = 166
          Top = 2
          Width = 80
          Height = 17
          AlignHorizontal = laRight
          Caption = '0.00'
        end
        object Sctvarlabel50: TSctvarlabel
          Left = 30
          Top = 20
          Width = 135
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
          AlignHorizontal = laRight
          Caption = 'Total Geral Recebido:'
        end
        object SctVarTotGeral: TSctvarlabel
          Left = 180
          Top = 20
          Width = 137
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
          AlignHorizontal = laRight
          Caption = '0,00'
        end
        object SctVarSaldoGeral: TSctvarlabel
          Left = 691
          Top = 2
          Width = 60
          Height = 17
          AlignHorizontal = laRight
          DataFormat.SuppressNulls = True
          Caption = 'Saldo'
        end
      end
      object PageHeaderBandSub: TSctSubBand
        Left = 0
        Top = 81
        Width = 805
        Height = 38
        Color = 15987699
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        BandName = 'PageHeaderBandSub'
        Updatelevel = PageHeaderBandlevel
        Band = PageHeaderBand
        Above = False
        object Sctvarlabel6: TSctvarlabel
          Left = 0
          Top = 15
          Width = 58
          Height = 17
          AlignHorizontal = laRight
          Caption = 'Receber'
        end
        object Sctvarlabel8: TSctvarlabel
          Left = 445
          Top = 0
          Width = 55
          Height = 34
          AlignHorizontal = laRight
          WrapText = True
          DataFormat.SuppressNulls = True
          Caption = 'Outros Cr'#233'ditos'
        end
        object Sctvarlabel9: TSctvarlabel
          Left = 385
          Top = 15
          Width = 55
          Height = 17
          AlignHorizontal = laRight
          DataFormat.SuppressNulls = True
          Caption = 'Multa'
        end
        object SctLblReposicao: TSctvarlabel
          Left = 321
          Top = 15
          Width = 60
          Height = 17
          AlignHorizontal = laRight
          DataFormat.SuppressNulls = True
          Caption = 'Juros'
        end
        object SctLblCusto: TSctvarlabel
          Left = 257
          Top = 15
          Width = 60
          Height = 17
          AlignHorizontal = laRight
          DataFormat.SuppressNulls = True
          Caption = 'Pagamento'
        end
        object Sctvarlabel10: TSctvarlabel
          Left = 192
          Top = 15
          Width = 60
          Height = 17
          AlignHorizontal = laRight
          DataFormat.SuppressNulls = True
          Caption = 'Parcela'
        end
        object SctLine2: TSctLine
          Left = 1
          Top = 30
          Width = 754
          Height = 6
        end
        object Sctvarlabel11: TSctvarlabel
          Left = 633
          Top = 0
          Width = 55
          Height = 34
          AlignHorizontal = laRight
          WrapText = True
          DataFormat.SuppressNulls = True
          Caption = 'Outros D'#233'bitos'
        end
        object Sctvarlabel12: TSctvarlabel
          Left = 569
          Top = 15
          Width = 60
          Height = 17
          AlignHorizontal = laRight
          DataFormat.SuppressNulls = True
          Caption = 'Desconto'
        end
        object Sctvarlabel13: TSctvarlabel
          Left = 505
          Top = 15
          Width = 60
          Height = 17
          AlignHorizontal = laRight
          DataFormat.SuppressNulls = True
          Caption = 'Abatimento'
        end
        object Sctvarlabel14: TSctvarlabel
          Left = 691
          Top = 15
          Width = 60
          Height = 17
          AlignHorizontal = laRight
          DataFormat.SuppressNulls = True
          Caption = 'Saldo'
        end
        object Sctvarlabel15: TSctvarlabel
          Left = 63
          Top = 15
          Width = 60
          Height = 17
          AlignHorizontal = laCenter
          DataFormat.SuppressNulls = True
          Caption = 'Vencimento'
        end
        object Sctvarlabel53: TSctvarlabel
          Left = 129
          Top = 15
          Width = 60
          Height = 17
          AlignHorizontal = laCenter
          DataFormat.SuppressNulls = True
          Caption = 'Recebido'
        end
      end
      object GroupHeader: TSctBand
        Left = 0
        Top = 134
        Width = 805
        Height = 17
        Color = 15987699
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        BandName = 'Group Header'
        Updatelevel = GroupHeaderLevel
        OnBeforePrint = GroupHeaderBeforePrint
        object Sctvarlabel27: TSctvarlabel
          Left = 1
          Top = 1
          Width = 550
          Height = 14
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          WrapText = True
          Stretch = True
          Variable = adodsrecebidoDp_EmitenteVar
        end
      end
      object GroupFooter: TSctBand
        Left = 0
        Top = 200
        Width = 805
        Height = 38
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = True
        ParentFont = False
        BandName = 'Group Footer'
        Updatelevel = GroupFooterLevel
        OnBeforePrint = GroupFooterBeforePrint
        object SctTotalvarLabel1: TSctTotalvarLabel
          Left = 192
          Top = 3
          Width = 60
          Height = 17
          TotalVariable = TotalOfVl_Parcela
          DataFormat.DisplayFormat = '#,##0.00'
        end
        object SctTotalvarLabel2: TSctTotalvarLabel
          Left = 257
          Top = 3
          Width = 60
          Height = 17
          TotalVariable = TotalOfVl_Pagamento
          DataFormat.DisplayFormat = '#,##0.00'
        end
        object SctTotalvarLabel3: TSctTotalvarLabel
          Left = 321
          Top = 3
          Width = 60
          Height = 17
          TotalVariable = TotalOfVl_Juros
          DataFormat.DisplayFormat = '#,##0.00'
        end
        object SctTotalvarLabel4: TSctTotalvarLabel
          Left = 385
          Top = 3
          Width = 55
          Height = 17
          TotalVariable = TotalOfVl_Multa
          DataFormat.DisplayFormat = '#,##0.00'
        end
        object SctTotalvarLabel5: TSctTotalvarLabel
          Left = 445
          Top = 3
          Width = 55
          Height = 17
          TotalVariable = TotalOfVl_Credito
          DataFormat.DisplayFormat = '#,##0.00'
        end
        object SctTotalvarLabel6: TSctTotalvarLabel
          Left = 505
          Top = 3
          Width = 60
          Height = 17
          TotalVariable = TotalOfVl_Abatimento
          DataFormat.DisplayFormat = '#,##0.00'
        end
        object SctTotalvarLabel7: TSctTotalvarLabel
          Left = 569
          Top = 3
          Width = 60
          Height = 17
          TotalVariable = TotalOfVl_Desconto
          DataFormat.DisplayFormat = '#,##0.00'
        end
        object SctTotalvarLabel8: TSctTotalvarLabel
          Left = 633
          Top = 3
          Width = 55
          Height = 17
          TotalVariable = TotalOfVl_Debito
          DataFormat.DisplayFormat = '#,##0.00'
        end
        object Sctvarlabel33: TSctvarlabel
          Left = 56
          Top = 3
          Width = 109
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
          AlignHorizontal = laRight
          Caption = 'Totais do Cliente:'
        end
        object SctLine4: TSctLine
          Left = 33
          Top = 2
          Width = 717
          Height = 6
          AlignVertical = laTop
        end
        object Sctvarlabel49: TSctvarlabel
          Left = 56
          Top = 20
          Width = 109
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
          AlignHorizontal = laRight
          Caption = 'Total Recebido:'
        end
        object SctVarTotDia: TSctvarlabel
          Left = 208
          Top = 20
          Width = 109
          Height = 17
          AlignHorizontal = laRight
          Caption = '0,00'
        end
        object SctVarSaldoCliente: TSctvarlabel
          Left = 691
          Top = 3
          Width = 60
          Height = 17
          AlignHorizontal = laRight
          DataFormat.SuppressNulls = True
          Caption = 'Saldo'
        end
      end
    end
  end
  object SctRepReceber: TSctReport
    Left = 194
    Top = 154
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
    TabOrder = 1
    Visible = False
    Minimized = True
    Prompt = True
    AutoRun = False
    SuppressStatus = False
    PixelsPerInch = 96
    STop = 50
    SLeft = 0
    SWidth = 833
    SHeight = 426
    MTop = 154
    MLeft = 194
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
      Description = 'Contas '#224' Receber por Cliente'
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
      object SctGroup2: TSctGroup
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        Header = SctGrpEstado
        Footer = SctGrpFtEstado
        Variable = adodsreceberDp_EmitenteVar
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
      object DataSourceGuide3: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = SctLevel10
        DataSource = DsRecebido
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
      object adodsrecebernm_funcionarioVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'nm_funcionario'
        DataSource = DsReceber
        UpdateLevel = SctLevel10
        AutoVar = False
        ID = vidAutoDataVar
      end
      object DataSourceGuide10: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = SctLevel10
        DataSource = FrmEmitente_Find.DsFind
      end
      object DataSourceGuide11: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = SctLevel10
        DataSource = FrmEmitente_Find.DsContato
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
      object adodsreceberDp_TelefoneVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Dp_Telefone'
        DataSource = DsReceber
        UpdateLevel = SctLevel10
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsreceberNm_PortadorVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Nm_Portador'
        DataSource = DsReceber
        UpdateLevel = SctLevel10
        AutoVar = False
        ID = vidAutoDataVar
      end
      object DataSourceGuide14: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = SctLevel10
        DataSource = DsExtrato
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
      object DataSourceGuide22: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = SctLevel10
        DataSource = DmMaster.DsConexao
      end
      object DataSourceGuide26: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = SctLevel10
        DataSource = DmMaster.DsConecadoMes
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
          Caption = 'Contas '#224' Receber por Cliente'
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
        Top = 149
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
          Top = 1
          Width = 139
          Height = 17
          WrapText = True
          Stretch = True
          Variable = adodsrecebernm_funcionarioVar
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
          Left = 451
          Top = 0
          Width = 63
          Height = 17
          AlignHorizontal = laRight
          WrapText = True
          Stretch = True
          Variable = adodsreceberDp_FaturaVar
          DataFormat.SuppressNulls = True
        end
        object Sctvarlabel7: TSctvarlabel
          Left = 397
          Top = 2
          Width = 60
          Height = 17
          AlignHorizontal = laRight
          Variable = adodsreceberDt_VencimentoVar
          DataFormat.DisplayFormat = 'dd/mm/yyyy'
          DataFormat.SuppressNulls = True
        end
        object Sctvarlabel54: TSctvarlabel
          Left = 334
          Top = 1
          Width = 60
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          AlignHorizontal = laRight
          Variable = adodsreceberNr_OrcamentoVar
          DataFormat.DisplayFormat = '###'
          DataFormat.SuppressNulls = True
        end
        object Sctvarlabel57: TSctvarlabel
          Left = 206
          Top = 1
          Width = 137
          Height = 17
          WrapText = True
          Stretch = True
          Variable = adodsreceberNm_PortadorVar
        end
      end
      object SctBand11: TSctBand
        Left = 0
        Top = 224
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
        Top = 262
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
          Caption = 'Vendedor'
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
          Left = 458
          Top = 1
          Width = 56
          Height = 17
          AlignHorizontal = laRight
          DataFormat.SuppressNulls = True
          Caption = 'Fatura / CF'
        end
        object Sctvarlabel40: TSctvarlabel
          Left = 397
          Top = 1
          Width = 60
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Caption = 'Vencimento'
        end
        object Sctvarlabel31: TSctvarlabel
          Left = 334
          Top = 1
          Width = 60
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          AlignHorizontal = laRight
          Caption = 'Or'#231'amento'
        end
        object Sctvarlabel56: TSctvarlabel
          Left = 206
          Top = 1
          Width = 65
          Height = 17
          Caption = 'Portador'
        end
      end
      object SctGrpEstado: TSctBand
        Left = 0
        Top = 115
        Width = 786
        Height = 19
        Color = 15987699
        BandName = 'SctGrpEstado'
        Updatelevel = SctLevel13
        OnBeforePrint = SctGrpEstadoBeforePrint
        object Sctvarlabel48: TSctvarlabel
          Left = 1
          Top = 1
          Width = 460
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
          Variable = adodsreceberDp_EmitenteVar
        end
        object Sctvarlabel55: TSctvarlabel
          Left = 467
          Top = 1
          Width = 268
          Height = 17
          AlignHorizontal = laRight
          Variable = adodsreceberDp_TelefoneVar
        end
      end
      object SctGrpFtEstado: TSctBand
        Left = 0
        Top = 183
        Width = 786
        Height = 26
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = True
        ParentFont = False
        BandName = 'SctGrpFtEstado'
        Updatelevel = SctLevel14
        object SctLine6: TSctLine
          Left = 390
          Top = 2
          Width = 346
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
        end
        object SctTotalvarLabel20: TSctTotalvarLabel
          Left = 590
          Top = 5
          Width = 70
          Height = 17
          TotalVariable = TotalOfVl_Recebido
          DataFormat.DisplayFormat = '#,##0.00'
        end
        object SctTotalvarLabel21: TSctTotalvarLabel
          Left = 666
          Top = 5
          Width = 70
          Height = 17
          TotalVariable = TotalOfVl_Saldo1
          DataFormat.DisplayFormat = '#,##0.00'
        end
        object Sctvarlabel41: TSctvarlabel
          Left = 408
          Top = 5
          Width = 103
          Height = 17
          AlignHorizontal = laRight
          Caption = 'Total do Cliente:'
        end
      end
    end
  end
  object ADODsRecebido: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    OnCalcFields = ADODsRecebidoCalcFields
    CommandText = 'select distinct'#13#10'  A.Cd_Filial, A.Nr_Receber, A.Nr_Parcela, B.Dt_Vencimento, B.Vl_Parcela,'#13#10'  Cast( C.Cd_Emitente as VarChar( 5 ) ) + '''' - '''' + D.Nm_Emitente as Dp_Emitente,'#13#10'  A.Dt_Lancamento, O.Nr_Orcamento, '#13#10'  Cast( 0 as Numeric( 12, 2 ) ) as Vl_Recebido,'#13#10'  Cast( 0 as Numeric( 12, 2 ) ) as Vl_Pagamento,'#13#10'  Cast( 0 as Numeric( 12, 2 ) ) as Vl_Juros,'#13#10'  Cast( 0 as Numeric( 12, 2 ) ) as Vl_Multa,'#13#10'  Cast( 0 as Numeric( 12, 2 ) ) as Vl_Credito,'#13#10'  Cast( 0 as Numeric( 12, 2 ) ) as Vl_Abatimento,'#13#10'  Cast( 0 as Numeric( 12, 2 ) ) as Vl_Desconto,'#13#10'  Cast( 0 as Numeric( 12, 2 ) ) as Vl_Debito,'#13#10'  Cast( 0 as Numeric( 12, 2 ) ) as Vl_OldRecebido'#13#10#13#10'into'#13#10'  #recebidotmp'#13#10'  '#13#10'from'#13#10'  Receber_Historico A'#13#10#13#10'inner join'#13#10'  Receber_Parcela B'#13#10'on'#13#10'  B.Cd_Filial  = A.Cd_Filial and'#13#10'  B.Nr_Receber = A.Nr_Receber and'#13#10'  B.Nr_Parcela = A.Nr_Parcela'#13#10'inner join'#13#10'  Receber C'#13#10'on'#13#10'  C.Cd_Filial  = A.Cd_Filial and'#13#10'  C.Nr_Receber = A.Nr_Receber'#13#10'  and C.St_Receber >= ''''2'''#13#10'  and C.St_Receber <= ''''3'''#13#10'inner join'#13#10'  Emitente D'#13#10'on'#13#10'  D.Cd_Emitente = C.Cd_Emitente'#13#10'left join'#13#10'  Orcamento O'#13#10'on'#13#10'  O.Cd_Filial    = C.Cd_Filial and'#13#10'  O.Nr_Orcamento = C.Nr_Orcamento'#13#10'where'#13#10'  A.Cd_Filial = 1 and'#13#10'  A.Dt_Lancamento >= ''''05/01/2009'''' and'#13#10'  A.Dt_Lancamento < ''''05/05/2009'''' and'#13#10'  A.Tp_Lancamento >= ''''2'''#13#10#13#10'select'#13#10'  Nr_Receber, Nr_Parcela, Dt_Vencimento, Vl_Parcela, Vl_Recebido, Dp_Emitente,'#13#10'  Dt_Lancamento, Vl_Pagamento, Vl_Juros, Vl_Multa, Vl_Credito, Vl_Abatimento,'#13#10'  Vl_Desconto, Vl_Debito, Nr_Orcamento, '#13#10'     Cast( Nr_Receber as VarChar( 5 )  ) + ''''/'''' +'#13#10'     dbo.IntToStrZero( Nr_Parcela, 2 ) as Dp_Receber,'#13#10'  Vl_OldRecebido'#13#10#13#10'from'#13#10'  #RecebidoTMP'#13#10#13#10'order by'#13#10'  Dp_Emitente, Dt_Lancamento, Nr_Receber, Nr_Parcela'#13#10
    Parameters = <>
    SQLOther0.Strings = (
      'select'
      '  Nr_Receber, Nr_Parcela, Dt_Vencimento, Vl_Parcela, Vl_Recebido, Dp_Emitente,'
      '  Dt_Lancamento, Vl_Pagamento, Vl_Juros, Vl_Multa, Vl_Credito, Vl_Abatimento,'
      '  Vl_Desconto, Vl_Debito, Nr_Orcamento, '
      '     Cast( Nr_Receber as VarChar( 6 )  ) + ''''/'''' +'
      '     dbo.IntToStrZero( Nr_Parcela, 2 ) as Dp_Receber,'
      '  Vl_OldRecebido'
      ''
      'from'
      '  #RecebidoTMP'
      ''
      'order by'
      '  Dp_Emitente, Dt_Lancamento, Nr_Receber, Nr_Parcela'
    )
    SQLOther1.Strings = (
      'select distinct'
      '  A.Nr_Pagar, A.Nr_Parcela, B.Dt_Vencimento, B.Vl_Parcela,'
      '  D.Nm_Emitente + '''' - '''' + Cast( C.Cd_Emitente as VarChar( 6 ) ) as Dp_Emitente,'
      '  Dt_Lancamento,'
      '  Cast( 0 as Numeric( 12, 2 ) ) as Vl_Pago,'
      '  Cast( 0 as Numeric( 12, 2 ) ) as Vl_Pagamento,'
      '  Cast( 0 as Numeric( 12, 2 ) ) as Vl_Juros,'
      '  Cast( 0 as Numeric( 12, 2 ) ) as Vl_Multa,'
      '  Cast( 0 as Numeric( 12, 2 ) ) as Vl_Credito,'
      '  Cast( 0 as Numeric( 12, 2 ) ) as Vl_Abatimento,'
      '  Cast( 0 as Numeric( 12, 2 ) ) as Vl_Desconto,'
      '  Cast( 0 as Numeric( 12, 2 ) ) as Vl_Debito,'
      '  B.Nr_Documento'
      ''
      'from'
      '  Pagar_Historico A'
      ''
      'inner join'
      '  Pagar_Parcela B'
      'on'
      '  B.Cd_Filial  = A.Cd_Filial and'
      '  B.Nr_Pagar   = A.Nr_Pagar and'
      '  B.Nr_Parcela = A.Nr_Parcela'
    )
    SQLOther2.Strings = (
      'inner join'
      '  Emitente D'
      'on'
      '  D.Cd_Emitente = C.Cd_Emitente'
      ''
      'inner join'
      '  Aplicacao_Grupo E'
      'on'
      '  E.Cd_Grupo = C.Cd_Grupo'
      ''
      'inner join'
      '  Aplicacao_SubGrupo F'
      'on'
      '  F.Cd_SubGrupo = C.Cd_SubGrupo'
    )
    SQLOther3.Strings = (
      'update'
      '  #Pago'
      ''
      'set'
      '  Vl_Pago  ='
      '    ('
      '    select'
      '      sum( A.Vl_Lancamento )'
      ''
      '    from'
      '      Pagar_Historico A'
      ''
      '    where'
      '      A.Nr_Pagar      = #Pago.Nr_Pagar and'
      '      A.Nr_Parcela    = #Pago.Nr_Parcela and'
      '      A.Tp_Lancamento >= ''''2'''' and'
      '      A.Tp_Lancamento <= ''''5'''' and'
      '      A.Dt_Lancamento >= #Pago.Dt_Lancamento and'
      '      A.Dt_Lancamento < DateAdd( Day, 1, #Pago.Dt_Lancamento )'
      '    ),'
      '  Vl_Pagamento ='
      '    ('
      '    select'
      '      sum( A.Vl_Lancamento )'
      ''
      '    from'
      '      Pagar_Historico A'
      ''
      '    where'
      '      A.Nr_Pagar      = #Pago.Nr_Pagar and'
      '      A.Nr_Parcela    = #Pago.Nr_Parcela and'
      '      A.Tp_Lancamento = ''''2'''' and'
      '      A.Dt_Lancamento >= #Pago.Dt_Lancamento and'
      '      A.Dt_Lancamento < DateAdd( Day, 1, #Pago.Dt_Lancamento )'
      '    ),'
      '  Vl_Juros ='
      '    ('
      '    select'
      '      sum( A.Vl_Lancamento )'
      ''
      '    from'
      '      Pagar_Historico A'
      ''
      '    where'
      '      A.Nr_Pagar      = #Pago.Nr_Pagar and'
      '      A.Nr_Parcela    = #Pago.Nr_Parcela and'
      '      A.Tp_Lancamento = ''''3'''' and'
      '      A.Dt_Lancamento >= #Pago.Dt_Lancamento and'
      '      A.Dt_Lancamento < DateAdd( Day, 1, #Pago.Dt_Lancamento )'
      '    ),'
      '  Vl_Multa ='
      '    ('
      '    select'
      '      sum( A.Vl_Lancamento )'
      ''
      '    from'
      '      Pagar_Historico A'
      ''
      '    where'
      '      A.Nr_Pagar      = #Pago.Nr_Pagar and'
      '      A.Nr_Parcela    = #Pago.Nr_Parcela and'
      '      A.Tp_Lancamento = ''''4'''' and'
      '      A.Dt_Lancamento >= #Pago.Dt_Lancamento and'
      '      A.Dt_Lancamento < DateAdd( Day, 1, #Pago.Dt_Lancamento )'
      '    ),'
      '  Vl_Credito ='
      '    ('
      '    select'
      '      sum( A.Vl_Lancamento )'
      ''
      '    from'
      '      Pagar_Historico A'
      ''
      '    where'
      '      A.Nr_Pagar      = #Pago.Nr_Pagar and'
      '      A.Nr_Parcela    = #Pago.Nr_Parcela and'
      '      A.Tp_Lancamento = ''''5'''' and'
      '      A.Dt_Lancamento >= #Pago.Dt_Lancamento and'
      '      A.Dt_Lancamento < DateAdd( Day, 1, #Pago.Dt_Lancamento )'
      '    ),'
      '  Vl_Abatimento ='
      '    ('
      '    select'
      '      sum( A.Vl_Lancamento )'
      ''
      '    from'
      '      Pagar_Historico A'
      ''
      '    where'
      '      A.Nr_Pagar      = #Pago.Nr_Pagar and'
      '      A.Nr_Parcela    = #Pago.Nr_Parcela and'
      '      A.Tp_Lancamento = ''''6'''' and'
      '      A.Dt_Lancamento >= #Pago.Dt_Lancamento and'
      '      A.Dt_Lancamento < DateAdd( Day, 1, #Pago.Dt_Lancamento )'
      '    ),'
      '  Vl_Desconto ='
      '    ('
      '    select'
      '      sum( A.Vl_Lancamento )'
      ''
      '    from'
      '      Pagar_Historico A'
      ''
      '    where'
      '      A.Nr_Pagar      = #Pago.Nr_Pagar and'
      '      A.Nr_Parcela    = #Pago.Nr_Parcela and'
      '      A.Tp_Lancamento = ''''7'''' and'
      '      A.Dt_Lancamento >= #Pago.Dt_Lancamento and'
      '      A.Dt_Lancamento < DateAdd( Day, 1, #Pago.Dt_Lancamento )'
      '    ),'
      '  Vl_Debito ='
      '    ('
      '    select'
      '      sum( A.Vl_Lancamento )'
      ''
      '    from'
      '      Pagar_Historico A'
      ''
      '    where'
      '      A.Nr_Pagar      = #Pago.Nr_Pagar and'
      '      A.Nr_Parcela    = #Pago.Nr_Parcela and'
      '      A.Tp_Lancamento = ''''8'''' and'
      '      A.Dt_Lancamento >= #Pago.Dt_Lancamento and'
      '      A.Dt_Lancamento < DateAdd( Day, 1, #Pago.Dt_Lancamento )'
      '    )'
      ''
      'select'
      '  Nr_Pagar, Nr_Parcela, Dt_Vencimento, Vl_Parcela, Vl_Pago, Dp_Emitente,'
      '  Dt_Lancamento, Vl_Pagamento, Vl_Juros, Vl_Multa, Vl_Credito, Vl_Abatimento,'
      '  Vl_Desconto, Vl_Debito, Dp_Custo, Nr_Documento,'
      '  Dp_Pagar ='
      '     Convert( VarChar( 7 ), Nr_Pagar ) + ''''/'''' +'
      '     Convert( VarChar( 2 ), Nr_Parcela )'
      ''
      'from'
      '  #Pago'
      ''
      'order by'
      '  Dt_Lancamento, Nr_Pagar, Nr_Parcela'
    )
    SQLOther4.Strings = (
      'inner join'
      '  Pagar C'
      'on'
      '  C.Cd_Filial = A.Cd_Filial and'
      '  C.Nr_Pagar  = A.Nr_Pagar'
    )
    Left = 103
    Top = 200
    object ADODsRecebidoNr_Receber: TIntegerField
      FieldName = 'Nr_Receber'
    end
    object ADODsRecebidoVl_Recebido: TBCDField
      FieldName = 'Vl_Recebido'
      Precision = 12
      Size = 2
    end
    object ADODsRecebidoDp_Receber: TStringField
      FieldName = 'Dp_Receber'
      ReadOnly = True
      Size = 9
    end
    object ADODsRecebidoNr_Parcela: TSmallintField
      FieldName = 'Nr_Parcela'
    end
    object ADODsRecebidoDt_Vencimento: TDateTimeField
      FieldName = 'Dt_Vencimento'
    end
    object ADODsRecebidoVl_Parcela: TBCDField
      FieldName = 'Vl_Parcela'
      Precision = 10
    end
    object ADODsRecebidoDp_Emitente: TStringField
      FieldName = 'Dp_Emitente'
      Size = 92
    end
    object ADODsRecebidoDt_Lancamento: TDateTimeField
      FieldName = 'Dt_Lancamento'
    end
    object ADODsRecebidoVl_Pagamento: TBCDField
      FieldName = 'Vl_Pagamento'
      Precision = 12
      Size = 2
    end
    object ADODsRecebidoVl_Juros: TBCDField
      FieldName = 'Vl_Juros'
      Precision = 12
      Size = 2
    end
    object ADODsRecebidoVl_Multa: TBCDField
      FieldName = 'Vl_Multa'
      Precision = 12
      Size = 2
    end
    object ADODsRecebidoVl_Credito: TBCDField
      FieldName = 'Vl_Credito'
      Precision = 12
      Size = 2
    end
    object ADODsRecebidoVl_Abatimento: TBCDField
      FieldName = 'Vl_Abatimento'
      Precision = 12
      Size = 2
    end
    object ADODsRecebidoVl_Desconto: TBCDField
      FieldName = 'Vl_Desconto'
      Precision = 12
      Size = 2
    end
    object ADODsRecebidoVl_Debito: TBCDField
      FieldName = 'Vl_Debito'
      Precision = 12
      Size = 2
    end
    object ADODsRecebidoVl_Saldo: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Vl_Saldo'
      Calculated = True
    end
    object ADODsRecebidoNr_Orcamento: TIntegerField
      FieldName = 'Nr_Orcamento'
    end
    object ADODsRecebidoVl_OldRecebido: TBCDField
      FieldName = 'Vl_OldRecebido'
      Precision = 12
      Size = 2
    end
  end
  object DsRecebido: TDataSource
    DataSet = ADODsRecebido
    Left = 73
    Top = 200
  end
  object DsReceber: TDataSource
    DataSet = ADODsReceber
    Left = 202
    Top = 204
  end
  object ADODsReceber: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    OnCalcFields = ADODsReceberCalcFields
    CommandText = 'select'#13#10'  A.Nr_Receber, A.Nr_Parcela, A.Dt_Vencimento, A.Vl_Parcela, O.Nr_Fatura,'#13#10'  D.Nm_Emitente + '''' - '''' + Cast( B.Cd_Emitente as VarChar( 6 ) ) as Dp_Emitente,'#13#10'  sum( C.Vl_Lancamento ) as Vl_Recebido, F.Nm_Funcionario, O.Nr_Orcamento,'#13#10'  Cast( A.Nr_Receber as VarChar( 7 ) ) + ''''/'''' +'#13#10'  dbo.IntToStrZero( A.Nr_Parcela, 2 ) as Dp_Receber,'#13#10'  EE.Nr_Telefone_1, EE.Nr_Telefone_2, EE.Nr_Telefone_3, '#13#10'  P.Nm_Portador, O.Nr_ECF'#13#10#13#10'from'#13#10'  Receber_Parcela A'#13#10#13#10'inner join'#13#10'  Receber B'#13#10'on'#13#10'  B.Cd_Filial  = A.Cd_Filial and'#13#10'  B.Nr_Receber = A.Nr_Receber and'#13#10'  B.St_Receber <= ''''2'''#13#10#13#10'inner join'#13#10'  Emitente D'#13#10'on'#13#10'  D.Cd_Emitente = B.Cd_Emitente'#13#10'  /* Cd_Grupo */'#13#10'    and D.Cd_SubGrupo = 6'#13#10#13#10'inner join'#13#10'  Emitente_Endereco EE'#13#10'on'#13#10'  EE.Cd_Emitente = D.Cd_Emitente and'#13#10'  EE.Nr_Endereco = D.Nr_Endereco'#13#10#13#10'inner join'#13#10'  Portador P'#13#10'on'#13#10'  P.Cd_Portador = A.Cd_Portador'#13#10'  '#13#10'left join'#13#10'  Receber_Historico C'#13#10'on'#13#10'  C.Cd_Filial     = A.Cd_Filial and'#13#10'  C.Nr_Receber    = A.Nr_Receber and'#13#10'  C.Nr_Parcela    = A.Nr_Parcela and'#13#10'  C.Tp_Lancamento >= ''''2'''#13#10#13#10'left join'#13#10'  Orcamento O'#13#10'on'#13#10'  O.Cd_Filial    = B.Cd_Filial and'#13#10'  O.Nr_Orcamento = B.Nr_Orcamento'#13#10#13#10'left join'#13#10'  Funcionario F'#13#10'on'#13#10'  F.Cd_Funcionario = O.Cd_Funcionario'#13#10#13#10'where'#13#10'  A.Cd_Filial      = :Cd_Filial and'#13#10'  A.Dt_Vencimento >= ''''04/01/2000'''' and'#13#10'  A.Dt_Vencimento < ''''04/09/2014'''#13#10#13#10'group by'#13#10'  A.Nr_Receber, A.Nr_Parcela, A.Dt_Vencimento, A.Vl_Parcela, O.Nr_Fatura,'#13#10'  D.Nm_Emitente + '''' - '''' + Cast( B.Cd_Emitente as VarChar( 6 ) ),'#13#10'  F.Nm_Funcionario, O.Nr_Orcamento, O.Nr_ECF,'#13#10'  Cast( A.Nr_Receber as VarChar( 7 ) ) + ''''/'''' +'#13#10'  dbo.IntToStrZero( A.Nr_Parcela, 2 ),'#13#10'  EE.Nr_Telefone_1, EE.Nr_Telefone_2, EE.Nr_Telefone_3, '#13#10'  P.Nm_Portador'#13#10#13#10'having'#13#10'  A.Vl_Parcela >'#13#10'  ( case when sum( C.Vl_Lancamento ) is null then 0.0 else sum( C.Vl_Lancamento ) end )'#13#10#13#10'order by'#13#10'  D.Nm_Emitente + '''' - '''' + Cast( B.Cd_Emitente as VarChar( 6 ) ),'#13#10'  A.Dt_Vencimento, A.Nr_Receber, A.Nr_Parcela, O.Nr_ECF'
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
      '  A.Nr_Receber, A.Nr_Parcela, A.Dt_Vencimento, A.Vl_Parcela, O.Nr_Fatura,'
      '  D.Nm_Emitente + '''' ('''' + D.Nm_Fantasia + '''') - '''' + Cast( B.Cd_Emitente as VarChar( 6 ) ) as Dp_Emitente,'
      '  sum( C.Vl_Lancamento ) as Vl_Recebido, F.Nm_Funcionario, O.Nr_Orcamento,'
      '  Cast( A.Nr_Receber as VarChar( 6 ) ) + ''''/'''' +'
      '  dbo.IntToStrZero( A.Nr_Parcela, 2 ) as Dp_Receber,'
      '  EE.Nr_Telefone_1, EE.Nr_Telefone_2, EE.Nr_Telefone_3, P.Nm_Portador, O.Nr_ECF'
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
      '  /* Cd_Grupo */'
      '  /* Cd_SubGrupo */'
      ''
      'inner join'
      '  Emitente_Endereco EE'
      'on'
      '  EE.Cd_Emitente = D.Cd_Emitente and'
      '  EE.Nr_Endereco = D.Nr_Endereco'
      '  '
      'inner join'
      '  Portador P'
      'on'
      '  P.Cd_Portador = A.Cd_Portador'
      '  '
      'left join'
      '  Receber_Historico C'
      'on'
      '  C.Cd_Filial     = A.Cd_Filial and'
      '  C.Nr_Receber    = A.Nr_Receber and'
      '  C.Nr_Parcela    = A.Nr_Parcela and'
      '  C.Tp_Lancamento >= ''''2'''
      ''
      'left join'
      '  Orcamento O'
      'on'
      '  O.Cd_Filial    = B.Cd_Filial and'
      '  O.Nr_Orcamento = B.Nr_Orcamento'
      ''
      'left join'
      '  Funcionario F'
      'on'
      '  F.Cd_Funcionario = O.Cd_Funcionario'
      ''
      'where'
      '  A.Cd_Filial      = :Cd_Filial and'
      '  A.Dt_Vencimento >= @Dt_Start and'
      '  A.Dt_Vencimento < @Dt_End'
    )
    SQLOther3.Strings = (
      'group by'
      '  A.Nr_Receber, A.Nr_Parcela, A.Dt_Vencimento, A.Vl_Parcela, O.Nr_Fatura, '
      '  D.Nm_Emitente + '''' ('''' + D.Nm_Fantasia + '''') - '''' + Cast( B.Cd_Emitente as VarChar( 6 ) ),'
      '  F.Nm_Funcionario, O.Nr_Orcamento,'
      '  EE.Nr_Telefone_1, EE.Nr_Telefone_2, EE.Nr_Telefone_3, P.Nm_Portador, O.Nr_ECF'
      ''
      'having'
      '  A.Vl_Parcela >'
      '  ( case when sum( C.Vl_Lancamento ) is null then 0.0 else sum( C.Vl_Lancamento ) end )'
      ''
      'order by'
      '  D.Nm_Emitente + '''' ('''' + D.Nm_Fantasia + '''') - '''' + Cast( B.Cd_Emitente as VarChar( 6 ) ),'
      '  A.Dt_Vencimento, A.Nr_Receber, A.Nr_Parcela'
    )
    Left = 233
    Top = 204
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
      Size = 92
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
      Size = 10
    end
    object ADODsReceberVl_Recebido: TBCDField
      FieldName = 'Vl_Recebido'
      ReadOnly = True
      Precision = 19
    end
    object ADODsRecebernr_fatura: TIntegerField
      FieldName = 'nr_fatura'
    end
    object ADODsRecebernm_funcionario: TStringField
      FieldName = 'nm_funcionario'
      Size = 50
    end
    object ADODsReceberNr_Orcamento: TIntegerField
      FieldName = 'Nr_Orcamento'
    end
    object ADODsReceberNr_Telefone_1: TStringField
      FieldName = 'Nr_Telefone_1'
      Size = 10
    end
    object ADODsReceberNr_Telefone_2: TStringField
      FieldName = 'Nr_Telefone_2'
      Size = 10
    end
    object ADODsReceberNr_Telefone_3: TStringField
      FieldName = 'Nr_Telefone_3'
      Size = 10
    end
    object ADODsReceberDp_Telefone: TStringField
      FieldKind = fkCalculated
      FieldName = 'Dp_Telefone'
      Size = 50
      Calculated = True
    end
    object ADODsReceberNm_Portador: TStringField
      FieldName = 'Nm_Portador'
      Size = 50
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
  object ADOCmdRecebido: TMultADOCMD
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLOther0.Strings = (
      'drop table #RecebidoTMP'
    )
    SQLOther1.Strings = (
      'select distinct'
      '  A.Cd_Filial, A.Nr_Receber, A.Nr_Parcela, B.Dt_Vencimento, B.Vl_Parcela,'
      '  D.Nm_Emitente + '''' ('''' + D.Nm_Fantasia + '''') - '''' + Cast( C.Cd_Emitente as VarChar( 6 ) ) as Dp_Emitente,'
      '  A.Dt_Lancamento, O.Nr_Orcamento,'
      '  Cast( 0 as Numeric( 12, 2 ) ) as Vl_Recebido,'
      '  Cast( 0 as Numeric( 12, 2 ) ) as Vl_Pagamento,'
      '  Cast( 0 as Numeric( 12, 2 ) ) as Vl_Juros,'
      '  Cast( 0 as Numeric( 12, 2 ) ) as Vl_Multa,'
      '  Cast( 0 as Numeric( 12, 2 ) ) as Vl_Credito,'
      '  Cast( 0 as Numeric( 12, 2 ) ) as Vl_Abatimento,'
      '  Cast( 0 as Numeric( 12, 2 ) ) as Vl_Desconto,'
      '  Cast( 0 as Numeric( 12, 2 ) ) as Vl_Debito,'
      '  Cast( 0 as Numeric( 12, 2 ) ) as Vl_OldRecebido'
      ''
      ''
      'into'
      '  #recebidotmp '
      ''
      'from'
      '  Receber_Historico A'
      ''
      'inner join'
      '  Receber_Parcela B'
      'on'
      '  B.Cd_Filial  = A.Cd_Filial and'
      '  B.Nr_Receber = A.Nr_Receber and'
      '  B.Nr_Parcela = A.Nr_Parcela'
    )
    SQLOther3.Strings = (
      'update'
      '  #RecebidoTMP'
      ''
      'set'
      '  Vl_Recebido  ='
      '    ('
      '    select'
      '      sum( A.Vl_Lancamento )'
      ''
      '    from'
      '      Receber_Historico A'
      ''
      '    where'
      '      A.Cd_Filial     = #RecebidoTMP.Cd_Filial and'
      '      A.Nr_Receber    = #RecebidoTMP.Nr_Receber and'
      '      A.Nr_Parcela    = #RecebidoTMP.Nr_Parcela and'
      '      A.Tp_Lancamento >= ''''2'''' and'
      '      A.Tp_Lancamento <= ''''5'''' and'
      '      A.Dt_Lancamento >= #RecebidoTMP.Dt_Lancamento and'
      '      A.Dt_Lancamento <= #RecebidoTMP.Dt_Lancamento'
      '    ),'
      '  Vl_Pagamento ='
      '    ('
      '    select'
      '      sum( A.Vl_Lancamento )'
      ''
      '    from'
      '      Receber_Historico A'
      ''
      '    where'
      '      A.Cd_Filial     = #RecebidoTMP.Cd_Filial and'
      '      A.Nr_Receber    = #RecebidoTMP.Nr_Receber and'
      '      A.Nr_Parcela    = #RecebidoTMP.Nr_Parcela and'
      '      A.Tp_Lancamento = ''''2'''' and'
      '      A.Dt_Lancamento >= #RecebidoTMP.Dt_Lancamento and'
      '      A.Dt_Lancamento <= #RecebidoTMP.Dt_Lancamento'
      '    ),'
      '  Vl_Juros ='
      '    ('
      '    select'
      '      sum( A.Vl_Lancamento )'
      ''
      '    from'
      '      Receber_Historico A'
      ''
      '    where'
      '      A.Cd_Filial     = #RecebidoTMP.Cd_Filial and'
      '      A.Nr_Receber    = #RecebidoTMP.Nr_Receber and'
      '      A.Nr_Parcela    = #RecebidoTMP.Nr_Parcela and'
      '      A.Tp_Lancamento = ''''3'''' and'
      '      A.Dt_Lancamento >= #RecebidoTMP.Dt_Lancamento and'
      '      A.Dt_Lancamento <= #RecebidoTMP.Dt_Lancamento'
      '    ),'
      '  Vl_Multa ='
      '    ('
      '    select'
      '      sum( A.Vl_Lancamento )'
      ''
      '    from'
      '      Receber_Historico A'
      ''
      '    where'
      '      A.Cd_Filial     = #RecebidoTMP.Cd_Filial and'
      '      A.Nr_Receber    = #RecebidoTMP.Nr_Receber and'
      '      A.Nr_Parcela    = #RecebidoTMP.Nr_Parcela and'
      '      A.Tp_Lancamento = ''''4'''' and'
      '      A.Dt_Lancamento >= #RecebidoTMP.Dt_Lancamento and'
      '      A.Dt_Lancamento <= #RecebidoTMP.Dt_Lancamento'
      '    ),'
      '  Vl_Credito ='
      '    ('
      '    select'
      '      sum( A.Vl_Lancamento )'
      ''
      '    from'
      '      Receber_Historico A'
      ''
      '    where'
      '      A.Cd_Filial     = #RecebidoTMP.Cd_Filial and'
      '      A.Nr_Receber    = #RecebidoTMP.Nr_Receber and'
      '      A.Nr_Parcela    = #RecebidoTMP.Nr_Parcela and'
      '      A.Tp_Lancamento = ''''5'''' and'
      '      A.Dt_Lancamento >= #RecebidoTMP.Dt_Lancamento and'
      '      A.Dt_Lancamento <= #RecebidoTMP.Dt_Lancamento'
      '    ),'
      '  Vl_Abatimento ='
      '    ('
      '    select'
      '      sum( A.Vl_Lancamento )'
      ''
      '    from'
      '      Receber_Historico A'
      ''
      '    where'
      '      A.Cd_Filial     = #RecebidoTMP.Cd_Filial and'
      '      A.Nr_Receber    = #RecebidoTMP.Nr_Receber and'
      '      A.Nr_Parcela    = #RecebidoTMP.Nr_Parcela and'
      '      A.Tp_Lancamento = ''''6'''' and'
      '      A.Dt_Lancamento >= #RecebidoTMP.Dt_Lancamento and'
      '      A.Dt_Lancamento <= #RecebidoTMP.Dt_Lancamento'
      '    ),'
      '  Vl_Desconto ='
      '    ('
      '    select'
      '      sum( A.Vl_Lancamento )'
      ''
      '    from'
      '      Receber_Historico A'
      ''
      '    where'
      '      A.Cd_Filial     = #RecebidoTMP.Cd_Filial and'
      '      A.Nr_Receber    = #RecebidoTMP.Nr_Receber and'
      '      A.Nr_Parcela    = #RecebidoTMP.Nr_Parcela and'
      '      A.Tp_Lancamento = ''''7'''' and'
      '      A.Dt_Lancamento >= #RecebidoTMP.Dt_Lancamento and'
      '      A.Dt_Lancamento <= #RecebidoTMP.Dt_Lancamento'
      '    ),'
      '  Vl_Debito ='
      '    ('
      '    select'
      '      sum( A.Vl_Lancamento )'
      ''
      '    from'
      '      Receber_Historico A'
      ''
      '    where'
      '      A.Cd_Filial     = #RecebidoTMP.Cd_Filial and'
      '      A.Nr_Receber    = #RecebidoTMP.Nr_Receber and'
      '      A.Nr_Parcela    = #RecebidoTMP.Nr_Parcela and'
      '      A.Tp_Lancamento = ''''8'''' and'
      '      A.Dt_Lancamento >= #RecebidoTMP.Dt_Lancamento and'
      '      A.Dt_Lancamento <= #RecebidoTMP.Dt_Lancamento'
      '    )'
    )
    Left = 133
    Top = 200
  end
  object DsExtrato: TDataSource
    DataSet = ADODsExtrato
    Left = 288
    Top = 153
  end
  object ADODsExtrato: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    OnCalcFields = ADODsExtratoCalcFields
    CommandText = 'select'#13#10'  R.Cd_Emitente, E.Nm_Emitente, R.Nr_Receber, RP.Nr_Parcela, '#13#10'  RP.Vl_Parcela, RP.Dt_Vencimento, R.St_Receber, R.Nr_Orcamento, O.Nr_ECF,'#13#10'  Dp_Emitente = E.Nm_Emitente + '''' ('''' + E.Nm_Fantasia + '''')'''', '#13#10'  Vl_Recebido  ='#13#10'    ('#13#10'    select'#13#10'      sum( A.Vl_Lancamento )'#13#10#13#10'    from'#13#10'      Receber_Historico A'#13#10#13#10'    where'#13#10'      A.Cd_Filial     = RP.Cd_Filial and'#13#10'      A.Nr_Receber    = RP.Nr_Receber and'#13#10'      A.Nr_Parcela    = RP.Nr_Parcela and'#13#10'      A.Tp_Lancamento >= ''''2'''' and'#13#10'      A.Tp_Lancamento <= ''''5'''#13#10'    ),'#13#10#13#10'  Dp_Fatura ='#13#10'    case'#13#10'      when R.Ds_Fatura is not null or R.Ds_Fatura <> '''''' then R.Ds_Fatura'#13#10'      else Convert( VarChar( 10 ), OT.Nr_Fatura )'#13#10#13#10'    end,'#13#10#13#10'  OT.Nm_Funcionario, P.Nm_Portador,'#13#10#13#10'  Vl_Abatimento ='#13#10'    ('#13#10'    select'#13#10'      sum( A.Vl_Lancamento )'#13#10#13#10'    from'#13#10'      Receber_Historico A'#13#10#13#10'    where'#13#10'      A.Cd_Filial      = RP.Cd_Filial and'#13#10'      A.Nr_Receber     = RP.Nr_Receber and'#13#10'      A.Nr_Parcela     = RP.Nr_Parcela and'#13#10'      A.Tp_Lancamento >= ''''6'''' and                           ---- Abatimento, Desconto e Debito'#13#10'      A.Tp_Lancamento <= ''''8'''#13#10'    )'#13#10#13#10'from'#13#10'  Receber_Parcela RP'#13#10#13#10'inner join'#13#10'  Receber R'#13#10'on'#13#10'  R.Cd_Filial  = RP.Cd_Filial and'#13#10'  R.Nr_Receber = RP.Nr_Receber'#13#10'  /* Cd_Emitente */'#13#10#13#10'inner join'#13#10'  Emitente E'#13#10'on'#13#10'  E.Cd_Emitente = R.Cd_Emitente'#13#10'  /* Cd_Grupo */'#13#10'  /* Cd_SubGrupo */'#13#10#13#10'inner join'#13#10'  Portador P'#13#10'on'#13#10'  P.Cd_Portador = RP.Cd_Portador'#13#10#13#10'left join'#13#10'  Orcamento_Total OT'#13#10'on'#13#10'  OT.Cd_Filial    = R.Cd_Filial and'#13#10'  OT.Nr_Orcamento = R.Nr_Orcamento'#13#10#13#10'left join'#13#10'  Orcamento O'#13#10'on'#13#10'  O.Cd_Filial    = R.Cd_Filial and'#13#10'  O.Nr_Orcamento = R.Nr_Orcamento'#13#10#13#10'where'#13#10'  RP.Cd_Filial = :Cd_Filial and'#13#10'  /* Cd_Portador */'#13#10'  RP.Dt_Vencimento >= :Dt_Start and'#13#10'  RP.Dt_Vencimento  < :Dt_End'#13#10#13#10'order by'#13#10'  R.Cd_Emitente, RP.Dt_Vencimento'
    Parameters = <
      item
        Name = 'Cd_Filial'
        DataType = ftSmallint
        Size = 1
        Value = 1
      end
      item
        Name = 'Dt_Start'
        DataType = ftDateTime
        Size = -1
        Value = 40179.0
      end
      item
        Name = 'Dt_End'
        DataType = ftDateTime
        Size = 10
        Value = 40909.0
      end>
    SQLOther0.Strings = (
      'select'
      '  R.Cd_Emitente, E.Nm_Emitente, R.Nr_Receber, RP.Nr_Parcela, RP.Vl_Parcela,'
      '  RP.Dt_Vencimento, R.St_Receber, R.Nr_Orcamento, O.Nr_ECF,'
      '  Dp_Emitente = E.Nm_Emitente + '''' ('''' + E.Nm_Fantasia + '''')'''', '
      '  Vl_Recebido  ='
      '    ('
      '    select'
      '      sum( A.Vl_Lancamento )'
      ''
      '    from'
      '      Receber_Historico A'
      ''
      '    where'
      '      A.Cd_Filial     = RP.Cd_Filial and'
      '      A.Nr_Receber    = RP.Nr_Receber and'
      '      A.Nr_Parcela    = RP.Nr_Parcela and'
      '      A.Tp_Lancamento >= ''''2'''' and'
      '      A.Tp_Lancamento <= ''''5'''
      '    ),'
      ''
      '  Dp_Fatura ='
      '    case'
      '      when R.Ds_Fatura is not null or R.Ds_Fatura <> '''''' then R.Ds_Fatura'
      '      else Convert( VarChar( 10 ), OT.Nr_Fatura )'
      ''
      '    end,'
      ''
      '  OT.Nm_Funcionario, P.Nm_Portador,'
      ''
      '  Vl_Abatimento ='
      '    ('
      '    select'
      '      sum( A.Vl_Lancamento )'
      ''
      '    from'
      '      Receber_Historico A'
      ''
      '    where'
      '      A.Cd_Filial      = RP.Cd_Filial and'
      '      A.Nr_Receber     = RP.Nr_Receber and'
      '      A.Nr_Parcela     = RP.Nr_Parcela and'
      '      A.Tp_Lancamento >= ''''6'''' and                           ---- Abatimento, Desconto e Debito'
      '      A.Tp_Lancamento <= ''''8'''
      '    )'
      ''
      'from'
      '  Receber_Parcela RP'
      ''
      'inner join'
      '  Receber R'
      'on'
      '  R.Cd_Filial  = RP.Cd_Filial and'
      '  R.Nr_Receber = RP.Nr_Receber and'
      '  /* Cd_Emitente */'
      '  R.St_Receber <= ''''3''''                 ----- Cancelado n'#227'o entra'
      ''
      'inner join'
      '  Emitente E'
      'on'
      '  E.Cd_Emitente = R.Cd_Emitente'
      '  /* Cd_Grupo */'
      '  /* Cd_SubGrupo */'
      ''
      'inner join'
      '  Portador P'
      'on'
      '  P.Cd_Portador = RP.Cd_Portador'
      ''
      'left join'
      '  Orcamento_Total OT'
      'on'
      '  OT.Cd_Filial    = R.Cd_Filial and'
      '  OT.Nr_Orcamento = R.Nr_Orcamento'
      ''
      'left join'
      '  Orcamento O'
      'on'
      '  O.Cd_Filial    = R.Cd_Filial and'
      '  O.Nr_Orcamento = R.Nr_Orcamento'
      ''
      'where'
      '  RP.Cd_Filial = :Cd_Filial and'
      '  /* Cd_Portador */'
      '  RP.Dt_Vencimento >= :Dt_Start and'
      '  RP.Dt_Vencimento  < :Dt_End'
      ''
      'order by'
      '  R.Cd_Emitente, RP.Dt_Vencimento'
    )
    Left = 320
    Top = 155
    object ADODsExtratoCd_Emitente: TIntegerField
      FieldName = 'Cd_Emitente'
    end
    object ADODsExtratoNm_Emitente: TStringField
      FieldName = 'Nm_Emitente'
      Size = 50
    end
    object ADODsExtratoNr_Receber: TIntegerField
      FieldName = 'Nr_Receber'
    end
    object ADODsExtratoNr_Parcela: TSmallintField
      FieldName = 'Nr_Parcela'
    end
    object ADODsExtratoVl_Parcela: TBCDField
      FieldName = 'Vl_Parcela'
      Precision = 12
      Size = 2
    end
    object ADODsExtratoSt_Receber: TStringField
      FieldName = 'St_Receber'
      FixedChar = True
      Size = 1
    end
    object ADODsExtratoNr_Orcamento: TIntegerField
      FieldName = 'Nr_Orcamento'
    end
    object ADODsExtratoVl_Recebido: TBCDField
      FieldName = 'Vl_Recebido'
      ReadOnly = True
      Precision = 32
      Size = 2
    end
    object ADODsExtratoVl_Saldo: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Vl_Saldo'
      Calculated = True
    end
    object ADODsExtratoDp_Fatura: TStringField
      FieldName = 'Dp_Fatura'
      ReadOnly = True
      Size = 10
    end
    object ADODsExtratoNm_Funcionario: TStringField
      FieldName = 'Nm_Funcionario'
      Size = 50
    end
    object ADODsExtratoNm_Portador: TStringField
      FieldName = 'Nm_Portador'
      Size = 50
    end
    object ADODsExtratoDp_Receber: TStringField
      FieldKind = fkCalculated
      FieldName = 'Dp_Receber'
      Size = 12
      Calculated = True
    end
    object ADODsExtratoDt_Vencimento: TDateTimeField
      FieldName = 'Dt_Vencimento'
    end
    object ADODsExtratoVl_Abatimento: TBCDField
      FieldName = 'Vl_Abatimento'
      ReadOnly = True
      Precision = 32
      Size = 2
    end
    object ADODsExtratoNr_ECF: TIntegerField
      FieldName = 'Nr_ECF'
    end
    object ADODsExtratoDs_Fatura: TStringField
      FieldKind = fkCalculated
      FieldName = 'Ds_Fatura'
      Calculated = True
    end
    object ADODsExtratoDp_Emitente: TStringField
      FieldName = 'Dp_Emitente'
      ReadOnly = True
      Size = 83
    end
  end
end
