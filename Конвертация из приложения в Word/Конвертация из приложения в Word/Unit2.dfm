object Form2: TForm2
  Left = 0
  Top = 0
  Caption = #1044#1086#1073#1072#1074#1080#1090#1100
  ClientHeight = 298
  ClientWidth = 660
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object StaticText1: TStaticText
    Left = 25
    Top = 21
    Width = 104
    Height = 28
    AutoSize = False
    Caption = #1060#1072#1084#1080#1083#1080#1103
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    TabOrder = 0
  end
  object StaticText2: TStaticText
    Left = 25
    Top = 66
    Width = 104
    Height = 28
    AutoSize = False
    Caption = #1048#1084#1103
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    TabOrder = 1
  end
  object StaticText3: TStaticText
    Left = 25
    Top = 110
    Width = 161
    Height = 28
    AutoSize = False
    Caption = #1053#1086#1084#1077#1088' '#1090#1077#1083#1077#1092#1086#1085#1072
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    TabOrder = 2
  end
  object StaticText4: TStaticText
    Left = 25
    Top = 160
    Width = 104
    Height = 28
    AutoSize = False
    Caption = #1055#1088#1077#1076#1084#1077#1090
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    TabOrder = 3
  end
  object StaticText5: TStaticText
    Left = 25
    Top = 206
    Width = 136
    Height = 28
    AutoSize = False
    Caption = #1053#1072#1087#1088#1072#1074#1083#1077#1085#1080#1103
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    TabOrder = 4
  end
  object Edit1: TEdit
    Left = 191
    Top = 17
    Width = 457
    Height = 32
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    TabOrder = 5
    Text = 'Edit1'
  end
  object Edit2: TEdit
    Left = 191
    Top = 62
    Width = 457
    Height = 32
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    TabOrder = 6
    Text = 'Edit1'
  end
  object Edit3: TEdit
    Left = 192
    Top = 110
    Width = 456
    Height = 32
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    TabOrder = 7
    Text = 'Edit1'
  end
  object BitBtn1: TBitBtn
    Left = 532
    Top = 257
    Width = 120
    Height = 33
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    TabOrder = 8
    OnClick = BitBtn1Click
  end
  object ComboBox1: TComboBox
    Left = 192
    Top = 166
    Width = 460
    Height = 22
    Style = csOwnerDrawFixed
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    TabOrder = 9
  end
  object ComboBox2: TComboBox
    Left = 195
    Top = 206
    Width = 457
    Height = 22
    Style = csOwnerDrawFixed
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    TabOrder = 10
  end
  object ADOQuery1: TADOQuery
    Connection = Form1.ADOConnection1
    Parameters = <>
    Left = 392
    Top = 248
  end
end
