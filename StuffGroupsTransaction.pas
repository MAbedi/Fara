unit StuffGroupsTransaction;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, ADODB,  DBCtrls, Mask, ppBands, ppCtrls, Math,
  ppVar, ppPrnabl, ppClass, ppCache, ppProd, ppReport, ppDB, ppComm,
  ppRelatv, ppDBPipe, ComCtrls, ppParameter, ppDesignLayer,
  System.ImageList, System.Actions,ReciptsFunctions, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, CedarDbGrid;

type
  TStuffGroupsTransactionF = class(Ttemplate2MDIF)
    qryTransAction: TADOQuery;
    srcTransAction: TDataSource;
    qryTransActionFirstEntity: TFloatField;
    qryTransActionFirstWeight: TFloatField;
    qryTransActionFirstPrice: TBCDField;
    qryTransActionAddEntity: TFloatField;
    qryTransActionAddWeight: TFloatField;
    qryTransActionAddPrice: TBCDField;
    qryTransActionDecEntity: TFloatField;
    qryTransActionDecWeight: TFloatField;
    qryTransActionDecPrice: TBCDField;
    qryTransActionInvEntity: TFloatField;
    qryTransActionInvWeight: TFloatField;
    qryTransActionInvPrice: TBCDField;
    actSort: TAction;
    actPrint: TAction;
    actSendToExcel: TAction;
    actFilter: TAction;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    qryTransActionStoreID: TSmallintField;
    qryTransActionc_StoreName: TStringField;
    qryTransActionn_ValuationType: TSmallintField;
    qryStore: TADOQuery;
    srcStore: TDataSource;
    qryStoren_StoreID: TSmallintField;
    qryStorec_StoreName: TStringField;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    DBEdit2: TDBEdit;
    DBNavigator1: TDBNavigator;
    lblLimit: TLabel;
    ppDBPipeline1: TppDBPipeline;
    ppRptAllprint: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppShape1: TppShape;
    ppLblCompanyName: TppLabel;
    ppLabel2: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppLine31: TppLine;
    ppLabel8: TppLabel;
    ppLabel15: TppLabel;
    ppLine32: TppLine;
    ppLabel9: TppLabel;
    ppLine4: TppLine;
    ppLabel16: TppLabel;
    ppLine33: TppLine;
    ppLine34: TppLine;
    ppLabel21: TppLabel;
    ppLabel14: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLine37: TppLine;
    ppLine38: TppLine;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel10: TppLabel;
    ppLine46: TppLine;
    ppLine47: TppLine;
    ppLabel3: TppLabel;
    ppLabel22: TppLabel;
    ppLine48: TppLine;
    ppLine49: TppLine;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLine5: TppLine;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppTxtAllPrice: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppDBText6: TppDBText;
    ppLine17: TppLine;
    ppDBText7: TppDBText;
    ppLine18: TppLine;
    ppLine23: TppLine;
    ppLine11: TppLine;
    ppLine10: TppLine;
    ppDBCalc13: TppDBCalc;
    ppLine35: TppLine;
    ppDBText9: TppDBText;
    ppLine36: TppLine;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppLine39: TppLine;
    ppLine41: TppLine;
    ppDBText12: TppDBText;
    ppDBText3: TppDBText;
    ppLine51: TppLine;
    ppDBText13: TppDBText;
    ppLine52: TppLine;
    ppDBText14: TppDBText;
    ppLine53: TppLine;
    ppFooterBand1: TppFooterBand;
    ppShape3: TppShape;
    ppLabel1: TppLabel;
    ppLine25: TppLine;
    ppDBCalc7: TppDBCalc;
    ppLine26: TppLine;
    ppDBCalc8: TppDBCalc;
    ppLine27: TppLine;
    ppDBCalc9: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppLine28: TppLine;
    ppLine29: TppLine;
    ppDBCalc11: TppDBCalc;
    ppLine30: TppLine;
    ppLine40: TppLine;
    ppLine43: TppLine;
    ppLine44: TppLine;
    ppDBCalc6: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    ppDBCalc14: TppDBCalc;
    ppDBCalc15: TppDBCalc;
    ppDBCalc20: TppDBCalc;
    ppDBCalc21: TppDBCalc;
    ppLine50: TppLine;
    ppDBCalc22: TppDBCalc;
    ppLine54: TppLine;
    ppLine58: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppShape2: TppShape;
    ppLabel4: TppLabel;
    ppLine1: TppLine;
    ppDBCalc1: TppDBCalc;
    ppLine12: TppLine;
    ppDBCalc2: TppDBCalc;
    ppLine13: TppLine;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppLine14: TppLine;
    ppLine21: TppLine;
    ppDBCalc5: TppDBCalc;
    ppLine22: TppLine;
    ppLine24: TppLine;
    ppLine42: TppLine;
    ppLine45: TppLine;
    ppDBCalc16: TppDBCalc;
    ppDBCalc17: TppDBCalc;
    ppDBCalc18: TppDBCalc;
    ppDBCalc19: TppDBCalc;
    ppDBCalc23: TppDBCalc;
    ppLine55: TppLine;
    ppDBCalc24: TppDBCalc;
    ppLine56: TppLine;
    ppDBCalc25: TppDBCalc;
    ppLine57: TppLine;
    qryTransActionGroupName: TStringField;
    qryTransActionFirstSellPrice: TBCDField;
    qryTransActionAddSellPrice: TBCDField;
    qryTransActionDecSellPrice: TBCDField;
    qryTransActionInvSellPrice: TBCDField;
    qryTransActionGroupID: TIntegerField;
    DBGrid1: TCedarDbgrid;
    procedure actFilterExecute(Sender: TObject);
    procedure actSendToExcelExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure qryStoreAfterScroll(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure ppLabel2GetText(Sender: TObject; var Text: String);
    procedure ppSystemVariable2GetText(Sender: TObject; var Text: String);
    procedure ppSystemVariable1GetText(Sender: TObject; var Text: String);
    procedure actPrintExecute(Sender: TObject);
    procedure ppLabel10GetText(Sender: TObject; var Text: String);
    procedure FormCreate(Sender: TObject);
  private
    PriceVisible: Boolean;
    { Private declarations }
    Procedure UpdateFilter;
  public
    { Public declarations }
  end;

var
  StuffGroupsTransactionF: TStuffGroupsTransactionF;

implementation

uses DM, filter_ADO, FilterClass_ADO, GlobalPro, search2, sort2,
  searchCode_ADO, FaraConsts, Filter_ADO_Const;

{$R *.dfm}

procedure TStuffGroupsTransactionF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
    try
      AddItemFilter(GetFilter, TFilterSellsEmporium);
      AddItem(DMf.adcBSell, 'Date', ' «—ÌŒ ', '» «—ÌŒ', ftDate, dvDefaults,
        var_glb_CurrentDate, '', ciSingle, '', '');
      AddItem(DMf.adcBSell, 'Store', '« »«—', '«‰»«—', ftInteger, dvMinMax, '',
        '', ciLookup, LookupSQL4Store, MinMaxSQL4Store);
      // 'SELECT Recipts.StoreID,Stores.c_StoreName FROM Recipts INNER JOIN '+
      // 'dbo.Stores ON dbo.Recipts.StoreID = dbo.Stores.n_StoreID '+
      // ''+
      // 'GROUP BY dbo.Stores.c_StoreName, dbo.Recipts.StoreID ','SELECT Min(StoreID) , Max(StoreID) FROM Recipts');
      AddItem(DMf.adcBSell, 'GroupID', 'ê—ÊÂ ', 'ê—ÊÂ', ftLargeint, dvMinMax,
        '', '', ciLookup, 'SELECT GroupID, GroupName FROM  dbo.StuffGroups  ',
        'SELECT Min(GroupID), Max(GroupID) FROM StuffGroups');

      if ShowModal = mrOk then
      begin
        GetFilterString;
        UpdateFilter;
      end; // if
    finally
      Free;
    end; // try

end;

procedure TStuffGroupsTransactionF.UpdateFilter;
begin
  with qryTransAction do
  begin
    Active := False;
    Parameters.ParamByName('SellsEmporiumFrom').Value :=
      GetcFrom(myParams.ParamValues['SellsEmporium'], ftInteger);
    Parameters.ParamByName('SellsEmporiumTo').Value :=
      GetcTo(myParams.ParamValues['SellsEmporium'], ftInteger);

    Parameters.ParamByName('GroupIDFrom').Value :=
      GetcFrom(myParams.ParamValues['GroupID'], ftInteger);
    Parameters.ParamByName('GroupIDTo').Value :=
      GetcTo(myParams.ParamValues['GroupID'], ftInteger);
    Parameters.ParamByName('date').Value :=
      GetcFrom(myParams.ParamValues['date'], ftDate);
    Parameters.ParamByName('YearIDFrom').Value := opt.DefaultYear;
    Parameters.ParamByName('YearIDTo').Value := APPBank.Year;
    // Active:=True;
    lblLimit.Caption := '„ÕœÊœÂ ê—ÊÂ ﬂ«·« : ' + ' «“ ' +
      IntToStr(Parameters.ParamValues['GroupIDFrom']) + '  « ' +
      IntToStr(Parameters.ParamValues['GroupIDTo']) + #10 +
      'ê—œ‘ ﬂ«·« » «—ÌŒ : ' + Parameters.ParamValues['date'];
  end; // with
  with qryStore do
  begin
    Active := False;
    Parameters.ParamByName('StoreIDFrom').Value :=
      GetcFrom(myParams.ParamValues['Store'], ftInteger);
    Parameters.ParamByName('StoreIDTo').Value :=
      GetcTo(myParams.ParamValues['Store'], ftInteger);
    Parameters.ParamByName('UserID').Value := User.id;
    Parameters.ParamByName('UserIDAdmin').Value :=
      ifthen(User.PowerUser, 127, User.id);
    Active := True;
  end; // with
end;

procedure TStuffGroupsTransactionF.actSendToExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TStuffGroupsTransactionF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryTransAction);
end;

procedure TStuffGroupsTransactionF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryTransAction);
end;

procedure TStuffGroupsTransactionF.SpeedButton1Click(Sender: TObject);

var
  b: Boolean;
  Results: array [0 .. 1] of String;
  // Txt:String;
begin
  inherited;
  b := searchCode_ADOF.SearchCode2(DMf.adcBSell, '«‰»«— Â«',
    'SELECT n_StoreID, c_StoreName FROM Stores ' + 'WHERE(n_StoreID BETWEEN ' +
    IntToStr(qryStore.Parameters.ParamValues['StoreIDFrom']) + '  AND ' +
    IntToStr(qryStore.Parameters.ParamValues['StoreIDTo']) + ')',
    ['òœ', '‰«„ '], Results, [50, 150], alLeft);
  if b then
  begin
    qryStore.Locate('n_StoreID', Results[0], []);
  end; // if

end;

procedure TStuffGroupsTransactionF.qryStoreAfterScroll(DataSet: TDataSet);
begin
  inherited;
  PriceVisible := PriceOnStoreType(DataSet.fieldbyname('n_StoreID')
    .AsInteger, DBGrid1,qryTransAction);
  with qryTransAction do
  begin
    Active := False;
    Parameters.ParamByName('StorIDPA').Value := DataSet.fieldbyname('n_StoreID')
      .AsInteger;
    Active := True;
  end; // with
end;

procedure TStuffGroupsTransactionF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  actFilter.Execute;
  if myParams.FindParam('date') = nil then
    close;
end;

procedure TStuffGroupsTransactionF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TStuffGroupsTransactionF.ppLabel2GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := 'ê—œ‘ ﬂ«·«Ì «‰»«— ' + DBEdit2.Text;
end;

procedure TStuffGroupsTransactionF.ppSystemVariable2GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text);
end;

procedure TStuffGroupsTransactionF.ppSystemVariable1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TStuffGroupsTransactionF.actPrintExecute(Sender: TObject);
begin
  inherited;
  with qryTransAction do
  begin
    try
      DisableControls;
      InitReportFile(ppRptAllprint, 'rptStuffGroupsTransaction', False,
        PriceVisible);
    finally
      EnableControls;
    end; // try
  end; // with
end;

procedure TStuffGroupsTransactionF.ppLabel10GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := lblLimit.Caption;
end;

procedure TStuffGroupsTransactionF.FormCreate(Sender: TObject);
begin
  inherited;
//  setColumns2(DBGrid1, opt.ActiveSellPrice2, 'FirstSellPrice');
//  setColumns2(DBGrid1, opt.ActiveSellPrice2, 'AddSellPrice');
//  setColumns2(DBGrid1, opt.ActiveSellPrice2, 'DecSellPrice');
//  setColumns2(DBGrid1, opt.ActiveSellPrice2, 'InvSellPrice');

//  qryTransAction.FieldByName('FirstSellPrice').Visible :=
//    opt.ActiveSellPrice2;
//  qryTransAction.FieldByName('AddSellPrice').Visible :=
//    opt.ActiveSellPrice2;
//  qryTransAction.FieldByName('DecSellPrice').Visible :=
//    opt.ActiveSellPrice2;
//  qryTransAction.FieldByName('InvSellPrice').Visible :=
//    opt.ActiveSellPrice2;
    HideOrShowSellPriceFields(qryTransAction, DBGrid1);


  Entity_Weight(DBGrid1);
end;

end.
