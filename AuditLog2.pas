{ -----------------------------------------------------------------------------
  Unit Name: AuditLog2
  Author:    abbas Abedi
  ----------------------------------------------------------------------------- }

unit AuditLog2;

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
  TAuditLog2F = class(Ttemplate2MDIF)
    qryAuditLog2: TADOQuery;
    Panel4: TPanel;
    srcAuditLog2: TDataSource;
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
    CedarDbgrid1: TCedarDbgrid;
    srcAuditTableCaption: TDataSource;
    actShowForm: TAction;
    BitBtn1: TBitBtn;
    Panel5: TPanel;
    Splitter1: TSplitter;
    Label1: TLabel;
    Panel6: TPanel;
    BitBtn2: TBitBtn;
    CedarDbgrid2: TCedarDbgrid;
    qryAuditTableCaption: TADOQuery;
    qryAuditTableCaptionTableName: TWideStringField;
    qryAuditTableCaptionDisplayCaption: TWideStringField;
    qryAuditTableCaptionModuleName: TWideStringField;
    procedure FormCreate(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
    procedure actShowFormExecute(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    function GetTextVal(s: string): string;
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
  ADOCommand1.Execute;

end;

procedure TAuditLog2F.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryAuditLog2)
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

procedure TAuditLog2F.BitBtn2Click(Sender: TObject);
var
  i: Integer;
begin
  inherited;
  BigMessage('لطفا صبر کنید...', 0);
  CloseMessage;
end;

function TAuditLog2F.GetTextVal(s: string): string;
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

procedure TAuditLog2F.actFilterExecute(Sender: TObject);
var
  deleted, inserted, XmlVal, extra, SqlCaption, SqlJoin, SQLwhere: string;
  // i: Integer;
begin
  inherited;

    CedarDbgrid1.setSizeColDBGrid;

end;

end.
