object FrmOrcamento_Ambiente: TFrmOrcamento_Ambiente
  Left = 294
  Top = 173
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Sele'#231#227'o de Ambiente'
  ClientHeight = 214
  ClientWidth = 434
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 21
    Height = 214
    Align = alLeft
    TabOrder = 1
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 413
    Height = 214
    Align = alClient
    ParentColor = True
    TabOrder = 2
    object BvlSeparator: TBevel
      Left = 2
      Top = 184
      Width = 405
      Height = 5
      Shape = bsTopLine
    end
    object Label1: TLabel
      Left = 5
      Top = 5
      Width = 106
      Height = 13
      Caption = 'Selecione o Ambiente:'
    end
    object BitBtnConfirm: TBitBtn
      Left = 240
      Top = 187
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      ModalResult = 1
      TabOrder = 0
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 326
      Top = 187
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 1
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
  end
  object DbGAmbiente: TDBGrid
    Left = 26
    Top = 20
    Width = 400
    Height = 161
    DataSource = DsAmbiente
    FixedColor = clSilver
    Options = [dgTitles, dgColumnResize, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DbGAmbienteDblClick
    OnEnter = DbGAmbienteEnter
    OnExit = DbGAmbienteExit
    OnKeyPress = DbGAmbienteKeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'Ds_Ambiente'
        Width = 372
        Visible = True
      end>
  end
  object DsAmbiente: TDataSource
    DataSet = ADODsAmbiente
    Left = 240
    Top = 115
  end
  object ADODsAmbiente: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'select distinct'#13#10'  Ds_Ambiente'#13#10#13#10'from'#13#10'  Orcamento_Item'#13#10#13#10'where'#13#10'  Cd_Filial = :Cd_Filial and'#13#10'  Nr_Orcamento = :Nr_Orcamento and'#13#10'  Ds_Ambiente <> '''''#13#10#13#10'order by'#13#10'  Ds_Ambiente'
    Parameters = <
      item
        Name = 'Cd_Filial'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = nil?
      end
      item
        Name = 'Nr_Orcamento'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = nil?
      end>
    Left = 270
    Top = 115
    object ADODsAmbienteDs_Ambiente: TStringField
      DisplayLabel = 'Ambiente'
      FieldName = 'Ds_Ambiente'
      Size = 50
    end
  end
end
