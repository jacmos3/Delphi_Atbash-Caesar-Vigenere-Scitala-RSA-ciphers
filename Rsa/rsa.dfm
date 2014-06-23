object frsa: Tfrsa
  Left = 265
  Top = 198
  BorderStyle = bsSingle
  Caption = 'Cifrario RSA'
  ClientHeight = 361
  ClientWidth = 473
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnActivate = FormActivate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox7: TGroupBox
    Left = 8
    Top = 48
    Width = 457
    Height = 185
    TabOrder = 1
    Visible = False
    object Button7: TButton
      Left = 88
      Top = 48
      Width = 305
      Height = 25
      Caption = 'Crea file con i primi 30 numeri primi'
      TabOrder = 0
      OnClick = Button7Click
    end
    object Edit2: TEdit
      Left = 168
      Top = 96
      Width = 121
      Height = 21
      TabOrder = 1
      Text = '30'
      OnChange = Edit2Change
      OnKeyPress = Edit2KeyPress
    end
    object ProgressBar2: TProgressBar
      Left = 24
      Top = 128
      Width = 409
      Height = 17
      TabOrder = 2
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = -8
    Width = 473
    Height = 369
    TabOrder = 0
    object GroupBox2: TGroupBox
      Left = 8
      Top = 96
      Width = 209
      Height = 121
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object LabeledEdit1: TLabeledEdit
        Left = 16
        Top = 24
        Width = 81
        Height = 21
        EditLabel.Width = 48
        EditLabel.Height = 13
        EditLabel.Caption = 'Inserisci P'
        ReadOnly = True
        TabOrder = 0
        Text = '1'
      end
      object LabeledEdit2: TLabeledEdit
        Left = 112
        Top = 24
        Width = 81
        Height = 21
        EditLabel.Width = 49
        EditLabel.Height = 13
        EditLabel.Caption = 'Inserisci Q'
        ReadOnly = True
        TabOrder = 1
        Text = '1'
      end
      object LabeledEdit4: TLabeledEdit
        Left = 112
        Top = 88
        Width = 73
        Height = 21
        EditLabel.Width = 82
        EditLabel.Height = 13
        EditLabel.Caption = 'N2 = (P-1) x (Q-1)'
        ReadOnly = True
        TabOrder = 2
      end
      object LabeledEdit3: TLabeledEdit
        Left = 24
        Top = 88
        Width = 73
        Height = 21
        EditLabel.Width = 46
        EditLabel.Height = 13
        EditLabel.Caption = 'N = P x Q'
        ReadOnly = True
        TabOrder = 3
        OnChange = LabeledEdit3Change
      end
      object psb: TScrollBar
        Left = 16
        Top = 48
        Width = 81
        Height = 17
        Hint = 'Seleziona  uno  dei  primi 30 numeri primi'
        Max = 30
        Min = 1
        PageSize = 0
        ParentShowHint = False
        Position = 1
        ShowHint = True
        TabOrder = 4
        OnChange = psbChange
      end
      object qsb: TScrollBar
        Left = 112
        Top = 48
        Width = 81
        Height = 17
        Hint = 'Seleziona  uno  dei primi  30  numeri  primi'
        Max = 30
        Min = 1
        PageSize = 0
        ParentShowHint = False
        Position = 1
        ShowHint = True
        TabOrder = 5
        OnChange = qsbChange
      end
    end
    object GroupBox3: TGroupBox
      Left = 224
      Top = 96
      Width = 113
      Height = 121
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object Button2: TButton
        Left = 16
        Top = 16
        Width = 81
        Height = 25
        Caption = 'Calcola insieme'
        TabOrder = 0
        OnClick = Button2Click
      end
      object listbox1: TListBox
        Left = 32
        Top = 48
        Width = 49
        Height = 65
        Hint = 'Seleziona   la  chiave'
        ItemHeight = 13
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = listbox1Click
      end
    end
    object GroupBox4: TGroupBox
      Left = 344
      Top = 96
      Width = 121
      Height = 121
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      object Button3: TButton
        Left = 22
        Top = 32
        Width = 75
        Height = 25
        Caption = 'Chiavi'
        Enabled = False
        TabOrder = 0
        OnClick = Button3Click
      end
      object LabeledEdit5: TLabeledEdit
        Left = 8
        Top = 89
        Width = 41
        Height = 21
        EditLabel.Width = 33
        EditLabel.Height = 13
        EditLabel.Caption = 'e (pub)'
        ReadOnly = True
        TabOrder = 1
        OnChange = LabeledEdit5Change
      end
      object LabeledEdit6: TLabeledEdit
        Left = 64
        Top = 89
        Width = 41
        Height = 21
        EditLabel.Width = 32
        EditLabel.Height = 13
        EditLabel.Caption = 'd (priv)'
        ReadOnly = True
        TabOrder = 2
        OnChange = LabeledEdit6Change
      end
    end
    object Memo1: TMemo
      Left = 8
      Top = 224
      Width = 185
      Height = 137
      TabOrder = 3
    end
    object Memo2: TMemo
      Left = 272
      Top = 224
      Width = 185
      Height = 137
      ReadOnly = True
      TabOrder = 4
    end
    object Button1: TButton
      Left = 200
      Top = 272
      Width = 65
      Height = 25
      Caption = 'Codifica'
      TabOrder = 5
      OnClick = Button1Click
    end
    object GroupBox5: TGroupBox
      Left = 8
      Top = 8
      Width = 193
      Height = 81
      TabOrder = 6
      object RadioButton3: TRadioButton
        Left = 8
        Top = 48
        Width = 177
        Height = 17
        Caption = 'Opera conosciendo gi'#224' le chiavi'
        TabOrder = 0
        OnClick = RadioButton3Click
      end
      object RadioButton4: TRadioButton
        Left = 8
        Top = 24
        Width = 113
        Height = 17
        Caption = 'Crea chiavi'
        Checked = True
        TabOrder = 1
        TabStop = True
        OnClick = RadioButton4Click
      end
    end
    object GroupBox6: TGroupBox
      Left = 288
      Top = 8
      Width = 177
      Height = 81
      TabOrder = 7
      Visible = False
      object LabeledEdit7: TLabeledEdit
        Left = 16
        Top = 40
        Width = 57
        Height = 21
        EditLabel.Width = 16
        EditLabel.Height = 16
        EditLabel.BiDiMode = bdLeftToRight
        EditLabel.Caption = 'N:'
        EditLabel.Font.Charset = DEFAULT_CHARSET
        EditLabel.Font.Color = clWindowText
        EditLabel.Font.Height = -13
        EditLabel.Font.Name = 'MS Sans Serif'
        EditLabel.Font.Style = [fsBold]
        EditLabel.ParentBiDiMode = False
        EditLabel.ParentFont = False
        TabOrder = 0
      end
      object LabeledEdit8: TLabeledEdit
        Left = 88
        Top = 40
        Width = 57
        Height = 21
        EditLabel.Width = 15
        EditLabel.Height = 16
        EditLabel.Caption = 'E:'
        EditLabel.Font.Charset = DEFAULT_CHARSET
        EditLabel.Font.Color = clWindowText
        EditLabel.Font.Height = -13
        EditLabel.Font.Name = 'MS Sans Serif'
        EditLabel.Font.Style = [fsBold]
        EditLabel.ParentFont = False
        TabOrder = 1
        OnChange = LabeledEdit8Change
      end
      object Edit1: TEdit
        Left = 152
        Top = 40
        Width = 17
        Height = 21
        TabOrder = 2
        Visible = False
      end
    end
    object RadioButton6: TRadioButton
      Left = 208
      Top = 56
      Width = 73
      Height = 17
      Caption = 'Decodifica'
      TabOrder = 8
      OnClick = RadioButton6Click
    end
    object RadioButton5: TRadioButton
      Left = 208
      Top = 32
      Width = 73
      Height = 17
      Caption = 'Codifica'
      Checked = True
      TabOrder = 9
      TabStop = True
      OnClick = RadioButton5Click
    end
    object Button4: TButton
      Left = 200
      Top = 304
      Width = 65
      Height = 25
      Caption = 'Cancella'
      TabOrder = 10
      OnClick = Button4Click
    end
  end
  object MainMenu1: TMainMenu
    Left = 432
    Top = 96
    object File1: TMenuItem
      Caption = 'File'
      object abellaASCII1: TMenuItem
        Caption = 'Tabella ASCII'
        OnClick = abellaASCII1Click
      end
      object Chiudi1: TMenuItem
        Caption = 'Chiudi'
        OnClick = Chiudi1Click
      end
      object Esci1: TMenuItem
        Caption = 'Esci'
        OnClick = Esci1Click
      end
    end
    object Vaia1: TMenuItem
      Caption = 'Vai a...'
      object CifrarioAtbash1: TMenuItem
        Caption = 'Cifrario Atbash'
        OnClick = CifrarioAtbash1Click
      end
      object CifrarioSpartanoScitala1: TMenuItem
        Caption = 'Cifrario Spartano (Scitala)'
        OnClick = CifrarioSpartanoScitala1Click
      end
      object CifrariodiCesare1: TMenuItem
        Caption = 'Cifrario di Cesare'
        OnClick = CifrariodiCesare1Click
      end
      object CifrariodiVigenere1: TMenuItem
        Caption = 'Cifrario di Vigenere'
        OnClick = CifrariodiVigenere1Click
      end
    end
    object Info1: TMenuItem
      Caption = 'Info'
      object Manuale1: TMenuItem
        Caption = 'Manuale'
        OnClick = Manuale1Click
      end
    end
    object N1: TMenuItem
      Caption = '?'
      object About1: TMenuItem
        Caption = 'About'
        Default = True
        ShortCut = 16449
        OnClick = About1Click
      end
    end
  end
end
