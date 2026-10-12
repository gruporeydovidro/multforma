object FrmNFe_CFG: TFrmNFe_CFG
  Left = 294
  Top = 173
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Configura'#231#227'o da NFe'
  ClientHeight = 508
  ClientWidth = 774
  Color = clWhite
  Ctl3D = False
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 21
    Height = 508
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 753
    Height = 508
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 2
      Top = 478
      Width = 746
      Height = 5
      Shape = bsTopLine
    end
    object Label12: TLabel
      Left = 5
      Top = 2
      Width = 107
      Height = 13
      Caption = 'Ambiente de Trabalho:'
    end
    object Label1: TLabel
      Left = 6
      Top = 40
      Width = 77
      Height = 13
      Caption = 'Tipo do DANFe:'
    end
    object Label2: TLabel
      Left = 166
      Top = 40
      Width = 67
      Height = 13
      Caption = 'Pasta Mensal:'
    end
    object LblPastas: TLabel
      Left = 2
      Top = 112
      Width = 53
      Height = 13
      Hint = 'Clique duplo para configurar pastas padr'#227'o'
      Caption = 'PASTAS:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnDblClick = LblPastasDblClick
    end
    object SbCancelamento: TSpeedButton
      Tag = 1
      Left = 354
      Top = 138
      Width = 23
      Height = 21
      Hint = 'Pasta para salvar arquivos...'
      Flat = True
      Glyph.Data = {binary 378 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbCancelamentoClick
    end
    object SbDPEC: TSpeedButton
      Tag = 2
      Left = 727
      Top = 138
      Width = 18
      Height = 21
      Hint = 'Pasta para salvar arquivos...'
      Flat = True
      Glyph.Data = {binary 378 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbCancelamentoClick
    end
    object SbInutilizacao: TSpeedButton
      Tag = 3
      Left = 354
      Top = 173
      Width = 23
      Height = 21
      Hint = 'Pasta para salvar arquivos...'
      Flat = True
      Glyph.Data = {binary 378 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbCancelamentoClick
    end
    object SbNFe: TSpeedButton
      Tag = 4
      Left = 727
      Top = 173
      Width = 18
      Height = 21
      Hint = 'Pasta para salvar arquivos...'
      Flat = True
      Glyph.Data = {binary 378 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbCancelamentoClick
    end
    object SbSalvar: TSpeedButton
      Tag = 5
      Left = 354
      Top = 208
      Width = 23
      Height = 21
      Hint = 'Pasta para salvar arquivos...'
      Flat = True
      Glyph.Data = {binary 378 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbCancelamentoClick
    end
    object SbSchemas: TSpeedButton
      Tag = 6
      Left = 727
      Top = 208
      Width = 18
      Height = 21
      Hint = 'Pasta para salvar arquivos...'
      Flat = True
      Glyph.Data = {binary 378 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbCancelamentoClick
    end
    object SbPDF: TSpeedButton
      Tag = 7
      Left = 354
      Top = 243
      Width = 23
      Height = 21
      Hint = 'Pasta para salvar arquivos...'
      Flat = True
      Glyph.Data = {binary 378 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbCancelamentoClick
    end
    object Label9: TLabel
      Left = 237
      Top = 40
      Width = 254
      Height = 13
      Caption = 'Intervalo de Gera'#231#227'o automatica ( zero para manual ):'
      Visible = False
    end
    object SbLogoMarca: TSpeedButton
      Tag = 8
      Left = 330
      Top = 281
      Width = 23
      Height = 21
      Hint = 'Pasta para salvar arquivos...'
      Flat = True
      Glyph.Data = {binary 1146 bytes}
      ParentShowHint = False
      ShowHint = True
      OnClick = SbLogoMarcaClick
    end
    object SbDANFe: TSpeedButton
      Tag = 9
      Left = 353
      Top = 487
      Width = 18
      Height = 21
      Hint = 'Arquivo do DANFe (Rave Reports)'
      Flat = True
      Glyph.Data = {binary 1146 bytes}
      ParentShowHint = False
      ShowHint = True
      Visible = False
      OnClick = SbLogoMarcaClick
    end
    object Label4: TLabel
      Left = 360
      Top = 77
      Width = 176
      Height = 13
      Caption = 'Decimais para Quantidade e Unit'#225'rio:'
    end
    object Label5: TLabel
      Left = 5
      Top = 338
      Width = 280
      Height = 13
      Caption = 'Mensagem do E-Mail (utilize $N$ para o nome da empresa):'
    end
    object Label6: TLabel
      Left = 114
      Top = 2
      Width = 89
      Height = 13
      Caption = 'Forma de Emiss'#227'o:'
    end
    object Label7: TLabel
      Left = 541
      Top = 77
      Width = 65
      Height = 13
      Caption = 'N'#186' de C'#243'pias:'
    end
    object Label8: TLabel
      Left = 207
      Top = 3
      Width = 197
      Height = 13
      Caption = 'Data / Hora de Entrada em Conting'#234'ncia:'
    end
    object Label10: TLabel
      Left = 87
      Top = 40
      Width = 30
      Height = 13
      Caption = 'Fonte:'
    end
    object SbCertificado: TSpeedButton
      Tag = 8
      Left = 209
      Top = 92
      Width = 23
      Height = 21
      Hint = 'Selecionar Certificado Digital'
      Flat = True
      Glyph.Data = {binary 1146 bytes}
      ParentShowHint = False
      ShowHint = True
      OnClick = SbCertificadoClick
    end
    object Label11: TLabel
      Left = 608
      Top = 77
      Width = 90
      Height = 13
      Caption = 'Largura do C'#243'digo:'
    end
    object BvlMoldura: TBevel
      Left = 380
      Top = 245
      Width = 276
      Height = 112
      Shape = bsFrame
    end
    object ImgLogo: TImage
      Left = 382
      Top = 248
      Width = 270
      Height = 105
      Center = True
    end
    object Label3: TLabel
      Left = 382
      Top = 230
      Width = 27
      Height = 13
      Caption = 'Logo:'
    end
    object BitBtnConfirm: TBitBtn
      Left = 580
      Top = 481
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 25
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 666
      Top = 481
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 26
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object CbFlAmbiente: TComboBox
      Left = 6
      Top = 17
      Width = 95
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 1
      TabOrder = 0
      Text = 'Homologa'#231#227'o'
      Items.Strings = (
        'Produ'#231#227'o'
        'Homologa'#231#227'o'
      )
    end
    object CbTpDanfe: TComboBox
      Left = 6
      Top = 55
      Width = 77
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 5
      Text = 'Retrato'
      Items.Strings = (
        'Retrato'
        'Paisagem'
      )
    end
    object CbFlPastaMensal: TComboBox
      Left = 166
      Top = 55
      Width = 49
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
    object EdtNr_Certificado: TLabeledEdit
      Tag = 2
      Left = 5
      Top = 92
      Width = 204
      Height = 19
      EditLabel.Width = 108
      EditLabel.Height = 13
      EditLabel.Caption = 'N'#250'mero do Certificado:'
      LabelSpacing = 2
      MaxLength = 100
      TabOrder = 9
    end
    object EdtSh_Certificado: TLabeledEdit
      Tag = 2
      Left = 234
      Top = 92
      Width = 123
      Height = 19
      EditLabel.Width = 34
      EditLabel.Height = 13
      EditLabel.Caption = 'Senha:'
      EditLabel.OnDblClick = EdtSh_CertificadoSubLabelDblClick
      LabelSpacing = 2
      MaxLength = 100
      PasswordChar = '*'
      TabOrder = 10
    end
    object EdtDs_PathCancelar: TLabeledEdit
      Tag = 1
      Left = 5
      Top = 140
      Width = 349
      Height = 19
      EditLabel.Width = 71
      EditLabel.Height = 13
      EditLabel.Caption = 'Cancelamento:'
      LabelSpacing = 2
      MaxLength = 100
      TabOrder = 14
      Text = 'C:\MultformaData\NFe\Cancel'
      OnKeyDown = EdtDs_PathCancelarKeyDown
    end
    object EdtDs_PathDPEC: TLabeledEdit
      Tag = 2
      Left = 380
      Top = 140
      Width = 346
      Height = 19
      EditLabel.Tag = 2
      EditLabel.Width = 32
      EditLabel.Height = 13
      EditLabel.Caption = 'DPEC:'
      LabelSpacing = 2
      MaxLength = 100
      TabOrder = 15
      Text = 'C:\MultformaData\NFe\DPEC'
      OnKeyDown = EdtDs_PathCancelarKeyDown
    end
    object EdtDs_PathInu: TLabeledEdit
      Tag = 2
      Left = 5
      Top = 175
      Width = 349
      Height = 19
      EditLabel.Tag = 3
      EditLabel.Width = 56
      EditLabel.Height = 13
      EditLabel.Caption = 'Inutiliza'#231#227'o:'
      LabelSpacing = 2
      MaxLength = 100
      TabOrder = 16
      Text = 'C:\MultformaData\NFe\Inuti'
      OnKeyDown = EdtDs_PathCancelarKeyDown
    end
    object EdtDs_PathNFe: TLabeledEdit
      Tag = 2
      Left = 380
      Top = 175
      Width = 346
      Height = 19
      EditLabel.Tag = 4
      EditLabel.Width = 23
      EditLabel.Height = 13
      EditLabel.Caption = 'NFe:'
      LabelSpacing = 2
      MaxLength = 100
      TabOrder = 17
      Text = 'C:\MultformaData\NFe\NFe'
      OnKeyDown = EdtDs_PathCancelarKeyDown
    end
    object EdtDs_PathSalvar: TLabeledEdit
      Tag = 2
      Left = 5
      Top = 210
      Width = 349
      Height = 19
      EditLabel.Tag = 5
      EditLabel.Width = 33
      EditLabel.Height = 13
      EditLabel.Caption = 'Salvar:'
      LabelSpacing = 2
      MaxLength = 100
      TabOrder = 18
      Text = 'C:\MultformaData\NFe\Salvar'
      OnKeyDown = EdtDs_PathCancelarKeyDown
    end
    object EdtDs_PathSchema: TLabeledEdit
      Tag = 2
      Left = 380
      Top = 210
      Width = 346
      Height = 19
      EditLabel.Tag = 6
      EditLabel.Width = 72
      EditLabel.Height = 13
      EditLabel.Caption = 'Schemas XML:'
      LabelSpacing = 2
      MaxLength = 100
      TabOrder = 19
      Text = 'C:\MultformaData\Schemas'
      OnKeyDown = EdtDs_PathCancelarKeyDown
    end
    object EdtDs_PathPDF: TLabeledEdit
      Tag = 2
      Left = 5
      Top = 245
      Width = 349
      Height = 19
      EditLabel.Tag = 7
      EditLabel.Width = 24
      EditLabel.Height = 13
      EditLabel.Caption = 'PDF:'
      LabelSpacing = 2
      MaxLength = 100
      TabOrder = 20
      Text = 'C:\MultformaData\NFe\PDF'
      OnKeyDown = EdtDs_PathCancelarKeyDown
    end
    object EdtNr_Intervalo: TCurrencyEdit
      Tag = 6
      Left = 237
      Top = 55
      Width = 50
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '###'
      TabOrder = 8
      Visible = False
    end
    object EdtNm_LogoMarca: TLabeledEdit
      Tag = 8
      Left = 5
      Top = 283
      Width = 325
      Height = 19
      EditLabel.Tag = 7
      EditLabel.Width = 315
      EditLabel.Height = 13
      EditLabel.Caption = 'Arquivo da Logo Marca (Paisagem 105 x 465 / Retrato 115 x 270):'
      LabelSpacing = 2
      MaxLength = 100
      TabOrder = 21
      OnKeyDown = EdtDs_PathCancelarKeyDown
    end
    object EdtNm_DANFe: TLabeledEdit
      Tag = 8
      Left = 6
      Top = 489
      Width = 346
      Height = 19
      EditLabel.Tag = 7
      EditLabel.Width = 158
      EditLabel.Height = 13
      EditLabel.Caption = 'Arquivo da Impress'#227'o do DANFe:'
      LabelSpacing = 2
      MaxLength = 100
      TabOrder = 22
      Visible = False
      OnKeyDown = EdtDs_PathCancelarKeyDown
    end
    object EdtNr_Decimais: TCurrencyEdit
      Tag = 6
      Left = 360
      Top = 92
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '###'
      MaxValue = 4.0
      MinValue = 1.0
      TabOrder = 11
      Value = 1.0
    end
    object EdtDs_Assunto: TLabeledEdit
      Tag = 8
      Left = 5
      Top = 319
      Width = 349
      Height = 19
      EditLabel.Tag = 7
      EditLabel.Width = 97
      EditLabel.Height = 13
      EditLabel.Caption = 'Assunto para E-Mail:'
      LabelSpacing = 2
      MaxLength = 100
      TabOrder = 23
      OnKeyDown = EdtDs_PathCancelarKeyDown
    end
    object MmEMail: TMemo
      Left = 5
      Top = 356
      Width = 740
      Height = 119
      Lines.Strings = (
        'MmEMail'
      )
      ScrollBars = ssVertical
      TabOrder = 24
    end
    object CbFlFormaEmissao: TComboBox
      Left = 115
      Top = 17
      Width = 89
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 1
      Text = 'Normal'
      Items.Strings = (
        'Normal'
        'Contingencia'
        'SVAN'
        'DPEC'
        'FSDA'
        'SVC-AN'
        'SVC-RS'
        'SVC-SP'
      )
    end
    object EdtNr_Copia: TCurrencyEdit
      Tag = 6
      Left = 541
      Top = 92
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '###'
      MaxValue = 4.0
      MinValue = 1.0
      TabOrder = 12
      Value = 4.0
    end
    object EdtDt_Contingencia: TDateEdit
      Left = 207
      Top = 17
      Width = 86
      Height = 19
      CheckOnExit = True
      DialogTitle = 'Selecione a Data'
      GlyphKind = gkCustom
      Glyph.Data = {binary 390 bytes}
      NumGlyphs = 1
      StartOfWeek = Sun
      TabOrder = 2
    end
    object EdtHr_Contingencia: TMaskEdit
      Left = 297
      Top = 17
      Width = 33
      Height = 19
      EditMask = '##:##;0; '
      MaxLength = 5
      TabOrder = 3
    end
    object EdtDs_Contingencia: TLabeledEdit
      Tag = 8
      Left = 407
      Top = 17
      Width = 337
      Height = 19
      EditLabel.Tag = 7
      EditLabel.Width = 147
      EditLabel.Height = 13
      EditLabel.Caption = 'Justificativa para Conting'#234'ncia:'
      LabelSpacing = 2
      MaxLength = 255
      TabOrder = 4
      OnKeyDown = EdtDs_PathCancelarKeyDown
    end
    object CbFonte: TComboBox
      Left = 87
      Top = 55
      Width = 77
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 6
      Text = 'Courier'
      Items.Strings = (
        'Courier'
        'Times'
        'Arial'
      )
    end
    object EdtNr_LargCodigo: TCurrencyEdit
      Tag = 6
      Left = 608
      Top = 92
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '###'
      MinValue = 10.0
      TabOrder = 13
      Value = 30.0
    end
    object Panel1: TPanel
      Left = 659
      Top = 246
      Width = 29
      Height = 98
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 27
      object ActionToolBar1: TActionToolBar
        Left = 0
        Top = 0
        Width = 29
        Height = 98
        Cursor = crHandPoint
        ActionManager = ActManCadastro
        Align = alClient
        Caption = 'ActToolBDependente'
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
  object ADOCmdNFe: TMultADOCMD
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLInsert.Strings = (
      'insert into NFe_CFG( Cd_Filial, Fl_PastaMensal, Ds_PathCancelar,'
      '  Ds_PathDPEC, Ds_PathInu, Ds_PathNFe, Nr_Certificado, Sh_Certificado,'
      '  Ds_PathSalvar, Ds_PathSchemas, Fl_Ambiente, Tp_DANFe, Ds_PathPDF,'
      '  Nr_Intervalo, Nm_LogoMarca, Nm_DANFe, Nr_Decimais, Ds_Assunto, Mm_EMail,'
      '  Fl_FormaEmissao, Nr_Copia, Dt_Contingencia, Ds_Contingencia, Fl_Fonte,'
      '  Nr_LarguraCodigo, Im_Logo )'
      ''
      'values( :Cd_Filial, :Fl_PastaMensal, :Ds_PathCancelar,'
      '  :Ds_PathDPEC, :Ds_PathInu, :Ds_PathNFe, :Nr_Certificado, :Sh_Certificado,'
      '  :Ds_PathSalvar, :Ds_PathSchemas, :Fl_Ambiente, :Tp_DANFe, :Ds_PathPDF,'
      '  :Nr_Intervalo, :Nm_LogoMarca, :Nm_DANFe, :Nr_Decimais, :Ds_Assunto, :Mm_EMail,'
      '  :Fl_FormaEmissao, :Nr_Copia, :Dt_Contingencia, :Ds_Contingencia, :Fl_Fonte,'
      '  :Nr_LarguraCodigo, :Im_Logo )'
    )
    SQLUpdate.Strings = (
      'update'
      '  NFe_CFG'
      ''
      'set'
      '  Fl_PastaMensal   = :Fl_PastaMensal,'
      '  Ds_PathCancelar  = :Ds_PathCancelar,'
      '  Ds_PathDPEC      = :Ds_PathDPEC,'
      '  Ds_PathInu       = :Ds_PathInu,'
      '  Ds_PathNFe       = :Ds_PathNFe,'
      '  Nr_Certificado   = :Nr_Certificado,'
      '  Sh_Certificado   = :Sh_Certificado,'
      '  Ds_PathSalvar    = :Ds_PathSalvar,'
      '  Ds_PathSchemas   = :Ds_PathSchemas,'
      '  Fl_Ambiente      = :Fl_Ambiente,'
      '  Tp_DANFe         = :Tp_DANFe,'
      '  Ds_PathPDF       = :Ds_PathPDF,'
      '  Nr_Intervalo     = :Nr_Intervalo,'
      '  Nm_LogoMarca     = :Nm_LogoMarca,'
      '  Nm_DANFe         = :Nm_DANFe,'
      '  Nr_Decimais      = :Nr_Decimais,'
      '  Ds_Assunto       = :Ds_Assunto,'
      '  Mm_EMail         = :Mm_EMail,'
      '  Fl_FormaEmissao  = :Fl_FormaEmissao,'
      '  Nr_Copia         = :Nr_Copia,'
      '  Dt_Contingencia  = :Dt_Contingencia,'
      '  Ds_Contingencia  = :Ds_Contingencia,'
      '  Fl_Fonte         = :Fl_Fonte,'
      '  Nr_LarguraCodigo = :Nr_LarguraCodigo,'
      '  Im_Logo          = :Im_Logo'
      ''
      'where'
      '  Cd_Filial = :Cd_Filial'
    )
    Left = 704
    Top = 102
  end
  object ActManCadastro: TActionManager
    ActionBars = <
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
            Caption = '-'
          end
          item
            Caption = '-'
          end
          item
            Caption = '-'
          end
          item
            Action = ActLoad
            ImageIndex = 4
          end
          item
            Action = ActClear
            ImageIndex = 32
          end
          item
            Action = ActSave
            ImageIndex = 33
          end
          item
            Caption = '-'
          end
          item
            Action = ActAjustar
            ImageIndex = 34
          end>
      end
      item
      end
      item
        Items = <
          item
            Action = ActLoad
            ImageIndex = 4
          end
          item
            Action = ActClear
            ImageIndex = 32
          end
          item
            Action = ActSave
            ImageIndex = 33
          end
          item
            Action = ActAjustar
            ImageIndex = 34
          end>
      end
      item
        Items = <
          item
            Action = ActLoad
            ImageIndex = 4
          end
          item
            Action = ActClear
            ImageIndex = 32
          end
          item
            Action = ActSave
            ImageIndex = 33
          end
          item
            Action = ActAjustar
            ImageIndex = 34
          end>
        ActionBar = ActionToolBar1
      end
      item
      end>
    Images = FrmMain.ImgLstMenu
    Left = 636
    Top = 112
    StyleName = 'XP Style'
    object ActLoad: TAction
      Tag = 1
      Category = '1-Logo'
      Hint = 'Carregar imagem'
      ImageIndex = 4
      OnExecute = ActLoadExecute
    end
    object ActClear: TAction
      Tag = 1
      Category = '1-Logo'
      Hint = 'Apagar a figura'
      ImageIndex = 32
      OnExecute = ActClearExecute
    end
    object ActSave: TAction
      Tag = 1
      Category = '1-Logo'
      Hint = 'Salvar a imagem'
      ImageIndex = 33
      OnExecute = ActSaveExecute
    end
    object ActAjustar: TAction
      Tag = 1
      Category = '1-Logo'
      Hint = 'Ajustar figura ao quadro'
      ImageIndex = 34
      OnExecute = ActAjustarExecute
    end
  end
end
