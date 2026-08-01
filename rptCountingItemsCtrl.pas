{ -----------------------------------------------------------------------------
  Unit Name: rptCustomerTrancItems
  Author:    Mahmood
  ----------------------------------------------------------------------------- }
unit rptCountingItemsCtrl;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DBCtrls, Grids, Vcl.DBGrids, Filter_ADO_Const ,
  ppDB, ppDBPipe, ppComm, ppRelatv, ppProd, ppClass, ppReport, ppPrnabl,
  ppCtrls, ppCache, ppBands, ppVar, ppStrtch, ppMemo, ppModule,
  ppSubRpt, Menus, DB, ADODB, Mask, ComCtrls, DM, SumDBGrid, ppParameter, FarsiReportBuilde,
  ppDesignLayer, System.ImageList, System.Actions;

type
  TrptCountingItemsCtrlF = class(Ttemplate2MDIF)
    SrcCounting: TDataSource;
    qryCounting: TADOQuery;
    qryCountingItems: TADOQuery;
    SrcCountingItems: TDataSource;
    PopMenu: TPopupMenu;
    rptCountingItemsCtrl2: TMenuItem;
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
    rptCountingItemsCtrl1: TMenuItem;
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
    rptCountingItemsCtrl3: TMenuItem;
    qryCountingItemsCountID: TIntegerField;
    qryCountingItemsc_StuffTecInfo: TStringField;
    qryCountingItemsUnitName: TStringField;
    qryCountingItemssd1: TStringField;
    qryCountingItemsc_KeepPlace: TStringField;
    qryCountingItemsCount1Entity: TFMTBCDField;
    qryCountingItemsCount1Weight: TFMTBCDField;
    qryCountingItemsCount2Entity: TFMTBCDField;
    qryCountingItemsCount2Weight: TFMTBCDField;
    qryCountingItemsCount3Entity: TFMTBCDField;
    qryCountingItemsCount3Weight: TFMTBCDField;
    qryCountingItemsEntity: TFMTBCDField;
    qryCountingItemsWeight: TFMTBCDField;
    qryCountingItemsDif_1_Entity: TFMTBCDField;
    qryCountingItemsDif_1_Weight: TFMTBCDField;
    qryCountingItemsOtherEntity: TFMTBCDField;
    qryCountingItemsOtherWeight: TFMTBCDField;
    qryCountingItemsDifferWeight: TFMTBCDField;
    qryCountingItemsDifferEntity: TFMTBCDField;
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
    procedure rptCountingItemsCtrl1Click(Sender: TObject);
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
    procedure UpdateList;
  public
    { Public declarations }
  end;

var
  rptCountingItemsCtrlF: TrptCountingItemsCtrlF;

implementation

uses filter_ADO, FilterClass_ADO, GlobalPro, searchCode_ADO, search2, sort2,
  DBGrid2Print;

{$R *.dfm}

procedure TrptCountingItemsCtrlF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 6);
end;

procedure TrptCountingItemsCtrlF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
end;

procedure TrptCountingItemsCtrlF.actSendExelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TrptCountingItemsCtrlF.qryCountingAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qryCountingItems do
  begin
    Active := False;
    Parameters.ParamByName('CountID').Value :=
      qryCounting.FieldByName('CountID').AsInteger;
    Parameters.ParamByName('CountID0').Value :=
      qryCounting.FieldByName('CountID').AsInteger;
    Parameters.ParamByName('Date').Value := qryCountingCountDate.AsString;
    Parameters.ParamByName('Date2').Value := qryCountingCountDate.AsString;
    Parameters.ParamByName('Date3').Value := qryCountingCountDate.AsString;
    Active := True;
  end; // with
end;

procedure TrptCountingItemsCtrlF.FormCreate(Sender: TObject);
begin
  inherited;
  Entity_Weight(DBGrid1);
end;

procedure TrptCountingItemsCtrlF.DBGrid1DrawColumnCell(Sender: TObject;
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

procedure TrptCountingItemsCtrlF.actPrintExecute(Sender: TObject);
begin
  inherited;
  PopMenu.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TrptCountingItemsCtrlF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName
end;

procedure TrptCountingItemsCtrlF.ppLblDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := LblLimit.Caption
end;

procedure TrptCountingItemsCtrlF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryCountingItems);
end;

procedure TrptCountingItemsCtrlF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryCountingItems);
end;

procedure TrptCountingItemsCtrlF.rptCountingItemsCtrl1Click(Sender: TObject);
begin
  inherited;
  try
    qryCounting.DisableControls;
    qryCountingItems.DisableControls;
    case (Sender as TMenuItem).Tag of
      0:
        begin
          qryCountingItems.Filter := '';
          qryCountingItems.Filtered := False;
        end;
      1:
        begin
          qryCountingItems.Filter := 'Dif_1_Entity<>0';
          qryCountingItems.Filtered := True;
        end;
      2:
        begin
          qryCountingItems.Filter := 'OtherEntity<>0';
          qryCountingItems.Filtered := True;
        end;

    end;

    InitReportFile(ppReport1, (Sender as TMenuItem).Name, True);
  finally
    qryCounting.EnableControls;
    qryCountingItems.EnableControls;
  end;

end;

procedure TrptCountingItemsCtrlF.btnCountNumberClick(Sender: TObject);
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

procedure TrptCountingItemsCtrlF.ppSysVarPageNoGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TrptCountingItemsCtrlF.actPrintVijehExecute(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(DBGrid1, 0);
end;

procedure TrptCountingItemsCtrlF.ppLblCaptionGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := Caption;
end;

procedure TrptCountingItemsCtrlF.ppLblPrintDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TrptCountingItemsCtrlF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      AddItem(DMF.adcBSell, 'ReciptID', '‘„«—‰œÂ', '‘„«—‰œÂ', ftInteger,
        dvMinMax, '', '', ciSimple, '',
        'Select min(ReciptID),max(ReciptID) from CountingItems ');

      AddItemFilter(GetFilter, TFilterControlCode);


      // AddItem(DMF.adcBSell, 'GroupID', ' ê—ÊÂ ﬂ«·« ', 'ﬂœ', ftInteger, dvMinMax,
      // '', '', ciLookup, 'SELECT  GroupID,GroupName FROM  StuffGroups ',
      // 'select Min(GroupID),Max(GroupID) From StuffGroups');
      AddItem(DMF.adcBSell, 'storeId', '«‰»«—', '‰«„ «‰»«—', ftInteger,
        dvDefaults, '', '', ciCombo,
        'SELECT  n_StoreID, c_StoreName FROM Stores', '');
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

procedure TrptCountingItemsCtrlF.UpdateList;
begin
  with qryCountingItems do
  begin
    Active := False;
    Parameters.ParamByName('StoreID').Value :=
      GetcTo(myParams.ParamValues['storeId'], ftInteger);
    // Parameters.ParamByName('GroupIDFrom').Value :=
    // GetcFrom(myParams.ParamValues['GroupID'], ftInteger);
    // Parameters.ParamByName('GroupIDTo').Value :=
    // GetcTo(myParams.ParamValues['GroupID'], ftInteger);

    Parameters.ParamByName('ReciptIDFrom').Value :=
      GetcFrom(myParams.ParamValues['ReciptID'], ftInteger);
    Parameters.ParamByName('ReciptIDTo').Value :=
      GetcTo(myParams.ParamValues['ReciptID'], ftInteger);

    Parameters.ParamByName('ControlCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['ControlCode'], ftLargeint);
    Parameters.ParamByName('ControlCodeTo').Value :=
      GetcTo(myParams.ParamValues['ControlCode'], ftLargeint);

    Parameters.ParamByName('YearIDFrom').Value := APPBank.Year;
    Parameters.ParamByName('YearIDTo').Value := APPBank.Year;
    Parameters.ParamByName('YearID2From').Value := APPBank.Year;
    Parameters.ParamByName('YearID2To').Value := APPBank.Year;
    Parameters.ParamByName('YearID3From').Value := APPBank.Year;
    Parameters.ParamByName('YearID3To').Value := APPBank.Year;

  end;

  With qryCounting do
  begin
    Active := False;
    Parameters.ParamByName('CountDateFrom').Value := APPBank.StartYear;
    Parameters.ParamByName('CountDateTo').Value := APPBank.endYear;
    Active := True;
  end;

end;

procedure TrptCountingItemsCtrlF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  actFilter.Execute;
  if myParams.FindParam('storeId') = nil then
    Close;
end;

procedure TrptCountingItemsCtrlF.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  QuickSearch(Key, qryCountingItemsStuffCode);
end;

end.
