// mahmood
unit rptStuffGroupsMonths;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, ADODB, DBCtrls, Grids, Vcl.DBGrids, ppDB, ppDBPipe, ppModule,
  ppStrtch, ppRegion, ppVar, ppCtrls, ppBands, ppPrnabl, ppClass,
  ppCache, ppComm, ppRelatv, ppProd, ppReport, SumDBGrid, ppParameter,
  ppDesignLayer, System.ImageList, System.Actions;

type
  TrptStuffGroupsMonthsF = class(Ttemplate2MDIF)
    SrcStuffGroups: TDataSource;
    qryStuffGroups: TADOQuery;
    DBGrid1: TDBGrid;
    BitBtn7: TBitBtn;
    DBNavigator1: TDBNavigator;
    BitBtn4: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn5: TBitBtn;
    actFilter: TAction;
    qryStuffGroupsGroupName: TStringField;
    qryStuffGroupsReciptType: TWordField;
    qryStuffGroupsReciptCaption: TStringField;
    actSendExel: TAction;
    qryInitQry: TADOQuery;
    actShowForm: TAction;
    actPrint: TAction;
    BitBtn3: TBitBtn;
    actSort: TAction;
    qryStuffGroupsM1Entity: TFloatField;
    qryStuffGroupsM1Weight: TFloatField;
    qryStuffGroupsM1Price: TBCDField;
    qryStuffGroupsM2Entity: TFloatField;
    qryStuffGroupsM2Weight: TFloatField;
    qryStuffGroupsM2Price: TBCDField;
    qryStuffGroupsM3Entity: TFloatField;
    qryStuffGroupsM3Weight: TFloatField;
    qryStuffGroupsM3Price: TBCDField;
    qryStuffGroupsM4Entity: TFloatField;
    qryStuffGroupsM4Weight: TFloatField;
    qryStuffGroupsM4Price: TBCDField;
    qryStuffGroupsM5Entity: TFloatField;
    qryStuffGroupsM5Weight: TFloatField;
    qryStuffGroupsM5Price: TBCDField;
    qryStuffGroupsM6Entity: TFloatField;
    qryStuffGroupsM6Weight: TFloatField;
    qryStuffGroupsM6Price: TBCDField;
    qryStuffGroupsM7Entity: TFloatField;
    qryStuffGroupsM7Weight: TFloatField;
    qryStuffGroupsM7Price: TBCDField;
    qryStuffGroupsM8Entity: TFloatField;
    qryStuffGroupsM8Weight: TFloatField;
    qryStuffGroupsM8Price: TBCDField;
    qryStuffGroupsM9Entity: TFloatField;
    qryStuffGroupsM9Weight: TFloatField;
    qryStuffGroupsM9Price: TBCDField;
    qryStuffGroupsM10Entity: TFloatField;
    qryStuffGroupsM10Weight: TFloatField;
    qryStuffGroupsM10Price: TBCDField;
    qryStuffGroupsM11Entity: TFloatField;
    qryStuffGroupsM11Weight: TFloatField;
    qryStuffGroupsM11Price: TBCDField;
    qryStuffGroupsM12Entity: TFloatField;
    qryStuffGroupsM12Weight: TFloatField;
    qryStuffGroupsM12Price: TBCDField;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    ppReport1: TppReport;
    ppDBPipeline1: TppDBPipeline;
    ppHeaderBand1: TppHeaderBand;
    ppShape1: TppShape;
    ppLblCompanyName: TppLabel;
    ppLblCaption: TppLabel;
    ppSysVarPageNo: TppSystemVariable;
    ppLblPrintDate: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppLineDetail: TppLine;
    ppLin4Position: TppLine;
    ppFooterBand1: TppFooterBand;
    ppShape2: TppShape;
    ppLabel4: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppShape3: TppShape;
    ppLabel2: TppLabel;
    SumGrid1: TSumGrid;
    qryStuffGroupsEntity: TFloatField;
    qryStuffGroupsWeight: TFloatField;
    qryStuffGroupsPrice: TBCDField;
    qryStuffGroupsGroupID: TIntegerField;
    qryStuffGroupsM1TotallSellPrice: TBCDField;
    qryStuffGroupsM2TotallSellPrice: TBCDField;
    qryStuffGroupsM3TotallSellPrice: TBCDField;
    qryStuffGroupsM4TotallSellPrice: TBCDField;
    qryStuffGroupsM5TotallSellPrice: TBCDField;
    qryStuffGroupsM6TotallSellPrice: TBCDField;
    qryStuffGroupsM7TotallSellPrice: TBCDField;
    qryStuffGroupsM8TotallSellPrice: TBCDField;
    qryStuffGroupsM9TotallSellPrice: TBCDField;
    qryStuffGroupsM10TotallSellPrice: TBCDField;
    qryStuffGroupsM11TotallSellPrice: TBCDField;
    qryStuffGroupsM12TotallSellPrice: TBCDField;
    qryStuffGroupsTotallSellPrice: TBCDField;
    procedure actFilterExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure actSendExelExecute(Sender: TObject);
    procedure actShowFormExecute(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure ppLblCaptionGetText(Sender: TObject; var Text: String);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure ppLblPrintDateGetText(Sender: TObject; var Text: String);
    procedure ppSysVarPageNoGetText(Sender: TObject; var Text: String);
  private
    { Private declarations }
    formType: Byte;
    procedure UpdateFilter;
  public
    { Public declarations }
  end;

var
  rptStuffGroupsMonthsF: TrptStuffGroupsMonthsF;

implementation

uses filter_ADO, FilterClass_ADO, GlobalPro, DM, rptStuffCoding, search2,
  sort2, DBGrid2Print, FormFunctions, ReciptsFunctions, Filter_ADO_Const;

{$R *.dfm}

procedure TrptStuffGroupsMonthsF.UpdateFilter;
begin
  ActiveSellPrice2Dbgrid(DBGrid1);
  Entity_Weight(DBGrid1);
  PriceOnStoreType(GetcFrom(myParams.ParamValues['StoreID'], ftInteger),
    DBGrid1, qryStuffGroups);
  with qryStuffGroups do
  begin
    Active := False;
    // Parameters.ParamByName('ReciptType').Value := formType;
    Parameters.ParamByName('GroupIDFrom').Value :=
      GetcFrom(myParams.ParamValues['GroupID'], ftInteger);
    Parameters.ParamByName('GroupIDTo').Value :=
      GetcTo(myParams.ParamValues['GroupID'], ftInteger);
    Parameters.ParamByName('custIdfrom').Value :=
      GetcFrom(myParams.ParamValues['custId'], ftInteger);
    Parameters.ParamByName('custIdTo').Value :=
      GetcTo(myParams.ParamValues['custId'], ftInteger);
    Parameters.ParamByName('YearIDFrom').Value := opt.DefaultYear;
    Parameters.ParamByName('YearIDTo').Value := APPBank.Year;
    UpdateFilterAllReciptTypes(qryInitQry, qryStuffGroups, myParams);
    Active := True;
  end; // with

  PriceOnStoreType(GetcFrom(myParams.ParamValues['StoreID'], ftInteger),
    DBGrid1, qryStuffGroups)
end;

procedure TrptStuffGroupsMonthsF.actFilterExecute(Sender: TObject);
var
  fi: TfilterF;
begin
  inherited;
  fi := TfilterF.Create2(Self, myParams);
  with fi do
  begin
    try
      AddItem(DMf.adcBSell, 'custID', '„‘ —Ì', 'ﬂœ', ftInteger, dvMinMax, '',
        '', ciLookup, 'SELECT custid,custname from customers ',
        'select min(custid),max(custid) from customers');
      AddItem(DMf.adcBSell, 'Month', ' „«Â ', '„«Â', ftInteger, dvMinMax, '1',
        '12', ciSimple, '', 'SELECT 1,12 FROM StuffCoding');

      // AddItem(dmf.adcBSell,'StuffCode','ﬂ«·«','ﬂœ',ftLargeint,dvMinMax,'','',ciLookup,
      // 'SELECT StuffCoding.c_StuffCode, StuffCoding.c_StuffName FROM         StuffCoding INNER JOIN '+
      // 'ReciptItems ON StuffCoding.c_StuffCode = ReciptItems.StuffCode INNER JOIN Recipts ON ReciptItems.ReciptID = Recipts.ReciptID AND ReciptItems.ServerID = Recipts.ServerID AND ReciptItems.YearID = Recipts.YearID '+
      // 'WHERE (Recipts.ReciptType = '+qryInitQry.FieldByName('ReciptType').AsString+')GROUP BY StuffCoding.c_StuffCode, StuffCoding.c_StuffName ',
      // 'SELECT MIN(StuffCoding.c_StuffCode), MAX(StuffCoding.c_StuffCode)FROM  StuffCoding INNER JOIN '+
      // 'ReciptItems ON StuffCoding.c_StuffCode = ReciptItems.StuffCode INNER JOIN Recipts ON ReciptItems.ReciptID = Recipts.ReciptID AND ReciptItems.ServerID = Recipts.ServerID AND ReciptItems.YearID = Recipts.YearID '+
      // 'WHERE Recipts.ReciptType ='+qryInitQry.FieldByName('ReciptType').AsString);
      //

      // AddItem(DMf.adcBSell, 'GroupID', ' ê—ÊÂ ﬂ«·« ', 'ﬂœ', ftInteger, dvMinMax,
      // '', '', ciLookup, 'SELECT  GroupID,GroupName FROM  StuffGroups ',
      // 'select Min(GroupID),Max(GroupID) From StuffGroups');

      AddItemFilter(GetFilter, TFilterGroupID);

      // AddItem(dmf.adcBSell,'StoreID',' «‰»«— ','ﬂœ',ftInteger,dvMinMax,'','',ciLookup,LookupSQL4Store,MinMaxSQL4Store);
      // AddItem(DMF.adcBSell,'ReciptDate','  «—ÌŒ ',' «—ÌŒ',ftDate,dvMinMax,'','',ciSimple, '',
      // 'Select  '''+APPBank.StartYear+''',Max(ReciptDate) from Recipts WHERE ReciptType = '+IntToStr(formType));
      // AddItem(dmf.adcBSell,'ReciptNumber',' ›—„ ','‘„«—Â',ftInteger,dvMinMax,'','',ciSimple,'','select Min(ReciptNumber),Max(ReciptNumber) From Recipts WHERE ReciptType = '+IntToStr(formType));

      FilterAllReciptTypes(qryInitQry, fi);

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

procedure TrptStuffGroupsMonthsF.FormShow(Sender: TObject);
begin
  inherited;
  // ColorDBGrid(DBGrid1);
  myParams.Clear;
  actFilter.Execute;
  if myParams.FindParam('ReciptDate') = nil then
    close;
end;

procedure TrptStuffGroupsMonthsF.FormCreate(Sender: TObject);
begin
  inherited;
  formType := var_glb_gParam;
  with qryInitQry do
  begin
    Active := False;
    Parameters.ParamByName('Type').Value := formType;
    Active := True;
    Caption := ' ê“«—‘ ' + GetSellEffect(formType, qryStuffGroups) +
      '  » ›ﬂÌﬂ ê—ÊÂ ﬂ«·«';
  end; // whit
  // actShowForm.Enabled:=Pos('rptstuffcodingf12@' ,opt.MenuNames)<>0;
end;

procedure TrptStuffGroupsMonthsF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1, IntToStr(formType));
  // SaveColWidth(DBGrid2);
end;

procedure TrptStuffGroupsMonthsF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 1, True, IntToStr(formType));
end;

procedure TrptStuffGroupsMonthsF.DBGrid1DrawColumnCell(Sender: TObject;
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

procedure TrptStuffGroupsMonthsF.actSendExelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1)
end;

procedure TrptStuffGroupsMonthsF.actShowFormExecute(Sender: TObject);
begin
  inherited;
  // if  Pos('rptstuffcodingf'+IntToStr(formType)+'@' ,opt.MenuNames)<>0 then begin
  CreateMDIForm2(TrptStuffCodingF, rptStuffCodingF, Self, formType);
  rptStuffCodingF.ShowForm(qryStuffGroups.fieldbyname('GroupID').AsInteger);
  // end//
  // else Warn('ÊÌ—«Ì‘ Ê ‰„«Ì‘ «Ì‰ ›—„ œ— ”ÿÕ œ” —”Ì ‘„« ‰„Ìù»«‘œ.');
end;

procedure TrptStuffGroupsMonthsF.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  actShowForm.Execute;
end;

procedure TrptStuffGroupsMonthsF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryStuffGroups);
end;

procedure TrptStuffGroupsMonthsF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryStuffGroups);
end;

procedure TrptStuffGroupsMonthsF.actPrintExecute(Sender: TObject);
begin
  inherited;
  InitReportFile(ppReport1, 'rptStuffGroupsMonths');
end;

procedure TrptStuffGroupsMonthsF.BitBtn1Click(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(DBGrid1, formType);
end;

procedure TrptStuffGroupsMonthsF.ppLblCaptionGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := Caption;
end;

procedure TrptStuffGroupsMonthsF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName
end;

procedure TrptStuffGroupsMonthsF.ppLblPrintDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate
end;

procedure TrptStuffGroupsMonthsF.ppSysVarPageNoGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

end.
