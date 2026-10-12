object FrmInstalacao_Espelho: TFrmInstalacao_Espelho
  Left = 0
  Top = 0
  Caption = 'FrmInstalacao_Espelho'
  ClientHeight = 681
  ClientWidth = 1089
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object RLRepInstalacao: TRLReport
    Left = 16
    Top = 64
    Width = 794
    Height = 1123
    Margins.LeftMargin = 5.0
    Margins.RightMargin = 5.0
    DataSource = DsInstalacao
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    PreviewOptions.FormStyle = fsMDIChild
    PrintDialog = False
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
        Width = 69
        Height = 16
        Caption = 'Instala'#231#227'o'
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
    end
    object RLBdSubTitle: TRLBand
      Left = 19
      Top = 79
      Width = 756
      Height = 73
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
        Width = 70
        Height = 16
        AutoSize = False
        Caption = 'Instala'#231#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLDBText6: TRLDBText
        Left = 76
        Top = 1
        Width = 90
        Height = 16
        DataField = 'Nr_Instalacao'
        DataSource = DsInstalacao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLLabel8: TRLLabel
        Left = 172
        Top = 1
        Width = 57
        Height = 16
        Alignment = taJustify
        AutoSize = False
        Caption = 'Emiss'#227'o:'
        Transparent = False
      end
      object RLDBText7: TRLDBText
        Left = 232
        Top = 1
        Width = 113
        Height = 16
        DataField = 'Dt_Emissao'
        DataSource = DsInstalacao
        Transparent = False
      end
      object RLLabel6: TRLLabel
        Left = 351
        Top = 1
        Width = 78
        Height = 16
        AutoSize = False
        Caption = 'Or'#231'amento:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLDBText8: TRLDBText
        Left = 430
        Top = 1
        Width = 95
        Height = 16
        DataField = 'Nr_Orcamento'
        DataSource = DsInstalacao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLLabel7: TRLLabel
        Left = 526
        Top = 1
        Width = 70
        Height = 16
        Alignment = taJustify
        AutoSize = False
        Caption = 'Agendado:'
        Transparent = False
      end
      object RLDBText9: TRLDBText
        Left = 591
        Top = 1
        Width = 68
        Height = 16
        DataField = 'Dt_Agenda'
        DataSource = DsInstalacao
        Transparent = False
      end
      object RLLabel9: TRLLabel
        Left = 3
        Top = 19
        Width = 53
        Height = 16
        AutoSize = False
        Caption = 'Cliente:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLDBText10: TRLDBText
        Left = 56
        Top = 19
        Width = 84
        Height = 16
        DataField = 'Dp_Emitente'
        DataSource = DsInstalacao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLLabel11: TRLLabel
        Left = 3
        Top = 37
        Width = 56
        Height = 16
        AutoSize = False
        Caption = 'Contato:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLDBText11: TRLDBText
        Left = 59
        Top = 37
        Width = 81
        Height = 16
        DataField = 'Nm_Contato'
        DataSource = DsInstalacao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLLabel12: TRLLabel
        Left = 3
        Top = 54
        Width = 83
        Height = 16
        Alignment = taJustify
        Caption = 'Observa'#231#245'es:'
        Transparent = False
      end
      object RLDBMemo2: TRLDBMemo
        Left = 90
        Top = 54
        Width = 663
        Height = 16
        Behavior = [beSiteExpander]
        DataField = 'Mm_Observacao'
        DataSource = DsInstalacao
        Transparent = False
      end
    end
    object RLBdDetail: TRLBand
      Left = 19
      Top = 224
      Width = 756
      Height = 1
    end
    object RLBand3: TRLBand
      Left = 19
      Top = 497
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
    object RLBand2: TRLBand
      Left = 19
      Top = 152
      Width = 756
      Height = 72
      BandType = btTitle
      object RLLabel13: TRLLabel
        Left = 3
        Top = 3
        Width = 63
        Height = 16
        Caption = 'Endere'#231'o:'
      end
      object RLDBText12: TRLDBText
        Left = 67
        Top = 3
        Width = 82
        Height = 16
        DataField = 'Ds_Endereco'
        DataSource = DsInstalacao
      end
      object RLLabel14: TRLLabel
        Left = 360
        Top = 3
        Width = 22
        Height = 16
        Caption = 'N'#186':'
      end
      object RLDBText13: TRLDBText
        Left = 384
        Top = 3
        Width = 72
        Height = 16
        DataField = 'Ds_Numero'
        DataSource = DsInstalacao
      end
      object RLLabel15: TRLLabel
        Left = 502
        Top = 2
        Width = 88
        Height = 16
        Caption = 'Complemento:'
      end
      object RLDBText14: TRLDBText
        Left = 592
        Top = 3
        Width = 157
        Height = 16
        DataField = 'Ds_Endereco'
        DataSource = DsInstalacao
      end
      object RLLabel16: TRLLabel
        Left = 2
        Top = 20
        Width = 42
        Height = 16
        Caption = 'Bairro:'
      end
      object RLDBText15: TRLDBText
        Left = 46
        Top = 20
        Width = 65
        Height = 16
        DataField = 'Nm_Bairro'
        DataSource = DsInstalacao
      end
      object RLLabel17: TRLLabel
        Left = 347
        Top = 20
        Width = 35
        Height = 16
        Caption = 'CEP:'
      end
      object RLDBText16: TRLDBText
        Left = 383
        Top = 20
        Width = 51
        Height = 16
        DataField = 'Nr_CEP'
        DataSource = DsInstalacao
      end
      object RLLabel18: TRLLabel
        Left = 465
        Top = 19
        Width = 48
        Height = 16
        Caption = 'Cidade:'
      end
      object RLDBText17: TRLDBText
        Left = 515
        Top = 19
        Width = 67
        Height = 16
        DataField = 'Dp_Cidade'
        DataSource = DsInstalacao
      end
      object RLLabel19: TRLLabel
        Left = 2
        Top = 37
        Width = 63
        Height = 16
        Caption = 'Telefones:'
      end
      object RLDBText18: TRLDBText
        Left = 68
        Top = 37
        Width = 100
        Height = 16
        AutoSize = False
        DataField = 'Nr_Telefone_1'
        DataSource = DsInstalacao
      end
      object RLDBText19: TRLDBText
        Left = 174
        Top = 37
        Width = 100
        Height = 16
        AutoSize = False
        DataField = 'Nr_Telefone_2'
        DataSource = DsInstalacao
      end
      object RLDBText20: TRLDBText
        Left = 280
        Top = 37
        Width = 100
        Height = 16
        AutoSize = False
        DataField = 'Nr_Telefone_3'
        DataSource = DsInstalacao
      end
      object RLDBText21: TRLDBText
        Left = 492
        Top = 37
        Width = 100
        Height = 16
        AutoSize = False
        DataField = 'Nr_Celular_2'
        DataSource = DsInstalacao
      end
      object RLDBText22: TRLDBText
        Left = 386
        Top = 37
        Width = 100
        Height = 16
        AutoSize = False
        DataField = 'Nr_Celular_1'
        DataSource = DsInstalacao
      end
      object RLLabel20: TRLLabel
        Left = 3
        Top = 54
        Width = 83
        Height = 16
        Alignment = taJustify
        Caption = 'Observa'#231#245'es:'
        Transparent = False
      end
      object RLDBMemo3: TRLDBMemo
        Left = 90
        Top = 54
        Width = 663
        Height = 16
        Behavior = [beSiteExpander]
        DataField = 'Mm_ObsEndereco'
        DataSource = DsInstalacao
        Transparent = False
      end
    end
    object RLSubDtlInstalador: TRLSubDetail
      Left = 19
      Top = 225
      Width = 756
      Height = 85
      DataSource = DsInstalador
      object RLBand4: TRLBand
        Left = 0
        Top = 0
        Width = 756
        Height = 33
        BandType = btHeader
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        Color = 14803425
        ParentColor = False
        Transparent = False
        object RLLabel5: TRLLabel
          Left = 1
          Top = 0
          Width = 85
          Height = 16
          Caption = 'Instaladores:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLLabel21: TRLLabel
          Left = 32
          Top = 16
          Width = 44
          Height = 16
          Alignment = taRightJustify
          Caption = 'C'#243'digo'
          Transparent = False
        end
        object RLLabel22: TRLLabel
          Left = 79
          Top = 16
          Width = 38
          Height = 16
          Caption = 'Nome'
          Transparent = False
        end
      end
      object RlBdDtlInstalador: TRLBand
        Left = 0
        Top = 33
        Width = 756
        Height = 18
        object RLDBText2: TRLDBText
          Left = 79
          Top = 0
          Width = 38
          Height = 16
          DataField = 'Nm_Funcionario'
          DataSource = DsInstalador
        end
        object RLDBText1: TRLDBText
          Left = 32
          Top = 0
          Width = 44
          Height = 16
          Alignment = taRightJustify
          DataField = 'Cd_Funcionario'
          DataSource = DsInstalador
        end
      end
      object RLBand8: TRLBand
        Left = 0
        Top = 51
        Width = 756
        Height = 15
        BandType = btSummary
      end
    end
    object RLSbuDtlServico: TRLSubDetail
      Left = 19
      Top = 310
      Width = 756
      Height = 91
      DataSource = DsServico
      object RLBand6: TRLBand
        Left = 0
        Top = 0
        Width = 756
        Height = 33
        BandType = btHeader
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        Color = 14803425
        ParentColor = False
        Transparent = False
        object RLLabel23: TRLLabel
          Left = 1
          Top = 0
          Width = 62
          Height = 16
          Caption = 'Servi'#231'os:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLLabel24: TRLLabel
          Left = 47
          Top = 16
          Width = 29
          Height = 16
          Alignment = taRightJustify
          Caption = 'Item'
          Transparent = False
        end
        object RLLabel25: TRLLabel
          Left = 79
          Top = 16
          Width = 87
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'C'#243'digo'
          Transparent = False
        end
        object RLLabel26: TRLLabel
          Left = 169
          Top = 16
          Width = 46
          Height = 16
          Alignment = taRightJustify
          Caption = 'Servi'#231'o'
          Transparent = False
        end
        object RLLabel27: TRLLabel
          Left = 679
          Top = 16
          Width = 74
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Quantidade'
          Transparent = False
        end
      end
      object RlBdDtlServico: TRLBand
        Left = 0
        Top = 33
        Width = 756
        Height = 21
        object RLDBText3: TRLDBText
          Left = 79
          Top = 2
          Width = 87
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'Cd_Produto'
          DataSource = DsServico
        end
        object RLDBText4: TRLDBText
          Left = 47
          Top = 2
          Width = 29
          Height = 16
          Alignment = taRightJustify
          DataField = 'Nr_Servico'
          DataSource = DsServico
        end
        object RLDBText23: TRLDBText
          Left = 169
          Top = 2
          Width = 46
          Height = 16
          DataField = 'Nm_Produto'
          DataSource = DsServico
        end
        object RLDBText24: TRLDBText
          Left = 679
          Top = 2
          Width = 74
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'Qt_Servico'
          DataSource = DsServico
        end
      end
      object RLBand5: TRLBand
        Left = 0
        Top = 54
        Width = 756
        Height = 15
        BandType = btSummary
      end
    end
    object RLSubDtlMaterial: TRLSubDetail
      Left = 19
      Top = 401
      Width = 756
      Height = 96
      DataSource = DsServico
      object RLBand7: TRLBand
        Left = 0
        Top = 0
        Width = 756
        Height = 33
        BandType = btHeader
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        Color = 14803425
        ParentColor = False
        Transparent = False
        object RLLabel28: TRLLabel
          Left = 1
          Top = 0
          Width = 56
          Height = 16
          Caption = 'Material'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLLabel29: TRLLabel
          Left = 47
          Top = 16
          Width = 29
          Height = 16
          Alignment = taRightJustify
          Caption = 'Item'
          Transparent = False
        end
        object RLLabel30: TRLLabel
          Left = 79
          Top = 16
          Width = 87
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'C'#243'digo'
          Transparent = False
        end
        object RLLabel31: TRLLabel
          Left = 169
          Top = 16
          Width = 50
          Height = 16
          Alignment = taRightJustify
          Caption = 'Material'
          Transparent = False
        end
        object RLLabel32: TRLLabel
          Left = 679
          Top = 16
          Width = 74
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Quantidade'
          Transparent = False
        end
      end
      object RLBand9: TRLBand
        Left = 0
        Top = 33
        Width = 756
        Height = 21
        object RLDBText25: TRLDBText
          Left = 79
          Top = 2
          Width = 87
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'Cd_Produto'
          DataSource = DsMaterial
        end
        object RLDBText26: TRLDBText
          Left = 47
          Top = 2
          Width = 29
          Height = 16
          Alignment = taRightJustify
          DataField = 'Nr_Material'
          DataSource = DsMaterial
        end
        object RLDBText27: TRLDBText
          Left = 169
          Top = 2
          Width = 50
          Height = 16
          DataField = 'Nm_Produto'
          DataSource = DsMaterial
        end
        object RLDBText28: TRLDBText
          Left = 679
          Top = 2
          Width = 74
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'Qt_Material'
          DataSource = DsMaterial
        end
      end
      object RLBand10: TRLBand
        Left = 0
        Top = 54
        Width = 756
        Height = 15
        BandType = btFooter
      end
    end
  end
  object ADODsInstalacao: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select'#13#10'  I.Cd_Filial, I.Nr_Instalacao, I.Dt_Emissao, I.St_Instalacao, I.Nr_Orcamento, I.Dt_Agenda,'#13#10'  I.Nm_Contato, I.Mm_Observacao, I.Dt_Instalacao, I.Vl_Comissao, I.Vl_Servico, I.Vl_Material,'#13#10#13#10'  Dp_Emitente = Concat( I.Cd_Emitente, '''' - '''',  I.Nm_Emitente, ''''('''' + I.Nm_Fantasia + '''')'''' ),'#13#10#13#10'  I.Ds_Endereco, I.Ds_Numero, I.Ds_Complemento, I.Nm_Bairro, '#13#10'  Dp_Cidade = I.Nm_Cidade + '''' - '''' + I.Sg_Estado,'#13#10'  I.Nr_CEP, I.Nr_Telefone_1, I.Nr_Telefone_2, I.Nr_Telefone_3, I.Nr_Celular_1,'#13#10'  I.Nr_Celular_2, I.Mm_ObsEndereco,'#13#10#13#10'  I.Nr_Entrega, I.Dt_Entrega, I.Dp_Situacao'#13#10#13#10'from'#13#10'  InstalacaoVw I'#13#10#13#10'where'#13#10'  I.Cd_Filial     = :Cd_Filial and'#13#10'  I.Nr_Instalacao = :Nr_Instalacao'
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
        Name = 'Nr_Instalacao'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = nil?
      end>
    Left = 137
    Top = 3
    object ADODsInstalacaoCd_Filial: TSmallintField
      FieldName = 'Cd_Filial'
    end
    object ADODsInstalacaoNr_Instalacao: TIntegerField
      FieldName = 'Nr_Instalacao'
      DisplayFormat = '#,##0'
    end
    object ADODsInstalacaoDt_Emissao: TDateTimeField
      FieldName = 'Dt_Emissao'
      DisplayFormat = 'dd/mm/yyyy hh:mm'
    end
    object ADODsInstalacaoSt_Instalacao: TStringField
      FieldName = 'St_Instalacao'
      FixedChar = True
      Size = 1
    end
    object ADODsInstalacaoNr_Orcamento: TIntegerField
      FieldName = 'Nr_Orcamento'
      DisplayFormat = '#,##0'
    end
    object ADODsInstalacaoDt_Agenda: TDateTimeField
      FieldName = 'Dt_Agenda'
      DisplayFormat = 'dd/mm/yyyy hh:mm'
    end
    object ADODsInstalacaoNm_Contato: TStringField
      FieldName = 'Nm_Contato'
      Size = 100
    end
    object ADODsInstalacaoMm_Observacao: TMemoField
      FieldName = 'Mm_Observacao'
      BlobType = ftMemo
    end
    object ADODsInstalacaoDt_Instalacao: TDateTimeField
      FieldName = 'Dt_Instalacao'
      DisplayFormat = 'dd/mm/yyyy hh:mm'
    end
    object ADODsInstalacaoDs_Endereco: TStringField
      FieldName = 'Ds_Endereco'
      Size = 50
    end
    object ADODsInstalacaoDs_Complemento: TStringField
      FieldName = 'Ds_Complemento'
      Size = 30
    end
    object ADODsInstalacaoNm_Bairro: TStringField
      FieldName = 'Nm_Bairro'
      Size = 30
    end
    object ADODsInstalacaoNr_CEP: TStringField
      FieldName = 'Nr_CEP'
      EditMask = '#####-###;0; '
      FixedChar = True
      Size = 8
    end
    object ADODsInstalacaoNr_Telefone_1: TStringField
      FieldName = 'Nr_Telefone_1'
      EditMask = '(##) ####-####;0; '
      Size = 10
    end
    object ADODsInstalacaoNr_Telefone_2: TStringField
      FieldName = 'Nr_Telefone_2'
      EditMask = '(##) ####-####;0; '
      Size = 10
    end
    object ADODsInstalacaoNr_Telefone_3: TStringField
      FieldName = 'Nr_Telefone_3'
      EditMask = '(##) ####-####;0; '
      Size = 10
    end
    object ADODsInstalacaoNr_Celular_1: TStringField
      FieldName = 'Nr_Celular_1'
      EditMask = '(##) # ####-####;0; '
      Size = 11
    end
    object ADODsInstalacaoNr_Celular_2: TStringField
      DisplayLabel = 'Nr_Celular_1'
      FieldName = 'Nr_Celular_2'
      EditMask = '(##) # ####-####;0; '
      Size = 11
    end
    object ADODsInstalacaoNr_Entrega: TSmallintField
      FieldName = 'Nr_Entrega'
    end
    object ADODsInstalacaoDt_Entrega: TDateTimeField
      FieldName = 'Dt_Entrega'
      ReadOnly = True
    end
    object ADODsInstalacaoDp_Situacao: TStringField
      FieldName = 'Dp_Situacao'
      ReadOnly = True
      Size = 10
    end
    object ADODsInstalacaoVl_Servico: TBCDField
      FieldName = 'Vl_Servico'
      ReadOnly = True
      Precision = 32
      Size = 2
    end
    object ADODsInstalacaoVl_Material: TBCDField
      FieldName = 'Vl_Material'
      ReadOnly = True
      Precision = 32
      Size = 6
    end
    object ADODsInstalacaoVl_Comissao: TBCDField
      FieldName = 'Vl_Comissao'
      ReadOnly = True
      Precision = 32
      Size = 2
    end
    object ADODsInstalacaoDp_Emitente: TStringField
      FieldName = 'Dp_Emitente'
      ReadOnly = True
      Size = 97
    end
    object ADODsInstalacaoDs_Numero: TStringField
      FieldName = 'Ds_Numero'
      Size = 10
    end
    object ADODsInstalacaoDp_Cidade: TStringField
      FieldName = 'Dp_Cidade'
      ReadOnly = True
      Size = 65
    end
    object ADODsInstalacaoMm_ObsEndereco: TMemoField
      FieldName = 'Mm_ObsEndereco'
      BlobType = ftMemo
    end
  end
  object DsInstalacao: TDataSource
    DataSet = ADODsInstalacao
    Left = 109
    Top = 3
  end
  object ADODsInstalador: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'select'#13#10'  II.Cd_Filial, II.Nr_Instalacao, II.Cd_Funcionario, F.Nm_Funcionario, II.Vl_Comissao'#13#10#13#10'from'#13#10'  Instalacao_Instalador II'#13#10#13#10'inner join'#13#10'  Funcionario F'#13#10'on'#13#10'  F.Cd_Funcionario = II.Cd_Funcionario'#13#10#13#10'where'#13#10'  II.Cd_Filial      = :Cd_Filial and'#13#10'  II.Nr_Instalacao = :Nr_Instalacao'#13#10
    DataSource = DsInstalacao
    MasterFields = 'Cd_Filial;Nr_Instalacao'
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
        Name = 'Nr_Instalacao'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = nil?
      end>
    Left = 197
    Top = 3
    object ADODsInstaladorCd_Filial: TSmallintField
      FieldName = 'Cd_Filial'
    end
    object ADODsInstaladorNr_Instalacao: TIntegerField
      FieldName = 'Nr_Instalacao'
    end
    object ADODsInstaladorCd_Funcionario: TSmallintField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'Cd_Funcionario'
    end
    object ADODsInstaladorNm_Funcionario: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'Nm_Funcionario'
      Size = 50
    end
    object ADODsInstaladorVl_Comissao: TBCDField
      DisplayLabel = 'Comiss'#227'o'
      FieldName = 'Vl_Comissao'
      DisplayFormat = '#,##0.00'
      Precision = 12
      Size = 2
    end
  end
  object DsInstalador: TDataSource
    DataSet = ADODsInstalador
    Left = 168
    Top = 3
  end
  object ADODsServico: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'select'#13#10'  InS.Cd_Filial, InS.Nr_Instalacao, InS.Nr_Servico, InS.Cd_Produto, InS.Nm_Produto,'#13#10'  InS.Qt_Servico, InS.Vl_Servico, InS.Vl_Total'#13#10#13#10'from'#13#10'  Instalacao_ServicoVw InS'#13#10#13#10'where'#13#10'  Ins.Cd_Filial     = :Cd_Filial and'#13#10'  Ins.Nr_Instalacao = :Nr_Instalacao'
    DataSource = DsInstalacao
    MasterFields = 'Cd_Filial;Nr_Instalacao'
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
        Name = 'Nr_Instalacao'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = nil?
      end>
    Left = 257
    Top = 3
    object ADODsServicoCd_Filial: TSmallintField
      FieldName = 'Cd_Filial'
    end
    object ADODsServicoNr_Instalacao: TIntegerField
      FieldName = 'Nr_Instalacao'
    end
    object ADODsServicoNr_Servico: TSmallintField
      DisplayLabel = 'Item'
      FieldName = 'Nr_Servico'
    end
    object ADODsServicoCd_Produto: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'Cd_Produto'
    end
    object ADODsServicoNm_Produto: TStringField
      DisplayLabel = 'Servi'#231'o'
      FieldName = 'Nm_Produto'
      Size = 120
    end
    object ADODsServicoQt_Servico: TSmallintField
      DisplayLabel = 'Quantidade'
      FieldName = 'Qt_Servico'
      DisplayFormat = '#,##0'
    end
    object ADODsServicoVl_Servico: TBCDField
      DisplayLabel = 'Valor'
      FieldName = 'Vl_Servico'
      DisplayFormat = '#,##0.00'
      Precision = 12
      Size = 2
    end
    object ADODsServicoVl_Total: TBCDField
      DisplayLabel = 'Total'
      FieldName = 'Vl_Total'
      ReadOnly = True
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
  end
  object DsServico: TDataSource
    DataSet = ADODsServico
    Left = 228
    Top = 3
  end
  object ADODsMaterial: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    CommandText = 'select'#13#10'  IM.Cd_Filial, IM.Nr_Instalacao, IM.Nr_Material, IM.Cd_Produto, IM.Nm_Produto,'#13#10'  IM.Qt_Material, IM.Vl_Material, IM.Vl_Total'#13#10#13#10'from'#13#10'  Instalacao_MaterialVw IM'#13#10#13#10'where'#13#10'  IM.Cd_Filial     = :Cd_Filial and'#13#10'  IM.Nr_Instalacao = :Nr_Instalacao'
    DataSource = DsInstalacao
    MasterFields = 'Cd_Filial;Nr_Instalacao'
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
        Name = 'Nr_Instalacao'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = nil?
      end>
    Left = 321
    Top = 3
    object ADODsMaterialCd_Filial: TSmallintField
      FieldName = 'Cd_Filial'
    end
    object ADODsMaterialNr_Instalacao: TIntegerField
      FieldName = 'Nr_Instalacao'
    end
    object ADODsMaterialNr_Material: TSmallintField
      DisplayLabel = 'Item'
      FieldName = 'Nr_Material'
    end
    object ADODsMaterialCd_Produto: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'Cd_Produto'
    end
    object ADODsMaterialNm_Produto: TStringField
      DisplayLabel = 'Material'
      FieldName = 'Nm_Produto'
      Size = 120
    end
    object ADODsMaterialQt_Material: TBCDField
      DisplayLabel = 'Quantidade'
      FieldName = 'Qt_Material'
      DisplayFormat = '#,##0.####'
      Precision = 12
    end
    object ADODsMaterialVl_Material: TBCDField
      DisplayLabel = 'Valor'
      FieldName = 'Vl_Material'
      DisplayFormat = '#,##0.00'
      Precision = 12
      Size = 2
    end
    object ADODsMaterialVl_Total: TBCDField
      DisplayLabel = 'Total'
      FieldName = 'Vl_Total'
      ReadOnly = True
      DisplayFormat = '#,##0.00'
      Precision = 25
      Size = 6
    end
  end
  object DsMaterial: TDataSource
    DataSet = ADODsMaterial
    Left = 292
    Top = 3
  end
end
