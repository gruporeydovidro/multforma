object FrmFilial_Select: TFrmFilial_Select
  Left = 338
  Top = 251
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Sele'#231#227'o de Filiais / Estabelecimentos'
  ClientHeight = 304
  ClientWidth = 748
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
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 21
    Height = 304
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 727
    Height = 304
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 282
      Top = 274
      Width = 441
      Height = 5
      Shape = bsTopLine
    end
    object Label1: TLabel
      Left = 4
      Top = 2
      Width = 135
      Height = 13
      Caption = 'Filiais de Acesso do Usu'#225'rio:'
    end
    object BitBtnConfirm: TBitBtn
      Left = 554
      Top = 277
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 1
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 640
      Top = 277
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 2
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object DbGSelect: TDBGrid
      Left = 4
      Top = 16
      Width = 716
      Height = 255
      DataSource = DsSelect
      FixedColor = clSilver
      Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = BitBtnConfirmClick
      OnEnter = DbGSelectEnter
      OnExit = DbGSelectExit
      OnKeyPress = DbGSelectKeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'Cd_Filial'
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nm_Abreviado'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Dp_Cidade'
          Width = 252
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nr_Telefone'
          Width = 87
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nm_Contato'
          Width = 192
          Visible = True
        end>
    end
  end
  object DsSelect: TDataSource
    DataSet = ADODsSelect
    Left = 43
    Top = 267
  end
  object ADODsSelect: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  F.Cd_Filial, F.Nm_Abreviado, F.Nm_Contato, F.Nr_Telefone,'#13#10'  C.Nm_Cidade + '''' - '''' + C.Sg_Estado as Dp_Cidade'#13#10#13#10'from'#13#10'  Usuario_Filial UF'#13#10#13#10'inner join'#13#10'  Filial F'#13#10'on'#13#10'  F.Cd_Filial = UF.Cd_Filial'#13#10#13#10'inner join'#13#10'  Cidade C'#13#10'on'#13#10'  C.Cd_Cidade = F.Cd_Cidade'#13#10#13#10'where'#13#10'  UF.Cd_Usuario = :Cd_Usuario'#13#10#13#10'order by'#13#10'  UF.Cd_Filial'
    Parameters = <
      item
        Name = 'Cd_Usuario'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 15
        Value = 'WELLINGTONB'
      end>
    Left = 71
    Top = 267
    object ADODsSelectCd_Filial: TSmallintField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'Cd_Filial'
    end
    object ADODsSelectNm_Abreviado: TStringField
      DisplayLabel = 'Nome Abreviado'
      FieldName = 'Nm_Abreviado'
    end
    object ADODsSelectNm_Contato: TStringField
      DisplayLabel = 'Contato'
      FieldName = 'Nm_Contato'
      Size = 50
    end
    object ADODsSelectNr_Telefone: TStringField
      DisplayLabel = 'Telefone'
      FieldName = 'Nr_Telefone'
      EditMask = '(##) ####-####;0; '
      FixedChar = True
      Size = 10
    end
    object ADODsSelectDp_Cidade: TStringField
      DisplayLabel = 'Cidade / Estado'
      FieldName = 'Dp_Cidade'
      ReadOnly = True
      Size = 65
    end
  end
end
