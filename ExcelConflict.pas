unit ExcelConflict;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, template2MDI, System.ImageList,
  Vcl.ImgList, Vcl.DBActns, System.Actions, Vcl.ActnList, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.Buttons, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, CedarDbGrid, Data.DB,
  Data.Win.ADODB, dmConst, Vcl.ComCtrls;

type
  TExcelConflictF = class(Ttemplate2MDIF)
    qryExcel1: TADOQuery;
    srcNewExcel1: TDataSource;
    srcNewExcel2: TDataSource;
    qryExcel2: TADOQuery;
    Panel1: TPanel;
    btnDelete: TBitBtn;
    btnCreateTable: TBitBtn;
    qryExcel3: TADOQuery;
    srcExcel3: TDataSource;
    srcCondition: TDataSource;
    qryCondition: TADOQuery;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    pnlSheet: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    cmbSheetName1: TComboBox;
    BitBtn1: TBitBtn;
    btnBank: TBitBtn;
    cmbSheetName2: TComboBox;
    Panel5: TPanel;
    cmbSheetName3: TComboBox;
    lblBank: TLabel;
    BitBtn2: TBitBtn;
    Label2: TLabel;
    grd3: TCedarDbgrid;
    Panel4: TPanel;
    GroupBox1: TGroupBox;
    mmoCondition1_2: TMemo;
    grdCondition: TCedarDbgrid;
    Panel6: TPanel;
    grd2: TCedarDbgrid;
    lblEcxel2: TLabel;
    Splitter1: TSplitter;
    lblEcxel1: TLabel;
    grd1: TCedarDbgrid;
    Panel7: TPanel;
    RadioGroup1: TRadioGroup;
    btnUpdate: TBitBtn;
    mmoSQL: TMemo;
    Panel8: TPanel;
    CedarDbgrid1: TCedarDbgrid;
    Panel9: TPanel;
    RadioGroup2: TRadioGroup;
    BitBtn3: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure btnBankClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure qryExcel1AfterOpen(DataSet: TDataSet);
    procedure qryExcel2AfterOpen(DataSet: TDataSet);
    procedure btnCreateTableClick(Sender: TObject);
    procedure qryExcel3AfterOpen(DataSet: TDataSet);
    procedure BitBtn2Click(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure grd1Enter(Sender: TObject);
    procedure grd1Exit(Sender: TObject);
    procedure btnUpdateClick(Sender: TObject);
  private
    ItmString: TStrings;
    tsField: TStringList;
    KeyValue_Locate: String;
    UniqueName, _Filepath1, _Filepath2, _Filepath3: String;
    PostCount, PostCount2, CustomersInsert: Integer;
    procedure OpenExcel(T_a_g: Integer);
    procedure ExcelToList(T_a_g: Integer; Fname: String = '');
    function cmbSheetName(T_a_g: Integer): TComboBox;
    function GetqryExcel(T_a_g: Integer): TADOQuery;
    procedure CreateTable(qry: TADOQuery; ColName: string);
    function makeFrom: String;
    procedure MakeSQL(ItemIndex: Integer);
    { Private declarations }
  public
    procedure Enter;
    { Public declarations }
  end;

var
  ExcelConflictF: TExcelConflictF;

implementation

uses
  DM, GlobalPro, mdiMain, MMESSAGE;

{$R *.dfm}

procedure TExcelConflictF.Enter;
begin
  CreateMDIForm3(True, TExcelConflictF, ExcelConflictF, mdiMainF, 0);
  with ExcelConflictF do
  begin
    ItmString := TStringList.Create;
    ItmString.Delimiter := #$A;
    ItmString.StrictDelimiter := True;

    UniqueName := 'ExcelConflictF';

    _Filepath1 := ReadConfig('', UniqueName + '_Filepath1', '');
    _Filepath2 := ReadConfig('', UniqueName + '_Filepath2', '');
    _Filepath3 := ReadConfig('', UniqueName + '_Filepath3', '');

    if not FileExists(_Filepath1) then
      _Filepath1 := EmptyStr;
    if _Filepath1 <> EmptyStr then
      ExcelToList(1, _Filepath1);

    if not FileExists(_Filepath2) then
      _Filepath2 := EmptyStr;
    if _Filepath2 <> EmptyStr then
      ExcelToList(2, _Filepath2);

    if not FileExists(_Filepath3) then
      _Filepath3 := EmptyStr;
    if _Filepath3 <> EmptyStr then
      ExcelToList(3, _Filepath3);

  end;
end;

procedure TExcelConflictF.BitBtn1Click(Sender: TObject);
begin
  inherited;
  OpenExcel(1)
end;

procedure TExcelConflictF.BitBtn2Click(Sender: TObject);
begin
  inherited;
  OpenExcel(3)
end;

procedure TExcelConflictF.btnBankClick(Sender: TObject);
begin
  inherited;
  OpenExcel(2)
end;

procedure TExcelConflictF.btnCreateTableClick(Sender: TObject);
begin
  inherited;
  if qryExcel1.Active then
    CreateTable(qryExcel1, 'E');

  if qryExcel2.Active then
    CreateTable(qryExcel2, 'F');

  if qryExcel3.Active then
    CreateTable(qryExcel3, 'F');
end;

procedure TExcelConflictF.CreateTable(qry: TADOQuery; ColName: string);
var
  i: Integer;
  Col, Table: string;
  ItmString: TStrings;

begin
  BigMessage('در حال انتقال اطلاعات...', 0);
  ItmString := TStringList.Create;
  ItmString.Delimiter := #$A;
  ItmString.StrictDelimiter := True;

  Table := qry.Name;
  with qry do
  begin
    DisableControls;
    Col := ColName + ' varchar(256)';
    for i := 2 to Fields.Count do
      Col := Col + ',' + ColName + i.ToString + ' varchar(256)'
  end;
  with DmF.qryTmpTmp do
  begin
    DisableControls;
    SQL.Text := 'IF EXISTS(SELECT 1 FROM sysobjects WHERE id = object_id(N''' +
      Table + ''') AND OBJECTPROPERTY(id, N''IsUserTable'') =1)';
    SQL.Add('DROP TABLE ' + Table);
    SQL.Add('CREATE TABLE ' + Table + '(' + Col + ')');
    ExecSQL;
    SQL.Text := 'SELECT * FROM ' + Table;
    Active := True;
    qry.First;
    while not qry.eof do
    begin
      Insert;
      for i := 0 to Fields.Count - 1 do
      begin
        ItmString.DelimitedText := qry.Fields[i].AsString;
        if ItmString.Count > 0 then
          Fields[i].AsString := ItmString[0].Replace(',', '')
        else
          Fields[i].AsString := qry.Fields[i].AsString.Replace(',', '');
      end;
      Post;
      qry.Next;
    end;
    EnableControls;
    qry.EnableControls;
    ItmString.Free;
    BigMessage('انجام شد', 3);
  end;
end;

procedure TExcelConflictF.btnDeleteClick(Sender: TObject);
begin
  inherited;
  With qryExcel1 do
    try
      DisableControls;
      while not eof do
      begin
        if (Fields[1].AsString.Trim = EmptyStr) and
          (Fields[2].AsString.Trim = EmptyStr) then
          Delete
        else
          Next;
      end;
    finally
      EnableControls;
    end;

  With qryExcel2 do
    try
      DisableControls;
      while not eof do
      begin
        if (Fields[1].AsString.Trim = EmptyStr) and
          (Fields[2].AsString.Trim = EmptyStr) then
          Delete
        else
          Next;
      end;
    finally
      EnableControls;
    end;

end;

procedure TExcelConflictF.btnUpdateClick(Sender: TObject);
begin
  inherited;
  mmoSQL.Lines[0] := ' Update Forms SET Forms.FormDate = Ex.F21 ';

  if get_response('آیا برای تغییر تاریخ های  مطمئن هستید؟', clGreen) <> mrYes
  then
    exit;

  With DmF.qryTmpTmp do
  begin
    SQL.Text := mmoSQL.Lines.Text;

    BigMessage(ExecSQL.ToString + 'مورد  انجام شد.', 0);
  end;
end;

procedure TExcelConflictF.OpenExcel(T_a_g: Integer);
begin
  with TOpenDialog.Create(Self) do
    try
      Filter := 'Excel|*.xlsx;*.xls|All|*.*';
      if Execute and (FileName <> EmptyStr) then
      begin

        case T_a_g of
          1:
            _Filepath1 := FileName;
          2:
            _Filepath2 := FileName;
          3:
            _Filepath3 := FileName;
        end;

        ExcelToList(T_a_g, FileName);

      end;

    finally
      case T_a_g of
        1:
          SaveConfig('', UniqueName + '_Filepath1', FileName);
        2:
          SaveConfig('', UniqueName + '_Filepath2', FileName);
        3:
          SaveConfig('', UniqueName + '_Filepath3', FileName);
      end;

      Free;
      // btnaddLink.Click;
    end;

end;

procedure TExcelConflictF.qryExcel1AfterOpen(DataSet: TDataSet);
begin
  inherited;
  grd1.setSizeColDBGrid
end;

procedure TExcelConflictF.qryExcel2AfterOpen(DataSet: TDataSet);
begin
  inherited;
  grd2.setSizeColDBGrid
end;

procedure TExcelConflictF.qryExcel3AfterOpen(DataSet: TDataSet);
begin
  inherited;
  grd3.setSizeColDBGrid
end;

procedure TExcelConflictF.RadioGroup1Click(Sender: TObject);
begin
  inherited;
  MakeSQL((Sender as TRadioGroup).ItemIndex)
end;

procedure TExcelConflictF.MakeSQL(ItemIndex:Integer);
begin
  With qryCondition do
  begin
    Active := False;
    case ItemIndex of
      0:
        begin
          SQL.Text := 'SELECT * ';
          SQL.Add('from Forms INNER JOIN');
          SQL.Add(makeFrom);
          SQL.Add(')Ex on Ex.F15 = Forms.TruckNumber');

        end;

      1:
        begin
          SQL.Text := 'SELECT Ex.* ';
          SQL.Add('from Forms RIGHT OUTER JOIN');
          SQL.Add(makeFrom);
          SQL.Add(')Ex on Ex.F15 = Forms.TruckNumber where');
          SQL.Add('Forms.TruckNumber is null');
        end;

      2:
        begin
          SQL.Text := 'SELECT Ex.* ';
          SQL.Add('from Recipts RIGHT OUTER JOIN');
          SQL.Add(makeFrom);
          SQL.Add(')Ex on Ex.F15 = Recipts.TruckNumber');
          SQL.Add('where Recipts.TruckNumber is null');
        end;

    end;
    mmoSQL.Lines.Text := SQL.Text;
    Active := True;
  end;


end;

function TExcelConflictF.makeFrom: String;
begin
  case PageControl1.TabIndex of
    0:
      Result := '(SELECT * from qryExcel1 INNER JOIN qryExcel2 ON ' +
        mmoCondition1_2.Text;
    1:
      Result := '(SELECT * from qryExcel3  ' ;//+ mmoCondition3.Text;
  end;
end;

function TExcelConflictF.cmbSheetName(T_a_g: Integer): TComboBox;
begin
  case T_a_g of
    1:
      Result := cmbSheetName1;
    2:
      Result := cmbSheetName2;
    3:
      Result := cmbSheetName3;
  end;

end;

procedure TExcelConflictF.ExcelToList(T_a_g: Integer; Fname: String = '');
var
  s: String;
begin
  if ExtractFileExt(Fname) = '.xlsx' then
    s := Format
      ('Provider=Microsoft.ACE.OLEDB.12.0;Data Source=%s;Extended Properties=Excel 12.0;Persist Security Info=False',
      [Fname])
  else
    s := Format
      ('Provider=Microsoft.Jet.OLEDB.4.0;Data Source=%s;Extended Properties=excel 8.0;Persist Security Info=False',
      [Fname]);

  with TADOConnection.Create(Self) do
    try
      Close;
      ConnectionString := s;
      LoginPrompt := False;
      try
        Open;
      except
        on E: Exception do
        begin
          SaveConfig('', UniqueName + '_Filepath1', '');
          SaveConfig('', UniqueName + '_Filepath2', '');
          SaveConfig('', UniqueName + '_Filepath3', '');
          Warn2('اشکال در باز کردن فایل' + #10 + E.Message);
          add2log(E.Message);
        end;

      end;

      GetTableNames(cmbSheetName(T_a_g).Items);
      // pnlSheet.Visible := cmbSheetName.Items.Count > 1;
      if pnlSheet.Visible then
        cmbSheetName(T_a_g).ItemIndex := 0;
    finally
      Free;
    end;
  with GetqryExcel(T_a_g) do
  begin
    Close;
    EnableControls;
    ConnectionString := s;
    SQL.Text := 'select * from [' + cmbSheetName(T_a_g).Items[0] + ']';
    Open;
    // qryExcel(T_a_g).GetFieldNames(lstExcel(T_a_g).Items);
  end;
end;

procedure TExcelConflictF.FormDestroy(Sender: TObject);
begin
  inherited;
  qryExcel1.Close;
  qryExcel2.Close;
  ItmString.Free;
end;

function TExcelConflictF.GetqryExcel(T_a_g: Integer): TADOQuery;
begin
  case T_a_g of
    1:
      Result := qryExcel1;
    2:
      Result := qryExcel2;
    3:
      Result := qryExcel3;
  end;
end;

procedure TExcelConflictF.grd1Enter(Sender: TObject);
begin
  inherited;
  mmoSQL.Visible := False

end;

procedure TExcelConflictF.grd1Exit(Sender: TObject);
begin
  inherited;
  mmoSQL.Visible := True

end;

end.
