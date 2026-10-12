object FrmFilial: TFrmFilial
  Left = 341
  Top = 200
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Filial / Estabelecimento'
  ClientHeight = 476
  ClientWidth = 774
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
  object TSpeedButton
    Left = 0
    Top = 0
    Width = 23
    Height = 22
  end
  object PnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 21
    Height = 476
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 753
    Height = 476
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 2
      Top = 444
      Width = 748
      Height = 5
      Shape = bsTopLine
    end
    object LblFilial: TLabel
      Left = 5
      Top = 454
      Width = 44
      Height = 13
      Caption = 'LblFilial'
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
      Width = 751
      Height = 26
      Align = alTop
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 0
      object PnlDatabase: TPanel
        Left = 0
        Top = 0
        Width = 751
        Height = 26
        Align = alClient
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 0
        object ActToolBDatabase: TActionToolBar
          Left = 0
          Top = 0
          Width = 751
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
      Left = 579
      Top = 448
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 1
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 482 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 666
      Top = 448
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 2
      OnClick = BitBtnCancelClick
      Glyph.Data = {binary 482 bytes}
      NumGlyphs = 2
    end
    object PgCFilial: TPageControl
      Left = 0
      Top = 28
      Width = 749
      Height = 413
      ActivePage = TabSFilial
      TabOrder = 3
      OnChange = PgCFilialChange
      object TabSFilial: TTabSheet
        Caption = '        Filial        '
        object Label2: TLabel
          Left = 3
          Top = 40
          Width = 61
          Height = 13
          Caption = 'CPF / CNPJ:'
        end
        object Label4: TLabel
          Left = 274
          Top = 39
          Width = 45
          Height = 13
          Caption = 'Telefone:'
        end
        object Label5: TLabel
          Left = 365
          Top = 39
          Width = 23
          Height = 13
          Caption = 'FAX:'
        end
        object Label3: TLabel
          Left = 316
          Top = 74
          Width = 35
          Height = 13
          Caption = 'Celular:'
        end
        object SbCEPEndereco: TSpeedButton
          Tag = 2
          Left = 380
          Top = 126
          Width = 22
          Height = 19
          Hint = 'Selecionar o Endere'#231'o a partir do CEP'
          Flat = True
          Glyph.Data = {binary 2066 bytes}
          NumGlyphs = 2
          OnClick = SbCEPClick
        end
        object Label7: TLabel
          Left = 218
          Top = 149
          Width = 24
          Height = 13
          Caption = 'CEP:'
        end
        object SbCEP: TSpeedButton
          Tag = 1
          Left = 279
          Top = 163
          Width = 23
          Height = 19
          Hint = 'Consulta do CEP'
          Flat = True
          Glyph.Data = {binary 2066 bytes}
          NumGlyphs = 2
          OnClick = SbCEPClick
        end
        object Label6: TLabel
          Left = 307
          Top = 147
          Width = 80
          Height = 13
          Caption = 'Cidade / Estado:'
        end
        object SbCidade: TSpeedButton
          Left = 357
          Top = 163
          Width = 23
          Height = 19
          Hint = 'Consulta de Cidades'
          Flat = True
          Glyph.Data = {binary 2066 bytes}
          NumGlyphs = 2
          OnClick = SbCidadeClick
        end
        object Label1: TLabel
          Left = 3
          Top = 3
          Width = 36
          Height = 13
          Caption = 'C'#243'digo:'
        end
        object Label24: TLabel
          Left = 3
          Top = 219
          Width = 201
          Height = 13
          Caption = 'Configura'#231#227'o para envio de E-Mail:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label25: TLabel
          Left = 592
          Top = 233
          Width = 28
          Height = 13
          Caption = 'Porta:'
        end
        object Label26: TLabel
          Left = 301
          Top = 270
          Width = 92
          Height = 13
          Caption = 'Mensagem Padr'#227'o:'
        end
        object SbCNPJFind: TSpeedButton
          Left = 124
          Top = 54
          Width = 23
          Height = 19
          Hint = 'Consulta por CNPJ'
          Flat = True
          Glyph.Data = {binary 2066 bytes}
          NumGlyphs = 2
          ParentShowHint = False
          ShowHint = True
          OnClick = SbCNPJFindClick
        end
        object Label58: TLabel
          Left = 635
          Top = 233
          Width = 56
          Height = 13
          Caption = 'Criptografia:'
        end
        object EdtNr_Documento: TEditMF
          Left = 3
          Top = 54
          Width = 120
          Height = 19
          AutoSize = False
          MaxLength = 18
          TabOrder = 3
          Kind = dkBoth
          Formated = True
          LockOnError = True
          Check = True
        end
        object EdtNr_InscEstadual: TLabeledEdit
          Left = 149
          Top = 54
          Width = 120
          Height = 19
          AutoSelect = False
          AutoSize = False
          EditLabel.Width = 90
          EditLabel.Height = 13
          EditLabel.Caption = 'Inscri'#231#227'o Estadual:'
          LabelSpacing = 2
          MaxLength = 18
          TabOrder = 4
        end
        object EdtNr_Telefone: TMaskEdit
          Left = 274
          Top = 54
          Width = 85
          Height = 19
          AutoSize = False
          EditMask = '(##) #####-####;0; '
          MaxLength = 15
          TabOrder = 5
          Text = '27988224823'
          OnEnter = EdtNr_TelefoneEnter
          OnExit = EdtNr_TelefoneExit
        end
        object EdtNr_FAX: TMaskEdit
          Left = 365
          Top = 54
          Width = 85
          Height = 19
          AutoSize = False
          EditMask = '(##) ####-####;0; '
          MaxLength = 14
          TabOrder = 6
        end
        object EdtNm_Contato: TLabeledEdit
          Left = 3
          Top = 89
          Width = 305
          Height = 19
          AutoSelect = False
          AutoSize = False
          EditLabel.Width = 40
          EditLabel.Height = 13
          EditLabel.Caption = 'Contato:'
          LabelSpacing = 2
          MaxLength = 50
          TabOrder = 7
        end
        object EdtNr_Celular: TMaskEdit
          Left = 316
          Top = 89
          Width = 85
          Height = 19
          AutoSize = False
          EditMask = '(##) #####-####;0; '
          MaxLength = 15
          TabOrder = 8
        end
        object EdtDs_Endereco: TLabeledEdit
          Tag = 1
          Left = 3
          Top = 126
          Width = 375
          Height = 19
          AutoSelect = False
          AutoSize = False
          EditLabel.Width = 49
          EditLabel.Height = 13
          EditLabel.Caption = 'Endere'#231'o:'
          LabelSpacing = 2
          MaxLength = 50
          TabOrder = 9
          OnKeyDown = EdtDs_EnderecoKeyDown
        end
        object EdtDs_Complemento: TLabeledEdit
          Left = 475
          Top = 126
          Width = 253
          Height = 19
          AutoSelect = False
          AutoSize = False
          EditLabel.Width = 67
          EditLabel.Height = 13
          EditLabel.Caption = 'Complemento:'
          LabelSpacing = 2
          MaxLength = 30
          TabOrder = 11
        end
        object EdtNr_CEP: TMaskEdit
          Left = 218
          Top = 163
          Width = 60
          Height = 19
          AutoSize = False
          EditMask = '##.###-###;0; '
          MaxLength = 10
          TabOrder = 13
          OnKeyDown = EdtDs_EnderecoKeyDown
        end
        object EdtNm_Bairro: TLabeledEdit
          Left = 3
          Top = 163
          Width = 210
          Height = 19
          AutoSelect = False
          AutoSize = False
          EditLabel.Width = 30
          EditLabel.Height = 13
          EditLabel.Caption = 'Bairro:'
          LabelSpacing = 2
          MaxLength = 30
          TabOrder = 12
        end
        object EdtCd_Cidade: TCurrencyEdit
          Tag = 1
          Left = 307
          Top = 163
          Width = 50
          Height = 19
          Margins.Left = 2
          Margins.Top = 2
          AutoSize = False
          DecimalPlaces = 0
          DisplayFormat = '###'
          TabOrder = 14
          OnExit = EdtCd_CidadeExit
          OnKeyDown = EdtDs_EnderecoKeyDown
        end
        object EdtNm_Cidade: TEdit
          Left = 380
          Top = 163
          Width = 349
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
          TabOrder = 15
        end
        object EdtDs_Site: TLabeledEdit
          Left = 3
          Top = 200
          Width = 308
          Height = 19
          AutoSelect = False
          AutoSize = False
          EditLabel.Width = 21
          EditLabel.Height = 13
          EditLabel.Caption = 'Site:'
          LabelSpacing = 2
          MaxLength = 50
          TabOrder = 16
        end
        object EdtDs_EMail: TLabeledEdit
          Left = 316
          Top = 200
          Width = 308
          Height = 19
          AutoSelect = False
          AutoSize = False
          EditLabel.Width = 32
          EditLabel.Height = 13
          EditLabel.Caption = 'E-Mail:'
          LabelSpacing = 2
          MaxLength = 50
          TabOrder = 17
        end
        object EdtCd_Filial: TCurrencyEdit
          Left = 3
          Top = 18
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
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
        end
        object EdtNm_Filial: TLabeledEdit
          Left = 48
          Top = 18
          Width = 308
          Height = 19
          AutoSelect = False
          AutoSize = False
          EditLabel.Width = 69
          EditLabel.Height = 13
          EditLabel.Caption = 'Nome da Filial:'
          LabelSpacing = 2
          MaxLength = 50
          TabOrder = 1
          OnChange = EdtNm_FilialChange
        end
        object EdtNm_Abreviado: TLabeledEdit
          Left = 361
          Top = 18
          Width = 190
          Height = 19
          AutoSelect = False
          AutoSize = False
          EditLabel.Width = 82
          EditLabel.Height = 13
          EditLabel.Caption = 'Nome Abreviado:'
          LabelSpacing = 2
          MaxLength = 20
          TabOrder = 2
          OnChange = EdtNm_FilialChange
        end
        object EdtNm_SMTP_EM: TLabeledEdit
          Left = 3
          Top = 248
          Width = 223
          Height = 19
          EditLabel.Width = 64
          EditLabel.Height = 13
          EditLabel.Caption = 'Host (SMTP):'
          LabelSpacing = 2
          MaxLength = 100
          TabOrder = 18
        end
        object EdtNm_Usuario_EM: TLabeledEdit
          Left = 232
          Top = 248
          Width = 217
          Height = 19
          EditLabel.Width = 39
          EditLabel.Height = 13
          EditLabel.Caption = 'Usu'#225'rio:'
          LabelSpacing = 2
          MaxLength = 50
          TabOrder = 19
        end
        object EdtSh_Usuario_EM: TLabeledEdit
          Left = 452
          Top = 248
          Width = 135
          Height = 19
          EditLabel.Width = 34
          EditLabel.Height = 13
          EditLabel.Caption = 'Senha:'
          LabelSpacing = 2
          MaxLength = 50
          PasswordChar = '*'
          TabOrder = 20
        end
        object EdtNr_Porta_EM: TCurrencyEdit
          Tag = 1
          Left = 592
          Top = 248
          Width = 40
          Height = 19
          Margins.Left = 2
          Margins.Top = 2
          AutoSize = False
          DecimalPlaces = 0
          DisplayFormat = '###'
          TabOrder = 21
          OnExit = EdtCd_CidadeExit
          OnKeyDown = EdtDs_EnderecoKeyDown
        end
        object EdtDs_Titulo_EM: TLabeledEdit
          Left = 3
          Top = 285
          Width = 293
          Height = 19
          EditLabel.Width = 118
          EditLabel.Height = 13
          EditLabel.Caption = 'Assunto: (T'#237'tulo Padr'#227'o):'
          LabelSpacing = 2
          MaxLength = 200
          TabOrder = 23
        end
        object Mm_Mensagem_EM: TMemo
          Left = 299
          Top = 285
          Width = 438
          Height = 66
          ScrollBars = ssVertical
          TabOrder = 24
        end
        object EdtDs_Numero: TLabeledEdit
          Left = 406
          Top = 126
          Width = 66
          Height = 19
          AutoSelect = False
          AutoSize = False
          EditLabel.Width = 40
          EditLabel.Height = 13
          EditLabel.Caption = 'N'#250'mero:'
          LabelSpacing = 2
          MaxLength = 10
          TabOrder = 10
        end
        object CbFlCriptografia: TComboBox
          Left = 635
          Top = 248
          Width = 94
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 22
          Text = 'Nenhuma'
          Items.Strings = (
            'Nenhuma'
            'SSL/TLS'
            'STARTTLS'
          )
        end
      end
      object TabSConfig_1: TTabSheet
        Caption = '  Configura'#231#227'o-1 '
        ImageIndex = 1
        object SbTabela: TSpeedButton
          Tag = 2
          Left = 115
          Top = 17
          Width = 22
          Height = 19
          Hint = 'Selecionar Tabela de Pre'#231'o'
          Flat = True
          Glyph.Data = {binary 2066 bytes}
          NumGlyphs = 2
          OnClick = SbTabelaClick
        end
        object Label12: TLabel
          Left = 142
          Top = 2
          Width = 89
          Height = 13
          Caption = 'Confirmar Estoque:'
        end
        object Label13: TLabel
          Left = 4
          Top = 39
          Width = 172
          Height = 13
          Caption = 'Portador Padr'#227'o (Dinheiro / A Vista):'
        end
        object SbPortador: TSpeedButton
          Tag = 1
          Left = 44
          Top = 54
          Width = 23
          Height = 19
          Hint = 'Seleciona Portador'
          Flat = True
          Glyph.Data = {binary 1430 bytes}
          NumGlyphs = 2
          ParentShowHint = False
          ShowHint = True
          OnClick = SbPortadorClick
        end
        object Label19: TLabel
          Left = 4
          Top = 114
          Width = 222
          Height = 13
          Caption = 'Hist'#243'rico para Lan'#231'amento no Caixa - Dinheiro:'
        end
        object SbHistorico: TSpeedButton
          Tag = 1
          Left = 44
          Top = 130
          Width = 23
          Height = 19
          Hint = 'Consulta de Hist'#243'rio'
          Flat = True
          Glyph.Data = {binary 2066 bytes}
          NumGlyphs = 2
          OnClick = SbHistoricoClick
        end
        object Label8: TLabel
          Left = 4
          Top = 190
          Width = 91
          Height = 13
          Caption = 'Grupo de Emitente:'
        end
        object SbGrupo: TSpeedButton
          Left = 45
          Top = 206
          Width = 23
          Height = 19
          Hint = 'Consulta Grupo de Emitente'
          Flat = True
          Glyph.Data = {binary 2066 bytes}
          NumGlyphs = 2
          OnClick = SbGrupoClick
        end
        object Label20: TLabel
          Left = 370
          Top = 190
          Width = 110
          Height = 13
          Caption = 'SubGrupo de Emitente:'
        end
        object SbSubGrupo: TSpeedButton
          Left = 410
          Top = 206
          Width = 23
          Height = 19
          Hint = 'Consulta SubGrupo de Emitente'
          Flat = True
          Glyph.Data = {binary 2066 bytes}
          NumGlyphs = 2
          OnClick = SbSubGrupoClick
        end
        object Label9: TLabel
          Left = 235
          Top = 2
          Width = 141
          Height = 13
          Caption = 'Pedido de Compra das Faltas:'
        end
        object SbCompra: TSpeedButton
          Left = 285
          Top = 17
          Width = 23
          Height = 19
          Hint = 'Consulta Pedido de Compra de Falta'
          Flat = True
          Glyph.Data = {binary 2066 bytes}
          NumGlyphs = 2
          OnClick = SbCompraClick
        end
        object Label15: TLabel
          Left = 4
          Top = 228
          Width = 169
          Height = 13
          Caption = 'CFOP para Or'#231'amento - No Estado:'
        end
        object SbCFOP_In: TSpeedButton
          Tag = 1
          Left = 36
          Top = 242
          Width = 23
          Height = 19
          Hint = 'Seleciona CFOP'
          Flat = True
          Glyph.Data = {binary 1430 bytes}
          NumGlyphs = 2
          ParentShowHint = False
          ShowHint = True
          OnClick = SbCFOP_InClick
        end
        object Label16: TLabel
          Left = 361
          Top = 228
          Width = 191
          Height = 13
          Caption = 'CFOP para Or'#231'amento - Fora do Estado:'
        end
        object SbCFOP_Out: TSpeedButton
          Tag = 7
          Left = 393
          Top = 242
          Width = 23
          Height = 19
          Hint = 'Seleciona CFOP'
          Flat = True
          Glyph.Data = {binary 1430 bytes}
          NumGlyphs = 2
          ParentShowHint = False
          ShowHint = True
          OnClick = SbCFOP_InClick
        end
        object Label23: TLabel
          Left = 380
          Top = 2
          Width = 86
          Height = 13
          Caption = 'Margem de Lucro:'
        end
        object Label49: TLabel
          Left = 372
          Top = 39
          Width = 165
          Height = 13
          Caption = 'Portador Padr'#227'o Cart'#227'o de Cr'#233'dito:'
        end
        object SbPortadorCartao: TSpeedButton
          Tag = 2
          Left = 412
          Top = 54
          Width = 23
          Height = 19
          Hint = 'Seleciona Portador'
          Flat = True
          Glyph.Data = {binary 1430 bytes}
          NumGlyphs = 2
          ParentShowHint = False
          ShowHint = True
          OnClick = SbPortadorClick
        end
        object Label50: TLabel
          Left = 372
          Top = 114
          Width = 265
          Height = 13
          Caption = 'Hist'#243'rico para Lan'#231'amento no Caixa - Cart'#227'o de Cr'#233'dito:'
        end
        object SbHistoricoCartao: TSpeedButton
          Tag = 2
          Left = 412
          Top = 130
          Width = 23
          Height = 19
          Hint = 'Consulta de Hist'#243'rio'
          Flat = True
          Glyph.Data = {binary 2066 bytes}
          NumGlyphs = 2
          OnClick = SbHistoricoClick
        end
        object Label52: TLabel
          Left = 3
          Top = 310
          Width = 146
          Height = 13
          Caption = 'Configura'#231#227'o do SG-PAF:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Visible = False
        end
        object Bevel3: TBevel
          Left = -9
          Top = 306
          Width = 747
          Height = 6
          Shape = bsTopLine
          Visible = False
        end
        object Label53: TLabel
          Left = 146
          Top = 324
          Width = 28
          Height = 13
          Caption = 'Porta:'
          Visible = False
        end
        object Label54: TLabel
          Left = 3
          Top = 361
          Width = 78
          Height = 13
          Caption = 'Atualizar Cliente:'
          Visible = False
        end
        object Label55: TLabel
          Left = 86
          Top = 385
          Width = 83
          Height = 13
          Caption = 'Atualizar Produto:'
          Visible = False
        end
        object Label56: TLabel
          Left = 468
          Top = 2
          Width = 126
          Height = 13
          Caption = 'Intervalo de parcelamento:'
        end
        object Label57: TLabel
          Left = 3
          Top = 264
          Width = 76
          Height = 13
          Caption = 'Analisar Cr'#233'dito:'
        end
        object Label59: TLabel
          Left = 181
          Top = 264
          Width = 144
          Height = 13
          Caption = 'Cor de Preenchimento (fundo):'
        end
        object BvlMoldura_2: TBevel
          Left = 181
          Top = 277
          Width = 61
          Height = 26
          Shape = bsFrame
        end
        object ShpColor: TShape
          Left = 184
          Top = 280
          Width = 54
          Height = 19
          Pen.Style = psClear
          OnMouseDown = ShpColorMouseDown
        end
        object Label60: TLabel
          Left = 3
          Top = 76
          Width = 163
          Height = 13
          Caption = 'Portador Padr'#227'o Cart'#227'o de D'#233'bito:'
        end
        object SbPortadorDebito: TSpeedButton
          Tag = 3
          Left = 44
          Top = 91
          Width = 23
          Height = 19
          Hint = 'Seleciona Portador'
          Flat = True
          Glyph.Data = {binary 1430 bytes}
          NumGlyphs = 2
          ParentShowHint = False
          ShowHint = True
          OnClick = SbPortadorClick
        end
        object Label61: TLabel
          Left = 372
          Top = 76
          Width = 100
          Height = 13
          Caption = 'Portador Padr'#227'o PIX:'
        end
        object SbPortadorPIX: TSpeedButton
          Tag = 4
          Left = 412
          Top = 91
          Width = 23
          Height = 19
          Hint = 'Seleciona Portador'
          Flat = True
          Glyph.Data = {binary 1430 bytes}
          NumGlyphs = 2
          ParentShowHint = False
          ShowHint = True
          OnClick = SbPortadorClick
        end
        object Label62: TLabel
          Left = 5
          Top = 152
          Width = 263
          Height = 13
          Caption = 'Hist'#243'rico para Lan'#231'amento no Caixa - Cart'#227'o de D'#233'bito:'
        end
        object SbHistoricoDebito: TSpeedButton
          Tag = 3
          Left = 45
          Top = 168
          Width = 23
          Height = 19
          Hint = 'Consulta de Hist'#243'rio'
          Flat = True
          Glyph.Data = {binary 2066 bytes}
          NumGlyphs = 2
          OnClick = SbHistoricoClick
        end
        object Label63: TLabel
          Left = 373
          Top = 152
          Width = 200
          Height = 13
          Caption = 'Hist'#243'rico para Lan'#231'amento no Caixa - PIX:'
        end
        object SbHistoricoPIX: TSpeedButton
          Tag = 4
          Left = 413
          Top = 168
          Width = 23
          Height = 19
          Hint = 'Consulta de Hist'#243'rio'
          Flat = True
          Glyph.Data = {binary 2066 bytes}
          NumGlyphs = 2
          OnClick = SbHistoricoClick
        end
        object EdtCd_Tabela: TLabeledEdit
          Tag = 2
          Left = 4
          Top = 17
          Width = 110
          Height = 19
          CharCase = ecUpperCase
          EditLabel.Width = 119
          EditLabel.Height = 13
          EditLabel.Caption = 'Tabela de Pre'#231'o Padr'#227'o:'
          LabelSpacing = 2
          MaxLength = 10
          TabOrder = 0
          OnExit = EdtCd_TabelaExit
          OnKeyDown = EdtDs_EnderecoKeyDown
        end
        object CbEstoque: TComboBox
          Left = 142
          Top = 17
          Width = 56
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          ItemIndex = 1
          TabOrder = 1
          Text = 'N'#227'o'
          Items.Strings = (
            'Sim'
            'N'#227'o'
          )
        end
        object EdtCd_Portador: TCurrencyEdit
          Tag = 1
          Left = 4
          Top = 54
          Width = 40
          Height = 19
          Margins.Left = 2
          Margins.Top = 2
          AutoSize = False
          DecimalPlaces = 0
          DisplayFormat = '#,###'
          TabOrder = 5
          OnExit = EdtCd_PortadorExit
          OnKeyDown = EdtDs_EnderecoKeyDown
        end
        object EdtNm_Portador: TEdit
          Left = 68
          Top = 54
          Width = 299
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
          TabOrder = 7
        end
        object EdtCd_Historico: TCurrencyEdit
          Tag = 1
          Left = 4
          Top = 130
          Width = 40
          Height = 19
          Margins.Left = 2
          Margins.Top = 2
          AutoSize = False
          DecimalPlaces = 0
          DisplayFormat = '###'
          TabOrder = 14
          OnExit = EdtCd_HistoricoExit
          OnKeyDown = EdtDs_EnderecoKeyDown
        end
        object EdtDs_Historico: TEdit
          Left = 67
          Top = 130
          Width = 299
          Height = 19
          TabStop = False
          AutoSize = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 15
        end
        object EdtNr_Licenca: TLabeledEdit
          Tag = 2
          Left = 618
          Top = 17
          Width = 120
          Height = 19
          EditLabel.Width = 96
          EditLabel.Height = 13
          EditLabel.Caption = 'Numero da Licen'#231'a:'
          LabelSpacing = 2
          MaxLength = 20
          TabOrder = 6
          Visible = False
          OnExit = EdtCd_TabelaExit
          OnKeyDown = EdtDs_EnderecoKeyDown
        end
        object EdtCd_Grupo: TCurrencyEdit
          Tag = 4
          Left = 4
          Top = 206
          Width = 40
          Height = 19
          Margins.Left = 2
          Margins.Top = 2
          AutoSize = False
          DecimalPlaces = 0
          DisplayFormat = '###'
          TabOrder = 22
          OnExit = EdtCd_GrupoExit
          OnKeyDown = EdtDs_EnderecoKeyDown
        end
        object EdtNm_Grupo: TEdit
          Left = 68
          Top = 206
          Width = 299
          Height = 19
          TabStop = False
          AutoSize = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 23
        end
        object EdtCd_SubGrupo: TCurrencyEdit
          Tag = 5
          Left = 370
          Top = 206
          Width = 40
          Height = 19
          Margins.Left = 2
          Margins.Top = 2
          AutoSize = False
          DecimalPlaces = 0
          DisplayFormat = '###'
          TabOrder = 24
          OnExit = EdtCd_SubGrupoExit
          OnKeyDown = EdtDs_EnderecoKeyDown
        end
        object EdtNm_SubGrupo: TEdit
          Left = 433
          Top = 206
          Width = 306
          Height = 19
          TabStop = False
          AutoSize = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 25
        end
        object EdtNr_Compra: TCurrencyEdit
          Tag = 6
          Left = 235
          Top = 17
          Width = 50
          Height = 19
          Margins.Left = 2
          Margins.Top = 2
          AutoSize = False
          DecimalPlaces = 0
          DisplayFormat = '###'
          TabOrder = 2
          OnExit = EdtNr_CompraExit
          OnKeyDown = EdtDs_EnderecoKeyDown
        end
        object EdtCd_CFOP_In: TEdit
          Tag = 6
          Left = 4
          Top = 242
          Width = 31
          Height = 19
          MaxLength = 4
          TabOrder = 26
          OnExit = EdtCd_CFOP_InExit
          OnKeyDown = EdtDs_EnderecoKeyDown
        end
        object EdtDs_CFOP_In: TEdit
          Left = 60
          Top = 242
          Width = 299
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
          TabOrder = 27
        end
        object EdtCd_CFOP_Out: TEdit
          Tag = 7
          Left = 361
          Top = 242
          Width = 31
          Height = 19
          MaxLength = 4
          TabOrder = 28
          OnExit = EdtCd_CFOP_InExit
          OnKeyDown = EdtDs_EnderecoKeyDown
        end
        object EdtDs_CFOP_Out: TEdit
          Left = 416
          Top = 242
          Width = 306
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
          TabOrder = 29
        end
        object EdtPr_Margem: TCurrencyEdit
          Tag = 6
          Left = 380
          Top = 17
          Width = 50
          Height = 19
          Margins.Left = 2
          Margins.Top = 2
          AutoSize = False
          DecimalPlaces = 0
          DisplayFormat = '###'
          TabOrder = 3
          OnExit = EdtNr_CompraExit
          OnKeyDown = EdtDs_EnderecoKeyDown
        end
        object EdtCd_PortadorCartao: TCurrencyEdit
          Tag = 2
          Left = 372
          Top = 54
          Width = 40
          Height = 19
          Margins.Left = 2
          Margins.Top = 2
          AutoSize = False
          DecimalPlaces = 0
          DisplayFormat = '#,###'
          TabOrder = 8
          OnExit = EdtCd_PortadorExit
          OnKeyDown = EdtDs_EnderecoKeyDown
        end
        object EdtNm_PortadorCartao: TEdit
          Left = 436
          Top = 54
          Width = 299
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
        object EdtCd_HistoricoCartao: TCurrencyEdit
          Tag = 2
          Left = 372
          Top = 130
          Width = 40
          Height = 19
          Margins.Left = 2
          Margins.Top = 2
          AutoSize = False
          DecimalPlaces = 0
          DisplayFormat = '###'
          TabOrder = 16
          OnExit = EdtCd_HistoricoExit
          OnKeyDown = EdtDs_EnderecoKeyDown
        end
        object EdtDs_HistoricoCartao: TEdit
          Left = 435
          Top = 130
          Width = 299
          Height = 19
          TabStop = False
          AutoSize = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 17
        end
        object EdtNm_PAF_Server: TLabeledEdit
          Left = 3
          Top = 339
          Width = 140
          Height = 20
          AutoSelect = False
          AutoSize = False
          EditLabel.Width = 42
          EditLabel.Height = 13
          EditLabel.Caption = 'Servidor:'
          LabelSpacing = 2
          MaxLength = 50
          TabOrder = 31
          Visible = False
          OnChange = EdtNm_FilialChange
        end
        object EdtNm_PAF_Usuario: TLabeledEdit
          Left = 200
          Top = 339
          Width = 140
          Height = 20
          AutoSelect = False
          AutoSize = False
          EditLabel.Width = 39
          EditLabel.Height = 13
          EditLabel.Caption = 'Usu'#225'rio:'
          LabelSpacing = 2
          MaxLength = 20
          TabOrder = 33
          Visible = False
          OnChange = EdtNm_FilialChange
        end
        object EdtNr_PAF_Porta: TCurrencyEdit
          Tag = 6
          Left = 146
          Top = 339
          Width = 50
          Height = 20
          Margins.Left = 2
          Margins.Top = 2
          AutoSize = False
          DecimalPlaces = 0
          DisplayFormat = '###'
          TabOrder = 32
          Visible = False
          OnExit = EdtNr_CompraExit
          OnKeyDown = EdtDs_EnderecoKeyDown
        end
        object EdtDs_PAF_Senha: TLabeledEdit
          Left = 343
          Top = 339
          Width = 140
          Height = 20
          AutoSelect = False
          AutoSize = False
          EditLabel.Width = 34
          EditLabel.Height = 13
          EditLabel.Caption = 'Senha:'
          LabelSpacing = 2
          MaxLength = 20
          TabOrder = 34
          Visible = False
          OnChange = EdtNm_FilialChange
        end
        object EdtNm_PAF_Banco: TLabeledEdit
          Left = 487
          Top = 339
          Width = 140
          Height = 20
          AutoSelect = False
          AutoSize = False
          EditLabel.Width = 129
          EditLabel.Height = 13
          EditLabel.Caption = 'Nome do Banco de Dados:'
          LabelSpacing = 2
          MaxLength = 20
          TabOrder = 35
          Visible = False
          OnChange = EdtNm_FilialChange
        end
        object CbPAF_Cliente: TComboBox
          Left = 3
          Top = 399
          Width = 56
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 36
          Text = 'Sim'
          Visible = False
          Items.Strings = (
            'Sim'
            'N'#227'o'
          )
        end
        object CbPAF_Produto: TComboBox
          Left = 86
          Top = 400
          Width = 56
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 37
          Text = 'Sim'
          Visible = False
          Items.Strings = (
            'Sim'
            'N'#227'o'
          )
        end
        object CbIntervalo: TComboBox
          Left = 468
          Top = 16
          Width = 145
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 4
          Text = 'Meses'
          Items.Strings = (
            'Meses'
            'Quinzena'
            'Dezenas'
            'Semanal'
            'Intervalo Especifico'
            '28 dias'
          )
        end
        object CbAnalisaCredito: TComboBox
          Left = 3
          Top = 279
          Width = 172
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          ItemIndex = 1
          TabOrder = 30
          Text = 'No fechamento do or'#231'amento'
          Items.Strings = (
            'Na emiss'#227'o do or'#231'amento'
            'No fechamento do or'#231'amento'
          )
        end
        object EdtCd_PortadorDebito: TCurrencyEdit
          Tag = 3
          Left = 4
          Top = 91
          Width = 40
          Height = 19
          Margins.Left = 2
          Margins.Top = 2
          AutoSize = False
          DecimalPlaces = 0
          DisplayFormat = '#,###'
          TabOrder = 10
          OnExit = EdtCd_PortadorExit
          OnKeyDown = EdtDs_EnderecoKeyDown
        end
        object EdtNm_PortadorDebito: TEdit
          Left = 68
          Top = 91
          Width = 299
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
        object EdtCd_PortadorPIX: TCurrencyEdit
          Tag = 4
          Left = 372
          Top = 91
          Width = 40
          Height = 19
          Margins.Left = 2
          Margins.Top = 2
          AutoSize = False
          DecimalPlaces = 0
          DisplayFormat = '#,###'
          TabOrder = 12
          OnExit = EdtCd_PortadorExit
          OnKeyDown = EdtDs_EnderecoKeyDown
        end
        object EdtNm_PortadorPIX: TEdit
          Left = 434
          Top = 91
          Width = 299
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
        object EdtCd_HistoricoDebito: TCurrencyEdit
          Tag = 3
          Left = 5
          Top = 168
          Width = 40
          Height = 19
          Margins.Left = 2
          Margins.Top = 2
          AutoSize = False
          DecimalPlaces = 0
          DisplayFormat = '###'
          TabOrder = 18
          OnExit = EdtCd_HistoricoExit
          OnKeyDown = EdtDs_EnderecoKeyDown
        end
        object EdtDs_HistoricoDebito: TEdit
          Left = 68
          Top = 168
          Width = 299
          Height = 19
          TabStop = False
          AutoSize = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 19
        end
        object EdtCd_HistoricoPIX: TCurrencyEdit
          Tag = 4
          Left = 373
          Top = 168
          Width = 40
          Height = 19
          Margins.Left = 2
          Margins.Top = 2
          AutoSize = False
          DecimalPlaces = 0
          DisplayFormat = '###'
          TabOrder = 20
          OnExit = EdtCd_HistoricoExit
          OnKeyDown = EdtDs_EnderecoKeyDown
        end
        object EdtDs_HistoricoPIX: TEdit
          Left = 435
          Top = 168
          Width = 299
          Height = 19
          TabStop = False
          AutoSize = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 21
        end
      end
      object TabSConfig_2: TTabSheet
        Caption = 'Configura'#231#227'o-2'
        ImageIndex = 5
        object Label10: TLabel
          Left = 511
          Top = 1
          Width = 219
          Height = 13
          Caption = 'Figura do Carimbo (Dimens'#227'o 90 x 220 pixel''''s):'
          Visible = False
        end
        object Bevel1: TBevel
          Left = 511
          Top = 16
          Width = 226
          Height = 95
          Shape = bsFrame
          Visible = False
        end
        object ImgCarimbo: TImage
          Left = 513
          Top = 18
          Width = 220
          Height = 90
          Center = True
          Visible = False
        end
        object Label14: TLabel
          Left = 2
          Top = 1
          Width = 156
          Height = 13
          Caption = 'Texto do Rodap'#233' do Or'#231'amento:'
        end
        object Label18: TLabel
          Left = 2
          Top = 112
          Width = 90
          Height = 13
          Caption = 'Optante SIMPLES:'
        end
        object Label21: TLabel
          Left = 2
          Top = 149
          Width = 175
          Height = 13
          Caption = 'Texto para impress'#227'o na Nota Fiscal:'
        end
        object Label39: TLabel
          Left = 2
          Top = 280
          Width = 86
          Height = 13
          Caption = 'Cota'#231#227'o do Dolar:'
        end
        object LblRepresentante: TLabel
          Left = 611
          Top = 315
          Width = 126
          Height = 13
          Caption = 'M'#243'dulo de Representante:'
        end
        object Label36: TLabel
          Left = 340
          Top = 278
          Width = 187
          Height = 13
          Caption = 'Somar Subst.Tributaria ao total da nota:'
        end
        object Label40: TLabel
          Left = 2
          Top = 315
          Width = 54
          Height = 13
          Caption = 'Utiliza NFe:'
        end
        object Label41: TLabel
          Left = 235
          Top = 315
          Width = 106
          Height = 13
          Caption = 'CST PIS / Percentual:'
        end
        object Label42: TLabel
          Left = 347
          Top = 315
          Width = 118
          Height = 13
          Caption = 'CST Cofins / Percentual:'
        end
        object Label43: TLabel
          Left = 469
          Top = 315
          Width = 140
          Height = 13
          Caption = 'Separar comiss'#227'o de Jun'#231#227'o:'
        end
        object Label45: TLabel
          Left = 61
          Top = 315
          Width = 86
          Height = 13
          Caption = 'Regime Tribut'#225'rio:'
        end
        object Label48: TLabel
          Left = 531
          Top = 278
          Width = 75
          Height = 13
          Caption = 'Frete por conta:'
        end
        object Label51: TLabel
          Left = 94
          Top = 112
          Width = 126
          Height = 13
          Caption = '% para destaque do ICMS:'
        end
        object MmRodape: TMemo
          Left = 2
          Top = 16
          Width = 506
          Height = 95
          ScrollBars = ssVertical
          TabOrder = 0
        end
        object CbSimples: TComboBox
          Left = 2
          Top = 127
          Width = 56
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 1
          Text = 'Sim'
          Items.Strings = (
            'Sim'
            'N'#227'o'
          )
        end
        object MmSimples: TMemo
          Left = 2
          Top = 164
          Width = 735
          Height = 112
          ScrollBars = ssVertical
          TabOrder = 3
        end
        object EdtVl_Dolar: TCurrencyEdit
          Left = 2
          Top = 294
          Width = 75
          Height = 19
          Margins.Left = 2
          Margins.Top = 2
          AutoSize = False
          DecimalPlaces = 3
          DisplayFormat = '#,##0.00#'
          TabOrder = 4
        end
        object EdtDs_Orcamento: TLabeledEdit
          Tag = 2
          Left = 92
          Top = 294
          Width = 120
          Height = 19
          EditLabel.Width = 100
          EditLabel.Height = 13
          EditLabel.Caption = 'Texto do Or'#231'amento:'
          LabelSpacing = 2
          MaxLength = 20
          TabOrder = 5
          OnExit = EdtCd_TabelaExit
          OnKeyDown = EdtDs_EnderecoKeyDown
        end
        object CbRepresentante: TComboBox
          Left = 611
          Top = 330
          Width = 56
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          ItemIndex = 1
          TabOrder = 6
          Text = 'N'#227'o'
          Items.Strings = (
            'Sim'
            'N'#227'o'
          )
        end
        object EdtDs_Custo: TLabeledEdit
          Tag = 2
          Left = 215
          Top = 294
          Width = 120
          Height = 19
          EditLabel.Width = 121
          EditLabel.Height = 13
          EditLabel.Caption = 'Texto do Custo Adicional:'
          LabelSpacing = 2
          MaxLength = 20
          TabOrder = 7
          OnExit = EdtCd_TabelaExit
          OnKeyDown = EdtDs_EnderecoKeyDown
        end
        object CbSomaST: TComboBox
          Left = 340
          Top = 293
          Width = 56
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          TabOrder = 8
          Items.Strings = (
            'Sim'
            'N'#227'o'
          )
        end
        object CbNFe: TComboBox
          Left = 2
          Top = 330
          Width = 56
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 9
          Text = 'Sim'
          Items.Strings = (
            'Sim'
            'N'#227'o'
          )
        end
        object EdtCd_CST_PIS: TEdit
          Tag = 7
          Left = 235
          Top = 330
          Width = 31
          Height = 19
          MaxLength = 4
          TabOrder = 10
        end
        object EdtPr_PIS: TCurrencyEdit
          Tag = 6
          Left = 269
          Top = 330
          Width = 49
          Height = 19
          Margins.Left = 2
          Margins.Top = 2
          AutoSize = False
          DecimalPlaces = 3
          DisplayFormat = '##0.00#'
          TabOrder = 11
          OnExit = EdtNr_CompraExit
          OnKeyDown = EdtDs_EnderecoKeyDown
        end
        object EdtCd_CST_Cofins: TEdit
          Tag = 7
          Left = 347
          Top = 330
          Width = 31
          Height = 19
          MaxLength = 4
          TabOrder = 12
        end
        object EdtPr_Cofins: TCurrencyEdit
          Tag = 6
          Left = 381
          Top = 330
          Width = 49
          Height = 19
          Margins.Left = 2
          Margins.Top = 2
          AutoSize = False
          DecimalPlaces = 3
          DisplayFormat = '##0.00#'
          TabOrder = 13
          OnExit = EdtNr_CompraExit
          OnKeyDown = EdtDs_EnderecoKeyDown
        end
        object CbComissaoJuncao: TComboBox
          Left = 469
          Top = 330
          Width = 56
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          ItemIndex = 1
          TabOrder = 14
          Text = 'N'#227'o'
          Items.Strings = (
            'Sim'
            'N'#227'o'
          )
        end
        object CbRegime: TComboBox
          Left = 61
          Top = 330
          Width = 170
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 15
          Text = '1 - Simples Nacional'
          OnEnter = CbRegimeEnter
          OnExit = CbRegimeExit
          Items.Strings = (
            '1 - Simples Nacional'
            '2 - Simples Nacional - Excesso de Receita'
            '3 - Regime Normal'
          )
        end
        object CbFrete: TComboBox
          Left = 531
          Top = 292
          Width = 84
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          ItemIndex = 1
          TabOrder = 16
          Text = 'Destinat'#225'rio'
          Items.Strings = (
            'Emitente'
            'Destinat'#225'rio'
          )
        end
        object EdtPr_Simples: TCurrencyEdit
          Left = 94
          Top = 126
          Width = 49
          Height = 19
          Hint = 'Para CSOSN 101'
          Margins.Left = 2
          Margins.Top = 2
          AutoSize = False
          DecimalPlaces = 3
          DisplayFormat = '#,##0.00#'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
        end
      end
      object TabSImgLogo: TTabSheet
        Caption = 'Imagem da Marca D'''#193'gua'
        ImageIndex = 2
        object BvlMoldura: TBevel
          Left = 4
          Top = 16
          Width = 635
          Height = 205
          Shape = bsFrame
        end
        object ImgLogo: TImage
          Left = 6
          Top = 18
          Width = 630
          Height = 200
          Center = True
        end
        object Label11: TLabel
          Left = 4
          Top = 1
          Width = 294
          Height = 13
          Caption = 'Figura da Marca D'''#193'gua (Dimens'#227'o m'#225'xima: 200 x 630 pixels):'
        end
      end
      object TabSDupMercantil: TTabSheet
        Caption = ' Duplicata Mercantil /Recibo'
        ImageIndex = 3
        object Bevel2: TBevel
          Left = 4
          Top = 16
          Width = 505
          Height = 155
          Shape = bsFrame
        end
        object ImgDupMercantil: TImage
          Left = 6
          Top = 18
          Width = 500
          Height = 150
          Center = True
        end
        object Label17: TLabel
          Left = 4
          Top = 1
          Width = 208
          Height = 13
          Caption = 'Figura (Dimens'#227'o m'#225'xima: 150 x 500 pixels):'
        end
        object Label46: TLabel
          Left = 3
          Top = 172
          Width = 53
          Height = 13
          Caption = 'N'#186' de Vias:'
        end
        object EdtNr_Duplicata: TCurrencyEdit
          Tag = 6
          Left = 3
          Top = 187
          Width = 50
          Height = 19
          Margins.Left = 2
          Margins.Top = 2
          AutoSize = False
          DecimalPlaces = 0
          DisplayFormat = '###'
          TabOrder = 0
          OnExit = EdtNr_CompraExit
          OnKeyDown = EdtDs_EnderecoKeyDown
        end
      end
      object TabSCabecalho: TTabSheet
        Caption = '    Cabe'#231'alho / Op'#231#245'es de Impress'#227'o    '
        ImageIndex = 4
        object BvlMarcaCabecalho: TBevel
          Left = 4
          Top = 16
          Width = 725
          Height = 205
          Shape = bsFrame
        end
        object ImgCabecalho: TImage
          Left = 6
          Top = 18
          Width = 720
          Height = 200
          Center = True
        end
        object Label22: TLabel
          Left = 4
          Top = 1
          Width = 292
          Height = 13
          Caption = 'Figura dos Cabe'#231'alhos (Dimens'#227'o sugerida: 200 x 742 pixels):'
        end
        object PnlImpressao: TPanel
          Left = 0
          Top = 225
          Width = 741
          Height = 160
          Align = alBottom
          BevelOuter = bvNone
          ParentColor = True
          TabOrder = 0
          object Label27: TLabel
            Left = 10
            Top = 14
            Width = 61
            Height = 13
            Caption = 'Com Figuras:'
          end
          object Label28: TLabel
            Left = 74
            Top = 14
            Width = 122
            Height = 13
            Caption = 'Tamanho da figura (pixel):'
          end
          object LblDetalhe: TLabel
            Left = 357
            Top = 87
            Width = 74
            Height = 13
            Caption = 'Detalhamentos:'
          end
          object Label30: TLabel
            Left = 230
            Top = 14
            Width = 47
            Height = 13
            Caption = #189' P'#225'gina:'
          end
          object LblMargem: TLabel
            Left = 577
            Top = 14
            Width = 41
            Height = 13
            Caption = 'Margem:'
          end
          object LblRemover: TLabel
            Left = 10
            Top = 50
            Width = 80
            Height = 13
            Caption = 'Remover Linhas:'
          end
          object Label31: TLabel
            Left = 354
            Top = 14
            Width = 69
            Height = 13
            Caption = 'Transportador:'
          end
          object Label32: TLabel
            Left = 428
            Top = 14
            Width = 74
            Height = 13
            Caption = 'End. Cobran'#231'a:'
          end
          object Label33: TLabel
            Left = 506
            Top = 14
            Width = 65
            Height = 13
            Caption = 'End. Entrega:'
          end
          object Label34: TLabel
            Left = 294
            Top = 14
            Width = 27
            Height = 13
            Caption = 'Logo:'
          end
          object Label35: TLabel
            Left = 5
            Top = 0
            Width = 248
            Height = 13
            Caption = 'Op'#231#245'es padr'#227'o para emiss'#227'o do Or'#231'amento'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object LblMedida: TLabel
            Left = 203
            Top = 87
            Width = 75
            Height = 13
            Caption = 'Medida Padr'#227'o:'
            FocusControl = CbMedida
          end
          object LblArea: TLabel
            Left = 292
            Top = 87
            Width = 63
            Height = 13
            Caption = #193'rea M'#237'nima:'
          end
          object LblDecimais: TLabel
            Left = 105
            Top = 87
            Width = 95
            Height = 13
            Caption = 'Decimais para '#193'rea:'
          end
          object Label29: TLabel
            Left = 93
            Top = 50
            Width = 165
            Height = 13
            Caption = 'Prazo no Or'#231'amento (Vencimento):'
          end
          object Label37: TLabel
            Left = 351
            Top = 50
            Width = 114
            Height = 13
            Caption = 'Tamanho do Formulario:'
          end
          object Label38: TLabel
            Left = 468
            Top = 50
            Width = 165
            Height = 13
            Caption = 'Na impress'#227'o de conjunto na nota:'
          end
          object Label44: TLabel
            Left = 263
            Top = 50
            Width = 85
            Height = 13
            Caption = 'Prazo de Entrega:'
          end
          object LblEtqProducao: TLabel
            Left = 433
            Top = 87
            Width = 91
            Height = 13
            Caption = 'Etiqueta Produ'#231#227'o:'
          end
          object Label47: TLabel
            Left = 10
            Top = 87
            Width = 93
            Height = 13
            Caption = 'Decimais para ECF:'
          end
          object Lbl1ProjPagina: TLabel
            Left = 570
            Top = 86
            Width = 99
            Height = 13
            Caption = '1 Projeto por P'#225'gina:'
          end
          object LblTotAmbiente: TLabel
            Left = 9
            Top = 122
            Width = 89
            Height = 13
            Caption = 'Total do Ambiente:'
          end
          object CbFiguras: TComboBox
            Left = 10
            Top = 29
            Width = 60
            Height = 21
            Style = csDropDownList
            ItemHeight = 13
            ItemIndex = 0
            TabOrder = 0
            Text = 'Sim'
            Items.Strings = (
              'Sim'
              'N'#227'o'
            )
          end
          object CbAjusta: TComboBox
            Left = 74
            Top = 29
            Width = 152
            Height = 21
            Style = csDropDownList
            ItemHeight = 13
            ItemIndex = 0
            TabOrder = 1
            Text = 'Minimo - 150 x 200'
            Items.Strings = (
              'Minimo - 150 x 200'
              'Medio - 250 x 350'
              'M'#225'xino - 360 x 600'
              'Ajustar (m'#225'ximo 360 x 600)'
            )
          end
          object CbDetalhe: TComboBox
            Left = 358
            Top = 101
            Width = 60
            Height = 21
            Style = csDropDownList
            ItemHeight = 13
            ItemIndex = 0
            TabOrder = 17
            Text = 'Sim'
            Items.Strings = (
              'Sim'
              'N'#227'o'
            )
          end
          object CbMeiaPag: TComboBox
            Left = 230
            Top = 29
            Width = 60
            Height = 21
            Style = csDropDownList
            ItemHeight = 13
            ItemIndex = 1
            TabOrder = 2
            Text = 'N'#227'o'
            Items.Strings = (
              'Sim'
              'N'#227'o'
            )
          end
          object CbMargem: TComboBox
            Left = 577
            Top = 29
            Width = 60
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
          object CbRemover: TComboBox
            Left = 10
            Top = 65
            Width = 60
            Height = 21
            Style = csDropDownList
            ItemHeight = 13
            ItemIndex = 1
            TabOrder = 8
            Text = 'N'#227'o'
            Items.Strings = (
              'Sim'
              'N'#227'o'
            )
          end
          object CbTransportador: TComboBox
            Left = 354
            Top = 29
            Width = 60
            Height = 21
            Style = csDropDownList
            ItemHeight = 13
            ItemIndex = 0
            TabOrder = 4
            Text = 'Sim'
            Items.Strings = (
              'Sim'
              'N'#227'o'
            )
          end
          object CbCobranca: TComboBox
            Left = 428
            Top = 29
            Width = 60
            Height = 21
            Style = csDropDownList
            ItemHeight = 13
            ItemIndex = 0
            TabOrder = 5
            Text = 'Sim'
            Items.Strings = (
              'Sim'
              'N'#227'o'
            )
          end
          object CbEntrega: TComboBox
            Left = 506
            Top = 29
            Width = 60
            Height = 21
            Style = csDropDownList
            ItemHeight = 13
            ItemIndex = 0
            TabOrder = 6
            Text = 'Sim'
            Items.Strings = (
              'Sim'
              'N'#227'o'
            )
          end
          object CbLogo: TComboBox
            Left = 294
            Top = 29
            Width = 60
            Height = 21
            Style = csDropDownList
            ItemHeight = 13
            ItemIndex = 0
            TabOrder = 3
            Text = 'Sim'
            Items.Strings = (
              'Sim'
              'N'#227'o'
            )
          end
          object CbMedida: TComboBox
            Left = 203
            Top = 101
            Width = 85
            Height = 21
            Style = csDropDownList
            ItemHeight = 13
            ItemIndex = 0
            MaxLength = 30
            Sorted = True
            TabOrder = 15
            Text = 'Centimetros'
            Items.Strings = (
              'Centimetros'
              'Metros'
              'Milimetros'
            )
          end
          object EdtQt_Area_Minima: TCurrencyEdit
            Left = 292
            Top = 101
            Width = 44
            Height = 19
            Margins.Left = 2
            Margins.Top = 2
            AutoSize = False
            DisplayFormat = '#,##0.00'
            TabOrder = 16
          end
          object EdtNr_Area_Decimal: TCurrencyEdit
            Left = 105
            Top = 101
            Width = 44
            Height = 19
            Margins.Left = 2
            Margins.Top = 2
            AutoSize = False
            DecimalPlaces = 0
            DisplayFormat = '#'
            TabOrder = 14
          end
          object CbPrazoEntrega: TComboBox
            Left = 93
            Top = 65
            Width = 167
            Height = 21
            Style = csDropDownList
            ItemHeight = 13
            ItemIndex = 0
            TabOrder = 9
            Text = 'Somente o Prazo em dias'
            Items.Strings = (
              'Somente o Prazo em dias'
              'Data - a partir da emiss'#227'o'
              'Data - a partir da confirma'#231#227'o'
            )
          end
          object CbFormulario: TComboBox
            Left = 352
            Top = 65
            Width = 86
            Height = 21
            Style = csDropDownList
            ItemHeight = 13
            ItemIndex = 0
            TabOrder = 11
            Text = 'A4'
            Items.Strings = (
              'A4'
              'Officio'
              'Carta'
            )
          end
          object CbFlConjunto: TComboBox
            Left = 468
            Top = 65
            Width = 165
            Height = 21
            Style = csDropDownList
            ItemHeight = 13
            ItemIndex = 0
            TabOrder = 12
            Text = 'Imprimir os itens do conjunto'
            Items.Strings = (
              'Imprimir os itens do conjunto'
              'Imprimir o nome do conjunto'
            )
          end
          object EdtNr_PrazoEntrega: TCurrencyEdit
            Left = 263
            Top = 65
            Width = 44
            Height = 19
            Margins.Left = 2
            Margins.Top = 2
            AutoSize = False
            DecimalPlaces = 0
            DisplayFormat = '#'
            TabOrder = 10
          end
          object CbEtqProducao: TComboBox
            Left = 434
            Top = 101
            Width = 134
            Height = 21
            Style = csDropDownList
            ItemHeight = 13
            ItemIndex = 0
            TabOrder = 18
            Text = 'Modelo 1 - 6 x 10'
            Items.Strings = (
              'Modelo 1 - 6 x 10'
              'Modelo 2 - 7 x 10'
              'Modelo 3 - 6 x 10'
              'Modelo 4 - 6 x 10'
              'Modelo 5 - 7 x 10'
              'Modelo 6 - 7 x 10 VA'
              'Modelo 7 - 6 x 10 WG'
            )
          end
          object EdtNr_ECF_Decimal: TCurrencyEdit
            Left = 10
            Top = 101
            Width = 44
            Height = 19
            Margins.Left = 2
            Margins.Top = 2
            AutoSize = False
            DecimalPlaces = 0
            DisplayFormat = '#'
            TabOrder = 13
          end
          object Cb1ProjPagina: TComboBox
            Left = 570
            Top = 101
            Width = 60
            Height = 21
            Style = csDropDownList
            ItemHeight = 13
            ItemIndex = 1
            TabOrder = 19
            Text = 'N'#227'o'
            Items.Strings = (
              'Sim'
              'N'#227'o'
            )
          end
          object CbFlTotAmbiente: TComboBox
            Left = 10
            Top = 136
            Width = 60
            Height = 21
            Style = csDropDownList
            ItemHeight = 13
            ItemIndex = 0
            TabOrder = 20
            Text = 'Sim'
            Items.Strings = (
              'Sim'
              'N'#227'o'
            )
          end
        end
      end
    end
    object SctReport: TSctReport
      Left = 387
      Top = 429
      Width = 82
      Height = 44
      HorzScrollBar.Visible = False
      VertScrollBar.Visible = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      Visible = False
      Minimized = True
      Prompt = True
      AutoRun = False
      SuppressStatus = False
      PixelsPerInch = 96
      STop = 5
      SLeft = 5
      SWidth = 836
      SHeight = 581
      MTop = 429
      MLeft = 387
      SAlign = alNone
      Version = vAce1_0
      object ReportPage: TSctGrouppage
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
        PageSetup.PreviewSettings.Zoom = azHeight
        BorderType = btNone
        Description = 'Grupos de Estoque'
        CloseDataSet = False
        DataRange = drAllRecords
        OmitLastPgFt = False
        Head = ReportHeaderBand
        Detail = DetailBand
        Foot = ReportFooterBand
        PageHead = PageHeaderBand
        PageFoot = PageFooterBand
        DataSource = DsReport
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
        object DataSourceGuide: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = DsReport
        end
        object DataSourceGuide1: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = DmMaster.DsUsuario
        end
        object DataSourceGuide2: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = DmMaster.DsFilial
        end
        object DataSourceGuide3: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = FrmFoto_Grupo_Find.DsFind
        end
        object adodsfilialDp_FilialVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_Filial'
          DataSource = DmMaster.DsFilial
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object DataSourceGuide4: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = FrmCidade_Find.DsFind
        end
        object adodsreportcd_filialVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'cd_filial'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportnm_filialVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nm_filial'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportnm_abreviadoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nm_abreviado'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportnr_telefoneVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nr_telefone'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportnr_faxVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nr_fax'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object TotalOfcd_filial: TSctTotalvar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Variable = adodsreportcd_filialVar
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidTotalVar
        end
        object DataSourceGuide5: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = FrmProduto_Tabela_View.DsTabela
        end
        object DataSourceGuide6: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = FrmPortador_Find.DsFind
        end
        object DataSourceGuide7: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = FrmHistorico_Find.DsFind
        end
        object DataSourceGuide8: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = FrmCEP.DsLogradouro
        end
        object DataSourceGuide9: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = FrmCEP.DsCEP
        end
        object DataSourceGuide10: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = FrmCEP.DsBairro
        end
        object DataSourceGuide11: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = FrmCFOP_Find.DsFind
        end
        object DataSourceGuide12: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = DmMaster.DsConexao
        end
        object DataSourceGuide13: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = DmMaster.DsConecadoMes
        end
        object ReportHeaderBand: TSctBand
          Left = 0
          Top = 0
          Width = 748
          Height = 5
          ParentColor = True
          BandName = 'Report Header'
          Updatelevel = ReportHeaderBandlevel
          Visible = False
        end
        object PageHeaderBand: TSctBand
          Left = 0
          Top = 20
          Width = 748
          Height = 39
          ParentColor = True
          BandName = 'Page Header'
          Updatelevel = PageHeaderBandlevel
          object SctTitle: TSctvarlabel
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
            Caption = 'Filial'
          end
          object Sctvarlabel1: TSctvarlabel
            Left = 601
            Top = 1
            Width = 31
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Data:'
          end
          object Sctvarlabel2: TSctvarlabel
            Left = 634
            Top = 1
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = svarDateTime
            DataFormat.DisplayFormat = 'dd/mm/yyyy'
          end
          object Sctvarlabel3: TSctvarlabel
            Left = 598
            Top = 18
            Width = 34
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Hora:'
          end
          object Sctvarlabel4: TSctvarlabel
            Left = 634
            Top = 18
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = svarDateTime
            DataFormat.DisplayFormat = 'hh:mm:ss'
          end
          object SctLine1: TSctLine
            Left = 0
            Top = 31
            Width = 698
            Height = 7
          end
        end
        object DetailBand: TSctBand
          Left = 0
          Top = 109
          Width = 748
          Height = 18
          ParentColor = True
          BandName = 'Detail'
          Updatelevel = DetailBandlevel
          object Sctvarlabel7: TSctvarlabel
            Left = 0
            Top = 0
            Width = 38
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsreportcd_filialVar
          end
          object Sctvarlabel8: TSctvarlabel
            Left = 43
            Top = 0
            Width = 228
            Height = 17
            Variable = adodsreportnm_filialVar
          end
          object Sctvarlabel9: TSctvarlabel
            Left = 273
            Top = 0
            Width = 153
            Height = 17
            Variable = adodsreportnm_abreviadoVar
          end
          object Sctvarlabel16: TSctvarlabel
            Left = 433
            Top = 0
            Width = 80
            Height = 17
            Variable = adodsreportnr_telefoneVar
            DataFormat.DisplayFormat = '(##) ####-####;0; '
          end
          object Sctvarlabel18: TSctvarlabel
            Left = 520
            Top = 1
            Width = 80
            Height = 17
            Variable = adodsreportnr_faxVar
            DataFormat.DisplayFormat = '(##) ####-####;0; '
          end
        end
        object PageFooterBand: TSctBand
          Left = 0
          Top = 142
          Width = 748
          Height = 20
          ParentColor = True
          BandName = 'Page Footer'
          Updatelevel = PageFooterBandlevel
          object SctLine4: TSctLine
            Left = 0
            Top = 1
            Width = 698
            Height = 7
            AlignVertical = laTop
          end
          object Sctvarlabel11: TSctvarlabel
            Left = 2
            Top = 2
            Width = 344
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            Variable = adodsfilialDp_FilialVar
          end
          object Sctvarlabel12: TSctvarlabel
            Left = 616
            Top = 2
            Width = 44
            Height = 17
            AlignHorizontal = laRight
            Caption = 'P'#225'gina:'
          end
          object Sctvarlabel13: TSctvarlabel
            Left = 663
            Top = 2
            Width = 35
            Height = 17
            AlignHorizontal = laRight
            Variable = svarPage
            DataFormat.DisplayFormat = '#,###'
          end
        end
        object ReportFooterBand: TSctBand
          Left = 0
          Top = 177
          Width = 748
          Height = 20
          ParentColor = True
          BandName = 'Report Footer'
          Updatelevel = ReportFooterBandlevel
          object SctLine5: TSctLine
            Left = 615
            Top = 1
            Width = 81
            Height = 5
            AlignVertical = laTop
          end
          object SctTotalvarLabel1: TSctTotalvarLabel
            Left = 663
            Top = 3
            Width = 35
            Height = 17
            TotalVariable = TotalOfcd_filial
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
          object Sctvarlabel14: TSctvarlabel
            Left = 620
            Top = 3
            Width = 37
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
        object PageHeaderBandSub: TSctSubBand
          Left = 0
          Top = 74
          Width = 748
          Height = 20
          Color = 16316664
          BandName = 'PageHeaderBandSub'
          Updatelevel = PageHeaderBandlevel
          Band = PageHeaderBand
          Above = False
          object SctLine2: TSctLine
            Left = 0
            Top = 13
            Width = 698
            Height = 7
          end
          object Sctvarlabel5: TSctvarlabel
            Left = 0
            Top = 0
            Width = 38
            Height = 17
            AlignHorizontal = laRight
            Caption = 'C'#243'digo'
          end
          object Sctvarlabel6: TSctvarlabel
            Left = 43
            Top = 0
            Width = 188
            Height = 17
            Caption = 'Nome da Filial'
          end
          object Sctvarlabel10: TSctvarlabel
            Left = 273
            Top = 0
            Width = 153
            Height = 17
            Caption = 'Nome Abreviado'
          end
          object Sctvarlabel15: TSctvarlabel
            Left = 433
            Top = 0
            Width = 80
            Height = 17
            Caption = 'Telefone'
          end
          object Sctvarlabel17: TSctvarlabel
            Left = 520
            Top = 0
            Width = 80
            Height = 17
            Caption = 'FAX'
          end
        end
      end
    end
  end
  object ADODsDados: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  F.Cd_Filial, F.Nm_Filial, F.Nm_Abreviado, F.Nr_Documento, F.Nr_InscEstadual,'#13#10'  F.Ds_Endereco, F.Nm_Bairro, F.Ds_Complemento, F.Cd_Cidade, F.Nr_Cep,'#13#10'  F.Nr_Telefone, F.Nr_Fax, F.Nm_Contato, F.Nr_Celular, F.Ds_Email, F.Ds_Site,'#13#10'  F.Im_Carimbo, F.Im_Logo, F.Cd_Tabela, F.Fl_Estoque, F.Cd_Portador,'#13#10'  P.Nm_Portador, F.Mm_Rodape, F.Nr_Licenca,'#13#10'  C.Nm_Cidade + '''' - '''' + C.Sg_Estado as Dp_Cidade,'#13#10'  F.Cd_Historico_Balcao, HB.Ds_Historico as Ds_Historico_Balcao,'#13#10'  F.Cd_Grupo_Emitente, EG.Nm_Grupo as Nm_Grupo_Emitente,'#13#10'  F.Cd_SubGrupo_Emitente, ESG.Nm_SubGrupo as Nm_SubGrupo_Emitente,'#13#10'  F.Nr_Compra, F.Cd_CFOP_In, CFIn.Ds_CFOP as Ds_CFOP_In,'#13#10'  F.Cd_CFOP_Out, CFOut.Ds_CFOP as Ds_CFOP_Out, F.Im_DupMercantil,'#13#10'  F.Fl_Simples, F.Mm_Simples, F.Im_Cabecalho, F.Pr_Margem,'#13#10'  F.Nm_Smtp_EM, F.Nm_Usuario_EM, F.Sh_Usuario_EM, F.Nr_Porta_EM,'#13#10'  F.Ds_Titulo_EM, F.Mm_Mensagem_EM, F.Fl_Figura, F.Fl_TamFigura, '#13#10'  F.Fl_Detalhe, F.Fl_MeiaPagina, F.Fl_Transportador, F.Fl_EndCobranca, '#13#10'  F.Fl_EndEntrega, F.Fl_Margem, F.Fl_RemoveLinhas, F.Fl_Logo, F.Fl_Medida,'#13#10'  F.Nr_Area_Decimal, F.Qt_Area_Minima, F.Vl_Dolar, F.Ds_Orcamento,'#13#10'  F.Ds_Custo, F.Fl_Representante, F.Fl_PrazoEntrega, F.Fl_SomaST,'#13#10'  F.Fl_Formulario, F.Fl_Conjunto, F.Fl_NFe,'#13#10'  F.Cd_CST_Pis, F.Pr_PIS, F.Cd_CST_Cofins, F.Pr_Cofins,'#13#10'  F.Ds_Numero, F.Fl_ComissaoJuncao, F.Nr_PrazoEntrega, '#13#10'  F.Fl_EtiquetaProducao, F.Fl_Regime, F.Nr_Duplicata,'#13#10'  F.Nr_ECF_Decimal, F.Fl_1ProjPagina, F.Fl_Frete, '#13#10'  F.Cd_PortadorCartao, PC.Nm_Portador as Nm_PortadorCartao,'#13#10'  F.Cd_HistoricoCartao, HC.Ds_Historico as Ds_HistoricoCartao,'#13#10'  F.Pr_Simples,'#13#10#13#10'  F.Nm_PAF_Server, F.Nm_PAF_Usuario, F.Ds_PAF_Senha, F.Nm_PAF_Banco, F.Nr_PAF_Porta, '#13#10'  F.Fl_PAF_Cliente, F.Fl_PAF_Produto, F.Fl_Intervalo, F.Fl_AnalisaCredito, F.Fl_Criptografia,'#13#10'  F.Fl_ImpTotalAmbiente, F.Nr_CorFundo,'#13#10#13#10'  F.Cd_PortadorDebito, PD.Nm_Portador as Nm_PortadorDebito,'#13#10'  F.Cd_PortadorPIX, PP.Nm_Portador as Nm_PortadorPIX,'#13#10#13#10'  F.Cd_HistoricoDebito, HD.Ds_Historico as Ds_HistoricoDebito,'#13#10'  F.Cd_HistoricoPIX, HP.Ds_Historico as Ds_HistoricoPIX'#13#10#13#10'from'#13#10'  Filial F'#13#10#13#10'inner join'#13#10'  Cidade C'#13#10'on'#13#10'  C.Cd_Cidade = F.Cd_Cidade'#13#10#13#10'left join'#13#10'  Portador P'#13#10'on'#13#10'  P.Cd_Portador = F.Cd_Portador'#13#10#13#10'--------------- Incluido em 05/11/2012'#13#10'left join'#13#10'  Portador PC'#13#10'on'#13#10'  PC.Cd_Portador = F.Cd_PortadorCartao'#13#10#13#10'--------------- Incluido em 03/09/2024'#13#10'left join'#13#10'  Portador PD'#13#10'on'#13#10'  PD.Cd_Portador = F.Cd_PortadorDebito'#13#10#13#10'left join'#13#10'  Portador PP'#13#10'on'#13#10'  PP.Cd_Portador = F.Cd_PortadorPIX'#13#10#13#10'left join'#13#10'  Historico HB'#13#10'on'#13#10'  HB.Cd_Historico = F.Cd_Historico_Balcao'#13#10#13#10'left join'#13#10'  Historico HC'#13#10'on'#13#10'  HC.Cd_Historico = F.Cd_HistoricoCartao'#13#10#13#10'left join'#13#10'  Historico HD'#13#10'on'#13#10'  HD.Cd_Historico = F.Cd_HistoricoDebito'#13#10#13#10'left join'#13#10'  Historico HP'#13#10'on'#13#10'  HP.Cd_Historico = F.Cd_HistoricoPIX'#13#10#13#10'left join'#13#10'  Emitente_Grupo EG'#13#10'on'#13#10'  EG.Cd_Grupo = F.Cd_Grupo_Emitente'#13#10#13#10'left join'#13#10'  Emitente_SubGrupo ESG'#13#10'on'#13#10'  ESG.Cd_SubGrupo = F.Cd_SubGrupo_Emitente'#13#10#13#10'left join'#13#10'  CFOP CFIn'#13#10'on'#13#10'  CFIn.Cd_CFOP = F.Cd_CFOP_In'#13#10#13#10'left join'#13#10'  CFOP CFOut'#13#10'on'#13#10'  CFOut.Cd_CFOP = F.Cd_CFOP_Out'#13#10#13#10'where'#13#10'  Cd_Filial = :Cd_Filial'
    Parameters = <
      item
        Name = 'Cd_Filial'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = nil?
      end>
    Left = 449
    Top = 2
    object ADODsDadoscd_filial: TSmallintField
      FieldName = 'cd_filial'
    end
    object ADODsDadosnm_filial: TStringField
      FieldName = 'nm_filial'
      Size = 50
    end
    object ADODsDadosnm_abreviado: TStringField
      FieldName = 'nm_abreviado'
    end
    object ADODsDadosnr_documento: TStringField
      FieldName = 'nr_documento'
      Size = 14
    end
    object ADODsDadosnr_inscestadual: TStringField
      FieldName = 'nr_inscestadual'
      Size = 18
    end
    object ADODsDadosds_endereco: TStringField
      FieldName = 'ds_endereco'
      Size = 50
    end
    object ADODsDadosnm_bairro: TStringField
      FieldName = 'nm_bairro'
      Size = 30
    end
    object ADODsDadosds_complemento: TStringField
      FieldName = 'ds_complemento'
      Size = 30
    end
    object ADODsDadosnr_cep: TStringField
      FieldName = 'nr_cep'
      FixedChar = True
      Size = 8
    end
    object ADODsDadosnr_telefone: TStringField
      FieldName = 'nr_telefone'
      FixedChar = True
      Size = 11
    end
    object ADODsDadosnr_fax: TStringField
      FieldName = 'nr_fax'
      FixedChar = True
      Size = 10
    end
    object ADODsDadosnm_contato: TStringField
      FieldName = 'nm_contato'
      Size = 50
    end
    object ADODsDadosnr_celular: TStringField
      FieldName = 'nr_celular'
      FixedChar = True
      Size = 11
    end
    object ADODsDadosds_email: TStringField
      FieldName = 'ds_email'
      Size = 50
    end
    object ADODsDadosds_site: TStringField
      FieldName = 'ds_site'
      Size = 50
    end
    object ADODsDadosim_logo: TBlobField
      FieldName = 'im_logo'
    end
    object ADODsDadosdp_cidade: TStringField
      FieldName = 'dp_cidade'
      Size = 254
    end
    object ADODsDadoscd_cidade: TIntegerField
      FieldName = 'cd_cidade'
    end
    object ADODsDadoscd_tabela: TStringField
      FieldName = 'cd_tabela'
      Size = 10
    end
    object ADODsDadosfl_estoque: TStringField
      FieldName = 'fl_estoque'
      FixedChar = True
      Size = 1
    end
    object ADODsDadoscd_portador: TSmallintField
      FieldName = 'cd_portador'
    end
    object ADODsDadosnm_portador: TStringField
      FieldName = 'nm_portador'
      Size = 50
    end
    object ADODsDadosmm_rodape: TMemoField
      FieldName = 'mm_rodape'
      BlobType = ftMemo
    end
    object ADODsDadoscd_historico_balcao: TSmallintField
      FieldName = 'cd_historico_balcao'
    end
    object ADODsDadosds_historico_balcao: TStringField
      FieldName = 'ds_historico_balcao'
      Size = 30
    end
    object ADODsDadosnr_licenca: TStringField
      FieldName = 'nr_licenca'
    end
    object ADODsDadoscd_grupo_emitente: TSmallintField
      FieldName = 'cd_grupo_emitente'
    end
    object ADODsDadosnm_grupo_emitente: TStringField
      FieldName = 'nm_grupo_emitente'
      Size = 50
    end
    object ADODsDadoscd_subgrupo_emitente: TSmallintField
      FieldName = 'cd_subgrupo_emitente'
    end
    object ADODsDadosnm_subgrupo_emitente: TStringField
      FieldName = 'nm_subgrupo_emitente'
      Size = 50
    end
    object ADODsDadosnr_compra: TIntegerField
      FieldName = 'nr_compra'
    end
    object ADODsDadoscd_cfop_in: TStringField
      FieldName = 'cd_cfop_in'
      FixedChar = True
      Size = 4
    end
    object ADODsDadosds_cfop_in: TStringField
      FieldName = 'ds_cfop_in'
      Size = 50
    end
    object ADODsDadoscd_cfop_out: TStringField
      FieldName = 'cd_cfop_out'
      FixedChar = True
      Size = 4
    end
    object ADODsDadosds_cfop_out: TStringField
      FieldName = 'ds_cfop_out'
      Size = 50
    end
    object ADODsDadosim_carimbo: TBlobField
      FieldName = 'im_carimbo'
    end
    object ADODsDadosim_dupmercantil: TBlobField
      FieldName = 'im_dupmercantil'
    end
    object ADODsDadosfl_simples: TStringField
      FieldName = 'fl_simples'
      FixedChar = True
      Size = 1
    end
    object ADODsDadosmm_simples: TMemoField
      FieldName = 'mm_simples'
      BlobType = ftMemo
    end
    object ADODsDadosim_cabecalho: TBlobField
      FieldName = 'im_cabecalho'
    end
    object ADODsDadospr_margem: TBCDField
      FieldName = 'pr_margem'
      Precision = 9
      Size = 3
    end
    object ADODsDadosnm_smtp_em: TStringField
      FieldName = 'nm_smtp_em'
      Size = 100
    end
    object ADODsDadosnm_usuario_em: TStringField
      FieldName = 'nm_usuario_em'
      Size = 50
    end
    object ADODsDadossh_usuario_em: TStringField
      FieldName = 'sh_usuario_em'
      Size = 50
    end
    object ADODsDadosnr_porta_em: TIntegerField
      FieldName = 'nr_porta_em'
    end
    object ADODsDadosds_titulo_em: TStringField
      FieldName = 'ds_titulo_em'
      Size = 200
    end
    object ADODsDadosmm_mensagem_em: TMemoField
      FieldName = 'mm_mensagem_em'
      BlobType = ftMemo
    end
    object ADODsDadosFl_Figura: TStringField
      FieldName = 'Fl_Figura'
      FixedChar = True
      Size = 1
    end
    object ADODsDadosFl_TamFigura: TStringField
      FieldName = 'Fl_TamFigura'
      FixedChar = True
      Size = 1
    end
    object ADODsDadosFl_Detalhe: TStringField
      FieldName = 'Fl_Detalhe'
      FixedChar = True
      Size = 1
    end
    object ADODsDadosFl_MeiaPagina: TStringField
      FieldName = 'Fl_MeiaPagina'
      FixedChar = True
      Size = 1
    end
    object ADODsDadosFl_Transportador: TStringField
      FieldName = 'Fl_Transportador'
      FixedChar = True
      Size = 1
    end
    object ADODsDadosFl_EndCobranca: TStringField
      FieldName = 'Fl_EndCobranca'
      FixedChar = True
      Size = 1
    end
    object ADODsDadosFl_EndEntrega: TStringField
      FieldName = 'Fl_EndEntrega'
      FixedChar = True
      Size = 1
    end
    object ADODsDadosFl_Margem: TStringField
      FieldName = 'Fl_Margem'
      FixedChar = True
      Size = 1
    end
    object ADODsDadosFl_RemoveLinhas: TStringField
      FieldName = 'Fl_RemoveLinhas'
      FixedChar = True
      Size = 1
    end
    object ADODsDadosFl_Logo: TStringField
      FieldName = 'Fl_Logo'
      FixedChar = True
      Size = 1
    end
    object ADODsDadosFl_Medida: TStringField
      FieldName = 'Fl_Medida'
      FixedChar = True
      Size = 1
    end
    object ADODsDadosNr_Area_Decimal: TSmallintField
      FieldName = 'Nr_Area_Decimal'
    end
    object ADODsDadosQt_Area_Minima: TBCDField
      FieldName = 'Qt_Area_Minima'
      Precision = 12
    end
    object ADODsDadosVl_Dolar: TBCDField
      FieldName = 'Vl_Dolar'
      Precision = 9
      Size = 3
    end
    object ADODsDadosDs_Orcamento: TStringField
      FieldName = 'Ds_Orcamento'
    end
    object ADODsDadosFl_Representante: TStringField
      FieldName = 'Fl_Representante'
      FixedChar = True
      Size = 1
    end
    object ADODsDadosFl_PrazoEntrega: TStringField
      FieldName = 'Fl_PrazoEntrega'
      FixedChar = True
      Size = 1
    end
    object ADODsDadosDs_Custo: TStringField
      FieldName = 'Ds_Custo'
    end
    object ADODsDadosFl_SomaST: TStringField
      FieldName = 'Fl_SomaST'
      FixedChar = True
      Size = 1
    end
    object ADODsDadosFl_Formulario: TStringField
      FieldName = 'Fl_Formulario'
      FixedChar = True
      Size = 1
    end
    object ADODsDadosFl_Conjunto: TStringField
      FieldName = 'Fl_Conjunto'
      FixedChar = True
      Size = 1
    end
    object ADODsDadosFl_NFe: TStringField
      FieldName = 'Fl_NFe'
      FixedChar = True
      Size = 1
    end
    object ADODsDadosCd_CST_Pis: TStringField
      FieldName = 'Cd_CST_Pis'
      Size = 3
    end
    object ADODsDadosPr_PIS: TBCDField
      FieldName = 'Pr_PIS'
      Precision = 9
    end
    object ADODsDadosCd_CST_Cofins: TStringField
      FieldName = 'Cd_CST_Cofins'
      Size = 3
    end
    object ADODsDadosPr_Cofins: TBCDField
      FieldName = 'Pr_Cofins'
      Precision = 9
    end
    object ADODsDadosDs_Numero: TStringField
      FieldName = 'Ds_Numero'
      Size = 10
    end
    object ADODsDadosFl_ComissaoJuncao: TStringField
      FieldName = 'Fl_ComissaoJuncao'
      FixedChar = True
      Size = 1
    end
    object ADODsDadosNr_PrazoEntrega: TSmallintField
      FieldName = 'Nr_PrazoEntrega'
    end
    object ADODsDadosFl_EtiquetaProducao: TStringField
      FieldName = 'Fl_EtiquetaProducao'
      FixedChar = True
      Size = 1
    end
    object ADODsDadosFl_Regime: TStringField
      FieldName = 'Fl_Regime'
      FixedChar = True
      Size = 1
    end
    object ADODsDadosNr_Duplicata: TSmallintField
      FieldName = 'Nr_Duplicata'
    end
    object ADODsDadosNr_ECF_Decimal: TSmallintField
      FieldName = 'Nr_ECF_Decimal'
    end
    object ADODsDadosFl_1ProjPagina: TStringField
      FieldName = 'Fl_1ProjPagina'
      FixedChar = True
      Size = 1
    end
    object ADODsDadosFl_Frete: TStringField
      FieldName = 'Fl_Frete'
      FixedChar = True
      Size = 1
    end
    object ADODsDadosCd_PortadorCartao: TSmallintField
      FieldName = 'Cd_PortadorCartao'
    end
    object ADODsDadosNm_PortadorCartao: TStringField
      FieldName = 'Nm_PortadorCartao'
      Size = 50
    end
    object ADODsDadosCd_HistoricoCartao: TSmallintField
      FieldName = 'Cd_HistoricoCartao'
    end
    object ADODsDadosDs_HistoricoCartao: TStringField
      FieldName = 'Ds_HistoricoCartao'
      Size = 30
    end
    object ADODsDadosPr_Simples: TBCDField
      FieldName = 'Pr_Simples'
      Precision = 7
      Size = 2
    end
    object ADODsDadosNm_PAF_Server: TStringField
      FieldName = 'Nm_PAF_Server'
      Size = 50
    end
    object ADODsDadosNm_PAF_Usuario: TStringField
      FieldName = 'Nm_PAF_Usuario'
      Size = 50
    end
    object ADODsDadosDs_PAF_Senha: TStringField
      FieldName = 'Ds_PAF_Senha'
      Size = 50
    end
    object ADODsDadosNm_PAF_Banco: TStringField
      FieldName = 'Nm_PAF_Banco'
      Size = 50
    end
    object ADODsDadosNr_PAF_Porta: TIntegerField
      FieldName = 'Nr_PAF_Porta'
    end
    object ADODsDadosFl_PAF_Cliente: TStringField
      FieldName = 'Fl_PAF_Cliente'
      FixedChar = True
      Size = 1
    end
    object ADODsDadosFl_PAF_Produto: TStringField
      FieldName = 'Fl_PAF_Produto'
      FixedChar = True
      Size = 1
    end
    object ADODsDadosFl_Intervalo: TStringField
      FieldName = 'Fl_Intervalo'
      FixedChar = True
      Size = 1
    end
    object ADODsDadosFl_AnalisaCredito: TStringField
      FieldName = 'Fl_AnalisaCredito'
      FixedChar = True
      Size = 1
    end
    object ADODsDadosFl_Criptografia: TStringField
      FieldName = 'Fl_Criptografia'
      FixedChar = True
      Size = 1
    end
    object ADODsDadosFl_ImpTotalAmbiente: TStringField
      FieldName = 'Fl_ImpTotalAmbiente'
      FixedChar = True
      Size = 1
    end
    object ADODsDadosNr_CorFundo: TIntegerField
      FieldName = 'Nr_CorFundo'
    end
    object ADODsDadosCd_PortadorDebito: TSmallintField
      FieldName = 'Cd_PortadorDebito'
    end
    object ADODsDadosNm_PortadorDebito: TStringField
      FieldName = 'Nm_PortadorDebito'
      Size = 50
    end
    object ADODsDadosCd_PortadorPIX: TSmallintField
      FieldName = 'Cd_PortadorPIX'
    end
    object ADODsDadosNm_PortadorPIX: TStringField
      FieldName = 'Nm_PortadorPIX'
      Size = 50
    end
    object ADODsDadosCd_HistoricoDebito: TSmallintField
      FieldName = 'Cd_HistoricoDebito'
    end
    object ADODsDadosDs_HistoricoDebito: TStringField
      FieldName = 'Ds_HistoricoDebito'
      Size = 30
    end
    object ADODsDadosCd_HistoricoPIX: TSmallintField
      FieldName = 'Cd_HistoricoPIX'
    end
    object ADODsDadosDs_HistoricoPIX: TStringField
      FieldName = 'Ds_HistoricoPIX'
      Size = 30
    end
  end
  object ADOCmdDados: TMultADOCMD
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLInsert.Strings = (
      'insert into Filial( cd_filial, nm_filial, nm_abreviado, nr_documento,'
      '  nr_inscestadual, ds_endereco, nm_bairro, ds_complemento, cd_cidade, nr_cep,'
      '  nr_telefone, nr_fax, nm_contato, nr_celular, fl_estoque, ds_email, ds_site,'
      '  Cd_Tabela, Cd_Portador, im_logo, im_carimbo, Mm_Rodape, Cd_Historico_Balcao,'
      '  Nr_Licenca, Cd_Grupo_Emitente, Cd_SubGrupo_Emitente, '
      '  Nr_Compra, Cd_CFOP_In, Cd_CFOP_Out, Im_DupMercantil, Fl_Simples, Mm_Simples,'
      '  Im_Cabecalho, Pr_Margem, Nm_Smtp_EM, Nm_Usuario_EM, Sh_Usuario_EM,'
      '  Nr_Porta_EM, Ds_Titulo_EM, Mm_Mensagem_EM,'
      '  Fl_Figura, Fl_TamFigura, Fl_Detalhe, Fl_MeiaPagina, Fl_Transportador,'
      '  Fl_EndCobranca, Fl_EndEntrega, Fl_Margem, Fl_RemoveLinhas, Fl_Logo, Fl_Medida,'
      '  Qt_Area_Minima, Nr_Area_Decimal, Vl_Dolar, Ds_Orcamento, Fl_Representante,'
      '  Fl_PrazoEntrega, Ds_Custo, Fl_SomaST, Fl_Formulario, Fl_Conjunto,'
      '  Fl_NFe, Cd_CST_Pis, Pr_PIS, Cd_CST_Cofins, Pr_Cofins, Id_Cliente, Ds_Valid,'
      '  Ds_Numero, Fl_ComissaoJuncao, Nr_PrazoEntrega, Fl_EtiquetaProducao,'
      '  Fl_Regime, Nr_Duplicata, Nr_ECF_Decimal, Fl_1ProjPagina, Fl_Frete,'
      '  Cd_PortadorCartao, Cd_HistoricoCartao, Pr_Simples,'
      '  Nm_PAF_Server, Nm_PAF_Usuario, Ds_PAF_Senha, Nm_PAF_Banco, Nr_PAF_Porta,'
      '  Fl_PAF_Cliente, Fl_PAF_Produto, Fl_Intervalo, Fl_AnalisaCredito, Fl_Criptografia,'
      '  Fl_ImpTotalAmbiente, Nr_CorFundo, Cd_PortadorDebito, Cd_PortadorPIX, Cd_HistoricoDebito, Cd_HistoricoPIX )'
      ''
      'values( :cd_filial, :nm_filial, :nm_abreviado, :nr_documento, :nr_inscestadual,'
      '  :ds_endereco, :nm_bairro, :ds_complemento, :cd_cidade, :nr_cep, :nr_telefone,'
      '  :nr_fax, :nm_contato, :nr_celular, :fl_estoque, :ds_email, :ds_site,'
      '  :Cd_Tabela, :Cd_Portador, :im_logo, :im_carimbo, :Mm_Rodape,'
      '  :Cd_Historico_Balcao, :Nr_Licenca, :Cd_Grupo_Emitente, :Cd_SubGrupo_Emitente,'
      '  :Nr_Compra, :Cd_CFOP_In, :Cd_CFOP_Out, :Im_DupMercantil,'
      '  :Fl_Simples, :Mm_Simples, :Im_Cabecalho, :Pr_Margem, :Nm_Smtp_EM,'
      '  :Nm_Usuario_EM, :Sh_Usuario_EM, :Nr_Porta_EM, :Ds_Titulo_EM, :Mm_Mensagem_EM,'
      '  :Fl_Figura, :Fl_TamFigura, :Fl_Detalhe, :Fl_MeiaPagina, :Fl_Transportador,'
      '  :Fl_EndCobranca, :Fl_EndEntrega, :Fl_Margem, :Fl_RemoveLinhas, :Fl_Logo,'
      '  :Fl_Medida, :Qt_Area_Minima, :Nr_Area_Decimal, :Vl_Dolar, :Ds_Orcamento,'
      '  :Fl_Representante, :Fl_PrazoEntrega, :Ds_Custo, :Fl_SomaST, :Fl_Formulario,'
      '  :Fl_Conjunto, :Fl_NFe, :Cd_CST_Pis, :Pr_PIS, :Cd_CST_Cofins, :Pr_Cofins,'
      '  :Id_Cliente, :Ds_Valid, :Ds_Numero, :Fl_ComissaoJuncao, :Nr_PrazoEntrega,'
      '  :Fl_EtiquetaProducao, :Fl_Regime, :Nr_Duplicata, :Nr_ECF_Decimal,'
      '  :Fl_1ProjPagina, :Fl_Frete, :Cd_PortadorCartao, :Cd_HistoricoCartao, :Pr_Simples,'
      '  :Nm_PAF_Server, :Nm_PAF_Usuario, :Ds_PAF_Senha, :Nm_PAF_Banco, :Nr_PAF_Porta,'
      '  :Fl_PAF_Cliente, :Fl_PAF_Produto, :Fl_Intervalo, :Fl_AnalisaCredito, :Fl_Criptografia,'
      '  :Fl_ImpTotalAmbiente, :Nr_CorFundo, :Cd_PortadorDebito, :Cd_PortadorPIX, :Cd_HistoricoDebito, :Cd_HistoricoPIX )'
    )
    SQLUpdate.Strings = (
      'update'
      '  Filial'
      ''
      'set'
      '  Nm_Filial            = :Nm_Filial,'
      '  Nm_Abreviado         = :Nm_Abreviado,'
      '  Nr_Documento         = :Nr_Documento,'
      '  Nr_Inscestadual      = :Nr_Inscestadual,'
      '  Ds_Endereco          = :Ds_Endereco,'
      '  Nm_Bairro            = :Nm_Bairro,'
      '  Ds_Complemento       = :Ds_Complemento,'
      '  Cd_Cidade            = :Cd_Cidade,'
      '  Nr_Cep               = :Nr_Cep,'
      '  Nr_Telefone          = :Nr_Telefone,'
      '  Nr_Fax               = :Nr_Fax,'
      '  Nm_Contato           = :Nm_Contato,'
      '  Nr_Celular           = :Nr_Celular,'
      '  Fl_Estoque           = :Fl_Estoque,'
      '  Ds_Email             = :Ds_Email,'
      '  Ds_Site              = :Ds_Site,'
      '  Cd_Tabela            = :Cd_Tabela,'
      '  Mm_Rodape            = :Mm_Rodape,'
      '  Cd_Portador          = :Cd_Portador,'
      '  Im_Logo              = :Im_Logo,'
      '  Im_Carimbo           = :Im_Carimbo,'
      '  Cd_Historico_Balcao  = :Cd_Historico_Balcao,'
      '  Cd_Grupo_Emitente    = :Cd_Grupo_Emitente,'
      '  Cd_SubGrupo_Emitente = :Cd_SubGrupo_Emitente,'
      '  Nr_Licenca           = :Nr_Licenca,'
      '  Nr_Compra            = :Nr_Compra,'
      '  Cd_CFOP_In           = :Cd_CFOP_In,'
      '  Cd_CFOP_Out          = :Cd_CFOP_Out,'
      '  Im_DupMercantil      = :Im_DupMercantil,'
      '  Fl_Simples           = :Fl_Simples,'
      '  Mm_Simples           = :Mm_Simples,'
      '  Im_Cabecalho         = :Im_Cabecalho,'
      '  Pr_Margem            = :Pr_Margem,'
      '  Nm_Smtp_EM           = :Nm_Smtp_EM,'
      '  Nm_Usuario_EM        = :Nm_Usuario_EM,'
      '  Sh_Usuario_EM        = :Sh_Usuario_EM,'
      '  Nr_Porta_EM          = :Nr_Porta_EM,'
      '  Ds_Titulo_EM         = :Ds_Titulo_EM,'
      '  Mm_Mensagem_EM       = :Mm_Mensagem_EM,'
      '  Fl_Figura            = :Fl_Figura,'
      '  Fl_TamFigura         = :Fl_TamFigura,'
      '  Fl_Detalhe           = :Fl_Detalhe,'
      '  Fl_MeiaPagina        = :Fl_MeiaPagina,'
      '  Fl_Transportador     = :Fl_Transportador,'
      '  Fl_EndCobranca       = :Fl_EndCobranca,'
      '  Fl_EndEntrega        = :Fl_EndEntrega,'
      '  Fl_Margem            = :Fl_Margem,'
      '  Fl_RemoveLinhas      = :Fl_RemoveLinhas,'
      '  Fl_Logo              = :Fl_Logo,'
      '  Fl_Medida            = :Fl_Medida,'
      '  Qt_Area_Minima       = :Qt_Area_Minima,'
      '  Nr_Area_Decimal      = :Nr_Area_Decimal,'
      '  Vl_Dolar             = :Vl_Dolar,'
      '  Ds_Orcamento         = :Ds_Orcamento,'
      '  Fl_Representante     = :Fl_Representante,'
      '  Fl_PrazoEntrega      = :Fl_PrazoEntrega,'
      '  Ds_Custo             = :Ds_Custo,'
      '  Fl_SomaST            = :Fl_SomaST,'
      '  Fl_Formulario        = :Fl_Formulario,'
      '  Fl_Conjunto          = :Fl_Conjunto,'
      '  Fl_NFe               = :Fl_NFe,'
      '  Cd_CST_Pis           = :Cd_CST_Pis,'
      '  Pr_PIS               = :Pr_PIS,'
      '  Cd_CST_Cofins        = :Cd_CST_Cofins,'
      '  Pr_Cofins            = :Pr_Cofins,'
      '  Ds_Numero            = :Ds_Numero,'
      '  Fl_ComissaoJuncao    = :Fl_ComissaoJuncao,'
      '  Nr_PrazoEntrega      = :Nr_PrazoEntrega,'
      '  Fl_EtiquetaProducao  = :Fl_EtiquetaProducao,'
      '  Fl_Regime            = :Fl_Regime,'
      '  Nr_Duplicata         = :Nr_Duplicata,'
      '  Nr_ECF_Decimal       = :Nr_ECF_Decimal,'
      '  Fl_1ProjPagina       = :Fl_1ProjPagina,'
      '  Fl_Frete             = :Fl_Frete,'
      '  Cd_PortadorCartao    = :Cd_PortadorCartao,'
      '  Cd_HistoricoCartao   = :Cd_HistoricoCartao,'
      '  Pr_Simples           = :Pr_Simples,'
      '  Nm_PAF_Server        = :Nm_PAF_Server,'
      '  Nm_PAF_Usuario       = :Nm_PAF_Usuario,'
      '  Ds_PAF_Senha         = :Ds_PAF_Senha,'
      '  Nm_PAF_Banco         = :Nm_PAF_Banco,'
      '  Nr_PAF_Porta         = :Nr_PAF_Porta,'
      '  Fl_PAF_Cliente       = :Fl_PAF_Cliente,'
      '  Fl_PAF_Produto       = :Fl_PAF_Produto,'
      '  Fl_Intervalo         = :Fl_Intervalo,'
      '  Fl_AnalisaCredito    = :Fl_AnalisaCredito,'
      '  Fl_Criptografia      = :Fl_Criptografia,'
      '  Fl_ImpTotalAmbiente  = :Fl_ImpTotalAmbiente,'
      '  Nr_CorFundo          = :Nr_CorFundo,'
      '  Cd_PortadorDebito    = :Cd_PortadorDebito,'
      '  Cd_PortadorPIX       = :Cd_PortadorPIX,'
      '  Cd_HistoricoDebito   = :Cd_HistoricoDebito,'
      '  Cd_HistoricoPIX      = :Cd_HistoricoPIX'
      ''
      'where'
      '  Cd_Filial = :Cd_Filial'
    )
    SQLDelete.Strings = (
      'delete from'
      '  Filial'
      ''
      'where'
      '  Cd_Filial = :Cd_Filial'
    )
    Left = 479
    Top = 2
  end
  object ADODsNavegar: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = '-- First'#13#10'select top 1'#13#10'  Cd_Filial'#13#10#13#10'from'#13#10'  Filial'#13#10#13#10'order by'#13#10'  Cd_Filial'#13#10
    Parameters = <>
    SQLPrimary.Strings = (
      'select top 1'
      '  A.Cd_Filial + 1 as Cd_Filial'
      ''
      'from'
      '  Filial A'
      ''
      'where'
      '  not exists( '
      '  select'
      '    B.Cd_Filial'
      ''
      '  from'
      '    Filial  B'
      ''
      '  where'
      '    B.Cd_Filial = A.Cd_Filial + 1'
      '  )'
      ''
      'order by'
      '  A.Cd_Filial'
    )
    SQLOther0.Strings = (
      '-- First'
      'select top 1'
      '  cd_Filial'
      ''
      'from'
      '  Filial'
      ''
      'order by'
      '  cd_Filial'
    )
    SQLOther1.Strings = (
      '-- Prior'
      'select top 1'
      '  cd_Filial'
      ''
      'from'
      '  Filial'
      ''
      'where'
      '  cd_Filial < :cd_Filial'
      ''
      'order by'
      '  cd_Filial desc'
    )
    SQLOther2.Strings = (
      '-- Next'
      'select top 1'
      '  cd_Filial'
      ''
      'from'
      '  Filial'
      ''
      'where'
      '  cd_Filial > :Cd_Filial'
      ''
      'order by'
      '  cd_Filial'
    )
    SQLOther3.Strings = (
      '-- Last'
      'select top 1'
      '  cd_Filial'
      ''
      'from'
      '  Filial'
      ''
      'order by'
      '  cd_Filial desc'
    )
    Left = 509
    Top = 2
    object ADODsNavegarcd_filial: TSmallintField
      FieldName = 'cd_filial'
    end
  end
  object DsReport: TDataSource
    DataSet = ADODsReport
    Left = 539
    Top = 2
  end
  object ADODsReport: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  F.Cd_Filial, F.Nm_Filial, F.Nm_Abreviado, F.Nr_Documento, F.Nr_InscEstadual,'#13#10'  F.Ds_Endereco, F.Nm_Bairro, F.Ds_Complemento, F.Cd_Cidade, F.Nr_Cep,'#13#10'  F.Nr_Telefone, F.Nr_Fax, F.Nm_Contato, F.Nr_Celular, F.Ds_Email, F.Ds_Site, '#13#10'  F.Cd_Tabela, F.Nr_Licenca, F.Cd_Grupo_Emitente, EG.Nm_Grupo,'#13#10'  F.Cd_SubGrupo_Emitente, ESG.Nm_SubGrupo'#13#10#13#10'from'#13#10'  Filial F'#13#10#13#10'inner join'#13#10'  Cidade C'#13#10'on'#13#10'  C.Cd_Cidade = F.Cd_Cidade'#13#10#13#10'left join'#13#10'  Emitente_Grupo EG'#13#10'on'#13#10'  EG.Cd_Grupo = F.Cd_Grupo_Emitente'#13#10#13#10'left join'#13#10'  Emitente_SubGrupo ESG'#13#10'on'#13#10'  ESG.Cd_SubGrupo = F.Cd_SubGrupo_Emitente'#13#10#13#10'order by'#13#10'  Cd_Filial'
    Parameters = <>
    Left = 569
    Top = 2
    object ADODsReportcd_filial: TSmallintField
      FieldName = 'cd_filial'
    end
    object ADODsReportnm_filial: TStringField
      FieldName = 'nm_filial'
      Size = 50
    end
    object ADODsReportnm_abreviado: TStringField
      FieldName = 'nm_abreviado'
    end
    object ADODsReportnr_documento: TStringField
      FieldName = 'nr_documento'
      Size = 14
    end
    object ADODsReportnr_inscestadual: TStringField
      FieldName = 'nr_inscestadual'
      Size = 18
    end
    object ADODsReportds_endereco: TStringField
      FieldName = 'ds_endereco'
      Size = 50
    end
    object ADODsReportnm_bairro: TStringField
      FieldName = 'nm_bairro'
      Size = 30
    end
    object ADODsReportds_complemento: TStringField
      FieldName = 'ds_complemento'
      Size = 30
    end
    object ADODsReportnr_cep: TStringField
      FieldName = 'nr_cep'
      FixedChar = True
      Size = 8
    end
    object ADODsReportnr_telefone: TStringField
      FieldName = 'nr_telefone'
      FixedChar = True
      Size = 10
    end
    object ADODsReportnr_fax: TStringField
      FieldName = 'nr_fax'
      FixedChar = True
      Size = 10
    end
    object ADODsReportnm_contato: TStringField
      FieldName = 'nm_contato'
      Size = 50
    end
    object ADODsReportnr_celular: TStringField
      FieldName = 'nr_celular'
      FixedChar = True
      Size = 10
    end
    object ADODsReportds_email: TStringField
      FieldName = 'ds_email'
      Size = 50
    end
    object ADODsReportds_site: TStringField
      FieldName = 'ds_site'
      Size = 50
    end
    object ADODsReportcd_cidade: TIntegerField
      FieldName = 'cd_cidade'
    end
    object ADODsReportcd_tabela: TStringField
      FieldName = 'cd_tabela'
      Size = 10
    end
    object ADODsReportnr_licenca: TStringField
      FieldName = 'nr_licenca'
    end
    object ADODsReportcd_grupo_emitente: TSmallintField
      FieldName = 'cd_grupo_emitente'
    end
    object ADODsReportnm_grupo: TStringField
      FieldName = 'nm_grupo'
      Size = 50
    end
    object ADODsReportcd_subgrupo_emitente: TSmallintField
      FieldName = 'cd_subgrupo_emitente'
    end
    object ADODsReportnm_subgrupo: TStringField
      FieldName = 'nm_subgrupo'
      Size = 50
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
            Items = <
              item
                Action = ActCopiar
                ImageIndex = 16
              end>
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
            Action = ActDel
            ImageIndex = 19
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
          end
          item
            Action = ActZoom
            ImageIndex = 36
          end>
        ActionBar = ActToolBDatabase
      end
      item
      end>
    Images = FrmMain.ImgLstMenu
    Left = 635
    Top = 50
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
    object ActCopiar: TAction
      Category = '2-Database'
      Caption = 'Copiar Filial...'
      ImageIndex = 16
      OnExecute = ActCopiarExecute
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
      OnExecute = ActDelExecute
    end
    object ActReport: TAction
      Category = '2-Database'
      Hint = 'Relat'#243'rio'
      ImageIndex = 20
      ShortCut = 117
      OnExecute = ActReportExecute
    end
    object ActLoad: TAction
      Category = '3-Imagem'
      Hint = 'Carregar imagem'
      ImageIndex = 4
      OnExecute = ActLoadExecute
    end
    object ActClear: TAction
      Category = '3-Imagem'
      Hint = 'Apagar a figura'
      ImageIndex = 32
      OnExecute = ActClearExecute
    end
    object ActSave: TAction
      Category = '3-Imagem'
      Hint = 'Salvar a imagem'
      ImageIndex = 33
      OnExecute = ActSaveExecute
    end
    object ActAjustar: TAction
      Category = '3-Imagem'
      Hint = 'Ajustar figura ao quadro'
      ImageIndex = 34
      OnExecute = ActAjustarExecute
    end
    object ActZoom: TAction
      Category = '3-Imagem'
      Hint = 'Efeito "Zoom" na imagem'
      ImageIndex = 36
      OnExecute = ActZoomExecute
    end
  end
  object ColorDlg: TColorDialog
    Left = 739
    Top = 2
  end
end
