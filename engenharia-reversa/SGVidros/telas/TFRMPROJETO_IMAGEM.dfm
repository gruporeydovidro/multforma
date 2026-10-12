object FrmProjeto_Imagem: TFrmProjeto_Imagem
  Left = 253
  Top = 164
  Caption = 'Desenho do Projeto'
  ClientHeight = 412
  ClientWidth = 717
  Color = clWindow
  Ctl3D = False
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDefault
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 21
    Height = 412
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 696
    Height = 412
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object SplitterControls: TSplitter
      Left = 171
      Top = 1
      Height = 378
      Color = clBtnFace
      ParentColor = False
    end
    object PnlBottom: TPanel
      Left = 1
      Top = 379
      Width = 694
      Height = 32
      Align = alBottom
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 0
      object BvlSeparator: TBevel
        Left = 15
        Top = 1
        Width = 678
        Height = 5
        Shape = bsTopLine
      end
      object BitBtnConfirm: TBitBtn
        Left = 519
        Top = 4
        Width = 85
        Height = 25
        Caption = 'C&onfirmar'
        TabOrder = 0
        OnClick = BitBtnConfirmClick
        Glyph.Data = {binary 2066 bytes}
        NumGlyphs = 2
      end
      object BitBtnCancel: TBitBtn
        Left = 605
        Top = 4
        Width = 85
        Height = 25
        Caption = '&Cancelar'
        ModalResult = 2
        TabOrder = 1
        OnClick = BitBtnCancelClick
        Glyph.Data = {binary 2066 bytes}
        NumGlyphs = 2
      end
    end
    object PnlControls: TPanel
      Left = 1
      Top = 1
      Width = 170
      Height = 378
      Align = alLeft
      BevelOuter = bvNone
      Constraints.MinWidth = 50
      ParentColor = True
      TabOrder = 1
      object TreeView: TTreeView
        Left = 0
        Top = 0
        Width = 170
        Height = 378
        Align = alClient
        HideSelection = False
        Indent = 19
        ParentColor = True
        ReadOnly = True
        RightClickSelect = True
        TabOrder = 0
        OnDblClick = TreeViewDblClick
        OnEndDrag = TreeViewEndDrag
        OnMouseDown = TreeViewMouseDown
        Items.NodeData = {binary 134 bytes}
      end
    end
    object PnlImage: TPanel
      Left = 174
      Top = 1
      Width = 521
      Height = 378
      Align = alClient
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 2
      object ScrollBoxImagem: TScrollBox
        Left = 0
        Top = 0
        Width = 521
        Height = 378
        HorzScrollBar.Tracking = True
        VertScrollBar.Tracking = True
        Align = alClient
        TabOrder = 0
        object ImgProjeto: TImage
          Left = 0
          Top = 0
          Width = 519
          Height = 376
          AutoSize = True
          OnDragOver = ImgProjetoDragOver
        end
      end
    end
  end
  object AdoDsDados: TMultADODS
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    SQLOther0.Strings = (
      '/* Usado para preencher o TreeView - Somente os Vidros e Ferragens*/'
      'select'
      '  I.Cd_Peca, PPeca.Ds_Peca, PParte.Ds_Parte, P.Nm_Produto, P.Cd_Fabricante,'
      '  I.Cd_Produto, I.Tp_Item, I.Nr_Item, IsNull(PPos.Nr_Posicao, 0) as Nr_Posicao'
      ''
      'from'
      '  Projeto_Item I'
      ''
      'left join'
      '  Projeto_Peca PPeca'
      'on'
      '  PPeca.Cd_Peca = I.Cd_Peca'
      ''
      'left join'
      '  Projeto_Parte PParte'
      'on'
      '  PParte.Cd_Parte = I.Cd_Parte'
      ''
      'left join'
      '  Projeto_Item_Posicao PPos'
      'on'
      '  PPos.Cd_Projeto = I.Cd_Projeto and'
      '  PPos.Nr_Item    = I.Nr_Item and'
      '  PPos.Nr_Posicao = (select'
      '                       Min(PPos2.Nr_Posicao)'
      '                     from'
      '                       Projeto_Item_Posicao PPos2'
      '                     where'
      '                       PPos2.Cd_Projeto = PPos.Cd_Projeto and'
      '                       PPos2.Nr_Item    = PPos.Nr_Item)'
      ''
      'inner join'
      '  Produto P'
      'on'
      '  P.Cd_Produto = I.Cd_Produto'
      '  '
      'where'
      '  I.Cd_Projeto = :Cd_Projeto and'
      '  I.Tp_Item in (0,1) /* Vidro/Ferragem*/'
    )
    SQLOther1.Strings = (
      '/* Adicionar as Partes */'
      'select'
      '  P.Cd_Parte, PP.Ds_Parte, P.Fl_Dimensao, P.Nr_Top, P.Nr_Left,'
      '  (case'
      '    when P.Fl_Dimensao = ''''A'''' then ''''Altura'''
      '    when P.Fl_Dimensao = ''''L'''' then ''''Largura'''
      '    else '''''
      ''
      '  end) as Dp_Dimensao'
      '  '
      'from'
      '  Projeto_Parte_Posicao P'
      '  '
      'inner join'
      '  Projeto_Parte PP'
      'on'
      '  PP.Cd_Parte = P.Cd_Parte'
      ''
      'where'
      '  P.Cd_Projeto = :Cd_Projeto'
    )
    SQLOther2.Strings = (
      '/* Obtem os itens existentes. Usado para controlar qual comando ser'#225' utilizado'
      '    para salvar o item no banco de dados */'
      'select'
      '  Cd_Projeto, Nr_Item, Nr_Posicao'
      '  '
      'from'
      '  Projeto_Item_Posicao'
      ''
      'where'
      '  Cd_Projeto = :Cd_Projeto'
    )
    SQLOther3.Strings = (
      '/* Carregar as labels existentes */'
      'declare @Cd_Projeto int'
      'set @Cd_Projeto = :Cd_Projeto'
      ''
      'select'
      '  Pos.Nr_Top, Pos.Nr_Left, 0 as Cd_Parte, Pos.Nr_Item, Pos.Nr_Posicao,'
      '  P.Tp_Item, '''''' as Fl_Dimensao, P.Cd_Peca, Pr.Cd_Fabricante, '''''' as Ds_Parte'
      '  '
      'from'
      '  Projeto_Item_Posicao Pos'
      '  '
      'inner join'
      '  Projeto_Item P'
      'on'
      '  P.Cd_Projeto = Pos.Cd_Projeto and'
      '  P.Nr_Item    = Pos.Nr_Item'
      ''
      'left join'
      '  Produto Pr'
      'on'
      '  Pr.Cd_Produto = P.Cd_Produto'
      ''
      'where'
      '  Pos.Cd_Projeto = @Cd_Projeto'
      '  '
      'union'
      ''
      'select'
      '  P.Nr_Top, P.Nr_Left, P.Cd_Parte, 0 as Nr_Item, 0 as Nr_Posicao, 9 as Tp_Item,'
      '  P.Fl_Dimensao, ''''0'''' as Cd_Peca, ''''0'''' as Cd_Fabricante, PP.Ds_Parte'
      ''
      'from'
      '  Projeto_Parte_Posicao P'
      ''
      'inner join'
      '  Projeto_Parte PP'
      'on'
      '  PP.Cd_Parte = P.Cd_Parte'
      ''
      'where'
      '  Cd_Projeto = @Cd_Projeto and'
      '  Nr_Top is not null and'
      '  Nr_Left is not null'
    )
    SQLOther4.Strings = (
      '/* Pega a imagem do projeto */'
      'select'
      '  Im_Projeto'
      '  '
      'from'
      '  Projeto'
      '  '
      'where'
      '  Cd_Projeto = :Cd_Projeto'
    )
    Left = 22
    Top = 381
  end
  object PopMenLabel: TPopupMenu
    Left = 87
    Top = 381
    object ItemMenExcluir: TMenuItem
      Caption = 'Excluir'
      OnClick = ItemMenExcluirClick
    end
  end
  object ADOCmdDados: TMultADOCMD
    Connection = FrmMain.ADOConMaster
    Parameters = <>
    Left = 52
    Top = 382
  end
end
