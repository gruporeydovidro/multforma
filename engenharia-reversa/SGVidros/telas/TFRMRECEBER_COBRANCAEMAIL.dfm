object FrmReceber_CobrancaEMail: TFrmReceber_CobrancaEMail
  Left = 294
  Top = 173
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Envio de E-Mail de Cobran'#231'a'
  ClientHeight = 581
  ClientWidth = 978
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
    Height = 581
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 957
    Height = 581
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 3
      Top = 551
      Width = 949
      Height = 5
      Shape = bsTopLine
    end
    object Label19: TLabel
      Left = 193
      Top = 4
      Width = 91
      Height = 13
      Caption = 'Grupo de Emitente:'
    end
    object SbGrupo: TSpeedButton
      Left = 233
      Top = 18
      Width = 23
      Height = 19
      Hint = 'Consulta Grupo de Emitente'
      Flat = True
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
      OnClick = SbGrupoClick
    end
    object Label2: TLabel
      Left = 5
      Top = 4
      Width = 115
      Height = 13
      Caption = 'Per'#237'odo de Vencimento:'
    end
    object SbPortador: TSpeedButton
      Left = 45
      Top = 54
      Width = 23
      Height = 19
      Hint = 'Seleciona Portador'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbPortadorClick
    end
    object Label10: TLabel
      Left = 5
      Top = 39
      Width = 43
      Height = 13
      Caption = 'Portador:'
    end
    object SbSubGrupo: TSpeedButton
      Left = 550
      Top = 18
      Width = 23
      Height = 19
      Hint = 'Consulta SubGrupo de Emitente'
      Flat = True
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
      OnClick = SbSubGrupoClick
    end
    object Label20: TLabel
      Left = 509
      Top = 3
      Width = 110
      Height = 13
      Caption = 'SubGrupo de Emitente:'
    end
    object BvlSeparator_1: TBevel
      Left = 3
      Top = 76
      Width = 949
      Height = 5
      Shape = bsTopLine
    end
    object SbOpen: TSpeedButton
      Left = 863
      Top = 51
      Width = 85
      Height = 24
      Hint = 'Visualizar'
      Caption = '&Selecionar'
      Flat = True
      Glyph.Data = {binary 250 bytes}
      ParentShowHint = False
      ShowHint = True
      OnClick = SbOpenClick
    end
    object Label1: TLabel
      Left = 6
      Top = 78
      Width = 40
      Height = 13
      Caption = 'Clientes:'
    end
    object Label7: TLabel
      Left = 6
      Top = 385
      Width = 66
      Height = 13
      Caption = 'Observa'#231#245'es:'
    end
    object Label6: TLabel
      Left = 7
      Top = 256
      Width = 45
      Height = 13
      Caption = 'Contatos:'
    end
    object Label3: TLabel
      Left = 583
      Top = 256
      Width = 83
      Height = 13
      Caption = 'Modelo de Envio:'
    end
    object Label9: TLabel
      Left = 583
      Top = 323
      Width = 100
      Height = 13
      Caption = 'Texto da Mensagem:'
    end
    object Label11: TLabel
      Left = 585
      Top = 513
      Width = 367
      Height = 29
      Alignment = taCenter
      AutoSize = False
      Caption = 'Utilize as legendas "$ <<Chave >> $" para modificar os dados do "Assunto" e "Texto da Mensagem"'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      WordWrap = True
    end
    object Label4: TLabel
      Left = 66
      Top = 79
      Width = 23
      Height = 13
      Caption = '$C$'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 336
      Top = 79
      Width = 31
      Height = 13
      Caption = '$NF$'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 488
      Top = 78
      Width = 30
      Height = 13
      Caption = '$>A$'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label12: TLabel
      Left = 567
      Top = 79
      Width = 30
      Height = 13
      Caption = '$<A$'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label13: TLabel
      Left = 651
      Top = 78
      Width = 32
      Height = 13
      Caption = '$AR$'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label14: TLabel
      Left = 725
      Top = 78
      Width = 32
      Height = 13
      Caption = '$CR$'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label15: TLabel
      Left = 803
      Top = 78
      Width = 32
      Height = 13
      Caption = '$SD$'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label16: TLabel
      Left = 863
      Top = 78
      Width = 24
      Height = 13
      Caption = '$N$'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label17: TLabel
      Left = 6
      Top = 513
      Width = 162
      Height = 13
      Caption = 'Registrar Ocorr'#234'ncia em Contatos:'
    end
    object Label18: TLabel
      Left = 713
      Top = 39
      Width = 34
      Height = 13
      Caption = 'Ordem:'
    end
    object BitBtnCancel: TBitBtn
      Left = 870
      Top = 554
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 18
      OnClick = BitBtnCancelClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object EdtCd_Grupo: TCurrencyEdit
      Tag = 1
      Left = 193
      Top = 18
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '###'
      TabOrder = 2
      OnExit = EdtCd_GrupoExit
      OnKeyDown = EdtCd_GrupoKeyDown
    end
    object EdtNm_Grupo: TEdit
      Left = 256
      Top = 18
      Width = 250
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
      TabOrder = 3
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
    object EdtCd_Portador: TCurrencyEdit
      Tag = 3
      Left = 5
      Top = 54
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 6
      OnExit = EdtCd_PortadorExit
      OnKeyDown = EdtCd_GrupoKeyDown
    end
    object EdtNm_Portador: TEdit
      Left = 69
      Top = 54
      Width = 297
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
      TabOrder = 7
    end
    object EdtCd_SubGrupo: TCurrencyEdit
      Tag = 2
      Left = 509
      Top = 18
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '###'
      TabOrder = 4
      OnExit = EdtCd_SubGrupoExit
      OnKeyDown = EdtCd_GrupoKeyDown
    end
    object EdtNm_SubGrupo: TEdit
      Left = 572
      Top = 18
      Width = 250
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
      TabOrder = 5
    end
    object CkBCliente: TCheckBox
      Left = 371
      Top = 42
      Width = 157
      Height = 17
      Caption = 'Enviar para e-mail do Cliente'
      Checked = True
      State = cbChecked
      TabOrder = 15
    end
    object CkBCobranca: TCheckBox
      Left = 371
      Top = 58
      Width = 168
      Height = 17
      Caption = 'Enviar para e-mail de Cobran'#231'a'
      Checked = True
      State = cbChecked
      TabOrder = 16
    end
    object DbGClientes: TDBGrid
      Left = 6
      Top = 91
      Width = 946
      Height = 164
      Hint = 'Pressione a barra de espa'#231'o para Marcar/Desmarcar a '#13#10'op'#231#227'o de envio de e-mail'
      DataSource = DsClientes
      FixedColor = clSilver
      Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentShowHint = False
      ShowHint = True
      TabOrder = 8
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = DbGClientesDblClick
      OnEnter = DbGClientesEnter
      OnExit = DbGClientesExit
      OnKeyPress = DbGClientesKeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'Cd_Emitente'
          Width = 47
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nm_Emitente'
          Width = 274
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nm_Fantasia'
          Width = 142
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Dt_Maxima'
          Title.Alignment = taCenter
          Width = 76
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Dt_Minima'
          Title.Alignment = taCenter
          Width = 76
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Vl_Parcela'
          Title.Alignment = taRightJustify
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Vl_Recebido'
          Title.Alignment = taRightJustify
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Vl_Saldo'
          Title.Alignment = taRightJustify
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nr_Parcelas'
          Title.Alignment = taRightJustify
          Width = 51
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Dp_Enviar'
          Visible = True
        end>
    end
    object DbGContato: TDBGrid
      Left = 6
      Top = 270
      Width = 574
      Height = 111
      DataSource = DsContato
      FixedColor = clSilver
      Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 9
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnEnter = DbGClientesEnter
      OnExit = DbGClientesExit
      Columns = <
        item
          Expanded = False
          FieldName = 'nm_contato'
          Width = 121
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dt_contato'
          Title.Alignment = taCenter
          Width = 94
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dt_novocontato'
          Title.Alignment = taCenter
          Width = 94
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ds_ocorrencia'
          Width = 160
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dp_usuario'
          Width = 83
          Visible = True
        end>
    end
    object DbMmContato: TDBMemo
      Left = 6
      Top = 399
      Width = 574
      Height = 111
      TabStop = False
      DataField = 'mm_observacao'
      DataSource = DsContato
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 10
    end
    object CbModelo: TComboBox
      Left = 583
      Top = 270
      Width = 98
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 11
      Text = 'A Vencer'
      OnChange = CbModeloChange
      Items.Strings = (
        'A Vencer'
        'Vencidos'
      )
    end
    object MmMensagem: TMemo
      Left = 583
      Top = 337
      Width = 363
      Height = 172
      ScrollBars = ssVertical
      TabOrder = 13
    end
    object EdtDs_Titulo_EM: TLabeledEdit
      Left = 583
      Top = 304
      Width = 335
      Height = 19
      EditLabel.Width = 41
      EditLabel.Height = 13
      EditLabel.Caption = 'Assunto:'
      LabelSpacing = 2
      MaxLength = 200
      TabOrder = 12
    end
    object BitBtnEMail: TBitBtn
      Left = 783
      Top = 554
      Width = 85
      Height = 25
      Caption = '&Enviar'
      TabOrder = 17
      OnClick = BitBtnEMailClick
      Glyph.Data = {binary 2106 bytes}
    end
    object STxtSend: TStaticText
      Left = 6
      Top = 558
      Width = 36
      Height = 17
      Alignment = taRightJustify
      Caption = 'Envio'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 19
    end
    object CkBConfirmacao: TCheckBox
      Left = 544
      Top = 42
      Width = 166
      Height = 17
      TabStop = False
      Caption = 'Solicitar confirma'#231#227'o de &leitura'
      TabOrder = 20
    end
    object CbOcorrencia: TComboBox
      Left = 6
      Top = 528
      Width = 574
      Height = 21
      Style = csDropDownList
      DropDownCount = 20
      ItemHeight = 13
      TabOrder = 14
    end
    object CbOrdem: TComboBox
      Left = 713
      Top = 54
      Width = 109
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 1
      TabOrder = 21
      Text = 'Nome'
      Items.Strings = (
        'C'#243'digo'
        'Nome'
        'Maior Atraso'
        'Menor Atraso'
        'Maior Saldo'
        'N'#186' de Parcelas'
      )
    end
  end
  object ADODsClientes: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    OnCalcFields = ADODsClientesCalcFields
    CommandText = '/*'#13#10'--------------- Verifica se existe a tabela temporaria'#13#10'if Object_ID( ''''TempDB..##CobrancaEMail'''' ) is not null'#13#10'  delete from ##CobrancaEMail where Nr_SPID = @@SPID'#13#10#13#10'else'#13#10'  create table ##CobrancaEMail'#13#10'    ('#13#10'    Cd_Filial SmallInt,'#13#10'    Cd_Emitente Int,'#13#10'    Nm_Emitente VarChar( 50 ),'#13#10'    Nm_Fantasia VarChar( 30 ),'#13#10'    Dt_Maxima SmallDateTime,'#13#10'    Dt_Minima SmallDateTime,'#13#10'    Vl_Parcela Numeric( 12, 3 ),'#13#10'    Vl_Recebido Numeric( 12, 3 ),'#13#10'    Vl_Saldo Numeric( 12, 3 ),'#13#10'    Nr_Parcelas Int,'#13#10'    Fl_Enviar Char( 1 ),'#13#10'    Nr_SPID Int,'#13#10'    Ds_EMail VarChar( 150 ),'#13#10'    Ds_EMailCob VarChar( 150 )'#13#10'    )'#13#10'*/'#13#10'--------------- Seleciona os Clientes'#13#10'select'#13#10'  Cd_Filial, Cd_Emitente, Nm_Emitente, Nm_Fantasia,'#13#10'  Dt_Maxima, Dt_Minima, Vl_Parcela, Vl_Recebido, Vl_Saldo,'#13#10'  Nr_Parcelas, Fl_Enviar, Ds_EMail, Ds_EMailCob'#13#10#13#10'from'#13#10'  ##CobrancaEMail'#13#10#13#10'where'#13#10'  Nr_SPID = @@SPID'#13#10
    Parameters = <>
    SQLOther0.Strings = (
      '--------------- Seleciona os Clientes'
      'select'
      '  Cd_Filial, Cd_Emitente, Nm_Emitente, Nm_Fantasia,'
      '  Dt_Maxima, Dt_Minima, Vl_Parcela, Vl_Recebido, Vl_Saldo,'
      '  Nr_Parcelas, Fl_Enviar, Ds_EMail, Ds_EMailCob'
      ''
      'from'
      '  ##CobrancaEMail'
      ''
      'where'
      '  Nr_SPID = @@SPID'
    )
    Left = 304
    Top = 480
    object ADODsClientesCd_Filial: TSmallintField
      FieldName = 'Cd_Filial'
    end
    object ADODsClientesCd_Emitente: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'Cd_Emitente'
    end
    object ADODsClientesNm_Emitente: TStringField
      DisplayLabel = 'Cliente'
      FieldName = 'Nm_Emitente'
      Size = 50
    end
    object ADODsClientesNm_Fantasia: TStringField
      DisplayLabel = 'Nome Fantasia'
      FieldName = 'Nm_Fantasia'
      Size = 30
    end
    object ADODsClientesDt_Maxima: TDateTimeField
      DisplayLabel = 'Maior Atraso'
      FieldName = 'Dt_Maxima'
      ReadOnly = True
      DisplayFormat = 'dd/mm/yyyy'
    end
    object ADODsClientesDt_Minima: TDateTimeField
      DisplayLabel = 'Menor Atraso'
      FieldName = 'Dt_Minima'
      ReadOnly = True
      DisplayFormat = 'dd/mm/yyyy'
    end
    object ADODsClientesVl_Parcela: TBCDField
      DisplayLabel = #192' Receber'
      FieldName = 'Vl_Parcela'
      ReadOnly = True
      DisplayFormat = '#,##0.00'
      Precision = 32
      Size = 2
    end
    object ADODsClientesVl_Recebido: TBCDField
      DisplayLabel = 'Recebido'
      FieldName = 'Vl_Recebido'
      ReadOnly = True
      DisplayFormat = '#,##0.00'
      Precision = 32
      Size = 2
    end
    object ADODsClientesVl_Saldo: TBCDField
      DisplayLabel = 'Saldo'
      FieldName = 'Vl_Saldo'
      ReadOnly = True
      DisplayFormat = '#,##0.00'
      Precision = 32
      Size = 2
    end
    object ADODsClientesNr_Parcelas: TIntegerField
      DisplayLabel = 'Em Aberto'
      FieldName = 'Nr_Parcelas'
      ReadOnly = True
    end
    object ADODsClientesFl_Enviar: TStringField
      FieldName = 'Fl_Enviar'
      FixedChar = True
      Size = 1
    end
    object ADODsClientesDp_Enviar: TStringField
      DisplayLabel = 'Enviar'
      FieldKind = fkCalculated
      FieldName = 'Dp_Enviar'
      Size = 3
      Calculated = True
    end
    object ADODsClientesDs_EMail: TStringField
      FieldName = 'Ds_EMail'
      Size = 150
    end
    object ADODsClientesDs_EMailCob: TStringField
      FieldName = 'Ds_EMailCob'
      Size = 150
    end
  end
  object DsClientes: TDataSource
    DataSet = ADODsClientes
    Left = 272
    Top = 480
  end
  object ADODsContato: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    OnCalcFields = ADODsContatoCalcFields
    CommandText = 'select top 50'#13#10'  C.Cd_Emitente, C.Nr_Contato, C.Dt_Contato, C.Dt_NovoContato, C.Cd_Usuario, '#13#10'  C.Nm_Contato, C.Mm_Observacao, OC.Ds_Ocorrencia'#13#10#13#10'from'#13#10'  Contato C'#13#10#13#10'inner join'#13#10'  Contato_Ocorrencia OC'#13#10'on'#13#10'  OC.Cd_Ocorrencia = C.Cd_Ocorrencia'#13#10#13#10'where'#13#10'  C.Cd_Emitente = :Cd_Emitente'#13#10#13#10'order by'#13#10'  C.Cd_Emitente, C.Nr_Contato desc'
    DataSource = DsClientes
    MasterFields = 'Cd_Emitente'
    Parameters = <
      item
        Name = 'Cd_Emitente'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = nil?
      end>
    Left = 365
    Top = 480
    object ADODsContatocd_emitente: TIntegerField
      FieldName = 'cd_emitente'
    end
    object ADODsContatonr_contato: TSmallintField
      DisplayLabel = 'Contato'
      FieldName = 'nr_contato'
    end
    object ADODsContatodt_contato: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'dt_contato'
      DisplayFormat = 'dd/mm/yyyy hh:mm'
    end
    object ADODsContatodt_novocontato: TDateTimeField
      DisplayLabel = 'Agendamento'
      FieldName = 'dt_novocontato'
      DisplayFormat = 'dd/mm/yyyy hh:mm'
    end
    object ADODsContatocd_usuario: TStringField
      FieldName = 'cd_usuario'
      Size = 15
    end
    object ADODsContatonm_contato: TStringField
      DisplayLabel = 'Nome do Contato'
      FieldName = 'nm_contato'
      Size = 50
    end
    object ADODsContatods_ocorrencia: TStringField
      DisplayLabel = 'Ocorr'#234'ncia'
      FieldName = 'ds_ocorrencia'
      Size = 50
    end
    object ADODsContatodp_usuario: TStringField
      DisplayLabel = 'Usu'#225'rio'
      FieldKind = fkCalculated
      FieldName = 'dp_usuario'
      Size = 15
      Calculated = True
    end
    object ADODsContatoMm_Observacao: TMemoField
      FieldName = 'Mm_Observacao'
      BlobType = ftMemo
    end
  end
  object DsContato: TDataSource
    DataSet = ADODsContato
    Left = 336
    Top = 480
  end
  object ADOCmdClientes: TMultADOCMD
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLOther0.Strings = (
      '--------------- Verifica se existe a tabela temporaria'
      'if Object_ID( ''''TempDB..##CobrancaEMail'''' ) is not null'
      '  delete from ##CobrancaEMail where Nr_SPID = @@SPID'
      ''
      'else'
      '  create table ##CobrancaEMail'
      '    ('
      '    Cd_Filial SmallInt,'
      '    Cd_Emitente Int,'
      '    Nm_Emitente VarChar( 50 ),'
      '    Nm_Fantasia VarChar( 30 ),'
      '    Dt_Maxima SmallDateTime,'
      '    Dt_Minima SmallDateTime,'
      '    Vl_Parcela Numeric( 12, 3 ),'
      '    Vl_Recebido Numeric( 12, 3 ),'
      '    Vl_Saldo Numeric( 12, 3 ),'
      '    Nr_Parcelas Int,'
      '    Fl_Enviar Char( 1 ),'
      '    Nr_SPID Int,'
      '    Ds_EMail VarChar( 150 ),'
      '    Ds_EMailCob VarChar( 150 )'
      '    )'
      ''
      '--------------- Seleciona os Clientes'
      'insert into ##CobrancaEMail'
      'select'
      '  R.Cd_Filial, R.Cd_Emitente, E.Nm_Emitente, E.Nm_Fantasia,'
      '  min( RP.Dt_Vencimento ) as Dt_Maxima,'
      '  max( RP.Dt_Vencimento) as Dt_Minima,'
      '  sum( RP.Vl_Parcela ) as Vl_Parcela,'
      '  sum( RP.Vl_Recebido ) as Vl_Recebido,'
      '  sum( RP.Vl_Parcela - RP.Vl_Recebido ) as Vl_Saldo,'
      '  count( distinct Cast( RP.Nr_Receber as Char( 5 ) ) + Cast( RP.Nr_Parcela as Char( 3 ) ) ) as Nr_Parcelas,'
      '  ''''1'''' as Fl_Enviar, @@SPID, E.Ds_EMail, E.Ds_EMailCob'
      ''
      'from'
      '  Receber_Parcela RP'
      ''
      'inner join'
      '  Receber R'
      'on'
      '  R.Cd_Filial  = RP.Cd_Filial and'
      '  R.Nr_Receber = RP.Nr_Receber and'
      '  R.St_Receber <= ''''2''''    -- Aberto/Amortizado'
      '  '
      'inner join'
      '  Emitente E'
      'on'
      '  E.Cd_Emitente = R.Cd_Emitente'
      '  /* Grupo */'
      '  /* SubGrupo */'
      ''
      'inner join'
      '  Emitente_Endereco EE'
      'on'
      '  EE.Cd_Emitente = E.Cd_Emitente and'
      '  EE.Nr_Endereco = E.Nr_Endereco'
      ''
      'where'
      '  RP.Cd_Filial      = :Cd_Filial and'
      '  /* Portador */'
      '  RP.Dt_Vencimento >= :Dt_Start and'
      '  RP.Dt_Vencimento  < :Dt_End'
      ''
      'group by'
      '  R.Cd_Filial, R.Cd_Emitente, E.Nm_Emitente, E.Nm_Fantasia,'
      '  E.Ds_EMail, E.Ds_EMailCob'
      ''
      'having'
      '  sum( RP.Vl_Parcela - RP.Vl_Recebido ) > 0.0'
    )
    SQLOther1.Strings = (
      '--------------- Atualiza o Status de envio'
      'update'
      '  ##CobrancaEMail'
      ''
      'set'
      '  Fl_Enviar = :Fl_Enviar'
      ''
      'where'
      '  Nr_SPID     = @@SPID and'
      '  Cd_Emitente = :Cd_Emitente'
    )
    SQLOther2.Strings = (
      '--------------- Registrar nos contatos'
      'declare'
      '  @Cd_Emitente Int,'
      '  @Nr_Contato SmallInt'
      ''
      'set'
      '  @Cd_Emitente = :Cd_Emitente'
      ''
      '----- Ultimo contato por cliente'
      'set'
      '  @Nr_Contato ='
      '    ('
      '    select'
      '      IsNull( max( Nr_Contato ), 0 )'
      ''
      '    from'
      '      Contato'
      ''
      '    where'
      '      Cd_Emitente = @Cd_Emitente'
      '    ) + 1'
      ''
      'insert into Contato( Cd_Emitente, Nr_Contato, Dt_Contato, Nm_Contato,'
      '  Cd_Ocorrencia, St_Contato, Dt_NovoContato, Cd_Usuario, Cd_Filial,'
      '  Nr_Orcamento, Mm_Observacao, Tp_Contato )'
      '  '
      'values( @Cd_Emitente, @Nr_Contato, :Dt_Contato, :Nm_Contato,'
      '  :Cd_Ocorrencia, ''''2'''', null, :Cd_Usuario, null,'
      '  null, :Mm_Observacao, ''''1'''' )'
    )
    Left = 400
    Top = 480
  end
end
