object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Controle de Patrimonio'
  ClientHeight = 441
  ClientWidth = 700
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
    Width = 313
    Height = 441
    Align = alLeft
    TabOrder = 0
    ExplicitHeight = 440
    object Label1: TLabel
      Left = 1
      Top = 1
      Width = 311
      Height = 30
      Align = alTop
      Caption = 'Patrimonio'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 30
      Font.Name = 'SimSun'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      ExplicitWidth = 160
    end
    object Label2: TLabel
      Left = 1
      Top = 393
      Width = 311
      Height = 47
      Align = alClient
      Caption = 'Total'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 30
      Font.Name = 'Segoe UI'
      Font.Orientation = -10
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      ExplicitWidth = 54
      ExplicitHeight = 37
    end
    object Panel3: TPanel
      Left = 1
      Top = 31
      Width = 311
      Height = 50
      Align = alTop
      TabOrder = 0
      object BtnCriaPatrimonio: TButton
        AlignWithMargins = True
        Left = 11
        Top = 11
        Width = 75
        Height = 28
        Margins.Left = 10
        Margins.Top = 10
        Margins.Bottom = 10
        Align = alLeft
        Caption = 'Patrimonio'
        TabOrder = 0
        OnClick = BtnCriaPatrimonioClick
      end
    end
    object ScrollBox1: TScrollBox
      Left = 1
      Top = 81
      Width = 311
      Height = 312
      Align = alTop
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      TabOrder = 1
      object FlowPanel1: TFlowPanel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 305
        Height = 115
        Align = alTop
        AutoSize = True
        BevelOuter = bvLowered
        Color = clInactiveCaption
        ParentBackground = False
        TabOrder = 0
        object Panel4: TPanel
          AlignWithMargins = True
          Left = 4
          Top = 4
          Width = 185
          Height = 104
          Margins.Bottom = 6
          Align = alLeft
          TabOrder = 0
          Visible = False
          object Label3: TLabel
            Left = 1
            Top = 1
            Width = 183
            Height = 22
            Align = alTop
            Caption = 'Tipo:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Orientation = -10
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
            ExplicitWidth = 27
          end
          object Label4: TLabel
            Left = 1
            Top = 23
            Width = 183
            Height = 15
            Align = alTop
            Caption = 'Valor:'
            ExplicitWidth = 29
          end
          object Label5: TLabel
            Left = 1
            Top = 38
            Width = 183
            Height = 15
            Align = alTop
            Caption = 'Data Compra:'
            ExplicitWidth = 73
          end
          object Label6: TLabel
            Left = 1
            Top = 53
            Width = 183
            Height = 15
            Align = alTop
            Caption = 'Data Deprecia'#231'ao:'
            ExplicitWidth = 95
          end
        end
      end
    end
  end
  object Panel2: TPanel
    Left = 313
    Top = 0
    Width = 387
    Height = 441
    Align = alClient
    TabOrder = 1
    ExplicitLeft = 315
    inline Frame11: TFrame1
      Left = 0
      Top = 0
      Width = 324
      Height = 218
      TabOrder = 0
      inherited Panel4: TPanel
        ExplicitWidth = 318
        inherited Panel1: TPanel
          ExplicitLeft = 6
          ExplicitTop = 6
          inherited Cliente: TLabel
            ExplicitLeft = 9
            ExplicitTop = 4
          end
        end
        inherited Panel2: TPanel
          ExplicitLeft = 6
          ExplicitTop = 57
          ExplicitWidth = 312
          inherited LbCliente: TLabel
            ExplicitLeft = 1
            ExplicitTop = 1
            ExplicitWidth = 123
          end
          inherited Label1: TLabel
            ExplicitLeft = 1
            ExplicitTop = 16
          end
        end
        inherited Panel3: TPanel
          ExplicitLeft = 6
        end
      end
    end
  end
end
