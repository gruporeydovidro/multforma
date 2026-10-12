object FrmUsuario_Senha: TFrmUsuario_Senha
  Left = 433
  Top = 308
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Altera'#231#227'o de Senha'
  ClientHeight = 213
  ClientWidth = 500
  Color = clWindow
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PnlFundo: TPanel
    Left = 63
    Top = 0
    Width = 437
    Height = 213
    Align = alClient
    ParentColor = True
    TabOrder = 0
    object BvlSeparator: TBevel
      Left = 3
      Top = 182
      Width = 428
      Height = 5
      Shape = bsTopLine
    end
    object BitBtnConfirm: TBitBtn
      Left = 264
      Top = 186
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      Enabled = False
      TabOrder = 3
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 350
      Top = 186
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 4
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object EdtSh_Atual: TLabeledEdit
      Left = 5
      Top = 24
      Width = 121
      Height = 19
      CharCase = ecUpperCase
      EditLabel.Width = 61
      EditLabel.Height = 13
      EditLabel.Caption = 'Senha Atual:'
      LabelSpacing = 2
      MaxLength = 15
      PasswordChar = '*'
      TabOrder = 0
      OnChange = EdtSh_AtualChange
    end
    object EdtSh_Nova: TLabeledEdit
      Left = 5
      Top = 65
      Width = 121
      Height = 19
      CharCase = ecUpperCase
      EditLabel.Width = 63
      EditLabel.Height = 13
      EditLabel.Caption = 'Nova Senha:'
      Enabled = False
      LabelSpacing = 2
      MaxLength = 15
      PasswordChar = '*'
      TabOrder = 1
      OnChange = EdtSh_AtualChange
    end
    object EdtSh_Confirma: TLabeledEdit
      Left = 131
      Top = 65
      Width = 121
      Height = 19
      CharCase = ecUpperCase
      EditLabel.Width = 107
      EditLabel.Height = 13
      EditLabel.Caption = 'Confirme Nova Senha:'
      Enabled = False
      LabelSpacing = 2
      MaxLength = 15
      PasswordChar = '*'
      TabOrder = 2
      OnChange = EdtSh_AtualChange
    end
  end
  object PnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 63
    Height = 213
    Align = alLeft
    TabOrder = 1
    object ImgIcon: TImage
      Left = 1
      Top = 1
      Width = 61
      Height = 60
      Align = alTop
      Center = True
      Transparent = True
    end
  end
  object ADOCmdUsuario: TADOCommand
    CommandText = 'update'#13#10'  usuario'#13#10#13#10'set'#13#10'  sh_usuario = :Sh_Usuario'#13#10#13#10'where'#13#10'  cd_usuario = :Cd_Usuario'
    Connection = FrmMain.ADOConMaster
    Parameters = <
      item
        Name = 'Sh_Usuario'
        Size = -1
        Value = nil?
      end
      item
        Name = 'Cd_Usuario'
        Size = -1
        Value = nil?
      end>
    Left = 327
    Top = 10
  end
  object ADODsUsuario: TADODataSet
    Connection = FrmMain.ADOConMaster
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  sh_usuario'#13#10#13#10'from'#13#10'  usuario'#13#10#13#10'where'#13#10'  cd_usuario = :Cd_Usuario'
    Parameters = <
      item
        Name = 'Cd_Usuario'
        DataType = ftString
        Size = -1
        Value = nil?
      end>
    Left = 298
    Top = 11
    object ADODsUsuariosh_usuario: TStringField
      FieldName = 'sh_usuario'
      Size = 15
    end
  end
end
