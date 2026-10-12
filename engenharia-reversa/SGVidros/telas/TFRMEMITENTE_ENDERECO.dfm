object FrmEmitente_Endereco: TFrmEmitente_Endereco
  Left = 295
  Top = 167
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Endere'#231'o do Emitente'
  ClientHeight = 367
  ClientWidth = 717
  Color = clWhite
  Ctl3D = False
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
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
    Height = 367
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 696
    Height = 367
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 1
      Top = 337
      Width = 690
      Height = 5
      Shape = bsTopLine
    end
    object SbCEPEndereco: TSpeedButton
      Tag = 2
      Left = 536
      Top = 18
      Width = 21
      Height = 19
      Hint = 'Selecionar o Endere'#231'o a partir do CEP'
      Flat = True
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
      OnClick = SbCEPEnderecoClick
    end
    object Label7: TLabel
      Left = 430
      Top = 41
      Width = 24
      Height = 13
      Caption = 'CEP:'
    end
    object SbCEP: TSpeedButton
      Tag = 1
      Left = 491
      Top = 55
      Width = 21
      Height = 19
      Hint = 'Consulta do CEP'
      Flat = True
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
      OnClick = SbCEPEnderecoClick
    end
    object Label6: TLabel
      Left = 5
      Top = 77
      Width = 80
      Height = 13
      Caption = 'Cidade / Estado:'
    end
    object SbCidade: TSpeedButton
      Tag = 1
      Left = 54
      Top = 92
      Width = 21
      Height = 19
      Hint = 'Consulta de Cidades'
      Flat = True
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
      OnClick = SbCidadeClick
    end
    object Label5: TLabel
      Left = 341
      Top = 77
      Width = 54
      Height = 13
      Caption = 'Telefone 1:'
    end
    object Label4: TLabel
      Left = 431
      Top = 77
      Width = 54
      Height = 13
      Caption = 'Telefone 2:'
    end
    object Label9: TLabel
      Left = 521
      Top = 77
      Width = 54
      Height = 13
      Caption = 'Telefone 3:'
    end
    object Label11: TLabel
      Left = 5
      Top = 114
      Width = 23
      Height = 13
      Caption = 'FAX:'
    end
    object Label3: TLabel
      Left = 95
      Top = 114
      Width = 44
      Height = 13
      Caption = 'Celular 1:'
    end
    object Label10: TLabel
      Left = 185
      Top = 114
      Width = 44
      Height = 13
      Caption = 'Celular 2:'
    end
    object Label31: TLabel
      Left = 5
      Top = 151
      Width = 61
      Height = 13
      Caption = 'Observa'#231#227'o:'
    end
    object Label1: TLabel
      Left = 273
      Top = 114
      Width = 26
      Height = 13
      Caption = 'Rota:'
    end
    object SbRota: TSpeedButton
      Tag = 1
      Left = 314
      Top = 129
      Width = 21
      Height = 19
      Hint = 'Consulta de Rota'
      Flat = True
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
      OnClick = SbRotaClick
    end
    object Label2: TLabel
      Left = 599
      Top = 114
      Width = 89
      Height = 13
      Caption = 'Ordem de Entrega:'
    end
    object BitBtnConfirm: TBitBtn
      Left = 523
      Top = 340
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 18
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 609
      Top = 340
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 19
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object EdtDs_Titulo: TLabeledEdit
      Left = 5
      Top = 18
      Width = 224
      Height = 19
      AutoSelect = False
      AutoSize = False
      EditLabel.Width = 88
      EditLabel.Height = 13
      EditLabel.Caption = 'Tipo do Endere'#231'o:'
      LabelSpacing = 2
      MaxLength = 50
      TabOrder = 0
    end
    object EdtDs_Endereco: TLabeledEdit
      Left = 231
      Top = 18
      Width = 305
      Height = 19
      AutoSelect = False
      AutoSize = False
      EditLabel.Width = 49
      EditLabel.Height = 13
      EditLabel.Caption = 'Endere'#231'o:'
      LabelSpacing = 2
      MaxLength = 50
      TabOrder = 1
      OnKeyDown = EdtDs_EnderecoKeyDown
    end
    object EdtDs_Complemento: TLabeledEdit
      Left = 5
      Top = 55
      Width = 207
      Height = 19
      AutoSelect = False
      AutoSize = False
      EditLabel.Width = 67
      EditLabel.Height = 13
      EditLabel.Caption = 'Complemento:'
      LabelSpacing = 2
      MaxLength = 30
      TabOrder = 3
    end
    object EdtNr_CEP: TMaskEdit
      Left = 430
      Top = 55
      Width = 60
      Height = 19
      AutoSize = False
      EditMask = '##.###-###;0; '
      MaxLength = 10
      TabOrder = 5
      OnKeyDown = EdtDs_EnderecoKeyDown
    end
    object EdtNm_Bairro: TLabeledEdit
      Left = 217
      Top = 55
      Width = 210
      Height = 19
      AutoSelect = False
      AutoSize = False
      EditLabel.Width = 30
      EditLabel.Height = 13
      EditLabel.Caption = 'Bairro:'
      LabelSpacing = 2
      MaxLength = 30
      TabOrder = 4
    end
    object EdtCd_Cidade: TCurrencyEdit
      Tag = 1
      Left = 5
      Top = 92
      Width = 48
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '###'
      TabOrder = 6
      OnExit = EdtCd_CidadeExit
      OnKeyDown = EdtDs_EnderecoKeyDown
    end
    object EdtNm_Cidade: TEdit
      Left = 76
      Top = 92
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
      TabOrder = 7
    end
    object EdtNr_Telefone_1: TMaskEdit
      Left = 341
      Top = 92
      Width = 85
      Height = 19
      AutoSize = False
      EditMask = '(##) ####-####;0; '
      MaxLength = 14
      TabOrder = 8
    end
    object EdtNr_Telefone_2: TMaskEdit
      Left = 431
      Top = 92
      Width = 85
      Height = 19
      AutoSize = False
      EditMask = '(##) ####-####;0; '
      MaxLength = 14
      TabOrder = 9
    end
    object EdtNr_Telefone_3: TMaskEdit
      Left = 521
      Top = 92
      Width = 85
      Height = 19
      AutoSize = False
      EditMask = '(##) ####-####;0; '
      MaxLength = 14
      TabOrder = 10
    end
    object EdtNr_FAX: TMaskEdit
      Left = 5
      Top = 129
      Width = 85
      Height = 19
      AutoSize = False
      EditMask = '(##) ####-####;0; '
      MaxLength = 14
      TabOrder = 11
    end
    object EdtNr_Celular_1: TMaskEdit
      Left = 95
      Top = 129
      Width = 81
      Height = 19
      AutoSize = False
      EditMask = '(##) #####-####;0; '
      MaxLength = 15
      TabOrder = 12
    end
    object EdtNr_Celular_2: TMaskEdit
      Left = 185
      Top = 129
      Width = 81
      Height = 19
      AutoSize = False
      EditMask = '(##) #####-####;0; '
      MaxLength = 15
      TabOrder = 13
    end
    object MmObservacao: TMemo
      Left = 5
      Top = 165
      Width = 683
      Height = 169
      MaxLength = 8190
      ScrollBars = ssVertical
      TabOrder = 17
    end
    object EdtCd_Rota: TCurrencyEdit
      Tag = 2
      Left = 273
      Top = 129
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '###'
      TabOrder = 14
      OnExit = EdtCd_RotaExit
      OnKeyDown = EdtDs_EnderecoKeyDown
    end
    object EdtDs_Rota: TEdit
      Left = 336
      Top = 129
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
      TabOrder = 15
    end
    object EdtNr_Ordem: TCurrencyEdit
      Tag = 2
      Left = 599
      Top = 129
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '###'
      TabOrder = 16
    end
    object EdtDs_Numero: TLabeledEdit
      Left = 561
      Top = 18
      Width = 70
      Height = 19
      AutoSelect = False
      AutoSize = False
      EditLabel.Width = 40
      EditLabel.Height = 13
      EditLabel.Caption = 'N'#250'mero:'
      LabelSpacing = 2
      MaxLength = 10
      TabOrder = 2
    end
  end
  object ADOCmdDados: TMultADOCMD
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLInsert.Strings = (
      'insert into Emitente_Endereco( Cd_Emitente, Nr_Endereco, Ds_Titulo, Ds_Endereco,'
      '   Nm_Bairro, Ds_Complemento, Nr_CEP, Cd_Cidade, Nr_Telefone_1, Nr_Telefone_2,'
      '   Nr_Telefone_3, Nr_FAX, Nr_Celular_1, Nr_Celular_2, Mm_Observacao, Cd_Rota,'
      '   Nr_Ordem, Ds_Numero )'
      ''
      'values( :Cd_Emitente, :Nr_Endereco, :Ds_Titulo, :Ds_Endereco, :Nm_Bairro,'
      '   :Ds_Complemento, :Nr_CEP, :Cd_Cidade, :Nr_Telefone_1, :Nr_Telefone_2,'
      '   :Nr_Telefone_3, :Nr_FAX, :Nr_Celular_1, :Nr_Celular_2, :Mm_Observacao,'
      '   :Cd_Rota, :Nr_Ordem, :Ds_Numero )'
    )
    SQLUpdate.Strings = (
      'update'
      '  Emitente_Endereco'
      ''
      'set'
      '  Ds_Titulo      = :Ds_Titulo,'
      '  Ds_Endereco    = :Ds_Endereco,'
      '  Ds_Numero      = :Ds_Numero,'
      '  Nm_Bairro      = :Nm_Bairro,'
      '  Ds_Complemento = :Ds_Complemento,'
      '  Nr_CEP         = :Nr_CEP,'
      '  Cd_Cidade      = :Cd_Cidade,'
      '  Nr_Telefone_1  = :Nr_Telefone_1,'
      '  Nr_Telefone_2  = :Nr_Telefone_2,'
      '  Nr_Telefone_3  = :Nr_Telefone_3,'
      '  Nr_FAX         = :Nr_FAX,'
      '  Nr_Celular_1   = :Nr_Celular_1,'
      '  Nr_Celular_2   = :Nr_Celular_2,'
      '  Mm_Observacao  = :Mm_Observacao,'
      '  Cd_Rota        = :Cd_Rota,'
      '  Nr_Ordem       = :Nr_Ordem'
      ''
      'where'
      '  Cd_Emitente = :Cd_Emitente and'
      '  Nr_Endereco = :Nr_Endereco'
    )
    Left = 27
    Top = 305
  end
  object ADODsPrimary: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select top 1'#13#10'  A.Nr_Endereco + 1 as Nr_Endereco'#13#10#13#10'from'#13#10'  Emitente_Endereco A'#13#10#13#10'where'#13#10'  A.Cd_Emitente = :Cd_Emitente and'#13#10'  not exists('#13#10'  select'#13#10'    B.Nr_Endereco'#13#10#13#10'  from'#13#10'    Emitente_Endereco B'#13#10#13#10'  where'#13#10'    B.Cd_Emitente = A.Cd_Emitente and'#13#10'    B.Nr_Endereco = A.Nr_Endereco + 1'#13#10'  )'#13#10#13#10'order by'#13#10'  A.Nr_Endereco'#13#10
    Parameters = <
      item
        Name = 'Cd_Emitente'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = nil?
      end>
    Left = 57
    Top = 306
    object ADODsPrimarynr_endereco: TIntegerField
      FieldName = 'nr_endereco'
    end
  end
end
