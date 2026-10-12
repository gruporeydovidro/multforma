object FrmConexoes: TFrmConexoes
  Left = 294
  Top = 173
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Esta'#231#245'es Conectadas ao Sistema'
  ClientHeight = 377
  ClientWidth = 765
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
  PixelsPerInch = 96
  TextHeight = 13
  object PnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 21
    Height = 377
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 744
    Height = 377
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object Label1: TLabel
      Left = 5
      Top = 3
      Width = 158
      Height = 13
      Caption = 'Esta'#231#245'es / Usu'#225'rios conectados:'
    end
    object BvlSeparator: TBevel
      Left = 2
      Top = 348
      Width = 742
      Height = 5
      Shape = bsTopLine
    end
    object SbKill: TSpeedButton
      Left = 8
      Top = 352
      Width = 129
      Height = 22
      Caption = 'Eliminar Conex'#227'o'
      Flat = True
      Glyph.Data = {binary 326 bytes}
      OnClick = SbKillClick
    end
    object DbGConexao: TDBGrid
      Left = 6
      Top = 18
      Width = 735
      Height = 327
      DataSource = DmMaster.DsConexao
      FixedColor = clSilver
      Options = [dgTitles, dgColumnResize, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnEnter = DbGConexaoEnter
      OnExit = DbGConexaoExit
      OnKeyDown = DbGConexaoKeyDown
      Columns = <
        item
          Expanded = False
          FieldName = 'Nm_EstacaoTrabalho'
          Title.Alignment = taCenter
          Width = 262
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Hr_Login'
          Title.Alignment = taCenter
          Width = 94
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nm_Aplicacao'
          Title.Alignment = taCenter
          Width = 165
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Loginame'
          Title.Alignment = taCenter
          Width = 149
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'spid'
          Title.Alignment = taRightJustify
          Width = 43
          Visible = True
        end>
    end
  end
  object ADODsUnica: TADODataSet
    Parameters = <>
    Left = 568
    Top = 248
  end
  object DsUnica: TDataSource
    DataSet = ADODsUnica
    Left = 536
    Top = 248
  end
end
