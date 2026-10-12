object FrmCompra_Find: TFrmCompra_Find
  Left = 314
  Top = 225
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Consulta de Pedido de Compra'
  ClientHeight = 321
  ClientWidth = 647
  Color = clWhite
  Ctl3D = False
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object PnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 21
    Height = 321
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 626
    Height = 321
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 1
      Top = 292
      Width = 621
      Height = 5
      Shape = bsTopLine
    end
    object BitBtnConfirm: TBitBtn
      Left = 453
      Top = 295
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 1
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 540
      Top = 295
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 2
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object PgFind: TPageControl
      Left = 1
      Top = 2
      Width = 620
      Height = 286
      ActivePage = TabSEmitente
      TabOrder = 0
      object TabSNumero: TTabSheet
        Caption = '                  &N'#250'mero do Pedido de Compra                  '
        object Label1: TLabel
          Left = 1
          Top = -1
          Width = 39
          Height = 13
          Caption = 'Compra:'
        end
        object BvlSeparator_1: TBevel
          Left = 0
          Top = 35
          Width = 608
          Height = 5
          Shape = bsTopLine
        end
        object Label2: TLabel
          Left = 6
          Top = 39
          Width = 139
          Height = 13
          Caption = 'Resultado da Consulta:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
        end
        object EdtNr_CompraFind: TCurrencyEdit
          Left = 1
          Top = 13
          Width = 50
          Height = 19
          Margins.Left = 2
          Margins.Top = 2
          AutoSize = False
          DecimalPlaces = 0
          DisplayFormat = '###'
          TabOrder = 0
          OnDblClick = EdtNr_CompraFindDblClick
          OnKeyPress = EdtNr_CompraFindKeyPress
        end
        object DbGNumero: TDBGrid
          Left = 1
          Top = 55
          Width = 609
          Height = 201
          DataSource = DsNumero
          FixedColor = clSilver
          Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDblClick = BitBtnConfirmClick
          OnEnter = DbGNumeroEnter
          OnExit = DbGNumeroExit
          OnKeyPress = DbGNumeroKeyPress
          Columns = <
            item
              Expanded = False
              FieldName = 'nr_compra'
              Width = 46
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'nm_emitente'
              Width = 307
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'dt_emissao'
              Title.Alignment = taCenter
              Width = 65
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'nr_pedido_emitente'
              Width = 170
              Visible = True
            end>
        end
      end
      object TabSEmitente: TTabSheet
        Caption = '                       &Fornecedor                       '
        ImageIndex = 1
        object Label10: TLabel
          Left = 1
          Top = -1
          Width = 57
          Height = 13
          Caption = 'Fornecedor:'
        end
        object SbFornecedor: TSpeedButton
          Left = 51
          Top = 13
          Width = 23
          Height = 19
          Hint = 'Seleciona Fornecedor'
          Flat = True
          Glyph.Data = {binary 1430 bytes}
          NumGlyphs = 2
          ParentShowHint = False
          ShowHint = True
          OnClick = SbFornecedorClick
        end
        object Label4: TLabel
          Left = 1
          Top = 39
          Width = 139
          Height = 13
          Caption = 'Resultado da Consulta:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
        end
        object BvlSeparator_2: TBevel
          Left = 0
          Top = 35
          Width = 608
          Height = 5
          Shape = bsTopLine
        end
        object EdtCd_EmitFind: TCurrencyEdit
          Left = 1
          Top = 13
          Width = 50
          Height = 19
          Margins.Left = 2
          Margins.Top = 2
          AutoSize = False
          DecimalPlaces = 0
          DisplayFormat = '####'
          TabOrder = 0
          OnExit = EdtCd_EmitFindExit
          OnKeyPress = EdtCd_EmitFindKeyPress
        end
        object EdtNm_EmitFind: TEdit
          Left = 75
          Top = 13
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
          TabOrder = 1
        end
        object DbGCliente: TDBGrid
          Left = 1
          Top = 55
          Width = 609
          Height = 201
          DataSource = DsCliente
          FixedColor = clSilver
          Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 2
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDblClick = BitBtnConfirmClick
          OnEnter = DbGNumeroEnter
          OnExit = DbGNumeroExit
          OnKeyPress = DbGClienteKeyPress
          Columns = <
            item
              Expanded = False
              FieldName = 'nr_compra'
              Width = 41
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'dt_emissao'
              Title.Alignment = taCenter
              Width = 61
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'pr_desconto'
              Title.Alignment = taRightJustify
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'vl_desconto'
              Title.Alignment = taRightJustify
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'pr_custo'
              Title.Alignment = taRightJustify
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'vl_custo'
              Title.Alignment = taRightJustify
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'nr_pedido_emitente'
              Width = 206
              Visible = True
            end>
        end
      end
    end
  end
  object ADODsNumero: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  A.Nr_Compra, A.Cd_Emitente, B.Nm_Emitente, A.Dt_Emissao, A.Nr_Pedido_Emitente'#13#10#13#10'from'#13#10'  Compra A'#13#10#13#10'left join'#13#10'  Emitente B'#13#10'on'#13#10'  B.Cd_Emitente = A.Cd_Emitente'#13#10#13#10'where'#13#10'  A.Cd_Filial  = :Cd_Filial and'#13#10'  A.Nr_Compra >= :Nr_Compra'#13#10#13#10'order by'#13#10'  A.Nr_Compra'
    Parameters = <
      item
        Name = 'Cd_Filial'
        DataType = ftSmallint
        Size = -1
        Value = 1
      end
      item
        Name = 'Nr_Compra'
        DataType = ftInteger
        Size = -1
        Value = 1
      end>
    Left = 55
    Top = 292
    object ADODsNumeronr_compra: TIntegerField
      DisplayLabel = 'Compra'
      FieldName = 'nr_compra'
    end
    object ADODsNumerocd_emitente: TIntegerField
      FieldName = 'cd_emitente'
    end
    object ADODsNumeronm_emitente: TStringField
      DisplayLabel = 'Fornecedor'
      FieldName = 'nm_emitente'
      Size = 50
    end
    object ADODsNumerodt_emissao: TDateTimeField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'dt_emissao'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object ADODsNumeronr_pedido_emitente: TStringField
      DisplayLabel = 'N'#250'mero do Pedido no Fornecedor'
      FieldName = 'nr_pedido_emitente'
      Size = 30
    end
  end
  object ADODsEmitente: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  A.Nr_Compra, A.Dt_Emissao, A.Pr_Desconto, A.Vl_Desconto, A.Pr_Custo,'#13#10'  A.Vl_Custo, A.Nr_Pedido_Emitente'#13#10#13#10'from'#13#10'  Compra A'#13#10#13#10'where'#13#10'  A.Cd_Filial   = :Cd_Filial and'#13#10'  A.Cd_Emitente = :Cd_Emitente'#13#10#13#10'order by'#13#10'  A.Nr_Compra desc'
    Parameters = <
      item
        Name = 'Cd_Filial'
        DataType = ftSmallint
        Size = -1
        Value = 1
      end
      item
        Name = 'Cd_Emitente'
        DataType = ftInteger
        Size = -1
        Value = 1
      end>
    Left = 122
    Top = 293
    object ADODsEmitentenr_compra: TIntegerField
      DisplayLabel = 'Compra'
      FieldName = 'nr_compra'
    end
    object ADODsEmitentedt_emissao: TDateTimeField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'dt_emissao'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object ADODsEmitentepr_desconto: TBCDField
      DisplayLabel = '% Desconto'
      FieldName = 'pr_desconto'
      DisplayFormat = '#,##0.00'
      Precision = 7
      Size = 2
    end
    object ADODsEmitentevl_desconto: TBCDField
      DisplayLabel = 'Valor Desconto'
      FieldName = 'vl_desconto'
      DisplayFormat = '#,##0.00'
      Precision = 12
      Size = 2
    end
    object ADODsEmitentepr_custo: TBCDField
      DisplayLabel = '% Custo'
      FieldName = 'pr_custo'
      DisplayFormat = '#,##0.00'
      Precision = 7
      Size = 2
    end
    object ADODsEmitentevl_custo: TBCDField
      DisplayLabel = 'Valor Custo'
      FieldName = 'vl_custo'
      DisplayFormat = '#,##0.00'
      Precision = 12
      Size = 2
    end
    object ADODsEmitentenr_pedido_emitente: TStringField
      DisplayLabel = 'N'#250'mero do Pedido no Fornecedor'
      FieldName = 'nr_pedido_emitente'
      Size = 30
    end
  end
  object DsCliente: TDataSource
    DataSet = ADODsEmitente
    Left = 92
    Top = 293
  end
  object DsNumero: TDataSource
    DataSet = ADODsNumero
    Left = 25
    Top = 292
  end
end
