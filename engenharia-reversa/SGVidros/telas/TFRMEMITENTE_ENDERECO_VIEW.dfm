object FrmEmitente_Endereco_View: TFrmEmitente_Endereco_View
  Left = 247
  Top = 291
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Sele'#231#227'o de Endere'#231'o do Emitente'
  ClientHeight = 330
  ClientWidth = 746
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
  PixelsPerInch = 96
  TextHeight = 13
  object PnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 21
    Height = 330
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 725
    Height = 330
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 3
      Top = 266
      Width = 717
      Height = 5
      Shape = bsTopLine
    end
    object BitBtnConfirm: TBitBtn
      Left = 553
      Top = 301
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 1
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 639
      Top = 301
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 2
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object DbCtrlGEndereco: TDBCtrlGrid
      Left = 1
      Top = 1
      Width = 716
      Height = 297
      AllowDelete = False
      AllowInsert = False
      DataSource = DsEndView
      PanelHeight = 297
      PanelWidth = 699
      TabOrder = 0
      RowCount = 1
      object Label22: TLabel
        Left = 4
        Top = 3
        Width = 88
        Height = 13
        Caption = 'Tipo do Endere'#231'o:'
      end
      object Label23: TLabel
        Left = 236
        Top = 3
        Width = 49
        Height = 13
        Caption = 'Endere'#231'o:'
      end
      object Label24: TLabel
        Left = 216
        Top = 40
        Width = 30
        Height = 13
        Caption = 'Bairro:'
      end
      object Label25: TLabel
        Left = 4
        Top = 40
        Width = 67
        Height = 13
        Caption = 'Complemento:'
      end
      object Label26: TLabel
        Left = 428
        Top = 40
        Width = 24
        Height = 13
        Caption = 'CEP:'
      end
      object Label27: TLabel
        Left = 315
        Top = 77
        Width = 54
        Height = 13
        Caption = 'Telefone 1:'
      end
      object Label28: TLabel
        Left = 411
        Top = 77
        Width = 54
        Height = 13
        Caption = 'Telefone 2:'
      end
      object Label29: TLabel
        Left = 506
        Top = 77
        Width = 54
        Height = 13
        Caption = 'Telefone 3:'
      end
      object Label30: TLabel
        Left = 602
        Top = 77
        Width = 23
        Height = 13
        Caption = 'FAX:'
      end
      object Label31: TLabel
        Left = 4
        Top = 148
        Width = 66
        Height = 13
        Caption = 'Observa'#231#245'es:'
      end
      object Label32: TLabel
        Left = 4
        Top = 77
        Width = 80
        Height = 13
        Caption = 'Cidade / Estado:'
      end
      object Label1: TLabel
        Left = 4
        Top = 113
        Width = 26
        Height = 13
        Caption = 'Rota:'
      end
      object Label2: TLabel
        Left = 579
        Top = 3
        Width = 40
        Height = 13
        Caption = 'N'#250'mero:'
      end
      object DbEdtDs_Titulo: TDBEdit
        Left = 4
        Top = 18
        Width = 229
        Height = 19
        AutoSize = False
        DataField = 'Ds_Titulo'
        DataSource = DsEndView
        TabOrder = 0
      end
      object DbEdtDs_Endereco: TDBEdit
        Left = 236
        Top = 18
        Width = 341
        Height = 19
        AutoSize = False
        DataField = 'Ds_Endereco'
        DataSource = DsEndView
        TabOrder = 1
      end
      object DbEdtNm_Bairro: TDBEdit
        Left = 216
        Top = 55
        Width = 207
        Height = 19
        AutoSize = False
        DataField = 'Nm_Bairro'
        DataSource = DsEndView
        TabOrder = 3
      end
      object DbEdtDs_Complemento: TDBEdit
        Left = 4
        Top = 55
        Width = 207
        Height = 19
        AutoSize = False
        DataField = 'Ds_Complemento'
        DataSource = DsEndView
        TabOrder = 4
      end
      object DbEdtNr_CEP: TDBEdit
        Left = 428
        Top = 55
        Width = 73
        Height = 19
        AutoSize = False
        DataField = 'Nr_CEP'
        DataSource = DsEndView
        TabOrder = 5
      end
      object DbEdtNr_Telefone_1: TDBEdit
        Left = 315
        Top = 92
        Width = 90
        Height = 19
        AutoSize = False
        DataField = 'Nr_Telefone_1'
        DataSource = DsEndView
        TabOrder = 6
      end
      object DbEdtNr_Telefone_2: TDBEdit
        Left = 411
        Top = 92
        Width = 90
        Height = 19
        AutoSize = False
        DataField = 'Nr_Telefone_2'
        DataSource = DsEndView
        TabOrder = 7
      end
      object DbEdtNr_Telefone_3: TDBEdit
        Left = 506
        Top = 92
        Width = 90
        Height = 19
        AutoSize = False
        DataField = 'Nr_Telefone_3'
        DataSource = DsEndView
        TabOrder = 8
      end
      object DbEdtNr_FAX: TDBEdit
        Left = 602
        Top = 92
        Width = 90
        Height = 19
        AutoSize = False
        DataField = 'Nr_FAX'
        DataSource = DsEndView
        TabOrder = 9
      end
      object DbMObservacao: TDBMemo
        Left = 4
        Top = 162
        Width = 693
        Height = 131
        DataField = 'Mm_Observacao'
        DataSource = DsEndView
        ScrollBars = ssVertical
        TabOrder = 10
      end
      object DbEdtNm_Cidade: TDBEdit
        Left = 4
        Top = 92
        Width = 308
        Height = 19
        AutoSize = False
        DataField = 'Dp_Cidade'
        DataSource = DsEndView
        TabOrder = 11
      end
      object DbEdtDs_Rota: TDBEdit
        Left = 4
        Top = 128
        Width = 308
        Height = 19
        AutoSize = False
        DataField = 'Dp_Rota'
        DataSource = DsEndView
        TabOrder = 12
      end
      object DbEdtDs_Numero: TDBEdit
        Left = 579
        Top = 18
        Width = 70
        Height = 19
        AutoSize = False
        DataField = 'Ds_Numero'
        DataSource = DsEndView
        TabOrder = 2
      end
    end
  end
  object ADODsEndView: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'select'#13#10'  A.Cd_Emitente, A.Nr_Endereco, A.Ds_Titulo, A.Ds_Endereco, A.Nm_Bairro,'#13#10'  A.Ds_Complemento, A.Nr_CEP, A.Cd_Cidade,'#13#10'  B.Nm_Cidade + '''' - '''' + B.Sg_Estado  as Dp_Cidade,'#13#10'  A.Nr_Telefone_1, A.Nr_Telefone_2, A.Nr_Telefone_3, A.Nr_FAX, A.Mm_Observacao, '#13#10'  Cast( A.Cd_Rota as VarChar ) + '''' - '''' + C.Ds_Rota as Dp_Rota,'#13#10'  A.Ds_Numero'#13#10#13#10'from'#13#10'  Emitente_Endereco A'#13#10#13#10'inner join'#13#10'  Cidade B'#13#10'on'#13#10'  B.Cd_Cidade = A.Cd_Cidade'#13#10#13#10'left join'#13#10'  Rota C'#13#10'on'#13#10'  C.Cd_Rota = A.Cd_Rota'#13#10#13#10'where'#13#10'  A.Cd_Emitente = :Cd_Emitente'#13#10#13#10'order by'#13#10'  A.Nr_Endereco'
    Parameters = <
      item
        Name = 'Cd_Emitente'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 1
      end>
    Left = 640
    Top = 55
    object ADODsEndViewCd_Emitente: TIntegerField
      FieldName = 'Cd_Emitente'
    end
    object ADODsEndViewNr_Endereco: TSmallintField
      FieldName = 'Nr_Endereco'
    end
    object ADODsEndViewDs_Titulo: TStringField
      FieldName = 'Ds_Titulo'
      Size = 50
    end
    object ADODsEndViewDs_Endereco: TStringField
      FieldName = 'Ds_Endereco'
      Size = 50
    end
    object ADODsEndViewNm_Bairro: TStringField
      FieldName = 'Nm_Bairro'
      Size = 30
    end
    object ADODsEndViewDs_Complemento: TStringField
      FieldName = 'Ds_Complemento'
      Size = 30
    end
    object ADODsEndViewNr_CEP: TStringField
      FieldName = 'Nr_CEP'
      EditMask = '##.###-###;0; '
      FixedChar = True
      Size = 8
    end
    object ADODsEndViewCd_Cidade: TSmallintField
      FieldName = 'Cd_Cidade'
    end
    object ADODsEndViewDp_Cidade: TStringField
      FieldName = 'Dp_Cidade'
      ReadOnly = True
      Size = 35
    end
    object ADODsEndViewNr_Telefone_1: TStringField
      FieldName = 'Nr_Telefone_1'
      EditMask = '(##) ####-#####;0; '
      Size = 11
    end
    object ADODsEndViewNr_Telefone_2: TStringField
      FieldName = 'Nr_Telefone_2'
      EditMask = '(##) ####-#####;0; '
      Size = 11
    end
    object ADODsEndViewNr_Telefone_3: TStringField
      FieldName = 'Nr_Telefone_3'
      EditMask = '(##) ####-#####;0; '
      Size = 11
    end
    object ADODsEndViewNr_FAX: TStringField
      FieldName = 'Nr_FAX'
      EditMask = '(##) ####-#####;0; '
      Size = 11
    end
    object ADODsEndViewMm_Observacao: TMemoField
      FieldName = 'Mm_Observacao'
      BlobType = ftMemo
    end
    object ADODsEndViewDp_Rota: TStringField
      FieldName = 'Dp_Rota'
      ReadOnly = True
      Size = 83
    end
    object ADODsEndViewDs_Numero: TStringField
      FieldName = 'Ds_Numero'
      Size = 10
    end
  end
  object DsEndView: TDataSource
    AutoEdit = False
    DataSet = ADODsEndView
    Left = 610
    Top = 55
  end
end
