object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Generics'
  ClientHeight = 441
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
  object Splitter1: TSplitter
    Left = 409
    Top = 57
    Height = 384
    ExplicitLeft = 368
    ExplicitTop = 216
    ExplicitHeight = 100
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 628
    Height = 57
    Align = alTop
    TabOrder = 0
    object ColorBox1: TColorBox
      Left = 16
      Top = 18
      Width = 145
      Height = 22
      TabOrder = 0
    end
    object Edit1: TEdit
      Left = 167
      Top = 18
      Width = 114
      Height = 23
      TabOrder = 1
    end
    object BtnAdicionar: TButton
      Left = 296
      Top = 17
      Width = 41
      Height = 25
      Caption = '+'
      TabOrder = 2
      OnClick = BtnAdicionarClick
    end
    object BtnArrays: TButton
      Left = 536
      Top = 17
      Width = 75
      Height = 25
      Caption = 'Arrays'
      TabOrder = 3
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 57
    Width = 409
    Height = 384
    Align = alLeft
    Color = clAqua
    ParentBackground = False
    TabOrder = 1
    ExplicitHeight = 385
  end
  object ListBoxCores: TListBox
    Left = 415
    Top = 57
    Width = 213
    Height = 384
    Align = alRight
    ItemHeight = 15
    TabOrder = 2
    OnClick = ListBoxCoresClick
    ExplicitHeight = 385
  end
end
