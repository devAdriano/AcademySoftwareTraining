object Frm_CoachRegistration: TFrm_CoachRegistration
  Left = 480
  Top = 150
  Caption = 'Coach Registration'
  ClientHeight = 956
  ClientWidth = 835
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
  object PC_Coach: TPageControl
    Left = 0
    Top = 0
    Width = 833
    Height = 948
    ActivePage = TabSheet1
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Registration'
      object GB_CoachPersonal: TGroupBox
        Left = 8
        Top = 8
        Width = 737
        Height = 137
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
          Left = 31
          Top = 43
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
          Left = 29
          Top = 88
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
          Left = 334
          Top = 88
          Width = 74
          Height = 16
          Caption = 'National ID '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 558
          Top = 88
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
        object DBE_CoachName: TDBEdit
          Left = 76
          Top = 37
          Width = 631
          Height = 27
          DataField = 'Name'
          DataSource = DM_DBConnection.DS_Coach
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsItalic]
          ParentFont = False
          TabOrder = 0
        end
        object DTP_CoachBirthDate: TDateTimePicker
          Left = 105
          Top = 80
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
          OnExit = DTP_CoachBirthDateExit
        end
        object DBE_CoachID: TDBEdit
          Left = 414
          Top = 85
          Width = 117
          Height = 27
          DataField = 'RG'
          DataSource = DM_DBConnection.DS_Coach
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsItalic]
          ParentFont = False
          TabOrder = 2
          OnExit = DBE_CoachIDExit
        end
        object DBE_CoachCPF: TDBEdit
          Left = 592
          Top = 82
          Width = 117
          Height = 27
          DataField = 'CPF'
          DataSource = DM_DBConnection.DS_Coach
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsItalic]
          ParentFont = False
          TabOrder = 3
        end
        object DBEdi_ShowBirthDate: TDBEdit
          Left = 105
          Top = 82
          Width = 186
          Height = 27
          DataField = 'BirthDate'
          DataSource = DM_DBConnection.DS_Coach
          TabOrder = 4
        end
      end
      object DBN_Coach: TDBNavigator
        Left = 753
        Top = 187
        Width = 64
        Height = 440
        DataSource = DM_DBConnection.DS_Coach
        Kind = dbnVertical
        TabOrder = 1
        OnClick = DBN_CoachClick
        OnExit = DBN_CoachExit
      end
      object GB_CoachAddress: TGroupBox
        Left = 10
        Top = 151
        Width = 737
        Height = 161
        Caption = 'Address Data '
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        TabOrder = 2
        object Label5: TLabel
          Left = 12
          Top = 48
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
          Top = 78
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
          Left = 15
          Top = 110
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
          Left = 231
          Top = 110
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
        object DBE_Address: TDBEdit
          Left = 76
          Top = 37
          Width = 631
          Height = 27
          DataField = 'Address'
          DataSource = DM_DBConnection.DS_Coach
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
          DataSource = DM_DBConnection.DS_Coach
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
          DataField = 'neighborhood'
          DataSource = DM_DBConnection.DS_Coach
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
          DataSource = DM_DBConnection.DS_Coach
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsItalic]
          ParentFont = False
          TabOrder = 3
        end
        object DBE_Phone1: TDBEdit
          Left = 77
          Top = 103
          Width = 132
          Height = 27
          DataField = 'Phone'
          DataSource = DM_DBConnection.DS_Coach
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsItalic]
          ParentFont = False
          TabOrder = 4
        end
        object DBE_Phone2: TDBEdit
          Left = 293
          Top = 103
          Width = 132
          Height = 27
          DataField = 'Phone2'
          DataSource = DM_DBConnection.DS_Coach
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsItalic]
          ParentFont = False
          TabOrder = 5
        end
      end
      object GB_CoachLabor: TGroupBox
        Left = 10
        Top = 318
        Width = 737
        Height = 180
        Caption = 'Labor Information '
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        TabOrder = 3
        object Label11: TLabel
          Left = 45
          Top = 40
          Width = 25
          Height = 16
          Caption = 'PIS '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
        end
        object Label12: TLabel
          Left = 233
          Top = 40
          Width = 84
          Height = 16
          Caption = 'Work Permit '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
        end
        object Label13: TLabel
          Left = 36
          Top = 80
          Width = 104
          Height = 16
          Caption = 'Admission Date '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
        end
        object lbl_ResignationText: TLabel
          Left = 352
          Top = 80
          Width = 115
          Height = 16
          Caption = 'Resignation Date '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
        end
        object Label19: TLabel
          Left = 293
          Top = 120
          Width = 100
          Height = 16
          Caption = 'Work Schedule '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
        end
        object DBE_PisNumber: TDBEdit
          Left = 76
          Top = 30
          Width = 132
          Height = 27
          DataField = 'PIS'
          DataSource = DM_DBConnection.DS_Coach
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsItalic]
          ParentFont = False
          TabOrder = 0
        end
        object DBE_WorkPermit: TDBEdit
          Left = 323
          Top = 30
          Width = 336
          Height = 27
          DataField = 'CLT'
          DataSource = DM_DBConnection.DS_Coach
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsItalic]
          ParentFont = False
          TabOrder = 1
        end
        object DTP_AdmissionDate: TDateTimePicker
          Left = 146
          Top = 72
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
          OnExit = DTP_AdmissionDateExit
        end
        object DTP_ResignationDate: TDateTimePicker
          Left = 473
          Top = 71
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
          TabOrder = 3
          Visible = False
          OnExit = DTP_ResignationDateExit
        end
        object DBLC_WorkSchedule: TDBLookupComboBox
          Left = 160
          Top = 142
          Width = 401
          Height = 27
          DataField = 'idWSchedule'
          DataSource = DM_DBConnection.DS_CoachHasSchedule
          KeyField = 'IdWSchedule'
          ListField = 'Description'
          ListSource = DM_DBConnection.DS_WorkSchedule
          TabOrder = 4
        end
        object CB_DemissionCheck: TCheckBox
          Left = 473
          Top = 79
          Width = 208
          Height = 17
          Caption = 'Insert a resignation '
          TabOrder = 5
          OnClick = CB_DemissionCheckClick
        end
        object DBEdi_ShowAdmissionDate: TDBEdit
          Left = 146
          Top = 72
          Width = 186
          Height = 27
          DataField = 'AdmissionDate'
          DataSource = DM_DBConnection.DS_Coach
          TabOrder = 6
        end
        object DBEdi_ShowDemissionDate: TDBEdit
          Left = 473
          Top = 72
          Width = 186
          Height = 27
          DataField = 'DemissionDate'
          DataSource = DM_DBConnection.DS_Coach
          TabOrder = 7
          Visible = False
        end
      end
      object DBG_Coach: TDBGrid
        Left = 10
        Top = 734
        Width = 812
        Height = 183
        DataSource = DM_DBConnection.DS_Coach
        ReadOnly = True
        TabOrder = 4
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object GB_SystemUser: TGroupBox
        Left = 10
        Top = 504
        Width = 737
        Height = 224
        Caption = 'System User '
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        TabOrder = 5
        object Label14: TLabel
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
        object Label18: TLabel
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
        object Label20: TLabel
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
        object Label21: TLabel
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
    object TabSheet2: TTabSheet
      Caption = 'Work Schedule'
      ImageIndex = 1
      object Label15: TLabel
        Left = 8
        Top = 10
        Width = 175
        Height = 19
        Caption = 'Schedule Description '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
      object DBE_ScheduleDescription: TDBEdit
        Left = 189
        Top = 8
        Width = 555
        Height = 21
        DataField = 'Description'
        DataSource = DM_DBConnection.DS_WorkSchedule
        Enabled = False
        TabOrder = 0
      end
      object GB_WSData: TGroupBox
        Left = 8
        Top = 35
        Width = 736
        Height = 86
        Caption = 'Insert Work Schedule '
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        TabOrder = 1
        object Label16: TLabel
          Left = 203
          Top = 23
          Width = 39
          Height = 16
          Caption = 'Entry '
        end
        object Label17: TLabel
          Left = 411
          Top = 23
          Width = 27
          Height = 16
          Caption = 'Exit '
        end
        object DBE_Entry: TDBEdit
          Left = 160
          Top = 45
          Width = 145
          Height = 24
          DataField = 'HEntry'
          DataSource = DM_DBConnection.DS_WorkSchedule
          TabOrder = 0
        end
        object DBE_Exit: TDBEdit
          Left = 356
          Top = 45
          Width = 145
          Height = 24
          DataField = 'HExit'
          DataSource = DM_DBConnection.DS_WorkSchedule
          TabOrder = 1
        end
      end
      object GB_WeekDays: TGroupBox
        Left = 8
        Top = 127
        Width = 736
        Height = 201
        Caption = 'Insert Work Week Days'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        TabOrder = 2
        object DBCB_Sunday: TDBCheckBox
          Left = 3
          Top = 32
          Width = 94
          Height = 17
          Caption = 'Sunday '
          DataField = 'Sunday'
          DataSource = DM_DBConnection.DS_WorkSchedule
          TabOrder = 0
        end
        object DBCB_Monday: TDBCheckBox
          Left = 3
          Top = 55
          Width = 94
          Height = 17
          Caption = 'Monday '
          DataField = 'Monday'
          DataSource = DM_DBConnection.DS_WorkSchedule
          TabOrder = 1
        end
        object DBCB_Tuesday: TDBCheckBox
          Left = 3
          Top = 78
          Width = 94
          Height = 17
          Caption = 'Tuesday '
          DataField = 'Tuesday'
          DataSource = DM_DBConnection.DS_WorkSchedule
          TabOrder = 2
        end
        object DBCB_Wednesday: TDBCheckBox
          Left = 3
          Top = 101
          Width = 110
          Height = 17
          Caption = 'Wednesday '
          DataField = 'Wednesday'
          DataSource = DM_DBConnection.DS_WorkSchedule
          TabOrder = 3
        end
        object DBCB_Thursday: TDBCheckBox
          Left = 3
          Top = 124
          Width = 94
          Height = 17
          Caption = 'Thursday '
          DataField = 'Thursday'
          DataSource = DM_DBConnection.DS_WorkSchedule
          TabOrder = 4
        end
        object DBCB_Friday: TDBCheckBox
          Left = 3
          Top = 147
          Width = 94
          Height = 17
          Caption = 'Friday '
          DataField = 'Friday'
          DataSource = DM_DBConnection.DS_WorkSchedule
          TabOrder = 5
        end
        object DBCB_Saturday: TDBCheckBox
          Left = 3
          Top = 170
          Width = 94
          Height = 17
          Caption = 'Saturday '
          DataField = 'Saturday'
          DataSource = DM_DBConnection.DS_WorkSchedule
          TabOrder = 6
        end
        object Btn_WeekDays: TButton
          Left = 181
          Top = 64
          Width = 121
          Height = 33
          Caption = 'Week Days'
          TabOrder = 7
          OnClick = Btn_WeekDaysClick
        end
        object Btn_AllDays: TButton
          Left = 328
          Top = 63
          Width = 121
          Height = 34
          Caption = 'All Days'
          TabOrder = 8
          OnClick = Btn_AllDaysClick
        end
      end
      object DBN_WorkSchedule: TDBNavigator
        Left = 750
        Top = 3
        Width = 72
        Height = 320
        DataSource = DM_DBConnection.DS_WorkSchedule
        Kind = dbnVertical
        TabOrder = 3
        OnClick = DBN_WorkScheduleClick
      end
      object DBG_WorkSchedule: TDBGrid
        Left = 8
        Top = 334
        Width = 814
        Height = 583
        DataSource = DM_DBConnection.DS_WorkSchedule
        ReadOnly = True
        TabOrder = 4
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
    end
  end
end
