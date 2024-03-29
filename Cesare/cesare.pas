unit cesare;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, StdCtrls, ComCtrls, ExtCtrls, Menus;

type
  Tfcesare = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Button1: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    edit5: TMemo;
    ListBox1: TListBox;
    Button5: TButton;
    Button6: TButton;
    Label2: TLabel;
    Button1bis: TButton;
    TabSheet2: TTabSheet;
    Button1tris: TButton;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    Chiudi1: TMenuItem;
    Esci1: TMenuItem;
    Vaia1: TMenuItem;
    CifrarioSpartanoScitala1: TMenuItem;
    Info1: TMenuItem;
    Manuale1: TMenuItem;
    N1: TMenuItem;
    About1: TMenuItem;
    CifrariodiVigenere1: TMenuItem;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    Edit6: TEdit;
    Label3: TLabel;
    Memo3: TMemo;
    Label8: TLabel;
    Memo2: TMemo;
    ProgressBar1: TProgressBar;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    GroupBox4: TGroupBox;
    RadioButton6: TRadioButton;
    RadioButton4: TRadioButton;
    RadioButton1: TRadioButton;
    RadioButton5: TRadioButton;
    Edit2: TEdit;
    ScrollBar1: TScrollBar;
    ScrollBar2: TScrollBar;
    Button2: TButton;
    SaveDialog1: TSaveDialog;
    CifrarioAtbash1: TMenuItem;
    Button3: TButton;
    labeldati: TLabel;
    CifrarioRSA1: TMenuItem;
    abellaASCII1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Memo2Change(Sender: TObject);
    procedure Button1bisClick(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure Button1trisClick(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
    procedure About1Click(Sender: TObject);
    procedure Esci1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CifrarioSpartanoScitala1Click(Sender: TObject);
    procedure CifrariodiVigenere1Click(Sender: TObject);
    procedure Chiudi1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Manuale1Click(Sender: TObject);
    procedure RadioButton5Click(Sender: TObject);
    procedure RadioButton4Click(Sender: TObject);
    procedure RadioButton6Click(Sender: TObject);
    procedure ScrollBar1Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure ScrollBar2Change(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure CifrarioAtbash1Click(Sender: TObject);
    procedure edit5Change(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure CifrarioRSA1Click(Sender: TObject);
    procedure abellaASCII1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fcesare: Tfcesare; strmess:string;

implementation

uses vigener, scitala, Mainform, about, manuali, atbash, rsa, ascii;

{$R *.dfm}

procedure Tfcesare.FormCreate(Sender: TObject);
begin
 label5.Caption:='';
 label6.Caption:='';
 label7.caption:='';
end;

procedure Tfcesare.Button1Click(Sender: TObject);
var a,n:integer;
var messaggio: array of byte;
begin
(*Con questo comando il programma legge la chiave immessa e
assegna alle lettere dell'alfabeto le nuove lettere
slittate in base alla chiave *)
 edit5.clear;
 if radiobutton4.checked=true then
  begin
   setlength(messaggio, Length(memo2.Text));
   edit5.clear;
   for n:= 0 to Length(memo2.Text)-1 do
    begin
     progressbar1.min:=0;
     progressbar1.max:=Length(memo2.Text)-1;
     progressbar1.Position:=n;
     messaggio[n]:= ord(memo2.Text[n+1])+(strtoint(edit1.Text) mod 256) ;
     edit5.Text:=edit5.Text + chr(messaggio[N]);
    end;
   progressbar1.Position:=0;
  end
 else
  begin
   for n:= 0 to Length(memo2.Text)-1 do
    if (ord(memo2.Text[n+1])>96) and (ord(memo2.Text[n+1])<123) then
     begin
      a:= ord(memo2.Text[n+1])+ strtoint(edit1.text);
      if (a>96) and (a<123) then
       edit5.text:=edit5.text+chr(a)
      else
       edit5.text:=edit5.text+chr(a-26);
     end
    else
     if (ord(memo2.Text[n+1])>64) and (ord(memo2.Text[n+1])<91) then
      begin
       a:= ord(memo2.Text[n+1])+ strtoint(edit1.text);
       if (a>64) and (a<91) then
        edit5.text:=edit5.text+chr(a)
       else
        edit5.text:=edit5.text+chr(a-26);
      end
     else
     if (ord(memo2.Text[n+1])=32)  then
      edit5.text:=edit5.text+' '
     else
      edit5.text:=edit5.text+memo2.Text[n+1];
  end;
end;

procedure Tfcesare.Button5Click(Sender: TObject);
begin
 label5.Caption:='';
 label6.caption:='';
 label7.caption:='';
 button6.Enabled:=false;
 memo2.Clear;
 memo2.clear;
 label8.caption:='0';
 edit5.clear;
 edit1.Text:='1';
 memo2.SetFocus;
 button5.enabled:=false;
 groupbox1.Visible:=false;
 button3.Enabled:=false;;
end;

procedure Tfcesare.Button6Click(Sender: TObject);
begin
 if radiobutton1.checked=true then   //se � scelta l'opzione: CODIFICA
  Button1.click  //esegui l'operzione del button1
 else            //altrimenti
  if radiobutton5.checked=true then //se � scelta l'opzione DECODIFICA
   if radiobutton2.Checked=true then //se � scelta anche l'opzione: SAPENDO LA CHIAVE
    button1bis.click  //esegui l'operzione del button1bis
   else            //altrimenti
    Button1tris.click; //esegui l'operzione del button1tris
end;

procedure Tfcesare.Memo2Change(Sender: TObject);
begin
 button5.enabled:=true;
  if (memo2.Text='') or (edit1.text='') then
   button6.Enabled:=false
  else
   button6.Enabled:=true;
 label5.Caption:='';
 label6.Caption:='';
 label7.caption:='';
 label8.caption:=inttostr(length(memo2.Text));
 label8.refresh;
end;

procedure Tfcesare.Button1bisClick(Sender: TObject);
var a:Integer;
begin
 if radiobutton6.checked=true then
  begin
   a:=strtoint(edit1.text);
   edit1.Text:=inttostr(26-a);
   button1.click; // bottone che richiama la procedura di codificazione!
   edit1.Text:=inttostr(a);
  end
 else
  begin
   edit1.text:=inttostr(strtoint(edit1.text)*(-1));
   button1.Click;
   edit1.text:=inttostr(strtoint(edit1.text)*(-1));
  end;
end;

procedure Tfcesare.RadioButton2Click(Sender: TObject);
begin
 groupbox1.Visible:=false;
 tabsheet2.TabVisible:=false;
 edit1.visible:=true;
 label1.Visible:=true;
 edit5.visible:=true;
 scrollbar1.Visible:=true;
 label5.visible:=false;
  button3.Visible:=true;
end;

procedure Tfcesare.RadioButton1Click(Sender: TObject);
begin
 groupbox1.Visible:=false;
 tabsheet2.TabVisible:=false;
 radiobutton2.enabled:=false;
 radiobutton2.Checked:=true;
 radiobutton3.enabled:=false;
 button6.Caption:='Codifica';
end;

procedure Tfcesare.Button1trisClick(Sender: TObject);
var a,c:integer;b:textfile;
begin
 groupbox1.Visible:=true;
 label5.Caption:='Attendere prego!!!';
 label5.Refresh;
 if radiobutton6.checked=true then
  c:=26 else
  c:=256;
  for a:=0 to c do
   begin
    edit1.text:=inttostr(a);
    button1bis.click;
    assignfile(b,'dati\'+inttostr(a)+'.txt');
    rewrite(b);
    writeln(b,edit5.text);
    closefile(b);
    label5.Caption:='Ok, il codice � stato decodificato!!!';
    label6.Caption:='Vai nell''altra scheda per visualizzarne';
    label7.caption:='le decodificazioni trovate';
   end;
end;

procedure Tfcesare.RadioButton3Click(Sender: TObject);
var b:integer;a:textfile;
begin
 if not (labeldati.caption='filecreati') then
  begin
   createdir('dati');
   for b:=0 to 256 do
    begin
     assignfile(a,'dati\'+inttostr(b)+'.txt');
     rewrite(a);
     writeln(a,edit5.text);
     closefile(a);
     labeldati.caption:='filecreati';
    end;
  end;
 groupbox1.Visible:=false;
 edit5.visible:=false;
 label5.visible:=true;
 edit1.visible:=false;
 label1.Visible:=false;
 scrollbar1.Visible:=false;
 tabsheet2.TabVisible:=true;
 button3.Visible:=false;
end;

procedure Tfcesare.About1Click(Sender: TObject);
begin
 fabout.show;
end;

procedure Tfcesare.Esci1Click(Sender: TObject);
var a:integer;
begin
 for a:=0 to 256 do
  deletefile('dati\'+inttostr(a)+'.txt') ;
  removedir('dati');
  formprinc.Close;
end;

procedure Tfcesare.FormShow(Sender: TObject);
//var b:integer;a:textfile;
begin
(* createdir('dati');
 for b:=0 to 256 do
  begin
   assignfile(a,'dati\'+inttostr(b)+'.txt');
   rewrite(a);
   writeln(a,edit5.text);
   closefile(a);
  end;  *)
end;

procedure Tfcesare.FormClose(Sender: TObject; var Action: TCloseAction);
var a:integer;
begin
 for a:=0 to 256 do
  deletefile('dati\'+inttostr(a)+'.txt') ;
 removedir('dati');
 if (frsa.visible=false) and(fatbash.visible=false) and (fscitala.visible=false) and (fvigenere.visible=false) then
  formprinc.Visible:=true;
  labeldati.Caption:='filecancellati';
end;

procedure Tfcesare.CifrarioSpartanoScitala1Click(Sender: TObject);
begin
 fscitala.Show;
 close;
end;

procedure Tfcesare.CifrariodiVigenere1Click(Sender: TObject);
begin
 fvigenere.Show;
 close;
end;

procedure Tfcesare.Chiudi1Click(Sender: TObject);
begin
 close;
 if (fatbash.visible=false) and (fscitala.visible=false) and (fvigenere.visible=false) then
  formprinc.visible:=true;
end;

procedure Tfcesare.FormActivate(Sender: TObject);
begin
 formprinc.Visible:=false;
 fmanuali.TabSheet1.TabVisible:=false;
 fmanuali.TabSheet2.TabVisible:=false;
 fmanuali.TabSheet3.TabVisible:=false;
 fmanuali.TabSheet4.TabVisible:=false;
 fmanuali.TabSheet5.TabVisible:=true;
 fmanuali.TabSheet6.TabVisible:=true;
 fmanuali.TabSheet9.TabVisible:=false;
 fmanuali.TabSheet10.TabVisible:=false;
 fmanuali.TabSheet11.TabVisible:=false;
 fmanuali.TabSheet12.TabVisible:=false;
 fmanuali.TabSheet13.TabVisible:=false;
 fmanuali.TabSheet14.TabVisible:=false;
end;

procedure Tfcesare.Manuale1Click(Sender: TObject);
begin
 fmanuali.Show;
end;

procedure Tfcesare.RadioButton5Click(Sender: TObject);
begin
 radiobutton2.enabled:=true;
 radiobutton3.enabled:=true;
 button6.Caption:='Decodifica';
end;

procedure Tfcesare.RadioButton4Click(Sender: TObject);
begin
 label5.visible:=false;
 scrollbar1.Max:=256;
 scrollbar2.Max:=256;
end;

procedure Tfcesare.RadioButton6Click(Sender: TObject);
begin
 label5.visible:=false;
 scrollbar1.Max:=26;
 scrollbar2.Max:=26;
end;

procedure Tfcesare.ScrollBar1Change(Sender: TObject);
begin
 edit1.text:=inttostr(scrollbar1.Position);
end;

procedure Tfcesare.Edit2Change(Sender: TObject);
var a:textfile;b,memo:string;
begin
 button2.enabled:=true;
 b:=edit2.text;
 assignfile(a,'dati\'+b+'.txt');
 reset(a);
 while not eof(a) do
  begin
   readln(a,memo);
   memo3.Text:=memo;
  end;
 closefile(a);
 edit6.Text:=inttostr(length(memo3.Text));
end;

procedure Tfcesare.ScrollBar2Change(Sender: TObject);
begin
 edit2.text:=inttostr(scrollbar2.Position);
end;

procedure Tfcesare.Button2Click(Sender: TObject);
begin
 savedialog1.FileName:='Decodificazione in chiave '+edit2.Text;
 if savedialog1.execute=true then
  begin
   savedialog1.FileName:=savedialog1.FileName+'.txt';
   memo3.lines.savetofile(savedialog1.FileName);
  end;
end;
procedure Tfcesare.CifrarioAtbash1Click(Sender: TObject);
begin
 close;
 fatbash.show;
end;

procedure Tfcesare.edit5Change(Sender: TObject);
begin
 button3.Enabled:=true;
end;

procedure Tfcesare.Button3Click(Sender: TObject);
begin
 if radiobutton1.checked=true then
  savedialog1.FileName:='Codificazione in chiave '+edit1.Text
 else
  if radiobutton2.checked=true then
   savedialog1.FileName:='Decodificazione in chiave '+edit1.Text;
   if savedialog1.execute=true then
    begin
     savedialog1.FileName:=savedialog1.FileName+'.txt';
     edit5.lines.savetofile(savedialog1.FileName);
    end;
end;

procedure Tfcesare.CifrarioRSA1Click(Sender: TObject);
begin
 close;
 frsa.show;
end;

procedure Tfcesare.abellaASCII1Click(Sender: TObject);
begin
 if not(fascii.width<841) then
  fascii.show;
 fascii.stringgrid1.visible:=true;
end;

end.

