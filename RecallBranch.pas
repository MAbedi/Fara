{ -----------------------------------------------------------------------------
  Unit Name: RecallBranch
  Author:    M_A_H_M_O_O_D
  Purpose:
  History:
  ----------------------------------------------------------------------------- }
unit RecallBranch;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DBCtrls, Grids, Vcl.DBGrids, StrUtils,
  ppDB, ppDBPipe, ppComm, ppRelatv, ppProd, ppClass, ppReport, ppPrnabl,
  ppCtrls, ppCache, ppBands, ppVar, ppStrtch, ppMemo, ppModule,
  ppTypes, ppSubRpt, Menus, DB, ADODB, Mask, ComCtrls, Provider, DBClient,
  FrmServerName, System.ImageList, System.Actions, Vcl.CheckLst;

type

  TRecallBranchF = class(Ttemplate2MDIF)
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
    BitBtn3: TBitBtn;
    StatusBar1: TStatusBar;
    actFilter: TAction;
    actSendExel: TAction;
    actSort: TAction;
    DBGrid2: TDBGrid;
    qryTypesType: TWordField;
    qryTypesCaption: TStringField;
    qryTypesKind: TIntegerField;
    qryTypesPerson1Caption: TStringField;
    qryTypesPerson2Caption: TStringField;
    BitBtn8: TBitBtn;
    cliTypesItems: TClientDataSet;
    cliTypesItems_checked: TBooleanField;
    DataSetProvider1: TDataSetProvider;
    cliTypesItemsReciptNumber: TIntegerField;
    cliTypesItemsReciptDate: TStringField;
    cliTypesItemsStoreID: TSmallintField;
    cliTypesItemsc_StoreName: TStringField;
    cliTypesItemsPersonID1: TIntegerField;
    cliTypesItemsCustName: TStringField;
    cliTypesItemsReciptNote: TStringField;
    cliTypesItemsReciptState: TSmallintField;
    cliTypesItemsReciptID: TIntegerField;
    cliTypesItemsReciptType: TSmallintField;
    Image2: TImage;
    Image3: TImage;
    actSelectAll: TAction;
    actSlelectInverse: TAction;
    actMove: TAction;
    qryMove: TADOQuery;
    qryItems: TADOQuery;
    qryRecipts: TADOQuery;
    adcSrc: TADOConnection;
    qrySrc: TADOQuery;
    actMoveBaseInfo: TAction;
    BitBtn1: TBitBtn;
    pnlLblL: TPanel;
    cliTypesItemsName: TStringField;
    Panel1: TPanel;
    DBGrid3: TDBGrid;
    qryShow: TADOQuery;
    srcShow: TDataSource;
    LblMoveBaseInfo: TLabel;
    qryDeficits: TADOQuery;
    actShift: TAction;
    BitBtn9: TBitBtn;
    cliTypesItemsServerID: TIntegerField;
    cliTypesItemsYearID: TIntegerField;
    LblLimit: TLabel;
    qry4Insert: TADOQuery;
    frServerName1: TfrServerName;
    qryReciptsTrades: TADOQuery;
    qryTozin: TADOQuery;
    qryTozinDeficits: TADOQuery;
    cliTypesItemsTotalPrice: TFMTBCDField;
    cliTypesItemsEntity: TFMTBCDField;
    cliTypesItemsWeight: TFMTBCDField;
    chkChangeYear: TCheckBox;
    lslTableName: TCheckListBox;
    procedure actFilterExecute(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actSendExelExecute(Sender: TObject);
    procedure qryTypesAfterScroll(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure cliTypesItemsReciptStateGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
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
    procedure frServerName1SpeedButton1Click(Sender: TObject);
    procedure frServerName1cmbBankNameChange(Sender: TObject);
    procedure frServerName1adcFrServerBeforeConnect(Sender: TObject);
  private
    { Private declarations }
    // TotalCount,SrcServerID:Integer;
    procedure UpdateFilter;
    procedure ToggleCheck;
    procedure InsertRecipts;
    procedure InsertReciptPurchaseEffect(ReciptItemID: Integer; tbl: string);
    procedure InsertTozins;

  public
    { Public declarations }
  end;

var
  RecallBranchF: TRecallBranchF;

implementation

uses filter_ADO, FilterClass_ADO, GlobalPro, DM, GetOtherMoney,
  GetCheck, Recipts, searchCode_ADO, TreeChart,
  DBGrid2Print, search1, sort, mmessage, FormFunctions, dmgConst, FaraConsts,
  Filter_ADO_Const;

{$R *.dfm}

procedure TRecallBranchF.UpdateFilter;
begin
  cliTypesItems.Close;
  with qryTypesItems do
  begin
    Active := False;
  end; // with
  with qryTypes do
  begin
    Active := False;
    Parameters.ParamByName('DateFrom').Value :=
      GetcFrom(myParams.ParamValues['Date'], ftDate);
    Parameters.ParamByName('DateTo').Value :=
      GetcTo(myParams.ParamValues['Date'], ftDate);

    Parameters.ParamByName('Date2From').Value :=
      GetcFrom(myParams.ParamValues['Date'], ftDate);
    Parameters.ParamByName('Date2To').Value :=
      GetcTo(myParams.ParamValues['Date'], ftDate);

    Active := True;
  end; // with
end;

procedure TRecallBranchF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      AddItemFilter(GetFilter, TFilterPersonID1);
      AddItemFilter(GetFilter, TFilterStates);
      AddItemFilter(GetFilter, TFilterSellsEmporium, True);
      AddItem(DMf.adcBSell, 'Number', 'شماره فرم', 'شماره ', ftInteger,
        dvMinMax, '', '', ciSimple, '', 'select 0,999999999');
      AddItem(DMf.adcBSell, 'StoreID', ' انبار ', 'كد', ftInteger, dvMinMax, '',
        '', ciLookup, LookupSQL4Store2, MinMaxSQL4Store2);
      // 'SELECT n_StoreID, c_StoreName FROM Stores ',
      // 'select Min(n_StoreID),Max(n_StoreID) From Stores');
      AddItem(DMf.adcBSell, 'SecondType', 'نوع اطلاعات ', 'كد اطلاعات ',
        ftInteger, dvMinMax, '', '', ciLookup,
        'SELECT LookUps.Code as Code, LookUps.Name as Name FROM Recipts INNER JOIN LookUps ON Recipts.SecondType = LookUps.LookUpID GROUP BY Recipts.SecondType, LookUps.Code, LookUps.Name',
        // 'SELECT Code, Name FROM LookUps ',
        'SELECT MIN(LookUps.Code),999999999 FROM Recipts LEFT OUTER JOIN LookUps ON Recipts.SecondType = LookUps.LookUpID');
      AddItem(DMf.adcBSell, 'Date', ' تاريخ ', 'تاريخ', ftDate, dvMinMax, '',
        '', ciSimple, '', ' SELECT ''0000/00/00'',''9999/99/99''');

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

procedure TRecallBranchF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid2, 6);
  Panel2.Repaint;
end;

procedure TRecallBranchF.frServerName1adcFrServerBeforeConnect(Sender: TObject);
begin
  inherited;
  frServerName1.adcFrServerBeforeConnect(Sender);

end;

procedure TRecallBranchF.frServerName1cmbBankNameChange(Sender: TObject);
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
  if myParams.FindParam('Number') = nil then
    frServerName1.cmbBankName.DroppedDown := True;
end;

procedure TRecallBranchF.frServerName1SpeedButton1Click(Sender: TObject);
begin
  inherited;
  frServerName1.SpeedButton1Click(Sender);
end;

procedure TRecallBranchF.FormDestroy(Sender: TObject);
begin
  inherited;
  // frServerName1.sitem.Free;
  CloseMessage;
  SaveColWidth(DBGrid2);
  dmgConstF.Free
end;

procedure TRecallBranchF.actSendExelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid2);
end;

procedure TRecallBranchF.qryTypesAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qryTypesItems do
    if qryTypesKind.AsInteger = 1 then
    begin
      Active := False;
      SQL.Text := '';
      SQL.Add('SELECT T_1.TozinNumber as ReciptNumber, T_1.TozinDate as ReciptDate, T_1.StoreID, Stores.c_StoreName, T_1.PersonID1,');
      SQL.Add('Customers.CustName,');
      SQL.Add('CAST (T_1.MachineFullWeight AS DECIMAL(38, 8)) AS Entity,CAST ( T_1.MachineWeight AS DECIMAL(38, 8)) AS Weight,');
      SQL.Add(' CAST( T_1.MachineFullWeight-T_1.MachineWeight AS decimal(38,0)) AS TotalPrice, T_1.TozinNote as ReciptNote, T_1.TozinState as');
      SQL.Add('ReciptState, T_1.TozinID AS ReciptID,');
      SQL.Add('T_1.ServerID, T_1.YearID, T_1.ReciptType, LookUps_SecondType.Name');

      SQL.Add('FROM :Bsell.dbo.Customers AS Customers RIGHT OUTER JOIN');
      SQL.Add(' :Bsell.dbo.Tozin AS T_1 ON Customers.CustID = T_1.PersonID1 LEFT OUTER JOIN');
      SQL.Add('Tozin ON T_1.TozinID = Tozin.TozinID LEFT OUTER JOIN');
      SQL.Add(' :Bsell.dbo.Stores AS Stores ON T_1.StoreID = Stores.n_StoreID LEFT OUTER JOIN');
      SQL.Add(' :Bsell.dbo.LookUps AS LookUps_SecondType ON T_1.SecondType =');
      SQL.Add('LookUps_SecondType.LookUpID');

      SQL.Add('WHERE (Tozin.TozinID IS NULL)');
      SQL.Add('AND (LookUps_SecondType.Code BETWEEN :SecondTypeFrom AND :SecondTypeTo )');
      SQL.Add('AND (T_1.StoreID BETWEEN :StoreIDFrom AND :StoreIDTo)');
      SQL.Add('AND (T_1.TozinNumber BETWEEN :RcpNumberFrom AND :RcpNumberTo)');
      SQL.Add('AND (T_1.ReciptType = :Type)');
      SQL.Add('AND (T_1.TozinDate BETWEEN :DateFrom AND :DateTo)');

      SQL.Add('ORDER BY T_1.ReciptNumber');

    end
    else
    begin

      SQL.Text := 'SELECT Recipts_1.ReciptNumber, Recipts_1.ReciptDate';
      SQL.Add(', Recipts_1.StoreID, Stores.c_StoreName, Recipts_1.PersonID1,Customers.CustName,');

      SQL.Add('CAST (SUM(ReciptItems.InputEntity + ReciptItems.OutputEntity) AS DECIMAL(38, 8)) AS Entity,');
      SQL.Add('CAST (SUM(ReciptItems.InputWeight +ReciptItems.OutputWeight)AS DECIMAL(38, 8)) AS Weight,');

      SQL.Add('CAST( SUM(ReciptItems.TotalInputPrice + ReciptItems.TotalOutputPrice) AS decimal(38,0)) AS TotalPrice, Recipts_1.ReciptNote,');
      SQL.Add('Recipts_1.ReciptState, Recipts_1.ReciptID,');
      SQL.Add('Recipts_1.ServerID, Recipts_1.YearID, Recipts_1.ReciptType, LookUps_SecondType.Name');
      SQL.Add('FROM :Bsell.dbo.Customers AS Customers RIGHT OUTER JOIN');
      SQL.Add(':Bsell.dbo.Recipts AS Recipts_1 ON Customers.CustID = Recipts_1.PersonID1 LEFT OUTER JOIN');
      SQL.Add(':Bsell.dbo.ReciptItems AS ReciptItems ON Recipts_1.ReciptID = ReciptItems.ReciptID AND Recipts_1.ServerID =');
      SQL.Add('ReciptItems.ServerID AND');
      SQL.Add('Recipts_1.YearID = ReciptItems.YearID LEFT OUTER JOIN');
      SQL.Add('Recipts ON Recipts_1.ReciptID = Recipts.ReciptID AND Recipts_1.ServerID = Recipts.ServerID AND');
      SQL.Add('Recipts_1.YearID = Recipts.YearID LEFT OUTER JOIN');
      SQL.Add(':Bsell.dbo.Stores AS Stores ON Recipts_1.StoreID = Stores.n_StoreID LEFT OUTER JOIN');
      SQL.Add(':Bsell.dbo.LookUps AS LookUps_SecondType ON Recipts_1.SecondType = LookUps_SecondType.LookUpID');

      SQL.Add('WHERE (Recipts.ReciptID IS NULL)');
      SQL.Add('AND (LookUps_SecondType.Code BETWEEN :SecondTypeFrom AND :SecondTypeTo )');
      SQL.Add('AND (Recipts_1.StoreID BETWEEN :StoreIDFrom AND :StoreIDTo)');
      SQL.Add('AND (Recipts_1.ReciptNumber BETWEEN :RcpNumberFrom AND :RcpNumberTo)');
      SQL.Add('AND (Recipts_1.ReciptType = :Type)');
      SQL.Add('AND (Recipts_1.ReciptDate BETWEEN :DateFrom AND :DateTo)');
      SQL.Add('AND (Recipts_1.PersonID1 BETWEEN :PersonID1From AND :PersonID1To)');
      SQL.Add('AND (Recipts_1.SellsEmporium BETWEEN :SellsEmporiumFrom AND :SellsEmporiumTo)');
      SQL.Add('And (Recipts_1.SellsEmporium not in (Select part From dbo.SplitString(:NotSellsEmporium,'','')))');

      SQL.Add('AND('',''+ :States +'','' LIKE N''%,''+LTRIM(STR(Recipts_1.ReciptState))+'',%'')');

      SQL.Add('GROUP BY Recipts_1.ReciptNumber, Recipts_1.ReciptDate, Recipts_1.StoreID, Stores.c_StoreName, Recipts_1.PersonID1,');
      SQL.Add('Customers.CustName,');
      SQL.Add('Recipts_1.ReciptNote, Recipts_1.ReciptState, Recipts_1.ReciptID, Recipts_1.ServerID, Recipts_1.YearID,');
      SQL.Add('Recipts_1.ReciptType,');
      SQL.Add('LookUps_SecondType.Name');
      SQL.Add('ORDER BY Recipts_1.ReciptNumber');

      Parameters.ParamByName('States').Value :=
        GetcFrom(myParams.ParamValues['States'], ftString);

      Parameters.ParamByName('SellsEmporiumFrom').Value :=
        GetcFrom(myParams.ParamValues['SellsEmporium'], ftInteger);
      Parameters.ParamByName('SellsEmporiumTo').Value :=
        GetcTo(myParams.ParamValues['SellsEmporium'], ftInteger);

      Parameters.ParamByName('PersonID1From').Value :=
        GetcFrom(myParams.ParamValues['PersonID1'], ftInteger);
      Parameters.ParamByName('PersonID1To').Value :=
        GetcTo(myParams.ParamValues['PersonID1'], ftInteger);

      Parameters.ParamByName('NotSellsEmporium').Value :=
        GetcNot(myParams.ParamValues['SellsEmporium']);

    end;
  with qryTypesItems do
  begin
    Active := False;
    SQL.Text := StringReplace(SQL.Text, ':Bsell', frServerName1.sitem.ServerName
      + '.' + frServerName1.sitem.BankName, [rfReplaceAll]);
    Parameters.ParamByName('DateFrom').Value :=
      GetcFrom(myParams.ParamValues['Date'], ftDate);
    Parameters.ParamByName('DateTo').Value :=
      GetcTo(myParams.ParamValues['Date'], ftDate);
    Parameters.ParamByName('SecondTypeFrom').Value :=
      GetcFrom(myParams.ParamValues['SecondType'], ftInteger);
    Parameters.ParamByName('SecondTypeTo').Value :=
      GetcTo(myParams.ParamValues['SecondType'], ftInteger);
    Parameters.ParamByName('StoreIDFrom').Value :=
      GetcFrom(myParams.ParamValues['StoreID'], ftInteger);
    Parameters.ParamByName('StoreIDTo').Value :=
      GetcTo(myParams.ParamValues['StoreID'], ftInteger);
    Parameters.ParamByName('RcpNumberFrom').Value :=
      GetcFrom(myParams.ParamValues['Number'], ftInteger);
    Parameters.ParamByName('RcpNumberTo').Value :=
      GetcTo(myParams.ParamValues['Number'], ftInteger);

    Parameters.ParamByName('Type').Value := qryTypes.FieldByName('Type')
      .AsInteger;
    // Parameters.ParamByName('Type2').Value:=qryTypes.FieldByName('Type').AsInteger;
    Active := True;
  end; // with
  with qryTypesItems.Parameters do
  begin
    LblLimit.caption :=
    // 'از مشتري '+IntToStr(ParamByName('PersonIDFrom1').Value)+' تا '+IntToStr(ParamByName('PersonIDTo1').Value)+'    '+
      'از تاريخ ' + ParamByName('DateFrom').Value + ' تا ' +
      ParamByName('DateTo').Value;
  end; // with

  qryTypesItems.FieldByName('PersonID1').DisplayLabel := 'كد ' +
    qryTypes.FieldByName('Person1Caption').AsString;

  qryTypesItems.FieldByName('CustName').DisplayLabel := 'نام ' +
    qryTypes.FieldByName('Person1Caption').AsString;

end;

procedure TRecallBranchF.FormCreate(Sender: TObject);
var
  i: Integer;
begin
  inherited;
  Application.CreateForm(TdmgConstF, dmgConstF);
  Entity_Weight(DBGrid2);
  dmgConstF.FillListBox(lslTableName);
  // تنظیم پیش‌فرض همه آیتم‌ها به تیک‌دار
  for i := 0 to lslTableName.Items.Count - 1 do
    lslTableName.Checked[i] := True;
end;

procedure TRecallBranchF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  searchF.ShowSearch(cliTypesItems);
end;

procedure TRecallBranchF.actSortExecute(Sender: TObject);
begin
  inherited;
  sortF.ShowSort(cliTypesItems);
end;

procedure TRecallBranchF.DBGrid2DblClick(Sender: TObject);
begin
  inherited;
  ToggleCheck;
end;

procedure TRecallBranchF.DBGrid2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  DBGrid2.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  if DataCol = 0 then
  begin
    DBGrid2.Canvas.Rectangle(Rect);
    if cliTypesItems_checked.AsBoolean then
      DBGrid2.Canvas.Draw(Rect.Left, Rect.Top, Image3.Picture.Graphic)
    else
      DBGrid2.Canvas.Draw(Rect.Left, Rect.Top, Image2.Picture.Graphic)
  end; // if
end;

procedure TRecallBranchF.cliTypesItemsReciptStateGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  Text := GetReciptState(cliTypesItems.FieldByName('ReciptState').AsInteger)
end;

procedure TRecallBranchF.qryTypesItemsAfterOpen(DataSet: TDataSet);
begin
  inherited;
  cliTypesItems.Active := False;
  cliTypesItems.Active := True;
end;

procedure TRecallBranchF.DBGrid2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_SPACE then
  begin
    Key := 0;
    ToggleCheck;
  end; // if

end;

procedure TRecallBranchF.ToggleCheck;
begin
  with cliTypesItems do
  begin
    Edit;
    FieldByName('_Checked').AsBoolean := not FieldByName('_Checked').AsBoolean;
    Post;
  end; // with
end;

procedure TRecallBranchF.actSelectAllExecute(Sender: TObject);
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

procedure TRecallBranchF.actSlelectInverseExecute(Sender: TObject);
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

procedure TRecallBranchF.actMoveExecute(Sender: TObject);
begin
  inherited;
  DMf.adcBSell.BeginTrans;
  try
    BigMessageProgBar('در حال انتقال ' + qryTypesCaption.AsString + ' ها ',
      cliTypesItems.RecordCount);
    With cliTypesItems do
    begin
      DisableControls;
      First;
      while not Eof do
      begin
        if FieldByName('_checked').AsBoolean then
        begin
          if qryTypesKind.AsInteger = 0 then
            InsertRecipts
          else
            InsertTozins
        end;

        Next;
      end; // while
      EnableControls;
    end;
    FreeReservedCodes(DMf.adcBSell, '', '', Self.Name);
    CloseMessage;
    actSelectAll.Execute;
    actSlelectInverse.Execute;
    DMf.adcBSell.CommitTrans;
  except
    on E: Exception do
    begin
      DMf.adcBSell.RollbackTrans;
      Warn('اشكال در عمليات' + E.Message + #13#10 + 'ReciptID' +
        cliTypesItems.FieldByName('ReciptID').AsString + #13#10 + 'ServerID' +
        cliTypesItems.FieldByName('ServerID').AsString + #13#10 + 'YearID' +
        cliTypesItems.FieldByName('YearID').AsString);
      CloseMessage;
      cliTypesItems.EnableControls;

    end;
  end; // try

end;

procedure TRecallBranchF.InsertRecipts;
var
  i: Integer; // ,ReciptID
  // ,MaxReciptID,MaxReciptItemID:Integer;
begin
  qryRecipts.Active := True;
  qryItems.Active := True;
  qryDeficits.Active := True;
  qryReciptsTrades.Active := True;
  With qrySrc do
  begin
    Active := False;
    SQL.Text := 'SELECT * FROM Recipts';
    SQL.Add('WHERE ReciptID = ' + cliTypesItems.FieldByName('ReciptID')
      .AsString);
    SQL.Add('AND ServerID = ' + cliTypesItems.FieldByName('ServerID').AsString);
    SQL.Add('AND YearID = ' + cliTypesItems.FieldByName('YearID').AsString);
    Active := True;
    while not Eof do
    begin
      qryRecipts.Insert;
      for i := 0 to FieldCount - 1 do
        if (qryRecipts.FindField(Fields[i].FieldName) <> nil) and
          (not qryRecipts.FindField(Fields[i].FieldName).ReadOnly) then
          qryRecipts.FieldByName(Fields[i].FieldName).AsString :=
            Fields[i].AsString;
      if chkChangeYear.Checked then
        qryRecipts.FieldByName('YearID').AsInteger := APPBank.Year;
      qryRecipts.Post;
      Next;
    end;
    GoProgressBar(qryTypesCaption.AsString + '<>' +
      cliTypesItemsReciptNumber.AsString);
    Active := False;
    SQL.Text := 'SELECT * FROM ReciptItems';
    SQL.Add('WHERE     ReciptID = ' + cliTypesItems.FieldByName('ReciptID')
      .AsString);
    SQL.Add('AND ServerID = ' + cliTypesItems.FieldByName('ServerID').AsString);
    SQL.Add('AND YearID = ' + cliTypesItems.FieldByName('YearID').AsString);

    Active := True;
    while not Eof do
    begin
      qryItems.Insert;
      for i := 0 to FieldCount - 1 do
        if (qryItems.FindField(Fields[i].FieldName) <> nil) and
          (not qryItems.FindField(Fields[i].FieldName).ReadOnly) then
          qryItems.FieldByName(Fields[i].FieldName).AsString :=
            Fields[i].AsString;
      if chkChangeYear.Checked then
        qryItems.FieldByName('YearID').AsInteger := APPBank.Year;
      qryItems.Post;
      InsertReciptPurchaseEffect(FieldByName('ReciptItemID').AsInteger,
        'ReciptPurchaseEffect');
      InsertReciptPurchaseEffect(FieldByName('ReciptItemID').AsInteger,
        'ReciptsRegulates');
      Next;
    end; // while

    Active := False;
    SQL.Text := 'SELECT * FROM ReciptsDeficits ';
    SQL.Add('WHERE     ReciptID = ' + cliTypesItems.FieldByName('ReciptID')
      .AsString);
    SQL.Add('AND ServerID = ' + cliTypesItems.FieldByName('ServerID').AsString);
    SQL.Add('AND YearID = ' + cliTypesItems.FieldByName('YearID').AsString);
    Active := True;
    while not Eof do
    begin
      qryDeficits.Insert;
      for i := 0 to FieldCount - 1 do
        if (qryDeficits.FindField(Fields[i].FieldName) <> nil) and
          (not qryDeficits.FindField(Fields[i].FieldName).ReadOnly) then
          qryDeficits.FieldByName(Fields[i].FieldName).AsString :=
            Fields[i].AsString;
      if chkChangeYear.Checked then
        qryDeficits.FieldByName('YearID').AsInteger := APPBank.Year;
      qryDeficits.Post;
      Next;
    end;

    /// /////// ReciptsTrades
    Active := False;
    SQL.Text := 'SELECT * FROM ReciptsTrades ';
    SQL.Add('WHERE ReciptID = ' + cliTypesItems.FieldByName('ReciptID')
      .AsString);
    SQL.Add('AND ServerID = ' + cliTypesItems.FieldByName('ServerID').AsString);
    SQL.Add('AND YearID = ' + cliTypesItems.FieldByName('YearID').AsString);
    Active := True;
    while not Eof do
    begin
      qryReciptsTrades.Insert;
      for i := 0 to FieldCount - 1 do
        if (qryReciptsTrades.FindField(Fields[i].FieldName) <> nil) and
          (not qryReciptsTrades.FindField(Fields[i].FieldName).ReadOnly) then
          qryReciptsTrades.FieldByName(Fields[i].FieldName).AsString :=
            Fields[i].AsString;
      if chkChangeYear.Checked then
        qryReciptsTrades.FieldByName('YearID').AsInteger := APPBank.Year;
      qryReciptsTrades.Post;
      Next;
    end;

  end;
end;

procedure TRecallBranchF.InsertTozins;
var
  i: Integer; // ,ReciptID
  // ,MaxReciptID,MaxReciptItemID:Integer;
begin
  qryTozin.Active := True;
  qryTozinDeficits.Active := True;
  With qrySrc do
  begin
    Active := False;
    SQL.Text := 'SELECT * FROM Tozin';
    SQL.Add('WHERE TozinID = ' + cliTypesItems.FieldByName('ReciptID')
      .AsString);
    Active := True;
    while not Eof do
    begin
      qryTozin.Insert;
      for i := 0 to FieldCount - 1 do
        if (qryTozin.FindField(Fields[i].FieldName) <> nil) and
          (not qryTozin.FindField(Fields[i].FieldName).ReadOnly) then
          qryTozin.FieldByName(Fields[i].FieldName).AsString :=
            Fields[i].AsString;
      if chkChangeYear.Checked then
        qryTozin.FieldByName('YearID').AsInteger := APPBank.Year;
      qryTozin.Post;
      Next;
    end;
    GoProgressBar(qryTypesCaption.AsString + '<>' +
      cliTypesItemsReciptNumber.AsString);

    Active := False;
    SQL.Text := 'SELECT * FROM TozinDeficits ';
    SQL.Add('WHERE     TozinID = ' + cliTypesItems.FieldByName('ReciptID')
      .AsString);
    Active := True;
    while not Eof do
    begin
      qryTozinDeficits.Insert;
      for i := 0 to FieldCount - 1 do
        if (qryTozinDeficits.FindField(Fields[i].FieldName) <> nil) and
          (not qryTozinDeficits.FindField(Fields[i].FieldName).ReadOnly) then
          qryTozinDeficits.FieldByName(Fields[i].FieldName).AsString :=
            Fields[i].AsString;
      if chkChangeYear.Checked then
        qryTozinDeficits.FieldByName('YearID').AsInteger := APPBank.Year;
      qryTozinDeficits.Post;
      Next;
    end;

  end;
end;

procedure TRecallBranchF.InsertReciptPurchaseEffect(ReciptItemID: Integer;
  tbl: string);
var
  i: Integer;
begin
  With qry4Insert do
  begin
    Active := False;
    SQL.Text := 'SELECT *';
    SQL.Add(Format('FROM %s ', [tbl]));
    SQL.Add('WHERE ( ReciptItemID = 0)');
    Active := True;
  end;

  With TADOQuery.Create(nil) do
    try
      Connection := adcSrc;
      SQL.Text := 'SELECT * FROM ' + tbl;
      SQL.Add('WHERE ReciptID = ' + cliTypesItems.FieldByName('ReciptID')
        .AsString);
      SQL.Add('AND ServerID = ' + cliTypesItems.FieldByName('ServerID')
        .AsString);
      SQL.Add('AND YearID = ' + cliTypesItems.FieldByName('YearID').AsString);
      SQL.Add('AND ReciptItemID = ' + IntToStr(ReciptItemID));
      Active := True;
      while not Eof do
      begin
        qry4Insert.Insert;
        for i := 0 to FieldCount - 1 do
          if (LowerCase(Fields[i].FieldName) <> 'rowguid') and
            (qry4Insert.FindField(Fields[i].FieldName) <> nil) and
            (not qry4Insert.FindField(Fields[i].FieldName).ReadOnly) then
            qry4Insert.FieldByName(Fields[i].FieldName).AsString :=
              Fields[i].AsString;
        if chkChangeYear.Checked then
          qry4Insert.FieldByName('YearID').AsInteger := APPBank.Year;
        qry4Insert.Post;
        Next;
      end;
    finally
      Free;
    end;
end;

procedure TRecallBranchF.actMoveBaseInfoExecute(Sender: TObject);
var
  i, idx, checkedCount: Integer;
  Table_FieldNames: String;
begin
  inherited;

  // شمارش تعداد آیتم‌های تیک‌دار
  checkedCount := 0;
  for i := 0 to lslTableName.Items.Count - 1 do
    if lslTableName.Checked[i] then
      Inc(checkedCount);

  BigMessageProgBar('در حال انتقال اطلاعات پايه  ', checkedCount);

  With qryMove do
  begin
    for i := 0 to lslTableName.Items.Count - 1 do
    begin
      if lslTableName.Checked[i] then
      begin
        idx := Integer(lslTableName.Items.Objects[i]);
        Table_FieldNames := GetTableFieldNames(adcSrc, MyArray[idx].SchemaName,
          MyArray[idx].tableName);
        SQL.Text := 'INSERT INTO ' + APPBank.Name + '.' + MyArray[idx]
          .SchemaName + MyArray[idx].tableName;
        SQL.Add('(' + Table_FieldNames + ')');
        SQL.Add('SELECT ' + Table_FieldNames + ' FROM ' +
          frServerName1.sitem.ServerName + '.' + frServerName1.sitem.BankName +
          '.' + MyArray[idx].SchemaName + MyArray[idx].tableName);
        SQL.Add('AS ' + MyArray[idx].tableName);
        SQL.Add('WHERE (NOT (' + MyArray[idx].tableKeyName + ' IN (SELECT ' +
          MyArray[idx].tableKeyName);
        SQL.Add('FROM ' + APPBank.Name + '.' + MyArray[idx].SchemaName +
          MyArray[idx].tableName + ')))');
        GoProgressBar(IntToStr(ExecSQL));
      end;
    end;
    BigMessage('اطلاعات پايه منتقل شد.‏', 0);
  end;
  CloseMessage;
end;

// procedure TRecallBranchF.actMoveBaseInfoExecute(Sender: TObject);
// var
// i: Integer;
// Table_FieldNames: String; // checkeds,
// begin
// inherited;
// BigMessageProgBar('در حال انتقال اطلاعات پايه  ', High(MyArray));
// With qryMove do
// begin
// for i := 1 to High(MyArray) do
// begin
// Table_FieldNames := GetTableFieldNames(adcSrc, MyArray[i].SchemaName,
// MyArray[i].tableName);
// SQL.Text := 'INSERT INTO ' + APPBank.Name + '.' + MyArray[i].SchemaName +
// MyArray[i].tableName;
// SQL.Add('(' + Table_FieldNames + ')');
// SQL.Add('SELECT ' + Table_FieldNames + ' FROM ' +
// frServerName1.sitem.ServerName + '.' + frServerName1.sitem.BankName +
// '.' + MyArray[i].SchemaName + MyArray[i].tableName);
// SQL.Add('AS ' + MyArray[i].tableName);
// SQL.Add('WHERE (NOT (' + MyArray[i].tableKeyName + ' IN (SELECT ' +
// MyArray[i].tableKeyName);
// SQL.Add('FROM ' + APPBank.Name + '.' + MyArray[i].SchemaName +
// MyArray[i].tableName + ')))');
// GoProgressBar(IntToStr(ExecSQL));
// end;
// BigMessage('اطلاعات پايه منتقل شد.‏', 0);
// end;
// CloseMessage;
// end;

procedure TRecallBranchF.lslTableNameClick(Sender: TObject);
var
  i: Integer;
  Table_FieldNames: String;
begin
  inherited;
  i := (Sender as TCheckListBox).ItemIndex;
  if i = -1 then
    Exit;
  i := Integer((Sender as TCheckListBox).Items.Objects[i]);
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

procedure TRecallBranchF.actShiftExecute(Sender: TObject);
begin
  inherited;
  if get_response
    ('دقت كنيد كه اين عمليات روي بانكي كه قرار است اطلاعات را فراخواني كند ( بانك جاري : '
    + APPBank.Name + ' )فقط يكبار اجرا شود.‏' + #10#13 + 'آيا ادامه مي دهيد؟')
    <> mrYes then
    Exit;
  With DMf.qryTmpTmp do
  begin
    Active := False;
    SQL.Text := 'SELECT max(ReciptID) FROM Recipts ';
    Active := True;
    if Fields[0].AsInteger > 10000000 then
    begin
      Warn('آماده سازي روي اين بانك انجام شده است.‏');
      Exit;
    end;
    Active := False;
    SQL.Text := 'Update ReciptItems set ReciptItemID=ReciptItemID+10000000';
    SQL.Add('Update ReciptItems set preReciptItemID=preReciptItemID+10000000');
    SQL.Add('WHERE (preReciptItemID IS NOT NULL)');
    SQL.Add('Update Recipts set ReciptID=ReciptID+10000000');
    SQL.Add('Update Recipts set ParentReciptID=ParentReciptID+10000000');
    SQL.Add('WHERE (ParentReciptID IS NOT NULL)');
    SQL.Add('Update ReciptsDeficits set ReciptDeficitID=ReciptDeficitID+10000000');
    BigMessage('لطفا صبر كنيد...‏', 0);
    ExecSQL;
    BigMessage('انجام شد.‏', 1);
    Active := False;
  end;
end;

procedure TRecallBranchF.adcSrcAfterConnect(Sender: TObject);
begin
  inherited;
  ChkServerID(adcSrc, actMove, actMoveBaseInfo)
end;

procedure TRecallBranchF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
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
