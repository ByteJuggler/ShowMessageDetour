unit uSetupDialogDetours;

interface

type
  TDetourCallbackProc = procedure (const Msg: string) of object;

procedure SetCallback(ACallbackProc : TDetourCallbackProc);

implementation

uses VCL.Dialogs, DDetours;

var FCallbackProc : TDetourCallbackProc = nil;
procedure SetCallback(ACallbackProc : TDetourCallbackProc);
begin
  FCallbackProc := ACallbackProc;
end;

var
  TrampolineShowMessage: procedure (const Msg: string); cdecl = nil;
  TrampolineMessageDlg: function (const Msg: string; DlgType: TMsgDlgType;
  Buttons: TMsgDlgButtons; HelpCtx: Longint): Integer; cdecl = nil;

procedure ShowMessage_Hooked(const Msg: string);
begin
  if Assigned(FCallbackProc) then FCallbackProc(Msg);
end;

function MessageDlg_Hooked(const Msg: string; DlgType: TMsgDlgType;
  Buttons: TMsgDlgButtons; HelpCtx: Longint): Integer;
begin
  if Assigned(FCallbackProc) then FCallbackProc(Msg);
end;

initialization

  @TrampolineShowMessage := InterceptCreate(@ShowMessage, @ShowMessage_Hooked);
  @TrampolineMessageDlg := InterceptCreate(@MessageDlg, @MessageDlg_Hooked);

finalization

  InterceptRemove(@TrampolineShowMessage);
  InterceptRemove(@TrampolineMessageDlg);

end.
