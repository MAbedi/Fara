unit RetardListSalary;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ComCtrls, ToolWin, ImgList, DBActns, ActnList,
  StdCtrls, ExtCtrls, Buttons, Grids, Vcl.DBGrids, ADODB, Mask, DBCtrls,
  ppDB, ppDBPipe, ppComm, ppRelatv, ppProd, ppClass, ppReport, math,
  ppPrnabl, ppCtrls, ppCache, ppBands, ppVar, ppStrtch, ppMemo, Menus,
  ppModule, ppTypes, ppSubRpt, ppParameter, ppDesignLayer, System.ImageList,
  System.Actions, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, CedarDbGrid, frmArchiveID,
  Telegram, BaleBot ,
  ppImageDevice, ppPDFDevice, ppPDFSettings, IPPeerClient, REST.Client,
  Data.Bind.Components, Data.Bind.ObjectScope, System.IOUtils, REST.Types,
  Vcl.Imaging.pngimage, IdTCPConnection, IdTCPClient, Data.DB,
  IdExplicitTLSClientServerBase, IdMessageClient, IdIMAP4, Vcl.FileCtrl,
  IdIOHandler, IdIOHandlerSocket, IdIOHandlerStack, IdSSL, IdSSLOpenSSL,
  IdServerIOHandler, IdComponent, IdCustomTCPServer, IdMappedPortTCP,
  IdMappedFTP, IdBaseComponent, mmessage, GeneralDM,
  IdMessage;

type
  TRetardListSalaryF = class(Ttemplate2MDIF)
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    ToolButton11: TToolButton;
    ToolButton12: TToolButton;
    Panel1: TPanel;
    StatusBar1: TStatusBar;
    Label1: TLabel;
    srcPersonels: TDataSource;
    actFilter: TAction;
    qryFunctionsItem: TADOQuery;
    Panel4: TPanel;
    srcFunctionsItem: TDataSource;
    DBGrid2: TDBGrid;
    Label12: TLabel;
    srcWages: TDataSource;
    Label13: TLabel;
    txtTotalWage: TEdit;
    DBGrid3: TDBGrid;
    Label14: TLabel;
    Label15: TLabel;
    txtTotalDecs: TEdit;
    srcDecs: TDataSource;
    BitBtn1: TBitBtn;
    ppReport1: TppReport;
    BitBtn2: TBitBtn;
    actPrint: TAction;
    BitBtn3: TBitBtn;
    ppPersonels: TppDBPipeline;
    ppReport2: TppReport;
    actPrintList: TAction;
    ppFunctionItem: TppDBPipeline;
    ppDetailBand1: TppDetailBand;
    ppShape1: TppShape;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLine13: TppLine;
    ppLine1: TppLine;
    ppLabel4: TppLabel;
    ppLabel8: TppLabel;
    ppLine5: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLabel10: TppLabel;
    ppLine12: TppLine;
    ppLabel9: TppLabel;
    ppLabel26: TppLabel;
    ppLabel31: TppLabel;
    vrbFooter: TppVariable;
    ppwl1: TppLabel;
    ppLabel11: TppLabel;
    ppLine3: TppLine;
    ppLabel12: TppLabel;
    ppwv1: TppLabel;
    ppwv2: TppLabel;
    ppwl2: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppdl: TppLabel;
    ppdv: TppLabel;
    ppLabel27: TppLabel;
    ppdr: TppLabel;
    ppLine8: TppLine;
    ppfl: TppLabel;
    ppLabel19: TppLabel;
    ppfv: TppLabel;
    ppDBText1: TppDBText;
    ppLabel25: TppLabel;
    ppLabel5: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel20: TppLabel;
    ppLabel23: TppLabel;
    ppLabel3: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel32: TppLabel;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppLine67: TppLine;
    ppLabel36: TppLabel;
    ppLine17: TppLine;
    ppShape5: TppShape;
    ppShape6: TppShape;
    ppShape7: TppShape;
    Panel5: TPanel;
    Bevel3: TBevel;
    Label2: TLabel;
    Label6: TLabel;
    Label11: TLabel;
    DBEdit1: TDBEdit;
    DBEdit5: TDBEdit;
    DBGrid5: TDBGrid;
    Bevel1: TBevel;
    Label16: TLabel;
    qryWages: TADOQuery;
    qryWagesSalaryID: TIntegerField;
    qryWagesInfoName_L1: TStringField;
    qryWagesSumPrice: TBCDField;
    qryWages_radif: TIntegerField;
    qryDecs: TADOQuery;
    qryDecsSalaryID: TIntegerField;
    qryDecsInfoName_L1: TStringField;
    qryDecsSumPrice: TBCDField;
    qryDecs_radif: TIntegerField;
    qryPersonels: TADOQuery;
    qryPersonelsPersonelNo: TIntegerField;
    qryPersonelsPersonel_L1: TStringField;
    qryPersonelsPersonel_L2: TStringField;
    qryPersonelsHasFunction: TIntegerField;
    Panel6: TPanel;
    lblColor2: TLabel;
    lblColor1: TLabel;
    lblNotHasFunction: TLabel;
    lblHasFunction: TLabel;
    qryFunctionsItemSalaryID: TIntegerField;
    qryFunctionsItemInfoName_L1: TStringField;
    qryFunctionsItemInfoName_L2: TStringField;
    qryFunctions: TADOQuery;
    srcFunctions: TDataSource;
    qryPayable_Delete: TADOQuery;
    srcPayable_Delete: TDataSource;
    qryPayable_DeletePrice: TBCDField;
    qryLoan: TADOQuery;
    qryLoanPersonelNo: TIntegerField;
    qryLoanFormInfoID: TIntegerField;
    qryLoanRemainLoan: TBCDField;
    BitBtn5: TBitBtn;
    EdtPayable: TEdit;
    actShowFunctionItemsF: TAction;
    BitBtn6: TBitBtn;
    actSort: TAction;
    qryPersonelsAccountNumber: TStringField;
    qryPersonelsInsuranceNumber: TStringField;
    ppReport3: TppReport;
    ppDetailBand3: TppDetailBand;
    ppShape8: TppShape;
    ppShape9: TppShape;
    ppShape10: TppShape;
    ppShape11: TppShape;
    ppLabel24: TppLabel;
    ppLabel37: TppLabel;
    ppLine2: TppLine;
    ppLine4: TppLine;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppLine68: TppLine;
    ppLine69: TppLine;
    ppLine70: TppLine;
    ppLabel40: TppLabel;
    ppLine71: TppLine;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppLabel47: TppLabel;
    ppVariable1: TppVariable;
    ppLbl_wl1: TppLabel;
    ppLabel50: TppLabel;
    ppLine72: TppLine;
    ppLabel51: TppLabel;
    ppLbl_wv1: TppLabel;
    ppLbl_wv2: TppLabel;
    ppLbl_wl2: TppLabel;
    ppLabel60: TppLabel;
    ppLabel61: TppLabel;
    ppLine73: TppLine;
    ppLine74: TppLine;
    ppLabel62: TppLabel;
    ppLabel63: TppLabel;
    ppLbl_dl: TppLabel;
    ppLbl_dv: TppLabel;
    ppLabel66: TppLabel;
    ppLbl_dr: TppLabel;
    ppLine75: TppLine;
    ppLbl_fl: TppLabel;
    ppLabel69: TppLabel;
    ppLbl_fv: TppLabel;
    ppDBText9: TppDBText;
    ppLabel71: TppLabel;
    ppLabel72: TppLabel;
    ppLabel73: TppLabel;
    ppLabel74: TppLabel;
    ppLabel75: TppLabel;
    ppLabel76: TppLabel;
    ppLabel77: TppLabel;
    ppLabel78: TppLabel;
    ppLabel79: TppLabel;
    ppLabel80: TppLabel;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppLine76: TppLine;
    ppLabel81: TppLabel;
    ppLine77: TppLine;
    ppShape12: TppShape;
    ppLine78: TppLine;
    ppLine79: TppLine;
    ppLabel83: TppLabel;
    ppLabel84: TppLabel;
    ppLabel85: TppLabel;
    ppLabel86: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppShape2: TppShape;
    ppLabel22: TppLabel;
    ppLabel28: TppLabel;
    ppVariable2: TppVariable;
    ppDBText6: TppDBText;
    ppLabel68: TppLabel;
    ppLabel70: TppLabel;
    ppLabel90: TppLabel;
    ppLabel91: TppLabel;
    ppLabel92: TppLabel;
    ppLabel93: TppLabel;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppShape3: TppShape;
    ppShape4: TppShape;
    ppLine11: TppLine;
    ppLine14: TppLine;
    PopMnuPrint: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    actPrint2: TAction;
    N3: TMenuItem;
    actAllPrint: TAction;
    N4: TMenuItem;
    N5: TMenuItem;
    ppReport4: TppReport;
    N1: TMenuItem;
    ppWages: TppDBPipeline;
    ppDecs: TppDBPipeline;
    qryWages2: TADOQuery;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    StringField1: TStringField;
    BCDField1: TBCDField;
    srcWages2: TDataSource;
    ppWages2: TppDBPipeline;
    ppFunction: TppDBPipeline;
    qryDecsLoanRemain: TBCDField;
    qryDecs_LoanRemain: TCurrencyField;
    N2: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    qryPersonelsOfficeName_l1: TStringField;
    N9: TMenuItem;
    actDesigner: TAction;
    ppDetailBand4: TppDetailBand;
    ppShape13: TppShape;
    ppShape14: TppShape;
    ppShape15: TppShape;
    ppShape16: TppShape;
    ppLabel21: TppLabel;
    ppLabel29: TppLabel;
    ppLine16: TppLine;
    ppLabel30: TppLabel;
    ppLabel33: TppLabel;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppLabel34: TppLabel;
    ppLine21: TppLine;
    ppLabel35: TppLabel;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppVariable3: TppVariable;
    ppLabel46: TppLabel;
    ppLine22: TppLine;
    ppLabel48: TppLabel;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppLine23: TppLine;
    ppLine24: TppLine;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppLabel64: TppLabel;
    ppLine25: TppLine;
    ppLabel67: TppLabel;
    ppDBText16: TppDBText;
    ppLabel87: TppLabel;
    ppLabel88: TppLabel;
    ppLabel89: TppLabel;
    ppLabel94: TppLabel;
    ppLabel95: TppLabel;
    ppLabel96: TppLabel;
    ppLabel97: TppLabel;
    ppLabel98: TppLabel;
    ppLabel99: TppLabel;
    ppLabel100: TppLabel;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppLine26: TppLine;
    ppLabel101: TppLabel;
    ppLine27: TppLine;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppDetailBand5: TppDetailBand;
    ppDBText22: TppDBText;
    ppDBText31: TppDBText;
    ppDBText21: TppDBText;
    ppSubReport2: TppSubReport;
    ppChildReport2: TppChildReport;
    ppDetailBandWage1: TppDetailBand;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppSubReport3: TppSubReport;
    ppChildReport3: TppChildReport;
    ppDetailBand7: TppDetailBand;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppSubReport4: TppSubReport;
    ppChildReport4: TppChildReport;
    ppDetailBand8: TppDetailBand;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    ppLabel45: TppLabel;
    ppLine15: TppLine;
    ppSubReport5: TppSubReport;
    ppChildReport5: TppChildReport;
    qryFunctionsFunctionTime: TFloatField;
    qryFunctionsItemFHours: TFloatField;
    qryFunctionsItemFDaily: TFloatField;
    qryFunctionsFunctionDay: TFloatField;
    DBGrid1: TCedarDbgrid;
    frArchive: TfrArchiveID;
    rdgrpEmail: TRadioGroup;
    qryPersonelsEmail: TWideStringField;
    Memo1: TMemo;
    qryPersonelsNationalID: TStringField;
    actTelegram: TAction;
    actSendServer: TAction;
    actsSendEmailDirect: TAction;
    BitBtn7: TBitBtn;
    popTelegram: TPopupMenu;
    MenuItem3: TMenuItem;
    mnuTelegram: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItem7: TMenuItem;
    MenuItem8: TMenuItem;
    MenuItem9: TMenuItem;
    MenuItem10: TMenuItem;
    MenuItem11: TMenuItem;
    MenuItem12: TMenuItem;
    MenuItem13: TMenuItem;
    MenuItem14: TMenuItem;
    MenuItem15: TMenuItem;
    MenuItem16: TMenuItem;
    MenuItem17: TMenuItem;
    MenuItem18: TMenuItem;
    MenuItem19: TMenuItem;
    MenuItem20: TMenuItem;
    MenuItem21: TMenuItem;
    MenuItem22: TMenuItem;
    MenuItem23: TMenuItem;
    MenuItem24: TMenuItem;
    MenuItem25: TMenuItem;
    MenuItem26: TMenuItem;
    popSendToServer: TPopupMenu;
    PNG2: TMenuItem;
    MenuItem50: TMenuItem;
    MenuItem51: TMenuItem;
    PNG3: TMenuItem;
    N28: TMenuItem;
    N24: TMenuItem;
    BitBtn9: TBitBtn;
    qryPersonelsTelegramChatID: TStringField;
    qryPersonelsBaleChatID: TStringField;
    BitBtn4: TBitBtn;
    actBale: TAction;
    procedure ToolButton12Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure qryPersonelsAfterOpen(DataSet: TDataSet);
    procedure FormResize(Sender: TObject);
    procedure qryWagesCalcFields(DataSet: TDataSet);
    procedure qryPersonelsAfterScroll(DataSet: TDataSet);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure qryWagesAfterOpen(DataSet: TDataSet);
    procedure qryDecsCalcFields(DataSet: TDataSet);
    procedure qryDecsAfterOpen(DataSet: TDataSet);
    procedure qryNetPayableAfterScroll(DataSet: TDataSet);
    procedure ppwl1GetText(Sender: TObject; var Text: String);
    procedure ppLabel13GetText(Sender: TObject; var Text: String);
    procedure ppLabel14GetText(Sender: TObject; var Text: String);
    procedure ppLabel23GetText(Sender: TObject; var Text: String);
    procedure ppLabel20GetText(Sender: TObject; var Text: String);
    procedure ppLabel1GetText(Sender: TObject; var Text: String);
    procedure ppLabel2GetText(Sender: TObject; var Text: String);
    procedure ppSystemVariable1GetText(Sender: TObject; var Text: String);
    procedure ppLabel46GetText(Sender: TObject; var Text: String);
    procedure ppLabel45GetText(Sender: TObject; var Text: String);
    procedure ppLabel34GetText(Sender: TObject; var Text: String);
    procedure ppSummaryBand1BeforePrint(Sender: TObject);
    procedure ppReport2BeforePrint(Sender: TObject);
    procedure ppDetailBand2AfterGenerate(Sender: TObject);
    procedure vrbFooterGetText(Sender: TObject; var Text: String);
    procedure ppdlGetText(Sender: TObject; var Text: String);
    procedure ppflGetText(Sender: TObject; var Text: String);
    procedure ppLabel5GetText(Sender: TObject; var Text: String);
    procedure lblColor1Click(Sender: TObject);
    procedure actPrintListExecute(Sender: TObject);
    procedure MskArchiveIDChange(Sender: TObject);
    procedure actShowFunctionItemsFExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure ppLbl_flGetText(Sender: TObject; var Text: String);
    procedure ppLbl_wl1GetText(Sender: TObject; var Text: String);
    procedure ppLbl_dlGetText(Sender: TObject; var Text: String);
    procedure actPrint2Execute(Sender: TObject);
    procedure actAllPrintExecute(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure qryFunctionsAfterScroll(DataSet: TDataSet);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure frArchivecmbFirstArchiveIDChange(Sender: TObject);
    procedure mnuTelegramClick(Sender: TObject);
    procedure actTelegramExecute(Sender: TObject);
    procedure actsSendEmailDirectExecute(Sender: TObject);
    procedure actSendServerExecute(Sender: TObject);
    procedure mnuSendToFileClick(Sender: TObject);
    procedure mnuSendToFileServerClick(Sender: TObject);
    procedure rdgrpEmailClick(Sender: TObject);
    procedure actBaleExecute(Sender: TObject);
  private
    MonthNo: Byte;
    // WageGuide:  String;
    // DecGuide:   String;
    TotalWages: array [1 .. 14] of Currency;
    TotalDecs: array [1 .. 10] of Currency;
    _TotalWages: Currency;
    _TotalDecs: Currency;
    _TotalNetPayable: Currency;
    TaxInvolved: Currency;
    InsInvolved: Currency;
    TotalTaxInvolved: Currency;
    TotalInsInvolved: Currency;
    PersonelTotalWage: Currency;
    PersonelTotalDecs: Currency;
    CalculatedPersonels, FishMsg: String;
    SendEmailDirect: Boolean;
    procedure UpdateList;
    // procedure PreparePrintColumns;
    // procedure PrintPersonelSalaryInList;
    // procedure PrintTotals;
    // procedure LoadFishTemplate;
    procedure HasUse(n: Byte);
    function _GetLoanRemain(SalaryNo: int64): Currency;
    procedure SendTelegramChatID(ChatID, Text_FileName: string;
      ApiName: tApiName);
    function ConvertFarsiToFinglish(S: string): string;
    procedure PrintSendTelegramChatID(dir, FileType: string);
    procedure RenameFileI(File_Name: string);
    function SalaryFileName(fileExtension: string): string;
    function SalaryFileName2(fileExtension: string): string;
    function getApiName: tApiName;
    function getChatID: string;

  public
    { Public declarations }
  end;

var
  RetardListSalaryF: TRetardListSalaryF;

implementation

uses DM, GlobalPro, filter_ADO, FilterClass_ADO,
  SalaryFunctions, StrUtils, FunctionItems, search2,
  sort2, FaraConsts, Filter_ADO_Const;

{$R *.dfm}

procedure TRetardListSalaryF.ToolButton12Click(Sender: TObject);
begin
  inherited;
  MonthNo := (Sender as TToolButton).tag;
  GetYearMounth(MonthNo);
  frArchive.LoadChange(MonthNo);
  UpdateList;
end;

procedure TRetardListSalaryF.UpdateList;
var
  CurPid: String;
begin
  GetYearMounth(MonthNo);
  if qryPersonels.Active then
    CurPid := qryPersonels.FieldByName('PersonelNo').AsString;

  with qryFunctions do
  begin
    Active := False;
    Parameters.ParamByName('MonthNo').Value := MonthNo;
    Parameters.ParamByName('Years').Value := optp.Year;
    // Active:=True;
  end; // with

  with qryFunctionsItem do
  begin
    Active := False;
    Parameters.ParamByName('MonthNo').Value := MonthNo;
    Parameters.ParamByName('Years').Value := optp.Year;
    // Active:=True;
  end; // with

  with qryWages do
  begin
    Active := False;
    Parameters.ParamByName('MonthNo').Value := MonthNo;
    Parameters.ParamByName('LabelIDFrom').Value :=
      GetcFrom(myParams.ParamValues['LabelID'], ftInteger);
    Parameters.ParamByName('LabelIDTo').Value :=
      GetcTo(myParams.ParamValues['LabelID'], ftInteger);
    Parameters.ParamByName('FirstArchiveID').Value := frArchive.FirstArchiveID;
    Parameters.ParamByName('LastArchiveID').Value := frArchive.LastArchiveID;

    Parameters.ParamByName('YearIDFrom').Value := APPBank.Year;
    Parameters.ParamByName('YearIDTo').Value := APPBank.Year;

  end; // with
  with qryWages2 do
  begin
    Active := False;
    Parameters.ParamByName('MonthNo').Value := MonthNo;
    Parameters.ParamByName('FirstArchiveID').Value := frArchive.FirstArchiveID;
    Parameters.ParamByName('LastArchiveID').Value := frArchive.LastArchiveID;
    Parameters.ParamByName('LabelIDFrom').Value :=
      GetcFrom(myParams.ParamValues['LabelID'], ftInteger);
    Parameters.ParamByName('LabelIDTo').Value :=
      GetcTo(myParams.ParamValues['LabelID'], ftInteger);

    Parameters.ParamByName('YearIDFrom').Value := APPBank.Year;
    Parameters.ParamByName('YearIDTo').Value := APPBank.Year;

  end; // with

  with qryDecs do
  begin
    Active := False;
    Parameters.ParamByName('MonthNo').Value := MonthNo;
    Parameters.ParamByName('FirstArchiveID').Value := frArchive.FirstArchiveID;
    Parameters.ParamByName('LastArchiveID').Value := frArchive.LastArchiveID;;
    Parameters.ParamByName('LabelIDFrom').Value :=
      GetcFrom(myParams.ParamValues['LabelID'], ftInteger);
    Parameters.ParamByName('LabelIDTo').Value :=
      GetcTo(myParams.ParamValues['LabelID'], ftInteger);

    Parameters.ParamByName('YearIDFrom').Value := APPBank.Year;
    Parameters.ParamByName('YearIDTo').Value := APPBank.Year;

    // Active:=True;
  end; // with

  with qryPersonels do
  begin
    Active := False;
    SQL.Text := 'SELECT PersonelInfo.PersonelNo, ';
    SQL.Add('PersonelInfo.lastName_L1 + '' '' + PersonelInfo.name_L1 AS Personel_L1,');
    SQL.Add('PersonelInfo.lastName_L2 + '' '' + PersonelInfo.name_L2 AS Personel_L2, FormsInfo.InfoID, FormsInfo.InfoName_L1,');
    SQL.Add('FormsInfo.InfoName_L2, Interdicts.jobCode, ISNULL(FunctionUsed.PersonelNo, 0) AS HasFunction');
    SQL.Add(', Interdicts.OfficeCode,PersonelInfo.AccountNumber, PersonelInfo.InsuranceNumber');
    SQL.Add(', FormsInfo_1OfficeCode.InfoName_L1 AS OfficeName_l1,FormsInfo_1OfficeCode.InfoName_L2 AS OfficeName_l2');
    SQL.Add(', PersonelInfo.TelegramChatID, PersonelInfo.BaleChatID,PersonelInfo.Email,PersonelInfo.NationalID');

    SQL.Add('FROM Pay.PersonelInfo INNER JOIN');
    SQL.Add('Pay.FormsInfo ON PersonelInfo.PersonelState = FormsInfo.FormInfoID INNER JOIN');
    SQL.Add('Pay.Interdicts ON PersonelInfo.PersonelNo = Interdicts.PersonelNo LEFT OUTER JOIN');
    SQL.Add('Pay.FormsInfo FormsInfo_1OfficeCode ON Pay.Interdicts.OfficeCode = FormsInfo_1OfficeCode.FormInfoID LEFT OUTER');
    SQL.Add('JOIN');
    SQL.Add('(SELECT PersonelNo FROM Pay.Functions WHERE (Mounth = :MonthNo)');
    SQL.Add('AND  (YearID = :YearID )');
    Parameters.ParamByName('YearID').Value := APPBank.Year;

    SQL.Add('GROUP BY PersonelNo) FunctionUsed ON PersonelInfo.PersonelNo = FunctionUsed.PersonelNo');
    SQL.Add('LEFT OUTER JOIN Pay.FormsInfo AS FormsInfoEmployTypeID ON Pay.Interdicts.EmployTypeID = FormsInfoEmployTypeID.FormInfoID');

    if optp.labelFilterON then
    begin
      SQL.Add('INNER JOIN');
      SQL.Add('(SELECT DISTINCT PersonelNO, LabelID');
      SQL.Add('FROM Pay.FixedCalculated');
      SQL.Add('WHERE (Mounth = :MonthNoLabel )');
      SQL.Add('AND(YearID BETWEEN :YearIDFrom AND :YearIDTo )');
      SQL.Add('AND(LabelID BETWEEN :LabelIDFrom AND :LabelIDTo ))');
      SQL.Add(' AS FixedCal ON PersonelInfo.PersonelNo = FixedCal.PersonelNO');

      Parameters.ParamByName('YearIDFrom').Value := APPBank.Year;
      Parameters.ParamByName('YearIDTo').Value := APPBank.Year;

      Parameters.ParamByName('MonthNoLabel').Value := MonthNo;

      Parameters.ParamByName('LabelIDFrom').Value :=
        GetcFrom(myParams.ParamValues['LabelID'], ftInteger);
      Parameters.ParamByName('LabelIDTo').Value :=
        GetcTo(myParams.ParamValues['LabelID'], ftInteger);

    end;

    SQL.Add('WHERE (FormsInfo.InfoID < 50) AND');
    SQL.Add('(PersonelInfo.PersonelNo BETWEEN :pidFrom AND :pidTo) AND');
    SQL.Add('(Interdicts.InterdicType = 0 ) AND (Interdicts.State < 11) and (FormsInfo_1OfficeCode.InfoID BETWEEN :OfficeCodeFrom AND');
    SQL.Add(':OfficeCodeTo)');
    SQL.Add('AND (FormsInfoEmployTypeID.InfoID BETWEEN :EmployTypeIDFrom AND :EmployTypeIDTo )');

    case rdgrpEmail.ItemIndex of
      0:
        ;
      1:
        SQL.Add('AND (LEN(PersonelInfo.Email) > 4)');
      3:
        SQL.Add('AND (LEN(PersonelInfo.TelegramChatID) > 1)');
      4:
        SQL.Add('AND (LEN(PersonelInfo.BaleChatID) > 1)');

    else
      SQL.Add('AND(LEN(PersonelInfo.Email) <= 4)');
    end;

    SQL.Add('ORDER BY PersonelInfo.PersonelNo');

    Parameters.ParamByName('MonthNo').Value := MonthNo;
    Parameters.ParamByName('pidFrom').Value :=
      GetcFrom(myParams.ParamValues['c_PersonelNo']);
    Parameters.ParamByName('pidTo').Value :=
      GetcTo(myParams.ParamValues['c_PersonelNo']);
    Parameters.ParamByName('OfficeCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['OfficeCode']);
    Parameters.ParamByName('OfficeCodeTo').Value :=
      GetcTo(myParams.ParamValues['OfficeCode']);
    Parameters.ParamByName('EmployTypeIDFrom').Value :=
      GetcFrom(myParams.ParamValues['EmployTypeID'], ftInteger);
    Parameters.ParamByName('EmployTypeIDTo').Value :=
      GetcTo(myParams.ParamValues['EmployTypeID'], ftInteger);
    Active := True;
  end; // with
  // with qryPayable do begin
  // Active:=False;
  // Parameters.ParamByName('MonthNo').Value:=MonthNo;
  // Active:=True;
  // end;//with

  with DMF.qryTmpTmpp do
  begin
    Active := False;
    SQL.Text := 'SELECT ISNULL(FunctionUsed.PersonelNo, 0)';
    SQL.Add('FROM Pay.PersonelInfo INNER JOIN Pay.Interdicts ON Pay.PersonelInfo.PersonelNo =');
    SQL.Add('Pay.Interdicts.PersonelNo LEFT OUTER JOIN(SELECT PersonelNo FROM Pay.Functions');
    SQL.Add('WHERE (Mounth = :MonthNo)');
    SQL.Add('AND  (YearID = :YearID )');
    Parameters.ParamByName('YearID').Value := APPBank.Year;

    SQL.Add('GROUP BY PersonelNo) FunctionUsed ON Pay.PersonelInfo.PersonelNo = FunctionUsed.PersonelNo');
    SQL.Add('WHERE (Pay.PersonelInfo.PersonelNo BETWEEN :pidFrom AND :pidTo) AND (ISNULL(FunctionUsed.PersonelNo, 0) <> 0)');
    Parameters.ParamByName('MonthNo').Value := MonthNo;
    Parameters.ParamByName('pidFrom').Value :=
      GetcFrom(myParams.ParamValues['c_PersonelNo']);
    Parameters.ParamByName('pidTo').Value :=
      GetcTo(myParams.ParamValues['c_PersonelNo']);
    Active := True;
    lblHasFunction.Caption := 'پرسنل با كاركرد = ' + IntToStr(RecordCount);
    lblNotHasFunction.Caption := 'پرسنل بدون كاركرد = ' +
      IntToStr(qryPersonels.RecordCount - RecordCount);
    Active := False;
  end;
  // with
  if CurPid <> '' then
    qryPersonels.Locate('PersonelNo', CurPid, []);
end;

procedure TRetardListSalaryF.FormShow(Sender: TObject);
begin
  inherited;
  actFilter.Execute;
  if myParams.FindParam('c_PersonelNo') = nil then
    close

end;

procedure TRetardListSalaryF.frArchivecmbFirstArchiveIDChange(Sender: TObject);
begin
  inherited;
  frArchive.cmbFirstArchiveIDChange(Sender);
  UpdateList;
end;

procedure TRetardListSalaryF.actBaleExecute(Sender: TObject);
begin
  inherited;
  rdgrpEmail.ItemIndex := 4;
  popTelegram.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TRetardListSalaryF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      AddItemFilter(GetFilter, TLabelID);
      AddItem(DMF.adcSalary, 'EmployTypeID', 'نوع حكم ', 'نوع', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT InfoID,InfoName_L1 FROM Pay.FormsInfo WHERE  (FormType = 14)',
        'SELECT MIN(InfoID), MAX(InfoID) FROM Pay.FormsInfo WHERE  (FormType = 14)');
      AddItem(DMF.adcSalary, 'OfficeCode', 'واحد سازماني', 'كد', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT Pay.FormsInfo.InfoID, Pay.FormsInfo.InfoName_L1' +
        ' FROM  Pay.FormsInfo  ' + ' WHERE (Pay.FormsInfo.FormType = 12) ',
        'SELECT  0, MAX(Pay.FormsInfo.InfoID) ' +
        ' FROM Pay.FormsInfo where  (Pay.FormsInfo.FormType = 12) ');
      AddItem(DMF.adcSalary, 'c_PersonelNo', 'مشخصات پرسنلي', 'شماره',
        ftInteger, dvMinMax, '', '', ciLookup,
        'SELECT PersonelNo,name_L1 + ''  '' + lastName_L1 AS Personel FROM Pay.PersonelInfo ',
        'SELECT MIN(PersonelNo), MAX(PersonelNo) FROM Pay.PersonelInfo');
      if ShowModal = mrOk then
      begin
        GetFilterString;
        UpdateList;
      end; // if
    finally
      Free;
    end; // try
  end; // with
end;

procedure TRetardListSalaryF.FormCreate(Sender: TObject);
begin
  inherited;
  SendEmailDirect := False;
  MonthNo := var_glb_CurrentMonth;
  if MonthNo < 1 then
    MonthNo := 1;
  frArchive.LoadChange(MonthNo);
  ToolBar1.Buttons[MonthNo - 1].Down := True;
end;

procedure TRetardListSalaryF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid2);
  SaveColWidth(DBGrid3);
end;

procedure TRetardListSalaryF.qryPersonelsAfterOpen(DataSet: TDataSet);
begin
  inherited;
  StatusBar1.Panels[2].Text := 'تعداد پرسنل = ' +
    IntToStr(qryPersonels.RecordCount);

end;

procedure TRetardListSalaryF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid2, 1, True);
  SetColSize(DBGrid3, 1);
end;

procedure TRetardListSalaryF.qryWagesCalcFields(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('_radif').AsInteger := abs(DataSet.RecNo);
end;

procedure TRetardListSalaryF.rdgrpEmailClick(Sender: TObject);
begin
  inherited;
  UpdateList
end;

procedure TRetardListSalaryF.qryPersonelsAfterScroll(DataSet: TDataSet);
var
  pid: String;
begin
  inherited;
  pid := DataSet.FieldByName('PersonelNo').AsString;
  with qryFunctions do
  begin
    Active := False;
    Parameters.ParamByName('PersonelNo').Value := pid;
    Active := True;
  end;
  // with

  with qryWages do
  begin
    Active := False;
    Parameters.ParamByName('c_PersonelNo').Value := pid;
    Active := True;
  end;
  // with
  with qryDecs do
  begin
    Active := False;
    Parameters.ParamByName('c_PersonelNo').Value := pid;
    Parameters.ParamByName('LabelIDFrom').Value :=
      GetcFrom(myParams.ParamValues['LabelID'], ftInteger);
    Parameters.ParamByName('LabelIDTo').Value :=
      GetcTo(myParams.ParamValues['LabelID'], ftInteger);
    Active := True;
  end;
  // with
  InsInvolved := 0;
  TaxInvolved := 0;
  with DMF.qryTmpTmpp do
  begin
    Active := False;
    SQL.Text := 'SELECT SUM(Price) AS SumTax FROM Pay.FixedCalculated';
    SQL.Add('Where (Mounth = :Mounth) AND (PersonelNO = :Pid) AND (ShowListKind = :Type)');
    SQL.Add('AND (YearID = :YearID  ) AND (Years = :Years  )');
    SQL.Add('GROUP BY Mounth, PersonelNO, ShowListKind');

    Parameters.ParamByName('YearID').Value := APPBank.Year;
    Parameters.ParamByName('Years').Value := optp.Year;

    Parameters.ParamByName('Mounth').Value := MonthNo;
    Parameters.ParamByName('Pid').Value := DataSet['PersonelNo'];
    Parameters.ParamByName('Type').Value := 11;
    Active := True;
    TaxInvolved := Fields[0].AsCurrency;
    Active := False;
    Parameters[2].Value := 3;
    Active := True;
    InsInvolved := Fields[0].AsCurrency;
    Active := False;
  end; // with
  StatusBar1.Panels[0].Text := 'مشمول بيمه = ' + CurrToStrF(InsInvolved,
    ffCurrency, 0);
  StatusBar1.Panels[1].Text := 'مشمول ماليات = ' + CurrToStrF(TaxInvolved,
    ffCurrency, 0);
end;

procedure TRetardListSalaryF.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  inherited;
  if not(gdSelected in State) then
  begin
    if odd(DBGrid1.DataSource.DataSet.RecNo) then
      DBGrid1.Canvas.Brush.Color := const_fixed_columns_color;
  end; // if
  if qryPersonels.FieldByName('HasFunction').AsInteger <> 0 then
    DBGrid1.Canvas.Font.Color := lblColor1.Color
  else
    DBGrid1.Canvas.Font.Color := lblColor2.Color;
  DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TRetardListSalaryF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
// var
// c: String;
begin
  inherited;
  QuickSearch(Key, qryPersonels.FieldByName('PersonelNo'));

  // if qryPersonels.State=dsBrowse then begin
  // c:=Key;// getKeyboardNumber(key);
  // if c<>'' then begin qryPersonels.Locate('Personel_L1',c,[]);
  // key:=#0;
  // exit;
  // end else Screen.ActiveForm.Perform(WM_NEXTDLGCTL,0,0);
  // end;//if

end;

procedure TRetardListSalaryF.qryWagesAfterOpen(DataSet: TDataSet);
var
  SalaryId4qryWages2: Integer;
begin
  inherited;
  SalaryId4qryWages2 := 999999;
  with DataSet do
  begin
    DisableControls;
    PersonelTotalWage := 0;
    while not eof do
    begin
      PersonelTotalWage := PersonelTotalWage + DataSet.FieldByName('SumPrice')
        .AsCurrency;
      if RecNo = ppDetailBandWage1.PrintCount then
        SalaryId4qryWages2 := DataSet.FieldByName('SalaryID').AsInteger;
      Next;
    end; // while
    First;
    EnableControls;
  end; // with
  txtTotalWage.Text := CurrToStrF(PersonelTotalWage, ffCurrency, 0);

  with qryWages2 do
  begin
    Active := False;
    Parameters.ParamByName('c_PersonelNo').Value :=
      qryPersonels.FieldByName('PersonelNo').AsString;
    Parameters.ParamByName('SalaryID').Value := SalaryId4qryWages2;
    Active := True;
  end; // with

end;

procedure TRetardListSalaryF.qryDecsCalcFields(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('_radif').AsInteger := abs(DataSet.RecNo);
  DataSet.FieldByName('_LoanRemain').Value :=
    _GetLoanRemain(DataSet.FieldByName('SalaryID').AsInteger);
end;

procedure TRetardListSalaryF.qryDecsAfterOpen(DataSet: TDataSet);
begin
  inherited;
  with DataSet do
  begin
    DisableControls;
    PersonelTotalDecs := 0;
    while not eof do
    begin
      PersonelTotalDecs := PersonelTotalDecs + DataSet.FieldByName('SumPrice')
        .AsCurrency;
      // Edit;
      // DataSet.fieldbyname('_LoanRemain').Value:=_GetLoanRemain(fieldbyname('SalaryID').AsInteger);
      // Post;
      Next;
    end; // while
    First;
    EnableControls;
  end; // with
  txtTotalDecs.Text := CurrToStrF(PersonelTotalDecs, ffCurrency, 0);
  EdtPayable.Text := CurrToStrF(PersonelTotalWage - PersonelTotalDecs,
    ffCurrency, 0);
end;

procedure TRetardListSalaryF.qryNetPayableAfterScroll(DataSet: TDataSet);
begin
  inherited;
  // lblNetPayable.Caption:=
  DBGrid1.Hint := num2alphabet
    (trunc(roundto(DataSet.FieldByName('n_value').AsInteger / 10, 2)))
    + ' تومان';
end;

procedure TRetardListSalaryF.ppwl1GetText(Sender: TObject; var Text: String);
var
  r: Byte;
begin
  inherited;
  with qryWages do
  begin
    DisableControls;
    First;
    Text := '';
    ppwv1.Text := '';
    ppwl2.Text := '';
    ppwv2.Text := '';
    r := 0;
    while not eof do
    begin
      if r < 9 then
      begin
        Text := Text + FieldByName('InfoName_L1').AsString + #254#10;
        ppwv1.Text := ppwv1.Text + CurrToStrF(FieldByName('SumPrice')
          .AsCurrency, ffCurrency, 0) + #10;
      end
      else
      begin
        ppwl2.Text := ppwl2.Text + FieldByName('InfoName_L1').AsString
          + #254#10;
        ppwv2.Text := ppwv2.Text + CurrToStrF(FieldByName('SumPrice')
          .AsCurrency, ffCurrency, 0) + #10;
      end; // esle
      Next;
      Inc(r);
    end; // while
    EnableControls;
  end; // with
end;

procedure TRetardListSalaryF.ppLabel13GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := txtTotalWage.Text;
end;

procedure TRetardListSalaryF.ppLabel14GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := txtTotalDecs.Text;
end;

procedure TRetardListSalaryF.ppLabel23GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := StatusBar1.Panels[0].Text;
end;

procedure TRetardListSalaryF.ppLabel20GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := StatusBar1.Panels[1].Text;
end;

procedure TRetardListSalaryF.ppLabel1GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TRetardListSalaryF.ppLabel2GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := 'فيش معوقه حقوق ' + ToolBar1.Buttons[MonthNo - 1].Caption + ' ماه ' +
    optp.Year;
end;


// procedure TRetardListSalaryF.PreparePrintColumns;
// var
// n:  Byte;
// i:  Byte;
// x:  Integer;
// lblName:  String;
// begin
// with DMF.qryTmpTmpp do begin
// Active:=false;
// SQL.Text:='SELECT ISNULL(FixedCalculated.c_Caption, ConstantWages.c_benefittitle) AS c_Caption,';
// SQL.Add  ('FixedCalculated.n_SalaryType * 100 + FixedCalculated.n_code AS wcode');
// SQL.Add  ('FROM Pay.FixedCalculated INNER JOIN');
// SQL.Add  ('ConstantWages ON FixedCalculated.n_code = ConstantWages.n_wagecode INNER JOIN');
// SQL.Add  ('Pay.PersonelInfo ON FixedCalculated.c_PersonelNo = PersonelInfo.c_PersonelNo');
// SQL.Add  ('WHERE (FixedCalculated.n_month = :Month1) AND (FixedCalculated.n_Essense = 1) AND (FixedCalculated.n_SalaryType IN (1, 6)) AND');
// SQL.Add  ('(PersonelInfo.n_PersonelState between :StateFrom and :StateTo)');
// SQL.Add  ('GROUP BY ISNULL(FixedCalculated.c_Caption, ConstantWages.c_benefittitle), FixedCalculated.n_SalaryType * 100 + FixedCalculated.n_code');
// SQL.Add  ('UNION');
// SQL.Add  ('SELECT DecExtTypes.c_DecExtTopic AS c_Caption, FixedCalculated.n_SalaryType * 100 + DecExtTypes.n_DecExtCode AS wcode');
// SQL.Add  ('FROM DecExtTypes INNER JOIN');
// SQL.Add  ('FixedCalculated INNER JOIN');
// SQL.Add  ('PersonelDecExt ON FixedCalculated.n_code = PersonelDecExt.n_PersonelDecExtID ON');
// SQL.Add  ('DecExtTypes.n_DecExtCode = PersonelDecExt.n_DecExtCode INNER JOIN');
// SQL.Add  ('DecExtGroups ON DecExtTypes.n_DecExtGrpCode = DecExtGroups.N_DecExtGrpCode');
// SQL.Add  ('WHERE (FixedCalculated.n_month = :month2) AND (DecExtTypes.n_DecExtGrpCode > 10) AND (FixedCalculated.n_SalaryType = 3)');
// SQL.Add  ('GROUP BY DecExtTypes.c_DecExtTopic, FixedCalculated.n_SalaryType * 100 + DecExtGroups.N_DecExtGrpCode, DecExtTypes.n_DecExtCode,');
// SQL.Add  ('FixedCalculated.n_SalaryType');
// SQL.Add  ('UNION');
// SQL.Add  ('select ''مأموريت'' as c_Caption,202 as wcode FROM Pay.FixedCalculated');
// SQL.Add  ('WHERE (FixedCalculated.n_month = :month3) AND (FixedCalculated.n_SalaryType=2)');
// SQL.Add  ('ORDER BY wcode');
// Parameters.ParamByName('StateFrom').Value:=GetcFrom(myParams.ParamValues['PersonelState'],ftInteger);
// Parameters.ParamByName('StateTo').Value:=GetcTo(myParams.ParamValues['PersonelState'],ftInteger);
// Parameters.ParamByName('Month1').Value:=MonthNo;
// Parameters.ParamByName('Month2').Value:=MonthNo;
// Parameters.ParamByName('Month3').Value:=MonthNo;
// Active:=True;
// WageGuide:='';
// n:=1;
// while not eof do begin
// WageGuide:=WageGuide + format('#%d#%.2d',[fieldbyname('wcode').asinteger,n]);
// lblName:='w' + IntToStr(n);
// if ppHeaderBand1.ObjectByName(x,lblName) then
// (ppHeaderBand1.Objects[x] as TppLabel).Text:=fieldbyname('c_Caption').AsString;
//
// Inc(n);
// Next;
// end;//while
// for i:=n to 14 do
// if ppHeaderBand1.ObjectByName(x,'w' + IntToStr(i)) then
// (ppHeaderBand1.Objects[x] as TppLabel).Text:='---';
// Active:=False;
// SQL.Text:='SELECT DecExtTypes.c_DecExtTopic';
// SQL.Add  ('FROM DecExtTypes INNER JOIN');
// SQL.Add  ('FixedCalculated INNER JOIN');
// SQL.Add  ('PersonelDecExt ON FixedCalculated.n_code = PersonelDecExt.n_PersonelDecExtID ON');
// SQL.Add  ('DecExtTypes.n_DecExtCode = PersonelDecExt.n_DecExtCode INNER JOIN');
// SQL.Add  ('Pay.PersonelInfo ON FixedCalculated.c_PersonelNo = PersonelInfo.c_PersonelNo');
// SQL.Add  ('WHERE (FixedCalculated.n_month = :MonthNo) AND (FixedCalculated.n_SalaryType = 3) AND (DecExtTypes.n_DecExtGrpCode < 10) AND');
// SQL.Add  ('(PersonelInfo.n_PersonelState between :StateFrom and :StateTo)');
// SQL.Add  ('GROUP BY DecExtTypes.c_DecExtTopic, DecExtTypes.n_DecExtGrpCode');
// SQL.Add  ('ORDER BY DecExtTypes.n_DecExtGrpCode');
// Parameters.ParamByName('StateFrom').Value:=GetcFrom(myParams.ParamValues['PersonelState'],ftInteger);
// Parameters.ParamByName('StateTo').Value:=GetcTo(myParams.ParamValues['PersonelState'],ftInteger);
// Parameters.ParamByName('MonthNo').Value:=MonthNo;
// Active:=True;
// DecGuide:='';
// n:=1;
// while not eof do begin
// DecGuide:=DecGuide + format('#%s#%.2d',[fieldbyname('c_DecExtTopic').AsString,n]);
// lblName:='d' + IntToStr(n);
// if ppHeaderBand1.ObjectByName(x,lblName) then
// (ppHeaderBand1.Objects[x] as TppLabel).Text:=fieldbyname('c_DecExtTopic').AsString;
// Inc(n);
// Next;
// end;//while
// DecGuide:=DecGuide + format('#%s#%.2d',['حق بيمه',n]);
// lblName:='d' + IntToStr(n);
// if ppHeaderBand1.ObjectByName(x,lblName) then
// (ppHeaderBand1.Objects[x] as TppLabel).Text:='حق بيمه';
// Inc(n);
//
// DecGuide:=DecGuide + format('#%s#%.2d',['ماليات',n]);
// lblName:='d' + IntToStr(n);
// if ppHeaderBand1.ObjectByName(x,lblName) then
// (ppHeaderBand1.Objects[x] as TppLabel).Text:='ماليات';
// Inc(n);
//
// DecGuide:=DecGuide + format('#%s#%.2d',['جريمه',n]);
// lblName:='d' + IntToStr(n);
// if ppHeaderBand1.ObjectByName(x,lblName) then
// (ppHeaderBand1.Objects[x] as TppLabel).Text:='جريمه';
//
// for i:=n+1 to 10 do
// if ppHeaderBand1.ObjectByName(x,'d' + IntToStr(i)) then
// (ppHeaderBand1.Objects[x] as TppLabel).Text:='---';
// Active:=False;
// end;//with
// end;

procedure TRetardListSalaryF.ppSystemVariable1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := 'صفحه ' + StringReplace(Text, 'of', 'از', []);
end;

procedure TRetardListSalaryF.ppLabel46GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := 'تاريخ چاپ: ' + var_glb_CurrentDate;
end;

// procedure TRetardListSalaryF.PrintPersonelSalaryInList;
// var
// p:  Integer;
// x:  Integer;
// prvv:  array[1..10] of Currency;
// n:  Byte;
// isCalculatedBefore: Boolean;
// begin
// inherited;
// end;

procedure TRetardListSalaryF.ppLabel45GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TRetardListSalaryF.ppLabel34GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := 'ليست معوقه حقوق ' + ToolBar1.Buttons[MonthNo - 1].Caption + ' ماه ' +
    optp.Year;
end;

procedure TRetardListSalaryF.ppSummaryBand1BeforePrint(Sender: TObject);
begin
  inherited;
  // PrintTotals;
end;

// procedure TRetardListSalaryF.PrintTotals;
// var
// i:  Byte;
// x:  Integer;
// begin
// ppTotalNetPayable.Text:=CurrToStrF(_TotalNetPayable,ffCurrency,0);
// ppTotalWages.Text:=CurrToStrF(_TotalWages,ffCurrency,0);
// ppTotalDecs.Text:=CurrToStrF(_TotalDecs,ffCurrency,0);
// ppTotalTaxInvolved.Text:=CurrToStrF(TotalTaxInvolved,ffCurrency,0);
// ppTotalInsInvolved.Text:=CurrToStrF(TotalInsInvolved,ffCurrency,0);
// for i:=1 to 14 do begin
// if ppSummaryBand1.ObjectByName(x,'smW'+IntToStr(i)) then
// (ppSummaryBand1.Objects[x] as TppLabel).Text:=CurrToStrF(totalwages[i],ffCurrency,0);
// if i<11 then
// if ppSummaryBand1.ObjectByName(x,'smD'+IntToStr(i)) then
// (ppSummaryBand1.Objects[x] as TppLabel).Text:=CurrToStrF(totaldecs[i],ffCurrency,0);
// end;//for
// end;

procedure TRetardListSalaryF.ppReport2BeforePrint(Sender: TObject);
var
  i: Byte;
begin
  inherited;
  for i := 1 to 14 do
  begin
    TotalWages[i] := 0;
    if i < 11 then
      TotalDecs[i] := 0;
  end; // for
  _TotalWages := 0;
  _TotalDecs := 0;
  _TotalNetPayable := 0;
  TotalTaxInvolved := 0;
  TotalInsInvolved := 0;
  CalculatedPersonels := '';
end;

procedure TRetardListSalaryF.ppDetailBand2AfterGenerate(Sender: TObject);
begin
  inherited;
  // PrintPersonelSalaryInList;
end;

procedure TRetardListSalaryF.vrbFooterGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := FishMsg;
end;

// procedure TRetardListSalaryF.LoadFishTemplate;
// var
// s:  String;
// begin
// s:=IncludeTrailingPathDelimiter(ExtractFilePath(ParamStr(0))) + 'payfish0.rtm';
// if FileExists(s) then begin
// ppReport1.Template.FileName:=s;
// ppReport1.Template.LoadFromFile;
// end;//if
// end;
//

procedure TRetardListSalaryF.ppdlGetText(Sender: TObject; var Text: String);
begin
  inherited;
  with qryDecs do
  begin
    DisableControls;
    First;
    Text := '';
    ppdv.Text := '';
    ppdr.Text := '';
    while not eof do
    begin
      Text := Text + FieldByName('InfoName_L1').AsString + #254#10;
      ppdv.Text := ppdv.Text + CurrToStrF(FieldByName('SumPrice').AsCurrency,
        ffCurrency, 0) + #10;
      // ppdr.Text:=ppdr.Text + CurrToStrF(_GetLoanRemain(fieldbyname('SalaryID').AsInteger),ffCurrency,0) + #10;
      ppdr.Text := ppdr.Text + CurrToStrF(FieldByName('_LoanRemain').AsCurrency,
        ffCurrency, 0) + #10;
      Next;
    end; // while
    EnableControls;
  end; // with

end;

procedure TRetardListSalaryF.ppflGetText(Sender: TObject; var Text: String);
var
  i: Integer;
begin
  inherited;
  Text := '';
  ppfv.Text := '';
  with qryFunctions do
  begin
    for i := 0 to Fields.Count - 1 do
      if (not Fields[i].IsNull) and (Fields[i].Value <> 0) then
      begin
        Text := Text + Fields[i].DisplayLabel + #254#10;
        ppfv.Text := ppfv.Text + FloatToStr(Fields[i].Value) + #10;
      end; // if
  end; // with
  with qryFunctionsItem do
  begin
    DisableControls;
    while not eof do
    begin
      if FieldByName('FHours').AsInteger + FieldByName('FDaily').AsInteger <> 0
      then
      begin
        Text := Text + FieldByName(IfThen(optp.primaryLanguage = 0,
          'InfoName_L1', 'InfoName_L2')).AsString + #254#10;
        ppfv.Text := ppfv.Text + IfThen(FieldByName('FDaily').AsInteger <> 0,
          FieldByName('FDaily').AsString, FieldByName('FHours').AsString) + #10;
      end;
      Next;
    end; // while
    EnableControls;
  end; // with

end;

procedure TRetardListSalaryF.ppLabel5GetText(Sender: TObject; var Text: String);
begin
  inherited;
  // Text:=CurrToStrF(qryPayablePrice.AsCurrency,ffCurrency,0);
  Text := EdtPayable.Text;
end;

function TRetardListSalaryF._GetLoanRemain(SalaryNo: int64): Currency;
begin
  try
    with qryLoan do
    begin
      Active := False;
      Parameters.ParamByName('InfoID').Value := SalaryNo;
      Parameters.ParamByName('MounthNo').Value := MonthNo;
      Parameters.ParamByName('YearIDFrom').Value := APPBank.Year;
      Parameters.ParamByName('YearIDTo').Value := APPBank.Year;
      // Parameters.ParamByName('YearID').Value := APPBank.Year;
      // Parameters.ParamByName('Years').Value := optP.Year;

      Parameters.ParamByName('LabelIDFrom').Value :=
        GetcFrom(myParams.ParamValues['LabelID'], ftInteger);
      Parameters.ParamByName('LabelIDTo').Value :=
        GetcTo(myParams.ParamValues['LabelID'], ftInteger);
      Active := True;
      Result := FieldByName('RemainLoan').AsCurrency
    end; // with
  finally
  end; // try
end;

procedure TRetardListSalaryF.lblColor1Click(Sender: TObject);
begin
  inherited;
  HasUse((Sender as TLabel).tag);
end;

procedure TRetardListSalaryF.HasUse(n: Byte);

begin
  with qryPersonels do
  begin
    if (Filter <> '') then
    begin
      if (n = 1) and (Pos('=', Filter) <> 0) then
      begin
        Filter := '';
        Filter := 'HasFunction <> 0';
        FindFirst;
        Exit;
      end
      else if (Filter <> '') and (Pos('<>', Filter) <> 0) then
        if not FindNext then
          Filter := '';
      if (n = 2) and (Pos('<>', Filter) <> 0) then
      begin
        Filter := '';
        Filter := 'HasFunction = 0';
        FindFirst;
        Exit;
      end
      else if (Filter <> '') and (Pos('=', Filter) <> 0) then
        if not FindNext then
          Filter := '';
    end
    else
    begin
      case n of
        1:
          Filter := 'HasFunction <> 0';
        2:
          Filter := 'HasFunction = 0';
      end; // case
      FindFirst;
    end; // else
  end; // with
end;

procedure TRetardListSalaryF.actPrintListExecute(Sender: TObject);
begin
  inherited;
  // FishMsg:=ReadConfig(APPID,'FishMessage','');
  // FishMsg:=Get_Box('','لطفاً متن پيام زير فيش را وارد كنيد',FishMsg);
  // SaveConfig(APPID,'FishMessage',FishMsg);
  try
    qryWages.DisableControls;
    qryDecs.DisableControls;
    qryFunctionsItem.DisableControls;
    qryPersonels.DisableControls;
    InitReportFile(ppReport2, 'RetardListSalary2');
  finally
    qryWages.EnableControls;
    qryDecs.EnableControls;
    qryFunctionsItem.EnableControls;
    qryPersonels.EnableControls;
  end; // try
end;

procedure TRetardListSalaryF.MskArchiveIDChange(Sender: TObject);
begin
  inherited;
  if Trim((Sender as TMaskEdit).Text) = '' then
    Exit;
  UpdateList;
end;

procedure TRetardListSalaryF.actShowFunctionItemsFExecute(Sender: TObject);
var
  Month_No: Byte;
begin
  inherited;
  Month_No := MonthNo - 1;
  CreateMDIForm2(TFunctionItemsF, FunctionItemsF, Self, 28);
  FunctionItemsF.ToolBar1.Buttons[Month_No].Down := True;
  FunctionItemsF.ToolBar1.Buttons[Month_No].Click;
  FunctionItemsF.qryPersonel.Locate('PersonelNo',
    qryPersonels.FieldByName('PersonelNo').AsVariant, [])

end;

procedure TRetardListSalaryF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryPersonels);
end;

procedure TRetardListSalaryF.actSendServerExecute(Sender: TObject);
begin
  inherited;
  popSendToServer.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TRetardListSalaryF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryPersonels);
end;

procedure TRetardListSalaryF.ppLbl_flGetText(Sender: TObject; var Text: String);
var
  i: Integer;
begin
  inherited;
  Text := '';
  ppLbl_fv.Text := '';
  with qryFunctions do
  begin
    for i := 0 to Fields.Count - 1 do
      if (not Fields[i].IsNull) and (Fields[i].Value <> 0) then
      begin
        Text := Text + Fields[i].DisplayLabel + #254#10;
        ppLbl_fv.Text := ppLbl_fv.Text + FloatToStr(Fields[i].Value) + #10;
      end;
    // if
  end; // with
  with qryFunctionsItem do
  begin
    DisableControls;
    while not eof do
    begin
      Text := Text + FieldByName(IfThen(optp.primaryLanguage = 0, 'InfoName_L1',
        'InfoName_L2')).AsString + #254#10;
      ppLbl_fv.Text := ppLbl_fv.Text + IfThen(FieldByName('FDaily').AsInteger <>
        0, FieldByName('FDaily').AsString, FieldByName('FHours')
        .AsString) + #10;
      Next;
    end; // while
    EnableControls;
  end; // with

end;

procedure TRetardListSalaryF.ppLbl_wl1GetText(Sender: TObject;
  var Text: String);
var
  r: Byte;
begin
  inherited;
  with qryWages do
  begin
    DisableControls;
    First;
    Text := '';
    ppLbl_wv1.Text := '';
    ppLbl_wl2.Text := '';
    ppLbl_wv2.Text := '';
    r := 0;
    while not eof do
    begin
      if r < 9 then
      begin
        Text := Text + FieldByName('InfoName_L1').AsString + #254#10;
        ppLbl_wv1.Text := ppLbl_wv1.Text +
          CurrToStrF(FieldByName('SumPrice').AsCurrency, ffCurrency, 0) + #10;
      end
      else
      begin
        ppLbl_wl2.Text := ppLbl_wl2.Text + FieldByName('InfoName_L1').AsString
          + #254#10;
        ppLbl_wv2.Text := ppLbl_wv2.Text +
          CurrToStrF(FieldByName('SumPrice').AsCurrency, ffCurrency, 0) + #10;
      end;
      // esle
      Next;
      Inc(r);
    end; // while
    EnableControls;
  end; // with
end;

procedure TRetardListSalaryF.ppLbl_dlGetText(Sender: TObject; var Text: String);
begin
  inherited;
  with qryDecs do
  begin
    DisableControls;
    First;
    Text := '';
    ppLbl_dv.Text := '';
    ppLbl_dr.Text := '';
    while not eof do
    begin
      Text := Text + FieldByName('InfoName_L1').AsString + #254#10;
      ppLbl_dv.Text := ppLbl_dv.Text +
        CurrToStrF(FieldByName('SumPrice').AsCurrency, ffCurrency, 0) + #10;
      // ppLbl_dr.Text:=ppLbl_dr.Text + CurrToStrF(_GetLoanRemain(fieldbyname('SalaryID').AsInteger),ffCurrency,0) + #10;
      ppLbl_dr.Text := ppLbl_dr.Text + CurrToStrF(FieldByName('_LoanRemain')
        .AsCurrency, ffCurrency, 0) + #10;
      Next;
    end; // while
    EnableControls;
  end; // with
end;

procedure TRetardListSalaryF.actPrint2Execute(Sender: TObject);
begin
  inherited;
  // FishMsg:=ReadConfig(APPID,'FishMessage','');
  // FishMsg:=Get_Box('','لطفاً متن پيام زير فيش را وارد كنيد',FishMsg);
  // SaveConfig(APPID,'FishMessage',FishMsg);
  // case (Sender as TMenuItem).Tag of
  // 1:  begin
  // ppPersonels.RangeBegin:=rbCurrentRecord;
  // ppPersonels.RangeEnd:=reCurrentRecord;
  // end;//1
  // 2:  begin
  ppPersonels.RangeBegin := rbFirstRecord;
  ppPersonels.RangeEnd := reLastRecord;
  // end;//2
  // end;//case
  try
    qryFunctionsItem.DisableControls;
    qryPersonels.DisableControls;
    qryWages.DisableControls;
    qryDecs.DisableControls;
    InitReportFile(ppReport3, 'RetardListSalary3');
  finally
    qryFunctionsItem.EnableControls;
    qryPersonels.EnableControls;
    qryWages.EnableControls;
    qryDecs.EnableControls;
  end; // try
end;

procedure TRetardListSalaryF.actAllPrintExecute(Sender: TObject);
begin
  inherited;
  FishMsg := ReadConfig(APPID, 'FishMessage', '');
  PopMnuPrint.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TRetardListSalaryF.N4Click(Sender: TObject);
begin
  inherited;
  case (Sender as TMenuItem).tag of
    1:
      begin
        ppPersonels.RangeBegin := rbCurrentRecord;
        ppPersonels.RangeEnd := reCurrentRecord;
      end; // 1
    2:
      begin
        ppPersonels.RangeBegin := rbFirstRecord;
        ppPersonels.RangeEnd := reLastRecord;
      end; // 2
  end; // case
  try
    qryFunctionsItem.DisableControls;
    qryPersonels.DisableControls;
    qryWages.DisableControls;
    qryDecs.DisableControls;
    InitReportFile(ppReport1, 'RetardListSalary');
  finally
    qryFunctionsItem.EnableControls;
    qryPersonels.EnableControls;
    qryWages.EnableControls;
    qryDecs.EnableControls;
  end; // try

end;

procedure TRetardListSalaryF.N2Click(Sender: TObject);
begin
  inherited;
  FishMsg := ReadConfig(APPID, 'FishMessage', '');
  FishMsg := Get_Box('', 'لطفاً متن پيام زير فيش را وارد كنيد', FishMsg);
  SaveConfig(APPID, 'FishMessage', FishMsg);

end;

procedure TRetardListSalaryF.N7Click(Sender: TObject);
begin
  inherited;
  case (Sender as TMenuItem).tag of
    1:
      begin
        ppPersonels.RangeBegin := rbCurrentRecord;
        ppPersonels.RangeEnd := reCurrentRecord;
      end; // 1
    2:
      begin
        ppPersonels.RangeBegin := rbFirstRecord;
        ppPersonels.RangeEnd := reLastRecord;
      end; // 2
  end; // case
  try
    qryFunctionsItem.DisableControls;
    qryFunctions.DisableControls;
    qryPersonels.DisableControls;
    qryWages.DisableControls;
    qryWages2.DisableControls;
    qryDecs.DisableControls;
    InitReportFile(ppReport4, 'RetardpayfishNew');
    // ppReport4.Print
  finally
    qryFunctionsItem.EnableControls;
    qryFunctions.EnableControls;
    qryPersonels.EnableControls;
    qryWages.EnableControls;
    qryWages2.EnableControls;
    qryDecs.EnableControls;
  end; // try

end;

procedure TRetardListSalaryF.qryFunctionsAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qryFunctionsItem do
  begin
    Active := False;
    Parameters.ParamByName('PersonelNo').Value :=
      qryPersonels.FieldByName('PersonelNo').AsInteger;
    Active := True;
  end;
  // with
end;

procedure TRetardListSalaryF.mnuTelegramClick(Sender: TObject);
var
  DoWhile: Boolean;
  dir: string;
begin
  inherited;
  if not SelectDirectory('لطفاً مسير ذخیره را وارد كنيد:‏', '', dir) then
    Exit;

  DoWhile := True;
  InitReportFile(ppReport1, 'RetardListSalary', False, False);
  ppPersonels.RangeBegin := rbCurrentRecord;
  ppPersonels.RangeEnd := reCurrentRecord;

  ppReport1.DeviceType := TMenuItem(Sender).Hint;
  ppReport1.DefaultFileDeviceType := TMenuItem(Sender).Hint;
  ppReport1.AllowPrintToFile := True;
  ppReport1.ShowPrintDialog := False;

  try
    BigMessage('لطفا كمي صبر كنيد....', 0);
    qryFunctionsItem.DisableControls;
    qryFunctions.DisableControls;
    // qryPersonels.DisableControls;
    qryWages.DisableControls;
    qryWages2.DisableControls;
    qryDecs.DisableControls;

    case (Sender as TMenuItem).tag of
      1:
        PrintSendTelegramChatID(dir, TMenuItem(Sender).Hint);
      2:
        With qryPersonels do
        begin
          First;
          while (not eof) and (DoWhile) do
          begin
            If LastKeyPressed = VK_ESCAPE then
              if get_response('عمليات متوقف شود؟') = mrYes then
              begin
                DoWhile := False;
                LastKeyPressed := 0;
              end;
            LastKeyPressed := 0;
            PrintSendTelegramChatID(dir, TMenuItem(Sender).Hint);

            Next;
          end;
        end;
    end;

  finally
    qryFunctionsItem.EnableControls;
    qryFunctions.EnableControls;
    qryPersonels.EnableControls;
    qryWages.EnableControls;
    qryWages2.EnableControls;
    qryDecs.EnableControls;
    CloseMessage;
  end; // try

end;

procedure TRetardListSalaryF.PrintSendTelegramChatID(dir, FileType: string);
var
  lPDFDevice: TppPDFDevice;
  lPNGDevice: TppPNGDevice;
  lDeviceStream: TMemoryStream;

  Fname, FileName: string;
begin
  With qryPersonels do
  begin
    Fname := IncludeTrailingPathDelimiter(dir) + APPBank.Year.ToString +
      RightStr('0' + MonthNo.ToString, 2) + '000' +
      qryPersonelsPersonelNo.AsString + ' ' + ConvertFarsiToFinglish
      (qryPersonelsPersonel_L1.AsString.Trim);
    ppReport1.TextFileName := Fname + '.' + FileType;

    FileName := Fname + IfThen(Pos('pdf', LowerCase(FileType)) > 0, '', '_1') +
      '.' + FileType;

    /// ///////////////////////////////////////////////////
    If (Pos('pdf', LowerCase(FileType)) > 0) Then
    begin

      lPDFDevice := TppPDFDevice.Create(Self);

      lPDFDevice.PDFSettings := ppReport1.PDFSettings;
      lPDFDevice.PDFSettings.OpenPDFFile := True;

      lPDFDevice.PDFSettings.EmbedFontOptions :=
        [efAllFonts, efFontList, efUseSubset];
      lPDFDevice.PDFSettings.FontEncoding := feUnicode;
      lPDFDevice.PDFSettings.ScaleImages := False;
      // lPDFDevice.PDFSettings.EmbedFontList.Add('Badr');
      // lPDFDevice.PDFSettings.EmbedFontList.Add('Zar');

      lPDFDevice.FileName := FileName;
      lPDFDevice.Publisher := ppReport1.Publisher;
      ppReport1.PrintToDevices;

      lPDFDevice.Free;

    end
    else
    begin
      lDeviceStream := TMemoryStream.Create;
      lPNGDevice := TppPNGDevice.Create(Self);
      try
        lPNGDevice.Scale := 2;
        lPNGDevice.OutputStream := lDeviceStream;
        lPNGDevice.Publisher := ppReport1.Publisher;
        ppReport1.PrintToDevices;
        FileName := ReplaceStr(FileName, '.JPEG', '.jpg');
        lDeviceStream.SaveToFile(FileName);
      finally
        lPNGDevice.Free;
        lDeviceStream.Free;
      end;
    end;

    // ppReport1.Print;

    SendTelegramChatID(FieldByName(getChatID).AsString.Trim, FileName,getApiName);
  end;

end;

function TRetardListSalaryF.getChatID: string;
begin
  case rdgrpEmail.ItemIndex of
    3:
      result := 'TelegramChatID';

    4:
      result := 'BaleChatID';
  else
    result := 'TelegramChatID'
  end;
end;

function TRetardListSalaryF.getApiName: tApiName;
begin
  case rdgrpEmail.ItemIndex of
    3:
      result :=AiTelegram;

    4:
      result := AiBale;
  else
    result := AiTelegram
  end;

end;

procedure TRetardListSalaryF.SendTelegramChatID(ChatID,
  Text_FileName: string;
      ApiName: tApiName);
var
  T: TTelegram;
  S: string;
  Bot: TBaleBot;
begin
  if ChatID <> EmptyStr then
  begin
    S := 'فيش حقوق ' + ToolBar1.Buttons[MonthNo - 1].Caption + ' ماه ' +
      optp.Year;

    if ApiName = AiTelegram then
    begin
      T := TTelegram.Create;
      try
        try
          T.Token := TelgeramUserBot;
          if Pos('.pdf', LowerCase(Text_FileName)) > 0 then
            T.SendDocument(ChatID, S, Text_FileName)
          else
            T.SendPhoto(ChatID, S, Text_FileName)
        except
        end;
      finally
        T.Free;
      end;
    end
    else if ApiName = AiBale then
    begin
      Bot := TBaleBot.Create(BaleUserBot);
      try
        if Pos('.pdf', LowerCase(Text_FileName)) > 0 then
          Bot.SendDocument(ChatID, S, Text_FileName)
        else
          Bot.SendPhoto(ChatID, S, Text_FileName);

      finally
        Bot.Free;
      end;

    end;
  end;
end;

function TRetardListSalaryF.ConvertFarsiToFinglish(S: string): string;
Const
  Farsi: array [0 .. 34] of string = (' ', 'ا', 'ب', 'پ', 'ت', 'ث', 'ج', 'چ',
    'ح', 'خ', 'د', 'ذ', 'ر', 'ز', 'س', 'ش', 'ص', 'ض', 'ط', 'ظ', 'ع', 'غ', 'ف',
    'ق', 'ک', 'گ', 'ل', 'م', 'ء', 'ن', 'ه', 'و', 'ژ', 'و', 'ئ');

  Finglish: array [0 .. 34] of string = (' ', 'a', 'b', 'p', 't', 's', 'j',
    'ch', 'h', 'kh', 'd', 'z', 'r', 'z', 's', 'sh', 'c', 'z', 't', 'z', 'a',
    'gh', 'f', 'q', 'k', 'g', 'l', 'm', 'a', 'n', 'h', 'v', 'zh', 'v', 'y');

var
  i, j: Integer;
begin
  Result := EmptyStr;
  for i := 0 to length(S) - 1 do
  begin
    for j := 0 to High(Farsi) - 1 do
      if S[i] = Farsi[j] then
        Result := Result + Finglish[j]
        // else
        // Result := Result + '?';
  end;
end;

procedure TRetardListSalaryF.actTelegramExecute(Sender: TObject);
begin
  inherited;
  rdgrpEmail.ItemIndex := 3;
  popTelegram.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TRetardListSalaryF.mnuSendToFileClick(Sender: TObject);
var
  DoWhile: Boolean;
  dir: string;
begin
  inherited;
  if not SelectDirectory('لطفاً مسير ذخیره را وارد كنيد:‏', '', dir) then
    Exit;

  DoWhile := True;
  InitReportFile(ppReport1, 'RetardListSalary', False, False);
  ppPersonels.RangeBegin := rbCurrentRecord;
  ppPersonels.RangeEnd := reCurrentRecord;

  ppReport1.DeviceType := TMenuItem(Sender).Hint;
  ppReport1.DefaultFileDeviceType := TMenuItem(Sender).Hint;
  ppReport1.AllowPrintToFile := True;
  ppReport1.ShowPrintDialog := False;
  ppReport1.PDFSettings.EmbedFontList.Add('Badr');

  try
    BigMessage('لطفا كمي صبر كنيد....', 0);
    qryFunctionsItem.DisableControls;
    qryFunctions.DisableControls;
    // qryPersonels.DisableControls;
    qryWages.DisableControls;
    qryWages2.DisableControls;
    qryDecs.DisableControls;

    case (Sender as TMenuItem).tag of
      1:
        begin
          ppReport1.TextFileName := IncludeTrailingPathDelimiter(dir) +
            SalaryFileName(TMenuItem(Sender).Hint);
          // APPBank.Year.ToString + RightStr('0' + MonthNo.ToString, 2) + '000'
          // + qryPersonelsPersonelNo.AsString + ' ' + ConvertFarsiToFinglish
          // (qryPersonelsPersonel_L1.AsString.Trim) +
          // // #254 +qryPersonelsPersonel_L1.AsString.Trim +
          // '.' + TMenuItem(Sender).Hint;;
          ppReport1.PDFSettings.EmbedFontOptions :=
            [efAllFonts, efFontList, efUseSubset];
          ppReport1.PDFSettings.FontEncoding := feUnicode;
          ppReport1.PDFSettings.ImageCompressionLevel := 25;

          // ppReport1.PDFSettings.CompressionLevel :=
          // TppCompressionLevel(clMax);
          ppReport1.PDFSettings.ImageCompressionLevel := 1; // best quality
          ppReport1.PDFSettings.OptimizeImageExport := True;
          ppReport1.PDFSettings.ScaleImages := True;

          ppReport1.Print;
          RenameFileI(ppReport1.TextFileName)

        end;
      2:
        With qryPersonels do
        begin
          First;
          while (not eof) and (DoWhile) do
          begin
            If LastKeyPressed = VK_ESCAPE then
              if get_response('عمليات متوقف شود؟') = mrYes then
              begin
                DoWhile := False;
                LastKeyPressed := 0;
              end;
            LastKeyPressed := 0;
            ppReport1.TextFileName := IncludeTrailingPathDelimiter(dir) +
              SalaryFileName(TMenuItem(Sender).Hint);
            // APPBank.Year.ToString + RightStr('0' + MonthNo.ToString, 2) +
            // '000' + qryPersonelsPersonelNo.AsString + ' ' +
            // ConvertFarsiToFinglish(qryPersonelsPersonel_L1.AsString.Trim) +
            // // #254 +qryPersonelsPersonel_L1.AsString.Trim +
            // '.' + TMenuItem(Sender).Hint;;

            ppReport1.PDFSettings.EmbedFontOptions :=
              [efAllFonts, efFontList, efUseSubset];
            ppReport1.PDFSettings.FontEncoding := feUnicode;
            ppReport1.Print;
            RenameFileI(ppReport1.TextFileName);

            // SendTelegramChatID(FieldByName('TelegramChatID').AsString.Trim);

            Next;
          end;
        end;

    end;

  finally
    qryFunctionsItem.EnableControls;
    qryFunctions.EnableControls;
    qryPersonels.EnableControls;
    qryWages.EnableControls;
    qryWages2.EnableControls;
    qryDecs.EnableControls;
    CloseMessage;
  end; // try

end;

procedure TRetardListSalaryF.RenameFileI(File_Name: string);
var
  OldName, NewName: string;
begin
  OldName := ReplaceStr(File_Name, '.', '_1.');
  NewName := File_Name;
  RenameFile(OldName, NewName);
end;

procedure TRetardListSalaryF.mnuSendToFileServerClick(Sender: TObject);
var
  DoWhile: Boolean;
  dir, strEmail, FileName, strlog: string;
begin
  inherited;
  if SendEmailDirect then
    dir := __TheTempDIR
  else
  begin
    if not SelectDirectory('لطفاً مسير ذخیره را وارد كنيد:‏', '', dir) then
      Exit;
  end;
  DoWhile := True;
  InitReportFile(ppReport1, 'RetardListSalary', False, False);
  ppPersonels.RangeBegin := rbCurrentRecord;
  ppPersonels.RangeEnd := reCurrentRecord;

  ppReport1.DeviceType := TMenuItem(Sender).Hint;
  ppReport1.DefaultFileDeviceType := TMenuItem(Sender).Hint;
  ppReport1.AllowPrintToFile := True;
  ppReport1.ShowPrintDialog := False;
  // ppReport1.PDFSettings.EmbedFontList.Add('Badr');
  // ppReport1.PDFSettings.EmbedFontList.Add('badr Bold');
  // ppReport1.PDFSettings.EmbedFontList.Add('BYekan.ttf');

  // '.' + TMenuItem(Sender).Hint;;
  // ppReport1.PDFSettings.EmbedFontOptions :=
  // [efAllFonts, efFontList, efUseSubset];
  // ppReport1.PDFSettings.FontEncoding := feUnicode;

  // ppReport1.PDFSettings.CompressionLevel :=
  // TppCompressionLevel(clMax);
  // ppReport1.PDFSettings.ImageCompressionLevel := 1; // best quality
  // ppReport1.PDFSettings.OptimizeImageExport := True;
  // ppReport1.PDFSettings.ScaleImages := False;

  try
    BigMessage('لطفا كمي صبر كنيد....', 0);
    qryFunctionsItem.DisableControls;
    qryFunctions.DisableControls;
    // qryPersonels.DisableControls;
    qryWages.DisableControls;
    qryWages2.DisableControls;
    qryDecs.DisableControls;

    case (Sender as TMenuItem).tag of
      1:
        begin
          ppReport1.TextFileName := IncludeTrailingPathDelimiter(dir) +
            SalaryFileName2(TMenuItem(Sender).Hint);

          ppReport1.PDFSettings.FontEncoding := feUnicode;
          // ScaleImages to False for original quality
          ppReport1.PDFSettings.ScaleImages := False;
          // I tesred Samim font support for Farsi DIGIT !
          ppReport1.PDFSettings.EmbedFontOptions := [efAllFonts];

          // ppReport1.DeviceType := dtPDF;
          // APPBank.Year.ToString + RightStr('0' + MonthNo.ToString, 2) + '000'
          // + qryPersonelsPersonelNo.AsString + ' ' + ConvertFarsiToFinglish
          // (qryPersonelsPersonel_L1.AsString.Trim) +
          // // #254 +qryPersonelsPersonel_L1.AsString.Trim +
          // '.' + TMenuItem(Sender).Hint;;
          //
          // ppReport1.PDFSettings.EmbedFontOptions :=
          // [efAllFonts, efFontList, efUseSubset];
          // ppReport1.PDFSettings.FontEncoding := feUnicode;
          ppReport1.Print;

          if SendEmailDirect then
          begin
            strEmail := qryPersonelsEmail.AsString;
            FileName := ppReport1.TextFileName;
            // FileName := StringReplace(ppReport1.TextFileName, '.PNG',              '_1.PNG', []);
            strlog := 'N=' + qryPersonelsPersonelNo.AsString + ',E=' +
              qryPersonelsEmail.AsString + ',M=' + MonthNo.ToString;
            if GlobalPro.SendMail(UserMail.UserName, strEmail,
              APPBank.CompanyName, '', FileName, UserMail.Smtp) then
              add2log(strlog + ' >Send.')
            else
              add2log(strlog + ' <Not Send!?');

            DeleteFile(FileName);
          end
          else
            SendServerFile(ppReport1.TextFileName, Memo1);

        end;
      2:
        With qryPersonels do
        begin
          First;
          while (not eof) and (DoWhile) do
          begin
            If LastKeyPressed = VK_ESCAPE then
              if get_response('عمليات متوقف شود؟') = mrYes then
              begin
                DoWhile := False;
                LastKeyPressed := 0;
              end;
            LastKeyPressed := 0;
            ppReport1.TextFileName := IncludeTrailingPathDelimiter(dir) +
              SalaryFileName2(TMenuItem(Sender).Hint);

            ppReport1.PDFSettings.FontEncoding := feUnicode;
            // ScaleImages to False for original quality
            ppReport1.PDFSettings.ScaleImages := False;
            // I tesred Samim font support for Farsi DIGIT !
            ppReport1.PDFSettings.EmbedFontOptions := [efAllFonts];

            // ppReport1.DeviceType := dtPDF;

            // ppReport1.PDFSettings.EmbedFontOptions :=
            // [efAllFonts, efFontList, efUseSubset];
            // ppReport1.PDFSettings.FontEncoding := feUnicode;
            ppReport1.Print;

            if SendEmailDirect then
            begin
              strEmail := qryPersonelsEmail.AsString;
              FileName := ppReport1.TextFileName;
              // FileName := StringReplace(ppReport1.TextFileName, '.PNG',                '_1.PNG', []);

              strlog := 'N=' + qryPersonelsPersonelNo.AsString + ',E=' +
                qryPersonelsEmail.AsString + ',M=' + MonthNo.ToString;
              if GlobalPro.SendMail(UserMail.UserName, strEmail,
                APPBank.CompanyName, '', FileName, UserMail.Smtp) then
                add2log(strlog + ' >Send.')
              else
                add2log(strlog + ' <Not Send!?');

              DeleteFile(FileName);

            end
            else
              SendServerFile(ppReport1.TextFileName, Memo1);

            Next;
          end;
        end;

    end;

  finally
    qryFunctionsItem.EnableControls;
    qryFunctions.EnableControls;
    qryPersonels.EnableControls;
    qryWages.EnableControls;
    qryWages2.EnableControls;
    qryDecs.EnableControls;
    CloseMessage;
    SendEmailDirect := False;
  end; // try

end;

function TRetardListSalaryF.SalaryFileName(fileExtension: string): string;
begin
  if fileExtension = 'JPEG' then
  begin
    Result := qryPersonelsPersonelNo.AsString + '.' + fileExtension;
    Result := ReplaceStr(Result, '.JPEG', '.jpg');
  end
  else
    Result := APPBank.Year.ToString + RightStr('0' + MonthNo.ToString, 2) +
      '000' + qryPersonelsPersonelNo.AsString + ' ' + ConvertFarsiToFinglish
      (qryPersonelsPersonel_L1.AsString.Trim) + '.' + fileExtension;

end;

function TRetardListSalaryF.SalaryFileName2(fileExtension: string): string;
begin
  Result := 'PR_' + qryPersonelsNationalID.AsString + '_' +
    APPBank.Year.ToString + '_' + RightStr('0' + MonthNo.ToString, 2) + '_' +
    FcompanyCode.ToString + IfThen(fileExtension = 'PDF', '_1', '') + '.' +
    fileExtension;
end;

procedure TRetardListSalaryF.actsSendEmailDirectExecute(Sender: TObject);
begin
  inherited;
  rdgrpEmail.ItemIndex := 1;
  SendEmailDirect := True;
  popSendToServer.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);

end;

end.
