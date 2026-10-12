object FrmProduto_Tabela_Report: TFrmProduto_Tabela_Report
  Left = 373
  Top = 217
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Sele'#231#227'o de Produtos'
  ClientHeight = 379
  ClientWidth = 717
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
    Height = 379
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 696
    Height = 379
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 3
      Top = 350
      Width = 688
      Height = 5
      Shape = bsTopLine
    end
    object Label1: TLabel
      Left = 5
      Top = 40
      Width = 65
      Height = 13
      Caption = 'Produto Final:'
    end
    object SbProdEndSel: TSpeedButton
      Tag = 2
      Left = 66
      Top = 55
      Width = 23
      Height = 19
      Hint = 'Consulta de Produto'
      Flat = True
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
      OnClick = SbProdEndSelClick
    end
    object Label2: TLabel
      Left = 5
      Top = 3
      Width = 70
      Height = 13
      Caption = 'Produto Inicial:'
    end
    object SbProdStartSel: TSpeedButton
      Tag = 1
      Left = 66
      Top = 18
      Width = 23
      Height = 19
      Hint = 'Consulta de Produto'
      Flat = True
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
      OnClick = SbProdEndSelClick
    end
    object SbGrupoSel: TSpeedButton
      Left = 45
      Top = 92
      Width = 23
      Height = 19
      Hint = 'Consulta de Grupo'
      Flat = True
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
      OnClick = SbGrupoSelClick
    end
    object Label3: TLabel
      Left = 5
      Top = 77
      Width = 172
      Height = 13
      Caption = 'Estrutura (Grupo/SubGrupo/Classe):'
    end
    object SbSubGrupoSel: TSpeedButton
      Left = 45
      Top = 110
      Width = 23
      Height = 19
      Hint = 'Consulta de SubGrupo'
      Flat = True
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
      OnClick = SbSubGrupoSelClick
    end
    object SbClasseSel: TSpeedButton
      Left = 45
      Top = 128
      Width = 23
      Height = 19
      Hint = 'Consulta de Classe'
      Flat = True
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
      OnClick = SbClasseSelClick
    end
    object SbLocalizacaoSel: TSpeedButton
      Left = 45
      Top = 203
      Width = 23
      Height = 19
      Hint = 'Seleciona a Localiza'#231#227'o'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbLocalizacaoSelClick
    end
    object Label4: TLabel
      Left = 5
      Top = 188
      Width = 60
      Height = 13
      Caption = 'Localiza'#231#227'o:'
    end
    object Label8: TLabel
      Left = 5
      Top = 223
      Width = 27
      Height = 13
      Caption = 'Ativo:'
    end
    object SbLabSel: TSpeedButton
      Left = 378
      Top = 203
      Width = 23
      Height = 19
      Hint = 'Seleciona o Laborat'#243'rio/Fabricante'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbLabSelClick
    end
    object Label5: TLabel
      Left = 338
      Top = 188
      Width = 111
      Height = 13
      Caption = 'Laborat'#243'rio/Fabricante:'
    end
    object Label6: TLabel
      Left = 68
      Top = 223
      Width = 58
      Height = 13
      Caption = 'Agrupar por:'
    end
    object Label7: TLabel
      Left = 239
      Top = 223
      Width = 140
      Height = 13
      Caption = 'Somente produtos com saldo:'
    end
    object Label9: TLabel
      Left = 385
      Top = 223
      Width = 91
      Height = 13
      Caption = 'Imprimir "Zebrado":'
    end
    object Label10: TLabel
      Left = 480
      Top = 223
      Width = 38
      Height = 13
      Caption = 'Imprimir:'
    end
    object Label11: TLabel
      Left = 5
      Top = 260
      Width = 166
      Height = 13
      Caption = 'Observa'#231#245'es para tabela impressa:'
    end
    object BitBtnConfirm: TBitBtn
      Left = 523
      Top = 352
      Width = 85
      Height = 25
      Caption = '&Imprimir'
      TabOrder = 20
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 1146 bytes}
    end
    object BitBtnCancel: TBitBtn
      Left = 609
      Top = 352
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 21
      OnClick = BitBtnCancelClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object EdtCd_ProdEndSel: TCurrencyEdit
      Tag = 2
      Left = 5
      Top = 55
      Width = 60
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnExit = EdtCd_ProdStartSelExit
      OnKeyDown = EdtCd_LocalizacaoSelKeyDown
    end
    object EdtNm_ProdEndSel: TEdit
      Left = 91
      Top = 55
      Width = 427
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
      TabOrder = 3
    end
    object EdtCd_ProdStartSel: TCurrencyEdit
      Tag = 1
      Left = 5
      Top = 18
      Width = 60
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnExit = EdtCd_ProdStartSelExit
      OnKeyDown = EdtCd_LocalizacaoSelKeyDown
    end
    object EdtNm_ProdStartSel: TEdit
      Left = 91
      Top = 18
      Width = 427
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
      TabOrder = 1
    end
    object MmEstruturaSel: TMemo
      Left = 69
      Top = 92
      Width = 437
      Height = 55
      TabStop = False
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Lines.Strings = (
        'Grupo'
        'SubGrupo'
        'Classe'
      )
      ParentFont = False
      ReadOnly = True
      TabOrder = 7
    end
    object EdtCd_GrupoSel: TCurrencyEdit
      Tag = 3
      Left = 5
      Top = 92
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 4
      OnExit = EdtCd_GrupoSelExit
      OnKeyDown = EdtCd_LocalizacaoSelKeyDown
    end
    object EdtCd_SubGrupoSel: TCurrencyEdit
      Tag = 4
      Left = 5
      Top = 110
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 5
      OnExit = EdtCd_SubGrupoSelExit
      OnKeyDown = EdtCd_LocalizacaoSelKeyDown
    end
    object EdtCd_ClasseSel: TCurrencyEdit
      Tag = 5
      Left = 5
      Top = 128
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 6
      OnExit = EdtCd_ClasseSelExit
      OnKeyDown = EdtCd_LocalizacaoSelKeyDown
    end
    object EdtNm_ProdutoSel: TLabeledEdit
      Left = 5
      Top = 166
      Width = 427
      Height = 19
      EditLabel.Width = 86
      EditLabel.Height = 13
      EditLabel.Caption = 'Nome do Produto:'
      LabelSpacing = 2
      MaxLength = 120
      TabOrder = 8
      OnKeyDown = EdtCd_LocalizacaoSelKeyDown
    end
    object CkBDescricaoSel: TCheckBox
      Left = 95
      Top = 149
      Width = 68
      Height = 17
      Caption = 'Contendo'
      Ctl3D = True
      ParentCtl3D = False
      TabOrder = 9
    end
    object EdtCd_LocalizacaoSel: TCurrencyEdit
      Tag = 6
      Left = 5
      Top = 203
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 10
      OnExit = EdtCd_LocalizacaoSelExit
      OnKeyDown = EdtCd_LocalizacaoSelKeyDown
    end
    object EdtDs_LocalizacaoSel: TEdit
      Left = 68
      Top = 203
      Width = 265
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
      TabOrder = 11
    end
    object CbAtivoSel: TComboBox
      Left = 5
      Top = 237
      Width = 60
      Height = 21
      Style = csDropDownList
      Ctl3D = True
      ItemHeight = 13
      ParentCtl3D = False
      TabOrder = 14
      Items.Strings = (
        'Sim'
        'N'#227'o'
        'Ambos'
      )
    end
    object EdtCd_LabSel: TCurrencyEdit
      Tag = 6
      Left = 338
      Top = 203
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 12
      OnExit = EdtCd_LabSelExit
      OnKeyDown = EdtCd_LocalizacaoSelKeyDown
    end
    object EdtNm_LabSel: TEdit
      Left = 401
      Top = 203
      Width = 288
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
      TabOrder = 13
    end
    object CbAgrupado: TComboBox
      Left = 68
      Top = 237
      Width = 168
      Height = 21
      Style = csDropDownList
      Ctl3D = True
      ItemHeight = 13
      ParentCtl3D = False
      TabOrder = 15
      Items.Strings = (
        'Sem Agrupamento'
        'Grupo / SubGrupo / Classe'
        'Laborat'#243'rio / Fabricante'
      )
    end
    object CbSaldo: TComboBox
      Left = 239
      Top = 237
      Width = 60
      Height = 21
      Style = csDropDownList
      Ctl3D = True
      ItemHeight = 13
      ParentCtl3D = False
      TabOrder = 16
      Items.Strings = (
        'Sim'
        'N'#227'o'
      )
    end
    object CbZebrado: TComboBox
      Left = 385
      Top = 237
      Width = 60
      Height = 21
      Style = csDropDownList
      Ctl3D = True
      ItemHeight = 13
      ParentCtl3D = False
      TabOrder = 17
      Items.Strings = (
        'Sim'
        'N'#227'o'
      )
    end
    object CbReport: TComboBox
      Left = 480
      Top = 237
      Width = 209
      Height = 21
      Style = csDropDownList
      Ctl3D = True
      ItemHeight = 13
      ParentCtl3D = False
      TabOrder = 18
      Items.Strings = (
        'Saldo no Estoque'
        'Unidade de Estoque e Venda/Peso'
        'Unidade de Estoque e Venda/Estoque'
        'Etiquetas'
      )
    end
    object SctRepTabNormal: TSctReport
      Left = 564
      Top = 153
      Width = 82
      Height = 44
      HorzScrollBar.Visible = False
      VertScrollBar.Visible = False
      TabOrder = 23
      Visible = False
      Minimized = True
      Prompt = True
      AutoRun = False
      OnBeforePrint = SctRepTabNormalBeforePrint
      SuppressStatus = False
      PixelsPerInch = 96
      STop = -13
      SLeft = -21
      SWidth = 762
      SHeight = 541
      MTop = 153
      MLeft = 564
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
        BorderType = btNone
        Description = 'Tabela de Pre'#231'o'
        CloseDataSet = False
        DataRange = drAllRecords
        OmitLastPgFt = False
        Head = SctBand1
        Detail = SctBand3
        Foot = SctBand5
        PageHead = SctBand2
        PageFoot = SctBand4
        DataSource = DsTabela
        Order = 1
        NoDsgList = (
          'FrmProduto_Tabela_Preco.DsTabela'
          'FrmProduto_Tabela_Preco.DsReport'
        )
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
          DataSource = DsTabela
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
        object SctDBVar5: TSctDBVar
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
        object SctTotalvar1: TSctTotalvar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Variable = adodstabelaDp_AgrupamentoVar1
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidTotalVar
        end
        object Group: TSctGroup
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Header = GrpHdAgrupado_2
          Footer = GrpFtLabFab_2
          Variable = adodstabelaDp_AgrupamentoVar1
          Level = 0
        end
        object GroupHeaderLevel1: TSctLevel
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          IsHeader = True
        end
        object GroupFooterLevel1: TSctLevel
          Left = 0
          Top = 0
          Width = 0
          Height = 0
        end
        object adodstabelasg_vendaVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'sg_venda'
          DataSource = DsTabela
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodstabelavl_vendaVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'vl_venda'
          DataSource = DsTabela
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodstabelasg_estoqueVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'sg_estoque'
          DataSource = DsTabela
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodstabelacd_produtoVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'cd_produto'
          DataSource = DsTabela
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodstabelanm_produtoVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nm_produto'
          DataSource = DsTabela
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodstabelaVl_EstoqueVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Vl_Estoque'
          DataSource = DsTabela
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodstabelaPs_ProdutoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ps_Produto'
          DataSource = DsTabela
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodstabelaDp_AgrupamentoVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_Agrupamento'
          DataSource = DsTabela
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object DataSourceGuide: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = FrmClasse_Find.DsFind
        end
        object adodstabelaDp_UnidVendaVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_UnidVenda'
          DataSource = DsTabela
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodstabelaQt_EstoqueVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Qt_Estoque'
          DataSource = DsTabela
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctBand1: TSctBand
          Left = 0
          Top = 0
          Width = 748
          Height = 5
          ParentColor = True
          BandName = 'Report Header'
          Updatelevel = SctLevel1
          Visible = False
        end
        object SctBand2: TSctBand
          Left = 0
          Top = 20
          Width = 748
          Height = 38
          ParentColor = True
          BandName = 'Page Header'
          Updatelevel = SctLevel2
          object Sctvarlabel33: TSctvarlabel
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
            Caption = 'Tabela de Pre'#231'o'
          end
          object Sctvarlabel34: TSctvarlabel
            Left = 601
            Top = 1
            Width = 31
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Data:'
          end
          object Sctvarlabel37: TSctvarlabel
            Left = 634
            Top = 1
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = SctDateTimeVar1
            DataFormat.DisplayFormat = 'dd/mm/yyyy'
          end
          object Sctvarlabel40: TSctvarlabel
            Left = 598
            Top = 18
            Width = 34
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Hora:'
          end
          object Sctvarlabel41: TSctvarlabel
            Left = 634
            Top = 18
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = SctDateTimeVar1
            DataFormat.DisplayFormat = 'hh:mm:ss'
          end
          object SctLine9: TSctLine
            Left = 0
            Top = 32
            Width = 698
            Height = 7
          end
          object SctTxtTabela_2: TSctvarlabel
            Left = 2
            Top = 18
            Width = 439
            Height = 17
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = ' '
          end
        end
        object SctBand3: TSctBand
          Left = 0
          Top = 195
          Width = 748
          Height = 19
          ParentColor = True
          BandName = 'Detail'
          Updatelevel = SctLevel3
          Stretch = True
          OnAfterPrint = SctDtlTabelaAfterPrint
          object Sctvarlabel42: TSctvarlabel
            Left = 73
            Top = 1
            Width = 350
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            WrapText = True
            Stretch = True
            Variable = adodstabelanm_produtoVar1
          end
          object Sctvarlabel43: TSctvarlabel
            Left = -4
            Top = 1
            Width = 70
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laRight
            WrapText = True
            Stretch = True
            Variable = adodstabelacd_produtoVar1
          end
          object Sctvarlabel44: TSctvarlabel
            Left = 410
            Top = 1
            Width = 52
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laCenter
            WrapText = True
            Stretch = True
            Variable = adodstabelasg_estoqueVar1
          end
          object Sctvarlabel45: TSctvarlabel
            Left = 462
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
            WrapText = True
            Stretch = True
            Variable = adodstabelaVl_EstoqueVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
          end
          object Sctvarlabel46: TSctvarlabel
            Left = 637
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
            WrapText = True
            Stretch = True
            Variable = adodstabelavl_vendaVar1
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
          end
          object SctVarPrint: TSctvarlabel
            Left = 523
            Top = 1
            Width = 43
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laRight
            BorderMargin = 1
            WrapText = True
            Stretch = True
            Variable = adodstabelaPs_ProdutoVar
            DataFormat.DisplayFormat = '#,##0.###'
            DataFormat.SuppressNulls = True
            DataFormat.Digits = 3
          end
          object Sctvarlabel48: TSctvarlabel
            Left = 566
            Top = 1
            Width = 72
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laCenter
            WrapText = True
            Stretch = True
            Variable = adodstabelaDp_UnidVendaVar
          end
        end
        object SctBand4: TSctBand
          Left = 0
          Top = 252
          Width = 748
          Height = 20
          ParentColor = True
          BandName = 'Page Footer'
          Updatelevel = SctLevel4
          object SctLine10: TSctLine
            Left = 0
            Top = 1
            Width = 698
            Height = 7
            AlignVertical = laTop
          end
          object Sctvarlabel49: TSctvarlabel
            Left = 2
            Top = 2
            Width = 529
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            Variable = SctDBVar5
          end
          object Sctvarlabel50: TSctvarlabel
            Left = 616
            Top = 2
            Width = 44
            Height = 17
            AlignHorizontal = laRight
            Caption = 'P'#225'gina:'
          end
          object Sctvarlabel51: TSctvarlabel
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
          Top = 287
          Width = 748
          Height = 20
          ParentColor = True
          BandName = 'Report Footer'
          Updatelevel = SctLevel5
          object SctLine11: TSctLine
            Left = 560
            Top = 1
            Width = 136
            Height = 5
            AlignVertical = laTop
          end
          object SctTotalvarLabel3: TSctTotalvarLabel
            Left = 663
            Top = 3
            Width = 35
            Height = 17
            TotalVariable = SctTotalvar1
            TotalType = ttCount
            DataFormat.DisplayFormat = '#,##0'
            DataFormat.Digits = 0
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Sctvarlabel52: TSctvarlabel
            Left = 560
            Top = 3
            Width = 97
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
        object SctSubBand1: TSctSubBand
          Left = 0
          Top = 108
          Width = 748
          Height = 37
          Color = 15790320
          BandName = 'PageHeaderBand1Sub'
          Updatelevel = SctLevel2
          Band = SctBand2
          Order = 1
          Above = False
          object SctLine12: TSctLine
            Left = 0
            Top = 29
            Width = 698
            Height = 7
          end
          object Sctvarlabel53: TSctvarlabel
            Left = 1
            Top = 16
            Width = 70
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'C'#243'digo'
          end
          object Sctvarlabel54: TSctvarlabel
            Left = 73
            Top = 16
            Width = 110
            Height = 17
            Caption = 'Nome do Produto'
          end
          object Sctvarlabel55: TSctvarlabel
            Left = 410
            Top = 2
            Width = 52
            Height = 31
            AlignHorizontal = laCenter
            WrapText = True
            Caption = 'Unid. de Estoque'
          end
          object Sctvarlabel56: TSctvarlabel
            Left = 462
            Top = 16
            Width = 60
            Height = 17
            AlignHorizontal = laRight
            WrapText = True
            Caption = 'Pre'#231'o'
          end
          object SctTxtPrint: TSctvarlabel
            Left = 523
            Top = 16
            Width = 43
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Peso'
          end
          object Sctvarlabel57: TSctvarlabel
            Left = 566
            Top = 2
            Width = 72
            Height = 31
            AlignHorizontal = laCenter
            WrapText = True
            Caption = 'Unid. de Venda'
          end
          object Sctvarlabel61: TSctvarlabel
            Left = 637
            Top = 18
            Width = 60
            Height = 17
            AlignHorizontal = laRight
            WrapText = True
            Caption = 'Pre'#231'o'
          end
        end
        object GrpHdAgrupado_2: TSctBand
          Left = 0
          Top = 160
          Width = 748
          Height = 20
          Color = 14737632
          BandName = 'GrpHdAgrupado_2'
          Updatelevel = GroupHeaderLevel1
          Stretch = True
          object Sctvarlabel59: TSctvarlabel
            Left = 0
            Top = 1
            Width = 481
            Height = 17
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            WrapText = True
            Stretch = True
            Variable = adodstabelaDp_AgrupamentoVar1
          end
        end
        object GrpFtLabFab_2: TSctBand
          Left = 0
          Top = 229
          Width = 748
          Height = 8
          ParentColor = True
          BandName = 'GrpFtLabFab_2'
          Updatelevel = GroupFooterLevel1
        end
        object PgHdObservacao2: TSctSubBand
          Left = 0
          Top = 73
          Width = 748
          Height = 20
          ParentColor = True
          BandName = 'PgHdObservacao2'
          Updatelevel = SctLevel2
          Visible = False
          Stretch = True
          OnAfterPrint = PgHdObservacao2AfterPrint
          Band = SctBand2
          Above = False
          object Sctvarlabel2: TSctvarlabel
            Left = 2
            Top = 0
            Width = 65
            Height = 17
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Oberva'#231#245'es:'
          end
          object SctTxtObservacao2: TSctvarlabel
            Left = 69
            Top = 0
            Width = 592
            Height = 17
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            WrapText = True
            Stretch = True
          end
        end
      end
    end
    object MmObservacao: TMemo
      Left = 5
      Top = 274
      Width = 684
      Height = 73
      ScrollBars = ssVertical
      TabOrder = 19
    end
    object SctRepTabFab: TSctReport
      Left = 378
      Top = 152
      Width = 82
      Height = 44
      HorzScrollBar.Visible = False
      VertScrollBar.Visible = False
      TabOrder = 22
      Visible = False
      Minimized = True
      Prompt = True
      AutoRun = False
      OnBeforePrint = SctRepTabFabBeforePrint
      SuppressStatus = False
      PixelsPerInch = 96
      STop = 43
      SLeft = -21
      SWidth = 861
      SHeight = 406
      MTop = 152
      MLeft = 378
      SAlign = alNone
      Version = vAce1_0
      object ReportPage1: TSctGrouppage
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
        BorderType = btNone
        Description = 'Tabela de Pre'#231'o'
        CloseDataSet = False
        DataRange = drAllRecords
        OmitLastPgFt = False
        Head = ReportHeaderBand1
        Detail = SctDtlTabela
        Foot = ReportFooterBand1
        PageHead = PageHeaderBand1
        PageFoot = PageFooterBand1
        DataSource = DsTabela
        Order = 1
        object ReportHeaderBand1level: TSctLevel
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          IsHeader = True
        end
        object PageHeaderBand1level: TSctLevel
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          IsHeader = True
        end
        object DetailBand1level: TSctLevel
          Left = 0
          Top = 0
          Width = 0
          Height = 0
        end
        object PageFooterBand1level: TSctLevel
          Left = 0
          Top = 0
          Width = 0
          Height = 0
        end
        object ReportFooterBand1level: TSctLevel
          Left = 0
          Top = 0
          Width = 0
          Height = 0
        end
        object svarDateTime1: TSctDateTimeVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          UpdateLevel = ReportHeaderBand1level
          AutoVar = True
          ID = vidDateTimeVar
        end
        object svarPage1: TSctPageVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          UpdateLevel = PageHeaderBand1level
          AutoVar = True
          ID = vidPageVar
        end
        object DataSourceGuide8: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBand1level
          DataSource = DsTabela
        end
        object DataSourceGuide9: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBand1level
          DataSource = DmMaster.DsUsuario
        end
        object DataSourceGuide10: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBand1level
          DataSource = DmMaster.DsFilial
        end
        object adodstabelacd_produtoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'cd_produto'
          DataSource = DsTabela
          UpdateLevel = DetailBand1level
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodstabelanm_produtoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nm_produto'
          DataSource = DsTabela
          UpdateLevel = DetailBand1level
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodstabelavl_vendaVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'vl_venda'
          DataSource = DsTabela
          UpdateLevel = DetailBand1level
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
          UpdateLevel = DetailBand1level
          AutoVar = False
          ID = vidAutoDataVar
        end
        object TotalOfcd_produto: TSctTotalvar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Variable = adodstabelacd_produtoVar
          UpdateLevel = DetailBand1level
          AutoVar = False
          ID = vidTotalVar
        end
        object adodstabelasg_vendaVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'sg_venda'
          DataSource = DsTabela
          UpdateLevel = DetailBand1level
          AutoVar = False
          ID = vidAutoDataVar
        end
        object GrpLabFab: TSctGroup
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Header = GrpHdAgrupado
          Footer = GrpFtAgrupado
          Variable = adodstabelaDp_AgrupamentoVar
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
        object adodstabelanm_laboratorioVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nm_laboratorio'
          DataSource = DsTabela
          UpdateLevel = DetailBand1level
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodstabelacd_fabricanteVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'cd_fabricante'
          DataSource = DsTabela
          UpdateLevel = DetailBand1level
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodstabelaQt_EstoqueVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Qt_Estoque'
          DataSource = DsTabela
          UpdateLevel = DetailBand1level
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodstabelaDp_AgrupamentoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_Agrupamento'
          DataSource = DsTabela
          UpdateLevel = DetailBand1level
          AutoVar = False
          ID = vidAutoDataVar
        end
        object DataSourceGuide3: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBand1level
          DataSource = FrmClasse_Find.DsFind
        end
        object ReportHeaderBand1: TSctBand
          Left = 0
          Top = 0
          Width = 748
          Height = 5
          ParentColor = True
          BandName = 'Report Header'
          Updatelevel = ReportHeaderBand1level
          Visible = False
        end
        object PageHeaderBand1: TSctBand
          Left = 0
          Top = 20
          Width = 748
          Height = 38
          ParentColor = True
          BandName = 'Page Header'
          Updatelevel = PageHeaderBand1level
          object Sctvarlabel17: TSctvarlabel
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
            Caption = 'Tabela de Pre'#231'o'
          end
          object Sctvarlabel18: TSctvarlabel
            Left = 601
            Top = 1
            Width = 31
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Data:'
          end
          object Sctvarlabel19: TSctvarlabel
            Left = 634
            Top = 1
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = svarDateTime1
            DataFormat.DisplayFormat = 'dd/mm/yyyy'
          end
          object Sctvarlabel20: TSctvarlabel
            Left = 598
            Top = 18
            Width = 34
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Hora:'
          end
          object Sctvarlabel21: TSctvarlabel
            Left = 634
            Top = 18
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = svarDateTime1
            DataFormat.DisplayFormat = 'hh:mm:ss'
          end
          object SctLine3: TSctLine
            Left = 0
            Top = 32
            Width = 698
            Height = 7
          end
          object SctTxtTabela_1: TSctvarlabel
            Left = 2
            Top = 18
            Width = 439
            Height = 17
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = ' '
          end
        end
        object SctDtlTabela: TSctBand
          Left = 0
          Top = 193
          Width = 748
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = True
          ParentFont = False
          BandName = 'Detail'
          Updatelevel = DetailBand1level
          Stretch = True
          OnAfterPrint = SctDtlTabelaAfterPrint
          object Sctvarlabel32: TSctvarlabel
            Left = 73
            Top = 0
            Width = 352
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            WrapText = True
            Stretch = True
            Variable = adodstabelanm_produtoVar
          end
          object Sctvarlabel31: TSctvarlabel
            Left = -4
            Top = 0
            Width = 72
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laRight
            WrapText = True
            Stretch = True
            Variable = adodstabelacd_produtoVar
          end
          object Sctvarlabel36: TSctvarlabel
            Left = 638
            Top = 0
            Width = 60
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laRight
            WrapText = True
            Stretch = True
            Variable = adodstabelavl_vendaVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
          end
          object Sctvarlabel38: TSctvarlabel
            Left = 604
            Top = 0
            Width = 42
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laCenter
            WrapText = True
            Stretch = True
            Variable = adodstabelasg_vendaVar
          end
          object Sctvarlabel25: TSctvarlabel
            Left = 496
            Top = 0
            Width = 106
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            WrapText = True
            Stretch = True
            Variable = adodstabelacd_fabricanteVar
          end
          object SctVarEstoque: TSctvarlabel
            Left = 435
            Top = 0
            Width = 60
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laRight
            WrapText = True
            Variable = adodstabelaQt_EstoqueVar
          end
        end
        object PageFooterBand1: TSctBand
          Left = 0
          Top = 249
          Width = 748
          Height = 20
          ParentColor = True
          BandName = 'Page Footer'
          Updatelevel = PageFooterBand1level
          object SctLine7: TSctLine
            Left = 0
            Top = 1
            Width = 698
            Height = 7
            AlignVertical = laTop
          end
          object Sctvarlabel27: TSctvarlabel
            Left = 2
            Top = 2
            Width = 529
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            Variable = adodsfilialDp_FilialVar1
          end
          object Sctvarlabel28: TSctvarlabel
            Left = 616
            Top = 2
            Width = 44
            Height = 17
            AlignHorizontal = laRight
            Caption = 'P'#225'gina:'
          end
          object Sctvarlabel29: TSctvarlabel
            Left = 663
            Top = 2
            Width = 35
            Height = 17
            AlignHorizontal = laRight
            Variable = svarPage1
            DataFormat.DisplayFormat = '#,###'
          end
        end
        object ReportFooterBand1: TSctBand
          Left = 0
          Top = 284
          Width = 748
          Height = 20
          ParentColor = True
          BandName = 'Report Footer'
          Updatelevel = ReportFooterBand1level
          object SctLine8: TSctLine
            Left = 560
            Top = 1
            Width = 136
            Height = 5
            AlignVertical = laTop
          end
          object SctTotalvarLabel2: TSctTotalvarLabel
            Left = 663
            Top = 3
            Width = 35
            Height = 17
            TotalVariable = TotalOfcd_produto
            TotalType = ttCount
            DataFormat.DisplayFormat = '#,##0'
            DataFormat.Digits = 0
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Sctvarlabel30: TSctvarlabel
            Left = 560
            Top = 3
            Width = 97
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
        object PgHdProduto: TSctSubBand
          Left = 0
          Top = 107
          Width = 748
          Height = 37
          Color = 15790320
          BandName = 'PgHdProduto'
          Updatelevel = PageHeaderBand1level
          Band = PageHeaderBand1
          Order = 1
          Above = False
          object SctLine6: TSctLine
            Left = 0
            Top = 29
            Width = 698
            Height = 7
          end
          object Sctvarlabel22: TSctvarlabel
            Left = 1
            Top = 16
            Width = 70
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'C'#243'digo'
          end
          object Sctvarlabel23: TSctvarlabel
            Left = 73
            Top = 16
            Width = 95
            Height = 17
            Caption = 'Nome do Produto'
          end
          object Sctvarlabel26: TSctvarlabel
            Left = 638
            Top = 2
            Width = 60
            Height = 31
            AlignHorizontal = laRight
            WrapText = True
            Caption = 'Pre'#231'o de Venda'
          end
          object Sctvarlabel35: TSctvarlabel
            Left = 604
            Top = 16
            Width = 33
            Height = 17
            AlignHorizontal = laCenter
            Caption = 'Unid.'
          end
          object Sctvarlabel24: TSctvarlabel
            Left = 496
            Top = 16
            Width = 106
            Height = 17
            Caption = 'C'#243'digo do Fabricante'
          end
          object Sctvarlabel60: TSctvarlabel
            Left = 435
            Top = 16
            Width = 60
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Estoque'
          end
        end
        object GrpHdAgrupado: TSctBand
          Left = 0
          Top = 159
          Width = 748
          Height = 19
          Color = 14737632
          BandName = 'GrpHdAgrupado'
          Updatelevel = GroupHeaderLevel
          Visible = False
          Stretch = True
          object Sctvarlabel39: TSctvarlabel
            Left = 0
            Top = 1
            Width = 632
            Height = 17
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            WrapText = True
            Stretch = True
            Variable = adodstabelaDp_AgrupamentoVar
          end
        end
        object GrpFtAgrupado: TSctBand
          Left = 0
          Top = 225
          Width = 748
          Height = 9
          ParentColor = True
          BandName = 'GrpFtAgrupado'
          Updatelevel = GroupFooterLevel
          Visible = False
        end
        object PgHdObservacao: TSctSubBand
          Left = 0
          Top = 73
          Width = 748
          Height = 19
          ParentColor = True
          BandName = 'PgHdObservacao'
          Updatelevel = PageHeaderBand1level
          Visible = False
          Stretch = True
          OnAfterPrint = PgHdObservacaoAfterPrint
          Band = PageHeaderBand1
          Above = False
          object Sctvarlabel1: TSctvarlabel
            Left = 2
            Top = 0
            Width = 65
            Height = 17
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Oberva'#231#245'es:'
          end
          object SctTxtObservacao: TSctvarlabel
            Left = 69
            Top = 0
            Width = 592
            Height = 17
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            WrapText = True
            Stretch = True
          end
        end
      end
    end
    object SctRepEtiqueta: TSctReport
      Left = 476
      Top = 12
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
      TabOrder = 24
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
      MTop = 12
      MLeft = 476
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
        PageSetup.Size = psLegal
        PageSetup.Source = psUpper
        PageSetup.Duplex = pdSimplex
        PageSetup.Height = 14.0
        PageSetup.Width = 8.5
        PageSetup.PrintQuality = pqCustom
        PageSetup.PreviewSettings.ModalPreview = mpNonModal
        PageSetup.PreviewSettings.PreviewOwner = poAppOwned
        PageSetup.PreviewSettings.FormStyle = pfsMDIChild
        PageSetup.LeftMargin = 0.25
        PageSetup.RightMargin = 0
        PageSetup.BottomMargin = 3.0
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
        DataSource = DsTabela
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
        object ExprLabel_01: TSctExprVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataType = dtypeMemo
          OnGetData = ExprLabel_01GetData
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidExprVar
        end
        object ExprLabel_02: TSctExprVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataType = dtypeMemo
          OnGetData = ExprLabel_02GetData
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidExprVar
        end
        object SctDataSourceGuide5: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = DmMaster.DsUsuario
        end
        object SctDataSourceGuide6: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = DmMaster.DsFilial
        end
        object SctDataSourceGuide7: TSctDataSourceGuide
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
        object DataSourceGuide26: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = True
          UpdateLevel = DetailBandlevel
          DataSource = FrmCidade_Find.DsFind
        end
        object DataSourceGuide27: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = True
          UpdateLevel = DetailBandlevel
          DataSource = FrmPortador_Find.DsFind
        end
        object adodsnomeCd_GrupoVar1: TSctDBVar
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
        object adodsnomeNm_GrupoVar1: TSctDBVar
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
        object adodsnomeDp_GrupoVar1: TSctDBVar
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
        object adodsfindnm_cidadeVar2: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nm_cidade'
          DataSource = FrmCidade_Find.DsFind
          UpdateLevel = DetailBandlevel
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsfinddp_estadoVar2: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'dp_estado'
          DataSource = FrmCidade_Find.DsFind
          UpdateLevel = DetailBandlevel
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsfindcd_cidadeVar2: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'cd_cidade'
          DataSource = FrmCidade_Find.DsFind
          UpdateLevel = DetailBandlevel
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsfindsg_estadoVar3: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'sg_estado'
          DataSource = FrmCidade_Find.DsFind
          UpdateLevel = DetailBandlevel
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsfindnr_cepVar2: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nr_cep'
          DataSource = FrmCidade_Find.DsFind
          UpdateLevel = DetailBandlevel
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsfindcd_portadorVar2: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'cd_portador'
          DataSource = FrmPortador_Find.DsFind
          UpdateLevel = DetailBandlevel
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsfindnm_portadorVar2: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nm_portador'
          DataSource = FrmPortador_Find.DsFind
          UpdateLevel = DetailBandlevel
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsfinddp_pagamentoVar2: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'dp_pagamento'
          DataSource = FrmPortador_Find.DsFind
          UpdateLevel = DetailBandlevel
          AutoVar = True
          ID = vidAutoDataVar
        end
        object DataSourceGuide1: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = DsTabela
        end
        object DataSourceGuide2: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = FrmClasse_Find.DsFind
        end
        object DataSourceGuide4: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = FrmProduto_Tabela.DsReport
        end
        object DataSourceGuide5: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = FrmProduto_Tabela.DsTabela
        end
        object ExprLblPreco_1: TSctExprVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataType = dtypeString
          OnGetData = ExprLblPreco_1GetData
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidExprVar
        end
        object ExprLblPreco_2: TSctExprVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataType = dtypeString
          OnGetData = ExprLblPreco_2GetData
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidExprVar
        end
        object ReportHeaderBand: TSctBand
          Left = 0
          Top = 0
          Width = 842
          Height = 0
          ParentColor = True
          BandName = 'Report Header'
          Updatelevel = ReportHeaderBandlevel
          Visible = False
        end
        object PageHeaderBand: TSctBand
          Left = 0
          Top = 15
          Width = 842
          Height = 0
          ParentColor = True
          BandName = 'Page Header'
          Updatelevel = PageHeaderBandlevel
          Visible = False
        end
        object DetailBand: TSctBand
          Left = 0
          Top = 30
          Width = 842
          Height = 97
          ParentColor = True
          BandName = 'Detail'
          Updatelevel = DetailBandlevel
          OnAfterPrint = DetailBandAfterPrint
          object Sctvarlabel70: TSctvarlabel
            Left = 4
            Top = 4
            Width = 366
            Height = 85
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            ClipType = ctClip
            AlignVertical = laTop
            BorderMargin = 1
            WrapText = True
            Variable = ExprLabel_01
          end
          object Sctvarlabel71: TSctvarlabel
            Left = 405
            Top = 4
            Width = 366
            Height = 85
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            ClipType = ctClip
            AlignVertical = laTop
            BorderMargin = 1
            WrapText = True
            Variable = ExprLabel_02
          end
          object Sctvarlabel3: TSctvarlabel
            Left = 4
            Top = 61
            Width = 366
            Height = 29
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ClipType = ctClip
            AlignVertical = laTop
            AlignHorizontal = laCenter
            BorderMargin = 1
            WrapText = True
            Variable = ExprLblPreco_1
          end
          object Sctvarlabel4: TSctvarlabel
            Left = 405
            Top = 61
            Width = 366
            Height = 29
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ClipType = ctClip
            AlignVertical = laTop
            AlignHorizontal = laCenter
            BorderMargin = 1
            WrapText = True
            Variable = ExprLblPreco_2
          end
        end
        object PageFooterBand: TSctBand
          Left = 0
          Top = 142
          Width = 842
          Height = 0
          ParentColor = True
          BandName = 'Page Footer'
          Updatelevel = PageFooterBandlevel
          Visible = False
        end
        object ReportFooterBand: TSctBand
          Left = 0
          Top = 157
          Width = 842
          Height = 1
          ParentColor = True
          BandName = 'Report Footer'
          Updatelevel = ReportFooterBandlevel
          Visible = False
        end
      end
    end
  end
  object ADODsTabela: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    OnCalcFields = ADODsTabelaCalcFields
    CommandText = 'create table #TmpProdPreco'#13#10'  ('#13#10'  Cd_Produto Int,'#13#10'  Qt_Estoque Numeric( 12, 3 )'#13#10'  )'#13#10#13#10'select'#13#10'  TPP.Cd_Produto, P.Nm_Produto, P.Sg_Estoque, P.Tp_Preco,'#13#10'  P.Sg_Venda, L.Nm_Laboratorio, P.Cd_Fabricante,'#13#10'  TPP.Qt_Estoque, P.Ps_Produto, PUV.Nr_Fator,'#13#10'  P.Cd_Grupo, G.Nm_Grupo, P.Cd_SubGrupo, SG.Nm_SubGrupo, P.Cd_Classe, C.Nm_Classe,'#13#10'  PP.Vl_Venda * Coalesce( PUV.Nr_Fator, 1.0 ) as Vl_Venda,'#13#10'  PP.Vl_Venda * Coalesce( PUE.Nr_Fator, 1.0 ) as Vl_Estoque,'#13#10'  PP.Vl_Custo * Coalesce( PUV.Nr_Fator, 1.0 ) as Vl_Custo'#13#10#13#10'from'#13#10'  #TmpProdPreco TPP'#13#10#13#10'inner join'#13#10'  Produto_TblPreco PTP'#13#10'on'#13#10'  PTP.Cd_Tabela = :Cd_Tabela'#13#10#13#10'inner join'#13#10'  Produto P'#13#10'on'#13#10'  P.Cd_Produto = TPP.Cd_Produto'#13#10#13#10'  and P.Nm_Produto like ''''a'#231'o%'''#13#10'  and P.Fl_Ativo = ''''1'''#13#10'inner join'#13#10'  Produto_Preco PP'#13#10'on'#13#10'  PP.Cd_Tabela  = PTP.Cd_Tabela and'#13#10'  PP.Cd_Produto = P.Cd_Produto'#13#10'inner join'#13#10'  Produto_Unidade PUV'#13#10'on'#13#10'  PUV.Cd_Produto = P.Cd_Produto and'#13#10'  PUV.Sg_Unidade = P.Sg_Venda'#13#10'inner join'#13#10'  Produto_Unidade PUE'#13#10'on'#13#10'  PUE.Cd_Produto = P.Cd_Produto and'#13#10'  PUE.Sg_Unidade = P.Sg_Estoque'#13#10'inner join'#13#10'  Grupo G'#13#10'on'#13#10'  G.Cd_Grupo = P.Cd_Grupo'#13#10#13#10'inner join'#13#10'  SubGrupo SG'#13#10'on'#13#10'  SG.Cd_SubGrupo = P.Cd_SubGrupo'#13#10#13#10'inner join'#13#10'  Classe C'#13#10'on'#13#10'  C.Cd_Classe = P.Cd_Classe'#13#10#13#10'left join'#13#10'  Laboratorio L'#13#10'on'#13#10'  L.Cd_Laboratorio = P.Cd_Laboratorio'#13#10'  order by'#13#10'  P.Nm_Produto'
    Parameters = <
      item
        Name = 'Cd_Tabela'
        DataType = ftString
        Size = 1
        Value = ' '
      end>
    SQLOther0.Strings = (
      'declare'
      '  @Cd_Tabela VarChar( 10 )'
      ''
      'set @Cd_Tabela = :Cd_Tabela'
      ''
      '-------------------- Cria a table #TmpProdPreco'
      'if Object_ID( ''''TempDB..#TmpProdPreco'''' ) is null'
      '  create table #TmpProdPreco'
      '    ('
      '    Cd_Produto Int,'
      '    Qt_Estoque Numeric( 12, 3 )'
      '    )'
      ''
      'else'
      '  truncate table #TmpProdPreco'
      ''
      '-------------------- Carrega TmpProdPreco'
      'insert into #TmpProdPreco'
      'select'
      '  PP.Cd_Produto, sum( ES.Qt_Liquido ) as Qt_Estoque'
      ''
      'from'
      '  Produto_Preco PP'
      ''
      '/* Join Estoque */'
      '  Estoque_Saldo ES'
      'on'
      '  ES.Cd_Filial  = :Cd_Filial and'
      '  ES.Cd_Produto = PP.Cd_Produto'
      '  /* Saldo Estoque */'
      ''
      'where'
      '  PP.Cd_Tabela = @Cd_Tabela'
      ''
      'group by'
      '  PP.Cd_Produto'
      ''
      'select'
      '  TPP.Cd_Produto, P.Nm_Produto, P.Sg_Estoque, P.Tp_Preco, P.Sg_Venda,'
      '  L.Nm_Laboratorio, P.Cd_Fabricante, TPP.Qt_Estoque, P.Ps_Produto, PUV.Nr_Fator,'
      '  P.Cd_Grupo, G.Nm_Grupo, P.Cd_SubGrupo, SG.Nm_SubGrupo, P.Cd_Classe, C.Nm_Classe,'
      '  PP.Vl_Venda * Coalesce( PUV.Nr_Fator, 1.0 ) * Coalesce( PUV.Nr_Indice, 1.0 ) as Vl_Venda,'
      '  PP.Vl_Venda * Coalesce( PUE.Nr_Fator, 1.0 ) * Coalesce( PUE.Nr_Indice, 1.0 ) as Vl_Estoque,'
      '  PP.Vl_Custo * Coalesce( PUV.Nr_Fator, 1.0 ) * Coalesce( PUV.Nr_Indice, 1.0 ) as Vl_Custo'
      ''
      'from'
      '  #TmpProdPreco TPP'
      ''
      'inner join'
      '  Produto_TblPreco PTP'
      'on'
      '  PTP.Cd_Tabela = @Cd_Tabela'
      ''
      'inner join'
      '  Produto P'
      'on'
      '  P.Cd_Produto = TPP.Cd_Produto'
      ''
    )
    Left = 58
    Top = 350
    object ADODsTabelacd_produto: TIntegerField
      FieldName = 'cd_produto'
    end
    object ADODsTabelanm_produto: TStringField
      FieldName = 'nm_produto'
      Size = 120
    end
    object ADODsTabelasg_estoque: TStringField
      FieldName = 'sg_estoque'
      FixedChar = True
      Size = 2
    end
    object ADODsTabelatp_preco: TStringField
      FieldName = 'tp_preco'
      FixedChar = True
      Size = 1
    end
    object ADODsTabelavl_venda: TBCDField
      FieldName = 'vl_venda'
      Precision = 28
      Size = 6
    end
    object ADODsTabelavl_custo: TBCDField
      FieldName = 'vl_custo'
      Precision = 28
      Size = 6
    end
    object ADODsTabelasg_venda: TStringField
      FieldName = 'sg_venda'
      Size = 2
    end
    object ADODsTabelanm_laboratorio: TStringField
      FieldName = 'nm_laboratorio'
      Size = 50
    end
    object ADODsTabelacd_fabricante: TStringField
      FieldName = 'cd_fabricante'
    end
    object ADODsTabelaQt_Estoque: TBCDField
      FieldName = 'Qt_Estoque'
      Size = 0
    end
    object ADODsTabelaVl_Estoque: TBCDField
      FieldName = 'Vl_Estoque'
    end
    object ADODsTabelaPs_Produto: TBCDField
      FieldName = 'Ps_Produto'
      Precision = 18
      Size = 3
    end
    object ADODsTabelaDp_Agrupamento: TStringField
      FieldKind = fkCalculated
      FieldName = 'Dp_Agrupamento'
      Size = 200
      Calculated = True
    end
    object ADODsTabelaCd_Grupo: TSmallintField
      FieldName = 'Cd_Grupo'
    end
    object ADODsTabelaNm_Grupo: TStringField
      FieldName = 'Nm_Grupo'
      Size = 50
    end
    object ADODsTabelaCd_SubGrupo: TSmallintField
      FieldName = 'Cd_SubGrupo'
    end
    object ADODsTabelaNm_SubGrupo: TStringField
      FieldName = 'Nm_SubGrupo'
      Size = 50
    end
    object ADODsTabelaCd_Classe: TSmallintField
      FieldName = 'Cd_Classe'
    end
    object ADODsTabelaNm_Classe: TStringField
      FieldName = 'Nm_Classe'
      Size = 50
    end
    object ADODsTabelaNr_Fator: TBCDField
      FieldName = 'Nr_Fator'
      Precision = 12
    end
    object ADODsTabelaDp_UnidVenda: TStringField
      FieldKind = fkCalculated
      FieldName = 'Dp_UnidVenda'
      Size = 15
      Calculated = True
    end
  end
  object DsTabela: TDataSource
    DataSet = ADODsTabela
    Left = 30
    Top = 350
  end
end
