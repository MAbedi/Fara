{ -----------------------------------------------------------------------------
  Unit Name: UseOthers
  Author:    Mahmood
  Purpose:
  History:  87/09/17
  ----------------------------------------------------------------------------- }
unit UseOthers;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DBCtrls, Mask, Grids, Vcl.DBGrids, zAPIBalloon, DB, ppCtrls,
  ppBands, ppVar, ppPrnabl, ppClass, ppCache, ppProd, ppReport, ppDB,
  ppComm, ppRelatv, ppDBPipe, ADODB, ppParameter, ppDesignLayer,
  System.ImageList, System.Actions;

type
  TUseOthersF = class(Ttemplate2MDIF)
    qryUseOthers: TADOQuery;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel10: TppLabel;
    ppHeaderBand1: TppHeaderBand;
    ppLine1: TppLine;
    ppLabel6: TppLabel;
    ppLine2: TppLine;
    ppLabel12: TppLabel;
    ppLabel3: TppLabel;
    ppLabel16: TppLabel;
    ppLabel20: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText5: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppLine4: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppLabel13: TppLabel;
    ppDBCalc2: TppDBCalc;
    ppLine3: TppLine;
    ppLine6: TppLine;
    srcUseOthers: TDataSource;
    Panel4: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    okPanel: TPanel;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    newPanel: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    actPrint: TAction;
    actSendExel: TAction;
    actSort: TAction;
    BitBtn9: TBitBtn;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    DBGrid1: TDBGrid;
    qryUseOthersUseOtherID: TWideStringField;
    qryUseOthersUseOtherName: TWideStringField;
    qryUseOthersCode: TWideStringField;
    qryUseOthersLookUpID: TIntegerField;
    qryUseOthersRate: TFloatField;
    qryLookup: TADOQuery;
    qryUseOthers_LookUpID: TStringField;
    Label1: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    BitBtn10: TBitBtn;
    actGetExcel: TAction;
    qryUseOthersKind: TWideStringField;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    qryUseOthersTypeCode: TIntegerField;
    qryLookup352: TADOQuery;
    qryUseOthers_TypeCode: TStringField;
    Label7: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    qryUseOthersIDNumber: TStringField;
    qryUseOthersNationalID: TStringField;
    qryUseOthersHealthNumber: TStringField;
    qryUseOthersUseState: TWordField;
    qryUseOthersAddres: TStringField;
    qryUseOthersTel1: TStringField;
    qryUseOthersTel2: TStringField;
    qryUseOthersPostalCode: TStringField;
    qryUseOthersCustID: TIntegerField;
    qryUseOthersExpirationDate: TStringField;
    lbl1: TLabel;
    dbedtIDNumber: TDBEdit;
    lbl2: TLabel;
    dbedtNationalID: TDBEdit;
    lbl3: TLabel;
    dbedtHealthNumber: TDBEdit;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    dbedtTel1: TDBEdit;
    lbl7: TLabel;
    dbedtTel2: TDBEdit;
    lbl8: TLabel;
    dbedtPostalCode: TDBEdit;
    lbl9: TLabel;
    lbl10: TLabel;
    dbedtExpirationDate: TDBEdit;
    cmbUseState: TDBComboBox;
    dbedtCustID: TDBEdit;
    btnCustID: TSpeedButton;
    dbtxt_CustName: TDBText;
    qryCustomers: TADOQuery;
    qryUseOthers_CustName: TStringField;
    dbmmoAddres: TDBMemo;
    qryUseOthersUseNote: TStringField;
    Label8: TLabel;
    dbmmoUseNote: TDBMemo;
    qryUseOthersTopicCode: TLargeintField;
    qryUseOthersDetailCode: TStringField;
    qryUseOthersCTopicCode: TStringField;
    qryUseOthers_MoeenName: TStringField;
    qryUseOthers_DetailName: TStringField;
    qryUseOthers_CTopicName: TStringField;
    qryUseOthersCTopicCode2: TStringField;
    qryUseOthers_CTopicName2: TStringField;
    qryUseOthers_CTopicName3: TStringField;
    qryUseOthersCTopicCode3: TStringField;
    BitBtn11: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure srcUseOthersStateChange(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actSendExelExecute(Sender: TObject);
    procedure qryUseOthersBeforePost(DataSet: TDataSet);
    procedure qryUseOthersAfterDelete(DataSet: TDataSet);
    procedure qryUseOthersAfterInsert(DataSet: TDataSet);
    procedure qryUseOthersAfterPost(DataSet: TDataSet);
    procedure qryUseOthersBeforeDelete(DataSet: TDataSet);
    procedure ppLabel10GetText(Sender: TObject; var Text: String);
    procedure ppSystemVariable1GetText(Sender: TObject; var Text: String);
    procedure ppLabel1GetText(Sender: TObject; var Text: String);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actGetExcelExecute(Sender: TObject);
    procedure ALLGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure AllSetText(Sender: TField; const Text: String);
    procedure btnCustIDClick(Sender: TObject);
    procedure dbedtCustIDKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn11Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  UseOthersF: TUseOthersF;

implementation

uses DM, GlobalPro, mmessage, FormFunctions,
  search2, sort2, GetExcel, Account;

{$R *.dfm}

procedure TUseOthersF.FormCreate(Sender: TObject);
begin
  inherited;
  SetLookUpCash(qryUseOthers);
  qryLookup.Active := True;
  qryLookup352.Active := True;
  qryUseOthers.Active := True;
end;

procedure TUseOthersF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 1);
end;

procedure TUseOthersF.srcUseOthersStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible := qryUseOthers.State in dsEditModes;
  newPanel.Visible := not okPanel.Visible;
  BtnReject.Cancel := newPanel.Visible;
  FreeReservedCodes(DMf.adcBSell, '', '', Self.Name);
end;

procedure TUseOthersF.actPrintExecute(Sender: TObject);
begin
  inherited;
  ppReport1.Print;
end;

procedure TUseOthersF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
end;

procedure TUseOthersF.actSendExelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TUseOthersF.qryUseOthersBeforePost(DataSet: TDataSet);
begin
  inherited;
  if not CheckRequiredFields(qryUseOthers) then
    Abort;
  if not ValidateDatasetDates(DataSet) then
    Abort;
  TrimStringFields(qryUseOthers);
  if not UnicFieldName(DataSet.Fieldbyname('UseOtherID'),
    DataSet.Fieldbyname('UseOtherName'), 'UseOthers', 0) then
    Abort;
end;

procedure TUseOthersF.qryUseOthersAfterDelete(DataSet: TDataSet);
begin
  inherited;
  BigMessage('Õ–› ‘œ.', 1);
end;

procedure TUseOthersF.qryUseOthersAfterInsert(DataSet: TDataSet);
begin
  inherited;
  // DataSet.FieldByName('UseOtherID').AsInteger:=GetANewCode(Self.Name,'UseOthers','UseOtherID',dmF.adcBSell);

  qryUseOthersTopicCode.AsInteger := 0;
  qryUseOthersDetailCode.AsInteger := 0;
  qryUseOthersCTopicCode.AsInteger := 0;
  qryUseOthersCTopicCode2.AsInteger := 0;
  qryUseOthersCTopicCode3.AsInteger := 0;

  DBEdit1.SetFocus;
end;

procedure TUseOthersF.qryUseOthersAfterPost(DataSet: TDataSet);
begin
  inherited;
  BigMessage('À»  ‘œ.', 1);
end;

procedure TUseOthersF.qryUseOthersBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if get_response('¬Ì« »—«Ì Õ–› «Ì‰ «ÿ·«⁄«  „ÿ„∆‰ Â” Ìœø') <> mrYes then
    Abort;
end;

procedure TUseOthersF.ppLabel10GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := GetPrintDate
end;

procedure TUseOthersF.ppSystemVariable1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TUseOthersF.ppLabel1GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TUseOthersF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  Search2f.ShowSearch(qryUseOthers);
end;

procedure TUseOthersF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2f.ShowSort(qryUseOthers)
end;

procedure TUseOthersF.actGetExcelExecute(Sender: TObject);
begin
  inherited;
  GetExcelF.ShowImPortExcel(qryUseOthers);
end;

procedure TUseOthersF.ALLGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  inherited;
  Text := TDBComboBox(FindComponent('Cmb' + Sender.FieldName)).Items.strings
    [Sender.AsInteger];
end;

procedure TUseOthersF.AllSetText(Sender: TField; const Text: String);
begin
  inherited;
  Sender.AsInteger := TDBComboBox(FindComponent('Cmb' + Sender.FieldName))
    .ItemIndex;
end;

procedure TUseOthersF.BitBtn11Click(Sender: TObject);
begin
  inherited;
  Accountf.Enter(qryUseOthers)
end;

procedure TUseOthersF.btnCustIDClick(Sender: TObject);
begin
  inherited;
  SpeedButtonCustomersGroupTypes
    (qryUseOthers.Fieldbyname((Sender as TSpeedButton).Hint), '6')
end;

procedure TUseOthersF.dbedtCustIDKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = 32 then
    btnCustID.Click;
end;

end.
