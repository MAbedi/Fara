{ -----------------------------------------------------------------------------
  Unit Name: ReciptsDeficitsPostAll
  Author:    M_A_H_M_O_O_D  -------
  Purpose:
  History:
  ----------------------------------------------------------------------------- }
unit ConsumptionStatistics;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DBCtrls, Grids, Vcl.DBGrids, ppDB, ppDBPipe, ppComm, ppRelatv, ppProd,
  ppClass, ppReport, ppPrnabl, ppCtrls, ppCache, ppBands, ppVar, ppStrtch,
  ppMemo, ppModule, ppSubRpt, DB, ADODB, Mask, ComCtrls, CheckLst, StrUtils,
  Math, ReciptsFunctions, System.ImageList, System.Actions;

type
  TConsumptionStatisticsF = class(Ttemplate2MDIF)
    qryProduct: TADOQuery;
    srcProduct: TDataSource;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn4: TBitBtn;
    StatusBar1: TStatusBar;
    actSendExel: TAction;
    actSort: TAction;
    DBGrid1: TDBGrid;
    actPost: TAction;
    BitBtn1: TBitBtn;
    actFilter: TAction;
    btnSelectAll1: TBitBtn;
    qryProductReciptDate: TStringField;
    qryProductStuffCode: TLargeintField;
    qryProductEntity: TFloatField;
    qryProductWeight: TFloatField;
    qryConsumption: TADOQuery;
    srcConsumption: TDataSource;
    qryConsumptionStuffCode: TLargeintField;
    qryConsumptionProcCode: TLargeintField;
    qryConsumptionEntityUse: TFloatField;
    qryConsumptionWeightUse: TFloatField;
    GroupBox1: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    lbl4: TLabel;
    mskDateFrom: TMaskEdit;
    Panel1: TPanel;
    GroupBox2: TGroupBox;
    chklstTypes: TCheckListBox;
    rdgrpType: TRadioGroup;
    Panel4: TPanel;
    DBGrid2: TDBGrid;
    qryProductc_StuffName: TStringField;
    qryProductUnitName: TStringField;
    qryConsumptionc_StuffName: TStringField;
    qryConsumptionUnitName: TStringField;
    Label3: TLabel;
    GroupBox3: TGroupBox;
    grp6: TGroupBox;
    grp5: TGroupBox;
    btn3: TSpeedButton;
    mskPersonID1: TMaskEdit;
    qryInitType: TADOQuery;
    mskStoreID: TMaskEdit;
    SpeedButton1: TSpeedButton;
    lblStoreID: TLabel;
    lblPersonID1: TLabel;
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actSendExelExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure qryProductAfterScroll(DataSet: TDataSet);
    procedure actPostExecute(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure rdgrpTypeClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure chklstTypesClick(Sender: TObject);
  private
    { Private declarations }
    ReciptType: Integer;
    sType: string;
    procedure UpdateMaskEdits;
    procedure InitForm;
    procedure UpdateFilter;
    function AddRecipt(CurrentDate: string): Boolean;
    function qryinit: TADOQuery;

  public
    { Public declarations }
  end;

var
  ConsumptionStatisticsF: TConsumptionStatisticsF;

implementation

uses filter_ADO, FilterClass_ADO, GlobalPro, DM, FaraConsts, search2, sort2,
  FormFunctions, MMESSAGE, mdiMain, searchCode_ADO;

{$R *.dfm}

procedure TConsumptionStatisticsF.UpdateFilter;
begin
  with qryConsumption do
  begin
    Close;
    SQL.Text := 'SELECT';
    SQL.Add('TransFormItems.StuffCode,');
    SQL.Add('StuffCoding.c_StuffName,');
    SQL.Add('Units.UnitName,');
    SQL.Add('TransForms.StuffCode ProcCode,');
    SQL.Add('ROUND(SUM(TransFormItems.Entity / CASE WHEN TransForms.Entity = 0 THEN 1 ELSE TransForms.Entity END *');
    SQL.Add('(ReciptItems.InputEntity + ReciptItems.OutputEntity)), 2) AS EntityUse,');
    SQL.Add('ROUND(SUM(TransFormItems.Weight / CASE WHEN TransForms.Weight = 0 THEN 1 ELSE TransForms.Weight END *');
    SQL.Add('(ReciptItems.InputWeight + ReciptItems.OutputWeight)), 2) AS WeightUse');
    SQL.Add('FROM ReciptItems');
    SQL.Add('INNER JOIN Recipts ON ReciptItems.ReciptID = Recipts.ReciptID AND ReciptItems.ServerID = Recipts.ServerID');
    SQL.Add('AND ReciptItems.YearID = Recipts.YearID');
    SQL.Add('INNER JOIN TransForms ON ReciptItems.TransFormID = TransForms.TransFormID');
    SQL.Add('INNER JOIN TransFormItems ON TransForms.TransFormID = TransFormItems.TransFormID');
    SQL.Add('INNER JOIN StuffCoding ON StuffCoding.c_StuffCode = TransFormItems.StuffCode');
    SQL.Add('INNER JOIN Units ON Units.UnitCode = StuffCoding.n_UnitCode');
    SQL.Add('WHERE (Recipts.StoreID BETWEEN :StoreIDFrom AND :StoreIDTo )');
    SQL.Add('AND (ReciptItems.StuffCode BETWEEN :ProductCodeFrom AND :ProductCodeTo)');
    SQL.Add('AND (Recipts.ReciptDate BETWEEN :ReciptDateFrom AND :ReciptDateTo )');
    SQL.Add('AND(Recipts.ReciptType IN (' + sType + '))--to do  set param');
    SQL.Add('');
    SQL.Add('GROUP BY TransFormItems.StuffCode, TransForms.StuffCode, StuffCoding.c_StuffName, Units.UnitName');


    // SQL.Text :=
    // 'SELECT Trans.StuffCode, StuffCoding.c_StuffName, Units.UnitName, Trans.ProcCode,';
    // SQL.Add('ROUND(SUM(Trans.Entity / CASE WHEN Trans.ProcEntity = 0 THEN 1 ELSE Trans.ProcEntity END *');
    // SQL.Add('ProcInfo.Entity), 2) AS EntityUse,');
    // SQL.Add('ROUND(SUM(Trans.Weight / CASE WHEN Trans.ProcWeight = 0 THEN 1 ELSE Trans.ProcWeight END *');
    // SQL.Add('ProcInfo.Entity), 2) AS WeightUse');
    // SQL.Add('FROM');
    // SQL.Add('(');
    // SQL.Add('SELECT Recipts.ReciptDate, ReciptItems.StuffCode,ReciptItems.TransFormID ,');
    // SQL.Add('ReciptItems.InputEntity + ReciptItems.OutputEntity AS Entity,');
    // SQL.Add('ReciptItems.InputWeight + ReciptItems.OutputWeight AS Weight');
    // SQL.Add('FROM ReciptItems');
    // SQL.Add('INNER JOIN Recipts ON ReciptItems.ReciptID = Recipts.ReciptID AND');
    // SQL.Add('ReciptItems.ServerID = Recipts.ServerID');
    // SQL.Add('AND ReciptItems.YearID =');
    // SQL.Add('Recipts.YearID');
    // SQL.Add('WHERE (Recipts.StoreID BETWEEN :StoreIDFrom AND :StoreIDTo )');
    // SQL.Add('AND (ReciptItems.StuffCode BETWEEN :ProductCodeFrom AND :ProductCodeTo)');
    // SQL.Add('AND (Recipts.ReciptDate BETWEEN :ReciptDateFrom AND :ReciptDateTo )');
    // SQL.Add('AND(Recipts.ReciptType IN (' + sType + '))');
    // SQL.Add(') ProcInfo');
    // SQL.Add('INNER JOIN');
    // SQL.Add('(');
    // SQL.Add('SELECT TransForms.StuffCode AS ProcCode,TransForms.TransFormID ,');
    // SQL.Add('TransForms.Entity AS ProcEntity,');
    // SQL.Add('TransForms.Weight AS ProcWeight, TransFormItems.StuffCode,');
    // SQL.Add('TransFormItems.Entity, TransFormItems.Weight');
    // SQL.Add('FROM TransForms');
    // SQL.Add('INNER JOIN TransFormItems ON TransForms.TransFormID = TransFormItems.TransFormID');
    // SQL.Add('WHERE (TransForms.TransFormDate <= :TransFormDate )');
    // SQL.Add(') Trans ON ProcInfo.TransFormID = Trans.TransFormID');
    // SQL.Add('INNER JOIN StuffCoding ON StuffCoding.c_StuffCode = Trans.StuffCode');
    // SQL.Add('INNER JOIN Units ON Units.UnitCode = StuffCoding.n_UnitCode');
    // SQL.Add('GROUP BY Trans.StuffCode, Trans.ProcCode, StuffCoding.c_StuffName, Units.UnitName');


    // Parameters.ParamByName('TransFormDate').Value := mskDateFrom.Text;

    Parameters.ParamByName('ReciptDateFrom').Value :=
      GetcFrom(myParams.ParamValues['ReciptDate'], ftString);
    Parameters.ParamByName('ReciptDateTo').Value :=
      GetcTo(myParams.ParamValues['ReciptDate'], ftString);
    Parameters.ParamByName('ProductCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['ProductCode'], ftLargeint);
    Parameters.ParamByName('ProductCodeTo').Value :=
      GetcTo(myParams.ParamValues['ProductCode'], ftLargeint);
    Parameters.ParamByName('StoreIDFrom').Value :=
      GetcFrom(myParams.ParamValues['StoreID'], ftLargeint);
    Parameters.ParamByName('StoreIDTo').Value :=
      GetcTo(myParams.ParamValues['StoreID'], ftLargeint);

  end;
  with qryProduct do
  begin
    Close;
    SQL.Text := 'SELECT Recipts.ReciptDate, ReciptItems.StuffCode, ';
    SQL.Add('StuffCoding.c_StuffName, Units.UnitName, ReciptItems.InputEntity +');
    SQL.Add('ReciptItems.OutputEntity AS Entity,');
    SQL.Add('ReciptItems.InputWeight + ReciptItems.OutputWeight AS Weight');
    SQL.Add('FROM ReciptItems INNER JOIN');
    SQL.Add('Recipts ON ReciptItems.ReciptID = Recipts.ReciptID AND ReciptItems.ServerID = Recipts.ServerID AND');
    SQL.Add('ReciptItems.YearID = Recipts.YearID INNER JOIN');
    SQL.Add('StuffCoding ON ReciptItems.StuffCode = StuffCoding.c_StuffCode INNER JOIN');
    SQL.Add('Units ON StuffCoding.n_UnitCode = Units.UnitCode');
    SQL.Add('WHERE (Recipts.ReciptType IN (' + sType + '))');
    SQL.Add('AND (Recipts.StoreID BETWEEN :StoreIDFrom AND :StoreIDTo )');
    SQL.Add('AND (ReciptItems.StuffCode BETWEEN :ProductCodeFrom AND :ProductCodeTo)');
    SQL.Add('AND (Recipts.ReciptDate BETWEEN :ReciptDateFrom AND :ReciptDateTo )');
    Parameters.ParamByName('ReciptDateFrom').Value :=
      GetcFrom(myParams.ParamValues['ReciptDate'], ftString);
    Parameters.ParamByName('ReciptDateTo').Value :=
      GetcTo(myParams.ParamValues['ReciptDate'], ftString);
    Parameters.ParamByName('ProductCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['ProductCode'], ftLargeint);
    Parameters.ParamByName('ProductCodeTo').Value :=
      GetcTo(myParams.ParamValues['ProductCode'], ftLargeint);
    Parameters.ParamByName('StoreIDFrom').Value :=
      GetcFrom(myParams.ParamValues['StoreID'], ftLargeint);
    Parameters.ParamByName('StoreIDTo').Value :=
      GetcTo(myParams.ParamValues['StoreID'], ftLargeint);
    Open;
  end;
end;

procedure TConsumptionStatisticsF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 2);
  SetColSize(DBGrid2, 1);
end;

procedure TConsumptionStatisticsF.FormCreate(Sender: TObject);
begin
  inherited;
  InitForm
end;

procedure TConsumptionStatisticsF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
  SaveColWidth(DBGrid2)
end;

Procedure TConsumptionStatisticsF.InitForm;
var
  i: Integer;
begin
  chklstTypes.Clear;
  rdgrpType.Items.Clear;
  with DMf.qryTmpTmp do
  begin
    Active := False;
    SQL.Text := 'SELECT ReciptType, ReciptCaption';
    SQL.Add('FROM ReciptTypes');
    SQL.Add('WHERE (EffectType IN (2, 4)) AND ');
    i := mdiMainF.MainFrame.GetActiveIndex + 1;
    SQL.Add(Format('(SUBSTRING(MnuPlaceIDs, %D, 1) = 1)', [i]));
    Active := True;
    while not eof do
    begin
      chklstTypes.AddItem(Fields[1].AsString, TObject(Fields[0].AsInteger));
      next;
    end;
    Active := False;
    SQL.Text :=
      'SELECT DISTINCT ReciptTypes.ReciptType, ReciptTypes.ReciptCaption';
    SQL.Add('FROM ReciptTypes INNER JOIN');
    SQL.Add('Recipts ON ReciptTypes.ReciptType = Recipts.ReciptType');
    SQL.Add('WHERE (ReciptTypes.EffectType IN (4, 7)) AND (ReciptTypes.ReciptType > 3)');
    SQL.Add('ORDER BY ReciptTypes.ReciptType');
    Active := True;
    while not eof do
    begin
      rdgrpType.Items.AddObject(Fields[1].AsString,
        TObject(Fields[0].AsInteger));
      next;
    end;
    Active := False;
  end;
  chklstTypesClick(chklstTypes);
end;

procedure TConsumptionStatisticsF.qryProductAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qryConsumption do
  begin
    Close;
    if RadioButton2.Checked then
    begin
      // Parameters.ParamByName('TransFormDate').Value :=        qryProductReciptDate.AsString;
      Parameters.ParamByName('ReciptDateFrom').Value :=
        qryProductReciptDate.AsString;
      Parameters.ParamByName('ReciptDateTo').Value :=
        qryProductReciptDate.AsString;
    end;
    Open;
  end;

end;

procedure TConsumptionStatisticsF.RadioButton1Click(Sender: TObject);
begin
  inherited;
  qryinit.FieldByName('ReciptType').AsString;
  UpdateFilter
end;

procedure TConsumptionStatisticsF.rdgrpTypeClick(Sender: TObject);
begin
  inherited;
  ReciptType := Integer(rdgrpType.Items.Objects[rdgrpType.ItemIndex]);
  with qryInitType do
  begin
    Active := False;
    Parameters.ParamByName('ReciptType').Value := ReciptType;
    Active := True;
  end;
end;

function TConsumptionStatisticsF.qryinit: TADOQuery;
begin
  Result := qryInitType;
  if (qryInitType.Active) and (sType <> '0') then
    Exit;
  Warn(rdgrpType.Caption + ' Ì« ' + GroupBox2.Caption + ' „‘Œ’ ‰‘œÂ «” ');
  rdgrpType.SetFocus;
  Abort;
end;

procedure TConsumptionStatisticsF.SpeedButton1Click(Sender: TObject);
var
  txt: String;
  b: Boolean;
  Results: array [0 .. 1] of String;
begin
  inherited;
  txt := 'SELECT n_StoreID, c_StoreName FROM Stores ';
  if qryinit.FieldByName('StoreKindList').AsString <> EmptyStr then
    txt := txt + ' WHERE (StoreKind IN (' + qryinit.FieldByName('StoreKindList')
      .AsString + '))';
  b := searchCode_ADOF.SearchCode2(DMf.adcBSell,
    qryinit.FieldByName('StoreCaption').AsString + ' Â« ', txt,
    ['òœ', qryinit.FieldByName('StoreCaption').AsString], Results,
    [50, 150], alLeft);
  if b then
  begin
    mskStoreID.Text := Results[0];
    lblStoreID.Caption := Results[1];
  end;
end;

procedure TConsumptionStatisticsF.actSendExelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TConsumptionStatisticsF.actPostExecute(Sender: TObject);
var
  ReciptDate: string;
  b: Boolean;
begin
  inherited;
  b := False;
  try
    myStore.code := StrToInt(Trim(mskStoreID.Text));
    qryProduct.DisableControls;
    if RadioButton1.Checked then
      b := AddRecipt(mskDateFrom.Text);
    if RadioButton2.Checked then
      with qryProduct do
      begin
        First;
        while not eof do
        begin
          if ReciptDate <> qryProductReciptDate.AsString then
          begin
            ReciptDate := qryProductReciptDate.AsString;
            b := AddRecipt(ReciptDate);
          end;
          next;
        end;
      end;
  finally
    qryProduct.EnableControls;
    if b then
      Warn(' À»  ‘œ.')
    else
      Warn('«‘ﬂ«· œ— À» ');
  end;
end;

function TConsumptionStatisticsF.AddRecipt(CurrentDate: string): Boolean;
var
  RID: Integer;
  qry: TADOQuery;
  FieldNamePrice, FieldNameEntity, FieldNameWeight: string;
begin
  Result := True;
  qry := TADOQuery.Create(Self);
  with qry do
    try
      Connection := DMf.adcBSell;
      if qryConsumption.RecordCount > 0 then
        try
          SQL.Text := 'Select * From Recipts Where ReciptID = 0';
          Open;
          Append;
          FieldByName('InsertDate').AsDateTime := Now;
          FieldByName('OperatorID').AsInteger := User.id;
          FieldByName('ReciptType').AsInteger := ReciptType;
          RID := GetANewID(qry, qryinit.FieldByName('ReciptType').AsString,
            'Recipts', 'ReciptID', nil, qryinit.FieldByName('StepCorrelate')
            .AsInteger);
          FieldByName('ReciptDate').AsString := CurrentDate;

          if DefaultDateActive(qryinit) then
            FieldByName('DefaultDate').AsString := CurrentDate;

          GetReciptNumber(qryinit, qry, 0, myStore);

          if qryinit.FieldByName('ActiveTimeToStr').AsInteger in [1, 3] then
            FieldByName('InsertTime').AsString := SysUtils.TimeToStr(Now);

          if qryinit.FieldByName('EffectType').AsInteger in [3, 4, 5, 7, 8] then
          begin
            FieldNamePrice := 'TotalOutputPrice';
            FieldNameEntity := 'OutputEntity';
            FieldNameWeight := 'OutputWeight';
          end
          else
          begin
            FieldNamePrice := 'TotalInputPrice';
            FieldNameEntity := 'InputEntity';
            FieldNameWeight := 'InputWeight';
          end;

          FieldByName('StoreID').AsInteger := myStore.code;

          ReciptStateAutoStateChange(qryinit, qry);

          FieldByName('AddDecValue').AsInteger := 0;
          FieldByName('TotalValue').AsInteger := 0;
          FieldByName('PersonID2').AsCurrency := 0;
          FieldByName('PersonID3').AsCurrency := 0;
          FieldByName('UseOtherID').AsCurrency := 0;
          FieldByName('PersonID1').AsInteger :=
            StrToInt(Trim(mskPersonID1.Text));
          FieldByName('FirstUser').AsString := User.name;

          FieldByName('OperatorID').AsInteger := User.id;;
          FieldByName('ModifyDate').AsDateTime := Now;
          FieldByName('ReciptType').AsInteger := ReciptType;
          Post;
          Close;
          SQL.Text := 'Select * from ReciptItems Where ReciptItemID = 0';
          Open;
          qryConsumption.DisableControls;
          qryConsumption.First;
          BigMessageProgBar('œ— Õ«· À» ', qryConsumption.RecordCount);
          while not qryConsumption.eof do
          begin
            Append;
            FieldByName('ReciptID').AsInteger := RID;
            FieldByName('ReciptItemID').AsInteger :=
              GetANewID(qry, Self.name, 'ReciptItems ', 'ReciptItemID', nil, 1);

            FieldByName(FieldNameEntity).AsFloat :=
              qryConsumption.FieldByName('EntityUse').AsFloat;
            FieldByName(FieldNameWeight).AsFloat :=
              qryConsumption.FieldByName('WeightUse').AsFloat;
            FieldByName('StuffCode').AsLargeInt :=
              qryConsumption.FieldByName('StuffCode').AsLargeInt;
            Post;
            GoProgressBar(FieldByName('StuffCode').AsString);
            qryConsumption.next;
          end;
          qryConsumption.EnableControls;
        except
          on E: Exception do
          begin
            Result := False;
            add2log(E.Message);
            Warn2(E.Message);
          end;

        end;
    finally
      CloseMessage;
      Free;
      FreeReservedCodes(DMf.adcBSell, '', '', Self.name);
    end;
end;

procedure TConsumptionStatisticsF.btn3Click(Sender: TObject);
var
  txt: String;
  b: Boolean;
  Results: array [0 .. 7] of String;
begin
  inherited;
  txt := 'SELECT DISTINCT CustID,CustName,Address,Tel,PersonID3,' +
    'UseUnitID,Mobile,Fax FROM Vu_CustomersGroups ' + GetCustomersGroupTypeSQL
    ('CustomerKind1', qryinit);
  b := searchCode_ADOF.SearchCode2(DMf.adcBSell,
    qryinit.FieldByName('Person1Caption').AsString + ' Â« ', txt,
    ['òœ', qryinit.FieldByName('Person1Caption').AsString, '¬œ—”', ' ·›‰',
    '„‘ —Ì3', '„Õ· „’—›', 'Â„—«Â', 'œÊ—‰„«'], Results,
    [50, 150, 200, 50, 50, 50, 50, 50], alLeft);
  if b then
  begin
    mskPersonID1.Text := Results[0];
    lblPersonID1.Caption := Results[1];
  end;
end;

procedure TConsumptionStatisticsF.chklstTypesClick(Sender: TObject);
var
  i: Integer;
begin
  inherited;
  sType := EmptyStr;
  for i := 0 to chklstTypes.Count - 1 do
  begin
    if chklstTypes.Checked[i] then
      sType := sType + IntToStr(Integer(chklstTypes.Items.Objects[i])) + ','
  end;
  sType := Trim(LeftStr(sType, Length(sType) - 1));
  if sType = EmptyStr then
    sType := '0';
end;

procedure TConsumptionStatisticsF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryProduct);
end;

procedure TConsumptionStatisticsF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryProduct);
end;

procedure TConsumptionStatisticsF.UpdateMaskEdits;
begin
  mskDateFrom.Text := GetcFrom(myParams.ParamValues['ReciptDate'], ftDate);
end;

procedure TConsumptionStatisticsF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      AddItem(DMf.adcBSell, 'StoreID', ' «‰»«— ', 'ﬂœ', ftInteger, dvMinMax, '',
        '', ciLookup, LookupSQL4Store, MinMaxSQL4Store);

      AddItem(DMf.adcBSell, 'ProductCode', ' „Õ’Ê· ', 'ﬂœ', ftLargeint,
        dvMinMax, '', '', ciLookup, SQLMahsol3,
        'SELECT min(StuffCode),max(StuffCode) From ReciptItems');

      AddItem(DMf.adcBSell, 'ReciptDate', ' «—ÌŒ ', ' «—ÌŒ', ftDate, dvMinMax,
        '', '', ciSimple, '', 'Select  ''' + APPBank.StartYear +
        ''',max(ReciptDate) from Recipts');
      if ShowModal = mrOk then
      begin
        GetFilterString;
        UpdateMaskEdits;
        UpdateFilter;
      end; // if
    finally
      Free;
    end; // try
  end; // with

end;

procedure TConsumptionStatisticsF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  actFilter.Execute;
  if myParams.FindParam('ReciptDate') = nil then
    Close;
end;

end.
