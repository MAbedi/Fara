unit ListPensioner;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, DB, ADODB, ImgList, DBActns, ActnList, StdCtrls,
  ExtCtrls, Buttons, ComCtrls, ToolWin, Grids, Vcl.DBGrids,
  DBCtrls, ppDB, ppDBPipe, ppBands, ppCtrls, myChkBox, ppPrnabl,
  ppClass, ppCache, ppComm, ppRelatv, ppProd, ppReport, ppVar, ppStrtch,
  ppMemo, ppModule, Dbf, Menus, ppParameter, ppDesignLayer, System.ImageList,
  System.Actions;

type
  TListPensionerF = class(Ttemplate2MDIF)
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    ToolButton11: TToolButton;
    ToolButton12: TToolButton;
    actFilter: TAction;
    actPrint: TAction;
    BitBtn1: TBitBtn;
    ppDBListPensioner: TppDBPipeline;
    BitBtn2: TBitBtn;
    StatusBar1: TStatusBar;
    actSort: TAction;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    ppReport1: TppReport;
    BitBtn6: TBitBtn;
    actSendExel: TAction;
    PopList4Print: TPopupMenu;
    AllClikPop: TMenuItem;
    SrcListPensioner: TDataSource;
    qryListPensioner: TADOQuery;
    qryListPensionerInfoName_L1: TStringField;
    qryListPensionerPensioner: TBCDField;
    qryListPensionerOldPensioner: TStringField;
    qryListPensionerPayPensioner: TStringField;
    qryListPensionerInfoName_L2: TStringField;
    DBGrid1: TDBGrid;
    BtnshowGrid2Print: TBitBtn;
    ppHeaderBand1: TppHeaderBand;
    ppShape1: TppShape;
    ppLblCompanyName: TppLabel;
    ppLblCaption: TppLabel;
    ppSysVarPageNo: TppSystemVariable;
    ppLblPrintDate: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppLine11: TppLine;
    ppLin4Position: TppLine;
    ppFooterBand1: TppFooterBand;
    ppShape2: TppShape;
    ppLabel4: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppShape3: TppShape;
    ppLabel2: TppLabel;
    qryListPensionerShowListKind: TIntegerField;
    ppLblLongMonthNames: TppLabel;
    BtnppDesigner: TBitBtn;
    CmbArchiveID: TComboBox;
    procedure ToolButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure ppSystemVariable1GetText(Sender: TObject; var Text: String);
    procedure ppLabel23GetText(Sender: TObject; var Text: String);
    procedure ppLabel13GetText(Sender: TObject; var Text: String);
    procedure qryPersonelsAfterOpen(DataSet: TDataSet);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure ppDBText16GetText(Sender: TObject; var Text: String);
    procedure actSortExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSendExelExecute(Sender: TObject);
    procedure AllClikPopClick(Sender: TObject);
    procedure BtnshowGrid2PrintClick(Sender: TObject);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure ppLblPrintDateGetText(Sender: TObject; var Text: String);
    procedure ppSysVarPageNoGetText(Sender: TObject; var Text: String);
    procedure qryListPensionerAfterOpen(DataSet: TDataSet);
    procedure ppLblLongMonthNamesGetText(Sender: TObject; var Text: String);
    procedure CmbArchiveIDChange(Sender: TObject);
  private
    { Private declarations }
    MonthNo: Byte;
    FormType: Integer;
    procedure UpdateList;
  public
    { Public declarations }
  end;

var
  ListPensionerF: TListPensionerF;

implementation

uses DM, filter_ADO, FilterClass_ADO, GlobalPro,
  search2, sort2, DBGrid2Print, SalaryFunctions;

{$R *.dfm}

procedure TListPensionerF.ToolButton1Click(Sender: TObject);
begin
  inherited;
  MonthNo := (Sender as TToolButton).tag;
  InitCmbArchiveID(CmbArchiveID, MonthNo);
  UpdateList;
end;

procedure TListPensionerF.FormCreate(Sender: TObject);
begin
  inherited;
  FormType := var_glb_gParam;
  MonthNo := var_glb_CurrentMonth;
  InitCmbArchiveID(CmbArchiveID, MonthNo);
  ToolBar1.Buttons[MonthNo - 1].Down := True;
end;

procedure TListPensionerF.actFilterExecute(Sender: TObject);
var
  s: string;
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      AddItem(DMf.adcSalary, 'ArchiveID', ' ‘„«—Â »«Ìê«‰Ì', '‘„«—Â', ftInteger,
        dvDefaults, '0', '', ciSingle, '', '');
      // AddItem(DMF.adcSalary,'BimehID','‰Ê⁄ »Ì„Â','',ftInteger,dvDefaults,'','',ciCombo,
      // ' SELECT   insuranceNo, insurancename FROM Pay.InsuranceCONSTinfo  ','');

      AddItem(DMf.adcSalary, 'BimehType', '‰Ê⁄ »Ì„Â', 'ﬂœ', ftInteger, dvMinMax,
        '', '', ciLookup,
        'SELECT InsuranceCONSTinfo.insuranceNo, InsuranceCONSTinfo.insurancename FROM Pay.InsuranceCONSTinfo INNER JOIN Pay.FormsInfo ON InsuranceCONSTinfo.FormInfoID = FormsInfo.FormInfoID WHERE     (InsuranceCONSTinfo.FormInfoID > 0)',
        'SELECT Min(InsuranceCONSTinfo.insuranceNo),max(InsuranceCONSTinfo.insuranceNo) FROM Pay.InsuranceCONSTinfo INNER JOIN Pay.FormsInfo ON InsuranceCONSTinfo.FormInfoID = FormsInfo.FormInfoID WHERE     (InsuranceCONSTinfo.FormInfoID > 0)');
      if ShowModal = mrOk then
      begin
        GetFilterString;
        UpdateList;
      end; // if
    finally
      Free;
    end; // try
  end; // with
end;

procedure TListPensionerF.FormShow(Sender: TObject);
begin
  inherited;
  ColorDBGrid(DBGrid1);
  actFilter.Execute;
  if myParams.FindParam('ArchiveID') = nil then
    close
  else
    CmbArchiveID.ItemIndex := GetcFrom(myParams.ParamValues['ArchiveID'],
      ftInteger);
end;

procedure TListPensionerF.UpdateList;
begin
  GetYearMounth(MonthNo);
  with qryListPensioner do
  begin
    Active := false;
    Parameters.ParamByName('MonthNo').Value := MonthNo;
    Parameters.ParamByName('ArchiveID').Value :=
      Integer(CmbArchiveID.Items.Objects[CmbArchiveID.ItemIndex]);
    Parameters.ParamByName('FormType').Value := FormType;
    Parameters.ParamByName('MonthNo2').Value := MonthNo;
    Parameters.ParamByName('ArchiveID2').Value :=
      Integer(CmbArchiveID.Items.Objects[CmbArchiveID.ItemIndex]);
    // Parameters.ParamByName('BimehID').Value:=GetcTo(myParams.ParamValues['BimehID'],ftInteger);
    Parameters.ParamByName('insuranceIDFrom').Value :=
      GetcFrom(myParams.ParamValues['BimehType'], ftInteger);
    Parameters.ParamByName('insuranceIDTo').Value :=
      GetcTo(myParams.ParamValues['BimehType'], ftInteger);
    Parameters.ParamByName('insuranceIDFrom2').Value :=
      GetcFrom(myParams.ParamValues['BimehType'], ftInteger);
    Parameters.ParamByName('insuranceIDTo2').Value :=
      GetcTo(myParams.ParamValues['BimehType'], ftInteger);
    Active := True;
    // ShowQryParam(qryListPensioner);
    actPrint.Enabled := not IsEmpty;
  end; // with

end;

procedure TListPensionerF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1, IntToStr(FormType));
end;

procedure TListPensionerF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 1, false, IntToStr(FormType));
end;

procedure TListPensionerF.actPrintExecute(Sender: TObject);
begin
  inherited;
  try
    MakeMenuItem(FormType, AllClikPopClick, PopList4Print);
    PopList4Print.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
  finally
  end;
end;

procedure TListPensionerF.ppSystemVariable1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TListPensionerF.ppLabel23GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text :=  optP.Year;
end;

procedure TListPensionerF.ppLabel13GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := Month2Names(MonthNo)
end;

procedure TListPensionerF.qryPersonelsAfterOpen(DataSet: TDataSet);
begin
  inherited;
  StatusBar1.Panels[2].Text := ' ⁄œ«œ Å—”‰· = ' + IntToStr(DataSet.RecordCount);
end;

procedure TListPensionerF.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  if not(gdSelected in State) then
  begin
    if odd(DBGrid1.DataSource.DataSet.RecNo) then
      DBGrid1.Canvas.Brush.Color := const_fixed_columns_color;
  end; // if
  DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TListPensionerF.ppDBText16GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := Text + #254;
end;

procedure TListPensionerF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryListPensioner);
end;

procedure TListPensionerF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryListPensioner);
end;

procedure TListPensionerF.actSendExelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TListPensionerF.AllClikPopClick(Sender: TObject);
begin
  inherited;
  InitReportFile(ppReport1, (Sender as TMenuItem).Hint);
end;

procedure TListPensionerF.BtnshowGrid2PrintClick(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(DBGrid1, FormType);
end;

procedure TListPensionerF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TListPensionerF.ppLblPrintDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TListPensionerF.ppSysVarPageNoGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TListPensionerF.qryListPensionerAfterOpen(DataSet: TDataSet);
begin
  inherited;
  StatusBar1.Panels[0].Text :=
    CurrToStrF(CalcSumFileds(qryListPensionerPensioner), ffCurrency, 0)
end;

procedure TListPensionerF.ppLblLongMonthNamesGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := ToolBar1.Buttons[MonthNo - 1].Caption + ' „«Â ' + optP.Year;
end;

procedure TListPensionerF.CmbArchiveIDChange(Sender: TObject);
begin
  inherited;
  UpdateList;
end;

end.
