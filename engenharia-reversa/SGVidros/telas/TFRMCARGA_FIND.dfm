object FrmCarga_Find: TFrmCarga_Find
  Left = 276
  Top = 236
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Consulta de Carga'
  ClientHeight = 401
  ClientWidth = 774
  Color = clWhite
  Ctl3D = False
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object PnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 21
    Height = 401
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 753
    Height = 401
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 2
      Top = 371
      Width = 747
      Height = 5
      Shape = bsTopLine
    end
    object Label1: TLabel
      Left = 4
      Top = 3
      Width = 51
      Height = 13
      Caption = 'Romaneio:'
      Transparent = True
    end
    object Label11: TLabel
      Left = 160
      Top = 3
      Width = 91
      Height = 13
      Caption = 'Previs'#227'o de Sa'#237'da:'
    end
    object SbTransportador: TSpeedButton
      Left = 305
      Top = 17
      Width = 23
      Height = 19
      Hint = 'Seleciona Transportador'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbTransportadorClick
    end
    object Label15: TLabel
      Left = 254
      Top = 2
      Width = 69
      Height = 13
      Caption = 'Transportador:'
    end
    object Label18: TLabel
      Left = 4
      Top = 38
      Width = 30
      Height = 13
      Caption = 'Placa:'
      Transparent = True
    end
    object Label2: TLabel
      Left = 66
      Top = 3
      Width = 26
      Height = 13
      Caption = 'Data:'
    end
    object BvlSeparator_1: TBevel
      Left = 2
      Top = 74
      Width = 747
      Height = 5
      Shape = bsTopLine
    end
    object SbOpen: TSpeedButton
      Left = 665
      Top = 54
      Width = 82
      Height = 19
      Hint = 'Visualizar'
      Caption = '&Selecionar'
      Flat = True
      Glyph.Data = {binary 250 bytes}
      ParentShowHint = False
      ShowHint = True
      OnClick = SbOpenClick
    end
    object Label3: TLabel
      Left = 5
      Top = 75
      Width = 36
      Height = 13
      Caption = 'Cargas:'
    end
    object BitBtnConfirm: TBitBtn
      Left = 580
      Top = 374
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 8
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 666
      Top = 374
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 9
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object EdtNr_Romaneio: TCurrencyEdit
      Left = 4
      Top = 17
      Width = 60
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DisplayFormat = '#,###'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object EdtDt_Prevista: TDateEdit
      Left = 160
      Top = 17
      Width = 90
      Height = 19
      GlyphKind = gkCustom
      Glyph.Data = {binary 1850 bytes}
      NumGlyphs = 1
      StartOfWeek = Sun
      TabOrder = 2
    end
    object EdtNm_Transportador: TEdit
      Left = 329
      Top = 17
      Width = 308
      Height = 19
      TabStop = False
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 30
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
    end
    object EdtCd_Transportador: TCurrencyEdit
      Tag = 2
      Left = 254
      Top = 17
      Width = 50
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 3
      OnExit = EdtCd_TransportadorExit
      OnKeyDown = EdtCd_TransportadorKeyDown
    end
    object EdtNr_Placa: TMaskEdit
      Left = 4
      Top = 53
      Width = 60
      Height = 19
      CharCase = ecUpperCase
      TabOrder = 5
    end
    object EdtDt_Carga: TDateEdit
      Left = 66
      Top = 17
      Width = 90
      Height = 19
      GlyphKind = gkCustom
      Glyph.Data = {binary 1850 bytes}
      NumGlyphs = 1
      StartOfWeek = Sun
      TabOrder = 1
    end
    object DbGFind: TDBGrid
      Left = 6
      Top = 90
      Width = 740
      Height = 278
      DataSource = DsFind
      FixedColor = clSilver
      Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 7
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
          FieldName = 'Nr_Romaneio'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Dt_Carga'
          Title.Alignment = taCenter
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nm_Transportador'
          Width = 230
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nr_Placa'
          Width = 52
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Vl_Frete'
          Title.Alignment = taRightJustify
          Width = 54
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Cp_Veiculo'
          Title.Alignment = taRightJustify
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Dt_Prevista'
          Title.Alignment = taCenter
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Ps_Alocado'
          Title.Alignment = taRightJustify
          Width = 47
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Ds_Romaneio'
          Width = 91
          Visible = True
        end>
    end
    object EdtDs_Romaneio: TLabeledEdit
      Left = 68
      Top = 53
      Width = 174
      Height = 19
      EditLabel.Width = 80
      EditLabel.Height = 13
      EditLabel.Caption = 'ID do Romaneio:'
      LabelSpacing = 1
      MaxLength = 20
      TabOrder = 6
    end
  end
  object DsFind: TDataSource
    DataSet = ADODsFind
    Left = 51
    Top = 200
  end
  object ADODsFind: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'select'#13#10'  C.Cd_Filial, C.Nr_Romaneio, C.St_Carga, C.Dt_Carga, C.Cd_Usuario,'#13#10'  C.Cd_Transportador, T.Nm_Transportador, C.Nr_Placa, C.Dt_Saida,'#13#10'  C.Dt_Retorno, C.Vl_Frete, C.Cp_Veiculo, C.Dt_Prevista, C.Qt_Orcamento,'#13#10'  C.Ps_Alocado, C.Ds_Romaneio'#13#10#13#10'from'#13#10'  Carga C'#13#10#13#10'left join'#13#10'  Transportador T'#13#10'on'#13#10'  T.Cd_Transportador = C.Cd_Transportador'#13#10#13#10'where'#13#10'  C.Cd_Filial   = :Cd_Filial'
    Parameters = <
      item
        Name = 'Cd_Filial'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = 1
      end>
    SQLOther0.Strings = (
      'select'
      '  C.Cd_Filial, C.Nr_Romaneio, C.St_Carga, C.Dt_Carga, C.Cd_Usuario,'
      '  C.Cd_Transportador, T.Nm_Transportador, C.Nr_Placa, C.Dt_Saida,'
      '  C.Dt_Retorno, C.Vl_Frete, C.Cp_Veiculo, C.Dt_Prevista, C.Qt_Orcamento,'
      '  C.Ps_Alocado, C.Ds_Romaneio'
      ''
      'from'
      '  Carga C'
      ''
      'left join'
      '  Transportador T'
      'on'
      '  T.Cd_Transportador = C.Cd_Transportador'
      ''
      'where'
      '  C.Cd_Filial   = :Cd_Filial'
    )
    Left = 80
    Top = 200
    object ADODsFindCd_Filial: TSmallintField
      FieldName = 'Cd_Filial'
    end
    object ADODsFindNr_Romaneio: TIntegerField
      DisplayLabel = 'Romaneio'
      FieldName = 'Nr_Romaneio'
    end
    object ADODsFindSt_Carga: TStringField
      FieldName = 'St_Carga'
      FixedChar = True
      Size = 1
    end
    object ADODsFindDt_Carga: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'Dt_Carga'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object ADODsFindCd_Usuario: TStringField
      FieldName = 'Cd_Usuario'
      Size = 15
    end
    object ADODsFindCd_Transportador: TSmallintField
      FieldName = 'Cd_Transportador'
    end
    object ADODsFindNm_Transportador: TStringField
      DisplayLabel = 'Transportador'
      FieldName = 'Nm_Transportador'
      Size = 50
    end
    object ADODsFindNr_Placa: TStringField
      DisplayLabel = 'Placa'
      FieldName = 'Nr_Placa'
      Size = 10
    end
    object ADODsFindDt_Saida: TDateTimeField
      FieldName = 'Dt_Saida'
    end
    object ADODsFindDt_Retorno: TDateTimeField
      FieldName = 'Dt_Retorno'
    end
    object ADODsFindVl_Frete: TBCDField
      DisplayLabel = 'Frete'
      FieldName = 'Vl_Frete'
      DisplayFormat = '#,##0.00'
      Precision = 12
      Size = 2
    end
    object ADODsFindCp_Veiculo: TSmallintField
      DisplayLabel = 'Capacidade'
      FieldName = 'Cp_Veiculo'
    end
    object ADODsFindDt_Prevista: TDateTimeField
      DisplayLabel = 'Previs'#227'o'
      FieldName = 'Dt_Prevista'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object ADODsFindQt_Orcamento: TSmallintField
      DisplayLabel = 'Or'#231'amentos'
      FieldName = 'Qt_Orcamento'
    end
    object ADODsFindPs_Alocado: TBCDField
      DisplayLabel = 'Alocado'
      FieldName = 'Ps_Alocado'
      DisplayFormat = '#,##0.0'
      Precision = 12
      Size = 2
    end
    object ADODsFindDs_Romaneio: TStringField
      DisplayLabel = 'ID Romaneio'
      FieldName = 'Ds_Romaneio'
    end
  end
end
