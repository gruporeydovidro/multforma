object FrmOrcamento_Item: TFrmOrcamento_Item
  Left = 224
  Top = 218
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Item do Or'#231'amento'
  ClientHeight = 441
  ClientWidth = 792
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
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 21
    Height = 441
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 771
    Height = 441
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object Label6: TLabel
      Left = 5
      Top = 4
      Width = 92
      Height = 13
      Caption = 'Unidade de Venda:'
    end
    object Label1: TLabel
      Left = 179
      Top = 4
      Width = 58
      Height = 13
      Caption = 'Quantidade:'
    end
    object Label2: TLabel
      Left = 249
      Top = 4
      Width = 39
      Height = 13
      Caption = 'Unit'#225'rio:'
    end
    object Label3: TLabel
      Left = 378
      Top = 4
      Width = 27
      Height = 13
      Caption = 'Total:'
    end
    object Label5: TLabel
      Left = 5
      Top = 41
      Width = 175
      Height = 13
      Caption = 'Descri'#231#227'o alternativa para o produto:'
    end
    object Label4: TLabel
      Left = 327
      Top = 4
      Width = 49
      Height = 13
      Caption = 'Desconto:'
    end
    object Label7: TLabel
      Left = 123
      Top = 166
      Width = 91
      Height = 13
      Caption = 'Redu'#231#227'o de ICMS:'
    end
    object Label8: TLabel
      Left = 218
      Top = 166
      Width = 127
      Height = 13
      Caption = 'Substituto Tribut'#225'rio (STB):'
    end
    object BvlSeparator_3: TBevel
      Left = 4
      Top = 410
      Width = 763
      Height = 6
      Shape = bsTopLine
    end
    object BvlSeparator_2: TBevel
      Left = 4
      Top = 149
      Width = 507
      Height = 5
      Shape = bsTopLine
    end
    object Label9: TLabel
      Left = 0
      Top = 151
      Width = 125
      Height = 13
      Caption = 'Quando Item Avulso:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 518
      Top = 3
      Width = 103
      Height = 13
      Caption = 'Unidades do Produto:'
    end
    object Label11: TLabel
      Left = 5
      Top = 166
      Width = 114
      Height = 13
      Caption = 'Peso (Unit'#225'rio em Kilos):'
    end
    object LblPr_Margem: TLabel
      Left = 458
      Top = 4
      Width = 41
      Height = 13
      Caption = 'Margem:'
    end
    object Label13: TLabel
      Left = 139
      Top = 77
      Width = 56
      Height = 13
      Caption = '&Fabrica'#231#227'o:'
      FocusControl = EdtDt_Fabricacao
    end
    object Label14: TLabel
      Left = 234
      Top = 77
      Width = 44
      Height = 13
      Caption = '&Validade:'
      FocusControl = EdtDt_Validade
    end
    object BvlMoldura: TBevel
      Left = 514
      Top = 90
      Width = 224
      Height = 111
      Shape = bsFrame
    end
    object ImgSubProduto: TImage
      Left = 516
      Top = 93
      Width = 218
      Height = 105
      Hint = 'Utilize o click duplo para'#13#10'visualizar a imagem em tela cheia'
      Center = True
      ParentShowHint = False
      ShowHint = True
      OnDblClick = ImgSubProdutoDblClick
    end
    object LblAmbiente: TLabel
      Left = 327
      Top = 77
      Width = 47
      Height = 13
      Caption = 'Ambiente:'
    end
    object SbAmbiente: TSpeedButton
      Left = 490
      Top = 90
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
      Top = 126
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
      Top = 111
      Width = 175
      Height = 13
      Caption = '&Tributa'#231#227'o (ST - Situa'#231#227'o Tribut'#225'ria):'
      FocusControl = EdtCd_Tributacao
    end
    object Label16: TLabel
      Left = 437
      Top = 111
      Width = 76
      Height = 13
      Caption = 'N'#186' de Item NFe:'
    end
    object BitBtnConfirm: TBitBtn
      Left = 599
      Top = 413
      Width = 85
      Height = 26
      Caption = 'C&onfirmar'
      TabOrder = 18
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 684
      Top = 413
      Width = 85
      Height = 26
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 19
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object CbUnidade: TComboBox
      Left = 5
      Top = 18
      Width = 170
      Height = 21
      Style = csDropDownList
      Ctl3D = True
      ItemHeight = 13
      ParentCtl3D = False
      TabOrder = 0
      OnChange = CbUnidadeChange
      Items.Strings = (
        #211'timo'
        'Bom'
        'Relular'
        'Ruim'
        'P'#233'ssimo'
      )
    end
    object EdtQt_Item: TCurrencyEdit
      Left = 179
      Top = 18
      Width = 65
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 3
      DisplayFormat = '#,##0.00#'
      TabOrder = 1
      OnChange = EdtQt_ItemChange
      OnExit = EdtQt_ItemExit
    end
    object EdtVl_Unitario: TCurrencyEdit
      Left = 249
      Top = 18
      Width = 75
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 5
      DisplayFormat = '#,##0.00###'
      TabOrder = 2
      OnChange = EdtQt_ItemChange
    end
    object EdtVl_Total: TCurrencyEdit
      Left = 378
      Top = 18
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
      TabOrder = 4
    end
    object EdtNm_Item: TEdit
      Left = 5
      Top = 55
      Width = 501
      Height = 19
      TabStop = False
      MaxLength = 120
      TabOrder = 5
    end
    object EdtPr_Desconto: TCurrencyEdit
      Left = 327
      Top = 18
      Width = 49
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DisplayFormat = '#,##0.00'
      TabOrder = 3
      OnExit = EdtPr_DescontoExit
    end
    object EdtPr_Reducao: TCurrencyEdit
      Left = 123
      Top = 180
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DisplayFormat = '#,##0.00'
      TabOrder = 15
    end
    object CbSTB: TComboBox
      Left = 218
      Top = 180
      Width = 60
      Height = 21
      Style = csDropDownList
      Ctl3D = True
      ItemHeight = 13
      ParentCtl3D = False
      TabOrder = 16
      Items.Strings = (
        'Sim'
        'N'#227'o'
      )
    end
    object DbGUnidade: TDBGrid
      Left = 514
      Top = 17
      Width = 252
      Height = 73
      TabStop = False
      DataSource = DsUnidade
      FixedColor = clSilver
      Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 17
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnEnter = DbGUnidadeEnter
      OnExit = DbGUnidadeExit
      Columns = <
        item
          Expanded = False
          FieldName = 'Dp_Unidade'
          Width = 101
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'qt_estoque'
          Title.Alignment = taRightJustify
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'vl_preco'
          Title.Alignment = taRightJustify
          Width = 65
          Visible = True
        end>
    end
    object EdtPs_Produto: TCurrencyEdit
      Left = 5
      Top = 180
      Width = 75
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DisplayFormat = '#,##0.00#'
      TabOrder = 14
    end
    object PnlConjunto: TPanel
      Left = 5
      Top = 201
      Width = 764
      Height = 207
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 20
      object Label12: TLabel
        Left = 1
        Top = -2
        Width = 220
        Height = 13
        Caption = 'Produtos que Comp'#245'em este Conjunto (Cesta):'
      end
      object DbGConjunto: TDBGrid
        Left = 1
        Top = 11
        Width = 761
        Height = 195
        TabStop = False
        DataSource = DsConjunto
        FixedColor = clSilver
        Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDrawColumnCell = DbGConjuntoDrawColumnCell
        OnDblClick = DbGConjuntoDblClick
        OnEnter = DbGUnidadeEnter
        OnExit = DbGUnidadeExit
        OnKeyPress = DbGConjuntoKeyPress
        Columns = <
          item
            Expanded = False
            FieldName = 'nm_produto'
            Width = 368
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'sg_unidade'
            Title.Alignment = taCenter
            Width = 51
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'qt_liquido_venda'
            Title.Alignment = taRightJustify
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'vl_unitario'
            Title.Alignment = taRightJustify
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'qt_item'
            Title.Alignment = taRightJustify
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Qt_Vendida'
            Title.Alignment = taRightJustify
            Width = 80
            Visible = True
          end>
      end
    end
    object EdtPr_Margem: TCurrencyEdit
      Left = 458
      Top = 18
      Width = 49
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      TabStop = False
      AutoSize = False
      Color = clSilver
      DisplayFormat = '#,##0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 21
      OnExit = EdtPr_DescontoExit
    end
    object EdtDt_Fabricacao: TDateEdit
      Left = 139
      Top = 91
      Width = 89
      Height = 19
      CheckOnExit = True
      DialogTitle = 'Selecione a Data'
      GlyphKind = gkCustom
      Glyph.Data = {binary 1850 bytes}
      NumGlyphs = 1
      StartOfWeek = Sun
      TabOrder = 7
    end
    object EdtDt_Validade: TDateEdit
      Left = 234
      Top = 91
      Width = 89
      Height = 19
      CheckOnExit = True
      DialogTitle = 'Selecione a Data'
      GlyphKind = gkCustom
      Glyph.Data = {binary 1850 bytes}
      NumGlyphs = 1
      StartOfWeek = Sun
      TabOrder = 8
    end
    object EdtNr_Lote: TLabeledEdit
      Left = 5
      Top = 91
      Width = 130
      Height = 19
      EditLabel.Width = 79
      EditLabel.Height = 13
      EditLabel.Caption = '&N'#250'mero do Lote:'
      LabelSpacing = 2
      MaxLength = 15
      TabOrder = 6
    end
    object PnlAction_4: TPanel
      Left = 739
      Top = 90
      Width = 28
      Height = 99
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 22
      object ActToolBImagem: TActionToolBar
        Left = 0
        Top = 0
        Width = 28
        Height = 99
        ActionManager = ActManCadastro
        Align = alClient
        Caption = 'ActToolBImagem'
        ColorMap.HighlightColor = clWhite
        ColorMap.BtnSelectedColor = clBtnFace
        ColorMap.UnusedColor = clWhite
        Orientation = boTopToBottom
        ParentShowHint = False
        ShowHint = True
        Spacing = 0
      end
    end
    object CbAmbiente: TComboBox
      Left = 327
      Top = 90
      Width = 163
      Height = 21
      ItemHeight = 13
      MaxLength = 50
      Sorted = True
      TabOrder = 9
      Items.Strings = (
        'Banheiro'
        'Cozinha'
        'Hall de Entrada'
        'Quarto'
        'Sala'
        'Sala de Estar'
      )
    end
    object EdtCd_Tributacao: TCurrencyEdit
      Tag = 6
      Left = 5
      Top = 126
      Width = 39
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      TabStop = False
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 10
      OnExit = EdtCd_TributacaoExit
      OnKeyDown = EdtCd_TributacaoKeyDown
    end
    object EdtDs_Tributacao: TEdit
      Left = 67
      Top = 126
      Width = 260
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
      TabOrder = 11
    end
    object EdtxPed: TLabeledEdit
      Left = 331
      Top = 126
      Width = 104
      Height = 19
      EditLabel.Width = 104
      EditLabel.Height = 13
      EditLabel.Caption = 'N'#186' do Pedido da NFe:'
      LabelSpacing = 2
      MaxLength = 20
      TabOrder = 12
    end
    object EdtnItemPed: TCurrencyEdit
      Tag = 6
      Left = 438
      Top = 126
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '###'
      TabOrder = 13
    end
  end
  object DsUnidade: TDataSource
    DataSet = ADODsUnidade
    Left = 300
    Top = 150
  end
  object ADODsUnidade: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    OnCalcFields = ADODsUnidadeCalcFields
    CommandText = 'select'#13#10'  PU.Sg_Unidade, U.Ds_Unidade, PU.Nr_Fator,'#13#10'  ( E.Qt_Entrada - E.Qt_Orcamento - E.Qt_Saida - E.Qt_Balcao - E.Qt_Reserva ) / PU.Nr_Fator as Qt_Estoque,'#13#10'  PU.Nr_Fator * PU.Nr_Indice * :Vl_Unitario as Vl_Preco,'#13#10'  PU.Nr_Fator * PU.Nr_Indice * :Vl_Custo as Vl_Custo'#13#10#13#10'from'#13#10'  Produto_Unidade PU'#13#10#13#10'inner join'#13#10'  Unidade U'#13#10'on'#13#10'  U.Sg_Unidade = PU.Sg_Unidade'#13#10#13#10'left join'#13#10'  Estoque E'#13#10'on'#13#10'  E.Cd_Filial  = :Cd_Filial and'#13#10'  E.Cd_Produto = PU.Cd_Produto'#13#10#13#10'where'#13#10'  PU.Cd_Produto = :Cd_Produto'
    Parameters = <
      item
        Name = 'Vl_Unitario'
        DataType = ftBCD
        Size = -1
        Value = nil?
      end
      item
        Name = 'Vl_Custo'
        DataType = ftBCD
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
        Name = 'Cd_Produto'
        DataType = ftInteger
        Size = -1
        Value = nil?
      end>
    Left = 329
    Top = 150
    object ADODsUnidadesg_unidade: TStringField
      FieldName = 'sg_unidade'
      FixedChar = True
      Size = 2
    end
    object ADODsUnidadeds_unidade: TStringField
      FieldName = 'ds_unidade'
      Size = 30
    end
    object ADODsUnidadeqt_estoque: TBCDField
      DisplayLabel = 'Estoque'
      FieldName = 'qt_estoque'
      DisplayFormat = '#,##0.0##'
      Precision = 28
      Size = 6
    end
    object ADODsUnidadevl_preco: TBCDField
      DisplayLabel = 'Pre'#231'o'
      FieldName = 'vl_preco'
      DisplayFormat = '#,##0.00'
      Precision = 28
      Size = 6
    end
    object ADODsUnidadeDp_Unidade: TStringField
      DisplayLabel = 'Unidade'
      FieldKind = fkCalculated
      FieldName = 'Dp_Unidade'
      Size = 35
      Calculated = True
    end
    object ADODsUnidadenr_fator: TBCDField
      FieldName = 'nr_fator'
      Precision = 18
      Size = 3
    end
    object ADODsUnidadevl_custo: TBCDField
      FieldName = 'vl_custo'
      Precision = 28
      Size = 6
    end
  end
  object ADOCmdItem: TMultADOCMD
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLInsert.Strings = (
      'insert into Orcamento_Item( Cd_Filial, Nr_Orcamento, Nr_Item, Cd_Produto,'
      '   Nm_Produto, Sg_Unidade, Qt_Item, Vl_Unitario, Fl_Confirmado, Pr_Reducao,'
      '   Fl_STB, Ps_Produto, Nr_Lote, Dt_Fabricacao, Dt_Validade, Im_SubProduto,'
      '   Ds_Ambiente, Cd_Tributacao, xPed, nItemPed )'
      'values( :Cd_Filial, :Nr_Orcamento, :Nr_Item, :Cd_Produto, :Nm_Produto,'
      '   :Sg_Unidade, :Qt_Item, :Vl_Unitario, :Fl_Confirmado, :Pr_Reducao, :Fl_STB,'
      '   :Ps_Produto, :Nr_Lote, :Dt_Fabricacao, :Dt_Validade, :Im_SubProduto,'
      '   :Ds_Ambiente, :Cd_Tributacao, :xPed, :nItemPed )'
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
      '  Pr_Reducao    = :Pr_Reducao,'
      '  Fl_STB        = :Fl_STB,'
      '  Ps_Produto    = :Ps_Produto,'
      '  Nr_Lote       = :Nr_Lote,'
      '  Dt_Fabricacao = :Dt_Fabricacao,'
      '  Dt_Validade   = :Dt_Validade,'
      '  Im_SubProduto = :Im_SubProduto,'
      '  Ds_Ambiente   = :Ds_Ambiente,'
      '  Cd_Tributacao = :Cd_Tributacao,'
      '  xPed          = :xPed,'
      '  nItemPed      = :nItemPed'
      ''
      'where'
      '  Cd_Filial    = :Cd_Filial and'
      '  Nr_Orcamento = :Nr_Orcamento and'
      '  Nr_Item      = :Nr_Item'
    )
    SQLOther0.Strings = (
      '/* Incluir o item de conjunto */'
      'insert into Orcamento_Conjunto( Cd_Filial, Nr_Orcamento, Nr_Item, Cd_Produto,'
      '   Sg_Unidade, Qt_Item, Vl_Unitario, Nm_Produto )'
      'values( :Cd_Filial, :Nr_Orcamento, :Nr_Item, :Cd_Produto, :Sg_Unidade,'
      '   :Qt_Item, :Vl_Unitario, :Nm_Produto )'
    )
    SQLOther1.Strings = (
      '/* Alterar o item de conjunto */'
      'update'
      '  Orcamento_Conjunto'
      ''
      'set'
      '  Sg_Unidade  = :Sg_Unidade,'
      '  Qt_Item     = :Qt_Item,'
      '  Vl_Unitario = :Vl_Unitario,'
      '  Nm_Produto  = :Nm_Produto'
      ''
      'where'
      '  Cd_Filial    = :Cd_Filial and'
      '  Nr_Orcamento = :Nr_Orcamento and'
      '  Nr_Item      = :Nr_Item and'
      '  Cd_Produto   = :Cd_Produto'
    )
    SQLOther2.Strings = (
      '-- I N C L U S '#195' O'
      ''
      '-- Exclui possiveis itens'
      'delete from'
      '  #Orcamento_Conjunto_TMP;'
      ''
      '-- Inclui os itens do conjunto'
      'insert into #Orcamento_Conjunto_TMP'
      'select'
      '  :Cd_Filial, :Nr_Orcamento, PC.Cd_Produto, P.Sg_Venda, PC.Qt_Item,'
      '  PP.Vl_Venda * Coalesce( PU.Nr_Fator, 1.0 ), P.Nm_Produto, null,'
      '  PP.Vl_Venda * Coalesce( PU.Nr_Fator, 1.0 )'
      ''
      'from'
      '  Produto_Conjunto PC'
      ''
      'inner join'
      '  Produto_Preco PP'
      'on'
      '  PP.Cd_Tabela  = :Cd_Tabela and'
      '  PP.Cd_Produto = PC.Cd_Produto'
      ''
      'inner join'
      '  Produto P'
      'on'
      '  P.Cd_Produto = PC.Cd_Produto'
      ''
      'inner join'
      '  Produto_Unidade PU'
      'on'
      '  PU.Cd_Produto = PC.Cd_Produto and'
      '  PU.Sg_Unidade = P.Sg_Venda'
      ''
      'where'
      '  PC.Cd_Produto_CJ = :Cd_Produto;'
    )
    SQLOther3.Strings = (
      '-- A L T E R A '#199' '#195' O'
      ''
      '-- Exclui possiveis itens'
      'delete from'
      '  #Orcamento_Conjunto_TMP;'
      ''
      '-- Inclui os itens do conjunto'
      'insert into #Orcamento_Conjunto_TMP'
      'select'
      '  OC.Cd_Filial, OC.Nr_Orcamento, OC.Cd_Produto, OC.Sg_Unidade,'
      '  OC.Qt_Item / :Qt_Item,'
      '  OC.Vl_Unitario, OC.Nm_Produto, null,'
      '  PP.Vl_Venda * Coalesce( PU.Nr_Fator, 1.0 )'
      ''
      'from'
      '  Orcamento_Conjunto OC'
      ''
      'inner join'
      '  Produto_Preco PP'
      'on'
      '  PP.Cd_Tabela  = :Cd_Tabela and'
      '  PP.Cd_Produto = OC.Cd_Produto'
      ''
      'inner join'
      '  Produto P'
      'on'
      '  P.Cd_Produto = OC.Cd_Produto'
      ''
      'inner join'
      '  Produto_Unidade PU'
      'on'
      '  PU.Cd_Produto = P.Cd_Produto and'
      '  PU.Sg_Unidade = P.Sg_Venda'
      ''
      'where'
      '  OC.Cd_Filial    = :Cd_Filial and'
      '  OC.Nr_Orcamento = :Nr_Orcamento and'
      '  OC.Nr_Item      = :Nr_Item;'
    )
    SQLOther4.Strings = (
      '-- Exclusao de produto modificado'
      'delete from'
      '  Orcamento_Conjunto'
      ''
      'where'
      '  Cd_Filial    = :Cd_Filial and'
      '  Nr_Orcamento = :Nr_Orcamento and'
      '  Nr_Item      = :Nr_Item and'
      '  Cd_Produto   = :Cd_Produto'
    )
    Left = 361
    Top = 150
  end
  object ADODsItem: TADODataSet
    Connection = FrmMain.ADOConMaster
    LockType = ltReadOnly
    CommandText = '-- '#218'ltimo item do or'#231'amento'#13#10'select'#13#10'  max( Nr_Item ) as Nr_Item'#13#10#13#10'from'#13#10'  Orcamento_Item'#13#10#13#10'where'#13#10'  Cd_Filial    = :Cd_Filial and'#13#10'  Nr_Orcamento = :Nr_Orcamento'#13#10
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
    Left = 390
    Top = 150
    object ADODsItemnr_item: TSmallintField
      FieldName = 'nr_item'
    end
  end
  object DsConjunto: TDataSource
    DataSet = ADODsConjunto
    Left = 420
    Top = 150
  end
  object ADODsConjunto: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    OnCalcFields = ADODsConjuntoCalcFields
    CommandText = 'select'#13#10'  OC.Cd_Produto, P.Nm_Produto, OC.Sg_Unidade, E.Qt_Liquido_Venda, OC.Qt_Item,'#13#10'  OC.Vl_Unitario, OC.Nm_Produto as Nm_Item, OC.Cd_OldProduto, OC.Vl_Venda'#13#10#13#10'from'#13#10'  #Orcamento_Conjunto_TMP OC'#13#10#13#10'inner join'#13#10'  Produto P'#13#10'on'#13#10'  P.Cd_Produto = OC.Cd_Produto'#13#10#13#10'left join'#13#10'  Estoque_Saldo E'#13#10'on'#13#10'  E.Cd_Filial  = @Cd_Filial and'#13#10'  E.Cd_Produto = OC.Cd_Produto '#13#10#13#10'where'#13#10'  OC.Cd_Filial    = @Cd_Filial and'#13#10'  OC.Nr_Orcamento = :Nr_Orcamento'#13#10#13#10'order by'#13#10'  P.Nm_Produto'
    Parameters = <
      item
        Name = 'Nr_Orcamento'
        DataType = ftInteger
        Size = -1
        Value = nil?
      end>
    Left = 450
    Top = 150
    object ADODsConjuntoQt_Vendida: TFloatField
      DisplayLabel = 'Vendido'
      FieldKind = fkCalculated
      FieldName = 'Qt_Vendida'
      DisplayFormat = '#,##0.0##'
      Calculated = True
    end
    object ADODsConjuntocd_produto: TIntegerField
      FieldName = 'cd_produto'
    end
    object ADODsConjuntonm_produto: TStringField
      DisplayLabel = 'Produto'
      FieldName = 'nm_produto'
      Size = 120
    end
    object ADODsConjuntosg_unidade: TStringField
      DisplayLabel = 'Unid'
      FieldName = 'sg_unidade'
      FixedChar = True
      Size = 2
    end
    object ADODsConjuntoqt_liquido_venda: TBCDField
      DisplayLabel = 'Estoque'
      FieldName = 'qt_liquido_venda'
      Precision = 28
      Size = 6
    end
    object ADODsConjuntoqt_item: TBCDField
      DisplayLabel = 'Qtde Conjunto'
      FieldName = 'qt_item'
      Precision = 18
      Size = 3
    end
    object ADODsConjuntovl_unitario: TBCDField
      DisplayLabel = 'Pre'#231'o'
      FieldName = 'vl_unitario'
      DisplayFormat = '#,##0.00'
      Precision = 12
      Size = 3
    end
    object ADODsConjuntonm_item: TStringField
      FieldName = 'nm_item'
      Size = 120
    end
    object ADODsConjuntoCd_OldProduto: TIntegerField
      FieldName = 'Cd_OldProduto'
    end
    object ADODsConjuntoVl_Venda: TBCDField
      FieldName = 'Vl_Venda'
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
            Action = ActAjustar
            ImageIndex = 34
          end>
        ActionBar = ActToolBImagem
      end>
    Images = FrmMain.ImgLstMenu
    Left = 463
    Top = 71
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
    Left = 484
    Top = 150
    object ADODsDadosIm_SubProduto: TBlobField
      FieldName = 'Im_SubProduto'
    end
    object ADODsDadosCd_Tributacao: TSmallintField
      FieldName = 'Cd_Tributacao'
    end
    object ADODsDadosDs_Tributacao: TStringField
      FieldName = 'Ds_Tributacao'
      Size = 60
    end
  end
end
