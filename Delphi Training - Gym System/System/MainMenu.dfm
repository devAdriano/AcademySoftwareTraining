object Frm_MainMenu: TFrm_MainMenu
  Left = 0
  Top = 0
  AutoSize = True
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Main Menu'
  ClientHeight = 417
  ClientWidth = 759
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
  object GB_CoachMenu: TGroupBox
    Left = 0
    Top = 0
    Width = 249
    Height = 417
    Caption = 'COACH '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    TabOrder = 0
    object Btn_CoachRegistration: TButton
      Left = 56
      Top = 144
      Width = 137
      Height = 41
      Caption = 'Registration'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      TabOrder = 0
      OnClick = Btn_CoachRegistrationClick
    end
    object Btn_BuildTraining: TButton
      Left = 56
      Top = 216
      Width = 137
      Height = 41
      Caption = 'Build Training'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      TabOrder = 1
      OnClick = Btn_BuildTrainingClick
    end
  end
  object GB_StudentMenu: TGroupBox
    Left = 255
    Top = 0
    Width = 249
    Height = 417
    Caption = 'STUDENT '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    TabOrder = 1
    object Btn_StudentRegistration: TButton
      Left = 56
      Top = 104
      Width = 137
      Height = 41
      Caption = 'Registration'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      TabOrder = 0
      OnClick = Btn_StudentRegistrationClick
    end
    object Btn_StudentTraining: TButton
      Left = 56
      Top = 176
      Width = 137
      Height = 41
      Caption = 'Trainings'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      TabOrder = 1
      OnClick = Btn_StudentTrainingClick
    end
    object Btn_StudentReport: TButton
      Left = 56
      Top = 248
      Width = 137
      Height = 41
      Caption = 'Reports'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      TabOrder = 2
      OnClick = Btn_StudentReportClick
    end
  end
  object GB_System: TGroupBox
    Left = 510
    Top = 0
    Width = 249
    Height = 417
    Caption = 'SYSTEM '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    TabOrder = 2
    object Btn_UserManagement: TButton
      Left = 56
      Top = 144
      Width = 137
      Height = 41
      Caption = 'User Manager'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      TabOrder = 0
      OnClick = Btn_UserManagementClick
    end
    object Btn_UserPermissions: TButton
      Left = 56
      Top = 216
      Width = 137
      Height = 41
      Caption = 'Permissions'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      TabOrder = 1
      OnClick = Btn_UserPermissionsClick
    end
  end
end
