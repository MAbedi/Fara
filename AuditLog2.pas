{ -----------------------------------------------------------------------------
  Unit Name: AuditLog2
  Author:    abbas Abedi
  ----------------------------------------------------------------------------- }

unit AuditLog2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, Mask, ADODB, FireDAC.Comp.Client, DBCtrls, ppDB, FormFunctions,
  ppDBPipe, ppComm, ppRelatv, ppProd, ppClass, ppReport, ppCtrls, ppPrnabl,
  ppBands, ppCache, ppVar, ppParameter, MySplitter, ppDesignLayer,
  System.ImageList, System.Actions, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  CedarDbGrid, Vcl.Grids, Vcl.ValEdit, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  Xml.XMLDoc, Xml.XMLIntf;

type
  TAuditLog2F = class(Ttemplate2MDIF)
    qryAuditDetail: TADOQuery;
    Panel4: TPanel;
    srcAuditLog2: TDataSource;
    srcAuditDetail: TDataSource;
    actFilter: TAction;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    actSendToExcel: TAction;
    actSort: TAction;
    actPrint: TAction;
    BitBtn6: TBitBtn;
    actSpecial: TAction;
    pnlFilter: TPanel;
    ScrollBox1: TScrollBox;
    MySplitter1: TMySplitter;
    actDefault: TAction;
    Panel1: TPanel;
    CedarDbgrid1: TCedarDbgrid;
    srcAuditTableCaption: TDataSource;
    actShowForm: TAction;
    Panel5: TPanel;
    Splitter1: TSplitter;
    Label1: TLabel;
    Panel6: TPanel;
    BitBtn2: TBitBtn;
    CedarDbgrid2: TCedarDbgrid;
    qryAuditTableCaption: TADOQuery;
    qryAuditLog2: TFDQuery;
    qryAuditTableCaptionTableName: TStringField;
    qryAuditTableCaptionTableCaption: TWideStringField;
    BitBtn1: TBitBtn;
    lstOld: TValueListEditor;
    lstNew: TValueListEditor;
    lstDif: TValueListEditor;
    qryAuditLog2MetaDataChangeLogId: TFDAutoIncField;
    qryAuditLog2TableName: TStringField;
    qryAuditLog2PreviousRowXmlValues: TWideMemoField;
    qryAuditLog2CurrentRowXmlValues: TWideMemoField;
    qryAuditLog2RowCreateSource: TStringField;
    qryAuditLog2RowCreateDateTime: TSQLTimeStampField;
    qryAuditLog2DataBaseName: TStringField;
    qryAuditLog2HostName: TStringField;
    qryAuditLog2ApplicationName: TStringField;
    qryAuditLog2LoginName: TStringField;
    qryAuditLog2LastRead: TStringField;
    qryAuditLog2LastWrite: TStringField;
    qryAuditLog2client_net_address: TStringField;
    qryAuditLog2local_net_address: TStringField;
    procedure qryAuditLog2AfterScroll(DataSet: TDataSet);
    procedure actSortExecute(Sender: TObject);
    procedure actShowFormExecute(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure actSendToExcelExecute(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure LoadNextAuditPage;
    procedure qryAuditTableCaptionAfterScroll(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
  private
    function GetTextVal(s: string): string;
    procedure ParseAuditXml(const XmlText: string; List: TStrings);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AuditLog2F: TAuditLog2F;

implementation

uses Dm, GlobalPro, Document, search2, sort2, StrUtils,
  searchCode_L1_L2, searchCode_ADO, FaraConsts, MMESSAGE;
{$R *.dfm}
{ TAuditLog2F }

procedure TAuditLog2F.FormCreate(Sender: TObject);
begin
  inherited;
  qryAuditTableCaption.Open;
end;

procedure TAuditLog2F.LoadNextAuditPage;
var
  LastID: Int64;
begin
  if not qryAuditLog2.Active or qryAuditLog2.IsEmpty then
    Exit;
  qryAuditLog2.Last;
  LastID := qryAuditLog2.FieldByName('LogID').AsLargeInt;
  qryAuditDetail.Close;
  qryAuditLog2.Close;
  qryAuditLog2.SQL.Text := 'select top (200) * from MetaDataChangeLog';
  qryAuditLog2.SQL.Add('WHERE ((NOT (PreviousRowXmlValues IS NULL)) ');
  qryAuditLog2.SQL.Add('OR  (NOT (CurrentRowXmlValues IS NULL))) ');
  qryAuditLog2.SQL.Add('AND TableName = :TableName ');
  qryAuditLog2.SQL.Add('AND DataBaseName =  ''' + APPBank.Name + '''');
  qryAuditLog2.SQL.Add('AND MetaDataChangeLogID < :LastID ');
  qryAuditLog2.SQL.Add('order by MetaDataChangeLogID desc');

  qryAuditLog2.ParamByName('LastID').AsLargeInt := LastID;
  qryAuditLog2.ParamByName('TableName').AsString :=
    qryAuditTableCaptionTableName.AsString;
  qryAuditLog2.Open;
end;

procedure TAuditLog2F.qryAuditLog2AfterScroll(DataSet: TDataSet);
begin
  if DataSet.IsEmpty or (not DataSet.Active) then
    Label1.Caption := 'رکوردی برای نمایش انتخاب نشده است.'
  else
    Label1.Caption := 'کلید رکورد: ' +
      ' - برای مشاهده جزئیات، دکمه بررسی تغییرات را انتخاب کنید.';

end;

procedure TAuditLog2F.qryAuditTableCaptionAfterScroll(DataSet: TDataSet);
begin
  inherited;
  try
    qryAuditLog2.SQL.Text := 'select top (200) * from MetaDataChangeLog ';
    qryAuditLog2.SQL.Add('WHERE ((NOT (PreviousRowXmlValues IS NULL)) ');
    qryAuditLog2.SQL.Add('OR  (NOT (CurrentRowXmlValues IS NULL))) ');
    qryAuditLog2.SQL.Add('AND  TableName = :TableName ');
    qryAuditLog2.SQL.Add('AND DataBaseName =  ''' + APPBank.Name + '''');
    qryAuditLog2.SQL.Add('order by MetaDataChangeLogID desc');
    qryAuditLog2.ParamByName('TableName').AsString :=
      qryAuditTableCaptionTableName.AsString;
    qryAuditLog2.Open;
  except
    on E: Exception do
      Warn('خطا در دریافت لاگ تغییرات: ' + E.Message, mtError);
  end;

end;

procedure TAuditLog2F.actShowFormExecute(Sender: TObject);
begin
  inherited;
  if qryAuditLog2.FieldByName('KindForm').AsInteger <> 4 then

    ShowAllFrom2(qryAuditLog2)
  else
  begin
    DocumentF.FindDoc(qryAuditLog2.FieldByName('Serial').AsInteger,
      qryAuditLog2.FieldByName('YearID').AsInteger,
      qryAuditLog2.FieldByName('CompanyCode').AsInteger);
    DocumentF.qry_Documents.Locate('id', qryAuditLog2.FieldByName('id')
      .AsInteger, []);
  end;

end;

procedure TAuditLog2F.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryAuditLog2);
end;

procedure TAuditLog2F.BitBtn1Click(Sender: TObject);
begin
  inherited;
  LoadNextAuditPage
end;

procedure TAuditLog2F.BitBtn2Click(Sender: TObject);
var
  OldValues, NewValues: TStringList;
  CleanOld, CleanNew: TStringList;
  I, J: Integer;
  FieldName, CleanName: string;
  OldValue, NewValue: string;
begin
  lstOld.Strings.Clear;
  lstNew.Strings.Clear;
  lstDif.Strings.Clear;

  if (not qryAuditLog2.Active) or qryAuditLog2.IsEmpty then
  begin
    Label1.Caption := 'رکوردی برای نمایش انتخاب نشده است.';
    Exit;
  end;

  OldValues := TStringList.Create;
  NewValues := TStringList.Create;
  CleanOld  := TStringList.Create;
  CleanNew  := TStringList.Create;
  try
    ParseAuditXml(qryAuditLog2PreviousRowXmlValues.AsString, OldValues);
    ParseAuditXml(qryAuditLog2CurrentRowXmlValues.AsString, NewValues);

    // ---------- تمیز کردن نام فیلدها برای نمایش به کاربر ----------
    for I := 0 to OldValues.Count - 1 do
    begin
      FieldName := OldValues.Names[I];
      CleanName := FieldName;

      if Pos('deleted_0_', CleanName) = 1 then
        CleanName := Copy(CleanName, Length('deleted_0_') + 1, MaxInt)
      else if Pos('inserted_0_', CleanName) = 1 then
        CleanName := Copy(CleanName, Length('inserted_0_') + 1, MaxInt);

      // فیلد نوع را اصلاً نشان نده
      if SameText(CleanName, 'نوع') then
        Continue;

      CleanOld.Values[CleanName] := OldValues.ValueFromIndex[I];
    end;

    for I := 0 to NewValues.Count - 1 do
    begin
      FieldName := NewValues.Names[I];
      CleanName := FieldName;

      if Pos('deleted_0_', CleanName) = 1 then
        CleanName := Copy(CleanName, Length('deleted_0_') + 1, MaxInt)
      else if Pos('inserted_0_', CleanName) = 1 then
        CleanName := Copy(CleanName, Length('inserted_0_') + 1, MaxInt);

      if SameText(CleanName, 'نوع') then
        Continue;

      CleanNew.Values[CleanName] := NewValues.ValueFromIndex[I];
    end;

    lstOld.Strings.Assign(CleanOld);
    lstNew.Strings.Assign(CleanNew);

    // ---------- مقایسه برای لیست اختلاف‌ها ----------
    for I := 0 to CleanOld.Count - 1 do
    begin
      FieldName := CleanOld.Names[I];
      OldValue  := CleanOld.ValueFromIndex[I];
      NewValue  := CleanNew.Values[FieldName];

      if OldValue <> NewValue then
        lstDif.Strings.Values[FieldName] := OldValue + ' <> ' + NewValue;
    end;

  finally
    OldValues.Free;
    NewValues.Free;
    CleanOld.Free;
    CleanNew.Free;
  end;
end;

procedure TAuditLog2F.actSendToExcelExecute(Sender: TObject);
begin
  inherited;
  if qryAuditLog2.Active and not qryAuditLog2.IsEmpty then
    SendToExcel(CedarDbgrid1);
end;

procedure TAuditLog2F.actPrintExecute(Sender: TObject);
begin
  inherited;
  if qryAuditLog2.Active and not qryAuditLog2.IsEmpty then
    SendToExcel(CedarDbgrid1);
end;

function TAuditLog2F.GetTextVal(s: string): string;
var
  I: Integer;
  s2: string;
  // ts: TStringList;
begin
  s := s.Replace('<deleted ', '');
  s := s.Replace('<inserted ', '');
  s := s.Replace('/>', '');
  // s := s.Replace('"          "', '""');
  // s := s.Replace('"  /  /    "', '""');

  for I := 1 to Length(s) - 1 do
    if (s[I] = '"') and (s[I - 1] <> '=') then
      s2 := s2 + s[I] + #13
    else
      s2 := s2 + s[I];

  // s := s.Replace('" ', '" ' + #13);
  // s := s.Replace('"', '');
  // s:=s.Replace('=',' = ');

  // ts := TStringList.Create;
  // ts.Sorted := true;
  // ts.Text := s2;

  // Result := ts.Text;
  // ts.Free;
  Result := s2;

end;

procedure TAuditLog2F.ParseAuditXml(const XmlText: string; List: TStrings);
var
  s: string;
  XMLDoc: IXMLDocument;
  RootNode: IXMLNode;
  Node: IXMLNode;
  I, J: Integer;
  Prefix: string;
  ItemNo: Integer;
begin
  List.Clear;

  if Trim(XmlText) = '' then
    Exit;

  s := '<AuditRoot>' + Trim(XmlText) + '</AuditRoot>';
  XMLDoc := LoadXMLData(s);
  RootNode := XMLDoc.DocumentElement;
  ItemNo := 0;

  for I := 0 to RootNode.ChildNodes.Count - 1 do
  begin
    Node := RootNode.ChildNodes[I];

    if Node.NodeType <> ntElement then
      Continue;

    Prefix := Node.NodeName + '_' + IntToStr(ItemNo) + '_';
    Inc(ItemNo);

    List.Values[Prefix + 'نوع'] := Node.NodeName;

    for J := 0 to Node.AttributeNodes.Count - 1 do
      List.Values[Prefix + Node.AttributeNodes[J].NodeName] :=
        VarToStr(Node.AttributeNodes[J].NodeValue);
  end;
end;

end.
