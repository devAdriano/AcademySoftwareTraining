unit UserLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TFrm_UserLogin = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Btn_Login: TButton;
    Edit_IDNumber: TEdit;
    Edit_Password: TEdit;
    Btn_ExitSystem: TButton;
    procedure Btn_LoginClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Btn_ExitSystemClick(Sender: TObject);
  private
    { Private declarations }
  public

    PUserID : integer;

  end;

var
  Frm_UserLogin: TFrm_UserLogin;

implementation

{$R *.dfm}

uses MainMenu, DataModule;

procedure TFrm_UserLogin.Btn_ExitSystemClick(Sender: TObject);
begin

    Application.Terminate;

end;

procedure TFrm_UserLogin.Btn_LoginClick(Sender: TObject);
begin

  if((Edit_IDNumber.Text <> ' ') and (Edit_Password.Text <> ' ')) then
    begin

        DM_DBConnection.ADOQ_Login.SQL.BeginUpdate;
        DM_DBConnection.ADOQ_Login.SQL.Text := 'SELECT * FROM LOGIN WHERE UserRG = :IDUser AND Password = :Password';
        DM_DBConnection.ADOQ_Login.SQL.EndUpdate;

        DM_DBConnection.ADOQ_Login.Parameters.ParamByName('IDUser').Value := Edit_IDNumber.Text;
        DM_DBConnection.ADOQ_Login.Parameters.ParamByName('Password').Value := Edit_Password.Text;
        DM_DBConnection.ADOQ_Login.Open;

      if(DM_DBConnection.ADOQ_Login.RecordCount > 0) then
        begin

            ShowMessage('Welcome');
            PUserID := DM_DBConnection.ADOQ_Login.Parameters.ParamByName('IDUser').Value;

            //ACCESS PERMITION VALIDATION ==============================================

            with DM_DBConnection.ADOQ_SystemAccessPermition do
            begin

              Close;
              Parameters.ParamByName('USERID').Value :=  Edit_IDNumber.Text;
              Open;

            end;//with ADOQ_SystemAccessPermition

            if(DM_DBConnection.ADOQ_SystemAccessPermition.FieldValues['StudentRegistration'] = 'F') then
            begin

              Frm_MainMenu.Btn_StudentRegistration.Enabled := false;

            end;//if

            if(DM_DBConnection.ADOQ_SystemAccessPermition.FieldValues['CoachRegistration'] = 'F') then
            begin

              Frm_MainMenu.Btn_CoachRegistration.Enabled := false;

            end;//if

            if(DM_DBConnection.ADOQ_SystemAccessPermition.FieldValues['StudentTrainingDataSheet'] = 'F') then
            begin

              Frm_MainMenu.Btn_StudentTraining.Enabled := false;

            end;//if

            if(DM_DBConnection.ADOQ_SystemAccessPermition.FieldValues['CoachBuildDataSheet'] = 'F') then
            begin

              Frm_MainMenu.Btn_StudentTraining.Enabled := false;

            end;//if

            if(DM_DBConnection.ADOQ_SystemAccessPermition.FieldValues['UserRegistration'] = 'F') then
            begin

              Frm_MainMenu.Btn_UserManagement.Enabled := false;

            end;//if

            if(DM_DBConnection.ADOQ_SystemAccessPermition.FieldValues['AccessPermition'] = 'F') then
            begin

              Frm_MainMenu.Btn_UserPermissions.Enabled := false;

            end;//if

            Frm_UserLogin.Close;

        end
      else
        begin

            ShowMessage('User not found');

        end;//if Data Tratament

    end
  else
    begin

        ShowMessage('Please, insert your User and Password');

    end;//if null value tratment

end;//proc

procedure TFrm_UserLogin.FormShow(Sender: TObject);
begin

  DM_DBConnection.ADOQ_Login.Active := true;
  DM_DBConnection.ADOQ_SystemAccessPermition.Active := true;

end;

end.
