// Mostafa
unit FormInfo_3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, Grids, Vcl.DBGrids, DB, ADODB, Mask, DBCtrls, DM, strutils, ppCtrls,
  ppBands, ppVar, ppPrnabl, ppClass, ppDB, ppCache, ppDBPipe, ppComm,
  ppRelatv, ppProd, ppReport, ppStrtch, ppSubRpt, ppParameter, ppDesignLayer,
  System.ImageList, System.Actions;

type
  TFormInfo_3F = class(Ttemplate2MDIF)
    DBGrid1: TDBGrid;
    qry_Master: TADOQuery;
    srcMaster: TDataSource;
    qry_MasterInfoID: TIntegerField;
    qry_MasterInfoName_L1: TStringField;
    qry_MasterInfoName_L2: TStringField;
    Panel1: TPanel;
    qry_item: TADOQuery;
    src_Item: TDataSource;
    qry_itemFormInfoID: TIntegerField;
    qry_itemFormType: TSmallintField;
    qry_itemInfoID: TIntegerField;
    qry_itemInfoName_L1: TStringField;
    qry_itemInfoName_L2: TStringField;
    qry_itemPrvInfoID: TIntegerField;
    qry_itemAmount: TBCDField;
    qry_itemAmount2: TBCDField;
    qry_itemCoefficient: TFloatField;
    qry_itemStandardDays: TFloatField;
    qry_itemStandardTimes: TFloatField;
    qry_itemAccTopicCode: TIntegerField;
    qry_itemAccDetailCode: TIntegerField;
    qry_itemAccCTopicode: TIntegerField;
    qry_itemAccCTopicode2: TIntegerField;
    qry_itemCalCulateType: TWordField;
    qry_itemRecallFormInfoID1: TStringField;
    qry_itemRecallFormInfoID2: TStringField;
    qry_itemWordDocuments: TStringField;
    qry_itemRecalKindClock: TWordField;
    qry_Detail: TADOQuery;
    src_Detail: TDataSource;
    qry_DetailItemID: TIntegerField;
    qry_DetailSalaryID: TIntegerField;
    qry_DetailCoefficient: TFloatField;
    qry_DetailAmount: TBCDField;
    qry_MasterFormInfoID: TIntegerField;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    pnlFrmCaption1: TPanel;
    pnlFrmCaption2: TPanel;
    lblInfoName_L1: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    lblInfoName_L2: TLabel;
    DBEdit5: TDBEdit;
    lblAmount: TLabel;
    DBEdit6: TDBEdit;
    Label6: TLabel;
    DBEdit7: TDBEdit;
    qry_DetailFormInfoID: TIntegerField;
    qry_wageInfo: TADOQuery;
    DataSetEdit2: TDataSetEdit;
    DataSetPost2: TDataSetPost;
    DataSetCancel2: TDataSetCancel;
    DataSetDelete1: TDataSetDelete;
    qry_Detail_InfoName_L1: TStringField;
    qry_Detail_InfoName_L2: TStringField;
    Panel6: TPanel;
    PnlUnderButton_Detail: TPanel;
    newPanel_Detail: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn6: TBitBtn;
    okPanel_Detail: TPanel;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    DBGrid2: TDBGrid;
    actSort: TAction;
    BitBtn11: TBitBtn;
    BitBtn12: TBitBtn;
    actSendToExcel: TAction;
    BitBtn13: TBitBtn;
    actCalculate: TAction;
    Panel4: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    SpeedButton1: TSpeedButton;
    edtCaption: TDBEdit;
    DBNavigator1: TDBNavigator;
    qryInitForm: TADOQuery;
    qry_DetailCoefficient2: TFloatField;
    BitBtn14: TBitBtn;
    actPrint: TAction;
    ppReport1: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLabel12: TppLabel;
    ppSysVarPageNo: TppSystemVariable;
    pplblPrintDate: TppLabel;
    ppLabel13: TppLabel;
    ppLblFromCaption: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppDetailBand3: TppDetailBand;
    ppDBText4: TppDBText;
    ppLabel14: TppLabel;
    ppDBText5: TppDBText;
    ppSummaryBand2: TppSummaryBand;
    ppLine9: TppLine;
    ppDBCalc2: TppDBCalc;
    ppLabel15: TppLabel;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppFooterBand2: TppFooterBand;
    ppLine12: TppLine;
    ppSummaryBand3: TppSummaryBand;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppLabel16: TppLabel;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDBPipeline1: TppDBPipeline;
    ppDBPipeline2: TppDBPipeline;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    actAdd: TAction;
    BitBtn15: TBitBtn;
    lblTaxCode: TLabel;
    qry_itemTaxCode: TWordField;
    okPanel: TPanel;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    newPanel: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    edtTaxCode: TDBEdit;
    procedure qry_MasterAfterScroll(DataSet: TDataSet);
    procedure qry_itemAfterScroll(DataSet: TDataSet);
    procedure qry_itemAfterInsert(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure src_ItemStateChange(Sender: TObject);
    procedure qry_itemAfterPost(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure src_DetailStateChange(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure qry_DetailCoefficientChange(Sender: TField);
    procedure qry_DetailAfterEdit(DataSet: TDataSet);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure qry_itemBeforeDelete(DataSet: TDataSet);
    procedure qry_itemBeforeCancel(DataSet: TDataSet);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actSendToExcelExecute(Sender: TObject);
    procedure actCalculateExecute(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure qry_itemCoefficientChange(Sender: TField);
    procedure actPrintExecute(Sender: TObject);
    procedure pplblPrintDateGetText(Sender: TObject; var Text: String);
    procedure ppSysVarPageNoGetText(Sender: TObject; var Text: String);
    procedure qry_itemBeforePost(DataSet: TDataSet);
    procedure actAddExecute(Sender: TObject);
  private
    FormType: Byte;
    KindAmount: Byte;
    MySQLText: String;
    procedure initForm;
    function calculateAmount(aDataset: TADOQuery;
      aFormInfoID: String = ''): boolean;
    procedure initqry_wageInfo;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormInfo_3F: TFormInfo_3F;

implementation

uses Math, GlobalPro, SalaryFunctions, mmessage, search2, sort2,
  searchCode_ADO, ChooseItem;

{$R *.dfm}
{ TFormInfo_3F }

procedure TFormInfo_3F.initqry_wageInfo;
begin
  if qryInitForm.FieldByName('ContactFormType').AsInteger = 0 then
    with qry_wageInfo do
    begin
      SQL.Text := 'SELECT * FROM';
      SQL.Add('Pay.FormsInfo INNER JOIN');
      SQL.Add('Pay.FormTypes ON FormsInfo.FormType = FormTypes.FormType');
      SQL.Add('WHERE (FormTypes.SalaryKind BETWEEN 1 AND 4)');
    end
  else
    with qry_wageInfo do
    begin
      SQL.Text := 'SELECT * FROM';
      SQL.Add('Pay.FormsInfo INNER JOIN');
      SQL.Add('Pay.FormTypes ON FormsInfo.FormType = FormTypes.FormType');
      SQL.Add('WHERE (FormTypes.FormType = ' + qryInitForm.FieldByName
        ('ContactFormType').AsString + ')');
    end;
  MySQLText := qry_wageInfo.SQL.Text;
end;

procedure TFormInfo_3F.initForm;
begin
  with qryInitForm do
  begin
    Active := False;
    Parameters.ParamByName('FormType').Value := FormType;
    Active := True;
    initqry_wageInfo;
    lblCaption.Hint := IntToStr(FormType);
    DBGrid2.Columns[4].ReadOnly := FieldByName('ChangeAmountActive')
      .AsInteger <> 1;
    KindAmount := FieldByName('KargozinyEffectKind').AsInteger;
    Panel4.Visible := FieldByName('RecallFormTypes').AsInteger <> 0;
    Caption := 'À»  ' + FieldByName('FormCaption_L1').AsString;
    DBEdit7.Visible := FieldByName('CoefficientActive').AsInteger = 1;
    Label6.Visible := DBEdit7.Visible;
    DBGrid2.Columns[3].Visible := DBEdit7.Visible;
    // DBGrid2.Columns[4].Visible:=DBEdit7.Visible;
    DBEdit6.Visible := FieldByName('CoefficientActive').AsInteger = 1;
    lblAmount.Visible := DBEdit6.Visible;
    if FieldByName('AmountCaption').AsString <> '' then
    begin
      lblAmount.Caption := FieldByName('AmountCaption').AsString;
      qry_itemAmount.DisplayLabel := lblAmount.Caption;
      qry_DetailAmount.DisplayLabel := lblAmount.Caption;
    end;

    // DBGrid2.Columns[5].Visible:=DBEdit7.Visible;
    if optP.primaryLanguage = 1 then
      edtCaption.DataField := 'InfoName_L1';
    if optP.primaryLanguage = 2 then
      edtCaption.DataField := 'InfoName_L2';

    edtTaxCode.Visible := qryInitForm.FieldByName('TaxCodeShow').AsInteger > 0;
    lblTaxCode.Visible := edtTaxCode.Visible;

    // ---------------------------Set_Qry_Master---------------------------------
    with qry_item do
    begin
      Active := False;
      Parameters.ParamByName('type').Value := FormType;
      Active := True;
    end; // with

    with qry_Master do
    begin
      Active := False;
      Parameters.ParamByName('type').Value :=
        qryInitForm.FieldByName('RecallFormTypes').AsInteger;
      Active := True;
    end; // with

    // ---------------------------Set_Qry_item-----------------------------------
    with qry_item do
    begin
      Active := False;
      FieldByName('InfoName_L1').DisplayLabel := '⁄‰Ê«‰(' +
        qryInitForm.FieldByName('FormCaption_l1').AsString + ')';
      FieldByName('InfoName_L2').DisplayLabel := '⁄‰Ê«‰(' +
        qryInitForm.FieldByName('FormCaption_l1').AsString + ')';
      // lblInfoName_L1.Caption:=FieldByName('InfoName_L1').DisplayLabel;
      // lblInfoName_L2.Caption:=FieldByName('InfoName_L2').DisplayLabel;
      Active := True;
    end; // with

    qry_itemInfoID.ReadOnly := FieldByName('PrefixInfoID').AsInteger = 2;

    Active := False;
  end; // with
  // ---------------------------setpanelInfoName---------------------------------
  setColumns(DBGrid1, '#02', optP.LanguageDisplay1);
  setColumns(DBGrid1, '#03', optP.LanguageDisplay2);
  setColumns(DBGrid2, '#01', optP.LanguageDisplay1);
  setColumns(DBGrid2, '#02', optP.LanguageDisplay2);
  pnlFrmCaption1.Visible := optP.LanguageDisplay1;
  pnlFrmCaption2.Visible := optP.LanguageDisplay2;
end;

procedure TFormInfo_3F.qry_MasterAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qry_item do
  begin
    Active := False;
    Parameters.ParamByName('type').Value := FormType;
    Parameters.ParamByName('PrInfoID').Value :=
      IfThen(TADOQuery(DataSet).FieldByName('FormInfoID').IsNull, 0,
      TADOQuery(DataSet).FieldByName('FormInfoID').AsInteger);
    Active := True;
  end; // with
end;

procedure TFormInfo_3F.qry_itemAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qry_Detail do
  begin
    Active := False;
    Parameters.ParamByName('ItemInfoID').Value := TADOQuery(DataSet)
      .FieldByName('FormInfoID').AsInteger;
    Active := True;
  end; // with
end;

function TFormInfo_3F.calculateAmount(aDataset: TADOQuery;
  aFormInfoID: String = ''): boolean;
// var
// value:Integer;
begin

  { value:=IfThen(KindAmount=1,StrToInt(ReadBankConfigPay('BaseSalary')), qry_item.fieldbyname('Amount').AsInteger ) *
    qry_Detail.fieldbyname('Coefficient').AsVariant * qry_Detail.fieldbyname('Coefficient2').AsVariant ;
  }
  // value:=IfThen(KindAmount=1,StrToInt(ReadBankConfigPay('BaseSalary')),
  // qry_item.fieldbyname('Amount').AsInteger);
  with qry_wageInfo do
  begin
    try
      Active := False;
      if aFormInfoID = '' then
        SQL.Text := MySQLText
      else
      begin
        SQL.Text := MySQLText;
        SQL.Add('and(FormInfoID in(' + aFormInfoID + '))');
      end;
      Active := True;
      DisableControls;
      First;
      BigMessageProgBar('œ— Õ«· „Õ«”»Â', qry_wageInfo.RecordCount);
      with aDataset do
      begin
        DisableControls;
        First;
        if aFormInfoID = '' then
          while not Eof do
            Delete;
      end; // adataset
      aDataset.OnCalcFields := nil;
      while not Eof do
      begin
        aDataset.Insert;
        aDataset.FieldByName('ItemID').AsInteger :=
          GetANewCode('','Pay.FormInfoItems', 'ItemID');
        aDataset.FieldByName('SalaryID').AsInteger := FieldByName('FormInfoID')
          .AsInteger;
        aDataset.FieldByName('FormInfoID').AsInteger :=
          qry_item.FieldByName('FormInfoID').AsInteger;
        aDataset.FieldByName('Coefficient').AsFloat := 0;
        // qry_item.FieldByName('Coefficient').AsFloat;
        aDataset.FieldByName('Coefficient2').AsInteger := 1;
        aDataset.FieldByName('Amount').AsCurrency :=
          RoundTo((qry_item.FieldByName('Amount').AsInteger *
          aDataset.FieldByName('Coefficient').AsFloat / 100), 0);
        GoProgressBar(IntToStr(RecNo));
        Next;
      end; // while
    finally
      CloseMessage;
      EnableControls;
      aDataset.EnableControls;
      Active := False;
      BigMessage('„Õ«”»Â ‘œ', 1);
      aDataset.Post;
    end; // try
    Active := False;
    SQL.Text := MySQLText;
    // Active:=True;
  end; // with
end;

procedure TFormInfo_3F.qry_itemAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DBEdit2.SetFocus;
  DataSet.FieldByName('FormType').AsInteger := FormType;
  DataSet.FieldByName('FormInfoID').AsInteger :=
    GetANewCode('','Pay.Formsinfo', 'FormInfoID');

  GetNewInfoID(qry_Master.FieldByName('FormInfoID').AsInteger, FormType,
    qry_item);

  // DataSet.FieldByName('InfoID').AsInteger:=
  // GetANewCode('','SELECT MAX(InfoID) FROM Pay.FormsInfo WHERE FormType ='+IntToStr(FormType)+'  AND PrvInfoID = '+
  // IfThen(qry_Master.FieldByName('FormInfoID').IsNull,'0',
  // qry_Master.FieldByName('FormInfoID').AsString),'InfoID');

  DataSet.FieldByName('PrvInfoID').AsInteger :=
    IfThen(qry_Master.FieldByName('FormInfoID').IsNull, 0,
    qry_Master.FieldByName('FormInfoID').AsInteger);
end;

procedure TFormInfo_3F.FormCreate(Sender: TObject);
begin
  inherited;
  FormType := var_glb_gParam;
  initForm;
end;

procedure TFormInfo_3F.src_ItemStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible := qry_item.State in dsEditModes;
  newPanel.Visible := not okPanel.Visible;
  BtnReject.Cancel := newPanel.Visible;
  PnlUnderButton_Detail.Visible := okPanel.Visible;
  FreeReservedCodes(DMf.adcSalary);

end;

procedure TFormInfo_3F.qry_itemAfterPost(DataSet: TDataSet);
begin
  inherited;
  if qry_Detail.State in dsEditModes then
    qry_Detail.Post;
  try
    qry_Detail.UpdateBatch(arAll);
    BigMessage('À»  ‘œ.', 1);
  except
    warn('«‘ò«· œ— À» ');
  end; // try

end;

procedure TFormInfo_3F.BitBtn1Click(Sender: TObject);
begin
  inherited;

  calculateAmount(qry_Detail);

end;

procedure TFormInfo_3F.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 2, False, IntToStr(FormType));
  SetColSize(DBGrid2, 1, True, IntToStr(FormType));
end;

procedure TFormInfo_3F.src_DetailStateChange(Sender: TObject);
begin
  inherited;
  okPanel_Detail.Visible := qry_Detail.State in dsEditModes;
  if qry_item.State in dsEditModes then
    okPanel.Visible := not okPanel_Detail.Visible;
  newPanel_Detail.Visible := not okPanel_Detail.Visible;
  DataSetPost1.Enabled := okPanel.Visible;
  DataSetCancel1.Enabled := okPanel.Visible;
end;

procedure TFormInfo_3F.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (qry_Master.State in dsEditModes) and (Key = VK_DOWN) then
  begin
    Key := 0;
    Exit;
  end; // if
end;

procedure TFormInfo_3F.DBGrid2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  DisableKeyDown(Sender, Key);
end;

procedure TFormInfo_3F.qry_DetailCoefficientChange(Sender: TField);
begin
  inherited;

  Sender.DataSet.FieldByName('Amount').AsCurrency :=
    RoundTo(qry_item.FieldByName('Amount').AsInteger * Sender.AsFloat / 100, 0);

end;

procedure TFormInfo_3F.qry_DetailAfterEdit(DataSet: TDataSet);
begin
  inherited;
  DataSetEdit1.Execute;
end;

procedure TFormInfo_3F.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  if not(gdSelected in State) then
  begin
    if odd(DBGrid1.DataSource.DataSet.RecNo) then
      DBGrid1.Canvas.Brush.Color := const_fixed_columns_color;
  end; // if
  DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);

end;

procedure TFormInfo_3F.qry_itemBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if get_response('¬Ì« «“ Õ–› „ÿ„∆‰ Â” Ìœ.') <> mryes then
    Abort;

end;

procedure TFormInfo_3F.qry_itemBeforeCancel(DataSet: TDataSet);
begin
  inherited;
  if qry_Detail.State in dsEditModes then
    qry_Detail.Cancel;

end;

procedure TFormInfo_3F.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qry_item);
end;

procedure TFormInfo_3F.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qry_item);
end;

procedure TFormInfo_3F.actSendToExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TFormInfo_3F.actCalculateExecute(Sender: TObject);
begin
  inherited;
  calculateAmount(qry_Detail)
end;

procedure TFormInfo_3F.SpeedButton1Click(Sender: TObject);
var
  Txt: String;
  s: boolean;
  Results: array [0 .. 3] of String;
begin
  inherited;
  Txt := 'SELECT FormInfoID,InfoID, InfoName_L1, InfoName_L2 FROM Pay.FormsInfo ' +
    'WHERE (FormType = ' + qryInitForm.FieldByName('RecallFormTypes')
    .AsString + ') ';
  s := searchCode_ADOF.SearchCode2(DMf.adcSalary, ' ”ÿÕ˛Â«Ì ﬁ»·Ì  ', Txt,
    ['', 'ﬂœ', '‰«„ ', '‰«„ 2'], Results, [0, 50, 100, 100], alLeft);
  if s then
    qry_Master.Locate('FormInfoID', Results[0], []);
end;

procedure TFormInfo_3F.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1, IntToStr(FormType));
end;

procedure TFormInfo_3F.qry_itemCoefficientChange(Sender: TField);
begin
  inherited;
  qry_item.FieldByName('Amount').AsCurrency :=
    RoundTo(Sender.AsVariant / 100 * (IfThen(KindAmount = 1,
    StrToInt(DMf.ReadBankConfigPay('BaseSalary')), 0)), 0) + IfThen(KindAmount = 1,
    StrToInt(DMf.ReadBankConfigPay('BaseSalary')), 0);

end;

procedure TFormInfo_3F.actPrintExecute(Sender: TObject);
begin
  inherited;
  try
    qry_Master.DisableControls;
    qry_Detail.DisableControls;
    SetSendToBackShapeOnPrint(Self);
    ppReport1.Print;
  finally
    qry_Master.EnableControls;
    qry_Detail.EnableControls;
  end // try

end;

procedure TFormInfo_3F.pplblPrintDateGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := ' «—ÌŒ ç«Å' + var_glb_CurrentDate;
end;

procedure TFormInfo_3F.ppSysVarPageNoGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text);
end;

procedure TFormInfo_3F.qry_itemBeforePost(DataSet: TDataSet);
begin
  inherited;
  TrimStringFields(DataSet);
  if not ValidInfoName(DataSet, qryInitForm) then
    Abort;

end;

procedure TFormInfo_3F.actAddExecute(Sender: TObject);
var
  s, TxtWHE: String;
begin
  inherited;
  with qry_Detail do
  begin
    DisableControls;
    First;
    while not Eof do
    begin
      s := s + FieldByName('SalaryID').AsString + ',';
      Next;
    end; // while
    s := LeftStr(s, length(s) - 1);
    if s = '' then
      s := '0';
    EnableControls;
  end; // with
  qryInitForm.Active := True;
  if qryInitForm.FieldByName('ContactFormType').AsInteger = 0 then
  begin
    TxtWHE := ' WHERE (Pay.FormTypes.SalaryKind BETWEEN 1 AND 4) and (FormInfoID not in('
      + s + '))';
  end
  else
  begin
    TxtWHE := ' WHERE (Pay.FormTypes.FormType  in(' + qryInitForm.FieldByName
      ('ContactFormType').AsString + '))';
  end;

  if ChooseItemF.SelectChecks(s, 'FormInfoID ', IfThen(optP.LanguageDisplay1,
    'InfoName_L1 ', 'InfoName_L2 '),
    ' Pay.FormsInfo INNER JOIN  Pay.FormTypes ON Pay.FormsInfo.FormType=Pay.FormTypes.FormType  ',
    TxtWHE) then
  begin
    s := LeftStr(s, length(s) - 1);
    calculateAmount(qry_Detail, s);
  end;
end;

end.
