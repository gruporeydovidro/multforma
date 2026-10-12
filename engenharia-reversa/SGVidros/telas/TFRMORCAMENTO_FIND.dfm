object FrmOrcamento_Find: TFrmOrcamento_Find
  Left = 313
  Top = 190
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Consulta de Or'#231'amentos'
  ClientHeight = 479
  ClientWidth = 885
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
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object PnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 21
    Height = 479
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 864
    Height = 479
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object Label1: TLabel
      Left = 5
      Top = 1
      Width = 55
      Height = 13
      Caption = 'Or'#231'amento:'
    end
    object Label10: TLabel
      Left = 64
      Top = 1
      Width = 35
      Height = 13
      Caption = 'Cliente:'
    end
    object SbEmiFind: TSpeedButton
      Left = 115
      Top = 15
      Width = 23
      Height = 19
      Hint = 'Seleciona Cliente'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbEmiFindClick
    end
    object Label3: TLabel
      Left = 451
      Top = 1
      Width = 63
      Height = 13
      Caption = 'N'#186' da Fatura:'
    end
    object Label2: TLabel
      Left = 10
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
    object BvlSeparator_1: TBevel
      Left = 1
      Top = 37
      Width = 855
      Height = 5
      Shape = bsTopLine
    end
    object Label4: TLabel
      Left = 691
      Top = 1
      Width = 81
      Height = 13
      Caption = 'N'#186' Cupom Fiscal:'
    end
    object PnlButtons: TPanel
      Left = 1
      Top = 447
      Width = 862
      Height = 31
      Align = alBottom
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 8
      object BvlSeparator: TBevel
        Left = 2
        Top = 1
        Width = 855
        Height = 5
        Shape = bsTopLine
      end
      object BitBtnConfirm: TBitBtn
        Left = 690
        Top = 5
        Width = 85
        Height = 25
        Caption = 'C&onfirmar'
        TabOrder = 0
        OnClick = BitBtnConfirmClick
        Glyph.Data = {binary 2066 bytes}
        NumGlyphs = 2
      end
      object BitBtnCancel: TBitBtn
        Left = 776
        Top = 5
        Width = 85
        Height = 25
        Caption = '&Cancelar'
        ModalResult = 2
        TabOrder = 1
        Glyph.Data = {binary 2066 bytes}
        NumGlyphs = 2
      end
    end
    object PnlLabotario: TPanel
      Left = 1
      Top = 386
      Width = 862
      Height = 61
      Align = alBottom
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 7
      object DbGLaboratorio: TDBGrid
        Left = 5
        Top = 2
        Width = 848
        Height = 57
        DataSource = DsLaboratorio
        FixedColor = clSilver
        Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnEnter = DbGClienteEnter
        OnExit = DbGClienteExit
        Columns = <
          item
            Expanded = False
            FieldName = 'nm_laboratorio'
            Width = 370
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ds_condicao'
            Width = 206
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nm_transportador'
            Width = 219
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Dp_Frete'
            Visible = True
          end>
      end
    end
    object EdtNr_OrcaFind: TCurrencyEdit
      Tag = 1
      Left = 5
      Top = 15
      Width = 50
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 0
      OnKeyPress = EdtNr_OrcaFindKeyPress
    end
    object EdtCd_EmiFind: TCurrencyEdit
      Tag = 2
      Left = 64
      Top = 15
      Width = 50
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 1
      OnExit = EdtCd_EmiFindExit
      OnKeyDown = EdtCd_EmiFindKeyDown
      OnKeyPress = EdtCd_EmiFindKeyPress
    end
    object EdtNm_EmiFind: TEdit
      Left = 139
      Top = 15
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
      TabOrder = 2
    end
    object EdtNr_Fatura_Find: TCurrencyEdit
      Tag = 3
      Left = 451
      Top = 15
      Width = 50
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 3
      OnKeyPress = EdtNr_Fatura_FindKeyPress
    end
    object EdtNr_Ped_Emitente: TLabeledEdit
      Tag = 4
      Left = 518
      Top = 15
      Width = 170
      Height = 19
      CharCase = ecUpperCase
      EditLabel.Width = 141
      EditLabel.Height = 13
      EditLabel.Caption = 'N'#250'mero do Pedido do Cliente:'
      LabelSpacing = 2
      MaxLength = 30
      TabOrder = 4
      OnKeyPress = EdtNr_Ped_EmitenteKeyPress
    end
    object DbGFind: TDBGrid
      Left = 6
      Top = 57
      Width = 848
      Height = 328
      DataSource = DsFind
      FixedColor = clSilver
      Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 6
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = BitBtnConfirmClick
      OnEnter = DbGClienteEnter
      OnExit = DbGClienteExit
      OnKeyPress = DbGFindKeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'Nr_Orcamento'
          Width = 56
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Dt_Emissao'
          Title.Alignment = taCenter
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nm_Emitente'
          Width = 241
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nm_Funcionario'
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nr_Pedido_Emitente'
          Width = 73
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nr_Fatura'
          Title.Alignment = taRightJustify
          Width = 45
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nr_ECF'
          Title.Alignment = taRightJustify
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Dp_Situacao'
          Title.Alignment = taCenter
          Width = 96
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Vl_Pedido'
          Title.Alignment = taRightJustify
          Width = 63
          Visible = True
        end>
    end
    object EdtNr_ECF: TCurrencyEdit
      Tag = 5
      Left = 691
      Top = 15
      Width = 50
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 5
      OnKeyPress = EdtNr_Fatura_FindKeyPress
    end
  end
  object DsFind: TDataSource
    DataSet = ADODsFind
    Left = 35
    Top = 277
  end
  object ADODsFind: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    OnCalcFields = ADODsFindCalcFields
    CommandText = 'select /* Limite */'#13#10'  OT.Nr_Orcamento, OT.St_Orcamento, OT.Dt_Emissao, OT.Cd_Emitente, OT.Nm_Emitente,'#13#10'  OT.Vl_Orcamento as Vl_Pedido, OT.Cd_Filial, OT.Nm_Funcionario, OT.Nr_Fatura,'#13#10'  O.Nr_Pedido_Emitente, O.Nr_ECF'#13#10#13#10'from'#13#10'  Orcamento_Total OT'#13#10#13#10'inner join'#13#10'  Orcamento O'#13#10'on'#13#10'  O.Cd_Filial    = OT.Cd_Filial and'#13#10'  O.Nr_Orcamento = OT.Nr_Orcamento'#13#10'  /* Pedido_Cliente */'#13#10#13#10'where'#13#10'  OT.Cd_Filial    = :Cd_Filial'#13#10'  /* Condicao */'#13#10#13#10'order by'#13#10'  OT.Nr_Orcamento'
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
      'select /* Limite */'
      '  OT.Nr_Orcamento, OT.St_Orcamento, OT.Dt_Emissao, OT.Cd_Emitente, OT.Nm_Emitente,'
      '  OT.Vl_Orcamento as Vl_Pedido, OT.Cd_Filial, OT.Nm_Funcionario, OT.Nr_Fatura,'
      '  O.Nr_Pedido_Emitente, O.Nr_ECF'
      ''
      'from'
      '  Orcamento_Total OT'
      ''
      'inner join'
      '  Orcamento O'
      'on'
      '  O.Cd_Filial    = OT.Cd_Filial and'
      '  O.Nr_Orcamento = OT.Nr_Orcamento'
      '  /* Pedido_Cliente */'
      '  /* Nr_ECF */'
      ''
      'where'
      '  OT.Cd_Filial    = :Cd_Filial'
      '  /* Condicao */'
      ''
      'order by'
      '  /* Ordem */'
    )
    Left = 64
    Top = 278
    object ADODsFindNr_Orcamento: TIntegerField
      DisplayLabel = 'Or'#231'amento'
      FieldName = 'Nr_Orcamento'
    end
    object ADODsFindSt_Orcamento: TStringField
      FieldName = 'St_Orcamento'
      FixedChar = True
      Size = 1
    end
    object ADODsFindDt_Emissao: TDateTimeField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'Dt_Emissao'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object ADODsFindCd_Emitente: TIntegerField
      FieldName = 'Cd_Emitente'
    end
    object ADODsFindNm_Emitente: TStringField
      DisplayLabel = 'Cliente'
      FieldName = 'Nm_Emitente'
      Size = 50
    end
    object ADODsFindVl_Pedido: TBCDField
      DisplayLabel = 'Valor'
      FieldName = 'Vl_Pedido'
      ReadOnly = True
      DisplayFormat = '#,##0.00'
      Precision = 28
      Size = 9
    end
    object ADODsFindCd_Filial: TSmallintField
      FieldName = 'Cd_Filial'
    end
    object ADODsFindNm_Funcionario: TStringField
      DisplayLabel = 'Vendedor'
      FieldName = 'Nm_Funcionario'
      Size = 50
    end
    object ADODsFindDp_Situacao: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldKind = fkCalculated
      FieldName = 'Dp_Situacao'
      Calculated = True
    end
    object ADODsFindNr_Fatura: TIntegerField
      DisplayLabel = 'Fatura'
      FieldName = 'Nr_Fatura'
    end
    object ADODsFindNr_Pedido_Emitente: TStringField
      DisplayLabel = 'N'#186' do Cliente'
      FieldName = 'Nr_Pedido_Emitente'
      Size = 30
    end
    object ADODsFindNr_ECF: TIntegerField
      DisplayLabel = 'Cupom Fiscal'
      FieldName = 'Nr_ECF'
    end
  end
  object ADODsLaboratorio: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    OnCalcFields = ADODsLaboratorioCalcFields
    CommandText = 'select distinct'#13#10'  OI.Cd_Filial, OI.Nr_Orcamento, P.Cd_Laboratorio, L.Nm_Laboratorio, OP.Ds_Condicao, '#13#10'  OP.Tp_Frete, OP.Cd_Transportador, T.Nm_Transportador'#13#10#13#10'from'#13#10'  Orcamento_Item OI'#13#10#13#10'inner join'#13#10'  Produto P'#13#10'on'#13#10'  P.Cd_Produto = OI.Cd_Produto'#13#10#13#10'inner join'#13#10'  Laboratorio L'#13#10'on'#13#10'  L.Cd_Laboratorio = P.Cd_Laboratorio'#13#10#13#10'left join'#13#10'  Orcamento_Pagamento OP'#13#10'on'#13#10'  OP.Cd_Filial      = OI.Cd_Filial and'#13#10'  OP.Nr_Orcamento   = OI.Nr_Orcamento and'#13#10'  OP.Cd_Laboratorio = P.Cd_Laboratorio'#13#10#13#10'left join'#13#10'  Transportador T'#13#10'on'#13#10'  T.Cd_Transportador = OP.Cd_Transportador  '#13#10'where'#13#10'  OI.Cd_Filial    = :Cd_Filial and'#13#10'  OI.Nr_Orcamento = :Nr_Orcamento'
    DataSource = DsFind
    MasterFields = 'Cd_Filial;Nr_Orcamento'
    Parameters = <
      item
        Name = 'Cd_Filial'
        DataType = ftSmallint
        Value = 1
      end
      item
        Name = 'Nr_Orcamento'
        DataType = ftInteger
        Value = 1
      end>
    Left = 309
    Top = 278
    object ADODsLaboratoriocd_laboratorio: TSmallintField
      FieldName = 'cd_laboratorio'
    end
    object ADODsLaboratorionm_laboratorio: TStringField
      DisplayLabel = 'Laborat'#243'rio/Fabricante/Distribuidora'
      FieldName = 'nm_laboratorio'
      Size = 50
    end
    object ADODsLaboratoriods_condicao: TStringField
      DisplayLabel = 'Condi'#231#227'o de Pagamento'
      FieldName = 'ds_condicao'
      Size = 50
    end
    object ADODsLaboratoriotp_frete: TStringField
      FieldName = 'tp_frete'
      FixedChar = True
      Size = 1
    end
    object ADODsLaboratoriocd_transportador: TSmallintField
      FieldName = 'cd_transportador'
    end
    object ADODsLaboratorionm_transportador: TStringField
      DisplayLabel = 'Transportador'
      FieldName = 'nm_transportador'
      Size = 50
    end
    object ADODsLaboratorioDp_Frete: TStringField
      DisplayLabel = 'Frete'
      FieldKind = fkCalculated
      FieldName = 'Dp_Frete'
      Size = 3
      Calculated = True
    end
    object ADODsLaboratoriocd_filial: TSmallintField
      FieldName = 'cd_filial'
    end
    object ADODsLaboratorionr_orcamento: TIntegerField
      FieldName = 'nr_orcamento'
    end
  end
  object DsLaboratorio: TDataSource
    DataSet = ADODsLaboratorio
    Left = 280
    Top = 278
  end
end
