unit MainMenu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, shellapi, Vcl.Buttons;

type
  TFrm_MainMenu = class(TForm)
    GB_CoachMenu: TGroupBox;
    GB_StudentMenu: TGroupBox;
    Btn_CoachRegistration: TButton;
    Btn_BuildTraining: TButton;
    GB_System: TGroupBox;
    Btn_StudentRegistration: TButton;
    Btn_StudentTraining: TButton;
    Btn_UserManagement: TButton;
    Btn_UserPermissions: TButton;
    Btn_StudentReport: TButton;
    Btn_Logout: TButton;
    BitBtn1: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure Btn_CoachRegistrationClick(Sender: TObject);
    procedure Btn_StudentRegistrationClick(Sender: TObject);
    procedure Btn_UserPermissionsClick(Sender: TObject);
    procedure Btn_BuildTrainingClick(Sender: TObject);
    procedure Btn_StudentTrainingClick(Sender: TObject);
    procedure Btn_UserManagementClick(Sender: TObject);
    procedure Btn_StudentReportClick(Sender: TObject);
    procedure Btn_LogoutClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_MainMenu: TFrm_MainMenu;

implementation

{$R *.dfm}

uses UserLogin, CoachRegistration, StudentRegistration, AccessPermission,
  WorkSchedule, TrainingBuild, UserRegistration, StudentReport;

procedure TFrm_MainMenu.Btn_BuildTrainingClick(Sender: TObject);
begin

  Frm_BuildTraining.ShowModal;

end;

procedure TFrm_MainMenu.Btn_CoachRegistrationClick(Sender: TObject);
begin

  Frm_CoachRegistration.ShowModal;

end;

procedure TFrm_MainMenu.Btn_LogoutClick(Sender: TObject);
begin

    ShellExecute(0,'open',PWideChar(Application.ExeName),nil,nil,SW_SHOWNORMAL);
    Application.Terminate;

end;

procedure TFrm_MainMenu.Btn_StudentRegistrationClick(Sender: TObject);
begin

    Frm_StudentRegistration.ShowModal;

end;

procedure TFrm_MainMenu.Btn_StudentReportClick(Sender: TObject);
begin

  Frm_StudentReport.showmodal;

end;

procedure TFrm_MainMenu.Btn_StudentTrainingClick(Sender: TObject);
begin

  Frm_BuildTraining.ShowModal;

end;

procedure TFrm_MainMenu.Btn_UserManagementClick(Sender: TObject);
begin

  Frm_UserRegistration.ShowModal;

end;

procedure TFrm_MainMenu.Btn_UserPermissionsClick(Sender: TObject);
begin

  Frm_AccessPermission.ShowModal;

end;

procedure TFrm_MainMenu.FormShow(Sender: TObject);
begin

  Application.CreateForm(TFrm_UserLogin, Frm_UserLogin);
  Frm_UserLogin.ShowModal;

end;

end.
