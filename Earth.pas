{ -----------------------------------------------------------------------------
  Unit Name: Earth
  Author:    Mahmood
  ----------------------------------------------------------------------------- }
unit Earth;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, ADODB, ComCtrls, Grids, Vcl.DBGrids, DBCtrls, Mask, ppDB,
  ppDBPipe, ppCtrls, ppBands, ppVar, ppPrnabl, ppClass, ppCache, ppComm,
  ppRelatv, ppProd, ppReport, ppStrtch, ppSubRpt, SumDBGrid, ppParameter,
  ppDesignLayer, System.ImageList, System.Actions;

type
  TEarthF = class(Ttemplate2MDIF)
    Panel1: TPanel;
    qry_EarthLimit: TADOQuery;
    src_EarthLimit: TDataSource;
    qry_Earth: TADOQuery;
    qryStuff_Unit_TecInf: TADOQuery;
    newPanel: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    okPanel: TPanel;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    DBNavigator1: TDBNavigator;
    BitBtn6: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    lblGate: TLabel;
    Src_Earth: TDataSource;
    lblEarthField: TLabel;
    Panel4: TPanel;
    DataSetDelete2: TDataSetDelete;
    actSendExcel: TAction;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppSysVarPageNo: TppSystemVariable;
    ppLblCompanyName: TppLabel;
    ppLabel2: TppLabel;
    ppLblPrintDate: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLine4: TppLine;
    ppDBPipeline1: TppDBPipeline;
    actPrint: TAction;
    ppDBPipeline2: TppDBPipeline;
    BitBtn9: TBitBtn;
    actSort: TAction;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppDetailBand2: TppDetailBand;
    ppSummaryBand2: TppSummaryBand;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppLabel1: TppLabel;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppDBCalc1: TppDBCalc;
    ppTitleBand1: TppTitleBand;
    ppLabel10: TppLabel;
    ppLabel12: TppLabel;
    ppLabel15: TppLabel;
    ppLabel17: TppLabel;
    ppLine2: TppLine;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLine5: TppLine;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel11: TppLabel;
    ppLine1: TppLine;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppLabel3: TppLabel;
    ppLabel27: TppLabel;
    ppLabel7: TppLabel;
    ppLabel30: TppLabel;
    ppDBText6: TppDBText;
    ppDBText8: TppDBText;
    ppLine3: TppLine;
    ppDBCalc3: TppDBCalc;
    ppLabel31: TppLabel;
    PnlDeleteAll: TPanel;
    SpeedButton16: TSpeedButton;
    grd_EarthLimit: TDBGrid;
    DBGrid1: TDBGrid;
    edtGate: TDBEdit;
    edtEarthField: TDBEdit;
    Label4: TLabel;
    qry_EarthGate: TIntegerField;
    qry_EarthMeters: TFloatField;
    qry_EarthLimitEarthLimitID: TIntegerField;
    qry_EarthLimitStartDate: TStringField;
    qry_EarthLimitEndDate: TStringField;
    qry_EarthLimitProcCode: TIntegerField;
    qry_EarthLimitProceWeight: TFloatField;
    qry_EarthLimit_ProcName: TStringField;
    qry_EarthLimit_ProcUnit: TStringField;
    SumGrid1: TSumGrid;
    qry_EarthEarthField: TStringField;
    qry_EarthLimitEarthField: TStringField;
    qry_EarthLimitGate: TIntegerField;
    qry_EarthLimitState: TWordField;
    qry_EarthLimitVarieties: TWideStringField;
    qry_EarthLimitAge: TWideStringField;
    actCopy_EarthLimit: TAction;
    ProgressBar1: TProgressBar;
    Label2: TLabel;
    procedure qry_EarthLimitAfterInsert(DataSet: TDataSet);
    // procedure qry_EarthAfterInsert(DataSet: TDataSet);
    // procedure qry_EarthAfterPost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    // procedure qry_EarthBeforePost(DataSet: TDataSet);
    procedure grd_EarthLimitKeyPress(Sender: TObject; var Key: Char);
    procedure grd_EarthLimitEditButtonClick(Sender: TObject);
    procedure grd_EarthLimitEnter(Sender: TObject);
    procedure qry_EarthAfterScroll(DataSet: TDataSet);
    procedure Src_EarthlimitStateChange(Sender: TObject);
    procedure qry_EarthBeforeCancel(DataSet: TDataSet);
    procedure qry_EarthBeforeDelete(DataSet: TDataSet);
    procedure qry_EarthLimitBeforeDelete(DataSet: TDataSet);
    procedure FormResize(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSendExcelExecute(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure ppLblPrintDateGetText(Sender: TObject; var Text: String);
    procedure ppSysVarPageNoGetText(Sender: TObject; var Text: String);
    procedure actSortExecute(Sender: TObject);
    procedure Allgridkeyenter(Sender: TObject; var Key: Char);
    procedure qry_EarthLimitBeforePost(DataSet: TDataSet);
    procedure grd_EarthLimitDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure qry_EarthLimitAfterPost(DataSet: TDataSet);
    procedure actCopy_EarthLimitExecute(Sender: TObject);
  private
    { Private declarations }
    procedure initForm;
    procedure InitPickList(Fld_Name: string);
    // function ValidData: Boolean;
  public
    { Public declarations }
  end;

var
  EarthF: TEarthF;

implementation

uses sndkey32, DM, GlobalPro, mmessage, shamsiDate, searchCode_ADO, Math,
  search2, sort2, FormFunctions, main, FaraConsts, filter_ADO, FilterClass_ADO;

{$R *.dfm}

procedure TEarthF.qry_EarthLimitAfterInsert(DataSet: TDataSet);
begin
  inherited;
  // if not (qry_Earth.state in dsEditModes) then   qry_Earth.edit;
  DataSet.FieldByName('EarthLimitID').AsInteger :=
    GetANewCode(Self.Name, 'agr.EarthLimit', 'EarthLimitID');
  DataSet.FieldByName('EarthField').AsString :=
    qry_Earth.FieldByName('EarthField').AsString;
  DataSet.FieldByName('Gate').AsInteger := qry_Earth.FieldByName('Gate')
    .AsInteger;
  grd_EarthLimit.SetFocus;
end;

procedure TEarthF.qry_EarthLimitAfterPost(DataSet: TDataSet);
begin
  inherited;
  InitPickList('Varieties');
  InitPickList('Age');
end;

{ procedure TEarthF.qry_EarthAfterPost(DataSet: TDataSet);
  var
  rid,rid2:  Integer;
  //  OKUpdateBatch:Boolean;
  begin
  inherited;
  rid2:=qry_EarthLimit.FieldByName('EarthLimitID').AsInteger;
  if qry_EarthLimit.State in dseditModes then qry_EarthLimit.Post;
  try
  qry_EarthLimit.UpdateBatch();
  except
  warn('«‘ﬂ«· œ— À»  ›—„ ');
  //     OKUpdateBatch:=False
  end;//try
  rid:=qry_Earth.FieldByName('EarthID').AsInteger;
  qry_Earth.Requery;
  qry_Earth.Locate('EarthID',rid,[]);
  qry_EarthLimit.Requery;
  qry_EarthLimit.Locate('EarthLimitID',rid2,[]);
  BigMessage('À»  ‘œ.',1);
  end; }

procedure TEarthF.FormCreate(Sender: TObject);
begin
  inherited;
  initForm;
end;

procedure TEarthF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(grd_EarthLimit);
  SaveColWidth(DBGrid1);
end;

{ procedure TEarthF.qry_EarthBeforePost(DataSet: TDataSet);
  begin
  inherited;
  if not CheckRequiredFields(qry_Earth) then Abort;
  if not ValidData then Abort;
  end; }

// function TEarthF.ValidData: Boolean;
// begin
// Result:=False;
// With DMf.qryTmpTmp do begin
// Active:=False;
// SQL.Text:='SELECT COUNT(*) FROM Earth WHERE(EarthField='+qry_Earth.FieldByName('EarthField').AsString+
// ')AND (Gate = '+qry_Earth.FieldByName('Gate').AsString+
// ')AND (EarthID <> '+qry_Earth.FieldByName('EarthID').AsString+')';
// Active:=True;
// if (Fields[0].AsInteger<>0) then begin
// Warn('œ—ÌçÂ Ê ›Ì·œ Ê«—œ ‘œÂ  ﬂ—«—Ì „Ìù»«‘œ.');
// DBEdit2.SetFocus;
// Exit;
// end;//if
// Active:=False;
// end;//with
// Result:=True;
// end;

procedure TEarthF.grd_EarthLimitKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Allgridkeyenter(Sender, Key);
end;

procedure TEarthF.grd_EarthLimitEditButtonClick(Sender: TObject);
var
  Results: array [0 .. 1] of String;
  sqlText: String;
begin
  inherited;
  // if not (qry_Earth.State in dseditmodes) then exit;
  case (Sender as TDBGrid).SelectedIndex of
    2:
      begin
        sqlText := ' SELECT StuffCoding.c_StuffCode, StuffCoding.c_StuffName ' +
          ' FROM Units INNER JOIN  StuffCoding ON Units.UnitCode = StuffCoding.n_UnitCode INNER JOIN'
          + ' StoreStuffs ON StuffCoding.c_StuffCode = StoreStuffs.c_StuffCode INNER JOIN'
          + ' Stores ON StoreStuffs.n_StoreID = Stores.n_StoreID WHERE (Stores.StoreKind = 1)';
        if searchCode_ADOF.SearchCode2(DMF.adcBSell, '·Ì”  ò«·«Â«Ì  ⁄—Ì› ‘œÂ',
          sqlText, ['òœ', '‰«„ „Õ’Ê·'], Results, [60, 200], alLeft) then
        begin
          if not((Sender as TDBGrid).DataSource.DataSet.State
            in dsEditModes) then
            (Sender as TDBGrid).DataSource.DataSet.Edit;
          (Sender as TDBGrid).DataSource.DataSet['ProcCode'] := Results[0];
        end; // if
      end; // 0
  end; // case
end;

procedure TEarthF.grd_EarthLimitEnter(Sender: TObject);
begin
  inherited;
  (Sender as TDBGrid).SelectedIndex := 0;
end;

procedure TEarthF.qry_EarthAfterScroll(DataSet: TDataSet);
begin
  inherited;
  With qry_EarthLimit do
  begin
    Active := False;
    Parameters.ParamByName('EarthField').Value :=
      qry_Earth.FieldByName('EarthField').AsString;
    Parameters.ParamByName('Gate').Value :=
      qry_Earth.FieldByName('Gate').AsString;
    Active := True;
  end; // with
end;

procedure TEarthF.Src_EarthlimitStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible := qry_EarthLimit.State in dsEditModes;
  newPanel.Visible := not okPanel.Visible;
  BtnReject.Cancel := newPanel.Visible;
  // grd_EarthLimit.ReadOnly:=not okPanel.Visible;
  // DataSetDelete2.Visible:=okPanel.Visible;
  PnlDeleteAll.Visible := okPanel.Visible;
  FreeReservedCodes(DMF.adcBSell, '', '', Self.Name);
end;

procedure TEarthF.qry_EarthBeforeCancel(DataSet: TDataSet);
begin
  inherited;
  if get_response(' €ÌÌ—«  ·€Ê ‘Ê‰œø') <> mrYes then
    Abort;
  // if qry_EarthLimit.State in dseditmodes then qry_EarthLimit.Cancel;
  // qry_EarthLimit.CancelBatch;
end;

procedure TEarthF.qry_EarthBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if get_response('¬Ì« »—«Ì Õ–› «Ì‰ ›—„ „ÿ„∆‰ Â” Ìœø') <> mrYes then
    Abort;
end;

procedure TEarthF.qry_EarthLimitBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if get_response('¬Ì« »—«Ì Õ–› «Ì‰ —œÌ› „ÿ„∆‰ Â” Ìœø') <> mrYes then
    Abort;
end;

procedure TEarthF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(grd_EarthLimit, 3);
  SetColSize(DBGrid1, 1);
end;

procedure TEarthF.initForm;
begin
  SetLookUpCash(qry_EarthLimit);
  qry_Earth.Active := True;
  if mainF.Menu = SubsysMenu[07].sys_Menu then
  begin
    qry_Earth.FieldByName('EarthField').DisplayLabel := '„“—⁄Â';
    qry_Earth.FieldByName('Gate').DisplayLabel := 'Å«— ';
    lblEarthField.Caption := '„“—⁄Â';
    lblGate.Caption := 'Å«— ';
  end;
  InitPickList('Varieties');
  InitPickList('Age');

end;

procedure TEarthF.InitPickList(Fld_Name: string);
var
  qry: TADOQuery;
  i: Integer;
begin
  qry := TADOQuery.Create(Self);
  try
    with qry do
    begin
      Connection := DMF.adcBSell;
      SQL.Text := 'Select ' + Fld_Name + ' from agr.EarthLimit group by ' +
        Fld_Name + ' order by ' + Fld_Name;
      Active := True;
      i := ColumnIndexByFieldName(grd_EarthLimit, Fld_Name);
      grd_EarthLimit.Columns[i].PickList.Clear;
      while not Eof do
      begin
        grd_EarthLimit.Columns[i].PickList.Add(Trim(Fields[0].AsString));
        Next;
      end;
    end;
  finally
    qry.Free;
  end;

end;

procedure TEarthF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qry_Earth);
end;

procedure TEarthF.actSendExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TEarthF.actCopy_EarthLimitExecute(Sender: TObject);
var
  i: Integer;
begin
  inherited;
  with DMF.qryTmpTmp do
    try
      qry_EarthLimit.AfterPost := nil;
      qry_EarthLimit.DisableControls;
      Active := False;
      SQL.Text := 'SELECT *';
      SQL.Add('FROM Agr.EarthLimit');
      SQL.Add('WHERE (StartDate BETWEEN :StartDateFrom AND :StartDateTo)');
      SQL.Add('AND (EndDate BETWEEN :EndDateFrom AND :EndDateTo)');
      SQL.Add('AND (ProcCode BETWEEN :ProcCodeFrom AND :ProcCodeTo)');
      SQL.Add('AND (Age BETWEEN :AgeFrom AND :AgeTo)');
      SQL.Add('AND (Varieties BETWEEN :VarietiesFrom AND :VarietiesTo)');
      SQL.Add('AND (ProceWeight BETWEEN :ProceWeightFrom AND :ProceWeightTo)');
      with TfilterF.Create2(Self, myParams) do
      begin
        try
          AddItem(DMF.adcBSell, 'ProceWeight', '', '»—œ«‘  „Ê—œ«‰ Ÿ«—', ftFloat,
            dvMinMax, '', '', ciSimple, '',
            'SELECT min(ProceWeight),max(ProceWeight) FROM Agr.EarthLimit');

          AddItem(DMF.adcBSell, 'Age', '', '”‰', ftString, dvMinMax, '', '',
            ciSimple, '', 'SELECT min(Age),max(Age) FROM Agr.EarthLimit');

          AddItem(DMF.adcBSell, 'Varieties', '', 'Ê«—Ì Â', ftString, dvMinMax,
            '', '', ciSimple, '',
            'SELECT min(Varieties),max(Varieties) FROM Agr.EarthLimit');

          AddItem(DMF.adcBSell, 'ProcCode', '„Õ’Ê·', 'ﬂœ', ftInteger, dvMinMax,
            '', '', ciLookup, SQLMahsol3, SQLMahsol3Min);

          AddItem(DMF.adcBSell, 'Date', ' «—ÌŒ ', ' «—ÌŒ', ftDate, dvMinMax, '',
            '', ciSimple, '',
            'SELECT min(StartDate),max(EndDate) FROM Agr.EarthLimit');
          if ShowModal = mrOk then
          begin
            GetFilterString;

            Parameters.ParamByName('StartDateFrom').Value :=
              GetcFrom(myParams.ParamValues['Date'], ftDate);
            Parameters.ParamByName('StartDateTo').Value :=
              GetcTo(myParams.ParamValues['Date'], ftDate);

            Parameters.ParamByName('EndDateFrom').Value :=
              GetcFrom(myParams.ParamValues['Date'], ftDate);
            Parameters.ParamByName('EndDateTo').Value :=
              GetcTo(myParams.ParamValues['Date'], ftDate);

            Parameters.ParamByName('ProcCodeFrom').Value :=
              GetcFrom(myParams.ParamValues['ProcCode'], ftInteger);
            Parameters.ParamByName('ProcCodeTo').Value :=
              GetcTo(myParams.ParamValues['ProcCode'], ftInteger);

            Parameters.ParamByName('ProceWeightFrom').Value :=
              GetcFrom(myParams.ParamValues['ProceWeight'], ftFloat);
            Parameters.ParamByName('ProceWeightTo').Value :=
              GetcTo(myParams.ParamValues['ProceWeight'], ftFloat);

            Parameters.ParamByName('AgeFrom').Value :=
              GetcFrom(myParams.ParamValues['Age'], ftString);
            Parameters.ParamByName('AgeTo').Value :=
              GetcTo(myParams.ParamValues['Age'], ftString);

            Parameters.ParamByName('VarietiesFrom').Value :=
              GetcFrom(myParams.ParamValues['Varieties'], ftString);
            Parameters.ParamByName('VarietiesTo').Value :=
              GetcTo(myParams.ParamValues['Varieties'], ftString);

          end; // if
        finally
          Free;
        end; // try
      end; // with

      Active := True;
      ProgressBar1.Position := 0;
      ProgressBar1.Max := RecordCount;
      while not Eof do
      begin
        qry_EarthLimit.Insert;
        for i := 0 to grd_EarthLimit.Columns.Count - 1 do
          if (grd_EarthLimit.Columns[i].Visible) and
            (not grd_EarthLimit.Columns[i].ReadOnly) then
            qry_EarthLimit.FieldByName(grd_EarthLimit.Columns[i].FieldName)
              .Value := FieldByName(grd_EarthLimit.Columns[i].FieldName).Value;
        qry_EarthLimit.Post;
        ProgressBar1.StepIt;
        Label2.Caption := IntToStr(RecNo) + '/' + IntToStr(RecordCount);
        Application.ProcessMessages;
        Next;
      end;
    finally
      qry_EarthLimit.AfterPost := qry_EarthLimitAfterPost;
      qry_EarthLimit.EnableControls;
      Src_EarthlimitStateChange(nil);
      Active := False;
      bigMessage('«‰Ã«„ ‘œ',1);
    end;

end;

procedure TEarthF.actPrintExecute(Sender: TObject);
begin
  inherited;
  try
    qry_Earth.DisableControls;
    qry_EarthLimit.DisableControls;
    InitReportFile(ppReport1, 'Earth', True);
  finally
    qry_Earth.EnableControls;
    qry_EarthLimit.EnableControls;
  end;
end;

procedure TEarthF.ppLblCompanyNameGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName
end;

procedure TEarthF.ppLblPrintDateGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TEarthF.ppSysVarPageNoGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TEarthF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qry_Earth);
end;

procedure TEarthF.Allgridkeyenter(Sender: TObject; var Key: Char);
var
  nextIndex: Integer;
  curIndex: Integer;
  aDataSet: TDataSet;
  // c:  String;
begin
  curIndex := (Sender as TDBGrid).SelectedIndex;
  nextIndex := curIndex;
  case Key of
    #13:
      begin
        if shiftDown then
          exit;
        aDataSet := (Sender as TDBGrid).DataSource.DataSet;
        Key := #0;
        case curIndex of
          0:
            nextIndex := 1;
          1:
            nextIndex := 2;
          2:
            If aDataSet.FieldByName('ProcCode').AsString = '' then
              nextIndex := -2
            else
              nextIndex := 5;
          3:
            nextIndex := 5;
          5:
            nextIndex := 6;
          6:
            nextIndex := 7;
          7:
            nextIndex := -1;

        end; // case
      end; // #13
    '+':
      begin
        Key := #0;
        nextIndex := curIndex - 1;
        while (nextIndex >= 0) and
          (not((Sender as TDBGrid).Columns[nextIndex].Visible) OR
          ((Sender as TDBGrid).Columns[nextIndex].ReadOnly)) do
          Dec(nextIndex);
        if nextIndex < 0 then
          nextIndex := -3;
      end; // +
    '*':
      begin
        Key := #0;
        SendKeys('000', False);
      end; // *
    #27:
      if (Sender as TDBGrid).DataSource.DataSet.State in dsEditModes then
        (Sender as TDBGrid).DataSource.DataSet.Cancel;
      #32, #157: if curIndex in [2 .. 3] then
    begin
      Key := #0;
      grd_EarthLimitEditButtonClick(Sender);
    end; // if
  end; // case
  if nextIndex >= 0 then
    while (nextIndex < (Sender as TDBGrid).Columns.Count) and
      (not((Sender as TDBGrid).Columns[nextIndex].Visible) OR
      ((Sender as TDBGrid).Columns[nextIndex].ReadOnly)) do
      Inc(nextIndex);
  if nextIndex >= (Sender as TDBGrid).Columns.Count then
    nextIndex := -1;
  if (curIndex <> nextIndex) then
    case nextIndex of
      - 1:
        begin
          sendkey(vk_down, [], False);
          (Sender as TDBGrid).SelectedIndex := 0;
        end; // 0
      -2:
        begin
          if (Sender as TDBGrid).DataSource.State in dsEditModes then
            (Sender as TDBGrid).DataSource.DataSet.Cancel;
          Perform(WM_NEXTDLGCTL, 0, 0);
        end; // -2
      -3:
        begin
          if (Sender as TDBGrid).DataSource.State in dsEditModes then
            (Sender as TDBGrid).DataSource.DataSet.Cancel;
          Perform(WM_NEXTDLGCTL, 1, 0);
        end; // -3
    else
      (Sender as TDBGrid).SelectedIndex := nextIndex;
end; // case
end;

procedure TEarthF.qry_EarthLimitBeforePost(DataSet: TDataSet);
begin
  inherited;
  if not CheckRequiredFieldsFill(DataSet) then
  begin
    DataSet.Delete;
    // qry_Earth.Edit;
    exit;
  end;
  if not CheckRequiredFields(DataSet) then
  begin
    // if not (qry_Earth.State in dseditmodes) then qry_Earth.Edit;
    Abort;
  end;
  if not ValidateDatasetDates(DataSet) then
    Abort;
end;

procedure TEarthF.grd_EarthLimitDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  if not(gdSelected in State) then
  begin
    if odd((Sender as TDBGrid).DataSource.DataSet.RecNo) then
      (Sender as TDBGrid).Canvas.Brush.Color := const_fixed_columns_color;
  end; // if
  (Sender as TDBGrid).DefaultDrawColumnCell(Rect, DataCol, Column, State)
end;

end.
