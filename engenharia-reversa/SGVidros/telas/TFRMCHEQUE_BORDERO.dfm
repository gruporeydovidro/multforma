object FrmCheque_Bordero: TFrmCheque_Bordero
  Left = 216
  Top = 170
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Border'#244' de Cheques'
  ClientHeight = 456
  ClientWidth = 878
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
    Height = 456
    Align = alLeft
    TabOrder = 0
    ExplicitHeight = 360
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 857
    Height = 456
    Align = alClient
    ParentColor = True
    TabOrder = 1
    ExplicitWidth = 708
    ExplicitHeight = 360
    object BvlSeparator: TBevel
      Left = 2
      Top = 426
      Width = 849
      Height = 5
      Shape = bsTopLine
    end
    object Label1: TLabel
      Left = 5
      Top = 30
      Width = 40
      Height = 13
      Caption = 'Border'#244':'
    end
    object Label10: TLabel
      Left = 5
      Top = 102
      Width = 110
      Height = 13
      Caption = 'Fornecedor (Factoring):'
    end
    object SbEmitente: TSpeedButton
      Left = 55
      Top = 117
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
    object Label2: TLabel
      Left = 174
      Top = 30
      Width = 42
      Height = 13
      Caption = 'Emiss'#227'o:'
    end
    object Label5: TLabel
      Left = 269
      Top = 30
      Width = 116
      Height = 13
      Caption = 'Dep'#243'sito/Apresenta'#231#227'o:'
    end
    object Label3: TLabel
      Left = 390
      Top = 30
      Width = 79
      Height = 13
      Caption = 'Tipo do Border'#244':'
    end
    object Label4: TLabel
      Left = 5
      Top = 67
      Width = 43
      Height = 13
      Caption = 'Portador:'
    end
    object SbPortador: TSpeedButton
      Left = 45
      Top = 82
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
    object Label6: TLabel
      Left = 340
      Top = 102
      Width = 27
      Height = 13
      Caption = 'Taxa:'
    end
    object Label7: TLabel
      Left = 385
      Top = 67
      Width = 66
      Height = 13
      Caption = 'Observa'#231#245'es:'
    end
    object Label8: TLabel
      Left = 6
      Top = 150
      Width = 100
      Height = 13
      Caption = 'Cheques do Border'#244':'
    end
    object LblTotal: TLabel
      Left = 563
      Top = 411
      Width = 262
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Total: 0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object PnlToolMain: TPanel
      Left = 1
      Top = 1
      Width = 855
      Height = 26
      Align = alTop
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 14
      ExplicitWidth = 706
      object PnlDatabase: TPanel
        Left = 0
        Top = 0
        Width = 855
        Height = 26
        Align = alClient
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 0
        ExplicitWidth = 706
        object ActToolBDatabase: TActionToolBar
          Left = 0
          Top = 0
          Width = 855
          Height = 26
          Cursor = crHandPoint
          ActionManager = ActManCadastro
          Caption = 'ActToolBDatabase'
          ColorMap.HighlightColor = clWhite
          ColorMap.BtnSelectedColor = clBtnFace
          ColorMap.UnusedColor = clWhite
          ParentShowHint = False
          ShowHint = True
          Spacing = 0
          ExplicitWidth = 706
        end
      end
    end
    object BitBtnConfirm: TBitBtn
      Left = 683
      Top = 429
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 12
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 482 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 769
      Top = 429
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 13
      OnClick = BitBtnCancelClick
      Glyph.Data = {binary 482 bytes}
      NumGlyphs = 2
    end
    object EdtNr_Bordero: TCurrencyEdit
      Left = 5
      Top = 45
      Width = 50
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      TabStop = False
      AutoSize = False
      Color = clSilver
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object EdtCd_Emitente: TCurrencyEdit
      Tag = 2
      Left = 5
      Top = 117
      Width = 50
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 7
      OnExit = EdtCd_EmitenteExit
      OnKeyDown = EdtCd_EmitenteKeyDown
    end
    object EdtNm_Emitente: TEdit
      Left = 78
      Top = 117
      Width = 258
      Height = 19
      TabStop = False
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 8
    end
    object EdtSt_Bordero: TLabeledEdit
      Left = 62
      Top = 45
      Width = 107
      Height = 19
      TabStop = False
      Color = clSilver
      EditLabel.Width = 42
      EditLabel.Height = 13
      EditLabel.Caption = 'Situa'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      LabelSpacing = 2
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object EdtDt_Bordero: TDateEdit
      Left = 174
      Top = 45
      Width = 89
      Height = 19
      TabStop = False
      CheckOnExit = True
      DialogTitle = 'Selecione a Data'
      GlyphKind = gkCustom
      Glyph.Data = {binary 1850 bytes}
      NumGlyphs = 1
      StartOfWeek = Sun
      TabOrder = 2
    end
    object EdtDt_Deposito: TDateEdit
      Left = 269
      Top = 45
      Width = 89
      Height = 19
      CheckOnExit = True
      DialogTitle = 'Selecione a Data'
      GlyphKind = gkCustom
      Glyph.Data = {binary 1850 bytes}
      NumGlyphs = 1
      StartOfWeek = Sun
      TabOrder = 3
    end
    object CbTpBordero: TComboBox
      Left = 390
      Top = 45
      Width = 116
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 4
      OnChange = CbTpBorderoChange
      Items.Strings = (
        'Dep'#243'sito'
        'Troca de Cheque'
      )
    end
    object EdtCd_Portador: TCurrencyEdit
      Tag = 1
      Left = 5
      Top = 82
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
      Left = 69
      Top = 82
      Width = 247
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
      TabOrder = 6
    end
    object EdtPr_Taxa: TCurrencyEdit
      Left = 340
      Top = 117
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DisplayFormat = '#,##0.00'
      TabOrder = 9
    end
    object MmObservacao: TMemo
      Left = 385
      Top = 82
      Width = 406
      Height = 72
      ScrollBars = ssVertical
      TabOrder = 10
    end
    object DbGCheques: TDBGrid
      Left = 5
      Top = 165
      Width = 844
      Height = 245
      TabStop = False
      DataSource = DsCheques
      FixedColor = clSilver
      Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 11
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = DbGChequesDblClick
      OnEnter = DbGChequesEnter
      OnExit = DbGChequesExit
      Columns = <
        item
          Expanded = False
          FieldName = 'id_cheque'
          Width = 55
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nm_emitente'
          Width = 294
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'sg_banco'
          Width = 146
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nr_conta'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nr_cheque'
          Title.Alignment = taRightJustify
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dt_emissao'
          Title.Alignment = taCenter
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dt_vencimento'
          Title.Alignment = taCenter
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'vl_cheque'
          Title.Alignment = taRightJustify
          Width = 65
          Visible = True
        end>
    end
    object PnlAction_3: TPanel
      Left = 793
      Top = 138
      Width = 54
      Height = 26
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 15
      object ActToolBParcela: TActionToolBar
        Left = 0
        Top = 0
        Width = 54
        Height = 26
        ActionManager = ActManCadastro
        Caption = 'ActToolBParcela'
        ColorMap.HighlightColor = clWhite
        ColorMap.BtnSelectedColor = clBtnFace
        ColorMap.UnusedColor = clWhite
        ParentShowHint = False
        ShowHint = True
        Spacing = 0
      end
    end
    object SctReport: TSctReport
      Left = 525
      Top = 85
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
      STop = 55
      SLeft = 0
      SWidth = 836
      SHeight = 581
      MTop = 85
      MLeft = 525
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
        PageSetup.RightMargin = 0.2
        PageSetup.BottomMargin = 0.2
        BorderType = btNone
        Description = 'Border'#244
        CloseDataSet = False
        DataRange = drAllRecords
        OmitLastPgFt = False
        Head = ReportHeaderBand
        Detail = DetailBand
        Foot = ReportFooterBand
        PageHead = PageHeaderBand
        PageFoot = PageFooterBand
        DataSource = DsCheques
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
          DataSource = DsCheques
        end
        object adodschequesid_chequeVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'id_cheque'
          DataSource = DsCheques
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodschequesnr_contaVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nr_conta'
          DataSource = DsCheques
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodschequesnr_chequeVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nr_cheque'
          DataSource = DsCheques
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodschequesvl_chequeVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'vl_cheque'
          DataSource = DsCheques
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodschequesdt_emissaoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'dt_emissao'
          DataSource = DsCheques
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodschequesdt_vencimentoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'dt_vencimento'
          DataSource = DsCheques
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodschequessg_bancoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'sg_banco'
          DataSource = DsCheques
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object DataSourceGuide5: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = DsDados
        end
        object adodsdadoscd_filialVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'cd_filial'
          DataSource = DsDados
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsdadosnr_borderoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nr_bordero'
          DataSource = DsDados
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsdadosdt_borderoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'dt_bordero'
          DataSource = DsDados
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsdadosfl_borderoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'fl_bordero'
          DataSource = DsDados
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsdadostp_borderoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'tp_bordero'
          DataSource = DsDados
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsdadosdt_depositoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'dt_deposito'
          DataSource = DsDados
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsdadoscd_portadorVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'cd_portador'
          DataSource = DsDados
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsdadosnm_portadorVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nm_portador'
          DataSource = DsDados
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsdadoscd_emitenteVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'cd_emitente'
          DataSource = DsDados
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsdadosnm_emitenteVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nm_emitente'
          DataSource = DsDados
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsdadospr_taxaVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'pr_taxa'
          DataSource = DsDados
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsdadosmm_observacaoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'mm_observacao'
          DataSource = DsDados
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsdadosDs_SituacaoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ds_Situacao'
          DataSource = DsDados
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object TotalOfvl_cheque: TSctTotalvar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Variable = adodschequesvl_chequeVar
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidTotalVar
        end
        object adodsdadosDs_TipoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ds_Tipo'
          DataSource = DsDados
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodschequesDp_ClienteVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_Cliente'
          DataSource = DsCheques
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object DataSourceGuide6: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = FrmEmitente_Find.DsFind
        end
        object DataSourceGuide7: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = FrmEmitente_Find.DsContato
        end
        object adodschequesNr_DocumentoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_Documento'
          DataSource = DsCheques
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object ReportHeaderBand: TSctBand
          Left = 0
          Top = 0
          Width = 777
          Height = 5
          ParentColor = True
          BandName = 'Report Header'
          Updatelevel = ReportHeaderBandlevel
          Visible = False
        end
        object PageHeaderBand: TSctBand
          Left = 0
          Top = 20
          Width = 777
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
            Caption = 'Border'#244
          end
          object Sctvarlabel1: TSctvarlabel
            Left = 628
            Top = 1
            Width = 31
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Data:'
          end
          object Sctvarlabel2: TSctvarlabel
            Left = 661
            Top = 1
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = svarDateTime
            DataFormat.DisplayFormat = 'dd/mm/yyyy'
          end
          object Sctvarlabel3: TSctvarlabel
            Left = 625
            Top = 18
            Width = 34
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Hora:'
          end
          object Sctvarlabel4: TSctvarlabel
            Left = 661
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
            Width = 726
            Height = 7
          end
        end
        object DetailBand: TSctBand
          Left = 0
          Top = 200
          Width = 777
          Height = 18
          ParentColor = True
          BandName = 'Detail'
          Updatelevel = DetailBandlevel
          Stretch = True
          OnBeforePrint = DetailBandBeforePrint
          object Sctvarlabel7: TSctvarlabel
            Left = 1
            Top = 1
            Width = 54
            Height = 17
            AlignHorizontal = laRight
            Variable = adodschequesid_chequeVar
          end
          object Sctvarlabel8: TSctvarlabel
            Left = 57
            Top = -1
            Width = 174
            Height = 17
            WrapText = True
            Variable = adodschequesDp_ClienteVar
          end
          object Sctvarlabel36: TSctvarlabel
            Left = 341
            Top = 1
            Width = 83
            Height = 17
            Variable = adodschequessg_bancoVar
          end
          object Sctvarlabel37: TSctvarlabel
            Left = 425
            Top = 1
            Width = 54
            Height = 17
            Variable = adodschequesnr_contaVar
          end
          object Sctvarlabel38: TSctvarlabel
            Left = 482
            Top = 1
            Width = 45
            Height = 17
            AlignHorizontal = laCenter
            Variable = adodschequesnr_chequeVar
          end
          object Sctvarlabel39: TSctvarlabel
            Left = 529
            Top = 1
            Width = 65
            Height = 17
            Variable = adodschequesdt_emissaoVar
          end
          object Sctvarlabel40: TSctvarlabel
            Left = 595
            Top = 1
            Width = 65
            Height = 17
            Variable = adodschequesdt_vencimentoVar
          end
          object Sctvarlabel41: TSctvarlabel
            Left = 662
            Top = 1
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = adodschequesvl_chequeVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
          end
          object SctVarDocto: TSctvarlabel
            Left = 224
            Top = 1
            Width = 114
            Height = 17
            AlignHorizontal = laCenter
          end
        end
        object PageFooterBand: TSctBand
          Left = 0
          Top = 233
          Width = 777
          Height = 20
          ParentColor = True
          BandName = 'Page Footer'
          Updatelevel = PageFooterBandlevel
          object SctLine4: TSctLine
            Left = 0
            Top = 1
            Width = 726
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
          Top = 268
          Width = 777
          Height = 20
          ParentColor = True
          BandName = 'Report Footer'
          Updatelevel = ReportFooterBandlevel
          object SctLine5: TSctLine
            Left = 570
            Top = 1
            Width = 126
            Height = 5
            AlignVertical = laTop
          end
          object SctTotalvarLabel1: TSctTotalvarLabel
            Left = 620
            Top = 3
            Width = 78
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
          object Sctvarlabel14: TSctvarlabel
            Left = 576
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
            Caption = 'Total:'
          end
        end
        object PageHeaderBandSub: TSctSubBand
          Left = 0
          Top = 162
          Width = 777
          Height = 23
          Color = 16316664
          BandName = 'PageHeaderBandSub'
          Updatelevel = PageHeaderBandlevel
          Band = PageHeaderBand
          Order = 1
          Above = False
          object SctLine2: TSctLine
            Left = 0
            Top = 17
            Width = 726
            Height = 4
          end
          object Sctvarlabel5: TSctvarlabel
            Left = 1
            Top = 2
            Width = 54
            Height = 17
            AlignHorizontal = laRight
            Caption = 'ID Cheque'
          end
          object Sctvarlabel6: TSctvarlabel
            Left = 57
            Top = 2
            Width = 96
            Height = 17
            Caption = 'Cliente'
          end
          object SctLine6: TSctLine
            Left = 0
            Top = 1
            Width = 726
            Height = 4
            AlignVertical = laTop
          end
          object Sctvarlabel30: TSctvarlabel
            Left = 341
            Top = 2
            Width = 83
            Height = 17
            Caption = 'Banco'
          end
          object Sctvarlabel31: TSctvarlabel
            Left = 425
            Top = 2
            Width = 54
            Height = 17
            Caption = 'Conta'
          end
          object Sctvarlabel32: TSctvarlabel
            Left = 482
            Top = 2
            Width = 45
            Height = 17
            AlignHorizontal = laCenter
            Caption = 'Cheque'
          end
          object Sctvarlabel33: TSctvarlabel
            Left = 529
            Top = 2
            Width = 65
            Height = 17
            AlignHorizontal = laCenter
            Caption = 'Emiss'#227'o'
          end
          object Sctvarlabel34: TSctvarlabel
            Left = 595
            Top = 2
            Width = 65
            Height = 17
            AlignHorizontal = laCenter
            Caption = 'Dep'#243'sito'
          end
          object Sctvarlabel35: TSctvarlabel
            Left = 662
            Top = 2
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Valor'
          end
          object Sctvarlabel45: TSctvarlabel
            Left = 233
            Top = 3
            Width = 105
            Height = 17
            AlignHorizontal = laCenter
            Caption = 'CPF / CNPJ'
          end
        end
        object PageHeaderBandSub1: TSctSubBand
          Left = 0
          Top = 74
          Width = 777
          Height = 73
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = True
          ParentFont = False
          BandName = 'PageHeaderBandSub1'
          Updatelevel = PageHeaderBandlevel
          Stretch = True
          Band = PageHeaderBand
          Above = False
          object Sctvarlabel10: TSctvarlabel
            Left = 1
            Top = 1
            Width = 45
            Height = 17
            Caption = 'Border'#244':'
          end
          object Sctvarlabel15: TSctvarlabel
            Left = 48
            Top = 1
            Width = 40
            Height = 17
            Variable = adodsdadosnr_borderoVar
          end
          object Sctvarlabel16: TSctvarlabel
            Left = 95
            Top = 1
            Width = 49
            Height = 17
            Caption = 'Situa'#231#227'o:'
          end
          object Sctvarlabel17: TSctvarlabel
            Left = 146
            Top = 1
            Width = 111
            Height = 17
            Variable = adodsdadosDs_SituacaoVar
          end
          object Sctvarlabel18: TSctvarlabel
            Left = 263
            Top = 1
            Width = 46
            Height = 17
            Caption = 'Emiss'#227'o:'
          end
          object Sctvarlabel19: TSctvarlabel
            Left = 310
            Top = 1
            Width = 65
            Height = 17
            Variable = adodsdadosdt_borderoVar
            DataFormat.DisplayFormat = 'dd/mm/yyyy'
          end
          object Sctvarlabel20: TSctvarlabel
            Left = 380
            Top = 1
            Width = 120
            Height = 17
            Caption = 'Dep'#243'sito/Apresenta'#231#227'o:'
          end
          object Sctvarlabel21: TSctvarlabel
            Left = 503
            Top = 1
            Width = 65
            Height = 17
            Variable = adodsdadosdt_depositoVar
            DataFormat.DisplayFormat = 'dd/mm/yyyy'
          end
          object Sctvarlabel22: TSctvarlabel
            Left = 1
            Top = 19
            Width = 48
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = 'Portador:'
          end
          object Sctvarlabel23: TSctvarlabel
            Left = 50
            Top = 19
            Width = 41
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laRight
            Variable = adodsdadoscd_portadorVar
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel24: TSctvarlabel
            Left = 93
            Top = 19
            Width = 308
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Variable = adodsdadosnm_portadorVar
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel25: TSctvarlabel
            Left = 1
            Top = 37
            Width = 118
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = 'Fornecedor (Factoring):'
          end
          object Sctvarlabel26: TSctvarlabel
            Left = 120
            Top = 37
            Width = 50
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laRight
            Variable = adodsdadoscd_emitenteVar
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel27: TSctvarlabel
            Left = 172
            Top = 37
            Width = 308
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Variable = adodsdadosnm_emitenteVar
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel28: TSctvarlabel
            Left = 1
            Top = 54
            Width = 93
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            WrapText = True
            Caption = 'Observa'#231#245'es:'
          end
          object Sctvarlabel29: TSctvarlabel
            Left = 74
            Top = 54
            Width = 617
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            WrapText = True
            Stretch = True
            Variable = adodsdadosmm_observacaoVar
          end
          object Sctvarlabel9: TSctvarlabel
            Left = 572
            Top = 1
            Width = 27
            Height = 17
            Caption = 'Tipo:'
          end
          object Sctvarlabel42: TSctvarlabel
            Left = 601
            Top = 1
            Width = 93
            Height = 17
            Variable = adodsdadosDs_TipoVar
          end
          object Sctvarlabel43: TSctvarlabel
            Left = 515
            Top = 37
            Width = 41
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Variable = adodsdadospr_taxaVar
            DataFormat.DisplayFormat = '##0.00'
            DataFormat.SuppressNulls = True
            DataFormat.Digits = 2
          end
          object Sctvarlabel44: TSctvarlabel
            Left = 481
            Top = 37
            Width = 32
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = 'Taxa:'
          end
        end
      end
    end
  end
  object ActManCadastro: TActionManager
    ActionBars = <
      item
        Items = <
          item
            Action = ActFirst
            ImageIndex = 19
          end
          item
            Action = ActPrior
            ImageIndex = 12
          end
          item
            Action = ActNext
            ImageIndex = 13
          end
          item
            Action = ActLast
            ImageIndex = 14
          end
          item
            Action = ActInsert
            ImageIndex = 15
            ShortCut = 113
          end
          item
            Action = ActEdit
            ImageIndex = 16
            ShortCut = 115
          end
          item
            Action = ActFind
            ShortCut = 114
          end
          item
            Action = ActDel
            ImageIndex = 17
            ShortCut = 116
          end
          item
            Action = ActReport
            ImageIndex = 18
            ShortCut = 117
          end>
      end
      item
        Items = <
          item
            Action = ActLast
            ImageIndex = 14
          end
          item
            Action = ActNext
            ImageIndex = 13
          end
          item
            Action = ActPrior
            ImageIndex = 12
          end
          item
            Action = ActDel
            ImageIndex = 17
            ShortCut = 116
          end
          item
            Action = ActFind
            ShortCut = 114
          end
          item
            Action = ActEdit
            ImageIndex = 16
            ShortCut = 115
          end
          item
            Action = ActInsert
            ImageIndex = 15
            ShortCut = 113
          end
          item
            Action = ActFirst
            ImageIndex = 19
          end
          item
            Action = ActReport
            ImageIndex = 18
            ShortCut = 117
          end>
      end
      item
        Items = <
          item
            Action = ActFirst
            ImageIndex = 12
          end
          item
            Action = ActPrior
            ImageIndex = 13
          end
          item
            Action = ActNext
            ImageIndex = 14
          end
          item
            Action = ActLast
            ImageIndex = 15
          end>
      end
      item
      end
      item
        Items = <
          item
            Action = ActInsert
            ImageIndex = 16
            ShortCut = 113
          end
          item
            Action = ActEdit
            ImageIndex = 17
            ShortCut = 115
          end
          item
            Action = ActFind
            ImageIndex = 18
            ShortCut = 114
          end
          item
            Action = ActDel
            ImageIndex = 19
            ShortCut = 116
          end
          item
            Action = ActReport
            ImageIndex = 20
            ShortCut = 117
          end>
      end
      item
        Items = <
          item
            Action = ActFirst
            ImageIndex = 12
          end
          item
            Action = ActPrior
            ImageIndex = 13
          end
          item
            Action = ActNext
            ImageIndex = 14
          end
          item
            Action = ActLast
            ImageIndex = 15
          end>
      end
      item
        Items = <
          item
            Action = ActFirst
            ImageIndex = 12
          end
          item
            Action = ActPrior
            ImageIndex = 13
          end
          item
            Action = ActNext
            ImageIndex = 14
          end
          item
            Action = ActLast
            ImageIndex = 15
          end
          item
            Caption = '-'
          end
          item
            Action = ActInsert
            ImageIndex = 16
            ShortCut = 113
          end
          item
            Action = ActFind
            ImageIndex = 17
            ShortCut = 114
          end
          item
            Action = ActEdit
            ImageIndex = 18
            ShortCut = 115
          end
          item
            Action = ActDel
            ImageIndex = 19
            ShortCut = 116
          end
          item
            Action = ActReport
            ImageIndex = 20
            ShortCut = 117
          end
          item
            Caption = '-'
          end
          item
            Action = ActCheques
            ImageIndex = 42
            ShortCut = 118
          end
          item
            Action = ActBaixa
            ImageIndex = 22
            ShortCut = 119
          end>
        ActionBar = ActToolBDatabase
      end
      item
      end
      item
        Items = <
          item
            Action = ActChequeDel
            ImageIndex = 19
          end
          item
            Action = ActChequeDevolvido
            ImageIndex = 21
          end>
        ActionBar = ActToolBParcela
      end>
    Images = FrmMain.ImgLstMenu
    Left = 622
    Top = 43
    StyleName = 'XP Style'
    object ActFirst: TAction
      Category = '1-Navigator'
      Hint = 'Primeiro Registro'
      ImageIndex = 12
      OnExecute = ActFirstExecute
    end
    object ActPrior: TAction
      Category = '1-Navigator'
      Hint = 'Registro Anterior'
      ImageIndex = 13
      OnExecute = ActPriorExecute
    end
    object ActNext: TAction
      Category = '1-Navigator'
      Hint = 'Pr'#243'ximo Registro'
      ImageIndex = 14
      OnExecute = ActNextExecute
    end
    object ActLast: TAction
      Category = '1-Navigator'
      Hint = #218'ltimo Registro'
      ImageIndex = 15
      OnExecute = ActLastExecute
    end
    object ActInsert: TAction
      Category = '2-Database'
      Hint = 'Incluir um Novo Registro'
      ImageIndex = 16
      ShortCut = 113
      OnExecute = ActInsertExecute
    end
    object ActFind: TAction
      Category = '2-Database'
      Hint = 'Consultar Registros'
      ImageIndex = 17
      ShortCut = 114
      OnExecute = ActFindExecute
    end
    object ActEdit: TAction
      Category = '2-Database'
      Hint = 'Alterar o Registro Corrente'
      ImageIndex = 18
      ShortCut = 115
      OnExecute = ActEditExecute
    end
    object ActDel: TAction
      Category = '2-Database'
      Hint = 'Excluir este Registro'
      ImageIndex = 19
      ShortCut = 116
      OnExecute = ActDelExecute
    end
    object ActReport: TAction
      Category = '2-Database'
      Hint = 'Relat'#243'rio'
      ImageIndex = 20
      ShortCut = 117
      OnExecute = ActReportExecute
    end
    object ActCheques: TAction
      Category = '2-Database'
      Hint = 'Selecionar Cheques'
      ImageIndex = 42
      ShortCut = 118
      OnExecute = ActChequesExecute
    end
    object ActBaixa: TAction
      Category = '2-Database'
      Hint = 'Baixar todos os cheques'
      ImageIndex = 22
      ShortCut = 119
      OnExecute = ActBaixaExecute
    end
    object ActChequeDel: TAction
      Category = '3-Cheque'
      Hint = 'Excluir cheque do border'#244
      ImageIndex = 19
      OnExecute = ActChequeDelExecute
    end
    object ActChequeDevolvido: TAction
      Category = '3-Cheque'
      Hint = 'Marcar cheque como Devolvido'
      ImageIndex = 21
      OnExecute = ActChequeDevolvidoExecute
    end
  end
  object ADODsDados: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    OnCalcFields = ADODsDadosCalcFields
    CommandText = 'select'#13#10'  CB.Cd_Filial, CB.Nr_Bordero, CB.Dt_Bordero, CB.Fl_Bordero, CB.Tp_Bordero,'#13#10'  CB.Dt_Deposito, CB.Cd_Portador, P.Nm_Portador, CB.Cd_Emitente, E.Nm_Emitente,'#13#10'  CB.Pr_Taxa, CB.Mm_Observacao'#13#10#13#10'from'#13#10'  Cheque_Bordero CB'#13#10#13#10'left join'#13#10'  Portador P'#13#10'on'#13#10'  P.Cd_Portador = CB.Cd_Portador'#13#10#13#10'left join'#13#10'  Emitente E'#13#10'on'#13#10'  E.Cd_Emitente = CB.Cd_Emitente'#13#10#13#10'where'#13#10'  Cd_Filial  = :Cd_Filial and'#13#10'  Nr_Bordero = :Nr_Bordero'
    Parameters = <
      item
        Name = 'Cd_Filial'
        DataType = ftSmallint
        Size = -1
        Value = nil?
      end
      item
        Name = 'Nr_Bordero'
        DataType = ftInteger
        Size = -1
        Value = nil?
      end>
    Left = 416
    Top = 5
    object ADODsDadoscd_filial: TSmallintField
      FieldName = 'cd_filial'
    end
    object ADODsDadosnr_bordero: TIntegerField
      FieldName = 'nr_bordero'
    end
    object ADODsDadosdt_bordero: TDateTimeField
      FieldName = 'dt_bordero'
    end
    object ADODsDadosfl_bordero: TStringField
      FieldName = 'fl_bordero'
      FixedChar = True
      Size = 1
    end
    object ADODsDadostp_bordero: TStringField
      FieldName = 'tp_bordero'
      FixedChar = True
      Size = 1
    end
    object ADODsDadosdt_deposito: TDateTimeField
      FieldName = 'dt_deposito'
    end
    object ADODsDadoscd_portador: TSmallintField
      FieldName = 'cd_portador'
    end
    object ADODsDadosnm_portador: TStringField
      FieldName = 'nm_portador'
      Size = 50
    end
    object ADODsDadoscd_emitente: TIntegerField
      FieldName = 'cd_emitente'
    end
    object ADODsDadosnm_emitente: TStringField
      FieldName = 'nm_emitente'
      Size = 50
    end
    object ADODsDadospr_taxa: TBCDField
      FieldName = 'pr_taxa'
      Precision = 7
      Size = 2
    end
    object ADODsDadosmm_observacao: TMemoField
      FieldName = 'mm_observacao'
      BlobType = ftMemo
    end
    object ADODsDadosDs_Situacao: TStringField
      FieldKind = fkCalculated
      FieldName = 'Ds_Situacao'
      Calculated = True
    end
    object ADODsDadosDs_Tipo: TStringField
      FieldKind = fkCalculated
      FieldName = 'Ds_Tipo'
      Calculated = True
    end
  end
  object ADOCmdDados: TMultADOCMD
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLInsert.Strings = (
      'insert into Cheque_Bordero( Cd_Filial, Nr_Bordero, Dt_Bordero, Fl_Bordero,'
      '  Tp_Bordero, Dt_Deposito, Cd_Portador, Cd_Emitente, Pr_Taxa, Mm_Observacao )'
      'values( :Cd_Filial, :Nr_Bordero, :Dt_Bordero, ''''1'''','
      '  :Tp_Bordero, :Dt_Deposito, :Cd_Portador, :Cd_Emitente, :Pr_Taxa,'
      '  :Mm_Observacao )'
    )
    SQLUpdate.Strings = (
      'update'
      '  Cheque_Bordero'
      ''
      'set'
      '  Dt_Bordero    = :Dt_Bordero,'
      '  Tp_Bordero    = :Tp_Bordero,'
      '  Dt_Deposito   = :Dt_Deposito,'
      '  Cd_Portador   = :Cd_Portador,'
      '  Cd_Emitente   = :Cd_Emitente,'
      '  Pr_Taxa       = :Pr_Taxa,'
      '  Mm_Observacao = :Mm_Observacao'
      ''
      'where'
      '  Cd_Filial     = :Cd_Filial and'
      '  Nr_Bordero    = :Nr_Bordero'
      ''
    )
    SQLDelete.Strings = (
      '-- Cheques'
      'update'
      '  Cheque'
      ''
      'set'
      '  Fl_Cheque = ''''1'''
      ''
      'from'
      '  Cheque_Deposito'
      ''
      'where'
      '  Cheque.Cd_Filial = vCd_Filial and'
      ''
      '  Cheque_Deposito.Cd_Filial  = Cheque.Cd_Filial and'
      '  Cheque_Deposito.Id_Cheque  = Cheque.Id_Cheque and'
      '  Cheque_Deposito.Nr_Bordero = vNr_Bordero;'
      ''
      '-- Depositos'
      'delete from'
      '  Cheque_Deposito'
      ''
      'where'
      '  Cd_Filial  = vCd_Filial and'
      '  Nr_Bordero = vNr_Bordero;'
      ''
      '-- Bordero'
      'delete from'
      '  Cheque_Bordero'
      ''
      'where'
      '  Cd_Filial  = vCd_Filial and'
      '  Nr_Bordero = vNr_Bordero;'
    )
    SQLOther0.Strings = (
      '/* Excluir o cheque */'
      'delete from'
      '  Cheque_Deposito'
      ''
      'where'
      '  Cd_Filial  = :Cd_Filial and'
      '  Nr_Bordero = :Nr_Bordero and'
      '  Id_Cheque  = :Id_Cheque;'
      ''
      'update'
      '  Cheque'
      ''
      'set'
      '  Fl_Cheque = ''''1'''
      ''
      'where'
      '  Cd_Filial  = :Cd_Filial and'
      '  Id_Cheque  = :Id_Cheque;'
      ''
    )
    SQLOther1.Strings = (
      '/* Muda a situa'#231#227'o do cheque */'
      'update'
      '  Cheque'
      ''
      'set'
      '  Fl_Cheque = ''''9'''
      ''
      'from'
      '  Cheque_Deposito'
      ''
      'where'
      '  Cheque_Deposito.Cd_Filial  = :Cd_Filial and'
      '  Cheque_Deposito.Nr_Bordero = :Nr_Bordero and'
      '  Cheque_Deposito.Id_Cheque  = Cheque.Id_Cheque;'
      ''
      '/* Data da compensa'#231#227'o */'
      'update'
      '  Cheque_Deposito'
      ''
      'set'
      '  Dt_Compensacao = :Dt_Compensacao'
      ''
      'where'
      '  Cd_Filial  = :Cd_Filial and'
      '  Nr_Bordero = :Nr_Bordero;'
      ''
      '/* Muda o Borer'#244' */'
      'update'
      '  Cheque_Bordero'
      ''
      'set'
      '  Fl_Bordero = ''''9'''
      ''
      'where'
      '  Cd_Filial  = :Cd_Filial and'
      '  Nr_Bordero = :Nr_Bordero;'
    )
    SQLOther2.Strings = (
      '/* Marcar cheque como devolvido */'
      'update'
      '  Cheque'
      ''
      'set'
      '  Fl_Cheque = ''''2'''
      ''
      'where'
      '  Cd_Filial = :Cd_Filial and'
      '  Id_Cheque = :Id_Cheque;'
      ''
      'update'
      '  Cheque_Deposito'
      ''
      'set'
      '  Cd_Alinea    = :Cd_Alinea,'
      '  Dt_Devolucao = :Dt_Devolucao'
      ''
      'where'
      '  Cd_Filial  = :Cd_Filial and'
      '  Nr_Bordero = :Nr_Bordero and'
      '  Id_Cheque  = :Id_Cheque;'
    )
    Left = 446
    Top = 5
  end
  object ADODsNavegar: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = '-- First'#13#10'select top 1'#13#10'  Nr_Bordero'#13#10#13#10'from'#13#10'  Cheque_Bordero'#13#10#13#10'where'#13#10'  Cd_Filial = :Cd_Filial'#13#10#13#10'order by'#13#10'  Nr_Bordero'#13#10
    Parameters = <
      item
        Name = 'Cd_Filial'
        DataType = ftSmallint
        Size = -1
        Value = nil?
      end>
    SQLPrimary.Strings = (
      'select'
      '  max( Nr_Bordero ) + 1 as Nr_Bordero'
      ''
      'from'
      '  Cheque_Bordero'
      ''
      'where'
      '  Cd_Filial = :Cd_Filial'
    )
    SQLOther0.Strings = (
      '-- First'
      'select top 1'
      '  Nr_Bordero'
      ''
      'from'
      '  Cheque_Bordero'
      ''
      'where'
      '  Cd_Filial = :Cd_Filial'
      ''
      'order by'
      '  Nr_Bordero'
    )
    SQLOther1.Strings = (
      '-- Prior'
      'select top 1'
      '  Nr_Bordero'
      ''
      'from'
      '  Cheque_Bordero'
      ''
      'where'
      '  Cd_Filial  = :Cd_Filial and'
      '  Nr_Bordero < :Nr_Bordero'
      ''
      'order by'
      '  Nr_Bordero desc'
    )
    SQLOther2.Strings = (
      '-- Next'
      'select top 1'
      '  Nr_Bordero'
      ''
      'from'
      '  Cheque_Bordero'
      ''
      'where'
      '  Cd_Filial  = :Cd_Filial and'
      '  Nr_Bordero > :Nr_Bordero'
      ''
      'order by'
      '  Nr_Bordero'
    )
    SQLOther3.Strings = (
      '-- Last'
      'select top 1'
      '  Nr_Bordero'
      ''
      'from'
      '  Cheque_Bordero'
      ''
      'where'
      '  Cd_Filial = :Cd_Filial'
      ''
      'order by'
      '  Nr_Bordero desc'
    )
    Left = 476
    Top = 5
    object ADODsNavegarnr_bordero: TIntegerField
      FieldName = 'nr_bordero'
    end
  end
  object ADODsCheques: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    OnCalcFields = ADODsChequesCalcFields
    CommandText = 'select'#13#10'  C.Id_Cheque, C.Cd_Emitente, E.Nm_Emitente, C.Cd_Banco,'#13#10'  C.Cd_Agencia, C.Nr_Conta, C.Nr_Cheque, C.Vl_Cheque,'#13#10'  C.Dt_Emissao, C.Dt_Vencimento, B.Sg_Banco, C.Nm_Cliente,'#13#10'  Nr_Documento = '#13#10'    case'#13#10'      when C.Nr_Documento = null or C.Nr_Documento = '''''' then E.Nr_Documento'#13#10'      else C.Nr_Documento'#13#10'    end'#13#10#13#10'from'#13#10'  Cheque_Deposito CD'#13#10#13#10'inner join'#13#10'  Cheque C'#13#10'on'#13#10'  C.Cd_Filial = CD.Cd_Filial and'#13#10'  C.Id_Cheque = CD.Id_Cheque'#13#10#13#10'inner join'#13#10'  Emitente E'#13#10'on'#13#10'  E.Cd_Emitente = C.Cd_Emitente'#13#10#13#10'inner join'#13#10'  Banco B'#13#10'on'#13#10'  B.Cd_Banco = C.Cd_Banco'#13#10#13#10'where'#13#10'  CD.Cd_Filial  = :Cd_Filial and'#13#10'  CD.Nr_Bordero = :Nr_Bordero'#13#10#13#10'order by'#13#10'  CD.Id_Cheque'
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
        Name = 'Nr_Bordero'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = nil?
      end>
    Left = 551
    Top = 5
    object ADODsChequesid_cheque: TIntegerField
      DisplayLabel = 'ID Cheque'
      FieldName = 'id_cheque'
    end
    object ADODsChequescd_emitente: TIntegerField
      FieldName = 'cd_emitente'
    end
    object ADODsChequesnm_emitente: TStringField
      DisplayLabel = 'Cliente'
      FieldName = 'nm_emitente'
      Size = 50
    end
    object ADODsChequescd_banco: TStringField
      FieldName = 'cd_banco'
      FixedChar = True
      Size = 3
    end
    object ADODsChequescd_agencia: TStringField
      FieldName = 'cd_agencia'
      FixedChar = True
      Size = 4
    end
    object ADODsChequesnr_conta: TStringField
      DisplayLabel = 'Conta'
      FieldName = 'nr_conta'
      Size = 10
    end
    object ADODsChequesnr_cheque: TIntegerField
      DisplayLabel = 'Cheque'
      FieldName = 'nr_cheque'
    end
    object ADODsChequesvl_cheque: TBCDField
      DisplayLabel = 'Valor'
      FieldName = 'vl_cheque'
      DisplayFormat = '#,##0.00'
      Precision = 12
      Size = 2
    end
    object ADODsChequesdt_emissao: TDateTimeField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'dt_emissao'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object ADODsChequesdt_vencimento: TDateTimeField
      DisplayLabel = 'Dep'#243'sito'
      FieldName = 'dt_vencimento'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object ADODsChequessg_banco: TStringField
      DisplayLabel = 'Banco'
      FieldName = 'sg_banco'
    end
    object ADODsChequesDp_Cliente: TStringField
      FieldKind = fkCalculated
      FieldName = 'Dp_Cliente'
      Size = 110
      Calculated = True
    end
    object ADODsChequesnm_cliente: TStringField
      FieldName = 'nm_cliente'
      Size = 50
    end
    object ADODsChequesNr_Documento: TStringField
      FieldName = 'Nr_Documento'
      ReadOnly = True
      Size = 14
    end
  end
  object DsCheques: TDataSource
    DataSet = ADODsCheques
    Left = 523
    Top = 5
  end
  object DsDados: TDataSource
    DataSet = ADODsDados
    Left = 385
    Top = 5
  end
end
