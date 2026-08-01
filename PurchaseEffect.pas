unit PurchaseEffect;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, ADODB, Grids, Vcl.DBGrids, Mask, DBCtrls, ppDB, ppDBPipe,
  ppComm, ppRelatv, ppProd, ppClass, ppReport, ppModule, daDataModule,
  ppBands, ppCtrls, ppVar, ppPrnabl, ppCache, ppParameter, FarsiReportBuilde,
  ppDesignLayer, System.ImageList, System.Actions, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, CedarDbGrid;

type
  TPurchaseEffectF = class(Ttemplate2MDIF)
    Panel4: TPanel;
    DBGrid1: TDBGrid;
    qryPurchase: TADOQuery;
    srcPurchase: TDataSource;
    qryPurchaseEffectID: TIntegerField;
    qryPurchaseEffectName: TStringField;
    qryPurchaseCoefficient: TFloatField;
    qryPurchaseAmountRate: TFloatField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    okPanel: TPanel;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    newPanel: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn9: TBitBtn;
    actPrint: TAction;
    actSort: TAction;
    actExcel: TAction;
    ppReport1: TppReport;
    ppDBPipeline1: TppDBPipeline;
    ppHeaderBand1: TppHeaderBand;
    ppShape2: TppShape;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel5: TppLabel;
    ppLabel17: TppLabel;
    ppLine7: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppSysVarPageNumber: TppSystemVariable;
    pplbprintdate: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppDBText5: TppDBText;
    ppDBText2: TppDBText;
    ppDBText1: TppDBText;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppDBText9: TppDBText;
    ppLine10: TppLine;
    ppFooterBand1: TppFooterBand;
    ppShape1: TppShape;
    ppDBCalc6: TppDBCalc;
    ppLabel10: TppLabel;
    ppLine14: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppShape3: TppShape;
    ppDBCalc9: TppDBCalc;
    ppLabel11: TppLabel;
    ppLine15: TppLine;
    qryStuffCoding: TADOQuery;
    srcStuffCoding: TDataSource;
    qryStuffCodingc_StuffName: TStringField;
    qryStuffCodingUnitName: TStringField;
    qryStuffCodingc_StuffTecInfo: TStringField;
    qryPurchaseStuffCode: TLargeintField;
    qryStuffCodingc_StuffCode: TLargeintField;
    qryPurchaseCoefficientMin: TFloatField;
    qryPurchaseCoefficientMax: TFloatField;
    Label5: TLabel;
    edtCoefficientMin: TDBEdit;
    edtCoefficientMax: TDBEdit;
    Label6: TLabel;
    GroupBox1: TGroupBox;
    qryPurchasePENote: TStringField;
    dbmmoPENote: TDBMemo;
    grdStuffCoding: TCedarDbgrid;
    procedure qryPurchaseAfterInsert(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure srcPurchaseStateChange(Sender: TObject);
    procedure actExcelExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure pplbprintdateGetText(Sender: TObject; var Text: String);
    procedure ppSysVarPageNumberGetText(Sender: TObject; var Text: String);
    procedure ppLabel1GetText(Sender: TObject; var Text: String);
    procedure qryPurchaseBeforeDelete(DataSet: TDataSet);
    procedure qryPurchaseBeforePost(DataSet: TDataSet);
    procedure qryPurchaseAfterPost(DataSet: TDataSet);
    procedure qryStuffCodingAfterScroll(DataSet: TDataSet);
    procedure grdStuffCodingKeyPress(Sender: TObject; var Key: Char);
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PurchaseEffectF: TPurchaseEffectF;

implementation

uses DM, GlobalPro, search2, sort2, mmessage;

{$R *.dfm}

procedure TPurchaseEffectF.qryPurchaseAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('EffectID').AsInteger :=
    GetANewCode(Self.Name, 'PurchaseEffect', 'EffectID');
  DataSet.FieldByName('StuffCode').AsLargeInt :=
    qryStuffCoding.FieldByName('c_StuffCode').AsLargeInt;

end;

procedure TPurchaseEffectF.FormCreate(Sender: TObject);
begin
  inherited;
  qryStuffCoding.Active := true;
  setColumns2(grdStuffCoding, opt.StuffTecInfoActive, 'c_StuffTecInfo');
end;

procedure TPurchaseEffectF.srcPurchaseStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible := qryPurchase.State in dsEditModes;
  newPanel.Visible := not okPanel.Visible;
  BtnReject.Cancel := newPanel.Visible;
  FreeReservedCodes(DMf.adcBSell, '', '', Self.Name);
end;

procedure TPurchaseEffectF.actExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TPurchaseEffectF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryStuffCoding);
end;

procedure TPurchaseEffectF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryStuffCoding);
end;

procedure TPurchaseEffectF.actPrintExecute(Sender: TObject);
begin
  inherited;
  try
    qryPurchase.DisableControls;
    ppReport1.Print;
  finally
    qryPurchase.EnableControls;
  end;
end;

procedure TPurchaseEffectF.pplbprintdateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TPurchaseEffectF.ppSysVarPageNumberGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TPurchaseEffectF.ppLabel1GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TPurchaseEffectF.qryPurchaseBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if get_response('¬Ì« »—«Ì Õ–› «Ì‰ ›—„ „ÿ„∆‰ Â” Ìœø') <> mrYes then
    Abort;
end;

procedure TPurchaseEffectF.qryPurchaseBeforePost(DataSet: TDataSet);
begin
  inherited;
  if get_response(' €ÌÌ—«  –ŒÌ—Â ‘Ê‰œø') <> mrYes then
    Abort;

end;

procedure TPurchaseEffectF.qryPurchaseAfterPost(DataSet: TDataSet);
begin
  inherited;
  BigMessage('À»  ‘œ.', 1);
end;

procedure TPurchaseEffectF.qryStuffCodingAfterScroll(DataSet: TDataSet);
begin
  inherited;
  With qryPurchase do
  begin
    Close;
    Parameters.ParamByName('StuffCode').Value :=
      DataSet.FieldByName('c_StuffCode').AsString;
    Open;
  end;

end;

procedure TPurchaseEffectF.grdStuffCodingKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  QuickSearch(Key, qryStuffCodingc_StuffCode);
end;

procedure TPurchaseEffectF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 1);
end;

procedure TPurchaseEffectF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
end;

end.
