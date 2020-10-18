unit Sample.Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids,
  Vcl.Mask, Vcl.DBCtrls, Controller.Sample;

type
  TFrmMain = class(TForm)
    pgControl: TPageControl;
    tabRegister: TTabSheet;
    tabSearch: TTabSheet;
    pnlToolButtons: TPanel;
    btnInsert: TSpeedButton;
    btnEdit: TSpeedButton;
    btnDelete: TSpeedButton;
    pnlRegister: TPanel;
    pnlStudent: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    pnlRegisterStudent: TPanel;
    pnlCourses: TPanel;
    pnlTitleCourses: TPanel;
    pgControlCourses: TPageControl;
    pnlToolButtonsCourse: TPanel;
    btnInsertCourse: TSpeedButton;
    btnEditCourse: TSpeedButton;
    btnDeleteCourse: TSpeedButton;
    tabRegisterCourse: TTabSheet;
    tabSearchCourse: TTabSheet;
    btnSaveCourse: TSpeedButton;
    btnCancelCourse: TSpeedButton;
    Label3: TLabel;
    Label4: TLabel;
    dbGridCourses: TDBGrid;
    pnlGridSearch: TPanel;
    dbGridSearch: TDBGrid;
    edtName: TDBEdit;
    edtRA: TDBEdit;
    edtDescription: TDBEdit;
    edtWorkload: TDBEdit;
    dsStudent: TDataSource;
    dsSearch: TDataSource;
    dsCourse: TDataSource;
    pnlFooterSearch: TPanel;
    btnClose: TSpeedButton;
    pnlFooterRegister: TPanel;
    btnCancel: TSpeedButton;
    btnOK: TSpeedButton;
    procedure pgControlChanging(Sender: TObject; var AllowChange: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure pgControlCoursesChanging(Sender: TObject; var AllowChange: Boolean);
    procedure dsStudentStateChange(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure btnInsertClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure dsCourseStateChange(Sender: TObject);
    procedure dsSearchStateChange(Sender: TObject);
    procedure btnInsertCourseClick(Sender: TObject);
    procedure dbGridSearchDblClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnCancelCourseClick(Sender: TObject);
    procedure btnSaveCourseClick(Sender: TObject);
    procedure btnDeleteCourseClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
  private
    FController: TControllerSample;
    procedure ButtonHandlerCourse;
    procedure ButtonHandler;
  public
    { Public declarations }
  end;

var
  FrmMain: TFrmMain;

implementation

{$R *.dfm}

procedure TFrmMain.btnCancelClick(Sender: TObject);
begin
  FController.mtStudent.Cancel;
  pgControl.ActivePage := tabSearch;
end;

procedure TFrmMain.btnCancelCourseClick(Sender: TObject);
begin
  dsCourse.DataSet.Cancel;
end;

procedure TFrmMain.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmMain.btnDeleteClick(Sender: TObject);
begin
  FController.Delete;
end;

procedure TFrmMain.btnDeleteCourseClick(Sender: TObject);
begin
  FController.mtCourses.Delete;
end;

procedure TFrmMain.btnEditClick(Sender: TObject);
begin
  FController.GetById;
  pgControl.ActivePage := tabRegister;
end;

procedure TFrmMain.btnInsertClick(Sender: TObject);
begin
  pgControl.ActivePage := tabRegister;
  FController.Insert;
end;

procedure TFrmMain.btnInsertCourseClick(Sender: TObject);
begin
  FController.InsertCourse;
  pgControlCourses.ActivePage := tabRegisterCourse;
end;

procedure TFrmMain.btnOKClick(Sender: TObject);
begin
  FController.Save;
  pgControl.ActivePage := tabSearch;
end;

procedure TFrmMain.btnSaveCourseClick(Sender: TObject);
begin
  FController.mtCourses.Post;
end;

procedure TFrmMain.ButtonHandler;
begin
  btnInsert.Enabled := dsStudent.State in [dsBrowse, dsInactive];
  btnEdit.Enabled := btnInsert.Enabled and (dsSearch.DataSet.RecordCount > 0);;
  btnDelete.Enabled := btnEdit.Enabled;
end;

procedure TFrmMain.ButtonHandlerCourse;
begin
  btnInsertCourse.Enabled := (dsStudent.DataSet.State in dsEditModes) and not(dsCourse.DataSet.State in dsEditModes);
  btnEditCourse.Enabled := btnInsertCourse.Enabled and (dsCourse.DataSet.RecordCount > 0);
  btnDeleteCourse.Enabled := btnEditCourse.Enabled;
end;

procedure TFrmMain.dsSearchStateChange(Sender: TObject);
begin
  ButtonHandlerCourse;
  ButtonHandler;
end;

procedure TFrmMain.dsStudentStateChange(Sender: TObject);
begin
  ButtonHandlerCourse;
  ButtonHandler;
end;

procedure TFrmMain.dbGridSearchDblClick(Sender: TObject);
begin
  btnEdit.Click;
end;

procedure TFrmMain.dsCourseStateChange(Sender: TObject);
begin
  ButtonHandlerCourse;
  if not(dsCourse.DataSet.State in dsEditModes) then
    pgControlCourses.ActivePage := tabSearchCourse;
end;

procedure TFrmMain.FormCreate(Sender: TObject);
begin
  FController := TControllerSample.Create(Self);
  dsStudent.DataSet := FController.mtStudent;
  dsCourse.DataSet := FController.mtCourses;
  dsSearch.DataSet := FController.mtSearch;
  FController.mtCourses.MasterSource := dsStudent;
  pgControl.ActivePage := tabSearch;
end;

procedure TFrmMain.pgControlChanging(Sender: TObject; var AllowChange: Boolean);
begin
  AllowChange := False;
end;

procedure TFrmMain.pgControlCoursesChanging(Sender: TObject; var AllowChange: Boolean);
begin
  AllowChange := False;
end;

end.
