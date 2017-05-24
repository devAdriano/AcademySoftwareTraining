object Frm_StudentReport: TFrm_StudentReport
  Left = 0
  Top = 0
  Caption = 'Student Report'
  ClientHeight = 779
  ClientWidth = 1179
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
  object lbl_student: TLabel
    Left = 144
    Top = 8
    Width = 69
    Height = 19
    Caption = 'Student '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 648
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
  object GB_ExcercisesPerformed: TGroupBox
    Left = 8
    Top = 33
    Width = 1163
    Height = 368
    Caption = 'Excercises Performed '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 3
      Top = 21
      Width = 1150
      Height = 332
      DataSource = DM_DBConnection.DS_TrainingReport
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = [fsBold, fsItalic]
      OnCellClick = DBGrid1CellClick
    end
  end
  object GP_ChallengesReport: TGroupBox
    Left = 8
    Top = 407
    Width = 1163
    Height = 368
    Caption = 'Challenges Performed '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    TabOrder = 1
    object DBG_StudentChallenges: TDBGrid
      Left = 3
      Top = 19
      Width = 1150
      Height = 334
      DataSource = DM_DBConnection.DS_ChallengesPerformed
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = [fsBold, fsItalic]
    end
  end
  object DBEdi_CoachStudent: TDBEdit
    Left = 708
    Top = 8
    Width = 313
    Height = 21
    Enabled = False
    TabOrder = 2
    Visible = False
  end
  object DBLCB_StudentReport: TDBLookupComboBox
    Left = 219
    Top = 8
    Width = 302
    Height = 21
    KeyField = 'IdStudent'
    ListField = 'Name'
    ListSource = DM_DBConnection.DS_Student
    TabOrder = 3
    OnClick = DBLCB_StudentReportClick
  end
  object DBLCB_ListCoach: TDBLookupComboBox
    Left = 708
    Top = 8
    Width = 313
    Height = 21
    KeyField = 'IdCoach'
    ListField = 'Name'
    ListSource = DM_DBConnection.DS_Coach
    TabOrder = 4
    OnClick = DBLCB_ListCoachClick
  end
end
