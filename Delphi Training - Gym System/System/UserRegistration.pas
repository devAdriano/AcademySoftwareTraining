unit UserRegistration;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Mask;

type
  TFrm_UserRegistration = class(TForm)
    Label1: TLabel;
    GB_UserData: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    DBE_UserID: TDBEdit;
    DBE_UserPassword: TDBEdit;
    Label4: TLabel;
    s: TDBGrid;
    DBN_Login: TDBNavigator;
    DBLC_AccessPermision: TDBLookupComboBox;
    DBCB_Registared: TDBLookupComboBox;
    procedure DBN_LoginClick(Sender: TObject; Button: TNavigateBtn);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_UserRegistration: TFrm_UserRegistration;

implementation

{$R *.dfm}

uses DataModule;

procedure TFrm_UserRegistration.DBN_LoginClick(Sender: TObject;
  Button: TNavigateBtn);
begin

    if Button = nbInsert then
    begin

      GB_UserData.Enabled := true;

    end;//if insert click

    if Button = nbCancel then
    begin

      GB_UserData.Enabled := false;

    end;//if cancel click

    if Button = nbEdit then
    begin

      GB_UserData.Enabled := true;

    end;//if insert click

    if Button = nbPost then
    begin

      GB_UserData.Enabled := false;

    end;//if insert click

end;

procedure TFrm_UserRegistration.FormShow(Sender: TObject);
begin

    DM_DBConnection.ADOT_Login.Active := true;
    DM_DBConnection.ADOT_AccessPermission.Active := true;

end;

end.
