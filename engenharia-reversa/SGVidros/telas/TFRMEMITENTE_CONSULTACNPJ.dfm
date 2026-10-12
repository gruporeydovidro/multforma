object FrmEmitente_ConsultaCNPJ: TFrmEmitente_ConsultaCNPJ
  Left = 294
  Top = 173
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Consulta de CNPJ'
  ClientHeight = 368
  ClientWidth = 749
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 21
    Height = 368
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 728
    Height = 368
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 2
      Top = 338
      Width = 721
      Height = 5
      Shape = bsTopLine
    end
    object Label7: TLabel
      Left = 219
      Top = 146
      Width = 24
      Height = 13
      Caption = 'CEP:'
    end
    object Label6: TLabel
      Left = 281
      Top = 144
      Width = 80
      Height = 13
      Caption = 'Cidade / Estado:'
    end
    object SbCidade: TSpeedButton
      Tag = 1
      Left = 331
      Top = 160
      Width = 23
      Height = 19
      Hint = 'Consulta de Cidades'
      Flat = True
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbCidadeClick
    end
    object Label2: TLabel
      Left = 4
      Top = 3
      Width = 30
      Height = 13
      Caption = 'CNPJ:'
    end
    object SbOpen: TSpeedButton
      Left = 125
      Top = 16
      Width = 85
      Height = 19
      Hint = 'Consultar'
      Caption = 'Co&nsultar'
      Flat = True
      Glyph.Data = {binary 250 bytes}
      ParentShowHint = False
      ShowHint = True
      OnClick = SbOpenClick
    end
    object Label1: TLabel
      Left = 219
      Top = 245
      Width = 500
      Height = 88
      AutoSize = False
      Caption = 'Importante:'#13#10'     '#13#10'     Essa consulta pode estar desatualizada por n'#227'o se tratar de consulta realizada diretamente na base da Receita.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      WordWrap = True
    end
    object BitBtnConfirm: TBitBtn
      Left = 555
      Top = 341
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      Enabled = False
      ModalResult = 1
      TabOrder = 15
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 641
      Top = 341
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 16
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object EdtNm_EmitenteFnd: TLabeledEdit
      Left = 4
      Top = 89
      Width = 307
      Height = 19
      AutoSelect = False
      AutoSize = False
      EditLabel.Width = 90
      EditLabel.Height = 13
      EditLabel.Caption = 'Nome do Emitente:'
      LabelSpacing = 2
      MaxLength = 50
      TabOrder = 5
    end
    object EdtNm_FantasiaFnd: TLabeledEdit
      Left = 318
      Top = 89
      Width = 189
      Height = 19
      AutoSelect = False
      AutoSize = False
      EditLabel.Width = 120
      EditLabel.Height = 13
      EditLabel.Caption = 'Nome Fantasia / Apelido:'
      LabelSpacing = 2
      MaxLength = 30
      TabOrder = 6
    end
    object EdtDs_EnderecoFnd: TLabeledEdit
      Left = 4
      Top = 123
      Width = 327
      Height = 19
      AutoSelect = False
      AutoSize = False
      EditLabel.Width = 49
      EditLabel.Height = 13
      EditLabel.Caption = 'Endere'#231'o:'
      LabelSpacing = 2
      MaxLength = 50
      TabOrder = 7
    end
    object EdtDs_NumeroFnd: TLabeledEdit
      Left = 335
      Top = 123
      Width = 69
      Height = 19
      AutoSelect = False
      AutoSize = False
      EditLabel.Width = 40
      EditLabel.Height = 13
      EditLabel.Caption = 'N'#250'mero:'
      LabelSpacing = 2
      MaxLength = 10
      TabOrder = 8
    end
    object EdtDs_ComplementoFnd: TLabeledEdit
      Left = 408
      Top = 123
      Width = 168
      Height = 19
      AutoSelect = False
      AutoSize = False
      EditLabel.Width = 67
      EditLabel.Height = 13
      EditLabel.Caption = 'Complemento:'
      LabelSpacing = 2
      MaxLength = 30
      TabOrder = 9
    end
    object EdtNm_BairroFnd: TLabeledEdit
      Left = 4
      Top = 160
      Width = 211
      Height = 19
      AutoSelect = False
      AutoSize = False
      EditLabel.Width = 30
      EditLabel.Height = 13
      EditLabel.Caption = 'Bairro:'
      LabelSpacing = 2
      MaxLength = 30
      TabOrder = 10
    end
    object EdtNr_CEPFnd: TMaskEdit
      Left = 219
      Top = 160
      Width = 60
      Height = 19
      AutoSize = False
      EditMask = '##.###-###;0; '
      MaxLength = 10
      TabOrder = 11
    end
    object EdtCd_CidadeFnd: TCurrencyEdit
      Tag = 3
      Left = 281
      Top = 160
      Width = 50
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '###'
      TabOrder = 12
      OnExit = EdtCd_CidadeFndExit
      OnKeyDown = EdtCd_CidadeFndKeyDown
    end
    object EdtNm_CidadeFnd: TEdit
      Left = 354
      Top = 160
      Width = 260
      Height = 19
      TabStop = False
      AutoSize = False
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 13
    end
    object EdtNr_DoctoFnd: TEditMF
      Left = 4
      Top = 16
      Width = 115
      Height = 19
      AutoSize = False
      MaxLength = 18
      TabOrder = 0
      Kind = dkCGC
      Formated = True
      LockOnError = True
      Check = True
    end
    object Panel3: TPanel
      Left = 698
      Top = 16
      Width = 346
      Height = 127
      BevelOuter = bvLowered
      Color = clWhite
      ParentBackground = False
      TabOrder = 17
      object ImgCaptcha: TImage
        Left = 1
        Top = 1
        Width = 344
        Height = 106
        Align = alClient
        Center = True
        Proportional = True
        Stretch = True
        ExplicitLeft = 329
        ExplicitTop = 73
      end
      object LabAtualizarCaptcha: TLabel
        Left = 1
        Top = 107
        Width = 344
        Height = 19
        Cursor = crHandPoint
        Align = alBottom
        Alignment = taCenter
        AutoSize = False
        Caption = '&Atualizar Captcha'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
        OnClick = LabAtualizarCaptchaClick
      end
    end
    object EdtCaptcha: TLabeledEdit
      Left = 1049
      Top = 89
      Width = 115
      Height = 19
      AutoSelect = False
      AutoSize = False
      EditLabel.Width = 82
      EditLabel.Height = 13
      EditLabel.Caption = 'Digite o Captcha:'
      LabelSpacing = 2
      MaxLength = 50
      TabOrder = 1
      OnEnter = EdtCaptchaEnter
      OnExit = EdtCaptchaExit
      OnKeyPress = EdtCaptchaKeyPress
    end
    object EdtTp_Empresa: TLabeledEdit
      Left = 4
      Top = 53
      Width = 115
      Height = 19
      AutoSelect = False
      AutoSize = False
      EditLabel.Width = 83
      EditLabel.Height = 13
      EditLabel.Caption = 'Tipo de Empresa:'
      LabelSpacing = 2
      MaxLength = 50
      TabOrder = 2
    end
    object EdtDt_Abertura: TLabeledEdit
      Left = 123
      Top = 53
      Width = 115
      Height = 19
      AutoSelect = False
      AutoSize = False
      EditLabel.Width = 84
      EditLabel.Height = 13
      EditLabel.Caption = 'Data de Abertura:'
      LabelSpacing = 2
      MaxLength = 50
      TabOrder = 3
    end
    object EdtSt_Inscricao: TLabeledEdit
      Left = 241
      Top = 53
      Width = 137
      Height = 19
      AutoSelect = False
      AutoSize = False
      EditLabel.Width = 106
      EditLabel.Height = 13
      EditLabel.Caption = 'Situa'#231#227'o da Inscri'#231#227'o:'
      LabelSpacing = 2
      MaxLength = 50
      TabOrder = 4
    end
    object EdtDs_EMailFnd: TLabeledEdit
      Left = 4
      Top = 194
      Width = 469
      Height = 19
      AutoSelect = False
      AutoSize = False
      EditLabel.Width = 32
      EditLabel.Height = 13
      EditLabel.Caption = 'E-Mail:'
      LabelSpacing = 2
      MaxLength = 100
      TabOrder = 14
    end
  end
  object ACBrConsultaCNPJ: TACBrConsultaCNPJ
    ProxyPort = '8080'
    PesquisarIBGE = False
    IniServicos = 'C:\Program Files (x86)\CodeGear\RAD Studio\5.0\bin\ACBrConsultaCNPJServicos.ini'
    Provedor = cwsBrasilAPI
    Left = 338
    Top = 33
  end
  object ADODsCidade: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = '--------------- Consulta pela Cidade'#13#10'select'#13#10'  Cd_Cidade'#13#10#13#10'from'#13#10'  Cidade'#13#10#13#10'where'#13#10'  Sg_Estado = :Sg_Estado and'#13#10'  Nm_Cidade = :Nm_Cidade'#13#10
    Parameters = <
      item
        Name = 'Sg_Estado'
        DataType = ftString
        Size = 2
        Value = 'ES'
      end
      item
        Name = 'Nm_Cidade'
        DataType = ftString
        Size = 10
        Value = 'Vila Velha'
      end>
    SQLOther0.Strings = (
      '--------------- Consulta pela Cidade'
      'select'
      '  Cd_Cidade'
      ''
      'from'
      '  Cidade'
      ''
      'where'
      '  Sg_Estado = :Sg_Estado and'
      '  Nm_Cidade = :Nm_Cidade'
    )
    SQLOther1.Strings = (
      '--------------- Consulta pelo CEP'
      'select'
      '  Cd_Cidade'
      ''
      'from'
      '  CEP_Logradouro'
      ''
      'where'
      '  Nr_CEP like :Nr_CEP'
    )
    Left = 472
    Top = 144
    object ADODsCidadeCd_Cidade: TIntegerField
      FieldName = 'Cd_Cidade'
    end
  end
end
