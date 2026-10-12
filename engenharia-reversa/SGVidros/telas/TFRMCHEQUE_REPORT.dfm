object FrmCheque_Report: TFrmCheque_Report
  Left = 531
  Top = 174
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Relat'#243'rio de Cheques'
  ClientHeight = 317
  ClientWidth = 628
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
    Width = 607
    Height = 317
    Align = alClient
    ParentColor = True
    TabOrder = 2
    ExplicitHeight = 316
    object BvlSeparator: TBevel
      Left = 3
      Top = 286
      Width = 600
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
      Top = 54
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
      Top = 39
      Width = 35
      Height = 13
      Caption = 'Cliente:'
    end
    object Label1: TLabel
      Left = 196
      Top = 4
      Width = 56
      Height = 13
      Caption = 'Per'#237'odo de:'
    end
    object Label3: TLabel
      Left = 5
      Top = 74
      Width = 45
      Height = 13
      Caption = 'Situa'#231#227'o:'
    end
    object Label4: TLabel
      Left = 154
      Top = 74
      Width = 94
      Height = 13
      Caption = 'Ordem do Relat'#243'rio:'
    end
    object Label5: TLabel
      Left = 302
      Top = 74
      Width = 80
      Height = 13
      Caption = 'Imprimir Terceiro:'
    end
    object BitBtnOk: TBitBtn
      Left = 434
      Top = 289
      Width = 85
      Height = 25
      Caption = '&Imprimir'
      TabOrder = 8
      OnClick = BitBtnOkClick
      Glyph.Data = {binary 1146 bytes}
    end
    object BitBtnCancel: TBitBtn
      Left = 520
      Top = 289
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 9
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
      Top = 54
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
      Top = 54
      Width = 395
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
    object CbData: TComboBox
      Left = 196
      Top = 17
      Width = 145
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 2
      Text = 'Vencimento (Dep'#243'sito)'
      OnChange = CbDataChange
      Items.Strings = (
        'Vencimento (Dep'#243'sito)'
        'Emiss'#227'o'
      )
    end
    object CbStCheque: TComboBox
      Left = 5
      Top = 88
      Width = 145
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 5
      Text = 'Todos'
      Items.Strings = (
        'Todos'
        '1 - Aberto'
        '2 - Devolvido'
        '3 - Depositado'
        '8 - Trocado'
        '9 - Recebido'
      )
    end
    object CbOrdem: TComboBox
      Left = 154
      Top = 88
      Width = 145
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 6
      Text = 'Vencimento'
      Items.Strings = (
        'Vencimento'
        'Emiss'#227'o'
        'Cliente'
      )
    end
    object CbTerceiro: TComboBox
      Left = 302
      Top = 88
      Width = 51
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 7
      Text = 'Sim'
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
    Height = 317
    Align = alLeft
    TabOrder = 1
    ExplicitHeight = 316
  end
  object SctRepEmitido: TSctReport
    Left = 530
    Top = 18
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
    SLeft = 0
    SWidth = 913
    SHeight = 520
    MTop = 18
    MLeft = 530
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
      Description = 'Cheques'
      CloseDataSet = False
      DataRange = drAllRecords
      OmitLastPgFt = False
      Head = SctBand8
      Detail = DtlCheque
      Foot = SctBand12
      PageHead = SctBand9
      PageFoot = SctBand11
      DataSource = DsEmitido
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
      object SctGrpData: TSctGroup
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        Header = SctBdData
        Footer = SctGrpFtEstado
        Variable = adodsemitidoDp_QuebraVar
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
        DataSource = DsEmitido
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
      object adodsemitidoid_chequeVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'id_cheque'
        DataSource = DsEmitido
        UpdateLevel = SctLevel10
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsemitidocd_agenciaVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'cd_agencia'
        DataSource = DsEmitido
        UpdateLevel = SctLevel10
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsemitidonr_contaVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'nr_conta'
        DataSource = DsEmitido
        UpdateLevel = SctLevel10
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsemitidonr_chequeVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'nr_cheque'
        DataSource = DsEmitido
        UpdateLevel = SctLevel10
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsemitidovl_chequeVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'vl_cheque'
        DataSource = DsEmitido
        UpdateLevel = SctLevel10
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsemitidodt_vencimentoVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'dt_vencimento'
        DataSource = DsEmitido
        UpdateLevel = SctLevel10
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsemitidoDp_BancoVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Dp_Banco'
        DataSource = DsEmitido
        UpdateLevel = SctLevel10
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsemitidoDp_SituacaoVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Dp_Situacao'
        DataSource = DsEmitido
        UpdateLevel = SctLevel10
        AutoVar = False
        ID = vidAutoDataVar
      end
      object TotalOfvl_cheque: TSctTotalvar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        Variable = adodsemitidovl_chequeVar
        UpdateLevel = SctLevel10
        AutoVar = False
        ID = vidTotalVar
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
      object adodsemitidoDp_QuebraVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Dp_Quebra'
        DataSource = DsEmitido
        UpdateLevel = SctLevel10
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsemitidoDp_EmitenteVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Dp_Emitente'
        DataSource = DsEmitido
        UpdateLevel = SctLevel10
        AutoVar = False
        ID = vidAutoDataVar
      end
      object DataSourceGuide2: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = SctLevel10
        DataSource = DmMaster.DsConexao
      end
      object DataSourceGuide3: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = SctLevel10
        DataSource = DmMaster.DsConecadoMes
      end
      object adodsemitidoDp_BorderoVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Dp_Bordero'
        DataSource = DsEmitido
        UpdateLevel = SctLevel10
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsemitidonm_emitenteVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'nm_emitente'
        DataSource = DsEmitido
        UpdateLevel = SctLevel10
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsemitidodt_emissaoVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'dt_emissao'
        DataSource = DsEmitido
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
        object SctTitle: TSctvarlabel
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
          Caption = 'Cheque'
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
        object SctPerEmissao: TSctvarlabel
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
        object SctSpECF_2: TSctShape
          Left = 728
          Top = 35
          Width = 8
          Height = 6
        end
      end
      object DtlCheque: TSctBand
        Left = 0
        Top = 150
        Width = 786
        Height = 19
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = True
        ParentFont = False
        BandName = 'DtlCheque'
        Updatelevel = SctLevel10
        Stretch = True
        OnBeforePrint = DtlChequeBeforePrint
        object Sctvarlabel4: TSctvarlabel
          Left = 0
          Top = 1
          Width = 58
          Height = 17
          AlignHorizontal = laRight
          Variable = adodsemitidoid_chequeVar
        end
        object Sctvarlabel5: TSctvarlabel
          Left = 63
          Top = 0
          Width = 213
          Height = 17
          WrapText = True
          Stretch = True
          Variable = adodsemitidoDp_EmitenteVar
        end
        object Sctvarlabel6: TSctvarlabel
          Left = 680
          Top = 1
          Width = 56
          Height = 17
          AlignHorizontal = laRight
          Variable = adodsemitidovl_chequeVar
          DataFormat.DisplayFormat = '#,##0.00'
          DataFormat.SuppressNulls = True
          DataFormat.Digits = 2
        end
        object Sctvarlabel7: TSctvarlabel
          Left = 630
          Top = 1
          Width = 45
          Height = 17
          AlignHorizontal = laRight
          Variable = adodsemitidonr_chequeVar
          DataFormat.SuppressNulls = True
        end
        object Sctvarlabel8: TSctvarlabel
          Left = 568
          Top = 1
          Width = 60
          Height = 17
          Variable = adodsemitidonr_contaVar
          DataFormat.SuppressNulls = True
        end
        object Sctvarlabel9: TSctvarlabel
          Left = 520
          Top = 1
          Width = 44
          Height = 17
          Variable = adodsemitidocd_agenciaVar
          DataFormat.SuppressNulls = True
        end
        object Sctvarlabel10: TSctvarlabel
          Left = 398
          Top = 1
          Width = 118
          Height = 17
          Variable = adodsemitidoDp_BancoVar
          DataFormat.SuppressNulls = True
        end
        object Sctvarlabel11: TSctvarlabel
          Left = 347
          Top = 1
          Width = 46
          Height = 17
          AlignHorizontal = laCenter
          Variable = adodsemitidoDp_SituacaoVar
        end
        object SctVarData: TSctvarlabel
          Left = 280
          Top = 1
          Width = 65
          Height = 17
          AlignHorizontal = laCenter
          Variable = adodsemitidodt_vencimentoVar
          DataFormat.DisplayFormat = 'dd/mm/yyyy'
        end
      end
      object SctBand11: TSctBand
        Left = 0
        Top = 256
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
        Top = 294
        Width = 786
        Height = 84
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = True
        ParentFont = False
        BandName = 'Report Footer'
        Updatelevel = SctLevel12
        object SctLine1: TSctLine
          Left = 575
          Top = 2
          Width = 161
          Height = 5
          AlignVertical = laTop
        end
        object SctTotalvarLabel1: TSctTotalvarLabel
          Left = 666
          Top = 5
          Width = 70
          Height = 17
          TotalVariable = TotalOfvl_cheque
          DataFormat.DisplayFormat = '#,##0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Sctvarlabel12: TSctvarlabel
          Left = 575
          Top = 5
          Width = 86
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
        object Sctvarlabel13: TSctvarlabel
          Left = 5
          Top = 1
          Width = 65
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Caption = 'Legenda:'
        end
        object Sctvarlabel14: TSctvarlabel
          Left = 15
          Top = 19
          Width = 167
          Height = 64
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          WrapText = True
          Stretch = True
          Lines.Strings = (
            'Abe - Aberto'
            'Dep - Depositado'
            'Dev - Devolvido'
            'Rec - Recebido'
            ''
          )
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
          Caption = 'ID Cheque'
        end
        object Sctvarlabel43: TSctvarlabel
          Left = 63
          Top = 1
          Width = 65
          Height = 17
          Caption = 'Cliente'
        end
        object Sctvarlabel44: TSctvarlabel
          Left = 680
          Top = 1
          Width = 56
          Height = 17
          AlignHorizontal = laRight
          DataFormat.SuppressNulls = True
          Caption = 'Valor'
        end
        object Sctvarlabel45: TSctvarlabel
          Left = 630
          Top = 1
          Width = 45
          Height = 17
          AlignHorizontal = laRight
          DataFormat.SuppressNulls = True
          Caption = 'Cheque'
        end
        object Sctvarlabel46: TSctvarlabel
          Left = 568
          Top = 1
          Width = 60
          Height = 17
          DataFormat.SuppressNulls = True
          Caption = 'Conta'
        end
        object SctLine10: TSctLine
          Left = 1
          Top = 13
          Width = 734
          Height = 6
        end
        object Sctvarlabel1: TSctvarlabel
          Left = 520
          Top = 1
          Width = 44
          Height = 17
          DataFormat.SuppressNulls = True
          Caption = 'Ag'#234'ncia'
        end
        object Sctvarlabel2: TSctvarlabel
          Left = 398
          Top = 1
          Width = 118
          Height = 17
          DataFormat.SuppressNulls = True
          Caption = 'Banco'
        end
        object Sctvarlabel3: TSctvarlabel
          Left = 347
          Top = 1
          Width = 46
          Height = 17
          AlignHorizontal = laCenter
          Caption = 'Situa'#231#227'o'
        end
        object SctTxtData: TSctvarlabel
          Left = 280
          Top = 1
          Width = 65
          Height = 17
          AlignHorizontal = laCenter
          Caption = 'Vencimento'
        end
      end
      object SctBdData: TSctBand
        Left = 0
        Top = 115
        Width = 786
        Height = 20
        Color = 15987699
        BandName = 'SctGrpData Header'
        Updatelevel = SctLevel13
        NewPageRepeat = True
        object Sctvarlabel16: TSctvarlabel
          Left = 0
          Top = 1
          Width = 456
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
          Variable = adodsemitidoDp_QuebraVar
        end
      end
      object SctGrpFtEstado: TSctBand
        Left = 0
        Top = 219
        Width = 786
        Height = 22
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = True
        ParentFont = False
        BandName = 'SctGrpData Footer'
        Updatelevel = SctLevel14
        object SctLine6: TSctLine
          Left = 565
          Top = 2
          Width = 171
          Height = 5
          AlignVertical = laTop
        end
        object SctTotalvarLabel21: TSctTotalvarLabel
          Left = 666
          Top = 5
          Width = 70
          Height = 17
          TotalVariable = TotalOfvl_cheque
          DataFormat.DisplayFormat = '#,##0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Sctvarlabel41: TSctvarlabel
          Left = 560
          Top = 5
          Width = 101
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          AlignHorizontal = laRight
          Caption = 'Total nesta data:'
        end
      end
      object SctDtlBordero: TSctSubBand
        Left = 0
        Top = 184
        Width = 786
        Height = 20
        ParentColor = True
        BandName = 'SctDtlBordero'
        OnPrintWhen = SctDtlBorderoPrintWhen
        Updatelevel = SctLevel10
        OnBeforePrint = SctDtlBorderoBeforePrint
        Band = DtlCheque
        Above = False
        object Sctvarlabel15: TSctvarlabel
          Left = 63
          Top = 1
          Width = 658
          Height = 17
          WrapText = True
          Stretch = True
          Variable = adodsemitidoDp_BorderoVar
        end
      end
    end
  end
  object DsEmitido: TDataSource
    DataSet = ADODsEmitido
    Left = 32
    Top = 117
  end
  object ADODsEmitido: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    OnCalcFields = ADODsEmitidoCalcFields
    CommandText = 'select'#13#10'  C.Cd_Filial, C.Id_Cheque, C.Cd_Emitente, E.Nm_Emitente, C.Cd_Banco,'#13#10'  C.Cd_Agencia, C.Nr_Conta, C.Nr_Cheque, C.Fl_Cheque, C.Vl_Cheque,'#13#10'  C.Dt_Emissao, C.Dt_Vencimento, C.Nr_Documento, C.Nm_Cliente,'#13#10'  C.Nr_Telefone, B.Sg_Banco,'#13#10#13#10'  Dp_Bordero ='#13#10'    ('#13#10'    select top 1'#13#10'      ''''Bordero N'#186' '''' + Convert( VarChar( 5 ), CB.Nr_Bordero ) + '''' - '''' +'#13#10'        case'#13#10'          when CB.Cd_Portador is not null then '''' Portador: '''' + Convert( VarChar( 5 ), CB.Cd_Portador ) + '''' - '''' + P.Nm_Portador'#13#10'          else '''' Fornecedor '''' + Convert( VarChar( 8 ), CB.Cd_Emitente ) + '''' - '''' + E.Nm_Emitente'#13#10'        end'#13#10#13#10'    from'#13#10'      Cheque_Deposito CD'#13#10#13#10'    inner join'#13#10'      Cheque_Bordero CB'#13#10'    on'#13#10'      CB.Cd_Filial  = CD.Cd_Filial and'#13#10'      CB.Nr_Bordero = CD.Nr_Bordero'#13#10#13#10'    left join'#13#10'      Portador P'#13#10'    on'#13#10'      P.Cd_Portador = CB.Cd_Portador'#13#10#13#10'    left join'#13#10'      Emitente E'#13#10'    on'#13#10'      E.Cd_Emitente = CB.Cd_Emitente'#13#10#13#10'    where'#13#10'      CD.Cd_Filial = C.Cd_Filial and'#13#10'      CD.Id_Cheque = C.Id_Cheque'#13#10#13#10'    order by'#13#10'      1 desc'#13#10'    )'#13#10#13#10'from'#13#10'  Cheque C'#13#10#13#10'inner join'#13#10'  Emitente E'#13#10'on'#13#10'  E.Cd_Emitente = C.Cd_Emitente'#13#10#13#10'inner join'#13#10'  Banco B'#13#10'on'#13#10'  B.Cd_Banco = C.Cd_Banco'
    Parameters = <>
    SQLOther0.Strings = (
      'select'
      '  C.Cd_Filial, C.Id_Cheque, C.Cd_Emitente, E.Nm_Emitente, C.Cd_Banco,'
      '  C.Cd_Agencia, C.Nr_Conta, C.Nr_Cheque, C.Fl_Cheque, C.Vl_Cheque,'
      '  C.Dt_Emissao, C.Dt_Vencimento, C.Nr_Documento, C.Nm_Cliente,'
      '  C.Nr_Telefone, B.Sg_Banco,'
      ''
      '  Dp_Bordero ='
      '    ('
      '    select top 1'
      '      ''''Bordero N'#186' '''' + Convert( VarChar( 5 ), CB.Nr_Bordero ) + '''' - '''' +'
      '        case'
      '          when CB.Cd_Portador is not null then '''' Portador: '''' + Convert( VarChar( 5 ), CB.Cd_Portador ) + '''' - '''' + P.Nm_Portador'
      '          else '''' Fornecedor '''' + Convert( VarChar( 8 ), CB.Cd_Emitente ) + '''' - '''' + E.Nm_Emitente'
      '        end'
      ''
      '    from'
      '      Cheque_Deposito CD'
      ''
      '    inner join'
      '      Cheque_Bordero CB'
      '    on'
      '      CB.Cd_Filial  = CD.Cd_Filial and'
      '      CB.Nr_Bordero = CD.Nr_Bordero'
      ''
      '    left join'
      '      Portador P'
      '    on'
      '      P.Cd_Portador = CB.Cd_Portador'
      ''
      '    left join'
      '      Emitente E'
      '    on'
      '      E.Cd_Emitente = CB.Cd_Emitente'
      ''
      '    where'
      '      CD.Cd_Filial = C.Cd_Filial and'
      '      CD.Id_Cheque = C.Id_Cheque'
      ''
      '    order by'
      '      1 desc'
      '    )'
      ''
      'from'
      '  Cheque C'
      ''
      'inner join'
      '  Emitente E'
      'on'
      '  E.Cd_Emitente = C.Cd_Emitente'
      ''
      'inner join'
      '  Banco B'
      'on'
      '  B.Cd_Banco = C.Cd_Banco'
      ''
      'where'
      '  C.Cd_Filial = :Cd_Filial'
    )
    SQLOther2.Strings = (
      'inner join'
      '  Emitente D'
      'on'
      '  D.Cd_Emitente = B.Cd_Emitente'
      ''
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
      '  A.Nr_Receber, A.Nr_Parcela, A.Dt_Vencimento, A.Vl_Parcela, '
      '  Cast( B.Cd_Emitente as VarChar( 5 ) ) || '''' - '''' || D.Nm_Emitente'
      ''
      'having'
      '  A.Vl_Parcela >'
      '  ( case when sum( C.Vl_Lancamento ) is null then 0.0 else sum( C.Vl_Lancamento ) end )'
      ''
      'order by'
      '  A.Dt_Vencimento, A.Nr_Receber, A.Nr_Parcela'
    )
    Left = 63
    Top = 117
    object ADODsEmitidocd_filial: TSmallintField
      FieldName = 'cd_filial'
    end
    object ADODsEmitidoid_cheque: TIntegerField
      FieldName = 'id_cheque'
    end
    object ADODsEmitidocd_emitente: TIntegerField
      FieldName = 'cd_emitente'
    end
    object ADODsEmitidonm_emitente: TStringField
      FieldName = 'nm_emitente'
      Size = 50
    end
    object ADODsEmitidocd_banco: TStringField
      FieldName = 'cd_banco'
      FixedChar = True
      Size = 3
    end
    object ADODsEmitidocd_agencia: TStringField
      FieldName = 'cd_agencia'
      FixedChar = True
      Size = 4
    end
    object ADODsEmitidonr_conta: TStringField
      FieldName = 'nr_conta'
      Size = 10
    end
    object ADODsEmitidonr_cheque: TIntegerField
      FieldName = 'nr_cheque'
    end
    object ADODsEmitidofl_cheque: TStringField
      FieldName = 'fl_cheque'
      FixedChar = True
      Size = 1
    end
    object ADODsEmitidovl_cheque: TBCDField
      FieldName = 'vl_cheque'
      Precision = 12
      Size = 2
    end
    object ADODsEmitidodt_emissao: TDateTimeField
      FieldName = 'dt_emissao'
    end
    object ADODsEmitidodt_vencimento: TDateTimeField
      FieldName = 'dt_vencimento'
    end
    object ADODsEmitidonr_documento: TStringField
      FieldName = 'nr_documento'
      Size = 14
    end
    object ADODsEmitidonm_cliente: TStringField
      FieldName = 'nm_cliente'
      Size = 50
    end
    object ADODsEmitidonr_telefone: TStringField
      FieldName = 'nr_telefone'
      Size = 10
    end
    object ADODsEmitidosg_banco: TStringField
      FieldName = 'sg_banco'
    end
    object ADODsEmitidoDp_Banco: TStringField
      FieldKind = fkCalculated
      FieldName = 'Dp_Banco'
      Size = 26
      Calculated = True
    end
    object ADODsEmitidoDp_Situacao: TStringField
      FieldKind = fkCalculated
      FieldName = 'Dp_Situacao'
      Size = 3
      Calculated = True
    end
    object ADODsEmitidoDp_Quebra: TStringField
      FieldKind = fkCalculated
      FieldName = 'Dp_Quebra'
      Size = 70
      Calculated = True
    end
    object ADODsEmitidoDp_Emitente: TStringField
      FieldKind = fkCalculated
      FieldName = 'Dp_Emitente'
      Size = 105
      Calculated = True
    end
    object ADODsEmitidoDp_Bordero: TStringField
      FieldName = 'Dp_Bordero'
      ReadOnly = True
      Size = 92
    end
  end
end
