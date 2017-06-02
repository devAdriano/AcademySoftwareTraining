object Frm_CoachSpace: TFrm_CoachSpace
  Left = 495
  Top = 203
  Caption = 'Reports for Coach'
  ClientHeight = 771
  ClientWidth = 998
  Color = clMoneyGreen
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 304
    Top = 8
    Width = 54
    Height = 19
    Caption = 'Coach '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object DBEdi_CoachStudent: TDBEdit
    Left = 364
    Top = 8
    Width = 313
    Height = 21
    TabOrder = 0
  end
  object GP_StudentCoach: TGroupBox
    Left = 8
    Top = 35
    Width = 985
    Height = 368
    Caption = 'Coach Students'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    TabOrder = 1
    object DBG_Students: TDBGrid
      Left = 3
      Top = 23
      Width = 974
      Height = 334
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = [fsBold, fsItalic]
    end
  end
  object GB_Trainings: TGroupBox
    Left = 8
    Top = 398
    Width = 985
    Height = 368
    Caption = 'Trainings Permormed '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    TabOrder = 2
    object DBG_trainingPerformed: TDBGrid
      Left = 3
      Top = 23
      Width = 974
      Height = 334
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = [fsBold, fsItalic]
    end
  end
end
