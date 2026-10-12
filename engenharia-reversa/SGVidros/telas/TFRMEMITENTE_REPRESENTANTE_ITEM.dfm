object FrmEmitente_Representante_Item: TFrmEmitente_Representante_Item
  Left = 389
  Top = 329
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'C'#243'digo da Representada'
  ClientHeight = 109
  ClientWidth = 498
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
    Height = 109
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 477
    Height = 109
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 3
      Top = 79
      Width = 470
      Height = 5
      Shape = bsTopLine
    end
    object Label10: TLabel
      Left = 5
      Top = 5
      Width = 115
      Height = 13
      Caption = 'Industria/Representada:'
    end
    object SbLaboratorio: TSpeedButton
      Left = 56
      Top = 20
      Width = 23
      Height = 19
      Hint = 'Seleciona a Representada'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbLaboratorioClick
    end
    object Label1: TLabel
      Left = 5
      Top = 42
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
    end
    object BitBtnConfirm: TBitBtn
      Left = 304
      Top = 82
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 3
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 390
      Top = 82
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 4
      OnClick = BitBtnCancelClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object EdtCd_Laboratorio: TCurrencyEdit
      Left = 5
      Top = 20
      Width = 50
      Height = 19
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '####'
      TabOrder = 0
      OnExit = EdtCd_LaboratorioExit
      OnKeyDown = EdtCd_LaboratorioKeyDown
    end
    object EdtNm_Laboratorio: TEdit
      Left = 80
      Top = 20
      Width = 386
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
    object EdtId_Laboratorio: TEdit
      Left = 5
      Top = 55
      Width = 231
      Height = 19
      MaxLength = 20
      TabOrder = 2
    end
  end
  object ADOCmdItem: TMultADOCMD
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLInsert.Strings = (
      'insert into Emitente_Laboratorio( Cd_Emitente, Cd_Laboratorio, Id_Laboratorio )'
      'values( :Cd_Emitente, :Cd_Laboratorio, :Id_Laboratorio )'
    )
    SQLUpdate.Strings = (
      'update'
      '  Emitente_Laboratorio'
      ''
      'set'
      '  Id_Laboratorio = :Id_Laboratorio'
      ''
      'where'
      '  Cd_Emitente    = :Cd_Emitente and'
      '  Cd_Laboratorio = :Cd_Laboratorio'
    )
    Left = 26
    Top = 77
  end
  object ADODsCheck: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  EL.Id_Laboratorio'#13#10#13#10'from'#13#10'  Emitente_Laboratorio EL'#13#10#13#10'where'#13#10'  EL.Cd_Emitente = :Cd_Emitente and'#13#10'  EL.Cd_Laboratorio = :Cd_Laboratorio'#13#10
    Parameters = <
      item
        Name = 'Cd_Emitente'
        Size = -1
        Value = nil?
      end
      item
        Name = 'Cd_Laboratorio'
        Size = -1
        Value = nil?
      end>
    Left = 57
    Top = 76
  end
end
