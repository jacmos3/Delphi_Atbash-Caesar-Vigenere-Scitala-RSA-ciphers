object fvigenere: Tfvigenere
  Left = 410
  Top = 146
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Cifrario di Vigenere'
  ClientHeight = 415
  ClientWidth = 246
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 152
    Top = 88
    Width = 47
    Height = 13
    Caption = '0 caratteri'
  end
  object Memo1: TMemo
    Left = 8
    Top = 104
    Width = 233
    Height = 113
    ScrollBars = ssVertical
    TabOrder = 0
    OnChange = Memo1Change
  end
  object Memo2: TMemo
    Left = 8
    Top = 296
    Width = 233
    Height = 113
    ScrollBars = ssVertical
    TabOrder = 1
  end
  object Edit1: TEdit
    Left = 56
    Top = 232
    Width = 121
    Height = 21
    PopupMenu = PopupMenu1
    TabOrder = 2
    OnChange = Edit1Change
    OnKeyPress = Edit1KeyPress
  end
  object Button3: TButton
    Left = 128
    Top = 264
    Width = 75
    Height = 25
    Caption = 'Cancella'
    Enabled = False
    TabOrder = 3
    OnClick = Button3Click
  end
  object Memo3: TMemo
    Left = 264
    Top = 104
    Width = 25
    Height = 25
    TabOrder = 4
    Visible = False
  end
  object Button4: TButton
    Left = 40
    Top = 264
    Width = 75
    Height = 25
    Caption = 'Codifica'
    Enabled = False
    TabOrder = 5
    OnClick = Button4Click
  end
  object GroupBox2: TGroupBox
    Left = 16
    Top = 16
    Width = 97
    Height = 65
    TabOrder = 6
    object RadioButton1: TRadioButton
      Left = 8
      Top = 16
      Width = 81
      Height = 17
      Caption = 'Codifica'
      Checked = True
      TabOrder = 0
      TabStop = True
      OnClick = RadioButton1Click
    end
    object RadioButton2: TRadioButton
      Left = 8
      Top = 40
      Width = 81
      Height = 17
      Caption = 'Decodifica'
      TabOrder = 1
      OnClick = RadioButton2Click
    end
  end
  object GroupBox1: TGroupBox
    Left = 120
    Top = 16
    Width = 113
    Height = 65
    TabOrder = 7
    object RadioButton3: TRadioButton
      Left = 8
      Top = 40
      Width = 89
      Height = 17
      Caption = 'Codice ASCII'
      TabOrder = 0
    end
    object RadioButton4: TRadioButton
      Left = 8
      Top = 16
      Width = 97
      Height = 17
      Caption = 'Lettere alfabeto'
      Checked = True
      TabOrder = 1
      TabStop = True
    end
  end
  object MainMenu1: TMainMenu
    Left = 16
    Top = 232
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
      object CifrarioRSA1: TMenuItem
        Caption = 'Cifrario RSA'
        OnClick = CifrarioRSA1Click
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
  object PopupMenu1: TPopupMenu
    Left = 200
    Top = 232
  end
end
