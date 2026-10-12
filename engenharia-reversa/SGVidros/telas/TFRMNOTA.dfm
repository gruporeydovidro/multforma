object FrmNota: TFrmNota
  Left = 231
  Top = 196
  Caption = 'FrmNota'
  ClientHeight = 510
  ClientWidth = 794
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object SctRepNota: TSctReport
    Left = 55
    Top = 60
    Width = 82
    Height = 44
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    TabOrder = 0
    Visible = False
    Minimized = True
    Prompt = False
    AutoRun = False
    SuppressStatus = False
    PixelsPerInch = 96
    STop = 5
    SLeft = 5
    SWidth = 882
    SHeight = 501
    MTop = 60
    MLeft = 55
    SAlign = alNone
    Version = vAce1_0
    object RpPgNota: TSctGrouppage
      Left = 35
      Top = 55
      Width = 27
      Height = 0
      Color = clWhite
      ParentColor = False
      TabOrder = 2
      ClipLabels = False
      PageSetup.Orientation = poPortrait
      PageSetup.Size = psCustom
      PageSetup.Height = 297.0
      PageSetup.Width = 210.0
      PageSetup.Units = unitMiliMeters
      PageSetup.Destination = destPrinter
      PageSetup.AdjustMargin = False
      PageSetup.PreviewSettings.ModalPreview = mpNonModal
      PageSetup.PreviewSettings.PreviewOwner = poAppOwned
      PageSetup.PreviewSettings.FormStyle = pfsMDIChild
      PageSetup.TextDriverCompatibility = True
      PageSetup.LeftMargin = 0
      PageSetup.RightMargin = 0
      PageSetup.TopMargin = 0
      PageSetup.BottomMargin = 0
      BorderType = btNone
      Description = 'Nota Fiscal'
      CloseDataSet = False
      DataRange = drAllRecords
      OmitLastPgFt = False
      Head = ReportHeaderBand
      Detail = BdDetail
      Foot = ReportFooterBand
      PageHead = BdHeader
      PageFoot = BdFooter
      DataSource = DsNota
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
      object DataSourceGuide: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = DetailBandlevel
        DataSource = DsNota
      end
      object adodsnotaFl_FreteVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Fl_Frete'
        DataSource = DsNota
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsnotacd_filialVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'cd_filial'
        DataSource = DsNota
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsnotanr_orcamentoVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'nr_orcamento'
        DataSource = DsNota
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsnotatp_cargaVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'tp_carga'
        DataSource = DsNota
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsnotacd_emitenteVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'cd_emitente'
        DataSource = DsNota
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsnotanm_emitenteVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'nm_emitente'
        DataSource = DsNota
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsnotafl_formapagtoVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'fl_formapagto'
        DataSource = DsNota
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsnotanr_enderecoVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'nr_endereco'
        DataSource = DsNota
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsnotavl_pedido_freteVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'vl_pedido_frete'
        DataSource = DsNota
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsnotaps_pedidoVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'ps_pedido'
        DataSource = DsNota
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsnotavl_pedidoVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'vl_pedido'
        DataSource = DsNota
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsnotamm_observacaoVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'mm_observacao'
        DataSource = DsNota
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsnotadt_faturaVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'dt_fatura'
        DataSource = DsNota
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsnotanr_faturaVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'nr_fatura'
        DataSource = DsNota
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsnotacd_serieVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'cd_serie'
        DataSource = DsNota
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsnotavl_baseicmsVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'vl_baseicms'
        DataSource = DsNota
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsnotapr_icmsVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'pr_icms'
        DataSource = DsNota
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsnotavl_icmsVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'vl_icms'
        DataSource = DsNota
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsnotavl_ipiVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'vl_ipi'
        DataSource = DsNota
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsnotavl_stbVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'vl_stb'
        DataSource = DsNota
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsnotanr_ecfVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'nr_ecf'
        DataSource = DsNota
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsnotasg_estadoVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'sg_estado'
        DataSource = DsNota
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsnotafl_contribuinteVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'fl_contribuinte'
        DataSource = DsNota
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsnotanr_pedido_emitenteVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'nr_pedido_emitente'
        DataSource = DsNota
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsnotanm_contatoVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'nm_contato'
        DataSource = DsNota
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsnotapr_descontoVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'pr_desconto'
        DataSource = DsNota
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsnotavl_descontoVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'vl_desconto'
        DataSource = DsNota
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsnotapr_custoVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'pr_custo'
        DataSource = DsNota
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsnotavl_custoVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'vl_custo'
        DataSource = DsNota
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsnotanr_itemVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'nr_item'
        DataSource = DsNota
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsnotacd_produtoVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'cd_produto'
        DataSource = DsNota
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsnotasg_unidadeVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'sg_unidade'
        DataSource = DsNota
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsnotaqt_itemVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'qt_item'
        DataSource = DsNota
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsnotavl_unitarioVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'vl_unitario'
        DataSource = DsNota
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsnotaqt_agregadoVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'qt_agregado'
        DataSource = DsNota
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsnotafl_stbVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'fl_stb'
        DataSource = DsNota
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsnotads_enderecoVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'ds_endereco'
        DataSource = DsNota
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsnotanm_bairroVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'nm_bairro'
        DataSource = DsNota
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsnotads_complementoVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'ds_complemento'
        DataSource = DsNota
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsnotanr_cepVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'nr_cep'
        DataSource = DsNota
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsnotanm_cidadeVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'nm_cidade'
        DataSource = DsNota
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsnotacd_cstVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'cd_cst'
        DataSource = DsNota
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsnotaVl_Total_ItemVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Vl_Total_Item'
        DataSource = DsNota
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsnotaQt_ImprimirVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Qt_Imprimir'
        DataSource = DsNota
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsnotaVl_NotaVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Vl_Nota'
        DataSource = DsNota
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsnotanr_telefone_1Var: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'nr_telefone_1'
        DataSource = DsNota
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsnotads_transp_endVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'ds_transp_end'
        DataSource = DsNota
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsnotanm_transp_baiVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'nm_transp_bai'
        DataSource = DsNota
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsnotads_transp_compVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'ds_transp_comp'
        DataSource = DsNota
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsnotanr_transp_cepVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'nr_transp_cep'
        DataSource = DsNota
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsnotanm_transp_cidVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'nm_transp_cid'
        DataSource = DsNota
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsnotasg_transp_estVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'sg_transp_est'
        DataSource = DsNota
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsnotanr_transp_telVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'nr_transp_tel'
        DataSource = DsNota
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsnotanr_transp_ieVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'nr_transp_ie'
        DataSource = DsNota
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsnotanm_transportadorVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'nm_transportador'
        DataSource = DsNota
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsnotanr_placaVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'nr_placa'
        DataSource = DsNota
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsnotanr_transp_doctoVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'nr_transp_docto'
        DataSource = DsNota
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsnotamm_obsnotaVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'mm_obsnota'
        DataSource = DsNota
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
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
      object adodsnotaPr_ICMS_ItemVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Pr_ICMS_Item'
        DataSource = DsNota
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsnotapr_contribVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'pr_contrib'
        DataSource = DsNota
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsnotapr_naocontribVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'pr_naocontrib'
        DataSource = DsNota
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsnotatp_tributacaoVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'tp_tributacao'
        DataSource = DsNota
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsnotanr_insc_estadualVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'nr_insc_estadual'
        DataSource = DsNota
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsnotadt_saidaVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'dt_saida'
        DataSource = DsNota
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsnotads_quantidadeVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'ds_quantidade'
        DataSource = DsNota
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsnotads_especieVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'ds_especie'
        DataSource = DsNota
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsnotads_marcaVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'ds_marca'
        DataSource = DsNota
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsnotaHr_SaidaVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Hr_Saida'
        DataSource = DsNota
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsnotacd_cfopVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'cd_cfop'
        DataSource = DsNota
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsnotads_cfopVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'ds_cfop'
        DataSource = DsNota
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsnotafl_produtoVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'fl_produto'
        DataSource = DsNota
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsnotanr_documentoVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'nr_documento'
        DataSource = DsNota
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsnotanm_produtoVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'nm_produto'
        DataSource = DsNota
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsnotaVl_DescNotaVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Vl_DescNota'
        DataSource = DsNota
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsnotaNr_LoteVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Nr_Lote'
        DataSource = DsNota
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsnotaDt_FabricacaoVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Dt_Fabricacao'
        DataSource = DsNota
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsnotaDt_ValidadeVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Dt_Validade'
        DataSource = DsNota
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsnotaDp_ProdutoVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Dp_Produto'
        DataSource = DsNota
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsnotaCd_FabricanteVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Cd_Fabricante'
        DataSource = DsNota
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsnotaPr_IPIVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Pr_IPI'
        DataSource = DsNota
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsnotaPr_ReducaoVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Pr_Reducao'
        DataSource = DsNota
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsnotaTp_OperacaoVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Tp_Operacao'
        DataSource = DsNota
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsnotaFl_ValoresVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Fl_Valores'
        DataSource = DsNota
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsnotaVl_ExtensoVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Vl_Extenso'
        DataSource = DsNota
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsnotaVl_ISSVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Vl_ISS'
        DataSource = DsNota
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsnotaVl_SaidaVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Vl_Saida'
        DataSource = DsNota
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsnotaCd_FuncionarioVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Cd_Funcionario'
        DataSource = DsNota
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsnotaNm_FuncionarioVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Nm_Funcionario'
        DataSource = DsNota
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsnotaCd_ClasFiscalVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Cd_ClasFiscal'
        DataSource = DsNota
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsnotaVl_ServicoVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Vl_Servico'
        DataSource = DsNota
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsnotaVl_IPI_ItemVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Vl_IPI_Item'
        DataSource = DsNota
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsnotaPs_LiquidoVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Ps_Liquido'
        DataSource = DsNota
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsnotaFl_ImpostoVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Fl_Imposto'
        DataSource = DsNota
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsnotaPr_Item_ICMS_RealVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Pr_Item_ICMS_Real'
        DataSource = DsNota
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsnotaFl_ExportadorVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Fl_Exportador'
        DataSource = DsNota
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsnotaVl_BaseSTVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Vl_BaseST'
        DataSource = DsNota
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsnotaCd_IBGEVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Cd_IBGE'
        DataSource = DsNota
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsnotaVl_ICMS_ItemVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Vl_ICMS_Item'
        DataSource = DsNota
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsnotaVl_MVAVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Vl_MVA'
        DataSource = DsNota
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsnotaCd_BarraVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Cd_Barra'
        DataSource = DsNota
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsnotaTp_PessoaVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Tp_Pessoa'
        DataSource = DsNota
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsnotaVl_Base_ICMS_ItemVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Vl_Base_ICMS_Item'
        DataSource = DsNota
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsnotaDs_NumeroVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Ds_Numero'
        DataSource = DsNota
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsnotaCd_CST_PISVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Cd_CST_PIS'
        DataSource = DsNota
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsnotaPr_PISVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Pr_PIS'
        DataSource = DsNota
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsnotaCd_CST_CofinsVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Cd_CST_Cofins'
        DataSource = DsNota
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsnotaPr_CofinsVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Pr_Cofins'
        DataSource = DsNota
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsnotaCd_CFOPProdutoVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Cd_CFOPProduto'
        DataSource = DsNota
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsnotaVl_DespesaVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Vl_Despesa'
        DataSource = DsNota
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsnotaCd_TributacaoVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Cd_Tributacao'
        DataSource = DsNota
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsnotaFl_OriProdutoVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Fl_OriProduto'
        DataSource = DsNota
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsnotaFl_OrigemVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Fl_Origem'
        DataSource = DsNota
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsnotaSt_NotaVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'St_Nota'
        DataSource = DsNota
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsnotaFl_EmitenteVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Fl_Emitente'
        DataSource = DsNota
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsnotaCd_ModeloFiscalVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Cd_ModeloFiscal'
        DataSource = DsNota
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsnotaVl_SeguroVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Vl_Seguro'
        DataSource = DsNota
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsnotaVl_DescItemVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Vl_DescItem'
        DataSource = DsNota
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsnotaNm_PaisVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Nm_Pais'
        DataSource = DsNota
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsnotaCd_PaisVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Cd_Pais'
        DataSource = DsNota
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsnotaVl_SeguroItemVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Vl_SeguroItem'
        DataSource = DsNota
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsnotaVl_DespesaItemVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Vl_DespesaItem'
        DataSource = DsNota
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsnotaVl_CustoNotaVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Vl_CustoNota'
        DataSource = DsNota
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsnotaPr_MVAVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Pr_MVA'
        DataSource = DsNota
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsnotaVl_BaseST_ItemVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Vl_BaseST_Item'
        DataSource = DsNota
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsnotaVl_FreteItemVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Vl_FreteItem'
        DataSource = DsNota
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsnotaFl_ISSRetidoVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Fl_ISSRetido'
        DataSource = DsNota
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsnotaVl_OutrosItemVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Vl_OutrosItem'
        DataSource = DsNota
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsnotaVl_ST_ItemVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Vl_ST_Item'
        DataSource = DsNota
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsnotaxPedVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'xPed'
        DataSource = DsNota
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsnotanItemPedVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'nItemPed'
        DataSource = DsNota
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object DataSourceGuide3: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = DetailBandlevel
        DataSource = DmMaster.DsConexao
      end
      object adodsnotaCd_CESTVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Cd_CEST'
        DataSource = DsNota
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsnotaNr_CupomFiscalVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Nr_CupomFiscal'
        DataSource = DsNota
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsnotavBCUFDestVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'vBCUFDest'
        DataSource = DsNota
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsnotapICMSUFDestVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'pICMSUFDest'
        DataSource = DsNota
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsnotapICMSInterVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'pICMSInter'
        DataSource = DsNota
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsnotapICMSInterPartVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'pICMSInterPart'
        DataSource = DsNota
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsnotavFCPUFDestVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'vFCPUFDest'
        DataSource = DsNota
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsnotaDIFALVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'DIFAL'
        DataSource = DsNota
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsnotavICMSUFRemetVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'vICMSUFRemet'
        DataSource = DsNota
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsnotaDIFALOrigemVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'DIFALOrigem'
        DataSource = DsNota
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsnotaDIFALDestinoVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'DIFALDestino'
        DataSource = DsNota
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsnotapFCPUFDestVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'pFCPUFDest'
        DataSource = DsNota
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsnotaCd_cProdANPVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Cd_cProdANP'
        DataSource = DsNota
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsnotaFl_ConFinalVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Fl_ConFinal'
        DataSource = DsNota
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object DataSourceGuide4: TSctDataSourceGuide
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = DetailBandlevel
        DataSource = DmMaster.DsConecadoMes
      end
      object adodsnotaNr_Insc_MunicipalVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Nr_Insc_Municipal'
        DataSource = DsNota
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsnotaDs_DescANPVar: TSctDBVar
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        DataField = 'Ds_DescANP'
        DataSource = DsNota
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object ReportHeaderBand: TSctBand
        Left = 0
        Top = 0
        Width = 844
        Height = 0
        ParentColor = True
        BandName = 'Report Header'
        Updatelevel = ReportHeaderBandlevel
        Visible = False
      end
      object BdHeader: TSctBand
        Left = 0
        Top = 15
        Width = 844
        Height = 20
        ParentColor = True
        BandName = 'BdHeader'
        Updatelevel = PageHeaderBandlevel
        object SctVarPoint: TSctvarlabel
          Left = 80
          Top = 2
          Width = 42
          Height = 16
          Caption = ' '
        end
      end
      object BdDetail: TSctBand
        Left = 0
        Top = 50
        Width = 844
        Height = 10
        ParentColor = True
        BandName = 'BdDetail'
        OnPrintWhen = BdDetailPrintWhen
        Updatelevel = DetailBandlevel
        Stretch = True
        OnAfterPrint = BdDetailAfterPrint
      end
      object BdFooter: TSctBand
        Left = 0
        Top = 110
        Width = 844
        Height = 20
        ParentColor = True
        BandName = 'BdFooter'
        Updatelevel = PageFooterBandlevel
        OnBeforePrint = BdFooterBeforePrint
      end
      object ReportFooterBand: TSctBand
        Left = 0
        Top = 145
        Width = 844
        Height = 0
        ParentColor = True
        BandName = 'Report Footer'
        Updatelevel = ReportFooterBandlevel
        Visible = False
      end
      object BdFooterSub: TSctSubBand
        Left = 0
        Top = 75
        Width = 844
        Height = 20
        ParentColor = True
        BandName = 'BdFooterSub'
        Updatelevel = PageFooterBandlevel
        Band = BdFooter
        Above = True
      end
    end
  end
  object ADODsCampos: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  Cd_Nota, Cd_Campo, Cd_Grupo, Nm_Campo, Nr_Linha, Nr_Coluna, '#13#10'  Nr_Size, St_Campo, Nm_Field, Ds_Format, Fl_Pos, Nr_Width,'#13#10'  Fl_SupressNull'#13#10#13#10'from'#13#10'  Nota_CFG_Campo'#13#10#13#10'where'#13#10'  Cd_Nota = :Cd_Nota and'#13#10'  St_Campo = ''''1'''#13#10#13#10'order by'#13#10'  Cd_Grupo, Cd_Campo'
    Parameters = <
      item
        Name = 'Cd_Nota'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = nil?
      end>
    Left = 84
    Top = 417
    object ADODsCamposcd_nota: TSmallintField
      FieldName = 'cd_nota'
    end
    object ADODsCamposcd_grupo: TSmallintField
      FieldName = 'cd_grupo'
    end
    object ADODsCamposnm_campo: TStringField
      FieldName = 'nm_campo'
      Size = 50
    end
    object ADODsCamposnr_linha: TSmallintField
      FieldName = 'nr_linha'
    end
    object ADODsCamposnr_coluna: TSmallintField
      FieldName = 'nr_coluna'
    end
    object ADODsCamposnr_size: TSmallintField
      FieldName = 'nr_size'
    end
    object ADODsCamposst_campo: TStringField
      FieldName = 'st_campo'
      FixedChar = True
      Size = 1
    end
    object ADODsCamposnm_field: TStringField
      FieldName = 'nm_field'
      Size = 50
    end
    object ADODsCamposcd_campo: TSmallintField
      FieldName = 'cd_campo'
    end
    object ADODsCamposds_format: TStringField
      FieldName = 'ds_format'
      Size = 30
    end
    object ADODsCamposfl_pos: TStringField
      FieldName = 'fl_pos'
      FixedChar = True
      Size = 1
    end
    object ADODsCamposNr_Width: TSmallintField
      FieldName = 'Nr_Width'
    end
    object ADODsCamposFl_SupressNull: TStringField
      FieldName = 'Fl_SupressNull'
      FixedChar = True
      Size = 1
    end
  end
  object ADODsSize: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  max( Nr_Linha ) as Nr_Linha'#13#10#13#10'from'#13#10'  Nota_CFG_Campo'#13#10#13#10'where'#13#10'  Cd_Nota  = :Cd_Nota and'#13#10'  Cd_Grupo = :Cd_Grupo'
    Parameters = <
      item
        Name = 'Cd_Nota'
        DataType = ftSmallint
        Size = -1
        Value = nil?
      end
      item
        Name = 'Cd_Grupo'
        DataType = ftSmallint
        Size = -1
        Value = nil?
      end>
    Left = 115
    Top = 417
    object ADODsSizenr_linha: TSmallintField
      FieldName = 'nr_linha'
    end
  end
  object DsNota: TDataSource
    DataSet = ADODsNota
    Left = 175
    Top = 417
  end
  object ADODsNota: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    OnCalcFields = ADODsNotaCalcFields
    CommandText = '/* Somente produtos e servi'#231'os */'#13#10'select'#13#10'  ''''1'''' as Fl_Origem, OI.Nr_Item, O.St_Orcamento as St_Nota,'#13#10'  O.Cd_Filial, O.Nr_Orcamento, O.Tp_Carga, O.Cd_Emitente, E.Nm_Emitente,'#13#10'  O.Fl_FormaPagto, O.Nr_Endereco, O.Vl_Pedido_Frete, O.Ps_Pedido,'#13#10'  O.Vl_Pedido, O.Mm_Nota as Mm_Observacao, O.Dt_Fatura, O.Nr_Fatura, O.Cd_Serie,'#13#10'  O.Vl_BaseICMS, O.Pr_ICMS, O.Vl_ICMS, O.Vl_IPI, O.Vl_STB, O.Nr_ECF,'#13#10'  E.Fl_Contribuinte, O.Nr_Pedido_Emitente, O.Nm_Contato, E.Nr_Documento,'#13#10'  O.Pr_Desconto, O.Vl_Desconto, O.Pr_Custo, O.Vl_Custo, E.Nr_Insc_Estadual,'#13#10'  O.Dt_Saida, O.Ds_Quantidade, O.Ds_Especie, O.Ds_Marca, 0.0 as Vl_Saida,'#13#10'  O.Cd_CFOP, CF.Ds_CFOP, CF.Tp_Operacao, CF.Fl_Valores, O.Vl_Servico,'#13#10#13#10'  OI.Cd_Produto, OI.Nm_Produto, OI.Sg_Unidade, OI.Qt_Item,'#13#10'  OI.Vl_Unitario, OI.Qt_Agregado, OI.Fl_STB, T.Mm_ObsNota,'#13#10#13#10'  case'#13#10'    when T.Cd_CST is not null then T.Cd_CST'#13#10'    else'#13#10'      case'#13#10'        when ( E.Fl_Contribuinte = ''''2'''' ) or ( C.Sg_Estado <> ''''ES'''' ) then ''''000'''#13#10'        when ( ( E.Fl_Contribuinte = ''''1'''' ) or ( C.Sg_Estado = ''''ES'''' ) ) and'#13#10'             ( O.Pr_ICMS > OI.Pr_Reducao ) then ''''020'''#13#10'        else ''''000'''#13#10#13#10'      end'#13#10#13#10'    end as Cd_CST,'#13#10#13#10'  T.Pr_Contrib, T.Pr_NaoContrib, T.Tp_Tributacao, P.Fl_Produto, P.Fl_Origem as Fl_OriProduto,'#13#10'  OI.Nr_Lote, OI.Dt_Fabricacao, OI.Dt_Validade, P.Cd_Fabricante, P.Pr_IPI,'#13#10#13#10'  EE.Ds_Endereco, EE.Nm_Bairro, EE.Ds_Complemento, EE.Nr_CEP, C.Nm_Cidade,'#13#10'  C.Sg_Estado, C.Nm_Pais, C.Cd_Pais, EE.Nr_Telefone_1, C.Cd_IBGE, EE.Ds_Numero,'#13#10#13#10'  /* Transportador */'#13#10'  TP.Nm_Transportador, TP.Nr_Documento as Nr_Transp_Docto,'#13#10'  TP.Nr_InscEstadual as Nr_Transp_IE, TP.Ds_Endereco as Ds_Transp_End,'#13#10'  TP.Nm_Bairro as Nm_Transp_Bai, TP.Ds_Complemento as Ds_Transp_Comp,'#13#10'  TP.Nr_CEP as Nr_Transp_CEP, CT.Nm_Cidade as Nm_Transp_Cid,'#13#10'  CT.Sg_Estado as Sg_Transp_Est, TP.Nr_Telefone as Nr_Transp_Tel,'#13#10'  TP.Nr_Placa, OI.Pr_Reducao, O.Fl_Frete, O.Vl_ISS, O.Cd_Funcionario,'#13#10'  F.Nm_Funcionario, P.Cd_ClasFiscal, O.Ps_Liquido, CF.Fl_Imposto, E.Fl_Exportador,'#13#10'  O.Vl_BaseST, P.Vl_MVA, P.Cd_Barra, E.Tp_Pessoa,'#13#10'  T.Cd_CST_PIS, T.Pr_PIS, T.Cd_CST_Cofins, T.Pr_Cofins, 0.0 as Vl_Despesa, P.Cd_Tributacao,'#13#10'  Cd_CFOPProduto ='#13#10'    ('#13#10'    case'#13#10'      when ( C.Sg_Estado  = ''''ES'''' ) and T.Cd_CFOPDentro is not null then T.Cd_CFOPDentro'#13#10'      when ( C.Sg_Estado <> ''''ES'''' ) and T.Cd_CFOPFora is not null then T.Cd_CFOPFora'#13#10'      else O.Cd_CFOP'#13#10'    end'#13#10'    ),'#13#10#13#10'  Fl_Emitente = ''''1'''', Cd_ModeloFiscal = ''''01'''', Convert( Numeric( 12, 3 ), 0 ) as Vl_Seguro,'#13#10#13#10'  Pr_MVA ='#13#10'    ('#13#10'    case'#13#10'      when ( C.Sg_Estado  = ''''ES'''' ) then T.Pr_MVA_Dentro'#13#10'      when ( C.Sg_Estado <> ''''ES'''' ) then T.pr_MVA_Fora'#13#10'    end'#13#10'    ),'#13#10'  T.Fl_ISSRetido, OI.xPed, OI.nItemPed, P.Cd_CEST,'#13#10#13#10'  Convert( Int, 0 ) as Nr_CupomFiscal,'#13#10#13#10'  P.Cd_cProdANP, O.Fl_ConFinal, E.Nr_Insc_Municipal, P.Ds_DescANP,'#13#10#13#10'  T.Ds_cBeneficio, T.Pr_pFCPST, O.finNFe, O.natOp, Convert( VarChar( 44 ), '''''' ) as refNFe'#13#10#13#10'from'#13#10'  Orcamento O'#13#10#13#10'inner join'#13#10'  Funcionario F'#13#10'on'#13#10'  F.Cd_Funcionario = O.Cd_Funcionario'#13#10#13#10'left join'#13#10'  Orcamento_Item OI'#13#10'on'#13#10'  OI.Cd_Filial     = O.Cd_Filial and'#13#10'  OI.Nr_Orcamento  = O.Nr_Orcamento and'#13#10'  OI.Fl_Confirmado = ''''1'''#13#10#13#10'left join'#13#10'  Emitente E'#13#10'on'#13#10'  E.Cd_Emitente = O.Cd_Emitente'#13#10#13#10'left join'#13#10'  Emitente_Endereco EE'#13#10'on'#13#10'  EE.Cd_Emitente = O.Cd_Emitente and'#13#10'  EE.Nr_Endereco = O.Nr_Endereco'#13#10#13#10'left join'#13#10'  Cidade C'#13#10'on'#13#10'  C.Cd_Cidade = EE.Cd_Cidade'#13#10#13#10'left join'#13#10'  Produto P'#13#10'on'#13#10'  P.Cd_Produto = OI.Cd_Produto'#13#10#13#10'left join'#13#10'  Tributacao T'#13#10'on'#13#10'  T.Cd_Tributacao = P.Cd_Tributacao'#13#10#13#10'left join'#13#10'  Transportador TP'#13#10'on'#13#10'  TP.Cd_Transportador = O.Cd_Transportador'#13#10#13#10'left join'#13#10'  Cidade CT'#13#10'on'#13#10'  CT.Cd_Cidade = TP.Cd_Cidade'#13#10#13#10'left join'#13#10'  CFOP CF'#13#10'on'#13#10'  CF.Cd_CFOP = O.Cd_CFOP'#13#10#13#10'where'#13#10'  O.Cd_Filial    = 1 and'#13#10'  O.Nr_Orcamento = 1'#13#10
    Parameters = <>
    SQLOther0.Strings = (
      'select'
      '  Fl_Origem, Nr_Item, St_Nota,'
      '  Cd_Filial, Nr_Orcamento, Tp_Carga, Cd_Emitente, Nm_Emitente,'
      '  Fl_FormaPagto, Nr_Endereco, Vl_Pedido_Frete, Ps_Pedido,'
      '  Vl_Pedido, Mm_Observacao, Dt_Fatura, Nr_Fatura, Cd_Serie,'
      '  Vl_BaseICMS, Pr_ICMS, Vl_ICMS, Vl_IPI, Vl_STB, Nr_ECF,'
      '  Fl_Contribuinte, Nr_Pedido_Emitente, Nm_Contato, Nr_Documento,'
      '  Pr_Desconto, Vl_Desconto, Pr_Custo, Vl_Custo, Nr_Insc_Estadual,'
      '  Dt_Saida, Ds_Quantidade, Ds_Especie, Ds_Marca, Vl_Saida, Cd_CFOP, '
      '  Ds_CFOP, Tp_Operacao, Fl_Valores,'
      ''
      '  Cd_Produto, Nm_Produto, Sg_Unidade, Qt_Item,'
      '  Vl_Unitario, Qt_Agregado, Fl_STB, Mm_ObsNota,'
      '  Cd_CST,'
      '  Pr_Contrib, Pr_NaoContrib, Tp_Tributacao, Fl_Produto, Fl_OriProduto,'
      '  Nr_Lote, Dt_Fabricacao, Dt_Validade, Cd_Fabricante, Pr_IPI,'
      ''
      '  Ds_Endereco, Nm_Bairro, Ds_Complemento, Nr_CEP, Nm_Cidade,'
      '  Sg_Estado, Nm_Pais, Cd_Pais, Nr_Telefone_1, Cd_IBGE, Ds_Numero,'
      ''
      '  /* Transportador */'
      '  Nm_Transportador, Nr_Transp_Docto, Nr_Transp_IE, Ds_Transp_End,'
      '  Nm_Transp_Bai, Ds_Transp_Comp, Nr_Transp_CEP, Nm_Transp_Cid, Sg_Transp_Est,'
      '  Nr_Transp_Tel, Nr_Placa, Pr_Reducao, Fl_Frete, Vl_ISS, Cd_Funcionario,'
      '  Nm_Funcionario, Cd_ClasFiscal, Vl_Servico, Ps_Liquido, Fl_Imposto,'
      '  Fl_Exportador, Vl_BaseST, Vl_MVA, Cd_Barra, Tp_Pessoa,'
      '  Cd_CST_PIS, Pr_PIS, Cd_CST_Cofins, Pr_Cofins, Vl_Despesa, Cd_Tributacao,'
      '  Cd_CFOPProduto,'
      ''
      '  Fl_Emitente, Cd_ModeloFiscal, Vl_Seguro, Pr_MVA,'
      ''
      '  Fl_ISSRetido, xPed, nItemPed, Cd_CEST,'
      ''
      '  Nr_CupomFiscal, Cd_cProdANP, Fl_ConFinal, Nr_Insc_Municipal, Ds_DescANP,'
      ''
      '  Ds_cBeneficio, Pr_pFCPST, finNFe, natOp, refNFe'
      ''
      'from'
      '  #NotaItemTMP'
      ''
      '  /* Vl_Unitario */'
      ''
      'order by'
      '  1, 2'
    )
    Left = 288
    Top = 384
    object ADODsNotaFl_Frete: TStringField
      FieldName = 'Fl_Frete'
      Size = 1
    end
    object ADODsNotaVl_Total_Item: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Vl_Total_Item'
      Calculated = True
    end
    object ADODsNotaQt_Imprimir: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Qt_Imprimir'
      Calculated = True
    end
    object ADODsNotaVl_Nota: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Vl_Nota'
      Calculated = True
    end
    object ADODsNotaPr_ICMS_Item: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Pr_ICMS_Item'
      Calculated = True
    end
    object ADODsNotaHr_Saida: TStringField
      FieldKind = fkCalculated
      FieldName = 'Hr_Saida'
      Size = 5
      Calculated = True
    end
    object ADODsNotacd_filial: TSmallintField
      FieldName = 'cd_filial'
    end
    object ADODsNotanr_orcamento: TIntegerField
      FieldName = 'nr_orcamento'
    end
    object ADODsNotatp_carga: TStringField
      FieldName = 'tp_carga'
      FixedChar = True
      Size = 1
    end
    object ADODsNotacd_emitente: TIntegerField
      FieldName = 'cd_emitente'
    end
    object ADODsNotanm_emitente: TStringField
      FieldName = 'nm_emitente'
      Size = 50
    end
    object ADODsNotafl_formapagto: TStringField
      FieldName = 'fl_formapagto'
      FixedChar = True
      Size = 1
    end
    object ADODsNotanr_endereco: TSmallintField
      FieldName = 'nr_endereco'
    end
    object ADODsNotavl_pedido_frete: TBCDField
      FieldName = 'vl_pedido_frete'
      Precision = 12
      Size = 2
    end
    object ADODsNotaps_pedido: TBCDField
      FieldName = 'ps_pedido'
      Precision = 12
      Size = 3
    end
    object ADODsNotavl_pedido: TBCDField
      FieldName = 'vl_pedido'
      Precision = 12
      Size = 2
    end
    object ADODsNotamm_observacao: TMemoField
      FieldName = 'mm_observacao'
      BlobType = ftMemo
    end
    object ADODsNotadt_fatura: TDateTimeField
      FieldName = 'dt_fatura'
    end
    object ADODsNotanr_fatura: TIntegerField
      FieldName = 'nr_fatura'
    end
    object ADODsNotacd_serie: TStringField
      FieldName = 'cd_serie'
      Size = 3
    end
    object ADODsNotavl_baseicms: TBCDField
      FieldName = 'vl_baseicms'
      Precision = 12
      Size = 2
    end
    object ADODsNotapr_icms: TBCDField
      FieldName = 'pr_icms'
      Precision = 12
      Size = 2
    end
    object ADODsNotavl_icms: TBCDField
      FieldName = 'vl_icms'
      Precision = 12
      Size = 2
    end
    object ADODsNotavl_ipi: TBCDField
      FieldName = 'vl_ipi'
      Precision = 12
      Size = 2
    end
    object ADODsNotavl_stb: TBCDField
      FieldName = 'vl_stb'
      Precision = 12
      Size = 2
    end
    object ADODsNotanr_ecf: TIntegerField
      FieldName = 'nr_ecf'
    end
    object ADODsNotasg_estado: TStringField
      FieldName = 'sg_estado'
      FixedChar = True
      Size = 2
    end
    object ADODsNotafl_contribuinte: TStringField
      FieldName = 'fl_contribuinte'
      FixedChar = True
      Size = 1
    end
    object ADODsNotanr_pedido_emitente: TStringField
      FieldName = 'nr_pedido_emitente'
      Size = 30
    end
    object ADODsNotanm_contato: TStringField
      FieldName = 'nm_contato'
      Size = 50
    end
    object ADODsNotapr_desconto: TBCDField
      FieldName = 'pr_desconto'
      Precision = 7
      Size = 2
    end
    object ADODsNotavl_desconto: TBCDField
      FieldName = 'vl_desconto'
      Precision = 12
      Size = 2
    end
    object ADODsNotapr_custo: TBCDField
      FieldName = 'pr_custo'
      Precision = 7
      Size = 2
    end
    object ADODsNotavl_custo: TBCDField
      FieldName = 'vl_custo'
      Precision = 12
      Size = 2
    end
    object ADODsNotanr_item: TSmallintField
      FieldName = 'nr_item'
    end
    object ADODsNotacd_produto: TIntegerField
      FieldName = 'cd_produto'
    end
    object ADODsNotasg_unidade: TStringField
      FieldName = 'sg_unidade'
      FixedChar = True
      Size = 2
    end
    object ADODsNotaqt_item: TBCDField
      FieldName = 'qt_item'
      Precision = 12
      Size = 3
    end
    object ADODsNotavl_unitario: TBCDField
      FieldName = 'vl_unitario'
      Precision = 12
      Size = 3
    end
    object ADODsNotaqt_agregado: TBCDField
      FieldName = 'qt_agregado'
      Precision = 9
      Size = 3
    end
    object ADODsNotafl_stb: TStringField
      FieldName = 'fl_stb'
      FixedChar = True
      Size = 1
    end
    object ADODsNotacd_cst: TStringField
      FieldName = 'cd_cst'
      Size = 254
    end
    object ADODsNotads_endereco: TStringField
      FieldName = 'ds_endereco'
      Size = 50
    end
    object ADODsNotanm_bairro: TStringField
      FieldName = 'nm_bairro'
      Size = 30
    end
    object ADODsNotads_complemento: TStringField
      FieldName = 'ds_complemento'
      Size = 30
    end
    object ADODsNotanr_cep: TStringField
      FieldName = 'nr_cep'
      FixedChar = True
      Size = 8
    end
    object ADODsNotanm_cidade: TStringField
      FieldName = 'nm_cidade'
      Size = 60
    end
    object ADODsNotanr_telefone_1: TStringField
      FieldName = 'nr_telefone_1'
      Size = 10
    end
    object ADODsNotads_transp_end: TStringField
      FieldName = 'ds_transp_end'
      Size = 50
    end
    object ADODsNotanm_transp_bai: TStringField
      FieldName = 'nm_transp_bai'
      Size = 30
    end
    object ADODsNotads_transp_comp: TStringField
      FieldName = 'ds_transp_comp'
      Size = 30
    end
    object ADODsNotanr_transp_cep: TStringField
      FieldName = 'nr_transp_cep'
      FixedChar = True
      Size = 8
    end
    object ADODsNotanm_transp_cid: TStringField
      FieldName = 'nm_transp_cid'
      Size = 60
    end
    object ADODsNotasg_transp_est: TStringField
      FieldName = 'sg_transp_est'
      FixedChar = True
      Size = 2
    end
    object ADODsNotanr_transp_tel: TStringField
      FieldName = 'nr_transp_tel'
      FixedChar = True
      Size = 10
    end
    object ADODsNotanr_transp_ie: TStringField
      FieldName = 'nr_transp_ie'
      Size = 18
    end
    object ADODsNotanm_transportador: TStringField
      FieldName = 'nm_transportador'
      Size = 50
    end
    object ADODsNotanr_placa: TStringField
      FieldName = 'nr_placa'
      FixedChar = True
      Size = 7
    end
    object ADODsNotanr_transp_docto: TStringField
      FieldName = 'nr_transp_docto'
      Size = 14
    end
    object ADODsNotamm_obsnota: TMemoField
      FieldName = 'mm_obsnota'
      BlobType = ftMemo
    end
    object ADODsNotapr_contrib: TBCDField
      FieldName = 'pr_contrib'
      Precision = 7
      Size = 2
    end
    object ADODsNotapr_naocontrib: TBCDField
      FieldName = 'pr_naocontrib'
      Precision = 7
      Size = 2
    end
    object ADODsNotatp_tributacao: TStringField
      FieldName = 'tp_tributacao'
      FixedChar = True
      Size = 1
    end
    object ADODsNotanr_insc_estadual: TStringField
      FieldName = 'nr_insc_estadual'
      Size = 18
    end
    object ADODsNotadt_saida: TDateTimeField
      FieldName = 'dt_saida'
    end
    object ADODsNotads_quantidade: TStringField
      FieldName = 'ds_quantidade'
    end
    object ADODsNotads_especie: TStringField
      FieldName = 'ds_especie'
    end
    object ADODsNotads_marca: TStringField
      FieldName = 'ds_marca'
    end
    object ADODsNotacd_cfop: TStringField
      FieldName = 'cd_cfop'
      FixedChar = True
      Size = 4
    end
    object ADODsNotads_cfop: TStringField
      FieldName = 'ds_cfop'
      Size = 50
    end
    object ADODsNotafl_produto: TStringField
      FieldName = 'fl_produto'
      FixedChar = True
      Size = 1
    end
    object ADODsNotanr_documento: TStringField
      FieldName = 'nr_documento'
      Size = 14
    end
    object ADODsNotanm_produto: TStringField
      FieldName = 'nm_produto'
      Size = 120
    end
    object ADODsNotaVl_DescNota: TBCDField
      FieldKind = fkCalculated
      FieldName = 'Vl_DescNota'
      Calculated = True
    end
    object ADODsNotaNr_Lote: TStringField
      FieldName = 'Nr_Lote'
      Size = 15
    end
    object ADODsNotaDt_Fabricacao: TDateTimeField
      FieldName = 'Dt_Fabricacao'
    end
    object ADODsNotaDt_Validade: TDateTimeField
      FieldName = 'Dt_Validade'
    end
    object ADODsNotaDp_Produto: TStringField
      FieldKind = fkCalculated
      FieldName = 'Dp_Produto'
      Size = 200
      Calculated = True
    end
    object ADODsNotaCd_Fabricante: TStringField
      FieldName = 'Cd_Fabricante'
    end
    object ADODsNotaPr_IPI: TBCDField
      FieldName = 'Pr_IPI'
      Precision = 9
      Size = 2
    end
    object ADODsNotaPr_Reducao: TFloatField
      FieldName = 'Pr_Reducao'
    end
    object ADODsNotaTp_Operacao: TStringField
      FieldName = 'Tp_Operacao'
      FixedChar = True
      Size = 1
    end
    object ADODsNotaFl_Valores: TStringField
      FieldName = 'Fl_Valores'
      FixedChar = True
      Size = 1
    end
    object ADODsNotaVl_Extenso: TStringField
      FieldKind = fkCalculated
      FieldName = 'Vl_Extenso'
      Size = 500
      Calculated = True
    end
    object ADODsNotaVl_ISS: TBCDField
      FieldName = 'Vl_ISS'
      Precision = 12
      Size = 2
    end
    object ADODsNotaVl_Saida: TBCDField
      FieldName = 'Vl_Saida'
      ReadOnly = True
      Precision = 1
      Size = 1
    end
    object ADODsNotaCd_Funcionario: TSmallintField
      FieldName = 'Cd_Funcionario'
    end
    object ADODsNotaNm_Funcionario: TStringField
      FieldName = 'Nm_Funcionario'
      Size = 50
    end
    object ADODsNotaCd_ClasFiscal: TStringField
      FieldName = 'Cd_ClasFiscal'
      Size = 10
    end
    object ADODsNotaVl_IPI_Item: TBCDField
      FieldKind = fkCalculated
      FieldName = 'Vl_IPI_Item'
      Calculated = True
    end
    object ADODsNotaVl_Servico: TBCDField
      FieldName = 'Vl_Servico'
    end
    object ADODsNotaPs_Liquido: TBCDField
      FieldName = 'Ps_Liquido'
      Precision = 12
      Size = 3
    end
    object ADODsNotaFl_Imposto: TStringField
      FieldName = 'Fl_Imposto'
      FixedChar = True
      Size = 1
    end
    object ADODsNotaPr_Item_ICMS_Real: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Pr_Item_ICMS_Real'
      Calculated = True
    end
    object ADODsNotaFl_Exportador: TStringField
      FieldName = 'Fl_Exportador'
      FixedChar = True
      Size = 1
    end
    object ADODsNotaVl_BaseST: TBCDField
      FieldName = 'Vl_BaseST'
      Precision = 12
      Size = 3
    end
    object ADODsNotaCd_IBGE: TStringField
      FieldName = 'Cd_IBGE'
      Size = 10
    end
    object ADODsNotaVl_ICMS_Item: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Vl_ICMS_Item'
      Calculated = True
    end
    object ADODsNotaVl_MVA: TBCDField
      FieldName = 'Vl_MVA'
      Precision = 12
      Size = 3
    end
    object ADODsNotaCd_Barra: TStringField
      FieldName = 'Cd_Barra'
    end
    object ADODsNotaTp_Pessoa: TStringField
      FieldName = 'Tp_Pessoa'
      FixedChar = True
      Size = 1
    end
    object ADODsNotaVl_Base_ICMS_Item: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Vl_Base_ICMS_Item'
      Calculated = True
    end
    object ADODsNotaDs_Numero: TStringField
      FieldName = 'Ds_Numero'
      Size = 10
    end
    object ADODsNotaCd_CST_PIS: TStringField
      FieldName = 'Cd_CST_PIS'
      Size = 3
    end
    object ADODsNotaPr_PIS: TBCDField
      FieldName = 'Pr_PIS'
      Precision = 9
      Size = 3
    end
    object ADODsNotaCd_CST_Cofins: TStringField
      FieldName = 'Cd_CST_Cofins'
      Size = 3
    end
    object ADODsNotaPr_Cofins: TBCDField
      FieldName = 'Pr_Cofins'
      Precision = 9
      Size = 3
    end
    object ADODsNotaCd_CFOPProduto: TStringField
      FieldName = 'Cd_CFOPProduto'
      ReadOnly = True
      FixedChar = True
      Size = 4
    end
    object ADODsNotaVl_Despesa: TBCDField
      FieldName = 'Vl_Despesa'
      ReadOnly = True
      Precision = 1
      Size = 1
    end
    object ADODsNotaCd_Tributacao: TSmallintField
      FieldName = 'Cd_Tributacao'
    end
    object ADODsNotaFl_OriProduto: TStringField
      FieldName = 'Fl_OriProduto'
      FixedChar = True
      Size = 1
    end
    object ADODsNotaFl_Origem: TStringField
      FieldName = 'Fl_Origem'
      ReadOnly = True
      Size = 1
    end
    object ADODsNotaSt_Nota: TStringField
      FieldName = 'St_Nota'
      FixedChar = True
      Size = 1
    end
    object ADODsNotaFl_Emitente: TStringField
      FieldName = 'Fl_Emitente'
      ReadOnly = True
      Size = 1
    end
    object ADODsNotaCd_ModeloFiscal: TStringField
      FieldName = 'Cd_ModeloFiscal'
      ReadOnly = True
      Size = 2
    end
    object ADODsNotaVl_Seguro: TBCDField
      FieldName = 'Vl_Seguro'
      ReadOnly = True
      Precision = 12
      Size = 3
    end
    object ADODsNotaVl_DescItem: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Vl_DescItem'
      Calculated = True
    end
    object ADODsNotaNm_Pais: TStringField
      FieldName = 'Nm_Pais'
      Size = 50
    end
    object ADODsNotaCd_Pais: TStringField
      FieldName = 'Cd_Pais'
      Size = 10
    end
    object ADODsNotaVl_SeguroItem: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Vl_SeguroItem'
      Calculated = True
    end
    object ADODsNotaVl_DespesaItem: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Vl_DespesaItem'
      Calculated = True
    end
    object ADODsNotaVl_CustoNota: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Vl_CustoNota'
      Calculated = True
    end
    object ADODsNotaPr_MVA: TBCDField
      FieldName = 'Pr_MVA'
      ReadOnly = True
      Precision = 7
      Size = 3
    end
    object ADODsNotaVl_BaseST_Item: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Vl_BaseST_Item'
      Calculated = True
    end
    object ADODsNotaVl_FreteItem: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Vl_FreteItem'
      Calculated = True
    end
    object ADODsNotaFl_ISSRetido: TStringField
      FieldName = 'Fl_ISSRetido'
      FixedChar = True
      Size = 1
    end
    object ADODsNotaVl_OutrosItem: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Vl_OutrosItem'
      Calculated = True
    end
    object ADODsNotaVl_ST_Item: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Vl_ST_Item'
      Calculated = True
    end
    object ADODsNotaxPed: TStringField
      FieldName = 'xPed'
    end
    object ADODsNotanItemPed: TSmallintField
      FieldName = 'nItemPed'
    end
    object ADODsNotaCd_CEST: TStringField
      FieldName = 'Cd_CEST'
      Size = 7
    end
    object ADODsNotaNr_CupomFiscal: TIntegerField
      FieldName = 'Nr_CupomFiscal'
      ReadOnly = True
    end
    object ADODsNotavBCUFDest: TFloatField
      FieldKind = fkCalculated
      FieldName = 'vBCUFDest'
      Calculated = True
    end
    object ADODsNotapICMSUFDest: TFloatField
      FieldKind = fkCalculated
      FieldName = 'pICMSUFDest'
      Calculated = True
    end
    object ADODsNotapICMSInter: TFloatField
      FieldKind = fkCalculated
      FieldName = 'pICMSInter'
      Calculated = True
    end
    object ADODsNotapICMSInterPart: TFloatField
      FieldKind = fkCalculated
      FieldName = 'pICMSInterPart'
      Calculated = True
    end
    object ADODsNotavFCPUFDest: TFloatField
      FieldKind = fkCalculated
      FieldName = 'vFCPUFDest'
      Calculated = True
    end
    object ADODsNotavICMSUFRemet: TFloatField
      FieldKind = fkCalculated
      FieldName = 'vICMSUFRemet'
      Calculated = True
    end
    object ADODsNotaDIFAL: TFloatField
      FieldKind = fkCalculated
      FieldName = 'DIFAL'
      Calculated = True
    end
    object ADODsNotaDIFALOrigem: TFloatField
      FieldKind = fkCalculated
      FieldName = 'DIFALOrigem'
      Calculated = True
    end
    object ADODsNotaDIFALDestino: TFloatField
      FieldKind = fkCalculated
      FieldName = 'DIFALDestino'
      Calculated = True
    end
    object ADODsNotapFCPUFDest: TFloatField
      FieldKind = fkCalculated
      FieldName = 'pFCPUFDest'
      Calculated = True
    end
    object ADODsNotaCd_cProdANP: TIntegerField
      FieldName = 'Cd_cProdANP'
    end
    object ADODsNotaFl_ConFinal: TStringField
      FieldName = 'Fl_ConFinal'
      FixedChar = True
      Size = 1
    end
    object ADODsNotaNr_Insc_Municipal: TStringField
      FieldName = 'Nr_Insc_Municipal'
    end
    object ADODsNotaDs_DescANP: TStringField
      FieldName = 'Ds_DescANP'
      Size = 95
    end
    object ADODsNotaDs_cBeneficio: TStringField
      FieldName = 'Ds_cBeneficio'
    end
    object ADODsNotaPr_pFCPST: TBCDField
      FieldName = 'Pr_pFCPST'
      Precision = 7
      Size = 2
    end
    object ADODsNotafinNFe: TStringField
      FieldName = 'finNFe'
      FixedChar = True
      Size = 1
    end
    object ADODsNotanatOp: TStringField
      FieldName = 'natOp'
      Size = 60
    end
    object ADODsNotarefNFe: TStringField
      FieldName = 'refNFe'
      ReadOnly = True
      Size = 44
    end
  end
  object ADOCmdNota: TMultADOCMD
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLDelete.Strings = (
      '--------------- Somente produtos e servi'#231'os - de temperado'
      'union all'
      'select'
      '  ''''1'''' as Fl_Origem, OI.Nr_Item,'
      '  '
      '  St_Nota ='
      '    case'
      '      when O.St_Orcamento = ''''9'''' then ''''N'''
      '      when O.St_Orcamento = ''''2'''' then ''''S'''
      '      else ''''E'''
      ''
      '    end,'
      ''
      '  O.Cd_Filial, O.Nr_Orcamento, O.Tp_Carga, O.Cd_Emitente, E.Nm_Emitente,'
      '  O.Fl_FormaPagto, O.Nr_Endereco, O.Vl_Pedido_Frete, O.Ps_Pedido,'
      '  O.Vl_Pedido, O.Mm_Nota as Mm_Observacao, O.Dt_Fatura, O.Nr_Fatura, O.Cd_Serie,'
      '  O.Vl_BaseICMS, O.Pr_ICMS, O.Vl_ICMS, O.Vl_IPI, O.Vl_STB, O.Nr_ECF,'
      '  E.Fl_Contribuinte, O.Nr_Pedido_Emitente, O.Nm_Contato, E.Nr_Documento,'
      '  O.Pr_Desconto, O.Vl_Desconto, O.Pr_Custo, O.Vl_Custo, E.Nr_Insc_Estadual,'
      '  O.Dt_Saida, O.Ds_Quantidade, O.Ds_Especie, O.Ds_Marca, 0.0 as Vl_Saida,'
      '  O.Cd_CFOP, CF.Ds_CFOP, CF.Tp_Operacao, CF.Fl_Valores, O.Vl_Servico,'
      ''
      '  OI.Cd_Produto, P.Nm_Produto, OI.Sg_Unidade, OP.Qt_Projeto * OI.Qt_Item as Qt_Item,'
      '  OI.Vl_Unitario, 0.0 as Qt_Agregado, ''''2'''' as Fl_STB, T.Mm_ObsNota,'
      ''
      '  case'
      '    when T.Cd_CST is not null then T.Cd_CST'
      '    else'
      '      case'
      '        when ( E.Fl_Contribuinte = ''''2'''' ) or ( C.Sg_Estado <> :Sg_Filial ) then ''''000'''
      '        when ( ( E.Fl_Contribuinte = ''''1'''' ) or ( C.Sg_Estado = :Sg_Filial ) ) and'
      '             ( O.Pr_ICMS > ( case when E.Fl_Contribuinte = ''''1'''' then T.Pr_Contrib else T.Pr_NaoContrib end ) ) then ''''020'''
      '        else ''''000'''
      ''
      '      end'
      ''
      '    end as Cd_CST,'
      ''
      '  T.Pr_Contrib, T.Pr_NaoContrib, T.Tp_Tributacao, P.Fl_Produto, P.Fl_Origem as Fl_OriProduto,'
      '  null as Nr_Lote, null as Dt_Fabricacao, null as Dt_Validade, P.Cd_Fabricante, P.Pr_IPI,'
      '  EE.Ds_Endereco, EE.Nm_Bairro, EE.Ds_Complemento, EE.Nr_CEP, C.Nm_Cidade,'
      '  C.Sg_Estado, C.Nm_Pais, C.Cd_Pais, EE.Nr_Telefone_1, C.Cd_IBGE, EE.Ds_Numero,'
      ''
      '  /* Transportador */'
      '  TP.Nm_Transportador, TP.Nr_Documento as Nr_Transp_Docto,'
      '  TP.Nr_InscEstadual as Nr_Transp_IE, TP.Ds_Endereco as Ds_Transp_End,'
      '  TP.Nm_Bairro as Nm_Transp_Bai, TP.Ds_Complemento as Ds_Transp_Comp,'
      '  TP.Nr_CEP as Nr_Transp_CEP, CT.Nm_Cidade as Nm_Transp_Cid,'
      '  CT.Sg_Estado as Sg_Transp_Est, TP.Nr_Telefone as Nr_Transp_Tel,'
      '  ( case when O.Nr_Placa = '''''' or O.Nr_Placa is null then TP.Nr_Placa else O.Nr_Placa end ) as Nr_Placa,'
      '  null as Pr_Reducao, O.Fl_Frete, O.Vl_ISS, O.Cd_Funcionario,'
      '  F.Nm_Funcionario, P.Cd_ClasFiscal, O.Ps_Liquido, CF.Fl_Imposto, E.Fl_Exportador,'
      '  O.Vl_BaseST, P.Vl_MVA, P.Cd_Barra, E.Tp_Pessoa,'
      '  T.Cd_CST_PIS, T.Pr_PIS, T.Cd_CST_Cofins, T.Pr_Cofins, Convert( Numeric( 12, 3 ), 0 ) as Vl_Despesa,'
      '  P.Cd_Tributacao,'
      ''
      '  Cd_CFOPProduto ='
      '    ('
      '    case'
      '      when ( C.Sg_Estado  = :Sg_Filial ) and T.Cd_CFOPDentro is not null then T.Cd_CFOPDentro'
      '      when ( C.Sg_Estado <> :Sg_Filial ) and T.Cd_CFOPFora is not null then T.Cd_CFOPFora'
      '      else O.Cd_CFOP'
      '    end'
      '    ),'
      ''
      '  Fl_Emitente = ''''1'''','
      '  '
      '  Cd_ModeloFiscal = case when Fil.Fl_NFe = ''''1'''' then ''''55'''' else ''''01'''' end,'
      ''
      ''
      '  Convert( Numeric( 12, 3 ), 0 ) as Vl_Seguro,'
      ''
      '  Pr_MVA ='
      '    ('
      '    case'
      '      when ( C.Sg_Estado  = :Sg_Filial ) then T.Pr_MVA_Dentro'
      '      when ( C.Sg_Estado <> :Sg_Filial ) then T.pr_MVA_Fora'
      '    end'
      '    ),'
      ''
      '  T.Fl_ISSRetido, null as xPed, null as nItemPed, P.Cd_CEST,'
      ''
      '  Convert( Int, 0 ) as Nr_CupomFiscal,'
      ''
      '  P.Cd_cProdANP, O.Fl_ConFinal, E.Nr_Insc_Municipal, P.Ds_DescANP,'
      ''
      '  T.Ds_cBeneficio, T.Pr_pFCPST, O.finNFe, O.natOp, Convert( VarChar( 44 ), '''''' ) as refNFe'
      ''
      'from'
      '  Orcamento O'
      ''
      'inner join'
      '  Filial Fil'
      'on'
      '  Fil.Cd_Filial = O.Cd_Filial'
      ''
      'inner join'
      '  Funcionario F'
      'on'
      '  F.Cd_Funcionario = O.Cd_Funcionario'
      ''
      'inner join'
      '  Orcamento_Projeto OP'
      'on'
      '  OP.Cd_Filial     = O.Cd_Filial and'
      '  OP.Nr_Orcamento  = O.Nr_Orcamento'
      ''
      'inner join'
      '  Orcamento_Projeto_Item OI'
      'on'
      '  OI.Cd_Filial     = OP.Cd_Filial and'
      '  OI.Nr_Orcamento  = OP.Nr_Orcamento and'
      '  OI.Nr_Projeto    = OP.Nr_Projeto'
      ''
      'inner join'
      '  Produto P'
      'on'
      '  P.Cd_Produto = OI.Cd_Produto'
      ''
      'inner join'
      '  Tributacao T'
      'on'
      '  T.Cd_Tributacao = P.Cd_Tributacao'
      ''
      'left join'
      '  Emitente E'
      'on'
      '  E.Cd_Emitente = O.Cd_Emitente'
      ''
      'left join'
      '  Emitente_Endereco EE'
      'on'
      '  EE.Cd_Emitente = O.Cd_Emitente and'
      '  EE.Nr_Endereco = O.Nr_Endereco'
      ''
      'left join'
      '  Cidade C'
      'on'
      '  C.Cd_Cidade = EE.Cd_Cidade'
      ''
      'left join'
      '  Transportador TP'
      'on'
      '  TP.Cd_Transportador = O.Cd_Transportador'
      ''
      'left join'
      '  Cidade CT'
      'on'
      '  CT.Cd_Cidade = TP.Cd_Cidade'
      ''
      'left join'
      '  CFOP CF'
      'on'
      '  CF.Cd_CFOP = O.Cd_CFOP'
      ''
      'where'
      '  O.Cd_Filial    = :Cd_Filial and'
      '  O.Nr_Orcamento = :Nr_Orcamento'
      ''
      '--------------- Faz o tratamento caso so exista somente item de temperado'
      'delete from'
      '  #NotaItemTMP'
      ''
      'where'
      '  Nm_Produto is null and'
      ''
      '  exists( select Nm_Produto from #NotaItemTMP where Nm_Produto is not null )'
    )
    SQLOther0.Strings = (
      'if Object_ID( ''''TempDB..#NotaItemTMP'''' ) is not null'
      '  drop table #NotaItemTMP'
    )
    SQLOther1.Strings = (
      '--------------- Somente produtos e servi'#231'os - Or'#231'amento'
      'select'
      '  ''''1'''' as Fl_Origem, OI.Nr_Item,'
      ''
      '  St_Nota ='
      '    case'
      '      when O.St_Orcamento = ''''9'''' then ''''N'''
      '      when O.St_Orcamento = ''''2'''' then ''''S'''
      '      else ''''E'''
      ''
      '    end,'
      ''
      '  O.Cd_Filial, O.Nr_Orcamento, O.Tp_Carga, O.Cd_Emitente, E.Nm_Emitente,'
      '  O.Fl_FormaPagto, O.Nr_Endereco, O.Vl_Pedido_Frete, O.Ps_Pedido,'
      '  O.Vl_Pedido, O.Mm_Nota as Mm_Observacao, O.Dt_Fatura, O.Nr_Fatura, O.Cd_Serie,'
      '  O.Vl_BaseICMS, O.Pr_ICMS, O.Vl_ICMS, O.Vl_IPI, O.Vl_STB, O.Nr_ECF,'
      '  E.Fl_Contribuinte, O.Nr_Pedido_Emitente, O.Nm_Contato, E.Nr_Documento,'
      '  O.Pr_Desconto, O.Vl_Desconto, O.Pr_Custo, O.Vl_Custo, E.Nr_Insc_Estadual,'
      '  O.Dt_Saida, O.Ds_Quantidade, O.Ds_Especie, O.Ds_Marca, 0.0 as Vl_Saida,'
      '  O.Cd_CFOP, CF.Ds_CFOP, CF.Tp_Operacao, CF.Fl_Valores, O.Vl_Servico,'
      ''
      '  OI.Cd_Produto, OI.Nm_Produto, OI.Sg_Unidade, OI.Qt_Item,'
      '  OI.Vl_Unitario, OI.Qt_Agregado, OI.Fl_STB, T.Mm_ObsNota,'
      ''
      '  case'
      '    --------------- Mudado em 18/09/2014'
      '    when ( E.Fl_Contribuinte = ''''1'''' ) and ( C.Sg_Estado  = :Sg_Filial ) then T.Cd_CST'
      '    when ( E.Fl_Contribuinte = ''''1'''' ) and ( C.Sg_Estado <> :Sg_Filial ) then T.Cd_CST_Fora'
      '    when ( E.Fl_Contribuinte >= ''''2'''' ) and ( C.Sg_Estado  = :Sg_Filial ) then T.Cd_CST_NC'
      '    when ( E.Fl_Contribuinte >= ''''2'''' ) and ( C.Sg_Estado <> :Sg_Filial ) then T.Cd_CST_Fora_NC'
      ''
      '    /*'
      '    --------------- Mudado em 17/06/2013'
      '    when T.Cd_CST is not null then ( case when ( E.Fl_Contribuinte = ''''1'''' ) then T.Cd_CST else T.Cd_CST_NC end )'
      '    else'
      '      case'
      '        when ( E.Fl_Contribuinte >= ''''2'''' ) or ( C.Sg_Estado <> :Sg_Filial ) then ''''000'''
      '        when ( ( E.Fl_Contribuinte = ''''1'''' ) or ( C.Sg_Estado = :Sg_Filial ) ) and'
      '             ( O.Pr_ICMS > OI.Pr_Reducao ) then ''''020'''
      '        else ''''000'''
      ''
      '      end'
      '    */'
      '  end as Cd_CST,'
      ''
      '  T.Pr_Contrib, T.Pr_NaoContrib,'
      ''
      '  --------------- Mudado em 15/07/2013'
      '  case'
      '    when T.Cd_CST is null and T.Cd_CST_NC is null then T.Tp_Tributacao'
      '    when ( E.Fl_Contribuinte >= ''''2'''' ) and ( T.Cd_CST_NC = ''''202'''' ) then ''''3''''  --- Isento'
      '    else T.Tp_Tributacao'
      ''
      '  end as Tp_Tributacao,'
      ''
      '  P.Fl_Produto, P.Fl_Origem as Fl_OriProduto,'
      '  OI.Nr_Lote, OI.Dt_Fabricacao, OI.Dt_Validade, P.Cd_Fabricante, P.Pr_IPI,'
      ''
      '  EE.Ds_Endereco, EE.Nm_Bairro, EE.Ds_Complemento, EE.Nr_CEP, C.Nm_Cidade,'
      '  C.Sg_Estado, C.Nm_Pais, C.Cd_Pais, EE.Nr_Telefone_1, C.Cd_IBGE, EE.Ds_Numero,'
      ''
      '  /* Transportador */'
      '  TP.Nm_Transportador, TP.Nr_Documento as Nr_Transp_Docto,'
      '  TP.Nr_InscEstadual as Nr_Transp_IE, TP.Ds_Endereco as Ds_Transp_End,'
      '  TP.Nm_Bairro as Nm_Transp_Bai, TP.Ds_Complemento as Ds_Transp_Comp,'
      '  TP.Nr_CEP as Nr_Transp_CEP, CT.Nm_Cidade as Nm_Transp_Cid,'
      '  CT.Sg_Estado as Sg_Transp_Est, TP.Nr_Telefone as Nr_Transp_Tel,'
      '  ( case when O.Nr_Placa = '''''' or O.Nr_Placa is null then TP.Nr_Placa else O.Nr_Placa end ) as Nr_Placa,'
      '  OI.Pr_Reducao, O.Fl_Frete, O.Vl_ISS, O.Cd_Funcionario,'
      '  F.Nm_Funcionario, P.Cd_ClasFiscal, O.Ps_Liquido, CF.Fl_Imposto, E.Fl_Exportador,'
      '  O.Vl_BaseST, P.Vl_MVA, P.Cd_Barra, E.Tp_Pessoa,'
      '  T.Cd_CST_PIS, T.Pr_PIS, T.Cd_CST_Cofins, T.Pr_Cofins, Convert( Numeric( 12, 3 ), 0 ) as Vl_Despesa,'
      '  T.Cd_Tributacao,'
      '  Cd_CFOPProduto ='
      '    ('
      '    case'
      '      when CF.Tp_Operacao > ''''1'''' then O.Cd_CFOP'
      '      when ( C.Sg_Estado  = :Sg_Filial ) and T.Cd_CFOPDentro is not null then T.Cd_CFOPDentro'
      '      when ( C.Sg_Estado <> :Sg_Filial ) and T.Cd_CFOPFora is not null then T.Cd_CFOPFora'
      '      else O.Cd_CFOP'
      '    end'
      '    ),'
      ''
      '  Fl_Emitente = ''''1'''','
      ''
      '  Cd_ModeloFiscal = case when Fil.Fl_NFe = ''''1'''' then ''''55'''' else ''''01'''' end,'
      ''
      '  Convert( Numeric( 12, 3 ), 0 ) as Vl_Seguro,'
      ''
      '  Pr_MVA ='
      '    ('
      '    case'
      '      when ( C.Sg_Estado  = :Sg_Filial ) then T.Pr_MVA_Dentro'
      '      when ( C.Sg_Estado <> :Sg_Filial ) then T.pr_MVA_Fora'
      '    end'
      '    ),'
      ''
      '  T.Fl_ISSRetido, OI.xPed, OI.nItemPed, P.Cd_CEST, Convert( Int, 0 ) as Nr_CupomFiscal,'
      ''
      '  P.Cd_cProdANP, O.Fl_ConFinal, E.Nr_Insc_Municipal, P.Ds_DescANP,'
      ''
      '  T.Ds_cBeneficio, T.Pr_pFCPST, O.finNFe, O.natOp, Convert( VarChar( 44 ), '''''' ) as refNFe'
      ''
      'into'
      '  #notaitemtmp'
      ''
      'from'
      '  Orcamento O'
      ''
      'inner join'
      '  Filial Fil'
      'on'
      '  Fil.Cd_Filial = O.Cd_Filial'
      ''
      'inner join'
      '  Funcionario F'
      'on'
      '  F.Cd_Funcionario = O.Cd_Funcionario'
      ''
      'left join'
      '  Orcamento_Item OI'
      'on'
      '  OI.Cd_Filial     = O.Cd_Filial and'
      '  OI.Nr_Orcamento  = O.Nr_Orcamento and'
      '  OI.Fl_Confirmado = ''''1'''
      ''
      'left join'
      '  Emitente E'
      'on'
      '  E.Cd_Emitente = O.Cd_Emitente'
      ''
      'left join'
      '  Emitente_Endereco EE'
      'on'
      '  EE.Cd_Emitente = O.Cd_Emitente and'
      '  EE.Nr_Endereco = O.Nr_Endereco'
      ''
      'left join'
      '  Cidade C'
      'on'
      '  C.Cd_Cidade = EE.Cd_Cidade'
      ''
      'left join'
      '  Produto P'
      'on'
      '  P.Cd_Produto = OI.Cd_Produto'
      ''
      'left join'
      '  Tributacao T'
      'on'
      '  T.Cd_Tributacao = Coalesce( OI.Cd_Tributacao, P.Cd_Tributacao ) ----- Mudado em 30/09/2013'
      ''
      'left join'
      '  Transportador TP'
      'on'
      '  TP.Cd_Transportador = O.Cd_Transportador'
      ''
      'left join'
      '  Cidade CT'
      'on'
      '  CT.Cd_Cidade = TP.Cd_Cidade'
      ''
      'left join'
      '  CFOP CF'
      'on'
      '  CF.Cd_CFOP = O.Cd_CFOP'
      ''
      'where'
      '  O.Cd_Filial    = :Cd_Filial and'
      '  O.Nr_Orcamento = :Nr_Orcamento'
      ''
    )
    SQLOther2.Strings = (
      '--------------- Somente um item de desconto - Or'#231'amento '
      'insert into #NotaItemTMP'
      'select'
      '  ''''1'''' as Fl_Origem, 9999,'
      '  St_Nota ='
      '    case'
      '      when O.St_Orcamento = ''''9'''' then ''''N'''
      '      when O.St_Orcamento = ''''2'''' then ''''S'''
      '      else ''''E'''
      ''
      '    end,'
      '  '
      '  O.Cd_Filial, O.Nr_Orcamento, O.Tp_Carga, O.Cd_Emitente, E.Nm_Emitente,'
      '  O.Fl_FormaPagto, O.Nr_Endereco, O.Vl_Pedido_Frete, O.Ps_Pedido,'
      '  O.Vl_Pedido, O.Mm_Nota as Mm_Observacao, O.Dt_Fatura, O.Nr_Fatura, O.Cd_Serie,'
      '  O.Vl_BaseICMS, O.Pr_ICMS, O.Vl_ICMS, O.Vl_IPI, O.Vl_STB, O.Nr_ECF,'
      '  E.Fl_Contribuinte, O.Nr_Pedido_Emitente, O.Nm_Contato, E.Nr_Documento,'
      '  O.Pr_Desconto, O.Vl_Desconto, O.Pr_Custo, O.Vl_Custo, E.Nr_Insc_Estadual,'
      '  O.Dt_Saida, O.Ds_Quantidade, O.Ds_Especie, O.Ds_Marca, 0.0 as Vl_Saida,'
      '  O.Cd_CFOP, CF.Ds_CFOP, CF.Tp_Operacao, CF.Fl_Valores, O.Vl_Servico,'
      ''
      '  null, ''''<< Desconto '''' + Cast( Cast( Round('
      '    case'
      '      when O.Pr_Desconto > 0 then O.Vl_Pedido / 100.0 * O.Pr_Desconto'
      '      else O.Vl_Desconto'
      '    end, 2 ) as Numeric( 12, 2 ) ) as VarChar( 15 )  ) + '''' >>'''','
      ''
      '  null, null, null, null, null, null, ''''000'''' as Cd_CST, null, null, null, null, null,'
      '  null, null, null, null, null,'
      ''
      '  EE.Ds_Endereco, EE.Nm_Bairro, EE.Ds_Complemento, EE.Nr_CEP, C.Nm_Cidade,'
      '  C.Sg_Estado, C.Nm_Pais, C.Cd_Pais, EE.Nr_Telefone_1, C.Cd_IBGE, EE.Ds_Numero,'
      ''
      '  /* Transportador */'
      '  TP.Nm_Transportador, TP.Nr_Documento as Nr_Transp_Docto,'
      '  TP.Nr_InscEstadual as Nr_Transp_IE, TP.Ds_Endereco as Ds_Transp_End,'
      '  TP.Nm_Bairro as Nm_Transp_Bai, TP.Ds_Complemento as Ds_Transp_Comp,'
      '  TP.Nr_CEP as Nr_Transp_CEP, CT.Nm_Cidade as Nm_Transp_Cid,'
      '  CT.Sg_Estado as Sg_Transp_Est, TP.Nr_Telefone as Nr_Transp_Tel,'
      '  ( case when O.Nr_Placa = '''''' or O.Nr_Placa is null then TP.Nr_Placa else O.Nr_Placa end ) as Nr_Placa,'
      '  0.0 as Pr_Reducao, O.Fl_Frete, O.Vl_ISS, O.Cd_Funcionario,'
      '  F.Nm_Funcionario, null, O.Ps_Liquido, CF.Fl_Imposto, E.Fl_Exportador,'
      '  O.Vl_BaseST, null as Vl_MVA, null as Cd_Barra, E.Tp_Pessoa,'
      '  null, null, null, null, null, null, null,'
      ''
      '  Fl_Emitente = ''''1'''','
      ''
      '  Cd_ModeloFiscal = case when Fil.Fl_NFe = ''''1'''' then ''''55'''' else ''''01'''' end,'
      ''
      '  Convert( Numeric( 12, 3 ), 0 ) as Vl_Seguro,'
      ''
      '  Convert( Numeric( 12, 3 ), 0 ) as Pr_MVA,'
      ''
      '  Fl_ISSRetido = ''''2'''', null as xPed, null as nItemPed, null as Cd_CEST,'
      ''
      '  Convert( Int, 0 ) as Nr_CupomFiscal,'
      ''
      '  convert( Int, 0 ) as Cd_cProdANP, O.Fl_ConFinal, E.Nr_Insc_Municipal, Convert( VarChar( 95 ), '''''' ) as Ds_DescANP,'
      ''
      '  '''''' as Ds_cBeneficio, 0.0 as Pr_pFCPST, O.finNFe, O.natOp, Convert( VarChar( 44 ), '''''' ) as refNFe'
      ''
      'from'
      '  Orcamento O'
      ''
      'inner join'
      '  Filial Fil'
      'on'
      '  Fil.Cd_Filial = O.Cd_Filial'
      ''
      'inner join'
      '  Funcionario F'
      'on'
      '  F.Cd_Funcionario = O.Cd_Funcionario'
      '  '
      'left join'
      '  Emitente E'
      'on'
      '  E.Cd_Emitente = O.Cd_Emitente'
      ''
      'left join'
      '  Emitente_Endereco EE'
      'on'
      '  EE.Cd_Emitente = O.Cd_Emitente and'
      '  EE.Nr_Endereco = O.Nr_Endereco'
      ''
      'left join'
      '  Cidade C'
      'on'
      '  C.Cd_Cidade = EE.Cd_Cidade'
      ''
      'left join'
      '  Transportador TP'
      'on'
      '  TP.Cd_Transportador = O.Cd_Transportador'
      ''
      'left join'
      '  Cidade CT'
      'on'
      '  CT.Cd_Cidade = TP.Cd_Cidade'
      ''
      'left join'
      '  CFOP CF'
      'on'
      '  CF.Cd_CFOP = O.Cd_CFOP'
      ''
      'where'
      '  O.Cd_Filial    = :Cd_Filial and'
      '  O.Nr_Orcamento = :Nr_Orcamento and'
      '  O.Pr_Desconto + O.Vl_Desconto > 0'
    )
    SQLOther3.Strings = (
      '--------------- Nota de saida do estoque'
      'select'
      '  ''''2'''' as Fl_Origem, SI.Nr_Item,'
      '  St_Nota ='
      '    case'
      '      when S.St_Saida = ''''2'''' then ''''N'''
      '      when S.St_Saida = ''''3'''' then ''''S'''
      '      else ''''E'''
      ''
      '    end,'
      ''
      '  S.Cd_Filial, S.Nr_Saida as Nr_Orcamento, ''''1'''' as Tp_Carga, S.Cd_Emitente,'
      '  E.Nm_Emitente, ''''0'''' as Fl_FormaPagto, E.Nr_Endereco, S.Vl_Frete as Vl_Pedido_Frete,'
      '  S.Ps_Nota as Ps_Pedido, S.Vl_Produto as Vl_Pedido, S.Vl_Nota as Vl_Saida,'
      '  S.Mm_Nota as Mm_Observacao, S.Dt_Emissao as Dt_Fatura, S.Nr_Fatura, S.Cd_Serie,'
      '  S.Vl_BaseICMS, S.Pr_ICMS, S.Vl_ICMS, S.Vl_IPI, S.Vl_Substituicao as Vl_STB, S.Nr_ECF,'
      '  E.Fl_Contribuinte, Cast( '''''' as VarChar( 30 ) ) as Nr_Pedido_Emitente,'
      '  Cast( '''''' as VarChar( 50 ) ) as Nm_Contato, E.Nr_Documento,'
      '  0.0 as Pr_Desconto, S.Vl_Desconto, 0.0 as Pr_Custo, 0.0 as Vl_Custo,'
      '  E.Nr_Insc_Estadual, S.Dt_Emissao as Dt_Saida, S.Ds_Quantidade, S.Ds_Especie,'
      '  S.Ds_Marca,'
      '  S.Cd_CFOP, CF.Ds_CFOP, CF.Tp_Operacao, CF.Fl_Valores, 0.0 as Vl_Servico,'
      ''
      '  SI.Cd_Produto, SI.Nm_Produto,'
      '  SI.Sg_Unidade, SI.Qt_Item, SI.Vl_Unitario, 0.0 as Qt_Agregado, ''''2'''' as Fl_STB, T.Mm_ObsNota,'
      ''
      '  case'
      '    --------------- Mudado em 18/09/2014'
      '    when ( E.Fl_Contribuinte = ''''1'''' ) and ( C.Sg_Estado  = :Sg_Filial ) then T.Cd_CST'
      '    when ( E.Fl_Contribuinte = ''''1'''' ) and ( C.Sg_Estado <> :Sg_Filial ) then T.Cd_CST_Fora'
      '    when ( E.Fl_Contribuinte >= ''''2'''' ) and ( C.Sg_Estado  = :Sg_Filial ) then T.Cd_CST_NC'
      '    when ( E.Fl_Contribuinte >= ''''2'''' ) and ( C.Sg_Estado <> :Sg_Filial ) then T.Cd_CST_Fora_NC'
      ''
      '  end as Cd_CST,'
      ''
      '  case when SI.Cd_Produto is null then SI.Pr_ICMS else T.Pr_Contrib end as Pr_Contrib,'
      '  case when SI.Cd_Produto is null then SI.Pr_ICMS else T.Pr_NaoContrib end as Pr_NaoContrib,'
      ''
      '  --------------- Mudado em 15/07/2013'
      '  case'
      '    when T.Cd_CST is null and T.Cd_CST_NC is null then T.Tp_Tributacao'
      '    when ( E.Fl_Contribuinte >= ''''2'''' ) and ( T.Cd_CST_NC = ''''202'''' ) then ''''3''''  --- Isento'
      '    else T.Tp_Tributacao'
      ''
      '  end as Tp_Tributacao,'
      ''
      '  P.Fl_Produto, P.Fl_Origem as Fl_OriProduto, SI.Nr_Lote, SI.Dt_Fabricacao, SI.Dt_Validade,'
      '  P.Cd_Fabricante,'
      '  Pr_IPI = case when SI.Pr_IPI > 0.0 then SI.Pr_IPI else P.Pr_IPI end,'
      ''
      '  EE.Ds_Endereco, EE.Nm_Bairro, EE.Ds_Complemento, EE.Nr_CEP, C.Nm_Cidade,'
      '  C.Sg_Estado, C.Nm_Pais, C.Cd_Pais, EE.Nr_Telefone_1, C.Cd_IBGE, EE.Ds_Numero,'
      ''
      '  /* Transportador */'
      '  TP.Nm_Transportador, TP.Nr_Documento as Nr_Transp_Docto,'
      '  TP.Nr_InscEstadual as Nr_Transp_IE, TP.Ds_Endereco as Ds_Transp_End,'
      '  TP.Nm_Bairro as Nm_Transp_Bai, TP.Ds_Complemento as Ds_Transp_Comp,'
      '  TP.Nr_CEP as Nr_Transp_CEP, CT.Nm_Cidade as Nm_Transp_Cid,'
      '  CT.Sg_Estado as Sg_Transp_Est, TP.Nr_Telefone as Nr_Transp_Tel,'
      '  ( case when S.Nr_Placa = '''''' or S.Nr_Placa is null then TP.Nr_Placa else S.Nr_Placa end ) as Nr_Placa,'
      '  0.0 as Pr_Reducao, S.Fl_Frete, S.Vl_ISS,'
      '  Cast( 0 as SmallInt ) as Cd_Funcionario,'
      '  Cast( '''''' as VarChar( 50 ) ) as Nm_Funcionario, P.Cd_ClasFiscal, S.Ps_Liquido,'
      '  CF.Fl_Imposto, E.Fl_Exportador, S.Vl_BaseSubst as Vl_BaseST, P.Vl_MVA,'
      '  P.Cd_Barra, E.Tp_Pessoa,'
      '  T.Cd_CST_PIS, T.Pr_PIS, T.Cd_CST_Cofins, T.Pr_Cofins, S.Vl_Despesa, T.Cd_Tributacao,'
      '  Cd_CFOPProduto ='
      '    ('
      '    case'
      '      -- when CF.Tp_Operacao > ''''1'''' then S.Cd_CFOP -- Mudado em 26/11/2020'
      '      when ( C.Sg_Estado  = :Sg_Filial ) and T.Cd_CFOPDentro is not null then T.Cd_CFOPDentro'
      '      when ( C.Sg_Estado <> :Sg_Filial ) and T.Cd_CFOPFora is not null then T.Cd_CFOPFora'
      '      else S.Cd_CFOP'
      '    end'
      '    ),'
      ''
      '  Fl_Emitente = ''''1'''', S.Cd_ModeloFiscal, S.Vl_Seguro,'
      ''
      '  Pr_MVA ='
      '    ('
      '    case'
      '      when ( C.Sg_Estado  = :Sg_Filial ) then T.Pr_MVA_Dentro'
      '      when ( C.Sg_Estado <> :Sg_Filial ) then T.pr_MVA_Fora'
      '    end'
      '    ),'
      ''
      '  T.Fl_ISSRetido, SI.xPed, SI.nItemPed, P.Cd_CEST,'
      ''
      '  Convert( Int, 0 ) as Nr_CupomFiscal,'
      ''
      '  P.Cd_cProdANP, S.Fl_ConFinal, E.Nr_Insc_Municipal, P.Ds_DescANP,'
      ''
      '  T.Ds_cBeneficio, T.Pr_pFCPST, S.finNFe, S.natOp, S.refNFe'
      ''
      'into'
      '  #notaitemtmp'
      '  '
      'from'
      '  Saida S'
      ''
      'inner join'
      '  Emitente E'
      'on'
      '  E.Cd_Emitente = S.Cd_Emitente'
      ''
      'inner join'
      '  Emitente_Endereco EE'
      'on'
      '  EE.Cd_Emitente = E.Cd_Emitente and'
      '  EE.Nr_Endereco = E.Nr_Endereco'
      ''
      'inner join'
      '  Cidade C'
      'on'
      '  C.Cd_Cidade = EE.Cd_Cidade'
      ''
      'inner join'
      '  CFOP CF'
      'on'
      '  CF.Cd_CFOP = S.Cd_CFOP'
      ''
      'left join'
      '  Saida_Item SI'
      'on'
      '  SI.Cd_Filial = S.Cd_Filial and'
      '  SI.Nr_Saida  = S.Nr_Saida'
      ''
      'left join'
      '  Produto P'
      'on'
      '  P.Cd_Produto = SI.Cd_Produto'
      ''
      'left join'
      '  Tributacao T'
      'on'
      '  T.Cd_Tributacao = Coalesce( SI.Cd_Tributacao, P.Cd_Tributacao ) ----- Mudado em 30/09/2013'
      ''
      'left join'
      '  Transportador TP'
      'on'
      '  TP.Cd_Transportador = S.Cd_Transportador'
      ''
      'left join'
      '  Cidade CT'
      'on'
      '  CT.Cd_Cidade = TP.Cd_Cidade'
      ''
      'where'
      '  S.Cd_Filial = :Cd_Filial and'
      '  S.Nr_Saida  = :Nr_Saida'
      ''
      'order by'
      '  SI.Nr_Item'
    )
    SQLOther4.Strings = (
      '--------------- Nota de Entrada do Estoque'
      'select'
      ' ''''3'''' as Fl_Origem,  EI.Nr_Item,'
      ''
      '  St_Nota ='
      '    case'
      '      when ES.St_Entrada = ''''2'''' then ''''N'''
      '      when ES.St_Entrada = ''''3'''' then ''''S'''
      '      else ''''E'''
      ''
      '    end,'
      ''
      '  ES.Cd_Filial, ES.Nr_Entrada as Nr_Orcamento, ''''1'''' as Tp_Carga, ES.Cd_Emitente,'
      '  E.Nm_Emitente, ''''1'''' as Fl_FormaPagto, E.Nr_Endereco, ES.Vl_Frete as Vl_Pedido_Frete,'
      '  ES.Ps_Nota as Ps_Pedido, ES.Vl_Produto as Vl_Pedido, ES.Mm_Nota as Mm_Observacao,'
      '  ES.Dt_Lancamento as Dt_Fatura, ES.Nr_Fatura, ES.Cd_Serie,'
      '  ES.Vl_BaseICMS, ES.Pr_ICMS, ES.Vl_ICMS, ES.Vl_IPI, ES.Vl_Substituicao as Vl_STB, 0 as Nr_ECF,'
      '  E.Fl_Contribuinte, replicate( '''' '''', 30 ) as Nr_Pedido_Emitente,'
      '  replicate( '''' '''', 50 ) as Nm_Contato, E.Nr_Documento, Vl_Nota as Vl_Saida,'
      '  0.0 as Pr_Desconto, ES.Vl_Desconto, 0.0 as Pr_Custo, 0.0 as Vl_Custo,'
      '  E.Nr_Insc_Estadual, ES.Dt_Lancamento as Dt_Saida, ES.Ds_Quantidade, ES.Ds_Especie,'
      '  ES.Ds_Marca, ES.Cd_CFOP, CF.Ds_CFOP, CF.Tp_Operacao, CF.Fl_Valores, 0.0 as Vl_Servico,'
      ''
      '  EI.Cd_Produto,'
      '  Nm_Produto ='
      '    case'
      '      when EI.Nm_Produto is null or EI.Nm_Produto = '''''' then P.Nm_Produto'
      '      else EI.Nm_Produto'
      ''
      '    end,'
      ''
      '  EI.Sg_Unidade, EI.Qt_Item,'
      '  Vl_Unitario = EI.Vl_Unitario -'
      '    case'
      '      when EI.Pr_Desconto > 0 then Vl_Unitario / 100.0 * EI.Pr_Desconto'
      '      else 0.0'
      ''
      '    end,'
      '    '
      '  0.0 as Qt_Agregado, ''''2'''' as Fl_STB, T.Mm_ObsNota,'
      ''
      '  Cd_CST ='
      '    case'
      '      when EI.Cd_CST is not null and ( EI.Cd_CST <> '''''' ) then EI.Cd_CST'
      '      when T.Cd_CST is null then ''''000'''
      '      else ( case when ( E.Fl_Contribuinte = ''''1'''' ) then T.Cd_CST else T.Cd_CST_NC end )'
      '      '
      '    end,'
      ''
      '  /*'
      '  Pr_Contrib    = case when EI.Pr_ICMS > 0.0 then EI.Pr_ICMS else T.Pr_Contrib end,'
      '  Pr_NaoContrib = case when EI.Pr_ICMS > 0.0 then EI.Pr_ICMS else T.Pr_NaoContrib end,'
      '  Pr_Contrib    = EI.Pr_ICMS,'
      '  Pr_NaoContrib = EI.Pr_ICMS,'
      '  Pr_Contrib    = case when EI.Cd_CST in ( ''''010'''', ''''110'''', ''''210'''', ''''070'''', ''''170'''', ''''270'''' ) then T.Pr_Contrib else EI.Pr_ICMS end,'
      '  Pr_NaoContrib = case when EI.Cd_CST in ( ''''010'''', ''''110'''', ''''210'''', ''''070'''', ''''170'''', ''''270'''' ) then T.Pr_NaoContrib else EI.Pr_ICMS end,'
      '  */'
      ''
      '  Pr_Contrib    = EI.Pr_ICMS,'
      '  Pr_NaoContrib = EI.Pr_ICMS,'
      ''
      '  T.Tp_Tributacao, P.Fl_Produto, P.Fl_Origem as Fl_OriProduto,'
      '  EI.Nr_Lote, EI.Dt_Fabricacao, EI.Dt_Validade, P.Cd_Fabricante,'
      ''
      '  /* Pr_IPI = case when EI.Pr_IPI > 0.0 then EI.Pr_IPI else P.Pr_IPI end, */'
      ''
      '  EI.Pr_IPI,'
      ''
      '  EE.Ds_Endereco, EE.Nm_Bairro, EE.Ds_Complemento, EE.Nr_CEP, C.Nm_Cidade,'
      '  C.Sg_Estado, C.Nm_Pais, C.Cd_Pais, EE.Nr_Telefone_1, C.Cd_IBGE, EE.Ds_Numero,'
      ''
      '  /* Transportador */'
      '  TP.Nm_Transportador, TP.Nr_Documento as Nr_Transp_Docto,'
      '  TP.Nr_InscEstadual as Nr_Transp_IE, TP.Ds_Endereco as Ds_Transp_End,'
      '  TP.Nm_Bairro as Nm_Transp_Bai, TP.Ds_Complemento as Ds_Transp_Comp,'
      '  TP.Nr_CEP as Nr_Transp_CEP, CT.Nm_Cidade as Nm_Transp_Cid,'
      '  CT.Sg_Estado as Sg_Transp_Est, TP.Nr_Telefone as Nr_Transp_Tel,'
      '  ( case when ES.Nr_Placa = '''''' or ES.Nr_Placa is null then TP.Nr_Placa else ES.Nr_Placa end ) as Nr_Placa,'
      '  0.0 as Pr_Reducao, ES.Fl_Frete, ES.Vl_ISS,'
      '  Cast( 0 as SmallInt ) as Cd_Funcionario,'
      '  Cast( '''''' as VarChar( 50 ) ) as Nm_Funcionario, P.Cd_ClasFiscal,'
      '  ES.Ps_Liquido, CF.Fl_Imposto, E.Fl_Exportador, ES.Vl_BaseSubst as Vl_BaseST,'
      '  P.Vl_MVA, P.Cd_Barra, E.Tp_Pessoa,'
      '  T.Cd_CST_PIS, T.Pr_PIS, T.Cd_CST_Cofins, T.Pr_Cofins, ES.Vl_Despesa, T.Cd_Tributacao,'
      '  Cd_CFOPProduto ='
      '    ('
      '    case'
      '      when ES.Fl_ProdutorRural = ''''1'''' then ES.Cd_CFOP'
      '      when CF.Tp_Operacao > ''''1'''' then ES.Cd_CFOP'
      '      when EI.Cd_CFOP is not null then EI.Cd_CFOP'
      '      when ( C.Sg_Estado  = :Sg_Filial ) and T.Cd_CFOPDentro is not null then T.Cd_CFOPDentro'
      '      when ( C.Sg_Estado <> :Sg_Filial ) and T.Cd_CFOPFora is not null then T.Cd_CFOPFora'
      '      else ES.Cd_CFOP'
      '    end'
      '    ),'
      ''
      '  ES.Fl_Emitente, ES.Cd_ModeloFiscal, ES.Vl_Seguro,'
      ''
      '  Pr_MVA ='
      '    ('
      '    case'
      '      when ( C.Sg_Estado  = :Sg_Filial ) then T.Pr_MVA_Dentro'
      '      when ( C.Sg_Estado <> :Sg_Filial ) then T.Pr_MVA_Fora'
      '    end'
      '    ),'
      ''
      '  T.Fl_ISSRetido, EI.xPed, EI.nItemPed, P.Cd_CEST, ES.Nr_CupomFiscal,'
      ''
      '  P.Cd_cProdANP, E.Fl_ConFinal, E.Nr_Insc_Municipal, P.Ds_DescANP,'
      ''
      '  T.Ds_cBeneficio, T.Pr_pFCPST, ES.finNFe, ES.natOp, ES.Nr_chNFe as refNFe'
      '    '
      'into'
      '  #notaitemtmp'
      ''
      'from'
      '  Entrada ES'
      ''
      'inner join'
      '  Emitente E'
      'on'
      '  E.Cd_Emitente = ES.Cd_Emitente'
      ''
      'inner join'
      '  Emitente_Endereco EE'
      'on'
      '  EE.Cd_Emitente = E.Cd_Emitente and'
      '  EE.Nr_Endereco = E.Nr_Endereco'
      ''
      'inner join'
      '  Cidade C'
      'on'
      '  C.Cd_Cidade = EE.Cd_Cidade'
      ''
      'inner join'
      '  CFOP CF'
      'on'
      '  CF.Cd_CFOP = ES.Cd_CFOP'
      ''
      'left join'
      '  Entrada_Item EI'
      'on'
      '  EI.Cd_Filial  = ES.Cd_Filial and'
      '  EI.Nr_Entrada = ES.Nr_Entrada'
      ''
      'left join'
      '  Produto P'
      'on'
      '  P.Cd_Produto = EI.Cd_Produto'
      ''
      'left join'
      '  Tributacao T'
      'on'
      '  T.Cd_Tributacao = Coalesce( EI.Cd_Tributacao, P.Cd_Tributacao ) ----- Mudado em 30/09/2013'
      ''
      'left join'
      '  Transportador TP'
      'on'
      '  TP.Cd_Transportador = ES.Cd_Transportador'
      ''
      'left join'
      '  Cidade CT'
      'on'
      '  CT.Cd_Cidade = TP.Cd_Cidade'
      ''
      'where'
      '  ES.Cd_Filial  = :Cd_Filial and'
      '  ES.Nr_Entrada = :Nr_Entrada'
      ''
      'order by'
      '  EI.Nr_Item'
    )
    SQLOther5.Strings = (
      '-------------------- Deixa somente os itens conforme o tipo da nota'
      'update'
      '  #NotaItemTMP'
      ''
      'set'
      '  Fl_Produto = ''''3'''
      ''
      'where'
      '  Fl_Produto = :Fl_Produto'
    )
    SQLOther6.Strings = (
      '-------------------- Item com desconto de Saida'
      'insert into #NotaItemTMP'
      'select'
      '  ''''2'''' as Fl_Origem, 9999,'
      ''
      '  St_Nota ='
      '    case'
      '      when S.St_Saida = ''''2'''' then ''''N'''
      '      when S.St_Saida = ''''3'''' then ''''S'''
      '      else ''''E'''
      ''
      '    end,'
      ''
      '  S.Cd_Filial, S.Nr_Saida as Nr_Orcamento, ''''1'''' as Tp_Carga, S.Cd_Emitente,'
      '  E.Nm_Emitente, ''''0'''' as Fl_FormaPagto, E.Nr_Endereco, S.Vl_Frete as Vl_Pedido_Frete,'
      '  S.Ps_Nota as Ps_Pedido, S.Vl_Produto as Vl_Pedido, S.Vl_Nota as Vl_Saida,'
      '  S.Mm_Nota as Mm_Observacao, S.Dt_Emissao as Dt_Fatura, S.Nr_Fatura, S.Cd_Serie,'
      '  S.Vl_BaseICMS, S.Pr_ICMS, S.Vl_ICMS, S.Vl_IPI, S.Vl_Substituicao as Vl_STB, S.Nr_ECF,'
      '  E.Fl_Contribuinte, Cast( '''''' as VarChar( 30 ) ) as Nr_Pedido_Emitente,'
      '  Cast( '''''' as VarChar( 50 ) ) as Nm_Contato, E.Nr_Documento,'
      '  0.0 as Pr_Desconto, S.Vl_Desconto, 0.0 as Pr_Custo, 0.0 as Vl_Custo,'
      '  E.Nr_Insc_Estadual, S.Dt_Emissao as Dt_Saida, S.Ds_Quantidade, S.Ds_Especie,'
      '  S.Ds_Marca,'
      '  S.Cd_CFOP, CF.Ds_CFOP, CF.Tp_Operacao, CF.Fl_Valores, 0.0 as Vl_Servico,'
      ''
      '  null as Cd_Produto,'
      '  ''''<< Desconto '''' + Cast( Cast( Round( S.Vl_Desconto, 2 ) as Numeric( 12, 2 ) ) as VarChar( 15 )  ) + '''' >>'''','
      '  null as Sg_Unidade, null as Qt_Item, null as Vl_Unitario, 0.0 as Qt_Agregado, ''''2'''' as Fl_STB, null as Mm_ObsNota,'
      '  null as Cd_CST,'
      ''
      '  null as Pr_Contrib,'
      '  null as Pr_NaoContrib,'
      '  null as Tp_Tributacao, null as Fl_Produto, null as Fl_OriProduto, null as Nr_Lote, null as Dt_Fabricacao, null as Dt_Validade,'
      '  null as Cd_Fabricante, null as Pr_IPI,'
      ''
      '  EE.Ds_Endereco, EE.Nm_Bairro, EE.Ds_Complemento, EE.Nr_CEP, C.Nm_Cidade,'
      '  C.Sg_Estado, C.Nm_Pais, C.Cd_Pais, EE.Nr_Telefone_1, C.Cd_IBGE, EE.Ds_Numero,'
      ''
      '  /* Transportador */'
      '  TP.Nm_Transportador, TP.Nr_Documento as Nr_Transp_Docto,'
      '  TP.Nr_InscEstadual as Nr_Transp_IE, TP.Ds_Endereco as Ds_Transp_End,'
      '  TP.Nm_Bairro as Nm_Transp_Bai, TP.Ds_Complemento as Ds_Transp_Comp,'
      '  TP.Nr_CEP as Nr_Transp_CEP, CT.Nm_Cidade as Nm_Transp_Cid,'
      '  CT.Sg_Estado as Sg_Transp_Est, TP.Nr_Telefone as Nr_Transp_Tel,'
      '  ( case when S.Nr_Placa = '''''' or S.Nr_Placa is null then TP.Nr_Placa else S.Nr_Placa end ) as Nr_Placa,'
      '  0.0 as Pr_Reducao, S.Fl_Frete, NULL,'
      '  Cast( 0 as SmallInt ) as Cd_Funcionario,'
      '  Cast( '''''' as VarChar( 50 ) ) as Nm_Funcionario, null, S.Ps_Liquido,'
      '  CF.Fl_Imposto, E.Fl_Exportador, S.Vl_BaseSubst as Vl_BaseST, null as Vl_MVA,'
      '  null as Cd_Barra, E.Tp_Pessoa,'
      '  null, null, null, null, null, null, null,'
      ''
      '  Fl_Emitente = ''''1'''', S.Cd_ModeloFiscal, S.Vl_Seguro,'
      ''
      '  Pr_MVA = 0.0,'
      ''
      '  Fl_ISSRetido = ''''2'''', null as xPed, null as nItemPed, null as Cd_CEST,'
      ''
      '  Convert( Int, 0 ) as Nr_CupomFiscal,'
      ''
      '  Convert( Int, 0 ) as Cd_cProdANP, S.Fl_ConFinal, E.Nr_Insc_Municipal, Convert( VarChar( 95 ), '''''' ) as Ds_DescANP,'
      ''
      '  '''''' as Ds_cBeneficio, 0.0 as Pr_pFCPST, S.finNFe, S.natOp, S.refNFe'
      ''
      'from'
      '  Saida S'
      ''
      'inner join'
      '  Emitente E'
      'on'
      '  E.Cd_Emitente = S.Cd_Emitente'
      ''
      'inner join'
      '  Emitente_Endereco EE'
      'on'
      '  EE.Cd_Emitente = E.Cd_Emitente and'
      '  EE.Nr_Endereco = E.Nr_Endereco'
      ''
      'inner join'
      '  Cidade C'
      'on'
      '  C.Cd_Cidade = EE.Cd_Cidade'
      ''
      'inner join'
      '  CFOP CF'
      'on'
      '  CF.Cd_CFOP = S.Cd_CFOP'
      ''
      'left join'
      '  Transportador TP'
      'on'
      '  TP.Cd_Transportador = S.Cd_Transportador'
      ''
      'left join'
      '  Cidade CT'
      'on'
      '  CT.Cd_Cidade = TP.Cd_Cidade'
      ''
      'where'
      '  S.Cd_Filial   = :Cd_Filial and'
      '  S.Nr_Saida    = :Nr_Saida and'
      '  S.Vl_Desconto > 0.0'
    )
    SQLOther7.Strings = (
      '-------------------- Item com desconto de Entrada'
      'insert into #notaitemtmp'
      'select'
      '  ''''3'''' as Fl_Origem, 9999 as Nr_Item,'
      ''
      '  St_Nota ='
      '    case'
      '      when ES.St_Entrada = ''''2'''' then ''''N'''
      '      when ES.St_Entrada = ''''3'''' then ''''S'''
      '      else ''''E'''
      ''
      '    end,'
      '    '
      '  ES.Cd_Filial, ES.Nr_Entrada as Nr_Orcamento, ''''1'''' as Tp_Carga, ES.Cd_Emitente,'
      '  E.Nm_Emitente, ''''1'''' as Fl_FormaPagto, E.Nr_Endereco, ES.Vl_Frete as Vl_Pedido_Frete,'
      '  ES.Ps_Nota as Ps_Pedido, ES.Vl_Nota as Vl_Pedido, ES.Mm_Nota as Mm_Observacao,'
      '  ES.Dt_Lancamento as Dt_Fatura, ES.Nr_Fatura, ES.Cd_Serie,'
      '  ES.Vl_BaseICMS, ES.Pr_ICMS, ES.Vl_ICMS, ES.Vl_IPI, ES.Vl_Substituicao as Vl_STB, 0 as Nr_ECF,'
      '  E.Fl_Contribuinte, replicate( '''' '''', 30 ) as Nr_Pedido_Emitente,'
      '  replicate( '''' '''', 50 ) as Nm_Contato, E.Nr_Documento, 0.0 as Vl_Saida,'
      '  0.0 as Pr_Desconto, ES.Vl_Desconto, 0.0 as Pr_Custo, 0.0 as Vl_Custo,'
      '  E.Nr_Insc_Estadual, ES.Dt_Lancamento as Dt_Saida, ES.Ds_Quantidade, ES.Ds_Especie,'
      '  ES.Ds_Marca, ES.Cd_CFOP, CF.Ds_CFOP, CF.Tp_Operacao, CF.Fl_Valores, 0.0 as Vl_Servico,'
      ''
      '  0 as Cd_Produto,'
      '  ''''<< Desconto '''' + Cast( Cast( Round( ES.Vl_Desconto, 2 ) as Numeric( 12, 2 ) ) as VarChar( 15 )  ) + '''' >>'''','
      '  null as Sg_Unidade, null as Qt_Item, null as Vl_Unitario, 0.0 as Qt_Agregado, ''''2'''' as Fl_STB, '''''' as Mm_ObsNota,'
      '  null as Cd_CST, null as Pr_Contrib, null as Pr_NaoContrib,'
      '  null as Tp_Tributacao, null as Fl_Produto, null as Fl_OriProduto, null as Nr_Lote, null as Dt_Fabricacao, null as Dt_Validade,'
      '  null as Cd_Fabricante, null as Pr_IPI,'
      ''
      '  EE.Ds_Endereco, EE.Nm_Bairro, EE.Ds_Complemento, EE.Nr_CEP, C.Nm_Cidade,'
      '  C.Sg_Estado, C.Nm_Pais, C.Cd_Pais, EE.Nr_Telefone_1, C.Cd_IBGE, EE.Ds_Numero,'
      ''
      '  /* Transportador */'
      '  TP.Nm_Transportador, TP.Nr_Documento as Nr_Transp_Docto,'
      '  TP.Nr_InscEstadual as Nr_Transp_IE, TP.Ds_Endereco as Ds_Transp_End,'
      '  TP.Nm_Bairro as Nm_Transp_Bai, TP.Ds_Complemento as Ds_Transp_Comp,'
      '  TP.Nr_CEP as Nr_Transp_CEP, CT.Nm_Cidade as Nm_Transp_Cid,'
      '  CT.Sg_Estado as Sg_Transp_Est, TP.Nr_Telefone as Nr_Transp_Tel,'
      '  ( case when ES.Nr_Placa = '''''' or ES.Nr_Placa is null then TP.Nr_Placa else ES.Nr_Placa end ) as Nr_Placa,'
      '  0.0 as Pr_Reducao, ES.Fl_Frete, ES.Vl_ISS,'
      '  Cast( 0 as SmallInt ) as Cd_Funcionario,'
      '  Cast( '''''' as VarChar( 50 ) ) as Nm_Funcionario, null, ES.Ps_Liquido,'
      '  CF.Fl_Imposto, E.Fl_Exportador, ES.Vl_BaseSubst as Vl_BaseST, null as Vl_MVA,'
      '  null as Cd_Barra, E.Tp_Pessoa,'
      '  null, null, null, null, null, null, null,'
      ''
      '  ES.Fl_Emitente, ES.Cd_ModeloFiscal, ES.Vl_Seguro,'
      ''
      '  Pr_MVA = 0.0,'
      ''
      '  Fl_ISSRetido = ''''2'''', null as xPed, null as nItemPed, null as Cd_CEST,'
      ''
      '  ES.Nr_CupomFiscal,'
      ''
      '  Convert( Int, 0 ) as Cd_cProdANP, E.Fl_ConFinal, E.Nr_Insc_Municipal, Convert( VarChar( 95 ), '''''' ) as Ds_DescANP,'
      ''
      '  '''''' as Ds_cBeneficio, 0.0 as Pr_pFCPST, ES.finNFe, ES.natOp, ES.Nr_chNFe as refNFe'
      ''
      'from'
      '  Entrada ES'
      ''
      'inner join'
      '  Emitente E'
      'on'
      '  E.Cd_Emitente = ES.Cd_Emitente'
      ''
      'inner join'
      '  Emitente_Endereco EE'
      'on'
      '  EE.Cd_Emitente = E.Cd_Emitente and'
      '  EE.Nr_Endereco = E.Nr_Endereco'
      ''
      'inner join'
      '  Cidade C'
      'on'
      '  C.Cd_Cidade = EE.Cd_Cidade'
      ''
      'inner join'
      '  CFOP CF'
      'on'
      '  CF.Cd_CFOP = ES.Cd_CFOP'
      ''
      'left join'
      '  Transportador TP'
      'on'
      '  TP.Cd_Transportador = ES.Cd_Transportador'
      ''
      'left join'
      '  Cidade CT'
      'on'
      '  CT.Cd_Cidade = TP.Cd_Cidade'
      ''
      'where'
      '  ES.Cd_Filial   = :Cd_Filial and'
      '  ES.Nr_Entrada  = :Nr_Entrada and'
      '  ES.Vl_Desconto > 0.0'
    )
    SQLOther8.Strings = (
      '--------------- Somente os Conjuntos'
      'union all'
      ''
      'select'
      '  ''''1'''' as Fl_Origem, OI.Nr_Item,'
      ''
      '  St_Nota ='
      '    case'
      '      when O.St_Orcamento = ''''9'''' then ''''N'''
      '      when O.St_Orcamento = ''''2'''' then ''''S'''
      '      else ''''E'''
      ''
      '    end,'
      ''
      '  O.Cd_Filial, O.Nr_Orcamento, O.Tp_Carga, O.Cd_Emitente, E.Nm_Emitente,'
      '  O.Fl_FormaPagto, O.Nr_Endereco, O.Vl_Pedido_Frete, O.Ps_Pedido,'
      '  O.Vl_Pedido, O.Mm_Nota as Mm_Observacao, O.Dt_Fatura, O.Nr_Fatura, O.Cd_Serie,'
      '  O.Vl_BaseICMS, O.Pr_ICMS, O.Vl_ICMS, O.Vl_IPI, O.Vl_STB, O.Nr_ECF,'
      '  E.Fl_Contribuinte, O.Nr_Pedido_Emitente, O.Nm_Contato, E.Nr_Documento,'
      '  O.Pr_Desconto, O.Vl_Desconto, O.Pr_Custo, O.Vl_Custo, E.Nr_Insc_Estadual,'
      '  O.Dt_Saida, O.Ds_Quantidade, O.Ds_Especie, O.Ds_Marca, 0.0 as Vl_Saida,'
      '  O.Cd_CFOP, CF.Ds_CFOP, CF.Tp_Operacao, CF.Fl_Valores, O.Vl_Servico,'
      ''
      '  PC.Cd_Produto, OC.Nm_Produto, OC.Sg_Unidade, OC.Qt_Item,'
      '  OC.Vl_Unitario, null, OI.Fl_STB, T.Mm_ObsNota,'
      '  case'
      '    when T.Cd_CST is null then ''''000'''
      '    else ( case when ( E.Fl_Contribuinte = ''''1'''' ) then T.Cd_CST else T.Cd_CST_NC end )'
      '  end as Cd_CST,'
      '  '
      '  T.Pr_Contrib, T.Pr_NaoContrib, T.Tp_Tributacao, PC.Fl_Produto, PC.Fl_Origem as Fl_OriProduto,'
      '  OI.Nr_Lote, OI.Dt_Fabricacao, OI.Dt_Validade, PC.Cd_Fabricante, PC.Pr_IPI,'
      ''
      '  EE.Ds_Endereco, EE.Nm_Bairro, EE.Ds_Complemento, EE.Nr_CEP, C.Nm_Cidade,'
      '  C.Sg_Estado, C.Nm_Pais, C.Cd_Pais, EE.Nr_Telefone_1, C.Cd_IBGE, EE.Ds_Numero,'
      ''
      '  /* Transportador */'
      '  TP.Nm_Transportador, TP.Nr_Documento as Nr_Transp_Docto,'
      '  TP.Nr_InscEstadual as Nr_Transp_IE, TP.Ds_Endereco as Ds_Transp_End,'
      '  TP.Nm_Bairro as Nm_Transp_Bai, TP.Ds_Complemento as Ds_Transp_Comp,'
      '  TP.Nr_CEP as Nr_Transp_CEP, CT.Nm_Cidade as Nm_Transp_Cid,'
      '  CT.Sg_Estado as Sg_Transp_Est, TP.Nr_Telefone as Nr_Transp_Tel,'
      '  ( case when O.Nr_Placa = '''''' or O.Nr_Placa is null then TP.Nr_Placa else O.Nr_Placa end ) as Nr_Placa,'
      '  OI.Pr_Reducao, O.Fl_Frete, O.Vl_ISS, O.Cd_Funcionario,'
      '  F.Nm_Funcionario, PC.Cd_ClasFiscal, O.Ps_Liquido, CF.Fl_Imposto,'
      '  E.Fl_Exportador, O.Vl_BaseST, PC.Vl_MVA, PC.Cd_Barra, E.Tp_Pessoa,'
      '  T.Cd_CST_PIS, T.Pr_PIS, T.Cd_CST_Cofins, T.Pr_Cofins, null, PC.Cd_Tributacao,'
      '  Cd_CFOPProduto ='
      '    ('
      '    case'
      '      when CF.Tp_Operacao > ''''1'''' then O.Cd_CFOP'
      '      when ( C.Sg_Estado  = :Sg_Filial ) and T.Cd_CFOPDentro is not null then T.Cd_CFOPDentro'
      '      when ( C.Sg_Estado <> :Sg_Filial ) and T.Cd_CFOPFora is not null then T.Cd_CFOPFora'
      '      else O.Cd_CFOP'
      '    end'
      '    ),'
      ''
      '  Fl_Emitente = ''''1'''','
      ''
      '  Cd_ModeloFiscal = case when Fil.Fl_NFe = ''''1'''' then ''''55'''' else ''''01'''' end,'
      ''
      '  Convert( Numeric( 12, 3 ), 0 ) as Vl_Seguro,'
      ''
      '  Pr_MVA ='
      '    ('
      '    case'
      '      when ( C.Sg_Estado  = :Sg_Filial ) then T.Pr_MVA_Dentro'
      '      when ( C.Sg_Estado <> :Sg_Filial ) then T.pr_MVA_Fora'
      '    end'
      '    ),'
      ''
      '  T.Fl_ISSRetido, OI.xPed, OI.nItemPed, PC.Cd_CEST,'
      ''
      '  Convert( Int, 0 ) as Nr_CupomFiscal,'
      ''
      '  P.Cd_cProdANP, O.Fl_ConFinal, E.Nr_Insc_Municipal, P.Ds_DescANP,'
      ''
      '  T.Ds_cBeneficio, T.Pr_pFCPST, O.finNFe, O.natOp, Convert( VarChar( 44 ), '''''' ) as refNFe'
      ''
      'from'
      '  Orcamento O'
      ''
      'inner join'
      '  Filial Fil'
      'on'
      '  Fil.Cd_Filial = O.Cd_Filial'
      ''
      'inner join'
      '  Funcionario F'
      'on'
      '  F.Cd_Funcionario = O.Cd_Funcionario'
      ''
      'inner join'
      '  Orcamento_Item OI'
      'on'
      '  OI.Cd_Filial     = O.Cd_Filial and'
      '  OI.Nr_Orcamento  = O.Nr_Orcamento and'
      '  OI.Fl_Confirmado = ''''1'''
      ''
      'inner join'
      '  Produto P'
      'on'
      '  P.Cd_Produto = OI.Cd_Produto and'
      '  P.Fl_Produto = ''''3'''
      ''
      'inner join'
      '  Orcamento_Conjunto OC'
      'on'
      '  OC.Cd_Filial    = OI.Cd_Filial and'
      '  OC.Nr_Orcamento = OI.Nr_Orcamento and'
      '  OC.Nr_Item      = OI.Nr_Item'
      ''
      'inner join'
      '  Produto PC'
      'on'
      '  PC.Cd_Produto = OC.Cd_Produto'
      ''
      'left join'
      '  Emitente E'
      'on'
      '  E.Cd_Emitente = O.Cd_Emitente'
      ''
      'left join'
      '  Emitente_Endereco EE'
      'on'
      '  EE.Cd_Emitente = O.Cd_Emitente and'
      '  EE.Nr_Endereco = O.Nr_Endereco'
      ''
      'left join'
      '  Cidade C'
      'on'
      '  C.Cd_Cidade = EE.Cd_Cidade'
      ''
      'left join'
      '  Tributacao T'
      'on'
      '  T.Cd_Tributacao = PC.Cd_Tributacao'
      ''
      'left join'
      '  Transportador TP'
      'on'
      '  TP.Cd_Transportador = O.Cd_Transportador'
      ''
      'left join'
      '  Cidade CT'
      'on'
      '  CT.Cd_Cidade = TP.Cd_Cidade'
      ''
      'left join'
      '  CFOP CF'
      'on'
      '  CF.Cd_CFOP = O.Cd_CFOP'
      ''
      'where'
      '  O.Cd_Filial    = :Cd_Filial and'
      '  O.Nr_Orcamento = :Nr_Orcamento'
      ' '
    )
    SQLOther9.Strings = (
      '--------------- Apaga os itens de conjunto'
      'delete from'
      '  #NotaItemTMP'
      ''
      'where'
      '  Fl_Produto = ''''3'''
    )
    Left = 317
    Top = 384
  end
  object ADODsReceber: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'declare'#13#10'  @Cd_Filial SmallInt,'#13#10'  @Nr_Orcamento Int'#13#10#13#10'select'#13#10'  @Cd_Filial    = :Cd_Filial,'#13#10'  @Nr_Orcamento = :Nr_Orcamento'#13#10#13#10'select'#13#10'  R.Nr_Receber, RP.Nr_Parcela, R.Dt_Emissao, RP.Dt_Vencimento, RP.Vl_Parcela,'#13#10'  R.Vl_Duplicata, P.Fl_Pagamento'#13#10#13#10'from'#13#10'  Receber R'#13#10#13#10'inner join'#13#10'  Receber_Parcela RP'#13#10'on'#13#10'  RP.Cd_Filial = R.Cd_Filial and'#13#10'  RP.Nr_Receber = R.Nr_Receber'#13#10#13#10'inner join'#13#10'  Portador P'#13#10'on'#13#10'  P.Cd_Portador = RP.Cd_Portador'#13#10#13#10'where'#13#10'  R.Cd_Filial    = @Cd_Filial and'#13#10'  R.Nr_Orcamento = @Nr_Orcamento and'#13#10'  R.St_Receber   <> ''''4'''#13#10#13#10'union'#13#10#13#10'select'#13#10'  C.Nr_Cheque, 1 as Nr_Parcela, C.Dt_Emissao, C.Dt_Vencimento, C.Vl_Cheque, '#13#10'  C.Vl_Cheque, ''''2'''' as Fl_Pagamento'#13#10#13#10'from'#13#10'  Cheque C'#13#10#13#10'where'#13#10'  C.Cd_Filial    = @Cd_Filial and'#13#10'  C.Nr_Orcamento = @Nr_Orcamento'#13#10#13#10'order by'#13#10'  4'
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
    Left = 471
    Top = 384
    object ADODsRecebernr_receber: TIntegerField
      FieldName = 'nr_receber'
    end
    object ADODsReceberDt_Emissao: TDateTimeField
      FieldName = 'Dt_Emissao'
    end
    object ADODsReceberDt_Vencimento: TDateTimeField
      FieldName = 'Dt_Vencimento'
    end
    object ADODsReceberNr_Parcela: TSmallintField
      FieldName = 'Nr_Parcela'
    end
    object ADODsReceberVl_Parcela: TBCDField
      FieldName = 'Vl_Parcela'
      Precision = 12
      Size = 2
    end
    object ADODsReceberVl_Duplicata: TBCDField
      FieldName = 'Vl_Duplicata'
      Precision = 12
      Size = 2
    end
    object ADODsReceberFl_Pagamento: TStringField
      FieldName = 'Fl_Pagamento'
      FixedChar = True
      Size = 1
    end
  end
  object ADODsTributoAvulso: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'select'#13#10'  Mm_ObsNota, Cd_CST'#13#10#13#10'from'#13#10'  Tributacao'#13#10#13#10'where'#13#10'  Pr_Contrib = :Pr_Tributo'
    Parameters = <
      item
        Name = 'Pr_Tributo'
        Attributes = [paSigned]
        DataType = ftBCD
        NumericScale = 2
        Precision = 7
        Size = 19
        Value = nil?
      end>
    SQLOther0.Strings = (
      '-------------------- Contribuinte'
      ''
      'select'
      '  Mm_ObsNota, Cd_CST'
      ''
      'from'
      '  Tributacao'
      ''
      'where'
      '  Pr_Contrib = :Pr_Tributo'
    )
    SQLOther1.Strings = (
      '-------------------- N'#227'o Contribuinte'
      'select'
      '  Mm_ObsNota, Cd_CST'
      ''
      'from'
      '  Tributacao'
      ''
      'where'
      '  Pr_NaoContrib = :Pr_Tributo'
    )
    Left = 404
    Top = 384
    object ADODsTributoAvulsoMm_ObsNota: TMemoField
      FieldName = 'Mm_ObsNota'
      BlobType = ftMemo
    end
    object ADODsTributoAvulsoCd_CST: TStringField
      FieldName = 'Cd_CST'
      Size = 5
    end
  end
  object ADODsSaidaParcela: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'select'#13#10'  Cd_Filial, Nr_Saida, Nr_Documento, Dt_Vencimento, Vl_Parcela,'#13#10'  Cd_FormaPagamento'#13#10#13#10'from'#13#10'  Saida_Parcela'#13#10#13#10'where'#13#10'  Cd_Filial  = :Cd_Filial and'#13#10'  Nr_Saida = :Nr_Saida'#13#10#13#10'order by'#13#10'  Dt_Vencimento'
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
        Name = 'Nr_Saida'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = nil?
      end>
    Left = 507
    Top = 384
    object ADODsSaidaParcelaCd_Filial: TSmallintField
      FieldName = 'Cd_Filial'
    end
    object ADODsSaidaParcelaNr_Saida: TIntegerField
      FieldName = 'Nr_Saida'
    end
    object ADODsSaidaParcelaNr_Documento: TStringField
      FieldName = 'Nr_Documento'
      Size = 12
    end
    object ADODsSaidaParcelaDt_Vencimento: TDateTimeField
      FieldName = 'Dt_Vencimento'
    end
    object ADODsSaidaParcelaVl_Parcela: TBCDField
      FieldName = 'Vl_Parcela'
      Precision = 12
      Size = 3
    end
    object ADODsSaidaParcelaCd_FormaPagamento: TStringField
      FieldName = 'Cd_FormaPagamento'
      Size = 2
    end
  end
  object ADODsAux: TMultADODS
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLOther0.Strings = (
      '--------------- Gerar numero de lote'
      'select'
      '  max( Id_Lote ) as NewLote'
      ''
      'from'
      '  NFe'
      ''
      'where'
      '  Cd_Filial = :Cd_Filial'
    )
    Left = 376
    Top = 384
  end
  object ADODsNotaCFG: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  Cd_Nota, Ds_Nota, Nm_Fonte, Nr_Fonte, Nr_Fatura, Nr_Adicional,'#13#10'  Nr_Formulario, Nr_Altura_Item, Tp_Nota, Tp_Servico'#13#10#13#10'from'#13#10'  Nota_CFG'#13#10#13#10'where'#13#10'  Cd_Nota = :Cd_Nota'
    Parameters = <
      item
        Name = 'Cd_Nota'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = nil?
      end>
    Left = 433
    Top = 384
    object ADODsNotaCFGcd_nota: TSmallintField
      FieldName = 'cd_nota'
    end
    object ADODsNotaCFGds_nota: TStringField
      FieldName = 'ds_nota'
      Size = 50
    end
    object ADODsNotaCFGnm_fonte: TStringField
      FieldName = 'nm_fonte'
      Size = 50
    end
    object ADODsNotaCFGnr_fonte: TSmallintField
      FieldName = 'nr_fonte'
    end
    object ADODsNotaCFGnr_fatura: TSmallintField
      FieldName = 'nr_fatura'
    end
    object ADODsNotaCFGnr_adicional: TSmallintField
      FieldName = 'nr_adicional'
    end
    object ADODsNotaCFGnr_formulario: TSmallintField
      FieldName = 'nr_formulario'
    end
    object ADODsNotaCFGNr_Altura_Item: TSmallintField
      FieldName = 'Nr_Altura_Item'
    end
    object ADODsNotaCFGTp_Nota: TStringField
      FieldName = 'Tp_Nota'
      FixedChar = True
      Size = 1
    end
    object ADODsNotaCFGTp_Servico: TStringField
      FieldName = 'Tp_Servico'
      FixedChar = True
      Size = 1
    end
  end
  object ADOCmdProcessaNota: TMultADOCMD
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLOther0.Strings = (
      '--------------- Cria/Zera table'
      'if Object_ID( ''''TempDB..##NotaProcessa'''' ) is not null'
      '  delete from ##NotaProcessa where Id_Processo = @@SPID'
      ''
      'else'
      '  create table ##NotaProcessa'
      '    ('
      '    Id_Processo Integer default @@SPID,'
      '    St_Nota Char( 1 ),'
      '    Fl_Origem Char( 1 ),'
      '    Nr_Item SmallInt,'
      '    Cd_Filial SmallInt,'
      '    Nr_Orcamento Int,'
      '    Tp_Carga Char( 1 ),'
      '    Cd_Emitente Int,'
      '    Nm_Emitente VarChar( 50 ),'
      '    Fl_FormaPagto Char( 1 ),'
      '    Nr_Endereco SmallInt,'
      '    Vl_Pedido_Frete Numeric( 12, 3 ),'
      '    Ps_Pedido Numeric( 12, 3 ),'
      '    Vl_Pedido Numeric( 12, 3 ),'
      '    Mm_Observacao Text,'
      '    Dt_Fatura SmallDateTime,'
      '    Nr_Fatura Int,'
      '    Cd_Serie VarChar( 3 ),'
      '    Vl_BaseICMS Numeric( 12, 3 ),'
      '    Pr_ICMS Numeric( 12, 2 ),'
      '    Vl_ICMS Numeric( 12, 3 ),'
      '    Vl_IPI Numeric( 12, 3 ),'
      '    Vl_STB Numeric( 12, 3 ),'
      '    Nr_ECF Int,'
      '    Fl_Contribuinte Char( 1 ),'
      '    Nr_Pedido_Emitente VarChar( 30 ),'
      '    Nm_Contato VarChar( 50 ),'
      '    Nr_Documento VarChar( 14 ),'
      '    Pr_Desconto Numeric( 9, 3 ),'
      '    Vl_Desconto Numeric( 12, 3 ),'
      '    Pr_Custo Numeric( 9, 3 ),'
      '    Vl_Custo Numeric( 12, 3 ),'
      '    Nr_Insc_Estadual VarChar( 20 ),'
      '    Dt_Saida SmallDateTime,'
      '    Ds_Quantidade VarChar( 20 ),'
      '    Ds_Especie VarChar( 20 ),'
      '    Ds_Marca VarChar( 20 ),'
      '    Vl_Saida Numeric( 12, 3 ),'
      '    Cd_CFOP VarChar( 4 ),'
      '    Ds_CFOP VarChar( 50 ),'
      '    Tp_Operacao Char( 1 ),'
      '    Fl_Valores Char( 1 ),'
      '    Vl_Servico Numeric( 12, 3 ),'
      '    Cd_Produto Int,'
      '    Nm_Produto VarChar( 120 ),'
      '    Sg_Unidade Char( 2 ),'
      '    Qt_Item Numeric( 12, 3 ),'
      '    Vl_Unitario Numeric( 12, 3 ),'
      '    Qt_Agregado Numeric( 12, 3 ),'
      '    Fl_STB Char( 1 ),'
      '    Mm_ObsNota Text,'
      '    Cd_CST VarChar( 254 ),'
      '    Pr_Contrib Numeric( 12, 2 ),'
      '    Pr_NaoContrib Numeric( 12, 2 ),'
      '    Tp_Tributacao Char( 1 ),'
      '    Fl_Produto Char( 1 ),'
      '    Fl_OriProduto Char( 1 ),'
      '    Nr_Lote VarChar( 15 ),'
      '    Dt_Fabricacao SmallDateTime,'
      '    Dt_Validade SmallDateTime,'
      '    Cd_Fabricante VarChar( 20 ),'
      '    Pr_IPI Numeric( 12, 2 ),'
      '    Ds_Endereco VarChar( 50 ),'
      '    Nm_Bairro VarChar( 30 ),'
      '    Ds_Complemento VarChar( 30 ),'
      '    Nr_CEP VarChar( 8 ),'
      '    Nm_Cidade VarChar( 60 ),'
      '    Sg_Estado Char( 2 ),'
      '    Nr_Telefone_1 VarChar( 10 ),'
      '    Cd_IBGE VarChar( 10 ),'
      '    Ds_Numero VarChar( 10 ),'
      '    Nm_Transportador VarChar( 50 ),'
      '    Nr_Transp_Docto VarChar( 14 ),'
      '    Nr_Transp_IE VarChar( 20 ),'
      '    Ds_Transp_End VarChar( 50 ),'
      '    Nm_Transp_Bai VarChar( 30 ),'
      '    Ds_Transp_Comp VarChar( 30 ),'
      '    Nr_Transp_CEP VarChar( 8 ),'
      '    Nm_Transp_Cid VarChar( 30 ),'
      '    Sg_Transp_Est Char( 2 ),'
      '    Nr_Transp_Tel VarChar( 10 ),'
      '    Nr_Placa VarChar( 7 ),'
      '    Pr_Reducao Numeric( 12, 2 ),'
      '    Fl_Frete Char( 1 ),'
      '    Vl_ISS Numeric( 12, 3 ),'
      '    Cd_Funcionario SmallInt,'
      '    Nm_Funcionario VarChar( 50 ),'
      '    Cd_ClasFiscal VarChar( 10 ),'
      '    Ps_Liquido Numeric( 12, 3 ),'
      '    Fl_Imposto Char( 1 ),'
      '    Fl_Exportador Char( 1 ),'
      '    Vl_BaseST Numeric( 12, 3 ),'
      '    Vl_MVA Numeric( 12, 3 ),'
      '    Cd_Barra VarChar( 20 ),'
      '    Tp_Pessoa Char( 1 ),'
      '    Cd_CST_PIS VarChar( 3 ),'
      '    Pr_PIS Numeric( 12, 2 ),'
      '    Cd_CST_Cofins VarChar( 3 ),'
      '    Pr_Cofins Numeric( 12, 2 ),'
      '    Vl_Despesa Numeric( 12, 3 ),'
      '    Cd_Tributacao SmallInt,'
      '    Cd_CFOPProduto VarChar( 4 ),'
      '    Vl_Total_Item Numeric( 12, 3 ),'
      '    Qt_Imprimir Numeric( 12, 3 ),'
      '    Vl_Nota Numeric( 12, 3 ),'
      '    Pr_ICMS_Item Numeric( 12, 2 ),'
      '    Hr_Saida VarChar( 5 ),'
      '    Vl_DescNota Numeric( 12, 3 ),'
      '    Dp_Produto VarChar( 200 ),'
      '    Vl_IPI_Item Numeric( 12, 3 ),'
      '    Pr_Item_ICMS_Real Numeric( 12, 2 ),'
      '    Vl_ICMS_Item Numeric( 12, 3 ),'
      '    Vl_Base_ICMS_Item Numeric( 12, 3 ),'
      '    Vl_Extenso VarChar( 1000 ),'
      '    Fl_Emitente Char( 1 ),'
      '    Cd_ModeloFiscal Char( 2 ),'
      '    Vl_Seguro Numeric( 12, 3 ),'
      '    Vl_DescItem Numeric( 12, 3 ),'
      '    Vl_ST_Item Numeric( 12, 3 ),'
      '    Vl_SeguroItem Numeric( 12, 3 ),'
      '    Vl_DespesaItem Numeric( 12, 3 ),'
      '    Pr_MVA Numeric( 12, 2 ),'
      '    Vl_FreteItem Numeric( 12, 3 ),'
      '    Vl_OutrosItem Numeric( 12, 3 ),'
      '    Vl_BaseST_Item Numeric( 12, 3 ),'
      '    Cd_Pais VarChar( 10 ),'
      '    xPed VarChar( 20 ),'
      '    nItemPed SmallInt,'
      '    Cd_CEST VarChar( 7 ),'
      '    Nr_CupomFiscal Int,'
      '    Cd_cProdANP Int,'
      '    Fl_ConFinal Char( 1 ),'
      '    Nr_Insc_Municipal VarChar( 20 ),'
      '    Ds_DescANP VarChar( 95 ),'
      '    Ds_cBeneficio VarChar( 20 ),'
      '    Pr_pFCPST Numeric( 12, 2 ),'
      '    finNFe Char( 1 ),'
      '    natOp VarChar( 60 ),'
      '    refNFe VarChar( 44 ) '
      '    )'
    )
    SQLOther1.Strings = (
      'insert into ##NotaProcessa( Fl_Origem, Nr_Item, Cd_Filial, Nr_Orcamento, Tp_Carga,'
      '   Cd_Emitente, Nm_Emitente, Fl_FormaPagto, Nr_Endereco, Vl_Pedido_Frete,'
      '   Ps_Pedido, Vl_Pedido, Mm_Observacao, Dt_Fatura, Nr_Fatura, Cd_Serie,'
      '   Vl_BaseICMS, Pr_ICMS, Vl_ICMS, Vl_IPI, Vl_STB, Nr_ECF, Fl_Contribuinte,'
      '   Nr_Pedido_Emitente, Nm_Contato, Nr_Documento, Pr_Desconto, Vl_Desconto,'
      '   Pr_Custo, Vl_Custo, Nr_Insc_Estadual, Dt_Saida, Ds_Quantidade, Ds_Especie,'
      '   Ds_Marca, Vl_Saida, Cd_CFOP, Ds_CFOP, Tp_Operacao, Fl_Valores, Vl_Servico,'
      '   Cd_Produto, Nm_Produto, Sg_Unidade, Qt_Item, Vl_Unitario, Qt_Agregado,'
      '   Fl_STB, Mm_ObsNota, Cd_CST, Pr_Contrib, Pr_NaoContrib, Tp_Tributacao,'
      '   Fl_Produto, Fl_OriProduto, Nr_Lote, Dt_Fabricacao, Dt_Validade,'
      '   Cd_Fabricante, Pr_IPI, Ds_Endereco, Nm_Bairro, Ds_Complemento, Nr_CEP,'
      '   Nm_Cidade, Sg_Estado, Nr_Telefone_1, Cd_IBGE, Ds_Numero, Nm_Transportador,'
      '   Nr_Transp_Docto, Nr_Transp_IE, Ds_Transp_End, Nm_Transp_Bai, Ds_Transp_Comp,'
      '   Nr_Transp_CEP, Nm_Transp_Cid, Sg_Transp_Est, Nr_Transp_Tel, Nr_Placa,'
      '   Pr_Reducao, Fl_Frete, Vl_ISS, Cd_Funcionario, Nm_Funcionario, Cd_ClasFiscal,'
      '   Ps_Liquido, Fl_Imposto, Fl_Exportador, Vl_BaseST, Vl_MVA, Cd_Barra,'
      '   Tp_Pessoa, Cd_CST_PIS, Pr_PIS, Cd_CST_Cofins, Pr_Cofins, Vl_Despesa,'
      '   Cd_Tributacao, Cd_CFOPProduto, Vl_Total_Item, Qt_Imprimir,'
      '   Vl_Nota, Pr_ICMS_Item, Hr_Saida, Vl_DescNota, Dp_Produto, Vl_IPI_Item,'
      '   Pr_Item_ICMS_Real, Vl_ICMS_Item, Vl_Base_ICMS_Item, Vl_Extenso, St_Nota,'
      '   Fl_Emitente, Cd_ModeloFiscal, Vl_Seguro, Vl_DescItem, Vl_ST_Item,'
      '   Vl_SeguroItem, Vl_DespesaItem, Pr_MVA, Vl_FreteItem, Vl_BaseST_Item, Cd_Pais,'
      '   Vl_OutrosItem, xPed, nItemPed, Cd_CEST, Nr_CupomFiscal, Cd_cProdANP, Fl_ConFinal,'
      '   Nr_Insc_Municipal, Ds_DescANP, Ds_cBeneficio, Pr_pFCPST, finNFe, natOp, refNFe )'
      ''
      'values( :Fl_Origem, :Nr_Item, :Cd_Filial, :Nr_Orcamento, :Tp_Carga,'
      '   :Cd_Emitente, :Nm_Emitente, :Fl_FormaPagto, :Nr_Endereco, :Vl_Pedido_Frete,'
      '   :Ps_Pedido, :Vl_Pedido, :Mm_Observacao, :Dt_Fatura, :Nr_Fatura, :Cd_Serie,'
      '   :Vl_BaseICMS, :Pr_ICMS, :Vl_ICMS, :Vl_IPI, :Vl_STB, :Nr_ECF, :Fl_Contribuinte,'
      '   :Nr_Pedido_Emitente, :Nm_Contato, :Nr_Documento, :Pr_Desconto, :Vl_Desconto,'
      '   :Pr_Custo, :Vl_Custo, :Nr_Insc_Estadual, :Dt_Saida, :Ds_Quantidade, :Ds_Especie,'
      '   :Ds_Marca, :Vl_Saida, :Cd_CFOP, :Ds_CFOP, :Tp_Operacao, :Fl_Valores, :Vl_Servico,'
      '   :Cd_Produto, :Nm_Produto, :Sg_Unidade, :Qt_Item, :Vl_Unitario, :Qt_Agregado,'
      '   :Fl_STB, :Mm_ObsNota, :Cd_CST, :Pr_Contrib, :Pr_NaoContrib, :Tp_Tributacao,'
      '   :Fl_Produto, :Fl_OriProduto, :Nr_Lote, :Dt_Fabricacao, :Dt_Validade,'
      '   :Cd_Fabricante, :Pr_IPI, :Ds_Endereco, :Nm_Bairro, :Ds_Complemento, :Nr_CEP,'
      '   :Nm_Cidade, :Sg_Estado, :Nr_Telefone_1, :Cd_IBGE, :Ds_Numero, :Nm_Transportador,'
      '   :Nr_Transp_Docto, :Nr_Transp_IE, :Ds_Transp_End, :Nm_Transp_Bai, :Ds_Transp_Comp,'
      '   :Nr_Transp_CEP, :Nm_Transp_Cid, :Sg_Transp_Est, :Nr_Transp_Tel, :Nr_Placa,'
      '   :Pr_Reducao, :Fl_Frete, :Vl_ISS, :Cd_Funcionario, :Nm_Funcionario, :Cd_ClasFiscal,'
      '   :Ps_Liquido, :Fl_Imposto, :Fl_Exportador, :Vl_BaseST, :Vl_MVA, :Cd_Barra,'
      '   :Tp_Pessoa, :Cd_CST_PIS, :Pr_PIS, :Cd_CST_Cofins, :Pr_Cofins, :Vl_Despesa,'
      '   :Cd_Tributacao, :Cd_CFOPProduto, :Vl_Total_Item, :Qt_Imprimir,'
      '   :Vl_Nota, :Pr_ICMS_Item, :Hr_Saida, :Vl_DescNota, :Dp_Produto, :Vl_IPI_Item,'
      '   :Pr_Item_ICMS_Real, :Vl_ICMS_Item, :Vl_Base_ICMS_Item, :Vl_Extenso, :St_Nota,'
      '   :Fl_Emitente, :Cd_ModeloFiscal, :Vl_Seguro, :Vl_DescItem, :Vl_ST_Item,'
      '   :Vl_SeguroItem, :Vl_DespesaItem, :Pr_MVA, :Vl_FreteItem, :Vl_BaseST_Item, :Cd_Pais,'
      '   :Vl_OutrosItem, :xPed, :nItemPed, :Cd_CEST, :Nr_CupomFiscal, :Cd_cProdANP, :Fl_ConFinal,'
      '   :Nr_Insc_Municipal, :Ds_DescANP, :Ds_cBeneficio, :Pr_pFCPST, :finNFe, :natOp, :refNFe )'
    )
    Left = 552
    Top = 384
  end
  object ADODsPagTotal: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'declare'#13#10'  @Cd_Filial SmallInt,'#13#10'  @Nr_Orcamento Int'#13#10#13#10'select'#13#10'  @Cd_Filial    = :Cd_Filial,'#13#10'  @Nr_Orcamento = :Nr_Orcamento'#13#10#13#10'select'#13#10'  Vl_Dinheiro ='#13#10'    ('#13#10'    select '#13#10'      sum( Vl_Parcela )'#13#10#13#10'    from'#13#10'      Orcamento_Parcela'#13#10#13#10'    where'#13#10'      Cd_Filial    = @Cd_Filial and'#13#10'      Nr_Orcamento = @Nr_Orcamento and'#13#10'      Fl_Parcela   = ''''1'''#13#10'    ),'#13#10#13#10'  Vl_Boleto ='#13#10'    ('#13#10'    select '#13#10'      sum( OP.Vl_Parcela )'#13#10#13#10'    from'#13#10'      Orcamento_Parcela OP'#13#10#13#10'    inner join'#13#10'      Portador P'#13#10'    on'#13#10'      P.Cd_Portador = OP.Cd_Portador and'#13#10'      P.Fl_Pagamento = ''''3''''                 ----- Boleto'#13#10#13#10'    where'#13#10'      OP.Cd_Filial    = @Cd_Filial and'#13#10'      OP.Nr_Orcamento = @Nr_Orcamento and'#13#10'      OP.Fl_Parcela   = ''''2'''#13#10'    ),'#13#10#13#10'  Vl_Duplicata ='#13#10'    ('#13#10'    select '#13#10'      sum( OP.Vl_Parcela )'#13#10#13#10'    from'#13#10'      Orcamento_Parcela OP'#13#10#13#10'    inner join'#13#10'      Portador P'#13#10'    on'#13#10'      P.Cd_Portador = OP.Cd_Portador and'#13#10'      P.Fl_Pagamento = ''''9''''                 ----- Duplicata'#13#10#13#10'    where'#13#10'      OP.Cd_Filial    = @Cd_Filial and'#13#10'      OP.Nr_Orcamento = @Nr_Orcamento and'#13#10'      OP.Fl_Parcela   = ''''2'''#13#10'    ),'#13#10#13#10'  Vl_Cartao ='#13#10'    ('#13#10'    select '#13#10'      sum( Vl_Parcela )'#13#10#13#10'    from'#13#10'      Orcamento_Parcela'#13#10#13#10'    where'#13#10'      Cd_Filial    = @Cd_Filial and'#13#10'      Nr_Orcamento = @Nr_Orcamento and'#13#10'      Fl_Parcela   = ''''3'''#13#10'    ),'#13#10#13#10'  Vl_Cheque ='#13#10'    ('#13#10'    select '#13#10'      sum( Vl_Parcela )'#13#10#13#10'    from'#13#10'      Orcamento_Parcela'#13#10#13#10'    where'#13#10'      Cd_Filial    = @Cd_Filial and'#13#10'      Nr_Orcamento = @Nr_Orcamento and'#13#10'      Fl_Parcela   = ''''4'''#13#10'    )'
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
    Left = 600
    Top = 384
    object ADODsPagTotalVl_Dinheiro: TBCDField
      FieldName = 'Vl_Dinheiro'
      ReadOnly = True
      Precision = 32
      Size = 2
    end
    object ADODsPagTotalVl_Boleto: TBCDField
      FieldName = 'Vl_Boleto'
      ReadOnly = True
      Precision = 32
      Size = 2
    end
    object ADODsPagTotalVl_Duplicata: TBCDField
      FieldName = 'Vl_Duplicata'
      ReadOnly = True
      Precision = 32
      Size = 2
    end
    object ADODsPagTotalVl_Cartao: TBCDField
      FieldName = 'Vl_Cartao'
      ReadOnly = True
      Precision = 32
      Size = 2
    end
    object ADODsPagTotalVl_Cheque: TBCDField
      FieldName = 'Vl_Cheque'
      ReadOnly = True
      Precision = 32
      Size = 2
    end
  end
  object ADODsPagOrcamento: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'select'#13#10'  OP.Cd_Filial, OP.Nr_Orcamento,'#13#10'  OP.Nr_Prazo, OP.Dt_Vencimento, OP.Vl_Parcela, OP.Fl_Parcela, '#13#10'  OP.Nr_Parcela as Nr_ParInterna,'#13#10'  P.Fl_Pagamento, '#13#10#13#10' E.Nr_Documento'#13#10#13#10'from'#13#10'  Orcamento_Parcela OP'#13#10'  '#13#10'left join'#13#10'  Portador P'#13#10'on'#13#10'  P.Cd_Portador = OP.Cd_Portador'#13#10#13#10'left join'#13#10'  Emitente E'#13#10'on'#13#10'  E.Cd_Emitente = P.Cd_Emitente'#13#10#13#10'where'#13#10'  OP.Cd_Filial    = :Cd_Filial and'#13#10'  OP.Nr_Orcamento = :Nr_Orcamento'
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
    Left = 648
    Top = 384
    object ADODsPagOrcamentoCd_Filial: TSmallintField
      FieldName = 'Cd_Filial'
    end
    object ADODsPagOrcamentoNr_Orcamento: TIntegerField
      FieldName = 'Nr_Orcamento'
    end
    object ADODsPagOrcamentoNr_Prazo: TSmallintField
      FieldName = 'Nr_Prazo'
    end
    object ADODsPagOrcamentoDt_Vencimento: TDateTimeField
      FieldName = 'Dt_Vencimento'
    end
    object ADODsPagOrcamentoVl_Parcela: TBCDField
      FieldName = 'Vl_Parcela'
      Precision = 12
      Size = 2
    end
    object ADODsPagOrcamentoFl_Parcela: TStringField
      FieldName = 'Fl_Parcela'
      FixedChar = True
      Size = 1
    end
    object ADODsPagOrcamentoNr_ParInterna: TSmallintField
      FieldName = 'Nr_ParInterna'
    end
    object ADODsPagOrcamentoFl_Pagamento: TStringField
      FieldName = 'Fl_Pagamento'
      FixedChar = True
      Size = 1
    end
  end
end
