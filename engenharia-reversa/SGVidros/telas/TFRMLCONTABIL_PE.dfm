object FrmLContabil_PE: TFrmLContabil_PE
  Left = 294
  Top = 173
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Registro Controle de Produ'#231#227'o e Estoque - RCPE'
  ClientHeight = 255
  ClientWidth = 643
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
    Height = 255
    Align = alLeft
    TabOrder = 0
    ExplicitHeight = 235
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 622
    Height = 255
    Align = alClient
    ParentColor = True
    TabOrder = 1
    ExplicitWidth = 499
    ExplicitHeight = 235
    object BvlSeparator: TBevel
      Left = 3
      Top = 224
      Width = 614
      Height = 5
      Shape = bsTopLine
    end
    object Label2: TLabel
      Left = 5
      Top = 38
      Width = 58
      Height = 13
      Caption = 'Folha inicial:'
      Transparent = True
    end
    object Label1: TLabel
      Left = 5
      Top = 4
      Width = 41
      Height = 13
      Caption = 'Per'#237'odo:'
    end
    object BitBtnReport: TBitBtn
      Left = 449
      Top = 228
      Width = 85
      Height = 25
      Caption = '&Imprimir'
      TabOrder = 3
      OnClick = BitBtnReportClick
      Glyph.Data = {binary 1146 bytes}
    end
    object BitBtnCancel: TBitBtn
      Left = 535
      Top = 228
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 4
      OnClick = BitBtnCancelClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object EdtNr_Folha: TCurrencyEdit
      Left = 5
      Top = 52
      Width = 40
      Height = 18
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '###'
      TabOrder = 2
      Value = 2.0
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
    object SctRepLivro: TSctReport
      Left = 281
      Top = 38
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
      TabOrder = 5
      Visible = False
      Minimized = True
      Prompt = True
      AutoRun = False
      SuppressStatus = False
      PixelsPerInch = 96
      STop = 0
      SLeft = 0
      SWidth = 1129
      SHeight = 569
      MTop = 38
      MLeft = 281
      SAlign = alNone
      Version = vAce1_0
      object SctGrpPgLivro: TSctGrouppage
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
        PageSetup.Width = 11.6929133858268
        PageSetup.PreviewSettings.ModalPreview = mpNonModal
        PageSetup.PreviewSettings.PreviewOwner = poAppOwned
        PageSetup.PreviewSettings.FormStyle = pfsMDIChild
        PageSetup.LeftMargin = 0.6
        PageSetup.RightMargin = 0.1
        BorderType = btNone
        Description = 'Relatorio RCPE'
        CloseDataSet = False
        DataRange = drAllRecords
        OmitLastPgFt = False
        Head = SctBand5
        Detail = SctBand7
        Foot = SctBdFooter
        PageHead = SctBand6
        PageFoot = SctBdTransporte
        DataSource = DsLivro
        Order = 1
        NoDsgList = (
          'DsOpContabil'
          'DsInterestadual'
          'DsFornecedor'
        )
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
        object DataSourceGuide4: TSctDataSourceGuide
          Left = 0
          Top = 46
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel8
          DataSource = DsLivro
        end
        object DataSourceGuide: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel8
          DataSource = DmMaster.DsUsuario
        end
        object DataSourceGuide1: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel8
          DataSource = DmMaster.DsFilial
        end
        object adodsfilialNm_FilialVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nm_Filial'
          DataSource = DmMaster.DsFilial
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsfilialNr_InscEstadualVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_InscEstadual'
          DataSource = DmMaster.DsFilial
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsfilialNr_DocumentoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_Documento'
          DataSource = DmMaster.DsFilial
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodslivroCd_ProdutoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Cd_Produto'
          DataSource = DsLivro
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodslivroSg_EstoqueVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Sg_Estoque'
          DataSource = DsLivro
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodslivroCd_ClasFiscalVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Cd_ClasFiscal'
          DataSource = DsLivro
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodslivroCd_SerieVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Cd_Serie'
          DataSource = DsLivro
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodslivroNr_FaturaVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_Fatura'
          DataSource = DsLivro
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodslivroCd_OperacaoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Cd_Operacao'
          DataSource = DsLivro
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodslivroCd_FiscalVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Cd_Fiscal'
          DataSource = DsLivro
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodslivroFl_OperacaoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Fl_Operacao'
          DataSource = DsLivro
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodslivroQt_ItemVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Qt_Item'
          DataSource = DsLivro
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodslivroVl_ProdutoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Vl_Produto'
          DataSource = DsLivro
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodslivroVl_IPIVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Vl_IPI'
          DataSource = DsLivro
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodslivroQt_EstoqueVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Qt_Estoque'
          DataSource = DsLivro
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodslivroDt_LancamentoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dt_Lancamento'
          DataSource = DsLivro
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidAutoDataVar
        end
        object Group: TSctGroup
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Header = GroupHeader
          Footer = GroupFooter
          Variable = adodslivroCd_ProdutoVar
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
        object adodslivroDp_ProdutoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_Produto'
          DataSource = DsLivro
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidAutoDataVar
        end
        object TotalOfVl_Produto: TSctTotalvar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Variable = adodslivroVl_ProdutoVar
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidTotalVar
        end
        object TotalOfVl_IPI: TSctTotalvar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Variable = adodslivroVl_IPIVar
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidTotalVar
        end
        object adodslivroQt_SaldoAnteriorVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Qt_SaldoAnterior'
          DataSource = DsLivro
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctBand5: TSctBand
          Left = 0
          Top = 0
          Width = 1105
          Height = 5
          ParentColor = True
          BandName = 'Report Header'
          Updatelevel = SctLevel6
          Visible = False
        end
        object SctBand6: TSctBand
          Left = 0
          Top = 20
          Width = 1105
          Height = 107
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = True
          ParentFont = False
          BandName = 'Page Header'
          Updatelevel = SctLevel7
          Stretch = True
          OnBeforePrint = SctBand6BeforePrint
          object SctShape3: TSctShape
            Left = 1
            Top = 1
            Width = 1041
            Height = 108
            Brush.Color = 15132390
          end
          object Sctvarlabel45: TSctvarlabel
            Left = 4
            Top = 68
            Width = 39
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = 'Folha:'
          end
          object SctTxtFolha: TSctvarlabel
            Tag = 1
            Left = 44
            Top = 68
            Width = 41
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = '01'
          end
          object Sctvarlabel47: TSctvarlabel
            Left = 536
            Top = 68
            Width = 51
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = 'Per'#237'odo:'
          end
          object SctTxtPeriodo: TSctvarlabel
            Left = 587
            Top = 68
            Width = 158
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = '01/01/2000 a 31/03/2000'
          end
          object Sctvarlabel49: TSctvarlabel
            Left = 4
            Top = 27
            Width = 437
            Height = 22
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Registro de Controle de Produ'#231#227'o e Estoque - RCPE'
          end
          object Sctvarlabel51: TSctvarlabel
            Left = 6
            Top = 5
            Width = 757
            Height = 22
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laCenter
            Variable = adodsfilialNm_FilialVar
          end
          object Sctvarlabel52: TSctvarlabel
            Left = 4
            Top = 49
            Width = 113
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = 'Inscri'#231#227'o Estadual:'
          end
          object Sctvarlabel53: TSctvarlabel
            Left = 123
            Top = 49
            Width = 195
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Variable = adodsfilialNr_InscEstadualVar
          end
          object Sctvarlabel54: TSctvarlabel
            Left = 536
            Top = 49
            Width = 57
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = 'C.N.P.J.:'
          end
          object Sctvarlabel55: TSctvarlabel
            Left = 594
            Top = 49
            Width = 167
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Variable = adodsfilialNr_DocumentoVar
            DataFormat.DisplayFormat = '##.###.###/####-##;0; '
          end
          object Sctvarlabel34: TSctvarlabel
            Left = 769
            Top = 8
            Width = 197
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = '( * ) = C'#243'digos de valores fiscais'
          end
          object Sctvarlabel35: TSctvarlabel
            Left = 777
            Top = 25
            Width = 238
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = '1 - No pr'#243'prio estabelecimento'
          end
          object Sctvarlabel36: TSctvarlabel
            Left = 777
            Top = 42
            Width = 263
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = '2 - Em outro estabelecimento'
          end
          object Sctvarlabel37: TSctvarlabel
            Left = 777
            Top = 59
            Width = 263
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = '3 - Diversas'
          end
          object Sctvarlabel7: TSctvarlabel
            Left = 4
            Top = 88
            Width = 52
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = 'Produto:'
          end
          object Sctvarlabel8: TSctvarlabel
            Tag = 1
            Left = 57
            Top = 88
            Width = 732
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Variable = adodslivroDp_ProdutoVar
          end
          object Sctvarlabel9: TSctvarlabel
            Left = 881
            Top = 88
            Width = 91
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = 'Classif. Fiscal:'
          end
          object Sctvarlabel10: TSctvarlabel
            Tag = 1
            Left = 973
            Top = 88
            Width = 64
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Variable = adodslivroCd_ClasFiscalVar
          end
          object Sctvarlabel11: TSctvarlabel
            Tag = 1
            Left = 851
            Top = 88
            Width = 29
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Variable = adodslivroSg_EstoqueVar
          end
          object Sctvarlabel12: TSctvarlabel
            Left = 795
            Top = 88
            Width = 54
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Caption = 'Unidade:'
          end
        end
        object SctBand7: TSctBand
          Left = 0
          Top = 271
          Width = 1105
          Height = 19
          ParentColor = True
          BandName = 'Detail'
          Updatelevel = SctLevel8
          OnBeforePrint = SctBand7BeforePrint
          object Sctvarlabel2: TSctvarlabel
            Left = 0
            Top = 0
            Width = 49
            Height = 19
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laCenter
            WrapText = True
            Caption = 'NF'
          end
          object Sctvarlabel3: TSctvarlabel
            Left = 50
            Top = 0
            Width = 51
            Height = 19
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignVertical = laTop
            AlignHorizontal = laCenter
            Variable = adodslivroCd_SerieVar
          end
          object Sctvarlabel5: TSctvarlabel
            Left = 103
            Top = 0
            Width = 55
            Height = 19
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laRight
            Variable = adodslivroNr_FaturaVar
          end
          object Sctvarlabel6: TSctvarlabel
            Left = 160
            Top = 0
            Width = 60
            Height = 19
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laCenter
            Variable = adodslivroDt_LancamentoVar
          end
          object Sctvarlabel16: TSctvarlabel
            Left = 455
            Top = 0
            Width = 70
            Height = 19
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laRight
            Variable = adodslivroQt_ItemVar
            DataFormat.DisplayFormat = '#,##0.#####'
            DataFormat.Digits = 5
          end
          object Sctvarlabel17: TSctvarlabel
            Left = 528
            Top = 0
            Width = 70
            Height = 19
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laRight
            Variable = adodslivroVl_ProdutoVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 3
          end
          object SctVarEstoque: TSctvarlabel
            Left = 675
            Top = 0
            Width = 70
            Height = 19
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laRight
            DataFormat.DisplayFormat = '#,##0.#####'
            DataFormat.Digits = 5
            Caption = '0'
          end
          object Sctvarlabel21: TSctvarlabel
            Left = 234
            Top = 0
            Width = 21
            Height = 19
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            WrapHeightPercent = 105
            Variable = adodslivroDt_LancamentoVar
            DataFormat.DisplayFormat = 'dd'
          end
          object Sctvarlabel22: TSctvarlabel
            Left = 407
            Top = 0
            Width = 45
            Height = 19
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laCenter
            WrapText = True
            Stretch = True
            Caption = '1'
          end
          object Sctvarlabel23: TSctvarlabel
            Left = 258
            Top = 0
            Width = 69
            Height = 19
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laCenter
            WrapText = True
            Variable = adodslivroCd_OperacaoVar
          end
          object Sctvarlabel24: TSctvarlabel
            Left = 601
            Top = 0
            Width = 70
            Height = 19
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laRight
            Variable = adodslivroVl_IPIVar
            DataFormat.DisplayFormat = '#,##0.00'
          end
          object Sctvarlabel25: TSctvarlabel
            Left = 327
            Top = 0
            Width = 36
            Height = 19
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            WrapHeightPercent = 105
            Variable = adodslivroCd_FiscalVar
          end
          object Sctvarlabel26: TSctvarlabel
            Left = 375
            Top = 0
            Width = 29
            Height = 19
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laCenter
            Variable = adodslivroFl_OperacaoVar
          end
        end
        object SctBdTransporte: TSctBand
          Left = 0
          Top = 344
          Width = 1105
          Height = 1
          ParentColor = True
          BandName = 'SctBdTransporte'
          OnPrintWhen = SctBdTransportePrintWhen
          Updatelevel = SctLevel9
        end
        object SctBdFooter: TSctBand
          Left = 0
          Top = 360
          Width = 1105
          Height = 1
          ParentColor = True
          BandName = 'SctBdFooter'
          Updatelevel = SctLevel10
          OnBeforePrint = SctBdFooterBeforePrint
        end
        object SctBand9Sub: TSctSubBand
          Left = 0
          Top = 376
          Width = 1105
          Height = 1
          ParentColor = True
          BandName = 'SctBand9Sub'
          Updatelevel = SctLevel10
          Visible = False
          Band = SctBdFooter
          Above = False
        end
        object GroupHeader: TSctBand
          Left = 0
          Top = 142
          Width = 1105
          Height = 79
          ParentColor = True
          BandName = 'Group Header'
          Updatelevel = GroupHeaderLevel
          NewPage = True
          object Sctvarlabel50: TSctvarlabel
            Left = 0
            Top = 47
            Width = 49
            Height = 19
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laCenter
            WrapText = True
            Caption = 'Esp'#233'cie'
          end
          object Sctvarlabel56: TSctvarlabel
            Left = 50
            Top = 39
            Width = 51
            Height = 35
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignVertical = laTop
            AlignHorizontal = laCenter
            BorderMargin = 0
            WrapText = True
            Caption = 'S'#233'rie Subs'#233'rie'
          end
          object Sctvarlabel57: TSctvarlabel
            Left = 103
            Top = 48
            Width = 55
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'N'#250'mero'
          end
          object Sctvarlabel59: TSctvarlabel
            Left = 160
            Top = 48
            Width = 60
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laCenter
            Caption = 'Data'
          end
          object Sctvarlabel62: TSctvarlabel
            Left = 455
            Top = 48
            Width = 70
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Quantidade'
          end
          object Sctvarlabel63: TSctvarlabel
            Left = 528
            Top = 48
            Width = 70
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Valor'
          end
          object Sctvarlabel65: TSctvarlabel
            Left = 675
            Top = 48
            Width = 70
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Estoque'
          end
          object SctLine5: TSctLine
            Left = 1
            Top = 25
            Width = 1041
            Height = 8
          end
          object Sctvarlabel86: TSctvarlabel
            Left = 47
            Top = 9
            Width = 131
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laCenter
            Caption = 'Documentos Fiscais'
          end
          object Sctvarlabel87: TSctvarlabel
            Left = 673
            Top = 9
            Width = 131
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laCenter
            Caption = 'Entradas e Sa'#237'das'
          end
          object SctLine7: TSctLine
            Left = 1
            Top = 73
            Width = 1041
            Height = 5
          end
          object Sctvarlabel18: TSctvarlabel
            Left = 234
            Top = 48
            Width = 21
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            WrapHeightPercent = 105
            Caption = 'Dia'
          end
          object Sctvarlabel19: TSctvarlabel
            Left = 407
            Top = 39
            Width = 45
            Height = 35
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laCenter
            WrapText = True
            Stretch = True
            Caption = 'C'#243'digo ( * )'
          end
          object Sctvarlabel1: TSctvarlabel
            Left = 258
            Top = 39
            Width = 69
            Height = 35
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laCenter
            WrapText = True
            Caption = 'Codifica'#231#227'o Contabil'
          end
          object Sctvarlabel4: TSctvarlabel
            Left = 601
            Top = 48
            Width = 70
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'IPI'
          end
          object SctLine1: TSctLine
            Left = 219
            Top = 0
            Width = 9
            Height = 78
            AlignHorizontal = laCenter
            LineType = ltVertical
          end
          object Sctvarlabel13: TSctvarlabel
            Left = 230
            Top = 9
            Width = 131
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laCenter
            Caption = 'Lan'#231'amento'
          end
          object Sctvarlabel14: TSctvarlabel
            Left = 327
            Top = 48
            Width = 36
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            WrapHeightPercent = 105
            Caption = 'Fiscal'
          end
          object SctLine2: TSctLine
            Left = 364
            Top = -1
            Width = 9
            Height = 78
            AlignHorizontal = laCenter
            LineType = ltVertical
          end
          object Sctvarlabel15: TSctvarlabel
            Left = 375
            Top = 48
            Width = 29
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laCenter
            Caption = 'E / S'
          end
          object Sctvarlabel125: TSctvarlabel
            Left = 751
            Top = 48
            Width = 286
            Height = 17
            Caption = 'Oberva'#231#245'es'
          end
        end
        object GroupFooter: TSctBand
          Left = 0
          Top = 305
          Width = 1105
          Height = 24
          ParentColor = True
          BandName = 'Group Footer'
          Updatelevel = GroupFooterLevel
          object Sctvarlabel70: TSctvarlabel
            Left = 322
            Top = 5
            Width = 125
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Total'
          end
          object SctTotalvarLabel1: TSctTotalvarLabel
            Left = 455
            Top = 5
            Width = 143
            Height = 17
            TotalVariable = TotalOfVl_Produto
            DataFormat.DisplayFormat = '#,##0.00'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object SctTotalvarLabel2: TSctTotalvarLabel
            Left = 601
            Top = 5
            Width = 70
            Height = 17
            TotalVariable = TotalOfVl_IPI
            DataFormat.DisplayFormat = '#,##0.00'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object SctLine3: TSctLine
            Left = 1
            Top = 2
            Width = 1041
            Height = 8
            AlignVertical = laTop
          end
        end
        object GroupHeaderSub: TSctSubBand
          Left = 0
          Top = 236
          Width = 1105
          Height = 20
          ParentColor = True
          BandName = 'GroupHeaderSub'
          Updatelevel = GroupHeaderLevel
          OnBeforePrint = GroupHeaderSubBeforePrint
          Band = GroupHeader
          Above = False
          object Sctvarlabel27: TSctvarlabel
            Left = 481
            Top = 2
            Width = 161
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Saldo de estoque anterior:'
          end
          object Sctvarlabel28: TSctvarlabel
            Left = 648
            Top = 2
            Width = 97
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Variable = adodslivroQt_SaldoAnteriorVar
            DataFormat.DisplayFormat = '#,##0.#####'
            DataFormat.Digits = 5
          end
        end
      end
    end
    object CkBSaldoNegativo: TCheckBox
      Left = 8
      Top = 200
      Width = 153
      Height = 17
      Caption = 'Zerar saldo anterior negativo'
      TabOrder = 6
    end
  end
  object DsLivro: TDataSource
    DataSet = ADODsLivro
    Left = 24
    Top = 90
  end
  object ADODsLivro: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    OnCalcFields = ADODsLivroCalcFields
    CommandText = 'declare'#13#10'  @Cd_Filial SmallInt,'#13#10'  @Dt_Start SmallDateTime,'#13#10'  @Dt_End SmallDateTime,'#13#10'  @Sg_Origem Char( 2 )'#13#10#13#10'select'#13#10'  @Cd_Filial = :Cd_Filial,'#13#10'  @Dt_Start  = :Dt_Start,'#13#10'  @Dt_End    = :Dt_End,'#13#10'  @Sg_Origem = :Sg_Origem'#13#10'  '#13#10'--------------- Entradas'#13#10'select'#13#10'  EI.Cd_Produto, P.Nm_Produto, P.Sg_Estoque, P.Cd_ClasFiscal,'#13#10'  E.Cd_Serie, E.Nr_Fatura, E.Dt_Lancamento,'#13#10'  0 as Cd_Operacao, EI.Cd_CFOP as Cd_Fiscal,'#13#10'  ''''E'''' as Fl_Operacao, EI.Qt_Item, EI.Qt_Item * EI.Vl_Unitario as Vl_Produto, '#13#10'  EI.Vl_IPI, EI.Qt_Estoque'#13#10#13#10'from'#13#10'  Entrada E'#13#10#13#10'inner join'#13#10'  CFOP CF'#13#10'on'#13#10'  CF.Cd_CFOP     = E.Cd_CFOP and'#13#10'  CF.Tp_Operacao < ''''4''''            -- Acerto de Estoque'#13#10#13#10'inner join'#13#10'  Entrada_Item EI'#13#10'on'#13#10'  EI.Cd_Filial  = E.Cd_Filial and'#13#10'  EI.Nr_Entrada = E.Nr_Entrada'#13#10'  '#13#10'inner join'#13#10'  Produto P'#13#10'on'#13#10'  P.Cd_Produto = EI.Cd_Produto'#13#10'  '#13#10'where'#13#10'  E.Cd_Filial      = @Cd_Filial and'#13#10'  E.St_Entrada     = ''''2'''' and                   -- Fechado'#13#10'  E.Dt_Lancamento >= @Dt_Start and'#13#10'  E.Dt_Lancamento  < @Dt_End'#13#10'  '#13#10'--------------- Saidas'#13#10'union'#13#10'select'#13#10'  SI.Cd_Produto, P.Nm_Produto, P.Sg_Estoque, P.Cd_ClasFiscal,'#13#10'  S.Cd_Serie, S.Nr_Fatura, S.Dt_Lancamento,'#13#10'  0 as Cd_Operacao, '#13#10'  Cd_CFOP = case when @Sg_Origem = C.Sg_Estado then T.Cd_CFOPDentro else T.Cd_CFOPFora end,  '#13#10'  ''''S'''' as Fl_Operacao, SI.Qt_Item, SI.Qt_Item * SI.Vl_Unitario as Vl_Produto, '#13#10'  Vl_IPI = case when P.Pr_IPI > 0 then SI.Qt_Item * SI.Vl_Unitario / 100.0 * P.Pr_IPI end,  '#13#10'  SI.Qt_Estoque'#13#10#13#10'from'#13#10'  Saida S'#13#10#13#10'inner join'#13#10'  CFOP CF'#13#10'on'#13#10'  CF.Cd_CFOP     = S.Cd_CFOP and'#13#10'  CF.Tp_Operacao < ''''4''''            -- Acerto de Estoque'#13#10#13#10'inner join'#13#10'  Emitente E'#13#10'on'#13#10'  E.Cd_Emitente = S.Cd_Emitente'#13#10'  '#13#10'inner join'#13#10'  Emitente_Endereco EE'#13#10'on'#13#10'  EE.Cd_Emitente = E.Cd_Emitente and'#13#10'  EE.Nr_Endereco = E.Nr_Endereco'#13#10'  '#13#10'inner join'#13#10'  Cidade C'#13#10'on'#13#10'  C.Cd_Cidade = EE.Cd_Cidade'#13#10'  '#13#10'inner join'#13#10'  Saida_Item SI'#13#10'on'#13#10'  SI.Cd_Filial = S.Cd_Filial and'#13#10'  SI.Nr_Saida  = S.Nr_Saida'#13#10'  '#13#10'inner join'#13#10'  Produto P'#13#10'on'#13#10'  P.Cd_Produto = SI.Cd_Produto'#13#10'  '#13#10'inner join'#13#10'  Tributacao T'#13#10'on'#13#10'  T.Cd_Tributacao = P.Cd_Tributacao'#13#10'  '#13#10'where'#13#10'  S.Cd_Filial      = @Cd_Filial and'#13#10'  S.St_Saida       = ''''2'''' and                   -- Fechado'#13#10'  S.Dt_Lancamento >= @Dt_Start and'#13#10'  S.Dt_Lancamento  < @Dt_End'#13#10'    '#13#10'--------------- Or'#231'amentos - Itens'#13#10'union'#13#10'select'#13#10'  OI.Cd_Produto, P.Nm_Produto, P.Sg_Estoque, P.Cd_ClasFiscal,'#13#10'  O.Cd_Serie, O.Nr_Fatura, Dt_Lancamento = O.Dt_Fatura,'#13#10'  Cd_Operacao = 0, '#13#10'  Cd_CFOP = case when @Sg_Origem = C.Sg_Estado then T.Cd_CFOPDentro else T.Cd_CFOPFora end,  '#13#10'  ''''S'''' as Fl_Operacao, OI.Qt_Item, OI.Qt_Item * OI.Vl_Unitario as Vl_Produto, '#13#10'  Vl_IPI = case when P.Pr_IPI > 0 then OI.Qt_Item * OI.Vl_Unitario / 100.0 * P.Pr_IPI end,  '#13#10'  OI.Qt_Estoque'#13#10#13#10'from'#13#10'  Orcamento O'#13#10#13#10'inner join'#13#10'  CFOP CF'#13#10'on'#13#10'  CF.Cd_CFOP     = O.Cd_CFOP and'#13#10'  CF.Tp_Operacao < ''''4''''            -- Acerto de Estoque'#13#10#13#10'inner join'#13#10'  Emitente E'#13#10'on'#13#10'  E.Cd_Emitente = O.Cd_Emitente'#13#10'  '#13#10'inner join'#13#10'  Emitente_Endereco EE'#13#10'on'#13#10'  EE.Cd_Emitente = E.Cd_Emitente and'#13#10'  EE.Nr_Endereco = E.Nr_Endereco'#13#10'  '#13#10'inner join'#13#10'  Cidade C'#13#10'on'#13#10'  C.Cd_Cidade = EE.Cd_Cidade'#13#10'  '#13#10'inner join'#13#10'  Orcamento_Item OI'#13#10'on'#13#10'  OI.Cd_Filial     = O.Cd_Filial and'#13#10'  OI.Nr_Orcamento  = O.Nr_Orcamento and'#13#10'  OI.Fl_Confirmado = ''''1'''#13#10'  '#13#10'inner join'#13#10'  Produto P'#13#10'on'#13#10'  P.Cd_Produto = OI.Cd_Produto'#13#10'  '#13#10'inner join'#13#10'  Tributacao T'#13#10'on'#13#10'  T.Cd_Tributacao = P.Cd_Tributacao'#13#10'  '#13#10'where'#13#10'  O.Cd_Filial      = @Cd_Filial and'#13#10'  O.St_Orcamento   = ''''9'''' and                   -- Fechado'#13#10'  O.Dt_Fatura     >= @Dt_Start and'#13#10'  O.Dt_Fatura      < @Dt_End'#13#10'        '#13#10'--------------- Or'#231'amentos - Projetos'#13#10'union'#13#10'select'#13#10'  OPI.Cd_Produto, P.Nm_Produto, P.Sg_Estoque, P.Cd_ClasFiscal,'#13#10'  O.Cd_Serie, O.Nr_Fatura, Dt_Lancamento = O.Dt_Emissao,'#13#10'  0 as Cd_Operacao,'#13#10'  Cd_CFOP = case when @Sg_Origem = C.Sg_Estado then T.Cd_CFOPDentro else T.Cd_CFOPFora end,'#13#10'  ''''S'''' as Fl_Operacao, Qt_Item = OPI.Qt_Item * OP.Qt_Projeto,'#13#10'  Vl_Produto = OPI.Qt_Item * OP.Qt_Projeto * OPI.Vl_Unitario, '#13#10'  Vl_IPI = case when P.Pr_IPI > 0 then OPI.Qt_Item * OP.Qt_Projeto * OPI.Vl_Unitario / 100.0 * P.Pr_IPI end,  '#13#10'  Qt_Estoque = OPI.Qt_Item * OP.Qt_Projeto * Coalesce( PU.Nr_Fator, 1.0 )'#13#10#13#10'from'#13#10'  Orcamento O'#13#10#13#10'inner join'#13#10'  CFOP CF'#13#10'on'#13#10'  CF.Cd_CFOP     = O.Cd_CFOP and'#13#10'  CF.Tp_Operacao < ''''4''''            -- Acerto de Estoque'#13#10#13#10'inner join'#13#10'  Emitente E'#13#10'on'#13#10'  E.Cd_Emitente = O.Cd_Emitente'#13#10'  '#13#10'inner join'#13#10'  Emitente_Endereco EE'#13#10'on'#13#10'  EE.Cd_Emitente = E.Cd_Emitente and'#13#10'  EE.Nr_Endereco = E.Nr_Endereco'#13#10'  '#13#10'inner join'#13#10'  Cidade C'#13#10'on'#13#10'  C.Cd_Cidade = EE.Cd_Cidade'#13#10'  '#13#10'inner join'#13#10'  Orcamento_Projeto OP'#13#10'on'#13#10'  OP.Cd_Filial     = O.Cd_Filial and'#13#10'  OP.Nr_Orcamento  = O.Nr_Orcamento '#13#10#13#10'inner join'#13#10'  Orcamento_Projeto_Item OPI'#13#10'on'#13#10'  OPI.Cd_Filial    = OP.Cd_Filial and'#13#10'  OPI.Nr_Orcamento = OP.Nr_Orcamento and'#13#10'  OPI.Nr_Projeto   = OP.Nr_Projeto '#13#10'  '#13#10'inner join '#13#10'  Produto_Unidade PU'#13#10'on'#13#10'  PU.Cd_Produto = OPI.Cd_Produto and'#13#10'  PU.Sg_Unidade = OPI.Sg_Unidade'#13#10'  '#13#10'inner join'#13#10'  Produto P'#13#10'on'#13#10'  P.Cd_Produto = OPI.Cd_Produto'#13#10'  '#13#10'inner join'#13#10'  Tributacao T'#13#10'on'#13#10'  T.Cd_Tributacao = P.Cd_Tributacao'#13#10'  '#13#10'where'#13#10'  O.Cd_Filial      = @Cd_Filial and'#13#10'  O.St_Orcamento   = ''''9'''' and                   -- Fechado'#13#10'  O.Dt_Fatura     >= @Dt_Start and'#13#10'  O.Dt_Fatura      < @Dt_End'#13#10'                '#13#10'order by'#13#10'  1 --Cd_Produto'
    Parameters = <
      item
        Name = 'Cd_Filial'
        DataType = ftSmallint
        Size = -1
        Value = 1
      end
      item
        Name = 'Dt_Start'
        DataType = ftDateTime
        Size = -1
        Value = 36526.0
      end
      item
        Name = 'Dt_End'
        DataType = ftDateTime
        Size = -1
        Value = 41023.0
      end
      item
        Name = 'Sg_Origem'
        DataType = ftString
        Size = 2
        Value = 'ES'
      end>
    SQLOther0.Strings = (
      'declare'
      '  @Cd_Filial SmallInt,'
      '  @Dt_Start SmallDateTime,'
      '  @Dt_End SmallDateTime,'
      '  @Sg_Origem Char( 2 )'
      ''
      'select'
      '  @Cd_Filial = :Cd_Filial,'
      '  @Dt_Start  = :Dt_Start,'
      '  @Dt_End    = :Dt_End,'
      '  @Sg_Origem = :Sg_Origem'
      ''
      '--------------- Entradas'
      'select'
      '  EI.Cd_Produto, ''''E'''' as Fl_Operacao, E.Dt_Lancamento,'
      '  P.Nm_Produto, P.Sg_Estoque, P.Cd_ClasFiscal,'
      '  E.Cd_Serie, E.Nr_Fatura,'
      '  0 as Cd_Operacao, EI.Cd_CFOP as Cd_Fiscal,'
      '  EI.Qt_Item, EI.Qt_Item * EI.Vl_Unitario as Vl_Produto,'
      '  EI.Vl_IPI, EI.Qt_Estoque'
      ''
      'from'
      '  Entrada E'
      ''
      'inner join'
      '  CFOP CF'
      'on'
      '  CF.Cd_CFOP     = E.Cd_CFOP and'
      '  CF.Tp_Operacao < ''''4''''            -- Acerto de Estoque'
      ''
      'inner join'
      '  Entrada_Item EI'
      'on'
      '  EI.Cd_Filial  = E.Cd_Filial and'
      '  EI.Nr_Entrada = E.Nr_Entrada'
      ''
      'inner join'
      '  Produto P'
      'on'
      '  P.Cd_Produto = EI.Cd_Produto'
      ''
      'where'
      '  E.Cd_Filial      = @Cd_Filial and'
      '  E.St_Entrada     = ''''2'''' and                   -- Fechado'
      '  E.Dt_Lancamento >= @Dt_Start and'
      '  E.Dt_Lancamento  < @Dt_End'
      ''
      '--------------- Saidas'
      'union'
      'select'
      '  SI.Cd_Produto, ''''S'''' as Fl_Operacao, S.Dt_Lancamento,'
      '  P.Nm_Produto, P.Sg_Estoque, P.Cd_ClasFiscal,'
      '  S.Cd_Serie, S.Nr_Fatura,'
      '  0 as Cd_Operacao,'
      '  Cd_CFOP = case when @Sg_Origem = C.Sg_Estado then T.Cd_CFOPDentro else T.Cd_CFOPFora end,'
      '  SI.Qt_Item, SI.Qt_Item * SI.Vl_Unitario as Vl_Produto,'
      '  Vl_IPI = case when P.Pr_IPI > 0 then SI.Qt_Item * SI.Vl_Unitario / 100.0 * P.Pr_IPI end,'
      '  SI.Qt_Estoque'
      ''
      'from'
      '  Saida S'
      ''
      'inner join'
      '  CFOP CF'
      'on'
      '  CF.Cd_CFOP     = S.Cd_CFOP and'
      '  CF.Tp_Operacao < ''''4''''            -- Acerto de Estoque'
      ''
      'inner join'
      '  Emitente E'
      'on'
      '  E.Cd_Emitente = S.Cd_Emitente'
      ''
      'inner join'
      '  Emitente_Endereco EE'
      'on'
      '  EE.Cd_Emitente = E.Cd_Emitente and'
      '  EE.Nr_Endereco = E.Nr_Endereco'
      ''
      'inner join'
      '  Cidade C'
      'on'
      '  C.Cd_Cidade = EE.Cd_Cidade'
      ''
      'inner join'
      '  Saida_Item SI'
      'on'
      '  SI.Cd_Filial = S.Cd_Filial and'
      '  SI.Nr_Saida  = S.Nr_Saida'
      ''
      'inner join'
      '  Produto P'
      'on'
      '  P.Cd_Produto = SI.Cd_Produto'
      ''
      'inner join'
      '  Tributacao T'
      'on'
      '  T.Cd_Tributacao = P.Cd_Tributacao'
      ''
      'where'
      '  S.Cd_Filial      = @Cd_Filial and'
      '  S.St_Saida       = ''''2'''' and                   -- Fechado'
      '  S.Dt_Lancamento >= @Dt_Start and'
      '  S.Dt_Lancamento  < @Dt_End'
      ''
      '--------------- Or'#231'amentos - Itens'
      'union'
      'select'
      '  OI.Cd_Produto, ''''S'''' as Fl_Operacao, Dt_Lancamento = O.Dt_Fatura,'
      '  P.Nm_Produto, P.Sg_Estoque, P.Cd_ClasFiscal,'
      '  O.Cd_Serie, O.Nr_Fatura,'
      '  Cd_Operacao = 0,'
      '  Cd_CFOP = case when @Sg_Origem = C.Sg_Estado then T.Cd_CFOPDentro else T.Cd_CFOPFora end,'
      '  OI.Qt_Item, OI.Qt_Item * OI.Vl_Unitario as Vl_Produto,'
      '  Vl_IPI = case when P.Pr_IPI > 0 then OI.Qt_Item * OI.Vl_Unitario / 100.0 * P.Pr_IPI end,'
      '  OI.Qt_Estoque'
      ''
      'from'
      '  Orcamento O'
      ''
      'inner join'
      '  CFOP CF'
      'on'
      '  CF.Cd_CFOP     = O.Cd_CFOP and'
      '  CF.Tp_Operacao < ''''4''''            -- Acerto de Estoque'
      ''
      'inner join'
      '  Emitente E'
      'on'
      '  E.Cd_Emitente = O.Cd_Emitente'
      ''
      'inner join'
      '  Emitente_Endereco EE'
      'on'
      '  EE.Cd_Emitente = E.Cd_Emitente and'
      '  EE.Nr_Endereco = E.Nr_Endereco'
      ''
      'inner join'
      '  Cidade C'
      'on'
      '  C.Cd_Cidade = EE.Cd_Cidade'
      ''
      'inner join'
      '  Orcamento_Item OI'
      'on'
      '  OI.Cd_Filial     = O.Cd_Filial and'
      '  OI.Nr_Orcamento  = O.Nr_Orcamento and'
      '  OI.Fl_Confirmado = ''''1'''
      ''
      'inner join'
      '  Produto P'
      'on'
      '  P.Cd_Produto = OI.Cd_Produto'
      ''
      'inner join'
      '  Tributacao T'
      'on'
      '  T.Cd_Tributacao = P.Cd_Tributacao'
      '  '
      'where'
      '  O.Cd_Filial      = @Cd_Filial and'
      '  O.St_Orcamento   = ''''9'''' and                   -- Fechado'
      '  O.Dt_Fatura     >= @Dt_Start and'
      '  O.Dt_Fatura      < @Dt_End'
      '        '
      '/* SG-VM */'
      '                '
      'order by'
      '  1 /* Cd_Produto */, 3 /* Dt_Lancamento*/, 2 /* Fl_Operacao */'
    )
    SQLOther1.Strings = (
      '--------------- Or'#231'amentos - Projetos - somente no SG-Vidros e Marmore'
      'union'
      'select'
      '  OPI.Cd_Produto, ''''S'''' as Fl_Operacao, Dt_Lancamento = O.Dt_Fatura,'
      '  P.Nm_Produto, P.Sg_Estoque, P.Cd_ClasFiscal,'
      '  O.Cd_Serie, O.Nr_Fatura,'
      '  0 as Cd_Operacao,'
      '  Cd_CFOP = case when @Sg_Origem = C.Sg_Estado then T.Cd_CFOPDentro else T.Cd_CFOPFora end,'
      '  Qt_Item = OPI.Qt_Item * OP.Qt_Projeto,'
      '  Vl_Produto = OPI.Qt_Item * OP.Qt_Projeto * OPI.Vl_Unitario,'
      '  Vl_IPI = case when P.Pr_IPI > 0 then OPI.Qt_Item * OP.Qt_Projeto * OPI.Vl_Unitario / 100.0 * P.Pr_IPI end,'
      '  Qt_Estoque = OPI.Qt_Item * OP.Qt_Projeto * Coalesce( PU.Nr_Fator, 1.0 )'
      ''
      'from'
      '  Orcamento O'
      ''
      'inner join'
      '  CFOP CF'
      'on'
      '  CF.Cd_CFOP     = O.Cd_CFOP and'
      '  CF.Tp_Operacao < ''''4''''            -- Acerto de Estoque'
      ''
      'inner join'
      '  Emitente E'
      'on'
      '  E.Cd_Emitente = O.Cd_Emitente'
      ''
      'inner join'
      '  Emitente_Endereco EE'
      'on'
      '  EE.Cd_Emitente = E.Cd_Emitente and'
      '  EE.Nr_Endereco = E.Nr_Endereco'
      ''
      'inner join'
      '  Cidade C'
      'on'
      '  C.Cd_Cidade = EE.Cd_Cidade'
      ''
      'inner join'
      '  Orcamento_Projeto OP'
      'on'
      '  OP.Cd_Filial     = O.Cd_Filial and'
      '  OP.Nr_Orcamento  = O.Nr_Orcamento '
      ''
      'inner join'
      '  Orcamento_Projeto_Item OPI'
      'on'
      '  OPI.Cd_Filial    = OP.Cd_Filial and'
      '  OPI.Nr_Orcamento = OP.Nr_Orcamento and'
      '  OPI.Nr_Projeto   = OP.Nr_Projeto '
      '  '
      'inner join '
      '  Produto_Unidade PU'
      'on'
      '  PU.Cd_Produto = OPI.Cd_Produto and'
      '  PU.Sg_Unidade = OPI.Sg_Unidade'
      '  '
      'inner join'
      '  Produto P'
      'on'
      '  P.Cd_Produto = OPI.Cd_Produto'
      '  '
      'inner join'
      '  Tributacao T'
      'on'
      '  T.Cd_Tributacao = P.Cd_Tributacao'
      '  '
      'where'
      '  O.Cd_Filial      = @Cd_Filial and'
      '  O.St_Orcamento   = ''''9'''' and                   -- Fechado'
      '  O.Dt_Fatura     >= @Dt_Start and'
      '  O.Dt_Fatura      < @Dt_End'
    )
    Left = 55
    Top = 90
    object ADODsLivroCd_Produto: TIntegerField
      FieldName = 'Cd_Produto'
      ReadOnly = True
    end
    object ADODsLivroNm_Produto: TStringField
      FieldName = 'Nm_Produto'
      ReadOnly = True
      Size = 120
    end
    object ADODsLivroSg_Estoque: TStringField
      FieldName = 'Sg_Estoque'
      ReadOnly = True
      FixedChar = True
      Size = 2
    end
    object ADODsLivroCd_ClasFiscal: TStringField
      FieldName = 'Cd_ClasFiscal'
      ReadOnly = True
      Size = 10
    end
    object ADODsLivroCd_Serie: TStringField
      FieldName = 'Cd_Serie'
      ReadOnly = True
      Size = 3
    end
    object ADODsLivroNr_Fatura: TIntegerField
      FieldName = 'Nr_Fatura'
      ReadOnly = True
    end
    object ADODsLivroCd_Operacao: TIntegerField
      FieldName = 'Cd_Operacao'
      ReadOnly = True
    end
    object ADODsLivroCd_Fiscal: TStringField
      FieldName = 'Cd_Fiscal'
      ReadOnly = True
      FixedChar = True
      Size = 4
    end
    object ADODsLivroFl_Operacao: TStringField
      FieldName = 'Fl_Operacao'
      ReadOnly = True
      Size = 1
    end
    object ADODsLivroQt_Item: TBCDField
      FieldName = 'Qt_Item'
      ReadOnly = True
      Precision = 18
      Size = 3
    end
    object ADODsLivroVl_Produto: TBCDField
      FieldName = 'Vl_Produto'
      ReadOnly = True
      Precision = 32
      Size = 8
    end
    object ADODsLivroVl_IPI: TBCDField
      FieldName = 'Vl_IPI'
      ReadOnly = True
      Precision = 32
      Size = 6
    end
    object ADODsLivroQt_Estoque: TBCDField
      FieldName = 'Qt_Estoque'
      ReadOnly = True
      Precision = 18
      Size = 3
    end
    object ADODsLivroDt_Lancamento: TDateTimeField
      FieldName = 'Dt_Lancamento'
      ReadOnly = True
    end
    object ADODsLivroDp_Produto: TStringField
      FieldKind = fkCalculated
      FieldName = 'Dp_Produto'
      Size = 150
      Calculated = True
    end
    object ADODsLivroQt_SaldoAnterior: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Qt_SaldoAnterior'
      Calculated = True
    end
  end
end
