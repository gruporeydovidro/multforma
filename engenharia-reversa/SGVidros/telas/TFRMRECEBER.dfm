object FrmReceber: TFrmReceber
  Left = 315
  Top = 142
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Contas '#224' Receber'
  ClientHeight = 573
  ClientWidth = 915
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
    Height = 573
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 894
    Height = 573
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object Label1: TLabel
      Left = 5
      Top = 31
      Width = 44
      Height = 13
      Caption = 'Receber:'
    end
    object Label3: TLabel
      Left = 60
      Top = 30
      Width = 45
      Height = 13
      Caption = 'Situa'#231#227'o:'
    end
    object Label10: TLabel
      Left = 5
      Top = 65
      Width = 35
      Height = 13
      Caption = 'Cliente:'
    end
    object SbEmitente: TSpeedButton
      Left = 56
      Top = 80
      Width = 23
      Height = 19
      Hint = 'Seleciona o Cliente'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbEmitenteClick
    end
    object Label5: TLabel
      Left = 5
      Top = 102
      Width = 90
      Height = 13
      Caption = 'Valor da Duplicata:'
    end
    object Label6: TLabel
      Left = 108
      Top = 102
      Width = 55
      Height = 13
      Caption = 'Valor Pago:'
    end
    object Label8: TLabel
      Left = 202
      Top = 102
      Width = 30
      Height = 13
      Caption = 'Saldo:'
    end
    object BvlSeparator_1: TBevel
      Left = 1
      Top = 139
      Width = 886
      Height = 5
      Shape = bsTopLine
    end
    object Label11: TLabel
      Left = 5
      Top = 160
      Width = 44
      Height = 13
      Caption = 'Parcelas:'
    end
    object Label15: TLabel
      Left = 5
      Top = 308
      Width = 66
      Height = 13
      Caption = 'Observa'#231#245'es:'
    end
    object BvlSeparator_2: TBevel
      Left = 1
      Top = 307
      Width = 896
      Height = 5
      Shape = bsTopLine
    end
    object Label16: TLabel
      Left = 6
      Top = 433
      Width = 232
      Height = 13
      Caption = 'Hist'#243'rico da Parcela (Lan'#231'amentos em Parcelas):'
    end
    object Label2: TLabel
      Left = 239
      Top = 31
      Width = 42
      Height = 13
      Caption = 'Emiss'#227'o:'
    end
    object LblOrigem: TLabel
      Left = 509
      Top = 30
      Width = 55
      Height = 13
      Caption = 'Or'#231'amento:'
    end
    object LblNr_Fatura: TLabel
      Left = 444
      Top = 30
      Width = 48
      Height = 13
      Caption = 'Fatura N'#186':'
    end
    object SbGoEmitente: TSpeedButton
      Left = 570
      Top = 80
      Width = 23
      Height = 19
      Hint = 'Cadastro do Cliente'
      Flat = True
      Glyph.Data = {binary 582 bytes}
      ParentShowHint = False
      ShowHint = True
      OnClick = SbGoEmitenteClick
    end
    object Label4: TLabel
      Left = 408
      Top = 308
      Width = 123
      Height = 13
      Caption = 'Observa'#231#245'es para Boleto:'
    end
    object PnlToolMain: TPanel
      Left = 1
      Top = 1
      Width = 892
      Height = 26
      Align = alTop
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 20
      object PnlAction_1: TPanel
        Left = 0
        Top = 0
        Width = 892
        Height = 26
        Align = alClient
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 0
        object ActToolBNavigator: TActionToolBar
          Left = 0
          Top = 0
          Width = 892
          Height = 26
          ActionManager = ActManCadastro
          Align = alClient
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
      Left = 716
      Top = 113
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 15
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 482 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 802
      Top = 113
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 16
      OnClick = BitBtnCancelClick
      Glyph.Data = {binary 482 bytes}
      NumGlyphs = 2
    end
    object EdtNr_Receber: TCurrencyEdit
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
    object EdtSt_Receber: TEdit
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
    object EdtCd_Emitente: TCurrencyEdit
      Left = 5
      Top = 80
      Width = 50
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 8
      OnExit = EdtCd_EmitenteExit
      OnKeyDown = EdtCd_EmitenteKeyDown
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
      TabOrder = 9
      Text = 'Nome do cliente para Teste'
    end
    object EdtVl_Duplicata: TRxCalcEdit
      Left = 5
      Top = 116
      Width = 100
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      Ctl3D = False
      DisplayFormat = '##,##0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      NumGlyphs = 2
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 11
    end
    object EdtVl_Recebido: TCurrencyEdit
      Left = 108
      Top = 116
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
      TabOrder = 12
    end
    object EdtVl_Saldo: TCurrencyEdit
      Left = 202
      Top = 116
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
      TabOrder = 13
    end
    object DbMmObservacoes: TDBMemo
      Left = 5
      Top = 322
      Width = 395
      Height = 94
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
      TabOrder = 18
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
    object EdtNr_Origem: TCurrencyEdit
      Left = 509
      Top = 45
      Width = 60
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
      TabOrder = 5
    end
    object EdtDt_Fatura: TLabeledEdit
      Left = 334
      Top = 45
      Width = 70
      Height = 19
      TabStop = False
      Color = clSilver
      EditLabel.Width = 62
      EditLabel.Height = 13
      EditLabel.Caption = 'Faturamento:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
    end
    object EdtCd_Serie: TLabeledEdit
      Left = 409
      Top = 45
      Width = 30
      Height = 19
      TabStop = False
      CharCase = ecUpperCase
      Color = clSilver
      EditLabel.Width = 27
      EditLabel.Height = 13
      EditLabel.Caption = 'S'#233'rie:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
    end
    object EdtNr_Fatura: TCurrencyEdit
      Left = 444
      Top = 45
      Width = 60
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
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 7
    end
    object DbGParcela: TDBGrid
      Tag = 1
      Left = 5
      Top = 175
      Width = 884
      Height = 130
      DataSource = DsParcela
      FixedColor = clSilver
      Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 17
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
          Width = 20
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
          Width = 308
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Dt_EnvioBanco'
          Title.Alignment = taCenter
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Dt_Geracao'
          Title.Alignment = taCenter
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Id_Parcela'
          Title.Alignment = taCenter
          Width = 50
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Dp_DoctBanco'
          Title.Alignment = taCenter
          Width = 147
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Vl_Parcela'
          Title.Alignment = taRightJustify
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Vl_Recebido'
          Title.Alignment = taRightJustify
          Visible = True
        end>
    end
    object DbGHistorico: TDBGrid
      Tag = 2
      Left = 6
      Top = 449
      Width = 787
      Height = 120
      DataSource = DsHistorico
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
          FieldName = 'Nr_Lancamento'
          Width = 37
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Dp_Lancamento'
          Title.Alignment = taCenter
          Width = 137
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
          Width = 59
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nr_resumo'
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Cd_Usuario'
          Title.Alignment = taCenter
          Visible = True
        end>
    end
    object EdtDs_Fatura: TLabeledEdit
      Left = 296
      Top = 116
      Width = 56
      Height = 19
      AutoSelect = False
      AutoSize = False
      EditLabel.Width = 91
      EditLabel.Height = 13
      EditLabel.Caption = 'N'#186' Fatura (manual):'
      LabelSpacing = 2
      MaxLength = 10
      TabOrder = 14
    end
    object EdtDs_Receber: TLabeledEdit
      Left = 597
      Top = 80
      Width = 277
      Height = 19
      AutoSelect = False
      AutoSize = False
      EditLabel.Width = 96
      EditLabel.Height = 13
      EditLabel.Caption = 'Descritivo da Conta:'
      LabelSpacing = 2
      MaxLength = 40
      TabOrder = 10
    end
    object DbMmBoleto: TDBMemo
      Left = 408
      Top = 322
      Width = 481
      Height = 94
      TabStop = False
      DataField = 'Mm_Boleto'
      DataSource = DsParcela
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 21
    end
    object EdtDt_Cancelamento: TLabeledEdit
      Left = 573
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
    object PnlAction_4: TPanel
      Left = 675
      Top = 422
      Width = 116
      Height = 24
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 22
      object ActToolBProdutos: TActionToolBar
        Left = 0
        Top = 0
        Width = 116
        Height = 24
        Cursor = crHandPoint
        ActionManager = ActManCadastro
        Align = alClient
        Caption = 'ActToolBLancto'
        ColorMap.HighlightColor = clWhite
        ColorMap.BtnSelectedColor = clBtnFace
        ColorMap.UnusedColor = clWhite
        ParentShowHint = False
        ShowHint = True
        Spacing = 0
      end
    end
    object PnlToolParcela: TPanel
      Left = 771
      Top = 144
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
                Action = ActInsReceber
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
                Action = ActEditReceber
                Caption = '&Duplicata'
                ShortCut = 115
              end
              item
                Action = ActEditParcela
                Caption = 'P&arcela'
              end
              item
                Action = ActEditLancto
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
                Action = ActInsReceber
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
            Action = ActInsReceber
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
                Action = ActEditReceber
                Caption = '&Duplicata'
                ShortCut = 115
              end
              item
                Action = ActEditParcela
                Caption = '&Parcela'
              end
              item
                Action = ActEditLancto
              end>
            Action = ActEditReceber
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
                ImageIndex = 19
                ShortCut = 116
              end
              item
                Action = ActDelParcela
                Caption = '&Parcela'
                ImageIndex = 19
              end
              item
                Action = ActDelLancto
                Caption = '&Lan'#231'amento'
                ImageIndex = 19
              end>
            Action = ActDelDuplicata
            Caption = 'Du&plicata'
            ImageIndex = 19
            ShowCaption = False
            ShortCut = 116
          end
          item
            Items = <
              item
                Action = ActReport
                Caption = '&Boleto Banc'#225'rio...'
                ImageIndex = 20
                ShortCut = 117
              end
              item
                Action = ActDupMercantil
                Caption = '&Duplicata Mercantil...'
                ImageIndex = 20
              end>
            Action = ActReport
            Caption = '&Boleto Banc'#225'rio'
            ImageIndex = 20
            ShowCaption = False
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
          end
          item
            Action = ActOrigem
            ImageIndex = 35
            ShortCut = 120
          end
          item
            Action = ActEMail
            ImageIndex = 53
          end
          item
            Action = ActEnviaSite
            ImageIndex = 10
          end
          item
            Action = ActDelSite
            ImageIndex = 19
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
                Action = ActInsReceber
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
            Action = ActFind
            ImageIndex = 17
            ShortCut = 114
          end
          item
            Items = <
              item
                Action = ActEditReceber
                Caption = '&Duplicata'
                ShortCut = 115
              end
              item
                Action = ActEditParcela
                Caption = '&Parcela'
              end
              item
                Action = ActEditLancto
              end>
            Caption = ' '
            ImageIndex = 18
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
          end
          item
            Action = ActOrigem
            ImageIndex = 35
            ShortCut = 120
          end>
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
          end
          item
            Caption = '-'
          end
          item
            Action = ActLanctoRep
            ImageIndex = 20
          end>
        ActionBar = ActToolBProdutos
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
      end>
    Images = FrmMain.ImgLstMenu
    Left = 740
    Top = 10
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
      Hint = 'Incluir Duplicata/Parcela/Lan'#231'amento'
      ImageIndex = 16
      OnExecute = ActInsReceberExecute
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
      Hint = 'Cancelar Duplicata'
      ImageIndex = 21
      ShortCut = 118
      OnExecute = ActCancelExecute
    end
    object ActInsReceber: TAction
      Category = '3-Insert'
      Caption = 'Duplicata'
      ImageIndex = 16
      ShortCut = 113
      OnExecute = ActInsReceberExecute
    end
    object ActInsParcela: TAction
      Category = '3-Insert'
      Caption = 'Parcela'
      ImageIndex = 16
      OnExecute = ActInsParcelaExecute
    end
    object ActInsLancto: TAction
      Category = '3-Insert'
      Caption = 'Lan'#231'amento'
      ImageIndex = 16
      OnExecute = ActInsLanctoExecute
    end
    object ActEditReceber: TAction
      Category = '4-Edit'
      Caption = 'Duplicata'
      ImageIndex = 18
      ShortCut = 115
      OnExecute = ActEditReceberExecute
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
      Hint = 'Retornar a Situa'#231#227'o para Aberto'
      ImageIndex = 38
      ShortCut = 119
      OnExecute = ActRedoExecute
    end
    object ActOrigem: TAction
      Category = '2-Database'
      Hint = 'Origem do Lan'#231'amento'
      ImageIndex = 35
      ShortCut = 120
      OnExecute = ActOrigemExecute
    end
    object ActBoleto: TAction
      Category = '2-Database'
      Caption = 'Boleto Banc'#225'rio...'
      ImageIndex = 20
      ShortCut = 117
      OnExecute = ActReportExecute
    end
    object ActEMail: TAction
      Category = '2-Database'
      Hint = 'Enviar Boleto por E-Mail'
      ImageIndex = 53
      OnExecute = ActEMailExecute
    end
    object ActDupMercantil: TAction
      Category = '2-Database'
      Caption = 'Duplicata Mercantil...'
      ImageIndex = 20
      OnExecute = ActDupMercantilExecute
    end
    object ActEnviaSite: TAction
      Category = '2-Database'
      Hint = 'Enviar ao Site'
      ImageIndex = 10
      OnExecute = ActEnviaSiteExecute
    end
    object ActDelSite: TAction
      Category = '2-Database'
      Hint = 'Apagar Boleto do Site'
      ImageIndex = 19
      OnExecute = ActDelSiteExecute
    end
    object ActLanctoIns: TAction
      Category = '7-Lancto'
      Hint = 'Inserir lan'#231'amento'
      ImageIndex = 16
      OnExecute = ActInsLanctoExecute
    end
    object ActLanctoEdit: TAction
      Tag = 1
      Category = '7-Lancto'
      Hint = 'Alterar Lan'#231'amento'
      ImageIndex = 18
      OnExecute = ActInsLanctoExecute
    end
    object ActLanctoDel: TAction
      Category = '7-Lancto'
      Hint = 'Excluir Lan'#231'amento'
      ImageIndex = 19
      OnExecute = ActDelLanctoExecute
    end
    object ActLanctoRep: TAction
      Category = '7-Lancto'
      Hint = 'Imprimir Recibo'
      ImageIndex = 20
      OnExecute = ActLanctoRepExecute
    end
    object ActParIns: TAction
      Category = '6-Parcela'
      Hint = 'Incluir Parcela'
      ImageIndex = 16
      OnExecute = ActInsParcelaExecute
    end
    object ActParEdit: TAction
      Tag = 1
      Category = '6-Parcela'
      Hint = 'Alterar a parcela'
      ImageIndex = 18
      OnExecute = ActInsParcelaExecute
    end
    object ActParDel: TAction
      Category = '6-Parcela'
      Hint = 'Excluir a Parcela'
      ImageIndex = 19
      OnExecute = ActDelParcelaExecute
    end
    object ActParUpd: TAction
      Category = '6-Parcela'
      Hint = 'Atualizar Vencimento'
      ImageIndex = 29
      OnExecute = ActParUpdExecute
    end
  end
  object ADODsDados: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    OnCalcFields = ADODsDadosCalcFields
    CommandText = 'select'#13#10'  R.Nr_Receber, R.Dt_Emissao, R.St_Receber, R.Cd_Emitente, '#13#10'  E.Nm_Emitente, E.Nm_Fantasia, R.Ds_Fatura,'#13#10'  R.Vl_Duplicata, R.Vl_Recebido, R.Nr_Orcamento,'#13#10'  O.Cd_Serie, O.Nr_Fatura, O.Dt_Fatura, R.Nr_Balcao, R.Ds_Receber,'#13#10#13#10'  E.Ds_EMail, E.Ds_EMailCob, R.Dt_Cancelamento'#13#10#13#10'from'#13#10'  Receber R'#13#10#13#10'inner join'#13#10'  Emitente E'#13#10'on'#13#10'  E.Cd_Emitente = R.Cd_Emitente'#13#10#13#10'left join'#13#10'  Orcamento O'#13#10'on'#13#10'  O.Cd_Filial    = R.Cd_Filial and'#13#10'  O.Nr_Orcamento = R.Nr_Orcamento'#13#10#13#10'where'#13#10'  R.Cd_Filial  = :Cd_Filial and'#13#10'  R.Nr_Receber = :Nr_Receber'
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
        Name = 'Nr_Receber'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = nil?
      end>
    Left = 20
    Top = 371
    object ADODsDadosnr_receber: TIntegerField
      FieldName = 'nr_receber'
    end
    object ADODsDadosst_receber: TStringField
      FieldName = 'st_receber'
      FixedChar = True
      Size = 1
    end
    object ADODsDadosdt_emissao: TDateTimeField
      FieldName = 'dt_emissao'
    end
    object ADODsDadoscd_emitente: TIntegerField
      FieldName = 'cd_emitente'
    end
    object ADODsDadosvl_duplicata: TBCDField
      FieldName = 'vl_duplicata'
      Precision = 12
      Size = 2
    end
    object ADODsDadosvl_recebido: TBCDField
      FieldName = 'vl_recebido'
      Precision = 12
      Size = 2
    end
    object ADODsDadosnr_orcamento: TIntegerField
      FieldName = 'nr_orcamento'
    end
    object ADODsDadoscd_serie: TStringField
      FieldName = 'cd_serie'
      Size = 3
    end
    object ADODsDadosnr_fatura: TIntegerField
      FieldName = 'nr_fatura'
    end
    object ADODsDadosdt_fatura: TDateTimeField
      FieldName = 'dt_fatura'
    end
    object ADODsDadosnr_balcao: TIntegerField
      FieldName = 'nr_balcao'
    end
    object ADODsDadosNm_Emitente: TStringField
      FieldName = 'Nm_Emitente'
      Size = 50
    end
    object ADODsDadosNm_Fantasia: TStringField
      FieldName = 'Nm_Fantasia'
      Size = 30
    end
    object ADODsDadosDp_Emitente: TStringField
      FieldKind = fkCalculated
      FieldName = 'Dp_Emitente'
      Size = 83
      Calculated = True
    end
    object ADODsDadosDs_Fatura: TStringField
      FieldName = 'Ds_Fatura'
      Size = 10
    end
    object ADODsDadosDs_Receber: TStringField
      FieldName = 'Ds_Receber'
      Size = 40
    end
    object ADODsDadosDs_EMail: TStringField
      FieldName = 'Ds_EMail'
      Size = 150
    end
    object ADODsDadosDs_EMailCob: TStringField
      FieldName = 'Ds_EMailCob'
      Size = 150
    end
    object ADODsDadosDt_Cancelamento: TDateTimeField
      FieldName = 'Dt_Cancelamento'
    end
  end
  object ADOCmdDados: TMultADOCMD
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLInsert.Strings = (
      'insert into Receber( Cd_Filial, Nr_Receber, Dt_Emissao, St_Receber, Cd_Emitente,'
      '   Vl_Duplicata, Vl_Recebido, Nr_Orcamento, Ds_Fatura, Ds_Receber )'
      ''
      'values( :Cd_Filial, :Nr_Receber, :Dt_Emissao, ''''1'''', :Cd_Emitente,'
      '   :Vl_Duplicata, 0, :Nr_Orcamento, :Ds_Fatura, :Ds_Receber )'
    )
    SQLUpdate.Strings = (
      'update'
      '  Receber'
      ''
      'set'
      '  Cd_Emitente  = :Cd_Emitente,'
      '  Dt_Emissao   = :Dt_Emissao,'
      '  Vl_Duplicata = :Vl_Duplicata,'
      '  Nr_Orcamento = :Nr_Orcamento,'
      '  Ds_Fatura    = :Ds_Fatura,'
      '  Ds_Receber   = :Ds_Receber'
      ''
      'where'
      '  Cd_Filial    = :Cd_Filial and'
      '  Nr_Receber   = :Nr_Receber'
      ''
    )
    SQLDelete.Strings = (
      'delete from'
      '  Receber'
      ''
      'where'
      '  Cd_Filial  = :Cd_Filial and'
      '  Nr_Receber = :Nr_Receber'
    )
    SQLOther0.Strings = (
      ''
    )
    SQLOther1.Strings = (
      'declare @vCd_Filial  SmallInt'
      'declare @vNr_Receber Integer'
      'declare @vNr_Parcela Integer'
      ''
      'set @vCd_Filial  = :Cd_Filial'
      'set @vNr_Receber = :Nr_Receber'
      'set @vNr_Parcela = :Nr_Parcela'
      ''
      'delete from'
      '  Receber_Historico'
      ''
      'where'
      '  Cd_Filial  = @vCd_Filial and'
      '  Nr_Receber = @vNr_Receber and'
      '  Nr_Parcela = @vNr_Parcela;'
      ''
      'delete from'
      '  Receber_Parcela'
      ''
      'where'
      '  Cd_Filial  = @vCd_Filial and'
      '  Nr_Receber = @vNr_Receber and'
      '  Nr_Parcela = @vNr_Parcela;'
    )
    SQLOther2.Strings = (
      'delete from'
      '  Caixa'
      ''
      'where'
      '  Cd_Filial         = :Cd_Filial and'
      '  Nr_Receber        = :Nr_Receber and'
      '  Nr_Receber_Par    = :Nr_Parcela and'
      '  Nr_Receber_Lancto = :Nr_Lancamento;'
      ''
      'delete from'
      '  Receber_Historico'
      ''
      'where'
      '  Cd_Filial     = :Cd_Filial and'
      '  Nr_Receber    = :Nr_Receber and'
      '  Nr_Parcela    = :Nr_Parcela and'
      '  Nr_Lancamento = :Nr_Lancamento;'
    )
    SQLOther3.Strings = (
      'declare @vCd_Filial  SmallInt'
      'declare @vNr_Receber Integer'
      'declare @vSt_New     Char( 1 )'
      'declare @vSt_Old     Char( 1 )'
      'declare @vFl_Caixa   Char( 1 )'
      ''
      'set @vCd_Filial  = :Cd_Filial'
      'set @vNr_Receber = :Nr_Receber'
      'set @vSt_New     = :St_Receber'
      'set @vSt_Old     = :St_Antiga'
      'set @vFl_Caixa   = :Fl_Caixa'
      ''
      '-- Atualiza a situa'#231#227'o do Receber'
      'update'
      '  Receber'
      ''
      'set'
      '  St_Receber      = @vSt_New,'
      '  Dt_Cancelamento ='
      '    case'
      '      when @vSt_New = ''''4'''' then :Dt_Cancelamento'
      '      else Dt_Cancelamento'
      '      '
      '    end'
      ''
      'where'
      '  Cd_Filial  = @vCd_Filial and'
      '  Nr_Receber = @vNr_Receber;'
      ''
      '-- Verifica se vai aReceber os lan'#231'amentos existentes no caixa'
      'if ( @vFl_Caixa = ''''1'''' ) and'
      ' ( ( @vSt_Old = ''''2'''' ) or                        -- Amortizado'
      '   ( @vSt_Old = ''''3'''' ) )                         -- Pago'
      '  delete from'
      '    Caixa'
      ''
      '  where'
      '    Cd_Filial  = @vCd_Filial and'
      '    Nr_Receber = @vNr_Receber '
    )
    SQLOther4.Strings = (
      '--------------- Retornar para aberto'
      'declare @vCd_Filial  SmallInt'
      'declare @vNr_Receber Integer'
      ''
      'set @vCd_Filial  = :Cd_Filial'
      'set @vNr_Receber = :Nr_Receber'
      ''
      'update'
      '  Receber'
      ''
      'set'
      '  St_Receber      = ''''1'''','
      '  Dt_Cancelamento = null'
      ''
      'where'
      '  Cd_Filial  = @vCd_Filial and'
      '  Nr_Receber = @vNr_Receber'
      ''
      'update'
      '  Receber_Historico'
      ''
      'set'
      '  Nr_Lancamento = Nr_Lancamento'
      ''
      'where'
      '  Cd_Filial  = @vCd_Filial and'
      '  Nr_Receber = @vNr_Receber'
      ''
    )
    Left = 50
    Top = 371
  end
  object ADODsNavegar: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = '-- First'#13#10'select top 1'#13#10'  Nr_Receber'#13#10#13#10'from'#13#10'  Receber'#13#10#13#10'where'#13#10'  Cd_Filial = :Cd_Filial'#13#10#13#10'order by'#13#10'  Nr_Receber'
    Parameters = <
      item
        Name = 'Cd_Filial'
        DataType = ftSmallint
        Size = -1
        Value = nil?
      end>
    SQLPrimary.Strings = (
      'select'
      '  max( A.Nr_Receber ) + 1 as Nr_Receber'
      ''
      'from'
      '  Receber A'
      ''
      'where'
      '  Cd_Filial = :Cd_Filial'
    )
    SQLOther0.Strings = (
      '-- First'
      'select top 1'
      '  Nr_Receber'
      ''
      'from'
      '  Receber'
      ''
      'where'
      '  Cd_Filial = :Cd_Filial'
      ''
      'order by'
      '  Nr_Receber'
    )
    SQLOther1.Strings = (
      '-- Prior'
      'select top 1'
      '  Nr_Receber'
      ''
      'from'
      '  Receber'
      ''
      'where'
      '  Cd_Filial  = :Cd_Filial and'
      '  Nr_Receber < :Nr_Receber'
      ''
      'order by'
      '  Nr_Receber desc'
    )
    SQLOther2.Strings = (
      '-- Next'
      'select top 1'
      '  Nr_Receber'
      ''
      'from'
      '  Receber'
      ''
      'where'
      '  Cd_Filial  = :Cd_Filial and'
      '  Nr_Receber > :Nr_Receber'
      ''
      'order by'
      '  Nr_Receber'
    )
    SQLOther3.Strings = (
      '-- Last'
      'select top 1'
      '  Nr_Receber'
      ''
      'from'
      '  Receber'
      ''
      'where'
      '  Cd_Filial = :Cd_Filial'
      ''
      'order by'
      '  Nr_Receber desc'
    )
    Left = 80
    Top = 371
    object ADODsNavegarnr_receber: TIntegerField
      FieldName = 'nr_receber'
    end
  end
  object DsParcela: TDataSource
    DataSet = ADODsParcela
    Left = 204
    Top = 371
  end
  object DsHistorico: TDataSource
    DataSet = ADODsHistorico
    Left = 268
    Top = 371
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
        Value = nil?
      end
      item
        Name = 'Nr_Entrada'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = nil?
      end>
    Left = 329
    Top = 371
    object ADODsEntradacd_emitente: TIntegerField
      FieldName = 'cd_emitente'
    end
    object ADODsEntradavl_nota: TBCDField
      FieldName = 'vl_nota'
      Precision = 12
      Size = 2
    end
  end
  object ADODsParcela: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    OnCalcFields = ADODsParcelaCalcFields
    CommandText = 'select'#13#10'  A.Cd_Filial, A.Nr_Receber, A.Nr_Parcela, A.Dt_Vencimento, A.Vl_Parcela, '#13#10'  A.Dt_EnvioBanco, A.Nr_DoctoBanco, A.Vl_Recebido, A.Mm_Observacao,'#13#10'  A.Dt_Geracao, A.Cd_Portador, B.Nm_Portador, B.Pr_TaxaJuros, B.Pr_Multa,'#13#10'  A.Id_Parcela, A.Mm_Boleto, B.Cd_Banco'#13#10#13#10'from'#13#10'  Receber_Parcela A'#13#10#13#10'inner join'#13#10'  Portador B'#13#10'on'#13#10'  B.Cd_Portador = A.Cd_Portador'#13#10#13#10'where'#13#10'  A.Cd_Filial  = :Cd_Filial and'#13#10'  A.Nr_Receber = :Nr_Receber'#13#10#13#10'order by'#13#10'  A.Nr_Parcela'
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
        Name = 'Nr_Receber'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 1
      end>
    Left = 234
    Top = 371
    object ADODsParcelacd_filial: TSmallintField
      FieldName = 'cd_filial'
    end
    object ADODsParcelaNr_Receber: TIntegerField
      FieldName = 'Nr_Receber'
    end
    object ADODsParcelaNr_Parcela: TSmallintField
      DisplayLabel = 'N'#186
      FieldName = 'Nr_Parcela'
      DisplayFormat = '#,##0'
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
    object ADODsParcelaCd_Portador: TSmallintField
      FieldName = 'Cd_Portador'
    end
    object ADODsParcelaDt_EnvioBanco: TDateTimeField
      DisplayLabel = 'Enviar em'
      FieldName = 'Dt_EnvioBanco'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object ADODsParcelaNr_DoctoBanco: TStringField
      DisplayLabel = 'Nosso N'#250'mero'
      FieldName = 'Nr_DoctoBanco'
      Size = 25
    end
    object ADODsParcelaVl_Recebido: TBCDField
      DisplayLabel = 'Recebido'
      FieldName = 'Vl_Recebido'
      DisplayFormat = '#,##0.00'
      Precision = 10
    end
    object ADODsParcelaDp_Portador: TStringField
      DisplayLabel = 'Portador'
      FieldKind = fkCalculated
      FieldName = 'Dp_Portador'
      ReadOnly = True
      Size = 58
      Calculated = True
    end
    object ADODsParcelaDt_Geracao: TDateTimeField
      DisplayLabel = 'Gerado em'
      FieldName = 'Dt_Geracao'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object ADODsParcelanm_portador: TStringField
      FieldName = 'nm_portador'
      Size = 50
    end
    object ADODsParcelaMm_Observacao: TMemoField
      FieldName = 'Mm_Observacao'
      BlobType = ftMemo
    end
    object ADODsParcelaPr_TaxaJuros: TBCDField
      FieldName = 'Pr_TaxaJuros'
      Precision = 9
      Size = 2
    end
    object ADODsParcelaPr_Multa: TBCDField
      FieldName = 'Pr_Multa'
      Precision = 7
      Size = 2
    end
    object ADODsParcelaId_Parcela: TIntegerField
      DisplayLabel = 'ID'
      FieldName = 'Id_Parcela'
    end
    object ADODsParcelaMm_Boleto: TMemoField
      FieldName = 'Mm_Boleto'
      BlobType = ftMemo
    end
    object ADODsParcelaDp_DoctBanco: TStringField
      DisplayLabel = 'Nosso N'#250'mero'
      FieldKind = fkCalculated
      FieldName = 'Dp_DoctBanco'
      Size = 50
      Calculated = True
    end
    object ADODsParcelaCd_Banco: TStringField
      FieldName = 'Cd_Banco'
      FixedChar = True
      Size = 4
    end
  end
  object ADODsHistorico: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    OnCalcFields = ADODsHistoricoCalcFields
    CommandText = 'select'#13#10'  A.Cd_Filial, A.Nr_Receber, A.Nr_Parcela, A.Nr_Lancamento, A.Tp_Lancamento,'#13#10'  A.Dt_Lancamento, A.Vl_Lancamento, A.Nr_Resumo, A.Cd_Usuario, A.Nr_DoctoBaixa'#13#10#13#10'from'#13#10'  Receber_Historico A'#13#10#13#10'where'#13#10'  A.Cd_Filial  = :Cd_Filial and'#13#10'  A.Nr_Receber = :Nr_Receber and'#13#10'  A.Nr_Parcela = :Nr_Parcela'#13#10#13#10'order by'#13#10'  A.Nr_Lancamento '
    DataSource = DsParcela
    MasterFields = 'Cd_Filial;Nr_Receber;Nr_Parcela'
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
        Name = 'Nr_Receber'
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
    Left = 299
    Top = 371
    object ADODsHistoricoNr_Receber: TIntegerField
      FieldName = 'Nr_Receber'
    end
    object ADODsHistoricoNr_Parcela: TSmallintField
      FieldName = 'Nr_Parcela'
    end
    object ADODsHistoricoNr_Lancamento: TSmallintField
      DisplayLabel = 'Lancto'
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
      Calculated = True
    end
    object ADODsHistoricocd_filial: TSmallintField
      FieldName = 'cd_filial'
    end
    object ADODsHistoriconr_resumo: TIntegerField
      DisplayLabel = 'Resumo'
      FieldName = 'nr_resumo'
    end
    object ADODsHistoricoCd_Usuario: TStringField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'Cd_Usuario'
      Size = 15
    end
    object ADODsHistoricoNr_DoctoBaixa: TStringField
      DisplayLabel = 'Documento de Baixa'
      FieldName = 'Nr_DoctoBaixa'
      Size = 50
    end
  end
end
