object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Exemplo OO2'
  ClientHeight = 442
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 628
    Height = 65
    Align = alTop
    TabOrder = 0
    object BtnCadastro: TButton
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 117
      Height = 57
      Align = alLeft
      Caption = 'Cadastro'
      TabOrder = 0
      OnClick = BtnCadastroClick
      ExplicitLeft = 0
      ExplicitTop = 5
    end
  end
end
