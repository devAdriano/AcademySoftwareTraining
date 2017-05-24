object DM_DBConnection: TDM_DBConnection
  OldCreateOrder = False
  Height = 812
  Width = 1135
  object ADOC_DataBaseConn: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLNCLI11.1;Integrated Security=SSPI;Persist Security I' +
      'nfo=False;User ID="";Initial Catalog=GymDTD;Data Source=DESKTOP-' +
      'E1E3M5H;Initial File Name="";Server SPN=""'
    LoginPrompt = False
    Provider = 'SQLNCLI11.1'
    Left = 424
    Top = 16
  end
  object ADOT_Student: TADOTable
    Connection = ADOC_DataBaseConn
    CursorType = ctStatic
    TableName = 'STUDENT'
    Left = 48
    Top = 96
    object ADOT_StudentIdStudent: TAutoIncField
      FieldName = 'IdStudent'
      ReadOnly = True
    end
    object ADOT_StudentName: TStringField
      FieldName = 'Name'
      Size = 60
    end
    object ADOT_StudentBirthDate: TDateField
      FieldName = 'BirthDate'
    end
    object ADOT_StudentRG: TIntegerField
      FieldName = 'RG'
    end
    object ADOT_StudentCPF: TStringField
      FieldName = 'CPF'
      Size = 12
    end
    object ADOT_StudentZipCode: TIntegerField
      FieldName = 'ZipCode'
    end
    object ADOT_StudentAddress: TStringField
      FieldName = 'Address'
      Size = 60
    end
    object ADOT_StudentNeighborhood: TStringField
      FieldName = 'Neighborhood'
      Size = 50
    end
    object ADOT_StudentNumber: TIntegerField
      FieldName = 'Number'
    end
    object ADOT_StudentComplement: TStringField
      FieldName = 'Complement'
      Size = 60
    end
    object ADOT_StudentPhone: TStringField
      FieldName = 'Phone'
      Size = 15
    end
    object ADOT_StudentPhone2: TStringField
      FieldName = 'Phone2'
      Size = 15
    end
    object ADOT_StudentMessageWith: TStringField
      FieldName = 'MessageWith'
      Size = 50
    end
    object ADOT_StudentidLogin: TIntegerField
      FieldName = 'idLogin'
    end
    object ADOT_StudentObjective: TStringField
      FieldName = 'Objective'
      Size = 60
    end
  end
  object DS_Student: TDataSource
    DataSet = ADOT_Student
    Left = 184
    Top = 96
  end
  object ADOT_Coach: TADOTable
    Connection = ADOC_DataBaseConn
    CursorType = ctStatic
    TableName = 'COACH'
    Left = 48
    Top = 160
    object ADOT_CoachIdCoach: TAutoIncField
      FieldName = 'IdCoach'
      ReadOnly = True
    end
    object ADOT_CoachName: TStringField
      FieldName = 'Name'
      Size = 60
    end
    object ADOT_CoachBirthDate: TDateField
      FieldName = 'BirthDate'
    end
    object ADOT_CoachRG: TIntegerField
      FieldName = 'RG'
    end
    object ADOT_CoachCPF: TStringField
      FieldName = 'CPF'
      Size = 10
    end
    object ADOT_CoachPIS: TIntegerField
      FieldName = 'PIS'
    end
    object ADOT_CoachCLT: TStringField
      FieldName = 'CLT'
    end
    object ADOT_CoachAdmissionDate: TDateField
      FieldName = 'AdmissionDate'
    end
    object ADOT_CoachDemissionDate: TDateField
      FieldName = 'DemissionDate'
    end
    object ADOT_CoachZipCode: TIntegerField
      FieldName = 'ZipCode'
    end
    object ADOT_CoachAddress: TStringField
      FieldName = 'Address'
      Size = 60
    end
    object ADOT_Coachneighborhood: TStringField
      FieldName = 'neighborhood'
      Size = 50
    end
    object ADOT_CoachNumber: TIntegerField
      FieldName = 'Number'
    end
    object ADOT_CoachPhone: TStringField
      FieldName = 'Phone'
      Size = 15
    end
    object ADOT_CoachPhone2: TStringField
      FieldName = 'Phone2'
      Size = 15
    end
  end
  object DS_Coach: TDataSource
    DataSet = ADOT_Coach
    Left = 184
    Top = 160
  end
  object ADOT_Login: TADOTable
    Connection = ADOC_DataBaseConn
    CursorType = ctStatic
    TableName = 'LOGIN'
    Left = 48
    Top = 224
    object ADOT_LoginIdLogin: TAutoIncField
      FieldName = 'IdLogin'
      ReadOnly = True
    end
    object ADOT_LoginUserRG: TIntegerField
      FieldName = 'UserRG'
    end
    object ADOT_LoginPassword: TIntegerField
      FieldName = 'Password'
    end
    object ADOT_LoginIdAcessPermission: TIntegerField
      FieldName = 'IdAcessPermission'
    end
  end
  object DS_Login: TDataSource
    DataSet = ADOT_Login
    Left = 184
    Top = 224
  end
  object ADOT_WorkSchedule: TADOTable
    Connection = ADOC_DataBaseConn
    CursorType = ctStatic
    TableName = 'WORK_SCHEDULE'
    Left = 48
    Top = 288
    object ADOT_WorkScheduleIdWSchedule: TAutoIncField
      FieldName = 'IdWSchedule'
      ReadOnly = True
    end
    object ADOT_WorkScheduleDescription: TStringField
      FieldName = 'Description'
      Size = 60
    end
    object ADOT_WorkScheduleHEntry: TStringField
      FieldName = 'HEntry'
      Size = 8
    end
    object ADOT_WorkScheduleHExit: TStringField
      FieldName = 'HExit'
      Size = 8
    end
    object ADOT_WorkScheduleSunday: TStringField
      FieldName = 'Sunday'
      FixedChar = True
      Size = 1
    end
    object ADOT_WorkScheduleMonday: TStringField
      FieldName = 'Monday'
      FixedChar = True
      Size = 1
    end
    object ADOT_WorkScheduleTuesday: TStringField
      FieldName = 'Tuesday'
      FixedChar = True
      Size = 1
    end
    object ADOT_WorkScheduleWednesday: TStringField
      FieldName = 'Wednesday'
      FixedChar = True
      Size = 1
    end
    object ADOT_WorkScheduleThursday: TStringField
      FieldName = 'Thursday'
      FixedChar = True
      Size = 1
    end
    object ADOT_WorkScheduleFriday: TStringField
      FieldName = 'Friday'
      FixedChar = True
      Size = 1
    end
    object ADOT_WorkScheduleSaturday: TStringField
      FieldName = 'Saturday'
      FixedChar = True
      Size = 1
    end
  end
  object DS_WorkSchedule: TDataSource
    DataSet = ADOT_WorkSchedule
    Left = 184
    Top = 288
  end
  object ADOT_CoachHasSchedule: TADOTable
    Connection = ADOC_DataBaseConn
    CursorType = ctStatic
    TableName = 'COACH_HAS_SCHEDULE'
    Left = 672
    Top = 96
    object ADOT_CoachHasScheduleidCoach: TIntegerField
      FieldName = 'idCoach'
    end
    object ADOT_CoachHasScheduleidWSchedule: TIntegerField
      FieldName = 'idWSchedule'
    end
  end
  object DS_CoachHasSchedule: TDataSource
    DataSet = ADOT_CoachHasSchedule
    Left = 816
    Top = 96
  end
  object ADOT_AccessPermission: TADOTable
    Connection = ADOC_DataBaseConn
    CursorType = ctStatic
    TableName = 'ACCESS_PERMISSION'
    Left = 48
    Top = 352
    object ADOT_AccessPermissionIdAcessPermission: TAutoIncField
      FieldName = 'IdAcessPermission'
      ReadOnly = True
    end
    object ADOT_AccessPermissionDescription: TStringField
      FieldName = 'Description'
      Size = 60
    end
    object ADOT_AccessPermissionStudentRegistration: TStringField
      FieldName = 'StudentRegistration'
      FixedChar = True
      Size = 1
    end
    object ADOT_AccessPermissionCoachRegistration: TStringField
      FieldName = 'CoachRegistration'
      FixedChar = True
      Size = 1
    end
    object ADOT_AccessPermissionStudentTrainingDataSheet: TStringField
      FieldName = 'StudentTrainingDataSheet'
      FixedChar = True
      Size = 1
    end
    object ADOT_AccessPermissionCoachBuildDataSheet: TStringField
      FieldName = 'CoachBuildDataSheet'
      FixedChar = True
      Size = 1
    end
    object ADOT_AccessPermissionUserRegistration: TStringField
      FieldName = 'UserRegistration'
      FixedChar = True
      Size = 1
    end
    object ADOT_AccessPermissionAccessPermition: TStringField
      FieldName = 'AccessPermition'
      FixedChar = True
      Size = 1
    end
    object ADOT_AccessPermissionCoachScheduleRegistration: TStringField
      FieldName = 'CoachScheduleRegistration'
      FixedChar = True
      Size = 1
    end
    object ADOT_AccessPermissionCoachBuildChallenge: TStringField
      FieldName = 'CoachBuildChallenge'
      FixedChar = True
      Size = 1
    end
    object ADOT_AccessPermissionStudentChallenge: TStringField
      FieldName = 'StudentChallenge'
      FixedChar = True
      Size = 1
    end
  end
  object DS_AccessPermission: TDataSource
    DataSet = ADOT_AccessPermission
    Left = 184
    Top = 352
  end
  object ADOQ_Login: TADOQuery
    Connection = ADOC_DataBaseConn
    CursorType = ctStatic
    DataSource = DS_Login
    Parameters = <
      item
        Name = 'STUDENTNAME'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 60
        Value = '1'
      end>
    SQL.Strings = (
      'select * from STUDENT WHERE Name = :STUDENTNAME')
    Left = 320
    Top = 224
  end
  object ADOT_Training: TADOTable
    Connection = ADOC_DataBaseConn
    CursorType = ctStatic
    TableName = 'TRAINING'
    Left = 48
    Top = 424
    object ADOT_TrainingIdTraining: TAutoIncField
      FieldName = 'IdTraining'
      ReadOnly = True
    end
    object ADOT_TrainingidCategory: TIntegerField
      FieldName = 'idCategory'
    end
    object ADOT_TrainingidEquipment: TIntegerField
      FieldName = 'idEquipment'
    end
    object ADOT_TrainingName: TStringField
      FieldName = 'Name'
      Size = 60
    end
    object ADOT_TrainingSerie: TIntegerField
      FieldName = 'Serie'
    end
    object ADOT_TrainingRepetitions: TIntegerField
      FieldName = 'Repetitions'
    end
    object ADOT_TrainingWeight: TFloatField
      FieldName = 'Weight'
    end
    object ADOT_TrainingDistance: TFloatField
      FieldName = 'Distance'
    end
    object ADOT_TrainingTime: TStringField
      FieldName = 'Time'
      Size = 10
    end
  end
  object DS_Training: TDataSource
    DataSet = ADOT_Training
    Left = 184
    Top = 424
  end
  object ADOT_TrainingCategory: TADOTable
    Connection = ADOC_DataBaseConn
    CursorType = ctStatic
    TableName = 'TRAINING_CATEGORY'
    Left = 48
    Top = 496
    object ADOT_TrainingCategoryIdTCategory: TAutoIncField
      FieldName = 'IdTCategory'
      ReadOnly = True
    end
    object ADOT_TrainingCategoryName: TStringField
      FieldName = 'Name'
      Size = 60
    end
  end
  object DS_TrainingCategory: TDataSource
    DataSet = ADOT_TrainingCategory
    Left = 184
    Top = 496
  end
  object ADOT_Equipment: TADOTable
    Connection = ADOC_DataBaseConn
    CursorType = ctStatic
    TableName = 'EQUIPMENT'
    Left = 48
    Top = 568
    object ADOT_EquipmentIdEquipment: TAutoIncField
      FieldName = 'IdEquipment'
      ReadOnly = True
    end
    object ADOT_EquipmentName: TStringField
      FieldName = 'Name'
      Size = 60
    end
    object ADOT_EquipmentManufactureDate: TDateField
      FieldName = 'ManufactureDate'
    end
    object ADOT_EquipmentMaintanceDate: TDateField
      FieldName = 'MaintanceDate'
    end
    object ADOT_EquipmentBrand: TStringField
      FieldName = 'Brand'
      Size = 50
    end
  end
  object DS_Equipment: TDataSource
    DataSet = ADOT_Equipment
    Left = 184
    Top = 568
  end
  object ADOT_TOrder: TADOTable
    Connection = ADOC_DataBaseConn
    CursorType = ctStatic
    TableName = 'T_ORDER'
    Left = 48
    Top = 640
    object ADOT_TOrderIdTOrder: TAutoIncField
      FieldName = 'IdTOrder'
      ReadOnly = True
    end
    object ADOT_TOrderTOrder: TStringField
      FieldName = 'TOrder'
      Size = 60
    end
  end
  object DS_TOrder: TDataSource
    DataSet = ADOT_TOrder
    Left = 184
    Top = 640
  end
  object ADOT_StudentHasTraining: TADOTable
    Connection = ADOC_DataBaseConn
    CursorType = ctStatic
    TableName = 'STUDENT_HAS_TRAING'
    Left = 672
    Top = 168
    object ADOT_StudentHasTrainingIdStudent: TIntegerField
      FieldName = 'IdStudent'
    end
    object ADOT_StudentHasTrainingidCoach: TIntegerField
      FieldName = 'idCoach'
    end
    object ADOT_StudentHasTrainingIdTraining: TIntegerField
      FieldName = 'IdTraining'
    end
    object ADOT_StudentHasTrainingIdChallenge: TIntegerField
      FieldName = 'IdChallenge'
    end
    object ADOT_StudentHasTrainingTCOrder: TIntegerField
      FieldName = 'TCOrder'
    end
    object ADOT_StudentHasTrainingIdTOrder: TIntegerField
      FieldName = 'IdTOrder'
    end
  end
  object DS_StudentHasTraining: TDataSource
    DataSet = ADOT_StudentHasTraining
    Left = 816
    Top = 168
  end
  object ADOT_Challenge: TADOTable
    Connection = ADOC_DataBaseConn
    CursorType = ctStatic
    TableName = 'CHALLENGE'
    Left = 48
    Top = 712
    object ADOT_ChallengeIdChallenge: TAutoIncField
      FieldName = 'IdChallenge'
      ReadOnly = True
    end
    object ADOT_ChallengeObjective: TStringField
      FieldName = 'Objective'
      Size = 60
    end
    object ADOT_ChallengeCStartDate: TDateField
      FieldName = 'CStartDate'
    end
    object ADOT_ChallengeCEndDate: TDateField
      FieldName = 'CEndDate'
    end
    object ADOT_ChallengeIdTraining: TIntegerField
      FieldName = 'IdTraining'
    end
    object ADOT_ChallengeConfirmation: TStringField
      FieldName = 'Confirmation'
      FixedChar = True
      Size = 1
    end
    object ADOT_ChallengeCDescription: TStringField
      FieldName = 'CDescription'
      Size = 60
    end
    object ADOT_ChallengeSerie: TIntegerField
      FieldName = 'Serie'
    end
    object ADOT_ChallengeRepetitions: TIntegerField
      FieldName = 'Repetitions'
    end
    object ADOT_ChallengeWeight: TFloatField
      FieldName = 'Weight'
    end
    object ADOT_ChallengeDistance: TFloatField
      FieldName = 'Distance'
    end
    object ADOT_ChallengeObs: TMemoField
      FieldName = 'Obs'
      BlobType = ftMemo
    end
  end
  object DS_Challenge: TDataSource
    DataSet = ADOT_Challenge
    Left = 184
    Top = 712
  end
  object ADOQ_TrainingAcessPermission: TADOQuery
    Connection = ADOC_DataBaseConn
    CursorType = ctStatic
    DataSource = DS_Login
    Parameters = <
      item
        Name = 'UserID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 1
      end>
    SQL.Strings = (
      
        'select LOGIN.UserRG, LOGIN.IdAcessPermission, ACCESS_PERMISSION.' +
        'IdAcessPermission, ACCESS_PERMISSION.Description, COACH.Name, CO' +
        'ACH.RG, COACH.IdCoach'
      'from LOGIN'
      'inner JOIN ACCESS_PERMISSION'
      'ON LOGIN.IdAcessPermission = ACCESS_PERMISSION.IdAcessPermission'
      'inner JOIN COACH'
      'ON COACH.RG = LOGIN.UserRG'
      'WHERE LOGIN.UserRG = :UserID;')
    Left = 320
    Top = 352
  end
  object ADOQ_TrainingStudent: TADOQuery
    Connection = ADOC_DataBaseConn
    CursorType = ctStatic
    DataSource = DS_Login
    Parameters = <
      item
        Name = 'IDSTUDENT'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 1
      end>
    SQL.Strings = (
      
        'SELECT TRAINING.*, STUDENT_HAS_TRAING.IdTraining, STUDENT_HAS_TR' +
        'AING.IdStudent, STUDENT.IdStudent, STUDENT.Name'
      'FROM TRAINING'
      'INNER JOIN STUDENT_HAS_TRAING'
      'ON TRAINING.IdTraining = STUDENT_HAS_TRAING.IdTraining'
      'INNER JOIN STUDENT'
      'ON STUDENT.IdStudent = STUDENT_HAS_TRAING.IdStudent'
      'WHERE STUDENT.IdStudent = :IDSTUDENT;')
    Left = 320
    Top = 424
  end
  object DS_TrainingStudent: TDataSource
    DataSet = ADOQ_TrainingStudent
    Left = 480
    Top = 424
  end
  object ADOQ_StudentChallenges: TADOQuery
    Connection = ADOC_DataBaseConn
    CursorType = ctStatic
    DataSource = DS_Login
    Parameters = <
      item
        Name = 'IDSTUDENT'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 1
      end>
    SQL.Strings = (
      
        'SELECT TRAINING.Name, STUDENT_HAS_TRAING.IdTraining, STUDENT_HAS' +
        '_TRAING.IdStudent, STUDENT.Name, CHALLENGE.*'
      'FROM TRAINING'
      'INNER JOIN STUDENT_HAS_TRAING'
      'ON STUDENT_HAS_TRAING.IdTraining = TRAINING.IdTraining'
      'INNER JOIN STUDENT'
      'ON STUDENT.IdStudent = STUDENT_HAS_TRAING.IdStudent'
      'INNER JOIN CHALLENGE'
      'ON CHALLENGE.IdChallenge = STUDENT_HAS_TRAING.IdChallenge'
      
        'WHERE STUDENT.IdStudent = :IDSTUDENT AND CHALLENGE.IdChallenge >' +
        ' 1;')
    Left = 312
    Top = 712
  end
  object DS_StudentChallenges: TDataSource
    DataSet = ADOQ_StudentChallenges
    Left = 448
    Top = 712
  end
  object ADOQ_SystemAccessPermition: TADOQuery
    Connection = ADOC_DataBaseConn
    CursorType = ctStatic
    DataSource = DS_Login
    Parameters = <
      item
        Name = 'USERID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'select LOGIN.UserRG, LOGIN.IdAcessPermission, ACCESS_PERMISSION.' +
        '*'
      'from LOGIN'
      'inner JOIN ACCESS_PERMISSION'
      'ON LOGIN.IdAcessPermission = ACCESS_PERMISSION.IdAcessPermission'
      'WHERE LOGIN.UserRG = :USERID;')
    Left = 480
    Top = 352
  end
  object ADOQ_TrainingReport: TADOQuery
    Connection = ADOC_DataBaseConn
    CursorType = ctStatic
    DataSource = DS_Login
    Parameters = <
      item
        Name = 'IDCOACH'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 1
      end
      item
        Name = 'IDSTUDENT'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 1
      end>
    SQL.Strings = (
      
        'SELECT TRAINING.Name, TRAINING.Serie, TRAINING.IdTraining, TRAIN' +
        'ING.Repetitions, TRAINING.Weight, TRAINING.Distance, TRAINING.Ti' +
        'me, TRAINING_CATEGORY.Name, EQUIPMENT.Name, T_ORDER.TOrder, STUD' +
        'ENT_HAS_TRAING.TCOrder'
      'FROM TRAINING'
      'INNER JOIN STUDENT_HAS_TRAING'
      'ON STUDENT_HAS_TRAING.IdTraining = TRAINING.IdTraining'
      'INNER JOIN TRAINING_CATEGORY'
      'ON TRAINING_CATEGORY.IdTCategory = TRAINING.idCategory'
      'INNER JOIN EQUIPMENT'
      'ON EQUIPMENT.IdEquipment = TRAINING.idEquipment'
      'INNER JOIN T_ORDER'
      'ON T_ORDER.IdTOrder = STUDENT_HAS_TRAING.IdTOrder'
      'WHERE '
      'idCoach = :IDCOACH'
      'AND'
      'IdStudent = :IDSTUDENT;')
    Left = 632
    Top = 424
  end
  object DS_TrainingReport: TDataSource
    DataSet = ADOQ_TrainingReport
    Left = 760
    Top = 424
  end
  object ADOQ_ChallengesPerformed: TADOQuery
    Connection = ADOC_DataBaseConn
    CursorType = ctStatic
    DataSource = DS_Login
    Parameters = <
      item
        Name = 'IDCOACH'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 1
      end
      item
        Name = 'IDSTUDENT'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 1
      end
      item
        Name = 'IDTRAINING'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 1
      end>
    SQL.Strings = (
      
        'SELECT TRAINING.Name,CHALLENGE.*, TRAINING_CATEGORY.Name, EQUIPM' +
        'ENT.Name, T_ORDER.TOrder, STUDENT_HAS_TRAING.TCOrder'
      'FROM TRAINING'
      'INNER JOIN STUDENT_HAS_TRAING'
      'ON STUDENT_HAS_TRAING.IdTraining = TRAINING.IdTraining'
      'INNER JOIN TRAINING_CATEGORY'
      'ON TRAINING_CATEGORY.IdTCategory = TRAINING.idCategory'
      'INNER JOIN EQUIPMENT'
      'ON EQUIPMENT.IdEquipment = TRAINING.idEquipment'
      'INNER JOIN T_ORDER'
      'ON T_ORDER.IdTOrder = STUDENT_HAS_TRAING.IdTOrder'
      'INNER JOIN CHALLENGE'
      'ON CHALLENGE.IdChallenge = STUDENT_HAS_TRAING.IdChallenge'
      'WHERE '
      'idCoach = :IDCOACH'
      'AND'
      'IdStudent = :IDSTUDENT'
      'AND'
      'STUDENT_HAS_TRAING.IdTraining = :IDTRAINING'
      'AND'
      'CHALLENGE.Confirmation = '#39'Y'#39';')
    Left = 584
    Top = 712
  end
  object DS_ChallengesPerformed: TDataSource
    DataSet = ADOQ_ChallengesPerformed
    Left = 728
    Top = 712
  end
end
