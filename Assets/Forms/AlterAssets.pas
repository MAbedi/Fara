unit AlterAssets;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBActns, ActnList, StdCtrls, Buttons, ExtCtrls, dm, FaraConsts ,
  DBCtrls, DB, Mask, ADODB, Menus, Grids, Vcl.DBGrids, template2MDI, ImgList,
  System.ImageList, System.Actions;

type
  TAlterAssetsF = class(Ttemplate2MDIF)
    qryAlterAssets: TADOQuery;
    qryAlterAssetsID: TIntegerField;
    qryAlterAssetsSerial: TIntegerField;
    qryAlterAssetsAlterDate: TStringField;
    qryAlterAssetsAlterPrice: TBCDField;
    qryAlterAssetsAlterDepValue: TBCDField;
    qryAlterAssetsAlterDepValueInYear: TBCDField;
    qryAlterAssetsAlterNote: TMemoField;
    qryAlterAssetsFormType: TWordField;
    qryAlterAssetsPrvID: TIntegerField;
    srcAlterAssets: TDataSource;
    okPanel: TPanel;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    newPanel: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    DataSetDelete1: TDataSetDelete;
    actSort: TAction;
    actSendToExcel: TAction;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn9: TBitBtn;
    qryExpenses: TADOQuery;
    popOther: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    Excel1: TMenuItem;
    qryExpensesExpID: TIntegerField;
    qryExpensesSerialNum: TIntegerField;
    qryExpensesExpDesc: TStringField;
    srcExpenses: TDataSource;
    qryExpensesBuyDate: TStringField;
    actAmvalSort: TAction;
    actAmvalExcel: TAction;
    actAmvalSearch: TAction;
    qryExpensesExpValue: TBCDField;
    qryExpensesFirstDepValue: TBCDField;
    DBGrid2: TDBGrid;
    qryAlterAssetsInfoKind: TWordField;
    Panel6: TPanel;
    Panel7: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Bevel2: TBevel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit4: TDBEdit;
    GroupBox1: TGroupBox;
    DBMemo1: TDBMemo;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    qryAmval: TADOQuery;
    srcAmval: TDataSource;
    qryAmvalPelakNum: TStringField;
    qryAmvalStuffDesc: TStringField;
    qryAmvalSerialNum: TIntegerField;
    rdoInfoKInd: TRadioGroup;
    DBText1: TDBText;
    Panel4: TPanel;
    BitBtn8: TBitBtn;
    BitBtn10: TBitBtn;
    BitBtn11: TBitBtn;
    qryAmvalDecDate: TStringField;
    qryAmvalvalidDate: TStringField;
    qryAlterAssetsFirstUser: TStringField;
    qryAlterAssetsLastUser: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure srcAlterAssetsStateChange(Sender: TObject);
    procedure qryAlterAssetsAfterInsert(DataSet: TDataSet);
    procedure qryAlterAssetsAfterPost(DataSet: TDataSet);
    procedure qryAlterAssetsBeforeDelete(DataSet: TDataSet);
    procedure qryAlterAssetsBeforePost(DataSet: TDataSet);
    procedure actSortExecute(Sender: TObject);
    procedure actSearchExecute(Sender: TObject);
    procedure actSendToExcelExecute(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure actOtherExecute(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure qryExpensesAfterScroll(DataSet: TDataSet);
    procedure qryAmvalAfterScroll(DataSet: TDataSet);
    procedure rdoInfoKIndClick(Sender: TObject);
    procedure qryAlterAssetsFormTypeGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actAmvalSortExecute(Sender: TObject);
    procedure actAmvalExcelExecute(Sender: TObject);
    procedure actAmvalSearchExecute(Sender: TObject);
    procedure qryAlterAssetsBeforeInsert(DataSet: TDataSet);
    procedure qryAlterAssetsAlterDateChange(Sender: TField);
    procedure qryAlterAssetsAfterEdit(DataSet: TDataSet);
  private
    function ValidDate(InputDate: String; sn: Integer): Boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AlterAssetsF: TAlterAssetsF;

implementation

uses GlobalPro, mmessage, Math, sort2, search2,
  ScanImage, FormFunctions, StrUtils;

{$R *.dfm}

procedure TAlterAssetsF.FormCreate(Sender: TObject);
begin
  inherited;
  SetLookUpCash(qryAlterAssets);
  rdoInfoKInd.ItemIndex := 0;
end;

procedure TAlterAssetsF.srcAlterAssetsStateChange(Sender: TObject);
begin
  inherited;

  okPanel.Visible := qryAlterAssets.State in dsEditModes;
  newPanel.Visible := not okPanel.Visible;
  BtnReject.Cancel := newPanel.Visible;
  DBGrid1.Enabled := newPanel.Visible;
  FreeReservedCodes(dmF.adcBSell);
end;

procedure TAlterAssetsF.qryAlterAssetsAfterEdit(DataSet: TDataSet);
begin
  inherited;
DataSet.FieldByName('LastUser').AsString :=GetUserStamp;

end;

procedure TAlterAssetsF.qryAlterAssetsAfterInsert(DataSet: TDataSet);
begin
  inherited;
DataSet.FieldByName('FirstUser').AsString :=GetUserStamp;
      DataSet.FieldByName('ID').AsInteger :=
    GetANewCode(Self.Name, 'Assets.AlterAssets', 'ID');
  DataSet.FieldByName('serial').AsInteger := qryAmval.FieldByName('serialNum')
    .AsInteger;
  DataSet.FieldByName('InfoKind').AsInteger := rdoInfoKInd.ItemIndex + 1;
  DataSet.FieldByName('PrvID').AsInteger := qryExpenses.FieldByName('ExpID')
    .AsInteger;

end;

procedure TAlterAssetsF.qryAlterAssetsAfterPost(DataSet: TDataSet);
begin
  inherited;
  BigMessage('À»  ‘œ.˛', 1);
end;

procedure TAlterAssetsF.qryAlterAssetsBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if get_response('¬Ì« «“ Õ–› „ÿ„∆‰ Â” Ìœø') <> mrYes then
    Abort;
end;

procedure TAlterAssetsF.qryAlterAssetsBeforePost(DataSet: TDataSet);
begin
  inherited;
  if not CheckRequiredFields(DataSet) then
    Abort;
  if not ValidateDatasetDates(DataSet) then
    Abort;
  if not ValidDate(DataSet.FieldByName('AlterDate').AsString,
    qryAmval.FieldByName('SerialNum').AsInteger) then
  begin
    FlashAControl(DBEdit1);
    DBEdit1.SetFocus;
    Abort;
  end;
  // If DataSet.FieldByName('').AsCurrency >  DataSet.FieldByName('').AsCurrency then
  // begin
  // Warn(' ⁄œÌ· «—“‘ œ«—«ÌÌ ‰«„⁄ »— «” ');
  // Abort;
  //
  // end;
end;

procedure TAlterAssetsF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryAlterAssets);
end;

procedure TAlterAssetsF.actSearchExecute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryAlterAssets);
end;

procedure TAlterAssetsF.actSendToExcelExecute(Sender: TObject);
begin
  inherited;
  DataToExcel(qryAlterAssets);
end;

procedure TAlterAssetsF.N1Click(Sender: TObject);
begin
  inherited;
  ScanImageF.ScanImage(dmF.adcBSell, 'AlterAssets', 'ID', 5)
end;

procedure TAlterAssetsF.actOtherExecute(Sender: TObject);
begin
  inherited;
  popOther.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TAlterAssetsF.N2Click(Sender: TObject);
begin
  inherited;
  UpdateAllQry(Self);
end;

procedure TAlterAssetsF.qryExpensesAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qryAlterAssets do
  begin
    Close;
    Parameters.ParamByName('PrvID').Value := DataSet.FieldByName('ExpID')
      .AsInteger;
    Open;
  end;

end;

procedure TAlterAssetsF.qryAmvalAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qryExpenses do
  begin
    Close;
    Parameters.ParamByName('sn').Value := DataSet.FieldByName('SerialNum')
      .AsInteger;
    Open;
  end;

end;

procedure TAlterAssetsF.rdoInfoKIndClick(Sender: TObject);
var
  SQLExpenses, SQLReValidate: string;
begin
  inherited;
  SQLExpenses :=
    'SELECT Amval.PelakNum, Amval.StuffDesc, Amval.SerialNum, Decrease.DecDate, '
    + 'MAX(ReValidate.ValidationDate) AS ValidDate' +
    ' FROM assets.ReValidate as ReValidate INNER JOIN assets.ReValidateItems as ReValidateItems  ON ReValidate.RID = ReValidateItems.RID RIGHT OUTER JOIN'
    + ' Assets.Amval as Amval INNER JOIN' +
    ' Assets.Expenses as Expenses ON Amval.SerialNum = Expenses.SerialNum ON ReValidateItems.SerialNum = Amval.SerialNum LEFT'
    + ' OUTER JOIN Assets.Decrease as Decrease ON Amval.SerialNum = Decrease.SerialNum'
    + ' GROUP BY Amval.PelakNum, Amval.StuffDesc, Amval.SerialNum, Decrease.DecDate';

  SQLReValidate :=
    'SELECT Amval.PelakNum, Amval.StuffDesc, Amval.SerialNum, MAX(ReValidate.ValidationDate) AS validDate,'
    + ' Decrease.DecDate FROM Assets.Amval as Amval INNER JOIN' +
    ' Assets.ReValidateItems as ReValidateItems ON Amval.SerialNum = ReValidateItems.SerialNum INNER JOIN'
    + ' Assets.ReValidate as ReValidate ON ReValidateItems.RID = ReValidate.RID LEFT OUTER JOIN'
    + ' Assets.Decrease as Decrease ON Amval.SerialNum = Decrease.SerialNum' +

    ' GROUP BY Amval.PelakNum, Amval.StuffDesc, Amval.SerialNum, Decrease.DecDate';

  with qryAmval do
  begin
    Close;
    SQL.Text := IfThen((Sender as TRadioGroup).ItemIndex = 0, SQLExpenses,
      SQLReValidate);
    Open;
  end;

end;

procedure TAlterAssetsF.qryAlterAssetsFormTypeGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  if Sender.AsInteger = 1 then
    Text := '„—»Êÿ »Â  ⁄œÌ·  ÃœÌœ «—“Ì«»Ì „Ì »«‘œ.'
  else
    Text := EmptyStr;
end;

procedure TAlterAssetsF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 1);
  SetColSize(DBGrid2, 1);

end;

procedure TAlterAssetsF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid2);
  SaveColWidth(DBGrid1);

end;

procedure TAlterAssetsF.actAmvalSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryAmval);
end;

procedure TAlterAssetsF.actAmvalExcelExecute(Sender: TObject);
begin
  inherited;
  DataToExcel(qryAmval);
end;

procedure TAlterAssetsF.actAmvalSearchExecute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryAmval);
end;

function TAlterAssetsF.ValidDate(InputDate: String; sn: Integer): Boolean;
begin
  with TADOQuery.Create(Self) do
    try
      Connection := dmF.adcBSell;
      SQL.Text := 'SELECT  MAX(AlterDate) FROM Assets.AlterAssets';
      SQL.Add('where (InfoKind = :Kind) And (Serial = :SN)');
      if qryAlterAssets.State in [dsedit] then
      begin
        SQL.Add('AND (ID <> :IDNO)');
        Parameters.ParamByName('IDNO').Value :=
          qryAlterAssets.FieldByName('ID').AsString;
      end;
      Parameters.ParamByName('Kind').Value := rdoInfoKInd.ItemIndex + 1;
      Parameters.ParamByName('SN').Value := sn;
      Open;
      Result := (Fields[0].AsString < InputDate) and
        (qryAmval.FieldByName('validDate').AsString < InputDate);
      if not Result then
        Warn(' «—ÌŒ ‰«„⁄ »— «” .˛˛')
      else
        Result := CheckUsingDate(InputDate, sn);
    finally
      Free;
    end;
end;

procedure TAlterAssetsF.qryAlterAssetsBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  if not qryAmval.FieldByName('DecDate').IsNull then
  begin
    Warn('«Ì‰ œ«—«ÌÌ ›—ÊŒ Â Ì« »—ﬂ‰«— ‘œÂ «” . „Ã«“ »Â À»  «ÿ·«⁄«  ‰„Ì »«‘Ìœ.˛');
    Abort;
  end;
end;

procedure TAlterAssetsF.qryAlterAssetsAlterDateChange(Sender: TField);
begin
  inherited;
  if not ValidDate(Sender.AsString, qryAmval.FieldByName('SerialNum').AsInteger)
  then
  begin
    FlashAControl(DBEdit1);
    DBEdit1.SelectAll;
    DBEdit1.SetFocus;
  end;

end;

end.
