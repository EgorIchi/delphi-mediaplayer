unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MPlayer, StdCtrls, ComCtrls, ExtCtrls, Buttons, jpeg;

type
  TForm1 = class(TForm)
    mp1: TMediaPlayer;
    tmr1: TTimer;
    trckbr1: TTrackBar;
    tmr2: TTimer;
    btn6: TBitBtn;
    btn7: TBitBtn;
    btn8: TBitBtn;
    btn9: TBitBtn;
    btn10: TBitBtn;
    lbl2: TLabel;
    lst1: TListBox;
    lbl1: TLabel;
    img1: TImage;

    procedure FormCreate(Sender: TObject);




    procedure tmr1Timer(Sender: TObject);
    procedure tmr2Timer(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure btn7Click(Sender: TObject);
    procedure btn9Click(Sender: TObject);
    procedure btn10Click(Sender: TObject);
    procedure btn8Click(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
     
  end;

var
  Form1: TForm1;
  music:array[1..100] of string;
  i:integer;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
var q:TList;

begin

  lbl1.Caption:='Время:'+TimeToStr(now);
  lst1.Items.Add('music1.wav');
  lst1.Items.Add('music2.wav');
  lst1.Items.Add('music3.wav');
  lst1.Items.Add('music4.wav');
  i:=0;
  tmr1.Interval:=0;
  lbl2.Caption:='Баскетбол куроко';
  btn10.Enabled:=false;
  btn8.Enabled:=false;
  btn9.Enabled:=false;
  btn7.Enabled:=false;



end;



procedure Hello(a:integer;L:TLabel);
var r:string;
begin
case a of
0:L.Caption:='Баскетбол куроко';
1:L.Caption:='Бездомный бог';
2:L.Caption:='Блич';
3:L.Caption:='Атака титанов';
end;

end;



procedure TForm1.tmr1Timer(Sender: TObject);
begin
//lbl1.Caption:=IntToStr(Round((mp1.Position / mp1.Length)*100));
trckbr1.Position:=Round((mp1.Position / mp1.Length)*100);
end;

procedure TForm1.tmr2Timer(Sender: TObject);
begin
lbl1.Caption:='Время:'+TimeToStr(now);
end;

procedure TForm1.btn5Click(Sender: TObject);
begin
mp1.Resume;
end;

procedure TForm1.btn6Click(Sender: TObject);
var s:string;
begin

s:=lst1.Items[i];
 mp1.FileName:=s;
 mp1.Open;
 mp1.Play;
 tmr1.Interval:=1000;
  btn10.Enabled:=true;
  btn8.Enabled:=true;
  btn9.Enabled:=true;
  btn7.Enabled:=True;
end;

procedure TForm1.btn7Click(Sender: TObject);
begin
mp1.Pause;
end;

procedure TForm1.btn9Click(Sender: TObject);
begin
mp1.Resume;
end;

procedure TForm1.btn10Click(Sender: TObject);
begin
i:=i+1;

if i=lst1.Count then
begin
i:=0;

end;
Hello(i,lbl2);
mp1.Pause;
end;

procedure TForm1.btn8Click(Sender: TObject);
begin
i:=i-1;
if i<0 then
begin
I:=0;

end;
Hello(i,lbl2);
mp1.Pause;
end;

end.
