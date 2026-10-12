object FrmOrcamento_ProdSelect: TFrmOrcamento_ProdSelect
  Left = 185
  Top = 233
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Sele'#231#227'o de Produto'
  ClientHeight = 450
  ClientWidth = 906
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
  PixelsPerInch = 96
  TextHeight = 13
  object PnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 21
    Height = 450
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 885
    Height = 450
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object Label1: TLabel
      Left = 5
      Top = 3
      Width = 45
      Height = 13
      Caption = 'Produtos:'
    end
    object BvlSeparator: TBevel
      Left = 3
      Top = 420
      Width = 878
      Height = 5
      Shape = bsTopLine
    end
    object DBTextLaboratorio: TDBText
      Left = 64
      Top = 425
      Width = 304
      Height = 25
      DataField = 'Nm_Laboratorio'
      DataSource = DsProdLista
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 6
      Top = 423
      Width = 56
      Height = 13
      Caption = 'Laborat'#243'rio:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object SbFaltas: TSpeedButton
      Left = 649
      Top = 425
      Width = 61
      Height = 22
      Caption = '&Faltas'
      Flat = True
      Glyph.Data = {binary 458 bytes}
      OnClick = SbFaltasClick
    end
    object DbTxtProduto: TDBText
      Left = 56
      Top = 3
      Width = 513
      Height = 13
      DataField = 'nm_produto'
      DataSource = DsProdLista
    end
    object SbOldNegocio: TSpeedButton
      Left = 554
      Top = 425
      Width = 93
      Height = 22
      Caption = '&Negocia'#231#245'es'
      Flat = True
      Glyph.Data = {binary 458 bytes}
      OnClick = SbOldNegocioClick
    end
    object BitBtnConfirm: TBitBtn
      Left = 712
      Top = 423
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 1
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 798
      Top = 423
      Width = 85
      Height = 25
      Cancel = True
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 2
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object DbGProdutos: TDBGrid
      Left = 5
      Top = 16
      Width = 874
      Height = 401
      DataSource = DsProdLista
      FixedColor = clSilver
      Options = [dgTitles, dgRowLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = BitBtnConfirmClick
      OnEnter = DbGProdutosEnter
      OnExit = DbGProdutosExit
      OnKeyPress = DbGProdutosKeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'cd_produto'
          Title.Alignment = taRightJustify
          Width = 71
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nm_produto'
          Width = 410
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nm_Laboratorio'
          Width = 160
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cd_barra'
          Width = 86
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'qt_estoque'
          Title.Alignment = taRightJustify
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'vl_venda'
          Title.Alignment = taRightJustify
          Width = 67
          Visible = True
        end>
    end
  end
  object DsProdLista: TDataSource
    DataSet = FrmOrcamento.ADODsProdSelect
    Left = 31
    Top = 185
  end
end
