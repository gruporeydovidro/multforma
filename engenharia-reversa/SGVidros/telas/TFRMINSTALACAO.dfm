object FrmInstalacao: TFrmInstalacao
  Left = 265
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Instala'#231#227'o'
  ClientHeight = 446
  ClientWidth = 781
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
  Position = poDesigned
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
    Height = 446
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 760
    Height = 446
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object Label1: TLabel
      Left = 5
      Top = 30
      Width = 52
      Height = 13
      Caption = 'Instala'#231#227'o:'
      Transparent = True
    end
    object Label2: TLabel
      Left = 179
      Top = 30
      Width = 45
      Height = 13
      Caption = 'Situa'#231#227'o:'
      Transparent = True
    end
    object Label8: TLabel
      Left = 60
      Top = 30
      Width = 42
      Height = 13
      Caption = 'Emiss'#227'o:'
      Transparent = True
    end
    object BvlSeparator_1: TBevel
      Left = 2
      Top = 415
      Width = 753
      Height = 5
      Shape = bsTopLine
    end
    object Label10: TLabel
      Left = 5
      Top = 65
      Width = 35
      Height = 13
      Caption = 'Cliente:'
    end
    object Label5: TLabel
      Left = 5
      Top = 135
      Width = 66
      Height = 13
      Caption = 'Observa'#231#245'es:'
    end
    object Label3: TLabel
      Left = 5
      Top = 100
      Width = 86
      Height = 13
      Caption = 'Nome do Contato:'
    end
    object SbEmitenteContato: TSpeedButton
      Left = 315
      Top = 114
      Width = 23
      Height = 19
      Hint = 'Seleciona Contatos do Emitente'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbEmitenteContatoClick
    end
    object Label7: TLabel
      Left = 253
      Top = 30
      Width = 55
      Height = 13
      Caption = 'Or'#231'amento:'
    end
    object SbOrcamento: TSpeedButton
      Left = 313
      Top = 45
      Width = 23
      Height = 19
      Hint = 'Seleciona Venda'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbOrcamentoClick
    end
    object Label4: TLabel
      Left = 340
      Top = 30
      Width = 76
      Height = 13
      Caption = 'Agendado para:'
    end
    object Label9: TLabel
      Left = 582
      Top = 65
      Width = 155
      Height = 13
      Caption = 'Prazo de Entrega do Or'#231'amento:'
    end
    object Label11: TLabel
      Left = 464
      Top = 30
      Width = 92
      Height = 13
      Caption = 'Data de instala'#231#227'o:'
      Transparent = True
    end
    object Label15: TLabel
      Left = 426
      Top = 100
      Width = 54
      Height = 13
      Caption = 'Servi'#231'os:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 509
      Top = 100
      Width = 99
      Height = 13
      Caption = 'Materiais (custo):'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label12: TLabel
      Left = 342
      Top = 100
      Width = 58
      Height = 13
      Caption = 'Comiss'#227'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object PnlToolMain: TPanel
      Left = 1
      Top = 1
      Width = 758
      Height = 26
      Align = alTop
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 12
      object PnlDatabase: TPanel
        Left = 0
        Top = 0
        Width = 758
        Height = 26
        Align = alClient
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 0
        object ActToolBDatabase: TActionToolBar
          Left = 0
          Top = 0
          Width = 758
          Height = 26
          Cursor = crHandPoint
          ActionManager = ActManCadastro
          Caption = 'ActToolBDatabase'
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
      Left = 587
      Top = 419
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 10
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 482 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 673
      Top = 419
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 11
      OnClick = BitBtnCancelClick
      Glyph.Data = {binary 482 bytes}
      NumGlyphs = 2
    end
    object EdtNr_Instalacao: TCurrencyEdit
      Left = 5
      Top = 45
      Width = 52
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      TabStop = False
      AutoSize = False
      Color = clSilver
      DisplayFormat = '#,###'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object EdtDp_Situacao: TEdit
      Left = 179
      Top = 45
      Width = 70
      Height = 19
      TabStop = False
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
      Text = 'Instalado'
    end
    object EdtDt_Emissao: TEdit
      Left = 60
      Top = 45
      Width = 115
      Height = 19
      TabStop = False
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
      Text = '20/20/2020 20:20'
    end
    object EdtCd_Emitente: TCurrencyEdit
      Tag = 1
      Left = 5
      Top = 80
      Width = 50
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      TabStop = False
      AutoSize = False
      Color = clSilver
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
    end
    object EdtNm_Emitente: TEdit
      Left = 59
      Top = 79
      Width = 520
      Height = 19
      TabStop = False
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 50
      ParentFont = False
      ReadOnly = True
      TabOrder = 5
    end
    object MmObservacao: TMemo
      Left = 5
      Top = 149
      Width = 748
      Height = 95
      Lines.Strings = (
        'MmObservacao'
      )
      ScrollBars = ssVertical
      TabOrder = 9
    end
    object EdtNm_Contato: TEdit
      Tag = 3
      Left = 5
      Top = 114
      Width = 308
      Height = 19
      MaxLength = 100
      TabOrder = 8
      OnKeyDown = EdtNr_OrcamentoKeyDown
    end
    object EdtNr_Orcamento: TCurrencyEdit
      Tag = 1
      Left = 253
      Top = 45
      Width = 60
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 3
      OnExit = EdtNr_OrcamentoExit
      OnKeyDown = EdtNr_OrcamentoKeyDown
    end
    object EdtDt_Agenda: TDateEdit
      Left = 340
      Top = 45
      Width = 86
      Height = 19
      CheckOnExit = True
      DialogTitle = 'Selecione a Data'
      GlyphKind = gkCustom
      Glyph.Data = {binary 390 bytes}
      NumGlyphs = 1
      StartOfWeek = Sun
      TabOrder = 6
    end
    object Edthr_Agenda: TMaskEdit
      Left = 427
      Top = 45
      Width = 33
      Height = 19
      EditMask = '##:##;0; '
      MaxLength = 5
      TabOrder = 7
    end
    object EdtNr_Entrega: TCurrencyEdit
      Tag = 1
      Left = 582
      Top = 80
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      TabStop = False
      AutoSize = False
      Color = clSilver
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 13
    end
    object EdtDt_Entrega: TEdit
      Left = 623
      Top = 80
      Width = 75
      Height = 19
      TabStop = False
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 50
      ParentFont = False
      ReadOnly = True
      TabOrder = 14
      Text = '20/20/2020'
    end
    object EdtDt_Instalacao: TEdit
      Left = 464
      Top = 45
      Width = 115
      Height = 19
      TabStop = False
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 15
    end
    object PgInstalacao: TPageControl
      Left = 5
      Top = 250
      Width = 748
      Height = 163
      ActivePage = TabSMaterial
      TabOrder = 16
      object TabSInstalador: TTabSheet
        Caption = '                    Instaladores                    '
        object DbGInstalador: TDBGrid
          Left = 1
          Top = 2
          Width = 627
          Height = 131
          DataSource = DsInstalador
          FixedColor = clSilver
          Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnEnter = DbGInstaladorEnter
          OnExit = DbGInstaladorExit
          Columns = <
            item
              Expanded = False
              FieldName = 'Cd_Funcionario'
              Title.Alignment = taRightJustify
              Width = 53
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Nm_Funcionario'
              Width = 465
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Vl_Comissao'
              Title.Alignment = taRightJustify
              Visible = True
            end>
        end
        object PnlInstalador: TPanel
          Left = 632
          Top = 3
          Width = 28
          Height = 85
          BevelOuter = bvNone
          ParentColor = True
          TabOrder = 1
          object ActToolInstalador: TActionToolBar
            Left = 0
            Top = 0
            Width = 28
            Height = 85
            Cursor = crHandPoint
            ActionManager = ActManCadastro
            Align = alClient
            Caption = 'ActToolInstalador'
            ColorMap.HighlightColor = clWhite
            ColorMap.BtnSelectedColor = clBtnFace
            ColorMap.UnusedColor = clWhite
            Orientation = boTopToBottom
            ParentShowHint = False
            ShowHint = True
            Spacing = 0
          end
        end
      end
      object TabSServico: TTabSheet
        Caption = '          Servi'#231'os de Instala'#231#227'o          '
        ImageIndex = 1
        object DbGServico: TDBGrid
          Left = 1
          Top = 2
          Width = 707
          Height = 131
          DataSource = DsServico
          FixedColor = clSilver
          Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnEnter = DbGInstaladorEnter
          OnExit = DbGInstaladorExit
          Columns = <
            item
              Expanded = False
              FieldName = 'Nr_Servico'
              Title.Alignment = taRightJustify
              Width = 25
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Cd_Produto'
              Title.Alignment = taRightJustify
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Nm_Produto'
              Width = 397
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Qt_Servico'
              Title.Alignment = taRightJustify
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Vl_Servico'
              Title.Alignment = taRightJustify
              Width = 65
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Vl_Total'
              Title.Alignment = taRightJustify
              Width = 65
              Visible = True
            end>
        end
        object Panel1: TPanel
          Left = 710
          Top = 3
          Width = 27
          Height = 76
          BevelOuter = bvNone
          ParentColor = True
          TabOrder = 1
          object ActionToolBar1: TActionToolBar
            Left = 0
            Top = 0
            Width = 27
            Height = 76
            Cursor = crHandPoint
            ActionManager = ActManCadastro
            Align = alClient
            Caption = 'ActToolInstalador'
            ColorMap.HighlightColor = clWhite
            ColorMap.BtnSelectedColor = clBtnFace
            ColorMap.UnusedColor = clWhite
            Orientation = boTopToBottom
            ParentShowHint = False
            ShowHint = True
            Spacing = 0
          end
        end
      end
      object TabSMaterial: TTabSheet
        Caption = '               Material Utilizado               '
        ImageIndex = 2
        object DbGMaterial: TDBGrid
          Left = 1
          Top = 2
          Width = 707
          Height = 131
          DataSource = DsMaterial
          FixedColor = clSilver
          Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnEnter = DbGInstaladorEnter
          OnExit = DbGInstaladorExit
          Columns = <
            item
              Expanded = False
              FieldName = 'Nr_Material'
              Title.Alignment = taRightJustify
              Width = 25
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Cd_Produto'
              Title.Alignment = taRightJustify
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Nm_Produto'
              Width = 397
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Qt_Material'
              Title.Alignment = taRightJustify
              Width = 67
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Vl_Material'
              Title.Alignment = taRightJustify
              Width = 65
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Vl_Total'
              Title.Alignment = taRightJustify
              Width = 65
              Visible = True
            end>
        end
        object Panel2: TPanel
          Left = 710
          Top = 3
          Width = 27
          Height = 76
          BevelOuter = bvNone
          ParentColor = True
          TabOrder = 1
          object ActionToolBar2: TActionToolBar
            Left = 0
            Top = 0
            Width = 27
            Height = 76
            Cursor = crHandPoint
            ActionManager = ActManCadastro
            Align = alClient
            Caption = 'ActToolInstalador'
            ColorMap.HighlightColor = clWhite
            ColorMap.BtnSelectedColor = clBtnFace
            ColorMap.UnusedColor = clWhite
            Orientation = boTopToBottom
            ParentShowHint = False
            ShowHint = True
            Spacing = 0
          end
        end
      end
    end
    object EdtVl_Servico: TCurrencyEdit
      Left = 426
      Top = 114
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      TabStop = False
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 17
    end
    object EdtVl_Material: TCurrencyEdit
      Left = 509
      Top = 114
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      TabStop = False
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 18
    end
    object EdtVl_Comissao: TCurrencyEdit
      Left = 342
      Top = 114
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      TabStop = False
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 19
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
          end
          item
            Action = ActNext
            ImageIndex = 13
          end
          item
            Action = ActLast
            ImageIndex = 14
          end
          item
            Action = ActInsert
            ImageIndex = 15
            ShortCut = 113
          end
          item
            Action = ActEdit
            ImageIndex = 16
            ShortCut = 115
          end
          item
            Action = ActFind
            ShortCut = 114
          end
          item
            Action = ActDel
            ImageIndex = 17
            ShortCut = 116
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
          end
          item
            Action = ActPrior
            ImageIndex = 12
          end
          item
            Action = ActDel
            ImageIndex = 17
            ShortCut = 116
          end
          item
            Action = ActFind
            ShortCut = 114
          end
          item
            Action = ActEdit
            ImageIndex = 16
            ShortCut = 115
          end
          item
            Action = ActInsert
            ImageIndex = 15
            ShortCut = 113
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
          end
          item
            Action = ActNext
            ImageIndex = 14
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
            Action = ActInsert
            ImageIndex = 16
            ShortCut = 113
          end
          item
            Action = ActEdit
            ImageIndex = 17
            ShortCut = 115
          end
          item
            Action = ActFind
            ImageIndex = 18
            ShortCut = 114
          end
          item
            Action = ActDel
            ImageIndex = 19
            ShortCut = 116
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
          end
          item
            Action = ActNext
            ImageIndex = 14
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
          end
          item
            Action = ActNext
            ImageIndex = 14
          end
          item
            Action = ActLast
            ImageIndex = 15
          end
          item
            Caption = '-'
          end
          item
            Action = ActInsert
            ImageIndex = 16
            ShortCut = 113
          end
          item
            Action = ActFind
            ImageIndex = 17
            ShortCut = 114
          end
          item
            Action = ActEdit
            ImageIndex = 18
            ShortCut = 115
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
            Action = ActConfirma
            ImageIndex = 22
            ShortCut = 118
          end
          item
            Action = ActCancel
            ImageIndex = 21
            ShortCut = 119
          end
          item
            Action = ActInstalado
            ImageIndex = 1
            ShortCut = 120
          end
          item
            Action = ActRedo
            ImageIndex = 38
            ShortCut = 121
          end>
        ActionBar = ActToolBDatabase
      end
      item
      end
      item
      end
      item
      end
      item
      end
      item
      end
      item
      end
      item
      end
      item
        Items = <
          item
            Action = ActInstIns
            ImageIndex = 16
          end
          item
            Action = ActInstEdit
            ImageIndex = 18
          end
          item
            Action = ActInstDel
            ImageIndex = 19
          end>
        ActionBar = ActToolInstalador
      end
      item
        Items = <
          item
            Action = ActServIns
            ImageIndex = 16
          end
          item
            Action = ActServEdit
            ImageIndex = 18
          end
          item
            Action = ActServDel
            ImageIndex = 19
          end>
        ActionBar = ActionToolBar1
      end
      item
        Items = <
          item
            Action = ActMatIns
            ImageIndex = 16
          end
          item
            Action = ActMatEdit
            ImageIndex = 18
          end
          item
            Action = ActMatDel
            ImageIndex = 19
          end>
        ActionBar = ActionToolBar2
      end>
    Images = FrmMain.ImgLstMenu
    Left = 702
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
      OnExecute = ActPriorExecute
    end
    object ActNext: TAction
      Category = '1-Navigator'
      Hint = 'Pr'#243'ximo Registro'
      ImageIndex = 14
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
      Hint = 'Incluir um Novo Registro'
      ImageIndex = 16
      ShortCut = 113
      OnExecute = ActInsertExecute
    end
    object ActFind: TAction
      Category = '2-Database'
      Hint = 'Consultar Registros'
      ImageIndex = 17
      ShortCut = 114
      OnExecute = ActFindExecute
    end
    object ActEdit: TAction
      Category = '2-Database'
      Hint = 'Alterar o Registro Corrente'
      ImageIndex = 18
      ShortCut = 115
      OnExecute = ActEditExecute
    end
    object ActDel: TAction
      Category = '2-Database'
      Hint = 'Excluir este Registro'
      ImageIndex = 19
      ShortCut = 116
      SecondaryShortCuts.Strings = (
        'Linha 1'
        'Linha 2'
        'Linha 3'
      )
    end
    object ActReport: TAction
      Tag = 1
      Category = '2-Database'
      Hint = 'Relat'#243'rio - O.M. Normal'
      ImageIndex = 20
      ShortCut = 117
      OnExecute = ActReportExecute
    end
    object ActConfirma: TAction
      Tag = 1
      Category = '2-Database'
      Hint = 'Confirmar Instala'#231#227'o'
      ImageIndex = 22
      ShortCut = 118
      OnExecute = ActConfirmaExecute
    end
    object ActCancel: TAction
      Category = '2-Database'
      Hint = 'Cancelar Instala'#231#227'o'
      ImageIndex = 21
      ShortCut = 119
      OnExecute = ActCancelExecute
    end
    object ActInstalado: TAction
      Category = '2-Database'
      Hint = 'Marcar como Instalado'
      ImageIndex = 1
      ShortCut = 120
      OnExecute = ActInstaladoExecute
    end
    object ActRedo: TAction
      Category = '2-Database'
      Hint = 'Abrir Instala'#231#227'o'
      ImageIndex = 38
      ShortCut = 121
      OnExecute = ActRedoExecute
    end
    object ActInstIns: TAction
      Tag = 1
      Category = '3-Instador'
      Hint = 'Incluir Instalador'
      ImageIndex = 16
      OnExecute = ActInstInsExecute
    end
    object ActInstEdit: TAction
      Tag = 2
      Category = '3-Instador'
      Hint = 'Alterar o Instalador'
      ImageIndex = 18
      OnExecute = ActInstInsExecute
    end
    object ActInstDel: TAction
      Category = '3-Instador'
      Hint = 'Excluir Instalador'
      ImageIndex = 19
      OnExecute = ActInstDelExecute
    end
    object ActServIns: TAction
      Tag = 1
      Category = '4-Servi'#231'o'
      Hint = 'Incluir Servi'#231'o'
      ImageIndex = 16
      OnExecute = ActServInsExecute
    end
    object ActServEdit: TAction
      Tag = 2
      Category = '4-Servi'#231'o'
      Hint = 'Alterar o servi'#231'o'
      ImageIndex = 18
      OnExecute = ActServInsExecute
    end
    object ActServDel: TAction
      Category = '4-Servi'#231'o'
      Hint = 'Excluir Servi'#231'o'
      ImageIndex = 19
      OnExecute = ActServDelExecute
    end
    object ActMatIns: TAction
      Tag = 1
      Category = '5-Material'
      Hint = 'Incluir Material'
      ImageIndex = 16
      OnExecute = ActMatInsExecute
    end
    object ActMatEdit: TAction
      Tag = 2
      Category = '5-Material'
      Hint = 'Alterar Material'
      ImageIndex = 18
      OnExecute = ActMatInsExecute
    end
    object ActMatDel: TAction
      Category = '5-Material'
      Hint = 'Excluir Material'
      ImageIndex = 19
      OnExecute = ActMatDelExecute
    end
  end
  object ADODsDados: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  I.Cd_Filial, I.Nr_Instalacao, I.Dt_Emissao, I.St_Instalacao, I.Nr_Orcamento, I.Dt_Agenda,'#13#10'  I.Nm_Contato, I.Mm_Observacao, I.Dt_Instalacao, I.Vl_Comissao, I.Vl_Servico, I.Vl_Material,'#13#10#13#10'  I.Cd_Emitente, I.Nm_Emitente, I.Nm_Fantasia,'#13#10#13#10'  I.Ds_Endereco, I.Ds_Numero, I.Ds_Complemento, I.Nm_Bairro, I.Nm_Cidade, I.Sg_Estado,'#13#10'  I.Nr_CEP, I.Nr_Telefone_1, I.Nr_Telefone_2, I.Nr_Telefone_3, I.Nr_Celular_1,'#13#10'  I.Nr_Celular_2,'#13#10#13#10'  I.Nr_Entrega, I.Dt_Entrega, I.Dp_Situacao'#13#10#13#10'from'#13#10'  InstalacaoVw I'#13#10#13#10'where'#13#10'  I.Cd_Filial     = :Cd_Filial and'#13#10'  I.Nr_Instalacao = :Nr_Instalacao'
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
        Name = 'Nr_Instalacao'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = nil?
      end>
    Left = 57
    Top = 416
    object ADODsDadosCd_Filial: TSmallintField
      FieldName = 'Cd_Filial'
    end
    object ADODsDadosNr_Instalacao: TIntegerField
      FieldName = 'Nr_Instalacao'
    end
    object ADODsDadosDt_Emissao: TDateTimeField
      FieldName = 'Dt_Emissao'
    end
    object ADODsDadosSt_Instalacao: TStringField
      FieldName = 'St_Instalacao'
      FixedChar = True
      Size = 1
    end
    object ADODsDadosNr_Orcamento: TIntegerField
      FieldName = 'Nr_Orcamento'
    end
    object ADODsDadosDt_Agenda: TDateTimeField
      FieldName = 'Dt_Agenda'
    end
    object ADODsDadosNm_Contato: TStringField
      FieldName = 'Nm_Contato'
      Size = 100
    end
    object ADODsDadosMm_Observacao: TMemoField
      FieldName = 'Mm_Observacao'
      BlobType = ftMemo
    end
    object ADODsDadosDt_Instalacao: TDateTimeField
      FieldName = 'Dt_Instalacao'
    end
    object ADODsDadosCd_Emitente: TIntegerField
      FieldName = 'Cd_Emitente'
    end
    object ADODsDadosNm_Emitente: TStringField
      FieldName = 'Nm_Emitente'
      Size = 50
    end
    object ADODsDadosNm_Fantasia: TStringField
      FieldName = 'Nm_Fantasia'
      Size = 30
    end
    object ADODsDadosDs_Endereco: TStringField
      FieldName = 'Ds_Endereco'
      Size = 50
    end
    object ADODsDadosDs_Complemento: TStringField
      FieldName = 'Ds_Complemento'
      Size = 30
    end
    object ADODsDadosNm_Bairro: TStringField
      FieldName = 'Nm_Bairro'
      Size = 30
    end
    object ADODsDadosNm_Cidade: TStringField
      FieldName = 'Nm_Cidade'
      Size = 60
    end
    object ADODsDadosSg_Estado: TStringField
      FieldName = 'Sg_Estado'
      FixedChar = True
      Size = 2
    end
    object ADODsDadosNr_CEP: TStringField
      FieldName = 'Nr_CEP'
      FixedChar = True
      Size = 8
    end
    object ADODsDadosNr_Telefone_1: TStringField
      FieldName = 'Nr_Telefone_1'
      Size = 10
    end
    object ADODsDadosNr_Telefone_2: TStringField
      FieldName = 'Nr_Telefone_2'
      Size = 10
    end
    object ADODsDadosNr_Telefone_3: TStringField
      FieldName = 'Nr_Telefone_3'
      Size = 10
    end
    object ADODsDadosNr_Celular_1: TStringField
      FieldName = 'Nr_Celular_1'
      Size = 11
    end
    object ADODsDadosNr_Celular_2: TStringField
      FieldName = 'Nr_Celular_2'
      Size = 11
    end
    object ADODsDadosNr_Entrega: TSmallintField
      FieldName = 'Nr_Entrega'
    end
    object ADODsDadosDt_Entrega: TDateTimeField
      FieldName = 'Dt_Entrega'
      ReadOnly = True
    end
    object ADODsDadosDp_Situacao: TStringField
      FieldName = 'Dp_Situacao'
      ReadOnly = True
      Size = 10
    end
    object ADODsDadosVl_Servico: TBCDField
      FieldName = 'Vl_Servico'
      ReadOnly = True
      Precision = 32
      Size = 2
    end
    object ADODsDadosVl_Material: TBCDField
      FieldName = 'Vl_Material'
      ReadOnly = True
      Precision = 32
      Size = 6
    end
    object ADODsDadosVl_Comissao: TBCDField
      FieldName = 'Vl_Comissao'
      ReadOnly = True
      Precision = 32
      Size = 2
    end
    object ADODsDadosDs_Numero: TStringField
      FieldName = 'Ds_Numero'
      Size = 10
    end
  end
  object ADOCmdDados: TMultADOCMD
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLInsert.Strings = (
      'insert into Instalacao( Cd_Filial, Nr_Instalacao, St_Instalacao, Dt_Emissao,'
      '  Nr_Orcamento, Dt_Agenda, Nm_Contato, Mm_Observacao )'
      ''
      'values( :Cd_Filial, :Nr_Instalacao, ''''1'''', :Dt_Emissao,'
      '  :Nr_Orcamento, :Dt_Agenda, :Nm_Contato, :Mm_Observacao )'
    )
    SQLUpdate.Strings = (
      'update'
      '  Instalacao'
      ''
      'set'
      '  Nr_Orcamento   = :Nr_Orcamento,'
      '  Dt_Agenda      = :Dt_Agenda,'
      '  Nm_Contato     = :Nm_Contato,'
      '  Mm_Observacao  = :Mm_Observacao'
      ''
      'where'
      '  Cd_Filial     = :Cd_Filial and'
      '  Nr_Instalacao = :Nr_Instalacao'
      ''
    )
    SQLOther0.Strings = (
      '-------------------- Muda Situa'#231#227'o da Instalacao'
      'update'
      '  Instalacao'
      ''
      'set'
      '  St_Instalacao = :St_Instalacao'
      ''
      'where'
      '  Cd_Filial     = :Cd_Filial and'
      '  Nr_Instalacao = :Nr_Instalacao'
    )
    SQLOther1.Strings = (
      '--------------- Inclui o instalador'
      'declare'
      '  @Cd_Filial Smallint,'
      '  @Nr_Instalacao Int,'
      '  @Cd_Funcionario smallint,'
      '  @Vl_Comissao Numeric( 12, 2 )'
      ''
      'select'
      '  @Cd_Filial      = :Cd_Filial,'
      '  @Nr_Instalacao  = :Nr_Instalacao,'
      '  @Cd_Funcionario = :Cd_Funcionario,'
      '  @Vl_Comissao    = :Vl_Comissao'
      ''
      'if not Exists('
      '  select'
      '    Cd_Filial'
      ''
      '  from'
      '    Instalacao_Instalador'
      ''
      '  where'
      '    Cd_Filial      = @Cd_Filial and'
      '    Nr_Instalacao  = @Nr_Instalacao and'
      '    Cd_Funcionario = @Cd_Funcionario'
      '    )'
      '  insert into Instalacao_Instalador( Cd_Filial, Nr_Instalacao, Cd_Funcionario, Vl_Comissao )'
      '  values( @Cd_Filial, @Nr_Instalacao, @Cd_Funcionario, @Vl_Comissao )'
      ''
      'else'
      '  update'
      '    Instalacao_Instalador'
      ''
      '  set'
      '    Vl_Comissao = @Vl_Comissao'
      ''
      '  where'
      '    Cd_Filial      = @Cd_Filial and'
      '    Nr_Instalacao  = @Nr_Instalacao and'
      '    Cd_Funcionario = @Cd_Funcionario'
    )
    SQLOther2.Strings = (
      '--------------- Exclui o instalador'
      'delete from'
      '  Instalacao_Instalador'
      ''
      'where'
      '  Cd_Filial      = :Cd_Filial and'
      '  Nr_Instalacao  = :Nr_Instalacao and'
      '  Cd_Funcionario = :Cd_Funcionario'
    )
    SQLOther3.Strings = (
      '--------------- Inclui o Servi'#231'o'
      'declare'
      '  @Cd_Filial Smallint,'
      '  @Nr_Instalacao Int,'
      '  @Nr_Servico smallint'
      ''
      'select'
      '  @Cd_Filial     = :Cd_Filial,'
      '  @Nr_Instalacao = :Nr_Instalacao'
      ''
      'set @Nr_Servico = 1 + IsNull('
      '  ('
      '  select'
      '    Max( Nr_Servico )'
      ''
      '  from'
      '    Instalacao_Servico'
      ''
      '  where'
      '    Cd_Filial     = @Cd_Filial and'
      '    Nr_Instalacao = @Nr_Instalacao'
      '  ), 0 )'
      ''
      'insert into Instalacao_Servico( Cd_Filial, Nr_Instalacao, Nr_Servico, Cd_Produto,'
      '  Qt_Servico, Vl_Servico )'
      'values( @Cd_Filial, @Nr_Instalacao, @Nr_Servico, :Cd_Produto, :Qt_Servico, :Vl_Servico )'
    )
    SQLOther4.Strings = (
      '--------------- Altera o servi'#231'o'
      'update'
      '  Instalacao_Servico'
      ''
      'set'
      '  Cd_Produto = :Cd_Produto,'
      '  Qt_Servico = :Qt_Servico,'
      '  Vl_Servico = :Vl_Servico'
      ''
      'where'
      '  Cd_Filial     = :Cd_Filial and'
      '  Nr_Instalacao = :Nr_Instalacao and'
      '  Nr_Servico    = :Nr_Servico'
      ''
    )
    SQLOther5.Strings = (
      '--------------- Exclui o Servi'#231'o'
      'declare'
      '  @Cd_Filial Smallint,'
      '  @Nr_Instalacao Int,'
      '  @Nr_Servico smallint'
      ''
      'select'
      '  @Cd_Filial     = :Cd_Filial,'
      '  @Nr_Instalacao = :Nr_Instalacao,'
      '  @Nr_Servico    = :Nr_Servico'
      ''
      'delete from'
      '  Instalacao_Servico'
      ''
      'where'
      '  Cd_Filial     = @Cd_Filial and'
      '  Nr_Instalacao = @Nr_Instalacao and'
      '  Nr_Servico    = @Nr_Servico'
      ''
      '--------------- Corrige a numera'#231#227'o'
      'update'
      '  Instalacao_Servico'
      ''
      'set'
      '  Nr_Servico = Nr_Servico - 1'
      ''
      'where'
      '  Cd_Filial     = @Cd_Filial and'
      '  Nr_Instalacao = @Nr_Instalacao and'
      '  Nr_Servico    > @Nr_Servico'
    )
    SQLOther6.Strings = (
      '--------------- Inclui o Material'
      'declare'
      '  @Cd_Filial Smallint,'
      '  @Nr_Instalacao Int,'
      '  @Nr_Material smallint'
      ''
      'select'
      '  @Cd_Filial     = :Cd_Filial,'
      '  @Nr_Instalacao = :Nr_Instalacao'
      ''
      'set @Nr_Material = 1 + IsNull('
      '  ('
      '  select'
      '    Max( Nr_Material )'
      ''
      '  from'
      '    Instalacao_Material'
      ''
      '  where'
      '    Cd_Filial     = @Cd_Filial and'
      '    Nr_Instalacao = @Nr_Instalacao'
      '  ), 0 )'
      ''
      'insert into Instalacao_Material( Cd_Filial, Nr_Instalacao, Nr_Material, Cd_Produto,'
      '  Qt_Material, Vl_Material )'
      'values( @Cd_Filial, @Nr_Instalacao, @Nr_Material, :Cd_Produto, :Qt_Material, :Vl_Material )'
      ''
    )
    SQLOther7.Strings = (
      '--------------- Altera o material'
      'update'
      '  Instalacao_Material'
      ''
      'set'
      '  Cd_Produto  = :Cd_Produto,'
      '  Qt_Material = :Qt_Material,'
      '  Vl_Material = :Vl_Material'
      ''
      'where'
      '  Cd_Filial     = :Cd_Filial and'
      '  Nr_Instalacao = :Nr_Instalacao and'
      '  Nr_Material   = :Nr_Material'
      ''
    )
    SQLOther8.Strings = (
      '--------------- Exclui o Material'
      'declare'
      '  @Cd_Filial Smallint,'
      '  @Nr_Instalacao Int,'
      '  @Nr_Material smallint'
      ''
      'select'
      '  @Cd_Filial     = :Cd_Filial,'
      '  @Nr_Instalacao = :Nr_Instalacao,'
      '  @Nr_Material   = :Nr_Material'
      ''
      'delete from'
      '  Instalacao_Material'
      ''
      'where'
      '  Cd_Filial     = @Cd_Filial and'
      '  Nr_Instalacao = @Nr_Instalacao and'
      '  Nr_Material   = @Nr_Material'
      ''
      '--------------- Corrige a numera'#231#227'o'
      'update'
      '  Instalacao_Material'
      ''
      'set'
      '  Nr_Material = Nr_Material - 1'
      ''
      'where'
      '  Cd_Filial     = @Cd_Filial and'
      '  Nr_Instalacao = @Nr_Instalacao and'
      '  Nr_Material   > @Nr_Material'
    )
    Left = 87
    Top = 416
  end
  object ADODsNavegar: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = '-- Prior'#13#10'select top 1'#13#10'  Nr_Instalacao'#13#10#13#10'from'#13#10'  Instalacao'#13#10#13#10'where'#13#10'  Cd_Filial      = :Cd_Filial and'#13#10'  Nr_Instalacao = :Nr_Instalacao'#13#10#13#10'order by'#13#10'  Nr_Instalacao desc'
    Parameters = <
      item
        Name = 'Cd_Filial'
        DataType = ftSmallint
        Size = -1
        Value = nil?
      end
      item
        Name = 'Nr_Instalacao'
        DataType = ftInteger
        Size = -1
        Value = nil?
      end>
    SQLPrimary.Strings = (
      'select'
      '  max( Nr_Instalacao ) + 1 as Nr_Instalacao'
      ''
      'from'
      '  Instalacao'
      ''
      'where'
      '  Cd_Filial = :Cd_Filial'
    )
    SQLOther0.Strings = (
      '-- First'
      'select top 1'
      '  Nr_Instalacao'
      ''
      'from'
      '  Instalacao'
      ''
      'where'
      '  Cd_Filial = :Cd_Filial'
      ''
      'order by'
      '  Nr_Instalacao'
    )
    SQLOther1.Strings = (
      '-- Prior'
      'select top 1'
      '  Nr_Instalacao'
      ''
      'from'
      '  Instalacao'
      ''
      'where'
      '  Cd_Filial  = :Cd_Filial and'
      '  Nr_Instalacao < :Nr_Instalacao'
      ''
      'order by'
      '  Nr_Instalacao desc'
    )
    SQLOther2.Strings = (
      '-- Next'
      'select top 1'
      '  Nr_Instalacao'
      ''
      'from'
      '  Instalacao'
      ''
      'where'
      '  Cd_Filial  = :Cd_Filial and'
      '  Nr_Instalacao > :Nr_Instalacao'
      ''
      'order by'
      '  Nr_Instalacao'
    )
    SQLOther3.Strings = (
      '-- Last'
      'select top 1'
      '  Nr_Instalacao'
      ''
      'from'
      '  Instalacao'
      ''
      'where'
      '  Cd_Filial = :Cd_Filial'
      ''
      'order by'
      '  Nr_Instalacao desc'
    )
    Left = 117
    Top = 416
    object ADODsNavegarNr_Instalacao: TIntegerField
      FieldName = 'Nr_Instalacao'
    end
  end
  object DsDados: TDataSource
    DataSet = ADODsDados
    Left = 29
    Top = 416
  end
  object ADODsOrcaFind: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'select'#13#10'  O.Cd_Emitente, E.Nm_Emitente, E.Nm_Fantasia, O.Dt_Confirmado, O.Dt_Fatura, '#13#10'  O.Nr_Fatura, O.Nr_Entrega, O.St_Orcamento'#13#10#13#10'from'#13#10'  Orcamento O'#13#10#13#10'inner join'#13#10'  Emitente E'#13#10'on'#13#10'  E.Cd_Emitente = O.Cd_Emitente'#13#10#13#10'where'#13#10'  O.Cd_Filial    = :Cd_Filial and'#13#10'  O.Nr_Orcamento = :Nr_Orcamento'
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
    Left = 155
    Top = 416
    object ADODsOrcaFindCd_Emitente: TIntegerField
      FieldName = 'Cd_Emitente'
    end
    object ADODsOrcaFindNm_Emitente: TStringField
      FieldName = 'Nm_Emitente'
      Size = 50
    end
    object ADODsOrcaFindNm_Fantasia: TStringField
      FieldName = 'Nm_Fantasia'
      Size = 30
    end
    object ADODsOrcaFindDt_Confirmado: TDateTimeField
      FieldName = 'Dt_Confirmado'
    end
    object ADODsOrcaFindDt_Fatura: TDateTimeField
      FieldName = 'Dt_Fatura'
    end
    object ADODsOrcaFindNr_Fatura: TIntegerField
      FieldName = 'Nr_Fatura'
    end
    object ADODsOrcaFindNr_Entrega: TSmallintField
      FieldName = 'Nr_Entrega'
    end
    object ADODsOrcaFindSt_Orcamento: TStringField
      FieldName = 'St_Orcamento'
      FixedChar = True
      Size = 1
    end
  end
  object DsInstalador: TDataSource
    DataSet = ADODsInstalador
    Left = 200
    Top = 416
  end
  object ADODsInstalador: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    AfterScroll = ADODsInstaladorAfterScroll
    CommandText = 'select'#13#10'  II.Cd_Filial, II.Nr_Instalacao, II.Cd_Funcionario, F.Nm_Funcionario, II.Vl_Comissao'#13#10#13#10'from'#13#10'  Instalacao_Instalador II'#13#10#13#10'inner join'#13#10'  Funcionario F'#13#10'on'#13#10'  F.Cd_Funcionario = II.Cd_Funcionario'#13#10#13#10'where'#13#10'  II.Cd_Filial      = :Cd_Filial and'#13#10'  II.Nr_Instalacao = :Nr_Instalacao'#13#10
    DataSource = DsDados
    MasterFields = 'Cd_Filial;Nr_Instalacao'
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
        Name = 'Nr_Instalacao'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = nil?
      end>
    Left = 229
    Top = 416
    object ADODsInstaladorCd_Filial: TSmallintField
      FieldName = 'Cd_Filial'
    end
    object ADODsInstaladorNr_Instalacao: TIntegerField
      FieldName = 'Nr_Instalacao'
    end
    object ADODsInstaladorCd_Funcionario: TSmallintField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'Cd_Funcionario'
    end
    object ADODsInstaladorNm_Funcionario: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'Nm_Funcionario'
      Size = 50
    end
    object ADODsInstaladorVl_Comissao: TBCDField
      DisplayLabel = 'Comiss'#227'o'
      FieldName = 'Vl_Comissao'
      DisplayFormat = '#,##0.00'
      Precision = 12
      Size = 2
    end
  end
  object ADODsServico: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    AfterScroll = ADODsServicoAfterScroll
    CommandText = 'select'#13#10'  InS.Cd_Filial, InS.Nr_Instalacao, InS.Nr_Servico, InS.Cd_Produto, InS.Nm_Produto,'#13#10'  InS.Qt_Servico, InS.Vl_Servico, InS.Vl_Total'#13#10#13#10'from'#13#10'  Instalacao_ServicoVw InS'#13#10#13#10'where'#13#10'  Ins.Cd_Filial     = :Cd_Filial and'#13#10'  Ins.Nr_Instalacao = :Nr_Instalacao'
    DataSource = DsDados
    MasterFields = 'Cd_Filial;Nr_Instalacao'
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
        Name = 'Nr_Instalacao'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = nil?
      end>
    Left = 289
    Top = 416
    object ADODsServicoCd_Filial: TSmallintField
      FieldName = 'Cd_Filial'
    end
    object ADODsServicoNr_Instalacao: TIntegerField
      FieldName = 'Nr_Instalacao'
    end
    object ADODsServicoNr_Servico: TSmallintField
      DisplayLabel = 'Item'
      FieldName = 'Nr_Servico'
    end
    object ADODsServicoCd_Produto: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'Cd_Produto'
    end
    object ADODsServicoNm_Produto: TStringField
      DisplayLabel = 'Servi'#231'o'
      FieldName = 'Nm_Produto'
      Size = 120
    end
    object ADODsServicoQt_Servico: TSmallintField
      DisplayLabel = 'Quantidade'
      FieldName = 'Qt_Servico'
      DisplayFormat = '#,##0'
    end
    object ADODsServicoVl_Servico: TBCDField
      DisplayLabel = 'Valor'
      FieldName = 'Vl_Servico'
      DisplayFormat = '#,##0.00'
      Precision = 12
      Size = 2
    end
    object ADODsServicoVl_Total: TBCDField
      DisplayLabel = 'Total'
      FieldName = 'Vl_Total'
      ReadOnly = True
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
  end
  object DsServico: TDataSource
    DataSet = ADODsServico
    Left = 260
    Top = 416
  end
  object ADODsMaterial: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    AfterScroll = ADODsMaterialAfterScroll
    CommandText = 'select'#13#10'  IM.Cd_Filial, IM.Nr_Instalacao, IM.Nr_Material, IM.Cd_Produto, IM.Nm_Produto,'#13#10'  IM.Qt_Material, IM.Vl_Material, IM.Vl_Total'#13#10#13#10'from'#13#10'  Instalacao_MaterialVw IM'#13#10#13#10'where'#13#10'  IM.Cd_Filial     = :Cd_Filial and'#13#10'  IM.Nr_Instalacao = :Nr_Instalacao'
    DataSource = DsDados
    MasterFields = 'Cd_Filial;Nr_Instalacao'
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
        Name = 'Nr_Instalacao'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = nil?
      end>
    Left = 353
    Top = 416
    object ADODsMaterialCd_Filial: TSmallintField
      FieldName = 'Cd_Filial'
    end
    object ADODsMaterialNr_Instalacao: TIntegerField
      FieldName = 'Nr_Instalacao'
    end
    object ADODsMaterialNr_Material: TSmallintField
      DisplayLabel = 'Item'
      FieldName = 'Nr_Material'
    end
    object ADODsMaterialCd_Produto: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'Cd_Produto'
    end
    object ADODsMaterialNm_Produto: TStringField
      DisplayLabel = 'Material'
      FieldName = 'Nm_Produto'
      Size = 120
    end
    object ADODsMaterialQt_Material: TBCDField
      DisplayLabel = 'Quantidade'
      FieldName = 'Qt_Material'
      DisplayFormat = '#,##0.####'
      Precision = 12
    end
    object ADODsMaterialVl_Material: TBCDField
      DisplayLabel = 'Valor'
      FieldName = 'Vl_Material'
      DisplayFormat = '#,##0.00'
      Precision = 12
      Size = 2
    end
    object ADODsMaterialVl_Total: TBCDField
      DisplayLabel = 'Total'
      FieldName = 'Vl_Total'
      ReadOnly = True
      DisplayFormat = '#,##0.00'
      Precision = 25
      Size = 6
    end
  end
  object DsMaterial: TDataSource
    DataSet = ADODsMaterial
    Left = 324
    Top = 416
  end
end
