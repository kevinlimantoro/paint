unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, ExtCtrls, jpeg, StdCtrls;

type
  TForm1 = class(TForm)
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Image1: TImage;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    ColorBox1: TColorBox;
    ColorBox2: TColorBox;
    RadioGroup1: TRadioGroup;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton10: TSpeedButton;
    SpeedButton11: TSpeedButton;
    SpeedButton12: TSpeedButton;
    SpeedButton13: TSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure SpeedButton1Click(Sender: TObject);
    procedure ColorBox1Change(Sender: TObject);
    procedure ColorBox2Change(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  x1,y1,x2,y2,i,cekpol:integer;
  a:tcolor;

implementation

{$R *.dfm}

procedure TForm1.Image1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
if speedbutton4.Down or speedbutton3.down or speedbutton7.Down or speedbutton9.down then
begin
image1.Canvas.MoveTo(X,Y);
end
else if speedbutton12.Down then
colorbox1.selected:=image1.Canvas.Pixels[X,Y]
else if (speedbutton11.Down) and (cekpol=0) then
begin
image1.Canvas.MoveTo(X,Y);
cekpol:=cekpol+1;
end;
image1.Tag:=image1.tag+1;
x1:=X;
y1:=Y;
image1.Picture.SaveToFile('sample.bmp');
end;

procedure TForm1.Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
if image1.tag>0 then
begin
if speedbutton7.Down then
begin
  a:=colorbox1.Selected;
  image1.Canvas.Pen.Color:=colorbox2.Selected;
  image1.Canvas.lineto(X,Y);
   image1.Canvas.Pen.Color:=a;
end
else if speedbutton3.Down then
begin
//if cekpol>0 then
//begin
//image1.Canvas.pen.Color:=a;
//image1.Canvas.brush.Color:=a;
//image1.Canvas.MoveTo(x1,y1);
//image1.Canvas.LineTo(x2,y2);
//end;
//image1.Canvas.pen.Color:=colorbox1.Selected;
//image1.Canvas.brush.Color:=colorbox2.selected;
image1.Picture.LoadFromFile('sample.bmp');
image1.Canvas.Pen.Color:=colorbox1.Selected;
image1.Canvas.MoveTo(x1,y1);
image1.Canvas.LineTo(X,Y);
//x2:=X;y2:=Y;
//cekpol:=cekpol+1;
end

else if speedbutton4.Down or speedbutton9.Down then
  image1.Canvas.lineto(X,Y)
  
else if speedbutton2.Down then
begin
  image1.Canvas.Pixels[X,Y]:=colorbox1.selected;
end

else if speedbutton6.Down then
begin
//if cekpol>0 then
//begin
//image1.Canvas.pen.Color:=a;
//image1.Canvas.brush.Color:=a;
//image1.Canvas.ellipse(x1,y1,x2,y2)
//end;
image1.Picture.LoadFromFile('sample.bmp');
image1.Canvas.pen.Color:=colorbox1.Selected;
image1.Canvas.brush.Color:=colorbox2.selected;
image1.Canvas.ellipse(x1,y1,X,Y);
//x2:=X;
//y2:=Y;
//cekpol:=cekpol+1;
end

else if speedbutton8.Down then
begin
    for i:=0 to 7 do
    begin
    randomize();
    x1:=random(7);
    y1:=random(7);
    image1.Canvas.Pixels[X+x1,Y+y1]:=colorbox1.selected;
    end;
end

else if speedbutton5.Down then
begin
//if cekpol>0 then
//begin
//image1.Canvas.pen.Color:=a;
//image1.Canvas.brush.Color:=a;
//image1.Canvas.rectangle(x1,y1,x2,y2)
//end;
image1.Picture.LoadFromFile('sample.bmp');
image1.Canvas.pen.Color:=colorbox1.Selected;
image1.Canvas.brush.Color:=colorbox2.selected;
image1.Canvas.rectangle(x1,y1,X,Y);
//x2:=X;y2:=Y;
//cekpol:=cekpol+1;
end

else if speedbutton10.Down then
begin
//if cekpol>0 then
//begin
//image1.Canvas.pen.Color:=a;
//image1.Canvas.brush.Color:=a;
//image1.Canvas.RoundRect(x1,y1,x2,y2,30,30)
//end;

image1.Picture.LoadFromFile('sample.bmp');
image1.Canvas.pen.Color:=colorbox1.Selected;
image1.Canvas.brush.Color:=colorbox2.selected;
image1.Canvas.RoundRect(x1,y1,X,Y,30,30);
//x2:=X;y2:=Y;
//cekpol:=cekpol+1;
end;


end;
end;

procedure TForm1.Image1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
image1.tag:=0;
if speedbutton11.Down then
image1.Canvas.LineTo(x1,y1);
end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
image1.Canvas.Pen.Color:=colorbox1.Selected;
image1.Canvas.Brush.color:=colorbox2.Selected;
a:=colorbox2.Selected;
image1.Canvas.Rectangle(0,0,image1.Width,image1.Height);
end;

procedure TForm1.ColorBox1Change(Sender: TObject);
begin
image1.Canvas.Pen.Color:=colorbox1.Selected;
end;

procedure TForm1.ColorBox2Change(Sender: TObject);
begin
image1.Canvas.Brush.Color:=colorbox2.Selected;
end;

procedure TForm1.RadioGroup1Click(Sender: TObject);
begin
if radiogroup1.ItemIndex=0 then
image1.Canvas.Pen.Width:=1
else if radiogroup1.ItemIndex=1 then
image1.Canvas.Pen.Width:=4
else if radiogroup1.ItemIndex=2 then
image1.Canvas.Pen.Width:=7;
end;



procedure TForm1.SpeedButton11Click(Sender: TObject);
begin
cekpol:=0
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
image1.Canvas.Pen.Color:=clwhite;
image1.canvas.Brush.Color:=clwhite;
image1.Canvas.Rectangle(0,0,image1.Width,image1.Height);
image1.Canvas.Pen.Color:=colorbox1.Selected;
image1.canvas.Brush.Color:=colorbox2.Selected;
end;


end.
