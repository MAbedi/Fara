{ -----------------------------------------------------------------------------
  Unit Name: DailyWork
  Author:    Mahmood
  ----------------------------------------------------------------------------- }
unit DailyWork;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DBCtrls, ppDB, ppDBPipe, ppComm, ppRelatv, ppProd, ppClass, ppReport,
  ppPrnabl, ppCtrls, ppCache, ppBands, ppVar, ppStrtch, ppMemo, ppModule,
  ppSubRpt, DB, ADODB, ComCtrls, ppParameter, shamsiDate, math,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, CedarDbGrid, ppDesignLayer,
  System.ImageList, System.Actions;

type
  TDailyWorkF = class(Ttemplate2MDIF)
    SrcTypes: TDataSource;
    qryTypes: TADOQuery;
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
    qryTypesType: TWordField;
    qryTypesCaption: TStringField;
    qryTypesKind: TIntegerField;
    qryTypesItemsNumber: TIntegerField;
    qryTypesItemsDate: TStringField;
    qryTypesItemsCustomerID1: TIntegerField;
    qryTypesItemsCustName1: TStringField;
    qryTypesItemsCustomerID2: TIntegerField;
    qryTypesItemsCustName2: TStringField;
    qryTypesItemsc_StuffName: TStringField;
    qryTypesItemsCheckDate: TStringField;
    qryTypesItemsBankName: TStringField;
    qryTypesItemsAccountNumber: TStringField;
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
    qryTypesPerson1Caption: TStringField;
    qryTypesPerson3Caption: TStringField;
    BitBtn8: TBitBtn;
    actPrintVijeh: TAction;
    ppHeaderBand1: TppHeaderBand;
    ppShape1: TppShape;
    ppLblCompanyName: TppLabel;
    ppLblCaption: TppLabel;
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
    ppSystemVariable1: TppSystemVariable;
    qryTypesItemsCity: TStringField;
    qryTypesItemsStandardRate: TBCDField;
    qryTypesItemsArzAmount: TFloatField;
    qryTypesItemsReciptsDeficit: TBCDField;
    qryTypesItemsCheckNumber: TStringField;
    qryTypesItemsFormID: TIntegerField;
    qryTypesItemsReciptID: TIntegerField;
    qryTypesItemsServerID: TIntegerField;
    qryTypesItemsYearID: TIntegerField;
    qryTypesItemsModifyDate: TDateTimeField;
    qryTypesItemsReciptNote: TStringField;
    qryTypesItemsCustomerID_D: TIntegerField;
    qryTypesItemsCustName_D: TStringField;
    qryTypesPerson2Caption: TStringField;
    qryTypesItemsStuffCode: TLargeintField;
    qryTypesItemsCustomerID3: TIntegerField;
    qryTypesItemsCustName3: TStringField;
    qryTypesItemsAccountNumberNew: TStringField;
    qryTypesItemsOperatorID: TIntegerField;
    qryTypesItemsname: TStringField;
    qryTypesItemsFirstUser: TStringField;
    qryTypesItemsLastUser: TStringField;
    DBGrid2: TCedarDbgrid;
    DBGrid1: TCedarDbgrid;
    qryTypesItemsModifyDateSh: TStringField;
    chkModifyDate: TCheckBox;
    qryTypesItemsMobile: TStringField;
    qryTypesItemsMobile2: TStringField;
    qryTypesItemsNationalID: TStringField;
    qryTypesItemsNationalID2: TStringField;
    procedure actFilterExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actSendExelExecute(Sender: TObject);
    procedure qryTypesAfterScroll(DataSet: TDataSet);
    procedure qryTypesItemsAfterOpen(DataSet: TDataSet);
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
    procedure ppLblCaptionGetText(Sender: TObject; var Text: String);
    procedure ppSysVarPageNoGetText(Sender: TObject; var Text: String);
    procedure FormDestroy(Sender: TObject);
    procedure chkModifyDateClick(Sender: TObject);
  private
    FormType: Byte;
    DateFrom, DateTo: String; // TDateTime;
    ModifyDateFrom, ModifyDateTo: String;
    dModifyDateFrom, dModifyDateTo: TDateTime;
    { Private declarations }
    procedure UpdateFilter;
    procedure InitqryTypes;
  public
    { Public declarations }
  end;

var
  DailyWorkF: TDailyWorkF;

implementation

uses filter_ADO, FilterClass_ADO, GlobalPro, DM,
  search2, sort2,
  DBGrid2Print, FormFunctions, FaraConsts;

{$R *.dfm}

procedure TDailyWorkF.UpdateFilter;
begin
  InitqryTypes;
  DateFrom := (GetcFrom(myParams.ParamValues['Date'], ftDate));
  DateTo := (GetcTo(myParams.ParamValues['Date'], ftDate));

  if chkModifyDate.Checked then
  begin
    dModifyDateFrom :=
      (Shamsi2Miladi(GetcFrom(myParams.ParamValues['ModifyDate'], ftDate)));
    dModifyDateTo := (Shamsi2Miladi(GetcTo(myParams.ParamValues['ModifyDate'],
      ftDate)));

    ModifyDateFrom := formatdatetime('yyyy/mm/dd', dModifyDateFrom);
    ModifyDateTo := formatdatetime('yyyy/mm/dd', dModifyDateTo);
  end;

  with qryTypes do
  begin
    Active := False;
    if Parameters.FindParam('DateFrom') <> nil then
    begin
      Parameters.ParamByName('DateFrom').Value := DateFrom;
      Parameters.ParamByName('DateTo').Value := DateTo;
    end;
    if Parameters.FindParam('DateFrom1') <> nil then
    begin
      Parameters.ParamByName('DateFrom1').Value := DateFrom;
      Parameters.ParamByName('DateTo1').Value := DateTo;
    end;

    if Parameters.FindParam('ModifyDateFrom') <> nil then
    begin
      Parameters.ParamByName('ModifyDateFrom').Value := ModifyDateFrom;
      Parameters.ParamByName('ModifyDateTo').Value := ModifyDateTo;
    end;

    if Parameters.FindParam('ModifyDate1From') <> nil then
    begin
      Parameters.ParamByName('ModifyDate1From').Value := ModifyDateFrom;
      Parameters.ParamByName('ModifyDate1To').Value := ModifyDateTo;
    end;

    if Parameters.FindParam('ModifyDate2From') <> nil then
    begin
      Parameters.ParamByName('ModifyDate2From').Value := ModifyDateFrom;
      Parameters.ParamByName('ModifyDate2To').Value := ModifyDateTo;
    end;

    if Parameters.FindParam('DateFrom2') <> nil then
    begin
      Parameters.ParamByName('DateFrom2').Value := DateFrom;
      Parameters.ParamByName('DateTo2').Value := DateTo;
    end;
    Active := True;
  end; // with
end;

procedure TDailyWorkF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      AddItem(DMf.adcFaraSystem, 'UserID', 'کاربران', 'كد', ftInteger, dvMinMax,
        '', '', ciLookup, 'SELECT UserID, name FROM Operators ',
        'SELECT Min(UserID),max(UserID)FROM Operators ');

      AddItem(DMf.adcBSell, 'Date', ' تاريخ ', 'تاريخ', ftDate, dvMinMax, '',
        '', ciSimple, '', 'SELECT ''' + var_glb_CurrentDate + ''',''' +
        var_glb_CurrentDate + '''');

      if chkModifyDate.Checked then
        AddItem(DMf.adcBSell, 'ModifyDate', ' تاريخ ', 'ایجاد/ویرایش', ftDate,
          // dvMinMax, '', '', ciSimple, '', 'SELECT ''1300/01/01'',''1999/12/29''');
          dvMinMax, '', '', ciSimple, '', 'SELECT ''' + var_glb_CurrentDate +
          ''',''' + var_glb_CurrentDate + '''');

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

procedure TDailyWorkF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  actFilter.Execute;
  if myParams.FindParam('Date') = nil then
    close;

end;

procedure TDailyWorkF.actSendExelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid2);
end;

procedure TDailyWorkF.qryTypesAfterScroll(DataSet: TDataSet);
var
  b: Boolean;
begin
  inherited;
  with qryTypesItems do
  begin
    Active := False;

    case qryTypes.FieldByName('Kind').AsInteger of
      1:
        begin
          SQL.Text := 'SELECT DISTINCT Forms.FormID, 0 as ReciptID, Forms.ServerID';
          SQL.Add(', Forms.YearID, Forms.FormNumber AS Number, Forms.FormDate AS Date');
          SQL.Add(', Forms.CustomerID1, Customers_1.CustName AS CustName1');
          SQL.Add(', Customers_1.Mobile, Customers_1.NationalID,Forms.CustomerID2,');
          SQL.Add('Customers_2.CustName AS CustName2,Customers_2.Mobile AS Mobile2 ');
          SQL.Add(',Customers_2.NationalID AS NationalID2 ,cast( 0 as bigint) AS StuffCode');
          SQL.Add(', '''' AS c_StuffName, FormItems.CheckNumber,');
          SQL.Add('FormItems.CheckDate, FormItems.BankName,');
          SQL.Add('FormItems.AccountNumberNew, FormItems.AccountNumber, FormItems.City');
          SQL.Add(', 0.0 AS Entity, 0.0 AS Weight, 0 *');
          SQL.Add('FormItems.ItemAmount AS UnitSellPrice,');
          SQL.Add('dbo.FormItemsAmount(Forms.FormID,Forms.ServerID,');
          SQL.Add(' Forms.YearID) AS FormItemsAmount, FormItems.ItemAmount AS Price');
          SQL.Add(', '''' AS StuffSize, 0.0 AS');
          SQL.Add('StuffDiameter, '''' AS StuffAlloy,');
          SQL.Add('FormItems.ItemNote, 0 AS StoreID, '''' AS c_StoreName, Forms.FormID AS ID');
          SQL.Add(', Forms.FormType AS Type, 1 AS Kind,');
          SQL.Add('Forms.ModifyDate,');
          SQL.Add('0 * FormItems.ItemAmount AS StandardRate, 0.0 AS ArzAmount');
          SQL.Add(', 0 * FormItems.ItemAmount AS ReciptsDeficit');

          SQL.Add(',Forms.FomNote AS ReciptNote');

          SQL.Add(', Forms.CustomerID3,Customers_3.CustName AS CustName3');
          SQL.Add(', FormItems.CustomerID2 as CustomerID_D,Customers_D.CustName AS CustName_D');
          SQL.Add(', Forms.OperatorID, FaraSystems.dbo.Operators.name, Forms.FirstUser');
          SQL.Add(', Forms.LastUser');
          SQL.Add(', dbo.MiladiToShamsiTime(Forms.ModifyDate,1) AS ModifyDateSh');

          SQL.Add('FROM Forms LEFT OUTER JOIN');
          SQL.Add('FormItems ON Forms.FormID = FormItems.FormID AND Forms.ServerID = FormItems.ServerID AND Forms.YearID = FormItems.YearID');
          SQL.Add('LEFT OUTER JOIN Vu_CustomersGroups AS Customers_2 ON Forms.CustomerID2 = Customers_2.CustID');
          SQL.Add('LEFT OUTER JOIN Vu_CustomersGroups AS Customers_1 ON Forms.CustomerID1 = Customers_1.CustID');

          SQL.Add('LEFT OUTER JOIN Vu_CustomersGroups AS Customers_3 ON Forms.CustomerID3 = Customers_3.CustID');
          SQL.Add('LEFT OUTER JOIN Vu_CustomersGroups AS Customers_D ON FormItems.CustomerID2 = Customers_D.CustID');
          SQL.Add('LEFT OUTER JOIN FaraSystems.dbo.Operators ON Forms.OperatorID = FaraSystems.dbo.Operators.UserID');

          SQL.Add('WHERE ((Forms.FormDate BETWEEN :DateFrom AND :DateTo)');
          if chkModifyDate.Checked then
            SQL.Add('or(CONVERT(date, Forms.ModifyDate )  BETWEEN :ModifyDateFrom AND :ModifyDateTo)');
          SQL.Add(')AND Forms.FormType = :Type ');
          SQL.Add('AND ((ISNULL(Forms.OperatorID,0)=0)OR(Forms.OperatorID BETWEEN :OperatorIDFrom AND :OperatorIDTo))');

          if opt.ChkUsersCustomersGroupsActive then
          begin
            SQL.Add('AND(dbo.ChkUsersCustomersGroups( :UserAdmin , :UserID , Forms.CustomerID1 ) = 1)');
            Parameters.ParamByName('UserAdmin').Value :=
              ifthen(User.PowerUser, 1, 0);
            Parameters.ParamByName('UserID').Value := User.id;
          end;

          SQL.Add('ORDER BY Forms.ModifyDate');
          Parameters.ParamByName('Type').Value := qryTypes.FieldByName('Type')
            .AsInteger;

        end;
      3:
        begin
          SQL.Text := 'SELECT DISTINCT  ReciptItems.ReciptItemID,0 as FormID, Recipts.ReciptID, Recipts.ServerID';
          SQL.Add(', Recipts.YearID,Recipts.ReciptNumber AS Number, Recipts.ReciptDate AS Date');
          SQL.Add(', Recipts.PersonID1 AS CustomerID1,');
          SQL.Add('Customers.CustName AS CustName1, Customers.Mobile, Customers.NationalID,');
          SQL.Add('Recipts.PersonID1 AS CustomerID2, Customers_2.CustName AS CustName2');
          SQL.Add(',Customers_2.Mobile AS Mobile2 ,Customers_2.NationalID AS NationalID2');
          SQL.Add(', ReciptItems.StuffCode, StuffCoding.c_StuffName, '''' AS CheckNumber, '''' AS');
          SQL.Add('CheckDate, '''' AS BankName,');
          SQL.Add(' '''' AS AccountNumberNew, '''' AS AccountNumber, '''' AS City');
          SQL.Add(', ReciptItems.InputEntity + ReciptItems.OutputEntity');
          SQL.Add('AS Entity,');
          SQL.Add('ReciptItems.InputWeight + ReciptItems.OutputWeight AS Weight');
          SQL.Add(', ReciptItems.UnitSellPrice, Recipts.ReciptValue');
          SQL.Add('AS FormItemsAmount,');
          SQL.Add('ReciptItems.TotalInputPrice + ReciptItems.TotalOutputPrice AS Price');
          SQL.Add(', ReciptItems.StuffSize,');
          SQL.Add('ReciptItems.StuffDiameter, ReciptItems.StuffAlloy,');
          SQL.Add('ReciptItems.ItemNote, Recipts.StoreID, Stores.c_StoreName');
          SQL.Add(', Recipts.ReciptID AS ID, Recipts.ReciptType AS');
          SQL.Add('Type, 3 AS Kind, Recipts.ModifyDate,');
          SQL.Add('ReciptItems.StandardRate, ReciptItems.ArzAmount');
          SQL.Add(', dbo.GetReciptsIdDeficits(Recipts.ReciptID, Recipts.ServerID');
          SQL.Add(', Recipts.YearID ) AS ReciptsDeficit');

          SQL.Add(',Recipts.ReciptNote');
          SQL.Add(', Recipts.PersonID3 as CustomerID3,Customers_3.CustName AS CustName3');
          SQL.Add(', ReciptItems.PersonID1 as CustomerID_D,Customers_D.CustName AS CustName_D');
          SQL.Add(', Recipts.OperatorID, FaraSystems.dbo.Operators.name, Recipts.FirstUser, Recipts.LastUser');
          SQL.Add(', dbo.MiladiToShamsiTime(Recipts.ModifyDate,1) AS ModifyDateSh');

          SQL.Add('FROM StuffCoding RIGHT OUTER JOIN');
          SQL.Add('ReciptItems ON StuffCoding.c_StuffCode = ReciptItems.StuffCode RIGHT OUTER JOIN');
          SQL.Add('Recipts LEFT OUTER JOIN');
          SQL.Add('Vu_CustomersGroups as Customers ON Recipts.PersonID1 = Customers.CustID LEFT OUTER JOIN');
          SQL.Add('Stores ON Recipts.StoreID = Stores.n_StoreID ON ReciptItems.ReciptID = Recipts.ReciptID AND ReciptItems.ServerID = Recipts.ServerID AND ReciptItems.YearID = Recipts.YearID');

          SQL.Add('LEFT OUTER JOIN Vu_CustomersGroups AS Customers_2 ON Recipts.PersonID2 = Customers_2.CustID');

          SQL.Add('LEFT OUTER JOIN Customers AS Customers_3 ON Recipts.PersonID3 = Customers_3.CustID');
          SQL.Add('LEFT OUTER JOIN Vu_CustomersGroups AS Customers_D ON ReciptItems.PersonID1 = Customers_D.CustID');
          SQL.Add('LEFT OUTER JOIN FaraSystems.dbo.Operators ON Recipts.OperatorID = FaraSystems.dbo.Operators.UserID');

          SQL.Add('WHERE ((Recipts.ReciptDate BETWEEN :DateFrom AND :DateTo)');
          if chkModifyDate.Checked then
            SQL.Add('or(CONVERT(date, Recipts.ModifyDate )  BETWEEN :ModifyDateFrom AND :ModifyDateTo)');
          SQL.Add(')AND Recipts.ReciptType = :Type ');
          SQL.Add('AND ((ISNULL(Recipts.OperatorID,0)=0)OR(Recipts.OperatorID BETWEEN :OperatorIDFrom AND :OperatorIDTo))');

          if opt.ChkUsersCustomersGroupsActive then
          begin
            SQL.Add('AND(dbo.ChkUsersCustomersGroups( :UserAdmin , :UserID , Recipts.PersonID1 ) = 1)');
            Parameters.ParamByName('UserAdmin').Value :=
              ifthen(User.PowerUser, 1, 0);
            Parameters.ParamByName('UserID').Value := User.id;
          end;

          SQL.Add('ORDER BY Recipts.ModifyDate');

        end;
      5:
        begin
          SQL.Text :=
            'SELECT DISTINCT 0 as FormID,0 as ReciptID,0 as ServerID,0 as YearID';
          SQL.Add(',0 AS Number, dbo.MiladiTOShamsi(StuffCoding.ModifyDate) AS Date');
          SQL.Add(', 0 AS CustomerID1, '''' AS CustName1, '''' as Mobile, '''' as NationalID,');
          SQL.Add('0 AS CustomerID2,');
          SQL.Add(''''' AS CustName2,'''' AS Mobile2, '''' as NationalID2 , StuffCoding.c_StuffCode AS StuffCode, StuffCoding.c_StuffName, '''' AS CheckNumber, '''' AS');
          SQL.Add('CheckDate, '''' AS BankName,');
          SQL.Add(''''' AS AccountNumberNew, '''' AS AccountNumber, '''' AS City, 0.0 AS Entity, 0.0 AS Weight, StuffCoding.BuyPrice');
          SQL.Add('AS UnitSellPrice,');
          SQL.Add('StuffCoding.BuyPrice * 0 AS FormItemsAmount, StuffCoding.SellPrice1 AS Price, '''' AS StuffSize, 0.0 AS');
          SQL.Add('StuffDiameter, '''' AS StuffAlloy,');
          SQL.Add('StuffCoding.StuffNote AS ItemNote, 0 AS StoreID, '''' AS c_StoreName, 0 AS ID, 0 AS Type, 5');
          SQL.Add('AS Kind, StuffCoding.ModifyDate,');
          SQL.Add('StuffCoding.StandardRate, 0.0 AS ArzAmount, StuffCoding.BuyPrice * 0 AS ReciptsDeficit');

          SQL.Add(','''' AS ReciptNote');
          SQL.Add(', 0 AS CustomerID3, '''' AS CustName3');
          SQL.Add(', 0 AS CustomerID_D, '''' AS CustName_D');
          SQL.Add(', StuffCoding.OperatorID, FaraSystems.dbo.Operators.name, '''' AS FirstUser, '''' AS LastUser');
          SQL.Add(', dbo.MiladiToShamsiTime(StuffCoding.ModifyDate,1) AS ModifyDateSh');

          SQL.Add('FROM ');
          // SQL.Add('Stores INNER JOIN StoreStuffs ON Stores.n_StoreID = StoreStuffs.n_StoreID RIGHT OUTER JOIN');
          SQL.Add('StuffCoding ');
          // SQL.Add(' ON StoreStuffs.c_StuffCode = StuffCoding.c_StuffCode');
          SQL.Add('LEFT OUTER JOIN FaraSystems.dbo.Operators ON StuffCoding.OperatorID = FaraSystems.dbo.Operators.UserID');

          // SQL.Add('WHERE  dbo.MiladiTOShams(ModifyDate) BETWEEN :DateFrom AND :DateTo ');
          SQL.Add('WHERE ((ISNULL(StuffCoding.OperatorID,0)=0)OR(StuffCoding.OperatorID BETWEEN :OperatorIDFrom AND :OperatorIDTo))');
          if chkModifyDate.Checked then
            SQL.Add('AND (CONVERT(date, ModifyDate ) BETWEEN :ModifyDateFrom AND :ModifyDateTo)')
          else
            SQL.Add('AND  dbo.MiladiTOShamsi(ModifyDate) BETWEEN :DateFrom AND :DateTo ');

          SQL.Add('ORDER BY StuffCoding.ModifyDate');
          if chkModifyDate.Checked then
          begin
            Parameters.ParamByName('ModifyDateFrom').Value := ModifyDateFrom;
            Parameters.ParamByName('ModifyDateTo').Value := ModifyDateTo;
          end;

        end;
    end;
    if Parameters.FindParam('OperatorIDFrom') <> nil then
    begin
      Parameters.ParamByName('OperatorIDFrom').Value :=
        GetcFrom(myParams.ParamValues['UserID'], ftInteger);
      Parameters.ParamByName('OperatorIDTo').Value :=
        GetcTo(myParams.ParamValues['UserID'], ftInteger);
    end;

    if Parameters.FindParam('DateFrom') <> nil then
    begin
      Parameters.ParamByName('DateFrom').Value := DateFrom;
      Parameters.ParamByName('DateTo').Value := DateTo;
    end;

    if Parameters.FindParam('ModifyDateFrom') <> nil then
    begin
      Parameters.ParamByName('ModifyDateFrom').Value := ModifyDateFrom;
      Parameters.ParamByName('ModifyDateTo').Value := ModifyDateTo;
    end;

    if Parameters.FindParam('Type') <> nil then
      Parameters.ParamByName('Type').Value := qryTypes.FieldByName('Type')
        .AsInteger;

    Active := True;
  end; // with
  // with qryTypesItems.Parameters do
  // begin
  // LblLimit.Caption:=//'از مشتري '+IntToStr(ParamByName('PersonIDFrom1').Value)+' تا '+IntToStr(ParamByName('PersonIDTo1').Value)+'    '+
  // 'از تاريخ '+ParamByName('DateFrom').Value+' تا '+ParamByName('DateTo').Value;
  // end;//with
  Entity_Weight(DBGrid2);
  b := qryTypes.FieldByName('Kind').AsInteger in [3];
  setColumns2(DBGrid2, b, 'Entity');
  setColumns2(DBGrid2, b, 'Weight');
  setColumns2(DBGrid2, b, 'StuffSize');
  setColumns2(DBGrid2, b, 'StuffDiameter');
  setColumns2(DBGrid2, b, 'StuffAlloy');
  setColumns2(DBGrid2, b, 'UnitSellPrice');
  setColumns2(DBGrid2, b, 'StandardRate');
  setColumns2(DBGrid2, b, 'ArzAmount');
  setColumns2(DBGrid2, b, 'ReciptsDeficit');
  b := qryTypes.FieldByName('Kind').AsInteger in [1]; // ,2
  setColumns2(DBGrid2, b, 'CheckNumber');
  setColumns2(DBGrid2, b, 'CheckDate');
  setColumns2(DBGrid2, b, 'BankName');
  setColumns2(DBGrid2, b, 'AccountNumberNew');
  setColumns2(DBGrid2, b, 'AccountNumber');
  setColumns2(DBGrid2, b, 'CustomerID2');
  setColumns2(DBGrid2, b, 'CustName2');
  setColumns2(DBGrid2, b, 'FormItemsAmount');
  setColumns2(DBGrid2, b, 'City');
  b := qryTypes.FieldByName('Kind').AsInteger in [3, 5];
  setColumns2(DBGrid2, b, 'StuffCode');
  setColumns2(DBGrid2, b, 'c_StuffName');
  b := qryTypes.FieldByName('Kind').AsInteger in [1, 3];
  setColumns2(DBGrid2, b, 'Number');
  setColumns2(DBGrid2, b, 'CustomerID1');
  setColumns2(DBGrid2, b, 'CustName1');

  b := qryTypes.FieldByName('Person3Caption').AsString <> EmptyStr;
  setColumns2(DBGrid2, b, 'CustomerID3');
  setColumns2(DBGrid2, b, 'CustName3');

  qryTypesItems.FieldByName('CustomerID1').DisplayLabel :=
    'كد ' + qryTypes.FieldByName('Person1Caption').AsString;
  qryTypesItems.FieldByName('CustomerID2').DisplayLabel :=
    'كد ' + qryTypes.FieldByName('Person2Caption').AsString;
  qryTypesItems.FieldByName('CustomerID3').DisplayLabel :=
    'كد ' + qryTypes.FieldByName('Person3Caption').AsString;

  qryTypesItems.FieldByName('CustName1').DisplayLabel := 'نام ' +
    qryTypes.FieldByName('Person1Caption').AsString;
  qryTypesItems.FieldByName('CustName2').DisplayLabel := 'نام ' +
    qryTypes.FieldByName('Person2Caption').AsString;
  qryTypesItems.FieldByName('CustName3').DisplayLabel := 'نام ' +
    qryTypes.FieldByName('Person3Caption').AsString;

end;

procedure TDailyWorkF.qryTypesItemsAfterOpen(DataSet: TDataSet);
begin
  inherited;
  // StatusBar1.Panels[5].Text:='تعدادفرم='+IntToStr(qryTypesItems.RecordCount);
  // if opt.EntityDisplay then
  // StatusBar1.Panels[4].Text:='مقدار='+CurrToStr(CalcSumFileds(qryTypesItems, 'entity'));
  // if opt.WeightDisplay then
  // StatusBar1.Panels[3].Text:='وزن='+CurrToStr(CalcSumFileds(qryTypesItems,'weight'));
  // StatusBar1.Panels[2].Text:='بدهكار='+CurrToStrF(CalcSumFileds(qryTypesItems,'bed'),ffCurrency,0);
  // StatusBar1.Panels[1].Text:='بستانكار='+CurrToStrF(CalcSumFileds(qryTypesItems,'bes'),ffCurrency,0);
  // StatusBar1.Panels[0].Text:='مانده=' + CurrToStrF(CalcSumFileds(qryTypesItems,'bed')-CalcSumFileds(qryTypesItems,'bes'),ffCurrency,0);
end;

procedure TDailyWorkF.FormCreate(Sender: TObject);
begin
  inherited;
  chkModifyDate.OnClick := nil;
  chkModifyDate.Checked :=
    StrToBool(ReadConfig(APPID, 'DailyWorkF_chkModifyDate', 'False'));
  DBGrid2.SetFooter4Sum([]);
  chkModifyDate.OnClick := chkModifyDateClick;
  FormType := var_glb_gParam;
end;

procedure TDailyWorkF.InitqryTypes;
begin
  inherited;
  With qryTypes do
  begin
    case FormType of
      0:
        begin
          /// ////////////////////////////////////
          SQL.Text :=
            'SELECT ReciptTypes.ReciptType AS Type, ReciptTypes.ReciptCaption AS Caption, 3 AS Kind,';
          SQL.Add('ReciptTypes.Person1Caption AS Person1Caption, ReciptTypes.Person2Caption AS Person2Caption');
          SQL.Add(', ReciptTypes.Person3Caption AS Person3Caption');
          SQL.Add('FROM ReciptTypes INNER JOIN');
          SQL.Add('Recipts ON ReciptTypes.ReciptType = Recipts.ReciptType');
          SQL.Add('WHERE ((Recipts.ReciptDate BETWEEN :DateFrom1 AND :DateTo1)');
          if chkModifyDate.Checked then
            SQL.Add('or(CONVERT(date, Recipts.ModifyDate )  BETWEEN :ModifyDate1From AND :ModifyDate1To)');
          SQL.Add(')GROUP BY ReciptTypes.ReciptType, ReciptTypes.ReciptCaption, ReciptTypes.Person1Caption, ReciptTypes.Person2Caption');
          SQL.Add(', ReciptTypes.Person3Caption');

          SQL.Add('UNION ALL');

          SQL.Add('SELECT FormTypes.FormType AS Type, FormTypes.FormCaption AS Caption, 1 AS Kind,');
          // FormTypes.DisplayFormType+
          SQL.Add('FormTypes.Customer1Label AS Person1Caption, FormTypes.Customer2Lable AS Person2Caption');
          SQL.Add(', FormTypes.Customer3Lable AS Person3Caption');
          SQL.Add('FROM FormTypes INNER JOIN Forms ON FormTypes.FormType = Forms.FormType');
          SQL.Add('WHERE ((Forms.FormDate BETWEEN :DateFrom2 AND :DateTo2)');
          if chkModifyDate.Checked then
            SQL.Add('or (CONVERT(date, Forms.ModifyDate )  BETWEEN :ModifyDate2From AND :ModifyDate2To)');
          SQL.Add(')GROUP BY FormTypes.FormType, FormTypes.FormCaption, FormTypes.Customer1Label, FormTypes.Customer2Lable ,');
          SQL.Add('FormTypes.DisplayFormType, FormTypes.Customer3Lable');

          SQL.Add('UNION ALL');

          SQL.Add('SELECT COUNT(c_StuffCode),''كدينگ كالا'' as Caption, 5 AS Kind,'''' AS Person1Caption,'''' AS Person2Caption');
          SQL.Add(','''' AS Person3Caption');
          SQL.Add('FROM StuffCoding');
          // SQL.Add('WHERE (RIGHT(dbo.MiladiTOShams(ModifyDate), 8) BETWEEN :DateFrom3 AND :DateTo3 )');

          if chkModifyDate.Checked then
            SQL.Add('WHERE (CONVERT(date, ModifyDate ) BETWEEN :ModifyDateFrom AND :ModifyDateTo)')
          else
            SQL.Add('WHERE  dbo.MiladiTOShamsi(ModifyDate) BETWEEN :DateFrom AND :DateTo ');

        end;
      1:
        begin
          SQL.Text :=
            'SELECT ReciptTypes.ReciptType AS Type, ReciptTypes.ReciptCaption AS Caption, 3 AS Kind,';
          SQL.Add('ReciptTypes.Person1Caption AS Person1Caption, ReciptTypes.Person2Caption AS Person2Caption');
          SQL.Add(', ReciptTypes.Person3Caption AS Person3Caption');
          SQL.Add('FROM ReciptTypes INNER JOIN');
          SQL.Add('Recipts ON ReciptTypes.ReciptType = Recipts.ReciptType');
          SQL.Add('WHERE ((Recipts.ReciptDate BETWEEN :DateFrom1 AND :DateTo1)');
          if chkModifyDate.Checked then
            SQL.Add('or(CONVERT(date, Recipts.ModifyDate )  BETWEEN :ModifyDateFrom AND :ModifyDateTo)');
          SQL.Add(') AND (ReciptTypes.SellEffect <>0 ) ');
          SQL.Add('GROUP BY ReciptTypes.ReciptType, ReciptTypes.ReciptCaption, ReciptTypes.Person1Caption, ReciptTypes.Person2Caption');
          SQL.Add(', ReciptTypes.Person3Caption');
        end;
    end;
  end;
end;

procedure TDailyWorkF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveConfig(APPID, 'DailyWorkF_chkModifyDate',
    BoolToStr(chkModifyDate.Checked));
end;

procedure TDailyWorkF.actShowFormExecute(Sender: TObject);
begin
  inherited;
  case qryTypesItems.FieldByName('Kind').AsInteger of
    0:
      Warn('براي نوع اطلاعات " نقل از قبل " فرمي وجود ندارد.!');
    1:
      ShowFormTypesForms(qryTypesItems, Self);
    3:
      ShowReciptTypes(qryTypesItems, Self)
  end; // case
end;

procedure TDailyWorkF.ppSysVarPageNumberGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TDailyWorkF.ppLblPrintDateGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := GetPrintDate
end;

procedure TDailyWorkF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName
end;

procedure TDailyWorkF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryTypesItems);
end;

procedure TDailyWorkF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryTypesItems);
end;

procedure TDailyWorkF.chkModifyDateClick(Sender: TObject);
begin
  inherited;
  actFilter.Execute
end;

procedure TDailyWorkF.DBGrid2DblClick(Sender: TObject);
begin
  inherited;
  actShowForm.Execute
end;

procedure TDailyWorkF.actPrintExecute(Sender: TObject);
begin
  inherited;
  try
    qryTypes.DisableControls;
    qryTypesItems.DisableControls;
    InitReportFile(ppReport1, 'DailyWorkFType' +
      IntToStr(qryTypes.FieldByName('Kind').AsInteger));
  finally
    qryTypes.EnableControls;
    qryTypesItems.EnableControls;
  end;
  // try
end;

procedure TDailyWorkF.actPrintVijehExecute(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(DBGrid2, FormType);
end;

procedure TDailyWorkF.ppLblCaptionGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := Text + qryTypes.FieldByName('Caption').AsString;
end;

procedure TDailyWorkF.ppSysVarPageNoGetText(Sender: TObject; var Text: String);
begin
  Text := GetPageNumberString(Text)
end;

end.
