unit Related;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template4, DBActns, ActnList, StdCtrls, Buttons, ExtCtrls, DB,
  ADODB, Grids, Vcl.DBGrids, DBCtrls, Mask, Menus, ppCtrls, ppVar, ppPrnabl,
  ppClass, ppBands, ppCache, ppDB, ppProd, ppReport, ppComm, ppRelatv,
  DateUtils, ppDBPipe, ppParameter, SumDBGrid, System.Actions;

type
  TRelatedF = class(TTemplate4F)
    DataSetInsert1: TDataSetInsert;
    DataSetDelete1: TDataSetDelete;
    DataSetEdit1: TDataSetEdit;
    actSort: TAction;
    actSearch: TAction;
    BitBtn3: TBitBtn;
    btnSearch: TBitBtn;
    actExcel: TAction;
    BitBtn4: TBitBtn;
    actPrint: TAction;
    actOther: TAction;
    grpPerson1: TGroupBox;
    Panel2: TPanel;
    pnlRelated: TPanel;
    BitBtn12: TBitBtn;
    srcPassBy: TDataSource;
    qryPassBy: TADOQuery;
    qryPassByPersonID1: TIntegerField;
    qryPassByReciptID: TIntegerField;
    qryPassByReciptNumber: TIntegerField;
    qryPassByReciptDate: TStringField;
    qryPassByReciptCaption: TStringField;
    qryPassByReciptNote: TStringField;
    qryPassBykind: TIntegerField;
    qryPassByBalance: TBCDField;
    qryPassByreciptType: TIntegerField;
    qryPassByStoreCustIDForShow: TIntegerField;
    qryPassByServerID: TIntegerField;
    qryPassByYearID: TIntegerField;
    qryPassByAnalizeType: TIntegerField;
    qryPassByRelaID: TIntegerField;
    qryPassByRelatedID: TIntegerField;
    qryPassByDefaultDate: TStringField;
    qryPassByFormItemID: TIntegerField;
    SrcCustTranc: TDataSource;
    qryCustTranc: TADOQuery;
    qryCustTrancPersonID1: TIntegerField;
    qryCustTrancReciptID: TIntegerField;
    qryCustTrancReciptNumber: TIntegerField;
    qryCustTrancReciptDate: TStringField;
    qryCustTrancReciptCaption: TStringField;
    qryCustTrancReciptNote: TStringField;
    qryCustTranckind: TIntegerField;
    qryCustTrancBalance: TBCDField;
    qryCustTrancreciptType: TIntegerField;
    qryCustTrancStoreCustIDForShow: TIntegerField;
    qryCustTrancServerID: TIntegerField;
    qryCustTrancYearID: TIntegerField;
    qryCustTrancAnalizeType: TIntegerField;
    qryCustTrancRelaID: TIntegerField;
    qryCustTrancRelatedID: TIntegerField;
    qryCustTrancDefaultDate: TStringField;
    qryCustTrancFormItemID: TIntegerField;
    actFilter: TAction;
    BitBtn1: TBitBtn;
    btnAddRelated: TBitBtn;
    btnDelRelated: TBitBtn;
    qryMaster: TADOQuery;
    srcMaster: TDataSource;
    qryMasterPersonID1: TIntegerField;
    qryMasterCustName: TStringField;
    qryMasterbalance: TBCDField;
    qryMasterServerID: TIntegerField;
    qryMasterYearID: TIntegerField;
    qryMasterReciptID: TIntegerField;
    qryMasterReciptNumber: TIntegerField;
    qryMasterkind: TIntegerField;
    qryMasterFormItemID: TIntegerField;
    grdMaster: TDBGrid;
    qryMasterFormCaption: TStringField;
    qryMasterbed: TBCDField;
    qryMasterbes: TBCDField;
    qryMasterRelaID: TIntegerField;
    qryMasterAnalizeType: TIntegerField;
    qryMasterRelatedID: TIntegerField;
    Panel4: TPanel;
    grdCustTranc: TDBGrid;
    smgrdCustTranc: TSumGrid;
    Panel5: TPanel;
    smgrdPassBy: TSumGrid;
    grdPassBy: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    qryCustTrancRelatedKind: TIntegerField;
    BitBtn2: TBitBtn;
    procedure actSortExecute(Sender: TObject);
    procedure actSearchExecute(Sender: TObject);
    procedure actExcelExecute(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure btnDelRelatedClick(Sender: TObject);
    procedure btnAddRelatedClick(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure qryPassByAfterOpen(DataSet: TDataSet);
    procedure BitBtn2Click(Sender: TObject);
  private
    SQL_WHERE: string;
    procedure UpdateFilter;
    procedure UP_DATE_Qry(qry: TADOQuery; RelatedID: Integer);
    { Private declarations }
  public
    procedure showRelatedF(qry: TADOQuery; PersonID1: Integer);
    { Public declarations }
  end;

var
  RelatedF: TRelatedF;

implementation

uses DM, sort2, search2, GlobalPro, Math, mmessage, shamsiDate, FaraConsts,
  DocRelated, filter_ADO, FilterClass_ADO, Filter_ADO_Const;

{$R *.dfm}

procedure TRelatedF.showRelatedF(qry: TADOQuery; PersonID1: Integer);
var
  SQL_bed_OR_bes: string;
begin
  RelatedF := TRelatedF.Create(Application);
  with RelatedF do
  begin
    try
      SQL_WHERE := Format('(AllAcc.ServerID = %d) AND (AllAcc.YearID = %d ) ',
        [qry.FieldByName('ServerID').AsInteger, qry.FieldByName('YearID')
        .AsInteger]);

      if qry.FindField('FormID') = nil then
        SQL_WHERE := SQL_WHERE + Format('AND (AllAcc.FormID = %d ) ',
          [qry.FieldByName('ReciptID').AsInteger])
      else
        SQL_WHERE := SQL_WHERE + Format('AND (AllAcc.FormID = %d ) ',
          [qry.FieldByName('FormID').AsInteger]);

      if qry.FindField('FormItemID') <> nil then
        SQL_WHERE := SQL_WHERE + Format('AND (AllAcc.FormItemID = %d ) ',
          [qry.FieldByName('FormItemID').AsInteger]);

      with qryMaster do
      begin
        Active := False;
        SQL.Add('WHERE' + SQL_WHERE);
        Parameters.ParamByName('PersonIDFrom').Value := PersonID1;
        Parameters.ParamByName('PersonIDTo').Value := PersonID1;
        Active := True;
        if qryMasterbed.AsLargeInt > 0 then
          SQL_bed_OR_bes := 'AND ( bes > 0 )AND ( bed = 0 )'
        else
          SQL_bed_OR_bes := 'AND ( bed > 0 )AND ( bes = 0 )'

      end;
      with qryCustTranc do
      begin
        SQL.Add('WHERE (RelatedID = :RelatedID )');
        SQL.Add(Format('AND NOT (%s) ', [SQL_WHERE]));
        SQL.Add(SQL_bed_OR_bes);
        SQL.Add('ORDER BY FormDate');
      end;
      with qryPassBy do
      begin
        SQL.Add('WHERE ( RelatedID = :RelatedID )');
        SQL.Add('AND((RelatedID <> 0) AND (RelatedID <> -1))');
        SQL.Add(Format('AND NOT (%s) ', [SQL_WHERE]));
        SQL.Add(SQL_bed_OR_bes);
        SQL.Add('ORDER BY RelatedID');
      end;
      actFilter.Execute;
      if myParams.FindParam('SellsMethod') <> nil then
        ShowModal
    finally
      Free;
    end;
  end;
end;

procedure TRelatedF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryCustTranc);
end;

procedure TRelatedF.actSearchExecute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryCustTranc);
end;

procedure TRelatedF.actExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(grdCustTranc);
end;

procedure TRelatedF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
    try
      AddItemFilter(GetFilter, TFilterSellsMethod);

      AddItemFilter(GetFilter, TFilterSellsEmporium);

      AddItem(dmF.adcBSell, 'ReciptDate', ' تاريخ ', 'تاريخ', ftDate,
        dvDefaults, APPBank.StartYear, APPBank.endYear, ciSimple, '', '');

      if ShowModal = mrOk then
      begin
        GetFilterString;
        UpdateFilter;
      end;
    finally
      Free;
    end;

end;

procedure TRelatedF.UpdateFilter;
var
  DateFromRemain: String;
begin
  with qryCustTranc do
  begin
    Active := False;
    Parameters.ParamByName('RelatedID').Value := 0;
    Parameters.ParamByName('PersonIDFrom').Value :=
      qryMasterPersonID1.AsInteger;
    Parameters.ParamByName('PersonIDTo').Value := qryMasterPersonID1.AsInteger;

    Parameters.ParamByName('YearIDFrom').Value := opt.DefaultYear;
    Parameters.ParamByName('YearIDTo').Value := APPBank.Year;
    Parameters.ParamByName('DateFrom').Value :=
      GetcFrom(myParams.ParamValues['ReciptDate'], ftDate);
    Parameters.ParamByName('DateTo').Value :=
      GetcTo(myParams.ParamValues['ReciptDate'], ftDate);

    DateFromRemain := GetcFrom(myParams.ParamValues['ReciptDate'], ftDate);
    DateFromRemain := miladi2Shamsi(IncDay(Shamsi2Miladi(DateFromRemain), -1));
    Parameters.ParamByName('DateFromRemain').Value := DateFromRemain;

    Parameters.ParamByName('SellsEmporiumFrom').Value :=
      GetcFrom(myParams.ParamValues['SellsEmporium'], ftInteger);
    Parameters.ParamByName('SellsEmporiumTo').Value :=
      GetcTo(myParams.ParamValues['SellsEmporium'], ftInteger);
    Parameters.ParamByName('SellsMethodFrom').Value :=
      GetcFrom(myParams.ParamValues['SellsMethod'], ftInteger);
    Parameters.ParamByName('SellsMethodTo').Value :=
      GetcTo(myParams.ParamValues['SellsMethod'], ftInteger);
    Active := True;
  end;
  With qryPassBy do
  begin
    Active := False;
    Parameters := qryCustTranc.Parameters;
    Parameters.ParamByName('RelatedID').Value := qryMasterRelatedID.AsInteger;
    Active := True;
  end;
end;

procedure TRelatedF.BitBtn12Click(Sender: TObject);
begin
  try
    DocRelatedF.enter(qryCustTranc, 0, -1 * qryMasterbalance.AsCurrency);
  finally
    qryCustTranc.Requery();
  end;
end;

procedure TRelatedF.BitBtn2Click(Sender: TObject);
begin
  inherited;
  if qryCustTranc.Locate('Balance', qryMasterbalance.AsCurrency, []) then
    Warn('یافت شد.')
  else
    Warn('یافت نشد.' + #13 + 'از آنالیز مبلغ استفاده کنید.')

end;

procedure TRelatedF.btnAddRelatedClick(Sender: TObject);
var
  MaxRelatedID: Integer;
begin
  inherited;
  if qryPassBy.RecordCount = 0 then
  begin
    MaxRelatedID := GetANewCode(Self.Name, SqlMaxRelatedID, '');
    UP_DATE_Qry(qryMaster, MaxRelatedID);
    FreeReservedCodes(dmF.adcBSell, '', '', Self.Name);
  end
  else
    MaxRelatedID := qryPassByRelatedID.AsInteger;

  UP_DATE_Qry(qryCustTranc, MaxRelatedID);
  UpdateFilter;

end;

procedure TRelatedF.UP_DATE_Qry(qry: TADOQuery; RelatedID: Integer);
var
  aID, FormItemID: Integer;
  RelaID: Integer;
  ServerID: Integer;
  ayearId: Integer;
begin
  with qry do
    try
      aID := FieldByName('ReciptID').AsInteger;
      ServerID := FieldByName('serverID').AsInteger;
      RelaID := FieldByName('RelaID').AsInteger;
      ayearId := FieldByName('YearID').AsInteger;
      FormItemID := FieldByName('FormItemID').AsInteger;
      case FieldByName('AnalizeType').AsInteger of
        1:
          case FieldByName('Kind').AsInteger of
            1:
              dmF.ExecuteQry(Format('UPDATE Forms SET RelatedID = %d' +
                ' WHERE (ServerId = %d) AND (FormID = %D) AND (YearID = %d)',
                [RelatedID, ServerID, aID, ayearId]));
            2:
              dmF.ExecuteQry(Format('UPDATE FormItems SET RelatedID = %d' +
                ' WHERE (ServerId = %d) AND (FormItemID = %D) AND (YearID = %d)AND (FormID = %D) ',
                [RelatedID, ServerID, FormItemID, ayearId, aID]));
            3:
              dmF.ExecuteQry(Format('UPDATE Recipts SET RelatedID = %d' +
                ' WHERE (ServerId = %d) AND (ReciptID = %D) AND (YearID = %d)',
                [RelatedID, ServerID, aID, ayearId]));
          end;
        2:
          dmF.ExecuteQry
            (Format('UPDATE Related SET  RelatedID = %d FROM  Related WHERE  (ID = %d)',
            [RelatedID, RelaID]));
      end;
    finally
      qry.Requery;
    end;

end;

procedure TRelatedF.btnDelRelatedClick(Sender: TObject);
begin
  if get_response('آيا مي خواهيد  ارتباط سطر انتخاب شده حذف شوند ') <> mrYes
  then
    Exit;
  UP_DATE_Qry(qryPassBy, 0);
  if qryPassBy.RecordCount = 0 then
    UP_DATE_Qry(qryMaster, 0);
  UpdateFilter;

end;

procedure TRelatedF.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
var
  c: Currency;
begin
  inherited;
  if qryMaster.Active then
  begin
    c := qryMasterbalance.AsCurrency - smgrdPassBy.GetValueField('balance');
    if (qryPassBy.RecordCount > 0) and (c <> 0) then
    begin
      Warn(Format('اختلاف در اقلام مرتبط %m رقم اختلاف مي باشد.', [c]));
      CanClose := False;
    end;
  end;
end;

procedure TRelatedF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(grdMaster, 2, True);
  SetColSize(grdPassBy, 2, True);
  SetColSize(grdCustTranc, 2, True);
end;

procedure TRelatedF.qryPassByAfterOpen(DataSet: TDataSet);
begin
  inherited;
  smgrdPassBy.Active := False;
  smgrdPassBy.Active := True;
end;

end.
