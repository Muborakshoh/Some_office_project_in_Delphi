object Form1: TForm1
  Left = 192
  Top = 125
  Width = 1089
  Height = 285
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -21
  Font.Name = 'Times New Roman'
  Font.Style = [fsBold]
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 24
  object DBGrid1: TDBGrid
    Left = 8
    Top = 8
    Width = 1057
    Height = 177
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = RUSSIAN_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -21
    TitleFont.Name = 'Times New Roman'
    TitleFont.Style = [fsBold]
    Columns = <
      item
        Expanded = False
        FieldName = 'idS'
        Title.Caption = #8470
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FnameLname'
        Title.Caption = #1060'.'#1048'.'#1054
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'course'
        Title.Caption = #1082#1091#1088#1089
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dt_birth'
        Title.Caption = #1076#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'email'
        Title.Caption = #1101#1083'. '#1087#1086#1095#1090#1072
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'phone_number'
        Title.Caption = #1085#1086#1084#1077#1088' '#1090#1077#1083#1077#1092#1086#1085
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 200
    Width = 480
    Height = 33
    DataSource = DataSource1
    VisibleButtons = [nbPrior, nbNext, nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh]
    Hints.Strings = (
      'Prior record'
      'Next record'
      'Insert record'
      'Delete record'
      'Edit record'
      'Post edit'
      'Cancel edit'
      'Refresh data')
    TabOrder = 1
  end
  object Button1: TButton
    Left = 696
    Top = 200
    Width = 161
    Height = 33
    Caption = #1042#1099#1093#1086#1076
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 504
    Top = 200
    Width = 169
    Height = 33
    Caption = #1050#1086#1085#1074#1077#1088#1090#1072#1094#1080#1103
    TabOrder = 3
    OnClick = Button2Click
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=student;Data Source=MUBORAKSHO-WEB'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 896
    Top = 200
  end
  object ADOTable1: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'record_students'
    Left = 992
    Top = 200
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 1040
    Top = 200
  end
  object ADODataSet1: TADODataSet
    Connection = ADOConnection1
    Parameters = <>
    Left = 944
    Top = 200
  end
  object W1: TWordApplication
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    AutoQuit = False
    Left = 864
    Top = 200
  end
end
