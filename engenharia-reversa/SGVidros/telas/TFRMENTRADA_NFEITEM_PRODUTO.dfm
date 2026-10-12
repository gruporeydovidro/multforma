object FrmEntrada_NFeItem_Produto: TFrmEntrada_NFeItem_Produto
  Left = 294
  Top = 173
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Cadastro R'#225'pido de Produto'
  ClientHeight = 375
  ClientWidth = 688
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
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 21
    Height = 375
    Align = alLeft
    TabOrder = 0
    ExplicitHeight = 470
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 667
    Height = 375
    Align = alClient
    ParentColor = True
    TabOrder = 1
    ExplicitLeft = 27
    ExplicitWidth = 857
    ExplicitHeight = 486
    object BvlSeparator: TBevel
      Left = 6
      Top = 345
      Width = 651
      Height = 5
      Shape = bsTopLine
    end
    object Label1: TLabel
      Left = 5
      Top = 3
      Width = 36
      Height = 13
      Caption = 'C'#243'digo:'
    end
    object Label2: TLabel
      Left = 514
      Top = 38
      Width = 54
      Height = 13
      Caption = 'Sequ'#234'ncia:'
    end
    object SbGrupo: TSpeedButton
      Left = 45
      Top = 55
      Width = 23
      Height = 19
      Hint = 'Consulta de Grupo'
      Flat = True
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
      OnClick = SbGrupoClick
    end
    object Label3: TLabel
      Left = 5
      Top = 40
      Width = 172
      Height = 13
      Caption = 'Estrutura (Grupo/SubGrupo/Classe):'
    end
    object SbSubGrupo: TSpeedButton
      Left = 109
      Top = 55
      Width = 23
      Height = 19
      Hint = 'Consulta de SubGrupo'
      Flat = True
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
      OnClick = SbSubGrupoClick
    end
    object SbClasse: TSpeedButton
      Left = 173
      Top = 55
      Width = 23
      Height = 19
      Hint = 'Consulta de Classe'
      Flat = True
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
      OnClick = SbClasseClick
    end
    object SbLocalizacao: TSpeedButton
      Left = 45
      Top = 139
      Width = 23
      Height = 19
      Hint = 'Seleciona a Localiza'#231#227'o'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbLocalizacaoClick
    end
    object Label4: TLabel
      Left = 5
      Top = 124
      Width = 60
      Height = 13
      Caption = 'Localiza'#231#227'o:'
    end
    object Label27: TLabel
      Left = 382
      Top = 124
      Width = 94
      Height = 13
      Caption = 'Class. Fiscal (NCM):'
    end
    object Label6: TLabel
      Left = 5
      Top = 197
      Width = 100
      Height = 13
      Caption = 'Unidade de Estoque:'
    end
    object Label22: TLabel
      Left = 179
      Top = 197
      Width = 27
      Height = 13
      Caption = 'Peso:'
    end
    object Label21: TLabel
      Left = 242
      Top = 197
      Width = 16
      Height = 13
      Caption = 'IPI:'
    end
    object Label25: TLabel
      Left = 332
      Top = 197
      Width = 48
      Height = 13
      Caption = 'Comiss'#227'o:'
    end
    object Label26: TLabel
      Left = 287
      Top = 197
      Width = 30
      Height = 13
      Caption = 'Lucro:'
    end
    object SbTributacao: TSpeedButton
      Left = 44
      Top = 175
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
    object Label7: TLabel
      Left = 5
      Top = 160
      Width = 175
      Height = 13
      Caption = 'Tributa'#231#227'o (ST - Situa'#231#227'o Tribut'#225'ria):'
    end
    object Label11: TLabel
      Left = 383
      Top = 197
      Width = 68
      Height = 13
      Caption = 'Mg Libera'#231#227'o:'
    end
    object Label32: TLabel
      Left = 479
      Top = 124
      Width = 31
      Height = 13
      Caption = 'CEST:'
    end
    object LblCusto: TLabel
      Left = 5
      Top = 294
      Width = 30
      Height = 13
      Caption = 'Custo:'
    end
    object Label13: TLabel
      Left = 176
      Top = 294
      Width = 34
      Height = 13
      Caption = 'Venda:'
    end
    object Label31: TLabel
      Left = 91
      Top = 294
      Width = 54
      Height = 13
      Caption = 'Reposi'#231#227'o:'
    end
    object LblTabela: TLabel
      Left = 5
      Top = 281
      Width = 105
      Height = 13
      Caption = 'Tabela de Pre'#231'os:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label19: TLabel
      Left = 5
      Top = 235
      Width = 91
      Height = 13
      Caption = 'Origem do Produto:'
    end
    object BitBtnConfirm: TBitBtn
      Left = 493
      Top = 348
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 26
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 579
      Top = 348
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 27
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object EdtCd_Produto: TCurrencyEdit
      Left = 5
      Top = 18
      Width = 100
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      TabStop = False
      AutoSize = False
      Color = clSilver
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxValue = 2147483647.0
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object EdtNr_Sequencia: TCurrencyEdit
      Left = 514
      Top = 54
      Width = 60
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '###'
      TabOrder = 6
    end
    object MmEstrutura: TMemo
      Left = 5
      Top = 75
      Width = 476
      Height = 46
      TabStop = False
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Lines.Strings = (
        'Grupo'
        'SubGrupo'
        'Classe'
      )
      ParentFont = False
      ReadOnly = True
      TabOrder = 7
    end
    object EdtCd_Grupo: TCurrencyEdit
      Tag = 1
      Left = 5
      Top = 55
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 2
      OnExit = EdtCd_GrupoExit
      OnKeyDown = EdtCd_GrupoKeyDown
    end
    object EdtCd_SubGrupo: TCurrencyEdit
      Tag = 2
      Left = 69
      Top = 55
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 3
      OnExit = EdtCd_SubGrupoExit
      OnKeyDown = EdtCd_GrupoKeyDown
    end
    object EdtCd_Classe: TCurrencyEdit
      Tag = 3
      Left = 133
      Top = 55
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 4
      OnExit = EdtCd_ClasseExit
      OnKeyDown = EdtCd_GrupoKeyDown
    end
    object EdtNm_Produto: TLabeledEdit
      Left = 107
      Top = 18
      Width = 427
      Height = 19
      EditLabel.Width = 86
      EditLabel.Height = 13
      EditLabel.Caption = 'Nome do Produto:'
      LabelSpacing = 2
      MaxLength = 120
      TabOrder = 1
    end
    object EdtCd_Localizacao: TCurrencyEdit
      Tag = 4
      Left = 5
      Top = 139
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 8
      OnExit = EdtCd_LocalizacaoExit
      OnKeyDown = EdtCd_GrupoKeyDown
    end
    object EdtDs_Localizacao: TEdit
      Left = 68
      Top = 139
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
    object EdtCd_ClasFiscal: TMaskEdit
      Left = 382
      Top = 139
      Width = 86
      Height = 19
      AutoSize = False
      CharCase = ecUpperCase
      EditMask = '##.####.##;0; '
      MaxLength = 10
      TabOrder = 10
    end
    object CbEstoque: TComboBox
      Left = 5
      Top = 211
      Width = 170
      Height = 21
      Style = csDropDownList
      Ctl3D = True
      DropDownCount = 20
      ItemHeight = 13
      ItemIndex = 0
      ParentCtl3D = False
      TabOrder = 14
      Text = 'MT - Metro'
      Items.Strings = (
        'MT - Metro'
        'PC - Pe'#231'a'
        'UN - Unidade'
      )
    end
    object EdtPs_Produto: TCurrencyEdit
      Left = 179
      Top = 211
      Width = 60
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      Ctl3D = False
      DecimalPlaces = 3
      DisplayFormat = '#,##0.0##'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 15
    end
    object EdtPr_IPI: TCurrencyEdit
      Left = 242
      Top = 211
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      Ctl3D = False
      DisplayFormat = '#,##0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 16
    end
    object EdtNm_Abreviado: TLabeledEdit
      Left = 201
      Top = 55
      Width = 308
      Height = 19
      EditLabel.Width = 157
      EditLabel.Height = 13
      EditLabel.Caption = 'Nome Abreviado (PDV, ECF etc):'
      LabelSpacing = 2
      MaxLength = 40
      TabOrder = 5
    end
    object EdtPr_Comissao: TCurrencyEdit
      Left = 332
      Top = 211
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      Ctl3D = False
      DisplayFormat = '#,##0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 18
    end
    object EdtPr_Lucro: TCurrencyEdit
      Left = 287
      Top = 211
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      Ctl3D = False
      DisplayFormat = '#,##0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 17
    end
    object EdtCd_Tributacao: TCurrencyEdit
      Tag = 6
      Left = 5
      Top = 175
      Width = 39
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 12
      OnExit = EdtCd_TributacaoExit
      OnKeyDown = EdtCd_GrupoKeyDown
    end
    object EdtDs_Tributacao: TEdit
      Left = 67
      Top = 175
      Width = 308
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
      TabOrder = 13
    end
    object EdtrPr_Vendedor: TCurrencyEdit
      Left = 383
      Top = 211
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      Ctl3D = False
      DecimalPlaces = 3
      DisplayFormat = '#,##0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 20
    end
    object EdtCd_CEST: TMaskEdit
      Left = 479
      Top = 139
      Width = 54
      Height = 19
      AutoSize = False
      CharCase = ecUpperCase
      EditMask = '#######;0; '
      MaxLength = 7
      TabOrder = 11
    end
    object EdtCd_Fabricante: TLabeledEdit
      Left = 266
      Top = 251
      Width = 170
      Height = 19
      EditLabel.Width = 161
      EditLabel.Height = 13
      EditLabel.Caption = 'C'#243'digo do Fabricante/Distribuidor:'
      LabelSpacing = 2
      MaxLength = 20
      TabOrder = 21
    end
    object EdtVl_Custo: TCurrencyEdit
      Tag = 1
      Left = 5
      Top = 308
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      Ctl3D = False
      DecimalPlaces = 5
      DisplayFormat = '#,##0.00###'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 23
    end
    object EdtVl_Venda: TCurrencyEdit
      Tag = 3
      Left = 176
      Top = 308
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      Ctl3D = False
      DecimalPlaces = 5
      DisplayFormat = '#,##0.00###'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 25
    end
    object EdtVl_Reposicao: TCurrencyEdit
      Tag = 2
      Left = 91
      Top = 308
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      Ctl3D = False
      DecimalPlaces = 5
      DisplayFormat = '#,##0.00###'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 24
    end
    object EdtCd_Barra: TLabeledEdit
      Left = 441
      Top = 251
      Width = 170
      Height = 19
      EditLabel.Width = 167
      EditLabel.Height = 13
      EditLabel.Caption = 'C'#243'digo de Barras (GTIN / EAN 13):'
      LabelSpacing = 2
      MaxLength = 20
      TabOrder = 22
    end
    object CbOrigem: TComboBox
      Left = 5
      Top = 251
      Width = 259
      Height = 21
      Style = csDropDownList
      Ctl3D = True
      DropDownCount = 15
      ItemHeight = 13
      ParentCtl3D = False
      TabOrder = 19
      Items.Strings = (
        'Nacional'
        'Importa'#231#227'o Direta'
        'Importado Adquirida no Brasil'
        'Nacional importa'#231#227'o superior a 40% e <= 70%'
        'Nacional produ'#231#227'o em conformidade nos Ajustes'
        'Nacional conte'#250'do importado <= 40%'
        'Estrangeira Sem similar'
        'Estrangeira adquirida no Brasil sem similar'
        'Nacional com conte'#250'do de importa'#231#227'o > 70%'
      )
    end
  end
  object ADODsProduto: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = '-- ------------ Sequencia'#13#10'select top 1'#13#10'  max( A.Nr_Sequencia ) as Cd_Produto'#13#10#13#10'from'#13#10'  Produto A'
    Parameters = <>
    SQLPrimary.Strings = (
      '-- ------------ C'#243'digo do Produto'
      'select top 1'
      '  A.Cd_Produto + 1 as Cd_Produto'
      ''
      'from'
      '  Produto A'
      ''
      'where'
      '  not exists( '
      '  select'
      '    B.Cd_Produto'
      ''
      '  from'
      '    Produto  B'
      ''
      '  where'
      '    B.Cd_Produto = A.Cd_Produto + 1'
      '  )'
      ''
      'order by'
      '  A.Cd_Produto'
    )
    SQLOther0.Strings = (
      '-- ------------ Sequencia'
      'select top 1'
      '  max( A.Nr_Sequencia ) as Cd_Produto'
      ''
      'from'
      '  Produto A'
    )
    Left = 576
    Top = 200
    object ADODsProdutoCd_Produto: TIntegerField
      FieldName = 'Cd_Produto'
      ReadOnly = True
    end
  end
  object ADOCmdProduto: TMultADOCMD
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLInsert.Strings = (
      'insert into produto( cd_produto, nm_produto, fl_estrutura, nr_sequencia, cd_grupo,'
      '   cd_subgrupo, cd_classe, cd_localizacao, cd_clasfiscal,'
      '   nr_prazo, sg_estoque, sg_venda, fl_ativo, pr_gerente, pr_vendedor, ps_produto,'
      '   qt_est_minimo, qt_est_maximo, dt_cadastro, dt_alteracao, pr_ipi, im_produto,'
      '   fl_imgclasse, Tp_Preco, Cd_Fabricante, Cd_Barra, Fl_Origem, Nr_Reg_Federal,'
      '   Fl_Psicotropico, Fl_Lote, Nm_Abreviado, Fl_Produto, Pr_Lucro, Pr_Comissao,'
      '   Cd_Laboratorio, Cd_Tributacao, Fl_Perecivel, Cd_Arredondamento,'
      '   Nr_MoldEspessura, Nr_MoldPerda, Vl_MVA, Cd_Baixa, Cd_CEST, Cd_cProdANP, Ds_DescANP )'
      'values( :cd_produto, :nm_produto, :fl_estrutura, :nr_sequencia, :cd_grupo,'
      '   :cd_subgrupo, :cd_classe, :cd_localizacao, :cd_clasfiscal,'
      '   :nr_prazo, :sg_estoque, :sg_venda, :fl_ativo, :pr_gerente, :pr_vendedor, :ps_produto,'
      '   :qt_est_minimo, :qt_est_maximo, :dt_cadastro, :dt_alteracao, :pr_ipi, :im_produto,'
      '   :fl_imgclasse, :Tp_Preco, :Cd_Fabricante, :Cd_Barra, :Fl_Origem, :Nr_Reg_Federal,'
      '   :Fl_Psicotropico, :Fl_Lote, :Nm_Abreviado, :Fl_Produto, :Pr_Lucro, :Pr_Comissao,'
      '   :Cd_Laboratorio, :Cd_Tributacao, :Fl_Perecivel, :Cd_Arredondamento,'
      '   :Nr_MoldEspessura, :Nr_MoldPerda, :Vl_MVA, :Cd_Baixa, :Cd_CEST, :Cd_cProdANP, :Ds_DescANP )'
      ''
    )
    SQLOther0.Strings = (
      '-- Inclui a Unidade padr'#227'o'
      'insert into Produto_Unidade( Cd_Produto, Sg_Unidade, Nr_Fator, Nr_Indice )'
      'values( :Cd_Produto, :Sg_Unidade, 1.0, 1.0 )'
    )
    SQLOther1.Strings = (
      '-- Insere produto na tabela de pre'#231'o'
      'insert into Produto_Preco( Cd_Tabela, Cd_Produto, Vl_Venda, Vl_Custo,'
      '   Vl_Promocao, Vl_Reposicao, Dt_Alteracao )'
      'values( :Cd_Tabela, :Cd_Produto, :Vl_Venda, :Vl_Custo, :Vl_Promocao,'
      '   :Vl_Reposicao, :Dt_Alteracao )'
    )
    Left = 608
    Top = 200
  end
end
