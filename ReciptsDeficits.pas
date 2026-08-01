unit ReciptsDeficits;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template4, DBActns, ActnList, StdCtrls, Buttons, ExtCtrls,
  DBCtrls, Mask, Grids, Vcl.DBGrids, DB, ADODB, ppBands, ppCtrls, ppVar,
  ppPrnabl, ppClass, ppCache, ppDB, ppDBPipe, ppComm, ppRelatv, ppProd,
  ppReport, Math, SumDBGrid, ppParameter, ppDesignLayer, System.Actions;

type
  TReciptsDeficitsF = class(TTemplate4F)
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
    SrcRecipts: TDataSource;
    qryRecipts: TADOQuery;
    qryReciptsReciptID: TIntegerField;
    qryReciptsStoreID: TSmallintField;
    qryReciptsc_StoreName: TStringField;
    qryReciptsReciptDate: TStringField;
    qryReciptsEntity: TFloatField;
    qryReciptsWeight: TFloatField;
    qryReciptsPrice: TBCDField;
    qryReciptsReciptNumber: TIntegerField;
    qry_Deficits: TADOQuery;
    qry_DeficitsReciptDeficitID: TIntegerField;
    qry_DeficitsReciptID: TIntegerField;
    qry_DeficitsDeficitID: TSmallintField;
    qry_DeficitsDeficitAdd: TBCDField;
    qry_DeficitsDeficitDec: TBCDField;
    qry_DeficitsDeficitNote: TStringField;
    qry_Deficits_DeficitName: TStringField;
    qry_Deficits_CalculationType: TIntegerField;
    qry_Deficits_DeficitCo: TFloatField;
    qry_Deficits_ExportType: TIntegerField;
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
    SumGrid1: TSumGrid;
    qry_DeficitsDeficitAddDec: TBCDField;
    qry_DeficitsYearID: TIntegerField;
    qry_DeficitsServerID: TIntegerField;
    qryReciptsServerID: TIntegerField;
    qryReciptsYearID: TIntegerField;
    qryReciptsDocNo: TIntegerField;
    qry_DeficitsArzAmount: TBCDField;
    lblArzAmount: TLabel;
    edtArzAmount: TDBEdit;
    qryReciptsRialsEqual: TBCDField;
    DataSetDelete: TAction;
    qry_DeficitsDeficitCo: TFloatField;
    qry_DeficitsDeficitPercent: TFloatField;
    edtDeficitPercent: TDBEdit;
    lblDeficitPercent: TLabel;
    qryDeficitsDeficitPercent: TFloatField;
    ADOQuery1: TADOQuery;
    qry_DeficitsTopicCode: TLargeintField;
    qry_DeficitsDetailCode: TStringField;
    qry_DeficitsCTopicCode: TStringField;
    qry_DeficitsCTopicCode2: TStringField;
    qry_DeficitsCTopicCode3: TStringField;
    BitBtn1: TBitBtn;
    actAccCoding: TAction;
    Panel5: TPanel;
    newPanel: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    okPanel: TPanel;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    CmbArzTypeID: TDBComboBox;
    lblarz: TLabel;
    qry_DeficitsArzTypeID: TIntegerField;
    Panel6: TPanel;
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
    procedure qry_DeficitsBeforeEdit(DataSet: TDataSet);
    procedure qry_DeficitsBeforePost(DataSet: TDataSet);
    procedure qry_DeficitsAfterScroll(DataSet: TDataSet);
    procedure actPrintExecute(Sender: TObject);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure ppLblPrintDateGetText(Sender: TObject; var Text: String);
    procedure ppSysVarPageNoGetText(Sender: TObject; var Text: String);
    procedure DataSetDeleteExecute(Sender: TObject);
    procedure qry_DeficitsDeficitCoChange(Sender: TField);
    procedure qry_DeficitsDeficitAddDecChange(Sender: TField);
    procedure qry_DeficitsDeficitPercentChange(Sender: TField);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure qry_DeficitsAfterDelete(DataSet: TDataSet);
    procedure DBGrid1EditButtonClick(Sender: TObject);
    procedure actAccCodingExecute(Sender: TObject);
  private
    { Private declarations }
    // SetReciptID: Integer;
    _CustomersDiscount: Real;
    qry_DeficitsModified: Boolean;
    procedure InitForm;
    procedure CalcReciptsPriceEntity(var ReciptsPrice: Currency;
      var ReciptsEntity: Real; CalculationType: Integer);
    procedure Calc_DeficitsCOChange;
  public
    { Public declarations }
    qry_Items, qry_init, qry_Recipts: TADOQuery;
    FormInOutds: String;
    ReciptsPrice: Currency;
    procedure enter(qry__Items, qry__init, qry__Recipts: TADOQuery;
      FormOutput: Boolean; CustomersDiscount: Real; var Edit4Deficits: Boolean);
  end;

var
  ReciptsDeficitsF: TReciptsDeficitsF;

implementation

uses DM, GlobalPro, searchCode_ADO, mmessage, FormFunctions, FaraConsts,
  Account;

{$R *.dfm}

procedure TReciptsDeficitsF.enter(qry__Items, qry__init,
  qry__Recipts: TADOQuery; FormOutput: Boolean; CustomersDiscount: Real;
  var Edit4Deficits: Boolean);
var
  b: Boolean;
begin
  Edit4Deficits := qry__init.FieldByName('AutoCorrelate').AsInteger = 1;
  if not CheckUserlevel(qry__init.FieldByName('EditLevelID'), qry__Recipts) then
    Abort;
  // qryRecipts.Edit
  // خط بالا باید با شرط خاصی فعال شود شرکت کابل تک مشکل داشت
  ReciptsDeficitsF := TReciptsDeficitsF.Create(Application);
  with ReciptsDeficitsF do
  begin
    try
      qry_DeficitsModified := False;
      FormInOutds := 'Input';
      if FormOutput then
        FormInOutds := 'Output';
      qry_Items := qry__Items;
      qry_init := qry__init;
      qry_Recipts := qry__Recipts;

      b := qry__init.FieldByName('ArzActive').AsInteger > 0;
      lblArzAmount.Visible := b;
      edtArzAmount.Visible := b;
      setColumns2(DBGrid1, b, 'ArzAmount');
      CmbArzTypeID.Visible := b;
      lblarz.Visible := b;

      SetLookUpCash(qry_Deficits);
      _CustomersDiscount := CustomersDiscount;
      InitForm;
      ShowModal;
    finally
      // qryRecipts.Edit
      // qryRecipts.Post;
      Free;
      Edit4Deficits := False;
    end; // try
  end; // with
end;

procedure TReciptsDeficitsF.qry_DeficitsAfterDelete(DataSet: TDataSet);
begin
  inherited;
  qry_DeficitsModified := True;
end;

procedure TReciptsDeficitsF.qry_DeficitsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('ReciptDeficitID').AsInteger :=
    GetANewID(DataSet, Self.Name, 'ReciptsDeficits', 'ReciptDeficitID',
    qryRecipts, 1);
  DataSet.FieldByName('ReciptID').AsInteger := qry_Items.FieldByName('ReciptID')
    .AsInteger;
  // DataSet.FieldByName('ServerID').AsInteger:=qry_Items.FieldByName('ServerID').AsInteger;
  // DataSet.FieldByName('YearID').AsInteger:=qry_Items.FieldByName('YearID').AsInteger;
  EdtDeficitID.SetFocus;
end;

procedure TReciptsDeficitsF.InitForm;
var
  b: Boolean;
begin
  b := qry_init.FieldByName('ArzActive').AsInteger > 0;
  if b then
    with DMf.qryTmpTmp do
    begin
      Active := False;
      SQL.Text := 'SELECT CurrenciesID, CurrenciesName FROM Currencies';
      Active := True;
      while not Eof do
      begin
        CmbArzTypeID.Items.AddObject(Fields[1].AsString,
          TObject(Fields[0].AsInteger));
        Next;
      end;
      Active := False;
    end; // with

  with qryRecipts do
  begin
    Active := False;
    Parameters.ParamByName('ReciptID').Value :=
      qry_Items.FieldByName('ReciptID').AsInteger;
    Parameters.ParamByName('ServerID').Value :=
      qry_Items.FieldByName('ServerID').AsInteger;
    Parameters.ParamByName('YearID').Value := qry_Items.FieldByName('YearID')
      .AsInteger;
    Active := True;
  end; // With
  if qryRecipts.FieldByName('DocNo').AsInteger > 0 then
  begin
    qry_Deficits.LockType := ltReadOnly;
    Warn2('روی این فرم سند صادر شده است و قابل ویرایش نیست', 0);
  end;
  with qryDeficits do
  begin
    Active := False;
    SQL.Text := StringReplace(SQL.Text, ':ReciptDateFrom',
      QuotedStr(qryRecipts.FieldByName('ReciptDate').AsString), [rfReplaceAll]);
    SQL.Text := StringReplace(SQL.Text, ':ReciptDateTo',
      QuotedStr(qryRecipts.FieldByName('ReciptDate').AsString), [rfReplaceAll]);
  end;
  with qry_Deficits do
  begin
    Active := False;
    Parameters.ParamByName('ReciptID').Value :=
      qry_Items.FieldByName('ReciptID').AsInteger;
    Parameters.ParamByName('ServerID').Value :=
      qry_Items.FieldByName('ServerID').AsInteger;
    Parameters.ParamByName('YearID').Value := qry_Items.FieldByName('YearID')
      .AsInteger;
    Active := True;
  end; // With
  lblDeficitPercent.Visible := qry_init.FieldByName('DeficitsActive')
    .AsInteger = 2;
  edtDeficitPercent.Visible := lblDeficitPercent.Visible;
  setColumns2(DBGrid1, lblDeficitPercent.Visible, 'DeficitPercent');

  with qry_init do
  begin
    b := ((FieldByName('Settings').AsLargeInt and
      Integer(CHkAccOnReciptsDeficits)) <> 0);
    setColumns2(DBGrid1, b and (FieldByName('TopicCodeActive').AsInteger = 1),
      'TopicCode');
    setColumns2(DBGrid1, b and (FieldByName('DetailCodeActive').AsInteger = 1),
      'DetailCode');
    setColumns2(DBGrid1, b and (FieldByName('CTopicCode1Active').AsInteger = 1),
      'CTopicCode');
    setColumns2(DBGrid1, b and (FieldByName('CTopicCode2Active').AsInteger = 1),
      'CTopicCode2');
    setColumns2(DBGrid1, b and (FieldByName('CTopicCode3Active').AsInteger = 1),
      'CTopicCode3');
  end;

end;

procedure TReciptsDeficitsF.SpeedButton1Click(Sender: TObject);
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
  b := searchCode_ADOF.SearchCode2(DMf.adcBSell, ' كسورات و اضافات  ', Txt,
    ['كد', 'عنوان'], Results, [50, 150], alLeft);
  if b then
  begin
    if not(qry_Deficits.State in dsEditModes) then
      qry_Deficits.Edit;
    qry_Deficits.FieldByName('DeficitID').Value := Results[0];
  end; // if
end;

procedure TReciptsDeficitsF.src_DeficitsStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible := qry_Deficits.State in dsEditModes;
  newPanel.Visible := not okPanel.Visible;
  btnClose.Cancel := newPanel.Visible;
  FreeReservedCodes(DMf.adcBSell, '', '', Self.Name);
end;

procedure TReciptsDeficitsF.qry_DeficitsAfterPost(DataSet: TDataSet);
begin
  inherited;
  qry_DeficitsModified := True;
  SumGrid1.Active := False;
  SumGrid1.Active := True;
  BigMessage('ثبت شد.', 1);
end;

procedure TReciptsDeficitsF.EdtDeficitIDKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = vk_space then
    SpeedButton1.Click
end;

procedure TReciptsDeficitsF.DataSetDeleteExecute(Sender: TObject);
var
  s: string;
begin
  inherited;
  if qryRecipts.FieldByName('DocNo').AsInteger > 0 then
    Exit;
  if get_response('آيا براي حذف اين كد مطمئن هستيد؟') <> mrYes then
    Exit;
  s := 'Delete FROM ReciptsDeficits WHERE (ReciptID = %d) AND ( YearID = %d )' +
    ' AND ( ServerID = %d ) AND ( ReciptDeficitID = %d )';
  s := Format(s, [qry_DeficitsReciptID.AsInteger, qry_DeficitsYearID.AsInteger,
    qry_DeficitsServerID.AsInteger, qry_DeficitsReciptDeficitID.AsInteger]);
  DMf.adcBSell.Execute(s);
  qry_Deficits.Requery();
end;

procedure TReciptsDeficitsF.DBGrid1DrawColumnCell(Sender: TObject;
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

procedure TReciptsDeficitsF.DBGrid1EditButtonClick(Sender: TObject);
var
  aDataSet: TDataSet;
  i: SmallInt;
begin
  inherited;
  i := (Sender as TDBGrid).SelectedIndex;
  aDataSet := (Sender as TDBGrid).DataSource.DataSet;
  (Sender as TDBGrid).SelectedIndex := i;
  if not(aDataSet.State in dsEditModes) then
    aDataSet.Edit;

  if DBGrid1.Columns[i].FieldName = 'TopicCode' then
    AccSpeedButtonTopicCode(aDataSet, 'TopicCode');

  if DBGrid1.Columns[i].FieldName = 'DetailCode' then
    AccSpeedButtonDetailCode(aDataSet, 'DetailCode', 'TopicCode');

  if DBGrid1.Columns[i].FieldName = 'CTopicCode' then
    AccSpeedButtonCTopicCode(aDataSet, 'CTopicCode', 'TopicCode');

  if DBGrid1.Columns[i].FieldName = 'CTopicCode2' then
    AccSpeedButtonCTopicCode2(aDataSet, 'CTopicCode2', 'CTopicCode', True,
      'TopicCode');

  if DBGrid1.Columns[i].FieldName = 'CTopicCode3' then
    AccSpeedButtonCTopicCode3(aDataSet, 'CTopicCode3', 'CTopicCode', True,
      'TopicCode', 'CTopicCode2');

end;

procedure TReciptsDeficitsF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 1);
end;

procedure TReciptsDeficitsF.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
var
  ReciptsEntity: Real;
begin
  inherited;
  if qry_DeficitsModified then
    try
      qry_Deficits.DisableControls;
      InsertReciptsDeficitsCalc(qry_Recipts, qry_Items, qry_Deficits, nil,
        qry_init.FieldByName('StepCorrelate').AsInteger);
    finally
      qry_Deficits.EnableControls
    end;

  if ReciptsPrice = 0 then
    CalcReciptsPriceEntity(ReciptsPrice, ReciptsEntity,
      qry_Deficits.FieldByName('_CalculationType').AsInteger);
  if ReciptsPrice + SumGrid1.GetValueField('DeficitAddDec') < 0 then
    CanClose := get_response('مبلغ با اعمال کسورات/اضافات منفی می شود !!' +
      #13#10 + 'آيا از خروج مطمئن هستيد؟') = mrYes;
end;

procedure TReciptsDeficitsF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
end;

procedure TReciptsDeficitsF.qry_DeficitsDeficitAddDecChange(Sender: TField);
begin
  inherited;
  if (ReciptsPrice <> 0) and (Sender.AsFloat <> 0) then
  begin
    qry_DeficitsDeficitCo.OnChange := nil;
    qry_DeficitsDeficitCo.AsFloat := Sender.AsFloat / ReciptsPrice;
    if qry_init.FieldByName('DeficitsActive').AsInteger = 2 then
      qry_DeficitsDeficitPercent.AsFloat :=
        roundto(qry_DeficitsDeficitCo.AsFloat * 100, -4);
    qry_DeficitsDeficitCo.OnChange := qry_DeficitsDeficitCoChange;
  end;

end;

procedure TReciptsDeficitsF.qry_DeficitsDeficitCoChange(Sender: TField);
begin
  inherited;
  if qry_init.FieldByName('DeficitsActive').AsInteger = 2 then
  begin
    qry_DeficitsDeficitCo.OnChange := nil;
    qry_DeficitsDeficitPercent.AsFloat :=
      roundto(qry_DeficitsDeficitCo.AsFloat * 100, -4);
    qry_DeficitsDeficitCo.OnChange := qry_DeficitsDeficitCoChange;
    Calc_DeficitsCOChange;
  end;
end;

procedure TReciptsDeficitsF.qry_DeficitsDeficitIDChange(Sender: TField);
begin
  inherited;
  qry_DeficitsDeficitCo.AsFloat := qry_Deficits_DeficitCo.AsFloat;
  Calc_DeficitsCOChange;
end;

procedure TReciptsDeficitsF.qry_DeficitsDeficitPercentChange(Sender: TField);
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

procedure TReciptsDeficitsF.Calc_DeficitsCOChange;
var
  Def_Add_Dec: String;
  ReciptsEntity: Real;
begin
  CalcReciptsPriceEntity(ReciptsPrice, ReciptsEntity,
    qry_Deficits.FieldByName('_CalculationType').AsInteger);
  if qry_Deficits.FieldByName('_DeficitType').AsInteger = 1 then
  begin
    Def_Add_Dec := 'DeficitAdd';
    qry_Deficits.FieldByName('DeficitDec').Value := 0;
  end // if
  else
  begin
    Def_Add_Dec := 'DeficitDec';
    qry_Deficits.FieldByName('DeficitAdd').Value := 0;
  end; // else
  EdtDef_Add_Dec.DataField := Def_Add_Dec;

  case qry_Deficits.FieldByName('_CalculationType').AsInteger of
    // ______ضريب مبلغ فروش'
    0, 6:
      qry_Deficits.FieldByName(Def_Add_Dec).Value :=
        qry_Deficits.FieldByName('DeficitCo').AsFloat * ReciptsPrice;
    // 'ضريب مقدار '
    1:
      qry_Deficits.FieldByName(Def_Add_Dec).Value :=
        qry_Deficits.FieldByName('DeficitCo').AsFloat * ReciptsEntity;
    // 'مبلغ ثابت '
    2:
      qry_Deficits.FieldByName(Def_Add_Dec).Value :=
        qry_Deficits.FieldByName('DeficitCo').AsFloat;
    // روند بر اساس ضريب
    3, 5:
      qry_Deficits.FieldByName(Def_Add_Dec).Value :=
        ReciptsPrice mod qry_Deficits.FieldByName('DeficitCo').Value;

    4:
      qry_Deficits.FieldByName(Def_Add_Dec).Value := _CustomersDiscount *
        ReciptsPrice / 100;

  end; // end case
  qry_Deficits.FieldByName(Def_Add_Dec).AsFloat :=
    roundto(qry_Deficits.FieldByName(Def_Add_Dec).AsFloat, 0);

  if qry_DeficitsArzAmount.AsFloat <> 0 then
  begin
    qry_Deficits.FieldByName(Def_Add_Dec).AsFloat :=
      roundto((qry_DeficitsArzAmount.AsFloat * qryReciptsRialsEqual.AsFloat), 0)
  end;

  // qry_Deficits.FieldByName('_ExportType').AsInteger=

end;

procedure TReciptsDeficitsF.CalcReciptsPriceEntity(var ReciptsPrice: Currency;
  var ReciptsEntity: Real; CalculationType: Integer);
var
  Range: Boolean;
  perDeficits: Currency;
begin
  // Range:=False;
  perDeficits := SumReciptsDeficits(qry_Items,
    qry_Deficits.FieldByName('DeficitID').AsInteger);
  With DMf.qryTmpTmp do
  begin
    Active := False;
    SQL.Text :=
      Format('SELECT COUNT(*) FROM DeficitsCorrelation WHERE DeficitID = %d',
      [qry_Deficits.FieldByName('DeficitID').AsInteger]);;
    Active := True;
    Range := Fields[0].AsInteger > 0;
    Active := False;
  end;

  if Range then
    With DMf.qryTmpTmp do
    begin
      Active := False;
      // SQL.Text:='SELECT SUM(ReciptItems.InputEntity + ReciptItems.OutputEntity) AS Entity, ';
      // SQL.Add(  'SUM(ReciptItems.TotalInputPrice + ReciptItems.TotalOutputPrice) AS Price');
      // SQL.Add(  'FROM Deficits INNER JOIN StuffsDefi  citsRange ON Deficits.DeficitID = StuffsDefi  citsRange.DeficitID INNER JOIN');
      // SQL.Add(  'ReciptItems ON StuffsDefi  citsRange.c_StuffCode = ReciptItems.StuffCode');
      // SQL.Add(  'WHERE ReciptItems.ReciptID='+IntToStr(ReciptID));
      // SQL.Add(  'AND (StuffsDefi   citsRange.DeficitID = '+qry_Deficits.FieldByName('DeficitID').AsString+')');

      SQL.Text :=
        'SELECT SUM(ReciptItems.InputEntity + ReciptItems.OutputEntity) AS Entity, ';
      SQL.Add('SUM(ReciptItems.TotalInputPrice + ReciptItems.TotalOutputPrice) AS Price,');
      SQL.Add('SUM(ReciptItems.TotallSellPrice ) AS TotallSellPrice');
      SQL.Add('FROM DeficitsCorrelationRecipts INNER JOIN');
      SQL.Add('ReciptItems ON DeficitsCorrelationRecipts.ReciptID = ReciptItems.ReciptID');
      SQL.Add('AND DeficitsCorrelationRecipts.YearID = ReciptItems.YearID');
      SQL.Add('AND DeficitsCorrelationRecipts.ServerID = ReciptItems.ServerID');

      SQL.Add('WHERE ReciptItems.ReciptID = ' +
        IntToStr(qry_Items.FieldByName('ReciptID').AsInteger));
      SQL.Add('AND   ReciptItems.ServerID = ' +
        IntToStr(qry_Items.FieldByName('ServerID').AsInteger));
      SQL.Add('AND   ReciptItems.YearID   = ' +
        IntToStr(qry_Items.FieldByName('YearID').AsInteger));
      SQL.Add('AND (DeficitsCorrelationRecipts.DeficitID = ' +
        qry_Deficits.FieldByName('DeficitID').AsString + ')');

      Active := True;

      if CalculationType in [5, 6] then
        ReciptsPrice := FieldByName('TotallSellPrice').AsCurrency + perDeficits
      else
        ReciptsPrice := FieldByName('Price').AsCurrency + perDeficits;

      ReciptsEntity := FieldByName('Entity').AsFloat;
      Active := False;
    end
  else
  begin
    if CalculationType in [5, 6] then
      ReciptsPrice := CalcSumFileds(qry_Items, 'TotallSellPrice') + perDeficits
    else
      ReciptsPrice := CalcSumFileds(qry_Items, 'Total' + FormInOutds + 'Price')
        + perDeficits;

    ReciptsEntity := CalcSumFileds(qry_Items, FormInOutds + 'Entity');
  end;
end;

procedure TReciptsDeficitsF.qry_DeficitsBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  if not CheckMakeDoc(qryRecipts) then
    Abort;
  if not CheckDay4Edit(qry_init, qryRecipts) then
    Abort;
  /// if qry_Deficits.FieldByName('_ExportType').AsInteger=1 then begin
  // /   Warn('ثبت توسط سيستم انجام مي شود.‏');
  // Abort;
  // end;//if
end;

procedure TReciptsDeficitsF.qry_DeficitsBeforePost(DataSet: TDataSet);
begin
  inherited;
  if not CheckRequiredFields(qry_Deficits) then
    Abort;
  DataSet.FieldByName('DeficitAdd').AsCurrency :=
    roundto(DataSet.FieldByName('DeficitAdd').AsFloat, 0);
  DataSet.FieldByName('DeficitDec').AsCurrency :=
    roundto(DataSet.FieldByName('DeficitDec').AsFloat, 0);
end;

procedure TReciptsDeficitsF.qry_DeficitsAfterScroll(DataSet: TDataSet);
begin
  inherited;
  if qry_Deficits.FieldByName('_DeficitType').AsInteger = 1 then
    EdtDef_Add_Dec.DataField := 'DeficitAdd'
  else
    EdtDef_Add_Dec.DataField := 'DeficitDec';

end;

procedure TReciptsDeficitsF.actAccCodingExecute(Sender: TObject);
begin
  inherited;
  AccountF.enter(qry_Deficits)
end;

procedure TReciptsDeficitsF.actPrintExecute(Sender: TObject);
var
  ReportFileName: String;
begin
  inherited;
  ReportFileName := LowerCase(qry_init.FieldByName('PerformFileName').AsString);
  ReportFileName := StringReplace(ReportFileName, '.rtm', 'Deficits.rtm', []);
  InitReportFile(ppReport1, ReportFileName, True, False, 'فرم', False);
  // ppReport1.Print;
end;

procedure TReciptsDeficitsF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TReciptsDeficitsF.ppLblPrintDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TReciptsDeficitsF.ppSysVarPageNoGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

end.
