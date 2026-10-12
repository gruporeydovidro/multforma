object FrmDownLoad: TFrmDownLoad
  Left = 288
  Top = 219
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Download de Atualiza'#231#245'es'
  ClientHeight = 527
  ClientWidth = 881
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
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 63
    Height = 527
    Align = alLeft
    TabOrder = 0
    OnDblClick = PnlLeftDblClick
    object ImgIcon: TImage
      Left = 1
      Top = 1
      Width = 61
      Height = 60
      Align = alTop
      Center = True
    end
  end
  object PnlFundo: TPanel
    Left = 63
    Top = 0
    Width = 818
    Height = 527
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object SbConectar: TSpeedButton
      Left = 5
      Top = 15
      Width = 89
      Height = 25
      Caption = '&Atualizar'
      Glyph.Data = {binary 1338 bytes}
      OnClick = SbConectarClick
    end
    object Label1: TLabel
      Left = 5
      Top = 46
      Width = 143
      Height = 13
      Caption = 'Lista de Arquivos Dispon'#237'veis:'
    end
    object Label2: TLabel
      Left = 409
      Top = 46
      Width = 100
      Height = 13
      Caption = 'Arquivos j'#225' baixados:'
    end
    object BvlSeparator: TBevel
      Left = 2
      Top = 497
      Width = 811
      Height = 5
      Shape = bsTopLine
    end
    object SbProcessFiles: TSpeedButton
      Left = 100
      Top = 15
      Width = 195
      Height = 25
      Caption = '&Processar arquivos ja baixados'
      Glyph.Data = {binary 1338 bytes}
      OnClick = SbProcessFilesClick
    end
    object Bevel1: TBevel
      Left = 1
      Top = 43
      Width = 811
      Height = 5
      Shape = bsTopLine
    end
    object SbIBPTax: TSpeedButton
      Left = 297
      Top = 15
      Width = 149
      Height = 25
      Caption = 'Atualizar &IBPTax ES'
      Glyph.Data = {binary 1338 bytes}
      OnClick = SbIBPTaxClick
    end
    object LblVersao: TLabel
      Left = 8
      Top = 504
      Width = 63
      Height = 13
      Caption = 'Vers'#227'o Atual:'
    end
    object BitBtnCancel: TBitBtn
      Left = 731
      Top = 500
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 5
      OnClick = BitBtnCancelClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object EdtNm_Host: TLabeledEdit
      Left = 24
      Top = 562
      Width = 160
      Height = 19
      EditLabel.Width = 71
      EditLabel.Height = 13
      EditLabel.Caption = 'Nome do Host:'
      LabelSpacing = 2
      TabOrder = 0
      Text = 'ftp.multforma.com.br'
      Visible = False
    end
    object EdtNm_Usuario: TLabeledEdit
      Left = 190
      Top = 562
      Width = 105
      Height = 19
      EditLabel.Width = 39
      EditLabel.Height = 13
      EditLabel.Caption = 'Usu'#225'rio:'
      LabelSpacing = 2
      TabOrder = 1
      Visible = False
    end
    object EdtSh_Usuario: TLabeledEdit
      Left = 300
      Top = 562
      Width = 105
      Height = 19
      EditLabel.Width = 34
      EditLabel.Height = 13
      EditLabel.Caption = 'Senha:'
      LabelSpacing = 2
      PasswordChar = '*'
      TabOrder = 2
      Visible = False
    end
    object LstBDisponivel: TListBox
      Left = 5
      Top = 61
      Width = 400
      Height = 403
      TabStop = False
      ItemHeight = 13
      Sorted = True
      TabOrder = 3
    end
    object STxtArquivo: TStaticText
      Left = 6
      Top = 464
      Width = 184
      Height = 17
      Caption = 'Arquivo sendo baixado: << Arquivo >>'
      TabOrder = 6
    end
    object PgBarArquivo: TProgressBar
      Left = 6
      Top = 478
      Width = 400
      Height = 16
      Smooth = True
      Step = 1
      TabOrder = 7
    end
    object STxtGeral: TStaticText
      Left = 409
      Top = 464
      Width = 59
      Height = 17
      Caption = 'Total Geral:'
      TabOrder = 9
    end
    object PgBarGeral: TProgressBar
      Left = 409
      Top = 478
      Width = 400
      Height = 16
      Smooth = True
      Step = 1
      TabOrder = 8
    end
    object CkBAntigos: TCheckBox
      Left = 676
      Top = 5
      Width = 132
      Height = 17
      TabStop = False
      Caption = 'Baixar arquivos antigos'
      TabOrder = 10
    end
    object CkBParcial: TCheckBox
      Left = 411
      Top = 562
      Width = 139
      Height = 17
      TabStop = False
      Caption = 'Eliminar arquivos parciais'
      Checked = True
      State = cbChecked
      TabOrder = 11
      Visible = False
    end
    object STxtTempo: TStaticText
      Left = 667
      Top = 46
      Width = 140
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Tempo decorrido: 00:00:00'
      TabOrder = 12
    end
    object LstBBaixado: TListBox
      Left = 409
      Top = 61
      Width = 400
      Height = 403
      TabStop = False
      ItemHeight = 13
      Sorted = True
      TabOrder = 4
    end
    object CkBDBOnly: TCheckBox
      Left = 479
      Top = 5
      Width = 191
      Height = 17
      TabStop = False
      Caption = 'Atualizar somente o banco de dados'
      TabOrder = 13
      OnClick = CkBDBOnlyClick
    end
    object CkBAppOnly: TCheckBox
      Left = 479
      Top = 20
      Width = 191
      Height = 17
      TabStop = False
      Caption = 'Atualizar somente o programa'
      TabOrder = 14
      OnClick = CkBAppOnlyClick
    end
  end
  object IdFTPDL: TIdFTP
    OnWork = IdFTPDLWork
    AutoLogin = True
    Host = 'ftp.multforma.com.br'
    Passive = True
    Password = '***REMOVIDO***'
    Username = 'multforma'
    ProxySettings.ProxyType = fpcmNone
    ProxySettings.Port = 0
    Left = 390
    Top = 180
  end
  object BkpFile: TBackupFile
    Version = '5.10'
    BackupMode = bmAll
    CompressionLevel = clFastest
    RestoreMode = rmAll
    MaxSize = 0
    SetArchiveFlag = False
    RestoreFullPath = False
    SaveFileID = False
    Left = 420
    Top = 180
  end
  object ADOCmdExecute: TADOCommand
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    Left = 13
    Top = 295
  end
  object ADOCmdIBPTax: TADOCommand
    CommandText = 'declare'#13#10'  @Cd_NCM VarChar( 9 ),'#13#10'  @Cd_Ex Char( 1 ),'#13#10'  @Cd_Tabela Char( 1 ),'#13#10'  @Pr_Nacional numeric( 7, 3 ),'#13#10'  @Pr_Importado Numeric( 7, 3 ),'#13#10'  @Pr_Estadual Numeric( 7, 3 ),'#13#10'  @Pr_Municipal Numeric( 7, 3 )'#13#10#13#10'select'#13#10'  @Cd_NCM       = :Cd_NCM,'#13#10'  @Cd_Ex        = :Cd_Ex,'#13#10'  @Cd_Tabela    = :Cd_Tabela,'#13#10'  @Pr_Nacional  = :Pr_Nacional,'#13#10'  @Pr_Importado = :Pr_Importado,'#13#10'  @Pr_Estadual  = :Pr_Estadual,'#13#10'  @Pr_Municipal = :Pr_Municipal'#13#10#13#10'if not Exists( '#13#10'   select '#13#10'     Cd_NCM '#13#10#9' '#13#10'   from '#13#10'     IBPTax'#13#10#9' '#13#10'   where'#13#10'     Cd_NCM = @Cd_NCM and'#13#10'     Cd_Ex  = @Cd_Ex'#13#10'   ) '#13#10'  insert into IBPTax( Cd_NCM, Cd_Ex, Cd_Tabela, Pr_Nacional, Pr_Importado, Pr_Estadual, Pr_Municipal )'#13#10'  values( @Cd_NCM, @Cd_Ex, @Cd_Tabela, @Pr_Nacional, @Pr_Importado, @Pr_Estadual, @Pr_Municipal )'#13#10'  '#13#10'else'#13#10'  update'#13#10'    IBPTax'#13#10#9#13#10'  set'#13#10'    Cd_Tabela    = @Cd_Tabela,'#13#10'    Pr_Nacional  = @Pr_Nacional,'#13#10'    Pr_Importado = @Pr_Importado,'#13#10'    Pr_Estadual  = @Pr_Estadual,'#13#10'    Pr_Municipal = @Pr_Municipal'#13#10#9#13#10'  where'#13#10'    Cd_NCM       = @Cd_NCM and'#13#10'    Cd_Ex        = @Cd_Ex'#13#10
    Connection = FrmMain.ADOConMaster
    Parameters = <
      item
        Name = 'Cd_NCM'
        Size = -1
        Value = nil?
      end
      item
        Name = 'Cd_Ex'
        Size = -1
        Value = nil?
      end
      item
        Name = 'Cd_Tabela'
        Size = -1
        Value = nil?
      end
      item
        Name = 'Pr_Nacional'
        Size = -1
        Value = nil?
      end
      item
        Name = 'Pr_Importado'
        Size = -1
        Value = nil?
      end
      item
        Name = 'Pr_Estadual'
        Size = -1
        Value = nil?
      end
      item
        Name = 'Pr_Municipal'
        Size = -1
        Value = nil?
      end>
    Left = 56
    Top = 296
  end
  object ACBrIBPTax: TACBrIBPTax
    ProxyPort = '8080'
    ContentsEncodingCompress = []
    NivelLog = 0
    Left = 305
    Top = 185
  end
end
