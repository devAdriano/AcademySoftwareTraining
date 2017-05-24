unit StudentRegistration;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.ExtCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TFrm_StudentRegistration = class(TForm)
    GB_StudentPersonal: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBE_StudentName: TDBEdit;
    DTP_StudentBirthDate: TDateTimePicker;
    DBE_StudentID: TDBEdit;
    DBE_StudentSSN: TDBEdit;
    GB_StudentAddress: TGroupBox;
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
    Label11: TLabel;
    DBE_MessageWith: TDBEdit;
    Label12: TLabel;
    DBE_Objective: TDBEdit;
    Label13: TLabel;
    DBE_Complement: TDBEdit;
    DBNavigator1: TDBNavigator;
    Label15: TLabel;
    Btn_UserRegistration: TButton;
    DBG_Student: TDBGrid;
    DBLC_SystemUser: TDBLookupComboBox;
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure DTP_StudentBirthDateExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_StudentRegistration: TFrm_StudentRegistration;

implementation

{$R *.dfm}

uses DataModule;

procedure TFrm_StudentRegistration.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin

    if Button = nbInsert then
    begin

        GB_StudentPersonal.Enabled := true;
        GB_StudentAddress.Enabled := true;
        DBLC_SystemUser.Enabled := true;

    end;//If insert

    if Button = nbEdit then
    begin

        GB_StudentPersonal.Enabled := true;
        GB_StudentAddress.Enabled := true;
        DBLC_SystemUser.Enabled := true;

    end;//If edit

    if Button = nbCancel then
    begin

        GB_StudentPersonal.Enabled := false;
        GB_StudentAddress.Enabled := false;
        DBLC_SystemUser.Enabled := false;

    end;//If cancel

    if Button = nbPost then
    begin

        GB_StudentPersonal.Enabled := false;
        GB_StudentAddress.Enabled := false;
        DBLC_SystemUser.Enabled := false;

    end;//If post

end;

procedure TFrm_StudentRegistration.DTP_StudentBirthDateExit(Sender: TObject);
begin

    DM_DBConnection.ADOT_Student.FieldValues['BirthDate'] := DTP_StudentBirthDate.Date;

end;

procedure TFrm_StudentRegistration.FormShow(Sender: TObject);
begin

    DM_DBConnection.ADOT_Student.Active := true;
    DM_DBConnection.ADOT_Coach.Active := true;
    DM_DBConnection.ADOT_Login.Active := true;

end;

end.
