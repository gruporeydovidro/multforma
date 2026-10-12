object FrmOrcamento_XMLRTO: TFrmOrcamento_XMLRTO
  Left = 294
  Top = 173
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Importar Or'#231'amento por XML'
  ClientHeight = 504
  ClientWidth = 851
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
    Height = 504
    Align = alLeft
    TabOrder = 0
    ExplicitHeight = 541
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 830
    Height = 504
    Align = alClient
    ParentColor = True
    TabOrder = 1
    ExplicitWidth = 953
    ExplicitHeight = 541
    object BvlSeparator: TBevel
      Left = 1
      Top = 473
      Width = 824
      Height = 5
      Shape = bsTopLine
    end
    object SbProcessar: TSpeedButton
      Left = 431
      Top = 16
      Width = 121
      Height = 21
      Hint = 'Processa o arquivo escolhido'
      Caption = '&Processar os dados'
      Flat = True
      Glyph.Data = {binary 442 bytes}
      ParentShowHint = False
      ShowHint = True
      OnClick = SbProcessarClick
    end
    object SbArquivo: TSpeedButton
      Left = 406
      Top = 17
      Width = 23
      Height = 19
      Hint = 'Selecionar o Arquivo'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbArquivoClick
    end
    object Label2: TLabel
      Left = 5
      Top = 38
      Width = 35
      Height = 13
      Caption = 'Cliente:'
    end
    object Label3: TLabel
      Left = 5
      Top = 75
      Width = 49
      Height = 13
      Caption = 'Vendedor:'
    end
    object SbFuncionario: TSpeedButton
      Left = 45
      Top = 90
      Width = 23
      Height = 19
      Hint = 'Seleciona Vendedor'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbFuncionarioClick
    end
    object Label25: TLabel
      Left = 382
      Top = 76
      Width = 49
      Height = 13
      Caption = 'Desconto:'
    end
    object Label33: TLabel
      Left = 458
      Top = 76
      Width = 27
      Height = 13
      Caption = 'Frete:'
    end
    object Label34: TLabel
      Left = 5
      Top = 111
      Width = 136
      Height = 13
      Caption = 'O&bserva'#231#245'es do Or'#231'amento:'
      FocusControl = MmObservacao
    end
    object SbEmitente: TSpeedButton
      Left = 55
      Top = 53
      Width = 23
      Height = 19
      Hint = 'Seleciona Cliente'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbEmitenteClick
    end
    object Label1: TLabel
      Left = 5
      Top = 223
      Width = 45
      Height = 13
      Caption = 'Produtos:'
      FocusControl = MmObservacao
    end
    object BitBtnConfirm: TBitBtn
      Left = 656
      Top = 476
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 0
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 742
      Top = 476
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 1
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object EdtNm_File: TLabeledEdit
      Tag = 1
      Left = 5
      Top = 17
      Width = 400
      Height = 19
      EditLabel.Width = 113
      EditLabel.Height = 13
      EditLabel.Caption = 'Escolha o arquivo XML:'
      TabOrder = 2
    end
    object EdtCd_Emitente: TCurrencyEdit
      Tag = 3
      Left = 5
      Top = 53
      Width = 50
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 3
      OnExit = EdtCd_EmitenteExit
    end
    object EdtNm_Emitente: TEdit
      Left = 80
      Top = 53
      Width = 445
      Height = 19
      TabStop = False
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
    end
    object EdtNr_Pedido_Emitente: TLabeledEdit
      Left = 530
      Top = 53
      Width = 145
      Height = 19
      CharCase = ecUpperCase
      EditLabel.Width = 91
      EditLabel.Height = 13
      EditLabel.Caption = 'N'#250'mero do Pedido:'
      LabelSpacing = 2
      MaxLength = 30
      TabOrder = 5
    end
    object EdtCd_Funcionario: TCurrencyEdit
      Tag = 2
      Left = 5
      Top = 90
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 6
      OnExit = EdtCd_FuncionarioExit
    end
    object EdtNm_Funcionario: TEdit
      Left = 69
      Top = 90
      Width = 308
      Height = 19
      TabStop = False
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 30
      ParentFont = False
      ReadOnly = True
      TabOrder = 7
    end
    object EdtVl_Desconto: TCurrencyEdit
      Left = 382
      Top = 90
      Width = 70
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 3
      DisplayFormat = '#,##0.00#'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 8
    end
    object EdtVl_Frete: TCurrencyEdit
      Left = 458
      Top = 90
      Width = 75
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 3
      DisplayFormat = '#,##0.00#'
      TabOrder = 9
    end
    object MmObservacao: TMemo
      Left = 5
      Top = 126
      Width = 805
      Height = 91
      ScrollBars = ssVertical
      TabOrder = 10
    end
    object DbGProdutos: TDBGrid
      Left = 5
      Top = 237
      Width = 801
      Height = 233
      DataSource = DsProdutos
      FixedColor = clSilver
      Options = [dgTitles, dgColumnResize, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 11
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnEnter = DbGProdutosEnter
      OnExit = DbGProdutosExit
      Columns = <
        item
          Expanded = False
          FieldName = 'Cd_Produto'
          Title.Alignment = taRightJustify
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Ds_Produto'
          Width = 461
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Sg_Unidade'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Vl_Liquido'
          Title.Alignment = taRightJustify
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Qt_Item'
          Title.Alignment = taRightJustify
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Vl_Total'
          Title.Alignment = taRightJustify
          Width = 75
          Visible = True
        end>
    end
  end
  object OpenDlg: TOpenDialog
    Filter = 'Arquivos de NFe|*.xml'
    Left = 609
    Top = 88
  end
  object ADOCmdXML: TMultADOCMD
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLOther0.Strings = (
      '-- ------------ Cria table temporaria'
      'if Object_ID( ''''TempDB..##XmlItem'''' ) is null'
      '  create table ##XmlItem'
      '    ('
      '    Nr_ID Int,'
      '    Nr_Item SmallInt,'
      '    Cd_Produto Int,'
      '    Ds_Produto VarChar( 120 ),'
      '    Cd_NCM VarChar( 10 ),'
      '    Sg_Unidade VarChar( 2 ),'
      '    Vl_Unitario Numeric( 12, 2 ),'
      '    Vl_Desconto Numeric( 12, 2 ),'
      '    Vl_Liquido Numeric( 12, 2 ),'
      '    Qt_Item Numeric( 12, 3 ),'
      '    Vl_Total Numeric( 12, 2 )'
      '    )'
      '    '
      'else'
      '  delete from ##XmlItem where Nr_ID = @@SPID'
    )
    SQLOther1.Strings = (
      '-- ------- Incluir os itens'
      'insert into ##XmlItem( Nr_ID, Nr_Item, Cd_Produto, Ds_Produto, Cd_NCM, Sg_Unidade,'
      '    Vl_Unitario, Vl_Desconto, Vl_Liquido, Qt_Item, Vl_Total )'
      ''
      'values( @@SPID, :Nr_Item, :Cd_Produto, :Ds_Produto, :Cd_NCM, :Sg_Unidade,'
      '    :Vl_Unitario, :Vl_Desconto, :Vl_Liquido, :Qt_Item, :Vl_Total )'
    )
    SQLOther2.Strings = (
      'declare'
      '  @Cd_Filial SmallInt,'
      '  @Nr_Orcamento Int,'
      '  @Cd_Funcionario SmallInt'
      ''
      'select'
      '  @Cd_Filial      = :Cd_Filial,'
      '  @Nr_Orcamento   = :Nr_Orcamento,'
      '  @Cd_Funcionario = :Cd_Funcionario'
      ''
      '-- ----------------- Incluir o or'#231'amento'
      'insert into Orcamento( Cd_Filial, Nr_Orcamento, Dt_Emissao, St_Orcamento,'
      '  Tp_Carga, Cd_Emitente, Cd_Funcionario, Fl_FormaPagto, Nr_Endereco,'
      '  Cd_Tabela, Pr_ICMS, Pr_Desconto, Vl_Desconto, Pr_Custo, Vl_Custo,'
      '  Vl_Coleta_Frete, Vl_Pedido_Frete, Fl_Frete, Cd_Usuario, Mm_Nota,'
      '  Nr_Entrega, Cd_Transportador, Ds_Quantidade, Ds_Especie, Ds_Marca,'
      '  Cd_CFOP, Ps_Pedido, Ps_Liquido, Nr_Placa,'
      '  Nr_Pedido_Emitente, Nm_Contato, Mm_Observacao, Nr_Validade, Fl_Producao )'
      ''
      'values( @Cd_Filial, @Nr_Orcamento, :Dt_Emissao, ''''1'''', :Tp_Carga,'
      '  :Cd_Emitente, @Cd_Funcionario, :Fl_FormaPagto, :Nr_Endereco,'
      '  :Cd_Tabela, :Pr_ICMS, :Pr_Desconto, :Vl_Desconto, :Pr_Custo, :Vl_Custo,'
      '  :Vl_Coleta_Frete, :Vl_Pedido_Frete, :Fl_Frete, :Cd_Usuario, :Mm_Nota,'
      '  :Nr_Entrega, :Cd_Transportador, :Ds_Quantidade, :Ds_Especie, :Ds_Marca,'
      '  :Cd_CFOP, :Ps_Pedido, :Ps_Liquido, :Nr_Placa,'
      '  :Nr_Pedido_Emitente, :Nm_Contato, :Mm_Observacao, :Nr_Validade, :Fl_Producao )'
      ''
      '-- ----------------- Inclus'#227'o de funcion'#225'rio na comiss'#227'o'
      'insert into Orcamento_Comissao( Cd_Filial, Nr_Orcamento, Cd_Funcionario )'
      'values( @Cd_Filial, @Nr_Orcamento, @Cd_Funcionario )'
      ''
      '-- ----------------- Incluir os itens'
      'insert into Orcamento_Item( Cd_Filial, Nr_Orcamento, Nr_Item, Cd_Produto,'
      '   Nm_Produto, Sg_Unidade, Qt_Item, Vl_Unitario, Fl_Confirmado, Pr_Reducao,'
      '   Fl_STB, Ps_Produto, Fl_OrdemServico )'
      ''
      'select'
      '  @Cd_Filial, @Nr_Orcamento, Nr_Item, Cd_Produto, Ds_Produto,'
      '  Sg_Unidade, Qt_Item, Vl_Liquido, ''''1'''', ''''2'''', ''''2'''', 0, ''''2'''
      ''
      'from'
      '  ##XmlItem'
      ''
      'where'
      '  Nr_ID = @@SPID'
      ''
    )
    Left = 576
    Top = 88
  end
  object ADODsEmitente: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = '-- ------- Testa c'#243'digo'#13#10'select'#13#10'  Cd_Emitente, Nr_Documento, Nm_Emitente'#13#10#13#10'from'#13#10'  Emitente'#13#10#13#10'where'#13#10'  Cd_Emitente = :Cd_Emitente'
    Parameters = <
      item
        Name = 'Cd_Emitente'
        DataType = ftInteger
        Size = -1
        Value = nil?
      end>
    SQLOther0.Strings = (
      '-- ------- Testa c'#243'digo'
      'select'
      '  Cd_Emitente, Nr_Documento, Nm_Emitente'
      ''
      'from'
      '  Emitente'
      ''
      'where'
      '  Cd_Emitente = :Cd_Emitente'
    )
    SQLOther1.Strings = (
      '-- ------- Testa CPF/CNPJ'
      'select'
      '  Cd_Emitente, Nr_Documento, Nm_Emitente'
      ''
      'from'
      '  Emitente'
      ''
      'where'
      '  Nr_Documento = :Nr_Documento'
    )
    Left = 642
    Top = 88
    object ADODsEmitenteCd_Emitente: TIntegerField
      FieldName = 'Cd_Emitente'
    end
    object ADODsEmitenteNr_Documento: TStringField
      FieldName = 'Nr_Documento'
      Size = 14
    end
    object ADODsEmitenteNm_Emitente: TStringField
      FieldName = 'Nm_Emitente'
      Size = 50
    end
  end
  object ADODsFuncionario: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'select'#13#10'  Cd_Funcionario, Nm_Funcionario'#13#10#13#10'from'#13#10'  Funcionario '#13#10#13#10'where'#13#10'  Nr_Documento = :Nr_Documento'
    Parameters = <
      item
        Name = 'Nr_Documento'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 11
        Value = nil?
      end>
    Left = 673
    Top = 88
    object ADODsFuncionarioCd_Funcionario: TSmallintField
      FieldName = 'Cd_Funcionario'
    end
    object ADODsFuncionarioNm_Funcionario: TStringField
      FieldName = 'Nm_Funcionario'
      Size = 50
    end
  end
  object DsProdutos: TDataSource
    DataSet = ADODsProdutos
    Left = 712
    Top = 88
  end
  object ADODsProdutos: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    CommandText = '-- ------------ Cria table temporaria'#13#10'/*'#13#10'if Object_ID( ''''TempDB..##XmlItem'''' ) is null'#13#10'  create table ##XmlItem'#13#10'    ('#13#10'    Nr_ID Int,'#13#10'    Nr_Item SmallInt,'#13#10'    Cd_Produto Int,'#13#10'    Ds_Produto VarChar( 120 ),'#13#10'    Cd_NCM VarChar( 10 ),'#13#10'    Sg_Unidade VarChar( 2 ),'#13#10'    Vl_Unitario Numeric( 12, 2 ),'#13#10'    Vl_Desconto Numeric( 12, 2 ),'#13#10'    Vl_Liquido Numeric( 12, 2 ),'#13#10'    Qt_Item Numeric( 12, 3 ),'#13#10'    Vl_Total Numeric( 12, 2 )'#13#10'    )'#13#10'    '#13#10'else'#13#10'  delete from ##XmlItem where Nr_ID = @@SPID'#13#10'*/'#13#10#13#10'select'#13#10'   Nr_ID, Nr_Item, Cd_Produto, Ds_Produto, Cd_NCM, Sg_Unidade,'#13#10'  Vl_Unitario, Vl_Desconto, Vl_Liquido, Qt_Item, Vl_Total'#13#10#13#10'from'#13#10'  ##XmlItem'#13#10#13#10'where'#13#10'  Nr_ID = @@SPID'#13#10#13#10'order by'#13#10'  Nr_ID, Nr_Item'
    Parameters = <>
    Left = 744
    Top = 88
    object ADODsProdutosNr_ID: TIntegerField
      FieldName = 'Nr_ID'
    end
    object ADODsProdutosNr_Item: TSmallintField
      FieldName = 'Nr_Item'
    end
    object ADODsProdutosCd_Produto: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'Cd_Produto'
    end
    object ADODsProdutosDs_Produto: TStringField
      DisplayLabel = 'Produto'
      FieldName = 'Ds_Produto'
      Size = 120
    end
    object ADODsProdutosCd_NCM: TStringField
      FieldName = 'Cd_NCM'
      Size = 10
    end
    object ADODsProdutosSg_Unidade: TStringField
      DisplayLabel = 'Unid'
      FieldName = 'Sg_Unidade'
      Size = 2
    end
    object ADODsProdutosVl_Unitario: TBCDField
      DisplayLabel = 'Unit'#225'rio'
      FieldName = 'Vl_Unitario'
      DisplayFormat = '#,##0.00'
      Precision = 12
      Size = 2
    end
    object ADODsProdutosVl_Desconto: TBCDField
      FieldName = 'Vl_Desconto'
      DisplayFormat = '#,##0.00'
      Precision = 12
      Size = 2
    end
    object ADODsProdutosVl_Liquido: TBCDField
      DisplayLabel = 'Unit'#225'rio'
      FieldName = 'Vl_Liquido'
      DisplayFormat = '#,##0.00'
      Precision = 12
      Size = 2
    end
    object ADODsProdutosQt_Item: TBCDField
      DisplayLabel = 'Quantidade'
      FieldName = 'Qt_Item'
      DisplayFormat = '#,##0.###'
      Precision = 12
      Size = 3
    end
    object ADODsProdutosVl_Total: TBCDField
      DisplayLabel = 'Total'
      FieldName = 'Vl_Total'
      DisplayFormat = '#,##0.00'
      Precision = 12
      Size = 2
    end
  end
  object ADODsOrcaNext: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'select'#13#10'  max( Nr_Orcamento ) as Nr_Orcamento'#13#10#13#10'from'#13#10'  Orcamento'#13#10#13#10'where'#13#10'  Cd_Filial = :Cd_Filial'#13#10
    Parameters = <
      item
        Name = 'Cd_Filial'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = nil?
      end>
    Left = 776
    Top = 88
    object ADODsOrcaNextNr_Orcamento: TIntegerField
      FieldName = 'Nr_Orcamento'
      ReadOnly = True
    end
  end
end
