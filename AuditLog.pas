{ -----------------------------------------------------------------------------
  Unit Name: AuditLog
  Author:    abbas Abedi
  ----------------------------------------------------------------------------- }

unit AuditLog;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, Mask, ADODB, DBCtrls, ppDB, FormFunctions,
  ppDBPipe, ppComm, ppRelatv, ppProd, ppClass, ppReport, ppCtrls, ppPrnabl,
  ppBands, ppCache, ppVar, ppParameter, MySplitter, ppDesignLayer,
  System.ImageList, System.Actions, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  CedarDbGrid, Vcl.Grids, Vcl.ValEdit;

type
  TAuditLogF = class(Ttemplate2MDIF)
    qryAuditLog: TADOQuery;
    Panel4: TPanel;
    srcAuditLog: TDataSource;
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
    ADOCommand1: TADOCommand;
    qryTemp: TADOQuery;
    CedarDbgrid1: TCedarDbgrid;
    CedarDbgrid2: TCedarDbgrid;
    qrylogTable: TADOQuery;
    srclogTable: TDataSource;
    qrylogTableOwnerName: TStringField;
    qrylogTableTablename: TStringField;
    qrylogTableTableCaption: TStringField;
    qrylogTableColumnName: TStringField;
    qrylogTableColumnCaption: TStringField;
    qrylogTableDataType: TStringField;
    RadioGroup1: TRadioGroup;
    actShowForm: TAction;
    rgField: TRadioGroup;
    BitBtn1: TBitBtn;
    Panel5: TPanel;
    lstNew: TValueListEditor;
    lstOld: TValueListEditor;
    lstDif: TValueListEditor;
    Splitter1: TSplitter;
    Label1: TLabel;
    Panel6: TPanel;
    BitBtn2: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure actShowFormExecute(Sender: TObject);
    procedure qryAuditLogAfterScroll(DataSet: TDataSet);
    procedure BitBtn2Click(Sender: TObject);
  private
    function GetTextVal(s: string): string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AuditLogF: TAuditLogF;

implementation

uses Dm, GlobalPro, Document, search2, sort2, StrUtils,
  searchCode_L1_L2, searchCode_ADO, FaraConsts, MMESSAGE;
{$R *.dfm}
{ TAuditLogF }

procedure TAuditLogF.FormCreate(Sender: TObject);
begin
  inherited;
  ADOCommand1.Execute;
  qrylogTable.Open
end;

procedure TAuditLogF.RadioGroup1Click(Sender: TObject);
begin
  inherited;
  actFilter.Caption := RadioGroup1.Items[RadioGroup1.ItemIndex]
end;

procedure TAuditLogF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryAuditLog);
end;

procedure TAuditLogF.actShowFormExecute(Sender: TObject);
begin
  inherited;
  if qryAuditLog.FieldByName('KindForm').AsInteger <> 4 then

    ShowAllFrom2(qryAuditLog)
  else
  begin
    DocumentF.FindDoc(qryAuditLog.FieldByName('Serial').AsInteger,
      qryAuditLog.FieldByName('YearID').AsInteger,
      qryAuditLog.FieldByName('CompanyCode').AsInteger);
    DocumentF.qry_Documents.Locate('id', qryAuditLog.FieldByName('id')
      .AsInteger, []);
  end;

end;

procedure TAuditLogF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryAuditLog);
end;

procedure TAuditLogF.BitBtn2Click(Sender: TObject);
var
  i: Integer;
begin
  inherited;
  BigMessage('لطفا صبر کنید...', 0);
  lstOld.strings.Text := GetTextVal(qryAuditLog.FieldByName('Old').AsString);
  lstNew.strings.Text := GetTextVal(qryAuditLog.FieldByName('New').AsString);

  lstDif.strings.Clear;
  for i := 0 to lstOld.strings.Count - 1 do
    if lstOld.strings.ValueFromIndex[i] <> lstNew.strings.ValueFromIndex[i] then
      try
        lstDif.strings.AddPair(lstOld.strings.KeyNames[i],
          lstOld.strings.ValueFromIndex[i] + '<>' +
          lstNew.strings.ValueFromIndex[i]);
      except
      end;
  CloseMessage;
end;

function TAuditLogF.GetTextVal(s: string): string;
var
  i: Integer;
  s2: string;
  // ts: TStringList;
begin
  s := s.Replace('<deleted ', '');
  s := s.Replace('<inserted ', '');
  s := s.Replace('/>', '');
  // s := s.Replace('"          "', '""');
  // s := s.Replace('"  /  /    "', '""');

  for i := 1 to Length(s) - 1 do
    if (s[i] = '"') and (s[i - 1] <> '=') then
      s2 := s2 + s[i] + #13
    else
      s2 := s2 + s[i];

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

procedure TAuditLogF.qryAuditLogAfterScroll(DataSet: TDataSet);
var
  WordName: string;
begin
  inherited;
  if (qrylogTableTablename.AsString = 'Forms') then
  begin
    WordName := 'FormID';
  end
  else if (qrylogTableTablename.AsString = 'FormItems') then
  begin
    WordName := 'FormItemID';
  end
  else if (qrylogTableTablename.AsString = 'Recipts') then
  begin
    WordName := 'ReciptID';
  end
  else if (qrylogTableTablename.AsString = 'ReciptItems') then
  begin
    WordName := 'ReciptItemID';
  end
  else
    WordName := 'Serial';

  Label1.Caption := WordName + ' Count =' +
    IntToStr(WordCount(WordName, qryAuditLog.FieldByName('New')
    .AsString, True));

end;

procedure TAuditLogF.actFilterExecute(Sender: TObject);
var
  deleted, inserted, XmlVal, extra, SqlCaption, SqlJoin, SQLwhere: string;
  // i: Integer;
begin
  inherited;
  deleted := '(/deleted/@' + qrylogTableColumnName.AsString + ')[1]'',''' +
    qrylogTableDataType.AsString;
  inserted := '(/inserted/@' + qrylogTableColumnName.AsString + ')[1]'',''' +
    qrylogTableDataType.AsString;

  if RadioGroup1.ItemIndex = 1 then
    XmlVal := ',PreviousRowXmlValues.value(''(/deleted/@'
  else
    XmlVal := ',CurrentRowXmlValues.value(''(/inserted/@';

  With qryTemp do
  begin
    Close;
    SQL.Text := 'SELECT ColumnName, ColumnCaption, DataType';
    SQL.Add('FROM logTable');
    SQL.Add('WHERE (Tablename = ''' + qrylogTableTablename.AsString + ''')');
    Open;
    while not eof do
    begin
      if rgField.ItemIndex in [0, 2] then
        extra := extra + ',PreviousRowXmlValues.value(''(/deleted/@' +
          qryTemp.FieldByName('ColumnName').AsString + ')[1]'',''' +
          qryTemp.FieldByName('DataType').AsString + ''') as [<' +
          qryTemp.FieldByName('ColumnCaption').AsString + ']';
      if rgField.ItemIndex in [1, 2] then
        extra := extra + ',CurrentRowXmlValues.value(''(/inserted/@' +
          qryTemp.FieldByName('ColumnName').AsString + ')[1]'',''' +
          qryTemp.FieldByName('DataType').AsString + ''') as [>' +
          qryTemp.FieldByName('ColumnCaption').AsString + ']';

      Next;
    end;
  end;

  With qryAuditLog do
  begin
    if ((qrylogTableTablename.AsString = 'Forms') Or
      (qrylogTableTablename.AsString = 'FormItems')) then
    begin
      SqlCaption := ' RT.FormCaption [نام فرم], ';

      SqlJoin := ' JOIN ' + APPBank.Name +
        '.dbo.Forms R on R.FormID = CurrentRowXmlValues.value(''(/inserted/@FormID)'
        + ' [1]'',''int'')' +
        ' AND R.ServerID = CurrentRowXmlValues.value(''(/inserted/@ServerID)[1]'',''int'') AND R.YearID = CurrentRowXmlValues.value'
        + ' (''(/inserted/@YearID)[1]'',''int'')' + ' JOIN ' + APPBank.Name +
        '.dbo.FormTypes RT on (RT.FormType = R.FormType )';

    end
    else if ((qrylogTableTablename.AsString = 'Recipts') Or
      (qrylogTableTablename.AsString = 'ReciptItems')) then
    begin
      SqlCaption := ' RT.ReciptCaption [نام فرم], ';
      SqlJoin := ' JOIN ' + APPBank.Name +
        '.dbo.Recipts R on R.ReciptID = CurrentRowXmlValues.value(''(/inserted/@ReciptID)'
        + ' [1]'',''int'')' +
        ' AND R.ServerID = CurrentRowXmlValues.value(''(/inserted/@ServerID)[1]'',''int'') AND R.YearID = CurrentRowXmlValues.value'
        + ' (''(/inserted/@YearID)[1]'',''int'')' + ' JOIN ' + APPBank.Name +
        '.dbo.ReciptTypes RT on (RT.ReciptType = R.ReciptType )';

    end
    else if ((qrylogTableTablename.AsString = 'Interdicts') Or
      (qrylogTableTablename.AsString = 'InterdictItems')) then
    begin
      SqlCaption := ' ''حکم'' AS  [نام فرم], ';
      SqlJoin := '';

    end
    else
    begin
      SqlCaption := ' ''سند حسابداری'' AS  [نام فرم], ';
      SqlJoin := '';
    end;

     SqlCaption:=SqlCaption+   'RowCreateDateTime AS [تاریخ],HostName AS [سیستم],';


    Close;
    SQL.Text := 'SELECT ' + SqlCaption + 'PreviousRowXmlValues.value(''' +
      deleted + ''') as PreVal,';
    SQL.Add('CurrentRowXmlValues.value(''' + inserted + ''') as CurVal');
    SQL.Add(extra);

    if ((qrylogTableTablename.AsString = 'Forms') Or
      (qrylogTableTablename.AsString = 'FormItems')) then
    begin
      SQL.Add(',2 KindForm');
      SQL.Add(XmlVal + 'FormID)[1]'',''int'') AS FormID');
      SQL.Add(XmlVal + 'ServerID)[1]'',''int'') AS ServerID');
      SQL.Add(XmlVal + 'YearID)[1]'',''int'') AS YearID');
      SQLwhere := 'AND ' + XmlVal.Replace(',', '') + 'YearID)[1]'',''int'') = '
        + APPBank.Year.ToString;
    end
    else if ((qrylogTableTablename.AsString = 'Recipts') Or
      (qrylogTableTablename.AsString = 'ReciptItems')) then
    begin
      SQL.Add(',3 KindForm');
      SQL.Add(XmlVal + 'ReciptItemID)[1]'',''int'') AS ReciptItemID');
      SQL.Add(XmlVal + 'ReciptID)[1]'',''int'') AS ReciptID');
      SQL.Add(XmlVal + 'ServerID)[1]'',''int'') AS ServerID');
      SQL.Add(XmlVal + 'YearID)[1]'',''int'') AS YearID');
      SQL.Add(XmlVal + 'StuffCode)[1]'',''Bigint'') AS StuffCode');
      SQLwhere := 'AND ' + XmlVal.Replace(',', '') + 'YearID)[1]'',''int'') = '
        + APPBank.Year.ToString;
    end
    else if ((qrylogTableTablename.AsString = 'Interdicts') Or
      (qrylogTableTablename.AsString = 'InterdictItems')) then
    begin
      SQL.Add(',5 KindForm');
      SQL.Add(XmlVal + 'InterdictID)[1]'',''int'') AS InterdictID');
      SQLwhere := '';
    end
    else
    begin
      SQL.Add(',4 KindForm');
      SQL.Add(XmlVal + 'Serial)[1]'',''int'') AS Serial');
      SQL.Add(XmlVal + 'YearID)[1]'',''int'') AS YearID');
      SQL.Add(XmlVal + 'CompanyCode)[1]'',''int'') AS CompanyCode');
      SQL.Add(XmlVal + 'id)[1]'',''int'') AS id');
      SQLwhere := 'AND ' + XmlVal.Replace(',', '') + 'YearID)[1]'',''int'') = '
        + APPBank.Year.ToString;
    end;

    SQL.Add(',cast( PreviousRowXmlValues as varchar(max))  AS Old');
    SQL.Add(',cast( CurrentRowXmlValues as varchar(max))  AS New');

    SQL.Add('FROM MetaDataChangeLog');
    SQL.Add(SqlJoin);
    SQL.Add('WHERE TableName =''' + qrylogTableTablename.AsString + '''');
    SQL.Add('and DataBaseName =''' + APPBank.Name + '''');
    SQL.Add(SQLwhere);
    case RadioGroup1.ItemIndex of
      0:
        SQL.Add('and PreviousRowXmlValues.value(''' + deleted +
          ''') <> CurrentRowXmlValues.value(''' + inserted + ''')');
      1:
        SQL.Add('and (CurrentRowXmlValues IS NULL)');
      2:
        SQL.Add('and (PreviousRowXmlValues IS NULL)');
    end;

    Open;
    FieldByName('PreVal').DisplayLabel := qrylogTableColumnCaption.AsString
      + ' قبلی';
    FieldByName('CurVal').DisplayLabel := qrylogTableColumnCaption.AsString
      + ' فعلی';

    // for i := 0 to CedarDbgrid1.Columns.Count - 1 do
    // CedarDbgrid1.Columns[i].Visible := CedarDbgrid1.Columns[i].FieldName <>
    // CedarDbgrid1.Columns[i].Title.Caption;

    CedarDbgrid1.setSizeColDBGrid;
  end;
end;

end.
