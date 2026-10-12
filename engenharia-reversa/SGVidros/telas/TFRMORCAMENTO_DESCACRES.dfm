object FrmOrcamento_DescAcres: TFrmOrcamento_DescAcres
  Left = 294
  Top = 173
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Desconto / Acr'#233'scimo no valor unit'#225'rio dos itens'
  ClientHeight = 215
  ClientWidth = 634
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
    Height = 215
    Align = alLeft
    TabOrder = 0
    ExplicitHeight = 470
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 613
    Height = 215
    Align = alClient
    ParentColor = True
    TabOrder = 1
    ExplicitWidth = 753
    ExplicitHeight = 470
    object BvlSeparator: TBevel
      Left = 3
      Top = 185
      Width = 605
      Height = 5
      Shape = bsTopLine
    end
    object LblDesconto: TLabel
      Left = 5
      Top = 3
      Width = 95
      Height = 13
      Caption = 'Percentual a Aplicar'
      FocusControl = EdtPr_Aplicar
    end
    object BitBtnDesconto: TBitBtn
      Tag = 2
      Left = 440
      Top = 188
      Width = 85
      Height = 25
      Caption = '&Desconto'
      TabOrder = 2
      OnClick = BitBtnAcrescimoClick
      Glyph.Data = {binary 426 bytes}
    end
    object BitBtnCancel: TBitBtn
      Left = 526
      Top = 188
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 3
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object EdtPr_Aplicar: TCurrencyEdit
      Tag = 1
      Left = 5
      Top = 18
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 3
      DisplayFormat = '#,##0.00#'
      TabOrder = 0
    end
    object BitBtnAcrescimo: TBitBtn
      Tag = 1
      Left = 354
      Top = 188
      Width = 85
      Height = 25
      Caption = '&Acr'#233'scimo'
      TabOrder = 1
      OnClick = BitBtnAcrescimoClick
      Glyph.Data = {binary 426 bytes}
    end
  end
  object ADOCmdPercentual: TADOCommand
    CommandText = '-------------------- Recalculo do valur unit'#225'rio'#13#10'declare'#13#10'  @Cd_Filial SmallInt,'#13#10'  @Nr_Orcamento Int,  '#13#10'  @Pr_Aplicar Numeric( 9, 4 )'#13#10#13#10'select'#13#10'  @Cd_Filial    = :Cd_Filial,'#13#10'  @Nr_Orcamento = :Nr_Orcamento,  '#13#10'  @Pr_Aplicar   = :Pr_Aplicar'#13#10#13#10'-------------------- Itens de Venda'#13#10'update'#13#10'  Orcamento_Item'#13#10#13#10'set'#13#10'  Vl_Unitario = Vl_Unitario - ( Vl_Unitario / 100.0 * @Pr_Aplicar )'#13#10'  '#13#10'where'#13#10'  Cd_Filial    = @Cd_Filial and'#13#10'  Nr_Orcamento = @Nr_Orcamento '#13#10#13#10'-------------------- Itens de Conjunto'#13#10'update'#13#10'  Orcamento_Conjunto'#13#10#13#10'set'#13#10'  Vl_Unitario = Vl_Unitario - ( Vl_Unitario / 100.0 * @Pr_Aplicar )'#13#10#13#10'where'#13#10'  Cd_Filial    = @Cd_Filial and'#13#10'  Nr_Orcamento = @Nr_Orcamento'#13#10#13#10'-------------------- Valor total do conjunto nos itens'#13#10'update'#13#10'  Orcamento_Item'#13#10#13#10'set'#13#10'  Vl_Unitario ='#13#10'    ('#13#10'    select'#13#10'      sum( OC.Qt_Item * OC.Vl_Unitario )'#13#10#13#10'    from'#13#10'      Orcamento_Conjunto OC'#13#10#13#10'    where'#13#10'      OC.Cd_Filial    = OI.Cd_Filial and'#13#10'      OC.Nr_Orcamento = OI.Nr_Orcamento and'#13#10'      OC.Nr_Item      = OI.Nr_Item'#13#10'    )'#13#10#13#10'from'#13#10'  Orcamento_Item OI'#13#10#13#10'inner join'#13#10'  Produto P'#13#10'on'#13#10'  P.Cd_Produto = OI.Cd_Produto and'#13#10'  P.Fl_Produto = ''''3'''#13#10#13#10'where'#13#10'  OI.Cd_Filial    = @Cd_Filial and'#13#10'  OI.Nr_Orcamento = @Nr_Orcamento'#13#10#13#10'-------------------- Valor dos itens de projeto'#13#10'update'#13#10'  Orcamento_Projeto_Item'#13#10#13#10'set'#13#10'  Vl_Unitario = Vl_Unitario - ( Vl_Unitario / 100.0 * @Pr_Aplicar )'#13#10'  '#13#10'where'#13#10'  Cd_Filial    = @Cd_Filial and'#13#10'  Nr_Orcamento = @Nr_Orcamento'#13#10#13#10'-------------------- Valor dos projetos'#13#10'update'#13#10'  Orcamento_Projeto'#13#10#13#10'set'#13#10'  Vl_Projeto ='#13#10'    ('#13#10'    select'#13#10'      sum( OPI.Vl_Unitario * OPI.Qt_Item )'#13#10#13#10'    from'#13#10'      Orcamento_Projeto_Item OPI'#13#10#13#10'    inner join'#13#10'      Produto P'#13#10'    on'#13#10'      P.Cd_Produto = OPI.Cd_Produto'#13#10#13#10'    where'#13#10'      OPI.Cd_Filial    = Orcamento_Projeto.Cd_Filial and'#13#10'      OPI.Nr_Orcamento = Orcamento_Projeto.Nr_Orcamento and'#13#10'      OPI.Nr_Projeto   = Orcamento_Projeto.Nr_Projeto'#13#10'    )'#13#10#13#10'where'#13#10'  Cd_Filial    = @Cd_Filial and'#13#10'  Nr_Orcamento = @Nr_Orcamento'
    Connection = FrmMain.ADOConMaster
    Parameters = <
      item
        Name = 'Cd_Filial'
        Size = -1
        Value = nil?
      end
      item
        Name = 'Nr_Orcamento'
        Size = -1
        Value = nil?
      end
      item
        Name = 'Pr_Aplicar'
        Size = -1
        Value = nil?
      end>
    Left = 392
    Top = 56
  end
end
