unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons, ComObj,
  Vcl.ComCtrls, System.Generics.Collections, Vcl.Samples.Spin, System.ImageList,
  Vcl.ImgList;

type
  TForm1 = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    CheckBox1: TCheckBox;
    Panel1: TPanel;
    ComboBox1: TComboBox;
    ColorBox1: TColorBox;
    CheckBox2: TCheckBox;
    OpenDialog1: TOpenDialog;
    RichEdit1: TRichEdit;
    Edit1: TEdit;
    SpinEdit1: TSpinEdit;
    SpeedButton6: TSpeedButton;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    ImageList2: TImageList;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  CountLine:Integer;

implementation

{$R *.dfm}

//---------------------------------------------------------------------
function FindAllOccurrences( SubStr, Str: string): TList<Integer>;
var
  StartPos, k: Integer;
begin
  Result := TList<Integer>.Create;
  StartPos := 1;
  k:=-1;
  repeat
    StartPos := Pos(SubStr, Str, StartPos);
    if StartPos > 0 then
    begin
       
        Result.Add(StartPos);
      Inc(StartPos);
    end;
  until StartPos = 0;
end;
//---------------------------------------------------------------------


procedure TForm1.BitBtn1Click(Sender: TObject);
var MyFile:Tstrings;
    ws, text:WideString;
    WApp, Wdoc:variant;
begin
  //MyFile:= Tstrings.Create;
 //MyFile.LoadFromFile(OpenDialog1.FileName);
   Form1.Color:=clAqua;
 Wapp:=CreateOLEObject('Word.Application');
 OPenDialog1.Filter:='DOCX Format|*.docx|DOC Format|*.doc';
 if OpenDialog1.Execute then
  begin
   Wdoc:=Wapp.Documents.Open(OpenDialog1.FileName);
   Wdoc.Select;
   text:=VarToStr(Wapp.Selection.Text);
   Wdoc.Close;
   Wapp.Quit;
   RichEdit1.Text:=VarToStr(text);
  end;
end;

procedure TForm1.BitBtn2Click(Sender: TObject);
var text,text_,  txt:String;
    PosN, p, q, l:Integer;
    List:Tlist<Integer>;
begin
    text_:='';
    l := Length(Edit1.Text);
    text:=RichEdit1.Text;
    txt:=Edit1.Text;
    RichEdit1.SelStart:=0;
    RichEdit1.SelLength:=Length(text);
    RichEdit1.SelAttributes.Size:=16;
    RichEdit1.SelAttributes.Style:=[];
    RichEdit1.SelAttributes.Color:=ClBlack;
    List:=Tlist<Integer>.Create;


    if CheckBox1.Checked then
     begin
       text:=AnsiUpperCase(text);
       txt:=AnsiUpperCase(txt);
     end;


       text := StringReplace(text,#13#10, ' ',[rfReplaceAll,rfIgnoreCase]);
       List:= FindAllOccurrences(txt, Text);
       if  LIst.Count>0 then
         if not CheckBox2.Checked then
         begin
          RichEdit1.SelStart:=list[0]-1;
          RichEdit1.SelLength:=l;
          RichEdit1.SelAttributes.Name:=ComboBox1.Text;
          RichEdit1.SelAttributes.Size:=SpinEdit1.Value;
          RichEdit1.SelAttributes.Name:=ComBoBox1.Text;
          RichEdit1.SelAttributes.Color:=ColorBox1.Selected;
          if SpeedButton6.Down=true then
                      begin
                        RichEdit1.SelAttributes.Style:=RichEdit1.SelAttributes.Style+[fsbold];
                      end;

          if SpeedButton1.Down=true then
                      begin
                        RichEdit1.SelAttributes.Style:=RichEdit1.SelAttributes.Style+[fsItalic];
                      end;

          if SpeedButton2.Down=true then
                      begin
                        RichEdit1.SelAttributes.Style:=RichEdit1.SelAttributes.Style+[fsUnderline];
                      end;



         end else
               begin
                 for var i := 0 to list.Count-1 do
                   begin
                    RichEdit1.SelStart:=list[i]-1;
                    RichEdit1.SelLength:=l;
                    RichEdit1.SelAttributes.Name:=ComboBox1.Text;
                    RichEdit1.SelAttributes.Size:=SpinEdit1.Value;
                    RichEdit1.SelAttributes.Name:=ComBoBox1.Text;
                    RichEdit1.SelAttributes.Color:=ColorBox1.Selected;
                    if SpeedButton6.Down=true then
                      begin
                        RichEdit1.SelAttributes.Style:=RichEdit1.SelAttributes.Style+[fsbold];
                      end ;
                       if SpeedButton1.Down=true then
                      begin
                        RichEdit1.SelAttributes.Style:=RichEdit1.SelAttributes.Style+[fsItalic];
                      end ;
                       if SpeedButton2.Down=true then
                      begin
                        RichEdit1.SelAttributes.Style:=RichEdit1.SelAttributes.Style+[fsUnderline];
                      end ;
                   end;
               end;




end;

procedure TForm1.BitBtn3Click(Sender: TObject);
var Wapp:Variant;
begin
   Form1.Color:=clLime;
   Wapp:= CreateOLEObject('Word.Application');
   Wapp.Documents.Add();
   RichEdit1.SelectAll;
   RichEdit1.CopyToClipboard;
   Wapp.Selection.Paste;
   WApp.ActiveDocument.SaveAs(ExtractFilePath(Application.ExeName) + Edit1.Text + '.docx');
   Wapp.Visible:=True;

end;

procedure TForm1.FormCreate(Sender: TObject);
begin
Edit1.Clear;
RichEdit1.Clear;

ComboBox1.Items.Assign(Screen.Fonts);
//ComboBox2.Items.Assign(Screen)

COmboBox1.ItemIndex:=0;
end;

end.
