unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, DBGrids, StdCtrls, ExtCtrls,ComObj;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label3: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    Button4: TButton;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    procedure Button1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
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
begin
try
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Text:='insert into FIO_students values('''+Edit1.Text+''','+' '''+
Edit2.Text+''','+' '''+Edit3.Text+''')';
ADoQuery1.SQL.Text:='select * from FIO_students';
ADOQuery1.ExecSQL;
except
on e:Exception do
ShowMessage(e.Message);
end;
end;
procedure TForm1.Button4Click(Sender: TObject);
begin
begin
   try
    AdoQuery1.Close;
    ADoQuery1.SQL.Clear;
    ADoQuery1.SQL.Text:='select * from FIO_students';
    ADoQuery1.Open
  except
    ShowMessage('Error SQLQUERY');
  end;
end;
    end;
procedure TForm1.Button3Click(Sender: TObject);
var WApp,WDoc,WDocs, tab:Variant;
    i:Integer;
begin
   WApp:=CreateOLEObject('Word.Application');
   WDoc:=WApp.Documents.Add(ExtractFilePath(Application.ExeName)+'MyTemplate.dotx');
   WApp.Visible:=True;
   WDoc.Select;
   WApp.Selection.Find.Execute(FindText:='##1##',ReplaceWith:=ComboBox1.Text);
   WDoc.Select;
   WApp.Selection.Find.Execute(FindText:='##2##',ReplaceWith:=ComboBox2.Text);

   //tab := WDoc.Tables.Item(1);
   //tab.Rows.Add();
   for  i:= 1 to ADoQuery1.RecordCount do
     begin
         tab.Rows.Add();
         tab.cell(i+1,2).Range.Font.Bold:=0;
         tab.cell(i+1,3).Range.Font.Bold:=0;
         tab.cell(i+1,4).Range.Font.Bold:=0;
         tab.cell(i+1,2).Range.Font.Size:=11;
         tab.cell(i+1,3).Range.Font.Size:=11;
         tab.cell(i+1,4).Range.Font.Size:=11;
         tab.cell(i+1,1).Range.text:=IntToStr(i);
         tab.cell(i+1,2).Range.text:=ADoQuery1.FieldByName('FName').AsString;
         tab.cell(i+1,3).Range.text:=ADoQuery1.FieldByName('LName').AsString;
         tab.cell(i+1,4).Range.text:=ADoQuery1.FieldByName('FFName').AsString;

         ADOQuery1.Next;
     end;
  WApp.ActiveDocument.SaveAs(ExtractFilePath(Application.ExeName)+DateToStr(date)+'_'+''''+Edit1.Text+''' '+'.docx');
   //WApp.ActiveDocument.Close;
   //WApp.Quit;
 end;
procedure TForm1.FormCreate(Sender: TObject);
begin
ComboBox1.Items.Add('ПМиИ');
ComboBox1.Items.Add('ХФММ');
ComboBox1.Items.Add('Геология');
ComboBox1.Items.Add('Лингвистика');
ComboBox1.Items.Add('МО');
ComboBox1.Items.Add('ГМУ');
ComboBox2.Items.Add('Курс 1');
ComboBox2.Items.Add('Курс 2');
ComboBox2.Items.Add('Курс 3');
ComboBox2.Items.Add('Курс 4');
ComboBox2.ItemIndex:=0;
ComboBox1.ItemIndex:=0;
end;

end.
