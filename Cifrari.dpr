program Cifrari;

uses
  Forms,
  Mainform in 'Form principale\Mainform.pas' {formprinc},
  cesare in 'Cesare\cesare.pas' {fcesare},
  scitala in 'Scitala spartana\scitala.pas' {fscitala},
  about in 'About\about.pas' {fabout},
  manuali in 'Manuali e istruzioni\manuali.pas' {Fmanuali},
  Vigener in 'Vigenere\Vigener.pas' {fvigenere},
  atbash in 'Atbash\atbash.pas' {fatbash},
  rsa in 'Rsa\rsa.pas' {frsa},
  ascii in 'Tabella ASCII\ascii.pas' {Fascii};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(Tformprinc, formprinc);
  Application.CreateForm(Tfcesare, fcesare);
  Application.CreateForm(Tfscitala, fscitala);
  Application.CreateForm(Tfabout, fabout);
  Application.CreateForm(TFmanuali, Fmanuali);
  Application.CreateForm(Tfvigenere, fvigenere);
  Application.CreateForm(Tfatbash, fatbash);
  Application.CreateForm(Tfrsa, frsa);
  Application.CreateForm(TFascii, Fascii);
  Application.Run;
end.
