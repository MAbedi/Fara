unit RptEntiyStuff;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, Grids, DBGrids, ComCtrls, DBCtrls, Mask, DB, ADODB, ppCtrls,
  ppPrnabl, ppClass, ppBands, ppCache, ppComm, ppRelatv, ppProd, ppReport,
  ppDB, ppDBPipe, ppVar, Menus;

type
  TRptEntiyStuffF = class(Ttemplate2MDIF)
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
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLine1: TppLine;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel3: TppLabel;
    actPrint: TAction;
    ppLabel12: TppLabel;
    ppDBPipeline1: TppDBPipeline;
    ppDBPipeline2: TppDBPipeline;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppLabel15: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    BitBtn6: TBitBtn;
    BitBtn1: TBitBtn;
    actsendtoexel: TAction;
    BitBtn3: TBitBtn;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppLine24: TppLine;
    ppLine25: TppLine;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppLine26: TppLine;
    ppLine27: TppLine;
    ppLine28: TppLine;
    ppLine29: TppLine;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppLine33: TppLine;
    ppLine34: TppLine;
    ppLine21: TppLine;
    ppShape2: TppShape;
    ppShape1: TppShape;
    ppShape3: TppShape;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    qryStoren_StoreID: TSmallintField;
    qryStorec_StoreName: TStringField;
    ppLabel16: TppLabel;
    actSort: TAction;
    PopMnuForm: TPopupMenu;
    MenuItem4: TMenuItem;
    N5: TMenuItem;
    N9: TMenuItem;
    MenuItem1: TMenuItem;
    Exel1: TMenuItem;
    N3: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    procedure qryStoreAfterScroll(DataSet: TDataSet);
    procedure qryEntityAfterScroll(DataSet: TDataSet);
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
  private
    { Private declarations }
    procedure UpdateFilter;
  public
    { Public declarations }
  end;

var
  RptEntiyStuffF: TRptEntiyStuffF;

implementation

uses DM, filter_ADO, FilterClass_ADO, GlobalPro, searchCode_ADO, Acts,
  search2, sort2;

{$R *.dfm}

procedure TRptEntiyStuffF.UpdateFilter;
begin
  with qryEntity do begin
    Active:=False;
    Parameters.ParamByName('StoreIDFrom').Value:=GetcFrom(myParams.ParamValues['StoreID'],ftInteger);
    Parameters.ParamByName('StoreIDTo').Value:=GetcTo(myParams.ParamValues['StoreID'],ftInteger);
    Parameters.ParamByName('DateFrom').Value:=GetcFrom(myParams.ParamValues['ReciptDate'],ftDate);
    Parameters.ParamByName('DateTo').Value:=GetcTo(myParams.ParamValues['ReciptDate'],ftDate);
    Parameters.ParamByName('StuffCodeFrom').Value:=GetcFrom(myParams.ParamValues['StuffCode'],ftInteger);
    Parameters.ParamByName('StuffCodeTo').Value:=GetcTo(myParams.ParamValues['StuffCode'],ftInteger);
    lblDate.Caption:='«“ «—ÌŒ'+ qryEntity.Parameters.ParamByName('DateFrom').Value+'  « '+ qryEntity.Parameters.ParamByName('DateTo').Value ;
    Active:=True;
  end;//with
  with qryStore do begin
    Active:=False;
    Parameters.ParamByName('n_StoreIDForm').Value:=GetcFrom(myParams.ParamValues['StoreID'],ftInteger);
    Parameters.ParamByName('n_StoreIDTo').Value:=GetcTo(myParams.ParamValues['StoreID'],ftInteger);
    Active:=True;
  end;//with

end;

procedure TRptEntiyStuffF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self,myParams) do begin
    try
      AddItem(dmf.adcBSell,'StoreID',' «‰»«— ','ﬂœ',ftInteger,dvMinMax,'','',ciLookup,'SELECT n_StoreID, c_StoreName FROM Stores WHERE c_StoreName Like :c','select Min(n_StoreID),Max(n_StoreID) From Stores');
      AddItem(dmf.adcBSell,'StuffCode',' ﬂ«·« ','ﬂœ',ftInteger,dvMinMax,'','',ciLookup,'SELECT c_StuffCode , c_StuffName FROM StuffCoding WHERE c_StuffName Like :c','select Min(c_StuffCode),Max(c_StuffCode) From StuffCoding');
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

procedure TRptEntiyStuffF.qryStoreAfterScroll(DataSet: TDataSet);
begin
  inherited;
  With qryEntity do begin
    Active:=False;
    Parameters.ParamByName('StoreIDFrom').Value:=qryStore.FieldByName('n_StoreID').AsInteger;
    Parameters.ParamByName('StoreIDTo').Value:=qryStore.FieldByName('n_StoreID').AsInteger;
    Active:=True;
  end;//With

end;

procedure TRptEntiyStuffF.qryEntityAfterScroll(DataSet: TDataSet);
begin
  inherited;
  StatusBar1.Panels[1].Text:=' ⁄œ«œ ﬂ«·« : '+IntToStr(qryEntity.RecordCount);

end;


procedure TRptEntiyStuffF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  actFilter.Execute;
  if myParams.FindParam('ReciptDate')=nil then close;
end;

procedure TRptEntiyStuffF.SBtnStoreIDClick(Sender: TObject);
var
  c:  String;
begin
  inherited;

  if searchCode_ADOF.SearchCode(DMF.adcBSell,C,LblStore.Caption+'Â«', 'SELECT n_StoreID, c_StoreName FROM Stores ORDER BY n_StoreID',
    ['òœ','‰«„ '+LblStore.Caption],alLeft)<>'' then
    qryStore.Locate('n_StoreID',c,[]);
end;



procedure TRptEntiyStuffF.ppLabel11GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text:='«“ ﬂœ ﬂ«·«Ì '+ IntToStr( qryEntity.Parameters.ParamByName('StuffCodeFrom').Value)+'  « '+IntToStr( qryEntity.Parameters.ParamByName('StuffCodeTo').Value) ;
end;

procedure TRptEntiyStuffF.ppLabel3GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text:=GetPrintDate;
end;


procedure TRptEntiyStuffF.ppSystemVariable1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text:=GetPageNumberString(Text);
end;

procedure TRptEntiyStuffF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1,1,True);
end;

procedure TRptEntiyStuffF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
end;

procedure TRptEntiyStuffF.actsendtoexelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(qryEntity);
end;

procedure TRptEntiyStuffF.actPrintExecute(Sender: TObject);
begin
  inherited;
  ppReport1.Print;
end;

procedure TRptEntiyStuffF.ppLabel16GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text:='«“  «—ÌŒ'+qryEntity.Parameters.ParamByName('DateFrom').Value+'  « '+qryEntity.Parameters.ParamByName('DateTo').Value ;
end;

procedure TRptEntiyStuffF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryEntity);
end;

procedure TRptEntiyStuffF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryEntity);
end;

end.
