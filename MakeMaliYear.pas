unit MakeMaliYear;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, Vcl.DBGrids, StdCtrls, DBCtrls, ComCtrls, Mask, DB,
  ADODB, Buttons, DBActns, ActnList, Menus, System.Actions, System.StrUtils,uAppUsageLogger;

type
  TMakeMaliYearF = class(TForm)
    DBGrid1: TDBGrid;
    pnlYear: TPanel;
    Panel2: TPanel;
    qryMaliYear: TADOQuery;
    qryMaliYearYearID: TIntegerField;
    qryMaliYearStartYear: TStringField;
    qryMaliYearEndYear: TStringField;
    srcMaliYear: TDataSource;
    qryMaliYearStatus: TWordField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    CmbStatus: TDBComboBox;
    ActionList1: TActionList;
    DataSetPost1: TDataSetPost;
    DataSetCancel1: TDataSetCancel;
    newPanel: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn2: TBitBtn;
    okPanel: TPanel;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    DataSetInsert1: TDataSetInsert;
    DataSetDelete1: TDataSetDelete;
    DataSetEdit1: TDataSetEdit;
    Panel3: TPanel;
    lblCaption: TLabel;
    btnClose: TBitBtn;
    lblWarn: TLabel;
    actChangeState: TAction;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure srcMaliYearStateChange(Sender: TObject);
    procedure qryMaliYearStatusGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure qryMaliYearStatusSetText(Sender: TField; const Text: String);
    procedure qryMaliYearAfterInsert(DataSet: TDataSet);
    procedure qryMaliYearYearIDChange(Sender: TField);
    procedure qryMaliYearBeforeDelete(DataSet: TDataSet);
    procedure qryMaliYearAfterPost(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure qryMaliYearBeforeOpen(DataSet: TDataSet);
    procedure qryMaliYearBeforePost(DataSet: TDataSet);
    procedure actChangeStateExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    FOpenTime: TDateTime;
    newYearId4User: Integer;
    MakeAsset: Boolean;
  public
    { Public declarations }
  end;

var
  MakeMaliYearF: TMakeMaliYearF;

implementation

uses Dm, GlobalPro, mmessage, FaraConsts, AssetsFunctions;

{$R *.dfm}

procedure TMakeMaliYearF.actChangeStateExecute(Sender: TObject);
begin
  if User.admin then
  begin
    DMf.adcBSell.Execute('UPDATE Util.MaliYear SET Status = 0' +
      Format('WHERE (YearID = %d )', [qryMaliYearYearID.AsInteger]));
    qryMaliYear.Requery();
  end;

end;

procedure TMakeMaliYearF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Assigned(AppLogger) then
    AppLogger.LogFormClose(Caption, FOpenTime);

end;

procedure TMakeMaliYearF.FormCreate(Sender: TObject);
begin
  qryMaliYear.Open;
  lblCaption.Caption := Caption;
end;

procedure TMakeMaliYearF.srcMaliYearStateChange(Sender: TObject);
begin
  okPanel.Visible := qryMaliYear.State in dsEditModes;
  newPanel.Visible := not okPanel.Visible;
  pnlYear.Visible := okPanel.Visible;
  FreeReservedCodes(DMf.adcBSell, 'util.MaliYear', 'YearID', Self.Name);
end;

procedure TMakeMaliYearF.qryMaliYearStatusGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  Text := CmbStatus.Items[Sender.AsInteger];
end;

procedure TMakeMaliYearF.qryMaliYearStatusSetText(Sender: TField;
  const Text: String);
begin
  Sender.AsInteger := CmbStatus.ItemIndex;
end;

procedure TMakeMaliYearF.qryMaliYearAfterInsert(DataSet: TDataSet);
var
  YearID: Integer;
begin
  YearID := GetANewCode(Self.Name, 'util.MaliYear', 'YearID');

  if YearID < 1000 then
  begin
    if YearID < 30 then
      YearID := YearID + 1400
    else
      YearID := YearID + 1300
  end;

  DataSet.FieldByName('YearID').AsInteger := YearID;

end;

procedure TMakeMaliYearF.qryMaliYearYearIDChange(Sender: TField);
begin
  qryMaliYear.FieldByName('StartYear').AsString := RightStr(Sender.AsString, 4)
    + '/01/01';
  qryMaliYear.FieldByName('EndYear').AsString := RightStr(Sender.AsString, 4)
    + '/12/30'
end;

procedure TMakeMaliYearF.qryMaliYearBeforeDelete(DataSet: TDataSet);
begin
  if get_response('آيا از حذف اين سال مطمئن  هستيد') <> mrYes then
    Abort;
end;

procedure TMakeMaliYearF.qryMaliYearAfterPost(DataSet: TDataSet);
begin
  if newYearId4User <> 0 then
    with DMf.qryTmpTmp do
    begin
      Close;
      SQL.Text := 'DECLARE @OldYearID int = ' + APPBank.Year.ToString;
      SQL.Add('DECLARE @NewYearID int = ' + newYearId4User.ToString);
      SQL.Add('INSERT INTO Util.MaliYearUsers');
      SQL.Add('(UserID, YearID)');
      SQL.Add('SELECT UserID,@NewYearID AS YearID');
      SQL.Add('FROM Util.MaliYearUsers AS MaliYearUsers_1');
      SQL.Add('WHERE (YearID = @OldYearID)');
      // SQL.Add  ('and UserID not in (SELECT UserID');
      // SQL.Add  ('FROM Util.MaliYearUsers AS MaliYearUsers_1');
      // SQL.Add  ('WHERE (YearID = @OldYearID))');

      BigMessage(ExecSQL.ToString +
        ' مورد ارتباط کاربر با سال مالی انجام شد', 0);
      newYearId4User := 0;
      Close;
    end;

  if SubsysMenu[15].Active then
    if MakeAsset then
      TAssetsFunctions.MakeAssetsYear(DataSet.FieldByName('YearId').AsInteger);

  BigMessage('ثبت شد ', 1);
end;

procedure TMakeMaliYearF.FormDestroy(Sender: TObject);
begin
  SaveColWidth(DBGrid1);
end;

procedure TMakeMaliYearF.FormResize(Sender: TObject);
begin
  SetColSize(DBGrid1, 3);
end;

procedure TMakeMaliYearF.FormShow(Sender: TObject);
begin
  if Assigned(AppLogger) then
    AppLogger.LogFormOpen(Caption, FOpenTime);

end;

procedure TMakeMaliYearF.qryMaliYearBeforeOpen(DataSet: TDataSet);
begin
  qryMaliYear.ConnectionString := GetConStr(APPBank.Name, 30);
end;

procedure TMakeMaliYearF.qryMaliYearBeforePost(DataSet: TDataSet);
begin
  lblWarn.Visible := (DataSet.State in [dsInsert]);
  if lblWarn.Visible then
  begin
    newYearId4User := qryMaliYearYearID.AsInteger;
    Warn(lblWarn.Caption);
  end
  else
    newYearId4User := 0;

  MakeAsset := DataSet.State = dsEdit;
end;

end.
