object FrmNFe_RecuperaXML: TFrmNFe_RecuperaXML
  Left = 294
  Top = 173
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Recuperar XML'
  ClientHeight = 240
  ClientWidth = 635
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
    Height = 240
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 614
    Height = 240
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 3
      Top = 209
      Width = 606
      Height = 5
      Shape = bsTopLine
    end
    object Label2: TLabel
      Left = 5
      Top = 4
      Width = 41
      Height = 13
      Caption = 'Per'#237'odo:'
    end
    object SbPastaNFe: TSpeedButton
      Tag = 1
      Left = 483
      Top = 56
      Width = 22
      Height = 21
      Hint = 'Pasta para salvar arquivos...'
      Flat = True
      Glyph.Data = {binary 378 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbPastaNFeClick
    end
    object SbPastaNFCe: TSpeedButton
      Tag = 2
      Left = 483
      Top = 91
      Width = 22
      Height = 21
      Hint = 'Pasta para salvar arquivos...'
      Flat = True
      Glyph.Data = {binary 378 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbPastaNFeClick
    end
    object BitBtnConfirm: TBitBtn
      Left = 440
      Top = 213
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 4
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 526
      Top = 213
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 5
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object EdtDt_Start: TDateEdit
      Left = 5
      Top = 18
      Width = 90
      Height = 19
      CheckOnExit = True
      DialogTitle = 'Selecione a Data'
      GlyphKind = gkCustom
      Glyph.Data = {binary 1850 bytes}
      NumGlyphs = 1
      StartOfWeek = Sun
      TabOrder = 0
    end
    object EdtDt_End: TDateEdit
      Left = 100
      Top = 18
      Width = 90
      Height = 19
      CheckOnExit = True
      DialogTitle = 'Selecione a Data'
      GlyphKind = gkCustom
      Glyph.Data = {binary 1850 bytes}
      NumGlyphs = 1
      StartOfWeek = Sun
      TabOrder = 1
    end
    object EdtDs_PathNFe: TLabeledEdit
      Tag = 1
      Left = 5
      Top = 56
      Width = 479
      Height = 19
      EditLabel.Width = 336
      EditLabel.Height = 13
      EditLabel.Caption = 'Pasta destino para NF-e: (Deixe em branco para n'#227'o gerar)'
      EditLabel.Font.Charset = DEFAULT_CHARSET
      EditLabel.Font.Color = clWindowText
      EditLabel.Font.Height = -11
      EditLabel.Font.Name = 'MS Sans Serif'
      EditLabel.Font.Style = [fsBold]
      EditLabel.ParentFont = False
      LabelSpacing = 2
      TabOrder = 2
      Text = 'C:\Temp\NF-e'
    end
    object STxtXML: TStaticText
      Left = 6
      Top = 191
      Width = 600
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Gerando arquivos...'
      TabOrder = 6
    end
    object EdtDs_PathNFCe: TLabeledEdit
      Tag = 1
      Left = 5
      Top = 93
      Width = 479
      Height = 19
      EditLabel.Width = 344
      EditLabel.Height = 13
      EditLabel.Caption = 'Pasta destino para NFC-e: (Deixe em branco para n'#227'o gerar)'
      EditLabel.Font.Charset = DEFAULT_CHARSET
      EditLabel.Font.Color = clWindowText
      EditLabel.Font.Height = -11
      EditLabel.Font.Name = 'MS Sans Serif'
      EditLabel.Font.Style = [fsBold]
      EditLabel.ParentFont = False
      LabelSpacing = 2
      TabOrder = 3
      Text = 'C:\Temp\NFC-e'
    end
  end
  object ADODsGeradoNFCe: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'select'#13#10'  Nr_chNFe, Mm_XML'#13#10#13#10'from'#13#10'  DFe_Vw'#13#10#13#10'where'#13#10'  Cd_Filial = :Cd_Filial and'#13#10'  Dt_DFe   >= :Dt_Start and'#13#10'  Dt_DFe    < :Dt_End and'#13#10'  Nr_chNFe <> '''''#13#10
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
        Name = 'Dt_Start'
        DataType = ftDateTime
        Precision = 16
        Size = 16
        Value = nil?
      end
      item
        Name = 'Dt_End'
        DataType = ftDateTime
        Precision = 16
        Size = 16
        Value = nil?
      end>
    Left = 256
    Top = 144
    object ADODsGeradoNFCeNr_chNFe: TStringField
      FieldName = 'Nr_chNFe'
      Size = 44
    end
    object ADODsGeradoNFCeMm_XML: TMemoField
      FieldName = 'Mm_XML'
      BlobType = ftMemo
    end
  end
end
