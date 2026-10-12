object FrmUsuario_Filial: TFrmUsuario_Filial
  Left = 318
  Top = 232
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Acessos as Filiais'
  ClientHeight = 175
  ClientWidth = 501
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
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object PnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 21
    Height = 175
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 480
    Height = 175
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 3
      Top = 145
      Width = 472
      Height = 5
      Shape = bsTopLine
    end
    object Label1: TLabel
      Left = 7
      Top = 5
      Width = 87
      Height = 13
      Caption = 'Filiais Dispon'#237'veis:'
    end
    object Label2: TLabel
      Left = 256
      Top = 5
      Width = 142
      Height = 13
      Caption = 'Filiais acessadas pelo usu'#225'rio:'
    end
    object SbAdd: TSpeedButton
      Tag = 1
      Left = 228
      Top = 23
      Width = 23
      Height = 22
      Hint = 'Habilitar'
      Flat = True
      Glyph.Data = {binary 378 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbAddClick
    end
    object SbAddAll: TSpeedButton
      Tag = 2
      Left = 228
      Top = 45
      Width = 23
      Height = 22
      Hint = 'Habilitar Todos'
      Flat = True
      Glyph.Data = {binary 378 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbAddAllClick
    end
    object SbDel: TSpeedButton
      Tag = 1
      Left = 228
      Top = 87
      Width = 23
      Height = 22
      Hint = 'Desabilitar'
      Flat = True
      Glyph.Data = {binary 378 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbDelClick
    end
    object SbDelAll: TSpeedButton
      Tag = 2
      Left = 228
      Top = 109
      Width = 23
      Height = 22
      Hint = 'Desabilitar Todos'
      Flat = True
      Glyph.Data = {binary 378 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbDelAllClick
    end
    object BitBtnConfirm: TBitBtn
      Left = 307
      Top = 148
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 2
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 393
      Top = 148
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 3
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object LstBDisponivel: TListBox
      Left = 7
      Top = 19
      Width = 216
      Height = 121
      ItemHeight = 13
      Sorted = True
      TabOrder = 0
      OnDblClick = SbAddClick
    end
    object LstBUsuario: TListBox
      Left = 256
      Top = 19
      Width = 216
      Height = 121
      ItemHeight = 13
      Sorted = True
      TabOrder = 1
      OnDblClick = SbDelClick
    end
  end
  object ADODsAcesso: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  master.dbo.IntToStrZero( F.Cd_Filial, 2 ) + '''' - '''' + F.Nm_Abreviado as Dp_Filial'#13#10#13#10'from'#13#10'  Filial F'#13#10#13#10'where'#13#10'  F.Cd_Filial not in'#13#10'  ('#13#10'  select'#13#10'    UF.Cd_Filial'#13#10#13#10'  from'#13#10'    Usuario_Filial UF'#13#10#13#10'  where'#13#10'    UF.Cd_Filial = F.Cd_Filial'#13#10'  )'#13#10#13#10'order by'#13#10'  F.Cd_Filial'
    Parameters = <>
    SQLOther0.Strings = (
      'select'
      '  dbo.IntToStrZero( F.Cd_Filial, 2 ) + '''' - '''' + F.Nm_Abreviado as Dp_Filial'
      ''
      'from'
      '  Filial F'
      ''
      'where'
      '  F.Cd_Filial not in'
      '  ('
      '  select'
      '    UF.Cd_Filial'
      ''
      '  from'
      '    Usuario_Filial UF'
      ''
      '  where'
      '    UF.Cd_Usuario = :Cd_Usuario and'
      '    UF.Cd_Filial  = F.Cd_Filial'
      '  )'
      ''
      'order by'
      '  F.Cd_Filial'
    )
    SQLOther1.Strings = (
      'select'
      '  dbo.IntToStrZero( UF.Cd_Filial, 2 ) + '''' - '''' + F.Nm_Abreviado as Dp_Filial'
      ''
      'from'
      '  Usuario_Filial UF'
      ''
      'inner join'
      '  Filial F'
      ''
      'on'
      '  F.Cd_Filial = UF.Cd_Filial'
      ''
      'where'
      '  UF.Cd_Usuario = :Cd_Usuario'
      ''
      'order by'
      '  UF.Cd_Filial'
    )
    Left = 26
    Top = 146
    object ADODsAcessodp_filial: TStringField
      FieldName = 'dp_filial'
      Size = 254
    end
  end
  object ADOCmdAcesso: TMultADOCMD
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLInsert.Strings = (
      'insert into Usuario_Filial( Cd_Usuario, Cd_Filial )'
      'values( :Cd_Usuario, :Cd_Filial )'
    )
    SQLDelete.Strings = (
      'delete from'
      '  Usuario_Filial'
      ''
      'where'
      '  Cd_Usuario = :Cd_Usuario and'
      '  Cd_Filial  = :Cd_Filial'
    )
    Left = 56
    Top = 146
  end
end
