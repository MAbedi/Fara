{ -----------------------------------------------------------------------------
  Unit Name: RecallBranchPay
  Author:    M_A_H_M_O_O_D
  Purpose:
  History:
  ----------------------------------------------------------------------------- }
unit RecallBranchPay;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DBCtrls, Grids, Vcl.DBGrids, StrUtils, Math,
  ppDB, ppDBPipe, ppComm, ppRelatv, ppProd, ppClass, ppReport, ppPrnabl,
  ppCtrls, ppCache, ppBands, ppVar, ppStrtch, ppMemo, ppModule,
  ppTypes, ppSubRpt, Menus, DB, ADODB, Mask, ComCtrls, Provider, DBClient,
  FrmServerName, System.ImageList, System.Actions, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, CedarDbGrid;

type

  TRecallBranchPayF = class(Ttemplate2MDIF)
    SrcTypes: TDataSource;
    qryTypes: TADOQuery;
    qryTypesItems: TADOQuery;
    SrcTypesItems: TDataSource;
    DBGrid1: TDBGrid;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn7: TBitBtn;
    StatusBar1: TStatusBar;
    actFilter: TAction;
    actSendExel: TAction;
    actSort: TAction;
    BitBtn8: TBitBtn;
    actSelectAll: TAction;
    actSlelectInverse: TAction;
    actMove: TAction;
    qryMove: TADOQuery;
    qryItems: TADOQuery;
    qryPersonelDecExt: TADOQuery;
    adcSrc: TADOConnection;
    qrySrc: TADOQuery;
    actMoveBaseInfo: TAction;
    BitBtn1: TBitBtn;
    pnlLblL: TPanel;
    Panel1: TPanel;
    lslTableName: TListBox;
    DBGrid3: TDBGrid;
    qryShow: TADOQuery;
    srcShow: TDataSource;
    LblMoveBaseInfo: TLabel;
    LblLimit: TLabel;
    qry4Insert: TADOQuery;
    frServerName1: TfrServerName;
    qryTypesFormInfoID: TIntegerField;
    qryTypesCaption: TStringField;
    qryTypesAidInfo1Caption: TStringField;
    qryTypesAidInfo2Caption: TStringField;
    DBGrid2: TCedarDbgrid;
    BitBtn3: TBitBtn;
    Splitter1: TSplitter;
    Splitter2: TSplitter;
    chkDecExtID: TCheckBox;
    procedure actFilterExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actSendExelExecute(Sender: TObject);
    procedure qryTypesAfterScroll(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure DBGrid2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure actSelectAllExecute(Sender: TObject);
    procedure actSlelectInverseExecute(Sender: TObject);
    procedure actMoveExecute(Sender: TObject);
    procedure actMoveBaseInfoExecute(Sender: TObject);
    procedure lslTableNameClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure frServerName1SpeedButton1Click(Sender: TObject);
    procedure frServerName1cmbBankNameChange(Sender: TObject);
    procedure frServerName1adcFrServerBeforeConnect(Sender: TObject);
    procedure qryTypesItemsAfterOpen(DataSet: TDataSet);
    procedure qryTypesAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
    // TotalCount,SrcServerID:Integer;
    procedure UpdateFilter;
    procedure ToggleCheck;
    procedure InsertPersonelDecExt;

  public
    { Public declarations }
  end;

var
  RecallBranchPayF: TRecallBranchPayF;

implementation

uses filter_ADO, FilterClass_ADO, GlobalPro, DM, searchCode_ADO, TreeChart,
  DBGrid2Print, mmessage, SalaryFunctions, dmgConst, FaraConsts, Filter_ADO_Const,
  search2, sort2;

{$R *.dfm}

procedure TRecallBranchPayF.UpdateFilter;
begin
  with qryTypesItems do
  begin
    Active := False;
  end; // with
  with qryTypes do
  begin
    Active := False;
    SQL.Text := 'SELECT DISTINCT FormInfoID, Caption';
    SQL.Add(', AidInfo1Caption, AidInfo2Caption');
    SQL.Add('From(');
    SQL.Add('SELECT DISTINCT F.FormInfoID, T.FormCaption_L1 + ''-'' + F.InfoName_L1 AS Caption');
    SQL.Add(', T.AidInfo1Caption, T.AidInfo2Caption');
    SQL.Add('FROM Pay.PersonelDecExt P INNER JOIN');
    SQL.Add('FormsInfo F ON P.FormInfoID = F.FormInfoID INNER JOIN');
    SQL.Add('FormTypes T ON F.FormType = T.FormType');
    SQL.Add('union all');
    SQL.Add('SELECT DISTINCT F.FormInfoID, T.FormCaption_L1 + ''-'' + F.InfoName_L1 AS Caption');
    SQL.Add(', T.AidInfo1Caption, T.AidInfo2Caption');
    SQL.Add('FROM :Salary.Pay.PersonelDecExt P INNER JOIN');
    SQL.Add(':Salary.Pay.FormsInfo F ON P.FormInfoID = F.FormInfoID INNER JOIN');
    SQL.Add(':Salary.Pay.FormTypes T ON F.FormType = T.FormType');
    SQL.Add(')aaaa');

    SQL.Text := StringReplace(SQL.Text, ':Salary',
      frServerName1.sitem.ServerName + '.' + frServerName1.sitem.BankName,
      [rfReplaceAll]);

    Active := True;

  end; // with
end;

procedure TRecallBranchPayF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      AddItem(DMf.adcSalary, 'FirstMounth', 'از ماه', 'ماه ', ftInteger,
        dvMinMax, '', '', ciSimple, '', 'select 0,12');
      // AddItem(DMf.adcSalary, 'Date', ' تاريخ ', 'تاريخ', ftDate, dvMinMax, '',
      // '', ciSimple, '', ' SELECT ''0000/00/00'',''9999/99/99''');
      if ShowModal = mrOk then
      begin
        GetFilterString;
        UpdateFilter;
      end; // if
    finally
      Free;
    end; // try
  end; // with
end;

procedure TRecallBranchPayF.frServerName1adcFrServerBeforeConnect(Sender: TObject);
begin
  inherited;
  frServerName1.adcFrServerBeforeConnect(Sender);

end;

procedure TRecallBranchPayF.frServerName1cmbBankNameChange(Sender: TObject);
begin
  inherited;
  frServerName1.sitem := TSearchItemBank(frServerName1.cmbBankName.Items.Objects
    [frServerName1.cmbBankName.ItemIndex]);
  frServerName1.AssignBankName(adcSrc, frServerName1.sitem.BankName);
  adcSrc.Close;
  qryShow.Active := False;
  LblMoveBaseInfo.caption := 'اطلاعات پايه قابل انتقال از : ' +
    frServerName1.cmbBankName.Text;
  LblMoveBaseInfo.caption := LblMoveBaseInfo.caption;
  qryTypesItems.Close;
  if not actMove.Enabled then
    Exit;
  myParams.Clear;
  actFilter.Execute;
  if myParams.FindParam('FirstMounth') = nil then
    frServerName1.cmbBankName.DroppedDown := True;
end;

procedure TRecallBranchPayF.frServerName1SpeedButton1Click(Sender: TObject);
begin
  inherited;
  frServerName1.SpeedButton1Click(Sender);
end;

procedure TRecallBranchPayF.FormDestroy(Sender: TObject);
begin
  inherited;
  // frServerName1.sitem.Free;
  CloseMessage;
  dmgConstF.Free
end;

procedure TRecallBranchPayF.actSendExelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid2);
end;

procedure TRecallBranchPayF.qryTypesAfterOpen(DataSet: TDataSet);
begin
  inherited;
  SaveConfig(APPID, 'frServerName1', Trim(frServerName1.cmbServerName.Text));
end;

procedure TRecallBranchPayF.qryTypesAfterScroll(DataSet: TDataSet);
begin
  inherited;
  DBGrid1.Hint := qryTypesCaption.AsString;
  with qryTypesItems do
  begin
    Active := False;
    SQL.Text := 'SELECT Ff.FitfulID AS _checked';
    SQL.Add(', Ei.PersonelName_L1, PE.*');
    SQL.Add('FROM :Salary.Pay.PersonelDecExt PE INNER JOIN');
    SQL.Add(':Salary.Pay.FormsInfo F ON PE.FormInfoID = F.FormInfoID INNER JOIN');
    SQL.Add(':Salary.Pay.FormTypes T ON F.FormType = T.FormType INNER JOIN');
    SQL.Add(':Salary.Pay.EmployeeInfo Ei ON PE.PersonelNo = Ei.PersonelNo CROSS JOIN');
    SQL.Add(':Salary.dbo.Fitful Ff');
    SQL.Add('LEFT OUTER JOIN PersonelDecExt ON PE.DecExtID = PersonelDecExt.DecExtID');

    SQL.Add('WHERE (F.FormInfoID = :FormInfoID )');
    if chkDecExtID.Checked then
      SQL.Add('AND (PersonelDecExt.DecExtID IS NULL)');
    SQL.Add('AND (PE.FirstMounth BETWEEN :FirstMounthFrom AND :FirstMounthTo )');

    SQL.Add('ORDER BY PE.PersonelNo');
  end;
  with qryTypesItems do
  begin
    Active := False;
    SQL.Text := StringReplace(SQL.Text, ':Salary',
      frServerName1.sitem.ServerName + '.' + frServerName1.sitem.BankName,
      [rfReplaceAll]);

    Parameters.ParamByName('FormInfoID').Value :=
      qryTypes.FieldByName('FormInfoID').AsInteger;

    Parameters.ParamByName('FirstMounthFrom').Value :=
      GetcFrom(myParams.ParamValues['FirstMounth'], ftInteger);
    Parameters.ParamByName('FirstMounthTo').Value :=
      GetcTo(myParams.ParamValues['FirstMounth'], ftInteger);

    Active := True;
  end;

end;

procedure TRecallBranchPayF.qryTypesItemsAfterOpen(DataSet: TDataSet);
var
  i: Integer;
begin
  inherited;
  with qryTypesItems do
  begin
    FieldByName('_checked').DisplayLabel := 'انتخاب';
    FieldByName('PersonelNo').DisplayLabel := 'ش.پرسنل';
    FieldByName('PersonelName_L1').DisplayLabel := 'پرسنل';
    FieldByName('EmployeeAmount').DisplayLabel := 'مبلغ';
    TBCDField(FieldByName('EmployeeAmount')).currency := True;
    FieldByName('FirstMounth').DisplayLabel := 'از ماه';
    FieldByName('EndMounth').DisplayLabel := 'تا ماه';
    FieldByName('Note_L1').DisplayLabel := 'توضیحات';
    FieldByName('AidNo1').DisplayLabel := 'شماره ' + qryTypes.FieldByName
      ('AidInfo1Caption').AsString;
    FieldByName('AidDate1').DisplayLabel := 'تاریخ ' +
      qryTypes.FieldByName('AidInfo1Caption').AsString;

    FieldByName('AidNo2').DisplayLabel := 'شماره ' + qryTypes.FieldByName
      ('AidInfo2Caption').AsString;
    FieldByName('AidDate2').DisplayLabel := 'تاریخ ' +
      qryTypes.FieldByName('AidInfo2Caption').AsString;

  end;
  DBGrid2.Columns[0].Checkboxes := True;

  for i := 0 to DBGrid2.Columns.Count - 1 do
    DBGrid2.Columns[i].Visible := qryTypesItems.FieldByName
      (DBGrid2.Columns[i].FieldName).DisplayLabel <> qryTypesItems.FieldByName
      (DBGrid2.Columns[i].FieldName).FieldName;

  DBGrid2.setSizeColDBGrid;
  DBGrid2.ColorDBGrid;
end;

procedure TRecallBranchPayF.FormCreate(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TdmgConstF, dmgConstF);
  dmgConstF.FillListBox(lslTableName);
  frServerName1.cmbServerName.Text := ReadConfig(APPID, 'frServerName1', '');
end;

procedure TRecallBranchPayF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryTypesItems);
end;

procedure TRecallBranchPayF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryTypesItems);
end;

procedure TRecallBranchPayF.DBGrid2DblClick(Sender: TObject);
begin
  inherited;
  ToggleCheck;
end;

procedure TRecallBranchPayF.DBGrid2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_SPACE then
  begin
    Key := 0;
    ToggleCheck;
  end; // if

end;

procedure TRecallBranchPayF.ToggleCheck;
begin
  with qryTypesItems do
  begin
    Edit;
    FieldByName('_Checked').AsInteger :=
      ifthen(FieldByName('_Checked').AsInteger = 1, 0, 1);
    Post;
  end; // with
end;

procedure TRecallBranchPayF.actSelectAllExecute(Sender: TObject);
begin
  inherited;
  with qryTypesItems do
  begin
    DisableControls;
    First;
    while not Eof do
    begin
      Edit;
      FieldByName('_checked').AsInteger := 1;
      Post;
      Next;
    end; // while
    First;
    EnableControls;
  end; // with
end;

procedure TRecallBranchPayF.actSlelectInverseExecute(Sender: TObject);
begin
  inherited;
  with qryTypesItems do
  begin
    DisableControls;
    First;
    while not Eof do
    begin
      Edit;
      FieldByName('_Checked').AsInteger :=
        ifthen(FieldByName('_Checked').AsInteger = 1, 0, 1);
      Post;
      Next;
    end; // while
    First;
    EnableControls;
  end; // with
end;

procedure TRecallBranchPayF.actMoveExecute(Sender: TObject);
begin
  inherited;
  DMf.adcSalary.BeginTrans;
  try
    BigMessageProgBar('در حال انتقال ' + qryTypesCaption.AsString + ' ها ',
      qryTypesItems.RecordCount);
    With qryTypesItems do
    begin
      DisableControls;
      First;
      while not Eof do
      begin
        if FieldByName('_checked').AsInteger = 1 then
        begin
          InsertPersonelDecExt
        end;

        Next;
      end; // while
      EnableControls;
    end;
    CloseMessage;
    actSelectAll.Execute;
    actSlelectInverse.Execute;
    DMf.adcSalary.CommitTrans;
  except
    on E: Exception do
    begin
      DMf.adcSalary.RollbackTrans;
      Warn('اشكال در عمليات' + E.Message + #13#10 + 'DecExtID' +
        qryTypesItems.FieldByName('DecExtID').AsString);
      CloseMessage;
      qryTypesItems.EnableControls;

    end;
  end; // try

end;

procedure TRecallBranchPayF.InsertPersonelDecExt;
var
  i, DecExtID: Integer; // ,DecExtID
  // ,MaxDecExtID,MaxReciptItemID:Integer;
begin
  qryPersonelDecExt.Active := True;
  qryItems.Active := True;
  With qrySrc do
  begin
    Active := False;
    SQL.Text := 'SELECT * FROM Pay.PersonelDecExt';
    SQL.Add('WHERE DecExtID = ' + qryTypesItems.FieldByName('DecExtID')
      .AsString);
    Active := True;
    while not Eof do
    begin
      qryPersonelDecExt.Insert;
      for i := 0 to FieldCount - 1 do
        if (qryPersonelDecExt.FindField(Fields[i].FieldName) <> nil) and
          (not qryPersonelDecExt.FindField(Fields[i].FieldName).ReadOnly) then
          qryPersonelDecExt.FieldByName(Fields[i].FieldName).AsString :=
            Fields[i].AsString;
      if not chkDecExtID.Checked then
      begin
        DecExtID := GetANewCode('','Pay.PersonelDecExt', 'decExtID');
        qryPersonelDecExt.FieldByName('DecExtID').AsInteger := DecExtID;
      end;

      qryPersonelDecExt.FieldByName('YearID').AsInteger := APPBank.Year;
      qryPersonelDecExt.Post;
      Next;
    end;
    GoProgressBar(qryTypesCaption.AsString + '<>' + qryTypesItems.FieldByName
      ('DecExtID').AsString);
    Active := False;
    SQL.Text := 'SELECT * FROM Pay.PersonelDecExtItem';
    SQL.Add('WHERE     DecExtID = ' + qryTypesItems.FieldByName('DecExtID')
      .AsString);

    Active := True;
    while not Eof do
    begin
      qryItems.Insert;
      for i := 0 to FieldCount - 1 do
        if (qryItems.FindField(Fields[i].FieldName) <> nil) and
          (not qryItems.FindField(Fields[i].FieldName).ReadOnly) then
          qryItems.FieldByName(Fields[i].FieldName).AsString :=
            Fields[i].AsString;

      if not chkDecExtID.Checked then
      begin
        qryItems.FieldByName('DecExtID').AsInteger := DecExtID;
      end;


      // qryItems.FieldByName('Years').AsInteger := APPBank.Year;

      qryItems.Post;
      Next;
    end; // while
  end;
  FreeReservedCodes(DMf.adcSalary);

end;

procedure TRecallBranchPayF.actMoveBaseInfoExecute(Sender: TObject);
var
  i: Integer;
  Table_FieldNames: String; // checkeds,
begin
  inherited;
  BigMessageProgBar('در حال انتقال اطلاعات پايه  ', High(MyArray));
  With qryMove do
  begin
    for i := 1 to High(MyArray) do
    begin
      Table_FieldNames := GetTableFieldNames(adcSrc, MyArray[i].SchemaName,
        MyArray[i].tableName);
      SQL.Text := 'INSERT INTO ' + APPBank.Name + '.' + MyArray[i].SchemaName +
        MyArray[i].tableName;
      SQL.Add('(' + Table_FieldNames + ')');
      SQL.Add('SELECT ' + Table_FieldNames + ' FROM ' +
        frServerName1.sitem.ServerName + '.' + frServerName1.sitem.BankName +
        '.' + MyArray[i].SchemaName + MyArray[i].tableName);
      SQL.Add('AS ' + MyArray[i].tableName);
      SQL.Add('WHERE (NOT (' + MyArray[i].tableKeyName + ' IN (SELECT ' +
        MyArray[i].tableKeyName);
      SQL.Add('FROM ' + APPBank.Name + '.' + MyArray[i].SchemaName +
        MyArray[i].tableName + ')))');
      GoProgressBar(IntToStr(ExecSQL));
    end;
    BigMessage('اطلاعات پايه منتقل شد.‏', 0);
  end;
  CloseMessage;
end;

procedure TRecallBranchPayF.lslTableNameClick(Sender: TObject);
var
  i: Integer;
  Table_FieldNames: String;
begin
  inherited;
  i := (Sender as TListBox).ItemIndex;
  if i = -1 then
    Exit;
  i := Integer((Sender as TListBox).Items.Objects[i]);
  With qryShow do
  begin
    Active := False;
    Table_FieldNames := MyArray[i].tableKeyName + ' as كد ' + ',' +
      MyArray[i].KeyFieldName + ' as عنوان ';
    SQL.Text := 'SELECT ' + Table_FieldNames + ' FROM ' +
      frServerName1.sitem.ServerName + '.' + frServerName1.sitem.BankName + '.'
      + MyArray[i].SchemaName + MyArray[i].tableName;
    SQL.Add('WHERE (NOT (' + MyArray[i].tableKeyName + ' IN (SELECT ' +
      MyArray[i].tableKeyName);
    SQL.Add('FROM ' + APPBank.Name + '.' + MyArray[i].SchemaName + MyArray[i]
      .tableName + ')))');
    Active := True;
  end;
end;

procedure TRecallBranchPayF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
var
  tc: Cardinal;
const
  t0: Cardinal = 0;
  __s: String = '';
begin
  inherited;
  tc := GetTickCount;
  if tc - t0 > 1500 then
    __s := Key
  else
    __s := __s + Key;
  t0 := tc;
end;

end.


