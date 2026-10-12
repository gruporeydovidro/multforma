object FrmProduto_Fornecedor_Insert: TFrmProduto_Fornecedor_Insert
  Left = 336
  Top = 222
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'C'#243'digo do Fornecedor'
  ClientHeight = 189
  ClientWidth = 599
  Color = clWhite
  Ctl3D = False
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object PnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 21
    Height = 189
    Align = alLeft
    TabOrder = 0
    ExplicitHeight = 108
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 578
    Height = 189
    Align = alClient
    ParentColor = True
    TabOrder = 1
    ExplicitWidth = 384
    ExplicitHeight = 108
    object BvlSeparator: TBevel
      Left = 3
      Top = 159
      Width = 569
      Height = 5
      Shape = bsTopLine
    end
    object Label10: TLabel
      Left = 5
      Top = 2
      Width = 57
      Height = 13
      Caption = 'Fornecedor:'
    end
    object SbEmitente: TSpeedButton
      Left = 55
      Top = 17
      Width = 23
      Height = 19
      Hint = 'Seleciona Fornecedor'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbEmitenteClick
    end
    object BitBtnConfirm: TBitBtn
      Left = 404
      Top = 162
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 3
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 490
      Top = 162
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 4
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object EdtCd_Emitente: TCurrencyEdit
      Left = 5
      Top = 17
      Width = 50
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 0
      OnExit = EdtCd_EmitenteExit
      OnKeyDown = EdtCd_EmitenteKeyDown
    end
    object EdtNm_Emitente: TEdit
      Left = 79
      Top = 17
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
    object EdtCd_Produto: TLabeledEdit
      Left = 6
      Top = 54
      Width = 170
      Height = 19
      EditLabel.Width = 163
      EditLabel.Height = 13
      EditLabel.Caption = 'C'#243'digo do Produto no Fornecedor:'
      LabelSpacing = 2
      MaxLength = 30
      TabOrder = 2
    end
  end
  object ADOCmdInsert: TADOCommand
    CommandText = 'insert into Produto_Fornecedor( Cd_Produto, Cd_Emitente, Cd_Produto_Emitente, Nr_Fator_Fornecedor, Nr_Fator_Distribuidor )'#13#10'values( :Cd_Produto, :Cd_Emitente, :Cd_Produto_Emitente, 0, 0 )'
    Connection = FrmMain.ADOConMaster
    Parameters = <
      item
        Name = 'Cd_Produto'
        Size = -1
        Value = nil?
      end
      item
        Name = 'Cd_Emitente'
        Size = -1
        Value = nil?
      end
      item
        Name = 'Cd_Produto_Emitente'
        Size = -1
        Value = nil?
      end>
    Left = 31
    Top = 80
  end
  object ADODsPrimary: TADODataSet
    Connection = FrmMain.ADOConMaster
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  Cd_Produto'#13#10#13#10'from '#13#10'  Produto_Fornecedor'#13#10#13#10'where'#13#10'  Cd_Produto  = :Cd_Produto and'#13#10'  Cd_Emitente = :Cd_Emitente'
    Parameters = <
      item
        Name = 'Cd_Produto'
        Size = -1
        Value = nil?
      end
      item
        Name = 'Cd_Emitente'
        Size = -1
        Value = nil?
      end>
    Left = 61
    Top = 80
  end
end
