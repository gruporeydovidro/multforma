object FrmCEP: TFrmCEP
  Left = 236
  Top = 198
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Consulta de CEP'
  ClientHeight = 419
  ClientWidth = 732
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
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 21
    Height = 419
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 711
    Height = 419
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 3
      Top = 389
      Width = 704
      Height = 5
      Shape = bsTopLine
    end
    object BitBtnConfirm: TBitBtn
      Left = 538
      Top = 392
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 1
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 624
      Top = 392
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 2
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object PgCtrlFind: TPageControl
      Left = 4
      Top = 2
      Width = 702
      Height = 384
      ActivePage = TabSCEP
      TabOrder = 0
      OnChange = PgCtrlFindChange
      object TabSLogradouro: TTabSheet
        Caption = '                      Logradouro (Rua, Av. etc)                      '
        object Label1: TLabel
          Left = 5
          Top = 4
          Width = 80
          Height = 13
          Caption = 'Cidade / Estado:'
        end
        object SbCidade: TSpeedButton
          Tag = 1
          Left = 55
          Top = 20
          Width = 23
          Height = 19
          Hint = 'Consulta de Cidades'
          Flat = True
          Glyph.Data = {binary 2066 bytes}
          NumGlyphs = 2
          OnClick = SbCidadeClick
        end
        object BvlSeparator_1: TBevel
          Left = 1
          Top = 44
          Width = 692
          Height = 5
          Shape = bsTopLine
        end
        object Label2: TLabel
          Left = 5
          Top = 48
          Width = 110
          Height = 13
          Caption = 'Registros Encontrados:'
        end
        object EdtCd_CidFind: TCurrencyEdit
          Tag = 1
          Left = 5
          Top = 20
          Width = 50
          Height = 19
          Margins.Left = 2
          Margins.Top = 2
          AutoSize = False
          DecimalPlaces = 0
          DisplayFormat = '###'
          TabOrder = 0
          OnExit = EdtCd_CidFindExit
          OnKeyDown = EdtCd_CidBaiKeyDown
        end
        object EdtNm_CidFind: TEdit
          Left = 78
          Top = 20
          Width = 267
          Height = 19
          TabStop = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
        end
        object EdtDs_LogFind: TLabeledEdit
          Left = 350
          Top = 20
          Width = 308
          Height = 19
          EditLabel.Width = 126
          EditLabel.Height = 13
          EditLabel.Caption = 'Logradouro (Rua, Av. etc):'
          LabelSpacing = 2
          MaxLength = 60
          TabOrder = 2
          OnDblClick = EdtDs_LogFindDblClick
          OnKeyPress = EdtDs_LogFindKeyPress
        end
        object DbGLogradouroFind: TDBGrid
          Left = 5
          Top = 62
          Width = 686
          Height = 292
          DataSource = DsLogradouro
          FixedColor = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [dgTitles, dgColumnResize, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          ParentFont = False
          TabOrder = 3
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clBlack
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDblClick = BitBtnConfirmClick
          OnEnter = DbGLogradouroFindEnter
          OnExit = DbGLogradouroFindExit
          Columns = <
            item
              Expanded = False
              FieldName = 'nm_logradouro'
              Width = 415
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Nm_Bairro'
              Width = 190
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'nr_cep'
              Title.Alignment = taCenter
              Width = 59
              Visible = True
            end>
        end
        object CkBContendo: TCheckBox
          Left = 615
          Top = 2
          Width = 76
          Height = 17
          Caption = 'Conten&do...'
          TabOrder = 4
        end
      end
      object TabSBairro: TTabSheet
        Caption = '                          Bairro                          '
        object Label5: TLabel
          Left = 5
          Top = 4
          Width = 80
          Height = 13
          Caption = 'Cidade / Estado:'
        end
        object BvlSeparator_2: TBevel
          Left = 1
          Top = 44
          Width = 692
          Height = 5
          Shape = bsTopLine
        end
        object Label6: TLabel
          Left = 5
          Top = 48
          Width = 110
          Height = 13
          Caption = 'Registros Encontrados:'
        end
        object SbCidBai: TSpeedButton
          Tag = 2
          Left = 55
          Top = 20
          Width = 23
          Height = 19
          Hint = 'Consulta de Cidades'
          Flat = True
          Glyph.Data = {binary 2066 bytes}
          NumGlyphs = 2
          OnClick = SbCidadeClick
        end
        object EdtCd_CidBai: TCurrencyEdit
          Tag = 2
          Left = 5
          Top = 20
          Width = 50
          Height = 19
          Margins.Left = 2
          Margins.Top = 2
          AutoSize = False
          DecimalPlaces = 0
          DisplayFormat = '###'
          TabOrder = 0
          OnExit = EdtCd_CidFindExit
          OnKeyDown = EdtCd_CidBaiKeyDown
        end
        object EdtNm_CidBai: TEdit
          Left = 78
          Top = 20
          Width = 267
          Height = 19
          TabStop = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
        end
        object EdtNm_BaiFind: TLabeledEdit
          Left = 350
          Top = 20
          Width = 308
          Height = 19
          EditLabel.Width = 30
          EditLabel.Height = 13
          EditLabel.Caption = 'Bairro:'
          LabelSpacing = 2
          MaxLength = 60
          TabOrder = 2
          OnDblClick = EdtNm_BaiFindDblClick
          OnKeyPress = EdtNm_BaiFindKeyPress
        end
        object CkBContBai: TCheckBox
          Left = 615
          Top = 2
          Width = 76
          Height = 17
          Caption = 'Conten&do...'
          TabOrder = 3
        end
        object DbGBairro: TDBGrid
          Left = 5
          Top = 62
          Width = 686
          Height = 292
          DataSource = DsBairro
          FixedColor = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [dgTitles, dgColumnResize, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          ParentFont = False
          TabOrder = 4
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clBlack
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDblClick = BitBtnConfirmClick
          Columns = <
            item
              Expanded = False
              FieldName = 'nm_logradouro'
              Width = 415
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Nm_Bairro'
              Width = 190
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'nr_cep'
              Title.Alignment = taCenter
              Width = 59
              Visible = True
            end>
        end
      end
      object TabSCEP: TTabSheet
        Caption = '                                CEP                                 '
        ImageIndex = 1
        object Label3: TLabel
          Left = 5
          Top = 4
          Width = 24
          Height = 13
          Caption = 'CEP:'
        end
        object BvlSeparator_3: TBevel
          Left = 1
          Top = 44
          Width = 692
          Height = 5
          Shape = bsTopLine
        end
        object Label4: TLabel
          Left = 5
          Top = 48
          Width = 110
          Height = 13
          Caption = 'Registros Encontrados:'
        end
        object SbCEPInternet: TSpeedButton
          Tag = 2
          Left = 68
          Top = 20
          Width = 125
          Height = 19
          Hint = 'Consulta de base dos Correios na Internet'
          Caption = 'Correios (Internet)'
          Flat = True
          Glyph.Data = {binary 2066 bytes}
          NumGlyphs = 2
          OnClick = SbCEPInternetClick
        end
        object LblCorreios: TLabel
          Left = 200
          Top = 24
          Width = 38
          Height = 13
          Caption = 'Correios'
          Visible = False
        end
        object DbGCEPFind: TDBGrid
          Left = 5
          Top = 62
          Width = 686
          Height = 292
          DataSource = DsCEP
          FixedColor = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [dgTitles, dgColumnResize, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          ParentFont = False
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clBlack
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDblClick = BitBtnConfirmClick
          Columns = <
            item
              Expanded = False
              FieldName = 'nr_cep'
              Width = 59
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'dp_cidade'
              Width = 164
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'nm_logradouro'
              Width = 315
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Nm_Bairro'
              Width = 129
              Visible = True
            end>
        end
        object EdtNr_CEPFind: TMaskEdit
          Left = 5
          Top = 20
          Width = 60
          Height = 19
          AutoSize = False
          EditMask = '##.###-###;0; '
          MaxLength = 10
          TabOrder = 0
          OnChange = EdtNr_CEPFindChange
          OnDblClick = EdtNr_CEPFindDblClick
          OnKeyPress = EdtNr_CEPFindKeyPress
        end
      end
    end
  end
  object DsLogradouro: TDataSource
    DataSet = ADODsLogradouro
    Left = 27
    Top = 387
  end
  object ADODsLogradouro: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  L.Nm_Bairro, L.Nr_CEP, L.Nm_Logradouro'#13#10#13#10'from'#13#10'  CEP_Logradouro L'#13#10#13#10'where'#13#10'  L.Cd_Cidade = :Cd_Cidade and'#13#10'  L.Nm_Logradouro like :Find'#13#10#13#10'order by'#13#10'  L.Nm_Logradouro '
    Parameters = <
      item
        Name = 'Cd_Cidade'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 2
      end
      item
        Name = 'Find'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 72
        Value = '%'
      end>
    Left = 56
    Top = 387
    object ADODsLogradouronm_logradouro: TStringField
      DisplayLabel = 'Logradouro (Rua, Av. etc)'
      FieldName = 'nm_logradouro'
      Size = 72
    end
    object ADODsLogradouronr_cep: TStringField
      DisplayLabel = 'CEP'
      FieldName = 'nr_cep'
      EditMask = '##.###-###;0; '
      FixedChar = True
      Size = 8
    end
    object ADODsLogradouroNm_Bairro: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'Nm_Bairro'
      Size = 65
    end
  end
  object DsCEP: TDataSource
    DataSet = ADODsCEP
    Left = 91
    Top = 387
  end
  object ADODsCEP: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  L.Nr_CEP, L.Nm_Bairro, L.Cd_Cidade, L.Nm_Logradouro,'#13#10'  C.Nm_Cidade + '''' - '''' + Cast( C.SG_Estado as VarChar( 2 ) ) as Dp_Cidade'#13#10#13#10'from'#13#10'  CEP_Logradouro L'#13#10#13#10'inner join'#13#10'  Cidade C'#13#10'on'#13#10'  C.Cd_Cidade = L.Cd_Cidade'#13#10#13#10'where'#13#10'  L.Nr_CEP like :Find'#13#10'  '#13#10'order by'#13#10'  L.Nr_CEP'
    Parameters = <
      item
        Name = 'Find'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 8
        Value = '291003%'
      end>
    Left = 121
    Top = 387
    object ADODsCEPnr_cep: TStringField
      DisplayLabel = 'CEP'
      FieldName = 'nr_cep'
      EditMask = '##.###-###;0; '
      FixedChar = True
      Size = 8
    end
    object ADODsCEPdp_cidade: TStringField
      DisplayLabel = 'Cidade / Estado'
      FieldName = 'dp_cidade'
      Size = 254
    end
    object ADODsCEPcd_cidade: TIntegerField
      FieldName = 'cd_cidade'
    end
    object ADODsCEPnm_logradouro: TStringField
      DisplayLabel = 'Logradouro (Rua, Av. etc)'
      FieldName = 'nm_logradouro'
      Size = 72
    end
    object ADODsCEPNm_Bairro: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'Nm_Bairro'
      Size = 65
    end
  end
  object ADODsBairro: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  L.Nm_Bairro, L.Nr_CEP, L.Nm_Logradouro'#13#10#13#10'from'#13#10'  CEP_Logradouro L'#13#10#13#10'where'#13#10'  L.Cd_Cidade = :Cd_Cidade and'#13#10'  L.Nm_Bairro like :Find'#13#10#13#10'order by'#13#10'  L.Nm_Logradouro'
    Parameters = <
      item
        Name = 'Cd_Cidade'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 10
      end
      item
        Name = 'Find'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 65
        Value = '%'
      end>
    Left = 184
    Top = 387
    object ADODsBairronr_cep: TStringField
      DisplayLabel = 'CEP'
      FieldName = 'nr_cep'
      EditMask = '##.###-###;0; '
      FixedChar = True
      Size = 8
    end
    object ADODsBairronm_logradouro: TStringField
      DisplayLabel = 'Logradouro (Rua, Av. etc)'
      FieldName = 'nm_logradouro'
      Size = 72
    end
    object ADODsBairroNm_Bairro: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'Nm_Bairro'
      Size = 65
    end
  end
  object DsBairro: TDataSource
    DataSet = ADODsBairro
    Left = 155
    Top = 387
  end
  object ACBrCEP: TACBrCEP
    ProxyPort = '8080'
    ContentsEncodingCompress = []
    NivelLog = 0
    WebService = wsViaCep
    ChaveAcesso = '1STa9eKhhfKvc7Ljh6W6CO5Kr/bFOl.'
    PesquisarIBGE = True
    Left = 472
    Top = 248
  end
  object ADODsCidade: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'select'#13#10'  Cd_Cidade'#13#10#13#10'from'#13#10'  Cidade'#13#10#13#10'where'#13#10'  Cd_IBGE = :Cd_IBGE'
    Parameters = <
      item
        Name = 'Cd_IBGE'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = nil?
      end>
    Left = 240
    Top = 392
    object ADODsCidadeCd_Cidade: TIntegerField
      FieldName = 'Cd_Cidade'
    end
  end
end
