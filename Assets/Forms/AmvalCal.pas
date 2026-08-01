unit AmvalCal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template4, DBActns, ActnList, StdCtrls, Buttons, ExtCtrls, DB,
  Grids, Vcl.DBGrids, ADODB, SumDBGrid, Mask, System.Actions;

type
  TAmvalCalF = class(TTemplate4F)
    actCal: TAction;
    BitBtn1: TBitBtn;
    qryCalc: TADOQuery;
    srcCalc: TDataSource;
    qryCalcAccTopicCode: TLargeintField;
    qryCalcOwnerType: TIntegerField;
    qryCalcKind: TIntegerField;
    qryCalcSecondKind: TIntegerField;
    qryCalcId4Info: TIntegerField;
    qryCalcSerialNum: TIntegerField;
    qryCalcDepMode: TWordField;
    qryCalcDepValue: TIntegerField;
    qryCalcAssetsValue: TBCDField;
    qryCalcEsqValue: TBCDField;
    qryCalcFirstDepValue: TBCDField;
    qryCalcDepvalueInYear: TBCDField;
    qryCalcStartUsingDate: TStringField;
    qryCalccalculatedate: TStringField;
    qryCalcNextStartcalculatedate: TStringField;
    qryCalcDecDate: TStringField;
    qryCalcBaseDate: TStringField;
    qryCalcInvoiceDate: TStringField;
    qryCalcNextStartUsingDate: TStringField;
    qryCalcStartNowMaliYear: TStringField;
    qryCalcSecondPrice: TBCDField;
    qryCalcSecondFirstDepValue: TBCDField;
    qryCalcSecondDepValueInYear: TBCDField;
    DBGrid1: TDBGrid;
    qryCalcStuffDesc: TStringField;
    SumGrid1: TSumGrid;
    BitBtn2: TBitBtn;
    actFilter: TAction;
    actSort: TAction;
    actSearch: TAction;
    BitBtn5: TBitBtn;
    actExcel: TAction;
    qryCalcOthers: TADOQuery;
    mskBaseDate: TMaskEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    mskStartDate: TMaskEdit;
    mskEndDate: TMaskEdit;
    qryCalcUniqCode: TIntegerField;
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actCalExecute(Sender: TObject);
    procedure actExcelExecute(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
    procedure qryCalcDepModeGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure qryCalcAfterOpen(DataSet: TDataSet);
  private
    Procedure UpdateList;
    { Private declarations }
  public
    procedure enter;
    { Public declarations }
  end;

var
  AmvalCalF: TAmvalCalF;

implementation

uses Dm, mmessage, GlobalPro,
  filter_ADO, FilterClass_ADO, shamsiDate;

{$R *.dfm}

procedure TAmvalCalF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 1);
end;

procedure TAmvalCalF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
end;

procedure TAmvalCalF.actCalExecute(Sender: TObject);
var
  BID: Integer;
  s: string;
  ManyYears: Boolean;
  DepTable: Boolean;
begin
  inherited;
  ManyYears := False;
  DepTable := True;
  s := mskBaseDate.Text;
  with Dmf.qry_TempAss do
  begin
    Active := False;
    SQL.Text := 'SELECT YearID FROM Util.MaliYear';
    Active := True;
    if RecordCount > 1 then
      ManyYears := True;
    Active := False;
    SQL.Text := 'SELECT Serial FROM Assets.DepTable WHERE(Yearid =' +
      inttostr(APPBank.Year - 1) + ')';
    Active := True;
    if RecordCount >= 1 then
      DepTable := False;
  end;
  if ManyYears and DepTable then
    With TADOStoredProc.Create(nil) do
      try
        Active := False;
        ProcedureName := 'Assets.InsertDepTable';
        Connection := Dmf.adcBSell;
        Parameters.AddParameter;
        Parameters.Refresh;
        Parameters.ParamByName('@YearID').Value := APPBank.Year - 1;
        try
          ExecProc;
        except
          on E: Exception do
          begin
            Warn(E.Message);
            add2log(e.Message);
            Dmf.adcBSell.Connected := False;
          end;
        end;

      finally
        Free;
      end;

  if not validate_date(True, APPBank.StartYear, APPBank.endYear, ' «—ÌŒ Å«ÌÂ', s)
  then
    Abort;
  try

    SaveBankConfig('BaseDate', mskBaseDate.Text,'Assets');
    // ReadallOption;
    with qryCalc do
    begin
      Close;
      Parameters.ParamByName('BaseDate').Value := opt.BaseDate;
      Parameters.ParamByName('DecDate').Value := opt.BaseDate;
      Open;
    end;
    with qryCalcOthers do
    begin
      Close;
      Parameters.ParamByName('BaseDate').Value := opt.BaseDate;
      Open;
    end;

    qryCalc.DisableControls;
    qryCalcOthers.DisableControls;

    if Dmf.AmvalCal(opt.BaseDate, 0, qryCalc) then
      BigMessage('„Õ«”»Â ‘œ.˛', 1);
    Dmf.AmvalCal(opt.BaseDate, 0, qryCalcOthers);
    BID := qryCalc.fieldbyname('UniqCode').AsInteger;
  finally
    qryCalc.EnableControls;
    qryCalcOthers.EnableControls;
    qryCalc.Requery;
    SumGrid1.Active := False;
    SumGrid1.Active := True;
    qryCalc.Locate('UniqCode', BID, []);
  end;

end;

procedure TAmvalCalF.actExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TAmvalCalF.UpdateList;
begin
  with qryCalc do
  begin
    Close;
    Parameters.ParamByName('BaseDate').Value := opt.BaseDate;
    Parameters.ParamByName('DecDate').Value := opt.BaseDate;
    Parameters.ParamByName('OwFrom').Value :=
      GetcFrom(myParams.ParamValues['OwenrType'], ftString);
    Parameters.ParamByName('OwTo').Value :=
      GetcTo(myParams.ParamValues['OwenrType'], ftInteger);;
    Parameters.ParamByName('SrFrom').Value :=
      GetcFrom(myParams.ParamValues['SerialNum'], ftInteger);
    Parameters.ParamByName('SrTo').Value :=
      GetcTo(myParams.ParamValues['SerialNum'], ftInteger);
    Parameters.ParamByName('AccFrom').Value :=
      GetcFrom(myParams.ParamValues['accCode'], ftString);
    Parameters.ParamByName('AccTo').Value :=
      GetcTo(myParams.ParamValues['accCode'], ftString);
    Parameters.ParamByName('YearId').Value := APPBank.Year;
    Open;
  end;
  with qryCalcOthers do
  begin
    Close;
    Parameters.ParamByName('BaseDate').Value := opt.BaseDate;
    Parameters.ParamByName('OwFrom').Value :=
      GetcFrom(myParams.ParamValues['OwenrType'], ftString);
    Parameters.ParamByName('OwTo').Value :=
      GetcTo(myParams.ParamValues['OwenrType'], ftInteger);;
    Parameters.ParamByName('SrFrom').Value :=
      GetcFrom(myParams.ParamValues['SerialNum'], ftInteger);
    Parameters.ParamByName('SrTo').Value :=
      GetcTo(myParams.ParamValues['SerialNum'], ftInteger);
    Parameters.ParamByName('AccFrom').Value :=
      GetcFrom(myParams.ParamValues['accCode'], ftString);
    Parameters.ParamByName('AccTo').Value :=
      GetcTo(myParams.ParamValues['accCode'], ftString);
    Parameters.ParamByName('YearId').Value := APPBank.Year;
    Open;
  end;
end;

procedure TAmvalCalF.enter;
begin
  AmvalCalF := TAmvalCalF.Create(Application);
  with AmvalCalF do
    try
      myParams.Clear;
      actFilter.Execute;
      if myParams.FindParam('SerialNum') <> nil then
        ShowModal;
    finally
      Free;
    end;
end;

procedure TAmvalCalF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
    try
      AddItem(Dmf.adcBSell, 'OwenrType', '‰Ê⁄ „«·ﬂÌ ', '„«·ﬂÌ ', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT OwnerType, TypeName FROM Assets.OwnerType',
        'Select Min(OwnerType),max(OwnerType) from Assets.OwnerType');
      AddItem(Dmf.adcBSell, 'AccCode', 'ﬂœ Õ”«»', 'ﬂœ', ftInteger, dvMinMax, '',
        '', ciLookup, 'SELECT AccTopicCode, AccDesc FROM Assets.AccTopics',
        'Select Min(AccTopicCode),max(AccTopicCode) from Assets.Amval');
      AddItem(Dmf.adcBSell, 'SerialNum', '‘„«—Â ”—Ì«·', '‘„«—Â', ftInteger,
        dvMinMax, '', '', ciSimple, '',
        'Select Min(SerialNum),max(SerialNum) from Assets.amval');
      if ShowModal = mrOk then
      begin
        GetFilterString;
        UpdateList;
      end; // if
    finally
      Free;
    end; // try

end;

procedure TAmvalCalF.qryCalcAfterOpen(DataSet: TDataSet);
begin
  inherited;
  if (DataSet.RecordCount = 0) or (APPBank.StatusYear <> 0) then
    BitBtn1.Enabled := False;
end;

procedure TAmvalCalF.qryCalcDepModeGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  inherited;
  case Sender.AsInteger of
    0:
      Text := '„” ﬁÌ„';
    1:
      Text := '‰“Ê·Ì';
  end;
end;

procedure TAmvalCalF.FormCreate(Sender: TObject);
begin
  inherited;
  mskBaseDate.Text := opt.BaseDate;
  mskStartDate.Text := opt.maliStartDate;
  mskEndDate.Text := opt.maliExpireDate;
end;

end.
