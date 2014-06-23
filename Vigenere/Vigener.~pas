unit Vigener;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Menus;

type
  Tfvigenere = class(TForm)
    Memo1: TMemo;
    Memo2: TMemo;
    Edit1: TEdit;
    Button3: TButton;
    Memo3: TMemo;
    Button4: TButton;
    GroupBox2: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    GroupBox1: TGroupBox;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    Chiudi1: TMenuItem;
    Esci1: TMenuItem;
    Vaia1: TMenuItem;
    CifrariodiCesare1: TMenuItem;
    CifrarioSpartanoScitala1: TMenuItem;
    Info1: TMenuItem;
    Manuale1: TMenuItem;
    N1: TMenuItem;
    About1: TMenuItem;
    Label1: TLabel;
    CifrarioAtbash1: TMenuItem;
    CifrarioRSA1: TMenuItem;
    PopupMenu1: TPopupMenu;
    abellaASCII1: TMenuItem;
    procedure Button3Click(Sender: TObject);
    procedure Chiudi1Click(Sender: TObject);
    procedure Esci1Click(Sender: TObject);
    procedure CifrariodiCesare1Click(Sender: TObject);
    procedure CifrarioSpartanoScitala1Click(Sender: TObject);
    procedure Memo1Change(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure CifrarioAtbash1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure Manuale1Click(Sender: TObject);
    procedure CifrarioRSA1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure abellaASCII1Click(Sender: TObject);
    procedure About1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fvigenere: Tfvigenere;
implementation

uses atbash, cesare, scitala, rsa, Mainform, manuali, ascii, about;

{$R *.dfm}

procedure Tfvigenere.Button3Click(Sender: TObject);
begin
 edit1.Clear;                  //cancella il contenuto dell'edit1
 memo1.Clear;                  //cancella il contenuto del memo1
 memo2.clear;                  //cancella il contenuto del memo2
 memo3.clear;                  //cancella il contenuto del memo3
 label1.Caption:='0 caratteri';//azzera la label1
end;

procedure Tfvigenere.Chiudi1Click(Sender: TObject);
begin
 close;  //chiudi quasta form
 if (fatbash.visible=false) and (fcesare.visible=false) and (fvigenere.visible=false) and (fscitala.visible=false) then
  formprinc.visible:=true; //mostra il form principale solo se gli altri cifrari non sono visualizzati
end;

procedure Tfvigenere.Esci1Click(Sender: TObject);
begin
 halt  //esci dall'applicazione
end;

procedure Tfvigenere.CifrariodiCesare1Click(Sender: TObject);
begin
 fcesare.Show; //mostra il cifrario di cesare
 close; //chiudi questa form
end;

procedure Tfvigenere.CifrarioSpartanoScitala1Click(Sender: TObject);
begin
 fscitala.show; //mostra il cifrario di vigenere
 close; //chiudi questa form
end;

procedure Tfvigenere.Memo1Change(Sender: TObject);
begin
 if (edit1.text='') or (memo1.text='') then //se nell'edit del verme O in quello del messaggio non è stato inserito niente allora
  button3.Enabled:=false  // disabilita il bottone 'cancella'
 else                     //altrimenti se in uno dei due è stato immesso qualcosa
   button3.Enabled:=true; // allora abiliatalo

  if (edit1.text='') and (memo1.text='') then  //se nell'edit del verme E in quello del messaggio non è stato inserito niente allora
  button4.Enabled:=false // disabilita anche il bottone 'codifica/decodifica'
 else                   // altrimenti se in tutte e due sono presenti dei caratteri
   button4.Enabled:=true;   //allora abilitalo

 label1.caption:=inttostr(length(memo1.Text))+' caratteri'; //scrive nella label1 la lunghezza del messaggio scritto nel memo1
 label1.Refresh; //aggiorna ad ogni inserimento la label1 (è utile solo se nella memo1 viene incollato un messagigo di grandi dimensioni)
end;

procedure Tfvigenere.Edit1KeyPress(Sender: TObject; var Key: Char);
var a:integer;
begin
 a:=ord(key);
 if (96<a)and(a<123) or(64<a)and(a<91) or (key=Chr(vk_Back))then
  exit       // accetta solo
 else        // i caratteri dell'alfabeto
  key:=chr(0);
end;

procedure Tfvigenere.CifrarioAtbash1Click(Sender: TObject);
begin
close;  //chiudi quasta form
fatbash.show; //mostra il cifrario atbash
end;

procedure Tfvigenere.RadioButton2Click(Sender: TObject);
begin
 button4.caption:='Decodifica'; //Imposta la nuova scritta al button4
end;

procedure Tfvigenere.RadioButton1Click(Sender: TObject);
begin
  button4.caption:='Codifica';//Imposta la nuova scritta al button4
end;

procedure Tfvigenere.Edit1Change(Sender: TObject);
begin
 if (edit1.text<>'') or (memo1.text<>'') then  //se nell'edit1 O nel memo1 non sono presenti caratteri allora
  button3.Enabled:=true    // disabilita il button3
 else                 //altrimenti, se almeno in una è stato inserito un carattere allora
   button3.Enabled:=false; //abilita il button3 (cancella)

 if (edit1.text<>'') and (memo1.text<>'') then //se nell'edit1 E nel memo1 non sono presenti caratteri allora
  button4.Enabled:=true  // disabilita il button4
 else                    //altrimenti,se sono entrabe piene allora
   button4.Enabled:=false; //abilita il button4 (codifica/decodifica)
end;

procedure Tfvigenere.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 if (frsa.visible=false) and(fatbash.visible=false) and (fcesare.visible=false) and (fscitala.visible=false)then
  formprinc.Visible:=true; //mostra il form principale solo se gli altri cifrari non sono visualizzati
end;

procedure Tfvigenere.FormActivate(Sender: TObject);
begin
 formprinc.Visible:=false;             // nascondi il form principale
 fmanuali.TabSheet1.TabVisible:=false; // nascondi le schede dei manuali degli altri cifrari
 fmanuali.TabSheet2.TabVisible:=false; // nascondi le schede dei manuali degli altri cifrari
 fmanuali.TabSheet3.TabVisible:=false; // nascondi le schede dei manuali degli altri cifrari
 fmanuali.TabSheet4.TabVisible:=false; // nascondi le schede dei manuali degli altri cifrari
 fmanuali.TabSheet5.TabVisible:=false; // nascondi le schede dei manuali degli altri cifrari
 fmanuali.TabSheet6.TabVisible:=false; // nascondi le schede dei manuali degli altri cifrari
 fmanuali.TabSheet9.TabVisible:=true;  // mostra le schede dei manuali di questo cifrario
 fmanuali.TabSheet10.TabVisible:=true; // mostra le schede dei manuali di questo cifrario
 fmanuali.TabSheet11.TabVisible:=false;// nascondi le schede dei manuali degli altri cifrari
 fmanuali.TabSheet12.TabVisible:=false;// nascondi le schede dei manuali degli altri cifrari
 fmanuali.TabSheet13.TabVisible:=false;// nascondi le schede dei manuali degli altri cifrari
 fmanuali.TabSheet14.TabVisible:=false;// nascondi le schede dei manuali degli altri cifrari

end;

procedure Tfvigenere.Manuale1Click(Sender: TObject);
begin
 fmanuali.Show; //mostra il form dei manuali
end;

procedure Tfvigenere.CifrarioRSA1Click(Sender: TObject);
begin
 frsa.show;//mostra il form del cifrario RSA
 close; //chiudi questa form
end;

procedure Tfvigenere.Button4Click(Sender: TObject);
var messaggio: array of byte;
    a,b,c,d,n,n2: integer;
begin
 memo1.Text:=lowercase(memo1.Text);  // porta tutto
 memo2.Text:=lowercase(memo2.Text);   // in minuscolo
 memo3.clear;                        //cancella il contenuto del memo3
 a:=length(memo1.Text);                      // moltiplica  la lunghezza
 b:=length(edit1.Text);                       // del verme un numero di
 c:= (a div b) +1;                             // volte almeno maggiore
 for d:=1 to c do                               //  o uguale alla  lunghezza
  memo3.text:=memo3.Text + lowercase(edit1.text);//  del messaggio

 setlength(messaggio, Length(memo1.Text)); // imposta la lunghezza dell'array
 memo2.clear;                              // cancella il contenuto del memo2
 n2:=0;                                    // inizializza la variabile n2
 if radiobutton1.checked=true then         // se è impostata l'opzione di CODIFICA allora
  begin
   for n:= 0 to Length(memo1.Text)-1 do     // ripeti N volte la somma tra i caratteri del testo
    begin                                   //  in chiaro e quelli del verme secondo la tabella
     messaggio[n]:=ord(memo1.Text[n+1])+(ord(memo3.text[n+1+n2])); // del codice ASCII
     if ord(memo1.Text[n+1])=32 then    //se il carattere di turno è uno spazio (ord(32))
      begin                             //allora togli 1 alla variabile n2
       n2:=n2-1;                        //(perchè lo spazio non deve essere considerato come carattere da tradurre)
       memo2.Text:=memo2.text+' ';      // e aggiungi nella memo2 il carattere spazio
      end
     else                              //altrimenti
      if radiobutton4.checked=true then // se si è scelta l'opzione LETTERE DELL'ALFABETO allora
       begin
        if ((messaggio[n]-97)>96) and ((messaggio[n]-97)<123) then //se la somma ottenuta non è compresa tra 96 e 123 (cioè tra 'a' e 'z')
         memo2.text:=memo2.text+chr(messaggio[n]-97)  //allora  aggiungi nella memo2 il carattere tale e quale
        else                                          // altrimenti
         memo2.text:=memo2.text+chr(messaggio[n]-123) // aggiungi nella memo2 il caratere sottraendogli 26 (-97-26=-123)
       end
      else                                //altrimenti
       if radiobutton3.checked=true then  // se è stata scelta l'opzione CODICE ASCII allora
        begin                                  //...
         if (messaggio[n]<256) then                //...
           memo2.text:=memo2.text+chr(messaggio[n])
         else
          memo2.text:=memo2.text+chr(messaggio[n]-256)
        end
    end;
  end
 else
  begin
   if radiobutton2.checked=true then
    for n:= 0 to Length(memo1.Text)-1 do
     begin
      messaggio[n]:=ord(memo1.Text[n+1])-(ord(memo3.text[n+1+n2]));
      if ord(memo1.Text[n+1])=32 then
       begin
        n2:=n2-1;
        memo2.Text:=memo2.text+' ';
       end
      else
       if radiobutton4.checked=true then
        begin
         if ((messaggio[n]+97)>96) and ((messaggio[n]+97)<123) then
          memo2.text:=memo2.text+chr(messaggio[n]+97)
         else
          memo2.text:=memo2.text+chr(messaggio[n]+123)
        end
       else
        if radiobutton3.checked=true then
         begin
          if messaggio[n]<256 then
           memo2.text:=memo2.text+chr(messaggio[n])
          else
           memo2.text:=memo2.text+chr(messaggio[n]+256)
         end;
     end;
  end;
end;


procedure Tfvigenere.abellaASCII1Click(Sender: TObject);
begin
 if not(fascii.width<841) then
  fascii.show;
 fascii.stringgrid1.visible:=true;
end;

procedure Tfvigenere.About1Click(Sender: TObject);
begin
 fabout.show;
end;

end.

