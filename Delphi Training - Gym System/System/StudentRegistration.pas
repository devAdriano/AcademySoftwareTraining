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
    DBN_StudentRegistration: TDBNavigator;
    DBG_Student: TDBGrid;
    GB_SystemUser: TGroupBox;
    DBLC_UserPermission: TDBLookupComboBox;
    Label15: TLabel;
    Label14: TLabel;
    DBE_SystemUserID: TDBEdit;
    Label16: TLabel;
    Label17: TLabel;
    Edit_PasswordConfirmation: TEdit;
    Edit_Password: TEdit;
    DBEdi_ShowBirthDate: TDBEdit;
    procedure DBN_StudentRegistrationClick(Sender: TObject; Button: TNavigateBtn);
    procedure DTP_StudentBirthDateExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBE_StudentIDExit(Sender: TObject);
    procedure Edit_PasswordConfirmationExit(Sender: TObject);
    procedure DBLC_UserPermissionExit(Sender: TObject);
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

procedure TFrm_StudentRegistration.DBE_StudentIDExit(Sender: TObject);
begin

    with DM_DBConnection.ADOQ_Login do
    begin

      SQL.BeginUpdate;
      SQL.Text := 'SELECT * FROM LOGIN WHERE UserRG = :IDUser';
      SQL.EndUpdate;

      Close;
      Parameters.ParamByName('IDUser').Value := DBE_StudentID.Text;
      Open;

    end;//with DM_DBConnection.ADOQ_Login

    if(DM_DBConnection.ADOQ_Login.RecordCount > 0) then
    begin

        ShowMessage('This user is already registred on system');

    end//if
    else
    begin

        DM_DBConnection.ADOT_Login.Append;
        DBE_SystemUserID.Text := DBE_StudentID.Text;

    end;//else

end;

procedure TFrm_StudentRegistration.DBLC_UserPermissionExit(Sender: TObject);
begin

      DM_DBConnection.ADOT_Login.FieldByName('Password').AsString := Edit_Password.Text;
      DM_DBConnection.ADOT_Login.Post;
      DM_DBConnection.ADOT_Student.FieldValues['idLogin'] := DM_DBConnection.ADOT_Login.FieldByName('IdLogin').AsInteger;
      DBN_StudentRegistration.Controls[Ord(nbPost)].Enabled := true;

end;

procedure TFrm_StudentRegistration.DBN_StudentRegistrationClick(Sender: TObject;
  Button: TNavigateBtn);
begin

    if Button = nbInsert then
    begin

        DBG_Student.Enabled := false;

        GB_StudentPersonal.Enabled := true;
        GB_StudentAddress.Enabled := true;
        GB_SystemUser.Enabled := true;
        DBEdi_ShowBirthDate.Visible := false;

        DBN_StudentRegistration.Controls[Ord(nbPost)].Enabled := false;

        DBE_StudentName.SetFocus;

    end;//If insert

    if Button = nbEdit then
    begin

        GB_StudentPersonal.Enabled := true;
        GB_StudentAddress.Enabled := true;
        GB_SystemUser.Enabled := true;

        DBEdi_ShowBirthDate.Visible := false;

    end;//If edit

    if Button = nbCancel then
    begin

        GB_StudentPersonal.Enabled := false;
        GB_StudentAddress.Enabled := false;
        GB_SystemUser.Enabled := false;

        DBEdi_ShowBirthDate.Visible := true;

    end;//If cancel

    if Button = nbPost then
    begin

        GB_StudentPersonal.Enabled := false;
        GB_StudentAddress.Enabled := false;
        GB_SystemUser.Enabled := false;

        DBEdi_ShowBirthDate.Visible := true;

    end;//If post

end;

procedure TFrm_StudentRegistration.DTP_StudentBirthDateExit(Sender: TObject);
begin

    DM_DBConnection.ADOT_Student.FieldValues['BirthDate'] := DTP_StudentBirthDate.Date;

end;

procedure TFrm_StudentRegistration.Edit_PasswordConfirmationExit(
  Sender: TObject);
begin

    if(Edit_Password.Text = Edit_PasswordConfirmation.Text) then
    begin

      DBLC_UserPermission.Enabled := true;

      DBLC_UserPermission.SetFocus;

    end//if
    else
    begin

      ShowMessage('The cconfirmation password is different, please re-insert your password');
      Edit_PasswordConfirmation.Text := '';
      Edit_Password.SetFocus;

    end;//else


end;

procedure TFrm_StudentRegistration.FormShow(Sender: TObject);
begin

    DM_DBConnection.ADOT_Student.Active := true;
    DM_DBConnection.ADOT_Coach.Active := true;
    DM_DBConnection.ADOT_Login.Active := true;
    DM_DBConnection.ADOT_AccessPermission.Active := true;

end;

end.
