object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'OOP'
  ClientHeight = 407
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 100
    Height = 407
    Align = alLeft
    TabOrder = 0
    ExplicitHeight = 406
    object BtnVisualizar: TButton
      AlignWithMargins = True
      Left = 4
      Top = 378
      Width = 92
      Height = 25
      Align = alBottom
      Caption = 'Visualizar'
      TabOrder = 0
      OnClick = BtnVisualizarClick
      ExplicitTop = 377
    end
    object btnInstancia: TButton
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 92
      Height = 25
      Align = alTop
      Caption = 'Inst'#226'ncia'
      TabOrder = 1
      OnClick = btnInstanciaClick
    end
    object PessoaDB: TButton
      AlignWithMargins = True
      Left = 4
      Top = 35
      Width = 92
      Height = 25
      Align = alTop
      Caption = 'Pessoa DB'
      TabOrder = 2
      OnClick = PessoaDBClick
      ExplicitLeft = 19
      ExplicitTop = 64
      ExplicitWidth = 75
    end
  end
  object MemoPrincipal: TMemo
    Left = 100
    Top = 0
    Width = 528
    Height = 407
    Align = alClient
    TabOrder = 1
    ExplicitWidth = 524
    ExplicitHeight = 406
  end
end
