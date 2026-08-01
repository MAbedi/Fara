unit SellPlan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, ADODB, Mask, DBCtrls, ppDB, ppDBPipe,
  ppBands, ppCtrls, ppPrnabl, ppClass, ppVar, ppCache, ppComm, ppRelatv,
  ppProd, ppReport, SumDBGrid, ppParameter, ppDesignLayer, System.ImageList,
  System.Actions, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, CedarDbGrid;

type
  TSellPlanF = class(Ttemplate2MDIF)
    lblUnitName: TLabel;
    qryCustomers9: TADOQuery;
    dsCustomers9: TDataSource;
    Panel1: TPanel;
    lblRecpits: TLabel;
    qryRecipts: TADOQuery;
    srcRecipts: TDataSource;
    qryReciptsReciptID: TIntegerField;
    qryReciptsReciptNumber: TIntegerField;
    qryReciptsReciptDate: TStringField;
    qryReciptsPersonID1: TIntegerField;
    qryReciptsReciptType: TWordField;
    qryReciptsCustName: TStringField;
    qryReciptsAddress: TStringField;
    actOrderSelect: TAction;
    btnOrderSelect: TBitBtn;
    actShowForm: TAction;
    btnShowForm: TBitBtn;
    actDelDriver: TAction;
    btnDelDriver: TBitBtn;
    actSort: TAction;
    actSendExcel: TAction;
    btnSort: TBitBtn;
    btnSearch_: TBitBtn;
    btnSendExcel: TBitBtn;
    actExportSell: TAction;
    btnExportSell: TBitBtn;
    qryStors: TADOQuery;
    qryStorsn_StoreID: TSmallintField;
    qryStorsc_StoreName: TStringField;
    srcStors: TDataSource;
    grpStores: TGroupBox;
    DBEdit1: TDBEdit;
    btnStores: TSpeedButton;
    DBEdit2: TDBEdit;
    lblDate: TLabel;
    mskDate: TMaskEdit;
    qryinit: TADOQuery;
    qryReciptsCustomersRow: TIntegerField;
    ppReport1: TppReport;
    ppDetailBand2: TppDetailBand;
    ppDBPipeline1: TppDBPipeline;
    qryReciptsReciptsRow: TIntegerField;
    actPrint: TAction;
    actprintvijeh: TAction;
    btnPrint: TBitBtn;
    ppDBPipeline2: TppDBPipeline;
    ppField1: TppField;
    ppField2: TppField;
    ppField3: TppField;
    ppField4: TppField;
    ppField5: TppField;
    ppField6: TppField;
    ppField7: TppField;
    ppField8: TppField;
    ppField9: TppField;
    ppField10: TppField;
    ppField11: TppField;
    actRow: TAction;
    btnRow: TBitBtn;
    qryReciptsTel: TStringField;
    qryReciptsTotallSellPrice: TBCDField;
    qryCustomers9CustID: TIntegerField;
    qryCustomers9CustName: TStringField;
    qryCustomers9CustomerNote: TStringField;
    qryReciptsPersonID3: TIntegerField;
    qryReciptsCustName3: TStringField;
    qryReciptsServerID: TIntegerField;
    qryReciptsYearID: TIntegerField;
    qryReciptsEntity: TFloatField;
    qryReciptsWeight: TFloatField;
    qryReciptsSumPrice: TBCDField;
    pnlTop: TPanel;
    Label3: TLabel;
    cmbReciptType: TComboBox;
    qryStors_PersonID2: TIntegerField;
    edt_PersonName: TDBEdit;
    btn_PersonID2: TSpeedButton;
    edt_PersonID2: TDBEdit;
    Label1: TLabel;
    qryStors_PersonName: TStringField;
    DBGrid1: TCedarDbgrid;
    DBGrid2: TCedarDbgrid;
    qryReciptsPersonID2: TIntegerField;
    qryReciptsCustName2: TStringField;
    procedure qryCustomers9AfterScroll(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure actOrderSelectExecute(Sender: TObject);
    procedure actShowFormExecute(Sender: TObject);
    procedure actDelDriverExecute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSendExcelExecute(Sender: TObject);
    procedure actExportSellExecute(Sender: TObject);
    procedure btnStoresClick(Sender: TObject);
    procedure qryStorsAfterScroll(DataSet: TDataSet);
    procedure actPrintExecute(Sender: TObject);
    procedure actprintvijehExecute(Sender: TObject);
    procedure ppLblCaptionGetText(Sender: TObject; var Text: String);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure ppLblPrintDateGetText(Sender: TObject; var Text: String);
    procedure ppSysVarPageNoGetText(Sender: TObject; var Text: String);
    procedure actRowExecute(Sender: TObject);
    procedure cmbReciptTypeChange(Sender: TObject);
    procedure btn_PersonID2Click(Sender: TObject);
  private
    FormType: Integer;
    ReciptTypes, CustName: string;
    procedure DeleteCheck(ItemID: Integer);
    procedure exportRecipt;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SellPlanF: TSellPlanF;

implementation

uses DM, GlobalPro, selected, Recipts, FormFunctions, sort2, search2,
  DateUtils, searchCode_ADO, mmessage, DBGrid2Print, main, FaraConsts;

{$R *.dfm}

procedure TSellPlanF.qryCustomers9AfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qryRecipts do
  begin
    Close;
    Parameters.ParamByName('PersonID3').Value := DataSet.FieldByName('CustID')
      .AsInteger;
    Parameters.ParamByName('StoreID').Value := qryStors.FieldByName('n_StoreID')
      .AsInteger;
    // Parameters.ParamByName('Type').Value := FormType;
    Open;
  end;
  lblRecpits.Caption := Format(lblRecpits.Caption,
    [DataSet.FieldByName('CustName').AsString])
end;

procedure TSellPlanF.FormCreate(Sender: TObject);
begin
  inherited;
  With qryRecipts do
  begin
    SQL.Text := 'SELECT Recipts.ReciptID, Recipts.ReciptNumber,';
    SQL.Add('Recipts.ReciptDate, Recipts.PersonID1, Recipts.ReciptType, Customers.CustName,');
    SQL.Add('Recipts.PersonID3, Customers3.CustName AS CustName3, ');
    SQL.Add('Recipts.PersonID2, Customers2.CustName AS CustName2, ');
    SQL.Add('isnull(AddressInMasir.MasirText,'''') + '' '' + Customers.Address AS Address,');
    SQL.Add('Customers.CustomersRow,');
    SQL.Add('Recipts.ReciptsRow, Customers.Tel');
    SQL.Add(', SUM(ReciptItems.TotalInputPrice + ReciptItems.TotalOutputPrice) AS');
    SQL.Add('SumPrice,');
    SQL.Add('SUM(ReciptItems.TotallSellPrice) AS TotallSellPrice');

    SQL.Add(',Recipts.ServerID , Recipts.YearID,');
    SQL.Add('SUM(ReciptItems.InputEntity + ReciptItems.OutputEntity) AS Entity,');
    SQL.Add(' SUM(ReciptItems.InputWeight + ReciptItems.OutputWeight) AS Weight');

    SQL.Add('FROM Recipts');
    SQL.Add('INNER JOIN Customers AS Customers3 ON Recipts.PersonID3 = Customers3.CustID');
    SQL.Add('INNER JOIN Customers AS Customers2 ON Recipts.PersonID2 = Customers2.CustID');
    SQL.Add('INNER JOIN Customers ON Recipts.PersonID1 = Customers.CustID INNER JOIN');
    SQL.Add('ReciptItems ON Recipts.ReciptID = ReciptItems.ReciptID AND Recipts.ServerID = ReciptItems.ServerID ');
    SQL.Add('AND Recipts.YearID = ReciptItems.YearID LEFT OUTER JOIN');
    SQL.Add('AddressInMasir ON Customers.MasirID = AddressInMasir.MasirID');

    SQL.Add('WHERE (Recipts.PersonID3 = :PersonID3 )');
    SQL.Add('and (Recipts.StoreID=:StoreID) and (Recipts.ReciptState<3) ');
    SQL.Add('and (Recipts.ParentReciptID=0 or Recipts.ParentReciptID is null)');

  end;
  DBGrid2.SetFooter4Sum([]);
  InitCombos(cmbReciptType,
    'SELECT ReciptType,ReciptCaption FROM ReciptTypes WHERE(EffectType IN (3, 4, 5)) '
    + ' AND (MnuPlaceIDs <> ''0000000000000000000000000'')');
  FormType := var_glb_gParam;
  if mainf.Menu = mainf.Mnu5ProcurementI then
  begin
    Caption := '»—‰«„Â —Ì“Ì Œ—Ìœ';
    lblRecpits.Caption := '·Ì”  œ—ŒÊ«”  Œ—Ìœ «‰ Œ«» ‘œÂ ÃÂ  :ù %S';

    With qryStors do
    begin
      SQL.Text := 'SELECT DISTINCT Stores.n_StoreID, Stores.c_StoreName';
      SQL.Add('FROM Stores INNER JOIN');
      SQL.Add('UsersStore ON Stores.n_StoreID = UsersStore.n_StoreID');
      SQL.Add('WHERE (UsersStore.n_UserID = %D ) OR (127 = %D )');
      SQL.Add('AND (Stores.n_StoreID > 0)');
      SQL.Add('GROUP BY Stores.n_StoreID, Stores.c_StoreName');
      SQL.Text := Format(SQL.Text, [User.id, User.id]);
    end;
    qryCustomers9.SQL.Add('AND (CustomersGroup.GroupType = 17)');
    lblUnitName.Caption := '·Ì”  ' + CustGroupsNames[17];
    qryCustomers9CustID.DisplayLabel := 'ﬂœ ' + CustGroupsNames[17];
    qryCustomers9CustName.DisplayLabel := '‰«„ ' + CustGroupsNames[17];
    actDelDriver.Caption := actDelDriver.Caption + CustGroupsNames[17];
    ReciptTypes := '22,120,121,122,123,124,125,126,127,128,129';
    qryRecipts.SQL.Add('AND ( Recipts.ReciptType in (' + ReciptTypes + ') )');
    setColumns2(DBGrid2, False, 'PersonID3');
    setColumns2(DBGrid2, False, 'CustName3');
    actExportSell.Visible := False;
    CustName := '›—Ê‘‰œÂ';
  end
  else
  begin
    lblRecpits.Caption := '·Ì”  ”›«—‘«  «‰ Œ«» ‘œÂ ÃÂ  :ù %S';
    With qryStors do
    begin
      SQL.Text := 'SELECT n_StoreID, c_StoreName';
      SQL.Add('FROM Stores');
      SQL.Add('where StoreKind = 1');
    end;
    qryCustomers9.SQL.Add('AND (CustomersGroup.GroupType = 9)');
    lblUnitName.Caption := '·Ì”  ' + CustGroupsNames[9];
    qryCustomers9CustID.DisplayLabel := 'ﬂœ ' + CustGroupsNames[9];
    qryCustomers9CustName.DisplayLabel := '‰«„ ' + CustGroupsNames[9];
    actDelDriver.Caption := actDelDriver.Caption + CustGroupsNames[9];
    ReciptTypes := IntToStr(FormType);
    qryRecipts.SQL.Add('AND (Recipts.ReciptType = ' + ReciptTypes + ') ');
    CustName := '„‘ —Ì';
  end;

  with qryRecipts do
  begin
    FieldByName('PersonID1').DisplayLabel := 'ﬂœ ' + CustName;
    FieldByName('CustName').DisplayLabel := '‰«„ ' + CustName;
    FieldByName('CustomersRow').DisplayLabel := '—œÌ› ' + CustName;

    SQL.Add('GROUP BY Recipts.ReciptID, Recipts.ReciptNumber, Recipts.ReciptDate, Recipts.PersonID1, Recipts.ReciptType,');
    SQL.Add('Recipts.PersonID3, Customers.CustName,');
    SQL.Add('Recipts.PersonID2, Customers2.CustName,');
    SQL.Add('Customers3.CustName, Customers.Address, Customers.CustomersRow, ');
    SQL.Add('Recipts.ReciptsRow, Customers.Tel,AddressInMasir.MasirText');
    SQL.Add(',Recipts.ServerID , Recipts.YearID');
    SQL.Add('ORDER BY Recipts.ReciptsRow, Customers.CustomersRow');
  end;

  mskDate.Text := var_glb_CurrentDate;

  qryStors.Open;
  qryCustomers9.Open;
end;

procedure TSellPlanF.actOrderSelectExecute(Sender: TObject);
const
  Sqltxt = 'SELECT Recipts.ReciptID, Recipts.ReciptNumber, Recipts.ReciptDate, Recipts.PersonID1, Customers.CustName,'
    + ' Customers.Address, SUM(ReciptItems.OutputEntity) AS SelectdSum1' +
    ', SUM(ReciptItems.OutputWeight) AS SelectdSum2' +
    ' FROM Recipts INNER JOIN Customers ON Recipts.PersonID1 = Customers.CustID'
    + ' INNER JOIN ReciptItems ON Recipts.ReciptID = ReciptItems.ReciptID AND Recipts.ServerID = ReciptItems.ServerID'
    + ' AND Recipts.YearID = ReciptItems.YearID' +
    ' WHERE (Recipts.ReciptType in (%s) )' +
    ' AND ((Recipts.PersonID3 = 0) OR (Recipts.PersonID3 IS NULL))' +
    ' AND (Recipts.StoreID = %d) AND (Recipts.ReciptState < 3)' +
    ' AND ( Recipts.YearID = %d ) AND ( Recipts.ServerID = %d )' +
    ' GROUP BY Recipts.ReciptID, Recipts.ReciptNumber, Recipts.ReciptDate, ' +
    'Recipts.PersonID1, Customers.CustName, Customers.Address' +
    ' ORDER BY Recipts.ReciptDate DESC';
var
  S: String;

begin
  inherited;
  S := selectedF.ShowSelect(DMf.adcBSell, lblRecpits.Caption,
    Format(Sqltxt, [ReciptTypes, qryStors.FieldByName('n_StoreID').AsInteger,
    APPBank.Year, opt.ServerID]), ['', '‘„«—Â', ' «—ÌŒ', 'ﬂœ ' + CustName,
    '‰«„ ' + CustName, '¬œ—”', 'Ã„⁄ „ﬁœ«—', 'Ã„⁄ Ê“‰'], alLeft,
    [0, 25, 50, 50, 100, 300, 80, 80]);
  if S <> EmptyStr then
    with TADOQuery.Create(Self) do
      try
        Connection := DMf.adcBSell;
        SQL.Text := 'UPDATE Recipts SET PersonID3 =%d';
        if qryStors_PersonID2.AsInteger <> 0 then
          SQL.Add(',PersonID2 = ' + qryStors_PersonID2.AsString);
        SQL.Add('WHERE (ReciptID IN (%s)) AND (ReciptType in (%s)  )');
        SQL.Text := Format(SQL.Text,
          [qryCustomers9.FieldByName('CustID').AsInteger, S, ReciptTypes]);
        SQL.Add(Format('AND ( YearID = %d ) AND ( ServerID =  %d ) ',
          [APPBank.Year, opt.ServerID]));
        ExecSQL;
      finally
        // if qryRecipts.Active then
        qryRecipts.Requery;
        Free;
      end;
end;

procedure TSellPlanF.DeleteCheck(ItemID: Integer);
begin
  with DMf.qryTmpTmp do
  begin
    Close;
    SQL.Text := Format('UPDATE Recipts SET PersonID3 = 0 WHERE ReciptID = %d',
      [ItemID]);
    SQL.Add(Format('AND ( YearID = %d ) AND ( ServerID =  %d ) ',
      [APPBank.Year, opt.ServerID]));
    ExecSQL;
  end; // with
end;

procedure TSellPlanF.actShowFormExecute(Sender: TObject);
begin
  inherited;
  ShowReciptTypes(qryRecipts, ReciptsF);
end;

procedure TSellPlanF.actDelDriverExecute(Sender: TObject);
var
  id: Integer;
  i: Integer;
  deletedCount: Integer;
begin
  inherited;
  if DBGrid2.SelectedRows.Count > 0 then
    if get_response('¬Ì« »—«Ì Õ–› ' + IntToStr(DBGrid2.SelectedRows.Count) +
      ' «‰ Œ«» „ÿ„∆‰ Â” Ìœø ') = mryes then
    begin
      deletedCount := 0;
      for i := 0 to DBGrid2.SelectedRows.Count - 1 do
        if qryRecipts.BookmarkValid((DBGrid2.SelectedRows[i])) then
        begin
          qryRecipts.GotoBookmark((DBGrid2.SelectedRows[i]));
          id := qryRecipts.FieldByName('ReciptID').AsInteger;
          DeleteCheck(id);
          inc(deletedCount);
        end; // for
      Warn(IntToStr(deletedCount) + ' „Ê—œ Õ–› ‘œ. ');
      qryRecipts.Requery;
    end; // if for get_response

end;

procedure TSellPlanF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryRecipts);
end;

procedure TSellPlanF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryRecipts);
end;

procedure TSellPlanF.actSendExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid2);
end;

procedure TSellPlanF.actExportSellExecute(Sender: TObject);
begin
  inherited;
  exportRecipt
end;

procedure TSellPlanF.exportRecipt;
var
  RID, ReciptNumber: Integer;
  Q: TADOQuery;
  CanRestart: Boolean;
  Txt: String;
begin
  if cmbReciptType.ItemIndex = -1 then
    raise Exception.Create('‰Ê⁄ ›—„ «‰ Œ«» ‰‘œÂ «” ');

  if qryRecipts.IsEmpty then
  begin
    Warn('”›«—‘Ì «‰ Œ«» ‰‘œÂ');
    Exit;
  end;
  ReciptNumber := 0;
  RID := Getanewid(nil, Self.Name, 'Recipts', 'ReciptID', nil,
    qryinit.FieldByName('StepCorrelate').AsInteger);
  Q := TADOQuery.Create(Self);
  with Q do
    try
      BigMessageProgBar('œ— Õ«· ’œÊ— ÕÊ«·Â...', qryRecipts.RecordCount + 1);
      Connection := DMf.adcBSell;
      with qryRecipts do
      begin
        First;
        DisableControls;
        while not Eof do
        begin
          Q.SQL.Text :=
            Format('UPDATE Recipts SET ReciptState=1 ,ParentReciptID= %d WHERE(ReciptID = %d)',
            [RID, FieldByName('ReciptID').AsInteger]);
          Q.SQL.Add(Format('AND ( YearID = %d ) AND ( ServerID =  %d ) ',
            [APPBank.Year, opt.ServerID]));
          Q.ExecSQL;
          GoProgressBar('');
          Next;
        end;
        EnableControls;
      end;
      CanRestart := qryinit.FieldByName('RestartFormNumberOnStore').AsInteger
        in [0, 1, 4];
      Txt := 'SELECT MAX(ReciptNumber)FROM Recipts WHERE(ReciptType=' +
        qryinit.FieldByName('ReciptType').AsString + ')' + ' AND ( YearID = ' +
        IntToStr(APPBank.Year) + ') AND ' + ' ServerID = ' +
        IntToStr(opt.ServerID);
      IF CanRestart THEN
        Txt := Txt + ' AND(StoreID=' +
          IntToStr(qryStors.FieldByName('n_StoreID').AsInteger) + ')';
      ReciptNumber := GetANewCode(Self.Name, Txt, 'ReciptNumber');
      with TADOStoredProc.Create(Self) do
        try
          Connection := DMf.adcBSell;
          ProcedureName := 'NewReciptsTotal;1';
          Parameters.Refresh;
          Parameters.ParamByName('@ReciptID').Value := RID;
          Parameters.ParamByName('@ReciptNumber').Value := ReciptNumber;
          Parameters.ParamByName('@StoreID').Value :=
            qryStors.FieldByName('n_StoreID').AsInteger;
          Parameters.ParamByName('@aDate').Value := Trim(mskDate.Text);
          Parameters.ParamByName('@PersonID3').Value :=
            qryCustomers9.FieldByName('CustID').AsInteger;
          Parameters.ParamByName('@user').Value := User.Name;
          Parameters.ParamByName('@ServerID').Value := opt.ServerID;
          Parameters.ParamByName('@YearID').Value := APPBank.Year;
          Parameters.ParamByName('@ReciptType').Value :=
            qryinit.FieldByName('ReciptType').AsInteger;
          ExecProc;
        finally
          Free;
        end;
    finally
      Warn(' ›—„ »Â  «—ÌŒ ' + mskDate.Text + 'ù Ê ‘„«—Â ›—„ ' +
        IntToStr(ReciptNumber) + ' À»  ‘œ.', mtInformation);
      CloseMessage;
      FreeReservedCodes(DMf.adcBSell, '', '', Self.Name);
      qryRecipts.Requery;
      Free;
    end;
end;

procedure TSellPlanF.btnStoresClick(Sender: TObject);
var
  Results: array [0 .. 1] of String;
begin
  inherited;
  if searchCode_ADOF.SearchCode2(DMf.adcBSell, ' «‰ Œ«» «‰»«—  ',
    qryStors.SQL.Text, ['ﬂœ «‰»«—', '‰«„ «‰»«—'], Results, [50, 150], alLeft)
  then
    qryStors.Locate('n_StoreID', Results[0], []);
end;

procedure TSellPlanF.btn_PersonID2Click(Sender: TObject);
var
  CustID, CustName: string;
begin
  inherited;
  qryStors.Edit;
  SpeedButtonCustomers(qryStors_PersonID2, CustID, CustName);
  qryStors_PersonName.AsString := CustName;
end;

procedure TSellPlanF.cmbReciptTypeChange(Sender: TObject);
var
  ReciptType: Integer;
begin
  inherited;
  ReciptType := Integer(cmbReciptType.Items.Objects[cmbReciptType.ItemIndex]);
  with qryinit do
  begin
    Active := False;
    Parameters.ParamByName('ReciptType').Value := ReciptType;
    Active := True;
    actExportSell.Caption := qryinit.FieldByName('ReciptCaption').AsString;
  end;
end;

procedure TSellPlanF.qryStorsAfterScroll(DataSet: TDataSet);
begin
  inherited;
  if qryCustomers9.Active then
    qryCustomers9.Requery;
end;

procedure TSellPlanF.actPrintExecute(Sender: TObject);
begin
  inherited;
  try
    qryRecipts.DisableControls;
    InitReportFile(ppReport1, 'SellPlan', True);
  finally
    qryRecipts.EnableControls;
  end;
end;

procedure TSellPlanF.actprintvijehExecute(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(DBGrid2, FormType);
end;

procedure TSellPlanF.ppLblPrintDateGetText(Sender: TObject; var Text: String);
begin
  Text := GetPrintDate;
end;

procedure TSellPlanF.ppSysVarPageNoGetText(Sender: TObject; var Text: String);
begin
  Text := GetPageNumberString(Text)
end;

procedure TSellPlanF.ppLblCaptionGetText(Sender: TObject; var Text: String);
begin
  Text := lblRecpits.Caption;
end;

procedure TSellPlanF.ppLblCompanyNameGetText(Sender: TObject; var Text: String);
begin
  Text := APPBank.CompanyName;
end;

procedure TSellPlanF.actRowExecute(Sender: TObject);
var
  ReciptsRow: Integer;
begin
  inherited;
  With DMf.qryTmpTmp do
  begin
    Active := False;
    SQL.Text := 'SELECT max(ReciptsRow)';
    SQL.Add('FROM Recipts INNER JOIN');
    SQL.Add('Customers as Customers3 ON Recipts.PersonID3 = Customers3.CustID INNER JOIN');
    SQL.Add('Customers ON Recipts.PersonID1 = Customers.CustID');
    SQL.Add('WHERE (Recipts.ReciptType = :Type) AND (Recipts.PersonID3 = :PersonID3)');
    SQL.Add('and (Recipts.StoreID=:StoreID) and (Recipts.ReciptState<3) and (Recipts.ParentReciptID=0 or Recipts.ParentReciptID is null)');
    SQL.Add(Format('AND ( YearID = %d ) AND ( ServerID =  %d ) ',
      [APPBank.Year, opt.ServerID]));
    // Parameters := qryRecipts.Parameters;
    Parameters.ParamByName('PersonID3').Value :=
      qryCustomers9.FieldByName('CustID').AsInteger;
    Parameters.ParamByName('StoreID').Value := qryStors.FieldByName('n_StoreID')
      .AsInteger;
    Parameters.ParamByName('Type').Value :=
      Integer(cmbReciptType.Items.Objects[cmbReciptType.ItemIndex]);

    Active := True;
    ReciptsRow := Fields[0].AsInteger + 1;
    Active := False;
  end;
  ReciptsRow := StrToInt(Trim(get_box(' ‘„«—Â —œÌ› ›—„ —« Ê«—œ ﬂ‰Ìœ',
    '‘„«—Â —œÌ› ›—„:', IntToStr(ReciptsRow))));
  if get_response('¬Ì« »—«Ì  €ÌÌ— ‘„«—Â  — Ì» ›—„ »Â   ' + IntToStr(ReciptsRow)
    + ' „ÿ„∆‰ Â” Ìœø') = mryes then
    With DMf.qryTmpTmp do
    begin
      Active := False;
      SQL.Text := 'UPDATE Recipts SET ReciptsRow=' + IntToStr(ReciptsRow) +
        'WHERE ReciptID in ( ' + qryRecipts.FieldByName('ReciptID')
        .AsInteger.ToString + ')';
      SQL.Add(Format('AND ( YearID = %d ) AND ( ServerID =  %d ) ',
        [APPBank.Year, opt.ServerID]));
      ExecSQL;
    end;
  qryRecipts.Requery()
end;

end.
