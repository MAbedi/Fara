// mahmood
unit RecallRecipts;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template4, DB, ADODB, ComCtrls, DBActns, ActnList,
  StrUtils, StdCtrls, Buttons, ExtCtrls, DBCtrls, Provider, DBClient, Math,
  System.Actions, FarsiReportBuilde, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  CedarDbGrid, Filter_ADO_Const;

type
  TRecallReciptsF = class(TTemplate4F)
    StatusBar1: TStatusBar;
    lbllist: TLabel;
    Panel2: TPanel;
    srcMater_Recipt: TDataSource;
    qryMater_Recipt: TADOQuery;
    qryMater_ReciptReciptID: TIntegerField;
    qryMater_ReciptReciptNumber: TIntegerField;
    qryMater_ReciptReciptDate: TStringField;
    qryMater_ReciptPersonID1: TIntegerField;
    qryMater_ReciptCustName: TStringField;
    qryMater_ReciptStoreID: TSmallintField;
    qryMater_ReciptReciptState: TWordField;
    qryMater_ReciptReciptType: TWordField;
    qryMater_ReciptParentReciptID: TIntegerField;
    qryMater_Reciptc_StoreName2: TStringField;
    qryMater_ReciptReciptCaption: TStringField;
    qryDetail_Item: TADOQuery;
    srcDetail_Item: TDataSource;
    chkPrice: TCheckBox;
    actSearch: TAction;
    BitBtn3: TBitBtn;
    Pnl_GradeToAlloy: TPanel;
    Label15: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    DBText8: TDBText;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    qryRTypes: TADOQuery;
    qryRTypesReciptType: TWordField;
    qryRTypesReciptCaption: TStringField;
    BitBtn1: TBitBtn;
    actSearch2: TAction;
    actSort: TAction;
    BitBtn2: TBitBtn;
    qryMater_ReciptPersonID2: TIntegerField;
    qryMater_ReciptYearID: TIntegerField;
    qryMater_ReciptServerID: TIntegerField;
    qryDetail_ItemReciptItemID: TIntegerField;
    qryDetail_ItemReciptID: TIntegerField;
    qryDetail_ItemStuffCode: TLargeintField;
    qryDetail_Itemc_StuffName: TStringField;
    qryDetail_ItemUnitName: TStringField;
    qryDetail_ItemStuffSize: TStringField;
    qryDetail_ItemStuffAlloy: TStringField;
    qryDetail_ItemAvilableEntity: TFloatField;
    qryDetail_ItemWeight: TFloatField;
    qryDetail_ItemStuffGrade: TSmallintField;
    qryDetail_ItemPrice: TBCDField;
    qryDetail_ItemUnitSellPrice: TFMTBCDField;
    qryDetail_ItemItemNote: TStringField;
    qryDetail_ItempreReciptItemID: TIntegerField;
    qryDetail_ItemStuffDiameter: TFloatField;
    qryDetail_ItemControlCode: TLargeintField;
    qryDetail_ItemConfirming: TStringField;
    qryDetail_ItemSecondTypeItemName: TStringField;
    qryDetail_Item_checked: TFMTBCDField;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    qryDetail_ItemEntity: TFloatField;
    qryDetail_ItemWaterCo: TFloatField;
    qryDetail_ItemDeficitValue: TBCDField;
    qryDetail_ItemTaxCo: TFloatField;
    qryDetail_ItemTaxValue: TBCDField;
    DBGrid1: TCedarDbgrid;
    DBGrid2: TCedarDbgrid;
    BitBtn6: TBitBtn;
    qryDetail_ItemSpecialCode: TStringField;
    qryMater_ReciptCustName2: TStringField;
    qryMater_ReciptPersonID3: TIntegerField;
    qryMater_ReciptPersonID4: TIntegerField;
    actFilter: TAction;
    qryDetail_ItemPersonID1D: TIntegerField;
    qryDetail_ItemCustName1D: TStringField;
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure actSearchExecute(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actSearch2Execute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure DBGrid2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure qryDetail_ItemAfterOpen(DataSet: TDataSet);
    procedure qryMater_ReciptAfterScroll(DataSet: TDataSet);
    procedure DBGrid2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure qryMater_ReciptReciptStateGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBGrid1TitleClick(Column: TColumnEh);
    procedure actFilterExecute(Sender: TObject);
  private
    { Private declarations }
    RecallTypeOption: Largeint;
    Recall_Recipt_Types: String;
    procedure initlblTopic(var RecallReciptTypes: String);
    procedure ToggleCheck(CalculateSummary: Boolean = True);
    function SelectItemID: String;
  public
    { Public declarations }
    RecallType: Integer;

    procedure SelectRecall(var RecallReciptTypes: String;
      out checkPrice: Boolean; out ReciptID, ServerID, YearID: Integer;
      UseStoreIDOnRecall: String; FormType: Integer;
      out SelectReciptItemID: String; qryinit, qryRecipts: TADOQuery);
  end;

var
  RecallReciptsF: TRecallReciptsF;

implementation

uses searchCode_ADO, DM, GlobalPro, search2, sort2, FaraConsts, FormFunctions,
  filter_ADO;

{$R *.dfm}
{ TRecallReciptsF }

procedure TRecallReciptsF.SelectRecall(var RecallReciptTypes: String;
  out checkPrice: Boolean; out ReciptID, ServerID, YearID: Integer;
  UseStoreIDOnRecall: String; FormType: Integer; out SelectReciptItemID: String;
  qryinit, qryRecipts: TADOQuery);
var
  b: Boolean;
begin
  RecallReciptsF := TRecallReciptsF.Create(Application);
  with RecallReciptsF do
  begin
    try
      myParams.Clear;
      actFilter.Execute;
      if myParams.FindParam('SellsEmporium') = nil then
      begin
        RecallReciptsF.Free;
        exit;
      end;

      initlblTopic(RecallReciptTypes);
      Recall_Recipt_Types := RecallReciptTypes;
      // 19-فراخوانی یک به یک Master  و ثبت کالا بر اساس بارکد و Parent
      RecallType := qryinit.FieldByName('RecallType').AsInteger;
      RecallTypeOption := qryinit.FieldByName('RecallTypeOption').AsLargeInt;

      setColumns2(DBGrid2,
        ((RecallTypeOption and Integer(CHkNotPossibleSelectItems)) <> 0),
        '_checked', aReadOnly);

      chkPrice.Enabled :=
        ((RecallTypeOption and Integer(ChkTransferAmountCannotBeChanged)) = 0);

      setColumns2(DBGrid2, RecallType = 19, 'AvilableEntity');

      b := ((opt.ConfigSettings and Integer(CHkCsSpecialCode)) <> 0);
      setColumns2(DBGrid1, b, 'SpecialCode');

      With qryDetail_Item DO
      begin
        SQL.Text := 'SELECT ReciptItems.ReciptItemID';
        SQL.Add(', ReciptItems.ReciptID, ReciptItems.StuffCode, StuffCoding.c_StuffName, dbo.Units.UnitName,');
        SQL.Add('ReciptItems.StuffSize, ReciptItems.StuffDiameter, ReciptItems.StuffAlloy,');
        SQL.Add('ReciptItems.InputEntity + ReciptItems.OutputEntity AS Entity, ReciptItems.InputWeight +');
        SQL.Add('ReciptItems.OutputWeight AS Weight,');
        SQL.Add('ReciptItems.ControlCode, ReciptItems.StuffGrade,');
        SQL.Add('ReciptItems.TotalInputPrice + ReciptItems.TotalOutputPrice AS Price,');
        SQL.Add('ReciptItems.UnitSellPrice, ReciptItems.ItemNote,');
        SQL.Add('ReciptItems.preReciptItemID,ReciptItems.Confirming,');
        SQL.Add('LookUps.Name AS SecondTypeItemName, Fitful.FitfulID AS _checked');
        if RecallType = 19 then
          SQL.Add(',ISNULL(StEntity.Entity,0)- (ReciptItems.InputEntity + ReciptItems.OutputEntity)AS AvilableEntity')
        else
          SQL.Add(',0.0 AS AvilableEntity');

        SQL.Add(', ReciptItems.WaterCo, ReciptItems.DeficitValue, ReciptItems.TaxCo, ReciptItems.TaxValue,ReciptItems.SpecialCode');
        SQL.Add(', ReciptItems.PersonID1 AS PersonID1D, Cd.CustName AS CustName1D');

        SQL.Add('FROM ReciptItems INNER JOIN');
        SQL.Add('StuffCoding ON ReciptItems.StuffCode = StuffCoding.c_StuffCode INNER JOIN');
        SQL.Add('Units ON StuffCoding.n_UnitCode = Units.UnitCode LEFT OUTER JOIN');
        SQL.Add('LookUps ON ReciptItems.SecondTypeItem = LookUps.LookUpID CROSS JOIN');
        SQL.Add('Fitful');
        if RecallType = 19 then
          SQL.Add(Format
            ('LEFT OUTER JOIN dbo.StuffCodeEntity(%d, %d, %s) AS StEntity ON ReciptItems.StuffCode = StEntity.StuffCode AND StEntity.StoreID =%d',
            [APPBank.Year, APPBank.Year,
            QuotedStr(qryRecipts.FieldByName('ReciptDate').AsString),
            qryRecipts.FieldByName('StoreID').AsInteger]));

        SQL.Add('INNER JOIN Customers AS Cd ON ReciptItems.PersonID1 = Cd.CustID');
        SQL.Add('WHERE (ReciptItems.ReciptID = :ReciptID ) AND (ReciptItems.ServerID = :ServerID )');
        SQL.Add('AND (ReciptItems.YearID = :YearID )');
        if RecallType = 19 then
        begin
          SQL.Add('AND (ISNULL(StEntity.Entity,0)- (ReciptItems.InputEntity + ReciptItems.OutputEntity)<0)');
          lbllist.Caption := 'لیست کالاهای فاقد موجودی';
        end;

      end;

      With qryMater_Recipt DO
      begin
        Active := False;
        if ((RecallTypeOption and Integer(CHkNotUsingParentReciptID)) <> 0) then
        begin
          SQL.Text := 'SELECT Recipts.ReciptID,Recipts.ServerID ,';
          SQL.Add(' Recipts.YearID, Recipts.ReciptNumber, Recipts.ReciptDate, Recipts.PersonID1,Customers.CustName,C2.CustName CustName2,');
          SQL.Add('Recipts.StoreID, Stores.c_StoreName, Recipts.ReciptState, Recipts.ReciptType, ReciptTypes.ReciptCaption,');
          SQL.Add('0 as ParentReciptID, Recipts.PersonID2, Recipts.PersonID3,Recipts.PersonID4,Recipts.ReciptState');
          SQL.Add('FROM Recipts INNER JOIN');
          SQL.Add('ReciptItems ON Recipts.ReciptID = ReciptItems.ReciptID AND Recipts.ServerID = ReciptItems.ServerID AND Recipts.YearID');
          SQL.Add('= ReciptItems.YearID');

          SQL.Add('INNER JOIN ReciptTypes ON Recipts.ReciptType = ReciptTypes.ReciptType INNER JOIN');
          SQL.Add('(SELECT MAX(r12.preReciptItemID) AS max, r41.YearID, r41.ReciptID, r41.ServerID');
          SQL.Add('FROM (SELECT Recipts.YearID, ReciptItems.preReciptItemID, Recipts.ReciptID');
          SQL.Add('FROM Recipts INNER JOIN');
          SQL.Add('ReciptItems ON Recipts.ReciptID = ReciptItems.ReciptID AND Recipts.ServerID =');
          SQL.Add('ReciptItems.ServerID AND Recipts.YearID = ReciptItems.YearID');
          SQL.Add('WHERE (Recipts.ReciptType = :FormType) ');
          // if ((RecallTypeOption and Integer(CHkRecallReciptState2)) <> 0) then
          // SQL.Add('AND (Recipts.ReciptState = 2 ) ');

          SQL.Add('AND (Recipts.YearID = ' + APPBank.Year.ToString +
            ')) AS r12 RIGHT OUTER JOIN');
          SQL.Add('(SELECT Recipts_1.YearID, ReciptItems_1.ReciptItemID, ReciptItems_1.ReciptID, Recipts_1.StoreID,');
          SQL.Add('Recipts_1.ServerID');
          SQL.Add('FROM Recipts AS Recipts_1 INNER JOIN');
          SQL.Add('ReciptItems AS ReciptItems_1 ON Recipts_1.ReciptID = ReciptItems_1.ReciptID AND');
          SQL.Add('Recipts_1.ServerID = ReciptItems_1.ServerID AND Recipts_1.YearID = ReciptItems_1.YearID');
          SQL.Add('WHERE (Recipts_1.ReciptType in (' + RecallReciptTypes +
            ') )AND (Recipts_1.YearID =  ' + APPBank.Year.ToString +
            ')) AS r41 ON r12.preReciptItemID =');
          SQL.Add('r41.ReciptItemID AND');
          SQL.Add('r12.YearID = r41.YearID');
          SQL.Add('GROUP BY r41.YearID, r41.ReciptID, r41.ServerID');
          SQL.Add('HAVING (MAX(r12.preReciptItemID) IS NULL) ) recalMax on');
          SQL.Add('recalMax.ReciptID=Recipts.ReciptID and recalMax.ServerID=recalMax.ServerID and recalMax.YearID=Recipts.YearID');
          SQL.Add('LEFT OUTER JOIN');

          SQL.Add('Stores ON Recipts.StoreID = Stores.n_StoreID');
          SQL.Add(' LEFT OUTER JOIN Customers ON Recipts.PersonID1 = Customers.CustID');
          SQL.Add(' LEFT OUTER JOIN Customers C2 ON Recipts.PersonID2 = C2.CustID');
          SQL.Add('WHERE (Recipts.YearID BETWEEN :YearIDFrom AND :YearIDTo )');
          SQL.Add('AND (Recipts.ReciptType IN (' + RecallReciptTypes + ')) ' +
            UseStoreIDOnRecall);
          // if ((RecallTypeOption and Integer(CHkRecallReciptState2)) <> 0) then
          // SQL.Add('AND (Recipts.ReciptState = 2 ) ');

          SQL.Add('AND (Recipts.SellsEmporium BETWEEN :SellsEmporiumFrom AND :SellsEmporiumTo)');

          SQL.Add('GROUP BY Recipts.ReciptID,Recipts.ServerID ,Recipts.YearID , Recipts.ReciptNumber, Recipts.ReciptDate, Recipts.PersonID1,');
          SQL.Add('Customers.CustName,C2.CustName,');
          SQL.Add('Recipts.StoreID, Stores.c_StoreName, Recipts.ReciptState, Recipts.ReciptType, ReciptTypes.ReciptCaption,');
          SQL.Add('Recipts.PersonID2, Recipts.PersonID3,Recipts.PersonID4,Recipts.ReciptState');

          SQL.Add('ORDER BY Recipts.ReciptNumber');

        end
        else
        begin
          SQL.Text := 'SELECT Recipts.ReciptID,Recipts.ServerID ';
          SQL.Add(' ,Recipts.YearID, Recipts.ReciptNumber, Recipts.ReciptDate, Recipts.PersonID1,');
          SQL.Add('Customers.CustName,C2.CustName CustName2,');
          SQL.Add('Recipts.StoreID, Stores.c_StoreName, Recipts.ReciptState, Recipts.ReciptType, ReciptTypes.ReciptCaption,');
          SQL.Add('Recipts_1.ParentReciptID, Recipts.PersonID2, Recipts.PersonID3,Recipts.PersonID4,Recipts.ReciptState');
          SQL.Add('FROM Recipts INNER JOIN');
          SQL.Add('ReciptTypes ON Recipts.ReciptType = ReciptTypes.ReciptType LEFT OUTER JOIN');
          SQL.Add('(SELECT ParentReciptID, ServerID, YearID');
          SQL.Add('FROM Recipts AS Recipts');
          SQL.Add('WHERE (ReciptType = :FormType )');
          SQL.Add('or ReciptType in (');
          SQL.Add('SELECT ReciptType');
          SQL.Add('FROM ReciptTypes');
          SQL.Add('WHERE(('',''+RecallReciptTypes+'','' like '',''+''' +
            RecallReciptTypes + '''+'','' ) AND (RecallType = 1)) )');
          SQL.Add(') AS Recipts_1 ON');
          SQL.Add('Recipts.YearID = Recipts_1.YearID AND ---------------------------Recipts.ServerID = Recipts_1.ServerID AND');
          SQL.Add('Recipts.ReciptID = Recipts_1.ParentReciptID LEFT OUTER JOIN');
          SQL.Add('Stores ON Recipts.StoreID = Stores.n_StoreID LEFT OUTER JOIN');
          SQL.Add('Customers ON Recipts.PersonID1 = Customers.CustID');
          SQL.Add(' LEFT OUTER JOIN Customers C2 ON Recipts.PersonID2 = C2.CustID');

          SQL.Add('WHERE (Recipts_1.ParentReciptID IS NULL) AND (Recipts.YearID BETWEEN :YearIDFrom AND :YearIDTo )');
          SQL.Add('AND (Recipts.ReciptType IN (' + RecallReciptTypes + ')) ' +
            UseStoreIDOnRecall);
          // if ((RecallTypeOption and Integer(CHkRecallReciptState2)) <> 0) then
          // SQL.Add('AND (Recipts.ReciptState = 2 ) ');
          SQL.Add('AND (Recipts.SellsEmporium BETWEEN :SellsEmporiumFrom AND :SellsEmporiumTo)');

          SQL.Add('ORDER BY Recipts.ReciptNumber');

        end;

        Parameters.ParamByName('SellsEmporiumFrom').Value :=
          GetcFrom(myParams.ParamValues['SellsEmporium'], ftInteger);
        Parameters.ParamByName('SellsEmporiumTo').Value :=
          GetcTo(myParams.ParamValues['SellsEmporium'], ftInteger);

        Parameters.ParamByName('FormType').Value := FormType;

        if qryinit.FieldByName('FilterYearIDActive').AsInteger = 0 then
        begin
          Parameters.ParamByName('YearIDFrom').Value := opt.DefaultYear;
          Parameters.ParamByName('YearIDTo').Value := APPBank.Year;
        end
        else
        begin
          Parameters.ParamByName('YearIDFrom').Value := 1300;
          Parameters.ParamByName('YearIDTo').Value := APPBank.Year;
        end;

        Active := True;
      end; // with
      // qryDetail_Item.Active := True;
      if ShowModal = mrOk then
      begin
        ReciptID := qryMater_ReciptReciptID.AsInteger;
        YearID := qryMater_ReciptYearID.AsInteger;
        ServerID := qryMater_ReciptServerID.AsInteger;
        if RecallType = 19 then
          SelectReciptItemID := '0'
        else
          SelectReciptItemID := SelectItemID;
        checkPrice := chkPrice.Checked;
      end; // if
    finally
      Free;
    end; // try
  end; // with

end;

procedure TRecallReciptsF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  QuickSearch(Key, qryMater_Recipt.FieldByName('ReciptNumber'));
end;

procedure TRecallReciptsF.DBGrid1TitleClick(Column: TColumnEh);
begin
  inherited;
  qryMater_ReciptAfterScroll(nil)
end;

procedure TRecallReciptsF.DBGrid2KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  QuickSearch(Key, qryDetail_Item.FieldByName(opt.SearchCode));
end;

procedure TRecallReciptsF.DBGrid2MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  // (Sender as TDBGrid).Refresh
end;

procedure TRecallReciptsF.actSearchExecute(Sender: TObject);
var
  txt: String;
  Results: array [0 .. 5] of String;
begin
  inherited;
  txt := 'SELECT Recipts.ReciptID, Recipts.ReciptNumber, Recipts.ReciptDate, Customers.CustName, Stores.c_StoreName,'
    + 'ReciptTypes.ReciptCaption FROM Recipts INNER JOIN ' +
    'ReciptTypes ON Recipts.ReciptType = ReciptTypes.ReciptType LEFT OUTER JOIN '
    + 'Recipts Recipts_1 ON Recipts.ReciptID = Recipts_1.ParentReciptID LEFT OUTER JOIN '
    + 'Stores ON Recipts.StoreID = Stores.n_StoreID LEFT OUTER JOIN ' +
    'Customers ON Recipts.PersonID1 = Customers.CustID ' +
    'WHERE(Recipts.ReciptType IN (' + Recall_Recipt_Types +
    ')) AND (Recipts_1.ParentReciptID IS NULL)';
  if searchCode_ADOF.SearchCode2(DMF.adcBSell, '', txt,
    ['', 'شماره فرم', 'تاريخ فرم', 'نام مشتري', 'نام انبار', 'نام فرم'],
    Results, [0, 50, 50, 100, 100, 100], alRight) then
  begin
    qryMater_Recipt.locate('ReciptID', Results[0], []);
  end; // if
end;

procedure TRecallReciptsF.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  if (RecallType <> 19) then
    ModalResult := mrOk
  else if qryDetail_Item.RecordCount = 0 then
    ModalResult := mrOk
end;

procedure TRecallReciptsF.FormCreate(Sender: TObject);
begin
  inherited;
  Width := StrToInt(ReadConfig(APPID, Self.Name + '_Width', IntToStr(Width)));
  chkPrice.Checked := StrToBool(ReadConfig(APPID, 'RecallReciptsF', 'True'));

end;

procedure TRecallReciptsF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveConfig(APPID, Self.Name + '_Width', IntToStr(Width));
  SaveConfig(APPID, 'RecallReciptsF', BoolToStr(chkPrice.Checked));
end;

procedure TRecallReciptsF.initlblTopic(var RecallReciptTypes: String);
begin
  with qryRTypes do
  begin
    Active := False;
    SQL.Add('where ReciptType in(' + RecallReciptTypes +
      ') ORDER BY ReciptType');
    Active := True;
    while not Eof do
    begin
      lblTopic0.Caption := Trim(lblTopic0.Caption) + ' > ' +
        Trim(qryRTypesReciptCaption.AsString) + ' ';
      Next;
    end; // while
  end; // with
end;

procedure TRecallReciptsF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try

      AddItemFilter(GetFilter, TFilterSellsEmporium);

      if ((Var_glb_NoFilter) Or (ShowModal = mrOk)) then
      begin
        GetFilterString;
        // UpdateList;
      end; // if
    finally
      Free;
    end; // try
  end; // with
end;

procedure TRecallReciptsF.actSearch2Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryMater_Recipt);
end;

procedure TRecallReciptsF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryMater_Recipt);

end;

procedure TRecallReciptsF.BitBtn4Click(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryDetail_Item);

end;

procedure TRecallReciptsF.BitBtn5Click(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryDetail_Item);
end;

procedure TRecallReciptsF.DBGrid2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_SPACE then
  begin
    Key := 0;
    ToggleCheck(True);
  end; // if

end;

procedure TRecallReciptsF.ToggleCheck(CalculateSummary: Boolean = True);
begin
  if ((RecallTypeOption and Integer(CHkNotPossibleSelectItems)) = 0) then
    with qryDetail_Item do
    begin
      Edit;
      FieldByName('_Checked').AsInteger :=
        ifthen(FieldByName('_Checked').AsInteger = 1, 0, 1);
      Post;
    end; // with
end;

procedure TRecallReciptsF.DBGrid2DblClick(Sender: TObject);
begin
  inherited;
  ToggleCheck;
end;

procedure TRecallReciptsF.DBGrid2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  inherited;
  // DBGrid2.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  // if DataCol = 0 then
  // begin
  // DBGrid2.Canvas.Rectangle(Rect);
  // if qryDetail_Item.FieldByName('_checked').AsInteger = 1 then
  // DBGrid2.Canvas.Draw(Rect.Left, Rect.Top, Imgchecked.Picture.Graphic)
  // else
  // DBGrid2.Canvas.Draw(Rect.Left, Rect.Top, ImgUnchecked.Picture.Graphic)
  // end; // if
end;

procedure TRecallReciptsF.qryDetail_ItemAfterOpen(DataSet: TDataSet);
begin
  inherited;
  with qryDetail_Item do
  begin
    DisableControls;
    First;
    while not Eof do
    begin
      Edit;
      FieldByName('_checked').AsInteger := 1;
      Post;
      Next;
    end; // while
    First;
    EnableControls;
  end; // with

end;

procedure TRecallReciptsF.qryMater_ReciptAfterScroll(DataSet: TDataSet);
begin
  inherited;
  With qryDetail_Item do
  begin
    Active := False;
    Parameters.ParamByName('ReciptID').Value :=
      qryMater_Recipt.FieldByName('ReciptID').AsInteger;
    Parameters.ParamByName('ServerID').Value :=
      qryMater_Recipt.FieldByName('ServerID').AsInteger;
    Parameters.ParamByName('YearID').Value := qryMater_Recipt.FieldByName
      ('YearID').AsInteger;
    Active := True;
  end;
end;

procedure TRecallReciptsF.qryMater_ReciptReciptStateGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  Text := GetReciptState(Sender.AsInteger)
end;

function TRecallReciptsF.SelectItemID: String;
begin
  Result := '';
  with qryDetail_Item do
  begin
    DisableControls;
    First;
    while not Eof do
    begin
      if FieldByName('_checked').AsInteger = 1 then
        Result := Result + FieldByName('ReciptItemID').AsString + ',';
      Next;
    end; // while
    Result := LeftStr(Result, length(Result) - 1);
    First;
    EnableControls;
  end;
  // with

end;

end.
