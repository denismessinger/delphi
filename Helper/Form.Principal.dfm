object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Helpers'
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
    Height = 41
    Align = alTop
    TabOrder = 0
    ExplicitLeft = 8
    ExplicitTop = 8
    object BtnReverse: TButton
      AlignWithMargins = True
      Left = 520
      Top = 4
      Width = 104
      Height = 33
      Align = alRight
      Caption = 'Reverter String'
      TabOrder = 0
      OnClick = BtnReverseClick
    end
    object BtnAviso: TButton
      AlignWithMargins = True
      Left = 439
      Top = 4
      Width = 75
      Height = 33
      Align = alRight
      Caption = 'Aviso'
      TabOrder = 1
      OnClick = BtnAvisoClick
      ExplicitLeft = 400
      ExplicitTop = 16
      ExplicitHeight = 25
    end
    object BtnUnzip: TButton
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 75
      Height = 33
      Align = alLeft
      Caption = 'UnZip'
      TabOrder = 2
      OnClick = BtnUnzipClick
      ExplicitLeft = 320
      ExplicitTop = 8
      ExplicitHeight = 25
    end
    object BtnZip: TButton
      AlignWithMargins = True
      Left = 85
      Top = 4
      Width = 75
      Height = 33
      Align = alLeft
      Caption = 'Zippar'
      TabOrder = 3
      OnClick = BtnZipClick
      ExplicitLeft = 336
      ExplicitTop = 24
      ExplicitHeight = 25
    end
  end
  object Panel2: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 44
    Width = 185
    Height = 395
    Align = alLeft
    TabOrder = 1
    ExplicitLeft = 208
    ExplicitTop = 200
    ExplicitHeight = 41
    object Button1: TButton
      AlignWithMargins = True
      Left = 9
      Top = 9
      Width = 167
      Height = 25
      Margins.Left = 8
      Margins.Top = 8
      Margins.Right = 8
      Align = alTop
      Caption = 'Aleatorio 1'
      TabOrder = 0
      OnClick = Button1Click
      ExplicitLeft = 88
      ExplicitTop = 128
      ExplicitWidth = 75
    end
    object Button2: TButton
      AlignWithMargins = True
      Left = 9
      Top = 45
      Width = 167
      Height = 25
      Margins.Left = 8
      Margins.Top = 8
      Margins.Right = 8
      Align = alTop
      Caption = 'Aleatorio 2'
      TabOrder = 1
      ExplicitLeft = 88
      ExplicitTop = 104
      ExplicitWidth = 75
    end
  end
  object MemoLog: TMemo
    AlignWithMargins = True
    Left = 194
    Top = 44
    Width = 431
    Height = 395
    Align = alClient
    TabOrder = 2
    ExplicitLeft = 272
    ExplicitTop = 192
    ExplicitWidth = 185
    ExplicitHeight = 89
  end
end
