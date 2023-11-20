unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.DBCtrls;

type
  TForm3 = class(TForm)
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    ADOQuery2: TADOQuery;
    DBNavigator1: TDBNavigator;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.BitBtn1Click(Sender: TObject);
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

procedure TForm3.BitBtn2Click(Sender: TObject);
var SQL_COMAND:String;
begin
  Try
    SQL_COMAND:='select * from Course';
    ADOQUEry1.Close;
    ADoQuery1.SQL.Clear;
    ADoQuery1.SQL.Text:=SQL_Comand;
    ADoQuery1.Open;
  except
   on e:Exception do
   ShowMessage(e.Message);
  End;
end;

procedure TForm3.FormCreate(Sender: TObject);
begin
{ ComboBox1.Items.Add('����������');
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
ComboBox1.ItemIndex:=0; }
end;

procedure TForm3.FormShow(Sender: TObject);
begin
ADoQuery1.Close;
ADoQuery1.Open;

end;

end.
