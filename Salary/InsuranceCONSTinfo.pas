unit InsuranceCONSTinfo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DBCtrls, DB, ADODB, Mask, ppDB, ppBands,
  ppClass, ppCtrls, ppVar, ppPrnabl, ppCache, ppDBPipe, ppComm, ppRelatv,
  ppProd, ppReport, Menus, ppParameter, ppDesignLayer, System.ImageList,
  System.Actions, SalaryFunctions, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  CedarDbGrid;

type
  TInsuranceCONSTinfoF = class(Ttemplate2MDIF)
    qryInsurance: TADOQuery;
    srcInsurance: TDataSource;
    Label1: TLabel;
    comboInsuranceNo: TComboBox;
    qryInsuranceinsuranceNo: TWordField;
    qryInsuranceFormInfoID: TIntegerField;
    qryInsuranceinsurancename: TStringField;
    qryInsuranceEmployerName: TStringField;
    qryInsuranceworkShop: TStringField;
    qryInsuranceInsuranceLabel_L1: TStringField;
    qryInsuranceInsuranceLabel_L2: TStringField;
    qryInsuranceinsuranceUp: TBCDField;
    qryInsurancedailywage: TBCDField;
    qryInsuranceAccTopicCode: TIntegerField;
    qryInsuranceAccDetailCode: TIntegerField;
    qryInsuranceAccCTopicCode: TIntegerField;
    qryInsuranceAccCTopicCode2: TIntegerField;
    qryInsurancetel: TStringField;
    qryInsuranceaddress: TStringField;
    BitBtn1: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn9: TBitBtn;
    okPanel: TPanel;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    newPanel: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    DBNavigator1: TDBNavigator;
    actPrint: TAction;
    actSendExel: TAction;
    actSort: TAction;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    edtEmployeeshare: TDBEdit;
    edtEmployershare: TDBEdit;
    DBEdit9: TDBEdit;
    DBMemo1: TDBMemo;
    Label12: TLabel;
    Label13: TLabel;
    DBEdit11: TDBEdit;
    BitBtn2: TBitBtn;
    ppReport1: TppReport;
    ppDBPipeline1: TppDBPipeline;
    Button1: TButton;
    ppHeaderBand1: TppHeaderBand;
    ppLabel1: TppLabel;
    ppShape1: TppShape;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppSysVarPageNo: TppSystemVariable;
    ppLabel7: TppLabel;
    ppLine10: TppLine;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel2: TppLabel;
    ppDBText3: TppDBText;
    ppDetailBand1: TppDetailBand;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLine18: TppLine;
    ppDBText2: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText1: TppDBText;
    ppLine19: TppLine;
    ppDBText6: TppDBText;
    ppDBText8: TppDBText;
    ppLine21: TppLine;
    ppFooterBand1: TppFooterBand;
    ppLine1: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppLine8: TppLine;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    qryInsuranceEmployeeshare: TFloatField;
    qryInsuranceEmployershare: TFloatField;
    qryInsuranceInactionInsuranceShare: TFloatField;
    qryInsuranceHardShipPercent: TWordField;
    qryInsurancePeopleExempt: TWordField;
    Label14: TLabel;
    edtPeopleExempt: TDBEdit;
    Label15: TLabel;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    Label16: TLabel;
    qryInsuranceOffShootName_L1: TStringField;
    qryInsurancePostalCode: TStringField;
    Label17: TLabel;
    DBEdit15: TDBEdit;
    qryInsurancePoorsantRate: TFloatField;
    edtPoorsantRate: TDBEdit;
    Label18: TLabel;
    BitBtn11: TBitBtn;
    PopOther: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    qryInsuranceAccCTopicCode3: TIntegerField;
    qryInsuranceTaxCode: TWordField;
    Label19: TLabel;
    DBEdit17: TDBEdit;
    qryInsuranceMON_PYM: TStringField;
    edtMON_PYM: TDBEdit;
    Label20: TLabel;
    DBGrid1: TCedarDbgrid;
    procedure comboInsurance1Change(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSendExelExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure srcInsuranceDataChange(Sender: TObject; Field: TField);
    procedure ppLabel7GetText(Sender: TObject; var Text: String);
    procedure Button1Click(Sender: TObject);
    procedure qryInsuranceAfterDelete(DataSet: TDataSet);
    procedure qryInsuranceAfterInsert(DataSet: TDataSet);
    procedure qryInsuranceAfterPost(DataSet: TDataSet);
    procedure qryInsuranceBeforeDelete(DataSet: TDataSet);
    procedure qryInsuranceBeforePost(DataSet: TDataSet);
    procedure qryInsuranceFormInfoIDGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure qryInsuranceFormInfoIDSetText(Sender: TField; const Text: String);
    procedure ppSystemVariable2GetText(Sender: TObject; var Text: String);
    procedure actPrintExecute(Sender: TObject);
    procedure ppSysVarPageNoGetText(Sender: TObject; var Text: String);
    procedure ppDBText3GetText(Sender: TObject; var Text: String);
    procedure actSortExecute(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
  private
    function checkvaluefield(DataSet: TDataSet): Boolean;
    function ValidInsurancename: Boolean;
  public
    { Public declarations }
  end;

var
  InsuranceCONSTinfoF: TInsuranceCONSTinfoF;

implementation

uses DM, search2, GlobalPro, mmessage, sort2, DBGrid2Print, AccountP;

{$R *.dfm}

procedure TInsuranceCONSTinfoF.comboInsurance1Change(Sender: TObject);
begin
  inherited;
  if comboInsuranceNo.ItemIndex = -1 then
    exit;
  with qryInsurance do
  begin
    Active := False;
    Parameters.ParamByName('FormInfoID').Value :=
      Integer(comboInsuranceNo.Items.Objects[comboInsuranceNo.ItemIndex]);
    Active := True;
  end; // with
end;

procedure TInsuranceCONSTinfoF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryInsurance);
end;

procedure TInsuranceCONSTinfoF.actSendExelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TInsuranceCONSTinfoF.FormShow(Sender: TObject);
begin
  inherited;
  initDBComboInsurance(comboInsuranceNo);
  comboInsuranceNo.ItemIndex := 0;
  // L1_L2(DBGrid1);
  if optP.primaryLanguage <> 0 then
  begin
    Label7.Visible := False;
    DBEdit5.Visible := False;
  end
  else
  begin
    Label8.Visible := False;
    DBEdit6.Visible := False;
  end; // if

  if comboInsuranceNo.ItemIndex = -1 then
    exit;
  with qryInsurance do
  begin
    Active := False;
    Parameters.ParamByName('FormInfoID').Value :=
      Integer(comboInsuranceNo.Items.Objects[comboInsuranceNo.ItemIndex]);
    Active := True;
  end; // with

end;

procedure TInsuranceCONSTinfoF.FormCreate(Sender: TObject);
begin
  inherited;
  // qryInsurance.Active:=true;
end;

procedure TInsuranceCONSTinfoF.srcInsuranceDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  okPanel.Visible := qryInsurance.State in dsEditModes;
  newPanel.Visible := not okPanel.Visible;
  BtnReject.Cancel := newPanel.Visible;
  FreeReservedCodes(DMF.adcSalary);
end;

procedure TInsuranceCONSTinfoF.ppLabel7GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TInsuranceCONSTinfoF.Button1Click(Sender: TObject);
begin
  inherited;
  AccountpF.Enter(qryInsurance);
end;

procedure TInsuranceCONSTinfoF.qryInsuranceAfterDelete(DataSet: TDataSet);
begin
  inherited;
  BigMessage('Õ–› ‘œ.', 1);
end;

procedure TInsuranceCONSTinfoF.qryInsuranceAfterInsert(DataSet: TDataSet);
begin
  inherited;
  // if comboInsuranceNo.ItemIndex<0 then Abort;
  DataSet.FieldByName('insuranceNo').AsInteger :=
    GetANewCode('', 'Pay.InsuranceCONSTinfo', 'insuranceNo');
  DataSet.FieldByName('FormInfoID').AsInteger :=
    Integer(comboInsuranceNo.Items.Objects[comboInsuranceNo.ItemIndex]);

  DataSet.FieldByName('insuranceUp').AsInteger := 0;
  DataSet.FieldByName('dailywage').AsInteger := 0;

  DBEdit1.SetFocus;
end;

procedure TInsuranceCONSTinfoF.qryInsuranceAfterPost(DataSet: TDataSet);
begin
  inherited;
  if get_response(' €ÌÌ—«  –ŒÌ—Â ‘Ê‰œø') <> mrYes then
    abort;
  BigMessage('À»  ‘œ.', 1);
end;

procedure TInsuranceCONSTinfoF.qryInsuranceBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if get_response('¬Ì« »—«Ì Õ–› «Ì‰ ›—„ „ÿ„∆‰ Â” Ìœø') <> mrYes then
    abort;
end;

procedure TInsuranceCONSTinfoF.qryInsuranceBeforePost(DataSet: TDataSet);
begin
  inherited;
  if not checkvaluefield(qryInsurance) then
    abort;
  if not CheckRequiredFields(qryInsurance) then
    abort;
  TrimStringFields(qryInsurance);
  if not ValidInsurancename then
    abort;
end;

function TInsuranceCONSTinfoF.ValidInsurancename: Boolean;
begin
  Result := False;
  With DMF.qryTmpTmpp do
  begin
    Active := False;
    SQL.Text := 'SELECT COUNT(insurancename) AS Expr1';
    SQL.Add('FROM Pay.InsuranceCONSTinfo');
    SQL.Add('GROUP BY insurancename, insuranceNo');
    SQL.Add('HAVING (insurancename = ''' + qryInsurance.FieldByName
      ('insurancename').AsString + ''')');
    SQL.Add('AND (insuranceNo <> ' + qryInsurance.FieldByName('insuranceNo')
      .AsString + ')');
    Active := True;
    if (Fields[0].AsInteger <> 0) then
    begin
      Warn('‰«„ ”«“„«‰ »Ì„Â ê–«— Ê«—œ ‘œÂ  ﬂ—«—Ì „Ìù»«‘œ.');
      exit;
    end; // if
    Active := False;
  end; // with
  Result := True;
end;

procedure TInsuranceCONSTinfoF.qryInsuranceFormInfoIDGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  if Sender.AsInteger <= 0 then
    exit;
  // Text := VarToStr(qryInsurance.Lookup('FormInfoID', Sender.AsInteger,    'InfoName_L1'));

  Text := comboInsuranceNo.Items
    [comboInsuranceNo.Items.IndexOfObject(TObject(Sender.AsInteger))];


end;

procedure TInsuranceCONSTinfoF.qryInsuranceFormInfoIDSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.AsInteger := Integer(comboInsuranceNo.Items.Objects
    [comboInsuranceNo.ItemIndex]);
end;

procedure TInsuranceCONSTinfoF.ppSystemVariable2GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text);
end;

function TInsuranceCONSTinfoF.checkvaluefield(DataSet: TDataSet): Boolean;
begin
  Result := True;
  if DataSet.FieldByName('Employeeshare').AsInteger >= 100 then
  begin
    Warn('”Â„ ﬂ«—„‰œ ‰»«Ìœ »“—ê — «“ 100  Ê«—œ ‘Êœ');
    Result := False;
  end;
  if DataSet.FieldByName('Employershare').AsInteger >= 100 then
  begin
    Warn('”Â„ ﬂ«—›—„« ‰»«Ìœ »“—ê — «“ 100  Ê«—œ‘Êœ');
    Result := False;
  end;
  if DataSet.FieldByName('InactionInsuranceShare').AsInteger >= 100 then
  begin
    Warn('»Ì„Â »Ìﬂ«—Ì  ‰»«Ìœ »“—ê — «“100Ê«—œ‘Êœ');
    Result := False;
  end;
end;

procedure TInsuranceCONSTinfoF.actPrintExecute(Sender: TObject);
begin
  inherited;
  try
    qryInsurance.DisableControls;
    SetSendToBackShapeOnPrint(Self);
    ppReport1.Print;
  finally
    qryInsurance.EnableControls;
  end // try
end;

procedure TInsuranceCONSTinfoF.ppSysVarPageNoGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TInsuranceCONSTinfoF.ppDBText3GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := comboInsuranceNo.Text
end;

procedure TInsuranceCONSTinfoF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryInsurance);
end;

procedure TInsuranceCONSTinfoF.BitBtn11Click(Sender: TObject);
begin
  inherited;
  PopOther.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TInsuranceCONSTinfoF.N1Click(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(DBGrid1, 0);
end;

procedure TInsuranceCONSTinfoF.N2Click(Sender: TObject);
begin
  inherited;
  qryInsurance.Requery();
end;

end.
