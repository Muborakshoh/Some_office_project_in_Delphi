object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Form3'
  ClientHeight = 489
  ClientWidth = 798
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 8
    Top = 99
    Width = 777
    Height = 354
    DataSource = DataSource1
    DrawingStyle = gdsClassic
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = RUSSIAN_CHARSET
    TitleFont.Color = clRed
    TitleFont.Height = -13
    TitleFont.Name = 'Times New Roman'
    TitleFont.Style = [fsBold, fsItalic]
    Columns = <
      item
        Expanded = False
        FieldName = 'first_name'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold, fsItalic]
        Title.Alignment = taCenter
        Title.Caption = #1060#1072#1084#1080#1083#1080#1103
        Title.Color = clSilver
        Title.Font.Charset = RUSSIAN_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -13
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = [fsBold, fsItalic]
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'last_name'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold, fsItalic]
        Title.Alignment = taCenter
        Title.Caption = #1048#1084#1103
        Title.Color = clSilver
        Title.Font.Charset = RUSSIAN_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -13
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = [fsBold, fsItalic]
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'phone_number'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold, fsItalic]
        Title.Alignment = taCenter
        Title.Caption = #1053#1086#1084#1077#1088' '#1090#1077#1083#1077#1092#1086#1085#1072
        Title.Color = clSilver
        Title.Font.Charset = RUSSIAN_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -13
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = [fsBold, fsItalic]
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'subject_'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold, fsItalic]
        Title.Alignment = taCenter
        Title.Caption = #1055#1088#1077#1076#1084#1077#1090
        Title.Color = clSilver
        Title.Font.Charset = RUSSIAN_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -13
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = [fsBold, fsItalic]
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Groupa'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold, fsItalic]
        Title.Alignment = taCenter
        Title.Caption = #1053#1072#1087#1088#1072#1074#1083#1077#1085#1080#1103
        Title.Color = clSilver
        Title.Font.Charset = RUSSIAN_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -13
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = [fsBold, fsItalic]
        Width = 150
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 8
    Top = 8
    Width = 769
    Height = 81
    Color = clSilver
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 1
    object ComboBox1: TComboBox
      Left = 109
      Top = 10
      Width = 460
      Height = 22
      Style = csOwnerDrawFixed
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      TabOrder = 0
    end
    object ComboBox2: TComboBox
      Left = 151
      Top = 49
      Width = 458
      Height = 22
      Style = csOwnerDrawFixed
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      TabOrder = 1
    end
    object StaticText1: TStaticText
      Left = 16
      Top = 8
      Width = 89
      Height = 28
      Caption = #1055#1088#1077#1076#1084#1077#1090
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      TabOrder = 2
    end
    object StaticText2: TStaticText
      Left = 16
      Top = 47
      Width = 129
      Height = 28
      Caption = #1053#1072#1087#1088#1072#1074#1083#1077#1085#1080#1103
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      TabOrder = 3
    end
    object BitBtn1: TBitBtn
      Left = 656
      Top = 5
      Width = 105
      Height = 31
      Caption = #1055#1086#1080#1089#1082
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      TabOrder = 4
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 656
      Top = 42
      Width = 105
      Height = 32
      Caption = #1054#1090#1084#1077#1085#1072
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      TabOrder = 5
      OnClick = BitBtn2Click
    end
  end
  object DBNavigator1: TDBNavigator
    Left = 504
    Top = 456
    Width = 222
    Height = 25
    DataSource = DataSource1
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbDelete, nbRefresh]
    TabOrder = 2
  end
  object ADOQuery1: TADOQuery
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from Course')
    Left = 264
    Top = 144
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 320
    Top = 144
  end
  object ADOQuery2: TADOQuery
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from Course')
    Left = 400
    Top = 160
  end
end
