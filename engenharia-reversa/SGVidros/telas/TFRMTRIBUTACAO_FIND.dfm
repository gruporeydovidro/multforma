object FrmTributacao_Find: TFrmTributacao_Find
  Left = 341
  Top = 217
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Consulta de Tributa'#231#227'o de Produtos'
  ClientHeight = 428
  ClientWidth = 865
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
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object PnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 21
    Height = 428
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 844
    Height = 428
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 3
      Top = 399
      Width = 837
      Height = 5
      Shape = bsTopLine
    end
    object BvlSeparetor_2: TBevel
      Left = 3
      Top = 45
      Width = 837
      Height = 5
      Shape = bsTopLine
    end
    object Label1: TLabel
      Left = 5
      Top = 48
      Width = 110
      Height = 13
      Caption = 'Registros Encontrados:'
    end
    object Label2: TLabel
      Left = 318
      Top = 5
      Width = 106
      Height = 13
      Caption = 'Consultar pelo C'#243'digo:'
    end
    object BitBtnConfirm: TBitBtn
      Left = 671
      Top = 401
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 3
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 757
      Top = 401
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 4
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object EdtFind: TLabeledEdit
      Left = 5
      Top = 20
      Width = 308
      Height = 19
      AutoSelect = False
      EditLabel.Width = 121
      EditLabel.Height = 13
      EditLabel.Caption = 'Consultar pela Descri'#231#227'o:'
      LabelSpacing = 2
      MaxLength = 60
      TabOrder = 0
      OnDblClick = EdtFindDblClick
      OnKeyPress = EdtFindKeyPress
    end
    object CkBContendo: TCheckBox
      Left = 757
      Top = 4
      Width = 76
      Height = 17
      Caption = 'Conten&do...'
      Checked = True
      State = cbChecked
      TabOrder = 5
      OnClick = CkBContendoClick
    end
    object DbGFind: TDBGrid
      Left = 5
      Top = 62
      Width = 836
      Height = 335
      DataSource = DsFind
      FixedColor = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgColumnResize, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clBlack
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = BitBtnConfirmClick
      OnEnter = DbGFindEnter
      OnExit = DbGFindExit
      OnKeyPress = DbGFindKeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'Cd_Tributacao'
          Width = 38
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Ds_Tributacao'
          Width = 423
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Cd_CST'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Cd_CFOPDentro'
          Title.Alignment = taCenter
          Width = 70
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Cd_CFOPFora'
          Title.Alignment = taCenter
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Pr_MVA_Dentro'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Pr_MVA_Fora'
          Width = 70
          Visible = True
        end>
    end
    object EdtCdFind: TCurrencyEdit
      Left = 318
      Top = 20
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 1
      OnDblClick = EdtCdFindDblClick
      OnKeyPress = EdtCdFindKeyPress
    end
  end
  object DsFind: TDataSource
    DataSet = ADODsFind
    Left = 326
    Top = 120
  end
  object ADODsFind: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  T.Cd_Tributacao, T.Ds_Tributacao, T.Tp_Tributacao, T.Pr_Contrib,'#13#10'  T.Pr_NaoContrib, T.Cd_CST, T.Mm_ObsNota,'#13#10'  T.Cd_CFOPDentro, CFIn.Ds_CFOP as Ds_CFOPDentro,'#13#10'  T.Cd_CFOPFora, CFOut.Ds_CFOP as Ds_CFOPFora,'#13#10'  T.Cd_CST_Pis, T.Pr_PIS, T.Cd_CST_Cofins, T.Pr_Cofins,'#13#10'  T.Pr_MVA_Dentro, T.Pr_MVA_Fora'#13#10#13#10'from'#13#10'  Tributacao T'#13#10#13#10'left join'#13#10'  CFOP CFIn'#13#10'on'#13#10'  CFIn.Cd_CFOP = T.Cd_CFOPDentro'#13#10#13#10'left join'#13#10'  CFOP CFOut'#13#10'on'#13#10'  CFOut.Cd_CFOP = T.Cd_CFOPFora'#13#10#13#10'where'#13#10'  T.Ds_Tributacao like :Find'#13#10#13#10'order by'#13#10'  T.Ds_Tributacao'
    Parameters = <
      item
        Name = 'Find'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = '%%'
      end>
    SQLOther0.Strings = (
      '--------------- Consulta pela descri'#231#227'o'
      'select'
      '  T.Cd_Tributacao, T.Ds_Tributacao, T.Tp_Tributacao, T.Pr_Contrib,'
      '  T.Pr_NaoContrib, T.Cd_CST, T.Mm_ObsNota,'
      '  T.Cd_CFOPDentro, CFIn.Ds_CFOP as Ds_CFOPDentro,'
      '  T.Cd_CFOPFora, CFOut.Ds_CFOP as Ds_CFOPFora,'
      '  T.Cd_CST_Pis, T.Pr_PIS, T.Cd_CST_Cofins, T.Pr_Cofins,'
      '  T.Pr_MVA_Dentro, T.Pr_MVA_Fora'
      ''
      'from'
      '  Tributacao T'
      ''
      'left join'
      '  CFOP CFIn'
      'on'
      '  CFIn.Cd_CFOP = T.Cd_CFOPDentro'
      ''
      'left join'
      '  CFOP CFOut'
      'on'
      '  CFOut.Cd_CFOP = T.Cd_CFOPFora'
      ''
      'where'
      '  T.Ds_Tributacao like :Find'
      ''
      'order by'
      '  T.Ds_Tributacao'
    )
    SQLOther1.Strings = (
      '--------------- Consulta pelo c'#243'digo'
      'select'
      '  T.Cd_Tributacao, T.Ds_Tributacao, T.Tp_Tributacao, T.Pr_Contrib,'
      '  T.Pr_NaoContrib, T.Cd_CST, T.Mm_ObsNota,'
      '  T.Cd_CFOPDentro, CFIn.Ds_CFOP as Ds_CFOPDentro,'
      '  T.Cd_CFOPFora, CFOut.Ds_CFOP as Ds_CFOPFora,'
      '  T.Cd_CST_Pis, T.Pr_PIS, T.Cd_CST_Cofins, T.Pr_Cofins,'
      '  T.Pr_MVA_Dentro, T.Pr_MVA_Fora'
      ''
      'from'
      '  Tributacao T'
      ''
      'left join'
      '  CFOP CFIn'
      'on'
      '  CFIn.Cd_CFOP = T.Cd_CFOPDentro'
      ''
      'left join'
      '  CFOP CFOut'
      'on'
      '  CFOut.Cd_CFOP = T.Cd_CFOPFora'
      ''
      'where'
      '  T.Cd_Tributacao = :Find'
      ''
      'order by'
      '  T.Ds_Tributacao'
    )
    Left = 356
    Top = 120
    object ADODsFindCd_Tributacao: TSmallintField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'Cd_Tributacao'
    end
    object ADODsFindDs_Tributacao: TStringField
      DisplayLabel = 'Descricao'
      FieldName = 'Ds_Tributacao'
      Size = 60
    end
    object ADODsFindCd_CST: TStringField
      DisplayLabel = 'CST / CSOSN'
      FieldName = 'Cd_CST'
      Size = 5
    end
    object ADODsFindCd_CFOPDentro: TStringField
      DisplayLabel = 'CFOP Dentro'
      FieldName = 'Cd_CFOPDentro'
      FixedChar = True
      Size = 4
    end
    object ADODsFindCd_CFOPFora: TStringField
      DisplayLabel = 'CFOP Fora'
      FieldName = 'Cd_CFOPFora'
      FixedChar = True
      Size = 4
    end
    object ADODsFindPr_MVA_Dentro: TBCDField
      DisplayLabel = 'MVA Dentro'
      FieldName = 'Pr_MVA_Dentro'
      DisplayFormat = '##.##'
      Precision = 7
      Size = 3
    end
    object ADODsFindPr_MVA_Fora: TBCDField
      DisplayLabel = 'MVA Fora'
      FieldName = 'Pr_MVA_Fora'
      DisplayFormat = '##.##'
      Precision = 7
      Size = 3
    end
  end
end
