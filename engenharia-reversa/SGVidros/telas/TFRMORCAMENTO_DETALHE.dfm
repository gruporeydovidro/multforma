object FrmOrcamento_Detalhe: TFrmOrcamento_Detalhe
  Left = 237
  Top = 210
  Action = ActAjustar
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Detalhamento'
  ClientHeight = 373
  ClientWidth = 776
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
  OnClick = ActAjustarExecute
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 21
    Height = 373
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 755
    Height = 373
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 3
      Top = 343
      Width = 746
      Height = 5
      Shape = bsTopLine
    end
    object Label2: TLabel
      Left = 409
      Top = 35
      Width = 47
      Height = 13
      Caption = 'Ambiente:'
    end
    object Label10: TLabel
      Left = 5
      Top = 2
      Width = 40
      Height = 13
      Caption = 'Produto:'
    end
    object SbProduto: TSpeedButton
      Left = 66
      Top = 16
      Width = 23
      Height = 19
      Hint = 'Seleciona Produto'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbProdutoClick
    end
    object BvlSeparator_1: TBevel
      Left = 3
      Top = 108
      Width = 746
      Height = 5
      Shape = bsTopLine
    end
    object Label3: TLabel
      Left = 5
      Top = 122
      Width = 69
      Height = 13
      Caption = '&Detalhamento:'
      FocusControl = DbGDetalhe
    end
    object Label4: TLabel
      Left = 661
      Top = 35
      Width = 60
      Height = 13
      Caption = '&Medidas em:'
      FocusControl = CbMedida
    end
    object BvlMoldura: TBevel
      Left = 457
      Top = 138
      Width = 294
      Height = 165
      Shape = bsFrame
    end
    object ImgSubProduto: TImage
      Left = 459
      Top = 141
      Width = 288
      Height = 159
      Hint = 'Utilize o click duplo para'#13#10'visualizar a imagem em tela cheia'
      Center = True
      ParentShowHint = False
      ShowHint = True
      OnDblClick = ImgSubProdutoDblClick
    end
    object LblSubProduto: TLabel
      Left = 440
      Top = 2
      Width = 59
      Height = 13
      Caption = 'SubProduto:'
    end
    object SbSubProduto: TSpeedButton
      Left = 480
      Top = 16
      Width = 23
      Height = 19
      Hint = 'Seleciona SubProduto'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbSubProdutoClick
    end
    object Label5: TLabel
      Left = 5
      Top = 36
      Width = 175
      Height = 13
      Caption = 'Descri'#231#227'o alternativa para o produto:'
    end
    object Label6: TLabel
      Left = 153
      Top = 305
      Width = 58
      Height = 13
      Caption = '&Quantidade:'
      FocusControl = EdtQt_Item
    end
    object Label7: TLabel
      Left = 308
      Top = 305
      Width = 49
      Height = 13
      Caption = 'Desconto:'
    end
    object Label8: TLabel
      Left = 227
      Top = 305
      Width = 39
      Height = 13
      Caption = 'Unit'#225'rio:'
    end
    object Label9: TLabel
      Left = 361
      Top = 305
      Width = 27
      Height = 13
      Caption = 'Total:'
    end
    object Label11: TLabel
      Left = 5
      Top = 305
      Width = 92
      Height = 13
      Caption = '&Unidade de Venda:'
      FocusControl = CbUnidade
    end
    object Label13: TLabel
      Left = 564
      Top = 305
      Width = 56
      Height = 13
      Caption = 'Fabrica'#231#227'o:'
    end
    object Label14: TLabel
      Left = 659
      Top = 305
      Width = 44
      Height = 13
      Caption = 'Validade:'
    end
    object SbDel: TSpeedButton
      Left = 78
      Top = 115
      Width = 22
      Height = 21
      Hint = 'Excluir Detalhamento'
      Flat = True
      Glyph.Data = {binary 1594 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbDelClick
    end
    object SbAmbiente: TSpeedButton
      Left = 631
      Top = 50
      Width = 23
      Height = 19
      Hint = 'Selecionar o Ambiente'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbAmbienteClick
    end
    object SbTributacao: TSpeedButton
      Left = 44
      Top = 86
      Width = 23
      Height = 19
      Hint = 'Seleciona a Tributa'#231#227'o'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbTributacaoClick
    end
    object Label15: TLabel
      Left = 5
      Top = 71
      Width = 175
      Height = 13
      Caption = '&Tributa'#231#227'o (ST - Situa'#231#227'o Tribut'#225'ria):'
      FocusControl = EdtCd_Tributacao
    end
    object Label16: TLabel
      Left = 449
      Top = 71
      Width = 76
      Height = 13
      Caption = 'N'#186' de Item NFe:'
    end
    object BitBtnConfirm: TBitBtn
      Left = 582
      Top = 346
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 20
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 668
      Top = 346
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 21
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object CbAmbiente: TComboBox
      Left = 409
      Top = 50
      Width = 222
      Height = 21
      ItemHeight = 13
      MaxLength = 50
      Sorted = True
      TabOrder = 5
      OnKeyDown = EdtCd_ProdutoKeyDown
      Items.Strings = (
        'Banheiro'
        'Cozinha'
        'Hall de Entrada'
        'Quarto'
        'Sala'
        'Sala de Estar'
      )
    end
    object EdtCd_Produto: TCurrencyEdit
      Tag = 2
      Left = 5
      Top = 16
      Width = 60
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 0
      OnEnter = EdtCd_ProdutoEnter
      OnExit = EdtCd_ProdutoExit
      OnKeyDown = EdtCd_ProdutoKeyDown
    end
    object EdtNm_Produto: TEdit
      Left = 90
      Top = 16
      Width = 345
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
      TabOrder = 1
    end
    object DbGDetalhe: TDBGrid
      Left = 5
      Top = 139
      Width = 450
      Height = 164
      DataSource = DsDetalhe
      FixedColor = clSilver
      Options = [dgEditing, dgTitles, dgRowLines, dgTabs, dgConfirmDelete]
      TabOrder = 11
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnEnter = DbGDetalheEnter
      OnExit = DbGDetalheExit
      OnKeyDown = DbGDetalheKeyDown
      Columns = <
        item
          Expanded = False
          FieldName = 'Qt_Item'
          Title.Alignment = taRightJustify
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nr_Comprimento'
          Title.Alignment = taRightJustify
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nr_Largura'
          Title.Alignment = taRightJustify
          Width = 52
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nr_Altura'
          Title.Alignment = taRightJustify
          Width = 54
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Ds_Detalhe'
          Width = 146
          Visible = True
        end
        item
          Color = clSilver
          Expanded = False
          FieldName = 'Qt_Area'
          Title.Alignment = taRightJustify
          Width = 42
          Visible = True
        end>
    end
    object CbMedida: TComboBox
      Left = 661
      Top = 50
      Width = 85
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      MaxLength = 30
      Sorted = True
      TabOrder = 6
      TabStop = False
      OnChange = CbMedidaChange
      Items.Strings = (
        'Centimetros'
        'Metros'
        'Milimetros'
      )
    end
    object EdtCd_SubProduto: TCurrencyEdit
      Tag = 1
      Left = 440
      Top = 16
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 2
      OnExit = EdtCd_SubProdutoExit
      OnKeyDown = EdtCd_ProdutoKeyDown
    end
    object EdtNm_SubProduto: TEdit
      Left = 504
      Top = 16
      Width = 244
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
    object EdtNm_Item: TEdit
      Left = 5
      Top = 50
      Width = 401
      Height = 19
      TabStop = False
      MaxLength = 120
      TabOrder = 4
    end
    object PnlAction_4: TPanel
      Left = 633
      Top = 109
      Width = 116
      Height = 27
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 22
      object ActToolBImagem: TActionToolBar
        Left = 0
        Top = 0
        Width = 116
        Height = 27
        ActionManager = ActManCadastro
        Align = alClient
        Caption = 'ActToolBImagem'
        ColorMap.HighlightColor = clWhite
        ColorMap.BtnSelectedColor = clBtnFace
        ColorMap.UnusedColor = clWhite
        ParentShowHint = False
        ShowHint = True
        Spacing = 0
      end
    end
    object EdtQt_Item: TCurrencyEdit
      Left = 153
      Top = 319
      Width = 70
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 3
      DisplayFormat = '#,##0.00#'
      ParentShowHint = False
      ShowHint = False
      TabOrder = 13
      OnChange = EdtQt_ItemChange
    end
    object EdtPr_Desconto: TCurrencyEdit
      Left = 308
      Top = 319
      Width = 49
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DisplayFormat = '#,##0.00'
      TabOrder = 15
      OnChange = EdtPr_DescontoChange
    end
    object EdtVl_Unitario: TCurrencyEdit
      Left = 227
      Top = 319
      Width = 75
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DisplayFormat = '#,##0.00'
      TabOrder = 14
      OnChange = EdtQt_ItemChange
    end
    object EdtVl_Total: TCurrencyEdit
      Left = 361
      Top = 319
      Width = 75
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      TabStop = False
      AutoSize = False
      Color = clSilver
      DecimalPlaces = 3
      DisplayFormat = '#,##0.00#'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 16
    end
    object CbUnidade: TComboBox
      Left = 5
      Top = 319
      Width = 146
      Height = 21
      Style = csDropDownList
      Ctl3D = True
      ItemHeight = 13
      ParentCtl3D = False
      TabOrder = 12
      OnChange = CbUnidadeChange
    end
    object EdtDt_Fabricacao: TDateEdit
      Left = 564
      Top = 319
      Width = 89
      Height = 19
      CheckOnExit = True
      DialogTitle = 'Selecione a Data'
      GlyphKind = gkCustom
      Glyph.Data = {binary 1850 bytes}
      NumGlyphs = 1
      StartOfWeek = Sun
      TabOrder = 18
    end
    object EdtDt_Validade: TDateEdit
      Left = 659
      Top = 319
      Width = 89
      Height = 19
      CheckOnExit = True
      DialogTitle = 'Selecione a Data'
      GlyphKind = gkCustom
      Glyph.Data = {binary 1850 bytes}
      NumGlyphs = 1
      StartOfWeek = Sun
      TabOrder = 19
    end
    object EdtNr_Lote: TLabeledEdit
      Left = 441
      Top = 319
      Width = 119
      Height = 19
      EditLabel.Width = 79
      EditLabel.Height = 13
      EditLabel.Caption = 'Numero do Lote:'
      LabelSpacing = 2
      MaxLength = 15
      TabOrder = 17
    end
    object EdtCd_Tributacao: TCurrencyEdit
      Tag = 3
      Left = 5
      Top = 86
      Width = 39
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      TabStop = False
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 7
      OnExit = EdtCd_TributacaoExit
      OnKeyDown = EdtCd_ProdutoKeyDown
    end
    object EdtDs_Tributacao: TEdit
      Left = 67
      Top = 86
      Width = 274
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
      TabOrder = 8
    end
    object EdtxPed: TLabeledEdit
      Left = 343
      Top = 86
      Width = 104
      Height = 19
      EditLabel.Width = 104
      EditLabel.Height = 13
      EditLabel.Caption = 'N'#186' do Pedido da NFe:'
      LabelSpacing = 2
      MaxLength = 20
      TabOrder = 9
    end
    object EdtnItemPed: TCurrencyEdit
      Tag = 6
      Left = 450
      Top = 86
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '###'
      TabOrder = 10
    end
  end
  object DsDetalhe: TDataSource
    DataSet = ADODsDetalhe
    Left = 28
    Top = 217
  end
  object ADODsDetalhe: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    AfterInsert = ADODsDetalheAfterInsert
    BeforePost = ADODsDetalheBeforePost
    AfterScroll = ADODsDetalheAfterScroll
    OnCalcFields = ADODsDetalheCalcFields
    CommandText = 'select'#13#10'  Nr_Detalhe, Qt_Item, Nr_Comprimento, Nr_Largura, Nr_Altura, Ds_Detalhe'#13#10#13#10'from'#13#10'  #Detalhe'
    Parameters = <>
    Left = 57
    Top = 217
    object ADODsDetalheNr_Detalhe: TSmallintField
      DisplayLabel = 'N'#186
      FieldName = 'Nr_Detalhe'
    end
    object ADODsDetalheQt_Item: TIntegerField
      DisplayLabel = 'Quantidade'
      FieldName = 'Qt_Item'
    end
    object ADODsDetalheNr_Comprimento: TBCDField
      DisplayLabel = 'Comprimento'
      FieldName = 'Nr_Comprimento'
      OnValidate = ADODsDetalheNr_ComprimentoValidate
      Precision = 12
    end
    object ADODsDetalheNr_Largura: TBCDField
      DisplayLabel = 'Largura'
      FieldName = 'Nr_Largura'
      EditFormat = '#,##0.0'
      Precision = 12
    end
    object ADODsDetalheNr_Altura: TBCDField
      DisplayLabel = 'Altura'
      FieldName = 'Nr_Altura'
      EditFormat = '#,##0.0'
      Precision = 12
    end
    object ADODsDetalheDs_Detalhe: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'Ds_Detalhe'
      Size = 30
    end
    object ADODsDetalheQt_Area: TFloatField
      DisplayLabel = #193'rea'
      FieldKind = fkCalculated
      FieldName = 'Qt_Area'
      ReadOnly = True
      DisplayFormat = '#,##0.0##'
      EditFormat = '#,##0.0##'
      Calculated = True
    end
  end
  object ADOCmdSubProduto: TMultADOCMD
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLInsert.Strings = (
      'insert into Orcamento_Item( Cd_Filial, Nr_Orcamento, Nr_Item, Cd_Produto,'
      '   Nm_Produto, Sg_Unidade, Qt_Item, Vl_Unitario, Fl_Confirmado, Cd_SubProduto,'
      '   Im_SubProduto, Ds_Ambiente, Fl_Medida, Nr_Lote, Dt_Fabricacao, Dt_Validade,'
      '   Fl_OrdemServico, Cd_Tributacao, xPed, nItemPed )'
      'values( :Cd_Filial, :Nr_Orcamento, :Nr_Item, :Cd_Produto, :Nm_Produto,'
      '   :Sg_Unidade, :Qt_Item, :Vl_Unitario, :Fl_Confirmado, :Cd_SubProduto,'
      '   :Im_SubProduto, :Ds_Ambiente, :Fl_Medida, :Nr_Lote, :Dt_Fabricacao,'
      '   :Dt_Validade, ''''2'''', :Cd_Tributacao, :xPed, :nItemPed )'
    )
    SQLUpdate.Strings = (
      'update'
      '  Orcamento_Item'
      ''
      'set'
      '  Cd_Produto    = :Cd_Produto,'
      '  Nm_Produto    = :Nm_Produto,'
      '  Sg_Unidade    = :Sg_Unidade,'
      '  Qt_Item       = :Qt_Item,'
      '  Vl_Unitario   = :Vl_Unitario,'
      '  Cd_SubProduto = :Cd_SubProduto,'
      '  Im_SubProduto = :Im_SubProduto,'
      '  Ds_Ambiente   = :Ds_Ambiente,'
      '  Fl_Medida     = :Fl_Medida,'
      '  Nr_Lote       = :Nr_Lote,'
      '  Dt_Fabricacao = :Dt_Fabricacao,'
      '  Dt_Validade   = :Dt_Validade,'
      '  Cd_Tributacao = :Cd_Tributacao,'
      '  xPed          = :xPed,'
      '  nItemPed      = :nItemPed'
      '  '
      'where'
      '  Cd_Filial     = :Cd_Filial and'
      '  Nr_Orcamento  = :Nr_Orcamento and'
      '  Nr_Item       = :Nr_Item'
    )
    SQLOther0.Strings = (
      '-- Criar a table de detalhe'
      'if Object_ID( ''''TempDB..#Detalhe'''' ) is not null'
      '  truncate table #Detalhe'
      ''
      'else'
      '  create table #Detalhe'
      '    ('
      '    Nr_Detalhe SmallInt identity( 1, 1 ),'
      '    Qt_Item Int,'
      '    Nr_Comprimento numeric( 12, 4 ),'
      '    Nr_Largura numeric( 12, 4 ),'
      '    Nr_Altura numeric( 12, 4 ),'
      '    Ds_Detalhe VarChar( 30 )'
      '    )'
      ''
    )
    SQLOther1.Strings = (
      '--------------- Inclus'#227'o dos detalhamentos'
      'declare'
      '  @Cd_Filial SmallInt,'
      '  @Nr_Orcamento Int,'
      '  @Nr_Item SmallInt'
      ''
      'select'
      '  @Cd_Filial    = :Cd_Filial,'
      '  @Nr_Orcamento = :Nr_Orcamento,'
      '  @Nr_Item      = :Nr_Item'
      ''
      '--------------- Altera'#231#227'o dos itens'
      'update'
      '  Orcamento_Detalhe'
      ''
      'set'
      '  Qt_Item        = D.Qt_Item,'
      '  Nr_Comprimento = D.Nr_Comprimento,'
      '  Nr_Largura     = D.Nr_Largura,'
      '  Nr_Altura      = D.Nr_Altura,'
      '  Ds_Detalhe     = D.Ds_Detalhe'
      ''
      'from'
      '  #Detalhe D'
      ''
      'inner join'
      '  Orcamento_Detalhe OD'
      'on'
      '  OD.Cd_Filial    = @Cd_Filial and'
      '  OD.Nr_Orcamento = @Nr_Orcamento and'
      '  OD.Nr_Item      = @Nr_Item and'
      '  OD.Nr_Detalhe   = D.Nr_Detalhe'
      ''
      '--------------- Inclusao dos itens'
      'insert into Orcamento_Detalhe( Cd_Filial, Nr_Orcamento, Nr_Item, Nr_Detalhe,'
      '  Qt_Item, Nr_Comprimento, Nr_Largura, Nr_Altura, Ds_Detalhe )'
      'select'
      '  @Cd_Filial, @Nr_Orcamento, @Nr_Item, Nr_Detalhe, Qt_Item, Nr_Comprimento,'
      '  Nr_Largura, Nr_Altura, Ds_Detalhe'
      ''
      'from'
      '  #Detalhe'
      ''
      'where'
      '  not exists('
      '    select'
      '      OD.Cd_Filial'
      ''
      '    from'
      '      Orcamento_Detalhe OD'
      ''
      '    where'
      '      OD.Cd_Filial    = @Cd_Filial and'
      '      OD.Nr_Orcamento = @Nr_Orcamento and'
      '      OD.Nr_Item      = @Nr_Item and'
      '      OD.Nr_Detalhe   = #Detalhe.Nr_Detalhe'
      '    )'
      ''
      '--------------- Exclusao dos itens'
      'delete from'
      '  Orcamento_Detalhe'
      ''
      'where'
      '  Cd_Filial    = @Cd_Filial and'
      '  Nr_Orcamento = @Nr_Orcamento and'
      '  Nr_Item      = @Nr_Item and'
      '  not exists('
      '    select'
      '      Nr_Detalhe'
      ''
      '    from'
      '      #Detalhe D'
      ''
      '    where'
      '      D.Nr_Detalhe = Orcamento_Detalhe.Nr_Detalhe'
      ''
      '    )'
    )
    SQLOther2.Strings = (
      '-- Carrega dados ja incluidos - altera'#231#227'o'
      'insert into #Detalhe( Qt_Item, Nr_Comprimento, Nr_Largura,'
      '    Nr_Altura, Ds_Detalhe )'
      'select'
      '  Qt_Item, Nr_Comprimento, Nr_Largura, Nr_Altura, Ds_Detalhe'
      ''
      'from'
      '  Orcamento_Detalhe'
      ''
      'where'
      '  Cd_Filial    = :Cd_Filial and'
      '  Nr_Orcamento = :Nr_Orcamento and'
      '  Nr_Item      = :Nr_Item'
      ''
      'order by'
      '  Nr_Detalhe'
    )
    SQLOther3.Strings = (
      '--------------- Inclus'#227'o dos detalhamentos'
      'declare'
      '  @Cd_Filial SmallInt,'
      '  @Nr_Orcamento Int,'
      '  @Nr_Item SmallInt'
      ''
      'select'
      '  @Cd_Filial    = :Cd_Filial,'
      '  @Nr_Orcamento = :Nr_Orcamento,'
      '  @Nr_Item      = :Nr_Item'
      ''
      'delete from'
      '  Orcamento_Detalhe'
      ''
      'where'
      '  Cd_Filial    = @Cd_Filial and'
      '  Nr_Orcamento = @Nr_Orcamento and'
      '  Nr_Item      = @Nr_Item'
      ''
      'insert into Orcamento_Detalhe( Cd_Filial, Nr_Orcamento, Nr_Item, Nr_Detalhe,'
      '  Qt_Item, Nr_Comprimento, Nr_Largura, Nr_Altura, Ds_Detalhe )'
      'select'
      '  @Cd_Filial, @Nr_Orcamento, @Nr_Item, Nr_Detalhe, Qt_Item, Nr_Comprimento,'
      '  Nr_Largura, Nr_Altura, Ds_Detalhe'
      ''
      'from'
      '  #Detalhe'
    )
    Left = 87
    Top = 218
  end
  object ADODsArredonda: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'select'#13#10'  P.Cd_Produto, P.Nm_Produto, P.Sg_Venda, P.Im_Produto, '#13#10'  PP.Vl_Venda * Coalesce( PU.Nr_Fator, 1.0 ) as Vl_Venda,'#13#10'  P.Fl_Lote, PP.Vl_Venda as Vl_Tabela, A.Vl_Arredondamento,'#13#10'  P.Tp_Preco'#13#10#13#10'from'#13#10'  Produto P'#13#10#13#10'left join'#13#10'  Produto_Preco PP'#13#10'on'#13#10'  PP.Cd_Tabela  = :Cd_Tabela and'#13#10'  PP.Cd_Produto = P.Cd_Produto'#13#10#13#10'left join'#13#10'  Produto_Unidade PU'#13#10'on'#13#10'  PU.Cd_Produto = P.Cd_Produto and'#13#10'  PU.Sg_Unidade = P.Sg_Venda'#13#10#13#10'left join'#13#10'  Arredondamento A'#13#10'on'#13#10'  A.Cd_Arredondamento = P.Cd_Arredondamento'#13#10#13#10'where'#13#10'  P.Cd_Produto = :Cd_Produto'
    Parameters = <
      item
        Name = 'Cd_Tabela'
        DataType = ftString
        Size = 6
        Value = 'PADRAO'
      end
      item
        Name = 'Cd_Produto'
        DataType = ftInteger
        Size = -1
        Value = 0
      end>
    Left = 116
    Top = 217
    object ADODsArredondaCd_Produto: TIntegerField
      FieldName = 'Cd_Produto'
    end
    object ADODsArredondaNm_Produto: TStringField
      FieldName = 'Nm_Produto'
      Size = 120
    end
    object ADODsArredondaSg_Venda: TStringField
      FieldName = 'Sg_Venda'
      FixedChar = True
      Size = 2
    end
    object ADODsArredondaIm_Produto: TBlobField
      FieldName = 'Im_Produto'
    end
    object ADODsArredondaVl_Venda: TBCDField
      FieldName = 'Vl_Venda'
      ReadOnly = True
      Precision = 31
      Size = 6
    end
    object ADODsArredondaFl_Lote: TStringField
      FieldName = 'Fl_Lote'
      FixedChar = True
      Size = 1
    end
    object ADODsArredondaVl_Tabela: TBCDField
      FieldName = 'Vl_Tabela'
      Precision = 12
      Size = 3
    end
    object ADODsArredondaVl_Arredondamento: TSmallintField
      FieldName = 'Vl_Arredondamento'
    end
    object ADODsArredondaTp_Preco: TStringField
      FieldName = 'Tp_Preco'
      FixedChar = True
      Size = 1
    end
  end
  object ActManCadastro: TActionManager
    ActionBars = <
      item
      end
      item
      end
      item
      end
      item
      end
      item
      end
      item
      end
      item
        Items = <
          item
            Caption = '-'
          end
          item
            Caption = '-'
          end
          item
            Caption = '-'
          end
          item
            Action = ActLoad
            ImageIndex = 4
          end
          item
            Action = ActClear
            ImageIndex = 32
          end
          item
            Action = ActSave
            ImageIndex = 33
          end
          item
            Caption = '-'
          end
          item
            Action = ActAjustar
            ImageIndex = 34
          end>
      end
      item
      end
      item
        Items = <
          item
            Action = ActLoad
            ImageIndex = 4
          end
          item
            Action = ActClear
            ImageIndex = 32
          end
          item
            Action = ActSave
            ImageIndex = 33
          end
          item
            Caption = '-'
          end
          item
            Action = ActAjustar
            ImageIndex = 34
          end>
        ActionBar = ActToolBImagem
      end>
    Images = FrmMain.ImgLstMenu
    Left = 559
    Top = 143
    StyleName = 'XP Style'
    object ActLoad: TAction
      Category = '3-Imagem'
      Hint = 'Carregar imagem'
      ImageIndex = 4
      OnExecute = ActLoadExecute
    end
    object ActClear: TAction
      Category = '3-Imagem'
      Hint = 'Apagar a figura'
      ImageIndex = 32
      OnExecute = ActClearExecute
    end
    object ActSave: TAction
      Category = '3-Imagem'
      Hint = 'Salvar a imagem'
      ImageIndex = 33
      OnExecute = ActSaveExecute
    end
    object ActAjustar: TAction
      Category = '3-Imagem'
      Hint = 'Ajustar figura ao quadro'
      ImageIndex = 34
      OnExecute = ActAjustarExecute
    end
  end
  object ADODsSubProduto: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'select '#13#10'  Fl_Ativo, Im_SubProduto, Pr_Custo'#13#10#13#10'from'#13#10'  SubProduto'#13#10#13#10'where'#13#10'  Cd_SubProduto = :Cd_SubProduto'
    Parameters = <
      item
        Name = 'Cd_SubProduto'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = nil?
      end>
    Left = 146
    Top = 217
    object ADODsSubProdutoFl_Ativo: TStringField
      FieldName = 'Fl_Ativo'
      FixedChar = True
      Size = 1
    end
    object ADODsSubProdutoIm_SubProduto: TBlobField
      FieldName = 'Im_SubProduto'
    end
    object ADODsSubProdutoPr_Custo: TBCDField
      FieldName = 'Pr_Custo'
      Precision = 9
      Size = 3
    end
  end
  object ADODsUnidLoad: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  PU.Sg_Unidade, PU.Nr_Fator, PU.Nr_Indice'#13#10#13#10'from'#13#10'  Produto_Unidade PU'#13#10#13#10'where'#13#10'  PU.Cd_Produto = :Cd_Produto'
    Parameters = <
      item
        Name = 'Cd_Produto'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = nil?
      end>
    Left = 177
    Top = 218
    object ADODsUnidLoadsg_unidade: TStringField
      FieldName = 'sg_unidade'
      FixedChar = True
      Size = 2
    end
    object ADODsUnidLoadnr_fator: TBCDField
      FieldName = 'nr_fator'
      Precision = 18
      Size = 3
    end
    object ADODsUnidLoadNr_Indice: TBCDField
      FieldName = 'Nr_Indice'
      Precision = 9
    end
  end
  object ADODsNew: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'select'#13#10'  max( Nr_Item ) as Nr_Item'#13#10#13#10'from'#13#10'  Orcamento_Item'#13#10#13#10'where'#13#10'  Cd_Filial    = :Cd_Filial and'#13#10'  Nr_Orcamento = :Nr_Orcamento'
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
    Left = 207
    Top = 218
    object ADODsNewNr_Item: TSmallintField
      FieldName = 'Nr_Item'
      ReadOnly = True
    end
  end
  object ADODsDados: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'select'#13#10'  OI.Im_SubProduto, OI.Cd_Tributacao, T.Ds_Tributacao'#13#10#13#10'from'#13#10'  Orcamento_Item OI'#13#10#13#10'left join'#13#10'  Tributacao T'#13#10'on'#13#10'  T.Cd_Tributacao = OI.Cd_Tributacao'#13#10#13#10'where'#13#10'  OI.Cd_Filial = :Cd_Filial and'#13#10'  OI.Nr_Orcamento = :Nr_Orcamento and'#13#10'  OI.Nr_Item = :Nr_Item'
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
      end
      item
        Name = 'Nr_Item'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = nil?
      end>
    Left = 428
    Top = 110
    object ADODsDadosIm_SubProduto: TBlobField
      FieldName = 'Im_SubProduto'
    end
    object ADODsDadosCd_Tributacao: TSmallintField
      FieldName = 'Cd_Tributacao'
    end
    object ADODsDadosDs_Tributacao: TStringField
      FieldName = 'Ds_Tributacao'
      Size = 30
    end
  end
end
