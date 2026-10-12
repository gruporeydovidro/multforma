inherited frlDANFeRLEtiqueta: TfrlDANFeRLEtiqueta
  Left = 487
  Top = 95
  Caption = 'DANFe - Etiqueta'
  ClientHeight = 856
  ClientWidth = 1098
  Font.Height = -8
  Font.Name = 'Arial'
  Font.Style = [fsBold]
  TextHeight = 10
  inherited RLNFe: TRLReport
    Tag = 1
    Left = 176
    Top = 24
    Width = 416
    Height = 605
    AllowedBands = [btHeader, btDetail, btSummary, btFooter]
    Background.Arrange = baCenter
    Font.Height = -8
    Font.Name = 'Courier New'
    PageSetup.PaperSize = fpCustom
    PageSetup.PaperWidth = 110.0
    PageSetup.PaperHeight = 160.0
    UnlimitedHeight = True
    BeforePrint = RLNFeBeforePrint
    OnDataRecord = RLNFeDataRecord
    object rlb01_Chave: TRLBand
      Left = 38
      Top = 200
      Width = 340
      Height = 116
      AutoSize = True
      BandType = btTitle
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Courier New'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      BeforePrint = rlb01_ChaveBeforePrint
      object rllChave: TRLLabel
        Left = 3
        Top = 21
        Width = 339
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object rllDescricao: TRLLabel
        Left = 45
        Top = 81
        Width = 256
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = 'Protocolo de Autoriza'#231#227'o:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object rllProtocolo: TRLLabel
        Left = 45
        Top = 100
        Width = 256
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object RLBarcode1: TRLBarcode
        Left = 4
        Top = 42
        Width = 334
        Height = 36
        Margins.LeftMargin = 1.0
        Margins.RightMargin = 1.0
        Alignment = taCenter
        AutoSize = False
        BarcodeType = bcCode128C
      end
      object RLLabel12: TRLLabel
        Left = 0
        Top = 0
        Width = 340
        Height = 20
        Align = faTop
        Alignment = taCenter
        AutoSize = False
        Caption = 'Chave de Acesso para Consulta'
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
    end
    object rlb02_Emitente: TRLBand
      Left = 38
      Top = 38
      Width = 340
      Height = 162
      BandType = btTitle
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = False
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Courier New'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      BeforePrint = rlb02_EmitenteBeforePrint
      object rliLogo: TRLImage
        Left = 5
        Top = 5
        Width = 88
        Height = 65
        Center = True
        Picture.Data = {binary 11158 bytes}
        Stretch = True
      end
      object rlmEmitente: TRLMemo
        Left = 5
        Top = 98
        Width = 332
        Height = 61
        AutoSize = False
        Behavior = [beSiteExpander]
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object RLLabel17: TRLLabel
        Left = 152
        Top = 4
        Width = 190
        Height = 21
        Alignment = taCenter
        AutoSize = False
        Caption = 'DANFE Simplificada'
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object rllTipoEmissao: TRLLabel
        Left = 174
        Top = 25
        Width = 146
        Height = 19
        Alignment = taCenter
        Caption = 'EMISS'#195'O NORMAL'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object lblNumero: TRLLabel
        Left = 152
        Top = 66
        Width = 186
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object rllEmissao: TRLLabel
        Left = 152
        Top = 81
        Width = 186
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object RLLabel27: TRLLabel
        Left = 209
        Top = 47
        Width = 107
        Height = 12
        Caption = '0 - ENTRADA / 1 - SA'#205'DA'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object RLShape102: TRLDraw
        Left = 181
        Top = 43
        Width = 22
        Height = 22
        Brush.Style = bsClear
      end
      object rllEntradaSaida: TRLLabel
        Left = 185
        Top = 47
        Width = 14
        Height = 15
        Alignment = taCenter
        AutoSize = False
        Caption = 'rllTransModFrete'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
    end
    object rlb05c_Lin_Itens: TRLBand
      Left = 38
      Top = 417
      Width = 340
      Height = 1
      BandType = btFooter
      Color = clWhite
      ParentColor = False
      object RLShape68: TRLDraw
        Left = 0
        Top = 0
        Width = 378
        Height = 1
      end
    end
    object rlb04_Destinatario: TRLBand
      Left = 38
      Top = 316
      Width = 340
      Height = 50
      AutoSize = True
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = False
      Color = clWhite
      ParentColor = False
      BeforePrint = rlb04_DestinatarioBeforePrint
      object rlmDestinatario: TRLMemo
        Left = 0
        Top = 36
        Width = 340
        Height = 14
        Align = faTop
        Behavior = [beSiteExpander]
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object rllMsgTipoEmissao: TRLLabel
        Left = 0
        Top = 21
        Width = 340
        Height = 15
        Align = faTop
        Caption = 'HOMOLOGACAO - SEM VALOR FISCAL'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object RLLabel1: TRLLabel
        Left = 0
        Top = 1
        Width = 340
        Height = 20
        Align = faTop
        Alignment = taCenter
        AutoSize = False
        Caption = 'Destinat'#225'rio'
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
    end
    object RLBand1: TRLBand
      Left = 38
      Top = 366
      Width = 340
      Height = 51
      AutoSize = True
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = False
      Color = clWhite
      ParentColor = False
      BeforePrint = RLBand1BeforePrint
      object rlmDadosAdicionais: TRLMemo
        Left = 0
        Top = 21
        Width = 340
        Height = 15
        Align = faTop
        Behavior = [beSiteExpander]
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object RLLabel2: TRLLabel
        Left = 0
        Top = 1
        Width = 340
        Height = 20
        Align = faTop
        Alignment = taCenter
        AutoSize = False
        Caption = 'Dados Adicionais'
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object RLLabel3: TRLLabel
        Left = 0
        Top = 36
        Width = 340
        Height = 15
        Align = faTop
        Caption = '.'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
    end
  end
  inherited RLPDFFilter1: TRLPDFFilter
    Left = 688
    Top = 80
  end
end
