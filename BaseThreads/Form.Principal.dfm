object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Principal'
  ClientHeight = 442
  ClientWidth = 767
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Splitter1: TSplitter
    Left = 316
    Top = 0
    Height = 442
    ExplicitLeft = 280
    ExplicitTop = 216
    ExplicitHeight = 100
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 316
    Height = 442
    Align = alLeft
    TabOrder = 0
    ExplicitHeight = 441
    object Gauge1: TGauge
      AlignWithMargins = True
      Left = 4
      Top = 45
      Width = 308
      Height = 50
      Align = alTop
      Progress = 0
      ExplicitLeft = 2
    end
    object Gauge2: TGauge
      AlignWithMargins = True
      Left = 4
      Top = 101
      Width = 308
      Height = 50
      Align = alTop
      Progress = 0
      ExplicitTop = 103
    end
    object Gauge3: TGauge
      AlignWithMargins = True
      Left = 4
      Top = 157
      Width = 308
      Height = 50
      Align = alTop
      Progress = 0
    end
    object Gauge4: TGauge
      AlignWithMargins = True
      Left = 4
      Top = 213
      Width = 308
      Height = 50
      Align = alTop
      Progress = 0
    end
    object Gauge5: TGauge
      AlignWithMargins = True
      Left = 4
      Top = 269
      Width = 308
      Height = 50
      Align = alTop
      Progress = 0
    end
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 314
      Height = 41
      Align = alTop
      TabOrder = 0
      object GeraLoops: TButton
        AlignWithMargins = True
        Left = 4
        Top = 4
        Width = 75
        Height = 33
        Align = alLeft
        Caption = 'Gerar Loops'
        TabOrder = 0
        OnClick = GeraLoopsClick
      end
    end
  end
  object Panel2: TPanel
    Left = 318
    Top = 0
    Width = 449
    Height = 442
    Align = alRight
    TabOrder = 1
    ExplicitLeft = 314
    ExplicitHeight = 441
    object PanelControlers: TPanel
      Left = 1
      Top = 1
      Width = 447
      Height = 41
      Align = alTop
      TabOrder = 0
      object Panel4: TPanel
        Left = 1
        Top = 1
        Width = 160
        Height = 39
        Align = alLeft
        TabOrder = 0
        object Edit1: TEdit
          Left = 12
          Top = 8
          Width = 53
          Height = 23
          TabOrder = 0
        end
        object Edit2: TEdit
          Left = 84
          Top = 8
          Width = 53
          Height = 23
          TabOrder = 1
        end
      end
      object Math: TButton
        AlignWithMargins = True
        Left = 164
        Top = 4
        Width = 75
        Height = 33
        Align = alLeft
        Caption = 'Math'
        TabOrder = 1
        OnClick = MathClick
      end
      object Annonimous: TButton
        AlignWithMargins = True
        Left = 245
        Top = 4
        Width = 75
        Height = 33
        Align = alLeft
        Caption = 'Annonimous'
        TabOrder = 2
        OnClick = AnnonimousClick
      end
      object Selecionar: TCheckBox
        Left = 344
        Top = 12
        Width = 97
        Height = 17
        Caption = 'Selecionar'
        TabOrder = 3
      end
    end
    object MemoLog: TMemo
      Left = 1
      Top = 42
      Width = 447
      Height = 399
      Align = alClient
      TabOrder = 1
      ExplicitLeft = 96
      ExplicitTop = 157
      ExplicitWidth = 185
      ExplicitHeight = 89
    end
  end
end
