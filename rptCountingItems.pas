{ -----------------------------------------------------------------------------
  Unit Name: rptCustomerTrancItems
  Author:    Mahmood
  ----------------------------------------------------------------------------- }
unit rptCountingItems;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DBCtrls, Grids, Vcl.DBGrids,
  ppDB, ppDBPipe, ppComm, ppRelatv, ppProd, ppClass, ppReport, ppPrnabl,
  ppCtrls, ppCache, ppBands, ppVar, ppStrtch, ppMemo, ppModule,
  ppSubRpt, Menus, DB, ADODB, Mask, ComCtrls, DM, SumDBGrid, ppParameter,
  ppDesignLayer, System.ImageList, System.Actions;

type
  TrptCountingItemsF = class(Ttemplate2MDIF)
    SrcCounting: TDataSource;
    qryCounting: TADOQuery;
    qryCountingItems: TADOQuery;
    SrcCountingItems: TDataSource;
    PopMenu: TPopupMenu;
    DetailNote: TMenuItem;
    ppDBPipeline1: TppDBPipeline;
    DBGrid1: TDBGrid;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn4: TBitBtn;
    DBNavigator2: TDBNavigator;
    BitBtn3: TBitBtn;
    StatusBar1: TStatusBar;
    actSendExel: TAction;
    LblLimit: TLabel;
    ppReport1: TppReport;
    actPrint: TAction;
    actSort: TAction;
    AllC_l_i_c_k_: TMenuItem;
    qryCountingCountID: TIntegerField;
    qryCountingCountNumber: TIntegerField;
    qryCountingCountDate: TStringField;
    qryCountingNote: TStringField;
    qryCountingAttachFileName: TStringField;
    qryCountingFormSignature: TStringField;
    qryCountingState: TWordField;
    Panel1: TPanel;
    Label1: TLabel;
    GroupBox2: TGroupBox;
    DBMemo1: TDBMemo;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    Label8: TLabel;
    DBEdit3: TDBEdit;
    btnCountNumber: TBitBtn;
    DBEditDate: TDBEdit;
    LblReciptDate: TLabel;
    DBNavigator1: TDBNavigator;
    qryCountingItemsc_StuffName: TStringField;
    qryCountingItemsStuffSize: TStringField;
    qryCountingItemsStuffDiameter: TFloatField;
    qryCountingItemsStuffAlloy: TStringField;
    qryCountingItemsStuffGrade: TWordField;
    qryCountingItemsControlCode: TLargeintField;
    ppHeaderBand1: TppHeaderBand;
    ppShape1: TppShape;
    ppLblCompanyName: TppLabel;
    ppLblCaption: TppLabel;
    ppLblPrintDate: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppLine11: TppLine;
    ppLin4Position: TppLine;
    ppFooterBand1: TppFooterBand;
    ppShape2: TppShape;
    ppLabel4: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppShape3: TppShape;
    ppLabel2: TppLabel;
    ppSysVarPageNo: TppSystemVariable;
    actPrintVijeh: TAction;
    BitBtn1: TBitBtn;
    actFilter: TAction;
    SumGrid1: TSumGrid;
    BitBtn2: TBitBtn;
    qryCountingItemsStuffCode: TLargeintField;
    qryCountingItemsc_StoreName: TStringField;
    qryCountingItemsStoreID: TIntegerField;
    qryCountingItemsc_KeepPlace: TStringField;
    qryCountingItemsCount1Entity: TFMTBCDField;
    qryCountingItemsCount1Weight: TFMTBCDField;
    qryCountingItemsCount2Entity: TFMTBCDField;
    qryCountingItemsCount2Weight: TFMTBCDField;
    qryCountingItemsCount3Entity: TFMTBCDField;
    qryCountingItemsCount3Weight: TFMTBCDField;
    qryCountingItemsDifferEntity: TFMTBCDField;
    qryCountingItemsDifferWeight: TFMTBCDField;
    qryCountingItemsEntity: TFMTBCDField;
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actSendExelExecute(Sender: TObject);
    procedure qryCountingAfterScroll(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure actPrintExecute(Sender: TObject);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure ppLblDateGetText(Sender: TObject; var Text: String);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure AllC_l_i_c_k_Click(Sender: TObject);
    procedure btnCountNumberClick(Sender: TObject);
    procedure ppSysVarPageNoGetText(Sender: TObject; var Text: String);
    procedure actPrintVijehExecute(Sender: TObject);
    procedure ppLblCaptionGetText(Sender: TObject; var Text: String);
    procedure ppLblPrintDateGetText(Sender: TObject; var Text: String);
    procedure actFilterExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    formType: Byte;
  public
    procedure UpdateList(StoreID: Integer);
    { Public declarations }
  end;

var
  rptCountingItemsF: TrptCountingItemsF;

implementation

uses filter_ADO, FilterClass_ADO, GlobalPro,
  searchCode_ADO, search2, sort2,
  DBGrid2Print;

{$R *.dfm}

procedure TrptCountingItemsF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 6);
end;

procedure TrptCountingItemsF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
end;

procedure TrptCountingItemsF.actSendExelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TrptCountingItemsF.qryCountingAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qryCountingItems do
  begin
    Active := False;
    Parameters.ParamByName('CountID').Value :=
      qryCounting.FieldByName('CountID').AsInteger;
    Active := True;
  end; // with
end;

procedure TrptCountingItemsF.FormCreate(Sender: TObject);
begin
  inherited;
  formType := var_glb_gParam;
  if formType = 2 then
  begin
    With qryCountingItems do
    begin
      Active := False;
      SQL.Text :=
        'SELECT CountingItems.StuffCode, StuffCoding.c_StuffName, CountingItems.StuffSize,';
      SQL.Add('CountingItems.StuffDiameter,');
      SQL.Add('CountingItems.StuffAlloy, CountingItems.StuffGrade, CountingItems.ControlCode,');
      SQL.Add('CountingItems.Count1Entity,');
      SQL.Add('CountingItems.Count1Weight, CountingItems.Count2Entity, CountingItems.Count2Weight,');
      SQL.Add('CountingItems.Count3Entity,');
      SQL.Add('CountingItems.Count3Weight, CountingItems.Count3Entity - CountingItems.Count2Entity AS');
      SQL.Add('DifferEntity,');
      SQL.Add('CountingItems.Count3Weight - CountingItems.Count2Weight AS DifferWeight');

      SQL.Add(', Stores.c_StoreName,CountingItems.StoreID');

      SQL.Add(', 0.0 AS Entity,StuffCoding.c_KeepPlace');

      SQL.Add('FROM CountingItems INNER JOIN');
      SQL.Add('StuffCoding ON CountingItems.StuffCode = StuffCoding.c_StuffCode');

      SQL.Add('INNER JOIN Stores ON CountingItems.StoreID = Stores.n_StoreID');

      SQL.Add('WHERE (CountingItems.StoreID = :StoreID) AND (CountingItems.CountID = :CountID) AND ((NOT');
      SQL.Add('(CountingItems.Count3Weight IS NULL)) OR');
      SQL.Add('(NOT (CountingItems.Count3Entity IS NULL))) AND (StuffCoding.GroupID BETWEEN :GroupIDFrom AND :GroupIDTo)');
    end;
    Caption := 'ê“«—‘ „ﬁ«Ì”Â «Ì ‘„«—‘ œÊ„ Ê ”Ê„ ';
  end;
  if formType = 3 then
  begin
    With qryCountingItems do
    begin
      Active := False;
      SQL.Text :=
        'SELECT CountingItems.StuffCode, StuffCoding.c_StuffName, CountingItems.StuffSize,';
      SQL.Add('CountingItems.StuffDiameter,');
      SQL.Add('CountingItems.StuffAlloy, CountingItems.StuffGrade, CountingItems.ControlCode,');
      SQL.Add('CountingItems.Count1Entity,CountingItems.Count1Weight,');
      SQL.Add('CountingItems.Count2Entity,CountingItems.Count2Weight,');
      SQL.Add('CountingItems.Count3Entity, CountingItems.Count3Weight,');
      SQL.Add('(CASE CountingItems.Count2Entity - CountingItems.Count1Entity WHEN 0 THEN CountingItems.Count2Entity');
      SQL.Add('ELSE CountingItems.Count3Entity ');
      // - CountingItems.Count2Entity
      SQL.Add('END) AS DifferEntity,');
      SQL.Add('(CASE CountingItems.Count2Weight - CountingItems.Count1Weight WHEN 0 THEN');
      SQL.Add('CountingItems.Count2Weight ELSE CountingItems.Count3Weight ');
      // - CountingItems.Count2Weight
      SQL.Add('END) AS DifferWeight');

      SQL.Add(', Stores.c_StoreName,CountingItems.StoreID');

      SQL.Add(', StoreEntity_1.Entity,StuffCoding.c_KeepPlace');

      SQL.Add('FROM CountingItems INNER JOIN');
      SQL.Add('StuffCoding ON CountingItems.StuffCode = StuffCoding.c_StuffCode');

      SQL.Add('INNER JOIN Stores ON CountingItems.StoreID = Stores.n_StoreID');

      SQL.Add('LEFT OUTER JOIN');
      SQL.Add('dbo.StoreEntity(DEFAULT, DEFAULT, DEFAULT, DEFAULT, DEFAULT, DEFAULT) AS StoreEntity_1');
      SQL.Add('ON CountingItems.StoreID = StoreEntity_1.StoreID AND CountingItems.StuffCode = StoreEntity_1.StuffCode');

      SQL.Add('WHERE (CountingItems.StoreID = :StoreID) AND (CountingItems.CountID = :CountID) AND (StuffCoding.GroupID BETWEEN :GroupIDFrom AND :GroupIDTo)');
    end;
    Caption := '·Ì”  «‰»«— ê—œ«‰Ì';
    qryCountingItems.FieldByName('DifferEntity').DisplayLabel :=
      '„ﬁœ«— „ÊÃÊœÌ ‰Â«ÌÌ';
    qryCountingItems.FieldByName('DifferWeight').DisplayLabel :=
      'Ê“‰ „ÊÃÊœÌ ‰Â«ÌÌ';
  end;
  setColumns2(DBGrid1, formType in [1, 3], 'Count1Entity');
  setColumns2(DBGrid1, formType in [1, 3], 'Count1Weight');
  setColumns2(DBGrid1, formType in [2, 3], 'Count3Entity');
  setColumns2(DBGrid1, formType in [2, 3], 'Count3Weight');
  // DBGrid1.Columns[7].Visible := formType in [1, 3];
  // DBGrid1.Columns[8].Visible := formType in [1, 3];
  // DBGrid1.Columns[11].Visible := formType in [2, 3];
  // DBGrid1.Columns[12].Visible := formType in [2, 3];

  Entity_Weight(DBGrid1);
  setColumns2(DBGrid1, formType = 3, 'Entity');

end;

procedure TrptCountingItemsF.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  if not(gdSelected in State) then
  begin
    if odd(DBGrid1.DataSource.DataSet.RecNo) then
      DBGrid1.Canvas.Brush.Color := const_fixed_columns_color;
  end; // if
  DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TrptCountingItemsF.actPrintExecute(Sender: TObject);
begin
  inherited;
  PopMenu.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TrptCountingItemsF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName
end;

procedure TrptCountingItemsF.ppLblDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := LblLimit.Caption
end;

procedure TrptCountingItemsF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryCountingItems);
end;

procedure TrptCountingItemsF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryCountingItems);
end;

procedure TrptCountingItemsF.AllC_l_i_c_k_Click(Sender: TObject);
begin
  inherited;
  try
    qryCounting.DisableControls;
    qryCountingItems.DisableControls;
    InitReportFile(ppReport1, 'rptCountingItems');
  finally
    qryCounting.EnableControls;
    qryCountingItems.EnableControls;
  end; // try

end;

procedure TrptCountingItemsF.btnCountNumberClick(Sender: TObject);
var
  Txt: String;
  b: Boolean;
  Results: array [0 .. 2] of String;
begin
  inherited;
  Txt := 'SELECT CountID,CountNumber,CountDate FROM Counting ';
  b := searchCode_ADOF.SearchCode2(DMF.adcBSell, ' «ÿ·«⁄«   ', Txt,
    ['', '‘„«—Â', ' «—ÌŒ'], Results, [0, 50, 50], alLeft);
  if b then
    qryCounting.Locate('CountID', Results[0], []);
end;

procedure TrptCountingItemsF.ppSysVarPageNoGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TrptCountingItemsF.actPrintVijehExecute(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(DBGrid1, 0);
end;

procedure TrptCountingItemsF.ppLblCaptionGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := Caption;
end;

procedure TrptCountingItemsF.ppLblPrintDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TrptCountingItemsF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      AddItem(DMF.adcBSell, 'GroupID', ' ê—ÊÂ ﬂ«·« ', 'ﬂœ', ftInteger, dvMinMax,
        '', '', ciLookup, 'SELECT  GroupID,GroupName FROM  StuffGroups ',
        'select Min(GroupID),Max(GroupID) From StuffGroups');
      AddItem(DMF.adcBSell, 'storeId', '«‰»«—', '‰«„ «‰»«—', ftInteger,
        dvDefaults, '', '', ciCombo,
        'SELECT  n_StoreID, c_StoreName FROM Stores', '');
      if ShowModal = mrOk then
      begin
        GetFilterString;
        UpdateList(0);
      end; // if
    finally
      Free;
    end; // try
  end; // with
end;

procedure TrptCountingItemsF.UpdateList(StoreID: Integer);
begin
  if formType <> 3 then
    with qryCountingItems do
    begin
      Active := False;
      Parameters.ParamByName('StoreID').Value :=
        GetcTo(myParams.ParamValues['storeId'], ftInteger);
      Parameters.ParamByName('GroupIDFrom').Value :=
        GetcFrom(myParams.ParamValues['GroupID'], ftInteger);
      Parameters.ParamByName('GroupIDTo').Value :=
        GetcTo(myParams.ParamValues['GroupID'], ftInteger);
    end
  else
    with qryCountingItems do
    begin
      Active := False;
      Parameters.ParamByName('StoreID').Value := StoreID;
      Parameters.ParamByName('GroupIDFrom').Value := 0;
      Parameters.ParamByName('GroupIDTo').Value := 2147483647;
    end;

  With qryCounting do
  begin
    Active := False;
    Parameters.ParamByName('CountDateFrom').Value := APPBank.StartYear;
    Parameters.ParamByName('CountDateTo').Value := APPBank.endYear;
    Active := True;
  end;

end;

procedure TrptCountingItemsF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  if formType <> 3 then
  begin
    actFilter.Execute;
    if myParams.FindParam('GroupID') = nil then
      Close;
  end;
end;

procedure TrptCountingItemsF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  QuickSearch(Key, qryCountingItemsStuffCode);
end;

end.
