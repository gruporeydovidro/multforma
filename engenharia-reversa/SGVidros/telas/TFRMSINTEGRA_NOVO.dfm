object FrmSintegra_Novo: TFrmSintegra_Novo
  Left = 294
  Top = 173
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Gera'#231#227'o do Arquivo do Sintegra'
  ClientHeight = 295
  ClientWidth = 774
  Color = clWhite
  Ctl3D = False
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
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
    Height = 295
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 753
    Height = 295
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 1
      Top = 265
      Width = 747
      Height = 5
      Shape = bsTopLine
    end
    object Label1: TLabel
      Left = 5
      Top = 37
      Width = 178
      Height = 13
      Caption = 'Identifica'#231#227'o da Estrutura no Arquivo:'
    end
    object Label3: TLabel
      Left = 5
      Top = 74
      Width = 255
      Height = 13
      Caption = 'Identifica'#231#227'o da Natureza das Opera'#231#245'es Informadas:'
    end
    object Label4: TLabel
      Left = 5
      Top = 110
      Width = 123
      Height = 13
      Caption = 'Apresenta'#231#227'o do Arquivo:'
    end
    object SbEntrada: TSpeedButton
      Tag = 1
      Left = 290
      Top = 158
      Width = 23
      Height = 21
      Hint = 'Salvar como...'
      Flat = True
      Glyph.Data = {binary 378 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbEntradaClick
    end
    object Label2: TLabel
      Left = 5
      Top = 2
      Width = 166
      Height = 13
      Caption = 'M'#234's/Ano para gera'#231#227'o do arquivo:'
    end
    object Label5: TLabel
      Left = 319
      Top = 110
      Width = 268
      Height = 13
      Caption = 'Gera'#231#227'o atrav'#233's de impressora fiscal (t'#233'rmica):'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 344
      Top = 2
      Width = 69
      Height = 13
      Caption = 'Gerar Entrada:'
      Visible = False
    end
    object Label7: TLabel
      Left = 416
      Top = 2
      Width = 61
      Height = 13
      Caption = 'Gerar Sa'#237'da:'
      Visible = False
    end
    object LblInventario: TLabel
      Left = 233
      Top = 2
      Width = 110
      Height = 13
      Caption = 'Incluir invent'#225'rio Anual:'
    end
    object Label8: TLabel
      Left = 174
      Top = 2
      Width = 43
      Height = 13
      Caption = 'Industria:'
    end
    object BitBtnConfirm: TBitBtn
      Left = 581
      Top = 268
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 19
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 666
      Top = 268
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 20
      OnClick = BitBtnCancelClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object CbIdentificacao: TComboBox
      Left = 5
      Top = 51
      Width = 394
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 2
      TabOrder = 6
      Text = '3 - Conv'#233'nio ICMS 57/95 do Conv'#234'nio 76/03'
      Items.Strings = (
        '1 - Conv'#233'nio ICMS 57/95 do Conv'#234'nio 31/99 e altera'#231#245'es Conv'#234'nio 30/02'
        '2 - Conv'#233'nio ICMS 57/95 do Conv'#234'nio 69/02 e altera'#231#245'es Conv'#234'nio 142/02'
        '3 - Conv'#233'nio ICMS 57/95 do Conv'#234'nio 76/03'
      )
    end
    object CbNatureza: TComboBox
      Left = 5
      Top = 88
      Width = 415
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 2
      TabOrder = 7
      Text = '3 - Totalidade das opera'#231#245'es do informante'
      Items.Strings = (
        '1 - Interestaduais Somente opera'#231#245'es sujetias ao regime de substitui'#231#227'o tributaria'
        '2 - Interestaduais opera'#231#245'es com ou sem substitui'#231#227'o tribuit'#225'ria'
        '3 - Totalidade das opera'#231#245'es do informante'
      )
    end
    object CbArquivo: TComboBox
      Left = 5
      Top = 124
      Width = 185
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 8
      Text = '1 - Normal'
      Items.Strings = (
        '1 - Normal'
        '2 - Retifica'#231#227'o Total do arquivo'
        '3 - Retifica'#231#227'o Aditiva'
        '5 - Refazimento'
      )
    end
    object EdtNm_Arquivo: TLabeledEdit
      Left = 6
      Top = 160
      Width = 285
      Height = 19
      EditLabel.Width = 149
      EditLabel.Height = 13
      EditLabel.Caption = 'Nome do Arquivo a ser Gerado:'
      LabelSpacing = 2
      TabOrder = 9
      Text = 'Sintegra.TXT'
    end
    object STxtProgresso: TStaticText
      Left = 328
      Top = 226
      Width = 416
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Linhas Processadas:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 21
      OnDblClick = STxtProgressoDblClick
    end
    object CbMes: TComboBox
      Left = 5
      Top = 16
      Width = 79
      Height = 21
      Style = csDropDownList
      DropDownCount = 12
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 0
      Text = 'Janeiro'
      OnChange = CbMesChange
      Items.Strings = (
        'Janeiro'
        'Fevereiro'
        'Mar'#231'o'
        'Abril'
        'Maio'
        'Junho'
        'Julho'
        'Agosto'
        'Setembro'
        'Outubro'
        'Novembro'
        'Dezembro'
      )
    end
    object EdtNr_Ano: TRxSpinEdit
      Left = 87
      Top = 16
      Width = 53
      Height = 19
      Value = 9999.0
      TabOrder = 1
    end
    object BitBtnECF: TBitBtn
      Left = 6
      Top = 268
      Width = 85
      Height = 25
      Caption = '&ECF'
      TabOrder = 18
      TabStop = False
      OnClick = BitBtnECFClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object CkbTipo60M: TCheckBox
      Left = 319
      Top = 124
      Width = 97
      Height = 17
      Caption = '60 M (Mestre)'
      Checked = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 12
    end
    object CkbTipo60A: TCheckBox
      Left = 319
      Top = 145
      Width = 113
      Height = 17
      Caption = '60 A (Anal'#237'tico)'
      Checked = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 14
    end
    object CkbTipo60D: TCheckBox
      Left = 319
      Top = 166
      Width = 97
      Height = 17
      Caption = '60 D (Di'#225'rio)'
      Checked = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 16
    end
    object CkbTipo75: TCheckBox
      Left = 439
      Top = 166
      Width = 57
      Height = 17
      Caption = 'Tipo 75'
      Checked = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 17
    end
    object CkbTipo60R: TCheckBox
      Left = 439
      Top = 145
      Width = 145
      Height = 17
      Caption = '60 R (Resumo Mensal)'
      Checked = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 15
    end
    object CkbTipo60I: TCheckBox
      Left = 439
      Top = 124
      Width = 97
      Height = 17
      Caption = '60 I (Item)'
      Checked = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 13
    end
    object CbEntrada: TComboBox
      Left = 344
      Top = 16
      Width = 56
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 4
      Text = 'Sim'
      Visible = False
      Items.Strings = (
        'Sim'
        'N'#227'o'
      )
    end
    object CbSaida: TComboBox
      Left = 416
      Top = 16
      Width = 56
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 5
      Text = 'Sim'
      Visible = False
      Items.Strings = (
        'Sim'
        'N'#227'o'
      )
    end
    object CbInventario: TComboBox
      Left = 233
      Top = 16
      Width = 56
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 3
      Text = 'Sim'
      Items.Strings = (
        'Sim'
        'N'#227'o'
      )
    end
    object PgBarNotas: TProgressBar
      Left = 6
      Top = 244
      Width = 739
      Height = 17
      TabOrder = 22
    end
    object STxtProcesso: TStaticText
      Left = 97
      Top = 272
      Width = 478
      Height = 17
      Alignment = taCenter
      AutoSize = False
      Caption = 'STxtProcesso'
      TabOrder = 23
      Visible = False
    end
    object CbIndustria: TComboBox
      Left = 174
      Top = 16
      Width = 56
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 2
      Text = 'Sim'
      Items.Strings = (
        'Sim'
        'N'#227'o'
      )
    end
    object CkBRegistro53: TCheckBox
      Left = 7
      Top = 186
      Width = 140
      Height = 17
      Caption = 'Registro 53 - Substitui'#231#227'o'
      Checked = True
      State = cbChecked
      TabOrder = 10
    end
    object CkBRegistro61: TCheckBox
      Left = 159
      Top = 186
      Width = 117
      Height = 17
      Caption = 'Registro 61 - NFC-e'
      Checked = True
      State = cbChecked
      TabOrder = 11
    end
  end
  object ADODsOrigemadfasdfasdfas: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = '-------------------- Notas de Vendas - Orcamento (filtrar cancelado e faturado)'#13#10'declare'#13#10'  @Cd_Filial SmallInt,'#13#10'  @Dt_Start SmallDateTime,'#13#10'  @Dt_End SmallDateTime'#13#10#13#10'select'#13#10'  @Cd_Filial = :Cd_Filial,'#13#10'  @Dt_Start  = :Dt_Start,'#13#10'  @Dt_End    = :Dt_End'#13#10#13#10'--------------- Or'#231'amento - Faturados'#13#10'select'#13#10'  ''''1'''' as Fl_Origem, O.Nr_Orcamento as Nr_Origem, O.St_Orcamento as St_Origem'#13#10#13#10'from'#13#10'  Orcamento O'#13#10#13#10'inner join'#13#10'  CFOP CF'#13#10'on'#13#10'  CF.Cd_CFOP     = O.Cd_CFOP and'#13#10'  CF.Fl_Sintegra = ''''1'''#13#10#13#10'where'#13#10'  O.Cd_Filial    = @Cd_Filial and'#13#10'  O.Fl_Estoque   = ''''1'''' and'#13#10'  O.St_Orcamento = ''''9'''' and'#13#10'  O.Dt_Fatura   >= @Dt_Start and'#13#10'  O.Dt_Fatura    < @Dt_End and'#13#10'  O.Nr_Fatura    > 0'#13#10#13#10'--------------- Or'#231'amento - Cancelados'#13#10'union'#13#10'select'#13#10'  ''''1'''' as Fl_Origem, O.Nr_Orcamento as Nr_Origem, O.St_Orcamento as St_Origem'#13#10#13#10'from'#13#10'  Orcamento O'#13#10#13#10'inner join'#13#10'  CFOP CF'#13#10'on'#13#10'  CF.Cd_CFOP     = O.Cd_CFOP and'#13#10'  CF.Fl_Sintegra = ''''1'''#13#10#13#10'where'#13#10'  O.Cd_Filial    = @Cd_Filial and'#13#10'  O.Fl_Estoque   = ''''1'''' and'#13#10'  O.St_Orcamento = ''''2'''' and'#13#10'  O.Dt_Fatura   >= @Dt_Start and'#13#10'  O.Dt_Fatura    < @Dt_End and'#13#10'  O.Nr_Fatura    > 0'#13#10#13#10'-------------------- Notas de Sa'#237'das - Saida'#13#10'union'#13#10'select'#13#10'  ''''2'''' as Fl_Origem, S.Nr_Saida as Nr_Origem, S.St_Saida as St_Origem'#13#10#13#10'from'#13#10'  Saida S'#13#10#13#10'inner join'#13#10'  CFOP CF'#13#10'on'#13#10'  CF.Cd_CFOP     = S.Cd_CFOP and'#13#10'  CF.Fl_Sintegra = ''''1'''#13#10#13#10'where'#13#10'  S.Cd_Filial   = @Cd_Filial and'#13#10'  S.Fl_Estoque  = ''''1'''' and'#13#10'  S.Dt_Emissao >= @Dt_Start and'#13#10'  S.Dt_Emissao  < @Dt_End and'#13#10'  S.St_Saida   >= ''''2''''             ----- Somente Cancelado/Fechado'#13#10#13#10'-------------------- Notas de Entradas - Entrada'#13#10'union'#13#10#13#10'select'#13#10'  ''''3'''' as Fl_Origem, E.Nr_Entrada as Nr_Origem, E.St_Entrada as St_Origem'#13#10#13#10'from'#13#10'  Entrada E'#13#10#13#10'inner join'#13#10'  CFOP CF'#13#10'on'#13#10'  CF.Cd_CFOP     = E.Cd_CFOP and'#13#10'  CF.Fl_Sintegra = ''''1'''#13#10#13#10'where'#13#10'  E.Cd_Filial      = @Cd_Filial and'#13#10'  E.Fl_Estoque     = ''''1'''' and'#13#10'  E.Dt_Lancamento >= @Dt_Start and'#13#10'  E.Dt_Lancamento  < @Dt_End and'#13#10'  E.St_Entrada    >= ''''2''''             ----- Somente Cancelado/Fechado'
    Parameters = <
      item
        Name = 'Cd_Filial'
        DataType = ftSmallint
        Size = -1
        Value = nil?
      end
      item
        Name = 'Dt_Start'
        DataType = ftDateTime
        Size = -1
        Value = nil?
      end
      item
        Name = 'Dt_End'
        DataType = ftDateTime
        Size = -1
        Value = nil?
      end>
    Left = 457
    Top = 19
    object ADODsOrigemadfasdfasdfasFl_Origem: TStringField
      FieldName = 'Fl_Origem'
      ReadOnly = True
      Size = 1
    end
    object ADODsOrigemadfasdfasdfasNr_Origem: TIntegerField
      FieldName = 'Nr_Origem'
      ReadOnly = True
    end
    object ADODsOrigemadfasdfasdfasSt_Origem: TStringField
      FieldName = 'St_Origem'
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
  end
  object ACBrSintegra: TACBrSintegra
    VersaoValidador = vv524
    Informa88SME = False
    Informa88SMS = False
    Informa88EAN = False
    Informa88C = False
    InformaSapiMG = False
    Left = 424
    Top = 203
  end
  object ADODsNota: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'select'#13#10'  Fl_Origem, Vl_STB,'#13#10'  Cd_ModeloFiscal, Nr_Documento, Nr_Insc_Estadual, Dt_Fatura, Sg_Estado, Fl_Imposto,'#13#10'  Cd_Serie, Nr_Fatura, Cd_CFOPProduto, Fl_Emitente, St_Nota, Vl_DescNota, Tp_Pessoa,'#13#10'  Fl_Contribuinte,'#13#10'  Pr_Aliquota ='#13#10'    ( case'#13#10'        when Vl_ICMS_Item > 0.0 and Pr_Item_ICMS_Real is not null then Pr_Item_ICMS_Real'#13#10'        when ( Fl_Origem = ''''3'''' ) then Pr_Contrib'#13#10'        else 0.0'#13#10'      end'#13#10'    ),'#13#10'  sum( Vl_Total_Item      - ( case when Vl_Total_Item > 0.0 and Vl_DescItem is not null then Vl_DescItem else 0.0 end ) + Vl_IPI_Item +  Vl_DespesaItem + Vl_SeguroItem /* + Vl_FreteItem */ ) as Vl_Nota,'#13#10'  sum( Vl_Base_ICMS_Item ) as Vl_BaseICMS,'#13#10'  sum( Vl_ICMS_Item ) as Vl_ICMS,'#13#10#13#10'  Vl_ST ='#13#10'    sum('#13#10'      ('#13#10'      case'#13#10'        when ( Fl_Origem = ''''3'''' ) and ( Cd_CST in ( ''''060'''' ) ) then 0.0'#13#10'        when ( Fl_Origem = ''''3'''' ) and ( Cd_CST in ( ''''010'''', ''''110'''', ''''210'''', ''''070'''', ''''170'''', ''''270'''' ) ) then Vl_ST_Item'#13#10'        else Vl_ST_Item'#13#10'      end'#13#10#13#10'      )'#13#10'      - ( case when Vl_ST_Item > 0.0 and Vl_DescItem is not null then Vl_DescItem else 0.0 end ) +  Vl_DespesaItem + Vl_SeguroItem + Vl_FreteItem ),'#13#10#13#10'  Vl_NaoTributado ='#13#10'    sum('#13#10'      case'#13#10'        -- when Vl_ICMS = 0.0 and ( Fl_Origem = ''''3'''' ) then Vl_Total_Item'#13#10'        when Tp_Tributacao = ''''3'''' then Vl_Total_Item - ( case when Vl_Total_Item > 0.0 and Vl_DescItem is not null then Vl_DescItem else 0.0 end )'#13#10#13#10'      end ),'#13#10#13#10'  sum( Vl_IPI_Item ) as Vl_IPI,'#13#10#13#10'  Vl_Outras = sum('#13#10'    ('#13#10'    case'#13#10'      when Cd_CST in ( ''''020'''', ''''000'''' ) then 0.0'#13#10'      when'#13#10'        ( Cd_CFOP = ''''1102'''' and Cd_CST = ''''102''''  ) or                                                                               -- 02/05/2016'#13#10'        ( Cd_CFOP = ''''1202'''' and Cd_CST = ''''102''''  ) or                                                                               -- 02/05/2016'#13#10'        ( Cd_CFOP = ''''1403'''' and Cd_CST = ''''202''''  ) or                                                                               -- 02/05/2016'#13#10'        ( Cd_CFOP = ''''1407'''' and Cd_CST = ''''500''''  ) or                                                                               -- 02/05/2016'#13#10'        ( Cd_CFOP = ''''1556'''' and Cd_CST = ''''101''''  ) or                                                                               -- 02/05/2016'#13#10'        ( Cd_CFOP = ''''5405'''' and Cd_CST = ''''102''''  ) or                                                                               -- 02/05/2016'#13#10'        ( Cd_CFOP = ''''5405'''' and Cd_CST = ''''500''''  ) or                                                                               -- 02/05/2016'#13#10'        ( Cd_CFOP = ''''1128'''' and Cd_CST = ''''060''''  ) or                                                                               -- 30/11/2016'#13#10'        ( Cd_CFOP = ''''2128'''' and Cd_CST = ''''000''''  ) or                                                                               -- 30/11/2016'#13#10'        ( Cd_CFOP = ''''2128'''' and Cd_CST = ''''510''''  ) or                                                                               -- 30/11/2016'#13#10'        ( Cd_CFOP in ( ''''6403'''', ''''5405'''' ) ) or                                       -- 25/04/2016'#13#10'        ( Cd_CST in ( ''''060'''', ''''050'''', ''''090'''', ''''102'''', ''''500'''' ) or'#13#10'        ( Vl_ICMS_Item = 0.0 and Cd_CST = ''''000'''' ) ) or'#13#10'        ( Cd_CST = ''''100'''' and Vl_ICMS_Item = 0.0 ) or'#13#10'        ( Cd_CST = ''''500'''' and Cd_CFOP in ( ''''5405'''', ''''1403'''' ) ) or'#13#10'        ( Cd_CST in ( ''''101'''', ''''040'''' ) and Cd_CFOP in ( ''''1102'''' ) ) then'#13#10'        ( Vl_Total_Item - ( case when Vl_Total_Item > 0.0 and Vl_DescItem is not null then Vl_DescItem else 0.0 end ) + Vl_IPI_Item +  Vl_DespesaItem + Vl_SeguroItem + Vl_FreteItem )'#13#10'      else 0.0'#13#10'    end'#13#10'    ) +'#13#10'    ('#13#10'    case'#13#10'      when Cd_CFOP = ''''6403'''' then Vl_ST_Item'#13#10'      else 0.0'#13#10'    end'#13#10'    )'#13#10'    ),'#13#10#13#10'  Vl_Isento = sum('#13#10'    ( case'#13#10'        when '#13#10'          ( Cd_CFOP = ''''1128'''' and Cd_CST = ''''060''''  ) or                                                                               -- 30/11/2016'#13#10'          ( Cd_CFOP = ''''2128'''' and Cd_CST = ''''000''''  ) or                                                                               -- 30/11/2016'#13#10'          ( Cd_CFOP = ''''2128'''' and Cd_CST = ''''510''''  )                                                                                  -- 30/11/2016'#13#10'          then 0.0'#13#10'         when ( Cd_CST in ( ''''040'''', ''''041'''', ''''030'''', ''''110'''', ''''210'''', ''''070'''', ''''170'''', ''''270'''' ) ) or ( ( Cd_CST = ''''010'''' ) and ( Fl_Origem <> ''''3'''' ) and ( Pr_Contrib > 0 ) ) then'#13#10'          ( Vl_Total_Item - ( case when Vl_Total_Item > 0.0 and Vl_DescItem is not null then Vl_DescItem else 0.0 end ) + Vl_IPI_Item +  Vl_DespesaItem + Vl_SeguroItem + Vl_FreteItem )'#13#10#9'    else'#13#10#9'      0.0'#13#10#9'    end ) +'#13#10#13#10'    -------------------- No caso de redu'#231#227'o a diferen'#231'a da base de calculo compoe o Isento - 31/10/2012'#13#10'    ( case'#13#10'        when ( Cd_CST in ( ''''020'''' ) ) then'#13#10'         ( Vl_Total_Item - ( case when Vl_Total_Item > 0.0 and Vl_DescItem is not null then Vl_DescItem else 0.0 end ) + Vl_IPI_Item +  Vl_DespesaItem + Vl_SeguroItem + Vl_FreteItem - Vl_Base_ICMS_Item )'#13#10'      else'#13#10#9'       0.0'#13#10#9'    end )'#13#10'    )'#13#10#13#10'from'#13#10'  ##NotaProcessa'#13#10#13#10'where'#13#10'  Id_Processo = @@SPID and'#13#10'  ('#13#10'  Cd_ModeloFiscal = ''''01'''' or    --------------- Modelo 2 - Consumidor final'#13#10'  ( Cd_ModeloFiscal > ''''02'''' and Cd_ModeloFiscal < ''''07'''' ) or'#13#10'  ( Cd_ModeloFiscal > ''''11'''' and Cd_ModeloFiscal < ''''57'''' )'#13#10'  )'#13#10#13#10'group by'#13#10'  Fl_Origem, Vl_STB,'#13#10'  Cd_ModeloFiscal, Nr_Documento, Nr_Insc_Estadual, Dt_Fatura, Sg_Estado, Fl_Imposto,'#13#10'  Cd_Serie, Nr_Fatura, Cd_CFOPProduto, Fl_Emitente, St_Nota, Vl_DescNota, Tp_Pessoa,'#13#10'  Fl_Contribuinte,'#13#10'    ( case'#13#10'        when Vl_ICMS_Item > 0.0 and Pr_Item_ICMS_Real is not null then Pr_Item_ICMS_Real'#13#10'        when ( Fl_Origem = ''''3'''' ) then Pr_Contrib'#13#10'        else 0.0'#13#10'      end'#13#10'    )'#13#10#13#10'order by'#13#10'  Nr_Fatura'
    Parameters = <>
    Left = 489
    Top = 19
    object ADODsNotaCd_ModeloFiscal: TStringField
      FieldName = 'Cd_ModeloFiscal'
      FixedChar = True
      Size = 2
    end
    object ADODsNotaNr_Documento: TStringField
      FieldName = 'Nr_Documento'
      Size = 14
    end
    object ADODsNotaNr_Insc_Estadual: TStringField
      FieldName = 'Nr_Insc_Estadual'
    end
    object ADODsNotaDt_Fatura: TDateTimeField
      FieldName = 'Dt_Fatura'
    end
    object ADODsNotaSg_Estado: TStringField
      FieldName = 'Sg_Estado'
      FixedChar = True
      Size = 2
    end
    object ADODsNotaCd_Serie: TStringField
      FieldName = 'Cd_Serie'
      Size = 3
    end
    object ADODsNotaNr_Fatura: TIntegerField
      FieldName = 'Nr_Fatura'
    end
    object ADODsNotaCd_CFOPProduto: TStringField
      FieldName = 'Cd_CFOPProduto'
      Size = 4
    end
    object ADODsNotaFl_Emitente: TStringField
      FieldName = 'Fl_Emitente'
      FixedChar = True
      Size = 1
    end
    object ADODsNotaSt_Nota: TStringField
      FieldName = 'St_Nota'
      FixedChar = True
      Size = 1
    end
    object ADODsNotaPr_Aliquota: TBCDField
      FieldName = 'Pr_Aliquota'
      ReadOnly = True
      Precision = 12
      Size = 2
    end
    object ADODsNotaVl_Nota: TBCDField
      FieldName = 'Vl_Nota'
      ReadOnly = True
      Precision = 32
      Size = 3
    end
    object ADODsNotaVl_BaseICMS: TBCDField
      FieldName = 'Vl_BaseICMS'
      ReadOnly = True
      Precision = 32
      Size = 3
    end
    object ADODsNotaVl_ICMS: TBCDField
      FieldName = 'Vl_ICMS'
      ReadOnly = True
      Precision = 32
      Size = 3
    end
    object ADODsNotaVl_NaoTributado: TBCDField
      FieldName = 'Vl_NaoTributado'
      ReadOnly = True
      Precision = 32
      Size = 3
    end
    object ADODsNotaVl_DescNota: TBCDField
      FieldName = 'Vl_DescNota'
      Precision = 12
      Size = 3
    end
    object ADODsNotaVl_ST: TBCDField
      FieldName = 'Vl_ST'
      ReadOnly = True
      Precision = 32
      Size = 3
    end
    object ADODsNotaVl_IPI: TBCDField
      FieldName = 'Vl_IPI'
      ReadOnly = True
      Precision = 32
      Size = 3
    end
    object ADODsNotaFl_Imposto: TStringField
      FieldName = 'Fl_Imposto'
      FixedChar = True
      Size = 1
    end
    object ADODsNotaFl_Origem: TStringField
      FieldName = 'Fl_Origem'
      FixedChar = True
      Size = 1
    end
    object ADODsNotaTp_Pessoa: TStringField
      FieldName = 'Tp_Pessoa'
      FixedChar = True
      Size = 1
    end
    object ADODsNotaVl_Outras: TBCDField
      FieldName = 'Vl_Outras'
      ReadOnly = True
      Precision = 32
      Size = 3
    end
    object ADODsNotaVl_Isento: TBCDField
      FieldName = 'Vl_Isento'
      ReadOnly = True
      Precision = 32
      Size = 3
    end
    object ADODsNotaVl_STB: TBCDField
      FieldName = 'Vl_STB'
      Precision = 12
      Size = 3
    end
    object ADODsNotaFl_Contribuinte: TStringField
      FieldName = 'Fl_Contribuinte'
      FixedChar = True
      Size = 1
    end
  end
  object ADODsIPI: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'select'#13#10'  Cd_ModeloFiscal, Nr_Documento, Nr_Insc_Estadual, Dt_Fatura, Sg_Estado,'#13#10'  Cd_Serie, Nr_Fatura, Cd_CFOPProduto, Fl_Emitente, St_Nota, Tp_Pessoa,'#13#10'  Fl_Contribuinte,'#13#10'  Pr_Aliquota ='#13#10'    ( case when Vl_ICMS_Item > 0.0 then Pr_Item_ICMS_Real end ),'#13#10'  sum( Vl_Total_Item ) as Vl_Nota,'#13#10'  sum( Vl_Base_ICMS_Item ) as Vl_BaseICMS,'#13#10'  sum( Vl_ICMS_Item ) as Vl_ICMS,'#13#10'  sum( Vl_IPI_Item ) as Vl_IPI,'#13#10'  Vl_NaoTributado ='#13#10'    sum( ( case when Vl_ICMS = 0 and ( Fl_Origem = ''''3'''' ) then Vl_Nota end ) )'#13#10#13#10'from'#13#10'  ##NotaProcessa'#13#10#13#10'where'#13#10'  Id_Processo = @@SPID and'#13#10'  Cd_ModeloFiscal in ( ''''01'''', ''''55'''' )'#13#10'  ----------------------------------- and  Vl_IPI_Item > 0'#13#10#13#10'group by'#13#10'  Cd_ModeloFiscal, Nr_Documento, Nr_Insc_Estadual, Dt_Fatura, Sg_Estado,'#13#10'  Cd_Serie, Nr_Fatura, Cd_CFOPProduto, Fl_Emitente, St_Nota, Tp_Pessoa,'#13#10'  Fl_Contribuinte,'#13#10'  ( case when Vl_ICMS_Item > 0.0 then Pr_Item_ICMS_Real end )'#13#10#13#10'order by'#13#10'  Nr_Fatura'
    Parameters = <>
    SQLOther0.Strings = (
      'select'
      '  Cd_ModeloFiscal, Nr_Documento, Nr_Insc_Estadual, Dt_Fatura, Sg_Estado,'
      '  Cd_Serie, Nr_Fatura, Cd_CFOPProduto, Fl_Emitente, St_Nota, Tp_Pessoa,'
      '  Fl_Contribuinte,'
      '  Pr_Aliquota ='
      '    ( case when Vl_ICMS_Item > 0.0 then Pr_Item_ICMS_Real end ),'
      '  sum( Vl_Total_Item ) as Vl_Nota,'
      '  sum( Vl_Base_ICMS_Item ) as Vl_BaseICMS,'
      '  sum( Vl_ICMS_Item ) as Vl_ICMS,'
      '  sum( Vl_IPI_Item ) as Vl_IPI,'
      '  Vl_NaoTributado ='
      '    sum( ( case when Vl_ICMS = 0 and ( Fl_Origem = ''''3'''' ) then Vl_Nota end ) )'
      ''
      'from'
      '  ##NotaProcessa'
      ''
      'where'
      '  Id_Processo = @@SPID and'
      '  not Cd_CFOPProduto in ( ''''5929'''', ''''6929'''' ) and'
      '  Cd_ModeloFiscal in ( ''''01'''', ''''55'''' )'
      '  /* Vl_IPI */'
      ''
      'group by'
      '  Cd_ModeloFiscal, Nr_Documento, Nr_Insc_Estadual, Dt_Fatura, Sg_Estado,'
      '  Cd_Serie, Nr_Fatura, Cd_CFOPProduto, Fl_Emitente, St_Nota, Tp_Pessoa,'
      '  Fl_Contribuinte,'
      '  ( case when Vl_ICMS_Item > 0.0 then Pr_Item_ICMS_Real end )'
      ''
      'order by'
      '  Nr_Fatura'
    )
    Left = 521
    Top = 19
    object ADODsIPICd_ModeloFiscal: TStringField
      FieldName = 'Cd_ModeloFiscal'
      FixedChar = True
      Size = 2
    end
    object ADODsIPINr_Documento: TStringField
      FieldName = 'Nr_Documento'
      Size = 14
    end
    object ADODsIPINr_Insc_Estadual: TStringField
      FieldName = 'Nr_Insc_Estadual'
    end
    object ADODsIPIDt_Fatura: TDateTimeField
      FieldName = 'Dt_Fatura'
    end
    object ADODsIPISg_Estado: TStringField
      FieldName = 'Sg_Estado'
      FixedChar = True
      Size = 2
    end
    object ADODsIPICd_Serie: TStringField
      FieldName = 'Cd_Serie'
      Size = 3
    end
    object ADODsIPINr_Fatura: TIntegerField
      FieldName = 'Nr_Fatura'
    end
    object ADODsIPICd_CFOPProduto: TStringField
      FieldName = 'Cd_CFOPProduto'
      Size = 4
    end
    object ADODsIPIFl_Emitente: TStringField
      FieldName = 'Fl_Emitente'
      FixedChar = True
      Size = 1
    end
    object ADODsIPISt_Nota: TStringField
      FieldName = 'St_Nota'
      FixedChar = True
      Size = 1
    end
    object ADODsIPIPr_Aliquota: TBCDField
      FieldName = 'Pr_Aliquota'
      ReadOnly = True
      Precision = 12
      Size = 2
    end
    object ADODsIPIVl_Nota: TBCDField
      FieldName = 'Vl_Nota'
      ReadOnly = True
      Precision = 32
      Size = 3
    end
    object ADODsIPIVl_BaseICMS: TBCDField
      FieldName = 'Vl_BaseICMS'
      ReadOnly = True
      Precision = 32
      Size = 3
    end
    object ADODsIPIVl_ICMS: TBCDField
      FieldName = 'Vl_ICMS'
      ReadOnly = True
      Precision = 32
      Size = 3
    end
    object ADODsIPIVl_IPI: TBCDField
      FieldName = 'Vl_IPI'
      ReadOnly = True
      Precision = 32
      Size = 3
    end
    object ADODsIPIVl_NaoTributado: TBCDField
      FieldName = 'Vl_NaoTributado'
      ReadOnly = True
      Precision = 32
      Size = 3
    end
    object ADODsIPITp_Pessoa: TStringField
      FieldName = 'Tp_Pessoa'
      FixedChar = True
      Size = 1
    end
    object ADODsIPIFl_Contribuinte: TStringField
      FieldName = 'Fl_Contribuinte'
      FixedChar = True
      Size = 1
    end
  end
  object ADODsItem: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'select'#13#10'  Nr_Documento, Cd_ModeloFiscal, Cd_Serie, Nr_Fatura, Cd_CFOPProduto,'#13#10'  Cd_CST, Cd_Produto, Dp_Produto, Qt_Imprimir, Vl_Total_Item, Vl_Base_ICMS_Item,'#13#10'  Vl_DescItem, Fl_Imposto,'#13#10'  Vl_Substituicao = Vl_ST_Item,'#13#10#13#10'  Vl_IPI_Item,'#13#10'  Pr_Aliquota ='#13#10'    ( case when Vl_ICMS_Item > 0.0 then Pr_Item_ICMS_Real end )'#13#10#13#10'from'#13#10'  ##NotaProcessa'#13#10#13#10'where'#13#10'  Id_Processo = @@SPID and'#13#10'  Cd_Produto > 0 and'#13#10'  St_Nota = ''''N'''' and'#13#10'  ('#13#10'  Cd_ModeloFiscal = ''''01'''' or    --------------- Modelo 2 - Consumidor final'#13#10'  ( Cd_ModeloFiscal > ''''02'''' and Cd_ModeloFiscal < ''''07'''' ) or'#13#10'  ( Cd_ModeloFiscal > ''''11'''' and Cd_ModeloFiscal < ''''57'''' )'#13#10'  ) and'#13#10'  not Cd_CFOPProduto in ( ''''5929'''', ''''6929'''' )  '#13#10#13#10'order by'#13#10'  Nr_Documento, Nr_Fatura, Cd_CST'
    Parameters = <>
    Left = 551
    Top = 19
    object ADODsItemNr_Documento: TStringField
      FieldName = 'Nr_Documento'
      Size = 14
    end
    object ADODsItemCd_ModeloFiscal: TStringField
      FieldName = 'Cd_ModeloFiscal'
      FixedChar = True
      Size = 2
    end
    object ADODsItemCd_Serie: TStringField
      FieldName = 'Cd_Serie'
      Size = 3
    end
    object ADODsItemNr_Fatura: TIntegerField
      FieldName = 'Nr_Fatura'
    end
    object ADODsItemCd_CFOPProduto: TStringField
      FieldName = 'Cd_CFOPProduto'
      Size = 4
    end
    object ADODsItemCd_CST: TStringField
      FieldName = 'Cd_CST'
      Size = 254
    end
    object ADODsItemCd_Produto: TIntegerField
      FieldName = 'Cd_Produto'
    end
    object ADODsItemDp_Produto: TStringField
      FieldName = 'Dp_Produto'
      Size = 200
    end
    object ADODsItemQt_Imprimir: TBCDField
      FieldName = 'Qt_Imprimir'
      Precision = 12
      Size = 3
    end
    object ADODsItemVl_Total_Item: TBCDField
      FieldName = 'Vl_Total_Item'
      Precision = 12
      Size = 3
    end
    object ADODsItemVl_Base_ICMS_Item: TBCDField
      FieldName = 'Vl_Base_ICMS_Item'
      Precision = 12
      Size = 3
    end
    object ADODsItemVl_Substituicao: TBCDField
      FieldName = 'Vl_Substituicao'
      ReadOnly = True
      Precision = 12
      Size = 3
    end
    object ADODsItemVl_IPI_Item: TBCDField
      FieldName = 'Vl_IPI_Item'
      Precision = 12
      Size = 3
    end
    object ADODsItemPr_Aliquota: TBCDField
      FieldName = 'Pr_Aliquota'
      ReadOnly = True
      Precision = 12
      Size = 2
    end
    object ADODsItemVl_DescItem: TBCDField
      FieldName = 'Vl_DescItem'
      Precision = 12
      Size = 3
    end
    object ADODsItemFl_Imposto: TStringField
      FieldName = 'Fl_Imposto'
      FixedChar = True
      Size = 1
    end
  end
  object ADODsReducaoM: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'select'#13#10'  RD.Nr_Serie, RD.Dt_Reducao, RD.Nr_Primeiro_COO, RD.Nr_Ultimo_COO, '#13#10'  RD.Nr_CRZ, RD.Nr_CRO, RD.Vl_VendaBruta, RD.Vl_TotalGeral, E.Nm_Estacao,'#13#10'  E.Nr_Ordem, E.Cd_ModeloFiscal'#13#10#13#10'from'#13#10'  ReducaoDiaria RD'#13#10#13#10'inner join'#13#10'  Estacao E'#13#10'on'#13#10'  E.Nr_Serie = RD.Nr_Serie'#13#10#13#10'where'#13#10'  RD.Cd_Filial = :Cd_Filial and'#13#10'  RD.Dt_Reducao >= :Dt_Start and'#13#10'  RD.Dt_Reducao  < :Dt_End'#13#10#13#10'order by'#13#10'  RD.Nr_Serie, RD.Dt_Reducao'
    Parameters = <
      item
        Name = 'Cd_Filial'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = nil?
      end
      item
        Name = 'Dt_Start'
        DataType = ftDateTime
        Precision = 16
        Size = 16
        Value = nil?
      end
      item
        Name = 'Dt_End'
        DataType = ftDateTime
        Precision = 16
        Size = 16
        Value = nil?
      end>
    Left = 583
    Top = 19
    object ADODsReducaoMNr_Serie: TStringField
      FieldName = 'Nr_Serie'
    end
    object ADODsReducaoMDt_Reducao: TDateTimeField
      FieldName = 'Dt_Reducao'
    end
    object ADODsReducaoMVl_VendaBruta: TBCDField
      FieldName = 'Vl_VendaBruta'
      Precision = 15
      Size = 3
    end
    object ADODsReducaoMVl_TotalGeral: TBCDField
      FieldName = 'Vl_TotalGeral'
      Precision = 15
      Size = 3
    end
    object ADODsReducaoMNm_Estacao: TStringField
      FieldName = 'Nm_Estacao'
      Size = 70
    end
    object ADODsReducaoMNr_Ordem: TSmallintField
      FieldName = 'Nr_Ordem'
    end
    object ADODsReducaoMCd_ModeloFiscal: TStringField
      FieldName = 'Cd_ModeloFiscal'
      Size = 2
    end
    object ADODsReducaoMNr_Primeiro_COO: TIntegerField
      FieldName = 'Nr_Primeiro_COO'
    end
    object ADODsReducaoMNr_Ultimo_COO: TIntegerField
      FieldName = 'Nr_Ultimo_COO'
    end
    object ADODsReducaoMNr_CRZ: TIntegerField
      FieldName = 'Nr_CRZ'
    end
    object ADODsReducaoMNr_CRO: TIntegerField
      FieldName = 'Nr_CRO'
    end
  end
  object ADODsReducaoA: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'select'#13#10'  RD.Nr_Serie, RD.Dt_Reducao, RD.Nr_Primeiro_COO, RD.Nr_Ultimo_COO, '#13#10'  RD.Nr_CRZ, RD.Nr_CRO, RD.Vl_VendaBruta, RD.Vl_TotalGeral, E.Nm_Estacao,'#13#10'  E.Nr_Ordem, E.Cd_ModeloFiscal, RDA.Cd_Aliquota, RDA.Vl_Aliquota, RDA.Vl_Base'#13#10#13#10'from'#13#10'  ReducaoDiaria RD'#13#10#13#10'inner join'#13#10'  Estacao E'#13#10'on'#13#10'  E.Nr_Serie = RD.Nr_Serie'#13#10#13#10'inner join'#13#10'  ReducaoDiaria_Aliquota RDA'#13#10'on'#13#10'  RDA.Cd_Filial   = RD.Cd_Filial and'#13#10'  RDA.Nr_Serie    = RD.Nr_Serie and'#13#10'  RDA.Dt_Reducao  = RD.Dt_Reducao'#13#10#13#10'where'#13#10'  RD.Cd_Filial   = :Cd_Filial and'#13#10'  RD.Dt_Reducao >= :Dt_Start and'#13#10'  RD.Dt_Reducao  < :Dt_End'#13#10#13#10'order by'#13#10'  RD.Dt_Reducao, RD.Nr_Serie, RDA.Cd_Aliquota'
    Parameters = <
      item
        Name = 'Cd_Filial'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = nil?
      end
      item
        Name = 'Dt_Start'
        DataType = ftDateTime
        Precision = 16
        Size = 16
        Value = nil?
      end
      item
        Name = 'Dt_End'
        DataType = ftDateTime
        Precision = 16
        Size = 16
        Value = nil?
      end>
    Left = 459
    Top = 51
    object ADODsReducaoANr_Serie: TStringField
      FieldName = 'Nr_Serie'
    end
    object ADODsReducaoADt_Reducao: TDateTimeField
      FieldName = 'Dt_Reducao'
    end
    object ADODsReducaoAVl_VendaBruta: TBCDField
      FieldName = 'Vl_VendaBruta'
      Precision = 15
      Size = 3
    end
    object ADODsReducaoAVl_TotalGeral: TBCDField
      FieldName = 'Vl_TotalGeral'
      Precision = 15
      Size = 3
    end
    object ADODsReducaoANm_Estacao: TStringField
      FieldName = 'Nm_Estacao'
      Size = 70
    end
    object ADODsReducaoANr_Ordem: TSmallintField
      FieldName = 'Nr_Ordem'
    end
    object ADODsReducaoACd_ModeloFiscal: TStringField
      FieldName = 'Cd_ModeloFiscal'
      Size = 2
    end
    object ADODsReducaoACd_Aliquota: TStringField
      FieldName = 'Cd_Aliquota'
      Size = 4
    end
    object ADODsReducaoAVl_Aliquota: TBCDField
      FieldName = 'Vl_Aliquota'
      Precision = 15
      Size = 3
    end
    object ADODsReducaoAVl_Base: TBCDField
      FieldName = 'Vl_Base'
      Precision = 15
      Size = 3
    end
    object ADODsReducaoANr_Primeiro_COO: TIntegerField
      FieldName = 'Nr_Primeiro_COO'
    end
    object ADODsReducaoANr_Ultimo_COO: TIntegerField
      FieldName = 'Nr_Ultimo_COO'
    end
    object ADODsReducaoANr_CRZ: TIntegerField
      FieldName = 'Nr_CRZ'
    end
    object ADODsReducaoANr_CRO: TIntegerField
      FieldName = 'Nr_CRO'
    end
  end
  object ADODsConFrete: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'select'#13#10'  Cd_ModeloFiscal, Nr_Documento, Nr_Insc_Estadual, Dt_Fatura, Sg_Estado,'#13#10'  Cd_Serie, Nr_Fatura, Cd_CFOPProduto, Fl_Emitente, St_Nota, Fl_Frete,'#13#10'  Pr_Aliquota ='#13#10'    ( case when Vl_ICMS_Item > 0.0 then Pr_Item_ICMS_Real end ),'#13#10'  sum( Vl_Nota ) as Vl_Nota,'#13#10'  sum( Vl_BaseICMS ) as Vl_BaseICMS,'#13#10'  sum( Vl_ICMS ) as Vl_ICMS,'#13#10'  Vl_NaoTributado ='#13#10'    sum( ( case when Vl_ICMS = 0 and ( Fl_Origem = ''''3'''' ) then Vl_Nota end ) )'#13#10#13#10'from'#13#10'  ##NotaProcessa'#13#10#13#10'where'#13#10'  Id_Processo = @@SPID and'#13#10'  ('#13#10'  ( Cd_ModeloFiscal >= ''''07'''' and '#13#10'    Cd_ModeloFiscal <= ''''11'''' ) or'#13#10'  ( Cd_ModeloFiscal = ''''57'''' )'#13#10'  )'#13#10#13#10'group by'#13#10'  Cd_ModeloFiscal, Nr_Documento, Nr_Insc_Estadual, Dt_Fatura, Sg_Estado,'#13#10'  Cd_Serie, Nr_Fatura, Cd_CFOPProduto, Fl_Emitente, St_Nota, Fl_Frete,'#13#10'  ( case when Vl_ICMS_Item > 0.0 then Pr_Item_ICMS_Real end )'#13#10#13#10'order by'#13#10'  Nr_Fatura'
    Parameters = <>
    Left = 488
    Top = 51
    object ADODsConFreteCd_ModeloFiscal: TStringField
      FieldName = 'Cd_ModeloFiscal'
      FixedChar = True
      Size = 2
    end
    object ADODsConFreteNr_Documento: TStringField
      FieldName = 'Nr_Documento'
      Size = 14
    end
    object ADODsConFreteNr_Insc_Estadual: TStringField
      FieldName = 'Nr_Insc_Estadual'
    end
    object ADODsConFreteDt_Fatura: TDateTimeField
      FieldName = 'Dt_Fatura'
    end
    object ADODsConFreteSg_Estado: TStringField
      FieldName = 'Sg_Estado'
      FixedChar = True
      Size = 2
    end
    object ADODsConFreteCd_Serie: TStringField
      FieldName = 'Cd_Serie'
      Size = 3
    end
    object ADODsConFreteNr_Fatura: TIntegerField
      FieldName = 'Nr_Fatura'
    end
    object ADODsConFreteCd_CFOPProduto: TStringField
      FieldName = 'Cd_CFOPProduto'
      Size = 4
    end
    object ADODsConFreteFl_Emitente: TStringField
      FieldName = 'Fl_Emitente'
      FixedChar = True
      Size = 1
    end
    object ADODsConFreteSt_Nota: TStringField
      FieldName = 'St_Nota'
      FixedChar = True
      Size = 1
    end
    object ADODsConFretePr_Aliquota: TBCDField
      FieldName = 'Pr_Aliquota'
      ReadOnly = True
      Precision = 12
      Size = 2
    end
    object ADODsConFreteVl_Nota: TBCDField
      FieldName = 'Vl_Nota'
      ReadOnly = True
      Precision = 32
      Size = 3
    end
    object ADODsConFreteVl_BaseICMS: TBCDField
      FieldName = 'Vl_BaseICMS'
      ReadOnly = True
      Precision = 32
      Size = 3
    end
    object ADODsConFreteVl_ICMS: TBCDField
      FieldName = 'Vl_ICMS'
      ReadOnly = True
      Precision = 32
      Size = 3
    end
    object ADODsConFreteVl_NaoTributado: TBCDField
      FieldName = 'Vl_NaoTributado'
      ReadOnly = True
      Precision = 32
      Size = 3
    end
    object ADODsConFreteFl_Frete: TStringField
      FieldName = 'Fl_Frete'
      FixedChar = True
      Size = 1
    end
  end
  object ADODsInventario: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'select'#13#10'  I.Cd_Filial, I.Nr_Ano, I.Dt_Inventario,'#13#10'  IP.Cd_Produto, P.Sg_Estoque, P.Nm_Produto,'#13#10'  P.Cd_ClasFiscal, T.Pr_Contrib,'#13#10'  sum( IP.Qt_Anterior + IP.Qt_Entradas - IP.Qt_Saidas ) as Qt_Saldo,'#13#10'  sum( ( IP.Qt_Anterior + IP.Qt_Entradas - IP.Qt_Saidas ) * IP.Vl_Custo ) as Vl_Total'#13#10#13#10'from'#13#10'  Inventario I'#13#10#13#10'inner join'#13#10'  Inventario_Produto IP'#13#10'on'#13#10'  IP.Cd_Filial = I.Cd_Filial and'#13#10'  IP.Nr_Ano    = I.Nr_Ano and'#13#10'  ( IP.Qt_Anterior + IP.Qt_Entradas - IP.Qt_Saidas ) > 0.0'#13#10#13#10'inner join'#13#10'  Produto P'#13#10'on'#13#10'  P.Cd_Produto = IP.Cd_Produto'#13#10#13#10'inner join'#13#10'  Tributacao T'#13#10'on'#13#10'  T.Cd_Tributacao = P.Cd_Tributacao'#13#10#13#10'where'#13#10'  IP.Cd_Filial = :Cd_Filial and'#13#10'  IP.Nr_Ano    = :Nr_Ano'#13#10#13#10'group by'#13#10'  I.Cd_Filial, I.Nr_Ano, I.Dt_Inventario,'#13#10'  IP.Cd_Produto, P.Sg_Estoque, P.Nm_Produto,'#13#10'  P.Cd_ClasFiscal, T.Pr_Contrib'#13#10#13#10'order by'#13#10'  I.Cd_Filial, I.Nr_Ano, IP.Cd_Produto'
    Parameters = <
      item
        Name = 'Cd_Filial'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = nil?
      end
      item
        Name = 'Nr_Ano'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = nil?
      end>
    Left = 518
    Top = 51
    object ADODsInventarioCd_Filial: TSmallintField
      FieldName = 'Cd_Filial'
    end
    object ADODsInventarioNr_ANo: TSmallintField
      FieldName = 'Nr_ANo'
    end
    object ADODsInventarioDt_Inventario: TDateTimeField
      FieldName = 'Dt_Inventario'
    end
    object ADODsInventarioCd_Produto: TIntegerField
      FieldName = 'Cd_Produto'
    end
    object ADODsInventarioSg_Estoque: TStringField
      FieldName = 'Sg_Estoque'
      FixedChar = True
      Size = 2
    end
    object ADODsInventarioNm_Produto: TStringField
      FieldName = 'Nm_Produto'
      Size = 120
    end
    object ADODsInventarioQt_Saldo: TBCDField
      FieldName = 'Qt_Saldo'
      ReadOnly = True
      Precision = 14
      Size = 3
    end
    object ADODsInventarioDp_Codigo: TStringField
      FieldKind = fkCalculated
      FieldName = 'Dp_Codigo'
      Size = 8
      Calculated = True
    end
    object ADODsInventarioCd_ClasFiscal: TStringField
      FieldName = 'Cd_ClasFiscal'
      Size = 10
    end
    object ADODsInventarioPr_Contrib: TBCDField
      FieldName = 'Pr_Contrib'
      Precision = 7
      Size = 2
    end
    object ADODsInventarioVl_Total: TBCDField
      FieldName = 'Vl_Total'
      ReadOnly = True
      Precision = 32
      Size = 6
    end
  end
  object ADODsConsumidor: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'select'#13#10'  Dt_Fatura, Cd_ModeloFiscal, Cd_Serie,'#13#10'  Min( Nr_Fatura ) as Nr_Inicial,'#13#10'  Max( Nr_Fatura ) as Nr_Final,'#13#10'  sum( Vl_Total_Item      - ( case when Vl_Total_Item > 0.0 and Vl_DescItem is not null then Vl_DescItem else 0.0 end ) + Vl_IPI_Item +  Vl_DespesaItem + Vl_SeguroItem ) as Vl_Total,'#13#10'  sum( Vl_Base_ICMS_Item  - ( case when Vl_Base_ICMS_Item > 0.0 and Vl_DescItem is not null then Vl_DescItem else 0.0 end ) ) as Vl_Base_ICMS,'#13#10'  sum( Vl_ICMS_Item       - ( case when Vl_ICMS_Item > 0.0 and Vl_DescItem is not null then Vl_DescItem else 0.0 end ) ) as Vl_ICMS,'#13#10#13#10'  Pr_Aliquota ='#13#10'    ( case when Vl_ICMS_Item > 0.0 then Pr_Item_ICMS_Real end ),'#13#10'  Vl_NaoTributado ='#13#10'    sum( ( case when Vl_ICMS = 0 and ( Fl_Origem = ''''3'''' ) then Vl_Nota end ) )'#13#10#13#10'from'#13#10'  ##NotaProcessa'#13#10#13#10'where'#13#10'  Id_Processo = @@SPID and'#13#10'  Cd_ModeloFiscal = ''''02'''#13#10#13#10'group by'#13#10'  Dt_Fatura, Cd_ModeloFiscal, Cd_Serie,'#13#10' ( case when Vl_ICMS_Item > 0.0 then Pr_Item_ICMS_Real end )'#13#10#13#10'order by'#13#10'  Dt_Fatura'
    Parameters = <>
    Left = 579
    Top = 51
    object ADODsConsumidorDt_Fatura: TDateTimeField
      FieldName = 'Dt_Fatura'
    end
    object ADODsConsumidorCd_ModeloFiscal: TStringField
      FieldName = 'Cd_ModeloFiscal'
      FixedChar = True
      Size = 2
    end
    object ADODsConsumidorCd_Serie: TStringField
      FieldName = 'Cd_Serie'
      Size = 3
    end
    object ADODsConsumidorNr_Inicial: TIntegerField
      FieldName = 'Nr_Inicial'
      ReadOnly = True
    end
    object ADODsConsumidorNr_Final: TIntegerField
      FieldName = 'Nr_Final'
      ReadOnly = True
    end
    object ADODsConsumidorVl_Total: TBCDField
      FieldName = 'Vl_Total'
      ReadOnly = True
      Precision = 32
      Size = 3
    end
    object ADODsConsumidorVl_Base_ICMS: TBCDField
      FieldName = 'Vl_Base_ICMS'
      ReadOnly = True
      Precision = 32
      Size = 3
    end
    object ADODsConsumidorVl_ICMS: TBCDField
      FieldName = 'Vl_ICMS'
      ReadOnly = True
      Precision = 32
      Size = 3
    end
    object ADODsConsumidorPr_Aliquota: TBCDField
      FieldName = 'Pr_Aliquota'
      ReadOnly = True
      Precision = 12
      Size = 2
    end
    object ADODsConsumidorVl_NaoTributado: TBCDField
      FieldName = 'Vl_NaoTributado'
      ReadOnly = True
      Precision = 32
      Size = 3
    end
  end
  object ADODsFSD: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = '--------------- Frete'#13#10'select'#13#10'  Nr_Documento, Cd_ModeloFiscal, Cd_Serie, Nr_Fatura, Cd_CFOP, Pr_ICMS,'#13#10' Vl_Contabil = Vl_Pedido_Frete,'#13#10'  Nr_Item  = 991'#13#10#13#10'from'#13#10'  ##NotaProcessa'#13#10#13#10'where'#13#10'  Id_Processo = @@SPID and'#13#10'  Vl_Pedido_Frete > 0'#13#10#13#10'--------------- Seguro'#13#10'union'#13#10'select'#13#10'  Nr_Documento, Cd_ModeloFiscal, Cd_Serie, Nr_Fatura, Cd_CFOP, Pr_ICMS,'#13#10'  Vl_Contabil = Vl_Seguro,'#13#10'  Nr_Item  = 992'#13#10#13#10'from'#13#10'  ##NotaProcessa'#13#10#13#10'where'#13#10'  Id_Processo = @@SPID and'#13#10'  Vl_Seguro > 0'#13#10#13#10'--------------- Despesa'#13#10'union'#13#10'select'#13#10'  Nr_Documento, Cd_ModeloFiscal, Cd_Serie, Nr_Fatura, Cd_CFOP, Pr_ICMS,'#13#10'  Vl_Contabil = Vl_Despesa,'#13#10'  Nr_Item  = 993'#13#10#13#10'from'#13#10'  ##NotaProcessa'#13#10#13#10'where'#13#10'  Id_Processo = @@SPID and'#13#10'  Vl_Despesa > 0'
    Parameters = <>
    Left = 458
    Top = 80
    object ADODsFSDNr_Documento: TStringField
      FieldName = 'Nr_Documento'
      ReadOnly = True
      Size = 14
    end
    object ADODsFSDCd_ModeloFiscal: TStringField
      FieldName = 'Cd_ModeloFiscal'
      ReadOnly = True
      FixedChar = True
      Size = 2
    end
    object ADODsFSDCd_Serie: TStringField
      FieldName = 'Cd_Serie'
      ReadOnly = True
      Size = 3
    end
    object ADODsFSDNr_Fatura: TIntegerField
      FieldName = 'Nr_Fatura'
      ReadOnly = True
    end
    object ADODsFSDCd_CFOP: TStringField
      FieldName = 'Cd_CFOP'
      ReadOnly = True
      Size = 4
    end
    object ADODsFSDVl_Contabil: TBCDField
      FieldName = 'Vl_Contabil'
      ReadOnly = True
      Precision = 12
      Size = 3
    end
    object ADODsFSDNr_Item: TIntegerField
      FieldName = 'Nr_Item'
      ReadOnly = True
    end
    object ADODsFSDPr_ICMS: TBCDField
      FieldName = 'Pr_ICMS'
      ReadOnly = True
      Precision = 12
      Size = 2
    end
  end
  object ADODsFilial: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'select '#13#10'  Fl_SintegraIndustria'#13#10#13#10'from'#13#10'  Filial'#13#10#13#10'where'#13#10'  Cd_Filial = :Cd_Filial'
    Parameters = <
      item
        Name = 'Cd_Filial'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = nil?
      end>
    Left = 104
    Top = 208
    object ADODsFilialFl_SintegraIndustria: TStringField
      FieldName = 'Fl_SintegraIndustria'
      FixedChar = True
      Size = 1
    end
  end
  object ADOCommand1: TADOCommand
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    Left = 134
    Top = 208
  end
  object ADODsInutilizada: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'select'#13#10'  Cd_Filial, Nr_Ano, Nr_Serie, Nr_Inicial, Nr_Final, Ds_Justificativa,'#13#10'  Nr_nProt, Ds_xMotivo, Dt_DhRecbto'#13#10#13#10'from'#13#10'  NFe_Inutiliza'#13#10#13#10'where'#13#10'  Cd_Filial = :Cd_Filial and'#13#10'  Dt_DhRecbto >= :Dt_Start and'#13#10'  Dt_DhRecbto    < :Dt_End'#13#10#13#10'order by'#13#10'  Nr_Inicial'
    Parameters = <
      item
        Name = 'Cd_Filial'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = nil?
      end
      item
        Name = 'Dt_Start'
        Attributes = [paNullable]
        DataType = ftDateTime
        Precision = 16
        Size = 16
        Value = nil?
      end
      item
        Name = 'Dt_End'
        Attributes = [paNullable]
        DataType = ftDateTime
        Precision = 16
        Size = 16
        Value = nil?
      end>
    Left = 528
    Top = 88
    object ADODsInutilizadaCd_Filial: TSmallintField
      FieldName = 'Cd_Filial'
    end
    object ADODsInutilizadaNr_Ano: TSmallintField
      FieldName = 'Nr_Ano'
    end
    object ADODsInutilizadaNr_Serie: TSmallintField
      FieldName = 'Nr_Serie'
    end
    object ADODsInutilizadaNr_Inicial: TIntegerField
      FieldName = 'Nr_Inicial'
    end
    object ADODsInutilizadaNr_Final: TIntegerField
      FieldName = 'Nr_Final'
    end
    object ADODsInutilizadaDs_Justificativa: TStringField
      FieldName = 'Ds_Justificativa'
      Size = 255
    end
    object ADODsInutilizadaNr_nProt: TStringField
      FieldName = 'Nr_nProt'
      Size = 255
    end
    object ADODsInutilizadaDs_xMotivo: TStringField
      FieldName = 'Ds_xMotivo'
      Size = 255
    end
    object ADODsInutilizadaDt_DhRecbto: TDateTimeField
      FieldName = 'Dt_DhRecbto'
    end
  end
  object ADODsSubstituicao: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'select'#13#10'  Cd_ModeloFiscal, Nr_Documento, Nr_Insc_Estadual, Dt_Fatura, Sg_Estado,'#13#10'  Cd_Serie, Nr_Fatura, Cd_CFOPProduto, Fl_Emitente, St_Nota, Tp_pessoa,'#13#10'  Fl_Contribuinte,'#13#10'  sum( Vl_Total_Item ) as Vl_Nota,'#13#10'  sum( Vl_BaseST_Item ) as Vl_BaseST_Item,'#13#10'  sum( Vl_ST_Item ) as Vl_ST_Item'#13#10#13#10'from'#13#10'  ##NotaProcessa'#13#10#13#10'where'#13#10'  Id_Processo = @@SPID and'#13#10'  Cd_ModeloFiscal in ( ''''01'''', ''''55'''' ) and'#13#10'  not Cd_CFOPProduto in (  ''''1403'''',  ''''1406'''', ''''1407'''', ''''1411'''', ''''2403'''', ''''2406'''', ''''2407'''', ''''2411'''', ''''5403'''', ''''5405'''', ''''5411'''', ''''6403'''', ''''6404'''' )'#13#10#13#10'group by'#13#10'  Cd_ModeloFiscal, Nr_Documento, Nr_Insc_Estadual, Dt_Fatura, Sg_Estado,'#13#10'  Cd_Serie, Nr_Fatura, Cd_CFOPProduto, Fl_Emitente, St_Nota, Tp_pessoa,'#13#10'  Fl_Contribuinte'#13#10#13#10'order by'#13#10'  Nr_Fatura'
    Parameters = <>
    Left = 576
    Top = 88
    object ADODsSubstituicaoCd_ModeloFiscal: TStringField
      FieldName = 'Cd_ModeloFiscal'
      FixedChar = True
      Size = 2
    end
    object ADODsSubstituicaoNr_Documento: TStringField
      FieldName = 'Nr_Documento'
      Size = 14
    end
    object ADODsSubstituicaoNr_Insc_Estadual: TStringField
      FieldName = 'Nr_Insc_Estadual'
    end
    object ADODsSubstituicaoDt_Fatura: TDateTimeField
      FieldName = 'Dt_Fatura'
    end
    object ADODsSubstituicaoSg_Estado: TStringField
      FieldName = 'Sg_Estado'
      FixedChar = True
      Size = 2
    end
    object ADODsSubstituicaoCd_Serie: TStringField
      FieldName = 'Cd_Serie'
      Size = 3
    end
    object ADODsSubstituicaoNr_Fatura: TIntegerField
      FieldName = 'Nr_Fatura'
    end
    object ADODsSubstituicaoCd_CFOPProduto: TStringField
      FieldName = 'Cd_CFOPProduto'
      Size = 4
    end
    object ADODsSubstituicaoFl_Emitente: TStringField
      FieldName = 'Fl_Emitente'
      FixedChar = True
      Size = 1
    end
    object ADODsSubstituicaoSt_Nota: TStringField
      FieldName = 'St_Nota'
      FixedChar = True
      Size = 1
    end
    object ADODsSubstituicaoVl_Nota: TBCDField
      FieldName = 'Vl_Nota'
      ReadOnly = True
      Precision = 32
      Size = 3
    end
    object ADODsSubstituicaoVl_BaseST_Item: TBCDField
      FieldName = 'Vl_BaseST_Item'
      ReadOnly = True
      Precision = 32
      Size = 3
    end
    object ADODsSubstituicaoVl_ST_Item: TBCDField
      FieldName = 'Vl_ST_Item'
      ReadOnly = True
      Precision = 32
      Size = 3
    end
    object ADODsSubstituicaoTp_pessoa: TStringField
      FieldName = 'Tp_pessoa'
      FixedChar = True
      Size = 1
    end
    object ADODsSubstituicaoFl_Contribuinte: TStringField
      FieldName = 'Fl_Contribuinte'
      FixedChar = True
      Size = 1
    end
  end
  object ADODsNFCe: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'select'#13#10'  D.Dt_DFe, D.Nr_DFe, '#13#10'  Pr_Aliquota = '#13#10'    case when ( D.Fl_Contribuinte = ''''1'''' )  then T.Pr_Contrib else T.Pr_NaoContrib end,'#13#10'  '#13#10'  sum( DI.Qt_Produto * DI.Vl_Unitario ) as Vl_Total'#13#10#13#10'from'#13#10'  DFe_Vw D'#13#10#13#10'inner join'#13#10'  DFe_Item DI'#13#10'on'#13#10'  DI.Cd_Filial  = D.Cd_Filial and'#13#10'  DI.Id_Estacao = D.Id_Estacao and'#13#10'  DI.Id_DFe     = D.Id_DFe'#13#10#13#10'inner join'#13#10'  Produto P'#13#10'on'#13#10'  P.Cd_Produto = DI.Cd_Produto'#13#10#13#10'inner join'#13#10'  Tributacao T'#13#10'on'#13#10'  T.Cd_Tributacao = P.Cd_Tributacao'#13#10'  '#13#10'where'#13#10'  D.Cd_Filial = :Cd_Filial and'#13#10'  D.St_DFe    = ''''2'''' and'#13#10'  D.Dt_DFe   >= :Dt_Start and'#13#10'  D.Dt_DFe    < :Dt_End'#13#10#13#10'group by'#13#10'  D.Dt_DFe, D.Nr_DFe, '#13#10'  case when ( D.Fl_Contribuinte = ''''1'''' )  then T.Pr_Contrib else T.Pr_NaoContrib end'
    Parameters = <
      item
        Name = 'Cd_Filial'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = nil?
      end
      item
        Name = 'Dt_Start'
        DataType = ftDateTime
        Precision = 16
        Size = 16
        Value = nil?
      end
      item
        Name = 'Dt_End'
        DataType = ftDateTime
        Precision = 16
        Size = 16
        Value = nil?
      end>
    Left = 656
    Top = 128
    object ADODsNFCeDt_DFe: TDateTimeField
      FieldName = 'Dt_DFe'
    end
    object ADODsNFCeNr_DFe: TIntegerField
      FieldName = 'Nr_DFe'
    end
    object ADODsNFCePr_Aliquota: TBCDField
      FieldName = 'Pr_Aliquota'
      ReadOnly = True
      Precision = 7
      Size = 2
    end
    object ADODsNFCeVl_Total: TBCDField
      FieldName = 'Vl_Total'
      ReadOnly = True
      Precision = 32
      Size = 10
    end
  end
  object ADODsProduto: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'select distinct'#13#10'  NP.Cd_Produto, NP.Cd_ClasFiscal, NP.Nm_Produto, P.Sg_Estoque, '#13#10'  P.Pr_IPI, T.Pr_Contrib'#13#10#13#10'from'#13#10'  ##NotaProcessa NP'#13#10#13#10'inner join '#13#10'  Produto P'#13#10'on'#13#10'  P.Cd_Produto = NP.Cd_Produto'#13#10#13#10'inner join'#13#10'  Tributacao T'#13#10'on'#13#10'  T.Cd_Tributacao = P.Cd_Tributacao'#13#10#13#10'where'#13#10'  NP.Id_Processo = @@SPID and'#13#10'  NP.Cd_ModeloFiscal <> ''''02'''' and     --------------- Modelo 2 - Consumidor final'#13#10'  NP.St_Nota = ''''N'''' and'#13#10'  not NP.Cd_CFOPProduto in ( ''''5929'''', ''''6929'''' ) and'#13#10'  NP.Nm_Produto <> '''''#13#10#13#10'order by'#13#10'  NP.Cd_Produto desc'
    Parameters = <>
    Left = 548
    Top = 51
    object ADODsProdutoCd_Produto: TIntegerField
      FieldName = 'Cd_Produto'
    end
    object ADODsProdutoCd_ClasFiscal: TStringField
      FieldName = 'Cd_ClasFiscal'
      Size = 10
    end
    object ADODsProdutoNm_Produto: TStringField
      FieldName = 'Nm_Produto'
      Size = 120
    end
    object ADODsProdutoSg_Estoque: TStringField
      FieldName = 'Sg_Estoque'
      FixedChar = True
      Size = 2
    end
    object ADODsProdutoPr_IPI: TBCDField
      FieldName = 'Pr_IPI'
      Precision = 9
      Size = 2
    end
    object ADODsProdutoPr_Contrib: TBCDField
      FieldName = 'Pr_Contrib'
      Precision = 7
      Size = 2
    end
  end
end
