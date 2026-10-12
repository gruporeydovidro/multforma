object FrmMain: TFrmMain
  Left = 265
  Top = 279
  Caption = 'Multforma SG-Vidros - Sistema de Gest'#227'o Empresarial'
  ClientHeight = 766
  ClientWidth = 1264
  Color = 8420352
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIForm
  Menu = MainMenMaster
  OldCreateOrder = False
  Position = poDefault
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object ImgFundo_02: TImage
    Left = 60
    Top = 266
    Width = 50
    Height = 50
    Picture.Data = {binary 178521 bytes}
    Visible = False
  end
  object ImgFundo_01: TImage
    Left = 3
    Top = 266
    Width = 50
    Height = 50
    Picture.Data = {binary 95908 bytes}
    Visible = False
  end
  object PnlFooter: TPanel
    Left = 0
    Top = 740
    Width = 1264
    Height = 26
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    object PnlUsuario: TPanel
      Left = 1159
      Top = 0
      Width = 105
      Height = 26
      Align = alRight
      BevelInner = bvLowered
      Caption = '<<< Usu'#225'rio >>>'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
      OnDblClick = ItemMenUsuarioChangeClick
    end
    object PnlButtons: TPanel
      Left = 0
      Top = 0
      Width = 895
      Height = 26
      Align = alClient
      Alignment = taRightJustify
      BevelInner = bvLowered
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 1
      OnDblClick = PnlButtonsDblClick
      object SbConfPrinter: TSpeedButton
        Left = 3
        Top = 2
        Width = 23
        Height = 22
        Hint = 'Configurar Impressora'
        Flat = True
        Glyph.Data = {binary 826 bytes}
        ParentShowHint = False
        ShowHint = True
        OnClick = SbConfPrinterClick
      end
      object SbCalculadora: TSpeedButton
        Left = 26
        Top = 2
        Width = 23
        Height = 22
        Hint = 'Calculadora'
        Flat = True
        Glyph.Data = {binary 378 bytes}
        NumGlyphs = 2
        ParentShowHint = False
        ShowHint = True
        OnClick = SbCalculadoraClick
      end
      object SbNotePad: TSpeedButton
        Left = 49
        Top = 2
        Width = 23
        Height = 22
        Hint = 'Bloco de Notas'
        Flat = True
        Glyph.Data = {binary 826 bytes}
        ParentShowHint = False
        ShowHint = True
        OnClick = SbNotePadClick
      end
      object SbChangePass: TSpeedButton
        Left = 94
        Top = 2
        Width = 23
        Height = 22
        Hint = 'Alterar Senha'
        Flat = True
        Glyph.Data = {binary 922 bytes}
        ParentShowHint = False
        ShowHint = True
        OnClick = ItemMenChangePassClick
      end
      object SbAbout: TSpeedButton
        Left = 117
        Top = 2
        Width = 23
        Height = 22
        Hint = 'Sobre o sistema'
        Flat = True
        Glyph.Data = {binary 1258 bytes}
        ParentShowHint = False
        ShowHint = True
        OnClick = ItemMenAboutClick
      end
      object SbEmitente: TSpeedButton
        Left = 179
        Top = 2
        Width = 23
        Height = 22
        Hint = 'Emitente'
        Flat = True
        Glyph.Data = {binary 898 bytes}
        ParentShowHint = False
        ShowHint = True
        OnClick = ItemMenEmitenteClick
      end
      object SbOrcamento: TSpeedButton
        Left = 202
        Top = 2
        Width = 23
        Height = 22
        Hint = 'Or'#231'amento'
        Flat = True
        Glyph.Data = {binary 826 bytes}
        ParentShowHint = False
        ShowHint = True
        OnClick = SbOrcamentoClick
      end
      object SbCarga: TSpeedButton
        Left = 225
        Top = 2
        Width = 23
        Height = 22
        Hint = 'Montagem de Carga'
        Flat = True
        Glyph.Data = {binary 1082 bytes}
        ParentShowHint = False
        ShowHint = True
        OnClick = ItemMenCargaClick
      end
      object SbEstoque: TSpeedButton
        Left = 270
        Top = 2
        Width = 23
        Height = 22
        Hint = 'Saldo de Estoque'
        Flat = True
        Glyph.Data = {binary 946 bytes}
        ParentShowHint = False
        ShowHint = True
        OnClick = ItemMenEstoqueFindClick
      end
      object SbContatos: TSpeedButton
        Left = 293
        Top = 2
        Width = 23
        Height = 22
        Hint = 'Ger'#234'nciar Contatos'
        Flat = True
        Glyph.Data = {binary 458 bytes}
        ParentShowHint = False
        ShowHint = True
        OnClick = ItemMenContatosGerenciarClick
      end
      object SbTA: TSpeedButton
        Left = 316
        Top = 2
        Width = 23
        Height = 22
        Hint = 'Tele-atendimento'
        Flat = True
        Glyph.Data = {binary 378 bytes}
        NumGlyphs = 2
        ParentShowHint = False
        ShowHint = True
        OnClick = ItemMenTAClick
      end
      object SbReceber: TSpeedButton
        Left = 363
        Top = 2
        Width = 23
        Height = 22
        Hint = 'Contas '#224' Receber'
        Flat = True
        Glyph.Data = {binary 1066 bytes}
        ParentShowHint = False
        ShowHint = True
        OnClick = ItemMenReceberClick
      end
      object SbPagar: TSpeedButton
        Left = 386
        Top = 2
        Width = 23
        Height = 22
        Hint = 'Contas '#224' Pagar'
        Flat = True
        Glyph.Data = {binary 1066 bytes}
        ParentShowHint = False
        ShowHint = True
        OnClick = ItemMenPagarClick
      end
      object SbBalcao: TSpeedButton
        Left = 489
        Top = 2
        Width = 23
        Height = 22
        Hint = 'Atendimento no Balc'#227'o'
        Flat = True
        Glyph.Data = {binary 826 bytes}
        ParentShowHint = False
        ShowHint = True
        Visible = False
      end
      object SbSuporteRemoto: TSpeedButton
        Left = 140
        Top = 2
        Width = 23
        Height = 22
        Hint = 'Suporte Remoto'
        Flat = True
        Glyph.Data = {binary 1338 bytes}
        ParentShowHint = False
        ShowHint = True
        OnClick = SbSuporteRemotoClick
      end
      object SbNFe: TSpeedButton
        Left = 445
        Top = 2
        Width = 23
        Height = 22
        Hint = 'Emiss'#227'o de NF-e'
        Flat = True
        Glyph.Data = {binary 1338 bytes}
        ParentShowHint = False
        ShowHint = True
        OnClick = ItemMenNFeClick
      end
      object SbPagarAlerta: TSpeedButton
        Left = 390
        Top = 2
        Width = 23
        Height = 22
        Hint = 'Alerta de Contas '#224' Pagar'
        Flat = True
        Glyph.Data = {binary 1594 bytes}
        NumGlyphs = 2
        ParentShowHint = False
        ShowHint = True
        OnClick = ItemMenPagarAlertaClick
      end
    end
    object PnlDate: TPanel
      Left = 895
      Top = 0
      Width = 84
      Height = 26
      Align = alRight
      BevelInner = bvLowered
      Caption = '09/10/2002'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 2
      OnDblClick = ItemMenDataSistemaClick
    end
    object PnlFilial: TPanel
      Left = 979
      Top = 0
      Width = 180
      Height = 26
      Align = alRight
      BevelInner = bvLowered
      Caption = '<<<-Filial->>>'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 3
      OnDblClick = ItemMenFilialChangeClick
    end
  end
  object ImgLstMenu: TImageList
    Left = 63
    Top = 325
    Bitmap = {binary 71974 bytes}
  end
  object ADOConMaster: TADOConnection
    ConnectionString = 'Provider=SQLOLEDB.1;Password=***REMOVIDO***;Persist Security Info=True;User ID=sa;Initial Catalog=SGVidros;Data Source=Desenv-SRV;Use Procedure for Prepare=1;Auto Translate=True;Packet Size=4096;Workstation ID=PIII700;Use Encryption for Data=False;Tag with column collation when possible=False'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    BeforeConnect = ADOConMasterBeforeConnect
    Left = 3
    Top = 325
  end
  object PopMenSysTray: TPopupMenu
    Left = 258
    Top = 325
    object Opes1: TMenuItem
      Caption = 'Op'#231#245'es...'
      ImageIndex = 1
    end
    object Sair1: TMenuItem
      Caption = 'Sair'
      ImageIndex = 6
    end
    object Sobre1: TMenuItem
      Caption = 'Sobre...'
      ImageIndex = 28
    end
  end
  object PrinterSetupDlg: TPrinterSetupDialog
    Left = 34
    Top = 325
  end
  object OpenPicDlg: TOpenPictureDialog
    Filter = 'Todas as Imagens (*.gif;*.jpg;*.jpeg;*.bmp;*.ico;*.emf;*.wmf)|*.gif;*.jpg;*.jpeg;*.bmp;*.ico;*.emf;*.wmf|CompuServe GIF Image (*.gif)|*.gif|Arquivo JPEG (*.jpg)|*.jpg|Arquivo JPEG (*.jpeg)|*.jpeg|Bitmaps (*.bmp)|*.bmp|Icones (*.ico)|*.ico|Enhanced Metafiles (*.emf)|*.emf|Metafiles (*.wmf)|*.wmf'
    Left = 288
    Top = 325
  end
  object SavePicDlg: TSavePictureDialog
    Filter = 'Todos os Arquivos (*.gif;*.jpg;*.jpeg;*.bmp;*.ico;*.emf;*.wmf)|*.gif;*.jpg;*.jpeg;*.bmp;*.ico;*.emf;*.wmf|CompuServe GIF Image (*.gif)|*.gif|Arquivo JPEG (*.jpg)|*.jpg|Arquivo JPEG (*.jpeg)|*.jpeg|Bitmaps (*.bmp)|*.bmp|Icones (*.ico)|*.ico|Enhanced Metafiles (*.emf)|*.emf|Metafiles (*.wmf)|*.wmf'
    Left = 316
    Top = 325
  end
  object AppEvtMy: TApplicationEvents
    OnException = AppEvtMyException
    OnMessage = AppEvtMyMessage
    OnShowHint = AppEvtMyShowHint
    Left = 126
    Top = 325
  end
  object OpenDlg: TOpenDialog
    Filter = 'Todos os Arquivos|*.*|Arquivo de NFe|*.rav'
    Left = 345
    Top = 325
  end
  object SaveDlg: TSaveDialog
    DefaultExt = 'TXT'
    Filter = 'Arquivo Texto (*.TXT)|*.TXT|Todos os Arquivos|*.*'
    Left = 375
    Top = 325
  end
  object ColorDlg: TColorDialog
    Left = 406
    Top = 325
  end
  object MainMenMaster: TMainMenu
    Images = ImgLstMenu
    Left = 95
    Top = 325
    object Arquivo1: TMenuItem
      Bitmap.Data = {binary 378 bytes}
      Caption = 'Arquivo'
      ImageIndex = 23
      object ItemMenViewImage: TMenuItem
        Caption = 'Visualizar Imagens'
        ImageIndex = 4
        OnClick = ItemMenViewImageClick
      end
      object ItemMenCEPFind: TMenuItem
        Caption = 'Consulta de CEP...'
        ImageIndex = 17
        OnClick = ItemMenCEPFindClick
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object ItemMenFilialChange: TMenuItem
        Caption = 'Alterar Filial de Trabalho'
        ImageIndex = 30
        OnClick = ItemMenFilialChangeClick
      end
      object ItemMenDataSistema: TMenuItem
        Caption = 'Alterar a Data do Sistema...'
        ImageIndex = 29
        OnClick = ItemMenDataSistemaClick
      end
      object ItemMenUsuarioChange: TMenuItem
        Caption = 'Alterar Usu'#225'rio...'
        ImageIndex = 3
        OnClick = ItemMenUsuarioChangeClick
      end
      object ItemMenChangePass: TMenuItem
        Caption = 'Altera'#231#227'o de Senha...'
        ImageIndex = 2
        OnClick = ItemMenChangePassClick
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object ItemMenLogSistema: TMenuItem
        Caption = 'Log do Sistema...'
        ImageIndex = 49
        OnClick = ItemMenLogSistemaClick
      end
      object ItemMenOpcaoCor: TMenuItem
        Caption = 'Op'#231#245'es de Cor...'
        ImageIndex = 1
        OnClick = ItemMenOpcaoCorClick
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object BoletosdaMultforma1: TMenuItem
        Bitmap.Data = {binary 9130 bytes}
        Caption = 'Boletos da Multforma...'
        OnClick = BoletosdaMultforma1Click
      end
      object N42: TMenuItem
        Caption = '-'
      end
      object ItemMenClose: TMenuItem
        Caption = 'Sair...'
        ImageIndex = 6
        OnClick = ItemMenCloseClick
      end
    end
    object Configurao1: TMenuItem
      Bitmap.Data = {binary 1338 bytes}
      Caption = 'Configura'#231#245'es'
      ImageIndex = 27
      object ItemMenGrupoUsuario: TMenuItem
        Caption = 'Grupo de Usu'#225'rios...'
        OnClick = ItemMenGrupoUsuarioClick
      end
      object ItemMenEstado: TMenuItem
        Caption = 'Estado / Al'#237'quota de ICMS...'
        OnClick = ItemMenEstadoClick
      end
      object Emitente1: TMenuItem
        Caption = 'Emitente'
        object ItemMenEmitenteGrupo: TMenuItem
          Caption = 'Grupo de Emitentes...'
          OnClick = ItemMenEmitenteGrupoClick
        end
        object ItemMenEmitenteSubGrupo: TMenuItem
          Caption = 'SubGrupo de Emitentes...'
          OnClick = ItemMenEmitenteSubGrupoClick
        end
      end
      object ItemMenRota: TMenuItem
        Caption = 'Rota...'
        OnClick = ItemMenRotaClick
      end
      object Aplicao1: TMenuItem
        Caption = 'Aplica'#231#227'o'
        object ItemMenAplicacaoGrupo: TMenuItem
          Caption = 'Grupo de Aplica'#231#245'es...'
          OnClick = ItemMenAplicacaoGrupoClick
        end
        object ItemMenAplicacaoSubGrupo: TMenuItem
          Caption = 'SubGrupo de Aplica'#231#245'es...'
          OnClick = ItemMenAplicacaoSubGrupoClick
        end
      end
      object ItemMenHistorico: TMenuItem
        Caption = 'Hist'#243'rico...'
        OnClick = ItemMenHistoricoClick
      end
      object N5: TMenuItem
        Caption = '-'
      end
      object ItemMenOcorrencia: TMenuItem
        Caption = 'Ocorr'#234'ncias em Contatos (Agenda)...'
        OnClick = ItemMenOcorrenciaClick
      end
      object ItemMenBanco: TMenuItem
        Caption = 'Banco (Institui'#231#227'o Financeira)...'
        OnClick = ItemMenBancoClick
      end
      object ItemMenPortador: TMenuItem
        Caption = 'Portador...'
        OnClick = ItemMenPortadorClick
      end
      object ItemMenGrupoFoto: TMenuItem
        Caption = 'Grupo de Fotos...'
        OnClick = ItemMenGrupoFotoClick
      end
      object ItemMenCFOP: TMenuItem
        Caption = 'CFOP...'
        OnClick = ItemMenCFOPClick
      end
      object N4: TMenuItem
        Caption = '-'
      end
      object ItemMenEstacaoTrabalho: TMenuItem
        Caption = 'Esta'#231#227'o de Trabalho (Computador)...'
        ImageIndex = 44
        OnClick = ItemMenEstacaoTrabalhoClick
      end
      object ItemMenNota_CFG: TMenuItem
        Caption = 'Configurar Nota Fiscal...'
        OnClick = ItemMenNota_CFGClick
      end
    end
    object Cadastros1: TMenuItem
      Bitmap.Data = {binary 2106 bytes}
      Caption = 'Cadastros'
      ImageIndex = 26
      object ItemMenFilial: TMenuItem
        Caption = 'Filial...'
        ImageIndex = 30
        OnClick = ItemMenFilialClick
      end
      object N6: TMenuItem
        Caption = '-'
      end
      object ItemMenCidade: TMenuItem
        Caption = 'Cidades...'
        OnClick = ItemMenCidadeClick
      end
      object ItemMenEmitente: TMenuItem
        Caption = 'Emitentes (Clientes e Fornecedores)...'
        ImageIndex = 41
        OnClick = ItemMenEmitenteClick
      end
      object N7: TMenuItem
        Caption = '-'
      end
      object ItemMenComissaoFaixa: TMenuItem
        Caption = 'Faixa de Comiss'#227'o...'
        OnClick = ItemMenComissaoFaixaClick
      end
      object ItemMenFuncionario: TMenuItem
        Caption = 'Funcion'#225'rios...'
        ImageIndex = 54
        OnClick = ItemMenFuncionarioClick
      end
      object ItemMenFoto: TMenuItem
        Caption = 'Fotos...'
        ImageIndex = 9
        OnClick = ItemMenFotoClick
      end
      object ItemMenUsuario: TMenuItem
        Caption = 'Usu'#225'rios...'
        ImageIndex = 3
        OnClick = ItemMenUsuarioClick
      end
      object ItemMenTransportador: TMenuItem
        Caption = 'Transportador...'
        ImageIndex = 52
        OnClick = ItemMenTransportadorClick
      end
      object N8: TMenuItem
        Caption = '-'
      end
      object EstruturadeEstoque1: TMenuItem
        Caption = 'Estrutura de Estoque'
        object ItemMenEstGrupo: TMenuItem
          Caption = 'Grupo...'
          OnClick = ItemMenEstGrupoClick
        end
        object ItemMenEstSubGrupo: TMenuItem
          Caption = 'SubGrupo...'
          OnClick = ItemMenEstSubGrupoClick
        end
        object ItemMenEstClasse: TMenuItem
          Caption = 'Classe...'
          OnClick = ItemMenEstClasseClick
        end
        object N9: TMenuItem
          Caption = '-'
        end
        object ItemMenUnidade: TMenuItem
          Caption = 'Unidades...'
          ImageIndex = 37
          OnClick = ItemMenUnidadeClick
        end
        object ItemMenArredondamento: TMenuItem
          Caption = 'Arredondamento...'
          OnClick = ItemMenArredondamentoClick
        end
        object ItemMenTributacao: TMenuItem
          Caption = 'Tributa'#231#227'o...'
          OnClick = ItemMenTributacaoClick
        end
        object ItemMenLocalizacao: TMenuItem
          Caption = 'Localiza'#231#227'o no Estoque...'
          OnClick = ItemMenLocalizacaoClick
        end
        object ItemMenComposto: TMenuItem
          Caption = 'Composto de Produtos...'
          ImageIndex = 43
          Visible = False
          OnClick = ItemMenCompostoClick
        end
        object ItemMenLaboratorio: TMenuItem
          Caption = 'Laborat'#243'rio / Fabricante...'
          OnClick = ItemMenLaboratorioClick
        end
        object ItemMenProdutoPrazo: TMenuItem
          Caption = 'Prazo de Aquisi'#231#227'o...'
          OnClick = ItemMenProdutoPrazoClick
        end
        object N29: TMenuItem
          Caption = '-'
        end
        object ItemMenSubProduto: TMenuItem
          Caption = 'SubProduto...'
          OnClick = ItemMenSubProdutoClick
        end
        object ItemMenProjetoPartes: TMenuItem
          Caption = 'Partes do Projeto...'
          OnClick = ItemMenProjetoPartesClick
        end
        object ItemMenProjetoPeca: TMenuItem
          Caption = 'Pe'#231'as do Projeto...'
          OnClick = ItemMenProjetoPecaClick
        end
      end
      object ItemMenProduto: TMenuItem
        Caption = 'Produto...'
        OnClick = ItemMenProdutoClick
      end
      object ItemMenTabelaPreco: TMenuItem
        Caption = 'Tabela de Pre'#231'os...'
        OnClick = ItemMenTabelaPrecoClick
      end
      object N10: TMenuItem
        Caption = '-'
      end
      object ItemMenProjeto: TMenuItem
        Caption = 'Projetos...'
        ImageIndex = 51
        OnClick = ItemMenProjetoClick
      end
      object N28: TMenuItem
        Caption = '-'
      end
      object ItemMenEstoqueFind: TMenuItem
        Caption = 'Consulta de Estoque...'
        ImageIndex = 26
        OnClick = ItemMenEstoqueFindClick
      end
      object ItemMenEstoqueMovto: TMenuItem
        Caption = 'Movimenta'#231#245'es no Estoque...'
        OnClick = ItemMenEstoqueMovtoClick
      end
    end
    object Compra1: TMenuItem
      Bitmap.Data = {binary 1066 bytes}
      Caption = 'Compra'
      ImageIndex = 39
      object ItemMenCompra: TMenuItem
        Caption = 'Pedido de Compra...'
        OnClick = ItemMenCompraClick
      end
      object ItemMenEntrada: TMenuItem
        Caption = 'Nota Fiscal de Entrada (Entradas no Estoque)...'
        OnClick = ItemMenEntradaClick
      end
      object N11: TMenuItem
        Caption = '-'
      end
      object ItemMenPagar: TMenuItem
        Caption = 'Contas '#224' Pagar...'
        ImageIndex = 39
        OnClick = ItemMenPagarClick
      end
      object ItemMenPagarBaixa: TMenuItem
        Caption = 'Baixa de Contas '#224' Pagar...'
        OnClick = ItemMenPagarBaixaClick
      end
      object ItemMenPagarCopia: TMenuItem
        Caption = 'Copiar Contas '#224' Pagar...'
        ImageIndex = 34
        OnClick = ItemMenPagarCopiaClick
      end
      object ItemMenPagarAlerta: TMenuItem
        Caption = 'Alerta de Contas '#224' Pagar...'
        ImageIndex = 64
        OnClick = ItemMenPagarAlertaClick
      end
      object N12: TMenuItem
        Caption = '-'
      end
      object ItemMenRelContaPagar: TMenuItem
        Caption = 'Rel. de Contas '#224' Pagar...'
        ImageIndex = 20
        OnClick = ItemMenRelContaPagarClick
      end
      object ItemMenRelContaPago: TMenuItem
        Caption = 'Rel. de Contas Pagas...'
        ImageIndex = 20
        OnClick = ItemMenRelContaPagoClick
      end
      object ItemMenRelCP_Emitente: TMenuItem
        Caption = 'Rel. de Contas '#224' Pagar/Pagas por Fornecedor...'
        ImageIndex = 20
        OnClick = ItemMenRelCP_EmitenteClick
      end
      object ItemMenRelCP_Emissao: TMenuItem
        Caption = 'Rel. de Contas '#224' Pagar por Emiss'#227'o...'
        ImageIndex = 20
        OnClick = ItemMenRelCP_EmissaoClick
      end
      object N43: TMenuItem
        Caption = '-'
      end
      object ItemMenRelCompraPendencia: TMenuItem
        Caption = 'Rel. de Pend'#234'ncia de Compras...'
        ImageIndex = 20
        OnClick = ItemMenRelCompraPendenciaClick
      end
    end
    object Vendas1: TMenuItem
      Bitmap.Data = {binary 1338 bytes}
      Caption = 'Vendas'
      ImageIndex = 8
      object ItemMenOMedicao: TMenuItem
        Caption = 'Ordem de Medi'#231#227'o...'
        ImageIndex = 30
        OnClick = ItemMenOMedicaoClick
      end
      object ItemMenOrcamento: TMenuItem
        Caption = 'Or'#231'amento...'
        ImageIndex = 8
        OnClick = ItemMenOrcamentoClick
      end
      object ItemMenOrcamentoNovo: TMenuItem
        Caption = 'Or'#231'amento Resolu'#231#227'o minima 1024 x 768 ...'
        ImageIndex = 8
        OnClick = ItemMenOrcamentoNovoClick
      end
      object ItemMenBloqueio: TMenuItem
        Caption = 'Orcamento Bloqueado...'
        ImageIndex = 2
        OnClick = ItemMenBloqueioClick
      end
      object ItemMenTA: TMenuItem
        Caption = 'Tele-Atendimento...'
        ImageIndex = 60
        OnClick = ItemMenTAClick
      end
      object N44: TMenuItem
        Caption = '-'
      end
      object ItemMenProdutoConsulta: TMenuItem
        Caption = 'Consulta de Pre'#231'o...'
        ImageIndex = 0
        OnClick = ItemMenProdutoConsultaClick
      end
      object ItemMenOServico: TMenuItem
        Caption = 'O&rdem de Servi'#231'o (Desenhada)...'
        ImageIndex = 51
        OnClick = ItemMenOServicoClick
      end
      object N46: TMenuItem
        Caption = '-'
      end
      object ItemMenCarga: TMenuItem
        Caption = 'Montagem de Carga...'
        ImageIndex = 52
        OnClick = ItemMenCargaClick
      end
      object ItemMenRelCargaOrcamento: TMenuItem
        Caption = 'Rel. de Cargas - Resumo Sint'#233'tico por Or'#231'amento'
        ImageIndex = 20
        OnClick = ItemMenRelCargaOrcamentoClick
      end
      object N13: TMenuItem
        Caption = '-'
      end
      object ItemMenSaida: TMenuItem
        Caption = 'Nota Fiscal de Sa'#237'da (Sa'#237'das no Estoque)...'
        OnClick = ItemMenSaidaClick
      end
      object Financeiro1: TMenuItem
        Caption = 'Financeiro'
        ImageIndex = 40
        object ItemMenReceber: TMenuItem
          Caption = 'Contas '#224' Receber...'
          ImageIndex = 40
          OnClick = ItemMenReceberClick
        end
        object ItemMenReceberBaixa: TMenuItem
          Caption = 'Baixa de Contas '#224' Receber...'
          OnClick = ItemMenReceberBaixaClick
        end
        object ItemMenCREnvio: TMenuItem
          Caption = 'Enviar t'#237'tulos ao Banco (Gerar Remessa)...'
          OnClick = ItemMenCREnvioClick
        end
        object ItemMenCRResumo: TMenuItem
          Caption = 'Resumo de Recebimento (Arquivo Retorno)...'
          OnClick = ItemMenCRResumoClick
        end
        object ItemMenReceberCobranca: TMenuItem
          Caption = 'Cobran'#231'a'
          ImageIndex = 3
          OnClick = ItemMenReceberCobrancaClick
        end
        object ItemMenReceberCobEMail: TMenuItem
          Caption = 'Enviar E-Mail de Cobran'#231'a...'
          ImageIndex = 53
          OnClick = ItemMenReceberCobEMailClick
        end
        object N17: TMenuItem
          Caption = '-'
        end
        object ItemMenRelContaReceber: TMenuItem
          Caption = 'Rel. de Contas '#224' Receber...'
          ImageIndex = 20
          OnClick = ItemMenRelContaReceberClick
        end
        object ItemMenRelContaRecebido: TMenuItem
          Caption = 'Rel. de Contas Recebidas...'
          ImageIndex = 20
          OnClick = ItemMenRelContaRecebidoClick
        end
        object ItemMenRelCR_Emitente: TMenuItem
          Caption = 'Rel. de Contas '#224' Receber/Recebidas/Extrato por Cliente...'
          ImageIndex = 20
          OnClick = ItemMenRelCR_EmitenteClick
        end
        object ItemMenRelCR_Emissao: TMenuItem
          Caption = 'Rel. de Contas '#224' Receber por Emiss'#227'o...'
          ImageIndex = 20
          OnClick = ItemMenRelCR_EmissaoClick
        end
        object ItemMenRelCR_Funcionario: TMenuItem
          Caption = 'Rel. de Contas '#224' Receber por Vendedor...'
          ImageIndex = 20
          OnClick = ItemMenRelCR_FuncionarioClick
        end
        object ItemMenRelCR_Cancelada: TMenuItem
          Caption = 'Rel. de Contas '#224' Receber Canceladas...'
          ImageIndex = 20
          OnClick = ItemMenRelCR_CanceladaClick
        end
      end
      object ControledeCheques1: TMenuItem
        Caption = 'Controle de Cheques'
        object ItemMenCheque: TMenuItem
          Caption = 'Cheque...'
          OnClick = ItemMenChequeClick
        end
        object ItemMenChequeBordero: TMenuItem
          Caption = 'Border'#244' de Dep'#243'sito/Apresenta'#231#227'o...'
          ImageIndex = 42
          OnClick = ItemMenChequeBorderoClick
        end
      end
      object N18: TMenuItem
        Caption = '-'
      end
      object ItemMenRecibo: TMenuItem
        Caption = 'Emitir Recibo...'
        OnClick = ItemMenReciboClick
      end
    end
    object Movimentaes1: TMenuItem
      Bitmap.Data = {binary 458 bytes}
      Caption = 'Movimenta'#231#245'es'
      ImageIndex = 25
      object ItemMenCaixa: TMenuItem
        Caption = 'Caixa...'
        ImageIndex = 0
        OnClick = ItemMenCaixaClick
      end
      object ItemMenCCorrente: TMenuItem
        Caption = 'Controle Banc'#225'rio (Conta Corrente)...'
        OnClick = ItemMenCCorrenteClick
      end
      object ItemMenComissaoApurar: TMenuItem
        Caption = 'Apurar Comiss'#227'o...'
        ImageIndex = 54
        OnClick = ItemMenComissaoApurarClick
      end
      object N19: TMenuItem
        Caption = '-'
      end
      object ItemMenEstoqueAcerto: TMenuItem
        Caption = 'Acerto de Estoque...'
        ImageIndex = 26
        OnClick = ItemMenEstoqueAcertoClick
      end
      object N20: TMenuItem
        Caption = '-'
      end
      object ItemMenContatosGerenciar: TMenuItem
        Caption = 'Gerenciar Contatos...'
        ImageIndex = 25
        OnClick = ItemMenContatosGerenciarClick
      end
      object ItemMenEMalaDireta: TMenuItem
        Caption = 'E-Mala direta...'
        ImageIndex = 53
        OnClick = ItemMenEMalaDiretaClick
      end
      object N35: TMenuItem
        Caption = '-'
      end
      object Produo1: TMenuItem
        Caption = 'Produ'#231#227'o'
        ImageIndex = 43
        object ItemMenProducao: TMenuItem
          Caption = 'Produ'#231#227'o...'
          ImageIndex = 43
          OnClick = ItemMenProducaoClick
        end
        object ItemMenMarcacao: TMenuItem
          Caption = 'Marca'#231#227'o por Setor...'
          OnClick = ItemMenMarcacaoClick
        end
        object ItemMenProducaoOrcamento: TMenuItem
          Caption = 'Lista de Or'#231'amentos...'
          ImageIndex = 8
          OnClick = ItemMenProducaoOrcamentoClick
        end
        object N32: TMenuItem
          Caption = '-'
        end
        object ItemMenSetor: TMenuItem
          Caption = 'Setores da Produ'#231#227'o...'
          OnClick = ItemMenSetorClick
        end
        object ItemMenMotivo: TMenuItem
          Caption = 'Motivos (Problemas na produ'#231#227'o)...'
          OnClick = ItemMenMotivoClick
        end
        object N33: TMenuItem
          Caption = '-'
        end
        object ItemMenProdRepProblema: TMenuItem
          Caption = 'Rel. de Problemas na Produ'#231#227'o...'
          ImageIndex = 20
          OnClick = ItemMenProdRepProblemaClick
        end
        object ItemMenProdRepAcompanha: TMenuItem
          Caption = 'Rel. da Produ'#231#227'o...'
          ImageIndex = 20
          OnClick = ItemMenProdRepAcompanhaClick
        end
        object ItemMenProdRepSetor: TMenuItem
          Caption = 'Rel. da Produ'#231#227'o por Setor...'
          ImageIndex = 20
          OnClick = ItemMenProdRepSetorClick
        end
        object ItemMenProdPrevEntrega: TMenuItem
          Caption = 'Rel. de Previs'#227'o de Entrega x Produ'#231#227'o...'
          ImageIndex = 20
          OnClick = ItemMenProdPrevEntregaClick
        end
      end
      object ControledeInstalao1: TMenuItem
        Caption = 'Controle de Instala'#231#227'o'
        ImageIndex = 1
        object ItemMenInstalacao: TMenuItem
          Caption = 'Instala'#231#227'o...'
          ImageIndex = 1
          OnClick = ItemMenInstalacaoClick
        end
        object N47: TMenuItem
          Caption = '-'
        end
        object ItemMenRelInstaPeriodo: TMenuItem
          Caption = 'Rel. de Instala'#231#227'o no Per'#237'odo...'
          ImageIndex = 20
          Visible = False
        end
        object ItemMenRelInstaComissao: TMenuItem
          Caption = 'Rel. de Comiss'#227'o por Instalador...'
          ImageIndex = 20
        end
      end
      object N36: TMenuItem
        Caption = '-'
      end
      object ItemMenNFe: TMenuItem
        Caption = 'NFe - Nota Fiscal Eletr'#244'nica...'
        ImageIndex = 10
        OnClick = ItemMenNFeClick
      end
    end
    object Fiscal1: TMenuItem
      Caption = 'Fiscal'
      ImageIndex = 23
      object ItemMenInventarioMensal: TMenuItem
        Caption = 'Invent'#225'rio Mensal de Estoque...'
        ImageIndex = 26
        OnClick = ItemMenInventarioMensalClick
      end
      object ItemMenInventarioTrimestral: TMenuItem
        Caption = 'Invent'#225'rio Trimestral de Estoque...'
        ImageIndex = 26
        OnClick = ItemMenInventarioTrimestralClick
      end
      object ItemMenEstoqueInventario: TMenuItem
        Caption = 'Invent'#225'rio Anual de Estoque...'
        ImageIndex = 26
        OnClick = ItemMenEstoqueInventarioClick
      end
      object N16: TMenuItem
        Caption = '-'
      end
      object ItemMenSintegra2: TMenuItem
        Caption = 'Gera'#231#227'o do Arquivo do Sintegra...'
        ImageIndex = 33
        OnClick = ItemMenSintegra2Click
      end
      object ItemMenSPEDPisCofins: TMenuItem
        Caption = 'Gera'#231#227'o do SPED Contribui'#231#245'es (Pis / Cofins)...'
        Visible = False
        OnClick = ItemMenSPEDPisCofinsClick
      end
      object ItemMenSPEDFiscal: TMenuItem
        Caption = 'Gera'#231#227'o do SPED Fiscal (parcial)...'
        OnClick = ItemMenSPEDFiscalClick
      end
      object N38: TMenuItem
        Caption = '-'
      end
      object ItemMenExportaES: TMenuItem
        Caption = 'Exportar dados de Entrada e Sa'#237'da...'
        ImageIndex = 33
        OnClick = ItemMenExportaESClick
      end
      object ItemMenEmitenteExporta: TMenuItem
        Caption = 'Exporta'#231#227'o de Emitentes (Athenas 3000)...'
        OnClick = ItemMenEmitenteExportaClick
      end
      object N40: TMenuItem
        Caption = '-'
      end
      object ImpressoraFiscal1: TMenuItem
        Caption = 'Impressora Fiscal'
        Visible = False
        object ItemMenECFSuprimento: TMenuItem
          Tag = 1
          Caption = 'Suprimento...'
          OnClick = ItemMenECFSuprimentoClick
        end
        object ItemMenECFSangria: TMenuItem
          Tag = 2
          Caption = 'Sangria...'
          OnClick = ItemMenECFSuprimentoClick
        end
        object N14: TMenuItem
          Caption = '-'
        end
        object ItemMenECFCancel: TMenuItem
          Caption = 'Cancelar '#218'ltimo Cupom...'
          OnClick = ItemMenECFCancelClick
        end
        object N15: TMenuItem
          Caption = '-'
        end
        object ItemMenECFLeituraX: TMenuItem
          Caption = 'Leitura " X "...'
          OnClick = ItemMenECFLeituraXClick
        end
        object ItemMenECFReducaoZ: TMenuItem
          Caption = 'Redu'#231#227'o " Z "...'
          OnClick = ItemMenECFReducaoZClick
        end
        object N31: TMenuItem
          Caption = '-'
        end
        object ItemMenECFMemFiscal: TMenuItem
          Caption = 'Leitura da M'#233'm'#243'ria Fiscal...'
          OnClick = ItemMenECFMemFiscalClick
        end
        object ItemMenECFReducaoDiaria: TMenuItem
          Caption = 'Redu'#231#245'es Di'#225'rias...'
          OnClick = ItemMenECFReducaoDiariaClick
        end
        object N41: TMenuItem
          Caption = '-'
        end
        object ItemMenECFCAT52: TMenuItem
          Caption = 'Gera'#231#227'o do Arquivo CAT52...'
          OnClick = ItemMenECFCAT52Click
        end
        object ItemMenECFFormPagtoElgin: TMenuItem
          Caption = 'Cadastrar formas de pagamento Elgin...'
          OnClick = ItemMenECFFormPagtoElginClick
        end
      end
      object N30: TMenuItem
        Caption = '-'
        Visible = False
      end
      object RelatriosContabeis1: TMenuItem
        Caption = 'Relat'#243'rios Contabeis'
        ImageIndex = 59
        object ItemMenLContabilEntrada: TMenuItem
          Caption = 'Registro de Entradas...'
          OnClick = ItemMenLContabilEntradaClick
        end
        object ItemMenLContabilSaida: TMenuItem
          Caption = 'Registro de Sa'#237'das...'
          OnClick = ItemMenLContabilSaidaClick
        end
        object ItemMenLContabilApurar: TMenuItem
          Caption = 'Registro de Apura'#231#227'o de ICMS...'
          OnClick = ItemMenLContabilApurarClick
        end
        object ItemMenLContabilPE: TMenuItem
          Caption = 'Registro Controle de Produ'#231#227'o e do Estoque RCPE - P3...'
          OnClick = ItemMenLContabilPEClick
        end
      end
    end
    object Ferramentas1: TMenuItem
      Bitmap.Data = {binary 1338 bytes}
      Caption = 'Ferramentas'
      ImageIndex = 1
      object ItemMenEmitenteChange: TMenuItem
        Caption = 'Trocar Emitente...'
        ImageIndex = 41
        OnClick = ItemMenEmitenteChangeClick
      end
      object ItemMenProdutoChange: TMenuItem
        Caption = 'Trocar Produto...'
        OnClick = ItemMenProdutoChangeClick
      end
      object N45: TMenuItem
        Caption = '-'
      end
      object SincronizarcomSGPAF1: TMenuItem
        Caption = 'Sincronizar com SG-PAF...'
        Visible = False
      end
      object ExportaodedadosparaOPAF1: TMenuItem
        Caption = 'Exporta'#231#227'o de dados para OPAF...'
        Visible = False
        OnClick = ExportaodedadosparaOPAF1Click
      end
      object ItemMenHelpDesk: TMenuItem
        Caption = 'Help Desk...'
        ImageIndex = 11
      end
      object ItemMenLicencaFile: TMenuItem
        Caption = 'Gerar Arquivo de Licen'#231'a...'
        ImageIndex = 33
      end
      object ItemMenGeraBoleto: TMenuItem
        Caption = 'Gerar Boletos de Suporte...'
        ImageIndex = 35
      end
      object ItemMenSolictacoes: TMenuItem
        Caption = 'Solicita'#231#245'es de Clientes...'
        ImageIndex = 27
        OnClick = ItemMenSolictacoesClick
      end
      object N21: TMenuItem
        Caption = '-'
      end
      object ItemMenBackup: TMenuItem
        Caption = 'Backup do Sistema...'
        ImageIndex = 56
        OnClick = ItemMenBackupClick
      end
    end
    object Relatrios1: TMenuItem
      Bitmap.Data = {binary 558 bytes}
      Caption = 'Relat'#243'rios'
      ImageIndex = 24
      object RelatriosdeVendas1: TMenuItem
        Caption = 'Relat'#243'rios de Vendas'
        ImageIndex = 20
        object ItemMenRepVendas: TMenuItem
          Caption = 'Vendas no Per'#237'odo...'
          OnClick = ItemMenRepVendasClick
        end
        object ItemMenRepVendaProduto: TMenuItem
          Caption = 'Vendas por Produto...'
          OnClick = ItemMenRepVendaProdutoClick
        end
        object ItemMenRepVendaLaboratorio: TMenuItem
          Caption = 'Vendas por Laborat'#243'rio/Fabricante...'
          OnClick = ItemMenRepVendaLaboratorioClick
        end
        object ItemMenRepVendaConjunto: TMenuItem
          Caption = 'Vendas de Conjuntos (Cestas)...'
          OnClick = ItemMenRepVendaConjuntoClick
        end
        object ItemMenRepVenVendedor: TMenuItem
          Caption = 'Vendas por Vendedor...'
          OnClick = ItemMenRepVenVendedorClick
        end
        object ItemMenRepVenPortador: TMenuItem
          Caption = 'Vendas por Portador...'
          OnClick = ItemMenRepVenPortadorClick
        end
        object ItemMenRepVenMargem: TMenuItem
          Caption = 'Vendas por Margem...'
          OnClick = ItemMenRepVenMargemClick
        end
        object N34: TMenuItem
          Caption = '-'
        end
        object ItemMenRepVenOver: TMenuItem
          Caption = 'Over de Vendas...'
          OnClick = ItemMenRepVenOverClick
        end
        object N48: TMenuItem
          Caption = '-'
        end
        object ItemMenRepVenFxV: TMenuItem
          Caption = 'Vendas por Filial x Vendedor...'
          OnClick = ItemMenRepVenFxVClick
        end
      end
      object ItemMenFrequencia: TMenuItem
        Caption = 'Frequ'#234'ncia de Vendas...'
        ImageIndex = 20
        OnClick = ItemMenFrequenciaClick
      end
      object ItemMenEmitenteFatAnual: TMenuItem
        Caption = 'Faturamento Anual por Cliente...'
        ImageIndex = 41
        OnClick = ItemMenEmitenteFatAnualClick
      end
      object N22: TMenuItem
        Caption = '-'
      end
      object ItemMenRankFilial: TMenuItem
        Caption = 'Ranking de Filial...'
        ImageIndex = 58
        OnClick = ItemMenRankFilialClick
      end
      object ItemMenRankClientes: TMenuItem
        Caption = 'Ranking de Clientes...'
        ImageIndex = 58
        OnClick = ItemMenRankClientesClick
      end
      object ItemMenRankProdutos: TMenuItem
        Caption = 'Ranking de Produtos...'
        ImageIndex = 58
        OnClick = ItemMenRankProdutosClick
      end
      object ItemMenRankVendedor: TMenuItem
        Caption = 'Ranking de Vendedores...'
        ImageIndex = 58
        OnClick = ItemMenRankVendedorClick
      end
      object N23: TMenuItem
        Caption = '-'
      end
      object ItemMenRepOrcamento: TMenuItem
        Caption = 'Or'#231'amentos Emitidos...'
        OnClick = ItemMenRepOrcamentoClick
      end
      object ItemMenRepPrevEntrega: TMenuItem
        Caption = 'Previs'#227'o de Entrega...'
        OnClick = ItemMenRepPrevEntregaClick
      end
      object ItemMenRepOMedicao: TMenuItem
        Caption = 'Ordem de Medi'#231#227'o...'
        OnClick = ItemMenRepOMedicaoClick
      end
      object ItemMenRepComissao: TMenuItem
        Caption = 'Comiss'#245'es sobre as Vendas (Obsoleto)...'
        OnClick = ItemMenRepComissaoClick
      end
      object ItemMenRepTributacao: TMenuItem
        Caption = 'Tributa'#231#227'o sobre as Vendas...'
        OnClick = ItemMenRepTributacaoClick
      end
      object ItemMenRepApurarImposto: TMenuItem
        Caption = 'Apurar Imposto...'
        OnClick = ItemMenRepApurarImpostoClick
      end
      object N24: TMenuItem
        Caption = '-'
      end
      object ItemMenRepCompras: TMenuItem
        Caption = 'Compras no Per'#237'odo...'
        OnClick = ItemMenRepComprasClick
      end
      object ItemMenRepEntrada: TMenuItem
        Caption = 'Entradas no Per'#237'odo...'
        OnClick = ItemMenRepEntradaClick
      end
      object ItemMenRepSaida: TMenuItem
        Caption = 'Sa'#237'das no Per'#237'odo...'
        OnClick = ItemMenRepSaidaClick
      end
      object ItemMenRepMapaCompra: TMenuItem
        Caption = 'Mapa de Compra...'
        OnClick = ItemMenRepMapaCompraClick
      end
      object N25: TMenuItem
        Caption = '-'
      end
      object ItemMenRepEmitente: TMenuItem
        Caption = 'Emitentes (Clientes e Fornecedores)...'
        ImageIndex = 41
        OnClick = ItemMenRepEmitenteClick
      end
      object N26: TMenuItem
        Caption = '-'
      end
      object RelatriosFinanceiros1: TMenuItem
        Caption = 'Relat'#243'rios Financeiros'
        ImageIndex = 0
        object ItemMenRepAplicacao: TMenuItem
          Caption = 'Resumo de Aplica'#231#227'o...'
          ImageIndex = 20
          OnClick = ItemMenRepAplicacaoClick
        end
        object ItemMenRepDespesas: TMenuItem
          Caption = 'Resumo de Despesas...'
          ImageIndex = 20
          OnClick = ItemMenRepDespesasClick
        end
        object ItemMenRepFinanceiro: TMenuItem
          Caption = 'Resumo Financeiro...'
          ImageIndex = 20
          OnClick = ItemMenRepFinanceiroClick
        end
      end
      object N39: TMenuItem
        Caption = '-'
      end
      object ItemMenRepNFe: TMenuItem
        Caption = 'NFe...'
        ImageIndex = 10
        OnClick = ItemMenRepNFeClick
      end
      object ItemMenRepNFCe: TMenuItem
        Caption = 'NFC-e...'
        ImageIndex = 8
        OnClick = ItemMenRepNFCeClick
      end
    end
    object Ajuda1: TMenuItem
      Caption = 'Ajuda'
      ImageIndex = 11
      object ItemMenUpdate: TMenuItem
        Caption = 'Atualiza'#231#227'o via Internet...'
        ImageIndex = 10
        OnClick = ItemMenUpdateClick
      end
      object ItemMenSuporte: TMenuItem
        Caption = 'Suporte On-Line via Internet...'
        ImageIndex = 3
        OnClick = ItemMenSuporteClick
      end
      object ItemMenNews: TMenuItem
        Caption = 'Novidades no SG-Comercial...'
        ImageIndex = 50
        OnClick = ItemMenNewsClick
      end
      object N27: TMenuItem
        Caption = '-'
      end
      object ItemMenSupRemoto: TMenuItem
        Caption = 'Suporte Remoto'
        ImageIndex = 61
        object ItemMenSupRemotoTec: TMenuItem
          Tag = 1
          Caption = 'Acesso por T'#233'cnico...'
          OnClick = ItemMenSupRemotoTecClick
        end
        object ItemMenSupRemotoID: TMenuItem
          Tag = 2
          Caption = 'Acesso por ID e Senha (Team Viewer)...'
          OnClick = ItemMenSupRemotoTecClick
        end
        object AcessoporIDAnydesk2: TMenuItem
          Caption = 'Acesso por ID (Anydesk)...'
          OnClick = ItemMenSupRemotoTecClick
        end
      end
      object N37: TMenuItem
        Caption = '-'
      end
      object ItemMenAbout: TMenuItem
        Caption = 'Sobre...'
        ImageIndex = 28
        OnClick = ItemMenAboutClick
      end
    end
  end
  object PopMenSupRemoto: TPopupMenu
    Left = 228
    Top = 325
    object ItemMenSupRemotoTec2: TMenuItem
      Tag = 1
      Caption = 'Acesso por T'#233'cnico...'
      OnClick = ItemMenSupRemotoTecClick
    end
    object ItemMenSupRemotoID2: TMenuItem
      Tag = 2
      Caption = 'Acesso por ID e Senha (Team Viewer)...'
      OnClick = ItemMenSupRemotoTecClick
    end
    object AcessoporIDAnydesk1: TMenuItem
      Tag = 4
      Caption = 'Acesso por ID (Anydesk)...'
      OnClick = ItemMenSupRemotoTecClick
    end
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 'FortesReport Community Edition v4.0 \251 Copyright '#169' 1999-2016 Fortes Inform'#225'tica'
    DisplayName = 'Documento PDF'
    Left = 480
    Top = 328
  end
  object RLXLSFilter1: TRLXLSFilter
    DisplayName = 'Planilha Excel 97-2013'
    Left = 520
    Top = 328
  end
  object RLXLSXFilter1: TRLXLSXFilter
    DisplayName = 'Planilha Excel'
    Left = 552
    Top = 328
  end
end
