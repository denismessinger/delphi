object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Cadastro'
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
    object BtnBaleia: TButton
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 140
      Height = 57
      Align = alLeft
      Caption = 'Baleia'
      TabOrder = 0
      OnClick = BtnBaleiaClick
    end
    object BtnCachorro: TButton
      AlignWithMargins = True
      Left = 150
      Top = 4
      Width = 140
      Height = 57
      Align = alLeft
      Caption = 'Cachorro'
      TabOrder = 1
      OnClick = BtnCachorroClick
    end
    object BtnMorcego: TButton
      AlignWithMargins = True
      Left = 296
      Top = 4
      Width = 140
      Height = 57
      Align = alLeft
      Caption = 'Morcego'
      TabOrder = 2
      OnClick = BtnMorcegoClick
    end
    object BtnGalinha: TButton
      AlignWithMargins = True
      Left = 442
      Top = 4
      Width = 140
      Height = 57
      Align = alLeft
      Caption = 'Galinha'
      TabOrder = 3
      OnClick = BtnGalinhaClick
    end
  end
end
