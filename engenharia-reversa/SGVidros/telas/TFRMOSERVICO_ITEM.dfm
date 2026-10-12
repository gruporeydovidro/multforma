object FrmOServico_Item: TFrmOServico_Item
  Left = 287
  Top = 224
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Ordem de Servi'#231'o'
  ClientHeight = 229
  ClientWidth = 592
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 21
    Height = 229
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 571
    Height = 229
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 1
      Top = 199
      Width = 565
      Height = 5
      Shape = bsTopLine
    end
    object Label10: TLabel
      Left = 5
      Top = 2
      Width = 40
      Height = 13
      Caption = 'Produto:'
    end
    object SbProduto: TSpeedButton
      Left = 58
      Top = 17
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
    object Label5: TLabel
      Left = 5
      Top = 75
      Width = 66
      Height = 13
      Caption = 'Observa'#231#245'es:'
    end
    object Label3: TLabel
      Left = 5
      Top = 38
      Width = 58
      Height = 13
      Caption = 'Funcion'#225'rio:'
    end
    object SbFuncionario: TSpeedButton
      Left = 45
      Top = 53
      Width = 23
      Height = 19
      Hint = 'Seleciona Vendedor'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbFuncionarioClick
    end
    object BitBtnConfirm: TBitBtn
      Left = 398
      Top = 202
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 5
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 484
      Top = 202
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 6
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object EdtCd_Produto: TCurrencyEdit
      Tag = 1
      Left = 5
      Top = 17
      Width = 50
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '####'
      TabOrder = 0
      OnExit = EdtCd_ProdutoExit
      OnKeyDown = EdtCd_ProdutoKeyDown
    end
    object EdtNm_Produto: TEdit
      Left = 83
      Top = 17
      Width = 480
      Height = 19
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 120
      ParentFont = False
      TabOrder = 1
    end
    object MmObsItem: TMemo
      Left = 5
      Top = 91
      Width = 558
      Height = 104
      ScrollBars = ssVertical
      TabOrder = 4
    end
    object EdtCd_Funcionario: TCurrencyEdit
      Tag = 2
      Left = 5
      Top = 53
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 2
      OnExit = EdtCd_FuncionarioExit
      OnKeyDown = EdtCd_ProdutoKeyDown
    end
    object EdtNm_Funcionario: TEdit
      Left = 69
      Top = 53
      Width = 308
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
  end
  object ADOCmdItem: TMultADOCMD
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLInsert.Strings = (
      'insert into OServico_Item( Cd_Filial, Nr_OS, Nr_Item, Cd_Produto,'
      '  Nm_Produto, Mm_ObsItem, Cd_Funcionario )'
      'values( :Cd_Filial, :Nr_OS, :Nr_Item, :Cd_Produto, :Nm_Produto, :Mm_ObsItem,'
      '  :Cd_Funcionario )'
    )
    SQLUpdate.Strings = (
      'update'
      '  OServico_Item'
      ''
      'set'
      '  Cd_Produto     = :Cd_Produto,'
      '  Nm_Produto     = :Nm_Produto,'
      '  Mm_ObsItem     = :Mm_ObsItem,'
      '  Cd_Funcionario = :Cd_Funcionario'
      ''
      'where'
      '  Cd_Filial  = :Cd_Filial and'
      '  Nr_OS      = :Nr_OS and'
      '  Nr_Item    = :Nr_Item'
    )
    Left = 30
    Top = 135
  end
  object ADODsPrimary: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'select'#13#10'  max( Nr_Item ) as NewItem'#13#10#13#10'from'#13#10'  OServico_Item'#13#10#13#10'where'#13#10'  Cd_Filial = :Cd_Filial and'#13#10'  Nr_OS     = :Nr_OS'#13#10
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
        Name = 'Nr_OS'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = nil?
      end>
    Left = 64
    Top = 136
    object ADODsPrimaryNewItem: TSmallintField
      FieldName = 'NewItem'
      ReadOnly = True
    end
  end
end
