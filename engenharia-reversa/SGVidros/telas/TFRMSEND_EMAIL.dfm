object FrmSend_EMail: TFrmSend_EMail
  Left = 284
  Top = 243
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Envio de E-Mail'
  ClientHeight = 399
  ClientWidth = 707
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
    Height = 399
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 686
    Height = 399
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 3
      Top = 369
      Width = 678
      Height = 5
      Shape = bsTopLine
    end
    object Label26: TLabel
      Left = 5
      Top = 72
      Width = 92
      Height = 13
      Caption = 'Mensagem Padr'#227'o:'
    end
    object Label1: TLabel
      Left = 7
      Top = 243
      Width = 38
      Height = 13
      Caption = 'Anexos:'
    end
    object LblSend: TLabel
      Left = 5
      Top = 377
      Width = 66
      Height = 13
      Caption = 'Enviando...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object BitBtnConfirm: TBitBtn
      Left = 513
      Top = 372
      Width = 85
      Height = 25
      Caption = '&Enviar'
      TabOrder = 6
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 370 bytes}
    end
    object BitBtnCancel: TBitBtn
      Left = 599
      Top = 372
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 7
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object EdtDs_Titulo_EM: TLabeledEdit
      Left = 6
      Top = 16
      Width = 335
      Height = 19
      EditLabel.Width = 41
      EditLabel.Height = 13
      EditLabel.Caption = 'Assunto:'
      LabelSpacing = 2
      MaxLength = 200
      TabOrder = 0
    end
    object Mm_Mensagem_EM: TMemo
      Left = 5
      Top = 87
      Width = 675
      Height = 155
      ScrollBars = ssVertical
      TabOrder = 4
    end
    object EdtDs_Destinatario_EM: TLabeledEdit
      Left = 5
      Top = 50
      Width = 335
      Height = 19
      EditLabel.Width = 25
      EditLabel.Height = 13
      EditLabel.Caption = 'Para:'
      LabelSpacing = 2
      MaxLength = 200
      TabOrder = 2
    end
    object EdtDs_CC_EM: TLabeledEdit
      Left = 345
      Top = 50
      Width = 335
      Height = 19
      EditLabel.Width = 64
      EditLabel.Height = 13
      EditLabel.Caption = 'C'#243'pia Oculta:'
      LabelSpacing = 2
      MaxLength = 200
      TabOrder = 3
    end
    object LstFiles: TListBox
      Left = 5
      Top = 258
      Width = 675
      Height = 108
      Hint = 'Pressione << Insert >> para incluir um arquivo da lista'#13#10'Pressione << Delete >> para excluir um arquivo da lista'
      ItemHeight = 13
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnKeyDown = LstFilesKeyDown
    end
    object EdtNm_Address: TLabeledEdit
      Left = 345
      Top = 16
      Width = 335
      Height = 19
      EditLabel.Width = 17
      EditLabel.Height = 13
      EditLabel.Caption = 'De:'
      LabelSpacing = 2
      MaxLength = 200
      TabOrder = 1
    end
  end
  object SSLSocket: TIdSSLIOHandlerSocketOpenSSL
    MaxLineAction = maException
    Port = 0
    DefaultPort = 0
    SSLOptions.Method = sslvSSLv2
    SSLOptions.Mode = sslmUnassigned
    SSLOptions.VerifyMode = []
    SSLOptions.VerifyDepth = 0
    Left = 624
    Top = 272
  end
end
