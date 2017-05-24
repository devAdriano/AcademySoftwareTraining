unit CoachRegistration;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.ExtCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TFrm_CoachRegistration = class(TForm)
    PC_Coach: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    GB_CoachPersonal: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBE_CoachName: TDBEdit;
    DTP_CoachBirthDate: TDateTimePicker;
    DBE_CoachRG: TDBEdit;
    DBE_CoachCPF: TDBEdit;
    DBN_Coach: TDBNavigator;
    GB_CoachAddress: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    DBE_Address: TDBEdit;
    DBE_ZipCode: TDBEdit;
    DBE_Neighborhood: TDBEdit;
    DBE_Number: TDBEdit;
    DBE_Phone1: TDBEdit;
    DBE_Phone2: TDBEdit;
    GB_CoachLabor: TGroupBox;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    lbl_ResignationText: TLabel;
    DBE_PisNumber: TDBEdit;
    DBE_WorkPermit: TDBEdit;
    DTP_AdmissionDate: TDateTimePicker;
    DTP_ResignationDate: TDateTimePicker;
    DBG_Coach: TDBGrid;
    Label15: TLabel;
    DBE_ScheduleDescription: TDBEdit;
    GB_WSData: TGroupBox;
    Label16: TLabel;
    Label17: TLabel;
    DBE_Entry: TDBEdit;
    DBE_Exit: TDBEdit;
    GB_WeekDays: TGroupBox;
    DBCB_Sunday: TDBCheckBox;
    DBCB_Monday: TDBCheckBox;
    DBCB_Tuesday: TDBCheckBox;
    DBCB_Wednesday: TDBCheckBox;
    DBCB_Thursday: TDBCheckBox;
    DBCB_Friday: TDBCheckBox;
    DBCB_Saturday: TDBCheckBox;
    Btn_WeekDays: TButton;
    Btn_AllDays: TButton;
    DBN_WorkSchedule: TDBNavigator;
    DBG_WorkSchedule: TDBGrid;
    Label18: TLabel;
    Btn_UserRegistration: TButton;
    DBLC_SystemUser: TDBLookupComboBox;
    Label19: TLabel;
    DBLC_WorkSchedule: TDBLookupComboBox;
    CB_DemissionCheck: TCheckBox;
    procedure FormShow(Sender: TObject);
    procedure DBN_WorkScheduleClick(Sender: TObject; Button: TNavigateBtn);
    procedure Btn_WeekDaysClick(Sender: TObject);
    procedure Btn_AllDaysClick(Sender: TObject);
    procedure DBN_CoachClick(Sender: TObject; Button: TNavigateBtn);
    procedure DTP_CoachBirthDateExit(Sender: TObject);
    procedure DTP_AdmissionDateExit(Sender: TObject);
    procedure DTP_ResignationDateExit(Sender: TObject);
    procedure CB_DemissionCheckClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_CoachRegistration: TFrm_CoachRegistration;

implementation

{$R *.dfm}

uses DataModule;

procedure TFrm_CoachRegistration.Btn_AllDaysClick(Sender: TObject);
begin

      DM_DBConnection.ADOT_WorkSchedule.FieldValues['Sunday'] := 'T';
      DM_DBConnection.ADOT_WorkSchedule.FieldValues['Monday'] := 'T';
      DM_DBConnection.ADOT_WorkSchedule.FieldValues['Tuesday'] := 'T';
      DM_DBConnection.ADOT_WorkSchedule.FieldValues['Wednesday'] := 'T';
      DM_DBConnection.ADOT_WorkSchedule.FieldValues['Thursday'] := 'T';
      DM_DBConnection.ADOT_WorkSchedule.FieldValues['Friday'] := 'T';
      DM_DBConnection.ADOT_WorkSchedule.FieldValues['Saturday'] := 'T';

      DBCB_Sunday.Checked := True;
      DBCB_Monday.Checked := True;
      DBCB_Tuesday.Checked := True;
      DBCB_Wednesday.Checked := True;
      DBCB_Thursday.Checked := True;
      DBCB_Friday.Checked := True;
      DBCB_Saturday.Checked := True;

end;

procedure TFrm_CoachRegistration.Btn_WeekDaysClick(Sender: TObject);
begin

      DM_DBConnection.ADOT_WorkSchedule.FieldValues['Sunday'] := 'F';
      DM_DBConnection.ADOT_WorkSchedule.FieldValues['Monday'] := 'T';
      DM_DBConnection.ADOT_WorkSchedule.FieldValues['Tuesday'] := 'T';
      DM_DBConnection.ADOT_WorkSchedule.FieldValues['Wednesday'] := 'T';
      DM_DBConnection.ADOT_WorkSchedule.FieldValues['Thursday'] := 'T';
      DM_DBConnection.ADOT_WorkSchedule.FieldValues['Friday'] := 'T';
      DM_DBConnection.ADOT_WorkSchedule.FieldValues['Saturday'] := 'F';

      DBCB_Sunday.Checked := False;
      DBCB_Monday.Checked := True;
      DBCB_Tuesday.Checked := True;
      DBCB_Wednesday.Checked := True;
      DBCB_Thursday.Checked := True;
      DBCB_Friday.Checked := True;
      DBCB_Saturday.Checked := False;

end;

procedure TFrm_CoachRegistration.CB_DemissionCheckClick(Sender: TObject);
begin

    if CB_DemissionCheck.Checked = true then
    begin

        lbl_ResignationText.Visible := true;
        DTP_ResignationDate.Visible := true;
        CB_DemissionCheck.Visible := false;

    end//if
    else
    begin

        lbl_ResignationText.Visible := false;
        DTP_ResignationDate.Visible := false;
        CB_DemissionCheck.Visible := true;

    end;//else

end;

procedure TFrm_CoachRegistration.DBN_CoachClick(Sender: TObject;
  Button: TNavigateBtn);
begin

  if Button = nbInsert then
  begin

       GB_CoachPersonal.Enabled := true;
       GB_CoachAddress.Enabled := true;
       GB_CoachLabor.Enabled := true;

       DM_DBConnection.ADOT_CoachHasSchedule.Active := true;
       DM_DBConnection.ADOT_CoachHasSchedule.Append;

  end;//if Insert Click

  if Button = nbPost then
  begin

      DM_DBConnection.ADOT_CoachHasSchedule.FieldValues['idCoach'] := DM_DBConnection.ADOT_Coach.FieldByName('idCoach').AsInteger;
      DM_DBConnection.ADOT_CoachHasSchedule.Post;

      GB_CoachPersonal.Enabled := false;
      GB_CoachAddress.Enabled := false;
      GB_CoachLabor.Enabled := false;

  end;//if Post Click

  if Button = nbEdit then
  begin

      GB_CoachPersonal.Enabled := true;
      GB_CoachAddress.Enabled := true;
      GB_CoachLabor.Enabled := true;

  end;
  //If Edit Click

  if Button = nbCancel then
  begin

    GB_CoachPersonal.Enabled := false;
    GB_CoachAddress.Enabled := false;
    GB_CoachLabor.Enabled := false;

    lbl_ResignationText.Visible := false;
    DTP_ResignationDate.Visible := false;
    CB_DemissionCheck.Visible := true;
    CB_DemissionCheck.Checked := false;

  end;


end;//DBNavigator Coach

procedure TFrm_CoachRegistration.DBN_WorkScheduleClick(Sender: TObject;
  Button: TNavigateBtn);
begin

    if Button = nbInsert then
    begin

      GB_WeekDays.Enabled := true;
      GB_WSData.Enabled := true;
      DBE_ScheduleDescription.Enabled := true;

      DM_DBConnection.ADOT_WorkSchedule.FieldValues['Sunday'] := 'F';
      DM_DBConnection.ADOT_WorkSchedule.FieldValues['Monday'] := 'F';
      DM_DBConnection.ADOT_WorkSchedule.FieldValues['Tuesday'] := 'F';
      DM_DBConnection.ADOT_WorkSchedule.FieldValues['Wednesday'] := 'F';
      DM_DBConnection.ADOT_WorkSchedule.FieldValues['Thursday'] := 'F';
      DM_DBConnection.ADOT_WorkSchedule.FieldValues['Friday'] := 'F';
      DM_DBConnection.ADOT_WorkSchedule.FieldValues['Saturday'] := 'F';

      DBCB_Sunday.Checked := false;
      DBCB_Monday.Checked := false;
      DBCB_Tuesday.Checked := false;
      DBCB_Wednesday.Checked := false;
      DBCB_Thursday.Checked := false;
      DBCB_Friday.Checked := false;
      DBCB_Saturday.Checked := false;

    end;//if Insert Click

    if Button = nbCancel then
    begin

      GB_WeekDays.Enabled := false;
      GB_WSData.Enabled := false;
      DBE_ScheduleDescription.Enabled := false;

    end;//if Cancel Click

    if Button = nbPost then
    begin

      GB_WeekDays.Enabled := false;
      GB_WSData.Enabled := false;
      DBE_ScheduleDescription.Enabled := false;

    end;//if Post Click

    if Button = nbEdit then
    begin

      GB_WeekDays.Enabled := true;
      GB_WSData.Enabled := true;
      DBE_ScheduleDescription.Enabled := true;

    end;//if Edit Click



end;

procedure TFrm_CoachRegistration.DTP_AdmissionDateExit(Sender: TObject);
begin

  DM_DBConnection.ADOT_Coach.FieldByName('AdmissionDate').AsDateTime := DTP_AdmissionDate.Date;

end;

procedure TFrm_CoachRegistration.DTP_CoachBirthDateExit(Sender: TObject);
begin

  DM_DBConnection.ADOT_Coach.FieldByName('BirthDate').AsDateTime := DTP_CoachBirthDate.Date;

end;

procedure TFrm_CoachRegistration.DTP_ResignationDateExit(Sender: TObject);
begin

  DM_DBConnection.ADOT_Coach.FieldByName('DemissionDate').AsDateTime := DTP_ResignationDate.Date;

end;

procedure TFrm_CoachRegistration.FormShow(Sender: TObject);
begin

  DM_DBConnection.ADOT_WorkSchedule.Active := true;
  DM_DBConnection.ADOT_Coach.Active := true;
  DM_DBConnection.ADOT_CoachHasSchedule.Active := true;

end;

end.
