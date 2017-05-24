object Frm_AccessPermission: TFrm_AccessPermission
  Left = 0
  Top = 0
  Caption = 'User Access Permission'
  ClientHeight = 518
  ClientWidth = 389
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
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 156
    Height = 19
    Caption = 'Access Description '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object GB_Access: TGroupBox
    Left = 8
    Top = 44
    Width = 289
    Height = 261
    Caption = 'Select permissions for this user category '
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    TabOrder = 0
    object DBCB_CoachRegistration: TDBCheckBox
      Left = 24
      Top = 55
      Width = 161
      Height = 17
      Caption = 'Coach Registration '
      DataField = 'CoachRegistration'
      DataSource = DM_DBConnection.DS_AccessPermission
      TabOrder = 0
    end
    object DBCB_StudentDataSheet: TDBCheckBox
      Left = 24
      Top = 78
      Width = 161
      Height = 17
      Caption = 'Student Data Sheet '
      DataField = 'StudentTrainingDataSheet'
      DataSource = DM_DBConnection.DS_AccessPermission
      TabOrder = 1
    end
    object DBCB_CoachBuidDataSheet: TDBCheckBox
      Left = 24
      Top = 101
      Width = 161
      Height = 17
      Caption = 'Build Data Sheet  '
      DataField = 'CoachBuildDataSheet'
      DataSource = DM_DBConnection.DS_AccessPermission
      TabOrder = 2
    end
    object DBCB_UserRegistration: TDBCheckBox
      Left = 24
      Top = 124
      Width = 161
      Height = 17
      Caption = 'User Registration '
      DataField = 'UserRegistration'
      DataSource = DM_DBConnection.DS_AccessPermission
      TabOrder = 3
    end
    object DBCB_AccessPermission: TDBCheckBox
      Left = 24
      Top = 147
      Width = 161
      Height = 17
      Caption = 'Access Permission '
      DataField = 'AccessPermition'
      DataSource = DM_DBConnection.DS_AccessPermission
      TabOrder = 4
    end
    object DBCB_CoachSchedule: TDBCheckBox
      Left = 24
      Top = 170
      Width = 217
      Height = 17
      Caption = 'Coach Schedule Registration '
      DataField = 'CoachRegistration'
      DataSource = DM_DBConnection.DS_AccessPermission
      TabOrder = 5
    end
    object DBCB_CoachBuildChallenge: TDBCheckBox
      Left = 24
      Top = 193
      Width = 185
      Height = 17
      Caption = 'Build Student Challenge '
      DataField = 'CoachBuildChallenge'
      DataSource = DM_DBConnection.DS_AccessPermission
      TabOrder = 6
    end
    object DBCB_StudentChallenge: TDBCheckBox
      Left = 24
      Top = 216
      Width = 161
      Height = 17
      Caption = 'Student Challenge '
      DataField = 'StudentChallenge'
      DataSource = DM_DBConnection.DS_AccessPermission
      TabOrder = 7
    end
    object DBCB_StudentRegistration: TDBCheckBox
      Left = 24
      Top = 32
      Width = 161
      Height = 17
      Caption = 'Student Registration '
      DataField = 'StudentRegistration'
      DataSource = DM_DBConnection.DS_AccessPermission
      TabOrder = 8
    end
  end
  object DBE_Description: TDBEdit
    Left = 170
    Top = 8
    Width = 215
    Height = 21
    DataField = 'Description'
    DataSource = DM_DBConnection.DS_AccessPermission
    Enabled = False
    TabOrder = 1
  end
  object DBN_AccessPermission: TDBNavigator
    Left = 313
    Top = 44
    Width = 72
    Height = 260
    DataSource = DM_DBConnection.DS_AccessPermission
    Kind = dbnVertical
    TabOrder = 2
    OnClick = DBN_AccessPermissionClick
  end
  object DBG_AccessPermission: TDBGrid
    Left = 8
    Top = 311
    Width = 377
    Height = 203
    DataSource = DM_DBConnection.DS_AccessPermission
    ReadOnly = True
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
end
