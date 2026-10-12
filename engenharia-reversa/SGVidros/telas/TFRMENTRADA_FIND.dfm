object FrmEntrada_Find: TFrmEntrada_Find
  Left = 314
  Top = 225
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Consulta de Entradas no Estoque'
  ClientHeight = 359
  ClientWidth = 648
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
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object PnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 21
    Height = 359
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 627
    Height = 359
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 1
      Top = 329
      Width = 621
      Height = 5
      Shape = bsTopLine
    end
    object Label1: TLabel
      Left = 5
      Top = 0
      Width = 40
      Height = 13
      Caption = '&Entrada:'
      FocusControl = EdtNr_EntFind
    end
    object Label10: TLabel
      Left = 69
      Top = 0
      Width = 137
      Height = 13
      Caption = 'For&necedor (CNPJ / C'#243'digo):'
      FocusControl = EdtCd_EmitFind
    end
    object SbEmitente: TSpeedButton
      Left = 162
      Top = 14
      Width = 21
      Height = 19
      Hint = 'Seleciona Fornecedor'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbEmitenteClick
    end
    object Label3: TLabel
      Left = 540
      Top = 0
      Width = 33
      Height = 13
      Caption = '&Fatura:'
      FocusControl = EdtNr_FatFind
    end
    object BvlSeparator_1: TBevel
      Left = 5
      Top = 37
      Width = 608
      Height = 5
      Shape = bsTopLine
    end
    object Label2: TLabel
      Left = 11
      Top = 41
      Width = 139
      Height = 13
      Caption = 'Resultado da Consulta:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object BitBtnConfirm: TBitBtn
      Left = 453
      Top = 332
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 5
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 540
      Top = 332
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 6
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object EdtNr_EntFind: TCurrencyEdit
      Left = 5
      Top = 14
      Width = 60
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '###'
      TabOrder = 0
      OnKeyPress = EdtNr_EntFindKeyPress
    end
    object EdtNm_EmitFind: TEdit
      Left = 186
      Top = 14
      Width = 350
      Height = 19
      TabStop = False
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
    end
    object EdtCd_EmitFind: TMaskEdit
      Left = 68
      Top = 14
      Width = 93
      Height = 19
      EditMask = '##############;0; '
      MaxLength = 14
      TabOrder = 1
      OnExit = EdtCd_EmitFindExit
      OnKeyDown = EdtCd_EmitFindKeyDown
      OnKeyPress = EdtCd_EmitFindKeyPress
    end
    object EdtNr_FatFind: TCurrencyEdit
      Left = 540
      Top = 14
      Width = 60
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '###'
      TabOrder = 3
      OnKeyPress = EdtNr_FatFindKeyPress
    end
    object DbGFind: TDBGrid
      Left = 6
      Top = 57
      Width = 613
      Height = 269
      DataSource = DsFind
      FixedColor = clSilver
      Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 4
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
          FieldName = 'Nr_Entrada'
          Title.Alignment = taRightJustify
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nm_Emitente'
          Width = 287
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nr_Fatura'
          Title.Alignment = taRightJustify
          Width = 42
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Dt_Emissao'
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Dt_Lancamento'
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Vl_Nota'
          Title.Alignment = taRightJustify
          Visible = True
        end>
    end
  end
  object DsFind: TDataSource
    DataSet = ADODsFind
    Left = 25
    Top = 329
  end
  object ADODsFind: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'select top 50'#13#10'  A.Nr_Entrada, A.Cd_Emitente, B.Nm_Emitente, A.Dt_Emissao, A.Dt_Lancamento,'#13#10'  A.Vl_Nota, A.Nr_Fatura'#13#10#13#10'from'#13#10'  Entrada A'#13#10#13#10'inner join'#13#10'  Emitente B'#13#10'on'#13#10'  B.Cd_Emitente = A.Cd_Emitente'#13#10#13#10'where'#13#10'  A.Cd_Filial  =:Cd_Filial and'#13#10'  A.Nr_Entrada >= :Nr_Entrada'#13#10#13#10'order by'#13#10'  A.Nr_Entrada'#13#10
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
        Name = 'Nr_Entrada'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = nil?
      end>
    SQLOther0.Strings = (
      'select '
      '  A.Nr_Entrada, A.Cd_Emitente, B.Nm_Emitente, A.Dt_Emissao, A.Dt_Lancamento,'
      '  A.Vl_Nota, A.Nr_Fatura'
      ''
      'from'
      '  Entrada A'
      ''
      'inner join'
      '  Emitente B'
      'on'
      '  B.Cd_Emitente = A.Cd_Emitente'
      ''
      'where'
      '  A.Cd_Filial  =:Cd_Filial '
      '  /* Nr_Entrada */'
      '  /* Cd_Emitente */'
      '  /* Nr_Fatura */'
      ''
      'order by'
      '  A.Nr_Entrada'
    )
    Left = 56
    Top = 328
    object ADODsFindNr_Entrada: TIntegerField
      DisplayLabel = 'Entrada'
      FieldName = 'Nr_Entrada'
    end
    object ADODsFindCd_Emitente: TIntegerField
      FieldName = 'Cd_Emitente'
    end
    object ADODsFindNm_Emitente: TStringField
      DisplayLabel = 'Fornecedor'
      FieldName = 'Nm_Emitente'
      Size = 50
    end
    object ADODsFindDt_Emissao: TDateTimeField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'Dt_Emissao'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object ADODsFindDt_Lancamento: TDateTimeField
      DisplayLabel = 'Lan'#231'amento'
      FieldName = 'Dt_Lancamento'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object ADODsFindVl_Nota: TBCDField
      DisplayLabel = 'Valor Total'
      FieldName = 'Vl_Nota'
      DisplayFormat = '#,##0.00'
      Precision = 12
      Size = 2
    end
    object ADODsFindNr_Fatura: TIntegerField
      DisplayLabel = 'Fatura'
      FieldName = 'Nr_Fatura'
    end
  end
end
