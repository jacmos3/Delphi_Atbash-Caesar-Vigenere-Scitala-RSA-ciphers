unit Mainform;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Menus;

type
  Tformprinc = class(TForm)
    Button1: TButton;
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    Esci1: TMenuItem;
    info1: TMenuItem;
    N1: TMenuItem;
    About1: TMenuItem;
    Button2: TButton;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox5: TCheckBox;
    CheckBox4: TCheckBox;
    procedure Button1Click(Sender: TObject);
    procedure About1Click(Sender: TObject);
    procedure Esci1Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure info1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formprinc: Tformprinc;

implementation

uses cesare, scitala, about, manuali,vigener, atbash, rsa;

{$R *.dfm}

procedure Tformprinc.Button1Click(Sender: TObject);
begin
 if checkbox1.checked=true then
  fcesare.show;
 if checkbox2.checked=true then
  fvigenere.show;
 if checkbox3.checked=true then
  fscitala.show;
 if checkbox4.checked=true then
  fatbash.show;
 if checkbox5.Checked=true then
  frsa.show;
 formprinc.visible:=false;
end;

procedure Tformprinc.About1Click(Sender: TObject);
begin
 fabout.show;
end;

procedure Tformprinc.Esci1Click(Sender: TObject);
begin
 halt;
end;

procedure Tformprinc.RadioButton1Click(Sender: TObject);
begin
 button1.enabled:=true;
end;

procedure Tformprinc.info1Click(Sender: TObject);
begin
 fmanuali.show;
end;

procedure Tformprinc.FormActivate(Sender: TObject);
begin
 fmanuali.TabSheet1.TabVisible:=true;
 fmanuali.TabSheet2.TabVisible:=true;
 fmanuali.TabSheet3.TabVisible:=false;
 fmanuali.TabSheet4.TabVisible:=false;
 fmanuali.TabSheet5.TabVisible:=false;
 fmanuali.TabSheet6.TabVisible:=false;
 fmanuali.TabSheet9.TabVisible:=false;
 fmanuali.TabSheet10.TabVisible:=false;
 fmanuali.TabSheet11.TabVisible:=false;
 fmanuali.TabSheet12.TabVisible:=false;
 fmanuali.TabSheet13.TabVisible:=false;
 fmanuali.TabSheet14.TabVisible:=false;
end;

procedure Tformprinc.Button2Click(Sender: TObject);
begin
 halt
end;

procedure Tformprinc.CheckBox1Click(Sender: TObject);
begin
 button1.enabled:=true;
 if (checkbox1.checked=false) and (checkbox2.checked=false) and (checkbox3.checked=false) and (checkbox4.checked=false) and (checkbox5.checked=false) then
  button1.Enabled:=false;
end;

end.
