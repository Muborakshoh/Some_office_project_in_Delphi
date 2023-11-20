unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,ComObj;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Button1: TButton;
    Button2: TButton;
    Label7: TLabel;
    Edit7: TEdit;
    Label8: TLabel;
    Edit8: TEdit;
    procedure Button1Click(Sender: TObject);
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

procedure TForm1.Button1Click(Sender: TObject);
var WApp,WDoc,WDocs:Variant;
    name_company,name_course,fname,lname,name_teacher,name_director:string;
begin
WApp:=CreateOLEObject('Word.Application');
WDoc:=WApp.Documents.Add(ExtractFilePath(Application.ExeName) + 'LIVO.dotx');

WDoc.Select;
WApp.Selection.Find.Execute(FindText:='##1##',ReplaceWith:=Edit1.Text);
WDoc.Select;
WApp.Selection.Find.Execute(FindText:='##2##',ReplaceWith:=Edit2.Text);
WDoc.Select;
WApp.Selection.Find.Execute(FindText:='##4##',ReplaceWith:=Edit3.Text);
WDoc.Select;
WApp.Selection.Find.Execute(FindText:='##3##',ReplaceWith:=Edit4.Text);
WDoc.Select;
WApp.Selection.Find.Execute(FindText:='##5##',ReplaceWith:=Edit5.Text);
WDoc.Select;
WApp.Selection.Find.Execute(FindText:='##6##',ReplaceWith:=Edit6.Text);
WDoc.Select;
WApp.Selection.Find.Execute(FindText:='##7##',ReplaceWith:=Edit7.Text);
WDoc.Select;
WApp.Selection.Find.Execute(FindText:='##0##',ReplaceWith:=Edit8.Text);

WApp.ActiveDocument.SaveAs(ExtractFilePath(Application.ExeName) + Edit2.Text + '.docx');
WApp.Visible:=True;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
Edit1.Clear;
Edit2.Clear;
Edit3.Clear;
Edit4.Clear;
Edit5.Clear;
Edit6.Clear;
Edit7.Clear;
Edit8.Clear;
end;

end.
