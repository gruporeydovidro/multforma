object FrmOrcamento_Moldura: TFrmOrcamento_Moldura
  Left = 294
  Top = 173
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Moldura'
  ClientHeight = 250
  ClientWidth = 619
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 21
    Height = 250
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 598
    Height = 250
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 3
      Top = 220
      Width = 590
      Height = 5
      Shape = bsTopLine
    end
    object Label2: TLabel
      Left = 340
      Top = 0
      Width = 47
      Height = 13
      Caption = 'Ambiente:'
    end
    object Label5: TLabel
      Left = 5
      Top = 1
      Width = 175
      Height = 13
      Caption = 'Descri'#231#227'o alternativa para o produto:'
    end
    object Label3: TLabel
      Left = 5
      Top = 44
      Width = 130
      Height = 13
      Caption = '&Molduras - medidas em CM:'
      FocusControl = DbGMoldura
    end
    object SbDel: TSpeedButton
      Left = 298
      Top = 37
      Width = 22
      Height = 21
      Hint = 'Excluir Moldura'
      Flat = True
      Glyph.Data = {binary 1594 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbDelClick
    end
    object Label6: TLabel
      Left = 5
      Top = 182
      Width = 58
      Height = 13
      Caption = '&Quantidade:'
      FocusControl = EdtQt_Item
    end
    object Label7: TLabel
      Left = 160
      Top = 182
      Width = 49
      Height = 13
      Caption = 'Desconto:'
    end
    object Label8: TLabel
      Left = 79
      Top = 182
      Width = 39
      Height = 13
      Caption = 'Unit'#225'rio:'
    end
    object Label9: TLabel
      Left = 213
      Top = 182
      Width = 27
      Height = 13
      Caption = 'Total:'
    end
    object Label13: TLabel
      Left = 406
      Top = 182
      Width = 56
      Height = 13
      Caption = 'Fabrica'#231#227'o:'
    end
    object Label14: TLabel
      Left = 501
      Top = 182
      Width = 44
      Height = 13
      Caption = 'Validade:'
    end
    object Label1: TLabel
      Left = 325
      Top = 44
      Width = 100
      Height = 13
      Caption = 'Unidade de Estoque:'
    end
    object Label32: TLabel
      Left = 325
      Top = 81
      Width = 52
      Height = 13
      Caption = 'Espessura:'
    end
    object Label33: TLabel
      Left = 380
      Top = 81
      Width = 31
      Height = 13
      Caption = 'Perda:'
    end
    object BitBtnConfirm: TBitBtn
      Left = 425
      Top = 223
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 13
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 511
      Top = 223
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 14
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object CbAmbiente: TComboBox
      Left = 340
      Top = 15
      Width = 250
      Height = 21
      ItemHeight = 13
      MaxLength = 50
      Sorted = True
      TabOrder = 1
      Items.Strings = (
        'Banheiro'
        'Cozinha'
        'Hall de Entrada'
        'Quarto'
        'Sala'
        'Sala de Estar'
      )
    end
    object EdtNm_Item: TEdit
      Left = 5
      Top = 15
      Width = 329
      Height = 19
      TabStop = False
      MaxLength = 120
      TabOrder = 0
    end
    object DbGMoldura: TDBGrid
      Left = 5
      Top = 59
      Width = 316
      Height = 120
      DataSource = DsMoldura
      FixedColor = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgEditing, dgTitles, dgRowLines, dgTabs, dgConfirmDelete]
      ParentFont = False
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnExit = DbGMolduraExit
      OnKeyDown = DbGMolduraKeyDown
      Columns = <
        item
          Expanded = False
          FieldName = 'Qt_Moldura'
          Title.Alignment = taRightJustify
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nr_Altura'
          Title.Alignment = taRightJustify
          Width = 55
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nr_Largura'
          Title.Alignment = taRightJustify
          Width = 55
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nr_Folga'
          Title.Alignment = taRightJustify
          Width = 55
          Visible = True
        end
        item
          Color = clSilver
          Expanded = False
          FieldName = 'Qt_Metro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ReadOnly = True
          Title.Alignment = taRightJustify
          Width = 55
          Visible = True
        end>
    end
    object EdtQt_Item: TCurrencyEdit
      Left = 5
      Top = 196
      Width = 70
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 3
      DisplayFormat = '#,##0.00#'
      ParentShowHint = False
      ShowHint = False
      TabOrder = 6
      OnChange = EdtQt_ItemChange
    end
    object EdtPr_Desconto: TCurrencyEdit
      Left = 160
      Top = 196
      Width = 49
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DisplayFormat = '#,##0.00'
      TabOrder = 8
      OnChange = EdtPr_DescontoChange
    end
    object EdtVl_Unitario: TCurrencyEdit
      Left = 79
      Top = 196
      Width = 75
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DisplayFormat = '#,##0.00'
      TabOrder = 7
      OnChange = EdtQt_ItemChange
    end
    object EdtVl_Total: TCurrencyEdit
      Left = 213
      Top = 196
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
      TabOrder = 9
    end
    object EdtDt_Fabricacao: TDateEdit
      Left = 406
      Top = 196
      Width = 89
      Height = 19
      CheckOnExit = True
      DialogTitle = 'Selecione a Data'
      GlyphKind = gkCustom
      Glyph.Data = {binary 1850 bytes}
      NumGlyphs = 1
      StartOfWeek = Sun
      TabOrder = 11
    end
    object EdtDt_Validade: TDateEdit
      Left = 501
      Top = 196
      Width = 89
      Height = 19
      CheckOnExit = True
      DialogTitle = 'Selecione a Data'
      GlyphKind = gkCustom
      Glyph.Data = {binary 1850 bytes}
      NumGlyphs = 1
      StartOfWeek = Sun
      TabOrder = 12
    end
    object EdtNr_Lote: TLabeledEdit
      Left = 293
      Top = 196
      Width = 110
      Height = 19
      EditLabel.Width = 79
      EditLabel.Height = 13
      EditLabel.Caption = 'Numero do Lote:'
      LabelSpacing = 2
      MaxLength = 15
      TabOrder = 10
    end
    object EdtSg_Unidade: TEdit
      Left = 326
      Top = 59
      Width = 140
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
    object EdtNr_MoldEspessura: TCurrencyEdit
      Left = 325
      Top = 95
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      TabStop = False
      AutoSize = False
      Color = clSilver
      Ctl3D = False
      DecimalPlaces = 3
      DisplayFormat = '#,##0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
    end
    object EdtNr_MoldPerda: TCurrencyEdit
      Left = 380
      Top = 95
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      TabStop = False
      AutoSize = False
      Color = clSilver
      Ctl3D = False
      DecimalPlaces = 3
      DisplayFormat = '#,##0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 5
    end
  end
  object ADOCmdMoldura: TMultADOCMD
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLInsert.Strings = (
      '-------------------- Inclus'#227'o do item'
      'insert into Orcamento_Item( Cd_Filial, Nr_Orcamento, Nr_Item, Cd_Produto,'
      '   Nm_Produto, Sg_Unidade, Qt_Item, Vl_Unitario, Fl_Confirmado, Cd_SubProduto,'
      '   Im_SubProduto, Ds_Ambiente, Fl_Medida, Nr_Lote, Dt_Fabricacao, Dt_Validade,'
      '   Fl_OrdemServico )'
      'values( :Cd_Filial, :Nr_Orcamento, :Nr_Item, :Cd_Produto, :Nm_Produto,'
      '   :Sg_Unidade, :Qt_Item, :Vl_Unitario, :Fl_Confirmado, :Cd_SubProduto,'
      '   :Im_SubProduto, :Ds_Ambiente, :Fl_Medida, :Nr_Lote, :Dt_Fabricacao,'
      '   :Dt_Validade, ''''2'''' )'
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
      '  Dt_Validade   = :Dt_Validade'
      '  '
      'where'
      '  Cd_Filial     = :Cd_Filial and'
      '  Nr_Orcamento  = :Nr_Orcamento and'
      '  Nr_Item       = :Nr_Item'
    )
    SQLOther0.Strings = (
      '-------------------- Cria tabela para manipular a moldura'
      'if Object_ID( ''''TempDB..##Moldura'''' ) is null'
      '  create table ##Moldura'
      '    ('
      '    Nr_SPID Int default @@SPID,'
      '    Nr_Moldura SmallInt,'
      '    Nr_Altura numeric( 7, 2 ),'
      '    Nr_Largura numeric( 7, 2 ),'
      '    Nr_Folga numeric( 7, 2 ),'
      '    Qt_Moldura SmallInt'
      '    )'
      ''
      'else'
      '  delete from'
      '    ##Moldura'
      ''
      '  where'
      '    Nr_SPID = @@SPID'
    )
    SQLOther1.Strings = (
      '-------------------- Inclui os dados de moldura ja existente'
      'insert into ##Moldura( Nr_SPID, Nr_Moldura, Nr_Altura, Nr_Largura, Nr_Folga,'
      '   Qt_Moldura )'
      ''
      'select'
      '  @@SPID, Nr_Moldura, Nr_Altura, Nr_Largura, Nr_Folga, Qt_Moldura'
      ''
      'from'
      '  Orcamento_Moldura'
      ''
      'where'
      '  Cd_Filial    = :Cd_Filial and'
      '  Nr_Orcamento = :Nr_Orcamento and'
      '  Nr_Item      = :Nr_Item'
    )
    SQLOther2.Strings = (
      '-------------------- Inclus'#227'o dos itens da moldura'
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
      '-------------------- Exclus'#227'o das molduras existentes'
      'delete from'
      '  Orcamento_Moldura'
      ''
      'where'
      '  Cd_Filial    = @Cd_Filial and'
      '  Nr_Orcamento = @Nr_Orcamento and'
      '  Nr_Item      = @Nr_Item'
      ''
      '-------------------- Inclus'#227'o das molduras existentes'
      'insert into Orcamento_Moldura( Cd_Filial, Nr_Orcamento, Nr_Item, Nr_Moldura,'
      '   Nr_Altura, Nr_Largura, Nr_Folga, Qt_Moldura )'
      ''
      'select'
      '  @Cd_Filial, @Nr_Orcamento, @Nr_Item, Nr_Moldura, Nr_Altura, Nr_Largura,'
      '  Nr_Folga, Qt_Moldura'
      ''
      'from'
      '  ##Moldura'
      ''
      'where'
      '  Nr_SPID = @@SPID'
      ''
    )
    SQLOther3.Strings = (
      '-------------------- Renumera as molduras'
      'update'
      '  ##Moldura'
      ''
      'set'
      '  Nr_Moldura = Nr_Moldura - 1'
      ''
      'where'
      '  Nr_SPID     = @@SPID and'
      '  Nr_Moldura >= :Nr_Moldura'
    )
    SQLOther4.Strings = (
      '--------------- Atualiza as medidas para recalculo'
      'update'
      '  ##Moldura'
      ''
      'set'
      '  Nr_Altura  = :Nr_Altura,'
      '  Nr_Largura = :Nr_Largura'
      ''
      'where'
      '  Nr_SPID    = @@SPID and'
      '  Nr_Moldura = :Nr_Moldura'
    )
    Left = 132
    Top = 112
  end
  object DsMoldura: TDataSource
    DataSet = ADODsMoldura
    Left = 72
    Top = 112
  end
  object ADODsMoldura: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    BeforeInsert = ADODsMolduraBeforeInsert
    AfterInsert = ADODsMolduraAfterInsert
    BeforePost = ADODsMolduraBeforePost
    AfterPost = ADODsMolduraAfterPost
    BeforeDelete = ADODsMolduraBeforeDelete
    AfterDelete = ADODsMolduraAfterDelete
    AfterScroll = ADODsMolduraAfterScroll
    OnCalcFields = ADODsMolduraCalcFields
    CommandText = 'select'#13#10'  Nr_Moldura, Nr_Altura, Nr_Largura, Nr_Folga, Qt_Moldura'#13#10#13#10'from'#13#10'  ##Moldura'#13#10#13#10'where'#13#10'  Nr_SPID = @@SPID'#13#10#13#10'order by'#13#10'  Nr_Moldura'
    Parameters = <>
    Left = 101
    Top = 112
    object ADODsMolduraNr_Moldura: TSmallintField
      FieldName = 'Nr_Moldura'
    end
    object ADODsMolduraQt_Moldura: TSmallintField
      DisplayLabel = 'Quantidade'
      FieldName = 'Qt_Moldura'
    end
    object ADODsMolduraNr_Altura: TBCDField
      DisplayLabel = 'Altura'
      FieldName = 'Nr_Altura'
      DisplayFormat = '##0.00'
      EditFormat = '##0.00'
      Precision = 7
      Size = 2
    end
    object ADODsMolduraNr_Largura: TBCDField
      DisplayLabel = 'Largura'
      FieldName = 'Nr_Largura'
      DisplayFormat = '##0.00'
      EditFormat = '##0.00'
      Precision = 7
      Size = 2
    end
    object ADODsMolduraNr_Folga: TBCDField
      DisplayLabel = 'Folga'
      FieldName = 'Nr_Folga'
      DisplayFormat = '##0.00'
      EditFormat = '##0.00'
      Precision = 7
      Size = 2
    end
    object ADODsMolduraQt_Metro: TFloatField
      DisplayLabel = 'Metros'
      FieldKind = fkCalculated
      FieldName = 'Qt_Metro'
      DisplayFormat = '##0.00'
      EditFormat = '##0.00'
      Calculated = True
    end
  end
  object ADODsMoldParam: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'select'#13#10'  Nr_MoldEspessura, Nr_MoldPerda'#13#10#13#10'from'#13#10'  Produto'#13#10#13#10'where'#13#10'  Cd_Produto = :Cd_Produto'
    Parameters = <
      item
        Name = 'Cd_Produto'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = nil?
      end>
    Left = 160
    Top = 112
    object ADODsMoldParamNr_MoldEspessura: TBCDField
      FieldName = 'Nr_MoldEspessura'
      Precision = 9
      Size = 2
    end
    object ADODsMoldParamNr_MoldPerda: TBCDField
      FieldName = 'Nr_MoldPerda'
      Precision = 9
      Size = 2
    end
  end
end
