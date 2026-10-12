object FrmOServico_Data: TFrmOServico_Data
  Left = 294
  Top = 173
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Informe a Data...'
  ClientHeight = 110
  ClientWidth = 325
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
    Height = 110
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 304
    Height = 110
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 3
      Top = 79
      Width = 295
      Height = 5
      Shape = bsTopLine
    end
    object Label4: TLabel
      Left = 6
      Top = 2
      Width = 26
      Height = 13
      Caption = 'Data:'
    end
    object BitBtnConfirm: TBitBtn
      Left = 131
      Top = 82
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 0
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 217
      Top = 82
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 1
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object EdtDt_Processo: TDateEdit
      Left = 6
      Top = 17
      Width = 90
      Height = 19
      DialogTitle = 'Selecione a Data'
      GlyphKind = gkCustom
      Glyph.Data = {binary 1850 bytes}
      NumGlyphs = 1
      StartOfWeek = Sun
      TabOrder = 2
    end
  end
  object ADOCmdData: TMultADOCMD
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLOther0.Strings = (
      '-------------------- Data de Inicio da Produ'#231#227'o'
      'update'
      '  OServico'
      ''
      'set'
      '  St_OS     = ''''2'''','
      '  Dt_Inicio = :Dt_Processo'
      ''
      'where'
      '  Cd_Filial = :Cd_Filial and'
      '  Nr_OS     = :Nr_OS'
    )
    SQLOther1.Strings = (
      '-------------------- Data de Termino da Produ'#231#227'o'
      'update'
      '  OServico'
      ''
      'set'
      '  St_OS      = ''''3'''','
      '  Dt_Termino = :Dt_Processo'
      ''
      'where'
      '  Cd_Filial = :Cd_Filial and'
      '  Nr_OS     = :Nr_OS'
    )
    Left = 176
    Top = 24
  end
end
