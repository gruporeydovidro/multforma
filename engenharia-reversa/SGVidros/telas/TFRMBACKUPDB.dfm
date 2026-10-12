object FrmBackupDB: TFrmBackupDB
  Left = 294
  Top = 173
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Backup do Banco de dados'
  ClientHeight = 232
  ClientWidth = 697
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
    Height = 232
    Align = alLeft
    TabOrder = 0
    ExplicitHeight = 218
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 676
    Height = 232
    Align = alClient
    ParentColor = True
    TabOrder = 1
    ExplicitWidth = 575
    ExplicitHeight = 218
    object BvlSeparator: TBevel
      Left = 3
      Top = 200
      Width = 668
      Height = 5
      Shape = bsTopLine
    end
    object Label2: TLabel
      Left = 5
      Top = 2
      Width = 85
      Height = 13
      Caption = 'Nome do Arquivo:'
    end
    object SbSave: TSpeedButton
      Left = 279
      Top = 13
      Width = 23
      Height = 21
      Hint = 'Salvar como...'
      Flat = True
      Glyph.Data = {binary 378 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
    end
    object Label1: TLabel
      Left = 306
      Top = 0
      Width = 94
      Height = 13
      Caption = 'M'#233'todo do Backup:'
    end
    object Label3: TLabel
      Left = 5
      Top = 76
      Width = 636
      Height = 117
      Caption = 'Observa'#231#245'es:'#13#10'- Fa'#231'a esse backup sempre no servidor'#13#10'- Caso n'#227'o seja possivel fazer no servidor, no nome do arquivo voc'#234' precisa colocar o nome do computador onde esta sendo feito o backup'#13#10'   Exemplos: '#13#10'      \\estacao1\Drive_C\BackupDB\Seguranca_Manual.bak'#13#10'      \\Financeiro\Drive_C\BackupDB\Seguranca_Manual.bak'#13#10'      \\Nome_Do_Meu_Computador\Nome_Do_Meu_Driver_Compartilhado\BackupDB\Seguranca_Manual.bak'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      WordWrap = True
    end
    object Label4: TLabel
      Left = 5
      Top = 36
      Width = 171
      Height = 13
      Caption = 'Usu'#225'rio para backup: (padr'#227'o "sa"):'
    end
    object Label5: TLabel
      Left = 284
      Top = 36
      Width = 276
      Height = 13
      Caption = 'Senha do usu'#225'rio de backup (padr'#227'o "sql" ou em branco):'
    end
    object BitBtnConfirm: TBitBtn
      Left = 503
      Top = 204
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 4
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 589
      Top = 204
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 5
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object EdtNm_File: TEdit
      Left = 5
      Top = 15
      Width = 274
      Height = 19
      TabOrder = 0
      Text = 'C:\BackupDB\Seguranca_Manual.BAK'
    end
    object CbMetodo: TComboBox
      Left = 306
      Top = 15
      Width = 260
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 1
      Items.Strings = (
        'Interno (independe da vers'#227'o do MS-SQL Server)'
        'Backup para MSDE / MS-SQL Server 2000'
        'Backup para MS-SQL Server 2005'
        ''
      )
    end
    object EdtNm_User: TEdit
      Left = 5
      Top = 50
      Width = 274
      Height = 19
      TabOrder = 2
      Text = 'sa'
    end
    object EdtDs_Password: TEdit
      Left = 284
      Top = 50
      Width = 274
      Height = 19
      PasswordChar = '*'
      TabOrder = 3
      Text = '***REMOVIDO***'
    end
  end
end
