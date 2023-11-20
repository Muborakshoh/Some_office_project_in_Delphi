unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Data.DB,
  Data.Win.ADODB;

type
  TForm2 = class(TForm)
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    StaticText4: TStaticText;
    StaticText5: TStaticText;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    BitBtn1: TBitBtn;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    ADOQuery1: TADOQuery;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

uses Unit1;

procedure TForm2.BitBtn1Click(Sender: TObject);
var SQL_Comand:String;
begin
  try
    SQl_COMAND:='insert into Course values('''+Edit1.Text+''', '''+Edit2.Text+''', '''+Edit3.Text+''', '
                             +''''+ComboBox1.Text+''', '''+ComboBox2.Text+''' )';
    ADOQuery1.Close;
    ADOQuery1.SQL.Clear;
    ADOQuery1.SQL.Text:=SQl_COMAND;
    ADOQuery1.ExecSQL;
  except
      on e:Exception do
      ShowMessage(e.Message);
  end;
  Edit1.Clear;
  Edit2.Clear;
  Edit2.Clear;
  Form2.Close;
end;

procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form1.ADOQuery1.Close;
Form1.ADOQuery1.Open;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
Edit1.Clear;
Edit2.Clear;
Edit3.Clear;
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

end.
