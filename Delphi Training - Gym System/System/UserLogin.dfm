object Frm_UserLogin: TFrm_UserLogin
  Left = 0
  Top = 0
  AutoSize = True
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'User LogIn'
  ClientHeight = 180
  ClientWidth = 361
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
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 361
    Height = 180
    Caption = 'Login '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 17
      Top = 50
      Width = 98
      Height = 19
      Caption = 'RG Number '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 17
      Top = 95
      Width = 83
      Height = 19
      Caption = 'Password '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object Btn_Login: TButton
      Left = 64
      Top = 136
      Width = 105
      Height = 25
      Caption = 'Login'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      TabOrder = 2
      OnClick = Btn_LoginClick
    end
    object Edit_IDNumber: TEdit
      Left = 136
      Top = 47
      Width = 193
      Height = 27
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      TabOrder = 0
      Text = '948380'
    end
    object Edit_Password: TEdit
      Left = 136
      Top = 92
      Width = 193
      Height = 27
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsItalic]
      NumbersOnly = True
      ParentFont = False
      PasswordChar = '*'
      TabOrder = 1
    end
    object Btn_ExitSystem: TButton
      Left = 192
      Top = 136
      Width = 105
      Height = 25
      Caption = 'Exit'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      TabOrder = 3
      OnClick = Btn_ExitSystemClick
    end
  end
end
