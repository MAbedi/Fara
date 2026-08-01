unit InterdictsEndDateWarn;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, Grids, Vcl.DBGrids, DB, ADODB, ImgList, DBActns,
  ActnList, StdCtrls, ExtCtrls, Buttons, ppProd, ppClass, ppReport, ppComm,
  ppRelatv, ppDB, ppDBPipe, ppVar, ppCtrls, ppPrnabl, ppBands, ppCache,
  ppStrtch, ppSubRpt, ppParameter, ppDesignLayer, System.ImageList,
  System.Actions;

type
  TInterdictsEndDateWarnF = class(Ttemplate2MDIF)
    DBGrid1: TDBGrid;
    qryInterdictsEndDateWarn: TADOQuery;
    srcInterdictsEndDateWarn: TDataSource;
    actSendExecl: TAction;
    BitBtn3: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn5: TBitBtn;
    actSort: TAction;
    Action2: TAction;
    BitBtn1: TBitBtn;
    ActShowInterdict: TAction;
    BitBtn2: TBitBtn;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppSysVarPageNo: TppSystemVariable;
    pplblPrintDate: TppLabel;
    pplbcompany: TppLabel;
    ppLblFromCaption: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLine3: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppShape1: TppShape;
    ppLine2: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLabel2: TppLabel;
    ppLabel6: TppLabel;
    ppLine9: TppLine;
    ppLabel7: TppLabel;
    ppLabel9: TppLabel;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLabel10: TppLabel;
    ppLine12: TppLine;
    ppLabel11: TppLabel;
    ppDBText2: TppDBText;
    ppDBText4: TppDBText;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppDBText5: TppDBText;
    ppLine14: TppLine;
    ppDBText6: TppDBText;
    ppLine15: TppLine;
    ppDBText7: TppDBText;
    ppLine16: TppLine;
    ppDBText8: TppDBText;
    ppLine17: TppLine;
    ppLine24: TppLine;
    ppDBText1: TppDBText;
    ppLine4: TppLine;
    ppDBText3: TppDBText;
    ppLine13: TppLine;
    ppLine18: TppLine;
    actShow: TAction;
    qryInterdictsEndDateWarnPersonelNo: TIntegerField;
    qryInterdictsEndDateWarnname_L1: TStringField;
    qryInterdictsEndDateWarnlastName_L1: TStringField;
    qryInterdictsEndDateWarnInterdictID: TIntegerField;
    qryInterdictsEndDateWarnInterdictNo: TStringField;
    qryInterdictsEndDateWarnInterdictDate: TStringField;
    qryInterdictsEndDateWarnInterdicStartDate: TStringField;
    qryInterdictsEndDateWarnInterdicEndDate: TStringField;
    BitBtn4: TBitBtn;
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actSendExeclExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure ppSysVarPageNoGetText(Sender: TObject; var Text: String);
    procedure pplblPrintDateGetText(Sender: TObject; var Text: String);
    procedure BitBtn2Click(Sender: TObject);
    procedure pplbcompanyGetText(Sender: TObject; var Text: String);
    procedure actShowExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  InterdictsEndDateWarnF: TInterdictsEndDateWarnF;

implementation

uses DM, GlobalPro, search2, sort2, Interdicts,
  DBGrid2Print, main, mdiMain;

{$R *.dfm}

procedure TInterdictsEndDateWarnF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1,2,True);
end;

procedure TInterdictsEndDateWarnF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
end;

procedure TInterdictsEndDateWarnF.actSendExeclExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TInterdictsEndDateWarnF.FormCreate(Sender: TObject);
begin
  inherited;
  With qryInterdictsEndDateWarn do begin
    Active:=False;
    Parameters.ParamByName('EndDate').Value:=var_glb_CurrentDate;
    Active:=True;
  end;
end;

procedure TInterdictsEndDateWarnF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryInterdictsEndDateWarn);
end;

procedure TInterdictsEndDateWarnF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryInterdictsEndDateWarn);
end;

procedure TInterdictsEndDateWarnF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  QuickSearch(Key,qryInterdictsEndDateWarnPersonelNo);
end;

procedure TInterdictsEndDateWarnF.ppSysVarPageNoGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text:=GetPageNumberString(Text);
end;

procedure TInterdictsEndDateWarnF.pplblPrintDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text:=GetPrintDate;
end;

procedure TInterdictsEndDateWarnF.BitBtn2Click(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(DBGrid1,0);
end;

procedure TInterdictsEndDateWarnF.pplbcompanyGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text:=APPBank.CompanyName;
end;

procedure TInterdictsEndDateWarnF.actShowExecute(Sender: TObject);
begin
  inherited;
  if  mdimainF.ActInterdictsF.Execute then
    InterdictsF.qryInterdicts.Locate('InterdictID',
         qryInterdictsEndDateWarn.fieldByName('InterdictID').AsVariant,[]) ;
end;

end.
