unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    Button1: TButton;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}
var
f:TextFile;
title:string;
nq:integer;
right:integer;
level:array[1..10] of integer;
mes:array[1..4] of string;
buf:string;
function NextQw:boolean;
begin
if not EOF(f) then
begin
  nq:=nq + 1;
  Form1.Caption:=Title + '-вопрос ' + IntToStr(nq);
  Readln(f,buf);
  Form1.Label1.Caption:=buf;
  Readln(f,buf);
  Form1.Label2.Caption:=buf;
  Readln(f,buf);
  Form1.RadioButton1.Tag:=StrToInt(buf);
  Readln(f,buf);
  Form1.Label3.Caption:=buf;
  Readln(f,buf);
  Form1.RadioButton2.Tag:=StrToInt(buf);
  Readln(f,buf);
  Form1.Label4.Caption:=buf;
  Readln(f,buf);
  Form1.RadioButton3.Tag:=StrToInt(buf);
  Readln(f,buf);
  Form1.Button1.Enabled:=False;
  Form1.RadioButton1.Checked:=False;
  Form1.RadioButton2.Checked:=False;
  Form1.RadioButton3.Checked:=False;
  NextQw:=True;
end else NextQw:=False;
end;
procedure TForm1.FormCreate(Sender: TObject);
var i:integer;
    fname:string;
begin
fname :=ParamStr(1);
if fname='' then
begin
  ShowMessage('В командной строке запуска программы' + #13 + 'надо указать файл теста.');
  Application.Terminate;
end;
AssignFile(f,fname);
try
  Reset(f);
  except
  on ElnOutError do
  begin
    ShowMessage('Ошибка обращения к файлу теста: '+fname);
    Application.Terminate;
  end;

end;
end;

end.
