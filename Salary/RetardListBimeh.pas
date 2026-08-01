unit RetardListBimeh;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, DB, ADODB, ImgList, DBActns, ActnList, StdCtrls,
  ExtCtrls, Buttons, ComCtrls, ToolWin, Grids, DBGrids,
  Mask, DBCtrls, ppDB, ppDBPipe, ppBands, ppCtrls, myChkBox, ppPrnabl,
  ppClass, ppCache, ppComm, ppRelatv, ppProd, ppReport, ppVar, ppStrtch,
  ppMemo, ppModule, Dbf, strutils, Menus, ppParameter, ppDesignLayer,
  System.ImageList, System.Actions;

type
  TRetardListBimehF = class(Ttemplate2MDIF)
    qryPersonelWage: TADOQuery;
    Panel4: TPanel;
    DBGrid1: TDBGrid;
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
    actDisk: TAction;
    actSaveList: TAction;
    actPrint: TAction;
    BitBtn1: TBitBtn;
    qryPersonels: TADOQuery;
    srcPersonels: TDataSource;
    qryListDetail: TADOQuery;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    srcListDetail: TDataSource;
    qryListDetail_DSalary: TCurrencyField;
    qryListDetail_MSalary: TCurrencyField;
    qryListDetail_Maz: TCurrencyField;
    qryListDetail_Mash: TCurrencyField;
    qryListDetail_Totl: TCurrencyField;
    qryListDetail_Prate: TCurrencyField;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    ppListBimeh: TppReport;
    ppDBPersonel: TppDBPipeline;
    ppDBListDetail: TppDBPipeline;
    BitBtn2: TBitBtn;
    qryBimeh: TADOQuery;
    ppDBBimeh: TppDBPipeline;
    srcBimeh: TDataSource;
    BitBtn3: TBitBtn;
    StatusBar1: TStatusBar;
    qryListDetail_NetPayable: TCurrencyField;
    qryListDetailPersonelNo: TIntegerField;
    qryPersonelsPersonelNo: TIntegerField;
    qryPersonelspersonelstate_L1: TStringField;
    qryPersonelsPersonelName_L1: TStringField;
    qryPersonelsfatherName_L1: TStringField;
    qryPersonelsNationality_L1: TStringField;
    qryPersonelsBirthDate: TStringField;
    qryPersonelsSodurDate: TStringField;
    qryPersonelsBirthPlace_L1: TStringField;
    qryPersonelsNationalID: TStringField;
    qryPersonelsIDNumber: TStringField;
    qryPersonelsSex_L1: TStringField;
    qryPersonelslicence_L1: TStringField;
    qryPersonelsemployDate: TStringField;
    qryPersonelsfinishEmployDate: TStringField;
    qryPersonelsInsuranceNumber: TStringField;
    qryPersonelslastName_L1: TStringField;
    qryPersonelsname_L1: TStringField;
    qryPersonelsSodurPlace_L1: TStringField;
    qryPersonelsJobName: TStringField;
    qryEmployeeBime: TADOQuery;
    qryListDetail_Bime: TCurrencyField;
    qryListDetail_Other: TCurrencyField;
    qryEmployerBime: TADOQuery;
    qryListDetail_ClintShare: TCurrencyField;
    qryListDetail_Inaction: TCurrencyField;
    actSort: TAction;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    ppReport1: TppReport;
    ppDetailBand2: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppPageStyle2: TppPageStyle;
    ppShape4: TppShape;
    ppShape5: TppShape;
    ppLabel54: TppLabel;
    ppLblFromCaption: TppLabel;
    ppLabel60: TppLabel;
    ppLabel62: TppLabel;
    ppDBText21: TppDBText;
    ppLabel63: TppLabel;
    ppLabel64: TppLabel;
    ppLabel65: TppLabel;
    ppLabel66: TppLabel;
    ppLabel67: TppLabel;
    ppLabel68: TppLabel;
    ppLabel69: TppLabel;
    ppLabel70: TppLabel;
    ppLabel71: TppLabel;
    ppLabel73: TppLabel;
    ppLabel74: TppLabel;
    ppLabel75: TppLabel;
    ppLabel76: TppLabel;
    ppShape6: TppShape;
    ppLabel77: TppLabel;
    ppDBText22: TppDBText;
    ppLabel72: TppLabel;
    ppLabel78: TppLabel;
    ppLabel79: TppLabel;
    ppLabel80: TppLabel;
    ppLabel81: TppLabel;
    ppLabel82: TppLabel;
    ppLabel83: TppLabel;
    ppLabel84: TppLabel;
    ppDBText23: TppDBText;
    actPrintVa: TAction;
    btnPrint: TBitBtn;
    PopupMenu1: TPopupMenu;
    N11: TMenuItem;
    N21: TMenuItem;
    ppReport2: TppReport;
    ppDetailBand3: TppDetailBand;
    ppFooterBand2: TppFooterBand;
    ppPageStyle3: TppPageStyle;
    ppLabel86: TppLabel;
    ppLabel87: TppLabel;
    ppDBText24: TppDBText;
    ppLabel88: TppLabel;
    ppLabel89: TppLabel;
    ppLabel90: TppLabel;
    ppLabel91: TppLabel;
    ppLabel92: TppLabel;
    ppLabel93: TppLabel;
    ppLabel94: TppLabel;
    ppLabel95: TppLabel;
    ppLabel96: TppLabel;
    ppLabel97: TppLabel;
    ppLabel98: TppLabel;
    ppLabel99: TppLabel;
    ppLabel100: TppLabel;
    ppLabel102: TppLabel;
    ppLabel103: TppLabel;
    ppLabel104: TppLabel;
    ppLabel105: TppLabel;
    MskListNo: TMaskEdit;
    Label8: TLabel;
    BitBtn6: TBitBtn;
    actSendExel: TAction;
    qryBimehinsuranceNo: TWordField;
    qryBimehFormInfoID: TIntegerField;
    qryBimehinsurancename: TStringField;
    qryBimehEmployerName: TStringField;
    qryBimehworkShop: TStringField;
    qryBimehInsuranceLabel_L1: TStringField;
    qryBimehInsuranceLabel_L2: TStringField;
    qryBimehEmployeeshare: TFloatField;
    qryBimehEmployershare: TFloatField;
    qryBimehInactionInsuranceShare: TFloatField;
    qryBimehinsuranceUp: TBCDField;
    qryBimehdailywage: TBCDField;
    qryBimehAccTopicCode: TIntegerField;
    qryBimehAccDetailCode: TIntegerField;
    qryBimehAccCTopicCode: TIntegerField;
    qryBimehAccCTopicCode2: TIntegerField;
    qryBimehtel: TStringField;
    qryBimehaddress: TStringField;
    qryBimehHardShipPercent: TWordField;
    qryBimehPeopleExempt: TWordField;
    qryBimehFormInfoID_1: TIntegerField;
    qryBimehFormType: TSmallintField;
    qryBimehInfoID: TIntegerField;
    qryBimehInfoName_L1: TStringField;
    qryBimehInfoName_L2: TStringField;
    qryBimehPrvInfoID: TIntegerField;
    qryBimehAmount: TBCDField;
    qryBimehAmount2: TBCDField;
    qryBimehCoefficient: TFloatField;
    qryBimehStandardDays: TFloatField;
    qryBimehStandardTimes: TFloatField;
    qryBimehAccTopicCode_1: TIntegerField;
    qryBimehAccDetailCode_1: TIntegerField;
    qryBimehAccCTopicCode_1: TIntegerField;
    qryBimehAccCTopicCode2_1: TIntegerField;
    qryBimehCalCulateType: TWordField;
    qryBimehRecallFormInfoID1: TStringField;
    qryBimehRecallFormInfoID2: TStringField;
    qryBimehWordDocuments: TStringField;
    qryBimehRecalKindClock: TWordField;
    qryBimehFirstAmount: TBCDField;
    qryBimehMaxDay: TFloatField;
    qryBimehMaxTime: TFloatField;
    qryBimehAmount2_1: TBCDField;
    qryBimehOffShootName_L1: TStringField;
    qryPersonelsPercentWound: TFloatField;
    qryPersonelsAccountNumber: TStringField;
    PopList4Print: TPopupMenu;
    AllClikPop: TMenuItem;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBCalc1: TppDBCalc;
    ppLine4: TppLine;
    ppDBText18: TppDBText;
    ppDBText17: TppDBText;
    ppDBText14: TppDBText;
    ppDBText13: TppDBText;
    ppDBText12: TppDBText;
    ppDBText11: TppDBText;
    ppDBText3: TppDBText;
    ppDBText20: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppShape2: TppShape;
    ppLabel58: TppLabel;
    ppLabel59: TppLabel;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppLabel51: TppLabel;
    ppVariable1: TppVariable;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppDBCalc11: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    ppDBCalc13: TppDBCalc;
    ppPageStyle1: TppPageStyle;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLblOffShootName_L1: TppLabel;
    ppLabel6: TppLabel;
    ppLine2: TppLine;
    ppLine8: TppLine;
    ppLine1: TppLine;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLine34: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLabel17: TppLabel;
    ppLine14: TppLine;
    ppLabel18: TppLabel;
    ppLine15: TppLine;
    ppLabel19: TppLabel;
    ppLine16: TppLine;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLine18: TppLine;
    ppLabel22: TppLabel;
    ppLabel24: TppLabel;
    ppLine21: TppLine;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLine22: TppLine;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLine23: TppLine;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLine24: TppLine;
    ppLabel33: TppLabel;
    ppLine25: TppLine;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLine26: TppLine;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLine27: TppLine;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppLine28: TppLine;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppLine29: TppLine;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppLine19: TppLine;
    ppLine17: TppLine;
    ppLine30: TppLine;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppLine31: TppLine;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppLine10: TppLine;
    ppLine3: TppLine;
    ppLabel16: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel13: TppLabel;
    ppLabel23: TppLabel;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppLabel50: TppLabel;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppShape1: TppShape;
    ppShape3: TppShape;
    ppDBText19: TppDBText;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLabel49: TppLabel;
    ppLabel4: TppLabel;
    qryListDetailFHours: TFloatField;
    qryListDetailFDaily: TFloatField;
    qryPersonelsDSW_JOB: TStringField;
    pnl1: TPanel;
    mmoBime: TMemo;
    plblKarcon: TppLabel;
    plblkarfarma: TppLabel;
    plblBikari: TppLabel;
    plblKolHaq: TppLabel;
    plblMashmol: TppLabel;
    plblTotal: TppLabel;
    plblkarcon2: TppLabel;
    plblkarfarma2: TppLabel;
    plblbikari2: TppLabel;
    plblKolHaq2: TppLabel;
    plblMashmol2: TppLabel;
    plblTotal2: TppLabel;
    procedure ToolButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure qryListDetailCalcFields(DataSet: TDataSet);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure actPrintExecute(Sender: TObject);
    procedure myCheckBox4Print(Sender: TObject);
    procedure ppSystemVariable1GetText(Sender: TObject; var Text: String);
    procedure ppLabel23GetText(Sender: TObject; var Text: String);
    procedure ppLabel13GetText(Sender: TObject; var Text: String);
    procedure ppLabel50GetText(Sender: TObject; var Text: String);
    procedure actDiskExecute(Sender: TObject);
    procedure qryPersonelsAfterOpen(DataSet: TDataSet);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure ppDBText16GetText(Sender: TObject; var Text: String);
    procedure ppDBCalc3Print(Sender: TObject);
    procedure qryPersonelsNationality_L1GetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure actSortExecute(Sender: TObject);
    procedure ppLabel78GetText(Sender: TObject; var Text: String);
    procedure ppLabel79GetText(Sender: TObject; var Text: String);
    procedure ppLabel80GetText(Sender: TObject; var Text: String);
    procedure N11Click(Sender: TObject);
    procedure N21Click(Sender: TObject);
    procedure actPrintVaExecute(Sender: TObject);
    procedure ppLabel60GetText(Sender: TObject; var Text: String);
    procedure actSearch_Execute(Sender: TObject);
    procedure MskArchiveIDChange(Sender: TObject);
    procedure actSendExelExecute(Sender: TObject);
    procedure ppLblOffShootName_L1GetText(Sender: TObject; var Text: String);
    procedure AllClikPopClick(Sender: TObject);
    procedure ppDBTxtEmployDateGetText(Sender: TObject; var Text: String);
    procedure plblKarconGetText(Sender: TObject; var Text: String);
    procedure plblkarfarmaGetText(Sender: TObject; var Text: String);
    procedure plblBikariGetText(Sender: TObject; var Text: String);
    procedure plblKolHaqGetText(Sender: TObject; var Text: String);
    procedure plblMashmolGetText(Sender: TObject; var Text: String);
    procedure plblTotalGetText(Sender: TObject; var Text: String);
  private
    { Private declarations }
    MonthNo: Byte;
    CMen: Integer;
    CWomen: Integer;
    SQL4qryPersonels, SQL4qryBimeh: String;
    dsk_tkoso, dsk_tbime, dsk_bic, dsk_tmash, dsk_ttotl: Currency;
    procedure UpdateList;
    function GetWageValue(pid: String; code: Integer): Currency;
    function GetWageValue2(pid: String; FName: String): Currency;
    procedure Get_SexCount;
    function MakeDisk: Boolean;
    function GetExemption(bimehValue: Currency): Currency;
  public
    { Public declarations }
  end;

var
  RetardListBimehF: TRetardListBimehF;

implementation

uses DM, filter_ADO, FilterClass_ADO, GlobalPro, iransystem, mmessage,
  search2, sort2, Math, SalaryFunctions;

{$R *.dfm}

procedure TRetardListBimehF.ToolButton1Click(Sender: TObject);
begin
  inherited;
  MonthNo := (Sender as TToolButton).tag;    GetYearMounth(MonthNo); 1
  UpdateList;
end;

procedure TRetardListBimehF.FormCreate(Sender: TObject);
begin
  inherited;
  SQL4qryPersonels := qryPersonels.SQL.Text;
  SQL4qryBimeh := qryBimeh.SQL.Text;

  MonthNo := var_glb_CurrentMonth;
  ToolBar1.Buttons[MonthNo - 1].Down := True;
end;

procedure TRetardListBimehF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      AddItem(DMf.adcSalary, 'EmployTypeID', '‰Ê⁄ Õﬂ„ ', '‰Ê⁄', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT InfoID,InfoName_L1 FROM Pay.FormsInfo WHERE  (FormType = 14)',
        'SELECT MIN(InfoID), MAX(InfoID) FROM Pay.FormsInfo WHERE  (FormType = 14)');
      AddItem(DMf.adcSalary, 'ArchiveID', ' ‘„«—Â »«Ìê«‰Ì', '‘„«—Â', ftInteger,
        dvDefaults, '0', '', ciSingle, '', '');
      AddItem(DMf.adcSalary, 'c_PersonelNo', '„‘Œ’«  Å—”‰·Ì', '‘„«—Â',
        ftInteger, dvMinMax, '', '', ciLookup,
        'select PersonelNo, name_L1 + '' '' + lastName_L1 as pname FROM Pay.PersonelInfo ',
        'Select Min(PersonelNo),max(PersonelNo) FROM Pay.PersonelInfo ');
      AddItem(DMf.adcSalary, 'PersonelState', 'Ê÷⁄Ì  Å—”‰·Ì', 'ﬂœ', ftInteger,
        dvMinMax, '', '', ciLookup,
        ' SELECT InfoID, InfoName_L1  FROM  Pay.FormsInfo WHERE   (FormType = 3) ',
        'Select Min(InfoID),max(InfoID) from Pay.FormsInfo where (FormType = 3)');
      // 'Select 0,999999');
      AddItem(DMf.adcSalary, 'BimehType', '‰Ê⁄ »Ì„Â', 'ﬂœ', ftInteger,
        dvDefaults, 'true', '', ciCheck,
        'SELECT     InsuranceCONSTinfo.insuranceNo, InsuranceCONSTinfo.insurancename FROM Pay.InsuranceCONSTinfo INNER JOIN Pay.FormsInfo ON InsuranceCONSTinfo.FormInfoID = FormsInfo.FormInfoID WHERE     (InsuranceCONSTinfo.FormInfoID > 0)',
        // 'SELECT     Min(InsuranceCONSTinfo.insuranceNo),max(InsuranceCONSTinfo.insuranceNo) FROM Pay.InsuranceCONSTinfo INNER JOIN Pay.FormsInfo ON InsuranceCONSTinfo.FormInfoID = FormsInfo.FormInfoID WHERE     (InsuranceCONSTinfo.FormInfoID > 0)');
        '');

      // AddItem(DMF.adcSalary,'BimehType','‰Ê⁄ »Ì„Â','ﬂœ',ftInteger,dvMinMax,'','',ciLookup,
      // 'SELECT   insuranceNo, insurancename FROM Pay.InsuranceCONSTinfo  ','Select Min(insuranceNo),max(insuranceNo) FROM Pay.InsuranceCONSTinfo');
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

procedure TRetardListBimehF.FormShow(Sender: TObject);
begin
  inherited;
  // ColorDBGrid(DBGrid1);
  actFilter.Execute;
  if myParams.FindParam('c_PersonelNo') = nil then
    close
    // else   MskArchiveID.Text :=GetcFrom(myParams.ParamValues['ArchiveID'],ftInteger);
end;

procedure TRetardListBimehF.UpdateList;
begin
  actPrintVa.Enabled := False;
  GetYearMounth(MonthNo);
  with qryListDetail do
  begin
    Active := False;
    Parameters.ParamByName('MonthNo').Value := MonthNo;
    Active := True;
  end; // with

  with qryBimeh do
  begin
    Active := False;
    SQL.Text := SQL4qryBimeh;
    SQL.Add('where insuranceNo in(' + GetcFrom(myParams.ParamValues
      ['BimehType'], ftString) + ')');
    // Parameters.ParamByName('insID').Value:=GetcFrom(myParams.ParamValues['BimehType'],ftInteger);
    Active := True;
  end; // with

  with qryEmployeeBime do
  begin
    Active := False;
    Parameters.ParamByName('MonthNo').Value := MonthNo;
    Active := True;
  end; // with
  with qryEmployerBime do
  begin
    Active := False;
    Parameters.ParamByName('MonthNo').Value := MonthNo;
    Active := True;
  end; // with
  with qryPersonels do
  begin
    Active := False;
    SQL.Text := SQL4qryPersonels;
    SQL.Add('AND  EmployeeInfo.insuranceID in(' +
      GetcFrom(myParams.ParamValues['BimehType'], ftString) + ')');
    SQL.Add('ORDER BY Interdicts.PersonelNo');
    Parameters.ParamByName('StateFrom').Value :=
      GetcFrom(myParams.ParamValues['PersonelState'], ftInteger);
    Parameters.ParamByName('StateTo').Value :=
      GetcTo(myParams.ParamValues['PersonelState'], ftInteger);
    // Parameters.ParamByName('insFrom').Value:=GetcFrom(myParams.ParamValues['BimehType'],ftInteger);
    // Parameters.ParamByName('insTo').Value:=GetcTo(myParams.ParamValues['BimehType'],ftInteger);
    Parameters.ParamByName('MonthNo').Value := MonthNo;
    Parameters.ParamByName('MonthNo2').Value := MonthNo;
    Parameters.ParamByName('pidFrom').Value :=
      GetcFrom(myParams.ParamValues['c_PersonelNo']);
    Parameters.ParamByName('pidTo').Value :=
      GetcTo(myParams.ParamValues['c_PersonelNo']);
    Parameters.ParamByName('EmployTypeIDFrom').Value :=
      GetcFrom(myParams.ParamValues['EmployTypeID'], ftInteger);
    Parameters.ParamByName('EmployTypeIDTo').Value :=
      GetcTo(myParams.ParamValues['EmployTypeID'], ftInteger);
    Active := True;
    actDisk.Enabled := not IsEmpty;
    actPrint.Enabled := not IsEmpty;
  end; // with
  Get_SexCount;

end;

procedure TRetardListBimehF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
end;

procedure TRetardListBimehF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 3, False);
end;

function TRetardListBimehF.GetWageValue2;
begin
  with TADOQuery.Create(nil) do
  begin
    Connection := DMf.adcSalary;
    SQL.Text :=
      'SELECT RetardFixedCalculated.PersonelNO, SUM(CASE ShowlistKind WHEN 1 THEN price ELSE 0 END) AS SumWage, ';
    SQL.Add('SUM(CASE WHEN (ShowlistKind IN (2,4, 15, 14) AND bedbes = 1) THEN price ELSE 0 END) AS sum23Dec ,');
    SQL.Add('SUM(CASE ShowlistKind WHEN 3 THEN price ELSE 0 END) AS ContainInsourance,');
    SQL.Add('SUM(CASE WHEN (ShowlistKind=11 AND bedbes = 0  AND CalCulateKind = 12 ) THEN price ELSE 0 END) AS ContainTax, SUM(CASE');
    SQL.Add('WHEN (ShowlistKind = 11 AND');
    SQL.Add('bedbes = 2) THEN price ELSE 0 END) AS TaxValue, SUM(CASE ShowlistKind WHEN 2 THEN price ELSE 0 END)');
    SQL.Add('+ SUM(CASE WHEN ShowlistKind = 11 AND bedbes = 2 THEN price ELSE 0 END) AS SumDec,');
    SQL.Add('SUM(CASE ShowlistKind WHEN 1 THEN price ELSE 0 END) - (SUM(CASE ShowlistKind WHEN 2 THEN price ELSE');
    SQL.Add('0 END)');
    SQL.Add('+ SUM(CASE WHEN ShowlistKind = 11 AND bedbes = 2 THEN price ELSE 0 END)) AS PayableSalary');
    SQL.Add(',CAST(  ROUND( SUM(CASE WHEN ((FormsInfo_2.InfoID BETWEEN');
    SQL.Add('1 AND 4) AND (FormsInfo_2.FormType = 22)) THEN price ELSE 0 END)');
    SQL.Add('/ (CASE WHEN Functions_Sum.FunctionDay <> 0 THEN Functions_Sum.FunctionDay ELSE 1 END)  ,0) as money ) AS WageDay');
    SQL.Add('FROM Pay.RetardFixedCalculated(DEFAULT, DEFAULT, DEFAULT) AS RetardFixedCalculated LEFT OUTER JOIN');
    SQL.Add('Functions_Sum ON RetardFixedCalculated.PersonelNO = Functions_Sum.PersonelNo AND');
    SQL.Add('RetardFixedCalculated.Mounth = Functions_Sum.Mounth LEFT OUTER JOIN');
    SQL.Add('Pay.Interdicts ON RetardFixedCalculated.PersonelNO = Interdicts.PersonelNo LEFT OUTER JOIN');
    SQL.Add('Pay.FormsInfo AS FormsInfo_2 ON RetardFixedCalculated.SalaryID = FormsInfo_2.FormInfoID');
    SQL.Add('WHERE (Interdicts.InterdicType = 0) ');
    GetYearMounth(MonthNo);
    SQL.Add('AND (LEFT(Interdicts.InterdicStartDate, 7) <=''' + opt.YearMounth
      + ''' )  AND 	(LEFT(Interdicts.InterdicEndDate, 7) >=''' + opt.YearMounth
      + ''') AND ');
    SQL.Add('(RetardFixedCalculated.Mounth = :MonthNo ) AND (RetardFixedCalculated.PersonelNO = :pid )');
    SQL.Add('GROUP BY RetardFixedCalculated.PersonelNO, Functions_Sum.FunctionDay');
    Parameters.ParamByName('pid').Value := pid;
    Parameters.ParamByName('MonthNo').Value := MonthNo;
    Active := True;
    Result := Fieldbyname(FName).AsCurrency;
    Free;
  end; // with
end;

function TRetardListBimehF.GetWageValue(pid: String; code: Integer): Currency;
begin
  with qryPersonelWage do
  begin
    Active := False;
    Parameters.ParamByName('code').Value := code;
    Parameters.ParamByName('pid').Value := pid;
    Parameters.ParamByName('MonthNo').Value := MonthNo;
    // Parameters.ParamByName('ArchiveID').Value:=StrToInt(Trim(MskArchiveID.Text));
    Active := True;
    Result := Fields[0].AsCurrency;
    Active := False;
  end; // with
end;

procedure TRetardListBimehF.qryListDetailCalcFields(DataSet: TDataSet);
var
  v: Currency;
begin
  inherited;
  v := GetWageValue(DataSet.Fieldbyname('PersonelNo').AsString, 1);
  DataSet['_MSalary'] := v;
  if DataSet.Fieldbyname('FDaily').AsInteger <> 0 then
    DataSet['_DSalary'] := v / DataSet.Fieldbyname('FDaily').AsInteger;
  DataSet['_MAZ'] := GetWageValue(DataSet.Fieldbyname('PersonelNo')
    .AsString, 2);
  DataSet['_MASH'] := GetWageValue2(DataSet.Fieldbyname('PersonelNo').AsString,
    'ContainInsourance');
  DataSet['_TOTL'] := GetWageValue(DataSet.Fieldbyname('PersonelNo')
    .AsString, 4);
  DataSet['_NetPayable'] := DataSet.Fieldbyname('_TOTL').AsCurrency -
    DataSet.Fieldbyname('_Bime').AsCurrency - DataSet.Fieldbyname('_Other')
    .AsCurrency;

end;

procedure TRetardListBimehF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  QuickSearch(Key, qryPersonelsPersonelNo);
end;

procedure TRetardListBimehF.actPrintExecute(Sender: TObject);
var
  i: Integer;
begin
  inherited;
  try
    MakeMenuItem(55, AllClikPopClick, PopList4Print);
    for i := 0 to PopList4Print.Items.Count - 1 do
      PopList4Print.Items.Hint := 'Retard' + PopList4Print.Items.Hint;
    PopList4Print.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
  finally
  end;
end;

procedure TRetardListBimehF.myCheckBox4Print(Sender: TObject);
begin
  inherited;
  (Sender as TmyCheckBox).Checked := qryPersonels.Fieldbyname('Nationality_L1')
    .AsString <> '«Ì—«‰';
end;

procedure TRetardListBimehF.ppSystemVariable1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TRetardListBimehF.ppLabel23GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := opt.Year;
end;

procedure TRetardListBimehF.ppLabel13GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := Month2Names(MonthNo)
end;

procedure TRetardListBimehF.ppLabel50GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

function TRetardListBimehF.MakeDisk: Boolean;
var
  path: String;
  Dbf: TDbf;
  i, dsk_list_no: Integer;
  s: String;
  b1: Boolean;
  WarnMsg: String;

  dsk_num: Integer;
  dsk_tdd: Integer;
  dsk_trooz: Currency;
  dsk_tmah: Currency;
  dsk_tmaz: Currency;
  dsk_rate: Currency;
begin
  dsk_list_no := StrToInt(Trim(MskListNo.Text));
  Result := False;
  path := IncludeTrailingBackslash(ExtractFilePath(ParamStr(0)));
  CopyFile(pchar(path + 'Bimeh\wor.dbf'), pchar(path + 'dskwor00.dbf'), False);
  CopyFile(pchar(path + 'Bimeh\kar.dbf'), pchar(path + 'dskkar00.dbf'), False);
  Dbf := TDbf.Create(Self);
  try
    with Dbf do
    begin
      TableName := path + 'dskwor00.dbf';
      Open;
      for i := 0 to fieldcount - 1 do
        if Fields[i].DataType = ftString then
          TStringField(Fields[i]).Transliterate := False;
    end; // with
  except
    Warn('«‘ﬂ«· œ— « ’«· »Â »«‰ﬂ ›«ﬂ”', mtError);
    Exit;
  end; // try
  // ---------------------- initialize -----------------------------------
  dsk_num := 0; // ;
  dsk_tdd := 0; // Integer;
  dsk_trooz := 0; // Currency;
  dsk_tmah := 0; // Currency;
  dsk_tmaz := 0; // Currency;
  dsk_tmash := 0; // Currency;
  dsk_ttotl := 0; // Currency;
  dsk_tbime := 0; // Currency;
  dsk_tkoso := 0; // Currency;
  dsk_bic := 0; // Currency;
  dsk_rate := 0; // Currency;
  // ---------------------------------------------------------------------
  try
    BigMessageProgBar('œ— Õ«·  ÂÌÂ ›«Ì· »Ì„Â ...', qryPersonels.RecordCount);
    qryPersonels.DisableControls;
    qryListDetail.DisableControls;
    SetKeyboardLatin;
    qryPersonels.First;
    while not qryPersonels.Eof do
    begin
      qryListDetail.Active := False;
      qryListDetail.Active := True;
      with Dbf do
      begin
        Insert;
        try
          FieldValues['dsw_id'] := qryBimeh['WorkShop'];
          FieldValues['dsw_yy'] := opt.Year;
          FieldValues['dsw_mm'] := MonthNo;
          FieldValues['dsw_LISTNO'] := IntToStr(dsk_list_no);
          FieldValues['dsw_id1'] := qryPersonels.Fieldbyname
            ('InsuranceNumber').AsString;
          FieldValues['dsw_fname'] :=
            _UniCodeToIS(qryPersonels.Fieldbyname('name_L1').AsAnsiString);
          FieldValues['dsw_lname'] :=
            _UniCodeToIS(qryPersonels.Fieldbyname('lastname_L1').AsAnsiString);
          FieldValues['dsw_dname'] :=
            _UniCodeToIS(qryPersonels.Fieldbyname('fathername_L1')
            .AsAnsiString);
          FieldValues['dsw_idno'] := qryPersonels.Fieldbyname
            ('IDNumber').AsString;
          FieldValues['dsw_idPLC'] :=
            _UniCodeToIS(qryPersonels.Fieldbyname('SodurPlace_l1')
            .AsAnsiString);
          FieldValues['dsw_idate'] := qryPersonels.Fieldbyname
            ('SodurDate').AsString;
          FieldValues['dsw_sex'] :=
            _UniCodeToIS(qryPersonels.Fieldbyname('sex_l1').AsAnsiString);
          FieldValues['dsw_nat'] :=
            _UniCodeToIS(Trim(qryPersonels.Fieldbyname('Nationality_L1')
            .AsAnsiString) + 'Ì');
          if (leftstr(qryPersonels.Fieldbyname('employDate').AsString, 4)
            = opt.Year) and
            (StrToIntDef(MidStr(qryPersonels.Fieldbyname('employDate').AsString,
            6, 2), 0) = MonthNo) then
            FieldValues['dsw_sdate'] := qryPersonels.Fieldbyname
              ('EmployDate').AsString
          else
            FieldValues['dsw_sdate'] := '';

          if (leftstr(qryPersonels.Fieldbyname('finishEmployDate').AsString, 4)
            = opt.Year) and
            (StrToIntDef(MidStr(qryPersonels.Fieldbyname('finishEmployDate')
            .AsString, 6, 2), 0) = MonthNo) then
            FieldValues['dsw_edate'] := qryPersonels.Fieldbyname
              ('finishEmployDate').AsString
          else
            FieldValues['dsw_edate'] := '';
          FieldValues['dsw_ocp'] :=
            _UniCodeToIS(qryPersonels.Fieldbyname('JobName').AsAnsiString);
          FieldValues['dsw_dd'] := qryListDetail.Fieldbyname('FDaily')
            .AsInteger;
          FieldValues['dsw_rooz'] := qryListDetail.Fieldbyname('_DSalary')
            .AsCurrency;
          FieldValues['dsw_mah'] := qryListDetail.Fieldbyname('_MSalary')
            .AsCurrency;
          FieldValues['dsw_maz'] := qryListDetail.Fieldbyname('_Maz')
            .AsCurrency;
          FieldValues['dsw_mash'] := qryListDetail.Fieldbyname('_Mash')
            .AsCurrency;
          FieldValues['dsw_totl'] := qryListDetail.Fieldbyname('_Totl')
            .AsCurrency;
          FieldValues['dsw_bime'] := qryListDetail.Fieldbyname('_Bime')
            .AsCurrency;

          if FindField('PER_NATCOD') <> nil then
            FieldValues['PER_NATCOD'] := qryPersonels.Fieldbyname
              ('NationalID').AsString;

          if FindField('DSW_JOB') <> nil then
            FieldValues['DSW_JOB'] := qryPersonels.Fieldbyname
              ('DSW_JOB').AsString;

          dsk_num := dsk_num + 1;
          dsk_tdd := dsk_tdd + Fieldbyname('dsw_dd').AsInteger;
          dsk_trooz := dsk_trooz + Fieldbyname('dsw_rooz').AsCurrency;
          dsk_tmah := dsk_tmah + Fieldbyname('dsw_mah').AsCurrency;
          dsk_tmaz := dsk_tmaz + Fieldbyname('dsw_maz').AsCurrency;
          dsk_tmash := dsk_tmash + Fieldbyname('dsw_mash').AsCurrency;
          dsk_ttotl := dsk_ttotl + Fieldbyname('dsw_totl').AsCurrency;
          dsk_tbime := dsk_tbime + Fieldbyname('dsw_bime').AsCurrency;
          dsk_tkoso := dsk_tkoso + qryListDetail.Fieldbyname('_ClintShare')
            .AsCurrency;
          dsk_bic := dsk_bic + qryListDetail.Fieldbyname('_Inaction')
            .AsCurrency;
          Post;
        except
          Warn('Error for personel # ' + qryPersonels.Fieldbyname
            ('c_PersonelNo').AsString);
          Exit;
        end; // try
      end; // with
      qryPersonels.Next;
      GoProgressBar(qryPersonels.Fieldbyname('PersonelName_L1').AsString);
    end; // while
    dsk_tkoso := GetExemption(dsk_tkoso);
    with Dbf do
    begin
      Active := False;
      TableName := path + 'dskkar00.dbf';
      Open;
      for i := 0 to fieldcount - 1 do
        if Fields[i].DataType = ftString then
          TStringField(Fields[i]).Transliterate := False;
      Edit;
      FieldValues['dsk_id'] := qryBimeh['WorkShop'];
      FieldValues['dsk_name'] :=
        _UniCodeToIS(qryBimeh.Fieldbyname('EmployerName').AsAnsiString);
      FieldValues['dsk_farm'] :=
        _UniCodeToIS(qryBimeh.Fieldbyname('EmployerName').AsAnsiString);
      FieldValues['dsk_adrs'] := _UniCodeToIS(qryBimeh.Fieldbyname('address')
        .AsAnsiString);
      FieldValues['dsk_kind'] := 1;
      FieldValues['dsk_yy'] := opt.Year;
      FieldValues['dsk_mm'] := MonthNo;
      FieldValues['dsk_listno'] := IntToStr(dsk_list_no);
      FieldValues['dsk_disc'] := _UniCodeToIS('·Ì”  «’·Ì ‘«„· »Ì„Â »Ìﬂ«—Ì');
      FieldValues['dsk_num'] := dsk_num;
      FieldValues['dsk_tdd'] := dsk_tdd;
      FieldValues['dsk_trooz'] := dsk_trooz;
      FieldValues['dsk_tmah'] := dsk_tmah;
      FieldValues['dsk_tmaz'] := dsk_tmaz;
      FieldValues['dsk_tmash'] := dsk_tmash;
      FieldValues['dsk_ttotl'] := dsk_ttotl;
      FieldValues['dsk_tbime'] := dsk_tbime;

      dsk_tkoso := dsk_tmash * GetExemption
        (qryBimeh.Fieldbyname('Employershare').AsFloat / 100);
      FieldValues['dsk_tkoso'] := dsk_tkoso;

      dsk_bic := dsk_tmash * qryBimeh.Fieldbyname('InactionInsuranceShare')
        .AsFloat / 100;
      FieldValues['dsk_bic'] := dsk_bic;

      FieldValues['dsk_rate'] := qryBimeh.Fieldbyname('Employershare').AsFloat +
        qryBimeh.Fieldbyname('Employeeshare').AsFloat +
        qryBimeh.Fieldbyname('InactionInsuranceShare').AsFloat;
      Post;
      close;
    end; // with
    CloseMessage;
    s := ' ⁄œ«œ Å—”‰· = ' + IntToStr(dsk_num) + #13 +
    // ' ⁄œ«œ «›—«œ „⁄«› = ' + qryBimeh.Fieldbyname('PeopleExempt').AsString + #10 +
      'Ã„⁄ —Ê“Â«Ì ﬂ«—ﬂ—œ ·Ì”  = ' + IntToStr(dsk_tdd) + #13 +
      'Ã„⁄ œ” „“œ —Ê“«‰Â = ' + CurrToStrF(dsk_trooz, ffCurrency, 0) + #13 +
      'Ã„⁄ œ” „“œ „«ÂÌ«‰Â = ' + CurrToStrF(dsk_tmah, ffCurrency, 0) + #13 +
      'Ã„⁄ „“«Ì«Ì „«ÂÌ«‰Â „‘„Ê· ﬂ”— Õﬁ »Ì„Â = ' + CurrToStrF(dsk_tmaz,
      ffCurrency, 0) + #13 +
      'Ã„⁄ ﬂ· œ” „“œ Ê „“«Ì«Ì „«ÂÌ«‰Â „‘„Ê· ﬂ”— Õﬁ »Ì„Â = ' +
      CurrToStrF(dsk_tmash, ffCurrency, 0) + #13 +
      'Ã„⁄ ﬂ· œ” „“œ Ê „“«Ì«Ì „«ÂÌ«‰Â „‘„Ê· Ê €Ì—„‘„Ê· ﬂ”— Õﬁ »Ì„Â = ' +
      CurrToStrF(dsk_ttotl, ffCurrency, 0) + #13 + 'Ã„⁄ Õﬁ »Ì„Â ”Â„ »Ì„Â ‘œÂ = '
      + CurrToStrF(dsk_tbime, ffCurrency, 0) + #13 +
      'Ã„⁄ Õﬁ »Ì„Â ”Â„ ﬂ«—›—„« = ' + CurrToStrF(dsk_tkoso, ffCurrency, 0) + #13
      + 'Ã„⁄ »Ì„Â »Ìﬂ«—Ì = ' + CurrToStrF(dsk_bic, ffCurrency, 0);

    Warn(s, mtCustom);
    pnl1.Visible := True;
    mmoBime.Lines.Text := s;

    b1 := True;
    while b1 do
    begin
      s := get_box('–ŒÌ—Â ›«Ì· »Ì„Â',
        '·ÿ›« „”Ì— –ŒÌ—Â ›«Ì·Â«Ì »Ì„Â —« Ê«—œ ﬂ‰Ìœ:', 'A:\');
      if not DirectoryExists(s) then
      begin
        WarnMsg := '„”Ì— Ê«—œ ‘œÂ „⁄ »— ‰Ì” .';
        b1 := get_response(WarnMsg + ' œÊ»«—Â ”⁄Ì „Ìùﬂ‰Ìœø') = mrYes;
      end
      else
      begin
        b1 := False;
        if not CopyFile(pchar(path + 'dskwor00.dbf'),
          pchar(format(IncludeTrailingBackslash(s) + 'dskwor%.2d.dbf',
          [dsk_list_no])), False) then
        begin
          WarnMsg := '«‘ﬂ«· œ— ﬂÅÌ ›«Ì·.';
          b1 := get_response(WarnMsg + ' œÊ»«—Â ”⁄Ì „Ìùﬂ‰Ìœø') = mrYes;
        end
        else
        begin
          if not CopyFile(pchar(path + 'dskkar00.dbf'),
            pchar(format(IncludeTrailingBackslash(s) + 'dskkar%.2d.dbf',
            [dsk_list_no])), False) then
          begin
            WarnMsg := '«‘ﬂ«· œ— ﬂÅÌ ›«Ì·.';
            b1 := get_response(WarnMsg + ' œÊ»«—Â ”⁄Ì „Ìùﬂ‰Ìœø') = mrYes;
          end
          else
          begin
            b1 := False;
            Result := True;
          end; // else
        end; // else
      end; // else
    end; // while
  finally
    qryPersonels.EnableControls;
    qryListDetail.EnableControls;
    CloseMessage;
    SetKeyboardFarsi;
    actPrintVa.Enabled := True;
  end; // try
end;

procedure TRetardListBimehF.actDiskExecute(Sender: TObject);
begin
  inherited;
  if MakeDisk then
    BigMessage('œÌ”ﬂ  »Ì„Â »« „Ê›ﬁÌ   ÂÌÂ ‘œ.', 1);
end;

procedure TRetardListBimehF.qryPersonelsAfterOpen(DataSet: TDataSet);
begin
  inherited;
  StatusBar1.Panels[2].Text := ' ⁄œ«œ Å—”‰· = ' + IntToStr(DataSet.RecordCount);
end;

procedure TRetardListBimehF.DBGrid1DrawColumnCell(Sender: TObject;
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

procedure TRetardListBimehF.ppDBText16GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := Text + #254;
end;

function TRetardListBimehF.GetExemption(bimehValue: Currency): Currency;
begin
  // Warn(IntToStr(qryBimeh.fieldbyname('Amount2').AsInteger1));
  Result := ((qryPersonels.RecordCount - qryBimeh.Fieldbyname('PeopleExempt')
    .AsInteger) / qryPersonels.RecordCount) * bimehValue;
  Result := RoundTo(Result, -2);
end;

procedure TRetardListBimehF.ppDBCalc3Print(Sender: TObject);
begin
  inherited;
  (Sender as TppDBCalc).Value := GetExemption((Sender as TppDBCalc).Value);
  ppVariable1.Value := ppDBCalc4.Value + ppDBCalc3.Value + ppDBCalc2.Value;

end;

procedure TRetardListBimehF.qryPersonelsNationality_L1GetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
var
  s: String;
begin
  inherited;
  s := Trim(Sender.AsString);
  if s <> '' then
    Text := s + 'Ì';
end;

procedure TRetardListBimehF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryPersonels);
end;

procedure TRetardListBimehF.Get_SexCount;
var
  cloned: TADOQuery;
begin
  cloned := TADOQuery.Create(Self);
  try
    with cloned do
    begin
      Clone(qryPersonels, ltReadOnly);
      First;
      CMen := 0;
      CWomen := 0;
      while not Eof do
      begin
        if pos(cloned.Fieldbyname('Sex_L1').AsString, '„—œ') <> 0 then
          Inc(CMen)
        else
          Inc(CWomen);
        Next;
      end; // while
    end; // with
  finally
    cloned.Free;
  end; // try
end;

procedure TRetardListBimehF.ppLabel78GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := IntToStr(CMen);
end;

procedure TRetardListBimehF.ppLabel79GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := IntToStr(CWomen);
end;

procedure TRetardListBimehF.ppLabel80GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := IntToStr(CWomen + CMen);
end;

procedure TRetardListBimehF.N11Click(Sender: TObject);
begin
  inherited;
  try
    qryPersonels.DisableControls;
    qryListDetail.DisableControls;
    qryBimeh.DisableControls;
    ppReport1.Print;
  finally
    qryPersonels.EnableControls;
    qryListDetail.EnableControls;
    qryBimeh.EnableControls;
  end;
end;

procedure TRetardListBimehF.N21Click(Sender: TObject);
begin
  inherited;
  try
    qryPersonels.DisableControls;
    qryListDetail.DisableControls;
    qryBimeh.DisableControls;
    ppReport2.Print;
  finally
    qryPersonels.EnableControls;
    qryListDetail.EnableControls;
    qryBimeh.EnableControls;
  end;
end;

procedure TRetardListBimehF.actPrintVaExecute(Sender: TObject);
var
  p: TPoint;
begin
  inherited;
  p := ClientToScreen(Point(btnPrint.Left, btnPrint.Top + PnlUnderButton.Top));
  PopupMenu1.Popup(p.X + PopupMenu1.Items.Count * 35,
    p.Y - PopupMenu1.Items.Count * 20);
end;

procedure TRetardListBimehF.ppLabel60GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := Text + ' ' + APPBank.CompanyName;
end;

procedure TRetardListBimehF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryPersonels);
end;

procedure TRetardListBimehF.MskArchiveIDChange(Sender: TObject);
begin
  inherited;
  if Trim((Sender as TMaskEdit).Text) = '' then
    Exit;
  UpdateList;
end;

procedure TRetardListBimehF.actSendExelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TRetardListBimehF.ppLblOffShootName_L1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := Text + qryBimeh.Fieldbyname('OffShootName_L1').AsString
end;

procedure TRetardListBimehF.AllClikPopClick(Sender: TObject);
begin
  inherited;
  InitReportFile(ppListBimeh, (Sender as TMenuItem).Hint);
end;

procedure TRetardListBimehF.ppDBTxtEmployDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  if not((StrToInt(MidStr(Text, 6, 2)) = MonthNo) and
    (MidStr(Text, 1, 4) = opt.Year)) then
    Text := '';
end;

procedure TRetardListBimehF.plblKarconGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := CurrToStrF(dsk_tbime, ffCurrency, 0)
end;

procedure TRetardListBimehF.plblkarfarmaGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := CurrToStrF(dsk_tkoso, ffCurrency, 0)
end;

procedure TRetardListBimehF.plblBikariGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := CurrToStrF(dsk_bic, ffCurrency, 0)

end;

procedure TRetardListBimehF.plblKolHaqGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := CurrToStrF(dsk_tbime + dsk_tkoso + dsk_bic, ffCurrency, 0)
end;

procedure TRetardListBimehF.plblMashmolGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := CurrToStrF(dsk_tmash, ffCurrency, 0)
end;

procedure TRetardListBimehF.plblTotalGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := CurrToStrF(dsk_ttotl, ffCurrency, 0)
end;

end.
