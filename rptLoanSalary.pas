unit rptLoanSalary;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, ADODB, DBCtrls, ComCtrls, ToolWin, Grids, DBGrids, ppBands,
  ppCache, ppClass, ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe,
  ppCtrls, ppVar, ppPrnabl;

type
  TrptLoanSalaryF = class(Ttemplate2MDIF)
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
    BitBtn7: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn6: TBitBtn;
    actFilter: TAction;
    actPrint: TAction;
    actSendtoExcel: TAction;
    actSort: TAction;
    qryLoanSalary: TADOQuery;
    srcLoanSalary: TDataSource;
    qryLoanSalaryPersonelNO: TIntegerField;
    qryLoanSalaryPrice: TBCDField;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppLblCompanyName: TppLabel;
    ppLabel3: TppLabel;
    ppShape1: TppShape;
    ppSystemVariable2: TppSystemVariable;
    ppLblPrintDate: TppLabel;
    ppLabel8: TppLabel;
    ppLine2: TppLine;
    ppLabel9: TppLabel;
    ppLine3: TppLine;
    ppLabel12: TppLabel;
    ppLine4: TppLine;
    ppLabel10: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppLine21: TppLine;
    ppDBText2: TppDBText;
    ppLine12: TppLine;
    ppLine11: TppLine;
    ppDBText1: TppDBText;
    ppDBText4: TppDBText;
    ppLine14: TppLine;
    ppLine18: TppLine;
    ppFooterBand1: TppFooterBand;
    ppDBCalc1: TppDBCalc;
    ppSummaryBand1: TppSummaryBand;
    ppDBCalc2: TppDBCalc;
    StatusBar1: TStatusBar;
    qryLoanSalaryPersoneName_L1: TStringField;
    qryLoanSalaryPersoneName_L2: TStringField;
    qryLoanSalarySalaryName_L1: TStringField;
    qryLoanSalarySalaryName_L2: TStringField;
    ppDBText3: TppDBText;
    ppShape2: TppShape;
    ppShape3: TppShape;
    ppLabel2: TppLabel;
    ppLabel4: TppLabel;
    ADOQuery1: TADOQuery;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    BCDField1: TBCDField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    WordField1: TWordField;
    IntegerField3: TIntegerField;
    ppLabel1: TppLabel;
    ppLabel5: TppLabel;
    ppLine1: TppLine;
    ppLine5: TppLine;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    qryLoanSalaryAidNo1: TStringField;
    qryLoanSalaryAidDate1: TStringField;
    procedure actSearch_Execute(Sender: TObject);
    procedure actSendtoExcelExecute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure ppSystemVariable2GetText(Sender: TObject; var Text: String);
    procedure ppLblPrintDateGetText(Sender: TObject; var Text: String);
    procedure qryLoanSalaryAfterOpen(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormResize(Sender: TObject);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
  private
    MonthNo:  Byte;
    procedure   UpdateList;
//    function CalculateTotal(fldname: String): Currency;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  rptLoanSalaryF: TrptLoanSalaryF;

implementation

uses DM, search2, sort2, GlobalPro, Mymostafa, FilterClass_ADO, filter_ADO;

{$R *.dfm}

procedure TrptLoanSalaryF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryLoanSalary);
end;

procedure TrptLoanSalaryF.actSendtoExcelExecute(Sender: TObject);
begin
  inherited;
  SendDBGridToExcel(DBGrid1);
end;

procedure TrptLoanSalaryF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryLoanSalary);
end;

procedure TrptLoanSalaryF.ToolButton1Click(Sender: TObject);
begin
  inherited;
  MonthNo:=(Sender as TToolButton).tag;
  UpdateList;
end;

procedure TrptLoanSalaryF.UpdateList;
begin
   with qryLoanSalary do begin
    Active:=false;
    Parameters.ParamByName('Mounth').Value:=MonthNo;
    Parameters.ParamByName('PersonelFrom').Value:=GetcFrom(myParams.ParamValues['PersonelNo'],ftInteger);
    Parameters.ParamByName('PersonelTo').Value:=GetcTo(myParams.ParamValues['PersonelNo'],ftInteger);
    Parameters.ParamByName('FormInfoIDFrom').Value:=GetcFrom(myParams.ParamValues['LoanID'],ftInteger);
    Parameters.ParamByName('FormInfoIDTo').Value:=GetcTo(myParams.ParamValues['LoanID'],ftInteger);
    Active:=true;
  end;//with
  DisbelLabel(Self);

end;

procedure TrptLoanSalaryF.FormShow(Sender: TObject);
begin
  inherited;
  MonthNo:=var_glb_CurrentMonth;
  if MonthNo<1 then MonthNo:=1;
  ToolBar1.Buttons[MonthNo-1].Down:=True;
  myParams.Clear;
  if actFilter.Execute then
   if myParams.FindParam('PersonelNo')=nil then Close;
DisbelLabel(Self);
end;

procedure TrptLoanSalaryF.actFilterExecute(Sender: TObject);
begin
  inherited;
  With TfilterF.Create2(Self,myParams ) do begin
   try
//          AddItem(DMf.adcSalary,'ArchiveID',' ÔãÇÑå ÈÇíÇäí','ÔãÇÑå',ftInteger,dvDefaults,'0','',ciSingle,'','');
          AddItem(DMf.adcSalary,'PersonelNo','ãÔÎÕÇÊ ÑÓäáí','ßÏ',ftInteger,dvMinMax,'','',ciLookup,'SELECT PersonelNo ,  Name_L1+'' ''+lastName_L1 FROM PersonelInfo ',
              'SELECT MIN(PersonelNo) , MAX(PersonelNo)  FROM PersonelInfo');
      AddItem(DMf.adcSalary,'LoanID','æÇã åÇ ','ßÏ',ftInteger,dvMinMax,'','',ciLookup,
             'SELECT InfoID,InfoName_L1 FROM FormsInfo WHERE  (FormType = '+IntToStr(33)+') ',
             'SELECT MIN(InfoID), MAX(InfoID)  FROM FormsInfo WHERE  (FormType = '+IntToStr(33)+')');
        if ShowModal=mrOk then begin
        GetFilterString;
        Updatelist;
     end;//if
    finally
     Free;
    end;//try
  end;//end
end;

procedure TrptLoanSalaryF.actPrintExecute(Sender: TObject);
begin
  inherited;

  try
   qryLoanSalary.DisableControls;
   ppReport1.Print;
  finally
    qryLoanSalary.EnableControls;
  end;//try
end;

procedure TrptLoanSalaryF.ppSystemVariable2GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text:=GetPageNumberString(Text)
end;

procedure TrptLoanSalaryF.ppLblPrintDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text:=GetPrintDate;
end;

procedure TrptLoanSalaryF.qryLoanSalaryAfterOpen(DataSet: TDataSet);
begin
  inherited;
  StatusBar1.Panels[2].Text:='ÌãÚ='+CurrToStrF(CalcSumFileds(qryLoanSalary.FieldByName('Price'),qryLoanSalary),ffCurrency,0);
end;

//function TrptLoanSalaryF.CalculateTotal(fldname:String): Currency;
//var
//  qry:  TADOQuery;
//begin
//  qry:=TADOQuery.Create(Self);
//  try
//    with qry do begin
//      Clone(qryLoanSalary,ltReadOnly);
//      Result:=0;
//      First;
//      while not eof do begin
//        Result:=Result + fieldbyname(fldname).AsCurrency;
//        Next;
//      end;//while
//    end;//with
//  finally
//    qry.Free;
//  end;//try
//end;

procedure TrptLoanSalaryF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
end;

procedure TrptLoanSalaryF.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  if not(gdSelected in State) then begin
    if odd(DBGrid1.DataSource.DataSet.RecNo) then
      DBGrid1.Canvas.Brush.Color:=const_fixed_columns_color;
  end;//if
  DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,state);
end;

procedure TrptLoanSalaryF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1,3);
end;

procedure TrptLoanSalaryF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text:=APPBank.CompanyName
end;

procedure TrptLoanSalaryF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  QuickSearch(Key,qryLoanSalaryPersonelNO);
end;

end.
