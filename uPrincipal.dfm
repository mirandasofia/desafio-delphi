object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Simulador de Subida da Minhoca'
  ClientHeight = 650
  ClientWidth = 906
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 15
  object Panel3: TPanel
    Left = 0
    Top = 1
    Width = 909
    Height = 656
    TabOrder = 0
    object Bevel2: TBevel
      Left = 438
      Top = 405
      Width = 59
      Height = 2
      Shape = bsBottomLine
    end
    object Bevel3: TBevel
      Left = 438
      Top = 586
      Width = 59
      Height = 31
      Shape = bsBottomLine
    end
    object Bevel1: TBevel
      Left = 438
      Top = 195
      Width = 59
      Height = 31
      Shape = bsTopLine
    end
    object Shape5: TShape
      Left = 40
      Top = 29
      Width = 835
      Height = 44
      Pen.Style = psClear
      Shape = stRoundRect
    end
    object Shape2: TShape
      Left = 584
      Top = 136
      Width = 291
      Height = 217
      Pen.Style = psClear
      Shape = stRoundRect
    end
    object Shape1: TShape
      Left = 40
      Top = 136
      Width = 346
      Height = 300
      Pen.Style = psClear
      Shape = stRoundRect
    end
    object Label8: TLabel
      Left = 143
      Top = 173
      Width = 126
      Height = 21
      Alignment = taCenter
      Caption = 'Configura'#231#245'es'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 453
      Top = 154
      Width = 75
      Height = 21
      Caption = 'Simula'#231#227'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 344
      Top = 41
      Width = 257
      Height = 21
      Alignment = taCenter
      Caption = 'Simulador de Subida da Minhoca'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label11: TLabel
      Left = 91
      Top = 213
      Width = 192
      Height = 15
      Caption = 'Informe os valores para a simula'#231#227'o:'
    end
    object Label4: TLabel
      Left = 123
      Top = 303
      Width = 38
      Height = 15
      Caption = 'Queda:'
    end
    object Label3: TLabel
      Left = 123
      Top = 274
      Width = 43
      Height = 15
      Caption = 'Avan'#231'o:'
    end
    object Label2: TLabel
      Left = 91
      Top = 245
      Width = 75
      Height = 15
      Caption = 'Profundidade:'
    end
    object Label13: TLabel
      Left = 653
      Top = 173
      Width = 164
      Height = 21
      Alignment = taCenter
      Caption = 'Status da simula'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 668
      Top = 211
      Width = 64
      Height = 15
      Caption = 'Altura atual:'
    end
    object lbAltura: TLabel
      Left = 745
      Top = 211
      Width = 26
      Height = 15
      Caption = '0 cm'
    end
    object Label12: TLabel
      Left = 662
      Top = 232
      Width = 70
      Height = 15
      Caption = 'Qtd Subidas: '
    end
    object Label6: TLabel
      Left = 689
      Top = 253
      Width = 43
      Height = 15
      Caption = 'Quedas:'
    end
    object Label7: TLabel
      Left = 693
      Top = 274
      Width = 39
      Height = 15
      Caption = 'Tempo:'
    end
    object lbQuedas: TLabel
      Left = 745
      Top = 253
      Width = 6
      Height = 15
      Caption = '0'
    end
    object lbSubidas: TLabel
      Left = 745
      Top = 232
      Width = 6
      Height = 15
      Caption = '0'
    end
    object lbTempo: TLabel
      Left = 745
      Top = 274
      Width = 11
      Height = 15
      Caption = '0s'
    end
    object Shape3: TShape
      Left = 40
      Top = 452
      Width = 346
      Height = 165
      Pen.Style = psClear
      Shape = stRoundRect
    end
    object Shape4: TShape
      Left = 584
      Top = 372
      Width = 291
      Height = 245
      Pen.Style = psClear
      Shape = stRoundRect
    end
    object Label1: TLabel
      Left = 303
      Top = 79
      Width = 331
      Height = 21
      Alignment = taCenter
      Caption = 'Objetivo: Ajude a minhoca a sair do buraco'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label14: TLabel
      Left = 123
      Top = 469
      Width = 177
      Height = 21
      Alignment = taCenter
      Caption = 'Regras da simula'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Shape6: TShape
      Left = 419
      Top = 195
      Width = 61
      Height = 422
      Brush.Color = clTan
      Pen.Style = psClear
      Shape = stRoundRect
    end
    object Label15: TLabel
      Left = 649
      Top = 393
      Width = 168
      Height = 21
      Alignment = taCenter
      Caption = 'Registro da simula'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label16: TLabel
      Left = 503
      Top = 187
      Width = 26
      Height = 15
      Caption = 'Topo'
    end
    object Label17: TLabel
      Left = 503
      Top = 398
      Width = 27
      Height = 15
      Caption = 'Meio'
    end
    object Label18: TLabel
      Left = 503
      Top = 602
      Width = 34
      Height = 15
      Caption = 'Fundo'
    end
    object btRestaurar: TButton
      Left = 91
      Top = 376
      Width = 236
      Height = 25
      Caption = 'Restaurar padr'#227'o'
      TabOrder = 0
      OnClick = btRestaurarClick
    end
    object teQueda: TEdit
      Left = 172
      Top = 300
      Width = 155
      Height = 23
      TabOrder = 3
      Text = '3'
    end
    object teAvanco: TEdit
      Left = 172
      Top = 271
      Width = 155
      Height = 23
      TabOrder = 2
      Text = '5'
    end
    object teProfundidade: TEdit
      Left = 172
      Top = 242
      Width = 155
      Height = 23
      TabOrder = 1
      Text = '20'
    end
    object Memo1: TMemo
      Left = 64
      Top = 507
      Width = 298
      Height = 97
      BorderStyle = bsNone
      Lines.Strings = (
        '* A minhoca sobe o valor definido por Avan'#231'o cm a '
        'cada tentativa.'
        '* Se n'#227'o sair, ela escorrega, o valor definido pela Queda '
        'cm e aguarda 1 segundo.'
        '* O objetivo '#233' sair do buraco (alcan'#231'ar a Profundidade).')
      TabOrder = 4
    end
    object pBuraco: TPanel
      Left = 428
      Top = 195
      Width = 41
      Height = 422
      BevelOuter = bvNone
      Color = clTan
      ParentBackground = False
      TabOrder = 5
      object minhoca: TShape
        Left = 8
        Top = 404
        Width = 25
        Height = 18
        Brush.Color = clFuchsia
        Pen.Style = psClear
        Shape = stCircle
      end
    end
    object plIniciar: TPanel
      Left = 91
      Top = 345
      Width = 236
      Height = 25
      BevelOuter = bvNone
      Caption = 'Iniciar Simula'#231#227'o'
      Color = clCadetblue
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 6
      OnClick = plIniciarClick
    end
    object btPararSimulacao: TButton
      Left = 620
      Top = 299
      Width = 112
      Height = 25
      Caption = 'Parar simula'#231#227'o'
      TabOrder = 7
      OnClick = btPararSimulacaoClick
    end
    object mRegistro: TMemo
      Left = 600
      Top = 432
      Width = 265
      Height = 153
      TabStop = False
      BorderStyle = bsNone
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 8
    end
    object btRetomar: TButton
      Left = 738
      Top = 299
      Width = 119
      Height = 25
      Caption = 'Retomar simula'#231#227'o'
      TabOrder = 9
      OnClick = btRetomarClick
    end
  end
  object Timer: TTimer
    Enabled = False
    OnTimer = TimerTimer
    Left = 812
    Top = 40
  end
end
