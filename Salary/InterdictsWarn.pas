unit InterdictsWarn;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, Grids, Vcl.DBGrids, DB, ADODB, ImgList, DBActns,
  ActnList, StdCtrls, ExtCtrls, Buttons, ppProd, ppClass, ppReport, ppComm,
  ppRelatv, ppDB, ppDBPipe, ppVar, ppCtrls, ppPrnabl, ppBands, ppCache,
  ppStrtch, ppSubRpt, StrUtils, ppParameter, ppDesignLayer, System.ImageList,
  System.Actions, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, CedarDbGrid;

type
  TInterdictsWarnF = class(Ttemplate2MDIF)
    qryInterdictsWarn: TADOQuery;
    qryInterdictsWarnInterdictID: TIntegerField;
    qryInterdictsWarnPersonelNo: TIntegerField;
    qryInterdictsWarnName: TStringField;
    qryInterdictsWarnInterdictNo: TStringField;
    qryInterdictsWarnInterdictDate: TStringField;
    qryInterdictsWarnTotalYearsWork: TWordField;
    srcInterdictsWarn: TDataSource;
    qryInterdictsWarnno_of_year: TIntegerField;
    qryInterdictsWarnStoreDayTime: TWordField;
    qryInterdictsWarnemployDate: TStringField;
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
    qryInterdictsWarnInterdicStartDate: TStringField;
    qryInterdictsWarnInterdicEndDate: TStringField;
    BitBtn4: TBitBtn;
    actPrint: TAction;
    DBGrid1: TCedarDbgrid;
    procedure actSendExeclExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure ppSysVarPageNoGetText(Sender: TObject; var Text: String);
    procedure pplblPrintDateGetText(Sender: TObject; var Text: String);
    procedure pplbcompanyGetText(Sender: TObject; var Text: String);
    procedure actShowExecute(Sender: TObject);
    procedure ActShowInterdictExecute(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  InterdictsWarnF: TInterdictsWarnF;

implementation

uses DM, GlobalPro, search2, sort2, Interdicts,
  PersonelInfo, main, mdiMain;

{$R *.dfm}

procedure TInterdictsWarnF.actSendExeclExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TInterdictsWarnF.FormCreate(Sender: TObject);
begin
  inherited;
  With qryInterdictsWarn do
  begin
    Active := False;
    Parameters.ParamByName('InterdicEndDate').Value :=
      MidStr(var_glb_CurrentDate, 6, 2);
    Active := True;
  end;
end;

procedure TInterdictsWarnF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryInterdictsWarn);
end;

procedure TInterdictsWarnF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryInterdictsWarn);
end;

procedure TInterdictsWarnF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  QuickSearch(Key, qryInterdictsWarnPersonelNo);
end;

procedure TInterdictsWarnF.ppSysVarPageNoGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text);
end;

procedure TInterdictsWarnF.pplblPrintDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TInterdictsWarnF.pplbcompanyGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TInterdictsWarnF.actShowExecute(Sender: TObject);
begin
  inherited;
  if mdiMainF.ActPersonelInfoF.Execute then
    PersonelInfoF.qryPeronalInfo.Locate('PersonelNo',
      qryInterdictsWarn.Fieldbyname('PersonelNo').AsInteger, [])

end;

procedure TInterdictsWarnF.ActShowInterdictExecute(Sender: TObject);
begin
  inherited;
  if mdiMainF.ActInterdictsF.Execute then
    InterdictsF.qryInterdicts.Locate('InterdictID',
      qryInterdictsWarn.Fieldbyname('InterdictID').AsVariant, [])
end;

procedure TInterdictsWarnF.actPrintExecute(Sender: TObject);
begin
  inherited;
  SetSendToBackShapeOnPrint(Self);
  ppReport1.print;

end;

end.
