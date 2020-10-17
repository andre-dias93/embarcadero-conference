unit Sample.Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Data.DB, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Vcl.Samples.Spin;

type
  TFrmMain = class(TForm)
    pnlFluentInterface: TPanel;
    pnlStrings: TPanel;
    sptSeparator: TSplitter;
    pnlStringsTitle: TPanel;
    pnlContent: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    edtMinValue: TSpinEdit;
    edtMaxValue: TSpinEdit;
    btnList: TButton;
    pnlListType: TPanel;
    rgEvenOdd: TRadioGroup;
    pnlMemoList: TPanel;
    mmList: TMemo;
    ltbList: TListBox;
    pnlFind: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    edtText: TEdit;
    edtSearch: TEdit;
    btnFind: TButton;
    pnlFindTitle: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure btnFindClick(Sender: TObject);
    procedure btnListClick(Sender: TObject);
  private
    procedure CustomMessage(const ACondition: Boolean);
  end;

var
  FrmMain: TFrmMain;

implementation

uses FluentInterface.Utils, StrUtils, FluentInterface.Utils.SmartPointer, FluentInterface.Core.ListFactory,
  FluentInterface.Types.EvenOdd;

{$R *.dfm}

procedure TFrmMain.btnListClick(Sender: TObject);
var
  LListBuilder: TStringBuilder;
  LListString: TStringList;
begin
  LListBuilder := TStringBuilder.Create;
  LListString := TStringList.Create;
  ltbList.Clear;
  try
    for var I := edtMinValue.Value to edtMaxValue.Value do
    begin
      if rgEvenOdd.ItemIndex = Integer(TEvenOddType.Odd) then
      begin
        if Odd(I) then
        begin
          LListBuilder.Append('Nº').Append(I.ToString).AppendLine;
          LListString.AddPair('Nº', I.ToString);
        end;
      end
      else if not Odd(I) then
      begin
        LListBuilder.Append('Nº').Append(I.ToString).AppendLine;
        LListString.AddPair('Nº', I.ToString);
      end;
    end;
    mmList.Text := LListBuilder.ToString;
    ltbList.Items := LListString;
  finally
    LListBuilder.Free;
    LListString.Free;
  end;

//  ltbList.Items := TListFactory
//    .New
//    .ListString
//    .Types(TEvenOddType(rgEvenOdd.ItemIndex))
//    .Interval(edtMinValue.Value, edtMaxValue.Value);
//
//  mmList.Text := TListFactory
//    .New.ListBuilder
//    .Types(TEvenOddType(rgEvenOdd.ItemIndex))
//    .Interval(edtMinValue.Value, edtMaxValue.Value);
end;

procedure TFrmMain.CustomMessage(const ACondition: Boolean);
const
  FINDED = '%s, foi localizado!';
  NOT_FINDED = '%s, não foi encontrado no texto informado!';
begin
  ShowMessage(Format(IfThen(ACondition, FINDED, NOT_FINDED), [edtSearch.Text]));
end;

procedure TFrmMain.btnFindClick(Sender: TObject);
var
  LText: string;
  LSearch: string;
begin
  LText := Trim(edtText.Text);
  LText := TFluentInterfaceUtils.RemoveAcento(LText);
  LText := UpperCase(LText);

  LSearch := Trim(edtSearch.Text);
  LSearch := TFluentInterfaceUtils.RemoveAcento(LSearch);
  LSearch := UpperCase(LSearch);

  CustomMessage(LText.Contains(LSearch));

  // MostrarMensagem(edtTexto.RemoveAcento.Trim.ToUpper.Contains(edtPesquisa.RemoveAcento.Trim.ToUpper));
end;

procedure TFrmMain.FormCreate(Sender: TObject);
begin
  rgEvenOdd.ItemIndex := TEvenOddType.Even.GetValue;
end;

end.
