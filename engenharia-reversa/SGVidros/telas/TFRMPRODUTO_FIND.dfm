object FrmProduto_Find: TFrmProduto_Find
  Left = 210
  Top = 203
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Consulta de Produto'
  ClientHeight = 428
  ClientWidth = 840
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 21
    Height = 428
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 819
    Height = 428
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 2
      Top = 396
      Width = 810
      Height = 5
      Shape = bsTopLine
    end
    object Label2: TLabel
      Left = 3
      Top = 69
      Width = 110
      Height = 13
      Caption = 'Registros Encontrados:'
    end
    object DbTxtProduto: TDBText
      Left = 5
      Top = 405
      Width = 66
      Height = 13
      AutoSize = True
      DataField = 'Nm_Produto'
      DataSource = DsFind
    end
    object Label1: TLabel
      Left = 5
      Top = 2
      Width = 86
      Height = 13
      Caption = 'Nome do Produto:'
    end
    object Label4: TLabel
      Left = 386
      Top = 3
      Width = 36
      Height = 13
      Caption = 'C'#243'digo:'
    end
    object SbGrupoFind: TSpeedButton
      Left = 45
      Top = 49
      Width = 23
      Height = 19
      Hint = 'Seleciona Grupo de Emitente'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbGrupoFindClick
    end
    object Label10: TLabel
      Left = 4
      Top = 35
      Width = 32
      Height = 13
      Caption = 'Grupo:'
    end
    object SbLocalFind: TSpeedButton
      Left = 307
      Top = 49
      Width = 23
      Height = 19
      Hint = 'Seleciona Localiza'#231#227'o'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbLocalFindClick
    end
    object Label6: TLabel
      Left = 267
      Top = 35
      Width = 60
      Height = 13
      Caption = 'Localiza'#231#227'o:'
    end
    object Label3: TLabel
      Left = 474
      Top = 3
      Width = 101
      Height = 13
      Caption = 'C'#243'digo do Fabricante'
    end
    object Label5: TLabel
      Left = 599
      Top = 3
      Width = 84
      Height = 13
      Caption = 'C'#243'digo de Barras:'
    end
    object Label28: TLabel
      Left = 478
      Top = 35
      Width = 111
      Height = 13
      Caption = 'Laborat'#243'rio/Fabricante:'
    end
    object SbLabFind: TSpeedButton
      Left = 528
      Top = 49
      Width = 23
      Height = 19
      Hint = 'Seleciona Laborat'#243'rio/Fabricante'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbLabFindClick
    end
    object BitBtnConfirm: TBitBtn
      Left = 642
      Top = 399
      Width = 87
      Height = 27
      Caption = 'C&onfirmar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 482 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 730
      Top = 399
      Width = 87
      Height = 27
      Cancel = True
      Caption = '&Cancelar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ModalResult = 2
      ParentFont = False
      TabOrder = 12
      Glyph.Data = {binary 482 bytes}
      NumGlyphs = 2
    end
    object DbGFind: TDBGrid
      Left = 3
      Top = 84
      Width = 807
      Height = 309
      DataSource = DsFind
      FixedColor = clSilver
      Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 10
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = BitBtnConfirmClick
      OnEnter = DbGFindEnter
      OnExit = DbGFindExit
      OnKeyPress = DbGFindKeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'cd_produto'
          Width = 63
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nm_Produto'
          Width = 387
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nm_laboratorio'
          Width = 169
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cd_barra'
          Width = 88
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Dp_Ativo'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'vl_unitario'
          Title.Alignment = taRightJustify
          Width = 52
          Visible = True
        end>
    end
    object CkBContendo: TCheckBox
      Left = 749
      Top = 1
      Width = 68
      Height = 17
      TabStop = False
      Caption = 'Conten&do'
      Checked = True
      State = cbChecked
      TabOrder = 13
    end
    object EdtNm_ProdutoFind: TEdit
      Tag = 1
      Left = 5
      Top = 16
      Width = 378
      Height = 19
      Ctl3D = False
      MaxLength = 120
      ParentCtl3D = False
      TabOrder = 0
      OnDblClick = EdtNm_ProdutoFindDblClick
      OnKeyPress = EdtNm_ProdutoFindKeyPress
    end
    object EdtCd_ProdutoFind: TCurrencyEdit
      Tag = 2
      Left = 386
      Top = 16
      Width = 85
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      Ctl3D = False
      DecimalPlaces = 0
      DisplayFormat = '###'
      ParentCtl3D = False
      TabOrder = 1
      OnDblClick = EdtNm_ProdutoFindDblClick
      OnKeyPress = EdtNm_ProdutoFindKeyPress
    end
    object EdtNm_GrupoFind: TEdit
      Left = 69
      Top = 49
      Width = 195
      Height = 19
      TabStop = False
      Color = clSilver
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 30
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 5
    end
    object EdtCd_GrupoFind: TCurrencyEdit
      Tag = 5
      Left = 4
      Top = 49
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      Ctl3D = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      ParentCtl3D = False
      TabOrder = 4
      OnDblClick = EdtNm_ProdutoFindDblClick
      OnExit = EdtCd_GrupoFindExit
      OnKeyDown = EdtCd_GrupoFindKeyDown
      OnKeyPress = EdtNm_ProdutoFindKeyPress
    end
    object EdtDs_LocalFind: TEdit
      Left = 331
      Top = 49
      Width = 144
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
      TabOrder = 7
    end
    object EdtCd_LocalFind: TCurrencyEdit
      Tag = 6
      Left = 267
      Top = 49
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 6
      OnDblClick = EdtNm_ProdutoFindDblClick
      OnExit = EdtCd_LocalFindExit
      OnKeyDown = EdtCd_GrupoFindKeyDown
      OnKeyPress = EdtNm_ProdutoFindKeyPress
    end
    object EdtCd_FabricanteFind: TEdit
      Tag = 3
      Left = 474
      Top = 16
      Width = 120
      Height = 19
      Ctl3D = False
      MaxLength = 20
      ParentCtl3D = False
      TabOrder = 2
      OnDblClick = EdtNm_ProdutoFindDblClick
      OnKeyPress = EdtNm_ProdutoFindKeyPress
    end
    object EdtCd_BarraFind: TEdit
      Tag = 4
      Left = 599
      Top = 16
      Width = 120
      Height = 19
      Ctl3D = False
      MaxLength = 20
      ParentCtl3D = False
      TabOrder = 3
      OnDblClick = EdtNm_ProdutoFindDblClick
      OnKeyPress = EdtNm_ProdutoFindKeyPress
    end
    object EdtCd_Laboratorio: TCurrencyEdit
      Tag = 7
      Left = 480
      Top = 49
      Width = 50
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 8
      OnDblClick = EdtNm_ProdutoFindDblClick
      OnExit = EdtCd_LaboratorioExit
      OnKeyDown = EdtCd_GrupoFindKeyDown
      OnKeyPress = EdtNm_ProdutoFindKeyPress
    end
    object EdtNm_Laboratorio: TEdit
      Left = 551
      Top = 49
      Width = 202
      Height = 19
      TabStop = False
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 50
      ParentFont = False
      ReadOnly = True
      TabOrder = 9
    end
  end
  object DsFind: TDataSource
    DataSet = ADODsFind
    Left = 61
    Top = 327
  end
  object ADODsFind: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  A.Cd_Produto, A.Nm_Produto, A.Sg_Estoque, A.Nr_Sequencia, A.Cd_ClasFiscal, A.Cd_Barra,'#13#10'  A.Fl_Ativo, E.Nm_Emitente,A.Cd_Laboratorio,L.Nm_Laboratorio,'#13#10'  case'#13#10'    when PP.Vl_Promocao > 0 then PP.Vl_Promocao'#13#10'    else PP.Vl_Venda'#13#10'  end * PU.Nr_Fator as Vl_Unitario,'#13#10'  case when A.Fl_Ativo = ''''1'''' then ''''Sim'''' end as Dp_Ativo'#13#10#13#10'from'#13#10'  Produto A'#13#10#13#10'left join'#13#10' Laboratorio L'#13#10'on'#13#10'  L.Cd_Laboratorio  = A.Cd_Laboratorio'#13#10#13#10'left join'#13#10'  Produto_Preco PP'#13#10'on'#13#10'  PP.Cd_Tabela  = :Cd_Tabela and'#13#10'  PP.Cd_Produto = A.Cd_Produto'#13#10#13#10'left join'#13#10'  Produto_Unidade PU'#13#10'on'#13#10'  PU.Cd_Produto = A.Cd_Produto and'#13#10'  PU.Sg_Unidade = A.Sg_Venda'#13#10#13#10'left join'#13#10'  Emitente E'#13#10'on'#13#10'  E.Cd_Emitente = A.Cd_Emitente'#13#10#13#10'where'#13#10'  A.Nm_Produto like :Find'#13#10#13#10'order by'#13#10'  A.Nm_Produto'
    Parameters = <
      item
        Name = 'Cd_Tabela'
        DataType = ftString
        Size = 1
        Value = ' '
      end
      item
        Name = 'Find'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 80
        Value = '%'
      end>
    SQLOther0.Strings = (
      'select'
      '  A.Cd_Produto, A.Nm_Produto, A.Sg_Estoque, A.Nr_Sequencia, A.Cd_ClasFiscal, A.Cd_Barra,'
      '  A.Fl_Ativo, E.Nm_Emitente,A.Cd_Laboratorio,L.Nm_Laboratorio,'
      '  case'
      '    when PP.Vl_Promocao > 0 then PP.Vl_Promocao'
      '    else PP.Vl_Venda'
      '  end * PU.Nr_Fator as Vl_Unitario,'
      '  case when A.Fl_Ativo = ''''1'''' then ''''Sim'''' end as Dp_Ativo'
      ''
      'from'
      '  Produto A'
      ''
      'left join'
      ' Laboratorio L'
      'on'
      '  L.Cd_Laboratorio  = A.Cd_Laboratorio'
      ''
      'left join'
      '  Produto_Preco PP'
      'on'
      '  PP.Cd_Tabela  = :Cd_Tabela and'
      '  PP.Cd_Produto = A.Cd_Produto'
      ''
      'left join'
      '  Produto_Unidade PU'
      'on'
      '  PU.Cd_Produto = A.Cd_Produto and'
      '  PU.Sg_Unidade = A.Sg_Venda'
      ''
      'left join'
      '  Emitente E'
      'on'
      '  E.Cd_Emitente = A.Cd_Emitente'
      ''
      'where'
      '  /* Fl_Ativo */'
      '  /* Nm_Produto */'
      '  /* Cd_Produto */'
      '  /* Fl_Produto */'
      '  /* Cd_Fabricante */'
      '  /* Cd_Barra */'
      '  /* Cd_Grupo */'
      '  /* Cd_Localizacao */'
      '  /* Cd_Laboratorio */'
      ''
      'order by'
      '  /* Ordem */'
    )
    Left = 91
    Top = 327
    object ADODsFindNm_Produto: TStringField
      DisplayLabel = 'Nome do Produto'
      FieldName = 'Nm_Produto'
      Size = 120
    end
    object ADODsFindSg_Estoque: TStringField
      DisplayLabel = 'Unidade de Estoque'
      FieldName = 'Sg_Estoque'
      Size = 2
    end
    object ADODsFindNr_Sequencia: TSmallintField
      FieldName = 'Nr_Sequencia'
    end
    object ADODsFindCd_ClasFiscal: TStringField
      DisplayLabel = 'Classifica'#231#227'o Fiscal'
      FieldName = 'Cd_ClasFiscal'
      EditMask = '####.##.####;0; '
      Size = 10
    end
    object ADODsFindFl_Ativo: TStringField
      FieldName = 'Fl_Ativo'
      FixedChar = True
      Size = 1
    end
    object ADODsFindDp_Ativo: TStringField
      DisplayLabel = 'Ativo'
      FieldName = 'Dp_Ativo'
      ReadOnly = True
      Size = 3
    end
    object ADODsFindcd_produto: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'cd_produto'
    end
    object ADODsFindnm_emitente: TStringField
      DisplayLabel = 'Fornecedor'
      FieldName = 'nm_emitente'
      Size = 50
    end
    object ADODsFindvl_unitario: TBCDField
      DisplayLabel = 'Pre'#231'o'
      FieldName = 'vl_unitario'
      DisplayFormat = '#,##0.00'
      Precision = 28
      Size = 6
    end
    object ADODsFindcd_barra: TStringField
      DisplayLabel = 'C'#243'digo de Barras'
      FieldName = 'cd_barra'
    end
    object ADODsFindnm_laboratorio: TStringField
      DisplayLabel = 'Laborat'#243'rio/Fabricante'
      FieldName = 'nm_laboratorio'
      Size = 50
    end
  end
end
