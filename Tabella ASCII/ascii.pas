unit ascii;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids;

type
  TFascii = class(TForm)
    StringGrid1: TStringGrid;
    procedure FormCreate(Sender: TObject);
    procedure StringGrid1Click(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fascii: TFascii;

implementation

{$R *.dfm}


procedure TFascii.FormCreate(Sender: TObject);
var a,a3,a25,b:integer;
begin
a3:=0;
a25:=0;
for b:=0 to 10 do
begin
for a:=0 to 24 do
if not (a+a25>255) then
begin
stringgrid1.cells[0+a3,a]:=inttostr(a+a25);
stringgrid1.cells[1+a3,a]:=chr(a+a25);
end;
a3:=a3+3;
a25:=a25+25;
end;
end;

procedure TFascii.StringGrid1Click(Sender: TObject);
begin
 //if messagedlg('Vuoi chiudere questa finestra?',mtconfirmation,[mbyes,mbno],0)=mryes then
 //close;
end;

procedure TFascii.FormResize(Sender: TObject);
begin
if fascii.width<841 then
fascii.Close;
end;

end.
