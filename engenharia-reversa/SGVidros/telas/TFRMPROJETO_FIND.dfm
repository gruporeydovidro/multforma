object FrmProjeto_Find: TFrmProjeto_Find
  Left = 281
  Top = 167
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Consulta de Projeto'
  ClientHeight = 420
  ClientWidth = 774
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
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object PnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 21
    Height = 420
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 753
    Height = 420
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 6
      Top = 390
      Width = 745
      Height = 5
      Shape = bsTopLine
    end
    object Label1: TLabel
      Left = 5
      Top = 44
      Width = 41
      Height = 13
      Caption = 'Projetos:'
    end
    object BvlMoldura: TBevel
      Left = 381
      Top = 58
      Width = 372
      Height = 332
      Shape = bsFrame
    end
    object ImgProjeto: TImage
      Left = 383
      Top = 61
      Width = 366
      Height = 326
      Center = True
      Stretch = True
    end
    object SbStretch: TSpeedButton
      Left = 728
      Top = 35
      Width = 20
      Height = 20
      Hint = 'Ajustar figura ao quadro'
      Flat = True
      Glyph.Data = {binary 342 bytes}
      ParentShowHint = False
      ShowHint = True
      OnClick = SbStretchClick
    end
    object BitBtnConfirm: TBitBtn
      Left = 580
      Top = 393
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 2
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 666
      Top = 393
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 4
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object EdtNm_Projeto: TLabeledEdit
      Left = 5
      Top = 20
      Width = 420
      Height = 19
      EditLabel.Width = 82
      EditLabel.Height = 13
      EditLabel.Caption = 'Nome do Projeto:'
      LabelSpacing = 1
      MaxLength = 100
      TabOrder = 0
      OnDblClick = EdtNm_ProjetoDblClick
      OnKeyPress = EdtNm_ProjetoKeyPress
    end
    object CkBContendo: TCheckBox
      Left = 681
      Top = 1
      Width = 68
      Height = 17
      TabStop = False
      Caption = 'Conten&do'
      Checked = True
      State = cbChecked
      TabOrder = 3
    end
    object DbGFind: TDBGrid
      Left = 5
      Top = 58
      Width = 373
      Height = 330
      DataSource = DsFind
      FixedColor = clSilver
      Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = DbGFindDblClick
      OnEnter = DbGFindEnter
      OnExit = DbGFindExit
      Columns = <
        item
          Expanded = False
          FieldName = 'Cd_Projeto'
          Title.Alignment = taRightJustify
          Title.Caption = 'C'#243'digo'
          Width = 56
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nm_Projeto'
          Title.Caption = 'Nome do Projeto'
          Width = 288
          Visible = True
        end>
    end
  end
  object DsFind: TDataSource
    DataSet = ADODsFind
    Left = 61
    Top = 285
  end
  object ADODsFind: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    AfterOpen = ADODsFindAfterOpen
    AfterScroll = ADODsFindAfterScroll
    CommandText = 'select'#13#10'  Cd_Projeto, Nm_Projeto'#13#10'  '#13#10'from'#13#10'  Projeto'#13#10'  '#13#10'where'#13#10'  Nm_Projeto like :Nm_Projeto'#13#10#13#10'order by'#13#10'  Nm_Projeto'
    Parameters = <
      item
        Name = 'Nm_Projeto'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 100
        Value = nil?
      end>
    Left = 31
    Top = 285
    object ADODsFindCd_Projeto: TSmallintField
      FieldName = 'Cd_Projeto'
    end
    object ADODsFindNm_Projeto: TStringField
      FieldName = 'Nm_Projeto'
      Size = 100
    end
  end
  object ADODsImagem: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'select'#13#10'  Im_Projeto'#13#10'  '#13#10'from'#13#10'  Projeto'#13#10#13#10'where'#13#10'  Cd_Projeto = :Cd_Projeto'
    DataSource = DsFind
    MasterFields = 'Cd_Projeto'
    Parameters = <
      item
        Name = 'Cd_Projeto'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = nil?
      end>
    Left = 96
    Top = 285
    object ADODsImagemIm_Projeto: TBlobField
      FieldName = 'Im_Projeto'
    end
  end
end
