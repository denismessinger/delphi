object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Visualizar Pessoas'
  ClientHeight = 442
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  TextHeight = 15
  object ListBoxPessoas: TListBox
    Left = 0
    Top = 0
    Width = 145
    Height = 442
    Align = alLeft
    ItemHeight = 15
    TabOrder = 0
    OnClick = ListBoxPessoasClick
    ExplicitLeft = -6
  end
  object MemoPessoas: TMemo
    Left = 145
    Top = 0
    Width = 483
    Height = 442
    Align = alClient
    TabOrder = 1
    ExplicitWidth = 479
    ExplicitHeight = 441
  end
end
