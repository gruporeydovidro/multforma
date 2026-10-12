object FrmCaixa: TFrmCaixa
  Left = 308
  Top = 171
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Caixa'
  ClientHeight = 372
  ClientWidth = 813
  Color = clWhite
  Ctl3D = False
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
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
    Height = 372
    Align = alLeft
    TabOrder = 0
    ExplicitHeight = 296
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 792
    Height = 372
    Align = alClient
    ParentColor = True
    TabOrder = 1
    ExplicitWidth = 684
    ExplicitHeight = 296
    object BvlSeparator: TBevel
      Left = 0
      Top = 341
      Width = 786
      Height = 5
      Shape = bsTopLine
    end
    object Label1: TLabel
      Left = 5
      Top = 30
      Width = 62
      Height = 13
      Caption = 'Lan'#231'amento:'
    end
    object Label2: TLabel
      Left = 70
      Top = 30
      Width = 26
      Height = 13
      Caption = 'Data:'
    end
    object Label3: TLabel
      Left = 165
      Top = 30
      Width = 101
      Height = 13
      Caption = 'Tipo de Lan'#231'amento:'
    end
    object Label19: TLabel
      Left = 5
      Top = 67
      Width = 44
      Height = 13
      Caption = 'Hist'#243'rico:'
    end
    object SbHistorico: TSpeedButton
      Left = 45
      Top = 83
      Width = 23
      Height = 19
      Hint = 'Consulta de Hist'#243'rio'
      Flat = True
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
      OnClick = SbHistoricoClick
    end
    object Label7: TLabel
      Left = 5
      Top = 142
      Width = 97
      Height = 13
      Caption = 'Grupo de Aplica'#231#227'o:'
    end
    object SbGrupo: TSpeedButton
      Left = 45
      Top = 156
      Width = 23
      Height = 19
      Hint = 'Seleciona Grupo de Aplica'#231#227'o'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbGrupoClick
    end
    object Label9: TLabel
      Left = 384
      Top = 142
      Width = 116
      Height = 13
      Caption = 'SubGrupo de Aplica'#231#227'o:'
    end
    object SbSubGrupo: TSpeedButton
      Left = 424
      Top = 156
      Width = 23
      Height = 19
      Hint = 'Seleciona SubGrupo de Aplica'#231#227'o'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbSubGrupoClick
    end
    object Label5: TLabel
      Left = 301
      Top = 30
      Width = 27
      Height = 13
      Caption = 'Valor:'
    end
    object SbEstorno: TSpeedButton
      Left = 436
      Top = 45
      Width = 23
      Height = 19
      Hint = 'Seleciona o Lan'#231'amento a ser Estornado'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbEstornoClick
    end
    object Label4: TLabel
      Left = 386
      Top = 31
      Width = 113
      Height = 13
      Caption = 'Lan'#231'amento a Estornar:'
    end
    object LblOrcamento: TLabel
      Left = 318
      Top = 178
      Width = 55
      Height = 13
      Caption = 'Or'#231'amento:'
    end
    object PnlToolMain: TPanel
      Left = 1
      Top = 1
      Width = 790
      Height = 26
      Align = alTop
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 18
      ExplicitWidth = 682
      object PnlDatabase: TPanel
        Left = 0
        Top = 0
        Width = 790
        Height = 26
        Align = alClient
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 0
        ExplicitWidth = 682
        object ActToolBDatabase: TActionToolBar
          Left = 0
          Top = 0
          Width = 790
          Height = 26
          Cursor = crHandPoint
          ActionManager = ActManCadastro
          Caption = 'ActToolBDatabase'
          ColorMap.HighlightColor = clWhite
          ColorMap.BtnSelectedColor = clBtnFace
          ColorMap.UnusedColor = clWhite
          ParentShowHint = False
          ShowHint = True
          Spacing = 0
          ExplicitWidth = 682
        end
      end
    end
    object BitBtnConfirm: TBitBtn
      Left = 619
      Top = 345
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 16
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 482 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 705
      Top = 345
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 17
      OnClick = BitBtnCancelClick
      Glyph.Data = {binary 482 bytes}
      NumGlyphs = 2
    end
    object EdtDs_Lancamento: TLabeledEdit
      Left = 5
      Top = 120
      Width = 340
      Height = 19
      AutoSelect = False
      EditLabel.Width = 128
      EditLabel.Height = 13
      EditLabel.Caption = 'Descri'#231#227'o do Lan'#231'amento:'
      LabelSpacing = 2
      MaxLength = 80
      TabOrder = 8
    end
    object EdtNr_Lancamento: TCurrencyEdit
      Left = 5
      Top = 45
      Width = 59
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      TabStop = False
      AutoSize = False
      Color = clSilver
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object EdtDt_Lancamento: TDateEdit
      Left = 70
      Top = 45
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
    object CbTp_Lancamento: TComboBox
      Left = 165
      Top = 45
      Width = 131
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 2
      OnChange = CbTp_LancamentoChange
      OnExit = CbTp_LancamentoChange
      Items.Strings = (
        'Entrada'
        'Sa'#237'da'
        'Estorno de Entrada'
        'Estorno de Sa'#237'da'
      )
    end
    object EdtCd_Historico: TCurrencyEdit
      Tag = 2
      Left = 5
      Top = 83
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '###'
      TabOrder = 6
      OnExit = EdtCd_HistoricoExit
      OnKeyDown = EdtNr_EstornoKeyDown
    end
    object EdtDs_Historico: TEdit
      Left = 68
      Top = 83
      Width = 308
      Height = 19
      TabStop = False
      AutoSize = False
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 7
    end
    object EdtCd_Grupo: TCurrencyEdit
      Tag = 3
      Left = 5
      Top = 156
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 9
      OnExit = EdtCd_GrupoExit
      OnKeyDown = EdtNr_EstornoKeyDown
    end
    object EdtNm_Grupo: TEdit
      Left = 69
      Top = 156
      Width = 309
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
      TabOrder = 10
    end
    object EdtCd_SubGrupo: TCurrencyEdit
      Tag = 4
      Left = 384
      Top = 156
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 11
      OnExit = EdtCd_SubGrupoExit
      OnKeyDown = EdtNr_EstornoKeyDown
    end
    object EdtNm_SubGrupo: TEdit
      Left = 446
      Top = 156
      Width = 270
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
      TabOrder = 12
    end
    object EdtVl_Lancamento: TCurrencyEdit
      Left = 301
      Top = 45
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 3
    end
    object EdtNr_Documento: TLabeledEdit
      Left = 5
      Top = 193
      Width = 308
      Height = 19
      AutoSelect = False
      EditLabel.Width = 113
      EditLabel.Height = 13
      EditLabel.Caption = 'N'#250'mero do Documento:'
      LabelSpacing = 2
      MaxLength = 50
      TabOrder = 13
    end
    object EdtDs_Origem: TLabeledEdit
      Left = 5
      Top = 229
      Width = 228
      Height = 19
      TabStop = False
      AutoSelect = False
      Color = clSilver
      EditLabel.Width = 113
      EditLabel.Height = 13
      EditLabel.Caption = 'Origem do Lan'#231'amento:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      LabelSpacing = 2
      MaxLength = 20
      ParentFont = False
      ReadOnly = True
      TabOrder = 15
    end
    object EdtNr_Estorno: TCurrencyEdit
      Tag = 1
      Left = 386
      Top = 45
      Width = 50
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 4
      OnExit = EdtNr_EstornoExit
      OnKeyDown = EdtNr_EstornoKeyDown
    end
    object EdtCd_Usuario: TLabeledEdit
      Left = 504
      Top = 45
      Width = 137
      Height = 19
      TabStop = False
      AutoSelect = False
      Color = clSilver
      EditLabel.Width = 39
      EditLabel.Height = 13
      EditLabel.Caption = 'Usu'#225'rio:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      LabelSpacing = 2
      MaxLength = 20
      ParentFont = False
      ReadOnly = True
      TabOrder = 5
    end
    object EdtNr_Orcamento: TCurrencyEdit
      Tag = 1
      Left = 318
      Top = 193
      Width = 70
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 14
      OnExit = EdtNr_EstornoExit
      OnKeyDown = EdtNr_EstornoKeyDown
    end
  end
  object ActManCadastro: TActionManager
    ActionBars = <
      item
        Items = <
          item
            Action = ActFirst
            ImageIndex = 19
          end
          item
            Action = ActPrior
            ImageIndex = 12
          end
          item
            Action = ActNext
            ImageIndex = 13
          end
          item
            Action = ActLast
            ImageIndex = 14
          end
          item
            Action = ActInsert
            ImageIndex = 15
            ShortCut = 113
          end
          item
            Action = ActEdit
            ImageIndex = 16
            ShortCut = 115
          end
          item
            Action = ActFind
            ShortCut = 114
          end
          item
            Action = ActDel
            ImageIndex = 17
            ShortCut = 116
          end
          item
            Action = ActReport
            ImageIndex = 18
            ShortCut = 117
          end>
      end
      item
        Items = <
          item
            Action = ActLast
            ImageIndex = 14
          end
          item
            Action = ActNext
            ImageIndex = 13
          end
          item
            Action = ActPrior
            ImageIndex = 12
          end
          item
            Action = ActDel
            ImageIndex = 17
            ShortCut = 116
          end
          item
            Action = ActFind
            ShortCut = 114
          end
          item
            Action = ActEdit
            ImageIndex = 16
            ShortCut = 115
          end
          item
            Action = ActInsert
            ImageIndex = 15
            ShortCut = 113
          end
          item
            Action = ActFirst
            ImageIndex = 19
          end
          item
            Action = ActReport
            ImageIndex = 18
            ShortCut = 117
          end>
      end
      item
        Items = <
          item
            Action = ActFirst
            ImageIndex = 12
          end
          item
            Action = ActPrior
            ImageIndex = 13
          end
          item
            Action = ActNext
            ImageIndex = 14
          end
          item
            Action = ActLast
            ImageIndex = 15
          end>
      end
      item
      end
      item
        Items = <
          item
            Action = ActInsert
            ImageIndex = 16
            ShortCut = 113
          end
          item
            Action = ActEdit
            ImageIndex = 17
            ShortCut = 115
          end
          item
            Action = ActFind
            ImageIndex = 18
            ShortCut = 114
          end
          item
            Action = ActDel
            ImageIndex = 19
            ShortCut = 116
          end
          item
            Action = ActReport
            ImageIndex = 20
            ShortCut = 117
          end>
      end
      item
        Items = <
          item
            Action = ActFirst
            ImageIndex = 12
          end
          item
            Action = ActPrior
            ImageIndex = 13
          end
          item
            Action = ActNext
            ImageIndex = 14
          end
          item
            Action = ActLast
            ImageIndex = 15
          end>
      end
      item
        Items = <
          item
            Action = ActFirst
            ImageIndex = 12
          end
          item
            Action = ActPrior
            ImageIndex = 13
          end
          item
            Action = ActNext
            ImageIndex = 14
          end
          item
            Action = ActLast
            ImageIndex = 15
          end
          item
            Caption = '-'
          end
          item
            Action = ActInsert
            ImageIndex = 16
            ShortCut = 113
          end
          item
            Action = ActFind
            ImageIndex = 17
            ShortCut = 114
          end
          item
            Action = ActEdit
            ImageIndex = 18
            ShortCut = 115
          end
          item
            Action = ActDel
            ImageIndex = 19
            ShortCut = 116
          end
          item
            Action = ActReport
            ImageIndex = 20
            ShortCut = 117
          end>
        ActionBar = ActToolBDatabase
      end
      item
      end>
    Images = FrmMain.ImgLstMenu
    Left = 609
    Top = 2
    StyleName = 'XP Style'
    object ActFirst: TAction
      Category = '1-Navigator'
      Hint = 'Primeiro Registro'
      ImageIndex = 12
      OnExecute = ActFirstExecute
    end
    object ActPrior: TAction
      Category = '1-Navigator'
      Hint = 'Registro Anterior'
      ImageIndex = 13
      OnExecute = ActPriorExecute
    end
    object ActNext: TAction
      Category = '1-Navigator'
      Hint = 'Pr'#243'ximo Registro'
      ImageIndex = 14
      OnExecute = ActNextExecute
    end
    object ActLast: TAction
      Category = '1-Navigator'
      Hint = #218'ltimo Registro'
      ImageIndex = 15
      OnExecute = ActLastExecute
    end
    object ActInsert: TAction
      Category = '2-Database'
      Hint = 'Incluir um Novo Registro'
      ImageIndex = 16
      ShortCut = 113
      OnExecute = ActInsertExecute
    end
    object ActFind: TAction
      Category = '2-Database'
      Hint = 'Consultar Registros'
      ImageIndex = 17
      ShortCut = 114
      OnExecute = ActFindExecute
    end
    object ActEdit: TAction
      Category = '2-Database'
      Hint = 'Alterar o Registro Corrente'
      ImageIndex = 18
      ShortCut = 115
      OnExecute = ActEditExecute
    end
    object ActDel: TAction
      Category = '2-Database'
      Hint = 'Excluir este Registro'
      ImageIndex = 19
      ShortCut = 116
      OnExecute = ActDelExecute
    end
    object ActReport: TAction
      Category = '2-Database'
      Hint = 'Relat'#243'rio'
      ImageIndex = 20
      ShortCut = 117
      OnExecute = ActReportExecute
    end
  end
  object ADODsDados: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    OnCalcFields = ADODsDadosCalcFields
    CommandText = 'select'#13#10'  C.Cd_Filial, C.Nr_Lancamento, C.Dt_Lancamento, C.Tp_Lancamento,'#13#10'  C.Vl_Lancamento, C.Ds_Lancamento, C.Cd_Historico, H.Ds_Historico,'#13#10'  C.Cd_Grupo, G.Nm_Grupo, C.Cd_SubGrupo, SG.Nm_SubGrupo, C.Nr_Documento,'#13#10'  C.Nr_Estorno, C.Nr_Orcamento, C.Nr_Receber, C.Nr_Receber_Par, C.Nr_Receber_Lancto,'#13#10'  C.Nr_Pagar, C.Nr_Pagar_Par, C.Nr_Pagar_Lancto, C.Nr_Balcao, C.Cd_Usuario'#13#10#13#10'from'#13#10'  Caixa C'#13#10#13#10'inner join'#13#10'  Historico H'#13#10'on'#13#10'  H.Cd_Historico = C.Cd_Historico'#13#10#13#10'left join'#13#10'  Aplicacao_Grupo G'#13#10'on'#13#10'  G.Cd_Grupo = C.Cd_Grupo'#13#10#13#10'left join'#13#10'  Aplicacao_SubGrupo SG'#13#10'on'#13#10'  SG.Cd_SubGrupo = C.Cd_SubGrupo'#13#10#13#10'where'#13#10'  C.Cd_Filial     = :Cd_Filial and'#13#10'  C.Nr_Lancamento = :Nr_Lancamento'
    Parameters = <
      item
        Name = 'Cd_Filial'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = 1
      end
      item
        Name = 'Nr_Lancamento'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 1
      end>
    Left = 25
    Top = 259
    object ADODsDadosCd_Filial: TSmallintField
      FieldName = 'Cd_Filial'
    end
    object ADODsDadosNr_Lancamento: TIntegerField
      FieldName = 'Nr_Lancamento'
    end
    object ADODsDadosDt_Lancamento: TDateTimeField
      FieldName = 'Dt_Lancamento'
    end
    object ADODsDadosTp_Lancamento: TStringField
      FieldName = 'Tp_Lancamento'
      FixedChar = True
      Size = 1
    end
    object ADODsDadosVl_Lancamento: TBCDField
      FieldName = 'Vl_Lancamento'
      Precision = 12
      Size = 2
    end
    object ADODsDadosDs_Lancamento: TStringField
      FieldName = 'Ds_Lancamento'
      Size = 80
    end
    object ADODsDadosCd_Historico: TSmallintField
      FieldName = 'Cd_Historico'
    end
    object ADODsDadosDs_Historico: TStringField
      FieldName = 'Ds_Historico'
      Size = 30
    end
    object ADODsDadosCd_Grupo: TSmallintField
      FieldName = 'Cd_Grupo'
    end
    object ADODsDadosNm_Grupo: TStringField
      FieldName = 'Nm_Grupo'
      Size = 50
    end
    object ADODsDadosCd_SubGrupo: TSmallintField
      FieldName = 'Cd_SubGrupo'
    end
    object ADODsDadosNm_SubGrupo: TStringField
      FieldName = 'Nm_SubGrupo'
      Size = 50
    end
    object ADODsDadosNr_Documento: TStringField
      FieldName = 'Nr_Documento'
    end
    object ADODsDadosNr_Estorno: TIntegerField
      FieldName = 'Nr_Estorno'
    end
    object ADODsDadosNr_Orcamento: TIntegerField
      FieldName = 'Nr_Orcamento'
    end
    object ADODsDadosNr_Receber: TIntegerField
      FieldName = 'Nr_Receber'
    end
    object ADODsDadosNr_Receber_Par: TSmallintField
      FieldName = 'Nr_Receber_Par'
    end
    object ADODsDadosNr_Receber_Lancto: TSmallintField
      FieldName = 'Nr_Receber_Lancto'
    end
    object ADODsDadosNr_Pagar: TIntegerField
      FieldName = 'Nr_Pagar'
    end
    object ADODsDadosNr_Pagar_Par: TSmallintField
      FieldName = 'Nr_Pagar_Par'
    end
    object ADODsDadosNr_Pagar_Lancto: TSmallintField
      FieldName = 'Nr_Pagar_Lancto'
    end
    object ADODsDadosNr_Balcao: TIntegerField
      FieldName = 'Nr_Balcao'
    end
    object ADODsDadosDs_Origem: TStringField
      FieldKind = fkCalculated
      FieldName = 'Ds_Origem'
      Size = 35
      Calculated = True
    end
    object ADODsDadosCd_Usuario: TStringField
      FieldName = 'Cd_Usuario'
      Size = 15
    end
  end
  object ADOCmdDados: TMultADOCMD
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLInsert.Strings = (
      'insert into Caixa( cd_filial, nr_lancamento, dt_lancamento,'
      '   tp_lancamento, vl_lancamento, ds_lancamento, cd_historico, cd_grupo,'
      '   cd_subgrupo, nr_documento, nr_estorno, Cd_Usuario, Nr_Orcamento )'
      'values( :cd_filial, :nr_lancamento, :dt_lancamento,'
      '   :tp_lancamento, :vl_lancamento, :ds_lancamento, :cd_historico, :cd_grupo,'
      '   :cd_subgrupo, :nr_documento, :nr_estorno, :Cd_Usuario, :Nr_Orcamento )'
    )
    SQLUpdate.Strings = (
      'update'
      '  Caixa'
      ''
      'set'
      '  dt_lancamento = :dt_lancamento,'
      '  tp_lancamento = :tp_lancamento,'
      '  vl_lancamento = :vl_lancamento,'
      '  ds_lancamento = :ds_lancamento,'
      '  cd_historico  = :cd_historico,'
      '  cd_grupo      = :cd_grupo,'
      '  cd_subgrupo   = :cd_subgrupo,'
      '  nr_documento  = :nr_documento,'
      '  nr_estorno    = :nr_estorno,'
      '  Cd_Usuario    = :Cd_Usuario,'
      '  Nr_Orcamento  = :Nr_Orcamento'
      ''
      'where'
      '  cd_filial     = :cd_filial and'
      '  nr_lancamento = :nr_lancamento'
    )
    SQLDelete.Strings = (
      'delete from'
      '  Caixa'
      ''
      'where'
      '  Cd_Filial     = :Cd_Filial and'
      '  Nr_Lancamento = :Nr_Lancamento'
    )
    Left = 55
    Top = 259
  end
  object ADODsNavegar: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = '-- First'#13#10'select top 1'#13#10'  Nr_Lancamento'#13#10#13#10'from'#13#10'  Caixa'#13#10#13#10'order by'#13#10'  Nr_Lancamento'#13#10#13#10#13#10
    Parameters = <>
    SQLPrimary.Strings = (
      'select'
      '  max( Nr_Lancamento ) as Nr_Lancamento'
      ''
      'from'
      '  Caixa'
      ''
      'where'
      '  Cd_Filial     = :Cd_Filial '
    )
    SQLOther0.Strings = (
      '-- First'
      'select top 1'
      '  Nr_Lancamento'
      ''
      'from'
      '  Caixa'
      ''
      'where'
      '  Cd_Filial  = :Cd_Filial '
      '  '
      'order by'
      '  Nr_Lancamento'
    )
    SQLOther1.Strings = (
      '-- Prior'
      'select top 1'
      '  Nr_Lancamento'
      ''
      'from'
      '  Caixa'
      ''
      'where'
      '  Cd_Filial     = :Cd_Filial and'
      '  Nr_Lancamento < :Nr_Lancamento'
      ''
      'order by'
      '  Nr_Lancamento desc'
    )
    SQLOther2.Strings = (
      '-- Next'
      'select top 1'
      '  Nr_Lancamento'
      ''
      'from'
      '  Caixa'
      ''
      'where'
      '  Cd_Filial     = :Cd_Filial and'
      '  Nr_Lancamento > :Nr_Lancamento'
      ''
      'order by'
      '  Nr_Lancamento'
    )
    SQLOther3.Strings = (
      '-- Last'
      'select top 1'
      '  Nr_Lancamento'
      ''
      'from'
      '  Caixa'
      ''
      'where'
      '  Cd_Filial     = :Cd_Filial '
      ''
      'order by'
      '  Nr_Lancamento desc'
    )
    Left = 85
    Top = 259
    object ADODsNavegarnr_lancamento: TIntegerField
      FieldName = 'nr_lancamento'
    end
  end
  object ADODsEstorno: TADODataSet
    Connection = FrmMain.ADOConMaster
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  Tp_Lancamento, Vl_Lancamento'#13#10#13#10'from'#13#10'  Caixa'#13#10#13#10'where'#13#10'  Cd_Filial     = :Cd_Filial and'#13#10'  Nr_Lancamento = :Nr_Lancamento'
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
        Name = 'Nr_Lancamento'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = nil?
      end>
    Left = 116
    Top = 259
    object ADODsEstornotp_lancamento: TStringField
      FieldName = 'tp_lancamento'
      FixedChar = True
      Size = 1
    end
    object ADODsEstornovl_lancamento: TBCDField
      FieldName = 'vl_lancamento'
      Precision = 12
      Size = 2
    end
  end
end
