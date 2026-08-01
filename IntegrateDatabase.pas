unit IntegrateDatabase;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template4, DBActns, ActnList, StdCtrls, Buttons, ExtCtrls, DB, ADODB,
  ComCtrls, CheckLst, DM, FaraConsts, GlobalPro, System.Actions;

type
  TIntegrateDatabaseF = class(TTemplate4F)
    ChkBankName: TCheckListBox;
    pb1: TProgressBar;
    Label1: TLabel;
    qrySections: TADOQuery;
    btnCommit: TBitBtn;
    actIntegrate: TAction;
    ADOCmdIntegrate: TADOCommand;
    procedure actIntegrateExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ChkBankNameDblClick(Sender: TObject);
  private
    procedure initForm;
    procedure IntegrateBank(BankName: string);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  IntegrateDatabaseF: TIntegrateDatabaseF;

implementation

{$R *.dfm}

procedure TIntegrateDatabaseF.actIntegrateExecute(Sender: TObject);
var
  i: Integer;
begin
  inherited;
  pb1.Max := ChkBankName.Items.Count + 1;
  pb1.Position := 0;
  pb1.Min := 1;
  pb1.Step := 1;

  with ADOCmdIntegrate do
  begin
    ConnectionString := GetConStr(APPBank.Name, 30);
    CommandText := ' use  [' + APPBank.Name + ']' +
      'if exists (select 1 from information_schema.tables where table_type=''base table'' and'
      + ' table_name=''IntegratedRecipts'' and table_catalog =' + '''' +
      APPBank.Name + '''' + ')' + ' drop table integratedrecipts';
    Execute;
  end;
  for i := 0 to ChkBankName.Items.Count - 1 do
  begin
    if ChkBankName.Checked[i] then
    begin
      ADOCmdIntegrate.ConnectionString := GetConStr(ChkBankName.Items[i], 30);
      Label1.Caption := IntToStr(i - 1) + '<>' + ChkBankName.Items[i];
      ChkBankName.ItemIndex := i;
      IntegrateBank(ChkBankName.Items[i]);
      ChkBankName.Checked[i] := False;
      pb1.StepIt;
      Application.ProcessMessages;
    end;
  end;
  Warn('«‰Ã«„ ‘œ.', mtInformation);
  Close;
end;

procedure TIntegrateDatabaseF.ChkBankNameDblClick(Sender: TObject);
var
  i: smallint;
begin
  inherited;
  for i := 0 to ChkBankName.Items.Count - 1 do
    ChkBankName.Checked[i] := not ChkBankName.Checked[i]
end;

procedure TIntegrateDatabaseF.FormCreate(Sender: TObject);
begin
  inherited;
  initForm
end;

procedure TIntegrateDatabaseF.initForm;
begin
  ChkBankName.Clear;
  with qrySections do
  begin
    Active := False;
    Parameters.ParamByName('SYSID').Value := SYSID;
    Active := True;
    while not eof do
    begin
      ChkBankName.AddItem(fieldbyname('BankName').AsString, TObject(RecNo));
      ChkBankName.Checked[RecNo - 1] := True;
      if fieldbyname('BankName').AsString = APPBank.Name then
        ChkBankName.ItemIndex := RecNo - 1;
      Next;
    end;
    Active := False;
  end; // with
end;

procedure TIntegrateDatabaseF.IntegrateBank(BankName: string);
var
  ts: TStrings;
begin
  with ADOCmdIntegrate do
  begin
    try
      ts := TStringList.Create;
      ts.Text :=
        ' if not exists ( select 1 from sysobjects where id = object_id(N''IntegratedRecipts'') and objectproperty(id,'
        + ' N''isusertable'') = 1 )' + ' begin' +
        ' select recipts.reciptid , recipts.reciptnumber , recipts.reciptdate , recipts.recipttype ,'
        + ' recipts.reciptstate , recipts.yearid , reciptitems.reciptitemid , reciptitems.stuffcode , reciptitems.stuffsize ,'
        + ' reciptitems.stuffdiameter , reciptitems.stuffalloy , reciptitems.inputentity ,reciptitems.outputentity'
        + ' ,reciptitems.inputweight ,' +
        ' reciptitems.outputweight ,reciptitems.totalinputprice ,reciptitems.totaloutputprice ,reciptitems.unitsellprice ,'
        + ' reciptitems.totallsellprice ,recipttypes.effecttype ,recipts.serverid'
        + ' into IntegratedRecipts' + ' from ' + BankName +
        '.dbo.recipts AS recipts' + ' inner join ' + BankName +
        '.dbo.reciptitems AS reciptitems on reciptitems.reciptid = recipts.reciptid'
        + ' and reciptitems.serverid = recipts.serverid' +
        ' and reciptitems.yearid = recipts.yearid' + ' inner join ' + BankName +
        '.dbo.recipttypes AS recipttypes on recipts.recipttype = recipttypes.recipttype'
        + ' end' + ' else' + ' begin' +
        ' insert into IntegratedRecipts (reciptid, reciptnumber, reciptdate, recipttype, reciptstate,'
        + ' yearid, reciptitemid, stuffcode, stuffsize, stuffdiameter, stuffalloy, inputentity, outputentity, inputweight, outputweight,'
        + ' totalinputprice, totaloutputprice, unitsellprice, totallsellprice, effecttype, serverid)'
        + ' select recipts.reciptid , recipts.reciptnumber , recipts.reciptdate , recipts.recipttype ,'
        + ' recipts.reciptstate , recipts.yearid , reciptitems.reciptitemid , reciptitems.stuffcode ,'
        + ' reciptitems.stuffsize ,' +
        ' reciptitems.stuffdiameter , reciptitems.stuffalloy , reciptitems.inputentity'
        + ' ,reciptitems.outputentity ,reciptitems.inputweight ,' +
        ' reciptitems.outputweight ,reciptitems.totalinputprice ,reciptitems.totaloutputprice'
        + ' ,reciptitems.unitsellprice ,' +
        ' reciptitems.totallsellprice ,recipttypes.effecttype ,recipts.serverid'
        + ' from ' + BankName + '.dbo.recipts as recipts' + ' inner join ' +
        BankName +
        '.dbo.reciptitems  AS reciptitems on reciptitems.reciptid = recipts.reciptid'
        + ' and reciptitems.serverid = recipts.serverid' +
        ' and reciptitems.yearid = recipts.yearid' + ' inner join ' + BankName +
        '.dbo.recipttypes AS recipttypes on recipts.recipttype = recipttypes.recipttype'
        + ' end';
      CommandText := ' use  [' + APPBank.Name + ']' + ts.Text;
      Execute;
    finally
      ts.Free;
    end;
  end;
end;

end.
