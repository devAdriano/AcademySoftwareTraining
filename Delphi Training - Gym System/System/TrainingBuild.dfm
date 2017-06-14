object Frm_BuildTraining: TFrm_BuildTraining
  Left = 633
  Top = 122
  AutoSize = True
  Caption = 'Training Builder'
  ClientHeight = 830
  ClientWidth = 678
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
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
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
    Left = 0
    Top = 88
    Width = 678
    Height = 742
    ActivePage = TabSheet1
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'Training'
      object GB_TrainingData: TGroupBox
        AlignWithMargins = True
        Left = 0
        Top = 0
        Width = 669
        Height = 711
        Color = clMoneyGreen
        ParentBackground = False
        ParentColor = False
        TabOrder = 0
        object Label1: TLabel
          Left = 2
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
        object GB_EquipCategory: TGroupBox
          Left = -4
          Top = 32
          Width = 585
          Height = 112
          Caption = 'Start Data '
          Color = clMoneyGreen
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold, fsItalic]
          ParentBackground = False
          ParentColor = False
          ParentFont = False
          TabOrder = 0
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
          Left = -1
          Top = 150
          Width = 585
          Height = 178
          Caption = 'Training Series '
          Color = clMoneyGreen
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold, fsItalic]
          ParentBackground = False
          ParentColor = False
          ParentFont = False
          TabOrder = 1
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
        object DBE_TrainingDescription: TDBEdit
          Left = 113
          Top = 3
          Width = 468
          Height = 21
          DataField = 'Name'
          DataSource = DM_DBConnection.DS_Training
          Enabled = False
          TabOrder = 2
        end
        object DBN_TrainingControl: TDBNavigator
          Left = 587
          Top = 3
          Width = 79
          Height = 330
          DataSource = DM_DBConnection.DS_Training
          Kind = dbnVertical
          TabOrder = 3
          Visible = False
          OnClick = DBN_TrainingControlClick
        end
        object DBG_StudentTrainings: TDBGrid
          Left = 3
          Top = 334
          Width = 663
          Height = 374
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
    end
    object TabSheet2: TTabSheet
      Caption = 'Challenges'
      ImageIndex = 1
      object GB_ChallengeData: TGroupBox
        Left = 3
        Top = 0
        Width = 660
        Height = 711
        Color = clMoneyGreen
        ParentBackground = False
        ParentColor = False
        TabOrder = 0
        object Label12: TLabel
          Left = 0
          Top = 15
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
        object GroupBox3: TGroupBox
          Left = 3
          Top = 129
          Width = 572
          Height = 105
          Caption = 'Training Series '
          Color = clMoneyGreen
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold, fsItalic]
          ParentBackground = False
          ParentColor = False
          ParentFont = False
          TabOrder = 0
          object Label15: TLabel
            Left = 88
            Top = 32
            Width = 44
            Height = 16
            Caption = 'Series '
          end
          object Label16: TLabel
            Left = 176
            Top = 32
            Width = 78
            Height = 16
            Caption = 'Repetitions '
          end
          object Label17: TLabel
            Left = 296
            Top = 32
            Width = 50
            Height = 16
            Caption = 'Weight '
          end
          object Label18: TLabel
            Left = 379
            Top = 32
            Width = 95
            Height = 16
            Caption = 'Distance (KM) '
          end
          object ComboBox1: TComboBox
            Left = 88
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
            Left = 192
            Top = 54
            Width = 49
            Height = 24
            DataField = 'Repetitions'
            DataSource = DM_DBConnection.DS_Challenge
            TabOrder = 1
          end
          object DBEdi_CWeight: TDBEdit
            Left = 297
            Top = 54
            Width = 49
            Height = 24
            DataField = 'Weight'
            DataSource = DM_DBConnection.DS_Challenge
            TabOrder = 2
          end
          object DBEdi_CDistance: TDBEdit
            Left = 400
            Top = 54
            Width = 49
            Height = 24
            DataField = 'Distance'
            DataSource = DM_DBConnection.DS_Challenge
            TabOrder = 3
          end
        end
        object GroupBox4: TGroupBox
          Left = 3
          Top = 40
          Width = 572
          Height = 89
          Caption = 'Schedule '
          Color = clMoneyGreen
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold, fsItalic]
          ParentBackground = False
          ParentColor = False
          ParentFont = False
          TabOrder = 1
          object Label13: TLabel
            Left = 151
            Top = 24
            Width = 104
            Height = 16
            Caption = 'Challenge Start '
          end
          object Label14: TLabel
            Left = 323
            Top = 24
            Width = 93
            Height = 16
            Caption = 'Challenge End '
          end
          object DateTimePicker1: TDateTimePicker
            Left = 323
            Top = 46
            Width = 104
            Height = 21
            Date = 42864.477766377310000000
            Time = 42864.477766377310000000
            TabOrder = 0
          end
          object DBEdi_ShowChallengeEnd: TDBEdit
            Left = 311
            Top = 46
            Width = 121
            Height = 24
            DataField = 'CEndDate'
            DataSource = DM_DBConnection.DS_Challenge
            TabOrder = 1
          end
          object DTP_ChallengeStart: TDateTimePicker
            Left = 151
            Top = 46
            Width = 104
            Height = 21
            Date = 42864.477766377310000000
            Time = 42864.477766377310000000
            TabOrder = 2
          end
          object DBEdi_ShowChallengeStart: TDBEdit
            Left = 147
            Top = 46
            Width = 121
            Height = 24
            DataField = 'CStartDate'
            DataSource = DM_DBConnection.DS_Challenge
            TabOrder = 3
          end
        end
        object DBM_Obs: TDBMemo
          Left = 3
          Top = 240
          Width = 572
          Height = 150
          Color = clMoneyGreen
          DataField = 'Obs'
          DataSource = DM_DBConnection.DS_Challenge
          TabOrder = 2
        end
        object Btn_NextChallenge: TButton
          Left = 3
          Top = 396
          Width = 130
          Height = 47
          Caption = 'Next Challenge'
          TabOrder = 3
          OnClick = Btn_NextChallengeClick
        end
        object Btn_PrevChallenge: TButton
          Left = 139
          Top = 396
          Width = 130
          Height = 47
          Caption = 'Previous Challenge'
          TabOrder = 4
          OnClick = Btn_PrevChallengeClick
        end
        object Btn_ProveChallenge: TButton
          Left = 445
          Top = 396
          Width = 130
          Height = 47
          Caption = 'Prove Challenge'
          TabOrder = 5
          OnClick = Btn_ProveChallengeClick
        end
        object DBN_ChallengeControl: TDBNavigator
          Left = 578
          Top = 40
          Width = 79
          Height = 400
          DataSource = DM_DBConnection.DS_Challenge
          Kind = dbnVertical
          TabOrder = 6
          Visible = False
          OnClick = DBN_ChallengeControlClick
        end
        object DBE_ChallengeObjective: TDBEdit
          Left = 88
          Top = 13
          Width = 569
          Height = 21
          DataField = 'Objective'
          DataSource = DM_DBConnection.DS_Challenge
          TabOrder = 7
        end
        object DBG_StudentChallenges: TDBGrid
          Left = 3
          Top = 449
          Width = 654
          Height = 259
          DataSource = DM_DBConnection.DS_StudentChallenges
          TabOrder = 8
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnCellClick = DBG_StudentChallengesCellClick
        end
      end
    end
  end
end
