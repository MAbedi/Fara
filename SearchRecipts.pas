{ -----------------------------------------------------------------------------
  Unit Name: SearchDocs
  Author:    Mostafa
  ----------------------------------------------------------------------------- }

unit SearchRecipts;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, Mask, ADODB, Grids, Vcl.DBGrids, DBCtrls, ppDB,
  ppDBPipe, ppComm, ppRelatv, ppProd, ppClass, ppReport, ppCtrls, ppPrnabl,
  ppBands, ppCache, ppVar, SumDBGrid, Tabs, ppParameter, ppDesignLayer,
  System.ImageList, System.Actions;

type
  TSearchReciptsF = class(Ttemplate2MDIF)
    qrySearchRecipts: TADOQuery;
    Panel4: TPanel;
    DBGrid1: TDBGrid;
    dsSearchRecipts: TDataSource;
    actFilter: TAction;
    BitBtn1: TBitBtn;
    actShowDoc: TAction;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    actSendToExcel: TAction;
    actSort: TAction;
    actPrint: TAction;
    BitBtn6: TBitBtn;
    ppReport1: TppReport;
    ppDBPipeline1: TppDBPipeline;
    BitBtn9: TBitBtn;
    actSpecial: TAction;
    SumGrid1: TSumGrid;
    qrySearchReciptsReciptID: TIntegerField;
    qrySearchReciptsReciptNumber: TIntegerField;
    qrySearchReciptsReciptDate: TStringField;
    qrySearchReciptsReciptType: TIntegerField;
    qrySearchReciptsPersonID1: TIntegerField;
    qrySearchReciptsCustName: TStringField;
    qrySearchReciptsReciptCaption: TStringField;
    qrySearchReciptsStuffCode: TLargeintField;
    qrySearchReciptsc_StuffName: TStringField;
    qrySearchReciptsUnitName: TStringField;
    qrySearchReciptsentity: TFloatField;
    qrySearchReciptsweight: TFloatField;
    qrySearchReciptsPrice: TBCDField;
    qrySearchReciptsUnitSellPrice: TFMTBCDField;
    qrySearchReciptsc_StoreName: TStringField;
    qrySearchReciptsItemNote: TStringField;
    qrySearchReciptsStuffDiameter: TFloatField;
    qrySearchReciptsStuffSize: TStringField;
    qrySearchReciptsServerID: TIntegerField;
    qrySearchReciptsYearID: TIntegerField;
    ppHeaderBand1: TppHeaderBand;
    ppFooterBand1: TppFooterBand;
    btnDef: TBitBtn;
    qrySearchReciptsReciptNote: TStringField;
    qrySearchReciptsStoreID: TSmallintField;
    spl1: TSplitter;
    qrySearchReciptsc_StuffTecInfo: TStringField;
    qrySearchReciptsPersonID2: TIntegerField;
    qrySearchReciptsCustName2: TStringField;
    qrySearchReciptsPersonID3: TIntegerField;
    qrySearchReciptsCustName3: TStringField;
    qrySearchReciptsUseUnitID: TIntegerField;
    qrySearchReciptsUseUnitName: TStringField;
    qrySearchReciptsControlCode: TLargeintField;
    qrySearchReciptsDocdate: TStringField;
    qrySearchReciptsDocNo: TIntegerField;
    scrlbxRight: TScrollBox;
    grp1: TGroupBox;
    lbl7: TLabel;
    lbl8: TLabel;
    mskFromValue: TMaskEdit;
    mskToValue: TMaskEdit;
    grp2: TGroupBox;
    lbl9: TLabel;
    mskFromNote: TMaskEdit;
    mskToNote: TMaskEdit;
    cmbNote: TComboBox;
    cmbFields: TComboBox;
    grp3: TGroupBox;
    lbl10: TLabel;
    lbl11: TLabel;
    mskFromReciptNumber: TMaskEdit;
    mskToReciptNumber: TMaskEdit;
    cmbReciptNumber: TComboBox;
    grp4: TGroupBox;
    lbl12: TLabel;
    lbl13: TLabel;
    btn1: TSpeedButton;
    btn2: TSpeedButton;
    mskStuffCodeFrom: TMaskEdit;
    mskStuffCodeTo: TMaskEdit;
    cmbStuffCode: TComboBox;
    grp5: TGroupBox;
    lbl14: TLabel;
    lbl15: TLabel;
    btnPerson1_1: TSpeedButton;
    btnPerson1_2: TSpeedButton;
    mskPersonID1From: TMaskEdit;
    mskPersonID1To: TMaskEdit;
    cmbPersonID1: TComboBox;
    grpYear: TGroupBox;
    lbl16: TLabel;
    lbl17: TLabel;
    mskFromYear: TMaskEdit;
    mskToYear: TMaskEdit;
    grp6: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    cmbStoreIDFrom: TComboBox;
    cmbStoreIDTo: TComboBox;
    cmbStoreID: TComboBox;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    cmbReciptTypeFrom: TComboBox;
    cmbReciptTypeTo: TComboBox;
    cmbReciptType: TComboBox;
    GroupBox2: TGroupBox;
    mskCustName: TMaskEdit;
    cmbCustName: TComboBox;
    GroupBox3: TGroupBox;
    mskStuffName: TMaskEdit;
    cmbStuffName: TComboBox;
    GroupBox4: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    btnPerson2_1: TSpeedButton;
    btnPerson2_2: TSpeedButton;
    mskPersonID2From: TMaskEdit;
    mskPersonID2To: TMaskEdit;
    cmbPersonID2: TComboBox;
    GroupBox5: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    btnPerson3_1: TSpeedButton;
    btnPerson3_2: TSpeedButton;
    mskPersonID3From: TMaskEdit;
    mskPersonID3To: TMaskEdit;
    cmbPersonID3: TComboBox;
    Panel1: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure mskFromValueChange(Sender: TObject);
    procedure mskFromReciptNumberChange(Sender: TObject);
    procedure mskFromNoteChange(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure actShowDocExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actSendToExcelExecute(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure actFilterExecute(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure actSpecialExecute(Sender: TObject);
    procedure mskStuffCodeFromChange(Sender: TObject);
    procedure mskFromYearChange(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure mskStuffCodeFromKeyPress(Sender: TObject; var Key: Char);
    procedure mskStuffCodeToKeyPress(Sender: TObject; var Key: Char);
    procedure btnPerson1_1Click(Sender: TObject);
    procedure mskPersonID1FromKeyPress(Sender: TObject; var Key: Char);
    procedure mskPersonID1ToKeyPress(Sender: TObject; var Key: Char);
    procedure btnDefClick(Sender: TObject);
    procedure ppLblCaptionGetText(Sender: TObject; var Text: String);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure ppLblPrintDateGetText(Sender: TObject; var Text: String);
    procedure ppSysVarPageNoGetText(Sender: TObject; var Text: String);
    procedure btnPerson2_1Click(Sender: TObject);
    procedure btnPerson3_1Click(Sender: TObject);
    procedure mskPersonID2FromKeyPress(Sender: TObject; var Key: Char);
    procedure mskPersonID2ToKeyPress(Sender: TObject; var Key: Char);
    procedure mskPersonID3FromKeyPress(Sender: TObject; var Key: Char);
    procedure mskPersonID3ToKeyPress(Sender: TObject; var Key: Char);
  private
    procedure initMaxMin;
    function MaxMinValue(tblName, fldName: String; MinMax: Byte): Currency;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SearchReciptsF: TSearchReciptsF;

implementation

uses Dm, GlobalPro, search2, sort2, DBGrid2Print, StrUtils,
  searchCode_L1_L2, searchCode_ADO, FormFunctions, mdiMain;

{$R *.dfm}
{ TSearchDocsF }

function TSearchReciptsF.MaxMinValue;
begin
  with Dmf.qryTmpTmp do
  begin
    Active := false;
    case MinMax of
      0:
        SQL.Text := 'SELECT min(' + fldName + ') FROM ' + tblName;
      1:
        SQL.Text := 'SELECT MAX(' + fldName + ') FROM ' + tblName;
      3:
        SQL.Text := tblName;
    end; // case
    Active := True;
    Result := Fields[0].AsCurrency;
    Active := false;
  end;
end;

procedure TSearchReciptsF.initMaxMin;
begin
  mskFromValue.Text :=
    CurrToStr(MaxMinValue
    ('SELECT Min(TotalInputPrice + TotalOutputPrice) FROM ReciptItems', '', 3));
  mskToValue.Text :=
    CurrToStr(MaxMinValue
    ('SELECT MAX(TotalInputPrice + TotalOutputPrice) FROM ReciptItems', '', 3));
  mskFromReciptNumber.Text :=
    CurrToStr(MaxMinValue('Recipts', 'ReciptNumber', 0));
  mskToReciptNumber.Text :=
    CurrToStr(MaxMinValue('Recipts', 'ReciptNumber', 1));

  mskStuffCodeFrom.Text :=
    CurrToStr(MaxMinValue('ReciptItems', 'StuffCode', 0));
  mskStuffCodeTo.Text := CurrToStr(MaxMinValue('ReciptItems', 'StuffCode', 1));

  mskPersonID1From.Text := CurrToStr(MaxMinValue('Recipts', 'PersonID1', 0));
  mskPersonID1To.Text := CurrToStr(MaxMinValue('Recipts', 'PersonID1', 1));

  mskPersonID2From.Text := CurrToStr(MaxMinValue('Recipts', 'PersonID2', 0));
  mskPersonID2To.Text := CurrToStr(MaxMinValue('Recipts', 'PersonID2', 1));

  mskPersonID3From.Text := CurrToStr(MaxMinValue('Recipts', 'PersonID3', 0));
  mskPersonID3To.Text := CurrToStr(MaxMinValue('Recipts', 'PersonID3', 1));

  mskFromYear.Text := IntToStr(opt.DefaultYear);
  mskToYear.Text := IntToStr(APPBank.Year);

  cmbReciptTypeFrom.ItemIndex := 0;
  cmbReciptTypeTo.ItemIndex := cmbReciptTypeTo.Items.Count - 1;
  cmbStoreIDFrom.ItemIndex := 0;
  cmbStoreIDTo.ItemIndex := cmbStoreIDTo.Items.Count - 1;

end;

procedure TSearchReciptsF.FormCreate(Sender: TObject);
var
  S, MnuPlaceID: String;
begin
  inherited;
  case mdiMainF.MainFrame.GetActiveIndex of
    1:
      begin
        MnuPlaceID := 'MnuPlaceID in(2,4,6,7)';
      end;
    2:
      begin
        MnuPlaceID := 'MnuPlaceID in(1,4,5,7) ';
      end;
  else
    MnuPlaceID := 'MnuPlaceID = -1';

  end;
  S := 'SELECT DISTINCT Recipts.ReciptType, ReciptTypes.ReciptCaption ' +
    'FROM Recipts INNER JOIN ReciptTypes ON Recipts.ReciptType = ReciptTypes.ReciptType '
    + 'WHERE ' + MnuPlaceID + 'ORDER BY Recipts.ReciptType';
  InitCombos(cmbReciptTypeFrom, S);
  InitCombos(cmbReciptTypeTo, S);

  S := 'SELECT DISTINCT Recipts.StoreID, Stores.c_StoreName ' +
    'FROM Recipts INNER JOIN Stores ON Recipts.StoreID = Stores.n_StoreID ' +
    'ORDER BY Recipts.StoreID';
  InitCombos(cmbStoreIDFrom, S);
  InitCombos(cmbStoreIDTo, S);

  initMaxMin;

  grpYear.Visible := not APPBank.SingelMali;
  SetKeyboardFarsi;
  Entity_Weight(DBGrid1);
end;

// procedure TSearchReciptsF.InitcmbFields;
// begin
// cmbFields.Clear;
// cmbFields.Items.AddObject('توضیحات', TObject('Note'));
// cmbFields.Items.AddObject('شماره ماشین', TObject('MachineNo'));
// cmbFields.Items.AddObject('راننده', TObject('MachineName'));
// end;

procedure TSearchReciptsF.mskFromValueChange(Sender: TObject);
begin
  inherited;
  mskToValue.Text := (Sender as TMaskEdit).Text;
end;

procedure TSearchReciptsF.mskFromReciptNumberChange(Sender: TObject);
begin
  inherited;
  mskToReciptNumber.Text := (Sender as TMaskEdit).Text;
end;

procedure TSearchReciptsF.mskFromNoteChange(Sender: TObject);
begin
  inherited;
  mskToNote.Text := (Sender as TMaskEdit).Text;
end;

procedure TSearchReciptsF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
end;

procedure TSearchReciptsF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 3);
end;

procedure TSearchReciptsF.actShowDocExecute(Sender: TObject);
begin
  inherited;
  ShowReciptTypes(qrySearchRecipts, Self,
    qrySearchRecipts.FieldByName('StuffCode').AsLargeInt);
end;

procedure TSearchReciptsF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qrySearchRecipts);
end;

procedure TSearchReciptsF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qrySearchRecipts);
end;

procedure TSearchReciptsF.actSendToExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TSearchReciptsF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  QuickSearch(Key, qrySearchReciptsReciptNumber);
end;

procedure TSearchReciptsF.actFilterExecute(Sender: TObject);
var
  sFrom: string;
begin
  inherited;
  with qrySearchRecipts do
  begin
    Close;
    SQL.Text := 'SELECT Recipts.PersonID1, ReciptItems.ReciptID, ';
    SQL.Add('ReciptItems.ServerID, ReciptItems.YearID, Recipts.ReciptNumber,');
    SQL.Add('Recipts.ReciptDate, Recipts.ReciptType,');
    SQL.Add('ReciptTypes.ReciptCaption, ReciptItems.StuffCode, StuffCoding.c_StuffName, Units.UnitName,');
    SQL.Add('ReciptItems.InputEntity + ReciptItems.OutputEntity AS Entity,');
    SQL.Add('ReciptItems.InputWeight + ReciptItems.OutputWeight AS Weight,');
    SQL.Add('ReciptItems.TotalInputPrice + ReciptItems.TotalOutputPrice AS Price, Recipts.StoreID, Stores.c_StoreName,');
    SQL.Add('ReciptItems.ItemNote, ReciptItems.StuffDiameter, StuffCoding.c_StuffTecInfo,');
    SQL.Add('ReciptItems.StuffSize, ReciptItems.UnitSellPrice, Customers.CustName, Recipts.ReciptNote');

    SQL.Add(',Recipts.PersonID2,Customers2.CustName AS CustName2');
    SQL.Add(',Recipts.PersonID3,Customers3.CustName AS CustName3');
    SQL.Add(',ReciptItems.UseUnitID, UseUnits.UseUnitName, ReciptItems.ControlCode');
    SQL.Add(',Recipts.DocNo,Recipts.Docdate');

    SQL.Add('FROM ReciptItems INNER JOIN');
    SQL.Add('Recipts ON ReciptItems.ReciptID = Recipts.ReciptID AND ReciptItems.ServerID = Recipts.ServerID AND');
    SQL.Add('ReciptItems.YearID = Recipts.YearID INNER JOIN');
    SQL.Add('ReciptTypes ON Recipts.ReciptType = ReciptTypes.ReciptType INNER JOIN');
    SQL.Add('StuffCoding ON ReciptItems.StuffCode = StuffCoding.c_StuffCode INNER JOIN');
    SQL.Add('Units ON StuffCoding.n_UnitCode = Units.UnitCode LEFT OUTER JOIN');
    SQL.Add('Customers ON Recipts.PersonID1 = Customers.CustID LEFT OUTER JOIN');
    SQL.Add('Stores ON Recipts.StoreID = Stores.n_StoreID');

    SQL.Add('LEFT OUTER JOIN Customers as Customers2 ON Recipts.PersonID2 = Customers2.CustID');
    SQL.Add('LEFT OUTER JOIN Customers as Customers3 ON Recipts.PersonID3 =Customers3.CustID');
    SQL.Add('LEFT OUTER JOIN UseUnits ON ReciptItems.UseUnitID = UseUnits.UseUnitID');

    SQL.Add(' WHERE ((TotalInputPrice + TotalOutputPrice) BETWEEN :Fromvalue AND :ToValue)');
    SQL.Add('And (Recipts.YearID between :YearFrom and :YearTo)');
    SQL.Add(IfThen(cmbStuffCode.ItemIndex = 0, 'AND', 'OR') +
      '((ReciptItems.StuffCode) BETWEEN :FromStuffCode AND :ToStuffCode)');

    SQL.Add(IfThen(cmbPersonID1.ItemIndex = 0, 'AND', 'OR') +
      '((Recipts.PersonID1) BETWEEN :FromPersonID1 AND :ToPersonID1)');

    SQL.Add(IfThen(cmbPersonID2.ItemIndex = 0, 'AND', 'OR') +
      '((Recipts.PersonID2) BETWEEN :FromPersonID2 AND :ToPersonID2)');

    SQL.Add(IfThen(cmbPersonID3.ItemIndex = 0, 'AND', 'OR') +
      '((Recipts.PersonID3) BETWEEN :FromPersonID3 AND :ToPersonID3)');

    SQL.Add(IfThen(cmbReciptNumber.ItemIndex = 0, 'AND', 'OR') +
      ' (Recipts.ReciptNumber BETWEEN :ReciptNumberFrom AND :ReciptNumberTo)');

    sFrom := Trim(mskFromNote.Text);
    if sFrom <> EmptyStr then
    begin
      SQL.Add(IfThen(cmbNote.ItemIndex = 0, 'AND', 'OR'));
      case cmbFields.ItemIndex of
        0:
          begin
            SQL.Add('(((ReciptItems.ItemNote Like ''%''+ :FromNote +''%'') OR');
            SQL.Add('(ReciptItems.ItemNote like ''%''+ :ToNote +''%''))');

            SQL.Add('OR(( Recipts.ReciptNote Like ''%''+ :FromReciptNote +''%'') OR');
            SQL.Add('(Recipts.ReciptNote like ''%''+ :ToReciptNote +''%'')))');
          end;
        1:
          begin
            SQL.Add('(((ReciptItems.MachineName Like ''%''+ :FromNote +''%'') OR');
            SQL.Add('(ReciptItems.MachineName like ''%''+ :ToNote +''%''))');

            SQL.Add('OR(( Recipts.MachineName Like ''%''+ :FromReciptNote +''%'') OR');
            SQL.Add('(Recipts.MachineName like ''%''+ :ToReciptNote +''%'')))');
          end;
        2:
          begin
            SQL.Add('(((ReciptItems.MachineNo Like ''%''+ :FromNote +''%'') OR');
            SQL.Add('(ReciptItems.MachineNo like ''%''+ :ToNote +''%''))');

            SQL.Add('OR(( Recipts.MachineNo Like ''%''+ :FromReciptNote +''%'') OR');
            SQL.Add('(Recipts.MachineNo like ''%''+ :ToReciptNote +''%'')))');
          end;
        3:
          begin
            SQL.Add('((ReciptItems.ControlCode = :FromControlCode ) OR');
            SQL.Add('(ReciptItems.ControlCode  = :ToControlCode ))');
          end;

      end;
      if cmbFields.ItemIndex in [0, 1, 2] then
      begin
        Parameters.ParamByName('FromNote').Value := sFrom;
        Parameters.ParamByName('ToNote').Value := Trim(mskToNote.Text);
        Parameters.ParamByName('FromReciptNote').Value := sFrom;
        Parameters.ParamByName('ToReciptNote').Value := Trim(mskToNote.Text);
      end
      else
      begin
        Parameters.ParamByName('FromControlCode').Value := sFrom;
        Parameters.ParamByName('ToControlCode').Value := Trim(mskToNote.Text);
      end;
    end;

    SQL.Add(IfThen(cmbStoreID.ItemIndex = 0, 'AND', 'OR') +
      ' (Recipts.StoreID BETWEEN :StoreIDFrom AND :StoreIDTo)');
    SQL.Add(IfThen(cmbReciptType.ItemIndex = 0, 'AND', 'OR') +
      ' (Recipts.ReciptType BETWEEN :ReciptTypeFrom AND :ReciptTypeTo)');

    sFrom := Trim(mskCustName.Text);
    if sFrom <> EmptyStr then
    begin
      SQL.Add(IfThen(cmbCustName.ItemIndex = 0, 'AND', 'OR'));
      SQL.Add('(Customers.CustName Like ''%''+ :CustName +''%'') ');
      Parameters.ParamByName('CustName').Value := sFrom;
    end;

    sFrom := Trim(mskStuffName.Text);
    if sFrom <> EmptyStr then
    begin
      SQL.Add(IfThen(cmbStuffName.ItemIndex = 0, 'AND', 'OR'));
      SQL.Add('(StuffCoding.c_StuffName Like ''%''+ :StuffName +''%'') ');
      Parameters.ParamByName('StuffName').Value := sFrom;
    end;

    Parameters.ParamByName('YearFrom').Value := Trim(mskFromYear.Text);
    Parameters.ParamByName('YearTo').Value := Trim(mskToYear.Text);
    Parameters.ParamByName('Fromvalue').Value := Trim(mskFromValue.Text);
    Parameters.ParamByName('ToValue').Value := Trim(mskToValue.Text);
    Parameters.ParamByName('ReciptNumberFrom').Value :=
      Trim(mskFromReciptNumber.Text);
    Parameters.ParamByName('ReciptNumberTo').Value :=
      Trim(mskToReciptNumber.Text);

    Parameters.ParamByName('FromStuffCode').Value :=
      Trim(mskStuffCodeFrom.Text);
    Parameters.ParamByName('TOStuffCode').Value := Trim(mskStuffCodeTo.Text);

    Parameters.ParamByName('FromPersonID1').Value :=
      Trim(mskPersonID1From.Text);
    Parameters.ParamByName('TOPersonID1').Value := Trim(mskPersonID1To.Text);

    Parameters.ParamByName('FromPersonID2').Value :=
      Trim(mskPersonID2From.Text);
    Parameters.ParamByName('TOPersonID2').Value := Trim(mskPersonID2To.Text);

    Parameters.ParamByName('FromPersonID3').Value :=
      Trim(mskPersonID3From.Text);
    Parameters.ParamByName('TOPersonID3').Value := Trim(mskPersonID3To.Text);

    Parameters.ParamByName('ReciptTypeFrom').Value :=
      integer(cmbReciptTypeFrom.Items.Objects[cmbReciptTypeFrom.ItemIndex]);
    Parameters.ParamByName('ReciptTypeTo').Value :=
      integer(cmbReciptTypeTo.Items.Objects[cmbReciptTypeTo.ItemIndex]);;

    Parameters.ParamByName('StoreIDFrom').Value :=
      integer(cmbStoreIDFrom.Items.Objects[cmbStoreIDFrom.ItemIndex]);;
    Parameters.ParamByName('StoreIDTo').Value :=
      integer(cmbStoreIDTo.Items.Objects[cmbStoreIDTo.ItemIndex]);;

    Open;
  end;

end;

procedure TSearchReciptsF.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  actShowDoc.Execute;
end;

procedure TSearchReciptsF.actPrintExecute(Sender: TObject);
begin
  inherited;
  try
    qrySearchRecipts.DisableControls;
    InitReportFile(ppReport1, 'SearchRecipts', True);
  finally
    qrySearchRecipts.EnableControls;
  end;
end;

procedure TSearchReciptsF.actSpecialExecute(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(DBGrid1, 0);
end;

procedure TSearchReciptsF.mskStuffCodeFromChange(Sender: TObject);
begin
  inherited;
  mskStuffCodeTo.Text := (Sender as TMaskEdit).Text;
end;

procedure TSearchReciptsF.mskFromYearChange(Sender: TObject);
begin
  inherited;
  mskToYear.Text := (Sender as TMaskEdit).Text;

end;

procedure TSearchReciptsF.btn1Click(Sender: TObject);
var
  sqlText: String;
  Results: array [0 .. 1] of String;
begin
  inherited;
  sqlText := 'SELECT DISTINCT ReciptItems.StuffCode, StuffCoding.c_StuffName ' +
    'FROM ReciptItems INNER JOIN ' +
    'StuffCoding ON ReciptItems.StuffCode = StuffCoding.c_StuffCode';
  if searchCode_ADOF.SearchCode2(Dmf.adcBSell, 'كدهاي كالا', sqlText,
    ['كد كالا', 'شرح'], Results, [80, 350], alLeft) then
    if (Sender as TSpeedButton).Tag = 0 then
      mskStuffCodeFrom.Text := Results[0]
    else
      mskStuffCodeTo.Text := Results[0]
end;

procedure TSearchReciptsF.mskStuffCodeFromKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key = #32 then
    btn1.Click;
end;

procedure TSearchReciptsF.mskStuffCodeToKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key = #32 then
    btn2.Click;
end;

procedure TSearchReciptsF.btnPerson1_1Click(Sender: TObject);
var
  c: String;
begin
  inherited;
  if searchCode_ADOF.SearchCode(Dmf.adcBSell, c, 'كدهاي مشتريان',
    'SELECT DISTINCT Recipts.PersonID1, Customers.CustName ' +
    'FROM Recipts LEFT OUTER JOIN ' +
    'Customers ON Recipts.PersonID1 = Customers.CustID ',
    ['كد مشتري', 'نام مشتري'], alLeft, 1) <> '' then
    if (Sender as TSpeedButton).Tag = 0 then
      mskPersonID1From.Text := c
    else
      mskPersonID1To.Text := c;
end;

procedure TSearchReciptsF.mskPersonID1FromKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key = #32 then
    btnPerson1_1.Click
end;

procedure TSearchReciptsF.mskPersonID1ToKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key = #32 then
    btnPerson1_2.Click
end;

procedure TSearchReciptsF.mskPersonID2FromKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key = #32 then
    btnPerson2_1.Click
end;

procedure TSearchReciptsF.mskPersonID2ToKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key = #32 then
    btnPerson2_2.Click
end;

procedure TSearchReciptsF.mskPersonID3FromKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key = #32 then
    btnPerson3_1.Click

end;

procedure TSearchReciptsF.mskPersonID3ToKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key = #32 then
    btnPerson3_2.Click
end;

procedure TSearchReciptsF.btnDefClick(Sender: TObject);
begin
  inherited;
  initMaxMin;
  actFilter.Execute;
end;

procedure TSearchReciptsF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  Text := APPBank.CompanyName;
end;

procedure TSearchReciptsF.ppLblPrintDateGetText(Sender: TObject;
  var Text: String);
begin
  Text := GetPrintDate;
end;

procedure TSearchReciptsF.ppSysVarPageNoGetText(Sender: TObject;
  var Text: String);
begin
  Text := GetPageNumberString(Text)
end;

procedure TSearchReciptsF.btnPerson2_1Click(Sender: TObject);
var
  c: String;
begin
  inherited;
  setColumns2(DBGrid1, True, 'PersonID2');
  setColumns2(DBGrid1, True, 'CustName2');
  if searchCode_ADOF.SearchCode(Dmf.adcBSell, c, '2كدهاي مشتريان',
    'SELECT DISTINCT Recipts.PersonID2, Customers.CustName ' +
    'FROM Recipts LEFT OUTER JOIN ' +
    'Customers ON Recipts.PersonID2 = Customers.CustID ',
    ['كد مشتري', 'نام مشتري'], alLeft, 1) <> '' then
    if (Sender as TSpeedButton).Tag = 0 then
      mskPersonID2From.Text := c
    else
      mskPersonID2To.Text := c;

end;

procedure TSearchReciptsF.btnPerson3_1Click(Sender: TObject);
var
  c: String;
begin
  inherited;
  setColumns2(DBGrid1, True, 'PersonID3');
  setColumns2(DBGrid1, True, 'CustName3');
  if searchCode_ADOF.SearchCode(Dmf.adcBSell, c, '3كدهاي مشتريان',
    'SELECT DISTINCT Recipts.PersonID3, Customers.CustName ' +
    'FROM Recipts LEFT OUTER JOIN ' +
    'Customers ON Recipts.PersonID3 = Customers.CustID ',
    ['كد مشتري', 'نام مشتري'], alLeft, 1) <> '' then
    if (Sender as TSpeedButton).Tag = 0 then
      mskPersonID3From.Text := c
    else
      mskPersonID3To.Text := c;
end;

procedure TSearchReciptsF.ppLblCaptionGetText(Sender: TObject;
  var Text: String);
begin
  Text := Caption;
end;

end.
