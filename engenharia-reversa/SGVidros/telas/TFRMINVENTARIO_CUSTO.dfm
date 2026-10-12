object FrmInventario_Custo: TFrmInventario_Custo
  Left = 294
  Top = 173
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Altera'#231#227'o do Custo unit'#225'rio do Produto'
  ClientHeight = 103
  ClientWidth = 423
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
    Height = 103
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 402
    Height = 103
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 1
      Top = 73
      Width = 395
      Height = 5
      Shape = bsTopLine
    end
    object Label6: TLabel
      Left = 5
      Top = 2
      Width = 201
      Height = 13
      Caption = 'Valor a aplicar ( Percentual ou Monet'#225'rio ):'
      Transparent = True
    end
    object BitBtnPercentual: TBitBtn
      Tag = 2
      Left = 229
      Top = 76
      Width = 85
      Height = 25
      Caption = '&Percentual'
      TabOrder = 2
      OnClick = BitBtnMonetarioClick
      Glyph.Data = {binary 1082 bytes}
    end
    object BitBtnCancel: TBitBtn
      Left = 315
      Top = 76
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 3
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object EdtVl_Aplicar: TCurrencyEdit
      Tag = 1
      Left = 5
      Top = 17
      Width = 90
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 3
      DisplayFormat = '#,##0.00#'
      TabOrder = 0
    end
    object BitBtnMonetario: TBitBtn
      Tag = 1
      Left = 144
      Top = 76
      Width = 85
      Height = 25
      Caption = '&Monet'#225'rio'
      TabOrder = 1
      OnClick = BitBtnMonetarioClick
      Glyph.Data = {binary 1082 bytes}
    end
  end
  object ADOCmdCusto: TMultADOCMD
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLOther0.Strings = (
      '-------------------- Anual - Alterar pelo valor'
      'update'
      '  Inventario_Produto'
      ''
      'set'
      '  Vl_Custo = Vl_Custo + :Vl_Aplicar'
      ''
      'where'
      '  Cd_Filial = :Cd_Filial and'
      '  Nr_Ano    = :Nr_Ano'
    )
    SQLOther1.Strings = (
      '-------------------- Anual - Alterar pelo percentual'
      'update'
      '  Inventario_Produto'
      ''
      'set'
      '  Vl_Custo = Vl_Custo + ( Vl_Custo / 100.0 * :Vl_Aplicar )'
      ''
      'where'
      '  Cd_Filial = :Cd_Filial and'
      '  Nr_Ano    = :Nr_Ano and'
      '  Vl_Custo  > 0.0'
    )
    SQLOther2.Strings = (
      '-------------------- Mensal - Alterar pelo valor'
      'update'
      '  Inventario_Mensal_Produto'
      ''
      'set'
      '  Vl_Custo = Vl_Custo + :Vl_Aplicar'
      ''
      'where'
      '  Cd_Filial  = :Cd_Filial and'
      '  Cd_Periodo = :Cd_Periodo'
    )
    SQLOther3.Strings = (
      '-------------------- Mensal - Alterar pelo percentual'
      'update'
      '  Inventario_Mensal_Produto'
      ''
      'set'
      '  Vl_Custo = Vl_Custo + ( Vl_Custo / 100.0 * :Vl_Aplicar )'
      ''
      'where'
      '  Cd_Filial  = :Cd_Filial and'
      '  Cd_Periodo = :Cd_Periodo and'
      '  Vl_Custo  > 0.0'
      ''
    )
    SQLOther4.Strings = (
      '-------------------- Trimestral - Alterar pelo valor'
      'update'
      '  Inventario_Trimestral_Produto'
      ''
      'set'
      '  Vl_Custo = Vl_Custo + :Vl_Aplicar'
      ''
      'where'
      '  Cd_Filial = :Cd_Filial and'
      '  Nr_Ano    = :Nr_Ano'
      ''
    )
    SQLOther5.Strings = (
      '-------------------- Trimestral - Alterar pelo percentual'
      'update'
      '  Inventario_Trimestral_Produto'
      ''
      'set'
      '  Vl_Custo = Vl_Custo + ( Vl_Custo / 100.0 * :Vl_Aplicar )'
      ''
      'where'
      '  Cd_Filial = :Cd_Filial and'
      '  Nr_Ano    = :Nr_Ano and'
      '  Vl_Custo  > 0.0'
    )
    Left = 50
    Top = 70
  end
end
