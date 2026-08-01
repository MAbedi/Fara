{ -----------------------------------------------------------------------------
  Unit Name: rptCompare_Count_Entity
  Author:    Mahmood
  ----------------------------------------------------------------------------- }
unit rptCompare_Count_Entity;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DBCtrls, System.Math, ReciptsFunctions ,
  ppDB, ppDBPipe, ppComm, ppRelatv, ppProd, ppClass, ppReport, ppPrnabl,
  ppCtrls, ppCache, ppBands, ppVar, ppStrtch, ppMemo, ppModule,
  ppSubRpt, Menus, DB, ADODB, Mask, ComCtrls, DM, ppParameter,
  FarsiReportBuilde, ppDesignLayer, System.ImageList, System.Actions,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, CedarDbGrid;

type

  TrptCompare_Count_EntityF = class(Ttemplate2MDIF)
    SrcCounting: TDataSource;
    qryCounting: TADOQuery;
    qryCountingItems: TADOQuery;
    SrcCountingItems: TDataSource;
    PopMenu: TPopupMenu;
    ppDBPipeline1: TppDBPipeline;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn4: TBitBtn;
    DBNavigator2: TDBNavigator;
    BitBtn3: TBitBtn;
    StatusBar1: TStatusBar;
    actSendExel: TAction;
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
    qryCountingItemsc_StuffName: TStringField;
    qryCountingItemsStuffSize: TStringField;
    qryCountingItemsStuffDiameter: TFloatField;
    qryCountingItemsStuffAlloy: TStringField;
    qryCountingItemsStuffGrade: TWordField;
    qryCountingItemsControlCode: TLargeintField;
    BitBtn1: TBitBtn;
    qryCountingItemsUnitName: TStringField;
    ppHeaderBand1: TppHeaderBand;
    ppShape1: TppShape;
    ppLblCompanyName: TppLabel;
    ppLblCaption: TppLabel;
    ppLblPrintDate: TppLabel;
    ppLabel1: TppLabel;
    ppLabel3: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLine1: TppLine;
    ppSysVarPageNo: TppSystemVariable;
    ppDetailBand1: TppDetailBand;
    ppLine11: TppLine;
    ppLin4Position: TppLine;
    ppFooterBand1: TppFooterBand;
    ppShape2: TppShape;
    ppLabel4: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppSummaryBand1: TppSummaryBand;
    ppShape3: TppShape;
    ppDBCalc2: TppDBCalc;
    N11: TMenuItem;
    N21: TMenuItem;
    Panel4: TPanel;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label8: TLabel;
    LblReciptDate: TLabel;
    GroupBox2: TGroupBox;
    DBMemo1: TDBMemo;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    btnCountNumber: TBitBtn;
    DBEditDate: TDBEdit;
    DBNavigator1: TDBNavigator;
    GroupBox1: TGroupBox;
    LblRecNo: TLabel;
    mskNumberfrom4: TMaskEdit;
    GroupBox3: TGroupBox;
    Label3: TLabel;
    CmbEffectType2: TComboBox;
    mskNumberfrom2: TMaskEdit;
    CmbEffectType4: TComboBox;
    Panel5: TPanel;
    BitBtn15: TBitBtn;
    qryItems: TADOQuery;
    BitBtn2: TBitBtn;
    Label4: TLabel;
    qry1: TADOQuery;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    FloatField1: TFloatField;
    StringField4: TStringField;
    WordField1: TWordField;
    IntegerField2: TIntegerField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    FloatField5: TFloatField;
    FloatField6: TFloatField;
    FloatField7: TFloatField;
    FloatField8: TFloatField;
    FloatField9: TFloatField;
    BCDField1: TBCDField;
    FloatField10: TFloatField;
    FloatField11: TFloatField;
    FloatField12: TFloatField;
    BCDField2: TBCDField;
    FloatField13: TFloatField;
    FloatField14: TFloatField;
    FloatField15: TFloatField;
    FloatField16: TFloatField;
    FloatField17: TFloatField;
    qryCountingItemsc_StuffTecInfo: TStringField;
    qryCountingItemsStuffCode: TLargeintField;
    qryCountingCountingCalckind: TWordField;
    qryCountingItemsc_StoreName: TStringField;
    qryCountingItemsStoreID: TIntegerField;
    Panel6: TPanel;
    chkNoCountingItems: TCheckBox;
    dbrgrpCountingCalckind: TDBRadioGroup;
    DBGrid1: TCedarDbgrid;
    qryCountingItemsDifferTotallSellPrice: TFMTBCDField;
    qryCountingItemsPrice: TFMTBCDField;
    qryCountingItemsDifferPrice: TFMTBCDField;
    qryCountingItemsTotallSellPrice: TFMTBCDField;
    qryCountingItemsOtherPrice: TFMTBCDField;
    qryCountingItemsOtherTotallSellPrice: TFMTBCDField;
    qryCountingItemsSellPrice1: TFMTBCDField;
    qryCountingItemsCount1Entity: TFMTBCDField;
    qryCountingItemsCount1Weight: TFMTBCDField;
    qryCountingItemsCount2Entity: TFMTBCDField;
    qryCountingItemsCount2Weight: TFMTBCDField;
    qryCountingItemsCount3Entity: TFMTBCDField;
    qryCountingItemsCount3Weight: TFMTBCDField;
    qryCountingItemsEntity: TFMTBCDField;
    qryCountingItemsWeight: TFMTBCDField;
    qryCountingItemsDifferEntity: TFMTBCDField;
    qryCountingItemsDifferWeight: TFMTBCDField;
    qryCountingItemsOtherEntity: TFMTBCDField;
    qryCountingItemsOtherWeight: TFMTBCDField;
    procedure actSendExelExecute(Sender: TObject);
    procedure qryCountingAfterScroll(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure AllC_l_i_c_k_Click(Sender: TObject);
    procedure btnCountNumberClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure ppSysVarPageNoGetText(Sender: TObject; var Text: String);
    procedure ppLblPrintDateGetText(Sender: TObject; var Text: String);
    procedure CmbEffectType2Change(Sender: TObject);
    procedure BitBtn15Click(Sender: TObject);
    procedure qryItemsAfterInsert(DataSet: TDataSet);
    procedure BitBtn2Click(Sender: TObject);
    procedure chkNoCountingItemsClick(Sender: TObject);
  private
    { Private declarations }
    myStore: TStore;
    // procedure UpdateFilter;
  public
    { Public declarations }
  end;

var
  rptCompare_Count_EntityF: TrptCompare_Count_EntityF;

implementation

uses GlobalPro, searchCode_ADO, search2, sort2, SelectStore, DBGrid2Print,
  FormFunctions, mmessage, FaraConsts;

{$R *.dfm}

procedure TrptCompare_Count_EntityF.actSendExelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TrptCompare_Count_EntityF.qryCountingAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qryCountingItems do
  begin
    Active := False;
    Parameters.ParamByName('CountID').Value :=
      qryCounting.FieldByName('CountID').AsInteger;
    Parameters.ParamByName('Date').Value :=
      qryCounting.FieldByName('CountDate').AsString;
    // showQryParam(qryCountingItems);

    Parameters.ParamByName('chkNoCountingItems').Value :=
      ifthen(chkNoCountingItems.Checked, 1, 0);
    Active := True;
  end; // with
end;

procedure TrptCompare_Count_EntityF.FormCreate(Sender: TObject);
var
  i: Integer;
begin
  inherited;
  dbrgrpCountingCalckind.Items.Clear;
  for i := 0 to high(TCountingCalckind) do
    dbrgrpCountingCalckind.Items.Add(TCountingCalckind[i]);

  InitCombos(CmbEffectType2, 'SELECT ReciptType,ReciptCaption FROM ReciptTypes '
    + ' WHERE EffectType in(2,6) and ReciptType>3');
  InitCombos(CmbEffectType4, 'SELECT ReciptType,ReciptCaption FROM ReciptTypes '
    + ' WHERE EffectType in(4,7,8) and ReciptType>3');
  // setColumns2(DBGrid1, opt.ActiveSellPrice2, 'TotallSellPrice');
  // setColumns2(DBGrid1, opt.ActiveSellPrice2, 'DifferTotallSellPrice');
  // setColumns2(DBGrid1, opt.ActiveSellPrice2, 'OtherTotallSellPrice');

//  qryCountingItems.FieldByName('TotallSellPrice').Visible :=
//    opt.ActiveSellPrice2;
//  qryCountingItems.FieldByName('DifferTotallSellPrice').Visible :=
//    opt.ActiveSellPrice2;
//  qryCountingItems.FieldByName('OtherTotallSellPrice').Visible :=
//    opt.ActiveSellPrice2;
    HideOrShowSellPriceFields(qryCountingItems, DBGrid1);


  setColumns2(DBGrid1, opt.StuffTecInfoActive, 'c_StuffTecInfo');
  if opt.ActiveSellPrice2 then
  begin
    qryCountingItems.FieldByName('TotallSellPrice').Tag := 3;
    qryCountingItems.FieldByName('DifferTotallSellPrice').Tag := 3;
    qryCountingItems.FieldByName('OtherTotallSellPrice').Tag := 3;
  end;
  Entity_Weight(DBGrid1);
  SelectStoreF.GetStore(myStore, 'انبار', '', MyEntityDisplayType);
  with qryCountingItems do
  begin
    Active := False;
    Parameters.ParamByName('StoreID').Value := myStore.code;
    Parameters.ParamByName('YearIDFrom').Value := opt.DefaultYear;
    Parameters.ParamByName('YearIDTo').Value := APPBank.Year;
  end; // with
  With qryCounting do
  begin
    Active := False;
    Parameters.ParamByName('CountDateFrom').Value := APPBank.StartYear;
    Parameters.ParamByName('CountDateTo').Value := APPBank.endYear;
    Active := True;
  end;
end;

procedure TrptCompare_Count_EntityF.actPrintExecute(Sender: TObject);
begin
  inherited;
  PopMenu.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TrptCompare_Count_EntityF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName
end;

procedure TrptCompare_Count_EntityF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryCountingItems);
end;

procedure TrptCompare_Count_EntityF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryCountingItems);
end;

procedure TrptCompare_Count_EntityF.AllC_l_i_c_k_Click(Sender: TObject);
var
  s: String;
begin
  inherited;
  s := '';
  if (Sender as TMenuItem).Tag > 1 then
    s := IntToStr((Sender as TMenuItem).Tag);
  if opt.ActiveSellPrice2 then
    try
      qryCounting.DisableControls;
      qryCountingItems.DisableControls;
      InitReportFile(ppReport1, 'rptCompare_Count_ActiveSellPrice2', True);
      Exit;
    finally
      qryCounting.EnableControls;
      qryCountingItems.EnableControls;
    end; // try
  try
    qryCounting.DisableControls;
    qryCountingItems.DisableControls;
    InitReportFile(ppReport1, 'rptCompare_Count_Entity' + s);
  finally
    qryCounting.EnableControls;
    qryCountingItems.EnableControls;
  end; // try

end;

procedure TrptCompare_Count_EntityF.btnCountNumberClick(Sender: TObject);
var
  Txt: String;
  b: Boolean;
  Results: array [0 .. 3] of String;
begin
  inherited;
  Txt := 'SELECT CountID,CountNumber,CountDate,Note FROM Counting ';
  b := searchCode_ADOF.SearchCode2(DMF.adcBSell, ' اطلاعات  ', Txt,
    ['', 'شماره', 'تاريخ', 'توضیحات ضروری'], Results, [0, 50, 50, 200], alLeft);
  if b then
    qryCounting.Locate('CountID', Results[0], []);
end;

procedure TrptCompare_Count_EntityF.chkNoCountingItemsClick(Sender: TObject);
begin
  inherited;
  qryCountingAfterScroll(qryCounting)
end;

procedure TrptCompare_Count_EntityF.BitBtn1Click(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(DBGrid1, 0);
end;

procedure TrptCompare_Count_EntityF.ppSysVarPageNoGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TrptCompare_Count_EntityF.ppLblPrintDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TrptCompare_Count_EntityF.CmbEffectType2Change(Sender: TObject);
var
  Txt: String;
  formType: Byte;
begin
  inherited;
  FreeReservedCodes(DMF.adcBSell, '', '', Self.Name);
  formType := Integer((Sender as TComboBox).Items.Objects[(Sender as TComboBox)
    .ItemIndex]);
  Txt := 'SELECT MAX(ReciptNumber)FROM Recipts WHERE(ReciptType=' +
    IntToStr(formType) + ')';
  Txt := Txt + 'AND(StoreID=' + IntToStr(myStore.code) + ')';
  case (Sender as TComboBox).Tag of
    2:
      mskNumberfrom2.Text :=
        IntToStr(GetANewCode(Self.Name, Txt, 'ReciptNumber'));
    4:
      mskNumberfrom4.Text :=
        IntToStr(GetANewCode(Self.Name, Txt, 'ReciptNumber'));
  end;
end;

procedure TrptCompare_Count_EntityF.BitBtn15Click(Sender: TObject);
var
  IOEntity: String;
  ReciptID: Integer;
  Total, Weight, Entity: Currency;
  SellPrice: Real;
begin
  inherited;
  if ((CmbEffectType2.ItemIndex = -1) or (CmbEffectType4.ItemIndex = -1)) then
  begin
    Warn('فرم ورود /خروج را مشخص كنيد!!‏');
    Exit;
  end;
  try
    With qryCountingItems do
    begin
      Filter := 'OtherEntity<>0';
      Filtered := True;
      if RecordCount = 0 then
      begin
        Warn('موردي براي ثبت وجود ندارد.‏');
        Exit;
      end;
    end;
    With DMF.qryTmpTmp do
    begin
      Active := False;
      SQL.Text := 'SELECT MAX(ReciptID)+1 FROM Recipts ';
      Active := True;
      mskNumberfrom2.Tag := Fields[0].AsInteger;
      Active := False;
      SQL.Text := 'INSERT INTO Recipts(ReciptID,ModifyDate,OperatorID';
      SQL.Add(',ReciptType,PersonID1,PersonID2,PersonID3,PersonID4,StoreID,ReciptDate,ReciptNumber,UseOtherID,YearID,ServerID)');
      SQL.Add('VALUES (' + IntToStr(mskNumberfrom2.Tag) + ', GETDATE(), ' +
        IntToStr(User.id) + ', ' + IntToStr(Integer(CmbEffectType2.Items.Objects
        [CmbEffectType2.ItemIndex])) + ', 0,0,0,0, ' + IntToStr(myStore.code) +
        ',''' + qryCounting.FieldByName('CountDate').AsString + ''',' +
        trim(mskNumberfrom2.Text) + ',0,' + IntToStr(APPBank.Year) + ',' +
        IntToStr(opt.ServerID) + ')');
      ExecSQL;
      Active := False;
      SQL.Text := 'SELECT MAX(ReciptID)+1 FROM Recipts ';
      Active := True;
      mskNumberfrom4.Tag := Fields[0].AsInteger;
      Active := False;
      SQL.Text := 'INSERT INTO Recipts (ReciptID,ModifyDate,OperatorID';
      SQL.Add(',ReciptType,PersonID1,PersonID2,PersonID3,PersonID4,StoreID,ReciptDate,ReciptNumber,UseOtherID,YearID,ServerID)');
      SQL.Add('VALUES (' + IntToStr(mskNumberfrom4.Tag) + ', GETDATE(), ' +
        IntToStr(User.id) + ', ' + IntToStr(Integer(CmbEffectType4.Items.Objects
        [CmbEffectType4.ItemIndex])) + ', 0,0,0,0, ' + IntToStr(myStore.code) +
        ',''' + qryCounting.FieldByName('CountDate').AsString + ''',' +
        trim(mskNumberfrom4.Text) + ',0,' + IntToStr(APPBank.Year) + ',' +
        IntToStr(opt.ServerID) + ')');
      ExecSQL;
      Active := False;
    end;
    With qryCountingItems do
    begin
      DisableControls;
      First;
      BigMessageProgBar('در حال ثبت فرمها ', RecordCount);
      qryItems.Active := True;
      while not Eof do
      begin
        qryItems.Insert;
        IOEntity := 'Input';
        ReciptID := mskNumberfrom2.Tag;
        if FieldByName('OtherEntity').AsFloat < 0 then
        begin
          IOEntity := 'Output';
          ReciptID := mskNumberfrom4.Tag;
        end;
        qryItems.FieldByName('StuffCode').AsLargeInt := FieldByName('StuffCode')
          .AsLargeInt;
        qryItems.FieldByName('ReciptID').Value := ReciptID;
        qryItems.FieldByName(IOEntity + 'Entity').AsCurrency :=
          abs(FieldByName('OtherEntity').AsCurrency);
        qryItems.FieldByName(IOEntity + 'Weight').AsFloat :=
          abs(FieldByName('OtherWeight').AsFloat);
        qryItems.FieldByName('Total' + IOEntity + 'Price').AsCurrency :=
          abs(FieldByName('OtherPrice').AsCurrency);

        // UnitSellPrice _________________________________________________
        Total := qryItems.FieldByName('Total' + IOEntity + 'Price').AsCurrency;
        Entity := qryItems.FieldByName(IOEntity + 'Entity').AsFloat;
        Weight := qryItems.FieldByName(IOEntity + 'Weight').AsFloat;
        case MyEntityDisplayType of
          0:
            SellPrice := Total / Entity;
          1:
            SellPrice := Total / Weight;
          2:
            if Total >= opt.LowerLimit1 * Entity then
              SellPrice := Total / Weight
            else
              SellPrice := Total / Entity;
        else
          if Total >= opt.LowerLimit1 * Weight then
            SellPrice := Total / Entity
          else
            SellPrice := Total / Weight;
        end;
        qryItems.FieldByName('UnitSellPrice').AsCurrency := SellPrice;
        // UnitSellPrice _________________________________________________

        qryItems.FieldByName('TotallSellPrice').AsCurrency :=
          abs(FieldByName('OtherTotallSellPrice').AsCurrency);
        if opt.AidInfoAvailable then
        begin
          qryItems.FieldByName('StuffSize').AsString :=
            FieldByName('StuffSize').AsString;
          qryItems.FieldByName('StuffDiameter').AsFloat :=
            FieldByName('StuffDiameter').AsFloat;
          qryItems.FieldByName('StuffAlloy').AsString :=
            FieldByName('StuffAlloy').AsString;
          qryItems.FieldByName('StuffGrade').AsInteger :=
            FieldByName('StuffGrade').AsInteger;
        end;
        qryItems.FieldByName('ControlCode').AsFloat :=
          FieldByName('ControlCode').AsFloat;
        // qryItems.FieldByName('StuffGrade').Value:=FieldByName('StuffGrade').Value;
        qryItems.Post;
        GoProgressBar(qryCountingItemsStuffCode.AsString);
        Next;
      end;
    end;
  finally
    qryCountingItems.EnableControls;
    CloseMessage;
    FreeReservedCodes(DMF.adcBSell, '', '', Self.Name);
    qryItems.Active := False;
    qryCountingItems.Filter := '';
    qryCountingItems.Requery();
  end

end;

procedure TrptCompare_Count_EntityF.qryItemsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  GetANewID(DataSet, Self.Name, 'ReciptItems', 'ReciptItemID', nil, 1);
end;

procedure TrptCompare_Count_EntityF.BitBtn2Click(Sender: TObject);
begin
  inherited;
  Panel4.Visible := not Panel4.Visible;
end;

end.
