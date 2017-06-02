object Frm_UserRegistration: TFrm_UserRegistration
  Left = 732
  Top = 305
  Caption = 'User Registration'
  ClientHeight = 453
  ClientWidth = 522
  Color = clMoneyGreen
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
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 87
    Height = 19
    Caption = 'Access for '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object GB_UserData: TGroupBox
    Left = 8
    Top = 35
    Width = 440
    Height = 174
    Caption = 'User Data '
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    TabOrder = 0
    object Label2: TLabel
      Left = 16
      Top = 48
      Width = 74
      Height = 16
      Caption = 'National ID '
    end
    object Label3: TLabel
      Left = 16
      Top = 80
      Width = 67
      Height = 16
      Caption = 'Password '
    end
    object Label4: TLabel
      Left = 16
      Top = 128
      Width = 123
      Height = 16
      Caption = 'Access Permission '
    end
    object DBE_UserID: TDBEdit
      Left = 96
      Top = 47
      Width = 313
      Height = 24
      DataField = 'UserRG'
      DataSource = DM_DBConnection.DS_Login
      TabOrder = 0
    end
    object DBE_UserPassword: TDBEdit
      Left = 96
      Top = 77
      Width = 313
      Height = 24
      DataField = 'Password'
      DataSource = DM_DBConnection.DS_Login
      TabOrder = 1
    end
    object DBLC_AccessPermision: TDBLookupComboBox
      Left = 145
      Top = 120
      Width = 264
      Height = 24
      DataField = 'IdAcessPermission'
      DataSource = DM_DBConnection.DS_Login
      KeyField = 'IdAcessPermission'
      ListField = 'Description'
      ListSource = DM_DBConnection.DS_AccessPermission
      TabOrder = 2
    end
  end
  object s: TDBGrid
    Left = 8
    Top = 215
    Width = 440
    Height = 230
    DataSource = DM_DBConnection.DS_Login
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBN_Login: TDBNavigator
    Left = 454
    Top = 8
    Width = 64
    Height = 440
    DataSource = DM_DBConnection.DS_Login
    Kind = dbnVertical
    TabOrder = 2
    OnClick = DBN_LoginClick
  end
  object DBCB_Registared: TDBLookupComboBox
    Left = 104
    Top = 8
    Width = 313
    Height = 21
    KeyField = 'IdStudent'
    ListField = 'Name'
    ListSource = DM_DBConnection.DS_Student
    TabOrder = 3
  end
end
