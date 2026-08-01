unit PonyDebitCredit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template4, DBActns, ActnList, StdCtrls, Buttons, ExtCtrls, DB,
  ADODB, Mask, DBCtrls, sndkey32, SumDBGrid, Menus, ppParameter,
  ppBands, ppCtrls, ppVar, ppPrnabl, ppClass, ppCache, ppProd, ppReport, ppDB,
  ppComm, ppRelatv, ppDBPipe, ppDesignLayer, System.Actions, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, CedarDbGrid;

type
  TPonyDebitCreditF = class(TTemplate4F)
    srcPonyDebitCredits: TDataSource;
    DataSetInsert1: TDataSetInsert;
    DataSetDelete1: TDataSetDelete;
    DataSetEdit1: TDataSetEdit;
    okPanel: TPanel;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    newPanel: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    pnl1: TPanel;
    LblFormNumber: TLabel;
    btnSort: TBitBtn;
    btnsearch: TBitBtn;
    btnSendExcel: TBitBtn;
    btn4: TBitBtn;
    actSort: TAction;
    actsearch: TAction;
    actSendExcel: TAction;
    actGetExcel: TAction;
    actPrintVijeh: TAction;
    actPrint: TAction;
    DBGrid1: TCedarDbgrid;
    qryPonyDebitCredits: TADOQuery;
    btnCreditDebit: TSpeedButton;
    qryPonyDebitCreditsPonyDebitCreditsID: TAutoIncField;
    qryPonyDebitCreditsPonyID: TIntegerField;
    qryPonyDebitCreditsPonyNote: TWideStringField;
    qryPonyDebitCreditsAmount: TBCDField;
    procedure srcPonyDebitCreditsStateChange(Sender: TObject);
    procedure qryPonyDebitCreditsAfterInsert(DataSet: TDataSet);
    procedure qryLookUpBeforeDelete(DataSet: TDataSet);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure qryPonyDebitCreditsAfterPost(DataSet: TDataSet);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure qryPonyDebitCreditsBeforePost(DataSet: TDataSet);
    procedure qryPonyDebitCreditsBeforeDelete(DataSet: TDataSet);
    procedure actSendExcelExecute(Sender: TObject);
    procedure actGetExcelExecute(Sender: TObject);
    procedure btnCreditDebitClick(Sender: TObject);

  private
    PonyID, PersonelNo: Integer;
    procedure gridkeyenter(Sender: TObject; var Key: Char);
    { Private declarations }
  public
    function Enter(Pony_ID, Personel_No: Integer; DebitCredit: Currency)
      : Currency;
    { Public declarations }
  end;

var
  PonyDebitCreditF: TPonyDebitCreditF;

implementation

uses DM, searchCode_ADO, GlobalPro, DateUtils, mmessage,
  SalaryFunctions, sort2, search2, GetExcel, DBGrid2Print, selected;

{$R *.dfm}

procedure TPonyDebitCreditF.srcPonyDebitCreditsStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible := (qryPonyDebitCredits.State in dseditmodes);
  newPanel.Visible := not okPanel.Visible;
  FreeReservedCodes(DMf.adcSalary, Self.Name);
end;

procedure TPonyDebitCreditF.qryPonyDebitCreditsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('PonyID').AsLargeInt := PonyID;
end;

procedure TPonyDebitCreditF.qryLookUpBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if get_response('¬Ì« «“ Õ–›  „ÿ„∆‰ Â” Ìœø') <> mrYes then
    Abort;
end;

procedure TPonyDebitCreditF.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  DataSetEdit1.Execute;
end;

procedure TPonyDebitCreditF.qryPonyDebitCreditsAfterPost(DataSet: TDataSet);
begin
  inherited;
  BigMessage('À»  ‘œ.˛', 1);
end;

procedure TPonyDebitCreditF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  gridkeyenter(Sender, Key);
end;

procedure TPonyDebitCreditF.gridkeyenter(Sender: TObject; var Key: Char);
var
  nextIndex: Integer;
  curIndex: Integer;
  aDataSet: TDataSet;
begin
  curIndex := (Sender as TCedarDbgrid).SelectedIndex;
  nextIndex := curIndex;
  case Key of
    #13:
      begin
        if shiftDown then
          exit;
        aDataSet := (Sender as TCedarDbgrid).DataSource.DataSet;
        Key := #0;
        case curIndex of
          0:
            nextIndex := 1;
          1:
            nextIndex := -1;
        end; // case
        if (curIndex > 0) and (aDataSet.FieldByName('PonyNote').AsString.IsEmpty)
        then
        begin
          aDataSet.Cancel;
          exit;
        end;
      end; // #13
    '+':
      begin
        Key := #0;
        nextIndex := curIndex - 1;
        while (nextIndex >= 0) and (not(DBGrid1.Columns[nextIndex].Visible) OR
          (DBGrid1.Columns[nextIndex].ReadOnly)) do
          Dec(nextIndex);
        if nextIndex < 0 then
          nextIndex := -3;
      end; // +
    '*':
      begin
        Key := #0;
        // SendKey('000',false);
      end; // *
    #27:
      if (Sender as TCedarDbgrid).DataSource.DataSet.State in dseditmodes then
        (Sender as TCedarDbgrid).DataSource.DataSet.Cancel;

      #32, #157: if DBGrid1.Columns[curIndex].ButtonStyle = cbsEllipsis then
    begin // if curIndex in [3,7,8,9,10,11,12] then begin
      Key := #0;
      // DBGrid1EditButtonClick(Sender);
    end; // if
  end; // case

  if nextIndex >= 0 then
    while (nextIndex < DBGrid1.Columns.Count) and
      (not(DBGrid1.Columns[nextIndex].Visible) OR
      (DBGrid1.Columns[nextIndex].ReadOnly)) do
      Inc(nextIndex);
  if nextIndex >= (Sender as TCedarDbgrid).Columns.Count then
    nextIndex := -1;
  if (curIndex <> nextIndex) then
    case nextIndex of
      - 1:
        begin
          sendkey(vk_down, [], false);
          (Sender as TCedarDbgrid).SelectedIndex := 0;
        end; // 0
      -2:
        begin
          if (Sender as TCedarDbgrid).DataSource.State in dseditmodes then
            (Sender as TCedarDbgrid).DataSource.DataSet.Cancel;
          Perform(WM_NEXTDLGCTL, 0, 0);
        end; // -2
      -3:
        begin
          if (Sender as TCedarDbgrid).DataSource.State in dseditmodes then
            (Sender as TCedarDbgrid).DataSource.DataSet.Cancel;
          Perform(WM_NEXTDLGCTL, 0, 0);
        end; // -3
    else
      (Sender as TCedarDbgrid).SelectedIndex := nextIndex;
end; // case

end;

procedure TPonyDebitCreditF.qryPonyDebitCreditsBeforePost(DataSet: TDataSet);
begin
  inherited;
  TrimStringFields(DataSet);
  if not CheckRequiredFields(DataSet) then
    Abort;
end;

function TPonyDebitCreditF.Enter(Pony_ID, Personel_No: Integer;
  DebitCredit: Currency): Currency;
begin
  PonyDebitCreditF := TPonyDebitCreditF.Create(Application);
  with PonyDebitCreditF do
  begin
    try
      PonyID := Pony_ID;
      PersonelNo := Personel_No;
      With qryPonyDebitCredits do
      begin
        Close;
        Parameters.ParamByName('PonyID').Value := PonyID;
        Open;
        if (RecordCount = 0) and (DebitCredit <> 0) then
        begin
          Insert;
          qryPonyDebitCreditsPonyNote.AsString := '”«Ì— ÿ·»/»œÂÌ';
          qryPonyDebitCreditsAmount.AsCurrency := DebitCredit;
          Post;
        end;
      end;
      if ShowModal = mrOk then
        Result := CalcSumFileds2(qryPonyDebitCreditsAmount);
    finally
      Free;
    end;
  end;
end;

procedure TPonyDebitCreditF.qryPonyDebitCreditsBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if get_response('¬Ì« «“ Õ–› „ÿ„∆‰ Â” Ìœ.') <> mrYes then
    Abort;
end;

procedure TPonyDebitCreditF.actSendExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TPonyDebitCreditF.btnCreditDebitClick(Sender: TObject);
var
  sqlTxt, strList: string;
begin
  inherited;
  sqlTxt := ' SELECT FixedCalculated.FunctionID ID,FormsInfo.InfoName_L1 ,' +
    ' SUM(FixedCalculated.Price) + MAX(FirstRemain.PaymentLoan) AS SelectdSum1'
    + ' FROM Pay.FixedCalculated INNER JOIN' +
    ' FixedCalActive() FixedCalActive ON FixedCalculated.Mounth = FixedCalActive.Mounth'
    + ' AND FixedCalculated.ArchiveID = FixedCalActive.F_ArchiveID AND ' +
    ' FixedCalculated.PersonelNO = FixedCalActive.PersonelNO INNER JOIN' +
    ' Pay.FormsInfo ON FixedCalculated.FunctionID = FormsInfo.FormInfoID INNER JOIN'
    + ' ( SELECT PersonelDecExt.PersonelNo,PersonelDecExt.FormInfoID,' +
    ' SUM(PersonelDecExt.PaymentLoan) AS PaymentLoan' +
    ' FROM Pay.PersonelDecExt INNER JOIN' +
    ' Pay.FormsInfo ON PersonelDecExt.FormInfoID = FormsInfo.FormInfoID' +
    ' WHERE (FormsInfo.PayMentActive = 1) AND (PersonelDecExt.FirstMounth <= 12 )  and'
    + ' (PersonelDecExt.PersonelNO = %d )' +
    ' GROUP BY PersonelDecExt.PersonelNo,PersonelDecExt.FormInfoID ) FirstRemain'
    + ' ON FixedCalculated.PersonelNO = FirstRemain.PersonelNo AND' +
    ' FixedCalculated.FunctionID = FirstRemain.FormInfoID' +
    ' WHERE (FixedCalculated.Mounth <= 12) AND (FormsInfo.PayMentActive = 1)' +
    ' AND  (FixedCalculated.PersonelNO =  %d )' +
    ' GROUP BY FixedCalculated.FunctionID,FixedCalculated.PersonelNO,FormsInfo.InfoID,FormsInfo.InfoName_L1 ,'
    + ' FixedCalculated.calculatekind,FixedCalculated.SalaryID ';

  sqlTxt := Format(sqlTxt, [PersonelNo, PersonelNo]);
  strList := selectedF.ShowSelect(DMf.adcSalary, 'ò”Ê—«  Ê «÷«›«  À«» ', sqlTxt,
    ['', '⁄‰Ê«‰', '„ﬁœ«—'], alLeft, [0, 200, 100], strList, 'InfoName_L1');
  if selectedF.FShowmodal = mrOk then
  begin
    qryPonyDebitCreditsPonyNote.AsString := 'ò”Ê—«  Ê «÷«›«  À«» ';
    qryPonyDebitCreditsAmount.AsCurrency := selectedF.SumAmount;
  end;
end;

procedure TPonyDebitCreditF.actGetExcelExecute(Sender: TObject);
begin
  inherited;
  GetExcelF.ShowImPortExcel(qryPonyDebitCredits)
end;

end.
