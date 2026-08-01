unit SpecialInsourance;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  FaraConsts, Buttons, Grids, Vcl.DBGrids, DB, ADODB, Mask, DBCtrls, Menus,
  ppDB, ppParameter, ppDesignLayer, ppBands, ppCtrls, ppVar, ppPrnabl, ppClass,
  ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDBPipe, System.ImageList,
  System.Actions;

type
  TSpecialInsouranceF = class(Ttemplate2MDIF)
    qryIncSpecial: TADOQuery;
    qryIncSpecialID: TAutoIncField;
    qryIncSpecialSerial: TIntegerField;
    qryIncSpecialInsouranceID: TIntegerField;
    qryIncSpecialStartDate: TStringField;
    qryIncSpecialEndDate: TStringField;
    qryIncSpecialInsouranceNo: TStringField;
    qryIncSpecialInsouranceDate: TStringField;
    qryIncSpecialInsourancePrice: TBCDField;
    qryIncSpecialComments: TStringField;
    srcIncSpecial: TDataSource;
    DBGrid1: TDBGrid;
    qryIncSpecial_StuffDesc: TStringField;
    qryIncSpecial_Pelak: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    SpeedButton1: TSpeedButton;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Label3: TLabel;
    DBEdit4: TDBEdit;
    Label4: TLabel;
    DBEdit5: TDBEdit;
    Label5: TLabel;
    DBEdit6: TDBEdit;
    Label6: TLabel;
    DBEdit7: TDBEdit;
    Label7: TLabel;
    DBEdit8: TDBEdit;
    GroupBox1: TGroupBox;
    DBMemo1: TDBMemo;
    newPanel: TPanel;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    okPanel: TPanel;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn8: TBitBtn;
    btnPrint: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn2: TBitBtn;
    qryIncInfo: TADOQuery;
    srcIncInfo: TDataSource;
    DBLookupComboBox1: TDBLookupComboBox;
    popOther: TPopupMenu;
    N2: TMenuItem;
    N3: TMenuItem;
    actOther: TAction;
    N1: TMenuItem;
    BitBtn10: TBitBtn;
    actExcel: TAction;
    Label8: TLabel;
    qryAmval: TADOQuery;
    qryIncSpecial_KeeperName: TStringField;
    qryIncSpecial_UsersMobile: TStringField;
    qryIncSpecial_KeeperMobile: TStringField;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppLabel2: TppLabel;
    ppLine1: TppLine;
    lblPageCount: TppSystemVariable;
    ppShape1: TppShape;
    ppLabel1: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLine2: TppLine;
    lblCompanyName: TppLabel;
    lblDate: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppLine10: TppLine;
    ppDBText1: TppDBText;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppDBText2: TppDBText;
    ppLine17: TppLine;
    ppDBText3: TppDBText;
    ppLine18: TppLine;
    ppDBText4: TppDBText;
    ppLine19: TppLine;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppLine21: TppLine;
    ppDBText7: TppDBText;
    ppLine22: TppLine;
    ppDBText8: TppDBText;
    ppLine23: TppLine;
    ppLine20: TppLine;
    ppDBText9: TppDBText;
    ppLine24: TppLine;
    ppDBText10: TppDBText;
    ppLine25: TppLine;
    ppDBText11: TppDBText;
    ppLine26: TppLine;
    ppDBText12: TppDBText;
    ppLine27: TppLine;
    ppDBText13: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppLine28: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppLine29: TppLine;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppParameterList1: TppParameterList;
    actPrint: TAction;
    qryIncSpecial_InsouranceName: TStringField;
    qryIncSpecialFirstUser: TStringField;
    qryIncSpecialLastUser: TStringField;
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure srcIncSpecialStateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure qryIncSpecialAfterPost(DataSet: TDataSet);
    procedure qryIncSpecialBeforeDelete(DataSet: TDataSet);
    procedure qryIncSpecialBeforePost(DataSet: TDataSet);
    procedure actSearchExecute(Sender: TObject);
    procedure actSort_Execute(Sender: TObject);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure qryIncSpecialAfterInsert(DataSet: TDataSet);
    procedure actOtherExecute(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure actExcelExecute(Sender: TObject);
    procedure actSmsSendExecute(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure lblCompanyNameGetText(Sender: TObject; var Text: string);
    procedure lblPageCountGetText(Sender: TObject; var Text: string);
    procedure lblDateGetText(Sender: TObject; var Text: string);
    procedure qryIncSpecialAfterEdit(DataSet: TDataSet);
  private
    Function chkDateDec(InputDate: string; SN: Integer): Boolean;
    { Private declarations }

  public
    { Public declarations }
  end;

var
  SpecialInsouranceF: TSpecialInsouranceF;

implementation

uses Dm, GlobalPro, searchCode_ADO, sort2, search2, mmessage, DBGrid2Print,
  Amval, ScanImage, SMSUnit;

{$R *.dfm}

procedure TSpecialInsouranceF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 1);
end;

procedure TSpecialInsouranceF.lblCompanyNameGetText(Sender: TObject;
  var Text: string);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TSpecialInsouranceF.lblDateGetText(Sender: TObject; var Text: string);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TSpecialInsouranceF.lblPageCountGetText(Sender: TObject;
  var Text: string);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TSpecialInsouranceF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
end;

procedure TSpecialInsouranceF.srcIncSpecialStateChange(Sender: TObject);
begin
  inherited;
  FreeReservedCodes(dmF.adcBSell);
  okPanel.Visible := qryIncSpecial.State in dsEditModes;
  newPanel.Visible := not okPanel.Visible;
end;

procedure TSpecialInsouranceF.FormCreate(Sender: TObject);
begin
  inherited;
  SetLookUpCash(qryIncSpecial);
  qryIncSpecial.Open;
  qryIncInfo.Open;
end;

procedure TSpecialInsouranceF.SpeedButton1Click(Sender: TObject);
var
  Result: array [0 .. 2] of String;
begin
  inherited;
  if searchCode_ADOF.SearchCode2(dmF.adcBSell, 'Ã” ÃÊÌ',
    'SELECT SerialNum, PelakNum, StuffDesc FROM  Assets.Amval ',
    ['‘„«—Â ”—Ì«· ', '‘„«—Â Å·«ﬂ', '‰«„ ﬂ«·«'], Result, [60, 60, 100], alLeft)
  then
  begin
    if not(qryIncSpecial.State in dsEditModes) then
      qryIncSpecial.Edit;
    qryIncSpecial.FieldByName('Serial').AsString := Result[0];
  end;

end;

procedure TSpecialInsouranceF.qryIncSpecialAfterPost(DataSet: TDataSet);
begin
  inherited;
  BigMessage('À»  ‘œ.', 1);
  if actSmsSend.HelpContext = 1 then
  begin
    actSmsSend.HelpContext := 0;
    actSmsSend.Execute;
  end;
end;

procedure TSpecialInsouranceF.qryIncSpecialBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if get_response('¬Ì« »—«Ì Õ–›  „ÿ∆„‰ Â” Ìœøû') <> mrYes then
    Abort;
end;

procedure TSpecialInsouranceF.qryIncSpecialBeforePost(DataSet: TDataSet);
begin
  inherited;
  if not CheckRequiredFields(DataSet) then
    Abort;
  if not ValidateDatasetDates(DataSet) then
    Abort;
  if not chkDateDec(DataSet.FieldByName('StartDate').AsString,
    DataSet.FieldByName('serial').AsInteger) then
  begin
    Warn(' «—ÌŒ ‘—Ê⁄ «“  «—ÌŒ ﬂ«Â‘ »“—ê — «” .˛');
    FlashAControl(DBEdit6);
    Abort;
  end;

  if DataSet.FieldByName('startDate').AsString > DataSet.FieldByName('EndDate').AsString
  then
  begin
    Warn(' «—ÌŒ Å«Ì«‰ »«Ìœ »“—ê — «“  «—ÌŒ ‘—Ê⁄ »«‘œ.');
    FlashAControl(DBEdit7);
    Abort;
  end;
end;

procedure TSpecialInsouranceF.actSearchExecute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryIncSpecial);
end;

procedure TSpecialInsouranceF.actSmsSendExecute(Sender: TObject);
begin
  inherited;
  SmsSendQry(qryIncSpecial, nil, SmsCustomersBalance_Amval, 0, 0, 1);
end;

procedure TSpecialInsouranceF.actSort_Execute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryIncSpecial);
end;

procedure TSpecialInsouranceF.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #32 then
    SpeedButton1.Click
end;

procedure TSpecialInsouranceF.qryIncSpecialAfterEdit(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('LastUser').AsString :=GetUserStamp;
end;

procedure TSpecialInsouranceF.qryIncSpecialAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('FirstUser').AsString :=GetUserStamp;
  DataSet.FieldByName('InsouranceNo').AsInteger :=
    GetANewCode(Self.name, 'Assets.AssetsInsouranceSpecial', 'InsouranceNo');
  DataSet.FieldByName('InsouranceDate').AsString := var_glb_CurrentDate;
  actSmsSend.HelpContext := 1;
end;

procedure TSpecialInsouranceF.actOtherExecute(Sender: TObject);
begin
  inherited;
  popOther.Popup(Mouse.CursorPos.X, Mouse.CursorPos.y);
end;

procedure TSpecialInsouranceF.actPrintExecute(Sender: TObject);
begin
  inherited;
  InitReportFile(ppReport1, 'SpecialInsourance1.rtm');
end;

procedure TSpecialInsouranceF.N2Click(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(DBGrid1, 0);
end;

procedure TSpecialInsouranceF.N1Click(Sender: TObject);
begin
  inherited;
  CreateMDIForm2(TAmvalF, AmvalF, Self, qryIncSpecial.FieldByName('Serial')
    .AsInteger);

end;

procedure TSpecialInsouranceF.N3Click(Sender: TObject);
begin
  inherited;
  ScanImageF.ScanImage(dmF.adcBSell, 'IncSpecial',
    qryIncSpecial.FieldByName('ID').AsString, 6)
end;

procedure TSpecialInsouranceF.actExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

function TSpecialInsouranceF.chkDateDec;
begin
  with TADOQuery.Create(Self) do
    try
      Connection := dmF.adcBSell;
      SQL.Text :=
        format('SELECT COUNT(*) FROM Assets.Decrease WHERE (SerialNum = %d) AND (DecDate < %s)',
        [SN, QuotedStr(InputDate)]);
      Open;
      Result := Fields[0].AsInteger = 0;
    finally
      Free;
    end;
end;

end.
