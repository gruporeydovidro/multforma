object FrmLContabil_Entradas: TFrmLContabil_Entradas
  Left = 294
  Top = 173
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Registro de Entradas'
  ClientHeight = 218
  ClientWidth = 556
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
    Height = 218
    Align = alLeft
    TabOrder = 0
    ExplicitHeight = 652
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 535
    Height = 218
    Align = alClient
    ParentColor = True
    TabOrder = 1
    ExplicitWidth = 1065
    ExplicitHeight = 652
    object BvlSeparator: TBevel
      Left = 3
      Top = 186
      Width = 524
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
      Left = 362
      Top = 190
      Width = 85
      Height = 25
      Caption = '&Imprimir'
      TabOrder = 3
      OnClick = BitBtnReportClick
      Glyph.Data = {binary 1146 bytes}
    end
    object BitBtnCancel: TBitBtn
      Left = 448
      Top = 190
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
      Left = 89
      Top = 43
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
      OnBeforePrint = SctRepLivroBeforePrint
      SuppressStatus = False
      PixelsPerInch = 96
      STop = 0
      SLeft = 0
      SWidth = 1105
      SHeight = 681
      MTop = 43
      MLeft = 89
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
        Description = 'Registro de Entradas - Livro'
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
        object adodslivroDt_EmissaoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dt_Emissao'
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
        object adodslivroCd_CFOPVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Cd_CFOP'
          DataSource = DsLivro
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodslivroVl_BaseICMSVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Vl_BaseICMS'
          DataSource = DsLivro
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodslivroPr_ICMSVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Pr_ICMS'
          DataSource = DsLivro
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodslivroVl_ICMSVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Vl_ICMS'
          DataSource = DsLivro
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodslivroFl_RegistroVar: TSctDBVar
          Left = 328
          Top = 64
          Width = 0
          Height = 0
          DataField = 'Fl_Registro'
          DataSource = DsLivro
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodslivroSg_EstadoVar1: TSctDBVar
          Left = 144
          Top = 48
          Width = 0
          Height = 0
          DataField = 'Sg_Estado'
          DataSource = DsLivro
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodslivroVl_NaoTributadoVar1: TSctDBVar
          Left = 392
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Vl_NaoTributado'
          DataSource = DsLivro
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodslivroDp_OutrosVar1: TSctDBVar
          Left = 364
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_Outros'
          DataSource = DsLivro
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidAutoDataVar
        end
        object TotalOfVl_NaoTributado: TSctTotalvar
          Left = 380
          Top = 77
          Width = 0
          Height = 0
          Variable = adodslivroVl_NaoTributadoVar1
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidTotalVar
        end
        object TotalOfDp_Outros: TSctTotalvar
          Left = 380
          Top = 77
          Width = 0
          Height = 0
          Variable = adodslivroDp_OutrosVar1
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidTotalVar
        end
        object TotalOfVl_ICMS1: TSctTotalvar
          Left = 380
          Top = 77
          Width = 0
          Height = 0
          Variable = adodslivroVl_ICMSVar
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidTotalVar
        end
        object TotalOfVl_BaseICMS: TSctTotalvar
          Left = 380
          Top = 77
          Width = 0
          Height = 0
          Variable = adodslivroVl_BaseICMSVar
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidTotalVar
        end
        object TotalOfVl_Total: TSctTotalvar
          Left = 380
          Top = 77
          Width = 0
          Height = 0
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidTotalVar
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
        object adodslivroVl_OutrosVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Vl_Outros'
          DataSource = DsLivro
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodslivroVl_BaseREVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Vl_BaseRE'
          DataSource = DsLivro
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodslivroVl_ContabilREVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Vl_ContabilRE'
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
        object adodslivroNm_EmitenteVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nm_Emitente'
          DataSource = DsLivro
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodslivroNr_Insc_EstadualVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_Insc_Estadual'
          DataSource = DsLivro
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodslivroVl_NotaVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Vl_Nota'
          DataSource = DsLivro
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodslivroNr_DocumentoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_Documento'
          DataSource = DsLivro
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
        object TotalOfVl_Nota: TSctTotalvar
          Left = 282
          Top = 79
          Width = 0
          Height = 0
          Variable = adodslivroVl_NotaVar
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidTotalVar
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
          Height = 178
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
            Height = 90
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
            Width = 185
            Height = 22
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Registro de Entradas'
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
          object Sctvarlabel50: TSctvarlabel
            Left = 63
            Top = 138
            Width = 34
            Height = 32
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
            Left = 97
            Top = 139
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
            Left = 149
            Top = 153
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
            Left = 206
            Top = 153
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
          object Sctvarlabel61: TSctvarlabel
            Left = 404
            Top = 135
            Width = 71
            Height = 35
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laRight
            WrapText = True
            Stretch = True
            Caption = 'Valor Cont'#225'bil'
          end
          object Sctvarlabel62: TSctvarlabel
            Left = 478
            Top = 153
            Width = 29
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laCenter
            Caption = 'CTB'
          end
          object Sctvarlabel63: TSctvarlabel
            Left = 510
            Top = 153
            Width = 35
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laCenter
            Caption = 'Fiscal'
          end
          object Sctvarlabel65: TSctvarlabel
            Left = 653
            Top = 153
            Width = 100
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Base de C'#225'lculo'
          end
          object Sctvarlabel66: TSctvarlabel
            Left = 755
            Top = 153
            Width = 46
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Al'#237'quota'
          end
          object Sctvarlabel67: TSctvarlabel
            Left = 806
            Top = 135
            Width = 65
            Height = 35
            AlignHorizontal = laRight
            WrapText = True
            Stretch = True
            Caption = 'Imposto Creditado'
          end
          object SctLine5: TSctLine
            Left = 1
            Top = 124
            Width = 396
            Height = 8
          end
          object Sctvarlabel86: TSctvarlabel
            Left = 134
            Top = 104
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
          object SctLine6: TSctLine
            Left = 405
            Top = 124
            Width = 637
            Height = 8
          end
          object Sctvarlabel87: TSctvarlabel
            Left = 658
            Top = 104
            Width = 131
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laCenter
            Caption = 'Valores Fiscais'
          end
          object SctLine7: TSctLine
            Left = 1
            Top = 172
            Width = 1041
            Height = 5
          end
          object Sctvarlabel17: TSctvarlabel
            Left = 1
            Top = 135
            Width = 60
            Height = 35
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignVertical = laTop
            AlignHorizontal = laCenter
            WrapText = True
            Caption = 'Data da Entrada'
          end
          object Sctvarlabel18: TSctvarlabel
            Left = 267
            Top = 153
            Width = 112
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            WrapHeightPercent = 105
            Caption = 'Dados do Fornecedor'
          end
          object Sctvarlabel19: TSctvarlabel
            Left = 608
            Top = 135
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
            Caption = '1 - Opera'#231#245'es com Cr'#233'dito do impostos'
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
            Caption = '2 - Op. sem cr'#233'dito do Imp. Isentas ou n'#227'o tributadas'
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
            Caption = '3 - Op. sem cr'#233'dito do Imposto - Outras'
          end
          object Sctvarlabel104: TSctvarlabel
            Left = 873
            Top = 135
            Width = 80
            Height = 35
            AlignHorizontal = laRight
            WrapText = True
            Stretch = True
            Caption = 'Isentas / N'#227'o Tributadas'
          end
          object Sctvarlabel124: TSctvarlabel
            Left = 955
            Top = 153
            Width = 60
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Outras'
          end
          object Sctvarlabel125: TSctvarlabel
            Left = 1017
            Top = 153
            Width = 25
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Obs.'
          end
          object Sctvarlabel1: TSctvarlabel
            Left = 374
            Top = 138
            Width = 34
            Height = 32
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laCenter
            WrapText = True
            Caption = 'UF Orig'
          end
          object Sctvarlabel3: TSctvarlabel
            Left = 546
            Top = 154
            Width = 29
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laCenter
            Caption = 'ICMS'
          end
          object Sctvarlabel4: TSctvarlabel
            Left = 578
            Top = 154
            Width = 29
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laCenter
            Caption = 'IPI'
          end
        end
        object SctBand7: TSctBand
          Left = 0
          Top = 213
          Width = 1105
          Height = 38
          ParentColor = True
          BandName = 'Detail'
          Updatelevel = SctLevel8
          OnBeforePrint = SctBand7BeforePrint
          object Sctvarlabel20: TSctvarlabel
            Left = 653
            Top = 1
            Width = 100
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laRight
            Variable = adodslivroVl_BaseICMSVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
          end
          object Sctvarlabel21: TSctvarlabel
            Left = 755
            Top = 1
            Width = 46
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laRight
            Variable = adodslivroPr_ICMSVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
          end
          object Sctvarlabel22: TSctvarlabel
            Left = 806
            Top = 1
            Width = 65
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laRight
            Stretch = True
            Variable = adodslivroVl_ICMSVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
          end
          object Sctvarlabel23: TSctvarlabel
            Left = 601
            Top = 1
            Width = 50
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laCenter
            Stretch = True
            Variable = adodslivroFl_RegistroVar
          end
          object Sctvarlabel25: TSctvarlabel
            Left = 478
            Top = 1
            Width = 29
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laRight
            Variable = adodslivroCd_OperacaoVar
          end
          object Sctvarlabel26: TSctvarlabel
            Left = 510
            Top = 1
            Width = 35
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laRight
            Variable = adodslivroCd_CFOPVar
            Caption = ' '
          end
          object Sctvarlabel27: TSctvarlabel
            Left = 404
            Top = 1
            Width = 71
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laRight
            Stretch = True
            Variable = adodslivroVl_NotaVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
          end
          object Sctvarlabel28: TSctvarlabel
            Left = 267
            Top = 1
            Width = 112
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            WrapHeightPercent = 105
            Variable = adodslivroNr_DocumentoVar
            DataFormat.DisplayFormat = '##.###.###/####-##;0; '
          end
          object Sctvarlabel29: TSctvarlabel
            Left = 206
            Top = 1
            Width = 60
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laCenter
            Variable = adodslivroDt_EmissaoVar
            DataFormat.DisplayFormat = 'dd/mm/yyyy'
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel30: TSctvarlabel
            Left = 149
            Top = 1
            Width = 55
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laRight
            Variable = adodslivroNr_FaturaVar
          end
          object Sctvarlabel31: TSctvarlabel
            Left = 100
            Top = 1
            Width = 51
            Height = 17
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
          object Sctvarlabel32: TSctvarlabel
            Left = 63
            Top = 1
            Width = 34
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laCenter
            Caption = 'NF'
          end
          object Sctvarlabel33: TSctvarlabel
            Left = 1
            Top = 1
            Width = 60
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignVertical = laTop
            AlignHorizontal = laCenter
            Variable = adodslivroDt_LancamentoVar
            DataFormat.DisplayFormat = 'dd/mm/yyyy'
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel71: TSctvarlabel
            Left = 267
            Top = 19
            Width = 388
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Variable = adodslivroNm_EmitenteVar
          end
          object Sctvarlabel103: TSctvarlabel
            Left = 765
            Top = 19
            Width = 39
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laCenter
            Stretch = True
            Variable = adodslivroSg_EstadoVar1
          end
          object Sctvarlabel126: TSctvarlabel
            Left = 873
            Top = 1
            Width = 80
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laRight
            Stretch = True
            Variable = adodslivroVl_NaoTributadoVar1
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
          end
          object Sctvarlabel127: TSctvarlabel
            Left = 955
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
            Stretch = True
            Variable = adodslivroDp_OutrosVar1
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
          end
          object Sctvarlabel2: TSctvarlabel
            Left = 374
            Top = 1
            Width = 34
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laCenter
            Variable = adodslivroSg_EstadoVar1
          end
          object Sctvarlabel5: TSctvarlabel
            Left = 546
            Top = 0
            Width = 29
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laCenter
            Caption = ' '
          end
          object Sctvarlabel6: TSctvarlabel
            Left = 578
            Top = 0
            Width = 29
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            AlignHorizontal = laCenter
          end
        end
        object SctBdTransporte: TSctBand
          Left = 0
          Top = 266
          Width = 1105
          Height = 20
          ParentColor = True
          BandName = 'SctBdTransporte'
          OnPrintWhen = SctBdTransportePrintWhen
          Updatelevel = SctLevel9
          OnBeforePrint = SctBdTransporteBeforePrint
          object SctContabil: TSctvarlabel
            Left = 404
            Top = 1
            Width = 71
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = '0.00'
          end
          object SctBaseCalc: TSctvarlabel
            Left = 653
            Top = 1
            Width = 100
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            WrapText = True
            Stretch = True
            Caption = '0.00'
          end
          object SctImposto: TSctvarlabel
            Left = 806
            Top = 1
            Width = 65
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = '0.00'
          end
          object Sctvarlabel70: TSctvarlabel
            Left = 184
            Top = 1
            Width = 125
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Transporte'
          end
        end
        object SctBdFooter: TSctBand
          Left = 0
          Top = 301
          Width = 1105
          Height = 147
          ParentColor = True
          BandName = 'SctBdFooter'
          Updatelevel = SctLevel10
          OnBeforePrint = SctBdFooterBeforePrint
          object Sctvarlabel92: TSctvarlabel
            Left = 534
            Top = 39
            Width = 85
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Total ICMS:'
          end
          object SctTotBase: TSctvarlabel
            Left = 653
            Top = 39
            Width = 100
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = '0.00'
          end
          object SctTotICMS: TSctvarlabel
            Left = 806
            Top = 39
            Width = 65
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = '0.00'
          end
          object Sctvarlabel39: TSctvarlabel
            Left = 629
            Top = 39
            Width = 16
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laCenter
            Caption = '1'
          end
          object SctTotSemCred: TSctvarlabel
            Left = 653
            Top = 56
            Width = 100
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = '0.00'
          end
          object Sctvarlabel42: TSctvarlabel
            Left = 629
            Top = 56
            Width = 16
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laCenter
            Caption = '2'
          end
          object SctTotOutras: TSctvarlabel
            Left = 653
            Top = 73
            Width = 100
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = '0.00'
          end
          object Sctvarlabel58: TSctvarlabel
            Left = 629
            Top = 73
            Width = 16
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laCenter
            Caption = '3'
          end
          object Sctvarlabel38: TSctvarlabel
            Left = 534
            Top = 93
            Width = 85
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Total IPI:'
          end
          object Sctvarlabel40: TSctvarlabel
            Left = 653
            Top = 93
            Width = 100
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = '0.00'
          end
          object Sctvarlabel41: TSctvarlabel
            Left = 806
            Top = 93
            Width = 65
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = '0.00'
          end
          object Sctvarlabel43: TSctvarlabel
            Left = 629
            Top = 93
            Width = 16
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laCenter
            Caption = '1'
          end
          object Sctvarlabel44: TSctvarlabel
            Left = 653
            Top = 110
            Width = 100
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = '0.00'
          end
          object Sctvarlabel60: TSctvarlabel
            Left = 629
            Top = 110
            Width = 16
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laCenter
            Caption = '2'
          end
          object Sctvarlabel68: TSctvarlabel
            Left = 653
            Top = 127
            Width = 100
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = '0.00'
          end
          object Sctvarlabel69: TSctvarlabel
            Left = 629
            Top = 127
            Width = 16
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laCenter
            Caption = '3'
          end
          object SctTotalvarLabel7: TSctTotalvarLabel
            Left = 404
            Top = 1
            Width = 71
            Height = 17
            TotalVariable = TotalOfVl_Nota
            DataFormat.DisplayFormat = '#,##0.00'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object SctTotalvarLabel8: TSctTotalvarLabel
            Left = 653
            Top = 1
            Width = 100
            Height = 17
            TotalVariable = TotalOfVl_BaseICMS
            DataFormat.DisplayFormat = '#,##0.00'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object SctTotalvarLabel9: TSctTotalvarLabel
            Left = 806
            Top = 1
            Width = 65
            Height = 17
            TotalVariable = TotalOfVl_ICMS1
            DataFormat.DisplayFormat = '#,##0.00'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object SctBand9Sub: TSctSubBand
          Left = 0
          Top = 463
          Width = 1105
          Height = 95
          ParentColor = True
          BandName = 'SctBand9Sub'
          Updatelevel = SctLevel10
          Visible = False
          OnBeforePrint = SctBand9SubBeforePrint
          Band = SctBdFooter
          Above = False
          object SctShape5: TSctShape
            Left = 13
            Top = 2
            Width = 357
            Height = 92
          end
          object Sctvarlabel128: TSctvarlabel
            Left = 15
            Top = 5
            Width = 351
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laCenter
            Caption = 'Demonstrativo de Base de C'#225'lculo - Regime Especial'
          end
          object Sctvarlabel129: TSctvarlabel
            Left = 83
            Top = 35
            Width = 102
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Valor Contabil:'
          end
          object Sctvarlabel130: TSctvarlabel
            Left = 83
            Top = 53
            Width = 102
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Base de Calculo:'
          end
          object SctContabilRE: TSctvarlabel
            Left = 186
            Top = 35
            Width = 102
            Height = 17
            AlignHorizontal = laRight
            Caption = '0,00'
          end
          object SctBaseRE: TSctvarlabel
            Left = 186
            Top = 53
            Width = 102
            Height = 17
            AlignHorizontal = laRight
            Caption = '0,00'
          end
          object Sctvarlabel137: TSctvarlabel
            Left = 83
            Top = 71
            Width = 102
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Valor do ICMS:'
          end
          object SctICMSRE: TSctvarlabel
            Left = 186
            Top = 71
            Width = 102
            Height = 17
            AlignHorizontal = laRight
            Caption = '0,00'
          end
        end
      end
    end
  end
  object ADODsLivro: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    OnCalcFields = ADODsLivroCalcFields
    CommandText = 'select'#13#10'  E.Dt_Lancamento, E.Cd_Serie, E.Nr_Fatura, E.Dt_Emissao, ET.Nr_Documento,'#13#10'  ET.Nm_Emitente, C.Sg_Estado, ET.Nr_Insc_Estadual, E.Vl_Nota,'#13#10'  0 as Cd_Operacao, E.Cd_CFOP, E.Vl_BaseICMS, E.Pr_ICMS, E.Vl_ICMS, 0.0 as Vl_Outros,'#13#10'  E.Vl_Produto as Vl_BaseRE,'#13#10'  E.Vl_Produto + E.Vl_IPI as Vl_ContabilRE'#13#10#13#10'from'#13#10'  Entrada E'#13#10#13#10'inner join'#13#10'  CFOP CF'#13#10'on'#13#10'  CF.Cd_CFOP     = E.Cd_CFOP and'#13#10'  CF.Tp_Operacao < ''''4''''            -- Acerto de Estoque'#13#10#13#10'inner join'#13#10'  Emitente ET'#13#10'on'#13#10'  ET.Cd_Emitente = E.Cd_Emitente'#13#10#13#10'inner join'#13#10'  Emitente_Endereco EE'#13#10'on'#13#10'  EE.Cd_Emitente = ET.Cd_Emitente and'#13#10'  EE.Nr_Endereco = ET.Nr_Endereco'#13#10#13#10'inner join'#13#10'  Cidade C'#13#10'on'#13#10'  C.Cd_Cidade = EE.Cd_Cidade'#13#10#13#10'where'#13#10'  E.Cd_Filial      = :Cd_Filial and'#13#10'  E.St_Entrada     = ''''2'''' and                   -- Fechado'#13#10'  E.Dt_Lancamento >= :Dt_Start and'#13#10'  E.Dt_Lancamento  < :Dt_End'#13#10'  -- E.Cd_Operacao not in ( 45 )'#13#10#13#10'order by'#13#10'  E.Dt_Lancamento, ET.Nr_Documento, E.Dt_Emissao, E.Nr_Fatura'
    FieldDefs = <
      item
        Name = 'Dt_Lancamento'
        Attributes = [faFixed]
        DataType = ftDateTime
      end
      item
        Name = 'Cd_Serie'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'Nr_Fatura'
        Attributes = [faFixed]
        DataType = ftInteger
      end
      item
        Name = 'Dt_Emissao'
        Attributes = [faFixed]
        DataType = ftDateTime
      end
      item
        Name = 'Nr_Documento'
        DataType = ftString
        Size = 14
      end
      item
        Name = 'Nm_Emitente'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'Sg_Estado'
        Attributes = [faFixed]
        DataType = ftFixedChar
        Size = 2
      end
      item
        Name = 'Nr_Insc_Estadual'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Vl_Nota'
        Attributes = [faFixed]
        DataType = ftBCD
        Precision = 12
        Size = 2
      end
      item
        Name = 'Cd_Operacao'
        Attributes = [faReadonly, faFixed]
        DataType = ftInteger
      end
      item
        Name = 'Cd_CFOP'
        Attributes = [faFixed]
        DataType = ftFixedChar
        Size = 4
      end
      item
        Name = 'Vl_BaseICMS'
        Attributes = [faFixed]
        DataType = ftBCD
        Precision = 12
        Size = 2
      end
      item
        Name = 'Pr_ICMS'
        Attributes = [faFixed]
        DataType = ftBCD
        Precision = 9
        Size = 2
      end
      item
        Name = 'Vl_ICMS'
        Attributes = [faFixed]
        DataType = ftBCD
        Precision = 12
        Size = 2
      end
      item
        Name = 'Vl_Outros'
        Attributes = [faReadonly, faFixed]
        DataType = ftBCD
        Precision = 1
        Size = 1
      end
      item
        Name = 'Vl_BaseRE'
        Attributes = [faFixed]
        DataType = ftBCD
        Precision = 12
        Size = 2
      end
      item
        Name = 'Vl_ContabilRE'
        Attributes = [faReadonly, faFixed]
        DataType = ftBCD
        Precision = 13
        Size = 2
      end>
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
        Name = 'Dt_Start'
        DataType = ftDateTime
        Precision = 16
        Size = 16
        Value = nil?
      end
      item
        Name = 'Dt_End'
        DataType = ftDateTime
        Precision = 16
        Size = 16
        Value = nil?
      end>
    StoreDefs = True
    Left = 53
    Top = 90
    object ADODsLivroCd_Serie: TStringField
      FieldName = 'Cd_Serie'
      FixedChar = True
      Size = 3
    end
    object ADODsLivroDt_Emissao: TDateTimeField
      FieldName = 'Dt_Emissao'
    end
    object ADODsLivroCd_Operacao: TSmallintField
      FieldName = 'Cd_Operacao'
    end
    object ADODsLivroCd_CFOP: TStringField
      FieldName = 'Cd_CFOP'
      FixedChar = True
      Size = 4
    end
    object ADODsLivroVl_BaseICMS: TBCDField
      FieldName = 'Vl_BaseICMS'
      Precision = 10
    end
    object ADODsLivroPr_ICMS: TBCDField
      FieldName = 'Pr_ICMS'
      Precision = 4
      Size = 2
    end
    object ADODsLivroVl_ICMS: TBCDField
      FieldName = 'Vl_ICMS'
      Precision = 10
    end
    object ADODsLivroVl_Outros: TBCDField
      FieldName = 'Vl_Outros'
      Precision = 10
    end
    object ADODsLivroFl_Registro: TStringField
      FieldKind = fkCalculated
      FieldName = 'Fl_Registro'
      Size = 1
      Calculated = True
    end
    object ADODsLivroSg_Estado: TStringField
      FieldName = 'Sg_Estado'
      FixedChar = True
      Size = 2
    end
    object ADODsLivroVl_NaoTributado: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Vl_NaoTributado'
      Calculated = True
    end
    object ADODsLivroDp_Outros: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Dp_Outros'
      Calculated = True
    end
    object ADODsLivroVl_BaseRE: TBCDField
      FieldName = 'Vl_BaseRE'
      ReadOnly = True
      Precision = 19
    end
    object ADODsLivroVl_ContabilRE: TBCDField
      FieldName = 'Vl_ContabilRE'
      ReadOnly = True
      Precision = 32
      Size = 11
    end
    object ADODsLivroDt_Lancamento: TDateTimeField
      FieldName = 'Dt_Lancamento'
    end
    object ADODsLivroNr_Fatura: TIntegerField
      FieldName = 'Nr_Fatura'
    end
    object ADODsLivroNm_Emitente: TStringField
      FieldName = 'Nm_Emitente'
      Size = 50
    end
    object ADODsLivroNr_Insc_Estadual: TStringField
      FieldName = 'Nr_Insc_Estadual'
    end
    object ADODsLivroVl_Nota: TBCDField
      FieldName = 'Vl_Nota'
      Precision = 12
      Size = 2
    end
    object ADODsLivroNr_Documento: TStringField
      FieldName = 'Nr_Documento'
      Size = 14
    end
  end
  object DsLivro: TDataSource
    DataSet = ADODsLivro
    Left = 24
    Top = 90
  end
end
