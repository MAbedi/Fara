// mahmood  1401/09/08
unit RecallRecipts2Assets;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template4, DB, ADODB, ComCtrls, DBActns, ActnList,
  StrUtils, StdCtrls, Buttons, ExtCtrls, DBCtrls, Provider, DBClient, Math,
  System.Actions, FarsiReportBuilde, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  CedarDbGrid, Filter_ADO_Const, Vcl.Imaging.jpeg;

type
  TRecallRecipts2AssetsF = class(TTemplate4F)
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
    actSearch: TAction;
    BitBtn3: TBitBtn;
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
    qryDetail_ItemStuffCode: TLargeintField;
    qryDetail_Itemc_StuffName: TStringField;
    qryDetail_ItemUnitName: TStringField;
    qryDetail_ItemWeight: TFloatField;
    qryDetail_ItemPrice: TBCDField;
    qryDetail_ItemItemNote: TStringField;
    qryDetail_Item_checked: TFMTBCDField;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    qryDetail_ItemEntity: TFloatField;
    DBGrid1: TCedarDbgrid;
    DBGrid2: TCedarDbgrid;
    BitBtn6: TBitBtn;
    qryMater_ReciptCustName2: TStringField;
    qryMater_ReciptPersonID3: TIntegerField;
    qryMater_ReciptPersonID4: TIntegerField;
    actFilter: TAction;
    qryDetail_ItemGroupID: TIntegerField;
    qryDetail_ItemTotallSellPrice: TBCDField;
    qryDetail_ItemPrefixPelak: TStringField;
    qryDetail_ItemReciptNumber: TIntegerField;
    qryDetail_ItemReciptDate: TStringField;
    qryDetail_Itemacc_CTopicCode: TStringField;
    qryDetail_ItemUnitCode: TIntegerField;
    qryDetail_ItemTopicCode: TLargeintField;
    qryDetail_ItemDetailCode: TIntegerField;
    qryMater_ReciptDocNo: TIntegerField;
    qryMater_ReciptDocDate: TStringField;
    qryDetail_ItemID: TFMTBCDField;
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
    procedure FormCreate(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure qryMater_ReciptReciptStateGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure DBGrid1TitleClick(Column: TColumnEh);
    procedure actFilterExecute(Sender: TObject);
  private
    { Private declarations }
    Recall_Recipt_Types: String;
    procedure initlblTopic(var RecallReciptTypes: String);
    procedure ToggleCheck(CalculateSummary: Boolean = True);
    procedure InsertAmval(qryA: TADOQuery);
  public
    { Public declarations }

    procedure SelectRecall(qryAmval: TADOQuery);
  end;

var
  RecallRecipts2AssetsF: TRecallRecipts2AssetsF;

implementation

uses searchCode_ADO, DM, GlobalPro, search2, sort2, FaraConsts, FormFunctions,
  filter_ADO, MMESSAGE;

{$R *.dfm}
{ TRecallRecipts2AssetsF }

procedure TRecallRecipts2AssetsF.SelectRecall(qryAmval: TADOQuery);
var
  b: Boolean;
begin
  RecallRecipts2AssetsF := TRecallRecipts2AssetsF.Create(Application);
  with RecallRecipts2AssetsF do
  begin
    try
      myParams.Clear;
      actFilter.Execute;
      if myParams.FindParam('SellsEmporium') = nil then
      begin
        RecallRecipts2AssetsF.Free;
        exit;
      end;
      initlblTopic(opt.RecallReciptTypes);
      Recall_Recipt_Types := opt.RecallReciptTypes;

      b := ((opt.ConfigSettings and Integer(CHkCsSpecialCode)) <> 0);
      setColumns2(DBGrid1, b, 'SpecialCode');

      With qryDetail_Item DO
      begin
        SQL.Text := 'SELECT DISTINCT Fitful.FitfulID AS _checked, Ri.ID';
        SQL.Add(', S.GroupID,Ri.StuffCode , S.c_StuffName, Ri.ItemNote,Units.UnitCode , Units.UnitName,');
        SQL.Add('Ri.InputEntity + Ri.OutputEntity AS Entity, Ri.InputWeight + Ri.OutputWeight AS Weight,');
        SQL.Add('Ri.TotalInputPrice + Ri.TotalOutputPrice AS Price, Ri.TotallSellPrice, StuffGroups.PrefixPelak, R.ReciptNumber,');
        SQL.Add('R.ReciptDate, C1.acc_CTopicCode,MakeDoc.TopicCode,MakeDoc.DetailCode');
        SQL.Add('FROM ReciptItems AS Ri INNER JOIN');
        SQL.Add('StuffCoding AS S ON Ri.StuffCode = S.c_StuffCode INNER JOIN');
        SQL.Add('Units ON S.n_UnitCode = Units.UnitCode INNER JOIN');
        SQL.Add('StuffGroups ON S.GroupID = StuffGroups.GroupID INNER JOIN');
        SQL.Add('Recipts AS R ON Ri.ReciptID = R.ReciptID AND Ri.ServerID = R.ServerID AND Ri.YearID = R.YearID INNER JOIN');
        SQL.Add('Customers AS C1 ON R.PersonID1 = C1.CustID INNER JOIN');
        SQL.Add('Customers AS CD ON Ri.PersonID1 = CD.CustID CROSS JOIN Fitful OUTER APPLY');
        SQL.Add('dbo.Aid_MakeDocuments_Recipt(1, R.ReciptNumber, R.ReciptNumber, R.ReciptDate, R.ReciptDate, DEFAULT, DEFAULT,');
        SQL.Add('R.StoreID, R.StoreID, DEFAULT, DEFAULT, DEFAULT, DEFAULT, DEFAULT, R.ReciptState, R.ReciptState, R.PersonID1,');
        SQL.Add('R.PersonID1,');
        SQL.Add('R.PersonID2, R.PersonID2, R.PersonID3, R.PersonID3, R.SellsEmporium, R.SellsEmporium, DEFAULT, DEFAULT, DEFAULT,');
        SQL.Add('R.ReciptType, R.ReciptType,''-1'',''-1'',''-1'') AS MakeDoc');
        SQL.Add('WHERE (Ri.ReciptID = :ReciptID ) AND (Ri.ServerID = :ServerID )');
        SQL.Add('AND (Ri.YearID = :YearID )AND (ISNULL(BedBes,1)=1)');

      end;

      With qryMater_Recipt DO
      begin
        Active := False;
        SQL.Text := 'SELECT R.ReciptID, R.ServerID';
        SQL.Add(', R.YearID, R.ReciptNumber, R.ReciptDate, R.PersonID1, C1.CustName, C2.CustName AS');
        SQL.Add('CustName2, R.StoreID, S.c_StoreName, R.ReciptState, R.ReciptType, T.ReciptCaption,');
        SQL.Add('0 AS ParentReciptID, R.PersonID2, R.PersonID3, R.PersonID4,R.DocNo ,R.DocDate');
        SQL.Add('FROM Recipts AS R INNER JOIN');
        SQL.Add('ReciptItems AS Ri ON R.ReciptID = Ri.ReciptID AND R.ServerID = Ri.ServerID AND R.YearID = Ri.YearID');
        SQL.Add('INNER JOIN');
        SQL.Add('ReciptTypes AS T ON R.ReciptType = T.ReciptType LEFT OUTER JOIN');
        SQL.Add('Stores AS S ON R.StoreID = S.n_StoreID LEFT OUTER JOIN');
        SQL.Add('Customers AS C1 ON R.PersonID1 = C1.CustID LEFT OUTER JOIN');
        SQL.Add('Customers AS C2 ON R.PersonID2 = C2.CustID LEFT OUTER JOIN');
        SQL.Add('Assets.Amval AS A ON Ri.ID = A.ReciptItemsID');
        SQL.Add('WHERE (A.ReciptItemsID IS NULL) ');
        SQL.Add('AND (R.YearID BETWEEN :YearIDFrom AND :YearIDTo) ');
        SQL.Add('AND (R.ReciptType IN (' + opt.RecallReciptTypes + ')) ');
        SQL.Add('AND (R.SellsEmporium BETWEEN :SellsEmporiumFrom AND :SellsEmporiumTo)');
        SQL.Add('GROUP BY R.ReciptID, R.ServerID, R.YearID, R.ReciptNumber, R.ReciptDate, R.PersonID1, C1.CustName, C2.CustName,');
        SQL.Add('R.StoreID, S.c_StoreName, R.ReciptState, R.ReciptType, T.ReciptCaption, R.PersonID2,');
        SQL.Add('R.PersonID3, R.PersonID4, R.ReciptState,R.DocNo ,R.DocDate');
        SQL.Add('ORDER BY R.ReciptNumber');

        Parameters.ParamByName('SellsEmporiumFrom').Value :=
          GetcFrom(myParams.ParamValues['SellsEmporium'], ftInteger);
        Parameters.ParamByName('SellsEmporiumTo').Value :=
          GetcTo(myParams.ParamValues['SellsEmporium'], ftInteger);

        Parameters.ParamByName('YearIDFrom').Value :=
          GetcFrom(myParams.ParamValues['YearID'], ftInteger);
        Parameters.ParamByName('YearIDTo').Value :=
          GetcTo(myParams.ParamValues['YearID'], ftInteger);

        Active := True;
      end;

      if ShowModal = mrOk then
      begin

        BigMessage('لطفا صبر کنید....', 0);
        InsertAmval(qryAmval);
        BigMessage('انجام شد', 500);

      end; // if
    finally
      Free;
    end; // try
  end; // with

end;

procedure TRecallRecipts2AssetsF.InsertAmval(qryA: TADOQuery);
var
  i: Integer;
begin
  With qryDetail_Item do
  begin
    while not Eof do
      if qryDetail_Item_checked.AsInteger = 1 then
      begin
        for i := 0 to qryDetail_ItemEntity.AsInteger - 1 do
        begin
          qryA.Insert;
          qryA.FieldByName('FormNum').AsInteger :=
            qryDetail_ItemReciptNumber.AsInteger;
          qryA.FieldByName('FormDate').AsString :=
            qryDetail_ItemReciptDate.AsString;
          // qryA.FieldByName('OwnerType').AsString := 'نوع مالكيت';
          qryA.FieldByName('StuffDesc').AsString :=
            qryDetail_Itemc_StuffName.AsString + ' ' +
            qryDetail_ItemItemNote.AsString;
          qryA.FieldByName('UnitCode').AsInteger :=
            qryDetail_ItemUnitCode.AsInteger;
          qryA.FieldByName('AsstetsGrpCode').AsInteger :=
            qryDetail_ItemGroupID.AsInteger;
          qryA.FieldByName('AssetsValue').AsFloat :=
            qryDetail_ItemTotallSellPrice.AsFloat;
          qryA.FieldByName('EsqValue').AsInteger := 0;
          // qryA.FieldByName('Amount').AsString := 'Amount';
          qryA.FieldByName('TaxGrpCode').AsInteger := 0;
          qryA.FieldByName('TaxID').AsInteger := 0;
          qryA.FieldByName('DepMode').AsInteger := 2;
          qryA.FieldByName('DepValue').AsInteger := 0;
          qryA.FieldByName('InvoiceNum').AsInteger :=
            qryDetail_ItemReciptNumber.AsInteger;
          qryA.FieldByName('InvoiceDate').AsString :=
            qryDetail_ItemReciptDate.AsString;
          qryA.FieldByName('SellerNote').AsString :=
            qryMater_ReciptReciptCaption.AsString;

          qryA.FieldByName('ReciptItemsID').AsLargeInt :=
            qryDetail_ItemID.AsLargeInt;

          qryA.FieldByName('AccTopicCode').AsLargeInt :=
            qryDetail_ItemTopicCode.AsLargeInt;
          qryA.FieldByName('AccDetailCode').AsInteger :=
            qryDetail_ItemDetailCode.AsInteger;
          qryA.FieldByName('AccCTopicCode').AsInteger := 0;
          qryA.FieldByName('AccCTopicCode2').AsInteger := 0;
          qryA.FieldByName('AccCTopicCode3').AsInteger := 0;
          qryA.FieldByName('SellerDetailCode').AsInteger := 0;
          qryA.FieldByName('SellerCTopicCode').AsInteger := 0;
          qryA.FieldByName('ExpCode').AsInteger := 0;
          qryA.FieldByName('SellsEmporium').AsInteger := 1;



          // خود سیستم میزنه
          // qryA.FieldByName('StartUsingDate').AsString :=
          // qryA.FieldByName('PelakNum').AsString :=            // qryDetail_ItemPrefixPelak.AsString + (i + 1).ToString;
          // خود سیستم میزنه

          // qryA.FieldByName('SellerTopicCode').AsString := 'كدحساب';
          qryA.FieldByName('DocNum').AsString := qryMater_ReciptDocNo.AsString;
          qryA.FieldByName('DocDate').AsString :=
            qryMater_ReciptDocDate.AsString;

          // qryA.FieldByName('PlaceCode').AsString := 'محل استقرار';
          qryA.FieldByName('PlaceCode').AsInteger := 1;

          qryA.FieldByName('UserCode').AsInteger := 1;
          qryA.FieldByName('KeeperCode').AsInteger := 1;
          // qryA.FieldByName('Comments').AsString := 'Comments';
          // qryA.FieldByName('AidField1').AsString := 'AidField1';
          // qryA.FieldByName('AidField2').AsString := 'AidField2';

          qryA.Post;
        end;
        Next;
      end
      else
        Next;

  end;
end;

procedure TRecallRecipts2AssetsF.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  QuickSearch(Key, qryMater_Recipt.FieldByName('ReciptNumber'));
end;

procedure TRecallRecipts2AssetsF.DBGrid1TitleClick(Column: TColumnEh);
begin
  inherited;
  qryMater_ReciptAfterScroll(nil)
end;

procedure TRecallRecipts2AssetsF.DBGrid2KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  QuickSearch(Key, qryDetail_Item.FieldByName(opt.SearchCode));
end;

procedure TRecallRecipts2AssetsF.actSearchExecute(Sender: TObject);
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

procedure TRecallRecipts2AssetsF.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  ModalResult := mrOk
end;

procedure TRecallRecipts2AssetsF.FormCreate(Sender: TObject);
begin
  inherited;
  Width := StrToInt(ReadConfig(APPID, Self.Name + '_Width', IntToStr(Width)));

end;

procedure TRecallRecipts2AssetsF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveConfig(APPID, Self.Name + '_Width', IntToStr(Width));

end;

procedure TRecallRecipts2AssetsF.initlblTopic(var RecallReciptTypes: String);
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

procedure TRecallRecipts2AssetsF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try

      AddItemFilter(GetFilter, TFilterSellsEmporium);
      AddItemFilter(GetFilter, TFilterYearID);

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

procedure TRecallRecipts2AssetsF.actSearch2Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryMater_Recipt);
end;

procedure TRecallRecipts2AssetsF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryMater_Recipt);

end;

procedure TRecallRecipts2AssetsF.BitBtn4Click(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryDetail_Item);

end;

procedure TRecallRecipts2AssetsF.BitBtn5Click(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryDetail_Item);
end;

procedure TRecallRecipts2AssetsF.DBGrid2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_SPACE then
  begin
    Key := 0;
    ToggleCheck(True);
  end; // if

end;

procedure TRecallRecipts2AssetsF.ToggleCheck(CalculateSummary: Boolean = True);
begin
  with qryDetail_Item do
  begin
    Edit;
    FieldByName('_Checked').AsInteger :=
      ifthen(FieldByName('_Checked').AsInteger = 1, 0, 1);
    Post;
  end; // with
end;

procedure TRecallRecipts2AssetsF.DBGrid2DblClick(Sender: TObject);
begin
  inherited;
  ToggleCheck;
end;

procedure TRecallRecipts2AssetsF.qryDetail_ItemAfterOpen(DataSet: TDataSet);
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

procedure TRecallRecipts2AssetsF.qryMater_ReciptAfterScroll(DataSet: TDataSet);
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

procedure TRecallRecipts2AssetsF.qryMater_ReciptReciptStateGetText
  (Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  Text := GetReciptState(Sender.AsInteger)
end;

end.
