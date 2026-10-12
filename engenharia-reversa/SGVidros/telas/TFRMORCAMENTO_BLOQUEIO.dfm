object FrmOrcamento_Bloqueio: TFrmOrcamento_Bloqueio
  Left = 294
  Top = 173
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Bloqueados'
  ClientHeight = 359
  ClientWidth = 774
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 21
    Height = 359
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 753
    Height = 359
    Align = alClient
    ParentColor = True
    TabOrder = 1
    DesignSize = (
      753
      359
    )
    object Label1: TLabel
      Left = 5
      Top = 1
      Width = 89
      Height = 13
      Caption = 'Lista de Bloqueios:'
    end
    object Bevel1: TBevel
      Left = 568
      Top = 13
      Width = 157
      Height = 19
      Anchors = [akLeft]
      Shape = bsFrame
    end
    object Label2: TLabel
      Left = 598
      Top = -1
      Width = 97
      Height = 13
      Caption = ' Motivo do Bloqueio '
    end
    object SbAtualizar: TSpeedButton
      Left = 5
      Top = 328
      Width = 90
      Height = 27
      Caption = '&Atualizar'
      Flat = True
      Glyph.Data = {binary 362 bytes}
      OnClick = SbAtualizarClick
    end
    object SbCredito: TSpeedButton
      Tag = 1
      Left = 95
      Top = 328
      Width = 90
      Height = 27
      Caption = '&Credito'
      Flat = True
      Glyph.Data = {binary 1354 bytes}
      OnClick = SbCreditoClick
    end
    object SbMargem: TSpeedButton
      Tag = 2
      Left = 186
      Top = 328
      Width = 90
      Height = 27
      Caption = '&Margem'
      Flat = True
      Glyph.Data = {binary 1338 bytes}
      OnClick = SbCreditoClick
    end
    object SbEstoque: TSpeedButton
      Tag = 3
      Left = 277
      Top = 328
      Width = 90
      Height = 27
      Caption = '&Estoque'
      Flat = True
      Glyph.Data = {binary 2106 bytes}
      OnClick = SbCreditoClick
    end
    object SbAvulso: TSpeedButton
      Tag = 4
      Left = 368
      Top = 328
      Width = 90
      Height = 27
      Caption = 'A&vulso'
      Flat = True
      Glyph.Data = {binary 378 bytes}
      OnClick = SbCreditoClick
    end
    object SbTodos: TSpeedButton
      Left = 584
      Top = 328
      Width = 161
      Height = 27
      Caption = 'Liberar &todos os Bloqueios'
      Flat = True
      Glyph.Data = {binary 378 bytes}
      OnClick = SbTodosClick
    end
    object DbGBloqueio: TDBGrid
      Left = 5
      Top = 17
      Width = 740
      Height = 304
      DataSource = DsBloqueio
      FixedColor = clSilver
      Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = DbGBloqueioDblClick
      OnEnter = DbGBloqueioEnter
      OnExit = DbGBloqueioExit
      Columns = <
        item
          Expanded = False
          FieldName = 'Nr_Orcamento'
          Title.Alignment = taRightJustify
          Width = 59
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nm_Emitente'
          Width = 264
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nm_Funcionario'
          Width = 174
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Vl_Orcamento'
          Title.Alignment = taRightJustify
          Width = 61
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Ds_Credito'
          Title.Alignment = taCenter
          Width = 40
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Ds_Margem'
          Title.Alignment = taCenter
          Width = 40
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Ds_Estoque'
          Title.Alignment = taCenter
          Width = 40
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Ds_Avulso'
          Title.Alignment = taCenter
          Width = 40
          Visible = True
        end>
    end
  end
  object ADODsBloqueio: TADODataSet
    Connection = FrmMain.ADOConMaster
    CursorType = ctStatic
    AfterScroll = ADODsBloqueioAfterScroll
    CommandText = 'select'#13#10'  OT.Cd_Filial, OT.Nr_Orcamento, OT.Cd_Emitente, OT.Nm_Emitente,'#13#10'  OT.Dt_Confirmado, OT.Dt_Emissao, OT.Nm_Funcionario, OT.Vl_Orcamento,'#13#10'  Ds_Credito ='#13#10'    ( case'#13#10'        when exists('#13#10'          select'#13#10'            OB.Cd_Filial'#13#10#13#10'          from'#13#10'            Orcamento_Bloqueio OB'#13#10#13#10'          where'#13#10'            OB.Cd_Filial    = OT.Cd_Filial and'#13#10'            OB.Nr_Orcamento = OT.Nr_Orcamento and'#13#10'            OB.Tp_Bloqueio  = ''''1'''' and'#13#10'            OB.St_Bloqueio  = ''''1'''' ) then ''''Sim'''#13#10'      end'#13#10'    ),'#13#10#13#10'  Ds_Margem ='#13#10'    ( case'#13#10'        when exists('#13#10'          select'#13#10'            OB.Cd_Filial'#13#10#13#10'          from'#13#10'            Orcamento_Bloqueio OB'#13#10#13#10'          where'#13#10'            OB.Cd_Filial    = OT.Cd_Filial and'#13#10'            OB.Nr_Orcamento = OT.Nr_Orcamento and'#13#10'            OB.Tp_Bloqueio  = ''''2'''' and'#13#10'            OB.St_Bloqueio  = ''''1'''' ) then ''''Sim'''#13#10'      end'#13#10'    ),'#13#10#13#10'  Ds_Estoque ='#13#10'    ( case'#13#10'        when exists('#13#10'          select'#13#10'            OB.Cd_Filial'#13#10#13#10'          from'#13#10'            Orcamento_Bloqueio OB'#13#10#13#10'          where'#13#10'            OB.Cd_Filial    = OT.Cd_Filial and'#13#10'            OB.Nr_Orcamento = OT.Nr_Orcamento and'#13#10'            OB.Tp_Bloqueio  = ''''3'''' and'#13#10'            OB.St_Bloqueio  = ''''1'''' ) then ''''Sim'''#13#10'      end'#13#10'    ),'#13#10#13#10'  Ds_Avulso ='#13#10'    ( case'#13#10'        when exists('#13#10'          select'#13#10'            OB.Cd_Filial'#13#10#13#10'          from'#13#10'            Orcamento_Bloqueio OB'#13#10#13#10'          where'#13#10'            OB.Cd_Filial    = OT.Cd_Filial and'#13#10'            OB.Nr_Orcamento = OT.Nr_Orcamento and'#13#10'            OB.Tp_Bloqueio  = ''''4'''' and'#13#10'            OB.St_Bloqueio  = ''''1'''' ) then ''''Sim'''#13#10'      end'#13#10'    )'#13#10#13#10'from'#13#10'  Orcamento_Total OT'#13#10#13#10'where'#13#10'  OT.Cd_Filial    = :Cd_Filial and'#13#10'  OT.St_Orcamento = ''''3'''#13#10#13#10'order by'#13#10'  OT.Cd_Filial, OT.Nr_Orcamento'
    Parameters = <
      item
        Name = 'Cd_Filial'
        Size = -1
        Value = nil?
      end>
    Left = 347
    Top = 240
    object ADODsBloqueioCd_Filial: TSmallintField
      FieldName = 'Cd_Filial'
    end
    object ADODsBloqueioNr_Orcamento: TIntegerField
      DisplayLabel = 'Or'#231'amento'
      FieldName = 'Nr_Orcamento'
      DisplayFormat = '#,###'
    end
    object ADODsBloqueioCd_Emitente: TIntegerField
      FieldName = 'Cd_Emitente'
    end
    object ADODsBloqueioNm_Emitente: TStringField
      DisplayLabel = 'Cliente'
      FieldName = 'Nm_Emitente'
      Size = 50
    end
    object ADODsBloqueioDt_Confirmado: TDateTimeField
      FieldName = 'Dt_Confirmado'
    end
    object ADODsBloqueioDt_Emissao: TDateTimeField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'Dt_Emissao'
    end
    object ADODsBloqueioNm_Funcionario: TStringField
      DisplayLabel = 'Vendedor'
      FieldName = 'Nm_Funcionario'
      Size = 50
    end
    object ADODsBloqueioVl_Orcamento: TBCDField
      DisplayLabel = 'Valor'
      FieldName = 'Vl_Orcamento'
      ReadOnly = True
      DisplayFormat = '#,##0.00'
      Precision = 28
      Size = 9
    end
    object ADODsBloqueioDs_Credito: TStringField
      DisplayLabel = 'Credito'
      FieldName = 'Ds_Credito'
      ReadOnly = True
      Size = 3
    end
    object ADODsBloqueioDs_Margem: TStringField
      DisplayLabel = 'Margem'
      FieldName = 'Ds_Margem'
      ReadOnly = True
      Size = 3
    end
    object ADODsBloqueioDs_Estoque: TStringField
      DisplayLabel = 'Estoque'
      FieldName = 'Ds_Estoque'
      ReadOnly = True
      Size = 3
    end
    object ADODsBloqueioDs_Avulso: TStringField
      DisplayLabel = 'Avulso'
      FieldName = 'Ds_Avulso'
      ReadOnly = True
      Size = 3
    end
  end
  object DsBloqueio: TDataSource
    DataSet = ADODsBloqueio
    Left = 317
    Top = 240
  end
  object ADOCmdBloqueio: TMultADOCMD
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLOther0.Strings = (
      'declare'
      '  @Cd_Filial SmallInt,'
      '  @Nr_Orcamento Int,'
      '  @Dt_Processo SmallDateTime'
      ''
      'select'
      '  @Cd_Filial    = :Cd_Filial,'
      '  @Nr_Orcamento = :Nr_Orcamento,'
      '  @Dt_Processo  = :Dt_Processo'
      ''
      '--------------- Retira o bloqueio'
      'update'
      '  Orcamento_Bloqueio'
      ''
      'set'
      '  St_Bloqueio    = ''''2'''','
      '  Cd_Desbloqueio = :Cd_Desbloqueio,'
      '  Dt_Desbloqueio = @Dt_Processo'
      ''
      'where'
      '  Cd_Filial    = @Cd_Filial and'
      '  Nr_Orcamento = @Nr_Orcamento and'
      '  Tp_Bloqueio  = :Tp_Bloqueio and'
      '  St_Bloqueio  = ''''1'''
      ''
      '--------------- Verifica se n'#227'o existem mais bloqueios e libera o pedido'
      'if not exists('
      '   select'
      '     Cd_Filial'
      ''
      '   from'
      '     Orcamento_Bloqueio'
      ''
      '   where'
      '     Cd_Filial    = @Cd_Filial and'
      '     Nr_Orcamento = @Nr_Orcamento and'
      '     St_Bloqueio  = ''''1'''
      '   )'
      '  execute Orcamento_Situacao @Cd_Filial, @Nr_Orcamento, :St_New, :St_Old, @Dt_Processo'
      ''
    )
    Left = 376
    Top = 240
  end
end
