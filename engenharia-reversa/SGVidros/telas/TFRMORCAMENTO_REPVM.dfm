object FrmOrcamento_RepVM: TFrmOrcamento_RepVM
  Left = 662
  Top = 745
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'FrmOrcamento_RepVM'
  ClientHeight = 290
  ClientWidth = 661
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
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
    Height = 290
    Align = alLeft
    TabOrder = 0
    ExplicitHeight = 288
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 640
    Height = 290
    Align = alClient
    ParentColor = True
    TabOrder = 1
    ExplicitWidth = 638
    ExplicitHeight = 288
    object BvlSeparator: TBevel
      Left = 3
      Top = 257
      Width = 630
      Height = 5
      Shape = bsTopLine
    end
    object Label1: TLabel
      Left = 5
      Top = 4
      Width = 61
      Height = 13
      Caption = 'Com Figuras:'
    end
    object Label2: TLabel
      Left = 69
      Top = 4
      Width = 122
      Height = 13
      Caption = 'Tamanho da figura (pixel):'
    end
    object Label3: TLabel
      Left = 232
      Top = 4
      Width = 74
      Height = 13
      Caption = 'Detalhamentos:'
    end
    object Label4: TLabel
      Left = 311
      Top = 4
      Width = 47
      Height = 13
      Caption = #189' P'#225'gina:'
    end
    object LblMargem: TLabel
      Left = 225
      Top = 42
      Width = 41
      Height = 13
      Caption = 'Margem:'
    end
    object LblRemover: TLabel
      Left = 287
      Top = 42
      Width = 80
      Height = 13
      Caption = 'Remover Linhas:'
    end
    object Label5: TLabel
      Left = 5
      Top = 42
      Width = 69
      Height = 13
      Caption = 'Transportador:'
    end
    object Label6: TLabel
      Left = 79
      Top = 42
      Width = 74
      Height = 13
      Caption = 'End. Cobran'#231'a:'
    end
    object Label7: TLabel
      Left = 157
      Top = 42
      Width = 65
      Height = 13
      Caption = 'End. Entrega:'
    end
    object Label8: TLabel
      Left = 375
      Top = 4
      Width = 27
      Height = 13
      Caption = 'Logo:'
    end
    object Label9: TLabel
      Left = 373
      Top = 42
      Width = 86
      Height = 13
      Caption = 'Itens do Conjunto:'
    end
    object Label11: TLabel
      Left = 460
      Top = 42
      Width = 146
      Height = 13
      Caption = 'Remover Linhas entre os itens:'
    end
    object GrpBoxOpcoesProjeto: TGroupBox
      Left = 6
      Top = 84
      Width = 559
      Height = 109
      Caption = ' Op'#231#245'es de Projeto '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 16
      object Label36: TLabel
        Left = 5
        Top = 15
        Width = 121
        Height = 13
        Caption = 'Sem/Tamanho da Figura:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label10: TLabel
        Left = 149
        Top = 12
        Width = 98
        Height = 13
        Caption = '1 Projeto por p'#225'gina:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object LblCheck: TLabel
        Left = 402
        Top = 91
        Width = 153
        Height = 13
        Caption = 'Marcar / Desmarcar Todos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = LblCheckClick
      end
      object CkBImprimirVidros: TCheckBox
        Left = 5
        Top = 70
        Width = 97
        Height = 17
        Caption = ' Vidros'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object CkBImprimirFerragens: TCheckBox
        Left = 5
        Top = 85
        Width = 111
        Height = 17
        Caption = 'Ferragens'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
      object CkBImprimirPerfis: TCheckBox
        Left = 120
        Top = 55
        Width = 97
        Height = 17
        Caption = 'Perfis'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object CkBImprimirServicos: TCheckBox
        Left = 120
        Top = 70
        Width = 97
        Height = 17
        Caption = 'Servi'#231'os'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
      end
      object CkBImprimirKitBox: TCheckBox
        Left = 120
        Top = 85
        Width = 97
        Height = 17
        Caption = 'Kit Box'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
      end
      object CbTamFigura: TComboBox
        Left = 6
        Top = 29
        Width = 142
        Height = 21
        Style = csDropDownList
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ItemHeight = 13
        ItemIndex = 0
        ParentFont = False
        TabOrder = 0
        Text = 'Sem Figuras'
        Items.Strings = (
          'Sem Figuras'
          'Tamanho Original'
          'Reduzido ( 150 x 200 )'
          'Reduzido ( 120 x 150 )'
        )
      end
      object CkBImprimirCd_Fabricante: TCheckBox
        Left = 235
        Top = 54
        Width = 166
        Height = 17
        Caption = 'C'#243'digo do Fabricante'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
      end
      object CkBImprimirTotaisProjeto: TCheckBox
        Left = 235
        Top = 69
        Width = 166
        Height = 17
        Caption = ' Valores dos Projetos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
      end
      object CkBImprimirAreaProjeto: TCheckBox
        Left = 235
        Top = 84
        Width = 161
        Height = 17
        Caption = #193'reas do Projeto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 9
      end
      object CkBImprimirProjetos: TCheckBox
        Left = 5
        Top = 54
        Width = 97
        Height = 17
        Caption = 'Projetos'
        Checked = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        State = cbChecked
        TabOrder = 10
      end
      object Cb1ProjPagina: TComboBox
        Left = 149
        Top = 29
        Width = 60
        Height = 21
        Style = csDropDownList
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ItemHeight = 13
        ItemIndex = 0
        ParentFont = False
        TabOrder = 1
        Text = 'Sim'
        Items.Strings = (
          'Sim'
          'N'#227'o'
        )
      end
    end
    object BitBtnReport: TBitBtn
      Left = 461
      Top = 261
      Width = 87
      Height = 27
      Caption = '&Imprimir'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtnReportClick
      Glyph.Data = {binary 646 bytes}
    end
    object BitBtnCancel: TBitBtn
      Left = 549
      Top = 261
      Width = 87
      Height = 27
      Caption = '&Cancelar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = BitBtnCancelClick
      Glyph.Data = {binary 482 bytes}
      NumGlyphs = 2
    end
    object CbFiguras: TComboBox
      Left = 5
      Top = 19
      Width = 60
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 2
      Text = 'Sim'
      OnChange = CbFigurasChange
      Items.Strings = (
        'Sim'
        'N'#227'o'
      )
    end
    object CbAjusta: TComboBox
      Left = 69
      Top = 19
      Width = 159
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 1
      TabOrder = 3
      Text = 'M'#233'dio - 250 x 350'
      Items.Strings = (
        'M'#237'nimo - 150 x 200'
        'M'#233'dio - 250 x 350'
        'M'#225'ximo - 360 x 600'
        'Ajustar ( M'#225'ximo - 360 x 600 )'
      )
    end
    object CbDetalhe: TComboBox
      Left = 232
      Top = 19
      Width = 60
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 4
      Text = 'Sim'
      Items.Strings = (
        'Sim'
        'N'#227'o'
      )
    end
    object CbMeiaPag: TComboBox
      Left = 311
      Top = 19
      Width = 60
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 1
      TabOrder = 5
      Text = 'N'#227'o'
      Items.Strings = (
        'Sim'
        'N'#227'o'
      )
    end
    object CbMargem: TComboBox
      Left = 225
      Top = 57
      Width = 60
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 1
      TabOrder = 10
      Text = 'N'#227'o'
      Items.Strings = (
        'Sim'
        'N'#227'o'
      )
    end
    object CbRemover: TComboBox
      Left = 287
      Top = 57
      Width = 60
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 1
      TabOrder = 11
      Text = 'N'#227'o'
      Items.Strings = (
        'Sim'
        'N'#227'o'
      )
    end
    object CbTransportador: TComboBox
      Left = 5
      Top = 57
      Width = 60
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 1
      TabOrder = 7
      Text = 'N'#227'o'
      Items.Strings = (
        'Sim'
        'N'#227'o'
      )
    end
    object CbCobranca: TComboBox
      Left = 79
      Top = 57
      Width = 60
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 1
      TabOrder = 8
      Text = 'N'#227'o'
      Items.Strings = (
        'Sim'
        'N'#227'o'
      )
    end
    object CbEntrega: TComboBox
      Left = 157
      Top = 57
      Width = 60
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 1
      TabOrder = 9
      Text = 'N'#227'o'
      Items.Strings = (
        'Sim'
        'N'#227'o'
      )
    end
    object CbLogo: TComboBox
      Left = 375
      Top = 19
      Width = 60
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 1
      TabOrder = 6
      Text = 'N'#227'o'
      Items.Strings = (
        'Sim'
        'N'#227'o'
      )
    end
    object SctRepEstoque: TSctReport
      Left = 492
      Top = 207
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
      TabOrder = 14
      Visible = False
      Minimized = True
      Prompt = True
      AutoRun = False
      OnBeforePrint = SctRepEstoqueBeforePrint
      SuppressStatus = False
      PixelsPerInch = 96
      STop = 30
      SLeft = 5
      SWidth = 1109
      SHeight = 763
      MTop = 207
      MLeft = 492
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
        Description = 'Ordem de P'#225'tio'
        CloseDataSet = False
        DataRange = drAllRecords
        OmitLastPgFt = False
        Head = SctBand1
        Detail = SctBand3
        Foot = SctBand5
        PageHead = SctBand2
        PageFoot = SctBand4
        DataSource = DsItem
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
          DataSource = DsOrcamento
        end
        object SctDataSourceGuide3: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = DsItem
        end
        object SctGroup1: TSctGroup
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Header = SctBand6
          Footer = SctBand7
          Variable = adodsitemdp_localizacaoVar1
          Level = 0
        end
        object SctLevel6: TSctLevel
          Left = 0
          Top = 236
          Width = 0
          Height = 0
          IsHeader = True
        end
        object SctLevel7: TSctLevel
          Left = 0
          Top = 236
          Width = 0
          Height = 0
        end
        object DataSourceGuide19: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = DsTransportador
        end
        object adodsorcamentoDt_EmissaoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dt_Emissao'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentoTp_CargaVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Tp_Carga'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentoDp_EmitenteVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_Emitente'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentoDp_FormaPagtoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_FormaPagto'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentoNr_EnderecoVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_Endereco'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentoDp_PrazoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_Prazo'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentoDs_TituloVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ds_Titulo'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentoVl_Coleta_FreteVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Vl_Coleta_Frete'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentoPs_ColetaVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ps_Coleta'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentoVl_ColetaVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Vl_Coleta'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentoMg_ColetaVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Mg_Coleta'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentoVl_Pedido_FreteVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Vl_Pedido_Frete'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentoPs_PedidoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ps_Pedido'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentoVl_PedidoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Vl_Pedido'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentoMg_PedidoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Mg_Pedido'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentoCd_TabelaVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Cd_Tabela'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentoDp_CargaVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_Carga'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentoEnt_Nr_EnderecoVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ent_Nr_Endereco'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentoEnt_Ds_TituloVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ent_Ds_Titulo'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentoEnt_Ds_EnderecoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ent_Ds_Endereco'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentoEnt_Nm_BairroVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ent_Nm_Bairro'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentoEnt_Ds_ComplementoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ent_Ds_Complemento'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentoEnt_Nr_CEPVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ent_Nr_CEP'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentoEnt_Dp_CidadeVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ent_Dp_Cidade'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentoEnt_Nr_Telefone_1Var: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ent_Nr_Telefone_1'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentoEnt_Nr_Telefone_2Var: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ent_Nr_Telefone_2'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentoEnt_Nr_Telefone_3Var: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ent_Nr_Telefone_3'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentoEnt_Nr_FAXVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ent_Nr_FAX'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentoDs_EnderecoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ds_Endereco'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentoNm_BairroVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nm_Bairro'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentoDs_ComplementoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ds_Complemento'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentoNr_CEPVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_CEP'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentoDp_CidadeVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_Cidade'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentoNr_Telefone_1Var: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_Telefone_1'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentoNr_Telefone_2Var: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_Telefone_2'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentoNr_Telefone_3Var: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_Telefone_3'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentoNr_FAXVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_FAX'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentoFl_FormaPagtoVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Fl_FormaPagto'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentoVl_Coleta_TotalVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Vl_Coleta_Total'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentoVl_Pedido_TotalVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Vl_Pedido_Total'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentoNr_FaturaVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_Fatura'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentoVl_BaseICMSVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Vl_BaseICMS'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentoPr_ICMSVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Pr_ICMS'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentoVl_ICMSVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Vl_ICMS'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentoVl_IPIVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Vl_IPI'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentoNr_ECFVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_ECF'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentoNr_Insc_EstadualVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_Insc_Estadual'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentoSg_EstadoVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Sg_Estado'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentoFl_ContribuinteVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Fl_Contribuinte'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentoFl_ExportadorVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Fl_Exportador'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentoDt_FaturaVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dt_Fatura'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentonr_orcamentoVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nr_orcamento'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentost_orcamentoVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'st_orcamento'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentodp_funcionarioVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'dp_funcionario'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentocd_funcionarioVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'cd_funcionario'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentonr_documentoVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nr_documento'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentoent_mm_observacaoVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'ent_mm_observacao'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentomm_obsenderecoVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'mm_obsendereco'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentomm_observacaoVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'mm_observacao'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentoDp_SituacaoVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_Situacao'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemNr_ItemVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_Item'
          DataSource = DsItem
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemCd_ProdutoVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Cd_Produto'
          DataSource = DsItem
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemNm_ProdutoVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nm_Produto'
          DataSource = DsItem
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemSg_UnidadeVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Sg_Unidade'
          DataSource = DsItem
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemQt_ItemVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Qt_Item'
          DataSource = DsItem
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemVl_UnitarioVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Vl_Unitario'
          DataSource = DsItem
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemVl_TotalVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Vl_Total'
          DataSource = DsItem
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemPr_MargemVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Pr_Margem'
          DataSource = DsItem
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemDp_ConfirmadoVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_Confirmado'
          DataSource = DsItem
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemPr_IPIVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Pr_IPI'
          DataSource = DsItem
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemPr_ICMSVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Pr_ICMS'
          DataSource = DsItem
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemdp_localizacaoVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'dp_localizacao'
          DataSource = DsItem
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object DataSourceGuide34: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = FrmFuncionario_Find.DsFind
        end
        object DataSourceGuide39: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = FrmOrcamento_Pagamento.DsLaboratorio
        end
        object DataSourceGuide47: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = DsConjunto
        end
        object DataSourceGuide7: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = FrmEmitente_Find.DsFind
        end
        object DataSourceGuide9: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = FrmEmitente_Find.DsContato
        end
        object DataSourceGuide4: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = DsDetalhe
        end
        object adodsdetalheCd_FilialVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Cd_Filial'
          DataSource = DsDetalhe
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsdetalheNr_OrcamentoVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_Orcamento'
          DataSource = DsDetalhe
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsdetalheNr_ItemVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_Item'
          DataSource = DsDetalhe
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsdetalheNr_DetalheVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_Detalhe'
          DataSource = DsDetalhe
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsdetalheQt_ItemVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Qt_Item'
          DataSource = DsDetalhe
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsdetalheNr_ComprimentoVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_Comprimento'
          DataSource = DsDetalhe
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsdetalheNr_LarguraVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_Largura'
          DataSource = DsDetalhe
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsdetalheNr_AlturaVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_Altura'
          DataSource = DsDetalhe
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsdetalheDs_DetalheVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ds_Detalhe'
          DataSource = DsDetalhe
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object DataSourceGuide13: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = DsOrcamentoProjeto
        end
        object DataSourceGuide14: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = DsItemVidro
        end
        object DataSourceGuide15: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = DsItemFerragem
        end
        object DataSourceGuide17: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = DsItemPerfil
        end
        object DataSourceGuide21: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = DsItemServico
        end
        object DataSourceGuide25: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = DsItemKitBox
        end
        object DataSourceGuide23: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = DmMaster.DsUsuario
        end
        object DataSourceGuide24: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = DmMaster.DsFilial
        end
        object DataSourceGuide27: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = DsMoldura
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
        object adodsorcamentoDs_NumeroVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ds_Numero'
          DataSource = DsOrcamento
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object DataSourceGuide29: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = True
          UpdateLevel = SctLevel3
          DataSource = DmMaster.DsConexao
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
        object DataSourceGuide31: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = True
          UpdateLevel = SctLevel3
          DataSource = DmMaster.DsConecadoMes
        end
        object adodsconectadomesNm_HostVar1: TSctDBVar
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
          Height = 41
          ParentColor = True
          BandName = 'Page Header'
          Updatelevel = SctLevel2
          BorderType = btSingle
          object Sctvarlabel95: TSctvarlabel
            Left = 1
            Top = 21
            Width = 34
            Height = 17
            Caption = 'Data:'
          end
          object Sctvarlabel96: TSctvarlabel
            Left = 39
            Top = 21
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = SctDateTimeVar1
            DataFormat.DisplayFormat = 'dd/mm/yyyy'
          end
          object Sctvarlabel97: TSctvarlabel
            Left = 633
            Top = 21
            Width = 34
            Height = 17
            Caption = 'Hora:'
          end
          object Sctvarlabel98: TSctvarlabel
            Left = 671
            Top = 21
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = SctDateTimeVar1
            DataFormat.DisplayFormat = 'hh:mm:ss'
          end
          object SctLine4: TSctLine
            Left = 0
            Top = 36
            Width = 734
            Height = 6
          end
          object Sctvarlabel99: TSctvarlabel
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
            Caption = 'Ordem de Estoque'
          end
          object Sctvarlabel100: TSctvarlabel
            Left = 575
            Top = 2
            Width = 110
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Or'#231'amento N'#186':'
          end
          object Sctvarlabel101: TSctvarlabel
            Left = 686
            Top = 2
            Width = 49
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Variable = adodsorcamentonr_orcamentoVar1
            DataFormat.DisplayFormat = '##,##0'
          end
        end
        object SctBand3: TSctBand
          Left = 0
          Top = 346
          Width = 786
          Height = 32
          ParentColor = True
          BandName = 'Detail'
          Updatelevel = SctLevel3
          object Sctvarlabel102: TSctvarlabel
            Left = 7
            Top = 14
            Width = 45
            Height = 17
            AlignHorizontal = laRight
            BorderMargin = 1
            WrapText = True
            Stretch = True
            Variable = adodsitemCd_ProdutoVar1
            DataFormat.DisplayFormat = '###0'
          end
          object Sctvarlabel103: TSctvarlabel
            Left = 58
            Top = 14
            Width = 383
            Height = 17
            BorderMargin = 1
            WrapText = True
            Stretch = True
            Variable = adodsitemNm_ProdutoVar1
          end
          object Sctvarlabel107: TSctvarlabel
            Left = 539
            Top = 14
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            BorderMargin = 1
            WrapText = True
            Stretch = True
            Variable = adodsitemQt_ItemVar1
            DataFormat.DisplayFormat = '#,##0.0##'
            DataFormat.SuppressNulls = True
            DataFormat.Digits = 3
          end
          object Sctvarlabel108: TSctvarlabel
            Left = 447
            Top = 14
            Width = 77
            Height = 17
            AlignHorizontal = laCenter
            BorderMargin = 1
            WrapText = True
            Stretch = True
            Variable = adodsitemSg_UnidadeVar1
            DataFormat.SuppressNulls = True
          end
          object SctLine7: TSctLine
            Left = 610
            Top = 15
            Width = 125
            Height = 17
          end
        end
        object SctBand4: TSctBand
          Left = 0
          Top = 408
          Width = 786
          Height = 23
          Color = 15987699
          BandName = 'Page Footer'
          Updatelevel = SctLevel4
          object SctLine5: TSctLine
            Left = 1
            Top = 1
            Width = 734
            Height = 6
            AlignVertical = laTop
          end
          object Sctvarlabel109: TSctvarlabel
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
          object Sctvarlabel110: TSctvarlabel
            Left = 655
            Top = 4
            Width = 45
            Height = 17
            AlignHorizontal = laRight
            Caption = 'P'#225'gina:'
          end
          object Sctvarlabel111: TSctvarlabel
            Left = 701
            Top = 4
            Width = 35
            Height = 17
            AlignHorizontal = laRight
            Variable = SctPageVar1
            DataFormat.DisplayFormat = '#,##0'
          end
          object SctTxtUsuario2: TSctvarlabel
            Left = 439
            Top = 4
            Width = 210
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Usuario'
          end
        end
        object SctBand5: TSctBand
          Left = 0
          Top = 446
          Width = 786
          Height = 33
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = True
          ParentFont = False
          BandName = 'Report Footer'
          Updatelevel = SctLevel5
          BorderType = btSingle
          object Sctvarlabel112: TSctvarlabel
            Left = 0
            Top = 3
            Width = 67
            Height = 22
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            Caption = 'Carga:'
          end
          object Sctvarlabel113: TSctvarlabel
            Left = 68
            Top = 3
            Width = 263
            Height = 22
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            Variable = adodsorcamentoDp_CargaVar
          end
          object Sctvarlabel118: TSctvarlabel
            Left = 591
            Top = 3
            Width = 70
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Peso'
          end
          object Sctvarlabel128: TSctvarlabel
            Left = 664
            Top = 3
            Width = 70
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsorcamentoPs_PedidoVar
            DataFormat.DisplayFormat = '#,##0.0##'
            DataFormat.Digits = 3
          end
        end
        object SctSubBand1: TSctSubBand
          Left = 0
          Top = 274
          Width = 786
          Height = 23
          Color = 15987699
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          BandName = 'PgHdSubProdutos'
          Updatelevel = SctLevel2
          OnAfterPrint = SctSubBand1AfterPrint
          Band = SctBand2
          Order = 2
          Above = False
          object Sctvarlabel131: TSctvarlabel
            Left = 0
            Top = 2
            Width = 52
            Height = 17
            AlignHorizontal = laRight
            BorderMargin = 1
            WrapText = True
            Caption = 'C'#243'digo'
          end
          object Sctvarlabel132: TSctvarlabel
            Left = 58
            Top = 2
            Width = 65
            Height = 17
            BorderMargin = 1
            WrapText = True
            Caption = 'Produto'
          end
          object Sctvarlabel135: TSctvarlabel
            Left = 641
            Top = 2
            Width = 93
            Height = 17
            AlignHorizontal = laRight
            BorderMargin = 1
            WrapText = True
            DataFormat.SuppressNulls = True
            Caption = 'Estoque'
          end
          object Sctvarlabel136: TSctvarlabel
            Left = 515
            Top = 2
            Width = 89
            Height = 17
            AlignHorizontal = laRight
            BorderMargin = 1
            WrapText = True
            DataFormat.SuppressNulls = True
            Caption = 'Quantidade'
          end
          object Sctvarlabel137: TSctvarlabel
            Left = 447
            Top = 2
            Width = 77
            Height = 17
            AlignHorizontal = laCenter
            BorderMargin = 1
            WrapText = True
            DataFormat.SuppressNulls = True
            Caption = 'Unidade'
          end
          object SctLine6: TSctLine
            Left = 1
            Top = 17
            Width = 734
            Height = 6
          end
        end
        object PgHdSubClienteOP: TSctSubBand
          Left = 0
          Top = 78
          Width = 786
          Height = 70
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = True
          ParentFont = False
          BandName = 'PgHdSubCliente'
          Updatelevel = SctLevel2
          Stretch = True
          BorderType = btSingle
          Band = SctBand2
          Above = False
          object Sctvarlabel138: TSctvarlabel
            Left = 1
            Top = 2
            Width = 56
            Height = 15
            Caption = 'Emiss'#227'o:'
          end
          object Sctvarlabel139: TSctvarlabel
            Left = 60
            Top = 2
            Width = 69
            Height = 15
            Variable = adodsorcamentoDt_EmissaoVar
            DataFormat.DisplayFormat = 'dd/mm/yyyy'
          end
          object Sctvarlabel140: TSctvarlabel
            Left = 131
            Top = 2
            Width = 56
            Height = 15
            Caption = 'Situa'#231#227'o:'
          end
          object Sctvarlabel141: TSctvarlabel
            Left = 191
            Top = 2
            Width = 95
            Height = 15
            Variable = adodsorcamentoDp_SituacaoVar1
          end
          object Sctvarlabel144: TSctvarlabel
            Left = 1
            Top = 19
            Width = 48
            Height = 15
            Caption = 'Cliente:'
          end
          object Sctvarlabel145: TSctvarlabel
            Left = 51
            Top = 19
            Width = 565
            Height = 15
            Variable = adodsorcamentoDp_EmitenteVar
          end
          object Sctvarlabel146: TSctvarlabel
            Left = 1
            Top = 36
            Width = 62
            Height = 15
            Caption = 'Vendedor:'
          end
          object Sctvarlabel147: TSctvarlabel
            Left = 63
            Top = 36
            Width = 333
            Height = 15
            Variable = adodsorcamentodp_funcionarioVar1
          end
          object Sctvarlabel148: TSctvarlabel
            Left = 2
            Top = 51
            Width = 105
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            WrapText = True
            Stretch = True
            Caption = 'Observa'#231#245'es:'
          end
          object Sctvarlabel149: TSctvarlabel
            Left = 87
            Top = 51
            Width = 647
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            WrapText = True
            Stretch = True
            Variable = adodsorcamentomm_observacaoVar1
            DataFormat.SuppressNulls = True
          end
        end
        object PgHdSubEntregaOP: TSctSubBand
          Left = 0
          Top = 163
          Width = 786
          Height = 96
          ParentColor = True
          BandName = 'PgHdSubEntregaOP'
          Updatelevel = SctLevel2
          BorderType = btSingle
          Band = SctBand2
          Order = 1
          Above = False
          object Sctvarlabel170: TSctvarlabel
            Left = 2
            Top = 2
            Width = 126
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Endere'#231'o de Entrega:'
          end
          object Sctvarlabel171: TSctvarlabel
            Left = 130
            Top = 2
            Width = 466
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Variable = adodsorcamentoDs_TituloVar
          end
          object Sctvarlabel172: TSctvarlabel
            Left = 2
            Top = 20
            Width = 61
            Height = 17
            Caption = 'Endere'#231'o:'
          end
          object Sctvarlabel173: TSctvarlabel
            Left = 64
            Top = 20
            Width = 352
            Height = 17
            Variable = adodsorcamentoDs_EnderecoVar
          end
          object Sctvarlabel174: TSctvarlabel
            Left = 503
            Top = 20
            Width = 40
            Height = 17
            Caption = 'Bairro:'
          end
          object Sctvarlabel175: TSctvarlabel
            Left = 546
            Top = 20
            Width = 188
            Height = 17
            Variable = adodsorcamentoNm_BairroVar
          end
          object Sctvarlabel176: TSctvarlabel
            Left = 2
            Top = 39
            Width = 86
            Height = 17
            Caption = 'Complemento:'
          end
          object Sctvarlabel177: TSctvarlabel
            Left = 89
            Top = 39
            Width = 230
            Height = 17
            Variable = adodsorcamentoDs_ComplementoVar
          end
          object Sctvarlabel178: TSctvarlabel
            Left = 324
            Top = 39
            Width = 33
            Height = 17
            Caption = 'CEP:'
          end
          object Sctvarlabel179: TSctvarlabel
            Left = 359
            Top = 39
            Width = 67
            Height = 17
            Variable = adodsorcamentoNr_CEPVar
            DataFormat.DisplayFormat = '##.###-###;0; '
          end
          object Sctvarlabel180: TSctvarlabel
            Left = 431
            Top = 39
            Width = 47
            Height = 17
            Caption = 'Cidade:'
          end
          object Sctvarlabel181: TSctvarlabel
            Left = 480
            Top = 39
            Width = 254
            Height = 17
            Variable = adodsorcamentoDp_CidadeVar
          end
          object Sctvarlabel182: TSctvarlabel
            Left = 2
            Top = 58
            Width = 61
            Height = 17
            Caption = 'Telefones:'
          end
          object Sctvarlabel183: TSctvarlabel
            Left = 66
            Top = 58
            Width = 98
            Height = 17
            Variable = adodsorcamentoNr_Telefone_1Var
            DataFormat.DisplayFormat = '(##) ####-#####;0; '
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel184: TSctvarlabel
            Left = 168
            Top = 58
            Width = 98
            Height = 17
            Variable = adodsorcamentoNr_Telefone_2Var
            DataFormat.DisplayFormat = '(##) ####-#####;0; '
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel185: TSctvarlabel
            Left = 271
            Top = 58
            Width = 98
            Height = 17
            Variable = adodsorcamentoNr_Telefone_3Var
            DataFormat.DisplayFormat = '(##) ####-#####;0; '
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel186: TSctvarlabel
            Left = 374
            Top = 58
            Width = 29
            Height = 17
            Caption = 'FAX:'
          end
          object Sctvarlabel187: TSctvarlabel
            Left = 406
            Top = 58
            Width = 98
            Height = 17
            Variable = adodsorcamentoNr_FAXVar
            DataFormat.DisplayFormat = '(##) ####-#####;0; '
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel188: TSctvarlabel
            Left = 2
            Top = 77
            Width = 94
            Height = 17
            WrapText = True
            Stretch = True
            Caption = 'Observa'#231#245'es:'
          end
          object Sctvarlabel189: TSctvarlabel
            Left = 87
            Top = 77
            Width = 647
            Height = 17
            WrapText = True
            Stretch = True
            Variable = adodsorcamentomm_obsenderecoVar1
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel79: TSctvarlabel
            Left = 422
            Top = 20
            Width = 22
            Height = 17
            Caption = 'N'#186':'
          end
          object Sctvarlabel94: TSctvarlabel
            Left = 446
            Top = 20
            Width = 55
            Height = 17
            Variable = adodsorcamentoDs_NumeroVar1
          end
        end
        object SctBand6: TSctBand
          Left = 0
          Top = 312
          Width = 786
          Height = 19
          ParentColor = True
          BandName = 'Group Header'
          Updatelevel = SctLevel6
          object Sctvarlabel190: TSctvarlabel
            Left = 0
            Top = 0
            Width = 735
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laCenter
            Variable = adodsitemdp_localizacaoVar1
          end
        end
        object SctBand7: TSctBand
          Left = 0
          Top = 393
          Width = 786
          Height = 0
          ParentColor = True
          BandName = 'Group Footer'
          Updatelevel = SctLevel7
          Visible = False
        end
      end
    end
    object CbConjunto: TComboBox
      Left = 373
      Top = 57
      Width = 60
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 1
      TabOrder = 12
      Text = 'N'#227'o'
      Items.Strings = (
        'Sim'
        'N'#227'o'
      )
    end
    object CkBTempera: TCheckBox
      Left = 6
      Top = 201
      Width = 126
      Height = 17
      Caption = 'Imprimir para tempera'
      TabOrder = 17
    end
    object CbRemLinItem: TComboBox
      Left = 460
      Top = 57
      Width = 60
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 13
      Items.Strings = (
        'Sim'
        'N'#227'o'
      )
    end
    object CkBSemValor: TCheckBox
      Left = 6
      Top = 221
      Width = 91
      Height = 17
      Caption = 'Sem Unit'#225'rio'
      TabOrder = 18
    end
    object CkBTotalAmbiente: TCheckBox
      Left = 231
      Top = 221
      Width = 145
      Height = 17
      Caption = 'Total do Ambiente'
      Checked = True
      State = cbChecked
      TabOrder = 20
    end
    object CkBQuantidade: TCheckBox
      Left = 108
      Top = 221
      Width = 101
      Height = 17
      Caption = 'Sem Quantidade'
      TabOrder = 19
    end
    object SctRepOrcamento: TSctReport
      Left = 404
      Top = 207
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
      TabOrder = 15
      Visible = False
      Minimized = True
      Prompt = True
      AutoRun = False
      OnBeforePrint = SctRepOrcamentoBeforePrint
      OnAfterPrint = SctRepOrcamentoAfterPrint
      SuppressStatus = False
      PixelsPerInch = 96
      STop = 118
      SLeft = 12
      SWidth = 846
      SHeight = 741
      MTop = 207
      MLeft = 404
      SAlign = alNone
      Version = vAce1_0
      object RepPgOrcamento: TSctGrouppage
        Left = 35
        Top = 55
        Width = 27
        Height = 0
        VertScrollBar.Position = 132
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
        PageSetup.RightMargin = 0.25
        PageSetup.TopMargin = 0.3
        BorderType = btNone
        Description = 'Or'#231'amento'
        CloseDataSet = False
        DataRange = drAllRecords
        OmitLastPgFt = False
        Head = ReportHeaderBand
        Detail = DetailBand
        Foot = RepFtBd
        PageHead = PgHdOrcamento
        PageFoot = PageFooterBand
        DataSource = DsOrcamento
        Order = 1
        object ReportHeaderBandlevel: TSctLevel
          Left = 0
          Top = -132
          Width = 0
          Height = 0
          IsHeader = True
        end
        object PageHeaderBandlevel: TSctLevel
          Left = 0
          Top = -132
          Width = 0
          Height = 0
          IsHeader = True
        end
        object DetailBandlevel: TSctLevel
          Left = 0
          Top = -132
          Width = 0
          Height = 0
        end
        object PageFooterBandlevel: TSctLevel
          Left = 0
          Top = -132
          Width = 0
          Height = 0
        end
        object ReportFooterBandlevel: TSctLevel
          Left = 0
          Top = -132
          Width = 0
          Height = 0
        end
        object svarDateTime: TSctDateTimeVar
          Left = 0
          Top = -132
          Width = 0
          Height = 0
          UpdateLevel = ReportHeaderBandlevel
          AutoVar = True
          ID = vidDateTimeVar
        end
        object svarPage: TSctPageVar
          Left = 0
          Top = -132
          Width = 0
          Height = 0
          UpdateLevel = PageHeaderBandlevel
          AutoVar = True
          ID = vidPageVar
        end
        object DataSourceGuide: TSctDataSourceGuide
          Left = 0
          Top = -132
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = DsOrcamento
        end
        object adodspedidoDt_EmissaoVar: TSctDBVar
          Left = 0
          Top = -132
          Width = 0
          Height = 0
          DataField = 'Dt_Emissao'
          DataSource = DsOrcamento
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodspedidoDp_EmitenteVar: TSctDBVar
          Left = 0
          Top = -132
          Width = 0
          Height = 0
          DataField = 'Dp_Emitente'
          DataSource = DsOrcamento
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodspedidoDp_PrazoVar: TSctDBVar
          Left = 0
          Top = -132
          Width = 0
          Height = 0
          DataField = 'Dp_Prazo'
          DataSource = DsOrcamento
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodspedidoDs_TituloVar: TSctDBVar
          Left = 0
          Top = -132
          Width = 0
          Height = 0
          DataField = 'Ds_Titulo'
          DataSource = DsOrcamento
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodspedidoVl_Coleta_FreteVar: TSctDBVar
          Left = 0
          Top = -132
          Width = 0
          Height = 0
          DataField = 'Vl_Coleta_Frete'
          DataSource = DsOrcamento
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodspedidoPs_ColetaVar: TSctDBVar
          Left = 0
          Top = -132
          Width = 0
          Height = 0
          DataField = 'Ps_Coleta'
          DataSource = DsOrcamento
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodspedidoVl_ColetaVar: TSctDBVar
          Left = 0
          Top = -132
          Width = 0
          Height = 0
          DataField = 'Vl_Coleta'
          DataSource = DsOrcamento
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodspedidoMg_ColetaVar: TSctDBVar
          Left = 0
          Top = -132
          Width = 0
          Height = 0
          DataField = 'Mg_Coleta'
          DataSource = DsOrcamento
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodspedidoVl_Pedido_FreteVar: TSctDBVar
          Left = 0
          Top = -132
          Width = 0
          Height = 0
          DataField = 'Vl_Pedido_Frete'
          DataSource = DsOrcamento
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodspedidoPs_PedidoVar: TSctDBVar
          Left = 0
          Top = -132
          Width = 0
          Height = 0
          DataField = 'Ps_Pedido'
          DataSource = DsOrcamento
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodspedidoVl_PedidoVar: TSctDBVar
          Left = 0
          Top = -132
          Width = 0
          Height = 0
          DataField = 'Vl_Pedido'
          DataSource = DsOrcamento
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodspedidoMg_PedidoVar: TSctDBVar
          Left = 0
          Top = -132
          Width = 0
          Height = 0
          DataField = 'Mg_Pedido'
          DataSource = DsOrcamento
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodspedidoEnt_Ds_TituloVar: TSctDBVar
          Left = 0
          Top = -132
          Width = 0
          Height = 0
          DataField = 'Ent_Ds_Titulo'
          DataSource = DsOrcamento
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodspedidoEnt_Ds_EnderecoVar: TSctDBVar
          Left = 0
          Top = -132
          Width = 0
          Height = 0
          DataField = 'Ent_Ds_Endereco'
          DataSource = DsOrcamento
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodspedidoEnt_Nm_BairroVar: TSctDBVar
          Left = 0
          Top = -132
          Width = 0
          Height = 0
          DataField = 'Ent_Nm_Bairro'
          DataSource = DsOrcamento
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodspedidoEnt_Ds_ComplementoVar: TSctDBVar
          Left = 0
          Top = -132
          Width = 0
          Height = 0
          DataField = 'Ent_Ds_Complemento'
          DataSource = DsOrcamento
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodspedidoEnt_Nr_CEPVar: TSctDBVar
          Left = 0
          Top = -132
          Width = 0
          Height = 0
          DataField = 'Ent_Nr_CEP'
          DataSource = DsOrcamento
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodspedidoEnt_Dp_CidadeVar: TSctDBVar
          Left = 0
          Top = -132
          Width = 0
          Height = 0
          DataField = 'Ent_Dp_Cidade'
          DataSource = DsOrcamento
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodspedidoEnt_Nr_Telefone_1Var: TSctDBVar
          Left = 0
          Top = -132
          Width = 0
          Height = 0
          DataField = 'Ent_Nr_Telefone_1'
          DataSource = DsOrcamento
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodspedidoEnt_Nr_Telefone_2Var: TSctDBVar
          Left = 0
          Top = -132
          Width = 0
          Height = 0
          DataField = 'Ent_Nr_Telefone_2'
          DataSource = DsOrcamento
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodspedidoEnt_Nr_Telefone_3Var: TSctDBVar
          Left = 0
          Top = -132
          Width = 0
          Height = 0
          DataField = 'Ent_Nr_Telefone_3'
          DataSource = DsOrcamento
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodspedidoEnt_Nr_FAXVar: TSctDBVar
          Left = 0
          Top = -132
          Width = 0
          Height = 0
          DataField = 'Ent_Nr_FAX'
          DataSource = DsOrcamento
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodspedidoDs_EnderecoVar: TSctDBVar
          Left = 0
          Top = -132
          Width = 0
          Height = 0
          DataField = 'Ds_Endereco'
          DataSource = DsOrcamento
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodspedidoNm_BairroVar: TSctDBVar
          Left = 0
          Top = -132
          Width = 0
          Height = 0
          DataField = 'Nm_Bairro'
          DataSource = DsOrcamento
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodspedidoDs_ComplementoVar: TSctDBVar
          Left = 0
          Top = -132
          Width = 0
          Height = 0
          DataField = 'Ds_Complemento'
          DataSource = DsOrcamento
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodspedidoNr_CEPVar: TSctDBVar
          Left = 0
          Top = -132
          Width = 0
          Height = 0
          DataField = 'Nr_CEP'
          DataSource = DsOrcamento
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodspedidoDp_CidadeVar: TSctDBVar
          Left = 0
          Top = -132
          Width = 0
          Height = 0
          DataField = 'Dp_Cidade'
          DataSource = DsOrcamento
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodspedidoNr_Telefone_1Var: TSctDBVar
          Left = 0
          Top = -132
          Width = 0
          Height = 0
          DataField = 'Nr_Telefone_1'
          DataSource = DsOrcamento
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodspedidoNr_Telefone_2Var: TSctDBVar
          Left = 0
          Top = -132
          Width = 0
          Height = 0
          DataField = 'Nr_Telefone_2'
          DataSource = DsOrcamento
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodspedidoNr_Telefone_3Var: TSctDBVar
          Left = 0
          Top = -132
          Width = 0
          Height = 0
          DataField = 'Nr_Telefone_3'
          DataSource = DsOrcamento
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodspedidoNr_FAXVar: TSctDBVar
          Left = 0
          Top = -132
          Width = 0
          Height = 0
          DataField = 'Nr_FAX'
          DataSource = DsOrcamento
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object DataSourceGuide2: TSctDataSourceGuide
          Left = 0
          Top = -132
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DataLevel2
          DataSource = DsItem
        end
        object adodsitemCd_ProdutoVar: TSctDBVar
          Left = 0
          Top = -132
          Width = 0
          Height = 0
          DataField = 'Cd_Produto'
          DataSource = DsItem
          UpdateLevel = DataLevel2
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemNm_ProdutoVar: TSctDBVar
          Left = 0
          Top = -132
          Width = 0
          Height = 0
          DataField = 'Nm_Produto'
          DataSource = DsItem
          UpdateLevel = DataLevel2
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemSg_UnidadeVar: TSctDBVar
          Left = 0
          Top = -132
          Width = 0
          Height = 0
          DataField = 'Sg_Unidade'
          DataSource = DsItem
          UpdateLevel = DataLevel2
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemQt_ItemVar: TSctDBVar
          Left = 0
          Top = -132
          Width = 0
          Height = 0
          DataField = 'Qt_Item'
          DataSource = DsItem
          UpdateLevel = DataLevel2
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemVl_UnitarioVar: TSctDBVar
          Left = 0
          Top = -132
          Width = 0
          Height = 0
          DataField = 'Vl_Unitario'
          DataSource = DsItem
          UpdateLevel = DataLevel2
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemVl_TotalVar: TSctDBVar
          Left = 0
          Top = -132
          Width = 0
          Height = 0
          DataField = 'Vl_Total'
          DataSource = DsItem
          UpdateLevel = DataLevel2
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemPr_MargemVar: TSctDBVar
          Left = 0
          Top = -132
          Width = 0
          Height = 0
          DataField = 'Pr_Margem'
          DataSource = DsItem
          UpdateLevel = DataLevel2
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemDp_ConfirmadoVar: TSctDBVar
          Left = 0
          Top = 104
          Width = 0
          Height = 0
          DataField = 'Dp_Confirmado'
          DataSource = DsItem
          UpdateLevel = DataLevel2
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodspedidoVl_Coleta_TotalVar: TSctDBVar
          Left = 0
          Top = 199
          Width = 0
          Height = 0
          DataField = 'Vl_Coleta_Total'
          DataSource = DsOrcamento
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodspedidoVl_Pedido_TotalVar: TSctDBVar
          Left = 0
          Top = 199
          Width = 0
          Height = 0
          DataField = 'Vl_Pedido_Total'
          DataSource = DsOrcamento
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object DataSourceGuide20: TSctDataSourceGuide
          Left = 0
          Top = -132
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = DsTransportador
        end
        object OverlayBandLevel: TSctLevel
          Left = 0
          Top = -132
          Width = 0
          Height = 0
        end
        object adodsorcamentonr_orcamentoVar: TSctDBVar
          Left = 0
          Top = -132
          Width = 0
          Height = 0
          DataField = 'nr_orcamento'
          DataSource = DsOrcamento
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentodp_funcionarioVar: TSctDBVar
          Left = 0
          Top = -132
          Width = 0
          Height = 0
          DataField = 'dp_funcionario'
          DataSource = DsOrcamento
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentoent_mm_observacaoVar: TSctDBVar
          Left = 0
          Top = -132
          Width = 0
          Height = 0
          DataField = 'ent_mm_observacao'
          DataSource = DsOrcamento
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentomm_observacaoVar: TSctDBVar
          Left = 0
          Top = -132
          Width = 0
          Height = 0
          DataField = 'mm_observacao'
          DataSource = DsOrcamento
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentoDp_SituacaoVar: TSctDBVar
          Left = 0
          Top = -132
          Width = 0
          Height = 0
          DataField = 'Dp_Situacao'
          DataSource = DsOrcamento
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemdp_localizacaoVar: TSctDBVar
          Left = 0
          Top = -132
          Width = 0
          Height = 0
          DataField = 'dp_localizacao'
          DataSource = DsItem
          UpdateLevel = DataLevel2
          AutoVar = False
          ID = vidAutoDataVar
        end
        object DataSourceGuide33: TSctDataSourceGuide
          Left = 0
          Top = 141
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = FrmFuncionario_Find.DsFind
        end
        object adodsitemdp_produtoVar: TSctDBVar
          Left = 0
          Top = 141
          Width = 0
          Height = 0
          DataField = 'dp_produto'
          DataSource = DsItem
          UpdateLevel = DataLevel2
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemdp_grupoVar: TSctDBVar
          Left = 0
          Top = -132
          Width = 0
          Height = 0
          DataField = 'dp_grupo'
          DataSource = DsItem
          UpdateLevel = DataLevel2
          AutoVar = False
          ID = vidAutoDataVar
        end
        object TotalOfVl_Total: TSctTotalvar
          Left = 0
          Top = 193
          Width = 0
          Height = 0
          Variable = adodsitemVl_TotalVar
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidTotalVar
        end
        object DataSourceGuide38: TSctDataSourceGuide
          Left = 0
          Top = 193
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = FrmOrcamento_Pagamento.DsLaboratorio
        end
        object adodstransportadornm_transportadorVar: TSctDBVar
          Left = 0
          Top = -29
          Width = 0
          Height = 0
          DataField = 'nm_transportador'
          DataSource = DsTransportador
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodstransportadornr_documentoVar: TSctDBVar
          Left = 0
          Top = -29
          Width = 0
          Height = 0
          DataField = 'nr_documento'
          DataSource = DsTransportador
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodstransportadornr_inscestadualVar: TSctDBVar
          Left = 0
          Top = -29
          Width = 0
          Height = 0
          DataField = 'nr_inscestadual'
          DataSource = DsTransportador
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodstransportadords_enderecoVar: TSctDBVar
          Left = 0
          Top = -29
          Width = 0
          Height = 0
          DataField = 'ds_endereco'
          DataSource = DsTransportador
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodstransportadornm_bairroVar: TSctDBVar
          Left = 0
          Top = -29
          Width = 0
          Height = 0
          DataField = 'nm_bairro'
          DataSource = DsTransportador
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodstransportadords_complementoVar: TSctDBVar
          Left = 0
          Top = -29
          Width = 0
          Height = 0
          DataField = 'ds_complemento'
          DataSource = DsTransportador
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodstransportadornr_cepVar: TSctDBVar
          Left = 0
          Top = -29
          Width = 0
          Height = 0
          DataField = 'nr_cep'
          DataSource = DsTransportador
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodstransportadornr_telefoneVar: TSctDBVar
          Left = 0
          Top = -29
          Width = 0
          Height = 0
          DataField = 'nr_telefone'
          DataSource = DsTransportador
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodstransportadordp_transportadorVar: TSctDBVar
          Left = 0
          Top = -29
          Width = 0
          Height = 0
          DataField = 'dp_transportador'
          DataSource = DsTransportador
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodstransportadordp_cidadeVar: TSctDBVar
          Left = 0
          Top = -29
          Width = 0
          Height = 0
          DataField = 'dp_cidade'
          DataSource = DsTransportador
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object DataSourceGuide46: TSctDataSourceGuide
          Left = 0
          Top = -132
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = Data1Level2
          DataSource = DsConjunto
        end
        object adodsconjuntocd_produtoVar: TSctDBVar
          Left = 0
          Top = 420
          Width = 0
          Height = 0
          DataField = 'cd_produto'
          DataSource = DsConjunto
          UpdateLevel = Data1Level2
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsconjuntonm_produtoVar: TSctDBVar
          Left = 0
          Top = 420
          Width = 0
          Height = 0
          DataField = 'nm_produto'
          DataSource = DsConjunto
          UpdateLevel = Data1Level2
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsconjuntosg_unidadeVar: TSctDBVar
          Left = 0
          Top = 420
          Width = 0
          Height = 0
          DataField = 'sg_unidade'
          DataSource = DsConjunto
          UpdateLevel = Data1Level2
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsconjuntoqt_itemVar: TSctDBVar
          Left = 0
          Top = 420
          Width = 0
          Height = 0
          DataField = 'qt_item'
          DataSource = DsConjunto
          UpdateLevel = Data1Level2
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsconjuntovl_unitarioVar: TSctDBVar
          Left = 0
          Top = 420
          Width = 0
          Height = 0
          DataField = 'vl_unitario'
          DataSource = DsConjunto
          UpdateLevel = Data1Level2
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemmm_observacaoVar: TSctDBVar
          Left = 0
          Top = -132
          Width = 0
          Height = 0
          DataField = 'mm_observacao'
          DataSource = DsItem
          UpdateLevel = DataLevel2
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentoNr_Insc_EstadualVar: TSctDBVar
          Left = 0
          Top = -132
          Width = 0
          Height = 0
          DataField = 'Nr_Insc_Estadual'
          DataSource = DsOrcamento
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentonr_documentoVar: TSctDBVar
          Left = 0
          Top = -132
          Width = 0
          Height = 0
          DataField = 'nr_documento'
          DataSource = DsOrcamento
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemVl_IPIVar: TSctDBVar
          Left = 0
          Top = 503
          Width = 0
          Height = 0
          DataField = 'Vl_IPI'
          DataSource = DsItem
          UpdateLevel = DataLevel2
          AutoVar = False
          ID = vidAutoDataVar
        end
        object TotalOfVl_IPI: TSctTotalvar
          Left = 0
          Top = 503
          Width = 0
          Height = 0
          Variable = adodsitemVl_IPIVar
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidTotalVar
        end
        object adodsorcamentonm_contatoVar: TSctDBVar
          Left = 0
          Top = 717
          Width = 0
          Height = 0
          DataField = 'nm_contato'
          DataSource = DsOrcamento
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsconjuntoVl_CustoVar: TSctDBVar
          Left = 0
          Top = 398
          Width = 0
          Height = 0
          DataField = 'Vl_Custo'
          DataSource = DsConjunto
          UpdateLevel = Data1Level2
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsconjuntoPr_MargemVar: TSctDBVar
          Left = 0
          Top = 398
          Width = 0
          Height = 0
          DataField = 'Pr_Margem'
          DataSource = DsConjunto
          UpdateLevel = Data1Level2
          AutoVar = False
          ID = vidAutoDataVar
        end
        object TotalOfVl_Custo: TSctTotalvar
          Left = 0
          Top = 398
          Width = 0
          Height = 0
          Variable = adodsconjuntoVl_CustoVar
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidTotalVar
        end
        object adodsconjuntoVl_CustoTotalVar: TSctDBVar
          Left = 0
          Top = 398
          Width = 0
          Height = 0
          DataField = 'Vl_CustoTotal'
          DataSource = DsConjunto
          UpdateLevel = Data1Level2
          AutoVar = False
          ID = vidAutoDataVar
        end
        object TotalOfVl_CustoTotal: TSctTotalvar
          Left = 0
          Top = 398
          Width = 0
          Height = 0
          Variable = adodsconjuntoVl_CustoTotalVar
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidTotalVar
        end
        object DataSourceGuide5: TSctDataSourceGuide
          Left = 0
          Top = 683
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = FrmEmitente_Find.DsFind
        end
        object DataSourceGuide6: TSctDataSourceGuide
          Left = 0
          Top = 683
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = FrmEmitente_Find.DsContato
        end
        object DataSourceGuide3: TSctDataSourceGuide
          Left = 0
          Top = 598
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = Data1Level
          DataSource = DsDetalhe
        end
        object adodsdetalheQt_ItemVar: TSctDBVar
          Left = 0
          Top = 598
          Width = 0
          Height = 0
          DataField = 'Qt_Item'
          DataSource = DsDetalhe
          UpdateLevel = Data1Level
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsdetalheDp_DetalheVar: TSctDBVar
          Left = 0
          Top = 581
          Width = 0
          Height = 0
          DataField = 'Dp_Detalhe'
          DataSource = DsDetalhe
          UpdateLevel = Data1Level
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemDs_AmbienteVar: TSctDBVar
          Left = 0
          Top = 219
          Width = 0
          Height = 0
          DataField = 'Ds_Ambiente'
          DataSource = DsItem
          UpdateLevel = DataLevel2
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemDp_SubProdutoVar: TSctDBVar
          Left = 0
          Top = 393
          Width = 0
          Height = 0
          DataField = 'Dp_SubProduto'
          DataSource = DsItem
          UpdateLevel = DataLevel2
          AutoVar = False
          ID = vidAutoDataVar
        end
        object DataSourceGuide10: TSctDataSourceGuide
          Left = 0
          Top = 525
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DataLevel9
          DataSource = DsOrcamentoProjeto
        end
        object DataSourceGuide11: TSctDataSourceGuide
          Left = 0
          Top = 525
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DataLevel3
          DataSource = DsItemVidro
        end
        object DataSourceGuide12: TSctDataSourceGuide
          Left = 0
          Top = 525
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DataLevel4
          DataSource = DsItemFerragem
        end
        object adodsitemvidroNr_AlturaVar: TSctDBVar
          Left = 0
          Top = 525
          Width = 0
          Height = 0
          DataField = 'Nr_Altura'
          DataSource = DsItemVidro
          UpdateLevel = DataLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemvidroNr_Altura_FolgaVar: TSctDBVar
          Left = 0
          Top = 525
          Width = 0
          Height = 0
          DataField = 'Nr_Altura_Folga'
          DataSource = DsItemVidro
          UpdateLevel = DataLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemvidroNr_LarguraVar: TSctDBVar
          Left = 0
          Top = 525
          Width = 0
          Height = 0
          DataField = 'Nr_Largura'
          DataSource = DsItemVidro
          UpdateLevel = DataLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemvidroNr_Largura_FolgaVar: TSctDBVar
          Left = 0
          Top = 525
          Width = 0
          Height = 0
          DataField = 'Nr_Largura_Folga'
          DataSource = DsItemVidro
          UpdateLevel = DataLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemvidroQt_ItemVar: TSctDBVar
          Left = 0
          Top = 525
          Width = 0
          Height = 0
          DataField = 'Qt_Item'
          DataSource = DsItemVidro
          UpdateLevel = DataLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemvidroVl_UnitarioVar: TSctDBVar
          Left = 0
          Top = 525
          Width = 0
          Height = 0
          DataField = 'Vl_Unitario'
          DataSource = DsItemVidro
          UpdateLevel = DataLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemvidroNm_ProdutoVar: TSctDBVar
          Left = 0
          Top = 525
          Width = 0
          Height = 0
          DataField = 'Nm_Produto'
          DataSource = DsItemVidro
          UpdateLevel = DataLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemvidroDs_ParteVar: TSctDBVar
          Left = 0
          Top = 525
          Width = 0
          Height = 0
          DataField = 'Ds_Parte'
          DataSource = DsItemVidro
          UpdateLevel = DataLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemvidroDp_PecaVar: TSctDBVar
          Left = 0
          Top = 525
          Width = 0
          Height = 0
          DataField = 'Dp_Peca'
          DataSource = DsItemVidro
          UpdateLevel = DataLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemvidroDp_UnidadeVar: TSctDBVar
          Left = 0
          Top = 525
          Width = 0
          Height = 0
          DataField = 'Dp_Unidade'
          DataSource = DsItemVidro
          UpdateLevel = DataLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemvidroVl_TotalVar: TSctDBVar
          Left = 0
          Top = 525
          Width = 0
          Height = 0
          DataField = 'Vl_Total'
          DataSource = DsItemVidro
          UpdateLevel = DataLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemferragemCd_ProdutoVar: TSctDBVar
          Left = 0
          Top = 525
          Width = 0
          Height = 0
          DataField = 'Cd_Produto'
          DataSource = DsItemFerragem
          UpdateLevel = DataLevel4
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemferragemNr_ItemVar: TSctDBVar
          Left = 0
          Top = 525
          Width = 0
          Height = 0
          DataField = 'Nr_Item'
          DataSource = DsItemFerragem
          UpdateLevel = DataLevel4
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemferragemNm_ProdutoVar: TSctDBVar
          Left = 0
          Top = 525
          Width = 0
          Height = 0
          DataField = 'Nm_Produto'
          DataSource = DsItemFerragem
          UpdateLevel = DataLevel4
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemferragemCd_FabricanteVar: TSctDBVar
          Left = 0
          Top = 525
          Width = 0
          Height = 0
          DataField = 'Cd_Fabricante'
          DataSource = DsItemFerragem
          UpdateLevel = DataLevel4
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemferragemQt_ItemVar: TSctDBVar
          Left = 0
          Top = 525
          Width = 0
          Height = 0
          DataField = 'Qt_Item'
          DataSource = DsItemFerragem
          UpdateLevel = DataLevel4
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemferragemVl_UnitarioVar: TSctDBVar
          Left = 0
          Top = 525
          Width = 0
          Height = 0
          DataField = 'Vl_Unitario'
          DataSource = DsItemFerragem
          UpdateLevel = DataLevel4
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemferragemVl_TotalVar: TSctDBVar
          Left = 0
          Top = 525
          Width = 0
          Height = 0
          DataField = 'Vl_Total'
          DataSource = DsItemFerragem
          UpdateLevel = DataLevel4
          AutoVar = False
          ID = vidAutoDataVar
        end
        object DataSourceGuide16: TSctDataSourceGuide
          Left = 0
          Top = 525
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DataLevel5
          DataSource = DsItemPerfil
        end
        object adodsitemperfilCd_ProdutoVar: TSctDBVar
          Left = 0
          Top = 525
          Width = 0
          Height = 0
          DataField = 'Cd_Produto'
          DataSource = DsItemPerfil
          UpdateLevel = DataLevel5
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemperfilNm_ProdutoVar: TSctDBVar
          Left = 0
          Top = 525
          Width = 0
          Height = 0
          DataField = 'Nm_Produto'
          DataSource = DsItemPerfil
          UpdateLevel = DataLevel5
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemperfilQt_ItemVar: TSctDBVar
          Left = 0
          Top = 525
          Width = 0
          Height = 0
          DataField = 'Qt_Item'
          DataSource = DsItemPerfil
          UpdateLevel = DataLevel5
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemperfilVl_UnitarioVar: TSctDBVar
          Left = 0
          Top = 525
          Width = 0
          Height = 0
          DataField = 'Vl_Unitario'
          DataSource = DsItemPerfil
          UpdateLevel = DataLevel5
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemperfilDp_UnidadeVar: TSctDBVar
          Left = 0
          Top = 525
          Width = 0
          Height = 0
          DataField = 'Dp_Unidade'
          DataSource = DsItemPerfil
          UpdateLevel = DataLevel5
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemperfilVl_TotalVar: TSctDBVar
          Left = 0
          Top = 525
          Width = 0
          Height = 0
          DataField = 'Vl_Total'
          DataSource = DsItemPerfil
          UpdateLevel = DataLevel5
          AutoVar = False
          ID = vidAutoDataVar
        end
        object DataSourceGuide18: TSctDataSourceGuide
          Left = 0
          Top = 525
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DataLevel6
          DataSource = DsItemServico
        end
        object adodsitemperfilNr_AlturaVar: TSctDBVar
          Left = 0
          Top = 525
          Width = 0
          Height = 0
          DataField = 'Nr_Altura'
          DataSource = DsItemPerfil
          UpdateLevel = DataLevel5
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemperfilNr_LarguraVar: TSctDBVar
          Left = 0
          Top = 525
          Width = 0
          Height = 0
          DataField = 'Nr_Largura'
          DataSource = DsItemPerfil
          UpdateLevel = DataLevel5
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemperfilDs_ParteVar: TSctDBVar
          Left = 0
          Top = 525
          Width = 0
          Height = 0
          DataField = 'Ds_Parte'
          DataSource = DsItemPerfil
          UpdateLevel = DataLevel5
          AutoVar = False
          ID = vidAutoDataVar
        end
        object DataSourceGuide22: TSctDataSourceGuide
          Left = 0
          Top = 525
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DataLevel7
          DataSource = DsItemKitBox
        end
        object DataLevel3: TSctLevel
          Left = 0
          Top = 224
          Width = 0
          Height = 0
        end
        object DataLevel4: TSctLevel
          Left = 0
          Top = 224
          Width = 0
          Height = 0
        end
        object DataLevel5: TSctLevel
          Left = 0
          Top = 224
          Width = 0
          Height = 0
        end
        object DataLevel6: TSctLevel
          Left = 0
          Top = 224
          Width = 0
          Height = 0
        end
        object DataLevel7: TSctLevel
          Left = 0
          Top = 224
          Width = 0
          Height = 0
        end
        object BdItemVidroHeaderLevel: TSctLevel
          Left = 0
          Top = 224
          Width = 0
          Height = 0
          IsHeader = True
        end
        object BdItemFerragemHeaderLevel: TSctLevel
          Left = 0
          Top = 224
          Width = 0
          Height = 0
          IsHeader = True
        end
        object BdItemPerfilHeaderLevel: TSctLevel
          Left = 0
          Top = 224
          Width = 0
          Height = 0
          IsHeader = True
        end
        object BdItemServicoHeaderLevel: TSctLevel
          Left = 0
          Top = 224
          Width = 0
          Height = 0
          IsHeader = True
        end
        object BdItemKitBoxHeaderLevel: TSctLevel
          Left = 0
          Top = 224
          Width = 0
          Height = 0
          IsHeader = True
        end
        object adodsorcamentoprojetoQt_ProjetoVar: TSctDBVar
          Left = 0
          Top = 659
          Width = 0
          Height = 0
          DataField = 'Qt_Projeto'
          DataSource = DsOrcamentoProjeto
          UpdateLevel = DataLevel9
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentoprojetoMm_ObservacaoVar: TSctDBVar
          Left = 0
          Top = 659
          Width = 0
          Height = 0
          DataField = 'Mm_Observacao'
          DataSource = DsOrcamentoProjeto
          UpdateLevel = DataLevel9
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentoprojetoDs_AmbienteVar: TSctDBVar
          Left = 0
          Top = 659
          Width = 0
          Height = 0
          DataField = 'Ds_Ambiente'
          DataSource = DsOrcamentoProjeto
          UpdateLevel = DataLevel9
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentoprojetoVl_ProjetoVar: TSctDBVar
          Left = 0
          Top = 659
          Width = 0
          Height = 0
          DataField = 'Vl_Projeto'
          DataSource = DsOrcamentoProjeto
          UpdateLevel = DataLevel9
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentoprojetoIm_ProjetoVar: TSctDBVar
          Left = 0
          Top = 659
          Width = 0
          Height = 0
          DataField = 'Im_Projeto'
          DataSource = DsOrcamentoProjeto
          UpdateLevel = DataLevel9
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemvidroCd_ProdutoVar1: TSctDBVar
          Left = 0
          Top = 659
          Width = 0
          Height = 0
          DataField = 'Cd_Produto'
          DataSource = DsItemVidro
          UpdateLevel = DataLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object BdItemVidroFooterLevel: TSctLevel
          Left = 0
          Top = 659
          Width = 0
          Height = 0
        end
        object TotalOfVl_TotalVidros: TSctTotalvar
          Left = 0
          Top = 707
          Width = 0
          Height = 0
          Variable = adodsitemvidroVl_TotalVar
          UpdateLevel = DataLevel3
          AutoVar = False
          ID = vidTotalVar
        end
        object BdItemFerragemFooterLevel: TSctLevel
          Left = 0
          Top = 719
          Width = 0
          Height = 0
        end
        object TotalOfVl_TotalFerragens: TSctTotalvar
          Left = 0
          Top = 799
          Width = 0
          Height = 0
          Variable = adodsitemferragemVl_TotalVar
          UpdateLevel = DataLevel4
          AutoVar = False
          ID = vidTotalVar
        end
        object BdItemPerfilFooterLevel: TSctLevel
          Left = 0
          Top = 1069
          Width = 0
          Height = 0
        end
        object adodsitemservicoCd_ProdutoVar: TSctDBVar
          Left = 0
          Top = 979
          Width = 0
          Height = 0
          DataField = 'Cd_Produto'
          DataSource = DsItemServico
          UpdateLevel = DataLevel6
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemservicoQt_ItemVar: TSctDBVar
          Left = 0
          Top = 979
          Width = 0
          Height = 0
          DataField = 'Qt_Item'
          DataSource = DsItemServico
          UpdateLevel = DataLevel6
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemservicoNm_ProdutoVar: TSctDBVar
          Left = 0
          Top = 979
          Width = 0
          Height = 0
          DataField = 'Nm_Produto'
          DataSource = DsItemServico
          UpdateLevel = DataLevel6
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemservicoVl_UnitarioVar: TSctDBVar
          Left = 0
          Top = 979
          Width = 0
          Height = 0
          DataField = 'Vl_Unitario'
          DataSource = DsItemServico
          UpdateLevel = DataLevel6
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemservicoVl_TotalVar: TSctDBVar
          Left = 0
          Top = 979
          Width = 0
          Height = 0
          DataField = 'Vl_Total'
          DataSource = DsItemServico
          UpdateLevel = DataLevel6
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemkitboxCd_ProdutoVar: TSctDBVar
          Left = 0
          Top = 979
          Width = 0
          Height = 0
          DataField = 'Cd_Produto'
          DataSource = DsItemKitBox
          UpdateLevel = DataLevel7
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemkitboxQt_ItemVar: TSctDBVar
          Left = 0
          Top = 979
          Width = 0
          Height = 0
          DataField = 'Qt_Item'
          DataSource = DsItemKitBox
          UpdateLevel = DataLevel7
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemkitboxNm_ProdutoVar: TSctDBVar
          Left = 0
          Top = 979
          Width = 0
          Height = 0
          DataField = 'Nm_Produto'
          DataSource = DsItemKitBox
          UpdateLevel = DataLevel7
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemkitboxVl_UnitarioVar: TSctDBVar
          Left = 0
          Top = 979
          Width = 0
          Height = 0
          DataField = 'Vl_Unitario'
          DataSource = DsItemKitBox
          UpdateLevel = DataLevel7
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemkitboxVl_TotalVar: TSctDBVar
          Left = 0
          Top = 979
          Width = 0
          Height = 0
          DataField = 'Vl_Total'
          DataSource = DsItemKitBox
          UpdateLevel = DataLevel7
          AutoVar = False
          ID = vidAutoDataVar
        end
        object TotalOfVl_TotalPerfis: TSctTotalvar
          Left = 0
          Top = 979
          Width = 0
          Height = 0
          Variable = adodsitemperfilVl_TotalVar
          UpdateLevel = DataLevel5
          AutoVar = False
          ID = vidTotalVar
        end
        object BdItemServicoFooterLevel: TSctLevel
          Left = 0
          Top = 1014
          Width = 0
          Height = 0
        end
        object BdItemKitBoxFooterLevel: TSctLevel
          Left = 0
          Top = 1014
          Width = 0
          Height = 0
        end
        object TotalOfVl_TotalServicos: TSctTotalvar
          Left = 0
          Top = 1014
          Width = 0
          Height = 0
          Variable = adodsitemservicoVl_TotalVar
          UpdateLevel = DataLevel6
          AutoVar = False
          ID = vidTotalVar
        end
        object TotalOfVl_TotalKitBox: TSctTotalvar
          Left = 0
          Top = 1163
          Width = 0
          Height = 0
          Variable = adodsitemkitboxVl_TotalVar
          UpdateLevel = DataLevel7
          AutoVar = False
          ID = vidTotalVar
        end
        object DataLevel9: TSctLevel
          Left = 0
          Top = 415
          Width = 0
          Height = 0
        end
        object GroupOrcamentoProjeto: TSctGroup
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Header = Group1Header
          Footer = Group1Footer
          Variable = adodsorcamentonr_orcamentoVar
          Level = 0
        end
        object Group1HeaderLevel: TSctLevel
          Left = 0
          Top = 540
          Width = 0
          Height = 0
          IsHeader = True
        end
        object Group1FooterLevel: TSctLevel
          Left = 0
          Top = 540
          Width = 0
          Height = 0
        end
        object adodsitemvidroSg_UnidadeVar1: TSctDBVar
          Left = 0
          Top = 761
          Width = 0
          Height = 0
          DataField = 'Sg_Unidade'
          DataSource = DsItemVidro
          UpdateLevel = DataLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentoprojetoDp_ProjetoVar1: TSctDBVar
          Left = 0
          Top = 761
          Width = 0
          Height = 0
          DataField = 'Dp_Projeto'
          DataSource = DsOrcamentoProjeto
          UpdateLevel = DataLevel9
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentoprojetoVl_TotalProjetoVar1: TSctDBVar
          Left = 0
          Top = 761
          Width = 0
          Height = 0
          DataField = 'Vl_TotalProjeto'
          DataSource = DsOrcamentoProjeto
          UpdateLevel = DataLevel9
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentoprojetoDp_PrazoEntregaVar1: TSctDBVar
          Left = 0
          Top = 761
          Width = 0
          Height = 0
          DataField = 'Dp_PrazoEntrega'
          DataSource = DsOrcamentoProjeto
          UpdateLevel = DataLevel9
          AutoVar = False
          ID = vidAutoDataVar
        end
        object BdProjetosFooterLevel: TSctLevel
          Left = 0
          Top = 761
          Width = 0
          Height = 0
        end
        object TotalOfVl_TotalProjeto: TSctTotalvar
          Left = 0
          Top = 761
          Width = 0
          Height = 0
          Variable = adodsorcamentoprojetoVl_TotalProjetoVar1
          UpdateLevel = DataLevel9
          AutoVar = False
          ID = vidTotalVar
        end
        object adodsorcamentoprojetoDp_ParteVar1: TSctDBVar
          Left = 0
          Top = 738
          Width = 0
          Height = 0
          DataField = 'Dp_Parte'
          DataSource = DsOrcamentoProjeto
          UpdateLevel = DataLevel9
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentoNr_IdentidadeVar: TSctDBVar
          Left = 0
          Top = -132
          Width = 0
          Height = 0
          DataField = 'Nr_Identidade'
          DataSource = DsOrcamento
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object DataSourceGuide1: TSctDataSourceGuide
          Left = 0
          Top = -132
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = DmMaster.DsUsuario
        end
        object DataSourceGuide8: TSctDataSourceGuide
          Left = 0
          Top = -132
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = DmMaster.DsFilial
        end
        object DataLevel2: TSctLevel
          Left = 0
          Top = 323
          Width = 0
          Height = 0
        end
        object Data1Level: TSctLevel
          Left = 0
          Top = 323
          Width = 0
          Height = 0
        end
        object adodsitemferragemSg_UnidadeVar1: TSctDBVar
          Left = 0
          Top = 866
          Width = 0
          Height = 0
          DataField = 'Sg_Unidade'
          DataSource = DsItemFerragem
          UpdateLevel = DataLevel4
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemkitboxSg_UnidadeVar1: TSctDBVar
          Left = 0
          Top = 1321
          Width = 0
          Height = 0
          DataField = 'Sg_Unidade'
          DataSource = DsItemKitBox
          UpdateLevel = DataLevel7
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemservicoSg_UnidadeVar1: TSctDBVar
          Left = 0
          Top = 1169
          Width = 0
          Height = 0
          DataField = 'Sg_Unidade'
          DataSource = DsItemServico
          UpdateLevel = DataLevel6
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsfilialNm_FilialVar: TSctDBVar
          Left = 0
          Top = -132
          Width = 0
          Height = 0
          DataField = 'Nm_Filial'
          DataSource = DmMaster.DsFilial
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsfilialMm_RodapeVar: TSctDBVar
          Left = 0
          Top = 1568
          Width = 0
          Height = 0
          DataField = 'Mm_Rodape'
          DataSource = DmMaster.DsFilial
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object DataSourceGuide26: TSctDataSourceGuide
          Left = 0
          Top = 248
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = Data1Level1
          DataSource = DsMoldura
        end
        object adodsmolduraQt_MolduraVar: TSctDBVar
          Left = 0
          Top = 248
          Width = 0
          Height = 0
          DataField = 'Qt_Moldura'
          DataSource = DsMoldura
          UpdateLevel = Data1Level1
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsmolduraDp_MolduraVar: TSctDBVar
          Left = 0
          Top = 248
          Width = 0
          Height = 0
          DataField = 'Dp_Moldura'
          DataSource = DsMoldura
          UpdateLevel = Data1Level1
          AutoVar = False
          ID = vidAutoDataVar
        end
        object Data1Level1: TSctLevel
          Left = 0
          Top = 248
          Width = 0
          Height = 0
        end
        object adodsfilialDp_FilialVar: TSctDBVar
          Left = 0
          Top = 1661
          Width = 0
          Height = 0
          DataField = 'Dp_Filial'
          DataSource = DmMaster.DsFilial
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemDp_ProdImpressoVar: TSctDBVar
          Left = 0
          Top = 456
          Width = 0
          Height = 0
          DataField = 'Dp_ProdImpresso'
          DataSource = DsItem
          UpdateLevel = DataLevel2
          AutoVar = False
          ID = vidAutoDataVar
        end
        object OverlayBand1Level: TSctLevel
          Left = 0
          Top = 2209
          Width = 0
          Height = 0
        end
        object adodsorcamentoDs_Email_EmitenteVar: TSctDBVar
          Left = 0
          Top = -130
          Width = 0
          Height = 0
          DataField = 'Ds_Email_Emitente'
          DataSource = DsOrcamento
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentoEnt_Ds_NumeroVar: TSctDBVar
          Left = 0
          Top = -130
          Width = 0
          Height = 0
          DataField = 'Ent_Ds_Numero'
          DataSource = DsOrcamento
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentoDs_NumeroVar: TSctDBVar
          Left = 0
          Top = -130
          Width = 0
          Height = 0
          DataField = 'Ds_Numero'
          DataSource = DsOrcamento
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentomm_obsenderecoVar: TSctDBVar
          Left = 0
          Top = -132
          Width = 0
          Height = 0
          DataField = 'mm_obsendereco'
          DataSource = DsOrcamento
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object Data1Level2: TSctLevel
          Left = 0
          Top = 503
          Width = 0
          Height = 0
        end
        object BdConjuntoNewHeaderLevel: TSctLevel
          Left = 0
          Top = 503
          Width = 0
          Height = 0
          IsHeader = True
        end
        object BdConjuntoNewFooterLevel: TSctLevel
          Left = 0
          Top = 503
          Width = 0
          Height = 0
        end
        object adodsorcamentoEnt_Nr_Celular_1Var: TSctDBVar
          Left = 0
          Top = -132
          Width = 0
          Height = 0
          DataField = 'Ent_Nr_Celular_1'
          DataSource = DsOrcamento
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentoEnt_Nr_Celular_2Var: TSctDBVar
          Left = 0
          Top = -132
          Width = 0
          Height = 0
          DataField = 'Ent_Nr_Celular_2'
          DataSource = DsOrcamento
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentoNr_Celular_1Var: TSctDBVar
          Left = 0
          Top = -132
          Width = 0
          Height = 0
          DataField = 'Nr_Celular_1'
          DataSource = DsOrcamento
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsorcamentoNr_Celular_2Var: TSctDBVar
          Left = 0
          Top = -132
          Width = 0
          Height = 0
          DataField = 'Nr_Celular_2'
          DataSource = DsOrcamento
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object DataSourceGuide28: TSctDataSourceGuide
          Left = 0
          Top = 540
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = DmMaster.DsConexao
        end
        object adodsorcamentoVl_STBVar: TSctDBVar
          Left = 0
          Top = 1756
          Width = 0
          Height = 0
          DataField = 'Vl_STB'
          DataSource = DsOrcamento
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object DataSourceGuide30: TSctDataSourceGuide
          Left = 0
          Top = 530
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = DmMaster.DsConecadoMes
        end
        object adodsdetalheVl_UnitarioVar: TSctDBVar
          Left = 0
          Top = 530
          Width = 0
          Height = 0
          DataField = 'Vl_Unitario'
          DataSource = DsDetalhe
          UpdateLevel = Data1Level
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsdetalheVl_TotalVar: TSctDBVar
          Left = 0
          Top = 530
          Width = 0
          Height = 0
          DataField = 'Vl_Total'
          DataSource = DsDetalhe
          UpdateLevel = Data1Level
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsconjuntoDp_ProdutoVar: TSctDBVar
          Left = 0
          Top = 547
          Width = 0
          Height = 0
          DataField = 'Dp_Produto'
          DataSource = DsConjunto
          UpdateLevel = Data1Level2
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemvidroDp_ProdutoVar: TSctDBVar
          Left = 0
          Top = 1184
          Width = 0
          Height = 0
          DataField = 'Dp_Produto'
          DataSource = DsItemVidro
          UpdateLevel = DataLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemferragemDp_ProdutoVar: TSctDBVar
          Left = 0
          Top = 1184
          Width = 0
          Height = 0
          DataField = 'Dp_Produto'
          DataSource = DsItemFerragem
          UpdateLevel = DataLevel4
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemservicoDp_ProdutoVar: TSctDBVar
          Left = 0
          Top = 1184
          Width = 0
          Height = 0
          DataField = 'Dp_Produto'
          DataSource = DsItemServico
          UpdateLevel = DataLevel6
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemkitboxDp_ProdutoVar: TSctDBVar
          Left = 0
          Top = 1376
          Width = 0
          Height = 0
          DataField = 'Dp_Produto'
          DataSource = DsItemKitBox
          UpdateLevel = DataLevel7
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsitemperfilDp_ProdutoVar: TSctDBVar
          Left = 0
          Top = 1392
          Width = 0
          Height = 0
          DataField = 'Dp_Produto'
          DataSource = DsItemPerfil
          UpdateLevel = DataLevel5
          AutoVar = False
          ID = vidAutoDataVar
        end
        object ReportHeaderBand: TSctBand
          Left = 0
          Top = -132
          Width = 791
          Height = 7
          ParentColor = True
          BandName = 'Report Header'
          Updatelevel = ReportHeaderBandlevel
          Visible = False
        end
        object PgHdOrcamento: TSctBand
          Left = 0
          Top = 23
          Width = 791
          Height = 0
          ParentColor = True
          BandName = 'PgHdOrcamento'
          Updatelevel = PageHeaderBandlevel
          Stretch = True
          BorderType = btSingle
        end
        object DetailBand: TSctBand
          Left = 0
          Top = 655
          Width = 791
          Height = 0
          ParentColor = True
          BandName = 'Detail'
          Updatelevel = DetailBandlevel
          Stretch = True
        end
        object PageFooterBand: TSctBand
          Left = 0
          Top = 1999
          Width = 791
          Height = 23
          Color = 16316664
          BandName = 'Page Footer'
          Updatelevel = PageFooterBandlevel
          OnAfterPrint = PageFooterBandAfterPrint
          object SctLine3: TSctLine
            Left = 1
            Top = 1
            Width = 734
            Height = 6
            AlignVertical = laTop
          end
          object Sctvarlabel22: TSctvarlabel
            Left = 0
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
          object Sctvarlabel23: TSctvarlabel
            Left = 655
            Top = 4
            Width = 45
            Height = 17
            AlignHorizontal = laRight
            Caption = 'P'#225'gina:'
          end
          object Sctvarlabel24: TSctvarlabel
            Left = 701
            Top = 4
            Width = 35
            Height = 17
            AlignHorizontal = laRight
            Variable = svarPage
            DataFormat.DisplayFormat = '#,##0'
          end
          object SctTxtUsuario: TSctvarlabel
            Left = 439
            Top = 4
            Width = 210
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Usuario'
          end
        end
        object RepFtBd: TSctBand
          Left = 0
          Top = 2037
          Width = 791
          Height = 1
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = True
          ParentFont = False
          BandName = 'RepFtBd'
          Updatelevel = ReportFooterBandlevel
          Stretch = True
          OnBeforePrint = RepFtBdBeforePrint
        end
        object PgHdSubCobranca: TSctSubBand
          Left = 0
          Top = 264
          Width = 791
          Height = 88
          ParentColor = True
          BandName = 'PgHdSubCobranca'
          Updatelevel = PageHeaderBandlevel
          Visible = False
          Stretch = True
          BorderType = btSingle
          Band = PgHdOrcamento
          Order = 3
          Above = False
          object Sctvarlabel31: TSctvarlabel
            Left = 2
            Top = 2
            Width = 177
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Endere'#231'o de Cobran'#231'a:'
          end
          object Sctvarlabel33: TSctvarlabel
            Left = 2
            Top = 19
            Width = 61
            Height = 17
            Caption = 'Endere'#231'o:'
          end
          object Sctvarlabel34: TSctvarlabel
            Left = 64
            Top = 19
            Width = 357
            Height = 17
            Variable = adodspedidoDs_EnderecoVar
          end
          object Sctvarlabel35: TSctvarlabel
            Left = 502
            Top = 19
            Width = 40
            Height = 17
            Caption = 'Bairro:'
          end
          object Sctvarlabel36: TSctvarlabel
            Left = 544
            Top = 19
            Width = 189
            Height = 17
            Variable = adodspedidoNm_BairroVar
          end
          object Sctvarlabel37: TSctvarlabel
            Left = 2
            Top = 36
            Width = 86
            Height = 17
            Caption = 'Complemento:'
          end
          object Sctvarlabel38: TSctvarlabel
            Left = 89
            Top = 36
            Width = 230
            Height = 17
            Variable = adodspedidoDs_ComplementoVar
          end
          object Sctvarlabel39: TSctvarlabel
            Left = 324
            Top = 36
            Width = 33
            Height = 17
            Caption = 'CEP:'
          end
          object Sctvarlabel40: TSctvarlabel
            Left = 359
            Top = 36
            Width = 67
            Height = 17
            Variable = adodspedidoNr_CEPVar
            DataFormat.DisplayFormat = '##.###-###;0; '
          end
          object Sctvarlabel41: TSctvarlabel
            Left = 431
            Top = 36
            Width = 47
            Height = 17
            Caption = 'Cidade:'
          end
          object Sctvarlabel42: TSctvarlabel
            Left = 479
            Top = 36
            Width = 254
            Height = 17
            Variable = adodspedidoDp_CidadeVar
          end
          object Sctvarlabel43: TSctvarlabel
            Left = 2
            Top = 53
            Width = 61
            Height = 17
            Caption = 'Telefones:'
          end
          object Sctvarlabel44: TSctvarlabel
            Left = 64
            Top = 53
            Width = 98
            Height = 17
            Variable = adodspedidoNr_Telefone_1Var
            DataFormat.DisplayFormat = '(##) ####-#####;0; '
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel45: TSctvarlabel
            Left = 164
            Top = 53
            Width = 98
            Height = 17
            Variable = adodspedidoNr_Telefone_2Var
            DataFormat.DisplayFormat = '(##) ####-#####;0; '
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel46: TSctvarlabel
            Left = 265
            Top = 53
            Width = 98
            Height = 17
            Variable = adodspedidoNr_Telefone_3Var
            DataFormat.DisplayFormat = '(##) ####-#####;0; '
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel47: TSctvarlabel
            Left = 368
            Top = 53
            Width = 29
            Height = 17
            Caption = 'FAX:'
          end
          object Sctvarlabel48: TSctvarlabel
            Left = 399
            Top = 53
            Width = 98
            Height = 17
            Variable = adodspedidoNr_FAXVar
            DataFormat.DisplayFormat = '(##) ####-#####;0; '
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel49: TSctvarlabel
            Left = 2
            Top = 70
            Width = 94
            Height = 17
            WrapText = True
            Stretch = True
            Caption = 'Observa'#231#245'es:'
          end
          object Sctvarlabel50: TSctvarlabel
            Left = 87
            Top = 70
            Width = 647
            Height = 17
            WrapText = True
            Stretch = True
            Variable = adodsorcamentomm_obsenderecoVar
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel52: TSctvarlabel
            Left = 422
            Top = 19
            Width = 22
            Height = 17
            Caption = 'N'#186':'
          end
          object Sctvarlabel75: TSctvarlabel
            Left = 445
            Top = 19
            Width = 55
            Height = 17
            Variable = adodsorcamentoDs_NumeroVar
          end
          object Sctvarlabel412: TSctvarlabel
            Left = 497
            Top = 53
            Width = 49
            Height = 17
            Caption = 'Celular:'
          end
          object Sctvarlabel413: TSctvarlabel
            Left = 543
            Top = 53
            Width = 98
            Height = 17
            Variable = adodsorcamentoNr_Celular_1Var
            DataFormat.DisplayFormat = '(##) #####-#####;0; '
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel414: TSctvarlabel
            Left = 645
            Top = 53
            Width = 98
            Height = 17
            Variable = adodsorcamentoNr_Celular_2Var
            DataFormat.DisplayFormat = '(##) #####-#####;0; '
            DataFormat.SuppressNulls = True
          end
        end
        object PgHdSubEntrega: TSctSubBand
          Left = 0
          Top = 367
          Width = 791
          Height = 86
          ParentColor = True
          BandName = 'PgHdSubEntrega'
          Updatelevel = PageHeaderBandlevel
          Visible = False
          Stretch = True
          BorderType = btSingle
          Band = PgHdOrcamento
          Order = 4
          Above = False
          object Sctvarlabel53: TSctvarlabel
            Left = 2
            Top = 18
            Width = 61
            Height = 17
            Caption = 'Endere'#231'o:'
          end
          object Sctvarlabel54: TSctvarlabel
            Left = 64
            Top = 18
            Width = 357
            Height = 17
            Variable = adodspedidoEnt_Ds_EnderecoVar
          end
          object Sctvarlabel55: TSctvarlabel
            Left = 502
            Top = 18
            Width = 40
            Height = 17
            Caption = 'Bairro:'
          end
          object Sctvarlabel56: TSctvarlabel
            Left = 544
            Top = 18
            Width = 189
            Height = 17
            Variable = adodspedidoEnt_Nm_BairroVar
          end
          object Sctvarlabel57: TSctvarlabel
            Left = 2
            Top = 34
            Width = 86
            Height = 17
            Caption = 'Complemento:'
          end
          object Sctvarlabel58: TSctvarlabel
            Left = 89
            Top = 34
            Width = 230
            Height = 17
            Variable = adodspedidoEnt_Ds_ComplementoVar
          end
          object Sctvarlabel59: TSctvarlabel
            Left = 324
            Top = 34
            Width = 33
            Height = 17
            Caption = 'CEP:'
          end
          object Sctvarlabel60: TSctvarlabel
            Left = 359
            Top = 34
            Width = 67
            Height = 17
            Variable = adodspedidoEnt_Nr_CEPVar
            DataFormat.DisplayFormat = '##.###-###;0; '
          end
          object Sctvarlabel61: TSctvarlabel
            Left = 431
            Top = 34
            Width = 47
            Height = 17
            Caption = 'Cidade:'
          end
          object Sctvarlabel62: TSctvarlabel
            Left = 480
            Top = 34
            Width = 254
            Height = 17
            Variable = adodspedidoEnt_Dp_CidadeVar
          end
          object Sctvarlabel63: TSctvarlabel
            Left = 2
            Top = 51
            Width = 61
            Height = 17
            Caption = 'Telefones:'
          end
          object Sctvarlabel64: TSctvarlabel
            Left = 64
            Top = 51
            Width = 98
            Height = 17
            Variable = adodspedidoEnt_Nr_Telefone_1Var
            DataFormat.DisplayFormat = '(##) ####-#####;0; '
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel65: TSctvarlabel
            Left = 164
            Top = 51
            Width = 98
            Height = 17
            Variable = adodspedidoEnt_Nr_Telefone_2Var
            DataFormat.DisplayFormat = '(##) ####-#####;0; '
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel66: TSctvarlabel
            Left = 265
            Top = 51
            Width = 98
            Height = 17
            Variable = adodspedidoEnt_Nr_Telefone_3Var
            DataFormat.DisplayFormat = '(##) ####-#####;0; '
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel67: TSctvarlabel
            Left = 368
            Top = 51
            Width = 29
            Height = 17
            Caption = 'FAX:'
          end
          object Sctvarlabel68: TSctvarlabel
            Left = 399
            Top = 51
            Width = 98
            Height = 17
            Variable = adodspedidoEnt_Nr_FAXVar
            DataFormat.DisplayFormat = '(##) ####-#####;0; '
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel69: TSctvarlabel
            Left = 2
            Top = 68
            Width = 94
            Height = 17
            WrapText = True
            Stretch = True
            Caption = 'Observa'#231#245'es:'
          end
          object Sctvarlabel70: TSctvarlabel
            Left = 87
            Top = 68
            Width = 647
            Height = 17
            WrapText = True
            Stretch = True
            Variable = adodsorcamentoent_mm_observacaoVar
            DataFormat.SuppressNulls = True
          end
          object SctVarDp_Endereco: TSctvarlabel
            Left = 2
            Top = 1
            Width = 177
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Endere'#231'o de Entrega:'
          end
          object Sctvarlabel76: TSctvarlabel
            Left = 422
            Top = 19
            Width = 22
            Height = 17
            Caption = 'N'#186':'
          end
          object Sctvarlabel77: TSctvarlabel
            Left = 445
            Top = 19
            Width = 55
            Height = 17
            Variable = adodsorcamentoEnt_Ds_NumeroVar
          end
          object Sctvarlabel16: TSctvarlabel
            Left = 497
            Top = 51
            Width = 49
            Height = 17
            Caption = 'Celular:'
          end
          object Sctvarlabel19: TSctvarlabel
            Left = 543
            Top = 51
            Width = 98
            Height = 17
            Variable = adodsorcamentoEnt_Nr_Celular_1Var
            DataFormat.DisplayFormat = '(##) #####-#####;0; '
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel29: TSctvarlabel
            Left = 645
            Top = 51
            Width = 98
            Height = 17
            Variable = adodsorcamentoEnt_Nr_Celular_2Var
            DataFormat.DisplayFormat = '(##) #####-#####;0; '
            DataFormat.SuppressNulls = True
          end
        end
        object PgHdSubVencto: TSctSubBand
          Tag = 1
          Left = 0
          Top = 212
          Width = 791
          Height = 37
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = True
          ParentFont = False
          BandName = 'PgHdSubVencto'
          Updatelevel = PageHeaderBandlevel
          Stretch = True
          BorderType = btSingle
          OnBeforePrint = PgHdSubVenctoBeforePrint
          Band = PgHdOrcamento
          Order = 2
          Above = False
          object LblVl_Vencto_1: TSctvarlabel
            Left = 2
            Top = 1
            Width = 108
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laCenter
            BorderMargin = 1
            Caption = 'Vencimento/Prazo'
          end
          object SctDt_Vencto_1: TSctvarlabel
            Left = 2
            Top = 18
            Width = 108
            Height = 17
            AlignHorizontal = laCenter
            BorderMargin = 1
            WrapText = True
            Stretch = True
            DataFormat.SuppressNulls = True
            Caption = '99/99/9999'
          end
          object SctVl_Vencto_1: TSctvarlabel
            Left = 93
            Top = 18
            Width = 80
            Height = 17
            AlignHorizontal = laRight
            BorderMargin = 1
            WrapText = True
            Stretch = True
            DataFormat.SuppressNulls = True
            Caption = '0,00'
          end
          object SctDt_Vencto_2: TSctvarlabel
            Left = 245
            Top = 18
            Width = 111
            Height = 17
            AlignHorizontal = laCenter
            BorderMargin = 1
            WrapText = True
            Stretch = True
            DataFormat.SuppressNulls = True
            Caption = '99/99/9999'
          end
          object SctVl_Vencto_2: TSctvarlabel
            Left = 339
            Top = 18
            Width = 80
            Height = 17
            AlignHorizontal = laRight
            BorderMargin = 1
            WrapText = True
            Stretch = True
            DataFormat.SuppressNulls = True
            Caption = '0,00'
          end
          object SctDt_Vencto_3: TSctvarlabel
            Left = 492
            Top = 18
            Width = 114
            Height = 17
            AlignHorizontal = laCenter
            BorderMargin = 1
            WrapText = True
            Stretch = True
            DataFormat.SuppressNulls = True
            Caption = '99/99/9999'
          end
          object SctVl_Vencto_3: TSctvarlabel
            Left = 589
            Top = 18
            Width = 80
            Height = 17
            AlignHorizontal = laRight
            BorderMargin = 1
            WrapText = True
            Stretch = True
            DataFormat.SuppressNulls = True
            Caption = '0,00'
          end
          object LblVl_Valor_1: TSctvarlabel
            Left = 93
            Top = 1
            Width = 80
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            BorderMargin = 1
            Caption = 'Valor'
          end
          object SctVl_Juros_1: TSctvarlabel
            Left = 176
            Top = 18
            Width = 66
            Height = 17
            AlignHorizontal = laRight
            BorderMargin = 1
            WrapText = True
            Stretch = True
            DataFormat.SuppressNulls = True
            Caption = '0,00'
          end
          object LblVl_Juros_1: TSctvarlabel
            Left = 176
            Top = 1
            Width = 66
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            BorderMargin = 1
            DataFormat.SuppressNulls = True
            Caption = 'Juros (Dia)'
          end
          object LblVl_Vencto_2: TSctvarlabel
            Left = 245
            Top = 1
            Width = 111
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laCenter
            BorderMargin = 1
            Caption = 'Vencimento/Prazo'
          end
          object LblVl_Valor_2: TSctvarlabel
            Left = 339
            Top = 1
            Width = 80
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            BorderMargin = 1
            Caption = 'Valor'
          end
          object LblVl_Juros_2: TSctvarlabel
            Left = 422
            Top = 1
            Width = 66
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            BorderMargin = 1
            DataFormat.SuppressNulls = True
            Caption = 'Juros (Dia)'
          end
          object SctVl_Juros_2: TSctvarlabel
            Left = 422
            Top = 18
            Width = 66
            Height = 17
            AlignHorizontal = laRight
            BorderMargin = 1
            WrapText = True
            Stretch = True
            DataFormat.SuppressNulls = True
            Caption = '0,00'
          end
          object LblVl_Vencto_3: TSctvarlabel
            Left = 492
            Top = 1
            Width = 114
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laCenter
            BorderMargin = 1
            Caption = 'Vencimento/Prazo'
          end
          object LblVl_Juros_3: TSctvarlabel
            Left = 669
            Top = 1
            Width = 66
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            BorderMargin = 1
            DataFormat.SuppressNulls = True
            Caption = 'Juros (Dia)'
          end
          object SctVl_Juros_3: TSctvarlabel
            Left = 669
            Top = 18
            Width = 66
            Height = 17
            AlignHorizontal = laRight
            BorderMargin = 1
            WrapText = True
            Stretch = True
            DataFormat.SuppressNulls = True
            Caption = '0,00'
          end
          object LblVl_Valor_3: TSctvarlabel
            Left = 589
            Top = 1
            Width = 80
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            BorderMargin = 1
            Caption = 'Valor'
          end
          object SctVerticalDivider1: TSctVerticalDivider
            Left = 243
            Top = 1
            Width = 2
            Height = 36
            DividerColor = 12171705
          end
          object SctVerticalDivider2: TSctVerticalDivider
            Left = 491
            Top = 1
            Width = 2
            Height = 36
            DividerColor = 12171705
          end
        end
        object OverBdLogo: TSctOverlayBand
          Left = 0
          Top = 2312
          Width = 791
          Height = 70
          ParentColor = True
          BandName = 'OverBdLogo'
          Updatelevel = OverlayBandLevel
          object SctImgLogo: TSctImageLabel
            Left = 235
            Top = 2
            Width = 261
            Height = 66
            Center = True
          end
        end
        object ReportFooterBandSub: TSctSubBand
          Left = 0
          Top = 2222
          Width = 791
          Height = 20
          ParentColor = True
          BandName = 'ReportFooterBandSub'
          OnPrintWhen = ReportFooterBandSubPrintWhen
          Updatelevel = ReportFooterBandlevel
          Stretch = True
          Band = RepFtBd
          Order = 3
          Above = False
          object Sctvarlabel1: TSctvarlabel
            Left = 5
            Top = 1
            Width = 729
            Height = 17
            WrapText = True
            Stretch = True
            Variable = adodsfilialMm_RodapeVar
            DataFormat.SuppressNulls = True
          end
        end
        object PgHdFilial: TSctSubBand
          Left = 0
          Top = -31
          Width = 791
          Height = 39
          ParentColor = True
          BandName = 'PgHdFilial'
          Updatelevel = PageHeaderBandlevel
          Stretch = True
          BorderType = btSingle
          OnAfterPrint = PgHdFilialAfterPrint
          Band = PgHdOrcamento
          Order = 1
          Above = True
          object Sctvarlabel143: TSctvarlabel
            Left = -1
            Top = 2
            Width = 419
            Height = 24
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            WrapText = True
            Stretch = True
            Variable = adodsfilialNm_FilialVar
          end
          object SctEndereco: TSctvarlabel
            Left = 425
            Top = 2
            Width = 310
            Height = 35
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            WrapText = True
            Stretch = True
            Caption = '<<< Endere'#231'o >>>'
          end
        end
        object ReportFooterBandSub1: TSctSubBand
          Left = 0
          Top = 2257
          Width = 791
          Height = 40
          ParentColor = True
          BandName = 'ReportFooterBandSub1'
          Updatelevel = ReportFooterBandlevel
          Visible = False
          Band = RepFtBd
          Order = 4
          Above = False
          object SctMg_Coleta: TSctvarlabel
            Left = 384
            Top = 3
            Width = 57
            Height = 17
            AlignHorizontal = laRight
            Variable = adodspedidoMg_ColetaVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.SuppressNulls = True
            DataFormat.Digits = 2
          end
          object Sctvarlabel86: TSctvarlabel
            Left = 444
            Top = 3
            Width = 70
            Height = 17
            AlignHorizontal = laRight
            Variable = adodspedidoVl_ColetaVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
          end
          object Sctvarlabel87: TSctvarlabel
            Left = 518
            Top = 3
            Width = 70
            Height = 17
            AlignHorizontal = laRight
            Variable = adodspedidoPs_ColetaVar
            DataFormat.DisplayFormat = '#,##0.0##'
            DataFormat.Digits = 3
          end
          object Sctvarlabel88: TSctvarlabel
            Left = 592
            Top = 3
            Width = 70
            Height = 17
            AlignHorizontal = laRight
            Variable = adodspedidoVl_Coleta_FreteVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
          end
          object Sctvarlabel89: TSctvarlabel
            Left = 665
            Top = 3
            Width = 70
            Height = 17
            AlignHorizontal = laRight
            Variable = adodspedidoVl_Coleta_TotalVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
          end
          object Sctvarlabel78: TSctvarlabel
            Left = 282
            Top = 3
            Width = 101
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Coleta:'
          end
          object Sctvarlabel82: TSctvarlabel
            Left = 120
            Top = 3
            Width = 70
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Peso'
          end
          object Sctvarlabel92: TSctvarlabel
            Left = 120
            Top = 21
            Width = 70
            Height = 17
            AlignHorizontal = laRight
            Variable = adodspedidoPs_PedidoVar
            DataFormat.DisplayFormat = '#,##0.0##'
            DataFormat.Digits = 3
          end
        end
        object PgHdFilial_Img: TSctSubBand
          Left = 0
          Top = -110
          Width = 791
          Height = 64
          ParentColor = True
          BandName = 'PgHdFilial_Img'
          Updatelevel = PageHeaderBandlevel
          Visible = False
          Stretch = True
          OnAfterPrint = PgHdFilial_ImgAfterPrint
          Band = PgHdOrcamento
          Above = True
          object SctImgCabecalho: TSctImageLabel
            Left = 0
            Top = -2
            Width = 742
            Height = 66
            Center = True
          end
        end
        object PgHdSubTransp: TSctSubBand
          Left = 0
          Top = 468
          Width = 791
          Height = 70
          ParentColor = True
          BandName = 'PgHdSubTransp'
          Updatelevel = PageHeaderBandlevel
          Visible = False
          BorderType = btSingle
          Band = PgHdOrcamento
          Order = 5
          Above = False
          object Sctvarlabel313: TSctvarlabel
            Left = 2
            Top = 2
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
          object Sctvarlabel318: TSctvarlabel
            Left = 94
            Top = 2
            Width = 466
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Variable = adodstransportadornm_transportadorVar
          end
          object Sctvarlabel319: TSctvarlabel
            Left = 2
            Top = 18
            Width = 61
            Height = 17
            Caption = 'Endere'#231'o:'
          end
          object Sctvarlabel320: TSctvarlabel
            Left = 64
            Top = 18
            Width = 381
            Height = 17
            Variable = adodstransportadords_enderecoVar
          end
          object Sctvarlabel321: TSctvarlabel
            Left = 447
            Top = 18
            Width = 40
            Height = 17
            Caption = 'Bairro:'
          end
          object Sctvarlabel322: TSctvarlabel
            Left = 489
            Top = 18
            Width = 245
            Height = 17
            Variable = adodstransportadornm_bairroVar
          end
          object Sctvarlabel323: TSctvarlabel
            Left = 2
            Top = 35
            Width = 86
            Height = 17
            Caption = 'Complemento:'
          end
          object Sctvarlabel324: TSctvarlabel
            Left = 89
            Top = 35
            Width = 230
            Height = 17
            Variable = adodstransportadords_complementoVar
          end
          object Sctvarlabel325: TSctvarlabel
            Left = 324
            Top = 35
            Width = 33
            Height = 17
            Caption = 'CEP:'
          end
          object Sctvarlabel326: TSctvarlabel
            Left = 359
            Top = 35
            Width = 67
            Height = 17
            Variable = adodstransportadornr_cepVar
            DataFormat.DisplayFormat = '##.###-###;0; '
          end
          object Sctvarlabel327: TSctvarlabel
            Left = 431
            Top = 35
            Width = 47
            Height = 17
            Caption = 'Cidade:'
          end
          object Sctvarlabel328: TSctvarlabel
            Left = 480
            Top = 35
            Width = 254
            Height = 17
            Variable = adodstransportadordp_cidadeVar
          end
          object Sctvarlabel329: TSctvarlabel
            Left = 2
            Top = 52
            Width = 61
            Height = 17
            Caption = 'Telefone:'
          end
          object Sctvarlabel330: TSctvarlabel
            Left = 66
            Top = 52
            Width = 98
            Height = 17
            Variable = adodstransportadornr_telefoneVar
            DataFormat.DisplayFormat = '(##) ####-#####;0; '
            DataFormat.SuppressNulls = True
          end
        end
        object RepFtBdSub_1: TSctSubBand
          Left = 0
          Top = 2053
          Width = 791
          Height = 38
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = True
          ParentFont = False
          BandName = 'RepFtBdSub_1'
          Updatelevel = ReportFooterBandlevel
          BorderType = btSingle
          Band = RepFtBd
          Above = False
          object SctMargem: TSctvarlabel
            Left = 138
            Top = 1
            Width = 57
            Height = 17
            AlignHorizontal = laRight
            DataFormat.SuppressNulls = True
            Caption = 'Margem'
          end
          object Sctvarlabel81: TSctvarlabel
            Left = 198
            Top = 1
            Width = 70
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Liquido'
          end
          object Sctvarlabel83: TSctvarlabel
            Left = 342
            Top = 1
            Width = 70
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Frete'
          end
          object Sctvarlabel84: TSctvarlabel
            Left = 631
            Top = 1
            Width = 100
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Total'
          end
          object SctMg_Pedido: TSctvarlabel
            Left = 138
            Top = 19
            Width = 57
            Height = 17
            AlignHorizontal = laRight
            Variable = adodspedidoMg_PedidoVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.SuppressNulls = True
            DataFormat.Digits = 2
          end
          object Sctvarlabel91: TSctvarlabel
            Left = 198
            Top = 19
            Width = 70
            Height = 17
            AlignHorizontal = laRight
            Variable = adodspedidoVl_PedidoVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
          end
          object Sctvarlabel93: TSctvarlabel
            Left = 342
            Top = 19
            Width = 70
            Height = 17
            AlignHorizontal = laRight
            Variable = adodspedidoVl_Pedido_FreteVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
          end
          object SctVarTotal: TSctvarlabel
            Left = 631
            Top = 19
            Width = 100
            Height = 17
            AlignHorizontal = laRight
            DataFormat.Digits = 2
            Caption = '0'
          end
          object SctTxtPedido: TSctvarlabel
            Left = 64
            Top = 19
            Width = 101
            Height = 17
            AlignHorizontal = laRight
            Caption = ' '
          end
          object SctTxtDesconto: TSctvarlabel
            Left = 417
            Top = 1
            Width = 90
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Desconto'
          end
          object SctVarDesconto: TSctvarlabel
            Left = 417
            Top = 19
            Width = 90
            Height = 17
            AlignHorizontal = laRight
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
            Caption = '0'
          end
          object SctTxtCusto: TSctvarlabel
            Left = 508
            Top = 1
            Width = 122
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Acr'#233'scimo'
          end
          object SctVarCusto: TSctvarlabel
            Left = 508
            Top = 19
            Width = 122
            Height = 17
            AlignHorizontal = laRight
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
            Caption = '0'
          end
          object Sctvarlabel418: TSctvarlabel
            Left = 269
            Top = 1
            Width = 70
            Height = 17
            AlignHorizontal = laRight
            Caption = 'ST'
          end
          object Sctvarlabel419: TSctvarlabel
            Left = 269
            Top = 19
            Width = 70
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsorcamentoVl_STBVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
          end
          object Sctvarlabel114: TSctvarlabel
            Left = 4
            Top = 1
            Width = 70
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Peso'
          end
          object Sctvarlabel115: TSctvarlabel
            Left = 4
            Top = 19
            Width = 70
            Height = 17
            AlignHorizontal = laRight
            Variable = adodspedidoPs_PedidoVar
            DataFormat.DisplayFormat = '#,##0.0##'
            DataFormat.Digits = 3
          end
        end
        object RepFtBdSub_2: TSctSubBand
          Left = 0
          Top = 2106
          Width = 791
          Height = 21
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = True
          ParentFont = False
          BandName = 'RepFtBdSub_2'
          Updatelevel = ReportFooterBandlevel
          Band = RepFtBd
          Order = 1
          Above = False
          object Sctvarlabel8: TSctvarlabel
            Left = 553
            Top = 3
            Width = 72
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Total Geral:'
          end
          object SctVarTotal_2: TSctvarlabel
            Left = 630
            Top = 3
            Width = 100
            Height = 17
            AlignHorizontal = laRight
            DataFormat.Digits = 2
            Caption = '0'
          end
          object SctLine23: TSctLine
            Left = 206
            Top = 1
            Width = 523
            Height = 6
            AlignVertical = laTop
          end
          object Sctvarlabel169: TSctvarlabel
            Left = 402
            Top = 3
            Width = 53
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Total IPI:'
          end
          object SctVarIPI_2: TSctvarlabel
            Left = 456
            Top = 3
            Width = 96
            Height = 17
            AlignHorizontal = laRight
            DataFormat.Digits = 2
            Caption = '0'
          end
          object Sctvarlabel195: TSctvarlabel
            Left = 222
            Top = 3
            Width = 76
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Total SEM IPI:'
          end
          object SctVarNoIPI: TSctvarlabel
            Left = 304
            Top = 3
            Width = 96
            Height = 17
            AlignHorizontal = laRight
            DataFormat.Digits = 2
            Caption = '0'
          end
        end
        object RepFtBdVendedor: TSctSubBand
          Left = 0
          Top = 2142
          Width = 791
          Height = 65
          ParentColor = True
          BandName = 'RepFtBdVendedor'
          Updatelevel = ReportFooterBandlevel
          Stretch = True
          BorderType = btSingle
          Band = RepFtBd
          Order = 2
          Above = False
          object SctVarVendedor: TSctvarlabel
            Left = 4
            Top = 45
            Width = 279
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laCenter
            WrapText = True
            Stretch = True
            Caption = 'Vendedor'
          end
          object SctLnVendedor: TSctLine
            Left = 4
            Top = 35
            Width = 279
            Height = 9
          end
          object SctVarContato: TSctvarlabel
            Left = 455
            Top = 46
            Width = 279
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laCenter
            Variable = adodsorcamentonm_contatoVar
          end
          object SctLnContato: TSctLine
            Left = 455
            Top = 35
            Width = 279
            Height = 9
          end
          object SctImgAssinatura: TSctImageLabel
            Left = 48
            Top = 2
            Width = 190
            Height = 90
            Center = True
          end
        end
        object BdItemVidro: TSctSubDataBand
          Left = 0
          Top = 1442
          Width = 791
          Height = 20
          ParentColor = True
          BandName = 'BdItemVidro'
          Updatelevel = DataLevel3
          Stretch = True
          Band = BdProjetos
          CloseDataSet = False
          DataRange = drAllRecords
          DataSource = DsItemVidro
          object Sctvarlabel104: TSctvarlabel
            Left = 0
            Top = 1
            Width = 176
            Height = 17
            WrapText = True
            Stretch = True
            Variable = adodsitemvidroDp_ProdutoVar
          end
          object SctVarVidroPeca: TSctvarlabel
            Left = 178
            Top = 1
            Width = 93
            Height = 17
            WrapText = True
            Stretch = True
            Variable = adodsitemvidroDp_PecaVar
          end
          object SctVarVidroAltura: TSctvarlabel
            Left = 341
            Top = 1
            Width = 48
            Height = 17
            AlignHorizontal = laRight
            WrapText = True
            Variable = adodsitemvidroNr_AlturaVar
          end
          object SctVarVidroAlturaFolga: TSctvarlabel
            Left = 390
            Top = 1
            Width = 34
            Height = 17
            AlignHorizontal = laRight
            WrapText = True
            Variable = adodsitemvidroNr_Altura_FolgaVar
          end
          object SctVarVidroLargura: TSctvarlabel
            Left = 251
            Top = 1
            Width = 66
            Height = 17
            AlignHorizontal = laRight
            WrapText = True
            Variable = adodsitemvidroNr_LarguraVar
          end
          object SctVarVidroLarguraFolga: TSctvarlabel
            Left = 318
            Top = 1
            Width = 34
            Height = 17
            AlignHorizontal = laRight
            WrapText = True
            Variable = adodsitemvidroNr_Largura_FolgaVar
          end
          object Sctvarlabel117: TSctvarlabel
            Left = 427
            Top = 1
            Width = 50
            Height = 17
            AlignHorizontal = laCenter
            WrapText = True
            Variable = adodsitemvidroSg_UnidadeVar1
          end
          object Sctvarlabel119: TSctvarlabel
            Left = 480
            Top = 1
            Width = 67
            Height = 17
            WrapText = True
            Variable = adodsitemvidroDs_ParteVar
          end
          object Sctvarlabel121: TSctvarlabel
            Left = 545
            Top = 1
            Width = 53
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            AlignHorizontal = laRight
            Variable = adodsitemvidroQt_ItemVar
          end
          object SctVarVidroVl_Total: TSctvarlabel
            Left = 672
            Top = 1
            Width = 66
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            AlignHorizontal = laRight
            Variable = adodsitemvidroVl_TotalVar
            DataFormat.DisplayFormat = '###,##0.00'
            DataFormat.Digits = 2
          end
          object SctVarVidroVl_Unitario: TSctvarlabel
            Left = 601
            Top = 1
            Width = 67
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            AlignHorizontal = laRight
            Variable = adodsitemvidroVl_UnitarioVar
            DataFormat.DisplayFormat = '###,##0.00'
            DataFormat.Digits = 2
          end
          object SctVerticalDivider48: TSctVerticalDivider
            Left = 670
            Top = 1
            Width = 2
            Height = 19
          end
          object SctVerticalDivider49: TSctVerticalDivider
            Left = 600
            Top = 1
            Width = 2
            Height = 19
          end
          object SctVerticalDivider50: TSctVerticalDivider
            Left = 530
            Top = 1
            Width = 2
            Height = 19
          end
          object SctVerticalDivider51: TSctVerticalDivider
            Left = 480
            Top = 1
            Width = 2
            Height = 19
          end
          object SctVerticalDivider52: TSctVerticalDivider
            Left = 425
            Top = 1
            Width = 2
            Height = 19
          end
          object SctVerticalDivider53: TSctVerticalDivider
            Left = 390
            Top = 1
            Width = 2
            Height = 19
          end
          object SctVerticalDivider54: TSctVerticalDivider
            Left = 355
            Top = 1
            Width = 2
            Height = 19
          end
          object SctVerticalDivider55: TSctVerticalDivider
            Left = 320
            Top = 1
            Width = 2
            Height = 19
          end
          object SctVerticalDivider56: TSctVerticalDivider
            Left = 270
            Top = 1
            Width = 2
            Height = 19
          end
          object SctVerticalDivider57: TSctVerticalDivider
            Left = 176
            Top = 1
            Width = 2
            Height = 19
          end
          object SctVerticalDivider59: TSctVerticalDivider
            Left = 740
            Top = 1
            Width = 2
            Height = 19
          end
          object SctVerticalDivider60: TSctVerticalDivider
            Left = 1
            Top = 1
            Width = 2
            Height = 19
          end
          object SctLnItem_3: TSctLine
            Left = 1
            Top = 0
            Width = 739
            Height = 3
            AlignVertical = laTop
          end
        end
        object BdItemFerragem: TSctSubDataBand
          Left = 0
          Top = 1564
          Width = 791
          Height = 19
          ParentColor = True
          BandName = 'BdItemFerragem'
          Updatelevel = DataLevel4
          Stretch = True
          Band = BdProjetos
          Order = 1
          CloseDataSet = False
          DataRange = drAllRecords
          DataSource = DsItemFerragem
          object SctVarFerragemProduto: TSctvarlabel
            Left = 1
            Top = 1
            Width = 329
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            WrapText = True
            Stretch = True
            Variable = adodsitemferragemDp_ProdutoVar
          end
          object SctVarCd_Fabricante: TSctvarlabel
            Left = 330
            Top = 1
            Width = 119
            Height = 17
            WrapText = True
            Variable = adodsitemferragemCd_FabricanteVar
          end
          object Sctvarlabel153: TSctvarlabel
            Left = 456
            Top = 1
            Width = 54
            Height = 17
            AlignHorizontal = laCenter
            WrapText = True
            Variable = adodsitemferragemSg_UnidadeVar1
          end
          object Sctvarlabel154: TSctvarlabel
            Left = 515
            Top = 1
            Width = 74
            Height = 17
            AlignHorizontal = laRight
            WrapText = True
            Variable = adodsitemferragemQt_ItemVar
            DataFormat.DisplayFormat = '###,###,##0.00##'
            DataFormat.Digits = 4
          end
          object SctVarFerragemVl_Unitario: TSctvarlabel
            Left = 593
            Top = 1
            Width = 69
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsitemferragemVl_UnitarioVar
            DataFormat.DisplayFormat = '###,##0.00'
            DataFormat.Digits = 2
          end
          object SctVarFerragemVl_Total: TSctvarlabel
            Left = 667
            Top = 0
            Width = 71
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsitemferragemVl_TotalVar
            DataFormat.DisplayFormat = '###,##0.00'
            DataFormat.Digits = 2
          end
          object SctLnItem_4: TSctLine
            Left = 1
            Top = 0
            Width = 739
            Height = 3
            AlignVertical = laTop
          end
        end
        object BdItemPerfil: TSctSubDataBand
          Left = 0
          Top = 1684
          Width = 791
          Height = 20
          ParentColor = True
          BandName = 'BdItemPerfil'
          Updatelevel = DataLevel5
          Stretch = True
          Band = BdProjetos
          Order = 2
          CloseDataSet = False
          DataRange = drAllRecords
          DataSource = DsItemPerfil
          object SctVarPerfilProduto: TSctvarlabel
            Left = 1
            Top = 1
            Width = 218
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            WrapText = True
            Stretch = True
            Variable = adodsitemperfilDp_ProdutoVar
          end
          object SctVarPerfilAltura: TSctvarlabel
            Left = 299
            Top = 1
            Width = 76
            Height = 17
            WrapText = True
            Variable = adodsitemperfilNr_AlturaVar
          end
          object SctVarPerfilLargura: TSctvarlabel
            Left = 219
            Top = 1
            Width = 76
            Height = 17
            WrapText = True
            Variable = adodsitemperfilNr_LarguraVar
          end
          object Sctvarlabel196: TSctvarlabel
            Left = 452
            Top = 1
            Width = 59
            Height = 17
            WrapText = True
            Variable = adodsitemperfilDp_UnidadeVar
          end
          object Sctvarlabel197: TSctvarlabel
            Left = 378
            Top = 1
            Width = 68
            Height = 17
            WrapText = True
            Variable = adodsitemperfilDs_ParteVar
          end
          object Sctvarlabel198: TSctvarlabel
            Left = 515
            Top = 1
            Width = 72
            Height = 17
            WrapText = True
            Variable = adodsitemperfilQt_ItemVar
            DataFormat.DisplayFormat = '###,###,##0.00##'
            DataFormat.Digits = 4
          end
          object SctVarPerfilVl_Unitario: TSctvarlabel
            Left = 593
            Top = 1
            Width = 69
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsitemperfilVl_UnitarioVar
            DataFormat.DisplayFormat = '###,##0.00'
            DataFormat.Digits = 2
          end
          object SctVarPerfilVl_Total: TSctvarlabel
            Left = 668
            Top = 0
            Width = 72
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsitemperfilVl_TotalVar
            DataFormat.DisplayFormat = '###,##0.00'
            DataFormat.Digits = 2
          end
          object SctLnItem_5: TSctLine
            Left = 1
            Top = 0
            Width = 739
            Height = 3
            AlignVertical = laTop
          end
        end
        object BdItemServico: TSctSubDataBand
          Left = 0
          Top = 1789
          Width = 791
          Height = 20
          ParentColor = True
          BandName = 'BdItemServico'
          Updatelevel = DataLevel6
          Stretch = True
          Band = BdProjetos
          Order = 3
          CloseDataSet = False
          DataRange = drAllRecords
          DataSource = DsItemServico
          object Sctvarlabel210: TSctvarlabel
            Left = 1
            Top = 1
            Width = 449
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            WrapText = True
            Stretch = True
            Variable = adodsitemservicoDp_ProdutoVar
          end
          object Sctvarlabel212: TSctvarlabel
            Left = 456
            Top = 1
            Width = 54
            Height = 17
            AlignHorizontal = laCenter
            WrapText = True
            Variable = adodsitemservicoSg_UnidadeVar1
          end
          object Sctvarlabel213: TSctvarlabel
            Left = 515
            Top = 1
            Width = 74
            Height = 17
            AlignHorizontal = laRight
            WrapText = True
            Variable = adodsitemservicoQt_ItemVar
            DataFormat.DisplayFormat = '###,###,##0.00##'
            DataFormat.Digits = 4
          end
          object SctVarServicoVl_Unitario: TSctvarlabel
            Left = 593
            Top = 1
            Width = 69
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsitemservicoVl_UnitarioVar
            DataFormat.DisplayFormat = '###,##0.00'
            DataFormat.Digits = 2
          end
          object SctVarServicoVl_Total: TSctvarlabel
            Left = 668
            Top = 0
            Width = 72
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsitemservicoVl_TotalVar
            DataFormat.DisplayFormat = '###,##0.00'
            DataFormat.Digits = 2
          end
          object SctLnItem_6: TSctLine
            Left = 1
            Top = 0
            Width = 739
            Height = 3
            AlignVertical = laTop
          end
        end
        object BdItemKitBox: TSctSubDataBand
          Left = 0
          Top = 1894
          Width = 791
          Height = 20
          ParentColor = True
          BandName = 'BdItemKitBox'
          Updatelevel = DataLevel7
          Stretch = True
          Band = BdProjetos
          Order = 4
          CloseDataSet = False
          DataRange = drAllRecords
          DataSource = DsItemKitBox
          object Sctvarlabel224: TSctvarlabel
            Left = 1
            Top = 1
            Width = 444
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            WrapText = True
            Stretch = True
            Variable = adodsitemkitboxDp_ProdutoVar
          end
          object Sctvarlabel225: TSctvarlabel
            Left = 455
            Top = 1
            Width = 54
            Height = 17
            AlignHorizontal = laCenter
            WrapText = True
            Variable = adodsitemkitboxSg_UnidadeVar1
          end
          object Sctvarlabel226: TSctvarlabel
            Left = 515
            Top = 1
            Width = 74
            Height = 17
            AlignHorizontal = laRight
            WrapText = True
            Variable = adodsitemkitboxQt_ItemVar
            DataFormat.DisplayFormat = '###,###,##0.00##'
            DataFormat.Digits = 4
          end
          object SctVarKitBoxVl_Unitario: TSctvarlabel
            Left = 593
            Top = 1
            Width = 69
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsitemkitboxVl_UnitarioVar
            DataFormat.DisplayFormat = '###,##0.00'
            DataFormat.Digits = 2
          end
          object SctVarKitBoxVl_Total: TSctvarlabel
            Left = 667
            Top = 0
            Width = 72
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsitemkitboxVl_TotalVar
            DataFormat.DisplayFormat = '###,##0.00'
            DataFormat.Digits = 2
          end
          object SctLnItem_7: TSctLine
            Left = 1
            Top = 0
            Width = 739
            Height = 3
            AlignVertical = laTop
          end
        end
        object BdItemVidroHeader: TSctDataHeadBand
          Left = 0
          Top = 1391
          Width = 791
          Height = 36
          Color = 16316664
          BandName = 'BdItemVidroHeader'
          Updatelevel = BdItemVidroHeaderLevel
          BorderType = btSingle
          Band = BdItemVidro
          object SctVarSystem: TSctvarlabel
            Left = 0
            Top = 2
            Width = 742
            Height = 19
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laCenter
            Caption = 'Vidros'
          end
          object Sctvarlabel32: TSctvarlabel
            Left = 1
            Top = 21
            Width = 174
            Height = 13
            Transparent = False
            AlignVertical = laCenterVert
            Caption = 'Produto'
          end
          object Sctvarlabel51: TSctvarlabel
            Left = 178
            Top = 21
            Width = 33
            Height = 13
            Transparent = False
            AlignVertical = laCenterVert
            Caption = 'Pe'#231'a'
          end
          object SctLblVidroAltura: TSctvarlabel
            Left = 349
            Top = 21
            Width = 42
            Height = 13
            Transparent = False
            AlignVertical = laCenterVert
            AlignHorizontal = laRight
            Caption = 'Altura'
          end
          object SctLblVidroAlturaFolga: TSctvarlabel
            Left = 320
            Top = 21
            Width = 34
            Height = 13
            Transparent = False
            AlignVertical = laCenterVert
            Caption = 'Folga'
          end
          object SctLblVidroLargura: TSctvarlabel
            Left = 270
            Top = 21
            Width = 47
            Height = 13
            Transparent = False
            AlignVertical = laCenterVert
            AlignHorizontal = laRight
            Caption = 'Largura'
          end
          object SctLblVidroLarguraFolga: TSctvarlabel
            Left = 390
            Top = 21
            Width = 34
            Height = 13
            Transparent = False
            AlignVertical = laCenterVert
            Caption = 'Folga'
          end
          object Sctvarlabel80: TSctvarlabel
            Left = 480
            Top = 21
            Width = 33
            Height = 13
            Transparent = False
            AlignVertical = laCenterVert
            Caption = 'Parte'
          end
          object Sctvarlabel85: TSctvarlabel
            Left = 427
            Top = 21
            Width = 50
            Height = 13
            Transparent = False
            AlignVertical = laCenterVert
            Caption = 'Unidade'
          end
          object Sctvarlabel6: TSctvarlabel
            Left = 530
            Top = 21
            Width = 68
            Height = 13
            Transparent = False
            AlignVertical = laCenterVert
            AlignHorizontal = laRight
            Caption = 'Quantidade'
          end
          object SctLblVidroVl_Unitario: TSctvarlabel
            Left = 601
            Top = 21
            Width = 67
            Height = 13
            Transparent = False
            AlignVertical = laCenterVert
            AlignHorizontal = laRight
            Caption = 'Unit'#225'rio'
          end
          object SctLblVidroVl_Total: TSctvarlabel
            Left = 673
            Top = 21
            Width = 67
            Height = 13
            Transparent = False
            AlignVertical = laCenterVert
            AlignHorizontal = laRight
            Caption = 'Total'
          end
          object SctVerticalDivider37: TSctVerticalDivider
            Left = 670
            Top = 1
            Width = 2
            Height = 35
          end
          object SctVerticalDivider38: TSctVerticalDivider
            Left = 600
            Top = 1
            Width = 2
            Height = 35
          end
          object SctVerticalDivider39: TSctVerticalDivider
            Left = 530
            Top = 1
            Width = 2
            Height = 35
          end
          object SctVerticalDivider40: TSctVerticalDivider
            Left = 480
            Top = 1
            Width = 2
            Height = 35
          end
          object SctVerticalDivider41: TSctVerticalDivider
            Left = 425
            Top = 1
            Width = 2
            Height = 35
          end
          object SctVerticalDivider44: TSctVerticalDivider
            Left = 320
            Top = 1
            Width = 2
            Height = 35
          end
          object SctVerticalDivider45: TSctVerticalDivider
            Left = 270
            Top = 1
            Width = 2
            Height = 35
          end
          object SctVerticalDivider46: TSctVerticalDivider
            Left = 176
            Top = 1
            Width = 2
            Height = 35
          end
          object SctLine14: TSctLine
            Left = 388
            Top = 20
            Width = 5
            Height = 17
            AlignHorizontal = laCenter
            LineType = ltVertical
          end
          object SctLine15: TSctLine
            Left = 353
            Top = 20
            Width = 5
            Height = 17
            AlignHorizontal = laCenter
            LineType = ltVertical
          end
        end
        object BdItemFerragemHeader: TSctDataHeadBand
          Left = 0
          Top = 1512
          Width = 791
          Height = 37
          Color = 16316664
          BandName = 'BdItemFerragemHeader'
          Updatelevel = BdItemFerragemHeaderLevel
          BorderType = btSingle
          Band = BdItemFerragem
          object Sctvarlabel127: TSctvarlabel
            Left = 0
            Top = 2
            Width = 742
            Height = 19
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laCenter
            Caption = 'Ferragens'
          end
          object SctLblCd_Fabricante: TSctvarlabel
            Left = 330
            Top = 21
            Width = 123
            Height = 13
            Transparent = False
            AlignVertical = laCenterVert
            Caption = 'C'#243'digo do Fabricante'
          end
          object Sctvarlabel133: TSctvarlabel
            Left = 1
            Top = 21
            Width = 165
            Height = 13
            Transparent = False
            AlignVertical = laCenterVert
            Caption = 'Produto'
          end
          object Sctvarlabel134: TSctvarlabel
            Left = 456
            Top = 21
            Width = 54
            Height = 13
            Transparent = False
            AlignVertical = laCenterVert
            AlignHorizontal = laCenter
            Caption = 'Unidade'
          end
          object Sctvarlabel142: TSctvarlabel
            Left = 515
            Top = 21
            Width = 71
            Height = 13
            Transparent = False
            AlignVertical = laCenterVert
            AlignHorizontal = laRight
            Caption = 'Quantidade'
          end
          object SctLblFerragemVl_Unitario: TSctvarlabel
            Left = 593
            Top = 21
            Width = 69
            Height = 13
            Transparent = False
            AlignVertical = laCenterVert
            AlignHorizontal = laRight
            Caption = 'Unit'#225'rio'
          end
          object SctLblFerragemVl_Total: TSctvarlabel
            Left = 668
            Top = 21
            Width = 72
            Height = 13
            Transparent = False
            AlignVertical = laCenterVert
            AlignHorizontal = laRight
            Caption = 'Total'
          end
        end
        object BdItemPerfilHeader: TSctDataHeadBand
          Left = 0
          Top = 1633
          Width = 791
          Height = 36
          Color = 16316664
          BandName = 'BdItemPerfilHeader'
          Updatelevel = BdItemPerfilHeaderLevel
          Visible = False
          BorderType = btSingle
          Band = BdItemPerfil
          object Sctvarlabel159: TSctvarlabel
            Left = 0
            Top = 2
            Width = 742
            Height = 19
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laCenter
            Caption = 'Perfis'
          end
          object Sctvarlabel161: TSctvarlabel
            Left = 1
            Top = 21
            Width = 126
            Height = 13
            Transparent = False
            AlignVertical = laCenterVert
            Caption = 'Produto'
          end
          object Sctvarlabel162: TSctvarlabel
            Left = 515
            Top = 21
            Width = 71
            Height = 13
            Transparent = False
            AlignVertical = laCenterVert
            Caption = 'Quantidade'
          end
          object SctLblPerfilAltura: TSctvarlabel
            Left = 299
            Top = 21
            Width = 37
            Height = 13
            Transparent = False
            AlignVertical = laCenterVert
            Caption = 'Altura'
          end
          object SctLblPerfilLargura: TSctvarlabel
            Left = 219
            Top = 21
            Width = 52
            Height = 13
            Transparent = False
            AlignVertical = laCenterVert
            Caption = 'Largura'
          end
          object Sctvarlabel165: TSctvarlabel
            Left = 452
            Top = 21
            Width = 51
            Height = 13
            Transparent = False
            AlignVertical = laCenterVert
            Caption = 'Unidade'
          end
          object Sctvarlabel166: TSctvarlabel
            Left = 378
            Top = 21
            Width = 35
            Height = 13
            Transparent = False
            AlignVertical = laCenterVert
            Caption = 'Parte'
          end
          object SctLblPerfilVl_Unitario: TSctvarlabel
            Left = 593
            Top = 21
            Width = 69
            Height = 13
            Transparent = False
            AlignVertical = laCenterVert
            AlignHorizontal = laRight
            Caption = 'Unit'#225'rio'
          end
          object SctLblPerfilVl_Total: TSctvarlabel
            Left = 668
            Top = 21
            Width = 72
            Height = 13
            Transparent = False
            AlignVertical = laCenterVert
            AlignHorizontal = laRight
            Caption = 'Total'
          end
        end
        object BdItemServicoHeader: TSctDataHeadBand
          Left = 0
          Top = 1754
          Width = 791
          Height = 20
          Color = 15921906
          BandName = 'BdItemServicoHeader'
          Updatelevel = BdItemServicoHeaderLevel
          Visible = False
          BorderType = btSingle
          Band = BdItemServico
          object Sctvarlabel202: TSctvarlabel
            Left = 0
            Top = 1
            Width = 742
            Height = 19
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laCenter
            Caption = 'Servi'#231'os'
          end
          object Sctvarlabel205: TSctvarlabel
            Left = 1
            Top = 5
            Width = 169
            Height = 13
            Transparent = False
            AlignVertical = laCenterVert
            Caption = 'Servi'#231'o'
          end
          object Sctvarlabel206: TSctvarlabel
            Left = 456
            Top = 5
            Width = 54
            Height = 13
            Transparent = False
            AlignVertical = laCenterVert
            AlignHorizontal = laCenter
            Caption = 'Unidade'
          end
          object Sctvarlabel207: TSctvarlabel
            Left = 515
            Top = 5
            Width = 71
            Height = 13
            Transparent = False
            AlignVertical = laCenterVert
            AlignHorizontal = laRight
            Caption = 'Quantidade'
          end
          object SctLblServicoVl_Unitario: TSctvarlabel
            Left = 593
            Top = 5
            Width = 69
            Height = 13
            Transparent = False
            AlignVertical = laCenterVert
            AlignHorizontal = laRight
            Caption = 'Unit'#225'rio'
          end
          object SctLblServicoVl_Total: TSctvarlabel
            Left = 668
            Top = 5
            Width = 72
            Height = 13
            Transparent = False
            AlignVertical = laCenterVert
            AlignHorizontal = laRight
            Caption = 'Total'
          end
        end
        object BdItemKitBoxHeader: TSctDataHeadBand
          Left = 0
          Top = 1859
          Width = 791
          Height = 20
          Color = 15921906
          BandName = 'BdItemKitBoxHeader'
          Updatelevel = BdItemKitBoxHeaderLevel
          Visible = False
          Stretch = True
          BorderType = btSingle
          Band = BdItemKitBox
          object Sctvarlabel216: TSctvarlabel
            Left = 0
            Top = 1
            Width = 742
            Height = 19
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laCenter
            Caption = 'Kit Box'
          end
          object Sctvarlabel218: TSctvarlabel
            Left = 1
            Top = 6
            Width = 167
            Height = 13
            Transparent = False
            AlignVertical = laCenterVert
            Caption = 'Produto'
          end
          object Sctvarlabel219: TSctvarlabel
            Left = 455
            Top = 6
            Width = 54
            Height = 13
            Transparent = False
            AlignVertical = laCenterVert
            AlignHorizontal = laCenter
            Caption = 'Unidade'
          end
          object Sctvarlabel220: TSctvarlabel
            Left = 515
            Top = 6
            Width = 71
            Height = 13
            Transparent = False
            AlignVertical = laCenterVert
            AlignHorizontal = laRight
            Caption = 'Quantidade'
          end
          object SctLblKitBoxVl_Unitario: TSctvarlabel
            Left = 593
            Top = 6
            Width = 69
            Height = 13
            Transparent = False
            AlignVertical = laCenterVert
            AlignHorizontal = laRight
            Caption = 'Unit'#225'rio'
          end
          object SctLblKitBoxVl_Total: TSctvarlabel
            Left = 668
            Top = 6
            Width = 72
            Height = 13
            Transparent = False
            AlignVertical = laCenterVert
            AlignHorizontal = laRight
            Caption = 'Total'
          end
        end
        object BdItemVidroFooter: TSctDataFootBand
          Left = 0
          Top = 1477
          Width = 791
          Height = 20
          ParentColor = True
          BandName = 'BdItemVidroFooter'
          Updatelevel = BdItemVidroFooterLevel
          Visible = False
          Band = BdItemVidro
          object SctVarTotVM_1: TSctvarlabel
            Left = 525
            Top = 3
            Width = 115
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Total de Vidros:'
          end
          object SctLine1: TSctLine
            Left = 525
            Top = 1
            Width = 220
            Height = 6
            AlignVertical = laTop
          end
          object SctTotalvarLabel1: TSctTotalvarLabel
            Left = 640
            Top = 3
            Width = 100
            Height = 17
            TotalVariable = TotalOfVl_TotalVidros
            DataFormat.DisplayFormat = '###,##0.00'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object BdItemFerragemFooter: TSctDataFootBand
          Left = 0
          Top = 1598
          Width = 791
          Height = 20
          ParentColor = True
          BandName = 'BdItemFerragemFooter'
          Updatelevel = BdItemFerragemFooterLevel
          Visible = False
          Band = BdItemFerragem
          object Sctvarlabel158: TSctvarlabel
            Left = 525
            Top = 3
            Width = 115
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Total de Ferragens:'
          end
          object SctLine8: TSctLine
            Left = 525
            Top = 1
            Width = 220
            Height = 6
            AlignVertical = laTop
          end
          object SctTotalvarLabel2: TSctTotalvarLabel
            Left = 640
            Top = 3
            Width = 100
            Height = 17
            TotalVariable = TotalOfVl_TotalFerragens
            DataFormat.DisplayFormat = '###,##0.00'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object BdItemPerfilFooter: TSctDataFootBand
          Left = 0
          Top = 1719
          Width = 791
          Height = 20
          ParentColor = True
          BandName = 'BdItemPerfilFooter'
          Updatelevel = BdItemPerfilFooterLevel
          Band = BdItemPerfil
          object Sctvarlabel201: TSctvarlabel
            Left = 525
            Top = 3
            Width = 115
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Total de Perfis:'
          end
          object SctLine9: TSctLine
            Left = 525
            Top = 1
            Width = 220
            Height = 6
            AlignVertical = laTop
          end
          object SctTotalvarLabel3: TSctTotalvarLabel
            Left = 640
            Top = 3
            Width = 100
            Height = 17
            TotalVariable = TotalOfVl_TotalPerfis
            DataFormat.DisplayFormat = '###,##0.00'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object BdItemServicoFooter: TSctDataFootBand
          Left = 0
          Top = 1824
          Width = 791
          Height = 20
          ParentColor = True
          BandName = 'BdItemServicoFooter'
          Updatelevel = BdItemServicoFooterLevel
          Band = BdItemServico
          object Sctvarlabel211: TSctvarlabel
            Left = 525
            Top = 3
            Width = 115
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Total de Servi'#231'os:'
          end
          object SctLine10: TSctLine
            Left = 525
            Top = 1
            Width = 220
            Height = 6
            AlignVertical = laTop
          end
          object SctTotalvarLabel4: TSctTotalvarLabel
            Left = 640
            Top = 3
            Width = 100
            Height = 17
            TotalVariable = TotalOfVl_TotalServicos
            DataFormat.DisplayFormat = '###,##0.00'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object BdItemKitBoxFooter: TSctDataFootBand
          Left = 0
          Top = 1929
          Width = 791
          Height = 20
          ParentColor = True
          BandName = 'BdItemKitBoxFooter'
          Updatelevel = BdItemKitBoxFooterLevel
          Band = BdItemKitBox
          object Sctvarlabel229: TSctvarlabel
            Left = 525
            Top = 3
            Width = 115
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Total de Kit Box:'
          end
          object SctLine11: TSctLine
            Left = 525
            Top = 1
            Width = 220
            Height = 6
            AlignVertical = laTop
          end
          object SctTotalvarLabel5: TSctTotalvarLabel
            Left = 640
            Top = 3
            Width = 100
            Height = 17
            TotalVariable = TotalOfVl_TotalKitBox
            DataFormat.DisplayFormat = '###,##0.00'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object BdProjetos: TSctSubDataBand
          Left = 0
          Top = 1376
          Width = 791
          Height = 0
          ParentColor = True
          BandName = 'BdProjetos'
          Updatelevel = DataLevel9
          Band = Group1Footer
          CloseDataSet = False
          DataRange = drAllRecords
          DataSource = DsOrcamentoProjeto
        end
        object Group1Header: TSctBand
          Left = 0
          Top = 640
          Width = 791
          Height = 0
          ParentColor = True
          BandName = 'GroupOrcamentoProjeto Header'
          Updatelevel = Group1HeaderLevel
        end
        object Group1Footer: TSctBand
          Left = 0
          Top = 1081
          Width = 791
          Height = 0
          ParentColor = True
          BandName = 'GroupOrcamentoProjeto Footer'
          Updatelevel = Group1FooterLevel
        end
        object PgHdItens: TSctSubBand
          Left = 0
          Top = 605
          Width = 791
          Height = 20
          Color = 15987699
          BandName = 'PgHdItens'
          Updatelevel = PageHeaderBandlevel
          BorderType = btSingle
          Band = PgHdOrcamento
          Order = 7
          Above = False
          object Sctvarlabel232: TSctvarlabel
            Left = 1
            Top = 2
            Width = 65
            Height = 17
            BorderMargin = 1
            WrapText = True
            Stretch = True
            Caption = 'Produto'
          end
          object Sctvarlabel233: TSctvarlabel
            Left = 609
            Top = 2
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            BorderMargin = 1
            WrapText = True
            Stretch = True
            DataFormat.SuppressNulls = True
            Caption = 'Total'
          end
          object Sctvarlabel234: TSctvarlabel
            Left = 538
            Top = 2
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            BorderMargin = 1
            WrapText = True
            Stretch = True
            DataFormat.SuppressNulls = True
            Caption = 'Unit'#225'rio'
          end
          object Sctvarlabel235: TSctvarlabel
            Left = 456
            Top = 2
            Width = 78
            Height = 17
            AlignHorizontal = laRight
            BorderMargin = 1
            WrapText = True
            Stretch = True
            DataFormat.SuppressNulls = True
            Caption = 'Quantidade'
          end
          object Sctvarlabel236: TSctvarlabel
            Left = 413
            Top = 2
            Width = 55
            Height = 17
            AlignHorizontal = laCenter
            BorderMargin = 1
            WrapText = True
            Stretch = True
            DataFormat.SuppressNulls = True
            Caption = 'Unidade'
          end
          object SctTxtMargem: TSctvarlabel
            Left = 363
            Top = 2
            Width = 54
            Height = 17
            AlignHorizontal = laRight
            BorderMargin = 1
            WrapText = True
            Stretch = True
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.SuppressNulls = True
            DataFormat.Digits = 2
            Caption = 'Margem'
          end
          object Sctvarlabel238: TSctvarlabel
            Left = 680
            Top = 2
            Width = 53
            Height = 17
            AlignHorizontal = laRight
            BorderMargin = 1
            WrapText = True
            Stretch = True
            DataFormat.SuppressNulls = True
            Caption = 'IPI'
          end
          object SctVetDivMargem_1: TSctVerticalDivider
            Left = 355
            Top = 1
            Width = 2
            Height = 19
          end
          object SctVerticalDivider5: TSctVerticalDivider
            Left = 415
            Top = 1
            Width = 2
            Height = 19
          end
          object SctVerticalDivider6: TSctVerticalDivider
            Left = 466
            Top = 1
            Width = 2
            Height = 19
          end
          object SctVerticalDivider7: TSctVerticalDivider
            Left = 535
            Top = 1
            Width = 2
            Height = 19
          end
          object SctVerticalDivider8: TSctVerticalDivider
            Left = 605
            Top = 1
            Width = 2
            Height = 19
          end
          object SctVerticalDivider9: TSctVerticalDivider
            Left = 675
            Top = 1
            Width = 2
            Height = 19
          end
        end
        object BdProjetosSub: TSctSubBand
          Left = 0
          Top = 1096
          Width = 791
          Height = 60
          Color = 16316664
          BandName = 'BdProjetosSub'
          Updatelevel = DataLevel9
          Stretch = True
          BorderType = btSingle
          OnBeforePrint = BdProjetosSubBeforePrint
          Band = BdProjetos
          Above = True
          object Sctvarlabel73: TSctvarlabel
            Left = 2
            Top = 2
            Width = 49
            Height = 17
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Projeto:'
          end
          object SctVarQuantidade: TSctvarlabel
            Left = 389
            Top = 2
            Width = 353
            Height = 17
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Quantidade:'
          end
          object varlabel1: TSctvarlabel
            Left = 51
            Top = 2
            Width = 340
            Height = 17
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Variable = adodsorcamentoprojetoDp_ProjetoVar1
          end
          object Sctvarlabel120: TSctvarlabel
            Left = 2
            Top = 21
            Width = 60
            Height = 17
            Transparent = False
            AlignVertical = laCenterVert
            Caption = 'Ambiente:'
          end
          object varlabel2: TSctvarlabel
            Left = 61
            Top = 21
            Width = 228
            Height = 17
            Variable = adodsorcamentoprojetoDs_AmbienteVar
          end
          object Sctvarlabel241: TSctvarlabel
            Left = 295
            Top = 21
            Width = 104
            Height = 17
            Transparent = False
            AlignVertical = laCenterVert
            Caption = 'Prazo de Entrega:'
          end
          object Sctvarlabel242: TSctvarlabel
            Left = 399
            Top = 21
            Width = 95
            Height = 17
            Variable = adodsorcamentoprojetoDp_PrazoEntregaVar1
          end
          object Sctvarlabel243: TSctvarlabel
            Left = 2
            Top = 41
            Width = 80
            Height = 17
            Transparent = False
            AlignVertical = laCenterVert
            Caption = 'Observa'#231#245'es:'
          end
          object Sctvarlabel244: TSctvarlabel
            Left = 84
            Top = 39
            Width = 513
            Height = 17
            AlignVertical = laCenterVert
            WrapText = True
            Stretch = True
            Variable = adodsorcamentoprojetoMm_ObservacaoVar
          end
          object SctVarProjetoPartes: TSctvarlabel
            Left = 602
            Top = 21
            Width = 139
            Height = 17
            WrapText = True
            Stretch = True
            Variable = adodsorcamentoprojetoDp_ParteVar1
          end
        end
        object BdProjetosFooter: TSctDataFootBand
          Left = 0
          Top = 1964
          Width = 791
          Height = 20
          ParentColor = True
          BandName = 'BdProjetosFooter'
          Updatelevel = BdProjetosFooterLevel
          Visible = False
          Band = BdProjetos
          object Sctvarlabel245: TSctvarlabel
            Left = 525
            Top = 3
            Width = 115
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Total de Projetos:'
          end
          object SctLine2: TSctLine
            Left = 525
            Top = 1
            Width = 220
            Height = 6
            AlignVertical = laTop
          end
          object SctTotalvarLabel6: TSctTotalvarLabel
            Left = 640
            Top = 3
            Width = 100
            Height = 17
            TotalVariable = TotalOfVl_TotalProjeto
            DataFormat.DisplayFormat = '###,##0.00#'
            DataFormat.Digits = 3
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object BdProjetosSubImagem: TSctSubBand
          Left = 0
          Top = 1206
          Width = 791
          Height = 155
          ParentColor = True
          BandName = 'BdProjetosSubImagem'
          Updatelevel = DataLevel9
          Stretch = True
          OnBeforePrint = BdProjetosSubImagemBeforePrint
          OnAfterPrint = BdProjetosSubImagemAfterPrint
          Band = BdProjetos
          Order = 2
          Above = True
          object SctImgProjeto: TSctImageLabel
            Left = 6
            Top = 2
            Width = 200
            Height = 150
            Variable = adodsorcamentoprojetoIm_ProjetoVar
          end
        end
        object Data: TSctSubDataBand
          Left = 0
          Top = 786
          Width = 791
          Height = 19
          ParentColor = True
          BandName = 'Data'
          Updatelevel = DataLevel2
          Stretch = True
          OnBeforePrint = DataBeforePrint
          Band = DetailBand
          CloseDataSet = False
          DataRange = drAllRecords
          DataSource = DsItem
          object SctVarProduto: TSctvarlabel
            Left = 1
            Top = 1
            Width = 361
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            BorderMargin = 1
            WrapText = True
            Stretch = True
            Variable = adodsitemDp_ProdImpressoVar
          end
          object SctVarVl_Total: TSctvarlabel
            Left = 585
            Top = 1
            Width = 89
            Height = 17
            AlignHorizontal = laRight
            BorderMargin = 1
            WrapText = True
            Stretch = True
            Variable = adodsitemVl_TotalVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.SuppressNulls = True
            DataFormat.Digits = 2
          end
          object SctVarVl_Unitario: TSctvarlabel
            Left = 538
            Top = 1
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            BorderMargin = 1
            WrapText = True
            Stretch = True
            Variable = adodsitemVl_UnitarioVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.SuppressNulls = True
            DataFormat.Digits = 2
          end
          object SctVarQt_Item: TSctvarlabel
            Left = 469
            Top = 1
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            BorderMargin = 1
            WrapText = True
            Stretch = True
            Variable = adodsitemQt_ItemVar
            DataFormat.DisplayFormat = '#,##0.0##'
            DataFormat.SuppressNulls = True
            DataFormat.Digits = 3
          end
          object SctVarSg_Unidade: TSctvarlabel
            Left = 419
            Top = 1
            Width = 44
            Height = 17
            AlignHorizontal = laCenter
            BorderMargin = 1
            WrapText = True
            Stretch = True
            Variable = adodsitemSg_UnidadeVar
            DataFormat.SuppressNulls = True
          end
          object SctVarMargem: TSctvarlabel
            Left = 350
            Top = 2
            Width = 66
            Height = 17
            AlignHorizontal = laRight
            BorderMargin = 1
            WrapText = True
            Stretch = True
            Variable = adodsitemPr_MargemVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.SuppressNulls = True
            DataFormat.Digits = 2
          end
          object SctVarVl_IPI: TSctvarlabel
            Left = 655
            Top = 1
            Width = 78
            Height = 17
            AlignHorizontal = laRight
            BorderMargin = 1
            WrapText = True
            Stretch = True
            Variable = adodsitemVl_IPIVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.SuppressNulls = True
            DataFormat.Digits = 2
          end
          object SctVetDivMargem_2: TSctVerticalDivider
            Left = 360
            Top = 1
            Width = 2
            Height = 18
          end
          object SctVerticalDivider14: TSctVerticalDivider
            Left = 415
            Top = 1
            Width = 2
            Height = 18
          end
          object SctVerticalDivider15: TSctVerticalDivider
            Left = 466
            Top = 1
            Width = 2
            Height = 18
          end
          object SctVerticalDivider16: TSctVerticalDivider
            Left = 535
            Top = 1
            Width = 2
            Height = 18
          end
          object SctVerticalDivider17: TSctVerticalDivider
            Left = 605
            Top = 1
            Width = 2
            Height = 18
          end
          object SctVerticalDivider18: TSctVerticalDivider
            Left = 675
            Top = 1
            Width = 2
            Height = 18
          end
          object SctVerticalDivider19: TSctVerticalDivider
            Left = 740
            Top = 1
            Width = 2
            Height = 18
          end
          object SctVerticalDivider26: TSctVerticalDivider
            Left = 0
            Top = 1
            Width = 2
            Height = 18
          end
          object SctLnItem_1: TSctLine
            Left = 1
            Top = 0
            Width = 739
            Height = 3
            AlignVertical = laTop
          end
        end
        object BdDetalhe: TSctSubDataBand
          Left = 0
          Top = 820
          Width = 791
          Height = 17
          ParentColor = True
          BandName = 'BdDetalhe'
          Updatelevel = Data1Level
          Band = Data
          CloseDataSet = False
          DataRange = drAllRecords
          DataSource = DsDetalhe
          object Sctvarlabel11: TSctvarlabel
            Left = 56
            Top = 1
            Width = 37
            Height = 15
            AlignHorizontal = laRight
            Variable = adodsdetalheQt_ItemVar
          end
          object Sctvarlabel15: TSctvarlabel
            Left = 100
            Top = 1
            Width = 18
            Height = 15
            Caption = 'P'#199
          end
          object Sctvarlabel25: TSctvarlabel
            Left = 123
            Top = 1
            Width = 338
            Height = 15
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Variable = adodsdetalheDp_DetalheVar
          end
          object SctVerticalDivider24: TSctVerticalDivider
            Left = 740
            Top = 1
            Width = 2
            Height = 16
          end
          object SctVerticalDivider25: TSctVerticalDivider
            Left = 0
            Top = 1
            Width = 2
            Height = 16
          end
          object SctVerticalDivider4: TSctVerticalDivider
            Left = 466
            Top = 1
            Width = 2
            Height = 16
          end
          object SctVerticalDivider13: TSctVerticalDivider
            Left = 55
            Top = 1
            Width = 2
            Height = 16
          end
          object SctVerticalDivider62: TSctVerticalDivider
            Left = 535
            Top = 1
            Width = 2
            Height = 16
          end
          object SctVerticalDivider63: TSctVerticalDivider
            Left = 605
            Top = 1
            Width = 2
            Height = 16
          end
          object SctVerticalDivider64: TSctVerticalDivider
            Left = 675
            Top = 1
            Width = 2
            Height = 16
          end
        end
        object BdSubProduto: TSctSubBand
          Left = 0
          Top = 753
          Width = 791
          Height = 18
          ParentColor = True
          BandName = 'BdSubProduto'
          OnPrintWhen = BdSubProdutoPrintWhen
          Updatelevel = DataLevel2
          Band = Data
          Order = 2
          Above = True
          object Sctvarlabel3: TSctvarlabel
            Left = 0
            Top = 0
            Width = 506
            Height = 17
            Variable = adodsitemDp_SubProdutoVar
          end
          object SctVerticalDivider22: TSctVerticalDivider
            Left = 740
            Top = 1
            Width = 2
            Height = 17
          end
          object SctVerticalDivider23: TSctVerticalDivider
            Left = 0
            Top = 1
            Width = 2
            Height = 17
          end
        end
        object BdHdAmbiente: TSctSubBand
          Left = 0
          Top = 705
          Width = 791
          Height = 33
          ParentColor = True
          BandName = 'BdHdAmbiente'
          OnPrintWhen = BdHdAmbientePrintWhen
          Updatelevel = DataLevel2
          OnBeforePrint = BdHdAmbienteBeforePrint
          Band = Data
          Order = 1
          Above = True
          object Sctvarlabel4: TSctvarlabel
            Left = 6
            Top = 13
            Width = 730
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laCenter
            Variable = adodsitemDs_AmbienteVar
          end
          object SctVerticalDivider20: TSctVerticalDivider
            Left = 740
            Top = 1
            Width = 2
            Height = 32
          end
          object SctVerticalDivider21: TSctVerticalDivider
            Left = 0
            Top = 1
            Width = 2
            Height = 32
          end
          object SctLine12: TSctLine
            Left = 1
            Top = 19
            Width = 738
            Height = 14
          end
        end
        object BdHdAmbienteTotal: TSctSubBand
          Left = 0
          Top = 670
          Width = 791
          Height = 20
          ParentColor = True
          BandName = 'BdHdAmbienteTotal'
          OnPrintWhen = BdHdAmbienteTotalPrintWhen
          Updatelevel = DataLevel2
          Visible = False
          OnBeforePrint = BdHdAmbienteTotalBeforePrint
          Band = Data
          Above = True
          object SctVarAmbiente: TSctvarlabel
            Left = 633
            Top = 1
            Width = 100
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = '0,00'
          end
          object SctVarAmbTotal: TSctvarlabel
            Left = 299
            Top = 0
            Width = 331
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'total do ambiente'
          end
          object SctLine13: TSctLine
            Left = 1
            Top = 0
            Width = 738
            Height = 7
            AlignVertical = laTop
          end
          object SctVerticalDivider42: TSctVerticalDivider
            Left = 740
            Top = 1
            Width = 2
            Height = 19
          end
          object SctVerticalDivider43: TSctVerticalDivider
            Left = 0
            Top = 1
            Width = 2
            Height = 19
          end
        end
        object BdFtAmbiente2: TSctSubBand
          Left = 0
          Top = 1041
          Width = 791
          Height = 25
          ParentColor = True
          BandName = 'BdFtAmbiente2'
          OnPrintWhen = BdFtAmbiente2PrintWhen
          Updatelevel = DetailBandlevel
          Visible = False
          OnBeforePrint = BdFtAmbiente2BeforePrint
          Band = DetailBand
          Above = False
          object SctVarAmbiente2: TSctvarlabel
            Left = 639
            Top = 3
            Width = 100
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = '0,00'
          end
          object SctVarAmbTotal2: TSctvarlabel
            Left = 221
            Top = 3
            Width = 412
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'total do ambiente'
          end
          object SctLine16: TSctLine
            Left = 1
            Top = 0
            Width = 738
            Height = 7
            AlignVertical = laTop
          end
          object SctVerticalDivider61: TSctVerticalDivider
            Left = 740
            Top = 1
            Width = 2
            Height = 24
          end
          object SctVerticalDivider65: TSctVerticalDivider
            Left = 0
            Top = 1
            Width = 2
            Height = 24
          end
        end
        object BdIm_SubProduto: TSctSubBand
          Left = 0
          Top = 1008
          Width = 791
          Height = 18
          ParentColor = True
          BandName = 'BdIm_SubProduto'
          Updatelevel = DataLevel2
          Stretch = True
          Band = Data
          Above = False
          object SctImgSubProduto: TSctImageLabel
            Left = 55
            Top = 2
            Width = 111
            Height = 14
            Center = True
          end
        end
        object BdMoldura: TSctSubDataBand
          Left = 0
          Top = 852
          Width = 791
          Height = 17
          ParentColor = True
          BandName = 'BdMoldura'
          Updatelevel = Data1Level1
          Band = Data
          Order = 1
          CloseDataSet = False
          DataRange = drAllRecords
          DataSource = DsMoldura
          object Sctvarlabel9: TSctvarlabel
            Left = 56
            Top = 1
            Width = 37
            Height = 15
            AlignHorizontal = laRight
            Variable = adodsmolduraQt_MolduraVar
          end
          object Sctvarlabel12: TSctvarlabel
            Left = 100
            Top = 1
            Width = 360
            Height = 15
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Variable = adodsmolduraDp_MolduraVar
          end
          object SctVerticalDivider68: TSctVerticalDivider
            Left = 740
            Top = 1
            Width = 2
            Height = 16
          end
          object SctVerticalDivider69: TSctVerticalDivider
            Left = 0
            Top = 1
            Width = 2
            Height = 16
          end
          object SctVerticalDivider70: TSctVerticalDivider
            Left = 466
            Top = 1
            Width = 2
            Height = 16
          end
          object SctVerticalDivider71: TSctVerticalDivider
            Left = 55
            Top = 1
            Width = 2
            Height = 16
          end
          object SctVerticalDivider72: TSctVerticalDivider
            Left = 535
            Top = 1
            Width = 2
            Height = 16
          end
          object SctVerticalDivider73: TSctVerticalDivider
            Left = 605
            Top = 1
            Width = 2
            Height = 16
          end
          object SctVerticalDivider74: TSctVerticalDivider
            Left = 675
            Top = 1
            Width = 2
            Height = 16
          end
        end
        object OverBdCopia: TSctOverlayBand
          Left = 0
          Top = 2397
          Width = 791
          Height = 965
          ParentColor = True
          BandName = 'OverBdCopia'
          Updatelevel = OverlayBand1Level
          Order = 1
          object SctImageCopia: TSctImageLabel
            Left = 140
            Top = 125
            Width = 110
            Height = 110
            Picture.Data = {binary 1168 bytes}
          end
          object SctImageLabel1: TSctImageLabel
            Left = 255
            Top = 125
            Width = 110
            Height = 110
            Picture.Data = {binary 1168 bytes}
          end
          object SctImageLabel2: TSctImageLabel
            Left = 370
            Top = 125
            Width = 110
            Height = 110
            Picture.Data = {binary 1168 bytes}
          end
          object SctImageLabel3: TSctImageLabel
            Left = 25
            Top = 125
            Width = 110
            Height = 110
            Picture.Data = {binary 1168 bytes}
          end
          object SctImageLabel4: TSctImageLabel
            Left = 485
            Top = 125
            Width = 110
            Height = 110
            Picture.Data = {binary 1168 bytes}
          end
          object SctImageLabel5: TSctImageLabel
            Left = 600
            Top = 125
            Width = 110
            Height = 110
            Picture.Data = {binary 1168 bytes}
          end
          object SctImageLabel6: TSctImageLabel
            Left = 140
            Top = 385
            Width = 110
            Height = 110
            Picture.Data = {binary 1168 bytes}
          end
          object SctImageLabel7: TSctImageLabel
            Left = 255
            Top = 385
            Width = 110
            Height = 110
            Picture.Data = {binary 1168 bytes}
          end
          object SctImageLabel8: TSctImageLabel
            Left = 370
            Top = 385
            Width = 110
            Height = 110
            Picture.Data = {binary 1168 bytes}
          end
          object SctImageLabel9: TSctImageLabel
            Left = 25
            Top = 385
            Width = 110
            Height = 110
            Picture.Data = {binary 1168 bytes}
          end
          object SctImageLabel10: TSctImageLabel
            Left = 485
            Top = 385
            Width = 110
            Height = 110
            Picture.Data = {binary 1168 bytes}
          end
          object SctImageLabel11: TSctImageLabel
            Left = 600
            Top = 385
            Width = 110
            Height = 110
            Picture.Data = {binary 1168 bytes}
          end
          object SctImageLabel17: TSctImageLabel
            Left = 600
            Top = 620
            Width = 110
            Height = 110
            Picture.Data = {binary 1168 bytes}
          end
          object SctImageLabel16: TSctImageLabel
            Left = 485
            Top = 620
            Width = 110
            Height = 110
            Picture.Data = {binary 1168 bytes}
          end
          object SctImageLabel14: TSctImageLabel
            Left = 370
            Top = 620
            Width = 110
            Height = 110
            Picture.Data = {binary 1168 bytes}
          end
          object SctImageLabel13: TSctImageLabel
            Left = 255
            Top = 620
            Width = 110
            Height = 110
            Picture.Data = {binary 1168 bytes}
          end
          object SctImageLabel12: TSctImageLabel
            Left = 140
            Top = 620
            Width = 110
            Height = 110
            Picture.Data = {binary 1168 bytes}
          end
          object SctImageLabel15: TSctImageLabel
            Left = 25
            Top = 620
            Width = 110
            Height = 110
            Picture.Data = {binary 1168 bytes}
          end
          object SctImageLabel23: TSctImageLabel
            Left = 600
            Top = 825
            Width = 110
            Height = 110
            Picture.Data = {binary 1168 bytes}
          end
          object SctImageLabel22: TSctImageLabel
            Left = 485
            Top = 825
            Width = 110
            Height = 110
            Picture.Data = {binary 1168 bytes}
          end
          object SctImageLabel20: TSctImageLabel
            Left = 370
            Top = 825
            Width = 110
            Height = 110
            Picture.Data = {binary 1168 bytes}
          end
          object SctImageLabel19: TSctImageLabel
            Left = 255
            Top = 825
            Width = 110
            Height = 110
            Picture.Data = {binary 1168 bytes}
          end
          object SctImageLabel18: TSctImageLabel
            Left = 140
            Top = 825
            Width = 110
            Height = 110
            Picture.Data = {binary 1168 bytes}
          end
          object SctImageLabel21: TSctImageLabel
            Left = 25
            Top = 825
            Width = 110
            Height = 110
            Picture.Data = {binary 1168 bytes}
          end
        end
        object PgHdTempera: TSctSubBand
          Left = 0
          Top = 553
          Width = 791
          Height = 37
          ParentColor = True
          BandName = 'PgHdTempera'
          Updatelevel = PageHeaderBandlevel
          BorderType = btSingle
          Band = PgHdOrcamento
          Order = 6
          Above = False
          object Sctvarlabel105: TSctvarlabel
            Left = 1
            Top = 1
            Width = 48
            Height = 15
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Cliente:'
          end
          object Sctvarlabel106: TSctvarlabel
            Left = 51
            Top = 1
            Width = 683
            Height = 15
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Variable = adodspedidoDp_EmitenteVar
          end
          object SctVarOrcTempera: TSctvarlabel
            Left = 1
            Top = 18
            Width = 728
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Or'#231'amento N'#186':'
          end
        end
        object BdConjuntoNew: TSctSubDataBand
          Left = 0
          Top = 919
          Width = 791
          Height = 20
          ParentColor = True
          BandName = 'BdConjuntoNew'
          Updatelevel = Data1Level2
          OnBeforePrint = BdConjuntoNewBeforePrint
          Band = Data
          Order = 2
          CloseDataSet = False
          DataRange = drAllRecords
          DataSource = DsConjunto
          object Sctvarlabel336: TSctvarlabel
            Left = 1
            Top = 1
            Width = 412
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            BorderMargin = 1
            WrapText = True
            Stretch = True
            Variable = adodsconjuntoDp_ProdutoVar
          end
          object Sctvarlabel337: TSctvarlabel
            Left = 419
            Top = 1
            Width = 44
            Height = 17
            AlignHorizontal = laCenter
            BorderMargin = 1
            WrapText = True
            Stretch = True
            Variable = adodsconjuntosg_unidadeVar
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel338: TSctvarlabel
            Left = 469
            Top = 1
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            BorderMargin = 1
            WrapText = True
            Stretch = True
            Variable = adodsconjuntoqt_itemVar
            DataFormat.DisplayFormat = '#,##0.0##'
            DataFormat.SuppressNulls = True
            DataFormat.Digits = 3
          end
          object SctVarCestaVenda: TSctvarlabel
            Left = 538
            Top = 1
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            BorderMargin = 1
            WrapText = True
            Stretch = True
            Variable = adodsconjuntovl_unitarioVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.SuppressNulls = True
            DataFormat.Digits = 2
          end
          object SctVarCestaCusto: TSctvarlabel
            Left = 605
            Top = 1
            Width = 69
            Height = 17
            AlignHorizontal = laRight
            BorderMargin = 1
            WrapText = True
            Stretch = True
            Variable = adodsconjuntoVl_CustoVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.SuppressNulls = True
            DataFormat.Digits = 2
          end
          object SctVarCestaMargem: TSctvarlabel
            Left = 663
            Top = 1
            Width = 58
            Height = 17
            AlignHorizontal = laRight
            BorderMargin = 1
            WrapText = True
            Stretch = True
            Variable = adodsconjuntoPr_MargemVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.SuppressNulls = True
            DataFormat.Digits = 2
          end
          object SctVerticalDivider31: TSctVerticalDivider
            Left = 675
            Top = 1
            Width = 2
            Height = 19
          end
          object SctVerticalDivider32: TSctVerticalDivider
            Left = 604
            Top = 1
            Width = 2
            Height = 19
          end
          object SctVerticalDivider33: TSctVerticalDivider
            Left = 537
            Top = 1
            Width = 2
            Height = 19
          end
          object SctVerticalDivider34: TSctVerticalDivider
            Left = 466
            Top = 1
            Width = 2
            Height = 19
          end
          object SctVerticalDivider35: TSctVerticalDivider
            Left = 415
            Top = 1
            Width = 2
            Height = 19
          end
          object SctVerticalDivider66: TSctVerticalDivider
            Left = 740
            Top = 1
            Width = 2
            Height = 19
          end
          object SctVerticalDivider67: TSctVerticalDivider
            Left = 0
            Top = 1
            Width = 2
            Height = 19
          end
          object SctLnItem_2: TSctLine
            Left = 1
            Top = 0
            Width = 739
            Height = 3
            AlignVertical = laTop
          end
        end
        object BdConjuntoNewHeader: TSctDataHeadBand
          Left = 0
          Top = 884
          Width = 791
          Height = 20
          ParentColor = True
          BandName = 'BdConjuntoNewHeader'
          Updatelevel = BdConjuntoNewHeaderLevel
          BorderType = btSingle
          OnBeforePrint = BdConjuntoNewHeaderBeforePrint
          Band = BdConjuntoNew
          object SctVarCesta: TSctvarlabel
            Left = 157
            Top = 1
            Width = 239
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laCenter
            BorderMargin = 1
            WrapText = True
            Stretch = True
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.SuppressNulls = True
            DataFormat.Digits = 2
            Caption = 'Cesta'
          end
          object SctTxtCestaMargem: TSctvarlabel
            Left = 681
            Top = 3
            Width = 40
            Height = 17
            AlignHorizontal = laRight
            BorderMargin = 1
            Stretch = True
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.SuppressNulls = True
            DataFormat.Digits = 2
            Caption = 'Margem'
          end
          object SctTxtCestaCusto: TSctvarlabel
            Left = 605
            Top = 1
            Width = 69
            Height = 17
            AlignHorizontal = laRight
            BorderMargin = 1
            Stretch = True
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.SuppressNulls = True
            DataFormat.Digits = 2
            Caption = 'Custo'
          end
          object SctTxtCestaVenda: TSctvarlabel
            Left = 538
            Top = 3
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            BorderMargin = 1
            Stretch = True
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.SuppressNulls = True
            DataFormat.Digits = 2
            Caption = 'Venda'
          end
          object SctTxtCestaQtde: TSctvarlabel
            Left = 469
            Top = 3
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            BorderMargin = 1
            Stretch = True
            DataFormat.DisplayFormat = '#,##0.0##'
            DataFormat.SuppressNulls = True
            DataFormat.Digits = 3
            Caption = 'Quantidade'
          end
          object SctTxtCestaUnidade: TSctvarlabel
            Left = 419
            Top = 3
            Width = 44
            Height = 17
            AlignHorizontal = laCenter
            BorderMargin = 1
            Stretch = True
            DataFormat.SuppressNulls = True
            Caption = 'Unidade'
          end
          object SctVerticalDivider10: TSctVerticalDivider
            Left = 675
            Top = 1
            Width = 2
            Height = 19
          end
          object SctVerticalDivider11: TSctVerticalDivider
            Left = 604
            Top = 1
            Width = 2
            Height = 19
          end
          object SctVerticalDivider27: TSctVerticalDivider
            Left = 537
            Top = 1
            Width = 2
            Height = 19
          end
          object SctVerticalDivider28: TSctVerticalDivider
            Left = 466
            Top = 1
            Width = 2
            Height = 19
          end
          object SctVerticalDivider29: TSctVerticalDivider
            Left = 415
            Top = 1
            Width = 2
            Height = 19
          end
          object Sctvarlabel7: TSctvarlabel
            Left = 1
            Top = 3
            Width = 65
            Height = 17
            BorderMargin = 1
            Stretch = True
            DataFormat.DisplayFormat = '#,##0.0##'
            DataFormat.SuppressNulls = True
            DataFormat.Digits = 3
            Caption = 'Produto'
          end
        end
        object BdConjuntoNewFooter: TSctDataFootBand
          Left = 0
          Top = 989
          Width = 791
          Height = 4
          ParentColor = True
          BandName = 'BdConjuntoNewFooter'
          Updatelevel = BdConjuntoNewFooterLevel
          Band = BdConjuntoNew
          object SctLine17: TSctLine
            Left = 1
            Top = 1
            Width = 734
            Height = 3
            AlignVertical = laTop
          end
        end
        object BdCustoCestaNew: TSctSubBand
          Left = 0
          Top = 954
          Width = 791
          Height = 20
          ParentColor = True
          BandName = 'BdCustoCestaNew'
          Updatelevel = BdConjuntoNewFooterLevel
          OnBeforePrint = BdCustoCestaNewBeforePrint
          Band = BdConjuntoNewFooter
          Above = True
          object SctTxtCustoUnit: TSctvarlabel
            Left = 237
            Top = 1
            Width = 218
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            BorderMargin = 1
            WrapText = True
            Stretch = True
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.SuppressNulls = True
            DataFormat.Digits = 2
            Caption = 'Custo Unit'#225'rio da Cesta:'
          end
          object SctTxtCustoTotal: TSctvarlabel
            Left = 458
            Top = 1
            Width = 216
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            BorderMargin = 1
            WrapText = True
            Stretch = True
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.SuppressNulls = True
            DataFormat.Digits = 2
            Caption = 'Custo Total da Cesta: 0,00'
          end
        end
        object BdProjetosSubProduto: TSctSubBand
          Left = 0
          Top = 1171
          Width = 791
          Height = 20
          ParentColor = True
          BandName = 'BdProjetosSubProduto'
          Updatelevel = DataLevel9
          Stretch = True
          BorderType = btSingle
          Band = BdProjetos
          Order = 1
          Above = True
          object Sctvarlabel74: TSctvarlabel
            Left = 2
            Top = 3
            Width = 51
            Height = 17
            Transparent = False
            AlignVertical = laCenterVert
            Caption = 'Produto:'
          end
          object SctVarProjetoProduto: TSctvarlabel
            Left = 55
            Top = 1
            Width = 688
            Height = 17
            AlignVertical = laCenterVert
            WrapText = True
            Stretch = True
            Caption = '<<< Lista de Produtos >>>'
          end
        end
        object PgHdOrcDemaisPag: TSctSubBand
          Left = 0
          Top = 146
          Width = 791
          Height = 51
          Margins.Right = 15
          ParentColor = True
          BandName = 'PgHdOrcDemaisPag'
          Updatelevel = PageHeaderBandlevel
          Visible = False
          Stretch = True
          BorderType = btSingle
          Band = PgHdOrcamento
          Order = 1
          Above = False
          object SctVarDt_Impressao_2: TSctvarlabel
            Left = 581
            Top = 2
            Width = 146
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Variable = svarDateTime
            DataFormat.DisplayFormat = '"Data: " dd/mm/yyyy'
          end
          object SctTitle_2: TSctvarlabel
            Left = 0
            Top = 2
            Width = 196
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Or'#231'amento N'#186':'
          end
          object Sctvarlabel422: TSctvarlabel
            Left = 1
            Top = 19
            Width = 56
            Height = 15
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Emiss'#227'o:'
          end
          object Sctvarlabel423: TSctvarlabel
            Left = 60
            Top = 19
            Width = 69
            Height = 15
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Variable = adodspedidoDt_EmissaoVar
            DataFormat.DisplayFormat = 'dd/mm/yyyy'
          end
          object Sctvarlabel424: TSctvarlabel
            Left = 131
            Top = 19
            Width = 56
            Height = 15
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Situa'#231#227'o:'
          end
          object Sctvarlabel425: TSctvarlabel
            Left = 191
            Top = 19
            Width = 95
            Height = 15
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Variable = adodsorcamentoDp_SituacaoVar
          end
          object Sctvarlabel426: TSctvarlabel
            Left = 458
            Top = 19
            Width = 128
            Height = 15
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Forma de Pagamento:'
          end
          object Sctvarlabel427: TSctvarlabel
            Left = 589
            Top = 19
            Width = 145
            Height = 15
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Variable = adodspedidoDp_PrazoVar
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel428: TSctvarlabel
            Left = 1
            Top = 34
            Width = 48
            Height = 15
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Cliente:'
          end
          object Sctvarlabel429: TSctvarlabel
            Left = 51
            Top = 34
            Width = 676
            Height = 15
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Variable = adodspedidoDp_EmitenteVar
          end
          object SctTxtFatura_2: TSctvarlabel
            Left = 202
            Top = 2
            Width = 326
            Height = 15
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laCenter
            Caption = 'Fatura'
          end
        end
        object PgHdSubOrcamento: TSctSubBand
          Left = 0
          Top = 38
          Width = 791
          Height = 93
          ParentColor = True
          BandName = 'PgHdSubOrcamento'
          Updatelevel = PageHeaderBandlevel
          Stretch = True
          BorderType = btSingle
          Band = PgHdOrcamento
          Above = False
          object SctVarDt_Impressao: TSctvarlabel
            Left = 590
            Top = 2
            Width = 146
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Variable = svarDateTime
            DataFormat.DisplayFormat = '"Data: " dd/mm/yyyy'
          end
          object SctTitle: TSctvarlabel
            Left = 0
            Top = 2
            Width = 196
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Or'#231'amento N'#186':'
          end
          object Sctvarlabel17: TSctvarlabel
            Left = 1
            Top = 19
            Width = 56
            Height = 15
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Emiss'#227'o:'
          end
          object Sctvarlabel18: TSctvarlabel
            Left = 60
            Top = 19
            Width = 69
            Height = 15
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Variable = adodspedidoDt_EmissaoVar
            DataFormat.DisplayFormat = 'dd/mm/yyyy'
          end
          object Sctvarlabel20: TSctvarlabel
            Left = 131
            Top = 19
            Width = 56
            Height = 15
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Situa'#231#227'o:'
          end
          object Sctvarlabel21: TSctvarlabel
            Left = 191
            Top = 19
            Width = 95
            Height = 15
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Variable = adodsorcamentoDp_SituacaoVar
          end
          object SctVarPagto: TSctvarlabel
            Left = 439
            Top = 19
            Width = 128
            Height = 15
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Forma de Pagamento:'
          end
          object Sctvarlabel26: TSctvarlabel
            Left = 570
            Top = 19
            Width = 164
            Height = 15
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Variable = adodspedidoDp_PrazoVar
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel27: TSctvarlabel
            Left = 1
            Top = 34
            Width = 48
            Height = 15
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Cliente:'
          end
          object Sctvarlabel28: TSctvarlabel
            Left = 51
            Top = 34
            Width = 683
            Height = 15
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Variable = adodspedidoDp_EmitenteVar
          end
          object Sctvarlabel71: TSctvarlabel
            Left = 1
            Top = 74
            Width = 103
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            WrapText = True
            Stretch = True
            Caption = 'Observa'#231#245'es:'
          end
          object Sctvarlabel72: TSctvarlabel
            Left = 80
            Top = 74
            Width = 653
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            WrapText = True
            Stretch = True
            Variable = adodsorcamentomm_observacaoVar
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel2: TSctvarlabel
            Left = 1
            Top = 63
            Width = 62
            Height = 15
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = 'CNPJ/CPF:'
          end
          object SctVarDocto: TSctvarlabel
            Left = 65
            Top = 63
            Width = 136
            Height = 15
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Variable = adodsorcamentonr_documentoVar
          end
          object SctTxtInscricao: TSctvarlabel
            Left = 206
            Top = 63
            Width = 111
            Height = 15
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Inscri'#231#227'o Estadual:'
          end
          object SctVarInscricao: TSctvarlabel
            Left = 318
            Top = 63
            Width = 115
            Height = 15
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Variable = adodsorcamentoNr_Insc_EstadualVar
          end
          object SctTxtFatura: TSctvarlabel
            Left = 202
            Top = 2
            Width = 326
            Height = 15
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laCenter
            Caption = 'Fatura'
          end
          object SctTxtValidade: TSctvarlabel
            Left = 439
            Top = 63
            Width = 294
            Height = 15
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Validade'
          end
          object Sctvarlabel10: TSctvarlabel
            Left = 1
            Top = 48
            Width = 42
            Height = 15
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = 'E-Mail:'
          end
          object Sctvarlabel14: TSctvarlabel
            Left = 45
            Top = 48
            Width = 682
            Height = 15
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Variable = adodsorcamentoDs_Email_EmitenteVar
          end
        end
      end
    end
  end
  object DsOrcamento: TDataSource
    DataSet = ADODsOrcamento
    Left = 554
    Top = 32
  end
  object ADODsOrcamento: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterOpen = ADODsOrcamentoAfterOpen
    OnCalcFields = ADODsOrcamentoCalcFields
    CommandText = 'select'#13#10'  O.Cd_Filial, O.Nr_Orcamento, O.Dt_Emissao, O.St_Orcamento, O.Tp_Carga,'#13#10'  O.Fl_FormaPagto,'#13#10'  O.Cd_Emitente, E.Nm_Emitente, E.Ds_Email as Ds_Email_Emitente,'#13#10'  Cast( O.Cd_Funcionario as VarChar ) + '''' - '''' + F.Nm_Funcionario as Dp_Funcionario,'#13#10'  O.Cd_Funcionario, E.Nr_Documento, O.Nm_Contato, F.Ds_Email,'#13#10'  O.Nr_Fatura, O.Dt_Fatura, O.Vl_BaseICMS, O.Pr_ICMS, O.Vl_ICMS, O.Vl_IPI,'#13#10'  O.Pr_Desconto, O.Vl_Desconto, O.Pr_Custo, O.Vl_Custo, O.Vl_STB,'#13#10'  O.Nr_ECF, E.Nr_Insc_Estadual, F.Im_Assinatura, E.Nm_Fantasia,'#13#10'  O.Nr_Pedido_Emitente, O.Nr_Validade, O.Nr_Entrega,'#13#10#13#10'  case O.Fl_FormaPagto'#13#10'    when ''''1'''' then ''''A Vista'''#13#10'    when ''''2'''' then ''''A Prazo'''#13#10'    when ''''3'''' then ''''Cr'#233'dito'''#13#10'    when ''''4'''' then ''''Cheque'''#13#10'    when ''''5'''' then ''''Contra-Apresenta'#231#227'o'''#13#10'    when ''''6'''' then ''''Multi-parcelado'''#13#10'    when ''''7'''' then ''''D'#233'bito'''#13#10'    when ''''8'''' then ''''PIX'''#13#10#13#10'  end as Dp_FormaPagto,'#13#10#13#10'  O.Nr_Endereco, O.Vl_Coleta_Frete, O.Ps_Coleta, O.Vl_Coleta, O.Mg_Coleta,'#13#10'  O.Vl_Coleta + Vl_Coleta_Frete as Vl_Coleta_Total, O.Vl_Pedido_Frete,'#13#10'  O.Ps_Pedido, O.Vl_Pedido, O.Vl_Pedido + O.Vl_Pedido_Frete + O.Vl_IPI as Vl_Pedido_Total,'#13#10'  O.Mg_Pedido, O.Mm_Observacao, O.Cd_Tabela, CE.Sg_Estado, E.Fl_Contribuinte,'#13#10'  E.Fl_Exportador, O.Cd_Transportador, E.Tp_Pessoa, E.Nr_Identidade,'#13#10#13#10'  case O.Tp_Carga'#13#10'    when ''''1'''' then ''''Normal'''#13#10'    when ''''2'''' then ''''Estirado'''#13#10'    when ''''3'''' then ''''Industrializado'''#13#10'    when ''''4'''' then ''''Especial'''#13#10#13#10'  end as Dp_Carga,'#13#10#13#10'  EEE.Nr_Endereco as Ent_Nr_Endereco, EEE.Ds_Numero as Ent_Ds_Numero,'#13#10'  EEE.Ds_Titulo as Ent_Ds_Titulo, EEE.Ds_Endereco as Ent_Ds_Endereco,'#13#10'  EEE.Nm_Bairro as Ent_Nm_Bairro, EEE.Ds_Complemento as Ent_Ds_Complemento,'#13#10'  EEE.Nr_CEP as Ent_Nr_CEP, Cast( EEE.Cd_Cidade as VarChar ) + '''' - '''' + CEE.Nm_Cidade +'#13#10'     '''' - '''' + CEE.Sg_Estado as Ent_Dp_Cidade,'#13#10'  EEE.Nr_Telefone_1 as Ent_Nr_Telefone_1, EEE.Nr_Telefone_2 as Ent_Nr_Telefone_2,'#13#10'  EEE.Nr_Telefone_3 as Ent_Nr_Telefone_3, EEE.Nr_FAX as Ent_Nr_FAX,'#13#10'  EEE.Mm_Observacao as Ent_Mm_Observacao,'#13#10'  EEE.Nr_Celular_1 as Ent_Nr_Celular_1, EEE.Nr_Celular_2 as Ent_Nr_Celular_2,'#13#10#13#10'  E.Nr_EndCobranca, EE.Ds_Titulo, EE.Ds_Endereco, EE.Nm_Bairro, EE.Ds_Complemento, EE.Nr_CEP,'#13#10'  Cast( EE.Cd_Cidade as VarChar ) + '''' - '''' + CE.Nm_Cidade + '''' - '''' + CE.Sg_Estado as Dp_Cidade,'#13#10'  EE.Nr_Telefone_1, EE.Nr_Telefone_2, EE.Nr_Telefone_3, EE.Nr_FAX,'#13#10'  EE.Mm_Observacao as Mm_ObsEndereco, O.Dt_Confirmado, EE.Ds_Numero,'#13#10'  EE.Nr_Celular_1 as Nr_Celular_1, EE.Nr_Celular_2 as Nr_Celular_2'#13#10#13#10'from'#13#10'  Orcamento O'#13#10#13#10'inner join'#13#10'  Funcionario F'#13#10'on'#13#10'  F.Cd_Funcionario = O.Cd_Funcionario'#13#10#13#10'left join'#13#10'  Emitente E'#13#10'on'#13#10'  E.Cd_Emitente = O.Cd_Emitente'#13#10#13#10'left join'#13#10'  Emitente_Endereco EEE'#13#10'on'#13#10'  EEE.Cd_Emitente = O.Cd_Emitente and'#13#10'  EEE.Nr_Endereco = O.Nr_Endereco'#13#10#13#10'left join'#13#10'  Cidade CEE'#13#10'on'#13#10'  CEE.Cd_Cidade = EEE.Cd_Cidade'#13#10#13#10'left join'#13#10'  Emitente_Endereco EE'#13#10'on'#13#10'  EE.Cd_Emitente = E.Cd_Emitente and'#13#10'  EE.Nr_Endereco = E.Nr_EndCobranca'#13#10#13#10'left join'#13#10'  Cidade CE'#13#10'on'#13#10'  CE.Cd_Cidade = EE.Cd_Cidade'#13#10#13#10'where'#13#10'  O.Cd_Filial    = :Cd_Filial and'#13#10'  O.Nr_Orcamento = :Nr_Orcamento'
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
        Name = 'Nr_Orcamento'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = nil?
      end>
    Left = 584
    Top = 32
    object ADODsOrcamentoDt_Emissao: TDateTimeField
      FieldName = 'Dt_Emissao'
    end
    object ADODsOrcamentoTp_Carga: TStringField
      FieldName = 'Tp_Carga'
      FixedChar = True
      Size = 1
    end
    object ADODsOrcamentoDp_Emitente: TStringField
      FieldKind = fkCalculated
      FieldName = 'Dp_Emitente'
      ReadOnly = True
      Size = 208
      Calculated = True
    end
    object ADODsOrcamentoDp_FormaPagto: TStringField
      FieldName = 'Dp_FormaPagto'
      ReadOnly = True
      Size = 19
    end
    object ADODsOrcamentoNr_Endereco: TSmallintField
      FieldName = 'Nr_Endereco'
    end
    object ADODsOrcamentoDp_Prazo: TStringField
      FieldKind = fkCalculated
      FieldName = 'Dp_Prazo'
      Size = 30
      Calculated = True
    end
    object ADODsOrcamentoDs_Titulo: TStringField
      FieldName = 'Ds_Titulo'
      Size = 50
    end
    object ADODsOrcamentoVl_Coleta_Frete: TBCDField
      FieldName = 'Vl_Coleta_Frete'
      Precision = 18
      Size = 2
    end
    object ADODsOrcamentoPs_Coleta: TBCDField
      FieldName = 'Ps_Coleta'
      Precision = 18
      Size = 3
    end
    object ADODsOrcamentoVl_Coleta: TBCDField
      FieldName = 'Vl_Coleta'
      Precision = 18
      Size = 2
    end
    object ADODsOrcamentoMg_Coleta: TBCDField
      FieldName = 'Mg_Coleta'
      Precision = 18
      Size = 2
    end
    object ADODsOrcamentoVl_Pedido_Frete: TBCDField
      FieldName = 'Vl_Pedido_Frete'
      Precision = 18
      Size = 2
    end
    object ADODsOrcamentoPs_Pedido: TBCDField
      FieldName = 'Ps_Pedido'
      Precision = 18
      Size = 3
    end
    object ADODsOrcamentoVl_Pedido: TBCDField
      FieldName = 'Vl_Pedido'
      Precision = 18
      Size = 2
    end
    object ADODsOrcamentoMg_Pedido: TBCDField
      FieldName = 'Mg_Pedido'
      Precision = 18
      Size = 2
    end
    object ADODsOrcamentoCd_Tabela: TStringField
      FieldName = 'Cd_Tabela'
      Size = 10
    end
    object ADODsOrcamentoDp_Carga: TStringField
      FieldName = 'Dp_Carga'
      ReadOnly = True
      Size = 15
    end
    object ADODsOrcamentoEnt_Nr_Endereco: TSmallintField
      FieldName = 'Ent_Nr_Endereco'
    end
    object ADODsOrcamentoEnt_Ds_Titulo: TStringField
      FieldName = 'Ent_Ds_Titulo'
      Size = 50
    end
    object ADODsOrcamentoEnt_Ds_Endereco: TStringField
      FieldName = 'Ent_Ds_Endereco'
      Size = 50
    end
    object ADODsOrcamentoEnt_Nm_Bairro: TStringField
      FieldName = 'Ent_Nm_Bairro'
      Size = 30
    end
    object ADODsOrcamentoEnt_Ds_Complemento: TStringField
      FieldName = 'Ent_Ds_Complemento'
      Size = 30
    end
    object ADODsOrcamentoEnt_Nr_CEP: TStringField
      FieldName = 'Ent_Nr_CEP'
      FixedChar = True
      Size = 8
    end
    object ADODsOrcamentoEnt_Dp_Cidade: TStringField
      FieldName = 'Ent_Dp_Cidade'
      ReadOnly = True
      Size = 43
    end
    object ADODsOrcamentoEnt_Nr_Telefone_1: TStringField
      FieldName = 'Ent_Nr_Telefone_1'
      Size = 11
    end
    object ADODsOrcamentoEnt_Nr_Telefone_2: TStringField
      FieldName = 'Ent_Nr_Telefone_2'
      Size = 11
    end
    object ADODsOrcamentoEnt_Nr_Telefone_3: TStringField
      FieldName = 'Ent_Nr_Telefone_3'
      Size = 11
    end
    object ADODsOrcamentoEnt_Nr_FAX: TStringField
      FieldName = 'Ent_Nr_FAX'
      Size = 11
    end
    object ADODsOrcamentoDs_Endereco: TStringField
      FieldName = 'Ds_Endereco'
      Size = 50
    end
    object ADODsOrcamentoNm_Bairro: TStringField
      FieldName = 'Nm_Bairro'
      Size = 30
    end
    object ADODsOrcamentoDs_Complemento: TStringField
      FieldName = 'Ds_Complemento'
      Size = 30
    end
    object ADODsOrcamentoNr_CEP: TStringField
      FieldName = 'Nr_CEP'
      FixedChar = True
      Size = 8
    end
    object ADODsOrcamentoDp_Cidade: TStringField
      FieldName = 'Dp_Cidade'
      ReadOnly = True
      Size = 43
    end
    object ADODsOrcamentoNr_Telefone_1: TStringField
      FieldName = 'Nr_Telefone_1'
      Size = 11
    end
    object ADODsOrcamentoNr_Telefone_2: TStringField
      FieldName = 'Nr_Telefone_2'
      Size = 11
    end
    object ADODsOrcamentoNr_Telefone_3: TStringField
      FieldName = 'Nr_Telefone_3'
      Size = 11
    end
    object ADODsOrcamentoNr_FAX: TStringField
      FieldName = 'Nr_FAX'
      Size = 11
    end
    object ADODsOrcamentoFl_FormaPagto: TStringField
      FieldName = 'Fl_FormaPagto'
      FixedChar = True
      Size = 1
    end
    object ADODsOrcamentoVl_Coleta_Total: TBCDField
      FieldName = 'Vl_Coleta_Total'
      ReadOnly = True
      Precision = 19
      Size = 2
    end
    object ADODsOrcamentoVl_Pedido_Total: TBCDField
      FieldName = 'Vl_Pedido_Total'
      ReadOnly = True
      Precision = 19
      Size = 2
    end
    object ADODsOrcamentoNr_Fatura: TIntegerField
      FieldName = 'Nr_Fatura'
    end
    object ADODsOrcamentoVl_BaseICMS: TBCDField
      FieldName = 'Vl_BaseICMS'
      Precision = 18
      Size = 2
    end
    object ADODsOrcamentoPr_ICMS: TBCDField
      FieldName = 'Pr_ICMS'
      Precision = 18
      Size = 2
    end
    object ADODsOrcamentoVl_ICMS: TBCDField
      FieldName = 'Vl_ICMS'
      Precision = 18
      Size = 2
    end
    object ADODsOrcamentoVl_IPI: TBCDField
      FieldName = 'Vl_IPI'
      Precision = 18
      Size = 2
    end
    object ADODsOrcamentoNr_ECF: TIntegerField
      FieldName = 'Nr_ECF'
    end
    object ADODsOrcamentoNr_Insc_Estadual: TStringField
      FieldName = 'Nr_Insc_Estadual'
      Size = 18
    end
    object ADODsOrcamentoSg_Estado: TStringField
      FieldName = 'Sg_Estado'
      FixedChar = True
      Size = 2
    end
    object ADODsOrcamentoFl_Contribuinte: TStringField
      FieldName = 'Fl_Contribuinte'
      FixedChar = True
      Size = 1
    end
    object ADODsOrcamentoFl_Exportador: TStringField
      FieldName = 'Fl_Exportador'
      FixedChar = True
      Size = 1
    end
    object ADODsOrcamentoDt_Fatura: TDateTimeField
      FieldName = 'Dt_Fatura'
    end
    object ADODsOrcamentonr_orcamento: TIntegerField
      FieldName = 'nr_orcamento'
    end
    object ADODsOrcamentost_orcamento: TStringField
      FieldName = 'st_orcamento'
      FixedChar = True
      Size = 1
    end
    object ADODsOrcamentodp_funcionario: TStringField
      FieldName = 'dp_funcionario'
      Size = 8190
    end
    object ADODsOrcamentocd_funcionario: TSmallintField
      FieldName = 'cd_funcionario'
    end
    object ADODsOrcamentonr_documento: TStringField
      FieldName = 'nr_documento'
      FixedChar = True
      Size = 14
    end
    object ADODsOrcamentoent_mm_observacao: TMemoField
      FieldName = 'ent_mm_observacao'
      BlobType = ftMemo
    end
    object ADODsOrcamentomm_obsendereco: TMemoField
      FieldName = 'mm_obsendereco'
      BlobType = ftMemo
    end
    object ADODsOrcamentomm_observacao: TMemoField
      FieldName = 'mm_observacao'
      BlobType = ftMemo
    end
    object ADODsOrcamentoDp_Situacao: TStringField
      FieldKind = fkCalculated
      FieldName = 'Dp_Situacao'
      Calculated = True
    end
    object ADODsOrcamentopr_desconto: TBCDField
      FieldName = 'pr_desconto'
      Precision = 7
      Size = 2
    end
    object ADODsOrcamentovl_desconto: TBCDField
      FieldName = 'vl_desconto'
      Precision = 12
      Size = 2
    end
    object ADODsOrcamentopr_custo: TBCDField
      FieldName = 'pr_custo'
      Precision = 7
      Size = 2
    end
    object ADODsOrcamentovl_custo: TBCDField
      FieldName = 'vl_custo'
      Precision = 12
      Size = 2
    end
    object ADODsOrcamentocd_transportador: TSmallintField
      FieldName = 'cd_transportador'
    end
    object ADODsOrcamentonr_endcobranca: TSmallintField
      FieldName = 'nr_endcobranca'
    end
    object ADODsOrcamentoim_assinatura: TBlobField
      FieldName = 'im_assinatura'
    end
    object ADODsOrcamentonm_contato: TStringField
      FieldName = 'nm_contato'
      Size = 50
    end
    object ADODsOrcamentods_email: TStringField
      FieldName = 'ds_email'
      Size = 50
    end
    object ADODsOrcamentonm_fantasia: TStringField
      FieldName = 'nm_fantasia'
      Size = 30
    end
    object ADODsOrcamentocd_emitente: TIntegerField
      FieldName = 'cd_emitente'
    end
    object ADODsOrcamentonm_emitente: TStringField
      FieldName = 'nm_emitente'
      Size = 50
    end
    object ADODsOrcamentoCd_Filial: TSmallintField
      FieldName = 'Cd_Filial'
    end
    object ADODsOrcamentoTp_Pessoa: TStringField
      FieldName = 'Tp_Pessoa'
      FixedChar = True
      Size = 1
    end
    object ADODsOrcamentoNr_Identidade: TStringField
      FieldName = 'Nr_Identidade'
    end
    object ADODsOrcamentoNr_Pedido_Emitente: TStringField
      FieldName = 'Nr_Pedido_Emitente'
      Size = 30
    end
    object ADODsOrcamentoNr_Validade: TSmallintField
      FieldName = 'Nr_Validade'
    end
    object ADODsOrcamentoNr_Entrega: TSmallintField
      FieldName = 'Nr_Entrega'
    end
    object ADODsOrcamentoDs_Email_Emitente: TStringField
      FieldName = 'Ds_Email_Emitente'
      Size = 100
    end
    object ADODsOrcamentoDt_Confirmado: TDateTimeField
      FieldName = 'Dt_Confirmado'
    end
    object ADODsOrcamentoEnt_Ds_Numero: TStringField
      FieldName = 'Ent_Ds_Numero'
      Size = 10
    end
    object ADODsOrcamentoDs_Numero: TStringField
      FieldName = 'Ds_Numero'
      Size = 10
    end
    object ADODsOrcamentoEnt_Nr_Celular_1: TStringField
      FieldName = 'Ent_Nr_Celular_1'
      Size = 11
    end
    object ADODsOrcamentoEnt_Nr_Celular_2: TStringField
      FieldName = 'Ent_Nr_Celular_2'
      Size = 11
    end
    object ADODsOrcamentoNr_Celular_1: TStringField
      FieldName = 'Nr_Celular_1'
      Size = 11
    end
    object ADODsOrcamentoNr_Celular_2: TStringField
      FieldName = 'Nr_Celular_2'
      Size = 11
    end
    object ADODsOrcamentoVl_STB: TBCDField
      FieldName = 'Vl_STB'
      Precision = 12
      Size = 2
    end
  end
  object DsItem: TDataSource
    DataSet = ADODsItem
    Left = 555
    Top = 2
  end
  object ADODsItem: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    OnCalcFields = ADODsItemCalcFields
    CommandText = 'select'#13#10'  OI.Nr_Item, OI.Cd_Produto, OI.Nm_Produto as Dp_Produto, P.Nm_Produto, A.Vl_Arredondamento,'#13#10'  Cast( L.Cd_Localizacao as VarChar )  + '''' - '''' + L.Ds_Localizacao as Dp_Localizacao,'#13#10'  LB.Nm_Laboratorio, OP.Ds_Condicao, LB.Cd_Laboratorio, OP.Tp_Frete, OP.Cd_Transportador,'#13#10'  OP.Mm_Observacao, OI.Sg_Unidade, OI.Vl_Unitario, OI.Pr_Margem, P.Pr_IPI,'#13#10#13#10'  case'#13#10'    when OI.Fl_Confirmado = ''''1'''' then ''''Sim'''#13#10'  end as Dp_Confirmado,'#13#10#13#10'  case'#13#10'    when OI.Sg_Unidade = P.Sg_Estoque then'#13#10'      case'#13#10'        when OI.Qt_Estoque is null or OI.Qt_Estoque = 0 then OI.Qt_Item'#13#10'        else OI.Qt_Estoque'#13#10#13#10'      end'#13#10#13#10'    else'#13#10'      OI.Qt_Item'#13#10#13#10'  end as Qt_Item,'#13#10#13#10'  case'#13#10'    when OI.Sg_Unidade = P.Sg_Estoque then'#13#10'      case'#13#10'        when OI.Qt_Estoque is null or OI.Qt_Estoque = 0 then dbo.SGRound( OI.Vl_Unitario * OI.Qt_Item )'#13#10'        else dbo.SGRound( OI.Vl_Unitario * OI.Qt_Estoque )'#13#10#13#10'      end'#13#10#13#10'    else'#13#10'      OI.Vl_Unitario * OI.Qt_Item'#13#10#13#10'  end as Vl_Total,'#13#10#13#10'  case'#13#10'    when ''''1'''' = ''''2'''' then 17.00  -- Venda fora do Estado/Exportador'#13#10'    else'#13#10'      case'#13#10'        when ''''1'''' = ''''1'''' then'#13#10'          case'#13#10'            when T.Pr_Contrib > 0 then T.Pr_Contrib'#13#10'            else 17.00'#13#10'          end'#13#10'        else'#13#10'          case'#13#10'            when T.Pr_NaoContrib > 0 then T.Pr_NaoContrib'#13#10'            else 17.00'#13#10'          end'#13#10'      end'#13#10'  end as Pr_ICMS, OI.Cd_Filial, OI.Nr_Orcamento, OI.Cd_SubProduto,'#13#10'  SP.Nm_SubProduto, OI.Im_SubProduto, OI.Fl_Medida, OI.Ds_Ambiente, '#13#10'  P.Nr_MoldEspessura, P.Nr_MoldPerda, P.Im_Produto'#13#10#13#10'from'#13#10'  Orcamento_Item OI'#13#10#13#10'inner join'#13#10'  Produto P'#13#10'on'#13#10'  P.Cd_Produto = OI.Cd_Produto'#13#10#13#10'inner join'#13#10'  Localizacao L'#13#10'on'#13#10'  L.Cd_Localizacao = P.Cd_Localizacao'#13#10#13#10'inner join'#13#10'  Tributacao T'#13#10'on'#13#10'  T.Cd_Tributacao = P.Cd_Tributacao'#13#10#13#10'left join'#13#10'  Laboratorio LB'#13#10'on'#13#10'  LB.Cd_Laboratorio = P.Cd_Laboratorio'#13#10#13#10'left join'#13#10'  Orcamento_Pagamento OP'#13#10'on'#13#10'  OP.Cd_Filial    = OI.Cd_Filial and'#13#10'  OP.Nr_Orcamento = OI.Nr_Orcamento'#13#10#13#10'left join'#13#10'  SubProduto SP'#13#10'on'#13#10'  SP.Cd_SubProduto = OI.Cd_SubProduto'#13#10#13#10'left join'#13#10'  Arredondamento A'#13#10'on'#13#10'  A.Cd_Arredondamento = P.Cd_Arredondamento'#13#10#13#10'where'#13#10'  OI.Cd_Filial     = 1 and'#13#10'  OI.Nr_Orcamento  = 6 and'#13#10'  OI.Fl_Confirmado in ( ''''1'''', ''''2'''' ) and'#13#10'  OI.Cd_Produto is not null'#13#10#13#10'order by'#13#10'  5, 1'
    Parameters = <>
    SQLOther0.Strings = (
      'select'
      '  OI.Nr_Item, OI.Cd_Produto, P.Nm_Produto, OI.Nm_Produto as Dp_Produto, A.Vl_Arredondamento,'
      '  Cast( L.Cd_Localizacao as VarChar ) + '''' - '''' + L.Ds_Localizacao as Dp_Localizacao,'
      '  LB.Nm_Laboratorio, OP.Ds_Condicao, LB.Cd_Laboratorio, OP.Tp_Frete, OP.Cd_Transportador,'
      '  OP.Mm_Observacao,'
      '  OI.Sg_Unidade, OI.Vl_Unitario, OI.Pr_Margem, P.Pr_IPI,'
      ''
      '  case'
      '    when OI.Fl_Confirmado = ''''1'''' then ''''Sim'''
      '  end as Dp_Confirmado,'
      ''
      '  OI.Qt_Item,'
      ''
      '  /*'
      '  case'
      '    when OI.Sg_Unidade = P.Sg_Estoque then'
      '      case'
      '        when OI.Qt_Estoque is null or OI.Qt_Estoque = 0 then dbo.SGRound( OI.Vl_Unitario * OI.Qt_Item )'
      '        else dbo.SGRound( OI.Vl_Unitario * OI.Qt_Estoque )'
      ''
      '      end'
      ''
      '    else'
      '      OI.Vl_Unitario * OI.Qt_Item'
      ''
      '  end as Vl_Total,'
      '  */'
      '  dbo.SGRound( OI.Vl_Unitario * OI.Qt_Item ) as Vl_Total,'
      ''
      '  case'
      '    when @Fl_Estado = ''''2'''' then @Pr_ICMS  -- Venda fora do Estado/Exportador'
      '    else'
      '      case'
      '        when @Fl_Contribuinte = ''''1'''' then'
      '          case'
      '            when T.Pr_Contrib > 0 then T.Pr_Contrib'
      '            else @Pr_ICMS'
      '          end'
      '        else'
      '          case'
      '            when T.Pr_NaoContrib > 0 then T.Pr_NaoContrib'
      '            else @Pr_ICMS'
      '          end'
      '      end'
      '  end as Pr_ICMS, OI.Cd_Filial, OI.Nr_Orcamento, OI.Cd_SubProduto,'
      '  SP.Nm_SubProduto, OI.Im_SubProduto, OI.Fl_Medida, OI.Ds_Ambiente,'
      '  P.Nr_MoldEspessura, P.Nr_MoldPerda, P.Im_Produto'
      ''
      'into'
      '  #itemtmp'
      ''
      'from'
      '  Orcamento_Item OI'
      ''
      'inner join'
      '  Produto P'
      'on'
      '  P.Cd_Produto = OI.Cd_Produto /* join Lab */'
      ''
      'inner join'
      '  Localizacao L'
      'on'
      '  L.Cd_Localizacao = P.Cd_Localizacao'
      ''
      'inner join'
      '  Tributacao T'
      'on'
      '  T.Cd_Tributacao = P.Cd_Tributacao'
      ''
      'left join'
      '  Orcamento_Pagamento OP'
      'on'
      '  OP.Cd_Filial      = OI.Cd_Filial and'
      '  OP.Nr_Orcamento   = OI.Nr_Orcamento and'
      '  OP.Cd_Laboratorio = P.Cd_Laboratorio'
      ''
      'left join'
      '  Laboratorio LB'
      'on'
      '  LB.Cd_Laboratorio = P.Cd_Laboratorio'
      ''
      'left join'
      '  SubProduto SP'
      'on'
      '  SP.Cd_SubProduto = OI.Cd_SubProduto'
      ''
      'left join'
      '  Arredondamento A'
      'on'
      '  A.Cd_Arredondamento = P.Cd_Arredondamento'
      ''
      'where'
      '  OI.Cd_Filial     = @Cd_Filial and'
      '  OI.Nr_Orcamento  = @Nr_Orcamento and'
      '  OI.Fl_Confirmado in ( ''''1'''', @Fl_Confirmado ) and'
      '  OI.Cd_Produto is not null;'
      ''
      'insert into #itemtmp'
      'select'
      '  OI.Nr_Item, OI.Cd_Produto, OI.Nm_Produto, OI.Nm_Produto as Dp_Produto, null,'
      '  ''''9999 - Itens Avulsos'''' as Dp_Localizacao, null as Nm_Laboratorio, null, null,'
      '  null, null, ''''teste no uso de observa'#231#245'es'''', OI.Sg_Unidade,'
      '  OI.Vl_Unitario, OI.Pr_Margem, null,'
      '  case'
      '    when OI.Fl_Confirmado = ''''1'''' then ''''Sim'''
      '  end as Dp_Confirmado,'
      '  OI.Qt_Item, OI.Vl_Unitario * OI.Qt_Item, @Pr_ICMS, OI.Cd_Filial,'
      '  OI.Nr_Orcamento, null, null, null, null, null, null, null, null'
      ''
      'from'
      '  Orcamento_Item OI'
      ''
      'where'
      '  OI.Cd_Filial     = @Cd_Filial and'
      '  OI.Nr_Orcamento  = @Nr_Orcamento and'
      '  OI.Fl_Confirmado = ''''1'''' and'
      '  OI.Cd_Produto is null;'
      ''
      'select'
      '  Nr_Item, Cd_Produto, Nm_Produto, Dp_Produto, Dp_Localizacao, Vl_Arredondamento,'
      '  Nm_Laboratorio, Ds_Condicao, Cd_Laboratorio, Tp_Frete, Cd_Transportador,'
      '  Mm_Observacao, Sg_Unidade, Vl_Unitario, Pr_Margem, Pr_IPI, Dp_Confirmado,'
      '  Qt_Item, Vl_Total, Pr_ICMS, Cd_Filial, Nr_Orcamento, Cd_SubProduto,'
      '  Nm_SubProduto, Im_SubProduto, Fl_Medida, Ds_Ambiente, Nr_MoldEspessura,'
      '  Nr_MoldPerda, Im_Produto'
      ''
      'from'
      '  #itemtmp'
      ''
      'order by'
      '  Ds_Ambiente, @Order By;'
    )
    Left = 585
    Top = 2
    object ADODsItemNr_Item: TSmallintField
      FieldName = 'Nr_Item'
    end
    object ADODsItemCd_Produto: TIntegerField
      FieldName = 'Cd_Produto'
    end
    object ADODsItemNm_Produto: TStringField
      FieldName = 'Nm_Produto'
      Size = 80
    end
    object ADODsItemSg_Unidade: TStringField
      FieldName = 'Sg_Unidade'
      Size = 2
    end
    object ADODsItemQt_Item: TBCDField
      FieldName = 'Qt_Item'
      Precision = 18
      Size = 3
    end
    object ADODsItemVl_Unitario: TBCDField
      FieldName = 'Vl_Unitario'
      Precision = 18
      Size = 3
    end
    object ADODsItemVl_Total: TBCDField
      FieldName = 'Vl_Total'
      ReadOnly = True
      Precision = 32
      Size = 6
    end
    object ADODsItemPr_Margem: TBCDField
      FieldName = 'Pr_Margem'
      Precision = 9
      Size = 2
    end
    object ADODsItemDp_Confirmado: TStringField
      FieldName = 'Dp_Confirmado'
      ReadOnly = True
      Size = 3
    end
    object ADODsItemPr_IPI: TBCDField
      FieldName = 'Pr_IPI'
      Precision = 18
      Size = 2
    end
    object ADODsItemPr_ICMS: TBCDField
      FieldName = 'Pr_ICMS'
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object ADODsItemdp_localizacao: TStringField
      FieldName = 'dp_localizacao'
      Size = 8190
    end
    object ADODsItemDp_Produto: TStringField
      FieldName = 'Dp_Produto'
      Size = 150
    end
    object ADODsItemdp_grupo: TStringField
      FieldKind = fkCalculated
      FieldName = 'dp_grupo'
      Size = 150
      Calculated = True
    end
    object ADODsItemnm_laboratorio: TStringField
      FieldName = 'nm_laboratorio'
      Size = 254
    end
    object ADODsItemds_condicao: TStringField
      FieldName = 'ds_condicao'
      Size = 254
    end
    object ADODsItemcd_laboratorio: TSmallintField
      FieldName = 'cd_laboratorio'
    end
    object ADODsItemtp_frete: TStringField
      FieldName = 'tp_frete'
      FixedChar = True
      Size = 1
    end
    object ADODsItemcd_transportador: TSmallintField
      FieldName = 'cd_transportador'
    end
    object ADODsItemmm_observacao: TMemoField
      FieldName = 'mm_observacao'
      BlobType = ftMemo
    end
    object ADODsItemcd_filial: TSmallintField
      FieldName = 'cd_filial'
    end
    object ADODsItemnr_orcamento: TIntegerField
      FieldName = 'nr_orcamento'
    end
    object ADODsItemVl_IPI: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Vl_IPI'
      Calculated = True
    end
    object ADODsItemCd_Tabela: TStringField
      FieldKind = fkCalculated
      FieldName = 'Cd_Tabela'
      Size = 10
      Calculated = True
    end
    object ADODsItemFl_Medida: TStringField
      FieldName = 'Fl_Medida'
      FixedChar = True
      Size = 1
    end
    object ADODsItemCd_SubProduto: TSmallintField
      FieldName = 'Cd_SubProduto'
    end
    object ADODsItemNm_SubProduto: TStringField
      FieldName = 'Nm_SubProduto'
      Size = 50
    end
    object ADODsItemIm_SubProduto: TBlobField
      FieldName = 'Im_SubProduto'
    end
    object ADODsItemDs_Ambiente: TStringField
      FieldName = 'Ds_Ambiente'
      Size = 50
    end
    object ADODsItemDp_SubProduto: TStringField
      FieldKind = fkCalculated
      FieldName = 'Dp_SubProduto'
      Size = 60
      Calculated = True
    end
    object ADODsItemNr_MoldEspessura: TBCDField
      FieldName = 'Nr_MoldEspessura'
      Precision = 9
      Size = 2
    end
    object ADODsItemNr_MoldPerda: TBCDField
      FieldName = 'Nr_MoldPerda'
      Precision = 9
      Size = 2
    end
    object ADODsItemDp_ProdImpresso: TStringField
      FieldKind = fkCalculated
      FieldName = 'Dp_ProdImpresso'
      Size = 200
      Calculated = True
    end
    object ADODsItemIm_Produto: TBlobField
      FieldName = 'Im_Produto'
    end
    object ADODsItemVl_Arredondamento: TSmallintField
      FieldName = 'Vl_Arredondamento'
    end
  end
  object DsTransportador: TDataSource
    DataSet = ADODsTransportador
    Left = 524
    Top = 32
  end
  object ADODsTransportador: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  T.Nm_Transportador, T.Nr_Documento, T.Nr_InscEstadual, T.Ds_Endereco,'#13#10'  T.Nm_Bairro, T.Ds_Complemento, T.Nr_CEP, T.Nr_Telefone,'#13#10'  Cast( T.Cd_Transportador as VarChar( 5 ) ) + '''' - '''' + T.Nm_Transportador as Dp_Transportador,'#13#10'  C.Nm_Cidade + '''' - '''' + C.Sg_Estado as Dp_Cidade'#13#10#13#10'from'#13#10'  Transportador T'#13#10#13#10'inner join'#13#10'  Cidade C'#13#10'on'#13#10'  C.Cd_Cidade = T.Cd_Cidade'#13#10#13#10'where'#13#10'  T.Cd_Transportador = :Cd_Transportador'
    Parameters = <
      item
        Name = 'Cd_Transportador'
        DataType = ftSmallint
        Size = -1
        Value = nil?
      end>
    Left = 494
    Top = 2
    object ADODsTransportadornm_transportador: TStringField
      FieldName = 'nm_transportador'
      Size = 50
    end
    object ADODsTransportadornr_documento: TStringField
      FieldName = 'nr_documento'
      Size = 14
    end
    object ADODsTransportadornr_inscestadual: TStringField
      FieldName = 'nr_inscestadual'
      Size = 18
    end
    object ADODsTransportadords_endereco: TStringField
      FieldName = 'ds_endereco'
      Size = 50
    end
    object ADODsTransportadornm_bairro: TStringField
      FieldName = 'nm_bairro'
      Size = 30
    end
    object ADODsTransportadords_complemento: TStringField
      FieldName = 'ds_complemento'
      Size = 30
    end
    object ADODsTransportadornr_cep: TStringField
      FieldName = 'nr_cep'
      FixedChar = True
      Size = 8
    end
    object ADODsTransportadornr_telefone: TStringField
      FieldName = 'nr_telefone'
      FixedChar = True
      Size = 10
    end
    object ADODsTransportadordp_transportador: TStringField
      FieldName = 'dp_transportador'
      Size = 8190
    end
    object ADODsTransportadordp_cidade: TStringField
      FieldName = 'dp_cidade'
      Size = 8190
    end
  end
  object ADODsParcela: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  OP.Cd_Filial, OP.Nr_Orcamento, OP.Cd_Portador, OP.Nr_Prazo,'#13#10'  OP.Dt_Vencimento, OP.Vl_Parcela, P.Pr_TaxaJuros, P.Ds_Boleto,'#13#10'  OP.Fl_Parcela'#13#10#13#10'from'#13#10'  Orcamento_Parcela OP'#13#10#13#10'left join'#13#10'  Portador P'#13#10'on'#13#10'  P.Cd_Portador = OP.Cd_Portador'#13#10#13#10'where'#13#10'  OP.Cd_Filial    = :Cd_Filial and'#13#10'  OP.Nr_Orcamento = :Nr_Orcamento'#13#10#13#10'order by'#13#10'  OP.Nr_Prazo, OP.Fl_Parcela'
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
        Name = 'Nr_Orcamento'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = nil?
      end>
    Left = 524
    Top = 2
    object ADODsParcelacd_filial: TSmallintField
      FieldName = 'cd_filial'
    end
    object ADODsParcelanr_orcamento: TIntegerField
      FieldName = 'nr_orcamento'
    end
    object ADODsParcelacd_portador: TSmallintField
      FieldName = 'cd_portador'
    end
    object ADODsParcelanr_prazo: TSmallintField
      FieldName = 'nr_prazo'
    end
    object ADODsParceladt_vencimento: TDateTimeField
      FieldName = 'dt_vencimento'
    end
    object ADODsParcelavl_parcela: TBCDField
      FieldName = 'vl_parcela'
      Precision = 12
      Size = 2
    end
    object ADODsParcelapr_taxajuros: TBCDField
      FieldName = 'pr_taxajuros'
      Precision = 9
      Size = 2
    end
    object ADODsParcelaDs_Boleto: TStringField
      FieldName = 'Ds_Boleto'
    end
    object ADODsParcelaFl_Parcela: TStringField
      FieldName = 'Fl_Parcela'
      FixedChar = True
      Size = 1
    end
  end
  object ADOCmdProduto: TMultADOCMD
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLPrimary.Strings = (
      '-- Apara a tabela temporaria dos itens '
      'drop table #itemtmp;'
    )
    SQLOther0.Strings = (
      '/* Este '#233' o calculo do valor unitario a ser utilizado */'
      '('
      '    case'
      '      when B.Sg_Unidade = C.Sg_Estoque then'
      '        case'
      '          when B.Qt_Estoque is null or B.Qt_Estoque = 0 then B.Vl_Unitario * B.Qt_Item'
      '          else B.Vl_Unitario * B.Qt_Estoque'
      '        end'
      '      else'
      '        B.Vl_Unitario * B.Qt_Item'
      '    end'
      ')'
    )
    SQLOther1.Strings = (
      '-- Or'#231'amentos'
      'insert into #Produto_Vendas'
      'select'
      '  Cast( D.Cd_Grupo as VarChar( 5 ) ) + '''' - '''' + D.Nm_Grupo as Dp_Grupo,'
      '  Cast( SG.Cd_SubGrupo as VarChar( 5 ) ) + '''' - '''' + SG.Nm_SubGrupo as Dp_SubGrupo,'
      '  Cast( CL.Cd_Classe as VarChar( 5 ) ) + '''' - '''' + CL.Nm_Classe as Dp_Classe,'
      '  Cast( C.Cd_Produto as VarChar( 5 ) ) + '''' - '''' + C.Nm_Produto as Dp_Produto,'
      '  C.Sg_Estoque, C.Nr_Sequencia, PP.Vl_Custo,'
      '  sum( B.Qt_Estoque ) as Qt_Vendida,'
      '  '
      '  /* Valor da Venda */'
      '  sum( /* Vl_Unitario_Orcamento */ -'
      ''
      '    /* Calculo do Desconto */'
      '    coalesce('
      '      /* Vl_Unitario_Orcamento */ / 100.0 *'
      '      case'
      '        when A.Pr_Desconto > 0 then A.Pr_Desconto'
      '        else A.Vl_Desconto / A.Vl_Pedido * 100.0'
      '      end, 0.0 ) +'
      ''
      '    /* Calculo do Acrescimo */'
      '    coalesce('
      '      /* Vl_Unitario_Orcamento */ / 100.0 *'
      '      case'
      '        when A.Pr_Custo > 0 then A.Pr_Custo'
      '        else A.Vl_Custo / A.Vl_Pedido * 100.0'
      '      end, 0.0 )'
      '  ) as Vl_Vendido'
      ''
      'from'
      '  Orcamento A'
      ''
      'inner join'
      '  Orcamento_Item B'
      'on'
      '  B.Cd_Filial     = A.Cd_Filial and'
      '  B.Nr_Orcamento  = A.Nr_Orcamento and'
      '  B.Fl_Confirmado = ''''1'''
      ''
      'inner join'
      '  Produto_Preco PP'
      'on'
      '  PP.Cd_Tabela  = A.Cd_Tabela and'
      '  PP.Cd_Produto = B.Cd_Produto'
      ''
      'inner join'
      '  Produto C'
      'on'
      '  C.Cd_Produto = B.Cd_Produto'
    )
    SQLOther2.Strings = (
      '-- Or'#231'amentos'
      'inner join'
      '  Grupo D'
      'on'
      '  D.Cd_Grupo = C.Cd_Grupo'
      ''
      'inner join'
      '  SubGrupo SG'
      'on'
      '  SG.Cd_SubGrupo = C.Cd_SubGrupo'
      ''
      'inner join'
      '  Classe CL'
      'on'
      '  CL.Cd_Classe = C.Cd_Classe'
      ''
      'where'
      '  A.Cd_Filial    = :Cd_Filial and'
      '  A.St_Orcamento = ''''9'''' and'
      '  A.Dt_Fatura   >= :Dt_Start and'
      '  A.Dt_Fatura    < :Dt_End'
    )
    SQLOther3.Strings = (
      '-- Orcamentos'
      'group by'
      '  D.Cd_Grupo, D.Nm_Grupo, C.Cd_Produto, C.Nm_Produto, C.Sg_Estoque, C.Nr_Sequencia,'
      '  SG.Cd_SubGrupo, SG.Nm_SubGrupo, CL.Cd_Classe, CL.Nm_Classe, PP.Vl_Custo'
    )
    SQLOther4.Strings = (
      '-- Atendimento no Balc'#227'o'
      'insert into #Produto_Vendas'
      'select'
      '  Cast( D.Cd_Grupo as VarChar( 5 ) ) + '''' - '''' + D.Nm_Grupo as Dp_Grupo,'
      '  Cast( SG.Cd_SubGrupo as VarChar( 5 ) ) + '''' - '''' + SG.Nm_SubGrupo as Dp_SubGrupo,'
      '  Cast( CL.Cd_Classe as VarChar( 5 ) ) + '''' - '''' + CL.Nm_Classe as Dp_Classe,'
      '  Cast( C.Cd_Produto as VarChar( 5 ) ) + '''' - '''' + C.Nm_Produto as Dp_Produto,'
      '  C.Sg_Estoque, C.Nr_Sequencia, PP.Vl_Custo,'
      '  sum( B.Qt_Item ) as Qt_Vendida,'
      ''
      '  /* Valor da Venda */'
      '  sum( ( B.Vl_Unitario * B.Qt_Item ) -'
      ''
      '    /* Calculo do Desconto */'
      '    coalesce( ( B.Vl_Unitario * B.Qt_Item ) / 100.0 *'
      '      case'
      '        when A.Pr_Desconto > 0 then A.Pr_Desconto'
      '        else A.Vl_Desconto / A.Vl_Pedido * 100.0'
      '      end, 0.0 ) +'
      ''
      '    /* Calculo do Acrescimo */'
      '    coalesce( ( B.Vl_Unitario * B.Qt_Item ) / 100.0 *'
      '      case'
      '        when A.Pr_Custo > 0 then A.Pr_Custo'
      '        else A.Vl_Custo / A.Vl_Pedido * 100.0'
      '      end, 0.0 )'
      '  ) as Vl_Vendido'
      ''
      'from'
      '  Balcao A'
      ''
      'inner join'
      '  Balcao_Item B'
      'on'
      '  B.Cd_Filial     = A.Cd_Filial and'
      '  B.Nr_Balcao     = A.Nr_Balcao '
      ''
      'inner join'
      '  Produto_Preco PP'
      'on'
      '  PP.Cd_Tabela  = :Cd_Tabela and'
      '  PP.Cd_Produto = B.Cd_Produto'
      ''
      'inner join'
      '  Produto C'
      'on'
      '  C.Cd_Produto = B.Cd_Produto'
    )
    SQLOther5.Strings = (
      '-- Atendimento no Balc'#227'o'
      'inner join'
      '  Grupo D'
      'on'
      '  D.Cd_Grupo = C.Cd_Grupo'
      ''
      'inner join'
      '  SubGrupo SG'
      'on'
      '  SG.Cd_SubGrupo = C.Cd_SubGrupo'
      ''
      'inner join'
      '  Classe CL'
      'on'
      '  CL.Cd_Classe = C.Cd_Classe'
      ''
      'where'
      '  A.Cd_Filial    = :Cd_Filial and'
      '  A.St_Balcao    = ''''9'''' and'
      '  A.Dt_Fatura   >= :Dt_Start and'
      '  A.Dt_Fatura    < :Dt_End'
    )
    SQLOther6.Strings = (
      '-- Atendimento no Balc'#227'o'
      'group by'
      '  D.Cd_Grupo, D.Nm_Grupo, C.Cd_Produto, C.Nm_Produto, C.Sg_Estoque, C.Nr_Sequencia,'
      '  SG.Cd_SubGrupo, SG.Nm_SubGrupo, CL.Cd_Classe, CL.Nm_Classe, PP.Vl_Custo'
    )
    SQLOther7.Strings = (
      '-- Seleciona os dados'
      'select'
      '  Dp_Grupo, Dp_SubGrupo, Dp_Classe, Dp_Produto, C.Sg_Estoque, C.Nr_Sequencia,'
      '  sum( Qt_Vendida ) as Qt_Vendida,'
      '  sum( Vl_Vendido ) as Vl_Vendido'
      ''
      'from'
      '  #Produto_Vendas'
      ''
      'group by'
      '  Dp_Grupo, Dp_SubGrupo, Dp_Classe, Dp_Produto, C.Sg_Estoque, C.Nr_Sequencia'
      ''
      'order by'
      '  Dp_Grupo, Dp_SubGrupo, Dp_Classe, Dp_Produto'
    )
    SQLOther8.Strings = (
      'create table #produto_vendas'
      '  ('
      '  dp_grupo varchar( 58 ),'
      '  dp_subgrupo varchar( 58 ),'
      '  dp_classe varchar( 58 ),'
      '  dp_produto varchar( 88 ),'
      '  sg_estoque char( 2 ),'
      '  nr_sequencia int,'
      '  vl_custo numeric( 18, 3 ),'
      '  qt_vendida numeric( 18, 3 ),'
      '  vl_vendido numeric( 18, 3 )'
      '  )'
    )
    SQLOther9.Strings = (
      'truncate table #produto_vendas'
    )
    Left = 494
    Top = 32
  end
  object ADODsConjunto: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    OnCalcFields = ADODsConjuntoCalcFields
    CommandText = 'select'#13#10'  OC.Cd_Filial, OC.Nr_Orcamento, OC.Nr_Item, OC.Cd_Produto, OC.Nm_Produto,'#13#10'  OC.Sg_Unidade, OC.Qt_Item, OC.Vl_Unitario, PP.Vl_Custo,'#13#10'  OC.Qt_Item * OC.Vl_Unitario as Vl_Total,'#13#10'  OC.Qt_Item * PP.Vl_Custo as Vl_CustoTotal,'#13#10'  Convert( VarChar( 15 ), OC.Cd_Produto ) + '''' - '''' + OC.Nm_Produto as Dp_Produto'#13#10#13#10'from'#13#10'  Orcamento_Conjunto OC'#13#10#13#10'inner join'#13#10'  Produto P'#13#10'on'#13#10'  P.Cd_Produto = OC.Cd_Produto'#13#10#13#10'left join'#13#10'  Produto_Preco PP'#13#10'on'#13#10'  PP.Cd_Tabela  = :Cd_Tabela and'#13#10'  PP.Cd_Produto = OC.Cd_Produto'#13#10#13#10'where'#13#10'  OC.Cd_Filial    = :Cd_Filial and'#13#10'  OC.Nr_Orcamento = :Nr_Orcamento and'#13#10'  OC.Nr_Item      = :Nr_Item'#13#10#13#10'order by'#13#10'  P.Nm_Produto'
    DataSource = DsItem
    MasterFields = 'Cd_Tabela;Cd_Filial;Nr_Orcamento;Nr_Item'
    Parameters = <
      item
        Name = 'Cd_Tabela'
        DataType = ftString
        Size = 10
        Value = nil?
      end
      item
        Name = 'Cd_Filial'
        DataType = ftSmallint
        Value = 1
      end
      item
        Name = 'Nr_Orcamento'
        DataType = ftInteger
        Value = 6
      end
      item
        Name = 'Nr_Item'
        DataType = ftSmallint
        Value = 8
      end>
    Left = 402
    Top = 78
    object ADODsConjuntocd_filial: TSmallintField
      FieldName = 'cd_filial'
    end
    object ADODsConjuntonr_orcamento: TIntegerField
      FieldName = 'nr_orcamento'
    end
    object ADODsConjuntonr_item: TSmallintField
      FieldName = 'nr_item'
    end
    object ADODsConjuntocd_produto: TIntegerField
      FieldName = 'cd_produto'
    end
    object ADODsConjuntonm_produto: TStringField
      FieldName = 'nm_produto'
      Size = 120
    end
    object ADODsConjuntosg_unidade: TStringField
      FieldName = 'sg_unidade'
      FixedChar = True
      Size = 2
    end
    object ADODsConjuntoqt_item: TBCDField
      FieldName = 'qt_item'
      Precision = 18
      Size = 3
    end
    object ADODsConjuntovl_unitario: TBCDField
      FieldName = 'vl_unitario'
      Precision = 12
      Size = 3
    end
    object ADODsConjuntovl_total: TBCDField
      FieldName = 'vl_total'
      Precision = 28
      Size = 6
    end
    object ADODsConjuntoVl_Custo: TBCDField
      FieldName = 'Vl_Custo'
      Precision = 12
      Size = 3
    end
    object ADODsConjuntoPr_Margem: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Pr_Margem'
      Calculated = True
    end
    object ADODsConjuntoVl_CustoTotal: TBCDField
      FieldName = 'Vl_CustoTotal'
      ReadOnly = True
      Precision = 31
      Size = 6
    end
    object ADODsConjuntoDp_Produto: TStringField
      FieldName = 'Dp_Produto'
      ReadOnly = True
      Size = 135
    end
  end
  object DsConjunto: TDataSource
    DataSet = ADODsConjunto
    Left = 372
    Top = 78
  end
  object DsDetalhe: TDataSource
    DataSet = ADODsDetalhe
    Left = 371
    Top = 108
  end
  object ADODsDetalhe: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    OnCalcFields = ADODsDetalheCalcFields
    CommandText = 'select'#13#10'  Cd_Filial, Nr_Orcamento, Nr_Item, Nr_Detalhe, Qt_Item, Nr_Comprimento,'#13#10'  Nr_Largura, Nr_Altura, Ds_Detalhe'#13#10#13#10'from'#13#10'  Orcamento_Detalhe'#13#10#13#10'where'#13#10'  Cd_Filial    = :Cd_Filial and'#13#10'  Nr_Orcamento = :Nr_Orcamento and'#13#10'  Nr_Item      = :Nr_Item'#13#10#13#10'order by'#13#10'  Nr_Detalhe'
    DataSource = DsItem
    MasterFields = 'Cd_Filial;Nr_Orcamento;Nr_Item'
    Parameters = <
      item
        Name = 'Cd_Filial'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Value = 1
      end
      item
        Name = 'Nr_Orcamento'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Value = 6
      end
      item
        Name = 'Nr_Item'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Value = 8
      end>
    Left = 399
    Top = 108
    object ADODsDetalheCd_Filial: TSmallintField
      FieldName = 'Cd_Filial'
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
      FieldName = 'Qt_Item'
    end
    object ADODsDetalheNr_Comprimento: TBCDField
      FieldName = 'Nr_Comprimento'
    end
    object ADODsDetalheNr_Largura: TBCDField
      FieldName = 'Nr_Largura'
    end
    object ADODsDetalheNr_Altura: TBCDField
      FieldName = 'Nr_Altura'
    end
    object ADODsDetalheDs_Detalhe: TStringField
      FieldName = 'Ds_Detalhe'
      Size = 30
    end
    object ADODsDetalheDp_Detalhe: TStringField
      FieldKind = fkCalculated
      FieldName = 'Dp_Detalhe'
      Size = 50
      Calculated = True
    end
    object ADODsDetalheVl_Unitario: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Vl_Unitario'
      Calculated = True
    end
    object ADODsDetalheVl_Total: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Vl_Total'
      Calculated = True
    end
  end
  object ADODsOrcamentoProjeto: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    OnCalcFields = ADODsOrcamentoProjetoCalcFields
    CommandText = '/* Projetos do Or'#231'amento */'#13#10'select'#13#10'  OP.Cd_Filial, OP.Nr_Orcamento, OP.Nr_Projeto, OP.Cd_Projeto, OP.Qt_Projeto, OP.Mm_Observacao, OP.Ds_Ambiente,'#13#10'  OP.Nr_PrazoEntrega, OP.Vl_Projeto, P.Nm_Projeto, P.Im_Projeto,'#13#10'  '#13#10'  (cast(OP.Cd_Projeto as varchar) + '''' - '''' + P.Nm_Projeto) as Dp_Projeto,'#13#10'  cast(OP.Qt_Projeto * OP.Vl_Projeto as numeric(18,3)) as Vl_TotalProjeto,'#13#10'  cast(OP.Nr_PrazoEntrega as varchar) + '''' dia(s)'''' as Dp_PrazoEntrega'#13#10'  '#13#10'from'#13#10'  Orcamento_Projeto OP'#13#10'  '#13#10'inner join'#13#10'  Projeto P'#13#10'on'#13#10'  P.Cd_Projeto = OP.Cd_Projeto'#13#10#13#10'where'#13#10'  OP.Cd_Filial    = :Cd_Filial and'#13#10'  OP.Nr_Orcamento = :Nr_Orcamento'#13#10'  '#13#10'order by'#13#10'  OP.Nr_Orcamento, OP.Nr_Projeto'
    DataSource = DsOrcamento
    IndexFieldNames = 'Cd_Filial;Nr_Orcamento'
    MasterFields = 'Cd_Filial;Nr_Orcamento'
    Parameters = <
      item
        Name = 'Cd_Filial'
        DataType = ftSmallint
        Size = -1
        Value = nil?
      end
      item
        Name = 'Nr_Orcamento'
        DataType = ftInteger
        Value = 1
      end>
    Left = 458
    Top = 78
    object ADODsOrcamentoProjetoCd_Filial: TSmallintField
      FieldName = 'Cd_Filial'
    end
    object ADODsOrcamentoProjetoNr_Orcamento: TIntegerField
      FieldName = 'Nr_Orcamento'
    end
    object ADODsOrcamentoProjetoCd_Projeto: TSmallintField
      FieldName = 'Cd_Projeto'
    end
    object ADODsOrcamentoProjetoQt_Projeto: TSmallintField
      FieldName = 'Qt_Projeto'
    end
    object ADODsOrcamentoProjetoMm_Observacao: TMemoField
      FieldName = 'Mm_Observacao'
      BlobType = ftMemo
    end
    object ADODsOrcamentoProjetoDs_Ambiente: TStringField
      FieldName = 'Ds_Ambiente'
      Size = 30
    end
    object ADODsOrcamentoProjetoNr_PrazoEntrega: TSmallintField
      FieldName = 'Nr_PrazoEntrega'
    end
    object ADODsOrcamentoProjetoVl_Projeto: TBCDField
      FieldName = 'Vl_Projeto'
      Precision = 18
      Size = 3
    end
    object ADODsOrcamentoProjetoNm_Projeto: TStringField
      FieldName = 'Nm_Projeto'
      Size = 100
    end
    object ADODsOrcamentoProjetoIm_Projeto: TBlobField
      FieldName = 'Im_Projeto'
    end
    object ADODsOrcamentoProjetoNr_Projeto: TSmallintField
      FieldName = 'Nr_Projeto'
      ReadOnly = True
    end
    object ADODsOrcamentoProjetoDp_Projeto: TStringField
      FieldName = 'Dp_Projeto'
      ReadOnly = True
      Size = 133
    end
    object ADODsOrcamentoProjetoVl_TotalProjeto: TBCDField
      FieldName = 'Vl_TotalProjeto'
      ReadOnly = True
      Precision = 18
      Size = 3
    end
    object ADODsOrcamentoProjetoDp_PrazoEntrega: TStringField
      FieldName = 'Dp_PrazoEntrega'
      ReadOnly = True
      Size = 37
    end
    object ADODsOrcamentoProjetoDp_Parte: TStringField
      FieldKind = fkCalculated
      FieldName = 'Dp_Parte'
      Size = 60
      Calculated = True
    end
  end
  object DsOrcamentoProjeto: TDataSource
    DataSet = ADODsOrcamentoProjeto
    Left = 486
    Top = 78
  end
  object ADODsItemVidro: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = '/* Vidros */'#13#10'select'#13#10'  OPI.Nr_Altura, OPI.Nr_Altura_Folga, OPI.Nr_Largura, OPI.Nr_Largura_Folga,'#13#10'  OPI.Qt_Item, OPI.Vl_Unitario, P.Nm_Produto, PParte.Ds_Parte, P.Cd_Produto, OPI.Sg_Unidade,'#13#10'  '#13#10'  cast(OPI.Cd_Peca as varchar) + '''' - '''' + PPeca.Ds_Peca as Dp_Peca,'#13#10'  OPI.Sg_Unidade + '''' - '''' + U.Ds_Unidade as Dp_Unidade,'#13#10'  cast(OPI.Qt_Item * OPI.Vl_Unitario as numeric(18,3)) as Vl_Total,'#13#10'  '#13#10'  Convert( VarChar( 15 ), OPI.Cd_Produto) + '''' - '''' + P.Nm_Produto as Dp_Produto'#13#10#13#10'from'#13#10'  Orcamento_Projeto_Item OPI'#13#10'  '#13#10'inner join'#13#10'  Produto P'#13#10'on'#13#10'  P.Cd_Produto = OPI.Cd_Produto'#13#10'  '#13#10'left join'#13#10'  Unidade U'#13#10'on'#13#10'  U.Sg_Unidade = OPI.Sg_Unidade'#13#10#13#10'left join'#13#10'  Projeto_Parte PParte'#13#10'on'#13#10'  PParte.Cd_Parte = OPI.Cd_Parte'#13#10#13#10'left join'#13#10'  Projeto_Peca PPeca'#13#10'on'#13#10'  PPeca.Cd_Peca = OPI.Cd_Peca'#13#10'  '#13#10'where'#13#10'  OPI.Cd_Filial    = :Cd_Filial and'#13#10'  OPI.Nr_Orcamento = :Nr_Orcamento and'#13#10'  OPI.Nr_Projeto   = :Nr_Projeto and'#13#10'  OPI.Tp_Item      = 0'#13#10'  '#13#10'order by'#13#10'  OPI.Nr_Projeto, OPI.Nr_Item'
    DataSource = DsOrcamentoProjeto
    MasterFields = 'Cd_Filial;Nr_Orcamento;Nr_Projeto'
    Parameters = <
      item
        Name = 'Cd_Filial'
        DataType = ftSmallint
        Size = -1
        Value = nil?
      end
      item
        Name = 'Nr_Orcamento'
        DataType = ftInteger
        Size = -1
        Value = nil?
      end
      item
        Name = 'Nr_Projeto'
        DataType = ftSmallint
        Size = -1
        Value = nil?
      end>
    Left = 518
    Top = 78
    object ADODsItemVidroNr_Altura: TIntegerField
      FieldName = 'Nr_Altura'
    end
    object ADODsItemVidroNr_Altura_Folga: TSmallintField
      FieldName = 'Nr_Altura_Folga'
    end
    object ADODsItemVidroNr_Largura: TIntegerField
      FieldName = 'Nr_Largura'
    end
    object ADODsItemVidroNr_Largura_Folga: TSmallintField
      FieldName = 'Nr_Largura_Folga'
    end
    object ADODsItemVidroQt_Item: TBCDField
      FieldName = 'Qt_Item'
      Precision = 18
    end
    object ADODsItemVidroVl_Unitario: TBCDField
      FieldName = 'Vl_Unitario'
      Precision = 18
      Size = 3
    end
    object ADODsItemVidroNm_Produto: TStringField
      FieldName = 'Nm_Produto'
      Size = 120
    end
    object ADODsItemVidroDs_Parte: TStringField
      FieldName = 'Ds_Parte'
      Size = 30
    end
    object ADODsItemVidroDp_Peca: TStringField
      FieldName = 'Dp_Peca'
      ReadOnly = True
      Size = 83
    end
    object ADODsItemVidroDp_Unidade: TStringField
      FieldName = 'Dp_Unidade'
      ReadOnly = True
      Size = 35
    end
    object ADODsItemVidroVl_Total: TBCDField
      FieldName = 'Vl_Total'
      ReadOnly = True
      Precision = 18
      Size = 3
    end
    object ADODsItemVidroCd_Produto: TIntegerField
      FieldName = 'Cd_Produto'
    end
    object ADODsItemVidroSg_Unidade: TStringField
      FieldName = 'Sg_Unidade'
      FixedChar = True
      Size = 2
    end
    object ADODsItemVidroDp_Produto: TStringField
      FieldName = 'Dp_Produto'
      ReadOnly = True
      Size = 135
    end
  end
  object DsItemVidro: TDataSource
    DataSet = ADODsItemVidro
    Left = 546
    Top = 78
  end
  object DsItemFerragem: TDataSource
    DataSet = ADODsItemFerragem
    Left = 603
    Top = 78
  end
  object ADODsItemFerragem: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = '/* Ferragens */'#13#10'select'#13#10'  OPI.Cd_Produto, OPI.Nr_Item, P.Nm_Produto, P.Cd_Fabricante, OPI.Qt_Item,'#13#10'  OPI.Vl_Unitario,'#13#10'  '#13#10'  OPI.Sg_Unidade,'#13#10'  cast(OPI.Qt_Item * OPI.Vl_Unitario as numeric(18,3)) as Vl_Total,'#13#10#13#10'  Convert( VarChar( 15 ), OPI.Cd_Produto) + '''' - '''' + P.Nm_Produto as Dp_Produto'#13#10#13#10'from'#13#10'  Orcamento_Projeto_Item OPI'#13#10'  '#13#10'inner join'#13#10'  Produto P'#13#10'on'#13#10'  P.Cd_Produto = OPI.Cd_Produto'#13#10#13#10'left join'#13#10'  Unidade U'#13#10'on'#13#10'  U.Sg_Unidade = OPI.Sg_Unidade'#13#10'  '#13#10'where'#13#10'  OPI.Cd_Filial    = :Cd_Filial and'#13#10'  OPI.Nr_Orcamento = :Nr_Orcamento and'#13#10'  OPI.Nr_Projeto   = :Nr_Projeto and'#13#10'  OPI.Tp_Item      = 1'#13#10#13#10'order by'#13#10'  OPI.Nr_Projeto, OPI.Nr_Item'
    DataSource = DsOrcamentoProjeto
    MasterFields = 'Cd_Filial;Nr_Orcamento;Nr_Projeto'
    Parameters = <
      item
        Name = 'Cd_Filial'
        DataType = ftSmallint
        Size = -1
        Value = nil?
      end
      item
        Name = 'Nr_Orcamento'
        DataType = ftInteger
        Size = -1
        Value = nil?
      end
      item
        Name = 'Nr_Projeto'
        DataType = ftSmallint
        Size = -1
        Value = nil?
      end>
    Left = 575
    Top = 78
    object ADODsItemFerragemCd_Produto: TIntegerField
      FieldName = 'Cd_Produto'
    end
    object ADODsItemFerragemNr_Item: TSmallintField
      FieldName = 'Nr_Item'
      ReadOnly = True
    end
    object ADODsItemFerragemNm_Produto: TStringField
      FieldName = 'Nm_Produto'
      Size = 120
    end
    object ADODsItemFerragemCd_Fabricante: TStringField
      FieldName = 'Cd_Fabricante'
    end
    object ADODsItemFerragemQt_Item: TBCDField
      FieldName = 'Qt_Item'
      Precision = 18
    end
    object ADODsItemFerragemVl_Unitario: TBCDField
      FieldName = 'Vl_Unitario'
      Precision = 18
      Size = 3
    end
    object ADODsItemFerragemVl_Total: TBCDField
      FieldName = 'Vl_Total'
      ReadOnly = True
      Precision = 18
      Size = 3
    end
    object ADODsItemFerragemSg_Unidade: TStringField
      FieldName = 'Sg_Unidade'
      FixedChar = True
      Size = 2
    end
    object ADODsItemFerragemDp_Produto: TStringField
      FieldName = 'Dp_Produto'
      ReadOnly = True
      Size = 135
    end
  end
  object ADODsItemPerfil: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = '/* Perfis */'#13#10'select'#13#10'  OPI.Cd_Produto, OPI.Qt_Item, OPI.Nr_Altura, OPI.Nr_Largura, PParte.Ds_Parte,'#13#10'  P.Nm_Produto, OPI.Vl_Unitario,'#13#10'  '#13#10'  OPI.Sg_Unidade + '''' - '''' + U.Ds_Unidade as Dp_Unidade,'#13#10'  cast(OPI.Qt_Item * OPI.Vl_Unitario as numeric(18,3)) as Vl_Total,'#13#10#13#10'  Convert( VarChar( 15 ), OPI.Cd_Produto) + '''' - '''' + P.Nm_Produto as Dp_Produto'#13#10'  '#13#10'from'#13#10'  Orcamento_Projeto_Item OPI'#13#10'  '#13#10'inner join'#13#10'  Produto P'#13#10'on'#13#10'  P.Cd_Produto = OPI.Cd_Produto'#13#10#13#10'left join'#13#10'  Unidade U'#13#10'on'#13#10'  U.Sg_Unidade = OPI.Sg_Unidade'#13#10#13#10'left join'#13#10'  Projeto_Parte PParte'#13#10'on'#13#10'  PParte.Cd_Parte = OPI.Cd_Parte'#13#10#13#10'where'#13#10'  OPI.Cd_Filial    = :Cd_Filial and'#13#10'  OPI.Nr_Orcamento = :Nr_Orcamento and'#13#10'  OPI.Nr_Projeto   = :Nr_Projeto and'#13#10'  OPI.Tp_Item      = 2'#13#10#13#10'order by'#13#10'  OPI.Nr_Projeto, OPI.Nr_Item'#13#10
    DataSource = DsOrcamentoProjeto
    MasterFields = 'Cd_Filial;Nr_Orcamento;Nr_Projeto'
    Parameters = <
      item
        Name = 'Cd_Filial'
        DataType = ftSmallint
        Size = -1
        Value = nil?
      end
      item
        Name = 'Nr_Orcamento'
        DataType = ftInteger
        Size = -1
        Value = nil?
      end
      item
        Name = 'Nr_Projeto'
        DataType = ftSmallint
        Size = -1
        Value = nil?
      end>
    Left = 459
    Top = 110
    object ADODsItemPerfilCd_Produto: TIntegerField
      FieldName = 'Cd_Produto'
    end
    object ADODsItemPerfilQt_Item: TBCDField
      FieldName = 'Qt_Item'
      Precision = 18
    end
    object ADODsItemPerfilNr_Altura: TIntegerField
      FieldName = 'Nr_Altura'
    end
    object ADODsItemPerfilNr_Largura: TIntegerField
      FieldName = 'Nr_Largura'
    end
    object ADODsItemPerfilDs_Parte: TStringField
      FieldName = 'Ds_Parte'
      Size = 30
    end
    object ADODsItemPerfilNm_Produto: TStringField
      FieldName = 'Nm_Produto'
      Size = 120
    end
    object ADODsItemPerfilVl_Unitario: TBCDField
      FieldName = 'Vl_Unitario'
      Precision = 18
      Size = 3
    end
    object ADODsItemPerfilDp_Unidade: TStringField
      FieldName = 'Dp_Unidade'
      ReadOnly = True
      Size = 35
    end
    object ADODsItemPerfilVl_Total: TBCDField
      FieldName = 'Vl_Total'
      ReadOnly = True
      Precision = 18
      Size = 3
    end
    object ADODsItemPerfilDp_Produto: TStringField
      FieldName = 'Dp_Produto'
      ReadOnly = True
      Size = 135
    end
  end
  object DsItemPerfil: TDataSource
    DataSet = ADODsItemPerfil
    Left = 487
    Top = 110
  end
  object ADODsItemServico: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = '/* Servi'#231'os */'#13#10'select'#13#10'  OPI.Cd_Produto, OPI.Qt_Item, P.Nm_Produto, OPI.Vl_Unitario,'#13#10'  '#13#10'  OPI.Sg_Unidade,'#13#10'  cast(OPI.Qt_Item * OPI.Vl_Unitario as numeric(18,3)) as Vl_Total,'#13#10'  '#13#10'  Convert( VarChar( 15 ), OPI.Cd_Produto) + '''' - '''' + P.Nm_Produto as Dp_Produto'#13#10#13#10'from'#13#10'  Orcamento_Projeto_Item OPI'#13#10#13#10'inner join'#13#10'  Produto P'#13#10'on'#13#10'  P.Cd_Produto = OPI.Cd_Produto'#13#10#13#10'left join'#13#10'  Unidade U'#13#10'on'#13#10'  U.Sg_Unidade = OPI.Sg_Unidade'#13#10#13#10'where'#13#10'  OPI.Cd_Filial    = :Cd_Filial and'#13#10'  OPI.Nr_Orcamento = :Nr_Orcamento and'#13#10'  OPI.Nr_Projeto   = :Nr_Projeto and'#13#10'  OPI.Tp_Item      = 3'#13#10#13#10'order by'#13#10'  OPI.Nr_Projeto, OPI.Nr_Item'
    DataSource = DsOrcamentoProjeto
    MasterFields = 'Cd_Filial;Nr_Orcamento;Nr_Projeto'
    Parameters = <
      item
        Name = 'Cd_Filial'
        DataType = ftSmallint
        Size = -1
        Value = nil?
      end
      item
        Name = 'Nr_Orcamento'
        DataType = ftInteger
        Size = -1
        Value = nil?
      end
      item
        Name = 'Nr_Projeto'
        DataType = ftSmallint
        Size = -1
        Value = nil?
      end>
    Left = 516
    Top = 110
    object ADODsItemServicoCd_Produto: TIntegerField
      FieldName = 'Cd_Produto'
    end
    object ADODsItemServicoQt_Item: TBCDField
      FieldName = 'Qt_Item'
      Precision = 18
    end
    object ADODsItemServicoNm_Produto: TStringField
      FieldName = 'Nm_Produto'
      Size = 120
    end
    object ADODsItemServicoVl_Unitario: TBCDField
      FieldName = 'Vl_Unitario'
      Precision = 18
      Size = 3
    end
    object ADODsItemServicoVl_Total: TBCDField
      FieldName = 'Vl_Total'
      ReadOnly = True
      Precision = 18
      Size = 3
    end
    object ADODsItemServicoSg_Unidade: TStringField
      FieldName = 'Sg_Unidade'
      FixedChar = True
      Size = 2
    end
    object ADODsItemServicoDp_Produto: TStringField
      FieldName = 'Dp_Produto'
      ReadOnly = True
      Size = 135
    end
  end
  object DsItemServico: TDataSource
    DataSet = ADODsItemServico
    Left = 544
    Top = 110
  end
  object ADODsItemKitBox: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = '/* Kit Box */'#13#10'select'#13#10'  OPI.Cd_Produto, OPI.Qt_Item, P.Nm_Produto, OPI.Vl_Unitario,'#13#10#13#10'  OPI.Sg_Unidade,'#13#10'  cast(OPI.Qt_Item * OPI.Vl_Unitario as numeric(18,3)) as Vl_Total,'#13#10'  '#13#10'  Convert( VarChar( 15 ), OPI.Cd_Produto) + '''' - '''' + P.Nm_Produto as Dp_Produto'#13#10#13#10'from'#13#10'  Orcamento_Projeto_Item OPI'#13#10#13#10'inner join'#13#10'  Produto P'#13#10'on'#13#10'  P.Cd_Produto = OPI.Cd_Produto'#13#10#13#10'left join'#13#10'  Unidade U'#13#10'on'#13#10'  U.Sg_Unidade = OPI.Sg_Unidade'#13#10#13#10'where'#13#10'  OPI.Cd_Filial    = :Cd_Filial and'#13#10'  OPI.Nr_Orcamento = :Nr_Orcamento and'#13#10'  OPI.Nr_Projeto   = :Nr_Projeto and'#13#10'  OPI.Tp_Item      = 4'#13#10#13#10'order by'#13#10'  OPI.Nr_Projeto, OPI.Nr_Item'
    DataSource = DsOrcamentoProjeto
    MasterFields = 'Cd_Filial;Nr_Orcamento;Nr_Projeto'
    Parameters = <
      item
        Name = 'Cd_Filial'
        DataType = ftSmallint
        Size = -1
        Value = nil?
      end
      item
        Name = 'Nr_Orcamento'
        DataType = ftInteger
        Size = -1
        Value = nil?
      end
      item
        Name = 'Nr_Projeto'
        DataType = ftSmallint
        Size = -1
        Value = nil?
      end>
    Left = 312
    Top = 108
    object ADODsItemKitBoxCd_Produto: TIntegerField
      FieldName = 'Cd_Produto'
    end
    object ADODsItemKitBoxQt_Item: TBCDField
      FieldName = 'Qt_Item'
      Precision = 18
    end
    object ADODsItemKitBoxNm_Produto: TStringField
      FieldName = 'Nm_Produto'
      Size = 120
    end
    object ADODsItemKitBoxVl_Unitario: TBCDField
      FieldName = 'Vl_Unitario'
      Precision = 18
      Size = 3
    end
    object ADODsItemKitBoxVl_Total: TBCDField
      FieldName = 'Vl_Total'
      ReadOnly = True
      Precision = 18
      Size = 3
    end
    object ADODsItemKitBoxSg_Unidade: TStringField
      FieldName = 'Sg_Unidade'
      FixedChar = True
      Size = 2
    end
    object ADODsItemKitBoxDp_Produto: TStringField
      FieldName = 'Dp_Produto'
      ReadOnly = True
      Size = 135
    end
  end
  object DsItemKitBox: TDataSource
    DataSet = ADODsItemKitBox
    Left = 340
    Top = 108
  end
  object ADODsPosicao: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'declare @Cd_Filial int'#13#10'set @Cd_Filial = :Cd_Filial'#13#10'declare @Nr_Orcamento int'#13#10'set @Nr_Orcamento = :Nr_Orcamento'#13#10'declare @Nr_Projeto int'#13#10'set @Nr_Projeto = :Nr_Projeto'#13#10#13#10'/* Partes do Projeto */'#13#10'select'#13#10'  ''''P'''' as Origem, PPP.Nr_Left, PPP.Nr_Top,'#13#10'  /* Define o caption da label no relatorio */'#13#10'  cast('#13#10'  case'#13#10'    when PPP.Fl_Dimensao = ''''A'''' then OPP.Nr_Altura'#13#10'    when PPP.Fl_Dimensao = ''''L'''' then OPP.Nr_Largura'#13#10'    else '''''#13#10'    '#13#10'  end as varchar) as Dp_Caption'#13#10#13#10'from'#13#10'  Orcamento_Projeto_Parte OPP'#13#10'  '#13#10'inner join'#13#10'  Orcamento_Projeto OP'#13#10'on'#13#10'  OP.Cd_Filial    = OPP.Cd_Filial and'#13#10'  OP.Nr_Orcamento = OPP.Nr_Orcamento and'#13#10'  OP.Nr_Projeto   = OPP.Nr_Projeto'#13#10'  '#13#10'inner join'#13#10'  Projeto_Parte_Posicao PPP'#13#10'on'#13#10'  PPP.Cd_Projeto = OP.Cd_Projeto and'#13#10'  PPP.Cd_Parte = OPP.Cd_Parte  and'#13#10'  PPP.Nr_Top   >= 0 and'#13#10'  PPP.Nr_Left  >= 0'#13#10#13#10'where'#13#10'  OPP.Cd_Filial    = @Cd_Filial and'#13#10'  OPP.Nr_Orcamento = @Nr_Orcamento and'#13#10'  OPP.Nr_Projeto   = @Nr_Projeto'#13#10'  '#13#10'union'#13#10'  '#13#10'/* Vidros e Ferragens do Projeto */'#13#10'select'#13#10'  ''''I'''' as Origem, PIP.Nr_Left, PIP.Nr_Top,'#13#10'  /* Define o caption da label no relatorio */'#13#10'  cast('#13#10'  case'#13#10'    /* Vidros */'#13#10'    when Item.Tp_Item = 0 then'#13#10'      /* Largura X Altura */'#13#10'      cast(OPI.Nr_Largura as varchar) + ''''x'''' + cast(OPI.Nr_Altura as varchar)'#13#10'      '#13#10'    /* Ferragens */'#13#10'    when Item.Tp_Item = 1 then cast(P.Cd_Fabricante as varchar)'#13#10'    else '''''#13#10'  '#13#10'  end as varchar) as Dp_Caption'#13#10#13#10'from'#13#10'  Orcamento_Projeto_Item OPI'#13#10'  '#13#10'inner join'#13#10'  Orcamento_Projeto OP'#13#10'on'#13#10'  OP.Cd_Filial    = OPI.Cd_Filial and'#13#10'  OP.Nr_Orcamento = OPI.Nr_Orcamento and'#13#10'  OP.Nr_Projeto   = OPI.Nr_Projeto'#13#10'  '#13#10'inner join'#13#10'  Projeto_Item Item'#13#10'on'#13#10'  Item.Cd_Projeto = OP.Cd_Projeto and'#13#10'  Item.Nr_Item    = OPI.Nr_Item_Projeto'#13#10'  '#13#10'inner join'#13#10'  Projeto_Item_Posicao PIP'#13#10'on'#13#10'  PIP.Cd_Projeto = Item.Cd_Projeto and'#13#10'  PIP.Nr_Item    = Item.Nr_Item and'#13#10'  PIP.Nr_Top     >= 0 and'#13#10'  PIP.Nr_Left    >= 0'#13#10'  '#13#10'left join'#13#10'  Produto P'#13#10'on'#13#10'  P.Cd_Produto = Item.Cd_Produto'#13#10'  '#13#10'where'#13#10'  OPI.Cd_Filial    = @Cd_Filial and'#13#10'  OPI.Nr_Orcamento = @Nr_Orcamento and'#13#10'  OPI.Nr_Projeto   = @Nr_Projeto'
    DataSource = DsOrcamentoProjeto
    MasterFields = 'Cd_Filial;Nr_Orcamento;Nr_Projeto'
    Parameters = <
      item
        Name = 'Cd_Filial'
        DataType = ftInteger
        Size = -1
        Value = nil?
      end
      item
        Name = 'Nr_Orcamento'
        DataType = ftInteger
        Size = -1
        Value = nil?
      end
      item
        Name = 'Nr_Projeto'
        DataType = ftInteger
        Size = -1
        Value = nil?
      end>
    Left = 341
    Top = 78
    object ADODsPosicaoNr_Left: TIntegerField
      FieldName = 'Nr_Left'
    end
    object ADODsPosicaoNr_Top: TIntegerField
      FieldName = 'Nr_Top'
    end
    object ADODsPosicaoDp_Caption: TStringField
      FieldName = 'Dp_Caption'
      ReadOnly = True
      Size = 30
    end
  end
  object ADODsPartes: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = '/* Partes do Projetos */'#13#10'select'#13#10'  PP.Ds_Parte, OPP.Nr_Largura, OPP.Nr_Altura,'#13#10'  PP.Ds_Parte + '''': '''' + cast(OPP.Nr_Largura as varchar) + ''''x'''' +'#13#10'    cast(OPP.Nr_Altura as varchar) as Dp_Parte'#13#10#13#10'from'#13#10'  Orcamento_Projeto_Parte OPP'#13#10'  '#13#10'inner join'#13#10'  Projeto_Parte PP'#13#10'on'#13#10'  PP.Cd_Parte = OPP.Cd_parte'#13#10#13#10'where'#13#10'  OPP.Cd_Filial    = :Cd_Filial and'#13#10'  OPP.Nr_Orcamento = :Nr_Orcamento and'#13#10'  OPP.Nr_Projeto   = :Nr_Projeto'#13#10'  '
    Parameters = <
      item
        Name = 'Cd_Filial'
        DataType = ftInteger
        Size = -1
        Value = nil?
      end
      item
        Name = 'Nr_Orcamento'
        DataType = ftInteger
        Size = -1
        Value = nil?
      end
      item
        Name = 'Nr_Projeto'
        DataType = ftInteger
        Size = -1
        Value = nil?
      end>
    Left = 311
    Top = 78
    object ADODsPartesDs_Parte: TStringField
      FieldName = 'Ds_Parte'
      Size = 30
    end
    object ADODsPartesNr_Largura: TIntegerField
      FieldName = 'Nr_Largura'
    end
    object ADODsPartesNr_Altura: TIntegerField
      FieldName = 'Nr_Altura'
    end
    object ADODsPartesDp_Parte: TStringField
      FieldName = 'Dp_Parte'
      ReadOnly = True
      Size = 93
    end
  end
  object ADODsMoldura: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    OnCalcFields = ADODsMolduraCalcFields
    CommandText = 'select'#13#10'  Cd_Filial, Nr_Orcamento, Nr_Item, Nr_Moldura, Qt_Moldura, Nr_Altura,'#13#10'  Nr_Largura, Nr_Folga'#13#10#13#10'from'#13#10'  Orcamento_Moldura'#13#10#13#10'where'#13#10'  Cd_Filial    = :Cd_Filial and'#13#10'  Nr_Orcamento = :Nr_Orcamento and'#13#10'  Nr_Item      = :Nr_Item'#13#10#13#10'order by'#13#10'  Nr_Moldura'
    DataSource = DsItem
    MasterFields = 'Cd_Filial;Nr_Orcamento;Nr_Item'
    Parameters = <
      item
        Name = 'Cd_Filial'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = 1
      end
      item
        Name = 'Nr_Orcamento'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 6
      end
      item
        Name = 'Nr_Item'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = 8
      end>
    Left = 603
    Top = 110
    object ADODsMolduraCd_Filial: TSmallintField
      FieldName = 'Cd_Filial'
    end
    object ADODsMolduraNr_Orcamento: TIntegerField
      FieldName = 'Nr_Orcamento'
    end
    object ADODsMolduraNr_Item: TSmallintField
      FieldName = 'Nr_Item'
    end
    object ADODsMolduraNr_Moldura: TSmallintField
      FieldName = 'Nr_Moldura'
    end
    object ADODsMolduraQt_Moldura: TSmallintField
      FieldName = 'Qt_Moldura'
    end
    object ADODsMolduraNr_Altura: TBCDField
      FieldName = 'Nr_Altura'
      Precision = 7
      Size = 2
    end
    object ADODsMolduraNr_Largura: TBCDField
      FieldName = 'Nr_Largura'
      Precision = 7
      Size = 2
    end
    object ADODsMolduraNr_Folga: TBCDField
      FieldName = 'Nr_Folga'
      Precision = 7
      Size = 2
    end
    object ADODsMolduraDp_Moldura: TStringField
      FieldKind = fkCalculated
      FieldName = 'Dp_Moldura'
      Size = 80
      Calculated = True
    end
  end
  object DsMoldura: TDataSource
    DataSet = ADODsMoldura
    Left = 575
    Top = 110
  end
  object ADOCmdImpresso: TADOCommand
    CommandText = 'update'#13#10'  Orcamento'#13#10#13#10'set'#13#10'  Fl_Impresso = ''''1'''#13#10#13#10'where'#13#10'  Cd_Filial = :Cd_Filial and'#13#10'  Nr_Orcamento = :Nr_Orcamento'
    Connection = FrmMain.ADOConMaster
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
        Name = 'Nr_Orcamento'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = nil?
      end>
    Left = 634
    Top = 163
  end
end
