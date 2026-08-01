unit Offices;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, Grids, Vcl.DBGrids, ImgList, DBActns, ActnList,
  StdCtrls, ExtCtrls, Buttons, DB, ADODB, DBClient, Provider, Mask, DBCtrls,
  ppBands, ppCache, ppClass, ppDB, ppProd, ppReport, ppComm, ppRelatv,
  ppDBPipe, ppVar, ppPrnabl, ppCtrls, ppParameter, SumDBGrid, ppDesignLayer,
  System.ImageList, System.Actions, strutils;

type
  TOfficesF = class(Ttemplate2MDIF)
    grd1: TDBGrid;
    qryOffices: TADOQuery;
    srcOffices: TDataSource;
    actSort: TAction;
    btnSort: TBitBtn;
    btnSort1: TBitBtn;
    actExcel: TAction;
    btnSort2: TBitBtn;
    pnl5: TPanel;
    actDocShow: TAction;
    btnExcel: TBitBtn;
    edtAccCode: TEdit;
    edtAccName: TEdit;
    prvOffice: TDataSetProvider;
    cliOffice: TClientDataSet;
    cliOffice_Row: TIntegerField;
    Panel4: TPanel;
    Label1: TLabel;
    Panel1: TPanel;
    chkBeforeYear: TCheckBox;
    lbl1: TLabel;
    edt_Entity: TDBEdit;
    edt_Weight: TDBEdit;
    edtSel_Entity: TEdit;
    edtSel_Weight: TEdit;
    edtSel_Price: TEdit;
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
    cliOfficeReciptID: TIntegerField;
    cliOfficeServerID: TIntegerField;
    cliOfficeYearID: TIntegerField;
    cliOfficeReciptCaption: TStringField;
    cliOfficeReciptNumber: TIntegerField;
    cliOfficeReciptDate: TStringField;
    cliOfficePrice: TBCDField;
    cliOffice_Weight: TAggregateField;
    cliOffice_Entity: TAggregateField;
    cliOffice_Price: TAggregateField;
    edt_Price: TDBEdit;
    cliOfficeStuffCode: TLargeintField;
    cliOfficec_StuffName: TStringField;
    cliOfficeUnitName: TStringField;
    cliOfficePersonID3: TIntegerField;
    cliOfficeCustName3: TStringField;
    cliOfficeProductCode: TLargeintField;
    cliOfficeProductName: TStringField;
    cliOfficec_StuffTecInfo: TStringField;
    cliOfficePersonID2: TIntegerField;
    cliOfficeCustName2: TStringField;
    cliOfficePersonID1: TIntegerField;
    cliOfficeCustName1: TStringField;
    cliOfficeEntity: TFMTBCDField;
    cliOfficeWeight: TFMTBCDField;
    procedure FormResize(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actExcelExecute(Sender: TObject);
    procedure actDocShowExecute(Sender: TObject);
    procedure chkBeforeYearClick(Sender: TObject);
    procedure qryOfficesAfterOpen(DataSet: TDataSet);
    procedure cliOffice_sumBedGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure grd1DblClick(Sender: TObject);
    procedure cliOfficeCalcFields(DataSet: TDataSet);
    procedure grd1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure actPrintExecute(Sender: TObject);
    procedure ppLBCompanyNameGetText(Sender: TObject; var Text: String);
    procedure ppLabel3GetText(Sender: TObject; var Text: String);
    procedure ppDocDateGetText(Sender: TObject; var Text: String);
    procedure ppSystemVariable2GetText(Sender: TObject; var Text: String);
    procedure actDesignPrintExecute(Sender: TObject);
    procedure ppLabel1GetText(Sender: TObject; var Text: string);
    procedure FormDestroy(Sender: TObject);
  private
    procedure SumSelected;
    { Private declarations }
  public
    Procedure enter(AccCode, AccName, BaseParam, Awhere, BWhere: String);
    { Public declarations }
  end;

var
  OfficesF: TOfficesF;

implementation

uses
  Dm, GlobalPro, Main, sort, search1, DBGrid2Print, DateUtils, FormFunctions;

{$R *.dfm}
{ TOfficesF }

procedure TOfficesF.SumSelected;
var
  i: Integer;
  SumPrice: Currency;
  SumEntity: Real48;
  SumWeight: Real48;
begin
  SumEntity := 0;
  SumWeight := 0;
  SumPrice := 0;
  grd1.DataSource.DataSet.DisableControls;
  try

    if grd1.SelectedRows.Count > 1 then
    begin
      with grd1.DataSource.DataSet do
        for i := 0 to grd1.SelectedRows.Count - 1 do
        begin
          GotoBookmark((grd1.SelectedRows.Items[i]));
          SumEntity := SumEntity + FieldByName('Entity').AsFloat;
          SumWeight := SumWeight + FieldByName('Weight').AsFloat;
          SumPrice := SumPrice + FieldByName('Price').AsFloat;
        end;
    end;
    edtSel_Entity.Text := CurrToStrF(SumEntity, ffCurrency, 0);
    edtSel_Weight.Text := CurrToStrF(SumWeight, ffCurrency, 0);
    edtSel_Price.Text := CurrToStrF(SumPrice, ffCurrency, 0);
  finally
    grd1.DataSource.DataSet.EnableControls;
  end;
end;

procedure TOfficesF.enter;
begin
  CreateMDIForm2(TOfficesF, OfficesF, mainF);
  with OfficesF do
    with qryOffices do
    begin
//      Awhere := ReplaceStr(Awhere, 'ReciptItems.PersonID2',
//        'Recipts.PersonID2');
//
//      Awhere := ReplaceStr(Awhere, 'ReciptItems.PersonID3',
//        'Recipts.PersonID3');
//      Awhere := ReplaceStr(Awhere, 'ReciptItems.ReciptDate',
//        'Recipts.ReciptDate');
//      Awhere := ReplaceStr(Awhere, 'ReciptItems.ReciptNumber',
//        'Recipts.ReciptNumber');
//      Awhere := ReplaceStr(Awhere, 'ReciptItems.StoreID', 'Recipts.StoreID');
//      Awhere := ReplaceStr(Awhere, 'ReciptItems.StoreID', 'Recipts.StoreID');
//
//      Awhere := ReplaceStr(Awhere, 'ReciptItems.ReciptState',
//        'Recipts.ReciptState');
//      Awhere := ReplaceStr(Awhere, 'ReciptItems.ReciptType',
//        'Recipts.ReciptType');

      edtAccCode.Text := AccCode;
      edtAccName.Text := AccName;
      close;
      Parameters.ParamByName('BaseParam').Value := BaseParam;
      Parameters.ParamByName('CirculationCode').Value := AccCode;
      Parameters.ParamByName('Where').Value := Awhere;
      // ShowQryParam(qryOffices);
      open;
      // Sort := 'AccCode';
    end;
end;

procedure TOfficesF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(grd1);
end;

procedure TOfficesF.FormResize(Sender: TObject);
begin
  inherited;
  setColSize(grd1, 1)
end;

procedure TOfficesF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  searchf.ShowSearch(cliOffice);
end;

procedure TOfficesF.actSortExecute(Sender: TObject);
begin
  inherited;
  sortF.ShowSort(cliOffice);
end;

procedure TOfficesF.actExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(grd1)
end;

procedure TOfficesF.actDocShowExecute(Sender: TObject);
begin
  inherited;
  ShowReciptTypes(cliOffice, Self, 0);
end;

procedure TOfficesF.chkBeforeYearClick(Sender: TObject);
begin
  inherited;
  with qryOffices do
  begin
    close;
    Parameters.ParamByName('BeforYear').Value := chkBeforeYear.Checked;
    open;
  end
end;

procedure TOfficesF.qryOfficesAfterOpen(DataSet: TDataSet);
begin
  inherited;
  cliOffice.close;
  cliOffice.open;
  Entity_Weight(grd1);
end;

procedure TOfficesF.cliOffice_sumBedGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  inherited;
  Text := CurrToStrF(Sender.AsVariant, ffCurrency, 0);
end;

procedure TOfficesF.grd1DblClick(Sender: TObject);
begin
  inherited;
  actDocShow.Execute;
end;

procedure TOfficesF.cliOfficeCalcFields(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('_row').AsInteger := DataSet.RecNo;
end;

procedure TOfficesF.grd1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if CtrlDown then
    SumSelected;;
end;

procedure TOfficesF.actPrintExecute(Sender: TObject);
begin
  inherited;
  InitReportFile(ppReport1, 'rptOffices', True);
end;

procedure TOfficesF.ppLBCompanyNameGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TOfficesF.ppLabel1GetText(Sender: TObject; var Text: string);
begin
  inherited;
  Text := edtAccCode.Text + '  ' + edtAccName.Text
end;

procedure TOfficesF.ppLabel3GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := Caption;
end;

procedure TOfficesF.ppDocDateGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TOfficesF.ppSystemVariable2GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text);
end;

procedure TOfficesF.actDesignPrintExecute(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(grd1, 0)
end;

end.
