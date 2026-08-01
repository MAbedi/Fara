unit rptLoanPersonel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, ADODB, Grids, Vcl.DBGrids, DBCtrls, ppCtrls, ppBands, ppClass,
  ppReport, ppStrtch, ppSubRpt, ppVar, ppPrnabl, ppCache, ppDB, ppProd,
  ppComm, ppRelatv, ppDBPipe, ppModule, ComCtrls, Menus, ppParameter,
  ppDesignLayer, System.ImageList, System.Actions;

type
  TrptLoanPersonelF = class(Ttemplate2MDIF)
    qryDetailes: TADOQuery;
    srcDetailes: TDataSource;
    qryItems: TADOQuery;
    srcItems: TDataSource;
    qryDetailesDecExtID: TIntegerField;
    qryDetailesFormInfoID: TIntegerField;
    qryDetailesPersonelNo: TIntegerField;
    qryDetailesEmployeeAmount: TBCDField;
    qryDetailesFirstMounth: TWordField;
    qryDetailesEndMounth: TWordField;
    qryDetailesAidNo1: TStringField;
    qryDetailesAidDate1_L1: TStringField;
    qryDetailesAidDate1_L2: TStringField;
    qryDetailesAidNo2: TStringField;
    qryDetailesDayQuntity: TFloatField;
    qryDetailesDayTime: TFloatField;
    qryDetailesEmployerAmount: TBCDField;
    qryDetailesFormInfoID2: TIntegerField;
    qryDetailesAccTopicCode: TIntegerField;
    qryDetailesAccDetailCode: TIntegerField;
    qryDetailesAccCTopicCode: TIntegerField;
    qryDetailesAccCTopicCode2: TIntegerField;
    qryDetailesPaymentLoan: TBCDField;
    qryDetailesname_l1: TStringField;
    qryDetailesLoanName_l1: TStringField;
    qryDetailesLoanName_l2: TStringField;
    qryDetailesname_l2: TStringField;
    qryItemsMounth: TWordField;
    qryItemsInfoName_L1: TStringField;
    qryItemsInfoName_L2: TStringField;
    qryItemssumPrice: TBCDField;
    BitBtn7: TBitBtn;
    BitBtn2: TBitBtn;
    DBNavigator2: TDBNavigator;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    actPrint: TAction;
    actSendtoExcel: TAction;
    actFilter: TAction;
    actSort: TAction;
    ppDBPipeline1: TppDBPipeline;
    ppReport4File: TppReport;
    ppDBPipeline2: TppDBPipeline;
    qryInitForm: TADOQuery;
    StatusBar1: TStatusBar;
    PopList4Print: TPopupMenu;
    AllClikPop: TMenuItem;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    Label1: TLabel;
    StBRemain: TStatusBar;
    StBSumItems: TStatusBar;
    ppHeaderBand1: TppHeaderBand;
    ppLabel1: TppLabel;
    ppLabel3: TppLabel;
    SysvarPageNum: TppSystemVariable;
    ppLine3: TppLine;
    ppLabel4: TppLabel;
    ppLabel7: TppLabel;
    ppLabel6: TppLabel;
    ppLine1: TppLine;
    ppLabel8: TppLabel;
    ppLabel5: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel14: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppDetailBand2: TppDetailBand;
    ppDBText9: TppDBText;
    ppDBText1: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppDBCalc2: TppDBCalc;
    ppLabel15: TppLabel;
    ppLblRemain: TppLabel;
    ppLine6: TppLine;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppLine2: TppLine;
    ppDBText2: TppDBText;
    ppDBText4: TppDBText;
    ppDBText3: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppLine7: TppLine;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLine4: TppLine;
    ppLabel2: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppLine5: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLine14: TppLine;
    qryDetailesSettlement: TBCDField;
    qryDetailesNote_L1: TWideStringField;
    qryDetailesNote_L2: TWideStringField;
    procedure qryDetailesAfterScroll(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure actSendtoExcelExecute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure SysvarPageNumGetText(Sender: TObject; var Text: String);
    procedure ppLabel14GetText(Sender: TObject; var Text: String);
    procedure actPrintExecute(Sender: TObject);
    procedure ppLabel1GetText(Sender: TObject; var Text: String);
    procedure qryDetailesAfterOpen(DataSet: TDataSet);
    procedure AllClikPopClick(Sender: TObject);
    procedure qryItemsAfterOpen(DataSet: TDataSet);
    procedure ppLblRemainGetText(Sender: TObject; var Text: String);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
  private
   FormType:Byte;
   procedure Updatelist;
   procedure InitForm;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  rptLoanPersonelF: TrptLoanPersonelF;

implementation

uses DM, Mymostafa, FilterClass_ADO, filter_ADO, GlobalPro, sort2, search2;

{$R *.dfm}

procedure TrptLoanPersonelF.qryDetailesAfterScroll(
  DataSet: TDataSet);
begin
  inherited;
  WITH qryItems do begin
    Active:=false;
    Parameters.ParamByName('salary').Value:=qryDetailes.fieldbyname('FormInfoId').AsString;
    Parameters.ParamByName('FunctionID').Value:=qryDetailes.fieldbyname('DecExtID').AsString;
    Parameters.ParamByName('person').Value:=qryDetailes.Fieldbyname('PersonelNo').AsString;
    Parameters.ParamByName('MounthFrom').Value:=GetcFrom(myParams.ParamValues['Mounth'],ftInteger);
    Parameters.ParamByName('MounthTo').Value:=GetcTo(myParams.ParamValues['Mounth'],ftInteger);
    active:=true;
  end;//with
  DisbelLabel(Self);
end;

procedure TrptLoanPersonelF.InitForm;
begin
  with qryInitForm do begin
    Active:=false;
    Parameters.ParamByName('FormType').Value:=FormType;
    Active:=true;
    DBGrid1.Columns[6].Visible:=FieldByName('AidInfoNo1Active').AsInteger=1;
    qryDetailes.FieldByName('AidNo1').DisplayLabel:='‘„«—Â˛'+FieldByName('AidInfo1Caption').AsString;

    DBGrid1.Columns[7].Visible:=FieldByName('AidInfoNo2Active').AsInteger=1;
    qryDetailes.FieldByName('AidNo2').DisplayLabel:='‘„«—Â˛'+FieldByName('AidInfo2Caption').AsString;

    DBGrid1.Columns[8].Visible:=FieldByName('AidInfoDate1Active').AsInteger=1;
    qryDetailes.FieldByName('AidDate1').DisplayLabel:=' «—ÌŒ˛˛'+FieldByName('AidInfo1Caption').AsString;

    DBGrid1.Columns[9].Visible:=FieldByName('AidInfoDate2Active').AsInteger=1;
    qryDetailes.FieldByName('AidDate2').DisplayLabel:=' «—ÌŒ˛˛'+FieldByName('AidInfo2Caption').AsString;

  end;
end;

procedure TrptLoanPersonelF.FormCreate(Sender: TObject);
begin
  inherited;
  FormType:=var_glb_gParam;
  InitForm;
  myParams.Clear;
  if actFilter.Execute then
   if myParams.FindParam('PersonelNo')=nil then Close;
end;

procedure TrptLoanPersonelF.Updatelist;
begin
  with qryDetailes do begin
    Active:=False;
    Parameters.ParamByName('FromPersonelNo').Value:=GetcFrom(myParams.ParamValues['PersonelNo'],ftInteger);
    Parameters.ParamByName('ToPersonelNo').Value:=GetcTo(myParams.ParamValues['PersonelNo'],ftInteger);
//    Parameters.ParamByName('FormType').Value:=FormType;
    Parameters.ParamByName('FormInfoIDForm').Value:=GetcFrom(myParams.ParamValues['LoanId'],ftInteger);
    Parameters.ParamByName('FormInfoIDTo').Value:=GetcTo(myParams.ParamValues['LoanId'],ftInteger);
    Active:=true;
  end;//with

end;

procedure TrptLoanPersonelF.actFilterExecute(Sender: TObject);
begin
  inherited;

  with TfilterF.Create2(Self,myParams) do begin
    try
      AddItem(DMf.adcSalary,'Mounth',' „«Â','',ftInteger,dvMinMax,'','',ciSimple,'',
      'SELECT  MIN(InfoID) , MAX(InfoID) FROM Pay.StandardTimes');
      AddItem(DMf.adcSalary,'PersonelNo','„‘Œ’«  Å—”‰·Ì','ﬂœ',ftInteger,dvMinMax,'','',ciLookup,
           'SELECT PersonelNo ,  Name_L1+'' ''+lastName_L1 as Name_L1 FROM Pay.PersonelInfo ',
           'SELECT MIN(PersonelNo) , MAX(PersonelNo)  FROM Pay.PersonelInfo');
      AddItem(DMf.adcSalary,'LoanID','Ê«„ Â« ','ﬂœ',ftInteger,dvMinMax,'','',ciLookup,
        'SELECT FormsInfo.InfoID, FormsInfo.InfoName_L1 FROM Pay.FormsInfo INNER JOIN '+
        'Pay.FormTypes ON FormsInfo.FormType = FormTypes.FormType WHERE (FormTypes.SalaryKind IN (9, 14))',
        'SELECT MIN(FormsInfo.InfoID), MAX(FormsInfo.InfoID) FROM Pay.FormsInfo INNER JOIN '+
        'Pay.FormTypes ON FormsInfo.FormType = FormTypes.FormType WHERE (FormTypes.SalaryKind IN (9, 14))' );
     if ShowModal=mrOk then begin
        GetFilterString;
        Updatelist;
     end;//if
    finally
     Free;
    end;//try
  end;//with
end;

procedure TrptLoanPersonelF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1,'rptLoanPersonelF'+IntToStr(FormType));
  SaveColWidth(DBGrid2,'rptLoanPersonelF'+IntToStr(FormType));
//  cloned.Free;
end;

procedure TrptLoanPersonelF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1,1,true,'rptLoanPersonelF'+IntToStr(FormType));
  SetColSize(DBGrid2,1,true,'rptLoanPersonelF'+IntToStr(FormType));
end;

procedure TrptLoanPersonelF.actSendtoExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid2);
end;

procedure TrptLoanPersonelF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryDetailes);
end;

procedure TrptLoanPersonelF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryDetailes);
end;

procedure TrptLoanPersonelF.SysvarPageNumGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text:=GetPageNumberString(Text)
end;

procedure TrptLoanPersonelF.ppLabel14GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text:=GetPrintDate;
end;

procedure TrptLoanPersonelF.actPrintExecute(Sender: TObject);
begin
  inherited;
  MakeMenuItem(FormType,AllClikPopClick,PopList4Print);
  PopList4Print.Popup(Mouse.CursorPos.X,Mouse.CursorPos.Y);
end;

procedure TrptLoanPersonelF.ppLabel1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text:=APPBank.CompanyName
end;

procedure TrptLoanPersonelF.qryDetailesAfterOpen(DataSet: TDataSet);
begin
  inherited;
  StatusBar1.Panels[4].Text:=' ”ÊÌÂ= '+CurrToStrF(CalcSumFileds(DataSet.FieldByName('Settlement')),ffCurrency,0);
  StatusBar1.Panels[3].Text:=' ⁄œ«œ= '+IntToStr(DataSet.RecordCount)+'  Ã„⁄ ﬂ·=';
  StatusBar1.Panels[2].Text:='«’· Ê«„='+CurrToStrF(CalcSumFileds(DataSet.FieldByName('EmployerAmount')),ffCurrency,0);
  StatusBar1.Panels[1].Text:='Å—œ«Œ Ì ”‰Ê«  ﬁ»·='+CurrToStrF(CalcSumFileds(DataSet.FieldByName('PaymentLoan')),ffCurrency,0);
end;

procedure TrptLoanPersonelF.AllClikPopClick(Sender: TObject);
begin
  inherited;
  try
    qryDetailes.DisableControls;
    qryItems.DisableControls;
    InitReportFile(ppReport4File,(Sender as TMenuItem).Hint);
  finally
    qryDetailes.EnableControls;
    qryItems.EnableControls;
  end;
end;

procedure TrptLoanPersonelF.qryItemsAfterOpen(DataSet: TDataSet);
var
  sum:Currency;
begin
  inherited;
  sum:=CalcSumFileds(qryItems.FieldByName('sumPrice'));
  StBSumItems.Panels[0].Text:=CurrToStrF(sum,ffCurrency,0);
  sum:=qryDetailes.FieldByName('EmployerAmount').AsCurrency-
       qryDetailes.FieldByName('PaymentLoan').AsCurrency-
       qryDetailes.FieldByName('Settlement').AsCurrency-sum;
  StBRemain.Panels[0].Text:=CurrToStrF(sum,ffCurrency,0)
end;

procedure TrptLoanPersonelF.ppLblRemainGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text:=Text+StBRemain.Panels[0].Text+#0254;
end;

procedure TrptLoanPersonelF.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  QuickSearch(Key,qryDetailes.FieldByName('PersonelNo'));
end;

end.
