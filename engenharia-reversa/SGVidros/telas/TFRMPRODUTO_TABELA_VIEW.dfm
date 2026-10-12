object FrmProduto_Tabela_View: TFrmProduto_Tabela_View
  Left = 338
  Top = 251
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Sele'#231#227'o de Tabela de Pre'#231'o'
  ClientHeight = 279
  ClientWidth = 598
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
  PixelsPerInch = 96
  TextHeight = 13
  object PnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 21
    Height = 279
    Align = alLeft
    TabOrder = 0
    ExplicitHeight = 207
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 577
    Height = 279
    Align = alClient
    ParentColor = True
    TabOrder = 1
    ExplicitWidth = 383
    ExplicitHeight = 207
    object BvlSeparator: TBevel
      Left = 195
      Top = 247
      Width = 374
      Height = 5
      Shape = bsTopLine
    end
    object Label1: TLabel
      Left = 4
      Top = 2
      Width = 87
      Height = 13
      Caption = 'Tabelas de Pre'#231'o:'
    end
    object BitBtnConfirm: TBitBtn
      Left = 402
      Top = 250
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 1
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 488
      Top = 250
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 2
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object DbGTabela: TDBGrid
      Left = 7
      Top = 19
      Width = 554
      Height = 225
      DataSource = DsTabela
      FixedColor = clSilver
      Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = BitBtnConfirmClick
      OnEnter = DbGTabelaEnter
      OnExit = DbGTabelaExit
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Cd_Tabela'
          Title.Alignment = taCenter
          Width = 108
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Ds_Tabela'
          Width = 286
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Dt_Inicio'
          Title.Alignment = taCenter
          Width = 65
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Dt_Termino'
          Title.Alignment = taCenter
          Width = 65
          Visible = True
        end>
    end
  end
  object ADODsTabela: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  Cd_Tabela, Ds_Tabela, Dt_Inicio, Dt_Termino, Fl_Ativa'#13#10#13#10'from'#13#10'  Produto_TblPreco'#13#10#13#10'where'#13#10'  Fl_Ativa = ''''1'''' and'#13#10'  ('#13#10'  Dt_Termino is null or'#13#10'  Dt_Termino > :Dt_Now'#13#10'  )'#13#10#13#10'order by'#13#10'  Dt_Inicio'
    Parameters = <
      item
        Name = 'Dt_Now'
        DataType = ftDateTime
        Size = -1
        Value = nil?
      end>
    SQLOther1.Strings = (
      'select'
      '  Cd_Tabela, Ds_Tabela, Dt_Inicio, Dt_Termino, Fl_Ativa'
      ''
      'from'
      '  Produto_TblPreco'
      ''
      'where'
      '  Fl_Ativa = ''''1'''' and'
      '  ('
      '  Dt_Termino is null or'
      '  Dt_Termino > :Dt_Now'
      '  )'
      ''
      'order by'
      '  Dt_Inicio'
    )
    SQLOther2.Strings = (
      'select'
      '  Cd_Tabela, Ds_Tabela, Dt_Inicio, Dt_Termino, Fl_Ativa'
      ''
      'from'
      '  Produto_TblPreco'
      ''
      'order by'
      '  Dt_Inicio'
    )
    Left = 59
    Top = 142
    object ADODsTabelaCd_Tabela: TStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'Cd_Tabela'
      Size = 10
    end
    object ADODsTabelaDs_Tabela: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'Ds_Tabela'
      Size = 30
    end
    object ADODsTabelaDt_Inicio: TDateTimeField
      DisplayLabel = 'In'#237'cio'
      FieldName = 'Dt_Inicio'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object ADODsTabelaDt_Termino: TDateTimeField
      DisplayLabel = 'T'#233'rmino'
      FieldName = 'Dt_Termino'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object ADODsTabelaFl_Ativa: TStringField
      FieldName = 'Fl_Ativa'
      FixedChar = True
      Size = 1
    end
  end
  object DsTabela: TDataSource
    DataSet = ADODsTabela
    Left = 30
    Top = 142
  end
end
