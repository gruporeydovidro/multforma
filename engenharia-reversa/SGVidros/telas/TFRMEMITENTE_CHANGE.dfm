object FrmEmitente_Change: TFrmEmitente_Change
  Left = 384
  Top = 252
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Troca de Emitente'
  ClientHeight = 147
  ClientWidth = 415
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
  PixelsPerInch = 96
  TextHeight = 13
  object PnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 21
    Height = 147
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 394
    Height = 147
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 3
      Top = 117
      Width = 388
      Height = 5
      Shape = bsTopLine
    end
    object SbOld: TSpeedButton
      Tag = 1
      Left = 55
      Top = 18
      Width = 23
      Height = 19
      Hint = 'Seleciona Emitente'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbOldClick
    end
    object Label10: TLabel
      Left = 5
      Top = 3
      Width = 189
      Height = 13
      Caption = 'Emitente Antigo (o que ser'#225' substituido):'
    end
    object SbNew: TSpeedButton
      Tag = 2
      Left = 55
      Top = 55
      Width = 23
      Height = 19
      Hint = 'Seleciona Emitente'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbOldClick
    end
    object Label2: TLabel
      Left = 5
      Top = 40
      Width = 172
      Height = 13
      Caption = 'Emitente Novo (o que ser'#225' mantido):'
    end
    object Label1: TLabel
      Left = 5
      Top = 75
      Width = 310
      Height = 39
      Caption = 'Importante:'#13#10'   Este processo ira apagar o Emitente Antigo;'#13#10'   Este processo pode demorar alguns minutos para ser concluido;'
    end
    object BitBtnConfirm: TBitBtn
      Left = 222
      Top = 120
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 4
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 308
      Top = 120
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 5
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object EdtCd_Old: TCurrencyEdit
      Tag = 1
      Left = 5
      Top = 18
      Width = 50
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 0
      OnExit = EdtCd_OldExit
      OnKeyDown = EdtCd_OldKeyDown
    end
    object EdtNm_Old: TEdit
      Left = 79
      Top = 18
      Width = 308
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
      TabOrder = 1
    end
    object EdtCd_New: TCurrencyEdit
      Tag = 2
      Left = 5
      Top = 55
      Width = 50
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 2
      OnExit = EdtCd_OldExit
      OnKeyDown = EdtCd_OldKeyDown
    end
    object EdtNm_New: TEdit
      Left = 79
      Top = 55
      Width = 308
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
      TabOrder = 3
    end
  end
  object ADOCmdEmitente: TADOCommand
    CommandText = 'execute EmitenteChange :Cd_Old, :Cd_New '
    Connection = FrmMain.ADOConMaster
    Parameters = <
      item
        Name = 'Cd_Old'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = nil?
      end
      item
        Name = 'Cd_New'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = nil?
      end>
    Left = 21
    Top = 115
  end
end
