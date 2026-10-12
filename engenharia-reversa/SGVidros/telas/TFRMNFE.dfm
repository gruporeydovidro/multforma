object FrmNFe: TFrmNFe
  Left = 294
  Top = 173
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'NF-e - Nota Fiscal Eletr'#244'nica...'
  ClientHeight = 577
  ClientWidth = 905
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
    Height = 577
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 884
    Height = 577
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 1
      Top = 546
      Width = 880
      Height = 5
      Shape = bsTopLine
    end
    object ImgLogo: TImage
      Left = 672
      Top = 558
      Width = 25
      Height = 9
      Visible = False
    end
    object Label10: TLabel
      Left = 5
      Top = 511
      Width = 117
      Height = 13
      Caption = 'Data de Processamento:'
    end
    object BitBtnCFG: TBitBtn
      Left = 794
      Top = 549
      Width = 85
      Height = 25
      Caption = 'Confi&gurar'
      PopupMenu = PopMenConfig
      TabOrder = 4
      OnClick = BitBtnCFGClick
      Glyph.Data = {binary 1154 bytes}
    end
    object BitBtnServico: TBitBtn
      Left = 78
      Top = 549
      Width = 126
      Height = 25
      Caption = 'Status do Servi'#231'o'
      TabOrder = 3
      OnClick = BitBtnServicoClick
      Glyph.Data = {binary 1154 bytes}
    end
    object PgCtrlNFe: TPageControl
      Left = 0
      Top = 1
      Width = 881
      Height = 509
      ActivePage = TabSNFe
      TabOrder = 0
      object TabSGerar: TTabSheet
        Caption = '   Notas para Processamento   '
        object Label7: TLabel
          Left = 3
          Top = 318
          Width = 91
          Height = 13
          Caption = 'Erros de valida'#231#227'o:'
        end
        object Label13: TLabel
          Left = 3
          Top = 253
          Width = 72
          Height = 13
          Caption = 'Chave da NFe:'
          FocusControl = DbEdtNr_chNFe2
        end
        object Label17: TLabel
          Left = 301
          Top = 252
          Width = 24
          Height = 13
          Caption = 'Lote:'
          FocusControl = DbEdtId_Lote2
        end
        object SbLote: TSpeedButton
          Left = 460
          Top = 269
          Width = 23
          Height = 19
          Hint = 'Consultar o Lote da NFe'
          Flat = True
          Glyph.Data = {binary 2066 bytes}
          NumGlyphs = 2
          ParentShowHint = False
          ShowHint = True
          OnClick = SbLoteClick
        end
        object DbGOrigem: TDBGrid
          Left = 3
          Top = 3
          Width = 867
          Height = 248
          DataSource = DsOrigem
          FixedColor = clSilver
          Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          PopupMenu = PopMenItem
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDblClick = DbGOrigemDblClick
          OnEnter = DbGOrigemEnter
          OnExit = DbGOrigemExit
          Columns = <
            item
              Alignment = taRightJustify
              Expanded = False
              FieldName = 'Dp_Origem'
              Title.Alignment = taRightJustify
              Width = 78
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Nm_Emitente'
              Width = 510
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Nr_Fatura'
              Title.Alignment = taRightJustify
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Vl_Fatura'
              Title.Alignment = taRightJustify
              Width = 80
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'Dp_Validacao'
              Title.Alignment = taCenter
              Width = 81
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'Dp_Gerar'
              Title.Alignment = taCenter
              Width = 32
              Visible = True
            end>
        end
        object BitBtnGerar: TBitBtn
          Left = 3
          Top = 293
          Width = 75
          Height = 25
          Caption = '&Gerar'
          TabOrder = 1
          OnClick = BitBtnGerarClick
          Glyph.Data = {binary 1338 bytes}
        end
        object DbMMm_Validacao: TDBMemo
          Left = 3
          Top = 333
          Width = 867
          Height = 148
          TabStop = False
          Color = clSilver
          DataField = 'Mm_Validacao'
          DataSource = DsOrigem
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          ScrollBars = ssVertical
          TabOrder = 2
        end
        object BitBtnLoadXML: TBitBtn
          Tag = 1
          Left = 84
          Top = 293
          Width = 195
          Height = 25
          Caption = '&Adicionar Protocolo pelo XML'
          TabOrder = 3
          OnClick = BitBtnLoadXMLClick
          Glyph.Data = {binary 1338 bytes}
        end
        object MemoResp: TMemo
          Left = 400
          Top = 120
          Width = 185
          Height = 89
          Lines.Strings = (
            'MemoResp'
          )
          TabOrder = 4
          Visible = False
        end
        object memoRespWS: TMemo
          Left = 400
          Top = 120
          Width = 185
          Height = 89
          Lines.Strings = (
            'MemoResp'
          )
          TabOrder = 5
          Visible = False
        end
        object DbEdtNr_chNFe2: TDBEdit
          Left = 3
          Top = 268
          Width = 294
          Height = 19
          TabStop = False
          Color = clSilver
          DataField = 'Nr_chNFe'
          DataSource = DsOrigem
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 6
        end
        object DbEdtId_Lote2: TDBEdit
          Left = 301
          Top = 268
          Width = 46
          Height = 19
          TabStop = False
          Color = clSilver
          DataField = 'Id_Lote'
          DataSource = DsOrigem
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 7
        end
        object DbEdtDs_Lote2: TDBEdit
          Left = 349
          Top = 268
          Width = 110
          Height = 19
          TabStop = False
          Color = clSilver
          DataField = 'Ds_Lote'
          DataSource = DsOrigem
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 8
        end
      end
      object TabSNFe: TTabSheet
        Caption = '               Notas Geradas               '
        ImageIndex = 1
        object Label1: TLabel
          Left = 4
          Top = 216
          Width = 72
          Height = 13
          Caption = 'Chave da NFe:'
          FocusControl = DbEdtNr_chNFe
        end
        object Label2: TLabel
          Left = 310
          Top = 215
          Width = 48
          Height = 13
          Caption = 'Protocolo:'
          FocusControl = dbEdtNr_nProt
        end
        object Label3: TLabel
          Left = 414
          Top = 215
          Width = 45
          Height = 13
          Caption = 'Situa'#231#227'o:'
          FocusControl = DbEdtNr_cStat
        end
        object Label4: TLabel
          Left = 4
          Top = 289
          Width = 35
          Height = 13
          Caption = 'Motivo:'
        end
        object Label5: TLabel
          Left = 463
          Top = 215
          Width = 76
          Height = 13
          Caption = 'Processado em:'
          FocusControl = DbEdtDt_DhRecbto
        end
        object Label6: TLabel
          Left = 558
          Top = 215
          Width = 24
          Height = 13
          Caption = 'Lote:'
          FocusControl = DbEdtId_Lote
        end
        object Label8: TLabel
          Left = 4
          Top = 393
          Width = 58
          Height = 13
          Caption = 'Justificativa:'
        end
        object DbGGerado: TDBGrid
          Left = 3
          Top = 3
          Width = 867
          Height = 209
          DataSource = DsGerado
          FixedColor = clSilver
          Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          PopupMenu = PopMenItem
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDblClick = DbGOrigemDblClick
          OnEnter = DbGOrigemEnter
          OnExit = DbGOrigemExit
          Columns = <
            item
              Alignment = taRightJustify
              Expanded = False
              FieldName = 'Dp_Origem'
              Title.Alignment = taRightJustify
              Width = 71
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Nm_Emitente'
              Width = 506
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Nr_Fatura'
              Title.Alignment = taRightJustify
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Vl_Fatura'
              Title.Alignment = taRightJustify
              Width = 80
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'Dp_Situacao'
              Title.Alignment = taCenter
              Visible = True
            end>
        end
        object DbEdtNr_chNFe: TDBEdit
          Left = 4
          Top = 231
          Width = 302
          Height = 19
          TabStop = False
          Color = clSilver
          DataField = 'Nr_chNFe'
          DataSource = DsGerado
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
        end
        object dbEdtNr_nProt: TDBEdit
          Left = 310
          Top = 231
          Width = 100
          Height = 19
          TabStop = False
          Color = clSilver
          DataField = 'Nr_nProt'
          DataSource = DsGerado
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
        end
        object DbEdtNr_cStat: TDBEdit
          Left = 414
          Top = 231
          Width = 46
          Height = 19
          TabStop = False
          Color = clSilver
          DataField = 'Nr_cStat'
          DataSource = DsGerado
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 3
        end
        object DbEdtDt_DhRecbto: TDBEdit
          Left = 463
          Top = 231
          Width = 92
          Height = 19
          TabStop = False
          Color = clSilver
          DataField = 'Dt_DhRecbto'
          DataSource = DsGerado
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 4
        end
        object BitBtnCancel: TBitBtn
          Left = 4
          Top = 254
          Width = 110
          Height = 25
          Caption = '&Cancelar'
          TabOrder = 5
          OnClick = BitBtnCancelClick
          Glyph.Data = {binary 442 bytes}
        end
        object DbMmDs_xMotivo: TDBMemo
          Left = 4
          Top = 304
          Width = 867
          Height = 88
          TabStop = False
          Color = clSilver
          DataField = 'Ds_xMotivo'
          DataSource = DsGerado
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          ScrollBars = ssVertical
          TabOrder = 6
        end
        object DbEdtId_Lote: TDBEdit
          Left = 558
          Top = 231
          Width = 46
          Height = 19
          TabStop = False
          Color = clSilver
          DataField = 'Id_Lote'
          DataSource = DsGerado
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 7
        end
        object BitBtnReport: TBitBtn
          Left = 116
          Top = 254
          Width = 110
          Height = 25
          Caption = '&Imprimir'
          TabOrder = 8
          OnClick = BitBtnReportClick
          Glyph.Data = {binary 1338 bytes}
        end
        object DbMmJustificativa: TDBMemo
          Left = 4
          Top = 408
          Width = 866
          Height = 71
          TabStop = False
          Color = clSilver
          DataField = 'Ds_Justificativa'
          DataSource = DsGerado
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          ScrollBars = ssVertical
          TabOrder = 9
        end
        object DbEdtDs_Lote: TDBEdit
          Left = 606
          Top = 231
          Width = 110
          Height = 19
          TabStop = False
          Color = clSilver
          DataField = 'Ds_Lote'
          DataSource = DsGerado
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 10
        end
        object BitBtnEMail: TBitBtn
          Left = 229
          Top = 254
          Width = 110
          Height = 25
          Caption = '&E-Mail'
          TabOrder = 11
          OnClick = BitBtnEMailClick
          Glyph.Data = {binary 1146 bytes}
        end
        object BitBtnCCe: TBitBtn
          Left = 343
          Top = 254
          Width = 110
          Height = 25
          Caption = 'CCe'
          TabOrder = 12
          OnClick = BitBtnCCeClick
          Glyph.Data = {binary 1146 bytes}
        end
        object BitBtnRecuperar: TBitBtn
          Left = 655
          Top = 254
          Width = 110
          Height = 25
          Caption = 'Recuperar XML'
          TabOrder = 13
          OnClick = BitBtnRecuperarClick
          Glyph.Data = {binary 826 bytes}
        end
        object BitBtnLoadXML2: TBitBtn
          Tag = 2
          Left = 457
          Top = 254
          Width = 195
          Height = 25
          Caption = '&Adicionar Protocolo pelo XML'
          TabOrder = 14
          OnClick = BitBtnLoadXMLClick
          Glyph.Data = {binary 1338 bytes}
        end
      end
      object TabSInutilizada: TTabSheet
        Caption = '     Inutiliza'#231#227'o de Numera'#231#227'o        '
        ImageIndex = 2
        object Label9: TLabel
          Left = 4
          Top = 274
          Width = 48
          Height = 13
          Caption = 'Protocolo:'
          FocusControl = DbEdtNr_nProt_Inutil
        end
        object Label11: TLabel
          Left = 4
          Top = 338
          Width = 35
          Height = 13
          Caption = 'Motivo:'
        end
        object Label12: TLabel
          Left = 109
          Top = 274
          Width = 76
          Height = 13
          Caption = 'Processado em:'
          FocusControl = DbEdtDt_DhRecbto_Inutil
        end
        object DbGInutiliza: TDBGrid
          Left = 4
          Top = 3
          Width = 868
          Height = 270
          DataSource = DsInutiliza
          FixedColor = clSilver
          Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDblClick = DbGOrigemDblClick
          OnEnter = DbGOrigemEnter
          OnExit = DbGOrigemExit
          Columns = <
            item
              Expanded = False
              FieldName = 'Nr_Ano'
              Title.Alignment = taRightJustify
              Width = 34
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Nr_Serie'
              Title.Alignment = taRightJustify
              Width = 32
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Nr_Inicial'
              Title.Alignment = taRightJustify
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Nr_Final'
              Title.Alignment = taRightJustify
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Ds_Justificativa'
              Width = 552
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Nr_nProt'
              Width = 101
              Visible = True
            end>
        end
        object BitBtnInutilizar: TBitBtn
          Left = 4
          Top = 312
          Width = 75
          Height = 25
          Caption = '&Inutilizar'
          TabOrder = 1
          OnClick = BitBtnInutilizarClick
          Glyph.Data = {binary 426 bytes}
        end
        object DbEdtNr_nProt_Inutil: TDBEdit
          Left = 4
          Top = 290
          Width = 100
          Height = 19
          TabStop = False
          Color = clSilver
          DataField = 'Nr_nProt'
          DataSource = DsInutiliza
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
        end
        object DbEdtDt_DhRecbto_Inutil: TDBEdit
          Left = 109
          Top = 290
          Width = 92
          Height = 19
          TabStop = False
          Color = clSilver
          DataField = 'Dt_DhRecbto'
          DataSource = DsInutiliza
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 3
        end
        object DbMDs_xMotivo_Inutil: TDBMemo
          Left = 4
          Top = 354
          Width = 866
          Height = 125
          TabStop = False
          Color = clSilver
          DataField = 'Ds_xMotivo'
          DataSource = DsInutiliza
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          ScrollBars = ssVertical
          TabOrder = 4
        end
      end
    end
    object BitBtnLoad: TBitBtn
      Left = 1
      Top = 549
      Width = 75
      Height = 25
      Caption = '&Atualizar'
      TabOrder = 2
      OnClick = BitBtnLoadClick
      Glyph.Data = {binary 1146 bytes}
    end
    object PnlServico: TPanel
      Left = 210
      Top = 549
      Width = 563
      Height = 21
      BevelOuter = bvNone
      Caption = 'Status dos Servi'#231'os'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold]
      ParentColor = True
      ParentFont = False
      TabOrder = 5
    end
    object EdtDt_Processo: TDateEdit
      Left = 6
      Top = 526
      Width = 90
      Height = 19
      DialogTitle = 'Selecione a Data'
      GlyphKind = gkCustom
      Glyph.Data = {binary 390 bytes}
      NumGlyphs = 1
      StartOfWeek = Sun
      TabOrder = 1
    end
    object WBResposta: TWebBrowser
      Left = 885
      Top = 281
      Width = 287
      Height = 192
      TabOrder = 6
      ControlData = {binary 156 bytes}
    end
  end
  object ADODsCFG: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'select'#13#10'  Cd_Filial, Fl_PastaMensal, Ds_PathCancelar, Nr_Intervalo, Nm_LogoMarca,'#13#10'  Ds_PathDPEC, Ds_PathInu, Ds_PathNFe, Nr_Certificado, Sh_Certificado,'#13#10'  Ds_PathSalvar, Ds_PathSchemas, Fl_Ambiente, Tp_DANFe, Ds_PathPDF,'#13#10'  Nm_DANFe, Nr_Decimais, Ds_Assunto, Mm_EMail, Fl_FormaEmissao, Nr_Copia,'#13#10'  Dt_Contingencia, Ds_Contingencia, Fl_Fonte, Nr_LarguraCodigo, Mm_Certificado,'#13#10'  Im_Logo'#13#10#13#10'from'#13#10'  NFe_CFG'#13#10#13#10'where'#13#10'  Cd_Filial = :Cd_Filial'
    Parameters = <
      item
        Name = 'Cd_Filial'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = nil?
      end>
    Left = 514
    Top = 400
    object ADODsCFGCd_Filial: TSmallintField
      FieldName = 'Cd_Filial'
    end
    object ADODsCFGFl_Ambiente: TStringField
      FieldName = 'Fl_Ambiente'
      FixedChar = True
      Size = 1
    end
    object ADODsCFGTp_DANFe: TStringField
      FieldName = 'Tp_DANFe'
      FixedChar = True
      Size = 1
    end
    object ADODsCFGFl_PastaMensal: TStringField
      FieldName = 'Fl_PastaMensal'
      FixedChar = True
      Size = 1
    end
    object ADODsCFGNr_Certificado: TStringField
      FieldName = 'Nr_Certificado'
      Size = 100
    end
    object ADODsCFGSh_Certificado: TStringField
      FieldName = 'Sh_Certificado'
      Size = 100
    end
    object ADODsCFGDs_PathCancelar: TStringField
      FieldName = 'Ds_PathCancelar'
      Size = 255
    end
    object ADODsCFGDs_PathDPEC: TStringField
      FieldName = 'Ds_PathDPEC'
      Size = 255
    end
    object ADODsCFGDs_PathInu: TStringField
      FieldName = 'Ds_PathInu'
      Size = 255
    end
    object ADODsCFGDs_PathNFe: TStringField
      FieldName = 'Ds_PathNFe'
      Size = 255
    end
    object ADODsCFGDs_PathSalvar: TStringField
      FieldName = 'Ds_PathSalvar'
      Size = 255
    end
    object ADODsCFGDs_PathSchemas: TStringField
      FieldName = 'Ds_PathSchemas'
      Size = 255
    end
    object ADODsCFGDs_PathPDF: TStringField
      FieldName = 'Ds_PathPDF'
      Size = 255
    end
    object ADODsCFGNr_Intervalo: TSmallintField
      FieldName = 'Nr_Intervalo'
    end
    object ADODsCFGNm_LogoMarca: TStringField
      FieldName = 'Nm_LogoMarca'
      Size = 255
    end
    object ADODsCFGNm_DANFe: TStringField
      FieldName = 'Nm_DANFe'
      Size = 255
    end
    object ADODsCFGNr_Decimais: TSmallintField
      FieldName = 'Nr_Decimais'
    end
    object ADODsCFGDs_Assunto: TStringField
      FieldName = 'Ds_Assunto'
      Size = 100
    end
    object ADODsCFGMm_EMail: TMemoField
      FieldName = 'Mm_EMail'
      BlobType = ftMemo
    end
    object ADODsCFGFl_FormaEmissao: TStringField
      FieldName = 'Fl_FormaEmissao'
      FixedChar = True
      Size = 1
    end
    object ADODsCFGNr_Copia: TSmallintField
      FieldName = 'Nr_Copia'
    end
    object ADODsCFGDt_Contingencia: TDateTimeField
      FieldName = 'Dt_Contingencia'
    end
    object ADODsCFGDs_Contingencia: TStringField
      FieldName = 'Ds_Contingencia'
      Size = 256
    end
    object ADODsCFGFl_Fonte: TStringField
      FieldName = 'Fl_Fonte'
      FixedChar = True
      Size = 1
    end
    object ADODsCFGNr_LarguraCodigo: TSmallintField
      FieldName = 'Nr_LarguraCodigo'
    end
    object ADODsCFGMm_Certificado: TMemoField
      FieldName = 'Mm_Certificado'
      BlobType = ftMemo
    end
    object ADODsCFGIm_Logo: TBlobField
      FieldName = 'Im_Logo'
    end
  end
  object DsOrigem: TDataSource
    DataSet = ADODsOrigem
    Left = 60
    Top = 16
  end
  object ADODsOrigem: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    AfterScroll = ADODsOrigemAfterScroll
    OnCalcFields = ADODsOrigemCalcFields
    CommandText = 'select'#13#10' N.Cd_Filial, N.Fl_Origem, N.Nr_Origem, N.Id_Origem, N.St_NFe, N.Dt_NFe,'#13#10' N.Nm_Arquivo, N.Id_Lote, N.Ds_Lote, N.Nr_Recibo, N.Nr_Situacao, N.Ds_Motivo,'#13#10' N.Fl_Gerar, N.Fl_Validacao, N.Mm_Validacao, EM.Nm_Emitente, EM.Ds_EMailNFe,'#13#10' EM.Cd_Emitente, N.Nr_chNFe, N.Nr_cNF,'#13#10#13#10' Nr_Fatura ='#13#10'   case N.Fl_Origem'#13#10'     when ''''1'''' then OT.Nr_Fatura'#13#10'     when ''''2'''' then S.Nr_Fatura'#13#10'     when ''''3'''' then E.Nr_Fatura'#13#10#13#10'   end,'#13#10#13#10' Vl_Fatura ='#13#10'   case N.Fl_Origem'#13#10'     when ''''1'''' then OT.Vl_Orcamento'#13#10'     when ''''2'''' then S.Vl_Nota'#13#10'     when ''''3'''' then E.Vl_Nota'#13#10#13#10'   end'#13#10#13#10'from'#13#10'  NFe N'#13#10#13#10'left join'#13#10'  Orcamento_Total OT'#13#10'on'#13#10'  OT.Cd_Filial    = N.Cd_Filial and'#13#10'  OT.Nr_Orcamento = N.Nr_Origem'#13#10#13#10'left join'#13#10'  Saida S'#13#10'on'#13#10'  S.Cd_Filial    = N.Cd_Filial and'#13#10'  S.Nr_Saida     = N.Nr_Origem'#13#10#13#10'left join'#13#10'  Entrada E'#13#10'on'#13#10'  E.Cd_Filial    = N.Cd_Filial and'#13#10'  E.Nr_Entrada   = N.Nr_Origem'#13#10#13#10'left join'#13#10'  Emitente EM'#13#10'on'#13#10'  EM.Cd_Emitente ='#13#10'   case N.Fl_Origem'#13#10'     when ''''1'''' then OT.Cd_Emitente'#13#10'     when ''''2'''' then S.Cd_Emitente'#13#10'     when ''''3'''' then E.Cd_Emitente'#13#10#13#10'   end'#13#10#13#10'where'#13#10'  N.Cd_Filial = :Cd_Filial and'#13#10'  N.St_NFe    = ''''1'''' and'#13#10'  N.Dt_NFe   >= :Dt_Start and'#13#10'  N.Dt_NFe    < :Dt_End'#13#10#13#10'order by'#13#10'  N.Dt_NFe'
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
    Left = 90
    Top = 16
    object ADODsOrigemCd_Filial: TSmallintField
      FieldName = 'Cd_Filial'
    end
    object ADODsOrigemFl_Origem: TStringField
      FieldName = 'Fl_Origem'
      FixedChar = True
      Size = 1
    end
    object ADODsOrigemNr_Origem: TIntegerField
      FieldName = 'Nr_Origem'
    end
    object ADODsOrigemId_Origem: TSmallintField
      FieldName = 'Id_Origem'
    end
    object ADODsOrigemSt_NFe: TStringField
      FieldName = 'St_NFe'
      FixedChar = True
      Size = 1
    end
    object ADODsOrigemDt_NFe: TDateTimeField
      FieldName = 'Dt_NFe'
    end
    object ADODsOrigemNm_Arquivo: TStringField
      FieldName = 'Nm_Arquivo'
      Size = 255
    end
    object ADODsOrigemId_Lote: TIntegerField
      FieldName = 'Id_Lote'
    end
    object ADODsOrigemDs_Lote: TStringField
      FieldName = 'Ds_Lote'
      Size = 255
    end
    object ADODsOrigemNr_Recibo: TStringField
      FieldName = 'Nr_Recibo'
    end
    object ADODsOrigemNr_Situacao: TStringField
      FieldName = 'Nr_Situacao'
    end
    object ADODsOrigemDs_Motivo: TStringField
      FieldName = 'Ds_Motivo'
      Size = 255
    end
    object ADODsOrigemFl_Gerar: TStringField
      FieldName = 'Fl_Gerar'
      FixedChar = True
      Size = 1
    end
    object ADODsOrigemCd_Emitente: TIntegerField
      FieldName = 'Cd_Emitente'
    end
    object ADODsOrigemNm_Emitente: TStringField
      DisplayLabel = 'Cliente / Fornecedor'
      FieldName = 'Nm_Emitente'
      ReadOnly = True
      Size = 50
    end
    object ADODsOrigemNr_Fatura: TIntegerField
      DisplayLabel = 'Fatura'
      FieldName = 'Nr_Fatura'
      ReadOnly = True
    end
    object ADODsOrigemDp_Origem: TStringField
      DisplayLabel = 'Origem'
      FieldKind = fkCalculated
      FieldName = 'Dp_Origem'
      Calculated = True
    end
    object ADODsOrigemDp_Gerar: TStringField
      DisplayLabel = 'Gerar'
      FieldKind = fkCalculated
      FieldName = 'Dp_Gerar'
      Size = 3
      Calculated = True
    end
    object ADODsOrigemVl_Fatura: TBCDField
      DisplayLabel = 'Valor'
      FieldName = 'Vl_Fatura'
      ReadOnly = True
      DisplayFormat = '#,##0.00'
      Precision = 28
      Size = 9
    end
    object ADODsOrigemFl_Validacao: TStringField
      FieldName = 'Fl_Validacao'
      FixedChar = True
      Size = 1
    end
    object ADODsOrigemMm_Validacao: TMemoField
      FieldName = 'Mm_Validacao'
      BlobType = ftMemo
    end
    object ADODsOrigemDp_Validacao: TStringField
      DisplayLabel = 'Valida'#231#227'o'
      FieldKind = fkCalculated
      FieldName = 'Dp_Validacao'
      Calculated = True
    end
    object ADODsOrigemDs_EMailNFe: TStringField
      FieldName = 'Ds_EMailNFe'
      Size = 100
    end
    object ADODsOrigemNr_chNFe: TStringField
      FieldName = 'Nr_chNFe'
      Size = 255
    end
    object ADODsOrigemNr_cNF: TIntegerField
      FieldName = 'Nr_cNF'
    end
  end
  object ADOCmdGerar: TMultADOCMD
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLOther0.Strings = (
      '--------------- Muda a situa'#231#227'o da gera'#231#227'o'
      'update'
      '  NFe'
      ''
      'set'
      '  Fl_Gerar = :Fl_Gerar'
      ''
      'where'
      '  Cd_Filial = :Cd_Filial and'
      '  Fl_Origem = :Fl_Origem and'
      '  Nr_Origem = :Nr_Origem and'
      '  Id_Origem = :Id_Origem'
    )
    SQLOther1.Strings = (
      '--------------- Grava os dados da NFe gerada'
      'update'
      '  NFe'
      ''
      'set'
      '  St_NFe      = :St_NFe,'
      '  Id_Lote     = :Id_Lote,'
      '  Ds_Lote     = :Ds_Lote,'
      '  Nr_chNFe    = :Nr_chNFe,'
      '  Nr_nProt    = :Nr_nProt,'
      '  Nr_cStat    = :Nr_cStat,'
      '  Ds_xMotivo  = :Ds_xMotivo,'
      '  Dt_DhRecbto = :Dt_DhRecbto,'
      '  Mm_NFe      = :Mm_NFe'
      ''
      'where'
      '  Cd_Filial = :Cd_Filial and'
      '  Fl_Origem = :Fl_Origem and'
      '  Nr_Origem = :Nr_Origem and'
      '  Id_Origem = :Id_Origem'
    )
    SQLOther2.Strings = (
      '--------------- Grava os dados do erro de valida'#231#227'o'
      'update'
      '  NFe'
      ''
      'set'
      '  Fl_Validacao = ''''3'''','
      '  Mm_Validacao = :Mm_Validacao,'
      '  Fl_Gerar     = ''''2'''','
      '  Id_Lote      = :Id_Lote,'
      '  Ds_Lote      = :Ds_Lote,'
      '  Nr_chNFe     = :Nr_chNFe,'
      '  Mm_NFe       = :Mm_NFe'
      ''
      ''
      'where'
      '  Cd_Filial = :Cd_Filial and'
      '  Fl_Origem = :Fl_Origem and'
      '  Nr_Origem = :Nr_Origem and'
      '  Id_Origem = :Id_Origem                        '
    )
    SQLOther3.Strings = (
      '--------------- Cancela a Nota'
      'update'
      '  NFe'
      ''
      'set'
      '  St_NFe           = ''''3'''','
      '  Ds_xMotivo       = :Ds_xMotivo,'
      '  Dt_DhRecbto      = :Dt_DhRecbto,'
      '  Ds_Justificativa = :Ds_Justificativa'
      ''
      'where'
      '  Cd_Filial = :Cd_Filial and'
      '  Fl_Origem = :Fl_Origem and'
      '  Nr_Origem = :Nr_Origem and'
      '  Id_Origem = :Id_Origem'
    )
    SQLOther4.Strings = (
      '--------------- Grava dados da inutiliza'#231#227'o da faixa de numera'#231#227'o'
      'insert into NFe_Inutiliza( Cd_Filial, Nr_Ano, Nr_Serie, Nr_Inicial, Nr_Final,'
      '   Ds_Justificativa, Nr_nProt, Ds_xMotivo, Dt_DhRecbto )'
      '   '
      'values( :Cd_Filial, :Nr_Ano, :Nr_Serie, :Nr_Inicial, :Nr_Final,'
      '   :Ds_Justificativa, :Nr_nProt, :Ds_xMotivo, :Dt_DhRecbto )'
    )
    SQLOther5.Strings = (
      '-------------------- Exclus'#227'o da nota para processamento'
      'delete from'
      '  NFe'
      ''
      'where'
      '  Cd_Filial = :Cd_Filial and'
      '  Fl_Origem = :Fl_Origem and'
      '  Nr_Origem = :Nr_Origem and'
      '  Id_Origem = :Id_Origem'
    )
    SQLOther6.Strings = (
      '-------------------- Informar o cNF do XML'
      'update'
      '  NFe'
      ''
      'set'
      '  Nr_cNF = :Nr_cNF'
      ''
      'where'
      '  Cd_Filial  = :Cd_Filial and'
      '  Fl_Origem  = :Fl_Origem and'
      '  Nr_Origem  = :Nr_Origem and'
      '  Id_Origem  = :Id_Origem'
    )
    SQLOther7.Strings = (
      '--------------- Corrige o valor do ICMS CST 051'
      'update'
      '  Orcamento'
      ''
      'set'
      '  Vl_ICMS = :Vl_ICMS'
      ''
      'where'
      '  Cd_Filial    = :Cd_Filial and'
      '  Nr_Orcamento = :Nr_Orcamento'
    )
    SQLOther8.Strings = (
      '--------------- Gravar o Certificado A1 no banco'
      'update'
      '  NFe_CFG'
      ''
      'set'
      '  Mm_Certificado = :Mm_Certificado'
      ''
      'where'
      '  Cd_Filial = :Cd_Filial'
    )
    Left = 324
    Top = 400
  end
  object DsGerado: TDataSource
    DataSet = ADODsGerado
    Left = 244
    Top = 16
  end
  object ADODsGerado: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    AfterScroll = ADODsGeradoAfterScroll
    OnCalcFields = ADODsGeradoCalcFields
    CommandText = 'select'#13#10'  N.Cd_Filial, N.Fl_Origem, N.Nr_Origem, N.Id_Origem, N.St_NFe, N.Dt_NFe,'#13#10'  N.Nm_Arquivo, N.Id_Lote, N.Ds_Lote, N.Nr_Recibo, N.Nr_Situacao, N.Ds_Motivo,'#13#10'  N.Fl_Gerar, N.Nr_chNFe, N.Nr_nProt, N.Nr_cStat, N.Ds_xMotivo,'#13#10'  N.Dt_DhRecbto, N.Mm_NFe, N.Ds_Justificativa, EM.Nm_Emitente, EM.Ds_EMailNFe,'#13#10'  EM.Cd_Emitente,'#13#10#13#10'  Nr_Fatura ='#13#10'    case N.Fl_Origem'#13#10'      when ''''1'''' then OT.Nr_Fatura'#13#10'      when ''''2'''' then S.Nr_Fatura'#13#10'      when ''''3'''' then E.Nr_Fatura'#13#10#13#10'    end,'#13#10#13#10'  Vl_Fatura ='#13#10'    case N.Fl_Origem'#13#10'      when ''''1'''' then OT.Vl_Orcamento'#13#10'      when ''''2'''' then S.Vl_Nota'#13#10'      when ''''3'''' then E.Vl_Nota'#13#10#13#10'    end,'#13#10#13#10'  Cd_Serie ='#13#10'    case N.Fl_Origem'#13#10'      when ''''1'''' then OT.Cd_Serie'#13#10'      when ''''2'''' then S.Cd_Serie'#13#10'      when ''''3'''' then E.Cd_Serie'#13#10#13#10'    end'#13#10#13#10'from'#13#10'  NFe N'#13#10#13#10'left join'#13#10'  Orcamento_Total OT'#13#10'on'#13#10'  OT.Cd_Filial    = N.Cd_Filial and'#13#10'  OT.Nr_Orcamento = N.Nr_Origem'#13#10#13#10'left join'#13#10'  Saida S'#13#10'on'#13#10'  S.Cd_Filial    = N.Cd_Filial and'#13#10'  S.Nr_Saida     = N.Nr_Origem'#13#10#13#10'left join'#13#10'  Entrada E'#13#10'on'#13#10'  E.Cd_Filial    = N.Cd_Filial and'#13#10'  E.Nr_Entrada   = N.Nr_Origem'#13#10#13#10'left join'#13#10'  Emitente EM'#13#10'on'#13#10'  EM.Cd_Emitente ='#13#10'   case N.Fl_Origem'#13#10'     when ''''1'''' then OT.Cd_Emitente'#13#10'     when ''''2'''' then S.Cd_Emitente'#13#10'     when ''''3'''' then E.Cd_Emitente'#13#10#13#10'   end'#13#10#13#10'where'#13#10'  N.Cd_Filial = :Cd_Filial and'#13#10'  N.St_NFe    > ''''1'''' and'#13#10'  N.Dt_NFe   >= :Dt_Start and'#13#10'  N.Dt_NFe    < :Dt_End'#13#10#13#10'order by'#13#10'  N.Dt_DhRecbto desc'
    Parameters = <
      item
        Name = 'Cd_Filial'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = 9
      end
      item
        Name = 'Dt_Start'
        DataType = ftDateTime
        Precision = 16
        Size = 16
        Value = 36526.0
      end
      item
        Name = 'Dt_End'
        DataType = ftDateTime
        Precision = 16
        Size = 16
        Value = 43831.0
      end>
    Left = 274
    Top = 16
    object ADODsGeradoCd_Filial: TSmallintField
      FieldName = 'Cd_Filial'
    end
    object ADODsGeradoFl_Origem: TStringField
      FieldName = 'Fl_Origem'
      FixedChar = True
      Size = 1
    end
    object ADODsGeradoNr_Origem: TIntegerField
      FieldName = 'Nr_Origem'
    end
    object ADODsGeradoId_Origem: TSmallintField
      FieldName = 'Id_Origem'
    end
    object ADODsGeradoSt_NFe: TStringField
      FieldName = 'St_NFe'
      FixedChar = True
      Size = 1
    end
    object ADODsGeradoDt_NFe: TDateTimeField
      FieldName = 'Dt_NFe'
    end
    object ADODsGeradoNm_Arquivo: TStringField
      FieldName = 'Nm_Arquivo'
      Size = 255
    end
    object ADODsGeradoId_Lote: TIntegerField
      FieldName = 'Id_Lote'
    end
    object ADODsGeradoDs_Lote: TStringField
      FieldName = 'Ds_Lote'
      Size = 255
    end
    object ADODsGeradoNr_Recibo: TStringField
      FieldName = 'Nr_Recibo'
    end
    object ADODsGeradoNr_Situacao: TStringField
      FieldName = 'Nr_Situacao'
    end
    object ADODsGeradoDs_Motivo: TStringField
      FieldName = 'Ds_Motivo'
      Size = 255
    end
    object ADODsGeradoFl_Gerar: TStringField
      FieldName = 'Fl_Gerar'
      FixedChar = True
      Size = 1
    end
    object ADODsGeradoNr_chNFe: TStringField
      FieldName = 'Nr_chNFe'
      EditMask = '9999 9999 9999 9999 9999 9999 9999 9999 9999 9999 9999;0; '
      Size = 255
    end
    object ADODsGeradoNr_nProt: TStringField
      FieldName = 'Nr_nProt'
      Size = 255
    end
    object ADODsGeradoNr_cStat: TSmallintField
      FieldName = 'Nr_cStat'
    end
    object ADODsGeradoDt_DhRecbto: TDateTimeField
      FieldName = 'Dt_DhRecbto'
      DisplayFormat = 'dd/mm/yyyy HH:mm'
    end
    object ADODsGeradoMm_NFe: TMemoField
      FieldName = 'Mm_NFe'
      BlobType = ftMemo
    end
    object ADODsGeradoDs_Justificativa: TStringField
      FieldName = 'Ds_Justificativa'
      Size = 255
    end
    object ADODsGeradoCd_Emitente: TIntegerField
      FieldName = 'Cd_Emitente'
    end
    object ADODsGeradoNm_Emitente: TStringField
      DisplayLabel = 'Cliente / Fornecedor'
      FieldName = 'Nm_Emitente'
      ReadOnly = True
      Size = 50
    end
    object ADODsGeradoNr_Fatura: TIntegerField
      DisplayLabel = 'Fatura'
      FieldName = 'Nr_Fatura'
      ReadOnly = True
    end
    object ADODsGeradoVl_Fatura: TBCDField
      DisplayLabel = 'Valor'
      FieldName = 'Vl_Fatura'
      ReadOnly = True
      DisplayFormat = '#,##0.00'
      Precision = 28
      Size = 9
    end
    object ADODsGeradoDp_Situacao: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldKind = fkCalculated
      FieldName = 'Dp_Situacao'
      Calculated = True
    end
    object ADODsGeradoDp_Origem: TStringField
      DisplayLabel = 'Origem'
      FieldKind = fkCalculated
      FieldName = 'Dp_Origem'
      Calculated = True
    end
    object ADODsGeradoDs_xMotivo: TStringField
      FieldName = 'Ds_xMotivo'
      Size = 255
    end
    object ADODsGeradoDs_EMailNFe: TStringField
      FieldName = 'Ds_EMailNFe'
      Size = 100
    end
    object ADODsGeradoCd_Serie: TStringField
      FieldName = 'Cd_Serie'
      ReadOnly = True
      Size = 3
    end
  end
  object ADODsLote: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'select'#13#10'  Max( Id_Lote ) as NewLote'#13#10#13#10'from'#13#10'  NFe'#13#10#13#10'where'#13#10'  Cd_Filial = :Cd_Filial'#13#10
    Parameters = <
      item
        Name = 'Cd_Filial'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = nil?
      end>
    Left = 484
    Top = 400
    object ADODsLoteNewLote: TIntegerField
      FieldName = 'NewLote'
      ReadOnly = True
    end
  end
  object ACBrNFe: TACBrNFe
    MAIL = ACBrMail
    Configuracoes.Geral.SSLLib = libWinCrypt
    Configuracoes.Geral.SSLCryptLib = cryWinCrypt
    Configuracoes.Geral.SSLHttpLib = httpWinHttp
    Configuracoes.Geral.SSLXmlSignLib = xsLibXml2
    Configuracoes.Geral.FormatoAlerta = 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.'
    Configuracoes.Geral.ValidarDigest = False
    Configuracoes.Geral.VersaoQRCode = veqr000
    Configuracoes.Arquivos.AdicionarLiteral = True
    Configuracoes.Arquivos.OrdenacaoPath = <>
    Configuracoes.Arquivos.EmissaoPathNFe = True
    Configuracoes.Arquivos.PathNFe = 'D:\delphi\ACBr\trunk\ACBrNFePCN\ACBrNFeMonitor\Arqs'
    Configuracoes.Arquivos.PathInu = 'D:\delphi\ACBr\trunk\ACBrNFePCN\ACBrNFeMonitor\Arqs'
    Configuracoes.WebServices.UF = 'MA'
    Configuracoes.WebServices.AguardarConsultaRet = 5000
    Configuracoes.WebServices.Tentativas = 20
    Configuracoes.WebServices.IntervaloTentativas = 3000
    Configuracoes.WebServices.TimeOut = 50000
    Configuracoes.WebServices.TimeOutPorThread = True
    Configuracoes.WebServices.QuebradeLinha = '|'
    Configuracoes.RespTec.IdCSRT = 0
    DANFE = ACBrNFeDANFeRL
    Left = 223
    Top = 384
  end
  object DsInutiliza: TDataSource
    DataSet = ADODsInutiliza
    Left = 412
    Top = 16
  end
  object ADODsInutiliza: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'select'#13#10'  Cd_Filial, Nr_Ano, Nr_Serie, Nr_Inicial, Nr_Final, Ds_Justificativa,'#13#10'  Nr_nProt, Ds_xMotivo, Dt_DhRecbto'#13#10#13#10'from'#13#10'  NFe_Inutiliza'#13#10#13#10'where'#13#10'  Cd_Filial = :Cd_Filial'#13#10#13#10'order by'#13#10'  Nr_Inicial desc'
    Parameters = <
      item
        Name = 'Cd_Filial'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = nil?
      end>
    Left = 444
    Top = 16
    object ADODsInutilizaCd_Filial: TSmallintField
      FieldName = 'Cd_Filial'
    end
    object ADODsInutilizaNr_Ano: TSmallintField
      DisplayLabel = 'Ano'
      FieldName = 'Nr_Ano'
    end
    object ADODsInutilizaNr_Serie: TSmallintField
      DisplayLabel = 'S'#233'rie'
      FieldName = 'Nr_Serie'
    end
    object ADODsInutilizaNr_Inicial: TIntegerField
      DisplayLabel = 'Nota Inicial'
      FieldName = 'Nr_Inicial'
    end
    object ADODsInutilizaNr_Final: TIntegerField
      DisplayLabel = 'Nota Final'
      FieldName = 'Nr_Final'
    end
    object ADODsInutilizaDs_Justificativa: TStringField
      DisplayLabel = 'Justificativa'
      FieldName = 'Ds_Justificativa'
      Size = 255
    end
    object ADODsInutilizaNr_nProt: TStringField
      DisplayLabel = 'Protocolo'
      FieldName = 'Nr_nProt'
      Size = 255
    end
    object ADODsInutilizaDs_xMotivo: TStringField
      FieldName = 'Ds_xMotivo'
      Size = 255
    end
    object ADODsInutilizaDt_DhRecbto: TDateTimeField
      FieldName = 'Dt_DhRecbto'
    end
  end
  object PopMenItem: TPopupMenu
    Left = 224
    Top = 200
    object EmitenteClienteFornecedor1: TMenuItem
      Caption = 'Emitente (Cliente / Fornecedor)'
      OnClick = EmitenteClienteFornecedor1Click
    end
    object OrigemVendaSaidaEntrada1: TMenuItem
      Caption = 'Origem (Venda / Saida / Entrada)'
      OnClick = OrigemVendaSaidaEntrada1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object ItemMenNFeExcluir: TMenuItem
      Caption = 'Excluir Nota para Processamento'
      OnClick = ItemMenNFeExcluirClick
    end
  end
  object OpenDlg: TOpenDialog
    Filter = '*.pas|*.xml'
    Left = 345
    Top = 328
  end
  object ADODsIBPTax: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'select'#13#10'  Cd_NCM, Cd_Ex, Cd_Tabela, Pr_Nacional, Pr_Importado, '#13#10'  Pr_Estadual'#13#10#13#10'from'#13#10'  IBPTax'#13#10#13#10'where'#13#10'  Cd_NCM       = :Cd_NCM and'#13#10'  Cd_Ex        = :Cd_Ex'
    Parameters = <
      item
        Name = 'Cd_NCM'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 9
        Value = '1012100'
      end
      item
        Name = 'Cd_Ex'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 1
        Value = '0'
      end>
    Left = 608
    Top = 400
    object ADODsIBPTaxCd_NCM: TStringField
      FieldName = 'Cd_NCM'
      Size = 9
    end
    object ADODsIBPTaxCd_Ex: TStringField
      FieldName = 'Cd_Ex'
      FixedChar = True
      Size = 1
    end
    object ADODsIBPTaxCd_Tabela: TStringField
      FieldName = 'Cd_Tabela'
      FixedChar = True
      Size = 1
    end
    object ADODsIBPTaxPr_Nacional: TBCDField
      FieldName = 'Pr_Nacional'
      Precision = 7
      Size = 3
    end
    object ADODsIBPTaxPr_Importado: TBCDField
      FieldName = 'Pr_Importado'
      Precision = 7
      Size = 3
    end
    object ADODsIBPTaxPr_Estadual: TBCDField
      FieldName = 'Pr_Estadual'
      Precision = 7
      Size = 3
    end
  end
  object ADOCmdCFG: TADOCommand
    CommandText = 'update'#13#10'  NFe_CFG'#13#10#13#10'set'#13#10'  NM_LogoMarca = :NM_LogoMarca'#13#10#13#10'where'#13#10'  Cd_Filial = :Cd_Filial'
    Connection = FrmMain.ADOConMaster
    Parameters = <
      item
        Name = 'NM_LogoMarca'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 255
        Value = nil?
      end
      item
        Name = 'Cd_Filial'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = nil?
      end>
    Left = 640
    Top = 392
  end
  object ADODsDevolucao: TMultADODS
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'select'#13#10'  refNFe as Nr_Chave, Convert( Int, 0 ) as Nr_CupomFiscal'#13#10#13#10'from'#13#10'  Saida'#13#10#13#10'where'#13#10'  Cd_Filial = :Cd_Filial and'#13#10'  Nr_Saida  = :Nr_Saida'
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
    SQLOther0.Strings = (
      '---------- Saidas'
      'select'
      '  refNFe as Nr_Chave, Convert( Int, 0 ) as Nr_CupomFiscal'
      ''
      'from'
      '  Saida'
      ''
      'where'
      '  Cd_Filial = :Cd_Filial and'
      '  Nr_Saida  = :Nr_Origem'
    )
    SQLOther1.Strings = (
      '---------- Entradas'
      'select'
      '  Nr_chNFe as Nr_Chave, Nr_CupomFiscal'
      ''
      'from'
      '  Entrada'
      ''
      'where'
      '  Cd_Filial  = :Cd_Filial and'
      '  Nr_Entrada = :Nr_Origem'
    )
    Left = 720
    Top = 376
    object ADODsDevolucaoNr_Chave: TStringField
      FieldName = 'Nr_Chave'
      Size = 44
    end
    object ADODsDevolucaoNr_CupomFiscal: TIntegerField
      FieldName = 'Nr_CupomFiscal'
      ReadOnly = True
    end
  end
  object ACBrMail: TACBrMail
    Host = '127.0.0.1'
    Port = '25'
    SetSSL = False
    SetTLS = False
    Attempts = 3
    DefaultCharset = UTF_8
    IDECharset = CP1252
    Left = 296
    Top = 377
  end
  object ADODsContador: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'select'#13#10'  C.Nm_Contador, C.Nr_CPF, C.Nr_CNPJ, C.Nr_CRC, C.Nr_InscEstadual,'#13#10'  C.Ds_Endereco, C.Nm_Bairro, C.Ds_Complemento, C.Cd_Cidade, C.Nr_Cep,'#13#10'  C.Nr_Telefone, C.Nr_Fax, C.Ds_Email, CI.Nm_Cidade, CI.Sg_Estado,'#13#10'  CI.Cd_IBGE, C.Ds_Numero'#13#10#13#10'from'#13#10'  Contador C'#13#10#13#10'inner join'#13#10'  Cidade CI'#13#10'on'#13#10'  CI.Cd_Cidade = C.Cd_Cidade'
    Parameters = <>
    Left = 759
    Top = 510
    object ADODsContadorNm_Contador: TStringField
      FieldName = 'Nm_Contador'
      Size = 50
    end
    object ADODsContadorNr_CPF: TStringField
      FieldName = 'Nr_CPF'
      Size = 11
    end
    object ADODsContadorNr_CNPJ: TStringField
      FieldName = 'Nr_CNPJ'
      Size = 14
    end
    object ADODsContadorNr_CRC: TStringField
      FieldName = 'Nr_CRC'
    end
    object ADODsContadorNr_InscEstadual: TStringField
      FieldName = 'Nr_InscEstadual'
      Size = 18
    end
    object ADODsContadorDs_Endereco: TStringField
      FieldName = 'Ds_Endereco'
      Size = 50
    end
    object ADODsContadorNm_Bairro: TStringField
      FieldName = 'Nm_Bairro'
      Size = 30
    end
    object ADODsContadorDs_Complemento: TStringField
      FieldName = 'Ds_Complemento'
      Size = 30
    end
    object ADODsContadorCd_Cidade: TIntegerField
      FieldName = 'Cd_Cidade'
    end
    object ADODsContadorNr_Cep: TStringField
      FieldName = 'Nr_Cep'
      FixedChar = True
      Size = 8
    end
    object ADODsContadorNr_Telefone: TStringField
      FieldName = 'Nr_Telefone'
      FixedChar = True
      Size = 10
    end
    object ADODsContadorNr_Fax: TStringField
      FieldName = 'Nr_Fax'
      FixedChar = True
      Size = 10
    end
    object ADODsContadorDs_Email: TStringField
      FieldName = 'Ds_Email'
      Size = 50
    end
    object ADODsContadorNm_Cidade: TStringField
      FieldName = 'Nm_Cidade'
      Size = 60
    end
    object ADODsContadorSg_Estado: TStringField
      FieldName = 'Sg_Estado'
      FixedChar = True
      Size = 2
    end
    object ADODsContadorCd_IBGE: TStringField
      FieldName = 'Cd_IBGE'
      Size = 10
    end
    object ADODsContadorDs_Numero: TStringField
      FieldName = 'Ds_Numero'
      Size = 10
    end
  end
  object ACBrNFeDANFeRL: TACBrNFeDANFeRL
    Sistema = 'Desenvolvido por www.multforma.com.br'
    MargemInferior = 8.0
    MargemSuperior = 8.0
    MargemEsquerda = 5.0
    MargemDireita = 5.0
    ExpandeLogoMarcaConfig.Altura = 0
    ExpandeLogoMarcaConfig.Esquerda = 0
    ExpandeLogoMarcaConfig.Topo = 0
    ExpandeLogoMarcaConfig.Largura = 0
    ExpandeLogoMarcaConfig.Dimensionar = False
    ExpandeLogoMarcaConfig.Esticar = True
    CasasDecimais.Formato = tdetInteger
    CasasDecimais.qCom = 2
    CasasDecimais.vUnCom = 2
    CasasDecimais.MaskqCom = ',0.00'
    CasasDecimais.MaskvUnCom = ',0.00'
    CasasDecimais.Aliquota = 2
    CasasDecimais.MaskAliquota = ',0.00'
    ACBrNFe = ACBrNFe
    ExibeCampoFatura = False
    LarguraCodProd = 45
    EspacoEntreProdutos = 5
    AlternaCoresProdutos = True
    Left = 256
    Top = 392
  end
  object PopMenConfig: TPopupMenu
    Images = FrmMain.ImgLstMenu
    Left = 848
    Top = 528
    object ItemMenConfigurarNFe: TMenuItem
      Caption = 'Configurar NF-e...'
      ImageIndex = 10
      OnClick = ItemMenConfigurarNFeClick
    end
    object ItemMenSSLChange: TMenuItem
      Caption = 'Mudar configura'#231#227'o de SSL'
      ImageIndex = 48
      Visible = False
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object ItemMenIndicadordePresenca: TMenuItem
      Caption = 'Indicador de Presen'#231'a'
      ImageIndex = 54
      object ItemMenIPNao: TMenuItem
        Tag = 1
        Caption = 'N'#227'o'
        GroupIndex = 1
        RadioItem = True
        OnClick = ItemMenIPNaoClick
      end
      object ItemMenIPPresencial: TMenuItem
        Tag = 2
        Caption = 'Presencial'
        GroupIndex = 1
        RadioItem = True
        OnClick = ItemMenIPNaoClick
      end
      object ItemMenIPInternet: TMenuItem
        Tag = 3
        Caption = 'Internet'
        GroupIndex = 1
        RadioItem = True
        OnClick = ItemMenIPNaoClick
      end
      object ItemMenIPTeleAtendimento: TMenuItem
        Tag = 4
        Caption = 'Teleatendimento'
        GroupIndex = 1
        RadioItem = True
        OnClick = ItemMenIPNaoClick
      end
      object ItemMenIPEntDomicilio: TMenuItem
        Tag = 5
        Caption = 'Entrega em Domicilio'
        Checked = True
        GroupIndex = 1
        RadioItem = True
        OnClick = ItemMenIPNaoClick
      end
      object ItemMenIPPresForaEst: TMenuItem
        Tag = 6
        Caption = 'Presencial fora do Estabelecimento'
        GroupIndex = 1
        RadioItem = True
        OnClick = ItemMenIPNaoClick
      end
      object ItemMenIPOutros: TMenuItem
        Tag = 7
        Caption = 'Outros'
        GroupIndex = 1
        RadioItem = True
        OnClick = ItemMenIPNaoClick
      end
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object ForarGerarTAGRegeio9381: TMenuItem
      Caption = 'For'#231'ar Gerar TAG Regei'#231#227'o 938'
      object ItemMenTag938_Nunca: TMenuItem
        Tag = 1
        Caption = 'Nunca'
        RadioItem = True
        OnClick = ItemMenTag938_NuncaClick
      end
      object ItemMenTag938_Producao: TMenuItem
        Tag = 2
        Caption = 'Somente Produ'#231#227'o'
        RadioItem = True
        OnClick = ItemMenTag938_NuncaClick
      end
      object ItemMenTag938_Homologacao: TMenuItem
        Tag = 3
        Caption = 'Somente Homologa'#231#227'o'
        RadioItem = True
        OnClick = ItemMenTag938_NuncaClick
      end
      object ItemMenTag938_Sempre: TMenuItem
        Tag = 4
        Caption = 'Sempre'
        RadioItem = True
        OnClick = ItemMenTag938_NuncaClick
      end
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object CertificadoA11: TMenuItem
      Caption = 'Certificado A1'
      ImageIndex = 31
      object ItemMenA1Carregar: TMenuItem
        Caption = 'Carregar...'
        ImageIndex = 16
        OnClick = ItemMenA1CarregarClick
      end
      object ItemMenA1Salvar: TMenuItem
        Caption = 'Salvar em Arquivo...'
        ImageIndex = 33
        OnClick = ItemMenA1SalvarClick
      end
      object ItemMenA1Apagar: TMenuItem
        Caption = 'Apagar...'
        ImageIndex = 32
        OnClick = ItemMenA1ApagarClick
      end
    end
  end
end
