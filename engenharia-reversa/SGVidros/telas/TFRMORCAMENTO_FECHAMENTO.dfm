object FrmOrcamento_Fechamento: TFrmOrcamento_Fechamento
  Left = 317
  Top = 182
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Fechamento'
  ClientHeight = 491
  ClientWidth = 728
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 21
    Height = 491
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 707
    Height = 491
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 3
      Top = 461
      Width = 700
      Height = 5
      Shape = bsTopLine
    end
    object Label1: TLabel
      Left = 5
      Top = 39
      Width = 57
      Height = 13
      Caption = '&Pagamento:'
      FocusControl = CbPagamento
    end
    object Label4: TLabel
      Left = 5
      Top = 3
      Width = 64
      Height = 13
      Caption = 'Total Liquido:'
    end
    object Label5: TLabel
      Left = 88
      Top = 3
      Width = 107
      Height = 13
      Caption = '&Desconto ( % / Valor ):'
      FocusControl = EdtPr_Desconto
    end
    object LblCusto: TLabel
      Left = 218
      Top = 3
      Width = 120
      Height = 13
      Caption = 'Custos &Adic. ( % / Valor ):'
      FocusControl = EdtPr_Custo
    end
    object Label7: TLabel
      Left = 530
      Top = -4
      Width = 53
      Height = 24
      Caption = 'Total:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 530
      Top = 46
      Width = 62
      Height = 24
      Caption = 'Troco:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 7
      Top = 79
      Width = 42
      Height = 13
      Caption = '&Dinheiro:'
      FocusControl = EdtVl_Dinheiro
    end
    object Label8: TLabel
      Left = 91
      Top = 79
      Width = 85
      Height = 13
      Caption = 'Ca&rt'#227'o de Cr'#233'dito:'
      FocusControl = EdtVl_Cartao
    end
    object Label9: TLabel
      Left = 348
      Top = 3
      Width = 27
      Height = 13
      Caption = '&Frete:'
      FocusControl = EdtVl_Frete
    end
    object Label10: TLabel
      Left = 5
      Top = 130
      Width = 44
      Height = 13
      Caption = 'Parcelas:'
    end
    object LblTotal: TLabel
      Left = 240
      Top = 131
      Width = 459
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = '0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label14: TLabel
      Left = 356
      Top = 46
      Width = 86
      Height = 24
      Caption = 'Dinheiro:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label24: TLabel
      Left = 181
      Top = 79
      Width = 83
      Height = 13
      Caption = 'Ca&rt'#227'o de D'#233'bito:'
      FocusControl = EdtVl_Debito
    end
    object Label25: TLabel
      Left = 269
      Top = 79
      Width = 20
      Height = 13
      Caption = 'PIX:'
      FocusControl = EdtVl_PIX
    end
    object BitBtnConfirm: TBitBtn
      Left = 534
      Top = 464
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 14
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 620
      Top = 464
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 15
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object CbPagamento: TComboBox
      Left = 6
      Top = 54
      Width = 146
      Height = 21
      Style = csDropDownList
      Ctl3D = True
      DropDownCount = 20
      ItemHeight = 13
      ItemIndex = 0
      ParentCtl3D = False
      TabOrder = 6
      Text = '1) '#192' Vista - Dinheiro'
      OnChange = CbPagamentoChange
      OnEnter = CbPagamentoEnter
      OnExit = CbPagamentoExit
      OnKeyPress = EdtPr_DescontoKeyPress
      Items.Strings = (
        '1) '#192' Vista - Dinheiro'
        '2) '#192' Prazo'
        '3) Cart'#227'o de Cr'#233'dito'
        '4) Cheque'
        '5) Contra Apresenta'#231#227'o'
        '6) Multi-parcelado'
        '7) Cart'#227'o de D'#233'bito'
        '8) PIX'
      )
    end
    object EdtVl_Pedido: TCurrencyEdit
      Left = 5
      Top = 17
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      TabStop = False
      AutoSize = False
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object EdtPr_Desconto: TCurrencyEdit
      Tag = 1
      Left = 88
      Top = 17
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DisplayFormat = '#,##0.00'
      TabOrder = 1
      OnChange = EdtPr_DescontoChange
      OnEnter = EdtPr_DescontoEnter
      OnExit = EdtPr_DescontoExit
      OnKeyPress = EdtPr_DescontoKeyPress
    end
    object EdtVl_Desconto: TCurrencyEdit
      Tag = 2
      Left = 133
      Top = 17
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      TabOrder = 2
      OnChange = EdtPr_DescontoChange
      OnEnter = EdtPr_DescontoEnter
      OnExit = EdtPr_DescontoExit
      OnKeyPress = EdtPr_DescontoKeyPress
    end
    object EdtPr_Custo: TCurrencyEdit
      Tag = 3
      Left = 218
      Top = 17
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DisplayFormat = '#,##0.00'
      TabOrder = 3
      OnChange = EdtPr_DescontoChange
      OnEnter = EdtPr_DescontoEnter
      OnExit = EdtPr_DescontoExit
      OnKeyPress = EdtPr_DescontoKeyPress
    end
    object EdtVl_Custo: TCurrencyEdit
      Tag = 4
      Left = 263
      Top = 17
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      TabOrder = 4
      OnChange = EdtPr_DescontoChange
      OnEnter = EdtPr_DescontoEnter
      OnExit = EdtPr_DescontoExit
      OnKeyPress = EdtPr_DescontoKeyPress
    end
    object EdtVl_Total: TCurrencyEdit
      Left = 530
      Top = 18
      Width = 170
      Height = 29
      Margins.Left = 2
      Margins.Top = 2
      TabStop = False
      AutoSize = False
      Color = 14342874
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 16
    end
    object EdtVl_Troco: TCurrencyEdit
      Left = 530
      Top = 69
      Width = 170
      Height = 29
      Margins.Left = 2
      Margins.Top = 2
      TabStop = False
      AutoSize = False
      Color = 14342874
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 17
    end
    object EdtVl_Frete: TCurrencyEdit
      Tag = 5
      Left = 348
      Top = 17
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      TabOrder = 5
      OnChange = EdtPr_DescontoChange
      OnEnter = EdtPr_DescontoEnter
      OnExit = EdtPr_DescontoExit
      OnKeyPress = EdtPr_DescontoKeyPress
    end
    object DbGParcelas: TDBGrid
      Left = 5
      Top = 145
      Width = 696
      Height = 124
      DataSource = DsParcela
      FixedColor = clSilver
      Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 12
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = DbGParcelasDblClick
      OnEnter = DbGParcelasEnter
      OnExit = DbGParcelasExit
      OnKeyPress = DbGParcelasKeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'Dp_Vencimento'
          Title.Alignment = taCenter
          Width = 155
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'vl_parcela'
          Title.Alignment = taRightJustify
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Dp_Parcela'
          Width = 91
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nm_portador'
          Width = 172
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cd_banco'
          Width = 34
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cd_agencia'
          Width = 44
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nr_conta'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nr_cheque'
          Width = 49
          Visible = True
        end>
    end
    object PnlAction_3: TPanel
      Left = 80
      Top = 118
      Width = 154
      Height = 27
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 18
      object ActToolBParcela: TActionToolBar
        Left = 0
        Top = 0
        Width = 154
        Height = 26
        ActionManager = ActManCadastro
        Caption = 'ActToolBParcela'
        ColorMap.HighlightColor = clWhite
        ColorMap.BtnSelectedColor = clBtnFace
        ColorMap.UnusedColor = clWhite
        ParentShowHint = False
        ShowHint = True
        Spacing = 0
      end
    end
    object EdtVl_Dinheiro: TCurrencyEdit
      Tag = 1
      Left = 7
      Top = 94
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DisplayFormat = '#,##0.00'
      TabOrder = 7
      OnExit = EdtVl_DinheiroExit
      OnKeyPress = EdtPr_DescontoKeyPress
    end
    object EdtVl_Cartao: TCurrencyEdit
      Tag = 3
      Left = 92
      Top = 93
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DisplayFormat = '#,##0.00'
      TabOrder = 8
      OnExit = EdtVl_DinheiroExit
      OnKeyPress = EdtPr_DescontoKeyPress
    end
    object EdtVl_DinTroco: TCurrencyEdit
      Left = 356
      Top = 70
      Width = 170
      Height = 29
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 11
      OnChange = EdtVl_DinTrocoChange
    end
    object PgCtDetalhes: TPageControl
      Left = 0
      Top = 275
      Width = 701
      Height = 182
      ActivePage = TabSComissao
      TabOrder = 13
      object TabSGeral: TTabSheet
        Caption = '                           Informa'#231#245'es Gerais                           '
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object Label17: TLabel
          Left = 382
          Top = 2
          Width = 104
          Height = 13
          Caption = 'Endere'#231'o de Entrega:'
        end
        object SbEndereco: TSpeedButton
          Left = 422
          Top = 17
          Width = 23
          Height = 19
          Hint = 'Seleciona Endere'#231'o'
          Flat = True
          Glyph.Data = {binary 1430 bytes}
          NumGlyphs = 2
          ParentShowHint = False
          ShowHint = True
          OnClick = SbEnderecoClick
        end
        object SbEmitenteContato: TSpeedButton
          Left = 355
          Top = 17
          Width = 23
          Height = 19
          Hint = 'Seleciona Contatos do Emitente'
          Flat = True
          Glyph.Data = {binary 1430 bytes}
          NumGlyphs = 2
          ParentShowHint = False
          ShowHint = True
          OnClick = SbEmitenteContatoClick
        end
        object Label13: TLabel
          Left = 5
          Top = 39
          Width = 31
          Height = 13
          Caption = 'CFOP:'
        end
        object SbCFOP: TSpeedButton
          Left = 36
          Top = 53
          Width = 23
          Height = 19
          Hint = 'Seleciona CFOP'
          Flat = True
          Glyph.Data = {binary 1430 bytes}
          NumGlyphs = 2
          ParentShowHint = False
          ShowHint = True
          OnClick = SbCFOPClick
        end
        object Label15: TLabel
          Left = 355
          Top = 38
          Width = 69
          Height = 13
          Caption = 'Transportador:'
        end
        object SbTransportador: TSpeedButton
          Left = 405
          Top = 53
          Width = 23
          Height = 19
          Hint = 'Seleciona Transportador'
          Flat = True
          Glyph.Data = {binary 1430 bytes}
          NumGlyphs = 2
          ParentShowHint = False
          ShowHint = True
          OnClick = SbTransportadorClick
        end
        object Label16: TLabel
          Left = 289
          Top = 73
          Width = 41
          Height = 13
          Caption = 'Esp'#233'cie:'
        end
        object Label18: TLabel
          Left = 5
          Top = 73
          Width = 75
          Height = 13
          Caption = 'Frete por conta:'
        end
        object Label19: TLabel
          Left = 5
          Top = 110
          Width = 85
          Height = 13
          Caption = 'Prazo de Entrega:'
        end
        object Label20: TLabel
          Left = 115
          Top = 110
          Width = 104
          Height = 13
          Caption = 'Validade da Proposta:'
        end
        object Label6: TLabel
          Left = 96
          Top = 73
          Width = 30
          Height = 13
          Caption = 'Placa:'
        end
        object Label22: TLabel
          Left = 532
          Top = 74
          Width = 55
          Height = 13
          Caption = 'Peso Bruto:'
        end
        object Label23: TLabel
          Left = 608
          Top = 74
          Width = 66
          Height = 13
          Caption = 'Peso L'#237'quido:'
        end
        object LblProducao: TLabel
          Left = 305
          Top = 110
          Width = 74
          Height = 13
          Caption = 'Produtos ser'#227'o:'
        end
        object Label77: TLabel
          Left = 220
          Top = 110
          Width = 83
          Height = 13
          Caption = 'Consumidor Final:'
        end
        object EdtNr_Pedido_Emitente: TLabeledEdit
          Left = 5
          Top = 17
          Width = 145
          Height = 19
          CharCase = ecUpperCase
          EditLabel.Width = 141
          EditLabel.Height = 13
          EditLabel.Caption = 'N'#250'mero do Pedido do Cliente:'
          LabelSpacing = 2
          MaxLength = 30
          TabOrder = 0
          OnExit = EdtNr_Pedido_EmitenteExit
        end
        object EdtNm_Contato: TLabeledEdit
          Tag = 2
          Left = 154
          Top = 17
          Width = 200
          Height = 19
          EditLabel.Width = 144
          EditLabel.Height = 13
          EditLabel.Caption = 'Nome do Contato (Solicitante):'
          LabelSpacing = 2
          MaxLength = 50
          TabOrder = 1
          OnKeyDown = EdtNr_EnderecoKeyDown
        end
        object EdtNr_Endereco: TCurrencyEdit
          Tag = 1
          Left = 382
          Top = 17
          Width = 40
          Height = 19
          Margins.Left = 2
          Margins.Top = 2
          AutoSize = False
          DecimalPlaces = 0
          DisplayFormat = '#,###'
          TabOrder = 2
          OnExit = EdtNr_EnderecoExit
          OnKeyDown = EdtNr_EnderecoKeyDown
        end
        object EdtDs_Endereco: TEdit
          Left = 446
          Top = 17
          Width = 244
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
        object EdtCd_CFOP: TEdit
          Tag = 1
          Left = 5
          Top = 53
          Width = 31
          Height = 19
          MaxLength = 4
          TabOrder = 4
          OnExit = EdtCd_CFOPExit
          OnKeyDown = EdtNr_EnderecoKeyDown
        end
        object EdtDs_CFOP: TEdit
          Left = 60
          Top = 53
          Width = 290
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
        object EdtCd_Transportador: TCurrencyEdit
          Tag = 2
          Left = 355
          Top = 53
          Width = 50
          Height = 19
          Margins.Left = 2
          Margins.Top = 2
          AutoSize = False
          DecimalPlaces = 0
          DisplayFormat = '#,###'
          TabOrder = 6
          OnExit = EdtCd_TransportadorExit
          OnKeyDown = EdtNr_EnderecoKeyDown
        end
        object EdtNm_Transportador: TEdit
          Left = 430
          Top = 53
          Width = 260
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
          TabOrder = 7
        end
        object EdtDs_Quantidade: TLabeledEdit
          Left = 168
          Top = 88
          Width = 115
          Height = 19
          EditLabel.Width = 58
          EditLabel.Height = 13
          EditLabel.Caption = 'Quantidade:'
          LabelSpacing = 2
          MaxLength = 20
          TabOrder = 10
        end
        object EdtDs_Marca: TLabeledEdit
          Left = 414
          Top = 88
          Width = 115
          Height = 19
          EditLabel.Width = 33
          EditLabel.Height = 13
          EditLabel.Caption = 'Marca:'
          LabelSpacing = 2
          MaxLength = 20
          TabOrder = 12
        end
        object CbEspecie: TComboBox
          Left = 289
          Top = 88
          Width = 121
          Height = 21
          ItemHeight = 13
          MaxLength = 20
          TabOrder = 11
          Items.Strings = (
            'Volume'
            'Caixa'
            'Pe'#231'a'
            'Amarrados'
            'Pacote'
            'Rolo'
          )
        end
        object CbFrete: TComboBox
          Left = 5
          Top = 88
          Width = 89
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          MaxLength = 20
          TabOrder = 8
          Items.Strings = (
            'Emitente'
            'Destinat'#225'rio'
          )
        end
        object EdtDt_Entrega: TEdit
          Left = 45
          Top = 124
          Width = 65
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
          TabOrder = 16
        end
        object EdtNr_Entrega: TCurrencyEdit
          Tag = 1
          Left = 5
          Top = 124
          Width = 40
          Height = 19
          Margins.Left = 2
          Margins.Top = 2
          AutoSize = False
          DecimalPlaces = 0
          DisplayFormat = '#,###'
          TabOrder = 15
          OnChange = EdtNr_EntregaChange
        end
        object EdtNr_Validade: TCurrencyEdit
          Tag = 1
          Left = 115
          Top = 124
          Width = 40
          Height = 19
          Margins.Left = 2
          Margins.Top = 2
          AutoSize = False
          DecimalPlaces = 0
          DisplayFormat = '#,###'
          TabOrder = 17
        end
        object EdtNr_Placa: TMaskEdit
          Left = 96
          Top = 88
          Width = 69
          Height = 19
          AutoSize = False
          CharCase = ecUpperCase
          MaxLength = 7
          TabOrder = 9
        end
        object EdtPs_Pedido: TCurrencyEdit
          Left = 532
          Top = 88
          Width = 70
          Height = 19
          Margins.Left = 2
          Margins.Top = 2
          AutoSize = False
          DecimalPlaces = 3
          DisplayFormat = '#,##0.00#'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 13
        end
        object EdtPs_Liquido: TCurrencyEdit
          Left = 608
          Top = 88
          Width = 75
          Height = 19
          Margins.Left = 2
          Margins.Top = 2
          AutoSize = False
          DecimalPlaces = 3
          DisplayFormat = '#,##0.00#'
          TabOrder = 14
        end
        object CbProducao: TComboBox
          Left = 305
          Top = 124
          Width = 151
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          ItemIndex = 0
          MaxLength = 20
          TabOrder = 19
          Text = 'Enviados a produ'#231#227'o'
          Items.Strings = (
            'Enviados a produ'#231#227'o'
            'Retirados no balc'#227'o'
            'Instala'#231#227'o'
          )
        end
        object CbConFinal: TComboBox
          Left = 220
          Top = 124
          Width = 60
          Height = 21
          Style = csDropDownList
          Ctl3D = False
          ItemHeight = 13
          ItemIndex = 0
          ParentCtl3D = False
          TabOrder = 18
          Text = 'Sim'
          Items.Strings = (
            'Sim'
            'N'#227'o'
          )
        end
      end
      object TabSObservacao: TTabSheet
        Caption = '                         Observa'#231#245'es                         '
        ImageIndex = 1
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object Label11: TLabel
          Left = 3
          Top = 0
          Width = 136
          Height = 13
          Caption = 'O&bserva'#231#245'es do Or'#231'amento:'
          FocusControl = MmObservacao
        end
        object Label12: TLabel
          Left = 348
          Top = 0
          Width = 107
          Height = 13
          Caption = 'Observa'#231#245'es da &Nota:'
          FocusControl = MmNota
        end
        object MmObservacao: TMemo
          Left = 3
          Top = 15
          Width = 338
          Height = 137
          ScrollBars = ssVertical
          TabOrder = 0
        end
        object MmNota: TMemo
          Left = 348
          Top = 15
          Width = 338
          Height = 137
          ScrollBars = ssVertical
          TabOrder = 1
        end
      end
      object TabSComissao: TTabSheet
        Caption = '                        Comiss'#227'o                        '
        ImageIndex = 2
        object Label21: TLabel
          Left = 4
          Top = 4
          Width = 60
          Height = 13
          Caption = 'Vendedores:'
        end
        object DbGComissao: TDBGrid
          Left = 4
          Top = 19
          Width = 507
          Height = 133
          DataSource = DsComissao
          FixedColor = clSilver
          Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnEnter = DbGParcelasEnter
          OnExit = DbGParcelasExit
          Columns = <
            item
              Expanded = False
              FieldName = 'Cd_Funcionario'
              Width = 38
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Nm_Funcionario'
              Width = 444
              Visible = True
            end>
        end
        object Panel1: TPanel
          Left = 513
          Top = 19
          Width = 31
          Height = 57
          BevelOuter = bvNone
          ParentColor = True
          TabOrder = 1
          object ActionToolBar1: TActionToolBar
            Left = 0
            Top = 0
            Width = 27
            Height = 57
            ActionManager = ActManCadastro
            Align = alLeft
            Caption = 'ActToolBParcela'
            ColorMap.HighlightColor = clWhite
            ColorMap.BtnSelectedColor = clBtnFace
            ColorMap.UnusedColor = clWhite
            ParentShowHint = False
            ShowHint = True
            Spacing = 0
          end
        end
      end
    end
    object EdtVl_Debito: TCurrencyEdit
      Tag = 7
      Left = 181
      Top = 94
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DisplayFormat = '#,##0.00'
      TabOrder = 9
      OnExit = EdtVl_DinheiroExit
      OnKeyPress = EdtPr_DescontoKeyPress
    end
    object EdtVl_PIX: TCurrencyEdit
      Tag = 8
      Left = 269
      Top = 94
      Width = 80
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DisplayFormat = '#,##0.00'
      TabOrder = 10
      OnExit = EdtVl_DinheiroExit
      OnKeyPress = EdtPr_DescontoKeyPress
    end
  end
  object ADODsOrcaFecha: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    OnCalcFields = ADODsOrcaFechaCalcFields
    CommandText = 'select'#13#10'  O.Nr_Orcamento, O.St_Orcamento, O.Cd_Emitente, E.Nm_Emitente, O.Nr_Endereco,'#13#10'  E.Cd_Portador,  E.Nr_Pagamento, O.Vl_Pedido_Frete, O.Ps_Pedido, O.Vl_Pedido,'#13#10'  O.Mg_Pedido, O.Pr_Desconto, O.Vl_Desconto, O.Pr_Custo, O.Vl_Custo, O.Fl_FormaPagto,'#13#10'  O.Vl_IPI, O.Nr_Pedido_Emitente, O.Mm_Observacao, O.Nm_Contato,'#13#10'  O.Mm_Nota, O.Cd_CFOP, C.Sg_Estado, O.Cd_Transportador, O.Ds_Quantidade,'#13#10'  O.Ds_Especie, O.Ds_Marca, O.Fl_Frete, O.Nr_Entrega, O.Nr_Validade,'#13#10'  O.Cd_Funcionario, O.Ps_Liquido, O.Nr_Placa, O.Vl_Stb, O.Dt_Emissao,'#13#10'  O.Fl_Producao, O.Fl_ConFinal, E.Fl_ConFinal as Fl_ConFinalEmitente,'#13#10#13#10'  Qt_Pecas ='#13#10'    coalesce('#13#10'    (select'#13#10'      sum( OD.Qt_Item )'#13#10#13#10'    from'#13#10'      Orcamento_Item OI'#13#10#13#10'    inner join'#13#10'      Orcamento_Detalhe OD'#13#10'    on'#13#10'      OD.Cd_Filial    = OI.Cd_Filial and'#13#10'      OD.Nr_Orcamento = OI.Nr_Orcamento and'#13#10'      OD.Nr_Item      = OI.Nr_Item'#13#10#13#10'    where'#13#10'      OI.Cd_Filial    = O.Cd_Filial and'#13#10'      OI.Nr_Orcamento = O.Nr_Orcamento'#13#10'    ), 0.0 ) +'#13#10'    coalesce( ('#13#10'    select'#13#10'      sum( OI.Qt_Item )'#13#10#13#10'    from'#13#10'      Orcamento_Item OI'#13#10#13#10'    where'#13#10'      OI.Cd_Filial    = O.Cd_Filial and'#13#10'      OI.Nr_Orcamento = O.Nr_Orcamento and'#13#10'      not exists('#13#10'        select'#13#10'          OD.Cd_Filial'#13#10#13#10'        from'#13#10'          Orcamento_Detalhe OD'#13#10#13#10'        where'#13#10'          OD.Cd_Filial    = OI.Cd_Filial and'#13#10'          OD.Nr_Orcamento = OI.Nr_Orcamento and'#13#10'          OD.Nr_Item      = OI.Nr_Item'#13#10'        ) ), 0.0 )'#13#10#13#10'from'#13#10'  Orcamento O'#13#10#13#10'left join'#13#10'  Emitente E'#13#10'on'#13#10'  E.Cd_Emitente = O.Cd_Emitente'#13#10#13#10'left join'#13#10'  Emitente_Endereco EE'#13#10'on'#13#10'  EE.Cd_Emitente = O.Cd_Emitente and'#13#10'  EE.Nr_Endereco = O.Nr_Endereco'#13#10#13#10'left join'#13#10'  Cidade C'#13#10'on '#13#10'  C.Cd_Cidade = EE.Cd_Cidade'#13#10#13#10'where'#13#10'  O.Cd_Filial    = :Cd_Filial and'#13#10'  O.Nr_Orcamento = :Nr_Orcamento'
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
        Name = 'Nr_Orcamento'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = nil?
      end>
    Left = 22
    Top = 423
    object ADODsOrcaFechanr_orcamento: TIntegerField
      FieldName = 'nr_orcamento'
    end
    object ADODsOrcaFechast_orcamento: TStringField
      FieldName = 'st_orcamento'
      FixedChar = True
      Size = 1
    end
    object ADODsOrcaFechacd_emitente: TIntegerField
      FieldName = 'cd_emitente'
    end
    object ADODsOrcaFechanm_emitente: TStringField
      FieldName = 'nm_emitente'
      Size = 50
    end
    object ADODsOrcaFechacd_portador: TSmallintField
      FieldName = 'cd_portador'
    end
    object ADODsOrcaFechanr_pagamento: TSmallintField
      FieldName = 'nr_pagamento'
    end
    object ADODsOrcaFechavl_pedido_frete: TBCDField
      FieldName = 'vl_pedido_frete'
      Precision = 12
      Size = 2
    end
    object ADODsOrcaFechaps_pedido: TBCDField
      FieldName = 'ps_pedido'
      Precision = 12
      Size = 3
    end
    object ADODsOrcaFechavl_pedido: TBCDField
      FieldName = 'vl_pedido'
      Precision = 12
      Size = 2
    end
    object ADODsOrcaFechamg_pedido: TBCDField
      FieldName = 'mg_pedido'
      Precision = 12
      Size = 2
    end
    object ADODsOrcaFechapr_desconto: TBCDField
      FieldName = 'pr_desconto'
      Precision = 7
      Size = 2
    end
    object ADODsOrcaFechavl_desconto: TBCDField
      FieldName = 'vl_desconto'
      Precision = 12
      Size = 2
    end
    object ADODsOrcaFechapr_custo: TBCDField
      FieldName = 'pr_custo'
      Precision = 7
      Size = 2
    end
    object ADODsOrcaFechavl_custo: TBCDField
      FieldName = 'vl_custo'
      Precision = 12
      Size = 2
    end
    object ADODsOrcaFechafl_formapagto: TStringField
      FieldName = 'fl_formapagto'
      FixedChar = True
      Size = 1
    end
    object ADODsOrcaFechavl_ipi: TBCDField
      FieldName = 'vl_ipi'
      Precision = 12
      Size = 2
    end
    object ADODsOrcaFechaVl_Total: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Vl_Total'
      Calculated = True
    end
    object ADODsOrcaFechanr_pedido_emitente: TStringField
      FieldName = 'nr_pedido_emitente'
      Size = 30
    end
    object ADODsOrcaFechanm_contato: TStringField
      FieldName = 'nm_contato'
      Size = 50
    end
    object ADODsOrcaFechanr_endereco: TSmallintField
      FieldName = 'nr_endereco'
    end
    object ADODsOrcaFechacd_cfop: TStringField
      FieldName = 'cd_cfop'
      FixedChar = True
      Size = 4
    end
    object ADODsOrcaFechasg_estado: TStringField
      FieldName = 'sg_estado'
      FixedChar = True
      Size = 2
    end
    object ADODsOrcaFechaMm_Observacao: TMemoField
      FieldName = 'Mm_Observacao'
      BlobType = ftMemo
    end
    object ADODsOrcaFechaMm_Nota: TMemoField
      FieldName = 'Mm_Nota'
      BlobType = ftMemo
    end
    object ADODsOrcaFechaCd_Transportador: TSmallintField
      FieldName = 'Cd_Transportador'
    end
    object ADODsOrcaFechaDs_Quantidade: TStringField
      FieldName = 'Ds_Quantidade'
    end
    object ADODsOrcaFechaDs_Especie: TStringField
      FieldName = 'Ds_Especie'
    end
    object ADODsOrcaFechaDs_Marca: TStringField
      FieldName = 'Ds_Marca'
    end
    object ADODsOrcaFechaFl_Frete: TStringField
      FieldName = 'Fl_Frete'
      FixedChar = True
      Size = 1
    end
    object ADODsOrcaFechaNr_Entrega: TSmallintField
      FieldName = 'Nr_Entrega'
    end
    object ADODsOrcaFechaNr_Validade: TSmallintField
      FieldName = 'Nr_Validade'
    end
    object ADODsOrcaFechaCd_Funcionario: TSmallintField
      FieldName = 'Cd_Funcionario'
    end
    object ADODsOrcaFechaPs_Liquido: TBCDField
      FieldName = 'Ps_Liquido'
      Precision = 12
      Size = 3
    end
    object ADODsOrcaFechaNr_Placa: TStringField
      FieldName = 'Nr_Placa'
      Size = 7
    end
    object ADODsOrcaFechaVl_Stb: TBCDField
      FieldName = 'Vl_Stb'
      Precision = 12
      Size = 2
    end
    object ADODsOrcaFechaQt_Pecas: TBCDField
      FieldName = 'Qt_Pecas'
      ReadOnly = True
      Precision = 32
      Size = 3
    end
    object ADODsOrcaFechaDt_Emissao: TDateTimeField
      FieldName = 'Dt_Emissao'
    end
    object ADODsOrcaFechaFl_Producao: TStringField
      FieldName = 'Fl_Producao'
      FixedChar = True
      Size = 1
    end
    object ADODsOrcaFechaFl_ConFinal: TStringField
      FieldName = 'Fl_ConFinal'
      FixedChar = True
      Size = 1
    end
    object ADODsOrcaFechaFl_ConFinalEmitente: TStringField
      FieldName = 'Fl_ConFinalEmitente'
      FixedChar = True
      Size = 1
    end
  end
  object ADOCmdFechamento: TMultADOCMD
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLInsert.Strings = (
      'insert into Orcamento_Parcela( Cd_Filial, Nr_Orcamento, Nr_Prazo, Nr_Parcela,'
      '   Fl_Parcela, Cd_Portador, Dt_Vencimento, Vl_Parcela, Cd_Banco, Cd_Agencia,'
      '   Nr_Conta, Nr_Cheque, Dt_Emissao, Nr_Documento, Nm_Cliente, Nr_Telefone )'
      ''
      'select'
      '  Cd_Filial, Nr_Orcamento, Nr_Prazo, Nr_Parcela, Fl_Parcela, Cd_Portador,'
      '  Dt_Vencimento, Vl_Parcela, Cd_Banco, Cd_Agencia, Nr_Conta, Nr_Cheque,'
      '  Dt_Emissao, Nr_Documento, Nm_Cliente, Nr_Telefone'
      ''
      'from'
      '  #OrcPar'
      ''
      'where'
      '  Cd_Filial    = :Cd_Filial and'
      '  Nr_Orcamento = :Nr_Orcamento and'
      '  Fl_Parcela  >= :Fl_ParIni and'
      '  Fl_Parcela  <= :Fl_ParFim '
    )
    SQLUpdate.Strings = (
      '-- Altera'#231#227'o do or'#231'amento'
      'update'
      '  Orcamento'
      ''
      'set'
      '  Fl_FormaPagto      = :Fl_FormaPagto,'
      '  Nr_Pedido_Emitente = :Nr_Pedido_Emitente,'
      '  Pr_Desconto        = :Pr_Desconto,'
      '  Vl_Desconto        = :Vl_Desconto,'
      '  Pr_Custo           = :Pr_Custo,'
      '  Vl_Custo           = :Vl_Custo,'
      '  Nr_Endereco        = :Nr_Endereco,'
      '  Vl_Pedido_Frete    = :Vl_Pedido_Frete,'
      '  Nm_Contato         = :Nm_Contato,'
      '  Cd_CFOP            = :Cd_CFOP,'
      '  Mm_Observacao      = :Mm_Observacao,'
      '  Mm_Nota            = :Mm_Nota,'
      '  Cd_Transportador   = :Cd_Transportador,'
      '  Ds_Quantidade      = :Ds_Quantidade,'
      '  Ds_Especie         = :Ds_Especie,'
      '  Ds_Marca           = :Ds_Marca,'
      '  Fl_Frete           = :Fl_Frete,'
      '  Nr_Entrega         = :Nr_Entrega,'
      '  Nr_Validade        = :Nr_Validade,'
      '  Ps_Pedido          = :Ps_Pedido,'
      '  Ps_Liquido         = :Ps_Liquido,'
      '  Nr_Placa           = :Nr_Placa,'
      '  Fl_Producao        = :Fl_Producao,'
      '  Fl_ConFinal        = :Fl_ConFinal'
      ''
      'where'
      '  Cd_Filial    = :Cd_Filial and'
      '  Nr_Orcamento = :Nr_Orcamento'
    )
    SQLDelete.Strings = (
      'delete from'
      '  Orcamento_Parcela'
      ''
      'where'
      '  Cd_Filial    = :Cd_Filial and'
      '  Nr_Orcamento = :Nr_Orcamento'
    )
    SQLOther0.Strings = (
      '-- Cria tabela temporaria'
      'create table #orcpar'
      '  ('
      '  cd_filial smallint,'
      '  nr_orcamento int,'
      '  nr_prazo smallint,'
      '  fl_parcela char( 1 ),'
      '  nr_parcela smallint,'
      '  cd_portador smallint,'
      '  dt_vencimento smalldatetime,'
      '  vl_parcela numeric( 12, 2 ),'
      '  cd_banco varchar( 3 ),'
      '  cd_agencia varchar( 4 ),'
      '  nr_conta varchar( 10 ),'
      '  nr_cheque int,'
      '  dt_emissao smalldatetime,'
      '  nr_documento varchar( 14 ),'
      '  nm_cliente varchar( 50 ),'
      '  nr_telefone varchar( 10 ),'
      '  nr_sequencia smallint identity( 1, 1 ),'
      '  cAut VarChar( 20 )'
      '  );'
    )
    SQLOther1.Strings = (
      '-- Limpa dados'
      'truncate table #orcpar;'
    )
    SQLOther2.Strings = (
      '-- Carrega os dados para tabela temporaria'
      'insert into #orcpar( Cd_Filial, Nr_Orcamento, Nr_Prazo, Nr_Parcela, Fl_Parcela,'
      '   Cd_Portador, Dt_Vencimento, Vl_Parcela, Cd_Banco, Cd_Agencia, Nr_Conta,'
      '   Nr_Cheque, Dt_Emissao, Nr_Documento, Nm_Cliente, Nr_Telefone, cAut )'
      'select'
      '  Cd_Filial, Nr_Orcamento, Nr_Prazo, Nr_Parcela, Fl_Parcela, Cd_Portador,'
      '  Dt_Vencimento, Vl_Parcela, Cd_Banco, Cd_Agencia, Nr_Conta, Nr_Cheque,'
      '  Dt_Emissao, Nr_Documento, Nm_Cliente, Nr_Telefone, cAut'
      ''
      'from'
      '  Orcamento_Parcela'
      '  '
      'where'
      '  Cd_Filial    = :Cd_Filial and'
      '  Nr_Orcamento = :Nr_Orcamento'
    )
    SQLOther3.Strings = (
      '-- Inclui Dinheiro / Cart'#227'o'
      'insert into #orcpar( Cd_Filial, Nr_Orcamento, Nr_Prazo, Fl_Parcela, Nr_Parcela,'
      '   Vl_Parcela, Cd_Portador )'
      'values( :Cd_Filial, :Nr_Orcamento, :Nr_Prazo, :Fl_Parcela, :Nr_Parcela,'
      '   :Vl_Parcela, :Cd_Portador )'
    )
    SQLOther4.Strings = (
      '-- Exclui parcela para / Dinheiro e Cart'#227'o'
      'delete from'
      '  #OrcPar'
      ''
      'where'
      '  Cd_Filial    = :Cd_Filial and'
      '  Nr_Orcamento = :Nr_Orcamento and'
      '  Nr_Prazo     = :Nr_Prazo and'
      '  Fl_Parcela   = :Fl_Parcela'
    )
    SQLOther5.Strings = (
      '-- Exclui parcela'
      'delete from'
      '  #OrcPar'
      ''
      'where'
      '  Cd_Filial    = :Cd_Filial and'
      '  Nr_Orcamento = :Nr_Orcamento and'
      '  Nr_Prazo     = :Nr_Prazo and'
      '  Nr_Parcela   = :Nr_Parcela and'
      '  Fl_Parcela   = :Fl_Parcela'
    )
    SQLOther6.Strings = (
      '-------------------- Excluir o Vendedor da comiss'#227'o '
      'delete from'
      '  Orcamento_Comissao'
      ''
      'where'
      '  Cd_Filial      = :Cd_Filial and'
      '  Nr_Orcamento   = :Nr_Orcamento and'
      '  Cd_Funcionario = :Cd_Funcionario'
    )
    SQLOther7.Strings = (
      '-------------------- Inclus'#227'o de funcion'#225'rio na comiss'#227'o'
      'declare'
      '  @Cd_Filial SmallInt,'
      '  @Nr_Orcamento Int,'
      '  @Cd_Funcionario SmallInt'
      ''
      'select'
      '  @Cd_Filial      = :Cd_Filial,'
      '  @Nr_Orcamento   = :Nr_Orcamento,'
      '  @Cd_Funcionario = :Cd_Funcionario'
      ''
      'if not Exists('
      '   select'
      '     Cd_Filial'
      ''
      '   from'
      '     Orcamento_Comissao'
      ''
      '   where'
      '     Cd_Filial      = @Cd_Filial and'
      '     Nr_Orcamento   = @Nr_Orcamento and'
      '     Cd_Funcionario = @Cd_Funcionario'
      '   )'
      '  insert into Orcamento_Comissao( Cd_Filial, Nr_Orcamento, Cd_Funcionario )'
      '  values( @Cd_Filial, @Nr_Orcamento, @Cd_Funcionario )'
      ''
    )
    SQLOther8.Strings = (
      '-- Reinicia a sequencia'
      'update'
      '  #OrcPar'
      ''
      'set'
      '  Nr_Parcela ='
      '    ('
      '    select'
      '      count(*)'
      ''
      '    from'
      '      #OrcPar OP'
      ''
      '    where'
      '      OP.Nr_Sequencia <= #OrcPar.Nr_Sequencia'
      '    )'
      ''
      'where'
      '  Cd_Filial    = :Cd_Filial and'
      '  Nr_Orcamento = :Nr_Orcamento;'
    )
    Left = 53
    Top = 423
  end
  object ADODsParcela: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterScroll = ADODsParcelaAfterScroll
    OnCalcFields = ADODsParcelaCalcFields
    CommandText = '/*'#13#10'-- Cria tabela temporaria'#13#10'create table #orcpar'#13#10'  ('#13#10'  cd_filial smallint,'#13#10'  nr_orcamento int,'#13#10'  nr_prazo smallint,'#13#10'  fl_parcela char( 1 ),'#13#10'  nr_parcela smallint,'#13#10'  cd_portador smallint,'#13#10'  dt_vencimento smalldatetime,'#13#10'  vl_parcela numeric( 12, 2 ),'#13#10'  cd_banco varchar( 3 ),'#13#10'  cd_agencia varchar( 4 ),'#13#10'  nr_conta varchar( 10 ),'#13#10'  nr_cheque int,'#13#10'  dt_emissao smalldatetime,'#13#10'  nr_documento varchar( 14 ),'#13#10'  nm_cliente varchar( 50 ),'#13#10'  nr_telefone varchar( 10 ),'#13#10'  nr_sequencia smallint identity( 1, 1 ),'#13#10'  cAut VarChar( 20 )'#13#10'  );'#13#10'*/'#13#10'select'#13#10'  OP.nr_prazo, OP.cd_portador, P.Nm_Portador, OP.dt_vencimento, OP.vl_parcela, OP.cd_banco,'#13#10'  OP.cd_agencia, OP.nr_conta, OP.nr_cheque, OP.dt_emissao, OP.nr_documento,'#13#10'  OP.nm_cliente, OP.nr_telefone, OP.fl_parcela, OP.Nr_Parcela as Nr_ParInterna,'#13#10'  OP.cAut'#13#10#13#10'from'#13#10'  #OrcPar OP'#13#10'  '#13#10'left join'#13#10'  Portador P'#13#10'on'#13#10'  P.Cd_Portador = OP.Cd_Portador'#13#10#13#10'where'#13#10'  OP.Fl_Parcela >= :Fl_ParIni and'#13#10'  OP.Fl_Parcela <= :Fl_ParFim'#13#10#13#10'order by'#13#10'  OP.Nr_Prazo, OP.Nr_Parcela'
    Parameters = <
      item
        Name = 'Fl_ParIni'
        DataType = ftString
        Size = 1
        Value = ' '
      end
      item
        Name = 'Fl_ParFim'
        DataType = ftString
        Size = 1
        Value = ' '
      end>
    Left = 128
    Top = 423
    object ADODsParcelaDp_Vencimento: TStringField
      DisplayLabel = 'Vencimento/Prazo'
      FieldKind = fkCalculated
      FieldName = 'Dp_Vencimento'
      Size = 30
      Calculated = True
    end
    object ADODsParcelanr_prazo: TSmallintField
      FieldName = 'nr_prazo'
    end
    object ADODsParcelacd_portador: TSmallintField
      FieldName = 'cd_portador'
    end
    object ADODsParceladt_vencimento: TDateTimeField
      FieldName = 'dt_vencimento'
    end
    object ADODsParcelavl_parcela: TBCDField
      DisplayLabel = 'Valor'
      FieldName = 'vl_parcela'
      DisplayFormat = '##,##0.00'
      Precision = 12
      Size = 2
    end
    object ADODsParcelacd_banco: TStringField
      DisplayLabel = 'Banco'
      FieldName = 'cd_banco'
      Size = 3
    end
    object ADODsParcelacd_agencia: TStringField
      DisplayLabel = 'Ag'#234'ncia'
      FieldName = 'cd_agencia'
      Size = 4
    end
    object ADODsParcelanr_conta: TStringField
      DisplayLabel = 'Conta'
      FieldName = 'nr_conta'
      Size = 10
    end
    object ADODsParcelanr_cheque: TIntegerField
      DisplayLabel = 'Cheque'
      FieldName = 'nr_cheque'
    end
    object ADODsParceladt_emissao: TDateTimeField
      FieldName = 'dt_emissao'
    end
    object ADODsParcelanr_documento: TStringField
      FieldName = 'nr_documento'
      Size = 14
    end
    object ADODsParcelanm_cliente: TStringField
      FieldName = 'nm_cliente'
      Size = 50
    end
    object ADODsParcelanr_telefone: TStringField
      FieldName = 'nr_telefone'
      Size = 10
    end
    object ADODsParcelafl_parcela: TStringField
      FieldName = 'fl_parcela'
      FixedChar = True
      Size = 1
    end
    object ADODsParcelaDp_Parcela: TStringField
      DisplayLabel = 'Esp'#233'cie'
      FieldKind = fkCalculated
      FieldName = 'Dp_Parcela'
      Calculated = True
    end
    object ADODsParcelanm_portador: TStringField
      DisplayLabel = 'Portador'
      FieldName = 'nm_portador'
      Size = 50
    end
    object ADODsParcelaNr_ParInterna: TSmallintField
      FieldName = 'Nr_ParInterna'
    end
    object ADODsParcelacAut: TStringField
      FieldName = 'cAut'
    end
  end
  object DsParcela: TDataSource
    DataSet = ADODsParcela
    Left = 98
    Top = 423
  end
  object ActManCadastro: TActionManager
    ActionBars = <
      item
      end
      item
      end
      item
      end
      item
      end
      item
      end
      item
      end
      item
        Items = <
          item
            Caption = '-'
          end
          item
            Caption = '-'
          end>
      end
      item
      end
      item
        Items = <
          item
            Caption = '-'
          end
          item
            Caption = '-'
          end>
      end
      item
        Items = <
          item
            Caption = '-'
          end>
      end
      item
        Items = <
          item
            Caption = ' '
            ImageIndex = 1
          end>
      end
      item
        Items = <
          item
            Caption = '-'
          end
          item
            Caption = '-'
          end
          item
            Caption = '-'
          end
          item
            Caption = '-'
          end>
      end
      item
        Items = <
          item
            Action = ActParIns
            ImageIndex = 16
            ShortCut = 113
          end
          item
            Action = ActParEdit
            ImageIndex = 18
            ShortCut = 115
          end
          item
            Action = ActParDel
            ImageIndex = 19
            ShortCut = 116
          end
          item
            Caption = '-'
          end
          item
            Action = ActParAuto
            ImageIndex = 35
            ShortCut = 117
          end>
      end
      item
      end
      item
        Items = <
          item
            Action = ActParIns
            ImageIndex = 16
            ShortCut = 113
          end
          item
            Action = ActParEdit
            ImageIndex = 18
            ShortCut = 115
          end
          item
            Action = ActParDel
            ImageIndex = 19
            ShortCut = 116
          end
          item
            Caption = '-'
          end
          item
            Action = ActParAuto
            ImageIndex = 35
            ShortCut = 117
          end>
      end
      item
        Items = <
          item
            Caption = '-'
          end>
      end
      item
        Items = <
          item
            Caption = '-'
          end>
      end
      item
      end
      item
        Items = <
          item
            Caption = '-'
          end>
      end
      item
        Items = <
          item
            Caption = ' '
            ImageIndex = 20
          end>
      end
      item
        Items = <
          item
            Caption = '-'
          end>
      end
      item
        Items = <
          item
            Caption = ' '
            ImageIndex = 1
          end>
      end
      item
        Items = <
          item
            Action = ActParIns
            ImageIndex = 16
            ShortCut = 113
          end
          item
            Action = ActParEdit
            ImageIndex = 18
            ShortCut = 115
          end
          item
            Action = ActParDel
            ImageIndex = 19
            ShortCut = 116
          end
          item
            Action = ActParAuto
            ImageIndex = 35
            ShortCut = 117
          end
          item
            Action = ActParPrazo
            ImageIndex = 29
            ShortCut = 118
          end
          item
            Action = ActCheque
            ImageIndex = 0
            ShortCut = 119
          end>
        ActionBar = ActToolBParcela
      end
      item
        Items = <
          item
            Action = ActComIns
            ImageIndex = 16
          end
          item
            Action = ActComDel
            ImageIndex = 19
          end>
      end
      item
        Items = <
          item
            Action = ActComDel
            ImageIndex = 19
          end
          item
            Action = ActComIns
            ImageIndex = 16
          end>
        ActionBar = ActionToolBar1
      end>
    Images = FrmMain.ImgLstMenu
    Left = 503
    Top = 9
    StyleName = 'XP Style'
    object ActParIns: TAction
      Tag = 1
      Category = '1-Parcela'
      Hint = 'Incluir Parcela'
      ImageIndex = 16
      ShortCut = 113
      OnExecute = ActParInsExecute
    end
    object ActParEdit: TAction
      Tag = 2
      Category = '1-Parcela'
      Hint = 'Alterar Parcela/Cheque'
      ImageIndex = 18
      ShortCut = 115
      OnExecute = ActParInsExecute
    end
    object ActParDel: TAction
      Category = '1-Parcela'
      Hint = 'Excluir Parcela'
      ImageIndex = 19
      ShortCut = 116
      OnExecute = ActParDelExecute
    end
    object ActParAuto: TAction
      Category = '1-Parcela'
      Hint = 'Parcelamento Autom'#225'tico'
      ImageIndex = 35
      ShortCut = 117
      OnExecute = ActParAutoExecute
    end
    object ActParPrazo: TAction
      Category = '1-Parcela'
      Hint = 'Incluir Varios Vencimentos'
      ImageIndex = 29
      ShortCut = 118
      OnExecute = ActParPrazoExecute
    end
    object ActCheque: TAction
      Tag = 3
      Category = '1-Parcela'
      Hint = 'Cheques...'
      ImageIndex = 0
      ShortCut = 119
      OnExecute = ActChequeExecute
    end
    object ActComIns: TAction
      Category = '2-Comissao'
      Hint = 'Incluir Comiss'#227'o'
      ImageIndex = 16
      OnExecute = ActComInsExecute
    end
    object ActComDel: TAction
      Category = '2-Comissao'
      Hint = 'Excluir Comiss'#227'o'
      ImageIndex = 19
      OnExecute = ActComDelExecute
    end
  end
  object DsComissao: TDataSource
    DataSet = ADODsComissao
    Left = 161
    Top = 423
  end
  object ADODsComissao: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'select'#13#10'  OC.Cd_Filial, OC.Nr_Orcamento, OC.Cd_Funcionario, F.Nm_Funcionario'#13#10#13#10'from'#13#10'  Orcamento_Comissao OC'#13#10#13#10'inner join'#13#10'  Funcionario F'#13#10'on'#13#10'  F.Cd_Funcionario = OC.Cd_Funcionario'#13#10#13#10'where'#13#10'  Cd_Filial    = :Cd_Filial and'#13#10'  Nr_Orcamento = :Nr_Orcamento'
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
        Name = 'Nr_Orcamento'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = nil?
      end>
    Left = 191
    Top = 423
    object ADODsComissaoCd_Filial: TSmallintField
      FieldName = 'Cd_Filial'
    end
    object ADODsComissaoNr_Orcamento: TIntegerField
      FieldName = 'Nr_Orcamento'
    end
    object ADODsComissaoCd_Funcionario: TSmallintField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'Cd_Funcionario'
    end
    object ADODsComissaoNm_Funcionario: TStringField
      DisplayLabel = 'Vendedor'
      FieldName = 'Nm_Funcionario'
      Size = 50
    end
  end
  object ADODsFindPedido: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'select'#13#10'  Nr_Orcamento'#13#10#13#10'from'#13#10'  Orcamento'#13#10#13#10'where'#13#10'  Cd_Filial = :Cd_Filial and'#13#10'  Cd_Emitente = :Cd_Emitente and'#13#10'  Nr_Pedido_Emitente = :Nr_Pedido_Emitente'
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
        Name = 'Cd_Emitente'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = nil?
      end
      item
        Name = 'Nr_Pedido_Emitente'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = nil?
      end>
    Left = 224
    Top = 424
    object ADODsFindPedidoNr_Orcamento: TIntegerField
      FieldName = 'Nr_Orcamento'
    end
  end
end
