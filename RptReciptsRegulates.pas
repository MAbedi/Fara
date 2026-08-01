unit RptReciptsRegulates;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  template2MDI, System.ImageList, Vcl.ImgList, Vcl.DBActns, System.Actions,
  Vcl.ActnList, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, CedarDbGrid, Data.DB, Data.Win.ADODB, System.Math;

type
  TRptReciptsRegulatesF = class(Ttemplate2MDIF)
    actFilter: TAction;
    pnlLblLimitPlace: TPanel;
    LblShowLimitPlace2: TLabel;
    LblShowLimitPlace1: TLabel;
    qryRecipts: TADOQuery;
    qryReciptsServerID: TIntegerField;
    qryReciptsYearID: TIntegerField;
    qryReciptsReciptNumber: TIntegerField;
    qryReciptsReciptDate: TStringField;
    qryReciptsprice: TBCDField;
    qryReciptsStoreID: TSmallintField;
    qryReciptsc_StoreName: TStringField;
    qryReciptsReciptType: TWordField;
    qryReciptsReciptCaption: TStringField;
    qryReciptsEntity: TFloatField;
    qryReciptsWeight: TFloatField;
    qryReciptsDocNo: TIntegerField;
    qryReciptsDocDate: TStringField;
    qryReciptsRegPrice: TBCDField;
    qryReciptsRegDocNo: TIntegerField;
    qryReciptsRegDocDate: TStringField;
    srcRecipts: TDataSource;
    DBGrid1: TCedarDbgrid;
    qryReciptsRegRowId: TIntegerField;
    qryReciptsReciptState: TWordField;
    qryReciptsReciptNote: TStringField;
    qryReciptsTotallSellPrice: TBCDField;
    qryReciptsRegDate: TStringField;
    BitBtn1: TBitBtn;
    actDocNo: TAction;
    btnDocNo: TBitBtn;
    actDelete: TAction;
    BitBtn2: TBitBtn;
    procedure actFilterExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actDocNoExecute(Sender: TObject);
    procedure actDeleteExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    procedure UpdateList;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RptReciptsRegulatesF: TRptReciptsRegulatesF;

implementation

uses
  DM, GlobalPro, FilterClass_ADO, filter_ADO, Filter_ADO_Const, FaraConsts,
  FormFunctions, MMESSAGE;

{$R *.dfm}

procedure TRptReciptsRegulatesF.actDocNoExecute(Sender: TObject);
var
  s: string;
  RegRowId, ServerID, YearID, SelectedRowsCount: Integer;
begin
  inherited;
  RegRowId := qryRecipts.FieldByName('RegRowId').AsInteger;
  ServerID := qryRecipts.FieldByName('ServerID').AsInteger;
  YearID := qryRecipts.FieldByName('YearID').AsInteger;

  SelectedRowsCount := DBGrid1.SelectedRows.Count;

  if SelectedRowsCount > 0 then
    if get_response
      ('آيا براي پاكسازي سند تعدیلات فرم‌هاي انتخاب شده مطمئن هستيد؟') <> mrYes
    then
      Exit;

  s := GetSelectedRowsDBGrid(DBGrid1, 'RegRowId');

  If s = '' then
    Exit;
  with DMf.qryTmpTmp do
  begin
    Active := False;
    SQL.Text :=
      'UPDATE ReciptsRegulates SET RegDocNo = 0,RegDocDate = '''' WHERE RegRowId IN ('
      + s + ')';
    SQL.Add(' AND  ServerID=' + qryRecipts.FieldByName('ServerID').AsString);
    SQL.Add(' AND  YearID  =' + qryRecipts.FieldByName('YearID').AsString);
    try
      BigMessage(IntToStr(ExecSQL) + ' سند تعدیلات‌ پاكسازي شد.', 2);
      Active := False;
      qryRecipts.Requery;
      qryRecipts.Locate('RegRowId;ServerID;YearID',
        VarArrayOf([RegRowId, ServerID, YearID]), []);
    except
      Warn('اشكال در پاكسازي كردن سند تعدیلات‌');
    end; // try
  end; // with
end;

procedure TRptReciptsRegulatesF.actFilterExecute(Sender: TObject);
var
  fi: TfilterF;
  i: Integer;
  SQL: string;
begin
  inherited;
  fi := TfilterF.Create2(Self, myParams);
  with fi do
  begin
    try

      AddItemFilter(GetFilter, TFilterReciptDate);

      AddItemFilter(GetFilter, TFilterYearID);

      AddItemFilter(GetFilter, TFilterStates);

      SQL := 'Select Min(ReciptNumber),max(ReciptNumber) from Recipts';
      AddItem(DMf.adcBSell, 'number', 'فرم', 'شماره', ftInteger, dvMinMax, '',
        '', ciSimple, '', SQL);

      AddItem(DMf.adcBSell, 'storeId', 'انبار', 'كدانبار', ftInteger, dvMinMax,
        '', '', ciLookup, 'SELECT  n_StoreID,c_StoreName FROM dbo.Stores ',
        'Select Min(n_StoreID),max(n_StoreID) from Stores');

      AddItem(DMf.adcBSell, 'ReciptTypeChecked', 'انتخاب فرمهای تعدیل ', '',
        ftUnknown, dvDefaults, 'True', '', ciCheck,
        'SELECT DISTINCT Recipts.ReciptType, ReciptTypes.ReciptCaption' +
        ' FROM ReciptsRegulates INNER JOIN' +
        ' ReciptItems ON ReciptsRegulates.ReciptItemID = ReciptItems.ReciptItemID AND ReciptsRegulates.ReciptID ='
        + ' ReciptItems.ReciptID AND ReciptsRegulates.ServerID = ReciptItems.ServerID AND'
        + ' ReciptsRegulates.YearID = ReciptItems.YearID INNER JOIN' +
        ' Recipts ON ReciptItems.ReciptID = Recipts.ReciptID AND ReciptItems.ServerID = Recipts.ServerID AND'
        + ' ReciptItems.YearID = Recipts.YearID INNER JOIN' +
        ' ReciptTypes ON Recipts.ReciptType = ReciptTypes.ReciptType');

      if (ShowModal = mrOk) then
      begin
        GetFilterString;
        pnlLblLimitPlace.Hint := GetFilterStringCaption;
        UpdateList;
      end; // if
    finally
      fi.Free;
    end; // t
  end;

end;

procedure TRptReciptsRegulatesF.actDeleteExecute(Sender: TObject);
var
  RegRowId: Integer;
  s: string;
begin
  inherited;
  if DBGrid1.SelectedRows.Count > 0 then
    if get_response('آيا براي به حذف كردن تعدیل‌هاي انتخاب شده مطمئن هستيد؟') <> mrYes
    then
      Exit;

  s := GetSelectedRowsDBGrid(DBGrid1, 'RegRowId');
  If s = '' then
    Exit;
  with DMf.qryTmpTmp do
  begin
    Active := False;
    SQL.Text := 'Delete ReciptsRegulates WHERE (RegDocNo = 0) AND ' +
      '(RegRowId IN (' + s + ')) ';
    SQL.Add(Format('AND (ServerID = %d)',
      [qryRecipts.FieldByName('ServerID').AsInteger]));
    SQL.Add(Format('AND (YearID  = %d)',
      [qryRecipts.FieldByName('YearID').AsInteger]));

    try
      BigMessage(IntToStr(ExecSQL) + ' تعدیل‌ حذف شد.', 2);
      Active := False;
      RegRowId := qryRecipts.FieldByName('RegRowId').AsInteger;
      qryRecipts.Active := False;
      qryRecipts.Open;
      qryRecipts.Locate('RegRowId', RegRowId, [])
    except
      Warn('اشكال در  حذف كردن  تعدیل‌');
    end;
  end;

end;

procedure TRptReciptsRegulatesF.FormCreate(Sender: TObject);
begin
  inherited;
  DBGrid1.SetFooter4Sum([]);
end;

procedure TRptReciptsRegulatesF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  actFilter.Execute;
  if myParams.FindParam('number') = nil then
    Close
end;

procedure TRptReciptsRegulatesF.UpdateList;
var
  s: String;
begin
  Entity_Weight(DBGrid1);

  // ADDItems := GetcFrom(myParams.ParamValues['ADDItems'], ftInteger) = '1';
  PriceOnStoreType(GetcFrom(myParams.ParamValues['StoreID'], ftInteger),
    DBGrid1, qryRecipts);
  with qryRecipts Do
  begin
    Active := False;

    Parameters.ParamByName('ReciptTypeChecked').Value :=
      GetcFrom(myParams.ParamValues['ReciptTypeChecked'], ftString);

    Parameters.ParamByName('StoreFrom').Value :=
      GetcFrom(myParams.ParamValues['storeId'], ftInteger);
    Parameters.ParamByName('StoreTo').Value :=
      GetcTo(myParams.ParamValues['storeId'], ftInteger);

    Parameters.ParamByName('numberFrom').Value :=
      GetcFrom(myParams.ParamValues['number'], ftInteger);
    Parameters.ParamByName('numberto').Value :=
      GetcTo(myParams.ParamValues['number'], ftInteger);

    Parameters.ParamByName('States').Value :=
      GetcFrom(myParams.ParamValues['States'], ftString);

    Parameters.ParamByName('DateFrom').Value :=
      GetcFrom(myParams.ParamValues['ReciptDate'], ftDate);
    Parameters.ParamByName('DateTo').Value :=
      GetcTo(myParams.ParamValues['ReciptDate'], ftDate);

    Parameters.ParamByName('YearIDFrom').Value :=
      GetcFrom(myParams.ParamValues['YearID'], ftInteger);
    Parameters.ParamByName('YearIDTo').Value :=
      GetcTo(myParams.ParamValues['YearID'], ftInteger);

    LblShowLimitPlace1.Caption := 'محدوده شماره فرم : ' + ' از ' +
      IntToStr(Parameters.ParamValues['NumberFrom']) + ' تا ' +
      IntToStr(Parameters.ParamValues['NumberTo']);
    LblShowLimitPlace2.Caption := 'محدوده تاريخ فرم : ' + ' از ' +
      Parameters.ParamValues['DateFrom'] + ' تا ' + Parameters.ParamValues
      ['DateTo'];
    Active := True;
  end; // with

end;

end.
