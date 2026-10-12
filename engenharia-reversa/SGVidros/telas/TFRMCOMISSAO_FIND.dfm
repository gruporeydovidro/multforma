object FrmComissao_Find: TFrmComissao_Find
  Left = 294
  Top = 173
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Consulta de Apura'#231#227'o de Comiss'#227'o'
  ClientHeight = 306
  ClientWidth = 717
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
    Height = 306
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 696
    Height = 306
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 3
      Top = 276
      Width = 688
      Height = 5
      Shape = bsTopLine
    end
    object Label1: TLabel
      Left = 5
      Top = 2
      Width = 48
      Height = 13
      Caption = 'Comiss'#227'o:'
      Transparent = True
    end
    object Label11: TLabel
      Left = 70
      Top = 2
      Width = 26
      Height = 13
      Caption = 'Data:'
    end
    object SbProdutoSelect: TSpeedButton
      Left = 166
      Top = 17
      Width = 85
      Height = 19
      Hint = 'Seleciona Produtos'
      Caption = '&Selecionar'
      Flat = True
      Glyph.Data = {binary 646 bytes}
      ParentShowHint = False
      ShowHint = True
      OnClick = SbProdutoSelectClick
    end
    object BvlSeparator_1: TBevel
      Left = -1
      Top = 40
      Width = 688
      Height = 5
      Shape = bsTopLine
    end
    object Label2: TLabel
      Left = 5
      Top = 44
      Width = 45
      Height = 13
      Caption = 'Produtos:'
    end
    object BitBtnConfirm: TBitBtn
      Left = 523
      Top = 279
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 3
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 609
      Top = 279
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 4
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object EdtNr_Comissao: TCurrencyEdit
      Left = 5
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
    object EdtDt_Comissao: TDateEdit
      Left = 70
      Top = 17
      Width = 90
      Height = 19
      DialogTitle = 'Selecione a Data'
      GlyphKind = gkCustom
      Glyph.Data = {binary 1850 bytes}
      NumGlyphs = 1
      StartOfWeek = Sun
      TabOrder = 1
    end
    object DbGProdutos: TDBGrid
      Left = 6
      Top = 60
      Width = 682
      Height = 212
      DataSource = DsFind
      FixedColor = clSilver
      Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = DbGProdutosDblClick
      OnEnter = DbGProdutosEnter
      OnExit = DbGProdutosExit
      OnKeyPress = DbGProdutosKeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'Nr_Comissao'
          Width = 49
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Dt_Comissao'
          Width = 63
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Dt_Inicio'
          Title.Alignment = taCenter
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Dt_Termino'
          Title.Alignment = taCenter
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Dt_Pagamento'
          Title.Alignment = taCenter
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nm_Portador'
          Width = 109
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Ds_Historico'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Vl_Apurado'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Vl_Comissionado'
          Visible = True
        end>
    end
  end
  object DsFind: TDataSource
    DataSet = ADODsFind
    Left = 27
    Top = 195
  end
  object ADODsFind: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'select'#13#10'  C.Cd_Filial, C.Nr_Comissao, C.Dt_Comissao, C.St_Comissao, C.Cd_Usuario,'#13#10'  C.Dt_Inicio, C.Dt_Termino, C.Tp_Apuracao, C.Dt_Pagamento,'#13#10'  C.Cd_Portador, P.Nm_Portador, C.Cd_Historico, H.Ds_Historico,'#13#10'  C.Vl_Apurado, Vl_Comissionado'#13#10#13#10'from'#13#10'  Comissao C'#13#10#13#10'left join'#13#10'  Portador P'#13#10'on'#13#10'  P.Cd_Portador = C.Cd_Portador'#13#10#13#10'left join'#13#10'  Historico H'#13#10'on'#13#10'  H.Cd_Historico = C.Cd_Historico'#13#10#13#10'where'#13#10'  C.Cd_Filial   = :Cd_Filial '
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
      '  C.Cd_Filial, C.Nr_Comissao, C.Dt_Comissao, C.St_Comissao, C.Cd_Usuario,'
      '  C.Dt_Inicio, C.Dt_Termino, C.Tp_Apuracao, C.Dt_Pagamento,'
      '  C.Cd_Portador, P.Nm_Portador, C.Cd_Historico, H.Ds_Historico,'
      '  C.Vl_Apurado, Vl_Comissionado'
      ''
      'from'
      '  Comissao C'
      ''
      'left join'
      '  Portador P'
      'on'
      '  P.Cd_Portador = C.Cd_Portador'
      ''
      'left join'
      '  Historico H'
      'on'
      '  H.Cd_Historico = C.Cd_Historico'
      ''
      'where'
      '  C.Cd_Filial   = :Cd_Filial'
      '  /* Nr_Comissao */'
      '  /* Dt_Comissao */'
    )
    Left = 60
    Top = 195
    object ADODsFindCd_Filial: TSmallintField
      FieldName = 'Cd_Filial'
    end
    object ADODsFindNr_Comissao: TSmallintField
      DisplayLabel = 'Comiss'#227'o'
      FieldName = 'Nr_Comissao'
    end
    object ADODsFindDt_Comissao: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'Dt_Comissao'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object ADODsFindSt_Comissao: TStringField
      FieldName = 'St_Comissao'
      FixedChar = True
      Size = 1
    end
    object ADODsFindCd_Usuario: TStringField
      FieldName = 'Cd_Usuario'
      Size = 15
    end
    object ADODsFindDt_Inicio: TDateTimeField
      DefaultExpression = 'Inicio'
      FieldName = 'Dt_Inicio'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object ADODsFindDt_Termino: TDateTimeField
      DisplayLabel = 'T'#233'rmino'
      FieldName = 'Dt_Termino'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object ADODsFindDt_Pagamento: TDateTimeField
      DisplayLabel = 'Pagamento'
      FieldName = 'Dt_Pagamento'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object ADODsFindCd_Portador: TSmallintField
      FieldName = 'Cd_Portador'
    end
    object ADODsFindNm_Portador: TStringField
      DisplayLabel = 'Portador'
      FieldName = 'Nm_Portador'
      Size = 50
    end
    object ADODsFindCd_Historico: TSmallintField
      FieldName = 'Cd_Historico'
    end
    object ADODsFindDs_Historico: TStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'Ds_Historico'
      Size = 30
    end
    object ADODsFindVl_Apurado: TBCDField
      DisplayLabel = 'Apurado'
      FieldName = 'Vl_Apurado'
      DisplayFormat = '#,##0.00'
      Precision = 12
      Size = 3
    end
    object ADODsFindVl_Comissionado: TBCDField
      DisplayLabel = 'Comissionado'
      FieldName = 'Vl_Comissionado'
      DisplayFormat = '#,##0.00'
      Precision = 12
      Size = 3
    end
  end
end
