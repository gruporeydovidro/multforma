object FrmCarga: TFrmCarga
  Left = 300
  Top = 169
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Montagem de Carga'
  ClientHeight = 565
  ClientWidth = 940
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
    Height = 565
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 919
    Height = 565
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 2
      Top = 104
      Width = 882
      Height = 5
      Shape = bsTopLine
    end
    object Label1: TLabel
      Left = 4
      Top = 31
      Width = 51
      Height = 13
      Caption = 'Romaneio:'
      Transparent = True
    end
    object Label2: TLabel
      Left = 144
      Top = 31
      Width = 45
      Height = 13
      Caption = 'Situa'#231#227'o:'
      Transparent = True
    end
    object Label4: TLabel
      Left = 305
      Top = 31
      Width = 82
      Height = 13
      Caption = 'Frete Negociado:'
      Transparent = True
    end
    object Label5: TLabel
      Left = 494
      Top = 67
      Width = 84
      Height = 13
      Caption = 'Capacidade (KG):'
      Transparent = True
    end
    object Label18: TLabel
      Left = 431
      Top = 67
      Width = 30
      Height = 13
      Caption = 'Placa:'
      Transparent = True
    end
    object Label6: TLabel
      Left = 582
      Top = 67
      Width = 42
      Height = 13
      Caption = 'Alocado:'
      Transparent = True
    end
    object Label8: TLabel
      Left = 67
      Top = 31
      Width = 26
      Height = 13
      Caption = 'Data:'
      Transparent = True
    end
    object Label14: TLabel
      Left = 660
      Top = 67
      Width = 54
      Height = 13
      Caption = 'Dispon'#237'vel:'
      Transparent = True
    end
    object Label10: TLabel
      Left = 739
      Top = 67
      Width = 60
      Height = 13
      Caption = 'Or'#231'amentos:'
      Transparent = True
    end
    object Label15: TLabel
      Left = 4
      Top = 67
      Width = 69
      Height = 13
      Caption = 'Transportador:'
    end
    object SbTransportador: TSpeedButton
      Left = 55
      Top = 82
      Width = 23
      Height = 19
      Hint = 'Seleciona Transportador'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbTransportadorClick
    end
    object Label3: TLabel
      Left = 4
      Top = 106
      Width = 60
      Height = 13
      Caption = 'Or'#231'amentos:'
    end
    object Label7: TLabel
      Left = 4
      Top = 300
      Width = 142
      Height = 13
      Caption = 'Itens do Or'#231'amento na Carga:'
    end
    object DbTxtProduto: TDBText
      Left = 4
      Top = 523
      Width = 742
      Height = 17
      DataField = 'Nm_Produto'
      DataSource = DsItem
    end
    object LblDetalhe: TLabel
      Left = 557
      Top = 300
      Width = 74
      Height = 13
      Caption = 'Detalhamentos:'
    end
    object Label11: TLabel
      Left = 391
      Top = 31
      Width = 91
      Height = 13
      Caption = 'Previs'#227'o de Sa'#237'da:'
    end
    object BvlSeparator_1: TBevel
      Left = 1
      Top = 535
      Width = 915
      Height = 5
      Shape = bsTopLine
    end
    object PnlToolMain: TPanel
      Left = 1
      Top = 1
      Width = 917
      Height = 26
      Align = alTop
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 0
      object PnlDatabase: TPanel
        Left = 0
        Top = 0
        Width = 917
        Height = 26
        Align = alClient
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 0
        object ActToolBDatabase: TActionToolBar
          Left = 0
          Top = 0
          Width = 917
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
      Left = 746
      Top = 538
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 17
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 482 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 832
      Top = 538
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 18
      OnClick = BitBtnCancelClick
      Glyph.Data = {binary 482 bytes}
      NumGlyphs = 2
    end
    object EdtQt_Orcamento: TCurrencyEdit
      Left = 739
      Top = 82
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      TabStop = False
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
      ReadOnly = True
      TabOrder = 13
    end
    object EdtNr_Romaneio: TCurrencyEdit
      Left = 4
      Top = 45
      Width = 60
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      TabStop = False
      AutoSize = False
      Color = clSilver
      DisplayFormat = '#,###'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object EdtSt_Carga: TEdit
      Left = 144
      Top = 45
      Width = 156
      Height = 19
      TabStop = False
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
    end
    object EdtVl_Frete: TCurrencyEdit
      Left = 305
      Top = 45
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DisplayFormat = '#,##0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object EdtCp_Veiculo: TCurrencyEdit
      Left = 494
      Top = 82
      Width = 75
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,##0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
    end
    object EdtPs_Alocada: TCurrencyEdit
      Left = 582
      Top = 82
      Width = 75
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      TabStop = False
      AutoSize = False
      Color = clSilver
      DecimalPlaces = 0
      DisplayFormat = '#,##0.0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 11
    end
    object EdtDt_Carga: TEdit
      Left = 67
      Top = 45
      Width = 75
      Height = 19
      TabStop = False
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
    end
    object EdtQt_Disponivel: TCurrencyEdit
      Left = 660
      Top = 82
      Width = 75
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      TabStop = False
      AutoSize = False
      Color = clSilver
      DecimalPlaces = 0
      DisplayFormat = '#,##0.0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 12
    end
    object EdtCd_Transportador: TCurrencyEdit
      Tag = 2
      Left = 4
      Top = 82
      Width = 50
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 7
      OnExit = EdtCd_TransportadorExit
      OnKeyDown = EdtCd_TransportadorKeyDown
    end
    object EdtNm_Transportador: TEdit
      Left = 79
      Top = 82
      Width = 347
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
    object EdtNr_Placa: TMaskEdit
      Left = 431
      Top = 82
      Width = 60
      Height = 19
      CharCase = ecUpperCase
      TabOrder = 9
    end
    object DbGOrcSel: TDBGrid
      Left = 4
      Top = 121
      Width = 909
      Height = 179
      Hint = 'Utilize as teclas " + " e " - " para mudar a ordem ou pressione <ENTER> para informar o novo numero de ordem'
      DataSource = DsOrcSel
      FixedColor = clSilver
      Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 14
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnEnter = DbGOrcSelEnter
      OnExit = DbGOrcSelExit
      OnKeyPress = DbGOrcSelKeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'Nr_Ordem'
          Width = 36
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nr_Orcamento'
          Title.Alignment = taRightJustify
          Width = 58
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nm_Emitente'
          Width = 318
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Dp_Localidade'
          Width = 275
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nr_Fatura'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Dt_Fatura'
          Title.Alignment = taCenter
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Ps_Carga'
          Title.Alignment = taRightJustify
          Width = 70
          Visible = True
        end>
    end
    object DbGItens: TDBGrid
      Left = 4
      Top = 315
      Width = 549
      Height = 207
      DataSource = DsItem
      FixedColor = clSilver
      Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 15
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnEnter = DbGOrcSelEnter
      OnExit = DbGOrcSelExit
      Columns = <
        item
          Expanded = False
          FieldName = 'Nm_Produto'
          Width = 340
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Sg_Unidade'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Qt_Orcamento'
          Title.Alignment = taRightJustify
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Qt_Item'
          Title.Alignment = taRightJustify
          Width = 70
          Visible = True
        end>
    end
    object DbGDetalhe: TDBGrid
      Left = 557
      Top = 315
      Width = 356
      Height = 207
      DataSource = DsDetalhe
      FixedColor = clSilver
      Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 16
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnEnter = DbGOrcSelEnter
      OnExit = DbGOrcSelExit
      Columns = <
        item
          Expanded = False
          FieldName = 'Qt_Item'
          Width = 58
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Dp_Detalhe'
          Width = 275
          Visible = True
        end>
    end
    object EdtDt_Prevista: TDateEdit
      Left = 391
      Top = 45
      Width = 90
      Height = 19
      GlyphKind = gkCustom
      Glyph.Data = {binary 1850 bytes}
      NumGlyphs = 1
      StartOfWeek = Sun
      TabOrder = 5
    end
    object PnlAction_4: TPanel
      Left = 886
      Top = 90
      Width = 26
      Height = 27
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 22
      object ActToolBProdutos: TActionToolBar
        Left = 0
        Top = 0
        Width = 26
        Height = 27
        ActionManager = ActManCadastro
        Align = alClient
        Caption = 'ActToolBProdutos'
        ColorMap.HighlightColor = clWhite
        ColorMap.BtnSelectedColor = clBtnFace
        ColorMap.UnusedColor = clWhite
        ParentShowHint = False
        ShowHint = True
        Spacing = 0
      end
    end
    object EdtDs_Romaneio: TLabeledEdit
      Left = 488
      Top = 45
      Width = 174
      Height = 19
      EditLabel.Width = 80
      EditLabel.Height = 13
      EditLabel.Caption = 'ID do Romaneio:'
      LabelSpacing = 1
      MaxLength = 20
      TabOrder = 6
    end
    object SctRepMapaEntrega: TSctReport
      Left = 170
      Top = 185
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
      TabOrder = 20
      Visible = False
      Minimized = True
      Prompt = True
      AutoRun = False
      SuppressStatus = False
      PixelsPerInch = 96
      STop = 33
      SLeft = 6
      SWidth = 1105
      SHeight = 400
      MTop = 185
      MLeft = 170
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
        PageSetup.Orientation = poLandscape
        PageSetup.Size = psA4
        PageSetup.Height = 8.26771653543307
        PageSetup.Width = 11.69291338582677
        PageSetup.PreviewSettings.ModalPreview = mpNonModal
        PageSetup.PreviewSettings.PreviewOwner = poAppOwned
        PageSetup.PreviewSettings.FormStyle = pfsMDIChild
        PageSetup.PreviewSettings.Zoom = azHeight
        PageSetup.LeftMargin = 0.4
        PageSetup.RightMargin = 0.4
        BorderType = btNone
        Description = 'Mapa de Entrega'
        CloseDataSet = False
        DataRange = drAllRecords
        OmitLastPgFt = False
        Head = SctBand1
        Detail = SctBand3
        Foot = SctBand5
        PageHead = SctBand2
        PageFoot = SctBand4
        DataSource = DsOrcSel
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
        object SctDataSourceGuide1: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = DsDados
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
        object SctDataSourceGuide5: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = DsOrcSel
        end
        object SctDataSourceGuide6: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = DsItem
        end
        object SctDataSourceGuide7: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = DsDetalhe
        end
        object adodsdadosNr_RomaneioVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_Romaneio'
          DataSource = DsDados
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsdadosNr_PlacaVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_Placa'
          DataSource = DsDados
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsdadosCp_VeiculoVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Cp_Veiculo'
          DataSource = DsDados
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsdadosDs_SituacaoVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ds_Situacao'
          DataSource = DsDados
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsdadosQt_OrcamentoVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Qt_Orcamento'
          DataSource = DsDados
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsdadosPs_AlocadoVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ps_Alocado'
          DataSource = DsDados
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsdadosNm_TransportadorVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nm_Transportador'
          DataSource = DsDados
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsdadosQt_DisponivelVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Qt_Disponivel'
          DataSource = DsDados
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcselDp_OrcamentoVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_Orcamento'
          DataSource = DsOrcSel
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcselNm_EmitenteVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nm_Emitente'
          DataSource = DsOrcSel
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcselVl_OrcamentoVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Vl_Orcamento'
          DataSource = DsOrcSel
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcselPs_CargaVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ps_Carga'
          DataSource = DsOrcSel
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsfilialDp_FilialVar1: TSctDBVar
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
        object adodsorcselVl_ReceberVar: TSctDBVar
          Left = 288
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Vl_Receber'
          DataSource = DsOrcSel
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcselVl_RecebidoVar: TSctDBVar
          Left = 288
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Vl_Recebido'
          DataSource = DsOrcSel
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object TotalOfVl_Orcamento: TSctTotalvar
          Left = 288
          Top = 0
          Width = 0
          Height = 0
          Variable = adodsorcselVl_OrcamentoVar1
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidTotalVar
        end
        object TotalOfPs_Carga: TSctTotalvar
          Left = 288
          Top = 0
          Width = 0
          Height = 0
          Variable = adodsorcselPs_CargaVar1
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidTotalVar
        end
        object TotalOfVl_Receber: TSctTotalvar
          Left = 288
          Top = 0
          Width = 0
          Height = 0
          Variable = adodsorcselVl_ReceberVar
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidTotalVar
        end
        object TotalOfVl_Recebido: TSctTotalvar
          Left = 288
          Top = 0
          Width = 0
          Height = 0
          Variable = adodsorcselVl_RecebidoVar
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidTotalVar
        end
        object adodsorcselDp_ObsEntregaVar: TSctDBVar
          Left = 321
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_ObsEntrega'
          DataSource = DsOrcSel
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcselQt_PecasVar: TSctDBVar
          Left = 52
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Qt_Pecas'
          DataSource = DsOrcSel
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object TotalOfQt_Pecas: TSctTotalvar
          Left = 52
          Top = 0
          Width = 0
          Height = 0
          Variable = adodsorcselQt_PecasVar
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidTotalVar
        end
        object adodsorcselDp_EnderecoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_Endereco'
          DataSource = DsOrcSel
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object DataSourceGuide9: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = DmMaster.DsConexao
        end
        object adodsorcselDp_TelefoneVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_Telefone'
          DataSource = DsOrcSel
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object DataSourceGuide11: TSctDataSourceGuide
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
          Width = 1096
          Height = 5
          ParentColor = True
          BandName = 'Report Header'
          Updatelevel = SctLevel1
          Visible = False
        end
        object SctBand2: TSctBand
          Left = 0
          Top = 20
          Width = 1096
          Height = 39
          ParentColor = True
          BandName = 'Page Header'
          Updatelevel = SctLevel2
          object Sctvarlabel34: TSctvarlabel
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
            Caption = 'Mapa de Entrega'
          end
          object Sctvarlabel35: TSctvarlabel
            Left = 947
            Top = 1
            Width = 31
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Data:'
          end
          object Sctvarlabel36: TSctvarlabel
            Left = 980
            Top = 1
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = SctDateTimeVar1
            DataFormat.DisplayFormat = 'dd/mm/yyyy'
          end
          object Sctvarlabel37: TSctvarlabel
            Left = 944
            Top = 18
            Width = 34
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Hora:'
          end
          object Sctvarlabel38: TSctvarlabel
            Left = 980
            Top = 18
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = SctDateTimeVar1
            DataFormat.DisplayFormat = 'hh:mm:ss'
          end
          object SctLine2: TSctLine
            Left = 0
            Top = 31
            Width = 1046
            Height = 7
          end
          object Sctvarlabel39: TSctvarlabel
            Left = 0
            Top = 18
            Width = 79
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            Caption = 'Romaneio N'#186':'
          end
          object Sctvarlabel40: TSctvarlabel
            Left = 81
            Top = 18
            Width = 55
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            Variable = adodsdadosNr_RomaneioVar1
          end
        end
        object SctBand3: TSctBand
          Left = 0
          Top = 153
          Width = 1096
          Height = 18
          ParentColor = True
          BandName = 'Detail'
          Updatelevel = SctLevel3
          Stretch = True
          OnBeforePrint = SctBand3BeforePrint
          object Sctvarlabel41: TSctvarlabel
            Left = 1
            Top = 1
            Width = 60
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laRight
            Variable = adodsorcselDp_OrcamentoVar1
          end
          object Sctvarlabel42: TSctvarlabel
            Left = 66
            Top = -1
            Width = 215
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            WrapText = True
            Stretch = True
            Variable = adodsorcselNm_EmitenteVar1
          end
          object Sctvarlabel43: TSctvarlabel
            Left = 996
            Top = 1
            Width = 49
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laRight
            Variable = adodsorcselPs_CargaVar1
            DataFormat.DisplayFormat = '#,##0.0'
            DataFormat.Digits = 1
          end
          object Sctvarlabel44: TSctvarlabel
            Left = 800
            Top = 1
            Width = 60
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laRight
            Variable = adodsorcselVl_OrcamentoVar1
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
          end
          object Sctvarlabel45: TSctvarlabel
            Left = 283
            Top = 1
            Width = 206
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            WrapText = True
            Stretch = True
            Variable = adodsorcselDp_EnderecoVar
          end
          object Sctvarlabel68: TSctvarlabel
            Left = 492
            Top = 1
            Width = 174
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            WrapText = True
            Stretch = True
            Variable = adodsorcselDp_ObsEntregaVar
          end
          object Sctvarlabel72: TSctvarlabel
            Left = 669
            Top = 1
            Width = 85
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            WrapText = True
            Stretch = True
            Variable = adodsorcselDp_TelefoneVar
          end
          object Sctvarlabel119: TSctvarlabel
            Left = 866
            Top = 1
            Width = 60
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laRight
            Variable = adodsorcselVl_RecebidoVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
          end
          object Sctvarlabel120: TSctvarlabel
            Left = 930
            Top = 1
            Width = 60
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laRight
            Variable = adodsorcselVl_ReceberVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
          end
          object Sctvarlabel123: TSctvarlabel
            Left = 763
            Top = 1
            Width = 34
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laRight
            Variable = adodsorcselQt_PecasVar
            DataFormat.DisplayFormat = '#,###'
          end
        end
        object SctBand4: TSctBand
          Left = 0
          Top = 186
          Width = 1096
          Height = 20
          ParentColor = True
          BandName = 'Page Footer'
          Updatelevel = SctLevel4
          object SctLine3: TSctLine
            Left = 0
            Top = 1
            Width = 1046
            Height = 7
            AlignVertical = laTop
          end
          object Sctvarlabel46: TSctvarlabel
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
            Variable = adodsfilialDp_FilialVar1
          end
          object Sctvarlabel47: TSctvarlabel
            Left = 961
            Top = 2
            Width = 44
            Height = 17
            AlignHorizontal = laRight
            Caption = 'P'#225'gina:'
          end
          object Sctvarlabel48: TSctvarlabel
            Left = 1011
            Top = 2
            Width = 35
            Height = 17
            AlignHorizontal = laRight
            Variable = SctPageVar1
            DataFormat.DisplayFormat = '#,###'
          end
          object SctTxtUsuario2: TSctvarlabel
            Left = 750
            Top = 2
            Width = 210
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Usuario'
          end
        end
        object SctBand5: TSctBand
          Left = 0
          Top = 221
          Width = 1096
          Height = 20
          ParentColor = True
          BandName = 'Report Footer'
          Updatelevel = SctLevel5
          object SctLine6: TSctLine
            Left = 679
            Top = 1
            Width = 368
            Height = 7
            AlignVertical = laTop
          end
          object Sctvarlabel121: TSctvarlabel
            Left = 678
            Top = 2
            Width = 65
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Totais'
          end
          object SctTotalvarLabel1: TSctTotalvarLabel
            Left = 800
            Top = 2
            Width = 60
            Height = 17
            TotalVariable = TotalOfVl_Orcamento
            DataFormat.DisplayFormat = '#,##0.00'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object SctTotalvarLabel2: TSctTotalvarLabel
            Left = 866
            Top = 3
            Width = 60
            Height = 17
            TotalVariable = TotalOfVl_Recebido
            DataFormat.DisplayFormat = '#,##0.00'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object SctTotalvarLabel3: TSctTotalvarLabel
            Left = 930
            Top = 2
            Width = 60
            Height = 17
            TotalVariable = TotalOfVl_Receber
            DataFormat.DisplayFormat = '#,##0.00'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object SctTotalvarLabel4: TSctTotalvarLabel
            Left = 996
            Top = 3
            Width = 49
            Height = 17
            TotalVariable = TotalOfPs_Carga
            DataFormat.DisplayFormat = '#,##0.0'
            DataFormat.Digits = 1
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object SctTotalvarLabel5: TSctTotalvarLabel
            Left = 751
            Top = 2
            Width = 46
            Height = 17
            TotalVariable = TotalOfQt_Pecas
            DataFormat.DisplayFormat = '#,###.##'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
        end
        object SctSubBand1: TSctSubBand
          Left = 0
          Top = 74
          Width = 1096
          Height = 64
          Color = 16316664
          BandName = 'PageHeaderBandSub'
          Updatelevel = SctLevel2
          Band = SctBand2
          Above = False
          object SctLine5: TSctLine
            Left = 1
            Top = 60
            Width = 1046
            Height = 4
          end
          object Sctvarlabel49: TSctvarlabel
            Left = -6
            Top = 31
            Width = 72
            Height = 34
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laRight
            WrapText = True
            Caption = 'Or'#231'amento Nota Fiscal'
          end
          object Sctvarlabel50: TSctvarlabel
            Left = 66
            Top = 46
            Width = 100
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = 'Cliente'
          end
          object Sctvarlabel51: TSctvarlabel
            Left = 996
            Top = 46
            Width = 49
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Peso'
          end
          object Sctvarlabel52: TSctvarlabel
            Left = 804
            Top = 46
            Width = 60
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Valor'
          end
          object Sctvarlabel53: TSctvarlabel
            Left = 283
            Top = 46
            Width = 132
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = 'Endere'#231'o'
          end
          object Sctvarlabel54: TSctvarlabel
            Left = 0
            Top = 1
            Width = 89
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Transportador:'
          end
          object Sctvarlabel55: TSctvarlabel
            Left = 90
            Top = 1
            Width = 369
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Variable = adodsdadosNm_TransportadorVar1
          end
          object Sctvarlabel56: TSctvarlabel
            Left = 518
            Top = 1
            Width = 38
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Placa:'
          end
          object Sctvarlabel57: TSctvarlabel
            Left = 557
            Top = 1
            Width = 60
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Variable = adodsdadosNr_PlacaVar1
          end
          object Sctvarlabel58: TSctvarlabel
            Left = 0
            Top = 17
            Width = 73
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Capacidade:'
          end
          object Sctvarlabel59: TSctvarlabel
            Left = 73
            Top = 17
            Width = 60
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Variable = adodsdadosCp_VeiculoVar1
            DataFormat.DisplayFormat = '#,##0.0'
            DataFormat.Digits = 1
          end
          object Sctvarlabel60: TSctvarlabel
            Left = 136
            Top = 17
            Width = 51
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Alocado:'
          end
          object Sctvarlabel61: TSctvarlabel
            Left = 190
            Top = 17
            Width = 60
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Variable = adodsdadosPs_AlocadoVar1
            DataFormat.DisplayFormat = '#,##0.0'
            DataFormat.Digits = 1
          end
          object Sctvarlabel62: TSctvarlabel
            Left = 254
            Top = 17
            Width = 64
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Disponivel:'
          end
          object Sctvarlabel63: TSctvarlabel
            Left = 320
            Top = 17
            Width = 60
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Variable = adodsdadosQt_DisponivelVar1
            DataFormat.DisplayFormat = '#,##0.0'
            DataFormat.Digits = 1
          end
          object Sctvarlabel64: TSctvarlabel
            Left = 383
            Top = 17
            Width = 78
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Or'#231'amentos:'
          end
          object Sctvarlabel65: TSctvarlabel
            Left = 462
            Top = 17
            Width = 60
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Variable = adodsdadosQt_OrcamentoVar1
          end
          object Sctvarlabel66: TSctvarlabel
            Left = 525
            Top = 17
            Width = 56
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Situa'#231#227'o:'
          end
          object Sctvarlabel67: TSctvarlabel
            Left = 583
            Top = 17
            Width = 95
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Variable = adodsdadosDs_SituacaoVar1
          end
          object Sctvarlabel70: TSctvarlabel
            Left = 669
            Top = 46
            Width = 85
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = 'Telefones'
          end
          object Sctvarlabel71: TSctvarlabel
            Left = 492
            Top = 46
            Width = 132
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = 'Observa'#231#245'es'
          end
          object Sctvarlabel117: TSctvarlabel
            Left = 866
            Top = 46
            Width = 60
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Recebido'
          end
          object Sctvarlabel118: TSctvarlabel
            Left = 930
            Top = 46
            Width = 60
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Receber'
          end
          object Sctvarlabel122: TSctvarlabel
            Left = 763
            Top = 46
            Width = 34
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Pe'#231'as'
          end
        end
      end
    end
    object SctRepMapaFrete: TSctReport
      Left = 85
      Top = 185
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
      TabOrder = 19
      Visible = False
      Minimized = True
      Prompt = True
      AutoRun = False
      SuppressStatus = False
      PixelsPerInch = 96
      STop = 10
      SLeft = 6
      SWidth = 835
      SHeight = 576
      MTop = 185
      MLeft = 85
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
        PageSetup.LeftMargin = 0.4
        PageSetup.RightMargin = 0.4
        BorderType = btNone
        Description = 'Mapa de Frete'
        CloseDataSet = False
        DataRange = drAllRecords
        OmitLastPgFt = False
        Head = ReportHeaderBand
        Detail = DetailBand
        Foot = ReportFooterBand
        PageHead = PageHeaderBand
        PageFoot = PageFooterBand
        DataSource = DsOrcSel
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
          DataSource = DsDados
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
          DataSource = DsOrcSel
        end
        object DataSourceGuide5: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = DsItem
        end
        object DataSourceGuide6: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = DsDetalhe
        end
        object adodsorcselNm_EmitenteVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nm_Emitente'
          DataSource = DsOrcSel
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcselPs_CargaVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ps_Carga'
          DataSource = DsOrcSel
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcselDp_LocalidadeVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_Localidade'
          DataSource = DsOrcSel
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsdadosNm_TransportadorVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nm_Transportador'
          DataSource = DsDados
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsdadosNr_PlacaVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_Placa'
          DataSource = DsDados
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsdadosCp_VeiculoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Cp_Veiculo'
          DataSource = DsDados
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsdadosPs_AlocadoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ps_Alocado'
          DataSource = DsDados
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcselVL_Pedido_FreteVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'VL_Pedido_Frete'
          DataSource = DsOrcSel
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcselDp_OrcamentoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_Orcamento'
          DataSource = DsOrcSel
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsdadosQt_DisponivelVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Qt_Disponivel'
          DataSource = DsDados
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsdadosQt_OrcamentoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Qt_Orcamento'
          DataSource = DsDados
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsdadosNr_RomaneioVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_Romaneio'
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
        object DataSourceGuide8: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = DmMaster.DsConexao
        end
        object DataSourceGuide10: TSctDataSourceGuide
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
          Width = 767
          Height = 5
          ParentColor = True
          BandName = 'Report Header'
          Updatelevel = ReportHeaderBandlevel
          Visible = False
        end
        object PageHeaderBand: TSctBand
          Left = 0
          Top = 20
          Width = 767
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
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Mapa de Frete'
          end
          object Sctvarlabel1: TSctvarlabel
            Left = 619
            Top = 1
            Width = 31
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Data:'
          end
          object Sctvarlabel2: TSctvarlabel
            Left = 652
            Top = 1
            Width = 65
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laRight
            Variable = svarDateTime
            DataFormat.DisplayFormat = 'dd/mm/yyyy'
          end
          object Sctvarlabel3: TSctvarlabel
            Left = 616
            Top = 18
            Width = 34
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Hora:'
          end
          object Sctvarlabel4: TSctvarlabel
            Left = 652
            Top = 18
            Width = 65
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laRight
            Variable = svarDateTime
            DataFormat.DisplayFormat = 'hh:mm:ss'
          end
          object SctLine1: TSctLine
            Left = 0
            Top = 31
            Width = 716
            Height = 7
          end
          object Sctvarlabel14: TSctvarlabel
            Left = 0
            Top = 18
            Width = 79
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            Caption = 'Romaneio N'#186':'
          end
          object Sctvarlabel31: TSctvarlabel
            Left = 81
            Top = 18
            Width = 55
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            Variable = adodsdadosNr_RomaneioVar
          end
        end
        object DetailBand: TSctBand
          Left = 0
          Top = 156
          Width = 767
          Height = 18
          ParentColor = True
          BandName = 'Detail'
          Updatelevel = DetailBandlevel
          Stretch = True
          object Sctvarlabel7: TSctvarlabel
            Left = 1
            Top = 1
            Width = 60
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laRight
            Variable = adodsorcselDp_OrcamentoVar
          end
          object Sctvarlabel8: TSctvarlabel
            Left = 66
            Top = -1
            Width = 313
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            WrapText = True
            Stretch = True
            Variable = adodsorcselNm_EmitenteVar
          end
          object Sctvarlabel15: TSctvarlabel
            Left = 661
            Top = 1
            Width = 60
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laRight
            Variable = adodsorcselPs_CargaVar
            DataFormat.DisplayFormat = '#,##0.0'
            DataFormat.Digits = 1
          end
          object Sctvarlabel16: TSctvarlabel
            Left = 596
            Top = 1
            Width = 60
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laRight
            Variable = adodsorcselVL_Pedido_FreteVar
          end
          object Sctvarlabel20: TSctvarlabel
            Left = 380
            Top = -1
            Width = 215
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            WrapText = True
            Stretch = True
            Variable = adodsorcselDp_LocalidadeVar
          end
        end
        object PageFooterBand: TSctBand
          Left = 0
          Top = 189
          Width = 767
          Height = 20
          ParentColor = True
          BandName = 'Page Footer'
          Updatelevel = PageFooterBandlevel
          object SctLine4: TSctLine
            Left = 0
            Top = 1
            Width = 716
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
            Left = 636
            Top = 2
            Width = 44
            Height = 17
            AlignHorizontal = laRight
            Caption = 'P'#225'gina:'
          end
          object Sctvarlabel13: TSctvarlabel
            Left = 683
            Top = 2
            Width = 35
            Height = 17
            AlignHorizontal = laRight
            Variable = svarPage
            DataFormat.DisplayFormat = '#,###'
          end
          object SctTxtUsuario: TSctvarlabel
            Left = 400
            Top = 2
            Width = 210
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Usuario'
          end
        end
        object ReportFooterBand: TSctBand
          Left = 0
          Top = 224
          Width = 767
          Height = 20
          ParentColor = True
          BandName = 'Report Footer'
          Updatelevel = ReportFooterBandlevel
        end
        object PageHeaderBandSub: TSctSubBand
          Left = 0
          Top = 74
          Width = 767
          Height = 67
          Color = 16316664
          BandName = 'PageHeaderBandSub'
          Updatelevel = PageHeaderBandlevel
          Band = PageHeaderBand
          Above = False
          object SctLine22: TSctLine
            Left = 1
            Top = 63
            Width = 720
            Height = 4
          end
          object Sctvarlabel5: TSctvarlabel
            Left = -7
            Top = 31
            Width = 72
            Height = 34
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laRight
            WrapText = True
            Caption = 'Or'#231'amento Nota Fiscal'
          end
          object Sctvarlabel6: TSctvarlabel
            Left = 66
            Top = 46
            Width = 100
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = 'Cliente'
          end
          object Sctvarlabel9: TSctvarlabel
            Left = 661
            Top = 46
            Width = 60
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Peso'
          end
          object Sctvarlabel10: TSctvarlabel
            Left = 596
            Top = 46
            Width = 60
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Frete'
          end
          object Sctvarlabel17: TSctvarlabel
            Left = 380
            Top = 46
            Width = 159
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = 'Localidade (Cidade / Rota)'
          end
          object Sctvarlabel18: TSctvarlabel
            Left = 0
            Top = 1
            Width = 89
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Transportador:'
          end
          object Sctvarlabel19: TSctvarlabel
            Left = 90
            Top = 1
            Width = 369
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Variable = adodsdadosNm_TransportadorVar
          end
          object Sctvarlabel21: TSctvarlabel
            Left = 518
            Top = 1
            Width = 38
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Placa:'
          end
          object Sctvarlabel22: TSctvarlabel
            Left = 557
            Top = 1
            Width = 60
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Variable = adodsdadosNr_PlacaVar
          end
          object Sctvarlabel23: TSctvarlabel
            Left = 0
            Top = 17
            Width = 73
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Capacidade:'
          end
          object Sctvarlabel24: TSctvarlabel
            Left = 73
            Top = 17
            Width = 60
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Variable = adodsdadosCp_VeiculoVar
            DataFormat.DisplayFormat = '#,##0.0'
            DataFormat.Digits = 1
          end
          object Sctvarlabel25: TSctvarlabel
            Left = 136
            Top = 17
            Width = 53
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Alocado:'
          end
          object Sctvarlabel26: TSctvarlabel
            Left = 190
            Top = 17
            Width = 60
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Variable = adodsdadosPs_AlocadoVar
            DataFormat.DisplayFormat = '#,##0.0'
            DataFormat.Digits = 1
          end
          object Sctvarlabel27: TSctvarlabel
            Left = 254
            Top = 17
            Width = 65
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Disponivel:'
          end
          object Sctvarlabel28: TSctvarlabel
            Left = 322
            Top = 17
            Width = 60
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Variable = adodsdadosQt_DisponivelVar
            DataFormat.DisplayFormat = '#,##0.0'
            DataFormat.Digits = 1
          end
          object Sctvarlabel29: TSctvarlabel
            Left = 385
            Top = 17
            Width = 78
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Or'#231'amentos:'
          end
          object Sctvarlabel30: TSctvarlabel
            Left = 464
            Top = 17
            Width = 60
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Variable = adodsdadosQt_OrcamentoVar
          end
          object Sctvarlabel32: TSctvarlabel
            Left = 527
            Top = 17
            Width = 56
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Situa'#231#227'o:'
          end
          object Sctvarlabel33: TSctvarlabel
            Left = 585
            Top = 17
            Width = 95
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Variable = adodsdadosDs_SituacaoVar
          end
        end
      end
    end
    object SctMapaCarregamento: TSctReport
      Left = 258
      Top = 185
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
      TabOrder = 21
      Visible = False
      Minimized = True
      Prompt = True
      AutoRun = False
      SuppressStatus = False
      PixelsPerInch = 96
      STop = 33
      SLeft = 74
      SWidth = 836
      SHeight = 581
      MTop = 185
      MLeft = 258
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
        PageSetup.Height = 11.69291338582677
        PageSetup.Width = 8.26771653543307
        PageSetup.PreviewSettings.ModalPreview = mpNonModal
        PageSetup.PreviewSettings.PreviewOwner = poAppOwned
        PageSetup.PreviewSettings.FormStyle = pfsMDIChild
        PageSetup.PreviewSettings.Zoom = azHeight
        PageSetup.LeftMargin = 0.4
        PageSetup.RightMargin = 0.4
        BorderType = btNone
        Description = 'Mapa de Carregamento'
        CloseDataSet = False
        DataRange = drAllRecords
        OmitLastPgFt = False
        Head = SctBand6
        Detail = SctBand8
        Foot = SctBand10
        PageHead = SctBand7
        PageFoot = SctBand9
        DataSource = DsOrcSel
        Order = 1
        object SctLevel6: TSctLevel
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          IsHeader = True
        end
        object SctLevel7: TSctLevel
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          IsHeader = True
        end
        object SctLevel8: TSctLevel
          Left = 0
          Top = 0
          Width = 0
          Height = 0
        end
        object SctLevel9: TSctLevel
          Left = 0
          Top = 0
          Width = 0
          Height = 0
        end
        object SctLevel10: TSctLevel
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
          UpdateLevel = SctLevel6
          AutoVar = True
          ID = vidDateTimeVar
        end
        object SctPageVar2: TSctPageVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          UpdateLevel = SctLevel7
          AutoVar = True
          ID = vidPageVar
        end
        object SctDataSourceGuide8: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel8
          DataSource = DsDados
        end
        object SctDataSourceGuide9: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel8
          DataSource = DmMaster.DsUsuario
        end
        object SctDataSourceGuide10: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel8
          DataSource = DmMaster.DsFilial
        end
        object SctDataSourceGuide11: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel8
          DataSource = FrmFoto_Grupo_Find.DsFind
        end
        object SctDataSourceGuide12: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel8
          DataSource = DsOrcSel
        end
        object SctDataSourceGuide13: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DataLevel
          DataSource = DsItem
        end
        object SctDataSourceGuide14: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = Data1Level
          DataSource = DsDetalhe
        end
        object adodsfilialDp_FilialVar2: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_Filial'
          DataSource = DmMaster.DsFilial
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsdadosNr_RomaneioVar2: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_Romaneio'
          DataSource = DsDados
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsdadosNm_TransportadorVar2: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nm_Transportador'
          DataSource = DsDados
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsdadosNr_PlacaVar2: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_Placa'
          DataSource = DsDados
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsdadosCp_VeiculoVar2: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Cp_Veiculo'
          DataSource = DsDados
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsdadosPs_AlocadoVar2: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ps_Alocado'
          DataSource = DsDados
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsdadosQt_DisponivelVar2: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Qt_Disponivel'
          DataSource = DsDados
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsdadosQt_OrcamentoVar2: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Qt_Orcamento'
          DataSource = DsDados
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsdadosDs_SituacaoVar2: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ds_Situacao'
          DataSource = DsDados
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcselDp_LocalidadeVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_Localidade'
          DataSource = DsOrcSel
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcselPs_CargaVar2: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ps_Carga'
          DataSource = DsOrcSel
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcselDp_OrcamentoVar2: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_Orcamento'
          DataSource = DsOrcSel
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcselNm_EmitenteVar2: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nm_Emitente'
          DataSource = DsOrcSel
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcselNm_FuncionarioVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nm_Funcionario'
          DataSource = DsOrcSel
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidAutoDataVar
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
        object adodsitemQt_ItemVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Qt_Item'
          DataSource = DsItem
          UpdateLevel = DataLevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemCd_ProdutoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Cd_Produto'
          DataSource = DsItem
          UpdateLevel = DataLevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemSg_UnidadeVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Sg_Unidade'
          DataSource = DsItem
          UpdateLevel = DataLevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemNm_ProdutoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nm_Produto'
          DataSource = DsItem
          UpdateLevel = DataLevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemPs_ItemVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ps_Item'
          DataSource = DsItem
          UpdateLevel = DataLevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object Data1Level: TSctLevel
          Left = 0
          Top = 0
          Width = 0
          Height = 0
        end
        object adodsdetalheDp_DetalheVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_Detalhe'
          DataSource = DsDetalhe
          UpdateLevel = Data1Level
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsdetalheQt_ItemVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Qt_Item'
          DataSource = DsDetalhe
          UpdateLevel = Data1Level
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcselDp_EnderecoVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_Endereco'
          DataSource = DsOrcSel
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcselDp_EndCompletoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_EndCompleto'
          DataSource = DsOrcSel
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsfilialMm_RodapeVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Mm_Rodape'
          DataSource = DmMaster.DsFilial
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidAutoDataVar
        end
        object DataSourceGuide7: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel8
          DataSource = DmMaster.DsConexao
        end
        object TotalOfQt_Item: TSctTotalvar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Variable = adodsdetalheQt_ItemVar
          UpdateLevel = Data1Level
          AutoVar = False
          ID = vidTotalVar
        end
        object DataSourceGuide12: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel8
          DataSource = DmMaster.DsConecadoMes
        end
        object DataSourceGuide13: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = True
          UpdateLevel = SctLevel8
          DataSource = FrmCarga_Alocacao.DsOrcamento
        end
        object DataSourceGuide14: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = True
          UpdateLevel = SctLevel8
          DataSource = FrmCarga_Alocacao.DsItem
        end
        object DataSourceGuide15: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = True
          UpdateLevel = SctLevel8
          DataSource = FrmCarga_Alocacao.DsDetalhe
        end
        object adodsorcamentoCd_FilialVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Cd_Filial'
          DataSource = FrmCarga_Alocacao.DsOrcamento
          UpdateLevel = SctLevel8
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsorcamentoNr_RomaneioVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_Romaneio'
          DataSource = FrmCarga_Alocacao.DsOrcamento
          UpdateLevel = SctLevel8
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsorcamentoNr_OrdemVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_Ordem'
          DataSource = FrmCarga_Alocacao.DsOrcamento
          UpdateLevel = SctLevel8
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsorcamentoNr_OrcamentoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_Orcamento'
          DataSource = FrmCarga_Alocacao.DsOrcamento
          UpdateLevel = SctLevel8
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsorcamentoNm_EmitenteVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nm_Emitente'
          DataSource = FrmCarga_Alocacao.DsOrcamento
          UpdateLevel = SctLevel8
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsorcamentoNr_FaturaVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_Fatura'
          DataSource = FrmCarga_Alocacao.DsOrcamento
          UpdateLevel = SctLevel8
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsorcamentoDp_LocalidadeVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_Localidade'
          DataSource = FrmCarga_Alocacao.DsOrcamento
          UpdateLevel = SctLevel8
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsorcamentoFl_AlocarVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Fl_Alocar'
          DataSource = FrmCarga_Alocacao.DsOrcamento
          UpdateLevel = SctLevel8
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsorcamentoDp_AlocarVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_Alocar'
          DataSource = FrmCarga_Alocacao.DsOrcamento
          UpdateLevel = SctLevel8
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsorcamentoPs_AlocarVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ps_Alocar'
          DataSource = FrmCarga_Alocacao.DsOrcamento
          UpdateLevel = SctLevel8
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsitemCd_FilialVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Cd_Filial'
          DataSource = FrmCarga_Alocacao.DsItem
          UpdateLevel = SctLevel8
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsitemNr_RomaneioVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_Romaneio'
          DataSource = FrmCarga_Alocacao.DsItem
          UpdateLevel = SctLevel8
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsitemNr_OrcamentoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_Orcamento'
          DataSource = FrmCarga_Alocacao.DsItem
          UpdateLevel = SctLevel8
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsitemNr_ItemVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_Item'
          DataSource = FrmCarga_Alocacao.DsItem
          UpdateLevel = SctLevel8
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsitemNm_ProdutoVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nm_Produto'
          DataSource = FrmCarga_Alocacao.DsItem
          UpdateLevel = SctLevel8
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsitemFl_MedidaVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Fl_Medida'
          DataSource = FrmCarga_Alocacao.DsItem
          UpdateLevel = SctLevel8
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsitemSg_UnidadeVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Sg_Unidade'
          DataSource = FrmCarga_Alocacao.DsItem
          UpdateLevel = SctLevel8
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsitemQt_ItemVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Qt_Item'
          DataSource = FrmCarga_Alocacao.DsItem
          UpdateLevel = SctLevel8
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsitemQt_AlocarVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Qt_Alocar'
          DataSource = FrmCarga_Alocacao.DsItem
          UpdateLevel = SctLevel8
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsitemQt_AlocadoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Qt_Alocado'
          DataSource = FrmCarga_Alocacao.DsItem
          UpdateLevel = SctLevel8
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsitemFl_DetalheVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Fl_Detalhe'
          DataSource = FrmCarga_Alocacao.DsItem
          UpdateLevel = SctLevel8
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsitemVl_ArredondamentoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Vl_Arredondamento'
          DataSource = FrmCarga_Alocacao.DsItem
          UpdateLevel = SctLevel8
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsitemPs_ProdutoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ps_Produto'
          DataSource = FrmCarga_Alocacao.DsItem
          UpdateLevel = SctLevel8
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsitemCd_ProdutoVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Cd_Produto'
          DataSource = FrmCarga_Alocacao.DsItem
          UpdateLevel = SctLevel8
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsdetalheCd_FilialVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Cd_Filial'
          DataSource = FrmCarga_Alocacao.DsDetalhe
          UpdateLevel = SctLevel8
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsdetalheNr_RomaneioVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_Romaneio'
          DataSource = FrmCarga_Alocacao.DsDetalhe
          UpdateLevel = SctLevel8
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsdetalheNr_OrcamentoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_Orcamento'
          DataSource = FrmCarga_Alocacao.DsDetalhe
          UpdateLevel = SctLevel8
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsdetalheNr_ItemVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_Item'
          DataSource = FrmCarga_Alocacao.DsDetalhe
          UpdateLevel = SctLevel8
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsdetalheNr_DetalheVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_Detalhe'
          DataSource = FrmCarga_Alocacao.DsDetalhe
          UpdateLevel = SctLevel8
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsdetalheQt_ItemVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Qt_Item'
          DataSource = FrmCarga_Alocacao.DsDetalhe
          UpdateLevel = SctLevel8
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsdetalheNr_AlturaVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_Altura'
          DataSource = FrmCarga_Alocacao.DsDetalhe
          UpdateLevel = SctLevel8
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsdetalheNr_LarguraVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_Largura'
          DataSource = FrmCarga_Alocacao.DsDetalhe
          UpdateLevel = SctLevel8
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsdetalheNr_ComprimentoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_Comprimento'
          DataSource = FrmCarga_Alocacao.DsDetalhe
          UpdateLevel = SctLevel8
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsdetalheDs_DetalheVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ds_Detalhe'
          DataSource = FrmCarga_Alocacao.DsDetalhe
          UpdateLevel = SctLevel8
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsdetalheQt_AlocarVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Qt_Alocar'
          DataSource = FrmCarga_Alocacao.DsDetalhe
          UpdateLevel = SctLevel8
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsdetalheDp_DetalheVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_Detalhe'
          DataSource = FrmCarga_Alocacao.DsDetalhe
          UpdateLevel = SctLevel8
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsdetalheQt_AlocadoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Qt_Alocado'
          DataSource = FrmCarga_Alocacao.DsDetalhe
          UpdateLevel = SctLevel8
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsdetalheQt_AreaVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Qt_Area'
          DataSource = FrmCarga_Alocacao.DsDetalhe
          UpdateLevel = SctLevel8
          AutoVar = True
          ID = vidAutoDataVar
        end
        object SctBand6: TSctBand
          Left = 0
          Top = 0
          Width = 767
          Height = 5
          ParentColor = True
          BandName = 'Report Header'
          Updatelevel = SctLevel6
          Visible = False
        end
        object SctBand7: TSctBand
          Left = 0
          Top = 20
          Width = 767
          Height = 36
          ParentColor = True
          BandName = 'Page Header'
          Updatelevel = SctLevel7
          object Sctvarlabel69: TSctvarlabel
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
            Caption = 'Mapa de Carregamento'
          end
          object Sctvarlabel73: TSctvarlabel
            Left = 619
            Top = 1
            Width = 31
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Data:'
          end
          object Sctvarlabel74: TSctvarlabel
            Left = 652
            Top = 1
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = SctDateTimeVar2
            DataFormat.DisplayFormat = 'dd/mm/yyyy'
          end
          object Sctvarlabel75: TSctvarlabel
            Left = 616
            Top = 18
            Width = 34
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Hora:'
          end
          object Sctvarlabel76: TSctvarlabel
            Left = 652
            Top = 18
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = SctDateTimeVar2
            DataFormat.DisplayFormat = 'hh:mm:ss'
          end
          object Sctvarlabel77: TSctvarlabel
            Left = 0
            Top = 18
            Width = 79
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            Caption = 'Romaneio N'#186':'
          end
          object Sctvarlabel78: TSctvarlabel
            Left = 81
            Top = 18
            Width = 55
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            Variable = adodsdadosNr_RomaneioVar2
          end
        end
        object SctBand8: TSctBand
          Left = 0
          Top = 185
          Width = 767
          Height = 25
          ParentColor = True
          BandName = 'Detail'
          Updatelevel = SctLevel8
          Stretch = True
          object Sctvarlabel79: TSctvarlabel
            Left = 1
            Top = 8
            Width = 60
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laRight
            Variable = adodsorcselDp_OrcamentoVar2
          end
          object Sctvarlabel80: TSctvarlabel
            Left = 66
            Top = 6
            Width = 250
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            WrapText = True
            Stretch = True
            Variable = adodsorcselNm_EmitenteVar2
          end
          object Sctvarlabel82: TSctvarlabel
            Left = 492
            Top = 6
            Width = 220
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            WrapText = True
            Stretch = True
            Variable = adodsorcselDp_EndCompletoVar
          end
          object Sctvarlabel83: TSctvarlabel
            Left = 318
            Top = 6
            Width = 173
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            WrapText = True
            Stretch = True
            Variable = adodsorcselNm_FuncionarioVar
          end
        end
        object SctBand9: TSctBand
          Left = 0
          Top = 373
          Width = 767
          Height = 20
          ParentColor = True
          BandName = 'Page Footer'
          Updatelevel = SctLevel9
          object SctLine7: TSctLine
            Left = 0
            Top = 1
            Width = 716
            Height = 7
            AlignVertical = laTop
          end
          object Sctvarlabel84: TSctvarlabel
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
            Variable = adodsfilialDp_FilialVar2
          end
          object Sctvarlabel85: TSctvarlabel
            Left = 636
            Top = 2
            Width = 44
            Height = 17
            AlignHorizontal = laRight
            Caption = 'P'#225'gina:'
          end
          object Sctvarlabel86: TSctvarlabel
            Left = 683
            Top = 2
            Width = 35
            Height = 17
            AlignHorizontal = laRight
            Variable = SctPageVar2
            DataFormat.DisplayFormat = '#,###'
          end
          object SctTxtUsuario3: TSctvarlabel
            Left = 400
            Top = 2
            Width = 210
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Usuario'
          end
        end
        object SctBand10: TSctBand
          Left = 0
          Top = 408
          Width = 767
          Height = 24
          ParentColor = True
          BandName = 'Report Footer'
          OnPrintWhen = SctBand10PrintWhen
          Updatelevel = SctLevel10
          Stretch = True
          object Sctvarlabel124: TSctvarlabel
            Left = 32
            Top = 4
            Width = 656
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            WrapText = True
            Stretch = True
            Variable = adodsfilialMm_RodapeVar
          end
          object SctLine8: TSctLine
            Left = 0
            Top = 3
            Width = 716
            Height = 7
            AlignVertical = laTop
          end
        end
        object SctSubBand2: TSctSubBand
          Left = 0
          Top = 71
          Width = 767
          Height = 64
          Color = 16316664
          BandName = 'PageHeaderBandSub'
          Updatelevel = SctLevel7
          BorderType = btSingle
          Band = SctBand7
          Above = False
          object Sctvarlabel87: TSctvarlabel
            Left = -11
            Top = 31
            Width = 77
            Height = 34
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laRight
            WrapText = True
            Lines.Strings = (
              'Or'#231'amento '
              'Nota Fiscal'
            )
          end
          object Sctvarlabel88: TSctvarlabel
            Left = 66
            Top = 46
            Width = 100
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = 'Cliente'
          end
          object Sctvarlabel90: TSctvarlabel
            Left = 492
            Top = 46
            Width = 60
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = 'Endere'#231'o'
          end
          object Sctvarlabel91: TSctvarlabel
            Left = 318
            Top = 46
            Width = 132
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = 'Vendedor'
          end
          object Sctvarlabel92: TSctvarlabel
            Left = 0
            Top = 1
            Width = 90
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Transportador:'
          end
          object Sctvarlabel93: TSctvarlabel
            Left = 91
            Top = 1
            Width = 369
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Variable = adodsdadosNm_TransportadorVar2
          end
          object Sctvarlabel94: TSctvarlabel
            Left = 518
            Top = 1
            Width = 39
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Placa:'
          end
          object Sctvarlabel95: TSctvarlabel
            Left = 559
            Top = 1
            Width = 60
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Variable = adodsdadosNr_PlacaVar2
          end
          object Sctvarlabel96: TSctvarlabel
            Left = 0
            Top = 17
            Width = 74
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Capacidade:'
          end
          object Sctvarlabel97: TSctvarlabel
            Left = 73
            Top = 17
            Width = 60
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Variable = adodsdadosCp_VeiculoVar2
            DataFormat.DisplayFormat = '#,##0.0'
            DataFormat.Digits = 1
          end
          object Sctvarlabel98: TSctvarlabel
            Left = 136
            Top = 17
            Width = 51
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Alocado:'
          end
          object Sctvarlabel99: TSctvarlabel
            Left = 189
            Top = 17
            Width = 60
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Variable = adodsdadosPs_AlocadoVar2
            DataFormat.DisplayFormat = '#,##0.0'
            DataFormat.Digits = 1
          end
          object Sctvarlabel100: TSctvarlabel
            Left = 253
            Top = 17
            Width = 64
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Disponivel:'
          end
          object Sctvarlabel101: TSctvarlabel
            Left = 319
            Top = 17
            Width = 60
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Variable = adodsdadosQt_DisponivelVar2
            DataFormat.DisplayFormat = '#,##0.0'
            DataFormat.Digits = 1
          end
          object Sctvarlabel102: TSctvarlabel
            Left = 382
            Top = 17
            Width = 78
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Or'#231'amentos:'
          end
          object Sctvarlabel103: TSctvarlabel
            Left = 461
            Top = 17
            Width = 60
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Variable = adodsdadosQt_OrcamentoVar2
          end
          object Sctvarlabel104: TSctvarlabel
            Left = 524
            Top = 17
            Width = 56
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Situa'#231#227'o:'
          end
          object Sctvarlabel105: TSctvarlabel
            Left = 582
            Top = 17
            Width = 95
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Variable = adodsdadosDs_SituacaoVar2
          end
        end
        object Data: TSctSubDataBand
          Left = 0
          Top = 264
          Width = 767
          Height = 18
          ParentColor = True
          BandName = 'Data'
          Updatelevel = DataLevel
          OnBeforePrint = DataBeforePrint
          Band = SctBand8
          CloseDataSet = False
          DataRange = drAllRecords
          DataSource = DsItem
          object Sctvarlabel109: TSctvarlabel
            Left = 0
            Top = 0
            Width = 57
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laRight
            Variable = adodsitemCd_ProdutoVar
          end
          object Sctvarlabel110: TSctvarlabel
            Left = 58
            Top = 0
            Width = 479
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Variable = adodsitemNm_ProdutoVar
          end
          object Sctvarlabel111: TSctvarlabel
            Left = 543
            Top = 1
            Width = 42
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laCenter
            Variable = adodsitemSg_UnidadeVar
          end
          object Sctvarlabel112: TSctvarlabel
            Left = 586
            Top = 0
            Width = 65
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laRight
            Variable = adodsitemQt_ItemVar
          end
          object Sctvarlabel113: TSctvarlabel
            Left = 653
            Top = 0
            Width = 65
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laRight
            Variable = adodsitemPs_ItemVar
          end
        end
        object DataHeader: TSctDataHeadBand
          Left = 0
          Top = 225
          Width = 767
          Height = 24
          ParentColor = True
          BandName = 'DataHeader'
          Updatelevel = DataHeaderLevel
          OnAfterPrint = DataHeaderAfterPrint
          Band = Data
          object Sctvarlabel81: TSctvarlabel
            Left = 10
            Top = 5
            Width = 45
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'C'#243'digo'
          end
          object Sctvarlabel89: TSctvarlabel
            Left = 58
            Top = 5
            Width = 65
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = 'Produto'
          end
          object Sctvarlabel106: TSctvarlabel
            Left = 543
            Top = 5
            Width = 42
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laCenter
            Caption = 'Unid.'
          end
          object Sctvarlabel107: TSctvarlabel
            Left = 586
            Top = 5
            Width = 65
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Quantidade'
          end
          object Sctvarlabel108: TSctvarlabel
            Left = 653
            Top = 5
            Width = 65
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Peso'
          end
          object SctLine9: TSctLine
            Left = 1
            Top = 20
            Width = 716
            Height = 4
          end
        end
        object Data1: TSctSubDataBand
          Left = 0
          Top = 297
          Width = 767
          Height = 17
          ParentColor = True
          BandName = 'Data1'
          Updatelevel = Data1Level
          OnAfterPrint = Data1AfterPrint
          Band = Data
          CloseDataSet = False
          DataRange = drAllRecords
          DataSource = DsDetalhe
          object Sctvarlabel114: TSctvarlabel
            Left = 56
            Top = 1
            Width = 37
            Height = 15
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laRight
            Variable = adodsdetalheQt_ItemVar
          end
          object Sctvarlabel115: TSctvarlabel
            Left = 100
            Top = 1
            Width = 18
            Height = 15
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = 'P'#199
          end
          object Sctvarlabel116: TSctvarlabel
            Left = 123
            Top = 1
            Width = 423
            Height = 15
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Variable = adodsdetalheDp_DetalheVar
          end
        end
        object SctBdOrcDivider: TSctSubBand
          Left = 0
          Top = 150
          Width = 767
          Height = 20
          ParentColor = True
          BandName = 'SctBdOrcDivider'
          Updatelevel = SctLevel8
          Visible = False
          Band = SctBand8
          Above = True
        end
        object SctBdOrcTotal: TSctSubBand
          Left = 0
          Top = 329
          Width = 767
          Height = 29
          ParentColor = True
          BandName = 'SctBdOrcTotal'
          Updatelevel = SctLevel8
          Visible = False
          Band = SctBand8
          Above = False
          object Sctvarlabel125: TSctvarlabel
            Left = 56
            Top = 4
            Width = 106
            Height = 15
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Total de Pe'#231'as'
          end
          object SctTotalvarLabel6: TSctTotalvarLabel
            Left = 168
            Top = 4
            Width = 65
            Height = 17
            TotalVariable = TotalOfQt_Item
            DataFormat.DisplayFormat = '#,##0'
            DataFormat.Digits = 0
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object SctLine10: TSctLine
            Left = 0
            Top = 1
            Width = 233
            Height = 7
            AlignVertical = laTop
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
            Items = <
              item
                Action = ActMapaCarregamento
                ImageIndex = 20
              end
              item
                Action = ActMapaFrete
                Caption = '&Mapa de Frete'
                ImageIndex = 20
              end
              item
                Action = ActMapaEntrega
                Caption = 'M&apa de Entrega'
                ImageIndex = 20
              end>
            Action = ActReport
            ImageIndex = 20
            ShortCut = 117
          end
          item
            Caption = '-'
          end
          item
            Action = ActAlocar
            ImageIndex = 52
            ShortCut = 118
          end
          item
            Action = ActConfirm
            ImageIndex = 22
            ShortCut = 119
          end
          item
            Action = ActCancel
            ImageIndex = 21
            ShortCut = 120
          end
          item
            Action = ActRedo
            ImageIndex = 38
            ShortCut = 16504
          end>
        ActionBar = ActToolBDatabase
      end
      item
      end
      item
      end
      item
        Items = <
          item
            Action = ActOrcamentoDel
            ImageIndex = 19
            ShortCut = 16500
          end>
        ActionBar = ActToolBProdutos
      end>
    Images = FrmMain.ImgLstMenu
    Left = 745
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
      SecondaryShortCuts.Strings = (
        'Linha 1'
        'Linha 2'
        'Linha 3'
      )
      OnExecute = ActDelExecute
    end
    object ActReport: TAction
      Category = '2-Database'
      Hint = 'Relat'#243'rio'
      ImageIndex = 20
      ShortCut = 117
      OnExecute = ActMapaCarregamentoExecute
    end
    object ActAlocar: TAction
      Category = '2-Database'
      Hint = 'Alocar Itens na Carga'
      ImageIndex = 52
      ShortCut = 118
      OnExecute = ActAlocarExecute
    end
    object ActConfirm: TAction
      Category = '2-Database'
      Hint = 'Fechar Carga'
      ImageIndex = 22
      ShortCut = 119
      OnExecute = ActConfirmExecute
    end
    object ActCancel: TAction
      Category = '2-Database'
      Hint = 'Cancelar Carga'
      ImageIndex = 21
      ShortCut = 120
      OnExecute = ActCancelExecute
    end
    object ActRedo: TAction
      Category = '2-Database'
      Hint = 'Retornar Carga para "Aberto"'
      ImageIndex = 38
      ShortCut = 16504
      OnExecute = ActRedoExecute
    end
    object ActMapaFrete: TAction
      Category = '2-Database'
      Caption = 'Mapa de Frete'
      ImageIndex = 20
      OnExecute = ActMapaFreteExecute
    end
    object ActMapaEntrega: TAction
      Category = '2-Database'
      Caption = 'Mapa de Entrega'
      ImageIndex = 20
      OnExecute = ActMapaEntregaExecute
    end
    object ActMapaCarregamento: TAction
      Category = '2-Database'
      Caption = 'Mapa de Carregamento'
      ImageIndex = 20
      OnExecute = ActMapaCarregamentoExecute
    end
    object ActOrcamentoDel: TAction
      Category = '2-Database'
      Hint = 'Excluir or'#231'amento do carregamento'
      ImageIndex = 19
      ShortCut = 16500
      OnExecute = ActOrcamentoDelExecute
    end
  end
  object ADODsDados: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    OnCalcFields = ADODsDadosCalcFields
    CommandText = 'select'#13#10'  C.Cd_Filial, C.Nr_Romaneio, C.St_Carga, C.Dt_Carga, C.Cd_Usuario,'#13#10'  C.Cd_Transportador, T.Nm_Transportador, C.Nr_Placa, C.Dt_Saida,'#13#10'  C.Dt_Retorno, C.Vl_Frete, C.Cp_Veiculo, C.Dt_Prevista, C.Qt_Orcamento,'#13#10'  C.Ps_Alocado, C.Ds_Romaneio'#13#10#13#10'from'#13#10'  Carga C'#13#10#13#10'left join'#13#10'  Transportador T'#13#10'on'#13#10'  T.Cd_Transportador = C.Cd_Transportador'#13#10#13#10'where'#13#10'  C.Cd_Filial   = :Cd_Filial and'#13#10'  C.Nr_Romaneio = :Nr_Romaneio'
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
        Name = 'Nr_Romaneio'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = nil?
      end>
    Left = 52
    Top = 407
    object ADODsDadosCd_Filial: TSmallintField
      FieldName = 'Cd_Filial'
    end
    object ADODsDadosNr_Romaneio: TIntegerField
      FieldName = 'Nr_Romaneio'
    end
    object ADODsDadosSt_Carga: TStringField
      FieldName = 'St_Carga'
      FixedChar = True
      Size = 1
    end
    object ADODsDadosDt_Carga: TDateTimeField
      FieldName = 'Dt_Carga'
    end
    object ADODsDadosCd_Usuario: TStringField
      FieldName = 'Cd_Usuario'
      Size = 15
    end
    object ADODsDadosCd_Transportador: TSmallintField
      FieldName = 'Cd_Transportador'
    end
    object ADODsDadosNm_Transportador: TStringField
      FieldName = 'Nm_Transportador'
      Size = 50
    end
    object ADODsDadosNr_Placa: TStringField
      FieldName = 'Nr_Placa'
      Size = 10
    end
    object ADODsDadosDt_Saida: TDateTimeField
      FieldName = 'Dt_Saida'
    end
    object ADODsDadosDt_Retorno: TDateTimeField
      FieldName = 'Dt_Retorno'
    end
    object ADODsDadosVl_Frete: TBCDField
      FieldName = 'Vl_Frete'
      Precision = 12
      Size = 2
    end
    object ADODsDadosCp_Veiculo: TSmallintField
      FieldName = 'Cp_Veiculo'
    end
    object ADODsDadosDs_Situacao: TStringField
      FieldKind = fkCalculated
      FieldName = 'Ds_Situacao'
      Calculated = True
    end
    object ADODsDadosQt_Orcamento: TSmallintField
      FieldName = 'Qt_Orcamento'
    end
    object ADODsDadosPs_Alocado: TBCDField
      FieldName = 'Ps_Alocado'
      Precision = 12
      Size = 2
    end
    object ADODsDadosDt_Prevista: TDateTimeField
      FieldName = 'Dt_Prevista'
    end
    object ADODsDadosQt_Disponivel: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Qt_Disponivel'
      Calculated = True
    end
    object ADODsDadosDs_Romaneio: TStringField
      FieldName = 'Ds_Romaneio'
    end
  end
  object ADOCmdDados: TMultADOCMD
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLInsert.Strings = (
      'insert into Carga( Cd_Filial, Nr_Romaneio, St_Carga, Dt_Carga, Cd_Usuario,'
      '  Cd_Transportador, Nr_Placa, Vl_Frete, Cp_Veiculo, Dt_Prevista, Ds_Romaneio )'
      ''
      'values( :Cd_Filial, :Nr_Romaneio, ''''1'''', :Dt_Carga, :Cd_Usuario,'
      '  :Cd_Transportador, :Nr_Placa, :Vl_Frete, :Cp_Veiculo, :Dt_Prevista, :Ds_Romaneio )'
    )
    SQLUpdate.Strings = (
      'update'
      '  Carga'
      ''
      'set'
      '  Cd_Usuario       = :Cd_Usuario,'
      '  Cd_Transportador = :Cd_Transportador,'
      '  Nr_Placa         = :Nr_Placa,'
      '  Vl_Frete         = :Vl_Frete,'
      '  Cp_Veiculo       = :Cp_Veiculo,'
      '  Dt_Prevista      = :Dt_Prevista,'
      '  Ds_Romaneio      = :Ds_Romaneio'
      ''
      'where'
      '  Cd_Filial   = :Cd_Filial and'
      '  Nr_Romaneio = :Nr_Romaneio'
    )
    SQLDelete.Strings = (
      'delete from'
      '  Carga'
      ''
      'where'
      '  Cd_Filial = :Cd_Filial and'
      '  Nr_Romaneio = :Nr_Romaneio'
    )
    SQLOther0.Strings = (
      'update'
      '  Carga'
      ''
      'set'
      '  St_Carga = :St_Carga'
      ''
      'where'
      '  Cd_Filial   = :Cd_Filial and'
      '  Nr_Romaneio = :Nr_Romaneio'
    )
    SQLOther1.Strings = (
      '----- Calcula os totais da carga'
      'declare'
      '  @Cd_Filial SmallInt,'
      '  @Nr_Romaneio Int,'
      '  @Ps_Alocado numeric( 12, 4 ),'
      '  @Qt_Orcamento SmallInt'
      ''
      'select'
      '  @Cd_Filial   = :Cd_Filial,'
      '  @Nr_Romaneio = :Nr_Romaneio'
      ''
      'select'
      '  @Ps_Alocado   = sum( Ps_Carga ),'
      '  @Qt_Orcamento = count( * )'
      ''
      'from'
      '  Carga_Orcamento'
      ''
      'where'
      '  Cd_Filial   = @Cd_Filial and'
      '  Nr_Romaneio = @Nr_Romaneio'
      ''
      'update'
      '  Carga'
      ''
      'set'
      '  Ps_Alocado   = @Ps_Alocado,'
      '  Qt_Orcamento = @Qt_Orcamento'
      ''
      'where'
      '  Cd_Filial   = @Cd_Filial and'
      '  Nr_Romaneio = @Nr_Romaneio'
    )
    SQLOther2.Strings = (
      '------------------------- Excluir orcamento da carga'
      'declare'
      '  @Cd_Filial Smallint,'
      '  @Nr_Romaneio Int'
      ''
      'select'
      '  @Cd_Filial    = :Cd_Filial,'
      '  @Nr_Romaneio  = :Nr_Romaneio'
      ''
      'delete from'
      '  Carga_Orcamento'
      ''
      'where'
      '  Cd_Filial    = @Cd_Filial and'
      '  Nr_Romaneio  = @Nr_Romaneio and'
      '  Nr_Orcamento = :Nr_Orcamento'
      ''
      '------------------------- Reorganiza os itens'
      'update'
      '  Carga_Orcamento'
      ''
      'set'
      '  Nr_Ordem = Nr_Ordem - 1'
      ''
      'where'
      '  Cd_Filial    = @Cd_Filial and'
      '  Nr_Romaneio  = @Nr_Romaneio and'
      '  Nr_Ordem     > :Nr_Ordem'
    )
    SQLOther7.Strings = (
      '------------------------- Muda o numero da ordem - Menor Numero - para MENOR'
      'declare'
      '  @OldOrdem SmallInt,'
      '  @NewOrdem SmallInt,'
      '  @Cd_Filial SmallInt,'
      '  @Nr_Romaneio Int,'
      '  @Nr_Orcamento Int'
      ''
      'select'
      '  @OldOrdem     = :OldOrdem,'
      '  @NewOrdem     = :NewOrdem,'
      '  @Cd_Filial    = :Cd_Filial,'
      '  @Nr_Romaneio  = :Nr_Romaneio,'
      '  @Nr_Orcamento = :Nr_Orcamento'
      ''
      '-------------------------'
      'update'
      '  Carga_Orcamento'
      ''
      'set'
      '  Nr_Ordem = Nr_Ordem + 1'
      ''
      'where'
      '  Cd_Filial    = @Cd_Filial and'
      '  Nr_Romaneio  = @Nr_Romaneio and'
      '  Nr_Ordem    >= @NewOrdem and'
      '  Nr_Ordem    <= @OldOrdem'
      ''
      '------------------------- Muda ordem do item'
      'update'
      '  Carga_Orcamento'
      ''
      'set'
      '  Nr_Ordem = @NewOrdem'
      ''
      'where'
      '  Cd_Filial    = @Cd_Filial and'
      '  Nr_Romaneio  = @Nr_Romaneio and'
      '  Nr_Orcamento = @Nr_Orcamento'
    )
    SQLOther8.Strings = (
      '------------------------- Muda o numero da ordem - Menor Numero - para MAIOR'
      'declare'
      '  @OldOrdem SmallInt,'
      '  @NewOrdem SmallInt,'
      '  @Cd_Filial SmallInt,'
      '  @Nr_Romaneio Int,'
      '  @Nr_Orcamento Int'
      ''
      'select'
      '  @OldOrdem     = :OldOrdem,'
      '  @NewOrdem     = :NewOrdem,'
      '  @Cd_Filial    = :Cd_Filial,'
      '  @Nr_Romaneio  = :Nr_Romaneio,'
      '  @Nr_Orcamento = :Nr_Orcamento'
      ''
      '------------------------- Ajustar os itens do intervalo'
      'update'
      '  Carga_Orcamento'
      ''
      'set'
      '  Nr_Ordem = Nr_Ordem - 1'
      ''
      'where'
      '  Cd_Filial    = @Cd_Filial and'
      '  Nr_Romaneio  = @Nr_Romaneio and'
      '  Nr_Ordem     > @OldOrdem and'
      '  Nr_Ordem    <= @NewOrdem'
      ''
      '------------------------- Muda ordem do item'
      'update'
      '  Carga_Orcamento'
      ''
      'set'
      '  Nr_Ordem = @NewOrdem'
      ''
      'where'
      '  Cd_Filial    = @Cd_Filial and'
      '  Nr_Romaneio  = @Nr_Romaneio and'
      '  Nr_Orcamento = @Nr_Orcamento'
    )
    Left = 82
    Top = 407
  end
  object ADODsNavegar: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = '-- First'#13#10'select top 1'#13#10'  Nr_Romaneio'#13#10#13#10'from'#13#10'  Carga'#13#10#13#10'where'#13#10'  Cd_Filial = :Cd_Filial'#13#10#13#10'order by'#13#10'  Nr_Romaneio'
    Parameters = <
      item
        Name = 'Cd_Filial'
        DataType = ftSmallint
        Size = -1
        Value = nil?
      end>
    SQLPrimary.Strings = (
      'select'
      '  max( A.Nr_Romaneio ) + 1 as Nr_Romaneio'
      ''
      'from'
      '  Carga A'
      ''
      'where'
      '  Cd_Filial = :Cd_Filial'
    )
    SQLOther0.Strings = (
      '-- First'
      'select top 1'
      '  Nr_Romaneio'
      ''
      'from'
      '  Carga'
      ''
      'where'
      '  Cd_Filial = :Cd_Filial'
      ''
      'order by'
      '  Nr_Romaneio'
    )
    SQLOther1.Strings = (
      '-- Prior'
      'select top 1'
      '  Nr_Romaneio'
      ''
      'from'
      '  Carga'
      ''
      'where'
      '  Cd_Filial  = :Cd_Filial and'
      '  Nr_Romaneio < :Nr_Romaneio'
      ''
      'order by'
      '  Nr_Romaneio desc'
    )
    SQLOther2.Strings = (
      '-- Next'
      'select top 1'
      '  Nr_Romaneio'
      ''
      'from'
      '  Carga'
      ''
      'where'
      '  Cd_Filial = :Cd_Filial and'
      '  Nr_Romaneio > :Nr_Romaneio'
      ''
      'order by'
      '  Nr_Romaneio'
    )
    SQLOther3.Strings = (
      '-- Last'
      'select top 1'
      '  Nr_Romaneio'
      ''
      'from'
      '  Carga'
      ''
      'where'
      '  Cd_Filial = :Cd_Filial'
      ''
      'order by'
      '  Nr_Romaneio desc'
    )
    Left = 112
    Top = 407
    object ADODsNavegarNr_Romaneio: TIntegerField
      FieldName = 'Nr_Romaneio'
    end
  end
  object DsDados: TDataSource
    DataSet = ADODsDados
    Left = 24
    Top = 407
  end
  object DsOrcSel: TDataSource
    DataSet = ADODsOrcSel
    Left = 12
    Top = 210
  end
  object ADODsOrcSel: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    OnCalcFields = ADODsOrcSelCalcFields
    CommandText = 'select'#13#10'  CO.Cd_Filial, CO.Nr_Orcamento, CO.Nr_Romaneio, CO.Nr_Ordem, OT.Nm_Emitente,'#13#10'  OT.Nr_Fatura, OT.Vl_Orcamento, OT.Dt_Fatura, CO.Ps_Carga,'#13#10'  C.Nm_Cidade + ''''/'''' + C.Sg_Estado + '''' '''' + Coalesce( R.Ds_Rota, '''''' ) as Dp_Localidade,'#13#10'  OT.Vl_Pedido_Frete, OT.Nm_Funcionario,'#13#10'    EE.Ds_Endereco + '''' '''' + Coalesce( EE.Ds_Numero, '''''' ) + '''' '''' + EE.Nm_Bairro + '''' '''' + EE.Ds_Complemento + '''' '''' + Char( 13 ) +'#13#10'    C.Nm_Cidade + ''''/'''' + C.Sg_Estado + '''' '''' + Coalesce( R.Ds_Rota, '''''' ) as Dp_Endereco,'#13#10'    EE.Nr_Telefone_1 + case when EE.Nr_Telefone_2 <> '''''' then Char( 13 ) else '''''' end +'#13#10'    EE.Nr_Telefone_2 + case when EE.Nr_Telefone_3 <> '''''' then Char( 13 ) else '''''' end +'#13#10'    EE.Nr_Telefone_3 + case when EE.Nr_Celular_1 <> '''''' then Char( 13 ) else '''''' end +'#13#10'    EE.Nr_Celular_1 + case when EE.Nr_Celular_2 <> '''''' then Char( 13 ) else '''''' end +'#13#10'    EE.Nr_Celular_2 + case when EE.Nr_Fax <> '''''' then Char( 13 ) else '''''' end +'#13#10'    EE.Nr_Fax as Dp_Telefone, OT.Nr_Pedido_Emitente,'#13#10'    EE.Mm_Observacao as Mm_ObsEntrega,'#13#10#13#10'  Qt_Pecas ='#13#10'    coalesce( '#13#10'    (select'#13#10'      sum( CD.Qt_Item )'#13#10#13#10'    from'#13#10'      Carga_Item CI'#13#10#13#10'    inner join'#13#10'      Carga_Detalhe CD'#13#10'    on'#13#10'      CD.Cd_Filial    = CI.Cd_Filial and'#13#10'      CD.Nr_Romaneio  = CI.Nr_Romaneio and'#13#10'      CD.Nr_Orcamento = CI.Nr_Orcamento and'#13#10'      CD.Nr_Item      = CI.Nr_Item'#13#10#13#10'    where'#13#10'      CI.Cd_Filial    = CO.Cd_Filial and'#13#10'      CI.Nr_Romaneio  = CO.Nr_Romaneio and'#13#10'      CI.Nr_Orcamento = CO.Nr_Orcamento'#13#10'    ), 0.0 ) +'#13#10'    coalesce( ('#13#10'    select'#13#10'      sum( CI.Qt_Item )'#13#10#13#10'    from'#13#10'      Carga_Item CI'#13#10#13#10'    where'#13#10'      CI.Cd_Filial    = CO.Cd_Filial and'#13#10'      CI.Nr_Romaneio  = CO.Nr_Romaneio and'#13#10'      CI.Nr_Orcamento = CO.Nr_Orcamento and'#13#10'      not exists('#13#10'        select'#13#10'          CD.Cd_Filial'#13#10#13#10'        from'#13#10'          Carga_Detalhe CD'#13#10#13#10'        where'#13#10'          CD.Cd_Filial    = CI.Cd_Filial and'#13#10'          CD.Nr_Romaneio  = CI.Nr_Romaneio and'#13#10'          CD.Nr_Orcamento = CI.Nr_Orcamento and'#13#10'          CD.Nr_Item      = CI.Nr_Item'#13#10'        ) ), 0.0 )'#13#10'    '#13#10#13#10'from'#13#10'  Carga_Orcamento CO'#13#10#13#10'inner join'#13#10'  Orcamento_Total OT'#13#10'on'#13#10'  OT.Cd_Filial    = CO.Cd_Filial and'#13#10'  OT.Nr_Orcamento = CO.Nr_Orcamento'#13#10#13#10'inner join'#13#10'  Emitente_Endereco EE'#13#10'on'#13#10'  EE.Cd_Emitente = OT.Cd_Emitente and'#13#10'  EE.Nr_Endereco = OT.Nr_Endereco'#13#10#13#10'inner join'#13#10'  Cidade C'#13#10'on'#13#10'  C.Cd_Cidade = EE.Cd_Cidade'#13#10#13#10'left join'#13#10'  Rota R'#13#10'on'#13#10'  R.Cd_Rota = EE.Cd_Rota'#13#10#13#10'where'#13#10'  CO.Cd_Filial   = :Cd_Filial and'#13#10'  CO.Nr_Romaneio = :Nr_Romaneio'#13#10#13#10'order by'#13#10'  CO.Nr_Ordem'
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
        Name = 'Nr_Romaneio'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = nil?
      end>
    SQLOther0.Strings = (
      'select'
      '  CO.Cd_Filial, CO.Nr_Orcamento, CO.Nr_Romaneio, CO.Nr_Ordem, OT.Nm_Emitente,'
      '  OT.Nr_Fatura, OT.Vl_Orcamento, OT.Dt_Fatura, CO.Ps_Carga,'
      '  C.Nm_Cidade + ''''/'''' + C.Sg_Estado + '''' '''' + Coalesce( R.Ds_Rota, '''''' ) as Dp_Localidade,'
      '  OT.Vl_Pedido_Frete, OT.Nm_Funcionario,'
      '    EE.Ds_Endereco + '''' '''' + Coalesce( EE.Ds_Numero, '''''' ) + '''' '''' + EE.Nm_Bairro + '''' '''' + EE.Ds_Complemento + '''' '''' + Char( 13 ) +'
      '    C.Nm_Cidade + ''''/'''' + C.Sg_Estado + '''' '''' + Coalesce( R.Ds_Rota, '''''' ) as Dp_Endereco,'
      '    EE.Nr_Telefone_1 + case when EE.Nr_Telefone_2 <> '''''' then Char( 13 ) else '''''' end +'
      '    EE.Nr_Telefone_2 + case when EE.Nr_Telefone_3 <> '''''' then Char( 13 ) else '''''' end +'
      '    EE.Nr_Telefone_3 + case when EE.Nr_Celular_1 <> '''''' then Char( 13 ) else '''''' end +'
      '    EE.Nr_Celular_1 + case when EE.Nr_Celular_2 <> '''''' then Char( 13 ) else '''''' end +'
      '    EE.Nr_Celular_2 + case when EE.Nr_Fax <> '''''' then Char( 13 ) else '''''' end +'
      '    EE.Nr_Fax as Dp_Telefone, OT.Nr_Pedido_Emitente,'
      '    EE.Mm_Observacao as Mm_ObsEntrega,'
      ''
      '  Qt_Pecas ='
      '    coalesce( '
      '    (select'
      '      sum( CD.Qt_Item )'
      ''
      '    from'
      '      Carga_Item CI'
      ''
      '    inner join'
      '      Carga_Detalhe CD'
      '    on'
      '      CD.Cd_Filial    = CI.Cd_Filial and'
      '      CD.Nr_Romaneio  = CI.Nr_Romaneio and'
      '      CD.Nr_Orcamento = CI.Nr_Orcamento and'
      '      CD.Nr_Item      = CI.Nr_Item'
      ''
      '    where'
      '      CI.Cd_Filial    = CO.Cd_Filial and'
      '      CI.Nr_Romaneio  = CO.Nr_Romaneio and'
      '      CI.Nr_Orcamento = CO.Nr_Orcamento'
      '    ), 0.0 ) +'
      '    coalesce( ('
      '    select'
      '      sum( CI.Qt_Item )'
      ''
      '    from'
      '      Carga_Item CI'
      ''
      '    where'
      '      CI.Cd_Filial    = CO.Cd_Filial and'
      '      CI.Nr_Romaneio  = CO.Nr_Romaneio and'
      '      CI.Nr_Orcamento = CO.Nr_Orcamento and'
      '      not exists('
      '        select'
      '          CD.Cd_Filial'
      ''
      '        from'
      '          Carga_Detalhe CD'
      ''
      '        where'
      '          CD.Cd_Filial    = CI.Cd_Filial and'
      '          CD.Nr_Romaneio  = CI.Nr_Romaneio and'
      '          CD.Nr_Orcamento = CI.Nr_Orcamento and'
      '          CD.Nr_Item      = CI.Nr_Item'
      '        ) ), 0.0 )'
      ''
      'from'
      '  Carga_Orcamento CO'
      ''
      'inner join'
      '  Orcamento_Total OT'
      'on'
      '  OT.Cd_Filial    = CO.Cd_Filial and'
      '  OT.Nr_Orcamento = CO.Nr_Orcamento'
      ''
      'inner join'
      '  Emitente_Endereco EE'
      'on'
      '  EE.Cd_Emitente = OT.Cd_Emitente and'
      '  EE.Nr_Endereco = OT.Nr_Endereco'
      ''
      'inner join'
      '  Cidade C'
      'on'
      '  C.Cd_Cidade = EE.Cd_Cidade'
      ''
      'left join'
      '  Rota R'
      'on'
      '  R.Cd_Rota = EE.Cd_Rota'
      ''
      'where'
      '  CO.Cd_Filial   = :Cd_Filial and'
      '  CO.Nr_Romaneio = :Nr_Romaneio'
      ''
      'order by'
      '  /* Ordem */'
      ''
    )
    Left = 46
    Top = 210
    object ADODsOrcSelCd_Filial: TSmallintField
      FieldName = 'Cd_Filial'
    end
    object ADODsOrcSelNr_Orcamento: TIntegerField
      DisplayLabel = 'Orcamento'
      FieldName = 'Nr_Orcamento'
    end
    object ADODsOrcSelNr_Romaneio: TIntegerField
      FieldName = 'Nr_Romaneio'
    end
    object ADODsOrcSelNr_Ordem: TSmallintField
      DisplayLabel = 'Ordem'
      FieldName = 'Nr_Ordem'
    end
    object ADODsOrcSelNm_Emitente: TStringField
      DisplayLabel = 'Cliente'
      FieldName = 'Nm_Emitente'
      Size = 50
    end
    object ADODsOrcSelNr_Fatura: TIntegerField
      DisplayLabel = 'Fatura'
      FieldName = 'Nr_Fatura'
    end
    object ADODsOrcSelVl_Orcamento: TBCDField
      DisplayLabel = 'Valor'
      FieldName = 'Vl_Orcamento'
      ReadOnly = True
      Precision = 28
      Size = 9
    end
    object ADODsOrcSelDt_Fatura: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'Dt_Fatura'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object ADODsOrcSelPs_Carga: TBCDField
      DisplayLabel = 'Peso'
      FieldName = 'Ps_Carga'
      Precision = 12
      Size = 3
    end
    object ADODsOrcSelDp_Localidade: TStringField
      DisplayLabel = 'Localidade (Cidade / Rota )'
      FieldName = 'Dp_Localidade'
      ReadOnly = True
      Size = 114
    end
    object ADODsOrcSelVL_Pedido_Frete: TBCDField
      FieldName = 'VL_Pedido_Frete'
      Precision = 12
      Size = 2
    end
    object ADODsOrcSelDp_Orcamento: TStringField
      FieldKind = fkCalculated
      FieldName = 'Dp_Orcamento'
      Size = 10
      Calculated = True
    end
    object ADODsOrcSelNm_Funcionario: TStringField
      FieldName = 'Nm_Funcionario'
      Size = 50
    end
    object ADODsOrcSelVl_Receber: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Vl_Receber'
      Calculated = True
    end
    object ADODsOrcSelVl_Recebido: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Vl_Recebido'
      Calculated = True
    end
    object ADODsOrcSelNr_Pedido_Emitente: TStringField
      FieldName = 'Nr_Pedido_Emitente'
      Size = 30
    end
    object ADODsOrcSelDp_ObsEntrega: TStringField
      FieldKind = fkCalculated
      FieldName = 'Dp_ObsEntrega'
      Size = 8190
      Calculated = True
    end
    object ADODsOrcSelQt_Pecas: TBCDField
      FieldName = 'Qt_Pecas'
      ReadOnly = True
      Precision = 32
      Size = 3
    end
    object ADODsOrcSelMm_ObsEntrega: TMemoField
      FieldName = 'Mm_ObsEntrega'
      BlobType = ftMemo
    end
    object ADODsOrcSelDp_Endereco: TStringField
      FieldName = 'Dp_Endereco'
      ReadOnly = True
      Size = 239
    end
    object ADODsOrcSelDp_EndCompleto: TStringField
      FieldKind = fkCalculated
      FieldName = 'Dp_EndCompleto'
      Size = 1500
      Calculated = True
    end
    object ADODsOrcSelDp_Telefone: TStringField
      FieldName = 'Dp_Telefone'
      ReadOnly = True
      Size = 67
    end
  end
  object DsItem: TDataSource
    DataSet = ADODsItem
    Left = 27
    Top = 367
  end
  object ADODsItem: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'select'#13#10'  CI.Cd_Filial, CI.Nr_Romaneio, CI.Nr_Orcamento, CI.Nr_Item, CI.Qt_Item,'#13#10'  OI.Cd_Produto, OI.Qt_Item as Qt_Orcamento, OI.Sg_Unidade, P.Nm_Produto,'#13#10'  OI.Fl_Medida, dbo.SGRound( P.Ps_Produto * CI.Qt_Item * IsNull( PU.Nr_Fator, 1.0 ) ) as Ps_Item,'#13#10'  Qt_Pecas ='#13#10'    case'#13#10'      when not exists('#13#10'        select'#13#10'          CD.Cd_Filial'#13#10#13#10'        from'#13#10'          Carga_Detalhe CD'#13#10#13#10'        where'#13#10'          CD.Cd_Filial    = CI.Cd_Filial and'#13#10'          CD.Nr_Romaneio  = CI.Nr_Romaneio and'#13#10'          CD.Nr_Orcamento = CI.Nr_Orcamento and'#13#10'          CD.Nr_Item      = CI.Nr_Item'#13#10'        ) then CI.Qt_Item'#13#10'      else'#13#10'        ('#13#10'        select'#13#10'          sum( CD.Qt_Item )'#13#10#13#10'        from'#13#10'          Carga_Detalhe CD'#13#10#13#10'        where'#13#10'          CD.Cd_Filial    = CI.Cd_Filial and'#13#10'          CD.Nr_Romaneio  = CI.Nr_Romaneio and'#13#10'          CD.Nr_Orcamento = CI.Nr_Orcamento and'#13#10'          CD.Nr_Item      = CI.Nr_Item'#13#10'        )'#13#10'        '#13#10'    end'#13#10#13#10'from'#13#10'  Carga_Item CI'#13#10#13#10'inner join'#13#10'  Orcamento_Item OI'#13#10'on'#13#10'  OI.Cd_Filial    = CI.Cd_Filial and'#13#10'  OI.Nr_Orcamento = CI.Nr_Orcamento and'#13#10'  OI.Nr_Item      = CI.Nr_Item'#13#10#13#10'inner join'#13#10'  Produto P'#13#10'on'#13#10'  P.Cd_Produto = OI.Cd_Produto'#13#10#13#10'left join'#13#10'  Produto_Unidade PU'#13#10'on'#13#10'  PU.Cd_Produto = OI.Cd_Produto and'#13#10'  PU.Sg_Unidade = OI.Sg_Unidade'#13#10#13#10'where'#13#10'  CI.Cd_Filial    = :Cd_Filial and'#13#10'  CI.Nr_Romaneio  = :Nr_Romaneio and'#13#10'  CI.Nr_Orcamento = :Nr_Orcamento'#13#10#13#10'order by'#13#10'  CI.Nr_Item'
    DataSource = DsOrcSel
    IndexFieldNames = 'Cd_Filial;Nr_Romaneio;Nr_Orcamento'
    MasterFields = 'Cd_Filial;Nr_Romaneio;Nr_Orcamento'
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
        Name = 'Nr_Romaneio'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = nil?
      end
      item
        Name = 'Nr_Orcamento'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = nil?
      end>
    Left = 56
    Top = 367
    object ADODsItemCd_Filial: TSmallintField
      FieldName = 'Cd_Filial'
    end
    object ADODsItemNr_Romaneio: TIntegerField
      FieldName = 'Nr_Romaneio'
    end
    object ADODsItemNr_Orcamento: TIntegerField
      FieldName = 'Nr_Orcamento'
    end
    object ADODsItemNr_Item: TSmallintField
      FieldName = 'Nr_Item'
    end
    object ADODsItemQt_Item: TBCDField
      DisplayLabel = 'Carga'
      FieldName = 'Qt_Item'
      DisplayFormat = '#,##0.###'
      Precision = 12
      Size = 3
    end
    object ADODsItemCd_Produto: TIntegerField
      FieldName = 'Cd_Produto'
    end
    object ADODsItemQt_Orcamento: TBCDField
      DisplayLabel = 'Or'#231'amento'
      FieldName = 'Qt_Orcamento'
      DisplayFormat = '#,##0.###'
      Precision = 12
      Size = 3
    end
    object ADODsItemSg_Unidade: TStringField
      DisplayLabel = 'Unidade'
      FieldName = 'Sg_Unidade'
      FixedChar = True
      Size = 2
    end
    object ADODsItemNm_Produto: TStringField
      DisplayLabel = 'Produto'
      FieldName = 'Nm_Produto'
      Size = 120
    end
    object ADODsItemFl_Medida: TStringField
      FieldName = 'Fl_Medida'
      FixedChar = True
      Size = 1
    end
    object ADODsItemPs_Item: TBCDField
      FieldName = 'Ps_Item'
      ReadOnly = True
      Precision = 31
      Size = 6
    end
  end
  object DsDetalhe: TDataSource
    DataSet = ADODsDetalhe
    Left = 582
    Top = 430
  end
  object ADODsDetalhe: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    OnCalcFields = ADODsDetalheCalcFields
    CommandText = 'select'#13#10'  CD.Cd_Filial, CD.Nr_Romaneio, CD.Nr_Orcamento, CD.Nr_Item, CD.Nr_Detalhe,'#13#10'  CD.Qt_Item, OD.Nr_Comprimento, OD.Nr_Largura, OD.Nr_Altura, OD.Ds_Detalhe'#13#10#13#10'from'#13#10'  Carga_Detalhe CD'#13#10#13#10'inner join'#13#10'  Orcamento_Detalhe OD'#13#10'on'#13#10'  OD.Cd_Filial    = CD.Cd_Filial and'#13#10'  OD.Nr_Orcamento = CD.Nr_Orcamento and'#13#10'  OD.Nr_Item      = CD.Nr_Item and'#13#10'  OD.Nr_Detalhe   = CD.Nr_Detalhe'#13#10#13#10'where'#13#10'  CD.Cd_Filial    = :Cd_Filial and'#13#10'  CD.Nr_Romaneio  = :Nr_Romaneio and'#13#10'  CD.Nr_Orcamento = :Nr_Orcamento and'#13#10'  CD.Nr_Item      = :Nr_Item'#13#10#13#10'order by'#13#10'  CD.Cd_Filial, CD.Nr_Romaneio, CD.Nr_Orcamento, CD.Nr_Item, CD.Nr_Detalhe'
    DataSource = DsItem
    IndexFieldNames = 'Cd_Filial;Nr_Romaneio;Nr_Orcamento;Nr_Item'
    MasterFields = 'Cd_Filial;Nr_Romaneio;Nr_Orcamento;Nr_Item'
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
        Name = 'Nr_Romaneio'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = nil?
      end
      item
        Name = 'Nr_Orcamento'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = nil?
      end
      item
        Name = 'Nr_Item'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = nil?
      end>
    Left = 612
    Top = 431
    object ADODsDetalheCd_Filial: TSmallintField
      FieldName = 'Cd_Filial'
    end
    object ADODsDetalheNr_Romaneio: TIntegerField
      FieldName = 'Nr_Romaneio'
    end
    object ADODsDetalheNr_Orcamento: TIntegerField
      FieldName = 'Nr_Orcamento'
    end
    object ADODsDetalheNr_Item: TSmallintField
      FieldName = 'Nr_Item'
    end
    object ADODsDetalheNr_Detalhe: TSmallintField
      FieldName = 'Nr_Detalhe'
    end
    object ADODsDetalheQt_Item: TSmallintField
      DisplayLabel = 'Quantidade'
      FieldName = 'Qt_Item'
    end
    object ADODsDetalheNr_Comprimento: TBCDField
      FieldName = 'Nr_Comprimento'
      Precision = 12
    end
    object ADODsDetalheNr_Largura: TBCDField
      FieldName = 'Nr_Largura'
      Precision = 12
    end
    object ADODsDetalheNr_Altura: TBCDField
      FieldName = 'Nr_Altura'
      Precision = 12
    end
    object ADODsDetalheDs_Detalhe: TStringField
      FieldName = 'Ds_Detalhe'
      Size = 30
    end
    object ADODsDetalheDp_Detalhe: TStringField
      DisplayLabel = 'Detalhamento'
      FieldKind = fkCalculated
      FieldName = 'Dp_Detalhe'
      Size = 50
      Calculated = True
    end
  end
end
