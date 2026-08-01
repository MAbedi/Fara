unit ChangeCustID;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  BaseForm, ComCtrls, StdCtrls, DB, ADODB, ExtCtrls, Vcl.Grids, Vcl.DBGrids,
  Vcl.Mask, Vcl.DBCtrls, Vcl.Buttons, sndkey32;

type
  TChangeCustIDF = class(TBaseFormF)
    Panel1: TPanel;
    qryCustomers: TADOQuery;
    srcCustomers: TDataSource;
    grpMaster: TGroupBox;
    qryCustomersCustID: TIntegerField;
    qryCustomersCustName: TStringField;
    edtCustName: TMaskEdit;
    qryFitful: TADOQuery;
    srcFitful: TDataSource;
    qryFitfulCustID: TLargeintField;
    qryFitful_CustName: TStringField;
    Panel2: TPanel;
    sbtnMaster: TSpeedButton;
    Panel3: TPanel;
    Panel4: TPanel;
    Label1: TLabel;
    Timer1: TTimer;
    edtCustID: TMaskEdit;
    btnBsell: TBitBtn;
    btnBPMS: TBitBtn;
    Panel5: TPanel;
    DBGrid1: TDBGrid;
    Panel6: TPanel;
    BitBtn2: TBitBtn;
    BtnReject: TBitBtn;
    procedure Timer1Timer(Sender: TObject);
    procedure Label1MouseEnter(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure sbtnMasterClick(Sender: TObject);
    procedure DBGrid1EditButtonClick(Sender: TObject);
    procedure btnBsellClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure qryFitfulBeforeDelete(DataSet: TDataSet);
    procedure srcFitfulStateChange(Sender: TObject);
  private
    procedure gridkeyenter(Sender: TObject; var Key: Char);
  protected
  public
    class procedure Enter;
  end;

implementation

uses
  GlobalPro, DM, FaraConsts, FormFunctions;

{$R *.DFM}

var
  ChangeCustIDF: TChangeCustIDF;

procedure TChangeCustIDF.BitBtn2Click(Sender: TObject);
begin
  inherited;
  qryFitful.Delete
end;

procedure TChangeCustIDF.btnBsellClick(Sender: TObject);
begin
  if get_response('آيا براي تغيير كد مشتری از ' + qryFitful.FieldByName
    ('CustID').AsString + ' به ' + edtCustID.Text + edtCustName.Text +
    ' مطمئن هستيد؟') <> mrYes then
    Abort;
  With TADOStoredProc.Create(nil) do
    try
      Active := False;
      ProcedureName := (Sender as TBitBtn).Hint;
      Connection := DMf.adcBSell;
      Parameters.AddParameter;
      Parameters.Refresh;

      qryFitful.First;
      while not qryFitful.Eof do
      begin
        try
          Parameters.ParamByName('@CustIDOld').Value :=
            qryFitful.FieldByName('CustID').AsInteger;
          Parameters.ParamByName('@CustIDNew').Value := Trim(edtCustID.Text);
          ExecProc;
          qryFitful.Next
        except
          on e: Exception do
          begin
            Warn(e.Message);
            DMf.adcBSell.Connected := False;
          end;
        end;

      end;

    finally
      Free;
      qryCustomers.Requery;
      qryFitful.First;
      Warn('انجام شد', mtInformation);
    end;

end;

procedure TChangeCustIDF.DBGrid1EditButtonClick(Sender: TObject);
var
  aDataSet: TDataSet;
  i: Smallint;
  Results: array [0 .. 1] of String;
begin
  if (Sender as TDBGrid).ReadOnly then
    exit;
  i := (Sender as TDBGrid).SelectedIndex;
  aDataSet := (Sender as TDBGrid).DataSource.DataSet;
  (Sender as TDBGrid).SelectedIndex := i;
  if not(aDataSet.State in dseditmodes) then
    aDataSet.Edit;
  SpeedButtonCustomers(qryFitfulCustID, Results[0], Results[1]);
end;

procedure TChangeCustIDF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  gridkeyenter(Sender, Key);
end;

procedure TChangeCustIDF.gridkeyenter(Sender: TObject; var Key: Char);
var
  nextIndex: Integer;
  curIndex: Integer;
  aDataSet: TDataSet;
begin
  curIndex := (Sender as TDBGrid).SelectedIndex;
  nextIndex := curIndex;
  case Key of
    #13:
      begin
        if shiftDown then
          exit;
        aDataSet := (Sender as TDBGrid).DataSource.DataSet;
        Key := #0;
        case curIndex of
          0:
            nextIndex := 1;
          1:
            nextIndex := -1;
        end;
        if (curIndex > 0) and (aDataSet.FieldByName('CustID').IsNull) then
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
      end; // *
    #27:
      if (Sender as TDBGrid).DataSource.DataSet.State in dseditmodes then
        (Sender as TDBGrid).DataSource.DataSet.Cancel;

      #32, #157: if DBGrid1.Columns[curIndex].ButtonStyle = cbsEllipsis then
    begin
      Key := #0;
      DBGrid1EditButtonClick(Sender);
    end;
  end;

  if nextIndex >= 0 then
    while (nextIndex < DBGrid1.Columns.Count) and
      (not(DBGrid1.Columns[nextIndex].Visible) OR
      (DBGrid1.Columns[nextIndex].ReadOnly)) do
      Inc(nextIndex);
  if nextIndex >= (Sender as TDBGrid).Columns.Count then
    nextIndex := -1;
  if (curIndex <> nextIndex) then
  begin
    case nextIndex of
      - 1:
        begin
          sendkey(vk_down, [], False);
          (Sender as TDBGrid).SelectedIndex := 0;
        end; // 0
      -2:
        begin
          if (Sender as TDBGrid).DataSource.State in dseditmodes then
            (Sender as TDBGrid).DataSource.DataSet.Cancel;
          Perform(WM_NEXTDLGCTL, 0, 0);
        end; // -2
      -3:
        begin
          if (Sender as TDBGrid).DataSource.State in dseditmodes then
            (Sender as TDBGrid).DataSource.DataSet.Cancel;
          Perform(WM_NEXTDLGCTL, 1, 0);
        end; // -3
    else
      (Sender as TDBGrid).SelectedIndex := nextIndex;
  end; // case

end;

end;

class procedure TChangeCustIDF.Enter;
begin
  ChangeCustIDF := TChangeCustIDF.Create(Application);
  with ChangeCustIDF do
    try
      qryFitful.Open;
      btnBPMS.Visible := APPBank.SysID = 40;
      btnBsell.Visible := APPBank.SysID = 18;
      ShowModal;
    finally
      Free
    end;
end;

procedure TChangeCustIDF.Label1MouseEnter(Sender: TObject);
begin
  Timer1.Enabled := False;
  Label1.Visible := True;
end;

procedure TChangeCustIDF.qryFitfulBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if get_response('آيا براي حذف اين کد مطمئن هستيد؟') <> mrYes then
    Abort;
end;

procedure TChangeCustIDF.sbtnMasterClick(Sender: TObject);
var
  Results: array [0 .. 1] of String;
begin
  SpeedButtonCustomers(nil, Results[0], Results[1]);
  edtCustID.Text := Results[0];
  edtCustName.Text := Results[1];
end;

procedure TChangeCustIDF.srcFitfulStateChange(Sender: TObject);
begin
  inherited;
  BtnReject.Cancel := not (qryFitful.State in dseditmodes);
end;

procedure TChangeCustIDF.Timer1Timer(Sender: TObject);
begin
  Label1.Visible := not Label1.Visible;
  Timer1.Tag := Timer1.Tag + 1;
  if Timer1.Tag = 20 then
  begin
    Timer1.Enabled := False;
    Label1.Visible := True;
  end;
end;

end.
