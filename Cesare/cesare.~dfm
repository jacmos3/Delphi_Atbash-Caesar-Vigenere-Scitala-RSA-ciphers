object fcesare: Tfcesare
  Left = 365
  Top = 122
  AutoSize = True
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Cifrario di Cesare e di Saint-Cyr'
  ClientHeight = 477
  ClientWidth = 271
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
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 271
    Height = 477
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Codifica'
      object Label1: TLabel
        Left = 200
        Top = 40
        Width = 33
        Height = 13
        Caption = 'Chiave'
      end
      object Label2: TLabel
        Left = 143
        Top = 136
        Width = 75
        Height = 13
        Caption = 'Caratteri digitati:'
      end
      object Label5: TLabel
        Left = 24
        Top = 354
        Width = 28
        Height = 13
        Caption = 'label5'
        Visible = False
      end
      object Label6: TLabel
        Left = 24
        Top = 384
        Width = 32
        Height = 13
        Caption = 'Label6'
      end
      object Label7: TLabel
        Left = 56
        Top = 400
        Width = 32
        Height = 13
        Caption = 'Label7'
      end
      object Label8: TLabel
        Left = 228
        Top = 136
        Width = 6
        Height = 13
        Caption = '0'
      end
      object labeldati: TLabel
        Left = 217
        Top = 7
        Width = 39
        Height = 13
        Caption = 'labeldati'
        Visible = False
      end
      object edit5: TMemo
        Left = 0
        Top = 328
        Width = 265
        Height = 121
        Color = clScrollBar
        ReadOnly = True
        ScrollBars = ssVertical
        TabOrder = 3
        OnChange = edit5Change
      end
      object Button1: TButton
        Left = 272
        Top = 224
        Width = 41
        Height = 25
        Caption = 'codifica'
        Enabled = False
        TabOrder = 0
        Visible = False
        OnClick = Button1Click
      end
      object Edit1: TEdit
        Left = 188
        Top = 56
        Width = 73
        Height = 21
        Color = clScrollBar
        ReadOnly = True
        TabOrder = 2
        Text = '1'
      end
      object ListBox1: TListBox
        Left = 760
        Top = -12
        Width = 17
        Height = 681
        ItemHeight = 13
        Items.Strings = (
          'a'
          'b'
          'c'
          'd'
          'e'
          'f'
          'g'
          'h'
          'i'
          'j'
          'k'
          'l'
          'm'
          'n'
          'o'
          'p'
          'q'
          'r'
          's'
          't'
          'u'
          'v'
          'w'
          'x'
          'y'
          'z'
          'a'
          'b'
          'c'
          'd'
          'e'
          'f'
          'g'
          'h'
          'i'
          'j'
          'k'
          'l'
          'm'
          'n'
          'o'
          'p'
          'q'
          'r'
          's'
          't'
          'u'
          'v'
          'w'
          'x'
          'y'
          'z')
        TabOrder = 4
        Visible = False
      end
      object Button5: TButton
        Left = 184
        Top = 300
        Width = 75
        Height = 25
        Caption = 'Cancella'
        Enabled = False
        TabOrder = 5
        OnClick = Button5Click
      end
      object Button6: TButton
        Left = 8
        Top = 300
        Width = 75
        Height = 25
        Caption = 'Codifica'
        Enabled = False
        TabOrder = 6
        OnClick = Button6Click
      end
      object Button1bis: TButton
        Left = 272
        Top = 248
        Width = 57
        Height = 25
        Caption = 'decodifica'
        TabOrder = 7
        Visible = False
        OnClick = Button1bisClick
      end
      object Button1tris: TButton
        Left = 272
        Top = 272
        Width = 73
        Height = 25
        Caption = 'dec no chiave'
        TabOrder = 1
        Visible = False
        OnClick = Button1trisClick
      end
      object Memo2: TMemo
        Left = 0
        Top = 152
        Width = 265
        Height = 121
        ScrollBars = ssVertical
        TabOrder = 8
        OnChange = Memo2Change
      end
      object ProgressBar1: TProgressBar
        Left = 0
        Top = 280
        Width = 265
        Height = 17
        TabOrder = 9
      end
      object GroupBox2: TGroupBox
        Left = 8
        Top = 8
        Width = 169
        Height = 129
        TabOrder = 10
        object GroupBox4: TGroupBox
          Left = 8
          Top = 72
          Width = 153
          Height = 49
          TabOrder = 1
          object RadioButton6: TRadioButton
            Left = 8
            Top = 10
            Width = 113
            Height = 17
            Caption = 'Solo lettere alfabeto'
            Checked = True
            TabOrder = 0
            TabStop = True
            OnClick = RadioButton6Click
          end
          object RadioButton4: TRadioButton
            Left = 8
            Top = 30
            Width = 113
            Height = 17
            Caption = 'Caratteri ASCII'
            TabOrder = 1
            OnClick = RadioButton4Click
          end
        end
        object GroupBox3: TGroupBox
          Left = 8
          Top = 24
          Width = 153
          Height = 49
          TabOrder = 0
          object RadioButton2: TRadioButton
            Left = 8
            Top = 9
            Width = 121
            Height = 17
            Caption = 'Sapendo la chiave'
            Checked = True
            Enabled = False
            TabOrder = 0
            TabStop = True
            OnClick = RadioButton2Click
          end
          object RadioButton3: TRadioButton
            Left = 8
            Top = 28
            Width = 137
            Height = 17
            Caption = 'NON sapendo la chiave'
            Enabled = False
            TabOrder = 1
            OnClick = RadioButton3Click
          end
        end
        object RadioButton1: TRadioButton
          Left = 16
          Top = 8
          Width = 73
          Height = 17
          Caption = 'Codifica'
          Checked = True
          TabOrder = 2
          TabStop = True
          OnClick = RadioButton1Click
        end
        object RadioButton5: TRadioButton
          Left = 80
          Top = 8
          Width = 73
          Height = 17
          Caption = 'Decodifica'
          TabOrder = 3
          OnClick = RadioButton5Click
        end
      end
      object ScrollBar1: TScrollBar
        Left = 188
        Top = 76
        Width = 73
        Height = 17
        LargeChange = 10
        Max = 256
        Min = 1
        PageSize = 0
        Position = 1
        TabOrder = 11
        OnChange = ScrollBar1Change
      end
      object Button3: TButton
        Left = 88
        Top = 300
        Width = 89
        Height = 25
        Caption = 'Salva messaggio'
        Enabled = False
        TabOrder = 12
        OnClick = Button3Click
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Leggi decodificazioni'
      ImageIndex = 1
      TabVisible = False
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 263
        Height = 449
        Align = alClient
        TabOrder = 0
        object Label4: TLabel
          Left = 16
          Top = 24
          Width = 78
          Height = 13
          Caption = 'Numero caratteri'
        end
        object Label3: TLabel
          Left = 32
          Top = 48
          Width = 39
          Height = 13
          Caption = 'Chaive :'
        end
        object Edit6: TEdit
          Left = 112
          Top = 24
          Width = 57
          Height = 21
          Enabled = False
          TabOrder = 0
          Text = '??'
        end
        object Memo3: TMemo
          Left = 8
          Top = 128
          Width = 249
          Height = 313
          Color = clScrollBar
          ReadOnly = True
          ScrollBars = ssVertical
          TabOrder = 1
        end
        object Edit2: TEdit
          Left = 80
          Top = 48
          Width = 121
          Height = 21
          ReadOnly = True
          TabOrder = 2
          Text = '0'
          OnChange = Edit2Change
        end
        object ScrollBar2: TScrollBar
          Left = 80
          Top = 72
          Width = 121
          Height = 17
          LargeChange = 10
          Max = 256
          PageSize = 0
          TabOrder = 3
          OnChange = ScrollBar2Change
        end
        object Button2: TButton
          Left = 80
          Top = 96
          Width = 113
          Height = 25
          Caption = 'Salva il testo seguente'
          Enabled = False
          TabOrder = 4
          OnClick = Button2Click
        end
      end
    end
  end
  object MainMenu1: TMainMenu
    Left = 200
    Top = 128
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
  object SaveDialog1: TSaveDialog
    FileName = 'C:\Documents and Settings\Moscioni Jacopo\Documenti\cx'
    FilterIndex = 0
    Left = 188
    Top = 24
  end
end
