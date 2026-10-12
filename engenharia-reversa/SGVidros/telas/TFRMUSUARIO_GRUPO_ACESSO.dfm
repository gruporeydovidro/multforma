object FrmUsuario_Grupo_Acesso: TFrmUsuario_Grupo_Acesso
  Left = 256
  Top = 184
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Acessos do Grupo de Usu'#225'rios'
  ClientHeight = 447
  ClientWidth = 865
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
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 21
    Height = 447
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 844
    Height = 447
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 6
      Top = 417
      Width = 834
      Height = 5
      Shape = bsTopLine
    end
    object Label1: TLabel
      Left = 7
      Top = 38
      Width = 211
      Height = 13
      Caption = 'Acessos / Bloqueios / Fun'#231#245'es Dispon'#237'veis:'
    end
    object Label2: TLabel
      Left = 437
      Top = 38
      Width = 258
      Height = 13
      Caption = 'Acessos / Bloqueios / Fun'#231#245'es do Grupo de Usu'#225'rios:'
    end
    object SbAdd: TSpeedButton
      Tag = 1
      Left = 408
      Top = 103
      Width = 25
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
      Left = 408
      Top = 125
      Width = 25
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
      Left = 408
      Top = 167
      Width = 25
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
      Left = 408
      Top = 189
      Width = 25
      Height = 22
      Hint = 'Desabilitar Todos'
      Flat = True
      Glyph.Data = {binary 378 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbDelAllClick
    end
    object Label3: TLabel
      Left = 7
      Top = 2
      Width = 72
      Height = 13
      Caption = 'Tipo de Aceso:'
      Visible = False
    end
    object BitBtnConfirm: TBitBtn
      Left = 671
      Top = 420
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 1
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 757
      Top = 420
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 2
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object LstBDisponivel: TListBox
      Left = 7
      Top = 52
      Width = 400
      Height = 363
      ExtendedSelect = False
      ItemHeight = 13
      Sorted = True
      TabOrder = 3
      OnDblClick = SbAddClick
      OnDragDrop = LstBDisponivelDragDrop
      OnDragOver = LstBDisponivelDragOver
      OnEndDrag = LstBDisponivelEndDrag
      OnKeyPress = LstBDisponivelKeyPress
      OnMouseDown = LstBDisponivelMouseDown
    end
    object LstBGrupo: TListBox
      Left = 437
      Top = 52
      Width = 400
      Height = 363
      ExtendedSelect = False
      ItemHeight = 13
      Sorted = True
      TabOrder = 4
      OnDblClick = SbDelClick
      OnDragDrop = LstBDisponivelDragDrop
      OnDragOver = LstBDisponivelDragOver
      OnEndDrag = LstBDisponivelEndDrag
      OnKeyPress = LstBGrupoKeyPress
      OnMouseDown = LstBDisponivelMouseDown
    end
    object CbTipo: TComboBox
      Left = 7
      Top = 16
      Width = 202
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 0
      Visible = False
      Items.Strings = (
        'Todos'
        'Libera'#231#227'o'
        'Bloqueio'
        'Relatorio'
      )
    end
  end
  object ADODsAcesso: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  A.cd_acesso + '''' - '''' + A.ds_acesso as Dp_Acesso'#13#10#13#10'from'#13#10'  acesso A'#13#10#13#10'where'#13#10'  A.cd_acesso not in'#13#10'    ('#13#10'    select'#13#10'      UGA.cd_acesso'#13#10#13#10'    from'#13#10'      usuario_grupo_acesso UGA'#13#10#13#10'    where'#13#10'      UGA.cd_grupo  = :Cd_Grupo and'#13#10'      UGA.cd_acesso = A.cd_acesso'#13#10'    )'#13#10#13#10'order by'#13#10'  a.cd_acesso'
    Parameters = <
      item
        Name = 'Cd_Grupo'
        DataType = ftSmallint
        Size = -1
        Value = nil?
      end>
    SQLOther0.Strings = (
      'select'
      '  A.cd_acesso + '''' - '''' + A.ds_acesso as Dp_Acesso'
      ''
      'from'
      '  acesso A'
      ''
      'where'
      '  A.cd_acesso not in'
      '    ('
      '    select'
      '      UGA.cd_acesso'
      ''
      '    from'
      '      usuario_grupo_acesso UGA'
      ''
      '    where'
      '      UGA.cd_grupo  = :Cd_Grupo and'
      '      UGA.cd_acesso = A.cd_acesso'
      '    )'
      ''
      'order by'
      '  a.cd_acesso'
    )
    SQLOther1.Strings = (
      'select'
      '  UGA.cd_acesso + '''' - '''' + A.ds_acesso as Dp_Acesso'
      ''
      'from'
      '  usuario_grupo_acesso UGA'
      ''
      'inner join'
      '  acesso A'
      'on'
      '  A.cd_acesso = UGA.cd_acesso'
      ''
      'where'
      '  UGA.cd_grupo = :Cd_Grupo'
      ''
      'order by'
      '  UGA.cd_acesso'
    )
    Left = 31
    Top = 233
    object ADODsAcessoDp_Acesso: TStringField
      FieldName = 'Dp_Acesso'
      ReadOnly = True
      Size = 108
    end
  end
  object ADOCmdAcesso: TMultADOCMD
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLInsert.Strings = (
      'insert into usuario_grupo_acesso( cd_grupo, cd_acesso )'
      'values( :Cd_Grupo, :Cd_Acesso )'
    )
    SQLDelete.Strings = (
      'delete from'
      '  usuario_grupo_acesso'
      ''
      'where'
      '  cd_grupo  = :Cd_Grupo and'
      '  cd_acesso = :Cd_Acesso  '
    )
    Left = 61
    Top = 233
  end
end
