object FrmSolicitacao_Item: TFrmSolicitacao_Item
  Left = 325
  Top = 248
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Solicita'#231#227'o'
  ClientHeight = 305
  ClientWidth = 708
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
    Height = 305
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 687
    Height = 305
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 3
      Top = 275
      Width = 680
      Height = 5
      Shape = bsTopLine
    end
    object Label1: TLabel
      Left = 5
      Top = 0
      Width = 45
      Height = 13
      Caption = 'Software:'
    end
    object Label2: TLabel
      Left = 147
      Top = 0
      Width = 50
      Height = 13
      Caption = 'Prioridade:'
    end
    object Label3: TLabel
      Left = 242
      Top = 0
      Width = 45
      Height = 13
      Caption = 'Situa'#231#227'o:'
    end
    object Label5: TLabel
      Left = 332
      Top = 0
      Width = 52
      Height = 13
      Caption = 'Solicitante:'
    end
    object SbSolicitante: TSpeedButton
      Tag = 1
      Left = 442
      Top = 15
      Width = 23
      Height = 19
      Hint = 'Seleciona Usu'#225'rio Solicitante'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbSolicitanteClick
    end
    object Label4: TLabel
      Left = 470
      Top = 0
      Width = 65
      Height = 13
      Caption = 'Respons'#225'vel:'
    end
    object SbResponsavel: TSpeedButton
      Tag = 2
      Left = 580
      Top = 15
      Width = 23
      Height = 19
      Hint = 'Seleciona Usu'#225'rio Responsavel'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbSolicitanteClick
    end
    object Label6: TLabel
      Left = 5
      Top = 72
      Width = 44
      Height = 13
      Caption = 'Previs'#227'o:'
    end
    object Label7: TLabel
      Left = 130
      Top = 72
      Width = 28
      Height = 13
      Caption = 'Inicio:'
    end
    object Label8: TLabel
      Left = 261
      Top = 72
      Width = 41
      Height = 13
      Caption = 'Termino:'
    end
    object Label9: TLabel
      Left = 5
      Top = 145
      Width = 66
      Height = 13
      Caption = 'Observa'#231#245'es:'
    end
    object Label10: TLabel
      Left = 5
      Top = 108
      Width = 35
      Height = 13
      Caption = 'Cliente:'
    end
    object SbEmitente: TSpeedButton
      Left = 55
      Top = 123
      Width = 23
      Height = 19
      Hint = 'Seleciona Cliente'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbEmitenteClick
    end
    object BitBtnConfirm: TBitBtn
      Left = 514
      Top = 278
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 15
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 600
      Top = 278
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 16
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object CbSoftware: TComboBox
      Left = 5
      Top = 15
      Width = 139
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 0
      Items.Strings = (
        'SGE-Comercial'
        'SGE-Todos V/M/C/F'
        'Vidros'
        'Marmore'
        'SGE - Comercial/Farma'
        'Vidros/M'#225'rmore'
        'SG-Vidros/M'#225'rmore'
        'Outros'
      )
    end
    object CbPrioridade: TComboBox
      Left = 147
      Top = 15
      Width = 91
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 1
      Items.Strings = (
        'Baixa'
        'Normal'
        'Alta'
        'Altissima'
      )
    end
    object CbSituacao: TComboBox
      Left = 242
      Top = 15
      Width = 86
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 2
      Items.Strings = (
        'Aberto'
        'Iniciado'
        'Terminado'
        'Suspenso'
        'Cancelado'
      )
    end
    object EdtCd_Solicitante: TEdit
      Tag = 1
      Left = 332
      Top = 15
      Width = 110
      Height = 19
      CharCase = ecUpperCase
      MaxLength = 15
      TabOrder = 3
      OnExit = EdtCd_SolicitanteExit
      OnKeyDown = EdtCd_SolicitanteKeyDown
    end
    object EdtCd_Responsavel: TEdit
      Tag = 2
      Left = 470
      Top = 15
      Width = 110
      Height = 19
      CharCase = ecUpperCase
      MaxLength = 15
      TabOrder = 4
      OnExit = EdtCd_SolicitanteExit
      OnKeyDown = EdtCd_SolicitanteKeyDown
    end
    object EdtDs_Solicitacao: TLabeledEdit
      Left = 5
      Top = 52
      Width = 411
      Height = 19
      EditLabel.Width = 52
      EditLabel.Height = 13
      EditLabel.Caption = 'Solicita'#231#227'o'
      LabelSpacing = 2
      MaxLength = 100
      TabOrder = 5
    end
    object EdtDt_Prevista: TDateEdit
      Left = 5
      Top = 86
      Width = 86
      Height = 19
      CheckOnExit = True
      DialogTitle = 'Selecione a Data'
      GlyphKind = gkCustom
      Glyph.Data = {binary 390 bytes}
      NumGlyphs = 1
      StartOfWeek = Sun
      TabOrder = 6
    end
    object EdtHr_Prevista: TMaskEdit
      Left = 92
      Top = 86
      Width = 35
      Height = 19
      AutoSize = False
      EditMask = '##:##;1; '
      MaxLength = 5
      TabOrder = 7
      Text = '00:00'
      OnExit = EdtHr_PrevistaExit
    end
    object EdtDt_Inicio: TDateEdit
      Left = 130
      Top = 86
      Width = 90
      Height = 19
      CheckOnExit = True
      DialogTitle = 'Selecione a Data'
      GlyphKind = gkCustom
      Glyph.Data = {binary 390 bytes}
      NumGlyphs = 1
      StartOfWeek = Sun
      TabOrder = 8
    end
    object EdtHr_Inicio: TMaskEdit
      Left = 221
      Top = 86
      Width = 35
      Height = 19
      EditMask = '##:##;1; '
      MaxLength = 5
      TabOrder = 9
      Text = '  :  '
    end
    object EdtDt_Termino: TDateEdit
      Left = 261
      Top = 86
      Width = 89
      Height = 19
      CheckOnExit = True
      DialogTitle = 'Selecione a Data'
      GlyphKind = gkCustom
      Glyph.Data = {binary 390 bytes}
      NumGlyphs = 1
      StartOfWeek = Sun
      TabOrder = 10
    end
    object EdtHr_Termino: TMaskEdit
      Left = 352
      Top = 86
      Width = 35
      Height = 19
      EditMask = '##:##;1; '
      MaxLength = 5
      TabOrder = 11
      Text = '  :  '
    end
    object MmSolicitacao: TMemo
      Left = 5
      Top = 159
      Width = 676
      Height = 111
      ScrollBars = ssVertical
      TabOrder = 14
    end
    object EdtCd_Emitente: TCurrencyEdit
      Tag = 1
      Left = 5
      Top = 123
      Width = 50
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 12
      OnExit = EdtCd_EmitenteExit
      OnKeyDown = EdtCd_SolicitanteKeyDown
    end
    object EdtNm_Emitente: TEdit
      Left = 79
      Top = 123
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
      TabOrder = 13
    end
  end
  object ADOCmdSolicitacao: TMultADOCMD
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLInsert.Strings = (
      'insert into Solicitacao( Id_Software, Nr_Item, Nr_Prioridade, Fl_Situacao,'
      '  Ds_Solicitacao, Cd_Solicitante, Cd_Responsavel, Dt_Inclusao,'
      '  Dt_Prevista, Dt_Inicio, Dt_Termino, Mm_Solicitacao, Cd_Emitente )'
      'values( :Id_Software, :Nr_Item, :Nr_Prioridade, :Fl_Situacao,'
      '  :Ds_Solicitacao, :Cd_Solicitante, :Cd_Responsavel, :Dt_Inclusao,'
      '  :Dt_Prevista, :Dt_Inicio, :Dt_Termino, :Mm_Solicitacao, :Cd_Emitente )'
    )
    SQLUpdate.Strings = (
      'update'
      '  Solicitacao'
      ''
      'set'
      '  Nr_Prioridade  = :Nr_Prioridade,'
      '  Fl_Situacao    = :Fl_Situacao,'
      '  Ds_Solicitacao = :Ds_Solicitacao,'
      '  Cd_Solicitante = :Cd_Solicitante,'
      '  Cd_Responsavel = :Cd_Responsavel,'
      '  Dt_Prevista    = :Dt_Prevista,'
      '  Dt_Inicio      = :Dt_Inicio,'
      '  Dt_Termino     = :Dt_Termino,'
      '  Mm_Solicitacao = :Mm_Solicitacao,'
      '  Cd_Emitente    = :Cd_Emitente'
      ''
      'where'
      '  Id_Software    = :Id_Software and'
      '  Nr_Item        = :Nr_Item'
    )
    Left = 31
    Top = 235
  end
  object ADODsNew: TADODataSet
    Connection = FrmMain.ADOConMaster
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  max( Nr_Item ) as Nr_Item'#13#10#13#10'from'#13#10'  Solicitacao'#13#10#13#10'where'#13#10'  Id_Software = :Id_Software'
    Parameters = <
      item
        Name = 'Id_Software'
        DataType = ftSmallint
        Size = -1
        Value = nil?
      end>
    Left = 61
    Top = 235
    object ADODsNewnr_item: TSmallintField
      FieldName = 'nr_item'
    end
  end
end
