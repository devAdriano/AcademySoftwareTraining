unit StudentReport;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, Data.DB,
  Vcl.Mask, Vcl.Grids, Vcl.DBGrids;

type
  TFrm_StudentReport = class(TForm)
    lbl_student: TLabel;
    GB_ExcercisesPerformed: TGroupBox;
    DBGrid1: TDBGrid;
    GP_ChallengesReport: TGroupBox;
    DBG_StudentChallenges: TDBGrid;
    Label1: TLabel;
    DBEdi_CoachStudent: TDBEdit;
    DBLCB_StudentReport: TDBLookupComboBox;
    DBLCB_ListCoach: TDBLookupComboBox;
    procedure Btn_CoachSpaceClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBLCB_ListCoachClick(Sender: TObject);
    procedure DBLCB_StudentReportClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_StudentReport: TFrm_StudentReport;

implementation

{$R *.dfm}

uses CoachSpace, DataModule, UserLogin;

procedure TFrm_StudentReport.Btn_CoachSpaceClick(Sender: TObject);
begin

  Frm_CoachSpace.ShowModal;

end;

procedure TFrm_StudentReport.DBGrid1CellClick(Column: TColumn);
begin

   if(DBEdi_CoachStudent.Visible = false) then
   begin

      with DM_DBConnection.ADOQ_ChallengesPerformed do
      begin

        Close;
        Parameters.ParamByName('IDSTUDENT').Value := DM_DBConnection.ADOT_Student.FieldByName('IdStudent').AsInteger;
        Parameters.ParamByName('IDCOACH').Value  :=  DM_DBConnection.ADOT_Coach.FieldByName('IdCoach').AsInteger;
        Parameters.ParamByName('IDTRAINING').Value := DM_DBConnection.ADOQ_TrainingReport.FieldByName('IdTraining').AsInteger;
        Open;

      end;//with ADOQ_ChallengesPerformed

   end//if
   else
   begin

      with DM_DBConnection.ADOQ_ChallengesPerformed do
      begin

        Close;
        Parameters.ParamByName('IDSTUDENT').Value := DM_DBConnection.ADOT_Student.FieldByName('IdStudent').AsInteger;
        Parameters.ParamByName('IDCOACH').Value  :=  DM_DBConnection.ADOQ_TrainingAcessPermission.FieldByName('IdCoach').AsInteger;
        Parameters.ParamByName('IDTRAINING').Value := DM_DBConnection.ADOQ_TrainingReport.FieldByName('IdTraining').AsInteger;
        Open;

      end;//with ADOQ_ChallengesPerformed

   end;//else

end;

procedure TFrm_StudentReport.DBLCB_ListCoachClick(Sender: TObject);
begin

  with DM_DBConnection.ADOQ_TrainingReport do
  begin

      Close;
      Parameters.ParamByName('IDSTUDENT').Value := DM_DBConnection.ADOT_Student.FieldByName('IdStudent').AsInteger;
      Parameters.ParamByName('IDCOACH').Value  :=  DM_DBConnection.ADOT_Coach.FieldByName('IdCoach').AsInteger;
      Open;

  end;//with ADOQ_TrainingReport

end;

procedure TFrm_StudentReport.DBLCB_StudentReportClick(Sender: TObject);
begin

   if(DBEdi_CoachStudent.Visible = false) then
   begin

      with DM_DBConnection.ADOQ_TrainingReport do
      begin

        Close;
        Parameters.ParamByName('IDSTUDENT').Value := DM_DBConnection.ADOT_Student.FieldByName('IdStudent').AsInteger;
        Parameters.ParamByName('IDCOACH').Value  :=  DM_DBConnection.ADOT_Coach.FieldByName('IdCoach').AsInteger;
        Open;

      end;//with ADOQ_TrainingReport

   end//if
   else
   begin

      with DM_DBConnection.ADOQ_TrainingReport do
      begin

        Close;
        Parameters.ParamByName('IDSTUDENT').Value := DM_DBConnection.ADOT_Student.FieldByName('IdStudent').AsInteger;
        Parameters.ParamByName('IDCOACH').Value  :=  DM_DBConnection.ADOQ_TrainingAcessPermission.FieldByName('IdCoach').AsInteger;
        Open;

      end;//with ADOQ_TrainingReport

   end;//else

end;

procedure TFrm_StudentReport.FormShow(Sender: TObject);
begin

  DM_DBConnection.ADOQ_TrainingReport.Active := true;
  DM_DBConnection.ADOT_Student.Active := true;
  DM_DBConnection.ADOT_Coach.Active := true;
  DM_DBConnection.ADOQ_ChallengesPerformed.Active := true;

  with DM_DBConnection.ADOQ_TrainingAcessPermission do
  begin

    Close;
    Parameters.ParamByName('UserID').Value := Frm_UserLogin.PUserID;
    Open;

  end;//ADOQ WITH DO

  DBEdi_CoachStudent.Text := DM_DBConnection.ADOQ_TrainingAcessPermission.FieldByName('Name').AsString;

  if(DM_DBConnection.ADOQ_TrainingAcessPermission.RecordCount > 0) then
    begin

      DBEdi_CoachStudent.Visible := true;
      DBLCB_ListCoach.Visible := false;

    end//if
  else
    begin

      DBEdi_CoachStudent.Visible := false;
      DBLCB_ListCoach.Visible := true;

    end;


end;

end.
