object FrmOrcamento_Pagamento: TFrmOrcamento_Pagamento
  Left = 280
  Top = 268
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Condi'#231#245'es de Pagamento'
  ClientHeight = 365
  ClientWidth = 691
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 21
    Height = 365
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 670
    Height = 365
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 3
      Top = 336
      Width = 663
      Height = 5
      Shape = bsTopLine
    end
    object Label1: TLabel
      Left = 5
      Top = 5
      Width = 127
      Height = 13
      Caption = 'Laborat'#243'rios / Fabricantes:'
    end
    object BvlSeparator_1: TBevel
      Left = 3
      Top = 143
      Width = 590
      Height = 5
      Shape = bsTopLine
    end
    object BitBtnConfirm: TBitBtn
      Left = 496
      Top = 338
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 2
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 582
      Top = 338
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 3
      OnClick = BitBtnCancelClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object DbGPagamento: TDBGrid
      Left = 5
      Top = 20
      Width = 655
      Height = 120
      DataSource = DsLaboratorio
      FixedColor = clSilver
      Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = DbGPagamentoDblClick
      OnEnter = DbGPagamentoEnter
      OnExit = DbGPagamentoExit
      OnKeyPress = DbGPagamentoKeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'nm_laboratorio'
          Width = 328
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ds_condicao'
          Visible = True
        end>
    end
    object BitBtnAll: TBitBtn
      Tag = 2
      Left = 583
      Top = 338
      Width = 85
      Height = 25
      Caption = '&Todos'
      TabOrder = 4
      OnClick = BitBtnSelectClick
      Glyph.Data = {binary 250 bytes}
    end
    object BitBtnSelect: TBitBtn
      Tag = 1
      Left = 487
      Top = 338
      Width = 95
      Height = 25
      Caption = '&Selecionado'
      TabOrder = 5
      OnClick = BitBtnSelectClick
      Glyph.Data = {binary 250 bytes}
    end
    object NbPagamento: TNotebook
      Left = 1
      Top = 144
      Width = 660
      Height = 190
      TabOrder = 1
      object TPage
        Left = 0
        Top = 0
        Caption = 'Default'
        ExplicitWidth = 0
        ExplicitHeight = 0
        object Label2: TLabel
          Left = 5
          Top = 38
          Width = 27
          Height = 13
          Caption = 'Frete:'
        end
        object Label3: TLabel
          Left = 73
          Top = 38
          Width = 69
          Height = 13
          Caption = 'Transportador:'
        end
        object SbTransportador: TSpeedButton
          Left = 123
          Top = 53
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
        object Label4: TLabel
          Left = 5
          Top = 76
          Width = 66
          Height = 13
          Caption = 'Observa'#231#245'es:'
        end
        object EdtDs_Condicao: TLabeledEdit
          Left = 5
          Top = 17
          Width = 308
          Height = 19
          EditLabel.Width = 120
          EditLabel.Height = 13
          EditLabel.Caption = 'Condi'#231#227'o de Pagamento:'
          PopupMenu = PmpMenPrazo
          TabOrder = 0
        end
        object CbFrete: TComboBox
          Left = 5
          Top = 53
          Width = 64
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          TabOrder = 1
          OnChange = CbFreteChange
          Items.Strings = (
            'CIF'
            'FOB'
          )
        end
        object EdtCd_Transportador: TCurrencyEdit
          Tag = 1
          Left = 73
          Top = 53
          Width = 50
          Height = 19
          Margins.Left = 2
          Margins.Top = 2
          AutoSize = False
          DecimalPlaces = 0
          DisplayFormat = '#,###'
          TabOrder = 2
          OnExit = EdtCd_TransportadorExit
          OnKeyDown = EdtCd_TransportadorKeyDown
        end
        object EdtNm_Transportador: TEdit
          Left = 147
          Top = 53
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
          TabOrder = 3
        end
        object MmObservacao: TMemo
          Left = 5
          Top = 92
          Width = 654
          Height = 54
          Lines.Strings = (
            'MmObservacao'
          )
          ScrollBars = ssVertical
          TabOrder = 4
        end
        object CkBConfRepresentada: TCheckBox
          Left = 5
          Top = 150
          Width = 181
          Height = 17
          Caption = 'E-Mail recebido na representa em:'
          TabOrder = 5
          OnClick = CkBConfRepresentadaClick
        end
        object EdtDt_Conf_Representada: TDateEdit
          Left = 5
          Top = 167
          Width = 90
          Height = 19
          Enabled = False
          NumGlyphs = 2
          TabOrder = 6
        end
        object EdtHr_Conf_Representada: TMaskEdit
          Left = 101
          Top = 167
          Width = 31
          Height = 19
          Enabled = False
          EditMask = '##:##;1; '
          MaxLength = 5
          TabOrder = 7
          Text = '  :  '
          OnEnter = EdtHr_Conf_RepresentadaEnter
        end
        object CkBSaida_Representada: TCheckBox
          Left = 195
          Top = 150
          Width = 123
          Height = 17
          Caption = 'Sa'#237'da de Mercadoria:'
          TabOrder = 8
          OnClick = CkBSaida_RepresentadaClick
        end
        object EdtDt_Saida_Representada: TDateEdit
          Left = 195
          Top = 167
          Width = 89
          Height = 19
          Enabled = False
          NumGlyphs = 2
          TabOrder = 9
        end
        object CkBConf_Emitente: TCheckBox
          Left = 320
          Top = 150
          Width = 110
          Height = 17
          Caption = 'Cliente Notificado:'
          TabOrder = 10
          OnClick = CkBConf_EmitenteClick
        end
        object EdtDt_Conf_Emitente: TDateEdit
          Left = 320
          Top = 167
          Width = 89
          Height = 19
          Enabled = False
          NumGlyphs = 2
          TabOrder = 11
        end
        object EdtHr_Conf_Emitente: TMaskEdit
          Left = 415
          Top = 167
          Width = 31
          Height = 19
          EditMask = '##:##;1; '
          MaxLength = 5
          TabOrder = 12
          Text = '  :  '
        end
      end
      object TPage
        Left = 0
        Top = 0
        Caption = 'DB'
        ExplicitWidth = 0
        ExplicitHeight = 0
        object Label5: TLabel
          Left = 5
          Top = 3
          Width = 120
          Height = 13
          Caption = 'Condi'#231#227'o de Pagamento:'
        end
        object Label6: TLabel
          Left = 5
          Top = 38
          Width = 27
          Height = 13
          Caption = 'Frete:'
        end
        object Label7: TLabel
          Left = 73
          Top = 38
          Width = 69
          Height = 13
          Caption = 'Transportador:'
        end
        object Label8: TLabel
          Left = 5
          Top = 76
          Width = 66
          Height = 13
          Caption = 'Observa'#231#245'es:'
        end
        object Label9: TLabel
          Left = 5
          Top = 150
          Width = 161
          Height = 13
          Caption = 'E-Mail recebido na representa em:'
        end
        object Label10: TLabel
          Left = 170
          Top = 150
          Width = 103
          Height = 13
          Caption = 'Sa'#237'da da Mercadoria:'
        end
        object Label11: TLabel
          Left = 286
          Top = 150
          Width = 86
          Height = 13
          Caption = 'Cliente Notificado:'
        end
        object DbEdtDs_Condicao: TDBEdit
          Left = 5
          Top = 17
          Width = 310
          Height = 19
          DataField = 'ds_condicao'
          DataSource = DsLaboratorio
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object DbEdtDp_Frete: TDBEdit
          Left = 5
          Top = 53
          Width = 41
          Height = 19
          DataField = 'Dp_Frete'
          DataSource = DsLaboratorio
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object DbEdtCd_Transportador: TDBEdit
          Left = 73
          Top = 53
          Width = 50
          Height = 19
          DataField = 'cd_transportador'
          DataSource = DsLaboratorio
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object DbEdtNm_Transportador: TDBEdit
          Left = 125
          Top = 53
          Width = 330
          Height = 19
          DataField = 'nm_transportador'
          DataSource = DsLaboratorio
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object DbMmObservacao: TDBMemo
          Left = 5
          Top = 91
          Width = 586
          Height = 55
          DataField = 'mm_observacao'
          DataSource = DsLaboratorio
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ScrollBars = ssVertical
          TabOrder = 4
        end
        object DbEdtDt_Conf_Representada: TDBEdit
          Left = 5
          Top = 165
          Width = 95
          Height = 19
          DataField = 'dt_conf_representada'
          DataSource = DsLaboratorio
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
        object DbEdtDt_Saida_Representada: TDBEdit
          Left = 170
          Top = 165
          Width = 75
          Height = 19
          DataField = 'dt_saida_representada'
          DataSource = DsLaboratorio
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
        end
        object DbEdtDt_Conf_Emitente: TDBEdit
          Left = 285
          Top = 165
          Width = 95
          Height = 19
          DataField = 'dt_conf_emitente'
          DataSource = DsLaboratorio
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
        end
      end
    end
    object BitBtnEMail: TBitBtn
      Left = 4
      Top = 338
      Width = 92
      Height = 25
      Caption = 'E-&Mail'
      TabOrder = 6
      OnClick = BitBtnEMailClick
      Glyph.Data = {binary 1338 bytes}
    end
  end
  object DsLaboratorio: TDataSource
    DataSet = ADODsLaboratorio
    Left = 36
    Top = 100
  end
  object ADODsLaboratorio: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterScroll = ADODsLaboratorioAfterScroll
    OnCalcFields = ADODsLaboratorioCalcFields
    CommandText = 'select distinct'#13#10'  P.Cd_Laboratorio, L.Nm_Laboratorio, OP.Ds_Condicao, OP.Tp_Frete,'#13#10'  OP.Cd_Transportador, T.Nm_Transportador, Cast( OP.Mm_Observacao as VarChar( 5000 ) ) as Mm_Observacao,'#13#10'  OP.Dt_Conf_Representada, OP.Dt_Saida_Representada, OP.Dt_Conf_Emitente,'#13#10'  L.Ds_EMail'#13#10#13#10#13#10'from'#13#10'  Orcamento_Item OI'#13#10#13#10'inner join'#13#10'  Produto P'#13#10'on'#13#10'  P.Cd_Produto = OI.Cd_Produto'#13#10#13#10'inner join'#13#10'  Laboratorio L'#13#10'on'#13#10'  L.Cd_Laboratorio = P.Cd_Laboratorio'#13#10#13#10'left join'#13#10'  Orcamento_Pagamento OP'#13#10'on'#13#10'  OP.Cd_Filial      = OI.Cd_Filial and'#13#10'  OP.Nr_Orcamento   = OI.Nr_Orcamento and'#13#10'  OP.Cd_Laboratorio = P.Cd_Laboratorio'#13#10#13#10'left join'#13#10'  Transportador T'#13#10'on'#13#10'  T.Cd_Transportador = OP.Cd_Transportador  '#13#10'where'#13#10'  OI.Cd_Filial    = :Cd_Filial and'#13#10'  OI.Nr_Orcamento = :Nr_Orcamento'
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
    Left = 65
    Top = 100
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
      FieldName = 'nm_transportador'
      Size = 50
    end
    object ADODsLaboratoriomm_observacao: TStringField
      FieldName = 'mm_observacao'
      Size = 5000
    end
    object ADODsLaboratorioDp_Frete: TStringField
      FieldKind = fkCalculated
      FieldName = 'Dp_Frete'
      Size = 3
      Calculated = True
    end
    object ADODsLaboratoriodt_conf_representada: TDateTimeField
      FieldName = 'dt_conf_representada'
      DisplayFormat = 'dd/mm/yyyy HH:MM'
    end
    object ADODsLaboratoriodt_saida_representada: TDateTimeField
      FieldName = 'dt_saida_representada'
    end
    object ADODsLaboratoriodt_conf_emitente: TDateTimeField
      FieldName = 'dt_conf_emitente'
      DisplayFormat = 'dd/mm/yyyy HH:MM'
    end
    object ADODsLaboratoriods_email: TStringField
      FieldName = 'ds_email'
      Size = 50
    end
  end
  object ADOCmdPagamento: TMultADOCMD
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLInsert.Strings = (
      'insert into Orcamento_Pagamento( Cd_Filial, Nr_Orcamento, Cd_Laboratorio,'
      '  Ds_Condicao, Tp_Frete, Cd_Transportador, Mm_Observacao, Dt_Conf_Representada,'
      '  Dt_Saida_Representada, Dt_Conf_Emitente )'
      'values( :Cd_Filial, :Nr_Orcamento, :Cd_Laboratorio, :Ds_Condicao, :Tp_Frete,'
      '  :Cd_Transportador, :Mm_Observacao, :Dt_Conf_Representada,'
      '  :Dt_Saida_Representada, :Dt_Conf_Emitente )'
    )
    SQLUpdate.Strings = (
      'update'
      '  Orcamento_Pagamento'
      ''
      'set'
      '  Ds_Condicao           = :Ds_Condicao,'
      '  Tp_Frete              = :Tp_Frete,'
      '  Cd_Transportador      = :Cd_Transportador,'
      '  Mm_Observacao         = :Mm_Observacao,'
      '  Dt_Conf_Representada  = :Dt_Conf_Representada,'
      '  Dt_Saida_Representada = :Dt_Saida_Representada,'
      '  Dt_Conf_Emitente      = :Dt_Conf_Emitente'
      ''
      'where'
      '  Cd_Filial      = :Cd_Filial and'
      '  Nr_Orcamento   = :Nr_Orcamento and'
      '  Cd_Laboratorio = :Cd_Laboratorio'
    )
    Left = 101
    Top = 100
  end
  object PmpMenPrazo: TPopupMenu
    Left = 242
    Top = 159
    object N283542dias1: TMenuItem
      Caption = '28/35/42 dias'
      OnClick = N283542dias1Click
    end
    object N2835dias1: TMenuItem
      Caption = '28/35 dias'
      OnClick = N283542dias1Click
    end
    object N304050dias1: TMenuItem
      Caption = '30/40/50 dias'
      OnClick = N283542dias1Click
    end
    object N28354249dias1: TMenuItem
      Caption = '28/35/42/49 dias'
      OnClick = N283542dias1Click
    end
    object N7dias1: TMenuItem
      Caption = '7 dias'
      OnClick = N283542dias1Click
    end
    object N10dias1: TMenuItem
      Caption = '10 dias'
      OnClick = N283542dias1Click
    end
    object N28dias1: TMenuItem
      Caption = '28 dias'
      OnClick = N283542dias1Click
    end
    object N30dias1: TMenuItem
      Caption = '30 dias'
      OnClick = N283542dias1Click
    end
    object Vista1: TMenuItem
      Caption = #192' Vista'
      OnClick = N283542dias1Click
    end
  end
  object PopMenEMail: TPopupMenu
    Left = 96
    Top = 335
    object MenItemCliente: TMenuItem
      Tag = 1
      Bitmap.Data = {binary 1338 bytes}
      Caption = 'Para o cliente...'
      OnClick = MenItemClienteClick
    end
    object MenItemLab: TMenuItem
      Tag = 2
      Bitmap.Data = {binary 826 bytes}
      Caption = 'Para o Laborat'#243'rio/Fabricante...'
      OnClick = MenItemClienteClick
    end
  end
  object ADODsCliente: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  E.Nm_Emitente, E.DS_EMail'#13#10#13#10'from'#13#10'  Orcamento O'#13#10#13#10'inner join'#13#10'  Emitente E'#13#10'on'#13#10'  E.Cd_Emitente = O.Cd_Emitente'#13#10#13#10'where'#13#10'  O.Cd_Filial     = :Cd_Filial and'#13#10'  O.Nr_Orcamento = :Nr_Orcamento'
    Parameters = <
      item
        Name = 'Cd_Filial'
        DataType = ftSmallint
        Size = -1
        Value = nil?
      end
      item
        Name = 'Nr_Orcamento'
        DataType = ftInteger
        Size = -1
        Value = nil?
      end>
    Left = 135
    Top = 100
    object ADODsClientenm_emitente: TStringField
      FieldName = 'nm_emitente'
      Size = 50
    end
    object ADODsClienteds_email: TStringField
      FieldName = 'ds_email'
      Size = 100
    end
  end
end
