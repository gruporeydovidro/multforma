object FrmProducao_Find: TFrmProducao_Find
  Left = 294
  Top = 173
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Consulta de Produ'#231#227'o'
  ClientHeight = 281
  ClientWidth = 607
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
    Height = 281
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 586
    Height = 281
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 1
      Top = 252
      Width = 580
      Height = 5
      Shape = bsTopLine
    end
    object Label11: TLabel
      Left = 153
      Top = 2
      Width = 87
      Height = 13
      Caption = 'Previs'#227'o de Inicio:'
    end
    object Label1: TLabel
      Left = 60
      Top = 1
      Width = 26
      Height = 13
      Caption = 'Data:'
    end
    object Label3: TLabel
      Left = 5
      Top = 1
      Width = 49
      Height = 13
      Caption = 'Produ'#231#227'o:'
    end
    object Bevel1: TBevel
      Left = 3
      Top = 38
      Width = 580
      Height = 5
      Shape = bsTopLine
    end
    object SbSelect: TSpeedButton
      Left = 494
      Top = 18
      Width = 85
      Height = 19
      Hint = 'Visualizar (F5)'
      Caption = '&Selecionar'
      Flat = True
      Glyph.Data = {binary 250 bytes}
      ParentShowHint = False
      ShowHint = True
      OnClick = SbSelectClick
    end
    object Label2: TLabel
      Left = 5
      Top = 39
      Width = 110
      Height = 13
      Caption = 'Registros Encontrados:'
    end
    object LblOrcamento: TLabel
      Left = 248
      Top = 1
      Width = 55
      Height = 13
      Caption = 'Or'#231'amento:'
    end
    object BitBtnConfirm: TBitBtn
      Left = 413
      Top = 254
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 4
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 499
      Top = 254
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 5
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object EdtDt_PrevistoFind: TDateEdit
      Left = 153
      Top = 16
      Width = 90
      Height = 19
      GlyphKind = gkCustom
      Glyph.Data = {binary 1850 bytes}
      NumGlyphs = 1
      StartOfWeek = Sun
      TabOrder = 2
      OnKeyPress = EdtNr_ProducaoFindKeyPress
    end
    object EdtDt_ProducaoFind: TDateEdit
      Left = 60
      Top = 16
      Width = 90
      Height = 19
      GlyphKind = gkCustom
      Glyph.Data = {binary 1850 bytes}
      NumGlyphs = 1
      StartOfWeek = Sun
      TabOrder = 1
      OnKeyPress = EdtNr_ProducaoFindKeyPress
    end
    object EdtNr_ProducaoFind: TCurrencyEdit
      Tag = 1
      Left = 5
      Top = 16
      Width = 50
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '####'
      TabOrder = 0
      OnKeyPress = EdtNr_ProducaoFindKeyPress
    end
    object DbGFind: TDBGrid
      Left = 5
      Top = 54
      Width = 574
      Height = 192
      DataSource = DsFind
      FixedColor = clSilver
      Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 3
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = DbGFindDblClick
      OnEnter = DbGFindEnter
      OnExit = DbGFindExit
      OnKeyPress = DbGFindKeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'Nr_Producao'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Dt_Producao'
          Title.Alignment = taCenter
          Width = 63
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Cd_Usuario'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Dt_Previsto'
          Title.Alignment = taCenter
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Dt_Inicio'
          Title.Alignment = taCenter
          Width = 95
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Dt_Termino'
          Title.Alignment = taCenter
          Width = 95
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Dp_Situacao'
          Title.Alignment = taCenter
          Width = 91
          Visible = True
        end>
    end
    object EdtNr_OrcamentoFind: TCurrencyEdit
      Tag = 1
      Left = 248
      Top = 16
      Width = 50
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '####'
      TabOrder = 6
      OnKeyPress = EdtNr_ProducaoFindKeyPress
    end
  end
  object ADODsFind: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    OnCalcFields = ADODsFindCalcFields
    CommandText = 'select'#13#10'  Cd_Filial, Nr_Producao, Dt_Producao, St_Producao, Cd_Usuario,'#13#10'  Dt_Inicio, Dt_Previsto, Dt_Termino'#13#10#13#10'from '#13#10'  Producao'#13#10#13#10'where'#13#10'  Cd_Filial   = :Cd_Filial and'#13#10'  Nr_Producao = :Nr_Producao'
    Parameters = <
      item
        Name = 'Cd_Filial'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = 5
      end
      item
        Name = 'Nr_Producao'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 1
      end>
    SQLOther0.Strings = (
      'select distinct'
      '  P.Cd_Filial, P.Nr_Producao, P.Dt_Producao, P.St_Producao, P.Cd_Usuario,'
      '  P.Dt_Inicio, P.Dt_Previsto, P.Dt_Termino'
      ''
      'from'
      '  Producao P'
      ''
      '/* Orcamento */'
      ''
      'where'
      '  P.Cd_Filial = :Cd_Filial'
    )
    SQLOther1.Strings = (
      '--------------- Consulta pelo or'#231'amento'
      'inner join'
      '  Producao_Item PrI'
      'on'
      '  PrI.Cd_Filial    = P.Cd_Filial and'
      '  PrI.Nr_Producao  = P.Nr_Producao and'
      '  PrI.Nr_Orcamento = :Nr_Orcamento'
    )
    Left = 120
    Top = 104
    object ADODsFindCd_Filial: TSmallintField
      FieldName = 'Cd_Filial'
    end
    object ADODsFindNr_Producao: TIntegerField
      DisplayLabel = 'Produ'#231#227'o'
      FieldName = 'Nr_Producao'
    end
    object ADODsFindDt_Producao: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'Dt_Producao'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object ADODsFindSt_Producao: TStringField
      FieldName = 'St_Producao'
      FixedChar = True
      Size = 1
    end
    object ADODsFindCd_Usuario: TStringField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'Cd_Usuario'
      Size = 15
    end
    object ADODsFindDt_Previsto: TDateTimeField
      DisplayLabel = 'Previs'#227'o'
      FieldName = 'Dt_Previsto'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object ADODsFindDt_Inicio: TDateTimeField
      DisplayLabel = 'Inicio'
      FieldName = 'Dt_Inicio'
      DisplayFormat = 'dd/mm/yyyy hh:mm'
    end
    object ADODsFindDt_Termino: TDateTimeField
      DisplayLabel = 'T'#233'rmino'
      FieldName = 'Dt_Termino'
      DisplayFormat = 'dd/mm/yyyy hh:mm'
    end
    object ADODsFindDp_Situacao: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldKind = fkCalculated
      FieldName = 'Dp_Situacao'
      Calculated = True
    end
  end
  object DsFind: TDataSource
    DataSet = ADODsFind
    Left = 88
    Top = 104
  end
end
