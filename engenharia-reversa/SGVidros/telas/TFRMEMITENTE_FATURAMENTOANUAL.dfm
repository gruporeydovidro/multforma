object FrmEmitente_FaturamentoAnual: TFrmEmitente_FaturamentoAnual
  Left = 294
  Top = 173
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Rel. de Faturamento Anual por Cliente'
  ClientHeight = 283
  ClientWidth = 719
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
    Height = 283
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 698
    Height = 283
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 3
      Top = 253
      Width = 690
      Height = 5
      Shape = bsTopLine
    end
    object Label5: TLabel
      Left = 5
      Top = 38
      Width = 91
      Height = 13
      Caption = 'Grupo de Emitente:'
    end
    object SbGrupo: TSpeedButton
      Left = 45
      Top = 53
      Width = 23
      Height = 19
      Hint = 'Seleciona Grupo de Emitente'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbGrupoClick
    end
    object SbSubGrupo: TSpeedButton
      Left = 382
      Top = 53
      Width = 23
      Height = 19
      Hint = 'Consulta SubGrupo de Emitente'
      Flat = True
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
      OnClick = SbSubGrupoClick
    end
    object Label20: TLabel
      Left = 342
      Top = 37
      Width = 110
      Height = 13
      Caption = 'SubGrupo de Emitente:'
    end
    object SbFuncionario: TSpeedButton
      Left = 66
      Top = 90
      Width = 23
      Height = 19
      Hint = 'Seleciona Cliente'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbFuncionarioClick
    end
    object Label6: TLabel
      Left = 5
      Top = 75
      Width = 35
      Height = 13
      Caption = 'Cliente:'
    end
    object Label1: TLabel
      Left = 5
      Top = 1
      Width = 76
      Height = 13
      Caption = 'M'#234's/Ano inicial:'
    end
    object Label2: TLabel
      Left = 136
      Top = 0
      Width = 40
      Height = 13
      Caption = '% sobre:'
    end
    object Label3: TLabel
      Left = 5
      Top = 147
      Width = 85
      Height = 13
      Caption = 'Nome do Arquivo:'
    end
    object SbSave: TSpeedButton
      Left = 279
      Top = 159
      Width = 23
      Height = 21
      Hint = 'Salvar como...'
      Flat = True
      Glyph.Data = {binary 378 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbSaveClick
    end
    object SbCidade: TSpeedButton
      Left = 45
      Top = 127
      Width = 23
      Height = 19
      Hint = 'Consulta Cidade'
      Flat = True
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
      OnClick = SbCidadeClick
    end
    object Label4: TLabel
      Left = 5
      Top = 111
      Width = 36
      Height = 13
      Caption = 'Cidade:'
    end
    object BitBtnReport: TBitBtn
      Left = 525
      Top = 256
      Width = 85
      Height = 25
      Caption = '&Imprimir'
      TabOrder = 14
      OnClick = BitBtnReportClick
      Glyph.Data = {binary 250 bytes}
    end
    object BitBtnCancel: TBitBtn
      Left = 611
      Top = 256
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 15
      OnClick = BitBtnCancelClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object EdtCd_Grupo: TCurrencyEdit
      Tag = 3
      Left = 5
      Top = 53
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 3
      OnExit = EdtCd_GrupoExit
      OnKeyDown = EdtCd_GrupoKeyDown
    end
    object EdtNm_Grupo: TEdit
      Left = 69
      Top = 53
      Width = 268
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
      TabOrder = 4
    end
    object EdtCd_SubGrupo: TCurrencyEdit
      Tag = 2
      Left = 342
      Top = 53
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '###'
      TabOrder = 5
      OnExit = EdtCd_SubGrupoExit
      OnKeyDown = EdtCd_GrupoKeyDown
    end
    object EdtNm_SubGrupo: TEdit
      Left = 405
      Top = 53
      Width = 250
      Height = 19
      TabStop = False
      AutoSize = False
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 6
    end
    object EdtCd_Emitente: TCurrencyEdit
      Tag = 7
      Left = 5
      Top = 90
      Width = 60
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 7
      OnExit = EdtCd_EmitenteExit
      OnKeyDown = EdtCd_GrupoKeyDown
    end
    object EdtNm_Emitente: TEdit
      Left = 89
      Top = 90
      Width = 440
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
    object EdtNr_Ano: TCurrencyEdit
      Tag = 3
      Left = 93
      Top = 15
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '####'
      TabOrder = 1
    end
    object CkBZebrado: TCheckBox
      Left = 6
      Top = 260
      Width = 111
      Height = 17
      TabStop = False
      Caption = 'Imprimir "&Zebrado"'
      Checked = True
      State = cbChecked
      TabOrder = 12
    end
    object CbMes: TComboBox
      Left = 5
      Top = 15
      Width = 87
      Height = 21
      Style = csDropDownList
      DropDownCount = 12
      ItemHeight = 13
      ItemIndex = 10
      TabOrder = 0
      Text = 'Novembro'
      Items.Strings = (
        'Janeiro'
        'Fevereiro'
        'Mar'#231'o'
        'Abril'
        'Maio'
        'Junho'
        'Julho'
        'Agosto'
        'Setembro'
        'Outubro'
        'Novembro'
        'Dezembro'
      )
    end
    object CbPercentual: TComboBox
      Left = 136
      Top = 14
      Width = 129
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 1
      TabOrder = 2
      Text = 'Valor Total Vendido'
      Items.Strings = (
        'Quantidade Vendida'
        'Valor Total Vendido'
      )
    end
    object EdtNm_File: TEdit
      Left = 5
      Top = 161
      Width = 274
      Height = 19
      TabOrder = 11
      Text = 'Faturamento Anual por Cliente.CSV'
    end
    object BitBtnSalvar: TBitBtn
      Left = 434
      Top = 256
      Width = 85
      Height = 25
      Caption = '&Salvar'
      TabOrder = 13
      OnClick = BitBtnSalvarClick
      Glyph.Data = {binary 378 bytes}
      NumGlyphs = 2
    end
    object RLRepFatAnual: TRLReport
      Left = 45
      Top = 296
      Width = 1123
      Height = 794
      Margins.LeftMargin = 5.0
      Margins.TopMargin = 5.0
      Margins.RightMargin = 5.0
      Margins.BottomMargin = 5.0
      DataSource = DsReport
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      PageSetup.Orientation = poLandscape
      Visible = False
      object RLBand1: TRLBand
        Left = 19
        Top = 19
        Width = 1085
        Height = 40
        BandType = btHeader
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        object RLLabel1: TRLLabel
          Left = 3
          Top = 2
          Width = 170
          Height = 15
          Caption = 'Faturamento Anual por Cliente'
        end
        object RLSystemInfo1: TRLSystemInfo
          Left = 1011
          Top = 2
          Width = 73
          Height = 15
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel3: TRLLabel
          Left = 978
          Top = 2
          Width = 32
          Height = 15
          Alignment = taRightJustify
          Caption = 'Data:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLblReport: TRLLabel
          Left = 3
          Top = 23
          Width = 319
          Height = 15
          Caption = 'M'#234's Inical Janeiro/2018 Varia'#231#227'o sobre o Total Vendido'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
        end
      end
      object RlGrpCliente: TRLGroup
        Left = 19
        Top = 59
        Width = 1085
        Height = 262
        object RLBand2: TRLBand
          Left = 0
          Top = 0
          Width = 1085
          Height = 82
          BandType = btHeader
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          Color = 14803425
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = False
          AfterPrint = RLBand2AfterPrint
          BeforePrint = RLBand2BeforePrint
          object RLDBText2: TRLDBText
            Left = 1
            Top = 1
            Width = 88
            Height = 15
            DataField = 'Dp_EmitReport'
            DataSource = DsReport
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
          end
          object RLMemo14: TRLMemo
            Left = 201
            Top = 52
            Width = 45
            Height = 28
            Alignment = taRightJustify
            AutoSize = False
            Behavior = [beSiteExpander]
            Lines.Strings = (
              #218'ltimo'
              'Pre'#231'o'
            )
            Transparent = False
          end
          object RLLblPercentual_00: TRLLabel
            Left = 154
            Top = 66
            Width = 45
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Qtde'
            Transparent = False
          end
          object RLLabel14: TRLLabel
            Left = 1037
            Top = 66
            Width = 45
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            Caption = '( % )'
            Transparent = False
          end
          object RLMemo15: TRLMemo
            Left = 991
            Top = 52
            Width = 45
            Height = 28
            Alignment = taRightJustify
            AutoSize = False
            Behavior = [beSiteExpander]
            Lines.Strings = (
              #218'ltimo'
              'Pre'#231'o'
            )
            Transparent = False
          end
          object RLLblPercentual_06: TRLLabel
            Left = 945
            Top = 66
            Width = 45
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Qtde'
            Transparent = False
          end
          object RLLabel23: TRLLabel
            Left = 898
            Top = 66
            Width = 45
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            Caption = '( % )'
            Transparent = False
          end
          object RLMemo16: TRLMemo
            Left = 852
            Top = 52
            Width = 45
            Height = 28
            Alignment = taRightJustify
            AutoSize = False
            Behavior = [beSiteExpander]
            Lines.Strings = (
              #218'ltimo'
              'Pre'#231'o'
            )
            Transparent = False
          end
          object RLLblPercentual_05: TRLLabel
            Left = 805
            Top = 66
            Width = 45
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Qtde'
            Transparent = False
          end
          object RLLabel29: TRLLabel
            Left = 759
            Top = 66
            Width = 45
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            Caption = '( % )'
            Transparent = False
          end
          object RLMemo17: TRLMemo
            Left = 713
            Top = 52
            Width = 45
            Height = 28
            Alignment = taRightJustify
            AutoSize = False
            Behavior = [beSiteExpander]
            Lines.Strings = (
              #218'ltimo'
              'Pre'#231'o'
            )
            Transparent = False
          end
          object RLLblPercentual_04: TRLLabel
            Left = 666
            Top = 66
            Width = 45
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Qtde'
            Transparent = False
          end
          object RLLabel35: TRLLabel
            Left = 620
            Top = 66
            Width = 45
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            Caption = '( % )'
            Transparent = False
          end
          object RLMemo18: TRLMemo
            Left = 574
            Top = 52
            Width = 45
            Height = 28
            Alignment = taRightJustify
            AutoSize = False
            Behavior = [beSiteExpander]
            Lines.Strings = (
              #218'ltimo'
              'Pre'#231'o'
            )
            Transparent = False
          end
          object RLLblPercentual_03: TRLLabel
            Left = 527
            Top = 66
            Width = 45
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Qtde'
            Transparent = False
          end
          object RLLabel37: TRLLabel
            Left = 481
            Top = 66
            Width = 45
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            Caption = '( % )'
            Transparent = False
          end
          object RLMemo19: TRLMemo
            Left = 435
            Top = 52
            Width = 45
            Height = 28
            Alignment = taRightJustify
            AutoSize = False
            Behavior = [beSiteExpander]
            Lines.Strings = (
              #218'ltimo'
              'Pre'#231'o'
            )
            Transparent = False
          end
          object RLLblPercentual_02: TRLLabel
            Left = 388
            Top = 66
            Width = 45
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Qtde'
            Transparent = False
          end
          object RLLabel39: TRLLabel
            Left = 340
            Top = 66
            Width = 45
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            Caption = '( % )'
            Transparent = False
          end
          object RLMemo20: TRLMemo
            Left = 294
            Top = 52
            Width = 45
            Height = 28
            Alignment = taRightJustify
            AutoSize = False
            Behavior = [beSiteExpander]
            Lines.Strings = (
              #218'ltimo'
              'Pre'#231'o'
            )
            Transparent = False
          end
          object RLLblPercentual_01: TRLLabel
            Left = 247
            Top = 66
            Width = 45
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Qtde'
            Transparent = False
          end
          object RLLblMes_00: TRLLabel
            Left = 154
            Top = 20
            Width = 92
            Height = 14
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLblMes_11: TRLLabel
            Left = 944
            Top = 20
            Width = 138
            Height = 14
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLblMes_09: TRLLabel
            Left = 805
            Top = 20
            Width = 138
            Height = 14
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLblMes_07: TRLLabel
            Left = 666
            Top = 20
            Width = 138
            Height = 14
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLblMes_05: TRLLabel
            Left = 527
            Top = 20
            Width = 138
            Height = 14
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLblMes_03: TRLLabel
            Left = 388
            Top = 20
            Width = 138
            Height = 14
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLblMes_01: TRLLabel
            Left = 247
            Top = 20
            Width = 138
            Height = 14
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDraw1: TRLDraw
            Left = 246
            Top = 19
            Width = 1
            Height = 63
          end
          object RLLblMes_12: TRLLabel
            Left = 944
            Top = 34
            Width = 138
            Height = 14
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLblMes_10: TRLLabel
            Left = 805
            Top = 34
            Width = 138
            Height = 14
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLblMes_08: TRLLabel
            Left = 666
            Top = 34
            Width = 138
            Height = 14
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLblMes_06: TRLLabel
            Left = 527
            Top = 34
            Width = 138
            Height = 14
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLblMes_04: TRLLabel
            Left = 388
            Top = 34
            Width = 138
            Height = 14
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLblMes_02: TRLLabel
            Left = 247
            Top = 34
            Width = 138
            Height = 14
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDraw2: TRLDraw
            Left = 386
            Top = 19
            Width = 1
            Height = 63
          end
          object RLDraw3: TRLDraw
            Left = 527
            Top = 19
            Width = 1
            Height = 63
          end
          object RLDraw4: TRLDraw
            Left = 665
            Top = 19
            Width = 1
            Height = 63
          end
          object RLDraw5: TRLDraw
            Left = 804
            Top = 19
            Width = 1
            Height = 63
          end
          object RLDraw6: TRLDraw
            Left = 944
            Top = 19
            Width = 1
            Height = 63
          end
          object RLLblAcumulativo: TRLLabel
            Left = 736
            Top = 2
            Width = 346
            Height = 15
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
          end
        end
        object RlBdResumoDetail: TRLBand
          Left = 0
          Top = 82
          Width = 1085
          Height = 54
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          BeforePrint = RlBdResumoDetailBeforePrint
          object RLDBText5: TRLDBText
            Left = 75
            Top = 3
            Width = 71
            Height = 15
            DataField = 'Dp_Produto'
            DataSource = DsReport
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
          end
          object RLDBText7: TRLDBText
            Left = 1037
            Top = 20
            Width = 45
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'Pr_Mes_11'
            DataSource = DsReport
          end
          object RLDBText8: TRLDBText
            Left = 991
            Top = 20
            Width = 45
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'Vl_Venda_11'
            DataSource = DsReport
          end
          object RLDbTxtDp_Mes_11: TRLDBText
            Left = 945
            Top = 20
            Width = 45
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'Qt_Mes_11'
            DataSource = DsReport
          end
          object RLDBText10: TRLDBText
            Left = 898
            Top = 20
            Width = 45
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'Pr_Mes_09'
            DataSource = DsReport
          end
          object RLDBText11: TRLDBText
            Left = 852
            Top = 20
            Width = 45
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'Vl_Venda_09'
            DataSource = DsReport
          end
          object RLDbTxtDp_Mes_09: TRLDBText
            Left = 805
            Top = 20
            Width = 45
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'Qt_Mes_09'
            DataSource = DsReport
          end
          object RLDBText13: TRLDBText
            Left = 759
            Top = 20
            Width = 45
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'Pr_Mes_07'
            DataSource = DsReport
          end
          object RLDBText14: TRLDBText
            Left = 713
            Top = 20
            Width = 45
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'Vl_Venda_07'
            DataSource = DsReport
          end
          object RLDbTxtDp_Mes_07: TRLDBText
            Left = 666
            Top = 20
            Width = 45
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'Qt_Mes_07'
            DataSource = DsReport
          end
          object RLDBText16: TRLDBText
            Left = 620
            Top = 20
            Width = 45
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'Pr_Mes_05'
            DataSource = DsReport
          end
          object RLDBText17: TRLDBText
            Left = 574
            Top = 20
            Width = 45
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'Vl_Venda_05'
            DataSource = DsReport
          end
          object RLDbTxtDp_Mes_05: TRLDBText
            Left = 527
            Top = 20
            Width = 45
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'Qt_Mes_05'
            DataSource = DsReport
          end
          object RLDBText19: TRLDBText
            Left = 481
            Top = 20
            Width = 45
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'Pr_Mes_03'
            DataSource = DsReport
          end
          object RLDBText20: TRLDBText
            Left = 435
            Top = 20
            Width = 45
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'Vl_Venda_03'
            DataSource = DsReport
          end
          object RLDbTxtDp_Mes_03: TRLDBText
            Left = 388
            Top = 20
            Width = 45
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'Qt_Mes_03'
            DataSource = DsReport
          end
          object RLDBText22: TRLDBText
            Left = 340
            Top = 20
            Width = 45
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'Pr_Mes_01'
            DataSource = DsReport
          end
          object RLDBText23: TRLDBText
            Left = 294
            Top = 20
            Width = 45
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'Vl_Venda_01'
            DataSource = DsReport
          end
          object RLDbTxtDp_Mes_01: TRLDBText
            Left = 247
            Top = 20
            Width = 45
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'Qt_Mes_01'
            DataSource = DsReport
          end
          object RLDBText25: TRLDBText
            Left = 201
            Top = 20
            Width = 45
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'Vl_Venda_00'
            DataSource = DsReport
          end
          object RLDbTxtDp_Mes_00: TRLDBText
            Left = 154
            Top = 20
            Width = 45
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'Qt_Mes_00'
            DataSource = DsReport
          end
          object RLDBText9: TRLDBText
            Left = 1037
            Top = 38
            Width = 45
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'Pr_Mes_12'
            DataSource = DsReport
          end
          object RLDBText12: TRLDBText
            Left = 991
            Top = 38
            Width = 45
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'Vl_Venda_12'
            DataSource = DsReport
          end
          object RLDbTxtDp_Mes_12: TRLDBText
            Left = 945
            Top = 38
            Width = 45
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'Qt_Mes_12'
            DataSource = DsReport
          end
          object RLDBText18: TRLDBText
            Left = 898
            Top = 38
            Width = 45
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'Pr_Mes_10'
            DataSource = DsReport
          end
          object RLDBText21: TRLDBText
            Left = 852
            Top = 38
            Width = 45
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'Vl_Venda_10'
            DataSource = DsReport
          end
          object RLDbTxtDp_Mes_10: TRLDBText
            Left = 805
            Top = 38
            Width = 45
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'Qt_Mes_10'
            DataSource = DsReport
          end
          object RLDBText26: TRLDBText
            Left = 759
            Top = 38
            Width = 45
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'Pr_Mes_08'
            DataSource = DsReport
          end
          object RLDBText27: TRLDBText
            Left = 713
            Top = 38
            Width = 45
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'Vl_Venda_08'
            DataSource = DsReport
          end
          object RLDbTxtDp_Mes_08: TRLDBText
            Left = 666
            Top = 38
            Width = 45
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'Qt_Mes_08'
            DataSource = DsReport
          end
          object RLDBText50: TRLDBText
            Left = 620
            Top = 38
            Width = 45
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'Pr_Mes_06'
            DataSource = DsReport
          end
          object RLDBText30: TRLDBText
            Left = 574
            Top = 38
            Width = 45
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'Vl_Venda_06'
            DataSource = DsReport
          end
          object RLDbTxtDp_Mes_06: TRLDBText
            Left = 527
            Top = 38
            Width = 45
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'Qt_Mes_06'
            DataSource = DsReport
          end
          object RLDBText32: TRLDBText
            Left = 481
            Top = 38
            Width = 45
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'Pr_Mes_04'
            DataSource = DsReport
          end
          object RLDBText33: TRLDBText
            Left = 435
            Top = 38
            Width = 45
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'Vl_Venda_04'
            DataSource = DsReport
          end
          object RLDbTxtDp_Mes_04: TRLDBText
            Left = 388
            Top = 38
            Width = 45
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'Qt_Mes_04'
            DataSource = DsReport
          end
          object RLDBText35: TRLDBText
            Left = 340
            Top = 38
            Width = 45
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'Pr_Mes_02'
            DataSource = DsReport
          end
          object RLDBText36: TRLDBText
            Left = 294
            Top = 38
            Width = 45
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'Vl_Venda_02'
            DataSource = DsReport
          end
          object RLDbTxtDp_Mes_02: TRLDBText
            Left = 247
            Top = 38
            Width = 45
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'Qt_Mes_02'
            DataSource = DsReport
          end
          object RLDraw7: TRLDraw
            Left = 246
            Top = 19
            Width = 1
            Height = 35
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
          end
          object RLDraw8: TRLDraw
            Left = 386
            Top = 19
            Width = 1
            Height = 35
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
          end
          object RLDraw9: TRLDraw
            Left = 527
            Top = 19
            Width = 1
            Height = 35
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
          end
          object RLDraw10: TRLDraw
            Left = 665
            Top = 19
            Width = 1
            Height = 35
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
          end
          object RLDraw11: TRLDraw
            Left = 804
            Top = 19
            Width = 1
            Height = 35
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
          end
          object RLDraw12: TRLDraw
            Left = 944
            Top = 19
            Width = 1
            Height = 35
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
          end
        end
      end
      object RLBand3: TRLBand
        Left = 19
        Top = 321
        Width = 1085
        Height = 19
        BandType = btFooter
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = False
        object RLSystemInfo2: TRLSystemInfo
          Left = 1039
          Top = 1
          Width = 45
          Height = 15
          Alignment = taRightJustify
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Info = itPageNumber
          ParentFont = False
        end
        object RLLabel4: TRLLabel
          Left = 991
          Top = 1
          Width = 45
          Height = 15
          Alignment = taRightJustify
          Caption = 'P'#225'gina:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText1: TRLDBText
          Left = 3
          Top = 0
          Width = 52
          Height = 15
          DataField = 'Dp_Filial'
          DataSource = DmMaster.DsFilial
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
        end
      end
    end
    object EdtCd_Cidade: TCurrencyEdit
      Tag = 8
      Left = 5
      Top = 127
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '###'
      TabOrder = 9
      OnExit = EdtCd_CidadeExit
      OnKeyDown = EdtCd_GrupoKeyDown
    end
    object EdtNm_Cidade: TEdit
      Left = 68
      Top = 127
      Width = 308
      Height = 19
      TabStop = False
      AutoSize = False
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 10
    end
  end
  object ADODsReport: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    OnCalcFields = ADODsReportCalcFields
    CommandText = 'declare'#13#10'  @Cd_Filial SmallInt,'#13#10'  @Dt_Start SmallDateTime,'#13#10'  @Dt_End SmallDateTime'#13#10#13#10'select'#13#10'  @Cd_Filial = :Cd_Filial,'#13#10'  @Dt_Start  = :Dt_Start,'#13#10'  @Dt_End    = :Dt_End'#13#10#13#10'if Object_ID( ''''TempDB..##ProdAnual'''' ) is not null'#13#10'  delete from ##ProdAnual where Nr_SPID = @@SPID'#13#10#13#10'else'#13#10'  create table ##ProdAnual'#13#10'    ('#13#10'    Nr_SPID Int,'#13#10'    Cd_Emitente Int,'#13#10'    Cd_Produto Int,'#13#10'    Qt_Mes_00 numeric( 12, 2 ),'#13#10'    Vl_Mes_00 numeric( 12, 2 ),'#13#10'    Vl_Venda_00 numeric( 12, 2 ),'#13#10'    Qt_Mes_01 numeric( 12, 2 ),'#13#10'    Vl_Mes_01 numeric( 12, 2 ),'#13#10'    Vl_Venda_01 numeric( 12, 2 ),'#13#10'    Qt_Mes_02 numeric( 12, 2 ),'#13#10'    Vl_Mes_02 numeric( 12, 2 ),'#13#10'    Vl_Venda_02 numeric( 12, 2 ),'#13#10'    Qt_Mes_03 numeric( 12, 2 ),'#13#10'    Vl_Mes_03 numeric( 12, 2 ),'#13#10'    Vl_Venda_03 numeric( 12, 2 ),'#13#10'    Qt_Mes_04 numeric( 12, 2 ),'#13#10'    Vl_Mes_04 numeric( 12, 2 ),'#13#10'    Vl_Venda_04 numeric( 12, 2 ),'#13#10'    Qt_Mes_05 numeric( 12, 2 ),'#13#10'    Vl_Mes_05 numeric( 12, 2 ),'#13#10'    Vl_Venda_05 numeric( 12, 2 ),'#13#10'    Qt_Mes_06 numeric( 12, 2 ),'#13#10'    Vl_Mes_06 numeric( 12, 2 ),'#13#10'    Vl_Venda_06 numeric( 12, 2 ),'#13#10'    Qt_Mes_07 numeric( 12, 2 ),'#13#10'    Vl_Mes_07 numeric( 12, 2 ),'#13#10'    Vl_Venda_07 numeric( 12, 2 ),'#13#10'    Qt_Mes_08 numeric( 12, 2 ),'#13#10'    Vl_Mes_08 numeric( 12, 2 ),'#13#10'    Vl_Venda_08 numeric( 12, 2 ),'#13#10'    Qt_Mes_09 numeric( 12, 2 ),'#13#10'    Vl_Mes_09 numeric( 12, 2 ),'#13#10'    Vl_Venda_09 numeric( 12, 2 ),'#13#10'    Qt_Mes_10 numeric( 12, 2 ),'#13#10'    Vl_Mes_10 numeric( 12, 2 ),'#13#10'    Vl_Venda_10 numeric( 12, 2 ),'#13#10'    Qt_Mes_11 numeric( 12, 2 ),'#13#10'    Vl_Mes_11 numeric( 12, 2 ),'#13#10'    Vl_Venda_11 numeric( 12, 2 ),'#13#10'    Qt_Mes_12 numeric( 12, 2 ),'#13#10'    Vl_Mes_12 numeric( 12, 2 ),'#13#10'    Vl_Venda_12 numeric( 12, 2 )'#13#10'    )'#13#10#13#10'select'#13#10'  Qt_Total ='#13#10'     ( PA.Qt_Mes_01 + PA.Qt_Mes_02 + PA.Qt_Mes_03 + PA.Qt_Mes_04 + PA.Qt_Mes_05 + PA.Qt_Mes_06 +'#13#10'       PA.Qt_Mes_07 + PA.Qt_Mes_08 + PA.Qt_Mes_09 + PA.Qt_Mes_10 + PA.Qt_Mes_11 + PA.Qt_Mes_12 ),'#13#10'  Vl_Total ='#13#10'     ( PA.Vl_Mes_01 + PA.Vl_Mes_02 + PA.Vl_Mes_03 + PA.Vl_Mes_04 + PA.Vl_Mes_05 + PA.Vl_Mes_06 +'#13#10'       PA.Vl_Mes_07 + PA.Vl_Mes_08 + PA.Vl_Mes_09 + PA.Vl_Mes_10 + PA.Vl_Mes_11 + PA.Vl_Mes_12 ),'#13#10#13#10'  PA.Cd_Emitente, E.Nm_Emitente, E.Nm_Fantasia, PA.Cd_Produto, P.Nm_Produto,'#13#10'  Dp_Cidade = C.Nm_Cidade + '''' - '''' + C.Sg_Estado, EE.Nm_Bairro,'#13#10'  PA.Qt_Mes_00, PA.Vl_Mes_00, PA.Vl_Venda_00,'#13#10'  PA.Qt_Mes_01, PA.Vl_Mes_01, PA.Vl_Venda_01,'#13#10'  PA.Qt_Mes_02, PA.Vl_Mes_02, PA.Vl_Venda_02,'#13#10'  PA.Qt_Mes_03, PA.Vl_Mes_03, PA.Vl_Venda_03,'#13#10'  PA.Qt_Mes_04, PA.Vl_Mes_04, PA.Vl_Venda_04,'#13#10'  PA.Qt_Mes_05, PA.Vl_Mes_05, PA.Vl_Venda_05,'#13#10'  PA.Qt_Mes_06, PA.Vl_Mes_06, PA.Vl_Venda_06,'#13#10'  PA.Qt_Mes_07, PA.Vl_Mes_07, PA.Vl_Venda_07,'#13#10'  PA.Qt_Mes_08, PA.Vl_Mes_08, PA.Vl_Venda_08,'#13#10'  PA.Qt_Mes_09, PA.Vl_Mes_09, PA.Vl_Venda_09,'#13#10'  PA.Qt_Mes_10, PA.Vl_Mes_10, PA.Vl_Venda_10,'#13#10'  PA.Qt_Mes_11, PA.Vl_Mes_11, PA.Vl_Venda_11,'#13#10'  PA.Qt_Mes_12, PA.Vl_Mes_12, PA.Vl_Venda_12'#13#10#13#10'from'#13#10'  ##ProdAnual PA'#13#10#13#10'inner join'#13#10'  Emitente E'#13#10'on'#13#10'  E.Cd_Emitente = PA.Cd_Emitente'#13#10#13#10'inner join'#13#10'  Emitente_Endereco EE'#13#10'on'#13#10'  EE.Cd_Emitente = E.Cd_Emitente and'#13#10'  EE.Nr_Endereco = E.Nr_Endereco'#13#10#13#10'inner join'#13#10'  Cidade C'#13#10'on'#13#10'  C.Cd_Cidade = EE.Cd_Cidade'#13#10#13#10'inner join'#13#10'  Produto P'#13#10'on'#13#10'  P.Cd_Produto = PA.Cd_Produto'#13#10#13#10'where'#13#10'  PA.Nr_SPID = @@SPID'#13#10#13#10'order by'#13#10'  PA.Cd_Emitente, PA.Cd_Produto'
    Parameters = <
      item
        Name = 'Cd_Filial'
        DataType = ftString
        Size = 1
        Value = '1'
      end
      item
        Name = 'Dt_Start'
        DataType = ftString
        Size = 10
        Value = '01/01/2017'
      end
      item
        Name = 'Dt_End'
        DataType = ftString
        Size = 10
        Value = '01/01/2018'
      end>
    SQLOther0.Strings = (
      'select'
      '  Qt_Total ='
      '     ('
      '     select'
      '       sum( IsNull( SM.Qt_Mes_01, 0 ) + IsNull( SM.Qt_Mes_02, 0 ) + IsNull( SM.Qt_Mes_03, 0 ) +'
      '            IsNull( SM.Qt_Mes_04, 0 ) + IsNull( SM.Qt_Mes_05, 0 ) + IsNull( SM.Qt_Mes_06, 0 ) +'
      '            IsNull( SM.Qt_Mes_07, 0 ) + IsNull( SM.Qt_Mes_08, 0 ) + IsNull( SM.Qt_Mes_09, 0 ) +'
      '            IsNull( SM.Qt_Mes_10, 0 ) + IsNull( SM.Qt_Mes_11, 0 ) + IsNull( SM.Qt_Mes_12, 0 ) )'
      ''
      '     from'
      '       ##ProdAnual SM'
      ''
      '     where'
      '       SM.Nr_SPID     = @@SPID and'
      '       SM.Cd_Emitente = PA.Cd_Emitente'
      '     ),'
      ''
      '  Vl_Total ='
      '     ('
      '     select'
      '       sum( IsNull( SM.Vl_Mes_01, 0 ) + IsNull( SM.Vl_Mes_02, 0 ) + IsNull( SM.Vl_Mes_03, 0 ) +'
      '            IsNull( SM.Vl_Mes_04, 0 ) + IsNull( SM.Vl_Mes_05, 0 ) + IsNull( SM.Vl_Mes_06, 0 ) +'
      '            IsNull( SM.Vl_Mes_07, 0 ) + IsNull( SM.Vl_Mes_08, 0 ) + IsNull( SM.Vl_Mes_09, 0 ) +'
      '            IsNull( SM.Vl_Mes_10, 0 ) + IsNull( SM.Vl_Mes_11, 0 ) + IsNull( SM.Vl_Mes_12, 0 ) )'
      ''
      '     from'
      '       ##ProdAnual SM'
      ''
      '     where'
      '       SM.Nr_SPID     = @@SPID and'
      '       SM.Cd_Emitente = PA.Cd_Emitente'
      '     ),'
      ''
      '  PA.Cd_Emitente, E.Nm_Emitente, E.Nm_Fantasia, PA.Cd_Produto, P.Nm_Produto,'
      '  Dp_Cidade = C.Nm_Cidade + '''' - '''' + C.Sg_Estado, EE.Nm_Bairro,'
      '  PA.Qt_Mes_00, PA.Vl_Mes_00, PA.Vl_Venda_00,'
      '  PA.Qt_Mes_01, PA.Vl_Mes_01, PA.Vl_Venda_01,'
      '  PA.Qt_Mes_02, PA.Vl_Mes_02, PA.Vl_Venda_02,'
      '  PA.Qt_Mes_03, PA.Vl_Mes_03, PA.Vl_Venda_03,'
      '  PA.Qt_Mes_04, PA.Vl_Mes_04, PA.Vl_Venda_04,'
      '  PA.Qt_Mes_05, PA.Vl_Mes_05, PA.Vl_Venda_05,'
      '  PA.Qt_Mes_06, PA.Vl_Mes_06, PA.Vl_Venda_06,'
      '  PA.Qt_Mes_07, PA.Vl_Mes_07, PA.Vl_Venda_07,'
      '  PA.Qt_Mes_08, PA.Vl_Mes_08, PA.Vl_Venda_08,'
      '  PA.Qt_Mes_09, PA.Vl_Mes_09, PA.Vl_Venda_09,'
      '  PA.Qt_Mes_10, PA.Vl_Mes_10, PA.Vl_Venda_10,'
      '  PA.Qt_Mes_11, PA.Vl_Mes_11, PA.Vl_Venda_11,'
      '  PA.Qt_Mes_12, PA.Vl_Mes_12, PA.Vl_Venda_12'
      ''
      'from'
      '  ##ProdAnual PA'
      ''
      'inner join'
      '  Emitente E'
      'on'
      '  E.Cd_Emitente = PA.Cd_Emitente'
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
      '  Produto P'
      'on'
      '  P.Cd_Produto = PA.Cd_Produto'
      ''
      'where'
      '  PA.Nr_SPID = @@SPID'
      ''
      'order by'
      '  /* order */'
      ''
    )
    SQLOther1.Strings = (
      ''
    )
    Left = 324
    Top = 5
    object ADODsReportCd_Emitente: TIntegerField
      FieldName = 'Cd_Emitente'
    end
    object ADODsReportNm_Emitente: TStringField
      FieldName = 'Nm_Emitente'
      Size = 50
    end
    object ADODsReportCd_Produto: TIntegerField
      FieldName = 'Cd_Produto'
    end
    object ADODsReportNm_Produto: TStringField
      FieldName = 'Nm_Produto'
      Size = 120
    end
    object ADODsReportQt_Mes_00: TBCDField
      FieldName = 'Qt_Mes_00'
      DisplayFormat = '#,##0.00'
      Precision = 12
      Size = 2
    end
    object ADODsReportVl_Mes_00: TBCDField
      FieldName = 'Vl_Mes_00'
      DisplayFormat = '#,##0.00'
      Precision = 12
      Size = 2
    end
    object ADODsReportVl_Venda_00: TBCDField
      FieldName = 'Vl_Venda_00'
      DisplayFormat = '#,##0.00'
      Precision = 12
      Size = 2
    end
    object ADODsReportQt_Mes_01: TBCDField
      FieldName = 'Qt_Mes_01'
      DisplayFormat = '#,##0.00'
      Precision = 12
      Size = 2
    end
    object ADODsReportVl_Mes_01: TBCDField
      FieldName = 'Vl_Mes_01'
      DisplayFormat = '#,##0.00'
      Precision = 12
      Size = 2
    end
    object ADODsReportVl_Venda_01: TBCDField
      FieldName = 'Vl_Venda_01'
      DisplayFormat = '#,##0.00'
      Precision = 12
      Size = 2
    end
    object ADODsReportPr_Mes_01: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Pr_Mes_01'
      DisplayFormat = '#,##0.00'
      Calculated = True
    end
    object ADODsReportQt_Mes_02: TBCDField
      FieldName = 'Qt_Mes_02'
      DisplayFormat = '#,##0.00'
      Precision = 12
      Size = 2
    end
    object ADODsReportVl_Mes_02: TBCDField
      FieldName = 'Vl_Mes_02'
      DisplayFormat = '#,##0.00'
      Precision = 12
      Size = 2
    end
    object ADODsReportVl_Venda_02: TBCDField
      FieldName = 'Vl_Venda_02'
      DisplayFormat = '#,##0.00'
      Precision = 12
      Size = 2
    end
    object ADODsReportPr_Mes_02: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Pr_Mes_02'
      DisplayFormat = '#,##0.00'
      Calculated = True
    end
    object ADODsReportQt_Mes_03: TBCDField
      FieldName = 'Qt_Mes_03'
      DisplayFormat = '#,##0.00'
      Precision = 12
      Size = 2
    end
    object ADODsReportVl_Mes_03: TBCDField
      FieldName = 'Vl_Mes_03'
      DisplayFormat = '#,##0.00'
      Precision = 12
      Size = 2
    end
    object ADODsReportVl_Venda_03: TBCDField
      FieldName = 'Vl_Venda_03'
      DisplayFormat = '#,##0.00'
      Precision = 12
      Size = 2
    end
    object ADODsReportPr_Mes_03: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Pr_Mes_03'
      DisplayFormat = '#,##0.00'
      Calculated = True
    end
    object ADODsReportQt_Mes_04: TBCDField
      FieldName = 'Qt_Mes_04'
      DisplayFormat = '#,##0.00'
      Precision = 12
      Size = 2
    end
    object ADODsReportVl_Mes_04: TBCDField
      FieldName = 'Vl_Mes_04'
      DisplayFormat = '#,##0.00'
      Precision = 12
      Size = 2
    end
    object ADODsReportVl_Venda_04: TBCDField
      FieldName = 'Vl_Venda_04'
      DisplayFormat = '#,##0.00'
      Precision = 12
      Size = 2
    end
    object ADODsReportPr_Mes_04: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Pr_Mes_04'
      DisplayFormat = '#,##0.00'
      Calculated = True
    end
    object ADODsReportQt_Mes_05: TBCDField
      FieldName = 'Qt_Mes_05'
      DisplayFormat = '#,##0.00'
      Precision = 12
      Size = 2
    end
    object ADODsReportVl_Mes_05: TBCDField
      FieldName = 'Vl_Mes_05'
      DisplayFormat = '#,##0.00'
      Precision = 12
      Size = 2
    end
    object ADODsReportVl_Venda_05: TBCDField
      FieldName = 'Vl_Venda_05'
      DisplayFormat = '#,##0.00'
      Precision = 12
      Size = 2
    end
    object ADODsReportPr_Mes_05: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Pr_Mes_05'
      DisplayFormat = '#,##0.00'
      Calculated = True
    end
    object ADODsReportQt_Mes_06: TBCDField
      FieldName = 'Qt_Mes_06'
      DisplayFormat = '#,##0.00'
      Precision = 12
      Size = 2
    end
    object ADODsReportVl_Mes_06: TBCDField
      FieldName = 'Vl_Mes_06'
      DisplayFormat = '#,##0.00'
      Precision = 12
      Size = 2
    end
    object ADODsReportVl_Venda_06: TBCDField
      FieldName = 'Vl_Venda_06'
      DisplayFormat = '#,##0.00'
      Precision = 12
      Size = 2
    end
    object ADODsReportPr_Mes_06: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Pr_Mes_06'
      DisplayFormat = '#,##0.00'
      Calculated = True
    end
    object ADODsReportQt_Mes_07: TBCDField
      FieldName = 'Qt_Mes_07'
      DisplayFormat = '#,##0.00'
      Precision = 12
      Size = 2
    end
    object ADODsReportVl_Mes_07: TBCDField
      FieldName = 'Vl_Mes_07'
      DisplayFormat = '#,##0.00'
      Precision = 12
      Size = 2
    end
    object ADODsReportVl_Venda_07: TBCDField
      FieldName = 'Vl_Venda_07'
      DisplayFormat = '#,##0.00'
      Precision = 12
      Size = 2
    end
    object ADODsReportPr_Mes_07: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Pr_Mes_07'
      DisplayFormat = '#,##0.00'
      Calculated = True
    end
    object ADODsReportQt_Mes_08: TBCDField
      FieldName = 'Qt_Mes_08'
      DisplayFormat = '#,##0.00'
      Precision = 12
      Size = 2
    end
    object ADODsReportVl_Mes_08: TBCDField
      FieldName = 'Vl_Mes_08'
      DisplayFormat = '#,##0.00'
      Precision = 12
      Size = 2
    end
    object ADODsReportVl_Venda_08: TBCDField
      FieldName = 'Vl_Venda_08'
      DisplayFormat = '#,##0.00'
      Precision = 12
      Size = 2
    end
    object ADODsReportPr_Mes_08: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Pr_Mes_08'
      DisplayFormat = '#,##0.00'
      Calculated = True
    end
    object ADODsReportQt_Mes_09: TBCDField
      FieldName = 'Qt_Mes_09'
      DisplayFormat = '#,##0.00'
      Precision = 12
      Size = 2
    end
    object ADODsReportVl_Mes_09: TBCDField
      FieldName = 'Vl_Mes_09'
      DisplayFormat = '#,##0.00'
      Precision = 12
      Size = 2
    end
    object ADODsReportVl_Venda_09: TBCDField
      FieldName = 'Vl_Venda_09'
      DisplayFormat = '#,##0.00'
      Precision = 12
      Size = 2
    end
    object ADODsReportPr_Mes_09: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Pr_Mes_09'
      DisplayFormat = '#,##0.00'
      Calculated = True
    end
    object ADODsReportQt_Mes_10: TBCDField
      FieldName = 'Qt_Mes_10'
      DisplayFormat = '#,##0.00'
      Precision = 12
      Size = 2
    end
    object ADODsReportVl_Mes_10: TBCDField
      FieldName = 'Vl_Mes_10'
      DisplayFormat = '#,##0.00'
      Precision = 12
      Size = 2
    end
    object ADODsReportVl_Venda_10: TBCDField
      FieldName = 'Vl_Venda_10'
      DisplayFormat = '#,##0.00'
      Precision = 12
      Size = 2
    end
    object ADODsReportPr_Mes_10: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Pr_Mes_10'
      DisplayFormat = '#,##0.00'
      Calculated = True
    end
    object ADODsReportQt_Mes_11: TBCDField
      FieldName = 'Qt_Mes_11'
      DisplayFormat = '#,##0.00'
      Precision = 12
      Size = 2
    end
    object ADODsReportVl_Mes_11: TBCDField
      FieldName = 'Vl_Mes_11'
      DisplayFormat = '#,##0.00'
      Precision = 12
      Size = 2
    end
    object ADODsReportVl_Venda_11: TBCDField
      FieldName = 'Vl_Venda_11'
      DisplayFormat = '#,##0.00'
      Precision = 12
      Size = 2
    end
    object ADODsReportPr_Mes_11: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Pr_Mes_11'
      DisplayFormat = '#,##0.00'
      Calculated = True
    end
    object ADODsReportQt_Mes_12: TBCDField
      FieldName = 'Qt_Mes_12'
      DisplayFormat = '#,##0.00'
      Precision = 12
      Size = 2
    end
    object ADODsReportVl_Mes_12: TBCDField
      FieldName = 'Vl_Mes_12'
      DisplayFormat = '#,##0.00'
      Precision = 12
      Size = 2
    end
    object ADODsReportVl_Venda_12: TBCDField
      FieldName = 'Vl_Venda_12'
      DisplayFormat = '#,##0.00'
      Precision = 12
      Size = 2
    end
    object ADODsReportPr_Mes_12: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Pr_Mes_12'
      DisplayFormat = '#,##0.00'
      Calculated = True
    end
    object ADODsReportNm_Fantasia: TStringField
      FieldName = 'Nm_Fantasia'
      Size = 30
    end
    object ADODsReportDp_Produto: TStringField
      FieldKind = fkCalculated
      FieldName = 'Dp_Produto'
      Size = 150
      Calculated = True
    end
    object ADODsReportQt_Total: TBCDField
      FieldName = 'Qt_Total'
      ReadOnly = True
      Precision = 23
      Size = 2
    end
    object ADODsReportVl_Total: TBCDField
      FieldName = 'Vl_Total'
      ReadOnly = True
      Precision = 23
      Size = 2
    end
    object ADODsReportDp_Cidade: TStringField
      FieldName = 'Dp_Cidade'
      ReadOnly = True
      Size = 96
    end
    object ADODsReportNm_Bairro: TStringField
      FieldName = 'Nm_Bairro'
      Size = 30
    end
    object ADODsReportDp_EmitReport: TStringField
      FieldKind = fkCalculated
      FieldName = 'Dp_EmitReport'
      Size = 150
      Calculated = True
    end
    object ADODsReportDp_Emitente: TStringField
      FieldKind = fkCalculated
      FieldName = 'Dp_Emitente'
      Size = 100
      Calculated = True
    end
  end
  object DsReport: TDataSource
    DataSet = ADODsReport
    Left = 296
    Top = 5
  end
  object ADOCmdReport: TMultADOCMD
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLOther0.Strings = (
      'declare'
      '  @Cd_Filial SmallInt,'
      '  @Dt_Start SmallDateTime,'
      '  @Dt_End SmallDateTime'
      ''
      'select'
      '  @Cd_Filial = :Cd_Filial,'
      '  @Dt_Start  = :Dt_Start,'
      '  @Dt_End    = :Dt_End'
      ''
      'if Object_ID( ''''TempDB..##ProdAnual'''' ) is not null'
      '  delete from ##ProdAnual where Nr_SPID = @@SPID'
      ''
      'else'
      '  create table ##ProdAnual'
      '    ('
      '    Nr_SPID Int,'
      '    Cd_Emitente Int,'
      '    Cd_Produto Int,'
      '    Qt_Mes_00 numeric( 12, 2 ),'
      '    Vl_Mes_00 numeric( 12, 2 ),'
      '    Vl_Venda_00 numeric( 12, 2 ),'
      '    Qt_Mes_01 numeric( 12, 2 ),'
      '    Vl_Mes_01 numeric( 12, 2 ),'
      '    Vl_Venda_01 numeric( 12, 2 ),'
      '    Qt_Mes_02 numeric( 12, 2 ),'
      '    Vl_Mes_02 numeric( 12, 2 ),'
      '    Vl_Venda_02 numeric( 12, 2 ),'
      '    Qt_Mes_03 numeric( 12, 2 ),'
      '    Vl_Mes_03 numeric( 12, 2 ),'
      '    Vl_Venda_03 numeric( 12, 2 ),'
      '    Qt_Mes_04 numeric( 12, 2 ),'
      '    Vl_Mes_04 numeric( 12, 2 ),'
      '    Vl_Venda_04 numeric( 12, 2 ),'
      '    Qt_Mes_05 numeric( 12, 2 ),'
      '    Vl_Mes_05 numeric( 12, 2 ),'
      '    Vl_Venda_05 numeric( 12, 2 ),'
      '    Qt_Mes_06 numeric( 12, 2 ),'
      '    Vl_Mes_06 numeric( 12, 2 ),'
      '    Vl_Venda_06 numeric( 12, 2 ),'
      '    Qt_Mes_07 numeric( 12, 2 ),'
      '    Vl_Mes_07 numeric( 12, 2 ),'
      '    Vl_Venda_07 numeric( 12, 2 ),'
      '    Qt_Mes_08 numeric( 12, 2 ),'
      '    Vl_Mes_08 numeric( 12, 2 ),'
      '    Vl_Venda_08 numeric( 12, 2 ),'
      '    Qt_Mes_09 numeric( 12, 2 ),'
      '    Vl_Mes_09 numeric( 12, 2 ),'
      '    Vl_Venda_09 numeric( 12, 2 ),'
      '    Qt_Mes_10 numeric( 12, 2 ),'
      '    Vl_Mes_10 numeric( 12, 2 ),'
      '    Vl_Venda_10 numeric( 12, 2 ),'
      '    Qt_Mes_11 numeric( 12, 2 ),'
      '    Vl_Mes_11 numeric( 12, 2 ),'
      '    Vl_Venda_11 numeric( 12, 2 ),'
      '    Qt_Mes_12 numeric( 12, 2 ),'
      '    Vl_Mes_12 numeric( 12, 2 ),'
      '    Vl_Venda_12 numeric( 12, 2 )'
      '    )'
      ''
      '--------------- Monta lista com clientes/produtos'
      'insert into ##ProdAnual( Nr_SPID, Cd_Emitente, Cd_Produto )'
      'select distinct'
      '  @@SPID, O.Cd_Emitente, OI.Cd_Produto'
      ''
      'from'
      '  Orcamento O'
      ''
      'inner join'
      '  Emitente E'
      'on'
      '  E.Cd_Emitente = O.Cd_Emitente'
      '  /* Cd_Grupo */'
      '  /* Cd_SubGrupo */'
      ''
      '/* Cidade */'
      ''
      'inner join'
      '  Orcamento_Item OI'
      'on'
      '  OI.Cd_Filial     = O.Cd_Filial and'
      '  OI.Nr_Orcamento  = O.Nr_Orcamento and'
      '  OI.Fl_Confirmado = ''''1'''
      ''
      'where'
      '  O.Cd_Filial    = @Cd_Filial and'
      '  O.St_Orcamento = ''''9'''' and'
      '  /* Cd_Emitente */'
      '  O.Dt_Fatura   >= @Dt_Start and'
      '  O.Dt_Fatura    < @Dt_End'
    )
    SQLOther1.Strings = (
      'declare'
      '  @Cd_Filial SmallInt,'
      '  @Dt_Start SmallDateTime,'
      '  @Dt_End SmallDateTime'
      ''
      'select'
      '  @Cd_Filial = :Cd_Filial,'
      '  @Dt_Start  = :Dt_Start,'
      '  @Dt_End    = :Dt_End '
      ''
      'if Object_ID( ''''TempDB..##ProdMes'''' ) is not null'
      '  delete from ##ProdMes where Nr_SPID = @@SPID'
      ''
      'else'
      '  create Table ##ProdMes'
      '    ('
      '    Nr_SPID Int,'
      '    Cd_Emitente Int,'
      '    Cd_Produto Int,'
      '    Qt_Vendida numeric( 12, 2 ),'
      '    Vl_Vendido numeric( 12, 2 ),'
      '    Vl_UltimaVenda numeric( 12, 2 )'
      '    )'
      ''
      '--------------- Verifica o valor/quantidade por mes'
      'insert into ##ProdMes( Nr_SPID, Cd_Emitente, Cd_Produto, Qt_Vendida, Vl_Vendido )'
      'select'
      '  @@SPID, O.Cd_Emitente, OI.Cd_Produto,'
      '  sum( OI.Qt_Item ) as Qt_Vendida,'
      '  sum( OI.Vl_Venda ) as Vl_Vendido'
      ''
      'from'
      '  ##ProdAnual PA'
      ''
      'inner join'
      '  Orcamento O'
      'on'
      '  O.Cd_Filial    = @Cd_Filial and'
      '  O.Cd_Emitente  = PA.Cd_Emitente and'
      '  O.St_Orcamento = ''''9'''' and'
      '  O.Dt_Fatura   >= @Dt_Start and'
      '  O.Dt_Fatura    < @Dt_End'
      ''
      'inner join'
      '  Orcamento_Item_Total OI'
      'on'
      '  OI.Cd_Filial     = O.Cd_Filial and'
      '  OI.Nr_Orcamento  = O.Nr_Orcamento and'
      '  OI.Cd_Produto    = PA.Cd_Produto and'
      '  OI.Fl_Confirmado = ''''1'''
      ''
      'where'
      '  PA.Nr_SPID = @@SPID'
      ''
      'group by'
      '  O.Cd_Emitente, OI.Cd_Produto'
      ''
      '--------------- Atualiza o ultimo valor vendido dentro do mes'
      'update'
      '  ##ProdMes'
      ''
      'set'
      '  Vl_UltimaVenda ='
      '    ('
      '    select top 1'
      '      OI.Vl_UnitarioVenda'
      ''
      '    from'
      '      Orcamento O'
      ''
      '    inner join'
      '      Orcamento_Item_Total OI'
      '    on'
      '      OI.Cd_Filial     = O.Cd_Filial and'
      '      OI.Nr_Orcamento  = O.Nr_Orcamento and'
      '      OI.Cd_Produto    = ##ProdMes.Cd_Produto and'
      '      OI.Fl_Confirmado = ''''1'''
      ''
      '    where'
      '      O.Cd_Filial    = @Cd_Filial and'
      '      O.Cd_Emitente  = ##ProdMes.Cd_Emitente and'
      '      O.St_Orcamento = ''''9'''' and'
      '      O.Dt_Fatura   >= @Dt_Start and'
      '      O.Dt_Fatura    < @Dt_End'
      ''
      '    order by'
      '      O.Dt_Fatura desc'
      '    )'
      ''
      'where'
      '  Nr_SPID = @@SPID'
      ''
      '--------------- Atualiza ##ProdAnual'
      'update'
      '  ##ProdAnual'
      ''
      'set'
      '  Qt_Mes_/* Mes */   = PM.Qt_Vendida,'
      '  Vl_Mes_/* Mes */   = PM.Vl_Vendido,'
      '  Vl_Venda_/* Mes */ = PM.Vl_UltimaVenda'
      ''
      'from'
      '  ##ProdAnual PA'
      ''
      'inner join'
      '  ##ProdMes PM'
      'on'
      '  PM.Nr_SPID     = PA.Nr_SPID and'
      '  PM.Cd_Emitente = PA.Cd_Emitente and'
      '  PM.Cd_Produto  = PA.Cd_Produto'
      ''
      'where'
      '  PA.Nr_SPID = @@SPID'
    )
    SQLOther2.Strings = (
      '--------------- Filtra Cidade'
      'inner join'
      '  Emitente_Endereco EE'
      'on'
      '  EE.Cd_Emitente = E.Cd_Emitente and'
      '  EE.Nr_Endereco = E.Nr_Endereco and'
      '  EE.Cd_Cidade   = /* Cd_Cidade */'
      ''
    )
    Left = 360
    Top = 5
  end
end
