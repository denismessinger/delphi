object Form1: TForm1
  Left = 0
  Top = 0
  ClientHeight = 300
  ClientWidth = 338
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 15
  object FlowPanel1: TFlowPanel
    Left = 0
    Top = 0
    Width = 338
    Height = 80
    Align = alTop
    TabOrder = 0
    ExplicitTop = -2
    object Label1: TLabel
      AlignWithMargins = True
      Left = 6
      Top = 11
      Width = 101
      Height = 28
      Margins.Left = 5
      Margins.Top = 10
      Caption = 'Convers'#227'o: '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object ComboBox1: TComboBox
      AlignWithMargins = True
      Left = 113
      Top = 19
      Width = 184
      Height = 22
      Margins.Top = 18
      Style = csOwnerDrawFixed
      ItemIndex = 0
      TabOrder = 0
      Text = 'Converter REAL -> EURO'
      Items.Strings = (
        'Converter REAL -> EURO'
        'Converter REAL -> DOLAR')
    end
  end
  object FlowPanel2: TFlowPanel
    Left = 0
    Top = 80
    Width = 338
    Height = 220
    Align = alClient
    TabOrder = 1
    ExplicitTop = 38
    ExplicitWidth = 400
    ExplicitHeight = 259
    object Label2: TLabel
      AlignWithMargins = True
      Left = 9
      Top = 11
      Width = 112
      Height = 19
      Margins.Left = 8
      Margins.Top = 10
      Caption = 'Valor de entrada:  '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Edit1: TEdit
      AlignWithMargins = True
      Left = 127
      Top = 11
      Width = 104
      Height = 23
      Margins.Top = 10
      TabOrder = 0
      OnKeyPress = Edit1KeyPress
    end
    object Label3: TLabel
      Left = 234
      Top = 1
      Width = 96
      Height = 33
    end
    object Label4: TLabel
      AlignWithMargins = True
      Left = 9
      Top = 47
      Width = 103
      Height = 19
      Margins.Left = 8
      Margins.Top = 10
      Caption = 'Valor convertido:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Edit2: TEdit
      AlignWithMargins = True
      Left = 126
      Top = 47
      Width = 104
      Height = 23
      Margins.Left = 11
      Margins.Top = 10
      Enabled = False
      TabOrder = 1
    end
    object Label5: TLabel
      Left = 233
      Top = 37
      Width = 97
      Height = 33
    end
  end
end
