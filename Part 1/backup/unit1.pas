unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    BVisage: TButton;
    BNoir: TButton;
    BEchec: TButton;
    BRouge: TButton;
    BQuatre: TButton;
    BAlterne: TButton;
    Image: TImage;
    procedure BAlterneClick(Sender: TObject);
    procedure BEchecClick(Sender: TObject);
    procedure BNoirClick(Sender: TObject);
    procedure BQuatreClick(Sender: TObject);
    procedure BRougeClick(Sender: TObject);
    procedure BVisageClick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.BNoirClick(Sender: TObject);
begin
  Image.Canvas.Brush.color := clblack;
  Image.Canvas.Rectangle (0,0,300,300);
end;

procedure TForm1.BAlterneClick(Sender: TObject);
var
  cpt : integer;
begin
Cpt:=0;
While (Cpt<300) do
   begin
        Image.Canvas.Pen.color:=clRed;
        Image.Canvas.Line (Cpt,0,Cpt,300);
        Image.Canvas.Pen.color:=clYellow;
        Image.Canvas.Line (Cpt+1,0,Cpt+1,300);
        Image.Canvas.Pen.color:=clGreen;
        Image.Canvas.Line (Cpt+2,0,Cpt+2,300);
        Image.Canvas.Pen.color:=clBlue;
        Image.Canvas.Line (Cpt+3,0,Cpt+3,300);
        Cpt:=Cpt+4;
   end;
end;

procedure TForm1.BEchecClick(Sender: TObject);
var
  i, j : integer;
begin
     for i := 0 to 8 do
         begin
         for j := 0 to 8 do
             begin
             if (i = j) OR (i = j + 2) OR (i = j - 2) OR (i = j + 4) OR (i = j - 4) OR (i = j + 6) OR (i = j - 6) then
                begin
                   Image.Canvas.Brush.color := clblack;
                   Image.Canvas.Rectangle (i*37,j*37,(i+1)*37,(j+1)*37)
                end
                else
                 begin
                 Image.Canvas.Brush.color := clwhite;
                 Image.Canvas.Rectangle (i*37,j*37,(i+1)*37,(j+1)*37);
                 end;
             end;
         end;
end;

procedure TForm1.BQuatreClick(Sender: TObject);
begin
  Image.Canvas.Brush.color := clblue;
  Image.Canvas.Rectangle(0,0,150,150);
  Image.Canvas.Brush.color := clgreen;
  Image.Canvas.Rectangle(300,300,150,150);
  Image.Canvas.Brush.color := clyellow;
  Image.Canvas.Rectangle(300,0,150,150);
  Image.Canvas.Brush.color := clpurple;
  Image.Canvas.rectangle(0,300,150,150);
end;

procedure TForm1.BRougeClick(Sender: TObject);
begin
  Image.Canvas.Brush.color := clred;
  Image.Canvas.Rectangle(0,0,300,300);
end;

procedure TForm1.BVisageClick(Sender: TObject);
begin
  Image.canvas.Brush.color := clyellow;
  Image.canvas.Rectangle(0,0,300,300);
  Image.canvas.Brush.color := clblue;
  Image.canvas.Ellipse(50,50,150,150);
  Image.canvas.Ellipse(150,50,250,150);
  Image.canvas.Brush.color := clwhite;
  Image.canvas.Rectangle(50,200,250,250);
end;

end.

