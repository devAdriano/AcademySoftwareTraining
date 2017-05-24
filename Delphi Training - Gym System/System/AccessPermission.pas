unit AccessPermission;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Mask;

type
  TFrm_AccessPermission = class(TForm)
    GB_Access: TGroupBox;
    Label1: TLabel;
    DBE_Description: TDBEdit;
    DBCB_CoachRegistration: TDBCheckBox;
    DBCB_StudentDataSheet: TDBCheckBox;
    DBCB_CoachBuidDataSheet: TDBCheckBox;
    DBCB_UserRegistration: TDBCheckBox;
    DBCB_AccessPermission: TDBCheckBox;
    DBCB_CoachSchedule: TDBCheckBox;
    DBCB_CoachBuildChallenge: TDBCheckBox;
    DBCB_StudentChallenge: TDBCheckBox;
    DBN_AccessPermission: TDBNavigator;
    DBG_AccessPermission: TDBGrid;
    DBCB_StudentRegistration: TDBCheckBox;
    procedure DBN_AccessPermissionClick(Sender: TObject; Button: TNavigateBtn);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_AccessPermission: TFrm_AccessPermission;

implementation

{$R *.dfm}

uses DataModule;

procedure TFrm_AccessPermission.DBN_AccessPermissionClick(Sender: TObject;
  Button: TNavigateBtn);
begin

  if Button = nbInsert then
  begin

      GB_Access.Enabled := true;
      DBE_Description.Enabled := true;

      DM_DBConnection.ADOT_AccessPermission.FieldValues['StudentRegistration'] := 'F';
      DM_DBConnection.ADOT_AccessPermission.FieldValues['CoachRegistration'] := 'F';
      DM_DBConnection.ADOT_AccessPermission.FieldValues['StudentTrainingDataSheet'] := 'F';
      DM_DBConnection.ADOT_AccessPermission.FieldValues['CoachBuildDataSheet'] := 'F';
      DM_DBConnection.ADOT_AccessPermission.FieldValues['UserRegistration'] := 'F';
      DM_DBConnection.ADOT_AccessPermission.FieldValues['AccessPermition'] := 'F';
      DM_DBConnection.ADOT_AccessPermission.FieldValues['CoachScheduleRegistration'] := 'F';
      DM_DBConnection.ADOT_AccessPermission.FieldValues['CoachBuildChallenge'] := 'F';
      DM_DBConnection.ADOT_AccessPermission.FieldValues['StudentChallenge'] := 'F';

      DBCB_CoachRegistration.Checked := false;
      DBCB_StudentDataSheet.Checked := false;
      DBCB_CoachBuidDataSheet.Checked := false;
      DBCB_UserRegistration.Checked := false;
      DBCB_AccessPermission.Checked := false;
      DBCB_CoachSchedule.Checked := false;
      DBCB_CoachBuildChallenge.Checked := false;
      DBCB_StudentChallenge.Checked := false;
      DBCB_StudentRegistration.Checked := false;

  end;//if inset

  if Button = nbCancel then
  begin

    GB_Access.Enabled := false;
    DBE_Description.Enabled := false;

  end;//if cancel

  if Button = nbPost then
  begin

    GB_Access.Enabled := false;
    DBE_Description.Enabled := false;

  end; //if post

  if Button = nbEdit then
  begin

    GB_Access.Enabled := true;
    DBE_Description.Enabled := true;

  end; //if Edit

end;

procedure TFrm_AccessPermission.FormShow(Sender: TObject);
begin

    DM_DBConnection.ADOT_AccessPermission.Active := true;

end;

end.
