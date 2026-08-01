unit FlowMaintenance;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, Grids, Vcl.DBGrids, ImgList, DBActns, ActnList,
  StdCtrls, ExtCtrls, Buttons, DB, ADODB, DBClient, Provider, Mask, DBCtrls,
  ppBands, ppCache, ppClass, ppDB, ppProd, ppReport, ppComm, ppRelatv,
  ppDBPipe, ppVar, ppPrnabl, ppCtrls, ppParameter, SumDBGrid, ppDesignLayer,
  System.ImageList, System.Actions;

type
  TFlowMaintenanceF = class(Ttemplate2MDIF)
    grd1: TDBGrid;
    qryFlowMaintenance: TADOQuery;
    srcFlowMaintenance: TDataSource;
    actSort: TAction;
    btnSort: TBitBtn;
    btnSort1: TBitBtn;
    actExcel: TAction;
    btnSort2: TBitBtn;
    actDocShow: TAction;
    btnExcel: TBitBtn;
    edtAccCode: TEdit;
    edtAccName: TEdit;
    prvFlowMaintenance: TDataSetProvider;
    cliFlowMaintenance: TClientDataSet;
    actPrint: TAction;
    btnPrint: TBitBtn;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel3: TppLabel;
    ppLBCompanyName: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppDocDate: TppLabel;
    btnDesignPrint: TBitBtn;
    actDesignPrint: TAction;
    ppLabel1: TppLabel;
    cliFlowMaintenanceMaintenanceNo: TSmallintField;
    cliFlowMaintenanceMaintenanceDate: TStringField;
    cliFlowMaintenanceCustID1: TIntegerField;
    cliFlowMaintenanceCustName1: TStringField;
    cliFlowMaintenanceCustID2: TIntegerField;
    cliFlowMaintenanceCustName2: TStringField;
    cliFlowMaintenanceCustID3: TIntegerField;
    cliFlowMaintenanceCustName3: TStringField;
    cliFlowMaintenancec_StuffName: TStringField;
    cliFlowMaintenancePersonId: TIntegerField;
    cliFlowMaintenancePersonName: TStringField;
    cliFlowMaintenanceStuffCode2: TLargeintField;
    cliFlowMaintenanceOprationName: TStringField;
    cliFlowMaintenanceFunctionAmount: TFloatField;
    cliFlowMaintenanceFunctionDate: TStringField;
    cliFlowMaintenanceStartHour: TDateTimeField;
    cliFlowMaintenanceEndHour: TDateTimeField;
    cliFlowMaintenanceFunctionHour: TDateTimeField;
    cliFlowMaintenanceFunctionNote: TWideStringField;
    cliFlowMaintenanceStuffCode: TLargeintField;
    procedure FormResize(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actExcelExecute(Sender: TObject);
    procedure actDocShowExecute(Sender: TObject);
    procedure qryFlowMaintenanceAfterOpen(DataSet: TDataSet);
    procedure grd1DblClick(Sender: TObject);
    procedure cliFlowMaintenanceCalcFields(DataSet: TDataSet);
    procedure actPrintExecute(Sender: TObject);
    procedure ppLBCompanyNameGetText(Sender: TObject; var Text: String);
    procedure ppLabel3GetText(Sender: TObject; var Text: String);
    procedure ppDocDateGetText(Sender: TObject; var Text: String);
    procedure ppSystemVariable2GetText(Sender: TObject; var Text: String);
    procedure actDesignPrintExecute(Sender: TObject);
    procedure ppLabel1GetText(Sender: TObject; var Text: string);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    Procedure enter(AccCode,AccName,BaseParam,Awhere,BWhere:String);
    { Public declarations }
  end;

var
  FlowMaintenanceF: TFlowMaintenanceF;

implementation

uses
  Dm, GlobalPro, Main,  sort, search1, DBGrid2Print, DateUtils, FormFunctions;

{$R *.dfm}

{ TFlowMaintenanceF }

procedure TFlowMaintenanceF.enter;
begin
  CreateMDIForm2(TFlowMaintenanceF,FlowMaintenanceF,mainF);
  with FlowMaintenanceF do
  with qryFlowMaintenance do
  begin
    edtacccode.Text := AccCode;
    edtAccName.Text :=AccName;
    close;
    Parameters.ParamByName('BaseParam').Value := baseParam;
    Parameters.ParamByName('CirculationCode').Value := AccCode;
    Parameters.ParamByName('Where').Value := Awhere;
    //ShowQryParam(qryFlowMaintenance);
    open;
//    Sort := 'AccCode';
  end;
end;

procedure TFlowMaintenanceF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(grd1);
end;

procedure TFlowMaintenanceF.FormResize(Sender: TObject);
begin
  inherited;
  setColSize(grd1,1)
end;

procedure TFlowMaintenanceF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  searchf.ShowSearch(cliFlowMaintenance);
end;

procedure TFlowMaintenanceF.actSortExecute(Sender: TObject);
begin
  inherited;
  sortF.ShowSort(cliFlowMaintenance);
end;

procedure TFlowMaintenanceF.actExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(grd1)
end;

procedure TFlowMaintenanceF.actDocShowExecute(Sender: TObject);
begin
  inherited;
  ShowReciptTypes(cliFlowMaintenance,Self,0);
end;

procedure TFlowMaintenanceF.qryFlowMaintenanceAfterOpen(DataSet: TDataSet);
begin
  inherited;
  cliFlowMaintenance.Close;
  cliFlowMaintenance.Open;
end;

procedure TFlowMaintenanceF.grd1DblClick(Sender: TObject);
begin
  inherited;
  actDocShow.Execute;
end;

procedure TFlowMaintenanceF.cliFlowMaintenanceCalcFields(DataSet: TDataSet);
begin
  inherited;
  DataSet.fieldbyname('_row').AsInteger := DataSet.RecNo;
end;

procedure TFlowMaintenanceF.actPrintExecute(Sender: TObject);
begin
  inherited;
  InitReportFile(ppReport1,'rptFlowMaintenance',True) ;
end;

procedure TFlowMaintenanceF.ppLBCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text:=APPBank.CompanyName;
end;

procedure TFlowMaintenanceF.ppLabel1GetText(Sender: TObject; var Text: string);
begin
  inherited;
  Text:=edtAccCode.Text+'  '+ edtAccName.Text
end;

procedure TFlowMaintenanceF.ppLabel3GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := Caption;
end;

procedure TFlowMaintenanceF.ppDocDateGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text:=GetPrintDate;
end;

procedure TFlowMaintenanceF.ppSystemVariable2GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text:=GetPageNumberString(Text);
end;

procedure TFlowMaintenanceF.actDesignPrintExecute(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(grd1,0)
end;

end.
