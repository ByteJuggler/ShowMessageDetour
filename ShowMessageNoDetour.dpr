program ShowMessageNoDetour;

uses
  Vcl.Forms,
  uMainForm in 'uMainForm.pas' {frmMainForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMainForm, frmMainForm);
  Application.Run;
end.
