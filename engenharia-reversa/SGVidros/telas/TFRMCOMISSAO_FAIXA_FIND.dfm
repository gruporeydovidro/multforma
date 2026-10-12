object FrmComissao_Faixa_Find: TFrmComissao_Faixa_Find
  Left = 341
  Top = 217
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Consulta de Faixa de Comiss'#227'o'
  ClientHeight = 291
  ClientWidth = 630
  Color = clWhite
  Ctl3D = False
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object PnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 21
    Height = 291
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 609
    Height = 291
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 3
      Top = 261
      Width = 600
      Height = 5
      Shape = bsTopLine
    end
    object BvlSeparetor_2: TBevel
      Left = 3
      Top = 45
      Width = 600
      Height = 5
      Shape = bsTopLine
    end
    object Label1: TLabel
      Left = 5
      Top = 48
      Width = 110
      Height = 13
      Caption = 'Registros Encontrados:'
    end
    object Bevel1: TBevel
      Left = 299
      Top = 56
      Width = 148
      Height = 41
      Shape = bsFrame
    end
    object Label2: TLabel
      Left = 349
      Top = 50
      Width = 47
      Height = 13
      Caption = '  Faixa  '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Bevel2: TBevel
      Left = 450
      Top = 56
      Width = 127
      Height = 41
      Shape = bsFrame
    end
    object Label3: TLabel
      Left = 488
      Top = 50
      Width = 50
      Height = 13
      Caption = '  Perda  '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object BitBtnConfirm: TBitBtn
      Left = 435
      Top = 264
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 2
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 521
      Top = 264
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 3
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object EdtFind: TLabeledEdit
      Left = 5
      Top = 20
      Width = 308
      Height = 19
      AutoSelect = False
      EditLabel.Width = 84
      EditLabel.Height = 13
      EditLabel.Caption = 'Faixa a Consultar:'
      LabelSpacing = 2
      MaxLength = 50
      TabOrder = 0
      OnDblClick = EdtFindDblClick
      OnKeyPress = EdtFindKeyPress
    end
    object CkBContendo: TCheckBox
      Left = 522
      Top = 0
      Width = 76
      Height = 17
      Caption = 'Conten&do...'
      TabOrder = 4
      OnClick = CkBContendoClick
    end
    object DbGFind: TDBGrid
      Left = 6
      Top = 65
      Width = 594
      Height = 193
      DataSource = DsFind
      FixedColor = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgColumnResize, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clBlack
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
          FieldName = 'Cd_Faixa'
          Width = 38
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Ds_Faixa'
          Width = 207
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Pr_Comissao'
          Title.Alignment = taRightJustify
          Width = 47
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Vl_Inicial'
          Title.Alignment = taRightJustify
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Vl_Final'
          Title.Alignment = taRightJustify
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Pr_Desconto'
          Title.Alignment = taRightJustify
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Pr_Perda'
          Title.Alignment = taRightJustify
          Visible = True
        end>
    end
  end
  object DsFind: TDataSource
    DataSet = ADODsFind
    Left = 326
    Top = 120
  end
  object ADODsFind: TADODataSet
    Active = True
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  Cd_Faixa, Ds_Faixa, Pr_Comissao, Vl_Inicial, Vl_Final, Pr_Desconto, '#13#10'  Pr_Perda'#13#10#13#10'from'#13#10'  Comissao_Faixa'#13#10#13#10'where'#13#10'  Ds_Faixa like :find'#13#10#13#10'order by'#13#10'  Ds_Faixa'
    Parameters = <
      item
        Name = 'Find'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = 'JO%'
      end>
    Left = 356
    Top = 120
    object ADODsFindCd_Faixa: TSmallintField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'Cd_Faixa'
    end
    object ADODsFindDs_Faixa: TStringField
      DisplayLabel = 'Descri'#231#227'o da Faixa'
      FieldName = 'Ds_Faixa'
      Size = 50
    end
    object ADODsFindPr_Comissao: TBCDField
      DisplayLabel = 'Comiss'#227'o'
      FieldName = 'Pr_Comissao'
      DisplayFormat = '#,##0.00#'
      Precision = 9
      Size = 3
    end
    object ADODsFindPr_Desconto: TBCDField
      DisplayLabel = 'Desconto'
      FieldName = 'Pr_Desconto'
      DisplayFormat = '#,##0.00#'
      Precision = 9
      Size = 3
    end
    object ADODsFindPr_Perda: TBCDField
      DisplayLabel = 'Perda'
      FieldName = 'Pr_Perda'
      DisplayFormat = '#,##0.00#'
      Precision = 9
      Size = 3
    end
    object ADODsFindVl_Inicial: TBCDField
      DisplayLabel = 'Maior ou Igual'
      FieldName = 'Vl_Inicial'
      Precision = 12
      Size = 3
    end
    object ADODsFindVl_Final: TBCDField
      DisplayLabel = 'Menor ou Igual'
      FieldName = 'Vl_Final'
      Precision = 12
      Size = 3
    end
  end
end
