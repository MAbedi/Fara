unit TozinDeficits;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template4, DBActns, ActnList, StdCtrls, Buttons, ExtCtrls,
  DBCtrls, Mask, Grids, Vcl.DBGrids, DB, ADODB, ppBands, ppCtrls, ppVar,
  ppPrnabl, ppClass, ppCache, ppDB, ppDBPipe, ppComm, ppRelatv, ppProd,
  ppReport, Math, SumDBGrid, ppParameter, ppDesignLayer, System.Actions;

type
  TTozinDeficitsF = class(TTemplate4F)
    DataSetInsert1: TDataSetInsert;
    DataSetDelete1: TDataSetDelete;
    DataSetEdit1: TDataSetEdit;
    qryDeficits: TADOQuery;
    qryDeficitsDeficitID: TSmallintField;
    qryDeficitsDeficitName: TStringField;
    qryDeficitsDeficitType: TWordField;
    qryDeficitsCalculationType: TWordField;
    qryDeficitsDeficitCo: TFloatField;
    qryDeficitsExportType: TWordField;
    srcTozin: TDataSource;
    qryTozin: TADOQuery;
    qry_Deficits: TADOQuery;
    qry_DeficitsDeficitID: TSmallintField;
    qry_DeficitsDeficitAdd: TBCDField;
    qry_DeficitsDeficitDec: TBCDField;
    qry_DeficitsDeficitNote: TStringField;
    qry_Deficits_DeficitName: TStringField;
    qry_Deficits_CalculationType: TIntegerField;
    qry_Deficits_DeficitCo: TFloatField;
    qry_Deficits_DeficitType: TIntegerField;
    src_Deficits: TDataSource;
    Panel3: TPanel;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    EdtFormNo: TDBEdit;
    EdtDate: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Panel4: TPanel;
    SpeedButton1: TSpeedButton;
    Label20: TLabel;
    DBTextDeficitID: TDBText;
    Label4: TLabel;
    GroupBox2: TGroupBox;
    DBMemo1: TDBMemo;
    EdtDeficitID: TDBEdit;
    EdtDef_Add_Dec: TDBEdit;
    okPanel: TPanel;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    newPanel: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    ppReport1: TppReport;
    ppDBPipeline1: TppDBPipeline;
    ppHeaderBand1: TppHeaderBand;
    ppShape1: TppShape;
    ppLblCompanyName: TppLabel;
    ppLblCaption: TppLabel;
    ppSysVarPageNo: TppSystemVariable;
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
    actPrint: TAction;
    BitBtn2: TBitBtn;
    qry_DeficitsDeficitAddDec: TBCDField;
    qry_DeficitsYearID: TIntegerField;
    qry_DeficitsServerID: TIntegerField;
    qry_DeficitsDeficitCo: TFloatField;
    qry_DeficitsDeficitPercent: TFloatField;
    edtDeficitPercent: TDBEdit;
    lblDeficitPercent: TLabel;
    qryDeficitsDeficitPercent: TFloatField;
    qry_DeficitsTozinDeficitID: TIntegerField;
    qry_DeficitsTozinID: TIntegerField;
    procedure qry_DeficitsAfterInsert(DataSet: TDataSet);
    procedure SpeedButton1Click(Sender: TObject);
    procedure src_DeficitsStateChange(Sender: TObject);
    procedure qry_DeficitsAfterPost(DataSet: TDataSet);
    procedure EdtDeficitIDKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure qry_DeficitsDeficitIDChange(Sender: TField);
    procedure qry_DeficitsBeforePost(DataSet: TDataSet);
    procedure qry_DeficitsAfterScroll(DataSet: TDataSet);
    procedure actPrintExecute(Sender: TObject);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure ppLblPrintDateGetText(Sender: TObject; var Text: String);
    procedure ppSysVarPageNoGetText(Sender: TObject; var Text: String);
    procedure qry_DeficitsDeficitCoChange(Sender: TField);
    procedure qry_DeficitsDeficitAddDecChange(Sender: TField);
    procedure qry_DeficitsDeficitPercentChange(Sender: TField);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure qry_DeficitsAfterDelete(DataSet: TDataSet);
    procedure qry_DeficitsBeforeDelete(DataSet: TDataSet);
    procedure EdtDeficitIDExit(Sender: TObject);
  private
    { Private declarations }
    qry_DeficitsModified: Boolean;
    procedure InitForm;
    procedure SetEdtDef_Add_Dec;
  public
    { Public declarations }
    qry_init, qry_Tozin: TADOQuery;
    procedure enter(qry__init, qry__Tozin: TADOQuery);
  end;

var
  TozinDeficitsF: TTozinDeficitsF;

implementation

uses DM, GlobalPro, searchCode_ADO, mmessage, FormFunctions;

{$R *.dfm}

procedure TTozinDeficitsF.enter(qry__init, qry__Tozin: TADOQuery);
var
  b: Boolean;
begin
  if not CheckUserlevel(qry__init.FieldByName('EditLevelID'), qry__Tozin) then
    Abort;
  TozinDeficitsF := TTozinDeficitsF.Create(Application);
  with TozinDeficitsF do
  begin
    try
      qry_DeficitsModified := False;
      qry_Tozin := qry__Tozin;
      qry_init := qry__init;
      SetLookUpCash(qry_Deficits);
      InitForm;
      ShowModal;
    finally
      Free;
    end;
  end;
end;

procedure TTozinDeficitsF.qry_DeficitsAfterDelete(DataSet: TDataSet);
begin
  inherited;
  qry_DeficitsModified := True;
end;

procedure TTozinDeficitsF.qry_DeficitsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('TozinDeficitID').AsInteger :=
    GetANewID(DataSet, Self.Name, 'TozinDeficits', 'TozinDeficitID',
    qryTozin, 1);
  DataSet.FieldByName('TozinID').AsInteger := qry_Tozin.FieldByName('TozinID')
    .AsInteger;
  // DataSet.FieldByName('ServerID').AsInteger:=qry_Items.FieldByName('ServerID').AsInteger;
  // DataSet.FieldByName('YearID').AsInteger:=qry_Items.FieldByName('YearID').AsInteger;
  EdtDeficitID.SetFocus;
end;

procedure TTozinDeficitsF.InitForm;
begin
  with qryTozin do
  begin
    Active := False;
    Parameters.ParamByName('TozinID').Value := qry_Tozin.FieldByName('TozinID')
      .AsInteger;
    Parameters.ParamByName('ServerID').Value :=
      qry_Tozin.FieldByName('ServerID').AsInteger;
    Parameters.ParamByName('YearID').Value := qry_Tozin.FieldByName('YearID')
      .AsInteger;
    Active := True;
  end; // With

  with qry_Deficits do
  begin
    Active := False;
    Parameters.ParamByName('TozinID').Value := qry_Tozin.FieldByName('TozinID')
      .AsInteger;
    Parameters.ParamByName('ServerID').Value :=
      qry_Tozin.FieldByName('ServerID').AsInteger;
    Parameters.ParamByName('YearID').Value := qry_Tozin.FieldByName('YearID')
      .AsInteger;
    Active := True;
  end; // With
  lblDeficitPercent.Visible := qry_init.FieldByName('DeficitsActive')
    .AsInteger = 2;
  edtDeficitPercent.Visible := lblDeficitPercent.Visible;
  setColumns2(DBGrid1, lblDeficitPercent.Visible, 'DeficitPercent');
  SetEdtDef_Add_Dec;
end;

procedure TTozinDeficitsF.SpeedButton1Click(Sender: TObject);
var
  Txt: String;
  b: Boolean;
  Results: array [0 .. 1] of String;
begin
  inherited;
  Txt := StringReplace(qryDeficits.SQL.Text,
    '*,DeficitCo*100 As DeficitPercent',
    'DeficitID,DeficitName+ (CASE DeficitType WHEN 1 ' +
    ' THEN ''(اضافات)'' ELSE ''(كسورات)'' END) as DeficitName', []);
  b := searchCode_ADOF.SearchCode2(DMF.adcBSell, ' كسورات و اضافات  ', Txt,
    ['كد', 'عنوان'], Results, [50, 150], alLeft);
  if b then
  begin
    if not(qry_Deficits.State in dsEditModes) then
      qry_Deficits.Edit;
    qry_Deficits.FieldByName('DeficitID').Value := Results[0];
  end; // if
end;

procedure TTozinDeficitsF.src_DeficitsStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible := qry_Deficits.State in dsEditModes;
  newPanel.Visible := not okPanel.Visible;
  btnClose.Cancel := newPanel.Visible;
  FreeReservedCodes(DMF.adcBSell, '', '', Self.Name);
end;

procedure TTozinDeficitsF.qry_DeficitsAfterPost(DataSet: TDataSet);
begin
  inherited;
  qry_DeficitsModified := True;
  BigMessage('ثبت شد.', 1);
end;

procedure TTozinDeficitsF.EdtDeficitIDExit(Sender: TObject);
begin
  inherited;
  SetEdtDef_Add_Dec
end;

procedure TTozinDeficitsF.EdtDeficitIDKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = vk_space then
    SpeedButton1.Click
end;

procedure TTozinDeficitsF.DBGrid1DrawColumnCell(Sender: TObject;
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

procedure TTozinDeficitsF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 1);
end;

procedure TTozinDeficitsF.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
var
  TozinsEntity: Real;
begin
  inherited;
  if qry_DeficitsModified then
    try
      qry_Deficits.DisableControls;

    finally
      qry_Deficits.EnableControls
    end;

end;

procedure TTozinDeficitsF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
end;

procedure TTozinDeficitsF.qry_DeficitsDeficitAddDecChange(Sender: TField);
begin
  inherited;
  if (Sender.AsFloat <> 0) then
  begin
    qry_DeficitsDeficitCo.OnChange := nil;
    qry_DeficitsDeficitCo.AsFloat := Sender.AsFloat;
    if qry_init.FieldByName('DeficitsActive').AsInteger = 2 then
      qry_DeficitsDeficitPercent.AsFloat :=
        roundto(qry_DeficitsDeficitCo.AsFloat * 100, -4);
    qry_DeficitsDeficitCo.OnChange := qry_DeficitsDeficitCoChange;
  end;

end;

procedure TTozinDeficitsF.qry_DeficitsDeficitCoChange(Sender: TField);
begin
  inherited;
  if qry_init.FieldByName('DeficitsActive').AsInteger = 2 then
  begin
    qry_DeficitsDeficitCo.OnChange := nil;
    qry_DeficitsDeficitPercent.AsFloat :=
      roundto(qry_DeficitsDeficitCo.AsFloat * 100, -4);
    qry_DeficitsDeficitCo.OnChange := qry_DeficitsDeficitCoChange;

  end;
end;

procedure TTozinDeficitsF.qry_DeficitsDeficitIDChange(Sender: TField);
begin
  inherited;
  qry_DeficitsDeficitCo.AsFloat := qry_Deficits_DeficitCo.AsFloat;
  SetEdtDef_Add_Dec
end;

procedure TTozinDeficitsF.qry_DeficitsDeficitPercentChange(Sender: TField);
begin
  inherited;
  if qry_init.FieldByName('DeficitsActive').AsInteger = 2 then
  begin
    qry_DeficitsDeficitPercent.OnChange := nil;
    qry_DeficitsDeficitCo.AsFloat :=
      roundto(qry_DeficitsDeficitPercent.AsFloat / 100, -4);
    qry_DeficitsDeficitPercent.OnChange := qry_DeficitsDeficitPercentChange;

  end;
end;

procedure TTozinDeficitsF.qry_DeficitsBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if get_response('آيا براي حذف مطمئن هستيد؟') <> mrYes then
    Abort;
end;

procedure TTozinDeficitsF.qry_DeficitsBeforePost(DataSet: TDataSet);
begin
  inherited;
  if not CheckRequiredFields(qry_Deficits) then
    Abort;
  DataSet.FieldByName('DeficitAdd').AsCurrency :=
    roundto(DataSet.FieldByName('DeficitAdd').AsFloat, 0);
  DataSet.FieldByName('DeficitDec').AsCurrency :=
    roundto(DataSet.FieldByName('DeficitDec').AsFloat, 0);
end;

procedure TTozinDeficitsF.qry_DeficitsAfterScroll(DataSet: TDataSet);
begin
  inherited;
  SetEdtDef_Add_Dec
end;

procedure TTozinDeficitsF.SetEdtDef_Add_Dec;
begin
  if qry_Deficits.FieldByName('_DeficitType').AsInteger = 1 then
    EdtDef_Add_Dec.DataField := 'DeficitAdd'
  else
    EdtDef_Add_Dec.DataField := 'DeficitDec';
end;

procedure TTozinDeficitsF.actPrintExecute(Sender: TObject);
var
  ReportFileName: String;
begin
  inherited;
  ReportFileName := LowerCase(qry_init.FieldByName('PerformFileName').AsString);
  ReportFileName := StringReplace(ReportFileName, '.rtm', 'Deficits.rtm', []);
  InitReportFile(ppReport1, ReportFileName, True, False, 'فرم', False);
  // ppReport1.Print;
end;

procedure TTozinDeficitsF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TTozinDeficitsF.ppLblPrintDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TTozinDeficitsF.ppSysVarPageNoGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

end.
