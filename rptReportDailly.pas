{ -----------------------------------------------------------------------------
  Unit Name: rptCustomerTrancItems
  Author:    Mahmood
  ----------------------------------------------------------------------------- }
unit rptReportDailly;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DBCtrls,  Math,
  ppDB, ppDBPipe, ppComm, ppRelatv, ppProd, ppClass, ppReport, ppPrnabl,
  ppCtrls, ppCache, ppBands, ppVar, ppStrtch, ppMemo, ppModule,
  ppSubRpt, DB, ADODB, ComCtrls, ppParameter, ppDesignLayer,
  System.ImageList, System.Actions, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  CedarDbGrid;

type
  TrptReportDaillyF = class(Ttemplate2MDIF)
    SrcCustItem: TDataSource;
    ppDBPipeline2: TppDBPipeline;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn4: TBitBtn;
    DBNavigator2: TDBNavigator;
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
    Button1: TButton;
    ppHeaderBand1: TppHeaderBand;
    ppShape2: TppShape;
    ppLblCompanyName: TppLabel;
    ppLblFormName: TppLabel;
    ppLine1: TppLine;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLblCustomerID1: TppLabel;
    ppLblPrintDate: TppLabel;
    ppSysVarPageNumber: TppSystemVariable;
    ppLabel5: TppLabel;
    ppLine6: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLblDate: TppLabel;
    ppLabel17: TppLabel;
    ppLine7: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLblCustname1: TppLabel;
    ppLblCustomerID2: TppLabel;
    ppLblCustname2: TppLabel;
    ppLabel32: TppLabel;
    ppLine47: TppLine;
    ppLine48: TppLine;
    ppLine50: TppLine;
    ppLine51: TppLine;
    ppLabel1: TppLabel;
    ppLabel3: TppLabel;
    ppLine17: TppLine;
    ppLine18: TppLine;
    logo: TppImage;
    ppDetailBand1: TppDetailBand;
    ppLine5: TppLine;
    ppLabel12: TppLabel;
    qryCustItem: TADOQuery;
    IntegerField9: TIntegerField;
    IntegerField10: TIntegerField;
    IntegerField11: TIntegerField;
    StringField6: TStringField;
    IntegerField12: TIntegerField;
    StringField7: TStringField;
    IntegerField13: TIntegerField;
    StringField8: TStringField;
    StringField9: TStringField;
    StringField10: TStringField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    IntegerField16: TIntegerField;
    StringField11: TStringField;
    FloatField5: TFloatField;
    StringField12: TStringField;
    BCDField9: TBCDField;
    ppSummaryBand1: TppSummaryBand;
    ppShape4: TppShape;
    ppLine13: TppLine;
    ppDBCalc13: TppDBCalc;
    ppLine14: TppLine;
    ppLabel10: TppLabel;
    ppDBCalc14: TppDBCalc;
    ppLine30: TppLine;
    ppDBCalc15: TppDBCalc;
    ppDBCalc16: TppDBCalc;
    ppLine31: TppLine;
    ppLine32: TppLine;
    ppLabel11: TppLabel;
    ppDBCalc18: TppDBCalc;
    ppDBCalc1: TppDBCalc;
    ppLine20: TppLine;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppLine24: TppLine;
    ppLine25: TppLine;
    ppLine33: TppLine;
    ppDBText7: TppDBText;
    ppDBText6: TppDBText;
    ppDBText2: TppDBText;
    ppDBText1: TppDBText;
    ppLine3: TppLine;
    ppDBText9: TppDBText;
    ppLine10: TppLine;
    ppDBText8: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppLine43: TppLine;
    ppLine44: TppLine;
    ppLine45: TppLine;
    ppLine46: TppLine;
    ppDBText23: TppDBText;
    ppDBText11: TppDBText;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppDBText13: TppDBText;
    ppLine19: TppLine;
    ppDBText5: TppDBText;
    ppDBText10: TppDBText;
    ppLine2: TppLine;
    qryCustItemPrice: TBCDField;
    qryCustItemModifyDate: TDateTimeField;
    qryCustItemCustName: TStringField;
    qryCustItemc_StoreName: TStringField;
    qryCustItembed: TBCDField;
    qryCustItembes: TBCDField;
    qryCustItemKind: TIntegerField;
    qryCustItemServerID: TIntegerField;
    qryCustItemYearID: TIntegerField;
    qryCustItemFormID: TIntegerField;
    qryCustItemStuffCode: TLargeintField;
    DBGrid1: TCedarDbgrid;
    procedure actFilterExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actSendExelExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actShowFormExecute(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure ppSysVarPageNumberGetText(Sender: TObject; var Text: String);
    procedure ppLblPrintDateGetText(Sender: TObject; var Text: String);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure ppLblDateGetText(Sender: TObject; var Text: String);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure logoPrint(Sender: TObject);
    procedure actshowChartExecute(Sender: TObject);
  private
    { Private declarations }
    procedure UpdateFilter;
  public
    { Public declarations }
  end;

var
  rptReportDaillyF: TrptReportDaillyF;

implementation

uses filter_ADO, FilterClass_ADO, GlobalPro, DM,
  search2, sort2, TreeChart,
  FormFunctions, FaraConsts;

{$R *.dfm}

procedure TrptReportDaillyF.UpdateFilter;
begin
  with qryCustItem do
  begin
    Active := False;
    SQL.Text := 'SELECT a.*, Customers.CustName,ReciptID as FormID';
    SQL.Add('FROM Vu_CustomersGroups AS Customers RIGHT OUTER JOIN');
    SQL.Add('(SELECT Recipts.PersonID1, ReciptItems.ReciptID, ReciptItems.ServerID, ReciptItems.YearID');
    SQL.Add(', Recipts.ReciptNumber, Recipts.ReciptDate, Recipts.ReciptType, ReciptTypes.ReciptCaption,');
    SQL.Add('0 AS CheckNo, '''' AS CheckDate, ReciptItems.StuffCode, StuffCoding.c_StuffName, Units.UnitName,');
    SQL.Add('ReciptItems.InputEntity + ReciptItems.OutputEntity AS Entity, ReciptItems.InputWeight +');
    SQL.Add('ReciptItems.OutputWeight AS Weight,');
    SQL.Add('(case dbo.ReciptTypes.BedType when 1 then dbo.ReciptItems.TotalInputPrice + dbo.ReciptItems.TotalOutputPrice');
    SQL.Add('else 0 end)AS bed,');
    SQL.Add('(case dbo.ReciptTypes.BesType when 1 then dbo.ReciptItems.TotalInputPrice + dbo.ReciptItems.TotalOutputPrice');
    SQL.Add('else 0 end)as bes, ReciptItems.TotalInputPrice + ReciptItems.TotalOutputPrice AS Price,');
    SQL.Add('Recipts.StoreID, Stores.c_StoreName, ReciptItems.ItemNote,');
    SQL.Add('ReciptItems.StuffDiameter, ReciptItems.StuffSize, ReciptItems.UnitSellPrice, Recipts.ModifyDate,3 as Kind');
    SQL.Add('FROM ReciptItems INNER JOIN');
    SQL.Add('Recipts ON ReciptItems.ReciptID = Recipts.ReciptID AND ReciptItems.ServerID = Recipts.ServerID AND');
    SQL.Add('ReciptItems.YearID = Recipts.YearID INNER JOIN');
    SQL.Add('ReciptTypes ON Recipts.ReciptType = ReciptTypes.ReciptType INNER JOIN');
    SQL.Add('StuffCoding ON ReciptItems.StuffCode = StuffCoding.c_StuffCode INNER JOIN');
    SQL.Add('Units ON StuffCoding.n_UnitCode = Units.UnitCode LEFT OUTER JOIN');
    SQL.Add('Stores ON Recipts.StoreID = Stores.n_StoreID');
    SQL.Add('UNION ALL');
    SQL.Add('SELECT (CASE WHEN dbo.FormTypes.DisplayFormType in(0,7) THEN dbo.Forms.CustomerID1 ELSE');
    SQL.Add('dbo.FormItems.CustomerID2 END)');
    SQL.Add('AS CustomerID1, dbo.Forms.FormID,');
    SQL.Add('Forms.ServerID, Forms.YearID');
    SQL.Add(', dbo.Forms.FormNumber, dbo.Forms.FormDate, dbo.Forms.FormType,');
    SQL.Add('dbo.FormTypes.FormCaption,');
    SQL.Add('dbo.FormItems.CheckNumber, dbo.FormItems.CheckDate, 0 AS StuffCode, '''' AS C_StuffName,');
    SQL.Add(''''' AS Unitename, 0 AS entity, 0 AS Waight,');
    SQL.Add('(case dbo.FormTypes.BedBes when 1 then');
    SQL.Add('(CASE WHEN dbo.FormTypes.DisplayFormType in(0,7) THEN dbo.Forms.Amount ELSE');
    SQL.Add('dbo.FormItems.ItemAmount END) else 0 end) as bed,');
    SQL.Add('(case dbo.FormTypes.BedBes when 0 then');
    SQL.Add('(CASE WHEN dbo.FormTypes.DisplayFormType in(0,7) THEN dbo.Forms.Amount ELSE');
    SQL.Add('dbo.FormItems.ItemAmount END) else 0 end) as bes,');
    SQL.Add('(CASE WHEN dbo.FormTypes.DisplayFormType in(0,7) THEN dbo.Forms.Amount');
    SQL.Add('ELSE dbo.FormItems.ItemAmount END) AS Price,');
    SQL.Add('dbo.Forms.CustomerID1 AS StoreID,');
    SQL.Add(''''' c_StoreName, dbo.Forms.FomNote AS ItemNote, 0 AS StuffDiameter, ''0'' AS StuffSize, 0 AS UnitSellPrice,');
    SQL.Add('dbo.Forms.ModifyDate,');
    SQL.Add('( dbo.FormTypes.DisplayFormType+1 ) as Kind');
    SQL.Add('FROM dbo.Forms INNER JOIN');
    SQL.Add('dbo.FormTypes ON dbo.Forms.FormType = dbo.FormTypes.FormType LEFT OUTER JOIN');
    SQL.Add('dbo.FormItems ON dbo.Forms.FormID = dbo.FormItems.FormID) a ON Customers.CustID =');
    SQL.Add('a.PersonID1');
    SQL.Add('WHERE (ReciptDate BETWEEN :DateFrom AND :DateTo)');

    if opt.ChkUsersCustomersGroupsActive then
    begin
      SQL.Add('AND(dbo.ChkUsersCustomersGroups( :UserAdmin , :UserID , a.PersonID1 ) = 1)');
      Parameters.ParamByName('UserAdmin').Value := ifthen(User.PowerUser, 1, 0);
      Parameters.ParamByName('UserID').Value := User.id;
    end;

    SQL.Add('ORDER BY a.ModifyDate');
    SQL.Add('');

    Parameters.ParamByName('DateFrom').Value :=
      GetcFrom(myParams.ParamValues['ReciptDate'], ftDate);
    Parameters.ParamByName('DateTo').Value :=
      GetcTo(myParams.ParamValues['ReciptDate'], ftDate);
    Active := True;
    LblLimit.Caption := '«“  «—ÌŒ ' + Parameters.ParamByName('DateFrom').Value +
      '  « ' + Parameters.ParamByName('DateTo').Value;
  end; // with

end;

procedure TrptReportDaillyF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      AddItem(DMF.adcBSell, 'ReciptDate', '  «—ÌŒ ', ' «—ÌŒ', ftDate, dvMinMax,
        '', '', ciSimple, '', 'SELECT ''' + var_glb_CurrentDate + ''',''' +
        var_glb_CurrentDate + ''' FROM  Recipts ');
      // 'SELECT Max(Date_),Max(Date_) FROM  (SELECT ReciptDate as Date_ FROM Recipts union all SELECT FormDate as Date_ FROM Forms)as a ');
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

procedure TrptReportDaillyF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  actFilter.Execute;
  if myParams.FindParam('ReciptDate') = nil then
    close;
end;

procedure TrptReportDaillyF.actSendExelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TrptReportDaillyF.FormCreate(Sender: TObject);
begin
  inherited;
  Entity_Weight(DBGrid1);
  DBGrid1.SetFooter4Sum(['StuffCode']);
end;

procedure TrptReportDaillyF.actShowFormExecute(Sender: TObject);
begin
  inherited;
  case qryCustItem.FieldByName('Kind').AsInteger of
    0:
      Warn('»—«Ì ‰Ê⁄ «ÿ·«⁄«  " ‰ﬁ· «“ ﬁ»· " ›—„Ì ÊÃÊœ ‰œ«—œ.!');
    1, 2, 4:
      begin
        ShowFormTypesForms(qryCustItem, Self);
      end; // 2
    3:
      ShowReciptTypes(qryCustItem, Self);
  end; // case
end;

procedure TrptReportDaillyF.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  actShowForm.Execute
end;

procedure TrptReportDaillyF.actPrintExecute(Sender: TObject);
begin
  inherited;
  try
    qryCustItem.DisableControls;
    InitReportFile(ppReport1, 'rptReportDaily');
  finally
    qryCustItem.EnableControls;
  end; // try

end;

procedure TrptReportDaillyF.ppSysVarPageNumberGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TrptReportDaillyF.ppLblPrintDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate
end;

procedure TrptReportDaillyF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName
end;

procedure TrptReportDaillyF.ppLblDateGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := LblLimit.Caption
end;

procedure TrptReportDaillyF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryCustItem);
end;

procedure TrptReportDaillyF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryCustItem);
end;

procedure TrptReportDaillyF.logoPrint(Sender: TObject);
var
  s: String;
begin
  inherited;
  s := IncludeTrailingBackslash(ExtractFilePath(ParamStr(0)) + 'Report\') +
    (Sender as TppImage).Name + '.bmp';
  if (FileExists(s)) then
  begin
    (Sender as TppImage).Picture.LoadFromFile(s);
  end;
end;

procedure TrptReportDaillyF.actshowChartExecute(Sender: TObject);
begin
  inherited;
  TreeChartF.showChart(qryCustItem, Self, LblLimit.Caption);

end;

end.
