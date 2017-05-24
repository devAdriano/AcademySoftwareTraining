unit CoachSpace;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TFrm_CoachSpace = class(TForm)
    Label1: TLabel;
    DBEdi_CoachStudent: TDBEdit;
    GP_StudentCoach: TGroupBox;
    DBG_Students: TDBGrid;
    GB_Trainings: TGroupBox;
    DBG_trainingPerformed: TDBGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_CoachSpace: TFrm_CoachSpace;

implementation

{$R *.dfm}

end.
