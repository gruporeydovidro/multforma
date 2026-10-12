object FrmPagar: TFrmPagar
  Left = 284
  Top = 181
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Contas '#224' Pagar'
  ClientHeight = 576
  ClientWidth = 822
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
    Height = 576
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 801
    Height = 576
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object Label1: TLabel
      Left = 5
      Top = 31
      Width = 31
      Height = 13
      Caption = 'Pagar:'
    end
    object Label3: TLabel
      Left = 60
      Top = 30
      Width = 45
      Height = 13
      Caption = 'Situa'#231#227'o:'
    end
    object Label4: TLabel
      Left = 333
      Top = 31
      Width = 70
      Height = 13
      Caption = 'N'#186' da Entrada:'
    end
    object SbEntrada: TSpeedButton
      Left = 383
      Top = 45
      Width = 23
      Height = 19
      Hint = 'Seleciona Entrada'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbEntradaClick
    end
    object SbGoEntrada: TSpeedButton
      Left = 407
      Top = 45
      Width = 23
      Height = 19
      Hint = 'Seleciona a Entrada no Estoque'
      Flat = True
      Glyph.Data = {binary 582 bytes}
      ParentShowHint = False
      ShowHint = True
      OnClick = SbGoEntradaClick
    end
    object Label10: TLabel
      Left = 5
      Top = 65
      Width = 57
      Height = 13
      Caption = 'Fornecedor:'
    end
    object SbEmitente: TSpeedButton
      Left = 56
      Top = 80
      Width = 23
      Height = 19
      Hint = 'Seleciona o Fornecedor'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbEmitenteClick
    end
    object Label5: TLabel
      Left = 5
      Top = 137
      Width = 90
      Height = 13
      Caption = 'Valor da Duplicata:'
    end
    object Label6: TLabel
      Left = 107
      Top = 137
      Width = 55
      Height = 13
      Caption = 'Valor Pago:'
    end
    object Label8: TLabel
      Left = 200
      Top = 137
      Width = 30
      Height = 13
      Caption = 'Saldo:'
    end
    object Label7: TLabel
      Left = 5
      Top = 101
      Width = 97
      Height = 13
      Caption = 'Grupo de Aplica'#231#227'o:'
    end
    object SbGrupo: TSpeedButton
      Left = 45
      Top = 115
      Width = 23
      Height = 19
      Hint = 'Seleciona Grupo de Aplica'#231#227'o'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbGrupoClick
    end
    object Label9: TLabel
      Left = 344
      Top = 101
      Width = 116
      Height = 13
      Caption = 'SubGrupo de Aplica'#231#227'o:'
    end
    object SbSubGrupo: TSpeedButton
      Left = 384
      Top = 115
      Width = 23
      Height = 19
      Hint = 'Seleciona SubGrupo de Aplica'#231#227'o'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbSubGrupoClick
    end
    object BvlSeparator_1: TBevel
      Left = 3
      Top = 174
      Width = 793
      Height = 5
      Shape = bsTopLine
    end
    object Label11: TLabel
      Left = 5
      Top = 186
      Width = 44
      Height = 13
      Caption = 'Parcelas:'
    end
    object Label15: TLabel
      Left = 5
      Top = 338
      Width = 66
      Height = 13
      Caption = 'Observa'#231#245'es:'
    end
    object BvlSeparator_2: TBevel
      Left = 3
      Top = 438
      Width = 675
      Height = 5
      Shape = bsTopLine
    end
    object Label16: TLabel
      Left = 5
      Top = 443
      Width = 224
      Height = 13
      Caption = 'Hist'#243'rico da Parcela (Lan'#231'amentos na parcela):'
    end
    object Label2: TLabel
      Left = 239
      Top = 31
      Width = 42
      Height = 13
      Caption = 'Emiss'#227'o:'
    end
    object SbGoEmitente: TSpeedButton
      Left = 571
      Top = 80
      Width = 23
      Height = 19
      Hint = 'Cadastro do Fornecedor'
      Flat = True
      Glyph.Data = {binary 582 bytes}
      ParentShowHint = False
      ShowHint = True
      OnClick = SbGoEmitenteClick
    end
    object Label12: TLabel
      Left = 435
      Top = 31
      Width = 48
      Height = 13
      Caption = 'Fatura N'#186':'
    end
    object Label13: TLabel
      Left = 490
      Top = 31
      Width = 48
      Height = 13
      Caption = 'Comiss'#227'o:'
    end
    object PnlToolMain: TPanel
      Left = 1
      Top = 1
      Width = 799
      Height = 26
      Align = alTop
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 22
      object PnlAction_1: TPanel
        Left = 0
        Top = 0
        Width = 799
        Height = 26
        Align = alClient
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 0
        object ActToolBNavigator: TActionToolBar
          Left = 0
          Top = 0
          Width = 799
          Height = 26
          ActionManager = ActManCadastro
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
      Left = 627
      Top = 148
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 17
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 482 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 713
      Top = 148
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 18
      OnClick = BitBtnCancelClick
      Glyph.Data = {binary 482 bytes}
      NumGlyphs = 2
    end
    object EdtNr_Pagar: TCurrencyEdit
      Left = 5
      Top = 45
      Width = 50
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      TabStop = False
      AutoSize = False
      Color = clSilver
      DecimalPlaces = 0
      DisplayFormat = '#,##0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object EdtSt_Pagar: TEdit
      Left = 60
      Top = 45
      Width = 174
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
      TabOrder = 1
    end
    object EdtNr_Entrada: TCurrencyEdit
      Tag = 1
      Left = 333
      Top = 45
      Width = 50
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      TabStop = False
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
      OnExit = EdtNr_EntradaExit
      OnKeyDown = EdtNr_EntradaKeyDown
    end
    object EdtCd_Emitente: TCurrencyEdit
      Tag = 2
      Left = 5
      Top = 80
      Width = 50
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 7
      OnExit = EdtCd_EmitenteExit
      OnKeyDown = EdtNr_EntradaKeyDown
    end
    object EdtNm_Emitente: TEdit
      Left = 80
      Top = 80
      Width = 490
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
    object EdtVl_Duplicata: TRxCalcEdit
      Left = 5
      Top = 151
      Width = 100
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      Ctl3D = False
      DisplayFormat = '#,##0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      NumGlyphs = 2
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 13
    end
    object EdtVl_Pago: TCurrencyEdit
      Left = 107
      Top = 151
      Width = 90
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      TabStop = False
      AutoSize = False
      Color = clSilver
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 14
    end
    object EdtVl_Saldo: TCurrencyEdit
      Left = 200
      Top = 151
      Width = 90
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      TabStop = False
      AutoSize = False
      Color = clSilver
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 15
    end
    object EdtCd_Grupo: TCurrencyEdit
      Tag = 3
      Left = 5
      Top = 115
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 9
      OnExit = EdtCd_GrupoExit
      OnKeyDown = EdtNr_EntradaKeyDown
    end
    object EdtNm_Grupo: TEdit
      Left = 69
      Top = 115
      Width = 270
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
      TabOrder = 10
    end
    object EdtCd_SubGrupo: TCurrencyEdit
      Tag = 4
      Left = 344
      Top = 115
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 11
      OnExit = EdtCd_SubGrupoExit
      OnKeyDown = EdtNr_EntradaKeyDown
    end
    object EdtNm_SubGrupo: TEdit
      Left = 408
      Top = 115
      Width = 270
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
      TabOrder = 12
    end
    object DbGParcela: TDBGrid
      Tag = 1
      Left = 6
      Top = 207
      Width = 788
      Height = 130
      DataSource = DsParcela
      FixedColor = clSilver
      Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 19
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
          Expanded = False
          FieldName = 'Nr_Parcela'
          Width = 40
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
          FieldName = 'Dp_Portador'
          Width = 328
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nr_Documento'
          Title.Alignment = taCenter
          Width = 212
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Vl_Parcela'
          Title.Alignment = taRightJustify
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Vl_Pago'
          Title.Alignment = taRightJustify
          Width = 60
          Visible = True
        end>
    end
    object DbMmObservacoes: TDBMemo
      Left = 5
      Top = 353
      Width = 669
      Height = 79
      TabStop = False
      DataField = 'Mm_Observacao'
      DataSource = DsParcela
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 20
    end
    object DbGHistorico: TDBGrid
      Tag = 2
      Left = 5
      Top = 458
      Width = 788
      Height = 108
      DataSource = DsHistorico
      FixedColor = clSilver
      Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 21
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
          Expanded = False
          FieldName = 'Nr_Lancamento'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Dp_Lancamento'
          Width = 156
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nr_DoctoBaixa'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Dt_Lancamento'
          Title.Alignment = taCenter
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Vl_Lancamento'
          Title.Alignment = taRightJustify
          Width = 65
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Cd_Usuario'
          Title.Alignment = taCenter
          Width = 111
          Visible = True
        end>
    end
    object EdtDt_Emissao: TDateEdit
      Left = 239
      Top = 45
      Width = 89
      Height = 19
      TabStop = False
      CheckOnExit = True
      DialogTitle = 'Selecione a Data'
      GlyphKind = gkCustom
      Glyph.Data = {binary 1850 bytes}
      NumGlyphs = 1
      StartOfWeek = Sun
      TabOrder = 2
    end
    object EdtNr_Fatura: TCurrencyEdit
      Left = 435
      Top = 45
      Width = 50
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      TabStop = False
      AutoSize = False
      Color = clSilver
      DecimalPlaces = 0
      DisplayFormat = '###'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
    end
    object EdtNr_Comissao: TCurrencyEdit
      Left = 490
      Top = 45
      Width = 50
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      TabStop = False
      AutoSize = False
      Color = clSilver
      DecimalPlaces = 0
      DisplayFormat = '###'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 5
    end
    object EdtDs_Pagar: TLabeledEdit
      Left = 295
      Top = 151
      Width = 321
      Height = 19
      AutoSelect = False
      AutoSize = False
      EditLabel.Width = 96
      EditLabel.Height = 13
      EditLabel.Caption = 'Descritivo da Conta:'
      LabelSpacing = 2
      MaxLength = 50
      TabOrder = 16
    end
    object EdtDt_Cancelamento: TLabeledEdit
      Left = 544
      Top = 45
      Width = 95
      Height = 19
      TabStop = False
      Color = clSilver
      EditLabel.Width = 71
      EditLabel.Height = 13
      EditLabel.Caption = 'Cancelamento:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 6
    end
    object PnlToolParcela: TPanel
      Left = 681
      Top = 176
      Width = 115
      Height = 30
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 23
      object ActionToolBar1: TActionToolBar
        Left = 0
        Top = 0
        Width = 115
        Height = 30
        Cursor = crHandPoint
        ActionManager = ActManCadastro
        Align = alClient
        Caption = 'ActToolParcela'
        ColorMap.HighlightColor = clWhite
        ColorMap.BtnSelectedColor = clBtnFace
        ColorMap.UnusedColor = clWhite
        ParentShowHint = False
        ShowHint = True
        Spacing = 0
      end
    end
    object Panel1: TPanel
      Left = 710
      Top = 427
      Width = 81
      Height = 30
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 24
      object ActionToolBar2: TActionToolBar
        Left = 0
        Top = 0
        Width = 81
        Height = 30
        Cursor = crHandPoint
        ActionManager = ActManCadastro
        Align = alClient
        Caption = 'ActToolParcela'
        ColorMap.HighlightColor = clWhite
        ColorMap.BtnSelectedColor = clBtnFace
        ColorMap.UnusedColor = clWhite
        ParentShowHint = False
        ShowHint = True
        Spacing = 0
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
            ShortCut = 16464
          end
          item
            Action = ActNext
            ImageIndex = 13
            ShortCut = 16462
          end
          item
            Action = ActLast
            ImageIndex = 14
          end
          item
            Action = ActEdit
            ImageIndex = 16
          end
          item
            Action = ActFind
            ShortCut = 114
          end
          item
            Action = ActDel
            ImageIndex = 17
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
            ShortCut = 16462
          end
          item
            Action = ActPrior
            ImageIndex = 12
            ShortCut = 16464
          end
          item
            Action = ActDel
            ImageIndex = 17
          end
          item
            Action = ActFind
            ShortCut = 114
          end
          item
            Action = ActEdit
            ImageIndex = 16
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
            ShortCut = 16464
          end
          item
            Action = ActNext
            ImageIndex = 14
            ShortCut = 16462
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
            Action = ActEdit
            ImageIndex = 17
          end
          item
            Action = ActFind
            ImageIndex = 18
            ShortCut = 114
          end
          item
            Action = ActDel
            ImageIndex = 19
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
            ShortCut = 16464
          end
          item
            Action = ActNext
            ImageIndex = 14
            ShortCut = 16462
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
            ShortCut = 16464
          end
          item
            Action = ActNext
            ImageIndex = 14
            ShortCut = 16462
          end
          item
            Action = ActLast
            ImageIndex = 15
          end
          item
            Caption = '-'
          end
          item
            Action = ActFind
            ImageIndex = 17
            ShortCut = 114
          end
          item
            Action = ActEdit
            ImageIndex = 18
          end
          item
            Action = ActDel
            ImageIndex = 19
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
            Action = ActCancel
            ImageIndex = 21
            ShortCut = 118
          end>
      end
      item
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
            ShortCut = 16464
          end
          item
            Action = ActNext
            ImageIndex = 14
            ShortCut = 16462
          end
          item
            Action = ActLast
            ImageIndex = 15
          end
          item
            Caption = '-'
          end
          item
            Action = ActFind
            ImageIndex = 17
            ShortCut = 114
          end
          item
            Action = ActEdit
            ImageIndex = 18
          end
          item
            Action = ActDel
            ImageIndex = 19
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
            Action = ActCancel
            ImageIndex = 21
            ShortCut = 118
          end>
      end
      item
        Items = <
          item
            Caption = '-'
          end
          item
            Items = <
              item
                Action = ActInsPagar
                Caption = '&Duplicata'
                ShortCut = 113
              end
              item
                Action = ActInsParcela
                Caption = '&Parcela'
              end
              item
                Action = ActInsLancto
                Caption = '&Lan'#231'amento'
              end>
            Caption = ' '
            ImageIndex = 16
            ShortCut = 113
          end
          item
            Action = ActFind
            ImageIndex = 17
            ShortCut = 114
          end
          item
            Items = <
              item
                Action = ActEditPagar
                Caption = '&Duplicata'
                ShortCut = 115
              end
              item
                Action = ActEditParcela
                Caption = 'P&arcela'
              end
              item
                Action = ActEditLancto
                Caption = '&Lan'#231'amento'
              end>
            Caption = ' '
            ImageIndex = 18
            ShortCut = 115
          end
          item
            Items = <
              item
                Action = ActDelDuplicata
                Caption = '&Duplicata'
                ShortCut = 116
              end
              item
                Action = ActDelParcela
                Caption = '&Parcela'
              end
              item
                Action = ActDelLancto
              end>
            Caption = ' '
            ImageIndex = 19
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
            Action = ActCancel
            ImageIndex = 21
            ShortCut = 118
          end>
      end
      item
        Items = <
          item
            Action = ActLast
            ImageIndex = 15
          end
          item
            Action = ActNext
            ImageIndex = 14
            ShortCut = 16462
          end
          item
            Action = ActPrior
            ImageIndex = 13
            ShortCut = 16464
          end
          item
            Action = ActFirst
            ImageIndex = 12
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
            ShortCut = 16464
          end
          item
            Action = ActNext
            ImageIndex = 14
            ShortCut = 16462
          end
          item
            Action = ActLast
            ImageIndex = 15
          end
          item
            Caption = '-'
          end
          item
            Items = <
              item
                Action = ActInsPagar
                Caption = '&Duplicata'
                ImageIndex = 16
                ShortCut = 113
              end
              item
                Action = ActInsParcela
                Caption = '&Parcela'
                ImageIndex = 16
              end
              item
                Action = ActInsLancto
                Caption = '&Lan'#231'amento'
                ImageIndex = 16
              end>
            Action = ActInsPagar
            Caption = '&Duplicata'
            ImageIndex = 16
            ShowCaption = False
            ShortCut = 113
          end
          item
            Action = ActFind
            ImageIndex = 17
            ShortCut = 114
          end
          item
            Items = <
              item
                Action = ActEditPagar
                Caption = '&Duplicata'
                ImageIndex = 18
                ShortCut = 115
              end
              item
                Action = ActEditParcela
                Caption = '&Parcela'
                ImageIndex = 18
              end
              item
                Action = ActEditLancto
                Caption = '&Lan'#231'amento'
                ImageIndex = 18
              end>
            Action = ActEditPagar
            Caption = 'D&uplicata'
            ImageIndex = 18
            ShowCaption = False
            ShortCut = 115
          end
          item
            Items = <
              item
                Action = ActDelDuplicata
                Caption = '&Duplicata'
                ShortCut = 116
              end
              item
                Action = ActDelParcela
                Caption = '&Parcela'
              end
              item
                Action = ActDelLancto
                Caption = '&Lan'#231'amento'
              end>
            Action = ActDelDuplicata
            Caption = 'Du&plicata'
            ImageIndex = 19
            ShowCaption = False
            ShortCut = 116
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
            Action = ActCancel
            ImageIndex = 21
            ShortCut = 118
          end
          item
            Action = ActRedo
            ImageIndex = 38
            ShortCut = 119
          end>
        ActionBar = ActToolBNavigator
      end
      item
        Items = <
          item
            Caption = '-'
          end
          item
            Items = <
              item
                Action = ActInsPagar
                Caption = '&Duplicata'
                ShortCut = 113
              end
              item
                Action = ActInsParcela
                Caption = '&Parcela'
              end
              item
                Action = ActInsLancto
                Caption = '&Lan'#231'amento'
              end>
            Caption = ' '
            ImageIndex = 16
          end
          item
            Items = <
              item
                Action = ActEditPagar
                Caption = '&Duplicata'
                ShortCut = 115
              end
              item
                Action = ActEditParcela
                Caption = '&Parcela'
              end
              item
                Action = ActEditLancto
                Caption = '&Lan'#231'amento'
              end>
            Caption = ' '
            ImageIndex = 18
          end
          item
            Caption = '-'
          end>
      end
      item
        Items = <
          item
            Action = ActParIns
            ImageIndex = 16
          end
          item
            Action = ActParEdit
            ImageIndex = 18
          end
          item
            Action = ActParDel
            ImageIndex = 19
          end
          item
            Caption = '-'
          end
          item
            Action = ActParUpd
            ImageIndex = 29
          end>
        ActionBar = ActionToolBar1
      end
      item
        Items = <
          item
            Action = ActLanctoIns
            ImageIndex = 16
          end
          item
            Action = ActLanctoEdit
            ImageIndex = 18
          end
          item
            Action = ActLanctoDel
            ImageIndex = 19
          end>
        ActionBar = ActionToolBar2
      end>
    Images = FrmMain.ImgLstMenu
    Left = 680
    Top = 35
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
      ShortCut = 16464
      OnExecute = ActPriorExecute
    end
    object ActNext: TAction
      Category = '1-Navigator'
      Hint = 'Pr'#243'ximo Registro'
      ImageIndex = 14
      ShortCut = 16462
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
      ImageIndex = 16
    end
    object ActFind: TAction
      Category = '2-Database'
      Hint = 'Consultar'
      ImageIndex = 17
      ShortCut = 114
      OnExecute = ActFindExecute
    end
    object ActEdit: TAction
      Category = '2-Database'
      Hint = 'Alterar o Registro Corrente'
      ImageIndex = 18
    end
    object ActDel: TAction
      Category = '2-Database'
      Hint = 'Excluir este Registro'
      ImageIndex = 19
      SecondaryShortCuts.Strings = (
        'Linha 1'
        'Linha 2'
        'Linha 3'
      )
      OnExecute = ActDelDuplicataExecute
    end
    object ActReport: TAction
      Category = '2-Database'
      Hint = 'Relat'#243'rio'
      ImageIndex = 20
      ShortCut = 117
      OnExecute = ActReportExecute
    end
    object ActCancel: TAction
      Category = '2-Database'
      Hint = 'Cancelar da Entrada'
      ImageIndex = 21
      ShortCut = 118
      OnExecute = ActCancelExecute
    end
    object ActInsPagar: TAction
      Category = '3-Insert'
      Caption = 'Duplicata'
      Hint = 'Incluir Duplicata/Parcela/Lan'#231'amento'
      ImageIndex = 16
      ShortCut = 113
      OnExecute = ActInsPagarExecute
    end
    object ActInsParcela: TAction
      Category = '3-Insert'
      Caption = 'Parcela'
      Hint = 'Incluir Parcela'
      ImageIndex = 16
      OnExecute = ActInsParcelaExecute
    end
    object ActInsLancto: TAction
      Category = '3-Insert'
      Caption = 'Lan'#231'amento'
      ImageIndex = 16
      OnExecute = ActInsLanctoExecute
    end
    object ActEditPagar: TAction
      Category = '4-Edit'
      Caption = 'Duplicata'
      Hint = 'Alterar Duplicata/Parcela/Lan'#231'amento'
      ImageIndex = 18
      ShortCut = 115
      OnExecute = ActEditPagarExecute
    end
    object ActEditParcela: TAction
      Tag = 1
      Category = '4-Edit'
      Caption = 'Parcela'
      ImageIndex = 18
      OnExecute = ActInsParcelaExecute
    end
    object ActEditLancto: TAction
      Tag = 2
      Category = '4-Edit'
      Caption = 'Lan'#231'amento'
      ImageIndex = 18
      OnExecute = ActInsLanctoExecute
    end
    object ActDelDuplicata: TAction
      Category = '5-Delete'
      Caption = 'Duplicata'
      Hint = 'Excluir Duplicata/Parcela/Lan'#231'amento'
      ImageIndex = 19
      ShortCut = 116
      OnExecute = ActDelDuplicataExecute
    end
    object ActDelParcela: TAction
      Category = '5-Delete'
      Caption = 'Parcela'
      ImageIndex = 19
      OnExecute = ActDelParcelaExecute
    end
    object ActDelLancto: TAction
      Category = '5-Delete'
      Caption = 'Lan'#231'amento'
      ImageIndex = 19
      OnExecute = ActDelLanctoExecute
    end
    object ActRedo: TAction
      Category = '2-Database'
      ImageIndex = 38
      ShortCut = 119
      OnExecute = ActRedoExecute
    end
    object ActParIns: TAction
      Category = '6-Parcela'
      Hint = 'INserir Parcela'
      ImageIndex = 16
      OnExecute = ActInsParcelaExecute
    end
    object ActParEdit: TAction
      Tag = 1
      Category = '6-Parcela'
      Hint = 'Alterar a Parcela'
      ImageIndex = 18
      OnExecute = ActInsParcelaExecute
    end
    object ActParDel: TAction
      Category = '6-Parcela'
      Hint = 'Excluir a parcela'
      ImageIndex = 19
      OnExecute = ActDelParcelaExecute
    end
    object ActParUpd: TAction
      Category = '6-Parcela'
      Hint = 'Atualizar vencimento'
      ImageIndex = 29
      OnExecute = ActParUpdExecute
    end
    object ActLanctoIns: TAction
      Category = '7-Lancamento'
      Hint = 'Incluir Lan'#231'amento'
      ImageIndex = 16
      OnExecute = ActInsLanctoExecute
    end
    object ActLanctoEdit: TAction
      Tag = 2
      Category = '7-Lancamento'
      Hint = 'Alterar lan'#231'amento'
      ImageIndex = 18
      OnExecute = ActInsLanctoExecute
    end
    object ActLanctoDel: TAction
      Category = '7-Lancamento'
      Hint = 'Excluir lan'#231'amento'
      ImageIndex = 19
      OnExecute = ActDelLanctoExecute
    end
  end
  object ADODsDados: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    OnCalcFields = ADODsDadosCalcFields
    CommandText = 'select'#13#10'  P.Nr_Pagar, P.Dt_Emissao, P.St_Pagar, P.Cd_Emitente, '#13#10'  E.Nm_Emitente, E.Nm_Fantasia,'#13#10'  P.Vl_Duplicata, P.Vl_Pago, P.Nr_Entrada, P.Cd_Grupo,'#13#10'  AG.Nm_Grupo, P.Cd_SubGrupo, ASG.Nm_SubGrupo, EN.Nr_Fatura,'#13#10'  P.Nr_Comissao, P.Ds_Pagar, P.Dt_Cancelamento'#13#10#13#10'from'#13#10'  Pagar P'#13#10#13#10'inner join'#13#10'  Emitente E'#13#10'on'#13#10'  E.Cd_Emitente = P.Cd_Emitente'#13#10#13#10'inner join'#13#10'  Aplicacao_Grupo AG'#13#10'on'#13#10'  AG.Cd_Grupo = P.Cd_Grupo'#13#10#13#10'inner join'#13#10'  Aplicacao_SubGrupo ASG'#13#10'on'#13#10'  ASG.Cd_SubGrupo = P.Cd_SubGrupo'#13#10#13#10'left join'#13#10'  Entrada EN'#13#10'on'#13#10'  EN.Cd_Filial = P.Cd_Filial and'#13#10'  EN.Nr_Entrada = P.Nr_Entrada'#13#10#13#10'where'#13#10'  P.Cd_Filial = :Cd_Filial and'#13#10'  P.Nr_Pagar  = :Nr_Pagar'
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
        Name = 'Nr_Pagar'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = nil?
      end>
    Left = 37
    Top = 497
    object ADODsDadosnr_pagar: TIntegerField
      FieldName = 'nr_pagar'
    end
    object ADODsDadosdt_emissao: TDateTimeField
      FieldName = 'dt_emissao'
    end
    object ADODsDadosst_pagar: TStringField
      FieldName = 'st_pagar'
      FixedChar = True
      Size = 1
    end
    object ADODsDadoscd_emitente: TIntegerField
      FieldName = 'cd_emitente'
    end
    object ADODsDadosvl_duplicata: TBCDField
      FieldName = 'vl_duplicata'
      Precision = 12
      Size = 2
    end
    object ADODsDadosvl_pago: TBCDField
      FieldName = 'vl_pago'
      Precision = 12
      Size = 2
    end
    object ADODsDadosnr_entrada: TIntegerField
      FieldName = 'nr_entrada'
    end
    object ADODsDadoscd_grupo: TSmallintField
      FieldName = 'cd_grupo'
    end
    object ADODsDadosnm_grupo: TStringField
      FieldName = 'nm_grupo'
      Size = 50
    end
    object ADODsDadoscd_subgrupo: TSmallintField
      FieldName = 'cd_subgrupo'
    end
    object ADODsDadosnm_subgrupo: TStringField
      FieldName = 'nm_subgrupo'
      Size = 50
    end
    object ADODsDadosNr_Fatura: TIntegerField
      FieldName = 'Nr_Fatura'
    end
    object ADODsDadosNr_Comissao: TSmallintField
      FieldName = 'Nr_Comissao'
    end
    object ADODsDadosDs_Pagar: TStringField
      FieldName = 'Ds_Pagar'
      Size = 50
    end
    object ADODsDadosDp_Emitente: TStringField
      FieldKind = fkCalculated
      FieldName = 'Dp_Emitente'
      ReadOnly = True
      Size = 83
      Calculated = True
    end
    object ADODsDadosNm_Emitente: TStringField
      FieldName = 'Nm_Emitente'
      Size = 50
    end
    object ADODsDadosNm_Fantasia: TStringField
      FieldName = 'Nm_Fantasia'
      Size = 30
    end
    object ADODsDadosDt_Cancelamento: TDateTimeField
      FieldName = 'Dt_Cancelamento'
    end
  end
  object ADOCmdDados: TMultADOCMD
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLInsert.Strings = (
      'insert into Pagar( Cd_Filial, Nr_Pagar, Dt_Emissao, St_Pagar, Cd_Emitente,'
      '   Cd_Grupo, Cd_SubGrupo, Vl_Duplicata, Vl_Pago, Nr_Entrada,'
      '   Ds_Pagar )'
      ''
      'values( :Cd_Filial, :Nr_Pagar, :Dt_Emissao, ''''1'''', :Cd_Emitente, :Cd_Grupo,'
      '   :Cd_SubGrupo, :Vl_Duplicata, 0, :Nr_Entrada, :Ds_Pagar )'
    )
    SQLUpdate.Strings = (
      'update'
      '  Pagar'
      ''
      'set'
      '  Cd_Emitente  = :Cd_Emitente,'
      '  Dt_Emissao   = :Dt_Emissao,'
      '  Vl_Duplicata = :Vl_Duplicata,'
      '  Cd_Grupo     = :Cd_Grupo,'
      '  Cd_SubGrupo  = :Cd_SubGrupo,'
      '  Nr_Entrada   = :Nr_Entrada,'
      '  Ds_Pagar     = :Ds_Pagar'
      ''
      'where'
      '  Cd_Filial    = :Cd_Filial and'
      '  Nr_Pagar     = :Nr_Pagar'
    )
    SQLDelete.Strings = (
      'delete from'
      '  Pagar'
      ''
      'where'
      '  Cd_Filial = :Cd_Filial and'
      '  Nr_Pagar  = :Nr_Pagar'
    )
    SQLOther0.Strings = (
      'update'
      '  Entrada'
      ''
      'set'
      '  St_Entrada = :St_Entrada'
      ''
      'where'
      '  Cd_Filial  = :Cd_Filial and'
      '  Nr_Entrada = :Nr_Entrada'
    )
    SQLOther1.Strings = (
      'declare @vCd_Filial  SmallInt'
      'declare @vNr_Pagar   Integer'
      'declare @vNr_Parcela Integer'
      ''
      'set @vCd_Filial  = :Cd_Filial'
      'set @vNr_Pagar   = :Nr_Pagar'
      'set @vNr_Parcela = :Nr_Parcela'
      ''
      'delete from'
      '  Pagar_Historico'
      ''
      'where'
      '  Cd_Filial  = @vCd_Filial and'
      '  Nr_Pagar   = @vNr_Pagar and'
      '  Nr_Parcela = @vNr_Parcela;'
      ''
      'delete from'
      '  Pagar_Parcela'
      ''
      'where'
      '  Cd_Filial  = @vCd_Filial and'
      '  Nr_Pagar   = @vNr_Pagar and'
      '  Nr_Parcela = @vNr_Parcela;'
    )
    SQLOther2.Strings = (
      'delete from'
      '  Caixa'
      ''
      'where'
      '  Cd_Filial       = :Cd_Filial and'
      '  Nr_Pagar        = :Nr_Pagar and'
      '  Nr_Pagar_Par    = :Nr_Parcela and'
      '  Nr_Pagar_Lancto = :Nr_Lancamento;'
      ''
      'delete from'
      '  Pagar_Historico'
      ''
      'where'
      '  Cd_Filial     = :Cd_Filial and'
      '  Nr_Pagar      = :Nr_Pagar and'
      '  Nr_Parcela    = :Nr_Parcela and'
      '  Nr_Lancamento = :Nr_Lancamento;'
    )
    SQLOther3.Strings = (
      'declare @vCd_Filial  SmallInt'
      'declare @vNr_Pagar   Integer'
      'declare @vSt_New     Char( 1 )'
      'declare @vSt_Old     Char( 1 )'
      'declare @vFl_Caixa   Char( 1 )'
      ''
      'set @vCd_Filial  = :Cd_Filial'
      'set @vNr_Pagar   = :Nr_Pagar'
      'set @vSt_New     = :St_Pagar'
      'set @vSt_Old     = :St_Antiga'
      'set @vFl_Caixa   = :Fl_Caixa'
      ''
      '-- Atualiza a situa'#231#227'o do Pagar'
      'update'
      '  Pagar'
      ''
      'set'
      '  St_Pagar        = @vSt_New,'
      '  Dt_Cancelamento ='
      '    case'
      '      when @vSt_New = ''''4'''' then :Dt_Cancelamento'
      '      else Dt_Cancelamento'
      '      '
      '    end'
      ''
      'where'
      '  Cd_Filial = @vCd_Filial and'
      '  Nr_Pagar  = @vNr_Pagar;'
      ''
      '-- Verifica se vai apagar os lan'#231'amentos existentes no caixa'
      'if ( @vFl_Caixa = ''''1'''' ) and'
      ' ( ( @vSt_Old = ''''2'''' ) or                        -- Amortizado'
      '   ( @vSt_Old = ''''3'''' ) )                         -- Pago'
      '  delete from'
      '    Caixa'
      ''
      '  where'
      '    Cd_Filial  = @vCd_Filial and'
      '    Nr_Pagar   = @vNr_Pagar '
      ''
    )
    SQLOther4.Strings = (
      '--------------- Retornar para aberto'
      'declare @vCd_Filial SmallInt'
      'declare @vNr_Pagar Integer'
      ''
      'set @vCd_Filial = :Cd_Filial'
      'set @vNr_Pagar  = :Nr_Pagar'
      ''
      'update'
      '  Pagar'
      ''
      'set'
      '  St_Pagar        = ''''1'''','
      '  Dt_Cancelamento = null'
      ''
      'where'
      '  Cd_Filial  = @vCd_Filial and'
      '  Nr_Pagar = @vNr_Pagar'
      ''
      'update'
      '  Pagar_Historico'
      ''
      'set'
      '  Nr_Lancamento = Nr_Lancamento'
      ''
      'where'
      '  Cd_Filial = @vCd_Filial and'
      '  Nr_Pagar  = @vNr_Pagar'
      ''
      ''
    )
    Left = 67
    Top = 497
  end
  object ADODsNavegar: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = '-- First'#13#10'select top 1'#13#10'  Nr_Pagar'#13#10#13#10'from'#13#10'  Pagar'#13#10#13#10'where'#13#10'  Cd_Filial = :Cd_Filial'#13#10#13#10'order by'#13#10'  Nr_Pagar'
    Parameters = <
      item
        Name = 'Cd_Filial'
        DataType = ftSmallint
        Size = -1
        Value = nil?
      end>
    SQLPrimary.Strings = (
      'select'
      '  max( A.Nr_Pagar ) + 1 as Nr_Pagar'
      ''
      'from'
      '  Pagar A'
      ''
      'where'
      '  Cd_Filial = :Cd_Filial'
    )
    SQLOther0.Strings = (
      '-- First'
      'select top 1'
      '  Nr_Pagar'
      ''
      'from'
      '  Pagar'
      ''
      'where'
      '  Cd_Filial = :Cd_Filial'
      ''
      'order by'
      '  Nr_Pagar'
    )
    SQLOther1.Strings = (
      '-- Prior'
      'select top 1'
      '  Nr_Pagar'
      ''
      'from'
      '  Pagar'
      ''
      'where'
      '  Cd_Filial  = :Cd_Filial and'
      '  Nr_Pagar < :Nr_Pagar'
      ''
      'order by'
      '  Nr_Pagar desc'
    )
    SQLOther2.Strings = (
      '-- Next'
      'select top 1'
      '  Nr_Pagar'
      ''
      'from'
      '  Pagar'
      ''
      'where'
      '  Cd_Filial  = :Cd_Filial and'
      '  Nr_Pagar > :Nr_Pagar'
      ''
      'order by'
      '  Nr_Pagar'
    )
    SQLOther3.Strings = (
      '-- Last'
      'select top 1'
      '  Nr_Pagar'
      ''
      'from'
      '  Pagar'
      ''
      'where'
      '  Cd_Filial = :Cd_Filial'
      ''
      'order by'
      '  Nr_Pagar desc'
    )
    Left = 97
    Top = 497
    object ADODsNavegarnr_pagar: TIntegerField
      FieldName = 'nr_pagar'
    end
  end
  object ADODsParcela: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    OnCalcFields = ADODsParcelaCalcFields
    CommandText = 'select'#13#10'  A.Cd_Filial, A.Nr_Pagar, A.Nr_Parcela, A.Dt_Vencimento, A.Vl_Parcela, A.Vl_Pago,'#13#10'  A.Cd_Portador, B.Nm_Portador, A.Nr_Documento, A.Mm_Observacao'#13#10#13#10'from'#13#10'  Pagar_Parcela A'#13#10#13#10'inner join'#13#10'  Portador B'#13#10'on'#13#10'  B.Cd_Portador = A.Cd_Portador'#13#10#13#10'where'#13#10'  A.Cd_Filial = :Cd_Filial and'#13#10'  A.Nr_Pagar = :Nr_Pagar'#13#10#13#10'order by'#13#10'  A.Cd_Filial, A.Nr_Parcela'
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
        Name = 'Nr_Pagar'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 2
      end>
    Left = 250
    Top = 497
    object ADODsParcelacd_filial: TSmallintField
      FieldName = 'cd_filial'
    end
    object ADODsParcelaNr_Pagar: TIntegerField
      FieldName = 'Nr_Pagar'
    end
    object ADODsParcelaNr_Parcela: TSmallintField
      DisplayLabel = 'Parcela'
      FieldName = 'Nr_Parcela'
    end
    object ADODsParcelaDt_Vencimento: TDateTimeField
      DisplayLabel = 'Vencimento'
      FieldName = 'Dt_Vencimento'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object ADODsParcelaVl_Parcela: TBCDField
      DisplayLabel = 'Parcela'
      FieldName = 'Vl_Parcela'
      DisplayFormat = '#,##0.00'
      Precision = 10
    end
    object ADODsParcelaVl_Pago: TBCDField
      DisplayLabel = 'Pago'
      FieldName = 'Vl_Pago'
      DisplayFormat = '#,##0.00'
      Precision = 10
    end
    object ADODsParcelaCd_Portador: TSmallintField
      FieldName = 'Cd_Portador'
    end
    object ADODsParcelaNm_Portador: TStringField
      FieldName = 'Nm_Portador'
      Size = 50
    end
    object ADODsParcelaNr_Documento: TStringField
      DisplayLabel = 'Documento'
      FieldName = 'Nr_Documento'
      Size = 15
    end
    object ADODsParcelaDp_Portador: TStringField
      DisplayLabel = 'Portador'
      FieldKind = fkCalculated
      FieldName = 'Dp_Portador'
      ReadOnly = True
      Size = 58
      Calculated = True
    end
    object ADODsParcelaMm_Observacao: TMemoField
      FieldName = 'Mm_Observacao'
      BlobType = ftMemo
    end
  end
  object DsParcela: TDataSource
    DataSet = ADODsParcela
    Left = 220
    Top = 497
  end
  object ADODsHistorico: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    OnCalcFields = ADODsHistoricoCalcFields
    CommandText = 'select'#13#10'  A.Cd_Filial, A.Nr_Pagar, A.Nr_Parcela, A.Nr_Lancamento, A.Tp_Lancamento,'#13#10'  A.Dt_Lancamento, A.Vl_Lancamento, A.Nr_DoctoBaixa, A.Cd_Usuario'#13#10#13#10'from'#13#10'  Pagar_Historico A'#13#10#13#10'where'#13#10'  A.Cd_Filial   = :Cd_Filial and'#13#10'  A.Nr_Pagar   = :Nr_Pagar and'#13#10'  A.Nr_Parcela = :Nr_Parcela'#13#10#13#10'order by'#13#10'  A.Cd_Filial, A.Nr_Pagar, A.Nr_Parcela, A.Nr_Lancamento'
    DataSource = DsParcela
    MasterFields = 'Cd_Filial;Nr_Pagar;Nr_Parcela'
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
        Name = 'Nr_Pagar'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = nil?
      end
      item
        Name = 'Nr_Parcela'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = nil?
      end>
    Left = 314
    Top = 497
    object ADODsHistoricocd_filial: TSmallintField
      FieldName = 'cd_filial'
    end
    object ADODsHistoricoNr_Pagar: TIntegerField
      FieldName = 'Nr_Pagar'
    end
    object ADODsHistoricoNr_Parcela: TSmallintField
      FieldName = 'Nr_Parcela'
    end
    object ADODsHistoricoNr_Lancamento: TSmallintField
      DisplayLabel = 'Lan'#231'amento'
      FieldName = 'Nr_Lancamento'
      DisplayFormat = '#,##0'
    end
    object ADODsHistoricoTp_Lancamento: TStringField
      FieldName = 'Tp_Lancamento'
      FixedChar = True
      Size = 1
    end
    object ADODsHistoricoDt_Lancamento: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'Dt_Lancamento'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object ADODsHistoricoVl_Lancamento: TBCDField
      DisplayLabel = 'Valor'
      FieldName = 'Vl_Lancamento'
      DisplayFormat = '#,##0.00'
      Precision = 10
    end
    object ADODsHistoricoDp_Lancamento: TStringField
      DisplayLabel = 'Tipo de Lan'#231'amento'
      FieldKind = fkCalculated
      FieldName = 'Dp_Lancamento'
      ReadOnly = True
      Calculated = True
    end
    object ADODsHistoricoNr_DoctoBaixa: TStringField
      DisplayLabel = 'Documento de Baixa'
      FieldName = 'Nr_DoctoBaixa'
      Size = 50
    end
    object ADODsHistoricoCd_Usuario: TStringField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'Cd_Usuario'
      Size = 15
    end
  end
  object DsHistorico: TDataSource
    DataSet = ADODsHistorico
    Left = 284
    Top = 497
  end
  object ADODsEntrada: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  Cd_Emitente, Vl_Nota'#13#10#13#10'from'#13#10'  Entrada'#13#10#13#10'where'#13#10'  Cd_Filial = :Cd_Filial and'#13#10'  Nr_Entrada = :Nr_Entrada'
    Parameters = <
      item
        Name = 'Cd_Filial'
        DataType = ftSmallint
        Size = -1
        Value = 0
      end
      item
        Name = 'Nr_Entrada'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end>
    Left = 345
    Top = 498
    object ADODsEntradacd_emitente: TIntegerField
      FieldName = 'cd_emitente'
    end
    object ADODsEntradavl_nota: TBCDField
      FieldName = 'vl_nota'
      Precision = 12
      Size = 2
    end
  end
  object ADODsAplicacaoOld: TADODataSet
    Connection = FrmMain.ADOConMaster
    CommandText = 'select top 1'#13#10'  Cd_Grupo, Cd_SubGrupo'#13#10#13#10'from'#13#10'  Pagar'#13#10#13#10'where'#13#10'  Cd_Filial = :Cd_Filial and'#13#10'  Cd_Emitente = :Cd_Emitente'#13#10#13#10'order by'#13#10'  Cd_Filial, Cd_Emitente, Nr_Pagar desc'
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
        Name = 'Cd_Emitente'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = nil?
      end>
    Left = 127
    Top = 498
    object ADODsAplicacaoOldCd_Grupo: TSmallintField
      FieldName = 'Cd_Grupo'
    end
    object ADODsAplicacaoOldCd_SubGrupo: TSmallintField
      FieldName = 'Cd_SubGrupo'
    end
  end
end
