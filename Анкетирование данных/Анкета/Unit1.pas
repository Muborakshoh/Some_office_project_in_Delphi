unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls,ComObj;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    LabeledEdit1: TLabeledEdit;
    LabeledEdit2: TLabeledEdit;
    RadioGroup1: TRadioGroup;
    RadioGroup2: TRadioGroup;
    Label1: TLabel;
    DateTimePicker1: TDateTimePicker;
    LabeledEdit4: TLabeledEdit;
    LabeledEdit6: TLabeledEdit;
    LabeledEdit7: TLabeledEdit;
    LabeledEdit8: TLabeledEdit;
    LabeledEdit9: TLabeledEdit;
    Label2: TLabel;
    DateTimePicker2: TDateTimePicker;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    LabeledEdit3: TLabeledEdit;
    LabeledEdit5: TLabeledEdit;
    LabeledEdit10: TLabeledEdit;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
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
var WDoc,WApp:Variant;
begin
WApp:=CreateOLEObject('Word.Application');
WDoc:=Wapp.Documents.Add(ExtractFilePath(Application.ExeName)+'��������� ������ ���������.dotx');

WDoc.Select;
WApp.Selection.Find.Execute(FindText:='@@1@@',ReplaceWith:=LabeledEdit1.Text);
WDoc.Select;
WApp.Selection.Find.Execute(FindText:='@@2@@',ReplaceWith:=LabeledEdit2.Text);
WDoc.Select;
WApp.Selection.Find.Execute(FindText:='@@4@@',ReplaceWith:=LabeledEdit3.Text);
WDoc.Select;
WApp.Selection.Find.Execute(FindText:='@@5@@',ReplaceWith:=LabeledEdit5.Text);
WDoc.Select;
WApp.Selection.Find.Execute(FindText:='@@6@@',ReplaceWith:=LabeledEdit10.Text);
WDoc.Select;
WApp.Selection.Find.Execute(FindText:='@@7@@',ReplaceWith:=RAdioGroup2.Items[RAdioGroup2.ItemIndex]);
WDoc.Select;
WApp.Selection.Find.Execute(FindText:='@@9@@',ReplaceWith:=RAdioGroup1.Items[RAdioGroup1.ItemIndex]);
WDoc.Select;
WApp.Selection.Find.Execute(FindText:='@@10@@',ReplaceWith:=LabeledEdit4.Text);
WDoc.Select;
WApp.Selection.Find.Execute(FindText:='@@11@@',ReplaceWith:=LabeledEdit6.Text);
WDoc.Select;
WApp.Selection.Find.Execute(FindText:='@@12@@',ReplaceWith:=LabeledEdit7.Text);
WDoc.Select;
WApp.Selection.Find.Execute(FindText:='@@13@@',ReplaceWith:=LabeledEdit8.Text);
WDoc.Select;
WApp.Selection.Find.Execute(FindText:='@@14@@',ReplaceWith:=LabeledEdit9.Text);
WDoc.Select;
WApp.Selection.Find.Execute(FindText:='@@15@@',ReplaceWith:=DateToStr(DAteTimePicker2.Date));
WDoc.Select;
WApp.Selection.Find.Execute(FindText:='@@8@@',ReplaceWith:=DateToStr(DAteTimePicker1.Date));
WApp.Visible:=true;
end;
{WDoc:=Wapp.Documents.Add(ExtractFilePath(Application.ExeName)+'��������� ������.dotx');
  // WApp.Visible:=True;
   WDoc.Shapes.Range('Text Box 2').Select;
   WApp.Selection.TypeText(Text:=LabeledEdit1.Text);
   WDoc.Shapes.Range('Text Box 3').Select;
   WApp.Selection.TypeText(Text:=LabeledEdit2.Text);
   WDoc.Shapes.Range('Text Box 4').Select;
   WApp.Selection.TypeText(Text:=LabeledEdit3.Text);
   WDoc.Shapes.Range('Text Box 9').Select;
   WApp.Selection.TypeText(Text:=LabeledEdit5.Text);
   WDoc.Shapes.Range('Text Box 5').Select;
   WApp.Selection.TypeText(Text:=LabeledEdit10.Text);
   WDoc.Shapes.Range('Text Box 6').Select;
   WApp.Selection.TypeText(Text:=RAdioGroup2.Items[RAdioGroup2.ItemIndex]);
   WDoc.Shapes.Range('Text Box 10').Select;
   WApp.Selection.TypeText(Text:=RAdioGroup1.Items[RAdioGroup1.ItemIndex]);
   WDoc.Shapes.Range('Text Box 11').Select;
   WApp.Selection.TypeText(Text:=LabeledEdit4.Text);
   WDoc.Shapes.Range('Text Box 12').Select;
   WApp.Selection.TypeText(Text:=LabeledEdit6.Text);
   WDoc.Shapes.Range('Text Box 13').Select;
   WApp.Selection.TypeText(Text:=LabeledEdit7.Text);
   WDoc.Shapes.Range('Text Box 14').Select;
   WApp.Selection.TypeText(Text:=LabeledEdit8.Text);
   WDoc.Shapes.Range('Text Box 15').Select;
   WApp.Selection.TypeText(Text:=LabeledEdit9.Text);
   WDoc.Shapes.Range('Text Box 7').Select;
   WApp.Selection.TypeText(Text:=DateToStr(DAteTimePicker1.Date));
   WDoc.Shapes.Range('Text Box 16').Select;
   WApp.Selection.TypeText(Text:=DateToStr(DAteTimePicker2.Date));
    WApp.Visible:=true;
   WApp.ActiveDocument.SaveAs(ExtractFilePath(Application.ExeName)+LabeledEdit1.Text+'.docx');




//WApp.ActiveDocument.SaveAs(ExtractFilePath(Application.ExeName)+LabeledEdit1.Text+LabeledEdit2.Text+'.docx');
end; }

procedure TForm1.Button2Click(Sender: TObject);
begin
LabeledEdit1.Clear;
LabeledEdit2.Clear;
LabeledEdit3.Clear;
LabeledEdit4.Clear;
LabeledEdit5.Clear;
LabeledEdit6.Clear;
LabeledEdit7.Clear;
LabeledEdit8.Clear;
LabeledEdit9.Clear;
LabeledEdit10.Clear;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
Form1.Close;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
DAteTimePicker2.Date:=date;
end;

end.
