{ -----------------------------------------------------------------------------
  Unit Name: DailyWork
  Author:    Mahmood
  ----------------------------------------------------------------------------- }
unit DailyWorkTow;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DBCtrls, Math,
  ppDB, ppDBPipe, ppComm, ppRelatv, ppProd, ppClass, ppReport, ppPrnabl,
  ppCtrls, ppCache, ppBands, ppVar, ppStrtch, ppMemo, ppModule,
  ppSubRpt, DB, ADODB, ComCtrls, ppParameter, ppDesignLayer,
  System.ImageList, System.Actions, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  CedarDbGrid;

type
  TDailyWorkTowF = class(Ttemplate2MDIF)
    qryTypesItems: TADOQuery;
    SrcTypesItems: TDataSource;
    ppDBPipeline1: TppDBPipeline;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn3: TBitBtn;
    actFilter: TAction;
    actSendExel: TAction;
    LblLimit: TLabel;
    actShowForm: TAction;
    ppReport1: TppReport;
    actPrint: TAction;
    actSort: TAction;
    qryTypesItemsNumber: TIntegerField;
    qryTypesItemsDate: TStringField;
    qryTypesItemsCustomerID1: TIntegerField;
    qryTypesItemsCustName1: TStringField;
    qryTypesItemsCustomerID2: TIntegerField;
    qryTypesItemsCustName2: TStringField;
    qryTypesItemsCheckDate: TStringField;
    qryTypesItemsEntity: TFloatField;
    qryTypesItemsWeight: TFloatField;
    qryTypesItemsUnitSellPrice: TFMTBCDField;
    qryTypesItemsPrice: TBCDField;
    qryTypesItemsStuffSize: TStringField;
    qryTypesItemsStuffDiameter: TFloatField;
    qryTypesItemsStuffAlloy: TStringField;
    qryTypesItemsItemNote: TStringField;
    qryTypesItemsStoreID: TIntegerField;
    qryTypesItemsc_StoreName: TStringField;
    qryTypesItemsID: TIntegerField;
    qryTypesItemsType: TWordField;
    qryTypesItemsKind: TIntegerField;
    qryTypesItemsFormItemsAmount: TBCDField;
    BitBtn8: TBitBtn;
    actPrintVijeh: TAction;
    qryTypesItemsFormCaption: TStringField;
    qryTypesItemsBed: TBCDField;
    qryTypesItemsBes: TBCDField;
    ppHeaderBand1: TppHeaderBand;
    ppShape1: TppShape;
    ppLblCompanyName: TppLabel;
    ppLblCaption: TppLabel;
    ppLblPrintDate: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppLineDetail: TppLine;
    ppFooterBand1: TppFooterBand;
    ppShape2: TppShape;
    ppLabel4: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppShape3: TppShape;
    ppLabel2: TppLabel;
    ppSysVarPageNo: TppSystemVariable;
    qryTypesItemsc_StuffNameBankName: TStringField;
    qryTypesItemsModifyDate: TDateTimeField;
    qryTypesItemsAccountNumber: TStringField;
    qryTypesItemsFormID: TIntegerField;
    qryTypesItemsReciptID: TIntegerField;
    qryTypesItemsServerID: TIntegerField;
    qryTypesItemsYearID: TIntegerField;
    qryTypesItemsStuffCodeCheckNumber: TLargeintField;
    qryTypesItemsAccountNumberNew: TStringField;
    DBGrid2: TCedarDbgrid;
    procedure actFilterExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actSendExelExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actShowFormExecute(Sender: TObject);
    procedure ppSysVarPageNumberGetText(Sender: TObject; var Text: String);
    procedure ppLblPrintDateGetText(Sender: TObject; var Text: String);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure actPrintVijehExecute(Sender: TObject);
  private
    { Private declarations }
    procedure UpdateFilter;
  public
    { Public declarations }
  end;

var
  DailyWorkTowF: TDailyWorkTowF;

implementation

uses filter_ADO, FilterClass_ADO, GlobalPro, DM,
  search2, sort2,
  DBGrid2Print, FormFunctions, FaraConsts;

{$R *.dfm}

procedure TDailyWorkTowF.UpdateFilter;
begin
  with qryTypesItems do
  begin
    Active := False;
    SQL.Text := 'SELECT * FROM (';
    SQL.Add('SELECT 0 as FormID, Recipts.ReciptID, Recipts.ServerID, Recipts.YearID, ReciptTypes.ReciptCaption AS FormCaption,');
    SQL.Add('Recipts.ReciptNumber AS Number, Recipts.ReciptDate AS Date, Recipts.PersonID1 AS CustomerID1,');
    SQL.Add('Customers_1.CustName AS CustName1, ReciptItems.PersonID1 AS CustomerID2, Customers_2.CustName AS');
    SQL.Add('CustName2,');
    SQL.Add('ReciptItems.StuffCode AS StuffCodeCheckNumber, StuffCoding.c_StuffName AS c_StuffNameBankName, '''' AS');
    SQL.Add('AccountNumber, '''' AS CheckDate,');
    SQL.Add(''''' AS AccountNumberNew, ReciptItems.InputEntity + ReciptItems.OutputEntity AS Entity, ReciptItems.InputWeight');
    SQL.Add('+ ReciptItems.OutputWeight AS Weight,');
    SQL.Add('ReciptItems.UnitSellPrice, 0 AS FormItemsAmount, ReciptItems.TotalInputPrice + ReciptItems.TotalOutputPrice');
    SQL.Add('AS Price, ReciptItems.StuffSize,');
    SQL.Add('ReciptItems.StuffDiameter, ReciptItems.StuffAlloy, ReciptItems.ItemNote, Recipts.StoreID, Stores.c_StoreName,');
    SQL.Add('Recipts.ReciptID AS ID,');
    SQL.Add('Recipts.ReciptType AS Type, 3 AS Kind, Recipts.ModifyDate,');
    SQL.Add('(CASE ReciptTypes.BedType WHEN 1 THEN ReciptItems.TotalInputPrice + ReciptItems.TotalOutputPrice ELSE 0');
    SQL.Add('END) Bed,');
    SQL.Add('(CASE ReciptTypes.BesType WHEN 1 THEN ReciptItems.TotalInputPrice + ReciptItems.TotalOutputPrice ELSE 0');
    SQL.Add('END) Bes');
    SQL.Add('');
    SQL.Add('FROM StuffCoding RIGHT OUTER JOIN');
    SQL.Add('ReciptItems LEFT OUTER JOIN');
    SQL.Add('Vu_CustomersGroups Customers_2 ON ReciptItems.PersonID1 = Customers_2.CustID RIGHT OUTER JOIN');
    SQL.Add('Recipts INNER JOIN');
    SQL.Add('ReciptTypes ON Recipts.ReciptType = ReciptTypes.ReciptType LEFT OUTER JOIN');
    SQL.Add('Vu_CustomersGroups Customers_1 ON Recipts.PersonID1 = Customers_1.CustID ON');
    SQL.Add('');
    SQL.Add('ReciptItems.ReciptID = Recipts.ReciptID AND ReciptItems.ServerID = Recipts.ServerID AND ReciptItems.YearID =');
    SQL.Add('Recipts.YearID');
    SQL.Add('');
    SQL.Add('LEFT OUTER JOIN');
    SQL.Add('Stores ON Recipts.StoreID = Stores.n_StoreID ON StuffCoding.c_StuffCode = ReciptItems.StuffCode');
    SQL.Add('WHERE (dbo.Recipts.ReciptDate BETWEEN :DateFrom1 AND :DateTo1)');

    if opt.ChkUsersCustomersGroupsActive then
    begin
      SQL.Add('AND(dbo.ChkUsersCustomersGroups( :UserAdmin , :UserID , Recipts.PersonID1 ) = 1)');
      Parameters.ParamByName('UserAdmin').Value := ifthen(User.PowerUser, 1, 0);
      Parameters.ParamByName('UserID').Value := User.id;
    end;

    SQL.Add('UNION ALL');
    SQL.Add('');
    SQL.Add('SELECT Forms.FormID, 0 as ReciptID, Forms.ServerID, Forms.YearID, FormTypes.FormCaption, dbo.Forms.FormNumber AS');
    SQL.Add('Number, dbo.Forms.FormDate AS Date, dbo.Forms.CustomerID1,');
    SQL.Add('Customers_1.CustName AS CustName1, (CASE WHEN (dbo.Forms.CustomerID2 IS NULL OR');
    SQL.Add('dbo.Forms.CustomerID2 = 0) THEN dbo.FormItems.CustomerID2 ELSE dbo.Forms.CustomerID2 END) AS');
    SQL.Add('CustomerID2,');
    SQL.Add('Customers_2.CustName AS CustName2, dbo.FormItems.CheckNumber AS StuffCodeCheckNumber,');
    SQL.Add('dbo.FormItems.BankName AS c_StuffNameBankName, dbo.FormItems.AccountNumber, dbo.FormItems.CheckDate,');
    SQL.Add('dbo.FormItems.AccountNumberNew,');
    SQL.Add('0 AS Entity, 0 AS Weight, 0 AS UnitSellPrice, dbo.FormItemsAmount(Forms.FormID, Forms.ServerID, Forms.YearID)');
    SQL.Add('AS FormItemsAmount, dbo.FormItems.ItemAmount AS Price,');
    SQL.Add(''''' AS StuffSize, 0 AS StuffDiameter, '''' AS StuffAlloy, dbo.FormItems.ItemNote, 0 AS StoreID, '''' AS c_StoreName,');
    SQL.Add('dbo.Forms.FormID AS ID,');
    SQL.Add('dbo.Forms.FormType AS Type, (CASE WHEN dbo.FormItems.FormItemID IS NULL THEN 1 ELSE 2 END) AS Kind,');
    SQL.Add('dbo.Forms.ModifyDate,');
    SQL.Add('isnull( (CASE WHEN ((Customer2DocType = 10) OR');
    SQL.Add('(Customer1DocType = 10)) AND (BedBes = 1) THEN dbo.FormItems.ItemAmount ELSE 0');
    SQL.Add('END),dbo.FormItemsAmount(Forms.FormID, Forms.ServerID, Forms.YearID)) AS Bed ,');
    SQL.Add('isnull( (CASE WHEN ((Customer2DocType = 10) OR');
    SQL.Add('(Customer1DocType = 10)) AND (BedBes = 0) THEN dbo.FormItems.ItemAmount ELSE 0');
    SQL.Add('END),dbo.FormItemsAmount(Forms.FormID, Forms.ServerID, Forms.YearID)) AS Bes');
    SQL.Add('FROM Forms INNER JOIN');
    SQL.Add('FormTypes ON Forms.FormType = FormTypes.FormType LEFT OUTER JOIN');
    SQL.Add('FormItems ON');
    SQL.Add('');
    SQL.Add('Forms.FormID = FormItems.FormID AND Forms.ServerID = FormItems.ServerID AND Forms.YearID = FormItems.YearID');
    SQL.Add('');
    SQL.Add('');
    SQL.Add('LEFT OUTER JOIN');
    SQL.Add('Vu_CustomersGroups Customers_2 ON (CASE WHEN (dbo.Forms.CustomerID2 IS NULL OR');
    SQL.Add('dbo.Forms.CustomerID2 = 0) THEN dbo.FormItems.CustomerID2 ELSE dbo.Forms.CustomerID2 END) =');
    SQL.Add('Customers_2.CustID LEFT OUTER JOIN');
    SQL.Add('Vu_CustomersGroups Customers_1 ON Forms.CustomerID1 = Customers_1.CustID');
    SQL.Add('WHERE (dbo.Forms.FormDate BETWEEN :DateFrom2 AND :DateTo2)');

    if opt.ChkUsersCustomersGroupsActive then
    begin
      SQL.Add('AND(dbo.ChkUsersCustomersGroups( :UserAdmin2 , :UserID2 , Forms.CustomerID1 ) = 1)');
      Parameters.ParamByName('UserAdmin2').Value := ifthen(User.PowerUser, 1, 0);
      Parameters.ParamByName('UserID2').Value := User.id;
    end;

    SQL.Add('UNION ALL');
    SQL.Add('SELECT 0 as FormID, ReciptID, ServerID, YearID, ReciptCaption, ReciptNumber, ReciptDate, PersonID1, CustName , 0 AS');
    SQL.Add('CustomerID2, '''' AS CustName2, StuffCode AS StuffCodeCheckNumber,');
    SQL.Add('c_StuffName AS c_StuffNameBankName, '''' AS AccountNumber, '''' AS CheckDate, '''' AS AccountNumberNew,');
    SQL.Add('entity, weight, UnitSellPrice,');
    SQL.Add('0 AS FormItemsAmount, 0 AS Price, StuffSize, StuffDiameter, '''' AS StuffAlloy, ItemNote, StoreID, '''' AS');
    SQL.Add('c_StoreName, ReciptID AS ID, ReciptType AS Type,');
    SQL.Add('kind, ModifyDate, bed, bes');
    SQL.Add('FROM GetReciptsDeficits() GetReciptsDeficits');
    SQL.Add('WHERE (ReciptDate BETWEEN :DateFrom3 AND :DateTo3)');
    if opt.ChkUsersCustomersGroupsActive then
    begin
      SQL.Add('AND(dbo.ChkUsersCustomersGroups( :UserAdmin3 , :UserID3 , PersonID1 ) = 1)');
      Parameters.ParamByName('UserAdmin3').Value := ifthen(User.PowerUser, 1, 0);
      Parameters.ParamByName('UserID3').Value := User.id;
    end;

    SQL.Add('');
    SQL.Add(')A');
    SQL.Add('');
    SQL.Add('');
    SQL.Add('order by ModifyDate');
    SQL.Add('');
    SQL.Add('');
    SQL.Add('');

    Parameters.ParamByName('DateFrom1').Value :=
      GetcFrom(myParams.ParamValues['Date'], ftDate);
    Parameters.ParamByName('DateTo1').Value :=
      GetcTo(myParams.ParamValues['Date'], ftDate);
    Parameters.ParamByName('DateFrom2').Value :=
      GetcFrom(myParams.ParamValues['Date'], ftDate);
    Parameters.ParamByName('DateTo2').Value :=
      GetcTo(myParams.ParamValues['Date'], ftDate);
    Parameters.ParamByName('DateFrom3').Value :=
      GetcFrom(myParams.ParamValues['Date'], ftDate);
    Parameters.ParamByName('DateTo3').Value :=
      GetcTo(myParams.ParamValues['Date'], ftDate);
    Active := True;
  end; // with
  with qryTypesItems.Parameters do
  begin
    LblLimit.Caption := '«“  «—ÌŒ ' + ParamByName('DateFrom1').Value + '  « ' +
      ParamByName('DateTo1').Value;
  end; // with

end;

procedure TDailyWorkTowF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      AddItem(DMF.adcBSell, 'Date', '  «—ÌŒ ', ' «—ÌŒ', ftDate, dvMinMax, '',
        '', ciSimple, '', 'SELECT ''' + var_glb_CurrentDate + ''',''' +
        var_glb_CurrentDate + ''' FROM  Recipts ');
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

procedure TDailyWorkTowF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  actFilter.Execute;
  if myParams.FindParam('Date') = nil then
    close;
end;

procedure TDailyWorkTowF.actSendExelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid2);
end;

procedure TDailyWorkTowF.FormCreate(Sender: TObject);
begin
  inherited;
  Entity_Weight(DBGrid2);
end;

procedure TDailyWorkTowF.actShowFormExecute(Sender: TObject);
begin
  inherited;
  case qryTypesItems.FieldByName('Kind').AsInteger of
    0:
      Warn('»—«Ì ‰Ê⁄ «ÿ·«⁄«  " ‰ﬁ· «“ ﬁ»· " ›—„Ì ÊÃÊœ ‰œ«—œ.!');
    1, 2:
      begin
        ShowFormTypesForms(qryTypesItems, Self);
      end; // 2
    3:
      begin
        ShowReciptTypes(qryTypesItems, Self);
      end; // 3
  end; // case
end;

procedure TDailyWorkTowF.ppSysVarPageNumberGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TDailyWorkTowF.ppLblPrintDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate
end;

procedure TDailyWorkTowF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName
end;

procedure TDailyWorkTowF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryTypesItems);
end;

procedure TDailyWorkTowF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryTypesItems);
end;

procedure TDailyWorkTowF.DBGrid2DblClick(Sender: TObject);
begin
  inherited;
  actShowForm.Execute
end;

procedure TDailyWorkTowF.actPrintExecute(Sender: TObject);
begin
  inherited;
  try
    qryTypesItems.DisableControls;
    InitReportFile(ppReport1, 'DailyWorkTowF', True);
  finally
    qryTypesItems.EnableControls;
  end; // try
end;

procedure TDailyWorkTowF.actPrintVijehExecute(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(DBGrid2, 0);
end;

end.
