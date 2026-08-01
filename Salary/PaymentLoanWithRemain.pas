unit PaymentLoanWithRemain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, ADODB, Grids, DBGrids, DBCtrls, ppCtrls, ppBands, ppClass,
  ppReport, ppStrtch, ppSubRpt, ppVar, ppPrnabl, ppCache, ppDB, ppProd,
  ppComm, ppRelatv, ppDBPipe, ppModule, raCodMod;

type
  TPaymentLoanWithRemainF = class(Ttemplate2MDIF)
    DBGrid1: TDBGrid;
    qryDetailes: TADOQuery;
    srcDetailes: TDataSource;
    DBGrid2: TDBGrid;
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
    qryDetailesAidDate2_L1: TStringField;
    qryDetailesAidDate2_L2: TStringField;
    qryDetailesDayQuntity: TFloatField;
    qryDetailesDayTime: TFloatField;
    qryDetailesEmployerAmount: TBCDField;
    qryDetailesFormInfoID2: TIntegerField;
    qryDetailesNote_L1: TMemoField;
    qryDetailesNote_L2: TMemoField;
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
    Label1: TLabel;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppDBPipeline2: TppDBPipeline;
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
    ppDetailBand1: TppDetailBand;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppDetailBand2: TppDetailBand;
    ppDBText9: TppDBText;
    ppDBText1: TppDBText;
    raCodeModule1: TraCodeModule;
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
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLine4: TppLine;
    ppLabel2: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppLine5: TppLine;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppLabel14: TppLabel;
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
  private
   FormType:Byte;
   procedure Updatelist;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PaymentLoanWithRemainF: TPaymentLoanWithRemainF;

implementation

uses DM, Mymostafa, FilterClass_ADO, filter_ADO, GlobalPro, sort2, search2;

{$R *.dfm}

procedure TPaymentLoanWithRemainF.qryDetailesAfterScroll(
  DataSet: TDataSet);
begin
  inherited;
  WITH qryItems do begin
    Active:=false;
    Parameters.ParamByName('salary').Value:=qryDetailes.fieldbyname('FormInfoId').AsString;
    Parameters.ParamByName('person').Value:=qryDetailes.Fieldbyname('PersonelNo').AsString;
    active:=true;
  end;//with
  DisbelLabel(Self);
end;

procedure TPaymentLoanWithRemainF.FormCreate(Sender: TObject);
begin
  inherited;
  qryDetailes.Active:=true;
  myParams.Clear;
  if actFilter.Execute then
   if myParams.FindParam('PersonelNo')=nil then Close;
end;

procedure TPaymentLoanWithRemainF.Updatelist;
begin
  FormType:=var_glb_gParam;
  with qryDetailes do begin
    Active:=False;
    Parameters.ParamByName('FromPersonelNo').Value:=GetcFrom(myParams.ParamValues['PersonelNo'],ftInteger);
    Parameters.ParamByName('ToPersonelNo').Value:=GetcTo(myParams.ParamValues['PersonelNo'],ftInteger);
    Parameters.ParamByName('FormType').Value:=FormType;
    Active:=true;
  end;//with

end;

procedure TPaymentLoanWithRemainF.actFilterExecute(Sender: TObject);
begin
  inherited;

  with TfilterF.Create2(Self,myParams) do begin
    try
      AddItem(DMf.adcSalary,'PersonelNo',' ‘„«—Â Å—”‰·Ì','ﬂœ',ftInteger,dvMinMax,'','',ciLookup,'SELECT PersonelNo ,  Name_L1+'' ''+lastName_L1 FROM Pay.PersonelInfo WHERE lastName_L1 Like :c',
              'SELECT MIN(PersonelNo) , MAX(PersonelNo)  FROM Pay.PersonelInfo');
     if ShowModal=mrOk then begin
        GetFilterString;
        Updatelist;
     end;//if
    finally
     Free;
    end;//try
  end;//with
end;

procedure TPaymentLoanWithRemainF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
end;

procedure TPaymentLoanWithRemainF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1,1,true,IntToStr(FormType));
end;

procedure TPaymentLoanWithRemainF.actSendtoExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid2);
end;

procedure TPaymentLoanWithRemainF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryItems);
end;

procedure TPaymentLoanWithRemainF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryItems);
end;

procedure TPaymentLoanWithRemainF.SysvarPageNumGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text:=GetPageNumberString(Text)
end;

procedure TPaymentLoanWithRemainF.ppLabel14GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text:=GetPrintDate;
end;

procedure TPaymentLoanWithRemainF.actPrintExecute(Sender: TObject);
begin
  inherited;
  try
   qryDetailes.DisableControls;
   qryItems.DisableControls;
   ppReport1.Print;
  finally
   qryDetailes.EnableControls;
   qryItems.EnableControls;
  end;
  end;

procedure TPaymentLoanWithRemainF.ppLabel1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text:=APPBank.CompanyName
end;

end.
