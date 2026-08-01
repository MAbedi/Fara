unit MakeBankDSK;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, ComCtrls, DB, Mask, ppPrnabl, ppClass,
  ppCtrls, ppBands, ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDB,
  ppDBPipe, ADODB, ToolWin, DBCtrls, Menus, Dbf, ppVar, scExcelExport,
  ppParameter, CheckLst, DBClient, Provider, ppDesignLayer, System.ImageList,
  System.Actions, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, CedarDbGrid;

const
  __FILENAME = 'BMIPYROL.DBF';
  _CODAMAL = 68;
  __FilterTxt =
    'Text Files (*.Txt)|*.Txt|Payroll Files (*.PAY)|*.PAY|Payroll Files (*.Clr)|*.Clr|Excel Files (*.xls)|*.xls|All Files (*.*)|*.*';

type
  TlistItem = class
    FormInfoID: Integer;
    SalaryKind: Integer;
    DecExt_L1: string;
  end;

  TlistFldItem = class
    FidNmae: string;
    FidCaption: string;
  end;

  TMakeBankDSKF = class(Ttemplate2MDIF)
    StatusBar1: TStatusBar;
    srcList: TDataSource;
    ppDBPipeline1: TppDBPipeline;
    ppReport4File: TppReport;
    actPrint: TAction;
    btnMake: TBitBtn;
    actMake: TAction;
    qryList: TADOQuery;
    BitBtn2: TBitBtn;
    actLimit: TAction;
    qryList_radif: TIntegerField;
    qryListPersonelNO: TIntegerField;
    qryListname_L1: TStringField;
    qryListname_L2: TStringField;
    qryListPrice: TBCDField;
    qryListBankCode: TIntegerField;
    qryListAccountNumber: TStringField;
    qryListBankName_L1: TStringField;
    qryListBankName_L2: TStringField;
    Panel1: TPanel;
    PnlError: TPanel;
    Label2: TLabel;
    memoError: TMemo;
    lblBank: TLabel;
    Label3: TLabel;
    mskDateDisk: TMaskEdit;
    mskAccountNum: TMaskEdit;
    Label4: TLabel;
    cmbBank: TComboBox;
    qryListAccBankType: TWordField;
    PopList4Print: TPopupMenu;
    AllClikPop: TMenuItem;
    pnlDiskMeli: TPanel;
    Label5: TLabel;
    mskSarparasty: TMaskEdit;
    Label6: TLabel;
    mskShobeh: TMaskEdit;
    Label8: TLabel;
    mskSarfasl: TMaskEdit;
    Dbf1: TDbf;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    actSort: TAction;
    actSendExcel: TAction;
    BitBtn6: TBitBtn;
    qryListBankType_L1: TStringField;
    qryListBankType_L2: TStringField;
    actPrintVijeh: TAction;
    BitBtn7: TBitBtn;
    CmbArchiveID: TComboBox;
    qry_init: TADOQuery;
    ppHeaderBand1: TppHeaderBand;
    ppLblCompanyName: TppLabel;
    ppLine1: TppLine;
    ppLblPrintDate: TppLabel;
    ppLabel9: TppLabel;
    ppColumnHeaderBand1: TppColumnHeaderBand;
    ppShape2: TppShape;
    ppLabel6: TppLabel;
    ppLabel8: TppLabel;
    ppLabel7: TppLabel;
    ppLabel2: TppLabel;
    ppLabel12: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppShape3: TppShape;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppColumnFooterBand1: TppColumnFooterBand;
    ppFooterBand1: TppFooterBand;
    ppShape1: TppShape;
    ppLine42: TppLine;
    ppLine43: TppLine;
    ppLine44: TppLine;
    ppLabel5: TppLabel;
    ppLabel1: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppLabel13: TppLabel;
    ppDBCalc2: TppDBCalc;
    ppLabel14: TppLabel;
    ppLine3: TppLine;
    ppDBCalc3: TppDBCalc;
    ppLblDateDisk: TppLabel;
    ppDBCalcNum2Alpha: TppDBCalc;
    BitBtn8: TBitBtn;
    qryListISFunctions: TIntegerField;
    GroupBox1: TGroupBox;
    ChkISFunctions: TCheckBox;
    ChkAccountNumber: TCheckBox;
    GrpDecExt: TGroupBox;
    GrpSalaryId: TGroupBox;
    pnlDiskSaderat: TPanel;
    Label1: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    msk_SA_FileSerial: TMaskEdit;
    msk_SA_Groups: TMaskEdit;
    msk_SA_Branch: TMaskEdit;
    Image3: TImage;
    Image2: TImage;
    qryListBranchInfo: TStringField;
    pnlDiskKeshavarzi: TPanel;
    Label12: TLabel;
    Label13: TLabel;
    msk_ke_CCCC: TMaskEdit;
    msk_ke_BBBB: TMaskEdit;
    Msk_ke_Stage: TMaskEdit;
    Label11: TLabel;
    grpLoan: TGroupBox;
    CmbLoan: TComboBox;
    pnlShahr_Pasargad: TPanel;
    Label7: TLabel;
    Label14: TLabel;
    mskShahr_Name: TMaskEdit;
    mskShahr_branch: TMaskEdit;
    pnlParsiyan: TPanel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    msk_PA_Branch: TMaskEdit;
    msk_PA_Sarfasl: TMaskEdit;
    msk_PA_Serial: TMaskEdit;
    SaveDialog1: TSaveDialog;
    Label18: TLabel;
    msk_PA_FileCode: TMaskEdit;
    chklstDecExt: TCheckListBox;
    chklstSalaryId: TCheckListBox;
    Splitter2: TSplitter;
    Splitter1: TSplitter;
    actSms: TAction;
    popPasargad: TPopupMenu;
    Txt: TMenuItem;
    Xls: TMenuItem;
    cli1: TClientDataSet;
    cli1noehesab: TStringField;
    cli1shomarehesab: TStringField;
    cli1mablagh: TStringField;
    cli1bedehkar01: TStringField;
    cli1sharheavalie: TStringField;
    cli1sharhesanavie: TStringField;
    btnCD: TBitBtn;
    qryListMobile: TStringField;
    pnlShahr14: TPanel;
    medtBankShar14: TMaskEdit;
    Label19: TLabel;
    qryListselected: TFMTBCDField;
    qryListfatherName_L1: TStringField;
    grpTide: TGroupBox;
    chklstTide: TCheckListBox;
    grpPony: TGroupBox;
    chklstPony: TCheckListBox;
    GroupBox2: TGroupBox;
    Memo1: TMemo;
    chkSelected: TCheckBox;
    plblAccountNum: TppLabel;
    Memo2: TMemo;
    qryListFirstName: TStringField;
    qryListlastName_L1: TStringField;
    pnlMelat: TPanel;
    rgpMelat: TRadioGroup;
    qryListPrice1: TBCDField;
    qryListPrice2: TBCDField;
    rgpSalaryID4PartMakeBankDSK: TRadioGroup;
    Label20: TLabel;
    medtBankShar142: TMaskEdit;
    Splitter3: TSplitter;
    qryListProjectName: TStringField;
    Panel4: TPanel;
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
    chkProject: TCheckBox;
    DBGrid1: TCedarDbgrid;
    qrySampleExell: TADOQuery;
    actSampleExell: TAction;
    qrySampleExellشمارهحساب: TStringField;
    qrySampleExellثابت: TStringField;
    qrySampleExellمبلغ: TBCDField;
    qrySampleExellثابت1: TStringField;
    qrySampleExellثابت2: TStringField;
    qrySampleExellثابت3: TStringField;
    qrySampleExellشرح: TStringField;
    qrySampleExellجمعنهایی: TStringField;
    BitBtn1: TBitBtn;
    actMeliExell: TAction;
    qryMeliExell: TADOQuery;
    qryMeliExellمبلغ: TLargeintField;
    qryMeliExellنامونامخانوادگي: TStringField;
    qryMeliExellشبا: TStringField;
    qryMeliExellتوضيحات: TStringField;
    btnAllBank: TBitBtn;
    popAllBank: TPopupMenu;
    AllBank1: TMenuItem;
    AllBank2: TMenuItem;
    Bank33name1: TMenuItem;
    Bank3name1: TMenuItem;
    Bank3name2: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N21: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N22: TMenuItem;
    N23: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    N24: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    N15: TMenuItem;
    Excel1: TMenuItem;
    mnuAllPanel: TMenuItem;
    N17: TMenuItem;
    N16: TMenuItem;
    N18: TMenuItem;
    qryT_Taavon: TADOQuery;
    qryT_TaavonBodyColumn1: TStringField;
    qryT_TaavonBodyColumn2: TStringField;
    qryT_TaavonBodyColumn3: TBCDField;
    qryT_TaavonBodyColumn4: TStringField;
    qryT_TaavonBodyColumn5: TStringField;
    qryT_TaavonBodyColumn6: TStringField;
    qryT_TaavonBodyColumn7: TStringField;
    qryT_TaavonBodyColumn8: TStringField;
    qryT_TaavonRadif: TStringField;
    actTaavonExell: TAction;
    N19: TMenuItem;
    N171: TMenuItem;
    N251: TMenuItem;
    N25: TMenuItem;
    N26: TMenuItem;
    N27: TMenuItem;
    rgShahr: TRadioGroup;
    N20: TMenuItem;
    qryListSHEBA: TStringField;
    qryListNationalID: TStringField;
    chkTide: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure ppLblCompanyNameGetText(Sender: TObject;

      var Text: String);
    procedure ppLblPrintDateGetText(Sender: TObject;

      var Text: String);
    procedure ppLblListNameGetText(Sender: TObject;

      var Text: String);
    procedure actPrintExecute(Sender: TObject);
    procedure actMakeExecute(Sender: TObject);
    procedure actLimitExecute(Sender: TObject);
    procedure ToolButton12Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure qryListCalcFields(DataSet: TDataSet);
    procedure DBGrid1KeyPress(Sender: TObject;

      var Key: Char);
    procedure FormDestroy(Sender: TObject);
    procedure AllClikPopClick(Sender: TObject);
    procedure ppLblDateDiskGetText(Sender: TObject;

      var Text: String);
    procedure cmbBankChange(Sender: TObject);
    procedure AllCheckBoxClick(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure ppSysVarPageNumberGetText(Sender: TObject;

      var Text: String);
    procedure actSendExcelExecute(Sender: TObject);
    procedure actPrintVijehExecute(Sender: TObject);
    procedure ppAllReplaseGetText(Sender: TObject;

      var Text: String);
    procedure CmbArchiveIDChange(Sender: TObject);
    procedure ppDBCalcNum2AlphaGetText(Sender: TObject;

      var Text: String);
    procedure ChkInsuranceClick(Sender: TObject);
    procedure ChkTideClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure qryListAfterOpen(DataSet: TDataSet);
    procedure CmbLoanChange(Sender: TObject);
    procedure chklstDecExtClickCheck(Sender: TObject);
    procedure actSmsExecute(Sender: TObject);
    procedure TxtClick(Sender: TObject);
    procedure XlsClick(Sender: TObject);
    procedure btnMakeClick(Sender: TObject);
    procedure btnCDClick(Sender: TObject);
    procedure chklstPonyClickCheck(Sender: TObject);
    procedure GrpSalaryIdClick(Sender: TObject);
    procedure plblAccountNumGetText(Sender: TObject;

      var Text: string);
    procedure Memo2Click(Sender: TObject);
    procedure rgpSalaryID4PartMakeBankDSKClick(Sender: TObject);
    procedure chkProjectClick(Sender: TObject);
    procedure actSampleExellExecute(Sender: TObject);
    procedure actMeliExellExecute(Sender: TObject);
    procedure AllBank2Click(Sender: TObject);
    procedure btnAllBankClick(Sender: TObject);
    procedure mnuAllPanelClick(Sender: TObject);
    procedure actTaavonExellExecute(Sender: TObject);
  private
    itm: TlistItem;
    itm2: TlistFldItem;
    MonthNo: Byte;
    Sarparasty, Shobeh, Sarfasl, FormKind: Integer;
    LDate, OrginalSQL, MonthCaptions: String;
    SelectedActive, CdBurn: Boolean;
    makeDate: String;
    pDir: String;
    FileNameMeli: String;
    MinFormInfoID, MaxFormInfoID: Integer;
    Price: string;
    procedure UpdateList;
    procedure initCombo;
    procedure CreateDiskMeli;
    procedure AddRecord(Account: int64; Amount: Currency);
    procedure makeDSKMellat(types: Integer);
    procedure DiskTejarat;
    procedure DiskSaderat;
    function InsertSpace(Count: Integer; CharInsert: String): String;
    procedure DiskSaman(FirstLinePrefix: string);
    procedure makeDSKKeshavarzi;
    procedure Selected;
    procedure makeDSKKeshavarzi2(CodeLength: Integer);
    procedure makeDSKKeshavarzi_MehrGostar(CutAccount: Boolean);
    procedure makeDskSepah(Separator: String);
    procedure makeDskShahr;
    procedure DiskParsiyan;
    procedure MySaveDialog(MyFileName, TitleCap: String;
      FilterTxt: String = __FilterTxt);
    procedure MakeDskRefah;
    procedure DiskPasargadResalatTxt(Pasarghad: Boolean);
    procedure DiskShahr2;
    procedure DiskPasargadXls;
    procedure MakeDskRefah2;
    procedure MakeDskRefah_HamrahHesab;
    function GETPrice(c: Currency): string;

    procedure AddTo(FidNmae, FidCaption: string);
    procedure DiskPostBank;
    procedure makeDSKMellat2(id: Integer);
    procedure MakeSql;
    procedure SetPrice;
    function GetGroupID: string;
    procedure CallAllBank(BankID: Integer);
  public
  end;

var
  MakeBankDSKF: TMakeBankDSKF;

implementation

uses DM, mmessage, GlobalPro, filter_ADO, FilterClass_ADO, shamsiDate,
  StrUtils, search2, sort2, DBGrid2Print, SalaryFunctions, FaraConsts,
  CdBurnTax,
  infoSMS, Filter_ADO_Const;

{$R *.dfm}

procedure TMakeBankDSKF.initCombo;
var
  i, FiledId, MaxInfoID: Integer;
begin
  itm := nil;
  cmbBank.Clear;
  chklstSalaryId.Clear;
  chklstSalaryId.MultiSelect := True;
  chklstDecExt.Clear;
  chklstDecExt.MultiSelect := True;
  chklstTide.MultiSelect := True;
  CmbLoan.Clear;
  FiledId := 1;
  if optP.primaryLanguage <> 0 then
    FiledId := 2;
  with DMF.qryTmpTmpp do
  begin
    Active := False;
    SQL.Text := 'SELECT  Max(InfoID) FROM Pay.FormsInfo  WHERE FormType=7  ';
    Active := True;
    MaxInfoID := Fields[0].AsInteger;
    Active := False;
    SQL.Text :=
      'SELECT  FormInfoID,InfoName_L1,InfoName_L2,InfoID FROM Pay.FormsInfo ' +
      'WHERE FormType=7  ORDER BY InfoID ';
    Active := True;
    for i := 1 to MaxInfoID do
    begin
      if i = Fields[3].AsInteger then
      begin
        cmbBank.AddItem(Fields[FiledId].AsString, TObject(Fields[0].AsInteger));
        Next;
      end
      else
        cmbBank.AddItem(IntToStr(i) + ' * * * ', TObject(i));
    end;

    // while not eof do
    // begin
    // cmbBank.AddItem(Fields[FiledId].AsString,TObject(Fields[0].AsInteger));
    // Next;
    // end;//while

    cmbBank.ItemIndex := 0;
    Active := False;
    SQL.Text :=
      ' SELECT TOP 1 BankCode FROM Pay.PersonelInfo GROUP BY BankCode  ' +
      ' ORDER BY COUNT(BankCode) DESC ';
    Active := True;
    for i := 0 to cmbBank.Items.Count - 1 do
      if Fields[0].AsInteger = Integer(cmbBank.Items.Objects[i]) then
        cmbBank.ItemIndex := i;
    Active := False;
    // SQL.Text:='SELECT  FormInfoID, InfoName_L1,InfoName_L2  FROM Pay.FormsInfo WHERE FormType in( 29 ,91)';
    SQL.Text :=
      'SELECT DISTINCT FixedCalculated.SalaryID, FormsInfo.InfoName_L1, FormsInfo.InfoName_L2';
    SQL.Add('FROM Pay.FixedCalculated INNER JOIN');
    SQL.Add('Pay.FormsInfo ON FixedCalculated.SalaryID = FormsInfo.FormInfoID');
    SQL.Add('WHERE (FixedCalculated.ShowListKind = 1)');
    Active := True;
    MinFormInfoID := Fields[0].AsInteger;
    // CmbSalaryId.AddItem('كلي',TObject(1));
    while not eof do
    begin
      itm := TlistItem.Create;
      itm.FormInfoID := Fields[0].AsInteger;
      itm.DecExt_L1 := Fields[FiledId].AsString;
      chklstSalaryId.Items.AddObject(itm.DecExt_L1, itm);
      Next;
    end;
    // while      FormInfoID
    MaxFormInfoID := Fields[0].AsInteger;
    Active := False;
    SQL.Text := 'SELECT FormsInfo.FormInfoID';
    SQL.Add(',FormTypes.FormCaption_L1 + ''_'' +FormsInfo.InfoName_L1  AS DecExt_L1');
    SQL.Add(',FormTypes.FormCaption_L2 + ''_'' +FormsInfo.InfoName_L2  AS DecExt_L2');
    SQL.Add(',FormTypes.SalaryKind');
    SQL.Add('FROM Pay.FormTypes INNER JOIN Pay.FormsInfo ON FormTypes.FormType = FormsInfo.FormType');
    SQL.Add('WHERE (FormTypes.SalaryKind in(6,12,13,8)) ORDER BY  FormTypes.SalaryKind,FormTypes.FormType');
    Active := True;
    // CmbDecExt.AddItem('كلي',TObject(1));
    while not eof do
    begin
      itm := TlistItem.Create;
      itm.FormInfoID := Fields[0].AsInteger;
      itm.DecExt_L1 := Fields[FiledId].AsString;
      itm.SalaryKind := Fields[3].AsInteger;
      chklstDecExt.Items.AddObject(itm.DecExt_L1, itm);
      Next;
    end;
    // while      DecExt
    Active := False;
    SQL.Text := 'SELECT FormsInfo.FormInfoID';
    SQL.Add(',FormTypes.FormCaption_L1 + ''_'' +FormsInfo.InfoName_L1  AS DecExt_L1');
    SQL.Add(',FormTypes.FormCaption_L2 + ''_'' +FormsInfo.InfoName_L2  AS DecExt_L2');
    SQL.Add('FROM Pay.FormTypes INNER JOIN Pay.FormsInfo ON FormTypes.FormType = FormsInfo.FormType');
    SQL.Add('WHERE (FormTypes.SalaryKind in(9,14)) ORDER BY  FormTypes.SalaryKind,FormTypes.FormType');
    Active := True;
    CmbLoan.AddItem('كلي', TObject(1));
    while not eof do
    begin
      CmbLoan.AddItem(Fields[FiledId].AsString, TObject(Fields[0].AsInteger));
      Next;
    end; // while      DecExt
    Active := False;
    CmbLoan.ItemIndex := 0;
  end;

  chklstPony.Clear;
  chklstPony.MultiSelect := True;
  AddTo('+ISNULL(Pony.CurrentMonthsPay, 0)', 'حقوق ماه جاري');
  AddTo('+ISNULL(Pony.UselessLeavePay, 0)', 'مبلغ مرخصي استفاده نشده');
  AddTo('+ISNULL(Pony.AnnuityOldPay, 0)', 'مبلغ سنوات گذشته');
  AddTo('+ISNULL(Pony.AnnuityPay, 0)', 'مبلغ سنوات');
  AddTo('+ISNULL(Pony.TidePay, 0)', 'مبلغ عيدي و پاداش');
  AddTo('+ISNULL(Pony.DebitCredit, 0)', 'ساير طلب/بدهي');
  AddTo('-ISNULL(Pony.RemainLoan, 0)', 'مانده وام');
  AddTo('-ISNULL(Pony.Tax, 0)', 'مالیات مرخصی/سنوات');
  chklstPony.ClearSelection;

end;

procedure TMakeBankDSKF.AddTo(FidNmae, FidCaption: string);
begin
  itm2 := TlistFldItem.Create;
  itm2.FidNmae := FidNmae;
  itm2.FidCaption := FidCaption;
  chklstPony.Items.AddObject(itm2.FidCaption, itm2);
end;

procedure TMakeBankDSKF.makeDSKMellat(types: Integer);
var
  s, F_i_l_e, Txt: String;
  n_Count, errCount: Integer;
  c: Currency;
  i: Integer;
begin
  qryList.DisableControls;
  qryList.First;
  errCount := 0;
  n_Count := 0;
  c := 0;
  memoError.Clear;

  Memo1.Clear;
  try
    while not qryList.eof do
    begin
      if length(qryList.fieldbyname('AccountNumber').AsString) < 3 then
      begin
        Inc(errCount);
        memoError.Lines.Add(IntToStr(errCount) + '- ' +
          GetPersonelName(qryList.fieldbyname('PersonelNO').AsString) + #9 +
          CurrToStrF(qryList.fieldbyname(Price).AsCurrency, ffCurrency, 0));
        qryList.Next;
        Continue;
      end; // if
      if qryList.fieldbyname('selected').AsInteger <> 1 then
      begin
        qryList.Next;
        Continue;
      end; // if

      if types = 2 then
      begin
        s := InsertSpace(10 - length(qryList.fieldbyname('AccountNumber')
          .AsString), '0') + qryList.fieldbyname('AccountNumber').AsString;
        s := s + InsertSpace(15 - length(qryList.fieldbyname(Price).AsString),
          '0') + qryList.fieldbyname(Price).AsString;
        Memo1.Lines.Add(s);
      end
      else
        case qryList.fieldbyname('AccBankType').AsInteger of
          1:
            begin
              // Mellat Kart   59
              s := IntToStr(qryList.RecNo);
              s := InsertSpace(5 - length(s), ' ') + s + ' ';
              s := s + InsertSpace
                (16 - length(qryList.fieldbyname('AccountNumber').AsString),
                ' ') + qryList.fieldbyname('AccountNumber').AsString + ' ';
              s := s + InsertSpace
                (12 - length(qryList.fieldbyname(Price).AsString), ' ') +
                qryList.fieldbyname(Price).AsString;
              s := s + ' 0';
              Memo1.Lines.Add(s);
            end; // Mellat Kart

          2:
            begin // Jari   60
              s := StringReplace(qryList.fieldbyname('AccountNumber').AsString,
                '/', '', [rfreplaceall]);
              if s[1] = '*' then
                s := copy(s, 2, 7);
              s := RightStr('0000000' + s, 7);
              s := s + '46' + RightStr(StringReplace(makeDate, '/', '',
                [rfreplaceall]), 6);
              s := s + '000000'; // 6 zero
              s := s + RightStr('00000000000' + qryList.fieldbyname(Price)
                .AsString, 11);
              s := s + '2';
              Memo1.Lines.Add(s);
            end; // Jari

          3, 6:
            begin // PasAndaz     61
              s := StringReplace(qryList.fieldbyname('AccountNumber').AsString,
                '/', '', [rfreplaceall]);
              s := RightStr('0000000' + s, 7);
              s := s + '04' + RightStr(StringReplace(makeDate, '/', '',
                [rfreplaceall]), 6);
              s := s + '000000'; // 6 zero
              s := s + RightStr('00000000000' + qryList.fieldbyname(Price)
                .AsString, 11);
              s := s + '2';
              Memo1.Lines.Add(s);
            end; // PasAndaz

          4:
            begin // Mellat Kart    2
              s := IntToStr(qryList.RecNo);
              s := InsertSpace(5 - length(s), '0') + s + ' ';
              s := s + InsertSpace
                (16 - length(qryList.fieldbyname('AccountNumber').AsString),
                '0') + qryList.fieldbyname('AccountNumber').AsString + ' ';
              s := s + InsertSpace
                (12 - length(qryList.fieldbyname(Price).AsString), '0') +
                qryList.fieldbyname(Price).AsString;
              s := s + ' 0';
              Memo1.Lines.Add(s);
            end; // Mellat Kart  2

          5:
            begin // Mellat jaam
              s := InsertSpace(10 - length(qryList.fieldbyname('AccountNumber')
                .AsString), '0') + qryList.fieldbyname('AccountNumber')
                .AsString;
              s := s + InsertSpace
                (15 - length(qryList.fieldbyname(Price).AsString), '0') +
                qryList.fieldbyname(Price).AsString;
              s := s + InsertSpace(17, '0');
              // هادی کریمی    بهرامی ابنیه گستر
              // + Chr($202B)

              Txt := IfThen(chkProject.Checked, Chr(2), '') +
                medtBankShar14.Text + ' ' + qryListProjectName.AsString + ' ' +
                medtBankShar142.Text;
              s := s + InsertSpace(30 - length(Txt), ' ') + Txt;
              Memo1.Lines.Add(s);
            end;
          // Mellat jaam
        end; // case
      c := c + qryList.fieldbyname(Price).AsCurrency;
      qryList.Next;
      Inc(n_Count);
    end;
    // while
    s := 'O ' + RightStr(StringReplace(makeDate, '/', '', [rfreplaceall]), 6) +
      ' ' + InsertSpace(12 - length(CurrToStr(c)), ' ') + CurrToStr(c) + ' ' +
      IntToStr(n_Count) + ' 0 248 0';

    if types = 2 then
    begin
      s := InsertSpace(10 - length(IntToStr(n_Count)), '0') + IntToStr(n_Count)
        + InsertSpace(15 - length(CurrToStr(c)), '0') + CurrToStr(c);
      Memo1.Lines.Insert(0, s);
      F_i_l_e := 'FL' + RightStr(StringReplace(makeDate, '/', '', [rfreplaceall]
        ), 6) + '.PAY';
    end
    else
      case qryList.fieldbyname('AccBankType').AsInteger of
        1, 3, 4:
          begin
            Memo1.Lines.Insert(0, s);
            F_i_l_e := 'TRNFIL.Txt';
          end;
        5:
          begin
            s := InsertSpace(10 - length(IntToStr(n_Count)), '0') +
              IntToStr(n_Count) + InsertSpace(15 - length(CurrToStr(c)), '0') +
              CurrToStr(c);
            Memo1.Lines.Insert(0, s);
            // for i := 0 to 256 do
            // Memo1.Lines.Add(i.ToString+'=تست'+Chr(i));

            F_i_l_e := 'FL' + RightStr(StringReplace(makeDate, '/', '',
              [rfreplaceall]), 6) + '.PAY';
          end;
        6:
          begin
            F_i_l_e := 'TRNF2.Cds';
          end;
      end;

    s := Memo1.Lines.Text;
    SetLength(s, length(s) - 2);
    Memo1.Lines.Text := s;
    StatusBar1.Panels[0].Text := 'تعداد = ' + IntToStr(n_Count);
    StatusBar1.Panels[1].Text := 'جمع پرداختي = ' +
      CurrToStrF(c, ffCurrency, 0);
    PnlError.Visible := errCount > 0;

    MySaveDialog(F_i_l_e, 'ملت');
  finally
    qryList.EnableControls;
    SetKeyboardFarsi;
  end; // try
end;

procedure TMakeBankDSKF.makeDSKMellat2(id: Integer);
var
  s, F_i_l_e: String;
  n_Count, errCount: Integer;
  c: Currency;
begin
  qryList.DisableControls;
  qryList.First;
  errCount := 0;
  n_Count := 0;
  c := 0;
  memoError.Clear;
  Memo1.Clear;
  qryList.First;
  try
    while not qryList.eof do
    begin
      if length(qryList.fieldbyname('AccountNumber').AsString) < 3 then
      begin
        Inc(errCount);
        memoError.Lines.Add(IntToStr(errCount) + '- ' +
          GetPersonelName(qryList.fieldbyname('PersonelNO').AsString) + #9 +
          CurrToStrF(qryList.fieldbyname(Price).AsCurrency, ffCurrency, 0));
        qryList.Next;
        Continue;
      end; // if
      if qryList.fieldbyname('selected').AsInteger <> 1 then
      begin
        qryList.Next;
        Continue;
      end; // if

      s := InsertSpace(10 - length(qryList.fieldbyname('AccountNumber')
        .AsString), '0') + qryList.fieldbyname('AccountNumber').AsString;
      s := s + InsertSpace(15 - length(qryList.fieldbyname(Price).AsString),
        '0') + qryList.fieldbyname(Price).AsString;

      // s := s + InsertSpace(17, '0');

      case id of
        24:
          begin
            s := s + InsertSpace(17, '0');
            s := s { + Chr($202B) } + 'حقوق ' + ToolBar1.Buttons[MonthNo - 1]
              .Caption + ' ماه ' + APPBank.Year.ToString.Trim + ' ';
          end;
        25:
          begin
            s := s + InsertSpace(17, '0') + ' ';

            case rgShahr.ItemIndex of
              0:
                s := s + medtBankShar14.Text;

              1:
                s := s + qryListname_L1.AsString;

              2, 4:
                s := s + medtBankShar14.Text + ' ' + qryListname_L1.AsString;

            end;

          end;
        32:
          ;
      else
        begin
          s := s + InsertSpace(17, '0');
          s := s + InsertSpace(5, ' ');
          s := s + Chr($202B) + qryListFirstName.AsString + ' ' +
            qryListlastName_L1.AsString;
        end;
      end;

      // if id = 24 then
      // begin
      // s := s + Chr($202B) + 'حقوق ' + ToolBar1.Buttons[MonthNo - 1].Caption +
      // ' ماه ' + APPBank.Year.ToString.Trim + ' ';
      // end
      // else
      // begin
      // s := s + InsertSpace(5, ' ');
      // s := s + Chr($202B) + qryListFirstName.AsString + ' ' +
      // qryListlastName_L1.AsString;
      // end;

      Memo1.Lines.Add(s);

      c := c + qryList.fieldbyname(Price).AsCurrency;
      qryList.Next;
      Inc(n_Count);
    end;

    F_i_l_e := RightStr(StringReplace(makeDate, '/', '', [rfreplaceall]), 6);
    case rgpMelat.ItemIndex of
      0:
        F_i_l_e := 'FL' + F_i_l_e + '.Pay';
      1:
        F_i_l_e := 'FL' + F_i_l_e + '.Clr';
    else
      F_i_l_e := 'ElFL' + F_i_l_e + '.Pay';
    end;

    // if id = 25 then
    begin
      s := InsertSpace(10 - length(IntToStr(n_Count)), '0') + IntToStr(n_Count)
        + InsertSpace(15 - length(CurrToStr(c)), '0') + CurrToStr(c);
      Memo1.Lines.Insert(0, s);
    end;

    s := Memo1.Lines.Text;
    SetLength(s, length(s) - 2);
    Memo1.Lines.Text := s;
    StatusBar1.Panels[0].Text := 'تعداد = ' + IntToStr(n_Count);
    StatusBar1.Panels[1].Text := 'جمع پرداختي = ' +
      CurrToStrF(c, ffCurrency, 0);
    PnlError.Visible := errCount > 0;

    MySaveDialog(F_i_l_e, 'ملت2');
  finally
    qryList.EnableControls;
    SetKeyboardFarsi;
  end; // try
end;

procedure TMakeBankDSKF.MakeDskRefah2;
var
  s, F_i_l_e: String;
  errCount: Integer;

begin
  qryList.DisableControls;
  qryList.First;
  errCount := 0;

  memoError.Clear;
  Memo1.Clear;
  try

    while not qryList.eof do
    begin
      if length(qryList.fieldbyname('AccountNumber').AsString) < 3 then
      begin
        Inc(errCount);
        memoError.Lines.Add(IntToStr(errCount) + '- ' +
          GetPersonelName(qryList.fieldbyname('PersonelNO').AsString) + #9 +
          CurrToStrF(qryList.fieldbyname(Price).AsCurrency, ffCurrency, 0));
        qryList.Next;
        Continue;
      end; // if
      if qryList.fieldbyname('selected').AsInteger <> 1 then
      begin
        qryList.Next;
        Continue;
      end; // if
      s := IntToStr(qryList.fieldbyname('AccBankType').AsInteger - 10);
      // 1 = Gharzolhasaneh Jari , 2 = Gharzolhasaneh Pas Andaz , 3 = Sepordeh kotah Modat
      s := s + InsertSpace(10 - length(qryList.fieldbyname('AccountNumber')
        .AsString), '0') + qryList.fieldbyname('AccountNumber').AsString + '';
      s := s + InsertSpace(14 - length(qryList.fieldbyname(Price).AsString),
        '0') + qryList.fieldbyname(Price).AsString;
      Memo1.Lines.Add(s);
      qryList.Next;

    end; // while
    PnlError.Visible := errCount > 0;
    F_i_l_e := StringReplace(makeDate, '/', '', [rfreplaceall]) + '.TXT';
    MySaveDialog(F_i_l_e, 'رفاه');
  finally
    qryList.EnableControls;
    SetKeyboardFarsi;
  end; // try
end;

procedure TMakeBankDSKF.MakeDskRefah_HamrahHesab;
var
  s, F_i_l_e: String;
  errCount: Integer;
begin
  qryList.DisableControls;
  qryList.First;
  errCount := 0;
  memoError.Clear;
  Memo1.Clear;
  try
    while not qryList.eof do
    begin
      if length(qryList.fieldbyname('AccountNumber').AsString) < 3 then
      begin
        Inc(errCount);
        memoError.Lines.Add(IntToStr(errCount) + '- ' +
          GetPersonelName(qryList.fieldbyname('PersonelNO').AsString) + #9 +
          CurrToStrF(qryList.fieldbyname(Price).AsCurrency, ffCurrency, 0));
        qryList.Next;
        Continue;
      end; // if
      if qryList.fieldbyname('selected').AsInteger <> 1 then
      begin
        qryList.Next;
        Continue;
      end; // if
      s := IntToStr(qryList.fieldbyname('AccBankType').AsInteger);
      s := s + InsertSpace(15 - length(qryList.fieldbyname('AccountNumber')
        .AsString), '0') + qryList.fieldbyname('AccountNumber').AsString + '';
      s := s + InsertSpace(14 - length(qryList.fieldbyname(Price).AsString),
        '0') + qryList.fieldbyname(Price).AsString;
      Memo1.Lines.Add(s);
      qryList.Next;
    end; // while
    PnlError.Visible := errCount > 0;
    F_i_l_e := StringReplace(makeDate, '/', '', [rfreplaceall]) + '.TXT';
    MySaveDialog(F_i_l_e, 'ديسكت حقوق بانك رفاه 3 حساب همراه ');
  finally
    qryList.EnableControls;
    SetKeyboardFarsi;
  end; // try
end;

procedure TMakeBankDSKF.FormCreate(Sender: TObject);
var
  i: Integer;
begin
  inherited;
  SetPrice;
  for i := 0 to popAllBank.Items.Count - 1 do
    popAllBank.Items[i].Caption := IntToStr(popAllBank.Items[i].Tag) + '-' +
      popAllBank.Items[i].Caption;

  rgpSalaryID4PartMakeBankDSK.Visible := optP.SalaryID4PartMakeBankDSK
    <> EmptyStr;
  MonthNo := var_glb_CurrentMonth;
  FormKind := var_glb_gParam;

  OrginalSQL := qryList.SQL.Text;

  ToolBar1.Buttons[MonthNo - 1].Down := True;
  mskDateDisk.Text := var_glb_currentdate;
  initCombo;
  mskAccountNum.Text := ReadConfig(APPID, 'PayCheckAccountNum', '');
  mskSarparasty.Text := ReadConfig(APPID, 'DskMeli_Sarparasty');
  mskShobeh.Text := ReadConfig(APPID, 'DskMeli_Shobeh');
  mskSarfasl.Text := ReadConfig(APPID, 'DskMeli_Sarfasl');

  msk_SA_FileSerial.Text := ReadConfig(APPID, 'SA_FileSerial', '001');
  msk_SA_Groups.Text := ReadConfig(APPID, 'SA_Groups');
  msk_SA_Branch.Text := ReadConfig(APPID, 'SA_Branch');

  msk_ke_BBBB.Text := ReadConfig(APPID, 'ke_BBBB');
  msk_ke_CCCC.Text := ReadConfig(APPID, 'ke_CCCC');

  mskShahr_Name.Text := ReadConfig(APPID, 'Shahr_Name');

  msk_PA_Branch.Text := ReadConfig(APPID, 'msk_PA_Branch');
  msk_PA_Sarfasl.Text := ReadConfig(APPID, 'msk_PA_Sarfasl');
  msk_PA_Serial.Text := ReadConfig(APPID, 'msk_PA_Serial');
  msk_PA_FileCode.Text := ReadConfig(APPID, 'msk_PA_FileCode');

  InitCmbArchiveID(CmbArchiveID, MonthNo);
  with qry_init do
  begin
    Active := False;
    Active := True;
  end; // with
end;

procedure TMakeBankDSKF.ppLblCompanyNameGetText(Sender: TObject;

  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName
end;

procedure TMakeBankDSKF.ppLblPrintDateGetText(Sender: TObject;

  var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TMakeBankDSKF.ppLblListNameGetText(Sender: TObject;

  var Text: String);
begin
  inherited;
  Text := 'ليست حقوق ' + ToolBar1.Buttons[MonthNo - 1].Caption + ' ماه';
end;

procedure TMakeBankDSKF.actPrintExecute(Sender: TObject);
begin
  inherited;
  MakeMenuItem(50, AllClikPopClick, PopList4Print);
  try
    qryList.DisableControls;
    PopList4Print.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
  finally
    qryList.EnableControls;
  end;
end;

procedure TMakeBankDSKF.AllClikPopClick(Sender: TObject);
begin
  inherited;
  InitReportFile(ppReport4File, (Sender as TMenuItem).Hint);
end;

procedure TMakeBankDSKF.btnAllBankClick(Sender: TObject);
begin
  inherited;
  popAllBank.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TMakeBankDSKF.btnCDClick(Sender: TObject);
begin
  inherited;
  CdBurn := True;
  actMake.Execute;
end;

procedure TMakeBankDSKF.btnMakeClick(Sender: TObject);
begin
  inherited;
  CdBurn := False;
  actMake.Execute;
end;

procedure TMakeBankDSKF.actMakeExecute(Sender: TObject);
begin
  inherited;
  makeDate := mskDateDisk.Text;
  if not validate_date(False, '', '', 'تاريخ تهيه', makeDate) then
    exit;

  if cmbBank.ItemIndex = -1 then
  begin
    Warn('نام بانک را انتخاب کنيد.‏');
    exit;
  end;
  CallAllBank(cmbBank.ItemIndex + 1);
end;

procedure TMakeBankDSKF.CallAllBank(BankID: Integer);
begin
  case BankID of
    1:
      begin
        makeDSKMellat(1);
      end;
    2:
      DiskTejarat;
    3:
      CreateDiskMeli;
    4:
      DiskSaderat;
    5, 19, 20, 21:
      DiskSaman('N ');
    // ,  انصار    پاسارگاد  سامان و سينا
    6:
      makeDSKKeshavarzi;
    7:
      makeDSKKeshavarzi2(6);
    8:
      makeDSKKeshavarzi_MehrGostar(True);
    9:
      makeDskSepah(EmptyStr);
    10:
      makeDskShahr;
    11:
      DiskParsiyan;
    12:
      MakeDskRefah;
    13:
      popPasargad.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
    14:
      DiskShahr2;
    15:
      MakeDskRefah2;
    16:
      MakeDskRefah_HamrahHesab;
    17:
      DiskPostBank;
    18:
      makeDSKKeshavarzi2(4);
    // ملی جدید
    22:
      DiskSaman('C '); // , مهر

    23:
      DiskPasargadResalatTxt(False);
    24, 25, 32:
      makeDSKMellat2(BankID);

    26:
      DiskSaman('N'); // , مهر ایران

    27:
      actSampleExell.Execute;

    28:
      actMeliExell.Execute;
    29:
      makeDSKKeshavarzi_MehrGostar(False);
    30:
      makeDSKMellat(2);
    31:
      actTaavonExell.Execute;
    33:
      makeDskSepah('$');

  else
    Warn('براي اين بانك ديسكت تعريف نشده است.‏', mtInformation);
  end; // case

end;

procedure TMakeBankDSKF.AllBank2Click(Sender: TObject);
begin
  inherited;
  CallAllBank((Sender as TMenuItem).Tag)
end;

procedure TMakeBankDSKF.actMeliExellExecute(Sender: TObject);
var
  s, sPersonelName, AccountNumber: String;
  errCount, n_Count: Integer;
  c: Currency;
begin
  inherited;
  qryMeliExell.Open;
  qryList.DisableControls;
  qryList.First;
  errCount := 0;
  n_Count := 0;
  c := 0;
  memoError.Clear;
  Memo1.Clear;
  try
    while not qryList.eof do
    begin
      sPersonelName := GetPersonelName(qryList.fieldbyname('PersonelNO')
        .AsString);
      if length(qryList.fieldbyname('AccountNumber').AsString) < 3 then
      begin
        Inc(errCount);
        memoError.Lines.Add(IntToStr(errCount) + '- ' + sPersonelName + #9 +
          CurrToStrF(qryList.fieldbyname(Price).AsCurrency, ffCurrency, 0));
        qryList.Next;
        Continue;
      end;
      if qryList.fieldbyname('selected').AsInteger <> 1 then
      begin
        qryList.Next;
        Continue;
      end;

      Inc(n_Count);
      AccountNumber := Trim(StringReplace(qryList.fieldbyname('AccountNumber')
        .AsString, '-', '', [rfreplaceall]));
      with qryMeliExell do
      begin
        Insert;
        qryMeliExellشبا.AsString := AccountNumber;

        qryMeliExellمبلغ.AsCurrency := qryList.fieldbyname(Price).AsCurrency;

        qryMeliExellنامونامخانوادگي.AsString := qryListname_L1.AsString;

        s := IfThen(chkProject.Checked, Chr(2), '') + medtBankShar14.Text + ' '
          + qryListProjectName.AsString + ' ' + medtBankShar142.Text;

        qryMeliExellتوضيحات.AsString := s;

        Post;
      end;

      c := c + qryList.fieldbyname(Price).AsCurrency;
      qryList.Next;
    end; // while

    DataToExcel(qryMeliExell);

    Memo1.Lines.Text := s;
    StatusBar1.Panels[0].Text := 'تعداد = ' + IntToStr(n_Count);
    StatusBar1.Panels[1].Text := 'جمع پرداختي = ' +
      CurrToStrF(c, ffCurrency, 0);
    Memo1.Lines.Add(StatusBar1.Panels[0].Text);
    Memo1.Lines.Add(StatusBar1.Panels[1].Text);

    PnlError.Visible := errCount > 0;

  finally
    qryList.EnableControls;
  end;

end;

procedure TMakeBankDSKF.actLimitExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try

      AddItemFilter(GetFilter, TLabelID);
      AddItem(DMF.adcSalary, 'OfficeCode', 'عنوان سازمان', '', ftInteger,
        dvDefaults, 'true', '', ciCheck,
        'SELECT FormInfoID, LTRIM(RTRIM(STR(InfoID))) + InfoName_L1 FROM Pay.FormsInfo WHERE (FormType = 12)',
        '');

      AddItem(DMF.adcSalary, 'EmployTypeID', 'نوع حكم ', 'نوع', ftInteger,
        dvDefaults, 'true', '', ciCheck,
        'SELECT FormInfoID, LTRIM(RTRIM(STR(InfoID))) + InfoName_L1 FROM Pay.FormsInfo WHERE (FormType = 14)',
        '');
      // AddItem(DMf.adcSalary, 'EmployTypeID', 'نوع حكم ', 'نوع', ftInteger,
      // dvMinMax, '', '', ciLookup,
      // 'SELECT FormInfoID,InfoName_L1 FROM Pay.FormsInfo WHERE  (FormType = 14)',
      // 'SELECT MIN(FormInfoID), MAX(FormInfoID) FROM Pay.FormsInfo WHERE  (FormType = 14)');

      AddItemFilter(GetFilter, TFilterGroupIDchk);

      AddItem(DMF.adcSalary, 'ProjectID', 'كد پروژه/ م.هزينه', 'كد', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT FormInfoID,InfoName_L1+ltrim(InfoID) InfoName_L1 FROM Pay.FormsInfo WHERE FormType =   '
        + optP.FormInfo4Function.ToString,
        'SELECT 0,MAX(ProjectID) FROM Pay.FixedCalculated ');

      AddItem(DMF.adcSalary, 'BranchInfo', 'شعبه ', 'كد', ftInteger, dvMinMax,
        '', '', ciLookup,
        'SELECT InfoID,InfoName_L1       FROM Pay.FormsInfo WHERE FormType = 84',
        'SELECT MIN(InfoID), MAX(InfoID) FROM Pay.FormsInfo WHERE FormType = 84');

      AddItem(DMF.adcSalary, 'AccountsTypeID', 'نوع بانك', '', ftInteger,
        dvDefaults, '1', '1', ciCombo,
        'SELECT InfoID, InfoName_L1 FROM Pay.FormsInfo WHERE FormType=88', '');
      AddItem(DMF.adcSalary, 'SelectedActive',
        'آيا ليست به صورت انتخابي باز شود؟', '', ftBoolean, dvDefaults, '', '',
        ciCombo, 'خير#بله ', '');
      AddItem(DMF.adcSalary, 'ArchiveID', ' شماره بايگاني', 'شماره', ftInteger,
        dvDefaults, '0', '', ciSingle, '', '');

      // AddItem(DMF.adcSalary,'CreateDate','تاريخ تهيه','',ftDate,dvDefaults,var_glb_CurrentDate,'',ciSingle);

      AddItem(DMF.adcSalary, 'AccBankType', 'نوع حساب ', 'نوع', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT InfoID,InfoName_L1       FROM Pay.FormsInfo WHERE FormType = 26',
        'SELECT MIN(InfoID), MAX(InfoID) FROM Pay.FormsInfo WHERE FormType = 26');

      AddItemFilter(GetFilter, TPersonelNo);

      AddItem(DMF.adcSalary, 'PersonelState', 'وضعيت پرسنل ', 'كد', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT     InfoID, InfoName_L1 FROM Pay.FormsInfo WHERE FormType = 3',
        'SELECT Min(InfoID),Max(InfoID) FROM Pay.FormsInfo WHERE FormType = 3');

      if ShowModal = mrOk then
      begin
        GetFilterString;
        CmbArchiveID.ItemIndex := GetcFrom(myParams.ParamValues['ArchiveID'],
          ftInteger);
        UpdateList;
      end; // if
    finally
      Free;
    end; // try
  end; // with
end;

procedure TMakeBankDSKF.MakeSql;
var
  Price1, Price2, SqlTideAdd: string;
begin
  with qryList do
  begin
    case optP.SalaryID4PartKind of
      0:
        begin
          Price1 := 'CASE WHEN Price>=SelPrice THEN Price-SelPrice ELSE Price END';
          Price2 := 'CASE WHEN Price>=SelPrice THEN SelPrice       ELSE 0 END';

        end;
      1:
        begin
          Price1 := 'CASE WHEN Price<=SelPrice THEN 0     ELSE CASE WHEN Price>SelPrice THEN Price-SelPrice ELSE Price END END';
          Price2 := 'CASE WHEN Price<=SelPrice THEN Price ELSE CASE WHEN Price>SelPrice THEN SelPrice       ELSE 0 END END';
        end;

    end;

    SQL.Text := 'SELECT * ';

    {
      0- عيدي
      1-سنوات
      2- ماليات و علي الحساب عيدي
      3-پاداش مستقل از حقوق
      4-علي الحساب عيدي
      5-علي الحساب سنوات
      6- خالص عيدي
      7-مرخصی سالیانه
    }

    SqlTideAdd := EmptyStr;
    if chkTide.Checked then
    begin
      if (chklstTide.Checked[0]) then
        SqlTideAdd := '+ ISNULL(Eydi,0)';

      if (chklstTide.Checked[6]) then
        SqlTideAdd := '+ ISNULL(Eydi,0) - ISNULL(MaliatEydi,0) ';

      if (chklstTide.Checked[1]) then
        SqlTideAdd := SqlTideAdd + '+ ISNULL(Sanavat,0)';

    end;

    if optP.SalaryID4PartMakeBankDSK <> EmptyStr then
    begin
      SQL.Add(',' + Price1 + ' AS Price1');
      SQL.Add(',' + Price2 + ' AS Price2');
    end
    else
    begin
      SQL.Add(',Price AS Price1');
      SQL.Add(',Price AS Price2');
    end;

    SQL.Add(',(SELECT COUNT(*) FROM Pay.Functions');
    SQL.Add('WHERE ((Mounth = a.Mounth) AND (YearID = ' + APPBank.Year.ToString
      + ') AND(PersonelNo = a.PersonelNO))) AS ISFunctions');
    SQL.Add('from (');

    SQL.Add('SELECT Fitful.FitfulID AS selected , FixedCalculated.PersonelNO,NationalID,');
    SQL.Add('PersonelInfo.name_L1 AS FirstName , PersonelInfo.lastName_L1 ,');
    SQL.Add('PersonelInfo.name_L1 + '' '' + PersonelInfo.lastName_L1 AS name_L1, PersonelInfo.name_L2 + '' '' +');
    SQL.Add('PersonelInfo.lastName_L2 AS name_L2,');
    SQL.Add('ROUND(SUM(CASE WHEN (FixedCalculated.ShowListKind = 1) THEN FixedCalculated.Price ELSE -');
    SQL.Add('FixedCalculated.Price END), 0)  ' + SqlTideAdd + ' AS Price,');
    // (FixedCalculated.ShowListKind = 1)AND

    if optP.SalaryID4PartMakeBankDSK <> EmptyStr then

      SQL.Add('ROUND(SUM(CASE WHEN (FixedCalculated.SalaryID in(' +
        optP.SalaryID4PartMakeBankDSK +
        ')) THEN CASE WHEN FixedCalculated.BedBes=1 THEN FixedCalculated.Price ELSE -FixedCalculated.Price END ELSE 0 END), 0) AS SelPrice,');

    SQL.Add('PersonelInfo.BankCode, FormsInfo.InfoID,');
    SQL.Add('ISNULL(PersonelAccounts.AccountNumber_Pa, PersonelInfo.AccountNumber) AS AccountNumber,PersonelAccounts.SHEBA,');
    SQL.Add('ISNULL(FormsInfoBankCode_Pa.InfoName_L1, FormsInfo.InfoName_L1) AS BankName_L1,');
    SQL.Add('FormsInfo.InfoName_L2 AS BankName_L2,');
    SQL.Add('ISNULL(FormsInfo_AccBankType_Pa.InfoName_L1, FormsInfo_AccBankType.InfoName_L1) AS BankType_L1,');
    SQL.Add('FormsInfo_AccBankType.InfoName_L2 AS BankType_L2,');
    SQL.Add('FormsInfo_AccBankType.InfoID AS AccBankType, FormsInfo_2PersonelState.InfoID AS PersonelState,');
    SQL.Add('FixedCalculated.Mounth,');
    SQL.Add('FormsInfo_BranchInfo.InfoName_L1 AS BranchInfo ,PersonelInfo.Mobile, PersonelInfo.fatherName_L1');

    if chkProject.Checked then
      SQL.Add(',FormsInfoProjectSub.InfoName_L1+'':''+FormsInfoProject.InfoName_L1 AS ProjectName')
    else
      SQL.Add(','''' AS ProjectName');

    SQL.Add('');
    SQL.Add('FROM Pay.FixedCalculated INNER JOIN');
    SQL.Add('Pay.PersonelInfo ON FixedCalculated.PersonelNO = PersonelInfo.PersonelNo LEFT OUTER JOIN');
    SQL.Add('Pay.FormsInfo AS FormsInfo_2PersonelState ON PersonelInfo.PersonelState = FormsInfo_2PersonelState.FormInfoID');
    SQL.Add('LEFT OUTER JOIN');
    SQL.Add('Pay.FormsInfo ON PersonelInfo.BankCode = FormsInfo.FormInfoID LEFT OUTER JOIN');
    SQL.Add('Pay.FormsInfo AS FormsInfo_AccBankType ON PersonelInfo.AccBankType = FormsInfo_AccBankType.FormInfoID');
    SQL.Add('LEFT OUTER JOIN');
    SQL.Add('Pay.FormsInfo AS FormsInfo_BranchInfo ON PersonelInfo.BranchInfo = FormsInfo_BranchInfo.FormInfoID LEFT');
    SQL.Add('OUTER JOIN');
    SQL.Add('Pay.PersonelAccounts ON PersonelInfo.PersonelNo = PersonelAccounts.PersonelNo LEFT OUTER JOIN');
    SQL.Add('Pay.FormsInfo AS FormsInfo_AccBankType_Pa ON PersonelAccounts.AccBankType_Pa =');
    SQL.Add('FormsInfo_AccBankType_Pa.FormInfoID LEFT OUTER JOIN');
    SQL.Add('Pay.FormsInfo AS FormsInfo_AccountsType_Pa ON PersonelAccounts.AccountsType =');
    SQL.Add('FormsInfo_AccountsType_Pa.FormInfoID LEFT OUTER JOIN');
    SQL.Add('Pay.FormsInfo AS FormsInfo_BranchInfo_Pa ON PersonelAccounts.BranchInfo_Pa =');
    SQL.Add('FormsInfo_BranchInfo_Pa.FormInfoID LEFT OUTER JOIN');
    SQL.Add('Pay.FormsInfo AS FormsInfoBankCode_Pa ON PersonelAccounts.BankCode_Pa = FormsInfoBankCode_Pa.FormInfoID');

    if chkProject.Checked then
    begin
      SQL.Add('LEFT OUTER JOIN Pay.FormsInfo AS FormsInfoProject ON FixedCalculated.ProjectID = FormsInfoProject.FormInfoID');
      SQL.Add('LEFT OUTER JOIN Pay.FormsInfo AS FormsInfoProjectSub ON FormsInfoProject.PrvInfoID = FormsInfoProjectSub.FormInfoID');
    end;

    if chkTide.Checked then
    begin
      SQL.Add('LEFT OUTER JOIN');
      SQL.Add('(SELECT PersonelNo');
      SQL.Add(',ISNULL(SUM(case when F_sanavat.FormType = 59 then EmployerAmount else 0 end ),0) AS Sanavat');
      SQL.Add(',ISNULL(SUM(case when F_sanavat.FormType = 59 then EmployeeAmount else 0 end ),0) AS Eydi');
      SQL.Add(',ISNULL(SUM(case when F_sanavat.FormType = 59 then PaymentLoan else 0 end ),0) AS MaliatEydi');
      SQL.Add(',ISNULL(SUM(case when F_sanavat.FormType = 111 then EmployeeAmount else 0 end ),0) AS Reward');
      SQL.Add(',ISNULL(SUM(case when F_sanavat.FormType = 111 then PaymentLoan else 0 end ),0) AS RewardTax');
      SQL.Add(',ISNULL(SUM(case when (F_sanavat.FormType = 111) and (F_sanavat.InfoID<=10) then EmployeeAmount else 0 end ),0) AS');
      SQL.Add('ContainRewardTax');
      SQL.Add('FROM pay.PersonelDecExt PersonelDecExt_1 INNER JOIN');
      SQL.Add('pay.FormsInfo F_sanavat ON PersonelDecExt_1.FormInfoID = F_sanavat.FormInfoID');
      SQL.Add('WHERE (LEFT(EndDate, 7) = ''' + optP.YearMounth + ''')');
      SQL.Add('AND ((F_sanavat.FormType IN (59,111)) )');
      SQL.Add('Group by PersonelNo)');
      SQL.Add('AS EydiSanavat ON FixedCalculated.PersonelNO = EydiSanavat.PersonelNo');

    end;

    SQL.Add('CROSS JOIN');
    SQL.Add('dbo.Fitful');
    SQL.Add('WHERE');
    SQL.Add('');
    SQL.Add('((FixedCalculated.ShowListKind = 1) OR (FixedCalculated.ShowListKind = 2) OR');
    SQL.Add('( (FixedCalculated.ShowListKind = 11) AND (FixedCalculated.BedBes = 2)))');
    SQL.Add('');
    SQL.Add('AND ( FormsInfo_AccountsType_Pa.InfoID = :AccountsTypeID or FormsInfo_AccountsType_Pa.InfoID is null)');
    SQL.Add('AND (ISNULL(FormsInfo_BranchInfo_Pa.InfoID, FormsInfo_BranchInfo.InfoID) BETWEEN :BranchInfoFrom AND :BranchInfoTo');
    SQL.Add('or ISNULL(FormsInfo_BranchInfo_Pa.InfoID, FormsInfo_BranchInfo.InfoID) is null )');
    SQL.Add('');
    SQL.Add('AND ( ( FixedCalculated.ProjectID BETWEEN :ProjectIDFrom AND :ProjectIDTo) )');
    // OR FixedCalculated.ProjectID =0
    SQL.Add('');

    SQL.Add('AND (FixedCalculated.YearID = :YearID)');
    Parameters.ParamByName('YearID').Value := APPBank.Year;
    SQL.Add('AND (FixedCalculated.Years = :Years)');
    Parameters.ParamByName('Years').Value := optP.Year;

    SQL.Add('AND (FixedCalculated.Mounth = :Mounth)');
    SQL.Add('AND (FixedCalculated.ArchiveID = :ArchiveID)');
    if (CompanyFilterinLogin) and (not User.PowerAdmin) then
    begin
      SQL.Add('AND(FixedCalculated.subcompanyCode BETWEEN :companyCodeFrom AND :companyCodeTo )');
      Parameters.ParamByName('companyCodeFrom').Value := FcompanyCodeLogin;
      Parameters.ParamByName('companyCodeTo').Value := FcompanyCodeLogin;
    end;
    SQL.Add(' AND (FixedCalculated.LabelID BETWEEN :LabelIDFrom ANd :LabelIDTo)');

    SQL.Add('AND ( ISNULL(PersonelAccounts.BankCode_Pa ,PersonelInfo.BankCode) = :BankCode)');
    SQL.Add('');
    SQL.Add('GROUP BY FixedCalculated.PersonelNO, PersonelInfo.name_L1 ,NationalID, PersonelInfo.lastName_L1, PersonelInfo.name_L2 + '' '' +');
    SQL.Add('PersonelInfo.lastName_L2,');
    SQL.Add('PersonelInfo.BankCode, FormsInfo.InfoID, ISNULL(PersonelAccounts.AccountNumber_Pa,');
    SQL.Add('PersonelInfo.AccountNumber),PersonelAccounts.SHEBA,');
    SQL.Add('ISNULL(FormsInfoBankCode_Pa.InfoName_L1, FormsInfo.InfoName_L1), FormsInfo.InfoName_L2, ISNULL');
    SQL.Add('(FormsInfo_AccBankType_Pa.InfoName_L1,');
    SQL.Add('FormsInfo_AccBankType.InfoName_L1), FormsInfo_AccBankType.InfoName_L2, FormsInfo_AccBankType.InfoID,');
    SQL.Add('FormsInfo_2PersonelState.InfoID, FixedCalculated.Mounth,');
    SQL.Add('FormsInfo_BranchInfo.InfoName_L1');
    SQL.Add(',FormsInfo_AccBankType.InfoID,FormsInfo_AccBankType_Pa.InfoID,PersonelInfo.Mobile, Fitful.FitfulID,');
    SQL.Add('PersonelInfo.fatherName_L1');
    if chkProject.Checked then
      SQL.Add(',FormsInfoProject.InfoName_L1,FormsInfoProjectSub.InfoName_L1');
    if chkTide.Checked then
      SQL.Add(',Eydi,MaliatEydi,Sanavat');

    SQL.Add('');
    SQL.Add('');
    SQL.Add('');
    SQL.Add('HAVING (ISNULL(FormsInfo_AccBankType_Pa.InfoID, FormsInfo_AccBankType.InfoID) BETWEEN :AccBankTypeFrom AND');
    SQL.Add(':AccBankTypeTo)');
    SQL.Add('');
    SQL.Add('AND');
    SQL.Add('');
    SQL.Add('(FormsInfo_2PersonelState.InfoID BETWEEN :PersonelStateFrom AND :PersonelStateTo) AND');
    SQL.Add('(FixedCalculated.PersonelNO BETWEEN :PersonelFrom AND :PersonelTo)');
    SQL.Add('And FixedCalculated.PersonelNo in (SELECT Interdicts.PersonelNo FROM Pay.Interdicts LEFT OUTER JOIN');
    SQL.Add('Pay.FormsInfo ON Pay.Interdicts.OfficeCode = FormsInfo.FormInfoID');
    SQL.Add('WHERE (Interdicts.State < 50) AND (Interdicts.InterdicType = 0)');

    SQL.Add('AND (Interdicts.EmployTypeID in (' +
      GetcFrom(myParams.ParamValues['EmployTypeID'], ftString) + ') ) ');
    SQL.Add('AND (Interdicts.GroupID in (0,' + GetGroupID + ') ) ');

    SQL.Add('AND (Interdicts.OfficeCode in( ' +
      GetcFrom(myParams.ParamValues['OfficeCode'], ftString) + ' ) ) ');

    SQL.Add(')');
    SQL.Add('');
    SQL.Add(')a');
    case rgpSalaryID4PartMakeBankDSK.ItemIndex of
      1:
        SQL.Add('WHERE ' + Price1 + ' > 0');

      2:
        SQL.Add('WHERE ' + Price2 + '  > 0');

    else
      SQL.Add('WHERE Price > 0');
    end;

    SQL.Add('ORDER BY PersonelNO');
    SQL.Add('');
    SQL.Add('');
    OrginalSQL := qryList.SQL.Text;

  end;

end;

function TMakeBankDSKF.GetGroupID: string;
var
  s: string;
begin
  s := GetcFrom(myParams.ParamValues['GroupID'], ftString);
  if s = EmptyStr then
    Result := '0'
  else
    Result := s
end;

procedure TMakeBankDSKF.UpdateList;
var
  s: String;
  ArchiveID: Integer;
  // aField: TField;
begin
  ArchiveID := Integer(CmbArchiveID.Items.Objects[CmbArchiveID.ItemIndex]);
  pnlDiskMeli.Visible := cmbBank.ItemIndex = 2;
  pnlDiskSaderat.Visible := cmbBank.ItemIndex in [3];
  pnlDiskKeshavarzi.Visible := cmbBank.ItemIndex in [6, 7, 17];
  pnlShahr_Pasargad.Visible := cmbBank.ItemIndex in [9, 12];
  pnlShahr14.Visible := cmbBank.ItemIndex in [0, 13, 27];
  if cmbBank.ItemIndex <> 13 then
    pnlShahr14.Caption := EmptyStr
  else
    pnlShahr14.Caption := '    بانك شهر';

  pnlParsiyan.Visible := cmbBank.ItemIndex in [10];
  pnlMelat.Visible := cmbBank.ItemIndex in [23, 24];

  SelectedActive := GetcTo(myParams.ParamValues['SelectedActive'],
    ftInteger) = 2;
  DBGrid1.Columns[0].Visible := SelectedActive;
  setColumns2(DBGrid1, chkProject.Checked, 'ProjectName');
  Memo1.Clear;

  with qryList do
  begin
    if optP.SalaryID4PartMakeBankDSK = EmptyStr then
    begin
      DBGrid1.Columns[ColumnIndexByFieldName(DBGrid1, 'Price1')
        ].Visible := False;
      DBGrid1.Columns[ColumnIndexByFieldName(DBGrid1, 'Price2')
        ].Visible := False;
    end
    else
    begin
      DBGrid1.Columns[ColumnIndexByFieldName(DBGrid1, 'Price1')
        ].Visible := True;
      DBGrid1.Columns[ColumnIndexByFieldName(DBGrid1, 'Price2')
        ].Visible := True;
    end;

    if FormKind = 2 then
    // With qryList do
    begin
      Caption := 'ليست و ديسكت بانكها از معوق حقوق';
      SQL.Text := 'SELECT *';
      SQL.Add(',Price AS Price1');
      SQL.Add(',Price AS Price2');
      SQL.Add(',ProjectName');
      SQL.Add('FROM Pay.RetardDiskBank(:AccountsTypeID,:BranchInfoFrom,:BranchInfoTo,:Mounth,:BankCode,:AccBankTypeFrom,');
      SQL.Add(':AccBankTypeTo,:PersonelStateFrom,:PersonelStateTo,:PersonelFrom,:PersonelTo ');
      SQL.Add(',:FirstArchiveID , :LastArchiveID  ,:LabelIDFrom  , :LabelIDTo ');
      SQL.Add(', :YearIDFrom , :YearIDTo , :ProjectIDFrom , :ProjectIDTo ) AS RetardDiskBank');

      Parameters.ParamByName('YearIDFrom').Value := APPBank.Year;
      Parameters.ParamByName('YearIDTo').Value := APPBank.Year;
      SQL.Add('WHERE PersonelNO IN (SELECT Interdicts.PersonelNo');
      SQL.Add('FROM Pay.Interdicts LEFT OUTER JOIN');
      SQL.Add('Pay.FormsInfo  ON Pay.Interdicts.OfficeCode = FormsInfo.FormInfoID');
      SQL.Add('WHERE (Interdicts.State < 50) AND (Interdicts.InterdicType = 0) ');

      SQL.Add('AND (Interdicts.EmployTypeID in (' +
        GetcFrom(myParams.ParamValues['EmployTypeID'], ftString) + ') ) ');
      SQL.Add('AND (Interdicts.GroupID in (0,' + GetGroupID + ') ) ');

      SQL.Add('AND (Interdicts.OfficeCode in( ' +
        GetcFrom(myParams.ParamValues['OfficeCode'], ftString) + ' ) ) )');
      // SQL.Add('AND (ProjectID BETWEEN :ProjectIDFrom AND :ProjectIDTo)');

      actMake.Caption := 'ديسكت معوقه';
      OrginalSQL := qryList.SQL.Text;

      if ArchiveID = 0 then
      BEGIN
        Parameters.ParamByName('FirstArchiveID').Value :=
          Integer(CmbArchiveID.Items.Objects[CmbArchiveID.Items.Count - 1]);;
        Parameters.ParamByName('LastArchiveID').Value := 0;
      END
      ELSE
      BEGIN
        Parameters.ParamByName('FirstArchiveID').Value := ArchiveID - 1;
        Parameters.ParamByName('LastArchiveID').Value := ArchiveID;
      END;

    end;

    DisableControls;
    if FormKind <> 2 then
      if (chklstSalaryId.SelCount = 0) and ((chklstDecExt.SelCount = 0)) and
        ((CmbLoan.ItemIndex < 1)) and
        ((chklstTide.SelCount = 0) or chkTide.Checked) and
        (chklstPony.SelCount = 0) then
      begin
        MakeSql;
        s := GetcFrom(myParams.ParamValues['OfficeCode'], ftString);
        if s = EmptyStr then
          SQL.Text := StringReplace(OrginalSQL, ':OfficeCode', '',
            [rfreplaceall])
        else
          SQL.Text := StringReplace(OrginalSQL, ':OfficeCode',
            'AND (Interdicts.OfficeCode in( ' + s + ' ) ) ', [rfreplaceall]);

        s := GetcFrom(myParams.ParamValues['EmployTypeID'], ftString);
        if s = EmptyStr then
          SQL.Text := StringReplace(SQL.Text, ':EmployTypeID', '',
            [rfreplaceall])
        else
          SQL.Text := StringReplace(SQL.Text, ':EmployTypeID',
            'AND (Interdicts.EmployTypeID in( ' + s + ' ) ) ', [rfreplaceall]);

        s := GetcFrom(myParams.ParamValues['GroupID'], ftString);
        if s = EmptyStr then
          SQL.Text := StringReplace(SQL.Text, ':GroupID', '', [rfreplaceall])
        else
          SQL.Text := StringReplace(SQL.Text, ':GroupID',
            'AND (Interdicts.GroupID in(0, ' + s + ' ) ) ', [rfreplaceall]);

      end;

    Active := False;
    if Parameters.FindParam('Mounth')<>nil then
    begin
      Parameters.ParamByName('Mounth').Value := MonthNo;
    end; // if

    if Parameters.FindParam('LabelIDFrom') <> nil then
    begin
      Parameters.ParamByName('LabelIDFrom').Value :=
        GetcFrom(myParams.ParamValues['LabelID'], ftInteger);
      Parameters.ParamByName('LabelIDTo').Value :=
        GetcTo(myParams.ParamValues['LabelID'], ftInteger);
    end;

    Parameters.ParamByName('PersonelFrom').Value :=
      GetcFrom(myParams.ParamValues['PersonelNo'], ftInteger);
    Parameters.ParamByName('PersonelTo').Value :=
      GetcTo(myParams.ParamValues['PersonelNo'], ftInteger);

    Parameters.ParamByName('AccBankTypeFrom').Value :=
      GetcFrom(myParams.ParamValues['AccBankType'], ftInteger);
    Parameters.ParamByName('AccBankTypeTo').Value :=
      GetcTo(myParams.ParamValues['AccBankType'], ftInteger);

    Parameters.ParamByName('BranchInfoFrom').Value :=
      GetcFrom(myParams.ParamValues['BranchInfo'], ftInteger);
    Parameters.ParamByName('BranchInfoTo').Value :=
      GetcTo(myParams.ParamValues['BranchInfo'], ftInteger);

    if Parameters.FindParam('ProjectIDFrom') <> nil then
    begin
      Parameters.ParamByName('ProjectIDFrom').Value :=
        GetcFrom(myParams.ParamValues['ProjectID']);
      Parameters.ParamByName('ProjectIDTo').Value :=
        GetcTo(myParams.ParamValues['ProjectID']);
    end;

    Parameters.ParamByName('PersonelStateFrom').Value :=
      GetcFrom(myParams.ParamValues['PersonelState'], ftInteger);
    Parameters.ParamByName('PersonelStateTo').Value :=
      GetcTo(myParams.ParamValues['PersonelState'], ftInteger);

    Parameters.ParamByName('AccountsTypeID').Value :=
      GetcTo(myParams.ParamValues['AccountsTypeID'], ftInteger);

    if cmbBank.ItemIndex = -1 then
      Parameters.ParamByName('BankCode').Value := 0
    else
      Parameters.ParamByName('BankCode').Value :=
        Integer(cmbBank.Items.Objects[cmbBank.ItemIndex]);

    if (Parameters.FindParam('BankCode2') <> nil) then
      if (cmbBank.ItemIndex = -1) then
        Parameters.ParamByName('BankCode2').Value := 0
      else
        Parameters.ParamByName('BankCode2').Value :=
          Integer(cmbBank.Items.Objects[cmbBank.ItemIndex]);

    if CmbLoan.ItemIndex > 0 then
    begin
      if Parameters.FindParam('LoanInfoID') <> nil then
        Parameters.ParamByName('LoanInfoID').Value :=
          Integer(CmbLoan.Items.Objects[CmbLoan.ItemIndex]);
      Parameters.ParamByName('Mounth').Value := MonthNo;
      // Parameters.ParamByName('AccountsTypeID').Value:=GetcTo(myParams.ParamValues['AccountsTypeID'],ftInteger);
    end;

    if Parameters.FindParam('MounthDecExt') <> nil then
    // if (chklstDecExt.SelCount > 0) or (chklstSalaryId.SelCount > 0) then
    begin
      Parameters.ParamByName('MounthDecExt').Value := MonthNo;
    end;
    if Parameters.FindParam('ArchiveID') <> nil then
    begin
      // Sheikh 2015/05/17
      if ArchiveID = 0 then
        ArchiveID := -1;
      Parameters.ParamByName('ArchiveID').Value := ArchiveID;
    end;

    if (chklstTide.SelCount > 0) then
    begin
      if not chklstTide.Checked[3] then
        if Parameters.FindParam('FormInfoID') <> nil then
          Parameters.ParamByName('FormInfoID').Value :=
            qry_init.fieldbyname('FormInfoID').AsInteger;
      GetYearMounth(MonthNo);
      if Parameters.FindParam('EndDate') <> nil then
        Parameters.ParamByName('EndDate').Value := optP.YearMounth;

      if Parameters.FindParam('TideMonthNo1') <> nil then
        Parameters.ParamByName('TideMonthNo1').Value := MonthNo;
      if Parameters.FindParam('TideMonthNo2') <> nil then
        Parameters.ParamByName('TideMonthNo2').Value := MonthNo;

    end;

    Active := True;
    EnableControls;
  end; // with
  StatusBar1.Panels[1].Text := 'تعداد پرسنل = ' + IntToStr(qryList.RecordCount);
  StatusBar1.Panels[0].Text := 'جمع خالص پرداختي = ' +
    CurrToStrF(CalcSumFileds(qryList.fieldbyname('Price')), ffCurrency, 0);
  PnlError.Visible := False;
  MonthCaptions := 'حقوق ' + ToolBar1.Buttons[MonthNo - 1].Caption + ' ماه';
  if (chklstTide.SelCount > 0) then
    MonthCaptions := 'پرداخت عيدي/سنوات';

  Memo2.Visible := True;

  if rgpSalaryID4PartMakeBankDSK.Visible then
  begin
    StatusBar1.Panels[3].Text := 'جمع قسط 1 = ' +
      CurrToStrF(CalcSumFileds(qryList.fieldbyname('Price1')), ffCurrency, 0);
    StatusBar1.Panels[4].Text := 'جمع قسط 2 = ' +
      CurrToStrF(CalcSumFileds(qryList.fieldbyname('Price2')), ffCurrency, 0);
  end;

  // SumGrid1.Active:=False;
  // SumGrid1.Active:=True;
end;

procedure TMakeBankDSKF.ToolButton12Click(Sender: TObject);
begin
  inherited;
  MonthNo := (Sender as TToolButton).Tag;
  InitCmbArchiveID(CmbArchiveID, MonthNo);
  chklstDecExtClickCheck(chklstSalaryId);
  // ChkTideClick(chklstTide);
  UpdateList;
end;

procedure TMakeBankDSKF.TxtClick(Sender: TObject);
begin
  inherited;
  DiskPasargadResalatTxt(True)
end;

procedure TMakeBankDSKF.XlsClick(Sender: TObject);
begin
  inherited;
  DiskPasargadXls
end;

procedure TMakeBankDSKF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  actLimit.Execute;
  if myParams.FindParam('PersonelNo') = nil then
    close;
end;

procedure TMakeBankDSKF.qryListCalcFields(DataSet: TDataSet);
begin
  inherited;
  DataSet['_radif'] := abs(DataSet.RecNo);
end;

procedure TMakeBankDSKF.rgpSalaryID4PartMakeBankDSKClick(Sender: TObject);
begin
  inherited;
  SetPrice;
  UpdateList;
end;

procedure TMakeBankDSKF.SetPrice;
begin
  case rgpSalaryID4PartMakeBankDSK.ItemIndex of
    1:
      Price := 'Price1';
    2:
      Price := 'Price2';
  else
    Price := 'Price'
  end;
end;

procedure TMakeBankDSKF.DBGrid1KeyPress(Sender: TObject;

  var Key: Char);
begin
  inherited;
  QuickSearch(Key, qryListPersonelNO);
end;

procedure TMakeBankDSKF.FormDestroy(Sender: TObject);
begin
  inherited;
  itm.Free;
  SaveConfig(APPID, 'PayCheckAccountNum', Trim(mskAccountNum.Text));
  SaveConfig(APPID, 'DskMeli_Sarparasty', Trim(mskSarparasty.Text));
  SaveConfig(APPID, 'DskMeli_Shobeh', Trim(mskShobeh.Text));
  SaveConfig(APPID, 'DskMeli_Sarfasl', Trim(mskSarfasl.Text));

  SaveConfig(APPID, 'SA_FileSerial', Trim(msk_SA_FileSerial.Text));
  SaveConfig(APPID, 'SA_Groups', Trim(msk_SA_Groups.Text));
  SaveConfig(APPID, 'SA_Branch', Trim(msk_SA_Branch.Text));

  SaveConfig(APPID, 'ke_CCCC', Trim(msk_ke_CCCC.Text));
  SaveConfig(APPID, 'ke_BBBB', Trim(msk_ke_BBBB.Text));

  SaveConfig(APPID, 'Shahr_Name', Trim(mskShahr_Name.Text));

  SaveConfig(APPID, 'msk_PA_Branch', Trim(msk_PA_Branch.Text));
  SaveConfig(APPID, 'msk_PA_Sarfasl', Trim(msk_PA_Sarfasl.Text));
  SaveConfig(APPID, 'msk_PA_Serial', Trim(msk_PA_Serial.Text));
  SaveConfig(APPID, 'msk_PA_FileCode', Trim(msk_PA_FileCode.Text));

end;

procedure TMakeBankDSKF.ppLblDateDiskGetText(Sender: TObject;

  var Text: String);
begin
  inherited;
  Text := Text + mskDateDisk.Text
end;

procedure TMakeBankDSKF.cmbBankChange(Sender: TObject);
begin
  inherited;
  UpdateList;
end;

procedure TMakeBankDSKF.CreateDiskMeli;
var
  s: String;
  v: Currency;
  b1, b2: Boolean;
  WarnMsg: String;
  errCount: Integer;
  sourceFile, TargetFile: String;
  acc: int64;
begin
  try
    Memo1.Clear;
    Sarparasty := StrToIntdef(Trim(mskSarparasty.Text), 0);
    Shobeh := StrToIntdef(Trim(mskShobeh.Text), 0);
    Sarfasl := StrToIntdef(Trim(mskSarfasl.Text), 0);
    LDate := StringReplace(var_glb_currentdate, '/', '', [rfreplaceall]);
    sourceFile := IncludeTrailingPathDelimiter(ExtractFilePath(ParamStr(0))) +
      'Objects\' + __FILENAME;
    TargetFile := __TheTempDIR + __FILENAME;
    if not CopyFile(pchar(sourceFile), pchar(TargetFile), False) then
      raise Exception.Create('اشكال در كپي ' + sourceFile);
    with Dbf1 do
    begin
      Active := False;
      TableName := TargetFile;
      Active := True;
    end; // with
    with qryList do
    begin
      First;
      // Active:=False;
      // Parameters.ParamByName('pidFrom').Value:=GetcFrom(myParams.ParamValues['c_PersonelNo']);
      // Parameters.ParamByName('pidTo').Value:=GetcTo(myParams.ParamValues['c_PersonelNo']);
      // Parameters.ParamByName('MonthNo').Value:=GetcTo(myParams.ParamValues['MonthNo'],ftInteger);
      /// /      Parameters.ParamByName('acct').Value:=RadioGroup1.ItemIndex;
      // Active:=True;
      if IsEmpty then
        raise Exception.Create('اطلاعاتي براي ذخيره در ديسكت وجود ندارد!');
      v := 0;
      errCount := 0;
      memoError.Clear;
      while not eof do
      begin
        acc := StrToInt64Def(RemoveComma(fieldbyname('AccountNumber')
          .AsString), 0);
        if acc = 0 then
        begin
          Inc(errCount);
          memoError.Lines.Add(IntToStr(errCount) + '- ' +
            GetPersonelName(fieldbyname('PersonelNO').AsString) + #9 +
            CurrToStrF(fieldbyname(Price).AsCurrency, ffCurrency, 0));
        end
        else if qryList.fieldbyname('selected').AsInteger = 1 then
        begin
          AddRecord(acc, fieldbyname(Price).AsCurrency);
          v := v + fieldbyname(Price).AsCurrency;
        end; // else
        Next;
      end; // while
    end; // with
    s := 'تعداد پرسنل = ' + IntToStr(qryList.RecordCount) + #10;
    if errCount > 0 then
      s := s + 'تعداد پرسنل بدون حساب بانكي = ' + IntToStr(errCount) + #10;
    s := s + 'مبلغ چك معادل جمع كل مبالغ واريزي به حسابهاي اشخاص = ' +
      CurrToStrF(v, ffCurrency, 0) + #10;
    PnlError.Visible := errCount > 0;
    Warn(s);
    b1 := True;
    b2 := False;
    while b1 do
    begin
      SetKeyboardLatin;
      s := get_box('ذخيره فايل MBIPYROL.DBF',
        'لطفاً مسير ذخيره‌سازي را وارد كنيد:', 'A:\');
      if not System.SysUtils.DirectoryExists(s) then
      begin
        WarnMsg := 'مسير وارد شده معتبر نيست.';
        b1 := get_response(WarnMsg + ' دوباره سعي مي‌كنيد؟') = mrYes;
      end
      else
      begin
        b1 := False;
        try
          CopyFile(pchar(TargetFile),
            pchar(IncludeTrailingPathDelimiter(s) + __FILENAME), False);
          b2 := True;
        except
          WarnMsg := 'اشكال در كپي فايل.';
          b1 := get_response(WarnMsg + ' دوباره سعي مي‌كنيد؟') = mrYes;
        end; // try
      end; // else
    end; // while
    actPrint.Enabled := True;
    if b2 then
      BigMessage('فايل بانك ملي با موفقيت ايجاد شد.', 1);
  except
    on e: Exception do
    begin
      Warn(e.Message);
    end; // except
  end; // try
end;

procedure TMakeBankDSKF.AddRecord(Account: int64; Amount: Currency);
begin
  Memo1.Lines.Add(IntToStr(Sarparasty) + ',' + IntToStr(Shobeh) + ',' +
    IntToStr(Sarfasl) + ',' + IntToStr(Account) + ',' + CurrToStr(Amount) + ','
    + IntToStr(_CODAMAL) + ',' + LDate);
  with Dbf1 do
  begin
    Insert;
    fieldbyname('SARNO').AsInteger := Sarparasty;
    fieldbyname('BRNO').AsInteger := Shobeh;
    fieldbyname('FASL').AsInteger := Sarfasl;
    fieldbyname('ACCOUNT').AsInteger := Account;
    fieldbyname('Amount').AsCurrency := Amount;
    fieldbyname('CODAMAL').AsInteger := _CODAMAL;
    fieldbyname('LDATE').AsString := LDate;
    Post;
  end; // with
end;

procedure TMakeBankDSKF.AllCheckBoxClick(Sender: TObject);
var
  s: String;
begin
  inherited;
  s := '(Price>0)';
  if ChkAccountNumber.Checked then
    s := s + 'and (AccountNumber>0)';
  if ChkISFunctions.Checked then
    s := s + 'and (ISFunctions>0)';
  if chkSelected.Checked then
    s := s + 'AND (selected = 1)';
  qryList.Filter := s;
  qryList.Filtered := ChkAccountNumber.Checked or ChkISFunctions.Checked or
    chkSelected.Checked;
  // UpdateList;
end;

procedure TMakeBankDSKF.actSampleExellExecute(Sender: TObject);
var
  s, sPersonelName, AccountNumber: String;
  errCount, n_Count: Integer;
  c: Currency;
begin
  inherited;
  qrySampleExell.Open;
  qryList.DisableControls;
  qryList.First;
  errCount := 0;
  n_Count := 0;
  c := 0;
  memoError.Clear;
  Memo1.Clear;
  try
    while not qryList.eof do
    begin
      sPersonelName := GetPersonelName(qryList.fieldbyname('PersonelNO')
        .AsString);
      if length(qryList.fieldbyname('AccountNumber').AsString) < 3 then
      begin
        Inc(errCount);
        memoError.Lines.Add(IntToStr(errCount) + '- ' + sPersonelName + #9 +
          CurrToStrF(qryList.fieldbyname(Price).AsCurrency, ffCurrency, 0));
        qryList.Next;
        Continue;
      end;
      if qryList.fieldbyname('selected').AsInteger <> 1 then
      begin
        qryList.Next;
        Continue;
      end;

      Inc(n_Count);
      AccountNumber := Trim(StringReplace(qryList.fieldbyname('AccountNumber')
        .AsString, '-', '', [rfreplaceall]));
      with qrySampleExell do
      begin
        Insert;
        qrySampleExellشمارهحساب.AsString := AccountNumber;
        qrySampleExellثابت.AsString := ',';
        qrySampleExellمبلغ.AsCurrency := qryList.fieldbyname(Price).AsCurrency;
        qrySampleExellثابت1.AsString := ',';
        qrySampleExellثابت2.AsString := 'C';
        qrySampleExellثابت3.AsString := ',';
        qrySampleExellشرح.AsString := MonthCaptions;

        s := qrySampleExellشمارهحساب.AsString + qrySampleExellثابت.AsString +
          qrySampleExellمبلغ.AsString + qrySampleExellثابت1.AsString +
          qrySampleExellثابت2.AsString + qrySampleExellثابت3.AsString +
          qrySampleExellشرح.AsString;
        qrySampleExellجمعنهایی.AsString := s;
        Post;
      end;

      Memo1.Lines.Add(s);
      c := c + qryList.fieldbyname(Price).AsCurrency;
      qryList.Next;
    end; // while

    DataToExcel(qrySampleExell);

    Memo1.Lines.Text := s;
    StatusBar1.Panels[0].Text := 'تعداد = ' + IntToStr(n_Count);
    StatusBar1.Panels[1].Text := 'جمع پرداختي = ' +
      CurrToStrF(c, ffCurrency, 0);
    Memo1.Lines.Add(StatusBar1.Panels[0].Text);
    Memo1.Lines.Add(StatusBar1.Panels[1].Text);

    PnlError.Visible := errCount > 0;

  finally
    qryList.EnableControls;
  end;

end;

procedure TMakeBankDSKF.actTaavonExellExecute(Sender: TObject);
var
  s, sPersonelName, AccountNumber: String;
  errCount, n_Count: Integer;
  c: Currency;
begin
  inherited;
  qryT_Taavon.Open;
  qryList.DisableControls;
  qryList.First;
  errCount := 0;
  n_Count := 0;
  c := 0;
  memoError.Clear;
  Memo1.Clear;
  try
    while not qryList.eof do
    begin
      sPersonelName := GetPersonelName(qryList.fieldbyname('PersonelNO')
        .AsString);
      if length(qryList.fieldbyname('AccountNumber').AsString) < 3 then
      begin
        Inc(errCount);
        memoError.Lines.Add(IntToStr(errCount) + '- ' + sPersonelName + #9 +
          CurrToStrF(qryList.fieldbyname(Price).AsCurrency, ffCurrency, 0));
        qryList.Next;
        Continue;
      end;
      if qryList.fieldbyname('selected').AsInteger <> 1 then
      begin
        qryList.Next;
        Continue;
      end;

      Inc(n_Count);
      AccountNumber := Trim(StringReplace(qryList.fieldbyname('AccountNumber')
        .AsString, '-', '', [rfreplaceall]));
      with qryT_Taavon do
      begin
        Insert;
        qryT_TaavonBodyColumn1.AsString := 'd';
        qryT_TaavonBodyColumn2.AsString := AccountNumber;
        qryT_TaavonBodyColumn3.AsCurrency := qryList.fieldbyname(Price)
          .AsCurrency;
        qryT_TaavonBodyColumn4.AsString := '0';
        qryT_TaavonBodyColumn5.AsString := medtBankShar14.Text;
        qryT_TaavonBodyColumn6.AsString := qryListFirstName.AsString;
        qryT_TaavonBodyColumn7.AsString := qryListlastName_L1.AsString;
        qryT_TaavonBodyColumn8.AsString := qryListPersonelNO.AsString;
        qryT_TaavonRadif.AsString := IntToStr(n_Count);
        Post;
      end;

      Memo1.Lines.Add(s);
      c := c + qryList.fieldbyname(Price).AsCurrency;
      qryList.Next;
    end; // while

    DataToExcel(qryT_Taavon);

    Memo1.Lines.Text := s;
    StatusBar1.Panels[0].Text := 'تعداد = ' + IntToStr(n_Count);
    StatusBar1.Panels[1].Text := 'جمع پرداختي = ' +
      CurrToStrF(c, ffCurrency, 0);
    Memo1.Lines.Add(StatusBar1.Panels[0].Text);
    Memo1.Lines.Add(StatusBar1.Panels[1].Text);

    PnlError.Visible := errCount > 0;

  finally
    qryList.EnableControls;
  end;

end;

procedure TMakeBankDSKF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryList);
end;

procedure TMakeBankDSKF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryList);
end;

procedure TMakeBankDSKF.ppSysVarPageNumberGetText(Sender: TObject;

  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TMakeBankDSKF.actSendExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TMakeBankDSKF.actSmsExecute(Sender: TObject);
begin
  inherited;
  InfoSMSF.ShowSMS(qryList, 'Mobile')
end;

function TMakeBankDSKF.InsertSpace;
var
  i: Integer;
begin
  Result := '';
  For i := 1 to Count do
  begin
    Result := Result + CharInsert;
  end;
end;

procedure TMakeBankDSKF.actPrintVijehExecute(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(DBGrid1, 0);
end;

procedure TMakeBankDSKF.plblAccountNumGetText(Sender: TObject;

  var Text: string);
begin
  inherited;
  Text := mskAccountNum.Text
end;

procedure TMakeBankDSKF.ppAllReplaseGetText(Sender: TObject;

  var Text: String);
begin
  inherited;
  Text := StringReplace(Text, 'ممببللغغ',
    CurrToStrF(CalcSumFileds(qryList.fieldbyname(Price)), ffCurrency, 0), []);
  Text := StringReplace(Text, 'نام ماه', ToolBar1.Buttons[MonthNo - 1].Caption +
    ' ماه ', [rfreplaceall])
end;

procedure TMakeBankDSKF.CmbArchiveIDChange(Sender: TObject);
begin
  inherited;
  UpdateList;
end;

procedure TMakeBankDSKF.ppDBCalcNum2AlphaGetText(Sender: TObject;

  var Text: String);
begin
  inherited;
  Text := num2alphabet(StrToInt64(VarToStr(ppDBCalcNum2Alpha.Value))) + ' ريال'
end;

procedure TMakeBankDSKF.ChkInsuranceClick(Sender: TObject);
begin
  inherited;
  chklstDecExtClickCheck(chklstSalaryId);
end;

procedure TMakeBankDSKF.chklstDecExtClickCheck(Sender: TObject);
var
  i: Integer;
  strWag, strDec: string;
begin
  inherited;
  strWag := '-1';
  strDec := '-1';

  if (chklstSalaryId.SelCount > 0) or (chklstDecExt.SelCount > 0) then
  begin
    With qryList do
    begin
      for i := 0 to chklstSalaryId.Count - 1 do
        if chklstSalaryId.Checked[i] then
        begin
          itm := TlistItem(chklstSalaryId.Items.Objects[i]);
          strWag := strWag + ',' + IntToStr(itm.FormInfoID)
        end;

      With DMF.qryTmpTmpp do
      begin
        Active := False;
        SQL.Text :=
          'if exists (select * from dbo.sysobjects where id = object_id(N''[Pay].[ExtraSalaryDisk]'') and xtype in (N''FN'',N''IF'',N''TF''))';
        SQL.Add('drop function Pay.ExtraSalaryDisk');
        ExecSQL;
        SQL.Text :=
          'CREATE FUNCTION Pay.ExtraSalaryDisk ( @Month int=6 ,@ArchiveID int=0 ,@LabelIDFrom  int=0,@LabelIDTo  int=0 )';
        SQL.Add('RETURNS table AS');
        SQL.Add('Return (');

        SQL.Add('SELECT ProjectID,Pay.FixedCalculated.PersonelNO,SUM(FixedCalculated.Price) AS Price');
        SQL.Add(',FormsInfo_OfficeCode.InfoID AS');
        SQL.Add('OfficeCode');
        SQL.Add('FROM Pay.FixedCalculated INNER JOIN');
        SQL.Add('Pay.FormsInfo ON Pay.FixedCalculated.SalaryID = Pay.FormsInfo.FormInfoID LEFT OUTER JOIN');
        SQL.Add('Pay.FormsInfo FormsInfo_OfficeCode ON Pay.FixedCalculated.OfficeCode = FormsInfo_OfficeCode.FormInfoID');
        SQL.Add('WHERE (FixedCalculated.Mounth = @Month)');
        SQL.Add('AND (FixedCalculated.YearID = ' + APPBank.Year.ToString + ')');
        SQL.Add('AND (FixedCalculated.Years = ' + optP.Year + ')');

        SQL.Add('AND (FormsInfo.FormInfoID in (' + strWag +
          ') ) AND (FixedCalculated.ArchiveID = @ArchiveID)');
        SQL.Add('AND (FixedCalculated.ShowListKind = 1)');
        SQL.Add('And (FixedCalculated.LabelID between @LabelIDFrom  and @LabelIDTo   )');

        SQL.Add('GROUP BY ProjectID,Pay.FixedCalculated.PersonelNO,FormsInfo_OfficeCode.InfoID');

        // SQL.Add('SELECT FixedCalculated.PersonelNO, ');
        // SQL.Add('SUM(CASE WHEN (FixedCalculated.ShowListKind = 1) AND (FixedCalculated.SalaryID IN ('
        // + strWag + ')) THEN FixedCalculated.Price ELSE 0 END)AS Price, ');
        // SQL.Add('SUM(CASE WHEN (FormsInfo.FormType = 21)');
        // SQL.Add('AND (FixedCalculated.BedBes = 2)');
        // SQL.Add('THEN FixedCalculated.Price ELSE 0 END) AS TaxValue, SUM(CASE WHEN (FormsInfo.FormType IN (11, 54,');
        // SQL.Add('61)) AND (FixedCalculated.BedBes = 2)');
        // SQL.Add('THEN FixedCalculated.Price ELSE 0 END) AS BimeValue, SUM(CASE WHEN (FixedCalculated.BedBes = 2)');
        // SQL.Add('THEN FixedCalculated.Price ELSE 0 END)');
        // SQL.Add('AS TotalDec');
        // SQL.Add('FROM Pay.FixedCalculated INNER JOIN');
        // SQL.Add('Pay.FormsInfo ON FixedCalculated.SalaryID = FormsInfo.FormInfoID');
        // SQL.Add('WHERE (FixedCalculated.Mounth = @Month) AND (FixedCalculated.ArchiveID = @ArchiveID)');
        // SQL.Add('GROUP BY FixedCalculated.PersonelNO');

        SQL.Add(')');

        ExecSQL;
        Active := False;
      end;

      Active := False; // abs
      SQL.Text := 'SELECT Fitful.FitfulID AS selected, PersonelNO,NationalID ';
      SQL.Add(',FirstName,lastName_L1, name_L1, name_L2,abs(SUM(Price)) AS Price');
      SQL.Add(',abs(SUM(Price)) AS Price1,abs(SUM(Price)) AS Price2');

      SQL.Add(', BankCode, AccountNumber,SHEBA, BankName_L1,');

      SQL.Add('BankName_L2, BankType_L1, BankType_L2,');
      SQL.Add('AccBankType, PersonelState, ISFunctions, BranchInfo, BankCodeInfoID, FormsInfo_AccountsType_PaName,');
      SQL.Add('FormsInfoBankCode_PaID,');
      SQL.Add('FormsInfo_BranchInfo_PaID ,Mobile, fatherName_L1,'''' AS ProjectName');
      SQL.Add('FROM (');

      SQL.Add('SELECT  ExtraSalaryDisk.PersonelNO,NationalID, PersonelInfo.name_L1 + '' '' +');
      SQL.Add('PersonelInfo.lastName_L1 AS name_L1,');
      SQL.Add('PersonelInfo.name_L2 + '' '' + PersonelInfo.lastName_L2 AS name_L2, ');

      SQL.Add('PersonelInfo.name_L1 AS FirstName , PersonelInfo.lastName_L1 , ');

      // if chkTax.Checked then
      // SQL.Add('ExtraSalaryDisk.Price - (ExtraSalaryDisk.TaxValue ')
      // else
      SQL.Add('ExtraSalaryDisk.Price - (0 '); // ExtraSalaryDisk.taxvalue
      // if chkTax.Checked then
      // SQL.Add  ('+ ROUND(ExtraSalaryDisk.Price * InsuranceCONSTinfo.Employeeshare / 100, 2)');
      SQL.Add(' )AS Price ');
      SQL.Add(',ExtraSalaryDisk.Price AS Price1,ExtraSalaryDisk.Price AS Price2');

      SQL.Add(',FormsInfo_BankCode.InfoID AS BankCode,');
      SQL.Add('ISNULL(PersonelAccounts.AccountNumber_Pa, PersonelInfo.AccountNumber) AS AccountNumber,PersonelAccounts.SHEBA, ISNULL');
      SQL.Add('(FormsInfoBankCode_Pa.InfoName_L1,');
      SQL.Add('FormsInfo_BankCode.InfoName_L1) AS BankName_L1, FormsInfo_BankCode.InfoName_L2 AS BankName_L2,');
      SQL.Add('ISNULL(FormsInfo_AccBankType_Pa.InfoName_L1,');
      SQL.Add('FormsInfoAccBankType.InfoName_L1) AS BankType_L1, FormsInfoAccBankType.InfoName_L2 AS BankType_L2,');
      SQL.Add('FormsInfoAccBankType.InfoID AS AccBankType,');
      SQL.Add('FormsInfo_PersonelState.InfoID AS PersonelState, 1 AS ISFunctions, FormsInfo_BranchInfo.InfoName_L1 AS');
      SQL.Add('BranchInfo');
      SQL.Add(',FormsInfo_BankCode.InfoID AS BankCodeInfoID,');
      SQL.Add('FormsInfo_AccountsType_Pa.InfoName_L1 AS FormsInfo_AccountsType_PaName, FormsInfoBankCode_Pa.InfoID');
      SQL.Add('AS FormsInfoBankCode_PaID,');
      SQL.Add('FormsInfo_BranchInfo_Pa.InfoID AS FormsInfo_BranchInfo_PaID,PersonelInfo.Mobile, PersonelInfo.fatherName_L1,'''' AS ProjectName');
      SQL.Add('FROM Pay.FormsInfo FormsInfo_PersonelState RIGHT OUTER JOIN');
      SQL.Add('Pay.PersonelInfo ON FormsInfo_PersonelState.FormInfoID = PersonelInfo.PersonelState LEFT OUTER');
      SQL.Add('JOIN Pay.FormsInfo FormsInfo_BankCode ON PersonelInfo.BankCode = FormsInfo_BankCode.FormInfoID LEFT');
      SQL.Add('OUTER JOIN Pay.FormsInfo FormsInfoAccBankType ON PersonelInfo.AccBankType =');
      SQL.Add('FormsInfoAccBankType.FormInfoID LEFT OUTER JOIN');
      SQL.Add('Pay.InsuranceCONSTinfo ON PersonelInfo.insuranceID = InsuranceCONSTinfo.insuranceNo LEFT OUTER JOIN ');
      // RIGHT OUTER JOIN
      SQL.Add(' Pay.ExtraSalaryDisk(' + IntToStr(MonthNo) + ',' +
        IntToStr(Integer(CmbArchiveID.Items.Objects[CmbArchiveID.ItemIndex])) +
        ',' + GetcFrom(myParams.ParamValues['LabelID'], ftString) + ',' +
        GetcTo(myParams.ParamValues['LabelID'], ftString) +
        ')ExtraSalaryDisk ON PersonelInfo.PersonelNo = ExtraSalaryDisk.PersonelNO');
      SQL.Add('LEFT OUTER JOIN Pay.FormsInfo AS FormsInfo_BranchInfo ON PersonelInfo.BranchInfo = FormsInfo_BranchInfo.FormInfoID');
      SQL.Add('LEFT OUTER JOIN Pay.PersonelAccounts ON PersonelInfo.PersonelNo = PersonelAccounts.PersonelNo');
      SQL.Add('LEFT OUTER JOIN Pay.FormsInfo AS FormsInfo_AccBankType_Pa ON PersonelAccounts.AccBankType_Pa = FormsInfo_AccBankType_Pa.FormInfoID');
      SQL.Add('LEFT OUTER JOIN Pay.FormsInfo AS FormsInfo_AccountsType_Pa ON PersonelAccounts.AccountsType = FormsInfo_AccountsType_Pa.FormInfoID');
      SQL.Add('LEFT OUTER JOIN Pay.FormsInfo AS FormsInfo_BranchInfo_Pa ON PersonelAccounts.BranchInfo_Pa = FormsInfo_BranchInfo_Pa.FormInfoID');
      SQL.Add('LEFT OUTER JOIN Pay.FormsInfo AS FormsInfoBankCode_Pa ON PersonelAccounts.BankCode_Pa = FormsInfoBankCode_Pa.FormInfoID');

      // SQL.Add('LEFT OUTER JOIN Pay.FormsInfo AS FormsInfoProject ON ExtraSalaryDisk.ProjectID = FormsInfoProject.FormInfoID');

      SQL.Add('WHERE (ExtraSalaryDisk.PersonelNO BETWEEN ' +
        GetcFrom(myParams.ParamValues['PersonelNo'], ftString) + ' AND ' +
        GetcTo(myParams.ParamValues['PersonelNo'], ftString) + ') ');

      SQL.Add('AND(ISNULL(ExtraSalaryDisk.ProjectID,0) BETWEEN :ProjectIDFrom AND :ProjectIDTo ) ');

      SQL.Add('AND ( ISNULL(FormsInfo_AccBankType_Pa.InfoID, FormsInfoAccBankType.InfoID)  BETWEEN '
        + GetcFrom(myParams.ParamValues['AccBankType'], ftString) + ' AND ' +
        GetcTo(myParams.ParamValues['AccBankType'], ftString) +
        ') AND ( ISNULL(PersonelAccounts.BankCode_Pa ,PersonelInfo.BankCode)  = :BankCode2 ) AND');
      // IntToStr(integer(cmbBank.Items.Objects[cmbBank.ItemIndex]))+') AND');
      SQL.Add('(FormsInfo_PersonelState.InfoID BETWEEN ' +
        GetcFrom(myParams.ParamValues['PersonelState'], ftString) + ' AND ' +
        GetcTo(myParams.ParamValues['PersonelState'], ftString) + ')');
      SQL.Add('AND ( FormsInfo_AccountsType_Pa.InfoID = ' +
        IntToStr(GetcTo(myParams.ParamValues['AccountsTypeID'], ftInteger)) +
        ' or FormsInfo_AccountsType_Pa.InfoID is null)');
      SQL.Add('AND (ISNULL(FormsInfo_BranchInfo_Pa.InfoID, FormsInfo_BranchInfo.InfoID) BETWEEN '
        + +GetcFrom(myParams.ParamValues['BranchInfo'], ftString) + ' AND ' +
        +GetcTo(myParams.ParamValues['BranchInfo'], ftString) +
        ' or ISNULL(FormsInfo_BranchInfo_Pa.InfoID, FormsInfo_BranchInfo.InfoID) is null)');
      SQL.Add('And PersonelInfo.PersonelNo in (SELECT Interdicts.PersonelNo FROM Pay.Interdicts LEFT OUTER JOIN');
      SQL.Add('Pay.FormsInfo ON Pay.Interdicts.OfficeCode = FormsInfo.FormInfoID');
      SQL.Add('WHERE (Interdicts.State   < 50 ) AND (Interdicts.InterdicType = 0)');
      SQL.Add('AND (Interdicts.EmployTypeID in (' +
        GetcFrom(myParams.ParamValues['EmployTypeID'], ftString) + ') ) ');
      SQL.Add('AND (Interdicts.GroupID in (0,' + GetGroupID + ') ) ');
      SQL.Add('AND (Interdicts.OfficeCode in( ' +
        GetcFrom(myParams.ParamValues['OfficeCode'], ftString) + ' ) ) )');

    end; // With

    strWag := '0';
    for i := 0 to chklstDecExt.Count - 1 do
      if chklstDecExt.Checked[i] then
      begin
        itm := TlistItem(chklstDecExt.Items.Objects[i]);
        if itm.SalaryKind = 12 then
          strDec := strDec + ',' + IntToStr(itm.FormInfoID)
        else // itm.SalaryKind  6  8  13
          strWag := strWag + ',' + IntToStr(itm.FormInfoID)
      end;

    With qryList do
    begin
      SQL.Add('UNION ALL');
      SQL.Add('SELECT  PersonelDecExt.PersonelNo,NationalID, PersonelInfo.name_L1 + '' '' +');
      SQL.Add('PersonelInfo.lastName_L1 AS name_L1,');
      SQL.Add('PersonelInfo.name_L2 + '' '' + PersonelInfo.lastName_L2 AS name_L2,');

      SQL.Add('PersonelInfo.name_L1 AS FirstName , PersonelInfo.lastName_L1 , ');

      SQL.Add('sum( CASE WHEN PersonelDecExt.FormInfoID in (' + strDec +
        ') THEN - ROUND(PersonelDecExt.EmployeeAmount, 0) ELSE');
      SQL.Add('ROUND(PersonelDecExt.EmployeeAmount, 0)');
      SQL.Add('END) AS Price');
      SQL.Add(',CAST (0 AS Money) AS Price1,CAST (0 AS Money) AS Price2');
      SQL.Add(', FormsInfo.InfoID AS BankCode ,  ISNULL');
      SQL.Add('(PersonelAccounts.AccountNumber_Pa, PersonelInfo.AccountNumber)');
      SQL.Add('AS AccountNumber,PersonelAccounts.SHEBA, ISNULL(FormsInfoBankCode_Pa.InfoName_L1, FormsInfo.InfoName_L1) AS BankName_L1,');
      SQL.Add('FormsInfo.InfoName_L2 AS BankName_L2,');
      SQL.Add('ISNULL(FormsInfo_AccBankType_Pa.InfoName_L1, FormsInfo_AccBankType.InfoName_L1) AS BankType_L1,');
      SQL.Add('FormsInfo_AccBankType.InfoName_L2 AS BankType_L2,');
      SQL.Add('FormsInfo_AccBankType.InfoID AS AccBankType, FormsInfo_2PersonelState.InfoID AS PersonelState, 1 AS');
      SQL.Add('ISFunctions,');
      SQL.Add('ISNULL(FormsInfo_BranchInfo_Pa.InfoName_L1, FormsInfo_BranchInfo.InfoName_L1) AS BranchInfo,');
      SQL.Add('FormsInfo.InfoID AS BankCodeInfoID,');
      SQL.Add('FormsInfo_AccountsType_Pa.InfoName_L1 AS FormsInfo_AccountsType_PaName, FormsInfoBankCode_Pa.InfoID');
      SQL.Add('AS FormsInfoBankCode_PaID,');
      SQL.Add('FormsInfo_BranchInfo_Pa.InfoID AS FormsInfo_BranchInfo_PaID,PersonelInfo.Mobile, PersonelInfo.fatherName_L1,'''' AS ProjectName');
      SQL.Add('FROM Pay.PersonelDecExt INNER JOIN');
      SQL.Add('Pay.PersonelInfo ON PersonelDecExt.PersonelNo = PersonelInfo.PersonelNo LEFT OUTER JOIN');
      SQL.Add('Pay.PersonelAccounts ON PersonelInfo.PersonelNo = PersonelAccounts.PersonelNo LEFT OUTER JOIN');
      SQL.Add('Pay.FormsInfo AS FormsInfo_AccBankType_Pa ON PersonelAccounts.AccBankType_Pa =');
      SQL.Add('FormsInfo_AccBankType_Pa.FormInfoID LEFT OUTER JOIN');
      SQL.Add('Pay.FormsInfo AS FormsInfo_AccountsType_Pa ON PersonelAccounts.AccountsType =');
      SQL.Add('FormsInfo_AccountsType_Pa.FormInfoID LEFT OUTER JOIN');
      SQL.Add('Pay.FormsInfo AS FormsInfo_BranchInfo_Pa ON PersonelAccounts.BranchInfo_Pa =');
      SQL.Add('FormsInfo_BranchInfo_Pa.FormInfoID LEFT OUTER JOIN');
      SQL.Add('Pay.FormsInfo AS FormsInfoBankCode_Pa ON PersonelAccounts.BankCode_Pa = FormsInfoBankCode_Pa.FormInfoID');
      SQL.Add('LEFT OUTER JOIN');
      SQL.Add('Pay.FormsInfo AS FormsInfo_BranchInfo ON PersonelInfo.BranchInfo = FormsInfo_BranchInfo.FormInfoID LEFT');
      SQL.Add('OUTER JOIN');
      SQL.Add('Pay.FormsInfo AS FormsInfo_AccBankType ON PersonelInfo.AccBankType = FormsInfo_AccBankType.FormInfoID');
      SQL.Add('LEFT OUTER JOIN');
      SQL.Add('Pay.FormsInfo ON PersonelInfo.BankCode = FormsInfo.FormInfoID LEFT OUTER JOIN');
      SQL.Add('Pay.FormsInfo AS FormsInfo_2PersonelState ON PersonelInfo.PersonelState = FormsInfo_2PersonelState.FormInfoID');

      SQL.Add('WHERE ( FormsInfo_AccountsType_Pa.InfoID = :AccountsTypeID or FormsInfo_AccountsType_Pa.InfoID is null)');
      SQL.Add('AND PersonelDecExt.FormInfoID in (' + strWag + ',' +
        strDec + ') ');
      SQL.Add('AND (PersonelDecExt.FirstMounth <= :Mounth and PersonelDecExt.EndMounth >= :MounthDecExt)');
      SQL.Add('AND (PersonelDecExt.YearID = ' + APPBank.Year.ToString + ')');

      SQL.Add('AND ( ISNULL(PersonelAccounts.BankCode_Pa ,PersonelInfo.BankCode) = :BankCode )');
      SQL.Add('AND ( ISNULL(FormsInfo_AccBankType_Pa.InfoID, FormsInfo_AccBankType.InfoID) BETWEEN :AccBankTypeFrom AND :AccBankTypeTo)');
      SQL.Add('AND (ISNULL(FormsInfo_BranchInfo_Pa.InfoID, FormsInfo_BranchInfo.InfoID) BETWEEN :BranchInfoFrom  AND :BranchInfoTo  or ISNULL(FormsInfo_BranchInfo_Pa.InfoID, FormsInfo_BranchInfo.InfoID) is null)');
      SQL.Add('AND (FormsInfo_2PersonelState.InfoID BETWEEN :PersonelStateFrom AND :PersonelStateTo)');
      SQL.Add('AND (PersonelDecExt.PersonelNO BETWEEN :PersonelFrom AND :PersonelTo )');
      SQL.Add('And PersonelDecExt.PersonelNO in (SELECT Interdicts.PersonelNo FROM Pay.Interdicts LEFT OUTER JOIN');
      SQL.Add('Pay.FormsInfo ON Pay.Interdicts.OfficeCode = FormsInfo.FormInfoID');
      SQL.Add('WHERE (Interdicts.State < 50 ) AND (Interdicts.InterdicType = 0)');

      // SQL.Add('AND (Interdicts.EmployTypeID between :EmployTypeID2From and :EmployTypeID2To) ');

      SQL.Add('AND (Interdicts.EmployTypeID in (' +
        GetcFrom(myParams.ParamValues['EmployTypeID'], ftString) + ') ) ');
      SQL.Add('AND (Interdicts.GroupID in (0,' + GetGroupID + ') ) ');
      SQL.Add('AND (Interdicts.OfficeCode in( ' +
        GetcFrom(myParams.ParamValues['OfficeCode'], ftString) + ' ) ) )');

      SQL.Add('GROUP BY PersonelDecExt.PersonelNo,NationalID, PersonelInfo.name_L1 , PersonelInfo.lastName_L1, PersonelInfo.name_L2 + '' '' +');
      SQL.Add('PersonelInfo.lastName_L2,');
      SQL.Add('PersonelInfo.BankCode, FormsInfo.InfoID, ISNULL(PersonelAccounts.AccountNumber_Pa,');
      SQL.Add('PersonelInfo.AccountNumber),PersonelAccounts.SHEBA,');
      SQL.Add('ISNULL(FormsInfoBankCode_Pa.InfoName_L1, FormsInfo.InfoName_L1), FormsInfo.InfoName_L2, ISNULL');
      SQL.Add('(FormsInfo_AccBankType_Pa.InfoName_L1,');
      SQL.Add('FormsInfo_AccBankType.InfoName_L1), FormsInfo_AccBankType.InfoName_L2, FormsInfo_AccBankType.InfoID,');
      SQL.Add('FormsInfo_2PersonelState.InfoID,');
      SQL.Add('ISNULL(FormsInfo_BranchInfo_Pa.InfoName_L1, FormsInfo_BranchInfo.InfoName_L1),');
      SQL.Add('FormsInfo_AccountsType_Pa.InfoName_L1, FormsInfoBankCode_Pa.InfoID,');
      SQL.Add('FormsInfo_BranchInfo_Pa.InfoID, PersonelInfo.Mobile, PersonelInfo.fatherName_L1');

      SQL.Add(') AS ABCD');
      SQL.Add('CROSS JOIN dbo.Fitful');

      SQL.Add('GROUP BY  PersonelNO,NationalID ,FirstName,lastName_L1 , name_L1, name_L2, BankCode, AccountNumber,SHEBA, BankName_L1, BankName_L2,');
      SQL.Add('BankType_L1, BankType_L2, AccBankType, PersonelState,');
      SQL.Add('ISFunctions, BranchInfo, BankCodeInfoID, FormsInfo_AccountsType_PaName, FormsInfoBankCode_PaID,');
      SQL.Add('FormsInfo_BranchInfo_PaID,Mobile, fatherName_L1');
      SQL.Add(', Fitful.FitfulID');

    end; // With
    CmbLoan.ItemIndex := 0;
    UpdateList;
  end
  else
  begin
    // qryList.SQL.Text := OrginalSQL;
    UpdateList;
  end;

end;

procedure TMakeBankDSKF.chklstPonyClickCheck(Sender: TObject);
var
  strWag: string;
  i: Integer;
begin
  inherited;
  if (chklstPony.SelCount > 0) then
  begin
    for i := 0 to chklstPony.Count - 1 do
      if chklstPony.Checked[i] then
      begin
        itm2 := TlistFldItem(chklstPony.Items.Objects[i]);
        strWag := strWag + itm2.FidNmae;
      end;
    qryList.Active := False;
    if strWag <> EmptyStr then
      With qryList do
      begin
        SQL.Text :=
          'SELECT selected, PersonelNo,NationalID ,FirstName,lastName_L1, name_L1, name_L2, Price';
        SQL.Add(',CAST (0 AS Money) AS Price1,CAST (0 AS Money) AS Price2');
        SQL.Add(', BankCode, InfoID, AccountNumber,SHEBA, BankName_L1,BankName_L2, BankType_L1, BankType_L2, AccBankType,');
        SQL.Add('PersonelState, PonyDate, BranchInfo, Mobile, fatherName_L1,'''' AS ProjectName, 1 AS ISFunctions');
        SQL.Add('FROM (SELECT Fitful.FitfulID AS selected, Pony.PersonelNo,NationalID, ');
        SQL.Add('PersonelInfo.name_L1 + '' '' + PersonelInfo.lastName_L1 AS name_L1,');
        SQL.Add('PersonelInfo.name_L2 + '' '' + PersonelInfo.lastName_L2 AS name_L2, ');

        SQL.Add('PersonelInfo.name_L1 AS FirstName , PersonelInfo.lastName_L1 , ');

        SQL.Add('0');
        SQL.Add(strWag);
        // SQL.Add('ISNULL(Pony.CurrentMonthsPay, 0) + ISNULL(Pony.UselessLeavePay, 0)');
        // SQL.Add('+ ISNULL(Pony.AnnuityOldPay, 0) + ISNULL(Pony.AnnuityPay, 0) + ISNULL(Pony.TidePay, 0)');
        // SQL.Add('+ ISNULL(Pony.DebitCredit, 0)');
        // SQL.Add('- ISNULL(Pony.RemainLoan, 0) AS Price');
        SQL.Add('AS Price');
        SQL.Add(', PersonelInfo.BankCode, FormsInfo.InfoID, ISNULL(PersonelAccounts.AccountNumber_Pa,');
        SQL.Add('PersonelInfo.AccountNumber) AS AccountNumber,PersonelAccounts.SHEBA, ISNULL');
        SQL.Add('(FormsInfoBankCode_Pa.InfoName_L1, FormsInfo.InfoName_L1) AS BankName_L1,');
        SQL.Add('FormsInfo.InfoName_L2 AS BankName_L2, ISNULL');
        SQL.Add('(FormsInfo_AccBankType_Pa.InfoName_L1, FormsInfo_AccBankType.InfoName_L1)');
        SQL.Add('AS BankType_L1, FormsInfo_AccBankType.InfoName_L2 AS BankType_L2,');
        SQL.Add('FormsInfo_AccBankType.InfoID AS AccBankType,');
        SQL.Add('FormsInfo_2PersonelState.InfoID AS PersonelState, Pony.PonyDate,');
        SQL.Add('FormsInfo_BranchInfo.InfoName_L1 AS BranchInfo, PersonelInfo.Mobile,');
        SQL.Add('PersonelInfo.fatherName_L1,'''' AS ProjectName');
        SQL.Add('FROM Pay.Pony INNER JOIN');
        SQL.Add('Pay.PersonelInfo ON Pony.PersonelNo = PersonelInfo.PersonelNo LEFT OUTER JOIN');
        SQL.Add('Pay.FormsInfo AS FormsInfo_2PersonelState ON PersonelInfo.PersonelState =');
        SQL.Add('FormsInfo_2PersonelState.FormInfoID LEFT OUTER JOIN');
        SQL.Add('Pay.FormsInfo ON PersonelInfo.BankCode = FormsInfo.FormInfoID LEFT OUTER JOIN');
        SQL.Add('Pay.FormsInfo AS FormsInfo_AccBankType ON PersonelInfo.AccBankType =');
        SQL.Add('FormsInfo_AccBankType.FormInfoID LEFT OUTER JOIN');
        SQL.Add('Pay.FormsInfo AS FormsInfo_BranchInfo ON PersonelInfo.BranchInfo =');
        SQL.Add('FormsInfo_BranchInfo.FormInfoID LEFT OUTER JOIN');
        SQL.Add('Pay.PersonelAccounts ON PersonelInfo.PersonelNo = PersonelAccounts.PersonelNo LEFT OUTER JOIN');
        SQL.Add('Pay.FormsInfo AS FormsInfo_AccBankType_Pa ON PersonelAccounts.AccBankType_Pa =');
        SQL.Add('FormsInfo_AccBankType_Pa.FormInfoID LEFT OUTER JOIN');
        SQL.Add('Pay.FormsInfo AS FormsInfo_AccountsType_Pa ON PersonelAccounts.AccountsType =');
        SQL.Add('FormsInfo_AccountsType_Pa.FormInfoID LEFT OUTER JOIN');
        SQL.Add('Pay.FormsInfo AS FormsInfo_BranchInfo_Pa ON PersonelAccounts.BranchInfo_Pa =');
        SQL.Add('FormsInfo_BranchInfo_Pa.FormInfoID LEFT OUTER JOIN');
        SQL.Add('Pay.FormsInfo AS FormsInfoBankCode_Pa ON PersonelAccounts.BankCode_Pa =');
        SQL.Add('FormsInfoBankCode_Pa.FormInfoID CROSS JOIN');
        SQL.Add('dbo.Fitful');
        SQL.Add('WHERE (FormsInfo_AccountsType_Pa.InfoID = :AccountsTypeID OR');
        SQL.Add('FormsInfo_AccountsType_Pa.InfoID IS NULL) AND (ISNULL');
        SQL.Add('(FormsInfo_BranchInfo_Pa.InfoID, FormsInfo_BranchInfo.InfoID) BETWEEN');
        SQL.Add(':BranchInfoFrom AND :BranchInfoTo OR');
        SQL.Add('ISNULL(FormsInfo_BranchInfo_Pa.InfoID, FormsInfo_BranchInfo.InfoID) IS NULL) AND');
        SQL.Add('(CAST(RIGHT(LEFT(Pony.PonyDate, 7), 2) AS int) = :Mounth) AND');
        SQL.Add('(ISNULL(PersonelAccounts.BankCode_Pa, PersonelInfo.BankCode) = :BankCode) AND');
        SQL.Add('(ISNULL(FormsInfo_AccBankType_Pa.InfoID,');
        SQL.Add('FormsInfo_AccBankType.InfoID) BETWEEN :AccBankTypeFrom AND :AccBankTypeTo)');
        SQL.Add('AND (FormsInfo_2PersonelState.InfoID BETWEEN :PersonelStateFrom AND :PersonelStateTo) ');
        SQL.Add('AND (Pony.PersonelNo BETWEEN :PersonelFrom AND :PersonelTo) ');
        SQL.Add('AND(Pony.PersonelNo IN');
        SQL.Add('(SELECT Interdicts.PersonelNo');
        SQL.Add('FROM Pay.Interdicts LEFT OUTER JOIN');
        SQL.Add('Pay.FormsInfo AS FormsInfo_1 ON Pay.Interdicts.OfficeCode =');
        SQL.Add('FormsInfo_1.FormInfoID');
        SQL.Add('WHERE (Interdicts.State < 50) AND (Interdicts.InterdicType = 0) ');
        // SQL.Add('(Interdicts.EmployTypeID between :EmployTypeIDFrom and :EmployTypeIDTo)AND ');

        SQL.Add('AND (Interdicts.EmployTypeID in (' +
          GetcFrom(myParams.ParamValues['EmployTypeID'], ftString) + ') ) ');
        SQL.Add('AND (Interdicts.GroupID in (0,' + GetGroupID + ') ) ');

        SQL.Add('AND (Interdicts.OfficeCode IN ( ' +
          GetcFrom(myParams.ParamValues['OfficeCode'], ftString) +
          ' ))))) AS a');
        SQL.Add('WHERE (Price > 0)');
        SQL.Add('ORDER BY PersonelNo');
        // SQL.SaveToFile('c:\sql.txt');
        // RunDoc('c:\sql.txt');
      end; // With
    chklstDecExt.ClearSelection;
    chklstSalaryId.ClearSelection;
    chklstTide.ClearSelection;
    UpdateList;
  end
  else
  begin
    chklstPony.ClearSelection;
    qryList.SQL.Text := OrginalSQL;
    UpdateList;
  end;
end;

procedure TMakeBankDSKF.chkProjectClick(Sender: TObject);
begin
  inherited;
  UpdateList
end;

procedure TMakeBankDSKF.ChkTideClick(Sender: TObject);
var
  PriceSQL: string;
begin
  inherited;
  {
    0- عيدي
    1-سنوات
    2- ماليات و علي الحساب عيدي
    3-پاداش مستقل از حقوق
    4-علي الحساب عيدي
    5-علي الحساب سنوات
    6- خالص عيدي
    7-مرخصی سالیانه
  }



  if not chkTide.Checked and ((chklstTide.Checked[0]) or (chklstTide.Checked[1]) or
    (chklstTide.Checked[3]) or (chklstTide.Checked[4]) or (chklstTide.Checked[5]
    ) or (chklstTide.Checked[6]) or (chklstTide.Checked[7])) then
  begin

    if (chklstTide.Checked[3]) or (chklstTide.Checked[4]) or
      (chklstTide.Checked[5]) then
      With qryList do
      begin
        Active := False;
        SQL.Text := 'SELECT *,';
        SQL.Add('(SELECT COUNT(*) AS Expr1');
        SQL.Add('FROM Pay.Functions');
        SQL.Add('WHERE (Mounth = a.Mounth) AND (YearID = ' +
          APPBank.Year.ToString +
          ') AND(PersonelNo = a.PersonelNo)) AS ISFunctions');
        SQL.Add('FROM (SELECT Fitful.FitfulID AS selected, PersonelDecExt.PersonelNo,NationalID, PersonelInfo.name_L1 + '' '' +');
        SQL.Add('PersonelInfo.lastName_L1 AS name_L1,');

        SQL.Add('PersonelInfo.name_L1 AS FirstName , PersonelInfo.lastName_L1 , ');

        SQL.Add('PersonelInfo.name_L2 + '' '' + PersonelInfo.lastName_L2 AS name_L2, SUM');
        if (chklstTide.Checked[3]) then
          SQL.Add('(PersonelDecExt.EmployeeAmount - PersonelDecExt.PaymentLoan) AS Price')
        else
          SQL.Add('(PersonelDecExt.EmployeeAmount) AS Price');

        SQL.Add(',CAST (0 AS Money) AS Price1,CAST (0 AS Money) AS Price2');

        SQL.Add(',PersonelInfo.BankCode, FormsInfo.InfoID, ISNULL(PersonelAccounts.AccountNumber_Pa,');
        SQL.Add('PersonelInfo.AccountNumber) AS AccountNumber,PersonelAccounts.SHEBA,');
        SQL.Add('ISNULL(FormsInfoBankCode_Pa.InfoName_L1, FormsInfo.InfoName_L1) AS BankName_L1,');
        SQL.Add('FormsInfo.InfoName_L2 AS BankName_L2,');
        SQL.Add('ISNULL(FormsInfo_AccBankType_Pa.InfoName_L1, FormsInfo_AccBankType.InfoName_L1)');
        SQL.Add('AS BankType_L1,');
        SQL.Add('FormsInfo_AccBankType.InfoName_L2 AS BankType_L2, FormsInfo_AccBankType.InfoID AS');
        SQL.Add('AccBankType,');
        SQL.Add('FormsInfo_2PersonelState.InfoID AS PersonelState, PersonelDecExt.FirstMounth AS Mounth,');
        SQL.Add('FormsInfo_BranchInfo.InfoName_L1 AS BranchInfo,');
        SQL.Add('PersonelInfo.Mobile, PersonelInfo.fatherName_L1,'''' AS ProjectName');
        SQL.Add('FROM Pay.PersonelDecExt INNER JOIN');
        SQL.Add('Pay.PersonelInfo ON PersonelDecExt.PersonelNo = PersonelInfo.PersonelNo LEFT OUTER JOIN');
        SQL.Add('Pay.FormsInfo AS FormsInfo_2PersonelState ON PersonelInfo.PersonelState =');
        SQL.Add('FormsInfo_2PersonelState.FormInfoID LEFT OUTER JOIN');
        SQL.Add('Pay.FormsInfo ON PersonelInfo.BankCode = FormsInfo.FormInfoID LEFT OUTER JOIN');
        SQL.Add('Pay.FormsInfo AS FormsInfo_AccBankType ON PersonelInfo.AccBankType =');
        SQL.Add('FormsInfo_AccBankType.FormInfoID LEFT OUTER JOIN');
        SQL.Add('Pay.FormsInfo AS FormsInfo_BranchInfo ON PersonelInfo.BranchInfo =');
        SQL.Add('FormsInfo_BranchInfo.FormInfoID LEFT OUTER JOIN');
        SQL.Add('Pay.PersonelAccounts ON PersonelInfo.PersonelNo = PersonelAccounts.PersonelNo LEFT');
        SQL.Add('OUTER JOIN');
        SQL.Add('Pay.FormsInfo AS FormsInfo_AccBankType_Pa ON PersonelAccounts.AccBankType_Pa =');
        SQL.Add('FormsInfo_AccBankType_Pa.FormInfoID LEFT OUTER JOIN');
        SQL.Add('Pay.FormsInfo AS FormsInfo_AccountsType_Pa ON PersonelAccounts.AccountsType =');
        SQL.Add('FormsInfo_AccountsType_Pa.FormInfoID LEFT OUTER JOIN');
        SQL.Add('Pay.FormsInfo AS FormsInfo_BranchInfo_Pa ON PersonelAccounts.BranchInfo_Pa =');
        SQL.Add('FormsInfo_BranchInfo_Pa.FormInfoID LEFT OUTER JOIN');
        SQL.Add('Pay.FormsInfo AS FormsInfoBankCode_Pa ON PersonelAccounts.BankCode_Pa =');
        SQL.Add('FormsInfoBankCode_Pa.FormInfoID CROSS JOIN');
        SQL.Add('dbo.Fitful');

        SQL.Add('WHERE (PersonelDecExt.FormInfoID IN');
        SQL.Add('(SELECT FormInfoID');
        SQL.Add('FROM Pay.FormsInfo AS FormsInfo_2');

        if (chklstTide.Checked[3]) then
          SQL.Add('WHERE (FormType = 111)')
        else
          SQL.Add('WHERE (FormType = 58)');

        SQL.Add(')) AND (PersonelDecExt.FirstMounth = :TideMonthNo1) ');
        SQL.Add('AND (PersonelDecExt.EndMounth = :TideMonthNo2 ) AND');
        SQL.Add('(PersonelDecExt.YearID BETWEEN ' + IntToStr(APPBank.Year) +
          ' AND ' + IntToStr(APPBank.Year) + ') AND');
        SQL.Add('(PersonelDecExt.StartYear = ' + IntToStr(APPBank.Year)
          + ') AND');

        SQL.Add('(FormsInfo_AccountsType_Pa.InfoID = :AccountsTypeID OR');
        SQL.Add('FormsInfo_AccountsType_Pa.InfoID IS NULL) AND (ISNULL');
        SQL.Add('(FormsInfo_BranchInfo_Pa.InfoID, FormsInfo_BranchInfo.InfoID) BETWEEN');
        SQL.Add(':BranchInfoFrom AND :BranchInfoTo OR');
        SQL.Add('ISNULL(FormsInfo_BranchInfo_Pa.InfoID, FormsInfo_BranchInfo.InfoID) IS NULL) AND');
        SQL.Add('(ISNULL(PersonelDecExt.ProjectInfoID,0) BETWEEN :ProjectIDFrom AND :ProjectIDTo ) ');
        // OR  0 = 0
        SQL.Add('AND (ISNULL(PersonelAccounts.BankCode_Pa,');
        SQL.Add('PersonelInfo.BankCode) = :BankCode) AND');
        SQL.Add('(ISNULL(FormsInfo_AccBankType_Pa.InfoID, FormsInfo_AccBankType.InfoID) BETWEEN');
        SQL.Add(':AccBankTypeFrom AND :AccBankTypeTo) AND');
        SQL.Add('(FormsInfo_2PersonelState.InfoID BETWEEN :PersonelStateFrom AND :PersonelStateTo)');
        SQL.Add('AND (PersonelDecExt.PersonelNo BETWEEN');
        SQL.Add(':PersonelFrom AND :PersonelTo)');

        if (chklstTide.Checked[3]) then
          SQL.Add('AND (LEFT(PersonelDecExt.EndDate, 7) = :EndDate ) ');

        SQL.Add('GROUP BY PersonelDecExt.PersonelNo,NationalID, PersonelInfo.name_L1 , PersonelInfo.lastName_L1,');
        SQL.Add('PersonelInfo.name_L2 + '' '' + PersonelInfo.lastName_L2,');
        SQL.Add('PersonelInfo.BankCode, FormsInfo.InfoID, ISNULL(PersonelAccounts.AccountNumber_Pa,');
        SQL.Add('PersonelInfo.AccountNumber),PersonelAccounts.SHEBA,');
        SQL.Add('ISNULL(FormsInfoBankCode_Pa.InfoName_L1, FormsInfo.InfoName_L1),');
        SQL.Add('FormsInfo.InfoName_L2, ISNULL(FormsInfo_AccBankType_Pa.InfoName_L1,');
        SQL.Add('FormsInfo_AccBankType.InfoName_L1), FormsInfo_AccBankType.InfoName_L2,');
        SQL.Add('FormsInfo_AccBankType.InfoID, FormsInfo_2PersonelState.InfoID,');
        SQL.Add('PersonelDecExt.FirstMounth, FormsInfo_BranchInfo.InfoName_L1,');
        SQL.Add('FormsInfo_AccBankType.InfoID, FormsInfo_AccBankType_Pa.InfoID,');
        SQL.Add('PersonelInfo.Mobile, Fitful.FitfulID, PersonelInfo.fatherName_L1');
        SQL.Add('HAVING (PersonelDecExt.PersonelNo IN');
        SQL.Add('(SELECT Interdicts.PersonelNo');
        SQL.Add('FROM Pay.Interdicts LEFT OUTER JOIN');
        SQL.Add('Pay.FormsInfo AS FormsInfo_1 ON Pay.Interdicts.OfficeCode =');
        SQL.Add('FormsInfo_1.FormInfoID');
        SQL.Add('WHERE (Interdicts.State < 50) AND (Interdicts.InterdicType = 0) ');

        SQL.Add('AND (Interdicts.EmployTypeID in (' +
          GetcFrom(myParams.ParamValues['EmployTypeID'], ftString) + ') ) ');
        SQL.Add('AND (Interdicts.GroupID in (0,' + GetGroupID + ') ) ');

        SQL.Add('AND (Interdicts.OfficeCode IN ( ' +
          GetcFrom(myParams.ParamValues['OfficeCode'], ftString) +
          ' ))))) AS a');
        SQL.Add('WHERE (Price > 0)');
        SQL.Add('ORDER BY PersonelNo');
      end
    else
      With qryList do
      begin
        Active := False;
        SQL.Text :=
          'SELECT Bonus.PersonelNo,NationalID ,FormInfoID2, Bonus.name_L1, Bonus.DayQuntity, Bonus.BonusPrise, Bonus.TaxPrice, ';
        SQL.Add('ISNULL(PayBonus.EmployeeAmount, 0) AS PaymentBonus, ');

        PriceSQL := EmptyStr;
        if chklstTide.Checked[0] then
        begin
          PriceSQL := PriceSQL + 'Bonus.Price ';
          if chklstTide.Checked[2] then
            PriceSQL := PriceSQL + '- ISNULL(PayBonus.EmployeeAmount, 0)';
        end;

        if chklstTide.Checked[1] then
        begin
          if chklstTide.Checked[0] then
            PriceSQL := PriceSQL + '+ ISNULL(EmployerAmount, 0)'
          else
            PriceSQL := PriceSQL + 'ISNULL(EmployerAmount, 0)'
        end;

        if chklstTide.Checked[6] then
          PriceSQL := ' Bonus.Price - ISNULL(PayBonus.EmployeeAmount ,0) ';
        // جمع خالص عيدي

        if chklstTide.Checked[7] then
        begin
          if PriceSQL <> EmptyStr then
            PriceSQL := PriceSQL + '+ ISNULL(leavePrice , 0)'
          else
            PriceSQL := 'ISNULL(leavePrice , 0)'
        end;

        SQL.Add(PriceSQL + ' AS Price');

        SQL.Add(',CAST (0 AS Money) AS Price1,CAST (0 AS Money) AS Price2');

        SQL.Add(', Bonus.selected, Bonus.name_L2,Bonus.FirstName , Bonus.lastName_L1 ,');
        SQL.Add('Bonus.BankCode, Bonus.InfoID, Bonus.AccountNumber,SHEBA, Bonus.BankName_L1, Bonus.BankName_L2, Bonus.BankType_L1,');
        SQL.Add('Bonus.BankType_L2,');
        SQL.Add('Bonus.AccBankType, Bonus.PersonelState, Bonus.ISFunctions,  BranchInfo ,Bonus.Mobile, Bonus.fatherName_L1,'''' AS ProjectName');

        SQL.Add('FROM (SELECT  Fitful.FitfulID AS selected, PersonelDecExt.PersonelNo,NationalID,PersonelDecExt.FormInfoID2,');
        SQL.Add('PersonelInfo.name_L1 + '' '' + PersonelInfo.lastName_L1 AS name_L1, PersonelInfo.name_L2 + '' '' + PersonelInfo.lastName_L2 AS name_L2,');

        SQL.Add('PersonelInfo.name_L1 AS FirstName , PersonelInfo.lastName_L1 , ');

        SQL.Add('ROUND(SUM(PersonelDecExt.EmployeeAmount - PersonelDecExt.PaymentLoan), 0) AS Price');
        SQL.Add(',SUM(PersonelDecExt.leavePrice) AS  leavePrice, PersonelInfo.BankCode,');

        SQL.Add('ROUND(SUM(PersonelDecExt.EmployerAmount), 0) AS EmployerAmount,');

        SQL.Add('FormsInfo.InfoID,ISNULL(FormsInfo_BranchInfo_Pa.InfoName_L1, FormsInfo_BranchInfo.InfoName_L1) as BranchInfo ,');
        SQL.Add('ISNULL(PersonelAccounts.AccountNumber_Pa, PersonelInfo.AccountNumber) as AccountNumber ,PersonelAccounts.SHEBA,ISNULL(FormsInfoBankCode_Pa.InfoName_L1, FormsInfo.InfoName_L1)  AS BankName_L1 , FormsInfo.InfoName_L2 AS BankName_L2,');
        SQL.Add('ISNULL(FormsInfo_AccBankType_Pa.InfoName_L1, FormsInfo_1.InfoName_L1) AS BankType_L1  , FormsInfo_1.InfoName_L2 AS BankType_L2, FormsInfo_1.InfoID AS AccBankType,');
        SQL.Add('FormsInfo_2PersonelState.InfoID AS PersonelState, 1 AS ISFunctions, SUM(PersonelDecExt.DayQuntity) AS DayQuntity,');
        SQL.Add('ROUND(SUM(ISNULL(PersonelDecExt.EmployeeAmount, 0)), 0) AS BonusPrise, ROUND(SUM(PersonelDecExt.PaymentLoan), 0) AS TaxPrice');
        SQL.Add(',PersonelInfo.Mobile, PersonelInfo.fatherName_L1,'''' AS ProjectName');


        // SQL.Add  (',FormsInfo_BranchInfo.InfoName_L1 AS BranchInfo ');

        SQL.Add('FROM Pay.PersonelDecExt INNER JOIN');
        SQL.Add('Pay.PersonelInfo ON PersonelDecExt.PersonelNo = PersonelInfo.PersonelNo LEFT OUTER JOIN');
        SQL.Add('Pay.FormsInfo AS FormsInfo_2PersonelState ON PersonelInfo.PersonelState = FormsInfo_2PersonelState.FormInfoID LEFT OUTER JOIN');
        SQL.Add('Pay.FormsInfo ON PersonelInfo.BankCode = FormsInfo.FormInfoID LEFT OUTER JOIN');
        SQL.Add('Pay.FormsInfo AS FormsInfo_1 ON PersonelInfo.AccBankType = FormsInfo_1.FormInfoID');
        // SQL.Add  ('LEFT OUTER JOIN Pay.FormsInfo AS FormsInfo_BranchInfo ON PersonelInfo.BranchInfo = FormsInfo_BranchInfo.FormInfoID');

        SQL.Add('LEFT OUTER JOIN Pay.PersonelAccounts ON PersonelInfo.PersonelNo = PersonelAccounts.PersonelNo');
        SQL.Add('LEFT OUTER JOIN Pay.FormsInfo AS FormsInfo_AccBankType_Pa ON PersonelAccounts.AccBankType_Pa = FormsInfo_AccBankType_Pa.FormInfoID');
        SQL.Add('LEFT OUTER JOIN Pay.FormsInfo AS FormsInfo_AccountsType_Pa ON PersonelAccounts.AccountsType = FormsInfo_AccountsType_Pa.FormInfoID');
        SQL.Add('LEFT OUTER JOIN Pay.FormsInfo AS FormsInfo_BranchInfo_Pa ON PersonelAccounts.BranchInfo_Pa = FormsInfo_BranchInfo_Pa.FormInfoID');
        SQL.Add('LEFT OUTER JOIN Pay.FormsInfo AS FormsInfoBankCode_Pa ON PersonelAccounts.BankCode_Pa = FormsInfoBankCode_Pa.FormInfoID');

        SQL.Add('LEFT OUTER JOIN Pay.FormsInfo AS FormsInfo_BranchInfo ON PersonelInfo.BranchInfo = FormsInfo_BranchInfo.FormInfoID');

        SQL.Add('CROSS JOIN dbo.Fitful');

        SQL.Add('WHERE (PersonelDecExt.FormInfoID =:FormInfoID)');
        SQL.Add('AND (PersonelDecExt.FormInfoID2 BETWEEN :ProjectIDFrom AND :ProjectIDTo )');

        SQL.Add('AND (PersonelDecExt.PersonelNo BETWEEN :PersonelFrom AND :PersonelTo )');
        SQL.Add('AND ISNULL(PersonelAccounts.BankCode_Pa ,PersonelInfo.BankCode)= :BankCode ');
        SQL.Add('and ( ISNULL(FormsInfo_AccBankType_Pa.InfoID, FormsInfo_1.InfoID) BETWEEN :AccBankTypeFrom AND :AccBankTypeTo)');
        SQL.Add('AND (FormsInfo_2PersonelState.InfoID BETWEEN :PersonelStateFrom AND :PersonelStateTo) ');
        SQL.Add('AND ( FormsInfo_AccountsType_Pa.InfoID = :AccountsTypeID or FormsInfo_AccountsType_Pa.InfoID is null)');

        SQL.Add('AND (LEFT(PersonelDecExt.EndDate, 7) = :EndDate ) ');

        SQL.Add('AND (ISNULL(FormsInfo_BranchInfo_Pa.InfoID, FormsInfo_BranchInfo.InfoID) BETWEEN :BranchInfoFrom  AND :BranchInfoTo  or ISNULL(FormsInfo_BranchInfo_Pa.InfoID, FormsInfo_BranchInfo.InfoID) is null)');

        SQL.Add('And PersonelDecExt.PersonelNO in (SELECT Interdicts.PersonelNo FROM Pay.Interdicts LEFT OUTER JOIN');
        SQL.Add('Pay.FormsInfo ON Pay.Interdicts.OfficeCode = FormsInfo.FormInfoID');
        SQL.Add('WHERE (Interdicts.State   < 50 ) AND (Interdicts.InterdicType = 0)');

        SQL.Add('AND (Interdicts.EmployTypeID in (' +
          GetcFrom(myParams.ParamValues['EmployTypeID'], ftString) + ') ) ');
        SQL.Add('AND (Interdicts.GroupID in (0,' + GetGroupID + ') ) ');

        SQL.Add('AND (Interdicts.OfficeCode in( ' +
          GetcFrom(myParams.ParamValues['OfficeCode'], ftString) + ' ) ) )');

        SQL.Add('GROUP BY PersonelInfo.Mobile,PersonelDecExt.FormInfoID2 , PersonelInfo.fatherName_L1,PersonelDecExt.PersonelNo,NationalID, PersonelInfo.name_L1 , PersonelInfo.lastName_L1,');
        SQL.Add('PersonelInfo.name_L2 + '' '' + PersonelInfo.lastName_L2, PersonelInfo.BankCode, FormsInfo.InfoID, PersonelInfo.AccountNumber,');
        SQL.Add('FormsInfo.InfoName_L1, FormsInfo.InfoName_L2, FormsInfo_1.InfoName_L1, FormsInfo_1.InfoName_L2, FormsInfo_1.InfoID,');
        SQL.Add('PersonelAccounts.AccountNumber_Pa,PersonelAccounts.SHEBA,FormsInfoBankCode_Pa.InfoName_L1 ,FormsInfoBankCode_Pa.InfoName_L1,');
        SQL.Add('FormsInfo.InfoName_L1,FormsInfo_AccBankType_Pa.InfoName_L1, FormsInfo_1.InfoName_L1,');

        // SQL.Add  ('FormsInfo_BranchInfo.InfoName_L1 , ');
        SQL.Add(' Fitful.FitfulID,ISNULL(FormsInfo_BranchInfo_Pa.InfoName_L1, FormsInfo_BranchInfo.InfoName_L1),');

        SQL.Add('FormsInfo_2PersonelState.InfoID) AS Bonus LEFT OUTER JOIN');
        SQL.Add('(SELECT PersonelDecExt_1.PersonelNo, SUM(PersonelDecExt_1.EmployeeAmount) AS EmployeeAmount');
        SQL.Add('FROM Pay.PersonelDecExt AS PersonelDecExt_1 INNER JOIN');
        SQL.Add('Pay.FormsInfo AS FormsInfo_2 ON PersonelDecExt_1.FormInfoID = FormsInfo_2.FormInfoID');
        SQL.Add('WHERE (FormsInfo_2.FormType = 58)  ');

        if (chklstTide.Checked[4]) or (chklstTide.Checked[6]) then
          SQL.Add('AND (FormsInfo_2.InfoID = 1)');

        if chklstTide.Checked[5] then
          SQL.Add('AND (FormsInfo_2.InfoID = 2)');

        SQL.Add('GROUP BY PersonelDecExt_1.PersonelNo) AS PayBonus ON Bonus.PersonelNo = PayBonus.PersonelNo');
        SQL.Add('WHERE (  ' + PriceSQL + ' > 0)  ORDER BY Bonus.PersonelNo');
      end;
    // With
    chklstDecExt.ClearSelection;
    chklstSalaryId.ClearSelection;
    UpdateList;
  end
  else
  begin
    chklstTide.ClearSelection;
    qryList.SQL.Text := OrginalSQL;
    UpdateList;
  end;

end;

procedure TMakeBankDSKF.DiskTejarat;
var
  s, s1: String;
  v: Currency;
  ts: TStringList;
  cDate: String;
  CheckAccount: int64;
  acc: int64;
  errCount: Integer;
const
  __FILENAME = 'trans.dat';
begin
  CheckAccount := StrToInt64Def(Trim(mskAccountNum.Text), 0);
  cDate := mskDateDisk.Text;
  // GetcFrom(myParams.ParamValues['CreateDate']);
  if not validate_date(False, '', '', 'تاريخ مؤثر', cDate) then
    exit;
  cDate := StringReplace(cDate, '/', '', [rfreplaceall]);
  cDate := RightStr(cDate, 6);
  if CheckAccount = 0 then
  begin
    Warn('شماره حساب معتبر نيست.', mtError);
    mskAccountNum.SetFocus;
    FlashAControl(mskAccountNum);
    exit;
  end; // if
  ts := TStringList.Create;
  try
    SetKeyboardLatin;
    with qryList do
    begin
      First;
      if IsEmpty then
      begin
        Warn('اطلاعاتي براي ذخيره در ديسكت وجود ندارد!', mtError);
        exit;
      end; // if
      v := 0;
      errCount := 0;
      memoError.Clear;
      while not eof do
      begin
        acc := StrToInt64Def(Trim(fieldbyname('AccountNumber').AsString), 0);
        if acc = 0 then
        begin
          Inc(errCount);
          memoError.Lines.Add(IntToStr(errCount) + '- ' +
            GetPersonelName(fieldbyname('PersonelNO').AsString) + #9 +
            CurrToStrF(fieldbyname(Price).AsCurrency, ffCurrency, 0));
        end
        else if qryList.fieldbyname('selected').AsInteger = 1 then
        begin
          ts.Add(Format('%10.10d%.13d%.6s',
            [acc, fieldbyname(Price).AsInteger, cDate]));
          v := v + fieldbyname(Price).AsCurrency;
        end; // else
        Next;
      end; // while
      ts.Insert(0, Format('%10.10d%.13d%.6s', [CheckAccount, trunc(v), cDate]));
    end; // with
    s := 'تعداد پرسنل = ' + IntToStr(qryList.RecordCount) + #10;
    if errCount > 0 then
      s := s + 'تعداد پرسنل بدون حساب بانكي = ' + IntToStr(errCount) + #10;
    s := s + 'مبلغ چك معادل جمع كل مبالغ واريزي به حسابهاي اشخاص = ' +
      CurrToStrF(v, ffCurrency, 0) + #10;
    PnlError.Visible := errCount > 0;
    Warn(s);
    Memo1.Lines := ts;
    s1 := Memo1.Lines.Text;
    SetLength(s1, length(s1) - 2);
    Memo1.Lines.Text := s1;

    MySaveDialog(__FILENAME, 'تجارت',
      'dat Files (*.dat)|*.dat|All Files (*.*)|*.*');

  finally
    ts.Free;
    SetKeyboardFarsi;
  end; // try

end;

procedure TMakeBankDSKF.DiskSaderat;
var
  File_Name: String;
  s: String;
  errCount, n_Count: Integer;
  c: Currency;
begin
  qryList.DisableControls;
  qryList.First;
  errCount := 0;
  n_Count := 0;
  c := 0;
  memoError.Clear;
  Memo1.Clear;
  try
    while not qryList.eof do
    begin
      if length(qryList.fieldbyname('AccountNumber').AsString) < 3 then
      begin
        Inc(errCount);
        memoError.Lines.Add(IntToStr(errCount) + '- ' +
          GetPersonelName(qryList.fieldbyname('PersonelNO').AsString) + #9 +
          CurrToStrF(qryList.fieldbyname(Price).AsCurrency, ffCurrency, 0));
        qryList.Next;
        Continue;
      end; // if
      if qryList.fieldbyname('selected').AsInteger <> 1 then
      begin
        qryList.Next;
        Continue;
      end; // if
      s := IntToStr(qryList.RecNo);
      s := InsertSpace(5 - length(s), '0') + s;
      s := s + InsertSpace(13 - length(qryList.fieldbyname('AccountNumber')
        .AsString), '0') + qryList.fieldbyname('AccountNumber').AsString;
      s := s + InsertSpace(15 - length(qryList.fieldbyname(Price).AsString),
        '0') + qryList.fieldbyname(Price).AsString;
      s := s + InsertSpace(15, '0');
      Memo1.Lines.Add(s);
      c := c + qryList.fieldbyname(Price).AsCurrency;
      qryList.Next;
      Inc(n_Count);
    end; // while

    s := msk_SA_Branch.Text + msk_SA_Groups.Text + msk_SA_FileSerial.Text +
      StringReplace(makeDate, '/', '', [rfreplaceall]) +
      InsertSpace(15 - length(CurrToStr(c)), '0') + CurrToStr(c) +
      InsertSpace(5 - length(IntToStr(n_Count)), '0') + IntToStr(n_Count) +
      InsertSpace(10, '0');
    Memo1.Lines.Insert(0, s);

    File_Name := msk_SA_Branch.Text + msk_SA_Groups.Text +
      msk_SA_FileSerial.Text;
    // Memo1.Lines.Add(File_Name);

    s := Memo1.Lines.Text;
    SetLength(s, length(s) - 2);
    Memo1.Lines.Text := s;
    StatusBar1.Panels[0].Text := 'تعداد = ' + IntToStr(n_Count);
    StatusBar1.Panels[1].Text := 'جمع پرداختي = ' +
      CurrToStrF(c, ffCurrency, 0);
    PnlError.Visible := errCount > 0;

    MySaveDialog(File_Name, 'صادرات');

  finally
    qryList.EnableControls;
    SetKeyboardFarsi;
  end; // try
end;

procedure TMakeBankDSKF.DiskSaman(FirstLinePrefix: string);
var
  Str: String;
  errCount, n_Count: Integer;
  c: Currency;
begin
  qryList.DisableControls;
  qryList.First;
  errCount := 0;
  n_Count := 0;
  c := 0;
  memoError.Clear;
  Memo1.Clear;
  try
    while not qryList.eof do
    begin
      if length(qryList.fieldbyname('AccountNumber').AsString) < 3 then
      begin
        Inc(errCount);
        memoError.Lines.Add(IntToStr(errCount) + '- ' +
          GetPersonelName(qryList.fieldbyname('PersonelNO').AsString) + #9 +
          CurrToStrF(qryList.fieldbyname(Price).AsCurrency, ffCurrency, 0));
        qryList.Next;
        Continue;
      end; // if
      if qryList.fieldbyname('selected').AsInteger <> 1 then
      begin
        qryList.Next;
        Continue;
      end; // if
      Str := qryList.fieldbyname('AccountNumber').AsString + ' ' +
        CurrToStr(qryList.fieldbyname(Price).AsCurrency);

      Memo1.Lines.Add(Str);
      c := c + qryList.fieldbyname(Price).AsCurrency;
      qryList.Next;
      Inc(n_Count);
    end; // while

    Str := FirstLinePrefix + IntToStr(n_Count) + ' ' + mskAccountNum.Text + ' '
      + CurrToStr(c);
    Memo1.Lines.Insert(0, Str);
    Str := Memo1.Lines.Text;
    SetLength(Str, length(Str) - 2);
    Memo1.Lines.Text := Str;
    StatusBar1.Panels[0].Text := 'تعداد = ' + IntToStr(n_Count);
    StatusBar1.Panels[1].Text := 'جمع پرداختي = ' +
      CurrToStrF(c, ffCurrency, 0);
    PnlError.Visible := errCount > 0;
    if FirstLinePrefix = 'N ' then
      Str := 'Saman.txt'
    else if FirstLinePrefix = 'N' then
      Str := 'MehrIran.txt'
    else
      Str := 'Mehr.txt';
    MySaveDialog(Str,
      'انصار،پاسارگاد،سامان،سينا و  بانک قرض الحسنه مهر ایران ');

  finally
    qryList.EnableControls;
    SetKeyboardFarsi;
  end; // try
end;

procedure TMakeBankDSKF.makeDSKKeshavarzi;
var
  s: String;
  n_Count, errCount: Integer;
  c: Currency;
begin
  qryList.DisableControls;
  qryList.First;
  errCount := 0;
  n_Count := 0;
  c := 0;
  memoError.Clear;
  Memo1.Clear;
  try
    while not qryList.eof do
    begin
      if length(qryList.fieldbyname('AccountNumber').AsString) < 3 then
      begin
        Inc(errCount);
        memoError.Lines.Add(IntToStr(errCount) + '- ' +
          GetPersonelName(qryList.fieldbyname('PersonelNO').AsString) + #9 +
          CurrToStrF(qryList.fieldbyname(Price).AsCurrency, ffCurrency, 0));
        qryList.Next;
        Continue;
      end; // if
      if qryList.fieldbyname('selected').AsInteger <> 1 then
      begin
        qryList.Next;
        Continue;
      end; // if
      s := StringReplace(qryList.fieldbyname('AccountNumber').AsString, '/', '',
        [rfreplaceall]);
      s := RightStr('000000' + s, 6);
      s := s + RightStr('000000000000' + qryList.fieldbyname(Price)
        .AsString, 12);
      s := IntToStr(qryList.fieldbyname('AccBankType').AsInteger) + s;
      // -1
      Memo1.Lines.Add(s);
      c := c + qryList.fieldbyname(Price).AsCurrency;
      qryList.Next;
      Inc(n_Count);
    end; // while
    s := Memo1.Lines.Text;
    StatusBar1.Panels[0].Text := 'تعداد = ' + IntToStr(n_Count);
    StatusBar1.Panels[1].Text := 'جمع پرداختي = ' +
      CurrToStrF(c, ffCurrency, 0);
    PnlError.Visible := errCount > 0;

    MySaveDialog('TrnFile.cds', 'كشاورزي',
      'cds Files (*.cds)|*.cds|All Files (*.*)|*.*');

  finally
    qryList.EnableControls;
    SetKeyboardFarsi;
  end; // try
end;

procedure TMakeBankDSKF.makeDSKKeshavarzi2(CodeLength: Integer);
var
  s, FileName: String;
  n_Count, errCount: Integer;
  c: Largeint;
begin
  qryList.DisableControls;
  qryList.First;
  errCount := 0;
  n_Count := 0;
  c := 0;
  memoError.Clear;
  Memo1.Clear;
  try
    while not qryList.eof do
    begin
      if length(qryList.fieldbyname('AccountNumber').AsString) < 3 then
      begin
        Inc(errCount);
        memoError.Lines.Add(IntToStr(errCount) + '- ' +
          GetPersonelName(qryList.fieldbyname('PersonelNO').AsString) + #9 +
          CurrToStrF(qryList.fieldbyname(Price).AsCurrency, ffCurrency, 0));
        qryList.Next;
        Continue;
      end; // if
      if qryList.fieldbyname('selected').AsInteger <> 1 then
      begin
        qryList.Next;
        Continue;
      end; // if

      s := StringReplace(qryList.fieldbyname('AccountNumber').AsString, '/', '',
        [rfreplaceall]);
      s := RightStr('00000' + IntToStr(qryList.RecNo), 5) +
        RightStr('0000000000000' + s, 13);
      s := s + RightStr('000000000000000' + qryList.fieldbyname(Price)
        .AsString, 15);
      s := s + '000000000000000';
      Memo1.Lines.Add(s);
      c := c + qryList.fieldbyname(Price).AsInteger;
      qryList.Next;
      Inc(n_Count);
    end; // while
    s := Memo1.Lines.Text;
    SetLength(s, length(s) - 2);
    Memo1.Lines.Text := s;
    s := RightStr('0000' + Trim(msk_ke_BBBB.Text), 4);
    s := s + RightStr('000000' + Trim(msk_ke_CCCC.Text), CodeLength);
    s := s + RightStr('000000' + Trim(Msk_ke_Stage.Text), CodeLength);
    s := s + RightStr(StringReplace(makeDate, '/', '', [rfreplaceall]), 6);
    s := s + RightStr('000000000000000' + IntToStr(c), 15);
    s := s + RightStr('00000' + IntToStr(n_Count), 5);
    s := s + '000000';
    if CodeLength = 4 then
      s := s + '0000';

    Memo1.Lines.Insert(0, s);
    StatusBar1.Panels[0].Text := 'تعداد = ' + IntToStr(n_Count);
    StatusBar1.Panels[1].Text := 'جمع پرداختي = ' +
      CurrToStrF(c, ffCurrency, 0);
    PnlError.Visible := errCount > 0;

    FileName := RightStr('000000' + Trim(msk_ke_CCCC.Text), CodeLength);
    FileName := FileName + RightStr('0000' + Trim(msk_ke_BBBB.Text), 4);

    FileNameMeli := FileName + '.' +
      RightStr('000000' + Trim(Msk_ke_Stage.Text), CodeLength);

    FileName := FileName + '.' + RightStr('00' + IntToStr(MonthNo), 2);
    // FileNameMeli := FileNameMeli + '.txt';

    MySaveDialog(FileName, 'كشاورزي مهر/ملي با دوفایل یکسان و نامهای ' +
      FileName + '=' + FileNameMeli);
  finally
    qryList.EnableControls;
    SetKeyboardFarsi;
    FileNameMeli := EmptyStr;
  end; // try
end;

procedure TMakeBankDSKF.makeDSKKeshavarzi_MehrGostar(CutAccount: Boolean);
var
  s, FileName: String;
  n_Count, errCount: Integer;
  c: Largeint;
begin
  qryList.DisableControls;
  qryList.First;
  errCount := 0;
  n_Count := 0;
  c := 0;
  memoError.Clear;
  Memo1.Clear;
  try
    while not qryList.eof do
    begin
      if length(qryList.fieldbyname('AccountNumber').AsString) < 3 then
      begin
        Inc(errCount);
        memoError.Lines.Add(IntToStr(errCount) + '- ' +
          GetPersonelName(qryList.fieldbyname('PersonelNO').AsString) + #9 +
          CurrToStrF(qryList.fieldbyname(Price).AsCurrency, ffCurrency, 0));
        qryList.Next;
        Continue;
      end; // if
      if qryList.fieldbyname('selected').AsInteger <> 1 then
      begin
        qryList.Next;
        Continue;
      end; // if

      s := StringReplace(qryList.fieldbyname('AccountNumber').AsString, '/', '',
        [rfreplaceall]);

      if CutAccount then
        s := LeftStr(s, 8)
      else
        s := LeftStr(s, 18);

      s := '00000' + RightStr('000000000000000000' + s, 18);
      s := s + RightStr('000000000000' + qryList.fieldbyname(Price)
        .AsString, 12);
      Memo1.Lines.Add(s);
      c := c + qryList.fieldbyname(Price).AsInteger;
      qryList.Next;
      Inc(n_Count);
    end; // while

    if CutAccount then
    begin
      s := 'T00000000' + RightStr(Trim(msk_ke_BBBB.Text), 4);
      s := s + '0017520035';
    end
    else
    begin
      s := 'T00000000' + '0000';
      s := s + '0000000000';
    end;

    s := s + RightStr('000000000000' + IntToStr(c), 12);
    Memo1.Lines.Add(s);
    s := Memo1.Lines.Text;
    SetLength(s, length(s) - 2);
    Memo1.Lines.Text := s;
    Memo1.Lines.Add('');
    StatusBar1.Panels[0].Text := 'تعداد = ' + IntToStr(n_Count);
    StatusBar1.Panels[1].Text := 'جمع پرداختي = ' +
      CurrToStrF(c, ffCurrency, 0);
    PnlError.Visible := errCount > 0;
    FileName := RightStr('0000' + Trim(msk_ke_BBBB.Text), 4) +
      RightStr('00' + Trim(msk_ke_CCCC.Text), 2);
    FileName := FileName + RightStr('00' + Trim(Msk_ke_Stage.Text), 2);
    FileName := FileName + '.txt';

    MySaveDialog(FileName, 'كشاورزي مهرگستر');
  finally
    qryList.EnableControls;
    SetKeyboardFarsi;
  end; // try
end;

procedure TMakeBankDSKF.DBGrid1DblClick(Sender: TObject);
var
  v: Currency;
  qry: TADOQuery;
begin
  inherited;
  if SelectedActive then
  begin
    Selected;
    qry := TADOQuery.Create(Self);
    with qry do
    begin
      Clone(qryList);
      DisableControls;
      First;
      v := 0;
      while not eof do
      begin
        if fieldbyname('selected').AsInteger = 1 then
          v := v + fieldbyname(Price).AsCurrency;
        Next;
      end; // while
      EnableControls;
    end; // with
    StatusBar1.Panels[2].Text := 'جمع خالص پرداختي پرسنل انتخاب شده = ' +
      CurrToStrF(v, ffCurrency, 0);
    qry.Free;
  end;
end;

procedure TMakeBankDSKF.Selected;
begin
  with qryList do
  begin
    Edit;
    if fieldbyname('selected').AsInteger <> 0 then
      fieldbyname('selected').AsInteger := 0
    else
      fieldbyname('selected').AsInteger := 1;
    Post;
  end;
end;

procedure TMakeBankDSKF.qryListAfterOpen(DataSet: TDataSet);
begin
  inherited;
  With DataSet do
  begin
    DisableControls;
    while not eof do
    begin
      Edit;
      fieldbyname('selected').AsInteger := 1;
      Next;
    end;
    First;
    EnableControls;
  end;

end;

procedure TMakeBankDSKF.CmbLoanChange(Sender: TObject);
begin
  inherited;
  if CmbLoan.ItemIndex > 0 then
  begin
    With qryList do
    begin
      Active := False;
      SQL.Text :=
        'SELECT Fitful.FitfulID AS selected, FixedCalculated.PersonelNO,NationalID, PersonelInfo.name_L1 + '' '' +';
      SQL.Add('PersonelInfo.lastName_L1 AS name_L1,PersonelInfo.Mobile, PersonelInfo.fatherName_L1,'''' AS ProjectName,');

      SQL.Add('PersonelInfo.name_L1 AS FirstName , PersonelInfo.lastName_L1 , ');

      SQL.Add('PersonelInfo.name_L2 + '' '' + PersonelInfo.lastName_L2 AS name_L2, FixedCalculated.Price');

      SQL.Add(',CAST (0 AS Money) AS Price1,CAST (0 AS Money) AS Price2');

      SQL.Add(',PersonelInfo.BankCode, FormsInfo.InfoID,');

      // SQL.Add  ('ISNULL(PersonelAccounts.AccountNumber_Pa, PersonelInfo.AccountNumber) AS AccountNumber');
      SQL.Add(' (SELECT AidNo2 FROM Pay.PersonelDecExt WHERE DecExtID=FixedCalculated.FunctionID ) AS AccountNumber ');

      SQL.Add(','''' as SHEBA, ISNULL(FormsInfoBankCode_Pa.InfoName_L1,');
      SQL.Add('FormsInfo.InfoName_L1) AS BankName_L1, FormsInfo.InfoName_L2 AS BankName_L2, ISNULL');
      SQL.Add('(FormsInfo_AccBankType_Pa.InfoName_L1,');
      SQL.Add('FormsInfo_AccBankType.InfoName_L1) AS BankType_L1, FormsInfo_AccBankType.InfoName_L2 AS');
      SQL.Add('BankType_L2,');
      SQL.Add('FormsInfo_AccBankType.InfoID AS AccBankType, FormsInfo_2PersonelState.InfoID AS PersonelState, 1 AS');
      SQL.Add('ISFunctions,');
      SQL.Add('ISNULL(FormsInfo_BranchInfo_Pa.InfoName_L1, FormsInfo_BranchInfo.InfoName_L1) AS BranchInfo');
      SQL.Add('FROM Pay.FixedCalculated INNER JOIN');
      SQL.Add('Pay.PersonelInfo ON FixedCalculated.PersonelNO = PersonelInfo.PersonelNo LEFT OUTER JOIN');
      SQL.Add('Pay.PersonelAccounts ON PersonelInfo.PersonelNo = PersonelAccounts.PersonelNo LEFT OUTER JOIN');
      SQL.Add('Pay.FormsInfo AS FormsInfo_AccBankType_Pa ON PersonelAccounts.AccBankType_Pa =');
      SQL.Add('FormsInfo_AccBankType_Pa.FormInfoID LEFT OUTER JOIN');
      SQL.Add('Pay.FormsInfo AS FormsInfo_AccountsType_Pa ON PersonelAccounts.AccountsType =');
      SQL.Add('FormsInfo_AccountsType_Pa.FormInfoID LEFT OUTER JOIN');
      SQL.Add('Pay.FormsInfo AS FormsInfo_BranchInfo_Pa ON PersonelAccounts.BranchInfo_Pa =');
      SQL.Add('FormsInfo_BranchInfo_Pa.FormInfoID LEFT OUTER JOIN');
      SQL.Add('Pay.FormsInfo AS FormsInfoBankCode_Pa ON PersonelAccounts.BankCode_Pa = FormsInfoBankCode_Pa.FormInfoID');
      SQL.Add('LEFT OUTER JOIN');
      SQL.Add('Pay.FormsInfo AS FormsInfo_2PersonelState ON PersonelInfo.PersonelState = FormsInfo_2PersonelState.FormInfoID');
      SQL.Add('LEFT OUTER JOIN');
      SQL.Add('Pay.FormsInfo ON PersonelInfo.BankCode = FormsInfo.FormInfoID LEFT OUTER JOIN');
      SQL.Add('Pay.FormsInfo AS FormsInfo_AccBankType ON PersonelInfo.AccBankType = FormsInfo_AccBankType.FormInfoID LEFT');
      SQL.Add('OUTER JOIN');
      SQL.Add('Pay.FormsInfo AS FormsInfo_BranchInfo ON PersonelInfo.BranchInfo = FormsInfo_BranchInfo.FormInfoID');

      SQL.Add(' INNER JOIN  Pay.FormsInfo AS FormsInfo_Vam ON FixedCalculated.SalaryID = FormsInfo_Vam.FormInfoID');
      SQL.Add(' INNER JOIN Pay.FormTypes ON FormsInfo_Vam.FormType = FormTypes.FormType');
      SQL.Add('CROSS JOIN dbo.Fitful');

      SQL.Add('WHERE ( (FixedCalculated.FormInfoID = :LoanInfoID) AND (FixedCalculated.Mounth = :Mounth )');
      SQL.Add('AND (FixedCalculated.YearID = :YearID)');
      Parameters.ParamByName('YearID').Value := APPBank.Year;
      SQL.Add('AND (FixedCalculated.Years = ' + optP.Year + ')');

      SQL.Add('AND (FormsInfo_AccountsType_Pa.InfoID = :AccountsTypeID or FormsInfo_AccountsType_Pa.InfoID is null)');
      SQL.Add('AND (ISNULL(PersonelAccounts.BankCode_Pa ,PersonelInfo.BankCode)  = :BankCode) AND (FixedCalculated.ArchiveID = :ArchiveID )  ');
      if (CompanyFilterinLogin) and (not User.PowerAdmin) then
      begin
        SQL.Add('AND(FixedCalculated.subcompanyCode BETWEEN :companyCodeFrom AND :companyCodeTo )');
        Parameters.ParamByName('companyCodeFrom').Value := FcompanyCodeLogin;
        Parameters.ParamByName('companyCodeTo').Value := FcompanyCodeLogin;
      end;

      SQL.Add(' AND (FixedCalculated.LabelID BETWEEN :LabelIDFrom ANd :LabelIDTo)');

      SQL.Add('AND (ISNULL(FormsInfo_AccBankType_Pa.InfoID, FormsInfo_AccBankType.InfoID) BETWEEN :AccBankTypeFrom AND :AccBankTypeTo)');
      SQL.Add('AND (ISNULL(FormsInfo_BranchInfo_Pa.InfoID, FormsInfo_BranchInfo.InfoID) BETWEEN :BranchInfoFrom  AND :BranchInfoTo  or ISNULL(FormsInfo_BranchInfo_Pa.InfoID, FormsInfo_BranchInfo.InfoID) is null)');
      SQL.Add('AND (FormsInfo_2PersonelState.InfoID BETWEEN :PersonelStateFrom AND :PersonelStateTo) AND');
      SQL.Add('(FixedCalculated.PersonelNO BETWEEN :PersonelFrom AND :PersonelTo))');

      SQL.Add('And FixedCalculated.PersonelNO in (SELECT Interdicts.PersonelNo FROM Pay.Interdicts LEFT OUTER JOIN');
      SQL.Add('Pay.FormsInfo ON Pay.Interdicts.OfficeCode = FormsInfo.FormInfoID');
      SQL.Add('WHERE (Interdicts.State   < 50 ) AND (Interdicts.InterdicType = 0)');

      SQL.Add('AND (Interdicts.EmployTypeID in (' +
        GetcFrom(myParams.ParamValues['EmployTypeID'], ftString) + ') ) ');
      SQL.Add('AND (Interdicts.GroupID in (0,' + GetGroupID + ') ) ');

      SQL.Add('AND (Interdicts.OfficeCode in( ' +
        GetcFrom(myParams.ParamValues['OfficeCode'], ftString) + ' ) ) )');

      SQL.Add('AND (FormTypes.SalaryKind IN (9, 14))');

      SQL.Add('ORDER BY selected');
    end; // With
    chklstDecExt.ClearSelection;
    chklstSalaryId.ClearSelection;
    chklstTide.ClearSelection;
    UpdateList;
  end
  else
  begin
    qryList.SQL.Text := OrginalSQL;
    UpdateList;
  end;
end;

procedure TMakeBankDSKF.makeDskSepah(Separator: String);
var
  s, FileName: String;
  n_Count, errCount: Integer;
  c: Largeint;
begin
  qryList.DisableControls;
  qryList.First;
  errCount := 0;
  n_Count := 0;
  c := 0;
  memoError.Clear;
  Memo1.Clear;
  try
    while not qryList.eof do
    begin
      if length(qryList.fieldbyname('AccountNumber').AsString) < 13 then
      begin
        Inc(errCount);
        memoError.Lines.Add(IntToStr(errCount) + '- ' +
          GetPersonelName(qryList.fieldbyname('PersonelNO').AsString) + #9 +
          CurrToStrF(qryList.fieldbyname(Price).AsCurrency, ffCurrency, 0));
        qryList.Next;
        Continue;
      end; // if
      if qryList.fieldbyname('selected').AsInteger <> 1 then
      begin
        qryList.Next;
        Continue;
      end; // if
      // 3101015163331$0094901663$+$9
      s := StringReplace(qryList.fieldbyname('AccountNumber').AsString, '/', '',
        [rfreplaceall]);
      s := RightStr('0000000000000' + s, 13) + Separator;
      s := s + RightStr('0000000000' + qryList.fieldbyname(Price).AsString, 10)
        + Separator + IfThen(Separator = EmptyStr, '+1', '+$9');
      Memo1.Lines.Add(s);
      c := c + qryList.fieldbyname(Price).AsInteger;
      qryList.Next;
      Inc(n_Count);
    end; // while
    s := RightStr('0000000000000' + Trim(mskAccountNum.Text), 13);
    // s:=s +RightStr('0000000000' +IntToStr(c) ,10)+'+1';
    s := s + '0000000000+1';
    if Separator = EmptyStr then
      Memo1.Lines.Insert(0, s);
    Memo1.Lines.Add('');
    s := Memo1.Lines.Text;
    SetLength(s, length(s) - 2);
    Memo1.Lines.Text := s;
    StatusBar1.Panels[0].Text := 'تعداد = ' + IntToStr(n_Count);
    StatusBar1.Panels[1].Text := 'جمع پرداختي = ' +
      CurrToStrF(c, ffCurrency, 0);
    PnlError.Visible := errCount > 0;
    FileName := 'Hogh.fd';

    MySaveDialog(FileName, 'سپه', 'fd Files (*.fd)|*.fd|All Files (*.*)|*.*');

  finally
    qryList.EnableControls;
    SetKeyboardFarsi;
  end; // try
end;

procedure TMakeBankDSKF.DiskParsiyan;
var
  s, sPersonelName: String;
  errCount, n_Count: Integer;
  c: Currency;
begin
  qryList.DisableControls;
  qryList.First;
  errCount := 0;
  n_Count := 0;
  c := 0;
  memoError.Clear;
  Memo1.Clear;
  try
    while not qryList.eof do
    begin
      sPersonelName := GetPersonelName(qryList.fieldbyname('PersonelNO')
        .AsString);
      if length(qryList.fieldbyname('AccountNumber').AsString) < 3 then
      begin
        Inc(errCount);
        memoError.Lines.Add(IntToStr(errCount) + '- ' + sPersonelName + #9 +
          CurrToStrF(qryList.fieldbyname(Price).AsCurrency, ffCurrency, 0));
        qryList.Next;
        Continue;
      end; // if
      if qryList.fieldbyname('selected').AsInteger <> 1 then
      begin
        qryList.Next;
        Continue;
      end; // if
      s := 'D,';
      s := s + StringReplace(qryList.fieldbyname('AccountNumber').AsString, '-',
        ',', [rfreplaceall]) + ',';
      s := s + qryList.fieldbyname(Price).AsString + ',';
      s := s + MonthCaptions + ' ' + sPersonelName;
      Memo1.Lines.Add(s);
      c := c + qryList.fieldbyname(Price).AsCurrency;
      qryList.Next;
      Inc(n_Count);
    end; // while

    s := 'D,' + Trim(msk_PA_Branch.Text) + ',' + Trim(msk_PA_Sarfasl.Text) + ','
      + Trim(msk_PA_Serial.Text);
    s := s + ',-' + CurrToStr(c) + ',' + MonthCaptions;
    Memo1.Lines.Insert(0, s);

    s := 'N,' + StringReplace(makeDate, '/', '', [rfreplaceall]) + ',' +
      CurrToStr(c) + ',' + IntToStr(n_Count) + ',' + Trim(mskAccountNum.Text);
    Memo1.Lines.Insert(0, s);

    s := Memo1.Lines.Text;
    SetLength(s, length(s) - 2);
    Memo1.Lines.Text := s;
    StatusBar1.Panels[0].Text := 'تعداد = ' + IntToStr(n_Count);
    StatusBar1.Panels[1].Text := 'جمع پرداختي = ' +
      CurrToStrF(c, ffCurrency, 0);
    PnlError.Visible := errCount > 0;
    s := 'br' + Trim(msk_PA_Branch.Text) + '-' + StringReplace(makeDate, '/',
      '', [rfreplaceall]) + '-' + IntToStr(n_Count) + '-' + CurrToStr(c) + '-' +
      Trim(msk_PA_FileCode.Text) + '.Txt';

    MySaveDialog(s, 'پارسيان');
  finally
    qryList.EnableControls;
    SetKeyboardFarsi;
  end; // try
end;

procedure TMakeBankDSKF.Memo2Click(Sender: TObject);
begin
  inherited;
  Memo2.Visible := False;
end;

procedure TMakeBankDSKF.MySaveDialog(MyFileName, TitleCap: String;
  FilterTxt: String =
  'Text Files (*.Txt)|*.Txt|Payroll Files (*.PAY)|*.PAY|Payroll Files (*.Clr)|*.Clr|Excel Files (*.xls)|*.xls|All Files (*.*)|*.*');
var
  sFileName: string;
begin
  SetKeyboardLatin;
  With SaveDialog1 do
    try
      Title := 'ذخيره فايل بانك  ' + TitleCap;
      Filter := FilterTxt;
      FileName := MyFileName;
      if not CdBurn then
      begin
        If not Execute then
        begin
          Warn('اشكال در تهيه ديسكت', mtError);
          exit;
        end;
        Memo1.Lines.SaveToFile(FileName);
        if FileNameMeli <> EmptyStr then
        begin
          Memo1.Lines.SaveToFile(StringReplace(FileName, MyFileName,
            FileNameMeli, []));
        end;
      end;

      if CdBurn then
      begin
        pDir := __TheTempDIR;
        SetCurrentDir(pDir);
        Memo1.Lines.SaveToFile(MyFileName);
        if FileNameMeli <> EmptyStr then
        begin
          sFileName := StringReplace(FileName, MyFileName, FileNameMeli, []);
          Memo1.Lines.SaveToFile(sFileName);
        end;
        if System.SysUtils.DirectoryExists('CdBurn') then
          DelDir('CdBurn');
        MkDir('CdBurn');
        CopyFile(pchar(MyFileName),
          pchar(pDir + 'CdBurn\' + MyFileName), False);

        if sFileName <> EmptyStr then
          CopyFile(pchar(sFileName),
            pchar(pDir + 'CdBurn\' + sFileName), False);

        CdBurnTaxF.BackUpBurnCD(Caption);
      end
      else
        BigMessage('ديسكت بانك ' + TitleCap + ' با موفقيت تهيه شد.', 2);
    finally
      qryList.EnableControls;
      SetKeyboardFarsi;
    end;

end;

procedure TMakeBankDSKF.mnuAllPanelClick(Sender: TObject);
begin
  inherited;
  mnuAllPanel.Checked := not mnuAllPanel.Checked;
  pnlDiskMeli.Visible := mnuAllPanel.Checked;
  pnlDiskSaderat.Visible := mnuAllPanel.Checked;
  pnlDiskKeshavarzi.Visible := mnuAllPanel.Checked;
  pnlShahr_Pasargad.Visible := mnuAllPanel.Checked;
  pnlParsiyan.Visible := mnuAllPanel.Checked;
  pnlShahr14.Visible := mnuAllPanel.Checked;
  pnlMelat.Visible := mnuAllPanel.Checked;

end;

procedure TMakeBankDSKF.MakeDskRefah;
var
  // aDataSet: TClientDataSet;
  s: String;
  n_Count, errCount: Integer;
  c: Currency;
begin
  qryList.DisableControls;
  qryList.First;
  errCount := 0;
  n_Count := 0;
  c := 0;
  memoError.Clear;
  Memo1.Clear;
  try
    while not qryList.eof do
    begin
      if length(qryList.fieldbyname('AccountNumber').AsString) < 3 then
      begin
        Inc(errCount);
        memoError.Lines.Add(IntToStr(errCount) + '- ' +
          GetPersonelName(qryList.fieldbyname('PersonelNO').AsString) + #9 +
          CurrToStrF(qryList.fieldbyname(Price).AsCurrency, ffCurrency, 0));
        qryList.Next;
        Continue;
      end; // if
      if qryList.fieldbyname('selected').AsInteger <> 1 then
      begin
        qryList.Next;
        Continue;
      end; // if
      s := StringReplace(qryList.fieldbyname('AccountNumber').AsString, '/', '',
        [rfreplaceall]);
      s := RightStr('000000' + s, 6);
      s := s + RightStr('000000000000' + qryList.fieldbyname(Price)
        .AsString, 12);
      s := IntToStr(qryList.fieldbyname('AccBankType').AsInteger) + s;
      // -1
      Memo1.Lines.Add(s);
      c := c + qryList.fieldbyname(Price).AsCurrency;
      qryList.Next;
      Inc(n_Count);
    end; // while
    s := Memo1.Lines.Text;
    StatusBar1.Panels[0].Text := 'تعداد = ' + IntToStr(n_Count);
    StatusBar1.Panels[1].Text := 'جمع پرداختي = ' +
      CurrToStrF(c, ffCurrency, 0);
    PnlError.Visible := errCount > 0;

    MySaveDialog('TrnFile.cds', 'رفاه',
      'cds Files (*.cds)|*.cds|All Files (*.*)|*.*');

  finally
    qryList.EnableControls;
    SetKeyboardFarsi;
  end; // try
end;

procedure TMakeBankDSKF.DiskPasargadResalatTxt(Pasarghad: Boolean);
var
  s, sPersonelName: String;
  errCount, n_Count: Integer;
  c: Currency;
begin
  qryList.DisableControls;
  qryList.First;
  errCount := 0;
  n_Count := 0;
  c := 0;
  memoError.Clear;
  Memo1.Clear;
  try
    while not qryList.eof do
    begin
      sPersonelName := GetPersonelName(qryList.fieldbyname('PersonelNO')
        .AsString);
      if length(qryList.fieldbyname('AccountNumber').AsString) < 3 then
      begin
        Inc(errCount);
        memoError.Lines.Add(IntToStr(errCount) + '- ' + sPersonelName + #9 +
          CurrToStrF(qryList.fieldbyname(Price).AsCurrency, ffCurrency, 0));
        qryList.Next;
        Continue;
      end; // if
      if qryList.fieldbyname('selected').AsInteger <> 1 then
      begin
        qryList.Next;
        Continue;
      end; // if
      s := 'd' + #9;
      s := s + StringReplace(qryList.fieldbyname('AccountNumber').AsString, '-',
        '.', [rfreplaceall]) + #9;
      s := s + qryList.fieldbyname(Price).AsString + #9 + '0' + #9;
      s := s + sPersonelName + #9 + ' پرداخت حقوق ' + MonthCaptions;
      Memo1.Lines.Add(s);
      c := c + qryList.fieldbyname(Price).AsCurrency;
      qryList.Next;
      Inc(n_Count);
    end; // while

    if Pasarghad then
    begin
      s := 'd' + #9 + Trim(mskAccountNum.Text) + #9 + CurrToStr(c) + #9
        + '1' + #9;
      s := s + Trim(mskShahr_Name.Text) + #9 + ' پرداخت حقوق ' + MonthCaptions;
      Memo1.Lines.Insert(0, s);
    end;

    s := 'no''e hesab' + #9 + 'shomare hesab' + #9 + 'mablagh' + #9 +
      'bedehkar (0-1)' + #9;
    s := s + 'sharhe avalie' + #9 + 'sharhe sanavie';
    Memo1.Lines.Insert(0, s);

    if Pasarghad then
    begin
      s := '' + #9 + 'b' + Trim(mskShahr_branch.Text) + '-' +
        StringReplace(makeDate, '/', '', [rfreplaceall]) + '-' +
        SysUtils.TimeToStr(Now) + #9 + #9 + #9 + 'seporde:d' + #9;
      Memo1.Lines.Insert(0, s);
    end;

    s := Memo1.Lines.Text;
    SetLength(s, length(s) - 2);
    Memo1.Lines.Text := s;
    StatusBar1.Panels[0].Text := 'تعداد = ' + IntToStr(n_Count);
    StatusBar1.Panels[1].Text := 'جمع پرداختي = ' +
      CurrToStrF(c, ffCurrency, 0);
    PnlError.Visible := errCount > 0;
    s := 'br' + Trim(mskShahr_branch.Text) + '-' + StringReplace(makeDate, '/',
      '', [rfreplaceall]) + '-' + IntToStr(n_Count) + '-' + CurrToStr(c) +
      IfThen(Pasarghad, '.Txt', '.xls');

    MySaveDialog(s, IfThen(Pasarghad, 'پاسارگاد', 'رسالت'));

  finally
    qryList.EnableControls;
    SetKeyboardFarsi;
  end; // try
end;

procedure TMakeBankDSKF.DiskPasargadXls;
var
  s, sPersonelName: String;
  errCount, n_Count: Integer;
  c: Currency;
begin
  qryList.DisableControls;
  qryList.First;
  errCount := 0;
  n_Count := 0;
  c := 0;
  memoError.Clear;
  Memo1.Clear;
  cli1.CreateDataSet;
  cli1.Active := True;
  try
    while not qryList.eof do
    begin
      sPersonelName := GetPersonelName(qryList.fieldbyname('PersonelNO')
        .AsString);
      if length(qryList.fieldbyname('AccountNumber').AsString) < 3 then
      begin
        Inc(errCount);
        memoError.Lines.Add(IntToStr(errCount) + '- ' + sPersonelName + #9 +
          CurrToStrF(qryList.fieldbyname(Price).AsCurrency, ffCurrency, 0));
        qryList.Next;
        Continue;
      end; // if
      if qryList.fieldbyname('selected').AsInteger <> 1 then
      begin
        qryList.Next;
        Continue;
      end; // if
      cli1.Insert;
      cli1.fieldbyname('no''e hesab').AsString := 'd';
      cli1.fieldbyname('shomare hesab').AsString :=
        StringReplace(qryList.fieldbyname('AccountNumber').AsString, '-', '.',
        [rfreplaceall]);

      cli1.fieldbyname('mablagh').AsString :=
        qryList.fieldbyname(Price).AsString;

      cli1.fieldbyname('bedehkar (0-1)').AsString := '0';
      cli1.fieldbyname('sharhe avalie').AsString := sPersonelName;
      cli1.fieldbyname('sharhe sanavie').AsString := ' پرداخت حقوق ' +
        MonthCaptions;
      cli1.Post;
      Memo1.Lines.Add(s);
      c := c + qryList.fieldbyname(Price).AsCurrency;
      qryList.Next;
      Inc(n_Count);
    end; // while

    cli1.First;
    cli1.Insert;
    cli1.fieldbyname('no''e hesab').AsString := 'd';
    cli1.fieldbyname('shomare hesab').AsString := Trim(mskAccountNum.Text);
    cli1.fieldbyname('mablagh').AsString := CurrToStr(c);
    cli1.fieldbyname('bedehkar (0-1)').AsString := '1';
    cli1.fieldbyname('sharhe avalie').AsString := Trim(mskShahr_Name.Text);
    cli1.fieldbyname('sharhe sanavie').AsString := ' پرداخت حقوق ' +
      MonthCaptions;
    cli1.Post;

    cli1.First;
    cli1.Insert;
    cli1.fieldbyname('no''e hesab').AsString := 'no''e hesab';
    cli1.fieldbyname('shomare hesab').AsString := 'shomare hesab';
    cli1.fieldbyname('mablagh').AsString := 'mablagh';
    cli1.fieldbyname('bedehkar (0-1)').AsString := 'bedehkar (0-1)';
    cli1.fieldbyname('sharhe avalie').AsString := 'sharhe avalie';
    cli1.fieldbyname('sharhe sanavie').AsString := 'sharhe sanavie';
    cli1.Post;

    cli1.fieldbyname('no''e hesab').DisplayLabel := ' ';
    cli1.fieldbyname('shomare hesab').DisplayLabel :=
      'b' + Trim(mskShahr_branch.Text) + '-' + StringReplace(makeDate, '/', '',
      [rfreplaceall]) + '-' + SysUtils.TimeToStr(Now);
    cli1.fieldbyname('mablagh').DisplayLabel := ' ';
    cli1.fieldbyname('bedehkar (0-1)').DisplayLabel := ' ';
    cli1.fieldbyname('sharhe avalie').DisplayLabel := 'seporde:d';
    cli1.fieldbyname('sharhe sanavie').DisplayLabel := ' ';

    StatusBar1.Panels[0].Text := 'تعداد = ' + IntToStr(n_Count);
    StatusBar1.Panels[1].Text := 'جمع پرداختي = ' +
      CurrToStrF(c, ffCurrency, 0);
    PnlError.Visible := errCount > 0;
    s := 'br' + Trim(mskShahr_branch.Text) + '-' + StringReplace(makeDate, '/',
      '', [rfreplaceall]) + '-' + IntToStr(n_Count) + '-' +
      CurrToStr(c) + '.xls';
    DataToExcel(cli1);
  finally
    qryList.EnableControls;
    SetKeyboardFarsi;
    cli1.close;
  end; // try
end;

procedure TMakeBankDSKF.makeDskShahr;
var
  s, FileName: String;
  n_Count, errCount: Integer;
  c: Largeint;
begin
  qryList.DisableControls;
  qryList.First;
  errCount := 0;
  n_Count := 0;
  c := 0;
  memoError.Clear;
  Memo1.Clear;
  try
    while not qryList.eof do
    begin
      if length(qryList.fieldbyname('AccountNumber').AsString) < 8 then
      begin
        Inc(errCount);
        memoError.Lines.Add(IntToStr(errCount) + '- ' +
          GetPersonelName(qryList.fieldbyname('PersonelNO').AsString) + #9 +
          CurrToStrF(qryList.fieldbyname(Price).AsCurrency, ffCurrency, 0));
        qryList.Next;
        Continue;
      end; // if
      if qryList.fieldbyname('selected').AsInteger <> 1 then
      begin
        qryList.Next;
        Continue;
      end; // if
      s := StringReplace(qryList.fieldbyname('AccountNumber').AsString, '/',
        '.', [rfreplaceall]);
      s := Trim(mskShahr_branch.Text) + '@' + s;
      s := s + '@' + qryList.fieldbyname(Price).AsString;
      Memo1.Lines.Add(s);
      c := c + qryList.fieldbyname(Price).AsInteger;
      qryList.Next;
      Inc(n_Count);
    end;
    // while
    s := Memo1.Lines.Text;
    SetLength(s, length(s) - 2);
    Memo1.Lines.Text := s;
    s := Trim(mskShahr_Name.Text);
    s := s + '@' + IntToStr(n_Count);
    s := s + '@' + IntToStr(c);
    Memo1.Lines.Insert(0, s);
    StatusBar1.Panels[0].Text := 'تعداد = ' + IntToStr(n_Count);
    StatusBar1.Panels[1].Text := 'جمع پرداختي = ' +
      CurrToStrF(c, ffCurrency, 0);
    PnlError.Visible := errCount > 0;
    // b1 := True;

    FileName := APPBank.CompanyName + '.txt';

    MySaveDialog(FileName, 'شهر');
  finally
    qryList.EnableControls;
    SetKeyboardFarsi;
  end; // try
end;

procedure TMakeBankDSKF.DiskShahr2;
var
  s, sPersonelName: String;
  errCount, n_Count: Integer;
  c: Currency;
begin
  qryList.DisableControls;
  qryList.First;
  errCount := 0;
  n_Count := 0;
  c := 0;
  memoError.Clear;
  Memo1.Clear;
  try
    while not qryList.eof do
    begin
      sPersonelName := GetPersonelName(qryList.fieldbyname('PersonelNO')
        .AsString);
      if length(qryList.fieldbyname('AccountNumber').AsString) < 3 then
      begin
        Inc(errCount);
        memoError.Lines.Add(IntToStr(errCount) + '- ' + sPersonelName + #9 +
          CurrToStrF(qryList.fieldbyname(Price).AsCurrency, ffCurrency, 0));
        qryList.Next;
        Continue;
      end; // if
      if qryList.fieldbyname('selected').AsInteger <> 1 then
      begin
        qryList.Next;
        Continue;
      end; // if
      s := Trim(StringReplace(qryList.fieldbyname('AccountNumber').AsString,
        '-', '', [rfreplaceall])); // +#9

      case rgShahr.ItemIndex of
        0:
          s := s + ',' + GETPrice(qryList.fieldbyname(Price).AsCurrency) + ',C'
            + ',' + medtBankShar14.Text;

        1:
          s := s + ',' + GETPrice(qryList.fieldbyname(Price).AsCurrency) + ',C'
            + ',' + qryListname_L1.AsString;

        2, 4:
          s := s + ',' + GETPrice(qryList.fieldbyname(Price).AsCurrency) + ',C'
            + ',' + medtBankShar14.Text + ',' + qryListname_L1.AsString;

        3:
          s := s + ',' + GETPrice(qryList.fieldbyname(Price).AsCurrency) + ',C';
      end;
      Memo1.Lines.Add(s);
      c := c + qryList.fieldbyname(Price).AsCurrency;
      qryList.Next;
      Inc(n_Count);
    end;
    // while

    s := Trim(mskAccountNum.Text) + ',' + GETPrice(c) + ',D' + ',' +
      medtBankShar14.Text;
    Memo1.Lines.Insert(0, s);

    s := '1,' + CurrToStr(n_Count) + ',' + GETPrice(c);
    if rgShahr.ItemIndex = 4 then
      s := s + ',,POSA';

    Memo1.Lines.Insert(0, s);

    s := Memo1.Lines.Text;
    SetLength(s, length(s) - 2);
    Memo1.Lines.Text := s;
    StatusBar1.Panels[0].Text := 'تعداد = ' + IntToStr(n_Count);
    StatusBar1.Panels[1].Text := 'جمع پرداختي = ' +
      CurrToStrF(c, ffCurrency, 0);
    PnlError.Visible := errCount > 0;
    s := 'واريز و برداشت گروهي' + '.Txt';

    MySaveDialog(s, 'شهر');
  finally
    qryList.EnableControls;
    SetKeyboardFarsi;
  end;
  // try
end;

function TMakeBankDSKF.GETPrice(c: Currency): string;
begin
  Result := Trim(CurrToStr(c));
  // Result := StringReplace(Result, ',', '.', [rfreplaceall])
end;

procedure TMakeBankDSKF.GrpSalaryIdClick(Sender: TObject);
begin
  inherited;
  GrpDecExt.Height := 22;
  GrpSalaryId.Height := 22;
  grpPony.Height := 22;
  grpTide.Height := 22;
  GroupBox2.Height := 22;
  (Sender as TGroupBox).Height := Panel1.Height div 2;
end;

procedure TMakeBankDSKF.DiskPostBank;
var
  s, sPersonelName, AccountNumber: String;
  errCount, n_Count: Integer;
  c: Currency;
  qryPostBank1, qryPostBank2: TADOQuery;
begin
  qryPostBank1 := TADOQuery.Create(nil);
  with qryPostBank1 do
  begin
    Name := 'Pay';
    Connection := theMainConnection;
    LockType := ltBatchOptimistic;
    SQL.Text := 'SELECT TOP 0 ID AS radif, FitfulNote AS shomare_hesab';
    SQL.Add(', ID AS mablagh, FitfulNote AS natijeh, FitfulNote AS sanad');
    SQL.Add('FROM dbo.Fitful');
    Open;
  end;
  qryPostBank2 := TADOQuery.Create(nil);
  with qryPostBank2 do
  begin
    Name := 'general';
    Connection := theMainConnection;
    LockType := ltBatchOptimistic;
    SQL.Text := 'SELECT TOP 0 FitfulNote AS Name, FitfulNote AS AccNo';
    SQL.Add(', ID AS Mablagh, FitfulNote AS Dis, FitfulNote AS Mobile');
    SQL.Add('FROM dbo.Fitful');
    Open;
    fieldbyname('Name').DisplayLabel := 'نام و نام خانوادگي';
    fieldbyname('AccNo').DisplayLabel := 'شماره حساب';
    fieldbyname('Mablagh').DisplayLabel := 'مبلغ';
    fieldbyname('Dis').DisplayLabel := 'شرح';
    fieldbyname('Mobile').DisplayLabel := 'موبايل';
  end;

  qryList.DisableControls;
  qryList.First;
  errCount := 0;
  n_Count := 0;
  c := 0;
  memoError.Clear;
  Memo1.Clear;
  try
    while not qryList.eof do
    begin
      sPersonelName := GetPersonelName(qryList.fieldbyname('PersonelNO')
        .AsString);
      if length(qryList.fieldbyname('AccountNumber').AsString) < 3 then
      begin
        Inc(errCount);
        memoError.Lines.Add(IntToStr(errCount) + '- ' + sPersonelName + #9 +
          CurrToStrF(qryList.fieldbyname(Price).AsCurrency, ffCurrency, 0));
        qryList.Next;
        Continue;
      end;
      if qryList.fieldbyname('selected').AsInteger <> 1 then
      begin
        qryList.Next;
        Continue;
      end;

      Inc(n_Count);
      AccountNumber := Trim(StringReplace(qryList.fieldbyname('AccountNumber')
        .AsString, '-', '', [rfreplaceall]));
      with qryPostBank1 do
      begin
        Insert;
        fieldbyname('radif').AsInteger := n_Count;
        fieldbyname('shomare_hesab').AsString := AccountNumber;
        fieldbyname('mablagh').AsCurrency := qryList.fieldbyname(Price)
          .AsCurrency;
        Post;
      end;
      with qryPostBank2 do
      begin
        Insert;
        fieldbyname('Name').AsString := qryList.fieldbyname('FirstName')
          .AsString + ' ' + qryList.fieldbyname('lastName_L1').AsString;
        fieldbyname('AccNo').AsString := AccountNumber;
        fieldbyname('Mablagh').AsCurrency := qryList.fieldbyname(Price)
          .AsCurrency;
        fieldbyname('Dis').AsString := MonthCaptions;
        fieldbyname('Mobile').AsString := qryListMobile.AsString;
        Post;
      end;

      Memo1.Lines.Add(s);
      c := c + qryList.fieldbyname(Price).AsCurrency;
      qryList.Next;
    end; // while

    with qryPostBank1 do
    begin
      Insert;
      fieldbyname('mablagh').AsCurrency := c;
      Post;
    end;
    with qryPostBank2 do
    begin
      Insert;
      fieldbyname('Mablagh').AsCurrency := c;
      Post;
    end;

    DataToExcel(qryPostBank1);
    DataToExcel(qryPostBank2);

    Memo1.Lines.Text := s;
    StatusBar1.Panels[0].Text := 'تعداد = ' + IntToStr(n_Count);
    StatusBar1.Panels[1].Text := 'جمع پرداختي = ' +
      CurrToStrF(c, ffCurrency, 0);
    Memo1.Lines.Add(StatusBar1.Panels[0].Text);
    Memo1.Lines.Add(StatusBar1.Panels[1].Text);

    PnlError.Visible := errCount > 0;

  finally
    qryList.EnableControls;
    qryPostBank1.Free;
    qryPostBank2.Free;
  end;
end;

end.
