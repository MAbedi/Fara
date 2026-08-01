// mohammad rezaei
unit DocTypes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template4, DBActns, ActnList, StdCtrls, Buttons, ExtCtrls, Mask,
  DBCtrls, Grids, Vcl.DBGrids, DB, ADODB, ppDB, ppBands, ppCtrls, ppVar,
  ppPrnabl, ppClass, ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDBPipe,
  ppParameter, ppDesignLayer, System.Actions;

type
  TDocTypesF = class(TTemplate4F)
    newPanel: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    DataSetInsert1: TDataSetInsert;
    DataSetEdit1: TDataSetEdit;
    DataSetDelete1: TDataSetDelete;
    actSendToExcel: TAction;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    qryDocTypes: TADOQuery;
    srcDocTypes: TDataSource;
    qryDocTypesDocTypeCode: TIntegerField;
    qryDocTypesDocTypeName: TStringField;
    qryDocTypesDocTypeName_L2: TStringField;
    qryDocTypesForminfoID: TIntegerField;
    qryDocTypesFormType: TWordField;
    okPanel: TPanel;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn6: TBitBtn;
    actSearch: TAction;
    actSort: TAction;
    actPrint: TAction;
    BitBtn9: TBitBtn;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppLabel2: TppLabel;
    ppLabel6: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel13: TppLabel;
    ppLine5: TppLine;
    ppLine10: TppLine;
    SysVarPageNo: TppSystemVariable;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText5: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppLine11: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppLine12: TppLine;
    ppLine1: TppLine;
    qryDocTypesSortID: TIntegerField;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Label4: TLabel;
    procedure srcDocTypesStateChange(Sender: TObject);
    procedure qryDocTypesAfterInsert(DataSet: TDataSet);
    procedure qryDocTypesAfterCancel(DataSet: TDataSet);
    procedure qryDocTypesAfterEdit(DataSet: TDataSet);
    procedure qryDocTypesBeforePost(DataSet: TDataSet);
    procedure actSendToExcelExecute(Sender: TObject);
    procedure qryDocTypesBeforeDelete(DataSet: TDataSet);
    procedure qryDocTypesAfterDelete(DataSet: TDataSet);
    procedure qryDocTypesBeforeEdit(DataSet: TDataSet);
    procedure qryDocTypesBeforeInsert(DataSet: TDataSet);
    procedure actSearchExecute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure ppLabel10GetText(Sender: TObject; var Text: String);
    procedure ppLabel13GetText(Sender: TObject; var Text: String);
    procedure SysVarPageNoGetText(Sender: TObject; var Text: String);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure actPrintExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
    OldCode: Integer;
  public
    Procedure enter;
    { Public declarations }
  end;

var
  DocTypesF: TDocTypesF;

implementation

uses Dm, GlobalPro, mmessage, search2, sort2, FaraConsts;

procedure TDocTypesF.enter;
begin
  DocTypesF := TDocTypesF.Create(Application);
  with DocTypesF do
  begin
    qryDocTypes.Active := True;
    Panel2.Visible := False;
    try
      ShowModal;
    finally
      Free;
    end; // try
  end; // with
end;

{$R *.dfm}

procedure TDocTypesF.srcDocTypesStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible := qryDocTypes.State in dsEditModes;
  newPanel.Visible := not okPanel.Visible;
  btnClose.Cancel := newPanel.Visible;
  FreeReservedCodes(Dmf.adcAccounting, 'acc.DocTypes');
end;

procedure TDocTypesF.qryDocTypesAfterInsert(DataSet: TDataSet);
var
  i: Integer;
begin
  inherited;
  i := GetANewCode('','acc.DocTypes', 'DocTypeCode',dmf.adcAccounting);
  DataSet.FieldByName('FormInfoID').AsInteger :=
    GetANewCode('','acc.FormsInfo', 'FormInfoID',dmf.adcAccounting);
  DataSet.FieldByName('FormType').AsInteger := 1;
  if i < 10 then
    DataSet.FieldByName('DocTypeCode').AsInteger := 11
  else
    DataSet.FieldByName('DocTypeCode').AsInteger :=
      GetANewCode('','acc.DocTypes', 'DocTypeCode',dmf.adcAccounting);
  Panel2.Visible := True;
  DBEdit1.SetFocus;
end;

procedure TDocTypesF.qryDocTypesAfterCancel(DataSet: TDataSet);
begin
  inherited;
  Panel2.Visible := False;
end;

procedure TDocTypesF.qryDocTypesAfterEdit(DataSet: TDataSet);
begin
  inherited;
  Panel2.Visible := True;
end;

procedure TDocTypesF.qryDocTypesBeforePost(DataSet: TDataSet);
begin
  inherited;

  with Dmf.qry_Temp do
  begin
    Active := False;
    Sql.Text := 'UPDATE Acc.DocGroups SET DocTypeCode =' +
      qryDocTypesDocTypeCode.AsString + '  WHERE (DocTypeCode = ' +
      IntToStr(OldCode) + ')';
    ExecSQL;
  end;
  if not User.admin and (qryDocTypes.FieldByName('DocTypeCode').AsInteger
    < 6) then
  begin
    warn('كد تعريف شده بايستي بزرگتر از 5 باشد.‏');
    DBEdit1.SetFocus;
    abort;
  end; // if
  with Dmf.qry_Temp do
  begin
    Active := False;
    Sql.Text := 'SELECT   COUNT(*) FROM acc.FormsInfo ' +
      ' WHERE formtype= 1 AND (infoID  = ' + DataSet.FieldByName('DocTypeCode')
      .AsString + ') AND (ForminfoID <> ' + DataSet.FieldByName('ForminfoID')
      .AsString + ')';

    Active := True;
    if Fields[0].AsInteger > 0 then
    begin
      warn('کد وارد شده تکراری می باشد');
      abort;
    end;
    Active := True;
  end;
  Panel2.Visible := False;
end;

procedure TDocTypesF.actSendToExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TDocTypesF.qryDocTypesBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if User.Level < 6 then
  begin
    warn('شما مجاز به حذف اطلاعات نمي باشيد');
    abort;
  end;
  if qryDocTypes.FieldByName('DocTypeCode').AsInteger <= 5 then
  begin
    warn('امكان حذف وجود ندارد');
    abort;
  end;

  with Dmf.qry_Temp do
    try
      Close;
      Sql.Text := 'SELECT COUNT(*) FROM acc.DocGroups WHERE DocTypeCode =' +
        qryDocTypesDocTypeCode.AsString;
      Open;
      if Fields[0].AsInteger > 0 then
      begin
        warn('امكان حذف وجود ندارد');
        abort;
      end;
    finally
      Close;
    end;

  if get_response('آيا براي حذف اين كد حساب مطمئن هستيد؟') <> mrYes then
    abort;
end;

procedure TDocTypesF.qryDocTypesAfterDelete(DataSet: TDataSet);
begin
  inherited;
  BigMessage('حذف شد.', 1);
end;

procedure TDocTypesF.qryDocTypesBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  if User.Level < 7 then
  begin
    warn('شما مجاز به ويرايش اطلاعات نمي باشيد');
    abort;
  end;
  DataSet.FieldByName('DocTypeCode').ReadOnly :=
    qryDocTypes.FieldByName('DocTypeCode').AsInteger <= 5;
  DataSet.FieldByName('DocTypeName_L1').ReadOnly :=
    qryDocTypes.FieldByName('DocTypeCode').AsInteger <= 5;
  DataSet.FieldByName('DocTypeName_L2').ReadOnly :=
    qryDocTypes.FieldByName('DocTypeCode').AsInteger <= 5;
  OldCode := qryDocTypes.FieldByName('DocTypeCode').AsInteger;
end;

procedure TDocTypesF.qryDocTypesBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  if User.Level < 7 then
  begin
    warn('شما مجاز به ورود اطلاعات نمي باشيد');
    abort;
  end; // case
end;

procedure TDocTypesF.actSearchExecute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryDocTypes);
end;

procedure TDocTypesF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryDocTypes);
end;

procedure TDocTypesF.ppLabel10GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TDocTypesF.ppLabel13GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TDocTypesF.SysVarPageNoGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TDocTypesF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  QuickSearch(Key, qryDocTypes.FieldByName('DocTypeCode'));
end;

procedure TDocTypesF.actPrintExecute(Sender: TObject);
begin
  inherited;
  ppReport1.PreviewFormSettings.SinglePageOnly := True;
  ppReport1.Print;
end;

procedure TDocTypesF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
end;

procedure TDocTypesF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 1);
end;

end.
