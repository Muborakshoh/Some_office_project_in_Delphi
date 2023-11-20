unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Grids, Vcl.DBGrids, Data.Win.ADODB, Vcl.Buttons,ComObj, Vcl.DBCtrls;

type

  TForm1 = class(TForm)
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    ADOQuery2: TADOQuery;
    DBNavigator1: TDBNavigator;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses Unit2, Unit3;

procedure TForm1.BitBtn1Click(Sender: TObject);
var SQL_COMAND:String;
begin
  try
    AdoQuery1.Close;
    ADoQuery1.SQL.Clear;
    ADoQuery1.SQL.Text:='select * from Course where Groupa like ''%'+Copy(ComboBox2.Text,8,1)+'%'' and subject_ like ''%'+ComboBox1.Text+'%'' ';
    ADoQuery1.Open
  except
    ShowMessage('Error SQLQUERY');
  end;
end;

procedure TForm1.BitBtn2Click(Sender: TObject);
begin
   try
    AdoQuery1.Close;
    ADoQuery1.SQL.Clear;
    ADoQuery1.SQL.Text:='select * from Course';
    ADoQuery1.Open
  except
    ShowMessage('Error SQLQUERY');
  end;
end;

procedure TForm1.BitBtn3Click(Sender: TObject);
var WApp,WDoc,WDocs, tab:Variant;
begin
   WApp:=CreateOLEObject('Word.Application');
   WDoc:=WApp.Documents.Add(ExtractFilePath(Application.ExeName)+'�������.dotx');

   WDoc.Select;
   WApp.Selection.Find.Execute(FindText:='##1##',ReplaceWith:=ComboBox1.Text);
   WDoc.Select;
   WApp.Selection.Find.Execute(FindText:='##2##',ReplaceWith:=ComboBox2.Text);

   tab := WDoc.Tables.Item(1);
   //tab.Rows.Add();
   for var  i:= 1 to ADoQuery1.RecordCount do
     begin
         tab.Rows.Add();
         tab.cell(i+1,2).Range.Font.Bold:=0;
         tab.cell(i+1,3).Range.Font.Bold:=0;
         tab.cell(i+1,4).Range.Font.Bold:=0;
         tab.cell(i+1,5).Range.Font.Bold:=0;
         tab.cell(i+1,6).Range.Font.Bold:=0;
         tab.cell(i+1,2).Range.Font.Size:=11;
         tab.cell(i+1,3).Range.Font.Size:=11;
         tab.cell(i+1,4).Range.Font.Size:=11;
         tab.cell(i+1,5).Range.Font.Size:=11;
         tab.cell(i+1,6).Range.Font.Size:=11;
         tab.cell(i+1,1).Range.text:=IntToStr(i);
         tab.cell(i+1,2).Range.text:=ADoQuery1.FieldByName('first_name').AsString;
         tab.cell(i+1,3).Range.text:=ADoQuery1.FieldByName('last_name').AsString;
         tab.cell(i+1,4).Range.text:=ADoQuery1.FieldByName('phone_number').AsString;
         tab.cell(i+1,5).Range.text:=ADoQuery1.FieldByName('subject_').AsString;
         tab.cell(i+1,6).Range.text:=ADoQuery1.FieldByName('Groupa').AsString;

         ADOQuery1.Next;
     end;
     WApp.Visible:=True;
  WApp.ActiveDocument.SaveAs(ExtractFilePath(Application.ExeName)+DateToStr(date)+'_'+''''+Combobox1.Text+''' '+'.docx');
   //WApp.ActiveDocument.Close;
   //WApp.Quit;

end;

procedure TForm1.BitBtn4Click(Sender: TObject);
begin
Form2.ShowModal;
end;

procedure TForm1.BitBtn5Click(Sender: TObject);
begin
Form1.Close;
end;

procedure TForm1.BitBtn6Click(Sender: TObject);
var Wdoc, Wapp,  tab, RowCount:VAriant;
    n:Integer;
begin
  Wapp:=CreateOLEObject('Word.Application');
  Wdoc:=Wapp.Documents.Open(ExtractFilePath(Application.ExeName)+'25.02.2023_''����������'' .docx');
  Wapp.Visible:=true;
  Tab:=Wdoc.Tables.Item(1);
  RowCount:=tab.Rows.Count;
  n:= StrToINt(VarTOstr(RowCount));
  for var i := 1 to n-1 do
    begin

      Try
       ADoQuery2.Close;
       ADoQuery2.SQL.Clear;
       ADoQuery2.SQL.Text:='insert into Course values('''+VarToStr(tab.Cell(i+1,2).Range.Text)+''', '
       +' '''+trim(VarToStr(tab.Cell(i+1,3).Range.Text))+''', '
       +' '''+trim(VarToStr(tab.Cell(i+1,4).Range.Text))+''', '
       +' '''+trim(VarToStr(tab.Cell(i+1,5).Range.Text))+''', '
       +' '''+trim(VarToStr(tab.Cell(i+1,6).Range.Text))+''') ';
       ADoQuery2.ExecSQL;

      except
        on e:Exception do
      ShowMessage(e.Message);
      End;

    end;



  end;

procedure TForm1.BitBtn7Click(Sender: TObject);
begin
Form3.Showmodal;
end;

procedure TForm1.BitBtn8Click(Sender: TObject);
begin
try
    AdoQuery1.Close;
    ADoQuery1.SQL.Clear;
    ADoQuery1.SQL.Text:='select * from Course';
    ADoQuery1.Open
  except
    ShowMessage('Error SQLQUERY');
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
ComboBox1.Items.Add('����������');
ComboBox1.Items.Add('������');
ComboBox1.Items.Add('�����������');
ComboBox1.Items.Add('�����');
ComboBox1.Items.Add('���������� ����');
ComboBox1.Items.Add('������� ����');
ComboBox1.Items.Add('�������');
ComboBox2.Items.Add('����');
ComboBox2.Items.Add('����');
ComboBox2.Items.Add('��������');
ComboBox2.Items.Add('��');
ComboBox2.Items.Add('���');
ComboBox2.Items.Add('�����������');
ComboBox2.ItemIndex:=0;
ComboBox1.ItemIndex:=0;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  try
    AdoQuery1.Close;
    ADoQuery1.SQL.Clear;
    ADoQuery1.SQL.Text:='select * from Course where Groupa like ''%'+Copy(ComboBox2.Text,8,1)+'%'' and subject_ like ''%'+ComboBox1.Text+'%'' ';
    ADoQuery1.Open
  except
    ShowMessage('Error SQLQUERY');
  end;
end;

end.
