object FrmEstacao_Aliquota: TFrmEstacao_Aliquota
  Left = 337
  Top = 222
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Inclus'#227'o de Al'#237'quota'
  ClientHeight = 112
  ClientWidth = 300
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
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 21
    Height = 112
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 279
    Height = 112
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 3
      Top = 81
      Width = 268
      Height = 5
      Shape = bsTopLine
    end
    object Label1: TLabel
      Left = 120
      Top = 40
      Width = 43
      Height = 13
      Caption = 'Al'#237'quota:'
    end
    object Label2: TLabel
      Left = 5
      Top = 3
      Width = 82
      Height = 13
      Caption = 'Tipo da Al'#237'quota:'
    end
    object BitBtnConfirm: TBitBtn
      Left = 105
      Top = 84
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 3
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 191
      Top = 84
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 4
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object EdtCd_Aliquota: TLabeledEdit
      Left = 5
      Top = 55
      Width = 110
      Height = 19
      EditLabel.Width = 94
      EditLabel.Height = 13
      EditLabel.Caption = 'C'#243'digo da Al'#237'quota:'
      LabelSpacing = 2
      MaxLength = 15
      TabOrder = 1
      OnExit = EdtCd_AliquotaExit
    end
    object EdtPr_Aliquota: TCurrencyEdit
      Left = 120
      Top = 55
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DisplayFormat = '#,##0.00'
      TabOrder = 2
    end
    object CbTipo: TComboBox
      Left = 5
      Top = 18
      Width = 166
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 0
      OnChange = CbTipoChange
      Items.Strings = (
        'Produto'
        'Servi'#231'o'
        'Substitui'#231#227'o Tribut'#225'ria (STB)'
        'Isento'
        'N'#227'o Incid'#234'ncia'
      )
    end
  end
  object ADOCmdAliquota: TADOCommand
    CommandText = 'insert into Estacao_Aliquota( Nm_Estacao, Cd_Aliquota, Pr_Aliquota, Tp_Aliquota )'#13#10'values( :Nm_Estacao, :Cd_Aliquota, :Pr_Aliquota, :Tp_Aliquota )'
    Connection = FrmMain.ADOConMaster
    Parameters = <
      item
        Name = 'Nm_Estacao'
        Size = -1
        Value = nil?
      end
      item
        Name = 'Cd_Aliquota'
        Size = -1
        Value = nil?
      end
      item
        Name = 'Pr_Aliquota'
        Size = -1
        Value = nil?
      end
      item
        Name = 'Tp_Aliquota'
        Size = -1
        Value = nil?
      end>
    Left = 31
    Top = 83
  end
  object ADODsAliquota: TADODataSet
    Connection = FrmMain.ADOConMaster
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  Cd_Aliquota'#13#10#13#10'from'#13#10'  Estacao_Aliquota'#13#10#13#10'where'#13#10'  Nm_Estacao = :Nm_Estacao and'#13#10'  Cd_Aliquota = :Cd_Aliquota'
    Parameters = <
      item
        Name = 'Nm_Estacao'
        Size = -1
        Value = nil?
      end
      item
        Name = 'Cd_Aliquota'
        Size = -1
        Value = nil?
      end>
    Left = 61
    Top = 83
  end
end
