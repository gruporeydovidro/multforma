object FrmOPaf_Exporta: TFrmOPaf_Exporta
  Left = 294
  Top = 173
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Exporta'#231#227'o de dados para o OPaf'
  ClientHeight = 271
  ClientWidth = 681
  Color = clWhite
  Ctl3D = False
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 21
    Height = 271
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 660
    Height = 271
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 3
      Top = 241
      Width = 652
      Height = 5
      Shape = bsTopLine
    end
    object Label2: TLabel
      Left = 5
      Top = 0
      Width = 86
      Height = 13
      Caption = 'Arquivo Remessa:'
    end
    object SbSave: TSpeedButton
      Left = 279
      Top = 12
      Width = 23
      Height = 21
      Hint = 'Salvar como...'
      Flat = True
      Glyph.Data = {binary 378 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
    end
    object Label5: TLabel
      Left = 5
      Top = 35
      Width = 91
      Height = 13
      Caption = 'Grupo de Emitente:'
    end
    object SbGrupo: TSpeedButton
      Left = 45
      Top = 50
      Width = 23
      Height = 19
      Hint = 'Seleciona Grupo de Emitente'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbGrupoClick
    end
    object SbSubGrupo: TSpeedButton
      Left = 46
      Top = 85
      Width = 23
      Height = 19
      Hint = 'Consulta SubGrupo de Emitente'
      Flat = True
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
      OnClick = SbSubGrupoClick
    end
    object Label20: TLabel
      Left = 5
      Top = 70
      Width = 110
      Height = 13
      Caption = 'SubGrupo de Emitente:'
    end
    object BitBtnConfirm: TBitBtn
      Left = 487
      Top = 244
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 5
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 573
      Top = 244
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 6
      OnClick = BitBtnCancelClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object EdtNm_Remessa: TEdit
      Left = 5
      Top = 14
      Width = 274
      Height = 19
      TabOrder = 0
      Text = 'c:\temp\RM000003.R'
    end
    object EdtCd_Grupo: TCurrencyEdit
      Tag = 2
      Left = 5
      Top = 50
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 1
      OnExit = EdtCd_GrupoExit
      OnKeyDown = EdtCd_GrupoKeyDown
    end
    object EdtNm_Grupo: TEdit
      Left = 69
      Top = 50
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
    object EdtCd_SubGrupo: TCurrencyEdit
      Tag = 3
      Left = 5
      Top = 85
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '###'
      TabOrder = 3
      OnExit = EdtCd_SubGrupoExit
      OnKeyDown = EdtCd_GrupoKeyDown
    end
    object EdtNm_SubGrupo: TEdit
      Left = 68
      Top = 85
      Width = 308
      Height = 19
      TabStop = False
      AutoSize = False
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
    end
  end
  object ADODsUsuario: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'select top 5'#13#10'  U.Cd_Usuario, U.Sh_Usuario,'#13#10'  case '#13#10'    when Exists( select UGA.Cd_Grupo from Usuario_Grupo_Acesso UGA where UGA.Cd_Grupo = U.Cd_Grupo and UGA.Cd_Acesso = ''''OPA01'''' ) then ''''A'''#13#10'    else ''''I'''#13#10'    '#13#10'  end as Fl_Status,'#13#10'  '#13#10'  case '#13#10'    when Exists( select UGA.Cd_Grupo from Usuario_Grupo_Acesso UGA where UGA.Cd_Grupo = U.Cd_Grupo and UGA.Cd_Acesso = ''''OPA02'''' ) then ''''1'''#13#10'    else ''''2'''#13#10'    '#13#10'  end as Fl_Nivel'#13#10#13#10'from'#13#10'  Usuario U'
    Parameters = <>
    Left = 32
    Top = 240
    object ADODsUsuarioCd_Usuario: TStringField
      FieldName = 'Cd_Usuario'
      Size = 15
    end
    object ADODsUsuarioSh_Usuario: TStringField
      FieldName = 'Sh_Usuario'
      Size = 15
    end
    object ADODsUsuarioFl_Status: TStringField
      FieldName = 'Fl_Status'
      ReadOnly = True
      Size = 1
    end
    object ADODsUsuarioFl_Nivel: TStringField
      FieldName = 'Fl_Nivel'
      ReadOnly = True
      Size = 1
    end
  end
  object ADODsVendedor: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'select top 5'#13#10'  Cd_Funcionario, Nm_Funcionario'#13#10#13#10'from'#13#10'  Funcionario'
    Parameters = <>
    Left = 63
    Top = 240
    object ADODsVendedorCd_Funcionario: TSmallintField
      FieldName = 'Cd_Funcionario'
    end
    object ADODsVendedorNm_Funcionario: TStringField
      FieldName = 'Nm_Funcionario'
      Size = 50
    end
  end
  object ADODsCliente: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'select'#13#10'  E.Cd_Emitente, E.Nr_Documento, E.Nm_Emitente, EE.Ds_Endereco, EE.Ds_Numero,'#13#10'  EE.Ds_Complemento, EE.Nm_Bairro, C.Nm_Cidade, C.Sg_Estado, EE.Nr_Telefone_1,'#13#10'  E.Ds_EMail, EE.Nr_CEP, E.Nr_Insc_Estadual,  C.Cd_IBGE, E.Ds_EMailNFe,'#13#10'  E.Vl_Limite_Credito'#13#10#13#10'from'#13#10'  Emitente E'#13#10#13#10'inner join'#13#10'  Emitente_Endereco EE'#13#10'on'#13#10'  EE.Cd_Emitente = E.Cd_Emitente and'#13#10'  EE.Nr_Endereco = E.Nr_Endereco'#13#10#13#10'inner join'#13#10'  Cidade C'#13#10'on'#13#10'  C.Cd_Cidade = EE.Cd_Cidade'#13#10#13#10'where'#13#10'  E.Nr_Documento > '''''#13#10#13#10'  /* Cd_Grupo */'#13#10'  /* Cd_SubGrupo */'
    Parameters = <>
    SQLOther0.Strings = (
      'select'
      '  E.Cd_Emitente, E.Nr_Documento, E.Nm_Emitente, EE.Ds_Endereco, EE.Ds_Numero,'
      '  EE.Ds_Complemento, EE.Nm_Bairro, C.Nm_Cidade, C.Sg_Estado, EE.Nr_Telefone_1,'
      '  E.Ds_EMail, EE.Nr_CEP, E.Nr_Insc_Estadual,  C.Cd_IBGE, E.Ds_EMailNFe,'
      '  E.Vl_Limite_Credito'
      ''
      'from'
      '  Emitente E'
      ''
      'inner join'
      '  Emitente_Endereco EE'
      'on'
      '  EE.Cd_Emitente = E.Cd_Emitente and'
      '  EE.Nr_Endereco = E.Nr_Endereco'
      ''
      'inner join'
      '  Cidade C'
      'on'
      '  C.Cd_Cidade = EE.Cd_Cidade'
      ''
      'where'
      '  E.Nr_Documento > '''''' and'
      '  E.Cd_Emitente <= 10'
    )
    Left = 92
    Top = 240
    object ADODsClienteCd_Emitente: TIntegerField
      FieldName = 'Cd_Emitente'
    end
    object ADODsClienteNr_Documento: TStringField
      FieldName = 'Nr_Documento'
      Size = 14
    end
    object ADODsClienteNm_Emitente: TStringField
      FieldName = 'Nm_Emitente'
      Size = 50
    end
    object ADODsClienteDs_Endereco: TStringField
      FieldName = 'Ds_Endereco'
      Size = 50
    end
    object ADODsClienteDs_Numero: TStringField
      FieldName = 'Ds_Numero'
      Size = 10
    end
    object ADODsClienteDs_Complemento: TStringField
      FieldName = 'Ds_Complemento'
      Size = 30
    end
    object ADODsClienteNm_Bairro: TStringField
      FieldName = 'Nm_Bairro'
      Size = 33
    end
    object ADODsClienteNm_Cidade: TStringField
      FieldName = 'Nm_Cidade'
      Size = 60
    end
    object ADODsClienteSg_Estado: TStringField
      FieldName = 'Sg_Estado'
      FixedChar = True
      Size = 2
    end
    object ADODsClienteNr_Telefone_1: TStringField
      FieldName = 'Nr_Telefone_1'
      Size = 10
    end
    object ADODsClienteDs_EMail: TStringField
      FieldName = 'Ds_EMail'
      Size = 150
    end
    object ADODsClienteNr_CEP: TStringField
      FieldName = 'Nr_CEP'
      FixedChar = True
      Size = 8
    end
    object ADODsClienteNr_Insc_Estadual: TStringField
      FieldName = 'Nr_Insc_Estadual'
    end
    object ADODsClienteCd_IBGE: TStringField
      FieldName = 'Cd_IBGE'
      Size = 10
    end
    object ADODsClienteDs_EMailNFe: TStringField
      FieldName = 'Ds_EMailNFe'
      Size = 100
    end
    object ADODsClienteVl_Limite_Credito: TBCDField
      FieldName = 'Vl_Limite_Credito'
      Precision = 12
      Size = 2
    end
  end
  object ADODsProduto: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'select'#13#10'  P.Cd_Produto, P.Nm_Produto, P.Nm_Abreviado, P.Sg_Venda,'#13#10#13#10'  case when P.Fl_Ativo = ''''1'''' then ''''A'''' else ''''I'''' end as Fl_Status,'#13#10#13#10'  T.Cd_CST,'#13#10#13#10'  case'#13#10'    when T.Tp_Tributacao = ''''1'''' then ''''T'''#13#10'    when T.Tp_Tributacao = ''''2'''' then ''''F'''#13#10'    when T.Tp_Tributacao = ''''3'''' then ''''I'''#13#10'    when T.Tp_Tributacao = ''''4'''' then ''''N'''#13#10#13#10'  end as Fl_Tributacao,'#13#10#13#10'  T.Pr_Contrib, ''''P'''' as Fl_IPPT, PP.Vl_Custo, ''''U'''' as Fl_Pesavel,'#13#10'  ''''F'''' as Tp_Produto,'#13#10#13#10'  case when P.Fl_Produto = ''''2'''' then '''' '''' else ''''S'''' end as Fl_Servico,'#13#10#13#10'  case'#13#10'    when P.Fl_Origem = ''''1'''' then ''''0'''#13#10'    when P.Fl_Origem = ''''2'''' then ''''1'''#13#10'    when P.Fl_Origem = ''''3'''' then ''''2'''#13#10#13#10'  end as Fl_Origem,'#13#10#13#10'  P.Cd_ClasFiscal'#13#10#13#10'from'#13#10'  Produto P'#13#10#13#10'inner join'#13#10'  Tributacao T'#13#10'on'#13#10'  T.Cd_Tributacao = P.Cd_Tributacao'#13#10#13#10'left join'#13#10'  Produto_Preco PP'#13#10'on'#13#10'  PP.Cd_Tabela  = :Cd_Tabela and'#13#10'  PP.Cd_Produto = P.Cd_Produto'
    Parameters = <
      item
        Name = 'Cd_Tabela'
        DataType = ftString
        Size = 6
        Value = 'PADRAO'
      end>
    Left = 122
    Top = 240
    object ADODsProdutoCd_Produto: TIntegerField
      FieldName = 'Cd_Produto'
    end
    object ADODsProdutoNm_Produto: TStringField
      FieldName = 'Nm_Produto'
      Size = 120
    end
    object ADODsProdutoNm_Abreviado: TStringField
      FieldName = 'Nm_Abreviado'
      Size = 40
    end
    object ADODsProdutoSg_Venda: TStringField
      FieldName = 'Sg_Venda'
      FixedChar = True
      Size = 2
    end
    object ADODsProdutoFl_Status: TStringField
      FieldName = 'Fl_Status'
      ReadOnly = True
      Size = 1
    end
    object ADODsProdutoCd_CST: TStringField
      FieldName = 'Cd_CST'
      Size = 5
    end
    object ADODsProdutoFl_Tributacao: TStringField
      FieldName = 'Fl_Tributacao'
      ReadOnly = True
      Size = 1
    end
    object ADODsProdutoPr_Contrib: TBCDField
      FieldName = 'Pr_Contrib'
      Precision = 7
      Size = 2
    end
    object ADODsProdutoFl_IPPT: TStringField
      FieldName = 'Fl_IPPT'
      ReadOnly = True
      Size = 1
    end
    object ADODsProdutoVl_Custo: TBCDField
      FieldName = 'Vl_Custo'
      Precision = 12
      Size = 3
    end
    object ADODsProdutoFl_Pesavel: TStringField
      FieldName = 'Fl_Pesavel'
      ReadOnly = True
      Size = 1
    end
    object ADODsProdutoTp_Produto: TStringField
      FieldName = 'Tp_Produto'
      ReadOnly = True
      Size = 1
    end
    object ADODsProdutoFl_Servico: TStringField
      FieldName = 'Fl_Servico'
      ReadOnly = True
      Size = 1
    end
    object ADODsProdutoFl_Origem: TStringField
      FieldName = 'Fl_Origem'
      ReadOnly = True
      Size = 1
    end
    object ADODsProdutoCd_ClasFiscal: TStringField
      FieldName = 'Cd_ClasFiscal'
      Size = 10
    end
  end
  object ADODsPreco: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'select'#13#10'  PT.Cd_Tabela, PP.Cd_Produto, PP.Vl_Venda'#13#10#13#10'from'#13#10'  Produto_TblPreco PT'#13#10#13#10'inner join'#13#10'  Produto_Preco PP'#13#10'on'#13#10'  PP.Cd_Tabela = PT.Cd_Tabela and'#13#10'  PP.Vl_Venda > 0.0'#13#10#13#10'inner join '#13#10'  Produto P'#13#10'on'#13#10'  P.Cd_Produto = PP.Cd_Produto and'#13#10'  P.Cd_Grupo = 1088'#13#10#13#10'where'#13#10'  PT.Fl_Ativa = ''''1'''' and'#13#10'  ('#13#10'  PT.Dt_Termino is null or'#13#10'  PT.Dt_Termino < :Dt_Atual'#13#10'  )'#13#10#13#10'order by'#13#10'  PT.Cd_Tabela, PP.Cd_Produto'
    Parameters = <
      item
        Name = 'Dt_Atual'
        Attributes = [paNullable]
        DataType = ftDateTime
        Precision = 16
        Size = 16
        Value = nil?
      end>
    Left = 153
    Top = 240
    object ADODsPrecoCd_Tabela: TStringField
      FieldName = 'Cd_Tabela'
      Size = 10
    end
    object ADODsPrecoCd_Produto: TIntegerField
      FieldName = 'Cd_Produto'
    end
    object ADODsPrecoVl_Venda: TBCDField
      FieldName = 'Vl_Venda'
      Precision = 12
      Size = 3
    end
  end
  object ADODsCondicao: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'select 1 as Cd_Condicao, ''''A Vista'''' as Ds_Condicao'#13#10'union'#13#10'select 2 as Cd_Condicao, ''''A Prazo'''' as Ds_Condicao'#13#10'union'#13#10'select 3 as Cd_Condicao, ''''Cart'#227'o'''' as Ds_Condicao'#13#10'union'#13#10'select 4 as Cd_Condicao, ''''Cheque'''' as Ds_Condicao'
    Parameters = <>
    Left = 216
    Top = 240
    object ADODsCondicaoCd_Condicao: TIntegerField
      FieldName = 'Cd_Condicao'
      ReadOnly = True
    end
    object ADODsCondicaoDs_Condicao: TStringField
      FieldName = 'Ds_Condicao'
      ReadOnly = True
      Size = 7
    end
  end
  object ADODsForma: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'select 1 as Cd_Forma, ''''Dinheiro'''' as Ds_Condicao, ''''D'''' as Fl_Tipo,  0 as Nr_Parcela, ''''V'''' as Fl_Condicao, '''' '''' as Fl_Gerenciador, ''''A'''' as Fl_Ativo, 100.0 as Vl_Limite'#13#10'union'#13#10'select 2 as Cd_Forma, ''''Cheque''''   as Ds_Condicao, ''''C'''' as Fl_Tipo, 72 as Nr_Parcela, ''''P'''' as Fl_Condicao, '''' '''' as Fl_Gerenciador, ''''A'''' as Fl_Ativo, 0.0   as Vl_Limite'#13#10'union'#13#10'select 3 as Cd_Forma, ''''Cart'#227'o''''   as Ds_Condicao, ''''T'''' as Fl_Tipo,  0 as Nr_Parcela, ''''P'''' as Fl_Condicao, ''''T'''' as Fl_Gerenciador, ''''A'''' as Fl_Ativo, 0.0   as Vl_Limite'#13#10'union'#13#10'select 4 as Cd_Forma, ''''Carteira'''' as Ds_Condicao, ''''E'''' as Fl_Tipo, 72 as Nr_Parcela, ''''P'''' as Fl_Condicao, '''' '''' as Fl_Gerenciador, ''''A'''' as Fl_Ativo, 0.0   as Vl_Limite'#13#10'union'#13#10'select 5 as Cd_Forma, ''''Troco'''' as Ds_Condicao, ''''X'''' as Fl_Tipo, 0 as Nr_Parcela, ''''V'''' as Fl_Condicao, '''' '''' as Fl_Gerenciador, ''''A'''' as Fl_Ativo, 100.0   as Vl_Limite'#13#10
    Parameters = <>
    Left = 184
    Top = 240
    object ADODsFormaCd_Forma: TIntegerField
      FieldName = 'Cd_Forma'
      ReadOnly = True
    end
    object ADODsFormaDs_Condicao: TStringField
      FieldName = 'Ds_Condicao'
      ReadOnly = True
      Size = 8
    end
    object ADODsFormaFl_Tipo: TStringField
      FieldName = 'Fl_Tipo'
      ReadOnly = True
      Size = 1
    end
    object ADODsFormaNr_Parcela: TIntegerField
      FieldName = 'Nr_Parcela'
      ReadOnly = True
    end
    object ADODsFormaFl_Condicao: TStringField
      FieldName = 'Fl_Condicao'
      ReadOnly = True
      Size = 1
    end
    object ADODsFormaFl_Gerenciador: TStringField
      FieldName = 'Fl_Gerenciador'
      ReadOnly = True
      Size = 1
    end
    object ADODsFormaFl_Ativo: TStringField
      FieldName = 'Fl_Ativo'
      ReadOnly = True
      Size = 1
    end
    object ADODsFormaVl_Limite: TBCDField
      FieldName = 'Vl_Limite'
      ReadOnly = True
      Precision = 4
      Size = 1
    end
  end
end
