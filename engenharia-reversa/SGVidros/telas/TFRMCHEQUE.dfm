object FrmCheque: TFrmCheque
  Left = 356
  Top = 216
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Cheques'
  ClientHeight = 355
  ClientWidth = 712
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
    Height = 355
    Align = alLeft
    TabOrder = 0
    ExplicitHeight = 287
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 691
    Height = 355
    Align = alClient
    ParentColor = True
    TabOrder = 1
    ExplicitWidth = 537
    ExplicitHeight = 287
    object BvlSeparator: TBevel
      Left = 2
      Top = 325
      Width = 683
      Height = 5
      Shape = bsTopLine
    end
    object Label1: TLabel
      Left = 7
      Top = 30
      Width = 54
      Height = 13
      Caption = 'ID Cheque:'
    end
    object Label10: TLabel
      Left = 7
      Top = 67
      Width = 35
      Height = 13
      Caption = 'Cliente:'
    end
    object SbEmitente: TSpeedButton
      Left = 57
      Top = 82
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
    object Label2: TLabel
      Left = 176
      Top = 31
      Width = 42
      Height = 13
      Caption = 'Emiss'#227'o:'
    end
    object Label3: TLabel
      Left = 131
      Top = 177
      Width = 40
      Height = 13
      Caption = 'Cheque:'
    end
    object Label4: TLabel
      Left = 186
      Top = 177
      Width = 27
      Height = 13
      Caption = 'Valor:'
    end
    object Label5: TLabel
      Left = 271
      Top = 178
      Width = 110
      Height = 13
      Caption = 'Vencimento (Dep'#243'sito):'
    end
    object Label6: TLabel
      Left = 7
      Top = 219
      Width = 114
      Height = 13
      Caption = 'CNPJ / CPF (Terceiros):'
    end
    object Label7: TLabel
      Left = 445
      Top = 219
      Width = 45
      Height = 13
      Caption = 'Telefone:'
    end
    object SbBanco: TSpeedButton
      Left = 41
      Top = 155
      Width = 23
      Height = 19
      Hint = 'Seleciona o Banco'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbBancoClick
    end
    object LblOrcamento: TLabel
      Left = 269
      Top = 30
      Width = 55
      Height = 13
      Caption = 'Or'#231'amento:'
    end
    object Label8: TLabel
      Left = 7
      Top = 256
      Width = 40
      Height = 13
      Caption = 'Border'#244':'
    end
    object PnlToolMain: TPanel
      Left = 1
      Top = 1
      Width = 689
      Height = 26
      Align = alTop
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 16
      ExplicitWidth = 535
      object PnlDatabase: TPanel
        Left = 0
        Top = 0
        Width = 689
        Height = 26
        Align = alClient
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 0
        ExplicitWidth = 535
        object ActToolBDatabase: TActionToolBar
          Left = 0
          Top = 0
          Width = 689
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
          ExplicitWidth = 535
        end
      end
    end
    object BitBtnConfirm: TBitBtn
      Left = 518
      Top = 328
      Width = 85
      Height = 25
      Caption = 'Confirmar'
      TabOrder = 17
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 482 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 604
      Top = 328
      Width = 85
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 18
      OnClick = BitBtnCancelClick
      Glyph.Data = {binary 482 bytes}
      NumGlyphs = 2
    end
    object EdtId_Cheque: TCurrencyEdit
      Left = 7
      Top = 45
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
    object EdtCd_Emitente: TCurrencyEdit
      Tag = 1
      Left = 7
      Top = 82
      Width = 50
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 4
      OnExit = EdtCd_EmitenteExit
      OnKeyDown = EdtCd_EmitenteKeyDown
    end
    object EdtNm_Emitente: TEdit
      Left = 81
      Top = 82
      Width = 384
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
      TabOrder = 5
    end
    object EdtSt_Cheque: TLabeledEdit
      Left = 64
      Top = 45
      Width = 107
      Height = 19
      TabStop = False
      Color = clSilver
      EditLabel.Width = 45
      EditLabel.Height = 13
      EditLabel.Caption = 'Situa'#231#227'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      LabelSpacing = 2
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object EdtDt_Emissao: TDateEdit
      Left = 176
      Top = 45
      Width = 89
      Height = 19
      TabStop = False
      CheckOnExit = True
      DialogTitle = 'Selecione a Data'
      GlyphKind = gkCustom
      Glyph.Data = {binary 1850 bytes}
      NumGlyphs = 1
      StartOfWeek = Sun
      TabOrder = 2
    end
    object EdtCd_Banco: TLabeledEdit
      Left = 7
      Top = 155
      Width = 34
      Height = 19
      EditLabel.Width = 34
      EditLabel.Height = 13
      EditLabel.Caption = 'Banco:'
      LabelSpacing = 2
      MaxLength = 3
      TabOrder = 7
      OnExit = EdtCd_BancoExit
      OnKeyDown = EdtCd_EmitenteKeyDown
    end
    object EdtCd_Agencia: TLabeledEdit
      Left = 7
      Top = 192
      Width = 34
      Height = 19
      EditLabel.Width = 42
      EditLabel.Height = 13
      EditLabel.Caption = 'Ag'#234'ncia:'
      LabelSpacing = 2
      MaxLength = 4
      TabOrder = 8
    end
    object EdtCd_Conta: TLabeledEdit
      Left = 54
      Top = 192
      Width = 72
      Height = 19
      EditLabel.Width = 31
      EditLabel.Height = 13
      EditLabel.Caption = 'Conta:'
      LabelSpacing = 2
      MaxLength = 10
      TabOrder = 9
    end
    object EdtNr_Cheque: TCurrencyEdit
      Left = 131
      Top = 192
      Width = 50
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '###'
      TabOrder = 10
    end
    object EdtVl_Cheque: TCurrencyEdit
      Left = 186
      Top = 192
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DisplayFormat = '#,##0.00'
      TabOrder = 11
    end
    object EdtDt_Vencimento: TDateEdit
      Left = 271
      Top = 192
      Width = 89
      Height = 19
      CheckOnExit = True
      DialogTitle = 'Selecione a Data'
      GlyphKind = gkCustom
      Glyph.Data = {binary 1850 bytes}
      NumGlyphs = 1
      StartOfWeek = Sun
      TabOrder = 12
    end
    object EdtNr_Documento: TEditMF
      Left = 7
      Top = 234
      Width = 120
      Height = 19
      AutoSize = False
      MaxLength = 18
      TabOrder = 13
      Kind = dkBoth
      Formated = True
      LockOnError = True
      Check = True
    end
    object EdtNr_Telefone: TMaskEdit
      Left = 445
      Top = 234
      Width = 85
      Height = 19
      AutoSize = False
      EditMask = '(##) ####-####;0; '
      MaxLength = 14
      TabOrder = 15
    end
    object EdtNm_Cliente: TLabeledEdit
      Left = 132
      Top = 234
      Width = 308
      Height = 19
      EditLabel.Width = 234
      EditLabel.Height = 13
      EditLabel.Caption = 'Nome do Cliente (Emissor do Cheque - Terceiros):'
      LabelSpacing = 2
      MaxLength = 50
      TabOrder = 14
    end
    object EdtSg_Banco: TEdit
      Left = 65
      Top = 155
      Width = 308
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
      TabOrder = 19
    end
    object EdtNr_Orcamento: TCurrencyEdit
      Left = 269
      Top = 45
      Width = 60
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
    end
    object EdtCMC7: TLabeledEdit
      Left = 7
      Top = 120
      Width = 308
      Height = 19
      EditLabel.Width = 124
      EditLabel.Height = 13
      EditLabel.Caption = 'Leitor de Cheques - CMC7'
      TabOrder = 6
      OnChange = EdtCMC7Change
    end
    object EdtDp_Bordero: TEdit
      Left = 7
      Top = 271
      Width = 514
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
      TabOrder = 20
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
    Left = 527
    Top = 33
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
    CommandText = 'select'#13#10'  C.Cd_Filial, C.Id_Cheque, C.Cd_Emitente, E.Nm_Emitente, C.Cd_Banco,'#13#10'  C.Cd_Agencia, C.Nr_Conta, C.Nr_Cheque, C.Fl_Cheque, C.Vl_Cheque,'#13#10'  C.Dt_Emissao, C.Dt_Vencimento, C.Nr_Documento, C.Nm_Cliente,'#13#10'  C.Nr_Telefone, B.Sg_Banco, C.Nr_Orcamento,'#13#10#13#10'  Dp_Bordero ='#13#10'    ('#13#10'    select top 1'#13#10'      ''''Bordero N'#186' '''' + Convert( VarChar( 5 ), CB.Nr_Bordero ) + '''' - '''' +'#13#10'        case'#13#10'          when CB.Cd_Portador is not null then '''' Portador: '''' + Convert( VarChar( 5 ), CB.Cd_Portador ) + '''' - '''' + P.Nm_Portador'#13#10'          else '''' Fornecedor '''' + Convert( VarChar( 8 ), CB.Cd_Emitente ) + '''' - '''' + E.Nm_Emitente'#13#10'        end'#13#10#13#10'    from'#13#10'      Cheque_Deposito CD'#13#10#13#10'    inner join'#13#10'      Cheque_Bordero CB'#13#10'    on'#13#10'      CB.Cd_Filial  = CD.Cd_Filial and'#13#10'      CB.Nr_Bordero = CD.Nr_Bordero'#13#10#13#10'    left join'#13#10'      Portador P'#13#10'    on'#13#10'      P.Cd_Portador = CB.Cd_Portador'#13#10#13#10'    left join'#13#10'      Emitente E'#13#10'    on'#13#10'      E.Cd_Emitente = CB.Cd_Emitente'#13#10#13#10'    where'#13#10'      CD.Cd_Filial = C.Cd_Filial and'#13#10'      CD.Id_Cheque = C.Id_Cheque'#13#10#13#10'    order by'#13#10'      1 desc'#13#10'    )'#13#10#13#10'from'#13#10'  Cheque C'#13#10#13#10'inner join'#13#10'  Emitente E'#13#10'on'#13#10'  E.Cd_Emitente = C.Cd_Emitente'#13#10#13#10'inner join'#13#10'  Banco B'#13#10'on'#13#10'  B.Cd_Banco = C.Cd_Banco'#13#10#13#10'where'#13#10'  C.Cd_Filial = :Cd_Filial and'#13#10'  C.Id_Cheque = :Id_Cheque'
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
        Name = 'Id_Cheque'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = nil?
      end>
    Left = 578
    Top = 191
    object ADODsDadoscd_filial: TSmallintField
      FieldName = 'cd_filial'
    end
    object ADODsDadosid_cheque: TIntegerField
      FieldName = 'id_cheque'
    end
    object ADODsDadoscd_emitente: TIntegerField
      FieldName = 'cd_emitente'
    end
    object ADODsDadosnm_emitente: TStringField
      FieldName = 'nm_emitente'
      Size = 50
    end
    object ADODsDadoscd_banco: TStringField
      FieldName = 'cd_banco'
      FixedChar = True
      Size = 3
    end
    object ADODsDadoscd_agencia: TStringField
      FieldName = 'cd_agencia'
      FixedChar = True
      Size = 4
    end
    object ADODsDadosnr_conta: TStringField
      FieldName = 'nr_conta'
      Size = 10
    end
    object ADODsDadosnr_cheque: TIntegerField
      FieldName = 'nr_cheque'
    end
    object ADODsDadosfl_cheque: TStringField
      FieldName = 'fl_cheque'
      FixedChar = True
      Size = 1
    end
    object ADODsDadosvl_cheque: TBCDField
      FieldName = 'vl_cheque'
      Precision = 12
      Size = 2
    end
    object ADODsDadosdt_emissao: TDateTimeField
      FieldName = 'dt_emissao'
    end
    object ADODsDadosdt_vencimento: TDateTimeField
      FieldName = 'dt_vencimento'
    end
    object ADODsDadosnr_documento: TStringField
      FieldName = 'nr_documento'
      Size = 14
    end
    object ADODsDadosnm_cliente: TStringField
      FieldName = 'nm_cliente'
      Size = 50
    end
    object ADODsDadosnr_telefone: TStringField
      FieldName = 'nr_telefone'
      Size = 10
    end
    object ADODsDadossg_banco: TStringField
      FieldName = 'sg_banco'
    end
    object ADODsDadosNr_Orcamento: TIntegerField
      FieldName = 'Nr_Orcamento'
    end
    object ADODsDadosDp_Bordero: TStringField
      FieldName = 'Dp_Bordero'
      ReadOnly = True
      Size = 92
    end
  end
  object ADOCmdDados: TMultADOCMD
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLInsert.Strings = (
      'insert into Cheque( Cd_Filial, Id_Cheque, Cd_Emitente, Cd_Banco, Cd_Agencia,'
      '   Nr_Conta, Nr_Cheque, Fl_Cheque, Vl_Cheque, Dt_Emissao, Dt_Vencimento,'
      '   Nr_Documento, Nm_Cliente, Nr_Telefone, Nr_Orcamento )'
      'values( :Cd_Filial, :Id_Cheque, :Cd_Emitente, :Cd_Banco, :Cd_Agencia,'
      '   :Nr_Conta, :Nr_Cheque, ''''1'''', :Vl_Cheque, :Dt_Emissao, :Dt_Vencimento,'
      '   :Nr_Documento, :Nm_Cliente, :Nr_Telefone, :Nr_Orcamento )'
    )
    SQLUpdate.Strings = (
      'update'
      '  Cheque'
      ''
      'set'
      '  Cd_Emitente   = :Cd_Emitente,'
      '  Cd_Banco      = :Cd_Banco,'
      '  Cd_Agencia    = :Cd_Agencia,'
      '  Nr_Conta      = :Nr_Conta,'
      '  Nr_Cheque     = :Nr_Cheque,'
      '  Vl_Cheque     = :Vl_Cheque,'
      '  Dt_Emissao    = :Dt_Emissao,'
      '  Dt_Vencimento = :Dt_Vencimento,'
      '  Nr_Documento  = :Nr_Documento,'
      '  Nm_Cliente    = :Nm_Cliente,'
      '  Nr_Telefone   = :Nr_Telefone,'
      '  Nr_Orcamento  = :Nr_Orcamento'
      ''
      'where'
      '  Cd_Filial     = :Cd_Filial and'
      '  Id_Cheque     = :Id_Cheque'
    )
    SQLDelete.Strings = (
      'delete from'
      '  Cheque'
      ''
      'where'
      '  Cd_Filial = :Cd_Filial and'
      '  Id_Cheque = :Id_Cheque'
    )
    Left = 608
    Top = 191
  end
  object ADODsNavegar: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = '-- First'#13#10'select top 1'#13#10'  Id_Cheque'#13#10#13#10'from'#13#10'  Cheque'#13#10#13#10'where'#13#10'  Cd_Filial = :Cd_Filial'#13#10#13#10'order by'#13#10'  Id_Cheque'
    Parameters = <
      item
        Name = 'Cd_Filial'
        DataType = ftSmallint
        Size = -1
        Value = nil?
      end>
    SQLPrimary.Strings = (
      'select'
      '  max( Id_Cheque ) as Id_Cheque'
      ''
      'from'
      '  Cheque'
      ''
      'where'
      '  Cd_Filial = :Cd_Filial'
    )
    SQLOther0.Strings = (
      '-- First'
      'select top 1'
      '  Id_Cheque'
      ''
      'from'
      '  Cheque'
      ''
      'where'
      '  Cd_Filial = :Cd_Filial'
      ''
      'order by'
      '  Id_Cheque'
    )
    SQLOther1.Strings = (
      '-- Prior'
      'select top 1'
      '  Id_Cheque'
      ''
      'from'
      '  Cheque'
      ''
      'where'
      '  Cd_Filial  = :Cd_Filial and'
      '  Id_Cheque < :Id_Cheque'
      ''
      'order by'
      '  Id_Cheque desc'
    )
    SQLOther2.Strings = (
      '-- Next'
      'select top 1'
      '  Id_Cheque'
      ''
      'from'
      '  Cheque'
      ''
      'where'
      '  Cd_Filial  = :Cd_Filial and'
      '  Id_Cheque > :Id_Cheque'
      ''
      'order by'
      '  Id_Cheque'
    )
    SQLOther3.Strings = (
      '-- Last'
      'select top 1'
      '  Id_Cheque'
      ''
      'from'
      '  Cheque'
      ''
      'where'
      '  Cd_Filial = :Cd_Filial'
      ''
      'order by'
      '  Id_Cheque desc'
    )
    Left = 638
    Top = 191
    object ADODsNavegarid_cheque: TIntegerField
      FieldName = 'id_cheque'
    end
  end
end
