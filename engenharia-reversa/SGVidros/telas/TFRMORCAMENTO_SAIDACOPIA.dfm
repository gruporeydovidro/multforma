object FrmOrcamento_SaidaCopia: TFrmOrcamento_SaidaCopia
  Left = 340
  Top = 287
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Emiss'#227'o de Nota de Simples Remessa'
  ClientHeight = 508
  ClientWidth = 744
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
    Height = 508
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 723
    Height = 508
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 1
      Top = 477
      Width = 717
      Height = 5
      Shape = bsTopLine
    end
    object Label10: TLabel
      Left = 5
      Top = 38
      Width = 35
      Height = 13
      Caption = 'Cliente:'
    end
    object SbEmitente: TSpeedButton
      Left = 55
      Top = 52
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
    object Label5: TLabel
      Left = 5
      Top = 74
      Width = 31
      Height = 13
      Caption = 'CFOP:'
    end
    object SbCFOP: TSpeedButton
      Left = 36
      Top = 88
      Width = 23
      Height = 19
      Hint = 'Seleciona CFOP'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbCFOPClick
    end
    object Label1: TLabel
      Left = 5
      Top = 218
      Width = 107
      Height = 13
      Caption = 'Observa'#231#245'es da Nota:'
    end
    object Label2: TLabel
      Left = 373
      Top = 74
      Width = 27
      Height = 13
      Caption = 'S'#233'rie:'
    end
    object Label23: TLabel
      Left = 5
      Top = 111
      Width = 69
      Height = 13
      Caption = 'Transportador:'
    end
    object SbTransportador: TSpeedButton
      Left = 55
      Top = 126
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
    object Label25: TLabel
      Left = 124
      Top = 147
      Width = 41
      Height = 13
      Caption = 'Esp'#233'cie:'
    end
    object Label3: TLabel
      Left = 405
      Top = 73
      Width = 33
      Height = 13
      Caption = 'Fatura:'
    end
    object Label4: TLabel
      Left = 367
      Top = 146
      Width = 80
      Height = 13
      Caption = 'Utilizar Pre'#231'o de:'
      Visible = False
    end
    object Label6: TLabel
      Left = 5
      Top = 347
      Width = 113
      Height = 13
      Caption = 'Observa'#231#245'es da Sa'#237'da:'
    end
    object Label27: TLabel
      Left = 5
      Top = 182
      Width = 141
      Height = 13
      Caption = 'Modelo de Documento Fiscal:'
    end
    object SbFilial: TSpeedButton
      Left = 45
      Top = 17
      Width = 23
      Height = 19
      Hint = 'Seleciona Filial'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbFilialClick
    end
    object Label7: TLabel
      Left = 5
      Top = 3
      Width = 104
      Height = 13
      Caption = 'Filial destino da c'#243'pia:'
    end
    object BitBtnConfirm: TBitBtn
      Left = 550
      Top = 480
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 17
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 636
      Top = 480
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 18
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object EdtCd_Emitente: TCurrencyEdit
      Tag = 2
      Left = 5
      Top = 52
      Width = 50
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 2
      OnExit = EdtCd_EmitenteExit
      OnKeyDown = EdtCd_EmitenteKeyDown
    end
    object EdtNm_Emitente: TEdit
      Left = 78
      Top = 52
      Width = 451
      Height = 19
      TabStop = False
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 50
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
    end
    object MmNota: TMemo
      Left = 5
      Top = 233
      Width = 710
      Height = 112
      ScrollBars = ssVertical
      TabOrder = 15
    end
    object EdtCd_CFOP: TEdit
      Left = 5
      Top = 88
      Width = 31
      Height = 19
      MaxLength = 4
      TabOrder = 4
      OnExit = EdtCd_CFOPExit
      OnKeyDown = EdtCd_EmitenteKeyDown
    end
    object EdtDs_CFOP: TEdit
      Left = 60
      Top = 88
      Width = 308
      Height = 19
      TabStop = False
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 50
      ParentFont = False
      ReadOnly = True
      TabOrder = 5
    end
    object EdtCd_Serie: TEdit
      Left = 373
      Top = 88
      Width = 27
      Height = 19
      CharCase = ecUpperCase
      MaxLength = 3
      TabOrder = 6
      Text = '1'
      OnExit = EdtCd_SerieExit
    end
    object EdtCd_Transportador: TCurrencyEdit
      Tag = 3
      Left = 5
      Top = 126
      Width = 50
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 8
      OnExit = EdtCd_TransportadorExit
      OnKeyDown = EdtCd_EmitenteKeyDown
    end
    object EdtNm_Transportador: TEdit
      Left = 79
      Top = 126
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
      TabOrder = 9
    end
    object EdtDs_Quantidade: TLabeledEdit
      Left = 5
      Top = 161
      Width = 114
      Height = 19
      EditLabel.Width = 58
      EditLabel.Height = 13
      EditLabel.Caption = 'Quantidade:'
      LabelSpacing = 2
      MaxLength = 20
      TabOrder = 10
    end
    object EdtDs_Marca: TLabeledEdit
      Left = 249
      Top = 161
      Width = 115
      Height = 19
      EditLabel.Width = 33
      EditLabel.Height = 13
      EditLabel.Caption = 'Marca:'
      LabelSpacing = 2
      MaxLength = 20
      TabOrder = 12
    end
    object CbEspecie: TComboBox
      Left = 124
      Top = 161
      Width = 121
      Height = 21
      ItemHeight = 13
      MaxLength = 20
      TabOrder = 11
      Items.Strings = (
        'Volume'
        'Caixa'
        'Pe'#231'a'
        'Amarrados'
        'Pacote'
        'Rolo'
      )
    end
    object EdtNr_Fatura: TCurrencyEdit
      Tag = 2
      Left = 407
      Top = 88
      Width = 50
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 7
    end
    object CbPreco: TComboBox
      Left = 367
      Top = 160
      Width = 65
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 1
      MaxLength = 20
      TabOrder = 13
      Text = 'Venda'
      Visible = False
      Items.Strings = (
        'Custo'
        'Venda'
      )
    end
    object MmObsSaida: TMemo
      Left = 5
      Top = 362
      Width = 710
      Height = 112
      ScrollBars = ssVertical
      TabOrder = 16
    end
    object CbModeloFiscal: TComboBox
      Left = 5
      Top = 196
      Width = 293
      Height = 21
      Style = csDropDownList
      DropDownCount = 23
      ItemHeight = 13
      ItemIndex = 22
      TabOrder = 14
      Text = '55 - NFe'
      Items.Strings = (
        '01 - Nota Fiscal Modelo 1'
        '02 - Nota Fiscal de Venda a Consumidor'
        '03 - Nota Fiscal de Entrada'
        '04 - Nota Fiscal de Produtor'
        '06 - Nota Fiscal/Conta de Energia El'#233'trica'
        '07 - Nota Fiscal de Servi'#231'o de Transporte'
        '08 - Conhecimento de Transporte Rodovi'#225'rio de Cargas'
        '09 - Conhecimento de Transporte Aquavi'#225'rio de Cargas'
        '10 - Conhecimento A'#233'rio'
        '11 - Conhecimento de Transporte Ferrovi'#225'rio de Cargas'
        '13 - Bilhete de Passagem Rodovi'#225'ria'
        '14 - Bilhete de Passagem Aquavi'#225'rio'
        '15 - Bilhete de Passagem e Nota de Bagagem'
        '16 - Bilhete de Passagem Ferrovi'#225'ria'
        '17 - Despacho de Transporte'
        '18 - Resumo Movimento Di'#225'rio'
        '20 - Ordem de Coleta de Carga'
        '21 - Nota Fiscal de Servi'#231'o de Comunica'#231#227'o'
        '22 - Nota Fiscal de Servi'#231'o de Telecomunica'#231#245'es'
        '24 - Autoriza'#231#227'o de Carregamento e Transporte'
        '25 - Manifesto de Carga'
        '26 - Conhecimento de Transporte Multimodal de Cargas'
        '55 - NFe'
      )
    end
    object CkBDistribuir: TCheckBox
      Left = 4
      Top = 482
      Width = 151
      Height = 17
      Caption = 'Distribuir valor do desconto'
      TabOrder = 19
    end
    object CkBNoItens: TCheckBox
      Left = 162
      Top = 482
      Width = 119
      Height = 17
      Caption = 'N'#227'o copiar itens'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 20
    end
    object EdtCd_Filial: TCurrencyEdit
      Tag = 1
      Left = 5
      Top = 17
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '###'
      TabOrder = 0
      OnExit = EdtCd_FilialExit
      OnKeyDown = EdtCd_EmitenteKeyDown
    end
    object EdtNm_Filial: TEdit
      Left = 69
      Top = 17
      Width = 268
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
      TabOrder = 1
    end
  end
  object ADODsEmitente: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'select'#13#10'  E.Nm_Emitente, E.Nr_Documento, E.Nr_Insc_Estadual,'#13#10'  EE.Cd_Emitente, EE.Nr_Endereco, EE.Ds_Titulo, EE.Ds_Endereco, EE.Nm_Bairro,'#13#10'  EE.Ds_Complemento, EE.Nr_CEP, EE.Cd_Cidade,'#13#10'  C.Nm_Cidade + '''' - '''' + C.Sg_Estado  as Dp_Cidade,'#13#10'  EE.Nr_Telefone_1, EE.Nr_Telefone_2, EE.Nr_Telefone_3, EE.Nr_FAX, EE.Mm_Observacao'#13#10#13#10'from'#13#10'  Emitente E'#13#10#13#10'inner join'#13#10'  Emitente_Endereco EE'#13#10'on'#13#10'  EE.Cd_Emitente = E.Cd_Emitente and'#13#10'  EE.Nr_Endereco = E.Nr_Endereco'#13#10#13#10'inner join'#13#10'  Cidade C'#13#10'on'#13#10'  C.Cd_Cidade = EE.Cd_Cidade'#13#10#13#10'where'#13#10'  E.Cd_Emitente = :Cd_Emitente'
    Parameters = <
      item
        Name = 'Cd_Emitente'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = nil?
      end>
    Left = 28
    Top = 245
    object ADODsEmitenteNm_Emitente: TStringField
      FieldName = 'Nm_Emitente'
      Size = 50
    end
    object ADODsEmitenteNr_Documento: TStringField
      FieldName = 'Nr_Documento'
      Size = 14
    end
    object ADODsEmitenteNr_Insc_Estadual: TStringField
      FieldName = 'Nr_Insc_Estadual'
      Size = 18
    end
    object ADODsEmitenteCd_Emitente: TIntegerField
      FieldName = 'Cd_Emitente'
    end
    object ADODsEmitenteNr_Endereco: TSmallintField
      FieldName = 'Nr_Endereco'
    end
    object ADODsEmitenteDs_Titulo: TStringField
      FieldName = 'Ds_Titulo'
      Size = 50
    end
    object ADODsEmitenteDs_Endereco: TStringField
      FieldName = 'Ds_Endereco'
      Size = 50
    end
    object ADODsEmitenteNm_Bairro: TStringField
      FieldName = 'Nm_Bairro'
      Size = 30
    end
    object ADODsEmitenteDs_Complemento: TStringField
      FieldName = 'Ds_Complemento'
      Size = 30
    end
    object ADODsEmitenteNr_CEP: TStringField
      FieldName = 'Nr_CEP'
      FixedChar = True
      Size = 8
    end
    object ADODsEmitenteCd_Cidade: TIntegerField
      FieldName = 'Cd_Cidade'
    end
    object ADODsEmitenteDp_Cidade: TStringField
      FieldName = 'Dp_Cidade'
      ReadOnly = True
      Size = 65
    end
    object ADODsEmitenteNr_Telefone_1: TStringField
      FieldName = 'Nr_Telefone_1'
      Size = 10
    end
    object ADODsEmitenteNr_Telefone_2: TStringField
      FieldName = 'Nr_Telefone_2'
      Size = 10
    end
    object ADODsEmitenteNr_Telefone_3: TStringField
      FieldName = 'Nr_Telefone_3'
      Size = 10
    end
    object ADODsEmitenteNr_FAX: TStringField
      FieldName = 'Nr_FAX'
      Size = 10
    end
    object ADODsEmitenteMm_Observacao: TMemoField
      FieldName = 'Mm_Observacao'
      BlobType = ftMemo
    end
  end
  object ADOCmdSaida: TMultADOCMD
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLOther0.Strings = (
      '--------------- Inclui a saida'
      'insert into Saida( Cd_Filial, Nr_Saida, Cd_Emitente, Cd_Serie, Nr_Fatura,'
      '  Cd_CFOP, Dt_Emissao, Dt_Lancamento, Vl_BaseICMS, Pr_ICMS,'
      '  Vl_ICMS, Vl_Produto, Vl_Frete, Vl_IPI, Vl_Nota, Ps_Nota, Mm_Observacao,'
      '  St_Saida, Vl_BaseSubst, Vl_Substituicao, Vl_Seguro, Vl_Despesa,'
      '  Ds_Quantidade, Ds_Especie, Ds_Marca, Cd_Transportador, Mm_Nota, Fl_Frete,'
      '  Vl_Desconto, Cd_ModeloFiscal, Fl_ConFinal )'
      'values( :Cd_Filial, :Nr_Saida, :Cd_Emitente, :Cd_Serie, :Nr_Fatura,'
      '  :Cd_CFOP, :Dt_Emissao, :Dt_Lancamento, :Vl_BaseICMS, :Pr_ICMS,'
      '  :Vl_ICMS, :Vl_Produto, :Vl_Frete, :Vl_IPI, :Vl_Nota, :Ps_Nota, :Mm_Observacao,'
      '  ''''1'''', :Vl_BaseSubst, :Vl_Substituicao, :Vl_Seguro, :Vl_Despesa, :Ds_Quantidade,'
      '  :Ds_Especie, :Ds_Marca, :Cd_Transportador, :Mm_Nota, :Fl_Frete,'
      '  :Vl_Desconto, :Cd_ModeloFiscal, :Fl_ConFinal )'
    )
    SQLOther1.Strings = (
      '--------------- Inclus'#227'o pelo pre'#231'o vendido - Itens do Or'#231'amento'
      'declare'
      '  @Cd_Filial SmallInt,'
      '  @Cd_Destino SmallInt,'
      '  @Nr_Orcamento Int,'
      '  @Nr_Saida Int'
      ''
      'select'
      '  @Cd_Filial    = :Cd_Filial,'
      '  @Cd_Destino   = :Cd_Destino,'
      '  @Nr_Orcamento = :Nr_Orcamento,'
      '  @Nr_Saida     = :Nr_Saida'
      ''
      'insert into Saida_Item( Cd_Filial, Nr_Saida, Nr_Item, Cd_Produto, Nm_Produto,'
      '   Sg_Unidade, Qt_Item, Qt_Estoque, Vl_Unitario, Nr_Lote, Dt_Fabricacao,'
      '  Dt_Validade, Pr_ICMS, Pr_IPI, xPed, nItemPed )'
      ''
      'select'
      '  @Cd_Destino, @Nr_Saida, OI.Nr_Item, OI.Cd_Produto, OI.Nm_Produto,'
      '  OI.Sg_Unidade, OI.Qt_Item, OI.Qt_Estoque, OI.Vl_Unitario, OI.Nr_Lote,'
      '  OI.Dt_Fabricacao, OI.Dt_Validade, null, null, xPed, nItemPed'
      ''
      'from'
      '  Orcamento_Item OI'
      ''
      'where'
      '  OI.Cd_Filial     = @Cd_Filial and'
      '  OI.Nr_Orcamento  = @Nr_Orcamento and'
      '  OI.Fl_Confirmado = ''''1'''
    )
    SQLOther2.Strings = (
      '-------------------- Inclus'#227'o pelo pre'#231'o de custo - Itens do Or'#231'amento'
      'declare'
      '  @Cd_Filial SmallInt,'
      '  @Cd_Destino SmallInt,'
      '  @Nr_Orcamento Int,'
      '  @Nr_Saida Int,'
      '  @Cd_Tabela VarChar( 10 )'
      ''
      'select'
      '  @Cd_Filial    = :Cd_Filial,'
      '  @Cd_Destino   = :Cd_Destino,'
      '  @Nr_Orcamento = :Nr_Orcamento,'
      '  @Nr_Saida     = :Nr_Saida,'
      '  @Cd_Tabela    = :Cd_Tabela'
      ''
      'insert into Saida_Item( Cd_Filial, Nr_Saida, Nr_Item, Cd_Produto, Nm_Produto,'
      '   Sg_Unidade, Qt_Item, Qt_Estoque, Vl_Unitario, Nr_Lote, Dt_Fabricacao,'
      '  Dt_Validade, Pr_ICMS, Pr_IPI, xPed, nItemPed )'
      ''
      'select'
      '  @Cd_Destino, @Nr_Saida, OI.Nr_Item, OI.Cd_Produto, OI.Nm_Produto,'
      '  OI.Sg_Unidade, OI.Qt_Item, OI.Qt_Estoque,'
      '  Coalesce( PP.Vl_Custo, PP.Vl_Reposicao, OI.Vl_Unitario ),'
      '  OI.Nr_Lote, OI.Dt_Fabricacao, OI.Dt_Validade, null, null, xPed, nItemPed'
      ''
      'from'
      '  Orcamento_Item OI'
      ''
      'left join'
      '  Produto_Preco PP'
      'on'
      '  PP.Cd_Tabela  = @Cd_Tabela and'
      '  PP.Cd_Produto = OI.Cd_Produto'
      ''
      'where'
      '  OI.Cd_Filial     = @Cd_Filial and'
      '  OI.Nr_Orcamento  = @Nr_Orcamento and'
      '  OI.Fl_Confirmado = ''''1'''
    )
    SQLOther3.Strings = (
      '--------------- Inclus'#227'o pelo pre'#231'o vendido - Itens do Projeto'
      'declare'
      '  @MaxSaida SmallInt'
      ''
      'set @MaxSaida = coalesce('
      '    ('
      '    select'
      '      max( Nr_Item ) + 1'
      ''
      '    from'
      '      Saida_Item'
      ''
      '    where'
      '      Cd_Filial = @Cd_Destino and'
      '      Nr_Saida  = @Nr_Saida'
      '    ), 1 )'
      ''
      '--------------- Sequencia do item'
      'if Object_ID( ''''TempDB..#ItemSaiTMP'''' ) is not null'
      '  drop table #ItemSaiTMP'
      ''
      'create table #ItemSaiTMP'
      '  ('
      '  Nr_Projeto SmallInt,'
      '  Nr_Item SmallInt,'
      '  Nr_Ordem SmallInt identity( 1, 1 )'
      '  )'
      ''
      'insert into #ItemSaiTMP'
      'select'
      '  Nr_Projeto, Nr_Item'
      ''
      'from'
      '  Orcamento_Projeto_Item Cnt'
      ''
      'where'
      '  Cnt.Cd_Filial    = @Cd_Filial and'
      '  Cnt.Nr_Orcamento = @Nr_Orcamento'
      ''
      'insert into Saida_Item( Cd_Filial, Nr_Saida, Nr_Item, Cd_Produto, Nm_Produto,'
      '   Sg_Unidade, Qt_Item, Qt_Estoque, Vl_Unitario, Nr_Lote, Dt_Fabricacao,'
      '  Dt_Validade, Pr_ICMS, Pr_IPI )'
      ''
      'select'
      '  @Cd_Destino, @Nr_Saida, Cnt.Nr_Ordem + @MaxSaida,'
      ''
      '  OI.Cd_Produto, P.Nm_Produto,'
      '  OI.Sg_Unidade, OI.Qt_Item * OP.Qt_Projeto,'
      '  OI.Qt_Item * OP.Qt_Projeto * Coalesce( PU.Nr_Fator, 1.0 ),'
      '  OI.Vl_Unitario, null as Nr_Lote,'
      '  null as Dt_Fabricacao, null as Dt_Validade, null, null'
      ''
      'from'
      '  Orcamento_Projeto_Item OI'
      ''
      'inner join'
      '  #ItemSaiTMP Cnt'
      'on'
      '  Cnt.Nr_Projeto = OI.Nr_Projeto and'
      '  Cnt.Nr_Item    = OI.Nr_Item'
      '  '
      'inner join'
      '  Orcamento_Projeto OP'
      'on'
      '  OP.Cd_Filial    = OI.Cd_Filial and'
      '  OP.Nr_Orcamento = OI.Nr_Orcamento and'
      '  OP.Nr_Projeto   = OI.Nr_Projeto'
      ''
      'inner join'
      '  Produto P'
      'on'
      '  P.Cd_Produto = OI.Cd_Produto'
      ''
      'left join'
      '  Produto_Unidade PU'
      'on'
      '  PU.Cd_Produto = OI.Cd_Produto and'
      '  PU.Sg_Unidade = OI.Sg_Unidade'
      ''
      'where'
      '  OI.Cd_Filial     = @Cd_Filial and'
      '  OI.Nr_Orcamento  = @Nr_Orcamento'
    )
    SQLOther4.Strings = (
      '--------------- Inclus'#227'o pelo pre'#231'o de custo - Itens do Projeto'
      'declare'
      '  @MaxSaida SmallInt'
      ''
      'set @MaxSaida = coalesce('
      '    ('
      '    select'
      '      max( Nr_Item ) + 1'
      ''
      '    from'
      '      Saida_Item'
      ''
      '    where'
      '      Cd_Filial = @Cd_Destino and'
      '      Nr_Saida  = @Nr_Saida'
      '    ), 1 )'
      ''
      '--------------- Sequencia do item'
      'if Object_ID( ''''TempDB..#ItemSaiTMP'''' ) is not null'
      '  drop table #ItemSaiTMP'
      ''
      'create table #ItemSaiTMP'
      '  ('
      '  Nr_Projeto SmallInt,'
      '  Nr_Item SmallInt,'
      '  Nr_Ordem SmallInt identity( 1, 1 )'
      '  )'
      ''
      'insert into #ItemSaiTMP'
      'select'
      '  Nr_Projeto, Nr_Item'
      ''
      'from'
      '  Orcamento_Projeto_Item Cnt'
      ''
      'where'
      '  Cnt.Cd_Filial    = @Cd_Filial and'
      '  Cnt.Nr_Orcamento = @Nr_Orcamento'
      ''
      'insert into Saida_Item( Cd_Filial, Nr_Saida, Nr_Item, Cd_Produto, Nm_Produto,'
      '   Sg_Unidade, Qt_Item, Qt_Estoque, Vl_Unitario, Nr_Lote, Dt_Fabricacao,'
      '  Dt_Validade, Pr_ICMS, Pr_IPI )'
      ''
      'select'
      '  @Cd_Destino, @Nr_Saida, Cnt.Nr_Ordem + @MaxSaida,'
      ''
      '  OI.Cd_Produto, P.Nm_Produto,'
      '  OI.Sg_Unidade, OI.Qt_Item * OP.Qt_Projeto,'
      '  OI.Qt_Item * OP.Qt_Projeto * Coalesce( PU.Nr_Fator, 1.0 ),'
      '  Coalesce( PP.Vl_Custo, PP.Vl_Reposicao, OI.Vl_Unitario ),'
      '  null as Nr_Lote, null as Dt_Fabricacao, null as Dt_Validade, null, null'
      ''
      'from'
      '  Orcamento_Projeto_Item OI'
      ''
      'inner join'
      '  #ItemSaiTMP Cnt'
      'on'
      '  Cnt.Nr_Projeto = OI.Nr_Projeto and'
      '  Cnt.Nr_Item    = OI.Nr_Item'
      ''
      'inner join'
      '  Orcamento_Projeto OP'
      'on'
      '  OP.Cd_Filial    = OI.Cd_Filial and'
      '  OP.Nr_Orcamento = OI.Nr_Orcamento and'
      '  OP.Nr_Projeto   = OI.Nr_Projeto'
      ''
      'inner join'
      '  Produto P'
      'on'
      '  P.Cd_Produto = OI.Cd_Produto'
      ''
      'left join'
      '  Produto_Unidade PU'
      'on'
      '  PU.Cd_Produto = OI.Cd_Produto and'
      '  PU.Sg_Unidade = OI.Sg_Unidade'
      ''
      'left join'
      '  Produto_Preco PP'
      'on'
      '  PP.Cd_Tabela  = @Cd_Tabela and'
      '  PP.Cd_Produto = OI.Cd_Produto'
      ''
      'where'
      '  OI.Cd_Filial     = @Cd_Filial and'
      '  OI.Nr_Orcamento  = @Nr_Orcamento'
    )
    SQLOther5.Strings = (
      '--------------- Fecha a saida'
      'execute Saida_Estoque :Cd_Filial, :Nr_Saida, :St_Saida, :Fl_Estoque, :St_Antiga'
    )
    Left = 59
    Top = 245
  end
  object ADODsAux: TMultADODS
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLOther0.Strings = (
      '-- Proximo numero de saida'
      'select'
      '  max( A.Nr_Saida ) as Nr_Saida'
      ''
      'from'
      '  Saida A'
      ''
      'where'
      '  Cd_Filial = :Cd_Filial'
    )
    Left = 89
    Top = 245
  end
end
