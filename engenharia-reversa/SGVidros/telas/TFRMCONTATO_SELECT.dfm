object FrmContato_Select: TFrmContato_Select
  Left = 226
  Top = 331
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Lista de Contatos'
  ClientHeight = 257
  ClientWidth = 778
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 21
    Height = 257
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 757
    Height = 257
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 3
      Top = 227
      Width = 748
      Height = 5
      Shape = bsTopLine
    end
    object BitBtnConfirm: TBitBtn
      Left = 584
      Top = 230
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 1
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 670
      Top = 230
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 2
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object DbGSelContato: TDBGrid
      Left = 5
      Top = 6
      Width = 745
      Height = 216
      DataSource = DsSelContato
      FixedColor = clSilver
      Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = DbGSelContatoDblClick
      OnEnter = DbGSelContatoEnter
      OnExit = DbGSelContatoExit
      OnKeyPress = DbGSelContatoKeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'nm_contato'
          Width = 266
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ds_cargo'
          Width = 111
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ds_email'
          Width = 140
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nr_telefone'
          Title.Alignment = taCenter
          Width = 74
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nr_ramal'
          Title.Alignment = taRightJustify
          Width = 53
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nr_celular'
          Title.Alignment = taCenter
          Width = 79
          Visible = True
        end>
    end
  end
  object DsSelContato: TDataSource
    DataSet = ADODsSelContato
    Left = 31
    Top = 195
  end
  object ADODsSelContato: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  A.Cd_Emitente, A.Nr_Contato, A.Nm_Contato, A.Dt_Nascimento, A.Ds_Cargo,'#13#10'  A.Ds_EMail, A.Nr_Telefone, A.Nr_Ramal, A.Nr_Celular'#13#10#13#10'from'#13#10'  Emitente_Contato A'#13#10#13#10'where'#13#10'  A.Cd_Emitente = :Cd_Emitente'#13#10#13#10'order by'#13#10'  A.Cd_Emitente, A.Nm_Contato'
    Parameters = <
      item
        Name = 'Cd_Emitente'
        DataType = ftInteger
        Size = -1
        Value = 1
      end>
    Left = 62
    Top = 195
    object ADODsSelContatocd_emitente: TIntegerField
      FieldName = 'cd_emitente'
    end
    object ADODsSelContatonr_contato: TSmallintField
      FieldName = 'nr_contato'
    end
    object ADODsSelContatonm_contato: TStringField
      DisplayLabel = 'Contato'
      FieldName = 'nm_contato'
      Size = 50
    end
    object ADODsSelContatodt_nascimento: TDateTimeField
      DisplayLabel = 'Nascimento'
      FieldName = 'dt_nascimento'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object ADODsSelContatods_cargo: TStringField
      DisplayLabel = 'Cargo'
      FieldName = 'ds_cargo'
      Size = 30
    end
    object ADODsSelContatods_email: TStringField
      DisplayLabel = 'E-Mail'
      FieldName = 'ds_email'
      Size = 50
    end
    object ADODsSelContatonr_telefone: TStringField
      DisplayLabel = 'Telefone'
      FieldName = 'nr_telefone'
      EditMask = '(##) ####-####;0; '
      Size = 10
    end
    object ADODsSelContatonr_ramal: TSmallintField
      DisplayLabel = 'Ramal'
      FieldName = 'nr_ramal'
    end
    object ADODsSelContatonr_celular: TStringField
      DisplayLabel = 'Celular'
      FieldName = 'nr_celular'
      EditMask = '(##) ####-####;0; '
      Size = 10
    end
  end
end
