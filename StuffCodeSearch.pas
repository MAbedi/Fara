{ -----------------------------------------------------------------------------
  Unit Name: StuffCodeSearch
  Author:    mahmood
  ----------------------------------------------------------------------------- }

unit StuffCodeSearch;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, Mask, ADODB, Grids, Vcl.DBGrids, DBCtrls, ppDB,
  ppDBPipe, ppComm, ppRelatv, ppProd, ppClass, ppReport, ppCtrls, ppPrnabl,
  ppBands, ppCache, ppVar, SumDBGrid, Tabs, ppParameter, ppDesignLayer,
  System.ImageList, System.Actions;

type
  TSearchItem = class
    fieldName: String;
    caption: String;
    IsString: Boolean;
  end; // tSearchItem

  TStuffCodeSearchF = class(Ttemplate2MDIF)
    qrySearchStuff: TADOQuery;
    Panel4: TPanel;
    DBGrid1: TDBGrid;
    srcSearchStuff: TDataSource;
    actShowCardex: TAction;
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
    pnlRight: TPanel;
    grp5: TGroupBox;
    lbl14: TLabel;
    btnField: TSpeedButton;
    btnFieldAll: TSpeedButton;
    mskField: TMaskEdit;
    mskFieldAll: TMaskEdit;
    cmbFields: TComboBox;
    ppHeaderBand1: TppHeaderBand;
    ppFooterBand1: TppFooterBand;
    spl1: TSplitter;
    Label1: TLabel;
    Label2: TLabel;
    mskRequest: TMaskEdit;
    Label3: TLabel;
    qrySearchStuffStuffCode: TLargeintField;
    qrySearchStuffc_StuffName: TStringField;
    qrySearchStuffUnitName: TStringField;
    qrySearchStuffsd1: TStringField;
    qrySearchStuffsd2: TStringField;
    qrySearchStuffsd3: TStringField;
    qrySearchStuffsd4: TStringField;
    qrySearchStuffsd5: TStringField;
    qrySearchStuffsd6: TStringField;
    qrySearchStuffsd7: TStringField;
    qrySearchStuffsd8: TStringField;
    qrySearchStuffsd9: TStringField;
    qrySearchStuffStoreID: TSmallintField;
    qrySearchStuffSUMEntity: TFloatField;
    qrySearchStuffSUMWeight: TFloatField;
    qrySearchStuffRequest: TFloatField;
    qrySearchStuffDifference: TFloatField;
    actStore: TAction;
    qryStoreStuffs: TADOQuery;
    BitBtn1: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure actShowCardexExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actSendToExcelExecute(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure actSpecialExecute(Sender: TObject);
    procedure ppLblCaptionGetText(Sender: TObject; var Text: String);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure ppLblPrintDateGetText(Sender: TObject; var Text: String);
    procedure ppSysVarPageNoGetText(Sender: TObject; var Text: String);
    procedure btnFieldClick(Sender: TObject);
    procedure qrySearchStuffAfterOpen(DataSet: TDataSet);
    procedure qrySearchStuffRequestChange(Sender: TField);
    procedure mskFieldChange(Sender: TObject);
    procedure btnFieldAllClick(Sender: TObject);
    procedure actStoreExecute(Sender: TObject);
    procedure qrySearchStuffAfterScroll(DataSet: TDataSet);
  private
    sitem: TSearchItem;
    DisplayType: string;
    procedure assignCombo;
    procedure InitForm;
    procedure SearchField(AllFields: Boolean; s: String);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  StuffCodeSearchF: TStuffCodeSearchF;

implementation

uses Dm, GlobalPro, search2, sort2, DBGrid2Print, StrUtils, searchCode_L1_L2,
  searchCode_ADO, FormFunctions, mdiMain, RptCardex, selected;

{$R *.dfm}
{ TStuffCodeSearchF }

procedure TStuffCodeSearchF.FormCreate(Sender: TObject);
begin
  inherited;
  InitForm
end;

procedure TStuffCodeSearchF.InitForm;
var
  i: Integer;
  b: Boolean;
  Name_: string;
begin
  case opt.EntityDisplayType of
    0, 2:
      DisplayType := 'SUMEntity';
    1, 3:
      DisplayType := 'SUMWeight';
  end;
  Entity_Weight(DBGrid1);
  for i := 1 to 9 do
  begin
    Name_ := 'sd' + IntToStr(i);
    b := opt.ExtraCoding.Captions[i] <> '';
    if b then
    begin
      qrySearchStuff.FieldByName(Name_).DisplayLabel :=
        opt.ExtraCoding.Captions[i];
      qrySearchStuff.FieldByName(Name_).Tag := 3;
    end;
    setColumns2(DBGrid1, b, Name_);
  end;
  assignCombo;
  with qrySearchStuff do
  begin
    Active := False;
    Parameters.ParamByName('YearIDFrom').Value := opt.DefaultYear;
    Parameters.ParamByName('YearIDTo').Value := APPBank.Year;
    Active := True;
  end;
end;

procedure TStuffCodeSearchF.mskFieldChange(Sender: TObject);
begin
  inherited;
  prvS := -1;
end;

procedure TStuffCodeSearchF.assignCombo;
var
  i: Integer;
begin
  cmbFields.Clear;
  for i := 0 to qrySearchStuff.FieldCount - 1 do
    if qrySearchStuff.Fields[i].Tag = 3 then
    begin
      sitem := TSearchItem.Create;
      sitem.caption := qrySearchStuff.Fields[i].DisplayLabel;
      sitem.fieldName := qrySearchStuff.Fields[i].fieldName;
      sitem.IsString := qrySearchStuff.Fields[i].DataType
        in [ftString, ftWideString];
      cmbFields.Items.AddObject(sitem.caption, sitem);
    end;
  if cmbFields.Items.Count > 0 then
    cmbFields.ItemIndex := 0;
end;

procedure TStuffCodeSearchF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
end;

procedure TStuffCodeSearchF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 1);
end;

procedure TStuffCodeSearchF.actShowCardexExecute(Sender: TObject);
begin
  inherited;
  RptCardexF.Enter(qrySearchStuff.FieldByName('StoreID').AsInteger,
    qrySearchStuff.FieldByName('StuffCode').AsLargeInt, 2);
end;

procedure TStuffCodeSearchF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qrySearchStuff);
end;

procedure TStuffCodeSearchF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qrySearchStuff);
end;

procedure TStuffCodeSearchF.actSendToExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TStuffCodeSearchF.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  actShowCardex.Execute;
end;

procedure TStuffCodeSearchF.actPrintExecute(Sender: TObject);
begin
  inherited;
  try
    qrySearchStuff.DisableControls;
    InitReportFile(ppReport1, 'StuffCodeSearch', True);
  finally
    qrySearchStuff.EnableControls;
  end;
end;

procedure TStuffCodeSearchF.actSpecialExecute(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(DBGrid1, 0);
end;

procedure TStuffCodeSearchF.actStoreExecute(Sender: TObject);
const
  sqlText = 'SELECT n_StoreID, c_StoreName FROM Stores' +
    ' WHERE (NOT (n_StoreID IN (SELECT n_StoreID' + ' FROM StoreStuffs' +
    ' WHERE (c_StuffCode = %D))))';
var
  s: String;
  aResult: String;
  TSBreak: TStringList;
  i: Integer;
begin
  inherited;
  with qryStoreStuffs do
    try
      DisableControls;
      First;
      while not Eof do
      begin
        s := s + qryStoreStuffs.FieldByName('n_StoreID').AsString + ',';
        Next;
      end;
      SetLength(s, length(s) - 1);
      if s = EmptyStr then
        s := '0';
      aResult := selectedF.ShowSelect(DMf.adcBSell, ' «— »«ÿ «‰»«— »« ﬂ«·«Ì Ã«—Ì',
        Format(sqlText, [qrySearchStuffStuffCode.AsLargeInt]), ['ﬂœ', '⁄‰Ê«‰'],
        alLeft, [50, 300]);
      TSBreak := TStringList.Create;
      if aResult <> EmptyStr then
      begin
        TSBreak.Text := StringReplace(aResult, ',', #13, [rfReplaceAll]);
        for i := 0 to TSBreak.Count - 1 do
        begin
          Append;
          FieldByName('n_StoreID').AsString := TSBreak[i];
          FieldByName('c_StuffCode').AsLargeInt :=
            qrySearchStuffStuffCode.AsLargeInt;
          Post
        end;
      end;
    finally
      FreeAndNil(TSBreak);
      EnableControls;
    end;
end;

procedure TStuffCodeSearchF.btnFieldAllClick(Sender: TObject);
begin
  inherited;
  SearchField(True, trim(mskFieldAll.Text));
end;

procedure TStuffCodeSearchF.btnFieldClick(Sender: TObject);
begin
  inherited;
  SearchField(False, trim(mskField.Text));
end;

procedure TStuffCodeSearchF.SearchField(AllFields: Boolean; s: String);
var
  i: Integer;
  itry: Int64;
  ORStr, StrFilter: String;
begin
  i := cmbFields.ItemIndex;
  try
    if i <> prvS then
    begin
      sitem := TSearchItem(cmbFields.Items.Objects[i]);
      with qrySearchStuff do
      begin
        if AllFields then
        begin
          StrFilter := EmptyStr;
          ORStr := EmptyStr;
          for i := 0 to qrySearchStuff.FieldCount - 1 do
          begin
            if qrySearchStuff.Fields[i].DataType
              in [ftString, ftWideString] then
              StrFilter := StrFilter + ORStr + Fields[i].fieldName + ' like ' +
                QuotedStr('%' + s + '%')
            else if TryStrToInt64(s, itry) then
              StrFilter := StrFilter + ORStr + Fields[i].fieldName + ' = ' + s;
            if StrFilter <> EmptyStr then
              ORStr := ' OR ';
          end;
          Filter := StrFilter;

        end
        else
        begin
          if sitem.IsString then
            Filter := sitem.fieldName + ' like ' + QuotedStr('%' + s + '%')
          else
            Filter := sitem.fieldName + ' = ' + s;

        end;

        FindFirst;
      end; // with
    end
    else
      qrySearchStuff.FindNext;
  except
    MessageDlg('ÅÌœ« ‰‘œ!˛', mtWarning, [mbOK], 0);
  end; // try
  prvS := cmbFields.ItemIndex;

end;

procedure TStuffCodeSearchF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  Text := APPBank.CompanyName;
end;

procedure TStuffCodeSearchF.ppLblPrintDateGetText(Sender: TObject;
  var Text: String);
begin
  Text := GetPrintDate;
end;

procedure TStuffCodeSearchF.ppSysVarPageNoGetText(Sender: TObject;
  var Text: String);
begin
  Text := GetPageNumberString(Text)
end;

procedure TStuffCodeSearchF.qrySearchStuffAfterOpen(DataSet: TDataSet);
begin
  inherited;
  With qrySearchStuff do
    try
      DisableControls;
      while not Eof do
      begin
        Edit;
        FieldByName('Request').AsFloat := 0;
        Next;
      end;
    finally
      First;
      EnableControls;
    end;
end;

procedure TStuffCodeSearchF.qrySearchStuffAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qryStoreStuffs do
  begin
    Active := False;
    Parameters.ParamByName('c_StuffCode').Value :=
      qrySearchStuffStuffCode.AsLargeInt;
    Active := True;
  end;
end;

procedure TStuffCodeSearchF.qrySearchStuffRequestChange(Sender: TField);
begin
  inherited;
  qrySearchStuff.FieldByName('Difference').AsFloat :=
    qrySearchStuff.FieldByName(DisplayType).AsFloat - qrySearchStuff.FieldByName
    ('Request').AsFloat;
end;

procedure TStuffCodeSearchF.ppLblCaptionGetText(Sender: TObject;
  var Text: String);
begin
  Text := caption;
end;

end.
