program ShowMessageWithDetour;

uses
  Vcl.Forms,
  uMainForm in 'uMainForm.pas' {frmMainForm},
  uSetupDialogDetours in 'uSetupDialogDetours.pas',
  DDetours in 'delphi-detours-library\Source\DDetours.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMainForm, frmMainForm);
  uSetupDialogDetours.SetCallback(frmMainForm.LogToMemo);
  Application.Run;
end.
