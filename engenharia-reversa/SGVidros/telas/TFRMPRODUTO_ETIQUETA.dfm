object FrmProduto_Etiqueta: TFrmProduto_Etiqueta
  Left = 359
  Top = 208
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Impress'#227'o de Etiquetas'
  ClientHeight = 291
  ClientWidth = 650
  Color = clWhite
  Ctl3D = False
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 21
    Height = 291
    Align = alLeft
    TabOrder = 0
    ExplicitHeight = 182
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 629
    Height = 291
    Align = alClient
    ParentColor = True
    TabOrder = 1
    ExplicitLeft = 27
    object BvlSeparator: TBevel
      Left = 6
      Top = 261
      Width = 618
      Height = 5
      Shape = bsTopLine
    end
    object Label2: TLabel
      Left = 5
      Top = 38
      Width = 40
      Height = 13
      Caption = 'Produto:'
    end
    object SbProdutoSel: TSpeedButton
      Tag = 1
      Left = 66
      Top = 53
      Width = 23
      Height = 19
      Hint = 'Consulta de Produto'
      Flat = True
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
      OnClick = SbProdutoSelClick
    end
    object Label22: TLabel
      Left = 5
      Top = 76
      Width = 87
      Height = 13
      Caption = 'Tabela de Pre'#231'os:'
    end
    object SbTabPreco: TSpeedButton
      Left = 115
      Top = 91
      Width = 23
      Height = 19
      Hint = 'Seleciona Tabela de Pre'#231'o'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbTabPrecoClick
    end
    object Label1: TLabel
      Left = 143
      Top = 75
      Width = 58
      Height = 13
      Caption = 'Quantidade:'
    end
    object Label3: TLabel
      Left = 270
      Top = 113
      Width = 27
      Height = 13
      Caption = 'Valor:'
    end
    object BitBtnReport: TBitBtn
      Left = 456
      Top = 264
      Width = 85
      Height = 25
      Caption = '&Imprimir'
      TabOrder = 8
      OnClick = BitBtnReportClick
      Glyph.Data = {binary 250 bytes}
    end
    object BitBtnCancel: TBitBtn
      Left = 542
      Top = 264
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 9
      OnClick = BitBtnCancelClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object EdtNm_Filial: TLabeledEdit
      Left = 5
      Top = 17
      Width = 166
      Height = 19
      EditLabel.Width = 161
      EditLabel.Height = 13
      EditLabel.Caption = 'Nome da Empresa a ser Impresso:'
      LabelSpacing = 2
      MaxLength = 16
      TabOrder = 0
    end
    object EdtCd_ProdutoSel: TCurrencyEdit
      Tag = 1
      Left = 5
      Top = 53
      Width = 60
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '####'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnExit = EdtCd_ProdutoSelExit
      OnKeyDown = EdtCd_ProdutoSelKeyDown
    end
    object EdtNm_ProdutoSel: TEdit
      Left = 92
      Top = 53
      Width = 427
      Height = 19
      TabStop = False
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
    end
    object EdtCd_Tabela: TEdit
      Left = 5
      Top = 91
      Width = 110
      Height = 19
      TabOrder = 3
      OnExit = EdtCd_TabelaExit
      OnKeyDown = EdtCd_ProdutoSelKeyDown
    end
    object EdtNr_Etiquetas: TRxSpinEdit
      Left = 143
      Top = 90
      Width = 49
      Height = 19
      Increment = 5.0
      MaxValue = 1000000.0
      MinValue = 5.0
      Value = 5.0
      TabOrder = 4
    end
    object EdtNm_AbreviadoSel: TLabeledEdit
      Left = 5
      Top = 128
      Width = 121
      Height = 19
      EditLabel.Width = 260
      EditLabel.Height = 13
      EditLabel.Caption = 'Nome do Produto a Imprimir (16 caracteres no m'#225'ximo):'
      LabelSpacing = 2
      MaxLength = 16
      TabOrder = 5
    end
    object EdtVl_Venda: TCurrencyEdit
      Left = 270
      Top = 128
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      TabOrder = 6
    end
    object EdtDs_Path_PRN: TLabeledEdit
      Left = 5
      Top = 164
      Width = 308
      Height = 19
      AutoSelect = False
      EditLabel.Width = 226
      EditLabel.Height = 13
      EditLabel.Caption = 'Localiza'#231#227'o da Impressora - impress'#227'o matricial:'
      LabelSpacing = 2
      MaxLength = 100
      TabOrder = 7
    end
  end
  object ADODsEtiqueta: TADODataSet
    Connection = FrmMain.ADOConMaster
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  P.Nm_Abreviado, PP.Vl_Venda, PP.Vl_Promocao'#13#10#13#10'from'#13#10'  Produto P'#13#10#13#10'inner join'#13#10'  Produto_Preco PP'#13#10'on'#13#10'  PP.Cd_Tabela  = :Cd_Tabela and'#13#10'  PP.Cd_Produto = P.Cd_Produto'#13#10#13#10'where'#13#10'  P.Cd_Produto = :Cd_Produto'
    Parameters = <
      item
        Name = 'Cd_Tabela'
        DataType = ftString
        Size = -1
        Value = nil?
      end
      item
        Name = 'Cd_Produto'
        DataType = ftInteger
        Size = -1
        Value = nil?
      end>
    Left = 275
    Top = 10
    object ADODsEtiquetanm_abreviado: TStringField
      FieldName = 'nm_abreviado'
      Size = 40
    end
    object ADODsEtiquetavl_venda: TBCDField
      FieldName = 'vl_venda'
      Precision = 12
      Size = 3
    end
    object ADODsEtiquetavl_promocao: TBCDField
      FieldName = 'vl_promocao'
      Precision = 12
      Size = 3
    end
  end
end
