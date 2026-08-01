unit RptEntiyStuff_UnitCode;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, Grids, DBGrids, ComCtrls, DBCtrls, Mask, DB, ADODB, ppCtrls,
  ppPrnabl, ppClass, ppBands, ppCache, ppComm, ppRelatv, ppProd, ppReport,
  ppDB, ppDBPipe, ppVar, Menus, ppStrtch, ppSubRpt;

type
  TRptEntiyStuff_UnitCodeF = class(Ttemplate2MDIF)
    StatusBar1: TStatusBar;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    SrcEntity: TDataSource;
    qryStore: TADOQuery;
    qryEntity: TADOQuery;
    SBtnStoreID: TSpeedButton;
    EdtStoreID: TDBEdit;
    LblStore: TLabel;
    DBTextStoreID: TDBText;
    lblDate: TLabel;
    qryEntityStoreID: TSmallintField;
    qryEntityStuffCode: TIntegerField;
    qryEntityc_StuffName: TStringField;
    qryEntityUnitName: TStringField;
    qryEntityEntity: TFloatField;
    qryEntityWeight: TFloatField;
    qryEntityPrice: TBCDField;
    SrcStore: TDataSource;
    actFilter: TAction;
    BitBtn2: TBitBtn;
    BitBtn7: TBitBtn;
    DBNavigator2: TDBNavigator;
    ppReport1: TppReport;
    actPrint: TAction;
    ppDBPipeline1: TppDBPipeline;
    ppDBPipeline2: TppDBPipeline;
    BitBtn6: TBitBtn;
    BitBtn1: TBitBtn;
    actsendtoexel: TAction;
    BitBtn3: TBitBtn;
    qryStoren_StoreID: TSmallintField;
    qryStorec_StoreName: TStringField;
    actSort: TAction;
    qryEntityProductModel: TIntegerField;
    qryinit: TADOQuery;
    StatusBar2: TStatusBar;
    qryEntity_ROW: TIntegerField;
    qryEntityUseUnitID: TIntegerField;
    qryEntityUseUnitName: TStringField;
    qryEntitymodelName: TStringField;
    ppHeaderBand1: TppHeaderBand;
    ppShape2: TppShape;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLine1: TppLine;
    ppLabel4: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel3: TppLabel;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppSystemVariable1: TppSystemVariable;
    ppLabel5: TppLabel;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLine7: TppLine;
    ppLabel18: TppLabel;
    ppLine11: TppLine;
    ppLine13: TppLine;
    ppLabel19: TppLabel;
    ppLine14: TppLine;
    ppLabel20: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppDetailBand2: TppDetailBand;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppLine24: TppLine;
    ppLine25: TppLine;
    ppLine33: TppLine;
    ppDBText7: TppDBText;
    ppDBText6: TppDBText;
    ppDBText5: TppDBText;
    ppDBText2: TppDBText;
    ppDBText8: TppDBText;
    ppDBText1: TppDBText;
    ppLine3: TppLine;
    ppDBText9: TppDBText;
    ppLine10: TppLine;
    ppDBText10: TppDBText;
    ppLine12: TppLine;
    ppDBText11: TppDBText;
    ppLine15: TppLine;
    ppDBText12: TppDBText;
    ppLine16: TppLine;
    ppLine2: TppLine;
    ppSummaryBand2: TppSummaryBand;
    ppShape3: TppShape;
    ppLine26: TppLine;
    ppLine28: TppLine;
    ppDBCalc1: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppLine34: TppLine;
    ppLabel12: TppLabel;
    ppDBCalc7: TppDBCalc;
    ppLabel14: TppLabel;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    procedure qryStoreAfterScroll(DataSet: TDataSet);
    procedure actFilterExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SBtnStoreIDClick(Sender: TObject);
    procedure ppLabel11GetText(Sender: TObject; var Text: String);
    procedure ppLabel3GetText(Sender: TObject; var Text: String);
    procedure ppSystemVariable1GetText(Sender: TObject; var Text: String);
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actsendtoexelExecute(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure ppLabel16GetText(Sender: TObject; var Text: String);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure qryEntityCalcFields(DataSet: TDataSet);
    procedure qryEntityAfterOpen(DataSet: TDataSet);
    procedure ppLabel1GetText(Sender: TObject; var Text: String);
  private
     formType:byte;
     sumEntity:currency;
     sumWeight:currency;
     sumPrice:currency;
    { Private declarations }
    procedure UpdateFilter;
  public
    { Public declarations }
  end;

var
  RptEntiyStuff_UnitCodeF: TRptEntiyStuff_UnitCodeF;

implementation

uses DM, filter_ADO, FilterClass_ADO, GlobalPro, searchCode_ADO,
  search2, sort2, Math;

{$R *.dfm}

procedure TRptEntiyStuff_UnitCodeF.UpdateFilter;
begin
  with qryEntity do begin
    Active:=False;
    Parameters.ParamByName('UseUnitIDFrom').Value:=GetcFrom(myParams.ParamValues['UseUnitID'],ftInteger);
    Parameters.ParamByName('UseUnitIDTo').Value:=GetcTo(myParams.ParamValues['UseUnitID'],ftInteger);
    Parameters.ParamByName('StoreIDFrom').Value:=GetcFrom(myParams.ParamValues['StoreID'],ftInteger);
    Parameters.ParamByName('StoreIDTo').Value:=GetcTo(myParams.ParamValues['StoreID'],ftInteger);
    Parameters.ParamByName('DateFrom').Value:=GetcFrom(myParams.ParamValues['ReciptDate'],ftDate);
    Parameters.ParamByName('DateTo').Value:=GetcTo(myParams.ParamValues['ReciptDate'],ftDate);
    Parameters.ParamByName('StuffCodeFrom').Value:=GetcFrom(myParams.ParamValues['StuffCode'],ftInteger);
    Parameters.ParamByName('StuffCodeTo').Value:=GetcTo(myParams.ParamValues['StuffCode'],ftInteger);
    Parameters.ParamByName('ModelFrom').Value:=GetcFrom(myParams.ParamValues['Model'],ftInteger);
    Parameters.ParamByName('ModelTo').Value:=GetcTo(myParams.ParamValues['Model'],ftInteger);
    lblDate.Caption:='«“ «—ÌŒ'+ qryEntity.Parameters.ParamByName('DateFrom').Value+'  « '+ qryEntity.Parameters.ParamByName('DateTo').Value ;
  end;//with
  with qryStore do begin
    Active:=False;
    Parameters.ParamByName('n_StoreIDForm').Value:=GetcFrom(myParams.ParamValues['StoreID'],ftInteger);
    Parameters.ParamByName('n_StoreIDTo').Value:=GetcTo(myParams.ParamValues['StoreID'],ftInteger);
    Active:=True;
  end;//with

end;

procedure TRptEntiyStuff_UnitCodeF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self,myParams) do begin
    try
      AddItem(dmf.adcBSell,'Model','„œ· ﬂ«·« ',' ﬂœ „œ·',ftInteger,dvMinMax,'','',ciLookup,'SELECT LookUpID, Name FROM  dbo.LookUps ','select Min(LookUpID),Max(LookUpID) From dbo.LookUps');
      AddItem(dmf.adcBSell,'StuffCode',' ﬂ«·« ','ﬂœ',ftInteger,dvMinMax,'','',ciLookup,'SELECT c_StuffCode , c_StuffName FROM StuffCoding ','select Min(c_StuffCode),Max(c_StuffCode) From StuffCoding');
      AddItem(dmf.adcBSell,'StoreID',' «‰»«— ','ﬂœ',ftInteger,dvMinMax,'','',ciLookup,'SELECT n_StoreID, c_StoreName FROM Stores ','select Min(n_StoreID),Max(n_StoreID) From Stores');
      AddItem(dmf.adcBSell,'UseUnitID','„Õ· „’—›','ﬂœ',ftInteger,dvMinMax,'','',ciLookup,
             'SELECT  UseUnitID, UseUnitName FROM  dbo.UseUnits ',
             'select Min(UseUnitID),Max(UseUnitID) From  dbo.UseUnits');
      AddItem(DMF.adcBSell,'ReciptDate','  «—ÌŒ ',' «—ÌŒ',ftDate,dvMinMax,'','',ciSimple, '','Select Min(ReciptDate),Max(ReciptDate) from Recipts ');
     if ShowModal=mrOk then begin
        GetFilterString;
        UpdateFilter;
     end;//if
    finally
     Free;
    end;//try
  end;//with
end;

procedure TRptEntiyStuff_UnitCodeF.qryStoreAfterScroll(DataSet: TDataSet);
begin
  inherited;
  With qryEntity do begin
    Active:=False;
    Parameters.ParamByName('StoreIDFrom').Value:=qryStore.FieldByName('n_StoreID').AsInteger;
    Parameters.ParamByName('StoreIDTo').Value:=qryStore.FieldByName('n_StoreID').AsInteger;
    Active:=True;
  end;//With

end;

procedure TRptEntiyStuff_UnitCodeF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  actFilter.Execute;
  if myParams.FindParam('ReciptDate')=nil then close;
end;

procedure TRptEntiyStuff_UnitCodeF.SBtnStoreIDClick(Sender: TObject);
var
  c:  String;
begin
  inherited;

  if searchCode_ADOF.SearchCode(DMF.adcBSell,C,LblStore.Caption+'Â«', 'SELECT n_StoreID, c_StoreName FROM Stores ORDER BY n_StoreID',
    ['òœ','‰«„ '+LblStore.Caption],alLeft)<>'' then
    qryStore.Locate('n_StoreID',c,[]);
end;



procedure TRptEntiyStuff_UnitCodeF.ppLabel11GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text:='«“ ﬂœ ﬂ«·«Ì '+ IntToStr( qryEntity.Parameters.ParamByName('StuffCodeFrom').Value)+'  « '+IntToStr( qryEntity.Parameters.ParamByName('StuffCodeTo').Value) ;
end;

procedure TRptEntiyStuff_UnitCodeF.ppLabel3GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text:=GetPrintDate;
end;


procedure TRptEntiyStuff_UnitCodeF.ppSystemVariable1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text:=GetPageNumberString(Text);
end;

procedure TRptEntiyStuff_UnitCodeF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1,1,True);
end;

procedure TRptEntiyStuff_UnitCodeF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
end;

procedure TRptEntiyStuff_UnitCodeF.actsendtoexelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(qryEntity);
end;

procedure TRptEntiyStuff_UnitCodeF.actPrintExecute(Sender: TObject);
begin
  inherited;
  ppReport1.Print;
end;

procedure TRptEntiyStuff_UnitCodeF.ppLabel16GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text:='«“  «—ÌŒ'+qryEntity.Parameters.ParamByName('DateFrom').Value+'  « '+qryEntity.Parameters.ParamByName('DateTo').Value ;
end;

procedure TRptEntiyStuff_UnitCodeF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryEntity);
end;

procedure TRptEntiyStuff_UnitCodeF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryEntity);
end;

procedure TRptEntiyStuff_UnitCodeF.FormCreate(Sender: TObject);
begin
  inherited;
  //mary
  formType:=var_glb_gParam;
  with qryinit do begin
    Active:=False;
    Parameters.ParamByName('ReciptType').Value:=formType;
    Active:=True;
  //             < „ﬁœ«— ° Ê“‰ Ê »Â«Ì ﬂ· «’·Ì ‰„«Ì‘ ‘Êœ >
    DBGrid1.Columns[7].Visible:=FieldByName('Section1Visible').AsInteger=1;
    DBGrid1.Columns[8].Visible:=FieldByName('Section1Visible').AsInteger=1;
    DBGrid1.Columns[9].Visible:=FieldByName('Section1Visible').AsInteger=1;
  end;//with
  Entity_Weight(DBGrid1);
  //
end;

procedure TRptEntiyStuff_UnitCodeF.DBGrid1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if DBGrid1.SelectedRows.Count>1 then begin
    if (Button=mbleft) and (Shift=[ssctrl] )then
      if DBGrid1.SelectedRows.CurrentRowSelected  then begin
        sumEntity:=sumEntity+qryEntity.Fieldbyname('Entity').AsCurrency;
        sumWeight:=sumWeight+qryEntity.fieldbyname('Weight').AsCurrency;
        sumPrice:=sumPrice+qryEntity.fieldbyname('Price').AsCurrency;
      end else begin
        sumEntity:=sumEntity-qryEntity.Fieldbyname('Entity').AsCurrency;
        sumWeight:=sumWeight-qryEntity.fieldbyname('Weight').AsCurrency;
        sumPrice:=sumPrice-qryEntity.fieldbyname('Price').AsCurrency;
      end
  end
   else begin
       sumEntity:=qryEntity.Fieldbyname('Entity').AsCurrency;
       sumWeight:=qryEntity.fieldbyname('Weight').AsCurrency;
       sumPrice:=qryEntity.fieldbyname('Price').AsCurrency;
   end;
  if DBGrid1.SelectedRows.CurrentRowSelected=false  then begin
     if DBGrid1.SelectedRows.Count>0 then
       qryEntity.GotoBookmark(pointer(DBGrid1.SelectedRows[DBGrid1.SelectedRows.Count-1]));
//     if DBGrid1.SelectedRows.Count=1 then
//       sumAmount:=qryCheck.Fieldbyname('ItemAmount').AsInteger;
  end;
  if opt.EntityDisplay then
   StatusBar2.Panels[2].Text:='„ﬁœ«—='+CurrToStrF(sumEntity,ffCurrency,0);
  if opt.WeightDisplay then
   StatusBar2.Panels[1].Text:='Ê“‰='+CurrToStrF(sumWeight,ffCurrency,0);
  StatusBar2.Panels[0].Text:=CurrToStrF(sumPrice,ffCurrency,0) + ' —Ì«· ';
  StatusBar2.Panels[3].Text:=' ⁄œ«œ ”ÿ—=  '+IntToStr(DBGrid1.SelectedRows.count);;
end;

procedure TRptEntiyStuff_UnitCodeF.qryEntityCalcFields(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('_row').AsInteger:=IfThen(DataSet.RecNo<>-1,DataSet.RecNo,1);
end;

procedure TRptEntiyStuff_UnitCodeF.qryEntityAfterOpen(DataSet: TDataSet);
begin
  inherited;
  StatusBar1.Panels[4].Text:='Ã„⁄ ﬂ· ';
  StatusBar1.Panels[3].Text:=' ⁄œ«œ ﬂ«·« : '+IntToStr(qryEntity.RecordCount);
  if opt.EntityDisplay then
    StatusBar1.Panels[2].Text:='„ﬁœ«—='+CurrToStr(CalcSumFileds(qryEntity, 'entity'));
  if opt.WeightDisplay then
    StatusBar1.Panels[1].Text:='Ê“‰='+CurrToStr(CalcSumFileds(qryEntity,'weight'));
  if PriceOnStoreType(qryStore.fieldbyname('n_storeid').AsInteger,DBGrid1) then
    StatusBar1.Panels[0].Text:=CurrToStrF(CalcSumFileds(qryEntity,'Price'),ffCurrency,0) + ' —Ì«· '
  else StatusBar1.Panels[0].Text:='';

  if  ((DBGrid1.SelectedRows.Count = 1) or ((DBGrid1.SelectedRows.Count =0))and (qryEntity.RecordCount<>0)) then begin
    StatusBar2.Panels[3].Text:='  ⁄œ«œ ”ÿ— «‰ Œ«»Ì= 1';
   if opt.EntityDisplay then
     StatusBar2.Panels[2].text:='„ﬁœ«—='+CurrToStrF(DataSet.fieldbyname('entity').AsCurrency,ffCurrency,0)  ;
   if opt.WeightDisplay then
     StatusBar2.Panels[1].text:='Ê“‰='+CurrToStrF(DataSet.fieldbyname('weight').AsCurrency,ffCurrency,0)  ;
    StatusBar2.Panels[0].text:=CurrToStrF(DataSet.fieldbyname('Price').AsCurrency,ffCurrency,0) + ' —Ì«· '  ;
  end;

end;

procedure TRptEntiyStuff_UnitCodeF.ppLabel1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
    text:= APPBank.CompanyName ;
end;

end.
