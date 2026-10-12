object FrmOrcamento_Report_Representa: TFrmOrcamento_Report_Representa
  Left = 141
  Top = 140
  Caption = 'Or'#231'amento para Representada'
  ClientHeight = 604
  ClientWidth = 1022
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object SctRepOrcamento: TSctReport
    Left = 85
    Top = 95
    Width = 82
    Height = 44
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    TabOrder = 0
    Visible = False
    Minimized = True
    Prompt = True
    AutoRun = False
    OnBeforePrint = SctRepOrcamentoBeforePrint
    SuppressStatus = False
    PixelsPerInch = 96
    STop = 25
    SLeft = 8
    SWidth = 913
    SHeight = 568
    MTop = 95
    MLeft = 85
    SAlign = alNone
    Version = vAce1_0
    object ReportPage: TSctGrouppage
      Left = 35
      Top = 55
      Width = 27
      Height = 0
      VertScrollBar.Position = 394
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
      PageSetup.LeftMargin = 0.3
      PageSetup.RightMargin = 0.3
      PageSetup.TopMargin = 0.3
      PageSetup.BottomMargin = 0.3
      BorderType = btNone
      Description = 'Or'#231'amento'
      CloseDataSet = False
      DataRange = drAllRecords
      OmitLastPgFt = False
      Head = ReportHeaderBand
      Detail = DetailBand
      Foot = RpFtOrcamento
      PageHead = PageHeaderBand
      PageFoot = PageFooterBand
      DataSource = DsItem
      Order = 1
      object ReportHeaderBandlevel: TSctLevel
        Left = 0
        Top = -394
        Width = 0
        Height = 0
        IsHeader = True
      end
      object PageHeaderBandlevel: TSctLevel
        Left = 0
        Top = -394
        Width = 0
        Height = 0
        IsHeader = True
      end
      object DetailBandlevel: TSctLevel
        Left = 0
        Top = -394
        Width = 0
        Height = 0
      end
      object PageFooterBandlevel: TSctLevel
        Left = 0
        Top = -394
        Width = 0
        Height = 0
      end
      object ReportFooterBandlevel: TSctLevel
        Left = 0
        Top = -394
        Width = 0
        Height = 0
      end
      object svarDateTime: TSctDateTimeVar
        Left = 0
        Top = -394
        Width = 0
        Height = 0
        UpdateLevel = ReportHeaderBandlevel
        AutoVar = True
        ID = vidDateTimeVar
      end
      object svarPage: TSctPageVar
        Left = 0
        Top = -394
        Width = 0
        Height = 0
        UpdateLevel = PageHeaderBandlevel
        AutoVar = True
        ID = vidPageVar
      end
      object DataSourceGuide: TSctDataSourceGuide
        Left = 0
        Top = -394
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = DetailBandlevel
        DataSource = DsOrcamento
      end
      object DataSourceGuide1: TSctDataSourceGuide
        Left = 0
        Top = -394
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = DetailBandlevel
        DataSource = DsEndereco
      end
      object DataSourceGuide2: TSctDataSourceGuide
        Left = 0
        Top = -394
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = DetailBandlevel
        DataSource = DsLaboratorio
      end
      object adodslaboratorionm_laboratorioVar: TSctDBVar
        Left = 0
        Top = -394
        Width = 0
        Height = 0
        DataField = 'nm_laboratorio'
        DataSource = DsLaboratorio
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodslaboratorionr_documentoVar: TSctDBVar
        Left = 0
        Top = -394
        Width = 0
        Height = 0
        DataField = 'nr_documento'
        DataSource = DsLaboratorio
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodslaboratoriods_enderecoVar: TSctDBVar
        Left = 0
        Top = -394
        Width = 0
        Height = 0
        DataField = 'ds_endereco'
        DataSource = DsLaboratorio
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodslaboratorionm_bairroVar: TSctDBVar
        Left = 0
        Top = -394
        Width = 0
        Height = 0
        DataField = 'nm_bairro'
        DataSource = DsLaboratorio
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodslaboratoriods_complementoVar: TSctDBVar
        Left = 0
        Top = -394
        Width = 0
        Height = 0
        DataField = 'ds_complemento'
        DataSource = DsLaboratorio
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodslaboratorionr_cepVar: TSctDBVar
        Left = 0
        Top = -394
        Width = 0
        Height = 0
        DataField = 'nr_cep'
        DataSource = DsLaboratorio
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodslaboratorionr_telefoneVar: TSctDBVar
        Left = 0
        Top = -394
        Width = 0
        Height = 0
        DataField = 'nr_telefone'
        DataSource = DsLaboratorio
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodslaboratorionr_celularVar: TSctDBVar
        Left = 0
        Top = -394
        Width = 0
        Height = 0
        DataField = 'nr_celular'
        DataSource = DsLaboratorio
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodslaboratoriods_emailVar: TSctDBVar
        Left = 0
        Top = -394
        Width = 0
        Height = 0
        DataField = 'ds_email'
        DataSource = DsLaboratorio
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodslaboratorionr_inscestadualVar: TSctDBVar
        Left = 0
        Top = -394
        Width = 0
        Height = 0
        DataField = 'nr_inscestadual'
        DataSource = DsLaboratorio
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodslaboratorionm_comercialVar: TSctDBVar
        Left = 0
        Top = -394
        Width = 0
        Height = 0
        DataField = 'nm_comercial'
        DataSource = DsLaboratorio
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodslaboratorionm_financeiroVar: TSctDBVar
        Left = 0
        Top = -394
        Width = 0
        Height = 0
        DataField = 'nm_financeiro'
        DataSource = DsLaboratorio
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object DataSourceGuide3: TSctDataSourceGuide
        Left = 0
        Top = -394
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = DetailBandlevel
        DataSource = DmMaster.DsUsuario
      end
      object DataSourceGuide4: TSctDataSourceGuide
        Left = 0
        Top = -394
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = DetailBandlevel
        DataSource = DmMaster.DsFilial
      end
      object adodsfilialDp_FilialVar: TSctDBVar
        Left = 0
        Top = -394
        Width = 0
        Height = 0
        DataField = 'Dp_Filial'
        DataSource = DmMaster.DsFilial
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsorcamentonr_orcamentoVar: TSctDBVar
        Left = 0
        Top = -394
        Width = 0
        Height = 0
        DataField = 'nr_orcamento'
        DataSource = DsOrcamento
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsorcamentodt_emissaoVar: TSctDBVar
        Left = 0
        Top = -394
        Width = 0
        Height = 0
        DataField = 'dt_emissao'
        DataSource = DsOrcamento
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsorcamentonm_funcionarioVar: TSctDBVar
        Left = 0
        Top = -394
        Width = 0
        Height = 0
        DataField = 'nm_funcionario'
        DataSource = DsOrcamento
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsorcamentonm_contatoVar: TSctDBVar
        Left = 0
        Top = -394
        Width = 0
        Height = 0
        DataField = 'nm_contato'
        DataSource = DsOrcamento
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsorcamentomm_observacaoVar: TSctDBVar
        Left = 0
        Top = -394
        Width = 0
        Height = 0
        DataField = 'mm_observacao'
        DataSource = DsOrcamento
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsorcamentonm_emitenteVar: TSctDBVar
        Left = 0
        Top = -394
        Width = 0
        Height = 0
        DataField = 'nm_emitente'
        DataSource = DsOrcamento
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsorcamentonr_documentoVar: TSctDBVar
        Left = 0
        Top = -394
        Width = 0
        Height = 0
        DataField = 'nr_documento'
        DataSource = DsOrcamento
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsorcamentonr_insc_estadualVar: TSctDBVar
        Left = 0
        Top = -394
        Width = 0
        Height = 0
        DataField = 'nr_insc_estadual'
        DataSource = DsOrcamento
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsorcamentoDp_SituacaoVar: TSctDBVar
        Left = 0
        Top = -394
        Width = 0
        Height = 0
        DataField = 'Dp_Situacao'
        DataSource = DsOrcamento
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsenderecods_enderecoVar: TSctDBVar
        Left = 0
        Top = -394
        Width = 0
        Height = 0
        DataField = 'ds_endereco'
        DataSource = DsEndereco
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsendereconm_bairroVar: TSctDBVar
        Left = 0
        Top = -394
        Width = 0
        Height = 0
        DataField = 'nm_bairro'
        DataSource = DsEndereco
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsenderecods_complementoVar: TSctDBVar
        Left = 0
        Top = -394
        Width = 0
        Height = 0
        DataField = 'ds_complemento'
        DataSource = DsEndereco
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsendereconr_cepVar: TSctDBVar
        Left = 0
        Top = -394
        Width = 0
        Height = 0
        DataField = 'nr_cep'
        DataSource = DsEndereco
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsenderecodp_cidadeVar: TSctDBVar
        Left = 0
        Top = -394
        Width = 0
        Height = 0
        DataField = 'dp_cidade'
        DataSource = DsEndereco
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsendereconr_telefone_1Var: TSctDBVar
        Left = 0
        Top = -394
        Width = 0
        Height = 0
        DataField = 'nr_telefone_1'
        DataSource = DsEndereco
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsendereconr_telefone_2Var: TSctDBVar
        Left = 0
        Top = -394
        Width = 0
        Height = 0
        DataField = 'nr_telefone_2'
        DataSource = DsEndereco
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsendereconr_telefone_3Var: TSctDBVar
        Left = 0
        Top = -394
        Width = 0
        Height = 0
        DataField = 'nr_telefone_3'
        DataSource = DsEndereco
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsendereconr_faxVar: TSctDBVar
        Left = 0
        Top = -394
        Width = 0
        Height = 0
        DataField = 'nr_fax'
        DataSource = DsEndereco
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsendereconr_celular_1Var: TSctDBVar
        Left = 0
        Top = -394
        Width = 0
        Height = 0
        DataField = 'nr_celular_1'
        DataSource = DsEndereco
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsendereconr_celular_2Var: TSctDBVar
        Left = 0
        Top = -394
        Width = 0
        Height = 0
        DataField = 'nr_celular_2'
        DataSource = DsEndereco
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsenderecomm_observacaoVar: TSctDBVar
        Left = 0
        Top = -394
        Width = 0
        Height = 0
        DataField = 'mm_observacao'
        DataSource = DsEndereco
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsorcamentods_emailVar: TSctDBVar
        Left = 0
        Top = -394
        Width = 0
        Height = 0
        DataField = 'ds_email'
        DataSource = DsOrcamento
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object DataSourceGuide5: TSctDataSourceGuide
        Left = 0
        Top = 1
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = DetailBandlevel
        DataSource = DsTransportador
      end
      object DataSourceGuide6: TSctDataSourceGuide
        Left = 0
        Top = 1
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = DetailBandlevel
        DataSource = DsItem
      end
      object adodstransportadornr_telefoneVar: TSctDBVar
        Left = 0
        Top = 1
        Width = 0
        Height = 0
        DataField = 'nr_telefone'
        DataSource = DsTransportador
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodstransportadornr_celularVar: TSctDBVar
        Left = 0
        Top = 1
        Width = 0
        Height = 0
        DataField = 'nr_celular'
        DataSource = DsTransportador
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object Group: TSctGroup
        Left = 0
        Top = 143
        Width = 0
        Height = 0
        Header = GpHdRepMaster
        Footer = GpFtItem
        Variable = adodsitemcd_laboratorioVar
        Level = 0
      end
      object GroupHeaderLevel: TSctLevel
        Left = 0
        Top = -14
        Width = 0
        Height = 0
        IsHeader = True
      end
      object GroupFooterLevel: TSctLevel
        Left = 0
        Top = -14
        Width = 0
        Height = 0
      end
      object adodsitemcd_produtoVar: TSctDBVar
        Left = 0
        Top = 33
        Width = 0
        Height = 0
        DataField = 'cd_produto'
        DataSource = DsItem
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsitemnm_produtoVar: TSctDBVar
        Left = 0
        Top = 33
        Width = 0
        Height = 0
        DataField = 'nm_produto'
        DataSource = DsItem
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsitemds_condicaoVar: TSctDBVar
        Left = 0
        Top = 33
        Width = 0
        Height = 0
        DataField = 'ds_condicao'
        DataSource = DsItem
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsitemcd_laboratorioVar: TSctDBVar
        Left = 0
        Top = 33
        Width = 0
        Height = 0
        DataField = 'cd_laboratorio'
        DataSource = DsItem
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsitemmm_observacaoVar: TSctDBVar
        Left = 0
        Top = 33
        Width = 0
        Height = 0
        DataField = 'mm_observacao'
        DataSource = DsItem
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsitemcd_fabricanteVar: TSctDBVar
        Left = 0
        Top = 33
        Width = 0
        Height = 0
        DataField = 'cd_fabricante'
        DataSource = DsItem
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsitemsg_unidadeVar: TSctDBVar
        Left = 0
        Top = 33
        Width = 0
        Height = 0
        DataField = 'sg_unidade'
        DataSource = DsItem
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsitemvl_unitarioVar: TSctDBVar
        Left = 0
        Top = 33
        Width = 0
        Height = 0
        DataField = 'vl_unitario'
        DataSource = DsItem
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsitemqt_itemVar: TSctDBVar
        Left = 0
        Top = 33
        Width = 0
        Height = 0
        DataField = 'qt_item'
        DataSource = DsItem
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsitemvl_totalVar: TSctDBVar
        Left = 0
        Top = 33
        Width = 0
        Height = 0
        DataField = 'vl_total'
        DataSource = DsItem
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsitemVl_IPIVar: TSctDBVar
        Left = 0
        Top = 33
        Width = 0
        Height = 0
        DataField = 'Vl_IPI'
        DataSource = DsItem
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object OverlayBandLevel: TSctLevel
        Left = 0
        Top = -394
        Width = 0
        Height = 0
      end
      object TotalOfVl_IPI: TSctTotalvar
        Left = 0
        Top = 143
        Width = 0
        Height = 0
        Variable = adodsitemVl_IPIVar
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidTotalVar
      end
      object TotalOfvl_total: TSctTotalvar
        Left = 0
        Top = 143
        Width = 0
        Height = 0
        Variable = adodsitemvl_totalVar
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidTotalVar
      end
      object adodsorcamentoVl_TotalVar: TSctDBVar
        Left = 0
        Top = 250
        Width = 0
        Height = 0
        DataField = 'Vl_Total'
        DataSource = DsOrcamento
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsfilialmm_rodapeVar: TSctDBVar
        Left = 0
        Top = 326
        Width = 0
        Height = 0
        DataField = 'mm_rodape'
        DataSource = DmMaster.DsFilial
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object DataSourceGuide7: TSctDataSourceGuide
        Left = 0
        Top = -71
        Width = 0
        Height = 0
        CreateVariables = False
        UpdateLevel = DetailBandlevel
        DataSource = DsEndEntrega
      end
      object adodsendentregacd_emitenteVar: TSctDBVar
        Left = 0
        Top = -71
        Width = 0
        Height = 0
        DataField = 'cd_emitente'
        DataSource = DsEndEntrega
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsendentreganr_enderecoVar: TSctDBVar
        Left = 0
        Top = -71
        Width = 0
        Height = 0
        DataField = 'nr_endereco'
        DataSource = DsEndEntrega
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsendentregads_tituloVar: TSctDBVar
        Left = 0
        Top = -71
        Width = 0
        Height = 0
        DataField = 'ds_titulo'
        DataSource = DsEndEntrega
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsendentregads_enderecoVar: TSctDBVar
        Left = 0
        Top = -71
        Width = 0
        Height = 0
        DataField = 'ds_endereco'
        DataSource = DsEndEntrega
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsendentreganm_bairroVar: TSctDBVar
        Left = 0
        Top = -71
        Width = 0
        Height = 0
        DataField = 'nm_bairro'
        DataSource = DsEndEntrega
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsendentregads_complementoVar: TSctDBVar
        Left = 0
        Top = -71
        Width = 0
        Height = 0
        DataField = 'ds_complemento'
        DataSource = DsEndEntrega
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsendentreganr_cepVar: TSctDBVar
        Left = 0
        Top = -71
        Width = 0
        Height = 0
        DataField = 'nr_cep'
        DataSource = DsEndEntrega
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsendentregacd_cidadeVar: TSctDBVar
        Left = 0
        Top = -71
        Width = 0
        Height = 0
        DataField = 'cd_cidade'
        DataSource = DsEndEntrega
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsendentregadp_cidadeVar: TSctDBVar
        Left = 0
        Top = -71
        Width = 0
        Height = 0
        DataField = 'dp_cidade'
        DataSource = DsEndEntrega
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsendentreganr_telefone_1Var: TSctDBVar
        Left = 0
        Top = -71
        Width = 0
        Height = 0
        DataField = 'nr_telefone_1'
        DataSource = DsEndEntrega
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsendentreganr_telefone_2Var: TSctDBVar
        Left = 0
        Top = -71
        Width = 0
        Height = 0
        DataField = 'nr_telefone_2'
        DataSource = DsEndEntrega
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsendentreganr_telefone_3Var: TSctDBVar
        Left = 0
        Top = -71
        Width = 0
        Height = 0
        DataField = 'nr_telefone_3'
        DataSource = DsEndEntrega
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsendentreganr_faxVar: TSctDBVar
        Left = 0
        Top = -71
        Width = 0
        Height = 0
        DataField = 'nr_fax'
        DataSource = DsEndEntrega
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsendentreganr_celular_1Var: TSctDBVar
        Left = 0
        Top = -71
        Width = 0
        Height = 0
        DataField = 'nr_celular_1'
        DataSource = DsEndEntrega
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsendentreganr_celular_2Var: TSctDBVar
        Left = 0
        Top = -71
        Width = 0
        Height = 0
        DataField = 'nr_celular_2'
        DataSource = DsEndEntrega
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsendentregamm_observacaoVar: TSctDBVar
        Left = 0
        Top = -71
        Width = 0
        Height = 0
        DataField = 'mm_observacao'
        DataSource = DsEndEntrega
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsendentregasg_estadoVar: TSctDBVar
        Left = 0
        Top = -71
        Width = 0
        Height = 0
        DataField = 'sg_estado'
        DataSource = DsEndEntrega
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodslaboratorioid_laboratorioVar: TSctDBVar
        Left = 0
        Top = 30
        Width = 0
        Height = 0
        DataField = 'id_laboratorio'
        DataSource = DsLaboratorio
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsorcamentocd_emitenteVar: TSctDBVar
        Left = 0
        Top = -365
        Width = 0
        Height = 0
        DataField = 'cd_emitente'
        DataSource = DsOrcamento
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodslaboratoriodp_cidadeVar: TSctDBVar
        Left = 0
        Top = 1
        Width = 0
        Height = 0
        DataField = 'dp_cidade'
        DataSource = DsLaboratorio
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsenderecoDs_NumeroVar: TSctDBVar
        Left = 0
        Top = -357
        Width = 0
        Height = 0
        DataField = 'Ds_Numero'
        DataSource = DsEndereco
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object adodsendentregaDs_NumeroVar: TSctDBVar
        Left = 0
        Top = -151
        Width = 0
        Height = 0
        DataField = 'Ds_Numero'
        DataSource = DsEndEntrega
        UpdateLevel = DetailBandlevel
        AutoVar = False
        ID = vidAutoDataVar
      end
      object DataSourceGuide8: TSctDataSourceGuide
        Left = 0
        Top = -111
        Width = 0
        Height = 0
        CreateVariables = True
        UpdateLevel = DetailBandlevel
        DataSource = DmMaster.DsConexao
      end
      object DataSourceGuide9: TSctDataSourceGuide
        Left = 0
        Top = -111
        Width = 0
        Height = 0
        CreateVariables = True
        UpdateLevel = DetailBandlevel
        DataSource = DmMaster.DsConecadoMes
      end
      object adodsconexaoNm_BancoVar: TSctDBVar
        Left = 0
        Top = -111
        Width = 0
        Height = 0
        DataField = 'Nm_Banco'
        DataSource = DmMaster.DsConexao
        UpdateLevel = DetailBandlevel
        AutoVar = True
        ID = vidAutoDataVar
      end
      object adodsconexaoHr_LoginVar: TSctDBVar
        Left = 0
        Top = -111
        Width = 0
        Height = 0
        DataField = 'Hr_Login'
        DataSource = DmMaster.DsConexao
        UpdateLevel = DetailBandlevel
        AutoVar = True
        ID = vidAutoDataVar
      end
      object adodsconexaoNr_TransacoesAbertasVar: TSctDBVar
        Left = 0
        Top = -111
        Width = 0
        Height = 0
        DataField = 'Nr_TransacoesAbertas'
        DataSource = DmMaster.DsConexao
        UpdateLevel = DetailBandlevel
        AutoVar = True
        ID = vidAutoDataVar
      end
      object adodsconexaoNt_UsuarioVar: TSctDBVar
        Left = 0
        Top = -111
        Width = 0
        Height = 0
        DataField = 'Nt_Usuario'
        DataSource = DmMaster.DsConexao
        UpdateLevel = DetailBandlevel
        AutoVar = True
        ID = vidAutoDataVar
      end
      object adodsconexaoNm_EstacaoTrabalhoVar: TSctDBVar
        Left = 0
        Top = -111
        Width = 0
        Height = 0
        DataField = 'Nm_EstacaoTrabalho'
        DataSource = DmMaster.DsConexao
        UpdateLevel = DetailBandlevel
        AutoVar = True
        ID = vidAutoDataVar
      end
      object adodsconexaoNm_AplicacaoVar: TSctDBVar
        Left = 0
        Top = -111
        Width = 0
        Height = 0
        DataField = 'Nm_Aplicacao'
        DataSource = DmMaster.DsConexao
        UpdateLevel = DetailBandlevel
        AutoVar = True
        ID = vidAutoDataVar
      end
      object adodsconexaoStatusVar: TSctDBVar
        Left = 0
        Top = -111
        Width = 0
        Height = 0
        DataField = 'Status'
        DataSource = DmMaster.DsConexao
        UpdateLevel = DetailBandlevel
        AutoVar = True
        ID = vidAutoDataVar
      end
      object adodsconexaoDs_ComandoVar: TSctDBVar
        Left = 0
        Top = -111
        Width = 0
        Height = 0
        DataField = 'Ds_Comando'
        DataSource = DmMaster.DsConexao
        UpdateLevel = DetailBandlevel
        AutoVar = True
        ID = vidAutoDataVar
      end
      object adodsconexaoLoginameVar: TSctDBVar
        Left = 0
        Top = -111
        Width = 0
        Height = 0
        DataField = 'Loginame'
        DataSource = DmMaster.DsConexao
        UpdateLevel = DetailBandlevel
        AutoVar = True
        ID = vidAutoDataVar
      end
      object adodsconexaospidVar: TSctDBVar
        Left = 0
        Top = -111
        Width = 0
        Height = 0
        DataField = 'spid'
        DataSource = DmMaster.DsConexao
        UpdateLevel = DetailBandlevel
        AutoVar = True
        ID = vidAutoDataVar
      end
      object adodsconexaoNet_AddressVar: TSctDBVar
        Left = 0
        Top = -111
        Width = 0
        Height = 0
        DataField = 'Net_Address'
        DataSource = DmMaster.DsConexao
        UpdateLevel = DetailBandlevel
        AutoVar = True
        ID = vidAutoDataVar
      end
      object adodsconexaoNr_VersaoVar: TSctDBVar
        Left = 0
        Top = -111
        Width = 0
        Height = 0
        DataField = 'Nr_Versao'
        DataSource = DmMaster.DsConexao
        UpdateLevel = DetailBandlevel
        AutoVar = True
        ID = vidAutoDataVar
      end
      object adodsconectadomesNm_HostVar: TSctDBVar
        Left = 0
        Top = -111
        Width = 0
        Height = 0
        DataField = 'Nm_Host'
        DataSource = DmMaster.DsConecadoMes
        UpdateLevel = DetailBandlevel
        AutoVar = True
        ID = vidAutoDataVar
      end
      object ReportHeaderBand: TSctBand
        Left = 0
        Top = -394
        Width = 786
        Height = 5
        ParentColor = True
        BandName = 'Report Header'
        Updatelevel = ReportHeaderBandlevel
        Visible = False
      end
      object PageHeaderBand: TSctBand
        Left = 0
        Top = -241
        Width = 786
        Height = 1
        ParentColor = True
        BandName = 'Page Header'
        Updatelevel = PageHeaderBandlevel
        Stretch = True
        BorderType = btSingle
      end
      object DetailBand: TSctBand
        Left = 0
        Top = 508
        Width = 786
        Height = 19
        ParentColor = True
        BandName = 'Detail'
        Updatelevel = DetailBandlevel
        Stretch = True
        object Sctvarlabel101: TSctvarlabel
          Left = 0
          Top = 1
          Width = 71
          Height = 17
          AlignHorizontal = laCenter
          Variable = adodsitemcd_fabricanteVar
        end
        object Sctvarlabel102: TSctvarlabel
          Left = 75
          Top = 1
          Width = 40
          Height = 17
          AlignHorizontal = laRight
          Variable = adodsitemcd_produtoVar
        end
        object Sctvarlabel103: TSctvarlabel
          Left = 120
          Top = 1
          Width = 301
          Height = 17
          WrapText = True
          Stretch = True
          Variable = adodsitemnm_produtoVar
        end
        object Sctvarlabel104: TSctvarlabel
          Left = 422
          Top = 1
          Width = 43
          Height = 17
          AlignHorizontal = laCenter
          Variable = adodsitemsg_unidadeVar
        end
        object Sctvarlabel105: TSctvarlabel
          Left = 469
          Top = 1
          Width = 60
          Height = 17
          AlignHorizontal = laRight
          Variable = adodsitemqt_itemVar
        end
        object Sctvarlabel106: TSctvarlabel
          Left = 532
          Top = 1
          Width = 60
          Height = 17
          AlignHorizontal = laRight
          Variable = adodsitemvl_unitarioVar
          DataFormat.DisplayFormat = '#,##0.00'
          DataFormat.Digits = 2
        end
        object SctVarIPI: TSctvarlabel
          Left = 596
          Top = 1
          Width = 60
          Height = 17
          AlignHorizontal = laRight
          Variable = adodsitemVl_IPIVar
          DataFormat.DisplayFormat = '#,##0.00'
          DataFormat.SuppressNulls = True
          DataFormat.Digits = 2
        end
        object Sctvarlabel108: TSctvarlabel
          Left = 659
          Top = 1
          Width = 75
          Height = 17
          AlignHorizontal = laRight
          Variable = adodsitemvl_totalVar
          DataFormat.DisplayFormat = '#,##0.00'
          DataFormat.Digits = 2
        end
        object SctVerticalDivider1: TSctVerticalDivider
          Left = 735
          Top = 1
          Width = 2
          Height = 18
        end
        object SctVerticalDivider2: TSctVerticalDivider
          Left = 0
          Top = 1
          Width = 2
          Height = 18
        end
      end
      object PageFooterBand: TSctBand
        Left = 0
        Top = 611
        Width = 786
        Height = 20
        Color = 15987699
        BandName = 'Page Footer'
        Updatelevel = PageFooterBandlevel
        object SctLine3: TSctLine
          Left = 1
          Top = 1
          Width = 734
          Height = 6
          AlignVertical = laTop
        end
        object Sctvarlabel114: TSctvarlabel
          Left = 1
          Top = 3
          Width = 460
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
          Variable = adodsfilialDp_FilialVar
        end
        object Sctvarlabel115: TSctvarlabel
          Left = 655
          Top = 3
          Width = 45
          Height = 17
          AlignHorizontal = laRight
          Caption = 'P'#225'gina:'
        end
        object Sctvarlabel116: TSctvarlabel
          Left = 701
          Top = 3
          Width = 35
          Height = 17
          AlignHorizontal = laRight
          Variable = svarPage
          DataFormat.DisplayFormat = '#,##0'
        end
      end
      object RpFtOrcamento: TSctBand
        Left = 0
        Top = 646
        Width = 786
        Height = 0
        ParentColor = True
        BandName = 'RpFtOrcamento'
        Updatelevel = ReportFooterBandlevel
      end
      object PgHdOrcamento: TSctSubBand
        Left = 0
        Top = -225
        Width = 786
        Height = 52
        ParentColor = True
        BandName = 'PgHdOrcamento'
        Updatelevel = PageHeaderBandlevel
        Stretch = True
        BorderType = btSingle
        Band = PageHeaderBand
        Above = False
        object SctTitle: TSctvarlabel
          Left = 0
          Top = 2
          Width = 95
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Caption = 'Or'#231'amento N'#186':'
        end
        object Sctvarlabel12: TSctvarlabel
          Left = 98
          Top = 2
          Width = 78
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Variable = adodsorcamentonr_orcamentoVar
          DataFormat.DisplayFormat = '##,##0'
        end
        object Sctvarlabel17: TSctvarlabel
          Left = 177
          Top = 2
          Width = 56
          Height = 15
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Caption = 'Emiss'#227'o:'
        end
        object Sctvarlabel18: TSctvarlabel
          Left = 236
          Top = 2
          Width = 69
          Height = 15
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Variable = adodsorcamentodt_emissaoVar
          DataFormat.DisplayFormat = 'dd/mm/yyyy'
        end
        object Sctvarlabel20: TSctvarlabel
          Left = 310
          Top = 2
          Width = 56
          Height = 15
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Caption = 'Situa'#231#227'o:'
        end
        object Sctvarlabel21: TSctvarlabel
          Left = 368
          Top = 2
          Width = 218
          Height = 15
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Variable = adodsorcamentoDp_SituacaoVar
        end
        object Sctvarlabel29: TSctvarlabel
          Left = 1
          Top = 19
          Width = 62
          Height = 15
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Caption = 'Vendedor:'
        end
        object SctVarVendedor: TSctvarlabel
          Left = 63
          Top = 19
          Width = 323
          Height = 15
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Variable = adodsorcamentonm_funcionarioVar
        end
        object Sctvarlabel71: TSctvarlabel
          Left = 1
          Top = 33
          Width = 106
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          WrapText = True
          Stretch = True
          Caption = 'Observa'#231#245'es:'
        end
        object SctVarObservacao: TSctvarlabel
          Left = 86
          Top = 33
          Width = 647
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          WrapText = True
          Stretch = True
          Variable = adodsorcamentomm_observacaoVar
          DataFormat.SuppressNulls = True
        end
        object SctVarPedCliente: TSctvarlabel
          Left = 392
          Top = 19
          Width = 342
          Height = 15
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          AlignHorizontal = laRight
          Caption = 'N'#186' do Pedido do Cliente:'
        end
      end
      object PgHdEmitente: TSctSubBand
        Left = 0
        Top = -158
        Width = 786
        Height = 162
        ParentColor = True
        BandName = 'PgHdEmitente'
        Updatelevel = PageHeaderBandlevel
        Stretch = True
        BorderType = btSingle
        Band = PageHeaderBand
        Order = 1
        Above = False
        object Sctvarlabel27: TSctvarlabel
          Left = 1
          Top = 1
          Width = 48
          Height = 15
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Caption = 'Cliente:'
        end
        object Sctvarlabel28: TSctvarlabel
          Left = 51
          Top = 1
          Width = 400
          Height = 15
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Variable = adodsorcamentonm_emitenteVar
        end
        object Sctvarlabel2: TSctvarlabel
          Left = 1
          Top = 16
          Width = 62
          Height = 15
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Caption = 'CNPJ/CPF:'
        end
        object SctVarDocto: TSctvarlabel
          Left = 65
          Top = 16
          Width = 136
          Height = 15
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Variable = adodsorcamentonr_documentoVar
        end
        object Sctvarlabel4: TSctvarlabel
          Left = 206
          Top = 16
          Width = 111
          Height = 15
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Caption = 'Inscri'#231#227'o Estadual:'
        end
        object Sctvarlabel5: TSctvarlabel
          Left = 319
          Top = 15
          Width = 136
          Height = 15
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Variable = adodsorcamentonr_insc_estadualVar
        end
        object Sctvarlabel31: TSctvarlabel
          Left = 0
          Top = 31
          Width = 141
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Caption = 'Endere'#231'o de Cobran'#231'a:'
        end
        object Sctvarlabel33: TSctvarlabel
          Left = 1
          Top = 48
          Width = 52
          Height = 17
          Caption = 'Endere'#231'o:'
        end
        object Sctvarlabel34: TSctvarlabel
          Left = 53
          Top = 48
          Width = 381
          Height = 17
          Variable = adodsenderecods_enderecoVar
        end
        object Sctvarlabel35: TSctvarlabel
          Left = 1
          Top = 64
          Width = 33
          Height = 17
          Caption = 'Bairro:'
        end
        object Sctvarlabel36: TSctvarlabel
          Left = 33
          Top = 64
          Width = 245
          Height = 17
          Variable = adodsendereconm_bairroVar
        end
        object Sctvarlabel37: TSctvarlabel
          Left = 1
          Top = 80
          Width = 71
          Height = 17
          Caption = 'Complemento:'
        end
        object Sctvarlabel38: TSctvarlabel
          Left = 71
          Top = 80
          Width = 230
          Height = 17
          Variable = adodsenderecods_complementoVar
        end
        object Sctvarlabel39: TSctvarlabel
          Left = 1
          Top = 112
          Width = 28
          Height = 17
          Caption = 'CEP:'
        end
        object Sctvarlabel40: TSctvarlabel
          Left = 29
          Top = 112
          Width = 67
          Height = 17
          Variable = adodsendereconr_cepVar
          DataFormat.DisplayFormat = '##.###-###;0; '
        end
        object Sctvarlabel41: TSctvarlabel
          Left = 1
          Top = 96
          Width = 40
          Height = 17
          Caption = 'Cidade:'
        end
        object Sctvarlabel42: TSctvarlabel
          Left = 40
          Top = 96
          Width = 254
          Height = 17
          Variable = adodsenderecodp_cidadeVar
        end
        object Sctvarlabel43: TSctvarlabel
          Left = 574
          Top = 48
          Width = 52
          Height = 17
          AlignHorizontal = laRight
          Caption = 'Telefones:'
        end
        object Sctvarlabel44: TSctvarlabel
          Left = 627
          Top = 48
          Width = 98
          Height = 17
          Variable = adodsendereconr_telefone_1Var
          DataFormat.DisplayFormat = '(##) ####-#####;0; '
          DataFormat.SuppressNulls = True
        end
        object Sctvarlabel45: TSctvarlabel
          Left = 627
          Top = 64
          Width = 98
          Height = 17
          Variable = adodsendereconr_telefone_2Var
          DataFormat.DisplayFormat = '(##) ####-#####;0; '
          DataFormat.SuppressNulls = True
        end
        object Sctvarlabel46: TSctvarlabel
          Left = 627
          Top = 80
          Width = 98
          Height = 17
          Variable = adodsendereconr_telefone_3Var
          DataFormat.DisplayFormat = '(##) ####-#####;0; '
          DataFormat.SuppressNulls = True
        end
        object Sctvarlabel47: TSctvarlabel
          Left = 597
          Top = 96
          Width = 29
          Height = 17
          AlignHorizontal = laRight
          Caption = 'FAX:'
        end
        object Sctvarlabel48: TSctvarlabel
          Left = 627
          Top = 96
          Width = 98
          Height = 17
          Variable = adodsendereconr_faxVar
          DataFormat.DisplayFormat = '(##) ####-#####;0; '
          DataFormat.SuppressNulls = True
        end
        object Sctvarlabel49: TSctvarlabel
          Left = 1
          Top = 144
          Width = 83
          Height = 17
          WrapText = True
          Stretch = True
          Caption = 'Observa'#231#245'es:'
        end
        object Sctvarlabel50: TSctvarlabel
          Left = 69
          Top = 144
          Width = 641
          Height = 17
          WrapText = True
          Stretch = True
          Variable = adodsenderecomm_observacaoVar
          DataFormat.SuppressNulls = True
        end
        object Sctvarlabel1: TSctvarlabel
          Left = 574
          Top = 112
          Width = 52
          Height = 17
          AlignHorizontal = laRight
          Caption = 'Celular:'
        end
        object Sctvarlabel3: TSctvarlabel
          Left = 627
          Top = 112
          Width = 98
          Height = 17
          Variable = adodsendereconr_celular_1Var
          DataFormat.DisplayFormat = '(##) #####-#####;0; '
          DataFormat.SuppressNulls = True
        end
        object Sctvarlabel6: TSctvarlabel
          Left = 627
          Top = 129
          Width = 98
          Height = 17
          Variable = adodsendereconr_celular_2Var
          DataFormat.DisplayFormat = '(##) #####-#####;0; '
          DataFormat.SuppressNulls = True
        end
        object Sctvarlabel7: TSctvarlabel
          Left = 1
          Top = 128
          Width = 35
          Height = 17
          Caption = 'E-Mail:'
        end
        object Sctvarlabel8: TSctvarlabel
          Left = 35
          Top = 128
          Width = 381
          Height = 17
          Variable = adodsorcamentods_emailVar
        end
        object Sctvarlabel126: TSctvarlabel
          Left = 618
          Top = 2
          Width = 56
          Height = 15
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          AlignHorizontal = laRight
          Caption = 'C'#243'digo:'
        end
        object Sctvarlabel127: TSctvarlabel
          Left = 675
          Top = 2
          Width = 50
          Height = 15
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          AlignHorizontal = laRight
          Variable = adodsorcamentocd_emitenteVar
        end
        object Sctvarlabel72: TSctvarlabel
          Left = 437
          Top = 48
          Width = 45
          Height = 17
          Caption = 'N'#250'mero:'
        end
        object Sctvarlabel99: TSctvarlabel
          Left = 485
          Top = 48
          Width = 83
          Height = 17
          Variable = adodsenderecoDs_NumeroVar
        end
      end
      object PgHdEntrega: TSctSubBand
        Left = 0
        Top = 19
        Width = 786
        Height = 115
        ParentColor = True
        BandName = 'PgHdEntrega'
        Updatelevel = PageHeaderBandlevel
        Stretch = True
        BorderType = btSingle
        Band = PageHeaderBand
        Order = 2
        Above = False
        object Sctvarlabel9: TSctvarlabel
          Left = 0
          Top = 1
          Width = 141
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Caption = 'Endere'#231'o de Entrega:'
        end
        object Sctvarlabel10: TSctvarlabel
          Left = 1
          Top = 18
          Width = 52
          Height = 17
          Caption = 'Endere'#231'o:'
        end
        object Sctvarlabel11: TSctvarlabel
          Left = 53
          Top = 18
          Width = 381
          Height = 17
          Variable = adodsendentregads_enderecoVar
        end
        object Sctvarlabel13: TSctvarlabel
          Left = 1
          Top = 34
          Width = 33
          Height = 17
          Caption = 'Bairro:'
        end
        object Sctvarlabel14: TSctvarlabel
          Left = 33
          Top = 34
          Width = 245
          Height = 17
          Variable = adodsendentreganm_bairroVar
        end
        object Sctvarlabel15: TSctvarlabel
          Left = 1
          Top = 50
          Width = 71
          Height = 17
          Caption = 'Complemento:'
        end
        object Sctvarlabel16: TSctvarlabel
          Left = 71
          Top = 50
          Width = 230
          Height = 17
          Variable = adodsendentregads_complementoVar
        end
        object Sctvarlabel19: TSctvarlabel
          Left = 1
          Top = 82
          Width = 28
          Height = 17
          Caption = 'CEP:'
        end
        object Sctvarlabel22: TSctvarlabel
          Left = 29
          Top = 82
          Width = 67
          Height = 17
          Variable = adodsendentreganr_cepVar
          DataFormat.DisplayFormat = '##.###-###;0; '
        end
        object Sctvarlabel23: TSctvarlabel
          Left = 1
          Top = 66
          Width = 40
          Height = 17
          Caption = 'Cidade:'
        end
        object Sctvarlabel24: TSctvarlabel
          Left = 40
          Top = 66
          Width = 254
          Height = 17
          Variable = adodsendentregadp_cidadeVar
        end
        object Sctvarlabel25: TSctvarlabel
          Left = 574
          Top = 18
          Width = 52
          Height = 17
          AlignHorizontal = laRight
          Caption = 'Telefones:'
        end
        object Sctvarlabel26: TSctvarlabel
          Left = 627
          Top = 18
          Width = 98
          Height = 17
          Variable = adodsendentreganr_telefone_1Var
          DataFormat.DisplayFormat = '(##) ####-#####;0; '
          DataFormat.SuppressNulls = True
        end
        object Sctvarlabel30: TSctvarlabel
          Left = 627
          Top = 34
          Width = 98
          Height = 17
          Variable = adodsendentreganr_telefone_2Var
          DataFormat.DisplayFormat = '(##) ####-#####;0; '
          DataFormat.SuppressNulls = True
        end
        object Sctvarlabel32: TSctvarlabel
          Left = 627
          Top = 50
          Width = 98
          Height = 17
          Variable = adodsendentreganr_telefone_3Var
          DataFormat.DisplayFormat = '(##) ####-#####;0; '
          DataFormat.SuppressNulls = True
        end
        object Sctvarlabel51: TSctvarlabel
          Left = 597
          Top = 66
          Width = 29
          Height = 17
          AlignHorizontal = laRight
          Caption = 'FAX:'
        end
        object Sctvarlabel52: TSctvarlabel
          Left = 627
          Top = 66
          Width = 98
          Height = 17
          Variable = adodsendentreganr_faxVar
          DataFormat.DisplayFormat = '(##) ####-#####;0; '
          DataFormat.SuppressNulls = True
        end
        object Sctvarlabel53: TSctvarlabel
          Left = 1
          Top = 97
          Width = 83
          Height = 17
          WrapText = True
          Stretch = True
          Caption = 'Observa'#231#245'es:'
        end
        object Sctvarlabel54: TSctvarlabel
          Left = 69
          Top = 97
          Width = 502
          Height = 17
          WrapText = True
          Stretch = True
          Variable = adodsendentregamm_observacaoVar
          DataFormat.SuppressNulls = True
        end
        object Sctvarlabel55: TSctvarlabel
          Left = 574
          Top = 82
          Width = 52
          Height = 17
          AlignHorizontal = laRight
          Caption = 'Celular:'
        end
        object Sctvarlabel56: TSctvarlabel
          Left = 627
          Top = 82
          Width = 98
          Height = 17
          Variable = adodsendentreganr_celular_1Var
          DataFormat.DisplayFormat = '(##) #####-#####;0; '
          DataFormat.SuppressNulls = True
        end
        object Sctvarlabel57: TSctvarlabel
          Left = 627
          Top = 99
          Width = 98
          Height = 17
          Variable = adodsendentreganr_celular_2Var
          DataFormat.DisplayFormat = '(##) #####-#####;0; '
          DataFormat.SuppressNulls = True
        end
        object Sctvarlabel107: TSctvarlabel
          Left = 437
          Top = 18
          Width = 45
          Height = 17
          Caption = 'N'#250'mero:'
        end
        object Sctvarlabel112: TSctvarlabel
          Left = 485
          Top = 18
          Width = 83
          Height = 17
          Variable = adodsendentregaDs_NumeroVar
        end
      end
      object GpHdRepMaster: TSctBand
        Left = 0
        Top = 149
        Width = 786
        Height = 0
        ParentColor = True
        BandName = 'GpHdRepMaster'
        Updatelevel = GroupHeaderLevel
        Stretch = True
        BorderType = btSingle
      end
      object GpFtItem: TSctBand
        Left = 0
        Top = 542
        Width = 786
        Height = 54
        ParentColor = True
        BandName = 'GpFtItem'
        Updatelevel = GroupFooterLevel
        Visible = False
        BorderType = btSingle
        OnBeforePrint = GpFtItemBeforePrint
        object Sctvarlabel111: TSctvarlabel
          Left = 536
          Top = 2
          Width = 120
          Height = 17
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          AlignHorizontal = laRight
          Caption = 'Valor dos Produtos:'
        end
        object SctTotalvarLabel1: TSctTotalvarLabel
          Left = 659
          Top = 2
          Width = 75
          Height = 17
          TotalVariable = TotalOfvl_total
          DataFormat.DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object SctTxtTotalIPI: TSctvarlabel
          Left = 536
          Top = 19
          Width = 120
          Height = 17
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          AlignHorizontal = laRight
          Caption = 'Valor do IPI:'
        end
        object SctVarTotalIPI: TSctTotalvarLabel
          Left = 659
          Top = 19
          Width = 75
          Height = 17
          TotalVariable = TotalOfVl_IPI
          DataFormat.DisplayFormat = '#,##0.00'
          DataFormat.SuppressNulls = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Sctvarlabel113: TSctvarlabel
          Left = 536
          Top = 36
          Width = 120
          Height = 17
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          AlignHorizontal = laRight
          Caption = 'Total Geral:'
        end
        object SctVarTotal_Grupo: TSctvarlabel
          Left = 659
          Top = 36
          Width = 75
          Height = 17
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          AlignHorizontal = laRight
          Caption = '0.00'
        end
      end
      object GpHdTransporte: TSctSubBand
        Left = 0
        Top = 374
        Width = 786
        Height = 51
        ParentColor = True
        BandName = 'GpHdTransporte'
        Updatelevel = GroupHeaderLevel
        Visible = False
        BorderType = btSingle
        Band = GpHdRepMaster
        Order = 2
        Above = False
        object Sctvarlabel82: TSctvarlabel
          Left = 0
          Top = 1
          Width = 79
          Height = 17
          Caption = 'Transportadora:'
        end
        object SctVarTransportadora: TSctvarlabel
          Left = 80
          Top = 1
          Width = 376
          Height = 17
          Caption = '<<< Nome da Transportadora >>>'
        end
        object SctTxtFrete: TSctvarlabel
          Left = 1
          Top = 17
          Width = 65
          Height = 17
          Caption = 'Frete CIF/FOB'
        end
        object Sctvarlabel83: TSctvarlabel
          Left = 574
          Top = 1
          Width = 52
          Height = 17
          AlignHorizontal = laRight
          Caption = 'Telefone:'
        end
        object Sctvarlabel84: TSctvarlabel
          Left = 627
          Top = 1
          Width = 98
          Height = 17
          Variable = adodstransportadornr_telefoneVar
          DataFormat.DisplayFormat = '(##) ####-#####;0; '
          DataFormat.SuppressNulls = True
        end
        object Sctvarlabel85: TSctvarlabel
          Left = 574
          Top = 21
          Width = 52
          Height = 17
          AlignHorizontal = laRight
          Caption = 'Celular:'
        end
        object Sctvarlabel86: TSctvarlabel
          Left = 627
          Top = 21
          Width = 98
          Height = 17
          Variable = adodstransportadornr_celularVar
          DataFormat.DisplayFormat = '(##) ####-######;0; '
          DataFormat.SuppressNulls = True
        end
        object Sctvarlabel89: TSctvarlabel
          Left = 1
          Top = 33
          Width = 126
          Height = 17
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Caption = 'Forma de Pagamento:'
        end
        object Sctvarlabel92: TSctvarlabel
          Left = 128
          Top = 33
          Width = 446
          Height = 17
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Variable = adodsitemds_condicaoVar
        end
      end
      object GpHdProduto: TSctSubBand
        Left = 0
        Top = 474
        Width = 786
        Height = 19
        ParentColor = True
        BandName = 'GpHdProduto'
        Updatelevel = GroupHeaderLevel
        BorderType = btSingle
        Band = GpHdRepMaster
        Order = 4
        Above = False
        object Sctvarlabel93: TSctvarlabel
          Left = 0
          Top = 1
          Width = 71
          Height = 17
          AlignHorizontal = laCenter
          Caption = 'Cod. Industria'
        end
        object Sctvarlabel94: TSctvarlabel
          Left = 75
          Top = 1
          Width = 40
          Height = 17
          AlignHorizontal = laRight
          Caption = 'C'#243'digo'
        end
        object Sctvarlabel95: TSctvarlabel
          Left = 120
          Top = 1
          Width = 65
          Height = 17
          Caption = 'Produto'
        end
        object Sctvarlabel96: TSctvarlabel
          Left = 422
          Top = 1
          Width = 43
          Height = 17
          Caption = 'Unidade'
        end
        object Sctvarlabel97: TSctvarlabel
          Left = 469
          Top = 1
          Width = 60
          Height = 17
          AlignHorizontal = laRight
          Caption = 'Quantidade'
        end
        object Sctvarlabel98: TSctvarlabel
          Left = 532
          Top = 1
          Width = 60
          Height = 17
          AlignHorizontal = laRight
          Caption = 'Unit'#225'rio'
        end
        object SctLblIPI: TSctvarlabel
          Left = 596
          Top = 1
          Width = 60
          Height = 17
          AlignHorizontal = laRight
          Caption = 'IPI'
        end
        object Sctvarlabel100: TSctvarlabel
          Left = 659
          Top = 1
          Width = 75
          Height = 17
          AlignHorizontal = laRight
          Caption = 'Total'
        end
      end
      object OverlayBand: TSctOverlayBand
        Left = 0
        Top = 763
        Width = 786
        Height = 86
        ParentColor = True
        BandName = 'OverlayBand'
        Updatelevel = OverlayBandLevel
        object SctImgLogo: TSctImageLabel
          Left = 230
          Top = 5
          Width = 241
          Height = 76
        end
      end
      object RpFtTotal: TSctSubBand
        Left = 0
        Top = 661
        Width = 786
        Height = 54
        ParentColor = True
        BandName = 'RpFtTotal'
        Updatelevel = ReportFooterBandlevel
        Visible = False
        BorderType = btSingle
        Band = RpFtOrcamento
        Above = False
        object Sctvarlabel117: TSctvarlabel
          Left = 536
          Top = 2
          Width = 120
          Height = 17
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          AlignHorizontal = laRight
          Caption = 'Valor dos Produtos:'
        end
        object SctTotalvarLabel3: TSctTotalvarLabel
          Left = 659
          Top = 2
          Width = 75
          Height = 17
          TotalVariable = TotalOfvl_total
          DataFormat.DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object SctTxtTotalIPI_2: TSctvarlabel
          Left = 536
          Top = 19
          Width = 120
          Height = 17
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          AlignHorizontal = laRight
          Caption = 'Valor do IPI:'
        end
        object SctVarTotalIPI_2: TSctTotalvarLabel
          Left = 659
          Top = 19
          Width = 75
          Height = 17
          TotalVariable = TotalOfVl_IPI
          DataFormat.DisplayFormat = '#,##0.00'
          DataFormat.SuppressNulls = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Sctvarlabel119: TSctvarlabel
          Left = 536
          Top = 36
          Width = 120
          Height = 17
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          AlignHorizontal = laRight
          Caption = 'Total Geral:'
        end
        object SctVarTotal: TSctvarlabel
          Left = 659
          Top = 36
          Width = 75
          Height = 17
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          AlignHorizontal = laRight
          Variable = adodsorcamentoVl_TotalVar
          DataFormat.DisplayFormat = '##,##0.00'
          DataFormat.Digits = 2
        end
        object Sctvarlabel123: TSctvarlabel
          Left = 1
          Top = 1
          Width = 131
          Height = 17
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Caption = 'Total do Or'#231'amento'
        end
      end
      object RpFtOrcamentoSub1: TSctSubBand
        Left = 0
        Top = 730
        Width = 786
        Height = 18
        ParentColor = True
        BandName = 'RpFtOrcamentoSub1'
        Updatelevel = ReportFooterBandlevel
        Stretch = True
        BorderType = btSingle
        Band = RpFtOrcamento
        Order = 1
        Above = False
        object Sctvarlabel122: TSctvarlabel
          Left = 1
          Top = 0
          Width = 734
          Height = 17
          WrapText = True
          Stretch = True
          Variable = adodsfilialmm_rodapeVar
        end
      end
      object GpHdRepFull: TSctSubBand
        Left = 0
        Top = 164
        Width = 786
        Height = 64
        ParentColor = True
        BandName = 'GpHdRepFull'
        Updatelevel = GroupHeaderLevel
        Stretch = True
        BorderType = btSingle
        Band = GpHdRepMaster
        Above = False
        object Sctvarlabel61: TSctvarlabel
          Left = 0
          Top = 1
          Width = 400
          Height = 15
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Variable = adodslaboratorionm_laboratorioVar
        end
        object Sctvarlabel62: TSctvarlabel
          Left = 0
          Top = 30
          Width = 62
          Height = 15
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Caption = 'CNPJ/CPF:'
        end
        object Sctvarlabel63: TSctvarlabel
          Left = 63
          Top = 30
          Width = 153
          Height = 15
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Variable = adodslaboratorionr_documentoVar
          DataFormat.DisplayFormat = '##.###.###/####-##;0; '
        end
        object Sctvarlabel64: TSctvarlabel
          Left = 222
          Top = 30
          Width = 111
          Height = 15
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Caption = 'Inscri'#231#227'o Estadual:'
        end
        object Sctvarlabel65: TSctvarlabel
          Left = 335
          Top = 29
          Width = 136
          Height = 15
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Variable = adodslaboratorionr_inscestadualVar
        end
        object Sctvarlabel110: TSctvarlabel
          Left = 67
          Top = 44
          Width = 447
          Height = 17
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          WrapText = True
          Stretch = True
          Variable = adodsitemmm_observacaoVar
          DataFormat.SuppressNulls = True
        end
        object Sctvarlabel124: TSctvarlabel
          Left = 0
          Top = 16
          Width = 116
          Height = 15
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Caption = 'C'#243'digo na Industria:'
        end
        object Sctvarlabel125: TSctvarlabel
          Left = 116
          Top = 16
          Width = 285
          Height = 15
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Variable = adodslaboratorioid_laboratorioVar
        end
        object SctTxtPreco: TSctvarlabel
          Left = 520
          Top = 44
          Width = 213
          Height = 17
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          AlignHorizontal = laRight
          Caption = 'PRE'#199'O FINAL=IMPOSTOS INCLUSO'
        end
      end
      object GpHdRepLista: TSctSubBand
        Left = 0
        Top = 440
        Width = 786
        Height = 19
        ParentColor = True
        BandName = 'GpHdRepLista'
        Updatelevel = GroupHeaderLevel
        Visible = False
        BorderType = btSingle
        Band = GpHdRepMaster
        Order = 3
        Above = False
        object Sctvarlabel120: TSctvarlabel
          Left = 0
          Top = 1
          Width = 426
          Height = 17
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Variable = adodslaboratorionm_laboratorioVar
        end
        object Sctvarlabel121: TSctvarlabel
          Left = 435
          Top = 1
          Width = 301
          Height = 17
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          AlignHorizontal = laRight
          Variable = adodsitemds_condicaoVar
        end
      end
      object PgHdFilial: TSctSubBand
        Left = 0
        Top = -294
        Width = 786
        Height = 38
        ParentColor = True
        BandName = 'PgHdFilial'
        Updatelevel = PageHeaderBandlevel
        Stretch = True
        BorderType = btSingle
        Band = PageHeaderBand
        Order = 1
        Above = True
        object Sctvarlabel143: TSctvarlabel
          Left = -1
          Top = 2
          Width = 419
          Height = 24
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
          Variable = adodsfilialDp_FilialVar
        end
        object SctEndereco: TSctvarlabel
          Left = 425
          Top = 2
          Width = 310
          Height = 35
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          WrapText = True
          Stretch = True
          Caption = '<<< Endere'#231'o >>>'
        end
      end
      object PgHdFilial_Img: TSctSubBand
        Left = 0
        Top = -374
        Width = 786
        Height = 65
        ParentColor = True
        BandName = 'PgHdFilial_Img'
        Updatelevel = PageHeaderBandlevel
        Stretch = True
        Band = PageHeaderBand
        Above = True
        object SctImgCabecalho: TSctImageLabel
          Left = 0
          Top = -2
          Width = 736
          Height = 66
          Center = True
        end
      end
      object GpHdRepMasteEndLab: TSctSubBand
        Left = 0
        Top = 243
        Width = 786
        Height = 116
        ParentColor = True
        BandName = 'GpHdRepMasteEndLab'
        Updatelevel = GroupHeaderLevel
        Visible = False
        Band = GpHdRepMaster
        Order = 1
        Above = False
        object Sctvarlabel67: TSctvarlabel
          Left = 1
          Top = 2
          Width = 52
          Height = 17
          Caption = 'Endere'#231'o:'
        end
        object Sctvarlabel68: TSctvarlabel
          Left = 53
          Top = 2
          Width = 381
          Height = 17
          Variable = adodslaboratoriods_enderecoVar
        end
        object Sctvarlabel69: TSctvarlabel
          Left = 1
          Top = 18
          Width = 33
          Height = 17
          Caption = 'Bairro:'
        end
        object Sctvarlabel70: TSctvarlabel
          Left = 33
          Top = 18
          Width = 245
          Height = 17
          Variable = adodslaboratorionm_bairroVar
        end
        object Sctvarlabel73: TSctvarlabel
          Left = 1
          Top = 34
          Width = 71
          Height = 17
          Caption = 'Complemento:'
        end
        object Sctvarlabel74: TSctvarlabel
          Left = 71
          Top = 34
          Width = 230
          Height = 17
          Variable = adodslaboratoriods_complementoVar
        end
        object Sctvarlabel75: TSctvarlabel
          Left = 1
          Top = 66
          Width = 28
          Height = 17
          Caption = 'CEP:'
        end
        object Sctvarlabel76: TSctvarlabel
          Left = 29
          Top = 66
          Width = 67
          Height = 17
          Variable = adodslaboratorionr_cepVar
          DataFormat.DisplayFormat = '##.###-###;0; '
        end
        object Sctvarlabel77: TSctvarlabel
          Left = 1
          Top = 50
          Width = 40
          Height = 17
          Caption = 'Cidade:'
        end
        object Sctvarlabel78: TSctvarlabel
          Left = 40
          Top = 50
          Width = 254
          Height = 17
          Variable = adodslaboratoriodp_cidadeVar
        end
        object Sctvarlabel79: TSctvarlabel
          Left = 574
          Top = 66
          Width = 52
          Height = 17
          AlignHorizontal = laRight
          Caption = 'Telefone:'
        end
        object Sctvarlabel80: TSctvarlabel
          Left = 627
          Top = 66
          Width = 98
          Height = 17
          Variable = adodslaboratorionr_telefoneVar
          DataFormat.DisplayFormat = '(##) ####-#####;0; '
          DataFormat.SuppressNulls = True
        end
        object Sctvarlabel87: TSctvarlabel
          Left = 574
          Top = 82
          Width = 52
          Height = 17
          AlignHorizontal = laRight
          Caption = 'Celular:'
        end
        object Sctvarlabel88: TSctvarlabel
          Left = 627
          Top = 82
          Width = 98
          Height = 17
          Variable = adodslaboratorionr_celularVar
          DataFormat.DisplayFormat = '(##) #####-#####;0; '
          DataFormat.SuppressNulls = True
        end
        object Sctvarlabel90: TSctvarlabel
          Left = 1
          Top = 82
          Width = 35
          Height = 17
          Caption = 'E-Mail:'
        end
        object Sctvarlabel91: TSctvarlabel
          Left = 35
          Top = 82
          Width = 381
          Height = 17
          Variable = adodslaboratoriods_emailVar
        end
        object Sctvarlabel58: TSctvarlabel
          Left = 445
          Top = 2
          Width = 61
          Height = 17
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          AlignHorizontal = laRight
          Caption = 'Contatos:'
        end
        object Sctvarlabel60: TSctvarlabel
          Left = 454
          Top = 18
          Width = 52
          Height = 17
          AlignHorizontal = laRight
          Caption = 'Comercial:'
        end
        object Sctvarlabel66: TSctvarlabel
          Left = 508
          Top = 18
          Width = 226
          Height = 17
          Variable = adodslaboratorionm_comercialVar
          DataFormat.SuppressNulls = True
        end
        object Sctvarlabel59: TSctvarlabel
          Left = 508
          Top = 34
          Width = 226
          Height = 17
          Variable = adodslaboratorionm_financeiroVar
          DataFormat.SuppressNulls = True
        end
        object Sctvarlabel81: TSctvarlabel
          Left = 450
          Top = 34
          Width = 56
          Height = 17
          AlignHorizontal = laRight
          Caption = 'Financeiro:'
        end
        object Sctvarlabel109: TSctvarlabel
          Left = 1
          Top = 98
          Width = 83
          Height = 17
          WrapText = True
          Stretch = True
          Caption = 'Observa'#231#245'es:'
        end
      end
    end
  end
  object DsOrcamento: TDataSource
    DataSet = ADODsOrcamento
  end
  object ADODsOrcamento: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterOpen = ADODsOrcamentoAfterOpen
    OnCalcFields = ADODsOrcamentoCalcFields
    CommandText = 'select'#13#10'  O.Nr_Orcamento, O.Dt_Emissao, O.St_Orcamento, O.Cd_Funcionario, F.Nm_Funcionario,'#13#10'  O.Nr_Endereco, O.Nm_Contato, O.Nr_Pedido_Emitente, O.Mm_Observacao,'#13#10'  O.Vl_Pedido_Frete, O.Vl_Pedido, O.Pr_Desconto, O.Vl_Desconto, O.Pr_Custo,'#13#10'  O.Vl_Custo, O.Vl_IPI'#13#10#13#10'  O.Cd_Emitente, E.Nm_Emitente, E.Nr_Documento, E.Nr_EndCobranca,'#13#10'  E.Nr_Insc_Estadual, E.Ds_EMail, E.Fl_Exportador, E.Fl_Contribuinte'#13#10#13#10'from'#13#10'  Orcamento O'#13#10#13#10'inner join'#13#10'  Funcionario F'#13#10'on'#13#10'  F.Cd_Funcionario = O.Cd_Funcionario'#13#10'  '#13#10'left join'#13#10'  Emitente E'#13#10'on'#13#10'  E.Cd_Emitente = O.Cd_Emitente'#13#10#13#10'where'#13#10'  O.Cd_Filial     = :Cd_Filial and'#13#10'  O.Nr_Orcamento  = :Nr_Orcamento'#13#10
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
    SQLOther0.Strings = (
      'select'
      '  O.Nr_Orcamento, O.Dt_Emissao, O.St_Orcamento, O.Cd_Funcionario, F.Nm_Funcionario,'
      '  O.Nr_Endereco, O.Nm_Contato, O.Nr_Pedido_Emitente, O.Mm_Observacao,'
      '  O.Vl_Pedido_Frete, O.Vl_Pedido, O.Pr_Desconto, O.Vl_Desconto, O.Pr_Custo,'
      '  O.Vl_Custo, O.Vl_IPI,'
      ''
      '  O.Cd_Emitente, E.Nm_Emitente, E.Nr_Documento, E.Nr_EndCobranca,'
      '  E.Nr_Insc_Estadual, E.Ds_EMail, E.Fl_Exportador, E.Fl_Contribuinte'
      ''
      'from'
      '  Orcamento O'
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
      'where'
      '  O.Cd_Filial     = :Cd_Filial and'
      '  O.Nr_Orcamento  = :Nr_Orcamento'
    )
    Left = 30
    object ADODsOrcamentonr_orcamento: TIntegerField
      FieldName = 'nr_orcamento'
    end
    object ADODsOrcamentodt_emissao: TDateTimeField
      FieldName = 'dt_emissao'
    end
    object ADODsOrcamentost_orcamento: TStringField
      FieldName = 'st_orcamento'
      FixedChar = True
      Size = 1
    end
    object ADODsOrcamentocd_funcionario: TSmallintField
      FieldName = 'cd_funcionario'
    end
    object ADODsOrcamentonm_funcionario: TStringField
      FieldName = 'nm_funcionario'
      Size = 50
    end
    object ADODsOrcamentonr_endereco: TSmallintField
      FieldName = 'nr_endereco'
    end
    object ADODsOrcamentonm_contato: TStringField
      FieldName = 'nm_contato'
      Size = 50
    end
    object ADODsOrcamentonr_pedido_emitente: TStringField
      FieldName = 'nr_pedido_emitente'
      Size = 30
    end
    object ADODsOrcamentomm_observacao: TMemoField
      FieldName = 'mm_observacao'
      BlobType = ftMemo
    end
    object ADODsOrcamentovl_pedido_frete: TBCDField
      FieldName = 'vl_pedido_frete'
      Precision = 12
      Size = 2
    end
    object ADODsOrcamentovl_pedido: TBCDField
      FieldName = 'vl_pedido'
      Precision = 12
      Size = 2
    end
    object ADODsOrcamentopr_desconto: TBCDField
      FieldName = 'pr_desconto'
      Precision = 7
      Size = 2
    end
    object ADODsOrcamentovl_desconto: TBCDField
      FieldName = 'vl_desconto'
      Precision = 12
      Size = 2
    end
    object ADODsOrcamentopr_custo: TBCDField
      FieldName = 'pr_custo'
      Precision = 7
      Size = 2
    end
    object ADODsOrcamentovl_custo: TBCDField
      FieldName = 'vl_custo'
      Precision = 12
      Size = 2
    end
    object ADODsOrcamentocd_emitente: TIntegerField
      FieldName = 'cd_emitente'
    end
    object ADODsOrcamentonm_emitente: TStringField
      FieldName = 'nm_emitente'
      Size = 50
    end
    object ADODsOrcamentonr_documento: TStringField
      FieldName = 'nr_documento'
      Size = 14
    end
    object ADODsOrcamentonr_endcobranca: TSmallintField
      FieldName = 'nr_endcobranca'
    end
    object ADODsOrcamentonr_insc_estadual: TStringField
      FieldName = 'nr_insc_estadual'
      Size = 18
    end
    object ADODsOrcamentoDp_Situacao: TStringField
      FieldKind = fkCalculated
      FieldName = 'Dp_Situacao'
      Calculated = True
    end
    object ADODsOrcamentods_email: TStringField
      FieldName = 'ds_email'
      Size = 100
    end
    object ADODsOrcamentofl_exportador: TStringField
      FieldName = 'fl_exportador'
      FixedChar = True
      Size = 1
    end
    object ADODsOrcamentofl_contribuinte: TStringField
      FieldName = 'fl_contribuinte'
      FixedChar = True
      Size = 1
    end
    object ADODsOrcamentovl_ipi: TBCDField
      FieldName = 'vl_ipi'
      Precision = 12
      Size = 2
    end
    object ADODsOrcamentoVl_Total: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Vl_Total'
      Calculated = True
    end
  end
  object DsEndereco: TDataSource
    DataSet = ADODsEndereco
    Left = 130
  end
  object ADODsEndereco: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  EE.Cd_Emitente, EE.Nr_Endereco, EE.Ds_Titulo, EE.Ds_Endereco, EE.Nm_Bairro,'#13#10'  EE.Ds_Complemento, EE.Nr_CEP, EE.Cd_Cidade,'#13#10'  C.Nm_Cidade + '''' - '''' + C.Sg_Estado as Dp_Cidade,'#13#10'  EE.Nr_Telefone_1, EE.Nr_Telefone_2, EE.Nr_Telefone_3, EE.Nr_FAX, EE.Nr_Celular_1,'#13#10'  EE.Nr_Celular_2, EE.Mm_Observacao, C.Sg_Estado, EE.Ds_Numero'#13#10#13#10'from'#13#10'  Emitente_Endereco EE'#13#10#13#10'inner join'#13#10'  Cidade C'#13#10'on'#13#10'  C.Cd_Cidade = EE.Cd_Cidade'#13#10#13#10'where'#13#10'  EE.Cd_Emitente = :Cd_Emitente and'#13#10'  EE.Nr_Endereco = :Nr_Endereco'
    Parameters = <
      item
        Name = 'Cd_Emitente'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = nil?
      end
      item
        Name = 'Nr_Endereco'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = nil?
      end>
    Left = 160
    object ADODsEnderecocd_emitente: TIntegerField
      FieldName = 'cd_emitente'
    end
    object ADODsEndereconr_endereco: TSmallintField
      FieldName = 'nr_endereco'
    end
    object ADODsEnderecods_titulo: TStringField
      FieldName = 'ds_titulo'
      Size = 50
    end
    object ADODsEnderecods_endereco: TStringField
      FieldName = 'ds_endereco'
      Size = 50
    end
    object ADODsEndereconm_bairro: TStringField
      FieldName = 'nm_bairro'
      Size = 30
    end
    object ADODsEnderecods_complemento: TStringField
      FieldName = 'ds_complemento'
      Size = 30
    end
    object ADODsEndereconr_cep: TStringField
      FieldName = 'nr_cep'
      FixedChar = True
      Size = 8
    end
    object ADODsEnderecocd_cidade: TIntegerField
      FieldName = 'cd_cidade'
    end
    object ADODsEnderecodp_cidade: TStringField
      FieldName = 'dp_cidade'
      Size = 8190
    end
    object ADODsEndereconr_telefone_1: TStringField
      FieldName = 'nr_telefone_1'
      Size = 10
    end
    object ADODsEndereconr_telefone_2: TStringField
      FieldName = 'nr_telefone_2'
      Size = 10
    end
    object ADODsEndereconr_telefone_3: TStringField
      FieldName = 'nr_telefone_3'
      Size = 10
    end
    object ADODsEndereconr_fax: TStringField
      FieldName = 'nr_fax'
      Size = 10
    end
    object ADODsEndereconr_celular_1: TStringField
      FieldName = 'nr_celular_1'
      Size = 11
    end
    object ADODsEndereconr_celular_2: TStringField
      FieldName = 'nr_celular_2'
      Size = 11
    end
    object ADODsEnderecomm_observacao: TMemoField
      FieldName = 'mm_observacao'
      BlobType = ftMemo
    end
    object ADODsEnderecosg_estado: TStringField
      FieldName = 'sg_estado'
      FixedChar = True
      Size = 2
    end
    object ADODsEnderecoDs_Numero: TStringField
      FieldName = 'Ds_Numero'
      Size = 10
    end
  end
  object DsLaboratorio: TDataSource
    DataSet = ADODsLaboratorio
    Left = 290
  end
  object ADODsLaboratorio: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  L.Cd_Laboratorio, L.Nm_Laboratorio, L.Nr_Documento,'#13#10'  L.Ds_Endereco, L.Nm_Bairro, L.Ds_Complemento, L.Cd_Cidade, L.Nr_Cep,'#13#10'  L.Nr_Telefone, L.Nr_Celular, L.Ds_Email, L.Mm_Observacao, '#13#10'  C.Nm_Cidade + '''' - '''' + C.Sg_Estado as Dp_Cidade,'#13#10'  L.Nr_InscEstadual, L.Nm_Comercial, L.Nm_Financeiro, EL.Id_Laboratorio'#13#10#13#10'from'#13#10'  Laboratorio L'#13#10#13#10'inner join'#13#10'  Cidade C'#13#10'on'#13#10'  C.Cd_Cidade = L.Cd_Cidade'#13#10#13#10'left join'#13#10'  Emitente_Laboratorio EL'#13#10'on'#13#10'  EL.Cd_Emitente  = :Cd_Emitente and'#13#10'  EL.Cd_Laboratorio = L.Cd_Laboratorio'#13#10#13#10'where'#13#10'  L.Cd_Laboratorio = :Cd_Laboratorio'
    Parameters = <
      item
        Name = 'Cd_Emitente'
        DataType = ftInteger
        Size = -1
        Value = nil?
      end
      item
        Name = 'Cd_Laboratorio'
        DataType = ftSmallint
        Size = -1
        Value = nil?
      end>
    Left = 320
    object ADODsLaboratoriocd_laboratorio: TSmallintField
      FieldName = 'cd_laboratorio'
    end
    object ADODsLaboratorionm_laboratorio: TStringField
      FieldName = 'nm_laboratorio'
      Size = 50
    end
    object ADODsLaboratorionr_documento: TStringField
      FieldName = 'nr_documento'
      Size = 14
    end
    object ADODsLaboratoriods_endereco: TStringField
      FieldName = 'ds_endereco'
      Size = 50
    end
    object ADODsLaboratorionm_bairro: TStringField
      FieldName = 'nm_bairro'
      Size = 30
    end
    object ADODsLaboratoriods_complemento: TStringField
      FieldName = 'ds_complemento'
      Size = 30
    end
    object ADODsLaboratoriocd_cidade: TIntegerField
      FieldName = 'cd_cidade'
    end
    object ADODsLaboratorionr_cep: TStringField
      FieldName = 'nr_cep'
      FixedChar = True
      Size = 8
    end
    object ADODsLaboratorionr_telefone: TStringField
      FieldName = 'nr_telefone'
      FixedChar = True
      Size = 10
    end
    object ADODsLaboratorionr_celular: TStringField
      FieldName = 'nr_celular'
      FixedChar = True
      Size = 11
    end
    object ADODsLaboratoriods_email: TStringField
      FieldName = 'ds_email'
      Size = 100
    end
    object ADODsLaboratoriomm_observacao: TMemoField
      FieldName = 'mm_observacao'
      BlobType = ftMemo
    end
    object ADODsLaboratoriodp_cidade: TStringField
      FieldName = 'dp_cidade'
      Size = 8190
    end
    object ADODsLaboratorionr_inscestadual: TStringField
      FieldName = 'nr_inscestadual'
      Size = 18
    end
    object ADODsLaboratorionm_comercial: TStringField
      FieldName = 'nm_comercial'
      Size = 50
    end
    object ADODsLaboratorionm_financeiro: TStringField
      FieldName = 'nm_financeiro'
      Size = 50
    end
    object ADODsLaboratorioid_laboratorio: TStringField
      FieldName = 'id_laboratorio'
    end
  end
  object DsTransportador: TDataSource
    DataSet = ADODsTransportador
    Left = 355
  end
  object ADODsTransportador: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  T.Cd_Transportador, T.Nm_Transportador, T.Nr_Documento,'#13#10'  T.Ds_Endereco, T.Nm_Bairro, T.Ds_Complemento, T.Cd_Cidade, T.Nr_Cep,'#13#10'  T.Nr_Telefone, T.Nr_Celular, T.Ds_Email, T.Mm_Observacao, T.Nr_Capacidade,'#13#10'  C.Nm_Cidade + '''' - '''' + C.Sg_Estado as Dp_Cidade,'#13#10'  T.Nr_Placa, T.Nr_InscEstadual '#13#10#13#10'from'#13#10'  Transportador T'#13#10#13#10'inner join'#13#10'  Cidade C'#13#10'on'#13#10'  C.Cd_Cidade = T.Cd_Cidade'#13#10#13#10'where'#13#10'  T.Cd_Transportador = :Cd_Transportador'
    Parameters = <
      item
        Name = 'Cd_Transportador'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = nil?
      end>
    Left = 385
    object ADODsTransportadorcd_transportador: TSmallintField
      FieldName = 'cd_transportador'
    end
    object ADODsTransportadornm_transportador: TStringField
      FieldName = 'nm_transportador'
      Size = 50
    end
    object ADODsTransportadornr_documento: TStringField
      FieldName = 'nr_documento'
      Size = 14
    end
    object ADODsTransportadords_endereco: TStringField
      FieldName = 'ds_endereco'
      Size = 50
    end
    object ADODsTransportadornm_bairro: TStringField
      FieldName = 'nm_bairro'
      Size = 30
    end
    object ADODsTransportadords_complemento: TStringField
      FieldName = 'ds_complemento'
      Size = 30
    end
    object ADODsTransportadorcd_cidade: TIntegerField
      FieldName = 'cd_cidade'
    end
    object ADODsTransportadornr_cep: TStringField
      FieldName = 'nr_cep'
      FixedChar = True
      Size = 8
    end
    object ADODsTransportadornr_telefone: TStringField
      FieldName = 'nr_telefone'
      FixedChar = True
      Size = 10
    end
    object ADODsTransportadornr_celular: TStringField
      FieldName = 'nr_celular'
      FixedChar = True
      Size = 11
    end
    object ADODsTransportadords_email: TStringField
      FieldName = 'ds_email'
      Size = 50
    end
    object ADODsTransportadormm_observacao: TMemoField
      FieldName = 'mm_observacao'
      BlobType = ftMemo
    end
    object ADODsTransportadornr_capacidade: TBCDField
      FieldName = 'nr_capacidade'
      Precision = 12
      Size = 3
    end
    object ADODsTransportadordp_cidade: TStringField
      FieldName = 'dp_cidade'
      Size = 8190
    end
    object ADODsTransportadornr_placa: TStringField
      FieldName = 'nr_placa'
      FixedChar = True
      Size = 7
    end
    object ADODsTransportadornr_inscestadual: TStringField
      FieldName = 'nr_inscestadual'
      Size = 18
    end
  end
  object DsItem: TDataSource
    DataSet = ADODsItem
    Left = 65
    Top = 1
  end
  object ADODsItem: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterScroll = ADODsItemAfterScroll
    OnCalcFields = ADODsItemCalcFields
    CommandText = 'select'#13#10'  OI.Nr_Item, OI.Cd_Produto, P.Nm_Produto, OI.Nm_Produto as Dp_Produto,'#13#10'  LB.Nm_Laboratorio, OP.Ds_Condicao, LB.Cd_Laboratorio, OP.Tp_Frete,'#13#10'  OP.Cd_Transportador, OP.Mm_Observacao, P.Cd_Fabricante,'#13#10'  OI.Sg_Unidade, OI.Vl_Unitario, OI.Pr_Margem, P.Pr_IPI,'#13#10'  OI.Qt_Item, OI.Vl_Unitario * OI.Qt_Item as Vl_Total,'#13#10#13#10'  case'#13#10'    when ''''1'''' = ''''2'''' then 17  -- Venda fora do Estado/Exportador'#13#10'    else'#13#10'      case'#13#10'        when ''''1'''' = ''''1'''' then'#13#10'          case'#13#10'            when T.Pr_Contrib > 0 then T.Pr_Contrib'#13#10'            else 17'#13#10'          end'#13#10'        else'#13#10'          case'#13#10'            when T.Pr_NaoContrib > 0 then T.Pr_NaoContrib'#13#10'            else 17'#13#10'          end'#13#10'      end'#13#10'  end as Pr_ICMS, OI.Cd_Filial, OI.Nr_Orcamento'#13#10#13#10'from'#13#10'  Orcamento_Item OI'#13#10#13#10'inner join'#13#10'  Produto P'#13#10'on'#13#10'  P.Cd_Produto = OI.Cd_Produto /* join Lab */'#13#10#13#10'inner join'#13#10'  Localizacao L'#13#10'on'#13#10'  L.Cd_Localizacao = P.Cd_Localizacao'#13#10#13#10'inner join'#13#10'  Tributacao T'#13#10'on'#13#10'  T.Cd_Tributacao = P.Cd_Tributacao'#13#10#13#10'left join'#13#10'  Orcamento_Pagamento OP'#13#10'on'#13#10'  OP.Cd_Filial      = OI.Cd_Filial and'#13#10'  OP.Nr_Orcamento   = OI.Nr_Orcamento and'#13#10'  OP.Cd_Laboratorio = P.Cd_Laboratorio'#13#10#13#10'left join'#13#10'  Laboratorio LB'#13#10'on'#13#10'  LB.Cd_Laboratorio = P.Cd_Laboratorio'#13#10#13#10'where'#13#10'  OI.Cd_Filial     = 1 and'#13#10'  OI.Nr_Orcamento  = 231 and'#13#10'  OI.Fl_Confirmado = ''''1'''#13#10#13#10'order by'#13#10'  LB.Nm_Laboratorio, OI.Nr_Item'#13#10
    Parameters = <>
    SQLOther0.Strings = (
      'select'
      '  OI.Nr_Item, OI.Cd_Produto, P.Nm_Produto, OI.Nm_Produto as Dp_Produto,'
      '  LB.Nm_Laboratorio, OP.Ds_Condicao, LB.Cd_Laboratorio, OP.Tp_Frete,'
      '  OP.Cd_Transportador, OP.Mm_Observacao, P.Cd_Fabricante,'
      '  OI.Sg_Unidade, OI.Vl_Unitario, OI.Pr_Margem, P.Pr_IPI,'
      '  OI.Qt_Item, OI.Vl_Unitario * OI.Qt_Item as Vl_Total,'
      ''
      '  case'
      '    when @Fl_Estado = ''''2'''' then @Pr_ICMS  -- Venda fora do Estado/Exportador'
      '    else'
      '      case'
      '        when @Fl_Contribuinte = ''''1'''' then'
      '          case'
      '            when T.Pr_Contrib > 0 then T.Pr_Contrib'
      '            else @Pr_ICMS'
      '          end'
      '        else'
      '          case'
      '            when T.Pr_NaoContrib > 0 then T.Pr_NaoContrib'
      '            else @Pr_ICMS'
      '          end'
      '      end'
      '  end as Pr_ICMS, OI.Cd_Filial, OI.Nr_Orcamento'
      ''
      'from'
      '  Orcamento_Item OI'
      ''
      'inner join'
      '  Produto P'
      'on'
      '  P.Cd_Produto = OI.Cd_Produto /* join Lab */'
      ''
      'inner join'
      '  Localizacao L'
      'on'
      '  L.Cd_Localizacao = P.Cd_Localizacao'
      ''
      'inner join'
      '  Tributacao T'
      'on'
      '  T.Cd_Tributacao = P.Cd_Tributacao'
      ''
      'left join'
      '  Orcamento_Pagamento OP'
      'on'
      '  OP.Cd_Filial      = OI.Cd_Filial and'
      '  OP.Nr_Orcamento   = OI.Nr_Orcamento and'
      '  OP.Cd_Laboratorio = P.Cd_Laboratorio'
      ''
      'left join'
      '  Laboratorio LB'
      'on'
      '  LB.Cd_Laboratorio = P.Cd_Laboratorio'
      ''
      'where'
      '  OI.Cd_Filial     = @Cd_Filial and'
      '  OI.Nr_Orcamento  = @Nr_Orcamento and'
      '  OI.Fl_Confirmado = ''''1'''
      ''
      'order by'
      '  LB.Nm_Laboratorio, OI.Nr_Item'
    )
    SQLOther1.Strings = (
      'select'
      '  OI.Nr_Item, OI.Cd_Produto, P.Nm_Produto, OI.Nm_Produto as Dp_Produto,'
      '  LB.Nm_Laboratorio, OP.Ds_Condicao, LB.Cd_Laboratorio, OP.Tp_Frete,'
      '  OP.Cd_Transportador, OP.Mm_Observacao, P.Cd_Fabricante,'
      '  OI.Sg_Unidade, OI.Vl_Unitario, OI.Pr_Margem, P.Pr_IPI,'
      '  OI.Qt_Item, OI.Vl_Unitario * OI.Qt_Item as Vl_Total,'
      ''
      '  case'
      '    when ''''1'''' = ''''2'''' then 17  -- Venda fora do Estado/Exportador'
      '    else'
      '      case'
      '        when ''''1'''' = ''''1'''' then'
      '          case'
      '            when T.Pr_Contrib > 0 then T.Pr_Contrib'
      '            else 17'
      '          end'
      '        else'
      '          case'
      '            when T.Pr_NaoContrib > 0 then T.Pr_NaoContrib'
      '            else 17'
      '          end'
      '      end'
      '  end as Pr_ICMS, OI.Cd_Filial, OI.Nr_Orcamento'
      ''
      'from'
      '  Orcamento_Item OI'
      ''
      'inner join'
      '  Produto P'
      'on'
      '  P.Cd_Produto = OI.Cd_Produto /* join Lab */'
      ''
      'inner join'
      '  Localizacao L'
      'on'
      '  L.Cd_Localizacao = P.Cd_Localizacao'
      ''
      'inner join'
      '  Tributacao T'
      'on'
      '  T.Cd_Tributacao = P.Cd_Tributacao'
      ''
      'left join'
      '  Orcamento_Pagamento OP'
      'on'
      '  OP.Cd_Filial      = OI.Cd_Filial and'
      '  OP.Nr_Orcamento   = OI.Nr_Orcamento and'
      '  OP.Cd_Laboratorio = P.Cd_Laboratorio'
      ''
      'left join'
      '  Laboratorio LB'
      'on'
      '  LB.Cd_Laboratorio = P.Cd_Laboratorio'
      ''
      'where'
      '  OI.Cd_Filial     = 1 and'
      '  OI.Nr_Orcamento  = 231 and'
      '  OI.Fl_Confirmado = ''''1'''';'
      ''
      'order by'
      '  LB.Nm_Laboratorio, OI.Nr_Item'
    )
    Left = 95
    object ADODsItemcd_filial: TSmallintField
      FieldName = 'cd_filial'
    end
    object ADODsItemnr_orcamento: TIntegerField
      FieldName = 'nr_orcamento'
    end
    object ADODsItemnr_item: TSmallintField
      FieldName = 'nr_item'
    end
    object ADODsItemcd_produto: TIntegerField
      FieldName = 'cd_produto'
    end
    object ADODsItemnm_produto: TStringField
      FieldName = 'nm_produto'
      Size = 120
    end
    object ADODsItemdp_produto: TStringField
      FieldName = 'dp_produto'
      Size = 120
    end
    object ADODsItemnm_laboratorio: TStringField
      FieldName = 'nm_laboratorio'
      Size = 50
    end
    object ADODsItemds_condicao: TStringField
      FieldName = 'ds_condicao'
      Size = 50
    end
    object ADODsItemcd_laboratorio: TSmallintField
      FieldName = 'cd_laboratorio'
    end
    object ADODsItemtp_frete: TStringField
      FieldName = 'tp_frete'
      FixedChar = True
      Size = 1
    end
    object ADODsItemcd_transportador: TSmallintField
      FieldName = 'cd_transportador'
    end
    object ADODsItemmm_observacao: TMemoField
      FieldName = 'mm_observacao'
      BlobType = ftMemo
    end
    object ADODsItemcd_fabricante: TStringField
      FieldName = 'cd_fabricante'
    end
    object ADODsItemsg_unidade: TStringField
      FieldName = 'sg_unidade'
      FixedChar = True
      Size = 2
    end
    object ADODsItemvl_unitario: TBCDField
      FieldName = 'vl_unitario'
      Precision = 12
      Size = 3
    end
    object ADODsItempr_margem: TBCDField
      FieldName = 'pr_margem'
      Precision = 9
      Size = 2
    end
    object ADODsItempr_ipi: TBCDField
      FieldName = 'pr_ipi'
      Precision = 9
      Size = 2
    end
    object ADODsItemqt_item: TBCDField
      FieldName = 'qt_item'
      Precision = 12
      Size = 3
    end
    object ADODsItemvl_total: TBCDField
      FieldName = 'vl_total'
      Precision = 24
      Size = 12
    end
    object ADODsItempr_icms: TBCDField
      FieldName = 'pr_icms'
      Precision = 10
      Size = 5
    end
    object ADODsItemVl_IPI: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Vl_IPI'
      Calculated = True
    end
  end
  object ADODsEndEntrega: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  EE.Cd_Emitente, EE.Nr_Endereco, EE.Ds_Titulo, EE.Ds_Endereco, EE.Nm_Bairro,'#13#10'  EE.Ds_Complemento, EE.Nr_CEP, EE.Cd_Cidade,'#13#10'  C.Nm_Cidade + '''' - '''' + C.Sg_Estado as Dp_Cidade,'#13#10'  EE.Nr_Telefone_1, EE.Nr_Telefone_2, EE.Nr_Telefone_3, EE.Nr_FAX, EE.Nr_Celular_1,'#13#10'  EE.Nr_Celular_2, EE.Mm_Observacao, C.Sg_Estado, EE.Ds_Numero'#13#10#13#10'from'#13#10'  Emitente_Endereco EE'#13#10#13#10'inner join'#13#10'  Cidade C'#13#10'on'#13#10'  C.Cd_Cidade = EE.Cd_Cidade'#13#10#13#10'where'#13#10'  EE.Cd_Emitente = :Cd_Emitente and'#13#10'  EE.Nr_Endereco = :Nr_Endereco'
    Parameters = <
      item
        Name = 'Cd_Emitente'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = nil?
      end
      item
        Name = 'Nr_Endereco'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = nil?
      end>
    Left = 220
    object ADODsEndEntregacd_emitente: TIntegerField
      FieldName = 'cd_emitente'
    end
    object ADODsEndEntreganr_endereco: TSmallintField
      FieldName = 'nr_endereco'
    end
    object ADODsEndEntregads_titulo: TStringField
      FieldName = 'ds_titulo'
      Size = 50
    end
    object ADODsEndEntregads_endereco: TStringField
      FieldName = 'ds_endereco'
      Size = 50
    end
    object ADODsEndEntreganm_bairro: TStringField
      FieldName = 'nm_bairro'
      Size = 30
    end
    object ADODsEndEntregads_complemento: TStringField
      FieldName = 'ds_complemento'
      Size = 30
    end
    object ADODsEndEntreganr_cep: TStringField
      FieldName = 'nr_cep'
      FixedChar = True
      Size = 8
    end
    object ADODsEndEntregacd_cidade: TIntegerField
      FieldName = 'cd_cidade'
    end
    object ADODsEndEntregadp_cidade: TStringField
      FieldName = 'dp_cidade'
      Size = 8190
    end
    object ADODsEndEntreganr_telefone_1: TStringField
      FieldName = 'nr_telefone_1'
      Size = 10
    end
    object ADODsEndEntreganr_telefone_2: TStringField
      FieldName = 'nr_telefone_2'
      Size = 10
    end
    object ADODsEndEntreganr_telefone_3: TStringField
      FieldName = 'nr_telefone_3'
      Size = 10
    end
    object ADODsEndEntreganr_fax: TStringField
      FieldName = 'nr_fax'
      Size = 10
    end
    object ADODsEndEntreganr_celular_1: TStringField
      FieldName = 'nr_celular_1'
      Size = 11
    end
    object ADODsEndEntreganr_celular_2: TStringField
      FieldName = 'nr_celular_2'
      Size = 11
    end
    object ADODsEndEntregamm_observacao: TMemoField
      FieldName = 'mm_observacao'
      BlobType = ftMemo
    end
    object ADODsEndEntregasg_estado: TStringField
      FieldName = 'sg_estado'
      FixedChar = True
      Size = 2
    end
    object ADODsEndEntregaDs_Numero: TStringField
      FieldName = 'Ds_Numero'
      Size = 10
    end
  end
  object DsEndEntrega: TDataSource
    DataSet = ADODsEndEntrega
    Left = 190
  end
end
