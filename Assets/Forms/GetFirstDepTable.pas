{ -----------------------------------------------------------------------------
  Unit Name: GetFirstDepTable
  Author:    M_A_H_M_O_O_D
  Purpose:
  History:
  ----------------------------------------------------------------------------- }

unit GetFirstDepTable;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, ComCtrls, ADODB, uAppUsageLogger,
  DB, Menus, StrUtils, CheckLst, FaraConsts, Math;

type
  TSearchItem = class
    BankName: String;
    caption: String;
    Year: Integer;
  end; // tSearchItem

  TGetFirstDepTableF = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    BitBtn2: TBitBtn;
    qry: TADOQuery;
    pnlBank: TPanel;
    Label1: TLabel;
    cmbBank: TComboBox;
    pnlYear: TPanel;
    lblYear: TLabel;
    cmbYear: TComboBox;
    btnDepTable: TBitBtn;
    chkMultiYare: TCheckBox;
    LinkLabel1: TLinkLabel;
    procedure cmbBankChange(Sender: TObject);
    procedure cmbYearChange(Sender: TObject);
    procedure cmbAllEnter(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure btnDepTableClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    FOpenTime: TDateTime;
    sitem: TSearchItem;
    procedure assignCombo;
    function GetCheckList(ChkLstBox: TCheckListBox; btn: TBitBtn): String;
    procedure AllClick(AllYear: Boolean);
    procedure CallAllAccount(TypeDocs: string; GroupType12, AllYear: Boolean);
    procedure CheckExistsDepTable;
    { Private declarations }
  public
    procedure enter;
    { Public declarations }
  end;

var
  GetFirstDepTableF: TGetFirstDepTableF;

implementation

uses GlobalPro, DM, mmessage, main, FormFunctions;

{$R *.dfm}

procedure TGetFirstDepTableF.enter;
begin
  GetFirstDepTableF := TGetFirstDepTableF.Create(Application);
  with GetFirstDepTableF do
  begin
    try
      assignCombo;
      ShowModal;
    finally
      Free;
    end; // try
  end; // with
end;

procedure TGetFirstDepTableF.assignCombo;
var
  qry: TADOQuery;
  i: Integer;
begin
  qry := TADOQuery.Create(DMf);
  i := 0;
  with qry do
  begin
    try
      Connection := DMf.adcFaraSystem;
      SQL.Text := 'Select * from Sections';
      SQL.Add('where (sysid=:sysid)or(sysid=40)');
      // and(BankName<>'''+APPBank.Name+''')');
      SQL.Add('order by createdate');
      Parameters.ParamByName('SYSID').Value := SYSID;
      Active := True;
      while not Eof do
      begin
        sitem := TSearchItem.Create;
        sitem.caption := Format('سال مالي %.2d - %s - %s',
          [FieldByName('MaliYear').AsInteger, FieldByName('BankName').AsString,
          FieldByName('CompanyName').AsString]);
        sitem.BankName := FieldByName('BankName').AsString;
        cmbBank.Items.AddObject(sitem.caption, sitem);
        if APPBank.Name = FieldByName('BankName').AsString then
          i := cmbBank.Items.Count - 1;

        Next;
      end; // while
      Active := False;
    finally
      qry.Free;
    end; // try
  end; // with
  if cmbBank.Items.Count > 0 then
    cmbBank.ItemIndex := i;
  cmbBankChange(cmbBank);
end;

procedure TGetFirstDepTableF.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if Assigned(AppLogger) then
    AppLogger.LogFormClose(caption, FOpenTime);
  CloseMessage;
end;

procedure TGetFirstDepTableF.FormDestroy(Sender: TObject);
begin
  sitem.Free;
end;

procedure TGetFirstDepTableF.FormShow(Sender: TObject);
begin
  if Assigned(AppLogger) then
    AppLogger.LogFormOpen(caption, FOpenTime);

end;

procedure TGetFirstDepTableF.cmbBankChange(Sender: TObject);
begin
  sitem := TSearchItem(cmbBank.Items.Objects[cmbBank.ItemIndex]);
  InitCombos(cmbYear,
    'SELECT YearID,STR(YearID) + '' - از '' + StartYear + '' تا '' + EndYear ' +
    'FROM ' + sitem.BankName + '.Util.MaliYear');

  cmbYear.Visible := cmbYear.Items.Count > 1;
  lblYear.Visible := cmbYear.Visible;
  pnlYear.Visible := cmbYear.Visible;
  if not cmbYear.Visible then
  begin
    cmbYear.ItemIndex := 0;
    sitem.Year := Integer(cmbYear.Items.Objects[cmbYear.ItemIndex]);
  end;

  With DMf.qryTmpTmp do
  begin
    Active := False;
    SQL.Text := 'SELECT Count(YearID) FROM Util.MaliYear';
    Active := True;
    chkMultiYare.Checked := not((cmbYear.Items.Count = 1) and
      (Fields[0].AsInteger = 1));
    Active := False;
  end;

end;

procedure TGetFirstDepTableF.CheckExistsDepTable;
begin
  with qry do
  begin
    Connection := theMainConnection;
    Active := False;
    SQL.Text := 'SELECT COUNT(*) AS Expr1';
    SQL.Add('FROM Assets.DepTable');
    SQL.Add('WHERE (YearID = :YearID) ');
    Parameters.ParamByName('YearID').Value := APPBank.Year;
    Active := True;
    if Fields[0].AsInteger > 0 then
      if get_response(' فراخواني استهلاک در سیستم وجود دارد' + sLineBreak +
        'آيا براي انتقال دوباره مطمئن هستيد؟') <> mrYes then
        Abort;
    Active := False;
  end;
end;

procedure TGetFirstDepTableF.btnDepTableClick(Sender: TObject);
begin
  if get_response('آيا براي فراخواني استهلاک از سال انتخاب شده مطمئن هستيد؟') <> mrYes
  then
    Abort;

  CheckExistsDepTable;

  BigMessageProgBar('لطفا تا پايان عمليات صبر كنيد....', 0);
  with qry do
  begin
    Connection := theMainConnection;
    Active := False;

    // SQL.Text := 'UPDATE Assets.DepTable';
    // SQL.Add('SET FirstDepValue = aaa.FirstDepValue1');
    // SQL.Add('FROM Assets.DepTable INNER JOIN');
    // SQL.Add('(SELECT Serial,Id4table, isnull(FirstDepValue,0) + isnull(DepvalueInyear,0) AS FirstDepValue1');
    // SQL.Add('FROM ' + sitem.BankName + '.Assets.DepTable');
    // SQL.Add('WHERE (Yearid = ' + IntToStr(sitem.Year) +
    // ')) AS aaa ON Assets.DepTable.Serial = aaa.Serial and Assets.DepTable.Id4table = aaa.Id4table ');
    // SQL.Add('WHERE (Assets.DepTable.Yearid = ' + IntToStr(APPBank.Year) + ')');

    SQL.Text := 'DECLARE @Yearid int = ' + IntToStr(APPBank.Year);
    SQL.Add('DECLARE @previousYearid int = ' + IntToStr(sitem.Year));
    SQL.Add('insert into Assets.DepTable ( 	 Serial, Yearid, Tablename, Id4table, FirstDepValue, DepvalueInyear, CompanyID ,FirstUser)');
    SQL.Add('select s.Serial,');
    SQL.Add('@Yearid Yearid,');
    SQL.Add('s.Tablename,');

    SQL.Add('s.Id4table,');
    SQL.Add('s.FirstDepValue +s.DepvalueInyear FirstDepValue ,');
    SQL.Add('0 DepvalueInyear,');
    SQL.Add('s.CompanyID,');

    SQL.Add('''' + GetUserStamp + '''');

    SQL.Add('FROM ' + sitem.BankName + '.Assets.DepTable s');
    SQL.Add('LEFT JOIN Assets.DepTable D ON s.Serial = D.Serial and s.Tablename = D.Tablename AND s.Id4table = D.Id4table');
    SQL.Add('AND d.Yearid = @Yearid');
    SQL.Add('WHERE (s.Yearid = @previousYearid)');
    SQL.Add('AND d.id is null ;');
    SQL.Add('');
    SQL.Add('');
    SQL.Add('UPDATE Assets.DepTable');
    SQL.Add('SET FirstDepValue = s.FirstDepValue + s.DepvalueInyear');
    SQL.Add(', LastUser = ''' +GetUserStamp + '''');
    SQL.Add('FROM Assets.DepTable');
    SQL.Add('JOIN ' + sitem.BankName +
      '.Assets.DepTable AS s ON Assets.DepTable.Serial = s.Serial AND Assets.DepTable.Id4table = s.Id4table AND');
    SQL.Add('s.Yearid = @previousYearid');
    SQL.Add('AND Assets.DepTable.FirstDepValue <> s.FirstDepValue + s.DepvalueInyear');
    SQL.Add('WHERE (Assets.DepTable.Yearid = @Yearid)');

    BigMessage(IntToStr(ExecSQL) + 'مورد ثبت شد.', 2);

    // CloseMessage;
  end; // with
end;

function TGetFirstDepTableF.GetCheckList(ChkLstBox: TCheckListBox;
  btn: TBitBtn): String;

begin

end;

procedure TGetFirstDepTableF.CallAllAccount(TypeDocs: string;
  GroupType12, AllYear: Boolean);
begin

end;

procedure TGetFirstDepTableF.AllClick(AllYear: Boolean);

begin

end;

procedure TGetFirstDepTableF.cmbYearChange(Sender: TObject);
begin
  sitem.Year := Integer(cmbYear.Items.Objects[cmbYear.ItemIndex]);
end;

procedure TGetFirstDepTableF.cmbAllEnter(Sender: TObject);
begin
  (Sender as TComboBox).DroppedDown := True;
end;

end.
