object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 529
  ClientWidth = 497
  Color = clBtnFace
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -19
  Font.Name = 'Times New Roman'
  Font.Style = [fsBold]
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 22
  object Panel1: TPanel
    Left = 8
    Top = 0
    Width = 481
    Height = 529
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 276
      Width = 131
      Height = 22
      Caption = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103
    end
    object Label2: TLabel
      Left = 320
      Top = 224
      Width = 149
      Height = 22
      Caption = #1044#1072#1090#1072' '#1079#1072#1087#1086#1083#1085#1077#1085#1080#1103
    end
    object LabeledEdit2: TLabeledEdit
      Left = 16
      Top = 80
      Width = 433
      Height = 30
      EditLabel.Width = 37
      EditLabel.Height = 22
      EditLabel.Caption = #1048#1084#1103
      TabOrder = 0
    end
    object RadioGroup1: TRadioGroup
      Left = 16
      Top = 304
      Width = 433
      Height = 45
      Caption = #1057#1077#1084#1077#1081#1085#1086#1077' '#1087#1086#1083#1086#1078#1077#1085#1080#1077
      Columns = 3
      Items.Strings = (
        #1093#1086#1083#1086#1089#1090'.'
        #1079#1072#1084#1091#1078'/'#1078#1077#1085#1072#1090
        #1088#1072#1079#1074#1077#1076#1077#1085'.')
      TabOrder = 1
    end
    object RadioGroup2: TRadioGroup
      Left = 16
      Top = 217
      Width = 273
      Height = 53
      Caption = #1055#1086#1083
      Columns = 2
      Items.Strings = (
        #1084#1091#1078'.'
        #1078#1077#1085'.')
      TabOrder = 2
    end
    object DateTimePicker1: TDateTimePicker
      Left = 153
      Top = 276
      Width = 152
      Height = 30
      Date = 44998.000000000000000000
      Time = 0.837841828702949000
      TabOrder = 3
    end
    object LabeledEdit4: TLabeledEdit
      Left = 16
      Top = 384
      Width = 185
      Height = 30
      EditLabel.Width = 144
      EditLabel.Height = 22
      EditLabel.Caption = #1052#1077#1089#1090#1086' '#1088#1086#1078#1076#1077#1085#1080#1103
      TabOrder = 4
    end
    object LabeledEdit6: TLabeledEdit
      Left = 280
      Top = 384
      Width = 161
      Height = 30
      EditLabel.Width = 138
      EditLabel.Height = 22
      EditLabel.Caption = #1053#1072#1094#1080#1086#1085#1072#1083#1100#1085#1086#1089#1100
      TabOrder = 5
    end
    object LabeledEdit7: TLabeledEdit
      Left = 16
      Top = 440
      Width = 121
      Height = 30
      EditLabel.Width = 114
      EditLabel.Height = 22
      EditLabel.Caption = #1054#1073#1088#1072#1079#1086#1074#1072#1085#1080#1077
      TabOrder = 6
    end
    object LabeledEdit8: TLabeledEdit
      Left = 168
      Top = 440
      Width = 121
      Height = 30
      EditLabel.Width = 95
      EditLabel.Height = 22
      EditLabel.Caption = #1055#1088#1086#1092#1077#1089#1089#1080#1103
      TabOrder = 7
    end
    object LabeledEdit9: TLabeledEdit
      Left = 320
      Top = 440
      Width = 121
      Height = 30
      EditLabel.Width = 117
      EditLabel.Height = 22
      EditLabel.BiDiMode = bdRightToLeft
      EditLabel.Caption = #1053#1072#1087#1088#1072#1074#1083#1077#1085#1080#1103
      EditLabel.ParentBiDiMode = False
      TabOrder = 8
    end
    object DateTimePicker2: TDateTimePicker
      Left = 322
      Top = 252
      Width = 147
      Height = 30
      Date = 44998.000000000000000000
      Time = 0.859314270834147500
      Enabled = False
      TabOrder = 9
    end
    object Button1: TButton
      Left = 18
      Top = 476
      Width = 129
      Height = 42
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      TabOrder = 10
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 304
      Top = 481
      Width = 165
      Height = 37
      Caption = #1054#1095#1080#1089#1090#1080#1090#1100
      TabOrder = 11
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 168
      Top = 485
      Width = 121
      Height = 33
      Caption = #1054#1090#1084#1077#1085#1072
      TabOrder = 12
      OnClick = Button3Click
    end
    object LabeledEdit3: TLabeledEdit
      Left = 18
      Top = 132
      Width = 207
      Height = 30
      EditLabel.Width = 64
      EditLabel.Height = 22
      EditLabel.Caption = 'E - mail'
      TabOrder = 13
    end
    object LabeledEdit5: TLabeledEdit
      Left = 248
      Top = 132
      Width = 201
      Height = 30
      EditLabel.Width = 143
      EditLabel.Height = 22
      EditLabel.Caption = #1053#1086#1084#1077#1088' '#1090#1077#1083#1077#1092#1086#1085#1072
      TabOrder = 14
    end
    object LabeledEdit10: TLabeledEdit
      Left = 16
      Top = 188
      Width = 433
      Height = 30
      EditLabel.Width = 51
      EditLabel.Height = 22
      EditLabel.Caption = #1040#1076#1088#1077#1089
      TabOrder = 15
    end
  end
  object LabeledEdit1: TLabeledEdit
    Left = 24
    Top = 24
    Width = 433
    Height = 30
    EditLabel.Width = 83
    EditLabel.Height = 22
    EditLabel.Caption = #1060#1072#1084#1080#1083#1080#1103
    TabOrder = 1
  end
end
