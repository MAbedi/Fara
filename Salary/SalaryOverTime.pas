unit SalaryOverTime;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, DB, ADODB, ImgList, DBActns, ActnList, StdCtrls,
  ExtCtrls, Buttons, Grids, Vcl.DBGrids, ppModule, ppCtrls, ppBands,
  ppVar, ppPrnabl, ppClass, ppCache, ppDB, ppProd, ppReport, ppComm,
  ppRelatv, ppDBPipe, DBCtrls, ComCtrls, ToolWin, Menus, ppStrtch,
  ppRegion, SumDBGrid, ppParameter, ppDesignLayer, System.ImageList,
  System.Actions,Filter_ADO_Const;

type
  TSalaryOverTimeF = class(Ttemplate2MDIF)
    qryOverTime: TADOQuery;
    srcSalary: TDataSource;
    DBGrid1: TDBGrid;
    Button1: TButton;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    actPrint: TAction;
    actSendtoExcel: TAction;
    actSort: TAction;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    actFilter: TAction;
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
    actFish: TAction;
    Button2: TButton;
    actFunctionShow: TAction;
    Button3: TButton;
    qryOverTimePersonelNO: TIntegerField;
    qryOverTimename_L1: TStringField;
    qryOverTimename_L2: TStringField;
    qryOverTimeAccountNumber: TStringField;
    qryOverTimeBasePrice: TBCDField;
    qryOverTimePrice: TBCDField;
    qryOverTimetaxvalue: TBCDField;
    qryOverTimeTax: TBCDField;
    PopMnuPrint: TPopupMenu;
    SalaryOverTimeF: TMenuItem;
    SalaryOverTimeFLand: TMenuItem;
    AllClick: TMenuItem;
    qryOverTimePayable: TBCDField;
    CmbArchiveID: TComboBox;
    qryOverTimeAmount: TFloatField;
    ppHeaderBand1: TppHeaderBand;
    ppShape2: TppShape;
    ppLine16: TppLine;
    ppSystemVariable1: TppSystemVariable;
    ppLblCompanyName: TppLabel;
    ppLblPrintDate: TppLabel;
    ppLine35: TppLine;
    ppLine36: TppLine;
    ppLine37: TppLine;
    ppLabel33: TppLabel;
    ppLabel35: TppLabel;
    d1: TppLabel;
    d6: TppLabel;
    ppLine1: TppLine;
    ppLblPriceCaption: TppLabel;
    ppLine3: TppLine;
    ppLabel2: TppLabel;
    ppLabel43: TppLabel;
    ppLblCaption: TppLabel;
    ppLabel21: TppLabel;
    ppLine5: TppLine;
    ppLine2: TppLine;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel1: TppLabel;
    ppLine9: TppLine;
    ppDetailBand2: TppDetailBand;
    dw1: TppDBText;
    ppLine8: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppLine24: TppLine;
    ppDBText7: TppDBText;
    dd1: TppDBText;
    dd2: TppDBText;
    ppLine27: TppLine;
    ppLine28: TppLine;
    ppLine30: TppLine;
    ppLine31: TppLine;
    ppLine32: TppLine;
    ppDBText11: TppDBText;
    ppLine81: TppLine;
    ppDBText3: TppDBText;
    ppLine7: TppLine;
    ppDBText4: TppDBText;
    ppLine10: TppLine;
    ppFooterBand1: TppFooterBand;
    ppShape3: TppShape;
    ppLabel6: TppLabel;
    ppDBCalc7: TppDBCalc;
    ppLine75: TppLine;
    ppDBCalc37: TppDBCalc;
    ppDBCalc38: TppDBCalc;
    ppLine76: TppLine;
    ppLine77: TppLine;
    ppRegion1: TppRegion;
    ppRecFooterLine: TppLine;
    ppLabel4: TppLabel;
    ppDBCalc4: TppDBCalc;
    ppLine11: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppShape1: TppShape;
    ppLabel49: TppLabel;
    ppLine60: TppLine;
    ppLine61: TppLine;
    ppLine62: TppLine;
    ppDBCalc2: TppDBCalc;
    sd_col5: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppRegion2: TppRegion;
    ppRecFooterLine2: TppLine;
    ppLabel5: TppLabel;
    ppDBCalc5: TppDBCalc;
    ppLine14: TppLine;
    qrySalaryRange: TADOQuery;
    SumGrid1: TSumGrid;
    qryOverTimeInsurance: TBCDField;
    qryOverTimePrice_taxvalue: TBCDField;
    qryOverTimetaxvalue2: TBCDField;
    qryOverTimePrice_taxvalue2: TBCDField;
    qryOverTimeRate: TBCDField;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure actSortExecute(Sender: TObject);
    procedure actSendtoExcelExecute(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure ppLblPrintDateGetText(Sender: TObject; var Text: String);
    procedure ppSystemVariable1GetText(Sender: TObject; var Text: String);
    procedure actFilterExecute(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure ppLblCaptionGetText(Sender: TObject; var Text: String);
    procedure actFishExecute(Sender: TObject);
    procedure actFunctionShowExecute(Sender: TObject);
    procedure ppLblPriceCaptionGetText(Sender: TObject; var Text: String);
    procedure AllClickClick(Sender: TObject);
    procedure CmbArchiveIDChange(Sender: TObject);
  private
    MonthNo: Byte;
    procedure Updatefilter;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SalaryOverTimeF: TSalaryOverTimeF;

implementation

uses DM, GlobalPro, sort2, search2, filter_ADO, FilterClass_ADO,
  main, ListSalary, FunctionItems, SalaryFunctions, Mymostafa,mdiMain;

{$R *.dfm}

procedure TSalaryOverTimeF.FormCreate(Sender: TObject);
begin
  inherited;
  MonthNo := var_glb_CurrentMonth;
  if MonthNo < 1 then
    MonthNo := 1;
  InitCmbArchiveID(CmbArchiveID, MonthNo);

  setColumns2(DBGrid1, optP.FunctionKind in [0, 2], 'taxvalue');
  setColumns2(DBGrid1, optP.FunctionKind in [0, 2], 'Price_taxvalue');
  if optP.FunctionKind in [0, 2] then
    SumGrid1.FieldsName := SumGrid1.FieldsName + 'taxvalue;Price_taxvalue;';

  setColumns2(DBGrid1, optP.FunctionKind in [1], 'taxvalue2');
  setColumns2(DBGrid1, optP.FunctionKind in [1], 'Price_taxvalue2');
  if optP.FunctionKind in [1] then
    SumGrid1.FieldsName := SumGrid1.FieldsName + 'taxvalue2;Price_taxvalue2;';

end;

procedure TSalaryOverTimeF.FormShow(Sender: TObject);
begin
  inherited;
  ToolBar1.Buttons[MonthNo - 1].Down := True;
  myParams.Clear;
  if actFilter.Execute then
    if myParams.FindParam('PersonelNo') = nil then
      Close;
end;

procedure TSalaryOverTimeF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
end;

procedure TSalaryOverTimeF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 1, True);
end;

procedure TSalaryOverTimeF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName
end;

procedure TSalaryOverTimeF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryOverTime);
end;

procedure TSalaryOverTimeF.actSendtoExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TSalaryOverTimeF.actPrintExecute(Sender: TObject);
begin
  inherited;
  PopMnuPrint.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TSalaryOverTimeF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryOverTime);
end;

procedure TSalaryOverTimeF.ppLblPrintDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TSalaryOverTimeF.ppSystemVariable1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TSalaryOverTimeF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      AddItemFilter(GetFilter, TLabelID);

      AddItemFilter(GetFilter, TPersonelNo);


      AddItem(DMf.adcSalary, 'OfficeCode', ' ⁄‰Ê«‰ ”«“„«‰', 'ﬂœ', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT    Pay.FormsInfo.InfoID, Pay.FormsInfo.InfoName_L1 FROM  Pay.FixedCalculated INNER JOIN  '
        + ' Pay.FormsInfo ON Pay.FixedCalculated.OfficeCode = Pay.FormsInfo.FormInfoID WHERE  formtype=12   '
        + ' GROUP BY  Pay.FormsInfo.InfoID,Pay.FormsInfo.InfoName_L1 ',
        ' SELECT MIN(Pay.FormsInfo.InfoID) AS Expr1, MAX(Pay.FormsInfo.InfoID) AS Expr2  FROM  Pay.FormsInfo RIGHT OUTER JOIN '
        + ' Pay.FixedCalculated ON Pay.FormsInfo.FormInfoID = Pay.FixedCalculated.OfficeCode ');

      AddItem(DMf.adcSalary, 'SalaryId', '‰Ê⁄ ·Ì” ', '', ftUnknown, dvDefaults,
        '', '', ciCombo,
        ' SELECT  FormInfoID, InfoName_L1 FROM Pay.FormsInfo WHERE FormType  IN (29, 91)  ',
        '');

      // AddItem(DMf.adcSalary,'ArchiveID',' ‘„«—Â »«Ìê«‰Ì','‘„«—Â',ftInteger,dvDefaults,'0','',ciSingle,'','');
      // AddItem(DMf.adcSalary,'Mounth',' „«Â','‘„«—Â',ftInteger,dvDefaults,IntToStr(var_glb_CurrentMonth),'',ciSingle,'','');

      if ShowModal = mrOk then
      begin
        GetFilterString;
        Updatefilter;
      end; // if
    finally
      Free;
    end; // try
  end; // with
end;

procedure TSalaryOverTimeF.Updatefilter;
var
  HasInsurance: Byte;
begin
  HasInsurance := 0;
  with qrySalaryRange do
  begin
    Active := false;
    Parameters.ParamByName('SalaryId').Value :=
      GetcTo(myParams.ParamValues['SalaryId'], ftInteger);
    Active := True;
    if RecordCount > 0 then
      HasInsurance := 1;
  end; // with

  with qryOverTime do
  begin
    Active := false;
    Parameters.ParamByName('YearIDFrom').Value := APPBank.Year;
    Parameters.ParamByName('YearIDTo').Value := APPBank.Year;

    Parameters.ParamByName('LabelIDFrom').Value :=
      GetcFrom(myParams.ParamValues['LabelID'], ftInteger);
    Parameters.ParamByName('LabelIDTo').Value :=
      GetcTo(myParams.ParamValues['LabelID'], ftInteger);
    Parameters.ParamByName('HasInsurance').Value := HasInsurance;
    Parameters.ParamByName('HasInsurance2').Value := HasInsurance;
    Parameters.ParamByName('Mounth').Value := MonthNo;
    Parameters.ParamByName('ArchiveID').Value :=
      Integer(CmbArchiveID.Items.Objects[CmbArchiveID.ItemIndex]);

    Parameters.ParamByName('SalaryIDFrom').Value :=
      GetcTo(myParams.ParamValues['SalaryId'], ftInteger);
    Parameters.ParamByName('SalaryIDTo').Value :=
      GetcTo(myParams.ParamValues['SalaryId'], ftInteger);
    // Parameters.ParamByName('SalaryID').Value:=GetcTo(myParams.ParamValues['SalaryId'],ftInteger);

    Parameters.ParamByName('PersonelNoFrom').Value :=
      GetcFrom(myParams.ParamValues['PersonelNo'], ftInteger);
    Parameters.ParamByName('PersonelNoTo').Value :=
      GetcTo(myParams.ParamValues['PersonelNo'], ftInteger);
    Parameters.ParamByName('OfficeCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['OfficeCode'], ftInteger);
    Parameters.ParamByName('OfficeCodeTo').Value :=
      GetcTo(myParams.ParamValues['OfficeCode'], ftInteger);

    Caption := '·Ì”  ' + GetcFrom(myParams.ParamValues['SalaryId'], ftString);

    lblCaption.Caption := Caption;
    Active := True;

    FieldByName('Price').DisplayLabel := '‰«Œ«·’˛' +
      GetcFrom(myParams.ParamValues['SalaryId'], ftString);
  end; // with
end;

procedure TSalaryOverTimeF.ToolButton1Click(Sender: TObject);
begin
  inherited;
  MonthNo := (Sender as TToolButton).tag;    GetYearMounth(MonthNo);
  InitCmbArchiveID(CmbArchiveID, MonthNo);
  Updatefilter;
end;

procedure TSalaryOverTimeF.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  if gdSelected in State then
  begin
    DBGrid1.Canvas.Brush.Color := $00B0CAFF;
    DBGrid1.Canvas.Font.Color := clWhite;
  end
  else
  begin
    DBGrid1.Canvas.Font.Color := clWindowText;
  end;
  DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);

  // if not(gdSelected in State) then begin                      sssssss
  // if odd(DBGrid1.DataSource.DataSet.RecNo) then
  // DBGrid1.Canvas.Brush.Color:=const_fixed_columns_color;
  // end;//if
  // DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,state);
  //
  //
  // if not(gdSelected in State) then begin
  // if odd(DBGrid1.DataSource.DataSet.RecNo) then
  // DBGrid1.Canvas.Brush.Color:=const_fixed_columns_color;
  // end//if
  // else begin
  // DBGrid1.Canvas.Brush.Color:=const_Date_columns_color;
  // DBGrid1.Canvas.Font.Color:=clBlack;
  // end;
  //
  // DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,state);
end;

procedure TSalaryOverTimeF.ppLblCaptionGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetMounthName(MonthNo, Caption);
end;

procedure TSalaryOverTimeF.actFishExecute(Sender: TObject);
var
  Month_No: Byte;
begin
  inherited;
  Month_No := MonthNo - 1;
  if (mdiMainF.actListSalary.Enabled) and (mdiMainF.actListSalary.Visible) then
  begin
    CreateMDIForm2(TListSalaryF, ListSalaryF, Self);
    ListSalaryF.ToolBar1.Buttons[Month_No].Down := True;
    ListSalaryF.ToolBar1.Buttons[Month_No].Click;
    ListSalaryF.qryPersonels.Locate('PersonelNo',
      qryOverTime.FieldByName('PersonelNo').AsVariant, [])
  end; // Execute
end;

procedure TSalaryOverTimeF.actFunctionShowExecute(Sender: TObject);
begin
  inherited;
  if (mdimainF.ActFunctionsF.Enabled) and (mdimainF.ActFunctionsF.Visible) then
  begin
    CreateMDIForm2(TFunctionItemsF, FunctionItemsF, Self, 28);
    FunctionItemsF.ToolBar1.Buttons[MonthNo - 1].Down := True;
    FunctionItemsF.ToolBar1.Buttons[MonthNo - 1].Click;
    FunctionItemsF.qryPersonel.Locate('PersonelNo',
      qryOverTime.FieldByName('PersonelNo').AsVariant, [])
  end; // Execute

end;

procedure TSalaryOverTimeF.ppLblPriceCaptionGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := qryOverTime.FieldByName('Price').DisplayLabel;
end;

procedure TSalaryOverTimeF.AllClickClick(Sender: TObject);
var
  File_Name, ReportFooter: String;
begin
  inherited;
  ReportFooter := FooterFormType(48);
  qryOverTime.DisableControls;
  qryOverTime.Sort := (Sender as TMenuItem).Hint;
  File_Name := (Sender as TMenuItem).Name + '.rtm';
  with ppReport1 do
  begin
    Template.FileName := GetReportFileWithPath( File_Name);
    try
      if FileExists(Template.FileName) then
        Template.LoadFromFile
      else
        Warn('›«Ì· ç«ÅÌ ' + File_Name + ' Ì«›  ‰‘œ.!˛');
      InitReport(ppReport1, ppFooterBand1, ppRegion1, ppRecFooterLine,
        ReportFooter);
      InitReport(ppReport1, ppSummaryBand1, ppRegion2, ppRecFooterLine2,
        ReportFooter);
    SetSendToBackShapeOnPrint(Self);
      Print;
    finally
    end; // try
  end; // with
end;

procedure TSalaryOverTimeF.CmbArchiveIDChange(Sender: TObject);
begin
  inherited;
  Updatefilter
end;

End.
