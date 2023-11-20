unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, ComObj, Vcl.ComCtrls,
  Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    GroupBox1: TGroupBox;
    Panel1: TPanel;
    LabeledEdit1: TLabeledEdit;
    RadioGroup1: TRadioGroup;
    LabeledEdit2: TLabeledEdit;
    RadioGroup2: TRadioGroup;
    DateTimePicker1: TDateTimePicker;
    Label1: TLabel;
    LabeledEdit3: TLabeledEdit;
    RadioGroup3: TRadioGroup;
    LabeledEdit4: TLabeledEdit;
    LabeledEdit5: TLabeledEdit;
    LabeledEdit6: TLabeledEdit;
    LabeledEdit7: TLabeledEdit;
    LabeledEdit8: TLabeledEdit;
    GroupBox2: TGroupBox;
    LabeledEdit9: TLabeledEdit;
    LabeledEdit10: TLabeledEdit;
    LabeledEdit11: TLabeledEdit;
    LabeledEdit12: TLabeledEdit;
    LabeledEdit13: TLabeledEdit;
    LabeledEdit14: TLabeledEdit;
    LabeledEdit15: TLabeledEdit;
    LabeledEdit16: TLabeledEdit;
    DateTimePicker2: TDateTimePicker;
    Label2: TLabel;
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
var Wdoc, Wapp:VAriant;
begin
   WApp:=CreateOLEObject('Word.Application');
   WDoc:=Wapp.Documents.Add(ExtractFilePath(Application.ExeName)+'������ ��������.dotx');
   WApp.Visible:=True;
   WDoc.Shapes.Range('Text Box 1').Select;
   WApp.Selection.TypeText(Text:=LabeledEdit1.Text);
   WDoc.Shapes.Range('Text Box 2').Select;
   WApp.Selection.TypeText(Text:=RAdioGroup1.Items[RAdioGroup1.ItemIndex]);
   WDoc.Shapes.Range('Text Box 4').Select;
   WApp.Selection.TypeText(Text:=LabeledEdit2.Text);
   WDoc.Shapes.Range('Text Box 5').Select;
   WApp.Selection.TypeText(Text:=RAdioGroup2.Items[RAdioGroup2.ItemIndex]);
   WDoc.Shapes.Range('Text Box 6').Select;
   WApp.Selection.TypeText(Text:=DateToStr(DAteTimePicker1.Date));
   WDoc.Shapes.Range('Text Box 7').Select;
   WApp.Selection.TypeText(Text:=RAdioGroup3.Items[RAdioGroup3.ItemIndex]);
   WDoc.Shapes.Range('Text Box 8').Select;
   WApp.Selection.TypeText(Text:=LabeledEdit3.Text);
   WDoc.Shapes.Range('Text Box 9').Select;
   WApp.Selection.TypeText(Text:=LabeledEdit4.Text);
   WDoc.Shapes.Range('Text Box 10').Select;
   WApp.Selection.TypeText(Text:=LabeledEdit5.Text);
   WDoc.Shapes.Range('Text Box 11').Select;
   WApp.Selection.TypeText(Text:=LabeledEdit6.Text);
   WDoc.Shapes.Range('Text Box 15').Select;
   WApp.Selection.TypeText(Text:=LabeledEdit7.Text);
   WDoc.Shapes.Range('Text Box 16').Select;
   WApp.Selection.TypeText(Text:=LabeledEdit8.Text);
     WDoc.Shapes.Range('Text Box 17').Select;
   WApp.Selection.TypeText(Text:=LabeledEdit9.Text);
     WDoc.Shapes.Range('Text Box 18').Select;
   WApp.Selection.TypeText(Text:=LabeledEdit10.Text);
     WDoc.Shapes.Range('Text Box 19').Select;
   WApp.Selection.TypeText(Text:=LabeledEdit11.Text);
     WDoc.Shapes.Range('Text Box 20').Select;
   WApp.Selection.TypeText(Text:=LabeledEdit12.Text);
     WDoc.Shapes.Range('Text Box 21').Select;
   WApp.Selection.TypeText(Text:=LabeledEdit13.Text);
     WDoc.Shapes.Range('Text Box 22').Select;
   WApp.Selection.TypeText(Text:=LabeledEdit14.Text);
     WDoc.Shapes.Range('Text Box 23').Select;
   WApp.Selection.TypeText(Text:=LabeledEdit15.Text);
     WDoc.Shapes.Range('Text Box 24').Select;
   WApp.Selection.TypeText(Text:=LabeledEdit16.Text);
      WDoc.Shapes.Range('Text Box 25').Select;
   WApp.Selection.TypeText(Text:=DateToStr(DateTimePicker2.Date));


   //WApp.ActiveDocument.SaveAs(ExtractFilePath(Application.ExeName)+DateToStr(date)+'_'+'.docx');



end;

procedure TForm1.FormCreate(Sender: TObject);
begin
DAteTimePicker2.Date:=date;
end;

end.
