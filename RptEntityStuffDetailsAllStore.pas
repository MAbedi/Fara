unit RptEntityStuffDetailsAllStore;
// <><>

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, ADODB, ComCtrls, DBCtrls, ppPrnabl, Math,
  ppClass, ppCtrls, ppDB, ppBands, ppCache, ppDBPipe, ppComm, ppRelatv,
  ppProd, ppReport, ppStrtch, ppSubRpt, Menus, ppParameter, Filter_ADO_Const,
  ppDesignLayer, System.ImageList, System.Actions, FarsiReportBuilde,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, CedarDbGrid;

type
  THackGrid = class(TCedarDbgrid);
  TRptEntityStuffDetailsAllStoreF = class(Ttemplate2MDIF)
    QryRptEntityStuffDetails: TADOQuery;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn1: TBitBtn;
    actcardex: TAction;
    actPrint: TAction;
    actFilter: TAction;
    actSendToExcel: TAction;
    actSort: TAction;
    SrcRptEntityStuffDetails: TDataSource;
    ppReport1: TppReport;
    ppDBPipeline2: TppDBPipeline;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    actcardex1: TAction;
    actcardex2: TAction;
    StatusBar1: TStatusBar;
    ppHeaderBand1: TppHeaderBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLine1: TppLine;
    ppShape1: TppShape;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppDetailBand1: TppDetailBand;
    ppSummaryBand1: TppSummaryBand;
    ppDBText11: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppLine23: TppLine;
    ppLine24: TppLine;
    ppLine25: TppLine;
    ppLine26: TppLine;
    ppLine27: TppLine;
    ppLine28: TppLine;
    ppLine29: TppLine;
    ppLine30: TppLine;
    ppLine31: TppLine;
    ppDBText22: TppDBText;
    ppLine32: TppLine;
    ppShape3: TppShape;
    ppDBCalc2: TppDBCalc;
    ppLabel17: TppLabel;
    ppLine11: TppLine;
    ppDBCalc1: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLine33: TppLine;
    DBGrid1: TCedarDbgrid;
    pnlLblLimitPlace: TPanel;
    lblDate: TLabel;
    lblFilter: TLabel;
    QryStore: TADOQuery;
    QryStoren_StoreID: TSmallintField;
    QryStorec_StoreName: TStringField;
    Panel1: TPanel;
    cmbEntity: TComboBox;
    chkStore: TCheckBox;
    procedure actFilterExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure QryRptEntityStuffDetailsAfterOpen(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure actSendToExcelExecute(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure ppLabel3GetText(Sender: TObject; var Text: String);
    procedure ppLabel4GetText(Sender: TObject; var Text: String);
    procedure actcardexExecute(Sender: TObject);
    procedure actcardex1Execute(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure actcardex2Execute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure ppLabel1GetText(Sender: TObject; var Text: String);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure cmbEntityChange(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    procedure UpdateFilter;
  public
    { Public declarations }
  end;

var
  RptEntityStuffDetailsF: TRptEntityStuffDetailsAllStoreF;

implementation

uses DM, filter_ADO, FilterClass_ADO, GlobalPro,
  RptCardex, search2, sort2, StrUtils, FaraConsts;

{$R *.dfm}

procedure TRptEntityStuffDetailsAllStoreF.UpdateFilter;
var
  ssql, ssqlGrp: string;
  i: Integer;
begin
  ssql := ',R.StoreID';
  ssqlGrp := ',R.StoreID';
  if chkStore.Checked then
    With QryStore do
    begin
      ssql := EmptyStr;
      ssqlGrp := EmptyStr;
      Active := False;
      Parameters.ParamByName('StoreIDForm').Value :=
        GetcFrom(myParams.ParamValues['StoreID'], ftInteger);
      Parameters.ParamByName('StoreIDTo').Value :=
        GetcTo(myParams.ParamValues['StoreID'], ftInteger);
      Parameters.ParamByName('UserID').Value := User.id;
      Parameters.ParamByName('UserIDAdmin').Value :=
        ifthen(User.PowerUser, 127, User.id);
      Active := True;
      while not Eof do
      begin
        ssql := ssql + ',round(SUM(case when R.StoreID = ' +
          QryStoren_StoreID.AsString +
          ' then R.InputEntity - R.OutputEntity else 0 end),3) AS «‰»«—' +
          QryStoren_StoreID.AsString + sLineBreak;
        Next;
      end;
    end; // with

  with QryRptEntityStuffDetails do
  begin
    Active := False;
    SQL.Text := 'SELECT  R.StuffCode, StuffCoding.c_StuffName';
    SQL.Add(',c_StuffName_L2 AS StuffName, StuffCoding.c_StuffTecInfo');
    SQL.Add(', Units.UnitName, R.StuffDiameter, R.StuffSize, R.StuffAlloy, R.StuffGrade');

    SQL.Add(ssql);

    SQL.Add(',round(SUM(R.InputEntity - R.OutputEntity),3) AS Entity,');
    SQL.Add('round(SUM(R.InputWeight - R.OutputWeight),3) AS Weight,');
    SQL.Add('SUM(R.TotalInputPrice - R.TotalOutputPrice) AS Price');


    SQL.Add('FROM ReciptItems_Stock as R INNER JOIN');
    SQL.Add('StuffCoding ON R.StuffCode = StuffCoding.c_StuffCode INNER JOIN');
    SQL.Add('Units ON StuffCoding.n_UnitCode = Units.UnitCode');
    SQL.Add('');
    SQL.Add('WHERE (R.ReciptDate BETWEEN :DateFrom AND :DateTo) AND (R.EffectType IN (2, 4))');
    SQL.Add('AND(R.StoreID BETWEEN :StoreIDForm AND :StoreIDTo) AND (R.StuffCode BETWEEN :c_StuffCodeForm AND :c_StuffCodeTo)');
    SQL.Add('AND');
    SQL.Add('(R.StuffDiameter BETWEEN :StuffDiameterFrom AND :StuffDiameterTo)');
    SQL.Add('AND (R.ReciptState < 3)');
    SQL.Add('GROUP BY  R.StuffCode, StuffCoding.c_StuffName, Units.UnitName, R.StuffSize,');
    SQL.Add('R.StuffDiameter, R.StuffAlloy, R.StuffGrade');
    SQL.Add(',c_StuffName_L2 , StuffCoding.c_StuffTecInfo');

    SQL.Add(ssqlGrp);

    SQL.Add('HAVING (SUM(R.InputEntity - R.OutputEntity) >= 0.0001 OR');
    SQL.Add('SUM(R.InputEntity - R.OutputEntity) <= - 0.0001) OR');
    SQL.Add('(SUM(R.InputWeight - R.OutputWeight) >= 0.0001) OR');
    SQL.Add('(SUM(R.InputWeight - R.OutputWeight) <= - 0.0001) OR');
    SQL.Add('(SUM(R.TotalInputPrice - R.TotalOutputPrice) >= 0.1) OR');
    SQL.Add('(SUM(R.TotalInputPrice - R.TotalOutputPrice) <= - 0.1)');

    case cmbEntity.ItemIndex of
      1:
        SQL.Add('AND SUM(R.InputEntity - R.OutputEntity) > 0 ');
      2:
        SQL.Add('AND SUM(R.InputWeight - R.OutputWeight) > 0');
      3:
        begin
          SQL.Add('AND SUM(R.InputEntity - R.OutputEntity) > 0 ');
          SQL.Add('AND SUM(R.InputWeight - R.OutputWeight) > 0');

        end;
    end;

    Parameters.ParamByName('StoreIDForm').Value :=
      GetcFrom(myParams.ParamValues['StoreID'], ftInteger);
    Parameters.ParamByName('StoreIDTo').Value :=
      GetcTo(myParams.ParamValues['StoreID'], ftInteger);
    Parameters.ParamByName('c_StuffCodeForm').Value :=
      GetcFrom(myParams.ParamValues['StuffCode'], ftLargeint);
    Parameters.ParamByName('c_StuffCodeTo').Value :=
      GetcTo(myParams.ParamValues['StuffCode'], ftLargeint);
    Parameters.ParamByName('DateFrom').Value :=
      GetcFrom(myParams.ParamValues['Date'], ftDate);
    Parameters.ParamByName('DateTo').Value :=
      GetcTo(myParams.ParamValues['Date'], ftDate);
    if opt.AidInfoAvailable then
    begin
      Parameters.ParamByName('StuffDiameterFrom').Value :=
        GetcFrom(myParams.ParamValues['StuffDiameter'], ftFloat);
      Parameters.ParamByName('StuffDiameterTo').Value :=
        GetcTo(myParams.ParamValues['StuffDiameter'], ftFloat);
    end // if
    else
    begin
      Parameters.ParamByName('StuffDiameterFrom').Value := 0;
      Parameters.ParamByName('StuffDiameterTo').Value := 2147483647;
    end; // else
    // LEFT OUTER JOIN   UsersStore ON Recipts.StoreID = UsersStore.n_StoreID
    // ( (UsersStore.n_UserID = :UserID )or ( :UserIDAdmin = 127))  AND
    // Parameters.ParamByName('UserID').Value := User.id;
    // Parameters.ParamByName('UserIDAdmin').Value :=
    // ifthen(User.PowerUser, 127, User.id);

    Active := True;

    if chkStore.Checked then
      With QryStore do
      begin
        First;
        while not Eof do
        begin
          Next;
        end;
      end
    else
      FieldByName('StoreID').DisplayLabel := 'ﬂœ «‰»«—';

    FieldByName('StuffCode').DisplayLabel := 'ﬂœ ﬂ«·«';
    FieldByName('c_StuffName').DisplayLabel := '‰«„ ﬂ«·« ';
    FieldByName('StuffName').DisplayLabel := 'StuffName';
    FieldByName('c_StuffTecInfo').DisplayLabel := '„‘Œ’«  ›‰Ì';
    FieldByName('UnitName').DisplayLabel := 'Ê«Õœ';
    FieldByName('StuffDiameter').DisplayLabel := '«»⁄«œ';
    FieldByName('StuffSize').DisplayLabel := '÷Œ«„  ';
    FieldByName('StuffAlloy').DisplayLabel := '¬·Ì«é';
    FieldByName('StuffGrade').DisplayLabel := 'œ—ÃÂ ';
    FieldByName('Entity').DisplayLabel := '„ﬁœ«—';
    FieldByName('Weight').DisplayLabel := 'Ê“‰ ';
    FieldByName('Price').DisplayLabel := '„»·€ ';

    for i := 0 to Fields.Count - 1 do
      Fields[i].Tag := 3;
  end;
  DBGrid1.ColorDBGrid();
  THackGrid(DBGrid1).DoLoad;

//  DBGrid1.setSizeColDBGrid(True);
  with QryRptEntityStuffDetails.Parameters do
  begin
    lblFilter.Caption := '«“ ﬂœ ﬂ«·«Ì ' +
      GetcFrom(myParams.ParamValues['StuffCode'], ftLargeint) + '  « ' +
      GetcTo(myParams.ParamValues['StuffCode'], ftLargeint) +
      ifthen(opt.AidInfoAvailable, ' «“ ÷Œ«„  ' +
      IntToStr(ParamByName('StuffDiameterFrom').Value) + '  « ' +
      IntToStr(ParamByName('StuffDiameterTo').Value), '');
    lblDate.Caption := '«“  «—ÌŒ ' + ParamByName('DateFrom').Value + '  « ' +
      ParamByName('DateTo').Value;
  end; // with
end;

procedure TRptEntityStuffDetailsAllStoreF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      if opt.AidInfoAvailable then
        AddItem(DMF.adcBSell, 'StuffDiameter', '÷Œ«„ ', '÷Œ«„ ', ftFloat,
          dvMinMax, '', '', ciSimple, '',
          'select Min(StuffDiameter),Max(StuffDiameter) From ReciptItems');
      AddItem(DMF.adcBSell, 'Date', ' «—ÌŒ', ' «—ÌŒ', ftDate, dvMinMax, '', '',
        ciSimple, '', 'Select  ''' + APPBank.StartYear +
        ''',Max(ReciptDate) from Recipts');

      AddItemFilter(GetFilter, TFilterStuffCode);
      // AddItem(DMF.adcBSell, 'StuffCode', 'ﬂ«·«', 'ﬂœ', ftLargeint, dvMinMax, '',
      // '', ciLookup, 'SELECT c_StuffCode, c_StuffName FROM StuffCoding ',
      // 'select Min(c_StuffCode),Max(c_StuffCode) From StuffCoding ');

      AddItem(DMF.adcBSell, 'StoreID', '«‰»«—', 'ﬂœ', ftInteger, dvMinMax, '',
        '', ciLookup, LookupSQL4Store, MinMaxSQL4Store);
      if ShowModal = mrOk then
      begin
        GetFilterString;
        UpdateFilter;
      end; // if
    finally
      Free;
    end; // try
  end; // with
end;

procedure TRptEntityStuffDetailsAllStoreF.FormCreate(Sender: TObject);
begin
  inherited;
  Caption := ' ê“«—‘ „ÊÃÊœÌ »— Õ”» —Ì“ «ÿ·«⁄«   ';
  Entity_Weight(DBGrid1);
//  DBGrid1.SetFooter4Sum([]);
end;

procedure TRptEntityStuffDetailsAllStoreF.FormDestroy(Sender: TObject);
begin
  inherited;
  THackGrid(DBGrid1).DoSave;
end;

procedure TRptEntityStuffDetailsAllStoreF.QryRptEntityStuffDetailsAfterOpen
  (DataSet: TDataSet);
begin
  inherited;
  StatusBar1.Panels[3].Text := 'Ã„⁄ ﬂ· ';
  if opt.EntityDisplay then
    StatusBar1.Panels[2].Text := '„ﬁœ«—=' +
      CurrToStr(CalcSumFileds(QryRptEntityStuffDetails, 'entity'));
  if opt.WeightDisplay then
    StatusBar1.Panels[1].Text := 'Ê“‰=' +
      CurrToStr(CalcSumFileds(QryRptEntityStuffDetails, 'weight'));
  if PriceOnStoreType(GetcFrom(myParams.ParamValues['StoreID'], ftInteger),
    DBGrid1, QryRptEntityStuffDetails) then
    StatusBar1.Panels[0].Text :=
      CurrToStrF(CalcSumFileds(QryRptEntityStuffDetails, 'Price'), ffCurrency,
      0) + ' —Ì«· '
  else
    StatusBar1.Panels[0].Text := '';

end;

procedure TRptEntityStuffDetailsAllStoreF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  actFilter.Execute;
  if myParams.FindParam('StuffCode') = nil then
    close;
end;

procedure TRptEntityStuffDetailsAllStoreF.actSendToExcelExecute
  (Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TRptEntityStuffDetailsAllStoreF.actPrintExecute(Sender: TObject);
begin
  inherited;
  try
    QryRptEntityStuffDetails.DisableControls;
    // InitReportFile(Self,ppReport1,'RptEntityStuffDetailsAllStore');
    ppReport1.Print;
  finally
    QryRptEntityStuffDetails.EnableControls;
  end; // try
end;

procedure TRptEntityStuffDetailsAllStoreF.ppLabel3GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := lblFilter.Caption;
end;

procedure TRptEntityStuffDetailsAllStoreF.ppLabel4GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := lblDate.Caption;
end;

procedure TRptEntityStuffDetailsAllStoreF.actcardexExecute(Sender: TObject);
begin
  inherited;
  PopupMenu1.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TRptEntityStuffDetailsAllStoreF.actcardex1Execute(Sender: TObject);
begin
  inherited;
  RptCardexF.Enter(QryRptEntityStuffDetails.FieldByName('n_StoreID').AsInteger,
    QryRptEntityStuffDetails.FieldByName('StuffCode').AsLargeInt, 1);
  // MyParams.CreateParam(ftInteger,'ControlCode',ptInput).AsString:='0;999999999';
  // MyParams.CreateParam(ftInteger,'StoreID',ptInput).AsString:=
  // QryRptEntityStuffDetails.Fieldbyname('n_StoreID').AsString+';'+QryRptEntityStuffDetails.Fieldbyname('n_StoreID').AsString;
  // MyParams.CreateParam(ftDate,'Date',ptInput).AsString:=myParams.ParamValues['Date'];
  // MyParams.CreateParam(ftInteger,'StuffCode',ptInput).AsString:=
  // QryRptEntityStuffDetails.FieldByName('StuffCode').AsLargeInt+';'+QryRptEntityStuffDetails.FieldByName('StuffCode').AsLargeInt;
  // CreateMDIForm2(TRptCardexF,RptCardexF,Self,100);
  //
  // RptCardexF.cmbStore.ItemIndex:=RptCardexF.cmbStore.Items.IndexOfObject(TObject(QryRptEntityStuffDetails.Fieldbyname('n_StoreID').AsInteger));
  // if not RptCardexF.qryStuffs.Locate('StuffCode',QryRptEntityStuffDetails.FieldByName('StuffCode').Value,[])
  // then Warn('ﬂ«·«Ì „Ê—œ ‰Ÿ— Ì«›  ‰‘œ');

end;

procedure TRptEntityStuffDetailsAllStoreF.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  actcardex.Execute;
end;

procedure TRptEntityStuffDetailsAllStoreF.actcardex2Execute(Sender: TObject);
begin
  inherited;
  RptCardexF.Enter(QryRptEntityStuffDetails.FieldByName('StoreID').AsInteger,
    QryRptEntityStuffDetails.FieldByName('StuffCode').AsLargeInt, 2);
  // MyParams.CreateParam(ftInteger,'ControlCode',ptInput).AsString:='0;999999999';
  // MyParams.CreateParam(ftInteger,'StoreID',ptInput).AsString:=myParams.ParamValues['StoreID'];
  // MyParams.CreateParam(ftDate,'Date',ptInput).AsString:=myParams.ParamValues['Date'];
  // MyParams.CreateParam(ftInteger,'StuffCode',ptInput).AsString:=
  // QryRptEntityStuffDetails.FieldByName('StuffCode').AsLargeInt+';'+QryRptEntityStuffDetails.FieldByName('StuffCode').AsLargeInt;
  // CreateMDIForm2(TRptCardexF,RptCardexF,Self,200);
  //
  // RptCardexF.cmbStore.ItemIndex:=RptCardexF.cmbStore.Items.IndexOfObject(TObject(QryRptEntityStuffDetails.Fieldbyname('StoreID').AsInteger));
  // if not RptCardexF.qryStuffs.Locate('StuffCode',QryRptEntityStuffDetails.FieldByName('StuffCode').Value,[])
  // then Warn('ﬂ«·«Ì „Ê—œ ‰Ÿ— Ì«›  ‰‘œ');

end;

procedure TRptEntityStuffDetailsAllStoreF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(QryRptEntityStuffDetails);
end;

procedure TRptEntityStuffDetailsAllStoreF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(QryRptEntityStuffDetails);
end;

procedure TRptEntityStuffDetailsAllStoreF.cmbEntityChange(Sender: TObject);
begin
  inherited;
  UpdateFilter
end;

procedure TRptEntityStuffDetailsAllStoreF.ppLabel1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName
end;

procedure TRptEntityStuffDetailsAllStoreF.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  QuickSearch(Key, QryRptEntityStuffDetails.FieldByName('StuffCode'));
end;

end.
