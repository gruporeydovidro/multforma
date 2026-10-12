object FrmPortador_Arquivos: TFrmPortador_Arquivos
  Left = 294
  Top = 173
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Carregar arquivos CRT e Key'
  ClientHeight = 191
  ClientWidth = 538
  Color = clWhite
  Ctl3D = False
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object PnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 21
    Height = 191
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 517
    Height = 191
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 0
      Top = 161
      Width = 513
      Height = 5
      Shape = bsTopLine
    end
    object SbArquivoCRT: TSpeedButton
      Tag = 1
      Left = 353
      Top = 21
      Width = 23
      Height = 19
      Hint = 'Seleciona Arquivo'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbArquivoCRTClick
    end
    object SbArquivoKey: TSpeedButton
      Tag = 2
      Left = 353
      Top = 58
      Width = 23
      Height = 19
      Hint = 'Seleciona Arquivo'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbArquivoKeyClick
    end
    object BitBtnConfirm: TBitBtn
      Left = 344
      Top = 164
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 2
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 430
      Top = 164
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 3
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object EdtNm_ArquivoCRT: TLabeledEdit
      Tag = 1
      Left = 6
      Top = 21
      Width = 345
      Height = 19
      EditLabel.Width = 92
      EditLabel.Height = 13
      EditLabel.Caption = 'Arquivo CRT/PEM:'
      EditLabel.Transparent = True
      TabOrder = 0
      OnKeyDown = EdtNm_ArquivoCRTKeyDown
    end
    object EdtNm_ArquivoKey: TLabeledEdit
      Tag = 2
      Left = 6
      Top = 58
      Width = 345
      Height = 19
      EditLabel.Width = 60
      EditLabel.Height = 13
      EditLabel.Caption = 'Arquivo Key:'
      EditLabel.Transparent = True
      TabOrder = 1
      OnKeyDown = EdtNm_ArquivoCRTKeyDown
    end
  end
end
