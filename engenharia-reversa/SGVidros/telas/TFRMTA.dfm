object FrmTA: TFrmTA
  Left = 86
  Top = 150
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Tele-Atendimento'
  ClientHeight = 625
  ClientWidth = 1009
  Color = clWhite
  Ctl3D = False
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poDefault
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
    Height = 625
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 988
    Height = 625
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object Label2: TLabel
      Left = 4
      Top = 29
      Width = 41
      Height = 13
      Caption = 'Per'#237'odo:'
    end
    object Label15: TLabel
      Left = 189
      Top = 29
      Width = 73
      Height = 13
      Caption = 'Hora (Per'#237'odo):'
    end
    object Label4: TLabel
      Left = 263
      Top = 29
      Width = 55
      Height = 13
      Caption = 'Ocorr'#234'ncia:'
    end
    object Label3: TLabel
      Left = 554
      Top = 29
      Width = 45
      Height = 13
      Caption = 'Situa'#231#227'o:'
    end
    object Label5: TLabel
      Left = 633
      Top = 29
      Width = 39
      Height = 13
      Caption = 'Usu'#225'rio:'
    end
    object SbUsuario: TSpeedButton
      Left = 732
      Top = 43
      Width = 21
      Height = 19
      Hint = 'Seleciona Usu'#225'rio'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbUsuarioClick
    end
    object SbOpen: TSpeedButton
      Left = 904
      Top = 78
      Width = 80
      Height = 20
      Hint = 'Visualizar'
      Caption = '&Selecionar'
      Flat = True
      Glyph.Data = {binary 250 bytes}
      ParentShowHint = False
      ShowHint = True
      OnClick = SbOpenClick
    end
    object BvlSeparator_2: TBevel
      Left = 2
      Top = 99
      Width = 980
      Height = 5
      Shape = bsTopLine
    end
    object Label1: TLabel
      Left = 4
      Top = 63
      Width = 36
      Height = 13
      Caption = 'Cidade:'
    end
    object SbCidade: TSpeedButton
      Left = 54
      Top = 77
      Width = 23
      Height = 19
      Hint = 'Seleciona Cidade'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbCidadeClick
    end
    object Label10: TLabel
      Left = 688
      Top = 29
      Width = 109
      Height = 13
      Caption = 'N'#227'o aciono a "X" dias:'
    end
    object Label19: TLabel
      Left = 588
      Top = 63
      Width = 91
      Height = 13
      Caption = 'Grupo de Emitente:'
    end
    object SbGrupo: TSpeedButton
      Left = 628
      Top = 77
      Width = 23
      Height = 19
      Hint = 'Consulta Grupo de Emitente'
      Flat = True
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
      OnClick = SbGrupoClick
    end
    object Label17: TLabel
      Left = 301
      Top = 62
      Width = 26
      Height = 13
      Caption = 'Rota:'
    end
    object SbRota: TSpeedButton
      Tag = 1
      Left = 342
      Top = 77
      Width = 21
      Height = 19
      Hint = 'Consulta de Rota'
      Flat = True
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
      OnClick = SbRotaClick
    end
    object Label18: TLabel
      Left = 416
      Top = 264
      Width = 38
      Height = 13
      Caption = 'Label18'
    end
    object Label20: TLabel
      Left = 4
      Top = 99
      Width = 40
      Height = 13
      Caption = '&Clientes:'
      FocusControl = DbGContato
    end
    object Label22: TLabel
      Left = 802
      Top = 29
      Width = 34
      Height = 13
      Caption = 'Ordem:'
    end
    object LblUltimos: TLabel
      Left = 897
      Top = 28
      Width = 89
      Height = 13
      Caption = #218'ltimos X Contatos'
      OnDblClick = LblUltimosDblClick
    end
    object DbGContato: TDBGrid
      Left = 4
      Top = 113
      Width = 980
      Height = 238
      DataSource = DsContato
      FixedColor = clSilver
      Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      PopupMenu = PopMenContato
      ReadOnly = True
      TabOrder = 16
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDrawColumnCell = DbGContatoDrawColumnCell
      OnDblClick = DbGContatoDblClick
      OnEnter = DbGContatoEnter
      OnExit = DbGContatoExit
      OnKeyPress = DbGContatoKeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'Dp_Emitente'
          Width = 342
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nm_Fantasia'
          Width = 152
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nm_Contato'
          Width = 163
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dt_novocontato'
          Title.Alignment = taCenter
          Width = 68
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Dp_Hora'
          Width = 31
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Dp_Telefone'
          Width = 202
          Visible = True
        end>
    end
    object EdtDt_Start: TDateEdit
      Left = 4
      Top = 43
      Width = 89
      Height = 19
      CheckOnExit = True
      DialogTitle = 'Selecione a Data'
      GlyphKind = gkCustom
      Glyph.Data = {binary 1606 bytes}
      NumGlyphs = 1
      StartOfWeek = Sun
      TabOrder = 0
    end
    object EdtDt_End: TDateEdit
      Left = 96
      Top = 43
      Width = 90
      Height = 19
      CheckOnExit = True
      DialogTitle = 'Selecione a Data'
      GlyphKind = gkCustom
      Glyph.Data = {binary 1606 bytes}
      NumGlyphs = 1
      StartOfWeek = Sun
      TabOrder = 1
    end
    object EdtHr_Start: TMaskEdit
      Left = 189
      Top = 43
      Width = 32
      Height = 19
      AutoSize = False
      EditMask = '##:##;0; '
      MaxLength = 5
      TabOrder = 2
    end
    object EdtHr_End: TMaskEdit
      Left = 225
      Top = 43
      Width = 35
      Height = 19
      AutoSize = False
      EditMask = '##:##;0; '
      MaxLength = 5
      TabOrder = 3
    end
    object CbOcorrencia: TComboBox
      Left = 263
      Top = 43
      Width = 289
      Height = 21
      Style = csDropDownList
      DropDownCount = 30
      ItemHeight = 13
      TabOrder = 4
    end
    object CbSituacao: TComboBox
      Left = 554
      Top = 43
      Width = 77
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 5
      Items.Strings = (
        'Aberto'
        'Encerrado'
        'Ambos'
      )
    end
    object EdtCd_Usuario: TEdit
      Left = 633
      Top = 43
      Width = 99
      Height = 19
      CharCase = ecUpperCase
      MaxLength = 15
      TabOrder = 6
      OnKeyDown = EdtCd_EmitenteKeyDown
    end
    object PnlToolMain: TPanel
      Left = 1
      Top = 1
      Width = 986
      Height = 26
      Align = alTop
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 18
      object PnlDatabase: TPanel
        Left = 0
        Top = 0
        Width = 986
        Height = 26
        Align = alClient
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 0
        object ActToolBDatabase: TActionToolBar
          Left = 0
          Top = 0
          Width = 986
          Height = 26
          Cursor = crHandPoint
          ActionManager = ActManCadastro
          Caption = 'ActToolBDatabase'
          ColorMap.HighlightColor = clWhite
          ColorMap.BtnSelectedColor = clBtnFace
          ColorMap.UnusedColor = clWhite
          ParentShowHint = False
          ShowHint = True
          Spacing = 0
        end
      end
    end
    object PgCContatos: TPageControl
      Left = 0
      Top = 352
      Width = 984
      Height = 270
      ActivePage = TabSMS
      TabOrder = 17
      object TabSContatos: TTabSheet
        Caption = '          Contatos (&Acionamentos)          '
        ImageIndex = 1
        object DbGTodosContatos: TDBGrid
          Left = 1
          Top = 2
          Width = 566
          Height = 239
          DataSource = DsTodosContatos
          FixedColor = clSilver
          Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDblClick = DbGTodosContatosDblClick
          OnEnter = DbGContatoEnter
          OnExit = DbGContatoExit
          Columns = <
            item
              Expanded = False
              FieldName = 'Nm_Contato'
              Width = 86
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Dt_Contato'
              Title.Alignment = taCenter
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'dt_novocontato'
              Width = 70
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Dp_Hora'
              Width = 33
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Ds_Ocorrencia'
              Width = 180
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'Dp_Usuario'
              Title.Alignment = taCenter
              Width = 75
              Visible = True
            end>
        end
        object DbMObservacao: TDBMemo
          Left = 573
          Top = 2
          Width = 401
          Height = 239
          DataField = 'mm_observacao'
          DataSource = DsTodosContatos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ScrollBars = ssVertical
          TabOrder = 1
          OnDblClick = DbMObservacaoDblClick
        end
      end
      object TabSOrcamento: TTabSheet
        Caption = '             &Or'#231'amentos             '
        object DbTxtCondPagto: TDBText
          Left = 557
          Top = 213
          Width = 346
          Height = 13
          DataField = 'ds_condicao'
          DataSource = DsOrcamento
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DbTInfoPosicao: TDBText
          Left = 2
          Top = 213
          Width = 408
          Height = 25
          DataField = 'Dp_Confirmacao'
          DataSource = DsItens
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          WordWrap = True
        end
        object Label6: TLabel
          Left = 452
          Top = 213
          Width = 104
          Height = 13
          Caption = 'Forma de Pagamento:'
        end
        object DbTxtNm_Laboratorio: TDBText
          Left = 511
          Top = 227
          Width = 392
          Height = 13
          DataField = 'nm_laboratorio'
          DataSource = DsItens
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label36: TLabel
          Left = 452
          Top = 227
          Width = 53
          Height = 13
          Caption = 'Fabricante:'
        end
        object DbGOrcamento: TDBGrid
          Left = 0
          Top = 3
          Width = 410
          Height = 207
          DataSource = DsOrcamento
          FixedColor = clSilver
          Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDrawColumnCell = DbGOrcamentoDrawColumnCell
          OnDblClick = DbGOrcamentoDblClick
          OnEnter = DbGContatoEnter
          OnExit = DbGContatoExit
          OnKeyPress = DbGOrcamentoKeyPress
          Columns = <
            item
              Expanded = False
              FieldName = 'nr_orcamento'
              Title.Alignment = taCenter
              Width = 55
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'nm_funcionario'
              Width = 108
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'dt_fatura'
              Title.Alignment = taCenter
              Width = 76
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'dt_saida_representada'
              Width = 83
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'vl_orcamento'
              Title.Alignment = taRightJustify
              Width = 65
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Nm_Laboratorio'
              Visible = False
            end>
        end
        object DbGItens: TDBGrid
          Left = 411
          Top = 2
          Width = 562
          Height = 208
          DataSource = DsItens
          FixedColor = clSilver
          Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnEnter = DbGContatoEnter
          OnExit = DbGContatoExit
          Columns = <
            item
              Expanded = False
              FieldName = 'nm_produto'
              Width = 345
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'qt_item'
              Title.Alignment = taRightJustify
              Width = 65
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'vl_unitario'
              Title.Alignment = taRightJustify
              Width = 65
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'vl_total'
              Title.Alignment = taRightJustify
              Width = 65
              Visible = True
            end>
        end
      end
      object TabSProdutos: TTabSheet
        Caption = '   An'#225'lise de Vendas   '
        ImageIndex = 5
        object Label39: TLabel
          Left = 3
          Top = 3
          Width = 157
          Height = 13
          Caption = 'N'#227'o compra a mais de " X " dias:'
        end
        object Label40: TLabel
          Left = 161
          Top = 3
          Width = 53
          Height = 13
          Caption = 'Fabricante:'
        end
        object SbLaboratorio: TSpeedButton
          Left = 201
          Top = 17
          Width = 23
          Height = 19
          Hint = 'Consulta de Fabricante'
          Flat = True
          Glyph.Data = {binary 2066 bytes}
          NumGlyphs = 2
          OnClick = SbLaboratorioClick
        end
        object SbAnalisar: TSpeedButton
          Left = 532
          Top = 16
          Width = 80
          Height = 20
          Hint = 'An'#225'lisar'
          Caption = '&An'#225'lisar'
          Flat = True
          Glyph.Data = {binary 250 bytes}
          ParentShowHint = False
          ShowHint = True
          OnClick = SbAnalisarClick
        end
        object LblNaoCompra: TLabel
          Left = 47
          Top = 19
          Width = 69
          Height = 13
          Caption = '21/02/2018'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object LblClienteAnalise: TLabel
          Left = 616
          Top = 19
          Width = 99
          Height = 13
          Caption = 'Cliente a analisar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object EdtNr_DiasProduto: TCurrencyEdit
          Left = 4
          Top = 16
          Width = 40
          Height = 19
          Margins.Left = 2
          Margins.Top = 2
          AutoSize = False
          DecimalPlaces = 0
          DisplayFormat = '###'
          TabOrder = 0
          Value = 45.0
          OnChange = EdtNr_DiasProdutoChange
        end
        object EdtCd_Laboratorio: TCurrencyEdit
          Tag = 2
          Left = 161
          Top = 17
          Width = 40
          Height = 19
          Margins.Left = 2
          Margins.Top = 2
          AutoSize = False
          DecimalPlaces = 0
          DisplayFormat = '###'
          TabOrder = 1
          OnExit = EdtCd_LaboratorioExit
          OnKeyDown = EdtCd_EmitenteKeyDown
        end
        object EdtNm_Laboratorio: TEdit
          Left = 224
          Top = 17
          Width = 305
          Height = 19
          TabStop = False
          AutoSize = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
        end
        object DbGAnalise: TDBGrid
          Left = 3
          Top = 38
          Width = 973
          Height = 202
          DataSource = DsAnalise
          FixedColor = clSilver
          Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 3
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnEnter = DbGContatoEnter
          OnExit = DbGContatoExit
          Columns = <
            item
              Expanded = False
              FieldName = 'Cd_Produto'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Nm_Produto'
              Width = 415
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'Dt_PrimeiraCompra'
              Title.Alignment = taCenter
              Width = 80
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'Dt_UltimaCompra'
              Title.Alignment = taCenter
              Width = 72
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Qt_Item'
              Title.Alignment = taRightJustify
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Qt_MaiorCompra'
              Title.Alignment = taRightJustify
              Width = 71
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Qt_MenorCompra'
              Title.Alignment = taRightJustify
              Width = 74
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Vl_UltimaCompra'
              Title.Alignment = taRightJustify
              Visible = True
            end>
        end
      end
      object TabSCliente: TTabSheet
        Caption = '         &Informa'#231#245'es do Cliente         '
        ImageIndex = 2
        object Label7: TLabel
          Left = 4
          Top = 0
          Width = 32
          Height = 13
          Caption = 'Grupo:'
          FocusControl = DbEdtDp_Grupo
        end
        object Label8: TLabel
          Left = 287
          Top = 0
          Width = 51
          Height = 13
          Caption = 'SubGrupo:'
          FocusControl = DbEdtDp_SubGrupo
        end
        object Label9: TLabel
          Left = 298
          Top = 35
          Width = 74
          Height = 13
          Caption = 'Pagamento dia:'
          FocusControl = DbEdtNr_Pagamento
        end
        object Label11: TLabel
          Left = 378
          Top = 35
          Width = 81
          Height = 13
          Caption = 'Limite de Cr'#233'dito:'
          FocusControl = DbEdtVl_LimCredito
        end
        object Label12: TLabel
          Left = 4
          Top = 35
          Width = 26
          Height = 13
          Caption = 'Rota:'
          FocusControl = DbEdtDp_Rota
        end
        object Label13: TLabel
          Left = 4
          Top = 104
          Width = 66
          Height = 13
          Caption = 'Observa'#231#245'es:'
          FocusControl = DbMmObsEmitente
        end
        object Label14: TLabel
          Left = 473
          Top = 103
          Width = 227
          Height = 13
          Caption = 'Restri'#231#245'es de Cr'#233'dito / Informa'#231#245'es de Vendas:'
          FocusControl = DbMmRestricao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label16: TLabel
          Left = 467
          Top = 35
          Width = 141
          Height = 13
          Caption = 'Conv'#234'nio / T'#237'tular do Cr'#233'dito:'
          FocusControl = DbEdtDp_Credito
        end
        object SbAddTitular: TSpeedButton
          Left = 777
          Top = 50
          Width = 21
          Height = 19
          Hint = 'Adiciona o T'#237'tular a lista'
          Flat = True
          Glyph.Data = {binary 1138 bytes}
          ParentShowHint = False
          ShowHint = True
          OnClick = SbAddTitularClick
        end
        object Label21: TLabel
          Left = 573
          Top = 0
          Width = 36
          Height = 13
          Caption = 'Cidade:'
          FocusControl = DbEdtDp_Cidade
        end
        object Label23: TLabel
          Left = 855
          Top = 0
          Width = 24
          Height = 13
          Caption = 'CEP:'
          FocusControl = DbEdtNr_CEP
        end
        object Label24: TLabel
          Left = 790
          Top = 35
          Width = 50
          Height = 13
          Caption = 'Telefones:'
        end
        object Label37: TLabel
          Left = 4
          Top = 69
          Width = 32
          Height = 13
          Caption = 'E-Mail:'
          FocusControl = DbEdtDs_EMail
        end
        object Label38: TLabel
          Left = 472
          Top = 69
          Width = 96
          Height = 13
          Caption = 'E-Mail de Cobran'#231'a:'
          FocusControl = DbEdtDs_EMailCob
        end
        object DbEdtDp_Grupo: TDBEdit
          Left = 4
          Top = 15
          Width = 280
          Height = 19
          TabStop = False
          DataField = 'Dp_Grupo'
          DataSource = DsContato
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
        end
        object DbEdtDp_SubGrupo: TDBEdit
          Left = 287
          Top = 15
          Width = 280
          Height = 19
          TabStop = False
          DataField = 'Dp_SubGrupo'
          DataSource = DsContato
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
        end
        object DbEdtNr_Pagamento: TDBEdit
          Left = 298
          Top = 50
          Width = 40
          Height = 19
          TabStop = False
          DataField = 'Nr_Pagamento'
          DataSource = DsContato
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 4
        end
        object DbEdtVl_LimCredito: TDBEdit
          Left = 378
          Top = 50
          Width = 85
          Height = 19
          TabStop = False
          DataField = 'Vl_Limite_Credito'
          DataSource = DsContato
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 5
        end
        object DbEdtDp_Rota: TDBEdit
          Left = 4
          Top = 50
          Width = 291
          Height = 19
          TabStop = False
          DataField = 'Ds_Rota'
          DataSource = DsContato
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 6
        end
        object DbMmObsEmitente: TDBMemo
          Left = 4
          Top = 118
          Width = 465
          Height = 123
          TabStop = False
          DataField = 'Mm_ObsEmitente'
          DataSource = DsContato
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          ScrollBars = ssVertical
          TabOrder = 7
        end
        object DbMmRestricao: TDBMemo
          Left = 473
          Top = 118
          Width = 499
          Height = 123
          TabStop = False
          DataField = 'Mm_Restricao'
          DataSource = DsContato
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          ScrollBars = ssVertical
          TabOrder = 8
        end
        object DbEdtDp_Credito: TDBEdit
          Left = 469
          Top = 50
          Width = 308
          Height = 19
          TabStop = False
          DataField = 'Dp_Credito'
          DataSource = DsContato
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 9
        end
        object DbEdtDp_Cidade: TDBEdit
          Left = 572
          Top = 15
          Width = 280
          Height = 19
          TabStop = False
          DataField = 'Dp_Cidade'
          DataSource = DsContato
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
        end
        object DbEdtNr_CEP: TDBEdit
          Left = 855
          Top = 15
          Width = 74
          Height = 19
          TabStop = False
          DataField = 'Nr_CEP'
          DataSource = DsContato
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 3
        end
        object DbMmTelefone: TDBMemo
          Left = 841
          Top = 36
          Width = 130
          Height = 46
          TabStop = False
          DataField = 'Dp_Telefone'
          DataSource = DsContato
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          ScrollBars = ssVertical
          TabOrder = 10
        end
        object DbEdtDs_EMail: TDBEdit
          Left = 4
          Top = 84
          Width = 465
          Height = 19
          TabStop = False
          DataField = 'Ds_EMail'
          DataSource = DsContato
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 11
        end
        object DbEdtDs_EMailCob: TDBEdit
          Left = 472
          Top = 84
          Width = 465
          Height = 19
          TabStop = False
          DataField = 'Ds_EmailCob'
          DataSource = DsContato
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 12
        end
      end
      object TabReceber: TTabSheet
        Caption = '               Contas '#224' &Receber / Recebidas               '
        ImageIndex = 3
        object DbGDuplicata: TDBGrid
          Left = 1
          Top = 2
          Width = 973
          Height = 237
          Hint = 'Pressione Enter ou de um Click duplo para ir ao Contas '#224' Receber'
          DataSource = DsReceber
          FixedColor = clSilver
          Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          ParentShowHint = False
          PopupMenu = PopMenCR
          ShowHint = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDrawColumnCell = DbGDuplicataDrawColumnCell
          OnDblClick = DbGDuplicataDblClick
          OnEnter = DbGContatoEnter
          OnExit = DbGContatoExit
          Columns = <
            item
              Expanded = False
              FieldName = 'nm_abreviado'
              Width = 100
              Visible = True
            end
            item
              Alignment = taRightJustify
              Expanded = False
              FieldName = 'Dp_Receber'
              Title.Alignment = taRightJustify
              Width = 94
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'nm_funcionario'
              Width = 160
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Nm_Portador'
              Width = 170
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'Dt_Emissao'
              Title.Alignment = taCenter
              Width = 65
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'dt_vencimento'
              Title.Alignment = taCenter
              Width = 65
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
              Alignment = taCenter
              Expanded = False
              FieldName = 'Dt_Pagamento'
              Title.Alignment = taCenter
              Width = 65
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Nr_Atraso'
              Title.Alignment = taRightJustify
              Width = 37
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'vl_recebido'
              Title.Alignment = taRightJustify
              Width = 65
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Vl_Saldo'
              Title.Alignment = taRightJustify
              Width = 65
              Visible = True
            end>
        end
      end
      object TabSMS: TTabSheet
        Caption = '  Multforma  '
        ImageIndex = 4
        object Label25: TLabel
          Left = 3
          Top = 0
          Width = 101
          Height = 13
          Caption = 'N'#186' de Computadores:'
          FocusControl = DbEdtNr_Computador
        end
        object Label27: TLabel
          Left = 252
          Top = 0
          Width = 109
          Height = 13
          Caption = 'Vers'#227'o do SQL Server:'
          FocusControl = DbEdtDp_SQL
        end
        object Label28: TLabel
          Left = 468
          Top = 0
          Width = 88
          Height = 13
          Caption = 'Nome do Servidor:'
          FocusControl = DbEdtNm_Servidor
        end
        object Label29: TLabel
          Left = 695
          Top = 0
          Width = 49
          Height = 13
          Caption = 'Dedicado:'
          FocusControl = DbEdtDp_Dedicado
        end
        object Label26: TLabel
          Left = 4
          Top = 35
          Width = 86
          Height = 13
          Caption = 'Nome do Contato:'
          FocusControl = DbEdtNm_Contato
        end
        object Label30: TLabel
          Left = 259
          Top = 35
          Width = 87
          Height = 13
          Caption = 'E-Mail do Contato:'
          FocusControl = DbEdtDs_EMailContato
        end
        object Label31: TLabel
          Left = 4
          Top = 70
          Width = 95
          Height = 13
          Caption = 'E-Mail de cobran'#231'a:'
          FocusControl = DbEdtDs_EMailCob_2
        end
        object LblEmailNFe: TLabel
          Left = 346
          Top = 71
          Width = 58
          Height = 13
          Hint = 'Click duplo para exibir o CR'
          Caption = 'E-Mail NF-e:'
          FocusControl = DbEdtDs_EMailNFe
          ParentShowHint = False
          ShowHint = True
          OnDblClick = LblEmailNFeDblClick
        end
        object Label33: TLabel
          Left = 625
          Top = 70
          Width = 56
          Height = 13
          Caption = 'Propriet'#225'rio:'
          FocusControl = DbEdtNm_Proprietario
        end
        object Label34: TLabel
          Left = 4
          Top = 105
          Width = 61
          Height = 13
          Caption = 'Observa'#231#227'o:'
        end
        object Label35: TLabel
          Left = 571
          Top = 35
          Width = 113
          Height = 13
          Caption = 'Enviar boleto por e-mail:'
          FocusControl = DbEdtDp_EMailCob
        end
        object SbEmailReajuste: TSpeedButton
          Left = 848
          Top = 70
          Width = 125
          Height = 22
          Caption = 'EMail de Reajuste'
          Flat = True
          Glyph.Data = {binary 1082 bytes}
          OnClick = SbEmailReajusteClick
        end
        object SbContatoReajuste: TSpeedButton
          Left = 848
          Top = 94
          Width = 125
          Height = 22
          Caption = 'Contato do Reajuste'
          Flat = True
          Glyph.Data = {binary 1082 bytes}
          OnClick = SbContatoReajusteClick
        end
        object Label41: TLabel
          Left = 746
          Top = 0
          Width = 32
          Height = 13
          Caption = 'Grupo:'
          FocusControl = DbEdtDp_Grupo2
        end
        object Label42: TLabel
          Left = 686
          Top = 35
          Width = 51
          Height = 13
          Caption = 'SubGrupo:'
          FocusControl = DbEdtDp_SubGrupo2
          OnDblClick = Label42DblClick
        end
        object Label43: TLabel
          Left = 105
          Top = 0
          Width = 57
          Height = 13
          Caption = 'Pagamento:'
          FocusControl = DbEdtNr_Pagamento2
        end
        object Label44: TLabel
          Left = 164
          Top = 0
          Width = 43
          Height = 13
          Caption = 'Contrato:'
          FocusControl = DbEdtVl_Contrato1
        end
        object SbDoctoCB: TSpeedButton
          Tag = 2
          Left = 815
          Top = 94
          Width = 27
          Height = 22
          Hint = 'Copiar CNPJ para o Clipboard'
          Flat = True
          Glyph.Data = {binary 826 bytes}
          ParentShowHint = False
          ShowHint = True
          OnClick = SbDoctoCBClick
        end
        object SbDoctoNome: TSpeedButton
          Tag = 1
          Left = 815
          Top = 70
          Width = 27
          Height = 22
          Hint = 'Copiar Nome da Empresa para o Clipboard'
          Flat = True
          Glyph.Data = {binary 826 bytes}
          ParentShowHint = False
          ShowHint = True
          OnClick = SbDoctoCBClick
        end
        object DbEdtNr_Computador: TDBEdit
          Left = 4
          Top = 15
          Width = 46
          Height = 19
          DataField = 'Nr_Computador'
          DataSource = DsDetalhe
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
        object DbEdtDp_SQL: TDBEdit
          Left = 252
          Top = 15
          Width = 213
          Height = 19
          DataField = 'Dp_SQL'
          DataSource = DsDetalhe
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
        end
        object DbEdtNm_Servidor: TDBEdit
          Left = 468
          Top = 15
          Width = 222
          Height = 19
          DataField = 'Nm_Servidor'
          DataSource = DsDetalhe
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
        end
        object DbEdtDp_Dedicado: TDBEdit
          Left = 695
          Top = 15
          Width = 39
          Height = 19
          DataField = 'Dp_Dedicado'
          DataSource = DsDetalhe
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
        end
        object DbEdtNm_Contato: TDBEdit
          Left = 4
          Top = 50
          Width = 253
          Height = 19
          DataField = 'Nm_Contato'
          DataSource = DsDetalhe
          TabOrder = 4
        end
        object DbEdtDs_EMailContato: TDBEdit
          Left = 259
          Top = 50
          Width = 308
          Height = 19
          DataField = 'Ds_EMail_Contato'
          DataSource = DsDetalhe
          TabOrder = 5
        end
        object DbEdtDs_EMailCob_2: TDBEdit
          Left = 4
          Top = 85
          Width = 340
          Height = 19
          DataField = 'Ds_EmailCob'
          DataSource = DsContato
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 6
        end
        object DbEdtDs_EMailNFe: TDBEdit
          Left = 346
          Top = 85
          Width = 273
          Height = 19
          DataField = 'Ds_EMailNFe'
          DataSource = DsContato
          TabOrder = 7
        end
        object DbEdtNm_Proprietario: TDBEdit
          Left = 625
          Top = 85
          Width = 184
          Height = 19
          DataField = 'Nm_Proprietario'
          DataSource = DsDetalhe
          TabOrder = 8
        end
        object DbEdtDp_EMailCob: TDBEdit
          Left = 571
          Top = 50
          Width = 39
          Height = 19
          DataField = 'Dp_EMailCob'
          DataSource = DsDetalhe
          TabOrder = 9
        end
        object DbEdtDp_Grupo2: TDBEdit
          Left = 746
          Top = 15
          Width = 222
          Height = 19
          TabStop = False
          DataField = 'Dp_Grupo'
          DataSource = DsContato
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 10
        end
        object DbEdtDp_SubGrupo2: TDBEdit
          Left = 686
          Top = 50
          Width = 280
          Height = 19
          TabStop = False
          DataField = 'Dp_SubGrupo'
          DataSource = DsContato
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 11
        end
        object DbEdtNr_Pagamento2: TDBEdit
          Left = 105
          Top = 15
          Width = 40
          Height = 19
          TabStop = False
          DataField = 'Nr_Pagamento'
          DataSource = DsContato
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 12
        end
        object DbEdtVl_Contrato1: TDBEdit
          Left = 164
          Top = 15
          Width = 85
          Height = 19
          TabStop = False
          DataField = 'Vl_Limite_Credito'
          DataSource = DsDetalhe
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 13
        end
        object DbMObsMS: TDBMemo
          Tag = 1
          Left = 4
          Top = 120
          Width = 318
          Height = 119
          DataField = 'Mm_ObsSuporte'
          DataSource = DsDetalhe
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ScrollBars = ssVertical
          TabOrder = 14
          OnDblClick = DbMObsMSDblClick
        end
        object DbMmObsEmitente2: TDBMemo
          Tag = 2
          Left = 328
          Top = 120
          Width = 318
          Height = 119
          TabStop = False
          DataField = 'Mm_ObsEmitente'
          DataSource = DsContato
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          ScrollBars = ssVertical
          TabOrder = 15
          OnDblClick = DbMObsMSDblClick
        end
        object DbMmRestricao2: TDBMemo
          Tag = 3
          Left = 653
          Top = 120
          Width = 318
          Height = 119
          TabStop = False
          DataField = 'Mm_Restricao'
          DataSource = DsContato
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          ScrollBars = ssVertical
          TabOrder = 16
          OnDblClick = DbMObsMSDblClick
        end
        object DbGDuplicata_2: TDBGrid
          Left = 542
          Top = 120
          Width = 431
          Height = 119
          Hint = 'Pressione Enter ou de um Click duplo para ir ao Contas '#224' Receber'
          DataSource = DsReceber
          FixedColor = clSilver
          Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          ParentShowHint = False
          PopupMenu = PopMenCR
          ShowHint = True
          TabOrder = 17
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Visible = False
          OnDrawColumnCell = DbGDuplicataDrawColumnCell
          OnDblClick = DbGDuplicataDblClick
          OnEnter = DbGContatoEnter
          OnExit = DbGContatoExit
          Columns = <
            item
              Alignment = taRightJustify
              Expanded = False
              FieldName = 'Dp_Receber'
              Title.Alignment = taRightJustify
              Width = 94
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'Dt_Emissao'
              Title.Alignment = taCenter
              Width = 65
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'dt_vencimento'
              Title.Alignment = taCenter
              Width = 65
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
              FieldName = 'Nr_Atraso'
              Title.Alignment = taRightJustify
              Width = 37
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'vl_recebido'
              Title.Alignment = taRightJustify
              Visible = True
            end>
        end
      end
    end
    object EdtCd_Cidade: TCurrencyEdit
      Tag = 1
      Left = 4
      Top = 77
      Width = 50
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '###'
      TabOrder = 10
      OnExit = EdtCd_CidadeExit
      OnKeyDown = EdtCd_EmitenteKeyDown
    end
    object EdtNm_Cidade: TEdit
      Left = 78
      Top = 77
      Width = 220
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
      TabOrder = 11
    end
    object EdtNr_Dias: TCurrencyEdit
      Left = 757
      Top = 43
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '###'
      TabOrder = 7
    end
    object EdtCd_Grupo: TCurrencyEdit
      Tag = 2
      Left = 588
      Top = 77
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '###'
      TabOrder = 14
      OnExit = EdtCd_GrupoExit
      OnKeyDown = EdtCd_EmitenteKeyDown
    end
    object EdtNm_Grupo: TEdit
      Left = 651
      Top = 77
      Width = 220
      Height = 19
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
      TabOrder = 15
    end
    object EdtCd_Rota: TCurrencyEdit
      Tag = 3
      Left = 301
      Top = 77
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '###'
      TabOrder = 12
      OnExit = EdtCd_RotaExit
      OnKeyDown = EdtCd_EmitenteKeyDown
    end
    object EdtDs_Rota: TEdit
      Left = 364
      Top = 77
      Width = 220
      Height = 19
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
      TabOrder = 13
    end
    object CbOrdem: TComboBox
      Left = 802
      Top = 43
      Width = 95
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 8
      Items.Strings = (
        'Agendamento'
        'Alfab'#233'tica'
        'Contato'
      )
    end
    object EdtNr_Contatos: TCurrencyEdit
      Left = 900
      Top = 44
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '###'
      TabOrder = 9
    end
  end
  object ADODsContato: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    OnCalcFields = ADODsContatoCalcFields
    CommandText = 'if Object_ID( ''''#emitente_ta'''' ) is null'#13#10'  create table #emitente_ta'#13#10'    ('#13#10'    cd_emitente int,'#13#10'    nr_contato smallint'#13#10'    )'#13#10#13#10'select'#13#10'  E.Cd_Emitente, C.Nr_Contato, C.Dt_Contato, C.Nm_Contato, C.Cd_Ocorrencia,'#13#10'  CO.Ds_Ocorrencia, C.St_Contato, C.Dt_NovoContato, C.Cd_Usuario,'#13#10'  C.Mm_Observacao, CO.Cd_Color,'#13#10'  Cast( E.Cd_Emitente as VarChar ) + '''' - '''' + E.Nm_Emitente as Dp_Emitente,'#13#10'  Cast( C.Cd_Ocorrencia as VarChar ) + '''' - '''' + CO.Ds_Ocorrencia as Dp_Ocorrencia,'#13#10'    case C.St_Contato'#13#10'      when ''''1'''' then ''''Aberto'''#13#10'      when ''''2'''' then ''''Encerrado'''#13#10'    end as Dp_Contato,'#13#10'  EE.Nr_Telefone_1, EE.Nr_Telefone_2, EE.Nr_Telefone_3, EE.Nr_FAX,'#13#10'  EE.Nr_Celular_1, EE.Nr_Celular_2,'#13#10#13#10'  R.Ds_Rota, E.Mm_Restricao, E.Vl_Limite_Credito,E.Nr_Pagamento,'#13#10'  E.Mm_Observacao as Mm_ObsEmitente,'#13#10'  Cast( E.Cd_Grupo as VarChar ) + '''' - '''' + EG.Nm_Grupo as Dp_Grupo,'#13#10'  Cast( E.Cd_SubGrupo as VarChar ) + '''' - '''' + ESG.Nm_SubGrupo as Dp_SubGrupo,'#13#10'  Cast( E.Cd_Credito as VarChar ) + '''' - '''' + EC.Nm_Emitente as Dp_Credito,'#13#10'  Cast( EE.Cd_Cidade as VarChar ) + '''' - '''' + CID.Nm_Cidade + '''' - '''' + CID.Sg_Estado as Dp_Cidade,'#13#10'  E.Nm_Fantasia, E.Nr_Documento, EE.Nr_CEP, E.Nr_Endereco, EE.Cd_Rota,'#13#10#13#10'  E.Ds_EMail, E.Ds_EmailCob, E.Nm_Emitente, E.Cd_Grupo, E.Cd_SubGrupo, E.Ds_EMailNFe'#13#10#13#10'from'#13#10'  #Emitente_TA ETA'#13#10#13#10'inner join'#13#10'  Emitente E'#13#10'on'#13#10'  E.Cd_Emitente = ETA.Cd_Emitente'#13#10#13#10'inner join'#13#10'  Emitente_Grupo EG'#13#10'on'#13#10'  EG.Cd_Grupo = E.Cd_Grupo'#13#10#13#10'inner join'#13#10'  Emitente_SubGrupo ESG'#13#10'on'#13#10'  ESG.Cd_SubGrupo = E.Cd_SubGrupo'#13#10#13#10'inner join'#13#10'  Emitente_Endereco EE'#13#10'on'#13#10'  EE.Cd_Emitente = E.Cd_Emitente and'#13#10'  EE.Nr_Endereco = E.Nr_Endereco'#13#10#13#10'inner join'#13#10'  Cidade CID'#13#10'on'#13#10'  CID.Cd_Cidade = EE.Cd_Cidade'#13#10#13#10'inner join'#13#10'  Emitente EC'#13#10'on'#13#10'  EC.Cd_Emitente = E.Cd_Credito'#13#10#13#10'left join'#13#10'  Rota R'#13#10'on'#13#10'  R.Cd_Rota = EE.Cd_Rota'#13#10#13#10'left join'#13#10'  Contato C'#13#10'on'#13#10'  C.Cd_Emitente = ETA.Cd_Emitente and'#13#10'  C.Nr_Contato  = ETA.Nr_Contato'#13#10#13#10'left join'#13#10'  Contato_Ocorrencia Co'#13#10'on'#13#10'  CO.Cd_Ocorrencia = C.Cd_Ocorrencia'#13#10
    Parameters = <>
    SQLOther0.Strings = (
      'select'
      '  E.Cd_Emitente, C.Nr_Contato, C.Dt_Contato, C.Nm_Contato, C.Cd_Ocorrencia,'
      '  CO.Ds_Ocorrencia, C.St_Contato, C.Dt_NovoContato, C.Cd_Usuario,'
      '  C.Mm_Observacao, CO.Cd_Color,'
      '  Cast( E.Cd_Emitente as VarChar ) + '''' - '''' + E.Nm_Emitente as Dp_Emitente,'
      '  Cast( C.Cd_Ocorrencia as VarChar ) + '''' - '''' + CO.Ds_Ocorrencia as Dp_Ocorrencia,'
      '    case C.St_Contato'
      '      when ''''1'''' then ''''Aberto'''
      '      when ''''2'''' then ''''Encerrado'''
      '    end as Dp_Contato,'
      '  EE.Nr_Telefone_1, EE.Nr_Telefone_2, EE.Nr_Telefone_3, EE.Nr_FAX,'
      '  EE.Nr_Celular_1, EE.Nr_Celular_2,'
      ''
      '  R.Ds_Rota, E.Mm_Restricao, E.Vl_Limite_Credito,E.Nr_Pagamento,'
      '  E.Mm_Observacao as Mm_ObsEmitente,'
      '  Cast( E.Cd_Grupo as VarChar ) + '''' - '''' + EG.Nm_Grupo as Dp_Grupo,'
      '  Cast( E.Cd_SubGrupo as VarChar ) + '''' - '''' + ESG.Nm_SubGrupo as Dp_SubGrupo,'
      '  Cast( E.Cd_Credito as VarChar ) + '''' - '''' + EC.Nm_Emitente as Dp_Credito,'
      '  CID.Nm_Cidade + '''' - '''' + CID.Sg_Estado + '''' ('''' + Cast( EE.Cd_Cidade as VarChar ) + '''')'''' as Dp_Cidade,'
      '  E.Nm_Fantasia, E.Nr_Documento, EE.Nr_CEP, E.Nr_Endereco, EE.Cd_Rota,'
      ''
      '  E.Ds_EMail, E.Ds_EmailCob, E.Nm_Emitente, E.Cd_Grupo, E.Cd_SubGrupo, E.Ds_EMailNFe'
      ''
      'from'
      '  #Emitente_TA ETA'
      ''
      'inner join'
      '  Emitente E'
      'on'
      '  E.Cd_Emitente = ETA.Cd_Emitente'
      ''
      'inner join'
      '  Emitente_Grupo EG'
      'on'
      '  EG.Cd_Grupo = E.Cd_Grupo'
      ''
      'inner join'
      '  Emitente_SubGrupo ESG'
      'on'
      '  ESG.Cd_SubGrupo = E.Cd_SubGrupo'
      ''
      'inner join'
      '  Emitente_Endereco EE'
      'on'
      '  EE.Cd_Emitente = E.Cd_Emitente and'
      '  EE.Nr_Endereco = E.Nr_Endereco'
      ''
      'inner join'
      '  Cidade CID'
      'on'
      '  CID.Cd_Cidade = EE.Cd_Cidade'
      ''
      'inner join'
      '  Emitente EC'
      'on'
      '  EC.Cd_Emitente = E.Cd_Credito'
      ''
      'left join'
      '  Rota R'
      'on'
      '  R.Cd_Rota = EE.Cd_Rota'
      ''
      'left join'
      '  Contato C'
      'on'
      '  C.Cd_Emitente = ETA.Cd_Emitente and'
      '  C.Nr_Contato  = ETA.Nr_Contato'
      ''
      'left join'
      '  Contato_Ocorrencia Co'
      'on'
      '  CO.Cd_Ocorrencia = C.Cd_Ocorrencia'
      ''
      'order by'
      '  /* Order */'
    )
    SQLOther1.Strings = (
      '  Contato C'
      ''
      'inner join'
      '  Emitente E'
      'on'
      '  E.Cd_Emitente = A.Cd_Emitente'
      '  /* Cd_Grupo */'
      ''
      'inner join'
      '  Contato_Ocorrencia CC'
      'on'
      '  CC.Cd_Ocorrencia = A.Cd_Ocorrencia'
      ''
      'inner join'
      '  Emitente_Endereco EE'
      'on'
      '  EE.Cd_Emitente = E.Cd_Emitente and'
      '  EE.Nr_Endereco = E.Nr_Endereco'
      '  /* Cd_Cidade */'
      '  /* Cd_Rota */'
      ''
      'inner join'
      '  Cidade CID'
      'on'
      '  CID.Cd_Cidade = EE.Cd_Cidade'
    )
    SQLOther2.Strings = (
      '  Emitente E'
      ''
      'left join'
      '  Contato C'
      'on'
      '  C.Cd_Emitente = E.Cd_Emitente'
      '  /* Contato */'
      ''
      'inner join'
      'on'
      '  E.Cd_Emitente = A.Cd_Emitente'
      '  /* Cd_Grupo */'
      ''
      'inner join'
      '  Contato_Ocorrencia CC'
      'on'
      '  CC.Cd_Ocorrencia = A.Cd_Ocorrencia'
      ''
      'inner join'
      '  Emitente_Endereco EE'
      'on'
      '  EE.Cd_Emitente = E.Cd_Emitente and'
      '  EE.Nr_Endereco = E.Nr_Endereco'
      '  /* Cd_Cidade */'
    )
    SQLOther3.Strings = (
      'select'
      '  B.Cd_Emitente, A.Nr_Contato, A.Dt_Contato, A.Nm_Contato, A.Cd_Ocorrencia,'
      '  C.Ds_Ocorrencia, A.St_Contato, A.Dt_NovoContato, A.Cd_Usuario,'
      '  A.Mm_Observacao, C.Cd_Color,'
      '  Cast( B.Cd_Emitente as VarChar( 5 ) ) + '''' - '''' + B.Nm_Emitente as Dp_Emitente,'
      '  Cast( A.Cd_Ocorrencia as VarChar( 5 ) ) + '''' - '''' + C.Ds_Ocorrencia as Dp_Ocorrencia,'
      '    case A.St_Contato'
      '      when ''''1'''' then ''''Aberto'''
      '      when ''''2'''' then ''''Encerrado'''
      '    end as Dp_Contato,'
      '  D.Nr_Telefone_1, D.Nr_Telefone_2, D.Nr_Telefone_3, D.Nr_FAX'
      ''
      'from'
      '  Emitente B'
      ''
      'inner join'
      '  Emitente_Endereco D'
      'on'
      '  D.Cd_Emitente = B.Cd_Emitente and'
      '  D.Nr_Endereco = B.Nr_Endereco'
      '  '
      'left join'
      '  Contato A'
      'on'
      '  A.Cd_Emitente = B.Cd_Emitente'
      ''
      'left join'
      '  Contato_Ocorrencia C'
      'on'
      '  C.Cd_Ocorrencia = A.Cd_Ocorrencia'
      ''
      'where'
      '  B.Cd_Emitente = :Cd_Emitente and'
      '  ('
      '  A.Nr_Contato  ='
      '    ('
      '    select top 1'
      '      CT.Nr_Contato'
      ''
      '    from'
      '      Contato CT'
      ''
      '    where'
      '      CT.Cd_Emitente = A.Cd_Emitente'
      ''
      '    order by'
      '      CT.Nr_Contato desc'
      '    )'
      '  or'
      '  not Exists('
      '    select'
      '      CT.Nr_Contato'
      ''
      '    from'
      '      Contato CT'
      ''
      '    where'
      '      CT.Cd_Emitente = A.Cd_Emitente'
      ''
      '    order by'
      '      CT.Nr_Contato desc'
      '    )'
      '  )'
      ''
    )
    SQLOther4.Strings = (
      'select'
      '  B.Cd_Emitente, Cast( null as smallint ) as Nr_Contato, Cast( null as timestamp ) as Dt_Contato,'
      '  Cast( null varchar ) as Nm_Contato, Cast( null as smallint ) as Cd_Ocorrencia,'
      '  Cast( null as varchar ) as Ds_Ocorrencia, Cast( null as varchar ) as St_Contato,'
      '  Cast( null as timestamp ) as Dt_NovoContato, Cast( null as varchar ) as Cd_Usuario,'
      '  Cast( null as varchar ) as Mm_Observacao, Cast( null as smallint ) as Cd_Color,'
      '  Cast( B.Cd_Emitente as VarChar( 5 ) ) || '''' - '''' || B.Nm_Emitente as Dp_Emitente,'
      '  Cast( null as VarChar ) as Dp_Ocorrencia,'
      '  Cast( null as VarChar ) as Dp_Contato,'
      '  D.Nr_Telefone_1, D.Nr_Telefone_2, D.Nr_Telefone_3, D.Nr_FAX'
      ''
      'from'
      '  Emitente B'
      ''
      'inner join'
      '  Emitente_Endereco D'
      'on'
      '  D.Cd_Emitente = B.Cd_Emitente and'
      '  D.Nr_Endereco = B.Nr_Endereco and'
      '  D.Cd_Cidade   = :Cd_Cidade'
      ''
    )
    SQLOther9.Strings = (
      '--------------- Visualizar'
      'select /* Nr_Contatos */'
      '  A.Nr_Contato, A.Dt_Contato, A.Nm_Contato, A.Cd_Ocorrencia,'
      '  B.Ds_Ocorrencia, A.St_Contato, A.Dt_NovoContato, A.Cd_Usuario,'
      '  A.Mm_Observacao, A.Nr_Orcamento, A.Cd_Emitente,'
      '  Cast( A.Cd_Ocorrencia as VarChar( 5 ) ) + '''' - '''' + B.Ds_Ocorrencia as Dp_Ocorrencia,'
      '  case A.St_Contato'
      '    when ''''1'''' then ''''Aberto'''
      '    when ''''2'''' then ''''Encerrado'''
      '  end as Dp_Contato'
      ''
      'from'
      '  Contato A'
      ''
      'inner join'
      '  Contato_Ocorrencia B'
      'on'
      '  B.Cd_Ocorrencia = A.Cd_Ocorrencia'
      ''
      'where'
      '  A.Cd_Emitente = :Cd_Emitente '
      ''
      'order by'
      '  A.Cd_Emitente, A.Nr_Contato desc'
    )
    Left = 62
    Top = 223
    object ADODsContatoCd_Emitente: TIntegerField
      FieldName = 'Cd_Emitente'
    end
    object ADODsContatoNr_Contato: TSmallintField
      FieldName = 'Nr_Contato'
    end
    object ADODsContatoDt_Contato: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'Dt_Contato'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object ADODsContatoNm_Contato: TStringField
      DisplayLabel = 'Contato'
      FieldName = 'Nm_Contato'
      Size = 50
    end
    object ADODsContatoCd_Ocorrencia: TSmallintField
      FieldName = 'Cd_Ocorrencia'
    end
    object ADODsContatoDs_Ocorrencia: TStringField
      FieldName = 'Ds_Ocorrencia'
      Size = 50
    end
    object ADODsContatoSt_Contato: TStringField
      FieldName = 'St_Contato'
      FixedChar = True
      Size = 1
    end
    object ADODsContatoCd_Usuario: TStringField
      FieldName = 'Cd_Usuario'
      Size = 15
    end
    object ADODsContatoDp_Ocorrencia: TStringField
      FieldName = 'Dp_Ocorrencia'
      ReadOnly = True
      Size = 58
    end
    object ADODsContatoDp_Contato: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'Dp_Contato'
      ReadOnly = True
      Size = 9
    end
    object ADODsContatoDp_Hora: TStringField
      DisplayLabel = 'Hora'
      FieldKind = fkCalculated
      FieldName = 'Dp_Hora'
      Size = 5
      Calculated = True
    end
    object ADODsContatoNr_Telefone_1: TStringField
      FieldName = 'Nr_Telefone_1'
      EditMask = '(##) ####-#####;0; '
      Size = 11
    end
    object ADODsContatoNr_Telefone_2: TStringField
      FieldName = 'Nr_Telefone_2'
      EditMask = '(##) ####-#####;0; '
      Size = 11
    end
    object ADODsContatoNr_Telefone_3: TStringField
      FieldName = 'Nr_Telefone_3'
      EditMask = '(##) ####-#####;0; '
      Size = 11
    end
    object ADODsContatoNr_FAX: TStringField
      FieldName = 'Nr_FAX'
      EditMask = '(##) ####-#####;0; '
      Size = 11
    end
    object ADODsContatoDp_Telefone: TStringField
      DisplayLabel = 'Telefone'
      FieldKind = fkCalculated
      FieldName = 'Dp_Telefone'
      Size = 80
      Calculated = True
    end
    object ADODsContatodt_novocontato: TDateTimeField
      DisplayLabel = 'Agendamento'
      FieldName = 'dt_novocontato'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object ADODsContatoCd_Filial: TSmallintField
      FieldKind = fkCalculated
      FieldName = 'Cd_Filial'
      Calculated = True
    end
    object ADODsContatocd_color: TIntegerField
      FieldName = 'cd_color'
    end
    object ADODsContatoMm_Observacao: TMemoField
      FieldName = 'Mm_Observacao'
      BlobType = ftMemo
    end
    object ADODsContatoDs_Rota: TStringField
      FieldName = 'Ds_Rota'
      Size = 50
    end
    object ADODsContatoMm_Restricao: TMemoField
      FieldName = 'Mm_Restricao'
      BlobType = ftMemo
    end
    object ADODsContatoVl_Limite_Credito: TBCDField
      FieldName = 'Vl_Limite_Credito'
      DisplayFormat = '#,##0.00'
      Precision = 12
      Size = 2
    end
    object ADODsContatoNr_Pagamento: TSmallintField
      FieldName = 'Nr_Pagamento'
    end
    object ADODsContatoMm_ObsEmitente: TMemoField
      FieldName = 'Mm_ObsEmitente'
      BlobType = ftMemo
    end
    object ADODsContatoDp_Grupo: TStringField
      FieldName = 'Dp_Grupo'
      ReadOnly = True
      Size = 83
    end
    object ADODsContatoDp_SubGrupo: TStringField
      FieldName = 'Dp_SubGrupo'
      ReadOnly = True
      Size = 83
    end
    object ADODsContatoDp_Credito: TStringField
      FieldName = 'Dp_Credito'
      ReadOnly = True
      Size = 83
    end
    object ADODsContatoDp_Emitente: TStringField
      DisplayLabel = 'Cliente'
      FieldName = 'Dp_Emitente'
      ReadOnly = True
      Size = 83
    end
    object ADODsContatoDp_Cidade: TStringField
      FieldName = 'Dp_Cidade'
      ReadOnly = True
      Size = 98
    end
    object ADODsContatoNm_Fantasia: TStringField
      DisplayLabel = 'Nome Fantasia'
      FieldName = 'Nm_Fantasia'
      Size = 30
    end
    object ADODsContatoNr_Documento: TStringField
      FieldName = 'Nr_Documento'
      Size = 14
    end
    object ADODsContatoNr_CEP: TStringField
      FieldName = 'Nr_CEP'
      EditMask = '#####-###;0; '
      FixedChar = True
      Size = 8
    end
    object ADODsContatoNr_Endereco: TSmallintField
      FieldName = 'Nr_Endereco'
    end
    object ADODsContatoCd_Rota: TSmallintField
      FieldName = 'Cd_Rota'
    end
    object ADODsContatoDs_EMail: TStringField
      FieldName = 'Ds_EMail'
      Size = 150
    end
    object ADODsContatoDs_EmailCob: TStringField
      FieldName = 'Ds_EmailCob'
      Size = 150
    end
    object ADODsContatoNm_Emitente: TStringField
      FieldName = 'Nm_Emitente'
      Size = 50
    end
    object ADODsContatoCd_Grupo: TSmallintField
      FieldName = 'Cd_Grupo'
    end
    object ADODsContatoCd_SubGrupo: TSmallintField
      FieldName = 'Cd_SubGrupo'
    end
    object ADODsContatoNr_Celular_1: TStringField
      FieldName = 'Nr_Celular_1'
      Size = 11
    end
    object ADODsContatoNr_Celular_2: TStringField
      FieldName = 'Nr_Celular_2'
      Size = 11
    end
    object ADODsContatoDs_EMailNFe: TStringField
      FieldName = 'Ds_EMailNFe'
      Size = 100
    end
  end
  object DsContato: TDataSource
    AutoEdit = False
    DataSet = ADODsContato
    Left = 32
    Top = 223
  end
  object DsOrcamento: TDataSource
    DataSet = ADODsOrcamento
    Left = 239
    Top = 321
  end
  object ADODsOrcamento: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    OnCalcFields = ADODsOrcamentoCalcFields
    CommandText = 'select'#13#10'  O.Cd_Filial, O.Nr_Orcamento, O.Dt_Fatura, O.Cd_Funcionario, O.Nm_Funcionario,'#13#10'  O.Vl_Orcamento, O.St_Orcamento, O.Cd_Emitente, OP.Ds_Condicao,'#13#10'  OP.Dt_Saida_Representada, L.Nm_Laboratorio'#13#10#13#10'from'#13#10'  Orcamento_Total O'#13#10#13#10'left join'#13#10'  Orcamento_Pagamento OP'#13#10'on'#13#10'  OP.Cd_Filial    = O.Cd_Filial and'#13#10'  OP.Nr_Orcamento = O.Nr_Orcamento '#13#10#13#10'left join'#13#10'  Laboratorio L'#13#10'on'#13#10'  L.Cd_Laboratorio = OP.Cd_Laboratorio'#13#10#13#10'where'#13#10'  O.Cd_Filial   = :Cd_Filial and'#13#10'  O.Cd_Emitente = :Cd_Emitente'#13#10#13#10'order by'#13#10'  O.Nr_Orcamento desc'
    DataSource = DsContato
    IndexFieldNames = 'cd_filial;cd_emitente'
    MasterFields = 'Cd_Filial;Cd_Emitente'
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
        Name = 'Cd_Emitente'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 1
      end>
    Left = 268
    Top = 321
    object ADODsOrcamentocd_filial: TSmallintField
      FieldName = 'cd_filial'
    end
    object ADODsOrcamentonr_orcamento: TIntegerField
      DisplayLabel = 'N'#186
      FieldName = 'nr_orcamento'
      DisplayFormat = '#,###'
    end
    object ADODsOrcamentocd_funcionario: TSmallintField
      FieldName = 'cd_funcionario'
    end
    object ADODsOrcamentonm_funcionario: TStringField
      DisplayLabel = 'Vendedor'
      FieldName = 'nm_funcionario'
      Size = 50
    end
    object ADODsOrcamentovl_orcamento: TBCDField
      DisplayLabel = 'Total'
      FieldName = 'vl_orcamento'
      DisplayFormat = '#,##0.00'
      Precision = 28
      Size = 6
    end
    object ADODsOrcamentodt_fatura: TDateTimeField
      DisplayLabel = 'Fechamento'
      FieldName = 'dt_fatura'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object ADODsOrcamentost_orcamento: TStringField
      FieldName = 'st_orcamento'
      FixedChar = True
      Size = 1
    end
    object ADODsOrcamentoDp_Orcamento: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldKind = fkCalculated
      FieldName = 'Dp_Orcamento'
      Calculated = True
    end
    object ADODsOrcamentocd_emitente: TIntegerField
      FieldName = 'cd_emitente'
    end
    object ADODsOrcamentods_condicao: TStringField
      DisplayLabel = 'Pagamento'
      FieldName = 'ds_condicao'
      Size = 50
    end
    object ADODsOrcamentodt_saida_representada: TDateTimeField
      DisplayLabel = 'Data Embarque'
      FieldName = 'dt_saida_representada'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object ADODsOrcamentoNm_Laboratorio: TStringField
      DisplayLabel = 'Fabricante'
      FieldName = 'Nm_Laboratorio'
      Size = 50
    end
  end
  object DsItens: TDataSource
    DataSet = ADODsItens
    Left = 298
    Top = 321
  end
  object ADODsItens: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    OnCalcFields = ADODsItensCalcFields
    CommandText = 'select'#13#10'  OI.Cd_Filial, OI.Nr_Orcamento, OI.Nr_Item, OI.Cd_Produto, P.Nm_Produto, '#13#10'  OI.Qt_Item, OI.Vl_Unitario, OI.Qt_Item * OI.Vl_Unitario as Vl_Total, '#13#10'  L.Nm_Laboratorio, OP.Ds_Condicao, OP.Dt_Conf_Representada, '#13#10'  OP.Dt_Saida_Representada, OP.Dt_Conf_Emitente'#13#10#13#10'from'#13#10'  Orcamento_Item OI'#13#10#13#10'left join'#13#10'  Produto P'#13#10'on'#13#10'  P.Cd_Produto = OI.Cd_Produto'#13#10#13#10'left join'#13#10'  Laboratorio L'#13#10'on'#13#10'  L.Cd_Laboratorio = P.Cd_Laboratorio'#13#10#13#10'left join'#13#10'  Orcamento_Pagamento OP'#13#10'on'#13#10'  OP.Cd_Filial    = OI.Cd_Filial and'#13#10'  OP.Nr_Orcamento = OI.Nr_Orcamento and'#13#10'  OP.Cd_Laboratorio = P.Cd_Laboratorio'#13#10#13#10'where'#13#10'  OI.Cd_Filial     = :Cd_Filial and'#13#10'  OI.Nr_Orcamento  = :Nr_Orcamento and'#13#10'  OI.Fl_Confirmado = ''''1'''#13#10#13#10'order by'#13#10'  OI.Nr_Item'
    DataSource = DsOrcamento
    MasterFields = 'Cd_Filial;Nr_Orcamento'
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
    Left = 327
    Top = 321
    object ADODsItenscd_filial: TSmallintField
      FieldName = 'cd_filial'
    end
    object ADODsItensnr_orcamento: TIntegerField
      FieldName = 'nr_orcamento'
    end
    object ADODsItensnr_item: TSmallintField
      FieldName = 'nr_item'
    end
    object ADODsItenscd_produto: TIntegerField
      FieldName = 'cd_produto'
    end
    object ADODsItensnm_produto: TStringField
      DisplayLabel = 'Produto'
      FieldName = 'nm_produto'
      Size = 120
    end
    object ADODsItensqt_item: TBCDField
      DisplayLabel = 'Quantidade'
      FieldName = 'qt_item'
      DisplayFormat = '#,##0.0#'
      Precision = 12
      Size = 3
    end
    object ADODsItensvl_unitario: TBCDField
      DisplayLabel = 'Unit'#225'rio'
      FieldName = 'vl_unitario'
      DisplayFormat = '#,##0.00'
      Precision = 12
      Size = 3
    end
    object ADODsItensvl_total: TBCDField
      DisplayLabel = 'Total'
      FieldName = 'vl_total'
      DisplayFormat = '#,##0.00'
      Precision = 28
      Size = 6
    end
    object ADODsItensnm_laboratorio: TStringField
      DisplayLabel = 'Laboratorio'
      FieldName = 'nm_laboratorio'
      Size = 50
    end
    object ADODsItensds_condicao: TStringField
      FieldName = 'ds_condicao'
      Size = 50
    end
    object ADODsItensdt_conf_representada: TDateTimeField
      FieldName = 'dt_conf_representada'
    end
    object ADODsItensdt_saida_representada: TDateTimeField
      FieldName = 'dt_saida_representada'
    end
    object ADODsItensdt_conf_emitente: TDateTimeField
      FieldName = 'dt_conf_emitente'
    end
    object ADODsItensDp_Confirmacao: TStringField
      FieldKind = fkCalculated
      FieldName = 'Dp_Confirmacao'
      Size = 200
      Calculated = True
    end
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
            Action = ActOrcamento
            ImageIndex = 8
            ShortCut = 113
          end
          item
            Action = ActContato
            ImageIndex = 25
            ShortCut = 115
          end
          item
            Caption = '-'
          end
          item
            Action = ActEmitente
            ImageIndex = 41
            ShortCut = 116
          end
          item
            Action = ActFind
            ImageIndex = 17
            ShortCut = 114
          end
          item
            Caption = '-'
          end
          item
            Action = ActEmitenteNew
            ImageIndex = 16
            ShortCut = 16497
          end
          item
            Action = ActLicenca
            ImageIndex = 2
            ShortCut = 117
          end
          item
            Action = ActMS
            ImageIndex = 36
            ShortCut = 16502
          end
          item
            Action = ActAllSuport
            ImageIndex = 3
          end
          item
            Action = ActAllPeriodo
            ImageIndex = 29
          end
          item
            Action = ActAllCREmissao
            ImageIndex = 39
          end>
        ActionBar = ActToolBDatabase
      end
      item
      end>
    Images = FrmMain.ImgLstMenu
    Left = 159
    Top = 142
    StyleName = 'XP Style'
    object ActOrcamento: TAction
      Category = '1-Orcamento'
      Hint = 'Novo Or'#231'amento'
      ImageIndex = 8
      ShortCut = 113
      OnExecute = ActOrcamentoExecute
    end
    object ActFind: TAction
      Category = '1-Orcamento'
      Hint = 'Seleciona um Cliente'
      ImageIndex = 17
      ShortCut = 114
      OnExecute = ActFindExecute
    end
    object ActContato: TAction
      Category = '1-Orcamento'
      Hint = 'Re-Agendar Contato'
      ImageIndex = 25
      ShortCut = 115
      OnExecute = ActContatoExecute
    end
    object ActEmitente: TAction
      Category = '1-Orcamento'
      Hint = 'Abre o Cadastro do Cliente'
      ImageIndex = 41
      ShortCut = 116
      OnExecute = ActEmitenteExecute
    end
    object ActEmitenteNew: TAction
      Category = '1-Orcamento'
      Hint = 'Incluir Cliente'
      ImageIndex = 16
      ShortCut = 16497
      OnExecute = ActEmitenteNewExecute
    end
    object ActFone: TAction
      Category = '1-Orcamento'
      Hint = 'Fazer a Liga'#231#227'o'
      ImageIndex = 46
      OnExecute = ActFoneExecute
    end
    object ActLicenca: TAction
      Category = '2-Multforma'
      Hint = 'ID do Cliente e Validade'
      ImageIndex = 2
      ShortCut = 117
      OnExecute = ActLicencaExecute
    end
    object ActMS: TAction
      Category = '2-Multforma'
      ImageIndex = 36
      ShortCut = 16502
      OnExecute = ActMSExecute
    end
    object ActAllSuport: TAction
      Category = '2-Multforma'
      Hint = 'Carrega todos os clientes de Loca'#231#227'o'
      ImageIndex = 3
      OnExecute = ActAllSuportExecute
    end
    object ActAllPeriodo: TAction
      Category = '2-Multforma'
      Hint = 'Carrega todos os clintes que tiveram suporte no per'#237'odo'
      ImageIndex = 29
      OnExecute = ActAllPeriodoExecute
    end
    object ActAllCREmissao: TAction
      Category = '2-Multforma'
      Hint = 'Contas '#224' Receber por emiss'#227'o'
      ImageIndex = 39
      OnExecute = ActAllCREmissaoExecute
    end
  end
  object ADODsTodosContatos: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    OnCalcFields = ADODsTodosContatosCalcFields
    CommandText = '--------------- Visualizar'#13#10'select top 50'#13#10'  A.Nr_Contato, A.Dt_Contato, A.Nm_Contato, A.Cd_Ocorrencia,'#13#10'  B.Ds_Ocorrencia, A.St_Contato, A.Dt_NovoContato, A.Cd_Usuario,'#13#10'  A.Mm_Observacao, A.Nr_Orcamento, A.Cd_Emitente,'#13#10'  Cast( A.Cd_Ocorrencia as VarChar( 5 ) ) + '''' - '''' + B.Ds_Ocorrencia as Dp_Ocorrencia,'#13#10'  case A.St_Contato'#13#10'    when ''''1'''' then ''''Aberto'''#13#10'    when ''''2'''' then ''''Encerrado'''#13#10'  end as Dp_Contato'#13#10#13#10'from'#13#10'  Contato A'#13#10#13#10'inner join'#13#10'  Contato_Ocorrencia B'#13#10'on'#13#10'  B.Cd_Ocorrencia = A.Cd_Ocorrencia'#13#10#13#10'where'#13#10'  A.Cd_Emitente = :Cd_Emitente '#13#10#13#10'order by'#13#10'  A.Cd_Emitente, A.Nr_Contato desc'#13#10
    DataSource = DsContato
    MasterFields = 'Cd_Emitente'
    Parameters = <
      item
        Name = 'Cd_Emitente'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 4772
      end>
    Prepared = True
    Left = 78
    Top = 321
    object ADODsTodosContatosNr_Contato: TSmallintField
      DisplayLabel = 'Contato'
      FieldName = 'Nr_Contato'
      DisplayFormat = '#,##0'
    end
    object ADODsTodosContatosDt_Contato: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'Dt_Contato'
      DisplayFormat = 'dd/mm/yyyy HH:mm'
    end
    object ADODsTodosContatosNm_Contato: TStringField
      DisplayLabel = 'Nome do Contato'
      FieldName = 'Nm_Contato'
      Size = 50
    end
    object ADODsTodosContatosCd_Ocorrencia: TSmallintField
      FieldName = 'Cd_Ocorrencia'
    end
    object ADODsTodosContatosDs_Ocorrencia: TStringField
      DisplayLabel = 'Ocorr'#234'ncia'
      FieldName = 'Ds_Ocorrencia'
      Size = 50
    end
    object ADODsTodosContatosSt_Contato: TStringField
      FieldName = 'St_Contato'
      FixedChar = True
      Size = 1
    end
    object ADODsTodosContatosCd_Usuario: TStringField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'Cd_Usuario'
      Size = 15
    end
    object ADODsTodosContatosDp_Ocorrencia: TStringField
      FieldName = 'Dp_Ocorrencia'
      ReadOnly = True
      Size = 58
    end
    object ADODsTodosContatosDp_Contato: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'Dp_Contato'
      ReadOnly = True
      Size = 9
    end
    object ADODsTodosContatosDp_Hora: TStringField
      DisplayLabel = 'Hora'
      FieldKind = fkCalculated
      FieldName = 'Dp_Hora'
      Size = 5
      Calculated = True
    end
    object ADODsTodosContatosnr_orcamento: TIntegerField
      DisplayLabel = 'Or'#231'amento'
      FieldName = 'nr_orcamento'
    end
    object ADODsTodosContatosdt_novocontato: TDateTimeField
      DisplayLabel = 'Agendamento'
      FieldName = 'dt_novocontato'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object ADODsTodosContatosDp_Usuario: TStringField
      DisplayLabel = 'Usu'#225'rio'
      FieldKind = fkCalculated
      FieldName = 'Dp_Usuario'
      Size = 15
      Calculated = True
    end
    object ADODsTodosContatoscd_emitente: TIntegerField
      FieldName = 'cd_emitente'
    end
    object ADODsTodosContatosMm_Observacao: TMemoField
      FieldName = 'Mm_Observacao'
      BlobType = ftMemo
    end
  end
  object DsTodosContatos: TDataSource
    DataSet = ADODsTodosContatos
    Left = 49
    Top = 321
  end
  object PopMenContato: TPopupMenu
    Images = FrmMain.ImgLstMenu
    Left = 196
    Top = 142
    object MenItemEmitente: TMenuItem
      Action = ActEmitente
      Caption = 'Cliente'
    end
    object MenItemReContato: TMenuItem
      Action = ActContato
      Caption = 'Re-Agendar Contato'
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object MenItemContato: TMenuItem
      Caption = 'Alterar o Contato atual'
      ImageIndex = 25
      OnClick = MenItemContatoClick
    end
  end
  object ADOCmdTA: TMultADOCMD
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLOther0.Strings = (
      'create table #emitente_ta'
      '  ('
      '  cd_emitente int,'
      '  nr_contato smallint'
      '  )'
    )
    SQLOther1.Strings = (
      'delete from'
      '  #Emitente_TA'
    )
    SQLOther2.Strings = (
      '-- Utilizando datas'
      'insert into #Emitente_TA'
      'select distinct'
      '  C.Cd_Emitente,'
      '  ('
      '  select'
      '    max( CM.Nr_Contato )'
      '    '
      '  from'
      '    Contato CM'
      '    '
      '  where'
      '    CM.Cd_Emitente = C.Cd_Emitente'
      '  )'
      ''
      'from'
      '  Contato C'
      ''
      'inner join'
      '  Emitente E'
      'on'
      '  E.Cd_Emitente = C.Cd_Emitente'
      '  /* Cd_Grupo */'
      ''
      'inner join'
      '  Emitente_Endereco EE'
      'on'
      '  EE.Cd_Emitente = E.Cd_Emitente and'
      '  EE.Nr_Endereco = E.Nr_Endereco'
      '  /* Cd_Cidade */'
      '  /* Cd_Rota */'
      ''
      'where'
      '  /* Dt_Start */'
      '  /* Dt_End */'
      '  /* Cd_Ocorrencia */'
      '  /* St_Contato */'
      '  /* Cd_Usuario */'
      ''
    )
    SQLOther3.Strings = (
      '-- Pelo prazo sem acionamento'
      'insert into #Emitente_TA'
      'select'
      '  E.Cd_Emitente,'
      '  ('
      '  select'
      '    max( CM.Nr_Contato )'
      '    '
      '  from'
      '    Contato CM'
      '    '
      '  where'
      '    CM.Cd_Emitente = E.Cd_Emitente'
      '  )'
      ''
      'from'
      '  Emitente E'
      ''
      'inner join'
      '  Emitente_Endereco EE'
      'on'
      '  EE.Cd_Emitente = E.Cd_Emitente and'
      '  EE.Nr_Endereco = E.Nr_Endereco'
      '  /* Cd_Cidade */'
      '  /* Cd_Rota */'
      ''
      'where'
      '  /* Cd_Grupo */'
      '  '
      '  not exists('
      '    select'
      '      C.Nr_Contato'
      ''
      '    from'
      '      Contato C'
      ''
      '    where'
      '      C.Cd_Emitente = E.Cd_Emitente and'
      '      /* Datas */'
      '      /* Cd_Ocorrencia */'
      '      /* St_Contato */'
      '      /* Cd_Usuario */'
      '    )'
    )
    SQLOther4.Strings = (
      '-- Cliente sem acionamento - selecionado pela consulta'
      'insert into #Emitente_TA( Cd_Emitente ) values( :Cd_Emitente )'
    )
    SQLOther5.Strings = (
      '--------------- Todos os clientes de suporte'
      'insert into #Emitente_TA( Cd_Emitente )'
      'select'
      '  E.Cd_Emitente'
      ''
      'from'
      '  Emitente E'
      ''
      'where'
      '  E.Cd_Grupo = 5 and'
      '  E.Nr_Pagamento in ( 10, 20 ) and'
      '  not exists('
      '    select'
      '      ETA.Cd_Emitente'
      ''
      '    from'
      '      #Emitente_TA ETA'
      ''
      '    where'
      '      ETA.Cd_Emitente = E.Cd_Emitente'
      '    )'
    )
    SQLOther6.Strings = (
      '--------------- Todos os clientes que tiveram suporte'
      'insert into #Emitente_TA( Cd_Emitente )'
      'select distinct'
      '  C.Cd_Emitente'
      ''
      'from'
      '  Contato C'
      ''
      'where'
      '  C.Dt_Contato >= :Dt_Start and'
      '  C.Dt_Contato  < :Dt_End and'
      '  not exists('
      '    select'
      '      ETA.Cd_Emitente'
      ''
      '    from'
      '      #Emitente_TA ETA'
      ''
      '    where'
      '      ETA.Cd_Emitente = C.Cd_Emitente'
      '    )'
    )
    SQLOther7.Strings = (
      '--------------- Todos os clientes que tiveram suporte'
      'insert into #Emitente_TA( Cd_Emitente )'
      'select distinct'
      '  C.Cd_Emitente'
      ''
      'from'
      '  Receber C'
      ''
      'where'
      '  C.Dt_Emissao >= :Dt_Start and'
      '  C.Dt_Emissao  < :Dt_End and'
      '  not exists('
      '    select'
      '      ETA.Cd_Emitente'
      ''
      '    from'
      '      #Emitente_TA ETA'
      ''
      '    where'
      '      ETA.Cd_Emitente = C.Cd_Emitente'
      '    )'
    )
    Left = 94
    Top = 223
  end
  object ADODsReceber: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    OnCalcFields = ADODsReceberCalcFields
    CommandText = 'select'#13#10'  R.Cd_Filial, F.Nm_Abreviado, R.Nr_Receber, R.Dt_Emissao, R.Nr_Orcamento,'#13#10'  R.St_Receber, RP.Nr_Parcela, RP.Dt_Vencimento, RP.Vl_Parcela, RP.Vl_Recebido,'#13#10'  FO.Nm_Funcionario, O.Nr_Fatura, R.Cd_Emitente, P.Nm_Portador,'#13#10'  Dt_Pagamento ='#13#10'  ('#13#10'  select '#13#10'    max( RH.Dt_Lancamento )'#13#10#13#10'  from'#13#10'    Receber_Historico RH'#13#10#13#10'  where'#13#10'    RH.Cd_Filial = RP.Cd_Filial and'#13#10'    RH.Nr_Receber = RP.Nr_Receber and'#13#10'    RH.Nr_Parcela  = RP.Nr_Parcela and'#13#10'    RH.Tp_Lancamento = ''''2'''#13#10'  )'#13#10#13#10'from'#13#10'  Receber R'#13#10#13#10'inner join'#13#10'  Filial F'#13#10'on'#13#10'  F.Cd_Filial = R.Cd_Filial'#13#10#13#10'inner join'#13#10'  Receber_Parcela RP'#13#10'on'#13#10'  RP.Cd_Filial  = R.Cd_Filial and'#13#10'  RP.Nr_Receber = R.Nr_Receber'#13#10#13#10'inner join'#13#10'  Portador P'#13#10'on'#13#10'  P.Cd_Portador = RP.Cd_Portador'#13#10#13#10'left join'#13#10'  Orcamento O'#13#10'on'#13#10'  O.Cd_Filial    = R.Cd_Filial and'#13#10'  O.Nr_Orcamento = R.Nr_Orcamento'#13#10#13#10'left join'#13#10'  Funcionario FO'#13#10'on'#13#10'  FO.Cd_Funcionario = O.Cd_Funcionario'#13#10#13#10'where'#13#10'  R.Cd_Emitente = :Cd_Emitente and'#13#10'  R.St_Receber < ''''4'''#13#10#13#10'order by'#13#10'  R.Cd_Emitente, RP.Dt_Vencimento desc'#13#10'  --R.Cd_Filial, R.Nr_Receber desc, RP.Nr_Parcela desc'
    DataSource = DsContato
    IndexFieldNames = 'Cd_Emitente'
    MasterFields = 'Cd_Emitente'
    Parameters = <
      item
        Name = 'Cd_Emitente'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 3641
      end>
    Left = 787
    Top = 321
    object ADODsRecebernr_receber: TIntegerField
      DisplayLabel = 'N'#186' Receber'
      FieldName = 'nr_receber'
    end
    object ADODsRecebervl_recebido: TBCDField
      DisplayLabel = 'Recebido'
      FieldName = 'vl_recebido'
      DisplayFormat = '#,##0.00'
      Precision = 12
      Size = 2
    end
    object ADODsReceberDt_Emissao: TDateTimeField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'Dt_Emissao'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object ADODsReceberst_receber: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'st_receber'
      FixedChar = True
      Size = 1
    end
    object ADODsReceberDp_Receber: TStringField
      DisplayLabel = 'N'#186' Receber'
      FieldKind = fkCalculated
      FieldName = 'Dp_Receber'
      Calculated = True
    end
    object ADODsRecebernr_orcamento: TIntegerField
      DisplayLabel = 'Or'#231'amento'
      FieldName = 'nr_orcamento'
    end
    object ADODsRecebernm_abreviado: TStringField
      DisplayLabel = 'Filial'
      FieldName = 'nm_abreviado'
    end
    object ADODsRecebernm_funcionario: TStringField
      DisplayLabel = 'Vendedor'
      FieldName = 'nm_funcionario'
      Size = 50
    end
    object ADODsRecebercd_filial: TSmallintField
      FieldName = 'cd_filial'
    end
    object ADODsReceberVl_Saldo: TFloatField
      DisplayLabel = 'Saldo'
      FieldKind = fkCalculated
      FieldName = 'Vl_Saldo'
      DisplayFormat = '#,##0.00'
      Calculated = True
    end
    object ADODsRecebernr_parcela: TSmallintField
      FieldName = 'nr_parcela'
    end
    object ADODsReceberDt_Vencimento: TDateTimeField
      DisplayLabel = 'Vencimento'
      FieldName = 'dt_vencimento'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object ADODsRecebervl_parcela: TBCDField
      DisplayLabel = 'Parcela'
      FieldName = 'vl_parcela'
      DisplayFormat = '#,##0.00'
      Precision = 12
      Size = 2
    end
    object ADODsReceberNr_Fatura: TIntegerField
      FieldName = 'Nr_Fatura'
    end
    object ADODsReceberCd_Emitente: TIntegerField
      FieldName = 'Cd_Emitente'
    end
    object ADODsReceberNm_Portador: TStringField
      DisplayLabel = 'Portador'
      FieldName = 'Nm_Portador'
      Size = 50
    end
    object ADODsReceberDt_Pagamento: TDateTimeField
      DisplayLabel = 'Pagamento'
      FieldName = 'Dt_Pagamento'
      ReadOnly = True
      DisplayFormat = 'dd/mm/yyyy'
    end
    object ADODsReceberNr_Atraso: TSmallintField
      DisplayLabel = 'Atraso'
      FieldKind = fkCalculated
      FieldName = 'Nr_Atraso'
      EditFormat = '#,###'
      Calculated = True
    end
  end
  object DsReceber: TDataSource
    DataSet = ADODsReceber
    Left = 758
    Top = 321
  end
  object ADODsDetalhe: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    OnCalcFields = ADODsDetalheCalcFields
    CommandText = 'select'#13#10'  Cd_Emitente, Nr_Computador, Fl_SQL, Nm_Servidor, Fl_Dedicado, Nm_Contato,'#13#10'  Ds_EMail_Contato, Id_MSN, id_Skype, Nm_Proprietario, Mm_ObsSuporte,'#13#10'  Fl_EMailCob, Ds_EmailCob, Vl_Limite_Credito'#13#10#13#10'from'#13#10'  Emitente'#13#10#13#10'where'#13#10'  Cd_Emitente = :Cd_Emitente'
    DataSource = DsContato
    IndexFieldNames = 'Cd_Emitente'
    MasterFields = 'Cd_Emitente'
    Parameters = <
      item
        Name = 'Cd_Emitente'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = nil?
      end>
    Left = 929
    Top = 321
    object ADODsDetalheCd_Emitente: TIntegerField
      FieldName = 'Cd_Emitente'
    end
    object ADODsDetalheNr_Computador: TSmallintField
      FieldName = 'Nr_Computador'
    end
    object ADODsDetalheFl_SQL: TStringField
      FieldName = 'Fl_SQL'
      FixedChar = True
      Size = 1
    end
    object ADODsDetalheDp_SQL: TStringField
      FieldKind = fkCalculated
      FieldName = 'Dp_SQL'
      Size = 30
      Calculated = True
    end
    object ADODsDetalheNm_Servidor: TStringField
      FieldName = 'Nm_Servidor'
      Size = 50
    end
    object ADODsDetalheFl_Dedicado: TStringField
      FieldName = 'Fl_Dedicado'
      FixedChar = True
      Size = 1
    end
    object ADODsDetalheDp_Dedicado: TStringField
      FieldKind = fkCalculated
      FieldName = 'Dp_Dedicado'
      Size = 3
      Calculated = True
    end
    object ADODsDetalheNm_Contato: TStringField
      FieldName = 'Nm_Contato'
      Size = 50
    end
    object ADODsDetalheId_MSN: TStringField
      FieldName = 'Id_MSN'
      Size = 150
    end
    object ADODsDetalheid_Skype: TStringField
      FieldName = 'id_Skype'
      Size = 50
    end
    object ADODsDetalheNm_Proprietario: TStringField
      FieldName = 'Nm_Proprietario'
      Size = 50
    end
    object ADODsDetalheDs_EMail_Contato: TStringField
      FieldName = 'Ds_EMail_Contato'
      Size = 150
    end
    object ADODsDetalheMm_ObsSuporte: TMemoField
      FieldName = 'Mm_ObsSuporte'
      BlobType = ftMemo
    end
    object ADODsDetalheFl_EMailCob: TStringField
      FieldName = 'Fl_EMailCob'
      FixedChar = True
      Size = 1
    end
    object ADODsDetalheDs_EmailCob: TStringField
      FieldName = 'Ds_EmailCob'
      Size = 150
    end
    object ADODsDetalheDp_EMailCob: TStringField
      FieldKind = fkCalculated
      FieldName = 'Dp_EMailCob'
      Size = 3
      Calculated = True
    end
    object ADODsDetalheVl_Limite_Credito: TBCDField
      FieldName = 'Vl_Limite_Credito'
      DisplayFormat = '#,##0.00'
      Precision = 12
      Size = 2
    end
  end
  object DsDetalhe: TDataSource
    DataSet = ADODsDetalhe
    Left = 899
    Top = 321
  end
  object PopMenCR: TPopupMenu
    Images = FrmMain.ImgLstMenu
    Left = 226
    Top = 143
    object ItemMenAtualVencto: TMenuItem
      Caption = 'Atualizar Vencimento'
      ImageIndex = 29
      OnClick = ItemMenAtualVenctoClick
    end
    object ItemMenCRImprimir: TMenuItem
      Caption = 'Imprimir Boleto'
      ImageIndex = 20
      OnClick = ItemMenCRImprimirClick
    end
    object ItemMenCREMail: TMenuItem
      Caption = 'Enviar por E-Mail'
      ImageIndex = 53
      OnClick = ItemMenCREMailClick
    end
    object ItemMenPublicar: TMenuItem
      Caption = 'Publicar Boleto no Site'
      ImageIndex = 10
      OnClick = ItemMenPublicarClick
    end
  end
  object DsAnalise: TDataSource
    DataSet = ADODsAnalise
    Left = 384
    Top = 320
  end
  object ADODsAnalise: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    CommandText = 'declare'#13#10'  @Cd_Filial SmallInt,'#13#10'  @Cd_Emitente Int,'#13#10'  @Dt_Start SmallDateTime,'#13#10'  @Cd_Laboratorio SmallInt'#13#10#13#10'select'#13#10'  @Cd_Filial      = :Cd_Filial,'#13#10'  @Cd_Emitente    = :Cd_Emitente,'#13#10'  @Dt_Start       = :Dt_Start,'#13#10'  @Cd_Laboratorio = :Cd_Laboratorio'#13#10#13#10'if Object_ID( ''''TempDB..##ProdAnalise'''' ) is not null'#13#10'  delete from ##ProdAnalise where Nr_SPID = @@SPID'#13#10#13#10'else'#13#10'  create table ##ProdAnalise'#13#10'  ('#13#10'  Nr_SPID Int,'#13#10'  Cd_Produto Int,'#13#10'  Dt_Fatura SmallDateTime,'#13#10'  Qt_Item numeric( 12, 2 ),'#13#10'  Vl_Unitario numeric( 12, 2 ),'#13#10'  Vl_TotalVenda numeric( 12, 2 )'#13#10'  )'#13#10#13#10'--------------- produtos do or'#231'amento'#13#10'insert into ##ProdAnalise'#13#10'select'#13#10'  @@SPID, OI.Cd_Produto, OT.Dt_Fatura, OI.Qt_Item, OI.Vl_UnitarioVenda, OI.Vl_Venda'#13#10#13#10'from'#13#10'  Orcamento_Total OT'#13#10#13#10'inner join'#13#10'  Orcamento_Item_Total OI'#13#10'on'#13#10'  OI.Cd_Filial     = OT.Cd_Filial and'#13#10'  OI.Nr_Orcamento  = OT.Nr_Orcamento and'#13#10'  OI.Fl_Confirmado = ''''1'''#13#10#13#10'--------------- SQLOther2'#13#10'/* Fabricante */'#13#10#13#10'where'#13#10'  OT.Cd_Filial    = @Cd_Filial and'#13#10'  OT.Cd_Emitente  = @Cd_Emitente and'#13#10'  OT.St_Orcamento = ''''9'''' and'#13#10'  OT.Dt_Fatura    < @Dt_Start'#13#10#13#10#13#10'  '#13#10'--------------- SQLOther1'#13#10'/* Projetos */'#13#10#13#10#13#10#13#10'--------------- Monta o resultset'#13#10'select'#13#10'  PA.Nr_SPID, PA.Cd_Produto, P.Nm_Produto,'#13#10'  sum( PA.Qt_Item ) as Qt_Item,'#13#10'  max( PA.Dt_Fatura ) as Dt_UltimaCompra,'#13#10'  min( PA.Dt_Fatura ) as Dt_PrimeiraCompra,'#13#10'  max( PA.Qt_Item ) as Qt_MaiorCompra,'#13#10'  min( PA.Qt_Item ) as Qt_MenorCompra,'#13#10'  Vl_UltimaCompra ='#13#10'    ('#13#10#9'select top 1'#13#10#9'  Vl_Unitario'#13#10#13#10#9'from'#13#10#9'  ##ProdAnalise UC'#13#10#13#10#9'where'#13#10#9'  UC.Nr_SPID    = PA.Nr_SPID and'#13#10#9'  UC.Cd_Produto = PA.Cd_Produto'#13#10#9'  '#13#10#9'order by'#13#10#9'  UC.Dt_Fatura desc '#13#10#9')    '#13#10#13#10'from'#13#10'  ##ProdAnalise PA'#13#10#13#10'inner join'#13#10'  Produto P'#13#10'on'#13#10'  P.Cd_Produto = PA.Cd_Produto'#13#10#13#10'where'#13#10'  PA.Nr_SPID = @@SPID'#13#10#13#10'group by'#13#10'  PA.nr_SPID, PA.Cd_Produto, P.Nm_Produto'#13#10#13#10'order by'#13#10'  P.Nm_Produto'
    Parameters = <
      item
        Name = 'Cd_Filial'
        DataType = ftString
        Size = 1
        Value = '1'
      end
      item
        Name = 'Cd_Emitente'
        DataType = ftString
        Size = 3
        Value = '774'
      end
      item
        Name = 'Dt_Start'
        DataType = ftString
        Size = 10
        Value = '21/01/2018'
      end
      item
        Name = 'Cd_Laboratorio'
        DataType = ftSmallint
        Size = -1
        Value = nil?
      end>
    SQLOther0.Strings = (
      'declare'
      '  @Cd_Filial SmallInt,'
      '  @Cd_Emitente Int,'
      '  @Dt_Start SmallDateTime,'
      '  @Cd_Laboratorio SmallInt'
      ''
      'select'
      '  @Cd_Filial      = :Cd_Filial,'
      '  @Cd_Emitente    = :Cd_Emitente,'
      '  @Dt_Start       = :Dt_Start,'
      '  @Cd_Laboratorio = :Cd_Laboratorio'
      ''
      'if Object_ID( ''''TempDB..##ProdAnalise'''' ) is not null'
      '  delete from ##ProdAnalise where Nr_SPID = @@SPID'
      ''
      'else'
      '  create table ##ProdAnalise'
      '  ('
      '  Nr_SPID Int,'
      '  Cd_Produto Int,'
      '  Dt_Fatura SmallDateTime,'
      '  Qt_Item numeric( 12, 2 ),'
      '  Vl_Unitario numeric( 12, 2 ),'
      '  Vl_TotalVenda numeric( 12, 2 )'
      '  )'
      ''
      '--------------- produtos do or'#231'amento'
      'insert into ##ProdAnalise'
      'select'
      '  @@SPID, OI.Cd_Produto, OT.Dt_Fatura, OI.Qt_Item, OI.Vl_UnitarioVenda, OI.Vl_Venda'
      ''
      'from'
      '  Orcamento_Total OT'
      ''
      'inner join'
      '  Orcamento_Item_Total OI'
      'on'
      '  OI.Cd_Filial     = OT.Cd_Filial and'
      '  OI.Nr_Orcamento  = OT.Nr_Orcamento and'
      '  OI.Fl_Confirmado = ''''1'''
      ''
      '--------------- SQLOther2'
      '/* Fabricante */'
      ''
      'where'
      '  OT.Cd_Filial    = @Cd_Filial and'
      '  OT.Cd_Emitente  = @Cd_Emitente and'
      '  OT.St_Orcamento = ''''9'''' and'
      '  OT.Dt_Fatura    < @Dt_Start'
      ''
      ''
      '  '
      '--------------- SQLOther1'
      '/* Projetos */'
      ''
      ''
      ''
      '--------------- Monta o resultset'
      'select'
      '  PA.Nr_SPID, PA.Cd_Produto, P.Nm_Produto,'
      '  sum( PA.Qt_Item ) as Qt_Item,'
      '  max( PA.Dt_Fatura ) as Dt_UltimaCompra,'
      '  min( PA.Dt_Fatura ) as Dt_PrimeiraCompra,'
      '  max( PA.Qt_Item ) as Qt_MaiorCompra,'
      '  min( PA.Qt_Item ) as Qt_MenorCompra,'
      '  Vl_UltimaCompra ='
      '    ('
      #9'select top 1'
      #9'  Vl_Unitario'
      ''
      #9'from'
      #9'  ##ProdAnalise UC'
      ''
      #9'where'
      #9'  UC.Nr_SPID    = PA.Nr_SPID and'
      #9'  UC.Cd_Produto = PA.Cd_Produto'
      #9'  '
      #9'order by'
      #9'  UC.Dt_Fatura desc '
      #9')    '
      ''
      'from'
      '  ##ProdAnalise PA'
      ''
      'inner join'
      '  Produto P'
      'on'
      '  P.Cd_Produto = PA.Cd_Produto'
      ''
      'where'
      '  PA.Nr_SPID = @@SPID'
      ''
      'group by'
      '  PA.nr_SPID, PA.Cd_Produto, P.Nm_Produto'
      ''
      'order by'
      '  P.Nm_Produto'
    )
    SQLOther1.Strings = (
      '--------------- produtos dos projetos'
      'insert into ##ProdAnalise'
      'select'
      '  @@SPID, OI.Cd_Produto, OT.Dt_Fatura, OI.Qt_Vendido, OI.Vl_Unitario, OI.Vl_Venda'
      ''
      'from'
      '  Orcamento_Total OT'
      ''
      'inner join'
      '  Orcamento_Projeto_Item_Total OI'
      'on'
      '  OI.Cd_Filial     = OT.Cd_Filial and'
      '  OI.Nr_Orcamento  = OT.Nr_Orcamento'
      ''
      '/* Fabricante */'
      ''
      'where'
      '  OT.Cd_Filial    = @Cd_Filial and'
      '  OT.Cd_Emitente  = @Cd_Emitente and'
      '  OT.St_Orcamento = ''''9'''' and'
      '  OT.Dt_Fatura    < @Dt_Start'
      ''
    )
    SQLOther2.Strings = (
      '--------------- Filtra o fabricante'
      'inner join'
      '  Produto P'
      'on'
      '  P.Cd_Produto     = OI.Cd_Produto and'
      '  P.Cd_Laboratorio = @Cd_Laboratorio'
    )
    Left = 416
    Top = 320
    object ADODsAnaliseNr_SPID: TIntegerField
      FieldName = 'Nr_SPID'
    end
    object ADODsAnaliseCd_Produto: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'Cd_Produto'
    end
    object ADODsAnaliseNm_Produto: TStringField
      DisplayLabel = 'Produto'
      FieldName = 'Nm_Produto'
      Size = 120
    end
    object ADODsAnaliseQt_Item: TBCDField
      DisplayLabel = 'Total Comprado'
      FieldName = 'Qt_Item'
      ReadOnly = True
      DisplayFormat = '#,##0.##'
      Precision = 32
      Size = 2
    end
    object ADODsAnaliseDt_UltimaCompra: TDateTimeField
      DisplayLabel = #218'ltima Compra'
      FieldName = 'Dt_UltimaCompra'
      ReadOnly = True
      DisplayFormat = 'dd/mm/yyyy'
    end
    object ADODsAnaliseDt_PrimeiraCompra: TDateTimeField
      DisplayLabel = 'Primeira Compra'
      FieldName = 'Dt_PrimeiraCompra'
      ReadOnly = True
      DisplayFormat = 'dd/mm/yyyy'
    end
    object ADODsAnaliseQt_MaiorCompra: TBCDField
      DisplayLabel = 'Maior Compra'
      FieldName = 'Qt_MaiorCompra'
      ReadOnly = True
      DisplayFormat = '#,##0.##'
      Precision = 12
      Size = 2
    end
    object ADODsAnaliseQt_MenorCompra: TBCDField
      DisplayLabel = 'Menor Compra'
      FieldName = 'Qt_MenorCompra'
      ReadOnly = True
      DisplayFormat = '#,##0.##'
      Precision = 12
      Size = 2
    end
    object ADODsAnaliseVl_UltimaCompra: TBCDField
      DisplayLabel = 'Unit. Ultima Compra'
      FieldName = 'Vl_UltimaCompra'
      ReadOnly = True
      DisplayFormat = '#,##0.00'
      Precision = 12
      Size = 2
    end
  end
end
