unit rptBuySpecial;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, ADODB, Grids, Vcl.DBGrids, ppDB, ppDBPipe, ppBands, ppClass,
  ppCtrls, ppReport, ppStrtch, ppSubRpt, ppVar, ppPrnabl, ppCache, ppComm,
  ppRelatv, ppProd, ComCtrls, Menus, ppParameter, SumDBGrid, ppDesignLayer,
  System.ImageList, System.Actions, System.Math, System.StrUtils,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, CedarDbGrid, Vcl.Mask, Vcl.DBCtrls;

type
  TrptBuySpecialF = class(Ttemplate2MDIF)
    BitBtn7: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    qryBuy: TADOQuery;
    SrcBuy: TDataSource;
    qryBuyReciptNumber: TIntegerField;
    qryBuyPersonID1: TIntegerField;
    qryBuypersonName1: TStringField;
    qryBuyReciptDate: TStringField;
    qryBuyRequestedEntity: TFloatField;
    qryBuyWaterCo: TFloatField;
    qryBuyInputEntity: TFloatField;
    qryBuyContactRate: TFloatField;
    qryBuyUnitSellPrice: TFMTBCDField;
    qryBuyTotalInputPrice: TBCDField;
    qryBuyPersonID2: TIntegerField;
    qryBuypersonName2: TStringField;
    actFilter: TAction;
    actPrint: TAction;
    actExcel: TAction;
    actSort: TAction;
    ppReport1: TppReport;
    qryBuyStoreID: TSmallintField;
    StatusBar1: TStatusBar;
    ppDBPipeline1: TppDBPipeline;
    qryBuyshift: TIntegerField;
    qryBuyshiftName: TStringField;
    qryBuyReciptID: TIntegerField;
    PopMnuReciptState: TPopupMenu;
    Mnu_A_L_L_C_l_i_c_k: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItem7: TMenuItem;
    BtnReciptState: TBitBtn;
    N1: TMenuItem;
    MnuState0: TMenuItem;
    qryBuyReciptState: TWordField;
    actClearDoc: TAction;
    BitBtn4: TBitBtn;
    qryBuyNameAmount1_3_2: TFloatField;
    N2: TMenuItem;
    btnPrintvi: TBitBtn;
    actPrintVijeh: TAction;
    actUpDate: TAction;
    BitBtn5: TBitBtn;
    pmOther: TPopupMenu;
    MenuItem1: TMenuItem;
    actshow: TAction;
    N3: TMenuItem;
    qryBuyServerID: TIntegerField;
    qryBuyYearID: TIntegerField;
    ppParameterList1: TppParameterList;
    ppHeaderBand1: TppHeaderBand;
    ppShape1: TppShape;
    ppLblCompanyName: TppLabel;
    ppLblCaption: TppLabel;
    ppLblPrintDate: TppLabel;
    plblAllName: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel7: TppLabel;
    ppLabel9: TppLabel;
    plblALLTextName: TppLabel;
    plbl2: TppLabel;
    plbl3: TppLabel;
    plbl4: TppLabel;
    ppLabel10: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppLine11: TppLine;
    ppLin4Position: TppLine;
    NameAmount3: TppDBText;
    NameAmount4: TppDBText;
    ReplaceRate3: TppDBText;
    ReplaceRate4: TppDBText;
    ppLabel6: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppShape2: TppShape;
    ppLabel4: TppLabel;
    ppLabel8: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppShape3: TppShape;
    ppLabel2: TppLabel;
    ppLabel1: TppLabel;
    ppLabel3: TppLabel;
    ppLabel5: TppLabel;
    ppLabel11: TppLabel;
    qryBuyFirstUser: TStringField;
    qryBuyLastUser: TStringField;
    pm1: TPopupMenu;
    N11: TMenuItem;
    N21: TMenuItem;
    N22: TMenuItem;
    qryBuyDefaultDate: TStringField;
    qryBuyDefaultDuration: TSmallintField;
    qryBuyPrizeFatAmount: TFloatField;
    qryBuyEncouragementPenalty: TFloatField;
    qryBuyEntityToAmount: TFloatField;
    qryBuyUnitSellPrice2: TBCDField;
    DBGrid1: TCedarDbgrid;
    qryPurchaseEffect: TADOQuery;
    qryBuyReciptNote: TStringField;
    qryBuyItemNote: TStringField;
    Label1: TLabel;
    edtItemNote: TDBEdit;
    procedure actFilterExecute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actExcelExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure qryBuyAfterOpen(DataSet: TDataSet);
    procedure qryBuyNameAmount4GetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure BtnReciptStateClick(Sender: TObject);
    procedure Mnu_A_L_L_C_l_i_c_kClick(Sender: TObject);
    procedure qryBuyReciptStateGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure actClearDocExecute(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure plblALLTextNameGetText(Sender: TObject; var Text: String);
    procedure actPrintVijehExecute(Sender: TObject);
    procedure actUpDateExecute(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure actshowExecute(Sender: TObject);
    procedure NameAmount4GetText(Sender: TObject; var Text: String);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure ppLblPrintDateGetText(Sender: TObject; var Text: String);
    procedure ppSysVarPageNoGetText(Sender: TObject; var Text: String);
    procedure ppDBText1GetText(Sender: TObject; var Text: String);
    procedure N11Click(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure ppLblCaptionGetText(Sender: TObject; var Text: String);
  private
    ReciptType: Byte;
    ROUNDCount: string;
    procedure UpdateFilter;
    procedure getTextShift;
    procedure MakeSQL;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  rptBuySpecialF: TrptBuySpecialF;

implementation

uses DM, filter_ADO, FilterClass_ADO, sort2, search2, GlobalPro,
  DBGrid2Print, mmessage, FormFunctions, FaraConsts;

{$R *.dfm}

procedure TrptBuySpecialF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      AddItem(dmF.adcBSell, 'ROUNDCount', ' رند ', 'تعداد رقم رند', ftInteger,
        dvDefaults, '2', '', ciSingle, '', '');

      AddItem(dmF.adcBSell, 'ReciptDate', ' تاريخ ', 'تاريخ', ftDate, dvMinMax,
        '', '', ciSimple, '', 'Select  ''' + APPBank.StartYear +
        ''',Max(ReciptDate) from Recipts ');
      AddItem(dmF.adcBSell, 'ReciptNumber', ' فرم ', 'شماره', ftInteger,
        dvMinMax, '', '', ciSimple, '',
        'select Min(ReciptNumber),Max(ReciptNumber) From Recipts ');
      AddItem(dmF.adcBSell, 'PersonID', ' نام مشتري ', 'كد مشتري', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT CustID,CustName FROM Customers WHERE (CustomerGrpID IN (SELECT CustomerGrpID FROM dbo.CustomersGroup )) ',
        'select Min(CustID),Max(CustID) From Customers WHERE (CustomerGrpID IN (SELECT CustomerGrpID  FROM   dbo.CustomersGroup ))');
      AddItem(dmF.adcBSell, 'StoreID', ' انبار ', 'كد', ftInteger, dvMinMax, '',
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

procedure TrptBuySpecialF.UpdateFilter;
begin
  ROUNDCount := GetcFrom(myParams.ParamValues['ROUNDCount'], ftDate);
  MakeSQL;
  with qryBuy do
  begin
    Active := False;

    Parameters.ParamByName('PersonID1From').Value :=
      GetcFrom(myParams.ParamValues['PersonID'], ftInteger);
    Parameters.ParamByName('PersonID1To').Value :=
      GetcTo(myParams.ParamValues['PersonID'], ftInteger);
    Parameters.ParamByName('ReDateFrom').Value :=
      GetcFrom(myParams.ParamValues['ReciptDate'], ftDate);
    Parameters.ParamByName('ReDateTo').Value :=
      GetcTo(myParams.ParamValues['ReciptDate'], ftDate);
    // Parameters.ParamByName('StuffCodeFrom').Value:=GetcFrom(myParams.ParamValues['StuffCode'],ftLargeint);
    // Parameters.ParamByName('StuffCodeTo').Value:=GetcTo(myParams.ParamValues['StuffCode'],ftLargeint);
    Parameters.ParamByName('ReNumberFrom').Value :=
      GetcFrom(myParams.ParamValues['ReciptNumber'], ftInteger);
    Parameters.ParamByName('ReNumberTo').Value :=
      GetcTo(myParams.ParamValues['ReciptNumber'], ftInteger);
    Parameters.ParamByName('StoreIDFrom').Value :=
      GetcFrom(myParams.ParamValues['StoreID'], ftInteger);
    Parameters.ParamByName('StoreIDTo').Value :=
      GetcTo(myParams.ParamValues['StoreID'], ftInteger);
    Active := True;
  end; // with
end;

procedure TrptBuySpecialF.MakeSQL;
var
  i: integer;
  s: String;
begin
  with qryBuy.SQL do
  begin
    with qryPurchaseEffect do
    begin
      Text := 'SELECT Recipts.ReciptState,Recipts.ReciptNote, Recipts.ReciptID, Recipts.ServerID, Recipts.YearID, Recipts.ReciptNumber, Recipts.ReciptDate,';
      Add('ROUND(SUM((CASE WHEN PurchaseEffect.Effectid = 1 THEN ReciptPurchaseEffect.Amount ELSE 0 END)) - 3.2,');
      Add(ROUNDCount +
        ') AS NameAmount1_3_2,ReciptItems.ContactRate,ReciptItems.UnitSellPrice2,');
      Add('ReciptItems.InputEntity, ReciptItems.UnitSellPrice, ReciptItems.TotalInputPrice, Recipts.PersonID1,');
      Add('Recipts.PersonID2, Recipts.StoreID,');
      Add('ReciptItems.WaterCo,ReciptItems.ItemNote, ReciptItems.RequestedEntity, ReciptItems.Shift, LookUps.Name AS shiftName,');
      Active := False;
      SQL.Text := 'SELECT EffectID, EffectName FROM   dbo.PurchaseEffect';
      Active := True;
      i := ColumnIndexByFieldName(DBGrid1, 'NameAmount1_3_2') + 1;
      while not Eof do
      begin
        s := IntToStr(RecNo);
        Add('SUM((CASE WHEN PurchaseEffect.Effectid = ' + s +
          ' THEN ReciptPurchaseEffect.Amount ELSE 0 END)) AS NameAmount'
          + s + ',');
        Add('SUM((CASE WHEN PurchaseEffect.Effectid = ' + s +
          ' THEN ReciptPurchaseEffect.ReplaceRate ELSE 0 END)) AS ReplaceRate'
          + s + ',');

        Add('min((CASE WHEN PurchaseEffect.Effectid = ' + s +
          ' THEN ReciptPurchaseEffect.EffectNote ELSE ''0'' END)) AS EffectNote'
          + s + ',');
        if qryBuy.FindField('NameAmount' + s) = nil then
          with TFloatField.Create(qryBuy) do
          begin
            FieldName := 'NameAmount' + s;
            FieldKind := fkData;
            DataSet := qryBuy;
            Name := 'qryBuy' + FieldName;
            DisplayLabel := Fieldbyname('EffectName').AsString;
            qryBuy.FieldDefs.Add(Name, ftFloat, 0, True);
            Tag := 3;
            With DBGrid1.Columns.Add do
            begin
              FieldName := 'NameAmount' + s;
              Index := i;
            end;
          end;
        if qryBuy.FindField('ReplaceRate' + s) = nil then
          with TFloatField.Create(qryBuy) do
          begin
            FieldName := 'ReplaceRate' + s;
            FieldKind := fkData;
            DataSet := qryBuy;
            Name := 'qryBuy' + FieldName;
            DisplayLabel := 'تغيير في ' + Fieldbyname('EffectName').AsString;
            qryBuy.FieldDefs.Add(Name, ftFloat, 0, True);
            Tag := 3;
            inc(i);
            With DBGrid1.Columns.Add do
            begin
              FieldName := 'ReplaceRate' + s;
              Index := i;
            end;
          end;
        if qryBuy.FindField('EffectNote' + s) = nil then
          with TStringField.Create(qryBuy) do
          begin
            FieldName := 'EffectNote' + s;
            FieldKind := fkData;
            DataSet := qryBuy;
            Name := 'qryBuy' + FieldName;
            DisplayLabel := 'توضيحات ' + Fieldbyname('EffectName').AsString;
            qryBuy.FieldDefs.Add(Name, ftString, 0, True);
            Tag := 3;
            inc(i);
            With DBGrid1.Columns.Add do
            begin
              FieldName := 'EffectNote' + s;
              Index := i;
            end;
          end;
        inc(i);
        Next;
      end;
      Add('Customers.CustName AS person1Name,');
      Add('Customers_1.CustName AS person2Name ,Recipts.FirstUser,Recipts.LastUser');
      Add(',Recipts.DefaultDate,Recipts.DefaultDuration');

      Add(',InputEntity*SUM((CASE WHEN PurchaseEffect.Effectid = 1 THEN ReciptPurchaseEffect.Amount ELSE 0 END)) AS EntityToAmount');
      Add(',ReciptItems.UnitSellPrice2*ROUND(SUM((CASE WHEN PurchaseEffect.Effectid = 1 THEN ReciptPurchaseEffect.Amount ELSE 0 END)) - 3.2,'
        + ROUNDCount + ')/0.1 as PrizeFatAmount');
      Add(',ReciptItems.UnitSellPrice2*ROUND(SUM((CASE WHEN PurchaseEffect.Effectid = 1 THEN ReciptPurchaseEffect.Amount ELSE 0 END)) - 3.2,'
        + ROUNDCount + ')/0.1*InputEntity  as EncouragementPenalty');

      Add('FROM LookUps INNER JOIN');
      Add('Recipts INNER JOIN');
      Add('ReciptItems ON Recipts.ReciptID = ReciptItems.ReciptID AND Recipts.ServerID = ReciptItems.ServerID AND');
      Add('Recipts.YearID = ReciptItems.YearID ON');
      Add('LookUps.LookUpID = ReciptItems.Shift INNER JOIN');
      Add('Customers ON Recipts.PersonID1 = Customers.CustID INNER JOIN');
      Add('Customers AS Customers_1 ON Recipts.PersonID2 = Customers_1.CustID LEFT OUTER JOIN');
      Add('PurchaseEffect INNER JOIN');
      Add('ReciptPurchaseEffect ON PurchaseEffect.EffectID = ReciptPurchaseEffect.EffectID ON');
      Add('ReciptItems.ReciptItemID = ReciptPurchaseEffect.ReciptItemID');
      Add('WHERE (Recipts.ReciptType = :ReciptType )');
      Add('and (Recipts.ReciptNumber between :ReNumberFrom and :ReNumberTo)');
      Add('and (Recipts.ReciptDate between :ReDateFrom and :ReDateTo)');
      Add('and (Recipts.PersonID1 between :PersonID1From and :PersonID1To)');
      Add('and (Recipts.StoreID between :StoreIDFrom and :StoreIDTo)');
      Add('and (Recipts.YearID BETWEEN :YearIDFrom AND :YearIDTo )');
      Add('GROUP BY Recipts.ReciptState,Recipts.ReciptNote, Recipts.ReciptID, Recipts.ServerID, Recipts.YearID, Recipts.ReciptDate, Recipts.ReciptNumber, ReciptItems.ContactRate,');
      Add('ReciptItems.InputEntity,ReciptItems.UnitSellPrice2,');
      Add('ReciptItems.UnitSellPrice, ReciptItems.TotalInputPrice, Recipts.PersonID2, ReciptItems.WaterCo,ReciptItems.ItemNote,');
      Add('ReciptItems.RequestedEntity, Recipts.StoreID,');
      Add('Recipts.PersonID1, Recipts.PersonID2, ReciptItems.Shift, LookUps.Name, Customers.CustName,');
      Add('Customers_1.CustName ,Recipts.FirstUser,Recipts.LastUser');
      Add(',Recipts.DefaultDate,Recipts.DefaultDuration');

      qryBuy.Parameters.ParamByName('ReciptType').Value := ReciptType;
      qryBuy.Parameters.ParamByName('YearIDFrom').Value := opt.DefaultYear;
      qryBuy.Parameters.ParamByName('YearIDTo').Value := APPBank.Year;
    end;
  end;
end;

procedure TrptBuySpecialF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryBuy);
end;

procedure TrptBuySpecialF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryBuy);
end;

procedure TrptBuySpecialF.actExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TrptBuySpecialF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  actFilter.Execute;
  if myParams.FindParam('ReciptDate') = nil then
    close;
end;

procedure TrptBuySpecialF.qryBuyAfterOpen(DataSet: TDataSet);
var
  InputEntity: Real48;
//  OldRM: TRoundingMode;
  s: string;
begin
  inherited;
  InputEntity := CalcSumFileds(qryBuy, 'InputEntity');

  StatusBar1.Panels[0].Text := 'مبلغ كل =' +
    CurrToStrF(CalcSumFileds(qryBuy, 'TotalInputPrice'), ffCurrency, 0);
  StatusBar1.Panels[1].Text := 'مقدار نهايي =' + CurrToStrF(InputEntity,
    ffGeneral, 3);
  StatusBar1.Panels[2].Text := 'مقدار =' +
    CurrToStrF(CalcSumFileds(qryBuy, 'RequestedEntity'), ffGeneral, 3);

  if InputEntity <> 0 then
  begin
    InputEntity := CalcSumFileds(qryBuy, 'EntityToAmount') / InputEntity;
    s := FloatToStr(InputEntity);
    s.Replace('.', '/');
    s := LeftStr(s, Pos('/', s) + ROUNDCount.ToInteger());
    StatusBar1.Panels[3].Text := 'میانگین چربی =' + s;
  end;

end;

procedure TrptBuySpecialF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TrptBuySpecialF.ppLblPrintDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TrptBuySpecialF.ppSysVarPageNoGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TrptBuySpecialF.getTextShift;
begin
  if qryBuyshift.AsString <> '' then
    with dmF.qryTmpTmp do
    begin
      Active := False;
      SQL.Text :=
        'SELECT LookUpID,Name FROM LookUps WHERE(Kind = 251) and (LookUpID=' +
        qryBuyshift.AsString + ') ORDER BY Code';
      Active := True;
      Text := Fieldbyname('Name').AsString;
      Active := False;
    end; // with
end;

procedure TrptBuySpecialF.ppDBText1GetText(Sender: TObject; var Text: String);
begin
  inherited;
  getTextShift;
end;

procedure TrptBuySpecialF.qryBuyNameAmount4GetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  getTextShift;
end;

procedure TrptBuySpecialF.BtnReciptStateClick(Sender: TObject);
begin
  inherited;
  PopMnuReciptState.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TrptBuySpecialF.Mnu_A_L_L_C_l_i_c_kClick(Sender: TObject);
var
  i: integer;
  s: string;
begin
  inherited;
  if DBGrid1.SelectedRows.Count > 0 then
    if get_response('آيا براي ' + (Sender AS TMenuItem).Caption +
      ' نمودن فرم‌هاي انتخاب شده مطمئن هستيد؟') <> mrYes then
      Exit;
  s := GetSelectedRowsDBGrid(DBGrid1, 'ReciptID');
  // with DBGrid1.DataSource.DataSet do
  // for i:=0 to DBGrid1.SelectedRows.Count-1 do
  // begin
  // GotoBookmark(pointer(DBGrid1.SelectedRows.Items[i]));
  // if S<>'' then s:=s+',';
  // s:=s+FieldByName('ReciptID').AsString;
  // end;
  If s = '' then
    Exit;
  with dmF.qryTmpTmp do
  begin
    Active := False;
    SQL.Text := (Sender AS TMenuItem).Hint + '(ReciptID IN (' + s + '))';
    SQL.Add(' AND  ServerID=' + qryBuy.Fieldbyname('ServerID').AsString);
    SQL.Add(' AND  YearID  =' + qryBuy.Fieldbyname('YearID').AsString);
    try
      BigMessage(IntToStr(ExecSQL) + ' فرم‌ ' + (Sender AS TMenuItem).Caption +
        ' شد.', 2);
      Active := False;
      i := qryBuy.Fieldbyname('ReciptID').AsInteger;
      qryBuy.Active := False;
      qryBuy.Open;
      qryBuy.Locate('ReciptID', i, [])
    except
      Warn('اشكال در ' + (Sender AS TMenuItem).Caption + ' كردن فرم‌');
    end; // try
  end; // with
end;

procedure TrptBuySpecialF.qryBuyReciptStateGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  Text := GetReciptState(qryBuy.Fieldbyname('ReciptState').AsInteger)
end;

procedure TrptBuySpecialF.FormCreate(Sender: TObject);
begin
  inherited;
  ReciptType := var_glb_gParam;
  lblCaption.Hint := IntToStr(ReciptType);
  MnuState0.Visible := User.PowerUser;
end;

procedure TrptBuySpecialF.actClearDocExecute(Sender: TObject);
begin
  inherited;
  ClearDoc(DBGrid1, qryBuy);
end;

procedure TrptBuySpecialF.N11Click(Sender: TObject);
begin
  inherited;
  try
    qryBuy.DisableControls;
    InitReportFile(ppReport1, 'rptBuySpecial_' + IntToStr(ReciptType) +
      (Sender as TMenuItem).Hint, True);
  finally
    qryBuy.EnableControls;
  end;

end;

procedure TrptBuySpecialF.N2Click(Sender: TObject);
begin
  inherited;
  DBGridSelectAll(DBGrid1)
end;

procedure TrptBuySpecialF.plblALLTextNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  if qryBuy.FindField('NameAmount' + Text) <> nil then
    Text := qryBuy.Fieldbyname('NameAmount' + Text).DisplayLabel
  else
    Text := '';
end;

procedure TrptBuySpecialF.actPrintExecute(Sender: TObject);
begin
  inherited;
  pm1.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TrptBuySpecialF.actPrintVijehExecute(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(DBGrid1, ReciptType);
end;

procedure TrptBuySpecialF.actUpDateExecute(Sender: TObject);
var
  rid: integer;
begin
  inherited;
  rid := qryBuyReciptID.AsInteger;
  qryBuy.Requery();
  qryBuy.Locate('ReciptID', rid, []);
end;

procedure TrptBuySpecialF.BitBtn5Click(Sender: TObject);
begin
  inherited;
  pmOther.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TrptBuySpecialF.actshowExecute(Sender: TObject);
begin
  inherited;
  ShowReciptTypes(qryBuy, Self);
end;

procedure TrptBuySpecialF.ppLblCaptionGetText(Sender: TObject;
  var Text: String);
begin
  Text := Caption;
end;

procedure TrptBuySpecialF.NameAmount4GetText(Sender: TObject; var Text: String);
begin
  inherited;
  if (qryBuy.FindField((Sender as TppDBText).Name) <> nil) then
    (Sender as TppDBText).DataField := (Sender as TppDBText).Name;
end;

end.
