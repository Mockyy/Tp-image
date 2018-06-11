unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    BReset: TButton;
    BMirrovert: TButton;
    BMirrohor: TButton;
    BDoublemirro: TButton;
    Image1: TImage;
    Image2: TImage;
    procedure BDoublemirroClick(Sender: TObject);
    procedure BMirrohorClick(Sender: TObject);
    procedure BMirrovertClick(Sender: TObject);
    procedure BResetClick(Sender: TObject);
    procedure BRotationClick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.BResetClick(Sender: TObject);
begin
  Image2.Canvas.Brush.color := clwhite;
  Image2.canvas.rectangle(0,0,300,200);
end;

procedure TForm1.BMirrovertClick(Sender: TObject);
var
  i, j : integer;
begin
  for i := 1 to 300 do
      begin
      for j := 1 to 200 do
          begin
          Image2.Canvas.Pixels[i,200-j] := Image1.canvas.Pixels[i,j];
          end;
      end;
end;

procedure TForm1.BMirrohorClick(Sender: TObject);
var
  i, j : integer;
begin
  for i := 1 to 300 do
      begin
      for j := 1 to 200 do
          begin
          Image2.Canvas.Pixels[300-i,j] := Image1.canvas.Pixels[i,j];
          end;
      end;
end;

procedure TForm1.BDoublemirroClick(Sender: TObject);
var
  i, j : integer;
begin
  for i := 1 to 300 do
      begin
      for j := 1 to 200 do
          begin
          Image2.Canvas.Pixels[300-i,200-j] := Image1.canvas.Pixels[i,j];
          end;
      end;
end;


end.

