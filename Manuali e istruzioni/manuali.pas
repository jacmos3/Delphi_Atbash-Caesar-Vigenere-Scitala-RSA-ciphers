unit manuali;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls;

type
  TFmanuali = class(TForm)
    pagecontrol1: TPageControl;
    TabSheet1: TTabSheet;
    Memo1: TMemo;
    TabSheet2: TTabSheet;
    Memo2: TMemo;
    TabSheet3: TTabSheet;
    Memo3: TMemo;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    Memo4: TMemo;
    Memo5: TMemo;
    Memo6: TMemo;
    TabSheet9: TTabSheet;
    TabSheet10: TTabSheet;
    TabSheet11: TTabSheet;
    TabSheet12: TTabSheet;
    Memo9: TMemo;
    Memo10: TMemo;
    Memo11: TMemo;
    Memo12: TMemo;
    Button8: TButton;
    TabSheet13: TTabSheet;
    TabSheet14: TTabSheet;
    Memo13: TMemo;
    Memo14: TMemo;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fmanuali: TFmanuali;

implementation

{$R *.dfm}

procedure TFmanuali.Button1Click(Sender: TObject);
begin
close;
end;

end.
