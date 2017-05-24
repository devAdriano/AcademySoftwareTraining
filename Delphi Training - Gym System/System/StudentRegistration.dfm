object Frm_StudentRegistration: TFrm_StudentRegistration
  Left = 0
  Top = 0
  AutoSize = True
  Caption = 'Student Registration'
  ClientHeight = 720
  ClientWidth = 817
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label15: TLabel
    Left = 82
    Top = 695
    Width = 125
    Height = 23
    Caption = 'System User '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object GB_StudentPersonal: TGroupBox
    Left = 0
    Top = 8
    Width = 737
    Height = 153
    Caption = 'Personal '
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 40
      Width = 39
      Height = 16
      Caption = 'Name '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 4
      Top = 112
      Width = 70
      Height = 16
      Caption = 'Birth Date '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 305
      Top = 112
      Width = 71
      Height = 16
      Caption = 'ID Number '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 529
      Top = 112
      Width = 28
      Height = 16
      Caption = 'SSN '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object Label12: TLabel
      Left = 3
      Top = 70
      Width = 65
      Height = 16
      Caption = 'Objective '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object DBE_StudentName: TDBEdit
      Left = 76
      Top = 37
      Width = 631
      Height = 27
      DataField = 'Name'
      DataSource = DM_DBConnection.DS_Student
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsItalic]
      ParentFont = False
      TabOrder = 0
    end
    object DTP_StudentBirthDate: TDateTimePicker
      Left = 80
      Top = 105
      Width = 186
      Height = 27
      Date = 42863.640239594900000000
      Time = 42863.640239594900000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsItalic]
      ParentFont = False
      TabOrder = 1
      OnExit = DTP_StudentBirthDateExit
    end
    object DBE_StudentID: TDBEdit
      Left = 385
      Top = 109
      Width = 117
      Height = 27
      DataField = 'RG'
      DataSource = DM_DBConnection.DS_Student
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsItalic]
      ParentFont = False
      TabOrder = 2
    end
    object DBE_StudentSSN: TDBEdit
      Left = 561
      Top = 109
      Width = 146
      Height = 27
      DataField = 'CPF'
      DataSource = DM_DBConnection.DS_Student
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsItalic]
      ParentFont = False
      TabOrder = 3
    end
    object DBE_Objective: TDBEdit
      Left = 76
      Top = 70
      Width = 631
      Height = 27
      DataField = 'Objective'
      DataSource = DM_DBConnection.DS_Student
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsItalic]
      ParentFont = False
      TabOrder = 4
    end
  end
  object GB_StudentAddress: TGroupBox
    Left = 0
    Top = 167
    Width = 737
    Height = 178
    Caption = 'Address Data '
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    TabOrder = 1
    object Label5: TLabel
      Left = 13
      Top = 40
      Width = 58
      Height = 16
      Caption = 'Address '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 13
      Top = 78
      Width = 58
      Height = 16
      Caption = 'Zip Code '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 236
      Top = 81
      Width = 93
      Height = 16
      Caption = 'Neighborhood '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 520
      Top = 81
      Width = 53
      Height = 16
      Caption = 'Number '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 13
      Top = 143
      Width = 56
      Height = 16
      Caption = 'Phone 1 '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 229
      Top = 143
      Width = 56
      Height = 16
      Caption = 'Phone 2 '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object Label11: TLabel
      Left = 444
      Top = 143
      Width = 95
      Height = 16
      Caption = 'Message With '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object Label13: TLabel
      Left = 12
      Top = 114
      Width = 83
      Height = 16
      Caption = 'Complement '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object DBE_Address: TDBEdit
      Left = 76
      Top = 37
      Width = 631
      Height = 27
      DataField = 'Address'
      DataSource = DM_DBConnection.DS_Student
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsItalic]
      ParentFont = False
      TabOrder = 0
    end
    object DBE_ZipCode: TDBEdit
      Left = 77
      Top = 70
      Width = 132
      Height = 27
      DataField = 'ZipCode'
      DataSource = DM_DBConnection.DS_Student
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsItalic]
      ParentFont = False
      TabOrder = 1
    end
    object DBE_Neighborhood: TDBEdit
      Left = 335
      Top = 70
      Width = 162
      Height = 27
      DataField = 'Neighborhood'
      DataSource = DM_DBConnection.DS_Student
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsItalic]
      ParentFont = False
      TabOrder = 2
    end
    object DBE_Number: TDBEdit
      Left = 579
      Top = 70
      Width = 128
      Height = 27
      DataField = 'Number'
      DataSource = DM_DBConnection.DS_Student
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsItalic]
      ParentFont = False
      TabOrder = 3
    end
    object DBE_Phone1: TDBEdit
      Left = 75
      Top = 136
      Width = 132
      Height = 27
      DataField = 'Phone'
      DataSource = DM_DBConnection.DS_Student
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsItalic]
      ParentFont = False
      TabOrder = 4
    end
    object DBE_Phone2: TDBEdit
      Left = 291
      Top = 136
      Width = 132
      Height = 27
      DataField = 'Phone2'
      DataSource = DM_DBConnection.DS_Student
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsItalic]
      ParentFont = False
      TabOrder = 5
    end
    object DBE_MessageWith: TDBEdit
      Left = 545
      Top = 136
      Width = 162
      Height = 27
      DataField = 'MessageWith'
      DataSource = DM_DBConnection.DS_Student
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsItalic]
      ParentFont = False
      TabOrder = 6
    end
    object DBE_Complement: TDBEdit
      Left = 101
      Top = 103
      Width = 606
      Height = 27
      DataField = 'Complement'
      DataSource = DM_DBConnection.DS_Student
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsItalic]
      ParentFont = False
      TabOrder = 7
    end
  end
  object DBNavigator1: TDBNavigator
    Left = 753
    Top = 0
    Width = 64
    Height = 340
    DataSource = DM_DBConnection.DS_Student
    Kind = dbnVertical
    TabOrder = 2
    OnClick = DBNavigator1Click
  end
  object Btn_UserRegistration: TButton
    Left = 579
    Top = 695
    Width = 123
    Height = 25
    Caption = 'User Registration'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    TabOrder = 3
  end
  object DBG_Student: TDBGrid
    Left = 0
    Top = 351
    Width = 817
    Height = 338
    DataSource = DM_DBConnection.DS_Student
    ReadOnly = True
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBLC_SystemUser: TDBLookupComboBox
    Left = 213
    Top = 695
    Width = 360
    Height = 21
    DataField = 'idLogin'
    DataSource = DM_DBConnection.DS_Student
    KeyField = 'IdLogin'
    ListField = 'UserRG'
    ListSource = DM_DBConnection.DS_Login
    TabOrder = 5
  end
end
