object FrmPagar_Report: TFrmPagar_Report
  Left = 431
  Top = 245
  ActiveControl = EdtDt_End
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'FrmPagar_Report'
  ClientHeight = 285
  ClientWidth = 727
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
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 706
    Height = 285
    Align = alClient
    ParentColor = True
    TabOrder = 3
    ExplicitWidth = 988
    ExplicitHeight = 572
    object BvlSeparator: TBevel
      Left = 1
      Top = 255
      Width = 697
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
      Hint = 'Seleciona Fornecedor'
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
      Width = 57
      Height = 13
      Caption = 'Fornecedor:'
    end
    object SbPortador: TSpeedButton
      Left = 45
      Top = 159
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
      Top = 145
      Width = 43
      Height = 13
      Caption = 'Portador:'
    end
    object Label7: TLabel
      Left = 5
      Top = 74
      Width = 97
      Height = 13
      Caption = 'Grupo de Aplica'#231#227'o:'
    end
    object SbGrupo: TSpeedButton
      Left = 45
      Top = 88
      Width = 23
      Height = 19
      Hint = 'Seleciona Grupo de Aplica'#231#227'o'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbGrupoClick
    end
    object Label9: TLabel
      Left = 5
      Top = 111
      Width = 116
      Height = 13
      Caption = 'SubGrupo de Aplica'#231#227'o:'
    end
    object SbSubGrupo: TSpeedButton
      Left = 45
      Top = 125
      Width = 23
      Height = 19
      Hint = 'Seleciona SubGrupo de Aplica'#231#227'o'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbSubGrupoClick
    end
    object BitBtnReport: TBitBtn
      Left = 532
      Top = 258
      Width = 85
      Height = 25
      Caption = '&Imprimir'
      TabOrder = 10
      OnClick = BitBtnReportClick
      Glyph.Data = {binary 890 bytes}
    end
    object BitBtnCancel: TBitBtn
      Left = 618
      Top = 258
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 11
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
      TabOrder = 2
      OnExit = EdtCd_EmitenteExit
      OnKeyDown = EdtCd_EmitenteKeyDown
    end
    object EdtNm_Emitente: TEdit
      Left = 78
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
      TabOrder = 3
    end
    object EdtCd_Portador: TCurrencyEdit
      Tag = 4
      Left = 5
      Top = 159
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 8
      OnExit = EdtCd_PortadorExit
      OnKeyDown = EdtCd_EmitenteKeyDown
    end
    object EdtNm_Portador: TEdit
      Left = 69
      Top = 159
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
      TabOrder = 9
    end
    object EdtCd_Grupo: TCurrencyEdit
      Tag = 2
      Left = 5
      Top = 88
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 4
      OnExit = EdtCd_GrupoExit
      OnKeyDown = EdtCd_EmitenteKeyDown
    end
    object EdtNm_Grupo: TEdit
      Left = 69
      Top = 88
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
      TabOrder = 5
    end
    object EdtCd_SubGrupo: TCurrencyEdit
      Tag = 3
      Left = 5
      Top = 125
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 6
      OnExit = EdtCd_SubGrupoExit
      OnKeyDown = EdtCd_EmitenteKeyDown
    end
    object EdtNm_SubGrupo: TEdit
      Left = 69
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
      TabOrder = 7
    end
    object SctRepEmissao: TSctReport
      Left = 84
      Top = 63
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
      TabOrder = 12
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
      MTop = 63
      MLeft = 84
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
        object SctDataSourceGuide6: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = DsEmissao
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
        object DataSourceGuide16: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = DsPago
        end
        object DataSourceGuide19: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = DsPagar
        end
        object adodsemissaoDt_VencimentoVar2: TSctDBVar
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
        object adodsemissaoVl_ParcelaVar2: TSctDBVar
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
        object adodsemissaoDp_EmitenteVar2: TSctDBVar
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
        object adodsemissaoDp_PagarVar2: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_Pagar'
          DataSource = DsEmissao
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsemissaoDt_EmissaoVar2: TSctDBVar
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
        object adodsemissaoVl_SaldoVar2: TSctDBVar
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
        object adodsemissaoVl_PagoVar2: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Vl_Pago'
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
          Variable = adodsemissaoVl_ParcelaVar2
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidTotalVar
        end
        object TotalOfVl_Saldo2: TSctTotalvar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Variable = adodsemissaoVl_SaldoVar2
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidTotalVar
        end
        object TotalOfVl_Pago2: TSctTotalvar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Variable = adodsemissaoVl_PagoVar2
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidTotalVar
        end
        object adodsemissaoDs_PagarVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ds_Pagar'
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
          CreateVariables = True
          UpdateLevel = SctLevel3
          DataSource = DmMaster.DsConexao
        end
        object DataSourceGuide25: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = True
          UpdateLevel = SctLevel3
          DataSource = DmMaster.DsConecadoMes
        end
        object adodsconexaoNm_BancoVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nm_Banco'
          DataSource = DmMaster.DsConexao
          UpdateLevel = SctLevel3
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsconexaoHr_LoginVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Hr_Login'
          DataSource = DmMaster.DsConexao
          UpdateLevel = SctLevel3
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsconexaoNr_TransacoesAbertasVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_TransacoesAbertas'
          DataSource = DmMaster.DsConexao
          UpdateLevel = SctLevel3
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsconexaoNt_UsuarioVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nt_Usuario'
          DataSource = DmMaster.DsConexao
          UpdateLevel = SctLevel3
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsconexaoNm_EstacaoTrabalhoVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nm_EstacaoTrabalho'
          DataSource = DmMaster.DsConexao
          UpdateLevel = SctLevel3
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsconexaoNm_AplicacaoVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nm_Aplicacao'
          DataSource = DmMaster.DsConexao
          UpdateLevel = SctLevel3
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsconexaoStatusVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Status'
          DataSource = DmMaster.DsConexao
          UpdateLevel = SctLevel3
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsconexaoDs_ComandoVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ds_Comando'
          DataSource = DmMaster.DsConexao
          UpdateLevel = SctLevel3
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsconexaoLoginameVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Loginame'
          DataSource = DmMaster.DsConexao
          UpdateLevel = SctLevel3
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsconexaospidVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'spid'
          DataSource = DmMaster.DsConexao
          UpdateLevel = SctLevel3
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsconexaoNet_AddressVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Net_Address'
          DataSource = DmMaster.DsConexao
          UpdateLevel = SctLevel3
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsconexaoNr_VersaoVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_Versao'
          DataSource = DmMaster.DsConexao
          UpdateLevel = SctLevel3
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsconectadomesNm_HostVar2: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nm_Host'
          DataSource = DmMaster.DsConecadoMes
          UpdateLevel = SctLevel3
          AutoVar = True
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
            Caption = 'Contas '#224' Pagar por Data de Emiss'#227'o'
          end
          object Sctvarlabel56: TSctvarlabel
            Left = 633
            Top = 1
            Width = 34
            Height = 17
            Caption = 'Data:'
          end
          object Sctvarlabel57: TSctvarlabel
            Left = 671
            Top = 1
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = SctDateTimeVar1
            DataFormat.DisplayFormat = 'dd/mm/yyyy'
          end
          object Sctvarlabel58: TSctvarlabel
            Left = 633
            Top = 19
            Width = 34
            Height = 17
            Caption = 'Hora:'
          end
          object Sctvarlabel59: TSctvarlabel
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
          Updatelevel = SctLevel3
          Stretch = True
          object Sctvarlabel60: TSctvarlabel
            Left = 0
            Top = 1
            Width = 58
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsemissaoDp_PagarVar2
          end
          object Sctvarlabel61: TSctvarlabel
            Left = 62
            Top = -1
            Width = 242
            Height = 17
            WrapText = True
            Stretch = True
            Variable = adodsemissaoDp_EmitenteVar2
          end
          object Sctvarlabel62: TSctvarlabel
            Left = 666
            Top = 1
            Width = 70
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsemissaoVl_SaldoVar2
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.SuppressNulls = True
            DataFormat.Digits = 2
          end
          object Sctvarlabel63: TSctvarlabel
            Left = 590
            Top = 1
            Width = 70
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsemissaoVl_PagoVar2
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.SuppressNulls = True
            DataFormat.Digits = 2
          end
          object Sctvarlabel64: TSctvarlabel
            Left = 515
            Top = 1
            Width = 70
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsemissaoVl_ParcelaVar2
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.SuppressNulls = True
            DataFormat.Digits = 2
          end
          object Sctvarlabel77: TSctvarlabel
            Left = 448
            Top = 1
            Width = 63
            Height = 17
            AlignHorizontal = laCenter
            Variable = adodsemissaoDt_VencimentoVar2
            DataFormat.DisplayFormat = 'dd/mm/yyyy'
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel82: TSctvarlabel
            Left = 304
            Top = -1
            Width = 142
            Height = 17
            WrapText = True
            Stretch = True
            Variable = adodsemissaoDs_PagarVar
          end
        end
        object SctBand4: TSctBand
          Left = 0
          Top = 220
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
          object Sctvarlabel66: TSctvarlabel
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
          object Sctvarlabel67: TSctvarlabel
            Left = 655
            Top = 4
            Width = 45
            Height = 17
            AlignHorizontal = laRight
            Caption = 'P'#225'gina:'
          end
          object Sctvarlabel68: TSctvarlabel
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
          Updatelevel = SctLevel5
          object SctLine13: TSctLine
            Left = 390
            Top = 2
            Width = 346
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
            TotalVariable = TotalOfVl_Pago2
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
          object Sctvarlabel69: TSctvarlabel
            Left = 408
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
        end
        object SctSubBand1: TSctSubBand
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
          Updatelevel = SctLevel2
          Band = SctBand2
          Above = False
          object Sctvarlabel70: TSctvarlabel
            Left = 0
            Top = 1
            Width = 58
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Pagar'
          end
          object Sctvarlabel71: TSctvarlabel
            Left = 63
            Top = 1
            Width = 65
            Height = 17
            Caption = 'Fornecedor'
          end
          object Sctvarlabel72: TSctvarlabel
            Left = 666
            Top = 1
            Width = 70
            Height = 17
            AlignHorizontal = laRight
            DataFormat.SuppressNulls = True
            Caption = 'Saldo'
          end
          object Sctvarlabel73: TSctvarlabel
            Left = 590
            Top = 1
            Width = 70
            Height = 17
            AlignHorizontal = laRight
            DataFormat.SuppressNulls = True
            Caption = 'Pago'
          end
          object Sctvarlabel74: TSctvarlabel
            Left = 515
            Top = 1
            Width = 70
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
          object Sctvarlabel76: TSctvarlabel
            Left = 448
            Top = 1
            Width = 63
            Height = 17
            AlignHorizontal = laCenter
            DataFormat.SuppressNulls = True
            Caption = 'Vencimento'
          end
          object Sctvarlabel81: TSctvarlabel
            Left = 304
            Top = 0
            Width = 65
            Height = 17
            Caption = 'Descritivo'
          end
        end
        object SctBand6: TSctBand
          Left = 0
          Top = 115
          Width = 786
          Height = 19
          Color = 15987699
          BandName = 'SctGrpEstado'
          Updatelevel = SctLevel6
          object Sctvarlabel78: TSctvarlabel
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
          object Sctvarlabel79: TSctvarlabel
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
            Variable = adodsemissaoDt_EmissaoVar2
            DataFormat.DisplayFormat = 'dd/mm/yyyy'
          end
        end
        object SctBand7: TSctBand
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
          Updatelevel = SctLevel7
          object SctLine15: TSctLine
            Left = 390
            Top = 2
            Width = 346
            Height = 5
            AlignVertical = laTop
          end
          object SctTotalvarLabel27: TSctTotalvarLabel
            Left = 515
            Top = 5
            Width = 70
            Height = 17
            TotalVariable = TotalOfVl_Parcela2
            DataFormat.DisplayFormat = '#,##0.00'
          end
          object SctTotalvarLabel28: TSctTotalvarLabel
            Left = 590
            Top = 5
            Width = 70
            Height = 17
            TotalVariable = TotalOfVl_Pago2
            DataFormat.DisplayFormat = '#,##0.00'
          end
          object SctTotalvarLabel29: TSctTotalvarLabel
            Left = 666
            Top = 5
            Width = 70
            Height = 17
            TotalVariable = TotalOfVl_Saldo2
            DataFormat.DisplayFormat = '#,##0.00'
          end
          object Sctvarlabel80: TSctvarlabel
            Left = 408
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
        end
      end
    end
  end
  object PnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 21
    Height = 285
    Align = alLeft
    TabOrder = 2
    ExplicitHeight = 572
  end
  object SctRepPago: TSctReport
    Left = 226
    Top = 5
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
    MTop = 5
    MLeft = 226
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
      Description = 'Contas Pagas'
      CloseDataSet = False
      DataRange = drAllRecords
      OmitLastPgFt = False
      Head = ReportHeaderBand
      Detail = DetailBand
      Foot = ReportFooterBand
      PageHead = PageHeaderBand
      PageFoot = PageFooterBand
      DataSource = DsPago
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
        DataSource = DsPago
      end
      object Group: TSctGroup
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        Header = GroupHeader
        Footer = GroupFooter
        Variable = adodspagoDt_LancamentoVar
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
        DataSource = DsPagar
      end
      object adodspagoVl_PagoVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Vl_Pago'
        DataSource = DsPago
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodspagoDp_PagarVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Dp_Pagar'
        DataSource = DsPago
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodspagoDt_VencimentoVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Dt_Vencimento'
        DataSource = DsPago
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodspagoVl_ParcelaVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Vl_Parcela'
        DataSource = DsPago
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodspagoDp_EmitenteVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Dp_Emitente'
        DataSource = DsPago
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodspagoDt_LancamentoVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Dt_Lancamento'
        DataSource = DsPago
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodspagoVl_JurosVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Vl_Juros'
        DataSource = DsPago
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodspagoVl_MultaVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Vl_Multa'
        DataSource = DsPago
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodspagoVl_CreditoVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Vl_Credito'
        DataSource = DsPago
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodspagoVl_AbatimentoVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Vl_Abatimento'
        DataSource = DsPago
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodspagoVl_DescontoVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Vl_Desconto'
        DataSource = DsPago
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodspagoVl_DebitoVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Vl_Debito'
        DataSource = DsPago
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodspagoVl_SaldoVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Vl_Saldo'
        DataSource = DsPago
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object TotalOfVl_Pago: TSctTotalvar
        Left = 112
        Top = 0
        Width = 0
        Height = 0
        Variable = adodspagoVl_PagoVar
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidTotalVar
      end
      object TotalOfVl_Parcela: TSctTotalvar
        Left = 112
        Top = 0
        Width = 0
        Height = 0
        Variable = adodspagoVl_ParcelaVar
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidTotalVar
      end
      object TotalOfVl_Juros: TSctTotalvar
        Left = 112
        Top = 0
        Width = 0
        Height = 0
        Variable = adodspagoVl_JurosVar
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidTotalVar
      end
      object TotalOfVl_Multa: TSctTotalvar
        Left = 112
        Top = 0
        Width = 0
        Height = 0
        Variable = adodspagoVl_MultaVar
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidTotalVar
      end
      object TotalOfVl_Credito: TSctTotalvar
        Left = 112
        Top = 0
        Width = 0
        Height = 0
        Variable = adodspagoVl_CreditoVar
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidTotalVar
      end
      object TotalOfVl_Abatimento: TSctTotalvar
        Left = 112
        Top = 0
        Width = 0
        Height = 0
        Variable = adodspagoVl_AbatimentoVar
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidTotalVar
      end
      object TotalOfVl_Desconto: TSctTotalvar
        Left = 112
        Top = 0
        Width = 0
        Height = 0
        Variable = adodspagoVl_DescontoVar
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidTotalVar
      end
      object TotalOfVl_Debito: TSctTotalvar
        Left = 112
        Top = 0
        Width = 0
        Height = 0
        Variable = adodspagoVl_DebitoVar
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidTotalVar
      end
      object TotalOfVl_Saldo: TSctTotalvar
        Left = 112
        Top = 0
        Width = 0
        Height = 0
        Variable = adodspagoVl_SaldoVar
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidTotalVar
      end
      object adodspagoNr_DocumentoVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Nr_Documento'
        DataSource = DsPago
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
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
      object DataSourceGuide11: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = DetailBandlevel
        DataSource = FrmEmitente_Find.DsFind
      end
      object DataSourceGuide12: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = DetailBandlevel
        DataSource = FrmEmitente_Find.DsContato
      end
      object DataSourceGuide13: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = DetailBandlevel
        DataSource = FrmPortador_Find.DsFind
      end
      object adodspagoVl_OldPagoVar: TSctDBVar
        Left = 113
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Vl_OldPago'
        DataSource = DsPago
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object TotalOfVl_OldPago: TSctTotalvar
        Left = 113
        Top = 0
        Width = 0
        Height = 0
        Variable = adodspagoVl_OldPagoVar
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidTotalVar
      end
      object DataSourceGuide15: TSctDataSourceGuide
        Left = 113
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = DetailBandlevel
        DataSource = DsEmissao
      end
      object adodspagoVl_PagamentoVar: TSctDBVar
        Left = 113
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Vl_Pagamento'
        DataSource = DsPago
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object TotalOfVl_Pagamento: TSctTotalvar
        Left = 113
        Top = 0
        Width = 0
        Height = 0
        Variable = adodspagoVl_PagamentoVar
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidTotalVar
      end
      object DataSourceGuide20: TSctDataSourceGuide
        Left = 113
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = DetailBandlevel
        DataSource = DmMaster.DsConexao
      end
      object DataSourceGuide23: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = True
        UpdateLevel = DetailBandlevel
        DataSource = DmMaster.DsConecadoMes
      end
      object adodsconectadomesNm_HostVar1: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Nm_Host'
        DataSource = DmMaster.DsConecadoMes
        UpdateLevel = DetailBandlevel
        AutoVar = True
        ID = vidAutoDataVar
      end
      object adodspagoDp_EmiPagarVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Dp_EmiPagar'
        DataSource = DsPago
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
          Caption = 'Contas Pagas'
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
        Height = 18
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
          Top = -1
          Width = 242
          Height = 17
          WrapText = True
          Stretch = True
          Variable = adodspagoDp_EmiPagarVar
        end
        object Sctvarlabel28: TSctvarlabel
          Left = 0
          Top = 0
          Width = 58
          Height = 17
          AlignHorizontal = laRight
          Variable = adodspagoDp_PagarVar
        end
        object Sctvarlabel16: TSctvarlabel
          Left = 708
          Top = 0
          Width = 60
          Height = 17
          AlignHorizontal = laRight
          WrapText = True
          Variable = adodspagoVl_CreditoVar
          DataFormat.DisplayFormat = '#,##0.00'
          DataFormat.SuppressNulls = True
          DataFormat.Digits = 2
        end
        object Sctvarlabel17: TSctvarlabel
          Left = 643
          Top = 0
          Width = 60
          Height = 17
          AlignHorizontal = laRight
          Variable = adodspagoVl_MultaVar
          DataFormat.DisplayFormat = '#,##0.00'
          DataFormat.SuppressNulls = True
          DataFormat.Digits = 2
        end
        object Sctvarlabel18: TSctvarlabel
          Left = 579
          Top = 0
          Width = 60
          Height = 17
          AlignHorizontal = laRight
          Variable = adodspagoVl_JurosVar
          DataFormat.DisplayFormat = '#,##0.00'
          DataFormat.SuppressNulls = True
          DataFormat.Digits = 2
        end
        object Sctvarlabel19: TSctvarlabel
          Left = 515
          Top = 0
          Width = 60
          Height = 17
          AlignHorizontal = laRight
          Variable = adodspagoVl_PagamentoVar
          DataFormat.DisplayFormat = '#,##0.00'
          DataFormat.SuppressNulls = True
          DataFormat.Digits = 2
        end
        object Sctvarlabel20: TSctvarlabel
          Left = 450
          Top = 0
          Width = 60
          Height = 17
          AlignHorizontal = laRight
          Variable = adodspagoVl_ParcelaVar
          DataFormat.DisplayFormat = '#,##0.00'
          DataFormat.SuppressNulls = True
          DataFormat.Digits = 2
        end
        object Sctvarlabel21: TSctvarlabel
          Left = 901
          Top = 0
          Width = 60
          Height = 17
          AlignHorizontal = laRight
          WrapText = True
          Variable = adodspagoVl_DebitoVar
          DataFormat.DisplayFormat = '#,##0.00'
          DataFormat.SuppressNulls = True
          DataFormat.Digits = 2
        end
        object Sctvarlabel25: TSctvarlabel
          Left = 837
          Top = 0
          Width = 60
          Height = 17
          AlignHorizontal = laRight
          Variable = adodspagoVl_DescontoVar
          DataFormat.DisplayFormat = '#,##0.00'
          DataFormat.SuppressNulls = True
          DataFormat.Digits = 2
        end
        object Sctvarlabel26: TSctvarlabel
          Left = 773
          Top = 0
          Width = 60
          Height = 17
          AlignHorizontal = laRight
          Variable = adodspagoVl_AbatimentoVar
          DataFormat.DisplayFormat = '#,##0.00'
          DataFormat.SuppressNulls = True
          DataFormat.Digits = 2
        end
        object Sctvarlabel29: TSctvarlabel
          Left = 966
          Top = 0
          Width = 60
          Height = 17
          AlignHorizontal = laRight
          Variable = adodspagoVl_SaldoVar
          DataFormat.DisplayFormat = '#,##0.00'
          DataFormat.Digits = 2
        end
        object Sctvarlabel30: TSctvarlabel
          Left = 386
          Top = 0
          Width = 60
          Height = 17
          AlignHorizontal = laCenter
          Variable = adodspagoDt_VencimentoVar
          DataFormat.DisplayFormat = 'dd/mm/yyyy'
          DataFormat.SuppressNulls = True
        end
        object Sctvarlabel51: TSctvarlabel
          Left = 297
          Top = 0
          Width = 99
          Height = 17
          Variable = adodspagoNr_DocumentoVar
        end
      end
      object PageFooterBand: TSctBand
        Left = 0
        Top = 251
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
          Top = 2
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
          Top = 2
          Width = 45
          Height = 17
          AlignHorizontal = laRight
          Caption = 'P'#225'gina:'
        end
        object Sctvarlabel24: TSctvarlabel
          Left = 990
          Top = 2
          Width = 35
          Height = 17
          AlignHorizontal = laRight
          Variable = svarPage
          DataFormat.DisplayFormat = '#,##0'
        end
      end
      object ReportFooterBand: TSctBand
        Left = 0
        Top = 285
        Width = 1076
        Height = 37
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
          Caption = 'Total Geral Pago:'
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
          Caption = 'Pagar'
        end
        object Sctvarlabel7: TSctvarlabel
          Left = 63
          Top = 15
          Width = 65
          Height = 17
          Caption = 'Fornecedor'
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
        object Sctvarlabel52: TSctvarlabel
          Left = 297
          Top = 15
          Width = 60
          Height = 17
          AlignHorizontal = laCenter
          DataFormat.SuppressNulls = True
          Caption = 'Documento'
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
          Top = 0
          Width = 104
          Height = 17
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
          Top = 0
          Width = 223
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
          Variable = adodspagoDt_LancamentoVar
          DataFormat.DisplayFormat = 'dd/mm/yyyy'
          DataFormat.SuppressNulls = True
        end
      end
      object GroupFooter: TSctBand
        Left = 0
        Top = 199
        Width = 1076
        Height = 37
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
          Top = 2
          Width = 60
          Height = 17
          TotalVariable = TotalOfVl_Parcela
          DataFormat.DisplayFormat = '#,##0.00'
        end
        object SctTotalvarLabel2: TSctTotalvarLabel
          Left = 515
          Top = 2
          Width = 60
          Height = 17
          TotalVariable = TotalOfVl_Pagamento
          DataFormat.DisplayFormat = '#,##0.00'
        end
        object SctTotalvarLabel3: TSctTotalvarLabel
          Left = 579
          Top = 2
          Width = 60
          Height = 17
          TotalVariable = TotalOfVl_Juros
          DataFormat.DisplayFormat = '#,##0.00'
        end
        object SctTotalvarLabel4: TSctTotalvarLabel
          Left = 643
          Top = 2
          Width = 60
          Height = 17
          TotalVariable = TotalOfVl_Multa
          DataFormat.DisplayFormat = '#,##0.00'
        end
        object SctTotalvarLabel5: TSctTotalvarLabel
          Left = 708
          Top = 2
          Width = 60
          Height = 17
          TotalVariable = TotalOfVl_Credito
          DataFormat.DisplayFormat = '#,##0.00'
        end
        object SctTotalvarLabel6: TSctTotalvarLabel
          Left = 773
          Top = 2
          Width = 60
          Height = 17
          TotalVariable = TotalOfVl_Abatimento
          DataFormat.DisplayFormat = '#,##0.00'
        end
        object SctTotalvarLabel7: TSctTotalvarLabel
          Left = 837
          Top = 2
          Width = 60
          Height = 17
          TotalVariable = TotalOfVl_Desconto
          DataFormat.DisplayFormat = '#,##0.00'
        end
        object SctTotalvarLabel8: TSctTotalvarLabel
          Left = 901
          Top = 2
          Width = 60
          Height = 17
          TotalVariable = TotalOfVl_Debito
          DataFormat.DisplayFormat = '#,##0.00'
        end
        object Sctvarlabel33: TSctvarlabel
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
          Top = 19
          Width = 168
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
          AlignHorizontal = laRight
          Caption = 'Total Geral Pago no Dia:'
        end
        object SctVarTotDia: TSctvarlabel
          Left = 515
          Top = 19
          Width = 60
          Height = 17
          AlignHorizontal = laRight
          Caption = '0,00'
        end
        object SctVarSaldoDia: TSctvarlabel
          Left = 966
          Top = 2
          Width = 60
          Height = 17
          AlignHorizontal = laRight
          DataFormat.SuppressNulls = True
          Caption = 'Saldo'
        end
      end
    end
  end
  object SctRepPagar: TSctReport
    Left = 323
    Top = 5
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
    MTop = 5
    MLeft = 323
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
      PageSetup.LeftMargin = 0.2
      PageSetup.RightMargin = 0.2
      PageSetup.TopMargin = 0.3
      PageSetup.BottomMargin = 0.3
      BorderType = btNone
      Description = 'Contas '#224' Pagar'
      CloseDataSet = False
      DataRange = drAllRecords
      OmitLastPgFt = False
      Head = SctBand8
      Detail = SctDetailVendaPeriodo
      Foot = SctBand12
      PageHead = SctBand9
      PageFoot = SctBand11
      DataSource = DsPagar
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
        Variable = adodspagarDt_VencimentoVar
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
        DataSource = DsPago
      end
      object DataSourceGuide4: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = SctLevel10
        DataSource = DsPagar
      end
      object adodspagarDt_VencimentoVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Dt_Vencimento'
        DataSource = DsPagar
        UpdateLevel = SctLevel10
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodspagarVl_ParcelaVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Vl_Parcela'
        DataSource = DsPagar
        UpdateLevel = SctLevel10
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodspagarDp_EmitenteVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Dp_Emitente'
        DataSource = DsPagar
        UpdateLevel = SctLevel10
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodspagarVl_SaldoVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Vl_Saldo'
        DataSource = DsPagar
        UpdateLevel = SctLevel10
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodspagarDp_PagarVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Dp_Pagar'
        DataSource = DsPagar
        UpdateLevel = SctLevel10
        AutoVar = False
        ID = vidAutoDataVar
      end
      object TotalOfVl_Parcela1: TSctTotalvar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        Variable = adodspagarVl_ParcelaVar
        UpdateLevel = SctLevel10
        AutoVar = False
        ID = vidTotalVar
      end
      object TotalOfVl_Saldo1: TSctTotalvar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        Variable = adodspagarVl_SaldoVar
        UpdateLevel = SctLevel10
        AutoVar = False
        ID = vidTotalVar
      end
      object adodspagarVl_PagoVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Vl_Pago'
        DataSource = DsPagar
        UpdateLevel = SctLevel10
        AutoVar = False
        ID = vidAutoDataVar
      end
      object TotalOfVl_Pago1: TSctTotalvar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        Variable = adodspagarVl_PagoVar
        UpdateLevel = SctLevel10
        AutoVar = False
        ID = vidTotalVar
      end
      object adodspagarNr_DocumentoVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Nr_Documento'
        DataSource = DsPagar
        UpdateLevel = SctLevel10
        AutoVar = False
        ID = vidAutoDataVar
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
      object DataSourceGuide8: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = SctLevel10
        DataSource = FrmEmitente_Find.DsFind
      end
      object DataSourceGuide9: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = SctLevel10
        DataSource = FrmEmitente_Find.DsContato
      end
      object DataSourceGuide10: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = SctLevel10
        DataSource = FrmPortador_Find.DsFind
      end
      object DataSourceGuide14: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = SctLevel10
        DataSource = DsEmissao
      end
      object adodspagarDs_PagarVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Ds_Pagar'
        DataSource = DsPagar
        UpdateLevel = SctLevel10
        AutoVar = False
        ID = vidAutoDataVar
      end
      object DataSourceGuide21: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = True
        UpdateLevel = SctLevel10
        DataSource = DmMaster.DsConexao
      end
      object DataSourceGuide22: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = True
        UpdateLevel = SctLevel10
        DataSource = DmMaster.DsConecadoMes
      end
      object adodsconexaoNm_BancoVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Nm_Banco'
        DataSource = DmMaster.DsConexao
        UpdateLevel = SctLevel10
        AutoVar = True
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
        AutoVar = True
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
        AutoVar = True
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
        AutoVar = True
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
        AutoVar = True
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
        AutoVar = True
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
        AutoVar = True
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
        AutoVar = True
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
        AutoVar = True
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
        AutoVar = True
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
        AutoVar = True
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
        AutoVar = True
        ID = vidAutoDataVar
      end
      object adodsconectadomesNm_HostVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Nm_Host'
        DataSource = DmMaster.DsConecadoMes
        UpdateLevel = SctLevel10
        AutoVar = True
        ID = vidAutoDataVar
      end
      object SctBand8: TSctBand
        Left = 0
        Top = 0
        Width = 805
        Height = 7
        ParentColor = True
        BandName = 'Report Header'
        Updatelevel = SctLevel8
        Visible = False
      end
      object SctBand9: TSctBand
        Left = 0
        Top = 22
        Width = 805
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
          Caption = 'Contas '#224' Pagar'
        end
        object Sctvarlabel105: TSctvarlabel
          Left = 652
          Top = 1
          Width = 34
          Height = 17
          Caption = 'Data:'
        end
        object Sctvarlabel106: TSctvarlabel
          Left = 690
          Top = 1
          Width = 65
          Height = 17
          AlignHorizontal = laRight
          Variable = SctDateTimeVar2
          DataFormat.DisplayFormat = 'dd/mm/yyyy'
        end
        object Sctvarlabel114: TSctvarlabel
          Left = 652
          Top = 19
          Width = 34
          Height = 17
          Caption = 'Hora:'
        end
        object Sctvarlabel115: TSctvarlabel
          Left = 690
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
          Width = 755
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
        Top = 150
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
        Updatelevel = SctLevel10
        Stretch = True
        object Sctvarlabel35: TSctvarlabel
          Left = 0
          Top = 1
          Width = 58
          Height = 17
          AlignHorizontal = laRight
          Variable = adodspagarDp_PagarVar
        end
        object Sctvarlabel36: TSctvarlabel
          Left = 62
          Top = -1
          Width = 239
          Height = 17
          WrapText = True
          Stretch = True
          Variable = adodspagarDp_EmitenteVar
        end
        object Sctvarlabel37: TSctvarlabel
          Left = 685
          Top = 1
          Width = 70
          Height = 17
          AlignHorizontal = laRight
          Variable = adodspagarVl_SaldoVar
          DataFormat.DisplayFormat = '#,##0.00'
          DataFormat.SuppressNulls = True
          DataFormat.Digits = 2
        end
        object Sctvarlabel38: TSctvarlabel
          Left = 609
          Top = 1
          Width = 70
          Height = 17
          AlignHorizontal = laRight
          Variable = adodspagarVl_PagoVar
          DataFormat.DisplayFormat = '#,##0.00'
          DataFormat.SuppressNulls = True
          DataFormat.Digits = 2
        end
        object Sctvarlabel39: TSctvarlabel
          Left = 534
          Top = 1
          Width = 70
          Height = 17
          AlignHorizontal = laRight
          Variable = adodspagarVl_ParcelaVar
          DataFormat.DisplayFormat = '#,##0.00'
          DataFormat.SuppressNulls = True
          DataFormat.Digits = 2
        end
        object Sctvarlabel55: TSctvarlabel
          Left = 431
          Top = 1
          Width = 99
          Height = 17
          Variable = adodspagarNr_DocumentoVar
        end
        object Sctvarlabel75: TSctvarlabel
          Left = 304
          Top = -1
          Width = 125
          Height = 17
          WrapText = True
          Stretch = True
          Variable = adodspagarDs_PagarVar
        end
      end
      object SctBand11: TSctBand
        Left = 0
        Top = 221
        Width = 805
        Height = 23
        Color = 15987699
        BandName = 'Page Footer'
        Updatelevel = SctLevel11
        object SctLine9: TSctLine
          Left = 1
          Top = 1
          Width = 755
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
        Top = 259
        Width = 805
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
          Left = 409
          Top = 2
          Width = 346
          Height = 5
          AlignVertical = laTop
        end
        object SctTotalvarLabel22: TSctTotalvarLabel
          Left = 534
          Top = 5
          Width = 70
          Height = 17
          TotalVariable = TotalOfVl_Parcela1
          DataFormat.DisplayFormat = '#,##0.00'
        end
        object SctTotalvarLabel23: TSctTotalvarLabel
          Left = 609
          Top = 5
          Width = 70
          Height = 17
          TotalVariable = TotalOfVl_Pago1
          DataFormat.DisplayFormat = '#,##0.00'
        end
        object SctTotalvarLabel24: TSctTotalvarLabel
          Left = 685
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
        Width = 805
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
          Caption = 'Pagar'
        end
        object Sctvarlabel43: TSctvarlabel
          Left = 63
          Top = 1
          Width = 65
          Height = 17
          Caption = 'Fornecedor'
        end
        object Sctvarlabel44: TSctvarlabel
          Left = 685
          Top = 1
          Width = 70
          Height = 17
          AlignHorizontal = laRight
          DataFormat.SuppressNulls = True
          Caption = 'Saldo'
        end
        object Sctvarlabel45: TSctvarlabel
          Left = 609
          Top = -1
          Width = 70
          Height = 17
          AlignHorizontal = laRight
          DataFormat.SuppressNulls = True
          Caption = 'Pago'
        end
        object Sctvarlabel46: TSctvarlabel
          Left = 534
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
          Width = 755
          Height = 6
        end
        object Sctvarlabel54: TSctvarlabel
          Left = 431
          Top = 0
          Width = 70
          Height = 17
          DataFormat.SuppressNulls = True
          Caption = 'Documento'
        end
        object Sctvarlabel65: TSctvarlabel
          Left = 304
          Top = 0
          Width = 65
          Height = 17
          Caption = 'Descritivo'
        end
      end
      object SctGrpEstado: TSctBand
        Left = 0
        Top = 115
        Width = 805
        Height = 20
        Color = 15987699
        BandName = 'SctGrpEstado'
        Updatelevel = SctLevel13
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
          Variable = adodspagarDt_VencimentoVar
          DataFormat.DisplayFormat = 'dd/mm/yyyy'
        end
      end
      object SctGrpFtEstado: TSctBand
        Left = 0
        Top = 184
        Width = 805
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
          Left = 409
          Top = 2
          Width = 346
          Height = 5
          AlignVertical = laTop
        end
        object SctTotalvarLabel19: TSctTotalvarLabel
          Left = 534
          Top = 5
          Width = 70
          Height = 17
          TotalVariable = TotalOfVl_Parcela1
          DataFormat.DisplayFormat = '#,##0.00'
        end
        object SctTotalvarLabel20: TSctTotalvarLabel
          Left = 609
          Top = 5
          Width = 70
          Height = 17
          TotalVariable = TotalOfVl_Pago1
          DataFormat.DisplayFormat = '#,##0.00'
        end
        object SctTotalvarLabel21: TSctTotalvarLabel
          Left = 685
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
          Caption = 'Total do Vencimento'
        end
      end
    end
  end
  object ADODsPago: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    OnCalcFields = ADODsPagoCalcFields
    CommandText = 'select distinct'#13#10'  A.Cd_Filial, A.Nr_Pagar, A.Nr_Parcela, B.Dt_Vencimento, B.Vl_Parcela,'#13#10'  D.Nm_Emitente + '''' - '''' + Cast( C.Cd_Emitente as VarChar( 5 ) ) as Dp_Emitente,'#13#10'  A.Dt_Lancamento, C.Ds_Pagar,'#13#10'  Cast( 0 as Numeric( 12, 2 ) ) as Vl_Pago,'#13#10'  Cast( 0 as Numeric( 12, 2 ) ) as Vl_Pagamento,'#13#10'  Cast( 0 as Numeric( 12, 2 ) ) as Vl_Juros,'#13#10'  Cast( 0 as Numeric( 12, 2 ) ) as Vl_Multa,'#13#10'  Cast( 0 as Numeric( 12, 2 ) ) as Vl_Credito,'#13#10'  Cast( 0 as Numeric( 12, 2 ) ) as Vl_Abatimento,'#13#10'  Cast( 0 as Numeric( 12, 2 ) ) as Vl_Desconto,'#13#10'  Cast( 0 as Numeric( 12, 2 ) ) as Vl_Debito,'#13#10'  Cast( 0 as Numeric( 12, 2 ) ) as Vl_OldPago,'#13#10'  B.Nr_Documento'#13#10#13#10'into'#13#10'  #pagotmp'#13#10'  '#13#10'from'#13#10'  Pagar_Historico A'#13#10#13#10'inner join'#13#10'  Pagar_Parcela B'#13#10'on'#13#10'  B.Cd_Filial  = A.Cd_Filial and'#13#10'  B.Nr_Pagar   = A.Nr_Pagar and'#13#10'  B.Nr_Parcela = A.Nr_Parcela'#13#10'inner join'#13#10'  Pagar C'#13#10'on'#13#10'  C.Cd_Filial = A.Cd_Filial and'#13#10'  C.Nr_Pagar  = A.Nr_Pagar'#13#10'  and C.St_Pagar >= ''''2'''#13#10'  and C.St_Pagar <= ''''3'''#13#10'inner join'#13#10'  Emitente D'#13#10'on'#13#10'  D.Cd_Emitente = C.Cd_Emitente'#13#10'inner join'#13#10'  Aplicacao_Grupo E'#13#10'on'#13#10'  E.Cd_Grupo = C.Cd_Grupo'#13#10'inner join'#13#10'  Aplicacao_SubGrupo F'#13#10'on'#13#10'  F.Cd_SubGrupo = C.Cd_SubGrupo'#13#10'where'#13#10'  A.Cd_Filial = 1 and'#13#10'  A.Dt_Lancamento >= ''''05/01/2009'''' and'#13#10'  A.Dt_Lancamento < ''''05/05/2009'''' and'#13#10'  A.Tp_Lancamento >= ''''2'''#13#10#13#10'select'#13#10'  Cd_Filial, Nr_Pagar, Nr_Parcela, Dt_Vencimento, Vl_Parcela, Vl_Pago,'#13#10'  Dp_Emitente, Dt_Lancamento, Vl_Pagamento, Vl_Juros, Vl_Multa, Vl_Credito,'#13#10'  Vl_Abatimento, Vl_Desconto, Vl_Debito, Nr_Documento, Ds_Pagar,'#13#10'     Cast( Nr_Pagar as VarChar( 7 )  ) + ''''/'''' +'#13#10'     dbo.IntToStrZero( Nr_Parcela, 2 ) as Dp_Pagar,'#13#10'  Vl_OldPago'#13#10#13#10'from'#13#10'  #PagoTMP'#13#10#13#10'order by'#13#10'  Dt_Lancamento, Dp_Emitente, Nr_Pagar, Nr_Parcela'#13#10
    Parameters = <>
    SQLOther0.Strings = (
      'select'
      '  Cd_Filial, Nr_Pagar, Nr_Parcela, Dt_Vencimento, Vl_Parcela, Vl_Pago,'
      '  Dp_Emitente, Dt_Lancamento, Vl_Pagamento, Vl_Juros, Vl_Multa, Vl_Credito,'
      '  Vl_Abatimento, Vl_Desconto, Vl_Debito, Nr_Documento, Ds_Pagar,'
      '     Cast( Nr_Pagar as VarChar( 7 )  ) + ''''/'''' +'
      '     dbo.IntToStrZero( Nr_Parcela, 2 ) as Dp_Pagar,'
      '  Vl_OldPago'
      ''
      'from'
      '  #PagoTMP'
      ''
      'order by'
      '  Dt_Lancamento, Dp_Emitente, Nr_Pagar, Nr_Parcela'
    )
    SQLOther1.Strings = (
      'select distinct'
      '  A.Cd_Filial, A.Nr_Pagar, A.Nr_Parcela, B.Dt_Vencimento, B.Vl_Parcela,'
      '  Cast( C.Cd_Emitente as VarChar( 5 ) ) + '''' - '''' + D.Nm_Emitente as Dp_Emitente,'
      '  Dt_Lancamento,'
      '  Cast( 0 as Numeric( 12, 2 ) ) as Vl_Pago,'
      '  Cast( 0 as Numeric( 12, 2 ) ) as Vl_Pagamento,'
      '  Cast( 0 as Numeric( 12, 2 ) ) as Vl_Juros,'
      '  Cast( 0 as Numeric( 12, 2 ) ) as Vl_Multa,'
      '  Cast( 0 as Numeric( 12, 2 ) ) as Vl_Credito,'
      '  Cast( 0 as Numeric( 12, 2 ) ) as Vl_Abatimento,'
      '  Cast( 0 as Numeric( 12, 2 ) ) as Vl_Desconto,'
      '  Cast( 0 as Numeric( 12, 2 ) ) as Vl_Debito,'
      '  Cast( 0 as Numeric( 12, 2 ) ) as Vl_OldPago,'
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
      '      A.Cd_Filial     = #Pago.Cd_Filial and'
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
      '      A.Cd_Filial     = #Pago.Cd_Filial and'
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
      '      A.Cd_Filial     = #Pago.Cd_Filial and'
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
      '      A.Cd_Filial     = #Pago.Cd_Filial and'
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
      '      A.Cd_Filial     = #Pago.Cd_Filial and'
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
      '      A.Cd_Filial     = #Pago.Cd_Filial and'
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
      '      A.Cd_Filial     = #Pago.Cd_Filial and'
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
      '      A.Cd_Filial     = #Pago.Cd_Filial and'
      '      A.Nr_Pagar      = #Pago.Nr_Pagar and'
      '      A.Nr_Parcela    = #Pago.Nr_Parcela and'
      '      A.Tp_Lancamento = ''''8'''' and'
      '      A.Dt_Lancamento >= #Pago.Dt_Lancamento and'
      '      A.Dt_Lancamento < DateAdd( Day, 1, #Pago.Dt_Lancamento )'
      '    ),'
      ''
      '  Vl_OldPago ='
      '    ('
      '    select'
      '      sum( A.Vl_Lancamento )'
      ''
      '    from'
      '      Pagar_Historico A'
      ''
      '    where'
      '      A.Cd_Filial     = #Pago.Cd_Filial and'
      '      A.Nr_Pagar      = #Pago.Nr_Pagar and'
      '      A.Nr_Parcela    = #Pago.Nr_Parcela and'
      '      A.Tp_Lancamento = ''''2'''' and'
      '      A.Dt_Lancamento < #Pago.Dt_Lancamento'
      '    )'
      ''
      'select'
      '  Nr_Pagar, Nr_Parcela, Dt_Vencimento, Vl_Parcela, Vl_Pago, Dp_Emitente,'
      '  Dt_Lancamento, Vl_Pagamento, Vl_Juros, Vl_Multa, Vl_Credito, Vl_Abatimento,'
      '  Vl_Desconto, Vl_Debito, Dp_Custo, Nr_Documento,'
      '  Dp_Pagar ='
      '     Convert( VarChar( 5 ), Nr_Pagar ) + ''''/'''' +'
      '     Convert( VarChar( 2 ), Nr_Parcela ),'
      '  Vl_OldPago'
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
    Left = 254
    Top = 53
    object ADODsPagoCd_Filial: TSmallintField
      FieldName = 'Cd_Filial'
    end
    object ADODsPagoNr_Pagar: TIntegerField
      FieldName = 'Nr_Pagar'
    end
    object ADODsPagoNr_Parcela: TSmallintField
      FieldName = 'Nr_Parcela'
    end
    object ADODsPagoDp_Pagar: TStringField
      FieldName = 'Dp_Pagar'
      ReadOnly = True
      Size = 10
    end
    object ADODsPagoVl_Pago: TBCDField
      FieldName = 'Vl_Pago'
      Precision = 12
      Size = 2
    end
    object ADODsPagoDt_Vencimento: TDateTimeField
      FieldName = 'Dt_Vencimento'
    end
    object ADODsPagoVl_Parcela: TBCDField
      FieldName = 'Vl_Parcela'
      Precision = 10
    end
    object ADODsPagoDp_Emitente: TStringField
      FieldName = 'Dp_Emitente'
      Size = 58
    end
    object ADODsPagoDt_Lancamento: TDateTimeField
      FieldName = 'Dt_Lancamento'
    end
    object ADODsPagoVl_Pagamento: TBCDField
      FieldName = 'Vl_Pagamento'
      Precision = 12
      Size = 2
    end
    object ADODsPagoVl_Juros: TBCDField
      FieldName = 'Vl_Juros'
      Precision = 12
      Size = 2
    end
    object ADODsPagoVl_Multa: TBCDField
      FieldName = 'Vl_Multa'
      Precision = 12
      Size = 2
    end
    object ADODsPagoVl_Credito: TBCDField
      FieldName = 'Vl_Credito'
      Precision = 12
      Size = 2
    end
    object ADODsPagoVl_Abatimento: TBCDField
      FieldName = 'Vl_Abatimento'
      Precision = 12
      Size = 2
    end
    object ADODsPagoVl_Desconto: TBCDField
      FieldName = 'Vl_Desconto'
      Precision = 12
      Size = 2
    end
    object ADODsPagoVl_Debito: TBCDField
      FieldName = 'Vl_Debito'
      Precision = 12
      Size = 2
    end
    object ADODsPagoVl_Saldo: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Vl_Saldo'
      Calculated = True
    end
    object ADODsPagoNr_Documento: TStringField
      FieldName = 'Nr_Documento'
      Size = 15
    end
    object ADODsPagoVl_OldPago: TBCDField
      FieldName = 'Vl_OldPago'
      Precision = 12
      Size = 2
    end
    object ADODsPagoDp_EmiPagar: TStringField
      FieldKind = fkCalculated
      FieldName = 'Dp_EmiPagar'
      Size = 160
      Calculated = True
    end
    object ADODsPagoDs_Pagar: TStringField
      FieldName = 'Ds_Pagar'
      Size = 50
    end
  end
  object DsPago: TDataSource
    DataSet = ADODsPago
    Left = 224
    Top = 53
  end
  object DsPagar: TDataSource
    DataSet = ADODsPagar
    Left = 339
    Top = 52
  end
  object ADODsPagar: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    OnCalcFields = ADODsPagarCalcFields
    CommandText = 'select'#13#10'  A.Nr_Pagar, A.Nr_Parcela, A.Dt_Vencimento, A.Vl_Parcela, A.Nr_Documento,'#13#10'  D.Nm_Emitente + '''' - '''' + Cast( B.Cd_Emitente as VarChar( 5 ) ) as Dp_Emitente,'#13#10'  sum( C.Vl_Lancamento ) as Vl_Pago,'#13#10'  Cast( A.Nr_Pagar as VarChar( 6 ) ) + ''''/'''' +'#13#10'  dbo.IntToStrZero( A.Nr_Parcela, 2 ) as Dp_Pagar,'#13#10'  B.Cd_Grupo, AG.Nm_Grupo, B.Cd_SubGrupo, ASG.Nm_SubGrupo, B.Ds_Pagar'#13#10#13#10'from'#13#10'  Pagar_Parcela A'#13#10#13#10'inner join'#13#10'  Pagar B'#13#10'on'#13#10'  B.Cd_Filial = A.Cd_Filial and'#13#10'  B.Nr_Pagar  = A.Nr_Pagar and'#13#10'  B.St_Pagar  <= ''''2'''#13#10'inner join'#13#10'  Emitente D'#13#10'on'#13#10'  D.Cd_Emitente = B.Cd_Emitente'#13#10#13#10'inner join'#13#10'  Aplicacao_Grupo AG'#13#10'on'#13#10'  AG.Cd_Grupo = B.Cd_Grupo'#13#10#13#10'inner join'#13#10'  Aplicacao_SubGrupo ASG'#13#10'on'#13#10'  ASG.Cd_SubGrupo = B.Cd_SubGrupo'#13#10#13#10'left join'#13#10'  Pagar_Historico C'#13#10'on'#13#10'  C.Cd_Filial     = A.Cd_Filial and'#13#10'  C.Nr_Pagar      = A.Nr_Pagar and'#13#10'  C.Nr_Parcela    = A.Nr_Parcela and'#13#10'  C.Tp_Lancamento >= ''''2'''#13#10#13#10'where'#13#10'  A.Cd_Filial     = :Cd_Filial and'#13#10'  A.Dt_Vencimento >= ''''07/23/2008'''' and'#13#10'  A.Dt_Vencimento < ''''08/01/2008'''#13#10'group by'#13#10'  A.Nr_Pagar, A.Nr_Parcela, A.Dt_Vencimento, A.Vl_Parcela, A.Nr_Documento,'#13#10'  D.Nm_Emitente + '''' - '''' + Cast( B.Cd_Emitente as VarChar( 5 ) ),'#13#10'  B.Cd_Grupo, AG.Nm_Grupo, B.Cd_SubGrupo, ASG.Nm_SubGrupo, B.Ds_Pagar'#13#10#13#10'having'#13#10'  A.Vl_Parcela >'#13#10'  ( case when sum( C.Vl_Lancamento ) is null then 0.0 else sum( C.Vl_Lancamento ) end )'#13#10#13#10'order by'#13#10'  A.Dt_Vencimento, D.Nm_Emitente + '''' - '''' + Cast( B.Cd_Emitente as VarChar( 5 ) ),'#13#10'  A.Nr_Pagar, A.Nr_Parcela'#13#10
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
      '  A.Nr_Pagar, A.Nr_Parcela, A.Dt_Vencimento, A.Vl_Parcela, A.Nr_Documento,'
      '  D.Nm_Emitente + '''' - '''' + Cast( B.Cd_Emitente as VarChar( 5 ) ) as Dp_Emitente,'
      '  sum( C.Vl_Lancamento ) as Vl_Pago,'
      '  Cast( A.Nr_Pagar as VarChar( 6 ) ) + ''''/'''' +'
      '  dbo.IntToStrZero( A.Nr_Parcela, 2 ) as Dp_Pagar,'
      '  B.Cd_Grupo, AG.Nm_Grupo, B.Cd_SubGrupo, ASG.Nm_SubGrupo, B.Ds_Pagar'
      ''
      'from'
      '  Pagar_Parcela A'
      ''
      'inner join'
      '  Pagar B'
      'on'
      '  B.Cd_Filial = A.Cd_Filial and'
      '  B.Nr_Pagar  = A.Nr_Pagar and'
      '  B.St_Pagar  <= ''''2'''
    )
    SQLOther2.Strings = (
      'inner join'
      '  Emitente D'
      'on'
      '  D.Cd_Emitente = B.Cd_Emitente'
      ''
      'inner join'
      '  Aplicacao_Grupo AG'
      'on'
      '  AG.Cd_Grupo = B.Cd_Grupo'
      ''
      'inner join'
      '  Aplicacao_SubGrupo ASG'
      'on'
      '  ASG.Cd_SubGrupo = B.Cd_SubGrupo'
      ''
      'left join'
      '  Pagar_Historico C'
      'on'
      '  C.Cd_Filial     = A.Cd_Filial and'
      '  C.Nr_Pagar      = A.Nr_Pagar and'
      '  C.Nr_Parcela    = A.Nr_Parcela and'
      '  C.Tp_Lancamento >= ''''2'''
      ''
      'where'
      '  A.Cd_Filial     = :Cd_Filial and'
      '  A.Dt_Vencimento >= @Dt_Start and'
      '  A.Dt_Vencimento < @Dt_End'
    )
    SQLOther3.Strings = (
      'group by'
      '  A.Nr_Pagar, A.Nr_Parcela, A.Dt_Vencimento, A.Vl_Parcela, A.Nr_Documento,'
      '  D.Nm_Emitente + '''' - '''' + Cast( B.Cd_Emitente as VarChar( 5 ) ),'
      '  B.Cd_Grupo, AG.Nm_Grupo, B.Cd_SubGrupo, ASG.Nm_SubGrupo, B.Ds_Pagar'
      ''
      'having'
      '  A.Vl_Parcela >'
      '  ( case when sum( C.Vl_Lancamento ) is null then 0.0 else sum( C.Vl_Lancamento ) end )'
      ''
      'order by'
      '  A.Dt_Vencimento, D.Nm_Emitente + '''' - '''' + Cast( B.Cd_Emitente as VarChar( 5 ) ),'
      '  A.Nr_Pagar, A.Nr_Parcela'
      ''
    )
    Left = 369
    Top = 52
    object ADODsPagarNr_Parcela: TSmallintField
      FieldName = 'Nr_Parcela'
    end
    object ADODsPagarDt_Vencimento: TDateTimeField
      FieldName = 'Dt_Vencimento'
    end
    object ADODsPagarVl_Parcela: TBCDField
      FieldName = 'Vl_Parcela'
      Precision = 10
    end
    object ADODsPagarDp_Emitente: TStringField
      FieldName = 'Dp_Emitente'
      Size = 58
    end
    object ADODsPagarVl_Saldo: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Vl_Saldo'
      Calculated = True
    end
    object ADODsPagarNr_Pagar: TIntegerField
      FieldName = 'Nr_Pagar'
    end
    object ADODsPagarDp_Pagar: TStringField
      FieldName = 'Dp_Pagar'
      ReadOnly = True
      Size = 8
    end
    object ADODsPagarVl_Pago: TBCDField
      FieldName = 'Vl_Pago'
      ReadOnly = True
      Precision = 19
    end
    object ADODsPagarNr_Documento: TStringField
      FieldName = 'Nr_Documento'
      Size = 15
    end
    object ADODsPagarCd_Grupo: TSmallintField
      FieldName = 'Cd_Grupo'
    end
    object ADODsPagarNm_Grupo: TStringField
      FieldName = 'Nm_Grupo'
      Size = 50
    end
    object ADODsPagarCd_SubGrupo: TSmallintField
      FieldName = 'Cd_SubGrupo'
    end
    object ADODsPagarNm_SubGrupo: TStringField
      FieldName = 'Nm_SubGrupo'
      Size = 50
    end
    object ADODsPagarDp_Aplicacao: TStringField
      FieldKind = fkCalculated
      FieldName = 'Dp_Aplicacao'
      Size = 120
      Calculated = True
    end
    object ADODsPagarDs_Pagar: TStringField
      FieldName = 'Ds_Pagar'
      Size = 50
    end
  end
  object ADOCmdPago: TMultADOCMD
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLOther0.Strings = (
      'drop table #PagoTMP'
    )
    SQLOther1.Strings = (
      'select distinct'
      '  A.Cd_Filial, A.Nr_Pagar, A.Nr_Parcela, B.Dt_Vencimento, B.Vl_Parcela,'
      '  D.Nm_Emitente + '''' - '''' + Cast( C.Cd_Emitente as VarChar( 5 ) ) as Dp_Emitente,'
      '  A.Dt_Lancamento, C.Ds_Pagar,'
      '  Cast( 0 as Numeric( 12, 2 ) ) as Vl_Pago,'
      '  Cast( 0 as Numeric( 12, 2 ) ) as Vl_Pagamento,'
      '  Cast( 0 as Numeric( 12, 2 ) ) as Vl_Juros,'
      '  Cast( 0 as Numeric( 12, 2 ) ) as Vl_Multa,'
      '  Cast( 0 as Numeric( 12, 2 ) ) as Vl_Credito,'
      '  Cast( 0 as Numeric( 12, 2 ) ) as Vl_Abatimento,'
      '  Cast( 0 as Numeric( 12, 2 ) ) as Vl_Desconto,'
      '  Cast( 0 as Numeric( 12, 2 ) ) as Vl_Debito,'
      '  Cast( 0 as Numeric( 12, 2 ) ) as Vl_OldPago,'
      '  B.Nr_Documento'
      ''
      'into'
      '  #pagotmp'
      '  '
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
    SQLOther3.Strings = (
      'update'
      '  #PagoTMP'
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
      '      A.Cd_Filial     = #PagoTMP.Cd_Filial and'
      '      A.Nr_Pagar      = #PagoTMP.Nr_Pagar and'
      '      A.Nr_Parcela    = #PagoTMP.Nr_Parcela and'
      '      A.Tp_Lancamento >= ''''2'''' and'
      '      A.Tp_Lancamento <= ''''5'''' and'
      '      A.Dt_Lancamento >= #PagoTMP.Dt_Lancamento and'
      '      A.Dt_Lancamento <= #PagoTMP.Dt_Lancamento'
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
      '      A.Cd_Filial     = #PagoTMP.Cd_Filial and'
      '      A.Nr_Pagar      = #PagoTMP.Nr_Pagar and'
      '      A.Nr_Parcela    = #PagoTMP.Nr_Parcela and'
      '      A.Tp_Lancamento = ''''2'''' and'
      '      A.Dt_Lancamento >= #PagoTMP.Dt_Lancamento and'
      '      A.Dt_Lancamento <= #PagoTMP.Dt_Lancamento'
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
      '      A.Cd_Filial     = #PagoTMP.Cd_Filial and'
      '      A.Nr_Pagar      = #PagoTMP.Nr_Pagar and'
      '      A.Nr_Parcela    = #PagoTMP.Nr_Parcela and'
      '      A.Tp_Lancamento = ''''3'''' and'
      '      A.Dt_Lancamento >= #PagoTMP.Dt_Lancamento and'
      '      A.Dt_Lancamento <= #PagoTMP.Dt_Lancamento'
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
      '      A.Cd_Filial     = #PagoTMP.Cd_Filial and'
      '      A.Nr_Pagar      = #PagoTMP.Nr_Pagar and'
      '      A.Nr_Parcela    = #PagoTMP.Nr_Parcela and'
      '      A.Tp_Lancamento = ''''4'''' and'
      '      A.Dt_Lancamento >= #PagoTMP.Dt_Lancamento and'
      '      A.Dt_Lancamento <= #PagoTMP.Dt_Lancamento'
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
      '      A.Cd_Filial     = #PagoTMP.Cd_Filial and'
      '      A.Nr_Pagar      = #PagoTMP.Nr_Pagar and'
      '      A.Nr_Parcela    = #PagoTMP.Nr_Parcela and'
      '      A.Tp_Lancamento = ''''5'''' and'
      '      A.Dt_Lancamento >= #PagoTMP.Dt_Lancamento and'
      '      A.Dt_Lancamento <= #PagoTMP.Dt_Lancamento'
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
      '      A.Cd_Filial     = #PagoTMP.Cd_Filial and'
      '      A.Nr_Pagar      = #PagoTMP.Nr_Pagar and'
      '      A.Nr_Parcela    = #PagoTMP.Nr_Parcela and'
      '      A.Tp_Lancamento = ''''6'''' and'
      '      A.Dt_Lancamento >= #PagoTMP.Dt_Lancamento and'
      '      A.Dt_Lancamento <= #PagoTMP.Dt_Lancamento'
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
      '      A.Cd_Filial     = #PagoTMP.Cd_Filial and'
      '      A.Nr_Pagar      = #PagoTMP.Nr_Pagar and'
      '      A.Nr_Parcela    = #PagoTMP.Nr_Parcela and'
      '      A.Tp_Lancamento = ''''7'''' and'
      '      A.Dt_Lancamento >= #PagoTMP.Dt_Lancamento and'
      '      A.Dt_Lancamento <= #PagoTMP.Dt_Lancamento'
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
      '      A.Cd_Filial     = #PagoTMP.Cd_Filial and'
      '      A.Nr_Pagar      = #PagoTMP.Nr_Pagar and'
      '      A.Nr_Parcela    = #PagoTMP.Nr_Parcela and'
      '      A.Tp_Lancamento = ''''8'''' and'
      '      A.Dt_Lancamento >= #PagoTMP.Dt_Lancamento and'
      '      A.Dt_Lancamento <= #PagoTMP.Dt_Lancamento'
      '    ),'
      ''
      '  Vl_OldPago ='
      '    ('
      '    select'
      '      sum( A.Vl_Lancamento )'
      ''
      '    from'
      '      Pagar_Historico A'
      ''
      '    where'
      '      A.Cd_Filial     = #PagoTMP.Cd_Filial and'
      '      A.Nr_Pagar      = #PagoTMP.Nr_Pagar and'
      '      A.Nr_Parcela    = #PagoTMP.Nr_Parcela and'
      '      A.Tp_Lancamento = ''''2'''' and'
      '      A.Dt_Lancamento < #PagoTMP.Dt_Lancamento'
      '    )'
    )
    Left = 284
    Top = 53
  end
  object ADODsEmissao: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    OnCalcFields = ADODsEmissaoCalcFields
    CommandText = 'select'#13#10'  A.Nr_Pagar, A.Nr_Parcela, A.Dt_Vencimento, A.Vl_Parcela,'#13#10'  Cast( B.Cd_Emitente as VarChar( 5 ) ) + '''' - '''' + D.Nm_Emitente as Dp_Emitente,'#13#10'  sum( C.Vl_Lancamento ) as Vl_Pago,'#13#10'  Cast( A.Nr_Pagar as VarChar( 5 ) ) + ''''/'''' +'#13#10'  dbo.IntToStrZero( A.Nr_Parcela, 2 ) as Dp_Pagar,'#13#10'  Cast( Cast( B.Dt_Emissao as VarChar( 11 ) ) as SmallDateTime ) as Dt_Emissao,'#13#10'  B.Ds_Pagar'#13#10#13#10'from'#13#10'  Pagar B'#13#10#13#10'inner join'#13#10'  Pagar_Parcela A'#13#10'on'#13#10'  A.Cd_Filial = B.Cd_Filial and'#13#10'  A.Nr_Pagar  = B.Nr_Pagar'#13#10#13#10'inner join'#13#10'  Emitente D'#13#10'on'#13#10'  D.Cd_Emitente = B.Cd_Emitente'#13#10#13#10'left join'#13#10'  Pagar_Historico C'#13#10'on'#13#10'  C.Cd_Filial     = A.Cd_Filial and'#13#10'  C.Nr_Pagar      = A.Nr_Pagar and'#13#10'  C.Nr_Parcela    = A.Nr_Parcela and'#13#10'  C.Tp_Lancamento >= ''''2'''#13#10#13#10'where'#13#10'  B.Cd_Filial   = :Cd_Filial and'#13#10'  B.Dt_Emissao >= ''''02/01/2010'''' and'#13#10'  B.Dt_Emissao < ''''02/02/2010'''' and'#13#10'  B.St_Pagar <= ''''3'''#13#10'group by'#13#10'  A.Nr_Pagar, A.Nr_Parcela, A.Dt_Vencimento, A.Vl_Parcela,'#13#10'  Cast( B.Cd_Emitente as VarChar( 5 ) ) + '''' - '''' + D.Nm_Emitente,'#13#10'  Cast( Cast( B.Dt_Emissao as VarChar( 11 ) ) as SmallDateTime ),'#13#10'  B.Ds_Pagar'#13#10#13#10'order by'#13#10'  Cast( Cast( B.Dt_Emissao as VarChar( 11 ) ) as SmallDateTime ), A.Nr_Pagar, A.Nr_Parcela'
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
      '  A.Nr_Pagar, A.Nr_Parcela, A.Dt_Vencimento, A.Vl_Parcela,'
      '  Cast( B.Cd_Emitente as VarChar( 5 ) ) + '''' - '''' + D.Nm_Emitente as Dp_Emitente,'
      '  sum( C.Vl_Lancamento ) as Vl_Pago,'
      '  Cast( A.Nr_Pagar as VarChar( 5 ) ) + ''''/'''' +'
      '  dbo.IntToStrZero( A.Nr_Parcela, 2 ) as Dp_Pagar,'
      '  Cast( Cast( B.Dt_Emissao as VarChar( 11 ) ) as SmallDateTime ) as Dt_Emissao,'
      '  B.Ds_Pagar'
      ''
      'from'
      '  Pagar B'
      ''
      'inner join'
      '  Pagar_Parcela A'
      'on'
      '  A.Cd_Filial = B.Cd_Filial and'
      '  A.Nr_Pagar  = B.Nr_Pagar'
      ''
    )
    SQLOther2.Strings = (
      'inner join'
      '  Emitente D'
      'on'
      '  D.Cd_Emitente = B.Cd_Emitente'
      ''
      'left join'
      '  Pagar_Historico C'
      'on'
      '  C.Cd_Filial     = A.Cd_Filial and'
      '  C.Nr_Pagar      = A.Nr_Pagar and'
      '  C.Nr_Parcela    = A.Nr_Parcela and'
      '  C.Tp_Lancamento >= ''''2'''
      ''
      'where'
      '  B.Cd_Filial   = :Cd_Filial and'
      '  B.Dt_Emissao >= @Dt_Start and'
      '  B.Dt_Emissao < @Dt_End and'
      '  B.St_Pagar <= ''''3'''
    )
    SQLOther3.Strings = (
      'group by'
      '  A.Nr_Pagar, A.Nr_Parcela, A.Dt_Vencimento, A.Vl_Parcela,'
      '  Cast( B.Cd_Emitente as VarChar( 5 ) ) + '''' - '''' + D.Nm_Emitente,'
      '  Cast( Cast( B.Dt_Emissao as VarChar( 11 ) ) as SmallDateTime ),'
      '  B.Ds_Pagar'
      ''
      'order by'
      '  Cast( Cast( B.Dt_Emissao as VarChar( 11 ) ) as SmallDateTime ), A.Nr_Pagar, A.Nr_Parcela'
    )
    Left = 152
    Top = 104
    object ADODsEmissaoNr_Pagar: TIntegerField
      FieldName = 'Nr_Pagar'
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
    object ADODsEmissaoDp_Emitente: TStringField
      FieldName = 'Dp_Emitente'
      ReadOnly = True
      Size = 58
    end
    object ADODsEmissaoDp_Pagar: TStringField
      FieldName = 'Dp_Pagar'
      ReadOnly = True
      Size = 26
    end
    object ADODsEmissaoDt_Emissao: TDateTimeField
      FieldName = 'Dt_Emissao'
      ReadOnly = True
    end
    object ADODsEmissaoVl_Saldo: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Vl_Saldo'
      Calculated = True
    end
    object ADODsEmissaoVl_Pago: TBCDField
      FieldName = 'Vl_Pago'
      ReadOnly = True
      Precision = 32
      Size = 2
    end
    object ADODsEmissaoDs_Pagar: TStringField
      FieldName = 'Ds_Pagar'
      Size = 50
    end
  end
  object DsEmissao: TDataSource
    DataSet = ADODsEmissao
    Left = 120
    Top = 104
  end
end
