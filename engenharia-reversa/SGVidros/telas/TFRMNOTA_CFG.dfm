object FrmNota_CFG: TFrmNota_CFG
  Left = 165
  Top = 179
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Configura'#231#227'o da Nota Fiscal'
  ClientHeight = 490
  ClientWidth = 850
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
  object PnlFundo: TPanel
    Left = 0
    Top = 0
    Width = 850
    Height = 490
    Align = alClient
    ParentColor = True
    TabOrder = 0
    object BvlSeparator: TBevel
      Left = 5
      Top = 461
      Width = 841
      Height = 5
      Shape = bsTopLine
    end
    object BitBtnClose: TBitBtn
      Left = 765
      Top = 465
      Width = 85
      Height = 25
      Caption = '&Fechar'
      TabOrder = 0
      OnClick = BitBtnCloseClick
      Glyph.Data = {binary 486 bytes}
    end
    object PgCNota: TPageControl
      Left = 0
      Top = 0
      Width = 845
      Height = 458
      ActivePage = TabSNota
      TabOrder = 1
      object TabSNota: TTabSheet
        Caption = '      Dados da Nota     '
        ImageIndex = 3
        object Label1: TLabel
          Left = 5
          Top = 5
          Width = 217
          Height = 13
          Caption = 'Fonte (considerado apenas nome e tamanho):'
        end
        object SbFonte: TSpeedButton
          Left = 227
          Top = 18
          Width = 23
          Height = 19
          Hint = 'Consulta Fonte'
          Flat = True
          Glyph.Data = {binary 2066 bytes}
          NumGlyphs = 2
          OnClick = SbFonteClick
        end
        object Label2: TLabel
          Left = 5
          Top = 45
          Width = 163
          Height = 13
          Caption = 'Diferen'#231'a do Campo Fatura (pixel):'
        end
        object Label3: TLabel
          Left = 172
          Top = 45
          Width = 176
          Height = 13
          Caption = 'Diferen'#231'a do Campo Adicional (pixel):'
        end
        object Label4: TLabel
          Left = 115
          Top = 239
          Width = 616
          Height = 116
          AutoSize = False
          Caption = 'Importante:'#13#10#13#10'- O tamanho do "Cabe'#231'alho da Nota/Destinat'#225'rio" somado ao "Calculo do Imposto, Transportador e D.A. (Dados Adicionais)" determinar'#227'o a '#225'rea de impress'#227'o dos itens.'#13#10#13#10'- '
          WordWrap = True
        end
        object Label5: TLabel
          Left = 5
          Top = 82
          Width = 156
          Height = 13
          Caption = 'Tamanho do Formul'#225'rio (em mm):'
        end
        object Label8: TLabel
          Left = 255
          Top = 4
          Width = 130
          Height = 13
          Caption = 'Altura da Linha Itens (pixel):'
        end
        object Label6: TLabel
          Left = 5
          Top = 119
          Width = 65
          Height = 13
          Caption = 'Tipo da Nota:'
        end
        object Label7: TLabel
          Left = 134
          Top = 119
          Width = 109
          Height = 13
          Caption = 'Imprimir servi'#231'os como:'
        end
        object Label9: TLabel
          Left = 5
          Top = 155
          Width = 85
          Height = 13
          Caption = 'Tamanho do Grid:'
        end
        object STxtFonte: TStaticText
          Left = 5
          Top = 19
          Width = 221
          Height = 18
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Fonte sendo utilizada na impress'#227'o'
          TabOrder = 0
        end
        object EdtNr_Fatura: TCurrencyEdit
          Left = 5
          Top = 60
          Width = 40
          Height = 19
          Margins.Left = 2
          Margins.Top = 2
          AutoSize = False
          DecimalPlaces = 0
          DisplayFormat = '#,###'
          TabOrder = 2
          OnExit = EdtNr_FaturaExit
        end
        object EdtNr_Adicional: TCurrencyEdit
          Left = 172
          Top = 60
          Width = 40
          Height = 19
          Margins.Left = 2
          Margins.Top = 2
          AutoSize = False
          DecimalPlaces = 0
          DisplayFormat = '#,###'
          TabOrder = 3
          OnExit = EdtNr_FaturaExit
        end
        object EdtNr_Formulario: TCurrencyEdit
          Left = 5
          Top = 97
          Width = 40
          Height = 19
          Margins.Left = 2
          Margins.Top = 2
          AutoSize = False
          DecimalPlaces = 0
          DisplayFormat = '#,###'
          TabOrder = 4
          OnExit = EdtNr_FaturaExit
        end
        object EdtNr_Altura_Item: TCurrencyEdit
          Left = 255
          Top = 19
          Width = 40
          Height = 19
          Margins.Left = 2
          Margins.Top = 2
          AutoSize = False
          DecimalPlaces = 0
          DisplayFormat = '#,###'
          TabOrder = 1
          OnExit = EdtNr_FaturaExit
        end
        object CbTpNota: TComboBox
          Left = 5
          Top = 134
          Width = 125
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          TabOrder = 5
          OnExit = EdtNr_FaturaExit
          Items.Strings = (
            'Produto e Servi'#231'os'
            'Produtos'
            'Servi'#231'os'
          )
        end
        object CbTpServico: TComboBox
          Left = 134
          Top = 134
          Width = 166
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          TabOrder = 6
          OnExit = EdtNr_FaturaExit
          Items.Strings = (
            'Itens da Nota'
            'Memo (texto de varias linhas)'
          )
        end
        object EdtNr_Grid: TCurrencyEdit
          Left = 5
          Top = 170
          Width = 40
          Height = 19
          Margins.Left = 2
          Margins.Top = 2
          AutoSize = False
          DecimalPlaces = 0
          DisplayFormat = '#,###'
          TabOrder = 7
          Value = 5.0
          OnExit = EdtNr_FaturaExit
        end
      end
      object TabSGrupo_1: TTabSheet
        Caption = '     Cabe'#231'alho da Nota/Destinat'#225'rio     '
        object ImgVert_1: TImage
          Left = 0
          Top = 19
          Width = 21
          Height = 411
          Picture.Data = {binary 6956 bytes}
        end
        object ImgHor_1: TImage
          Left = 20
          Top = 0
          Width = 817
          Height = 19
          Picture.Data = {binary 5493 bytes}
        end
        object PnlGrupo_1: TPanel
          Left = 20
          Top = 19
          Width = 817
          Height = 412
          BevelOuter = bvLowered
          ParentColor = True
          TabOrder = 0
        end
      end
      object TabSGrupo_2: TTabSheet
        Caption = '     Dados dos Produtos     '
        ImageIndex = 1
        object ImgVert_2: TImage
          Left = 0
          Top = 19
          Width = 21
          Height = 411
          Picture.Data = {binary 6956 bytes}
        end
        object ImgHor_2: TImage
          Left = 20
          Top = 0
          Width = 817
          Height = 19
          Picture.Data = {binary 5493 bytes}
        end
        object PnlGrupo_2: TPanel
          Left = 20
          Top = 18
          Width = 817
          Height = 412
          BevelOuter = bvLowered
          ParentColor = True
          TabOrder = 0
        end
      end
      object TabSGrupo_3: TTabSheet
        Caption = '     Calculo do Imposto, Transportador e D.A.     '
        ImageIndex = 2
        object ImgVert_3: TImage
          Left = 0
          Top = 19
          Width = 21
          Height = 411
          Picture.Data = {binary 6956 bytes}
        end
        object ImgHor_3: TImage
          Left = 20
          Top = 0
          Width = 817
          Height = 19
          Picture.Data = {binary 5493 bytes}
        end
        object PnlGrupo_3: TPanel
          Left = 20
          Top = 18
          Width = 817
          Height = 412
          BevelOuter = bvLowered
          ParentColor = True
          TabOrder = 0
        end
      end
    end
    object SctRepRegua: TSctReport
      Left = 640
      Top = 350
      Width = 82
      Height = 44
      HorzScrollBar.Visible = False
      VertScrollBar.Visible = False
      TabOrder = 2
      Visible = False
      Minimized = True
      Prompt = True
      AutoRun = False
      SuppressStatus = False
      PixelsPerInch = 96
      STop = 102
      SLeft = 49
      SWidth = 1082
      SHeight = 909
      MTop = 350
      MLeft = 640
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
        PageSetup.Size = psLetter
        PageSetup.Height = 11.0
        PageSetup.Width = 8.5
        PageSetup.LeftMargin = 0
        PageSetup.RightMargin = 0
        PageSetup.TopMargin = 0
        PageSetup.BottomMargin = 0
        BorderType = btNone
        CloseDataSet = False
        DataRange = drAllRecords
        OmitLastPgFt = False
        Head = ReportHeaderBand
        Detail = DetailBand
        Foot = ReportFooterBand
        PageHead = PageHeaderBand
        PageFoot = PageFooterBand
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
          CreateVariables = True
          UpdateLevel = DetailBandlevel
          DataSource = DsNota
        end
        object adodsnotacd_notaVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'cd_nota'
          DataSource = DsNota
          UpdateLevel = DetailBandlevel
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsnotads_notaVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'ds_nota'
          DataSource = DsNota
          UpdateLevel = DetailBandlevel
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsnotanm_fonteVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nm_fonte'
          DataSource = DsNota
          UpdateLevel = DetailBandlevel
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsnotanr_fonteVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nr_fonte'
          DataSource = DsNota
          UpdateLevel = DetailBandlevel
          AutoVar = True
          ID = vidAutoDataVar
        end
        object OverlayBandLevel: TSctLevel
          Left = 0
          Top = 0
          Width = 0
          Height = 0
        end
        object adodsnotanr_faturaVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nr_fatura'
          DataSource = DsNota
          UpdateLevel = DetailBandlevel
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsnotanr_adicionalVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nr_adicional'
          DataSource = DsNota
          UpdateLevel = DetailBandlevel
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsnotanr_formularioVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'nr_formulario'
          DataSource = DsNota
          UpdateLevel = DetailBandlevel
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsnotaNr_Altura_ItemVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Nr_Altura_Item'
          DataSource = DsNota
          UpdateLevel = DetailBandlevel
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsnotaTp_NotaVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Tp_Nota'
          DataSource = DsNota
          UpdateLevel = DetailBandlevel
          AutoVar = True
          ID = vidAutoDataVar
        end
        object adodsnotaTp_ServicoVar: TSctDBVar
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          DataField = 'Tp_Servico'
          DataSource = DsNota
          UpdateLevel = DetailBandlevel
          AutoVar = True
          ID = vidAutoDataVar
        end
        object ReportHeaderBand: TSctBand
          Left = 0
          Top = 0
          Width = 866
          Height = 5
          ParentColor = True
          BandName = 'Report Header'
          Updatelevel = ReportHeaderBandlevel
          Visible = False
        end
        object PageHeaderBand: TSctBand
          Left = 0
          Top = 20
          Width = 866
          Height = 1
          ParentColor = True
          BandName = 'Page Header'
          Updatelevel = PageHeaderBandlevel
          Visible = False
        end
        object DetailBand: TSctBand
          Left = 0
          Top = 36
          Width = 866
          Height = 0
          ParentColor = True
          BandName = 'Detail'
          Updatelevel = DetailBandlevel
          Visible = False
        end
        object PageFooterBand: TSctBand
          Left = 0
          Top = 51
          Width = 866
          Height = 0
          ParentColor = True
          BandName = 'Page Footer'
          Updatelevel = PageFooterBandlevel
          Visible = False
        end
        object ReportFooterBand: TSctBand
          Left = 0
          Top = 66
          Width = 866
          Height = 0
          ParentColor = True
          BandName = 'Report Footer'
          Updatelevel = ReportFooterBandlevel
          Visible = False
        end
        object OverlayBand: TSctOverlayBand
          Left = 0
          Top = 81
          Width = 866
          Height = 864
          ParentColor = True
          BandName = 'OverlayBand'
          Updatelevel = OverlayBandLevel
          Stretch = True
          object SctImageLabel1: TSctImageLabel
            Left = 0
            Top = 1
            Width = 21
            Height = 864
            Picture.Data = {binary 6956 bytes}
          end
          object SctImageLabel2: TSctImageLabel
            Left = 0
            Top = 1
            Width = 825
            Height = 17
            Picture.Data = {binary 5493 bytes}
          end
        end
      end
    end
    object BitBtnReport: TBitBtn
      Left = 2
      Top = 465
      Width = 87
      Height = 25
      Caption = '&R'#233'gua'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = BitBtnReportClick
      Glyph.Data = {binary 646 bytes}
    end
  end
  object ADODsCampos: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  Cd_Nota, Cd_Campo, Cd_Grupo, Nm_Campo, Nr_Linha, Nr_Coluna, Nr_Size, St_Campo, Nm_Field'#13#10#13#10'from'#13#10'  Nota_CFG_Campo'#13#10#13#10'where'#13#10'  Cd_Nota = :Cd_Nota'#13#10#13#10'order by'#13#10'  Cd_Grupo, Nm_Campo'
    Parameters = <
      item
        Name = 'Cd_Nota'
        DataType = ftSmallint
        Size = -1
        Value = nil?
      end>
    Left = 169
    Top = 460
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
  end
  object ADOCmdCampo: TMultADOCMD
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLOther0.Strings = (
      '/* Atualiza Linha / Coluna */'
      'update'
      '  Nota_CFG_Campo'
      ''
      'set'
      '  Nr_Linha  = :Nr_Linha,'
      '  Nr_Coluna = :Nr_Coluna'
      ''
      'where'
      '  Cd_Nota  = :Cd_Nota and'
      '  Cd_Campo = :Cd_Campo'
    )
    SQLOther1.Strings = (
      '/* Muda existencia do campo */'
      'update'
      '  Nota_CFG_Campo'
      ''
      'set'
      '  St_Campo = :St_Campo'
      ''
      'where'
      '  Cd_Nota  = :Cd_Nota and'
      '  Cd_Campo = :Cd_Campo'
    )
    SQLOther2.Strings = (
      '/* Atualiza a Fonte sendo utilizada */'
      'update'
      '  Nota_CFG'
      ''
      'set'
      '  Nm_Fonte         = :Nm_Fonte,'
      '  Nr_Fonte         = :Nr_Fonte,'
      '  Nr_Fatura        = :Nr_Fatura,'
      '  Nr_Adicional     = :Nr_Adicional,'
      '  Nr_Formulario    = :Nr_Formulario,'
      '  Nr_Altura_Item   = :Nr_Altura_Item,'
      '  Tp_Nota          = :Tp_Nota,'
      '  Tp_Servico       = :Tp_Servico'
      ''
      'where'
      '  Cd_Nota = :Cd_Nota'
    )
    Left = 199
    Top = 460
  end
  object ADODsNota: TADODataSet
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
    Left = 139
    Top = 460
    object ADODsNotacd_nota: TSmallintField
      FieldName = 'cd_nota'
    end
    object ADODsNotads_nota: TStringField
      FieldName = 'ds_nota'
      Size = 50
    end
    object ADODsNotanm_fonte: TStringField
      FieldName = 'nm_fonte'
      Size = 50
    end
    object ADODsNotanr_fonte: TSmallintField
      FieldName = 'nr_fonte'
    end
    object ADODsNotanr_fatura: TSmallintField
      FieldName = 'nr_fatura'
    end
    object ADODsNotanr_adicional: TSmallintField
      FieldName = 'nr_adicional'
    end
    object ADODsNotanr_formulario: TSmallintField
      FieldName = 'nr_formulario'
    end
    object ADODsNotaNr_Altura_Item: TSmallintField
      FieldName = 'Nr_Altura_Item'
    end
    object ADODsNotaTp_Nota: TStringField
      FieldName = 'Tp_Nota'
      FixedChar = True
      Size = 1
    end
    object ADODsNotaTp_Servico: TStringField
      FieldName = 'Tp_Servico'
      FixedChar = True
      Size = 1
    end
  end
  object DsNota: TDataSource
    DataSet = ADODsNota
    Left = 110
    Top = 460
  end
  object PopMenLabel: TPopupMenu
    Left = 266
    Top = 460
    object HabilitarDesabilitar1: TMenuItem
      Caption = 'Habilitar/Desabilitar'
      OnClick = HabilitarDesabilitar1Click
    end
    object Negrito1: TMenuItem
      Caption = 'Negrito'
    end
  end
  object ADODsSelect: TADODataSet
    Connection = FrmMain.ADOConMaster
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  Cd_Nota, Cd_Campo, Cd_Grupo, Nm_Campo, Nr_Linha, Nr_Coluna, Nr_Size, St_Campo, Nm_Field'#13#10#13#10'from'#13#10'  Nota_CFG_Campo'#13#10#13#10'where'#13#10'  Cd_Nota  = :Cd_Nota and'#13#10'  Cd_Campo = :Cd_Campo'
    Parameters = <
      item
        Name = 'Cd_Nota'
        DataType = ftSmallint
        Size = -1
        Value = nil?
      end
      item
        Name = 'Cd_Campo'
        DataType = ftSmallint
        Size = -1
        Value = nil?
      end>
    Left = 231
    Top = 460
    object ADODsSelectcd_nota: TSmallintField
      FieldName = 'cd_nota'
    end
    object ADODsSelectcd_campo: TSmallintField
      FieldName = 'cd_campo'
    end
    object ADODsSelectcd_grupo: TSmallintField
      FieldName = 'cd_grupo'
    end
    object ADODsSelectnm_campo: TStringField
      FieldName = 'nm_campo'
      Size = 50
    end
    object ADODsSelectnr_linha: TSmallintField
      FieldName = 'nr_linha'
    end
    object ADODsSelectnr_coluna: TSmallintField
      FieldName = 'nr_coluna'
    end
    object ADODsSelectnr_size: TSmallintField
      FieldName = 'nr_size'
    end
    object ADODsSelectst_campo: TStringField
      FieldName = 'st_campo'
      FixedChar = True
      Size = 1
    end
    object ADODsSelectnm_field: TStringField
      FieldName = 'nm_field'
      Size = 50
    end
  end
  object FontDlg: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Device = fdPrinter
    Left = 294
    Top = 460
  end
end
