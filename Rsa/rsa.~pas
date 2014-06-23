      unit rsa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Grids, Menus,math, ComCtrls;

type
  Tfrsa = class(TForm)
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    Chiudi1: TMenuItem;
    Esci1: TMenuItem;
    Vaia1: TMenuItem;
    CifrariodiCesare1: TMenuItem;
    CifrarioSpartanoScitala1: TMenuItem;
    CifrarioAtbash1: TMenuItem;
    Info1: TMenuItem;
    Manuale1: TMenuItem;
    N1: TMenuItem;
    About1: TMenuItem;
    CifrariodiVigenere1: TMenuItem;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    LabeledEdit1: TLabeledEdit;
    LabeledEdit2: TLabeledEdit;
    LabeledEdit4: TLabeledEdit;
    LabeledEdit3: TLabeledEdit;
    psb: TScrollBar;
    qsb: TScrollBar;
    GroupBox3: TGroupBox;
    Button2: TButton;
    listbox1: TListBox;
    GroupBox4: TGroupBox;
    Button3: TButton;
    LabeledEdit5: TLabeledEdit;
    LabeledEdit6: TLabeledEdit;
    Memo1: TMemo;
    Memo2: TMemo;
    Button1: TButton;
    GroupBox5: TGroupBox;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    GroupBox6: TGroupBox;
    LabeledEdit7: TLabeledEdit;
    LabeledEdit8: TLabeledEdit;
    Edit1: TEdit;
    RadioButton6: TRadioButton;
    RadioButton5: TRadioButton;
    Button4: TButton;
    GroupBox7: TGroupBox;
    Button7: TButton;
    Edit2: TEdit;
    ProgressBar2: TProgressBar;
    abellaASCII1: TMenuItem;
    procedure Button3Click(Sender: TObject);
    procedure psbChange(Sender: TObject);
    procedure qsbChange(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure listbox1Click(Sender: TObject);
    procedure LabeledEdit3Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Chiudi1Click(Sender: TObject);
    procedure Esci1Click(Sender: TObject);
    procedure Manuale1Click(Sender: TObject);
    procedure CifrariodiVigenere1Click(Sender: TObject);
    procedure CifrarioAtbash1Click(Sender: TObject);
    procedure CifrarioSpartanoScitala1Click(Sender: TObject);
    procedure CifrariodiCesare1Click(Sender: TObject);
    procedure About1Click(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
    procedure RadioButton4Click(Sender: TObject);
    procedure RadioButton5Click(Sender: TObject);
    procedure RadioButton6Click(Sender: TObject);
    procedure LabeledEdit5Change(Sender: TObject);
    procedure LabeledEdit8Change(Sender: TObject);
    procedure LabeledEdit6Change(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure abellaASCII1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frsa: Tfrsa;

implementation

uses Mainform, manuali, atbash, cesare, vigener, scitala, about, ascii;

var p,q,n,n2n,dimn2,e:integer;
    f: file of integer;
    n2: array[1..10000] of integer;
    chiavi: array[1..8000] of integer;
{$R *.dfm}

function primi(a:integer;b:integer):boolean;
var pr,i:integer;
begin
 primi:=true;
 if a>b then
  begin   // fa in
   pr:=a;  // modo che
   a:=b;    // la variabile b
   b:=pr;    // sia maggiore di a
  end;
 for i:=2 to a do                         // stabilisce
  begin                                    // se i
   if (a mod i=0) and (b mod i=0 ) then     // numeri a,b
    primi:=false;                            // sono primi
  end;                                        // tra loro
end;

procedure Tfrsa.Button3Click(Sender: TObject);
var k,t:integer;
begin
 e:=chiavi[listbox1.itemindex+1];// in base alla chiave E,
 labelededit5.text:=IntToStr(e);  // (selezionata dall'utente),
  k:=0;                            // viene calcolata e
  repeat                            // trova la chiave
   k:=K+1;                           // D in funzione di E
   t:=e*n2[k] mod n2n;                // e poi le visualizza
  until t=1;                           // entrambe nelle
 labelededit6.text:=IntToStr(n2[k]);    // apposite caselle
 end;

procedure Tfrsa.psbChange(Sender: TObject);
begin
 seek(F,psb.position-1);
 read(F,p);
 labelededit1.text:=IntToStr(p);

 n:=p*q;                         // calcola n
 labelededit3.text:=IntToStr(n);  // mostra n
 n2n:=(p-1)*(q-1);                 // calcola n2
 labelededit4.text:=IntToStr(n2n);  // mostra n2
end;

procedure Tfrsa.qsbChange(Sender: TObject);
begin
 seek(F,qsb.position-1);
 read(F,q);
 labelededit2.text:=IntToStr(q);

 n:=p*q;                         // calcola n
 labelededit3.text:=IntToStr(n);  // mostra n
 n2n:=(p-1)*(q-1);                 // calcola n2
 labelededit4.text:=IntToStr(n2n);  // mostra n2
end;

procedure Tfrsa.Button2Click(Sender: TObject);
var  k,h,j:integer;
begin
 n2[1]:=1;            // stabilisce
 k:=1;                 // e seleziona
 for j:=2 to (n-1) do   // tutti i
  begin                  // numeri
   if primi(j,strtoint(labelededit4.text))=true then// interi
    begin                  // inferiori
     k:=k+1;                // a N;
     n2[k]:=j;               // che
    end;                      // siano
  end;                         // anche
 dimn2:=k;                      // primi
 k:=0;                           // con N2;
 h:=0;                            // e che
 repeat                            // siano
  K:=K+1;                           // dispari.
  if primi(n2[K],n2n)=true then      // Infine
   begin                              // li
    H:=H+1;                            // mostra
    Chiavi[H]:=n2[K];                   // in
    listbox1.Items[H-1]:=intToStr(n2[K]);// fila
   end;                                   // nella
 until K=Dimn2;                            // listbox1
end;

procedure Tfrsa.listbox1Click(Sender: TObject);
begin
 if listbox1.itemindex>-1 then
  button3.enabled:=true
 else
  button3.enabled:=false;
end;

procedure Tfrsa.LabeledEdit3Change(Sender: TObject);
begin
 listbox1.Clear;
 button3.Enabled:=false;
 labelededit5.clear;
 labelededit6.clear;
 labelededit7.Text:=labelededit3.text;
end;
procedure Tfrsa.Button1Click(Sender: TObject);
var messaggio: array of byte;intn,m,m2:integer;
begin
 memo2.Clear;
 setlength(messaggio, Length(memo1.Text));
 if radiobutton5.checked=true then
  begin
   for intN := 0 to Length(memo1.Text)-1 do
    begin
     m:=ord(memo1.Text[intN+1])-96;
     m2:=trunc(power(m,strtoint(labelededit8.Text)))mod strtoint(labelededit7.Text);
     //messaggio[intN]:=m;
     if (m2>0) and (m2<27) then
      memo2.Text:=memo2.Text+chr(m2+96)
     else
      memo2.Text:=memo2.Text+chr(m2+70);
    end;
  end
 else
  if radiobutton6.checked=true then
   begin
    for intN := 0 to Length(memo1.Text)-1 do
     begin
      m2:=ord(memo1.Text[intN+1])-96;
      m:=trunc(power(m2,strtoint(edit1.Text)))mod strtoint(labelededit7.Text);
      //messaggio[intN]:=m;
      if (m>0) and (m<27) then
       memo2.Text:=memo2.Text+chr(m+96)
      else
       memo2.Text:=memo2.Text+chr(m+70);
     end;
   end;
end;

procedure Tfrsa.FormActivate(Sender: TObject);
begin
 formprinc.Visible:=false;
 fmanuali.TabSheet1.TabVisible:=false;
 fmanuali.TabSheet2.TabVisible:=false;
 fmanuali.TabSheet3.TabVisible:=false;
 fmanuali.TabSheet4.TabVisible:=false;
 fmanuali.TabSheet5.TabVisible:=false;
 fmanuali.TabSheet6.TabVisible:=false;
 fmanuali.TabSheet9.TabVisible:=false;
 fmanuali.TabSheet10.TabVisible:=false;
 fmanuali.TabSheet11.TabVisible:=false;
 fmanuali.TabSheet12.TabVisible:=false;
 fmanuali.TabSheet13.TabVisible:=true;
 fmanuali.TabSheet14.TabVisible:=true;
if not fileexists('Elenco.dat')=true then
begin
showmessage('Non è stata rilevata la presenza del file ''Elenco.dat'', e per questo motivo è necessario ricrearlo');
groupbox1.visible:=false;
groupbox7.visible:=true;
end else
begin
 AssignFile(F,'Elenco.dat');// leggi dal file elenco.dat
 Reset(F);                   //  precedentemente creato
 end;

end;

procedure Tfrsa.Chiudi1Click(Sender: TObject);
begin
 close;
 if (fatbash.visible=false) and (fcesare.visible=false) and (fvigenere.visible=false) and (fscitala.visible=false) then
  formprinc.visible:=true;
end;

procedure Tfrsa.Esci1Click(Sender: TObject);
begin
 halt    //esci
end;

procedure Tfrsa.Manuale1Click(Sender: TObject);
begin
 fmanuali.Show;
end;

procedure Tfrsa.CifrariodiVigenere1Click(Sender: TObject);
begin
 fvigenere.Show;
 close;
end;

procedure Tfrsa.CifrarioAtbash1Click(Sender: TObject);
begin
 close;
 fatbash.show;
end;

procedure Tfrsa.CifrarioSpartanoScitala1Click(Sender: TObject);
begin
 fscitala.Show;
 close;
end;

procedure Tfrsa.CifrariodiCesare1Click(Sender: TObject);
begin
 fcesare.Show;
 close;
end;

procedure Tfrsa.About1Click(Sender: TObject);
begin
 fabout.show;
end;

procedure Tfrsa.RadioButton3Click(Sender: TObject);
begin
 groupbox6.visible:=true;
 groupbox2.visible:=false;
 groupbox3.visible:=false;
 groupbox4.visible:=false;
 labelededit7.clear;
 labelededit8.Clear;
end;

procedure Tfrsa.RadioButton4Click(Sender: TObject);
begin
 groupbox6.visible:=false;
 groupbox2.visible:=true;
 groupbox3.visible:=true;
 groupbox4.visible:=true;
 edit1.text:=labelededit6.Text;
end;

procedure Tfrsa.RadioButton5Click(Sender: TObject);
begin
 button1.Caption:='Codifica';
 labelededit8.EditLabel.Caption:='E:';
end;

procedure Tfrsa.RadioButton6Click(Sender: TObject);
begin
 button1.Caption:='Decodifica';
 labelededit8.EditLabel.Caption:='D:';
 edit1.Text:=labelededit6.Text;
end;

procedure Tfrsa.LabeledEdit5Change(Sender: TObject);
begin
 labelededit8.Text:=labelededit5.text;
end;

procedure Tfrsa.LabeledEdit8Change(Sender: TObject);
begin
 if radiobutton6.checked=true then
  edit1.Text:=labelededit8.Text;
end;

procedure Tfrsa.LabeledEdit6Change(Sender: TObject);
begin
edit1.Text:=labelededit6.Text;
end;

procedure Tfrsa.Button4Click(Sender: TObject);
begin
 memo1.Clear;
 memo2.clear;
end;

procedure Tfrsa.Button7Click(Sender: TObject);
var Cont,Resto,P,Maxnumprim:integer;
    numprim:array of integer;
begin
 assignfile(f, 'Elenco.dat');
 //write(f);
 progressbar2.max:=strtoint(edit2.Text);
 progressbar2.min:=1;
 setlength(numprim,strtoint(edit2.text));
 Rewrite(F);
 numprim[1]:=2;
 numprim[2]:=3;
 write(F,numprim[1]);
 write(F,numprim[2]);
 P:=5;
 Maxnumprim:=2;
 repeat
  Cont:=1;
  repeat
   Resto:=P mod numprim[Cont];
   Cont:=Cont+1;
  until (resto=0) or (numprim[Cont]>=(P div 2));
  if  Resto<>0  then
   begin
    progressbar2.position:=maxnumprim;
    Maxnumprim:=Maxnumprim+1;
    numprim[Maxnumprim]:=P;
    write(F,numprim[Maxnumprim]);
   end;
   P:=P+2;
 until  Maxnumprim=strtoint(edit2.text);;
 showmessage('Il file ''Elenco.dat'' è stato ricreato e contiene i primi '+edit2.text+' numeri primi');
 groupbox1.visible:=true;
 groupbox7.visible:=false;
end;

procedure Tfrsa.Edit2Change(Sender: TObject);
begin
 button7.caption:='Crea file con i primi '+edit2.Text+ ' numeri primi';
end;

procedure Tfrsa.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
 if not(ord(key) in[8,48..57]) then
  key:=chr(0);
end;

procedure Tfrsa.FormShow(Sender: TObject);
var msg:string;
begin
 msg:='Faccio presente gia da ora che il seguente cifrario'+#13#10;
 msg:=msg+'non offre una buona capacità d''uso dello stesso,'+#13#10;
 msg:=msg+'poichè necessita dell''utilizzo di calcoli troppo'+#13#10;
 msg:=msg+'elevati che un normale calcolatore elettronico non'+#13#10;
 msg:=msg+'è in grado di sostenere.'+#13#10;
 msg:=msg+#13#10;
 msg:=msg+'Ne espongo comunque un demo, che ne spiega il'+#13#10;
 msg:=msg+'funzionamento generale.';
 showmessage(msg);

 if not fileexists('Elenco.dat')=true then
  begin
   showmessage('Non è stata rilevata la presenza del file ''Elenco.dat'', e per questo motivo è necessario ricrearlo');
   groupbox1.visible:=false;
   groupbox7.visible:=true;
  end
 else
  begin
   AssignFile(F,'Elenco.dat');// leggi dal file elenco.dat
   Reset(F);                   //  precedentemente creato
  end;
end;

procedure Tfrsa.abellaASCII1Click(Sender: TObject);
begin
 if not(fascii.width<841) then
  fascii.show;
 fascii.stringgrid1.visible:=true;
end;

end.
