object FrmEmitente_Contato: TFrmEmitente_Contato
  Left = 329
  Top = 242
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Contato do Emitente'
  ClientHeight = 146
  ClientWidth = 451
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 430
    Height = 146
    Align = alClient
    Ctl3D = False
    ParentColor = True
    ParentCtl3D = False
    TabOrder = 0
    object Label33: TLabel
      Left = 4
      Top = 2
      Width = 40
      Height = 13
      Caption = 'Contato:'
    end
    object Label34: TLabel
      Left = 317
      Top = 2
      Width = 59
      Height = 13
      Caption = 'Nascimento:'
    end
    object Label35: TLabel
      Left = 4
      Top = 39
      Width = 95
      Height = 13
      Caption = 'Cargo/Dependente:'
    end
    object Label36: TLabel
      Left = 216
      Top = 39
      Width = 32
      Height = 13
      Caption = 'E-Mail:'
    end
    object Label37: TLabel
      Left = 4
      Top = 76
      Width = 45
      Height = 13
      Caption = 'Telefone:'
    end
    object Label38: TLabel
      Left = 89
      Top = 76
      Width = 33
      Height = 13
      Caption = 'Ramal:'
    end
    object Label39: TLabel
      Left = 142
      Top = 76
      Width = 35
      Height = 13
      Caption = 'Celular:'
    end
    object BvlSeparator: TBevel
      Left = 0
      Top = 115
      Width = 423
      Height = 5
      Shape = bsTopLine
    end
    object Label1: TLabel
      Left = 229
      Top = 76
      Width = 20
      Height = 13
      Caption = 'Fax:'
    end
    object EdtNm_Contato: TEdit
      Left = 4
      Top = 17
      Width = 308
      Height = 19
      MaxLength = 50
      TabOrder = 0
    end
    object EdtDt_Nascimento: TDateEdit
      Left = 318
      Top = 17
      Width = 86
      Height = 19
      CheckOnExit = True
      GlyphKind = gkCustom
      Glyph.Data = {binary 1850 bytes}
      NumGlyphs = 1
      StartOfWeek = Sun
      TabOrder = 1
    end
    object EdtDs_Cargo: TEdit
      Left = 4
      Top = 54
      Width = 203
      Height = 19
      MaxLength = 30
      TabOrder = 2
    end
    object EdtDs_EMail: TEdit
      Left = 216
      Top = 54
      Width = 207
      Height = 19
      MaxLength = 50
      TabOrder = 3
    end
    object EdtNr_Telefone: TMaskEdit
      Left = 4
      Top = 91
      Width = 80
      Height = 19
      AutoSize = False
      EditMask = '(##) ####-####;0; '
      MaxLength = 14
      TabOrder = 4
    end
    object EdtNr_Ramal: TCurrencyEdit
      Left = 89
      Top = 91
      Width = 48
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DisplayFormat = '#,###'
      TabOrder = 5
    end
    object EdtNr_Celular: TMaskEdit
      Left = 142
      Top = 91
      Width = 85
      Height = 19
      AutoSize = False
      EditMask = '(##) #####-####;0; '
      MaxLength = 15
      TabOrder = 6
    end
    object BitBtnConfirm: TBitBtn
      Left = 252
      Top = 117
      Width = 87
      Height = 27
      Caption = 'C&onfirmar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 482 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 340
      Top = 117
      Width = 87
      Height = 27
      Caption = '&Cancelar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ModalResult = 2
      ParentFont = False
      TabOrder = 9
      Glyph.Data = {binary 482 bytes}
      NumGlyphs = 2
    end
    object EdtNr_Fax: TMaskEdit
      Left = 229
      Top = 91
      Width = 82
      Height = 19
      AutoSize = False
      EditMask = '(##) ####-####;0; '
      MaxLength = 14
      TabOrder = 7
    end
  end
  object PnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 21
    Height = 146
    Align = alLeft
    TabOrder = 1
  end
  object ADOCmdUpdate: TMultADOCMD
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLInsert.Strings = (
      'insert into Emitente_Contato( Cd_Emitente, Nr_Contato, Nm_Contato,'
      '   Dt_Nascimento, Ds_Cargo, Ds_EMail, Nr_Telefone, Nr_Ramal, Nr_Celular,'
      '   Nr_Fax )'
      'values( :Cd_Emitente, :Nr_Contato, :Nm_Contato,'
      '   :Dt_Nascimento, :Ds_Cargo, :Ds_EMail, :Nr_Telefone, :Nr_Ramal, :Nr_Celular,'
      '   :Nr_Fax )'
    )
    SQLUpdate.Strings = (
      'update'
      '  Emitente_Contato'
      ''
      'set'
      '  Nm_Contato    = :Nm_Contato,'
      '  Dt_Nascimento = :Dt_Nascimento,'
      '  Ds_Cargo      = :Ds_Cargo,'
      '  Ds_EMail      = :Ds_EMail,'
      '  Nr_Telefone   = :Nr_Telefone,'
      '  Nr_Ramal      = :Nr_Ramal,'
      '  Nr_Celular    = :Nr_Celular,'
      '  Nr_Fax        = :Nr_Fax'
      ''
      'where'
      '  Cd_Emitente = :Cd_Emitente and'
      '  Nr_Contato  = :Nr_Contato'
    )
    Left = 320
    Top = 80
  end
  object ADODsContatoNovo: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  max( Nr_Contato ) as Nr_Contato'#13#10#13#10'from'#13#10'  Emitente_Contato'#13#10#13#10'where'#13#10'  Cd_Emitente = :Cd_Emitente'
    Parameters = <
      item
        Name = 'Cd_Emitente'
        DataType = ftInteger
        Size = -1
        Value = nil?
      end>
    Left = 351
    Top = 79
    object ADODsContatoNovonr_contato: TSmallintField
      FieldName = 'nr_contato'
    end
  end
end
