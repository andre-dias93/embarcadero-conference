unit Views.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage,
  Vcl.ComCtrls, Providers.EventDriven, Vcl.StdCtrls;

type
  TfrmEventDriven = class(TForm)
    imgEcon2025: TImage;
    pgcControl: TPageControl;
    tabSemEDA: TTabSheet;
    tabComEDA: TTabSheet;
    memoLogComEDA: TMemo;
    btnECONComEDA: TButton;
    btnECONSemEDA: TButton;
    memoLogSemEDA: TMemo;
    procedure FormCreate(Sender: TObject);
    procedure btnECONSemEDAClick(Sender: TObject);
    procedure btnECONComEDAClick(Sender: TObject);
  private
    procedure InscreverEcon2025;
    procedure BoasVindasEcon2025;
  end;

var
  frmEventDriven: TfrmEventDriven;

implementation

{$R *.dfm}

// SEM EDA
procedure TfrmEventDriven.btnECONSemEDAClick(Sender: TObject);
begin
  InscreverEcon2025;
  BoasVindasEcon2025;
end;

procedure TfrmEventDriven.BoasVindasEcon2025;
begin
  memoLogSemEDA.Lines.Add('Seja bem-vindo!');
end;

procedure TfrmEventDriven.InscreverEcon2025;
begin
  memoLogSemEDA.Lines.Add('Você está inscrito na Econ2025');
end;

// COM EDA
procedure TfrmEventDriven.btnECONComEDAClick(Sender: TObject);
begin
  TEventDriven.Publish('Econ2025');
end;

procedure TfrmEventDriven.FormCreate(Sender: TObject);
begin
  TEventDriven.Subscribe('Econ2025',
    procedure
    begin
      memoLogComEDA.Lines.Add('Você está inscrito na Econ2025');
    end
  );

  TEventDriven.Subscribe('Econ2025',
    procedure
    begin
      memoLogComEDA.Lines.Add('Seja bem-vindo!');
    end
  );
end;

end.
