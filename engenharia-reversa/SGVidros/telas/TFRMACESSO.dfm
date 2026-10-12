object FrmAcesso: TFrmAcesso
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'FrmAcesso'
  ClientHeight = 330
  ClientWidth = 520
  Color = clSilver
  Ctl3D = False
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object LblAcesso: TLabel
    Left = 34
    Top = 101
    Width = 295
    Height = 31
    AutoSize = False
    Caption = 'Informe o nome do usu'#225'rio e sua respectiva senha para acessar o sistema'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
    WordWrap = True
  end
  object LabelWeb1: TLabelWeb
    Left = 2
    Top = 300
    Width = 156
    Height = 13
    Caption = 'suporte@multforma.com.br'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label2: TLabel
    Left = 0
    Top = 316
    Width = 520
    Height = 14
    Align = alBottom
    Alignment = taCenter
    Caption = '(27) 3329-6783'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
    ExplicitTop = 317
    ExplicitWidth = 99
  end
  object LabelWeb2: TLabelWeb
    Left = 376
    Top = 300
    Width = 142
    Height = 13
    Cursor = crHandPoint
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'www.multforma.com.br'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label4: TLabel
    Left = 38
    Top = 144
    Width = 46
    Height = 13
    Caption = 'Usu'#225'rio:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label5: TLabel
    Left = 167
    Top = 144
    Width = 38
    Height = 13
    Caption = 'Senha:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object LblPrograma: TLabel
    Left = 272
    Top = 77
    Width = 243
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Multforma SG'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    Transparent = True
  end
  object LblData: TLabel
    Left = 335
    Top = 97
    Width = 180
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = '29/04/2011 '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    Transparent = True
  end
  object BitBtnConfirm: TBitBtn
    Left = 167
    Top = 196
    Width = 85
    Height = 25
    Caption = 'C&onfirmar'
    TabOrder = 2
    OnClick = BitBtnConfirmClick
    Glyph.Data = {binary 2066 bytes}
    NumGlyphs = 2
  end
  object BitBtnCancel: TBitBtn
    Left = 253
    Top = 196
    Width = 85
    Height = 25
    Caption = '&Cancelar'
    TabOrder = 3
    OnClick = BitBtnCancelClick
    Glyph.Data = {binary 2066 bytes}
    NumGlyphs = 2
  end
  object EdtCd_Usuario: TEdit
    Left = 37
    Top = 158
    Width = 121
    Height = 19
    TabOrder = 0
  end
  object EdtSh_Usuario: TEdit
    Left = 167
    Top = 158
    Width = 121
    Height = 19
    CharCase = ecUpperCase
    PasswordChar = '*'
    TabOrder = 1
  end
  object PnlApp: TPanel
    Left = 445
    Top = 3
    Width = 72
    Height = 72
    BevelInner = bvLowered
    BevelWidth = 5
    BorderStyle = bsSingle
    Color = clWhite
    ParentBackground = False
    TabOrder = 4
    object ImgIcon: TImage
      Left = 10
      Top = 10
      Width = 50
      Height = 50
      Align = alClient
      Center = True
      ExplicitLeft = 35
      ExplicitTop = 3
      ExplicitWidth = 48
      ExplicitHeight = 48
    end
  end
  object FrmBG: TFormBG
    Left = 376
    Top = 152
  end
  object ADOCheckAccess: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'select'#13#10'  UGA.Cd_Grupo, U.Sh_Usuario'#13#10#13#10'from'#13#10'  Usuario U'#13#10#13#10'inner join'#13#10'  Usuario_Grupo_Acesso UGA'#13#10'on'#13#10'  UGA.Cd_Grupo   = U.Cd_Grupo and'#13#10'  UGA.Cd_Acesso = :Cd_Acesso '#13#10#13#10'where'#13#10'  U.Cd_Usuario = :Cd_Usuario'
    Parameters = <
      item
        Name = 'Cd_Acesso'
        DataType = ftString
        Size = 5
        Value = 'ESP10'
      end
      item
        Name = 'Cd_Usuario'
        DataType = ftString
        Size = 11
        Value = 'WELLINGTONB'
      end>
    Left = 368
    Top = 208
    object ADOCheckAccessCd_Grupo: TSmallintField
      FieldName = 'Cd_Grupo'
    end
    object ADOCheckAccessSh_Usuario: TStringField
      FieldName = 'Sh_Usuario'
      Size = 15
    end
  end
end
