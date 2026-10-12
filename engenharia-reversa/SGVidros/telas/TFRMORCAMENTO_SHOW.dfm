object FrmOrcamento_Show: TFrmOrcamento_Show
  Left = 209
  Top = 185
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Atendimento'
  ClientHeight = 488
  ClientWidth = 728
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
    Height = 488
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 707
    Height = 488
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object Label10: TLabel
      Left = 5
      Top = 141
      Width = 44
      Height = 13
      Caption = 'Parcelas:'
    end
    object Label13: TLabel
      Left = 5
      Top = 1
      Width = 71
      Height = 13
      Caption = 'Base de ICMS:'
    end
    object Label20: TLabel
      Left = 90
      Top = 1
      Width = 41
      Height = 13
      Caption = 'Aliquota:'
    end
    object Label28: TLabel
      Left = 135
      Top = 1
      Width = 29
      Height = 13
      Caption = 'ICMS:'
    end
    object Label15: TLabel
      Left = 219
      Top = 1
      Width = 37
      Height = 13
      Caption = 'Liquido:'
    end
    object Label18: TLabel
      Left = 304
      Top = 1
      Width = 27
      Height = 13
      Caption = 'Frete:'
    end
    object Label29: TLabel
      Left = 5
      Top = 36
      Width = 16
      Height = 13
      Caption = 'IPI:'
    end
    object Label19: TLabel
      Left = 425
      Top = 36
      Width = 54
      Height = 13
      Caption = 'Valor Total:'
    end
    object Label16: TLabel
      Left = 510
      Top = 36
      Width = 55
      Height = 13
      Caption = 'Peso Bruto:'
    end
    object LblMg_Pedido: TLabel
      Left = 633
      Top = 72
      Width = 41
      Height = 13
      Caption = 'Margem:'
    end
    object Label24: TLabel
      Left = 171
      Top = 37
      Width = 72
      Height = 13
      Caption = 'ICM Substituto:'
    end
    object Label25: TLabel
      Left = 389
      Top = 1
      Width = 85
      Height = 13
      Caption = 'Desconto (%/R$):'
    end
    object Label26: TLabel
      Left = 515
      Top = 2
      Width = 88
      Height = 13
      Caption = 'Acr'#233'scimo (%/R$):'
    end
    object Label6: TLabel
      Left = 273
      Top = 72
      Width = 48
      Height = 13
      Caption = 'N'#186' Fatura:'
    end
    object Label7: TLabel
      Left = 328
      Top = 72
      Width = 66
      Height = 13
      Caption = 'Cupom Fiscal:'
    end
    object Label9: TLabel
      Left = 117
      Top = 72
      Width = 59
      Height = 13
      Caption = 'Data Fatura:'
    end
    object Label14: TLabel
      Left = 341
      Top = 37
      Width = 20
      Height = 13
      Caption = 'ISS:'
    end
    object Label30: TLabel
      Left = 256
      Top = 37
      Width = 44
      Height = 13
      Caption = 'Servi'#231'os:'
    end
    object Label31: TLabel
      Left = 593
      Top = 36
      Width = 66
      Height = 13
      Caption = 'Peso L'#237'quido:'
    end
    object Label32: TLabel
      Left = 230
      Top = 72
      Width = 27
      Height = 13
      Caption = 'S'#233'rie:'
    end
    object Label22: TLabel
      Left = 5
      Top = 72
      Width = 62
      Height = 13
      Caption = 'Confirma'#231#227'o:'
      FocusControl = DbEdtDt_Confirmado
    end
    object Label27: TLabel
      Left = 396
      Top = 72
      Width = 39
      Height = 13
      Caption = 'Usu'#225'rio:'
      FocusControl = DbEdtDp_Usuario
    end
    object Label36: TLabel
      Left = 88
      Top = 37
      Width = 44
      Height = 13
      Caption = 'Base ST:'
    end
    object Label37: TLabel
      Left = 496
      Top = 72
      Width = 136
      Height = 13
      Caption = 'Entrega do Conjunto (Cesta):'
    end
    object Label38: TLabel
      Left = 5
      Top = 106
      Width = 71
      Height = 13
      Caption = 'Cancelamento:'
      FocusControl = DbEdtDt_Cancelamento
    end
    object DbGParcelas: TDBGrid
      Left = 6
      Top = 155
      Width = 696
      Height = 146
      DataSource = DsParShow
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
    object EdtVl_BaseICMS: TDBEdit
      Left = 5
      Top = 16
      Width = 80
      Height = 19
      TabStop = False
      AutoSize = False
      Color = clSilver
      Ctl3D = False
      DataField = 'vl_baseicms'
      DataSource = DsOrcaShow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object EdtPr_ICMS: TDBEdit
      Left = 90
      Top = 16
      Width = 40
      Height = 19
      TabStop = False
      AutoSize = False
      Color = clSilver
      Ctl3D = False
      DataField = 'pr_icms'
      DataSource = DsOrcaShow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
    end
    object EdtVl_ICMS: TDBEdit
      Left = 135
      Top = 16
      Width = 80
      Height = 19
      TabStop = False
      AutoSize = False
      Color = clSilver
      Ctl3D = False
      DataField = 'vl_icms'
      DataSource = DsOrcaShow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
    end
    object EdtVl_Pedido: TDBEdit
      Left = 219
      Top = 16
      Width = 80
      Height = 19
      TabStop = False
      AutoSize = False
      Color = clSilver
      DataField = 'vl_pedido'
      DataSource = DsOrcaShow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
    end
    object EdtVl_Pedido_Frete: TDBEdit
      Left = 304
      Top = 16
      Width = 80
      Height = 19
      TabStop = False
      AutoSize = False
      Color = clSilver
      Ctl3D = False
      DataField = 'vl_pedido_frete'
      DataSource = DsOrcaShow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 5
    end
    object EdtVl_IPI: TDBEdit
      Left = 5
      Top = 50
      Width = 80
      Height = 19
      TabStop = False
      AutoSize = False
      Color = clSilver
      Ctl3D = False
      DataField = 'vl_ipi'
      DataSource = DsOrcaShow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 6
    end
    object EdtVl_Pedido_Total: TDBEdit
      Left = 425
      Top = 50
      Width = 80
      Height = 19
      TabStop = False
      AutoSize = False
      Color = clSilver
      DataField = 'Vl_Total'
      DataSource = DsOrcaShow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 7
    end
    object EdtPs_Pedido: TDBEdit
      Left = 510
      Top = 50
      Width = 80
      Height = 19
      TabStop = False
      AutoSize = False
      Color = clSilver
      DataField = 'ps_pedido'
      DataSource = DsOrcaShow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 8
    end
    object EdtMg_Pedido: TDBEdit
      Left = 633
      Top = 86
      Width = 50
      Height = 19
      TabStop = False
      AutoSize = False
      Color = clSilver
      DataField = 'mg_pedido'
      DataSource = DsOrcaShow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 9
    end
    object EdtVl_STB: TDBEdit
      Left = 171
      Top = 50
      Width = 80
      Height = 19
      TabStop = False
      AutoSize = False
      Color = clSilver
      Ctl3D = False
      DataField = 'vl_stb'
      DataSource = DsOrcaShow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 11
    end
    object EdtPr_Desconto: TDBEdit
      Tag = 1
      Left = 389
      Top = 16
      Width = 40
      Height = 19
      TabStop = False
      AutoSize = False
      Color = clSilver
      Ctl3D = False
      DataField = 'pr_desconto'
      DataSource = DsOrcaShow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 13
    end
    object EdtVl_Desconto: TDBEdit
      Tag = 2
      Left = 430
      Top = 16
      Width = 80
      Height = 19
      TabStop = False
      AutoSize = False
      Color = clSilver
      Ctl3D = False
      DataField = 'vl_desconto'
      DataSource = DsOrcaShow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 14
    end
    object EdtPr_Custo: TDBEdit
      Tag = 3
      Left = 515
      Top = 16
      Width = 40
      Height = 19
      TabStop = False
      AutoSize = False
      Color = clSilver
      Ctl3D = False
      DataField = 'pr_custo'
      DataSource = DsOrcaShow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 15
    end
    object EdtVl_Custo: TDBEdit
      Tag = 4
      Left = 556
      Top = 16
      Width = 80
      Height = 19
      TabStop = False
      AutoSize = False
      Color = clSilver
      Ctl3D = False
      DataField = 'vl_custo'
      DataSource = DsOrcaShow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 16
    end
    object DbEdtNr_Fatura: TDBEdit
      Left = 273
      Top = 86
      Width = 50
      Height = 19
      TabStop = False
      AutoSize = False
      Color = clSilver
      Ctl3D = False
      DataField = 'nr_fatura'
      DataSource = DsOrcaShow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 25
    end
    object DbEdtNr_ECF: TDBEdit
      Left = 328
      Top = 86
      Width = 60
      Height = 19
      TabStop = False
      AutoSize = False
      Color = clSilver
      Ctl3D = False
      DataField = 'nr_ecf'
      DataSource = DsOrcaShow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 10
    end
    object DbEdtDt_Fatura: TDBEdit
      Left = 117
      Top = 86
      Width = 110
      Height = 19
      TabStop = False
      AutoSize = False
      Color = clSilver
      Ctl3D = False
      DataField = 'dt_fatura'
      DataSource = DsOrcaShow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 21
    end
    object DbEdtVl_ISS: TDBEdit
      Left = 341
      Top = 50
      Width = 80
      Height = 19
      TabStop = False
      AutoSize = False
      Color = clSilver
      Ctl3D = False
      DataField = 'Vl_ISS'
      DataSource = DsOrcaShow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 12
    end
    object PgCtDetalhes: TPageControl
      Left = 1
      Top = 303
      Width = 701
      Height = 181
      ActivePage = TabSObservacao
      TabOrder = 17
      object TabSGeral: TTabSheet
        Caption = '              Informa'#231#245'es Gerais              '
        object Label1: TLabel
          Left = 4
          Top = 1
          Width = 141
          Height = 13
          Caption = 'N'#250'mero do Pedido do Cliente:'
          FocusControl = DbEdtNr_Pedido_Emitente
        end
        object Label2: TLabel
          Left = 154
          Top = 1
          Width = 144
          Height = 13
          Caption = 'Nome do Contato (Solicitante):'
          FocusControl = DbEdtNm_Contato
        end
        object Label3: TLabel
          Left = 359
          Top = 1
          Width = 104
          Height = 13
          Caption = 'Endere'#231'o de Entrega:'
          FocusControl = DbEdtDs_Titulo
        end
        object Label4: TLabel
          Left = 5
          Top = 37
          Width = 31
          Height = 13
          Caption = 'CFOP:'
          FocusControl = DbEdtDp_Cfop
        end
        object Label5: TLabel
          Left = 318
          Top = 37
          Width = 69
          Height = 13
          Caption = 'Transportador:'
          FocusControl = DbEdtDp_Transportador
        end
        object Label8: TLabel
          Left = 5
          Top = 75
          Width = 27
          Height = 13
          Caption = 'Frete:'
          FocusControl = DbEdtDp_Frete
        end
        object Label11: TLabel
          Left = 124
          Top = 75
          Width = 58
          Height = 13
          Caption = 'Quantidade:'
          FocusControl = DbEdtDs_Quantidade
        end
        object Label12: TLabel
          Left = 245
          Top = 75
          Width = 41
          Height = 13
          Caption = 'Esp'#233'cie:'
          FocusControl = DbEdtDs_Especie
        end
        object Label17: TLabel
          Left = 366
          Top = 75
          Width = 33
          Height = 13
          Caption = 'Marca:'
          FocusControl = DbEdtDs_Marca
        end
        object Label21: TLabel
          Left = 4
          Top = 113
          Width = 85
          Height = 13
          Caption = 'Prazo de Entrega:'
          FocusControl = DbEdtNr_Entrega
        end
        object Label23: TLabel
          Left = 121
          Top = 113
          Width = 104
          Height = 13
          Caption = 'Validade da Proposta:'
          FocusControl = DbEdtNr_Validade
        end
        object DbEdtNr_Pedido_Emitente: TDBEdit
          Left = 4
          Top = 16
          Width = 145
          Height = 19
          TabStop = False
          Color = clSilver
          DataField = 'nr_pedido_emitente'
          DataSource = DsOrcaShow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
        end
        object DbEdtNm_Contato: TDBEdit
          Left = 154
          Top = 16
          Width = 200
          Height = 19
          TabStop = False
          Color = clSilver
          DataField = 'nm_contato'
          DataSource = DsOrcaShow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
        end
        object DbEdtDs_Titulo: TDBEdit
          Left = 359
          Top = 16
          Width = 200
          Height = 19
          TabStop = False
          Color = clSilver
          DataField = 'ds_titulo'
          DataSource = DsOrcaShow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
        end
        object DbEdtDp_Cfop: TDBEdit
          Left = 5
          Top = 52
          Width = 308
          Height = 19
          TabStop = False
          Color = clSilver
          DataField = 'dp_cfop'
          DataSource = DsOrcaShow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 3
        end
        object DbEdtDp_Transportador: TDBEdit
          Left = 318
          Top = 52
          Width = 308
          Height = 19
          TabStop = False
          Color = clSilver
          DataField = 'Dp_Transportador'
          DataSource = DsOrcaShow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 4
        end
        object DbEdtDp_Frete: TDBEdit
          Left = 5
          Top = 90
          Width = 115
          Height = 19
          TabStop = False
          Color = clSilver
          DataField = 'Dp_Frete'
          DataSource = DsOrcaShow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 5
        end
        object DbEdtDs_Quantidade: TDBEdit
          Left = 124
          Top = 90
          Width = 115
          Height = 19
          TabStop = False
          Color = clSilver
          DataField = 'Ds_Quantidade'
          DataSource = DsOrcaShow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 6
        end
        object DbEdtDs_Especie: TDBEdit
          Left = 245
          Top = 90
          Width = 115
          Height = 19
          TabStop = False
          Color = clSilver
          DataField = 'Ds_Especie'
          DataSource = DsOrcaShow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 7
        end
        object DbEdtDs_Marca: TDBEdit
          Left = 366
          Top = 90
          Width = 115
          Height = 19
          TabStop = False
          Color = clSilver
          DataField = 'Ds_Marca'
          DataSource = DsOrcaShow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 8
        end
        object DbEdtNr_Entrega: TDBEdit
          Left = 4
          Top = 128
          Width = 45
          Height = 19
          TabStop = False
          Color = clSilver
          DataField = 'Nr_Entrega'
          DataSource = DsOrcaShow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 9
        end
        object DbEdtDt_Entrega: TDBEdit
          Left = 50
          Top = 128
          Width = 65
          Height = 19
          TabStop = False
          Color = clSilver
          DataField = 'Dt_Entrega'
          DataSource = DsOrcaShow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 10
        end
        object DbEdtNr_Validade: TDBEdit
          Left = 121
          Top = 128
          Width = 45
          Height = 19
          TabStop = False
          Color = clSilver
          DataField = 'Nr_Validade'
          DataSource = DsOrcaShow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 11
        end
      end
      object TabSObservacao: TTabSheet
        Caption = '             Observa'#231#245'es              '
        ImageIndex = 1
        object Label33: TLabel
          Left = 3
          Top = 0
          Width = 136
          Height = 13
          Caption = 'O&bserva'#231#245'es do Or'#231'amento:'
        end
        object Label34: TLabel
          Left = 348
          Top = 0
          Width = 107
          Height = 13
          Caption = 'Observa'#231#245'es da &Nota:'
        end
        object DbMMm_Observacao: TDBMemo
          Left = 3
          Top = 15
          Width = 340
          Height = 134
          TabStop = False
          Color = clSilver
          DataField = 'mm_observacao'
          DataSource = DsOrcaShow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          ScrollBars = ssVertical
          TabOrder = 0
        end
        object DbMMmNota: TDBMemo
          Left = 348
          Top = 15
          Width = 340
          Height = 134
          TabStop = False
          Color = clSilver
          DataField = 'mm_nota'
          DataSource = DsOrcaShow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          ScrollBars = ssVertical
          TabOrder = 1
        end
      end
      object TabSComissao: TTabSheet
        Caption = '                Comiss'#227'o                '
        ImageIndex = 2
        object Label35: TLabel
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
      end
      object TabSJuncao: TTabSheet
        Caption = '   Or'#231'amentos da Jun'#231#227'o   '
        ImageIndex = 3
        object LblJuncao: TLabel
          Left = 5
          Top = 2
          Width = 113
          Height = 13
          Caption = 'Or'#231'amentos da Jun'#231#227'o:'
        end
        object DbGJuncao: TDBGrid
          Left = 5
          Top = 17
          Width = 685
          Height = 134
          DataSource = DsJuncao
          FixedColor = clSilver
          Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDblClick = DbGJuncaoDblClick
          OnEnter = DbGParcelasEnter
          OnExit = DbGParcelasExit
          OnKeyPress = DbGJuncaoKeyPress
          Columns = <
            item
              Expanded = False
              FieldName = 'Nr_Orcamento'
              Title.Alignment = taRightJustify
              Width = 61
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Nm_Emitente'
              Width = 297
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Nm_Funcionario'
              Width = 233
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Vl_Orcamento'
              Title.Alignment = taRightJustify
              Width = 75
              Visible = True
            end>
        end
      end
    end
    object DbEdtVl_Servico: TDBEdit
      Left = 256
      Top = 50
      Width = 80
      Height = 19
      TabStop = False
      AutoSize = False
      Color = clSilver
      Ctl3D = False
      DataField = 'Vl_Servico'
      DataSource = DsOrcaShow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 18
    end
    object DbEdtPs_Liquido: TDBEdit
      Left = 593
      Top = 50
      Width = 80
      Height = 19
      TabStop = False
      AutoSize = False
      Color = clSilver
      DataField = 'Ps_Liquido'
      DataSource = DsOrcaShow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 19
    end
    object DbEdtCd_Serie: TDBEdit
      Left = 230
      Top = 86
      Width = 40
      Height = 19
      TabStop = False
      AutoSize = False
      Color = clSilver
      Ctl3D = False
      DataField = 'cd_serie'
      DataSource = DsOrcaShow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 23
    end
    object DbEdtDt_Confirmado: TDBEdit
      Left = 5
      Top = 86
      Width = 110
      Height = 19
      TabStop = False
      Color = clSilver
      DataField = 'Dt_Confirmado'
      DataSource = DsOrcaShow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 20
    end
    object DbEdtDp_Usuario: TDBEdit
      Left = 396
      Top = 86
      Width = 95
      Height = 19
      TabStop = False
      Color = clSilver
      DataField = 'Dp_Usuario'
      DataSource = DsOrcaShow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 22
    end
    object DbEdtVl_BaseST: TDBEdit
      Left = 88
      Top = 50
      Width = 80
      Height = 19
      TabStop = False
      AutoSize = False
      Color = clSilver
      Ctl3D = False
      DataField = 'Vl_BaseST'
      DataSource = DsOrcaShow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 24
    end
    object DbEdtDt_Conjunto: TDBEdit
      Left = 496
      Top = 86
      Width = 65
      Height = 19
      TabStop = False
      AutoSize = False
      Color = clSilver
      DataField = 'Dt_Conjunto'
      DataSource = DsOrcaShow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 26
    end
    object DbEdtDt_Cancelamento: TDBEdit
      Left = 5
      Top = 120
      Width = 110
      Height = 19
      TabStop = False
      Color = clSilver
      DataField = 'Dt_Cancelamento'
      DataSource = DsOrcaShow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 27
    end
  end
  object ADODsOrcaShow: TADODataSet
    Active = True
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterOpen = ADODsOrcaShowAfterOpen
    OnCalcFields = ADODsOrcaShowCalcFields
    CommandText = 'select'#13#10'  O.Cd_Filial, O.Nr_Orcamento, O.Dt_Emissao, O.St_Orcamento,'#13#10'  O.Tp_Carga, O.Cd_Emitente, E.Nm_Emitente, O.Cd_Funcionario, F.Nm_Funcionario,'#13#10'  O.Fl_FormaPagto, O.Nr_Endereco, EE.Ds_Titulo, O.Vl_Coleta_Frete, O.Ps_Coleta,'#13#10'  O.Vl_Coleta, O.Mg_Coleta, O.Vl_Pedido_Frete, O.Ps_Pedido, O.Vl_Pedido,'#13#10'  O.Mg_Pedido, O.Mm_Observacao, O.Cd_Tabela, O.Dt_Fatura, O.Nr_Fatura,'#13#10'  O.Cd_Serie, EC.Cd_Credito, EC.Vl_Limite_Credito, O.Vl_BaseICMS, O.Pr_ICMS,'#13#10'  O.Vl_ICMS, O.Vl_IPI, O.Vl_STB, R.Nr_Receber, O.Nr_ECF, E.Fl_Exportador,'#13#10'  Cast( EC.Cd_Emitente as VarChar( 5 ) ) + '''' - '''' + EC.Nm_Emitente as Dp_Credito,'#13#10'  C.Sg_Estado, E.Fl_Contribuinte, O.Nr_Pedido_Emitente, O.Nm_Contato,'#13#10'  O.Pr_Desconto, O.Vl_Desconto, O.Pr_Custo, O.Vl_Custo, E.Ds_EMail,'#13#10'  O.Mm_Nota, O.Cd_CFOP + '''' - '''' + CF.Ds_CFOP as Dp_CFOP, O.Vl_ISS,'#13#10'  Cast( O.Cd_Transportador as VarChar( 6 ) ) + '''' - '''' + T.NM_Transportador as Dp_Transportador,'#13#10'  O.Fl_Frete, O.Ds_Quantidade, O.Ds_Especie, O.Ds_Marca, O.Nr_Entrega, '#13#10'  O.Nr_Validade, O.Dt_Confirmado, O.Cd_Usuario, O.Vl_Servico, O.Ps_Liquido,'#13#10'  O.Vl_BaseST, O.Dt_Conjunto, O.Dt_Cancelamento'#13#10#13#10'from'#13#10'  Orcamento O'#13#10#13#10'inner join'#13#10'  Funcionario F'#13#10'on'#13#10'  F.Cd_Funcionario = O.Cd_Funcionario'#13#10#13#10'left join'#13#10'  Emitente E'#13#10'on'#13#10'  E.Cd_Emitente = O.Cd_Emitente'#13#10#13#10'left join'#13#10'  Emitente_Endereco EE'#13#10'on'#13#10'  EE.Cd_Emitente = O.Cd_Emitente and'#13#10'  EE.Nr_Endereco = O.Nr_Endereco'#13#10#13#10'left join'#13#10'  Cidade C'#13#10'on'#13#10'  C.Cd_Cidade = EE.Cd_Cidade'#13#10#13#10'left join'#13#10'  Emitente EC'#13#10'on'#13#10'  EC.Cd_Emitente = E.Cd_Credito'#13#10#13#10'left join'#13#10'  Receber R'#13#10'on'#13#10'  R.Nr_Orcamento = O.Nr_Orcamento and'#13#10'  R.St_Receber   <> ''''4'''#13#10#13#10'left join'#13#10'  CFOP CF'#13#10'on'#13#10'  CF.Cd_CFOP = O.Cd_CFOP'#13#10#13#10'left join'#13#10'  Transportador T'#13#10'on'#13#10'  T.Cd_Transportador = O.Cd_Transportador'#13#10#13#10'where'#13#10'  O.Cd_Filial    = :Cd_Filial and'#13#10'  O.Nr_Orcamento = :Nr_Orcamento'
    Parameters = <
      item
        Name = 'Cd_Filial'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = 1
      end
      item
        Name = 'Nr_Orcamento'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 170
      end>
    Left = 571
    Top = 386
    object ADODsOrcaShowcd_filial: TSmallintField
      FieldName = 'cd_filial'
    end
    object ADODsOrcaShownr_orcamento: TIntegerField
      FieldName = 'nr_orcamento'
    end
    object ADODsOrcaShowdt_emissao: TDateTimeField
      FieldName = 'dt_emissao'
    end
    object ADODsOrcaShowst_orcamento: TStringField
      FieldName = 'st_orcamento'
      FixedChar = True
      Size = 1
    end
    object ADODsOrcaShowDp_Situacao: TStringField
      FieldKind = fkCalculated
      FieldName = 'Dp_Situacao'
      Calculated = True
    end
    object ADODsOrcaShowtp_carga: TStringField
      FieldName = 'tp_carga'
      FixedChar = True
      Size = 1
    end
    object ADODsOrcaShowcd_emitente: TIntegerField
      FieldName = 'cd_emitente'
    end
    object ADODsOrcaShownm_emitente: TStringField
      FieldName = 'nm_emitente'
      Size = 50
    end
    object ADODsOrcaShowcd_funcionario: TSmallintField
      FieldName = 'cd_funcionario'
    end
    object ADODsOrcaShownm_funcionario: TStringField
      FieldName = 'nm_funcionario'
      Size = 50
    end
    object ADODsOrcaShowfl_formapagto: TStringField
      FieldName = 'fl_formapagto'
      FixedChar = True
      Size = 1
    end
    object ADODsOrcaShownr_endereco: TSmallintField
      FieldName = 'nr_endereco'
    end
    object ADODsOrcaShowds_titulo: TStringField
      FieldName = 'ds_titulo'
      Size = 50
    end
    object ADODsOrcaShowvl_coleta_frete: TBCDField
      FieldName = 'vl_coleta_frete'
      DisplayFormat = '#,##0.00'
      Precision = 12
      Size = 2
    end
    object ADODsOrcaShowps_coleta: TBCDField
      FieldName = 'ps_coleta'
      Precision = 12
      Size = 3
    end
    object ADODsOrcaShowvl_coleta: TBCDField
      FieldName = 'vl_coleta'
      DisplayFormat = '#,##0.00'
      Precision = 12
      Size = 2
    end
    object ADODsOrcaShowmg_coleta: TBCDField
      FieldName = 'mg_coleta'
      DisplayFormat = '##0.00'
      Precision = 12
      Size = 2
    end
    object ADODsOrcaShowvl_pedido_frete: TBCDField
      FieldName = 'vl_pedido_frete'
      DisplayFormat = '#,##0.00'
      Precision = 12
      Size = 2
    end
    object ADODsOrcaShowps_pedido: TBCDField
      FieldName = 'ps_pedido'
      Precision = 12
      Size = 3
    end
    object ADODsOrcaShowvl_pedido: TBCDField
      FieldName = 'vl_pedido'
      DisplayFormat = '#,##0.00'
      Precision = 12
      Size = 2
    end
    object ADODsOrcaShowmg_pedido: TBCDField
      FieldName = 'mg_pedido'
      DisplayFormat = '##0.00'
      Precision = 12
      Size = 2
    end
    object ADODsOrcaShowmm_observacao: TMemoField
      FieldName = 'mm_observacao'
      BlobType = ftMemo
    end
    object ADODsOrcaShowcd_tabela: TStringField
      FieldName = 'cd_tabela'
      Size = 10
    end
    object ADODsOrcaShowdt_fatura: TDateTimeField
      FieldName = 'dt_fatura'
      DisplayFormat = 'dd/mm/yyyy HH:MM'
    end
    object ADODsOrcaShownr_fatura: TIntegerField
      FieldName = 'nr_fatura'
    end
    object ADODsOrcaShowcd_serie: TStringField
      FieldName = 'cd_serie'
      Size = 3
    end
    object ADODsOrcaShowcd_credito: TIntegerField
      FieldName = 'cd_credito'
    end
    object ADODsOrcaShowvl_limite_credito: TBCDField
      FieldName = 'vl_limite_credito'
      DisplayFormat = '#,##0.00'
      Precision = 12
      Size = 2
    end
    object ADODsOrcaShowvl_baseicms: TBCDField
      FieldName = 'vl_baseicms'
      DisplayFormat = '#,##0.00'
      Precision = 12
      Size = 2
    end
    object ADODsOrcaShowpr_icms: TBCDField
      FieldName = 'pr_icms'
      DisplayFormat = '##0.00'
      Precision = 12
      Size = 2
    end
    object ADODsOrcaShowvl_icms: TBCDField
      FieldName = 'vl_icms'
      DisplayFormat = '#,##0.00'
      Precision = 12
      Size = 2
    end
    object ADODsOrcaShowvl_ipi: TBCDField
      FieldName = 'vl_ipi'
      DisplayFormat = '#,##0.00'
      Precision = 12
      Size = 2
    end
    object ADODsOrcaShownr_receber: TIntegerField
      FieldName = 'nr_receber'
    end
    object ADODsOrcaShownr_ecf: TIntegerField
      FieldName = 'nr_ecf'
    end
    object ADODsOrcaShowdp_credito: TStringField
      FieldName = 'dp_credito'
      Size = 254
    end
    object ADODsOrcaShowfl_exportador: TStringField
      FieldName = 'fl_exportador'
      FixedChar = True
      Size = 1
    end
    object ADODsOrcaShowsg_estado: TStringField
      FieldName = 'sg_estado'
      FixedChar = True
      Size = 2
    end
    object ADODsOrcaShowfl_contribuinte: TStringField
      FieldName = 'fl_contribuinte'
      FixedChar = True
      Size = 1
    end
    object ADODsOrcaShowvl_stb: TBCDField
      FieldName = 'vl_stb'
      DisplayFormat = '#,##0.00'
      Precision = 12
      Size = 2
    end
    object ADODsOrcaShownr_pedido_emitente: TStringField
      FieldName = 'nr_pedido_emitente'
      Size = 30
    end
    object ADODsOrcaShownm_contato: TStringField
      FieldName = 'nm_contato'
      Size = 50
    end
    object ADODsOrcaShowpr_desconto: TBCDField
      FieldName = 'pr_desconto'
      DisplayFormat = '##0.00'
      Precision = 7
      Size = 2
    end
    object ADODsOrcaShowvl_desconto: TBCDField
      FieldName = 'vl_desconto'
      DisplayFormat = '#,##0.00'
      Precision = 12
      Size = 2
    end
    object ADODsOrcaShowpr_custo: TBCDField
      FieldName = 'pr_custo'
      DisplayFormat = '##0.00'
      Precision = 7
      Size = 2
    end
    object ADODsOrcaShowvl_custo: TBCDField
      FieldName = 'vl_custo'
      DisplayFormat = '#,##0.00'
      Precision = 12
      Size = 2
    end
    object ADODsOrcaShowVl_Total: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Vl_Total'
      DisplayFormat = '#,##0.00'
      Calculated = True
    end
    object ADODsOrcaShowds_email: TStringField
      FieldName = 'ds_email'
      Size = 100
    end
    object ADODsOrcaShowmm_nota: TMemoField
      FieldName = 'mm_nota'
      BlobType = ftMemo
    end
    object ADODsOrcaShowdp_cfop: TStringField
      FieldName = 'dp_cfop'
      Size = 8190
    end
    object ADODsOrcaShowVl_ISS: TBCDField
      FieldName = 'Vl_ISS'
      DisplayFormat = '#,##0.00'
      Precision = 12
      Size = 2
    end
    object ADODsOrcaShowDp_Transportador: TStringField
      FieldName = 'Dp_Transportador'
      ReadOnly = True
      Size = 59
    end
    object ADODsOrcaShowFl_Frete: TStringField
      FieldName = 'Fl_Frete'
      FixedChar = True
      Size = 1
    end
    object ADODsOrcaShowDs_Quantidade: TStringField
      FieldName = 'Ds_Quantidade'
    end
    object ADODsOrcaShowDs_Especie: TStringField
      FieldName = 'Ds_Especie'
    end
    object ADODsOrcaShowDs_Marca: TStringField
      FieldName = 'Ds_Marca'
    end
    object ADODsOrcaShowDp_Frete: TStringField
      FieldKind = fkCalculated
      FieldName = 'Dp_Frete'
      Size = 16
      Calculated = True
    end
    object ADODsOrcaShowNr_Entrega: TSmallintField
      FieldName = 'Nr_Entrega'
    end
    object ADODsOrcaShowDt_Entrega: TDateField
      FieldKind = fkCalculated
      FieldName = 'Dt_Entrega'
      Calculated = True
    end
    object ADODsOrcaShowNr_Validade: TSmallintField
      FieldName = 'Nr_Validade'
    end
    object ADODsOrcaShowDt_Confirmado: TDateTimeField
      FieldName = 'Dt_Confirmado'
      DisplayFormat = 'dd/mm/yyyy HH:MM'
    end
    object ADODsOrcaShowDp_Usuario: TStringField
      FieldKind = fkCalculated
      FieldName = 'Dp_Usuario'
      Size = 15
      Calculated = True
    end
    object ADODsOrcaShowCd_Usuario: TStringField
      FieldName = 'Cd_Usuario'
      Size = 15
    end
    object ADODsOrcaShowVl_Servico: TBCDField
      FieldName = 'Vl_Servico'
      DisplayFormat = '#,##0.00'
      Precision = 12
      Size = 3
    end
    object ADODsOrcaShowPs_Liquido: TBCDField
      FieldName = 'Ps_Liquido'
      Precision = 12
      Size = 3
    end
    object ADODsOrcaShowVl_BaseST: TBCDField
      FieldName = 'Vl_BaseST'
      DisplayFormat = '#,##0.00'
      Precision = 12
      Size = 3
    end
    object ADODsOrcaShowDt_Conjunto: TDateTimeField
      FieldName = 'Dt_Conjunto'
    end
    object ADODsOrcaShowDt_Cancelamento: TDateTimeField
      FieldName = 'Dt_Cancelamento'
      DisplayFormat = 'dd/mm/yyyy hh:mm'
    end
  end
  object DsOrcaShow: TDataSource
    DataSet = ADODsOrcaShow
    Left = 541
    Top = 386
  end
  object ADODsParShow: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    OnCalcFields = ADODsParShowCalcFields
    CommandText = 'select'#13#10'  OP.nr_prazo, OP.cd_portador, P.Nm_Portador, OP.dt_vencimento, OP.vl_parcela, OP.cd_banco,'#13#10'  OP.cd_agencia, OP.nr_conta, OP.nr_cheque, OP.dt_emissao, OP.nr_documento,'#13#10'  OP.nm_cliente, OP.nr_telefone, OP.fl_parcela, OP.Nr_Parcela as Nr_ParInterna'#13#10#13#10'from'#13#10'  Orcamento_Parcela OP'#13#10'  '#13#10'left join'#13#10'  Portador P'#13#10'on'#13#10'  P.Cd_Portador = OP.Cd_Portador'#13#10#13#10'where'#13#10'  OP.Cd_Filial    = :Cd_Filial and'#13#10'  OP.Nr_Orcamento = :Nr_Orcamento'#13#10'order by'#13#10'  OP.Nr_Prazo, OP.Nr_Parcela'
    Parameters = <
      item
        Name = 'Cd_Filial'
        DataType = ftSmallint
        Size = -1
        Value = nil?
      end
      item
        Name = 'Nr_Orcamento'
        DataType = ftInteger
        Size = -1
        Value = nil?
      end>
    Left = 630
    Top = 386
    object ADODsParShowDp_Vencimento: TStringField
      DisplayLabel = 'Vencimento/Prazo'
      FieldKind = fkCalculated
      FieldName = 'Dp_Vencimento'
      Size = 30
      Calculated = True
    end
    object ADODsParShownr_prazo: TSmallintField
      FieldName = 'nr_prazo'
    end
    object ADODsParShowcd_portador: TSmallintField
      FieldName = 'cd_portador'
    end
    object ADODsParShowdt_vencimento: TDateTimeField
      FieldName = 'dt_vencimento'
    end
    object ADODsParShowvl_parcela: TBCDField
      DisplayLabel = 'Valor'
      FieldName = 'vl_parcela'
      DisplayFormat = '##,##0.00'
      Precision = 12
      Size = 2
    end
    object ADODsParShowcd_banco: TStringField
      DisplayLabel = 'Banco'
      FieldName = 'cd_banco'
      Size = 3
    end
    object ADODsParShowcd_agencia: TStringField
      DisplayLabel = 'Ag'#234'ncia'
      FieldName = 'cd_agencia'
      Size = 4
    end
    object ADODsParShownr_conta: TStringField
      DisplayLabel = 'Conta'
      FieldName = 'nr_conta'
      Size = 10
    end
    object ADODsParShownr_cheque: TIntegerField
      DisplayLabel = 'Cheque'
      FieldName = 'nr_cheque'
    end
    object ADODsParShowdt_emissao: TDateTimeField
      FieldName = 'dt_emissao'
    end
    object ADODsParShownr_documento: TStringField
      FieldName = 'nr_documento'
      Size = 14
    end
    object ADODsParShownm_cliente: TStringField
      FieldName = 'nm_cliente'
      Size = 50
    end
    object ADODsParShownr_telefone: TStringField
      FieldName = 'nr_telefone'
      EditMask = '(##) ####-####;0; '
      Size = 10
    end
    object ADODsParShowfl_parcela: TStringField
      FieldName = 'fl_parcela'
      FixedChar = True
      Size = 1
    end
    object ADODsParShowDp_Parcela: TStringField
      DisplayLabel = 'Esp'#233'cie'
      FieldKind = fkCalculated
      FieldName = 'Dp_Parcela'
      Calculated = True
    end
    object ADODsParShownm_portador: TStringField
      DisplayLabel = 'Portador'
      FieldName = 'nm_portador'
      Size = 50
    end
    object ADODsParShowNr_ParInterna: TSmallintField
      FieldName = 'Nr_ParInterna'
    end
  end
  object DsParShow: TDataSource
    DataSet = ADODsParShow
    Left = 600
    Top = 386
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
    Left = 691
    Top = 387
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
  object DsComissao: TDataSource
    DataSet = ADODsComissao
    Left = 661
    Top = 387
  end
  object DsJuncao: TDataSource
    DataSet = ADODsJuncao
    Left = 480
    Top = 385
  end
  object ADODsJuncao: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'select'#13#10'  O.Cd_Filial, O.Nr_Orcamento, O.Cd_Emitente, OT.Nm_Emitente, OT.Nm_Funcionario,'#13#10'  OT.Vl_Orcamento'#13#10#13#10'from'#13#10'  Orcamento O'#13#10#13#10'inner join'#13#10'  Orcamento_Total OT'#13#10'on'#13#10'  OT.Cd_Filial    = O.Cd_Filial and'#13#10'  OT.Nr_Orcamento = O.Nr_Orcamento'#13#10#13#10'where'#13#10'  O.Cd_Filial = :Cd_Filial and'#13#10'  O.Nr_Juncao = :Nr_Orcamento'#13#10#13#10'order by'#13#10'  O.Cd_Filial, O.Nr_Orcamento'
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
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = nil?
      end>
    Left = 511
    Top = 387
    object ADODsJuncaoCd_Filial: TSmallintField
      FieldName = 'Cd_Filial'
    end
    object ADODsJuncaoNr_Orcamento: TIntegerField
      DisplayLabel = 'Or'#231'amento'
      FieldName = 'Nr_Orcamento'
    end
    object ADODsJuncaoCd_Emitente: TIntegerField
      FieldName = 'Cd_Emitente'
    end
    object ADODsJuncaoNm_Emitente: TStringField
      DisplayLabel = 'Cliente'
      FieldName = 'Nm_Emitente'
      Size = 50
    end
    object ADODsJuncaoNm_Funcionario: TStringField
      DisplayLabel = 'Vendedor'
      FieldName = 'Nm_Funcionario'
      Size = 50
    end
    object ADODsJuncaoVl_Orcamento: TBCDField
      DisplayLabel = 'Valor'
      FieldName = 'Vl_Orcamento'
      ReadOnly = True
      DisplayFormat = '#,##0.00'
      Precision = 28
      Size = 9
    end
  end
end
