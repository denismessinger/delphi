object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Thread Except'
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 628
    Height = 41
    Align = alTop
    TabOrder = 0
    ExplicitLeft = 224
    ExplicitTop = 96
    ExplicitWidth = 185
    object BtbException: TButton
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 100
      Height = 33
      Align = alLeft
      Caption = 'Exception'
      TabOrder = 0
      OnClick = BtbExceptionClick
    end
    object ExceptionThr: TButton
      AlignWithMargins = True
      Left = 110
      Top = 4
      Width = 100
      Height = 33
      Align = alLeft
      Caption = 'Exception Thr'
      TabOrder = 1
      OnClick = ExceptionThrClick
      ExplicitLeft = 85
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 628
    Height = 41
    Align = alTop
    TabOrder = 1
    ExplicitLeft = 184
    ExplicitTop = 128
    ExplicitWidth = 185
    object ComException: TButton
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 100
      Height = 33
      Align = alLeft
      Caption = 'Com Exception'
      TabOrder = 0
      OnClick = ComExceptionClick
    end
    object SemException: TButton
      AlignWithMargins = True
      Left = 110
      Top = 4
      Width = 100
      Height = 33
      Align = alLeft
      Caption = 'Sem Exception'
      TabOrder = 1
      OnClick = SemExceptionClick
    end
  end
end
