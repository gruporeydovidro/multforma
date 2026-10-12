object FrmReceber_Resumo: TFrmReceber_Resumo
  Left = 220
  Top = 192
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Resumo de Recebimento'
  ClientHeight = 606
  ClientWidth = 988
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
    Height = 606
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 967
    Height = 606
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 1
      Top = 574
      Width = 960
      Height = 5
      Shape = bsTopLine
    end
    object Label1: TLabel
      Left = 5
      Top = 30
      Width = 42
      Height = 13
      Caption = 'Resumo:'
    end
    object Label3: TLabel
      Left = 172
      Top = 31
      Width = 43
      Height = 13
      Caption = 'Portador:'
    end
    object SbPortador: TSpeedButton
      Left = 212
      Top = 46
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
    object SbArquivo: TSpeedButton
      Left = 352
      Top = 85
      Width = 23
      Height = 19
      Hint = 'Seleciona Arquivo'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbArquivoClick
    end
    object Label2: TLabel
      Left = 585
      Top = 31
      Width = 66
      Height = 13
      Caption = 'Observa'#231#245'es:'
    end
    object Bevel1: TBevel
      Left = 1
      Top = 109
      Width = 892
      Height = 5
      Shape = bsTopLine
    end
    object Label4: TLabel
      Left = 6
      Top = 113
      Width = 101
      Height = 13
      Caption = 'Registros do Arquivo:'
    end
    object Label5: TLabel
      Left = 5
      Top = 503
      Width = 73
      Height = 13
      Caption = 'Nosso N'#250'mero:'
      FocusControl = DbEdtNr_DoctoBanco
    end
    object Label6: TLabel
      Left = 130
      Top = 503
      Width = 140
      Height = 13
      Caption = 'C'#243'digo / Data de Ocorr'#234'ncia:'
      FocusControl = DbEdtDt_Ocorrencia
    end
    object Label7: TLabel
      Left = 272
      Top = 503
      Width = 79
      Height = 13
      Caption = 'Tarifa Cobran'#231'a:'
      FocusControl = DbEdtVl_TarifaCobranca
    end
    object Label8: TLabel
      Left = 355
      Top = 503
      Width = 50
      Height = 13
      Caption = 'Despesas:'
      FocusControl = DbEdtVl_Despesas
    end
    object Label9: TLabel
      Left = 430
      Top = 503
      Width = 67
      Height = 13
      Caption = 'Juros Cart'#243'rio:'
      FocusControl = DbEdtVl_JurosCartorio
    end
    object Label10: TLabel
      Left = 505
      Top = 503
      Width = 29
      Height = 13
      Caption = 'Multa:'
      FocusControl = DbEdtVl_Multa
    end
    object Label11: TLabel
      Left = 580
      Top = 503
      Width = 56
      Height = 13
      Caption = 'Abatimento:'
      FocusControl = DbEdtVl_Abatimento
    end
    object Label12: TLabel
      Left = 655
      Top = 503
      Width = 49
      Height = 13
      Caption = 'Desconto:'
      FocusControl = DbEdtVl_Desconto
    end
    object Label14: TLabel
      Left = 5
      Top = 538
      Width = 28
      Height = 13
      Caption = 'Juros:'
      FocusControl = DbEdtVl_Juros
    end
    object Label15: TLabel
      Left = 83
      Top = 538
      Width = 41
      Height = 13
      Caption = 'Cr'#233'ditos:'
      FocusControl = DbEdtVl_Creditos
    end
    object Label16: TLabel
      Left = 158
      Top = 538
      Width = 102
      Height = 13
      Caption = 'Motivo da Devolu'#231#227'o'
      FocusControl = DbEdtDs_Motivo
    end
    object Label13: TLabel
      Left = 469
      Top = 538
      Width = 33
      Height = 13
      Caption = 'Fatura:'
      FocusControl = DbEdtNr_Fatura
    end
    object Label17: TLabel
      Left = 639
      Top = 538
      Width = 101
      Height = 13
      Caption = 'Total do Resumo:'
      FocusControl = DbEdtVl_Resumo
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
      Width = 965
      Height = 26
      Align = alTop
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 0
      object PnlDatabase: TPanel
        Left = 0
        Top = 0
        Width = 965
        Height = 26
        Align = alClient
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 0
        object ActToolBDatabase: TActionToolBar
          Left = 0
          Top = 0
          Width = 965
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
        end
      end
    end
    object BitBtnConfirm: TBitBtn
      Left = 794
      Top = 579
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 1
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 482 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 880
      Top = 579
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 2
      OnClick = BitBtnCancelClick
      Glyph.Data = {binary 482 bytes}
      NumGlyphs = 2
    end
    object EdtNr_Resumo: TCurrencyEdit
      Left = 5
      Top = 46
      Width = 50
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      Color = clSilver
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
    end
    object EdtDt_Resumo: TLabeledEdit
      Left = 59
      Top = 46
      Width = 110
      Height = 19
      TabStop = False
      Color = clSilver
      EditLabel.Width = 26
      EditLabel.Height = 13
      EditLabel.Caption = 'Data:'
      EditLabel.Font.Charset = DEFAULT_CHARSET
      EditLabel.Font.Color = clWindowText
      EditLabel.Font.Height = -11
      EditLabel.Font.Name = 'MS Sans Serif'
      EditLabel.Font.Style = []
      EditLabel.ParentFont = False
      EditLabel.Transparent = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
      Text = '20/20/2022 20:20'
    end
    object EdtCd_Portador: TCurrencyEdit
      Left = 172
      Top = 46
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '####'
      TabOrder = 5
      OnExit = EdtCd_PortadorExit
      OnKeyDown = EdtCd_PortadorKeyDown
    end
    object EdtNm_Portador: TEdit
      Left = 236
      Top = 46
      Width = 291
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
    object EdtNm_Arquivo: TLabeledEdit
      Left = 5
      Top = 85
      Width = 345
      Height = 19
      EditLabel.Width = 85
      EditLabel.Height = 13
      EditLabel.Caption = 'Nome do Arquivo:'
      EditLabel.Transparent = True
      TabOrder = 7
      OnKeyDown = EdtCd_PortadorKeyDown
    end
    object EdtDs_Processado: TLabeledEdit
      Left = 380
      Top = 85
      Width = 121
      Height = 19
      TabStop = False
      Color = clSilver
      EditLabel.Width = 98
      EditLabel.Height = 13
      EditLabel.Caption = 'Estado do Processo:'
      EditLabel.Font.Charset = DEFAULT_CHARSET
      EditLabel.Font.Color = clWindowText
      EditLabel.Font.Height = -11
      EditLabel.Font.Name = 'MS Sans Serif'
      EditLabel.Font.Style = []
      EditLabel.ParentFont = False
      EditLabel.Transparent = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 8
    end
    object EdtDt_Processamento: TLabeledEdit
      Left = 506
      Top = 85
      Width = 75
      Height = 19
      TabStop = False
      Color = clSilver
      EditLabel.Width = 76
      EditLabel.Height = 13
      EditLabel.Caption = 'Processado em:'
      EditLabel.Font.Charset = DEFAULT_CHARSET
      EditLabel.Font.Color = clWindowText
      EditLabel.Font.Height = -11
      EditLabel.Font.Name = 'MS Sans Serif'
      EditLabel.Font.Style = []
      EditLabel.ParentFont = False
      EditLabel.Transparent = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 9
      Text = '20/20/2022'
    end
    object MmObservacao: TMemo
      Left = 585
      Top = 46
      Width = 372
      Height = 58
      ScrollBars = ssVertical
      TabOrder = 10
    end
    object DbGParcela: TDBGrid
      Left = 6
      Top = 128
      Width = 952
      Height = 369
      Hint = 'Pressione <ESPACO> para marcar/desmarcar a baixa'#13#10#13#10'De um duplo-click para abrir o Contas '#224' Receber selecionado.'
      DataSource = DsParcela
      FixedColor = clSilver
      Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentShowHint = False
      ShowHint = True
      TabOrder = 11
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = DbGParcelaDblClick
      OnEnter = DbGParcelaEnter
      OnExit = DbGParcelaExit
      OnKeyPress = DbGParcelaKeyPress
      Columns = <
        item
          Alignment = taRightJustify
          Expanded = False
          FieldName = 'Dp_Receber'
          Title.Alignment = taRightJustify
          Width = 69
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Dp_Emitente'
          Width = 281
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Dp_Ocorrencia'
          Width = 143
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Dt_Vencimento'
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Dt_Ocorrencia'
          Title.Alignment = taCenter
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nr_Atraso'
          Title.Alignment = taRightJustify
          Width = 39
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'vl_sistema'
          Title.Alignment = taRightJustify
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Vl_Parcela'
          Title.Alignment = taRightJustify
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Vl_Cobrado'
          Title.Alignment = taRightJustify
          Width = 75
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Dp_Baixa'
          Title.Alignment = taCenter
          Width = 39
          Visible = True
        end>
    end
    object DbEdtNr_DoctoBanco: TDBEdit
      Left = 5
      Top = 518
      Width = 122
      Height = 19
      TabStop = False
      AutoSize = False
      DataField = 'Nr_DoctoBanco'
      DataSource = DsParcela
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 12
    end
    object DbEdtDt_Ocorrencia: TDBEdit
      Left = 156
      Top = 518
      Width = 70
      Height = 19
      TabStop = False
      AutoSize = False
      DataField = 'Dt_Ocorrencia'
      DataSource = DsParcela
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 13
    end
    object DbEdtVl_TarifaCobranca: TDBEdit
      Left = 272
      Top = 518
      Width = 70
      Height = 19
      TabStop = False
      AutoSize = False
      DataField = 'Vl_TarifaCobranca'
      DataSource = DsParcela
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 14
    end
    object DbEdtVl_Despesas: TDBEdit
      Left = 355
      Top = 518
      Width = 70
      Height = 19
      TabStop = False
      AutoSize = False
      DataField = 'Vl_Despesas'
      DataSource = DsParcela
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 15
    end
    object DbEdtVl_JurosCartorio: TDBEdit
      Left = 430
      Top = 518
      Width = 70
      Height = 19
      TabStop = False
      AutoSize = False
      DataField = 'Vl_JurosCartorio'
      DataSource = DsParcela
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 16
    end
    object DbEdtVl_Multa: TDBEdit
      Left = 505
      Top = 518
      Width = 70
      Height = 19
      TabStop = False
      AutoSize = False
      DataField = 'Vl_Multa'
      DataSource = DsParcela
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 17
    end
    object DbEdtVl_Abatimento: TDBEdit
      Left = 580
      Top = 518
      Width = 70
      Height = 19
      TabStop = False
      AutoSize = False
      DataField = 'Vl_Abatimento'
      DataSource = DsParcela
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 18
    end
    object DbEdtVl_Desconto: TDBEdit
      Left = 655
      Top = 518
      Width = 70
      Height = 19
      TabStop = False
      AutoSize = False
      DataField = 'Vl_Desconto'
      DataSource = DsParcela
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 19
    end
    object DbEdtVl_Juros: TDBEdit
      Left = 5
      Top = 553
      Width = 70
      Height = 19
      TabStop = False
      AutoSize = False
      DataField = 'Vl_Juros'
      DataSource = DsParcela
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 20
    end
    object DbEdtVl_Creditos: TDBEdit
      Left = 83
      Top = 553
      Width = 70
      Height = 19
      TabStop = False
      AutoSize = False
      DataField = 'Vl_Creditos'
      DataSource = DsParcela
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 21
    end
    object DbEdtDs_Motivo: TDBEdit
      Left = 158
      Top = 553
      Width = 308
      Height = 19
      TabStop = False
      AutoSize = False
      DataField = 'Ds_Motivo'
      DataSource = DsParcela
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 22
    end
    object DbEdtNr_Fatura: TDBEdit
      Left = 469
      Top = 553
      Width = 70
      Height = 19
      TabStop = False
      AutoSize = False
      DataField = 'Nr_Fatura'
      DataSource = DsParcela
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 23
    end
    object DbEdtVl_Resumo: TDBEdit
      Left = 639
      Top = 553
      Width = 99
      Height = 19
      TabStop = False
      AutoSize = False
      DataField = 'Vl_Resumo'
      DataSource = DsDados
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 24
    end
    object DbEdtCd_Ocorrencia: TDBEdit
      Left = 130
      Top = 518
      Width = 24
      Height = 19
      TabStop = False
      AutoSize = False
      DataField = 'Cd_Ocorrencia'
      DataSource = DsParcela
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 25
    end
    object DBEdit1: TDBEdit
      Left = 740
      Top = 553
      Width = 32
      Height = 19
      TabStop = False
      AutoSize = False
      DataField = 'Nr_Recebimentos'
      DataSource = DsDados
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 26
    end
  end
  object SctReport: TSctReport
    Left = 708
    Top = 8
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
    TabOrder = 2
    Visible = False
    Minimized = True
    Prompt = True
    AutoRun = False
    SuppressStatus = False
    PixelsPerInch = 96
    STop = 71
    SLeft = 60
    SWidth = 930
    SHeight = 548
    MTop = 8
    MLeft = 708
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
      Description = 'Resumo de Recebimento'
      CloseDataSet = False
      DataRange = drAllRecords
      OmitLastPgFt = False
      Head = SctBand8
      Detail = SctDetailVendaPeriodo
      Foot = SctBand12
      PageHead = SctBand9
      PageFoot = SctBand11
      DataSource = DsParcela
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
      object DataSourceGuide1: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = SctLevel10
        DataSource = DsParcela
      end
      object adodsparcelaDt_OcorrenciaVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Dt_Ocorrencia'
        DataSource = DsParcela
        UpdateLevel = SctLevel10
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsparcelaVl_ParcelaVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Vl_Parcela'
        DataSource = DsParcela
        UpdateLevel = SctLevel10
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsparcelaVl_CobradoVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Vl_Cobrado'
        DataSource = DsParcela
        UpdateLevel = SctLevel10
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsparcelaDp_ReceberVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Dp_Receber'
        DataSource = DsParcela
        UpdateLevel = SctLevel10
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsparcelaDp_OcorrenciaVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Dp_Ocorrencia'
        DataSource = DsParcela
        UpdateLevel = SctLevel10
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsparcelaDp_BaixaVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Dp_Baixa'
        DataSource = DsParcela
        UpdateLevel = SctLevel10
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsparcelaDp_EmitenteVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Dp_Emitente'
        DataSource = DsParcela
        UpdateLevel = SctLevel10
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsparcelavl_sistemaVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'vl_sistema'
        DataSource = DsParcela
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
        DataSource = DsDados
      end
      object adodsdadosnr_resumoVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'nr_resumo'
        DataSource = DsDados
        UpdateLevel = SctLevel10
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsdadosdt_resumoVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'dt_resumo'
        DataSource = DsDados
        UpdateLevel = SctLevel10
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
        UpdateLevel = SctLevel10
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
        UpdateLevel = SctLevel10
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsdadosnm_arquivoVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'nm_arquivo'
        DataSource = DsDados
        UpdateLevel = SctLevel10
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsdadosdt_processamentoVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'dt_processamento'
        DataSource = DsDados
        UpdateLevel = SctLevel10
        AutoVar = False
        ID = vidAutoDataVar
      end
      object DataSourceGuide3: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = SctLevel10
        DataSource = DmMaster.DsUsuario
      end
      object DataSourceGuide4: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = SctLevel10
        DataSource = DmMaster.DsFilial
      end
      object adodsfilialDp_FilialVar: TSctDBVar
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
      object TotalOfVl_Parcela: TSctTotalvar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        Variable = adodsparcelaVl_ParcelaVar
        UpdateLevel = SctLevel10
        AutoVar = False
        ID = vidTotalVar
      end
      object TotalOfVl_Cobrado: TSctTotalvar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        Variable = adodsparcelaVl_CobradoVar
        UpdateLevel = SctLevel10
        AutoVar = False
        ID = vidTotalVar
      end
      object TotalOfvl_sistema: TSctTotalvar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        Variable = adodsparcelavl_sistemaVar
        UpdateLevel = SctLevel10
        AutoVar = False
        ID = vidTotalVar
      end
      object DataSourceGuide5: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = SctLevel10
        DataSource = FrmReceber.DsParcela
      end
      object DataSourceGuide6: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = SctLevel10
        DataSource = FrmReceber.DsHistorico
      end
      object DataSourceGuide7: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = SctLevel10
        DataSource = FrmPortador_Find.DsFind
      end
      object adodsparcelaNr_FaturaVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Nr_Fatura'
        DataSource = DsParcela
        UpdateLevel = SctLevel10
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsparcelaDt_VencimentoVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Dt_Vencimento'
        DataSource = DsParcela
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
        DataSource = DmMaster.DsConexao
      end
      object DataSourceGuide9: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = SctLevel10
        DataSource = DmMaster.DsConecadoMes
      end
      object DataSourceGuide10: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = DataLevel
        DataSource = DsResumo
      end
      object DataLevel: TSctLevel
        Left = 0
        Top = 0
        Width = 0
        Height = 0
      end
      object DataHeaderLevel: TSctLevel
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        IsHeader = True
      end
      object adodsresumoVl_SistemaVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Vl_Sistema'
        DataSource = DsResumo
        UpdateLevel = DataLevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsresumoNr_SistemaVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Nr_Sistema'
        DataSource = DsResumo
        UpdateLevel = DataLevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsresumoVl_ArquivoVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Vl_Arquivo'
        DataSource = DsResumo
        UpdateLevel = DataLevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsresumoNr_ArquivoVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Nr_Arquivo'
        DataSource = DsResumo
        UpdateLevel = DataLevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsresumoVl_RecebidoVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Vl_Recebido'
        DataSource = DsResumo
        UpdateLevel = DataLevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsresumoNr_RecebidoVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Nr_Recebido'
        DataSource = DsResumo
        UpdateLevel = DataLevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsresumoDs_OcorrenciaVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Ds_Ocorrencia'
        DataSource = DsResumo
        UpdateLevel = DataLevel
        AutoVar = False
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
          Caption = 'Resumo de Recebimento'
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
      end
      object SctDetailVendaPeriodo: TSctBand
        Left = 0
        Top = 187
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
        object Sctvarlabel1: TSctvarlabel
          Left = 1
          Top = 1
          Width = 50
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          AlignHorizontal = laRight
          Variable = adodsparcelaDp_ReceberVar
        end
        object Sctvarlabel2: TSctvarlabel
          Left = 53
          Top = 1
          Width = 237
          Height = 17
          WrapText = True
          Stretch = True
          Variable = adodsparcelaDp_EmitenteVar
        end
        object Sctvarlabel5: TSctvarlabel
          Left = 705
          Top = 1
          Width = 31
          Height = 17
          AlignHorizontal = laCenter
          Variable = adodsparcelaDp_BaixaVar
          DataFormat.SuppressNulls = True
        end
        object Sctvarlabel22: TSctvarlabel
          Left = 348
          Top = 1
          Width = 74
          Height = 17
          WrapText = True
          Stretch = True
          Variable = adodsparcelaDp_OcorrenciaVar
        end
        object Sctvarlabel24: TSctvarlabel
          Left = 639
          Top = 1
          Width = 65
          Height = 17
          AlignHorizontal = laRight
          Variable = adodsparcelaVl_CobradoVar
          DataFormat.DisplayFormat = '#,##0.00'
          DataFormat.Digits = 2
        end
        object Sctvarlabel25: TSctvarlabel
          Left = 567
          Top = 1
          Width = 71
          Height = 17
          AlignHorizontal = laRight
          Variable = adodsparcelaVl_ParcelaVar
          DataFormat.DisplayFormat = '#,##0.00'
          DataFormat.Digits = 2
        end
        object Sctvarlabel26: TSctvarlabel
          Left = 493
          Top = 1
          Width = 72
          Height = 17
          AlignHorizontal = laRight
          Variable = adodsparcelavl_sistemaVar
          DataFormat.DisplayFormat = '#,##0.00'
          DataFormat.Digits = 2
        end
        object Sctvarlabel29: TSctvarlabel
          Left = 287
          Top = 1
          Width = 60
          Height = 17
          AlignHorizontal = laRight
          Variable = adodsparcelaNr_FaturaVar
        end
        object Sctvarlabel31: TSctvarlabel
          Left = 426
          Top = 1
          Width = 65
          Height = 17
          AlignHorizontal = laCenter
          Variable = adodsparcelaDt_VencimentoVar
          DataFormat.DisplayFormat = 'dd/mm/yyyy'
          DataFormat.SuppressNulls = True
        end
      end
      object SctBand11: TSctBand
        Left = 0
        Top = 221
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
          Variable = adodsfilialDp_FilialVar
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
        Width = 786
        Height = 21
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = True
        ParentFont = False
        BandName = 'Report Footer'
        Updatelevel = SctLevel12
        object Sctvarlabel27: TSctvarlabel
          Left = 430
          Top = 3
          Width = 65
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
        object SctTotalvarLabel1: TSctTotalvarLabel
          Left = 493
          Top = 3
          Width = 72
          Height = 17
          TotalVariable = TotalOfvl_sistema
          DataFormat.DisplayFormat = '#,##0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object SctTotalvarLabel2: TSctTotalvarLabel
          Left = 567
          Top = 3
          Width = 72
          Height = 17
          TotalVariable = TotalOfVl_Parcela
          DataFormat.DisplayFormat = '#,##0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object SctTotalvarLabel3: TSctTotalvarLabel
          Left = 639
          Top = 3
          Width = 65
          Height = 17
          TotalVariable = TotalOfVl_Cobrado
          DataFormat.DisplayFormat = '#,##0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object SctLine3: TSctLine
          Left = 449
          Top = 2
          Width = 257
          Height = 5
          AlignVertical = laTop
        end
      end
      object PgHdPedido: TSctSubBand
        Left = 0
        Top = 150
        Width = 786
        Height = 22
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
        Order = 1
        Above = False
        object Sctvarlabel121: TSctvarlabel
          Left = 1
          Top = 2
          Width = 50
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          AlignHorizontal = laRight
          Caption = 'Receber'
        end
        object Sctvarlabel122: TSctvarlabel
          Left = 53
          Top = 2
          Width = 65
          Height = 17
          Caption = 'Cliente'
        end
        object Sctvarlabel133: TSctvarlabel
          Left = 705
          Top = 2
          Width = 31
          Height = 17
          AlignHorizontal = laCenter
          DataFormat.SuppressNulls = True
          Caption = 'Baixa'
        end
        object SctLine1: TSctLine
          Left = 1
          Top = 15
          Width = 734
          Height = 6
        end
        object SctLine2: TSctLine
          Left = 1
          Top = 0
          Width = 734
          Height = 6
          AlignVertical = laTop
        end
        object Sctvarlabel19: TSctvarlabel
          Left = 348
          Top = 2
          Width = 65
          Height = 17
          Caption = 'Ocorr'#234'ncia'
        end
        object Sctvarlabel20: TSctvarlabel
          Left = 639
          Top = 2
          Width = 65
          Height = 17
          AlignHorizontal = laRight
          Caption = 'Recebido'
        end
        object Sctvarlabel21: TSctvarlabel
          Left = 567
          Top = 2
          Width = 71
          Height = 17
          AlignHorizontal = laRight
          Caption = 'Valor Arquivo'
        end
        object Sctvarlabel23: TSctvarlabel
          Left = 493
          Top = 2
          Width = 72
          Height = 17
          AlignHorizontal = laRight
          Caption = 'Valor Sistema'
        end
        object Sctvarlabel28: TSctvarlabel
          Left = 287
          Top = 2
          Width = 60
          Height = 17
          AlignHorizontal = laRight
          Caption = 'Fatura'
        end
        object Sctvarlabel30: TSctvarlabel
          Left = 426
          Top = 0
          Width = 65
          Height = 17
          AlignHorizontal = laCenter
          Caption = 'Vencimento'
        end
      end
      object SctBand9Sub: TSctSubBand
        Left = 0
        Top = 81
        Width = 786
        Height = 54
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = True
        ParentFont = False
        BandName = 'SctBand9Sub'
        Updatelevel = SctLevel9
        Stretch = True
        Band = SctBand9
        Above = False
        object Sctvarlabel3: TSctvarlabel
          Left = 2
          Top = 1
          Width = 44
          Height = 17
          Caption = 'Resumo:'
        end
        object Sctvarlabel4: TSctvarlabel
          Left = 47
          Top = 1
          Width = 50
          Height = 17
          Variable = adodsdadosnr_resumoVar
        end
        object Sctvarlabel7: TSctvarlabel
          Left = 104
          Top = 1
          Width = 28
          Height = 17
          Caption = 'Data:'
        end
        object Sctvarlabel8: TSctvarlabel
          Left = 134
          Top = 1
          Width = 65
          Height = 17
          Variable = adodsdadosdt_resumoVar
          DataFormat.DisplayFormat = 'dd/mm/yyyy'
        end
        object Sctvarlabel9: TSctvarlabel
          Left = 205
          Top = 1
          Width = 47
          Height = 17
          Caption = 'Portador:'
        end
        object Sctvarlabel10: TSctvarlabel
          Left = 253
          Top = 1
          Width = 37
          Height = 17
          AlignHorizontal = laRight
          Variable = adodsdadoscd_portadorVar
        end
        object Sctvarlabel11: TSctvarlabel
          Left = 291
          Top = 1
          Width = 308
          Height = 17
          Variable = adodsdadosnm_portadorVar
        end
        object Sctvarlabel12: TSctvarlabel
          Left = 1
          Top = 18
          Width = 89
          Height = 17
          Caption = 'Nome do Arquivo:'
        end
        object Sctvarlabel13: TSctvarlabel
          Left = 90
          Top = 18
          Width = 277
          Height = 17
          Variable = adodsdadosnm_arquivoVar
        end
        object SctVarEstProcesso: TSctvarlabel
          Left = 371
          Top = 18
          Width = 214
          Height = 17
          Caption = 'Estado do Processo'
        end
        object Sctvarlabel14: TSctvarlabel
          Left = 587
          Top = 18
          Width = 82
          Height = 17
          Caption = 'Processado em:'
        end
        object Sctvarlabel15: TSctvarlabel
          Left = 670
          Top = 18
          Width = 65
          Height = 17
          Variable = adodsdadosdt_processamentoVar
          DataFormat.DisplayFormat = 'dd/mm/yyyy'
          DataFormat.SuppressNulls = True
        end
        object Sctvarlabel16: TSctvarlabel
          Left = 1
          Top = 35
          Width = 71
          Height = 17
          Caption = 'Observa'#231#245'es:'
        end
        object Sctvarlabel17: TSctvarlabel
          Left = 70
          Top = 33
          Width = 650
          Height = 17
          WrapText = True
          Stretch = True
        end
        object Sctvarlabel6: TSctvarlabel
          Left = 642
          Top = 1
          Width = 28
          Height = 17
          Caption = 'Data:'
        end
        object Sctvarlabel18: TSctvarlabel
          Left = 670
          Top = 1
          Width = 65
          Height = 17
          Variable = adodsparcelaDt_OcorrenciaVar
          DataFormat.DisplayFormat = 'dd/mm/yyyy'
          DataFormat.SuppressNulls = True
        end
      end
      object Data: TSctSubDataBand
        Left = 0
        Top = 362
        Width = 786
        Height = 20
        ParentColor = True
        BandName = 'Data'
        Updatelevel = DataLevel
        OnBeforePrint = SctDetailVendaPeriodoBeforePrint
        Band = SctBand12
        CloseDataSet = False
        DataRange = drAllRecords
        DataSource = DsResumo
        object Sctvarlabel39: TSctvarlabel
          Left = 624
          Top = 2
          Width = 80
          Height = 17
          AlignHorizontal = laRight
          Variable = adodsresumoVl_RecebidoVar
          DataFormat.DisplayFormat = '#,##0.00'
          DataFormat.Digits = 2
        end
        object Sctvarlabel40: TSctvarlabel
          Left = 705
          Top = 2
          Width = 32
          Height = 17
          AlignHorizontal = laRight
          Variable = adodsresumoNr_RecebidoVar
          DataFormat.DisplayFormat = '(###)'
        end
        object Sctvarlabel37: TSctvarlabel
          Left = 505
          Top = 2
          Width = 80
          Height = 17
          AlignHorizontal = laRight
          Variable = adodsresumoVl_ArquivoVar
          DataFormat.DisplayFormat = '#,##0.00'
          DataFormat.Digits = 2
        end
        object Sctvarlabel38: TSctvarlabel
          Left = 586
          Top = 2
          Width = 32
          Height = 17
          AlignHorizontal = laRight
          Variable = adodsresumoNr_ArquivoVar
          DataFormat.DisplayFormat = '(###)'
        end
        object Sctvarlabel41: TSctvarlabel
          Left = 385
          Top = 2
          Width = 80
          Height = 17
          AlignHorizontal = laRight
          Variable = adodsresumoVl_SistemaVar
          DataFormat.DisplayFormat = '#,##0.00'
          DataFormat.Digits = 2
        end
        object Sctvarlabel42: TSctvarlabel
          Left = 468
          Top = 2
          Width = 32
          Height = 17
          AlignHorizontal = laRight
          Variable = adodsresumoNr_SistemaVar
          DataFormat.DisplayFormat = '(###)'
        end
        object Sctvarlabel43: TSctvarlabel
          Left = 16
          Top = 2
          Width = 362
          Height = 17
          Variable = adodsresumoDs_OcorrenciaVar
          Caption = 'Ocorr'#234'ncia'
        end
      end
      object DataHeader: TSctDataHeadBand
        Left = 0
        Top = 295
        Width = 786
        Height = 52
        ParentColor = True
        BandName = 'DataHeader'
        Updatelevel = DataHeaderLevel
        Band = Data
        object Sctvarlabel32: TSctvarlabel
          Left = 1
          Top = 8
          Width = 169
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Caption = 'Resumo por Ocorr'#234'ncia'
        end
        object SctLine4: TSctLine
          Left = 1
          Top = 46
          Width = 734
          Height = 6
        end
        object Sctvarlabel33: TSctvarlabel
          Left = 16
          Top = 32
          Width = 65
          Height = 17
          Caption = 'Ocorr'#234'ncia'
        end
        object Sctvarlabel34: TSctvarlabel
          Left = 639
          Top = 32
          Width = 97
          Height = 17
          AlignHorizontal = laRight
          Caption = 'Recebido'
        end
        object Sctvarlabel35: TSctvarlabel
          Left = 518
          Top = 32
          Width = 97
          Height = 17
          AlignHorizontal = laRight
          Caption = 'Arquivo'
        end
        object Sctvarlabel36: TSctvarlabel
          Left = 400
          Top = 32
          Width = 97
          Height = 17
          AlignHorizontal = laRight
          Caption = 'Sistema'
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
            Action = ActReport
            ImageIndex = 20
            ShortCut = 117
          end
          item
            Caption = '-'
          end
          item
            Action = ActLoad
            ImageIndex = 42
          end
          item
            Action = ActRun
            ImageIndex = 22
          end
          item
            Action = ActCancel
            ImageIndex = 21
          end
          item
            Action = ActRedo
            ImageIndex = 38
          end
          item
            Action = ActBaixaSite
            ImageIndex = 10
          end>
        ActionBar = ActToolBDatabase
      end
      item
      end>
    Images = FrmMain.ImgLstMenu
    Left = 430
    Top = 5
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
    object ActReport: TAction
      Category = '2-Database'
      Hint = 'Relat'#243'rio'
      ImageIndex = 20
      ShortCut = 117
      OnExecute = ActReportExecute
    end
    object ActLoad: TAction
      Category = '2-Database'
      Hint = 'Carregar Arquivo de Dados'
      ImageIndex = 42
      OnExecute = ActLoadExecute
    end
    object ActRun: TAction
      Category = '2-Database'
      Hint = 'Efetuar o Processamento do Arquivo'
      ImageIndex = 22
      OnExecute = ActRunExecute
    end
    object ActRedo: TAction
      Category = '2-Database'
      Hint = 'Retornar Situa'#231#227'o do Resumo'
      ImageIndex = 38
      OnExecute = ActRedoExecute
    end
    object ActCancel: TAction
      Category = '2-Database'
      Hint = 'Cancelar Resumo de Recebimento'
      ImageIndex = 21
      OnExecute = ActCancelExecute
    end
    object ActBaixaSite: TAction
      Category = '2-Database'
      Hint = 'Baixar boletos do site'
      ImageIndex = 10
      OnExecute = ActBaixaSiteExecute
    end
  end
  object ADODsDados: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    OnCalcFields = ADODsDadosCalcFields
    CommandText = 'select'#13#10'  RR.Nr_Resumo, RR.Dt_Resumo, RR.Cd_Portador, P.Nm_Portador, RR.Nm_Arquivo,'#13#10'  RR.Fl_Processo, RR.Dt_Processamento, RR.Mm_Observacao, P.Tp_Cobranca,'#13#10'  P.Pr_TaxaJuros, P.Cd_Banco, RR.Vl_Resumo, P.Tp_Modelo, P.Cd_Agencia, P.Nr_Conta,'#13#10'  P.Ds_Livre,'#13#10'  Nr_Recebimentos ='#13#10'    ('#13#10#9'select '#13#10#9'  count( * )'#13#10#13#10#9'from'#13#10#9'  Receber_Resumo_Dados RD'#13#10#13#10#9'where'#13#10#9'  RD.Nr_Resumo = RR.Nr_Resumo and'#13#10#9'  RD.Fl_Baixa  = ''''1'''' and'#13#10#9'  RD.Vl_Cobrado > 0.0'#13#10#9')'#13#10#13#10'from'#13#10'  Receber_Resumo RR'#13#10#13#10'inner join'#13#10'  Portador P'#13#10'on'#13#10'  P.Cd_Portador = RR.Cd_Portador'#13#10#13#10'where'#13#10'  RR.Nr_Resumo = :Nr_Resumo'
    Parameters = <
      item
        Name = 'Nr_Resumo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = nil?
      end>
    Left = 52
    Top = 390
    object ADODsDadosnr_resumo: TIntegerField
      FieldName = 'nr_resumo'
    end
    object ADODsDadosdt_resumo: TDateTimeField
      FieldName = 'dt_resumo'
    end
    object ADODsDadoscd_portador: TSmallintField
      FieldName = 'cd_portador'
    end
    object ADODsDadosnm_portador: TStringField
      FieldName = 'nm_portador'
      Size = 50
    end
    object ADODsDadosnm_arquivo: TStringField
      FieldName = 'nm_arquivo'
      Size = 120
    end
    object ADODsDadosfl_processo: TStringField
      FieldName = 'fl_processo'
      FixedChar = True
      Size = 1
    end
    object ADODsDadosdt_processamento: TDateTimeField
      FieldName = 'dt_processamento'
    end
    object ADODsDadostp_cobranca: TStringField
      FieldName = 'tp_cobranca'
      FixedChar = True
      Size = 1
    end
    object ADODsDadospr_taxajuros: TBCDField
      FieldName = 'pr_taxajuros'
      Precision = 9
      Size = 2
    end
    object ADODsDadoscd_banco: TStringField
      FieldName = 'cd_banco'
      FixedChar = True
      Size = 4
    end
    object ADODsDadosDp_Processo: TStringField
      FieldKind = fkCalculated
      FieldName = 'Dp_Processo'
      Size = 16
      Calculated = True
    end
    object ADODsDadosMm_Observacao: TMemoField
      FieldName = 'Mm_Observacao'
      BlobType = ftMemo
    end
    object ADODsDadosVl_Resumo: TBCDField
      FieldName = 'Vl_Resumo'
      DisplayFormat = '#,##0.00'
      Precision = 13
      Size = 3
    end
    object ADODsDadosTp_Modelo: TStringField
      FieldName = 'Tp_Modelo'
      FixedChar = True
      Size = 1
    end
    object ADODsDadosCd_Agencia: TStringField
      FieldName = 'Cd_Agencia'
      FixedChar = True
      Size = 5
    end
    object ADODsDadosNr_Conta: TStringField
      FieldName = 'Nr_Conta'
      Size = 10
    end
    object ADODsDadosDs_Livre: TStringField
      FieldName = 'Ds_Livre'
      Size = 30
    end
    object ADODsDadosNr_Recebimentos: TIntegerField
      FieldName = 'Nr_Recebimentos'
      ReadOnly = True
    end
  end
  object ADOCmdLancto: TMultADOCMD
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLOther1.Strings = (
      'insert into Receber_Historico( Cd_Usuario, Cd_Filial, Nr_Receber, Nr_Parcela, Nr_Resumo,'
      '  Tp_Lancamento, Dt_Lancamento, Nr_Lancamento, Vl_Lancamento )'
      ''
      'select'
      '  :Cd_Usuario,'
      '  case RD.Cd_Filial'
      '    when 0 then 1'
      '    else RD.Cd_Filial'
      '  end as Cd_Filial, RD.Nr_Receber, RD.Nr_Parcela, @Nr_Resumo, @Tp_Lancamento,'
      '  RD.Dt_Ocorrencia, /* :Dt_Lancamento, */'
      '  ('
      '  select'
      '    Coalesce( Max( Nr_Lancamento ), 0 ) + 1'
      ''
      '  from'
      '    Receber_Historico RH'
      ''
      '  where'
      '    RH.Nr_Receber = RD.Nr_Receber and'
      '    RH.Nr_Parcela = RD.Nr_Parcela'
      '  ),'
    )
    SQLOther2.Strings = (
      'update'
      '  Receber_Resumo_Dados'
      ''
      'set'
      '  Fl_Baixa = :Fl_Baixa'
      ''
      'where'
      '  Nr_Resumo = :Nr_Resumo and'
      '  Nr_Linha  = :Nr_Linha'
    )
    Left = 267
    Top = 390
  end
  object ADODsParcela: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    OnCalcFields = ADODsParcelaCalcFields
    CommandText = 'select'#13#10'  RD.Nr_Resumo, RD.Nr_Linha, RD.Nr_Receber, RD.Nr_Parcela, RD.Nr_DoctoBanco,'#13#10'  RD.Cd_Ocorrencia, RD.Dt_Ocorrencia, RD.Vl_Parcela, RD.Vl_TarifaCobranca,'#13#10'  RD.Vl_Despesas, RD.Vl_JurosCartorio, RD.Vl_Multa, RD.Vl_Abatimento,'#13#10'  RD.Vl_Desconto, RD.Vl_Cobrado, RD.Vl_Juros, RD.Vl_Creditos, RD.Fl_Baixa,'#13#10'  RD.Ds_Motivo, R.Cd_Emitente, E.Nm_Emitente, RP.Vl_Parcela as Vl_Sistema,'#13#10'  O.Nr_Fatura, RP.Dt_Vencimento,'#13#10'  Nr_Atraso = ( case when RD.Vl_Cobrado > 0 and RP.Dt_Vencimento < RD.Dt_Ocorrencia then DateDiff( Day, RP.Dt_Vencimento, RD.Dt_Ocorrencia ) end )'#13#10#13#10'from'#13#10'  Receber_Resumo_Dados RD'#13#10#13#10'left join'#13#10'  Receber_Parcela RP'#13#10'on'#13#10'  RP.Cd_Filial  ='#13#10'    case RD.Cd_Filial'#13#10'      when 0 then 1'#13#10'      else RD.Cd_Filial'#13#10'    end and'#13#10'  RP.Nr_Receber = RD.Nr_Receber and'#13#10'  RP.Nr_Parcela = RD.Nr_Parcela'#13#10#13#10'left join'#13#10'  Receber R'#13#10'on'#13#10'  R.Cd_Filial  = RP.Cd_Filial and'#13#10'  R.Nr_Receber = RP.Nr_Receber'#13#10#13#10'left join'#13#10'  Emitente E'#13#10'on'#13#10'  E.Cd_Emitente = R.Cd_Emitente'#13#10#13#10'left join'#13#10'  Orcamento O'#13#10'on'#13#10'  O.Cd_Filial = R.Cd_Filial and'#13#10'  O.Nr_Orcamento = R.Nr_Orcamento'#13#10#13#10'where'#13#10'  RD.Nr_Resumo = :Nr_Resumo'#13#10#13#10'order by'#13#10'  RD.Nr_Linha'
    Parameters = <
      item
        Name = 'Nr_Resumo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 1
      end>
    Left = 236
    Top = 390
    object ADODsParcelaDp_Receber: TStringField
      DisplayLabel = 'Receber'
      FieldKind = fkCalculated
      FieldName = 'Dp_Receber'
      Size = 10
      Calculated = True
    end
    object ADODsParcelaNr_Resumo: TIntegerField
      FieldName = 'Nr_Resumo'
    end
    object ADODsParcelaNr_Linha: TSmallintField
      FieldName = 'Nr_Linha'
    end
    object ADODsParcelaNr_Receber: TIntegerField
      FieldName = 'Nr_Receber'
    end
    object ADODsParcelaNr_Parcela: TSmallintField
      FieldName = 'Nr_Parcela'
    end
    object ADODsParcelaNr_DoctoBanco: TStringField
      FieldName = 'Nr_DoctoBanco'
      Size = 25
    end
    object ADODsParcelaCd_Ocorrencia: TStringField
      FieldName = 'Cd_Ocorrencia'
      FixedChar = True
      Size = 2
    end
    object ADODsParcelaDp_Ocorrencia: TStringField
      DisplayLabel = 'Ocorr'#234'ncia'
      FieldKind = fkCalculated
      FieldName = 'Dp_Ocorrencia'
      Size = 50
      Calculated = True
    end
    object ADODsParcelaDt_Ocorrencia: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'Dt_Ocorrencia'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object ADODsParcelaVl_Parcela: TBCDField
      DisplayLabel = 'Valor Arquivo'
      FieldName = 'Vl_Parcela'
      DisplayFormat = '#,##0.00'
      Precision = 10
    end
    object ADODsParcelaVl_TarifaCobranca: TBCDField
      FieldName = 'Vl_TarifaCobranca'
      DisplayFormat = '#,##0.00'
      Precision = 10
    end
    object ADODsParcelaVl_Despesas: TBCDField
      FieldName = 'Vl_Despesas'
      DisplayFormat = '#,##0.00'
      Precision = 10
    end
    object ADODsParcelaVl_JurosCartorio: TBCDField
      FieldName = 'Vl_JurosCartorio'
      DisplayFormat = '#,##0.00'
      Precision = 10
    end
    object ADODsParcelaVl_Multa: TBCDField
      FieldName = 'Vl_Multa'
      DisplayFormat = '#,##0.00'
      Precision = 10
    end
    object ADODsParcelaVl_Abatimento: TBCDField
      FieldName = 'Vl_Abatimento'
      DisplayFormat = '#,##0.00'
      Precision = 10
    end
    object ADODsParcelaVl_Desconto: TBCDField
      FieldName = 'Vl_Desconto'
      DisplayFormat = '#,##0.00'
      Precision = 10
    end
    object ADODsParcelaVl_Cobrado: TBCDField
      DisplayLabel = 'Recebido'
      FieldName = 'Vl_Cobrado'
      DisplayFormat = '#,##0.00'
      Precision = 10
    end
    object ADODsParcelaVl_Juros: TBCDField
      FieldName = 'Vl_Juros'
      DisplayFormat = '#,##0.00'
      Precision = 10
    end
    object ADODsParcelaVl_Creditos: TBCDField
      FieldName = 'Vl_Creditos'
      DisplayFormat = '#,##0.00'
      Precision = 10
    end
    object ADODsParcelaFl_Baixa: TStringField
      FieldName = 'Fl_Baixa'
      FixedChar = True
      Size = 1
    end
    object ADODsParcelaDp_Baixa: TStringField
      DisplayLabel = 'Baixa'
      FieldKind = fkCalculated
      FieldName = 'Dp_Baixa'
      Size = 3
      Calculated = True
    end
    object ADODsParcelaDp_Emitente: TStringField
      DisplayLabel = 'Cliente'
      FieldKind = fkCalculated
      FieldName = 'Dp_Emitente'
      ReadOnly = True
      Size = 58
      Calculated = True
    end
    object ADODsParcelaDs_Motivo: TStringField
      FieldName = 'Ds_Motivo'
      Size = 50
    end
    object ADODsParcelaCd_Emitente: TIntegerField
      FieldName = 'Cd_Emitente'
    end
    object ADODsParcelanm_emitente: TStringField
      FieldName = 'nm_emitente'
      Size = 50
    end
    object ADODsParcelavl_sistema: TBCDField
      DisplayLabel = 'Valor Sistema'
      FieldName = 'vl_sistema'
      DisplayFormat = '#,##0.00'
      Precision = 12
      Size = 2
    end
    object ADODsParcelaNr_Fatura: TIntegerField
      FieldName = 'Nr_Fatura'
    end
    object ADODsParcelaDt_Vencimento: TDateTimeField
      DisplayLabel = 'Vencimento'
      FieldName = 'Dt_Vencimento'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object ADODsParcelaNr_Atraso: TIntegerField
      DisplayLabel = 'Atraso'
      FieldName = 'Nr_Atraso'
      ReadOnly = True
    end
  end
  object DsParcela: TDataSource
    DataSet = ADODsParcela
    Left = 206
    Top = 390
  end
  object ADOCmdDados: TMultADOCMD
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLInsert.Strings = (
      'insert into Receber_Resumo( Nr_Resumo, Dt_Resumo, Cd_Portador, Nm_Arquivo,'
      '  Fl_Processo, Mm_Observacao )'
      'values( :Nr_Resumo, :Dt_Resumo, :Cd_Portador, :Nm_Arquivo, ''''1'''', :Mm_Observacao )'
    )
    SQLUpdate.Strings = (
      'update'
      '  Receber_Resumo'
      ''
      'set'
      '  Cd_Portador   = :Cd_Portador,'
      '  Nm_Arquivo    = :Nm_Arquivo,'
      '  Mm_Observacao = :Mm_Observacao'
      ''
      'where'
      '  Nr_Resumo     = :Nr_Resumo'
    )
    SQLDelete.Strings = (
      'delete from'
      '  Cidade'
      ''
      'where'
      '  Cd_Cidade = :Cd_Cidade'
    )
    SQLOther1.Strings = (
      '-------------------- Total do resumo e valores'
      'update'
      '  Receber_Resumo'
      ''
      'set'
      '  Fl_Processo      = :Fl_Processo,'
      '  Dt_Processamento = :Dt_Processamento,'
      '  Vl_Resumo        = Coalesce('
      '   ('
      '   select'
      '     sum( RRD.Vl_Cobrado )'
      ''
      '   from'
      '     Receber_Resumo_Dados RRD'
      ''
      '   where'
      '     RRD.Nr_Resumo = Receber_Resumo.Nr_Resumo and'
      '     RRD.Fl_Baixa  = ''''1'''
      '   ), 0.0 )'
      ''
      'where'
      '  Nr_Resumo = :Nr_Resumo'
    )
    SQLOther2.Strings = (
      '--------------- Apaga registros da importa'#231#227'o anterior'
      'delete from'
      '  Receber_Resumo_Dados'
      ''
      'where'
      '  Nr_Resumo = :Nr_Resumo'
    )
    SQLOther3.Strings = (
      'insert into Receber_Resumo_Dados( Nr_Resumo, Nr_Linha, Cd_Filial, Nr_Receber,'
      '  Nr_Parcela, Nr_DoctoBanco, Cd_Ocorrencia, Dt_Ocorrencia, Vl_Parcela,'
      '  Vl_TarifaCobranca, Vl_Despesas, Vl_JurosCartorio, Vl_Multa, Vl_Abatimento,'
      '  Vl_Desconto, Vl_Cobrado, Vl_Juros, Vl_Creditos, Ds_Motivo, Fl_Baixa )'
      'values( :Nr_Resumo, :Nr_Linha, :Cd_Filial, :Nr_Receber, :Nr_Parcela,'
      '  :Nr_DoctoBanco, :Cd_Ocorrencia, :Dt_Ocorrencia, :Vl_Parcela,'
      '  :Vl_TarifaCobranca, :Vl_Despesas, :Vl_JurosCartorio, :Vl_Multa,'
      '  :Vl_Abatimento, :Vl_Desconto, :Vl_Cobrado, :Vl_Juros, :Vl_Creditos,'
      '  :Ds_Motivo, :Fl_Baixa )'
    )
    SQLOther4.Strings = (
      '-------------------- Abre o resumo'
      '-------------------- Apaga os historicos'
      'delete from'
      '  Receber_Historico'
      ''
      'where'
      '  Nr_Resumo = @Nr_Resumo;'
      ''
      '-------------------- Apaga os lan'#231'amentos no controle bancario'
      'delete from'
      '  CCorrente_Lancto'
      ''
      'where'
      '  Nr_Resumo = @Nr_Resumo'
      ''
      '-------------------- Atualiza o resumo'
      'update'
      '  Receber_Resumo'
      ''
      'set'
      '  Fl_Processo      = ''''2'''','
      '  Dt_Processamento = null'
      ''
      'where'
      '  Nr_Resumo = @Nr_Resumo;'
    )
    SQLOther5.Strings = (
      '--------------- Cancela o resumo'
      '--------------- Apaga os historicos'
      'delete from'
      '  Receber_Historico'
      ''
      'where'
      '  Nr_Resumo = @Nr_Resumo;'
      ''
      '--------------- Atualiza o resumo'
      'update'
      '  Receber_Resumo'
      ''
      'set'
      '  Fl_Processo      = ''''4'''','
      '  Dt_Processamento = null'
      ''
      'where'
      '  Nr_Resumo = @Nr_Resumo'
    )
    SQLOther6.Strings = (
      '-------------------- Retira marca'#231#227'o de baixa para itens n'#227'o identificados'
      'update'
      '  Receber_Resumo_Dados'
      ''
      'set'
      '  Fl_Baixa = ''''2'''
      ''
      'where'
      '  Nr_Resumo = :Nr_Resumo and'
      '  not exists('
      '    select'
      '      RP.Cd_Filial'
      ''
      '    from'
      '      Receber_Parcela RP'
      ''
      '    where'
      '      RP.Cd_Filial  = Receber_Resumo_Dados.Cd_Filial and'
      '      RP.Nr_Receber = Receber_Resumo_Dados.Nr_Receber and'
      '      RP.Nr_Parcela = Receber_Resumo_Dados.Nr_Parcela )'
    )
    Left = 82
    Top = 390
  end
  object DsDados: TDataSource
    DataSet = ADODsDados
    Left = 22
    Top = 390
  end
  object ADODsCCorrente: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'select top 1'#13#10'  Id_Conta'#13#10#13#10'from'#13#10'  CCorrente_Lancto'#13#10#13#10'where'#13#10'  Nr_Resumo = :Nr_Resumo'
    Parameters = <
      item
        Name = 'Nr_Resumo'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = nil?
      end>
    Left = 300
    Top = 389
    object ADODsCCorrenteId_Conta: TSmallintField
      FieldName = 'Id_Conta'
    end
  end
  object ADODsDoctoBanco: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = '--------------- Consulta pelo Nosso Numero'#13#10'select'#13#10'  Cd_Filial, Nr_Receber, Nr_Parcela'#13#10#13#10'from'#13#10'  Receber_Parcela'#13#10#13#10'where'#13#10'  Nr_DoctoBanco = :Nr_DoctoBanco'#13#10
    Parameters = <
      item
        Name = 'Nr_DoctoBanco'
        DataType = ftString
        Size = 1
        Value = ' '
      end>
    SQLOther0.Strings = (
      '-- ------------ Consulta pelo Nosso Numero'
      'select'
      '  Cd_Filial, Nr_Receber, Nr_Parcela'
      ''
      'from'
      '  Receber_Parcela'
      ''
      'where'
      '  Cd_Portador = :Cd_Portador and'
      '  Nr_DoctoBanco like :Nr_DoctoBanco + ''''%'''
    )
    SQLOther1.Strings = (
      '--------------- Consulta pelo ID da Parcela'
      'select'
      '  Cd_Filial, Nr_Receber, Nr_Parcela'
      ''
      'from'
      '  Receber_Parcela'
      ''
      'where'
      '  Cd_Filial   = :Cd_Filial and'
      '  Cd_Portador = :Cd_Portador and'
      '  Id_Parcela  = :Id_Parcela'
    )
    SQLOther2.Strings = (
      '--------------- Verifica se o boleto esta mais de uma vez no arquivo'
      'select'
      '  Cd_Filial, Nr_Receber, Nr_Parcela, count(*) '
      ''
      'from'
      '  Receber_Resumo_Dados'
      ''
      'where'
      '  Nr_Resumo = :Nr_Resumo and'
      '  Fl_Baixa  = ''''1'''
      ''
      'group by'
      '  Cd_Filial, Nr_Receber, Nr_Parcela'
      ''
      'having'
      '  count(*) > 1'
    )
    Left = 331
    Top = 389
    object ADODsDoctoBancoCd_Filial: TSmallintField
      FieldName = 'Cd_Filial'
    end
    object ADODsDoctoBancoNr_Receber: TIntegerField
      FieldName = 'Nr_Receber'
    end
    object ADODsDoctoBancoNr_Parcela: TSmallintField
      FieldName = 'Nr_Parcela'
    end
  end
  object ADODsResumo: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    OnCalcFields = ADODsResumoCalcFields
    CommandText = 'select'#13#10'  RD.Cd_Ocorrencia, RD.Dp_Ocorrencia, '#13#10'  Convert( Numeric( 12, 2 ), sum( RP.Vl_Parcela ) ) as Vl_Sistema, '#13#10'  sum( case when RP.Vl_Parcela > 0 then 1 else 0 end ) as Nr_Sistema,'#13#10'  Convert( Numeric( 12, 2 ), sum( RD.Vl_Parcela ) ) as Vl_Arquivo, '#13#10'  sum( case when RD.Vl_Parcela > 0 then 1 else 0 end ) as Nr_Arquivo,'#13#10'  Convert( Numeric( 12, 2 ), sum( RD.Vl_Cobrado ) ) as Vl_Recebido, '#13#10'  sum( case when RD.Vl_Cobrado > 0 then 1 else 0 end ) as Nr_Recebido'#13#10'  '#13#10'from'#13#10'  Receber_Resumo_DadosVw RD'#13#10#13#10'left join'#13#10'  Receber_Parcela RP'#13#10'on'#13#10'  RP.Cd_Filial  ='#13#10'    case RD.Cd_Filial'#13#10'      when 0 then 1'#13#10'      else RD.Cd_Filial'#13#10'    end and'#13#10'  RP.Nr_Receber = RD.Nr_Receber and'#13#10'  RP.Nr_Parcela = RD.Nr_Parcela'#13#10#13#10'where'#13#10'  RD.Nr_Resumo = :Nr_Resumo'#13#10#13#10'group by'#13#10'  RD.Cd_Ocorrencia, RD.Dp_Ocorrencia'
    Parameters = <
      item
        Name = 'Nr_Resumo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = nil?
      end>
    Left = 496
    Top = 400
    object ADODsResumoCd_Ocorrencia: TStringField
      FieldName = 'Cd_Ocorrencia'
      FixedChar = True
      Size = 2
    end
    object ADODsResumoDp_Ocorrencia: TStringField
      FieldName = 'Dp_Ocorrencia'
      ReadOnly = True
      Size = 29
    end
    object ADODsResumoVl_Sistema: TBCDField
      FieldName = 'Vl_Sistema'
      ReadOnly = True
      DisplayFormat = '#,##0.00'
      Precision = 12
      Size = 2
    end
    object ADODsResumoNr_Sistema: TIntegerField
      FieldName = 'Nr_Sistema'
      ReadOnly = True
      DisplayFormat = '(#,##0)'
    end
    object ADODsResumoVl_Arquivo: TBCDField
      FieldName = 'Vl_Arquivo'
      ReadOnly = True
      DisplayFormat = '#,##0.00'
      Precision = 12
      Size = 2
    end
    object ADODsResumoNr_Arquivo: TIntegerField
      FieldName = 'Nr_Arquivo'
      ReadOnly = True
      DisplayFormat = '(#,##0)'
    end
    object ADODsResumoVl_Recebido: TBCDField
      FieldName = 'Vl_Recebido'
      ReadOnly = True
      DisplayFormat = '#,##0.00'
      Precision = 12
      Size = 2
    end
    object ADODsResumoNr_Recebido: TIntegerField
      FieldName = 'Nr_Recebido'
      ReadOnly = True
      DisplayFormat = '(#,##0)'
    end
    object ADODsResumoDs_Ocorrencia: TStringField
      FieldKind = fkCalculated
      FieldName = 'Ds_Ocorrencia'
      Size = 50
      Calculated = True
    end
  end
  object DsResumo: TDataSource
    DataSet = ADODsResumo
    Left = 464
    Top = 400
  end
  object ACBrBoleto: TACBrBoleto
    Banco.TamanhoMaximoNossoNum = 10
    Banco.TipoCobranca = cobNenhum
    Banco.LayoutVersaoArquivo = 0
    Banco.LayoutVersaoLote = 0
    Banco.CasasDecimaisMoraJuros = 2
    Cedente.TipoInscricao = pJuridica
    Cedente.PIX.TipoChavePIX = tchNenhuma
    Cedente.IntegradoraBoleto = tibNenhum
    NumeroArquivo = 0
    Configuracoes.Arquivos.LogNivel = logNenhum
    Configuracoes.WebService.SSLHttpLib = httpOpenSSL
    Configuracoes.WebService.StoreName = 'My'
    Configuracoes.WebService.Ambiente = tawsHomologacao
    Configuracoes.WebService.Operacao = tpInclui
    Configuracoes.WebService.VersaoDF = '1.2'
    Left = 568
    Top = 24
  end
end
