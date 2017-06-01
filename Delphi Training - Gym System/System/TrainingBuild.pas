unit TrainingBuild;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask,
  Data.DB, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls;

type
  TFrm_BuildTraining = class(TForm)
    GroupBox1: TGroupBox;
    Label10: TLabel;
    Label11: TLabel;
    PC_TrainingBuild: TPageControl;
    TabSheet1: TTabSheet;
    Label1: TLabel;
    DBN_TrainingControl: TDBNavigator;
    DBE_TrainingDescription: TDBEdit;
    GB_EquipCategory: TGroupBox;
    Lbl_Equipament: TLabel;
    Label2: TLabel;
    DBLC_Equipament: TDBLookupComboBox;
    GB_TrainingSeries: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    CB_Series: TComboBox;
    DBE_Repetitions: TDBEdit;
    DBE_Weight: TDBEdit;
    DBE_Distance: TDBEdit;
    DBE_Time: TDBEdit;
    DBE_Order: TDBEdit;
    CB_EditOrder: TCheckBox;
    DBLookupComboBox1: TDBLookupComboBox;
    DBG_StudentTrainings: TDBGrid;
    TabSheet2: TTabSheet;
    Label12: TLabel;
    DBE_ChallengeObjective: TDBEdit;
    GroupBox2: TGroupBox;
    Label13: TLabel;
    Label14: TLabel;
    DateTimePicker1: TDateTimePicker;
    GroupBox3: TGroupBox;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    ComboBox1: TComboBox;
    DBEdi_CRepetitions: TDBEdit;
    DBEdi_CWeight: TDBEdit;
    DBEdi_CDistance: TDBEdit;
    DBG_StudentChallenges: TDBGrid;
    DBN_ChallengeControl: TDBNavigator;
    Btn_ProveChallenge: TButton;
    Btn_PrevChallenge: TButton;
    Btn_NextChallenge: TButton;
    DBLC_TrainingCategory: TDBLookupComboBox;
    DBLC_TrainingStudent: TDBLookupComboBox;
    DBLC_TOrder: TDBLookupComboBox;
    Label19: TLabel;
    Edit_CoachTrainingBuilder: TEdit;
    DBM_Obs: TDBMemo;
    DBEdi_ShowChallengeEnd: TDBEdit;
    DTP_ChallengeStart: TDateTimePicker;
    DBEdi_ShowChallengeStart: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure DBN_TrainingControlClick(Sender: TObject; Button: TNavigateBtn);
    procedure CB_EditOrderClick(Sender: TObject);
    procedure CB_SeriesExit(Sender: TObject);
    procedure DBN_ChallengeControlClick(Sender: TObject; Button: TNavigateBtn);
    procedure DBLC_TrainingStudentClick(Sender: TObject);
    procedure DBG_StudentTrainingsCellClick(Column: TColumn);
    procedure Btn_NextChallengeClick(Sender: TObject);
    procedure Btn_PrevChallengeClick(Sender: TObject);
    procedure Btn_ProveChallengeClick(Sender: TObject);
    procedure DBG_StudentChallengesCellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_BuildTraining: TFrm_BuildTraining;


implementation

{$R *.dfm}

uses DataModule, UserLogin;

procedure TFrm_BuildTraining.Btn_NextChallengeClick(Sender: TObject);
begin

    DM_DBConnection.ADOQ_StudentChallenges.Next;

end;

procedure TFrm_BuildTraining.Btn_PrevChallengeClick(Sender: TObject);
begin

    DM_DBConnection.ADOQ_StudentChallenges.Prior;

end;

procedure TFrm_BuildTraining.Btn_ProveChallengeClick(Sender: TObject);
begin

    DM_DBConnection.ADOT_Challenge.Edit;
    DM_DBConnection.ADOT_Challenge.FieldValues['Confirmation'] := 'Y';
    DM_DBConnection.ADOT_Challenge.Post;

    DM_DBConnection.ADOQ_StudentChallenges.Refresh;

end;

procedure TFrm_BuildTraining.CB_EditOrderClick(Sender: TObject);
begin

    if CB_EditOrder.Checked = true then
      begin

        DBE_Order.Enabled := true;

      end//if
    else
      begin

        DBE_Order.Enabled := false;

      end;//else



end;

procedure TFrm_BuildTraining.CB_SeriesExit(Sender: TObject);
begin

    DM_DBConnection.ADOT_Training.FieldByName('Serie').AsInteger := CB_Series.ItemIndex;

end;

procedure TFrm_BuildTraining.DBG_StudentChallengesCellClick(Column: TColumn);
begin

  DM_DBConnection.ADOT_Challenge.Locate('IdChallenge',DM_DBConnection.ADOQ_StudentChallenges.FieldValues['IdChallenge'],[]);

  if (DM_DBConnection.ADOQ_StudentChallenges.FieldValues['Confirmation'] = 'Y') then
      begin

          Btn_ProveChallenge.Enabled := false;

      end//if
    else
      begin

          Btn_ProveChallenge.Enabled := true;

      end;//else

end;

procedure TFrm_BuildTraining.DBG_StudentTrainingsCellClick(Column: TColumn);
var

  test : integer;

begin

    DM_DBConnection.ADOT_Training.Locate('IdTraining',DM_DBConnection.ADOQ_TrainingStudent.FieldValues['IdTraining'],[]);
    test := DM_DBConnection.ADOQ_TrainingStudent.FieldValues['IdTraining'];

end;

procedure TFrm_BuildTraining.DBLC_TrainingStudentClick(Sender: TObject);
begin

    with DM_DBConnection.ADOQ_TrainingStudent do
    begin

      Close;
      Parameters.ParamByName('IDSTUDENT').Value := DM_DBConnection.ADOT_Student.FieldByName('IdStudent').AsInteger;
      Open;

    end;//with ADOQ_TrainingStudent

    with DM_DBConnection.ADOQ_StudentChallenges do
    begin

       Close;
       Parameters.ParamByName('IDSTUDENT').Value := DM_DBConnection.ADOT_Student.FieldByName('IdStudent').AsInteger;
       Open;

    end;//with ADOQ_StudentChallenges

    DM_DBConnection.ADOT_Training.Locate('IdTraining',DM_DBConnection.ADOQ_TrainingStudent.FieldValues['IdTraining'],[]);
    DM_DBConnection.ADOT_Challenge.Locate('IdChallenge',DM_DBConnection.ADOQ_StudentChallenges.FieldValues['IdChallenge'],[]);

    if (DM_DBConnection.ADOQ_StudentChallenges.FieldValues['Confirmation'] = 'Y') then
      begin

          Btn_ProveChallenge.Enabled := false;

      end//if
    else
      begin

          Btn_ProveChallenge.Enabled := true;

      end;//else


end;

procedure TFrm_BuildTraining.DBN_ChallengeControlClick(Sender: TObject;
  Button: TNavigateBtn);
begin

    if Button = nbInsert then
    begin

      DBEdi_ShowChallengeStart.Visible := false;
      DBEdi_ShowChallengeEnd.Visible := false;

      DM_DBConnection.ADOT_Challenge.FieldValues['IdTraining'] := DM_DBConnection.ADOT_Training.FieldByName('IdTraining').AsInteger;
      DM_DBConnection.ADOT_Challenge.FieldValues['CStartDate'] := DTP_ChallengeStart.Date;
      DM_DBConnection.ADOT_Challenge.FieldValues['CEndDate'] := DTP_ChallengeStart.Date;

    end; //if Insert

    if Button = nbPost then
    begin

      DM_DBConnection.ADOT_StudentHasTraining.Locate('IdTraining',DM_DBConnection.ADOQ_TrainingStudent.FieldValues['IdTraining'],[]);

      DM_DBConnection.ADOT_StudentHasTraining.Edit;
      DM_DBConnection.ADOT_StudentHasTraining.FieldValues['IdChallenge'] := DM_DBConnection.ADOT_Challenge.FieldByName('IdChallenge').AsInteger;
      DM_DBConnection.ADOT_StudentHasTraining.Post;

      DBEdi_ShowChallengeStart.Visible := true;
      DBEdi_ShowChallengeEnd.Visible := true;

    end; //if Post

    if Button = nbCancel then
    begin

      DBEdi_ShowChallengeStart.Visible := true;
      DBEdi_ShowChallengeEnd.Visible := true;

    end; //if Cancel

    if Button = nbEdit then
    begin

      DBEdi_ShowChallengeStart.Visible := false;
      DBEdi_ShowChallengeEnd.Visible := false;

    end; //if Edit


end;

procedure TFrm_BuildTraining.DBN_TrainingControlClick(Sender: TObject;
  Button: TNavigateBtn);
begin

    if Button = nbInsert then
    begin

        DBE_TrainingDescription.Enabled := true;
        GB_EquipCategory.Enabled := true;
        GB_TrainingSeries.Enabled := true;
        CB_EditOrder.Checked := false;

    end;//if Insert

    if Button = nbEdit then
    begin

        DBE_TrainingDescription.Enabled := true;
        GB_EquipCategory.Enabled := true;
        GB_TrainingSeries.Enabled := true;

    end;//if Edit

    if Button = nbCancel then
    begin

        DBE_TrainingDescription.Enabled := false;
        GB_EquipCategory.Enabled := false;
        GB_TrainingSeries.Enabled := false;

    end;//if Cancel

    if Button = nbPost then
    begin

        DBE_TrainingDescription.Enabled := false;
        GB_EquipCategory.Enabled := false;
        GB_TrainingSeries.Enabled := false;

        DM_DBConnection.ADOT_StudentHasTraining.FieldValues['IdStudent'] := DM_DBConnection.ADOT_Student.FieldByName('IdStudent').AsInteger;
        DM_DBConnection.ADOT_StudentHasTraining.FieldValues['IdTraining'] := DM_DBConnection.ADOT_Training.FieldByName('IdTraining').AsInteger;
        DM_DBConnection.ADOT_StudentHasTraining.FieldByName('IdChallenge').AsInteger := 1;
        DM_DBConnection.ADOT_StudentHasTraining.FieldValues['IdTOrder'] := DM_DBConnection.ADOT_TOrder.FieldByName('IdTOrder').AsInteger;
        DM_DBConnection.ADOT_StudentHasTraining.Post;

    end;//if Post


end;

procedure TFrm_BuildTraining.FormShow(Sender: TObject);
begin

  DM_DBConnection.ADOT_Training.Active := true;
  DM_DBConnection.ADOT_TrainingCategory.Active := true;
  DM_DBConnection.ADOT_Equipment.Active := true;
  DM_DBConnection.ADOT_TOrder.Active := true;
  DM_DBConnection.ADOT_StudentHasTraining.Active := true;
  DM_DBConnection.ADOT_Student.Active := true;
  DM_DBConnection.ADOT_Challenge.Active := true;
  DM_DBConnection.ADOQ_TrainingAcessPermission.Active := true;
  DM_DBConnection.ADOQ_TrainingStudent.Active := true;
  DM_DBConnection.ADOQ_StudentChallenges.Active := true;

  with DM_DBConnection.ADOQ_TrainingAcessPermission do
  begin

    Close;
    {
    SQL.Clear;
    SQL.Add('select LOGIN.UserRG, LOGIN.IdAcessPermission, ACCESS_PERMISSION.IdAcessPermission, ACCESS_PERMISSION.Description, COACH.Name, COACH.RG ');
    SQL.Add('FROM LOGIN ');
    SQL.Add('inner JOIN ACCESS_PERMISSION ');
    SQL.Add('ON LOGIN.IdAcessPermission = ACCESS_PERMISSION.IdAcessPermission ');
    SQL.Add('inner JOIN COACH ');
    SQL.Add('ON COACH.RG = LOGIN.UserRG ');
    SQL.Add('WHERE LOGIN.UserRG = :UserID');
    }
    Parameters.ParamByName('UserID').Value := Frm_UserLogin.PUserID;
    Open;

  end;//ADOQ WITH DO

  Edit_CoachTrainingBuilder.Text := DM_DBConnection.ADOQ_TrainingAcessPermission.FieldByName('Name').AsString;

  if(DM_DBConnection.ADOQ_TrainingAcessPermission.RecordCount > 0) then
    begin

      DBN_TrainingControl.Visible := true;
      DBN_ChallengeControl.Visible := true;

    end//if
  else
    begin

      DBN_TrainingControl.Visible := false;
      DBN_ChallengeControl.Visible := false;

    end;

end;

end.
