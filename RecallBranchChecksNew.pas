{ -----------------------------------------------------------------------------
  Unit Name: RecallBranch
  Author:    M_A_H_M_O_O_D
  Purpose:
  History:
  ----------------------------------------------------------------------------- }
unit RecallBranchChecksNew;

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
  TRecallBranchChecksNewF = class(Ttemplate2MDIF)
    qryTypesItems: TADOQuery;
    SrcTypesItems: TDataSource;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn4: TBitBtn;
    actFilter: TAction;
    actSendExel: TAction;
    actSort: TAction;
    Image2: TImage;
    Image3: TImage;
    actMakeFiles: TAction;
    ZipForge1: TZipForge;
    actLoadNew: TAction;
    qryForms: TADOQuery;
    srcForms: TDataSource;
    actSaveNew: TAction;
    pnl2: TPanel;
    btnFilter: TBitBtn;
    btnMakeFiles1: TBitBtn;
    actLoadEdit: TAction;
    actSaveEdit: TAction;
    pnlSend: TPanel;
    grd2: TDBGrid;
    pnlLblL: TPanel;
    SumGrid1: TSumGrid;
    pnlGet: TPanel;
    pnl1: TPanel;
    btnMakeFiles: TBitBtn;
    btnLoadNew: TBitBtn;
    btnLoadNew1: TBitBtn;
    btnSaveNew: TBitBtn;
    pnl3: TPanel;
    grdFormItems: TDBGrid;
    grdForms: TDBGrid;
    qryFormItems: TADOQuery;
    srcFormItems: TDataSource;
    lbl1: TLabel;
    pnlBase: TPanel;
    LblMoveBaseInfo: TLabel;
    lslTableName: TListBox;
    DBGrid3: TDBGrid;
    qryShow: TADOQuery;
    srcShow: TDataSource;
    actMoveBaseInfo: TAction;
    btnMoveBaseInfo: TBitBtn;
    stat1: TStatusBar;
    btnSendExel: TBitBtn;
    qryTypesItemsFormCaption: TStringField;
    qryTypesItemsCustName: TStringField;
    qryTypesItemsItemAmount: TBCDField;
    qryTypesItemsFormNumber: TIntegerField;
    qryTypesItemsFormDate: TStringField;
    qryTypesItemsCustomerID1: TIntegerField;
    qryTypesItemsFomNote: TStringField;
    qryTypesItemsFormState: TWordField;
    qryTypesItemsServerID: TIntegerField;
    qryTypesItemsTransmittal: TIntegerField;
    spl1: TSplitter;
    SCGroupBox1: TGroupBox;
    lstListFiles: TListBox;
    rg1: TRadioGroup;
    SCLabel1: TLabel;
    SCPanel1: TPanel;
    btnpathName: TSpeedButton;
    edtpathName: TEdit;
    procedure actFilterExecute(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actSendExelExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actMakeFilesExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actLoadNewExecute(Sender: TObject);
    procedure actSaveNewExecute(Sender: TObject);
    procedure actLoadEditExecute(Sender: TObject);
    procedure actSaveEditExecute(Sender: TObject);
    procedure rg1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure qryFormsAfterOpen(DataSet: TDataSet);
    procedure qryTypesItemsAfterOpen(DataSet: TDataSet);
    procedure qryFormsAfterScroll(DataSet: TDataSet);
    procedure qryFormItemsAfterOpen(DataSet: TDataSet);
    procedure btnpathNameClick(Sender: TObject);
    procedure edtpathNameExit(Sender: TObject);
    procedure lslTableNameClick(Sender: TObject);
    procedure actMoveBaseInfoExecute(Sender: TObject);
    procedure qryTypesItemsTransmittalGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure btnSendExelClick(Sender: TObject);
    procedure qryTypesItemsFormStateGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure lstListFilesClick(Sender: TObject);
  private
    { Private declarations }
    All_FROM_SQLText, Zip_Name: String;
    ListFiles: TStringList;
    procedure UpdateFilter;
    procedure MakeFiles4Transmittal;
    procedure MakeTableFile(TableName: String);
    procedure Insertdat(qryGet: TADOQuery; TableName: String; Transmittal: Byte;
      Save: Boolean; beginFieldCount: Byte);
    function loadReport(fname: String): String;
    procedure LoadSave(Transmittal: Byte; Save: Boolean);
    procedure UpdateTable;
    procedure MakeBaseInfo;
    procedure AddOrDeleteFiles(zf: TZipForge);
    procedure InsertBasedat(SchemaName,TableName: String; Save: Boolean; TID: Byte);
    procedure SetTransmittalDataSet(DataSet: TDataSet);
    procedure ReadPathLists;
  public
    { Public declarations }
  end;

var
  RecallBranchChecksNewF: TRecallBranchChecksNewF;

implementation

uses filter_ADO, FilterClass_ADO, GlobalPro, DM, GetOtherMoney,
  GetCheck, searchCode_ADO, TreeChart,
  DBGrid2Print, mmessage, FormFunctions, search2, sort2, dmgConst, FaraConsts;

{$R *.dfm}

procedure TRecallBranchChecksNewF.ReadPathLists;
var
  ListsPath: String;
  srch: TSearchRec;
begin
  ListsPath := IncludeTrailingBackslash(Trim(edtpathName.Text));
  if not DirectoryExists(ListsPath) then
  begin
    Warn('„”Ì— Ê«—œ ‘œÂ „⁄ »— ‰Ì” .');
    edtpathName.SetFocus;
    Exit;
  end; // if
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

procedure TRecallBranchChecksNewF.UpdateFilter;
begin
  with qryTypesItems do
  begin
    Active := False;
    CommandTimeout := 0;
    SQL.Text := 'FROM FormTypes INNER JOIN';
    SQL.Add('Forms ON FormTypes.FormType = Forms.FormType LEFT OUTER JOIN');
    SQL.Add('Customers AS Customers ON Forms.CustomerID1 = Customers.CustID LEFT OUTER JOIN');
    SQL.Add('FormItems AS FormItems ON Forms.FormID = FormItems.FormID AND Forms.ServerID = FormItems.ServerID AND');
    SQL.Add('Forms.YearID = FormItems.YearID');

    SQL.Add('WHERE (FormTypes.TransmittalActive = 1)');
    SQL.Add('AND (Forms.FormNumber BETWEEN :FormNumberFrom AND :FormNumberTo)');
    SQL.Add('AND (Forms.FormDate BETWEEN :DateFrom AND :DateTo)');
    SQL.Add('AND (Forms.Transmittal < 3)  ');
    All_FROM_SQLText := SQL.Text;

    SQL.Text :=
      'SELECT FormTypes.FormCaption, Customers.CustName,dbo.FormItemsAmount(Forms.FormID,Forms.ServerID,Forms.YearID) AS ItemAmount, ';
    SQL.Add('Forms.FormNumber, Forms.FormDate, Forms.CustomerID1,');
    SQL.Add('Forms.FomNote, Forms.FormState, Forms.ServerID, Forms.Transmittal');

    SQL.Add(All_FROM_SQLText);

    SQL.Add('GROUP BY Customers.CustName, FormTypes.FormCaption, Forms.FormNumber,');
    SQL.Add('Forms.FormType, Forms.FormDate, Forms.CustomerID1, Forms.FomNote, Forms.FormState,');
    SQL.Add('Forms.ServerID, Forms.Transmittal,Forms.FormID,Forms.YearID');

    SQL.Add('ORDER BY Forms.FormType, Forms.FormNumber');

    Parameters.ParamByName('DateFrom').Value :=
      GetcFrom(myParams.ParamValues['Date'], ftDate);
    Parameters.ParamByName('DateTo').Value :=
      GetcTo(myParams.ParamValues['Date'], ftDate);
    Parameters.ParamByName('FormNumberFrom').Value :=
      GetcFrom(myParams.ParamValues['Number'], ftInteger);
    Parameters.ParamByName('FormNumberTo').Value :=
      GetcTo(myParams.ParamValues['Number'], ftInteger);
    Active := True;
  end; // with
  Entity_Weight(grd2);
  with qryTypesItems.Parameters do
  begin
    pnlLblL.Caption := '«“  «—ÌŒ ' + ParamByName('DateFrom').Value + '  « ' +
      ParamByName('DateTo').Value;
  end; // with
end;

procedure TRecallBranchChecksNewF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      AddItem(DMf.adcBSell, 'Number', '‘„«—Â ›—„', '‘„«—Â ', ftInteger,
        dvMinMax, '', '', ciSimple, '', 'SELECT 0,999999999');
      AddItem(DMf.adcBSell, 'Date', '  «—ÌŒ ', ' «—ÌŒ', ftDate, dvMinMax, '',
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

procedure TRecallBranchChecksNewF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(grd2, 4);
end;

procedure TRecallBranchChecksNewF.actSendExelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(grd2);
end;

procedure TRecallBranchChecksNewF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryTypesItems);
end;

procedure TRecallBranchChecksNewF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryTypesItems);
end;

procedure TRecallBranchChecksNewF.MakeBaseInfo;
var
  i: Integer;
begin
  BigMessageProgBar('œ— Õ«· «ÌÃ«œ «ÿ·«⁄«  Å«ÌÂ  ', High(MyArray));
  With TADOQuery.Create(Self) do
    try
      for i := 1 to High(MyArray) do
      begin
        Connection := DMf.adcBSell;
        SQL.Text := 'SELECT * FROM ' + MyArray[i].SchemaName + MyArray[i].TableName;
        Open;
        SaveToFile(edtpathName.Text + MyArray[i].TableName + '.dat');
        GoProgressBar(MyArray[i].tableCaption);
      end;
      BigMessage('«ÿ·«⁄«  Å«ÌÂ „‰ ﬁ· ‘œ.˛', 0);
    finally
      Free;
    end;
  CloseMessage;
end;

procedure TRecallBranchChecksNewF.actMakeFilesExecute(Sender: TObject);
begin
  inherited;
  MakeFiles4Transmittal
end;

procedure TRecallBranchChecksNewF.MakeFiles4Transmittal;
begin
  Zip_Name := MakeUniqDBBackupName('RecallBranchChecks', var_glb_CurrentDate);
  Zip_Name := edtpathName.Text + Zip_Name + '.zip';

  MakeBaseInfo;
  BigMessageProgBar('œ— Õ«· «ÌÃ«œ', 8);
  CreateDir(edtpathName.Text);
  SetCurrentDir(edtpathName.Text);
  GoProgressBar('1');
  MakeTableFile('Forms');
  GoProgressBar('2');
  MakeTableFile('FormItems');
  GoProgressBar('3');
  with ZipForge1 do
  begin
    FileName := Zip_Name;
    OpenArchive;

    AddFiles('Forms.dat'); // edtpathName.Text+
    AddFiles('FormItems.dat');
    GoProgressBar('5');
    AddOrDeleteFiles(ZipForge1);
    GoProgressBar('6');
    CloseArchive;
  end; // with
  DeleteFile('Forms.dat');
  DeleteFile('FormItems.dat');
  GoProgressBar('7');
  AddOrDeleteFiles(nil);
  RunDoc(edtpathName.Text, 4);
  UpdateTable;
  GoProgressBar('8');
  UpdateFilter;
  CloseMessage;

  ReadPathLists;
end;

procedure TRecallBranchChecksNewF.MakeTableFile(TableName: String);
var
  FieldNames: String;
begin
  FieldNames := GetTableFieldNames(DMf.adcBSell,'dbo.', TableName);
  With TADOQuery.Create(Self) do
    try
      Connection := DMf.adcBSell;
      CommandTimeout := 0;
      if TableName = 'Forms' then
      begin
        SQL.Text := 'FormTypes.FormCaption,  Customers.CustName, ';
        SQL.Add('SUM(ItemAmount) AS ItemAmount,');
      end;
      SQL.Text := 'SELECT ' + SQL.Text + 'Forms.Transmittal AS ChkTransmittal,'
        + FieldNames;
      SQL.Add(All_FROM_SQLText);
      SQL.Add('AND (' + TableName + '.FormID IS NOT NULL)');
      SQL.Add('GROUP BY Forms.Transmittal,' + FieldNames);
      if TableName = 'Forms' then
        SQL.Add(',FormCaption,Customers.CustName');

      Parameters := qryTypesItems.Parameters;
      Active := True;
      SaveToFile(edtpathName.Text + TableName + '.dat');
    finally
      Free;
    end;
end;

procedure TRecallBranchChecksNewF.UpdateTable;
begin
  With TADOQuery.Create(Self) do
    try
      Connection := DMf.adcBSell;
      CommandTimeout := 0;
      SQL.Text := 'UPDATE Forms SET Transmittal = 3 ';
      SQL.Add(All_FROM_SQLText);
      Parameters := qryTypesItems.Parameters;
      BigMessage(IntToStr(ExecSQL) + '›—„ œ— ›«Ì· »—«Ì «—”«· ¬„«œÂ ‘œ.˛', 2);
    finally
      Free;
    end;
end;

procedure TRecallBranchChecksNewF.AddOrDeleteFiles(zf: TZipForge);
var
  i: Integer;
begin
  for i := 1 to High(MyArray) do
    if zf = nil then
      DeleteFile(MyArray[i].TableName + '.dat')
    else
      zf.AddFiles(MyArray[i].TableName + '.dat');
end;

procedure TRecallBranchChecksNewF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  actFilter.Execute;
  if myParams.FindParam('Number') = nil then
    close;
end;

procedure TRecallBranchChecksNewF.actLoadNewExecute(Sender: TObject);
begin
  inherited;
  lbl1.Caption := (Sender as TAction).Caption;
  LoadSave(0, False)
end;

procedure TRecallBranchChecksNewF.actSaveNewExecute(Sender: TObject);
begin
  inherited;
  lbl1.Caption := (Sender as TAction).Caption;
  LoadSave(0, True)
end;

procedure TRecallBranchChecksNewF.actLoadEditExecute(Sender: TObject);
begin
  inherited;
  lbl1.Caption := (Sender as TAction).Caption;
  LoadSave(1, False)
end;

procedure TRecallBranchChecksNewF.actSaveEditExecute(Sender: TObject);
begin
  inherited;
  lbl1.Caption := (Sender as TAction).Caption;
  LoadSave(1, True)
end;

procedure TRecallBranchChecksNewF.LoadSave(Transmittal: Byte; Save: Boolean);
begin
  if not FileExists(Zip_Name) then
  begin
    Warn('›«Ì· ' + Zip_Name + ' ÅÌœ« ‰‘œ.˛!˛');
    Exit;
  end;
  if Transmittal = 1 then
    Warn('«ÿ·«⁄«  „ÊÃÊœ œ— «Ì‰ ·Ì”  «ÿ·«⁄« Ì «”  ﬂÂ ' + #13 +
      'ﬁ»·« œ—Ì«›  ‘œÂ Ê·Ì œ— »«‰ﬂ „»œ« œÊ»«—Â ÊÌ—«Ì‘ ‘œÂ «” ' + #13 +
      '»—«Ì –ŒÌ—Â œÊ»«—Â ¬‰Â« »«Ìœ «“ »«‰ﬂ Ã«—Ì ›—„Â«Ì ﬁ»· Õ–› ‘Ê‰œ Ê œÊ»«—Â œ—Ì«›  ‘Ê‰œ');

  DMf.adcBSell.BeginTrans;
  try
    Insertdat(qryForms, 'Forms', Transmittal, Save, 4);
    Insertdat(qryFormItems, 'FormItems', Transmittal, Save, 1);
    DMf.adcBSell.CommitTrans;
    BigMessage('«‰Ã«„ ‘œ.˛', 1);
  except
    on E: Exception do
    begin
      DMf.adcBSell.RollbackTrans;
      Warn('«‘ﬂ«· œ— ⁄„·Ì« ' + E.Message);
    end;
  end; // try

end;

procedure TRecallBranchChecksNewF.Insertdat(qryGet: TADOQuery;
  TableName: String; Transmittal: Byte; Save: Boolean; beginFieldCount: Byte);
var
  i: Byte;
begin
  With qryGet do
  begin
    // Close;
    LoadFromFile(loadReport(TableName + '.dat')); // 'TransFara\'+
    Filter := 'ChkTransmittal =  ' + IntToStr(Transmittal);
    Filter := Filter + ' AND (ServerID <>  ' + IntToStr(opt.ServerID) + ')';
    Filtered := True;
  end;
  if not Save then
    Exit;

  // DMf.adcBSell.BeginTrans;
  try
    try
      qryForms.AfterScroll := nil;
      // qryFormItems.Filtered:=False;
      // qryFormsDeficits.Filtered:=False;
      With TADOQuery.Create(Self) do
        try
          Connection := DMf.adcBSell;
          SQL.Text := 'SELECT Top 0 * FROM ' + TableName;
          Active := True;
          while not qryGet.Eof do
          begin
            Insert;
            for i := beginFieldCount to qryGet.FieldCount - 1 do
              if (not FindField(qryGet.Fields[i].FieldName).ReadOnly) then
                FieldByName(qryGet.Fields[i].FieldName).AsString :=
                  qryGet.FieldByName(qryGet.Fields[i].FieldName).AsString;
            Post;
            qryGet.Next;
          end; // while
        finally
          Free;
        end;
    finally
      qryForms.AfterScroll := qryFormsAfterScroll;
    end;
    // DMf.adcBSell.CommitTrans;
  except
    on E: Exception do
    begin
      DMf.adcBSell.RollbackTrans;
      Warn('«‘ﬂ«· œ— ⁄„·Ì« ' + E.Message);
    end;
  end; // try

end;

function TRecallBranchChecksNewF.loadReport(fname: String): String;
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
    Result := '';
end;

procedure TRecallBranchChecksNewF.rg1Click(Sender: TObject);
begin
  inherited;
  pnlSend.Visible := rg1.ItemIndex = 0;
  pnl2.Visible := pnlSend.Visible;
  pnlGet.Visible := not pnlSend.Visible;
  if pnlSend.Visible then
  begin
    pnlSend.Align := alClient;
    SCLabel1.Caption := '„”Ì— «—”«·';
    SCGroupBox1.Caption := '«—”«·';
  end
  else
  begin
    pnlGet.Align := alClient;
    SCLabel1.Caption := '„”Ì— œ—Ì«› ';
    SCGroupBox1.Caption := 'œ—Ì«› ';
  end;
end;

procedure TRecallBranchChecksNewF.FormCreate(Sender: TObject);
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

procedure TRecallBranchChecksNewF.FormDestroy(Sender: TObject);
begin
  inherited;
  ListFiles.Free;
  dmgConstF.Free;
  SaveColWidth(grd2);
  SaveColWidth(grdFormItems);
  SaveColWidth(grdForms);
  SaveConfig(APPID, Self.Name + 'pathName', edtpathName.Text);
  SaveConfig(APPID, Self.Name + 'rg1', IntToStr(rg1.ItemIndex));
end;

procedure TRecallBranchChecksNewF.qryFormsAfterOpen(DataSet: TDataSet);
var
  i: Byte;
begin
  inherited;
  SetTransmittalDataSet(DataSet);
  SetColSize(grdForms, 0);
  // qryForms.FieldByName('ServerID').DisplayLabel:='Server ID';
  for i := 0 to qryTypesItems.FieldCount - 1 do
  begin
    if qryForms.FindField(qryTypesItems.Fields[i].FieldName) <> nil then
      qryForms.FieldByName(qryTypesItems.Fields[i].FieldName).DisplayLabel :=
        qryTypesItems.Fields[i].DisplayLabel;
    if qryForms.FieldByName(grdForms.Columns[i].FieldName) is TBCDField then
      TBCDField(qryForms.FieldByName(grdForms.Columns[i].FieldName))
        .currency := True;
  end;
  stat1.Panels[0].Text := ' ⁄œ«œ = ' + IntToStr(DataSet.RecordCount);
end;

procedure TRecallBranchChecksNewF.qryTypesItemsAfterOpen(DataSet: TDataSet);
var
  i: Byte;
begin
  inherited;
  if grdForms.Columns.Count < 2 then
    for i := 0 to grd2.Columns.Count - 1 do
      With grdForms.Columns.Add do
      begin
        Width := grd2.Columns[i].Width;
        FieldName := grd2.Columns[i].FieldName;
        Index := i;
      end;
end;

procedure TRecallBranchChecksNewF.qryFormsAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qryFormItems do
  begin
    Filter := Format('FormID = %d AND YearID = %d AND ServerID = %d ',
      [DataSet.FieldByName('FormID').AsInteger, DataSet.FieldByName('YearID')
      .AsInteger, DataSet.FieldByName('ServerID').AsInteger]);
    Filtered := True;
  end;
end;

procedure TRecallBranchChecksNewF.qryFormItemsAfterOpen(DataSet: TDataSet);
var
  i: Byte;
begin
  inherited;
  SetTransmittalDataSet(DataSet);
  qryFormItems.FieldByName('ItemAmount').DisplayLabel := '„»·€';

  qryFormItems.FieldByName('CheckNumber').DisplayLabel := '‘„«—Â çﬂ';
  qryFormItems.FieldByName('CheckDate').DisplayLabel := '”——”Ìœ çﬂ';
  qryFormItems.FieldByName('BankName').DisplayLabel := '‰«„ »«‰ﬂ';
  qryFormItems.FieldByName('ItemNote').DisplayLabel := ' Ê÷ÌÕ« ';
  qryFormItems.FieldByName('AccountNumber').DisplayLabel := '‰«„ ‘⁄»Â';
  qryFormItems.FieldByName('AccountNumberNew').DisplayLabel := '‘„«—Â˛Õ”«»';

  qryFormItems.FieldByName('City').DisplayLabel := '‘Â—';
  qryFormItems.FieldByName('CustomerID2').DisplayLabel := 'ﬂœ „‘ —Ì 2';

  qryFormItems.FieldByName('ServerID').DisplayLabel := 'Server ID';

  for i := 0 to grdFormItems.Columns.Count - 1 do
  begin
    grdFormItems.Columns[i].Visible := grdFormItems.Columns[i].Title.Caption <>
      grdFormItems.Columns[i].FieldName;
    if qryFormItems.FieldByName(grdFormItems.Columns[i].FieldName)
      is TBCDField then
      TBCDField(qryFormItems.FieldByName(grdFormItems.Columns[i].FieldName))
        .currency := True;
  end;
  SetColSize(grdFormItems, 0);
end;

procedure TRecallBranchChecksNewF.SetTransmittalDataSet(DataSet: TDataSet);
begin
  DataSet.FieldByName('ChkTransmittal').DisplayLabel := '«—”«·';
  DataSet.FieldByName('chkTransmittal').OnGetText :=
    qryTypesItemsTransmittalGetText;
  if DataSet.FindField('Transmittal') <> nil then
    DataSet.FieldByName('Transmittal').OnGetText :=
      qryTypesItemsTransmittalGetText;
end;

procedure TRecallBranchChecksNewF.btnpathNameClick(Sender: TObject);
var
  s: String;
begin
  inherited;
  s := edtpathName.Text;
  if SelectDirectory('·ÿ›« „”Ì—  ' + rg1.Items[rg1.ItemIndex] +
    ' —« Ê«—œ ﬂ‰Ìœ:', '', s) then
    edtpathName.Text := IncludeTrailingBackslash(s);
  ReadPathLists;
end;

procedure TRecallBranchChecksNewF.edtpathNameExit(Sender: TObject);
begin
  inherited;
  edtpathName.Text := IncludeTrailingBackslash(edtpathName.Text)
end;

procedure TRecallBranchChecksNewF.lslTableNameClick(Sender: TObject);
var
  i: Integer;
begin
  inherited;
  i := (Sender as TListBox).ItemIndex;
  if i = -1 then
    Exit;
  i := Integer((Sender as TListBox).Items.Objects[i]);
  InsertBasedat(MyArray[i].SchemaName,MyArray[i].TableName, False, i);
end;

procedure TRecallBranchChecksNewF.InsertBasedat(SchemaName,TableName: String;
  Save: Boolean; TID: Byte);
var
  i: Byte;
  qryBase: TADOQuery;
begin
  With qryShow do
  begin
    LoadFromFile(loadReport(TableName + '.dat'));
    FieldByName(MyArray[TID].tableKeyName).DisplayLabel := 'ﬂœ';
    FieldByName(MyArray[TID].KeyFieldName).DisplayLabel := '⁄‰Ê«‰';
  end;
  qryBase := TADOQuery.Create(Self);
  With qryBase do
    try
      Connection := DMf.adcBSell;
      SQL.Text := 'SELECT  * FROM ' +SchemaName+ TableName;
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

    // DMf.adcBSell.BeginTrans;
    try
      With TADOQuery.Create(Self) do
        try
          Connection := DMf.adcBSell;
          SQL.Text := 'SELECT * FROM ' +SchemaName+ TableName;
          Active := True;
          qryShow.First;
          while not qryShow.Eof do
          begin
            if not Locate(MyArray[TID].tableKeyName,
              qryShow.FieldByName(MyArray[TID].tableKeyName).Value, []) then
            begin
              Insert;
              for i := 0 to qryShow.FieldCount - 1 do
                if (not FindField(qryShow.Fields[i].FieldName).ReadOnly) then
                  FieldByName(qryShow.Fields[i].FieldName).AsString :=
                    qryShow.FieldByName(qryShow.Fields[i].FieldName).AsString;
              Post;
            end;

            qryShow.Next;
          end; // while
        finally
          Free;
        end;
      // DMf.adcBSell.CommitTrans;
    except
      on E: Exception do
      begin
        // DMf.adcBSell.RollbackTrans;
        Warn('«‘ﬂ«· œ— ⁄„·Ì« ' + E.Message);
      end;
    end; // try
end;

procedure TRecallBranchChecksNewF.actMoveBaseInfoExecute(Sender: TObject);
var
  i: Integer;
  Level: Integer;
begin
  inherited;
  if not FileExists(Zip_Name) then
  begin
    Warn('›«Ì· ' + Zip_Name + ' ÅÌœ« ‰‘œ.˛!˛');
    Exit;
  end;
  Level := DMf.adcBSell.BeginTrans;
  try
    BigMessageProgBar('œ— Õ«· «‰ ﬁ«· «ÿ·«⁄«  Å«ÌÂ  ', High(MyArray));
    for i := 1 to High(MyArray) do
    begin
      InsertBasedat( MyArray[i].SchemaName,MyArray[i].TableName, True, i);
      GoProgressBar(MyArray[i].tableCaption);
    end;

    DMf.adcBSell.CommitTrans;
    BigMessage('«ÿ·«⁄«  Å«ÌÂ „‰ ﬁ· ‘œ.˛', 0);
    CloseMessage;

  except
    on E: Exception do
    begin
      DMf.adcBSell.RollbackTrans;
      Warn('«‘ﬂ«· œ— ⁄„·Ì« ' + E.Message);
    end;
  end; // try
end;

procedure TRecallBranchChecksNewF.qryTypesItemsTransmittalGetText
  (Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  Text := GetTransmittal(Sender.AsInteger)
end;

procedure TRecallBranchChecksNewF.btnSendExelClick(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid3);
end;

procedure TRecallBranchChecksNewF.qryTypesItemsFormStateGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  Text := GetFormState(qryTypesItems.FieldByName('FormState').AsInteger)
end;

procedure TRecallBranchChecksNewF.lstListFilesClick(Sender: TObject);
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
end;

end.
