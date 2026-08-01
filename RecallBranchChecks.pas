{ -----------------------------------------------------------------------------
  Unit Name: RecallBranchChecks
  Author:    M_A_H_M_O_O_D
  Purpose:
  History:
  ----------------------------------------------------------------------------- }
unit RecallBranchChecks;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DBCtrls, ppDB, ppDBPipe, ppComm, ppRelatv, ppProd, ppClass, ppReport,
  ppPrnabl, ppCtrls, ppCache, ppBands, ppVar, ppStrtch, ppMemo, ppModule,
  ppSubRpt, DB, ADODB, ComCtrls, Provider, DBClient, FrmServerName,
  System.ImageList, System.Actions, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  CedarDbGrid;
type

  TRecallBranchChecksF = class(Ttemplate2MDIF)
    SrcTypes: TDataSource;
    qryTypes: TADOQuery;
    qryTypesItems: TADOQuery;
    SrcTypesItems: TDataSource;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn3: TBitBtn;
    StatusBar1: TStatusBar;
    actFilter: TAction;
    actSendExel: TAction;
    actSort: TAction;
    BitBtn8: TBitBtn;
    cliTypesItems: TClientDataSet;
    cliTypesItems_checked: TBooleanField;
    DataSetProvider1: TDataSetProvider;
    actSelectAll: TAction;
    actSlelectInverse: TAction;
    actMove: TAction;
    qryMove: TADOQuery;
    qryItems: TADOQuery;
    qryForms: TADOQuery;
    adcSrc: TADOConnection;
    qrySrc: TADOQuery;
    actMoveBaseInfo: TAction;
    BitBtn1: TBitBtn;
    pnlLblL: TPanel;
    qryTypesFormType: TWordField;
    qryTypesFormCaption: TStringField;
    qryTypesKind: TIntegerField;
    qryTypesCustomer1Label: TStringField;
    qryTypesCustomer2Lable: TStringField;
    cliTypesItemsCDSDesigner: TIntegerField;
    cliTypesItemsCDSDesigner2: TStringField;
    cliTypesItemsCDSDesigner3: TStringField;
    cliTypesItemsCDSDesigner4: TIntegerField;
    cliTypesItemsCDSDesigner5: TStringField;
    cliTypesItemsFormID: TIntegerField;
    srcShow: TDataSource;
    qryShow: TADOQuery;
    Panel1: TPanel;
    LblMoveBaseInfo: TLabel;
    lslTableName: TListBox;
    BitBtn9: TBitBtn;
    actShift: TAction;
    cliTypesItemsServerID: TIntegerField;
    cliTypesItemsYearID: TIntegerField;
    LblLimit: TLabel;
    frServerName1: TfrServerName;
    DBGrid2: TCedarDbgrid;
    DBGrid1: TCedarDbgrid;
    DBGrid3: TCedarDbgrid;
    qrySeverable: TADOQuery;
    procedure actFilterExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actSendExelExecute(Sender: TObject);
    procedure qryTypesAfterScroll(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure qryTypesItemsAfterOpen(DataSet: TDataSet);
    procedure DBGrid2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure actSelectAllExecute(Sender: TObject);
    procedure actSlelectInverseExecute(Sender: TObject);
    procedure actMoveExecute(Sender: TObject);
    procedure actMoveBaseInfoExecute(Sender: TObject);
    procedure lslTableNameClick(Sender: TObject);
    procedure actShiftExecute(Sender: TObject);
    procedure adcSrcAfterConnect(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure frServerName1cmbBankNameChange(Sender: TObject);
  private
    { Private declarations }
    qryTypesItemsSQLText: String;
    procedure UpdateFilter;
    // procedure ToggleCheck;
    // procedure assignCombo;
    procedure InsertRecipts;
    // procedure AssignBankName(adc: TADOConnection; dbName: String);

  public
    { Public declarations }
  end;

var
  RecallBranchChecksF: TRecallBranchChecksF;

implementation

uses filter_ADO, FilterClass_ADO, GlobalPro, DM,

  search1, sort, mmessage, FormFunctions, dmgConst, FaraConsts,
  Filter_ADO_Const;

{$R *.dfm}
// procedure TRecallBranchChecksF.assignCombo;
// var
// qry: TADOQuery;
// begin
// qry := TADOQuery.Create(DMf);
// with qry do
// begin
// try
// Connection := DMf.adcFaraSystem;
// SQL.Text := 'Select * from Sections';
// SQL.Add('where (sysid=:sysid)and(BankName<>''' + APPBank.Name + ''')');
// SQL.Add('order by createdate');
// Parameters.ParamByName('SYSID').Value := SYSID;
// Active := True;
// while not Eof do
// begin
// sitem := TSearchItem.Create;
// sitem.caption := Format('”«· „«·Ì %.2d - %s - %s',
// [FieldByName('MaliYear').AsInteger, FieldByName('CompanyName')
// .AsString, FieldByName('BankName').AsString]);
// sitem.BankName := FieldByName('BankName').AsString;
// ComboBox1.Items.AddObject(sitem.caption, sitem);
// Next;
// end; // while
// Active := False;
// finally
// qry.Free;
// end; // try
// end; // with
// if ComboBox1.Items.Count > 0 then
// ComboBox1.ItemIndex := 0;
// end;

procedure TRecallBranchChecksF.UpdateFilter;
begin
  cliTypesItems.Close;
  with qryTypesItems do
  begin
    Active := False;
    Parameters.ParamByName('DateFrom').Value :=
      GetcFrom(myParams.ParamValues['Date'], ftDate);
    Parameters.ParamByName('DateTo').Value :=
      GetcTo(myParams.ParamValues['Date'], ftDate);

    Parameters.ParamByName('SellsEmporiumFrom').Value :=
      GetcFrom(myParams.ParamValues['SellsEmporium'], ftInteger);
    Parameters.ParamByName('SellsEmporiumTo').Value :=
      GetcTo(myParams.ParamValues['SellsEmporium'], ftInteger);

    Parameters.ParamByName('SellsMethodFrom').Value :=
      GetcFrom(myParams.ParamValues['SellsMethod'], ftInteger);
    Parameters.ParamByName('SellsMethodTo').Value :=
      GetcTo(myParams.ParamValues['SellsMethod'], ftInteger);

    Parameters.ParamByName('NumberFrom').Value :=
      GetcFrom(myParams.ParamValues['number'], ftInteger);
    Parameters.ParamByName('NumberTo').Value :=
      GetcTo(myParams.ParamValues['number'], ftInteger);

    Parameters.ParamByName('PersonID1From').Value :=
      GetcFrom(myParams.ParamValues['PersonID1'], ftInteger);
    Parameters.ParamByName('PersonID1To').Value :=
      GetcTo(myParams.ParamValues['PersonID1'], ftInteger);

    Parameters.ParamByName('PersonID2From').Value :=
      GetcFrom(myParams.ParamValues['PersonID2'], ftInteger);
    Parameters.ParamByName('PersonID2To').Value :=
      GetcTo(myParams.ParamValues['PersonID2'], ftInteger);

    Parameters.ParamByName('PayTypesFrom').Value :=
      GetcFrom(myParams.ParamValues['PayTypes'], ftInteger);
    Parameters.ParamByName('PayTypesTo').Value :=
      GetcTo(myParams.ParamValues['PayTypes'], ftInteger);


  end; // with
  with qryTypes do
  begin
    Active := False;
    Parameters.ParamByName('DateFrom').Value :=
      GetcFrom(myParams.ParamValues['Date'], ftDate);
    Parameters.ParamByName('DateTo').Value :=
      GetcTo(myParams.ParamValues['Date'], ftDate);

    Parameters.ParamByName('SellsEmporiumFrom').Value :=
      GetcFrom(myParams.ParamValues['SellsEmporium'], ftInteger);
    Parameters.ParamByName('SellsEmporiumTo').Value :=
      GetcTo(myParams.ParamValues['SellsEmporium'], ftInteger);

    Parameters.ParamByName('SellsMethodFrom').Value :=
      GetcFrom(myParams.ParamValues['SellsMethod'], ftInteger);
    Parameters.ParamByName('SellsMethodTo').Value :=
      GetcTo(myParams.ParamValues['SellsMethod'], ftInteger);

    Parameters.ParamByName('NumberFrom').Value :=
      GetcFrom(myParams.ParamValues['number'], ftInteger);
    Parameters.ParamByName('NumberTo').Value :=
      GetcTo(myParams.ParamValues['number'], ftInteger);

    Parameters.ParamByName('FormTypeFrom').Value :=
      GetcFrom(myParams.ParamValues['FormType'], ftInteger);
    Parameters.ParamByName('FormTypeTo').Value :=
      GetcTo(myParams.ParamValues['FormType'], ftInteger);

    Parameters.ParamByName('PersonID1From').Value :=
      GetcFrom(myParams.ParamValues['PersonID1'], ftInteger);
    Parameters.ParamByName('PersonID1To').Value :=
      GetcTo(myParams.ParamValues['PersonID1'], ftInteger);

    Parameters.ParamByName('PersonID2From').Value :=
      GetcFrom(myParams.ParamValues['PersonID2'], ftInteger);
    Parameters.ParamByName('PersonID2To').Value :=
      GetcTo(myParams.ParamValues['PersonID2'], ftInteger);

    Parameters.ParamByName('PayTypesFrom').Value :=
      GetcFrom(myParams.ParamValues['PayTypes'], ftInteger);
    Parameters.ParamByName('PayTypesTo').Value :=
      GetcTo(myParams.ParamValues['PayTypes'], ftInteger);


    Active := True;
  end; // with
end;

procedure TRecallBranchChecksF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      AddItem(DMF.adcBSell, 'FormType', '‰Ê⁄ «ÿ·«⁄« ', 'ﬂœ', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT DISTINCT Forms.FormType, FormTypes.FormCaption ' +
        'FROM Forms INNER JOIN FormTypes ON Forms.FormType = FormTypes.FormType',
        'SELECT 0,2147483647');

      AddItem(DMF.adcBSell, 'number', '‘„«—Â', '‘„«—Â', ftInteger, dvMinMax, '',
        '', ciSimple, '', 'SELECT 0,2147483647');

      AddItemFilter(GetFilter, TFilterSellsMethod);

      AddItemFilter(GetFilter, TFilterSellsEmporium);

      AddItemFilter(GetFilter, TFilterPersonID1);
      AddItemFilter(GetFilter, TFilterPersonID2);
      AddItemFilter(GetFilter, TFilterPayTypes1);

      AddItem(dmF.adcBSell, 'Date', '  «—ÌŒ ', ' «—ÌŒ', ftDate,
        dvDefaults, APPBank.StartYear, APPBank.endYear, ciSimple, '', '');

//      AddItem(DMF.adcBSell, 'Date', '  «—ÌŒ ', ' «—ÌŒ', ftDate, dvMinMax, '',
//        '', ciSimple, '',
//        ' SELECT Min(Date_),Max(Date_) FROM  (SELECT ReciptDate as Date_ FROM Recipts union all '
//        + ' SELECT FormDate as Date_ FROM Forms)as a ');
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

procedure TRecallBranchChecksF.frServerName1cmbBankNameChange(Sender: TObject);
begin
  inherited;
  frServerName1.sitem := TSearchItemBank(frServerName1.cmbBankName.Items.Objects
    [frServerName1.cmbBankName.ItemIndex]);
  frServerName1.AssignBankName(adcSrc, frServerName1.sitem.BankName);
  adcSrc.Close;
  qryShow.Active := False;
  LblMoveBaseInfo.caption := '«ÿ·«⁄«  Å«ÌÂ ﬁ«»· «‰ ﬁ«· «“ : ' +
    frServerName1.cmbBankName.Text;
  LblMoveBaseInfo.caption := LblMoveBaseInfo.caption;
  qryTypesItems.Close;
  qryTypesItems.sql.Text := StringReplace(qryTypesItemsSQLText, ':Bsell',
    frServerName1.sitem.ServerName + '.' + frServerName1.sitem.BankName,
    [rfReplaceAll]);
  if not actMove.Enabled then
    Exit;
  myParams.Clear;
  actFilter.Execute;
  if myParams.FindParam('Date') = nil then
    frServerName1.cmbBankName.DroppedDown := True;
end;

procedure TRecallBranchChecksF.FormDestroy(Sender: TObject);
begin
  inherited;
//  frServerName1.sitem.Free;
  dmgConstF.Free;
end;

procedure TRecallBranchChecksF.actSendExelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid2);
end;

procedure TRecallBranchChecksF.qryTypesAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qryTypesItems do
  begin
    Active := False;
    Parameters.ParamByName('Type').Value := qryTypes.FieldByName('FormType')
      .AsInteger;
    Active := True;
  end; // with
  with qryTypesItems.Parameters do
  begin
    LblLimit.caption :=
    // '«“ „‘ —Ì '+IntToStr(ParamByName('PersonIDFrom1').Value)+'  « '+IntToStr(ParamByName('PersonIDTo1').Value)+'    '+
      '«“  «—ÌŒ ' + ParamByName('DateFrom').Value + '  « ' +
      ParamByName('DateTo').Value;
  end; // with

end;

procedure TRecallBranchChecksF.FormCreate(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TdmgConstF, dmgConstF);
  qryTypesItemsSQLText := qryTypesItems.sql.Text;
  /// /assignCombo;
  Entity_Weight(DBGrid2);
  // MyArray[01].tableName:='Deficits';           MyArray[01].tableKeyName:='DeficitID';
  // MyArray[02].tableName:='LookUps';            MyArray[02].tableKeyName:='LookUpID';
  // MyArray[03].tableName:='UseUnits';           MyArray[03].tableKeyName:='UseUnitID';
  // MyArray[04].tableName:='Units';              MyArray[04].tableKeyName:='UnitCode';
  // MyArray[05].tableName:='Stores';             MyArray[05].tableKeyName:='n_StoreID';
  // MyArray[06].tableName:='CustomersGroup';     MyArray[06].tableKeyName:='CustomerGrpID';
  // MyArray[07].tableName:='Customers';          MyArray[07].tableKeyName:='CustID';
  // MyArray[08].tableName:='PurchaseEffect';     MyArray[08].tableKeyName:='EffectID';
  // MyArray[09].tableName:='UsersStore';         MyArray[09].tableKeyName:='n_UserID';
  // MyArray[10].tableName:='StuffGroups';        MyArray[10].tableKeyName:='GroupID';
  // MyArray[11].tableName:='StuffCoding';        MyArray[11].tableKeyName:='c_StuffCode';
  // MyArray[12].tableName:='StoreStuffs';        MyArray[12].tableKeyName:='c_StuffCode';
  // MyArray[13].tableName:='StuffsDeficitsRange';MyArray[13].tableKeyName:='c_StuffCode';
  //
  // MyArray[01].tableCaption:='ﬂ”Ê—« /«÷«›« ';
  // MyArray[02].tableCaption:='«ÿ·«⁄«  Å«ÌÂ Ê À«» ';
  // MyArray[03].tableCaption:='„Õ· Â«Ì „’—›';
  // MyArray[04].tableCaption:='Ê«Õœ';
  // MyArray[05].tableCaption:='«‰»«—Â«';
  // MyArray[06].tableCaption:='ê—ÊÂ „‘ —Ì«‰';
  // MyArray[07].tableCaption:='„‘ —Ì«‰';
  // MyArray[08].tableCaption:='⁄‰«ÊÌ‰ „ÊÀ— »—Œ—Ìœ';
  // MyArray[09].tableCaption:='«‰»«—Ê ﬂ«—»—';  //UsersStore
  // MyArray[10].tableCaption:='ê—ÊÂ ﬂ«·«';
  // MyArray[11].tableCaption:='ﬂœÌ‰ê ﬂ«·«';
  // MyArray[12].tableCaption:='«‰»«— Ê ﬂ«·«';
  // MyArray[13].tableCaption:='ﬂ«·« Ê ﬂ”Ê—« /«÷«›« ';

  // MyArray[01].KeyFieldName:='DeficitName';
  // MyArray[02].KeyFieldName:='Name';
  // MyArray[03].KeyFieldName:='UseUnitName';
  // MyArray[04].KeyFieldName:='UnitName';
  // MyArray[05].KeyFieldName:='c_StoreName';
  // MyArray[06].KeyFieldName:='CustomerGrpName';
  // MyArray[07].KeyFieldName:='CustName';
  // MyArray[08].KeyFieldName:='EffectName';
  // MyArray[09].KeyFieldName:='n_StoreID';
  // MyArray[10].KeyFieldName:='GroupName';
  // MyArray[11].KeyFieldName:='c_StuffName';
  // MyArray[12].KeyFieldName:='n_StoreID';
  // MyArray[13].KeyFieldName:='DeficitID';
  dmgConstF.FillListBox(lslTableName)

end;

procedure TRecallBranchChecksF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  searchF.ShowSearch(cliTypesItems);
end;

procedure TRecallBranchChecksF.actSortExecute(Sender: TObject);
begin
  inherited;
  sortF.ShowSort(cliTypesItems);
end;

procedure TRecallBranchChecksF.DBGrid2DblClick(Sender: TObject);
begin
  inherited;
  // ToggleCheck;
end;

procedure TRecallBranchChecksF.qryTypesItemsAfterOpen(DataSet: TDataSet);
begin
  inherited;
  cliTypesItems.Active := False;
  cliTypesItems.Active := True;
end;

procedure TRecallBranchChecksF.DBGrid2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  // if Key = VK_SPACE then
  // begin
  // Key := 0;
  // ToggleCheck;
  // end; // if

end;

procedure TRecallBranchChecksF.DBGrid2MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  // (Sender as TDBGrid).Refresh
end;
//
// procedure TRecallBranchChecksF.ToggleCheck;
// begin
// with cliTypesItems do
// begin
// Edit;
// FieldByName('_Checked').AsBoolean := not FieldByName('_Checked').AsBoolean;
// Post;
// end; // with
// end;

procedure TRecallBranchChecksF.actSelectAllExecute(Sender: TObject);
begin
  inherited;
  with cliTypesItems do
  begin
    DisableControls;
    First;
    while not Eof do
    begin
      Edit;
      FieldByName('_checked').AsBoolean := True;
      Post;
      Next;
    end; // while
    First;
    EnableControls;
  end; // with
end;

procedure TRecallBranchChecksF.actSlelectInverseExecute(Sender: TObject);
begin
  inherited;
  with cliTypesItems do
  begin
    DisableControls;
    First;
    while not Eof do
    begin
      Edit;
      FieldByName('_checked').AsBoolean := not FieldByName('_checked')
        .AsBoolean;
      Post;
      Next;
    end; // while
    First;
    EnableControls;
  end; // with
end;

procedure TRecallBranchChecksF.actMoveExecute(Sender: TObject);
begin
  inherited;
  DMF.adcBSell.BeginTrans;
  try
    BigMessageProgBar('œ— Õ«· «‰ ﬁ«· ' + qryTypesFormCaption.AsString + ' Â« ',
      cliTypesItems.RecordCount);
    With cliTypesItems do
    begin
      DisableControls;
      First;
      while not Eof do
      begin
        if FieldByName('_checked').AsBoolean then
          InsertRecipts;
        Next;
      end; // while
      EnableControls;
    end;
    FreeReservedCodes(DMF.adcBSell, '', '', Self.Name);
    CloseMessage;
    actSelectAll.Execute;
    actSlelectInverse.Execute;
    qryTypesItems.Close;
    qryTypesItems.Open;

    DMF.adcBSell.CommitTrans;
  except
    on E: Exception do
    begin
      DMF.adcBSell.RollbackTrans;
      Warn('«‘ﬂ«· œ— ⁄„·Ì« ' + E.Message);
      CloseMessage;
    end;
  end; // try
end;

procedure TRecallBranchChecksF.InsertRecipts;
var
  i: Integer; // ,FormIDi
  // MaxFormID,MaxFormItemID:Integer;
begin
  // MaxFormID:=GetANewCode(Self.Name,'Forms','FormID');
  // MaxFormItemID:=GetANewCode(Self.Name,'FormItems','FormItemID');
  qrySeverable.Active := True;
  qryForms.Active := True;
  qryItems.Active := True;
  With qrySrc do
  begin
    Active := False;
    sql.Text := 'SELECT * FROM Forms ';
    sql.Add('WHERE FormID = ' + cliTypesItemsFormID.AsString);
    sql.Add('AND ServerID = ' + cliTypesItems.FieldByName('ServerID').AsString);
    sql.Add('AND YearID = ' + cliTypesItems.FieldByName('YearID').AsString);
    Active := True;
    while not Eof do
    begin
      qryForms.Insert;
      for i := 0 to FieldCount - 1 do
        if (qryForms.FindField(Fields[i].FieldName) <> nil) and
          (not qryForms.FindField(Fields[i].FieldName).ReadOnly) then
          qryForms.FieldByName(Fields[i].FieldName).AsString :=
            Fields[i].AsString;
      // if (qryForms.FindField(Fields[i].FieldName)<>nil)
      // and(Fields[i].FieldName<>'FormID')
      // and(Fields[i].FieldName<>'CashCheckFormID')then
      // qryForms.FieldByName(Fields[i].FieldName).Value:=Fields[i].Value
      // else begin
      // qryForms.FieldByName('FormID').AsInteger:=FieldByName('FormID').AsInteger;//+MaxFormID;
      // if FieldByName('CashCheckFormID').AsInteger<>0 then
      // qryForms.FieldByName('CashCheckFormID').AsInteger:=FieldByName('CashCheckFormID').AsInteger;//+MaxFormID;
      // end;
      qryForms.Post;
      Next;
    end; // while
    // FormIDi:=qryForms.FieldByName('FormID').AsInteger;
    GoProgressBar(qryTypesFormCaption.AsString + '<>' +
      cliTypesItemsCDSDesigner.AsString);
    Active := False;
    sql.Text := 'SELECT * FROM FormItems';
    sql.Add('WHERE FormID = ' + cliTypesItemsFormID.AsString);
    sql.Add('AND ServerID = ' + cliTypesItems.FieldByName('ServerID').AsString);
    sql.Add('AND YearID = ' + cliTypesItems.FieldByName('YearID').AsString);
    Active := True;
    while not Eof do
    begin
      qryItems.Insert;
      for i := 0 to FieldCount - 1 do
        if (qryItems.FindField(Fields[i].FieldName) <> nil) and
          (not qryItems.FindField(Fields[i].FieldName).ReadOnly) then
          qryItems.FieldByName(Fields[i].FieldName).AsString :=
            Fields[i].AsString;

      qryItems.Post;
      Next;
    end; // while

    Active := False;
    sql.Text := 'SELECT * FROM Severable';
    sql.Add('WHERE FormID = ' + cliTypesItemsFormID.AsString);
    sql.Add('AND ServerID = ' + cliTypesItems.FieldByName('ServerID').AsString);
    sql.Add('AND YearID = ' + cliTypesItems.FieldByName('YearID').AsString);
    Active := True;
    while not Eof do
    begin
      qrySeverable.Insert;
      for i := 0 to FieldCount - 1 do
        if (qrySeverable.FindField(Fields[i].FieldName) <> nil) and
          (not qrySeverable.FindField(Fields[i].FieldName).ReadOnly) then
          qrySeverable.FieldByName(Fields[i].FieldName).AsString :=
            Fields[i].AsString;

      qrySeverable.Post;
      Next;
    end; // while

  end; // With qrySrc
end;

procedure TRecallBranchChecksF.actMoveBaseInfoExecute(Sender: TObject);
var
  i: Integer;
  Table_FieldNames: String; // checkeds
begin
  inherited;
  BigMessageProgBar('œ— Õ«· «‰ ﬁ«· «ÿ·«⁄«  Å«ÌÂ  ', High(MyArray));
  With qryMove do
  begin
    for i := 1 to High(MyArray) do
    begin
      Table_FieldNames := GetTableFieldNames(adcSrc, MyArray[i].SchemaName,
        MyArray[i].tableName);
      sql.Text := 'INSERT INTO ' + APPBank.Name + '.' + MyArray[i].SchemaName +
        MyArray[i].tableName;
      sql.Add('(' + Table_FieldNames + ')');
      sql.Add('SELECT ' + Table_FieldNames + ' FROM ' +
        frServerName1.sitem.ServerName + '.' + frServerName1.sitem.BankName +
        '.' + MyArray[i].SchemaName + MyArray[i].tableName);
      sql.Add('AS ' + MyArray[i].tableName);
      sql.Add('WHERE (NOT (' + MyArray[i].tableKeyName + ' IN (SELECT ' +
        MyArray[i].tableKeyName);
      sql.Add('FROM ' + APPBank.Name + '.' + MyArray[i].SchemaName +
        MyArray[i].tableName + ')))');
      GoProgressBar(IntToStr(ExecSQL));
    end;
    BigMessage('«ÿ·«⁄«  Å«ÌÂ „‰ ﬁ· ‘œ.˛', 0);
  end;
  CloseMessage;
end;

procedure TRecallBranchChecksF.lslTableNameClick(Sender: TObject);
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
    Table_FieldNames := MyArray[i].tableKeyName + ' as ﬂœ ' + ',' +
      MyArray[i].KeyFieldName + ' as ⁄‰Ê«‰ ';
    sql.Text := 'SELECT ' + Table_FieldNames + ' FROM ' +
      frServerName1.sitem.ServerName + '.' + frServerName1.sitem.BankName + '.'
      + MyArray[i].SchemaName + MyArray[i].tableName;
    sql.Add('WHERE (NOT (' + MyArray[i].tableKeyName + ' IN (SELECT ' +
      MyArray[i].tableKeyName);
    sql.Add('FROM ' + APPBank.Name + '.' + MyArray[i].SchemaName + MyArray[i]
      .tableName + ')))');
    Active := True;
  end;
end;

procedure TRecallBranchChecksF.actShiftExecute(Sender: TObject);
begin
  inherited;
  if get_response
    ('œﬁ  ﬂ‰Ìœ ﬂÂ «Ì‰ ⁄„·Ì«  —ÊÌ »«‰ﬂÌ ﬂÂ ﬁ—«— «”  «ÿ·«⁄«  —« ›—«ŒÊ«‰Ì ﬂ‰œ ( »«‰ﬂ Ã«—Ì : '
    + APPBank.Name + ' )›ﬁÿ Ìﬂ»«— «Ã—« ‘Êœ.˛' + #10#13 + '¬Ì« «œ«„Â „Ì œÂÌœø')
    <> mrYes then
    Exit;
  With DMF.qryTmpTmp do
  begin
    Active := False;
    sql.Text := 'SELECT max(FormID) FROM Forms ';
    Active := True;
    if Fields[0].AsInteger > 10000000 then
    begin
      Warn('¬„«œÂ ”«“Ì —ÊÌ «Ì‰ »«‰ﬂ «‰Ã«„ ‘œÂ «” .˛');
      Exit;
    end;
    Active := False;
    sql.Text := 'Update FormItems set FormItemID=FormItemID+10000000';
    sql.Add('Update FormItems set preFormItemID=preFormItemID+10000000');
    sql.Add('WHERE (preFormItemID IS NOT NULL)');
    sql.Add('Update Forms set FormID=FormID+10000000');
    BigMessage('·ÿ›« ’»— ﬂ‰Ìœ...˛', 0);
    ExecSQL;
    BigMessage('«‰Ã«„ ‘œ.˛', 1);
    Active := False;
  end;
end;

procedure TRecallBranchChecksF.adcSrcAfterConnect(Sender: TObject);
begin
  inherited;
  ChkServerID(adcSrc, actMove, actMoveBaseInfo)
end;

procedure TRecallBranchChecksF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
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
  if checkPasWrd(__s) then
    actShift.Visible := not actShift.Visible;
  t0 := tc;
end;

end.
