object FrmOrcamento_Projeto_Parte: TFrmOrcamento_Projeto_Parte
  Left = 294
  Top = 173
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Inclus'#227'o das Partes do Projeto'
  ClientHeight = 290
  ClientWidth = 577
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
    Height = 290
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 556
    Height = 290
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 2
      Top = 260
      Width = 549
      Height = 5
      Shape = bsTopLine
    end
    object Label9: TLabel
      Left = 6
      Top = 1
      Width = 58
      Height = 13
      Caption = 'Partes (mm):'
    end
    object LblFormula: TLabel
      Left = 6
      Top = 108
      Width = 92
      Height = 13
      Caption = '&F'#243'rmula dos Vidros:'
      FocusControl = DbGFormula
    end
    object BitBtnConfirm: TBitBtn
      Left = 383
      Top = 263
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 2
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 469
      Top = 263
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 3
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object DbGParte: TDBGrid
      Left = 6
      Top = 15
      Width = 206
      Height = 90
      DataSource = DsParteEdit
      FixedColor = clSilver
      Options = [dgEditing, dgTitles, dgRowLines, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentShowHint = False
      ShowHint = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnEnter = DbGParteEnter
      OnExit = DbGParteExit
      OnKeyPress = DbGParteKeyPress
      Columns = <
        item
          Color = clSilver
          Expanded = False
          FieldName = 'Ds_Parte'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ReadOnly = True
          Width = 83
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nr_Largura'
          Title.Alignment = taRightJustify
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nr_Altura'
          Title.Alignment = taRightJustify
          Width = 50
          Visible = True
        end>
    end
    object DbGFormula: TDBGrid
      Left = 6
      Top = 122
      Width = 540
      Height = 135
      DataSource = DsFormula
      FixedColor = clSilver
      Options = [dgEditing, dgTitles, dgRowLines, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentShowHint = False
      ShowHint = False
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnEnter = DbGParteEnter
      OnExit = DbGParteExit
      OnKeyPress = DbGFormulaKeyPress
      Columns = <
        item
          Color = clSilver
          Expanded = False
          FieldName = 'Dp_Peca'
          ReadOnly = True
          Width = 228
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Ds_Form_Largura'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nr_Largura_Folga'
          Width = 45
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Ds_Form_Altura'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nr_Altura_Folga'
          Width = 45
          Visible = True
        end>
    end
  end
  object ADODsParteEdit: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    BeforeInsert = ADODsParteEditBeforeInsert
    CommandText = 'select'#13#10'  OPP.Cd_Filial, OPP.Nr_Orcamento, OPP.Nr_Projeto, OPP.Cd_Parte, PP.Ds_Parte,'#13#10'  OPP.Nr_Altura, OPP.Nr_Largura'#13#10#13#10'from'#13#10'  Orcamento_Projeto_Parte OPP'#13#10#13#10'inner join'#13#10'  Projeto_Parte PP'#13#10'on'#13#10'  PP.Cd_Parte = OPP.Cd_Parte'#13#10#13#10'where'#13#10'  OPP.Cd_Filial     = :Cd_Filial and'#13#10'  OPP.Nr_Orcamento = :Nr_Orcamento and'#13#10'  OPP.Nr_Projeto  = :Nr_Projeto'
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
        Name = 'Nr_Projeto'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = nil?
      end>
    Left = 61
    Top = 75
    object ADODsParteEditCd_Filial: TSmallintField
      FieldName = 'Cd_Filial'
    end
    object ADODsParteEditNr_Orcamento: TIntegerField
      FieldName = 'Nr_Orcamento'
    end
    object ADODsParteEditNr_Projeto: TSmallintField
      FieldName = 'Nr_Projeto'
    end
    object ADODsParteEditCd_Parte: TSmallintField
      FieldName = 'Cd_Parte'
    end
    object ADODsParteEditDs_Parte: TStringField
      DisplayLabel = 'Parte'
      FieldName = 'Ds_Parte'
      Size = 30
    end
    object ADODsParteEditNr_Altura: TIntegerField
      DisplayLabel = 'Altura'
      FieldName = 'Nr_Altura'
    end
    object ADODsParteEditNr_Largura: TIntegerField
      DisplayLabel = 'Largura'
      FieldName = 'Nr_Largura'
    end
  end
  object DsParteEdit: TDataSource
    DataSet = ADODsParteEdit
    Left = 31
    Top = 75
  end
  object ADODsFormula: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    OnCalcFields = ADODsFormulaCalcFields
    CommandText = 'select'#13#10'  Nr_Item, Tp_Item, Ds_Form_Altura, Ds_Form_Largura,'#13#10'  Cd_Parte, Ds_Parte, Nr_Altura_Folga, Nr_Largura_Folga,'#13#10'  Cd_Peca, Ds_Peca'#13#10#13#10'from'#13#10'  ##Tmp_Projeto'#13#10#13#10'where'#13#10'  Nr_SPID  = @@SPID and'#13#10'  Cd_Parte = :Cd_Parte and'#13#10'  Tp_Item = ''''0''''             ----- Somente Vidros'#13#10#13#10'order by'#13#10'  Cd_Parte, Nr_Item'
    DataSource = DsParteEdit
    MasterFields = 'Cd_Parte'
    Parameters = <
      item
        Name = 'Cd_Parte'
        Attributes = [paSigned, paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = nil?
      end>
    Left = 102
    Top = 192
    object ADODsFormulaNr_Item: TSmallintField
      FieldName = 'Nr_Item'
    end
    object ADODsFormulaTp_Item: TStringField
      FieldName = 'Tp_Item'
      FixedChar = True
      Size = 1
    end
    object ADODsFormulaCd_Parte: TSmallintField
      FieldName = 'Cd_Parte'
    end
    object ADODsFormulaDs_Parte: TStringField
      FieldName = 'Ds_Parte'
      Size = 30
    end
    object ADODsFormulaCd_Peca: TStringField
      FieldName = 'Cd_Peca'
      Size = 10
    end
    object ADODsFormulaDs_Peca: TStringField
      FieldName = 'Ds_Peca'
      Size = 50
    end
    object ADODsFormulaDp_Peca: TStringField
      DisplayLabel = 'Pe'#231'a'
      FieldKind = fkCalculated
      FieldName = 'Dp_Peca'
      Size = 65
      Calculated = True
    end
    object ADODsFormulaDs_Form_Largura: TStringField
      DisplayLabel = 'F'#243'rmula Largura'
      FieldName = 'Ds_Form_Largura'
      Size = 30
    end
    object ADODsFormulaNr_Largura_Folga: TSmallintField
      DisplayLabel = 'Folga'
      FieldName = 'Nr_Largura_Folga'
    end
    object ADODsFormulaDs_Form_Altura: TStringField
      DisplayLabel = 'F'#243'rmula Altura'
      FieldName = 'Ds_Form_Altura'
      Size = 30
    end
    object ADODsFormulaNr_Altura_Folga: TSmallintField
      DisplayLabel = 'Folga'
      FieldName = 'Nr_Altura_Folga'
    end
  end
  object DsFormula: TDataSource
    DataSet = ADODsFormula
    Left = 72
    Top = 192
  end
  object ADOCmdFormula: TADOCommand
    CommandText = '-------------------- Cria a table das formulada'#13#10'-- IMPORTANTE'#13#10'--     Apesar de pegar todos os itens, somente os de vidros poder'#227'o ser'#13#10'--     manipulados para refazer os calculos, os demais itens s'#227'o necess'#225'rios'#13#10'--     pois v'#227'o ser utilizados no calculo de area na procedure CalculoProjeto'#13#10#13#10'if Object_ID( ''''TempDB..##Tmp_Projeto'''' ) is null'#13#10'  create table ##Tmp_Projeto'#13#10'    ('#13#10'    Nr_SPID Int,'#13#10'    Nr_Item SmallInt not null,'#13#10'    Tp_Item Char( 1 ) not null,'#13#10'    Ds_Form_Altura VarChar( 30 ),'#13#10'    Ds_Form_Largura VarChar( 30 ),'#13#10'    Cd_Parte smallint,'#13#10'    Ds_Parte VarChar( 30 ),'#13#10'    Cd_Peca VarChar( 10 ),'#13#10'    Ds_Peca VarChar( 50 ),'#13#10'    Nr_Altura_Folga SmallInt,'#13#10'    Nr_Largura_Folga SmallInt'#13#10'    )'#13#10#13#10'else'#13#10'  delete from ##Tmp_Projeto where Nr_SPID = @@SPID'#13#10#13#10'insert into ##Tmp_Projeto( Nr_SPID, Nr_Item, Tp_Item, Ds_Form_Altura, Ds_Form_Largura,'#13#10'   Cd_Parte, Ds_Parte, Cd_Peca, Ds_Peca, Nr_Altura_Folga, Nr_Largura_Folga )'#13#10'select'#13#10'  @@SPID, PRI.Nr_Item, PRI.Tp_Item, PRI.Ds_Form_Altura, PRI.Ds_Form_Largura,'#13#10'  PRI.Cd_Parte, PP.Ds_Parte, PRI.Cd_Peca, PC.Ds_Peca, PRI.Nr_Altura_Folga,'#13#10'  PRI.Nr_Largura_Folga'#13#10#13#10'from'#13#10'  Projeto_Item PRI'#13#10#13#10'inner join'#13#10'  Projeto_Parte PP'#13#10'on'#13#10'  PP.Cd_Parte = PRI.Cd_Parte'#13#10#13#10'left join'#13#10'  Projeto_Peca PC'#13#10'on'#13#10'  PC.Cd_Peca = PRI.Cd_Peca'#13#10#13#10'where'#13#10'  PRI.Cd_Projeto = :Cd_Projeto'
    Connection = FrmMain.ADOConMaster
    Parameters = <
      item
        Name = 'Cd_Projeto'
        Size = -1
        Value = nil?
      end>
    Left = 132
    Top = 192
  end
end
