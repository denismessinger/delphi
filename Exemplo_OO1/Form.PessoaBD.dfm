object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Visualiza Pessoa BD'
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
    ExplicitLeft = 216
    ExplicitTop = 192
    ExplicitWidth = 185
    object CriarPessoas: TButton
      Left = 15
      Top = 10
      Width = 75
      Height = 25
      Caption = 'Criar'
      TabOrder = 0
      OnClick = CriarPessoasClick
    end
    object SpinEditPessoas: TSpinEdit
      Left = 96
      Top = 10
      Width = 57
      Height = 24
      MaxValue = 0
      MinValue = 0
      TabOrder = 1
      Value = 0
    end
  end
  object DBCtrlGridPessoas: TDBCtrlGrid
    Left = 0
    Top = 41
    Width = 628
    Height = 382
    Align = alClient
    DataSource = dtsPessoa
    PanelHeight = 127
    PanelWidth = 611
    TabOrder = 1
    ExplicitTop = 40
    ExplicitHeight = 401
    object DBText1: TDBText
      Left = 32
      Top = 16
      Width = 65
      Height = 17
      DataField = 'DataNascimento'
      DataSource = dtsPessoa
    end
    object DBEdit1: TDBEdit
      Left = 32
      Top = 48
      Width = 121
      Height = 23
      DataField = 'Codigo'
      DataSource = dtsPessoa
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 32
      Top = 88
      Width = 121
      Height = 23
      DataField = 'Saldo'
      DataSource = dtsPessoa
      TabOrder = 1
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 423
    Width = 628
    Height = 19
    Panels = <
      item
        Width = 50
      end
      item
        Width = 50
      end>
    ExplicitLeft = 232
    ExplicitTop = 416
    ExplicitWidth = 0
  end
  object dtsPessoa: TDataSource
    DataSet = memPessoa
    Left = 104
    Top = 240
  end
  object memPessoa: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 184
    Top = 240
    object memPessoaCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object memPessoaSaldo: TFloatField
      FieldName = 'Saldo'
    end
    object memPessoaDataNascimento: TDateField
      FieldName = 'DataNascimento'
    end
  end
end
