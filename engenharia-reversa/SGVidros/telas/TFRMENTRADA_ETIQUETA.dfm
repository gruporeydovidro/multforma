object FrmEntrada_Etiqueta: TFrmEntrada_Etiqueta
  Left = 294
  Top = 173
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Etiquetas da Entrada'
  ClientHeight = 143
  ClientWidth = 498
  Color = clWhite
  Ctl3D = False
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 21
    Height = 143
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 477
    Height = 143
    Align = alClient
    ParentColor = True
    TabOrder = 1
    ExplicitWidth = 478
    object BvlSeparator: TBevel
      Left = 3
      Top = 113
      Width = 470
      Height = 5
      Shape = bsTopLine
    end
    object Label22: TLabel
      Left = 3
      Top = 1
      Width = 87
      Height = 13
      Caption = 'Tabela de Pre'#231'os:'
    end
    object SbTabPreco: TSpeedButton
      Left = 113
      Top = 16
      Width = 23
      Height = 19
      Hint = 'Seleciona Tabela de Pre'#231'o'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbTabPrecoClick
    end
    object BitBtnCancel: TBitBtn
      Left = 390
      Top = 116
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 2
      OnClick = BitBtnCancelClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnReport: TBitBtn
      Left = 302
      Top = 116
      Width = 87
      Height = 25
      Caption = '&Imprimir'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = BitBtnReportClick
      Glyph.Data = {binary 646 bytes}
    end
    object EdtCd_Tabela: TEdit
      Tag = 1
      Left = 3
      Top = 16
      Width = 110
      Height = 19
      TabOrder = 0
      OnExit = EdtCd_TabelaExit
      OnKeyDown = EdtCd_TabelaKeyDown
    end
    object SctRepEtiqueta: TSctReport
      Left = 260
      Top = 16
      Width = 82
      Height = 44
      HorzScrollBar.Visible = False
      VertScrollBar.Visible = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      Visible = False
      Minimized = True
      Prompt = True
      AutoRun = False
      OnBeforePrint = SctRepEtiquetaBeforePrint
      SuppressStatus = False
      PixelsPerInch = 96
      STop = 0
      SLeft = 0
      SWidth = 1020
      SHeight = 664
      MTop = 16
      MLeft = 260
      SAlign = alNone
      Version = vAce1_0
      object ReportPage_Cliente: TSctGrouppage
        Left = 35
        Top = 55
        Width = 27
        Height = 0
        Color = clWhite
        ParentColor = False
        TabOrder = 2
        ClipLabels = False
        PageSetup.Orientation = poPortrait
        PageSetup.Size = psLetter
        PageSetup.Source = psUpper
        PageSetup.Duplex = pdSimplex
        PageSetup.Height = 279.40000000000003
        PageSetup.Width = 215.9
        PageSetup.PrintQuality = pqCustom
        PageSetup.Units = unitMiliMeters
        PageSetup.PreviewSettings.ModalPreview = mpModal
        PageSetup.PreviewSettings.PreviewOwner = poAppOwned
        PageSetup.PreviewSettings.FormStyle = pfsNormal
        PageSetup.LeftMargin = 0
        PageSetup.RightMargin = 0
        PageSetup.TopMargin = 0
        PageSetup.BottomMargin = 0
        BorderType = btNone
        Description = 'Etiqueta de Clientes'
        CloseDataSet = False
        DataRange = drAllRecords
        OnDataStart = ReportPage_ClienteDataStart
        OnDataSkip = ReportPage_ClienteDataSkip
        OmitLastPgFt = False
        Head = ReportHeaderBand
        Detail = DetailBand
        Foot = ReportFooterBand
        PageHead = PageHeaderBand
        PageFoot = PageFooterBand
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
        object DataSourceGuide8: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = DmMaster.DsUsuario
        end
        object DataSourceGuide9: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = DmMaster.DsFilial
        end
        object DataSourceGuide10: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = FrmEstado_Find.DsFind
        end
        object DataSourceGuide19: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = True
          UpdateLevel = DetailBandlevel
          DataSource = FrmEmitente_Find.DsFind
        end
        object DataSourceGuide20: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = True
          UpdateLevel = DetailBandlevel
          DataSource = FrmEmitente_Find.DsContato
        end
        object DataSourceGuide21: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = True
          UpdateLevel = DetailBandlevel
          DataSource = FrmFuncionario_Find.DsFind
        end
        object adodsnomeCd_EmitenteVar2: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Cd_Emitente'
          DataSource = FrmEmitente_Find.DsFind
          UpdateLevel = DetailBandlevel
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsnomeNm_EmitenteVar2: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nm_Emitente'
          DataSource = FrmEmitente_Find.DsFind
          UpdateLevel = DetailBandlevel
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsnomeNm_FantasiaVar2: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nm_Fantasia'
          DataSource = FrmEmitente_Find.DsFind
          UpdateLevel = DetailBandlevel
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsnomeDp_CidadeVar2: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_Cidade'
          DataSource = FrmEmitente_Find.DsFind
          UpdateLevel = DetailBandlevel
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsnomeDp_DocumentoVar2: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_Documento'
          DataSource = FrmEmitente_Find.DsFind
          UpdateLevel = DetailBandlevel
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsnomenr_documentoVar2: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nr_documento'
          DataSource = FrmEmitente_Find.DsFind
          UpdateLevel = DetailBandlevel
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsnomeds_enderecoVar2: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'ds_endereco'
          DataSource = FrmEmitente_Find.DsFind
          UpdateLevel = DetailBandlevel
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsnomenr_telefone_1Var2: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nr_telefone_1'
          DataSource = FrmEmitente_Find.DsFind
          UpdateLevel = DetailBandlevel
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsnomeDp_EnderecoVar2: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_Endereco'
          DataSource = FrmEmitente_Find.DsFind
          UpdateLevel = DetailBandlevel
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsnomeds_complementoVar2: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'ds_complemento'
          DataSource = FrmEmitente_Find.DsFind
          UpdateLevel = DetailBandlevel
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsnomeds_emailVar2: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'ds_email'
          DataSource = FrmEmitente_Find.DsFind
          UpdateLevel = DetailBandlevel
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodscontatoNr_ContatoVar2: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_Contato'
          DataSource = FrmEmitente_Find.DsContato
          UpdateLevel = DetailBandlevel
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodscontatoDt_ContatoVar2: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dt_Contato'
          DataSource = FrmEmitente_Find.DsContato
          UpdateLevel = DetailBandlevel
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodscontatoNm_ContatoVar4: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nm_Contato'
          DataSource = FrmEmitente_Find.DsContato
          UpdateLevel = DetailBandlevel
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodscontatoCd_OcorrenciaVar2: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Cd_Ocorrencia'
          DataSource = FrmEmitente_Find.DsContato
          UpdateLevel = DetailBandlevel
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodscontatoDs_OcorrenciaVar2: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ds_Ocorrencia'
          DataSource = FrmEmitente_Find.DsContato
          UpdateLevel = DetailBandlevel
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodscontatoSt_ContatoVar2: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'St_Contato'
          DataSource = FrmEmitente_Find.DsContato
          UpdateLevel = DetailBandlevel
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodscontatoDt_NovoContatoVar2: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dt_NovoContato'
          DataSource = FrmEmitente_Find.DsContato
          UpdateLevel = DetailBandlevel
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodscontatoCd_UsuarioVar2: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Cd_Usuario'
          DataSource = FrmEmitente_Find.DsContato
          UpdateLevel = DetailBandlevel
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodscontatoDp_OcorrenciaVar2: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_Ocorrencia'
          DataSource = FrmEmitente_Find.DsContato
          UpdateLevel = DetailBandlevel
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodscontatoDp_ContatoVar2: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_Contato'
          DataSource = FrmEmitente_Find.DsContato
          UpdateLevel = DetailBandlevel
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodscontatoDp_HoraVar2: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_Hora'
          DataSource = FrmEmitente_Find.DsContato
          UpdateLevel = DetailBandlevel
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodscontatonr_orcamentoVar2: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nr_orcamento'
          DataSource = FrmEmitente_Find.DsContato
          UpdateLevel = DetailBandlevel
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodscontatoMm_ObservacaoVar2: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Mm_Observacao'
          DataSource = FrmEmitente_Find.DsContato
          UpdateLevel = DetailBandlevel
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsfindcd_funcionarioVar2: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'cd_funcionario'
          DataSource = FrmFuncionario_Find.DsFind
          UpdateLevel = DetailBandlevel
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsfindnm_funcionarioVar2: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nm_funcionario'
          DataSource = FrmFuncionario_Find.DsFind
          UpdateLevel = DetailBandlevel
          AutoVar = True
          ID = vidAutoDataVar
        end
        object DataSourceGuide: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = DsEtiqueta
        end
        object DataSourceGuide1: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = FrmEntrada.DsReport
        end
        object DataSourceGuide2: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = FrmEntrada.DsProduto
        end
        object adodsnomeCd_GrupoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Cd_Grupo'
          DataSource = FrmEmitente_Find.DsFind
          UpdateLevel = DetailBandlevel
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsnomeNm_GrupoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nm_Grupo'
          DataSource = FrmEmitente_Find.DsFind
          UpdateLevel = DetailBandlevel
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsnomeDp_GrupoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_Grupo'
          DataSource = FrmEmitente_Find.DsFind
          UpdateLevel = DetailBandlevel
          AutoVar = True
          ID = vidAutoDataVar
        end
        object ExpVarProd_1: TSctExprVar
          Tag = 1
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataType = dtypeMemo
          OnGetData = ExpVarProd_1GetData
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidExprVar
        end
        object ExpVarProd_2: TSctExprVar
          Tag = 2
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataType = dtypeMemo
          OnGetData = ExpVarProd_1GetData
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidExprVar
        end
        object ExpVarProd_3: TSctExprVar
          Tag = 3
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataType = dtypeMemo
          OnGetData = ExpVarProd_1GetData
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidExprVar
        end
        object ExpVarProd_4: TSctExprVar
          Tag = 4
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataType = dtypeMemo
          OnGetData = ExpVarProd_1GetData
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidExprVar
        end
        object ExpVarBCProd_1: TSctExprVar
          Tag = 1
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataType = dtypeString
          OnGetData = ExpVarBCProd_1GetData
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidExprVar
        end
        object ExpVarBCProd_2: TSctExprVar
          Tag = 2
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataType = dtypeString
          OnGetData = ExpVarBCProd_1GetData
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidExprVar
        end
        object ExpVarBCProd_3: TSctExprVar
          Tag = 3
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataType = dtypeString
          OnGetData = ExpVarBCProd_1GetData
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidExprVar
        end
        object ExpVarBCProd_4: TSctExprVar
          Tag = 4
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataType = dtypeString
          OnGetData = ExpVarBCProd_1GetData
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidExprVar
        end
        object ExpVarPreco_1: TSctExprVar
          Tag = 1
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataType = dtypeString
          OnGetData = ExpVarPreco_1GetData
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidExprVar
        end
        object ExpVarPreco_2: TSctExprVar
          Tag = 2
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataType = dtypeString
          OnGetData = ExpVarPreco_1GetData
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidExprVar
        end
        object ExpVarPreco_3: TSctExprVar
          Tag = 3
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataType = dtypeString
          OnGetData = ExpVarPreco_1GetData
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidExprVar
        end
        object ExpVarPreco_4: TSctExprVar
          Tag = 4
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataType = dtypeString
          OnGetData = ExpVarPreco_1GetData
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidExprVar
        end
        object ExpVarTam_1: TSctExprVar
          Tag = 1
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataType = dtypeString
          OnGetData = ExpVarTam_1GetData
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidExprVar
        end
        object ExpVarTam_2: TSctExprVar
          Tag = 2
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataType = dtypeString
          OnGetData = ExpVarTam_1GetData
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidExprVar
        end
        object ExpVarTam_3: TSctExprVar
          Tag = 3
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataType = dtypeString
          OnGetData = ExpVarTam_1GetData
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidExprVar
        end
        object ExpVarTam_4: TSctExprVar
          Tag = 4
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataType = dtypeString
          OnGetData = ExpVarTam_1GetData
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidExprVar
        end
        object ReportHeaderBand: TSctBand
          Left = 0
          Top = 0
          Width = 866
          Height = 0
          ParentColor = True
          BandName = 'Report Header'
          Updatelevel = ReportHeaderBandlevel
          Visible = False
        end
        object PageHeaderBand: TSctBand
          Left = 0
          Top = 15
          Width = 866
          Height = 0
          ParentColor = True
          BandName = 'Page Header'
          Updatelevel = PageHeaderBandlevel
          Visible = False
        end
        object DetailBand: TSctBand
          Left = 0
          Top = 30
          Width = 866
          Height = 321
          ParentColor = True
          BandName = 'Detail'
          Updatelevel = DetailBandlevel
          object SctVarProd_1: TSctvarlabel
            Left = 3
            Top = 81
            Width = 181
            Height = 107
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ClipType = ctClip
            AlignVertical = laTop
            AlignHorizontal = laCenter
            BorderMargin = 1
            WrapText = True
            Stretch = True
            Variable = ExpVarProd_1
          end
          object SctVarPreco_1: TSctvarlabel
            Left = 3
            Top = 276
            Width = 181
            Height = 37
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ClipType = ctClip
            AlignVertical = laMiddle
            AlignHorizontal = laCenter
            BorderMargin = 1
            Variable = ExpVarPreco_1
            DataFormat.SuppressNulls = True
          end
          object SctBCProd_1: TSctBarCodeLabel
            Left = 4
            Top = 189
            Width = 181
            Height = 31
            Variable = ExpVarBCProd_1
            BarCodeBrush.Color = clBlack
            AlignHorizontal = laCenter
          end
          object Sctvarlabel1: TSctvarlabel
            Left = 189
            Top = 81
            Width = 181
            Height = 107
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ClipType = ctClip
            AlignVertical = laTop
            AlignHorizontal = laCenter
            BorderMargin = 1
            WrapText = True
            Stretch = True
            Variable = ExpVarProd_2
          end
          object Sctvarlabel2: TSctvarlabel
            Left = 189
            Top = 276
            Width = 181
            Height = 37
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ClipType = ctClip
            AlignVertical = laMiddle
            AlignHorizontal = laCenter
            BorderMargin = 1
            Variable = ExpVarPreco_2
            DataFormat.SuppressNulls = True
          end
          object SctBarCodeLabel1: TSctBarCodeLabel
            Left = 189
            Top = 189
            Width = 181
            Height = 31
            Variable = ExpVarBCProd_2
            BarCodeBrush.Color = clBlack
            AlignHorizontal = laCenter
          end
          object Sctvarlabel3: TSctvarlabel
            Left = 375
            Top = 81
            Width = 181
            Height = 107
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ClipType = ctClip
            AlignVertical = laTop
            AlignHorizontal = laCenter
            BorderMargin = 1
            WrapText = True
            Stretch = True
            Variable = ExpVarProd_3
          end
          object Sctvarlabel4: TSctvarlabel
            Left = 375
            Top = 276
            Width = 181
            Height = 37
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ClipType = ctClip
            AlignVertical = laMiddle
            AlignHorizontal = laCenter
            BorderMargin = 1
            Variable = ExpVarPreco_3
            DataFormat.SuppressNulls = True
          end
          object SctBarCodeLabel2: TSctBarCodeLabel
            Left = 375
            Top = 189
            Width = 181
            Height = 31
            Variable = ExpVarBCProd_3
            BarCodeBrush.Color = clBlack
            AlignHorizontal = laCenter
          end
          object Sctvarlabel5: TSctvarlabel
            Left = 561
            Top = 81
            Width = 181
            Height = 107
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ClipType = ctClip
            AlignVertical = laTop
            AlignHorizontal = laCenter
            BorderMargin = 1
            WrapText = True
            Stretch = True
            Variable = ExpVarProd_4
          end
          object Sctvarlabel6: TSctvarlabel
            Left = 561
            Top = 276
            Width = 181
            Height = 37
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ClipType = ctClip
            AlignVertical = laMiddle
            AlignHorizontal = laCenter
            BorderMargin = 1
            Variable = ExpVarPreco_4
            DataFormat.SuppressNulls = True
          end
          object SctBarCodeLabel3: TSctBarCodeLabel
            Left = 561
            Top = 189
            Width = 181
            Height = 31
            Variable = ExpVarBCProd_4
            BarCodeBrush.Color = clBlack
            AlignHorizontal = laCenter
          end
          object Sctvarlabel7: TSctvarlabel
            Left = 3
            Top = 221
            Width = 181
            Height = 18
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ClipType = ctClip
            AlignVertical = laTop
            AlignHorizontal = laCenter
            BorderMargin = 1
            Variable = ExpVarTam_1
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel8: TSctvarlabel
            Left = 189
            Top = 221
            Width = 181
            Height = 18
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ClipType = ctClip
            AlignVertical = laTop
            AlignHorizontal = laCenter
            BorderMargin = 1
            Variable = ExpVarTam_2
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel9: TSctvarlabel
            Left = 375
            Top = 221
            Width = 181
            Height = 18
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ClipType = ctClip
            AlignVertical = laTop
            AlignHorizontal = laCenter
            BorderMargin = 1
            Variable = ExpVarTam_3
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel10: TSctvarlabel
            Left = 561
            Top = 221
            Width = 181
            Height = 18
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ClipType = ctClip
            AlignVertical = laTop
            AlignHorizontal = laCenter
            BorderMargin = 1
            Variable = ExpVarTam_4
            DataFormat.SuppressNulls = True
          end
        end
        object PageFooterBand: TSctBand
          Left = 0
          Top = 366
          Width = 866
          Height = 0
          ParentColor = True
          BandName = 'Page Footer'
          Updatelevel = PageFooterBandlevel
          Visible = False
        end
        object ReportFooterBand: TSctBand
          Left = 0
          Top = 381
          Width = 866
          Height = 1
          ParentColor = True
          BandName = 'Report Footer'
          Updatelevel = ReportFooterBandlevel
          Visible = False
        end
      end
    end
  end
  object ADODsEtiqueta: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    AfterScroll = ADODsEtiquetaAfterScroll
    CommandText = 'select'#13#10'  P.Cd_Produto, P.Nm_Produto, P.Nm_Abreviado, P.Cd_Barra, EI.Qt_Item, '#13#10'  PP.Vl_Venda * Coalesce( PU.Nr_Fator * PU.Nr_Indice, 1.0 ) as Vl_Venda'#13#10'  '#13#10'from'#13#10'  Entrada E'#13#10#13#10'inner join'#13#10'  Entrada_Item EI'#13#10'on'#13#10'  EI.Cd_Filial  = E.Cd_Filial and'#13#10'  EI.Nr_Entrada = E.Nr_Entrada'#13#10'  '#13#10'inner join'#13#10'  Produto P'#13#10'on'#13#10'  P.Cd_Produto = EI.Cd_Produto'#13#10'  '#13#10'inner join'#13#10'  Produto_Preco PP'#13#10'on'#13#10'  PP.Cd_Tabela  = :Cd_Tabela and'#13#10'  PP.Cd_Produto = P.Cd_Produto'#13#10'  '#13#10'inner join'#13#10'  Produto_Unidade PU'#13#10'on'#13#10'  PU.Cd_Produto = P.Cd_Produto and'#13#10'  PU.Sg_Unidade = P.Sg_Venda'#13#10'  '#13#10'where'#13#10'  E.Cd_Filial  = :Cd_Filial and'#13#10'  E.Nr_Entrada = :Nr_Entrada'#13#10'  '#13#10'order by'#13#10'  EI.Nr_Item'
    Parameters = <
      item
        Name = 'Cd_Tabela'
        DataType = ftString
        Size = 8
        Value = '''PADRAO'''
      end
      item
        Name = 'Cd_Filial'
        DataType = ftSmallint
        Size = -1
        Value = 1
      end
      item
        Name = 'Nr_Entrada'
        DataType = ftInteger
        Size = -1
        Value = 1
      end>
    SQLOther0.Strings = (
      'select'
      '  P.Cd_Produto, P.Nm_Produto, P.Nm_Abreviado, P.Cd_Barra, EI.Qt_Item, '
      '  PP.Vl_Venda * Coalesce( PU.Nr_Fator * PU.Nr_Indice, 1.0 ) as Vl_Venda'
      '  '
      'from'
      '  Entrada E'
      ''
      'inner join'
      '  Entrada_Item EI'
      'on'
      '  EI.Cd_Filial  = E.Cd_Filial and'
      '  EI.Nr_Entrada = E.Nr_Entrada'
      '  '
      'inner join'
      '  Produto P'
      'on'
      '  P.Cd_Produto = EI.Cd_Produto'
      '  '
      'inner join'
      '  Produto_Preco PP'
      'on'
      '  PP.Cd_Tabela  = :Cd_Tabela and'
      '  PP.Cd_Produto = P.Cd_Produto'
      '  '
      'inner join'
      '  Produto_Unidade PU'
      'on'
      '  PU.Cd_Produto = P.Cd_Produto and'
      '  PU.Sg_Unidade = P.Sg_Venda'
      '  '
      'where'
      '  E.Cd_Filial  = :Cd_Filial and'
      '  E.Nr_Entrada = :Nr_Entrada'
      '  '
      'order by'
      '  EI.Nr_Item'
    )
    Left = 56
    Top = 72
    object ADODsEtiquetaCd_Produto: TIntegerField
      FieldName = 'Cd_Produto'
    end
    object ADODsEtiquetaNm_Abreviado: TStringField
      FieldName = 'Nm_Abreviado'
      Size = 40
    end
    object ADODsEtiquetaCd_Barra: TStringField
      FieldName = 'Cd_Barra'
    end
    object ADODsEtiquetaQt_Item: TBCDField
      FieldName = 'Qt_Item'
      Precision = 18
      Size = 3
    end
    object ADODsEtiquetaVl_Venda: TBCDField
      FieldName = 'Vl_Venda'
      ReadOnly = True
      Precision = 32
      Size = 11
    end
    object ADODsEtiquetaNm_Produto: TStringField
      FieldName = 'Nm_Produto'
      Size = 120
    end
  end
  object DsEtiqueta: TDataSource
    DataSet = ADODsEtiqueta
    Left = 24
    Top = 72
  end
end
