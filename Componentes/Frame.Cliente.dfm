object Frame1: TFrame1
  Left = 0
  Top = 0
  Width = 324
  Height = 218
  TabOrder = 0
  object Panel4: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 318
    Height = 212
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 0
    ExplicitWidth = 321
    object Panel1: TPanel
      AlignWithMargins = True
      Left = 6
      Top = 6
      Width = 306
      Height = 41
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alTop
      TabOrder = 0
      ExplicitLeft = 0
      ExplicitTop = -6
      ExplicitWidth = 312
      object Cliente: TLabel
        AlignWithMargins = True
        Left = 9
        Top = 4
        Width = 59
        Height = 33
        Margins.Left = 8
        Align = alLeft
        Caption = 'Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = 25
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitLeft = 16
        ExplicitTop = 5
        ExplicitHeight = 25
      end
    end
    object Panel2: TPanel
      AlignWithMargins = True
      Left = 6
      Top = 57
      Width = 306
      Height = 105
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alTop
      TabOrder = 1
      ExplicitLeft = 5
      ExplicitTop = 5
      ExplicitWidth = 314
      object LbCliente: TLabel
        Left = 1
        Top = 1
        Width = 304
        Height = 15
        Align = alTop
        Caption = 'Saldo dispon'#237'vel R$0,00'
        ExplicitLeft = 0
        ExplicitTop = -2
        ExplicitWidth = 310
      end
      object Label1: TLabel
        Left = 1
        Top = 16
        Width = 304
        Height = 15
        Align = alTop
        Caption = 'Ativo: Sim'
        ExplicitLeft = 272
        ExplicitTop = 88
        ExplicitWidth = 54
      end
    end
    object Panel3: TPanel
      AlignWithMargins = True
      Left = 6
      Top = 172
      Width = 306
      Height = 41
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alTop
      TabOrder = 2
      ExplicitLeft = 12
      ExplicitWidth = 312
      object BtnLigar: TButton
        AlignWithMargins = True
        Left = 6
        Top = 6
        Width = 75
        Height = 29
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Align = alLeft
        Caption = 'Ligar Para'
        TabOrder = 0
        OnClick = BtnLigarClick
      end
      object BtnImprimir: TButton
        AlignWithMargins = True
        Left = 91
        Top = 6
        Width = 75
        Height = 29
        Margins.Left = 5
        Margins.Top = 5
        Margins.Bottom = 5
        Align = alLeft
        Caption = 'Imprimir'
        TabOrder = 1
        OnClick = BtnImprimirClick
      end
    end
  end
end
