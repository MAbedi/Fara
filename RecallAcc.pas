{ -----------------------------------------------------------------------------
  Unit Name: RecallAcc
  Author:    Mahmood
  ----------------------------------------------------------------------------- }
unit RecallAcc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template5, StdCtrls, CheckLst, DBActns, ActnList, Buttons,
  ExtCtrls, DB, ADODB, Grids, Vcl.DBGrids, ComCtrls, DBClient, Provider,AccFunctions,
  ppBands, ppCtrls, ppPrnabl, ppClass, ppDB, ppCache, ppDBPipe, ppComm,
  ppRelatv, ppProd, ppReport, DBCtrls, Menus, dm, Mask, System.Actions,
  Filter_ADO_Const;

type
  TRecallAccF = class(TTemplate5F)
    BitBtn1: TBitBtn;
    Image2: TImage;
    Image3: TImage;
    StatusBar1: TStatusBar;
    actSearch: TAction;
    actSort: TAction;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    StatusBar2: TStatusBar;
    BitBtn5: TBitBtn;
    actPrint: TAction;
    actExcel: TAction;
    actSelectAll: TAction;
    Panel2: TPanel;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    lblSumChecks: TLabel;
    actSlelectInverse: TAction;
    DBGrid1: TDBGrid;
    Panel3: TPanel;
    actRptCardex: TAction;
    actFilter: TAction;
    actShowpreRecipt: TAction;
    BitBtn9: TBitBtn;
    qry_TrialDetailsBalance: TADOQuery;
    qry_TrialDetailsBalanceTopicCode: TLargeintField;
    qry_TrialDetailsBalanceMoeenName_L1: TStringField;
    qry_TrialDetailsBalanceMoeenName_L2: TStringField;
    qry_TrialDetailsBalanceDetailName_L1: TStringField;
    qry_TrialDetailsBalanceDetailName_L2: TStringField;
    qry_TrialDetailsBalanceDebt: TFMTBCDField;
    qry_TrialDetailsBalanceFitfulIDc: TBCDField;
    qry_TrialDetailsBalanceBalanceDebt: TFMTBCDField;
    qry_TrialDetailsBalanceBalanceCredit: TFMTBCDField;
    qry_TrialDetailsBalancebes: TBCDField;
    qry_TrialDetailsBalancebed: TBCDField;
    qry_TrialDetailsBalanceMandehBed: TBCDField;
    qry_TrialDetailsBalanceMandehbes: TBCDField;
    qry_TrialDetailsBalancerow: TLargeintField;
    qry_TrialDetailsBalanceMinCompany: TIntegerField;
    qry_TrialDetailsBalanceCombineName: TStringField;
    qry_TrialDetailsBalanceMobile: TStringField;
    src_TrialDetailsBalance: TDataSource;
    qry_TrialDetailsBalanceDetailCode: TIntegerField;
    qry_TrialDetailsBalance_checked: TBCDField;
    cmbKind: TComboBox;
    Label10: TLabel;
    mskDate: TMaskEdit;
    lbl1: TLabel;
    MaskEdit1: TMaskEdit;
    Label1: TLabel;
    qry_TrialDetailsBalanceCredit: TFMTBCDField;
    qry_TrialDetailsBalanceCurrencyType: TIntegerField;
    qry_TrialDetailsBalanceCurrenciesName: TStringField;
    qry_TrialDetailsBalanceCurrencyDebt: TFMTBCDField;
    qry_TrialDetailsBalanceCurrencyCredit: TFMTBCDField;
    qry_TrialDetailsBalanceBalanceCurrencyDebit: TFMTBCDField;
    qry_TrialDetailsBalanceBalanceCurrencyCredit: TFMTBCDField;
    procedure FormResize(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure actSearchExecute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actExcelExecute(Sender: TObject);
    procedure actSelectAllExecute(Sender: TObject);
    procedure actSlelectInverseExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
    procedure cmbKindChange(Sender: TObject);
    procedure qry_TrialDetailsBalanceFitfulIDcChange(Sender: TField);
  private
    procedure ToggleCheck(CalculateSummary: boolean = True);
    procedure UpdateList;
    { Private declarations }
  public
    function SelectRecall(qryI, qryForms: TADOQuery): boolean;
    { Public declarations }
  end;

var
  RecallAccF: TRecallAccF;

implementation

uses StrUtils, GlobalPro, search2, sort2, filter_ADO, FilterClass_ADO, Math,
  MaskUtils, FaraConsts, Resource;

{$R *.dfm}

function TRecallAccF.SelectRecall(qryI, qryForms: TADOQuery): boolean;
begin
  RecallAccF := TRecallAccF.Create(Application);
  try
    with RecallAccF do
    begin
      with qry_TrialDetailsBalance Do
      begin
        Active := False;
        myParams.Clear;
        actFilter.Execute;
      end;
      if ShowModal = mrOk then
      begin
        with qry_TrialDetailsBalance do
        begin
          Filter := '_checked=1';
          Filtered := True;
          DisableControls;
          qryI.DisableControls;
          First;
          while not eof do
          begin
            qryI.Insert;
            qryI.FieldByName('TopicCode').AsLargeInt := FieldByName('TopicCode')
              .AsLargeInt;
            qryI.FieldByName('DetailCode').AsInteger :=
              FieldByName('DetailCode').AsInteger;

            qryI.FieldByName('AidInfoDate').AsString := Trim(mskDate.Text);

            qryI.FieldByName('AidInfoNo').AsString :=
              qryForms.FieldByName('FormNumber').AsString;

            qryI.FieldByName('ItemNote').AsString :=
              qryForms.FieldByName('FomNote').AsString + Trim(MaskEdit1.Text);

            case cmbKind.ItemIndex of
              0:
                qryI.FieldByName('ItemAmount').AsCurrency :=
                  FieldByName('BalanceDebt').AsCurrency;
              1:
                qryI.FieldByName('ItemAmount').AsCurrency :=
                  FieldByName('BalanceCredit').AsCurrency;
            else
              begin
                qryI.FieldByName('ItemAmount').AsCurrency :=
                  FieldByName('FitfulIDc').AsCurrency;
              end;
            end;

            qryI.FieldByName('CTopicCode').AsInteger := 0;
            qryI.FieldByName('CTopicCode2').AsInteger := 0;

            qryI.FieldByName('CustomerID2').AsInteger :=
              FieldByName('DetailCode').AsInteger;
            qryI.post;
            Next;
            Application.ProcessMessages;
          end;
        end;
      end;
    end;
    Result := True;
  finally
    qryI.EnableControls;
    RecallAccF.Free;
  end; // try
end;

procedure TRecallAccF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 1);
end;

procedure TRecallAccF.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  if DataCol = 0 then
  begin
    DBGrid1.Canvas.Rectangle(Rect);
    if qry_TrialDetailsBalance_checked.AsInteger = 1 then
      DBGrid1.Canvas.Draw(Rect.Left, Rect.Top, Image3.Picture.Graphic)
    else
      DBGrid1.Canvas.Draw(Rect.Left, Rect.Top, Image2.Picture.Graphic)
  end; // if
end;

procedure TRecallAccF.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_SPACE then
  begin
    Key := 0;
    ToggleCheck;
  end; // if
end;

procedure TRecallAccF.ToggleCheck(CalculateSummary: boolean = True);
begin
  with qry_TrialDetailsBalance do
  begin
    Edit;
    FieldByName('_Checked').AsInteger :=
      IfThen(FieldByName('_Checked').AsInteger = 1, 0, 1);
    post;
  end; // with
end;

procedure TRecallAccF.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  ToggleCheck;
end;

procedure TRecallAccF.actSearchExecute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qry_TrialDetailsBalance);
end;

procedure TRecallAccF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qry_TrialDetailsBalance);
end;

procedure TRecallAccF.cmbKindChange(Sender: TObject);
begin
  inherited;
  setColumns2(DBGrid1, cmbKind.ItemIndex = 2, 'FitfulIDc');
  if cmbKind.ItemIndex = 2 then
  begin
    DBGrid1.Options := DBGrid1.Options - [dgRowSelect] + [dgEditing];
  end
  else
    DBGrid1.Options := DBGrid1.Options + [dgRowSelect] - [dgEditing];

end;

procedure TRecallAccF.FormCreate(Sender: TObject);
begin
  inherited;
  mskDate.Text := var_glb_CurrentDate;
end;

procedure TRecallAccF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
end;

procedure TRecallAccF.actExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TRecallAccF.actSelectAllExecute(Sender: TObject);
begin
  inherited;
  with qry_TrialDetailsBalance do
  begin
    DisableControls;
    First;
    while not eof do
    begin
      Edit;
      FieldByName('_checked').AsInteger := 1;
      post;
      Next;
    end; // while
    First;
    EnableControls;
  end; // with
end;

procedure TRecallAccF.actSlelectInverseExecute(Sender: TObject);
begin
  inherited;
  with qry_TrialDetailsBalance do
  begin
    DisableControls;
    First;
    while not eof do
    begin
      Edit;
      FieldByName('_checked').AsInteger :=
        IfThen(FieldByName('_checked').AsInteger = 1, 0, 1);
      post;
      Next;
    end; // while
    First;
    EnableControls;
  end; // with
end;

procedure TRecallAccF.FormShow(Sender: TObject);
begin
  inherited;
  Entity_Weight(DBGrid1);
  cmbKind.ItemIndex := 0;
  cmbKindChange(cmbKind);
end;

procedure TRecallAccF.qry_TrialDetailsBalanceFitfulIDcChange(Sender: TField);
begin
  inherited;
  ToggleCheck(Sender.AsInteger > 0);
end;

procedure TRecallAccF.actFilterExecute(Sender: TObject);
var
  fil: TfilterF;
begin
  inherited;
  fil := TfilterF.Create2(Self, myParams);
  with fil do
    try
      AddItemFilter(GetFilter, TFilterCurrencies);
      AddItemFilter(GetFilter, TFilterCurrencyKind);

      AddItem(DMF.adcAccounting, 'state', 'وضعيت اسناد', '', ftUnknown,
        dvDefaults, 'true', '', ciCheck, strLookUpStatus);
      AddItem(DMF.adcAccounting, 'checked', 'انواع سند حسابداري', '', ftUnknown,
        dvDefaults, 'true', '', ciCheck, strLookUpDocType, '');
      AddItem(DMF.adcAccounting, 'DocDate', 'تاريخ سندحسابداري', 'تاريخ',
        ftDate, dvDefaults, '0000/00/00', '9999/99/99', ciSimple, '',
        Format(strMaxMinDocDate, [APPBank.Year]));
      AddItem(DMF.adcAccounting, 'PrimaryDocNo', 'شماره اصلي سند حسابداري',
        'شماره سند', ftInteger, dvMinMax, '0', '999999', ciSimple, '',
        Format(strMaxMinPrimaryDocNo, [APPBank.Year]));
      AddItem(DMF.adcAccounting, 'SecondaryDocNo', 'شماره فرعي سند حسابداري',
        'شماره فرعي', ftInteger, dvMinMax, '0', '999999', ciSimple, '',
        Format(strMaxMinSecondaryDocNo, [APPBank.Year]));

      AddItem(DMF.adcAccounting, 'DetailCode', ' حساب تفصيلي', 'كد تفصيلي ',
        ftInteger, dvMinMax, '', '', ciLookup, strLookUpDetail,
        strMaxMinDetail);
      // if gv_MultiCompany then
      // AddItem(DMF.adcAccounting, 'CompanyCode', 'شعبه /شركت', 'شركت',
      // ftInteger, dvMinMax, '', '', ciLookup, strLookUpCompany,
      // strMaxMinCompany);
      AddItem(DMF.adcAccounting, 'AccCode', 'كد و نام حساب ', 'كد حساب',
        ftLargeint, dvMinMax, '', '', ciLookup,
        'SELECT TopicCode,MoeenName_L1 FROM acc.Categories WHERE (levelId= ' +
        IntToStr(3) + ') ',
        'SELECT min(TopicCode),max(TopicCode) FROM acc.Categories WHERE (levelId= '
        + IntToStr(3) + ') ');
      // if (Sender as TAction).Tag = 1 then
      // AddItem(DMF.adcAccounting, 'Year', 'محدود سال مالي', 'سال مالي',
      // ftInteger, dvMinMax, '', '', ciSimple, '',
      // 'SELECT Min(YearID),Max(YearID) FROM UTil.maliYear');

      // AddItem(DMF.adcBSell, 'AidActive', 'انتخاب ستون', 'شماره کمکی', ftUnknown,
      // dvDefaults, '1', '', ciRadioGroup, 'SELECT 0 As c,''شماره کمکی '' as n '
      // + ' Union All ' + 'SELECT 1 ,''بدون شماره کمکی ''  ');

      if fil.ShowModal = mrOk then
      begin
        GetFilterString;
        UpdateList;
      end; // if
    finally
      fil.Free;
    end; // try

end;

procedure TRecallAccF.UpdateList;
begin
  with qry_TrialDetailsBalance do
  begin
    Active := False;
    SetArzParameters(qry_TrialDetailsBalance,MyParams);

    Parameters.ParamByName('DocTypeCode1_Not').Value :=
      GetcFrom(myParams.ParamValues['checked'], ftString);
    Parameters.ParamByName('DocTypeCode2_Not').Value := 0;
    Parameters.ParamByName('DocTypeCode3_Not').Value := 0;
    Parameters.ParamByName('Status1').Value :=
      GetcFrom(myParams.ParamValues['state'], ftString);
    Parameters.ParamByName('Status2').Value := 0;
    Parameters.ParamByName('DocDateFrom').Value :=
      GetcFrom(myParams.ParamValues['DocDate'], ftString);
    Parameters.ParamByName('DocDateTo').Value :=
      GetcTo(myParams.ParamValues['DocDate'], ftString);
    Parameters.ParamByName('PrimaryDocNoFrom').Value :=
      GetcFrom(myParams.ParamValues['PrimaryDocNo'], ftInteger);
    Parameters.ParamByName('PrimaryDocNoTo').Value :=
      GetcTo(myParams.ParamValues['PrimaryDocNo'], ftInteger);
    Parameters.ParamByName('SecondaryDocNoFrom').Value :=
      GetcFrom(myParams.ParamValues['SecondaryDocNo'], ftInteger);
    Parameters.ParamByName('SecondaryDocNoTo').Value :=
      GetcTo(myParams.ParamValues['SecondaryDocNo'], ftInteger);
    Parameters.ParamByName('FromYearId').Value := APPBank.Year;
    Parameters.ParamByName('ToYearId').Value := APPBank.Year;
    // if gv_MultiCompany then
    // begin
    // qry_TrialDetailsBalance.Parameters.ParamByName('CompanyCodeFrom').Value :=
    // GetcFrom(myParams.ParamValues['CompanyCode'], ftInteger);
    // qry_TrialDetailsBalance.Parameters.ParamByName('CompanyCodeTo').Value :=
    // GetcTo(myParams.ParamValues['CompanyCode'], ftInteger);
    // end;
    Parameters.ParamByName('DetailCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['DetailCode'], ftInteger);
    Parameters.ParamByName('detailCodeTo').Value :=
      GetcTo(myParams.ParamValues['DetailCode'], ftInteger);
    Parameters.ParamByName('AccCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['AccCode'], ftInteger);
    Parameters.ParamByName('AccCodeTo').Value :=
      GetcTo(myParams.ParamValues['AccCode'], ftInteger);
    Parameters.ParamByName('FromYearID').Value := APPBank.Year;
    Parameters.ParamByName('ToYearID').Value := APPBank.Year;
    if myParams.FindParam('Year') <> nil then
    begin
      Parameters.ParamByName('FromYearID').Value :=
        GetcFrom(myParams.ParamValues['Year'], ftInteger);
      Parameters.ParamByName('ToYearID').Value :=
        GetcTo(myParams.ParamValues['Year'], ftInteger);
    end;
    Active := True;

  end; // with


  // GetcFrom(myParams.ParamValues['AidActive'], ftInteger) = '0';

end;

end.
