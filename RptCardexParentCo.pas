{ -----------------------------------------------------------------------------
  Unit Name: RptCardexParentCo
  Author:    Ghaderi
  ----------------------------------------------------------------------------- }

unit RptCardexParentCo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, StdCtrls, ComCtrls, Grids, Vcl.DBGrids, ImgList, Math,
  DBActns, ActnList, ExtCtrls, Buttons, DB, ADODB, DBCtrls, ppBands,
  ppClass, ppCtrls, ppReport, ppStrtch, ppSubRpt, ppVar, ppPrnabl, ppCache,
  ppProd, ppComm, ppRelatv, ppDB, ppDBPipe, Menus,
  ppMemo, ppModule, ppTypes, SumDBGrid, ppParameter, Filter_ADO_Const,
  ppDesignLayer, System.ImageList, System.Actions;

type
  TRptCardexParentCoF = class(Ttemplate2MDIF)
    Label1: TLabel;
    cmbStore: TComboBox;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    CheckAllStore: TCheckBox;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    Panel1: TPanel;
    BtnShow: TButton;
    Button2: TButton;
    Button3: TButton;
    qryOutPut: TADOQuery;
    srcOutPut: TDataSource;
    qryInput: TADOQuery;
    srcInput: TDataSource;
    actFilter: TAction;
    qryStore: TADOQuery;
    qryStoreStoreID: TSmallintField;
    qryStorec_StoreName: TStringField;
    actShow: TAction;
    actExcel: TAction;
    actSort: TAction;
    actPrint: TAction;
    BitBtn2: TBitBtn;
    ppDBPipeline2: TppDBPipeline;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppShape1: TppShape;
    ppLblCompanyName: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel5: TppLabel;
    ppLine1: TppLine;
    ppLabel6: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel12: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLine3: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine13: TppLine;
    ppLine16: TppLine;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDetailBand1: TppDetailBand;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppDetailBand2: TppDetailBand;
    ppDBText19: TppDBText;
    ppLine39: TppLine;
    ppLine40: TppLine;
    ppLine41: TppLine;
    ppLine56: TppLine;
    ppLine58: TppLine;
    ppLine43: TppLine;
    ppLine55: TppLine;
    ppLine51: TppLine;
    ppDBText28: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppShape2: TppShape;
    ppDBCalc7: TppDBCalc;
    ppLine49: TppLine;
    ppLabel4: TppLabel;
    ppLine50: TppLine;
    ppFooterBand1: TppFooterBand;
    ppLine2: TppLine;
    ppLabel1: TppLabel;
    ppLabel11: TppLabel;
    ppLabel13: TppLabel;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppLabel14: TppLabel;
    ppLabel20: TppLabel;
    ppLabel27: TppLabel;
    ppDBText4: TppDBText;
    ppDBText9: TppDBText;
    ppDBText11: TppDBText;
    ppLine4: TppLine;
    ppLabel7: TppLabel;
    ppLine10: TppLine;
    ppLabel28: TppLabel;
    ppLine11: TppLine;
    ppLabel29: TppLabel;
    ppLine12: TppLine;
    ppLabel30: TppLabel;
    ppLine14: TppLine;
    ppLabel31: TppLabel;
    PopMenu: TPopupMenu;
    AllC_l_i_c_k_: TMenuItem;
    DetailNote: TMenuItem;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLine5: TppLine;
    ppDBText12: TppDBText;
    ppLine6: TppLine;
    ppLine15: TppLine;
    ppDBText14: TppDBText;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppDBText22: TppDBText;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppLine21: TppLine;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppDBCalc2: TppDBCalc;
    ppLabel8: TppLabel;
    ppDBText23: TppDBText;
    ppLine24: TppLine;
    ppLabel22: TppLabel;
    ppLine25: TppLine;
    ppDBText26: TppDBText;
    ppLine26: TppLine;
    ppDBCalc5: TppDBCalc;
    ppLine27: TppLine;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    SumGrid1: TSumGrid;
    qryInputReciptID: TIntegerField;
    qryInputStuffCode: TLargeintField;
    qryInputc_StuffName: TStringField;
    qryInputUnitName: TStringField;
    qryInputTransFormID: TIntegerField;
    qryInputInputEntity: TFloatField;
    qryInputUnitSellPrice: TFMTBCDField;
    qryInputTotallSellPrice: TBCDField;
    qryInputArticle: TBCDField;
    qryInputWage: TBCDField;
    qryInputScoria: TBCDField;
    qryInputReciptNumber: TIntegerField;
    qryInputReciptDate: TStringField;
    qryInputReciptCaption: TStringField;
    qryInputServerID: TIntegerField;
    qryInputYearID: TIntegerField;
    qryOutPutStuffCode: TLargeintField;
    qryOutPutc_StuffName: TStringField;
    qryOutPutUnitName: TStringField;
    qryOutPutOutputEntity: TFloatField;
    qryOutPutUnitSellPrice: TFMTBCDField;
    qryOutPutTotalOutputPrice: TBCDField;
    qryOutPutReciptNumber: TIntegerField;
    qryOutPutReciptDate: TStringField;
    qryOutPutReciptCaption: TStringField;
    qryOutPutReciptID: TIntegerField;
    qryOutPutServerID: TIntegerField;
    qryOutPutYearID: TIntegerField;
    qryOutPutTransFormID: TIntegerField;
    qryOutPutShareEntity: TFloatField;
    qryOutPutSharePrice: TFloatField;
    qryInputTransFormNo: TIntegerField;
    procedure actFilterExecute(Sender: TObject);
    procedure cmbStoreClick(Sender: TObject);
    procedure qryInputAfterScroll(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure BtnShowClick(Sender: TObject);
    procedure actShowExecute(Sender: TObject);
    procedure CheckAllStoreClick(Sender: TObject);
    procedure actExcelExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure actPrintExecute(Sender: TObject);
    procedure AllC_l_i_c_k_Click(Sender: TObject);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure ppSystemVariable1GetText(Sender: TObject; var Text: String);
    procedure ppLabel3GetText(Sender: TObject; var Text: String);
    procedure ppLabel6GetText(Sender: TObject; var Text: String);
  private
    procedure UpdateList;
    procedure initCombo;
    { Private declarations }
  public
    { Public declarations }
    procedure Enter(qry: TADOQuery);
  end;

var
  RptCardexParentCoF: TRptCardexParentCoF;

implementation

uses DM, filter_ADO, FilterClass_ADO, GlobalPro, search2, sort2, FormFunctions,
  main, FaraConsts;

{$R *.dfm}

procedure TRptCardexParentCoF.Enter;
begin
  try
    Var_glb_NoFilter := True;
    CreateMDIForm2(TRptCardexParentCoF, RptCardexParentCoF, mainf);
    RptCardexParentCoF.cmbStore.ItemIndex :=
      RptCardexParentCoF.cmbStore.Items.IndexOfObject
      (TObject(qry.FieldByName('StoreID').AsInteger));
    RptCardexParentCoF.cmbStoreClick(RptCardexParentCoF.cmbStore);
    if (RptCardexParentCoF.qryInput.Active) then
      if (not RptCardexParentCoF.qryInput.Locate('StuffCode',
        qry.FieldByName('StuffCode').AsLargeInt, [loCaseInsensitive,
        loPartialKey])) then
        Warn('ﬂ«·«Ì „Ê—œ ‰Ÿ— Ì«›  ‰‘œ');
  finally
    Var_glb_NoFilter := False;
  end;
end;

procedure TRptCardexParentCoF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      AddItem(DMf.adcBSell, 'ReciptNumber', '›—„ ', '‘„«—Â', ftInteger,
        dvMinMax, '', '', ciSimple, '',
        'select Min(ReciptNumber),Max(ReciptNumber) From Recipts');
      AddItem(DMf.adcBSell, 'Date', ' «—ÌŒ  ', ' «—ÌŒ', ftDate, dvMinMax, '',
        '', ciSimple, '', 'Select  ''' + APPBank.StartYear +
        ''',max(ReciptDate) from Recipts');

      AddItemFilter(GetFilter, TFilterStuffCode);
      // AddItem(DMf.adcBSell, 'StuffCode', 'ﬂ«·«', 'ﬂœ ﬂ«·«', ftLargeint,
      // dvMinMax, '', '', ciLookup,
      // 'SELECT c_StuffCode, c_StuffName from StuffCoding ',
      // 'Select Min(c_StuffCode),max(c_StuffCode) from StuffCoding');

      AddItem(DMf.adcBSell, 'store', '«‰»«—', 'ﬂœ «‰»«—', ftInteger, dvMinMax,
        '', '', ciLookup, LookupSQL4Store, MinMaxSQL4Store);
      if ((Var_glb_NoFilter) Or (ShowModal = mrOk)) then
      begin
        GetFilterString;
        UpdateList;
      end; // if
    finally
      Free;
    end; // try
  end; // with

end;

procedure TRptCardexParentCoF.UpdateList;
begin
  with qryInput do
  begin
    Active := False;
    Parameters.ParamByName('ReciptNumberFrom').Value :=
      GetcFrom(myParams.ParamValues['ReciptNumber'], ftInteger);
    Parameters.ParamByName('ReciptNumberTo').Value :=
      GetcTo(myParams.ParamValues['ReciptNumber'], ftInteger);
    Parameters.ParamByName('DateFrom').Value :=
      GetcFrom(myParams.ParamValues['Date'], ftDate);
    Parameters.ParamByName('DateTo').Value :=
      GetcTo(myParams.ParamValues['Date'], ftDate);
    Parameters.ParamByName('StuffCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['StuffCode'], ftLargeint);
    Parameters.ParamByName('StuffCodeTo').Value :=
      GetcTo(myParams.ParamValues['StuffCode'], ftLargeint);
  end;
  with qryOutPut do
  begin
    Active := False;
    Parameters.ParamByName('DateFrom').Value :=
      GetcFrom(myParams.ParamValues['Date'], ftDate);
    Parameters.ParamByName('DateTo').Value :=
      GetcTo(myParams.ParamValues['Date'], ftDate);
    Parameters.ParamByName('StuffCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['StuffCode'], ftLargeint);
    Parameters.ParamByName('StuffCodeTo').Value :=
      GetcTo(myParams.ParamValues['StuffCode'], ftLargeint);
  end;
  initCombo;
end;

procedure TRptCardexParentCoF.initCombo;
begin
  with qryStore do
  begin
    Active := False;
    Parameters.ParamByName('StoreIdFrom').Value :=
      GetcFrom(myParams.ParamValues['store'], ftInteger);
    Parameters.ParamByName('StoreIdTo').Value :=
      GetcTo(myParams.ParamValues['store'], ftInteger);
    Parameters.ParamByName('DateFrom').Value :=
      GetcFrom(myParams.ParamValues['Date'], ftDate);
    Parameters.ParamByName('DateTo').Value :=
      GetcTo(myParams.ParamValues['Date'], ftDate);
    Parameters.ParamByName('UserID').Value := User.id;
    Parameters.ParamByName('UserIDAdmin').Value :=
      ifthen(User.PowerUser, 127, User.id);
    Active := True;
    cmbStore.Clear;
    while not Eof do
    begin
      cmbStore.AddItem(FieldByName('c_StoreName').AsString,
        TObject(FieldByName('storeid').AsInteger));
      next;
    end;
    cmbStore.ItemIndex := 0;
    cmbStoreClick(cmbStore);
  end;

end;

procedure TRptCardexParentCoF.cmbStoreClick(Sender: TObject);
begin
  inherited;
  if cmbStore.ItemIndex = -1 then
    exit;
  With qryOutPut do
  begin
    Active := False;
    Parameters.ParamByName('StoreFrom').Value := -32767;
    // Integer(cmbStore.Items.Objects[cmbStore.ItemIndex]);
    Parameters.ParamByName('StoreTo').Value := 32767
    // Integer(cmbStore.Items.Objects[cmbStore.ItemIndex]);
  end; // with

  With qryInput do
  begin
    Active := False;
    Parameters.ParamByName('StoreFrom').Value :=
      Integer(cmbStore.Items.Objects[cmbStore.ItemIndex]);
    Parameters.ParamByName('StoreTo').Value :=
      Integer(cmbStore.Items.Objects[cmbStore.ItemIndex]);
    Active := True;
  end; // with

end;

procedure TRptCardexParentCoF.qryInputAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qryOutPut do
  begin
    Active := False;
    Parameters.ParamByName('ParentCoReciptID').Value :=
      DataSet.FieldByName('ReciptID').AsInteger;
    Parameters.ParamByName('TransFormID').Value :=
      DataSet.FieldByName('TransFormID').AsInteger;
    Parameters.ParamByName('StoreFrom').Value := -32767;
    // qryInput.Parameters.ParamByName      ('StoreFrom').Value;
    Parameters.ParamByName('StoreTo').Value := 32767;
    // qryInput.Parameters.ParamByName               ('StoreTo').Value;
    Parameters.ParamByName('InputEntity1').Value :=
      DataSet.FieldByName('InputEntity').AsFloat;
    Parameters.ParamByName('InputEntity2').Value :=
      DataSet.FieldByName('InputEntity').AsFloat;
    Active := True;
  end;
end;

procedure TRptCardexParentCoF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  actFilter.Execute;
  if myParams.FindParam('Date') = nil then
    close;
end;

procedure TRptCardexParentCoF.BtnShowClick(Sender: TObject);
begin
  inherited;
  ShowReciptTypes(qryInput, Self);
end;

procedure TRptCardexParentCoF.actShowExecute(Sender: TObject);
begin
  inherited;
  ShowReciptTypes(qryOutPut, Self)
end;

procedure TRptCardexParentCoF.CheckAllStoreClick(Sender: TObject);
begin
  inherited;
  if CheckAllStore.Checked then
  begin
    With qryInput do
    begin
      Active := False;
      Parameters.ParamByName('StoreFrom').Value :=
        GetcFrom(myParams.ParamValues['store'], ftInteger);
      Parameters.ParamByName('StoreTo').Value :=
        GetcTo(myParams.ParamValues['store'], ftInteger);
      Active := True;
    end; // with
  end
  else
  begin
    With qryInput do
    begin
      Active := False;
      Parameters.ParamByName('StoreFrom').Value :=
        Integer(cmbStore.Items.Objects[cmbStore.ItemIndex]);
      Parameters.ParamByName('StoreTo').Value :=
        Integer(cmbStore.Items.Objects[cmbStore.ItemIndex]);
      Active := True;
    end; // with
  end;

end;

procedure TRptCardexParentCoF.actExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid2);
end;

procedure TRptCardexParentCoF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryOutPut);
end;

procedure TRptCardexParentCoF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryOutPut);
end;

procedure TRptCardexParentCoF.Button2Click(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryInput);
end;

procedure TRptCardexParentCoF.Button3Click(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryInput);
end;

procedure TRptCardexParentCoF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 0, True);
  SetColSize(DBGrid2, 1, True);
end;

procedure TRptCardexParentCoF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
  SaveColWidth(DBGrid2);
end;

procedure TRptCardexParentCoF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  QuickSearch(Key, qryInput.FieldByName(opt.SearchCode));
end;

procedure TRptCardexParentCoF.actPrintExecute(Sender: TObject);
begin
  inherited;
  PopMenu.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TRptCardexParentCoF.AllC_l_i_c_k_Click(Sender: TObject);
begin
  inherited;
  case (Sender as TMenuItem).Tag of
    0:
      begin
        ppDBPipeline2.RangeBegin := rbCurrentRecord;
        ppDBPipeline2.RangeEnd := reCurrentRecord;
      end;
    1:
      begin
        ppDBPipeline2.RangeBegin := rbFirstRecord;
        ppDBPipeline2.RangeEnd := reLastRecord;
      end;
  end;

  try
    qryInput.DisableControls;
    qryOutPut.DisableControls;
    InitReportFile(ppReport1, 'RptCardexParentCo');
  finally
    qryInput.EnableControls;
    qryOutPut.EnableControls;
  end; // try
end;

procedure TRptCardexParentCoF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName
end;

procedure TRptCardexParentCoF.ppSystemVariable1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TRptCardexParentCoF.ppLabel3GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate
end;

procedure TRptCardexParentCoF.ppLabel6GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  with qryInput.Parameters do
  begin
    Text := '«“  «—ÌŒ ' + ParamByName('DateFrom').Value + '  « ' +
      ParamByName('DateTo').Value;
  end;
end;

end.
