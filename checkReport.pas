unit checkReport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, ADODB, Grids, DBGrids, ppCtrls, ppPrnabl, ppClass, ppBands,
  ppCache, ppDB, ppDBPipe, ppComm, ppRelatv, ppProd, ppReport;

type
  TcheckReportF = class(Ttemplate2MDIF)
    DBGrid1: TDBGrid;
    qryCash_Check: TADOQuery;
    srcCash_Check: TDataSource;
    qryCash_CheckFormID: TIntegerField;
    qryCash_CheckFormDate: TStringField;
    qryCash_CheckFormCaption: TStringField;
    qryCash_CheckFomNote: TStringField;
    qryCash_CheckCheckNumber: TIntegerField;
    qryCash_CheckCheckDate: TStringField;
    qryCash_CheckAccountNumber: TStringField;
    qryCash_CheckBankName: TStringField;
    qryCash_Checkbed: TBCDField;
    qryCash_Checkbes: TBCDField;
    qryCash_Checkkind: TIntegerField;
    qryCash_CheckCustForShowForm: TIntegerField;
    qryCash_CheckBudgetCode: TIntegerField;
    qryCash_CheckCustomer1DocType: TWordField;
    qryCash_CheckBalance: TBCDField;
    qryCash_CheckCustomerID1: TIntegerField;
    qryCash_CheckFormNumber: TIntegerField;
    qryCash_CheckFormtype: TWordField;
    actFilter: TAction;
    BitBtn1: TBitBtn;
    BitBtn5: TBitBtn;
    actSendtoExel: TAction;
    ppReport1: TppReport;
    ppDBPipeline1: TppDBPipeline;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    Label1: TLabel;
    LblDate: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLine1: TppLine;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel7: TppLabel;
    ppShape1: TppShape;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLabel6: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppShape2: TppShape;
    ppLabel17: TppLabel;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppLine21: TppLine;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    qryCustomers: TADOQuery;
    qryCash_Check_CustName: TStringField;
    ppReport2: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLine22: TppLine;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppShape3: TppShape;
    ppLine23: TppLine;
    ppLine24: TppLine;
    ppLine25: TppLine;
    ppLine26: TppLine;
    ppLine27: TppLine;
    ppLine28: TppLine;
    ppLine29: TppLine;
    ppLine30: TppLine;
    ppLine31: TppLine;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppLine32: TppLine;
    ppLine33: TppLine;
    ppLine34: TppLine;
    ppLine35: TppLine;
    ppLine36: TppLine;
    ppLine37: TppLine;
    ppLine38: TppLine;
    ppLine39: TppLine;
    ppLine40: TppLine;
    ppLine41: TppLine;
    ppLine42: TppLine;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppFooterBand2: TppFooterBand;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppShape4: TppShape;
    ppLabel34: TppLabel;
    ppReport3: TppReport;
    ppHeaderBand3: TppHeaderBand;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLine43: TppLine;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppShape5: TppShape;
    ppLine44: TppLine;
    ppLine45: TppLine;
    ppLine46: TppLine;
    ppLine47: TppLine;
    ppLine48: TppLine;
    ppLine49: TppLine;
    ppLine50: TppLine;
    ppLine51: TppLine;
    ppLine52: TppLine;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    ppDetailBand3: TppDetailBand;
    ppLine53: TppLine;
    ppLine54: TppLine;
    ppLine55: TppLine;
    ppLine56: TppLine;
    ppLine57: TppLine;
    ppLine58: TppLine;
    ppLine59: TppLine;
    ppLine60: TppLine;
    ppLine61: TppLine;
    ppLine62: TppLine;
    ppLine63: TppLine;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppDBText30: TppDBText;
    ppFooterBand3: TppFooterBand;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppShape6: TppShape;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    qryCustomersCustID: TIntegerField;
    qryCustomersCustName: TStringField;
    qryCash_Check_CustDocTName: TStringField;
    procedure actFilterExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBComboBox1Click(Sender: TObject);
//    procedure Label1Click(Sender: TObject);
  private
   procedure updatelist;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  checkReportF: TcheckReportF;

implementation

uses dm_Coffer, filter_ADO, FilterClass_ADO, DM, GlobalPro;

{$R *.dfm}

procedure TcheckReportF.actFilterExecute(Sender: TObject);
 var
 s:string;
begin
  inherited;
    with TfilterF.Create2(self,myParams) do  begin
      try
       AddItem(DMf.adcBSell,'Date',' «—ÌŒ ',' «—ÌŒ',ftDate,dvMinMax,'','',ciSimple,'','Select Min(ReciptDate),max(ReciptDate) from Recipts');
       AddItem(DMf.adcBSell,'custID','„‘ —Ì ','„‘ —Ì',ftinteger,dvMinMax,'','',cilookup,'','Select Min(CustID),max(CustID) from Customers');
//       AddItem(DMf.adcBSell,'BudgetCode','ﬂœ»ÊÃÂ ','ﬂœ»ÊÃÂ',ftinteger,dvMinMax,'','',ciSimple,'' ,'Select Min(BudgetCode),max(BudgetCode) from Customers');
       AddItem(DMf.adcBSell,'CustID','ﬂœ œ—Ì«›  ','ﬂœ œ—Ì«› ',ftinteger,dvMinMax,'','',ciSimple,'','Select Min(CustID),max(CustID) from Customers');
//2       s:=(' SELECT CustID, CustName FROM  dbo.Customers ' +'SELECT CustID, CustName FROM  dbo.Customers');
       if ShowModal=mrOk then begin
       GetFilterString;
       updatelist;
       END;//IF
     finally
       free;
     end;//try
    end;//with
   end;

procedure TcheckReportF.updatelist;
begin
{  with qryCash_Check  do begin
   active:=False;
   Parameters.ParamByName('DateFrom').Value:=GetcFrom(myParams.ParamValues['Date'],ftDate);
   Parameters.ParamByName('Dateto').Value:=GetcFrom(myParams.ParamValues['Date'],ftDate);
   Parameters.ParamByName('customdoc1from').Value:=GetcFrom(myParams.ParamValues['Customer1DocType'],ftDate);
   Parameters.ParamByName('customdoc1to').Value:=GetcFrom(myParams.ParamValues['Customer1DocType'],ftDate);
   Parameters.ParamByName('formtypefrom').Value:=GetcFrom(myParams.ParamValues['Formtype'],ftDate);
   Parameters.ParamByName('formtypeto').Value:=GetcFrom(myParams.ParamValues['Formtype'],ftDate);
   Parameters.ParamByName('customid1from').Value:=GetcFrom(myParams.ParamValues['CustomerID1'],ftDate);
   Parameters.ParamByName('customid1to').Value:=GetcFrom(myParams.ParamValues['CustomerID1'],ftDate);
   Parameters.ParamByName('CustForShowFormfrom').Value:=GetcFrom(myParams.ParamValues['CustForShowForm'],ftDate);
   Parameters.ParamByName('CustForShowFormto').Value:=GetcFrom(myParams.ParamValues['CustForShowForm'],ftDate);
   Parameters.ParamByName('BudgetCodefrom').Value:=GetcFrom(myParams.ParamValues['BudgetCode'],ftDate);
   Parameters.ParamByName('BudgetCodeto').Value:=GetcFrom(myParams.ParamValues['BudgetCode2119'],ftDate);
   Active:=True;

  end;//wih}
end;

procedure TcheckReportF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  actfilter.Execute;
  IF myParams.FindParam('date').IsNull then close;
end;

procedure TcheckReportF.DBComboBox1Click(Sender: TObject);
var
    i:Integer;
begin
  inherited;

begin
  inherited;
//  if cmbStore.ItemIndex=-1 then exit;
//  With qryStuffs do begin
//    Active:=False;
//    Parameters.ParamByName('StoreID').Value:=integer(cmbStore.Items.Objects[cmbStore.ItemIndex]);
//    Active:=True;
//  end;//with

//  with qryRptTransactions do begin
//    Active:=False;
//    Parameters.ParamByName('StoreID').Value:=integer(cmbStore.Items.Objects[cmbStore.ItemIndex]);
//    Parameters.ParamByName('StoreID1').Value:=integer(cmbStore.Items.Objects[cmbStore.ItemIndex]);
//    Active:=True;
  end;//with

end;

end.
