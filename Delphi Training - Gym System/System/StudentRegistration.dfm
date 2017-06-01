object Frm_StudentRegistration: TFrm_StudentRegistration
  Left = 411
  Top = 75
  AutoSize = True
  Caption = 'Student Registration'
  ClientHeight = 911
  ClientWidth = 809
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GB_StudentPersonal: TGroupBox
    Left = 0
    Top = 0
    Width = 809
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
      Left = 72
      Top = 32
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
      Left = 52
      Top = 104
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
      Left = 337
      Top = 104
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
      Left = 577
      Top = 104
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
      Left = 51
      Top = 62
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
      Left = 124
      Top = 29
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
      Left = 128
      Top = 97
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
      TabOrder = 2
      OnExit = DTP_StudentBirthDateExit
    end
    object DBE_StudentID: TDBEdit
      Left = 414
      Top = 98
      Width = 147
      Height = 27
      DataField = 'RG'
      DataSource = DM_DBConnection.DS_Student
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsItalic]
      ParentFont = False
      TabOrder = 3
      OnExit = DBE_StudentIDExit
    end
    object DBE_StudentSSN: TDBEdit
      Left = 609
      Top = 98
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
      TabOrder = 4
    end
    object DBE_Objective: TDBEdit
      Left = 124
      Top = 62
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
      TabOrder = 1
    end
    object DBEdi_ShowBirthDate: TDBEdit
      Left = 128
      Top = 98
      Width = 186
      Height = 27
      DataField = 'BirthDate'
      DataSource = DM_DBConnection.DS_Student
      TabOrder = 5
    end
  end
  object GB_StudentAddress: TGroupBox
    Left = 0
    Top = 159
    Width = 809
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
      Left = 61
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
      Left = 61
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
      Left = 284
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
      Left = 568
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
      Left = 61
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
      Left = 277
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
      Left = 492
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
      Left = 60
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
      Left = 124
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
      Left = 125
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
      Left = 383
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
      Left = 627
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
      Left = 123
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
      TabOrder = 5
    end
    object DBE_Phone2: TDBEdit
      Left = 339
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
      TabOrder = 6
    end
    object DBE_MessageWith: TDBEdit
      Left = 593
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
      TabOrder = 7
    end
    object DBE_Complement: TDBEdit
      Left = 149
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
      TabOrder = 4
    end
  end
  object DBN_StudentRegistration: TDBNavigator
    Left = 745
    Top = 351
    Width = 64
    Height = 560
    DataSource = DM_DBConnection.DS_Student
    Kind = dbnVertical
    TabOrder = 2
    OnClick = DBN_StudentRegistrationClick
  end
  object DBG_Student: TDBGrid
    Left = 0
    Top = 573
    Width = 737
    Height = 338
    DataSource = DM_DBConnection.DS_Student
    ReadOnly = True
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object GB_SystemUser: TGroupBox
    Left = 0
    Top = 343
    Width = 737
    Height = 224
    Caption = 'System User '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    TabOrder = 4
    object Label15: TLabel
      Left = 76
      Top = 198
      Width = 160
      Height = 23
      Caption = 'User Permission '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object Label14: TLabel
      Left = 341
      Top = 15
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
    object Label16: TLabel
      Left = 341
      Top = 70
      Width = 67
      Height = 16
      Caption = 'Password '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object Label17: TLabel
      Left = 305
      Top = 125
      Width = 120
      Height = 16
      Caption = 'Confirm Password '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object DBLC_UserPermission: TDBLookupComboBox
      Left = 242
      Top = 194
      Width = 360
      Height = 27
      DataField = 'IdAcessPermission'
      DataSource = DM_DBConnection.DS_Login
      KeyField = 'IdAcessPermission'
      ListField = 'Description'
      ListSource = DM_DBConnection.DS_AccessPermission
      TabOrder = 3
      OnExit = DBLC_UserPermissionExit
    end
    object DBE_SystemUserID: TDBEdit
      Left = 269
      Top = 37
      Width = 219
      Height = 27
      DataField = 'UserRG'
      DataSource = DM_DBConnection.DS_Login
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsItalic]
      ParentFont = False
      TabOrder = 0
    end
    object Edit_PasswordConfirmation: TEdit
      Left = 269
      Top = 147
      Width = 219
      Height = 27
      PasswordChar = '*'
      TabOrder = 2
      OnExit = Edit_PasswordConfirmationExit
    end
    object Edit_Password: TEdit
      Left = 269
      Top = 92
      Width = 219
      Height = 27
      PasswordChar = '*'
      TabOrder = 1
    end
  end
end
