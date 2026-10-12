object FrmEntrada_Report: TFrmEntrada_Report
  Left = 354
  Top = 207
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Entradas no Per'#237'odo'
  ClientHeight = 326
  ClientWidth = 716
  Color = clWhite
  Ctl3D = False
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
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
    Height = 326
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 695
    Height = 326
    Align = alClient
    ParentColor = True
    TabOrder = 1
    ExplicitWidth = 689
    object BvlSeparator: TBevel
      Left = 3
      Top = 296
      Width = 687
      Height = 5
      Shape = bsTopLine
    end
    object Label1: TLabel
      Left = 5
      Top = 2
      Width = 41
      Height = 13
      Caption = 'Per'#237'odo:'
    end
    object Label10: TLabel
      Left = 5
      Top = 38
      Width = 57
      Height = 13
      Caption = 'Fornecedor:'
    end
    object SbEmitente: TSpeedButton
      Left = 55
      Top = 52
      Width = 23
      Height = 19
      Hint = 'Seleciona Cliente'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbEmitenteClick
    end
    object LblReport: TLabel
      Left = 404
      Top = 2
      Width = 84
      Height = 13
      Caption = 'Tipo de Relat'#243'rio:'
    end
    object Label2: TLabel
      Left = 282
      Top = 2
      Width = 45
      Height = 13
      Caption = 'Situa'#231#227'o:'
    end
    object Label5: TLabel
      Left = 5
      Top = 72
      Width = 31
      Height = 13
      Caption = 'CFOP:'
    end
    object SbCFOP: TSpeedButton
      Left = 36
      Top = 86
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
    object Bevel1: TBevel
      Left = 3
      Top = 109
      Width = 687
      Height = 5
      Shape = bsTopLine
    end
    object SbGrupo: TSpeedButton
      Left = 45
      Top = 127
      Width = 23
      Height = 19
      Hint = 'Consulta de Grupo'
      Flat = True
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
      OnClick = SbGrupoClick
    end
    object LblGrupo: TLabel
      Left = 5
      Top = 112
      Width = 87
      Height = 13
      Caption = 'Grupo de Produto:'
    end
    object Label3: TLabel
      Left = 5
      Top = 147
      Width = 123
      Height = 13
      Caption = 'Excluir acerto de estoque:'
    end
    object Label4: TLabel
      Left = 194
      Top = 2
      Width = 64
      Height = 13
      Caption = 'Usar data de:'
    end
    object Label46: TLabel
      Left = 543
      Top = 2
      Width = 108
      Height = 13
      Caption = 'Finalidade da Emiss'#227'o:'
    end
    object BitBtnReport: TBitBtn
      Left = 522
      Top = 299
      Width = 85
      Height = 25
      Caption = '&Imprimir'
      TabOrder = 13
      OnClick = BitBtnReportClick
      Glyph.Data = {binary 1146 bytes}
    end
    object BitBtnCancel: TBitBtn
      Left = 608
      Top = 299
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 14
      OnClick = BitBtnCancelClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object EdtDt_Start: TDateEdit
      Left = 5
      Top = 16
      Width = 90
      Height = 19
      CheckOnExit = True
      DialogTitle = 'Selecione a Data'
      GlyphKind = gkCustom
      Glyph.Data = {binary 390 bytes}
      NumGlyphs = 1
      StartOfWeek = Sun
      TabOrder = 0
    end
    object EdtDt_End: TDateEdit
      Left = 100
      Top = 16
      Width = 90
      Height = 19
      CheckOnExit = True
      DialogTitle = 'Selecione a Data'
      GlyphKind = gkCustom
      Glyph.Data = {binary 390 bytes}
      NumGlyphs = 1
      StartOfWeek = Sun
      TabOrder = 1
    end
    object EdtCd_Emitente: TCurrencyEdit
      Tag = 1
      Left = 5
      Top = 52
      Width = 50
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 6
      OnExit = EdtCd_EmitenteExit
      OnKeyDown = EdtCd_EmitenteKeyDown
    end
    object EdtNm_Emitente: TEdit
      Left = 78
      Top = 52
      Width = 308
      Height = 19
      TabStop = False
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 50
      ParentFont = False
      ReadOnly = True
      TabOrder = 7
    end
    object CbReport: TComboBox
      Left = 404
      Top = 16
      Width = 134
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 2
      TabOrder = 4
      Text = 'Sint'#233'tico por Produto'
      Items.Strings = (
        'Anal'#237'tico'
        'Sint'#233'tico'
        'Sint'#233'tico por Produto'
      )
    end
    object CbSituacao: TComboBox
      Left = 282
      Top = 16
      Width = 119
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 3
      Text = 'Todas'
      Items.Strings = (
        'Todas'
        'Aberto'
        'Fechado'
        'Cancelado'
      )
    end
    object EdtCd_CFOP: TEdit
      Tag = 2
      Left = 5
      Top = 86
      Width = 31
      Height = 19
      MaxLength = 4
      TabOrder = 8
      OnExit = EdtCd_CFOPExit
      OnKeyDown = EdtCd_EmitenteKeyDown
    end
    object EdtDs_CFOP: TEdit
      Left = 60
      Top = 86
      Width = 287
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
      TabOrder = 9
    end
    object EdtCd_Grupo: TCurrencyEdit
      Tag = 2
      Left = 5
      Top = 127
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 10
      OnExit = EdtCd_GrupoExit
      OnKeyDown = EdtCd_EmitenteKeyDown
    end
    object EdtNm_Grupo: TEdit
      Left = 69
      Top = 127
      Width = 287
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
      TabOrder = 11
    end
    object CbAcerto: TComboBox
      Left = 5
      Top = 162
      Width = 50
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 1
      TabOrder = 12
      Text = 'N'#227'o'
      Items.Strings = (
        'Sim'
        'N'#227'o'
      )
    end
    object CbData: TComboBox
      Left = 194
      Top = 16
      Width = 87
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 2
      Text = 'Lan'#231'amento'
      Items.Strings = (
        'Lan'#231'amento'
        'Emiss'#227'o'
      )
    end
    object SctRepSintetico: TSctReport
      Left = 455
      Top = 122
      Width = 82
      Height = 44
      HorzScrollBar.Visible = False
      VertScrollBar.Visible = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 16
      Visible = False
      Minimized = True
      Prompt = True
      AutoRun = False
      SuppressStatus = False
      PixelsPerInch = 96
      STop = 16
      SLeft = 6
      SWidth = 836
      SHeight = 493
      MTop = 122
      MLeft = 455
      SAlign = alNone
      Version = vAce1_0
      object SctGrouppage1: TSctGrouppage
        Left = 35
        Top = 55
        Width = 27
        Height = 0
        Color = clWhite
        ParentColor = False
        TabOrder = 2
        ClipLabels = False
        PageSetup.Orientation = poPortrait
        PageSetup.Size = psA4
        PageSetup.Height = 11.69291338582677
        PageSetup.Width = 8.26771653543307
        PageSetup.PreviewSettings.ModalPreview = mpNonModal
        PageSetup.PreviewSettings.PreviewOwner = poAppOwned
        PageSetup.PreviewSettings.FormStyle = pfsMDIChild
        PageSetup.PreviewSettings.Zoom = azHeight
        PageSetup.LeftMargin = 0.3
        PageSetup.RightMargin = 0.3
        BorderType = btNone
        Description = 'Entradas no Per'#237'odo'
        CloseDataSet = False
        DataRange = drAllRecords
        OmitLastPgFt = False
        Head = SctBand1
        Detail = SctBand3
        Foot = SctBand5
        PageHead = SctBand2
        PageFoot = SctBand4
        DataSource = DsReport
        Order = 1
        object SctLevel1: TSctLevel
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          IsHeader = True
        end
        object SctLevel2: TSctLevel
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          IsHeader = True
        end
        object SctLevel3: TSctLevel
          Left = 0
          Top = 0
          Width = 0
          Height = 0
        end
        object SctLevel4: TSctLevel
          Left = 0
          Top = 0
          Width = 0
          Height = 0
        end
        object SctLevel5: TSctLevel
          Left = 0
          Top = 0
          Width = 0
          Height = 0
        end
        object SctDateTimeVar1: TSctDateTimeVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          UpdateLevel = SctLevel1
          AutoVar = True
          ID = vidDateTimeVar
        end
        object SctPageVar1: TSctPageVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          UpdateLevel = SctLevel2
          AutoVar = True
          ID = vidPageVar
        end
        object SctDataSourceGuide1: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = DmMaster.DsUsuario
        end
        object SctDataSourceGuide2: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = DmMaster.DsFilial
        end
        object SctDataSourceGuide3: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = FrmHistorico_Find.DsFind
        end
        object SctDataSourceGuide4: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = FrmEstado_Find.DsFind
        end
        object SctDBVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_Filial'
          DataSource = DmMaster.DsFilial
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDataSourceGuide5: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = DsReport
        end
        object SctDataSourceGuide6: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = DsProduto
        end
        object SctDataSourceGuide7: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = FrmEmitente_Find.DsFind
        end
        object SctDataSourceGuide8: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = FrmEmitente_Find.DsContato
        end
        object SctDBVar3: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nr_item'
          DataSource = DsProduto
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar4: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'cd_produto'
          DataSource = DsProduto
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar5: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nm_produto'
          DataSource = DsProduto
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar6: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'sg_unidade'
          DataSource = DsProduto
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar7: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'sg_estoque'
          DataSource = DsProduto
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar8: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'qt_item'
          DataSource = DsProduto
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar9: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'vl_unitario'
          DataSource = DsProduto
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar10: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'vl_total'
          DataSource = DsProduto
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar11: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'fl_lote'
          DataSource = DsProduto
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctDBVar12: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'cd_produto_emitente'
          DataSource = DsProduto
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportcd_filialVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'cd_filial'
          DataSource = DsReport
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportnr_entradaVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nr_entrada'
          DataSource = DsReport
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportst_entradaVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'st_entrada'
          DataSource = DsReport
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportcd_emitenteVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'cd_emitente'
          DataSource = DsReport
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportnm_emitenteVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nm_emitente'
          DataSource = DsReport
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportvl_produtoVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'vl_produto'
          DataSource = DsReport
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportvl_notaVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'vl_nota'
          DataSource = DsReport
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportDs_SituacaoVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ds_Situacao'
          DataSource = DsReport
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportmm_observacaoVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'mm_observacao'
          DataSource = DsReport
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object TotalOfvl_produto1: TSctTotalvar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Variable = adodsreportvl_produtoVar1
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidTotalVar
        end
        object TotalOfvl_nota1: TSctTotalvar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Variable = adodsreportvl_notaVar1
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidTotalVar
        end
        object adodsreportDt_LancamentoVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dt_Lancamento'
          DataSource = DsReport
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportDp_FaturaVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_Fatura'
          DataSource = DsReport
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object DataSourceGuide9: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = DsProdSintetico
        end
        object DataSourceGuide11: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = SctLevel3
          DataSource = FrmCFOP_Find.DsFind
        end
        object adodsreportdt_emissaoVar1: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'dt_emissao'
          DataSource = DsReport
          UpdateLevel = SctLevel3
          AutoVar = False
          ID = vidAutoDataVar
        end
        object SctBand1: TSctBand
          Left = 0
          Top = 0
          Width = 786
          Height = 5
          ParentColor = True
          BandName = 'Report Header'
          Updatelevel = SctLevel1
          Visible = False
        end
        object SctBand2: TSctBand
          Left = 0
          Top = 20
          Width = 786
          Height = 39
          ParentColor = True
          BandName = 'Page Header'
          Updatelevel = SctLevel2
          object Sctvarlabel35: TSctvarlabel
            Left = 2
            Top = 1
            Width = 211
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Entradas no Per'#237'odo'
          end
          object Sctvarlabel36: TSctvarlabel
            Left = 638
            Top = 1
            Width = 31
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Data:'
          end
          object Sctvarlabel37: TSctvarlabel
            Left = 671
            Top = 1
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = SctDateTimeVar1
            DataFormat.DisplayFormat = 'dd/mm/yyyy'
          end
          object Sctvarlabel38: TSctvarlabel
            Left = 635
            Top = 18
            Width = 34
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Hora:'
          end
          object Sctvarlabel39: TSctvarlabel
            Left = 671
            Top = 18
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = SctDateTimeVar1
            DataFormat.DisplayFormat = 'hh:mm:ss'
          end
          object SctLine6: TSctLine
            Left = 0
            Top = 31
            Width = 735
            Height = 7
          end
          object SctSubTitle_2: TSctvarlabel
            Left = 2
            Top = 20
            Width = 429
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            Caption = 'Per'#237'odo dd/mm/yyyy a dd/mm/yyyy'
          end
        end
        object SctBand3: TSctBand
          Left = 0
          Top = 109
          Width = 786
          Height = 17
          ParentColor = True
          BandName = 'Detail'
          Updatelevel = SctLevel3
          Stretch = True
          OnBeforePrint = SctBand3BeforePrint
          object Sctvarlabel41: TSctvarlabel
            Left = 0
            Top = 0
            Width = 60
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsreportnr_entradaVar1
            DataFormat.SuppressNulls = True
          end
          object Sctvarlabel42: TSctvarlabel
            Left = 60
            Top = 0
            Width = 91
            Height = 17
            Variable = adodsreportDs_SituacaoVar1
          end
          object SctVarData_2: TSctvarlabel
            Left = 153
            Top = 0
            Width = 65
            Height = 17
            AlignHorizontal = laCenter
            Variable = adodsreportDt_LancamentoVar1
          end
          object Sctvarlabel44: TSctvarlabel
            Left = 222
            Top = -1
            Width = 276
            Height = 17
            WrapText = True
            Stretch = True
            Variable = adodsreportnm_emitenteVar1
          end
          object Sctvarlabel45: TSctvarlabel
            Left = 660
            Top = 0
            Width = 75
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsreportvl_notaVar1
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
          end
          object Sctvarlabel46: TSctvarlabel
            Left = 567
            Top = 0
            Width = 86
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsreportvl_produtoVar1
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
          end
          object Sctvarlabel51: TSctvarlabel
            Left = 500
            Top = 0
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsreportDp_FaturaVar1
          end
        end
        object SctBand4: TSctBand
          Left = 0
          Top = 141
          Width = 786
          Height = 20
          ParentColor = True
          BandName = 'Page Footer'
          Updatelevel = SctLevel4
          object SctLine7: TSctLine
            Left = 0
            Top = 1
            Width = 735
            Height = 7
            AlignVertical = laTop
          end
          object Sctvarlabel48: TSctvarlabel
            Left = 2
            Top = 2
            Width = 344
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            Variable = SctDBVar1
          end
          object Sctvarlabel49: TSctvarlabel
            Left = 653
            Top = 2
            Width = 44
            Height = 17
            AlignHorizontal = laRight
            Caption = 'P'#225'gina:'
          end
          object Sctvarlabel50: TSctvarlabel
            Left = 700
            Top = 2
            Width = 35
            Height = 17
            AlignHorizontal = laRight
            Variable = SctPageVar1
            DataFormat.DisplayFormat = '#,###'
          end
        end
        object SctBand5: TSctBand
          Left = 0
          Top = 176
          Width = 786
          Height = 22
          ParentColor = True
          BandName = 'Report Footer'
          Updatelevel = SctLevel5
          object SctLine8: TSctLine
            Left = 530
            Top = 2
            Width = 205
            Height = 5
            AlignVertical = laTop
          end
          object Sctvarlabel32: TSctvarlabel
            Left = 532
            Top = 4
            Width = 50
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Totais:'
          end
          object SctTotalvarLabel2: TSctTotalvarLabel
            Left = 660
            Top = 4
            Width = 75
            Height = 17
            TotalVariable = TotalOfvl_nota1
            DataFormat.DisplayFormat = '#,##0.00'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object SctTotalvarLabel4: TSctTotalvarLabel
            Left = 588
            Top = 4
            Width = 65
            Height = 17
            TotalVariable = TotalOfvl_produto1
            DataFormat.DisplayFormat = '#,##0.00'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object SctSubBand1: TSctSubBand
          Left = 0
          Top = 74
          Width = 786
          Height = 20
          Color = 16316664
          BandName = 'PageHeaderBandSub'
          Updatelevel = SctLevel2
          Band = SctBand2
          Above = False
          object SctLine9: TSctLine
            Left = 0
            Top = 13
            Width = 735
            Height = 7
          end
          object Sctvarlabel52: TSctvarlabel
            Left = 0
            Top = 0
            Width = 60
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Entrada N '#186
          end
          object Sctvarlabel53: TSctvarlabel
            Left = 60
            Top = 0
            Width = 91
            Height = 17
            Caption = 'Situa'#231#227'o'
          end
          object SctLblData_2: TSctvarlabel
            Left = 153
            Top = 0
            Width = 65
            Height = 17
            AlignHorizontal = laCenter
            Caption = 'Lan'#231'amento'
          end
          object Sctvarlabel55: TSctvarlabel
            Left = 222
            Top = 0
            Width = 65
            Height = 17
            Caption = 'Fornecedor'
          end
          object Sctvarlabel56: TSctvarlabel
            Left = 660
            Top = 0
            Width = 75
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Valor'
          end
          object Sctvarlabel57: TSctvarlabel
            Left = 567
            Top = 0
            Width = 86
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Valor Produtos'
          end
          object Sctvarlabel47: TSctvarlabel
            Left = 500
            Top = 0
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Caption = 'S'#233'rie/Fatura'
          end
        end
      end
    end
    object SctRepAnalitico: TSctReport
      Left = 369
      Top = 122
      Width = 82
      Height = 44
      HorzScrollBar.Visible = False
      VertScrollBar.Visible = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 15
      Visible = False
      Minimized = True
      Prompt = True
      AutoRun = False
      SuppressStatus = False
      PixelsPerInch = 96
      STop = 5
      SLeft = 5
      SWidth = 836
      SHeight = 493
      MTop = 122
      MLeft = 369
      SAlign = alNone
      Version = vAce1_0
      object ReportPage: TSctGrouppage
        Left = 35
        Top = 55
        Width = 27
        Height = 0
        Color = clWhite
        ParentColor = False
        TabOrder = 2
        ClipLabels = False
        PageSetup.Orientation = poPortrait
        PageSetup.Size = psA4
        PageSetup.Height = 11.69291338582677
        PageSetup.Width = 8.26771653543307
        PageSetup.PreviewSettings.ModalPreview = mpNonModal
        PageSetup.PreviewSettings.PreviewOwner = poAppOwned
        PageSetup.PreviewSettings.FormStyle = pfsMDIChild
        PageSetup.PreviewSettings.Zoom = azHeight
        PageSetup.LeftMargin = 0.3
        PageSetup.RightMargin = 0.3
        BorderType = btNone
        Description = 'Entradas no Per'#237'odo'
        CloseDataSet = False
        DataRange = drAllRecords
        OmitLastPgFt = False
        Head = ReportHeaderBand
        Detail = DetailBand
        Foot = ReportFooterBand
        PageHead = PageHeaderBand
        PageFoot = PageFooterBand
        DataSource = DsReport
        Order = 1
        object ReportHeaderBandlevel: TSctLevel
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          IsHeader = True
        end
        object PageHeaderBandlevel: TSctLevel
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          IsHeader = True
        end
        object DetailBandlevel: TSctLevel
          Left = 0
          Top = 0
          Width = 0
          Height = 0
        end
        object PageFooterBandlevel: TSctLevel
          Left = 0
          Top = 0
          Width = 0
          Height = 0
        end
        object ReportFooterBandlevel: TSctLevel
          Left = 0
          Top = 0
          Width = 0
          Height = 0
        end
        object svarDateTime: TSctDateTimeVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          UpdateLevel = ReportHeaderBandlevel
          AutoVar = True
          ID = vidDateTimeVar
        end
        object svarPage: TSctPageVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          UpdateLevel = PageHeaderBandlevel
          AutoVar = True
          ID = vidPageVar
        end
        object DataSourceGuide1: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = DmMaster.DsUsuario
        end
        object DataSourceGuide2: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = DmMaster.DsFilial
        end
        object DataSourceGuide3: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = FrmHistorico_Find.DsFind
        end
        object DataSourceGuide4: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = FrmEstado_Find.DsFind
        end
        object adodsfilialDp_FilialVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_Filial'
          DataSource = DmMaster.DsFilial
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object DataSourceGuide: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = DsReport
        end
        object DataSourceGuide5: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DataLevel
          DataSource = DsProduto
        end
        object DataSourceGuide6: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = FrmEmitente_Find.DsFind
        end
        object DataSourceGuide7: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = FrmEmitente_Find.DsContato
        end
        object adodsprodutonr_itemVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nr_item'
          DataSource = DsProduto
          UpdateLevel = DataLevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsprodutocd_produtoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'cd_produto'
          DataSource = DsProduto
          UpdateLevel = DataLevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsprodutonm_produtoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nm_produto'
          DataSource = DsProduto
          UpdateLevel = DataLevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsprodutosg_unidadeVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'sg_unidade'
          DataSource = DsProduto
          UpdateLevel = DataLevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsprodutosg_estoqueVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'sg_estoque'
          DataSource = DsProduto
          UpdateLevel = DataLevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsprodutoqt_itemVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'qt_item'
          DataSource = DsProduto
          UpdateLevel = DataLevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsprodutovl_unitarioVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'vl_unitario'
          DataSource = DsProduto
          UpdateLevel = DataLevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsprodutovl_totalVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'vl_total'
          DataSource = DsProduto
          UpdateLevel = DataLevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsprodutofl_loteVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'fl_lote'
          DataSource = DsProduto
          UpdateLevel = DataLevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsprodutocd_produto_emitenteVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'cd_produto_emitente'
          DataSource = DsProduto
          UpdateLevel = DataLevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportcd_filialVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'cd_filial'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportcd_emitenteVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'cd_emitente'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportnm_emitenteVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nm_emitente'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportmm_observacaoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'mm_observacao'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object DataLevel: TSctLevel
          Left = 0
          Top = 0
          Width = 0
          Height = 0
        end
        object DataHeaderLevel: TSctLevel
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          IsHeader = True
        end
        object DataFooterLevel: TSctLevel
          Left = 0
          Top = 0
          Width = 0
          Height = 0
        end
        object adodsreportnr_entradaVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nr_entrada'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportvl_produtoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'vl_produto'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportvl_notaVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'vl_nota'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object TotalOfvl_nota: TSctTotalvar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Variable = adodsreportvl_notaVar
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidTotalVar
        end
        object TotalOfvl_produto: TSctTotalvar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          Variable = adodsreportvl_produtoVar
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidTotalVar
        end
        object adodsreportDs_SituacaoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Ds_Situacao'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportDt_LancamentoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dt_Lancamento'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object adodsreportDp_FaturaVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Dp_Fatura'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object DataSourceGuide8: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = DsProdSintetico
        end
        object DataSourceGuide10: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = FrmCFOP_Find.DsFind
        end
        object adodsreportdt_emissaoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'dt_emissao'
          DataSource = DsReport
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object ReportHeaderBand: TSctBand
          Left = 0
          Top = 0
          Width = 786
          Height = 5
          ParentColor = True
          BandName = 'Report Header'
          Updatelevel = ReportHeaderBandlevel
          Visible = False
        end
        object PageHeaderBand: TSctBand
          Left = 0
          Top = 20
          Width = 786
          Height = 39
          ParentColor = True
          BandName = 'Page Header'
          Updatelevel = PageHeaderBandlevel
          object SctTitle: TSctvarlabel
            Left = 2
            Top = 1
            Width = 211
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Entradas no Per'#237'odo'
          end
          object Sctvarlabel1: TSctvarlabel
            Left = 638
            Top = 1
            Width = 31
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Data:'
          end
          object Sctvarlabel2: TSctvarlabel
            Left = 671
            Top = 1
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = svarDateTime
            DataFormat.DisplayFormat = 'dd/mm/yyyy'
          end
          object Sctvarlabel3: TSctvarlabel
            Left = 635
            Top = 18
            Width = 34
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Hora:'
          end
          object Sctvarlabel4: TSctvarlabel
            Left = 671
            Top = 18
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = svarDateTime
            DataFormat.DisplayFormat = 'hh:mm:ss'
          end
          object SctLine1: TSctLine
            Left = 0
            Top = 31
            Width = 735
            Height = 7
          end
          object SctSubTitle_1: TSctvarlabel
            Left = 2
            Top = 20
            Width = 429
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            Caption = 'Per'#237'odo dd/mm/yyyy a dd/mm/yyyy'
          end
        end
        object DetailBand: TSctBand
          Left = 0
          Top = 109
          Width = 786
          Height = 17
          Color = 16316664
          BandName = 'Detail'
          Updatelevel = DetailBandlevel
          object Sctvarlabel10: TSctvarlabel
            Left = 0
            Top = 0
            Width = 60
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsreportnr_entradaVar
          end
          object Sctvarlabel14: TSctvarlabel
            Left = 60
            Top = 0
            Width = 91
            Height = 17
            Variable = adodsreportDs_SituacaoVar
          end
          object SctVarData_1: TSctvarlabel
            Left = 153
            Top = 0
            Width = 65
            Height = 17
            AlignHorizontal = laCenter
            Variable = adodsreportDt_LancamentoVar
            DataFormat.DisplayFormat = 'dd/mm/yyyy'
          end
          object Sctvarlabel16: TSctvarlabel
            Left = 222
            Top = 0
            Width = 276
            Height = 17
            Variable = adodsreportnm_emitenteVar
          end
          object Sctvarlabel17: TSctvarlabel
            Left = 660
            Top = 0
            Width = 75
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsreportvl_notaVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
          end
          object Sctvarlabel31: TSctvarlabel
            Left = 575
            Top = 0
            Width = 78
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsreportvl_produtoVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
          end
          object Sctvarlabel40: TSctvarlabel
            Left = 504
            Top = 0
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsreportDp_FaturaVar
          end
        end
        object PageFooterBand: TSctBand
          Left = 0
          Top = 235
          Width = 786
          Height = 20
          ParentColor = True
          BandName = 'Page Footer'
          Updatelevel = PageFooterBandlevel
          object SctLine4: TSctLine
            Left = 0
            Top = 1
            Width = 735
            Height = 7
            AlignVertical = laTop
          end
          object Sctvarlabel11: TSctvarlabel
            Left = 2
            Top = 2
            Width = 344
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            Variable = adodsfilialDp_FilialVar
          end
          object Sctvarlabel12: TSctvarlabel
            Left = 653
            Top = 2
            Width = 44
            Height = 17
            AlignHorizontal = laRight
            Caption = 'P'#225'gina:'
          end
          object Sctvarlabel13: TSctvarlabel
            Left = 700
            Top = 2
            Width = 35
            Height = 17
            AlignHorizontal = laRight
            Variable = svarPage
            DataFormat.DisplayFormat = '#,###'
          end
        end
        object ReportFooterBand: TSctBand
          Left = 0
          Top = 270
          Width = 786
          Height = 22
          ParentColor = True
          BandName = 'Report Footer'
          Updatelevel = ReportFooterBandlevel
          object SctLine3: TSctLine
            Left = 530
            Top = 2
            Width = 205
            Height = 5
            AlignVertical = laTop
          end
          object Sctvarlabel18: TSctvarlabel
            Left = 532
            Top = 4
            Width = 50
            Height = 17
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laRight
            Caption = 'Totais:'
          end
          object SctTotalvarLabel1: TSctTotalvarLabel
            Left = 660
            Top = 4
            Width = 75
            Height = 17
            TotalVariable = TotalOfvl_nota
            DataFormat.DisplayFormat = '#,##0.00'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object SctTotalvarLabel3: TSctTotalvarLabel
            Left = 588
            Top = 4
            Width = 65
            Height = 17
            TotalVariable = TotalOfvl_produto
            DataFormat.DisplayFormat = '#,##0.00'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object PageHeaderBandSub: TSctSubBand
          Left = 0
          Top = 74
          Width = 786
          Height = 20
          Color = 16316664
          BandName = 'PageHeaderBandSub'
          Updatelevel = PageHeaderBandlevel
          Band = PageHeaderBand
          Above = False
          object SctLine2: TSctLine
            Left = 0
            Top = 13
            Width = 735
            Height = 7
          end
          object Sctvarlabel5: TSctvarlabel
            Left = 0
            Top = 0
            Width = 60
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Entrada N '#186
          end
          object Sctvarlabel6: TSctvarlabel
            Left = 60
            Top = 0
            Width = 91
            Height = 17
            Caption = 'Situa'#231#227'o'
          end
          object SctLblData_1: TSctvarlabel
            Left = 153
            Top = 0
            Width = 65
            Height = 17
            AlignHorizontal = laCenter
            Caption = 'Lan'#231'amento'
          end
          object Sctvarlabel8: TSctvarlabel
            Left = 222
            Top = 0
            Width = 65
            Height = 17
            Caption = 'Fornecedor'
          end
          object Sctvarlabel9: TSctvarlabel
            Left = 660
            Top = 0
            Width = 75
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Valor'
          end
          object Sctvarlabel33: TSctvarlabel
            Left = 571
            Top = 0
            Width = 82
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Valor Produtos'
          end
          object Sctvarlabel34: TSctvarlabel
            Left = 500
            Top = 0
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Caption = 'S'#233'rie/Fatura'
          end
        end
        object Data: TSctSubDataBand
          Left = 0
          Top = 176
          Width = 786
          Height = 19
          ParentColor = True
          BandName = 'Data'
          Updatelevel = DataLevel
          Stretch = True
          Band = DetailBand
          CloseDataSet = False
          DataRange = drAllRecords
          DataSource = DsProduto
          object Sctvarlabel25: TSctvarlabel
            Left = 9
            Top = 1
            Width = 45
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsprodutocd_produtoVar
          end
          object Sctvarlabel26: TSctvarlabel
            Left = 60
            Top = -1
            Width = 356
            Height = 17
            WrapText = True
            Stretch = True
            Variable = adodsprodutonm_produtoVar
          end
          object Sctvarlabel27: TSctvarlabel
            Left = 610
            Top = 1
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsprodutovl_totalVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
          end
          object Sctvarlabel28: TSctvarlabel
            Left = 539
            Top = 1
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsprodutovl_unitarioVar
            DataFormat.DisplayFormat = '#,##0.00'
            DataFormat.Digits = 2
          end
          object Sctvarlabel29: TSctvarlabel
            Left = 469
            Top = 1
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Variable = adodsprodutoqt_itemVar
            DataFormat.DisplayFormat = '#,##0.0##'
            DataFormat.Digits = 3
          end
          object Sctvarlabel30: TSctvarlabel
            Left = 419
            Top = 1
            Width = 45
            Height = 17
            AlignHorizontal = laCenter
            Variable = adodsprodutosg_unidadeVar
          end
        end
        object DataHeader: TSctDataHeadBand
          Left = 0
          Top = 141
          Width = 786
          Height = 20
          ParentColor = True
          BandName = 'DataHeader'
          Updatelevel = DataHeaderLevel
          Band = Data
          object Sctvarlabel19: TSctvarlabel
            Left = 9
            Top = 1
            Width = 45
            Height = 17
            AlignHorizontal = laRight
            Caption = 'C'#243'digo'
          end
          object SctLine5: TSctLine
            Left = 0
            Top = 13
            Width = 735
            Height = 7
          end
          object Sctvarlabel20: TSctvarlabel
            Left = 60
            Top = 1
            Width = 356
            Height = 17
            Caption = 'Produto'
          end
          object Sctvarlabel21: TSctvarlabel
            Left = 610
            Top = 1
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Total'
          end
          object Sctvarlabel22: TSctvarlabel
            Left = 539
            Top = 1
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Unit'#225'rio'
          end
          object Sctvarlabel23: TSctvarlabel
            Left = 469
            Top = 1
            Width = 65
            Height = 17
            AlignHorizontal = laRight
            Caption = 'Quantidade'
          end
          object Sctvarlabel24: TSctvarlabel
            Left = 419
            Top = 1
            Width = 45
            Height = 17
            AlignHorizontal = laCenter
            Caption = 'Unidade'
          end
        end
        object DataFooter: TSctDataFootBand
          Left = 0
          Top = 210
          Width = 786
          Height = 10
          ParentColor = True
          BandName = 'DataFooter'
          Updatelevel = DataFooterLevel
          Band = Data
        end
      end
    end
    object RLRepProdutoSintetico: TRLReport
      Left = 0
      Top = 330
      Width = 794
      Height = 1123
      Margins.LeftMargin = 5.0
      Margins.RightMargin = 5.0
      DataSource = DsProdSintetico
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      PreviewOptions.FormStyle = fsMDIChild
      JobTitle = 'Entradas no Per'#237'odo - Sint'#233'tico por Produto'
      Visible = False
      object RLBand1: TRLBand
        Left = 19
        Top = 38
        Width = 756
        Height = 41
        BandType = btHeader
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        object RLLabel1: TRLLabel
          Left = 0
          Top = 2
          Width = 280
          Height = 16
          Caption = 'Entradas no Per'#237'odo - Sint'#233'tico por Produto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLSystemInfo1: TRLSystemInfo
          Left = 679
          Top = 2
          Width = 75
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
        end
        object RLLabel2: TRLLabel
          Left = 642
          Top = 2
          Width = 35
          Height = 16
          Caption = 'Data:'
        end
        object RLSystemInfo2: TRLSystemInfo
          Left = 679
          Top = 20
          Width = 75
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Info = itHour
        end
        object RLLabel3: TRLLabel
          Left = 642
          Top = 20
          Width = 35
          Height = 16
          Caption = 'Hora:'
        end
        object RLLblPeriodo: TRLLabel
          Left = 0
          Top = 20
          Width = 54
          Height = 16
          Caption = 'Periodo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object RLBdSubTitle: TRLBand
        Left = 19
        Top = 79
        Width = 756
        Height = 21
        BandType = btHeader
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        Color = 14803425
        ParentColor = False
        Transparent = False
        BeforePrint = RLBdSubTitleBeforePrint
        object RLLabel4: TRLLabel
          Left = 3
          Top = 1
          Width = 70
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'C'#243'digo'
          Transparent = False
        end
        object RLLabel5: TRLLabel
          Left = 678
          Top = 2
          Width = 75
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Valor'
          Transparent = False
        end
        object RLLabel6: TRLLabel
          Left = 600
          Top = 3
          Width = 75
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Quantidade'
          Transparent = False
        end
        object RLLabel7: TRLLabel
          Left = 547
          Top = 4
          Width = 51
          Height = 16
          Alignment = taCenter
          AutoSize = False
          Caption = 'Unidade'
          Transparent = False
        end
        object RLLabel8: TRLLabel
          Left = 77
          Top = 1
          Width = 49
          Height = 16
          Caption = 'Produto'
          Transparent = False
        end
      end
      object RLBdDetail: TRLBand
        Left = 19
        Top = 100
        Width = 756
        Height = 19
        BeforePrint = RLBdDetailBeforePrint
        object RLDBText1: TRLDBText
          Left = 3
          Top = 0
          Width = 72
          Height = 16
          Alignment = taRightJustify
          DataField = 'Cd_Produto'
          DataSource = DsProdSintetico
        end
        object RLDBText2: TRLDBText
          Left = 547
          Top = 0
          Width = 52
          Height = 16
          Alignment = taCenter
          AutoSize = False
          DataField = 'Sg_Estoque'
          DataSource = DsProdSintetico
        end
        object RLDBText3: TRLDBText
          Left = 600
          Top = 0
          Width = 75
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'Qt_Estoque'
          DataSource = DsProdSintetico
        end
        object RLDBText4: TRLDBText
          Left = 678
          Top = 0
          Width = 75
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'Vl_Total'
          DataSource = DsProdSintetico
        end
        object RLDBMemo1: TRLDBMemo
          Left = 77
          Top = 0
          Width = 464
          Height = 16
          AutoSize = False
          Behavior = [beSiteExpander]
          DataField = 'Nm_Produto'
          DataSource = DsProdSintetico
        end
      end
      object RLBand2: TRLBand
        Left = 19
        Top = 119
        Width = 756
        Height = 27
        BandType = btSummary
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        object RLDBResult1: TRLDBResult
          Left = 648
          Top = 8
          Width = 105
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'Vl_Total'
          DataSource = DsProdSintetico
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Info = riSum
          ParentFont = False
        end
        object RLLabel9: TRLLabel
          Left = 606
          Top = 8
          Width = 40
          Height = 16
          Caption = 'Total:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw1: TRLDraw
          Left = 531
          Top = 4
          Width = 222
          Height = 1
        end
      end
      object RLBand3: TRLBand
        Left = 19
        Top = 146
        Width = 756
        Height = 22
        BandType = btFooter
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = False
        object RLDBText5: TRLDBText
          Left = 3
          Top = 2
          Width = 59
          Height = 16
          DataField = 'Dp_Filial'
          DataSource = DmMaster.DsFilial
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
        end
        object RLSystemInfo3: TRLSystemInfo
          Left = 704
          Top = 2
          Width = 50
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Info = itPageNumber
        end
        object RLLabel10: TRLLabel
          Left = 650
          Top = 2
          Width = 48
          Height = 16
          Caption = 'P'#225'gina:'
        end
      end
    end
    object CbfinNFe: TbctComboBox
      Left = 541
      Top = 16
      Width = 149
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 5
      Items.Strings = (
        '<< Todas >>'
        'Normal'
        'Complementar'
        'NF-e de ajuste'
        'Devolu'#231#227'o de mercadoria'
      )
      Value = '-1'
      ValueList.Strings = (
        '0'
        '1'
        '2'
        '3'
        '4'
      )
    end
  end
  object DsReport: TDataSource
    DataSet = ADODsReport
    Left = 22
    Top = 199
  end
  object ADODsReport: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    OnCalcFields = ADODsReportCalcFields
    CommandText = 'select'#13#10'  E.Cd_Filial, E.Nr_Entrada, E.Dt_Emissao, E.St_Entrada, E.Cd_Emitente,'#13#10'  F.Nm_Emitente, E.Vl_Produto, E.Vl_Nota, E.Mm_Observacao, E.Dt_Lancamento,'#13#10'  E.Cd_Serie, E.Nr_Fatura'#13#10#13#10'from'#13#10'  Entrada E'#13#10#13#10'left join'#13#10'  Emitente F /* Fornecedor */'#13#10'on'#13#10'  F.Cd_Emitente = E.Cd_Emitente'#13#10#13#10'where'#13#10'  E.Cd_Filial   = :Cd_Filial and'#13#10'  E.Dt_Emissao >= :Dt_Start and'#13#10'  E.Dt_Emissao  < :Dt_End'#13#10'  /* E.Cd_Emitente */'#13#10'  /* E.St_Compra */'#13#10#13#10'order by'#13#10'  E.Nr_Entrada'
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
    SQLOther0.Strings = (
      'select '
      '  E.Cd_Filial, E.Nr_Entrada, E.Dt_Emissao, E.St_Entrada, E.Cd_Emitente,'
      '  F.Nm_Emitente, E.Vl_Produto, E.Vl_Nota, E.Mm_Observacao, E.Dt_Lancamento,'
      '  E.Cd_Serie, E.Nr_Fatura'
      ''
      'from'
      '  Entrada E'
      ''
      '/* CFOP */'
      '/* Grupo */'
      ''
      'left join'
      '  Emitente F /* Fornecedor */'
      'on'
      '  F.Cd_Emitente = E.Cd_Emitente'
      ''
      'where'
      '  E.Cd_Filial  = :Cd_Filial and'
      '  /* Data */  >= :Dt_Start and'
      '  /* Data */   < :Dt_End'
      '  /* E.Cd_Emitente */'
      '  /* E.Cd_CFOP */'
      '  /* E.St_Entrada */'
      '  /* finNFe */'
      ''
      'order by'
      '  E.Nr_Entrada'
    )
    SQLOther1.Strings = (
      '--------------- Desconsidera acerto de estoque'
      'inner join'
      '  CFOP CF'
      'on'
      '  CF.Cd_CFOP      = E.Cd_CFOP and'
      '  CF.Tp_Operacao <= ''''3'''
    )
    SQLOther2.Strings = (
      '--------------- Filtra o Grupo'
      'inner join'
      '  Entrada_Item EI'
      'on'
      '  EI.Cd_Filial  = E.Cd_Filial and'
      '  EI.Nr_Entrada = E.Nr_Entrada'
      ''
      'inner join'
      '  Produto P'
      'on'
      '  P.Cd_Produto = EI.Cd_Produto and'
      '  P.Cd_Grupo   = /* Cd_Grupo */'
    )
    Left = 52
    Top = 198
    object ADODsReportcd_filial: TSmallintField
      FieldName = 'cd_filial'
    end
    object ADODsReportnr_entrada: TIntegerField
      FieldName = 'nr_entrada'
    end
    object ADODsReportdt_emissao: TDateTimeField
      FieldName = 'dt_emissao'
    end
    object ADODsReportst_entrada: TStringField
      FieldName = 'st_entrada'
      FixedChar = True
      Size = 1
    end
    object ADODsReportcd_emitente: TIntegerField
      FieldName = 'cd_emitente'
    end
    object ADODsReportnm_emitente: TStringField
      FieldName = 'nm_emitente'
      Size = 50
    end
    object ADODsReportvl_produto: TBCDField
      FieldName = 'vl_produto'
      Precision = 12
      Size = 2
    end
    object ADODsReportvl_nota: TBCDField
      FieldName = 'vl_nota'
      Precision = 12
      Size = 2
    end
    object ADODsReportmm_observacao: TMemoField
      FieldName = 'mm_observacao'
      BlobType = ftMemo
    end
    object ADODsReportDs_Situacao: TStringField
      FieldKind = fkCalculated
      FieldName = 'Ds_Situacao'
      Size = 12
      Calculated = True
    end
    object ADODsReportDt_Lancamento: TDateTimeField
      FieldName = 'Dt_Lancamento'
    end
    object ADODsReportCd_Serie: TStringField
      FieldName = 'Cd_Serie'
      Size = 3
    end
    object ADODsReportNr_Fatura: TIntegerField
      FieldName = 'Nr_Fatura'
    end
    object ADODsReportDp_Fatura: TStringField
      FieldKind = fkCalculated
      FieldName = 'Dp_Fatura'
      Size = 10
      Calculated = True
    end
  end
  object ADODsProduto: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  A.Cd_Filial, A.Nr_Entrada, A.Nr_Item, A.Cd_Produto, A.Sg_Unidade,'#13#10'  B.Sg_Estoque, A.Qt_Item, A.Vl_Unitario, B.Fl_Lote, PF.Cd_Produto_Emitente,'#13#10'  case '#13#10'    when A.Cd_Produto is null then A.Nm_Produto '#13#10'    else B.NM_Produto '#13#10'  end as Nm_Produto, '#13#10'  A.Vl_Unitario * A.Qt_Item as Vl_Total, PF.Cd_Emitente'#13#10#13#10'from'#13#10'  Entrada_Item A'#13#10#13#10'left join'#13#10'  Produto B'#13#10'on'#13#10'  B.Cd_Produto = A.Cd_Produto'#13#10#13#10'left join'#13#10'  Produto_Fornecedor PF'#13#10'on'#13#10'  PF.Cd_Produto = A.Cd_Produto and'#13#10'  PF.Cd_Emitente = :Cd_Emitente'#13#10#13#10'where'#13#10'  A.Cd_Filial  = :Cd_Filial and'#13#10'  A.Nr_Entrada = :Nr_Entrada'#13#10#13#10'order by'#13#10'  A.Nr_Item'
    DataSource = DsReport
    IndexFieldNames = 'cd_filial;cd_emitente;nr_entrada'
    MasterFields = 'cd_filial;cd_emitente;nr_entrada'
    Parameters = <
      item
        Name = 'Cd_Emitente'
        DataType = ftInteger
        Value = nil?
      end
      item
        Name = 'Cd_Filial'
        DataType = ftSmallint
        Value = nil?
      end
      item
        Name = 'Nr_Entrada'
        DataType = ftInteger
        Size = -1
        Value = nil?
      end>
    Left = 113
    Top = 198
    object ADODsProdutonr_item: TSmallintField
      FieldName = 'nr_item'
    end
    object ADODsProdutocd_produto: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'cd_produto'
    end
    object ADODsProdutonm_produto: TStringField
      DisplayLabel = 'Produto'
      FieldName = 'nm_produto'
      Size = 120
    end
    object ADODsProdutosg_unidade: TStringField
      DisplayLabel = 'Unid.'
      FieldName = 'sg_unidade'
      FixedChar = True
      Size = 2
    end
    object ADODsProdutosg_estoque: TStringField
      FieldName = 'sg_estoque'
      FixedChar = True
      Size = 2
    end
    object ADODsProdutoqt_item: TBCDField
      DisplayLabel = 'Quantidade'
      FieldName = 'qt_item'
      Precision = 12
      Size = 3
    end
    object ADODsProdutovl_unitario: TBCDField
      DisplayLabel = 'Unit'#225'rio'
      FieldName = 'vl_unitario'
      DisplayFormat = '#,##0.00#'
      Precision = 12
      Size = 3
    end
    object ADODsProdutovl_total: TBCDField
      DisplayLabel = 'Total'
      FieldName = 'vl_total'
      DisplayFormat = '#,##0.00'
      Precision = 28
      Size = 6
    end
    object ADODsProdutofl_lote: TStringField
      FieldName = 'fl_lote'
      FixedChar = True
      Size = 1
    end
    object ADODsProdutocd_produto_emitente: TStringField
      DisplayLabel = 'C'#243'digo no Fornecedor'
      FieldName = 'cd_produto_emitente'
    end
    object ADODsProdutocd_filial: TSmallintField
      FieldName = 'cd_filial'
    end
    object ADODsProdutocd_emitente: TIntegerField
      FieldName = 'cd_emitente'
    end
    object ADODsProdutonr_entrada: TIntegerField
      FieldName = 'nr_entrada'
    end
  end
  object DsProduto: TDataSource
    DataSet = ADODsProduto
    Left = 83
    Top = 198
  end
  object ADODsProdSintetico: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'select'#13#10'  EI.Cd_Produto, P.Nm_Produto, P.Sg_Estoque,'#13#10'  sum( EI.Qt_Estoque ) as Qt_Estoque,'#13#10'  sum( EI.Qt_Item * EI.Vl_Unitario ) as Vl_Total'#13#10#13#10'from'#13#10'  Entrada E'#13#10#13#10'inner join'#13#10'  Entrada_Item EI'#13#10'on'#13#10'  EI.Cd_Filial  = E.Cd_Filial and'#13#10'  EI.Nr_Entrada = E.Nr_Entrada'#13#10#13#10'inner join'#13#10'  Produto P'#13#10'on'#13#10'  P.Cd_Produto = EI.Cd_Produto'#13#10'  /* Cd_Grupo */'#13#10#13#10'where'#13#10'  E.Cd_Filial      = :Cd_Filial and'#13#10'  E.Dt_Lancamento >= :Dt_Start and'#13#10'  E.Dt_Lancamento  < :Dt_End'#13#10'  /* E.Cd_Emitente */'#13#10'  /* E.Cd_CFOP */'#13#10'  /* E.St_Entrada */'#13#10#13#10'group by'#13#10'  EI.Cd_Produto, P.Nm_Produto, P.Sg_Estoque'#13#10#13#10'order by'#13#10'  EI.Cd_Produto'
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
    SQLOther0.Strings = (
      'select'
      '  EI.Cd_Produto, P.Nm_Produto, P.Sg_Estoque,'
      '  sum( EI.Qt_Estoque ) as Qt_Estoque,'
      '  sum( EI.Qt_Item * EI.Vl_Unitario ) as Vl_Total'
      ''
      'from'
      '  Entrada E'
      ''
      '/* CFOP */'
      ''
      'inner join'
      '  Entrada_Item EI'
      'on'
      '  EI.Cd_Filial  = E.Cd_Filial and'
      '  EI.Nr_Entrada = E.Nr_Entrada'
      ''
      'inner join'
      '  Produto P'
      'on'
      '  P.Cd_Produto = EI.Cd_Produto'
      '  /* Cd_Grupo */'
      ''
      'where'
      '  E.Cd_Filial      = :Cd_Filial and'
      '  /* Data */ >= :Dt_Start and'
      '  /* Data */  < :Dt_End'
      '  /* E.Cd_Emitente */'
      '  /* E.Cd_CFOP */'
      '  /* E.St_Entrada */'
      ''
      'group by'
      '  EI.Cd_Produto, P.Nm_Produto, P.Sg_Estoque'
      ''
      'order by'
      '  EI.Cd_Produto'
    )
    SQLOther1.Strings = (
      '--------------- Desconsidera acerto de estoque'
      'inner join'
      '  CFOP CF'
      'on'
      '  CF.Cd_CFOP      = E.Cd_CFOP and'
      '  CF.Tp_Operacao <= ''''3'''
    )
    Left = 184
    Top = 200
    object ADODsProdSinteticoCd_Produto: TIntegerField
      FieldName = 'Cd_Produto'
    end
    object ADODsProdSinteticoNm_Produto: TStringField
      FieldName = 'Nm_Produto'
      Size = 120
    end
    object ADODsProdSinteticoSg_Estoque: TStringField
      FieldName = 'Sg_Estoque'
      FixedChar = True
      Size = 2
    end
    object ADODsProdSinteticoQt_Estoque: TBCDField
      FieldName = 'Qt_Estoque'
      ReadOnly = True
      DisplayFormat = '#,##0.###'
      Precision = 32
      Size = 3
    end
    object ADODsProdSinteticoVl_Total: TBCDField
      FieldName = 'Vl_Total'
      ReadOnly = True
      DisplayFormat = '#,##0.00'
      Precision = 32
      Size = 8
    end
  end
  object DsProdSintetico: TDataSource
    DataSet = ADODsProdSintetico
    Left = 152
    Top = 200
  end
end
