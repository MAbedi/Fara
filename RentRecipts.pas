unit RentRecipts;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, Grids, Vcl.DBGrids, DB, ADODB, SumDBGrid, System.ImageList,
  System.Actions, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, CedarDbGrid;

type
  TRentReciptsF = class(Ttemplate2MDIF)
    lblReport: TLabel;
    qryRecipts: TADOQuery;
    qryReciptsReciptNumber: TIntegerField;
    qryReciptsReciptDate: TStringField;
    qryReciptsPersonID1: TIntegerField;
    qryReciptsCustName: TStringField;
    qryReciptsReciptState: TWordField;
    qryReciptsStoreID: TSmallintField;
    qryReciptsc_StoreName: TStringField;
    qryReciptsReciptID: TIntegerField;
    srcRecipts: TDataSource;
    Panel1: TPanel;
    edtPrice: TEdit;
    cmbAllotment: TComboBox;
    edtNote: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    qryReciptItems: TADOQuery;
    qryReciptItemsc_StuffName: TStringField;
    qryReciptItemsUnitName: TStringField;
    qryReciptItemsInputEntity: TFloatField;
    qryReciptItemsOutputEntity: TFloatField;
    qryReciptItemsTotalInputPrice: TBCDField;
    btnSearch_: TBitBtn;
    btnSort: TBitBtn;
    btnSendExel: TBitBtn;
    actSort: TAction;
    actSendExel: TAction;
    actShow: TAction;
    btnShow: TBitBtn;
    btnRoll: TBitBtn;
    actRoll: TAction;
    srcReciptsItems: TDataSource;
    qryReciptItems_CalField: TCurrencyField;
    qryReciptsAidDate: TStringField;
    qryReciptsParentReciptID: TIntegerField;
    btnFilter: TBitBtn;
    actFilter: TAction;
    qryReciptItemsStuffpublicPercent: TFloatField;
    qryReciptItemsmultiInput: TFloatField;
    qryReciptItemsmultiOutput: TFloatField;
    cmbReciptType: TComboBox;
    cmbReciptType2: TComboBox;
    Label4: TLabel;
    qryReciptsServerID: TIntegerField;
    qryReciptsYearID: TIntegerField;
    qryReciptItemsStuffCode: TLargeintField;
    qryReciptsAidNumber: TStringField;
    DBGrid1: TCedarDbgrid;
    DBGrid2: TCedarDbgrid;
    procedure actSearch_Execute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actSendExelExecute(Sender: TObject);
    procedure qryReciptsAfterScroll(DataSet: TDataSet);
    procedure actRollExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure qryReciptItemsCalcFields(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure qryReciptsReciptStateGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure cmbAllotmentChange(Sender: TObject);
    procedure edtPriceExit(Sender: TObject);
    procedure actShowExecute(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cmbReciptTypeChange(Sender: TObject);
    procedure cmbReciptTypeEnter(Sender: TObject);
  private
    FormType: Integer;
    function GetCalFldNamePrice(Kind: Byte): String;
    function AddRecipt: Boolean;
    procedure UpdateList;
    Procedure InitCombo;
    procedure setCmb(cmb: TComboBox);

    { Private declarations }
  public
    { Public declarations }
  end;

var
  RentReciptsF: TRentReciptsF;

implementation

uses DM, search2, sort, sort2, GlobalPro, Math, Recipts, FormFunctions,
  mmessage, filter_ADO, FilterClass_ADO, FaraConsts;

{$R *.dfm}

procedure TRentReciptsF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryReciptItems);
end;

procedure TRentReciptsF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryReciptItems);
end;

procedure TRentReciptsF.actSendExelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TRentReciptsF.qryReciptsAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qryReciptItems do
  begin
    Close;
    Parameters.ParamByName('ReciptID').Value := DataSet.fieldbyname('ReciptID')
      .AsInteger;
    Parameters.ParamByName('YearID').Value := DataSet.fieldbyname('YearID')
      .AsInteger;
    Parameters.ParamByName('ServerID').Value := DataSet.fieldbyname('ServerID')
      .AsInteger;
    Open;
  end;
end;

procedure TRentReciptsF.actRollExecute(Sender: TObject);
begin
  inherited;
  // if SumGrid1.GetValueField(GetCalFldNamePrice(cmbAllotment.ItemIndex)) = 0 then
  if DBGrid1.GetValueFieldSum(GetCalFldNamePrice(cmbAllotment.ItemIndex)) = 0
  then
  begin
    Warn(' ”ÂÌ„ »— «”«” ” Ê‰Ì ﬂÂ Ã„⁄ ¬‰ ’›— «”  „Ã«“ ‰„Ì»«‘œ.');
    Exit;
  end;
  qryReciptItems.Requery;
  if AddRecipt then
    Warn(Format(' ›—„ »Â  «—ÌŒ ù%s Ê ‘„«—Â ›—„ %s À»  ‘œ.',
      [qryRecipts.fieldbyname('ReciptDate').AsString,
      qryRecipts.fieldbyname('ReciptNumber').AsString]), mtInformation)
  else
    Warn('«‘ﬂ«· œ— À» ');
end;

procedure TRentReciptsF.FormCreate(Sender: TObject);
begin
  inherited;
  InitCombo;
  cmbAllotment.Items.Text := StringReplace(cmbAllotment.Items.Text, '„ﬁœ«—',
    opt.EntityCaption, [rfReplaceAll]);
  cmbAllotment.Items.Text := StringReplace(cmbAllotment.Items.Text, 'Ê“‰',
    opt.WeightCaption, [rfReplaceAll]);
  setCmb(cmbAllotment);
  setCmb(cmbReciptType);
  setCmb(cmbReciptType2);
end;

procedure TRentReciptsF.setCmb;
var
  n: Integer;
begin
  n := StrToInt(ReadConfig(APPID, cmb.Name, '0'));
  if n = -1 then
    n := 0;
  cmb.ItemIndex := n;
end;

procedure TRentReciptsF.qryReciptItemsCalcFields(DataSet: TDataSet);
var
  S: String;
  n: Currency;
  SumFld: Currency;
begin
  S := GetCalFldNamePrice(cmbAllotment.ItemIndex);
  SumFld := DBGrid1.GetValueFieldSum(S);
  if cmbAllotment.ItemIndex in [3, 4] then
  begin
    n := qryReciptItems.fieldbyname(S).AsCurrency * qryReciptItems.fieldbyname
      ('StuffpublicPercent').AsFloat;
    SumFld := IfThen(cmbAllotment.ItemIndex = 3,
      DBGrid1.GetValueFieldSum('multiInput'),
      DBGrid1.GetValueFieldSum('multiOutput'))
  end
  else
    n := qryReciptItems.fieldbyname(S).AsCurrency;

  if (S = EmptyStr) or (SumFld = 0) then
    Exit;
  DataSet.fieldbyname('_CalPrice').AsCurrency :=
    (StrToCurr(Trim(edtPrice.Text)) / SumFld) * n;
end;

function TRentReciptsF.GetCalFldNamePrice(Kind: Byte): String;
begin
  case Kind of
    0:
      Result := 'TotalInputPrice';
    1, 3:
      Result := 'InputEntity';
    2, 4:
      Result := 'OutputEntity';
  end;
end;

procedure TRentReciptsF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveConfig(APPID, 'cmbAllotment', IntToStr(cmbAllotment.ItemIndex));
  SaveConfig(APPID, 'cmbReciptType', IntToStr(cmbReciptType.ItemIndex));
  SaveConfig(APPID, 'cmbReciptType2', IntToStr(cmbReciptType2.ItemIndex));
end;

procedure TRentReciptsF.qryReciptsReciptStateGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  Text := GetReciptState(Sender.AsInteger)
end;

procedure TRentReciptsF.cmbAllotmentChange(Sender: TObject);
begin
  inherited;
  qryReciptItems.Requery;
end;

procedure TRentReciptsF.edtPriceExit(Sender: TObject);
begin
  inherited;
  qryReciptItems.Requery;
end;

procedure TRentReciptsF.actShowExecute(Sender: TObject);
begin
  inherited;
  ShowReciptTypes(qryRecipts, Self, qryReciptItems.fieldbyname('StuffCode')
    .AsLargeInt);
end;

procedure TRentReciptsF.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  actShow.Execute;
end;

function TRentReciptsF.AddRecipt: Boolean;
var
  RID: Integer;
  C: Currency;
  Price: Currency;
  qry: TADOQuery;
begin
  Result := True;
  Price := StrToCurr(Trim(edtPrice.Text));
  qry := TADOQuery.Create(Self);
  with qry do
    try
      Connection := DMf.adcBSell;
      try
        SQL.Text := 'Select * from Recipts Where ReciptID=0';
        Open;
        Append;
        RID := GetanewID(qry, Self.Name, 'Recipts', 'ReciptID', qryRecipts, 1);
        fieldbyname('ParentReciptID').AsInteger :=
          qryRecipts.fieldbyname('ReciptID').AsInteger;
        fieldbyname('ReciptNumber').AsInteger :=
          qryRecipts.fieldbyname('ReciptNumber').AsInteger;
        fieldbyname('PersonID1').AsInteger :=
          qryRecipts.fieldbyname('PersonID1').AsInteger;
        fieldbyname('ReciptDate').AsString :=
          qryRecipts.fieldbyname('ReciptDate').AsString;
        fieldbyname('AidNumber').AsString :=
          qryRecipts.fieldbyname('AidNumber').AsString;
        fieldbyname('StoreID').AsInteger := qryRecipts.fieldbyname('StoreID')
          .AsInteger;
        fieldbyname('AidDate').AsString :=
          qryRecipts.fieldbyname('AidDate').AsString;
        fieldbyname('OperatorID').AsInteger := User.id;;
        fieldbyname('ModifyDate').AsDateTime := Now;
        fieldbyname('ReciptType').AsInteger :=
          Integer(cmbReciptType2.Items.Objects[cmbReciptType2.ItemIndex]);;
        Post;
        Close;
        SQL.Text := 'Select * from ReciptItems  Where ReciptItemID = 0';
        Open;
        qryReciptItems.DisableControls;
        qryReciptItems.First;
        BigMessageProgBar('œ— Õ«· À» ', qryReciptItems.RecordCount);
        C := 0;
        while not qryReciptItems.Eof do
        begin
          Append;
          fieldbyname('ReciptID').AsInteger := RID;
          fieldbyname('ReciptItemID').AsInteger :=
            GetanewID(qry, Self.Name, 'ReciptItems ', 'ReciptItemID',
            qryRecipts, 1);
          fieldbyname('TotalInputPrice').AsCurrency :=
            RoundTo(qryReciptItems.fieldbyname('_CalPrice').AsCurrency, 0);
          fieldbyname('StuffCode').AsLargeInt :=
            qryReciptItems.fieldbyname('StuffCode').AsLargeInt;
          Post;
          GoProgressBar(fieldbyname('StuffCode').AsString);
          C := fieldbyname('TotalInputPrice').AsCurrency + C;
          qryReciptItems.Next;
        end;
        if (C <> Price) then
        begin
          Edit;
          fieldbyname('TotalInputPrice').AsFloat :=
            RoundTo(fieldbyname('TotalInputPrice').AsFloat + Price - C, 0);
          Post;
        end;
        qryReciptItems.EnableControls;
      except
        Result := False;
      end;
    finally
      CloseMessage;
      Free;
      FreeReservedCodes(DMf.adcBSell, '', '', Self.Name);
    end;

end;

procedure TRentReciptsF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
    try
      AddItem(DMf.adcBSell, 'PersonID', ' ‰«„ „‘ —Ì ', 'ﬂœ „‘ —Ì', ftInteger,
        dvMinMax, '', '', ciLookup, 'SELECT CustID,CustName FROM Customers ',
        'SELECT Min(CustID),Max(CustID) From Customers ');
      AddItem(DMf.adcBSell, 'ReciptDate', '  «—ÌŒ ', ' «—ÌŒ', ftDate, dvMinMax,
        '', '', ciSimple, '', 'Select  ''' + APPBank.StartYear +
        ''',Max(ReciptDate) from Recipts ');
      AddItem(DMf.adcBSell, 'ReciptNumber', '', '‘„«—Â', ftInteger, dvMinMax,
        '', '', ciSimple, '',
        'Select Min(ReciptNumber),max(ReciptNumber) from Recipts');
      AddItem(DMf.adcBSell, 'storeId', '‰«„ «‰»«— ', 'ﬂœ «‰»«—', ftInteger,
        dvMinMax, '', '', ciLookup, LookupSQL4Store, MinMaxSQL4Store);
      if ShowModal = mrOk then
      begin
        GetFilterString;
        UpdateList;
      end; // if
    finally
      Free;
    end; // try
end;

procedure TRentReciptsF.UpdateList;
begin
  with qryRecipts Do
  begin
    Close;
    Parameters.ParamByName('StoreFrom').Value :=
      GetcFrom(myParams.ParamValues['storeId'], ftInteger);
    Parameters.ParamByName('StoreTo').Value :=
      GetcTo(myParams.ParamValues['storeId'], ftInteger);

    Parameters.ParamByName('DateFrom').Value :=
      GetcFrom(myParams.ParamValues['ReciptDate'], ftDate);
    Parameters.ParamByName('DateTo').Value :=
      GetcTo(myParams.ParamValues['ReciptDate'], ftDate);

    Parameters.ParamByName('noFrom').Value :=
      GetcFrom(myParams.ParamValues['ReciptNumber'], ftInteger);
    Parameters.ParamByName('noto').Value :=
      GetcTo(myParams.ParamValues['ReciptNumber'], ftInteger);
    Parameters.ParamByName('Custfrom').Value :=
      GetcFrom(myParams.ParamValues['PersonID'], ftInteger);
    Parameters.ParamByName('CustTo').Value :=
      GetcTo(myParams.ParamValues['PersonID'], ftInteger);
    Parameters.ParamByName('YearIDFrom').Value := opt.DefaultYear;
    Parameters.ParamByName('YearIDTo').Value := APPBank.Year;
    Parameters.ParamByName('ServerID').Value := opt.ServerID;
  end; // with
  cmbReciptType.OnChange(cmbReciptType);
end;

procedure TRentReciptsF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  actFilter.Execute;
  if myParams.FindParam('ReciptNumber') = nil then
    Close;
end;

procedure TRentReciptsF.InitCombo;
begin
  cmbReciptType.Clear;
  cmbReciptType2.Clear;
  with TADOQuery.Create(Self) do
    try
      Connection := DMf.adcBSell;
      SQL.Text :=
        'SELECT ReciptType, ReciptCaption FROM  ReciptTypes WHERE  (EffectType < 3)';
      Open;
      while not Eof do
      begin
        cmbReciptType.AddItem(Fields[1].AsString, TObject(Fields[0].AsInteger));
        cmbReciptType2.AddItem(Fields[1].AsString,
          TObject(Fields[0].AsInteger));
        Next;
      end;
    finally
      Free;
    end;

end;

procedure TRentReciptsF.cmbReciptTypeChange(Sender: TObject);
begin
  inherited;
  with qryRecipts do
  begin
    Close;
    Parameters.ParamByName('Type').Value :=
      Integer(cmbReciptType.Items.Objects[cmbReciptType.ItemIndex]);
    Open;
  end
end;

procedure TRentReciptsF.cmbReciptTypeEnter(Sender: TObject);
begin
  inherited;
  (Sender as TComboBox).DroppedDown := True
end;

end.
