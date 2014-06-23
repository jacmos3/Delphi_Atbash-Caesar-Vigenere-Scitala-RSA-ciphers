object Fascii: TFascii
  Left = 86
  Top = 113
  Width = 849
  Height = 563
  AutoSize = True
  BorderStyle = bsSizeToolWin
  Caption = 'Tabella ASCII '
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  object StringGrid1: TStringGrid
    Left = 0
    Top = 0
    Width = 841
    Height = 529
    ColCount = 32
    DefaultColWidth = 25
    DefaultRowHeight = 20
    DragKind = dkDock
    DragMode = dmAutomatic
    FixedCols = 0
    RowCount = 25
    FixedRows = 0
    TabOrder = 0
    OnClick = StringGrid1Click
  end
end
