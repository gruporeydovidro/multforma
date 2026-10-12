object FrmProducao_Marcacao_Defeito: TFrmProducao_Marcacao_Defeito
  Left = 294
  Top = 173
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Pe'#231'as Defeituosas'
  ClientHeight = 202
  ClientWidth = 490
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
    Height = 202
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 469
    Height = 202
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 1
      Top = 172
      Width = 464
      Height = 5
      Shape = bsTopLine
    end
    object Label3: TLabel
      Left = 5
      Top = 1
      Width = 35
      Height = 13
      Caption = 'Motivo:'
    end
    object SbMotivo: TSpeedButton
      Left = 45
      Top = 16
      Width = 23
      Height = 19
      Hint = 'Seleciona o Motivo'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbMotivoClick
    end
    object Label1: TLabel
      Left = 5
      Top = 35
      Width = 58
      Height = 13
      Caption = 'Funcion'#225'rio:'
    end
    object SbFuncionario: TSpeedButton
      Left = 45
      Top = 50
      Width = 23
      Height = 19
      Hint = 'Seleciona Vendedor'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbFuncionarioClick
    end
    object BitBtnConfirm: TBitBtn
      Left = 296
      Top = 175
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 5
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 382
      Top = 175
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 6
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object EdtCd_Motivo: TCurrencyEdit
      Tag = 1
      Left = 5
      Top = 16
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '####'
      TabOrder = 0
      OnExit = EdtCd_MotivoExit
      OnKeyDown = EdtCd_MotivoKeyDown
    end
    object EdtDs_Motivo: TEdit
      Left = 69
      Top = 16
      Width = 308
      Height = 19
      TabStop = False
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 30
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object CkBEtiqueta: TCheckBox
      Left = 6
      Top = 75
      Width = 129
      Height = 17
      Caption = 'Gerar nova &etiqueta'
      Checked = True
      State = cbChecked
      TabOrder = 4
    end
    object EdtCd_Funcionario: TCurrencyEdit
      Tag = 2
      Left = 5
      Top = 50
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 2
      OnExit = EdtCd_FuncionarioExit
      OnKeyDown = EdtCd_MotivoKeyDown
    end
    object EdtNm_Funcionario: TEdit
      Left = 69
      Top = 50
      Width = 308
      Height = 19
      TabStop = False
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 30
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
    end
  end
  object ADODsMotivo: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'declare'#13#10'  @Cd_Filial SmallInt,'#13#10'  @Nr_Producao Int,'#13#10'  @Id_Producao SmallInt,'#13#10'  @NewID SmallInt'#13#10#13#10'select'#13#10'  @Cd_Filial   = :Cd_Filial,'#13#10'  @Nr_Producao = :Nr_Producao,'#13#10'  @Id_Producao = :Id_Producao'#13#10#13#10'--------------- Novo ID'#13#10'set @NewID ='#13#10'  ('#13#10'  select'#13#10'    max( Id_Producao )'#13#10#13#10'  from'#13#10'    Producao_Item'#13#10#13#10'  where'#13#10'    Cd_Filial   = @Cd_Filial and'#13#10'    Nr_Producao = @Nr_Producao'#13#10'  ) + 1'#13#10#13#10'--------------- Retorna o dataset para impress'#227'o'#13#10'select'#13#10'  @NewID as NewID'
    Parameters = <
      item
        Name = 'Cd_Filial'
        DataType = ftSmallint
        Size = -1
        Value = nil?
      end
      item
        Name = 'Nr_Producao'
        DataType = ftInteger
        Size = -1
        Value = nil?
      end
      item
        Name = 'Id_Producao'
        DataType = ftSmallint
        Size = -1
        Value = nil?
      end>
    SQLOther0.Strings = (
      'declare'
      '  @Cd_Filial SmallInt,'
      '  @Nr_Producao Int,'
      '  @Id_Producao SmallInt,'
      '  @NewID SmallInt'
      ''
      'select'
      '  @Cd_Filial   = :Cd_Filial,'
      '  @Nr_Producao = :Nr_Producao,'
      '  @Id_Producao = :Id_Producao'
      ''
      '--------------- Novo ID'
      'set @NewID ='
      '  ('
      '  select'
      '    max( Id_Producao )'
      ''
      '  from'
      '    Producao_Item'
      ''
      '  where'
      '    Cd_Filial   = @Cd_Filial and'
      '    Nr_Producao = @Nr_Producao'
      '  ) + 1'
      ''
      '/* NewItem */'
      ''
      '--------------- Marca'#231#227'o do motivo'
      'update'
      '  Producao_Item'
      ''
      'set'
      '  Cd_Motivo     = :Cd_Motivo,'
      '  Dt_Motivo     = :Dt_Motivo'
      '  /* Reproducao */'
      ''
      'where'
      '  Cd_Filial   = @Cd_Filial and'
      '  Nr_Producao = @Nr_Producao and'
      '  Id_Producao = @Id_Producao'
      ''
      '--------------- Marca'#231#227'o do Setor do funcionario'
      'update'
      '  Producao_Setor'
      ''
      'set'
      '  Cd_Funcionario = :Cd_Funcionario,'
      '  Fl_Setor       = ''''5''''                  -- defeito'
      ''
      'where'
      '  Cd_Filial      = @Cd_Filial and'
      '  Nr_Producao    = @Nr_Producao and'
      '  /* Setor */'
      '  Id_Producao    = @Id_Producao and'
      '  Cd_Funcionario is null'
      ''
      '--------------- Retorna o dataset para impress'#227'o'
      'select'
      '  @NewID as NewID'
      ''
    )
    SQLOther1.Strings = (
      '--------------- Inclui o novo Item'
      'insert into Producao_Item( Cd_Filial, Nr_Producao, Id_Producao, Nr_Orcamento,'
      '  Nr_Item, Nr_Detalhe, Nr_Projeto, Nr_Item_Projeto, Nr_Comprimento, Nr_Largura,'
      '  Nr_Altura )'
      ''
      'select'
      '  Cd_Filial, Nr_Producao, @NewID, Nr_Orcamento,'
      '  Nr_Item, Nr_Detalhe, Nr_Projeto, Nr_Item_Projeto, Nr_Comprimento,'
      '  Nr_Largura, Nr_Altura'
      ''
      'from'
      '  Producao_Item'
      ''
      'where'
      '  Cd_Filial   = @Cd_Filial and'
      '  Nr_Producao = @Nr_Producao and'
      '  Id_Producao = @Id_Producao'
      ''
      '--------------- Inclui os setores'
      'insert into Producao_Setor( Cd_Filial, Nr_Producao, Cd_Setor, Id_Producao,'
      '  Fl_Setor, Dt_Inicio )'
      'select'
      '  Cd_Filial, Nr_Producao, Cd_Setor, @NewID, Fl_Setor, Dt_Inicio'
      ''
      'from'
      '  Producao_Setor'
      ''
      'where'
      '  Cd_Filial   = @Cd_Filial and'
      '  Nr_Producao = @Nr_Producao and'
      '  Id_Producao = @Id_Producao'
      '  '
    )
    Left = 312
    Top = 96
    object ADODsMotivoNewID: TSmallintField
      FieldName = 'NewID'
      ReadOnly = True
    end
  end
end
