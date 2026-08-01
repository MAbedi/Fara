{ -----------------------------------------------------------------------------
  Unit Name: UseUnits
  Author:    Mahmood
  Purpose:
  History:  84/03/01
  ----------------------------------------------------------------------------- }
unit UseUnits;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, DBCtrls, Grids, Vcl.DBGrids, ppCtrls, ppBands,
  ppVar, ppPrnabl, ppClass, ppCache, ppProd, ppReport, ppDB, ppComm,
  ppRelatv, ppDBPipe, DB, ADODB, ImgList, DBActns, ActnList, StdCtrls,
  ExtCtrls, Buttons, ppParameter, MyComboBoxUnit, ppDesignLayer,
  System.ImageList, System.Actions;

type
  TUseUnitsF = class(Ttemplate2MDIF)
    qryUseUnits: TADOQuery;
    srcUseUnits: TDataSource;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel10: TppLabel;
    ppHeaderBand1: TppHeaderBand;
    ppLabel6: TppLabel;
    ppLabel3: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLabel12: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppLine4: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppLabel13: TppLabel;
    ppDBCalc2: TppDBCalc;
    ppLine3: TppLine;
    ppLine6: TppLine;
    DBGrid1: TDBGrid;
    newPanel: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    okPanel: TPanel;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    DBNavigator1: TDBNavigator;
    BitBtn1: TBitBtn;
    BitBtn12: TBitBtn;
    BitBtn9: TBitBtn;
    qryUseUnitsUseUnitID: TIntegerField;
    qryUseUnitsUseUnitName: TStringField;
    actSendExel: TAction;
    actPrint: TAction;
    actSort: TAction;
    qryUseUnitsIndexNum: TStringField;
    qryUseUnitsNote: TStringField;
    qryUseUnitsProjectID: TIntegerField;
    qryUseUnits_ProjectName: TStringField;
    qryUseUnitsacc_DetailCode: TStringField;
    qryUseUnitsacc_CTopicCode: TStringField;
    qryUseUnitsacc_CTopicCode3: TStringField;
    qryUseUnits_MoeenName: TStringField;
    qryUseUnits_DetailName: TStringField;
    qryUseUnits_CTopicName: TStringField;
    qryUseUnits_CTopicName3: TStringField;
    BitBtn2: TBitBtn;
    qryUseUnitsUseActive: TWordField;
    actGetExcel: TAction;
    yrcmbx1: TYearComboBox;
    qryUseUnitsYearID: TIntegerField;
    qryUseUnitsacc_CTopicCode2: TStringField;
    qryUseUnits_CTopicName2: TStringField;
    qryUseUnitsacc_TopicCode: TLargeintField;
    qryUseUnitsCustID1: TIntegerField;
    qryUseUnitsCustID2: TIntegerField;
    qryUseUnits_CustID1: TStringField;
    qryUseUnits_CustID2: TStringField;
    qryUseUnitsCustID3: TIntegerField;
    qryUseUnits_CustID3: TStringField;
    qryUseUnitsCustID4: TIntegerField;
    qryUseUnits_CustID4: TStringField;
    procedure qryUseUnitsAfterInsert(DataSet: TDataSet);
    procedure qryUseUnitsAfterPost(DataSet: TDataSet);
    procedure qryUseUnitsAfterEdit(DataSet: TDataSet);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure srcUseUnitsStateChange(Sender: TObject);
    procedure qryUseUnitsBeforeDelete(DataSet: TDataSet);
    procedure actSendExelExecute(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure qryUseUnitsBeforePost(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure ppLabel10GetText(Sender: TObject; var Text: String);
    procedure ppSystemVariable1GetText(Sender: TObject; var Text: String);
    procedure ppLabel1GetText(Sender: TObject; var Text: String);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure actSearch_Execute(Sender: TObject);
    procedure qryUseUnitsUseActiveGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure actGetExcelExecute(Sender: TObject);
    procedure yrcmbx1YearChangeID(Sender: TObject);
    procedure qryUseUnitsBeforeInsert(DataSet: TDataSet);
  private
    YearID: Integer;
    Get_Excel: Boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  UseUnitsF: TUseUnitsF;

implementation

uses DM, mmessage, GlobalPro, UseUnitsNewEdit, search2, sort2,
  GetExcel, FormFunctions;

{$R *.dfm}

procedure TUseUnitsF.qryUseUnitsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  if opt.UseUnitsYearID then
    DataSet.FieldByName('YearID').AsInteger := yrcmbx1.YearID
  else
  begin
    if YearID <> 0 then
      DataSet.FieldByName('YearID').AsInteger := YearID
    else
      DataSet.FieldByName('YearID').AsInteger := APPBank.Year;
  end;

  DataSet.FieldByName('UseUnitID').AsInteger :=
    GetANewCode(Self.Name, 'UseUnits', 'UseUnitID');
  DataSet.FieldByName('acc_TopicCode').AsInteger := 0;
  DataSet.FieldByName('acc_DetailCode').AsInteger := 0;
  DataSet.FieldByName('acc_CTopicCode').AsInteger := 0;
  DataSet.FieldByName('acc_CTopicCode2').AsInteger := 0;
  DataSet.FieldByName('acc_CTopicCode3').AsInteger := 0;
  if Not Get_Excel then
    UseUnitsNewEditF.enter(dsInsert);
  // editNewF.show(srcUseUnits,dsInsert,[qryUseUnitsUseUnitID,qryUseUnitsUseUnitName]);
end;

procedure TUseUnitsF.qryUseUnitsAfterPost(DataSet: TDataSet);
begin
  inherited;
  UseUnitsToCenterTopic(qryUseUnits);
  if Not Get_Excel then
    BigMessage('À»  ‘œ.', 1);
end;

procedure TUseUnitsF.qryUseUnitsAfterEdit(DataSet: TDataSet);
begin
  inherited;
  // editNewF.show(srcUseUnits,dsEdit,[qryUseUnitsUseUnitID,qryUseUnitsUseUnitName]);
  if Not Get_Excel then
    UseUnitsNewEditF.enter(dsEdit);
end;

procedure TUseUnitsF.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  DataSetEdit1.Execute;
end;

procedure TUseUnitsF.FormCreate(Sender: TObject);
begin
  inherited;
  Get_Excel := False;
  if opt.UseUnitsYearID then
    qryUseUnits.SQL.Add('where YearID = :YearID');

  setColumns2(DBGrid1, opt.UseUnitsYearID, 'YearID');

  yrcmbx1.YearsParam := APPBank.Year;
  yrcmbx1.YearID := APPBank.Year;
  SetLookUpCash(qryUseUnits);
  // qryUseUnits.Active:=True;
end;

procedure TUseUnitsF.srcUseUnitsStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible := qryUseUnits.State in dsEditModes;
  newPanel.Visible := not okPanel.Visible;
  BtnReject.Cancel := newPanel.Visible;
  FreeReservedCodes(DMf.adcBSell, '', '', Self.Name);
end;

procedure TUseUnitsF.yrcmbx1YearChangeID(Sender: TObject);
begin
  inherited;
  with qryUseUnits Do
  begin
    Active := False;
    if opt.UseUnitsYearID then
      Parameters.ParamByName('YearID').Value := yrcmbx1.YearID;
    Active := true;
  end;
end;

procedure TUseUnitsF.qryUseUnitsBeforeDelete(DataSet: TDataSet);
var
  canDel: Boolean;
begin
  inherited;
  with DMf.qryTmpTmp do
  begin
    Active := False;
    SQL.Text := 'SELECT COUNT(ReciptID)FROM Recipts WHERE UseUnitID  =' +
      qryUseUnitsUseUnitID.AsString;
    Active := true;
    canDel := Fields[0].AsInteger = 0;
    Active := False;
  end; // with
  if canDel then
  begin
    if get_response('¬Ì« »—«Ì Õ–› «Ì‰ „Õ· „’—› „ÿ„∆‰ Â” Ìœø') <> mrYes then
      Abort;
  end
  else
  begin
    Warn('Õ–› «Ì‰ „Õ· „’—› „Ã«“ ‰Ì” .');
    Abort;
  end; // else
end;

procedure TUseUnitsF.qryUseUnitsBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  YearID := qryUseUnitsYearID.AsInteger;
end;

procedure TUseUnitsF.actSendExelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TUseUnitsF.actPrintExecute(Sender: TObject);
begin
  inherited;
  ppReport1.Print
end;

procedure TUseUnitsF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryUseUnits);
end;

procedure TUseUnitsF.qryUseUnitsBeforePost(DataSet: TDataSet);
begin
  inherited;
  if Not Get_Excel then
    if get_response(' €ÌÌ—«  –ŒÌ—Â ‘Ê‰œø') <> mrYes then
      Abort;
  if not CheckRequiredFields(qryUseUnits) then
    Abort;
  TrimStringFields(qryUseUnits);
end;

procedure TUseUnitsF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
end;

procedure TUseUnitsF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 3);
end;

procedure TUseUnitsF.ppLabel10GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := GetPrintDate
end;

procedure TUseUnitsF.ppSystemVariable1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TUseUnitsF.ppLabel1GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TUseUnitsF.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  if not(gdSelected in State) then
  begin
    if odd(DBGrid1.DataSource.DataSet.RecNo) then
      DBGrid1.Canvas.Brush.Color := const_fixed_columns_color;
  end; // if
  DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TUseUnitsF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryUseUnits);
end;

procedure TUseUnitsF.qryUseUnitsUseActiveGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  case Sender.AsInteger of
    0:
      Text := '›⁄«·';
    1:
      Text := '€Ì—›⁄«·';
  end; // case

end;

procedure TUseUnitsF.actGetExcelExecute(Sender: TObject);
begin
  inherited;
  try
    Get_Excel := true;
    GetExcelF.ShowImPortExcel(qryUseUnits);
  finally
    Get_Excel := False;
  end;

end;

end.
