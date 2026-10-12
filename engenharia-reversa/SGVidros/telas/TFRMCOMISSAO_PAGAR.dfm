object FrmComissao_Pagar: TFrmComissao_Pagar
  Left = 294
  Top = 173
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Gerar o Contas '#224' Pagar'
  ClientHeight = 142
  ClientWidth = 407
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
  PixelsPerInch = 96
  TextHeight = 13
  object PnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 21
    Height = 142
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 386
    Height = 142
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 2
      Top = 113
      Width = 379
      Height = 5
      Shape = bsTopLine
    end
    object Label7: TLabel
      Left = 5
      Top = 3
      Width = 97
      Height = 13
      Caption = 'Grupo de Aplica'#231#227'o:'
    end
    object SbGrupo: TSpeedButton
      Left = 45
      Top = 17
      Width = 23
      Height = 19
      Hint = 'Seleciona Grupo de Aplica'#231#227'o'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbGrupoClick
    end
    object Label9: TLabel
      Left = 6
      Top = 39
      Width = 116
      Height = 13
      Caption = 'SubGrupo de Aplica'#231#227'o:'
    end
    object SbSubGrupo: TSpeedButton
      Left = 46
      Top = 53
      Width = 23
      Height = 19
      Hint = 'Seleciona SubGrupo de Aplica'#231#227'o'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbSubGrupoClick
    end
    object Label10: TLabel
      Left = 6
      Top = 75
      Width = 43
      Height = 13
      Caption = 'Portador:'
    end
    object SbPortador: TSpeedButton
      Left = 46
      Top = 90
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
    object BitBtnConfirm: TBitBtn
      Left = 213
      Top = 115
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 6
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 299
      Top = 115
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 7
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object EdtCd_Grupo: TCurrencyEdit
      Tag = 3
      Left = 5
      Top = 17
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 0
      OnExit = EdtCd_GrupoExit
      OnKeyDown = EdtCd_GrupoKeyDown
    end
    object EdtNm_Grupo: TEdit
      Left = 69
      Top = 17
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
    object EdtCd_SubGrupo: TCurrencyEdit
      Tag = 4
      Left = 6
      Top = 53
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 2
      OnExit = EdtCd_SubGrupoExit
      OnKeyDown = EdtCd_GrupoKeyDown
    end
    object EdtNm_SubGrupo: TEdit
      Left = 70
      Top = 53
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
    object EdtCd_Portador: TCurrencyEdit
      Left = 6
      Top = 90
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 4
      OnExit = EdtCd_PortadorExit
      OnKeyDown = EdtCd_GrupoKeyDown
    end
    object EdtNm_Portador: TEdit
      Left = 70
      Top = 90
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
      TabOrder = 5
    end
  end
  object ADOCmdComissao: TADOCommand
    CommandText = '-------------------- Declara Variaveis'#13#10'declare'#13#10'  @Cd_Filial SmallInt,'#13#10'  @Nr_Comissao SmallInt,'#13#10'  @Nr_Pagar Int'#13#10#13#10'select'#13#10'  @Cd_Filial   = :Cd_Filial,'#13#10'  @Nr_Comissao = :Nr_Comissao'#13#10#13#10'set @Nr_Pagar ='#13#10'  ('#13#10'  select'#13#10'    max( A.Nr_Pagar )'#13#10#13#10'  from'#13#10'    Pagar A'#13#10#13#10'  where'#13#10'    Cd_Filial = @Cd_Filial'#13#10'  )'#13#10#13#10'set @Nr_Pagar = Coalesce( @Nr_Pagar, 0 ) + 1'#13#10#13#10'-------------------- Inclus'#227'o do CP'#13#10'insert into Pagar( Cd_Filial, Dt_Emissao, St_Pagar, Cd_Emitente, Cd_Grupo,'#13#10'  Cd_SubGrupo, Vl_Duplicata, Vl_Pago, Nr_Comissao, Nr_Pagar )'#13#10'select'#13#10'  CF.Cd_Filial, :Dt_Emissao, ''''1'''', F.Cd_Emitente, :Cd_Grupo, :Cd_SubGrupo,'#13#10'  CF.Vl_Comissionado, 0, @Nr_Comissao,'#13#10'  @Nr_Pagar + ('#13#10'  select'#13#10'    Count( * )'#13#10#13#10'  from'#13#10'    Comissao_Funcionario CNT'#13#10#13#10'  where'#13#10'    CNT.Cd_Filial       = CF.Cd_Filial and'#13#10'    CNT.Nr_Comissao     = CF.Nr_Comissao and'#13#10'    CNT.Cd_Funcionario <= CF.Cd_Funcionario'#13#10'  )'#13#10#13#10'from'#13#10'  Comissao_Funcionario CF'#13#10#13#10'inner join'#13#10'  Funcionario F'#13#10'on'#13#10'  F.Cd_Funcionario = CF.Cd_Funcionario'#13#10#13#10'inner join'#13#10'  Emitente E'#13#10'on'#13#10'  E.Cd_Emitente = F.Cd_Emitente'#13#10#13#10'where'#13#10'  CF.Cd_Filial   = @Cd_Filial and'#13#10'  CF.Nr_Comissao = @Nr_Comissao'#13#10#13#10'-------------------- Inclus'#227'o da parcela'#13#10'insert into Pagar_Parcela( Cd_Filial, Nr_Pagar, Nr_Parcela, Dt_Vencimento,'#13#10'   Vl_Parcela, Cd_Portador, Nr_Documento, Mm_Observacao, Vl_Mora, Pr_Mora )'#13#10'select'#13#10'  P.Cd_Filial, P.Nr_Pagar, 1, :Dt_Vencimento, P.Vl_Duplicata,'#13#10'  :Cd_Portador, '''''', '''''', 0, 0'#13#10#13#10'from'#13#10'  Pagar P'#13#10#13#10'where'#13#10'  P.Cd_Filial   = @Cd_Filial and'#13#10'  P.Nr_Comissao = @Nr_Comissao'#13#10#13#10'-------------------- Incluir Hist'#243'rico'#13#10'insert into Pagar_Historico( Cd_Filial, Nr_Pagar, Nr_Parcela, Nr_Lancamento,'#13#10'   Tp_Lancamento, Dt_Lancamento, Vl_Lancamento )'#13#10#13#10'select'#13#10'  P.Cd_Filial, P.Nr_Pagar, 1, 1, ''''1'''', P.Dt_Emissao, P.Vl_Duplicata'#13#10#13#10'from'#13#10'  Pagar P'#13#10#13#10'where'#13#10'  P.Cd_Filial   = @Cd_Filial and'#13#10'  P.Nr_Comissao = @Nr_Comissao'#13#10#13#10'-------------------- Atualiza a Comiss'#227'o'#13#10'update'#13#10'  Comissao'#13#10#13#10'set'#13#10'  St_Comissao = ''''3'''#13#10#13#10'where'#13#10'  Cd_Filial   = @Cd_Filial and'#13#10'  Nr_Comissao = @Nr_Comissao'
    Connection = FrmMain.ADOConMaster
    Parameters = <
      item
        Name = 'Cd_Filial'
        Size = -1
        Value = nil?
      end
      item
        Name = 'Nr_Comissao'
        Size = -1
        Value = nil?
      end
      item
        Name = 'Dt_Emissao'
        Size = -1
        Value = nil?
      end
      item
        Name = 'Cd_Grupo'
        Size = -1
        Value = nil?
      end
      item
        Name = 'Cd_SubGrupo'
        Size = -1
        Value = nil?
      end
      item
        Name = 'Dt_Vencimento'
        Size = -1
        Value = nil?
      end
      item
        Name = 'Cd_Portador'
        Size = -1
        Value = nil?
      end>
    Left = 315
    Top = 45
  end
end
