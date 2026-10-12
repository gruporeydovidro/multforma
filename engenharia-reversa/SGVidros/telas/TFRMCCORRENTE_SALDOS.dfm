object FrmCCorrente_Saldos: TFrmCCorrente_Saldos
  Left = 294
  Top = 173
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Saldo Mensal de Caixa'
  ClientHeight = 257
  ClientWidth = 562
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
    Height = 257
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 541
    Height = 257
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object Label1: TLabel
      Left = 5
      Top = 2
      Width = 35
      Height = 13
      Caption = 'Saldos:'
    end
    object DbGSaldos: TDBGrid
      Left = 5
      Top = 15
      Width = 532
      Height = 237
      DataSource = DsSaldos
      FixedColor = clSilver
      Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnEnter = DbGSaldosEnter
      OnExit = DbGSaldosExit
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Ds_Mes'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Vl_SaldoAnterior'
          Title.Alignment = taRightJustify
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Vl_Credito'
          Title.Alignment = taRightJustify
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Vl_Debito'
          Title.Alignment = taRightJustify
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Vl_Diferenca'
          Title.Alignment = taRightJustify
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Vl_SaldoAtual'
          Title.Alignment = taRightJustify
          Visible = True
        end>
    end
  end
  object ADODsSaldos: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    OnCalcFields = ADODsSaldosCalcFields
    CommandText = 'select'#13#10'  C.Id_Conta,'#13#10'  Convert( VarChar( 7 ), C.Dt_Lancamento, 102 ) as Cd_Mes,'#13#10'  Sum( ( case when H.Tp_Historico = ''''1'''' then C.Vl_Lancamento else 0.0 end ) ) as Vl_Debito,'#13#10'  Sum( ( case when H.Tp_Historico = ''''2'''' then C.Vl_Lancamento else 0.0 end ) ) as Vl_Credito,'#13#10'  Vl_SaldoAnterior = '#13#10'    ('#13#10#9'  select'#13#10#9'    Sum( OldC.Vl_Lancamento * ( case when OldH.Tp_Historico = ''''1'''' then -1 else 1 end ) )'#13#10#13#10#9'  from'#13#10#9'    CCorrente_Lancto OldC'#13#10#13#10#9'  inner join'#13#10#9'    Historico OldH'#13#10'   '#9'on'#13#10#9'    OldH.Cd_Historico = OldC.Cd_Historico'#13#10#13#10#9'  where'#13#10#9'    OldC.Id_Conta = C.Id_Conta and'#13#10'  '#9'    Convert( VarChar( 7 ), OldC.Dt_Lancamento, 102 ) < Convert( VarChar( 7 ), C.Dt_Lancamento, 102 )'#13#10#9'),'#13#10'  Vl_Diferenca ='#13#10'    Sum( ( case when H.Tp_Historico = ''''2'''' then C.Vl_Lancamento else 0.0 end ) ) -'#13#10'    Sum( ( case when H.Tp_Historico = ''''1'''' then C.Vl_Lancamento else 0.0 end ) ) '#13#10#13#10'from'#13#10'  CCorrente_Lancto C'#13#10#13#10'inner join'#13#10'  Historico H'#13#10'on'#13#10'  H.Cd_Historico = C.Cd_Historico'#13#10'  '#13#10'where'#13#10'  C.Id_Conta = :Id_Conta'#13#10#13#10'group by'#13#10'  C.Id_Conta, Convert( VarChar( 7 ), C.Dt_Lancamento, 102 )'#13#10#13#10'order by'#13#10'  2 desc'
    Parameters = <
      item
        Name = 'Id_Conta'
        DataType = ftSmallint
        Size = -1
        Value = 1
      end>
    Left = 80
    Top = 184
    object ADODsSaldosCd_Mes: TStringField
      FieldName = 'Cd_Mes'
      ReadOnly = True
      Size = 7
    end
    object ADODsSaldosDs_Mes: TStringField
      DisplayLabel = 'M'#234's'
      FieldKind = fkCalculated
      FieldName = 'Ds_Mes'
      Calculated = True
    end
    object ADODsSaldosVl_Debito: TBCDField
      DisplayLabel = 'D'#233'bitos'
      FieldName = 'Vl_Debito'
      ReadOnly = True
      DisplayFormat = '#,##0.00'
      Precision = 32
      Size = 3
    end
    object ADODsSaldosVl_Credito: TBCDField
      DisplayLabel = 'Cr'#233'ditos'
      FieldName = 'Vl_Credito'
      ReadOnly = True
      DisplayFormat = '#,##0.00'
      Precision = 32
      Size = 3
    end
    object ADODsSaldosVl_SaldoAnterior: TBCDField
      DisplayLabel = 'Saldo Anterior'
      FieldName = 'Vl_SaldoAnterior'
      ReadOnly = True
      DisplayFormat = '#,##0.00'
      Precision = 32
      Size = 3
    end
    object ADODsSaldosVl_SaldoAtual: TFloatField
      DisplayLabel = 'Saldo Atual'
      FieldKind = fkCalculated
      FieldName = 'Vl_SaldoAtual'
      DisplayFormat = '#,##0.00'
      Calculated = True
    end
    object ADODsSaldosId_Conta: TSmallintField
      FieldName = 'Id_Conta'
    end
    object ADODsSaldosVl_Diferenca: TBCDField
      DisplayLabel = 'Diferen'#231'a'
      FieldName = 'Vl_Diferenca'
      ReadOnly = True
      DisplayFormat = '#,##0.00'
      Precision = 32
      Size = 2
    end
  end
  object DsSaldos: TDataSource
    DataSet = ADODsSaldos
    Left = 48
    Top = 184
  end
end
