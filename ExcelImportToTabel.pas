unit ExcelImportToTabel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, Buttons, StdCtrls, ImgList, DBActns, ActnList,
  ExtCtrls, DB, ADODB, Grids, Vcl.DBGrids, Mask, ComObj, System.ImageList,
  System.Actions;

type
  TExcelImportToTabelF = class(Ttemplate2MDIF)
    Panel1: TPanel;
    Label1: TLabel;
    edtPath: TEdit;
    spdOpenFile: TSpeedButton;
    actOpenExcel: TAction;
    pnlSheet: TPanel;
    Label4: TLabel;
    cmbSheetName: TComboBox;
    Label2: TLabel;
    mskDate: TMaskEdit;
    Label3: TLabel;
    edtCust: TEdit;
    spdSearch: TSpeedButton;
    BitBtn2: TBitBtn;
    actRead: TAction;
    actPost: TAction;
    BitBtn3: TBitBtn;
    cmbGroup: TComboBox;
    Label5: TLabel;
    qryExcelImport: TADOQuery;
    srcExcelImport: TDataSource;
    DBGrid1: TDBGrid;
    qryExcelImportCellCode: TStringField;
    qryExcelImportStoreID: TSmallintField;
    qryExcelImportReciptType: TWordField;
    qryExcelImportKindValue: TWordField;
    qryExcelImportc_StuffName: TStringField;
    qryExcelImportReciptCaption: TStringField;
    qryExcelImport_ValueCell: TStringField;
    qryExcelImportStuffCode: TLargeintField;
    qryExcelImportGroupID: TIntegerField;
    procedure actOpenExcelExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actReadExecute(Sender: TObject);
    procedure actPostExecute(Sender: TObject);
    procedure spdSearchClick(Sender: TObject);
    procedure edtCustKeyPress(Sender: TObject; var Key: Char);
    procedure edtPathKeyPress(Sender: TObject; var Key: Char);
    procedure FormDestroy(Sender: TObject);
    procedure qryExcelImportAfterOpen(DataSet: TDataSet);
  private
    XlsPath : String;
    function ReadCell(Fname,Sheet,Cell:String): String;
    procedure GetSheet(Fname:String);
//    function GetStuffName(StuffCode: String) : String;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ExcelImportToTabelF: TExcelImportToTabelF;

implementation

uses DateUtils, GlobalPro, DM, mmessage, searchCode_ADO, FormFunctions,
  FaraConsts;

{$R *.dfm}


procedure TExcelImportToTabelF.actOpenExcelExecute(Sender: TObject);
begin
  inherited;
  with TOpenDialog.Create(Self) do
  try
    Filter := 'Excel|*.xls';
    if Execute and (FileName <> EmptyStr) then  edtPath.Text := FileName;
    if FileExists(FileName) then
    try
      GetSheet(FileName);
      XlsPath :=__TheTempDIR+'\tempxls.xls';
      CopyFile(pchar(FileName),pchar(XlsPath),False)
    except
      Warn('«‘ﬂ«· œ— ŒÊ«‰œ‰ ›«Ì·');
    end;
  finally
    Free;
  end;
end;

procedure TExcelImportToTabelF.FormCreate(Sender: TObject);
begin
  inherited;
  cmbGroup.ItemIndex := 0;
  mskDate.Text := var_glb_CurrentDate;

end;

function TExcelImportToTabelF.ReadCell;
var
  MyExcel,wb  : OLEVariant;
begin
  SetLength(sheet,length(sheet)-1);
  MyExcel := CreateOleObject('Excel.Application');
  try
    wb :=MyExcel.Workbooks.Open(Fname);
    Result := MyExcel.WorkSheets[Sheet].Range[Cell].value
  finally
    if not VarIsEmpty(MyExcel) then  MyExcel.Quit;
  end;

end;

procedure TExcelImportToTabelF.GetSheet(Fname: String);
var
  s:String;
begin
  S := Format('Provider=Microsoft.Jet.OLEDB.4.0;Data Source=%s;Extended Properties=excel 8.0;Persist Security Info=False',[FName]);
  with TADOConnection.Create(Self) do
  try
    Close;
    ConnectionString:= S;
    LoginPrompt := False;
    Open;
    GetTableNames(cmbSheetName.Items);
    //pnlSheet.Visible := cmbSheetName.Items.Count > 1;
    if pnlSheet.Visible then cmbSheetName.ItemIndex := 0;
  finally
    Free;
  end;
end;

procedure TExcelImportToTabelF.actReadExecute(Sender: TObject);
begin
  inherited;
  if XlsPath = EmptyStr then
  begin
    Warn('›«Ì· Excel —« «‰ Œ«» ﬂ‰Ìœ˛');
    Exit;
  end;
 try
  qryExcelImport.Close;
  qryExcelImport.Open;
  actPost.Enabled:= true;
 except
   actPost.Enabled:= False;
 end;

end;

procedure TExcelImportToTabelF.actPostExecute(Sender: TObject);
var
  QItems,Q : TADOQuery;
  AID: Integer;
  ANO: Integer;
  SID,RTID  : Integer;
begin
  inherited;
  Q := TADOQuery.Create(nil);
  QItems := TADOQuery.Create(nil);
  SID := 0;
  AID := 0;
  RTID  := SID;
  try
    qryExcelImport.DisableControls;
    qryExcelImport.First;
    with QItems do
    begin
    Connection := qryExcelImport.Connection;
    close;
    SQL.Text :='SELECT * FROM  ReciptItems WHERE (ReciptItemID = 0)';
    Open;
    end;
    with Q do
    begin
      Connection :=qryExcelImport.Connection;;
      Close;
      SQL.Text :='SELECT * FROM Recipts WHERE (ReciptID = 0)';
      Open;
    end;
  //----------------------------Open Qry for Post--------------------------------
    BigMessageProgBar('œ— Õ«· À» ....˛',qryExcelImport.RecordCount);
    with qryExcelImport do
    while not eof do
     try
      if (SID <> FieldByName('StoreID').AsInteger)  or (RTID <> FieldByName('ReciptType').AsInteger) then
      begin
        SID := FieldByName('StoreID').AsInteger;
        RTID:= FieldByName('ReciptType').AsInteger;
        AID := GetANewID(nil,Self.Name,'Recipts','ReciptID',nil,1);
        ANO := GetANewCode(Self.Name,'SELECT MAX(ReciptNumber)FROM Recipts WHERE(ReciptType='+ FieldByName('ReciptType').AsString+')','ReciptNumber');
        Q.Insert;
        Q.FieldByName('ReciptID').AsInteger := AID;
        Q.FieldByName('ReciptNumber').AsInteger := ANO;
        Q.FieldByName('ReciptType').AsInteger:= RTID;
        Q.FieldByName('ReciptDate').AsString:= mskDate.Text;
        Q.FieldByName('StoreID').AsInteger:= SID;
        Q.FieldByName('PersonID1').AsInteger:= StrToIntDef(edtCust.Text,0);
        Q.FieldByName('ModifyDate').AsDateTime := Now;
        Q.FieldByName('OperatorID').AsInteger := User.id;
        Q.Post;
      end;
        QItems.Insert;
        GetANewID(QItems,Self.Name,'ReciptItems','ReciptItemID',nil,1);
        QItems.FieldByName('ReciptID').AsInteger := AID;
        if  FieldByName('KindValue').AsInteger = 0 then
          QItems.FieldByName('InputEntity').AsString := FieldByName('_ValueCell').AsString

        else
          QItems.FieldByName('OutputEntity').AsString := FieldByName('_ValueCell').AsString;
          QItems.FieldByName('StuffCode').AsLargeInt := FieldByName('StuffCode').AsLargeInt;
          QItems.Post;
          GoProgressBar('');
        //------------------------------------------------------------------------------
      next;
  except
    CloseMessage;
    Warn('«‘ﬂ«· œ— À» ');
    Break;
  end;
    BigMessage('À»  ‘œ.˛',1);
        //---------------------------------Total Free ----------------------------------
  finally
    qryExcelImport.EnableControls;
    QItems.free;
    Q.Free;
    CloseMessage;
  end;
  //------------------------------------------------------------------------------
end;




procedure TExcelImportToTabelF.spdSearchClick(Sender: TObject);
var
  Results:  array[0..1] of String;
begin
  inherited;

  if searchCode_ADOF.SearchCode2(DMF.adcBSell,'Ã” ÃÊ','SELECT Customers.CustID,Customers.CustName FROM Customers ',
    ['òœ','‰«„ „‘ —Ì'],
    Results,[50,150],alLeft) then begin
    edtCust.Text:=Results[0];
    edtCust.Hint:=Results[1];
  end;//if

end;

procedure TExcelImportToTabelF.edtCustKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if key = #32 then spdSearch.Click;
end;

procedure TExcelImportToTabelF.edtPathKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if key = #32 then spdOpenFile.Click;
end;

procedure TExcelImportToTabelF.FormDestroy(Sender: TObject);
begin
  inherited;
  DeleteFile(XlsPath);
end;

//function TExcelImportToTabelF.GetStuffName(StuffCode: String): String;
//begin
// with TADOQuery.Create(nil) do
// try
//  Close;
//  Connection := DMf.adcBSell;
//  SQL.Text :='select c_StuffName from StuffCoding where  c_StuffCode = :D';
//  Parameters[0].Value := StuffCode;
//  Open;
//  if IsEmpty then
//    Result := EmptyStr
//  else
//    Result := Fields[0].AsString;
// finally
// end;
//
//end;

procedure TExcelImportToTabelF.qryExcelImportAfterOpen(DataSet: TDataSet);
begin
  inherited;
  with DataSet do
  try
    DisableControls;
    while not Eof do
    begin
     Edit;
     FieldByName('_ValueCell').AsString:=ReadCell(XlsPath,cmbSheetName.Text,Fieldbyname('CellCode').AsString);
     Post;
     Next
  end;
  finally
    EnableControls;
  end;


end;

end.
