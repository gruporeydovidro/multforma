object FrmCCorrente_Lancto: TFrmCCorrente_Lancto
  Left = 439
  Top = 329
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Lan'#231'amentos '
  ClientHeight = 320
  ClientWidth = 682
  Color = clWhite
  Ctl3D = False
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 21
    Height = 320
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 661
    Height = 320
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 1
      Top = 288
      Width = 656
      Height = 5
      Shape = bsTopLine
    end
    object Label1: TLabel
      Left = 6
      Top = 67
      Width = 62
      Height = 13
      Caption = 'Lan'#231'amento:'
    end
    object Label3: TLabel
      Left = 169
      Top = 67
      Width = 24
      Height = 13
      Caption = 'Tipo:'
    end
    object Label4: TLabel
      Left = 75
      Top = 68
      Width = 26
      Height = 13
      Caption = 'Data:'
    end
    object Label6: TLabel
      Left = 342
      Top = 68
      Width = 27
      Height = 13
      Caption = 'Valor:'
    end
    object Label2: TLabel
      Left = 6
      Top = 250
      Width = 54
      Height = 13
      Caption = 'Bloqueado:'
    end
    object Label19: TLabel
      Left = 6
      Top = 104
      Width = 44
      Height = 13
      Caption = 'Hist'#243'rico:'
    end
    object SbHistorico: TSpeedButton
      Left = 46
      Top = 120
      Width = 23
      Height = 19
      Hint = 'Consulta de Hist'#243'rio'
      Flat = True
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
      OnClick = SbHistoricoClick
    end
    object LblConta: TLabel
      Left = 5
      Top = 29
      Width = 644
      Height = 27
      Alignment = taCenter
      AutoSize = False
      BiDiMode = bdLeftToRight
      Caption = 'Aqui sera identificado qual o nome da conta / banco / agencia e numero da conta correte'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      Layout = tlCenter
      WordWrap = True
    end
    object BvlSeparator1: TBevel
      Left = 1
      Top = 62
      Width = 656
      Height = 5
      Shape = bsTopLine
    end
    object Label5: TLabel
      Left = 377
      Top = 248
      Width = 65
      Height = 13
      Caption = 'Compensado:'
    end
    object Label7: TLabel
      Left = 448
      Top = 250
      Width = 123
      Height = 13
      Caption = 'Resumo de Recebimento:'
      Visible = False
    end
    object Label8: TLabel
      Left = 6
      Top = 144
      Width = 120
      Height = 13
      Caption = 'Descri'#231#227'o complementar:'
    end
    object PnlToolMain: TPanel
      Left = 1
      Top = 1
      Width = 659
      Height = 26
      Align = alTop
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 13
      object PnlDatabase: TPanel
        Left = 0
        Top = 0
        Width = 659
        Height = 26
        Align = alClient
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 0
        object ActToolBDatabase: TActionToolBar
          Left = 0
          Top = 0
          Width = 659
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
        end
      end
    end
    object BitBtnConfirm: TBitBtn
      Left = 489
      Top = 293
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 11
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 482 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 575
      Top = 293
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 12
      OnClick = BitBtnCancelClick
      Glyph.Data = {binary 482 bytes}
      NumGlyphs = 2
    end
    object EdtNr_Lancamento: TCurrencyEdit
      Left = 6
      Top = 82
      Width = 50
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      TabStop = False
      AutoSize = False
      Color = clSilver
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object CbTp_Lancamento: TComboBox
      Left = 169
      Top = 82
      Width = 170
      Height = 21
      Style = csDropDownList
      DropDownCount = 9
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 2
      Text = '1 - Dep'#243'sito em Dinheiro'
      OnChange = CbTp_LancamentoChange
      Items.Strings = (
        '1 - Dep'#243'sito em Dinheiro'
        '2 - Dep'#243'sito em Cheque'
        '3 - Tranfer'#234'ncia (Entrada)'
        '4 - Saque'
        '5 - Transfer'#234'ncia (Sa'#237'da)'
        '6 - Cheque'
        '7 - Pagamento de Cobran'#231'a'
        '8 - Outras Sa'#237'das'
        '9 - Tarifas'
      )
    end
    object EdtDt_Lancamento: TDateEdit
      Left = 75
      Top = 82
      Width = 89
      Height = 19
      CheckOnExit = True
      DialogTitle = 'Selecione a Data'
      GlyphKind = gkCustom
      Glyph.Data = {binary 1850 bytes}
      NumGlyphs = 1
      StartOfWeek = Sun
      TabOrder = 1
    end
    object EdtVl_Lancamento: TCurrencyEdit
      Left = 342
      Top = 82
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
    object CbBloqueado: TComboBox
      Left = 6
      Top = 265
      Width = 66
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 8
      Items.Strings = (
        'Sim'
        'N'#227'o'
      )
    end
    object EdtNr_Documento: TLabeledEdit
      Left = 77
      Top = 265
      Width = 297
      Height = 19
      AutoSelect = False
      EditLabel.Width = 88
      EditLabel.Height = 13
      EditLabel.Caption = 'N'#186' do Documento:'
      LabelSpacing = 2
      MaxLength = 50
      TabOrder = 9
    end
    object EdtCd_Historico: TCurrencyEdit
      Tag = 2
      Left = 6
      Top = 120
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '###'
      TabOrder = 4
      OnExit = EdtCd_HistoricoExit
      OnKeyDown = EdtCd_HistoricoKeyDown
    end
    object EdtDs_Historico: TEdit
      Left = 69
      Top = 120
      Width = 308
      Height = 19
      TabStop = False
      AutoSize = False
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 5
    end
    object CbCompensado: TComboBox
      Left = 377
      Top = 265
      Width = 66
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 10
      Items.Strings = (
        'Sim'
        'N'#227'o'
      )
    end
    object EdtNr_Resumo: TCurrencyEdit
      Left = 448
      Top = 265
      Width = 50
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      TabStop = False
      AutoSize = False
      Color = clSilver
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 7
      Visible = False
    end
    object MmDs_Lancamento: TMemo
      Left = 6
      Top = 159
      Width = 651
      Height = 89
      Lines.Strings = (
        'MmDs_Lancamento'
      )
      ScrollBars = ssVertical
      TabOrder = 6
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
    Left = 438
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
    CommandText = 'select'#13#10'  CL.Id_Conta, CL.Nr_Lancamento, CL.Tp_Lancamento, CL.Dt_Lancamento,'#13#10'  CL.Vl_Lancamento, CL.Cd_Historico, H.Ds_Historico, CL.Ds_Lancamento,'#13#10'  CL.Nr_Documento, CL.Fl_Bloqueado, CL.Fl_Compensado, CL.Nr_Resumo'#13#10#13#10'from'#13#10'  CCorrente_Lancto CL'#13#10#13#10'inner join'#13#10'  Historico H'#13#10'on'#13#10'  H.Cd_Historico = Cl.Cd_Historico'#13#10#13#10'where'#13#10'  CL.Id_Conta      = :Id_Conta and'#13#10'  CL.Nr_Lancamento = :Nr_Lancamento'
    Parameters = <
      item
        Name = 'Id_Conta'
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
    Left = 26
    Top = 215
    object ADODsDadosid_conta: TSmallintField
      FieldName = 'id_conta'
    end
    object ADODsDadosnr_lancamento: TIntegerField
      FieldName = 'nr_lancamento'
    end
    object ADODsDadostp_lancamento: TStringField
      FieldName = 'tp_lancamento'
      FixedChar = True
      Size = 1
    end
    object ADODsDadosdt_lancamento: TDateTimeField
      FieldName = 'dt_lancamento'
    end
    object ADODsDadosvl_lancamento: TBCDField
      FieldName = 'vl_lancamento'
      Precision = 12
      Size = 2
    end
    object ADODsDadoscd_historico: TSmallintField
      FieldName = 'cd_historico'
    end
    object ADODsDadosds_historico: TStringField
      FieldName = 'ds_historico'
      Size = 30
    end
    object ADODsDadosnr_documento: TStringField
      FieldName = 'nr_documento'
      Size = 50
    end
    object ADODsDadosfl_bloqueado: TStringField
      FieldName = 'fl_bloqueado'
      FixedChar = True
      Size = 1
    end
    object ADODsDadosfl_compensado: TStringField
      FieldName = 'fl_compensado'
      FixedChar = True
      Size = 1
    end
    object ADODsDadosNr_Resumo: TIntegerField
      FieldName = 'Nr_Resumo'
    end
    object ADODsDadosDs_Lancamento: TMemoField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'Ds_Lancamento'
      BlobType = ftMemo
    end
  end
  object ADOCmdDados: TMultADOCMD
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLInsert.Strings = (
      'insert into CCorrente_Lancto( Id_Conta, Nr_Lancamento, Tp_Lancamento,'
      '   Dt_Lancamento, Vl_Lancamento, Cd_Historico, Ds_Lancamento, Nr_Documento,'
      '   Fl_Bloqueado, Fl_Compensado )'
      'values( :Id_Conta, :Nr_Lancamento, :Tp_Lancamento, :Dt_Lancamento,'
      '   :Vl_Lancamento, :Cd_Historico, :Ds_Lancamento, :Nr_Documento,'
      '   :Fl_Bloqueado, :Fl_Compensado )'
    )
    SQLUpdate.Strings = (
      'update'
      '  CCorrente_Lancto'
      ''
      'set'
      '  Tp_Lancamento = :Tp_Lancamento,'
      '  Dt_Lancamento = :Dt_Lancamento,'
      '  Vl_Lancamento = :Vl_Lancamento,'
      '  Cd_Historico  = :Cd_Historico,'
      '  Ds_Lancamento = :Ds_Lancamento,'
      '  Nr_Documento  = :Nr_Documento,'
      '  Fl_Bloqueado  = :Fl_Bloqueado,'
      '  Fl_Compensado = :Fl_Compensado'
      ''
      'where'
      '  Id_Conta      = :Id_Conta and'
      '  Nr_Lancamento = :Nr_Lancamento'
    )
    SQLDelete.Strings = (
      'delete from'
      '  CCorrente_Lancto'
      ''
      'where'
      '  Id_Conta      = :Id_Conta and'
      '  Nr_Lancamento = :Nr_Lancamento'
    )
    Left = 56
    Top = 215
  end
  object ADODsConta: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  CC.Id_Conta, CC.Ds_Conta, CC.Cd_Banco, B.Sg_Banco, CC.Cd_Agencia, CC.Nr_Conta'#13#10#13#10'from'#13#10'  CCorrente CC'#13#10#13#10'inner join'#13#10'  Banco B'#13#10'on'#13#10'  B.Cd_Banco = CC.Cd_Banco'#13#10#13#10'where'#13#10'  CC.Id_Conta = :Id_Conta'
    Parameters = <
      item
        Name = 'Id_Conta'
        DataType = ftSmallint
        Size = -1
        Value = nil?
      end>
    Left = 121
    Top = 215
    object ADODsContaid_conta: TSmallintField
      FieldName = 'id_conta'
    end
    object ADODsContads_conta: TStringField
      FieldName = 'ds_conta'
      Size = 50
    end
    object ADODsContacd_banco: TStringField
      FieldName = 'cd_banco'
      FixedChar = True
      Size = 4
    end
    object ADODsContasg_banco: TStringField
      FieldName = 'sg_banco'
    end
    object ADODsContacd_agencia: TStringField
      FieldName = 'cd_agencia'
      FixedChar = True
      Size = 5
    end
    object ADODsContanr_conta: TStringField
      FieldName = 'nr_conta'
      Size = 10
    end
  end
  object ADODsNavegar: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = '-- First'#13#10'select top 1'#13#10'  Nr_Lancamento'#13#10#13#10'from'#13#10'  CCorrente_Lancto'#13#10#13#10'where'#13#10'  Id_Conta   = :Id_Conta'#13#10'  '#13#10'order by'#13#10'  Nr_Lancamento'
    Parameters = <
      item
        Name = 'Id_Conta'
        Size = -1
        Value = nil?
      end>
    SQLPrimary.Strings = (
      'select'
      '  max( Nr_Lancamento ) as Nr_Lancamento'
      ''
      'from'
      '  CCorrente_Lancto'
      ''
      'where'
      '  Id_Conta      = :Id_Conta'
    )
    SQLOther0.Strings = (
      '-- First'
      'select top 1'
      '  Nr_Lancamento'
      ''
      'from'
      '  CCorrente_Lancto'
      ''
      'where'
      '  Id_Conta   = :Id_Conta'
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
      '  CCorrente_Lancto'
      ''
      'where'
      '  Id_Conta      = :Id_Conta and'
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
      '  CCorrente_Lancto'
      ''
      'where'
      '  Id_Conta      = :Id_Conta and'
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
      '  CCorrente_Lancto'
      ''
      'where'
      '  Id_Conta      = :Id_Conta'
      ''
      'order by'
      '  Nr_Lancamento desc'
    )
    Left = 86
    Top = 215
    object ADODsNavegarnr_lancamento: TIntegerField
      FieldName = 'nr_lancamento'
    end
  end
end
