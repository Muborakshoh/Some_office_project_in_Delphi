unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, ExtCtrls, DBCtrls, Grids, DBGrids, StdCtrls,ComObj,WordXP,
  OleServer;

type
  TForm1 = class(TForm)
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    Button1: TButton;
    Button2: TButton;
    ADODataSet1: TADODataSet;
    W1: TWordApplication;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation
uses ComObj;
{$R *.dfm}
var WApp,WDoc,WSel,WFont:Variant;
procedure TForm1.Button1Click(Sender: TObject);
begin
Form1.Close;
end;

procedure TForm1.Button2Click(Sender: TObject);
var vr: olevariant;
begin

end;

end.
