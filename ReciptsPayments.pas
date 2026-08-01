unit ReciptsPayments;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template4, DBActns, ActnList, StdCtrls, Buttons, ExtCtrls,
  DBCtrls, Mask, DB, ADODB, ppBands, ppCtrls, ppVar, sndkey32,
  ppPrnabl, ppClass, ppCache, ppDB, ppDBPipe, ppComm, ppRelatv, ppProd,
  ppReport, Math, SumDBGrid, ppParameter, FarsiReportBuilde, System.Actions,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, CedarDbGrid;

type
  TReciptsPaymentsF = class(TTemplate4F)
    DataSetInsert1: TDataSetInsert;
    DataSetDelete1: TDataSetDelete;
    DataSetEdit1: TDataSetEdit;
    qryCustomers: TADOQuery;
    srcCustomers: TDataSource;
    qryReciptsPayments: TADOQuery;
    srcReciptsPayments: TDataSource;
    Panel3: TPanel;
    Panel4: TPanel;
    SpeedButton1: TSpeedButton;
    Label20: TLabel;
    dbtxt_CustName: TDBText;
    Label4: TLabel;
    GroupBox2: TGroupBox;
    dbmmoNote: TDBMemo;
    edtCustID: TDBEdit;
    edtPayment: TDBEdit;
    actPrint: TAction;
    DataSetDelete: TAction;
    qryReciptsPaymentsReciptsPaymentID: TAutoIncField;
    qryReciptsPaymentsReciptID: TIntegerField;
    qryReciptsPaymentsServerID: TIntegerField;
    qryReciptsPaymentsYearID: TIntegerField;
    qryReciptsPaymentsCustID: TIntegerField;
    qryReciptsPaymentsPayment: TBCDField;
    qryReciptsPaymentsNote: TStringField;
    qryReciptsPayments_CustName: TStringField;
    btnOk: TBitBtn;
    actOk: TAction;
    qryReciptsPaymentsPaymentCo: TFloatField;
    edtPaymentCo: TDBEdit;
    lblPaymentCo: TLabel;
    pnlAutoInsertPostInsert4: TPanel;
    newPanel: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    btnDataSetDelete1_: TBitBtn;
    okPanel: TPanel;
    BitBtn1: TBitBtn;
    BitBtn8: TBitBtn;
    qryReciptsPaymentsPaymentKind: TWordField;
    DBGrid1: TCedarDbgrid;
    qryReciptsPaymentsPaymentDate: TStringField;
    BitBtn2: TBitBtn;
    procedure qryReciptsPaymentsAfterInsert(DataSet: TDataSet);
    procedure SpeedButton1Click(Sender: TObject);
    procedure srcReciptsPaymentsStateChange(Sender: TObject);
    procedure qryReciptsPaymentsAfterPost(DataSet: TDataSet);
    procedure edtCustIDKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure qryReciptsPaymentsBeforePost(DataSet: TDataSet);
    procedure DataSetDeleteExecute(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure qryReciptsPaymentsAfterEdit(DataSet: TDataSet);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1EditButtonClick(Sender: TObject);
    procedure qryReciptsPaymentsAfterScroll(DataSet: TDataSet);
    procedure actOkExecute(Sender: TObject);
    procedure DBGrid1Exit(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure qryReciptsPaymentsAfterCancel(DataSet: TDataSet);
    procedure qryReciptsPaymentsBeforeInsert(DataSet: TDataSet);
    procedure qryReciptsPaymentsPaymentCoChange(Sender: TField);
    procedure qryReciptsPaymentsPaymentChange(Sender: TField);
    procedure qryReciptsPaymentsBeforeDelete(DataSet: TDataSet);
  private
    { Private declarations }
    FormInOutds: string;
    qryRecipts, qryinit, qryItems: TADOQuery;
    ReciptsPrice, CurentPrice: Currency;
    AutoInsertPostInsert: Boolean;
    procedure InitForm;
    procedure gridkeyenter(Sender: TObject; var Key: Char);
  public
    function enter(qry_Recipts, qry_init, qry_Items: TADOQuery;
      FormOutput: Boolean; var _ReciptsPaymentsF: TReciptsPaymentsF)
      : TModalResult;
  end;

var
  ReciptsPaymentsF: TReciptsPaymentsF;

implementation

uses DM, GlobalPro, searchCode_ADO, mmessage, FormFunctions;

{$R *.dfm}

function TReciptsPaymentsF.enter(qry_Recipts, qry_init, qry_Items: TADOQuery;
  FormOutput: Boolean; var _ReciptsPaymentsF: TReciptsPaymentsF): TModalResult;
begin
  Result := mrNone;
  if (not CheckUserlevel(qry_init.FieldByName('DeficitsLevelID'), qry_Recipts))
  then
  begin
    warn2('سطح دسترسی کسورات/اضافات بررسی شود');
    Exit;
  end;
  ReciptsPaymentsF := TReciptsPaymentsF.Create(Application);
  _ReciptsPaymentsF := ReciptsPaymentsF;
  with ReciptsPaymentsF do
    try
      BigMessage('لطفا صبر کنید...' ,0);
      qryCustomers.Parameters.ParamByName('CustomerKindPayments').Value := 0;
      qryCustomers.SQL.Text := StringReplace(qryCustomers.SQL.Text,
        ':CustomerKindPayments', qry_init.FieldByName('CustomerKindPayments')
        .AsString, [rfReplaceAll]);
      FormInOutds := 'Input';
      if FormOutput then
        FormInOutds := 'Output';
      qryRecipts := qry_Recipts;
      qryinit := qry_init;
      qryItems := qry_Items;
      SetLookUpCash(qryReciptsPayments);
      InitForm;
      CloseMessage;
      Result := ShowModal;
    finally
      // Free; on reciptsGridF
    end;
end;

procedure TReciptsPaymentsF.qryReciptsPaymentsAfterCancel(DataSet: TDataSet);
begin
  inherited;
  InitForm
end;

procedure TReciptsPaymentsF.qryReciptsPaymentsAfterEdit(DataSet: TDataSet);
begin
  inherited;
  if not AutoInsertPostInsert then
    if ReciptsPrice <> CurentPrice then
      qryReciptsPaymentsPayment.AsCurrency := ReciptsPrice - CurentPrice;
end;

procedure TReciptsPaymentsF.qryReciptsPaymentsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('ReciptID').AsInteger :=
    qryRecipts.FieldByName('ReciptID').AsInteger;
  DataSet.FieldByName('ServerID').AsInteger :=
    qryRecipts.FieldByName('ServerID').AsInteger;
  DataSet.FieldByName('YearID').AsInteger := qryRecipts.FieldByName('YearID')
    .AsInteger;
  if AutoInsertPostInsert then
    qryReciptsPaymentsPaymentKind.AsInteger := 10
  else
  begin
    qryReciptsPaymentsPaymentCo.AsFloat := 1;
    qryReciptsPaymentsPayment.AsCurrency := ReciptsPrice - CurentPrice;
    qryReciptsPaymentsPaymentKind.AsInteger := 9;
  end;

end;

procedure TReciptsPaymentsF.InitForm;
begin
  DBGrid1.SetFooter4Sum([]);
  AutoInsertPostInsert := qryinit.FieldByName('AutoInsertPostInsert')
    .AsInteger = 4;

  if AutoInsertPostInsert then
  begin
    ReciptsPrice := CalcSumFileds(qryItems, 'TotalOutputPrice') -
      CalcSumFileds(qryItems, 'DeficitValue');
  end
  else
  begin
    ReciptsPrice := CalcSumFileds(qryItems, 'TotallSellPrice');
    With DMf.qryTmpTmp do
    begin
      Active := False;
      SQL.Text := 'SELECT SUM(DeficitAdd - DeficitDec) AS Deficit_Add_Dec';
      SQL.Add('FROM ReciptsDeficits');
      SQL.Add('WHERE (ReciptsDeficits.ReciptID = :ReciptID)');
      SQL.Add('AND (ReciptsDeficits.YearID = :YearID)');
      SQL.Add('AND (ReciptsDeficits.ServerID = :ServerID)');
      Parameters.ParamByName('ReciptID').Value :=
        qryRecipts.FieldByName('ReciptID').AsInteger;
      Parameters.ParamByName('ServerID').Value :=
        qryRecipts.FieldByName('ServerID').AsInteger;
      Parameters.ParamByName('YearID').Value := qryRecipts.FieldByName('YearID')
        .AsInteger;
      Active := True;
      ReciptsPrice := ReciptsPrice + FieldByName('Deficit_Add_Dec').AsCurrency;
      Active := False;
    end;
  end;

  with qryReciptsPayments do
  begin
    Active := False;
    Parameters.ParamByName('ReciptID').Value :=
      qryRecipts.FieldByName('ReciptID').AsInteger;
    Parameters.ParamByName('ServerID').Value :=
      qryRecipts.FieldByName('ServerID').AsInteger;
    Parameters.ParamByName('YearID').Value := qryRecipts.FieldByName('YearID')
      .AsInteger;
    BeforeInsert := nil;
    Active := True;
    if not AutoInsertPostInsert then
    begin
      if RecordCount = 0 then
        With qryCustomers do
        begin
          First;
          while not Eof do
          begin
            qryReciptsPayments.Insert;
            qryReciptsPaymentsCustID.AsInteger :=
              qryCustomers.FieldByName('CustID').AsInteger;
            if RecNo = 1 then
              qryReciptsPaymentsPayment.AsCurrency := ReciptsPrice;
            qryReciptsPayments.Post;
            Next;
          end;
        end;

      if RecordCount <> qryCustomers.RecordCount then
        With qryCustomers do
        begin
          First;
          while not Eof do
          begin
            if not qryReciptsPayments.Locate('CustID',
              qryCustomers.FieldByName('CustID').AsInteger, []) then
            begin
              qryReciptsPayments.Insert;
              qryReciptsPaymentsCustID.AsInteger :=
                qryCustomers.FieldByName('CustID').AsInteger;
              qryReciptsPaymentsPayment.AsCurrency := 0;
              qryReciptsPayments.Post;
            end;
            Next;
          end;
        end;

      First;
      BeforeInsert := qryReciptsPaymentsBeforeInsert;
    end
    else
    begin
      Caption := 'واسط فروش';
      lblTopic0.Caption := Caption;
    end;

    setColumns2(DBGrid1, AutoInsertPostInsert, 'PaymentCo');

    lblPaymentCo.Visible := AutoInsertPostInsert;
    edtPaymentCo.Visible := AutoInsertPostInsert;
    pnlAutoInsertPostInsert4.Visible := AutoInsertPostInsert;
    btnOk.Visible := not AutoInsertPostInsert;

  end;
end;

procedure TReciptsPaymentsF.SpeedButton1Click(Sender: TObject);
var
  Txt: String;
  b: Boolean;
  Results: array [0 .. 1] of String;
begin
  inherited;
  Txt := qryCustomers.SQL.Text;
  b := searchCode_ADOF.SearchCode2(DMf.adcBSell, ' بانك/صندوق  ', Txt,
    ['كد', 'عنوان'], Results, [50, 150], alLeft);
  if b then
  begin
    if not(qryReciptsPayments.State in dsEditModes) then
      qryReciptsPayments.Edit;
    qryReciptsPayments.FieldByName('CustID').Value := Results[0];
  end; // if
end;

procedure TReciptsPaymentsF.srcReciptsPaymentsStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible := qryReciptsPayments.State in dsEditModes;
  newPanel.Visible := not okPanel.Visible;

  btnClose.Cancel := not(qryReciptsPayments.State in dsEditModes);
  CurentPrice := CalcSumFileds(qryReciptsPayments, 'Payment')
end;

procedure TReciptsPaymentsF.qryReciptsPaymentsAfterPost(DataSet: TDataSet);
begin
  inherited;
  CurentPrice := CalcSumFileds(qryReciptsPayments, 'Payment');
end;

procedure TReciptsPaymentsF.qryReciptsPaymentsAfterScroll(DataSet: TDataSet);
begin
  inherited;
  CurentPrice := CalcSumFileds(qryReciptsPayments, 'Payment');
  if not AutoInsertPostInsert then
    if ReciptsPrice <> CurentPrice then
    begin
      qryReciptsPayments.Edit;
      // qryReciptsPaymentsPayment.AsCurrency := ReciptsPrice - CurentPrice;
    end;
end;

procedure TReciptsPaymentsF.edtCustIDKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = vk_space then
    SpeedButton1.Click
end;

procedure TReciptsPaymentsF.actOkExecute(Sender: TObject);
begin
  inherited;
  ModalResult := mrOk;
end;

procedure TReciptsPaymentsF.btnCloseClick(Sender: TObject);
begin
  inherited;
  qryReciptsPayments.AfterScroll := nil;
end;

procedure TReciptsPaymentsF.DataSetDeleteExecute(Sender: TObject);
var
  s: string;
begin
  inherited;
  if get_response('آيا براي حذف  کل سطرها مطمئن هستيد؟') <> mrYes then
    Exit;
  s := 'Delete FROM ReciptsPayments WHERE (ReciptID = %d) AND ( YearID = %d )' +
    ' AND ( ServerID = %d ) '; // AND ( ReciptsPaymentID = %d )
  s := Format(s, [qryReciptsPaymentsReciptID.AsInteger,
    qryReciptsPaymentsYearID.AsInteger, qryReciptsPaymentsServerID.AsInteger]);
  // ,    qryReciptsPaymentsReciptsPaymentID.AsInteger
  DMf.adcBSell.Execute(s);
  qryReciptsPayments.Requery();
end;

procedure TReciptsPaymentsF.DBGrid1EditButtonClick(Sender: TObject);
begin
  inherited;
  //
end;

procedure TReciptsPaymentsF.DBGrid1Exit(Sender: TObject);
begin
  inherited;
  if qryReciptsPayments.State in dsEditModes then
  begin
    qryReciptsPayments.Post;
  end;

end;

procedure TReciptsPaymentsF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  gridkeyenter(Sender, Key);
end;

procedure TReciptsPaymentsF.gridkeyenter(Sender: TObject; var Key: Char);
var
  nextIndex: Integer;
  curIndex: Integer;
begin
  curIndex := (Sender as TCedarDbgrid).SelectedIndex;
  nextIndex := curIndex;
  case Key of
    #13:
      begin
        if shiftDown then
          Exit;
        Key := #0;
        case curIndex of
          0:
            nextIndex := IfThen(qryinit.FieldByName('AutoInsertPostInsert')
              .AsInteger in [1, 3], 3, 2);
          1:
            nextIndex := IfThen(qryinit.FieldByName('AutoInsertPostInsert')
              .AsInteger in [1, 3], 3, 2);
          2:
            nextIndex := 3;
          3:
            nextIndex := 4;
          4:
            nextIndex := 5;
          5:
            nextIndex := -1;
        end; // case
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
        SendKeys('000', False);
      end; // *
    #27:
      if (Sender as TCedarDbgrid).DataSource.DataSet.State in dsEditModes then
        (Sender as TCedarDbgrid).DataSource.DataSet.Cancel;
      #32, #157: if curIndex in [0] then
    begin
      Key := #0;
      DBGrid1EditButtonClick(Sender);
    end;
  else
    begin
    end;
  end;

  if nextIndex >= (Sender as TCedarDbgrid).Columns.Count then
    nextIndex := -1;
  if (curIndex <> nextIndex) then
    case nextIndex of
      - 1:
        begin
          if ((qryReciptsPayments.State in dsEditModes)) then
            qryReciptsPayments.Post;
          if qryReciptsPayments.RecNo = qryReciptsPayments.RecordCount then
            qryReciptsPayments.First
            // sendkey( VK_ADD, [], False)
          else
            sendkey(vk_down, [], False);
          (Sender as TCedarDbgrid).SelectedIndex :=
            IfThen(qryinit.FieldByName('AutoInsertPostInsert').AsInteger
            in [1, 3], 3, 2);

        end; // 0
      -2:
        begin
          if (Sender as TCedarDbgrid).DataSource.State in dsEditModes then
            (Sender as TCedarDbgrid).DataSource.DataSet.Cancel;
          Perform(WM_NEXTDLGCTL, 0, 0);
        end; // -2
      -3:
        begin
          if (Sender as TCedarDbgrid).DataSource.State in dsEditModes then
            (Sender as TCedarDbgrid).DataSource.DataSet.Cancel;
          Perform(WM_NEXTDLGCTL, 2, 0);
        end; // -3
    else
      begin
        (Sender as TCedarDbgrid).SelectedIndex := nextIndex;
      end;

    end;

end;

procedure TReciptsPaymentsF.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
var
  i: Integer;
begin
  inherited;
  if AutoInsertPostInsert then
    qryReciptsPayments.UpdateBatch
  else
  begin
    With qryReciptsPayments do
    begin
      DisableControls;
      First;
      while not Eof do
      begin
        if qryReciptsPaymentsPayment.AsCurrency = 0 then
          Delete
        else
          Next;
      end;
      EnableControls;
    end;
    CurentPrice := CalcSumFileds(qryReciptsPayments, 'Payment');
    i := Round(ReciptsPrice - CurentPrice);
    if (i <> 0) and (CurentPrice <> 0) and (ModalResult = mrOk) then
    begin
      CanClose := False;
      Warn(Format('%d  اختلاف در ثبت مبالغ', [i]), mtInformation);
    end;
  end;
end;

procedure TReciptsPaymentsF.qryReciptsPaymentsBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if AutoInsertPostInsert then
    if get_response(' آيا براي حذف ردیف  ' +
      qryReciptsPayments_CustName.AsString + '  مطمئن هستيد؟') <> mrYes then
      Abort

end;

procedure TReciptsPaymentsF.qryReciptsPaymentsBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  Abort
end;

procedure TReciptsPaymentsF.qryReciptsPaymentsBeforePost(DataSet: TDataSet);
begin
  inherited;
  if not CheckRequiredFields(qryReciptsPayments) then
    Abort;

  try
    qryReciptsPaymentsPayment.OnChange := nil;
    qryReciptsPaymentsPayment.AsCurrency :=
      Roundto(qryReciptsPaymentsPayment.AsCurrency, 0);
  finally
//    qryReciptsPaymentsPayment.OnChange := qryReciptsPaymentsPaymentChange;
  end;

end;

procedure TReciptsPaymentsF.qryReciptsPaymentsPaymentChange(Sender: TField);
var
  PaymentCo: Real;
begin
  inherited;
  try
    qryReciptsPaymentsPaymentCo.OnChange := nil;
    PaymentCo := (qryReciptsPaymentsPayment.AsCurrency * 100 / ReciptsPrice);
    if (qryReciptsPaymentsPayment.AsCurrency <> 0) and
      (qryReciptsPaymentsPaymentCo.AsFloat <> PaymentCo) then
      qryReciptsPaymentsPaymentCo.AsFloat := PaymentCo;
  finally
    qryReciptsPaymentsPaymentCo.OnChange := qryReciptsPaymentsPaymentCoChange;
  end;
end;

procedure TReciptsPaymentsF.qryReciptsPaymentsPaymentCoChange(Sender: TField);
var
  Payment: Real;
begin
  inherited;
  try
    qryReciptsPaymentsPayment.OnChange := nil;
    Payment := Roundto(qryReciptsPaymentsPaymentCo.AsFloat * (ReciptsPrice)
      / 100, 0);
    if qryReciptsPaymentsPayment.AsCurrency <> Payment then
      qryReciptsPaymentsPayment.AsCurrency := Payment;
  finally
    qryReciptsPaymentsPayment.OnChange := qryReciptsPaymentsPaymentChange;
  end;
end;

end.
