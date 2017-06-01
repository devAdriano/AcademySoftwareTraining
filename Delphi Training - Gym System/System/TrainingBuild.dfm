object Frm_BuildTraining: TFrm_BuildTraining
  Left = 0
  Top = 0
  Caption = 'Training Builder'
  ClientHeight = 836
  ClientWidth = 683
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
    Left = 3
    Top = 3
    Width = 678
    Height = 90
    Caption = 'Training Data Sheet '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    TabOrder = 0
    object Label10: TLabel
      Left = 51
      Top = 46
      Width = 43
      Height = 16
      Caption = 'Coach '
    end
    object Label11: TLabel
      Left = 307
      Top = 46
      Width = 56
      Height = 16
      Caption = 'Student '
    end
    object DBLC_TrainingStudent: TDBLookupComboBox
      Left = 369
      Top = 43
      Width = 298
      Height = 24
      DataField = 'IdStudent'
      DataSource = DM_DBConnection.DS_StudentHasTraining
      KeyField = 'IdStudent'
      ListField = 'Name'
      ListSource = DM_DBConnection.DS_Student
      TabOrder = 0
      OnClick = DBLC_TrainingStudentClick
    end
    object Edit_CoachTrainingBuilder: TEdit
      Left = 100
      Top = 43
      Width = 191
      Height = 24
      Enabled = False
      TabOrder = 1
      Text = 'Edit_CoachTrainingBuilder'
    end
  end
  object PC_TrainingBuild: TPageControl
    Left = 3
    Top = 91
    Width = 678
    Height = 742
    ActivePage = TabSheet1
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'Training'
      object Label1: TLabel
        Left = -2
        Top = 3
        Width = 97
        Height = 19
        Caption = 'Description '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
      object DBN_TrainingControl: TDBNavigator
        Left = 588
        Top = 4
        Width = 79
        Height = 310
        DataSource = DM_DBConnection.DS_Training
        Kind = dbnVertical
        TabOrder = 0
        Visible = False
        OnClick = DBN_TrainingControlClick
      end
      object DBE_TrainingDescription: TDBEdit
        Left = 109
        Top = 3
        Width = 471
        Height = 21
        DataField = 'Name'
        DataSource = DM_DBConnection.DS_Training
        Enabled = False
        TabOrder = 1
      end
      object GB_EquipCategory: TGroupBox
        Left = -3
        Top = 30
        Width = 585
        Height = 112
        Caption = 'Start Data '
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        TabOrder = 2
        object Lbl_Equipament: TLabel
          Left = 123
          Top = 32
          Width = 79
          Height = 16
          Caption = 'Equipament '
        end
        object Label2: TLabel
          Left = 379
          Top = 32
          Width = 119
          Height = 16
          Caption = 'Training Category '
        end
        object DBLC_Equipament: TDBLookupComboBox
          Left = 64
          Top = 54
          Width = 224
          Height = 24
          DataField = 'idEquipment'
          DataSource = DM_DBConnection.DS_Training
          KeyField = 'IdEquipment'
          ListField = 'Name'
          ListSource = DM_DBConnection.DS_Equipment
          TabOrder = 0
        end
        object DBLC_TrainingCategory: TDBLookupComboBox
          Left = 329
          Top = 54
          Width = 224
          Height = 24
          DataField = 'idCategory'
          DataSource = DM_DBConnection.DS_Training
          KeyField = 'IdTCategory'
          ListField = 'Name'
          ListSource = DM_DBConnection.DS_TrainingCategory
          TabOrder = 1
        end
      end
      object GB_TrainingSeries: TGroupBox
        Left = -3
        Top = 148
        Width = 585
        Height = 166
        Caption = 'Training Series '
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        TabOrder = 3
        object Label3: TLabel
          Left = 32
          Top = 96
          Width = 44
          Height = 16
          Caption = 'Series '
        end
        object Label4: TLabel
          Left = 120
          Top = 96
          Width = 78
          Height = 16
          Caption = 'Repetitions '
        end
        object Label5: TLabel
          Left = 240
          Top = 96
          Width = 50
          Height = 16
          Caption = 'Weight '
        end
        object Label6: TLabel
          Left = 323
          Top = 96
          Width = 95
          Height = 16
          Caption = 'Distance (KM) '
        end
        object Label7: TLabel
          Left = 480
          Top = 96
          Width = 33
          Height = 16
          Caption = 'Time '
        end
        object Label8: TLabel
          Left = 366
          Top = 32
          Width = 41
          Height = 16
          Caption = 'Order '
        end
        object Label19: TLabel
          Left = 112
          Top = 32
          Width = 90
          Height = 16
          Caption = 'Training Type '
        end
        object CB_Series: TComboBox
          Left = 32
          Top = 118
          Width = 44
          Height = 24
          TabOrder = 0
          Text = 'CB_Series'
          OnExit = CB_SeriesExit
          Items.Strings = (
            '0'
            '1'
            '2'
            '3'
            '4'
            '5'
            '6'
            '7'
            '8'
            '9'
            '10')
        end
        object DBE_Repetitions: TDBEdit
          Left = 136
          Top = 118
          Width = 49
          Height = 24
          DataField = 'Repetitions'
          DataSource = DM_DBConnection.DS_Training
          TabOrder = 1
        end
        object DBE_Weight: TDBEdit
          Left = 241
          Top = 118
          Width = 49
          Height = 24
          DataField = 'Weight'
          DataSource = DM_DBConnection.DS_Training
          TabOrder = 2
        end
        object DBE_Distance: TDBEdit
          Left = 344
          Top = 118
          Width = 49
          Height = 24
          DataField = 'Distance'
          DataSource = DM_DBConnection.DS_Training
          TabOrder = 3
        end
        object DBE_Time: TDBEdit
          Left = 448
          Top = 118
          Width = 105
          Height = 24
          DataField = 'Time'
          DataSource = DM_DBConnection.DS_Training
          TabOrder = 4
        end
        object DBE_Order: TDBEdit
          Left = 344
          Top = 54
          Width = 86
          Height = 24
          DataField = 'TCOrder'
          DataSource = DM_DBConnection.DS_StudentHasTraining
          Enabled = False
          TabOrder = 5
        end
        object CB_EditOrder: TCheckBox
          Left = 443
          Top = 58
          Width = 97
          Height = 17
          Caption = 'Edit Order '
          TabOrder = 6
          OnClick = CB_EditOrderClick
        end
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 104
          Top = -56
          Width = 145
          Height = 24
          TabOrder = 7
        end
        object DBLC_TOrder: TDBLookupComboBox
          Left = 63
          Top = 54
          Width = 225
          Height = 24
          DataField = 'IdTOrder'
          DataSource = DM_DBConnection.DS_StudentHasTraining
          KeyField = 'IdTOrder'
          ListField = 'TOrder'
          ListSource = DM_DBConnection.DS_TOrder
          TabOrder = 8
        end
      end
      object DBG_StudentTrainings: TDBGrid
        Left = 0
        Top = 320
        Width = 663
        Height = 390
        DataSource = DM_DBConnection.DS_TrainingStudent
        ReadOnly = True
        TabOrder = 4
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnCellClick = DBG_StudentTrainingsCellClick
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Challenges'
      ImageIndex = 1
      object Label12: TLabel
        Left = 6
        Top = 11
        Width = 82
        Height = 19
        Caption = 'Objective '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
      object DBE_ChallengeObjective: TDBEdit
        Left = 93
        Top = 13
        Width = 574
        Height = 21
        DataField = 'Objective'
        DataSource = DM_DBConnection.DS_Challenge
        TabOrder = 0
      end
      object GroupBox2: TGroupBox
        Left = 3
        Top = 48
        Width = 446
        Height = 89
        Caption = 'Schedule '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        TabOrder = 1
        object Label13: TLabel
          Left = 81
          Top = 24
          Width = 104
          Height = 16
          Caption = 'Challenge Start '
        end
        object Label14: TLabel
          Left = 253
          Top = 24
          Width = 93
          Height = 16
          Caption = 'Challenge End '
        end
        object DateTimePicker1: TDateTimePicker
          Left = 253
          Top = 46
          Width = 104
          Height = 21
          Date = 42864.477766377310000000
          Time = 42864.477766377310000000
          TabOrder = 0
        end
        object DBEdi_ShowChallengeEnd: TDBEdit
          Left = 241
          Top = 46
          Width = 121
          Height = 24
          DataField = 'CEndDate'
          DataSource = DM_DBConnection.DS_Challenge
          TabOrder = 1
        end
        object DTP_ChallengeStart: TDateTimePicker
          Left = 81
          Top = 46
          Width = 104
          Height = 21
          Date = 42864.477766377310000000
          Time = 42864.477766377310000000
          TabOrder = 2
        end
        object DBEdi_ShowChallengeStart: TDBEdit
          Left = 77
          Top = 46
          Width = 121
          Height = 24
          DataField = 'CStartDate'
          DataSource = DM_DBConnection.DS_Challenge
          TabOrder = 3
        end
      end
      object GroupBox3: TGroupBox
        Left = 3
        Top = 143
        Width = 446
        Height = 98
        Caption = 'Training Series '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        TabOrder = 2
        object Label15: TLabel
          Left = 32
          Top = 32
          Width = 44
          Height = 16
          Caption = 'Series '
        end
        object Label16: TLabel
          Left = 120
          Top = 32
          Width = 78
          Height = 16
          Caption = 'Repetitions '
        end
        object Label17: TLabel
          Left = 240
          Top = 32
          Width = 50
          Height = 16
          Caption = 'Weight '
        end
        object Label18: TLabel
          Left = 323
          Top = 32
          Width = 95
          Height = 16
          Caption = 'Distance (KM) '
        end
        object ComboBox1: TComboBox
          Left = 32
          Top = 54
          Width = 44
          Height = 24
          TabOrder = 0
          Text = 'CB_Series'
          Items.Strings = (
            '0'
            '1'
            '2'
            '3'
            '4'
            '5'
            '6'
            '7'
            '8'
            '9'
            '10')
        end
        object DBEdi_CRepetitions: TDBEdit
          Left = 136
          Top = 54
          Width = 49
          Height = 24
          DataField = 'Repetitions'
          DataSource = DM_DBConnection.DS_Challenge
          TabOrder = 1
        end
        object DBEdi_CWeight: TDBEdit
          Left = 241
          Top = 54
          Width = 49
          Height = 24
          DataField = 'Weight'
          DataSource = DM_DBConnection.DS_Challenge
          TabOrder = 2
        end
        object DBEdi_CDistance: TDBEdit
          Left = 344
          Top = 54
          Width = 49
          Height = 24
          DataField = 'Distance'
          DataSource = DM_DBConnection.DS_Challenge
          TabOrder = 3
        end
      end
      object DBG_StudentChallenges: TDBGrid
        Left = 4
        Top = 399
        Width = 663
        Height = 315
        DataSource = DM_DBConnection.DS_StudentChallenges
        TabOrder = 3
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnCellClick = DBG_StudentChallengesCellClick
      end
      object DBN_ChallengeControl: TDBNavigator
        Left = 591
        Top = 40
        Width = 79
        Height = 350
        DataSource = DM_DBConnection.DS_Challenge
        Kind = dbnVertical
        TabOrder = 4
        Visible = False
        OnClick = DBN_ChallengeControlClick
      end
      object Btn_ProveChallenge: TButton
        Left = 455
        Top = 346
        Width = 130
        Height = 47
        Caption = 'Prove Challenge'
        TabOrder = 5
        OnClick = Btn_ProveChallengeClick
      end
      object Btn_PrevChallenge: TButton
        Left = 455
        Top = 196
        Width = 130
        Height = 47
        Caption = 'Previous Challenge'
        TabOrder = 6
        OnClick = Btn_PrevChallengeClick
      end
      object Btn_NextChallenge: TButton
        Left = 455
        Top = 143
        Width = 130
        Height = 47
        Caption = 'Next Challenge'
        TabOrder = 7
        OnClick = Btn_NextChallengeClick
      end
      object DBM_Obs: TDBMemo
        Left = 3
        Top = 247
        Width = 446
        Height = 143
        DataField = 'Obs'
        DataSource = DM_DBConnection.DS_Challenge
        TabOrder = 8
      end
    end
  end
end
