unit uMainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmMainForm = class(TForm)
    btn1: TButton;
    btnMessageDlg: TButton;
    mmoLog: TMemo;
    procedure btn1Click(Sender: TObject);
    procedure btnMessageDlgClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure LogToMemo(const Msg : String);
  end;

var
  frmMainForm: TfrmMainForm;

implementation

{$R *.dfm}

procedure TfrmMainForm.btn1Click(Sender: TObject);
begin
  ShowMessage('This is a message via ShowMessage');
end;

procedure TfrmMainForm.btnMessageDlgClick(Sender: TObject);
begin
  MessageDlg('This is a message via MessageDlg', mtWarning, [mbOK], 0);
end;


procedure TfrmMainForm.LogToMemo(const Msg: String);
begin
  mmoLog.Lines.Add(Msg);
end;

end.
