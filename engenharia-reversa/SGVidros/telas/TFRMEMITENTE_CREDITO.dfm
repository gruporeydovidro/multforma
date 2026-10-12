object FrmEmitente_Credito: TFrmEmitente_Credito
  Left = 294
  Top = 173
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Lan'#231'amentos de Cr'#233'dito do Emitente'
  ClientHeight = 197
  ClientWidth = 497
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
    Height = 197
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 476
    Height = 197
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 2
      Top = 167
      Width = 470
      Height = 5
      Shape = bsTopLine
    end
    object Label35: TLabel
      Left = 5
      Top = 2
      Width = 26
      Height = 13
      Caption = 'Data:'
      Transparent = True
    end
    object Label1: TLabel
      Left = 99
      Top = 2
      Width = 24
      Height = 13
      Caption = 'Tipo:'
    end
    object Label13: TLabel
      Left = 181
      Top = 0
      Width = 27
      Height = 13
      Caption = 'Valor:'
    end
    object Label5: TLabel
      Left = 318
      Top = 39
      Width = 39
      Height = 13
      Caption = 'Usu'#225'rio:'
    end
    object SbUsuario: TSpeedButton
      Left = 428
      Top = 53
      Width = 23
      Height = 19
      Hint = 'Seleciona Usu'#225'rio'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbUsuarioClick
    end
    object BitBtnConfirm: TBitBtn
      Left = 303
      Top = 170
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 5
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 389
      Top = 170
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 6
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object EdtDt_Lancamento: TDateEdit
      Left = 5
      Top = 16
      Width = 89
      Height = 19
      GlyphKind = gkCustom
      Glyph.Data = {binary 1850 bytes}
      NumGlyphs = 1
      StartOfWeek = Sun
      YearDigits = dyFour
      TabOrder = 0
    end
    object CbLancamento: TComboBox
      Left = 99
      Top = 15
      Width = 78
      Height = 21
      Style = csDropDownList
      Ctl3D = False
      ItemHeight = 13
      ItemIndex = 0
      ParentCtl3D = False
      TabOrder = 1
      Text = 'Cr'#233'dito'
      Items.Strings = (
        'Cr'#233'dito'
        'D'#233'bito'
      )
    end
    object EdtVl_Lancamento: TCurrencyEdit
      Left = 181
      Top = 15
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      TabOrder = 2
    end
    object EdtDs_Lancamento: TLabeledEdit
      Left = 5
      Top = 53
      Width = 308
      Height = 19
      AutoSelect = False
      AutoSize = False
      EditLabel.Width = 51
      EditLabel.Height = 13
      EditLabel.Caption = 'Descri'#231#227'o:'
      LabelSpacing = 1
      MaxLength = 100
      TabOrder = 3
    end
    object EdtCd_Usuario: TEdit
      Tag = 1
      Left = 318
      Top = 53
      Width = 110
      Height = 19
      CharCase = ecUpperCase
      MaxLength = 15
      TabOrder = 4
      OnExit = EdtCd_UsuarioExit
    end
  end
  object ADOCmdLancamento: TMultADOCMD
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLInsert.Strings = (
      'insert into Emitente_Credito( Cd_Emitente, Nr_Lancamento, Tp_Lancamento,'
      '  Dt_Lancamento, Vl_Lancamento, Ds_Lancamento, Cd_Usuario )'
      ''
      'values( :Cd_Emitente, :Nr_Lancamento, :Tp_Lancamento,'
      '  :Dt_Lancamento, :Vl_Lancamento, :Ds_Lancamento, :Cd_Usuario )'
    )
    SQLUpdate.Strings = (
      'update'
      '  Emitente_Credito'
      ''
      'set'
      '  Tp_Lancamento = :Tp_Lancamento,'
      '  Dt_Lancamento = :Dt_Lancamento,'
      '  Vl_Lancamento = :Vl_Lancamento,'
      '  Ds_Lancamento = :Ds_Lancamento,'
      '  Cd_Usuario    = :Cd_Usuario'
      ''
      'where'
      '  Cd_Emitente   = :Cd_Emitente and'
      '  Nr_Lancamento = :Nr_Lancamento'
    )
    Left = 40
    Top = 120
  end
  object ADODsNew: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'select'#13#10'  Max( Nr_Lancamento ) as Nr_Lancamento'#13#10#13#10'from'#13#10'  Emitente_Credito '#13#10#13#10'where'#13#10'  Cd_Emitente = :Cd_Emitente'
    Parameters = <
      item
        Name = 'Cd_Emitente'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = nil?
      end>
    Left = 71
    Top = 120
    object ADODsNewNr_Lancamento: TSmallintField
      FieldName = 'Nr_Lancamento'
      ReadOnly = True
    end
  end
  object ADODsFind: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'select'#13#10'  Cd_Emitente, Nr_Lancamento, Dt_Lancamento, Tp_Lancamento, Vl_Lancamento, '#13#10'  Ds_Lancamento, Cd_Usuario'#13#10#13#10'from'#13#10'  Emitente_Credito '#13#10#13#10'where'#13#10'  Cd_Emitente   = :Cd_Emitente and'#13#10'  Nr_Lancamento = :Nr_Lancamento'
    Parameters = <
      item
        Name = 'Cd_Emitente'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = nil?
      end
      item
        Name = 'Nr_Lancamento'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = nil?
      end>
    Left = 102
    Top = 120
    object ADODsFindCd_Emitente: TIntegerField
      FieldName = 'Cd_Emitente'
    end
    object ADODsFindNr_Lancamento: TSmallintField
      FieldName = 'Nr_Lancamento'
    end
    object ADODsFindDt_Lancamento: TDateTimeField
      FieldName = 'Dt_Lancamento'
    end
    object ADODsFindTp_Lancamento: TStringField
      FieldName = 'Tp_Lancamento'
      FixedChar = True
      Size = 1
    end
    object ADODsFindVl_Lancamento: TBCDField
      FieldName = 'Vl_Lancamento'
      Precision = 12
      Size = 2
    end
    object ADODsFindDs_Lancamento: TStringField
      FieldName = 'Ds_Lancamento'
      Size = 100
    end
    object ADODsFindCd_Usuario: TStringField
      FieldName = 'Cd_Usuario'
      Size = 15
    end
  end
end
