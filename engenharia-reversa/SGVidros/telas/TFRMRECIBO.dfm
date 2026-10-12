object FrmRecibo: TFrmRecibo
  Left = 335
  Top = 332
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Recibo'
  ClientHeight = 196
  ClientWidth = 562
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
  PixelsPerInch = 96
  TextHeight = 13
  object PnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 21
    Height = 196
    Align = alLeft
    TabOrder = 0
  end
  object v: TPanel
    Left = 21
    Top = 0
    Width = 541
    Height = 196
    Align = alClient
    ParentColor = True
    TabOrder = 1
    ExplicitWidth = 542
    object BvlSeparator: TBevel
      Left = 3
      Top = 166
      Width = 533
      Height = 5
      Shape = bsTopLine
    end
    object SbEmitenteR: TSpeedButton
      Tag = 1
      Left = 55
      Top = 18
      Width = 23
      Height = 19
      Hint = 'Seleciona Cliente'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbEmitenteRClick
    end
    object Label10: TLabel
      Left = 5
      Top = 3
      Width = 35
      Height = 13
      Caption = 'Cliente:'
    end
    object Label5: TLabel
      Left = 392
      Top = 3
      Width = 26
      Height = 13
      Caption = 'Data:'
    end
    object Label4: TLabel
      Left = 5
      Top = 38
      Width = 27
      Height = 13
      Caption = 'Valor:'
    end
    object Label1: TLabel
      Left = 110
      Top = 38
      Width = 85
      Height = 13
      Caption = 'Valor por extenso:'
    end
    object Label2: TLabel
      Left = 5
      Top = 99
      Width = 59
      Height = 13
      Caption = 'Referente '#224':'
    end
    object Label3: TLabel
      Left = 487
      Top = 3
      Width = 23
      Height = 13
      Caption = 'Vias:'
    end
    object BitBtnConfirm: TBitBtn
      Left = 368
      Top = 169
      Width = 85
      Height = 25
      Caption = '&Imprimir'
      TabOrder = 7
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 1146 bytes}
    end
    object EdtCd_EmitenteR: TCurrencyEdit
      Tag = 1
      Left = 5
      Top = 18
      Width = 50
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 0
      OnExit = EdtCd_EmitenteRExit
      OnKeyDown = EdtCd_EmitenteRKeyDown
    end
    object EdtNm_EmitenteR: TEdit
      Left = 79
      Top = 18
      Width = 308
      Height = 19
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 50
      ParentFont = False
      TabOrder = 1
    end
    object EdtDt_Recibo: TDateEdit
      Left = 392
      Top = 18
      Width = 90
      Height = 19
      CheckOnExit = True
      DialogTitle = 'Selecione a Data'
      GlyphKind = gkCustom
      Glyph.Data = {binary 1850 bytes}
      NumGlyphs = 1
      StartOfWeek = Sun
      TabOrder = 2
    end
    object EdtVl_Recibo: TRxCalcEdit
      Left = 5
      Top = 52
      Width = 100
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DisplayFormat = '#,##0.00'
      NumGlyphs = 2
      TabOrder = 4
      OnChange = EdtVl_ReciboChange
    end
    object MmExtenso: TMemo
      Left = 110
      Top = 52
      Width = 421
      Height = 48
      ScrollBars = ssVertical
      TabOrder = 5
    end
    object MmReferente: TMemo
      Left = 5
      Top = 113
      Width = 528
      Height = 48
      ScrollBars = ssVertical
      TabOrder = 6
    end
    object SctRecibo: TSctReport
      Left = 11
      Top = 136
      Width = 82
      Height = 44
      HorzScrollBar.Visible = False
      VertScrollBar.Visible = False
      TabOrder = 9
      Visible = False
      Minimized = True
      Prompt = False
      AutoRun = False
      SuppressStatus = False
      PixelsPerInch = 96
      STop = 1
      SLeft = 1
      SWidth = 960
      SHeight = 740
      MTop = 136
      MLeft = 11
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
        PageSetup.Source = psUpper
        PageSetup.Duplex = pdSimplex
        PageSetup.Height = 11.6929133858268
        PageSetup.Width = 8.26771653543307
        PageSetup.PrintQuality = pqHigh
        PageSetup.PreviewSettings.ModalPreview = mpModal
        PageSetup.PreviewSettings.PreviewOwner = poAppOwned
        PageSetup.PreviewSettings.FormStyle = pfsNormal
        BorderType = btNone
        Description = 'Recibo'
        CloseDataSet = False
        DataRange = drAllRecords
        OnDataSkip = ReportPageDataSkip
        OmitLastPgFt = False
        Head = ReportHeaderBand
        Detail = DetailBand
        Foot = ReportFooterBand
        PageHead = PageHeaderBand
        PageFoot = PageFooterBand
        DataSource = DsLogo
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
          DataSource = DmMaster.DsUsuario
        end
        object DataSourceGuide1: TSctDataSourceGuide
          Left = 0
          Top = 0
          Width = 0
          Height = 0
          CreateVariables = False
          UpdateLevel = DetailBandlevel
          DataSource = DmMaster.DsFilial
        end
        object adodsfilialDp_FilialVar: TSctDBVar
          Left = 0
          Top = 160
          Width = 0
          Height = 0
          DataField = 'Dp_Filial'
          DataSource = DmMaster.DsFilial
          UpdateLevel = DetailBandlevel
          AutoVar = False
          ID = vidAutoDataVar
        end
        object ReportHeaderBand: TSctBand
          Left = 0
          Top = 0
          Width = 748
          Height = 21
          ParentColor = True
          BandName = 'Report Header'
          Updatelevel = ReportHeaderBandlevel
          Visible = False
        end
        object PageHeaderBand: TSctBand
          Left = 0
          Top = 36
          Width = 748
          Height = 10
          ParentColor = True
          BandName = 'Page Header'
          Updatelevel = PageHeaderBandlevel
          Visible = False
        end
        object DetailBand: TSctBand
          Left = 0
          Top = 229
          Width = 748
          Height = 347
          ParentColor = True
          BandName = 'Detail'
          Updatelevel = DetailBandlevel
          object SctShape1: TSctShape
            Left = 188
            Top = 129
            Width = 470
            Height = 49
            Brush.Color = 14935258
          end
          object SctTextLabel1: TSctvarlabel
            Left = 72
            Top = 200
            Width = 80
            Height = 19
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Referente '#224
          end
          object SctVarData: TSctvarlabel
            Left = 90
            Top = 283
            Width = 351
            Height = 15
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object SctTextLabel7: TSctvarlabel
            Left = 72
            Top = 144
            Width = 88
            Height = 19
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'A quantia de '
          end
          object SctLblNome: TSctvarlabel
            Left = 152
            Top = 97
            Width = 481
            Height = 19
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            BorderType = btUnderLine
            Caption = 'SctVarNome'
          end
          object SctTextLabel3: TSctvarlabel
            Left = 72
            Top = 97
            Width = 74
            Height = 19
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Receb'#237' de'
          end
          object Sctvarlabel2: TSctvarlabel
            Left = 335
            Top = 310
            Width = 291
            Height = 15
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            AlignHorizontal = laCenter
            Variable = adodsfilialDp_FilialVar
          end
          object SctLine1: TSctLine
            Left = 8
            Top = 320
            Width = 649
            Height = 9
            Pen.Width = 2
          end
          object SctTextLabel4: TSctvarlabel
            Left = 472
            Top = 52
            Width = 42
            Height = 19
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'Valor:'
          end
          object SctLblValor: TSctvarlabel
            Left = 528
            Top = 49
            Width = 113
            Height = 25
            Color = 14935258
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = False
            AlignHorizontal = laCenter
            BorderType = btSingle
            Caption = 'SctLblValor'
          end
          object SctTextLabel2: TSctvarlabel
            Left = 288
            Top = 24
            Width = 80
            Height = 24
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -21
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Caption = 'RECIBO'
          end
          object SctLine5: TSctLine
            Left = 16
            Top = 1
            Width = 649
            Height = 9
            Pen.Width = 2
          end
          object SctVarExtenso: TSctvarlabel
            Left = 190
            Top = 131
            Width = 464
            Height = 49
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            WrapText = True
            Stretch = True
          end
          object SctShape2: TSctShape
            Left = 188
            Top = 185
            Width = 470
            Height = 96
          end
          object SctVarReferente: TSctvarlabel
            Left = 190
            Top = 187
            Width = 464
            Height = 91
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            WrapText = True
            JustifyMemo = True
          end
          object SctLine2: TSctLine
            Left = 335
            Top = 300
            Width = 291
            Height = 7
          end
        end
        object PageFooterBand: TSctBand
          Left = 0
          Top = 591
          Width = 748
          Height = 20
          ParentColor = True
          BandName = 'Page Footer'
          Updatelevel = PageFooterBandlevel
          Visible = False
        end
        object ReportFooterBand: TSctBand
          Left = 0
          Top = 626
          Width = 748
          Height = 20
          ParentColor = True
          BandName = 'Report Footer'
          Updatelevel = ReportFooterBandlevel
          Visible = False
        end
        object DetailBandSub: TSctSubBand
          Left = 0
          Top = 61
          Width = 748
          Height = 153
          ParentColor = True
          BandName = 'DetailBandSub'
          Updatelevel = DetailBandlevel
          Band = DetailBand
          Above = True
          object SctImbLogo: TSctImageLabel
            Left = 90
            Top = 2
            Width = 500
            Height = 150
            Stretch = True
          end
        end
      end
    end
    object EdtNr_Vias: TRxSpinEdit
      Left = 489
      Top = 18
      Width = 42
      Height = 19
      MaxValue = 50.0
      MinValue = 1.0
      Value = 1.0
      TabOrder = 3
    end
    object BitBtnCancel: TBitBtn
      Left = 454
      Top = 169
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 8
      OnClick = BitBtnCancelClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
  end
  object ADODsLogo: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  Im_DupMercantil'#13#10#13#10'from'#13#10'  Filial'#13#10#13#10'where'#13#10'  Cd_Filial = :Cd_Filial'
    Parameters = <
      item
        Name = 'Cd_Filial'
        DataType = ftSmallint
        Size = -1
        Value = nil?
      end>
    Left = 196
    Top = 130
    object ADODsLogoim_dupmercantil: TBlobField
      FieldName = 'im_dupmercantil'
    end
  end
  object DsLogo: TDataSource
    DataSet = ADODsLogo
    Left = 166
    Top = 130
  end
end
