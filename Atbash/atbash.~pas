unit atbash;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Menus;

type
  Tfatbash = class(TForm)
    Memo1: TMemo;
    Memo2: TMemo;
    Button1: TButton;
    Button2: TButton;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    Chiudi1: TMenuItem;
    Esci1: TMenuItem;
    Vaia1: TMenuItem;
    CifrarioSpartanoScitala1: TMenuItem;
    CifrariodiVigenere1: TMenuItem;
    Info1: TMenuItem;
    Manuale1: TMenuItem;
    N1: TMenuItem;
    About1: TMenuItem;
    CifrariodiCesare1: TMenuItem;
    CifrarioRSA1: TMenuItem;
    abellaASCII1: TMenuItem;
    procedure Button1Click(Sender: TObject);
    procedure Esci1Click(Sender: TObject);
    procedure Chiudi1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CifrarioSpartanoScitala1Click(Sender: TObject);
    procedure CifrariodiVigenere1Click(Sender: TObject);
    procedure CifrariodiCesare1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Manuale1Click(Sender: TObject);
    procedure CifrarioRSA1Click(Sender: TObject);
    procedure abellaASCII1Click(Sender: TObject);
    procedure About1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fatbash: Tfatbash;

implementation

uses Mainform, scitala, vigener, cesare, manuali, rsa, ascii, about;

{$R *.dfm}

procedure Tfatbash.Button1Click(Sender: TObject);
var messaggio: array of byte;n:integer;
begin
 memo2.clear;
 setlength(messaggio, Length(memo1.Text));
 for n:= 0 to Length(memo1.Text)-1 do
  begin
   if radiobutton1.checked=true then
    begin
     if (ord(memo1.text[n+1])=32) then
       memo2.Text:= memo2.Text+' '
     else
      begin
       messaggio[n]:= ord(memo1.Text[n+1]) ;
       memo2.Text:=memo2.Text + chr(256-messaggio[N]);
      end;
    end
   else
    if radiobutton2.checked=true then
     begin
      //memo1.Text:=lowercase(memo1.Text);
       if (ord(memo1.text[n+1])=32) then
        memo2.Text:= memo2.Text+' '
       else
        if (ord(memo1.text[n+1])<123) and (ord(memo1.text[n+1])>96) then
         begin
          messaggio[n]:=(ord(memo1.text[n+1])-97);
          memo2.Text:=memo2.Text + chr((26-messaggio[N])+96);
         end
        else
         if (ord(memo1.text[n+1])<91) and (ord(memo1.text[n+1])>64) then
          begin
           messaggio[n]:=(ord(memo1.text[n+1])-65);
           memo2.Text:=memo2.Text + chr((26-messaggio[N])+64);
          end
         else
          Showmessage('Il carattere: '''+ memo1.text[n+1] +''' non è riconosciuto con queste opzioni, modificarle e ritentare');
     end;
  end;
end;
procedure Tfatbash.Esci1Click(Sender: TObject);
begin
 halt;
end;

procedure Tfatbash.Chiudi1Click(Sender: TObject);
begin
 close;
 if (fatbash.visible=false) and (fcesare.visible=false) and (fvigenere.visible=false) and (fscitala.visible=false) then
  formprinc.visible:=true;
end;

procedure Tfatbash.Button2Click(Sender: TObject);
begin
 memo1.clear;
 memo2.clear;
end;

procedure Tfatbash.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 if (frsa.visible=false) and (fcesare.visible=false) and (fscitala.visible=false) and (fvigenere.visible=false) then
  formprinc.Visible:=true;
end;

procedure Tfatbash.CifrarioSpartanoScitala1Click(Sender: TObject);
begin
 fscitala.show;
 close;
end;

procedure Tfatbash.CifrariodiVigenere1Click(Sender: TObject);
begin
 fvigenere.show;
 close;
end;

procedure Tfatbash.CifrariodiCesare1Click(Sender: TObject);
begin
 fcesare.show;
 close;
end;

procedure Tfatbash.FormActivate(Sender: TObject);
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
 fmanuali.TabSheet11.TabVisible:=true;
 fmanuali.TabSheet12.TabVisible:=true;
 fmanuali.TabSheet13.TabVisible:=false;
 fmanuali.TabSheet14.TabVisible:=false;
end;

procedure Tfatbash.Manuale1Click(Sender: TObject);
begin
 fmanuali.Show;
end;

procedure Tfatbash.CifrarioRSA1Click(Sender: TObject);
begin
 frsa.show;
 close;
end;

procedure Tfatbash.abellaASCII1Click(Sender: TObject);
begin
 if not(fascii.width<841) then
  fascii.show;
 fascii.stringgrid1.visible:=true;
end;

procedure Tfatbash.About1Click(Sender: TObject);
begin
 fabout.show;
end;

end.
