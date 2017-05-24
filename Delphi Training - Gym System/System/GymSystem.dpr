program GymSystem;

uses
  Vcl.Forms,
  MainMenu in 'MainMenu.pas' {Frm_MainMenu},
  UserLogin in 'UserLogin.pas' {Frm_UserLogin},
  CoachRegistration in 'CoachRegistration.pas' {Frm_CoachRegistration},
  StudentRegistration in 'StudentRegistration.pas' {Frm_StudentRegistration},
  AccessPermission in 'AccessPermission.pas' {Frm_AccessPermission},
  TrainingBuild in 'TrainingBuild.pas' {Frm_BuildTraining},
  UserRegistration in 'UserRegistration.pas' {Frm_UserRegistration},
  StudentReport in 'StudentReport.pas' {Frm_StudentReport},
  CoachSpace in 'CoachSpace.pas' {Frm_CoachSpace},
  DataModule in 'DataModule.pas' {DM_DBConnection: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrm_MainMenu, Frm_MainMenu);
  Application.CreateForm(TFrm_UserLogin, Frm_UserLogin);
  Application.CreateForm(TFrm_CoachRegistration, Frm_CoachRegistration);
  Application.CreateForm(TFrm_StudentRegistration, Frm_StudentRegistration);
  Application.CreateForm(TFrm_AccessPermission, Frm_AccessPermission);
  Application.CreateForm(TFrm_BuildTraining, Frm_BuildTraining);
  Application.CreateForm(TFrm_UserRegistration, Frm_UserRegistration);
  Application.CreateForm(TFrm_StudentReport, Frm_StudentReport);
  Application.CreateForm(TFrm_CoachSpace, Frm_CoachSpace);
  Application.CreateForm(TDM_DBConnection, DM_DBConnection);
  Application.Run;
end.
