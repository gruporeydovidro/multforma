object FrmCheque_Data: TFrmCheque_Data
  Left = 230
  Top = 251
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Data de Compensa'#231#227'o'
  ClientHeight = 115
  ClientWidth = 662
  Color = clWhite
  Ctl3D = False
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 21
    Height = 115
    Align = alLeft
    TabOrder = 0
  end
  object PnlFundo: TPanel
    Left = 21
    Top = 0
    Width = 641
    Height = 115
    Align = alClient
    ParentColor = True
    TabOrder = 1
    object BvlSeparator: TBevel
      Left = 3
      Top = 85
      Width = 633
      Height = 5
      Shape = bsTopLine
    end
    object Label1: TLabel
      Left = 5
      Top = 5
      Width = 112
      Height = 13
      Caption = 'Data de Compensa'#231#227'o:'
    end
    object LblDevolucao: TLabel
      Left = 5
      Top = 45
      Width = 105
      Height = 13
      Caption = 'Motivo da Devolu'#231#227'o:'
    end
    object BitBtnConfirm: TBitBtn
      Left = 468
      Top = 88
      Width = 85
      Height = 25
      Caption = 'C&onfirmar'
      TabOrder = 2
      OnClick = BitBtnConfirmClick
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object BitBtnCancel: TBitBtn
      Left = 554
      Top = 88
      Width = 85
      Height = 25
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 3
      Glyph.Data = {binary 2066 bytes}
      NumGlyphs = 2
    end
    object EdtDt_Ocorrencia: TDateEdit
      Left = 5
      Top = 20
      Width = 90
      Height = 19
      NumGlyphs = 2
      StartOfWeek = Sun
      TabOrder = 0
    end
    object CbDevolucao: TComboBox
      Left = 5
      Top = 60
      Width = 631
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 1
      Items.Strings = (
        '11 Insufici'#234'ncia de fundos - 1'#170' apresenta'#231#227'o'
        '12 Insufici'#234'ncia de fundos - 2'#170' apresenta'#231#227'o  '
        '13 Conta encerrada  '
        '14 Pr'#225'tica esp'#250'ria (Compromisso Pronto Acolhimento) '
        '20 Folha de cheque cancelada por solicita'#231#227'o do correntista  '
        '21 Contra-ordem ou oposi'#231#227'o ao pagamento  '
        '22 Diverg'#234'ncia ou insufici'#234'ncia de assinatura  '
        '23 Cheques de '#243'rg'#227'os da administra'#231#227'o federal em desacordo com o Decreto-Lei n'#186' 200  '
        '24 Bloqueio judicial ou determina'#231#227'o do BACEN  '
        '25 Cancelamento de talon'#225'rio pelo banco sacado  '
        '26 Inoper'#226'ncia tempor'#225'ria de transporte  '
        '27 Feriado municipal n'#227'o previsto  '
        '28 Contra-ordem ou oposi'#231#227'o ao pagamento motivada por furto ou roubo  '
        '29 Falta de confirma'#231#227'o do recebimento do talon'#225'rio pelo correntista  '
        '30 Furto ou roubo de malotes  '
        '31 Erro formal de preenchimento  '
        '32 Aus'#234'ncia ou irregularidade na aplica'#231#227'o do carimbo de compensa'#231#227'o  '
        '33 Diverg'#234'ncia de endosso'
        '34 Cheque apresentado por estabelecimento que n'#227'o o indicado no cruzamento em preto, sem o endosso-mandato'
        '35 Cheque fraudado, emitido sem pr'#233'vio controle ou responsabilidade do estabelecimento banc'#225'rio ("cheque universal"), ou ainda com adultera'#231#227'o da pra'#231'a sacada'
        '36 Cheque emitido com mais de um endosso - Lei n'#186' 9.311/96'
        '37 Registro inconsistente - CEL'
        '40 Moeda inv'#225'lida'
        '41 Cheque apresentado a banco que n'#227'o o sacado'
        '42 Cheque n'#227'o compens'#225'vel na sess'#227'o ou sistema de compensa'#231#227'o em que apresentado e o recibo banc'#225'rio trocado em sess'#227'o indevida'
        '43 Cheque devolvido anteriormente pelos motivos 21, 22, 23, 24, 31 e 34, persistindo o motivo de devolu'#231#227'o'
        '44 Cheque prescrito'
        '45 Cheque emitido por entidade obrigada a emitir Ordem Banc'#225'ria'
        '46 CR - Comunica'#231#227'o de Remessa cujo cheque correspondente n'#227'o for entregue no prazo devido'
        '47 CR - Comunica'#231#227'o de Remessa com aus'#234'ncia ou inconsist'#234'ncia de dados obrigat'#243'rios'
        '48 Cheque de valor superior a R$ 100,00 sem identifica'#231#227'o do benefici'#225'rio'
        '49 Remessa nula, caracterizada pela reapresenta'#231#227'o de cheque devolvido pelos motivos 12, 13, 14, 20, 25, 28, 30, 35, 43, 44 e 45'
      )
    end
  end
end
