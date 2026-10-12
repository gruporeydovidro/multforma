object FrmProjeto_Item: TFrmProjeto_Item
  Left = 287
  Top = 179
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Item do Projeto'
  ClientHeight = 178
  ClientWidth = 495
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 21
    Height = 178
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 474
    Height = 178
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 0
      Top = 148
      Width = 470
      Height = 5
      Shape = bsTopLine
    end
    object LblProduto: TLabel
      Left = 5
      Top = 3
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
    object Label2: TLabel
      Left = 175
      Top = 75
      Width = 58
      Height = 13
      Caption = 'Quantidade:'
    end
    object Label6: TLabel
      Left = 5
      Top = 75
      Width = 92
      Height = 13
      Caption = 'Unidade de Venda:'
    end
    object Label3: TLabel
      Left = 130
      Top = 110
      Width = 54
      Height = 13
      Caption = 'Folga (mm):'
    end
    object Label1: TLabel
      Left = 249
      Top = 75
      Width = 28
      Height = 13
      Caption = 'Parte:'
    end
    object Label4: TLabel
      Left = 320
      Top = 110
      Width = 54
      Height = 13
      Caption = 'Folga (mm):'
    end
    object Label5: TLabel
      Left = 5
      Top = 38
      Width = 28
      Height = 13
      Caption = 'Pe'#231'a:'
    end
    object BitBtnConfirm: TBitBtn
      Left = 301
      Top = 151
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 10
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 387
      Top = 151
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 11
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
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
      OnExit = EdtCd_ProdutoExit
      OnKeyDown = EdtCd_ProdutoKeyDown
    end
    object EdtNm_Produto: TEdit
      Left = 90
      Top = 16
      Width = 350
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
    object EdtQt_Item: TCurrencyEdit
      Left = 175
      Top = 88
      Width = 66
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 4
      DisplayFormat = '###,###,##0.00##'
      TabOrder = 4
    end
    object CbUnidade: TComboBox
      Left = 5
      Top = 88
      Width = 165
      Height = 21
      Style = csDropDownList
      Ctl3D = True
      ItemHeight = 13
      ParentCtl3D = False
      TabOrder = 3
    end
    object EdtDs_Form_Altura: TLabeledEdit
      Left = 195
      Top = 124
      Width = 121
      Height = 19
      CharCase = ecUpperCase
      EditLabel.Width = 85
      EditLabel.Height = 13
      EditLabel.Caption = 'F'#243'rmula da Altura:'
      LabelSpacing = 1
      MaxLength = 30
      TabOrder = 8
    end
    object EdtNr_Altura_Folga: TCurrencyEdit
      Left = 320
      Top = 124
      Width = 60
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DisplayFormat = '#'
      MaxValue = 32767.0
      TabOrder = 9
    end
    object CbParte: TComboBox
      Left = 249
      Top = 88
      Width = 132
      Height = 21
      Style = csDropDownList
      Ctl3D = True
      ItemHeight = 13
      ParentCtl3D = False
      TabOrder = 5
    end
    object EdtDs_Form_Largura: TLabeledEdit
      Left = 5
      Top = 124
      Width = 121
      Height = 19
      CharCase = ecUpperCase
      EditLabel.Width = 94
      EditLabel.Height = 13
      EditLabel.Caption = 'F'#243'rmula da Largura:'
      LabelSpacing = 1
      MaxLength = 30
      TabOrder = 6
    end
    object EdtNr_Largura_Folga: TCurrencyEdit
      Left = 130
      Top = 124
      Width = 60
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DisplayFormat = '#'
      MaxValue = 32767.0
      TabOrder = 7
    end
    object DbGPeca: TDBGrid
      Left = 5
      Top = 51
      Width = 436
      Height = 19
      DataSource = DsPeca
      Options = [dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = DbGPecaDblClick
      OnEnter = DbGPecaEnter
      OnExit = DbGPecaExit
      OnKeyPress = DbGPecaKeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'Cd_Peca'
          Width = 76
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Ds_Peca'
          Width = 334
          Visible = True
        end>
    end
  end
  object DsPeca: TDataSource
    DataSet = ADODsPeca
    Left = 56
    Top = 150
  end
  object ADOCmdItem: TMultADOCMD
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLInsert.Strings = (
      'insert into Projeto_Item (Cd_Projeto, Nr_Item, Tp_Item, Cd_Produto, Sg_Unidade, Qt_Item,'
      '  Ds_Form_Altura, Ds_Form_Largura, Cd_Parte, Cd_Peca, Nr_Altura_Folga, Nr_Largura_Folga)'
      'values (:Cd_Projeto, :Nr_Item, :Tp_Item, :Cd_Produto, :Sg_Unidade, :Qt_Item,'
      '  :Ds_Form_Altura, :Ds_Form_Largura, :Cd_Parte, :Cd_Peca, :Nr_Altura_Folga,'
      '  :Nr_Largura_Folga)'
    )
    SQLUpdate.Strings = (
      'update Projeto_Item set'
      '  Tp_Item           = :Tp_Item,'
      '  Cd_Produto        = :Cd_Produto,'
      '  Sg_Unidade        = :Sg_Unidade,'
      '  Qt_Item           = :Qt_Item,'
      '  Ds_Form_Altura    = :Ds_Form_Altura,'
      '  Ds_Form_Largura   = :Ds_Form_Largura,'
      '  Cd_Parte          = :Cd_Parte,'
      '  Cd_Peca           = :Cd_Peca,'
      '  Nr_Altura_Folga   = :Nr_Altura_Folga,'
      '  Nr_Largura_Folga  = :Nr_Largura_Folga'
      ''
      'where'
      '  Cd_Projeto = :Cd_Projeto and'
      '  Nr_Item    = :Nr_Item'
    )
    Left = 131
    Top = 150
  end
  object ADODsDados: TMultADODS
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLOther0.Strings = (
      '-- Nr_item para inserir um novo item'
      'select'
      '  max( A.Nr_Item ) + 1 as Nr_Item'
      ''
      'from'
      '  Projeto_Item A'
      ''
      'where'
      '  A.Cd_Projeto = :Cd_Projeto'
    )
    SQLOther1.Strings = (
      '-- Seleciona as partes para preencher o ComboBox'
      'select'
      '  Cd_Parte, Ds_Parte'
      ''
      'from'
      '  Projeto_Parte'
    )
    SQLOther2.Strings = (
      'select'
      '  Nr_Item'
      ''
      'from'
      '  Projeto_Item'
      ''
      'where'
      '  Cd_Projeto = :Cd_Projeto and'
      '  Cd_Peca    = :Cd_Peca'
    )
    SQLOther3.Strings = (
      '-- Verificar o tipo de produto'
      'select'
      '  Fl_Produto'
      ''
      'from'
      '  Produto'
      ''
      'where'
      '  Cd_Produto = :Cd_Produto'
    )
    Left = 101
    Top = 150
  end
  object ADODsPeca: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'select'#13#10'  P.Cd_Peca, P.Ds_Peca'#13#10#13#10'from'#13#10'  Projeto_Peca P'#13#10
    Parameters = <>
    Left = 26
    Top = 150
    object ADODsPecaCd_Peca: TStringField
      DisplayWidth = 10
      FieldName = 'Cd_Peca'
      Size = 10
    end
    object ADODsPecaDs_Peca: TStringField
      DisplayWidth = 50
      FieldName = 'Ds_Peca'
      Size = 50
    end
  end
  object ADODsEditItem: TADODataSet
    Connection = FrmMain.ADOConMaster
    CommandText = '-- Seleciona os dados do item para edi'#231#227'o'#13#10'-- Obs. N'#227'o colocar no ADODsDados'#13#10'select'#13#10'  PIT.Cd_Produto, PIT.Sg_Unidade, PIT.Qt_Item,'#13#10'  PIT.Ds_Form_Altura, PIT.Ds_Form_Largura, PIT.Cd_Parte, PIT.Cd_Peca,'#13#10'  PIT.Nr_Altura_Folga, PIT.Nr_Largura_Folga'#13#10'  '#13#10'from'#13#10'  Projeto_Item PIT'#13#10#13#10'where'#13#10'  PIT.Cd_Projeto = :Cd_Projeto and'#13#10'  PIT.Nr_Item    = :Nr_Item'
    Parameters = <
      item
        Name = 'Cd_Projeto'
        DataType = ftSmallint
        Size = -1
        Value = nil?
      end
      item
        Name = 'Nr_Item'
        DataType = ftSmallint
        Size = -1
        Value = nil?
      end>
    Left = 171
    Top = 150
    object ADODsEditItemCd_Produto: TIntegerField
      DisplayWidth = 10
      FieldName = 'Cd_Produto'
    end
    object ADODsEditItemSg_Unidade: TStringField
      DisplayWidth = 2
      FieldName = 'Sg_Unidade'
      FixedChar = True
      Size = 2
    end
    object ADODsEditItemQt_Item: TBCDField
      DisplayWidth = 13
      FieldName = 'Qt_Item'
      Precision = 12
    end
    object ADODsEditItemDs_Form_Altura: TStringField
      DisplayWidth = 30
      FieldName = 'Ds_Form_Altura'
      Size = 30
    end
    object ADODsEditItemDs_Form_Largura: TStringField
      DisplayWidth = 30
      FieldName = 'Ds_Form_Largura'
      Size = 30
    end
    object ADODsEditItemCd_Parte: TSmallintField
      DisplayWidth = 10
      FieldName = 'Cd_Parte'
    end
    object ADODsEditItemCd_Peca: TStringField
      DisplayWidth = 10
      FieldName = 'Cd_Peca'
      Size = 10
    end
    object ADODsEditItemNr_Altura_Folga: TSmallintField
      DisplayWidth = 10
      FieldName = 'Nr_Altura_Folga'
    end
    object ADODsEditItemNr_Largura_Folga: TSmallintField
      DisplayWidth = 10
      FieldName = 'Nr_Largura_Folga'
    end
  end
end
