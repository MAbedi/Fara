unit RequestManagement; // Modified by Mehdi.kahdooei 4/19/2015

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, DB, ADODB, Grids, Vcl.DBGrids, ImgList, DBActns, ActnList,
  StdCtrls, ExtCtrls, Buttons, filter_ADO, DM, FilterClass_ADO, GlobalPro,
  FormFunctions, search2, sort2, ppProd, ppClass, ppReport, ppComm, ppRelatv,
  ppDB, ppDBPipe, ppParameter, ReciptsFunctions, FaraConsts, ComCtrls, MMESSAGE,
  Filter_ADO_Const, ppDesignLayer, System.ImageList, System.Actions;

type
  TRequestManagementF = class(Ttemplate2MDIF)
    btnSort: TBitBtn;
    btnSearch_: TBitBtn;
    btnSendExcel: TBitBtn;
    btnPrint: TBitBtn;
    DBGrid1: TDBGrid;
    actPrint: TAction;
    actFilter: TAction;
    actSort: TAction;
    actSendExcel: TAction;
    actSave: TAction;
    qryManage: TADOQuery;
    srcManage: TDataSource;
    qryLookUp: TADOQuery;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    chkCheck: TCheckBox;
    actCheck: TAction;
    pb1: TProgressBar;
    btnSave: TBitBtn;
    btnFilter: TBitBtn;
    qryManageYearID: TIntegerField;
    qryManageReciptItemID: TIntegerField;
    qryManageReciptNumber: TIntegerField;
    strngfldManageReciptDate: TStringField;
    qryManagePersonID: TIntegerField;
    strngfldManageCustName: TStringField;
    qryManageStuffCode: TLargeintField;
    strngfldManagec_StuffName: TStringField;
    strngfldManageUnitName: TStringField;
    qryManageEntity1: TFloatField;
    qryManageEntityTahvile: TFloatField;
    qryManageRemainEntity: TFloatField;
    qryManageInventoryEntity: TFloatField;
    qryManageAvailableTahvileEntity: TFloatField;
    qryManageAvailablePurchaseEntity: TFloatField;
    strngfldManageReciptCaption: TStringField;
    qryManageStoreID: TSmallintField;
    strngfldManagec_StoreName: TStringField;
    strngfldManageItemNote: TStringField;
    procedure actFilterExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure UpdateFilter;
    procedure FormShow(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSendExcelExecute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure actCheckExecute(Sender: TObject);
    procedure actSaveExecute(Sender: TObject);
    procedure qryManageAfterOpen(DataSet: TDataSet);

  private
    mystore1: TStore;
    formtype: integer;
    qryManageSQLtxt: string;
    custIDKindActive: integer;
    procedure SaveForm(formtype: integer);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RequestManagementF: TRequestManagementF;

implementation

{$R *.dfm}

procedure TRequestManagementF.actCheckExecute(Sender: TObject);
begin
  inherited;
  if chkCheck.Checked then
    qryManage.Sort := 'StoreID ASC,PersonID ASC'
end;

procedure TRequestManagementF.actFilterExecute(Sender: TObject);
var
  fi: TfilterF;
begin
  inherited;
  fi := TfilterF.Create2(Self, myParams);
  with fi do
  begin
    try
      AddItem(DMf.adcBSell, 'custIDKindActive', 'سطح', 'شماره سطح', ftUnknown,
        dvDefaults, '0', '', ciRadioGroup,
        'SELECT ID,Person1Caption FROM dbo.GetPersonCaption( ''' +
        IntToStr(formtype) + ''')');

      AddItem(DMf.adcBSell, 'PersonID', ' نام مشتري ', 'كد مشتري', ftInteger,
        dvMinMax, '', '', ciLookup, 'SELECT CustID,CustName FROM Customers ',
        'SELECT Min(CustID),Max(CustID) From Customers ');

      AddItem(DMf.adcBSell, 'ReciptNumber', '', 'شماره', ftInteger, dvMinMax,
        '', '', ciSimple, '',
        'Select Min(ReciptNumber),max(ReciptNumber) from Recipts');

      AddItem(DMf.adcBSell, 'ReciptDate', ' تاريخ ', 'تاريخ', ftDate, dvMinMax,
        '', '', ciSimple, '', 'Select  ''' + APPBank.StartYear +
        ''',Max(ReciptDate) from Recipts ');

      AddItem(DMf.adcBSell, 'store', 'انبار', 'كد انبار', ftInteger, dvMinMax,
        '', '', ciLookup, LookupSQL4Store, MinMaxSQL4Store);

      AddItemFilter(GetFilter, TFilterStuffCode);
      // AddItem(DMf.adcBSell, 'StuffCode', 'نام كالا', 'كد كالا', ftLargeint,
      // dvMinMax, '', '', ciLookup,
      // 'SELECT c_StuffCode, c_StuffName from StuffCoding  where c_StuffCode<>0 ',
      // 'SELECT Min(c_StuffCode),max(c_StuffCode) from StuffCoding where c_StuffCode<>0');

      if ShowModal = mrOk then
      begin
        GetFilterString;
        UpdateFilter;
      end;
    finally
      Free;
      pb1.Position := 0;
    end; // try
  end; // with
end;

procedure TRequestManagementF.actPrintExecute(Sender: TObject);
begin
  inherited;
  InitReportFile(ppReport1, 'RequestManagement', True, False, 'فرم',
    False, pkPrint);
end;

procedure TRequestManagementF.actSaveExecute(Sender: TObject);
begin
  try
    SaveForm(22); // ثبت فرم درخواست خرید .
    SaveForm(11); // ثبت فرم حواله انبار .

  finally
    BigMessage('انجام شد', 1);
    qryManage.Close;
    qryManage.Open;
    pb1.Position := pb1.Min;
  end;

end;

procedure TRequestManagementF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2f.showsearch(qryManage);
end;

procedure TRequestManagementF.actSendExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TRequestManagementF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryManage);
end;

procedure TRequestManagementF.FormCreate(Sender: TObject);
begin
  inherited;
  formtype := var_glb_gParam;
  qryManageSQLtxt := qryManage.SQL.Text;
end;

procedure TRequestManagementF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
end;

procedure TRequestManagementF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 8);
end;

procedure TRequestManagementF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  actFilter.Execute;
  if myParams.FindParam('ReciptNumber') = nil then
    Close;
end;

procedure TRequestManagementF.qryManageAfterOpen(DataSet: TDataSet);
begin
  inherited;
  btnSave.Enabled := qryManage.RecordCount > 0;
end;

procedure TRequestManagementF.UpdateFilter;
begin
  with qryManage do
  begin
    Active := False;
    SQL.Text := qryManageSQLtxt;
    custIDKindActive := GetcFrom(myParams.ParamValues['custIDKindActive'],
      ftInteger);
    case custIDKindActive of
      1:
        SQL.Text := StringReplace(SQL.Text, 'Recipts.PersonID1',
          'Recipts.PersonID2', [rfReplaceAll]);
      2:
        SQL.Text := StringReplace(SQL.Text, 'Recipts.PersonID1',
          'Recipts.PersonID3', [rfReplaceAll]);
      3:
        SQL.Text := StringReplace(SQL.Text, 'Recipts.PersonID1',
          'ReciptItems.PersonID1', [rfReplaceAll]);
    else
      SQL.Text := StringReplace(SQL.Text, 'Recipts.PersonID1',
        'Recipts.PersonID1', [rfReplaceAll]);
    end;
    With DMf.qryTmpTmp do
    begin
      Active := False;
      SQL.Text := 'SELECT Person1Caption FROM dbo.GetPersonCaption(:Type)';
      SQL.Add('WHERE (ID = :ID)');
      Parameters.ParamByName('Type').Value := formtype;
      Parameters.ParamByName('ID').Value := custIDKindActive;
      Active := True;
      qryManagePersonID.DisplayLabel := 'کد' +
        FieldByName('Person1Caption').AsString;
      qryManage.FieldByName('CustName').DisplayLabel := 'عنوان ' +
        FieldByName('Person1Caption').AsString;
      Active := False;
    end;
    Parameters.ParamByName('ReciptType').Value := formtype;
    Parameters.ParamByName('RcpNumberFrom').Value :=
      GetcFrom(myParams.ParamValues['ReciptNumber'], ftInteger);
    Parameters.ParamByName('RcpNumberTo').Value :=
      GetcTo(myParams.ParamValues['ReciptNumber'], ftInteger);
    Parameters.ParamByName('DateFrom').Value :=
      GetcFrom(myParams.ParamValues['ReciptDate'], ftDate);
    Parameters.ParamByName('DateTo').Value :=
      GetcTo(myParams.ParamValues['ReciptDate'], ftDate);
    Parameters.ParamByName('StoreIDFrom').Value :=
      GetcFrom(myParams.ParamValues['Store'], ftInteger);
    Parameters.ParamByName('StoreIDTo').Value :=
      GetcTo(myParams.ParamValues['Store'], ftInteger);
    Parameters.ParamByName('PersonFrom').Value :=
      GetcFrom(myParams.ParamValues['PersonID'], ftInteger);
    Parameters.ParamByName('PersonTo').Value :=
      GetcTo(myParams.ParamValues['PersonID'], ftInteger);
    Parameters.ParamByName('StuffCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['StuffCode'], ftLargeint);
    Parameters.ParamByName('StuffCodeTo').Value :=
      GetcTo(myParams.ParamValues['StuffCode'], ftLargeint);
    Parameters.ParamByName('YearIDFrom').Value := APPBank.Year - 1;
    Parameters.ParamByName('YearIDTo').Value := APPBank.Year + 1;
    Active := True;
  end;
end;

procedure TRequestManagementF.SaveForm(formtype: integer);
var
  qryRecipts, qryReciptItems, qryinit: TADOQuery;
  ReciptID, STID, PSID: integer;
  FormOutput, i: Boolean;
  FieldNameEntity, FieldNameWeight: string;
begin
  inherited;

  ReciptID := 0;
  qryRecipts := TADOQuery.Create(nil);
  qryReciptItems := TADOQuery.Create(nil);
  qryinit := TADOQuery.Create(nil);

  qryinit.Connection := DMf.adcBSell;
  qryinit.SQL.Text := 'SELECT * FROM ReciptTypes WHERE ReciptType = ' +
    IntToStr(22);
  qryinit.Active := True;
  FormOutput := qryinit.FieldByName('EffectType').AsInteger in [3, 4, 5, 7, 8];
  if FormOutput then
  begin
    FieldNameEntity := 'OutputEntity';
    FieldNameWeight := 'OutputWeight';
  end
  else
  begin
    FieldNameEntity := 'InputEntity';
    FieldNameWeight := 'InputWeight';
  end;

  qryRecipts.Connection := DMf.adcBSell;
  qryRecipts.SQL.Text := 'SELECT top 1 * FROM Recipts';
  qryRecipts.Active := True;

  qryReciptItems.Connection := DMf.adcBSell;
  qryReciptItems.SQL.Text := 'SELECT top 1 * FROM ReciptItems';
  qryReciptItems.Active := True;

  qryManage.First;
  STID := -621;
  PSID := -621;
  pb1.Min := 0;
  pb1.Max := qryManage.RecordCount;
  pb1.Position := 0;
  pb1.Step := 1;

  try
    while not qryManage.Eof do
    begin
      if (formtype = 22) and
        (qryManageAvailablePurchaseEntity.AsInteger = 0) then
      begin
        qryManage.Next;
        Continue;
      end;
      if (formtype = 11) and
        (qryManageAvailableTahvileEntity.AsInteger = 0) then
      begin
        qryManage.Next;
        Continue;
      end;
      i := True;
      mystore1.code := qryManageStoreID.AsInteger;
      if chkCheck.Checked then
        if (STID = qryManageStoreID.AsInteger) and
          (PSID = qryManagePersonID.AsInteger) then
          i := False;
      if STID = qryManageStoreID.AsInteger then
        i := False;
      if i then
      begin
        STID := qryManageStoreID.AsInteger;
        PSID := qryManagePersonID.AsInteger;
        qryRecipts.Insert;
        GetReciptID(qryRecipts, qryReciptItems, qryinit, 0);
        qryRecipts.FieldByName('StoreID').AsInteger :=
          qryManageStoreID.AsInteger;
        qryRecipts.FieldByName('ReciptType').AsInteger := formtype;
        qryRecipts.FieldByName('FirstUser').AsString := User.name;
        qryRecipts.FieldByName('ReciptDate').AsString := var_glb_CurrentDate;
        GetReciptNumber(qryinit, qryRecipts, 0, mystore1);
        qryRecipts.FieldByName('OperatorID').AsInteger := User.id;
        qryRecipts.FieldByName('InsertDate').AsDateTime := Now;
        qryRecipts.FieldByName('ModifyDate').AsDateTime := Now;
        ReciptID := qryRecipts.FieldByName('ReciptID').AsInteger;
        if custIDKindActive = 0 then
          qryRecipts.FieldByName('PersonID1').AsInteger :=
            qryManagePersonID.AsInteger
        else
          qryRecipts.FieldByName('PersonID1').AsInteger := 0;
        if custIDKindActive = 1 then
          qryRecipts.FieldByName('PersonID2').AsInteger :=
            qryManagePersonID.AsInteger
        else
          qryRecipts.FieldByName('PersonID2').AsInteger := 0;
        if custIDKindActive = 2 then
          qryRecipts.FieldByName('PersonID3').AsInteger :=
            qryManagePersonID.AsInteger
        else
          qryRecipts.FieldByName('PersonID3').AsInteger := 0;
        qryRecipts.Post;
      end;
      qryReciptItems.Insert;
      GetANewID(qryReciptItems, IntToStr(formtype), 'ReciptItems',
        'ReciptItemID', nil, qryinit.FieldByName('StepCorrelate').AsInteger);
      qryReciptItems.FieldByName('ReciptID').AsInteger := ReciptID;
      qryReciptItems.FieldByName('preReciptItemID').AsInteger :=
        qryManageReciptItemID.AsInteger;
      qryReciptItems.FieldByName('FirstUser').AsString := User.name;
      qryReciptItems.FieldByName('StuffCode').AsLargeInt :=
        qryManageStuffCode.AsLargeInt;
      qryReciptItems.FieldByName('ItemNote').AsString :=
        qryManage.FieldByName('ItemNote').AsString;
      if formtype = 22 then
        qryReciptItems.FieldByName(FieldNameEntity).AsFloat :=
          qryManageAvailablePurchaseEntity.AsFloat;
      if formtype = 11 then
        qryReciptItems.FieldByName('OutputEntity').AsFloat :=
          qryManageAvailableTahvileEntity.AsFloat;
      if custIDKindActive = 3 then
        qryReciptItems.FieldByName('PersonID1').AsInteger :=
          qryManagePersonID.AsInteger
      else
        qryReciptItems.FieldByName('PersonID1').AsInteger := 0;
      qryReciptItems.Post;
      FreeReservedCodes(DMf.adcBSell, 'recipts', '',
        qryRecipts.FieldByName('ReciptType').AsString);
      FreeReservedCodes(DMf.adcBSell, 'reciptitems', '', IntToStr(formtype));
      if qryinit.FieldByName('RestartFormNumberOnStore').AsInteger
        in [0, 1, 4] then
      begin
        FreeReservedCodes(DMf.adcBSell, 'recipts', '',
          qryRecipts.FieldByName('ReciptType').AsString + '_' +
          qryRecipts.FieldByName('StoreID').AsString);
      end;

      pb1.StepIt;
      qryManage.Next;
    end;
  finally
    qryRecipts.Free;
    qryReciptItems.Free;
    qryinit.Free;

  end;

end;

end.
