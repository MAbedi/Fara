unit Specialinventory;
// <><>

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, DB, ADODB, ImgList, DBActns,
  ActnList, StdCtrls, ExtCtrls, Buttons, ComCtrls, ppCtrls, ppBands, ppVar,
  ppPrnabl, ppClass, ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDB,
  ppDBPipe, Menus, ppParameter, Filter_ADO_Const, SumDBGrid, ppDesignLayer,
  System.ImageList, System.Actions, FarsiReportBuilde, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, CedarDbGrid;

type
  TSpecialinventoryF = class(Ttemplate2MDIF)
    qryRecalSpecial: TADOQuery;
    srcRecalSpecial: TDataSource;
    actFilter: TAction;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    actPrint: TAction;
    actSort: TAction;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    actSendToExcel: TAction;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLine1: TppLine;
    ppShape1: TppShape;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine11: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppLine10: TppLine;
    ppDBText6: TppDBText;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLine4: TppLine;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppLine21: TppLine;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppLine24: TppLine;
    ppLine25: TppLine;
    ppLine26: TppLine;
    ppLine27: TppLine;
    ppDBText7: TppDBText;
    ppLine28: TppLine;
    ppLine29: TppLine;
    ppDBText8: TppDBText;
    ppLine30: TppLine;
    ppDBText9: TppDBText;
    ppLine31: TppLine;
    ppDBText10: TppDBText;
    ppLine32: TppLine;
    ppDBText11: TppDBText;
    ppLine33: TppLine;
    ppDBText12: TppDBText;
    ppLine34: TppLine;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppLine35: TppLine;
    ppLine36: TppLine;
    ppLine37: TppLine;
    ppLine38: TppLine;
    ppLine39: TppLine;
    ppLine40: TppLine;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppShape2: TppShape;
    ppLabel10: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppLine12: TppLine;
    actRelease11: TAction;
    BitBtn6: TBitBtn;
    qryinit: TADOQuery;
    actShowpreReciptItemIDs: TAction;
    btnRptCardex2: TBitBtn;
    actRptCardex: TAction;
    BitBtn8: TBitBtn;
    actCalc: TAction;
    BitBtn9: TBitBtn;
    PopOther: TPopupMenu;
    Excel1: TMenuItem;
    actInsertNote: TAction;
    N1: TMenuItem;
    PopupMenu1: TPopupMenu;
    Specialinventory: TMenuItem;
    Specialinventory2: TMenuItem;
    qryBackup: TADOQuery;
    BitBtn10: TBitBtn;
    actRptCardex2: TAction;
    actRelease12: TAction;
    popRelease: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    qryRecalSpecialStuffCode: TLargeintField;
    qryRecalSpecialControlCode: TLargeintField;
    qryRecalSpecialc_StuffName: TStringField;
    qryRecalSpecialc_StuffTecInfo: TStringField;
    qryRecalSpecialStuffAlloy: TStringField;
    qryRecalSpecialStuffDiameter: TFloatField;
    qryRecalSpecialStuffSize: TStringField;
    qryRecalSpecialEntity: TFloatField;
    qryRecalSpecialWeightOnEntity: TFloatField;
    qryRecalSpecialWeight: TFloatField;
    qryRecalSpecialUnitSellPrice: TFMTBCDField;
    qryRecalSpecialItemNote: TStringField;
    qryRecalSpecialc_StoreName: TStringField;
    qryRecalSpecialCustName: TStringField;
    qryRecalSpecialReciptCaption: TStringField;
    qryRecalSpecialReciptDate: TStringField;
    qryRecalSpecialReciptNumber: TIntegerField;
    qryRecalSpecialPersonID1: TIntegerField;
    qryRecalSpecialUnitName: TStringField;
    qryRecalSpecialStuffGrade: TWordField;
    qryRecalSpecialStoreID: TSmallintField;
    qryRecalSpecialPrice: TBCDField;
    qryRecalSpecialCountNo: TIntegerField;
    qryRecalSpecialTotallSellPrice: TBCDField;
    qryRecalSpecialReciptItemID: TIntegerField;
    DBGrid1: TCedarDbgrid;
    qryRecalSpecialCountry: TStringField;
    qryRecalSpecialSelerID: TIntegerField;
    qryRecalSpecialSelerName: TStringField;
    qryRecalSpecialDossierID: TLargeintField;
    qryRecalSpecialDossierName: TStringField;
    pnlLblLimitPlace: TPanel;
    LblShowLimitPlace2: TLabel;
    LblShowLimitPlace1: TLabel;
    qryRecalSpecialFactoryName: TStringField;
    procedure actFilterExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actSendToExcelExecute(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure qryRecalSpecialAfterOpen(DataSet: TDataSet);
    procedure ppLabel1GetText(Sender: TObject; var Text: String);
    procedure ppSystemVariable2GetText(Sender: TObject; var Text: String);
    procedure ppSystemVariable1GetText(Sender: TObject; var Text: String);
    procedure actPrintExecute(Sender: TObject);
    procedure actRelease11Execute(Sender: TObject);
    procedure actShowpreReciptItemIDsExecute(Sender: TObject);
    procedure actRptCardexExecute(Sender: TObject);
    procedure actCalcExecute(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure actInsertNoteExecute(Sender: TObject);
    procedure SpecialinventoryClick(Sender: TObject);
    procedure actRptCardex2Execute(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure actRelease12Execute(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
  private
    // FilterCaption:String;
    OrginalSQL: String;
    Procedure UpdateList;
    procedure Add2Caption(var aCaption: TLabel; s: string);
    procedure ReciptsFEnter(ReciptType: Integer);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SpecialinventoryF: TSpecialinventoryF;

implementation

uses DM, filter_ADO, GlobalPro, FilterClass_ADO, search2, sort2, Recipts,
  mdiMain, ShowpreReciptItemIDs, RptCardex, Math, RptCardexSpecial, main;

{$R *.dfm}

procedure TSpecialinventoryF.Add2Caption(var aCaption: TLabel; s: string);
begin
  if aCaption.Caption = '' then
    aCaption.Caption := s
  else
    aCaption.Caption := aCaption.Caption + '  ' + s;
end;

procedure TSpecialinventoryF.UpdateList;
var
  s: String;
begin
  if opt.StuffKindActive then
    s := GetcFrom(myParams.ParamValues['StuffKindActive'], ftString);
  if s = '' then
    s := '0,1';
  qryRecalSpecial.SQL.Text := StringReplace(OrginalSQL, ':StuffKindActive', s,
    [rfReplaceAll]);

  with qryRecalSpecial do
  begin
    Active := False;

    Parameters.ParamByName('SellsEmporiumFrom').Value :=
      GetcFrom(myParams.ParamValues['SellsEmporium'], ftInteger);
    Parameters.ParamByName('SellsEmporiumTo').Value :=
      GetcTo(myParams.ParamValues['SellsEmporium'], ftInteger);

    Parameters.ParamByName('AidDate').Value := var_glb_CurrentDate;

    Parameters.ParamByName('DateFrom').Value :=
      GetcFrom(myParams.ParamValues['Date'], ftDate);
    Parameters.ParamByName('DateTo').Value :=
      GetcTo(myParams.ParamValues['Date'], ftDate);
    Parameters.ParamByName('Date2From').Value :=
      GetcFrom(myParams.ParamValues['Date'], ftDate);
    Parameters.ParamByName('Date2To').Value :=
      GetcTo(myParams.ParamValues['Date'], ftDate);
    Parameters.ParamByName('Date3From').Value :=
      GetcFrom(myParams.ParamValues['Date'], ftDate);
    Parameters.ParamByName('Date3To').Value :=
      GetcTo(myParams.ParamValues['Date'], ftDate);

    Parameters.ParamByName('ItemPersonIDFrom').Value :=
      GetcFrom(myParams.ParamValues['ItemPersonID'], ftInteger);
    Parameters.ParamByName('ItemPersonIDTo').Value :=
      GetcTo(myParams.ParamValues['ItemPersonID'], ftInteger);

    Parameters.ParamByName('StoreIDFrom').Value :=
      GetcFrom(myParams.ParamValues['StoreID'], ftInteger);
    Parameters.ParamByName('StoreIDTo').Value :=
      GetcTo(myParams.ParamValues['StoreID'], ftInteger);
    Parameters.ParamByName('StuffCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['StuffCode'], ftLargeint);
    Parameters.ParamByName('StuffCodeTo').Value :=
      GetcTo(myParams.ParamValues['StuffCode'], ftLargeint);
    if opt.AidInfoAvailable then
    begin
      Parameters.ParamByName('DiameterFrom').Value :=
        GetcFrom(myParams.ParamValues['StuffDiameter'], ftFloat);
      Parameters.ParamByName('Diameterto').Value :=
        GetcTo(myParams.ParamValues['StuffDiameter'], ftFloat);
    end
    else
    begin
      Parameters.ParamByName('DiameterFrom').Value := 0;
      Parameters.ParamByName('Diameterto').Value := 2147483647;
    end;

    Parameters.ParamByName('WeightFrom').Value :=
      GetcFrom(myParams.ParamValues['Weight'], ftFloat);
    Parameters.ParamByName('WeightTo').Value :=
      GetcTo(myParams.ParamValues['Weight'], ftFloat);

    Parameters.ParamByName('ControlCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['ControlCode'], ftLargeint);
    Parameters.ParamByName('ControlCodeTo').Value :=
      GetcTo(myParams.ParamValues['ControlCode'], ftLargeint);

    LblShowLimitPlace1.Caption := '';
    LblShowLimitPlace2.Caption := '';

    Add2Caption(LblShowLimitPlace1, ' «“ ﬂœ «‰»«—  ' +
      GetcFrom(myParams.ParamValues['StoreID'], ftString) + '  « ﬂœ «‰»«—  ' +
      GetcTo(myParams.ParamValues['StoreID'], ftString));

    Add2Caption(LblShowLimitPlace1, '  «“ ﬂœ ﬂ«·« ' +
      GetcFrom(myParams.ParamValues['StuffCode'], ftLargeint) + '   « ﬂœ ﬂ«·« '
      + GetcTo(myParams.ParamValues['StuffCode'], ftLargeint));
    if opt.AidInfoAvailable then
      Add2Caption(LblShowLimitPlace2, '  «“ ÷Œ«„   ' +
        GetcFrom(myParams.ParamValues['StuffDiameter'], ftString) +
        '   « ÷Œ«„   ' + GetcTo(myParams.ParamValues['StuffDiameter'],
        ftString));
    Add2Caption(LblShowLimitPlace2, '    «“ —«Â‰„« ' +
      GetcFrom(myParams.ParamValues['ControlCode'], ftString) +
      '     « —«Â‰„«  ' + GetcTo(myParams.ParamValues['ControlCode'],
      ftString));

    pnlLblLimitPlace.Hint := LblShowLimitPlace1.Caption +
      LblShowLimitPlace2.Caption;

    Active := True;
  end; // with
end;

procedure TSpecialinventoryF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      if opt.StuffKindActive then
        AddItem(DMF.adcBSell, 'StuffKindActive', '‰Ê⁄ ﬂ«·«', '', ftUnknown,
          dvDefaults, 'True', '', ciCheck,
          'SELECT  0 as OwnerShipKind,''ﬁÿ⁄Ì''  as OwnerShipKindName FROM  Config union all '
          + 'SELECT  1 as OwnerShipKind,''«„«‰Ì'' as OwnerShipKindName FROM  Config ',
          '');
      AddItem(DMF.adcBSell, 'Date', ' «—ÌŒ ', ' «—ÌŒ', ftDate, dvMinMax, '', '',
        ciSimple, '', 'SELECT  ''' + APPBank.StartYear +
        ''',max(ReciptDate) FROM Recipts WHERE (YearID = '+APPBank.Year.ToString +') ');
      AddItem(DMF.adcBSell, 'ItemPersonID', ' ‰«„ ÅﬂÌ‰ê ', 'ﬂœ ÅﬂÌ‰ê',
        ftInteger, dvMinMax, '', '', ciLookup,
        'SELECT CustID,CustName FROM Customers WHERE (CustomerGrpID IN (SELECT CustomerGrpID FROM dbo.CustomersGroup WHERE (GroupType = 4))) ',
        'SELECT 0,999999999');
      // isnull(Min(CustID),0),isnull(Max(CustID),999999999)
      AddItemFilter(GetFilter, TFilterControlCode);

      if opt.AidInfoAvailable then
        AddItem(DMF.adcBSell, 'StuffDiameter', '÷Œ«„ ', '÷Œ«„ ', ftFloat,
          dvMinMax, '', '', ciSimple, '',
          'SELECT Min(StuffDiameter),max(StuffDiameter) FROM ReciptItems');

      AddItem(DMF.adcBSell, 'Weight', 'Ê“‰', 'Ê“‰', ftFloat, dvMinMax, '', '',
        ciSimple, '', 'SELECT -99999999,999999999');

      AddItemFilter(GetFilter, TFilterStuffCode);

      AddItemFilter(GetFilter, TFilterSellsEmporium);

      // AddItem(DMF.adcBSell, 'StuffCode', '‰«„ ﬂ«·«', 'ﬂ«·«', ftLargeint,
      // dvMinMax, '', '', ciLookup,
      // 'SELECT c_StuffCode, c_StuffName FROM  StuffCoding ',
      // 'SELECT Min(StuffCode),max(StuffCode) FROM ReciptItems');

      AddItem(DMF.adcBSell, 'StoreID', '‰«„ «‰»«— ', '«‰»«—', ftInteger,
        dvMinMax, '', '', ciLookup, LookupSQL4Store, MinMaxSQL4Store);
      if ShowModal = mrOk then
      begin
        GetFilterString;
        UpdateList;
      end; // if
    finally
      Free;
    end; // try
  end; // with
end;

procedure TSpecialinventoryF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  actFilter.Execute;
  if myParams.FindParam('Stuffcode') = nil then
    Close;
end;

procedure TSpecialinventoryF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryRecalSpecial);
end;

procedure TSpecialinventoryF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryRecalSpecial);
end;

procedure TSpecialinventoryF.actSendToExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TSpecialinventoryF.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  inherited;
  if not(gdSelected in State) then
  begin
    if odd(DBGrid1.DataSource.DataSet.RecNo) then
      DBGrid1.Canvas.Brush.Color := const_fixed_columns_color;
    DBGrid1.Canvas.Font.Color := clWindowText;
  end; // if
  if not(gdSelected in State) then
    if ((Sender as TCedarDbgrid).DataSource.DataSet.FieldByName('CountNo')
      .AsInteger > 0) then
      DBGrid1.Canvas.Brush.Color := $00AAD5FF;
  DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);

end;

procedure TSpecialinventoryF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  QuickSearch(Key, qryRecalSpecial.FieldByName(opt.SearchCode));
end;

procedure TSpecialinventoryF.FormCreate(Sender: TObject);
begin
  inherited;
  OrginalSQL := qryRecalSpecial.SQL.Text;
  Entity_Weight(DBGrid1);
  actRelease11.Enabled := mdiMainF.actRelease.Enabled;
  actRelease12.Enabled := mdiMainF.actRelease.Enabled;
  setColumns2(DBGrid1, not opt.AidInfoAvailable, 'CountNo');
  DBGrid1.SetFooter4Sum([]);
end;

procedure TSpecialinventoryF.qryRecalSpecialAfterOpen(DataSet: TDataSet);
begin
  inherited;
  // if opt.EntityDisplay then
  // StatusBar1.Panels[2].Text := ' „ﬁœ«—:˛' +
  // CurrToStr(CalcSumFileds(qryRecalSpecial, 'Entity'));
  // if opt.WeightDisplay then
  // StatusBar1.Panels[1].Text := ' Ê“‰:˛' +
  // CurrToStr(CalcSumFileds(qryRecalSpecial, 'Weight'));
  // if PriceOnStoreType(GetcFrom(myParams.ParamValues['StoreID'], ftInteger),
  // DBGrid1) then
  // StatusBar1.Panels[0].Text := ' „»·€:˛' +
  // CurrToStrF(CalcSumFileds(qryRecalSpecial, 'Price'), ffCurrency, 0)
  // else
  // StatusBar1.Panels[0].Text := '';
end;

procedure TSpecialinventoryF.ppLabel1GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TSpecialinventoryF.ppSystemVariable2GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text);
end;

procedure TSpecialinventoryF.ppSystemVariable1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TSpecialinventoryF.actPrintExecute(Sender: TObject);
begin
  inherited;
  PopupMenu1.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TSpecialinventoryF.ReciptsFEnter(ReciptType: Integer);
var
  i, PersonID1, PersonID2, PersonID3: Integer;
begin
  With qryinit do
  begin
    Active := False;
    Parameters.ParamByName('ReciptType').Value := ReciptType;
    Active := True;
  end;
  if get_response('¬Ì« »—«Ì À»  ›—„ ' + qryinit.FieldByName('ReciptCaption')
    .AsString + ' „ÿ„∆‰ Â” Ìœø') <> mrYes then
    Exit;
  ReciptsF.Enter(ReciptType);
  // ,False,qryRecalSpecial.FieldByName('StoreID').AsInteger,1
  PersonID1 := ReciptsF.qryRecipts.FieldByName('PersonID1').AsInteger;
  PersonID2 := ReciptsF.qryRecipts.FieldByName('PersonID2').AsInteger;
  PersonID3 := ReciptsF.qryRecipts.FieldByName('PersonID3').AsInteger;
  ReciptsF.qryRecipts.Insert;
  ReciptsF.qryRecipts.FieldByName('StoreID').AsInteger :=
    qryRecalSpecial.FieldByName('StoreID').AsInteger;
  ReciptsF.qryRecipts.FieldByName('PersonID1').AsInteger := PersonID1;
  ReciptsF.qryRecipts.FieldByName('PersonID2').AsInteger := PersonID2;
  ReciptsF.qryRecipts.FieldByName('PersonID3').AsInteger := PersonID3;
  if ReciptsF.CmbSecondType.Items.Count > 0 then
    ReciptsF.qryRecipts.FieldByName('SecondType').AsInteger :=
      Integer(ReciptsF.CmbSecondType.Items.Objects[0]);
  if DBGrid1.SelectedRows.Count > 0 then
    with DBGrid1.DataSource.DataSet do
      for i := 0 to DBGrid1.SelectedRows.Count - 1 do
      begin
        GotoBookmark((DBGrid1.SelectedRows.Items[i]));
        ReciptsF.qryItems.Insert;
        ReciptsF.qryItems.FieldByName('StuffCode').AsLargeInt :=
          FieldByName('StuffCode').AsLargeInt;
        ReciptsF.qryItems.FieldByName('OutputEntity').AsFloat :=
          FieldByName('Entity').AsFloat;
        ReciptsF.qryItems.FieldByName('OutputWeight').AsFloat :=
          FieldByName('Weight').AsFloat;
        ReciptsF.qryItems.FieldByName('StuffAlloy').AsString :=
          FieldByName('StuffAlloy').AsString;
        ReciptsF.qryItems.FieldByName('StuffGrade').AsString :=
          FieldByName('StuffGrade').AsString;
        ReciptsF.qryItems.FieldByName('StuffSize').AsString :=
          FieldByName('StuffSize').AsString;
        ReciptsF.qryItems.FieldByName('StuffDiameter').AsFloat :=
          FieldByName('StuffDiameter').AsFloat;
        ReciptsF.qryItems.FieldByName('ControlCode').AsLargeInt :=
          FieldByName('ControlCode').AsLargeInt;
        ReciptsF.qryItems.FieldByName('TotalOutputPrice').AsCurrency :=
          FieldByName('Price').AsCurrency;
        ReciptsF.qryItems.FieldByName('preReciptItemID').AsInteger :=
          FieldByName('ReciptItemID').AsInteger;
        ReciptsF.qryItems.FieldByName('PersonID1').AsInteger :=
          FieldByName('PersonID1').AsInteger;
        ReciptsF.qryItems.FieldByName('ItemNote').AsString :=
          FieldByName('ItemNote').AsString;
        ReciptsF.qryItems.post;
      end;
  // end;//with
  ReciptsF.qryRecipts.FieldByName('PersonID1').AsString := EmptyStr;
  Warn('Å” «“ Ê«—œ ﬂ—œ‰ "‰«„ „‘ —Ì Ì« Œ—Ìœ«— Ê ﬂ‰ —· „ﬁœ«— Ê Ê“‰ Ê „»·€°" ' +
    qryinit.FieldByName('ReciptCaption').AsString + ' —«  «∆Ìœ ﬂ‰Ìœ.˛',
    mtInformation);
  ReciptsF.EdtPersonID1.SetFocus;
end;

procedure TSpecialinventoryF.actRelease11Execute(Sender: TObject);
begin
  inherited;
  ReciptsFEnter(11);
end;

procedure TSpecialinventoryF.actRelease12Execute(Sender: TObject);
begin
  inherited;
  ReciptsFEnter(12);
end;

procedure TSpecialinventoryF.actShowpreReciptItemIDsExecute(Sender: TObject);
begin
  inherited;
  ShowpreReciptItemIDsF.Enter(qryRecalSpecial.FieldByName('ReciptItemID')
    .AsInteger)
end;

procedure TSpecialinventoryF.actRptCardex2Execute(Sender: TObject);
begin
  inherited;
  RptCardexSpecialF.Enter(qryRecalSpecial);
end;

procedure TSpecialinventoryF.actRptCardexExecute(Sender: TObject);
begin
  inherited;
  RptCardexF.Enter(qryRecalSpecial.FieldByName('StoreID').AsInteger,
    qryRecalSpecial.FieldByName('StuffCode').AsLargeInt, 1);
  // MyParams.CreateParam(ftInteger,'store',ptInput).AsString:=qryRecalSpecial.Fieldbyname('StoreID').AsString;
  // MyParams.CreateParam(ftDate,'Date',ptInput).AsString:=qryRecalSpecial.Fieldbyname('ReciptDate').AsString;
  // MyParams.CreateParam(ftInteger,'StuffCode',ptInput).AsString:=
  // qryRecalSpecial.FieldByName('StuffCode').AsLargeInt+';'+qryRecalSpecial.FieldByName('StuffCode').AsLargeInt;
  // CreateMDIForm2(TRptCardexF,RptCardexF,Self,100);
  //
  // RptCardexF.cmbStore.ItemIndex:=RptCardexF.cmbStore.Items.IndexOfObject(TObject(qryRecalSpecial.Fieldbyname('n_StoreID').AsInteger));
  // if not RptCardexF.qryStuffs.Locate('StuffCode',qryRecalSpecial.FieldByName('StuffCode').Value,[])
  // then Warn('ﬂ«·«Ì „Ê—œ ‰Ÿ— Ì«›  ‰‘œ');

end;

procedure TSpecialinventoryF.actCalcExecute(Sender: TObject);
var
  Entity: Real;
begin
  inherited;
  Entity := StrToFloat(get_box('„ﬁœ«—', '„ﬁœ«— œ— ŒÊ«” Ì —« Ê«—œ ﬂ‰Ìœ.',
    qryRecalSpecial.FieldByName('Entity').AsString));
  if (not qryRecalSpecial.FieldByName('Weight').IsNull) and (Entity <> 0) then
  begin
    Entity := (qryRecalSpecial.FieldByName('Weight').AsFloat * Entity) /
      qryRecalSpecial.FieldByName('Entity').AsFloat;
    Warn('Ê“‰ = ' + FloatToStr(RoundTo(Entity, opt.RoundEntity)),
      mtInformation);
  end;
end;

procedure TSpecialinventoryF.BitBtn5Click(Sender: TObject);
begin
  inherited;
  PopOther.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TSpecialinventoryF.BitBtn8Click(Sender: TObject);
begin
  inherited;
  popRelease.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TSpecialinventoryF.actInsertNoteExecute(Sender: TObject);
var
  s: String;
  i: Integer;
begin
  inherited;
  s := get_box(' Ê÷ÌÕ«  ﬂ«·«', ' Ê÷ÌÕ«  ﬂ«·«Ì „Ê—œ ‰Ÿ—  —« Ê«—œ ﬂ‰Ìœ.',
    qryRecalSpecial.FieldByName('ItemNote').AsString);
  i := qryRecalSpecial.FieldByName('ReciptItemID').AsInteger;
  With DMF.qryTmpTmp do
  begin
    Active := False;
    SQL.Text := 'Update ReciptItems set ItemNote=''' + s +
      ''' where  ReciptItemID=' + IntToStr(i);
    ExecSQL;
    Active := False;
  end;
  qryRecalSpecial.Requery();
  qryRecalSpecial.Locate('ReciptItemID', i, [])
end;

procedure TSpecialinventoryF.SpecialinventoryClick(Sender: TObject);
begin
  inherited;
  try
    qryRecalSpecial.DisableControls;
    InitReportFile(ppReport1, (Sender as TMenuItem).Name);
  finally
    qryRecalSpecial.EnableControls;
  end; // try

end;

end.
