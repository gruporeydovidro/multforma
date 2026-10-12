object FrmProduto_Prazo_Find: TFrmProduto_Prazo_Find
  Left = 349
  Top = 236
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Consulta de Prazo de Aquisi'#231#227'o'
  ClientHeight = 161
  ClientWidth = 351
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
    Height = 161
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 330
    Height = 161
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 3
      Top = 130
      Width = 322
      Height = 5
      Shape = bsTopLine
    end
    object Label1: TLabel
      Left = 5
      Top = 0
      Width = 110
      Height = 13
      Caption = 'Registros Encontrados:'
    end
    object BitBtnConfirm: TBitBtn
      Left = 157
      Top = 134
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 0
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 243
      Top = 134
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 1
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object DbGFind: TDBGrid
      Left = 6
      Top = 19
      Width = 316
      Height = 107
      DataSource = DsFind
      FixedColor = clSilver
      Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = BitBtnConfirmClick
      OnEnter = DbGFindEnter
      OnExit = DbGFindExit
      OnKeyPress = DbGFindKeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'Nr_Prazo'
          Title.Alignment = taRightJustify
          Width = 37
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Pr_AVista'
          Title.Alignment = taRightJustify
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Pr_Acres_Prazo'
          Title.Alignment = taRightJustify
          Width = 93
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Pr_Decres_Prazo'
          Title.Alignment = taRightJustify
          Width = 102
          Visible = True
        end>
    end
  end
  object DsFind: TDataSource
    DataSet = ADODsFind
    Left = 276
    Top = 95
  end
  object ADODsFind: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'select'#13#10'  Nr_Prazo, Pr_AVista, Pr_Acres_Prazo, Pr_Decres_Prazo'#13#10#13#10'from'#13#10'  Produto_Prazo'#13#10#13#10'order by'#13#10'  Nr_Prazo'
    Parameters = <>
    Left = 306
    Top = 95
    object ADODsFindNr_Prazo: TSmallintField
      DisplayLabel = 'Prazo'
      FieldName = 'Nr_Prazo'
      DisplayFormat = '#,##0'
    end
    object ADODsFindPr_AVista: TBCDField
      DisplayLabel = #192' Vista'
      FieldName = 'Pr_AVista'
      DisplayFormat = '#,##0.00'
      Precision = 9
      Size = 2
    end
    object ADODsFindPr_Acres_Prazo: TBCDField
      DisplayLabel = 'Acr'#233'scimo '#224' Prazo'
      FieldName = 'Pr_Acres_Prazo'
      DisplayFormat = '#,##0.00'
      Precision = 9
      Size = 2
    end
    object ADODsFindPr_Decres_Prazo: TBCDField
      DisplayLabel = 'Decr'#233'scimo a Prazo'
      FieldName = 'Pr_Decres_Prazo'
      DisplayFormat = '#,##0.00'
      Precision = 9
      Size = 2
    end
  end
end
