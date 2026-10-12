object FrmReceber_Report: TFrmReceber_Report
  Left = 511
  Top = 266
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'FrmReceber_Report'
  ClientHeight = 316
  ClientWidth = 787
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
    Width = 766
    Height = 316
    Align = alClient
    ParentColor = True
    TabOrder = 3
    OnDblClick = PnlFundoDblClick
    object BvlSeparator: TBevel
      Left = 3
      Top = 286
      Width = 758
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
    object Label5: TLabel
      Left = 5
      Top = 111
      Width = 91
      Height = 13
      Caption = 'Grupo de Emitente:'
    end
    object SbGrupo: TSpeedButton
      Left = 45
      Top = 126
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
      Left = 381
      Top = 126
      Width = 23
      Height = 19
      Hint = 'Consulta SubGrupo de Emitente'
      Flat = True
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
      OnClick = SbSubGrupoClick
    end
    object Label20: TLabel
      Left = 340
      Top = 111
      Width = 110
      Height = 13
      Caption = 'SubGrupo de Emitente:'
    end
    object LblEMailCob: TLabel
      Left = 344
      Top = 150
      Width = 281
      Height = 13
      Caption = 'Imprimir boleto que foi emitido NFS-e na gera'#231#227'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LblVendedor: TLabel
      Left = 369
      Top = 76
      Width = 49
      Height = 13
      Caption = 'Vendedor:'
      Visible = False
    end
    object SbVendedor: TSpeedButton
      Left = 410
      Top = 89
      Width = 23
      Height = 19
      Hint = 'Seleciona Vendedor'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      Visible = False
      OnClick = SbVendedorClick
    end
    object LblSituacao: TLabel
      Left = 195
      Top = 3
      Width = 149
      Height = 13
      Caption = 'Situa'#231#227'o do Contas '#224' Receber:'
      Visible = False
    end
    object LblJuros: TLabel
      Left = 490
      Top = 37
      Width = 97
      Height = 13
      Caption = 'Imprimir Juros/Multa:'
      Visible = False
    end
    object BitBtnReport: TBitBtn
      Left = 593
      Top = 288
      Width = 85
      Height = 25
      Caption = '&Imprimir'
      TabOrder = 18
      OnClick = BitBtnReportClick
      Glyph.Data = {binary 1146 bytes}
    end
    object BitBtnCancel: TBitBtn
      Left = 679
      Top = 288
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 19
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
      Width = 403
      Height = 19
      TabStop = False
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
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
      Top = 89
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 6
      OnExit = EdtCd_PortadorExit
      OnKeyDown = EdtCd_EmitenteKeyDown
    end
    object EdtNm_Portador: TEdit
      Left = 69
      Top = 89
      Width = 297
      Height = 19
      TabStop = False
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 30
      ParentFont = False
      ReadOnly = True
      TabOrder = 9
    end
    object EdtCd_Grupo: TCurrencyEdit
      Tag = 2
      Left = 5
      Top = 126
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 10
      OnExit = EdtCd_GrupoExit
      OnKeyDown = EdtCd_EmitenteKeyDown
    end
    object EdtNm_Grupo: TEdit
      Left = 69
      Top = 126
      Width = 268
      Height = 19
      TabStop = False
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 30
      ParentFont = False
      ReadOnly = True
      TabOrder = 11
    end
    object EdtCd_SubGrupo: TCurrencyEdit
      Tag = 3
      Left = 340
      Top = 126
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '###'
      TabOrder = 12
      OnExit = EdtCd_SubGrupoExit
      OnKeyDown = EdtCd_EmitenteKeyDown
    end
    object EdtNm_SubGrupo: TEdit
      Left = 403
      Top = 126
      Width = 298
      Height = 19
      TabStop = False
      AutoSize = False
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 13
    end
    object CbEMailCob: TComboBox
      Left = 344
      Top = 165
      Width = 62
      Height = 21
      Style = csDropDownList
      Ctl3D = False
      ItemHeight = 13
      ItemIndex = 0
      ParentCtl3D = False
      TabOrder = 17
      Text = 'Ambos'
      Items.Strings = (
        'Ambos'
        'Sim'
        'N'#227'o'
      )
    end
    object CkBDocumento: TCheckBox
      Left = 6
      Top = 151
      Width = 161
      Height = 17
      TabStop = False
      Caption = 'CNPJ/CPF'
      TabOrder = 14
    end
    object CkBZebrado: TCheckBox
      Left = 6
      Top = 292
      Width = 111
      Height = 17
      TabStop = False
      Caption = 'Imprimir "&Zebrado"'
      Checked = True
      State = cbChecked
      TabOrder = 21
    end
    object CkBNmFantasia: TCheckBox
      Left = 6
      Top = 165
      Width = 161
      Height = 17
      TabStop = False
      Caption = 'Nome Fantasia'
      TabOrder = 15
    end
    object CkbEMailCob: TCheckBox
      Left = 6
      Top = 180
      Width = 161
      Height = 17
      TabStop = False
      Caption = 'E-Mail de Cobran'#231'a'
      TabOrder = 16
    end
    object SctRepEmissao: TSctReport
      Left = 374
      Top = 0
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
      TabOrder = 20
      Visible = False
      Minimized = True
      Prompt = True
      AutoRun = False
      SuppressStatus = False
      PixelsPerInch = 96
      STop = 55
      SLeft = 0
      SWidth = 833
      SHeight = 426
      MTop = 0
      MLeft = 374
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
        PageSetup.Height = 11.6929133858268
        PageSetup.Width = 8.26771653543307
        PageSetup.PreviewSettings.ModalPreview = mpNonModal
        PageSetup.PreviewSettings.PreviewOwner = poAppOwned
        PageSetup.PreviewSettings.FormStyle = pfsMDIChild
        PageSetup.LeftMargin = 0.3
        PageSetup.RightMargin = 0.3
        PageSetup.TopMargin = 0.3
        BorderType = btNone
        Description = 'Contas '#224' Receber por Emiss'#227'o'
        CloseDataSet = False
        DataRange = drAllRecords
        OmitLastPgFt = False
        Head = SctBand1
        Detail = SctBand3
        Foot = SctBand5
        PageHead = SctBand2
        PageFoot = SctBand4
        DataSource = DsEmissao
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
        object SctGroup1: TSctGroup
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Header = SctBand6
          Footer = SctBand7
          Variable = adodsemissaoDt_EmissaoVar
          Level = 0
        end
        object SctLevel6: TSctLevel
          Left = 30
          Top = 0
          Width = 0
          Height = 0
          IsHeader = True
        end
        object SctLevel7: TSctLevel
          Left = 30
          Top = 0
          Width = 0
          Height = 0
        end
        object SctDataSourceGuide1: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = DsRecebido
        end
        object SctDataSourceGuide2: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = DsReceber
        end
        object SctDataSourceGuide3: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = DmMaster.DsUsuario
        end
        object SctDataSourceGuide4: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = DmMaster.DsFilial
        end
        object SctDataSourceGuide5: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = FrmPortador_Find.DsFind
        end
        object DataSourceGuide10: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = DsEmissao
        end
        object adodsemissaoDt_VencimentoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dt_Vencimento'
          DataSource = DsEmissao
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsemissaoVl_ParcelaVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Vl_Parcela'
          DataSource = DsEmissao
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsemissaoVl_RecebidoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Vl_Recebido'
          DataSource = DsEmissao
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsemissaoDp_ReceberVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_Receber'
          DataSource = DsEmissao
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsemissaoDt_EmissaoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dt_Emissao'
          DataSource = DsEmissao
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsemissaoVl_SaldoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Vl_Saldo'
          DataSource = DsEmissao
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object TotalOfVl_Parcela2: TSctTotalvar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Variable = adodsemissaoVl_ParcelaVar
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidTotalVar
        end
        object TotalOfVl_Recebido1: TSctTotalvar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Variable = adodsemissaoVl_RecebidoVar
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidTotalVar
        end
        object TotalOfVl_Saldo2: TSctTotalvar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Variable = adodsemissaoVl_SaldoVar
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidTotalVar
        end
        object adodsfilialDp_FilialVar2: TSctDBVar
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
        object DataSourceGuide17: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = FrmEmitente_Find.DsFind
        end
        object DataSourceGuide18: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = FrmEmitente_Find.DsContato
        end
        object adodsemissaoNr_OrcamentoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_Orcamento'
          DataSource = DsEmissao
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object DataSourceGuide21: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = DsCancelada
        end
        object adodsemissaoDp_FaturaVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_Fatura'
          DataSource = DsEmissao
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
        object adodsemissaoDp_EmitenteVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_Emitente'
          DataSource = DsEmissao
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object DataSourceGuide29: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = FrmFuncionario_Find.DsFind
        end
        object DataSourceGuide33: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = DmMaster.DsConecadoMes
        end
        object adodsemissaoDp_SituacaoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_Situacao'
          DataSource = DsEmissao
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctBand1: TSctBand
          Left = 0
          Top = 0
          Width = 786
          Height = 7
          ParentColor = True
          BandName = 'Report Header'
          Updatelevel = SctLevel1
          Visible = False
        end
        object SctBand2: TSctBand
          Left = 0
          Top = 22
          Width = 786
          Height = 44
          ParentColor = True
          BandName = 'Page Header'
          Updatelevel = SctLevel2
          object Sctvarlabel53: TSctvarlabel
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
            Caption = 'Contas '#224' Receber por Data de Emiss'#227'o'
          end
          object Sctvarlabel54: TSctvarlabel
            Left = 633
            Top = 1
            Width = 34
            Height = 17
            Caption = 'Data:'
          end
          object Sctvarlabel55: TSctvarlabel
            Left = 671
            Top = 1
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = SctDateTimeVar1
            DataFormat.DisplayFormat = 'dd/mm/yyyy'
          end
          object Sctvarlabel56: TSctvarlabel
            Left = 633
            Top = 19
            Width = 34
            Height = 17
            Caption = 'Hora:'
          end
          object Sctvarlabel57: TSctvarlabel
            Left = 671
            Top = 19
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = SctDateTimeVar1
            DataFormat.DisplayFormat = 'hh:mm:ss'
          end
          object SctLine11: TSctLine
            Left = 1
            Top = 38
            Width = 734
            Height = 6
          end
          object SctTxtPerEmissao: TSctvarlabel
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
          Top = 160
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
          Updatelevel = SctLevel3
          Stretch = True
          OnBeforePrint = SctBand3BeforePrint
          object Sctvarlabel59: TSctvarlabel
            Left = 0
            Top = 2
            Width = 58
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsemissaoDp_ReceberVar
          end
          object SctVarEmitente: TSctvarlabel
            Left = 62
            Top = 1
            Width = 246
            Height = 17
            WrapText = True
            Stretch = True
            Variable = adodsemissaoDp_EmitenteVar
          end
          object Sctvarlabel61: TSctvarlabel
            Left = 674
            Top = 2
            Width = 62
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsemissaoVl_SaldoVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.SuppressNulls = True
            DataFormat.Digits = 2
          end
          object Sctvarlabel62: TSctvarlabel
            Left = 610
            Top = 2
            Width = 62
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsemissaoVl_RecebidoVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.SuppressNulls = True
            DataFormat.Digits = 2
          end
          object Sctvarlabel63: TSctvarlabel
            Left = 548
            Top = 2
            Width = 62
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsemissaoVl_ParcelaVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.SuppressNulls = True
            DataFormat.Digits = 2
          end
          object Sctvarlabel64: TSctvarlabel
            Left = 475
            Top = 1
            Width = 71
            Height = 17
            AlignHorizontal = laRight
            WrapText = True
            Stretch = True
            Variable = adodsemissaoDp_FaturaVar
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel77: TSctvarlabel
            Left = 428
            Top = 2
            Width = 63
            Height = 17
            AlignHorizontal = laCenter
            Variable = adodsemissaoDt_VencimentoVar
            DataFormat.DisplayFormat = 'dd/mm/yyyy'
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel82: TSctvarlabel
            Left = 369
            Top = 2
            Width = 58
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsemissaoNr_OrcamentoVar
            DataFormat.DisplayFormat = '###'
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel119: TSctvarlabel
            Left = 310
            Top = 2
            Width = 58
            Height = 17
            AlignHorizontal = laCenter
            Variable = adodsemissaoDp_SituacaoVar
            DataFormat.SuppressNulls = True
          end
        end
        object SctBand4: TSctBand
          Left = 0
          Top = 231
          Width = 786
          Height = 23
          Color = 15987699
          BandName = 'Page Footer'
          Updatelevel = SctLevel4
          object SctLine12: TSctLine
            Left = 1
            Top = 1
            Width = 734
            Height = 6
            AlignVertical = laTop
          end
          object Sctvarlabel65: TSctvarlabel
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
            Variable = adodsfilialDp_FilialVar2
          end
          object Sctvarlabel66: TSctvarlabel
            Left = 655
            Top = 4
            Width = 45
            Height = 17
            AlignHorizontal = laRight
            Caption = 'P'#225'gina:'
          end
          object Sctvarlabel67: TSctvarlabel
            Left = 701
            Top = 4
            Width = 35
            Height = 17
            AlignHorizontal = laRight
            Variable = SctPageVar1
            DataFormat.DisplayFormat = '#,##0'
          end
        end
        object SctBand5: TSctBand
          Left = 0
          Top = 269
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
          Updatelevel = SctLevel5
          object SctLine13: TSctLine
            Left = 332
            Top = 2
            Width = 404
            Height = 5
            AlignVertical = laTop
          end
          object SctTotalvarLabel10: TSctTotalvarLabel
            Left = 515
            Top = 5
            Width = 70
            Height = 17
            TotalVariable = TotalOfVl_Parcela2
            DataFormat.DisplayFormat = '#,##0.00'
          end
          object SctTotalvarLabel25: TSctTotalvarLabel
            Left = 590
            Top = 5
            Width = 70
            Height = 17
            TotalVariable = TotalOfVl_Recebido1
            DataFormat.DisplayFormat = '#,##0.00'
          end
          object SctTotalvarLabel26: TSctTotalvarLabel
            Left = 666
            Top = 5
            Width = 70
            Height = 17
            TotalVariable = TotalOfVl_Saldo2
            DataFormat.DisplayFormat = '#,##0.00'
          end
          object Sctvarlabel68: TSctvarlabel
            Left = 352
            Top = 5
            Width = 103
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Total Geral'
          end
          object SctTotalvarLabel39: TSctTotalvarLabel
            Left = 457
            Top = 5
            Width = 54
            Height = 17
            TotalVariable = TotalOfVl_Parcela2
            TotalType = ttCount
            DataFormat.DisplayFormat = '(#,###)'
            DataFormat.Digits = 0
            AlignHorizontal = laLeft
          end
        end
        object SctSubBand1: TSctSubBand
          Left = 0
          Top = 81
          Width = 786
          Height = 30
          Color = 15987699
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          BandName = 'PageHeaderBandSub'
          Updatelevel = SctLevel2
          Band = SctBand2
          Above = False
          object Sctvarlabel69: TSctvarlabel
            Left = 0
            Top = 1
            Width = 58
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Receber'
          end
          object Sctvarlabel70: TSctvarlabel
            Left = 63
            Top = 1
            Width = 65
            Height = 17
            Caption = 'Cliente'
          end
          object Sctvarlabel71: TSctvarlabel
            Left = 674
            Top = 1
            Width = 62
            Height = 17
            AlignHorizontal = laRight
            DataFormat.SuppressNulls = True
            Caption = 'Saldo'
          end
          object Sctvarlabel72: TSctvarlabel
            Left = 610
            Top = 1
            Width = 62
            Height = 17
            AlignHorizontal = laRight
            DataFormat.SuppressNulls = True
            Caption = 'Recebido'
          end
          object Sctvarlabel73: TSctvarlabel
            Left = 548
            Top = 1
            Width = 60
            Height = 17
            AlignHorizontal = laRight
            DataFormat.SuppressNulls = True
            Caption = 'Parcela'
          end
          object SctLine14: TSctLine
            Left = 1
            Top = 13
            Width = 734
            Height = 6
          end
          object Sctvarlabel74: TSctvarlabel
            Left = 475
            Top = 1
            Width = 71
            Height = 17
            AlignHorizontal = laRight
            WrapText = True
            Lines.Strings = (
              'Fatura'
              'CF'
            )
            DataFormat.SuppressNulls = True
            Caption = 'Fatura / CF'
          end
          object Sctvarlabel58: TSctvarlabel
            Left = 428
            Top = 1
            Width = 63
            Height = 17
            AlignHorizontal = laCenter
            DataFormat.SuppressNulls = True
            Caption = 'Vencimento'
          end
          object Sctvarlabel81: TSctvarlabel
            Left = 369
            Top = 0
            Width = 58
            Height = 17
            AlignHorizontal = laRight
            DataFormat.SuppressNulls = True
            Caption = 'Or'#231'amento'
          end
          object Sctvarlabel91: TSctvarlabel
            Left = 310
            Top = 1
            Width = 58
            Height = 17
            AlignHorizontal = laCenter
            DataFormat.SuppressNulls = True
            Caption = 'Situa'#231#227'o'
          end
        end
        object SctBand6: TSctBand
          Left = 0
          Top = 126
          Width = 786
          Height = 19
          Color = 15987699
          BandName = 'SctGrpEstado'
          Updatelevel = SctLevel6
          object Sctvarlabel75: TSctvarlabel
            Left = 0
            Top = 1
            Width = 55
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Emiss'#227'o:'
          end
          object Sctvarlabel76: TSctvarlabel
            Left = 58
            Top = 1
            Width = 104
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            Variable = adodsemissaoDt_EmissaoVar
            DataFormat.DisplayFormat = 'dd/mm/yyyy'
          end
        end
        object SctBand7: TSctBand
          Left = 0
          Top = 194
          Width = 786
          Height = 22
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = True
          ParentFont = False
          BandName = 'SctGrpFtEstado'
          Updatelevel = SctLevel7
          object SctLine15: TSctLine
            Left = 332
            Top = 2
            Width = 404
            Height = 5
            AlignVertical = laTop
          end
          object SctTotalvarLabel27: TSctTotalvarLabel
            Left = 548
            Top = 5
            Width = 62
            Height = 17
            TotalVariable = TotalOfVl_Parcela2
            DataFormat.DisplayFormat = '#,##0.00'
          end
          object SctTotalvarLabel28: TSctTotalvarLabel
            Left = 610
            Top = 5
            Width = 62
            Height = 17
            TotalVariable = TotalOfVl_Recebido1
            DataFormat.DisplayFormat = '#,##0.00'
          end
          object SctTotalvarLabel29: TSctTotalvarLabel
            Left = 674
            Top = 5
            Width = 62
            Height = 17
            TotalVariable = TotalOfVl_Saldo2
            DataFormat.DisplayFormat = '#,##0.00'
          end
          object Sctvarlabel78: TSctvarlabel
            Left = 365
            Top = 5
            Width = 103
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Total da Emiss'#227'o:'
          end
          object SctTotalvarLabel38: TSctTotalvarLabel
            Left = 473
            Top = 5
            Width = 54
            Height = 17
            TotalVariable = TotalOfVl_Parcela2
            TotalType = ttCount
            DataFormat.DisplayFormat = '(#,###)'
            DataFormat.Digits = 0
            AlignHorizontal = laLeft
          end
        end
      end
    end
    object SctRepCancelada: TSctReport
      Left = 641
      Top = 1
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
      TabOrder = 22
      Visible = False
      Minimized = True
      Prompt = True
      AutoRun = False
      SuppressStatus = False
      PixelsPerInch = 96
      STop = 55
      SLeft = 0
      SWidth = 833
      SHeight = 426
      MTop = 1
      MLeft = 641
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
        PageSetup.Height = 11.6929133858268
        PageSetup.Width = 8.26771653543307
        PageSetup.PreviewSettings.ModalPreview = mpNonModal
        PageSetup.PreviewSettings.PreviewOwner = poAppOwned
        PageSetup.PreviewSettings.FormStyle = pfsMDIChild
        PageSetup.LeftMargin = 0.3
        PageSetup.RightMargin = 0.3
        PageSetup.TopMargin = 0.3
        BorderType = btNone
        Description = 'Contas '#224' Receber Canceladas'
        CloseDataSet = False
        DataRange = drAllRecords
        OmitLastPgFt = False
        Head = SctBand10
        Detail = SctBand14
        Foot = SctBand16
        PageHead = SctBand13
        PageFoot = SctBand15
        DataSource = DsCancelada
        Order = 1
        object SctLevel15: TSctLevel
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          IsHeader = True
        end
        object SctLevel16: TSctLevel
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          IsHeader = True
        end
        object SctLevel17: TSctLevel
          Left = 0
          Top = 0
          Width = 0
          Height = 0
        end
        object SctLevel18: TSctLevel
          Left = 0
          Top = 0
          Width = 0
          Height = 0
        end
        object SctLevel19: TSctLevel
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
          UpdateLevel = SctLevel15
          AutoVar = True
          ID = vidDateTimeVar
        end
        object SctPageVar3: TSctPageVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          UpdateLevel = SctLevel16
          AutoVar = True
          ID = vidPageVar
        end
        object SctGroup3: TSctGroup
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Header = SctBand17
          Footer = SctBand18
          Variable = adodscanceladaDt_CancelamentoVar
          Level = 0
        end
        object SctLevel20: TSctLevel
          Left = 30
          Top = 0
          Width = 0
          Height = 0
          IsHeader = True
        end
        object SctLevel21: TSctLevel
          Left = 30
          Top = 0
          Width = 0
          Height = 0
        end
        object SctDataSourceGuide6: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel17
          DataSource = DsRecebido
        end
        object SctDataSourceGuide7: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel17
          DataSource = DsReceber
        end
        object SctDataSourceGuide8: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel17
          DataSource = DmMaster.DsUsuario
        end
        object SctDataSourceGuide9: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel17
          DataSource = DmMaster.DsFilial
        end
        object SctDataSourceGuide10: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel17
          DataSource = FrmPortador_Find.DsFind
        end
        object SctDataSourceGuide11: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel17
          DataSource = DsEmissao
        end
        object SctDBVar9: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_Filial'
          DataSource = DmMaster.DsFilial
          UpdateLevel = SctLevel17
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDataSourceGuide12: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel17
          DataSource = FrmEmitente_Find.DsFind
        end
        object SctDataSourceGuide13: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel17
          DataSource = FrmEmitente_Find.DsContato
        end
        object SctDataSourceGuide14: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel17
          DataSource = DsCancelada
        end
        object adodscanceladaDt_VencimentoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dt_Vencimento'
          DataSource = DsCancelada
          UpdateLevel = SctLevel17
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodscanceladaVl_ParcelaVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Vl_Parcela'
          DataSource = DsCancelada
          UpdateLevel = SctLevel17
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodscanceladaDp_EmitenteVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_Emitente'
          DataSource = DsCancelada
          UpdateLevel = SctLevel17
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodscanceladaVl_RecebidoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Vl_Recebido'
          DataSource = DsCancelada
          UpdateLevel = SctLevel17
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodscanceladaDp_ReceberVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_Receber'
          DataSource = DsCancelada
          UpdateLevel = SctLevel17
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodscanceladaNr_OrcamentoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_Orcamento'
          DataSource = DsCancelada
          UpdateLevel = SctLevel17
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodscanceladaDt_CancelamentoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dt_Cancelamento'
          DataSource = DsCancelada
          UpdateLevel = SctLevel17
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodscanceladaVl_SaldoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Vl_Saldo'
          DataSource = DsCancelada
          UpdateLevel = SctLevel17
          AutoVar = False
          ID = vidAutoDataVar
        end
        object TotalOfVl_Parcela3: TSctTotalvar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Variable = adodscanceladaVl_ParcelaVar
          UpdateLevel = SctLevel17
          AutoVar = False
          ID = vidTotalVar
        end
        object TotalOfVl_Recebido2: TSctTotalvar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Variable = adodscanceladaVl_RecebidoVar
          UpdateLevel = SctLevel17
          AutoVar = False
          ID = vidTotalVar
        end
        object TotalOfVl_Saldo3: TSctTotalvar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Variable = adodscanceladaVl_SaldoVar
          UpdateLevel = SctLevel17
          AutoVar = False
          ID = vidTotalVar
        end
        object adodscanceladaDp_FaturaVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_Fatura'
          DataSource = DsCancelada
          UpdateLevel = SctLevel17
          AutoVar = False
          ID = vidAutoDataVar
        end
        object DataSourceGuide25: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel17
          DataSource = DmMaster.DsConexao
        end
        object DataSourceGuide28: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel17
          DataSource = FrmFuncionario_Find.DsFind
        end
        object DataSourceGuide32: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel17
          DataSource = DmMaster.DsConecadoMes
        end
        object SctBand10: TSctBand
          Left = 0
          Top = 0
          Width = 786
          Height = 7
          ParentColor = True
          BandName = 'Report Header'
          Updatelevel = SctLevel15
          Visible = False
        end
        object SctBand13: TSctBand
          Left = 0
          Top = 22
          Width = 786
          Height = 44
          ParentColor = True
          BandName = 'Page Header'
          Updatelevel = SctLevel16
          object Sctvarlabel60: TSctvarlabel
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
            Caption = 'Contas '#224' Receber Canceladas'
          end
          object Sctvarlabel87: TSctvarlabel
            Left = 633
            Top = 1
            Width = 34
            Height = 17
            Caption = 'Data:'
          end
          object Sctvarlabel88: TSctvarlabel
            Left = 671
            Top = 1
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = SctDateTimeVar3
            DataFormat.DisplayFormat = 'dd/mm/yyyy'
          end
          object Sctvarlabel89: TSctvarlabel
            Left = 633
            Top = 19
            Width = 34
            Height = 17
            Caption = 'Hora:'
          end
          object Sctvarlabel90: TSctvarlabel
            Left = 671
            Top = 19
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = SctDateTimeVar3
            DataFormat.DisplayFormat = 'hh:mm:ss'
          end
          object SctLine16: TSctLine
            Left = 1
            Top = 38
            Width = 734
            Height = 6
          end
          object SctTxtPerCancelado: TSctvarlabel
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
        object SctBand14: TSctBand
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
          Updatelevel = SctLevel17
          Stretch = True
          OnBeforePrint = SctBand3BeforePrint
          object Sctvarlabel92: TSctvarlabel
            Left = 0
            Top = 1
            Width = 58
            Height = 17
            AlignHorizontal = laRight
            Variable = adodscanceladaDp_ReceberVar
          end
          object Sctvarlabel93: TSctvarlabel
            Left = 62
            Top = 0
            Width = 264
            Height = 17
            WrapText = True
            Stretch = True
            Variable = adodscanceladaDp_EmitenteVar
          end
          object Sctvarlabel94: TSctvarlabel
            Left = 666
            Top = 1
            Width = 70
            Height = 17
            AlignHorizontal = laRight
            Variable = adodscanceladaVl_SaldoVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.SuppressNulls = True
            DataFormat.Digits = 2
          end
          object Sctvarlabel95: TSctvarlabel
            Left = 590
            Top = 1
            Width = 70
            Height = 17
            AlignHorizontal = laRight
            Variable = adodscanceladaVl_RecebidoVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.SuppressNulls = True
            DataFormat.Digits = 2
          end
          object Sctvarlabel96: TSctvarlabel
            Left = 515
            Top = 1
            Width = 70
            Height = 17
            AlignHorizontal = laRight
            Variable = adodscanceladaVl_ParcelaVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.SuppressNulls = True
            DataFormat.Digits = 2
          end
          object Sctvarlabel97: TSctvarlabel
            Left = 453
            Top = 1
            Width = 60
            Height = 17
            AlignHorizontal = laRight
            WrapText = True
            Stretch = True
            Variable = adodscanceladaDp_FaturaVar
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel98: TSctvarlabel
            Left = 388
            Top = 1
            Width = 63
            Height = 17
            AlignHorizontal = laCenter
            Variable = adodscanceladaDt_VencimentoVar
            DataFormat.DisplayFormat = 'dd/mm/yyyy'
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel99: TSctvarlabel
            Left = 329
            Top = 0
            Width = 58
            Height = 17
            AlignHorizontal = laRight
            Variable = adodscanceladaNr_OrcamentoVar
            DataFormat.DisplayFormat = '###'
            DataFormat.SuppressNulls = True
          end
        end
        object SctBand15: TSctBand
          Left = 0
          Top = 220
          Width = 786
          Height = 23
          Color = 15987699
          BandName = 'Page Footer'
          Updatelevel = SctLevel18
          object SctLine17: TSctLine
            Left = 1
            Top = 1
            Width = 734
            Height = 6
            AlignVertical = laTop
          end
          object Sctvarlabel100: TSctvarlabel
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
            Variable = SctDBVar9
          end
          object Sctvarlabel101: TSctvarlabel
            Left = 655
            Top = 4
            Width = 45
            Height = 17
            AlignHorizontal = laRight
            Caption = 'P'#225'gina:'
          end
          object Sctvarlabel102: TSctvarlabel
            Left = 701
            Top = 4
            Width = 35
            Height = 17
            AlignHorizontal = laRight
            Variable = SctPageVar3
            DataFormat.DisplayFormat = '#,##0'
          end
        end
        object SctBand16: TSctBand
          Left = 0
          Top = 258
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
          Updatelevel = SctLevel19
          object SctLine18: TSctLine
            Left = 290
            Top = 2
            Width = 446
            Height = 5
            AlignVertical = laTop
          end
          object SctTotalvarLabel9: TSctTotalvarLabel
            Left = 515
            Top = 5
            Width = 70
            Height = 17
            TotalVariable = TotalOfVl_Parcela3
            DataFormat.DisplayFormat = '#,##0.00'
          end
          object SctTotalvarLabel18: TSctTotalvarLabel
            Left = 590
            Top = 5
            Width = 70
            Height = 17
            TotalVariable = TotalOfVl_Recebido2
            DataFormat.DisplayFormat = '#,##0.00'
          end
          object SctTotalvarLabel30: TSctTotalvarLabel
            Left = 666
            Top = 5
            Width = 70
            Height = 17
            TotalVariable = TotalOfVl_Saldo3
            DataFormat.DisplayFormat = '#,##0.00'
          end
          object Sctvarlabel103: TSctvarlabel
            Left = 299
            Top = 5
            Width = 103
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Total Geral'
          end
          object SctTotalvarLabel41: TSctTotalvarLabel
            Left = 445
            Top = 5
            Width = 50
            Height = 17
            TotalVariable = TotalOfVl_Parcela3
            TotalType = ttCount
            DataFormat.DisplayFormat = '(#,###)'
            DataFormat.Digits = 0
          end
        end
        object SctSubBand2: TSctSubBand
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
          Updatelevel = SctLevel16
          Band = SctBand13
          Above = False
          object Sctvarlabel104: TSctvarlabel
            Left = 0
            Top = 1
            Width = 58
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Receber'
          end
          object Sctvarlabel107: TSctvarlabel
            Left = 63
            Top = 1
            Width = 65
            Height = 17
            Caption = 'Cliente'
          end
          object Sctvarlabel108: TSctvarlabel
            Left = 666
            Top = 1
            Width = 70
            Height = 17
            AlignHorizontal = laRight
            DataFormat.SuppressNulls = True
            Caption = 'Saldo'
          end
          object Sctvarlabel109: TSctvarlabel
            Left = 590
            Top = 1
            Width = 70
            Height = 17
            AlignHorizontal = laRight
            DataFormat.SuppressNulls = True
            Caption = 'Recebido'
          end
          object Sctvarlabel110: TSctvarlabel
            Left = 515
            Top = 1
            Width = 70
            Height = 17
            AlignHorizontal = laRight
            DataFormat.SuppressNulls = True
            Caption = 'Parcela'
          end
          object SctLine19: TSctLine
            Left = 1
            Top = 13
            Width = 734
            Height = 6
          end
          object Sctvarlabel111: TSctvarlabel
            Left = 453
            Top = 1
            Width = 60
            Height = 17
            AlignHorizontal = laRight
            DataFormat.SuppressNulls = True
            Caption = 'Fatura / CF'
          end
          object Sctvarlabel112: TSctvarlabel
            Left = 388
            Top = 1
            Width = 63
            Height = 17
            AlignHorizontal = laCenter
            DataFormat.SuppressNulls = True
            Caption = 'Vencimento'
          end
          object Sctvarlabel113: TSctvarlabel
            Left = 329
            Top = 0
            Width = 58
            Height = 17
            AlignHorizontal = laRight
            DataFormat.SuppressNulls = True
            Caption = 'Or'#231'amento'
          end
        end
        object SctBand17: TSctBand
          Left = 0
          Top = 115
          Width = 786
          Height = 19
          Color = 15987699
          BandName = 'SctGrpEstado'
          Updatelevel = SctLevel20
          object Sctvarlabel116: TSctvarlabel
            Left = 0
            Top = 1
            Width = 89
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Cancelamento:'
          end
          object Sctvarlabel117: TSctvarlabel
            Left = 91
            Top = 1
            Width = 104
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            Variable = adodscanceladaDt_CancelamentoVar
            DataFormat.DisplayFormat = 'dd/mm/yyyy'
          end
        end
        object SctBand18: TSctBand
          Left = 0
          Top = 183
          Width = 786
          Height = 22
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = True
          ParentFont = False
          BandName = 'SctGrpFtEstado'
          Updatelevel = SctLevel21
          object SctLine20: TSctLine
            Left = 290
            Top = 2
            Width = 446
            Height = 5
            AlignVertical = laTop
          end
          object SctTotalvarLabel31: TSctTotalvarLabel
            Left = 515
            Top = 5
            Width = 70
            Height = 17
            TotalVariable = TotalOfVl_Parcela3
            DataFormat.DisplayFormat = '#,##0.00'
          end
          object SctTotalvarLabel32: TSctTotalvarLabel
            Left = 590
            Top = 5
            Width = 70
            Height = 17
            TotalVariable = TotalOfVl_Recebido2
            DataFormat.DisplayFormat = '#,##0.00'
          end
          object SctTotalvarLabel33: TSctTotalvarLabel
            Left = 666
            Top = 5
            Width = 70
            Height = 17
            TotalVariable = TotalOfVl_Saldo3
            DataFormat.DisplayFormat = '#,##0.00'
          end
          object Sctvarlabel118: TSctvarlabel
            Left = 299
            Top = 5
            Width = 143
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Total do Cancelamento:'
          end
          object SctTotalvarLabel40: TSctTotalvarLabel
            Left = 445
            Top = 5
            Width = 50
            Height = 17
            TotalVariable = TotalOfVl_Parcela3
            TotalType = ttCount
            DataFormat.DisplayFormat = '(#,###)'
            DataFormat.Digits = 0
          end
        end
      end
    end
    object EdtCd_Vendedor: TCurrencyEdit
      Tag = 5
      Left = 369
      Top = 89
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 7
      Visible = False
      OnExit = EdtCd_VendedorExit
      OnKeyDown = EdtCd_EmitenteKeyDown
    end
    object EdtNm_Vendedor: TEdit
      Left = 434
      Top = 89
      Width = 308
      Height = 19
      TabStop = False
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 30
      ParentFont = False
      ReadOnly = True
      TabOrder = 8
      Visible = False
    end
    object CbSituacao: TComboBox
      Left = 195
      Top = 18
      Width = 189
      Height = 21
      Style = csDropDownList
      Ctl3D = False
      ItemHeight = 13
      ItemIndex = 0
      ParentCtl3D = False
      TabOrder = 2
      Text = 'Aberto / Amortizadas / Recebidas'
      Visible = False
      Items.Strings = (
        'Aberto / Amortizadas / Recebidas'
        'Todas'
        'Aberto'
        'Amortizadas'
        'Recebidas'
        'Canceladas'
      )
    end
    object CbJuros: TComboBox
      Left = 490
      Top = 52
      Width = 62
      Height = 21
      Style = csDropDownList
      Ctl3D = False
      ItemHeight = 13
      ItemIndex = 1
      ParentCtl3D = False
      TabOrder = 5
      Text = 'N'#227'o'
      Visible = False
      Items.Strings = (
        'Sim'
        'N'#227'o'
      )
    end
  end
  object PnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 21
    Height = 316
    Align = alLeft
    TabOrder = 2
  end
  object SctRepRecebido: TSctReport
    Left = 486
    Top = 0
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
    SWidth = 1086
    SHeight = 526
    MTop = 0
    MLeft = 486
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
      PageSetup.Orientation = poLandscape
      PageSetup.Size = psA4
      PageSetup.Height = 8.5
      PageSetup.Width = 11.0
      PageSetup.PreviewSettings.ModalPreview = mpNonModal
      PageSetup.PreviewSettings.PreviewOwner = poAppOwned
      PageSetup.PreviewSettings.FormStyle = pfsMDIChild
      PageSetup.LeftMargin = 0.3
      PageSetup.RightMargin = 0.01
      PageSetup.TopMargin = 0.3
      BorderType = btNone
      Description = 'Contas Recebidas'
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
        Variable = adodsrecebidoDt_LancamentoVar
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
        DataSource = DsEmissao
      end
      object DataSourceGuide15: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = DetailBandlevel
        DataSource = FrmEmitente_Find.DsFind
      end
      object DataSourceGuide16: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = DetailBandlevel
        DataSource = FrmEmitente_Find.DsContato
      end
      object adodsrecebidoNr_OrcamentoVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Nr_Orcamento'
        DataSource = DsRecebido
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsrecebidoVl_OldRecebidoVar: TSctDBVar
        Left = 113
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
        Left = 113
        Top = 0
        Width = 0
        Height = 0
        Variable = adodsrecebidoVl_OldRecebidoVar
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidTotalVar
      end
      object DataSourceGuide20: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = DetailBandlevel
        DataSource = DsCancelada
      end
      object adodsrecebidoDp_FaturaVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Dp_Fatura'
        DataSource = DsRecebido
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
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
      object DataSourceGuide26: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = DetailBandlevel
        DataSource = FrmFuncionario_Find.DsFind
      end
      object DataSourceGuide30: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = DetailBandlevel
        DataSource = DmMaster.DsConecadoMes
      end
      object adodsrecebidoDp_EmiRecebidoVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Dp_EmiRecebido'
        DataSource = DsRecebido
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object ReportHeaderBand: TSctBand
        Left = 0
        Top = 0
        Width = 1076
        Height = 7
        ParentColor = True
        BandName = 'Report Header'
        Updatelevel = ReportHeaderBandlevel
        Visible = False
      end
      object PageHeaderBand: TSctBand
        Left = 0
        Top = 22
        Width = 1076
        Height = 44
        ParentColor = True
        BandName = 'Page Header'
        Updatelevel = PageHeaderBandlevel
        object Sctvarlabel1: TSctvarlabel
          Left = 2
          Top = 2
          Width = 129
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Caption = 'Contas Recebidas'
        end
        object Sctvarlabel2: TSctvarlabel
          Left = 922
          Top = 1
          Width = 34
          Height = 17
          Caption = 'Data:'
        end
        object Sctvarlabel3: TSctvarlabel
          Left = 960
          Top = 1
          Width = 65
          Height = 17
          AlignHorizontal = laRight
          Variable = svarDateTime
          DataFormat.DisplayFormat = 'dd/mm/yyyy'
        end
        object Sctvarlabel4: TSctvarlabel
          Left = 922
          Top = 19
          Width = 34
          Height = 17
          Caption = 'Hora:'
        end
        object Sctvarlabel5: TSctvarlabel
          Left = 960
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
          Width = 1024
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
        Width = 1076
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
        object Sctvarlabel27: TSctvarlabel
          Left = 63
          Top = 0
          Width = 216
          Height = 17
          WrapText = True
          Stretch = True
          Variable = adodsrecebidoDp_EmiRecebidoVar
        end
        object Sctvarlabel28: TSctvarlabel
          Left = 0
          Top = 1
          Width = 58
          Height = 17
          AlignHorizontal = laRight
          Variable = adodsrecebidoDp_ReceberVar
        end
        object Sctvarlabel16: TSctvarlabel
          Left = 708
          Top = 1
          Width = 60
          Height = 17
          AlignHorizontal = laRight
          WrapText = True
          Variable = adodsrecebidoVl_CreditoVar
          DataFormat.DisplayFormat = '#,##0.00'
          DataFormat.SuppressNulls = True
          DataFormat.Digits = 2
        end
        object Sctvarlabel17: TSctvarlabel
          Left = 643
          Top = 1
          Width = 60
          Height = 17
          AlignHorizontal = laRight
          Variable = adodsrecebidoVl_MultaVar
          DataFormat.DisplayFormat = '#,##0.00'
          DataFormat.SuppressNulls = True
          DataFormat.Digits = 2
        end
        object Sctvarlabel18: TSctvarlabel
          Left = 579
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
          Left = 515
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
          Left = 450
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
          Left = 901
          Top = 1
          Width = 60
          Height = 17
          AlignHorizontal = laRight
          WrapText = True
          Variable = adodsrecebidoVl_DebitoVar
          DataFormat.DisplayFormat = '#,##0.00'
          DataFormat.SuppressNulls = True
          DataFormat.Digits = 2
        end
        object Sctvarlabel25: TSctvarlabel
          Left = 837
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
          Left = 773
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
          Left = 966
          Top = 1
          Width = 60
          Height = 17
          AlignHorizontal = laRight
          Variable = adodsrecebidoVl_SaldoVar
          DataFormat.DisplayFormat = '#,##0.00'
          DataFormat.Digits = 2
        end
        object Sctvarlabel30: TSctvarlabel
          Left = 386
          Top = 1
          Width = 60
          Height = 17
          AlignHorizontal = laCenter
          Variable = adodsrecebidoDt_VencimentoVar
          DataFormat.DisplayFormat = 'dd/mm/yyyy'
          DataFormat.SuppressNulls = True
        end
        object Sctvarlabel84: TSctvarlabel
          Left = 323
          Top = 1
          Width = 60
          Height = 17
          AlignHorizontal = laRight
          Variable = adodsrecebidoNr_OrcamentoVar
          DataFormat.DisplayFormat = '###'
          DataFormat.SuppressNulls = True
        end
        object Sctvarlabel86: TSctvarlabel
          Left = 251
          Top = 0
          Width = 73
          Height = 17
          AlignHorizontal = laRight
          WrapText = True
          Stretch = True
          Variable = adodsrecebidoDp_FaturaVar
          DataFormat.SuppressNulls = True
        end
      end
      object PageFooterBand: TSctBand
        Left = 0
        Top = 253
        Width = 1076
        Height = 19
        Color = 15987699
        BandName = 'Page Footer'
        Updatelevel = PageFooterBandlevel
        object SctLine3: TSctLine
          Left = 1
          Top = 1
          Width = 1024
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
          Left = 944
          Top = 1
          Width = 45
          Height = 17
          AlignHorizontal = laRight
          Caption = 'P'#225'gina:'
        end
        object Sctvarlabel24: TSctvarlabel
          Left = 990
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
        Width = 1076
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
          Left = 515
          Top = 2
          Width = 60
          Height = 17
          TotalVariable = TotalOfVl_Pagamento
          DataFormat.DisplayFormat = '#,##0.00'
        end
        object SctTotalvarLabel12: TSctTotalvarLabel
          Left = 579
          Top = 2
          Width = 60
          Height = 17
          TotalVariable = TotalOfVl_Juros
          DataFormat.DisplayFormat = '#,##0.00'
        end
        object SctTotalvarLabel13: TSctTotalvarLabel
          Left = 643
          Top = 2
          Width = 60
          Height = 17
          TotalVariable = TotalOfVl_Multa
          DataFormat.DisplayFormat = '#,##0.00'
        end
        object SctTotalvarLabel14: TSctTotalvarLabel
          Left = 708
          Top = 2
          Width = 60
          Height = 17
          TotalVariable = TotalOfVl_Credito
          DataFormat.DisplayFormat = '#,##0.00'
        end
        object SctTotalvarLabel15: TSctTotalvarLabel
          Left = 773
          Top = 2
          Width = 60
          Height = 17
          TotalVariable = TotalOfVl_Abatimento
          DataFormat.DisplayFormat = '#,##0.00'
        end
        object SctTotalvarLabel16: TSctTotalvarLabel
          Left = 837
          Top = 2
          Width = 60
          Height = 17
          TotalVariable = TotalOfVl_Desconto
          DataFormat.DisplayFormat = '#,##0.00'
        end
        object SctTotalvarLabel17: TSctTotalvarLabel
          Left = 901
          Top = 2
          Width = 60
          Height = 17
          TotalVariable = TotalOfVl_Debito
          DataFormat.DisplayFormat = '#,##0.00'
        end
        object Sctvarlabel34: TSctvarlabel
          Left = 361
          Top = 2
          Width = 81
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
          Left = 295
          Top = 1
          Width = 731
          Height = 6
          AlignVertical = laTop
        end
        object SctVarVlParcela: TSctvarlabel
          Left = 430
          Top = 2
          Width = 80
          Height = 17
          AlignHorizontal = laRight
          Caption = '0.00'
        end
        object Sctvarlabel50: TSctvarlabel
          Left = 341
          Top = 20
          Width = 168
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
          Left = 515
          Top = 20
          Width = 60
          Height = 17
          AlignHorizontal = laRight
          Caption = '0,00'
        end
        object SctVarSaldo: TSctvarlabel
          Left = 966
          Top = 2
          Width = 60
          Height = 17
          AlignHorizontal = laRight
          DataFormat.SuppressNulls = True
          Caption = 'Saldo'
        end
        object SctTotalvarLabel37: TSctTotalvarLabel
          Left = 664
          Top = 20
          Width = 60
          Height = 17
          TotalVariable = TotalOfVl_Pagamento
          TotalType = ttCount
          DataFormat.DisplayFormat = '(#,###)'
          DataFormat.Digits = 0
        end
      end
      object PageHeaderBandSub: TSctSubBand
        Left = 0
        Top = 81
        Width = 1076
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
        object Sctvarlabel7: TSctvarlabel
          Left = 63
          Top = 15
          Width = 65
          Height = 17
          Caption = 'Cliente'
        end
        object Sctvarlabel8: TSctvarlabel
          Left = 708
          Top = 0
          Width = 60
          Height = 34
          AlignHorizontal = laRight
          WrapText = True
          DataFormat.SuppressNulls = True
          Caption = 'Outros Cr'#233'ditos'
        end
        object Sctvarlabel9: TSctvarlabel
          Left = 643
          Top = 15
          Width = 60
          Height = 17
          AlignHorizontal = laRight
          DataFormat.SuppressNulls = True
          Caption = 'Multa'
        end
        object SctLblReposicao: TSctvarlabel
          Left = 579
          Top = 15
          Width = 60
          Height = 17
          AlignHorizontal = laRight
          DataFormat.SuppressNulls = True
          Caption = 'Juros'
        end
        object SctLblCusto: TSctvarlabel
          Left = 515
          Top = 15
          Width = 60
          Height = 17
          AlignHorizontal = laRight
          DataFormat.SuppressNulls = True
          Caption = 'Pagamento'
        end
        object Sctvarlabel10: TSctvarlabel
          Left = 450
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
          Width = 1024
          Height = 6
        end
        object Sctvarlabel11: TSctvarlabel
          Left = 901
          Top = 0
          Width = 60
          Height = 34
          AlignHorizontal = laRight
          WrapText = True
          DataFormat.SuppressNulls = True
          Caption = 'Outros D'#233'bitos'
        end
        object Sctvarlabel12: TSctvarlabel
          Left = 837
          Top = 15
          Width = 60
          Height = 17
          AlignHorizontal = laRight
          DataFormat.SuppressNulls = True
          Caption = 'Desconto'
        end
        object Sctvarlabel13: TSctvarlabel
          Left = 773
          Top = 15
          Width = 60
          Height = 17
          AlignHorizontal = laRight
          DataFormat.SuppressNulls = True
          Caption = 'Abatimento'
        end
        object Sctvarlabel14: TSctvarlabel
          Left = 966
          Top = 15
          Width = 60
          Height = 17
          AlignHorizontal = laRight
          DataFormat.SuppressNulls = True
          Caption = 'Saldo'
        end
        object Sctvarlabel15: TSctvarlabel
          Left = 386
          Top = 15
          Width = 60
          Height = 17
          AlignHorizontal = laCenter
          DataFormat.SuppressNulls = True
          Caption = 'Vencimento'
        end
        object Sctvarlabel83: TSctvarlabel
          Left = 323
          Top = 15
          Width = 60
          Height = 17
          AlignHorizontal = laRight
          DataFormat.SuppressNulls = True
          Caption = 'Or'#231'amento'
        end
        object Sctvarlabel85: TSctvarlabel
          Left = 264
          Top = 14
          Width = 60
          Height = 17
          AlignHorizontal = laRight
          DataFormat.SuppressNulls = True
          Caption = 'Fatura / CF'
        end
      end
      object GroupHeader: TSctBand
        Left = 0
        Top = 134
        Width = 1076
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
        object Sctvarlabel31: TSctvarlabel
          Left = 12
          Top = 1
          Width = 104
          Height = 15
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Caption = 'Movimento do Dia:'
        end
        object Sctvarlabel32: TSctvarlabel
          Left = 118
          Top = 1
          Width = 138
          Height = 15
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
          Variable = adodsrecebidoDt_LancamentoVar
          DataFormat.DisplayFormat = 'dd/mm/yyyy'
          DataFormat.SuppressNulls = True
        end
      end
      object GroupFooter: TSctBand
        Left = 0
        Top = 200
        Width = 1076
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
          Left = 450
          Top = 3
          Width = 60
          Height = 17
          TotalVariable = TotalOfVl_Parcela
          DataFormat.DisplayFormat = '#,##0.00'
        end
        object SctTotalvarLabel2: TSctTotalvarLabel
          Left = 515
          Top = 3
          Width = 60
          Height = 17
          TotalVariable = TotalOfVl_Pagamento
          DataFormat.DisplayFormat = '#,##0.00'
        end
        object SctTotalvarLabel3: TSctTotalvarLabel
          Left = 579
          Top = 3
          Width = 60
          Height = 17
          TotalVariable = TotalOfVl_Juros
          DataFormat.DisplayFormat = '#,##0.00'
        end
        object SctTotalvarLabel4: TSctTotalvarLabel
          Left = 643
          Top = 3
          Width = 60
          Height = 17
          TotalVariable = TotalOfVl_Multa
          DataFormat.DisplayFormat = '#,##0.00'
        end
        object SctTotalvarLabel5: TSctTotalvarLabel
          Left = 708
          Top = 3
          Width = 60
          Height = 17
          TotalVariable = TotalOfVl_Credito
          DataFormat.DisplayFormat = '#,##0.00'
        end
        object SctTotalvarLabel6: TSctTotalvarLabel
          Left = 773
          Top = 3
          Width = 60
          Height = 17
          TotalVariable = TotalOfVl_Abatimento
          DataFormat.DisplayFormat = '#,##0.00'
        end
        object SctTotalvarLabel7: TSctTotalvarLabel
          Left = 837
          Top = 3
          Width = 60
          Height = 17
          TotalVariable = TotalOfVl_Desconto
          DataFormat.DisplayFormat = '#,##0.00'
        end
        object SctTotalvarLabel8: TSctTotalvarLabel
          Left = 901
          Top = 3
          Width = 60
          Height = 17
          TotalVariable = TotalOfVl_Debito
          DataFormat.DisplayFormat = '#,##0.00'
        end
        object Sctvarlabel33: TSctvarlabel
          Left = 361
          Top = 3
          Width = 81
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
          AlignHorizontal = laRight
          Caption = 'Totais do Dia:'
        end
        object SctLine4: TSctLine
          Left = 295
          Top = 2
          Width = 731
          Height = 6
          AlignVertical = laTop
        end
        object Sctvarlabel49: TSctvarlabel
          Left = 341
          Top = 20
          Width = 168
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
          AlignHorizontal = laRight
          Caption = 'Total Geral Recebido no Dia:'
        end
        object SctVarTotDia: TSctvarlabel
          Left = 515
          Top = 20
          Width = 60
          Height = 17
          AlignHorizontal = laRight
          Caption = '0,00'
        end
        object SctVarSaldoDia: TSctvarlabel
          Left = 966
          Top = 3
          Width = 60
          Height = 17
          AlignHorizontal = laRight
          DataFormat.SuppressNulls = True
          Caption = 'Saldo'
        end
        object SctTotalvarLabel34: TSctTotalvarLabel
          Left = 664
          Top = 20
          Width = 60
          Height = 17
          TotalVariable = TotalOfVl_Pagamento
          TotalType = ttCount
          DataFormat.DisplayFormat = '(#,###)'
          DataFormat.Digits = 0
        end
      end
    end
  end
  object SctRepReceber: TSctReport
    Left = 574
    Top = 1
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
    MTop = 1
    MLeft = 574
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
      object SctGroup2: TSctGroup
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        Header = SctGrpEstado
        Footer = SctGrpFtEstado
        Variable = adodsreceberDt_VencimentoVar
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
      object DataSourceGuide11: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = SctLevel10
        DataSource = DsEmissao
      end
      object DataSourceGuide13: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = SctLevel10
        DataSource = FrmEmitente_Find.DsFind
      end
      object DataSourceGuide14: TSctDataSourceGuide
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
      object DataSourceGuide19: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = SctLevel10
        DataSource = DsCancelada
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
      object adodsconexaoNm_BancoVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Nm_Banco'
        DataSource = DmMaster.DsConexao
        UpdateLevel = SctLevel10
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsconexaoHr_LoginVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Hr_Login'
        DataSource = DmMaster.DsConexao
        UpdateLevel = SctLevel10
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsconexaoNr_TransacoesAbertasVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Nr_TransacoesAbertas'
        DataSource = DmMaster.DsConexao
        UpdateLevel = SctLevel10
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsconexaoNt_UsuarioVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Nt_Usuario'
        DataSource = DmMaster.DsConexao
        UpdateLevel = SctLevel10
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsconexaoNm_EstacaoTrabalhoVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Nm_EstacaoTrabalho'
        DataSource = DmMaster.DsConexao
        UpdateLevel = SctLevel10
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsconexaoNm_AplicacaoVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Nm_Aplicacao'
        DataSource = DmMaster.DsConexao
        UpdateLevel = SctLevel10
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsconexaoStatusVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Status'
        DataSource = DmMaster.DsConexao
        UpdateLevel = SctLevel10
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsconexaoDs_ComandoVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Ds_Comando'
        DataSource = DmMaster.DsConexao
        UpdateLevel = SctLevel10
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsconexaoLoginameVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Loginame'
        DataSource = DmMaster.DsConexao
        UpdateLevel = SctLevel10
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsconexaospidVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'spid'
        DataSource = DmMaster.DsConexao
        UpdateLevel = SctLevel10
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsconexaoNet_AddressVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Net_Address'
        DataSource = DmMaster.DsConexao
        UpdateLevel = SctLevel10
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsconexaoNr_VersaoVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Nr_Versao'
        DataSource = DmMaster.DsConexao
        UpdateLevel = SctLevel10
        AutoVar = False
        ID = vidAutoDataVar
      end
      object DataSourceGuide27: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = SctLevel10
        DataSource = FrmFuncionario_Find.DsFind
      end
      object DataSourceGuide31: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = SctLevel10
        DataSource = DmMaster.DsConecadoMes
      end
      object adodsreceberVl_AcrescimoVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Vl_Acrescimo'
        DataSource = DsReceber
        UpdateLevel = SctLevel10
        AutoVar = False
        ID = vidAutoDataVar
      end
      object TotalOfVl_Acrescimo: TSctTotalvar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        Variable = adodsreceberVl_AcrescimoVar
        UpdateLevel = SctLevel10
        AutoVar = False
        ID = vidTotalVar
      end
      object adodsreceberVl_ZeradoVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Vl_Zerado'
        DataSource = DsReceber
        UpdateLevel = SctLevel10
        AutoVar = False
        ID = vidAutoDataVar
      end
      object TotalOfVl_Zerado: TSctTotalvar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        Variable = adodsreceberVl_ZeradoVar
        UpdateLevel = SctLevel10
        AutoVar = False
        ID = vidTotalVar
      end
      object adodsreceberDp_EmiReceberVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Dp_EmiReceber'
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
          Caption = 'Contas '#224' Receber'
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
        Top = 161
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
          Width = 268
          Height = 17
          WrapText = True
          Stretch = True
          Variable = adodsreceberDp_EmiReceberVar
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
          Left = 455
          Top = 0
          Width = 57
          Height = 17
          AlignHorizontal = laRight
          WrapText = True
          Stretch = True
          Variable = adodsreceberDp_FaturaVar
          DataFormat.SuppressNulls = True
        end
        object Sctvarlabel80: TSctvarlabel
          Left = 393
          Top = 1
          Width = 59
          Height = 17
          AlignHorizontal = laRight
          Variable = adodsreceberNr_OrcamentoVar
          DataFormat.DisplayFormat = '###'
          DataFormat.SuppressNulls = True
        end
        object SctVarAcrescimo: TSctvarlabel
          Left = 330
          Top = 1
          Width = 59
          Height = 17
          AlignHorizontal = laRight
          Variable = adodsreceberVl_AcrescimoVar
          DataFormat.DisplayFormat = '#,##0.00'
          DataFormat.SuppressNulls = True
          DataFormat.Digits = 2
        end
      end
      object SctBand11: TSctBand
        Left = 0
        Top = 232
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
        Top = 270
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
          Left = 212
          Top = 2
          Width = 524
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
          Left = 223
          Top = 5
          Width = 103
          Height = 17
          AlignHorizontal = laRight
          Caption = 'Total Geral:'
        end
        object SctTotalvarLabel36: TSctTotalvarLabel
          Left = 464
          Top = 5
          Width = 39
          Height = 17
          TotalVariable = TotalOfVl_Parcela1
          TotalType = ttCount
          DataFormat.DisplayFormat = '(#,###)'
          DataFormat.Digits = 0
          AlignHorizontal = laLeft
        end
        object SctTotGeral: TSctTotalvarLabel
          Left = 330
          Top = 5
          Width = 59
          Height = 17
          TotalVariable = TotalOfVl_Acrescimo
          DataFormat.DisplayFormat = '#,##0.00'
          DataFormat.SuppressNulls = True
        end
      end
      object PgHdPedido: TSctSubBand
        Left = 0
        Top = 81
        Width = 786
        Height = 30
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
          Top = 11
          Width = 58
          Height = 17
          AlignHorizontal = laRight
          Caption = 'Receber'
        end
        object Sctvarlabel43: TSctvarlabel
          Left = 63
          Top = 11
          Width = 65
          Height = 17
          Caption = 'Cliente'
        end
        object Sctvarlabel44: TSctvarlabel
          Left = 666
          Top = 11
          Width = 70
          Height = 17
          AlignHorizontal = laRight
          DataFormat.SuppressNulls = True
          Caption = 'Saldo'
        end
        object Sctvarlabel45: TSctvarlabel
          Left = 590
          Top = 11
          Width = 70
          Height = 17
          AlignHorizontal = laRight
          DataFormat.SuppressNulls = True
          Caption = 'Recebido'
        end
        object Sctvarlabel46: TSctvarlabel
          Left = 515
          Top = 11
          Width = 70
          Height = 17
          AlignHorizontal = laRight
          DataFormat.SuppressNulls = True
          Caption = 'Parcela'
        end
        object SctLine10: TSctLine
          Left = 1
          Top = 24
          Width = 734
          Height = 6
        end
        object Sctvarlabel51: TSctvarlabel
          Left = 455
          Top = 11
          Width = 57
          Height = 17
          AlignHorizontal = laRight
          DataFormat.SuppressNulls = True
          Caption = 'Fatura / CF'
        end
        object Sctvarlabel79: TSctvarlabel
          Left = 392
          Top = 11
          Width = 59
          Height = 17
          AlignHorizontal = laRight
          DataFormat.SuppressNulls = True
          Caption = 'Or'#231'amento'
        end
        object SctLblAcrescimo: TSctvarlabel
          Left = 330
          Top = -4
          Width = 59
          Height = 32
          AlignHorizontal = laRight
          WrapText = True
          DataFormat.SuppressNulls = True
          Caption = 'Juros Multa'
        end
      end
      object SctGrpEstado: TSctBand
        Left = 0
        Top = 126
        Width = 786
        Height = 20
        Color = 15987699
        BandName = 'SctGrpEstado'
        Updatelevel = SctLevel13
        NewPageRepeat = True
        OnBeforePrint = SctGrpEstadoBeforePrint
        object Sctvarlabel40: TSctvarlabel
          Left = 0
          Top = 1
          Width = 74
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Caption = 'Vencimento:'
        end
        object Sctvarlabel48: TSctvarlabel
          Left = 75
          Top = 1
          Width = 104
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
          Variable = adodsreceberDt_VencimentoVar
          DataFormat.DisplayFormat = 'dd/mm/yyyy'
        end
        object SctVarAtraso: TSctvarlabel
          Left = 212
          Top = 1
          Width = 126
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
          Caption = 'Atraso'
        end
      end
      object SctGrpFtEstado: TSctBand
        Left = 0
        Top = 195
        Width = 786
        Height = 22
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
          Left = 212
          Top = 2
          Width = 524
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
          Left = 223
          Top = 5
          Width = 103
          Height = 17
          AlignHorizontal = laRight
          Caption = 'Total do Vencimento:'
        end
        object SctTotalvarLabel35: TSctTotalvarLabel
          Left = 464
          Top = 5
          Width = 39
          Height = 17
          TotalVariable = TotalOfVl_Parcela1
          TotalType = ttCount
          DataFormat.DisplayFormat = '(#,###)'
          DataFormat.Digits = 0
          AlignHorizontal = laLeft
        end
        object SctTotVencimento: TSctTotalvarLabel
          Left = 330
          Top = 5
          Width = 59
          Height = 17
          TotalVariable = TotalOfVl_Acrescimo
          DataFormat.DisplayFormat = '#,##0.00'
          DataFormat.SuppressNulls = True
        end
      end
    end
  end
  object ADODsRecebido: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    OnCalcFields = ADODsRecebidoCalcFields
    CommandText = 'select distinct'#13#10'  A.Cd_Filial, A.Nr_Receber, A.Nr_Parcela, B.Dt_Vencimento, B.Vl_Parcela,'#13#10'  Cast( C.Cd_Emitente as VarChar( 7 ) ) + '''' - '''' + D.Nm_Emitente as Dp_Emitente,'#13#10'  D.Nm_Fantasia, D.Nr_Documento, D.Ds_EMailCob,'#13#10'  A.Dt_Lancamento, O.Nr_Orcamento, O.Nr_Fatura, O.Nr_ECF, C.Ds_Receber,'#13#10'  Cast( 0 as Numeric( 12, 2 ) ) as Vl_Recebido,'#13#10'  Cast( 0 as Numeric( 12, 2 ) ) as Vl_Pagamento,'#13#10'  Cast( 0 as Numeric( 12, 2 ) ) as Vl_Juros,'#13#10'  Cast( 0 as Numeric( 12, 2 ) ) as Vl_Multa,'#13#10'  Cast( 0 as Numeric( 12, 2 ) ) as Vl_Credito,'#13#10'  Cast( 0 as Numeric( 12, 2 ) ) as Vl_Abatimento,'#13#10'  Cast( 0 as Numeric( 12, 2 ) ) as Vl_Desconto,'#13#10'  Cast( 0 as Numeric( 12, 2 ) ) as Vl_Debito,'#13#10'  Cast( 0 as Numeric( 12, 2 ) ) as Vl_OldRecebido'#13#10#13#10'into'#13#10'  #recebidotmp'#13#10'  '#13#10'from'#13#10'  Receber_Historico A'#13#10#13#10'inner join'#13#10'  Receber_Parcela B'#13#10'on'#13#10'  B.Cd_Filial  = A.Cd_Filial and'#13#10'  B.Nr_Receber = A.Nr_Receber and'#13#10'  B.Nr_Parcela = A.Nr_Parcela'#13#10'inner join'#13#10'  Receber C'#13#10'on'#13#10'  C.Cd_Filial  = A.Cd_Filial and'#13#10'  C.Nr_Receber = A.Nr_Receber'#13#10'  and C.St_Receber >= ''''2'''#13#10'  and C.St_Receber <= ''''3'''#13#10'inner join'#13#10'  Emitente D'#13#10'on'#13#10'  D.Cd_Emitente = C.Cd_Emitente'#13#10'left join'#13#10'  Orcamento O'#13#10'on'#13#10'  O.Cd_Filial    = C.Cd_Filial and'#13#10'  O.Nr_Orcamento = C.Nr_Orcamento'#13#10'where'#13#10'  A.Cd_Filial = 1 and'#13#10'  A.Dt_Lancamento >= ''''05/01/2009'''' and'#13#10'  A.Dt_Lancamento < ''''05/05/2009'''' and'#13#10'  A.Tp_Lancamento >= ''''2'''#13#10#13#10'select'#13#10'  R.Nr_Receber, Nr_Parcela, Dt_Vencimento, Vl_Parcela, Vl_Recebido, Dp_Emitente,'#13#10'  Dt_Lancamento, Vl_Pagamento, Vl_Juros, Vl_Multa, Vl_Credito, Vl_Abatimento,'#13#10'  Nm_Fantasia, Nr_Documento, Ds_EMailCob, Ds_Receber,'#13#10'  Vl_Desconto, Vl_Debito, Nr_Orcamento,'#13#10'     Cast( Nr_Receber as VarChar( 7 )  ) + ''''/'''' +'#13#10'     dbo.IntToStrZero( Nr_Parcela, 2 ) as Dp_Receber,'#13#10'  Vl_OldRecebido, Nr_Fatura, Nr_ECF'#13#10#13#10'from'#13#10'  #RecebidoTMP R'#13#10#13#10'order by'#13#10'  Dt_Lancamento, Nr_Receber, Nr_Parcela'#13#10
    Parameters = <>
    SQLOther0.Strings = (
      'select'
      '  R.Cd_Filial, R.Nr_Receber, Nr_Parcela, Dt_Vencimento, Vl_Parcela, Vl_Recebido, Dp_Emitente,'
      '  Dt_Lancamento, Vl_Pagamento, Vl_Juros, Vl_Multa, Vl_Credito, Vl_Abatimento,'
      '  Nm_Fantasia, Nr_Documento, Ds_EMailCob, Ds_Receber,'
      '  Vl_Desconto, Vl_Debito, Nr_Orcamento, Nr_Fatura, Nr_ECF,'
      '     Cast( Nr_Receber as VarChar( 6 )  ) + ''''/'''' + dbo.IntToStrZero( Nr_Parcela, 2 ) as Dp_Receber,'
      '  Vl_OldRecebido'
      ''
      'from'
      '  #RecebidoTMP R'
      ''
      'order by'
      '  Dt_Lancamento, Nr_Receber, Nr_Parcela'
    )
    SQLOther1.Strings = (
      'select distinct'
      '  A.Nr_Pagar, A.Nr_Parcela, B.Dt_Vencimento, B.Vl_Parcela,'
      '  Cast( C.Cd_Emitente as VarChar( 6 ) ) + '''' - '''' + D.Nm_Emitente as Dp_Emitente,'
      '  D.Nm_Fantasia, D.Nr_Documento,'
      '  RH.Dt_Lancamento,'
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
      '  /* Fl_EMailCob */'
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
      '     Convert( VarChar( 5 ), Nr_Pagar ) + ''''/'''' +'
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
    Left = 510
    Top = 53
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
      Size = 11
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
      Size = 60
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
    object ADODsRecebidoNr_Fatura: TIntegerField
      FieldName = 'Nr_Fatura'
    end
    object ADODsRecebidoNr_ECF: TIntegerField
      FieldName = 'Nr_ECF'
    end
    object ADODsRecebidoDp_Fatura: TStringField
      FieldKind = fkCalculated
      FieldName = 'Dp_Fatura'
      Calculated = True
    end
    object ADODsRecebidoNm_Fantasia: TStringField
      FieldName = 'Nm_Fantasia'
      Size = 30
    end
    object ADODsRecebidoNr_Documento: TStringField
      FieldName = 'Nr_Documento'
      Size = 14
    end
    object ADODsRecebidoDs_EMailCob: TStringField
      FieldName = 'Ds_EMailCob'
      Size = 150
    end
    object ADODsRecebidoDp_EmiRecebido: TStringField
      FieldKind = fkCalculated
      FieldName = 'Dp_EmiRecebido'
      Size = 250
      Calculated = True
    end
    object ADODsRecebidoDs_Receber: TStringField
      FieldName = 'Ds_Receber'
      Size = 40
    end
  end
  object DsRecebido: TDataSource
    DataSet = ADODsRecebido
    Left = 480
    Top = 53
  end
  object DsReceber: TDataSource
    DataSet = ADODsReceber
    Left = 579
    Top = 52
  end
  object ADODsReceber: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    OnCalcFields = ADODsReceberCalcFields
    CommandText = 'select'#13#10'  A.Nr_Receber, A.Nr_Parcela, A.Dt_Vencimento, A.Vl_Parcela, O.Nr_Fatura, P.Pr_TaxaJuros, P.Pr_Multa,'#13#10'  Cast( B.Cd_Emitente as VarChar( 7 ) ) + '''' - '''' + D.Nm_Emitente as Dp_Emitente,'#13#10'  sum( C.Vl_Lancamento ) as Vl_Recebido, sum( RHAbat.Vl_Lancamento ) as Vl_Desconto,'#13#10'  O.Nr_Orcamento, O.Nr_ECF, B.Ds_Receber,'#13#10'  Cast( A.Nr_Receber as VarChar( 7 ) ) + ''''/'''' + dbo.IntToStrZero( A.Nr_Parcela, 2 ) as Dp_Receber'#13#10#13#10'from'#13#10'  Receber_Parcela A'#13#10#13#10'inner join'#13#10'  Receber B'#13#10'on'#13#10'  B.Cd_Filial  = A.Cd_Filial and'#13#10'  B.Nr_Receber = A.Nr_Receber and'#13#10'  B.St_Receber <= ''''2'''#13#10#13#10'inner join'#13#10'  Portador P'#13#10'on'#13#10'  P.Cd_Portador = A.Cd_Portador'#13#10#13#10'inner join'#13#10'  Emitente D'#13#10'on'#13#10'  D.Cd_Emitente = B.Cd_Emitente'#13#10#13#10'left join'#13#10'  Receber_Historico C'#13#10'on'#13#10'  C.Cd_Filial     = A.Cd_Filial and'#13#10'  C.Nr_Receber    = A.Nr_Receber and'#13#10'  C.Nr_Parcela    = A.Nr_Parcela and'#13#10'  C.Tp_Lancamento >= ''''2'''#13#10#13#10'left join'#13#10'  Receber_Historico RHAbat'#13#10'on'#13#10'  RHAbat.Cd_Filial     = A.Cd_Filial and'#13#10'  RHAbat.Nr_Receber    = A.Nr_Receber and'#13#10'  RHAbat.Nr_Parcela    = A.Nr_Parcela and'#13#10'  RHAbat.Tp_Lancamento >= ''''6'''' and'#13#10'  RHAbat.Tp_Lancamento <= ''''8'''' '#13#10#13#10'left join'#13#10'  Orcamento O'#13#10'on'#13#10'  O.Cd_Filial    = B.Cd_Filial and'#13#10'  O.Nr_Orcamento = B.Nr_Orcamento'#13#10#13#10'where'#13#10'  A.Cd_Filial      = :Cd_Filial and'#13#10'  A.Dt_Vencimento >= ''''09/08/2004'''' and'#13#10'  A.Dt_Vencimento < ''''09/09/2014'''#13#10'group by'#13#10'  A.Nr_Receber, A.Nr_Parcela, A.Dt_Vencimento, A.Vl_Parcela, O.Nr_Fatura, P.Pr_TaxaJuros, P.Pr_Multa,'#13#10'  Cast( B.Cd_Emitente as VarChar( 7 ) ) + '''' - '''' + D.Nm_Emitente, B.Ds_Receber,'#13#10'  O.Nr_Orcamento, O.Nr_ECF'#13#10#13#10'having'#13#10'  A.Vl_Parcela >'#13#10'  ( case when sum( C.Vl_Lancamento ) is null then 0.0 else sum( C.Vl_Lancamento ) end )'#13#10#13#10'order by'#13#10'  A.Dt_Vencimento, A.Nr_Receber, A.Nr_Parcela'
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
      '  A.Nr_Receber, A.Nr_Parcela, A.Dt_Vencimento, A.Vl_Parcela, O.Nr_Fatura, P.Pr_TaxaJuros, P.Pr_Multa,'
      '  Cast( B.Cd_Emitente as VarChar( 7 ) ) + '''' - '''' + D.Nm_Emitente as Dp_Emitente,'
      '  sum( C.Vl_Lancamento ) as Vl_Recebido, sum( RHAbat.Vl_Lancamento ) as Vl_Desconto,'
      '  O.Nr_Orcamento, O.Nr_ECF, B.Ds_Receber,'
      '  Cast( A.Nr_Receber as VarChar( 7 ) ) + ''''/'''' + dbo.IntToStrZero( A.Nr_Parcela, 2 ) as Dp_Receber'
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
      '  Portador P'
      'on'
      '  P.Cd_Portador = A.Cd_Portador'
      '  '
      'inner join'
      '  Emitente D'
      'on'
      '  D.Cd_Emitente = B.Cd_Emitente'
      '  /* Cd_Grupo */'
      '  /* Cd_SubGrupo */'
      '  /* Fl_EMailCob */'
      ''
      'left join'
      '  Receber_Historico C'
      'on'
      '  C.Cd_Filial     = A.Cd_Filial and'
      '  C.Nr_Receber    = A.Nr_Receber and'
      '  C.Nr_Parcela    = A.Nr_Parcela and'
      '  C.Tp_Lancamento = ''''2'''
      ''
      'left join'
      '  Receber_Historico RHAbat'
      'on'
      '  RHAbat.Cd_Filial     = A.Cd_Filial and'
      '  RHAbat.Nr_Receber    = A.Nr_Receber and'
      '  RHAbat.Nr_Parcela    = A.Nr_Parcela and'
      '  RHAbat.Tp_Lancamento >= ''''6'''' and'
      '  RHAbat.Tp_Lancamento <= ''''8'''' '
      ''
      'left join'
      '  Orcamento O'
      'on'
      '  O.Cd_Filial    = B.Cd_Filial and'
      '  O.Nr_Orcamento = B.Nr_Orcamento'
      ''
      'where'
      '  A.Cd_Filial      = :Cd_Filial and'
      '  A.Dt_Vencimento >= @Dt_Start and'
      '  A.Dt_Vencimento < @Dt_End'
    )
    SQLOther3.Strings = (
      'group by'
      '  A.Nr_Receber, A.Nr_Parcela, A.Dt_Vencimento, A.Vl_Parcela, O.Nr_Fatura, P.Pr_TaxaJuros, P.Pr_Multa,'
      '  Cast( B.Cd_Emitente as VarChar( 7 ) ) + '''' - '''' + D.Nm_Emitente, B.Ds_Receber,'
      '  O.Nr_Orcamento, O.Nr_ECF'
      ''
      'having'
      '  A.Vl_Parcela >'
      '  ( case when sum( C.Vl_Lancamento ) is null then 0.0 else sum( C.Vl_Lancamento ) end )'
      ''
      'order by'
      '  A.Dt_Vencimento, A.Nr_Receber, A.Nr_Parcela'
    )
    Left = 610
    Top = 52
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
      Size = 61
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
      Size = 11
    end
    object ADODsReceberVl_Recebido: TBCDField
      FieldName = 'Vl_Recebido'
      ReadOnly = True
      Precision = 19
    end
    object ADODsRecebernr_fatura: TIntegerField
      FieldName = 'nr_fatura'
    end
    object ADODsReceberNr_Orcamento: TIntegerField
      FieldName = 'Nr_Orcamento'
    end
    object ADODsReceberVl_Desconto: TBCDField
      FieldName = 'Vl_Desconto'
      ReadOnly = True
      Precision = 32
      Size = 2
    end
    object ADODsReceberNr_ECF: TIntegerField
      FieldName = 'Nr_ECF'
    end
    object ADODsReceberDp_Fatura: TStringField
      FieldKind = fkCalculated
      FieldName = 'Dp_Fatura'
      Calculated = True
    end
    object ADODsReceberPr_TaxaJuros: TBCDField
      FieldName = 'Pr_TaxaJuros'
      Precision = 9
      Size = 2
    end
    object ADODsReceberPr_Multa: TBCDField
      FieldName = 'Pr_Multa'
      Precision = 7
      Size = 2
    end
    object ADODsReceberVl_Acrescimo: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Vl_Acrescimo'
      Calculated = True
    end
    object ADODsReceberVl_Zerado: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Vl_Zerado'
      Calculated = True
    end
    object ADODsReceberDs_Receber: TStringField
      FieldName = 'Ds_Receber'
      Size = 40
    end
    object ADODsReceberDp_EmiReceber: TStringField
      FieldKind = fkCalculated
      FieldName = 'Dp_EmiReceber'
      Size = 120
      Calculated = True
    end
  end
  object ADOCmdRecebido: TMultADOCMD
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLOther0.Strings = (
      'if not Object_ID( ''''TempDB..#RecebidoTMP'''' ) is null'
      '  drop table #RecebidoTMP'
    )
    SQLOther1.Strings = (
      'select distinct'
      '  A.Cd_Filial, A.Nr_Receber, A.Nr_Parcela, B.Dt_Vencimento, B.Vl_Parcela,'
      '  Cast( C.Cd_Emitente as VarChar( 7 ) ) + '''' - '''' + D.Nm_Emitente as Dp_Emitente,'
      '  D.Nm_Fantasia, D.Nr_Documento, D.Ds_EMailCob, C.Ds_Receber,'
      '  A.Dt_Lancamento, O.Nr_Orcamento, O.Nr_Fatura, O.Nr_ECF,'
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
      'into'
      '  #RecebidoTMP'
      '  '
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
      '    ),'
      '  Vl_OldRecebido ='
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
      '      A.Dt_Lancamento < #RecebidoTMP.Dt_Lancamento'
      '    )'
    )
    Left = 540
    Top = 53
  end
  object DsEmissao: TDataSource
    DataSet = ADODsEmissao
    Left = 400
    Top = 48
  end
  object ADODsEmissao: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    OnCalcFields = ADODsEmissaoCalcFields
    CommandText = 'select'#13#10'  A.Nr_Receber, A.Nr_Parcela, A.Dt_Vencimento, A.Vl_Parcela, O.Nr_Fatura,'#13#10'  B.Cd_Emitente, D.Nm_Emitente, D.Nm_Fantasia, D.Ds_EMailCob,'#13#10'  sum( C.Vl_Lancamento ) as Vl_Recebido, O.Nr_Orcamento,'#13#10'  Cast( A.Nr_Receber as VarChar( 6 ) ) + ''''/'''' +'#13#10'  dbo.IntToStrZero( A.Nr_Parcela, 2 ) as Dp_Receber,'#13#10'  Cast( Cast( B.Dt_Emissao as VarChar( 11 ) ) as SmallDateTime ) as Dt_Emissao,'#13#10'  D.Nr_Documento, O.Nr_ECF, B.St_Receber'#13#10#13#10'from'#13#10'  Receber B'#13#10#13#10'inner join'#13#10'  Receber_Parcela A'#13#10'on'#13#10'  A.Cd_Filial  = B.Cd_Filial and'#13#10'  A.Nr_Receber = B.Nr_Receber '#13#10#13#10'inner join'#13#10'  Emitente D'#13#10'on'#13#10'  D.Cd_Emitente = B.Cd_Emitente'#13#10'  /* Cd_Grupo */'#13#10'  /* Cd_SubGrupo */'#13#10'  /* Fl_EMailCob */'#13#10#13#10'left join'#13#10'  Receber_Historico C'#13#10'on'#13#10'  C.Cd_Filial     = A.Cd_Filial and'#13#10'  C.Nr_Receber    = A.Nr_Receber and'#13#10'  C.Nr_Parcela    = A.Nr_Parcela and'#13#10'  C.Tp_Lancamento >= ''''2'''#13#10#13#10'left join'#13#10'  Orcamento O'#13#10'on'#13#10'  O.Cd_Filial    = B.Cd_Filial and'#13#10'  O.Nr_Orcamento = B.Nr_Orcamento'#13#10#13#10'where'#13#10'  B.Cd_Filial   = :Cd_Filial and'#13#10'  B.Dt_Emissao >= ''''11/01/2010'''' and'#13#10'  B.Dt_Emissao < ''''11/01/2011'''' and'#13#10'  B.St_Receber <= ''''3'''#13#10'group by'#13#10'  A.Nr_Receber, A.Nr_Parcela, A.Dt_Vencimento, A.Vl_Parcela, O.Nr_Fatura,'#13#10'  B.Cd_Emitente, D.Nm_Emitente, D.Nm_Fantasia, D.Ds_EMailCob,'#13#10'  Cast( Cast( B.Dt_Emissao as VarChar( 11 ) ) as SmallDateTime ),'#13#10'  O.Nr_Orcamento, D.Nr_Documento, O.Nr_ECF, B.St_Receber'#13#10#13#10'order by'#13#10'  Cast( Cast( B.Dt_Emissao as VarChar( 11 ) ) as SmallDateTime ), A.Nr_Receber, A.Nr_Parcela'
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
      '  B.Cd_Emitente, D.Nm_Emitente, D.Nm_Fantasia, D.Ds_EMailCob,'
      '  sum( C.Vl_Lancamento ) as Vl_Recebido, O.Nr_Orcamento,'
      '  Cast( A.Nr_Receber as VarChar( 6 ) ) + ''''/'''' +'
      '  dbo.IntToStrZero( A.Nr_Parcela, 2 ) as Dp_Receber,'
      '  Cast( Cast( B.Dt_Emissao as VarChar( 11 ) ) as SmallDateTime ) as Dt_Emissao,'
      '  D.Nr_Documento, O.Nr_ECF, B.St_Receber'
      ''
      'from'
      '  Receber B'
      ''
      'inner join'
      '  Receber_Parcela A'
      'on'
      '  A.Cd_Filial  = B.Cd_Filial and'
      '  A.Nr_Receber = B.Nr_Receber '
      ''
    )
    SQLOther2.Strings = (
      'inner join'
      '  Emitente D'
      'on'
      '  D.Cd_Emitente = B.Cd_Emitente'
      '  /* Cd_Grupo */'
      '  /* Cd_SubGrupo */'
      '  /* Fl_EMailCob */'
      ''
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
      'where'
      '  B.Cd_Filial   = :Cd_Filial and'
      '  B.Dt_Emissao >= @Dt_Start and'
      '  B.Dt_Emissao < @Dt_End'
      '  /* St_Receber */'
      '  '
    )
    SQLOther3.Strings = (
      'group by'
      '  A.Nr_Receber, A.Nr_Parcela, A.Dt_Vencimento, A.Vl_Parcela, O.Nr_Fatura,'
      '  B.Cd_Emitente, D.Nm_Emitente, D.Nm_Fantasia, D.Ds_EMailCob,'
      '  Cast( Cast( B.Dt_Emissao as VarChar( 11 ) ) as SmallDateTime ),'
      '  O.Nr_Orcamento, D.Nr_Documento, O.Nr_ECF, B.St_Receber'
      ''
      'order by'
      '  Cast( Cast( B.Dt_Emissao as VarChar( 11 ) ) as SmallDateTime ), A.Nr_Receber, A.Nr_Parcela'
    )
    Left = 432
    Top = 48
    object ADODsEmissaoNr_Receber: TIntegerField
      FieldName = 'Nr_Receber'
    end
    object ADODsEmissaoNr_Parcela: TSmallintField
      FieldName = 'Nr_Parcela'
    end
    object ADODsEmissaoDt_Vencimento: TDateTimeField
      FieldName = 'Dt_Vencimento'
    end
    object ADODsEmissaoVl_Parcela: TBCDField
      FieldName = 'Vl_Parcela'
      Precision = 12
      Size = 2
    end
    object ADODsEmissaoNr_Fatura: TIntegerField
      FieldName = 'Nr_Fatura'
    end
    object ADODsEmissaoVl_Recebido: TBCDField
      FieldName = 'Vl_Recebido'
      ReadOnly = True
      Precision = 32
      Size = 2
    end
    object ADODsEmissaoDp_Receber: TStringField
      FieldName = 'Dp_Receber'
      ReadOnly = True
      Size = 26
    end
    object ADODsEmissaoDt_Emissao: TDateTimeField
      FieldName = 'Dt_Emissao'
    end
    object ADODsEmissaoVl_Saldo: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Vl_Saldo'
      Calculated = True
    end
    object ADODsEmissaoNr_Orcamento: TIntegerField
      FieldName = 'Nr_Orcamento'
    end
    object ADODsEmissaoNr_Documento: TStringField
      FieldName = 'Nr_Documento'
      Size = 14
    end
    object ADODsEmissaoNr_ECF: TIntegerField
      FieldName = 'Nr_ECF'
    end
    object ADODsEmissaoDp_Fatura: TStringField
      FieldKind = fkCalculated
      FieldName = 'Dp_Fatura'
      Size = 25
      Calculated = True
    end
    object ADODsEmissaoCd_Emitente: TIntegerField
      FieldName = 'Cd_Emitente'
    end
    object ADODsEmissaoNm_Emitente: TStringField
      FieldName = 'Nm_Emitente'
      Size = 50
    end
    object ADODsEmissaoNm_Fantasia: TStringField
      FieldName = 'Nm_Fantasia'
      Size = 30
    end
    object ADODsEmissaoDs_EMailCob: TStringField
      FieldName = 'Ds_EMailCob'
      Size = 150
    end
    object ADODsEmissaoDp_Emitente: TStringField
      FieldKind = fkCalculated
      FieldName = 'Dp_Emitente'
      Size = 220
      Calculated = True
    end
    object ADODsEmissaoSt_Receber: TStringField
      FieldName = 'St_Receber'
      FixedChar = True
      Size = 1
    end
    object ADODsEmissaoDp_Situacao: TStringField
      FieldKind = fkCalculated
      FieldName = 'Dp_Situacao'
      Size = 10
      Calculated = True
    end
  end
  object ADODsCancelada: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    OnCalcFields = ADODsCanceladaCalcFields
    CommandText = 'select'#13#10'  A.Nr_Receber, A.Nr_Parcela, A.Dt_Vencimento, A.Vl_Parcela, O.Nr_Fatura,'#13#10'  Cast( B.Cd_Emitente as VarChar( 6 ) ) + '''' - '''' + D.Nm_Emitente as Dp_Emitente,'#13#10'  Cast( B.Cd_Emitente as VarChar( 6 ) ) + '''' - '''' + D.Nm_Fantasia as Dp_Fantasia,'#13#10'  sum( C.Vl_Lancamento ) as Vl_Recebido, O.Nr_Orcamento, O.Nr_ECF,'#13#10'  Cast( A.Nr_Receber as VarChar( 6 ) ) + ''''/'''' +'#13#10'  dbo.IntToStrZero( A.Nr_Parcela, 2 ) as Dp_Receber,'#13#10'  D.Nr_Documento,'#13#10'   Cast( Cast( B.Dt_Cancelamento as VarChar( 11 ) ) as SmallDateTime ) as Dt_Cancelamento'#13#10#13#10'from'#13#10'  Receber B'#13#10#13#10'inner join'#13#10'  Receber_Parcela A'#13#10'on'#13#10'  A.Cd_Filial  = B.Cd_Filial and'#13#10'  A.Nr_Receber = B.Nr_Receber '#13#10#13#10'inner join'#13#10'  Emitente D'#13#10'on'#13#10'  D.Cd_Emitente = B.Cd_Emitente'#13#10'  /* Cd_Grupo */'#13#10'  /* Cd_SubGrupo */'#13#10'  /* Fl_EMailCob */'#13#10#13#10'left join'#13#10'  Receber_Historico C'#13#10'on'#13#10'  C.Cd_Filial     = A.Cd_Filial and'#13#10'  C.Nr_Receber    = A.Nr_Receber and'#13#10'  C.Nr_Parcela    = A.Nr_Parcela and'#13#10'  C.Tp_Lancamento >= ''''2'''#13#10#13#10'left join'#13#10'  Orcamento O'#13#10'on'#13#10'  O.Cd_Filial    = B.Cd_Filial and'#13#10'  O.Nr_Orcamento = B.Nr_Orcamento'#13#10#13#10'where'#13#10'  B.Cd_Filial   = :Cd_Filial and'#13#10'  B.Dt_Cancelamento >= ''''05/01/2013'''' and'#13#10'  B.Dt_Cancelamento < ''''05/8/2013'''' and'#13#10'  B.St_Receber <= ''''4'''#13#10'group by'#13#10'  A.Nr_Receber, A.Nr_Parcela, A.Dt_Vencimento, A.Vl_Parcela, O.Nr_Fatura,'#13#10'  Cast( B.Cd_Emitente as VarChar( 6 ) ) + '''' - '''' + D.Nm_Emitente,'#13#10'  Cast( B.Cd_Emitente as VarChar( 6 ) ) + '''' - '''' + D.Nm_Fantasia,'#13#10'  O.Nr_Orcamento, O.Nr_ECF, D.Nr_Documento,'#13#10'   Cast( Cast( B.Dt_Cancelamento as VarChar( 11 ) ) as SmallDateTime )'#13#10#13#10'order by'#13#10'   Cast( Cast( B.Dt_Cancelamento as VarChar( 11 ) ) as SmallDateTime ), A.Nr_Receber, A.Nr_Parcela'
    Parameters = <
      item
        Name = 'Cd_Filial'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = nil?
      end>
    SQLOther1.Strings = (
      'select'
      '  A.Nr_Receber, A.Nr_Parcela, A.Dt_Vencimento, A.Vl_Parcela, O.Nr_Fatura,'
      '  Cast( B.Cd_Emitente as VarChar( 6 ) ) + '''' - '''' + D.Nm_Emitente as Dp_Emitente,'
      '  Cast( B.Cd_Emitente as VarChar( 6 ) ) + '''' - '''' + D.Nm_Fantasia as Dp_Fantasia,'
      '  sum( C.Vl_Lancamento ) as Vl_Recebido, O.Nr_Orcamento, O.Nr_ECF,'
      '  Cast( A.Nr_Receber as VarChar( 6 ) ) + ''''/'''' +'
      '  dbo.IntToStrZero( A.Nr_Parcela, 2 ) as Dp_Receber,'
      '  Cast( Cast( B.Dt_Emissao as VarChar( 11 ) ) as SmallDateTime ) as Dt_Emissao,'
      '  D.Nr_Documento,'
      '   Cast( Cast( B.Dt_Cancelamento as VarChar( 11 ) ) as SmallDateTime ) as Dt_Cancelamento'
      ''
      'from'
      '  Receber B'
      ''
      'inner join'
      '  Receber_Parcela A'
      'on'
      '  A.Cd_Filial  = B.Cd_Filial and'
      '  A.Nr_Receber = B.Nr_Receber '
      ''
    )
    SQLOther2.Strings = (
      'inner join'
      '  Emitente D'
      'on'
      '  D.Cd_Emitente = B.Cd_Emitente'
      '  /* Cd_Grupo */'
      '  /* Cd_SubGrupo */'
      '  /* Fl_EMailCob */'
      ''
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
      'where'
      '  B.Cd_Filial   = :Cd_Filial and'
      '  B.Dt_Cancelamento >= @Dt_Start and'
      '  B.Dt_Cancelamento < @Dt_End and'
      '  B.St_Receber <= ''''4'''
    )
    SQLOther3.Strings = (
      'group by'
      '  A.Nr_Receber, A.Nr_Parcela, A.Dt_Vencimento, A.Vl_Parcela, O.Nr_Fatura,'
      '  Cast( B.Cd_Emitente as VarChar( 6 ) ) + '''' - '''' + D.Nm_Emitente,'
      '  Cast( B.Cd_Emitente as VarChar( 6 ) ) + '''' - '''' + D.Nm_Fantasia,'
      '  Cast( Cast( B.Dt_Emissao as VarChar( 11 ) ) as SmallDateTime ),'
      '  O.Nr_Orcamento, D.Nr_Documento, O.Nr_ECF,'
      '   Cast( Cast( B.Dt_Cancelamento as VarChar( 11 ) ) as SmallDateTime )'
      ''
      'order by'
      '   Cast( Cast( B.Dt_Cancelamento as VarChar( 11 ) ) as SmallDateTime ), A.Nr_Receber, A.Nr_Parcela'
    )
    Left = 704
    Top = 48
    object ADODsCanceladaNr_Receber: TIntegerField
      FieldName = 'Nr_Receber'
    end
    object ADODsCanceladaNr_Parcela: TSmallintField
      FieldName = 'Nr_Parcela'
    end
    object ADODsCanceladaDt_Vencimento: TDateTimeField
      FieldName = 'Dt_Vencimento'
    end
    object ADODsCanceladaVl_Parcela: TBCDField
      FieldName = 'Vl_Parcela'
      Precision = 12
      Size = 2
    end
    object ADODsCanceladaNr_Fatura: TIntegerField
      FieldName = 'Nr_Fatura'
    end
    object ADODsCanceladaDp_Emitente: TStringField
      FieldName = 'Dp_Emitente'
      ReadOnly = True
      Size = 59
    end
    object ADODsCanceladaDp_Fantasia: TStringField
      FieldName = 'Dp_Fantasia'
      ReadOnly = True
      Size = 39
    end
    object ADODsCanceladaVl_Recebido: TBCDField
      FieldName = 'Vl_Recebido'
      ReadOnly = True
      Precision = 32
      Size = 2
    end
    object ADODsCanceladaNr_Orcamento: TIntegerField
      FieldName = 'Nr_Orcamento'
    end
    object ADODsCanceladaDp_Receber: TStringField
      FieldName = 'Dp_Receber'
      ReadOnly = True
      Size = 27
    end
    object ADODsCanceladaNr_Documento: TStringField
      FieldName = 'Nr_Documento'
      Size = 14
    end
    object ADODsCanceladaDt_Cancelamento: TDateTimeField
      FieldName = 'Dt_Cancelamento'
      ReadOnly = True
    end
    object ADODsCanceladaVl_Saldo: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Vl_Saldo'
      Calculated = True
    end
    object ADODsCanceladaNr_ECF: TIntegerField
      FieldName = 'Nr_ECF'
    end
    object ADODsCanceladaDp_Fatura: TStringField
      FieldKind = fkCalculated
      FieldName = 'Dp_Fatura'
      Calculated = True
    end
  end
  object DsCancelada: TDataSource
    DataSet = ADODsCancelada
    Left = 672
    Top = 48
  end
end
