// mahmood
unit Companies;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DBCtrls, Mask, Grids, Vcl.DBGrids, zAPIBalloon, Menus, DB, ppCtrls,
  ppBands, ppVar, ppPrnabl, ppClass, ppCache, ppProd, ppReport, ppDB,
  ppComm, ppRelatv, ppDBPipe, ADODB, ppStrtch, ppSubRpt, ppParameter,
  ppDesignLayer, System.ImageList, System.Actions;

type
  TCompaniesF = class(Ttemplate2MDIF)
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    srcCompanies: TDataSource;
    qryDetailGroup: TADOQuery;
    okPanel: TPanel;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    newPanel: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    DBNavigator1: TDBNavigator;
    BitBtn6: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    actPrint: TAction;
    actSendExel: TAction;
    actSort: TAction;
    BitBtn9: TBitBtn;
    DBGrid1: TDBGrid;
    srcDetailGroup: TDataSource;
    qryDetailGroupDGID: TIntegerField;
    qryDetailGroupDGName_L1: TStringField;
    qryDetailGroupDGName_L2: TStringField;
    Panel4: TPanel;
    Comment_L2: TPanel;
    DBMemo1: TDBMemo;
    Label5: TLabel;
    Comment_L1: TPanel;
    DBMemo2: TDBMemo;
    Label17: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    Name_L2: TPanel;
    DBEdit4: TDBEdit;
    Label4: TLabel;
    Name_L1: TPanel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    qryCompanies: TADOQuery;
    qryCompaniesCompanyCode: TIntegerField;
    qryCompaniesLevelID: TIntegerField;
    qryCompaniesComment_L1: TStringField;
    qryCompaniesComment_L2: TStringField;
    qryCompaniesMakeDate: TDateTimeField;
    qryDGCompaniesRange: TADOQuery;
    qryDGCompaniesRangeDGIDCompanies: TIntegerField;
    qryDGCompaniesRangeCompanyCode: TIntegerField;
    Panel5: TPanel;
    Label9: TLabel;
    DBEdit8: TDBEdit;
    ppDBPipeline2: TppDBPipeline;
    Popprint: TPopupMenu;
    N11: TMenuItem;
    N21: TMenuItem;
    N31: TMenuItem;
    ppHeaderBand3: TppHeaderBand;
    ppLine9: TppLine;
    ppLabel4: TppLabel;
    ppLabel8: TppLabel;
    ppLabel19: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppDetailBand3: TppDetailBand;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppDetailBand4: TppDetailBand;
    ppDBText9: TppDBText;
    ppDBText8: TppDBText;
    ppSummaryBand4: TppSummaryBand;
    ppLine13: TppLine;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppFooterBand3: TppFooterBand;
    ppLine10: TppLine;
    ppSummaryBand3: TppSummaryBand;
    ppLabel23: TppLabel;
    ppDBCalc3: TppDBCalc;
    ppLine11: TppLine;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppDBText4: TppDBText;
    ppDBText7: TppDBText;
    ppLine12: TppLine;
    ppGroupFooterBand1: TppGroupFooterBand;
    qry_initForm: TADOQuery;
    qryUpdateEdit: TADOQuery;
    qry_initFormLevelID: TIntegerField;
    qry_initFormPrvLevelID: TIntegerField;
    qry_initFormCodeLength: TWordField;
    qry_initFormprvcodelenght: TWordField;
    PnlDetail: TPanel;
    DBGrid2: TDBGrid;
    Panel1: TPanel;
    Label8: TLabel;
    qry_initFormNoteActive: TWordField;
    qry_initFormDetailsRelationType: TWordField;
    BitBtn10: TBitBtn;
    BitBtn11: TBitBtn;
    qryCompaniesCompanyName_L1: TStringField;
    qryCompaniesCompanyName_L2: TStringField;
    qryCompaniesManagingDirector: TStringField;
    qryCompaniesFinancialManager: TStringField;
    Panel6: TPanel;
    edtManagingDirector: TDBEdit;
    Label1: TLabel;
    edtFinancialManager: TDBEdit;
    Label6: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure srcCompaniesStateChange(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actSendExelExecute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure qryCompaniesBeforePost(DataSet: TDataSet);
    procedure qryCompaniesAfterDelete(DataSet: TDataSet);
    procedure qryCompaniesAfterInsert(DataSet: TDataSet);
    procedure qryCompaniesAfterPost(DataSet: TDataSet);
    procedure qryCompaniesBeforeDelete(DataSet: TDataSet);
    procedure ppLabel10GetText(Sender: TObject; var Text: String);
    procedure ppSystemVariable1GetText(Sender: TObject; var Text: String);
    procedure ppLabel1GetText(Sender: TObject; var Text: String);
    procedure qryCompaniesMakeDateGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBEdit5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure qryCompaniesAfterScroll(DataSet: TDataSet);
    procedure actSearch_Execute(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure N21Click(Sender: TObject);
    procedure N31Click(Sender: TObject);
    procedure qryUpdateEditBeforePost(DataSet: TDataSet);
    procedure qryCompaniesBeforeEdit(DataSet: TDataSet);
    procedure qryCompaniesBeforeInsert(DataSet: TDataSet);
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);

  private
    FormType: Byte;
    OldCode: string;
    procedure initForm;
    procedure updateEdit;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CompaniesF: TCompaniesF;

implementation

uses DM, GlobalPro, mmessage, shamsiDate, ChooseItem2,
  search2, sort2;

{$R *.dfm}

procedure TCompaniesF.FormCreate(Sender: TObject);
begin
  inherited;
  FormType := var_glb_gParam;
  initForm;
  With qryCompanies do
  begin
    Active := False;
    Parameters.ParamByName('FormType').Value := qry_initFormLevelID.AsString;
    Active := True;
  end; // with
end;

procedure TCompaniesF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 1);
  SetColSize(DBGrid2, 1);
end;

procedure TCompaniesF.srcCompaniesStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible := qryCompanies.State in dsEditModes;
  newPanel.Visible := not okPanel.Visible;
  BtnReject.Cancel := newPanel.Visible;
  FreeReservedCodes(DMf.adcAccounting, 'acc.Companies');
end;

procedure TCompaniesF.actPrintExecute(Sender: TObject);
begin
  inherited;
  Popprint.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TCompaniesF.FormDestroy(Sender: TObject);
begin
  inherited;
  gv_MultiCompany := qryCompanies.RecordCount > 1;
  SaveColWidth(DBGrid1);
  SaveColWidth(DBGrid2);
end;

procedure TCompaniesF.actSendExelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TCompaniesF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryCompanies);
end;

procedure TCompaniesF.qryCompaniesBeforePost(DataSet: TDataSet);
begin
  inherited;
  if not CheckRequiredFields(qryCompanies) then
    Abort;
  // if get_response(' €ÌÌ—«  –ŒÌ—Â ‘Ê‰œø')<>mrYes then abort;
  if Length(qryCompanies.FieldByName('CompanyCode').AsString) <>
    qry_initForm.FieldByName('CodeLength').AsInteger then
  begin
    Warn('ÿÊ· ﬂœ Õ”«» „⁄ »— ‰Ì”  .˛');
//    Abort;
  end; // if
  TrimStringFields(qryCompanies);
  updateEdit;
end;

procedure TCompaniesF.qryCompaniesAfterDelete(DataSet: TDataSet);
begin
  inherited;
  BigMessage('Õ–› ‘œ.', 1);
end;

procedure TCompaniesF.qryCompaniesAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('CompanyCode').AsInteger :=
    GetANewCode('','acc.Companies', 'CompanyCode',dmf.adcAccounting);
  DataSet.FieldByName('MakeDate').AsDateTime := Now;
  DataSet.FieldByName('LevelID').AsInteger := FormType;
  DBEdit1.SetFocus;
end;

procedure TCompaniesF.qryCompaniesAfterPost(DataSet: TDataSet);
begin
  inherited;
  BigMessage('À»  ‘œ.', 1);
end;

procedure TCompaniesF.qryCompaniesBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if not DMf.CheckLevel(DelLevel, FormType) then
    Abort;
  with DMf.qry_Temp do
  begin
    Active := False;
    SQL.Text := 'SELECT  CompanyCode FROM acc.Companies ' +
      ' where left(CompanyCode,' + qry_initFormCodeLength.AsString + ') = ' +
      qryCompaniesCompanyCode.AsString;
    Active := True;
    if DMf.qry_Temp.RecordCount > 1 then
    begin
      Warn('»Â œ·Ì· ÊÃÊœ ﬂœ “Ì— ”ÿÕ ,«„ﬂ«‰ Õ–› ÊÃÊœ ‰œ«—œ');
      Abort;
    end; // if
  end; // with
  with DMf.qry_Temp do
  begin
    Active := False;
    SQL.Text := 'SELECT CompanyCode FROM acc.DocGroups ' + 'where CompanyCode ='
      + qryCompanies.FieldByName('CompanyCode').AsString +
      '  GROUP BY CompanyCode';
    Active := True;
    if FieldByName('CompanyCode').AsString <> '' then
    begin
      Warn('«„ﬂ«‰ Õ–› ÊÃÊœ ‰œ«—œ');
      Abort;
    end;
  end;
  if get_response('¬Ì« »—«Ì Õ–› «Ì‰ ‘—ﬂ /‘⁄»Â „ÿ„∆‰ Â” Ìœø') <> mrYes then
    Abort;
end;

procedure TCompaniesF.ppLabel10GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := GetPrintDate
end;

procedure TCompaniesF.ppSystemVariable1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TCompaniesF.ppLabel1GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TCompaniesF.qryCompaniesMakeDateGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  Text := miladi2Shamsi(qryCompanies.FieldByName('MakeDate').AsDateTime)
end;

procedure TCompaniesF.SpeedButton1Click(Sender: TObject);
var
  ts: TStringList;
  s: String;
begin
  inherited;
  ts := TStringList.Create;
  try
    // s:=qryCompanies.fieldbyname('CompanyCode').AsString;
    if ChooseItem2F.SelectChecks(s, 'DGID', 'DGName_L1', 'DGName_L2',
      'DetailGroups', '') then
    begin
      ts.Text := StringReplace(s, ',', #13, [rfReplaceAll]);

    end; // if
  finally
    ts.Free;
    qryDetailGroup.Requery;
  end; // try

end;

procedure TCompaniesF.DBEdit5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_SPACE then
    BitBtn10.Click
end;

procedure TCompaniesF.N1Click(Sender: TObject);
begin
  inherited;
  qryCompanies.Sort := 'CompanyCode';
end;

procedure TCompaniesF.N2Click(Sender: TObject);
begin
  inherited;
  qryCompanies.Sort := 'CompanyName';
end;

procedure TCompaniesF.qryCompaniesAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qryDetailGroup do
  begin
    Active := False;
    Parameters.ParamByName('Type').Value :=
      qryCompanies.FieldByName('CompanyCode').AsInteger;
    Active := True;
  end; // with
  with qryDGCompaniesRange do
  begin
    Active := False;
    Parameters.ParamByName('FormType').Value :=
      qryCompanies.FieldByName('CompanyCode').AsInteger;
    Active := True;
  end; // with
end;

procedure TCompaniesF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryCompanies);
end;

procedure TCompaniesF.N11Click(Sender: TObject);
begin
  inherited;
  try
    qryDetailGroup.DisableControls;
    qryCompanies.DisableControls;
    InitReportFile(ppReport1, 'Companies1', nil,nil);
  finally
    qryDetailGroup.EnableControls;
    qryCompanies.EnableControls;
  end;
end;

procedure TCompaniesF.N21Click(Sender: TObject);
begin
  inherited;
  try
    qryDetailGroup.DisableControls;
    qryCompanies.DisableControls;
    InitReportFile(ppReport1, 'Companies_comment', nil,nil);
  finally
    qryDetailGroup.EnableControls;
    qryCompanies.EnableControls;
  end;
end;

procedure TCompaniesF.N31Click(Sender: TObject);
begin
  inherited;
  try
    qryDetailGroup.DisableControls;
    qryCompanies.DisableControls;
    InitReportFile(ppReport1, 'Companies_detail', nil,nil);
  finally
    qryDetailGroup.EnableControls;
    qryCompanies.EnableControls;
  end;
end;

procedure TCompaniesF.updateEdit;
begin
  if OldCode <> qryCompaniesCompanyCode.AsString then
    with qryUpdateEdit do
    begin
      Active := False;
      Parameters.ParamByName('CurrentCode').Value := OldCode;
      Parameters.ParamByName('OldCompanyCode').Value := OldCode;
      Parameters.ParamByName('LenCompanyCode1').Value :=
        qry_initForm.FieldByName('CodeLength').AsInteger;
      Parameters.ParamByName('LenCompanyCode2').Value :=
        qry_initForm.FieldByName('CodeLength').AsInteger;
      Parameters.ParamByName('NewCompanyCode').Value :=
        qryCompanies.FieldByName('CompanyCode').AsString;
      ExecSQL;
    end;
end;

procedure TCompaniesF.qryUpdateEditBeforePost(DataSet: TDataSet);
begin
  inherited;
  updateEdit;
end;

procedure TCompaniesF.qryCompaniesBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  if not DMf.CheckLevel(EdtLevel, FormType) then
    Abort;

  // if user.Level<8 then begin
  // warn('‘„« „Ã«“ »Â ÊÌ—«Ì‘ «ÿ·«⁄«  ‰„Ì »«‘Ìœ');
  // abort;
  // end;
  OldCode := qryCompaniesCompanyCode.AsString;
end;

procedure TCompaniesF.qryCompaniesBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  // if user.Level<6 then begin
  // warn('‘„« „Ã«“ »Â Ê—Êœ «ÿ·«⁄«  ‰„Ì »«‘Ìœ');
  // abort;
  // end;
  if not DMf.CheckLevel(AddLevel, FormType) then
    Abort;

end;

procedure TCompaniesF.initForm;
begin
  With qry_initForm do
  begin
    Active := False;
    Parameters.ParamByName('FormType').Value := FormType;
    Active := True;
    // ____ set
    PnlDetail.Visible := FieldByName('DetailsRelationType').AsInteger <> 0;
    Comment_L1.Visible := FieldByName('NoteActive').AsInteger <> 0;
    Comment_L2.Visible := FieldByName('NoteActive').AsInteger <> 0;
  end; // with
end;

procedure TCompaniesF.BitBtn10Click(Sender: TObject);
var
  ts: TStringList;
  s: String;

begin
  inherited;
  ts := TStringList.Create;
  try
    // s:=qryCompanies.fieldbyname('CompanyCode').AsString;
    if ChooseItem2F.SelectChecks(s, 'DGID', 'DGName_L1', 'DGName_L2',
      'acc.DetailGroups', '') then
    begin
      ts.Text := StringReplace(s, ',', #13, [rfReplaceAll]);

    end; // if
  finally
    ts.Free;
    qryDetailGroup.Requery;
  end; // try
end;

procedure TCompaniesF.BitBtn11Click(Sender: TObject);
begin
  inherited;
  if get_response('¬Ì« »—«Ì Õ–› «— »«ÿ »« ê—ÊÂÂ«Ì  ›’Ì·Ì „ÿ„∆‰ Â” Ìœø')
    = mrYes then
  begin
    qryDGCompaniesRange.Locate('DGIDCompanies',
      qryDetailGroup.FieldByName('DGID').AsInteger, []);
    qryDGCompaniesRange.Delete;
    qryDetailGroup.Requery();
  end; // if
end;

end.
