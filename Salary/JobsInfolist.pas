unit JobsInfolist;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, DB, ADODB, ImgList, DBActns, ActnList, StdCtrls,
  ExtCtrls, Buttons, Grids, Vcl.DBGrids, DBCtrls, ppProd, ppClass, ppReport,
  ppComm, ppRelatv, ppDB, ppDBPipe, ppCtrls, ppBands, ppVar, ppPrnabl,
  ppCache, ppModule, daDataModule, Menus, ComCtrls, ppParameter, ppDesignLayer,
  System.ImageList, System.Actions;

type
  TJobsInfolistF = class(Ttemplate2MDIF)
    qryJobsInfolist: TADOQuery;
    srcJobsInfolist: TDataSource;
    DBGrid1: TDBGrid;
    BitBtn3: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn2: TBitBtn;
    DBNavigator2: TDBNavigator;
    BitBtn4: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn5: TBitBtn;
    actFilter: TAction;
    actPrint: TAction;
    actShowForm: TAction;
    actSendtoExcel: TAction;
    actSort: TAction;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    StatusBar1: TStatusBar;
    ppHeaderBand1: TppHeaderBand;
    ppLabel1: TppLabel;
    ppLabel3: TppLabel;
    ppShape1: TppShape;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLabel7: TppLabel;
    ppLabel4: TppLabel;
    ppLabel13: TppLabel;
    ppLine10: TppLine;
    ppLine7: TppLine;
    ppLabel2: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDetailBand1: TppDetailBand;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppDBText2: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText1: TppDBText;
    ppDBText8: TppDBText;
    ppLine19: TppLine;
    ppDBText7: TppDBText;
    ppDBText3: TppDBText;
    ppLine15: TppLine;
    ppLine9: TppLine;
    ppDBText6: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppLine1: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppLine8: TppLine;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLine16: TppLine;
    BitBtn1: TBitBtn;
    actPrintVijeh: TAction;
    PopOther: TPopupMenu;
    N6: TMenuItem;
    N8: TMenuItem;
    actSMS: TAction;
    qryJobsInfolistjobCode: TIntegerField;
    qryJobsInfolistjobName: TStringField;
    qryJobsInfolistJobLocation: TIntegerField;
    qryJobsInfolistJobLocationName: TStringField;
    qryJobsInfolistOrganPos: TIntegerField;
    qryJobsInfolistOrganPosName: TStringField;
    qryJobsInfolistOrganizational: TIntegerField;
    qryJobsInfolistOrganizationalName: TStringField;
    qryJobsInfolistGroupCode: TIntegerField;
    qryJobsInfolistGroupCodeName: TStringField;
    qryJobsInfolistGradeID: TIntegerField;
    qryJobsInfolistGradeIDName: TIntegerField;
    qryJobsInfolistRankID: TIntegerField;
    qryJobsInfolistRankIDName: TStringField;
    procedure actSearch_Execute(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
    procedure actShowFormExecute(Sender: TObject);
    procedure actSendtoExcelExecute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure qryJobsInfolistAfterOpen(DataSet: TDataSet);
    procedure actPrintVijehExecute(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure ppLblCaptionGetText(Sender: TObject; var Text: String);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure ppLblPrintDateGetText(Sender: TObject; var Text: String);
    procedure ppSysVarPageNoGetText(Sender: TObject; var Text: String);
  private
    { Private declarations }
    procedure UpdateFilter;

  public
    { Public declarations }
  end;

var
  JobsInfolistF: TJobsInfolistF;

implementation

uses DM, search2, filter_ADO, FilterClass_ADO, GlobalPro, sort2, PersonelInfo,
  DBGrid2Print, infoSMS, jobs;
{$R *.dfm}

procedure TJobsInfolistF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryJobsInfolist);
end;

procedure TJobsInfolistF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      AddItem(DMf.adcSalary, 'JobsNo', '„‘Œ’«  Å—”‰·Ì', '‘.Å—”‰·', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT jobs.jobCode, jobs.jobName FROM Pay.jobs ',
        'select Min(jobCode),Max(jobCode) From Pay.jobs');
      if ShowModal = mrOk then
      begin
        GetFilterString;
        UpdateFilter;
      end; // if
    finally
      Free;
    end; // try
  end; // with
end;

procedure TJobsInfolistF.actShowFormExecute(Sender: TObject);
begin
  inherited;
  CreateMDIForm2(TjobsF, jobsF, Self);
  PersonelInfoF.qryPeronalInfo.Locate('jobCode',
    qryJobsInfolist.FieldByName('jobCode').AsInteger, [])
end;

procedure TJobsInfolistF.actSendtoExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1)
end;

procedure TJobsInfolistF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryJobsInfolist);
end;

procedure TJobsInfolistF.UpdateFilter;
begin
  with qryJobsInfolist do
  begin
    Active := False;
    Parameters.ParamByName('jobCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['JobsNo'], ftInteger);
    Parameters.ParamByName('jobCodeTo').Value :=
      GetcTo(myParams.ParamValues['JobsNo'], ftInteger);
    Active := True;
  end; // with
end;

procedure TJobsInfolistF.FormShow(Sender: TObject);
begin
  inherited;

  myParams.Clear;
  actFilter.Execute;
  if myParams.FindParam('JobsNo') = nil then
    close;

end;

procedure TJobsInfolistF.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  actShowForm.Execute
end;

procedure TJobsInfolistF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
end;

procedure TJobsInfolistF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 1);
end;

procedure TJobsInfolistF.actPrintExecute(Sender: TObject);
begin
  inherited;
  try
    qryJobsInfolist.DisableControls;
    InitReportFile(ppReport1, 'JobsInfolist');
  finally
    qryJobsInfolist.EnableControls;
  end;
end;

procedure TJobsInfolistF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  QuickSearch(Key, qryJobsInfolistjobCode);

end;

procedure TJobsInfolistF.qryJobsInfolistAfterOpen(DataSet: TDataSet);
begin
  inherited;
  StatusBar1.Panels[2].Text := ' ⁄œ«œ ‘€· = ' + IntToStr(DataSet.RecordCount);
end;

procedure TJobsInfolistF.actPrintVijehExecute(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(DBGrid1, 0);
end;

procedure TJobsInfolistF.N8Click(Sender: TObject);
begin
  inherited;
  qryJobsInfolist.Requery();
end;

procedure TJobsInfolistF.BitBtn1Click(Sender: TObject);
begin
  inherited;
  PopOther.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TJobsInfolistF.ppLblPrintDateGetText(Sender: TObject;
  var Text: String);
begin
  Text := GetPrintDate;
end;

procedure TJobsInfolistF.ppSysVarPageNoGetText(Sender: TObject;
  var Text: String);
begin
  Text := GetPageNumberString(Text)
end;

procedure TJobsInfolistF.ppLblCaptionGetText(Sender: TObject; var Text: String);
begin
  Text := Caption;
end;

procedure TJobsInfolistF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  Text := APPBank.CompanyName;
end;


end.
