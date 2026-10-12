object FrmEstoque_View_Terceiros: TFrmEstoque_View_Terceiros
  Left = 276
  Top = 224
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Estoque em poder de Terceiros'
  ClientHeight = 280
  ClientWidth = 694
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
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 21
    Height = 280
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 673
    Height = 280
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 3
      Top = 251
      Width = 666
      Height = 5
      Shape = bsTopLine
    end
    object Label1: TLabel
      Left = 5
      Top = 3
      Width = 107
      Height = 13
      Caption = 'Clientes/Fornecedores'
    end
    object LblMinimo: TLabel
      Left = 385
      Top = 235
      Width = 65
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = '0.0'
    end
    object LblSaldo: TLabel
      Left = 452
      Top = 235
      Width = 65
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = '0.0'
    end
    object LblDevedor: TLabel
      Left = 517
      Top = 235
      Width = 65
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = '0.0'
    end
    object LblExcesso: TLabel
      Left = 582
      Top = 235
      Width = 65
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = '0.0'
    end
    object Label2: TLabel
      Left = 346
      Top = 235
      Width = 32
      Height = 13
      Caption = 'Totais:'
    end
    object DbGTerceiros: TDBGrid
      Left = 5
      Top = 17
      Width = 661
      Height = 217
      DataSource = DsTerceiros
      FixedColor = clSilver
      Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnEnter = DbGTerceirosEnter
      OnExit = DbGTerceirosExit
      Columns = <
        item
          Expanded = False
          FieldName = 'cd_emitente'
          Width = 41
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nm_emitente'
          Width = 339
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Qt_Item'
          Title.Alignment = taRightJustify
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Qt_Saldo'
          Title.Alignment = taRightJustify
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Qt_Devedor'
          Title.Alignment = taRightJustify
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Qt_Excesso'
          Title.Alignment = taRightJustify
          Width = 65
          Visible = True
        end>
    end
    object BitBtnCancel: TBitBtn
      Left = 586
      Top = 253
      Width = 85
      Height = 25
      Cancel = True
      Caption = '&Fechar'
      ModalResult = 2
      TabOrder = 1
      Glyph.Data = {binary 486 bytes}
    end
  end
  object ADODsTerceiros: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    OnCalcFields = ADODsTerceirosCalcFields
    CommandText = '-- Cria tabela temporaria'#13#10'if Object_ID( ''''TempDB..#estoque_terceiros'''' ) is null'#13#10'  create table #estoque_terceiros'#13#10'    ('#13#10'    cd_emitente int,'#13#10'    qt_envio numeric( 12, 3 ),'#13#10'    qt_vendido numeric( 12, 3 ),'#13#10'    qt_devolvido numeric( 12, 3 )'#13#10'    )'#13#10#13#10'else'#13#10'  truncate table #estoque_terceiros;'#13#10#13#10'-- Mercadorias enviadas'#13#10'insert into #Estoque_Terceiros( Cd_Emitente, Qt_Envio )'#13#10'select'#13#10'  S.Cd_Emitente, sum( SI.Qt_Estoque ) as Qt_Envio'#13#10#13#10'from'#13#10'  Saida_Item SI'#13#10#13#10'inner join'#13#10'  Saida S'#13#10'on'#13#10'  S.Cd_Filial = SI.Cd_Filial and'#13#10'  S.Nr_Saida  = SI.Nr_Saida and'#13#10'  S.St_Saida  = ''''2'''#13#10#13#10'inner join'#13#10'  CFOP CF'#13#10'on'#13#10'  CF.Cd_CFOP      = S.Cd_CFOP and'#13#10'  CF.Fl_Terceiros = ''''1'''#13#10#13#10'where'#13#10'  SI.Cd_Filial  = 1 and'#13#10'  SI.Cd_Produto = 3'#13#10'  '#13#10'group by'#13#10'  S.Cd_Emitente;'#13#10#13#10'-- Devolvido'#13#10'insert into #Estoque_Terceiros( Cd_Emitente, Qt_Devolvido )'#13#10'select'#13#10'  E.Cd_Emitente, sum( EI.Qt_Estoque ) as Qt_Envio'#13#10#13#10'from'#13#10'  Entrada_Item EI'#13#10#13#10'inner join'#13#10'  Entrada E'#13#10'on'#13#10'  E.Cd_Filial  = EI.Cd_Filial and'#13#10'  E.Nr_Entrada = EI.Nr_Entrada and'#13#10'  E.St_Entrada = ''''2'''#13#10#13#10'inner join'#13#10'  CFOP CF'#13#10'on'#13#10'  CF.Cd_CFOP      = E.Cd_CFOP and'#13#10'  CF.Fl_Terceiros = ''''1'''#13#10#13#10'where'#13#10'  EI.Cd_Filial  = 1 and'#13#10'  EI.Cd_Produto = 3'#13#10'  '#13#10'group by'#13#10'  E.Cd_Emitente;'#13#10#13#10'-- Mercadorias Vendidas'#13#10'insert into #Estoque_Terceiros( Cd_Emitente, Qt_Vendido )'#13#10'select'#13#10'  O.Cd_Emitente, sum( OI.Qt_Estoque ) as Qt_Vendido'#13#10#13#10'from'#13#10'  Orcamento_Item OI'#13#10#13#10'inner join'#13#10'  Orcamento O'#13#10'on'#13#10'  O.Cd_Filial     = OI.Cd_Filial and'#13#10'  O.Nr_Orcamento  = OI.Nr_Orcamento and'#13#10'  O.St_Orcamento  = ''''9'''#13#10#13#10'inner join'#13#10'  CFOP CF'#13#10'on'#13#10'  CF.Cd_CFOP      = O.Cd_CFOP and'#13#10'  CF.Fl_Terceiros = ''''1'''#13#10#13#10'where'#13#10'  OI.Cd_Filial     = 1 and'#13#10'  OI.Cd_Produto    = 3 and'#13#10'  OI.Fl_Confirmado = ''''1'''#13#10#13#10'group by'#13#10'  O.Cd_Emitente;'#13#10#13#10'select'#13#10'  ET.Cd_Emitente, E.Nm_Emitente, EE.Qt_Item,'#13#10'  sum( ET.Qt_Envio ) as Qt_Envio,  '#13#10'  sum( ET.Qt_Vendido ) as Qt_Vendido, '#13#10'  sum( ET.Qt_Devolvido ) as  Qt_Devolvido'#13#10#13#10'from'#13#10'  #Estoque_Terceiros ET'#13#10#13#10'inner join'#13#10'  Emitente E'#13#10'on'#13#10'  E.Cd_Emitente = ET.Cd_Emitente'#13#10#13#10'left join'#13#10'  Emitente_Terceiros EE'#13#10'on'#13#10'  EE.Cd_Emitente = ET.Cd_Emitente and'#13#10'  EE.Cd_Produto  = 3'#13#10#13#10'group by'#13#10'  ET.Cd_Emitente, E.Nm_Emitente, EE.Qt_Item'#13#10#13#10'order by'#13#10'  E.Nm_Emitente'
    Parameters = <>
    SQLOther0.Strings = (
      '-- Cria tabela temporaria'
      'if Object_ID( ''''TempDB..#estoque_terceiros'''' ) is null'
      '  create table #estoque_terceiros'
      '    ('
      '    cd_emitente int,'
      '    qt_envio numeric( 12, 3 ),'
      '    qt_vendido numeric( 12, 3 ),'
      '    qt_devolvido numeric( 12, 3 )'
      '    )'
      ''
      'else'
      '  truncate table #estoque_terceiros;'
      ''
      '-- Mercadorias enviadas'
      'insert into #Estoque_Terceiros( Cd_Emitente, Qt_Envio )'
      'select'
      '  S.Cd_Emitente, sum( SI.Qt_Estoque ) as Qt_Envio'
      ''
      'from'
      '  Saida_Item SI'
      ''
      'inner join'
      '  Saida S'
      'on'
      '  S.Cd_Filial = SI.Cd_Filial and'
      '  S.Nr_Saida  = SI.Nr_Saida and'
      '  S.St_Saida  = ''''2'''
      ''
      'inner join'
      '  CFOP CF'
      'on'
      '  CF.Cd_CFOP      = S.Cd_CFOP and'
      '  CF.Fl_Terceiros = ''''1'''
      ''
      'where'
      '  SI.Cd_Filial  = :Cd_Filial and'
      '  SI.Cd_Produto = :Cd_Produto'
      '  '
      'group by'
      '  S.Cd_Emitente;'
      ''
      '-- Devolvido'
      'insert into #Estoque_Terceiros( Cd_Emitente, Qt_Devolvido )'
      'select'
      '  E.Cd_Emitente, sum( EI.Qt_Estoque ) as Qt_Envio'
      ''
      'from'
      '  Entrada_Item EI'
      ''
      'inner join'
      '  Entrada E'
      'on'
      '  E.Cd_Filial  = EI.Cd_Filial and'
      '  E.Nr_Entrada = EI.Nr_Entrada and'
      '  E.St_Entrada = ''''2'''
      ''
      'inner join'
      '  CFOP CF'
      'on'
      '  CF.Cd_CFOP      = E.Cd_CFOP and'
      '  CF.Fl_Terceiros = ''''1'''
      ''
      'where'
      '  EI.Cd_Filial  = :Cd_Filial and'
      '  EI.Cd_Produto = :Cd_Produto'
      '  '
      'group by'
      '  E.Cd_Emitente;'
      ''
      '-- Mercadorias Vendidas'
      'insert into #Estoque_Terceiros( Cd_Emitente, Qt_Vendido )'
      'select'
      '  O.Cd_Emitente, sum( OI.Qt_Estoque ) as Qt_Vendido'
      ''
      'from'
      '  Orcamento_Item OI'
      ''
      'inner join'
      '  Orcamento O'
      'on'
      '  O.Cd_Filial     = OI.Cd_Filial and'
      '  O.Nr_Orcamento  = OI.Nr_Orcamento and'
      '  O.St_Orcamento  = ''''9'''
      ''
      'inner join'
      '  CFOP CF'
      'on'
      '  CF.Cd_CFOP      = O.Cd_CFOP and'
      '  CF.Fl_Terceiros = ''''1'''
      ''
      'where'
      '  OI.Cd_Filial     = :Cd_Filial and'
      '  OI.Cd_Produto    = :Cd_Produto and'
      '  OI.Fl_Confirmado = ''''1'''
      ''
      'group by'
      '  O.Cd_Emitente;'
      ''
      'select'
      '  ET.Cd_Emitente, E.Nm_Emitente, EE.Qt_Item,'
      '  sum( ET.Qt_Envio ) as Qt_Envio,  '
      '  sum( ET.Qt_Vendido ) as Qt_Vendido, '
      '  sum( ET.Qt_Devolvido ) as  Qt_Devolvido'
      ''
      'from'
      '  #Estoque_Terceiros ET'
      ''
      'inner join'
      '  Emitente E'
      'on'
      '  E.Cd_Emitente = ET.Cd_Emitente'
      ''
      'left join'
      '  Emitente_Terceiros EE'
      'on'
      '  EE.Cd_Emitente = ET.Cd_Emitente and'
      '  EE.Cd_Produto  = :Cd_Produto'
      ''
      'group by'
      '  ET.Cd_Emitente, E.Nm_Emitente, EE.Qt_Item'
      ''
      'order by'
      '  E.Nm_Emitente'
    )
    Left = 58
    Top = 205
    object ADODsTerceiroscd_emitente: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'cd_emitente'
    end
    object ADODsTerceirosnm_emitente: TStringField
      DisplayLabel = 'Cliente / Fornecedor'
      FieldName = 'nm_emitente'
      Size = 100
    end
    object ADODsTerceirosqt_envio: TBCDField
      DisplayLabel = 'Enviado'
      FieldName = 'qt_envio'
      DisplayFormat = '#,###.###'
      Precision = 12
      Size = 3
    end
    object ADODsTerceirosqt_vendido: TBCDField
      DisplayLabel = 'Vendido'
      FieldName = 'qt_vendido'
      DisplayFormat = '#,###.###'
      Precision = 12
      Size = 3
    end
    object ADODsTerceirosqt_devolvido: TBCDField
      DisplayLabel = 'Devolvido'
      FieldName = 'qt_devolvido'
      DisplayFormat = '#,###.###'
      Precision = 12
      Size = 3
    end
    object ADODsTerceirosQt_Saldo: TFloatField
      DisplayLabel = 'Saldo'
      FieldKind = fkCalculated
      FieldName = 'Qt_Saldo'
      DisplayFormat = '#,###.###'
      Calculated = True
    end
    object ADODsTerceirosQt_Devedor: TFloatField
      DisplayLabel = 'Devedor'
      FieldKind = fkCalculated
      FieldName = 'Qt_Devedor'
      DisplayFormat = '#,###.###'
      Calculated = True
    end
    object ADODsTerceirosQt_Excesso: TFloatField
      DisplayLabel = 'Excesso'
      FieldKind = fkCalculated
      FieldName = 'Qt_Excesso'
      DisplayFormat = '#,###.###'
      Calculated = True
    end
    object ADODsTerceirosQt_Item: TBCDField
      DisplayLabel = 'Est. M'#237'nimo'
      FieldName = 'Qt_Item'
      DisplayFormat = '#,###.###'
      Precision = 13
      Size = 3
    end
  end
  object DsTerceiros: TDataSource
    DataSet = ADODsTerceiros
    Left = 28
    Top = 205
  end
end
