object fatbash: Tfatbash
  Left = 327
  Top = 187
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Cifrario Atbash'
  ClientHeight = 370
  ClientWidth = 234
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
  object Memo1: TMemo
    Left = 8
    Top = 8
    Width = 217
    Height = 145
    ScrollBars = ssVertical
    TabOrder = 0
  end
  object Memo2: TMemo
    Left = 8
    Top = 216
    Width = 217
    Height = 145
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 1
  end
  object Button1: TButton
    Left = 48
    Top = 160
    Width = 67
    Height = 25
    Caption = 'Cod / Dec'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 120
    Top = 160
    Width = 65
    Height = 25
    Caption = 'Cancella'
    TabOrder = 3
    OnClick = Button2Click
  end
  object RadioButton1: TRadioButton
    Left = 120
    Top = 192
    Width = 73
    Height = 17
    Caption = 'Cod ASCII'
    TabOrder = 4
  end
  object RadioButton2: TRadioButton
    Left = 24
    Top = 192
    Width = 81
    Height = 17
    Caption = 'Alfabeto Ing'
    Checked = True
    TabOrder = 5
    TabStop = True
  end
  object MainMenu1: TMainMenu
    Left = 8
    Top = 160
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
      object CifrariodiCesare1: TMenuItem
        Caption = 'Cifrario di Cesare'
        OnClick = CifrariodiCesare1Click
      end
      object CifrarioSpartanoScitala1: TMenuItem
        Caption = 'Cifrario Spartano (Scitala)'
        OnClick = CifrarioSpartanoScitala1Click
      end
      object CifrariodiVigenere1: TMenuItem
        Caption = 'Cifrario di Vigenere'
        OnClick = CifrariodiVigenere1Click
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
end
