object FrmEntrada_Importa: TFrmEntrada_Importa
  Left = 273
  Top = 207
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Importa'#231#227'o de dados para Entrada'
  ClientHeight = 450
  ClientWidth = 772
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
  PixelsPerInch = 96
  TextHeight = 13
  object PnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 21
    Height = 450
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 751
    Height = 450
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 3
      Top = 420
      Width = 742
      Height = 5
      Shape = bsTopLine
    end
    object Label1: TLabel
      Left = 613
      Top = 3
      Width = 107
      Height = 13
      Caption = 'Origem da Importa'#231#227'o:'
      Visible = False
    end
    object Label2: TLabel
      Left = 5
      Top = 5
      Width = 36
      Height = 13
      Caption = 'Pedido:'
    end
    object SbPedido: TSpeedButton
      Left = 55
      Top = 19
      Width = 23
      Height = 19
      Hint = 'Seleciona Pedido de Compra'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbPedidoClick
    end
    object SbFile: TSpeedButton
      Left = 391
      Top = 19
      Width = 23
      Height = 19
      Hint = 'Seleciona o arquivo a ser importado'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbFileClick
    end
    object SbOpen: TSpeedButton
      Left = 415
      Top = 19
      Width = 85
      Height = 19
      Hint = 'Selecionar (F5)'
      Caption = '&Selecionar'
      Flat = True
      Glyph.Data = {binary 250 bytes}
      ParentShowHint = False
      ShowHint = True
      OnClick = SbOpenClick
    end
    object Label6: TLabel
      Left = 69
      Top = 48
      Width = 42
      Height = 13
      Caption = 'Emiss'#227'o:'
    end
    object Label9: TLabel
      Left = 163
      Top = 48
      Width = 29
      Height = 13
      Caption = 'ICMS:'
    end
    object Label11: TLabel
      Left = 247
      Top = 48
      Width = 67
      Height = 13
      Caption = 'Valor Produto:'
    end
    object BvlSeparator_1: TBevel
      Left = 3
      Top = 44
      Width = 742
      Height = 5
      Shape = bsTopLine
    end
    object Label3: TLabel
      Left = 5
      Top = 85
      Width = 45
      Height = 13
      Caption = 'Produtos:'
    end
    object Label4: TLabel
      Left = 5
      Top = 300
      Width = 56
      Height = 13
      Caption = 'Laborat'#243'rio:'
    end
    object DbTxtLaboratorio: TDBText
      Left = 62
      Top = 300
      Width = 82
      Height = 13
      AutoSize = True
      DataField = 'nm_laboratorio'
      DataSource = DsProduto
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label20: TLabel
      Left = 331
      Top = 48
      Width = 88
      Height = 13
      Caption = 'Valor Substirui'#231#227'o:'
    end
    object Label5: TLabel
      Left = 5
      Top = 313
      Width = 53
      Height = 13
      Caption = 'Duplicatas:'
    end
    object SbGrupo: TSpeedButton
      Left = 265
      Top = 328
      Width = 23
      Height = 19
      Hint = 'Seleciona Grupo de Aplica'#231#227'o'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbGrupoClick
    end
    object Label7: TLabel
      Left = 225
      Top = 314
      Width = 97
      Height = 13
      Caption = 'Grupo de Aplica'#231#227'o:'
    end
    object Label8: TLabel
      Left = 225
      Top = 350
      Width = 116
      Height = 13
      Caption = 'SubGrupo de Aplica'#231#227'o:'
    end
    object SbSubGrupo: TSpeedButton
      Left = 265
      Top = 364
      Width = 23
      Height = 19
      Hint = 'Seleciona SubGrupo de Aplica'#231#227'o'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbSubGrupoClick
    end
    object Label10: TLabel
      Left = 225
      Top = 384
      Width = 43
      Height = 13
      Caption = 'Portador:'
    end
    object SbPortador: TSpeedButton
      Left = 265
      Top = 399
      Width = 23
      Height = 19
      Hint = 'Seleciona Portador'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbPortadorClick
    end
    object Label12: TLabel
      Left = 5
      Top = 48
      Width = 48
      Height = 13
      Caption = 'Fatura N'#186':'
    end
    object DbTxtProduto: TDBText
      Left = 56
      Top = 85
      Width = 66
      Height = 13
      AutoSize = True
      DataField = 'nm_produto'
      DataSource = DsProduto
    end
    object BitBtnConfirm: TBitBtn
      Left = 578
      Top = 423
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 18
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 664
      Top = 423
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 19
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object CbOrigem: TComboBox
      Left = 613
      Top = 17
      Width = 136
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 0
      Visible = False
      OnChange = CbOrigemChange
      Items.Strings = (
        'Pedido de Compra'
      )
    end
    object EdtNr_Compra: TCurrencyEdit
      Tag = 1
      Left = 5
      Top = 19
      Width = 50
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 1
      OnKeyDown = EdtNr_CompraKeyDown
    end
    object EdtNm_Arquivo: TLabeledEdit
      Left = 83
      Top = 19
      Width = 308
      Height = 19
      EditLabel.Width = 85
      EditLabel.Height = 13
      EditLabel.Caption = 'Nome do Arquivo:'
      LabelSpacing = 2
      TabOrder = 3
      OnKeyDown = EdtNr_CompraKeyDown
    end
    object EdtDt_Emissao: TDateEdit
      Left = 69
      Top = 62
      Width = 89
      Height = 19
      CheckOnExit = True
      DialogTitle = 'Selecione a Data'
      GlyphKind = gkCustom
      Glyph.Data = {binary 1850 bytes}
      NumGlyphs = 1
      StartOfWeek = Sun
      TabOrder = 4
    end
    object EdtVl_ICMS: TCurrencyEdit
      Left = 163
      Top = 62
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 5
    end
    object EdtVl_Produto: TCurrencyEdit
      Left = 247
      Top = 62
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 6
    end
    object DbGProduto: TDBGrid
      Left = 5
      Top = 99
      Width = 740
      Height = 200
      DataSource = DsProduto
      FixedColor = clSilver
      Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 9
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = DbGProdutoDblClick
      OnEnter = DbGProdutoEnter
      OnExit = DbGProdutoExit
      OnKeyPress = DbGProdutoKeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'Cd_Produto_Emitente'
          Width = 68
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nm_produto'
          Width = 238
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Sg_Compra'
          Width = 27
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'qt_compra'
          Title.Alignment = taRightJustify
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Qt_Recebida'
          Title.Alignment = taRightJustify
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Sg_Entrada'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Qt_Entrada'
          Title.Alignment = taRightJustify
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'vl_unitario'
          Title.Alignment = taRightJustify
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Vl_Total'
          Title.Alignment = taRightJustify
          Visible = True
        end>
    end
    object EdtVl_Substituicao: TCurrencyEdit
      Left = 331
      Top = 62
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 7
    end
    object DbGParcela: TDBGrid
      Left = 5
      Top = 328
      Width = 215
      Height = 84
      DataSource = DsParcela
      FixedColor = clSilver
      Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 11
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnEnter = DbGProdutoEnter
      OnExit = DbGProdutoExit
      Columns = <
        item
          Expanded = False
          FieldName = 'Nr_Duplicata'
          Width = 53
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Dt_Vencimento'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Vl_Duplicata'
          Title.Alignment = taRightJustify
          Width = 27
          Visible = True
        end>
    end
    object EdtCd_Grupo: TCurrencyEdit
      Tag = 2
      Left = 225
      Top = 328
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 12
      OnExit = EdtCd_GrupoExit
      OnKeyDown = EdtNr_CompraKeyDown
    end
    object EdtNm_Grupo: TEdit
      Left = 289
      Top = 328
      Width = 270
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
      TabOrder = 13
    end
    object EdtCd_SubGrupo: TCurrencyEdit
      Tag = 3
      Left = 225
      Top = 364
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 14
      OnExit = EdtCd_SubGrupoExit
      OnKeyDown = EdtNr_CompraKeyDown
    end
    object EdtNm_SubGrupo: TEdit
      Left = 289
      Top = 364
      Width = 270
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
      TabOrder = 15
    end
    object CkBProduto: TCheckBox
      Left = 639
      Top = 81
      Width = 103
      Height = 17
      Caption = 'Importar &Produtos'
      Checked = True
      State = cbChecked
      TabOrder = 8
    end
    object CkBDuplicata: TCheckBox
      Left = 629
      Top = 300
      Width = 112
      Height = 17
      Caption = 'Importar &Duplicatas'
      Checked = True
      State = cbChecked
      TabOrder = 10
    end
    object EdtCd_Portador: TCurrencyEdit
      Left = 225
      Top = 399
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 16
      OnExit = EdtCd_PortadorExit
      OnKeyDown = EdtNr_CompraKeyDown
    end
    object EdtNm_Portador: TEdit
      Left = 289
      Top = 399
      Width = 297
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
      TabOrder = 17
    end
    object EdtNr_Fatura: TCurrencyEdit
      Left = 5
      Top = 62
      Width = 60
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 2
    end
  end
  object ADOCmdEntrada: TMultADOCMD
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLSelect.Strings = (
      'update'
      '  Entrada'
      ''
      'set'
      '  Nr_Fatura       = :Nr_Fatura,'
      '  Dt_Emissao      = :Dt_Emissao,'
      '  Vl_ICMS         = :Vl_ICMS,'
      '  Vl_Produto      = :Vl_Produto,'
      '  Vl_Substituicao = :Vl_Substituicao'
      ''
      'where'
      '  Cd_Filial  = :Cd_Filial and'
      '  Nr_Entrada = :Nr_Entrada'
    )
    SQLInsert.Strings = (
      '-- Inclus'#227'o do contas a pagar'
      'insert into Pagar( Cd_Filial, Nr_Pagar, Dt_Emissao, St_Pagar, Cd_Emitente,'
      '   Cd_Grupo, Cd_SubGrupo, Vl_Duplicata, Vl_Pago, Nr_Entrada )'
      'values( :Cd_Filial, :Nr_Pagar, :Dt_Emissao, ''''1'''', :Cd_Emitente, :Cd_Grupo,'
      '   :Cd_SubGrupo, :Vl_Duplicata, 0, :Nr_Entrada )'
    )
    SQLUpdate.Strings = (
      '-- Atualiza Quantidade entregue'
      'update'
      '  Compra_Item'
      ''
      'set'
      '  Qt_Recebida = Qt_Recebida + :Qt_Recebida'
      ''
      'where'
      '  Cd_Filial = :Cd_Filial and'
      '  Nr_Compra = :Nr_Compra and'
      '  Nr_Item   = :Nr_Item'
    )
    SQLDelete.Strings = (
      '-- Muda a situa'#231#227'o da compra para recebido'
      'update'
      '  Compra'
      ''
      'set'
      '  St_Compra = ''''3'''
      ''
      'where'
      '  Cd_Filial = :Cd_Filial and'
      '  Nr_Compra = :Nr_Compra'
    )
    SQLPrimary.Strings = (
      '-- Incluir Hist'#243'rico'
      'insert into Pagar_Historico( Cd_Filial, Nr_Pagar, Nr_Parcela, Nr_Lancamento,'
      '   Tp_Lancamento, Dt_Lancamento, Vl_Lancamento )'
      'values( :Cd_Filial, :Nr_Pagar, :Nr_Parcela, 1, ''''1'''', :Dt_Lancamento, :Vl_Parcela )'
    )
    SQLOther0.Strings = (
      '-------------------- Apaga os dados de importa'#231#227'o'
      'delete from'
      '  EntradaIMP'
      ''
      'where'
      '  Nr_SPID = @@SPID'
    )
    SQLOther3.Strings = (
      '-- Inclus'#227'o manual dos itens'
      'insert into EntradaIMP( Nr_Item, Cd_Produto, Nm_Produto, Cd_Produto_Emitente,'
      '   Qt_Compra, Qt_Pedido, Vl_Unitario, Qt_Entrada )'
      'values( :Nr_Item, :Cd_Produto, :Nm_Produto, :Cd_Produto_Emitente,'
      '   :Qt_Compra, :Qt_Pedido, :Vl_Unitario, :Qt_Entrada )'
    )
    SQLOther4.Strings = (
      '-- Tabela de duplicatas'
      'create table ##TblPagar'
      '  ('
      '  Nr_Duplicata Int,'
      '  Dt_Vencimento SmallDateTime,'
      '  Vl_Duplicata Numeric( 12, 2 )'
      '  )'
    )
    SQLOther5.Strings = (
      '-- Apagar dados da duplicata'
      'truncate table ##TblPagar'
    )
    SQLOther6.Strings = (
      '-- Incluir dados da duplicata'
      'insert into ##TblPagar( Nr_Duplicata, Dt_Vencimento, Vl_Duplicata )'
      'values( :Nr_Duplicata, :Dt_Vencimento, :Vl_Duplicata )'
    )
    SQLOther7.Strings = (
      '-- Altera'#231#227'o dos dados do item da importa'#231#227'o'
      'update'
      '  EntradaIMP'
      ''
      'set'
      '  Vl_Unitario = :Vl_Unitario,'
      '  Qt_Entrada  = :Qt_Entrada,'
      '  Sg_Entrada  = :Sg_Entrada'
      ''
      'where'
      '  Nr_Item = :Nr_Item'
    )
    SQLOther8.Strings = (
      '-- Inclui o item na entrada'
      'insert into Entrada_Item( Cd_Filial, Nr_Entrada, Nr_Item, Cd_Produto,'
      '   Sg_Unidade, Qt_Item, Qt_Estoque, Vl_Unitario, Pr_Desconto, Fl_Inventario )'
      'values( :Cd_Filial, :Nr_Entrada, :Nr_Item, :Cd_Produto, :Sg_Unidade,'
      '   :Qt_Item, :Qt_Estoque, :Vl_Unitario, :Pr_Desconto, ''''0'''' )'
    )
    SQLOther9.Strings = (
      '-- Inclus'#227'o da parcela'
      'insert into Pagar_Parcela( Cd_Filial, Nr_Pagar, Nr_Parcela, Dt_Vencimento,'
      '   Vl_Parcela, Cd_Portador, Nr_Documento )'
      'values( :Cd_Filial, :Nr_Pagar, :Nr_Parcela, :Dt_Vencimento, :Vl_Parcela,'
      '   :Cd_Portador, :Nr_Documento )'
    )
    Left = 28
    Top = 370
  end
  object DsProduto: TDataSource
    DataSet = ADODsProduto
    Left = 58
    Top = 370
  end
  object ADODsProduto: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    OnCalcFields = ADODsProdutoCalcFields
    CommandText = '/*'#13#10'create table ##TblEntrada'#13#10'  ('#13#10'  nr_item smallint,'#13#10'  cd_produto int,'#13#10'  cd_produto_emitente varchar( 20 ),'#13#10'  nm_produto varchar( 120 ),'#13#10'  qt_compra numeric( 12, 3 ),'#13#10'  sg_compra char( 2 ),'#13#10'  qt_pedido numeric( 12, 3 ),'#13#10'  vl_unitario numeric( 12, 3 ),'#13#10'  sg_entrada char( 2 ),'#13#10'  qt_entrada numeric( 12, 3 ),'#13#10'  qt_recebida numeric( 12, 3 )'#13#10'  )'#13#10'*/'#13#10#13#10'select'#13#10'  TE.Nr_Item, TE.Cd_Produto, TE.Cd_Produto_Emitente, TE.Qt_Compra, TE.Qt_Pedido,'#13#10'  TE.Vl_Unitario, TE.Qt_Entrada, TE.Nm_Produto, L.Nm_Laboratorio,'#13#10'  P.Sg_Estoque, PU.Nr_Fator, TE.Sg_Compra, TE.Sg_Entrada,'#13#10'  TE.Qt_Recebida'#13#10#13#10'from'#13#10'  EntradaIMP TE'#13#10#13#10'left join'#13#10'  Produto P'#13#10'on'#13#10'  P.Cd_Produto = TE.Cd_Produto'#13#10#13#10'left join'#13#10'  Laboratorio L'#13#10'on'#13#10'  L.Cd_Laboratorio = P.Cd_Laboratorio'#13#10#13#10'left join'#13#10'  Produto_Unidade PU'#13#10'on'#13#10'  PU.Cd_Produto = P.Cd_Produto and'#13#10'  PU.Sg_Unidade = TE.Sg_Entrada'#13#10#13#10'where'#13#10'  Nr_SPID = @@SPID'#13#10#13#10'order by'#13#10'  TE.Nr_Item'
    Parameters = <>
    Left = 88
    Top = 370
    object ADODsProdutonr_item: TSmallintField
      FieldName = 'nr_item'
    end
    object ADODsProdutocd_produto: TIntegerField
      FieldName = 'cd_produto'
    end
    object ADODsProdutoqt_compra: TBCDField
      DisplayLabel = 'Total Compra'
      FieldName = 'qt_compra'
      DisplayFormat = '#,##0'
      Precision = 12
      Size = 3
    end
    object ADODsProdutoqt_pedido: TBCDField
      DisplayLabel = 'Pedido'
      FieldName = 'qt_pedido'
      DisplayFormat = '#,##0'
      Precision = 12
      Size = 3
    end
    object ADODsProdutovl_unitario: TBCDField
      DisplayLabel = 'Unit'#225'rio'
      FieldName = 'vl_unitario'
      DisplayFormat = '#,##0.00'
      Precision = 12
      Size = 3
    end
    object ADODsProdutonm_produto: TStringField
      DisplayLabel = 'Produto'
      FieldName = 'nm_produto'
      Size = 120
    end
    object ADODsProdutonm_laboratorio: TStringField
      FieldName = 'nm_laboratorio'
      Size = 50
    end
    object ADODsProdutoVl_Total: TFloatField
      DisplayLabel = 'Total'
      FieldKind = fkCalculated
      FieldName = 'Vl_Total'
      DisplayFormat = '#,##0.00'
      Calculated = True
    end
    object ADODsProdutoCd_Produto_Emitente: TStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'Cd_Produto_Emitente'
    end
    object ADODsProdutoQt_Entrada: TBCDField
      DisplayLabel = 'Restante'
      FieldName = 'Qt_Entrada'
      DisplayFormat = '#,##0'
    end
    object ADODsProdutoSg_Estoque: TStringField
      FieldName = 'Sg_Estoque'
      Size = 2
    end
    object ADODsProdutoNr_Fator: TBCDField
      FieldName = 'Nr_Fator'
    end
    object ADODsProdutoSg_Compra: TStringField
      DisplayLabel = 'Unid.'
      FieldName = 'Sg_Compra'
      FixedChar = True
      Size = 2
    end
    object ADODsProdutoSg_Entrada: TStringField
      DisplayLabel = 'Unid.'
      FieldName = 'Sg_Entrada'
      FixedChar = True
      Size = 2
    end
    object ADODsProdutoQt_Recebida: TBCDField
      DisplayLabel = 'J'#225' Recebido'
      FieldName = 'Qt_Recebida'
      Precision = 12
      Size = 3
    end
  end
  object ADODsCheck: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  PF.Cd_Produto, P.Nm_Produto, CI.Nr_Item, CI.Qt_Item'#13#10#13#10'from'#13#10'  Produto_Fornecedor PF'#13#10#13#10'left join'#13#10'  Produto P'#13#10'on'#13#10'  P.Cd_Produto = PF.Cd_Produto'#13#10#13#10'left join'#13#10'  Compra_Item CI'#13#10'on'#13#10'  CI.Cd_Filial  = :Cd_Filial and'#13#10'  CI.Nr_Compra  = :Nr_Compra and'#13#10'  CI.Cd_Produto = PF.Cd_Produto'#13#10#13#10'where'#13#10'  PF.Cd_Emitente         = :Cd_Emitente and'#13#10'  PF.Cd_Produto_Emitente = :Cd_Produto_Emitente'
    Parameters = <
      item
        Name = 'Cd_Filial'
        Size = -1
        Value = nil?
      end
      item
        Name = 'Nr_Compra'
        DataType = ftString
        Size = -1
        Value = nil?
      end
      item
        Name = 'Cd_Emitente'
        DataType = ftString
        Size = -1
        Value = nil?
      end
      item
        Name = 'Cd_Produto_Emitente'
        DataType = ftString
        Size = -1
        Value = nil?
      end>
    Left = 117
    Top = 370
    object ADODsCheckcd_produto: TIntegerField
      FieldName = 'cd_produto'
    end
    object ADODsChecknm_produto: TStringField
      FieldName = 'nm_produto'
      Size = 120
    end
    object ADODsChecknr_item: TSmallintField
      FieldName = 'nr_item'
    end
    object ADODsCheckqt_item: TBCDField
      FieldName = 'qt_item'
      Precision = 12
      Size = 3
    end
  end
  object DsParcela: TDataSource
    DataSet = ADODsParcela
    Left = 146
    Top = 370
  end
  object ADODsParcela: TADODataSet
    Connection = FrmMain.ADOConMaster
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  Nr_Duplicata, Dt_Vencimento, Vl_Duplicata'#13#10#13#10'from'#13#10'  ##TblPagar'#13#10#13#10'order by'#13#10'  Nr_Duplicata'
    Parameters = <>
    Left = 175
    Top = 370
    object ADODsParcelaNr_Duplicata: TIntegerField
      DisplayLabel = 'Duplicata'
      FieldName = 'Nr_Duplicata'
      DisplayFormat = '###'
    end
    object ADODsParcelaDt_Vencimento: TDateTimeField
      DisplayLabel = 'Vencimento'
      FieldName = 'Dt_Vencimento'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object ADODsParcelaVl_Duplicata: TBCDField
      DisplayLabel = 'Valor'
      FieldName = 'Vl_Duplicata'
      DisplayFormat = '#,##0.00'
      Size = 0
    end
  end
  object ADODsPagar: TADODataSet
    Connection = FrmMain.ADOConMaster
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  max( A.Nr_Pagar ) + 1 as Nr_Pagar'#13#10#13#10'from'#13#10'  Pagar A'#13#10#13#10'where'#13#10'  Cd_Filial = :Cd_Filial'
    Parameters = <
      item
        Name = 'Cd_Filial'
        DataType = ftSmallint
        Size = -1
        Value = nil?
      end>
    Left = 206
    Top = 370
    object ADODsPagarnr_pagar: TIntegerField
      FieldName = 'nr_pagar'
    end
  end
  object ADODsRestante: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select top 1'#13#10'  Cd_Filial'#13#10#13#10'from'#13#10'  Compra_Item'#13#10#13#10'where'#13#10'  Cd_Filial = :Cd_Filial and'#13#10'  Nr_Compra = :Nr_Compra and'#13#10'  Qt_Item   > Qt_Recebida'#13#10
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
        Name = 'Nr_Compra'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = nil?
      end>
    Left = 236
    Top = 370
  end
  object ADODsImporta: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    CommandText = '-------------------- Incluir itens do pedido de compra'#13#10'insert into EntradaIMP( Nr_Item, Cd_Produto, Nm_Produto, Cd_Produto_Emitente,'#13#10'   Qt_Compra, Qt_Pedido, Vl_Unitario, Qt_Entrada, Qt_Recebida,'#13#10'   Sg_Compra, Sg_Entrada )'#13#10#13#10'select'#13#10'  CI.Nr_Item, CI.Cd_Produto, P.Nm_Produto, PF.Cd_Produto_Emitente,'#13#10'  CI.Qt_Item as Qt_Compra, CI.Qt_Item as Qt_Pedido, CI.Vl_Unitario,'#13#10'  CI.Qt_Item - CI.Qt_Recebida as Qt_Entrada, CI.Qt_Recebida,'#13#10'  CI.Sg_Unidade, CI.Sg_Unidade'#13#10#13#10'from'#13#10'  Compra_Item CI'#13#10#13#10'inner join'#13#10'  Produto P'#13#10'on'#13#10'  P.Cd_Produto = CI.Cd_Produto'#13#10#13#10'left join'#13#10'  Produto_Fornecedor PF'#13#10'on'#13#10'  PF.Cd_Produto  = CI.Cd_Produto and'#13#10'  PF.Cd_Emitente = :Cd_Emitente'#13#10#13#10'where'#13#10'  CI.Cd_Filial = :Cd_Filial and'#13#10'  CI.Nr_Compra = :Nr_Compra'#13#10#13#10'select'#13#10'  Nr_Item, Cd_Produto, Nm_Produto, Cd_Produto_Emitente,'#13#10'  Qt_Compra, Qt_Pedido, Vl_Unitario, Qt_Entrada, Qt_Recebida,'#13#10'  Sg_Compra, Sg_Entrada '#13#10#13#10'from'#13#10'  EntradaIMP'#13#10#13#10'where'#13#10'  Nr_SPID = @@SPID'
    Parameters = <
      item
        Name = 'Cd_Emitente'
        DataType = ftInteger
        Size = -1
        Value = nil?
      end
      item
        Name = 'Cd_Filial'
        DataType = ftSmallint
        Size = -1
        Value = nil?
      end
      item
        Name = 'Nr_Compra'
        DataType = ftInteger
        Size = -1
        Value = nil?
      end>
    Left = 376
    Top = 224
    object ADODsImportaNr_Item: TSmallintField
      FieldName = 'Nr_Item'
    end
    object ADODsImportaCd_Produto: TIntegerField
      FieldName = 'Cd_Produto'
    end
    object ADODsImportaNm_Produto: TStringField
      FieldName = 'Nm_Produto'
      Size = 120
    end
    object ADODsImportaCd_Produto_Emitente: TStringField
      FieldName = 'Cd_Produto_Emitente'
    end
    object ADODsImportaQt_Compra: TBCDField
      FieldName = 'Qt_Compra'
      Precision = 12
      Size = 3
    end
    object ADODsImportaQt_Pedido: TBCDField
      FieldName = 'Qt_Pedido'
      Precision = 12
      Size = 3
    end
    object ADODsImportaVl_Unitario: TBCDField
      FieldName = 'Vl_Unitario'
      Precision = 12
      Size = 3
    end
    object ADODsImportaQt_Entrada: TBCDField
      FieldName = 'Qt_Entrada'
      ReadOnly = True
      Precision = 13
      Size = 3
    end
    object ADODsImportaQt_Recebida: TBCDField
      FieldName = 'Qt_Recebida'
      Precision = 12
      Size = 3
    end
    object ADODsImportaSg_Compra: TStringField
      FieldName = 'Sg_Compra'
      FixedChar = True
      Size = 2
    end
    object ADODsImportaSg_Entrada: TStringField
      FieldName = 'Sg_Entrada'
      FixedChar = True
      Size = 2
    end
  end
  object ADODsCreateTable: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    CommandText = '---------------- Cria tabela temporaria'#13#10'if Object_ID( ''''EntradaIMP'''' ) is not null'#13#10'  delete from EntradaIMP where Nr_SPID = @@SPID'#13#10#13#10'else'#13#10'  create table EntradaIMP'#13#10'    ('#13#10'    nr_item smallint,'#13#10'    cd_produto int,'#13#10'    cd_produto_emitente varchar( 20 ),'#13#10'    nm_produto varchar( 120 ),'#13#10'    qt_compra numeric( 12, 3 ),'#13#10'    sg_compra char( 2 ),'#13#10'    qt_pedido numeric( 12, 3 ),'#13#10'    vl_unitario numeric( 12, 3 ),'#13#10'    sg_entrada char( 2 ),'#13#10'    qt_entrada numeric( 12, 3 ),'#13#10'    qt_recebida numeric( 12, 3 ),'#13#10'    Nr_SPID int default @@SPID'#13#10'    )'#13#10#13#10'select'#13#10'  Nr_Item, Cd_Produto, Nm_Produto, Cd_Produto_Emitente,'#13#10'  Qt_Compra, Qt_Pedido, Vl_Unitario, Qt_Entrada, Qt_Recebida,'#13#10'  Sg_Compra, Sg_Entrada '#13#10#13#10'from'#13#10'  EntradaIMP'
    Parameters = <>
    Left = 408
    Top = 224
  end
end
