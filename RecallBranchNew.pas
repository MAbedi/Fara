{ -----------------------------------------------------------------------------
  Unit Name: RecallBranch
  Author:    M_A_H_M_O_O_D
  Purpose:
  History:
  ----------------------------------------------------------------------------- }
unit RecallBranchNew;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DBCtrls, Grids, Vcl.DBGrids, StrUtils,
  ppDB, ppDBPipe, ppComm, ppRelatv, ppProd, ppClass, ppReport, ppPrnabl,
  ppCtrls, ppCache, ppBands, ppVar, ppStrtch, ppMemo, ppModule,
  ppTypes, ppSubRpt, Menus, DB, ADODB, Mask, ComCtrls, Provider, DBClient,
  ZipForge, SumDBGrid, FileCtrl, Tabs, System.ImageList, System.Actions;

type
  TRecallBranchNewF = class(Ttemplate2MDIF)
    qryTypesItems: TADOQuery;
    SrcTypesItems: TDataSource;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    actFilter: TAction;
    actSendExel: TAction;
    actSort: TAction;
    Image2: TImage;
    Image3: TImage;
    actMakeFiles: TAction;
    ZipForge1: TZipForge;
    qryTypesItemsReciptCaption: TStringField;
    qryTypesItemsReciptNumber: TIntegerField;
    qryTypesItemsReciptDate: TStringField;
    qryTypesItemsStoreID: TSmallintField;
    qryTypesItemsc_StoreName: TStringField;
    qryTypesItemsPersonID1: TIntegerField;
    qryTypesItemsCustName: TStringField;
    qryTypesItemsName: TStringField;
    qryTypesItemsEntity: TFloatField;
    qryTypesItemsWeight: TFloatField;
    qryTypesItemsTotalPrice: TBCDField;
    qryTypesItemsReciptNote: TStringField;
    qryTypesItemsReciptState: TWordField;
    actLoadNew: TAction;
    qryRecipts: TADOQuery;
    srcRecipts: TDataSource;
    actSaveNew: TAction;
    pnl2: TPanel;
    btnFilter: TBitBtn;
    btnMakeFiles1: TBitBtn;
    actLoadEdit: TAction;
    actSaveEdit: TAction;
    pnlSend: TPanel;
    grd2: TDBGrid;
    pnlLblL: TPanel;
    pnlGet: TPanel;
    pnl1: TPanel;
    btnMakeFiles: TBitBtn;
    btnLoadNew: TBitBtn;
    btnLoadNew1: TBitBtn;
    btnSaveNew: TBitBtn;
    grdReciptsDeficits: TDBGrid;
    pnl3: TPanel;
    grdReciptItems: TDBGrid;
    grdRecipts: TDBGrid;
    qryReciptItems: TADOQuery;
    srcReciptItems: TDataSource;
    qryReciptsDeficits: TADOQuery;
    srcReciptsDeficits: TDataSource;
    lbl1: TLabel;
    pnlBase: TPanel;
    lslTableName: TListBox;
    DBGrid3: TDBGrid;
    qryShow: TADOQuery;
    srcShow: TDataSource;
    actMoveBaseInfo: TAction;
    btnMoveBaseInfo: TBitBtn;
    qryTypesItemsServerID: TIntegerField;
    qryTypesItemsTransmittal: TIntegerField;
    statSend: TStatusBar;
    btnSendExel: TBitBtn;
    spl1: TSplitter;
    SCGroupBox1: TGroupBox;
    rg1: TRadioGroup;
    SCLabel1: TLabel;
    SCPanel1: TPanel;
    btnpathName: TSpeedButton;
    edtpathName: TEdit;
    actDelFilter: TAction;
    Panel1: TPanel;
    LblMoveBaseInfo: TLabel;
    Panel4: TPanel;
    BitBtn4: TBitBtn;
    btngrdRecips: TBitBtn;
    btngrdReciptItems: TBitBtn;
    BitBtn1: TBitBtn;
    statGet: TStatusBar;
    lstListFiles: TListBox;
    actDeleteLoadEdit: TAction;
    statItem: TStatusBar;
    Splitter1: TSplitter;
    procedure actFilterExecute(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actSendExelExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure qryTypesItemsReciptStateGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure actMakeFilesExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actLoadNewExecute(Sender: TObject);
    procedure actSaveNewExecute(Sender: TObject);
    procedure actLoadEditExecute(Sender: TObject);
    procedure actSaveEditExecute(Sender: TObject);
    procedure rg1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure qryReciptsAfterOpen(DataSet: TDataSet);
    procedure qryTypesItemsAfterOpen(DataSet: TDataSet);
    procedure qryReciptsAfterScroll(DataSet: TDataSet);
    procedure qryReciptItemsAfterOpen(DataSet: TDataSet);
    procedure qryReciptsDeficitsAfterOpen(DataSet: TDataSet);
    procedure btnpathNameClick(Sender: TObject);
    procedure edtpathNameExit(Sender: TObject);
    procedure lslTableNameClick(Sender: TObject);
    procedure actMoveBaseInfoExecute(Sender: TObject);
    procedure qryTypesItemsTransmittalGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure btnSendExelClick(Sender: TObject);
    procedure lstListFilesClick(Sender: TObject);
    procedure actDelFilterExecute(Sender: TObject);
    procedure btngrdRecipsClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure btngrdReciptItemsClick(Sender: TObject);
    procedure actDeleteLoadEditExecute(Sender: TObject);
  private
    { Private declarations }
    All_FROM_SQLText, Zip_Name: String;
    ListFiles: TStringList;
    procedure UpdateFilter;
    procedure MakeFiles4Transmittal;
    procedure MakeTableFile(TableName: String);
    procedure Insertdat(qryGet: TADOQuery; SchemaName, TableName: String;
      Transmittal: Byte; Save: Boolean; beginFieldCount: Byte);
    function loadReport(fname: String): String;
    procedure LoadSave(Transmittal: Byte; Save: Boolean);
    procedure UpdateTable;
    procedure MakeBaseInfo;
    procedure AddOrDeleteFiles(zf: TZipForge);
    procedure InsertBasedat(SchemaName, TableName: String; Save: Boolean;
      TID: Byte);
    procedure SetTransmittalDataSet(DataSet: TDataSet);
    procedure ReadPathLists;
  public
    { Public declarations }
  end;

var
  RecallBranchNewF: TRecallBranchNewF;

implementation

uses filter_ADO, FilterClass_ADO, GlobalPro, DM, GetOtherMoney,
  GetCheck, Recipts, searchCode_ADO, TreeChart,
  DBGrid2Print, mmessage, FormFunctions, search2, sort2, dmgConst, FaraConsts;

{$R *.dfm}

procedure TRecallBranchNewF.ReadPathLists;
var
  ListsPath: String;
  srch: TSearchRec;
begin
  try
    ListsPath := IncludeTrailingBackslash(Trim(edtpathName.Text));
    if not SysUtils.DirectoryExists(ListsPath) then
    begin
      CreateDir(ListsPath);
    end; // if
  finally
    lstListFiles.Items.Clear;
    ListFiles.Clear;
    ListFiles.Sorted := True;
    lstListFiles.Sorted := True;
    // SetLength(ListsPath,(length(ListsPath))-1) ;
    if FindFirst(ListsPath + '*.ZIP', faAnyFile, srch) = 0 then
    begin
      repeat
        ListFiles.Add(srch.Name);
        lstListFiles.Items.Add(srch.Name)
        // extractListName(srch.Name),TObject(StrToInt(MidStr(srch.Name,7,2))));
      until FindNext(srch) <> 0;
      FindClose(srch);
    end; // if
  end;
end;

procedure TRecallBranchNewF.UpdateFilter;
begin
  with qryTypesItems do
  begin
    Active := False;
    CommandTimeout := 0;
    SQL.Text := 'FROM ReciptTypes INNER JOIN';
    SQL.Add('Recipts ON ReciptTypes.ReciptType = Recipts.ReciptType LEFT OUTER JOIN');
    SQL.Add('ReciptsDeficits ON Recipts.ReciptID = ReciptsDeficits.ReciptID AND Recipts.ServerID = ReciptsDeficits.ServerID');
    SQL.Add('AND Recipts.YearID = ReciptsDeficits.YearID LEFT OUTER JOIN');
    SQL.Add('Customers AS Customers ON Recipts.PersonID1 = Customers.CustID LEFT OUTER JOIN');
    SQL.Add('ReciptItems AS ReciptItems ON Recipts.ReciptID = ReciptItems.ReciptID AND Recipts.ServerID =');
    SQL.Add('ReciptItems.ServerID AND Recipts.YearID = ReciptItems.YearID LEFT OUTER JOIN');
    SQL.Add('Stores AS Stores ON Recipts.StoreID = Stores.n_StoreID LEFT OUTER JOIN');
    SQL.Add('LookUps AS LookUps_SecondType ON Recipts.SecondType = LookUps_SecondType.LookUpID');

    SQL.Add('WHERE (ReciptTypes.TransmittalActive = 1)');
    // AND(ReciptTypes.EffectType IN (2, 4))');
    SQL.Add('AND (LookUps_SecondType.Code BETWEEN :SecondTypeFrom AND :SecondTypeTo )');
    SQL.Add('AND (Recipts.StoreID BETWEEN :StoreIDFrom AND :StoreIDTo)');
    SQL.Add('AND (Recipts.ReciptNumber BETWEEN :RcpNumberFrom AND :RcpNumberTo)');
    SQL.Add('AND (Recipts.ReciptDate BETWEEN :DateFrom AND :DateTo)');
    SQL.Add('AND (Recipts.PersonID1 BETWEEN :CustIDFrom AND :CustIDTo)');
    SQL.Add('AND (Recipts.Transmittal < 3)  ');
    All_FROM_SQLText := SQL.Text;

    SQL.Text :=
      'SELECT ReciptTypes.ReciptCaption, Stores.c_StoreName, Customers.CustName, SUM(ReciptItems.InputEntity +';
    SQL.Add('ReciptItems.OutputEntity) AS Entity,');
    SQL.Add('SUM(ReciptItems.InputWeight + ReciptItems.OutputWeight) AS Weight, SUM(ReciptItems.TotalInputPrice +');
    SQL.Add('ReciptItems.TotalOutputPrice) AS TotalPrice,');
    SQL.Add('LookUps_SecondType.Name, Recipts.ReciptNumber, Recipts.ReciptDate, Recipts.StoreID, Recipts.PersonID1,');
    SQL.Add('Recipts.ReciptNote, Recipts.ReciptState');
    SQL.Add(',Recipts.ServerID, Recipts.Transmittal');

    SQL.Add(All_FROM_SQLText);

    SQL.Add('GROUP BY Stores.c_StoreName, Customers.CustName, LookUps_SecondType.Name, ReciptTypes.ReciptCaption,');
    SQL.Add('Stores.n_StoreID, Recipts.ReciptNumber,Recipts.ReciptType,');
    SQL.Add('Recipts.ReciptDate, Recipts.StoreID, Recipts.PersonID1, Recipts.ReciptNote, Recipts.ReciptState');
    SQL.Add(',Recipts.ServerID, Recipts.Transmittal');

    SQL.Add('ORDER BY Recipts.ReciptType, Recipts.ReciptNumber');

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
    Parameters.ParamByName('CustIDFrom').Value :=
      GetcFrom(myParams.ParamValues['CustID'], ftInteger);
    Parameters.ParamByName('CustIDTo').Value :=
      GetcTo(myParams.ParamValues['CustID'], ftInteger);
    Active := True;
  end; // with
  Entity_Weight(grd2);
  with qryTypesItems.Parameters do
  begin
    pnlLblL.Caption := 'از تاريخ ' + ParamByName('DateFrom').Value + ' تا ' +
      ParamByName('DateTo').Value;
  end; // with
end;

procedure TRecallBranchNewF.actDeleteLoadEditExecute(Sender: TObject);
//var
//  s: string;
//  i: Integer;
begin
  inherited;
  if get_response
    (Format('آیا از حذف %d سطر نمایش شده زیر از بانک جاری مطمئن هستید؟',
    [qryRecipts.RecordCount])) <> mrYes then
    Exit;

  qryRecipts.DisableControls;
  qryRecipts.First;
  while not qryRecipts.Eof do
  begin
    with DMf.qryTmpTmp do
    begin
      Active := False;
      SQL.Text := 'Delete Recipts WHERE (ReciptState=0) AND (DocNo = 0) ';
      SQL.Add(Format('AND (ReciptID = %d)',
        [qryRecipts.FieldByName('ReciptID').AsInteger]));
      SQL.Add(Format('AND (ServerID = %d)',
        [qryRecipts.FieldByName('ServerID').AsInteger]));
      SQL.Add(Format('AND (YearID  = %d)',
        [qryRecipts.FieldByName('YearID').AsInteger]));
      SQL.Add('AND (ReciptID > ISNULL(ParentReciptID, 0))');

      SQL.Add('UPDATE Recipts SET ParentReciptID=null  WHERE (ReciptState=0)');
      SQL.Add(Format('AND (ParentReciptID = %d)',
        [qryRecipts.FieldByName('ReciptID').AsInteger]));
      SQL.Add(Format('AND (ServerID = %d)',
        [qryRecipts.FieldByName('ServerID').AsInteger]));
      SQL.Add(Format('AND (YearID  = %d)',
        [qryRecipts.FieldByName('YearID').AsInteger]));
      SQL.Add('AND (ReciptID < ISNULL(ParentReciptID, 0))');

      try
        BigMessage(IntToStr(ExecSQL) + ' فرم‌ حذف شد.', 2);
      except
        on E: Exception do
        begin
          Warn('اشكال در  حذف كردن  فرم‌' + E.Message);
        end;
      end;
    end;

    qryRecipts.Next;

  end;
  qryRecipts.EnableControls;

end;

procedure TRecallBranchNewF.actDelFilterExecute(Sender: TObject);
begin
  inherited;
  qryRecipts.Filtered := not qryRecipts.Filtered
end;

procedure TRecallBranchNewF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      AddItem(DMf.adcBSell, 'Number', 'شماره فرم', 'شماره ', ftInteger,
        dvMinMax, '', '', ciSimple, '', 'SELECT 0,999999999');
      AddItem(DMf.adcBSell, 'StoreID', ' انبار ', 'كد', ftInteger, dvMinMax, '',
        '', ciLookup, LookupSQL4Store2, MinMaxSQL4Store2);
      AddItem(DMf.adcBSell, 'SecondType', 'نوع اطلاعات ', 'كد اطلاعات ',
        ftInteger, dvMinMax, '', '', ciLookup,
        'SELECT LookUps.Code as Code, LookUps.Name as Name FROM Recipts ' +
        'INNER JOIN LookUps ON Recipts.SecondType = LookUps.LookUpID ' +
        'GROUP BY Recipts.SecondType, LookUps.Code, LookUps.Name',
        'SELECT MIN(LookUps.Code),999999999 FROM Recipts LEFT OUTER JOIN ' +
        'LookUps ON Recipts.SecondType = LookUps.LookUpID');
      AddItem(DMf.adcBSell, 'CustID', 'کد مشتری', 'مشتری ', ftInteger, dvMinMax,
        '', '', ciLookup,
        'SELECT Recipts.PersonID1 , Customers.CustName  FROM Recipts INNER JOIN   '
        + ' Customers ON Recipts.PersonID1 = Customers.CustID  ' +
        ' GROUP BY Recipts.PersonID1, Customers.CustName  ',
        ' SELECT  MIN(PersonID1) AS Expr1, MAX(PersonID1) AS Expr2   FROM  Recipts');
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

procedure TRecallBranchNewF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(grd2, 0);
end;

procedure TRecallBranchNewF.actSendExelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(grd2);
end;

procedure TRecallBranchNewF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryTypesItems);
end;

procedure TRecallBranchNewF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryTypesItems);
end;

procedure TRecallBranchNewF.qryTypesItemsReciptStateGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  Text := GetReciptState(qryTypesItems.FieldByName('ReciptState').AsInteger)
end;

procedure TRecallBranchNewF.MakeBaseInfo;
var
  i: Integer;
begin
  BigMessageProgBar('در حال ايجاد اطلاعات پايه  ', High(MyArray));
  With TADOQuery.Create(Self) do
    try
      for i := 1 to High(MyArray) do
      begin
        Connection := DMf.adcBSell;
        SQL.Text := 'SELECT * FROM ' + MyArray[i].SchemaName + MyArray[i]
          .TableName;
        Open;
        SaveToFile(edtpathName.Text + MyArray[i].TableName + '.dat');
        GoProgressBar(MyArray[i].tableCaption);
      end;
      BigMessage('اطلاعات پايه منتقل شد.‏', 0);
    finally
      Free;
    end;
  CloseMessage;
end;

procedure TRecallBranchNewF.actMakeFilesExecute(Sender: TObject);
begin
  inherited;
  MakeFiles4Transmittal
end;

procedure TRecallBranchNewF.MakeFiles4Transmittal;
var
  CopyZip_Name: string;
begin
  Zip_Name := MakeUniqDBBackupName('RB__' + APPBank.Name, var_glb_CurrentDate);
  CopyZip_Name := ExtractFilePath(Application.ExeName) + 'TransFara';
  CreateDir(CopyZip_Name);
  CopyZip_Name := CopyZip_Name + '\' + Zip_Name + '.zip';
  Zip_Name := edtpathName.Text + Zip_Name + '.zip';

  MakeBaseInfo;
  BigMessageProgBar('در حال ايجاد', 8);
  CreateDir(edtpathName.Text);
  SetCurrentDir(edtpathName.Text);
  GoProgressBar('1');
  MakeTableFile('Recipts');
  GoProgressBar('2');
  MakeTableFile('ReciptItems');
  GoProgressBar('3');
  MakeTableFile('ReciptsDeficits');
  GoProgressBar('4');
  with ZipForge1 do
  begin
    FileName := Zip_Name;
    OpenArchive;
    AddFiles('Recipts.dat'); // edtpathName.Text+
    AddFiles('ReciptItems.dat');
    AddFiles('ReciptsDeficits.dat');
    GoProgressBar('5');
    AddOrDeleteFiles(ZipForge1);
    GoProgressBar('6');
    CloseArchive;
  end; // with
  DeleteFile('Recipts.dat');
  DeleteFile('ReciptItems.dat');
  DeleteFile('ReciptsDeficits.dat');
  GoProgressBar('7');
  AddOrDeleteFiles(nil);
  CopyFile(PChar(Zip_Name), PChar(CopyZip_Name), False);

  if FileExists(Zip_Name) and FileExists(CopyZip_Name) then
    try
      DMf.adcBSell.BeginTrans;
      UpdateTable;
      GoProgressBar('8');
      UpdateFilter;
      ReadPathLists;
      DMf.adcBSell.CommitTrans;
      BigMessage('انجام شد.‏', 1);
      RunDoc(edtpathName.Text, 4);
    except
      on E: Exception do
      begin
        DMf.adcBSell.RollbackTrans;
        Warn('اشكال در عمليات' + E.Message);
      end;
    end
  else
    Warn('اشكال در عمليات');
  CloseMessage;

end;

procedure TRecallBranchNewF.MakeTableFile(TableName: String);
var
  FieldNames: String;
begin
  FieldNames := GetTableFieldNames(DMf.adcBSell, 'dbo.', TableName);
  With TADOQuery.Create(Self) do
    try
      Connection := DMf.adcBSell;
      CommandTimeout := 0;
      if TableName = 'Recipts' then
      begin
        SQL.Text :=
          'ReciptTypes.ReciptCaption,Stores.c_StoreName,Customers.CustName,';
        SQL.Add('SUM(InputEntity + OutputEntity) AS Entity,');
        SQL.Add('SUM(InputWeight + OutputWeight) AS Weight, ');
        SQL.Add('SUM(TotalInputPrice + TotalOutputPrice) AS TotalPrice,');
        SQL.Add('LookUps_SecondType.Name,');
      end;
      SQL.Text := 'SELECT ' + SQL.Text +
        'Recipts.Transmittal AS ChkTransmittal,' + FieldNames;
      SQL.Add(All_FROM_SQLText);
      SQL.Add('AND (' + TableName + '.ReciptID IS NOT NULL)');
      SQL.Add('GROUP BY Recipts.Transmittal,' + FieldNames);
      if TableName = 'Recipts' then
        SQL.Add(',ReciptCaption,c_StoreName,Customers.CustName,LookUps_SecondType.Name');

      Parameters := qryTypesItems.Parameters;
      Active := True;
      SaveToFile(edtpathName.Text + TableName + '.dat');
    finally
      Free;
    end;
end;

procedure TRecallBranchNewF.UpdateTable;
begin
  With TADOQuery.Create(Self) do
    try
      Connection := DMf.adcBSell;
      CommandTimeout := 0;
      SQL.Text := 'UPDATE Recipts SET Transmittal = 3 ';
      SQL.Add(All_FROM_SQLText);
      Parameters := qryTypesItems.Parameters;
      BigMessage(IntToStr(ExecSQL) + 'فرم در فايل براي ارسال آماده شد.‏', 2);
    finally
      Free;
    end;
end;

procedure TRecallBranchNewF.AddOrDeleteFiles(zf: TZipForge);
var
  i: Integer;
begin
  for i := 1 to High(MyArray) do
    if zf = nil then
      DeleteFile(MyArray[i].TableName + '.dat')
    else
      zf.AddFiles(MyArray[i].TableName + '.dat');
end;

procedure TRecallBranchNewF.BitBtn1Click(Sender: TObject);
begin
  inherited;
  SendToExcel(grdReciptsDeficits);
end;

procedure TRecallBranchNewF.btngrdRecipsClick(Sender: TObject);
begin
  inherited;
  SendToExcel(grdRecipts);
end;

procedure TRecallBranchNewF.btngrdReciptItemsClick(Sender: TObject);
begin
  inherited;
  SendToExcel(grdReciptItems);
end;

procedure TRecallBranchNewF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  actFilter.Execute;
  if myParams.FindParam('Number') = nil then
    close;
end;

procedure TRecallBranchNewF.actLoadNewExecute(Sender: TObject);
begin
  inherited;
  lbl1.Caption := (Sender as TAction).Caption;
  LoadSave(0, False)
end;

procedure TRecallBranchNewF.actSaveNewExecute(Sender: TObject);
begin
  inherited;
  lbl1.Caption := (Sender as TAction).Caption;
  LoadSave(0, True)
end;

procedure TRecallBranchNewF.actLoadEditExecute(Sender: TObject);
begin
  inherited;
  lbl1.Caption := (Sender as TAction).Caption;
  LoadSave(1, False)
end;

procedure TRecallBranchNewF.actSaveEditExecute(Sender: TObject);
begin
  inherited;
  lbl1.Caption := (Sender as TAction).Caption;
  LoadSave(1, True)
end;

procedure TRecallBranchNewF.LoadSave(Transmittal: Byte; Save: Boolean);
var
  s: string;
begin
  try
    if not FileExists(Zip_Name) then
    begin
      Warn('فايل ' + Zip_Name + ' پيدا نشد.‏!‏');
      Exit;
    end;
    s := ReadConfig(APPID, 'RecallBranchNewFFile' + IntToStr(Transmittal), '');
    if s = Zip_Name then
      if get_response('اين فايل قبلا فراخواني شده آيادوباره فراخواني شود؟') <> mrYes
      then
        Exit;

    if Transmittal = 1 then
      Warn('اطلاعات موجود در اين ليست اطلاعاتي است كه ' + #13 +
        'قبلا دريافت شده ولي در بانك مبدا دوباره ويرايش شده است' + #13 +
        'براي ذخيره دوباره آنها بايد از بانك جاري فرمهاي قبل حذف شوند و دوباره دريافت شوند');

    DMf.adcBSell.BeginTrans;
    grd2.Columns.Clear;
//     qryRecipts.AfterScroll := nil;
    Insertdat(qryRecipts, '', 'Recipts', Transmittal, Save, 8);
    statGet.Panels[0].Text := 'تعداد = ' + IntToStr(qryRecipts.RecordCount);
    Insertdat(qryReciptItems, '', 'ReciptItems', Transmittal, Save, 1);
    Insertdat(qryReciptsDeficits, '', 'ReciptsDeficits', Transmittal, Save, 1);
     qryRecipts.AfterScroll := qryReciptsAfterScroll;
    DMf.adcBSell.CommitTrans;
    if Save then
      SaveConfig(APPID, 'RecallBranchNewFReadFile' + IntToStr(Transmittal),
        Zip_Name);
    BigMessage('انجام شد.‏', 1);
  except
    on E: Exception do
    begin
      DMf.adcBSell.RollbackTrans;
      Warn('اشكال در عمليات' + E.Message);
    end;
  end; // try
end;

procedure TRecallBranchNewF.Insertdat(qryGet: TADOQuery;
  SchemaName, TableName: String; Transmittal: Byte; Save: Boolean;
  beginFieldCount: Byte);
var
  i: Integer;
begin
  With qryGet do
  begin
    try
      LoadFromFile(loadReport(TableName + '.dat'));
    except
      on E: Exception do
      begin
        if E.Message <> 'qryReciptItems: Cannot perform this operation on a closed dataset'
        then
          Warn('فايل ارسالي كامل نمي باشد', mtError);
        Exit;
      end;
    end;
    Filter := 'ChkTransmittal =  ' + IntToStr(Transmittal);
    Filter := Filter + ' AND (ServerID <>  ' + IntToStr(opt.ServerID) + ')';
    Filtered := True;
  end;
  if not Save then
    Exit;
  try
    qryRecipts.AfterScroll := nil;
    With TADOQuery.Create(Self) do
      try
        Connection := DMf.adcBSell;
        SQL.Text := 'SELECT Top 0 * FROM ' + SchemaName + TableName;
        Active := True;
        while not qryGet.Eof do
        begin
          Insert;
          for i := beginFieldCount to qryGet.FieldCount - 1 do
            if (FindField(qryGet.Fields[i].FieldName) <> nil) And
              (not FieldByName(qryGet.Fields[i].FieldName).ReadOnly) then
              FieldByName(qryGet.Fields[i].FieldName).AsString :=
                qryGet.FieldByName(qryGet.Fields[i].FieldName).AsString;
          Post;
          qryGet.Next;
        end; // while
      finally
        Free;
      end;
  finally
    qryRecipts.AfterScroll := qryReciptsAfterScroll;
  end;

end;

function TRecallBranchNewF.loadReport(fname: String): String;
begin
  inherited;
  Result := '';
  with ZipForge1 do
  begin
    FileName := Zip_Name;
    OpenArchive;
    BaseDir := __TheTempDIR;
    ExtractFiles(fname);
    CloseArchive;
  end; // with
  Result := IncludeTrailingBackslash(__TheTempDIR) + fname;
  if not FileExists(Result) then
  begin
    Result := '';
  end;
end;

procedure TRecallBranchNewF.rg1Click(Sender: TObject);
begin
  inherited;
  pnlSend.Visible := rg1.ItemIndex = 0;
  pnl2.Visible := pnlSend.Visible;
  pnlGet.Visible := not pnlSend.Visible;
  if pnlSend.Visible then
  begin
    pnlSend.Align := alClient;
    SCLabel1.Caption := 'مسير ارسال';
    SCGroupBox1.Caption := 'ارسال';
  end
  else
  begin
    pnlGet.Align := alClient;
    SCLabel1.Caption := 'مسير دريافت';
    SCGroupBox1.Caption := 'دريافت';
  end;

end;

procedure TRecallBranchNewF.FormCreate(Sender: TObject);
begin
  inherited;
  ListFiles := TStringList.Create;
  Application.CreateForm(TdmgConstF, dmgConstF);
  dmgConstF.FillListBox(lslTableName);
  edtpathName.Text := ReadConfig(APPID, Self.Name + 'pathName',
    edtpathName.Text);
  ReadPathLists;
  rg1.ItemIndex := StrToInt(ReadConfig(APPID, Self.Name + 'rg1', '0'));
  rg1Click(rg1);
end;

procedure TRecallBranchNewF.FormDestroy(Sender: TObject);
begin
  inherited;
  ListFiles.Free;
  dmgConstF.Free;
  SaveColWidth(grd2);
  SaveColWidth(grdReciptsDeficits);
  SaveColWidth(grdReciptItems);
  SaveColWidth(grdRecipts);
  SaveConfig(APPID, Self.Name + 'pathName', edtpathName.Text);
  SaveConfig(APPID, Self.Name + 'rg1', IntToStr(rg1.ItemIndex));
end;

procedure TRecallBranchNewF.qryReciptsAfterOpen(DataSet: TDataSet);
var
  i: Byte;
begin
  inherited;
  SetTransmittalDataSet(DataSet);
  SetColSize(grdRecipts, 0);
  // qryRecipts.FieldByName('ServerID').DisplayLabel:='Server ID';
  for i := 0 to qryTypesItems.FieldCount - 1 do
  begin
    if qryRecipts.FindField(qryTypesItems.Fields[i].FieldName) <> nil then
      qryRecipts.FieldByName(qryTypesItems.Fields[i].FieldName).DisplayLabel :=
        qryTypesItems.Fields[i].DisplayLabel;
    if qryRecipts.FieldByName(grdRecipts.Columns[i].FieldName) is TBCDField then
      TBCDField(qryRecipts.FieldByName(grdRecipts.Columns[i].FieldName))
        .currency := True;

  end;
  statGet.Panels[0].Text := 'تعداد = ' + IntToStr(qryRecipts.RecordCount);

end;

procedure TRecallBranchNewF.qryTypesItemsAfterOpen(DataSet: TDataSet);
var
  i: Byte;
begin
  inherited;
  if grdRecipts.Columns.Count < 2 then
    for i := 0 to grd2.Columns.Count - 1 do
      With grdRecipts.Columns.Add do
      begin
        Width := grd2.Columns[i].Width;
        FieldName := grd2.Columns[i].FieldName;
        Index := i;
      end;
  statSend.Panels[0].Text := 'تعداد = ' + IntToStr(DataSet.RecordCount);
end;

procedure TRecallBranchNewF.qryReciptsAfterScroll(DataSet: TDataSet);
begin
  inherited;
  statItem.Panels[0].Text := '';
  with qryReciptItems do
  begin
    Filter := Format('ReciptID = %d AND YearID = %d AND ServerID = %d ',
      [DataSet.FieldByName('ReciptID').AsInteger, DataSet.FieldByName('YearID')
      .AsInteger, DataSet.FieldByName('ServerID').AsInteger]);
    Filtered := True;
  end;
  with qryReciptsDeficits do
  begin
    Filter := qryReciptItems.Filter;
    Filtered := True;
  end;
  statItem.Panels[0].Text := 'تعداد = ' + IntToStr(qryReciptItems.RecordCount);

end;

procedure TRecallBranchNewF.qryReciptItemsAfterOpen(DataSet: TDataSet);
var
  i: Byte;
begin
  inherited;
  SetTransmittalDataSet(DataSet);
  qryReciptItems.FieldByName('StuffCode').DisplayLabel := 'كدكالا';
  qryReciptItems.FieldByName('InputEntity').DisplayLabel := opt.EntityCaption;
  qryReciptItems.FieldByName('OutputEntity').DisplayLabel :=
    opt.EntityCaption + '#';
  qryReciptItems.FieldByName('InputWeight').DisplayLabel := opt.WeightCaption;
  qryReciptItems.FieldByName('OutputWeight').DisplayLabel :=
    opt.WeightCaption + '#';
  qryReciptItems.FieldByName('TotalInputPrice').DisplayLabel := 'مبلغ';
  qryReciptItems.FieldByName('TotalOutputPrice').DisplayLabel := 'مبلغ.';
  qryReciptItems.FieldByName('UnitSellPrice').DisplayLabel := 'في';
  qryReciptItems.FieldByName('TotallSellPrice').DisplayLabel := 'خالص';
  qryReciptItems.FieldByName('ItemNote').DisplayLabel := 'توضيحات';
  qryReciptItems.FieldByName('ServerID').DisplayLabel := 'Server ID';

  for i := 0 to grdReciptItems.Columns.Count - 1 do
  begin
    grdReciptItems.Columns[i].Visible := grdReciptItems.Columns[i].Title.Caption
      <> grdReciptItems.Columns[i].FieldName;
    if qryReciptItems.FieldByName(grdReciptItems.Columns[i].FieldName) is TBCDField
    then
      TBCDField(qryReciptItems.FieldByName(grdReciptItems.Columns[i].FieldName))
        .currency := True;
  end;
  SetColSize(grdReciptItems, 0);

end;

procedure TRecallBranchNewF.SetTransmittalDataSet(DataSet: TDataSet);
begin
  DataSet.FieldByName('ChkTransmittal').DisplayLabel := 'ارسال';
  DataSet.FieldByName('chkTransmittal').OnGetText :=
    qryTypesItemsTransmittalGetText;
  if DataSet.FindField('Transmittal') <> nil then
    DataSet.FieldByName('Transmittal').OnGetText :=
      qryTypesItemsTransmittalGetText;
end;

procedure TRecallBranchNewF.qryReciptsDeficitsAfterOpen(DataSet: TDataSet);
var
  i: Byte;
begin
  inherited;
  SetTransmittalDataSet(DataSet);
  qryReciptsDeficits.FieldByName('DeficitAdd').DisplayLabel := 'اضافات';
  qryReciptsDeficits.FieldByName('DeficitDec').DisplayLabel := 'كسورات';
  for i := 0 to grdReciptsDeficits.Columns.Count - 1 do
  begin
    grdReciptsDeficits.Columns[i].Visible := grdReciptsDeficits.Columns[i]
      .Title.Caption <> grdReciptsDeficits.Columns[i].FieldName;
    if qryReciptsDeficits.FieldByName(grdReciptsDeficits.Columns[i].FieldName)
      is TBCDField then
      TBCDField(qryReciptsDeficits.FieldByName(grdReciptsDeficits.Columns[i]
        .FieldName)).currency := True;
  end;
  SetColSize(grdReciptsDeficits, 0);
end;

procedure TRecallBranchNewF.btnpathNameClick(Sender: TObject);
var
  s: String;
  i: Integer;
begin
  inherited;
  s := edtpathName.Text;
  i := rg1.ItemIndex;
  if i < 0 then
    i := 0;
  if SelectDirectory('لطفاً مسير  ' + rg1.Items[i] + ' را وارد كنيد:', '', s)
  then
    edtpathName.Text := IncludeTrailingBackslash(s);
  ReadPathLists;
end;

procedure TRecallBranchNewF.edtpathNameExit(Sender: TObject);
begin
  inherited;
  edtpathName.Text := IncludeTrailingBackslash(edtpathName.Text)
end;

procedure TRecallBranchNewF.lslTableNameClick(Sender: TObject);
var
  i: Integer;
begin
  inherited;
  i := (Sender as TListBox).ItemIndex;
  if i = -1 then
    Exit;
  i := Integer((Sender as TListBox).Items.Objects[i]);
  InsertBasedat(MyArray[i].SchemaName, MyArray[i].TableName, False, i);
end;

procedure TRecallBranchNewF.InsertBasedat(SchemaName, TableName: String;
  Save: Boolean; TID: Byte);
var
  i: Byte;
  qryBase: TADOQuery;
begin
  With qryShow do
  begin

    LoadFromFile(loadReport(TableName + '.dat'));
    FieldByName(MyArray[TID].tableKeyName).DisplayLabel := 'كد';
    FieldByName(MyArray[TID].KeyFieldName).DisplayLabel := 'عنوان';
  end;
  qryBase := TADOQuery.Create(Self);
  With qryBase do
    try
      Connection := DMf.adcBSell;
      SQL.Text := 'SELECT  * FROM ' + SchemaName + TableName;
      Active := True;
      while not Eof do
      begin
        if qryShow.Locate(MyArray[TID].tableKeyName + ';' + MyArray[TID]
          .KeyFieldName,
          VarArrayOf([qryBase.FieldByName(MyArray[TID].tableKeyName).Value,
          qryBase.FieldByName(MyArray[TID].KeyFieldName).Value]), []) then
          qryShow.Delete;
        Next;
      end; // while
    finally
      Free;
    end;

  if Save then
    With TADOQuery.Create(Self) do
      try
        Connection := DMf.adcBSell;
        SQL.Text := 'SELECT * FROM ' + SchemaName + TableName;
        Active := True;
        qryShow.First;
        while not qryShow.Eof do
        begin
          if not Locate(MyArray[TID].tableKeyName,
            qryShow.FieldByName(MyArray[TID].tableKeyName).Value, []) then
          begin
            Insert;
            for i := 0 to qryShow.FieldCount - 1 do
              if (qryShow.FieldByName(qryShow.Fields[i].FieldName).AsString <>
                EmptyStr) and (not FieldByName(qryShow.Fields[i].FieldName)
                .ReadOnly) then
                FieldByName(qryShow.Fields[i].FieldName).AsString :=
                  qryShow.FieldByName(qryShow.Fields[i].FieldName).AsString;
            Post;
          end;

          qryShow.Next;
        end; // while
      finally
        Free;
      end;

end;

procedure TRecallBranchNewF.actMoveBaseInfoExecute(Sender: TObject);
var
  i: Integer;
begin
  inherited;
  if not FileExists(Zip_Name) then
  begin
    Warn('فايل ' + Zip_Name + ' پيدا نشد.‏!‏');
    Exit;
  end;

  DMf.adcBSell.BeginTrans;
  try
    BigMessageProgBar('در حال انتقال اطلاعات پايه  ', High(MyArray));
    for i := 1 to High(MyArray) do
    begin
      InsertBasedat(MyArray[i].SchemaName, MyArray[i].TableName, True, i);
      GoProgressBar(MyArray[i].tableCaption);
    end;
    CloseMessage;
    DMf.adcBSell.CommitTrans;
    BigMessage('اطلاعات پايه منتقل شد.‏', 0);
  except
    on E: Exception do
    begin
      DMf.adcBSell.RollbackTrans;
      Warn('اشكال در عمليات' + E.Message);
    end;
  end; // try
end;

procedure TRecallBranchNewF.qryTypesItemsTransmittalGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  Text := GetTransmittal(Sender.AsInteger)
end;

procedure TRecallBranchNewF.btnSendExelClick(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid3);
end;

procedure TRecallBranchNewF.lstListFilesClick(Sender: TObject);
var
  i: Integer;
begin
  inherited;
  i := lstListFiles.ItemIndex;
  if i <> -1 then
  begin
    Zip_Name := IncludeTrailingBackslash(Trim(edtpathName.Text)) + ListFiles[i];
  end
  else
    Zip_Name := '';
  lstListFiles.Hint := ListFiles[i];
end;

end.
