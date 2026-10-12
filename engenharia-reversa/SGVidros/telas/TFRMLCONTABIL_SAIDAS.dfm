object FrmLContabil_Saidas: TFrmLContabil_Saidas
  Left = 294
  Top = 173
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Registro de Sa'#237'das'
  ClientHeight = 265
  ClientWidth = 658
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
    Height = 265
    Align = alLeft
    TabOrder = 0
    ExplicitHeight = 133
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 637
    Height = 265
    Align = alClient
    ParentColor = True
    TabOrder = 1
    ExplicitWidth = 333
    ExplicitHeight = 133
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
    object BvlSeparator: TBevel
      Left = 3
      Top = 234
      Width = 628
      Height = 5
      Shape = bsTopLine
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
    object BitBtnReport: TBitBtn
      Left = 464
      Top = 238
      Width = 85
      Height = 25
      Caption = '&Imprimir'
      TabOrder = 3
      OnClick = BitBtnReportClick
      Glyph.Data = {binary 1146 bytes}
    end
    object BitBtnCancel: TBitBtn
      Left = 550
      Top = 238
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 4
      OnClick = BitBtnCancelClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object SctRepLivro: TSctReport
      Left = 129
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
      SuppressStatus = False
      PixelsPerInch = 96
      STop = 1
      SLeft = 1
      SWidth = 865
      SHeight = 625
      MTop = 43
      MLeft = 129
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
        Description = 'Registro de Sa'#237'da - Livro'
        CloseDataSet = False
        DataRange = drAllRecords
        OmitLastPgFt = False
        Head = SctBand5
        Detail = SctBand7
        Foot = SctBand9
        PageHead = SctBand6
        PageFoot = SctBand8
        DataSource = DsLivro
        Order = 1
        NoDsgList = (
          'DsOpContabil'
          'DsInterestadual'
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
        object adodslivroCd_FilialVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Cd_Filial'
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
        object adodslivroTp_OperacaoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Tp_Operacao'
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
        object adodslivroSg_EstadoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Sg_Estado'
          DataSource = DsLivro
          UpdateLevel = SctLevel8
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodslivroVl_SubstituicaoVar: TSctDBVar
          Left = 429
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Vl_Substituicao'
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
          Height = 178
          ParentColor = True
          BandName = 'Page Header'
          Updatelevel = SctLevel7
          Stretch = True
          OnBeforePrint = SctBand6BeforePrint
          object SctShape3: TSctShape
            Left = 1
            Top = 1
            Width = 995
            Height = 88
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
            Left = 45
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
            Left = 590
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
            Caption = 'Registro de Sa'#237'das'
          end
          object Sctvarlabel51: TSctvarlabel
            Left = 274
            Top = 5
            Width = 449
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
            Left = 1
            Top = 153
            Width = 48
            Height = 17
            Caption = 'Esp'#233'cie'
          end
          object Sctvarlabel56: TSctvarlabel
            Left = 54
            Top = 135
            Width = 75
            Height = 35
            AlignVertical = laTop
            AlignHorizontal = laCenter
            WrapText = True
            Caption = 'S'#233'rie Subs'#233'rie'
          end
          object Sctvarlabel57: TSctvarlabel
            Left = 135
            Top = 153
            Width = 50
            Height = 17
            AlignHorizontal = laCenter
            Caption = 'N'#250'mero'
          end
          object Sctvarlabel59: TSctvarlabel
            Left = 191
            Top = 153
            Width = 75
            Height = 17
            AlignHorizontal = laCenter
            Caption = 'Data'
          end
          object Sctvarlabel60: TSctvarlabel
            Left = 271
            Top = 135
            Width = 66
            Height = 35
            AlignHorizontal = laCenter
            WrapText = True
            Stretch = True
            Caption = 'UF Destino'
          end
          object Sctvarlabel61: TSctvarlabel
            Left = 342
            Top = 135
            Width = 80
            Height = 35
            AlignHorizontal = laRight
            WrapText = True
            Stretch = True
            Caption = 'Valor Cont'#225'bil'
          end
          object Sctvarlabel62: TSctvarlabel
            Left = 428
            Top = 153
            Width = 68
            Height = 17
            AlignHorizontal = laCenter
            Caption = 'Cod. Fiscal'
          end
          object Sctvarlabel64: TSctvarlabel
            Left = 502
            Top = 135
            Width = 60
            Height = 35
            AlignHorizontal = laCenter
            WrapText = True
            Stretch = True
            Lines.Strings = (
              'ICMS '
              'IPI'
            )
          end
          object Sctvarlabel65: TSctvarlabel
            Left = 568
            Top = 153
            Width = 104
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Base de C'#225'lculo'
          end
          object Sctvarlabel66: TSctvarlabel
            Left = 678
            Top = 153
            Width = 51
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Al'#237'quota'
          end
          object Sctvarlabel67: TSctvarlabel
            Left = 734
            Top = 135
            Width = 77
            Height = 35
            AlignHorizontal = laRight
            WrapText = True
            Stretch = True
            Caption = 'Imposto Debitado'
          end
          object Sctvarlabel68: TSctvarlabel
            Left = 816
            Top = 135
            Width = 93
            Height = 35
            AlignHorizontal = laRight
            WrapText = True
            Stretch = True
            Caption = 'Isentas/N'#227'o Tributada'
          end
          object Sctvarlabel69: TSctvarlabel
            Left = 915
            Top = 153
            Width = 80
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Outras'
          end
          object SctLine5: TSctLine
            Left = 1
            Top = 124
            Width = 312
            Height = 8
          end
          object Sctvarlabel86: TSctvarlabel
            Left = 92
            Top = 104
            Width = 131
            Height = 17
            AlignHorizontal = laCenter
            Caption = 'Documentos Fiscais'
          end
          object SctLine6: TSctLine
            Left = 518
            Top = 124
            Width = 383
            Height = 8
          end
          object Sctvarlabel87: TSctvarlabel
            Left = 644
            Top = 104
            Width = 131
            Height = 17
            AlignHorizontal = laCenter
            Caption = 'Valores Fiscais'
          end
          object SctLine7: TSctLine
            Left = 1
            Top = 172
            Width = 995
            Height = 5
          end
        end
        object SctBand7: TSctBand
          Left = 0
          Top = 213
          Width = 1105
          Height = 20
          ParentColor = True
          BandName = 'Detail'
          Updatelevel = SctLevel8
          OnBeforePrint = SctBand7BeforePrint
          object Sctvarlabel71: TSctvarlabel
            Left = 1
            Top = 1
            Width = 48
            Height = 17
            Caption = 'NF'
          end
          object Sctvarlabel72: TSctvarlabel
            Left = 54
            Top = 1
            Width = 75
            Height = 17
            AlignVertical = laTop
            AlignHorizontal = laCenter
            WrapText = True
            Variable = adodslivroCd_SerieVar
          end
          object Sctvarlabel73: TSctvarlabel
            Left = 135
            Top = 1
            Width = 50
            Height = 17
            AlignHorizontal = laRight
            Variable = adodslivroNr_FaturaVar
          end
          object Sctvarlabel74: TSctvarlabel
            Left = 191
            Top = 1
            Width = 75
            Height = 17
            AlignHorizontal = laRight
            Variable = adodslivroDt_EmissaoVar
            DataFormat.DisplayFormat = 'dd/mm/yyyy'
          end
          object Sctvarlabel75: TSctvarlabel
            Left = 271
            Top = 1
            Width = 66
            Height = 17
            AlignHorizontal = laCenter
            WrapText = True
            Stretch = True
            Variable = adodslivroSg_EstadoVar
          end
          object Sctvarlabel76: TSctvarlabel
            Left = 342
            Top = 1
            Width = 80
            Height = 17
            AlignHorizontal = laRight
            WrapText = True
            Stretch = True
            Variable = adodslivroVl_NotaVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
          end
          object Sctvarlabel77: TSctvarlabel
            Left = 428
            Top = 1
            Width = 68
            Height = 17
            AlignHorizontal = laCenter
            Variable = adodslivroCd_CFOPVar
          end
          object Sctvarlabel79: TSctvarlabel
            Left = 502
            Top = 1
            Width = 60
            Height = 17
            AlignHorizontal = laCenter
            WrapText = True
            Stretch = True
            Caption = 'ICMS'
          end
          object Sctvarlabel80: TSctvarlabel
            Left = 568
            Top = 1
            Width = 104
            Height = 17
            AlignHorizontal = laRight
            Variable = adodslivroVl_BaseICMSVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
          end
          object Sctvarlabel81: TSctvarlabel
            Left = 678
            Top = 1
            Width = 51
            Height = 17
            AlignHorizontal = laRight
            Variable = adodslivroPr_ICMSVar
          end
          object Sctvarlabel82: TSctvarlabel
            Left = 734
            Top = 1
            Width = 77
            Height = 17
            AlignHorizontal = laRight
            WrapText = True
            Stretch = True
            Variable = adodslivroVl_ICMSVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
          end
          object Sctvarlabel83: TSctvarlabel
            Left = 816
            Top = 1
            Width = 93
            Height = 17
            AlignHorizontal = laRight
            WrapText = True
            Stretch = True
            Variable = adodslivroVl_SubstituicaoVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
          end
          object Sctvarlabel84: TSctvarlabel
            Left = 915
            Top = 1
            Width = 80
            Height = 17
            AlignHorizontal = laRight
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
          end
        end
        object SctBand8: TSctBand
          Left = 0
          Top = 248
          Width = 1105
          Height = 20
          ParentColor = True
          BandName = 'Page Footer'
          OnPrintWhen = SctBand8PrintWhen
          Updatelevel = SctLevel9
          OnBeforePrint = SctBand8BeforePrint
          object SctBase: TSctvarlabel
            Left = 568
            Top = 1
            Width = 104
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = '0.00'
          end
          object SctImpDebitado: TSctvarlabel
            Left = 734
            Top = 1
            Width = 77
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            WrapText = True
            Stretch = True
            Caption = '0.00'
          end
          object SctIsento: TSctvarlabel
            Left = 816
            Top = 1
            Width = 93
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            WrapText = True
            Stretch = True
            Caption = '0.00'
          end
          object SctOutros: TSctvarlabel
            Left = 915
            Top = 1
            Width = 80
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = '0.00'
          end
          object Sctvarlabel70: TSctvarlabel
            Left = 208
            Top = 1
            Width = 125
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Transporte ICMS'
          end
          object SctVlContabil: TSctvarlabel
            Left = 342
            Top = 1
            Width = 80
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = '0.00'
          end
        end
        object SctBand9: TSctBand
          Left = 0
          Top = 283
          Width = 1105
          Height = 45
          ParentColor = True
          BandName = 'Report Footer'
          Updatelevel = SctLevel10
          OnBeforePrint = SctBand9BeforePrint
          object Sctvarlabel85: TSctvarlabel
            Left = 568
            Top = 20
            Width = 104
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = '0.00'
          end
          object Sctvarlabel89: TSctvarlabel
            Left = 816
            Top = 20
            Width = 93
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            WrapText = True
            Stretch = True
            Caption = '0.00'
          end
          object Sctvarlabel90: TSctvarlabel
            Left = 915
            Top = 20
            Width = 80
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = '0.00'
          end
          object Sctvarlabel91: TSctvarlabel
            Left = 249
            Top = 20
            Width = 85
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Total IPI:'
          end
          object SctTotBase: TSctvarlabel
            Left = 568
            Top = 2
            Width = 104
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = '0.00'
          end
          object SctTotIsento: TSctvarlabel
            Left = 816
            Top = 2
            Width = 93
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            WrapText = True
            Stretch = True
            Caption = '0.00'
          end
          object SctTotOutros: TSctvarlabel
            Left = 915
            Top = 2
            Width = 80
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = '0.00'
          end
          object Sctvarlabel92: TSctvarlabel
            Left = 249
            Top = 2
            Width = 85
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Total ICMS:'
          end
          object SctTotVlContabil: TSctvarlabel
            Left = 342
            Top = 3
            Width = 80
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = '0.00'
          end
          object Sctvarlabel95: TSctvarlabel
            Left = 342
            Top = 22
            Width = 80
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = '0.00'
          end
          object Sctvarlabel88: TSctvarlabel
            Left = 734
            Top = 20
            Width = 77
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = '0.00'
          end
          object SctTotImpDebitado: TSctvarlabel
            Left = 734
            Top = 2
            Width = 77
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = '0.00'
          end
        end
      end
    end
  end
  object DsLivro: TDataSource
    DataSet = ADODsLivro
    Left = 28
    Top = 95
  end
  object ADODsLivro: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'declare'#13#10'  @Cd_Filial SmallInt,'#13#10'  @Dt_Start SmallDateTime,'#13#10'  @Dt_End SmallDateTime'#13#10#13#10'select'#13#10'  @Cd_Filial = :Cd_Filial,'#13#10'  @Dt_Start  = :Dt_Start,'#13#10'  @Dt_End    = :Dt_End'#13#10#13#10'-------------------- Table SAIDA'#13#10'select'#13#10'  S.Cd_Filial, S.Nr_Fatura, S.Dt_Emissao, S.Cd_Serie, CF.Tp_Operacao,'#13#10'  S.Vl_Nota, S.Cd_CFOP, 0 as Cd_Operacao, S.Vl_BaseICMS, S.Pr_ICMS,'#13#10'  S.Vl_ICMS, S.Vl_Substituicao, C.Sg_Estado'#13#10#13#10'from'#13#10'  Saida S'#13#10#13#10'inner join'#13#10'  CFOP CF'#13#10'on'#13#10'  CF.Cd_CFOP     = S.Cd_CFOP and'#13#10'  CF.Tp_Operacao < ''''4''''            -- Acerto de Estoque'#13#10#13#10'inner join'#13#10'  Emitente ET'#13#10'on'#13#10'  ET.Cd_Emitente = S.Cd_Emitente'#13#10#13#10'inner join'#13#10'  Emitente_Endereco EE'#13#10'on'#13#10'  EE.Cd_Emitente = ET.Cd_Emitente and'#13#10'  EE.Nr_Endereco = ET.Nr_Endereco'#13#10#13#10'inner join'#13#10'  Cidade C'#13#10'on'#13#10'  C.Cd_Cidade = EE.Cd_Cidade'#13#10#13#10'where'#13#10'  S.Cd_Filial   = @Cd_Filial and'#13#10'  S.St_Saida    = ''''2'''' and          -- Fechada'#13#10'  S.Dt_Emissao >= @Dt_Start and'#13#10'  S.Dt_Emissao  < @Dt_End'#13#10#13#10'union'#13#10#13#10'-------------------- Table Orcamento'#13#10'select'#13#10'  O.Cd_Filial, O.Nr_Fatura, O.Dt_Fatura, O.Cd_Serie, CF.Tp_Operacao,'#13#10'  OT.Vl_Orcamento as Vl_Nota, O.Cd_CFOP, 0 as Cd_Operacao, O.Vl_BaseICMS, '#13#10'  O.Pr_ICMS, O.Vl_ICMS, O.Vl_STB, C.Sg_Estado'#13#10#13#10'from'#13#10'  Orcamento_Total OT'#13#10#13#10'inner join'#13#10'  Orcamento O'#13#10'on'#13#10'  O.Cd_Filial    = OT.Cd_Filial and'#13#10'  O.Nr_Orcamento = OT.Nr_Orcamento'#13#10#13#10'inner join'#13#10'  CFOP CF'#13#10'on'#13#10'  CF.Cd_CFOP     = O.Cd_CFOP and'#13#10'  CF.Tp_Operacao < ''''4''''            -- Acerto de Estoque'#13#10#13#10'inner join'#13#10'  Emitente ET'#13#10'on'#13#10'  ET.Cd_Emitente = O.Cd_Emitente'#13#10#13#10'inner join'#13#10'  Emitente_Endereco EE'#13#10'on'#13#10'  EE.Cd_Emitente = ET.Cd_Emitente and'#13#10'  EE.Nr_Endereco = ET.Nr_Endereco'#13#10#13#10'inner join'#13#10'  Cidade C'#13#10'on'#13#10'  C.Cd_Cidade = EE.Cd_Cidade'#13#10#13#10'where'#13#10'  OT.Cd_Filial    = @Cd_Filial and'#13#10'  OT.St_Orcamento = ''''9'''' and          -- Fechada'#13#10'  OT.Dt_Fatura   >= @Dt_Start and'#13#10'  OT.Dt_Fatura    < @Dt_End'#13#10#13#10'order by'#13#10'  1, 2, 3'
    Parameters = <
      item
        Name = 'Cd_Filial'
        DataType = ftSmallint
        Size = -1
        Value = nil?
      end
      item
        Name = 'Dt_Start'
        DataType = ftDateTime
        Size = -1
        Value = nil?
      end
      item
        Name = 'Dt_End'
        DataType = ftDateTime
        Size = -1
        Value = nil?
      end>
    Left = 59
    Top = 96
    object ADODsLivroCd_Filial: TSmallintField
      FieldName = 'Cd_Filial'
      ReadOnly = True
    end
    object ADODsLivroNr_Fatura: TIntegerField
      FieldName = 'Nr_Fatura'
      ReadOnly = True
    end
    object ADODsLivroDt_Emissao: TDateTimeField
      FieldName = 'Dt_Emissao'
      ReadOnly = True
    end
    object ADODsLivroCd_Serie: TStringField
      FieldName = 'Cd_Serie'
      ReadOnly = True
      Size = 3
    end
    object ADODsLivroTp_Operacao: TStringField
      FieldName = 'Tp_Operacao'
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object ADODsLivroVl_Nota: TBCDField
      FieldName = 'Vl_Nota'
      ReadOnly = True
      Precision = 28
      Size = 9
    end
    object ADODsLivroCd_CFOP: TStringField
      FieldName = 'Cd_CFOP'
      ReadOnly = True
      FixedChar = True
      Size = 4
    end
    object ADODsLivroCd_Operacao: TIntegerField
      FieldName = 'Cd_Operacao'
      ReadOnly = True
    end
    object ADODsLivroVl_BaseICMS: TBCDField
      FieldName = 'Vl_BaseICMS'
      ReadOnly = True
      Precision = 12
      Size = 2
    end
    object ADODsLivroPr_ICMS: TBCDField
      FieldName = 'Pr_ICMS'
      ReadOnly = True
      Precision = 12
      Size = 2
    end
    object ADODsLivroVl_ICMS: TBCDField
      FieldName = 'Vl_ICMS'
      ReadOnly = True
      Precision = 12
      Size = 2
    end
    object ADODsLivroSg_Estado: TStringField
      FieldName = 'Sg_Estado'
      ReadOnly = True
      FixedChar = True
      Size = 2
    end
    object ADODsLivroVl_Substituicao: TBCDField
      FieldName = 'Vl_Substituicao'
      ReadOnly = True
      Precision = 12
      Size = 2
    end
  end
end
