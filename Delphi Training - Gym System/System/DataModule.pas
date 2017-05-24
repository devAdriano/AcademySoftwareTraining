unit DataModule;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.SqlExpr, Data.DBXMSSQL,
  Data.Win.ADODB;

type
  TDM_DBConnection = class(TDataModule)
    ADOC_DataBaseConn: TADOConnection;
    ADOT_Student: TADOTable;
    DS_Student: TDataSource;
    ADOT_Coach: TADOTable;
    DS_Coach: TDataSource;
    ADOT_Login: TADOTable;
    DS_Login: TDataSource;
    ADOT_WorkSchedule: TADOTable;
    DS_WorkSchedule: TDataSource;
    ADOT_LoginIdLogin: TAutoIncField;
    ADOT_LoginUserRG: TIntegerField;
    ADOT_LoginPassword: TIntegerField;
    ADOT_LoginIdAcessPermission: TIntegerField;
    ADOT_WorkScheduleIdWSchedule: TAutoIncField;
    ADOT_WorkScheduleDescription: TStringField;
    ADOT_WorkScheduleHEntry: TStringField;
    ADOT_WorkScheduleHExit: TStringField;
    ADOT_WorkScheduleSunday: TStringField;
    ADOT_WorkScheduleMonday: TStringField;
    ADOT_WorkScheduleTuesday: TStringField;
    ADOT_WorkScheduleWednesday: TStringField;
    ADOT_WorkScheduleThursday: TStringField;
    ADOT_WorkScheduleFriday: TStringField;
    ADOT_WorkScheduleSaturday: TStringField;
    ADOT_CoachHasSchedule: TADOTable;
    DS_CoachHasSchedule: TDataSource;
    ADOT_CoachHasScheduleidCoach: TIntegerField;
    ADOT_CoachHasScheduleidWSchedule: TIntegerField;
    ADOT_AccessPermission: TADOTable;
    DS_AccessPermission: TDataSource;
    ADOT_AccessPermissionIdAcessPermission: TAutoIncField;
    ADOT_AccessPermissionDescription: TStringField;
    ADOT_AccessPermissionStudentRegistration: TStringField;
    ADOT_AccessPermissionCoachRegistration: TStringField;
    ADOT_AccessPermissionStudentTrainingDataSheet: TStringField;
    ADOT_AccessPermissionCoachBuildDataSheet: TStringField;
    ADOT_AccessPermissionUserRegistration: TStringField;
    ADOT_AccessPermissionAccessPermition: TStringField;
    ADOT_AccessPermissionCoachScheduleRegistration: TStringField;
    ADOT_AccessPermissionCoachBuildChallenge: TStringField;
    ADOT_AccessPermissionStudentChallenge: TStringField;
    ADOT_CoachIdCoach: TAutoIncField;
    ADOT_CoachName: TStringField;
    ADOT_CoachBirthDate: TDateField;
    ADOT_CoachRG: TIntegerField;
    ADOT_CoachCPF: TStringField;
    ADOT_CoachPIS: TIntegerField;
    ADOT_CoachCLT: TStringField;
    ADOT_CoachAdmissionDate: TDateField;
    ADOT_CoachDemissionDate: TDateField;
    ADOT_CoachZipCode: TIntegerField;
    ADOT_CoachAddress: TStringField;
    ADOT_Coachneighborhood: TStringField;
    ADOT_CoachNumber: TIntegerField;
    ADOT_CoachPhone: TStringField;
    ADOT_CoachPhone2: TStringField;
    ADOQ_Login: TADOQuery;
    ADOT_Training: TADOTable;
    DS_Training: TDataSource;
    ADOT_TrainingCategory: TADOTable;
    DS_TrainingCategory: TDataSource;
    ADOT_TrainingCategoryIdTCategory: TAutoIncField;
    ADOT_TrainingCategoryName: TStringField;
    ADOT_Equipment: TADOTable;
    ADOT_EquipmentIdEquipment: TAutoIncField;
    ADOT_EquipmentName: TStringField;
    ADOT_EquipmentManufactureDate: TDateField;
    ADOT_EquipmentMaintanceDate: TDateField;
    ADOT_EquipmentBrand: TStringField;
    DS_Equipment: TDataSource;
    ADOT_TrainingIdTraining: TAutoIncField;
    ADOT_TrainingidCategory: TIntegerField;
    ADOT_TrainingidEquipment: TIntegerField;
    ADOT_TrainingName: TStringField;
    ADOT_TrainingSerie: TIntegerField;
    ADOT_TrainingRepetitions: TIntegerField;
    ADOT_TrainingWeight: TFloatField;
    ADOT_TrainingDistance: TFloatField;
    ADOT_TrainingTime: TStringField;
    ADOT_TOrder: TADOTable;
    DS_TOrder: TDataSource;
    ADOT_TOrderIdTOrder: TAutoIncField;
    ADOT_TOrderTOrder: TStringField;
    ADOT_StudentHasTraining: TADOTable;
    DS_StudentHasTraining: TDataSource;
    ADOT_Challenge: TADOTable;
    DS_Challenge: TDataSource;
    ADOT_ChallengeIdChallenge: TAutoIncField;
    ADOT_ChallengeObjective: TStringField;
    ADOT_ChallengeCStartDate: TDateField;
    ADOT_ChallengeCEndDate: TDateField;
    ADOT_ChallengeIdTraining: TIntegerField;
    ADOT_ChallengeConfirmation: TStringField;
    ADOT_ChallengeCDescription: TStringField;
    ADOT_ChallengeSerie: TIntegerField;
    ADOT_ChallengeRepetitions: TIntegerField;
    ADOT_ChallengeWeight: TFloatField;
    ADOT_ChallengeDistance: TFloatField;
    ADOT_ChallengeObs: TMemoField;
    ADOQ_TrainingAcessPermission: TADOQuery;
    ADOT_StudentIdStudent: TAutoIncField;
    ADOT_StudentName: TStringField;
    ADOT_StudentBirthDate: TDateField;
    ADOT_StudentRG: TIntegerField;
    ADOT_StudentCPF: TStringField;
    ADOT_StudentZipCode: TIntegerField;
    ADOT_StudentAddress: TStringField;
    ADOT_StudentNeighborhood: TStringField;
    ADOT_StudentNumber: TIntegerField;
    ADOT_StudentComplement: TStringField;
    ADOT_StudentPhone: TStringField;
    ADOT_StudentPhone2: TStringField;
    ADOT_StudentMessageWith: TStringField;
    ADOT_StudentidLogin: TIntegerField;
    ADOT_StudentObjective: TStringField;
    ADOT_StudentHasTrainingIdStudent: TIntegerField;
    ADOT_StudentHasTrainingidCoach: TIntegerField;
    ADOT_StudentHasTrainingIdTraining: TIntegerField;
    ADOT_StudentHasTrainingIdChallenge: TIntegerField;
    ADOT_StudentHasTrainingTCOrder: TIntegerField;
    ADOT_StudentHasTrainingIdTOrder: TIntegerField;
    ADOQ_TrainingStudent: TADOQuery;
    DS_TrainingStudent: TDataSource;
    ADOQ_StudentChallenges: TADOQuery;
    DS_StudentChallenges: TDataSource;
    ADOQ_SystemAccessPermition: TADOQuery;
    ADOQ_TrainingReport: TADOQuery;
    DS_TrainingReport: TDataSource;
    ADOQ_ChallengesPerformed: TADOQuery;
    DS_ChallengesPerformed: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM_DBConnection: TDM_DBConnection;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
