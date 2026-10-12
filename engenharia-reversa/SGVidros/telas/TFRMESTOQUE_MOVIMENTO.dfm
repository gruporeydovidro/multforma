object FrmEstoque_Movimento: TFrmEstoque_Movimento
  Left = 289
  Top = 167
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Movimento de Estoque'
  ClientHeight = 544
  ClientWidth = 916
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
    Height = 544
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 895
    Height = 544
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 3
      Top = 514
      Width = 887
      Height = 5
      Shape = bsTopLine
    end
    object Label3: TLabel
      Left = 5
      Top = 3
      Width = 41
      Height = 13
      Caption = 'Per'#237'odo:'
    end
    object Label2: TLabel
      Left = 194
      Top = 2
      Width = 55
      Height = 13
      Caption = 'Movimento:'
    end
    object Label10: TLabel
      Left = 5
      Top = 74
      Width = 40
      Height = 13
      Caption = 'Produto:'
    end
    object SbProduto: TSpeedButton
      Left = 91
      Top = 89
      Width = 23
      Height = 19
      Hint = 'Seleciona Produto'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbProdutoClick
    end
    object SbOpen: TSpeedButton
      Left = 611
      Top = 89
      Width = 85
      Height = 19
      Hint = 'Visualizar'
      Caption = '&Selecionar'
      Flat = True
      Glyph.Data = {binary 250 bytes}
      ParentShowHint = False
      ShowHint = True
      OnClick = SbOpenClick
    end
    object Label7: TLabel
      Left = 463
      Top = 74
      Width = 100
      Height = 13
      Caption = 'Unidade de Estoque:'
    end
    object BvlSeparator_1: TBevel
      Left = 3
      Top = 111
      Width = 887
      Height = 5
      Shape = bsTopLine
    end
    object Label1: TLabel
      Left = 5
      Top = 114
      Width = 45
      Height = 13
      Caption = 'Produtos:'
    end
    object Bevel1: TBevel
      Left = 3
      Top = 475
      Width = 887
      Height = 5
      Shape = bsTopLine
    end
    object Label4: TLabel
      Left = 4
      Top = 478
      Width = 45
      Height = 13
      Caption = 'Entradas:'
    end
    object Label5: TLabel
      Left = 344
      Top = 478
      Width = 37
      Height = 13
      Caption = 'Sa'#237'das:'
    end
    object Label6: TLabel
      Left = 429
      Top = 478
      Width = 118
      Height = 13
      BiDiMode = bdLeftToRight
      Caption = 'Saldo da Movimenta'#231#227'o:'
      ParentBiDiMode = False
    end
    object Label8: TLabel
      Left = 89
      Top = 478
      Width = 60
      Height = 13
      Caption = 'Or'#231'amentos:'
    end
    object Label9: TLabel
      Left = 259
      Top = 478
      Width = 36
      Height = 13
      Caption = 'Balc'#227'o:'
    end
    object Label11: TLabel
      Left = 175
      Top = 478
      Width = 48
      Height = 13
      Caption = 'Reservas:'
    end
    object Label12: TLabel
      Left = 551
      Top = 478
      Width = 108
      Height = 13
      BiDiMode = bdLeftToRight
      Caption = 'Pend'#234'ncia de Compra:'
      ParentBiDiMode = False
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
    object Label13: TLabel
      Left = 5
      Top = 37
      Width = 44
      Height = 13
      Caption = 'Emitente:'
    end
    object Label14: TLabel
      Left = 360
      Top = 2
      Width = 31
      Height = 13
      Caption = 'CFOP:'
    end
    object SbCFOP: TSpeedButton
      Left = 391
      Top = 16
      Width = 23
      Height = 19
      Hint = 'Seleciona CFOP'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbCFOPClick
    end
    object Label15: TLabel
      Left = 391
      Top = 38
      Width = 186
      Height = 13
      Caption = 'Listar CFOP que N'#195'O atualiza estoque:'
    end
    object BitBtnReport: TBitBtn
      Left = 721
      Top = 517
      Width = 85
      Height = 25
      Caption = 'Imprimir'
      Enabled = False
      TabOrder = 12
      OnClick = BitBtnReportClick
      Glyph.Data = {binary 1146 bytes}
    end
    object BitBtnCancel: TBitBtn
      Left = 807
      Top = 517
      Width = 85
      Height = 25
      Caption = '&Fechar'
      TabOrder = 13
      OnClick = BitBtnCancelClick
      Glyph.Data = {binary 250 bytes}
    end
    object EdtDt_Start: TDateEdit
      Left = 5
      Top = 17
      Width = 89
      Height = 19
      CheckOnExit = True
      DialogTitle = 'Selecione a Data'
      GlyphKind = gkCustom
      Glyph.Data = {binary 390 bytes}
      NumGlyphs = 1
      StartOfWeek = Sun
      TabOrder = 0
    end
    object EdtDt_End: TDateEdit
      Left = 100
      Top = 17
      Width = 89
      Height = 19
      CheckOnExit = True
      DialogTitle = 'Selecione a Data'
      GlyphKind = gkCustom
      Glyph.Data = {binary 390 bytes}
      NumGlyphs = 1
      StartOfWeek = Sun
      TabOrder = 1
    end
    object CbMovto: TComboBox
      Left = 194
      Top = 16
      Width = 162
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 2
      Items.Strings = (
        'Todos'
        'Entrada'
        'Or'#231'amentos Fechados'
        'Sa'#237'das'
        'Balc'#227'o'
        'Or'#231'amentos com Reserva'
        'Pend'#234'ncia de Compra'
      )
    end
    object EdtCd_Produto: TCurrencyEdit
      Tag = 2
      Left = 5
      Top = 89
      Width = 85
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 8
      OnExit = EdtCd_ProdutoExit
      OnKeyDown = EdtCd_ProdutoKeyDown
    end
    object EdtNm_Produto: TEdit
      Left = 115
      Top = 89
      Width = 345
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
      TabOrder = 9
    end
    object EdtSg_Unidade: TEdit
      Left = 463
      Top = 89
      Width = 140
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
      TabOrder = 10
    end
    object DbGProdutos: TDBGrid
      Left = 4
      Top = 128
      Width = 885
      Height = 345
      DataSource = DsMovimento
      FixedColor = clSilver
      Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 11
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = DbGProdutosDblClick
      OnEnter = DbGProdutosEnter
      OnExit = DbGProdutosExit
      OnKeyPress = DbGProdutosKeyPress
      Columns = <
        item
          Alignment = taRightJustify
          Expanded = False
          FieldName = 'Dp_Movimento'
          Title.Alignment = taRightJustify
          Width = 84
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Dt_Movimento'
          Title.Alignment = taCenter
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nm_Emitente'
          Width = 560
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Sg_Unidade'
          Title.Alignment = taCenter
          Width = 27
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Qt_Item'
          Title.Alignment = taRightJustify
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Qt_Estoque'
          Title.Alignment = taRightJustify
          Width = 65
          Visible = True
        end>
    end
    object EdtQt_Entradas: TCurrencyEdit
      Left = 4
      Top = 492
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      TabStop = False
      AutoSize = False
      DecimalPlaces = 1
      DisplayFormat = '#,##0.0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 14
    end
    object EdtQt_Saidas: TCurrencyEdit
      Left = 344
      Top = 492
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      TabStop = False
      AutoSize = False
      DecimalPlaces = 1
      DisplayFormat = '#,##0.0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 19
    end
    object EdtQt_Saldo: TCurrencyEdit
      Left = 429
      Top = 492
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      TabStop = False
      AutoSize = False
      DecimalPlaces = 1
      DisplayFormat = '#,##0.0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      BiDiMode = bdLeftToRight
      ParentBiDiMode = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 20
    end
    object EdtQt_Orcamentos: TCurrencyEdit
      Left = 89
      Top = 492
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      TabStop = False
      AutoSize = False
      DecimalPlaces = 1
      DisplayFormat = '#,##0.0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 15
    end
    object EdtQt_Balcao: TCurrencyEdit
      Left = 259
      Top = 492
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      TabStop = False
      AutoSize = False
      DecimalPlaces = 1
      DisplayFormat = '#,##0.0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 17
    end
    object EdtVl_Reserva: TCurrencyEdit
      Left = 175
      Top = 492
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      TabStop = False
      AutoSize = False
      DecimalPlaces = 1
      DisplayFormat = '#,##0.0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 16
    end
    object SctReport: TSctReport
      Left = 543
      Top = 267
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
      TabOrder = 18
      Visible = False
      Minimized = True
      Prompt = True
      AutoRun = False
      SuppressStatus = False
      PixelsPerInch = 96
      STop = 10
      SLeft = 5
      SWidth = 833
      SHeight = 426
      MTop = 267
      MLeft = 543
      SAlign = alNone
      Version = vAce1_0
      object SctGrouppage2: TSctGrouppage
        Left = 35
        Top = 55
        Width = 27
        Height = 0
        VertScrollBar.Position = 17
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
        Description = 'Rela'#231#227'o de Movimento de Estoque'
        CloseDataSet = False
        DataRange = drAllRecords
        OmitLastPgFt = False
        Head = SctBand8
        Detail = SctDetailVendaPeriodo
        Foot = SctBand12
        PageHead = SctBand9
        PageFoot = SctBand11
        DataSource = DsMovimento
        Order = 1
        object SctLevel8: TSctLevel
          Left = 0
          Top = -17
          Width = 0
          Height = 0
          IsHeader = True
        end
        object SctLevel9: TSctLevel
          Left = 0
          Top = -17
          Width = 0
          Height = 0
          IsHeader = True
        end
        object SctLevel10: TSctLevel
          Left = 0
          Top = -17
          Width = 0
          Height = 0
        end
        object SctLevel11: TSctLevel
          Left = 0
          Top = -17
          Width = 0
          Height = 0
        end
        object SctLevel12: TSctLevel
          Left = 0
          Top = -17
          Width = 0
          Height = 0
        end
        object SctDateTimeVar2: TSctDateTimeVar
          Left = 0
          Top = -17
          Width = 0
          Height = 0
          UpdateLevel = SctLevel8
          AutoVar = True
          ID = vidDateTimeVar
        end
        object SctPageVar2: TSctPageVar
          Left = 0
          Top = -17
          Width = 0
          Height = 0
          UpdateLevel = SctLevel9
          AutoVar = True
          ID = vidPageVar
        end
        object DataSourceGuide: TSctDataSourceGuide
          Left = 0
          Top = -17
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel10
          DataSource = DsMovimento
        end
        object adodsmovimentoNr_MovimentoVar: TSctDBVar
          Left = 0
          Top = -17
          Width = 0
          Height = 0
          DataField = 'Nr_Movimento'
          DataSource = DsMovimento
          UpdateLevel = SctLevel10
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsmovimentoDt_MovimentoVar: TSctDBVar
          Left = 0
          Top = -17
          Width = 0
          Height = 0
          DataField = 'Dt_Movimento'
          DataSource = DsMovimento
          UpdateLevel = SctLevel10
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsmovimentoCd_EmitenteVar: TSctDBVar
          Left = 0
          Top = -17
          Width = 0
          Height = 0
          DataField = 'Cd_Emitente'
          DataSource = DsMovimento
          UpdateLevel = SctLevel10
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsmovimentoNm_EmitenteVar: TSctDBVar
          Left = 0
          Top = -17
          Width = 0
          Height = 0
          DataField = 'Nm_Emitente'
          DataSource = DsMovimento
          UpdateLevel = SctLevel10
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsmovimentoQt_ItemVar: TSctDBVar
          Left = 0
          Top = -17
          Width = 0
          Height = 0
          DataField = 'Qt_Item'
          DataSource = DsMovimento
          UpdateLevel = SctLevel10
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsmovimentoQt_EstoqueVar: TSctDBVar
          Left = 0
          Top = -17
          Width = 0
          Height = 0
          DataField = 'Qt_Estoque'
          DataSource = DsMovimento
          UpdateLevel = SctLevel10
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsmovimentoFl_MovimentoVar: TSctDBVar
          Left = 0
          Top = -17
          Width = 0
          Height = 0
          DataField = 'Fl_Movimento'
          DataSource = DsMovimento
          UpdateLevel = SctLevel10
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsmovimentoDp_MovimentoVar: TSctDBVar
          Left = 0
          Top = -17
          Width = 0
          Height = 0
          DataField = 'Dp_Movimento'
          DataSource = DsMovimento
          UpdateLevel = SctLevel10
          AutoVar = False
          ID = vidAutoDataVar
        end
        object DataSourceGuide1: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel10
          DataSource = DmMaster.DsUsuario
        end
        object DataSourceGuide2: TSctDataSourceGuide
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
        object TotalOfDp_Filial: TSctTotalvar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Variable = adodsfilialDp_FilialVar
          UpdateLevel = SctLevel10
          AutoVar = False
          ID = vidTotalVar
        end
        object DataSourceGuide3: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel10
          DataSource = FrmOrcamento.DsProduto
        end
        object DataSourceGuide4: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel10
          DataSource = FrmOrcamento.DsProdSelect
        end
        object DataSourceGuide5: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel10
          DataSource = FrmProduto_Find.DsFind
        end
        object adodsmovimentoSg_UnidadeVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Sg_Unidade'
          DataSource = DsMovimento
          UpdateLevel = SctLevel10
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctBand8: TSctBand
          Left = 0
          Top = -17
          Width = 786
          Height = 7
          ParentColor = True
          BandName = 'Report Header'
          Updatelevel = SctLevel8
          Visible = False
        end
        object SctBand9: TSctBand
          Left = 0
          Top = 5
          Width = 786
          Height = 44
          ParentColor = True
          BandName = 'Page Header'
          Updatelevel = SctLevel9
          object SctVendaPeriodo: TSctvarlabel
            Left = 2
            Top = 2
            Width = 374
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Movimento de Estoque'
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
          Height = 20
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = True
          ParentFont = False
          BandName = 'Detail'
          Updatelevel = SctLevel10
          object Sctvarlabel1: TSctvarlabel
            Left = 1
            Top = 2
            Width = 70
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laRight
            Variable = adodsmovimentoDp_MovimentoVar
          end
          object Sctvarlabel2: TSctvarlabel
            Left = 76
            Top = 2
            Width = 65
            Height = 17
            AlignHorizontal = laCenter
            Variable = adodsmovimentoDt_MovimentoVar
            DataFormat.DisplayFormat = 'dd/mm/yyyy'
          end
          object Sctvarlabel11: TSctvarlabel
            Left = 147
            Top = 2
            Width = 369
            Height = 17
            Variable = adodsmovimentoNm_EmitenteVar
          end
          object Sctvarlabel12: TSctvarlabel
            Left = 656
            Top = 2
            Width = 80
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsmovimentoQt_EstoqueVar
            DataFormat.DisplayFormat = '#,##0.0##'
            DataFormat.Digits = 3
          end
          object Sctvarlabel13: TSctvarlabel
            Left = 571
            Top = 2
            Width = 80
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsmovimentoQt_ItemVar
            DataFormat.DisplayFormat = '#,##0.0##'
            DataFormat.Digits = 3
          end
          object Sctvarlabel14: TSctvarlabel
            Left = 520
            Top = 2
            Width = 46
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laCenter
            Variable = adodsmovimentoSg_UnidadeVar
          end
        end
        object SctBand11: TSctBand
          Left = 0
          Top = 222
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
          Top = 260
          Width = 786
          Height = 59
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = True
          ParentFont = False
          BandName = 'Report Footer'
          Updatelevel = SctLevel12
          object SctLine11: TSctLine
            Left = 275
            Top = 1
            Width = 460
            Height = 6
            AlignVertical = laTop
          end
          object Sctvarlabel15: TSctvarlabel
            Left = 255
            Top = 3
            Width = 80
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Entradas'
          end
          object SctEntrada: TSctvarlabel
            Left = 255
            Top = 19
            Width = 80
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = '0,00'
          end
          object Sctvarlabel17: TSctvarlabel
            Left = 516
            Top = 3
            Width = 80
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Sa'#237'das'
          end
          object SctSaida: TSctvarlabel
            Left = 516
            Top = 19
            Width = 80
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = '0,00'
          end
          object Sctvarlabel19: TSctvarlabel
            Left = 601
            Top = 3
            Width = 135
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            DataFormat.SuppressNulls = True
            Caption = 'Saldo da Movimenta'#231#227'o'
          end
          object SctSaldo: TSctvarlabel
            Left = 601
            Top = 19
            Width = 135
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            DataFormat.SuppressNulls = True
            Caption = '0,00'
          end
          object SctOrcamento: TSctvarlabel
            Left = 342
            Top = 19
            Width = 80
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = '0,00'
          end
          object Sctvarlabel18: TSctvarlabel
            Left = 342
            Top = 3
            Width = 80
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Or'#231'amentos'
          end
          object SctReserva: TSctvarlabel
            Left = 429
            Top = 19
            Width = 80
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = '0,00'
          end
          object Sctvarlabel20: TSctvarlabel
            Left = 429
            Top = 3
            Width = 80
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Reservas'
          end
        end
        object PgHdPedido: TSctSubBand
          Left = 0
          Top = 151
          Width = 786
          Height = 21
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
            Width = 70
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Movimento'
          end
          object Sctvarlabel122: TSctvarlabel
            Left = 76
            Top = 2
            Width = 65
            Height = 17
            AlignHorizontal = laCenter
            Caption = 'Data'
          end
          object SctLine1: TSctLine
            Left = 1
            Top = 15
            Width = 734
            Height = 6
          end
          object Sctvarlabel7: TSctvarlabel
            Left = 147
            Top = 2
            Width = 65
            Height = 17
            Caption = 'Emitente'
          end
          object Sctvarlabel8: TSctvarlabel
            Left = 656
            Top = 2
            Width = 80
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Estoque'
          end
          object Sctvarlabel9: TSctvarlabel
            Left = 571
            Top = 2
            Width = 80
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Quantidade'
          end
          object Sctvarlabel10: TSctvarlabel
            Left = 520
            Top = 2
            Width = 46
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laCenter
            Caption = 'Unidade'
          end
        end
        object PgHdSubBand: TSctSubBand
          Left = 0
          Top = 64
          Width = 786
          Height = 72
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = True
          ParentFont = False
          BandName = 'PgHdSubBand'
          Updatelevel = SctLevel9
          Band = SctBand9
          Above = False
          object Sctvarlabel3: TSctvarlabel
            Left = 0
            Top = 2
            Width = 44
            Height = 17
            Caption = 'Per'#237'odo:'
          end
          object SctDt_Start: TSctvarlabel
            Left = 0
            Top = 18
            Width = 65
            Height = 17
            Caption = 'dd/mm/yyyy'
          end
          object SctDt_End: TSctvarlabel
            Left = 66
            Top = 18
            Width = 65
            Height = 17
            Caption = 'dd/mm/yyyy'
          end
          object Sctvarlabel4: TSctvarlabel
            Left = 137
            Top = 2
            Width = 59
            Height = 17
            Caption = 'Movimento:'
          end
          object SctMovto: TSctvarlabel
            Left = 137
            Top = 18
            Width = 106
            Height = 17
            Caption = 'dd/mm/yyyy'
          end
          object Sctvarlabel5: TSctvarlabel
            Left = -1
            Top = 36
            Width = 44
            Height = 17
            Caption = 'Produto:'
          end
          object SctProduto: TSctvarlabel
            Left = -1
            Top = 52
            Width = 489
            Height = 17
            Caption = 'dd/mm/yyyy'
          end
          object Sctvarlabel6: TSctvarlabel
            Left = 503
            Top = 36
            Width = 103
            Height = 17
            Caption = 'Unidade de Estoque:'
          end
          object SctUnidade: TSctvarlabel
            Left = 503
            Top = 52
            Width = 163
            Height = 17
            Caption = 'KG - Kilo'
          end
          object SctLine2: TSctLine
            Left = 1
            Top = 66
            Width = 734
            Height = 6
          end
        end
      end
    end
    object EdtQt_Compra: TCurrencyEdit
      Left = 551
      Top = 492
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      TabStop = False
      AutoSize = False
      DecimalPlaces = 1
      DisplayFormat = '#,##0.0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      BiDiMode = bdLeftToRight
      ParentBiDiMode = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 21
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
      TabOrder = 5
      OnExit = EdtCd_EmitenteExit
      OnKeyDown = EdtCd_ProdutoKeyDown
    end
    object EdtNm_Emitente: TEdit
      Left = 78
      Top = 52
      Width = 308
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
    object EdtCd_CFOP: TEdit
      Left = 360
      Top = 16
      Width = 31
      Height = 19
      MaxLength = 4
      TabOrder = 3
      OnExit = EdtCd_CFOPExit
      OnKeyDown = EdtCd_ProdutoKeyDown
    end
    object EdtDs_CFOP: TEdit
      Left = 415
      Top = 16
      Width = 232
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
    object CbFlCFOP: TComboBox
      Left = 391
      Top = 52
      Width = 49
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
  object ADODsMovimento: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    OnCalcFields = ADODsMovimentoCalcFields
    CommandText = 'select'#13#10'  A.Nr_Entrada as Nr_Movimento, A.Dt_Lancamento as Dt_Movimento, A.Cd_Emitente,'#13#10'  B.Nm_Emitente, C.Sg_Unidade, C.Qt_Item, C.Qt_Estoque,'#13#10'  ''''Ent'''' as Fl_Movimento'#13#10#13#10'from'#13#10'  Entrada A'#13#10#13#10'inner join'#13#10'  Emitente B'#13#10'on'#13#10'  B.Cd_Emitente = A.Cd_Emitente'#13#10#13#10'inner join'#13#10'  Entrada_Item C'#13#10'on'#13#10'  C.Cd_Filial  = A.Cd_Filial and'#13#10'  C.Nr_Entrada = A.Nr_Entrada and'#13#10'  C.Cd_Produto = 1'#13#10#13#10'where'#13#10'  A.Cd_Filial     = 1 and'#13#10'  A.St_Entrada    = ''''2'''#13#10
    Parameters = <>
    SQLOther0.Strings = (
      '-------------------- Entradas no Estoque'
      'insert into #EstMovto( Nr_Movimento, Dt_Movimento, Cd_Emitente, Nm_Emitente,'
      '    Sg_Unidade, Qt_Item, Qt_Estoque, Fl_Movimento )'
      'select'
      '  A.Nr_Entrada as Nr_Movimento, A.Dt_Lancamento as Dt_Movimento, A.Cd_Emitente,'
      '  B.Nm_Emitente, C.Sg_Unidade, C.Qt_Item, C.Qt_Estoque,'
      '  ''''Ent'''' as Fl_Movimento'
      ''
      'from'
      '  Entrada A'
      ''
      'inner join'
      '  CFOP CF'
      'on'
      '  CF.Cd_CFOP = A.Cd_CFOP'
      '  /* Fl_CFOP */'
      ''
      'inner join'
      '  Emitente B'
      'on'
      '  B.Cd_Emitente = A.Cd_Emitente'
      ''
      'inner join'
      '  Entrada_Item C'
      'on'
      '  C.Cd_Filial  = A.Cd_Filial and'
      '  C.Nr_Entrada = A.Nr_Entrada and'
      '  C.Cd_Produto = @Cd_Produto'
      ''
      'where'
      '  A.Cd_Filial     = @Cd_Filial and'
      '  /* Cd_Emitente */'
      '  /* Cd_CFOP */'
      '  A.Dt_Lancamento >= @Dt_Start and'
      '  A.Dt_Lancamento < @Dt_End and'
      '  A.St_Entrada    = ''''2'''
      ''
      '-------------------- Entradas no Estoque - itens de baixa - 23/09/2009'
      'insert into #EstMovto( Nr_Movimento, Dt_Movimento, Cd_Emitente, Nm_Emitente,'
      '    Sg_Unidade, Qt_Item, Qt_Estoque, Fl_Movimento )'
      'select'
      '  A.Nr_Entrada as Nr_Movimento, A.Dt_Lancamento as Dt_Movimento, A.Cd_Emitente,'
      '  B.Nm_Emitente, C.Sg_Unidade, C.Qt_Item, C.Qt_Estoque,'
      '  ''''Ent'''' as Fl_Movimento'
      ''
      'from'
      '  Entrada A'
      ''
      'inner join'
      '  CFOP CF'
      'on'
      '  CF.Cd_CFOP = A.Cd_CFOP'
      '  /* Fl_CFOP */'
      ''
      'inner join'
      '  Emitente B'
      'on'
      '  B.Cd_Emitente = A.Cd_Emitente'
      ''
      'inner join'
      '  Entrada_Item C'
      'on'
      '  C.Cd_Filial  = A.Cd_Filial and'
      '  C.Nr_Entrada = A.Nr_Entrada'
      ''
      'inner join'
      '  Produto P'
      'on'
      '  P.Cd_Produto = C.Cd_Produto and'
      '  P.Cd_Baixa   = @Cd_Produto'
      ''
      'where'
      '  A.Cd_Filial     = @Cd_Filial and'
      '  /* Cd_Emitente */'
      '  /* Cd_CFOP */'
      '  A.Dt_Lancamento >= @Dt_Start and'
      '  A.Dt_Lancamento < @Dt_End and'
      '  A.St_Entrada    = ''''2'''
      ''
    )
    SQLOther1.Strings = (
      '-------------------- Itens do Or'#231'amento - Fechado'
      'insert into #EstMovto( Nr_Movimento, Dt_Movimento, Cd_Emitente, Nm_Emitente,'
      '    Sg_Unidade, Qt_Item, Qt_Estoque, Fl_Movimento )'
      'select'
      '  A.Nr_Orcamento as Nr_Movimento, A.Dt_Fatura as Dt_Movimento, A.Cd_Emitente,'
      '  B.Nm_Emitente, C.Sg_Unidade, C.Qt_Item, C.Qt_Estoque,'
      '  ''''Or'#231''' as Fl_Movimento'
      ''
      'from'
      '  Orcamento A'
      ''
      'inner join'
      '  CFOP CF'
      'on'
      '  CF.Cd_CFOP = A.Cd_CFOP'
      '  /* Fl_CFOP */'
      ''
      'inner join'
      '  Orcamento_Item C'
      'on'
      '  C.Cd_Filial     = A.Cd_Filial and'
      '  C.Nr_Orcamento  = A.Nr_Orcamento and'
      '  C.Cd_Produto    = @Cd_Produto and'
      '  C.Fl_Confirmado = ''''1'''
      ''
      'left join'
      '  Emitente B'
      'on'
      '  B.Cd_Emitente = A.Cd_Emitente'
      ''
      'where'
      '  A.Cd_Filial    = @Cd_Filial and'
      '  A.St_Orcamento = ''''9'''' and'
      '  /* Cd_Emitente */'
      '  /* Cd_CFOP */'
      '  A.Dt_Fatura   >= @Dt_Start and'
      '  A.Dt_Fatura    < @Dt_End'
      ''
      '-------------------- Itens do Conjunto'
      'insert into #EstMovto( Nr_Movimento, Dt_Movimento, Cd_Emitente, Nm_Emitente,'
      '    Sg_Unidade, Qt_Item, Qt_Estoque, Fl_Movimento )'
      'select'
      '  A.Nr_Orcamento as Nr_Movimento, A.Dt_Fatura as Dt_Movimento, A.Cd_Emitente,'
      '  B.Nm_Emitente, C.Sg_Unidade, C.Qt_Item, C.Qt_Item,'
      '  ''''Or'#231''' as Fl_Movimento'
      ''
      'from'
      '  Orcamento A'
      ''
      'inner join'
      '  CFOP CF'
      'on'
      '  CF.Cd_CFOP = A.Cd_CFOP'
      '  /* Fl_CFOP */'
      ''
      'inner join'
      '  Orcamento_Conjunto C'
      'on'
      '  C.Cd_Filial     = A.Cd_Filial and'
      '  C.Nr_Orcamento  = A.Nr_Orcamento and'
      '  C.Cd_Produto    = @Cd_Produto'
      ''
      'left join'
      '  Emitente B'
      'on'
      '  B.Cd_Emitente = A.Cd_Emitente'
      ''
      'where'
      '  A.Cd_Filial    = @Cd_Filial and'
      '  A.St_Orcamento = ''''9'''' and'
      '  /* Cd_Emitente */'
      '  /* Cd_CFOP */'
      '  A.Dt_Fatura   >= @Dt_Start and'
      '  A.Dt_Fatura    < @Dt_End'
      ''
      '-------------------- Itens do Or'#231'amento - Fechado - itens de baixa 23/09/2009'
      'insert into #EstMovto( Nr_Movimento, Dt_Movimento, Cd_Emitente, Nm_Emitente,'
      '    Sg_Unidade, Qt_Item, Qt_Estoque, Fl_Movimento )'
      'select'
      '  A.Nr_Orcamento as Nr_Movimento, A.Dt_Fatura as Dt_Movimento, A.Cd_Emitente,'
      '  B.Nm_Emitente, C.Sg_Unidade, C.Qt_Item, C.Qt_Estoque,'
      '  ''''Or'#231''' as Fl_Movimento'
      ''
      'from'
      '  Orcamento A'
      ''
      'inner join'
      '  CFOP CF'
      'on'
      '  CF.Cd_CFOP = A.Cd_CFOP'
      '  /* Fl_CFOP */'
      ''
      'inner join'
      '  Orcamento_Item C'
      'on'
      '  C.Cd_Filial     = A.Cd_Filial and'
      '  C.Nr_Orcamento  = A.Nr_Orcamento and'
      '  C.Fl_Confirmado = ''''1'''
      ''
      'inner join'
      '  Produto P'
      'on'
      '  P.Cd_Produto = C.Cd_Produto and'
      '  P.Cd_Baixa   = @Cd_Produto'
      ''
      'left join'
      '  Emitente B'
      'on'
      '  B.Cd_Emitente = A.Cd_Emitente'
      ''
      'where'
      '  A.Cd_Filial    = @Cd_Filial and'
      '  A.St_Orcamento = ''''9'''' and'
      '  /* Cd_Emitente */'
      '  /* Cd_CFOP */'
      '  A.Dt_Fatura   >= @Dt_Start and'
      '  A.Dt_Fatura    < @Dt_End'
      ''
      '-------------------- Itens do Conjunto - itens de baixa 23/09/2009'
      'insert into #EstMovto( Nr_Movimento, Dt_Movimento, Cd_Emitente, Nm_Emitente,'
      '    Sg_Unidade, Qt_Item, Qt_Estoque, Fl_Movimento )'
      'select'
      '  A.Nr_Orcamento as Nr_Movimento, A.Dt_Fatura as Dt_Movimento, A.Cd_Emitente,'
      '  B.Nm_Emitente, C.Sg_Unidade, C.Qt_Item, C.Qt_Item,'
      '  ''''Or'#231''' as Fl_Movimento'
      ''
      'from'
      '  Orcamento A'
      ''
      'inner join'
      '  CFOP CF'
      'on'
      '  CF.Cd_CFOP = A.Cd_CFOP'
      '  /* Fl_CFOP */'
      ''
      'inner join'
      '  Orcamento_Conjunto C'
      'on'
      '  C.Cd_Filial     = A.Cd_Filial and'
      '  C.Nr_Orcamento  = A.Nr_Orcamento'
      ''
      'inner join'
      '  Produto P'
      'on'
      '  P.Cd_Produto = C.Cd_Produto and'
      '  P.Cd_Baixa   = @Cd_Produto'
      ''
      'left join'
      '  Emitente B'
      'on'
      '  B.Cd_Emitente = A.Cd_Emitente'
      ''
      'where'
      '  A.Cd_Filial    = @Cd_Filial and'
      '  A.St_Orcamento = ''''9'''' and'
      '  /* Cd_Emitente */'
      '  /* Cd_CFOP */'
      '  A.Dt_Fatura   >= @Dt_Start and'
      '  A.Dt_Fatura    < @Dt_End'
      ''
    )
    SQLOther2.Strings = (
      '-------------------- Sa'#237'das no Estoque'
      'insert into #EstMovto( Nr_Movimento, Dt_Movimento, Cd_Emitente, Nm_Emitente,'
      '    Sg_Unidade, Qt_Item, Qt_Estoque, Fl_Movimento )'
      'select'
      '  A.Nr_Saida as Nr_Movimento, A.Dt_Lancamento as Dt_Movimento, A.Cd_Emitente,'
      '  B.Nm_Emitente, C.Sg_Unidade, C.Qt_Item, C.Qt_Estoque,'
      '  ''''Sai'''' as Fl_Movimento'
      ''
      'from'
      '  Saida A'
      ''
      'inner join'
      '  CFOP CF'
      'on'
      '  CF.Cd_CFOP = A.Cd_CFOP'
      '  /* Fl_CFOP */'
      ''
      'inner join'
      '  Emitente B'
      'on'
      '  B.Cd_Emitente = A.Cd_Emitente'
      ''
      'inner join'
      '  Saida_Item C'
      'on'
      '  C.Cd_Filial  = A.Cd_Filial and'
      '  C.Nr_Saida   = A.Nr_Saida and'
      '  C.Cd_Produto = @Cd_Produto'
      ''
      'where'
      '  A.Cd_Filial      = @Cd_Filial and'
      '  /* Cd_Emitente */'
      '  /* Cd_CFOP */'
      '  A.Dt_Lancamento >= @Dt_Start and'
      '  A.Dt_Lancamento < @Dt_End and'
      '  A.St_Saida       = ''''2'''
      ''
      '-------------------- Sa'#237'das no Estoque - itens de baixa 23/09/2009'
      'insert into #EstMovto( Nr_Movimento, Dt_Movimento, Cd_Emitente, Nm_Emitente,'
      '    Sg_Unidade, Qt_Item, Qt_Estoque, Fl_Movimento )'
      'select'
      '  A.Nr_Saida as Nr_Movimento, A.Dt_Lancamento as Dt_Movimento, A.Cd_Emitente,'
      '  B.Nm_Emitente, C.Sg_Unidade, C.Qt_Item, C.Qt_Estoque,'
      '  ''''Sai'''' as Fl_Movimento'
      ''
      'from'
      '  Saida A'
      ''
      'inner join'
      '  CFOP CF'
      'on'
      '  CF.Cd_CFOP = A.Cd_CFOP'
      '  /* Fl_CFOP */'
      ''
      'inner join'
      '  Emitente B'
      'on'
      '  B.Cd_Emitente = A.Cd_Emitente'
      ''
      'inner join'
      '  Saida_Item C'
      'on'
      '  C.Cd_Filial  = A.Cd_Filial and'
      '  C.Nr_Saida   = A.Nr_Saida'
      ''
      'inner join'
      '  Produto P'
      'on'
      '  P.Cd_Produto = C.Cd_Produto and'
      '  P.Cd_Baixa   = @Cd_Produto'
      ''
      'where'
      '  A.Cd_Filial      = @Cd_Filial and'
      '  /* Cd_Emitente */'
      '  /* Cd_CFOP */'
      '  A.Dt_Lancamento >= @Dt_Start and'
      '  A.Dt_Lancamento < @Dt_End and'
      '  A.St_Saida       = ''''2'''
      ''
    )
    SQLOther3.Strings = (
      '-------------------- Vendas de Balc'#227'o'
      'insert into #EstMovto( Nr_Movimento, Dt_Movimento, Cd_Emitente, Nm_Emitente,'
      '    Sg_Unidade, Qt_Item, Qt_Estoque, Fl_Movimento )'
      'select'
      '  A.Nr_Balcao as Nr_Movimento, A.Dt_Balcao as Dt_Movimento, A.Cd_Emitente,'
      '  Coalesce( B.Nm_Emitente, A.Nm_Comprador ) as Nm_emitente,'
      '  P.Sg_Venda as Sg_Unidade, C.Qt_Item,'
      '  C.Qt_Item * PU.Nr_Fator as Qt_Estoque, ''''Bal'''' as Fl_Movimento'
      ''
      'from'
      '  Balcao A'
      ''
      'inner join'
      '  Balcao_Item C'
      'on'
      '  C.Cd_Filial  = A.Cd_Filial and'
      '  C.Nr_Balcao  = A.Nr_Balcao and'
      '  C.Cd_Produto = @Cd_Produto'
      ''
      'inner join'
      '  Produto P'
      'on'
      '  P.Cd_Produto = C.Cd_Produto'
      ''
      'left join'
      '  Produto_Unidade PU'
      'on'
      '  PU.Cd_Produto = P.Cd_Produto and'
      '  PU.Sg_Unidade = P.Sg_Venda'
      ''
      'left join'
      '  Emitente B'
      'on'
      '  B.Cd_Emitente = A.Cd_Emitente'
      ''
      'where'
      '  A.Cd_Filial  = @Cd_Filial and'
      '  A.St_Balcao  = ''''9'''' and'
      '  /* Cd_Emitente */'
      '  A.Dt_Balcao  >= @Dt_Start and'
      '  A.Dt_Balcao  < @Dt_End'
      '  '
    )
    SQLOther4.Strings = (
      '-------------------- Itens do Or'#231'amento Reserva - Estoque Reserva'
      'insert into #EstMovto( Nr_Movimento, Dt_Movimento, Cd_Emitente, Nm_Emitente,'
      '    Sg_Unidade, Qt_Item, Qt_Estoque, Fl_Movimento )'
      'select'
      '  A.Nr_Orcamento as Nr_Movimento, A.Dt_Confirmado as Dt_Movimento, A.Cd_Emitente,'
      '  B.Nm_Emitente, C.Sg_Unidade, C.Qt_Item, C.Qt_Estoque,'
      '  ''''Res'''' as Fl_Movimento'
      ''
      'from'
      '  Orcamento A'
      ''
      'inner join'
      '  Orcamento_Item C'
      'on'
      '  C.Cd_Filial     = A.Cd_Filial and'
      '  C.Nr_Orcamento  = A.Nr_Orcamento and'
      '  C.Cd_Produto    = @Cd_Produto and'
      '  C.Fl_Confirmado = ''''1'''
      ''
      'left join'
      '  Emitente B'
      'on'
      '  B.Cd_Emitente = A.Cd_Emitente'
      ''
      'where'
      '  A.Cd_Filial    = @Cd_Filial and'
      '  A.St_Orcamento = ''''5'''' and'
      '  /* Cd_Emitente */'
      '  /* Cd_CFOP */'
      '  A.Dt_Confirmado  >= @Dt_Start and'
      '  A.Dt_Confirmado   < @Dt_End'
      ''
      '-------------------- Itens do Conjunto'
      'insert into #EstMovto( Nr_Movimento, Dt_Movimento, Cd_Emitente, Nm_Emitente,'
      '    Sg_Unidade, Qt_Item, Qt_Estoque, Fl_Movimento )'
      'select'
      '  A.Nr_Orcamento as Nr_Movimento, A.Dt_Emissao as Dt_Movimento, A.Cd_Emitente,'
      '  B.Nm_Emitente, C.Sg_Unidade, C.Qt_Item, C.Qt_Item,'
      '  ''''Res'''' as Fl_Movimento'
      ''
      'from'
      '  Orcamento A'
      ''
      'inner join'
      '  Orcamento_Conjunto C'
      'on'
      '  C.Cd_Filial     = A.Cd_Filial and'
      '  C.Nr_Orcamento  = A.Nr_Orcamento and'
      '  C.Cd_Produto    = @Cd_Produto'
      ''
      'left join'
      '  Emitente B'
      'on'
      '  B.Cd_Emitente = A.Cd_Emitente'
      ''
      'where'
      '  A.Cd_Filial    = @Cd_Filial and'
      '  A.St_Orcamento = ''''5'''' and'
      '  /* Cd_Emitente */'
      '  /* Cd_CFOP */'
      '  A.Dt_Confirmado  >= @Dt_Start and'
      '  A.Dt_Confirmado   < @Dt_End'
      ''
      '-------------------- Itens do Or'#231'amento Reserva - Estoque Reserva - itens de baixa 23/09/2009'
      'insert into #EstMovto( Nr_Movimento, Dt_Movimento, Cd_Emitente, Nm_Emitente,'
      '    Sg_Unidade, Qt_Item, Qt_Estoque, Fl_Movimento )'
      'select'
      '  A.Nr_Orcamento as Nr_Movimento, A.Dt_Confirmado as Dt_Movimento, A.Cd_Emitente,'
      '  B.Nm_Emitente, C.Sg_Unidade, C.Qt_Item, C.Qt_Estoque,'
      '  ''''Res'''' as Fl_Movimento'
      ''
      'from'
      '  Orcamento A'
      ''
      'inner join'
      '  Orcamento_Item C'
      'on'
      '  C.Cd_Filial     = A.Cd_Filial and'
      '  C.Nr_Orcamento  = A.Nr_Orcamento and'
      '  C.Fl_Confirmado = ''''1'''
      ''
      'inner join'
      '  Produto P'
      'on'
      '  P.Cd_Produto = C.Cd_Produto and'
      '  P.Cd_Baixa   = @Cd_Produto'
      ''
      'left join'
      '  Emitente B'
      'on'
      '  B.Cd_Emitente = A.Cd_Emitente'
      ''
      'where'
      '  A.Cd_Filial    = @Cd_Filial and'
      '  A.St_Orcamento = ''''5'''' and'
      '  /* Cd_Emitente */'
      '  /* Cd_CFOP */'
      '  A.Dt_Confirmado  >= @Dt_Start and'
      '  A.Dt_Confirmado   < @Dt_End'
      ''
      '-------------------- Itens do Conjunto - itens de baixa 23/09/2009'
      'insert into #EstMovto( Nr_Movimento, Dt_Movimento, Cd_Emitente, Nm_Emitente,'
      '    Sg_Unidade, Qt_Item, Qt_Estoque, Fl_Movimento )'
      'select'
      '  A.Nr_Orcamento as Nr_Movimento, A.Dt_Emissao as Dt_Movimento, A.Cd_Emitente,'
      '  B.Nm_Emitente, C.Sg_Unidade, C.Qt_Item, C.Qt_Item,'
      '  ''''Res'''' as Fl_Movimento'
      ''
      'from'
      '  Orcamento A'
      ''
      'inner join'
      '  Orcamento_Conjunto C'
      'on'
      '  C.Cd_Filial     = A.Cd_Filial and'
      '  C.Nr_Orcamento  = A.Nr_Orcamento'
      ''
      'inner join'
      '  Produto P'
      'on'
      '  P.Cd_Produto = C.Cd_Produto and'
      '  P.Cd_Baixa   = @Cd_Produto'
      ''
      'left join'
      '  Emitente B'
      'on'
      '  B.Cd_Emitente = A.Cd_Emitente'
      ''
      'where'
      '  A.Cd_Filial    = @Cd_Filial and'
      '  A.St_Orcamento = ''''5'''' and'
      '  /* Cd_Emitente */'
      '  /* Cd_CFOP */'
      '  A.Dt_Confirmado  >= @Dt_Start and'
      '  A.Dt_Confirmado   < @Dt_End'
      ''
    )
    SQLOther5.Strings = (
      '-------------------- Compras'
      'insert into #EstMovto( Nr_Movimento, Dt_Movimento, Cd_Emitente, Nm_Emitente,'
      '    Sg_Unidade, Qt_Item, Qt_Estoque, Fl_Movimento )'
      'select'
      '  A.Nr_Compra as Nr_Movimento, A.Dt_Emissao as Dt_Movimento, A.Cd_Emitente,'
      '  B.Nm_Emitente, C.Sg_Unidade,'
      '  ( C.Qt_Item - C.Qt_Recebida ) * Coalesce( PU.Nr_Fator, 1.0 ) as Qt_Item,'
      '  ( C.Qt_Item - C.Qt_Recebida ) * Coalesce( PU.Nr_Fator, 1.0 ) as Qt_Estoque,'
      '  ''''Com'''' as Fl_Movimento'
      ''
      'from'
      '  Compra A'
      ''
      'inner join'
      '  Emitente B'
      'on'
      '  B.Cd_Emitente = A.Cd_Emitente'
      ''
      'inner join'
      '  Compra_Item C'
      'on'
      '  C.Cd_Filial  = A.Cd_Filial and'
      '  C.Nr_Compra  = A.Nr_Compra and'
      '  C.Cd_Produto = @Cd_Produto'
      ''
      'left join'
      '  Produto_Unidade PU'
      'on'
      '  PU.Cd_Produto = C.Cd_Produto and'
      '  PU.Sg_Unidade = C.Sg_Unidade'
      ''
      'where'
      '  A.Cd_Filial   = @Cd_Filial and'
      '  /* Cd_Emitente */'
      '  A.Dt_Emissao >= @Dt_Start and'
      '  A.Dt_Emissao < @Dt_End and'
      '  A.St_Compra   = ''''2'''
      ''
      '-------------------- Compras - itens de baixa 23/09/2009'
      'insert into #EstMovto( Nr_Movimento, Dt_Movimento, Cd_Emitente, Nm_Emitente,'
      '    Sg_Unidade, Qt_Item, Qt_Estoque, Fl_Movimento )'
      'select'
      '  A.Nr_Compra as Nr_Movimento, A.Dt_Emissao as Dt_Movimento, A.Cd_Emitente,'
      '  B.Nm_Emitente, C.Sg_Unidade,'
      '  ( C.Qt_Item - C.Qt_Recebida ) * Coalesce( PU.Nr_Fator, 1.0 ) as Qt_Item,'
      '  ( C.Qt_Item - C.Qt_Recebida ) * Coalesce( PU.Nr_Fator, 1.0 ) as Qt_Estoque,'
      '  ''''Com'''' as Fl_Movimento'
      ''
      'from'
      '  Compra A'
      ''
      'inner join'
      '  Emitente B'
      'on'
      '  B.Cd_Emitente = A.Cd_Emitente'
      ''
      'inner join'
      '  Compra_Item C'
      'on'
      '  C.Cd_Filial  = A.Cd_Filial and'
      '  C.Nr_Compra  = A.Nr_Compra'
      ''
      'inner join'
      '  Produto P'
      'on'
      '  P.Cd_Produto = C.Cd_Produto and'
      '  P.Cd_Baixa   = @Cd_Produto'
      ''
      'left join'
      '  Produto_Unidade PU'
      'on'
      '  PU.Cd_Produto = C.Cd_Produto and'
      '  PU.Sg_Unidade = C.Sg_Unidade'
      ''
      'where'
      '  A.Cd_Filial   = @Cd_Filial and'
      '  /* Cd_Emitente */'
      '  A.Dt_Emissao >= @Dt_Start and'
      '  A.Dt_Emissao < @Dt_End and'
      '  A.St_Compra   = ''''2'''
      ''
    )
    SQLOther6.Strings = (
      '-------------------- Itens do Or'#231'amento - Fechado - Projeto'
      'insert into #EstMovto( Nr_Movimento, Dt_Movimento, Cd_Emitente, Nm_Emitente,'
      '    Sg_Unidade, Qt_Item, Qt_Estoque, Fl_Movimento )'
      'select'
      '  A.Nr_Orcamento as Nr_Movimento, A.Dt_Fatura as Dt_Movimento, A.Cd_Emitente,'
      '  E.Nm_Emitente, OPI.Sg_Unidade, OPI.Qt_Item * OP.Qt_Projeto as Qt_Item, '
      '  OPI.Qt_Item * OP.Qt_Projeto * Coalesce( PU.Nr_Fator, 1.0 ) as Qt_Estoque,'
      '  ''''Or'#231''' as Fl_Movimento'
      ''
      'from'
      '  Orcamento A'
      ''
      'inner join'
      '  CFOP CF'
      'on'
      '  CF.Cd_CFOP = A.Cd_CFOP'
      '  /* Fl_CFOP */'
      ''
      'inner join'
      '  Orcamento_Projeto OP'
      'on'
      '  OP.Cd_Filial     = A.Cd_Filial and'
      '  OP.Nr_Orcamento  = A.Nr_Orcamento '
      ''
      'inner join '
      '  Orcamento_Projeto_Item OPI'
      'on'
      '  OPI.Cd_Filial     = OP.Cd_Filial and'
      '  OPI.Nr_Orcamento  = OP.Nr_Orcamento and'
      '  OPI.Nr_Projeto    = OP.Nr_Projeto and'
      '  OPI.Cd_Produto    = @Cd_Produto '
      ''
      'left join'
      '  Produto_Unidade PU'
      'on'
      '  PU.Cd_Produto = OPI.Cd_Produto and'
      '  PU.Sg_Unidade = OPI.Sg_Unidade'
      ''
      'left join'
      '  Emitente E'
      'on'
      '  E.Cd_Emitente = A.Cd_Emitente'
      ''
      'where'
      '  A.Cd_Filial    = @Cd_Filial and'
      '  A.St_Orcamento = ''''9'''' and'
      '  /* Cd_Emitente */'
      '  /* Cd_CFOP */'
      '  A.Dt_Fatura   >= @Dt_Start and'
      '  A.Dt_Fatura    < @Dt_End'
      ''
      '-------------------- Itens do Or'#231'amento - Fechado - Projeto - itens de baixa - 23/09/2009'
      'insert into #EstMovto( Nr_Movimento, Dt_Movimento, Cd_Emitente, Nm_Emitente,'
      '    Sg_Unidade, Qt_Item, Qt_Estoque, Fl_Movimento )'
      'select'
      '  A.Nr_Orcamento as Nr_Movimento, A.Dt_Fatura as Dt_Movimento, A.Cd_Emitente,'
      '  E.Nm_Emitente, OPI.Sg_Unidade, OPI.Qt_Item * OP.Qt_Projeto as Qt_Item,'
      '  OPI.Qt_Item * OP.Qt_Projeto * Coalesce( PU.Nr_Fator, 1.0 ) as Qt_Estoque,'
      '  ''''Or'#231''' as Fl_Movimento'
      ''
      'from'
      '  Orcamento A'
      ''
      'inner join'
      '  CFOP CF'
      'on'
      '  CF.Cd_CFOP = A.Cd_CFOP'
      '  /* Fl_CFOP */'
      ''
      'inner join'
      '  Orcamento_Projeto OP'
      'on'
      '  OP.Cd_Filial     = A.Cd_Filial and'
      '  OP.Nr_Orcamento  = A.Nr_Orcamento'
      ''
      'inner join'
      '  Orcamento_Projeto_Item OPI'
      'on'
      '  OPI.Cd_Filial     = OP.Cd_Filial and'
      '  OPI.Nr_Orcamento  = OP.Nr_Orcamento and'
      '  OPI.Nr_Projeto    = OP.Nr_Projeto'
      ''
      'inner join'
      '  Produto P'
      'on'
      '  P.Cd_Produto = OPI.Cd_Produto and'
      '  P.Cd_Baixa   = @Cd_Produto'
      ''
      'left join'
      '  Produto_Unidade PU'
      'on'
      '  PU.Cd_Produto = OPI.Cd_Produto and'
      '  PU.Sg_Unidade = OPI.Sg_Unidade'
      ''
      'left join'
      '  Emitente E'
      'on'
      '  E.Cd_Emitente = A.Cd_Emitente'
      ''
      'where'
      '  A.Cd_Filial    = @Cd_Filial and'
      '  A.St_Orcamento = ''''9'''' and'
      '  /* Cd_Emitente */'
      '  /* Cd_CFOP */'
      '  A.Dt_Fatura   >= @Dt_Start and'
      '  A.Dt_Fatura    < @Dt_End'
    )
    SQLOther7.Strings = (
      '-------------------- Itens do Or'#231'amento - Estoque Reservado - Projeto'
      'insert into #EstMovto( Nr_Movimento, Dt_Movimento, Cd_Emitente, Nm_Emitente,'
      '    Sg_Unidade, Qt_Item, Qt_Estoque, Fl_Movimento )'
      'select'
      '  A.Nr_Orcamento as Nr_Movimento, A.Dt_Confirmado as Dt_Movimento, A.Cd_Emitente,'
      '  E.Nm_Emitente, OPI.Sg_Unidade, OPI.Qt_Item * OP.Qt_Projeto as Qt_Item, '
      '  OPI.Qt_Item * OP.Qt_Projeto * Coalesce( PU.Nr_Fator, 1.0 ) as Qt_Estoque,'
      '  ''''Res'''' as Fl_Movimento'
      ''
      'from'
      '  Orcamento A'
      ''
      'inner join'
      '  CFOP CF'
      'on'
      '  CF.Cd_CFOP = A.Cd_CFOP'
      '  /* Fl_CFOP */'
      ''
      'inner join'
      '  Orcamento_Projeto OP'
      'on'
      '  OP.Cd_Filial     = A.Cd_Filial and'
      '  OP.Nr_Orcamento  = A.Nr_Orcamento '
      ''
      'inner join '
      '  Orcamento_Projeto_Item OPI'
      'on'
      '  OPI.Cd_Filial     = OP.Cd_Filial and'
      '  OPI.Nr_Orcamento  = OP.Nr_Orcamento and'
      '  OPI.Nr_Projeto    = OP.Nr_Projeto and'
      '  OPI.Cd_Produto    = @Cd_Produto '
      ''
      'left join'
      '  Produto_Unidade PU'
      'on'
      '  PU.Cd_Produto = OPI.Cd_Produto and'
      '  PU.Sg_Unidade = OPI.Sg_Unidade'
      ''
      'left join'
      '  Emitente E'
      'on'
      '  E.Cd_Emitente = A.Cd_Emitente'
      ''
      'where'
      '  A.Cd_Filial    = @Cd_Filial and'
      '  A.St_Orcamento = ''''5'''' and'
      '  /* Cd_Emitente */'
      '  /* Cd_CFOP */'
      '  A.Dt_Confirmado >= @Dt_Start and'
      '  A.Dt_Confirmado  < @Dt_End'
      ''
      '-------------------- Itens do Or'#231'amento - Estoque Reservado - Projeto - itens de baixa 23/09/2009'
      'insert into #EstMovto( Nr_Movimento, Dt_Movimento, Cd_Emitente, Nm_Emitente,'
      '    Sg_Unidade, Qt_Item, Qt_Estoque, Fl_Movimento )'
      'select'
      '  A.Nr_Orcamento as Nr_Movimento, A.Dt_Confirmado as Dt_Movimento, A.Cd_Emitente,'
      '  E.Nm_Emitente, OPI.Sg_Unidade, OPI.Qt_Item * OP.Qt_Projeto as Qt_Item, '
      '  OPI.Qt_Item * OP.Qt_Projeto * Coalesce( PU.Nr_Fator, 1.0 ) as Qt_Estoque,'
      '  ''''Res'''' as Fl_Movimento'
      ''
      'from'
      '  Orcamento A'
      ''
      'inner join'
      '  CFOP CF'
      'on'
      '  CF.Cd_CFOP = A.Cd_CFOP'
      '  /* Fl_CFOP */'
      ''
      'inner join'
      '  Orcamento_Projeto OP'
      'on'
      '  OP.Cd_Filial     = A.Cd_Filial and'
      '  OP.Nr_Orcamento  = A.Nr_Orcamento '
      ''
      'inner join '
      '  Orcamento_Projeto_Item OPI'
      'on'
      '  OPI.Cd_Filial     = OP.Cd_Filial and'
      '  OPI.Nr_Orcamento  = OP.Nr_Orcamento and'
      '  OPI.Nr_Projeto    = OP.Nr_Projeto'
      ''
      'inner join'
      '  Produto P'
      'on'
      '  P.Cd_Produto = OPI.Cd_Produto and'
      '  P.Cd_Baixa   = @Cd_Produto'
      ''
      'left join'
      '  Produto_Unidade PU'
      'on'
      '  PU.Cd_Produto = OPI.Cd_Produto and'
      '  PU.Sg_Unidade = OPI.Sg_Unidade'
      ''
      'left join'
      '  Emitente E'
      'on'
      '  E.Cd_Emitente = A.Cd_Emitente'
      ''
      'where'
      '  A.Cd_Filial    = @Cd_Filial and'
      '  A.St_Orcamento = ''''5'''' and'
      '  /* Cd_Emitente */'
      '  /* Cd_CFOP */'
      '  A.Dt_Confirmado >= @Dt_Start and'
      '  A.Dt_Confirmado  < @Dt_End'
    )
    SQLOther8.Strings = (
      '-------------------- Resultado da consutla'
      'select'
      '  Nr_Movimento, Dt_Movimento, Cd_Emitente, Nm_Emitente, Sg_Unidade,'
      '  Qt_Item, Qt_Estoque, Fl_Movimento'
      ''
      'from'
      '  #EstMovto'
      ''
      'order by'
      '  2, 1'
    )
    SQLOther9.Strings = (
      '-------------------- Cria tabela temporaria'
      'if Object_ID( ''''TempDB..#EstMovto'''' ) is null'
      '  create table #EstMovto'
      '    ('
      '    Nr_Movimento Int,'
      '    Dt_Movimento SmallDateTime,'
      '    Cd_Emitente Int,'
      '    Nm_Emitente VarChar( 50 ),'
      '    Sg_Unidade Char( 2 ),'
      '    Qt_Item Numeric( 12, 3 ),'
      '    Qt_Estoque Numeric( 12, 3 ),'
      '    Fl_Movimento Char( 3 )'
      '    )'
      ''
      'else'
      '  truncate table #EstMovto'
    )
    Left = 52
    Top = 320
    object ADODsMovimentoNr_Movimento: TIntegerField
      DisplayLabel = 'Movimento'
      FieldName = 'Nr_Movimento'
      DisplayFormat = '#,##0'
    end
    object ADODsMovimentoDt_Movimento: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'Dt_Movimento'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object ADODsMovimentoCd_Emitente: TIntegerField
      FieldName = 'Cd_Emitente'
    end
    object ADODsMovimentoNm_Emitente: TStringField
      DisplayLabel = 'Emitente(Cliente / Fornecedor / Comprador)'
      FieldName = 'Nm_Emitente'
      Size = 50
    end
    object ADODsMovimentoQt_Item: TBCDField
      DisplayLabel = 'Quantidade'
      FieldName = 'Qt_Item'
      DisplayFormat = '#,##0.0##'
      Precision = 18
      Size = 3
    end
    object ADODsMovimentoQt_Estoque: TBCDField
      DisplayLabel = 'Estoque'
      FieldName = 'Qt_Estoque'
      DisplayFormat = '#,##0.0##'
      Precision = 18
      Size = 3
    end
    object ADODsMovimentoFl_Movimento: TStringField
      FieldName = 'Fl_Movimento'
      ReadOnly = True
      Size = 3
    end
    object ADODsMovimentoDp_Movimento: TStringField
      DisplayLabel = 'Movimento'
      FieldKind = fkCalculated
      FieldName = 'Dp_Movimento'
      Size = 12
      Calculated = True
    end
    object ADODsMovimentoSg_Unidade: TStringField
      DisplayLabel = 'Unid.'
      FieldName = 'Sg_Unidade'
      FixedChar = True
      Size = 2
    end
  end
  object DsMovimento: TDataSource
    DataSet = ADODsMovimento
    Left = 22
    Top = 321
  end
end
