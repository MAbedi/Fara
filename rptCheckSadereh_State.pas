unit rptcheckSadereh_State;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI,  ImgList, DBActns, ActnList,
  StdCtrls, ExtCtrls, Buttons, DB, ADODB, DBCtrls, ComCtrls, ppDB,
  ppDBPipe, ppComm, ppRelatv, ppProd, ppClass, ppReport, Menus, ppBands,
  ppCtrls, ppVar, ppPrnabl, ppCache, ppParameter, ppDesignLayer,
  System.ImageList, System.Actions, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  CedarDbGrid;

type
  TrptcheckSadereh_StateF = class(Ttemplate2MDIF)
    BitBtn1: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    actSort: TAction;
    actExcel: TAction;
    actSpecial: TAction;
    actPrint: TAction;
    actChang: TAction;
    actShow: TAction;
    actFilter: TAction;
    BitBtn9: TBitBtn;
    qryDetail: TADOQuery;
    srcDetail: TDataSource;
    qryDetailCheckNumber: TStringField;
    qryDetailCheckDate: TStringField;
    qryDetailItemAmount: TBCDField;
    qryDetailItemNote: TStringField;
    qryDetailFormType: TWordField;
    qryDetailCheckState: TWordField;
    qryDetailFormID: TIntegerField;
    qryDetailFormItemID: TIntegerField;
    qryDetailBankName: TStringField;
    qryDetailCustName: TStringField;
    qryDetailMonth: TFloatField;
    CheckBox1: TCheckBox;
    Label1: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    qrycheck: TADOQuery;
    srcCheck: TDataSource;
    qrycheckLookUpID: TIntegerField;
    qrycheckCode: TWordField;
    qrycheckName: TStringField;
    qrycheckKind: TWordField;
    qrycheckacc_CTopicCode2: TStringField;
    qrycheckacc_CTopicCode: TStringField;
    qrycheckacc_DetailCode: TStringField;
    qryDetailAmount: TBCDField;
    qryDetailrow: TIntegerField;
    ppReport1: TppReport;
    ppDBPipeline1: TppDBPipeline;
    qryDetailnameCheckStae: TStringField;
    qryDetailFormNumber: TIntegerField;
    PopChange: TPopupMenu;
    ppHeaderBand1: TppHeaderBand;
    ppShape1: TppShape;
    ppLblCompanyName: TppLabel;
    ppLblCaption: TppLabel;
    ppSysVarPageNo: TppSystemVariable;
    ppLblPrintDate: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppLine11: TppLine;
    ppLin4Position: TppLine;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppShape3: TppShape;
    ppLabel2: TppLabel;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppShape2: TppShape;
    ppLabel4: TppLabel;
    ppLine1: TppLine;
    qryDetailServerID: TIntegerField;
    qryDetailYearID: TIntegerField;
    qrycheckacc_TopicCode: TLargeintField;
    DBGrid1: TCedarDbgrid;
    procedure FormCreate(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
    procedure qrycheckAfterScroll(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure qryDetailAfterScroll(DataSet: TDataSet);
    procedure DBGrid1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure CheckBox1Click(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actExcelExecute(Sender: TObject);
    procedure actShowExecute(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure actChangExecute(Sender: TObject);
    procedure actSpecialExecute(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure ppLblPrintDateGetText(Sender: TObject; var Text: String);
    procedure ppSysVarPageNoGetText(Sender: TObject; var Text: String);
    procedure DBGrid1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure qryDetailAfterOpen(DataSet: TDataSet);
  private
    formtype: byte;
    procedure SampelClick(Sender: TObject);
    procedure Updateremain;
    procedure UpdateList;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  rptcheckSadereh_StateF: TrptcheckSadereh_StateF;

implementation

uses DM, filter_ADO, FilterClass_ADO, GlobalPro, sort2, search2,
  DBGrid2Print, GetCheck, mmessage, FormFunctions;

{$R *.dfm}

procedure TrptcheckSadereh_StateF.FormCreate(Sender: TObject);
var
  i: Integer;
begin
  inherited;
  formtype := var_glb_gParam;
  CheckBox1.Checked := true;
  i := 0;
  with dmf.qryTmpTmp do
  begin
    Active := false;
    SQL.Text := 'SELECT code,Name  FROM  dbo.LookUps where kind = 16';
    Active := true;
    First;
    while not Eof do
    begin
      PopChange.Items.Add(NewItem(Fieldbyname('Name').AsString,
        TextToShortCut(''), false, true, SampelClick, 0, 'Item' + IntToStr(i)));
      PopChange.Items[i].Tag := Fieldbyname('code').AsInteger;
      i := i + 1;
      Next;
    end;
  end;

end;

procedure TrptcheckSadereh_StateF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      AddItem(dmf.adcBSell, 'CheckDate', '”——”Ìœ çﬂ', '‘„«—Â', ftDate, dvMinMax,
        '', '', ciSimple, '',
        'Select Min(CheckDate),max(CheckDate) from dbo.FormItems',False,'','',True);
      AddItem(dmf.adcBSell, 'bank', '‘„«—Â »«‰ﬂ', '‘„«—Â', ftInteger, dvMinMax,
        '', '', ciLookup,
        'SELECT CustID, CustName FROM  Customers INNER JOIN   CustomersGroup ON Customers.CustomerGrpID = CustomersGroup.CustomerGrpID WHERE     (CustomersGroup.GroupType = 1)',
        'SELECT MIN(CustID), MAX(CustID) FROM Customers INNER JOIN   CustomersGroup ON Customers.CustomerGrpID = CustomersGroup.CustomerGrpID WHERE     (CustomersGroup.GroupType = 1)');
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

procedure TrptcheckSadereh_StateF.Updateremain;
var
  amount: Currency;
  i: Integer;
begin
  with qryDetail do
  begin
    try
      First;
      DisableControls;
      amount := 0;
      i := 0;
      while not Eof do
      begin
        i := i + 1;
        amount := amount + Fieldbyname('ItemAmount').AsCurrency;
        edit;
        Fieldbyname('row').AsInteger := i;
        Fieldbyname('Amount').AsCurrency := amount;
        post;
        Next;
      end; //
    finally
      First;
      EnableControls;
    end; // try
  end; // with
  // StatusBar1.Panels[1].Text:=' ⁄œ«œ '+IntToStr(qryDetail.RecordCount);
  // StatusBar1.Panels[0].Text:='„»·€ '+CurrToStrF(amount,ffCurrency,0)+ ' —Ì«· ' ;
end;

procedure TrptcheckSadereh_StateF.UpdateList;
begin
  with qryDetail do
  begin
    Active := false;
    Parameters.ParamByName('formtype').Value := formtype;
    Parameters.ParamByName('bankFrom').Value :=
      GetcFrom(myParams.ParamValues['bank'], ftInteger);
    Parameters.ParamByName('bankTo').Value :=
      GetcTo(myParams.ParamValues['bank'], ftInteger);
    Parameters.ParamByName('dateFrom').Value :=
      GetcFrom(myParams.ParamValues['CheckDate'], ftString);
    Parameters.ParamByName('dateTo').Value :=
      GetcTo(myParams.ParamValues['CheckDate'], ftString);
  end;
  qrycheck.Active := true;
end;

procedure TrptcheckSadereh_StateF.qrycheckAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qryDetail do
  begin
    Active := false;
    if not(CheckBox1.Checked) then
    begin
      Parameters.ParamByName('CheckStateFrom').Value :=
        DataSet.Fieldbyname('code').AsInteger;
      Parameters.ParamByName('CheckStateTo').Value :=
        DataSet.Fieldbyname('code').AsInteger;
    end
    else
    begin
      Parameters.ParamByName('CheckStateFrom').Value := 1;
      Parameters.ParamByName('CheckStateTo').Value := 9;
    end;
    Active := true;
  end;
end;

procedure TrptcheckSadereh_StateF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  actFilter.Execute;
  if myParams.FindParam('CheckDate') = nil then
    close;

end;

procedure TrptcheckSadereh_StateF.qryDetailAfterScroll(DataSet: TDataSet);
begin
  inherited;
  // StatusBar3.Panels[1].Text:=' ⁄œ«œ '+qryDetail.Fieldbyname('row').AsString;
  // StatusBar3.Panels[0].Text:='„»·€ '+qryDetail.Fieldbyname('Amount').AsString+ ' —Ì«· ' ;
  // if ((DBGrid1.SelectedRows.Count = 1) or ((DBGrid1.SelectedRows.Count =0))and (qryDetail.RecordCount<>0)) then begin
  // StatusBar2.Panels[1].Text:=' ⁄œ«œ 1';
  // StatusBar2.Panels[0].Text:='„»·€ '+qryDetailItemAmount.AsString+ ' —Ì«· '
  // end;
end;

procedure TrptcheckSadereh_StateF.DBGrid1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  // StatusBar2.Panels[1].Text:=' ⁄œ«œ '+IntToStr(DBGrid1.SelectedRows.Count);
  // StatusBar2.Panels[0].Text:='„»·€ '+SumSelectedColumns(DBGrid1.Columns[2])+ ' —Ì«· '
end;

procedure TrptcheckSadereh_StateF.CheckBox1Click(Sender: TObject);
begin
  inherited;
  with qryDetail do
  begin
    Active := false;
    if not(CheckBox1.Checked) then
    begin
      Parameters.ParamByName('CheckStateFrom').Value := 1;
      Parameters.ParamByName('CheckStateTo').Value := 200;
    end
    else
    begin
      Parameters.ParamByName('CheckStateFrom').Value := 1;
      Parameters.ParamByName('CheckStateTo').Value := 10;
    end;
    Active := true;
  end;
end;

procedure TrptcheckSadereh_StateF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryDetail);
end;

procedure TrptcheckSadereh_StateF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryDetail);
end;

procedure TrptcheckSadereh_StateF.actExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TrptcheckSadereh_StateF.actShowExecute(Sender: TObject);
begin
  inherited;
  ShowFormTypesForms(qryDetail, Self);
  GetCheckF.qryDetail_Item.Locate('CheckNumber',
    qryDetail.Fieldbyname('CheckNumber').AsString, []);
end;

procedure TrptcheckSadereh_StateF.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  QuickSearch(Key, qryDetail.Fieldbyname('CheckNumber'));
end;

procedure TrptcheckSadereh_StateF.SampelClick(Sender: TObject);
var
  // LastNumber: Integer;
  CheckState: Integer;
begin
  inherited;
  if get_response(' ¬Ì« »—«Ì  €ÌÌ— Ê÷⁄Ì  „ÿ„∆‰ Â” Ìœø') <> mrYes then
    Exit;
  CheckState := TMainMenu(Sender).Tag;
  with dmf.qryTmpTmp do
  begin
    Active := false;
    SQL.Text := 'UPDATE FormItems SET CheckState =' + IntToStr(CheckState) +
      ' WHERE(FormItemID =  ' + qryDetail.Fieldbyname('FormItemID')
      .AsString + ')';
    ExecSQL;
    BigMessage(TMenuItem(Sender).Caption, 1);
  end; // with
  qryDetail.Requery;
end;

procedure TrptcheckSadereh_StateF.actChangExecute(Sender: TObject);
begin
  inherited;
  PopChange.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TrptcheckSadereh_StateF.actSpecialExecute(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(DBGrid1, formtype);
end;

procedure TrptcheckSadereh_StateF.actPrintExecute(Sender: TObject);
begin
  inherited;
  try
    qryDetail.DisableControls;
    InitReportFile(ppReport1, 'rptcheckSadereh_State', true);
  finally
    qryDetail.EnableControls;
  end;
end;

procedure TrptcheckSadereh_StateF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TrptcheckSadereh_StateF.ppLblPrintDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TrptcheckSadereh_StateF.ppSysVarPageNoGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TrptcheckSadereh_StateF.DBGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  // StatusBar2.Panels[1].Text:=' ⁄œ«œ '+IntToStr(DBGrid1.SelectedRows.Count);
  // StatusBar2.Panels[0].Text:='„»·€ '+SumSelectedColumns(DBGrid1.Columns[2])+ ' —Ì«· '

end;

procedure TrptcheckSadereh_StateF.qryDetailAfterOpen(DataSet: TDataSet);
begin
  inherited;
  Updateremain;
end;

end.
