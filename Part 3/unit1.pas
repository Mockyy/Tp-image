unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    BBleu: TButton;
    BInverse: TButton;
    BReset: TButton;
    Image1: TImage;
    Image2: TImage;
    procedure BBleuClick(Sender: TObject);
    procedure BInverseClick(Sender: TObject);
    procedure BResetClick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.BInverseClick(Sender: TObject);
var
  i, j : integer;
begin
     for i := 1 to 300 do
         begin
           for j := 1 to 200 do
               begin
                 Image2.canvas.Pixels[i,j] := 255-Image1.canvas.Pixels[i,j];
               end;
         end;
end;

procedure TForm1.BResetClick(Sender: TObject);
begin
  Image2.Canvas.Brush.color := clwhite;
  Image2.Canvas.Rectangle(0,0,300,300);
end;

procedure TForm1.BBleuClick(Sender: TObject);
var
  i, j : integer;
begin
     for i := 1 to 300 do
         begin
           for j := 1 to 200 do
               begin
                 Image2.canvas.Pixels[i,j] := clblue-Image1.canvas.Pixels[i,j];
               end;
         end;
end;

end.

