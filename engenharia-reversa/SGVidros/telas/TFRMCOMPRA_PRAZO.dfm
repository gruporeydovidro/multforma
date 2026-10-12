object FrmCompra_Prazo: TFrmCompra_Prazo
  Left = 365
  Top = 258
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Prazo de Pagamento'
  ClientHeight = 138
  ClientWidth = 358
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
  PixelsPerInch = 96
  TextHeight = 13
  object PnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 21
    Height = 138
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 337
    Height = 138
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 3
      Top = 108
      Width = 328
      Height = 5
      Shape = bsTopLine
    end
    object Label1: TLabel
      Left = 5
      Top = 3
      Width = 30
      Height = 13
      Caption = 'Prazo:'
    end
    object Label2: TLabel
      Left = 50
      Top = 3
      Width = 59
      Height = 13
      Caption = 'Vencimento:'
    end
    object BitBtnConfirm: TBitBtn
      Left = 163
      Top = 111
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 2
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 249
      Top = 111
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 3
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object EdtNr_Prazo: TCurrencyEdit
      Left = 5
      Top = 17
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '###'
      TabOrder = 0
      OnExit = EdtNr_PrazoExit
    end
    object EdtDt_Vencimento: TDateEdit
      Left = 50
      Top = 17
      Width = 90
      Height = 19
      DialogTitle = 'Selecione a Data'
      GlyphKind = gkCustom
      Glyph.Data = {binary 1850 bytes}
      NumGlyphs = 1
      StartOfWeek = Sun
      TabOrder = 1
      OnExit = EdtNr_PrazoExit
    end
  end
  object ADODsPrazoFind: TADODataSet
    Connection = FrmMain.ADOConMaster
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  Nr_Prazo'#13#10#13#10'from'#13#10'  Compra_Prazo'#13#10#13#10'where'#13#10'  Cd_Filial = :Cd_Filial and'#13#10'  Nr_Compra = :Nr_Compra and'#13#10'  Nr_Prazo  = :Nr_Prazo'
    Parameters = <
      item
        Name = 'Cd_Filial'
        Size = -1
        Value = nil?
      end
      item
        Name = 'Nr_Compra'
        Size = -1
        Value = nil?
      end
      item
        Name = 'Nr_Prazo'
        Size = -1
        Value = nil?
      end>
    Left = 121
    Top = 55
  end
  object ADOCmdPrazo: TADOCommand
    CommandText = 'insert into Compra_Prazo( Cd_Filial, Nr_Compra, Nr_Prazo )'#13#10'values( :Cd_Filial, :Nr_Compra, :Nr_Prazo )'
    Connection = FrmMain.ADOConMaster
    Parameters = <
      item
        Name = 'Cd_Filial'
        Size = -1
        Value = nil?
      end
      item
        Name = 'Nr_Compra'
        Size = -1
        Value = nil?
      end
      item
        Name = 'Nr_Prazo'
        Size = -1
        Value = nil?
      end>
    Left = 151
    Top = 55
  end
end
