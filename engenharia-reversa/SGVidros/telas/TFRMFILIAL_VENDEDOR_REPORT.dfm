object FrmFilial_Vendedor_Report: TFrmFilial_Vendedor_Report
  Left = 294
  Top = 173
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Rel. Vendas por Filial x Vendedor'
  ClientHeight = 312
  ClientWidth = 815
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
    Height = 312
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 794
    Height = 312
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 1
      Top = 281
      Width = 788
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
    object Label19: TLabel
      Left = 5
      Top = 38
      Width = 91
      Height = 13
      Caption = 'Grupo de Emitente:'
    end
    object SbGrupo: TSpeedButton
      Left = 45
      Top = 52
      Width = 23
      Height = 19
      Hint = 'Consulta Grupo de Emitente'
      Flat = True
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
      OnClick = SbGrupoClick
    end
    object Label20: TLabel
      Left = 323
      Top = 38
      Width = 110
      Height = 13
      Caption = 'SubGrupo de Emitente:'
    end
    object SbSubGrupo: TSpeedButton
      Left = 363
      Top = 52
      Width = 23
      Height = 19
      Hint = 'Consulta SubGrupo de Emitente'
      Flat = True
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
      OnClick = SbSubGrupoClick
    end
    object Label3: TLabel
      Left = 6
      Top = 73
      Width = 49
      Height = 13
      Caption = 'Vendedor:'
    end
    object SbFuncionario: TSpeedButton
      Left = 45
      Top = 88
      Width = 23
      Height = 19
      Hint = 'Seleciona Vendedor'
      Flat = True
      Glyph.Data = {binary 1430 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SbFuncionarioClick
    end
    object SbFile: TSpeedButton
      Tag = 1
      Left = 690
      Top = 86
      Width = 22
      Height = 21
      Hint = 'Escolha o nome do arquivo'
      Flat = True
      Glyph.Data = {binary 378 bytes}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      Visible = False
    end
    object BitBtnCancel: TBitBtn
      Left = 706
      Top = 284
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 10
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
    object EdtCd_Grupo: TCurrencyEdit
      Tag = 1
      Left = 5
      Top = 52
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '###'
      TabOrder = 2
      OnExit = EdtCd_GrupoExit
      OnKeyDown = EdtCd_GrupoKeyDown
    end
    object EdtNm_Grupo: TEdit
      Left = 68
      Top = 52
      Width = 250
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
      TabOrder = 3
    end
    object EdtCd_SubGrupo: TCurrencyEdit
      Tag = 2
      Left = 323
      Top = 52
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '###'
      TabOrder = 4
      OnExit = EdtCd_SubGrupoExit
      OnKeyDown = EdtCd_GrupoKeyDown
    end
    object EdtNm_SubGrupo: TEdit
      Left = 386
      Top = 52
      Width = 250
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
      TabOrder = 5
    end
    object EdtCd_Funcionario: TCurrencyEdit
      Tag = 2
      Left = 5
      Top = 88
      Width = 40
      Height = 19
      Margins.Left = 2
      Margins.Top = 2
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '#,###'
      TabOrder = 6
      OnExit = EdtCd_FuncionarioExit
      OnKeyDown = EdtCd_GrupoKeyDown
    end
    object EdtNm_Funcionario: TEdit
      Left = 68
      Top = 88
      Width = 308
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
    object EdtNm_File: TLabeledEdit
      Left = 382
      Top = 88
      Width = 307
      Height = 19
      EditLabel.Width = 108
      EditLabel.Height = 13
      EditLabel.Caption = 'Nome do arquivo CSV:'
      TabOrder = 8
      Text = 'Ranking de Filial.CSV'
      Visible = False
    end
    object RLRepFilial: TRLReport
      Left = 0
      Top = 313
      Width = 794
      Height = 1123
      Margins.LeftMargin = 5.0
      Margins.RightMargin = 5.0
      DataSource = DsReport
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      PreviewOptions.FormStyle = fsMDIChild
      JobTitle = 'Vendas por Filial x Vendedor'
      Visible = False
      BeforePrint = RLRepFilialBeforePrint
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
          Width = 190
          Height = 16
          Caption = 'Vendas por Filial x Vendedor'
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
        object RLLabel4: TRLLabel
          Left = 3
          Top = 1
          Width = 45
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'C'#243'digo'
          Transparent = False
        end
        object RLLabel5: TRLLabel
          Left = 660
          Top = 1
          Width = 94
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Valor'
          Transparent = False
        end
        object RLLabel7: TRLLabel
          Left = 430
          Top = 1
          Width = 104
          Height = 16
          AutoSize = False
          Caption = 'Nome Abreviado'
          Transparent = False
        end
        object RLLabel8: TRLLabel
          Left = 52
          Top = 1
          Width = 31
          Height = 16
          Caption = 'Filial'
          Transparent = False
        end
        object RLLabel6: TRLLabel
          Left = 608
          Top = 1
          Width = 50
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Vendas'
          Transparent = False
        end
        object RLLabel12: TRLLabel
          Left = 540
          Top = 1
          Width = 64
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Comiss'#227'o'
          Transparent = False
        end
      end
      object RLBdDetail: TRLBand
        Left = 19
        Top = 185
        Width = 756
        Height = 5
      end
      object RLBand3: TRLBand
        Left = 19
        Top = 219
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
      object RLGroup1: TRLGroup
        Left = 19
        Top = 100
        Width = 756
        Height = 85
        DataFields = 'Cd_Filial'
        object RLBand4: TRLBand
          Left = 0
          Top = 0
          Width = 756
          Height = 21
          BandType = btHeader
          Color = 14803425
          ParentColor = False
          Transparent = False
          BeforePrint = RLBand4BeforePrint
          object RLDBText1: TRLDBText
            Left = 3
            Top = 1
            Width = 45
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'Cd_Filial'
            DataSource = DsReport
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
          end
          object RLDBText2: TRLDBText
            Left = 430
            Top = 1
            Width = 174
            Height = 16
            AutoSize = False
            DataField = 'Nm_Abreviado'
            DataSource = DsReport
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
          end
          object RLDBMemo1: TRLDBMemo
            Left = 52
            Top = 1
            Width = 349
            Height = 16
            AutoSize = False
            Behavior = [beSiteExpander]
            DataField = 'Nm_Filial'
            DataSource = DsReport
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
          end
        end
        object RLBdVendedor: TRLBand
          Left = 0
          Top = 21
          Width = 756
          Height = 19
          BeforePrint = RLBdVendedorBeforePrint
          object RLDBMemo2: TRLDBMemo
            Left = 137
            Top = 1
            Width = 344
            Height = 16
            AutoSize = False
            Behavior = [beSiteExpander]
            DataField = 'Dp_Vendedor'
            DataSource = DsReport
          end
          object RLDBText7: TRLDBText
            Left = 608
            Top = 1
            Width = 50
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'Nr_Orcamentos'
            DataSource = DsReport
          end
          object RLDBText8: TRLDBText
            Left = 660
            Top = 1
            Width = 94
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'Vl_Orcamento'
            DataSource = DsReport
          end
          object RLDBText3: TRLDBText
            Left = 510
            Top = 3
            Width = 94
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'Vl_Comissao'
            DataSource = DsReport
          end
        end
        object RLBand6: TRLBand
          Left = 0
          Top = 40
          Width = 756
          Height = 26
          BandType = btSummary
          object RLDBResult2: TRLDBResult
            Left = 660
            Top = 8
            Width = 94
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'Vl_Orcamento'
            DataSource = DsReport
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Info = riSum
            ParentFont = False
          end
          object RLLabel11: TRLLabel
            Left = 401
            Top = 8
            Width = 101
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Total por Filial:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDraw2: TRLDraw
            Left = 384
            Top = 4
            Width = 369
            Height = 1
          end
          object RLDBResult4: TRLDBResult
            Left = 608
            Top = 8
            Width = 50
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'Nr_Orcamentos'
            DataSource = DsReport
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Info = riSum
            ParentFont = False
          end
          object RLDBResult1: TRLDBResult
            Left = 510
            Top = 8
            Width = 94
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'Vl_Comissao'
            DataSource = DsReport
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Info = riSum
            ParentFont = False
          end
        end
      end
      object RLBand2: TRLBand
        Left = 19
        Top = 190
        Width = 756
        Height = 29
        BandType = btSummary
        BeforePrint = RLBand2BeforePrint
        object RLLabel9: TRLLabel
          Left = 401
          Top = 8
          Width = 101
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Total por Geral:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw1: TRLDraw
          Left = 384
          Top = 4
          Width = 369
          Height = 1
        end
        object RLLblNrOrcamento: TRLLabel
          Left = 608
          Top = 8
          Width = 50
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLblVlOrcamento: TRLLabel
          Left = 660
          Top = 8
          Width = 94
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLblComissao: TRLLabel
          Left = 510
          Top = 8
          Width = 94
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
    end
    object BitBtnReport: TBitBtn
      Left = 619
      Top = 284
      Width = 85
      Height = 25
      Caption = '&Imprimir'
      TabOrder = 9
      OnClick = BitBtnReportClick
      Glyph.Data = {binary 1146 bytes}
    end
  end
  object ADODsReport: TMultADODS
    Active = True
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    OnCalcFields = ADODsReportCalcFields
    CommandText = 'select'#13#10'  O.Cd_Filial, F.Nm_Filial, F.Nm_Abreviado, O.Cd_Funcionario, O.Nm_Funcionario,'#13#10'  Fu.Pr_Comissao,'#13#10'  sum( O.Vl_Orcamento ) as Vl_Orcamento,'#13#10'  count( * ) as Nr_Orcamentos'#13#10#13#10'from'#13#10'  Usuario_Filial UF'#13#10#13#10'inner join'#13#10'  Filial F'#13#10'on'#13#10'  F.Cd_Filial = UF.Cd_Filial'#13#10#13#10'inner join'#13#10'  Orcamento_Total O'#13#10'on'#13#10'  O.Cd_Filial    = F.Cd_Filial and'#13#10'  /* Cd_Funcionario */'#13#10'  O.St_Orcamento = ''''9'''' and'#13#10'  O.Dt_Fatura   >= :Dt_Start and'#13#10'  O.Dt_Fatura    < :Dt_End'#13#10#13#10'inner join'#13#10'  Funcionario Fu'#13#10'on'#13#10'  Fu.Cd_Funcionario = O.Cd_Funcionario'#13#10#13#10'inner join'#13#10'  Emitente E'#13#10'on'#13#10'  E.Cd_Emitente = O.Cd_Emitente'#13#10'  /* Cd_Grupo */'#13#10'  /* Cd_SubGrupo */'#13#10#13#10'where'#13#10'  UF.Cd_Usuario = :Cd_Usuario'#13#10#13#10'group by'#13#10'  O.Cd_Filial, F.Nm_Filial, F.Nm_Abreviado, O.Cd_Funcionario, O.Nm_Funcionario, Fu.Pr_Comissao'#13#10#13#10'order by'#13#10'  O.Cd_Filial, F.Nm_Filial, F.Nm_Abreviado, O.Nm_Funcionario, O.Cd_Funcionario'
    Parameters = <
      item
        Name = 'Dt_Start'
        Attributes = [paNullable]
        DataType = ftDateTime
        Precision = 16
        Size = 16
        Value = 44562.0
      end
      item
        Name = 'Dt_End'
        Attributes = [paNullable]
        DataType = ftDateTime
        Precision = 16
        Size = 16
        Value = 44593.0
      end
      item
        Name = 'Cd_Usuario'
        DataType = ftString
        Size = 7
        Value = 'ESTEVAO'
      end>
    SQLOther0.Strings = (
      'select'
      '  O.Cd_Filial, F.Nm_Filial, F.Nm_Abreviado, O.Cd_Funcionario, O.Nm_Funcionario,'
      '  Fu.Pr_Comissao,'
      '  sum( O.Vl_Orcamento ) as Vl_Orcamento,'
      '  count( * ) as Nr_Orcamentos'
      ''
      'from'
      '  Usuario_Filial UF'
      ''
      'inner join'
      '  Filial F'
      'on'
      '  F.Cd_Filial = UF.Cd_Filial'
      ''
      'inner join'
      '  Orcamento_Total O'
      'on'
      '  O.Cd_Filial    = F.Cd_Filial and'
      '  /* Cd_Funcionario */'
      '  O.St_Orcamento = ''''9'''' and'
      '  O.Dt_Fatura   >= :Dt_Start and'
      '  O.Dt_Fatura    < :Dt_End'
      ''
      'inner join'
      '  Funcionario Fu'
      'on'
      '  Fu.Cd_Funcionario = O.Cd_Funcionario'
      ''
      'inner join'
      '  Emitente E'
      'on'
      '  E.Cd_Emitente = O.Cd_Emitente'
      '  /* Cd_Grupo */'
      '  /* Cd_SubGrupo */'
      ''
      'where'
      '  UF.Cd_Usuario = :Cd_Usuario'
      ''
      'group by'
      '  O.Cd_Filial, F.Nm_Filial, F.Nm_Abreviado, O.Cd_Funcionario, O.Nm_Funcionario, Fu.Pr_Comissao'
      ''
      'order by'
      '  O.Cd_Filial, F.Nm_Filial, F.Nm_Abreviado, O.Nm_Funcionario, O.Cd_Funcionario'
    )
    SQLOther1.Strings = (
      ''
    )
    Left = 260
    Top = 169
    object ADODsReportCd_Filial: TSmallintField
      FieldName = 'Cd_Filial'
    end
    object ADODsReportNm_Filial: TStringField
      FieldName = 'Nm_Filial'
      Size = 50
    end
    object ADODsReportNm_Abreviado: TStringField
      FieldName = 'Nm_Abreviado'
    end
    object ADODsReportVl_Orcamento: TBCDField
      FieldName = 'Vl_Orcamento'
      ReadOnly = True
      DisplayFormat = '#,##0.00'
      Precision = 32
      Size = 2
    end
    object ADODsReportNr_Orcamentos: TIntegerField
      FieldName = 'Nr_Orcamentos'
      ReadOnly = True
      DisplayFormat = '#,##0'
    end
    object ADODsReportCd_Funcionario: TSmallintField
      FieldName = 'Cd_Funcionario'
    end
    object ADODsReportNm_Funcionario: TStringField
      FieldName = 'Nm_Funcionario'
      Size = 50
    end
    object ADODsReportDp_Vendedor: TStringField
      FieldKind = fkCalculated
      FieldName = 'Dp_Vendedor'
      Size = 50
      Calculated = True
    end
    object ADODsReportPr_Comissao: TBCDField
      FieldName = 'Pr_Comissao'
      Precision = 7
      Size = 2
    end
    object ADODsReportVl_Comissao: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Vl_Comissao'
      DisplayFormat = '#,##0.00'
      Calculated = True
    end
  end
  object DsReport: TDataSource
    DataSet = ADODsReport
    Left = 230
    Top = 169
  end
end
