unit AllSalaryList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DBCtrls, DB, ADODB, Grids, Vcl.DBGrids, ppModule, ppBands,
  Filter_ADO_Const,
  ppCtrls, ppVar, ppPrnabl, ppClass, ppCache, ppDB, ppDBPipe, ppComm,
  ppRelatv, ppProd, ppReport, ppStrtch, ppRegion, SumDBGrid,
  ppParameter, ppDesignLayer, System.ImageList, System.Actions,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, CedarDbGrid;

type
  TAllSalaryListF = class(Ttemplate2MDIF)
    srcSalary: TDataSource;
    qrySalary: TADOQuery;
    qryWage: TADOQuery;
    BitBtn4: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn2: TBitBtn;
    DBNavigator2: TDBNavigator;
    qryDec: TADOQuery;
    actFilter: TAction;
    actSort: TAction;
    actExcel: TAction;
    ppReport1: TppReport;
    ppDBPipeline1: TppDBPipeline;
    actPrint: TAction;
    qrySalaryInfoID: TIntegerField;
    qrySalaryName_L1: TStringField;
    qrySalaryWagePrice: TBCDField;
    qrySalaryExtraWagePrice1: TBCDField;
    qrySalaryExtraWagePrice2: TBCDField;
    qrySalaryExtraWagePrice3: TBCDField;
    qrySalaryExtraWagePrice4: TBCDField;
    qrySalaryExtraWagePrice5: TBCDField;
    qrySalaryExtraWagePrice6: TBCDField;
    qrySalaryExtraWagePrice7: TBCDField;
    qrySalaryExtraWagePrice8: TBCDField;
    qrySalaryExtraWagePrice9: TBCDField;
    qrySalaryExtraWagePrice10: TBCDField;
    qrySalaryExtraWagePrice11: TBCDField;
    qrySalaryExtraWagePrice12: TBCDField;
    qrySalaryExtraWagePrice13: TBCDField;
    qrySalaryOtherExtraWagePrice: TBCDField;
    qrySalarySumWagePrice: TBCDField;
    qrySalaryDecPrice1: TBCDField;
    qrySalaryDecPrice2: TBCDField;
    qrySalaryDecPrice3: TBCDField;
    qrySalaryDecPrice4: TBCDField;
    qrySalaryDecPrice5: TBCDField;
    qrySalaryDecPrice6: TBCDField;
    qrySalaryDecPrice7: TBCDField;
    qrySalaryInsouranceEmployerPrice: TBCDField;
    qrySalaryInsouranceEmployeePrice: TBCDField;
    qrySalaryOtheremployerPrice: TBCDField;
    qrySalaryOtherEmployeePrice: TBCDField;
    qrySalaryTaxPrice: TBCDField;
    qrySalaryOtherDec: TBCDField;
    qrySalarySumdecPrice: TBCDField;
    qrySalarypayment: TBCDField;
    ppHeaderBand1: TppHeaderBand;
    ppShape2: TppShape;
    ppLabel21: TppLabel;
    w1: TppLabel;
    w2: TppLabel;
    w4: TppLabel;
    w3: TppLabel;
    w11: TppLabel;
    w10: TppLabel;
    w9: TppLabel;
    w8: TppLabel;
    ppLabel43: TppLabel;
    ppLine14: TppLine;
    ppLine16: TppLine;
    ppLine18: TppLine;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppLine21: TppLine;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppSystemVariable1: TppSystemVariable;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    w5: TppLabel;
    w12: TppLabel;
    w6: TppLabel;
    w14: TppLabel;
    w7: TppLabel;
    w13: TppLabel;
    ppLine34: TppLine;
    ppLine35: TppLine;
    ppLine36: TppLine;
    ppLine37: TppLine;
    ppLine33: TppLine;
    ppLine38: TppLine;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLabel34: TppLabel;
    d1: TppLabel;
    d8: TppLabel;
    d9: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLine39: TppLine;
    ppDetailBand2: TppDetailBand;
    ppLine45: TppLine;
    dw1: TppDBText;
    dw2: TppDBText;
    dw4: TppDBText;
    dw3: TppDBText;
    dw7: TppDBText;
    dw6: TppDBText;
    dw5: TppDBText;
    dw8: TppDBText;
    dw9: TppDBText;
    dw11: TppDBText;
    dw10: TppDBText;
    dw14: TppDBText;
    dw13: TppDBText;
    dw12: TppDBText;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppLine17: TppLine;
    ppLine24: TppLine;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppLine25: TppLine;
    dd1: TppDBText;
    dd6: TppDBText;
    ppLine26: TppLine;
    dd2: TppDBText;
    dd4: TppDBText;
    dd3: TppDBText;
    dd7: TppDBText;
    dd10: TppDBText;
    dd9: TppDBText;
    dd8: TppDBText;
    ppLine27: TppLine;
    ppLine28: TppLine;
    ppLine29: TppLine;
    ppLine30: TppLine;
    dd5: TppDBText;
    ppLine31: TppLine;
    ppLine32: TppLine;
    ppDBText9: TppDBText;
    ppDBText3: TppDBText;
    ppDBText6: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppShape3: TppShape;
    ppLabel6: TppLabel;
    ppLine40: TppLine;
    ppLine41: TppLine;
    ppLine63: TppLine;
    ppLine64: TppLine;
    ppLine65: TppLine;
    ppLine66: TppLine;
    ppLine67: TppLine;
    ppLine68: TppLine;
    ppLine69: TppLine;
    ppLine70: TppLine;
    ppLine71: TppLine;
    ppLine72: TppLine;
    ppLine73: TppLine;
    ppLine74: TppLine;
    ppDBCalc8: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppDBCalc11: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    ppDBCalc13: TppDBCalc;
    ppDBCalc14: TppDBCalc;
    ppDBCalc15: TppDBCalc;
    ppDBCalc16: TppDBCalc;
    ppDBCalc17: TppDBCalc;
    ppDBCalc18: TppDBCalc;
    ppDBCalc19: TppDBCalc;
    ppDBCalc20: TppDBCalc;
    ppDBCalc21: TppDBCalc;
    ppDBCalc22: TppDBCalc;
    ppDBCalc23: TppDBCalc;
    ppDBCalc24: TppDBCalc;
    ppDBCalc25: TppDBCalc;
    ppDBCalc26: TppDBCalc;
    ppDBCalc27: TppDBCalc;
    ppDBCalc28: TppDBCalc;
    ppDBCalc29: TppDBCalc;
    ppDBCalc30: TppDBCalc;
    ppDBCalc31: TppDBCalc;
    ppDBCalc32: TppDBCalc;
    ppDBCalc33: TppDBCalc;
    ppDBCalc34: TppDBCalc;
    ppDBCalc35: TppDBCalc;
    ppDBCalc36: TppDBCalc;
    ppLine75: TppLine;
    ppDBCalc37: TppDBCalc;
    ppDBCalc38: TppDBCalc;
    ppLine76: TppLine;
    ppLine77: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppShape1: TppShape;
    ppLine60: TppLine;
    ppLabel5: TppLabel;
    ppLine13: TppLine;
    ppLine15: TppLine;
    ppLine42: TppLine;
    ppLine43: TppLine;
    ppLine44: TppLine;
    ppLine46: TppLine;
    ppLine47: TppLine;
    ppLine48: TppLine;
    ppLine49: TppLine;
    ppLine53: TppLine;
    ppLine54: TppLine;
    ppLine55: TppLine;
    ppLine56: TppLine;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppDBCalc39: TppDBCalc;
    ppDBCalc40: TppDBCalc;
    ppDBCalc41: TppDBCalc;
    ppDBCalc42: TppDBCalc;
    ppDBCalc43: TppDBCalc;
    ppDBCalc44: TppDBCalc;
    ppDBCalc45: TppDBCalc;
    ppDBCalc46: TppDBCalc;
    ppDBCalc47: TppDBCalc;
    ppDBCalc48: TppDBCalc;
    ppDBCalc49: TppDBCalc;
    ppDBCalc50: TppDBCalc;
    ppDBCalc51: TppDBCalc;
    ppDBCalc52: TppDBCalc;
    ppDBCalc53: TppDBCalc;
    ppDBCalc54: TppDBCalc;
    ppDBCalc55: TppDBCalc;
    ppDBCalc56: TppDBCalc;
    ppDBCalc57: TppDBCalc;
    ppDBCalc58: TppDBCalc;
    ppDBCalc59: TppDBCalc;
    ppDBCalc60: TppDBCalc;
    ppLine57: TppLine;
    ppDBCalc61: TppDBCalc;
    ppDBCalc62: TppDBCalc;
    ppLine58: TppLine;
    ppLine59: TppLine;
    ppDBCalc63: TppDBCalc;
    ppDBCalc64: TppDBCalc;
    d2: TppLabel;
    d3: TppLabel;
    d4: TppLabel;
    d5: TppLabel;
    d6: TppLabel;
    d7: TppLabel;
    BitBtn1: TBitBtn;
    actChart: TAction;
    ppRegion1: TppRegion;
    ppRecFooterLine: TppLine;
    ppRegion2: TppRegion;
    ppRecFooterLine2: TppLine;
    actShow: TAction;
    BitBtn3: TBitBtn;
    qrySalaryExtraWagePrice14: TBCDField;
    qrySalaryExtraWagePrice15: TBCDField;
    qrySalaryExtraWagePrice16: TBCDField;
    qrySalaryExtraWagePrice17: TBCDField;
    qrySalaryExtraWagePrice18: TBCDField;
    qrySalaryExtraWagePrice19: TBCDField;
    qrySalaryDecPrice8: TBCDField;
    qrySalaryDecPrice9: TBCDField;
    qrySalaryDecPrice10: TBCDField;
    qrySalaryDecPrice11: TBCDField;
    qrySalaryDecPrice12: TBCDField;
    qrySalaryDecPrice13: TBCDField;
    qrySalaryDecPrice14: TBCDField;
    qrySalaryDecPrice15: TBCDField;
    qrySalaryDecPrice16: TBCDField;
    qrySalaryDecPrice17: TBCDField;
    qrySalaryDecPrice18: TBCDField;
    qrySalaryDecPrice19: TBCDField;
    qrySalaryDecPrice20: TBCDField;
    qrySalaryDecPrice21: TBCDField;
    qrySalaryDecPrice22: TBCDField;
    qrySalaryDecPrice23: TBCDField;
    qrySalaryDecPrice24: TBCDField;
    qrySalaryExtraWagePrice20: TBCDField;
    qrySalaryExtraWagePrice21: TBCDField;
    qrySalaryExtraWagePrice22: TBCDField;
    qrySalaryExtraWagePrice23: TBCDField;
    qrySalaryExtraWagePrice24: TBCDField;
    qrySalaryExtraWagePrice25: TBCDField;
    qrySalaryExtraWagePrice26: TBCDField;
    qrySalaryExtraWagePrice27: TBCDField;
    qrySalaryExtraWagePrice28: TBCDField;
    qrySalaryExtraWagePrice29: TBCDField;
    qrySalaryDecPrice25: TBCDField;
    qrySalaryDecPrice26: TBCDField;
    qrySalaryDecPrice27: TBCDField;
    qrySalaryDecPrice28: TBCDField;
    qrySalaryDecPrice29: TBCDField;
    qrySalaryInsouranceEmployerPrice2: TBCDField;
    qrySalaryInsouranceEmployeePrice2: TBCDField;
    qrySalary_Row: TIntegerField;
    DBGrid1: TCedarDbgrid;
    procedure actFilterExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actExcelExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure ppLabel34GetText(Sender: TObject; var Text: String);
    procedure ppLabel46GetText(Sender: TObject; var Text: String);
    procedure ppSystemVariable1GetText(Sender: TObject; var Text: String);
    procedure ppLabel45GetText(Sender: TObject; var Text: String);
    procedure actChartExecute(Sender: TObject);
    procedure actShowExecute(Sender: TObject);
    procedure qrySalaryCalcFields(DataSet: TDataSet);
  private
    capDec: array [0 .. 29] of string;
    capWage: array [0 .. 29] of string;
    procedure MakeReport;
    procedure UpdateFilter;
    procedure Makeqry;
    procedure setDisplayLabel;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AllSalaryListF: TAllSalaryListF;

implementation

uses DM, filter_ADO, FilterClass_ADO, GlobalPro, sort2, search2,
  TreeChart, SalaryList4Office2, SalaryFunctions, FaraConsts, infoSMS;

{$R *.dfm}

procedure TAllSalaryListF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      AddItemFilter(GetFilter, TLabelID);
      AddItem(DMf.adcSalary, 'EmployTypeID', '‰Ê⁄ Õﬂ„ ', '‰Ê⁄', ftInteger,
        dvDefaults, 'true', '', ciCheck,
        'SELECT InfoID,InfoName_L1 FROM  Pay.FormsInfo WHERE  (FormType = 14)', '');
      AddItem(DMf.adcSalary, 'ArchiveID', ' ‘„«—Â »«Ìê«‰Ì', '‘„«—Â', ftInteger,
        dvDefaults, '0', '', ciSingle, '', '');
      AddItem(DMf.adcSalary, 'Mounth', ' „«Â', '‘„«—Â', ftInteger, dvDefaults,
        IntToStr(var_glb_CurrentMonth), '', ciSingle, '', '');
      AddItem(DMf.adcSalary, 'InfoID', '⁄‰Ê«‰ ”«“„«‰', '', ftInteger,
        dvDefaults, 'true', '', ciCheck,
        'SELECT  InfoID,InfoName_L1,InfoName_L2 FROM   Pay.FormsInfo  WHERE  FormType = 12 ',
        '');
      // AddItem(DMf.adcSalary,'InfoID','⁄‰Ê«‰ ”«“„«‰','ﬂœ',ftInteger,dvMinMax,'','',ciCheck,
      // 'SELECT  InfoID,InfoName_L1,InfoName_L2 FROM   Pay.FormsInfo  WHERE  FormType = 12',
      // 'SELECT MIN(InfoID), MAX(InfoID)  FROM Pay.FormsInfo  where FormType =12 GROUP BY FormType');
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

procedure TAllSalaryListF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  if actFilter.Execute then
    if myParams.FindParam('Mounth') = nil then
      Close;
end;

procedure TAllSalaryListF.Makeqry;
var
  Salarysql: string;
  W: Integer;
begin
  qryWage.First;
  qryDec.First;
  W := 1;
  with qrySalary do
  begin
    Active := false;
    SQL.Text :=
      'SELECT  FormsInfo_OfficeCode.InfoID, FormsInfo_OfficeCode.InfoName_L1 AS Name_L1 ,'
      + 'sum(case when FormTypes.SalaryKind in(1,2,5,6) then price else 0 end) as WagePrice ';
    while W <= 30 do
    begin
      if not qryWage.Eof then
      begin
        SQL.Add(',sum(case when FormTypes.SalaryKind in(3,13) and FixedCalculated.SalaryID='
          + qryWage.Fieldbyname('FormInfoID').AsString +
          ' then price else 0 end) as ExtraWagePrice' + IntToStr(W));
        qryWage.Next;
      end
      else
      begin
        SQL.Add(', sum( case FixedCalculated.SalaryID when -1  then price else 0 end ) as ExtraWagePrice'
          + IntToStr(W));
      end;
      W := W + 1;
    end; // while
    if qryWage.Fieldbyname('FormInfoID').AsString <> '' then
      SQL.Add(',sum(case when  FormTypes.SalaryKind in(3,13) and FixedCalculated.SalaryID>'
        + qryWage.Fieldbyname('FormInfoID').AsString +
        ' then price else 0 end) as OtherExtraWagePrice')
    else
      SQL.Add(', sum( case FixedCalculated.SalaryID when -1  then price else 0 end ) as OtherExtraWagePrice');

    SQL.Add(',sum(case when FormTypes.SalaryKind in(1,2,3,5,6,13) then price else 0 end) as SumWagePrice ');
    W := 1;
    while W <= 30 do
    begin
      if not qryDec.Eof then
      begin
        SQL.Add(',sum(case when  FixedCalculated.SalaryID=' +
          qryDec.Fieldbyname('FormInfoID').AsString +
          ' then price else 0 end) as DecPrice' + IntToStr(W));
        qryDec.Next;
      end
      else
      begin
        SQL.Add(', sum( case FixedCalculated.SalaryID when -1  then price else 0 end ) as DecPrice'
          + IntToStr(W));
      end;
      W := W + 1;
    end; // while

    SQL.Add(',sum(case when ( FormTypes.SalaryKind =10 and FixedCalculated.ShowListKind=4 and FormsInfo_SalaryIDFix.InfoID=1 )');
    SQL.Add('then price else 0 end) as InsouranceEmployerPrice ,');
    SQL.Add('sum(case when ( FormTypes.SalaryKind =10 and FixedCalculated.ShowListKind=2 and FormsInfo_SalaryIDFix.InfoID=1 )');
    SQL.Add('then price else 0 end) as InsouranceEmployeePrice ,');
    SQL.Add('sum(case when ( FormTypes.SalaryKind =10 and FixedCalculated.ShowListKind=4 and FormsInfo_SalaryIDFix.InfoID=2 )');
    SQL.Add('then price else 0 end) as InsouranceEmployerPrice2 ,');
    SQL.Add('sum(case when ( FormTypes.SalaryKind =10 and FixedCalculated.ShowListKind=2 and FormsInfo_SalaryIDFix.InfoID=2 )');
    SQL.Add('then price else 0 end) as InsouranceEmployeePrice2 ,');
    SQL.Add('sum(case when ( FormTypes.SalaryKind =10 and FixedCalculated.ShowListKind=4 and FormsInfo_SalaryIDFix.InfoID>2 )');
    SQL.Add('then price else 0 end) as OtheremployerPrice ,');
    SQL.Add('sum(case when ( FormTypes.SalaryKind =10 and FixedCalculated.ShowListKind=2 and FormsInfo_SalaryIDFix.InfoID>2 )');
    SQL.Add('then price else 0 end) as OtherEmployeePrice ,');

    SQL.Add('sum(case when ( FormTypes.SalaryKind = 11 and FixedCalculated.bedbes=2) then price else 0 end ) as TaxPrice,');

    if qryWage.Fieldbyname('FormInfoID').AsString <> '' then
      SQL.Add('sum(case when  FormTypes.SalaryKind in(9,12) and FixedCalculated.SalaryID>'
        + qryDec.Fieldbyname('FormInfoID').AsString +
        ' then price else 0 end) as OtherDec,')
    else
      SQL.Add('sum( case FixedCalculated.SalaryID when -1  then price else 0 end ) as  OtherDec,');
    SQL.Add('sum(case when ( FormTypes.SalaryKind in(9,12)  or ( FormTypes.SalaryKind = 11 and FixedCalculated.bedbes=2) or ');
    SQL.Add('( FormTypes.SalaryKind =10 and FixedCalculated.ShowListKind =2 )) then price else 0 end) as SumdecPrice');
    SQL.Add(',(sum(case when FormTypes.SalaryKind in(1,2,3,5,6,13) then price else 0 end)-');
    SQL.Add('sum(case when ( FormTypes.SalaryKind in(9,12)  or ( FormTypes.SalaryKind = 11 and FixedCalculated.bedbes=2) or ');
    SQL.Add('( FormTypes.SalaryKind =10 and FixedCalculated.ShowListKind =2 )) then price else 0 end)) as payment');

    SQL.Add('FROM Pay.FormsInfo AS FormsInfo_OfficeCode RIGHT OUTER JOIN');
    SQL.Add('Pay.FormTypes INNER JOIN');
    SQL.Add('Pay.FormsInfo AS FormsInfo_SalaryIDFix ON FormTypes.FormType = FormsInfo_SalaryIDFix.FormType RIGHT OUTER JOIN');
    SQL.Add('Pay.FixedCalculated LEFT OUTER JOIN');
    SQL.Add('Pay.Interdicts ON FixedCalculated.PersonelNO = Interdicts.PersonelNo ON FormsInfo_SalaryIDFix.FormInfoID =');
    SQL.Add('FixedCalculated.SalaryID ON');
    SQL.Add('FormsInfo_OfficeCode.FormInfoID = FixedCalculated.OfficeCode LEFT OUTER JOIN');
    SQL.Add('Pay.FormsInfo AS FormsInfoEmployTypeID ON Pay.Interdicts.EmployTypeID = FormsInfoEmployTypeID.FormInfoID');
    SQL.Add('WHERE (FixedCalculated.Mounth =:Mounth) AND (FixedCalculated.ArchiveID = :ArchiveID ) ');

          if (CompanyFilterinLogin) and (not User.PowerAdmin) then
    begin
      SQL.Add('AND(FixedCalculated.subcompanyCode BETWEEN :companyCodeFrom AND :companyCodeTo )');
      Parameters.ParamByName('companyCodeFrom').Value := FcompanyCodeLogin;
      Parameters.ParamByName('companyCodeTo').Value := FcompanyCodeLogin;
    end;

    SQL.Add(' AND (FixedCalculated.LabelID BETWEEN :LabelIDFrom ANd :LabelIDTo)');
    SQL.Add('AND (InterdicType = 0 ) ');
    GetYearMounth(GetcFrom(myParams.ParamValues['Mounth'], ftInteger));
    SQL.Add('AND (LEFT(Interdicts.InterdicStartDate, 7) <=''' + optP.YearMounth
      + ''' )  AND 	(LEFT(Interdicts.InterdicEndDate, 7) >=''' +
      optP.YearMounth + ''')');
    SQL.Add('AND FormsInfoEmployTypeID.InfoID in(' +
      GetcFrom(myParams.ParamValues['EmployTypeID'], ftString) + ')');
    SQL.Add('AND FormsInfo_OfficeCode.InfoID  in(' +
      GetcFrom(myParams.ParamValues['InfoID'], ftString) + ')');
    SQL.Add('Group By FormsInfo_OfficeCode.InfoID, FormsInfo_OfficeCode.InfoName_L1');
    Salarysql := SQL.Text;
  end; // with
end;

procedure TAllSalaryListF.MakeReport;
begin
  w1.Text := capWage[0];
  w2.Text := capWage[1];
  w3.Text := capWage[2];
  w4.Text := capWage[3];
  w5.Text := capWage[4];
  w6.Text := capWage[5];
  w7.Text := capWage[6];
  w8.Text := capWage[7];
  w9.Text := capWage[8];
  w10.Text := capWage[9];
  w11.Text := capWage[10];
  w12.Text := capWage[11];
  w13.Text := capWage[12];
  w14.Text := capWage[13];
  // w15.Text:=capWage[14];
  // w16.Text:=capWage[15];
  // w17.Text:=capWage[16];
  // w18.Text:=capWage[17];
  // w19.Text:=capWage[18];
  // w20.Text:=capWage[19];
  d1.Text := capDec[0];
  d2.Text := capDec[1];
  d3.Text := capDec[2];
  d4.Text := capDec[3];
  d5.Text := capDec[4];
  d6.Text := capDec[5];
  d7.Text := capDec[6];
  // d8.Text:=capdec[7];
  // d9.Text:=capdec[8];
  // d10.Text:=capdec[9];
  // d11.Text:=capdec[10];
  // d12.Text:=capdec[11];
  // d13.Text:=capdec[12];
  // d14.Text:=capdec[13];
  // d15.Text:=capdec[14];

end;

procedure TAllSalaryListF.setDisplayLabel;
var
  W: Integer;
begin
  // --------------set  DisplayLabel-----------
  with qrySalary do
  begin
    W := 1;
    qryWage.First;
    while W <= 29 do
    begin
      if not qryWage.Eof then
      begin
        Fieldbyname('ExtraWagePrice' + IntToStr(W)).DisplayLabel :=
          qryWage.Fieldbyname('InfoName_L1').AsString;
        capWage[W - 1] := qryWage.Fieldbyname('InfoName_L1').AsString;
        qryWage.Next;
      end
      else
      begin
        capWage[W - 1] := '...';
      end;
      W := W + 1;
    end; // while

    W := 1;
    qryDec.First;
    while W <= 29 do
    begin
      if not qryDec.Eof then
      begin
        qrySalary.Fieldbyname('DecPrice' + IntToStr(W)).DisplayLabel :=
          qryDec.Fieldbyname('InfoName_L1').AsString;
        capDec[W - 1] := qryDec.Fieldbyname('InfoName_L1').AsString;
        qryDec.Next;
      end
      else
      begin
        capDec[W - 1] := '...';
      end;
      W := W + 1;
    end; // while
  end; // with salary
  //
end;

procedure TAllSalaryListF.UpdateFilter;
var
  i: Integer;
begin
  with qryWage do
  begin
    Active := false;
    Parameters.ParamByName('ArchiveID').Value :=
      GetcFrom(myParams.ParamValues['ArchiveID'], ftInteger);
    Parameters.ParamByName('Mounth').Value :=
      GetcFrom(myParams.ParamValues['Mounth'], ftInteger);
    Parameters.ParamByName('LabelIDFrom').Value :=
      GetcFrom(myParams.ParamValues['LabelID'], ftInteger);
    Parameters.ParamByName('LabelIDTo').Value :=
      GetcTo(myParams.ParamValues['LabelID'], ftInteger);
    Active := true;
  end;
  with qryDec do
  begin
    Active := false;
    Parameters.ParamByName('ArchiveID').Value :=
      GetcFrom(myParams.ParamValues['ArchiveID'], ftInteger);
    Parameters.ParamByName('Mounth').Value :=
      GetcFrom(myParams.ParamValues['Mounth'], ftInteger);
    Parameters.ParamByName('LabelIDFrom').Value :=
      GetcFrom(myParams.ParamValues['LabelID'], ftInteger);
    Parameters.ParamByName('LabelIDTo').Value :=
      GetcTo(myParams.ParamValues['LabelID'], ftInteger);
    Active := true;
  end;
  Makeqry;
  with qrySalary do
  begin
    Active := false;
    Parameters.ParamByName('ArchiveID').Value :=
      GetcFrom(myParams.ParamValues['ArchiveID'], ftInteger);
    Parameters.ParamByName('LabelIDFrom').Value :=
      GetcFrom(myParams.ParamValues['LabelID'], ftInteger);
    Parameters.ParamByName('LabelIDTo').Value :=
      GetcTo(myParams.ParamValues['LabelID'], ftInteger);
    Parameters.ParamByName('Mounth').Value :=
      GetcFrom(myParams.ParamValues['Mounth'], ftInteger);
    // Parameters.ParamByName('EmployTypeIDFrom').Value:=GetcFrom(myParams.ParamValues['EmployTypeID'],ftInteger);
    // Parameters.ParamByName('EmployTypeIDTo').Value:=GetcTo(myParams.ParamValues['EmployTypeID'],ftInteger);
    // Parameters.ParamByName('InfoIDFrom').Value:=GetcFrom(myParams.ParamValues['InfoID'],ftInteger);
    // Parameters.ParamByName('InfoIDTo').Value:=GetcTo(myParams.ParamValues['InfoID'],ftInteger);
    Active := true;
    Sort := 'InfoID';
  end;
  for i := 1 to qrySalary.FieldCount - 1 do
  begin
    qrySalary.Fields[i].Tag := 3
  end; // for

  setDisplayLabel;
  if ReadConfig(APPID + '\Windows\' + getparentformname(DBGrid1) + '_' +
    DBGrid1.Name, 'ColWidth', '') = '' then
    for i := 0 to DBGrid1.Columns.Count - 1 do
      DBGrid1.Columns[i].Width := 52;


    Dbgrid1.DoLoad('');

end;

procedure TAllSalaryListF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qrySalary);
end;

procedure TAllSalaryListF.actExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TAllSalaryListF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qrySalary);
end;

procedure TAllSalaryListF.actPrintExecute(Sender: TObject);
var
  ReportFooter: String;
begin
  inherited;
  ReportFooter := FooterFormType(48);
  try
    qrySalary.DisableControls;
    MakeReport;
    InitReport(ppReport1, ppFooterBand1, ppRegion1, ppRecFooterLine,
      ReportFooter);
    InitReport(ppReport1, ppSummaryBand1, ppRegion2, ppRecFooterLine2,
      ReportFooter);
    SetSendToBackShapeOnPrint(Self);
    ppReport1.Print;
  finally
    qrySalary.EnableControls;
  end;
end;

procedure TAllSalaryListF.ppLabel34GetText(Sender: TObject; var Text: String);
begin
  inherited;
  with DMF.qryTmpTmpp do
  begin
    Active := false;
    SQL.Text := 'SELECT  InfoName_L1 ' + 'FROM  Pay.StandardTimes where InfoID='
      + GetcFrom(myParams.ParamValues['Mounth'], ftString);
    Active := true;
    Text := Text + ' „«Â ' + Fields[0].AsString;
  end;
end;

procedure TAllSalaryListF.ppLabel46GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TAllSalaryListF.ppSystemVariable1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TAllSalaryListF.ppLabel45GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TAllSalaryListF.actChartExecute(Sender: TObject);
begin
  inherited;
  TreeChartF.showChart(qrySalary, Self, '');

end;

procedure TAllSalaryListF.actShowExecute(Sender: TObject);
var
  Mounth: Byte;
  ArchiveID: String;
begin
  inherited;
  ArchiveID := GetcFrom(myParams.ParamValues['ArchiveID'], ftInteger);
  Mounth := GetcFrom(myParams.ParamValues['Mounth'], ftInteger);
  CreateMDIForm3(false, TSalaryList4Office2F, SalaryList4Office2F, Self);
  SalaryList4Office2F.CmbArchiveID.ItemIndex := StrToInt(ArchiveID);
  SalaryList4Office2F.ToolBar1.Buttons[Mounth - 1].Down := true;
  SalaryList4Office2F.qryOffice.Locate('OfficeCode',
    qrySalary.Fieldbyname('InfoID').AsInteger, []);

end;

procedure TAllSalaryListF.qrySalaryCalcFields(DataSet: TDataSet);
begin
  inherited;
  DataSet.Fieldbyname('_Row').AsInteger := Abs(DataSet.RecNo)
end;

end.
