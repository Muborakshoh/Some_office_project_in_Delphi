object Form1: TForm1
  Left = 193
  Top = 125
  Width = 676
  Height = 557
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -21
  Font.Name = 'Times New Roman'
  Font.Style = [fsBold]
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 24
  object Panel1: TPanel
    Left = 8
    Top = 8
    Width = 385
    Height = 209
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 16
      Width = 91
      Height = 24
      Caption = #1060#1072#1084#1080#1083#1080#1103
    end
    object Label2: TLabel
      Left = 48
      Top = 64
      Width = 41
      Height = 24
      Caption = #1048#1084#1103
    end
    object Label3: TLabel
      Left = 8
      Top = 112
      Width = 97
      Height = 24
      Caption = #1054#1090#1077#1095#1077#1089#1090#1074#1086
    end
    object Edit1: TEdit
      Left = 112
      Top = 8
      Width = 257
      Height = 32
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 112
      Top = 56
      Width = 257
      Height = 32
      TabOrder = 1
    end
    object Edit3: TEdit
      Left = 112
      Top = 104
      Width = 257
      Height = 32
      TabOrder = 2
    end
    object ComboBox1: TComboBox
      Left = 24
      Top = 152
      Width = 145
      Height = 32
      ItemHeight = 24
      TabOrder = 3
      Text = 'ComboBox1'
    end
    object ComboBox2: TComboBox
      Left = 192
      Top = 152
      Width = 145
      Height = 32
      ItemHeight = 24
      TabOrder = 4
      Text = 'ComboBox2'
    end
  end
  object Panel2: TPanel
    Left = 400
    Top = 8
    Width = 241
    Height = 209
    TabOrder = 1
    object Button1: TButton
      Left = 8
      Top = 8
      Width = 113
      Height = 33
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1074' '#1041#1044
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 8
      Top = 56
      Width = 233
      Height = 33
      Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100' '#1080#1079' MS Word'
      TabOrder = 1
    end
    object Button3: TButton
      Left = 8
      Top = 104
      Width = 233
      Height = 33
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1074' MS Word'
      TabOrder = 2
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 136
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Button4'
      TabOrder = 3
      OnClick = Button4Click
    end
  end
  object Panel3: TPanel
    Left = 16
    Top = 224
    Width = 625
    Height = 281
    TabOrder = 2
    object DBGrid1: TDBGrid
      Left = 8
      Top = 16
      Width = 609
      Height = 249
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
          FieldName = 'FName'
          Title.Caption = #1060#1072#1084#1080#1083#1080#1103
          Width = 116
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LName'
          Title.Caption = #1048#1084#1103
          Width = 123
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FFName'
          Title.Caption = #1054#1090#1077#1095#1077#1089#1090#1074#1086
          Width = 113
          Visible = True
        end>
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 16
    Top = 384
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=student;Data Source=MUBORAKSHO-WEB'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 56
    Top = 384
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from FIO_students')
    Left = 96
    Top = 384
  end
end
