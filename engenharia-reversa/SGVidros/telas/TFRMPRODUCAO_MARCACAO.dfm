object FrmProducao_Marcacao: TFrmProducao_Marcacao
  Left = 294
  Top = 173
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Marca'#231#227'o por Setor'
  ClientHeight = 461
  ClientWidth = 846
  Color = clWhite
  Ctl3D = False
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 21
    Height = 461
    Align = alLeft
    TabOrder = 0
    ExplicitHeight = 554
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 825
    Height = 461
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = True
    ParentFont = False
    TabOrder = 1
    ExplicitWidth = 880
    ExplicitHeight = 554
    object Label3: TLabel
      Left = 163
      Top = 1
      Width = 35
      Height = 16
      Caption = 'Setor:'
    end
    object SbSetor: TSpeedButton
      Left = 437
      Top = 18
      Width = 23
      Height = 24
      Hint = 'Seleciona o Setor'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbSetorClick
    end
    object Label1: TLabel
      Left = 465
      Top = 1
      Width = 73
      Height = 16
      Caption = 'Funcion'#225'rio:'
    end
    object SbFuncionario: TSpeedButton
      Left = 505
      Top = 18
      Width = 23
      Height = 24
      Hint = 'Seleciona Vendedor'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbFuncionarioClick
    end
    object Label2: TLabel
      Left = 3
      Top = 45
      Width = 109
      Height = 16
      Caption = 'C'#243'digo de Barras:'
    end
    object Label4: TLabel
      Left = 316
      Top = 45
      Width = 44
      Height = 16
      Caption = 'Cliente:'
    end
    object Label5: TLabel
      Left = 3
      Top = 1
      Width = 62
      Height = 16
      Caption = 'Produ'#231#227'o:'
    end
    object LblTermino: TLabel
      Left = 628
      Top = 45
      Width = 140
      Height = 16
      Caption = 'Marcador de finalizado:'
    end
    object SbTermino: TSpeedButton
      Left = 668
      Top = 61
      Width = 23
      Height = 24
      Hint = 'Seleciona marcador'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
    end
    object SbPronto: TSpeedButton
      Left = 694
      Top = 61
      Width = 86
      Height = 24
      Hint = 'Imprimir Produto Acabado'
      Caption = '&Imprimir'
      Flat = True
      Glyph.Data = {binary 250 bytes}
      ParentShowHint = False
      ShowHint = True
      OnClick = SbProntoClick
    end
    object Label6: TLabel
      Left = 734
      Top = 1
      Width = 60
      Height = 16
      Caption = 'Ajuste (%)'
    end
    object EdtCd_Funcionario: TCurrencyEdit
      Tag = 2
      Left = 465
      Top = 18
      Width = 40
      Height = 24
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 2
      OnExit = EdtCd_FuncionarioExit
      OnKeyDown = EdtCd_SetorKeyDown
    end
    object EdtNm_Funcionario: TEdit
      Left = 529
      Top = 18
      Width = 200
      Height = 24
      TabStop = False
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 30
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
    end
    object EdtCd_Barra: TEdit
      Left = 3
      Top = 61
      Width = 142
      Height = 24
      TabOrder = 5
      OnEnter = EdtCd_BarraEnter
      OnExit = EdtCd_BarraExit
      OnKeyPress = EdtCd_BarraKeyPress
      OnKeyUp = EdtCd_BarraKeyUp
    end
    object BitBtnDefeito: TBitBtn
      Left = 231
      Top = 61
      Width = 79
      Height = 24
      Caption = '&Defeito'
      Enabled = False
      TabOrder = 7
      OnClick = BitBtnDefeitoClick
      Glyph.Data = {binary 2170 bytes}
      NumGlyphs = 2
    end
    object BitBtnPronto: TBitBtn
      Left = 149
      Top = 61
      Width = 79
      Height = 24
      Caption = '&Pronto'
      Enabled = False
      TabOrder = 6
      OnClick = BitBtnProntoClick
      Glyph.Data = {binary 3130 bytes}
      NumGlyphs = 2
    end
    object EdtNm_Emitente: TEdit
      Left = 316
      Top = 61
      Width = 308
      Height = 24
      TabStop = False
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 30
      ParentFont = False
      ReadOnly = True
      TabOrder = 8
    end
    object CbProducao: TComboBox
      Left = 3
      Top = 18
      Width = 158
      Height = 24
      Style = csDropDownList
      ItemHeight = 16
      ItemIndex = 1
      TabOrder = 0
      Text = 'Processo Finalizado'
      OnChange = CbProducaoChange
      Items.Strings = (
        'Inicio do Processo'
        'Processo Finalizado'
      )
    end
    object EdtId_Termino: TCurrencyEdit
      Tag = 2
      Left = 628
      Top = 61
      Width = 40
      Height = 24
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 9
      OnExit = EdtCd_FuncionarioExit
      OnKeyDown = EdtCd_SetorKeyDown
    end
    object EdtPr_Image: TCurrencyEdit
      Left = 733
      Top = 18
      Width = 40
      Height = 24
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DisplayFormat = '#,##0.00'
      TabOrder = 4
      OnChange = EdtPr_ImageChange
    end
    object ScrBxImg: TScrollBox
      Left = 3
      Top = 92
      Width = 744
      Height = 363
      TabOrder = 10
      object ImgItem: TImage
        Left = 1
        Top = 0
        Width = 740
        Height = 360
        Center = True
      end
      object LblDetalhamento: TLabel
        Left = 3
        Top = 0
        Width = 183
        Height = 20
        Caption = 'Detalhamento da pe'#231'a'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object CbSetor: TbctComboBox
      Left = 161
      Top = 18
      Width = 278
      Height = 24
      Style = csDropDownList
      DropDownCount = 20
      ItemHeight = 16
      TabOrder = 1
      Value = '-1'
    end
  end
  object ADODsItem: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'select'#13#10'  PRI.Cd_Filial, PRI.Nr_Producao, PRI.Id_Producao, PRI.Nr_Orcamento,'#13#10'  PRI.Nr_Item, PRI.Nr_Detalhe, PRI.Nr_Projeto, PRI.Nr_Item_Projeto,'#13#10'  PRI.Cd_Motivo, PS.Cd_Setor, '#13#10#13#10'  OT.Nm_Emitente,'#13#10#13#10'  OI.Im_SubProduto, P.Im_Projeto,'#13#10#13#10'  OI.Fl_Medida, OD.Ds_Detalhe, OD.Nr_Comprimento, OD.Nr_Largura, OD.Nr_Altura,'#13#10#13#10'  OPI.Cd_Peca, PP.Ds_Peca, OPI.Nr_Altura as Nr_Projeto_Altura,'#13#10'  OPI.Nr_Largura as Nr_Projeto_Largura'#13#10#13#10'from'#13#10'  Producao_Item PRI'#13#10#13#10'inner join'#13#10'  Producao_Setor PS'#13#10'on'#13#10'  PS.Cd_Filial    = PRI.Cd_Filial and'#13#10'  PS.Nr_Producao  = PRI.Nr_Producao and'#13#10'  PS.Id_Producao  = PRI.Id_Producao'#13#10#13#10'inner join'#13#10'  Orcamento_Total OT'#13#10'on'#13#10'  OT.Cd_Filial    = PRI.Cd_Filial and'#13#10'  OT.Nr_Orcamento = PRI.Nr_Orcamento'#13#10#13#10'left join'#13#10'  Orcamento_Item OI'#13#10'on'#13#10'  OI.Cd_Filial    = PRI.Cd_Filial and'#13#10'  OI.Nr_Orcamento = PRI.Nr_Orcamento and'#13#10'  OI.Nr_Item      = PRI.Nr_Item'#13#10#13#10'left join'#13#10'  Orcamento_Detalhe OD'#13#10'on'#13#10'  OD.Cd_Filial    = PRI.Cd_Filial and'#13#10'  OD.Nr_Orcamento = PRI.Nr_Orcamento and'#13#10'  OD.Nr_Item      = PRI.Nr_Item and'#13#10'  OD.Nr_Detalhe   = PRI.Nr_Detalhe'#13#10'  '#13#10'left join'#13#10'  Orcamento_Projeto OP'#13#10'on'#13#10'  OP.Cd_Filial    = PRI.Cd_Filial and'#13#10'  OP.Nr_Orcamento = PRI.Nr_Orcamento and'#13#10'  OP.Nr_Projeto   = PRI.Nr_Projeto'#13#10#13#10'left join'#13#10'  Projeto P'#13#10'on'#13#10'  P.Cd_Projeto = OP.Cd_Projeto'#13#10#13#10'left join'#13#10'  Orcamento_Projeto_Item OPI'#13#10'on'#13#10'  OPI.Cd_Filial    = PRI.Cd_Filial and'#13#10'  OPI.Nr_Orcamento = PRI.Nr_Orcamento and'#13#10'  OPI.Nr_Projeto   = PRI.Nr_Projeto and'#13#10'  OPI.Nr_Item      = PRI.Nr_Item_Projeto '#13#10#13#10'left join'#13#10'  Projeto_Peca PP'#13#10'on'#13#10'  PP.Cd_Peca = OPI.Cd_Peca'#13#10#13#10'where'#13#10'  PRI.Cd_Filial   = :Cd_Filial and'#13#10'  PRI.Nr_Producao = :Nr_Producao and'#13#10'  PRI.Id_Producao = :Id_Producao'
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
        Name = 'Nr_Producao'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = nil?
      end
      item
        Name = 'Id_Producao'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = nil?
      end>
    Left = 424
    Top = 40
    object ADODsItemCd_Filial: TSmallintField
      FieldName = 'Cd_Filial'
    end
    object ADODsItemNr_Producao: TIntegerField
      FieldName = 'Nr_Producao'
    end
    object ADODsItemId_Producao: TSmallintField
      FieldName = 'Id_Producao'
    end
    object ADODsItemNr_Orcamento: TIntegerField
      FieldName = 'Nr_Orcamento'
    end
    object ADODsItemNr_Item: TSmallintField
      FieldName = 'Nr_Item'
    end
    object ADODsItemNr_Detalhe: TSmallintField
      FieldName = 'Nr_Detalhe'
    end
    object ADODsItemNr_Projeto: TSmallintField
      FieldName = 'Nr_Projeto'
    end
    object ADODsItemNr_Item_Projeto: TSmallintField
      FieldName = 'Nr_Item_Projeto'
    end
    object ADODsItemNm_Emitente: TStringField
      FieldName = 'Nm_Emitente'
      Size = 50
    end
    object ADODsItemIm_SubProduto: TBlobField
      FieldName = 'Im_SubProduto'
    end
    object ADODsItemIm_Projeto: TBlobField
      FieldName = 'Im_Projeto'
    end
    object ADODsItemCd_Motivo: TSmallintField
      FieldName = 'Cd_Motivo'
    end
    object ADODsItemCd_Setor: TSmallintField
      FieldName = 'Cd_Setor'
    end
    object ADODsItemDs_Detalhe: TStringField
      FieldName = 'Ds_Detalhe'
      Size = 30
    end
    object ADODsItemCd_Peca: TStringField
      FieldName = 'Cd_Peca'
      Size = 10
    end
    object ADODsItemDs_Peca: TStringField
      FieldName = 'Ds_Peca'
      Size = 50
    end
    object ADODsItemNr_Comprimento: TBCDField
      FieldName = 'Nr_Comprimento'
      Precision = 12
    end
    object ADODsItemNr_Largura: TBCDField
      FieldName = 'Nr_Largura'
      Precision = 12
    end
    object ADODsItemNr_Altura: TBCDField
      FieldName = 'Nr_Altura'
      Precision = 12
    end
    object ADODsItemNr_Projeto_Altura: TIntegerField
      FieldName = 'Nr_Projeto_Altura'
    end
    object ADODsItemNr_Projeto_Largura: TIntegerField
      FieldName = 'Nr_Projeto_Largura'
    end
    object ADODsItemFl_Medida: TStringField
      FieldName = 'Fl_Medida'
      FixedChar = True
      Size = 1
    end
  end
  object ADODsMarcador: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'select'#13#10'  Max( Id_Termino ) as Id_Termino'#13#10#13#10'from'#13#10'  Producao_Item'#13#10#13#10'where'#13#10'  Cd_Filial = :Cd_Filial and'#13#10'  Dt_Termino >= :Dt_Start and'#13#10'  Dt_Termino  < :Dt_End'
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
        Name = 'Dt_Start'
        Attributes = [paNullable]
        DataType = ftDateTime
        Precision = 16
        Size = 16
        Value = nil?
      end
      item
        Name = 'Dt_End'
        Attributes = [paNullable]
        DataType = ftDateTime
        Precision = 16
        Size = 16
        Value = nil?
      end>
    Left = 488
    Top = 40
    object ADODsMarcadorId_Termino: TSmallintField
      FieldName = 'Id_Termino'
      ReadOnly = True
    end
  end
  object ADOCmdItem: TMultADOCMD
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLOther0.Strings = (
      '--------------- Marca como iniciado/pronto'
      'update'
      '  Producao_Setor'
      ''
      'set'
      '  Fl_Setor       = :Fl_Setor,'
      '  /* Funcionario */'
      '  /* Data */'
      ''
      'where'
      '  Cd_Filial   = :Cd_Filial and'
      '  Nr_Producao = :Nr_Producao and'
      '  /* Setor */'
      '  Id_Producao = :Id_Producao'
    )
    SQLOther1.Strings = (
      '--------------- Seta a produ'#231#227'o inteira como iniciada'
      'update'
      '  Producao'
      ''
      'set'
      '  Dt_Inicio   = :Dt_Inicio,'
      '  St_Producao = ''''2'''
      ''
      'where'
      '  Cd_Filial   = :Cd_Filial and'
      '  Nr_Producao = :Nr_Producao and'
      '  St_Producao = ''''1'''
    )
    SQLOther2.Strings = (
      'declare'
      '  @Cd_Filial SmallInt,'
      '  @Nr_Producao Int,'
      '  @Id_Producao SmallInt,'
      '  @Dt_Termino SmallDateTime'
      ''
      'select'
      '  @Cd_Filial   = :Cd_Filial,'
      '  @Nr_Producao = :Nr_Producao,'
      '  @Id_Producao = :Id_Producao,'
      '  @Dt_Termino  = :Dt_Termino'
      ''
      '--------------- Seta o item como pronto - Data e ID'
      'update'
      '  Producao_Item'
      ''
      'set'
      '  Dt_Termino = @Dt_Termino,'
      '  Id_Termino = :Id_Termino'
      ''
      'where'
      '  Cd_Filial   = @Cd_Filial and'
      '  Nr_Producao = @Nr_Producao and'
      '  Id_Producao = @Id_Producao and'
      '  not exists('
      '    select'
      '      PS.Cd_Filial'
      ''
      '    from'
      '      Producao_Setor PS'
      ''
      '    where'
      '      PS.Cd_Filial   = @Cd_Filial and'
      '      PS.Nr_Producao = @Nr_Producao and'
      '      PS.Fl_Setor   <= ''''2''''                      -- Aberto / em produ'#231#227'o'
      '    )'
      ''
      '--------------- Seta a produ'#231#227'o inteira como produzido'
      ''
      'update'
      '  Producao'
      ''
      'set'
      '  Dt_Termino  = @Dt_Termino,'
      '  St_Producao = ''''3'''
      ''
      'where'
      '  Cd_Filial   = @Cd_Filial and'
      '  Nr_Producao = @Nr_Producao and'
      '  not exists('
      '    select'
      '      PS.Cd_Filial'
      ''
      '    from'
      '      Producao_Setor PS'
      ''
      '    where'
      '      PS.Cd_Filial   = @Cd_Filial and'
      '      PS.Nr_Producao = @Nr_Producao and'
      '      PS.Fl_Setor   <= ''''2'''' and                  -- Aberto / em produ'#231#227'o'
      ''
      '      --------------- Verifica se o produto foi marcado como defeito em algum setor'
      '      not exists('
      '      select'
      '        PSD.Cd_Filial'
      ''
      '      from'
      '        Producao_Setor PSD'
      ''
      '      where'
      '        PSD.Cd_Filial   = PS.Cd_Filial and'
      '        PSD.Nr_Producao = PS.Nr_Producao and'
      '        PSD.Cd_Setor    = PS.Cd_Setor and'
      '        PSD.Id_Producao = PS.Id_Producao and'
      '        PSD.Fl_Setor    = ''''4''''                  -- Cancelado'
      '      )'
      '    )'
      ''
    )
    Left = 456
    Top = 40
  end
end
