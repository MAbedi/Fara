{ -----------------------------------------------------------------------------
  Unit Name: MakeDocumentDec
  Author:    M_A_H_M_O_O_D
  Purpose:
  History:   87/02/02
  ----------------------------------------------------------------------------- }
unit MakeDocumentDec;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ComCtrls, ImgList, DBActns, ActnList, StdCtrls,
  ExtCtrls, Buttons, Mask, DB, ADODB, DBCtrls, zAPIBalloon,
  Menus, ToolWin, CheckLst, Provider, DBClient, System.ImageList,
  System.Actions, CheckDoc, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, CedarDbGrid;

type
  TMakeDocumentDecF = class(Ttemplate2MDIF)
    Panel4: TPanel;
    Panel5: TPanel;
    qryDocuments: TADOQuery;
    BitBtn1: TBitBtn;
    actMakeDoc: TAction;
    qryItems: TADOQuery;
    actShowDoc: TAction;
    BitBtn2: TBitBtn;
    actFilter: TAction;
    srcItems: TDataSource;
    BitBtn3: TBitBtn;
    Panel8: TPanel;
    qryDocGroups: TADOQuery;
    btnCheckDocument: TBitBtn;
    actErrorList: TAction;
    lslWarnings: TListBox;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    actSendExcel: TAction;
    actSort: TAction;
    actPrint: TAction;
    zbal: TzAPIBalloon;
    BitBtn8: TBitBtn;
    PopMnuForm: TPopupMenu;
    MenuItem1: TMenuItem;
    N5: TMenuItem;
    MenuItem4: TMenuItem;
    N9: TMenuItem;
    MenuItem2: TMenuItem;
    Exel1: TMenuItem;
    N3: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N4: TMenuItem;
    N6: TMenuItem;
    qryItemsAccDetailCode: TIntegerField;
    qryItemsAccCTopicCode: TIntegerField;
    qryItemsAccCTopicCode2: TIntegerField;
    qryItems_TopicName: TStringField;
    qryItems_DetailName: TStringField;
    qryItems_CTopicName: TStringField;
    qryItems_CTopicName3: TStringField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel9: TPanel;
    DBText5: TDBText;
    txt_TopiceName: TDBText;
    DBText7: TDBText;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    DBText8: TDBText;
    Label13: TLabel;
    Panel10: TPanel;
    StatusBar2: TStatusBar;
    StatusBar4: TStatusBar;
    SrcDetail: TDataSource;
    qryDetail: TADOQuery;
    StringField1: TStringField;
    IntegerField1: TIntegerField;
    StringField2: TStringField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    BCDField1: TBCDField;
    BCDField2: TBCDField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    qryDetail_CTopicName3: TStringField;
    qryItems_Dec: TStringField;
    Panel6: TPanel;
    Panel7: TPanel;
    StatusBar1: TStatusBar;
    StatusBar3: TStatusBar;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    Label3: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBText4: TDBText;
    Label9: TLabel;
    qryDetail_Dec: TStringField;
    qryItemsAccCTopicCode3: TIntegerField;
    qryItems_CTopicName2: TStringField;
    qryDetailAccCTopicCode3: TIntegerField;
    qryDetail_CTopicName2: TStringField;
    DBText9: TDBText;
    GroupBox1: TGroupBox;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    qryItemsAccTopicCode: TIntegerField;
    GrpDecExt: TGroupBox;
    CmbDecExt: TComboBox;
    GroupBox2: TGroupBox;
    mskZaribSorat: TMaskEdit;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label8: TLabel;
    MskDocNo: TMaskEdit;
    mskDocDate: TMaskEdit;
    MskDocTopic: TMaskEdit;
    CmbDocType: TComboBox;
    cmbCompany: TComboBox;
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
    CmbAccTopicCode: TComboBox;
    CmbAccDetailCode: TComboBox;
    CmbAccCTopicCode: TComboBox;
    CmbAccCTopicCode2: TComboBox;
    GroupBox3: TGroupBox;
    Label18: TLabel;
    CmbAccBehalf: TComboBox;
    CmbAccCTopicCode3: TComboBox;
    Label19: TLabel;
    pnlAccount: TPanel;
    qryItemsCredit: TFMTBCDField;
    qryItemsDebt: TFMTBCDField;
    PnlAccCTopicCode2: TPanel;
    LblAccCTopicCode2: TLabel;
    MskAccCTopicCode2: TMaskEdit;
    SBtnAccCTopicCode2: TSpeedButton;
    PnlAccCTopicCode: TPanel;
    SpeedButton4: TSpeedButton;
    MskAccCTopicCode: TMaskEdit;
    Label21: TLabel;
    Panel12: TPanel;
    Panel13: TPanel;
    Label23: TLabel;
    MskAccTopicCode: TMaskEdit;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    MskAccDetailCode: TMaskEdit;
    Label20: TLabel;
    mskZaribMakhraj: TMaskEdit;
    Label22: TLabel;
    Label24: TLabel;
    qryDetailAccTopicCode: TIntegerField;
    actCheckDocument: TAction;
    actChangeDec: TAction;
    btnSendWarnToExcel: TBitBtn;
    actSendWarnToExcel: TAction;
    PnlAccNew: TPanel;
    SBtnReciptNumber: TSpeedButton;
    Label25: TLabel;
    Label26: TLabel;
    MskSerial: TMaskEdit;
    qryDetail_CompanyCode: TIntegerField;
    qryItems_CompanyCode: TIntegerField;
    cmbYearID: TComboBox;
    qryDetailDec: TStringField;
    qryItemsDec: TStringField;
    CheckDoc1: TCheckDoc;
    cmbEndDate: TComboBox;
    Label27: TLabel;
    LblNum: TLabel;
    chkTax: TCheckBox;
    pnlTax: TPanel;
    Panel14: TPanel;
    Label28: TLabel;
    SpeedButton1: TSpeedButton;
    MskAccCTopicCode2Tax: TMaskEdit;
    Panel15: TPanel;
    SpeedButton5: TSpeedButton;
    Label29: TLabel;
    MskAccCTopicCodeTax: TMaskEdit;
    Panel16: TPanel;
    SpeedButton6: TSpeedButton;
    Label30: TLabel;
    MskAccDetailCodeTax: TMaskEdit;
    Panel17: TPanel;
    Label31: TLabel;
    SpeedButton7: TSpeedButton;
    mskAccTopicCodeTax: TMaskEdit;
    actAccountf: TAction;
    DBGrid1: TCedarDbgrid;
    DBGrid2: TCedarDbgrid;
    procedure FormCreate(Sender: TObject);
    procedure actMakeDocExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
    procedure actShowDocExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure qryItemsAfterOpen(DataSet: TDataSet);
    procedure cmbGroupsChange(Sender: TObject);
    procedure RdGKindDocClick(Sender: TObject);
    procedure actErrorListExecute(Sender: TObject);
    procedure lslWarningsClick(Sender: TObject);
    procedure actSendExcelExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure qryDetailAfterOpen(DataSet: TDataSet);
    procedure ToolButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SBtnAccCTopicCode2Click(Sender: TObject);
    procedure CmbDecExtChange(Sender: TObject);
    procedure qryItemsBeforeOpen(DataSet: TDataSet);
    procedure PageControl1Change(Sender: TObject);
    procedure actCheckDocumentExecute(Sender: TObject);
    procedure actChangeDecExecute(Sender: TObject);
    procedure actSendWarnToExcelExecute(Sender: TObject);
    procedure cmbYearIDChange(Sender: TObject);
    procedure cmbEndDateChange(Sender: TObject);
    procedure chkTaxClick(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure actAccountfExecute(Sender: TObject);
    procedure DBGrid1EditButtonClick(Sender: TObject);
  private
    SqlText: String;
    MonthNo: Byte;
    YearID_, SalaryID: Integer;
    procedure InitForm;
    function AddMaster: Integer;
    procedure AddDetail(DocID: Integer; qry: TADOQuery);
    procedure initCombos;
    procedure UpdateFilter;
    function Error: Integer;
    procedure UpdateParameters(qry: TADOQuery);
    function Getqry: TADOQuery;
    procedure InitEndDate;
  public
    { Public declarations }
  end;

var
  MakeDocumentDecF: TMakeDocumentDecF;

implementation

uses DM, shamsiDate, GlobalPro, filter_ADO, FilterClass_ADO, search2,
  sort2, Math, StrUtils, mmessage, SalaryFunctions, AccFunctions, CheckDocument,
  FaraConsts,  AccountP;

{$R *.dfm}

procedure TMakeDocumentDecF.UpdateFilter;
var
  Dec: string;
  SelColumn: string;
begin
  if cmbYearID.ItemIndex > -1 then
    YearID_ := Integer(cmbYearID.Items.Objects[cmbYearID.ItemIndex]);
  InitForm;
  Dec := CmbDecExt.Text;

  if chkTax.Checked then
    SelColumn := 'MakDoc_1.Pure'
  else
    SelColumn := 'MakDoc_1.EmployeeAmount';

  with qryDetail do
  begin
    Active := False;
    SQL.Text := 'SELECT *, Fitful.FitfulNote AS _Dec  ';
    SQL.Add('FROM (');
    SQL.Add('SELECT MakDoc_1.*,');
    SQL.Add('PersonelInfo.name_L1 + '' '' + PersonelInfo.lastName_L1 AS PeronName ,');
    SQL.Add('CAST(''' + Dec + ''' AS varchar(600)) AS Dec');
    case CmbAccBehalf.ItemIndex of
      0:
        SQL.Add(',cast(0 as money) AS debt ,cast(' + SelColumn +
          ' as money) AS credit ');
      1:
        SQL.Add(',cast(' + SelColumn +
          ' as money) AS debt ,cast(0 as money) AS credit ');
    end;
    SQL.Add('FROM Pay.MakeDoc_PersonDecExt(:Mounth , :Year , :YearMounth , :Zarib ,');
    SQL.Add(':PersonelNoFrom ,:PersonelNoTo , :SallaryID , :TopicCodeKind , :DetailCodeKind ,');
    SQL.Add(':CTopicCodeKind , :CTopicCode2Kind , :CTopicCode3Kind , :EndDate) AS MakDoc_1 INNER JOIN');
    SQL.Add('Pay.PersonelInfo ON MakDoc_1.PersonelNo = Pay.PersonelInfo.PersonelNo');

    SQL.Add('union all ');

    SQL.Add('SELECT 0 AS DecExtID, 0 AS PersonelNo,');
    SQL.Add('0 AS salaryID, MIN(MakDoc_1.Mounth) AS Mounth,');
    SQL.Add('MIN(MakDoc_1.InfoName_L1) AS InfoName_L1, MIN(MakDoc_1.name_L1) AS name_L1,');
    SQL.Add('MIN(MakDoc_1.lastName_L1) AS lastName_L1, ');
    SQL.Add('cast(SUM(MakDoc_1.EmployeeAmount)as money) AS EmployeeAmount,cast(SUM(MakDoc_1.Tax) as money) AS Tax');
    SQL.Add(',cast(SUM(MakDoc_1.Pure)as money) AS Pure,');
    SQL.Add(MskAccTopicCode.Text + ' AS AccTopicCode, ');
    SQL.Add(MskAccDetailCode.Text + ' AS AccDetailCode,');
    SQL.Add(MskAccCTopicCode.Text + ' AS AccCTopicCode, ');
    SQL.Add(MskAccCTopicCode2.Text + ' AS AccCTopicCode2,');
    SQL.Add('0 AS AccCTopicCode3, MIN(Pay.PersonelInfo.name_L1 + '' '' +Pay.PersonelInfo.lastName_L1)');
    SQL.Add('AS PeronName, CAST(''' + Dec + ''' AS varchar(600)) AS Dec ');
    case CmbAccBehalf.ItemIndex of
      0:
        SQL.Add(',cast(SUM(MakDoc_1.EmployeeAmount)as money) AS debt ,cast(0 as money) AS credit ');
      1:
        SQL.Add(',cast(0 as money) AS debt ,cast(SUM(MakDoc_1.EmployeeAmount)as money) AS credit ');
    end;
    SQL.Add('FROM Pay.MakeDoc_PersonDecExt(:Mounth1 , :Year1 , :YearMounth1 , :Zarib1 ,');
    SQL.Add(':PersonelNoFrom1 ,:PersonelNoTo1 , :SallaryID1 , :TopicCodeKind1 , :DetailCodeKind1 ,');
    SQL.Add(':CTopicCodeKind1 ,:CTopicCode2Kind1 ,:CTopicCode3Kind1 , :EndDate1');
    SQL.Add(') AS MakDoc_1 INNER JOIN');
    SQL.Add('Pay.PersonelInfo ON MakDoc_1.PersonelNo = Pay.PersonelInfo.PersonelNo');

    if chkTax.Checked then
    begin
      SQL.Add('union all ');

      SQL.Add('SELECT 0 AS DecExtID, 0 AS PersonelNo,');
      SQL.Add('0 AS salaryID, MIN(MakDoc_1.Mounth) AS Mounth,');
      SQL.Add('MIN(MakDoc_1.InfoName_L1) AS InfoName_L1, MIN(MakDoc_1.name_L1) AS name_L1,');
      SQL.Add('MIN(MakDoc_1.lastName_L1) AS lastName_L1, ');
      SQL.Add('cast(SUM(MakDoc_1.EmployeeAmount)as money) AS EmployeeAmount,');
      SQL.Add('SUM(MakDoc_1.Tax) AS Tax,SUM(MakDoc_1.Pure) AS Pure,');
      SQL.Add(mskAccTopicCodeTax.Text + ' AS AccTopicCode, ');
      SQL.Add(MskAccDetailCodeTax.Text + ' AS AccDetailCode,');
      SQL.Add(MskAccCTopicCodeTax.Text + ' AS AccCTopicCode, ');
      SQL.Add(MskAccCTopicCode2Tax.Text + ' AS AccCTopicCode2,');
      SQL.Add('0 AS AccCTopicCode3, MIN(Pay.PersonelInfo.name_L1 + '' '' +Pay.PersonelInfo.lastName_L1)');
      SQL.Add('AS PeronName, CAST(''مالیات ' + Dec +
        ''' AS varchar(600)) AS Dec ');
      case CmbAccBehalf.ItemIndex of
        0:
          SQL.Add(',cast(0 as money) AS debt ,cast(SUM(Tax)as money) AS credit ');
        1:
          SQL.Add(',cast(SUM(Tax)as money) AS debt ,cast(0 as money) AS credit ');
      end;
      SQL.Add('FROM Pay.MakeDoc_PersonDecExt(:Mounth3 , :Year3 , :YearMounth3 , :Zarib3 ,');
      SQL.Add(':PersonelNoFrom3 ,:PersonelNoTo3 , :SallaryID3 , :TopicCodeKind3 , :DetailCodeKind3 ,');
      SQL.Add(':CTopicCodeKind3 ,:CTopicCode2Kind3 ,:CTopicCode3Kind3 , :EndDate3');
      SQL.Add(') AS MakDoc_1 INNER JOIN');
      SQL.Add('Pay.PersonelInfo ON MakDoc_1.PersonelNo = Pay.PersonelInfo.PersonelNo');

    end;

    SQL.Add(')absde');
    SQL.Add('CROSS JOIN dbo.Fitful');
  end; // with

  with qryItems do
  begin
    Active := False;
    SQL.Text := 'SELECT *, Fitful.FitfulNote AS _Dec FROM ( ';
    SQL.Add('SELECT MakDoc_1.AccTopicCode, MakDoc_1.AccDetailCode, MakDoc_1.AccCTopicCode, ');
    SQL.Add('MakDoc_1.AccCTopicCode2, MakDoc_1.AccCTopicCode3,');
    SQL.Add('CAST(''' + Dec + ''' AS varchar(600)) AS Dec');
    case CmbAccBehalf.ItemIndex of
      0:
        SQL.Add(',cast(0 as money) AS debt ,sum(' + SelColumn + ') AS credit ');
      1:
        SQL.Add(',sum(' + SelColumn + ') AS debt ,cast(0 as money) AS credit ');
    end;
    SQL.Add('FROM Pay.MakeDoc_PersonDecExt(:Mounth , :Year , :YearMounth , :Zarib ,');
    SQL.Add(':PersonelNoFrom ,:PersonelNoTo , :SallaryID , :TopicCodeKind , :DetailCodeKind ,');
    SQL.Add(':CTopicCodeKind , :CTopicCode2Kind , :CTopicCode3Kind , :EndDate) AS MakDoc_1 INNER JOIN');
    SQL.Add('Pay.PersonelInfo ON MakDoc_1.PersonelNo = Pay.PersonelInfo.PersonelNo');
    SQL.Add('GROUP BY MakDoc_1.AccTopicCode, MakDoc_1.AccDetailCode, MakDoc_1.AccCTopicCode,');
    SQL.Add('MakDoc_1.AccCTopicCode2, MakDoc_1.AccCTopicCode3');

    SQL.Add('union all ');
    SQL.Add('SELECT ');
    SQL.Add(MskAccTopicCode.Text + ' AS AccTopicCode, ');
    SQL.Add(MskAccDetailCode.Text + ' AS AccDetailCode,');
    SQL.Add(MskAccCTopicCode.Text + ' AS AccCTopicCode, ');
    SQL.Add(MskAccCTopicCode2.Text + ' AS AccCTopicCode2,');
    SQL.Add('0 AS AccCTopicCode3, CAST(''' + Dec +
      ''' AS varchar(600)) AS Dec ');
    case CmbAccBehalf.ItemIndex of
      0:
        SQL.Add(',cast(SUM(MakDoc_1.EmployeeAmount) as money) AS debt ,cast(0 as money) AS credit ');
      1:
        SQL.Add(',cast(0 as money) AS debt ,cast(SUM(MakDoc_1.EmployeeAmount) as money) AS credit ');
    end;
    SQL.Add('FROM Pay.MakeDoc_PersonDecExt(:Mounth1, :Year1 , :YearMounth1 , :Zarib1 ,');
    SQL.Add(':PersonelNoFrom1 ,:PersonelNoTo1 , :SallaryID1 , :TopicCodeKind1 , :DetailCodeKind1 ,');
    SQL.Add(':CTopicCodeKind1 ,:CTopicCode2Kind1 , :CTopicCode3Kind1 , :EndDate1');
    SQL.Add(') AS MakDoc_1 ');

    if chkTax.Checked then
    begin
      SQL.Add('union all ');
      SQL.Add('SELECT ');
      SQL.Add(mskAccTopicCodeTax.Text + ' AS AccTopicCode, ');
      SQL.Add(MskAccDetailCodeTax.Text + ' AS AccDetailCode,');
      SQL.Add(MskAccCTopicCodeTax.Text + ' AS AccCTopicCode, ');
      SQL.Add(MskAccCTopicCode2Tax.Text + ' AS AccCTopicCode2,');
      SQL.Add('0 AS AccCTopicCode3, CAST(''مالیات ' + Dec +
        ''' AS varchar(600)) AS Dec ');
      case CmbAccBehalf.ItemIndex of
        0:
          SQL.Add(',cast(0 as money) AS debt ,SUM(Tax) AS credit ');
        1:
          SQL.Add(',SUM(Tax) AS debt ,cast(0 as money) AS credit ');
      end;
      SQL.Add('FROM Pay.MakeDoc_PersonDecExt(:Mounth3 , :Year3 , :YearMounth3 , :Zarib3 ,');
      SQL.Add(':PersonelNoFrom3 ,:PersonelNoTo3 , :SallaryID3 , :TopicCodeKind3 , :DetailCodeKind3 ,');
      SQL.Add(':CTopicCodeKind3 ,:CTopicCode2Kind3 ,:CTopicCode3Kind3 , :EndDate3');
      SQL.Add(') AS MakDoc_1 ');
    end;

    /// //////////////////////////////////////////
    SQL.Add('union all');
    SQL.Add('SELECT * from Pay.MakeDoc_PersonDecExt2(  :2Mounth  ,:2year ,:2YearMounth ,:2Zarib ,');
    SQL.Add(':2PersonelNoFROM ,:2PersonelNoTo ,:2SallaryID   ,');
    SQL.Add(':2TopicCodeKind ,:2DetailCodeKind ,:2CTopicCodeKind ,:2CTopicCode2Kind ,:2CTopicCode3Kind , :2EndDate  )');

    SQL.Add(')absde');
    SQL.Add('CROSS JOIN dbo.Fitful');
  end; // with
  UpdateParameters(qryItems);
  UpdateParameters(qryDetail);
  with qryItems.Parameters do
  begin
    LblNum.Caption := 'از كد پرسنلي ' + IntToStr(ParamByName('PersonelNoFrom')
      .Value) + ' تا ' + IntToStr(ParamByName('PersonelNoTo').Value);
  end; // with
  PageControl1Change(PageControl1);

end;

procedure TMakeDocumentDecF.UpdateParameters;
begin
  GetYearMounth(MonthNo);
  with qry do
  begin
    Active := False;
    Parameters.ParamByName('Mounth').Value := MonthNo;
    Parameters.ParamByName('YearMounth').Value := optP.YearMounth;
    Parameters.ParamByName('Year').Value :=
      MidStr(Parameters.ParamByName('YearMounth').Value, 1, 4);
    Parameters.ParamByName('Zarib').Value := StrToFloat(trim(mskZaribSorat.Text)
      ) / StrToFloat(trim(mskZaribMakhraj.Text));
    Parameters.ParamByName('PersonelNoFrom').Value :=
      GetcFrom(myParams.ParamValues['Personal'], ftInteger);
    Parameters.ParamByName('PersonelNoTo').Value :=
      GetcTo(myParams.ParamValues['Personal'], ftInteger);
    Parameters.ParamByName('SallaryID').Value := SalaryID;
    Parameters.ParamByName('TopicCodeKind').Value := CmbAccTopicCode.ItemIndex;
    Parameters.ParamByName('DetailCodeKind').Value :=
      CmbAccDetailCode.ItemIndex;
    Parameters.ParamByName('CTopicCodeKind').Value :=
      CmbAccCTopicCode.ItemIndex;
    Parameters.ParamByName('CTopicCode2Kind').Value :=
      CmbAccCTopicCode2.ItemIndex;
    Parameters.ParamByName('CTopicCode3Kind').Value :=
      CmbAccCTopicCode3.ItemIndex;

    Parameters.ParamByName('EndDate').Value := cmbEndDate.Text;

    Parameters.ParamByName('Mounth1').Value := MonthNo;
    Parameters.ParamByName('Year1').Value := optP.Year;
    Parameters.ParamByName('YearMounth1').Value := optP.YearMounth;

    Parameters.ParamByName('Zarib1').Value :=
      StrToFloat(trim(mskZaribSorat.Text)) /
      StrToFloat(trim(mskZaribMakhraj.Text));
    Parameters.ParamByName('PersonelNoFrom1').Value :=
      GetcFrom(myParams.ParamValues['Personal'], ftInteger);
    Parameters.ParamByName('PersonelNoTo1').Value :=
      GetcTo(myParams.ParamValues['Personal'], ftInteger);
    Parameters.ParamByName('SallaryID1').Value := SalaryID;
    Parameters.ParamByName('TopicCodeKind1').Value := CmbAccTopicCode.ItemIndex;
    Parameters.ParamByName('DetailCodeKind1').Value :=
      CmbAccDetailCode.ItemIndex;
    Parameters.ParamByName('CTopicCodeKind1').Value :=
      CmbAccCTopicCode.ItemIndex;
    Parameters.ParamByName('CTopicCode2Kind1').Value :=
      CmbAccCTopicCode2.ItemIndex;
    Parameters.ParamByName('CTopicCode3Kind1').Value :=
      CmbAccCTopicCode3.ItemIndex;

    Parameters.ParamByName('EndDate1').Value := cmbEndDate.Text;

    if chkTax.Checked then
    begin
      Parameters.ParamByName('Mounth3').Value := MonthNo;
      Parameters.ParamByName('Year3').Value := optP.Year;
      Parameters.ParamByName('YearMounth3').Value := optP.YearMounth;

      Parameters.ParamByName('Zarib3').Value :=
        StrToFloat(trim(mskZaribSorat.Text)) /
        StrToFloat(trim(mskZaribMakhraj.Text));
      Parameters.ParamByName('PersonelNoFrom3').Value :=
        GetcFrom(myParams.ParamValues['Personal'], ftInteger);
      Parameters.ParamByName('PersonelNoTo3').Value :=
        GetcTo(myParams.ParamValues['Personal'], ftInteger);
      Parameters.ParamByName('SallaryID3').Value := SalaryID;
      Parameters.ParamByName('TopicCodeKind3').Value :=
        CmbAccTopicCode.ItemIndex;
      Parameters.ParamByName('DetailCodeKind3').Value :=
        CmbAccDetailCode.ItemIndex;
      Parameters.ParamByName('CTopicCodeKind3').Value :=
        CmbAccCTopicCode.ItemIndex;
      Parameters.ParamByName('CTopicCode2Kind3').Value :=
        CmbAccCTopicCode2.ItemIndex;
      Parameters.ParamByName('CTopicCode3Kind3').Value :=
        CmbAccCTopicCode3.ItemIndex;

      Parameters.ParamByName('EndDate3').Value := cmbEndDate.Text;
    end;

    if qry.Name = qryItems.Name then
    begin

      Parameters.ParamByName('2Mounth').Value := MonthNo;
      Parameters.ParamByName('2year').Value := optP.Year;
      Parameters.ParamByName('2YearMounth').Value := optP.YearMounth;
      Parameters.ParamByName('2Zarib').Value :=
        StrToFloat(trim(mskZaribSorat.Text)) /
        StrToFloat(trim(mskZaribMakhraj.Text));
      Parameters.ParamByName('2PersonelNoFrom').Value :=
        GetcFrom(myParams.ParamValues['Personal'], ftInteger);
      Parameters.ParamByName('2PersonelNoTo').Value :=
        GetcTo(myParams.ParamValues['Personal'], ftInteger);
      Parameters.ParamByName('2SallaryID').Value := SalaryID;
      Parameters.ParamByName('2TopicCodeKind').Value :=
        CmbAccTopicCode.ItemIndex;
      Parameters.ParamByName('2DetailCodeKind').Value :=
        CmbAccDetailCode.ItemIndex;
      Parameters.ParamByName('2CTopicCodeKind').Value :=
        CmbAccCTopicCode.ItemIndex;
      Parameters.ParamByName('2CTopicCode2Kind').Value :=
        CmbAccCTopicCode2.ItemIndex;
      Parameters.ParamByName('2CTopicCode3Kind').Value :=
        CmbAccCTopicCode3.ItemIndex;
      Parameters.ParamByName('2EndDate').Value := cmbEndDate.Text;
    end;

  end; // with
end;

procedure TMakeDocumentDecF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      // AddItem(DMf.adcSalary,'Office',' واحد سازماني ','كد',ftInteger,dvMinMax,'','',ciLookup,'SELECT InfoID, InfoName_L1  FROM Pay.FormsInfo  WHERE (FormType = 12)',
   //   'SELECT   MIN(InfoID), MAX(InfoID) FROM Pay.FormsInfo GROUP BY FormType HAVING (FormType = 12)';
      AddItem(DMF.adcSalary, 'Personal', ' پرسنل ', 'پرسنل', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT   PersonelNo, name_L1 + ''  '' + lastName_L1 AS PersonelName  FROM Pay.PersonelInfo',
        'SELECT  MIN(PersonelNo), MAX(PersonelNo)  FROM Pay.PersonelInfo ');
      if ShowModal = mrOk then
      begin
        GetFilterString;
        UpdateFilter;
      end; // if
    finally
      Free;
    end; // try
  end; // with
end;

procedure TMakeDocumentDecF.actAccountfExecute(Sender: TObject);
begin
  inherited;
  AccountpF.Enter(Getqry);
end;

procedure TMakeDocumentDecF.initCombos;
var
  FiledId: Integer;
begin
  initAccCombos(CmbDocType, cmbCompany);
  CmbDecExt.Clear;
  FiledId := 1;
  if optP.primaryLanguage <> 0 then
    FiledId := 2;
  with DMF.qryTmpTmpp do
  begin
    Active := False;
    SQL.Text := 'SELECT Pay.FormsInfo.FormInfoID';
    SQL.Add(',Pay.FormTypes.FormCaption_L1 + ''_'' +Pay.FormsInfo.InfoName_L1  AS DecExt_L1');
    SQL.Add(',Pay.FormTypes.FormCaption_L2 + ''_'' +Pay.FormsInfo.InfoName_L2  AS DecExt_L2');
    SQL.Add('FROM Pay.FormTypes INNER JOIN');
    SQL.Add('Pay.FormsInfo ON Pay.FormTypes.FormType = Pay.FormsInfo.FormType');
    SQL.Add('WHERE (Pay.FormTypes.SalaryKind in(6,12,13,8,15)) ');
    SQL.Add('OR (FormTypes.FormType in(92,111))');
    /// Salary_AriaNiroo_1394
    SQL.Add('ORDER BY  Pay.FormTypes.SalaryKind,Pay.FormTypes.FormType');
    Active := True;
    while not eof do
    begin
      CmbDecExt.AddItem(Fields[FiledId].AsString, TObject(Fields[0].AsInteger));
      Next;
    end; // while      DecExt
    Active := False;
  end; // with
  CmbDecExt.ItemIndex := 0;
  CmbDecExtChange(CmbDecExt);

end;

procedure TMakeDocumentDecF.InitEndDate;
begin
  cmbEndDate.Clear;
  with DMF.qryTmpTmpp do
  begin
    Active := False;
    SQL.Text := 'SELECT DISTINCT EndDate';
    SQL.Add('FROM Pay.PersonelDecExt');
    SQL.Add('WHERE (FormInfoID = ' + SalaryID.ToString + ')');
    Active := True;
    while not eof do
    begin
      cmbEndDate.AddItem(Fields[0].AsString, TObject(Fields[0].AsString));
      Next;
    end;
    Active := False;
  end;
  cmbEndDate.ItemIndex := cmbEndDate.Items.Count - 1;
end;

procedure TMakeDocumentDecF.InitForm;
var
  s: String;
begin
  FreeReservedCodes(DMF.qryTopicCode.Connection, '');
  GetSecondaryDocNo(ExtIPSalaryDec, cmbCompany, MskDocNo, APPBank.Year);

  GetSerial(ExtIPSalaryDec, cmbCompany, MskSerial, APPBank.Year);


  // if opt.AccOldAvailable then
  // begin
  // MskDocNo.Text :=
  // IntToStr(GetANewCode
  // ('SELECT max(DocGroups.SecondaryDocNo) FROM DocGroups ;',
  // 'SecondaryDocNo', DMF.adcOldAccounting));
  // end
  // else
  // begin
  // s := GetSecondaryDocNo(cmbCompany, YearID);
  // MskDocNo.Text := IntToStr(GetANewCode('',s, 'SecondaryDocNo',
  // DMF.qryTopicCode.Connection));
  // s := 'SELECT max(Serial) FROM Acc.DocGroups WHERE CompanyCode=' +
  // IntToStr(Integer(cmbCompany.Items.Objects[cmbCompany.ItemIndex])) +
  // ' AND  YearID = ' + IntToStr(YearID);
  // MskSerial.Text := IntToStr(GetANewCode('',s, 'Serial', DMF.adcAccounting));
  // end;

  mskDocDate.Text := var_glb_CurrentDate;
end;

procedure TMakeDocumentDecF.FormCreate(Sender: TObject);
var
  b: Boolean;
begin
  inherited;
  InitComboYearID(cmbYearID);
  if cmbYearID.ItemIndex > -1 then
    YearID_ := Integer(cmbYearID.Items.Objects[cmbYearID.ItemIndex]);
  SetLookUpCash(qryItems);
  SetLookUpCash(qryDetail);
  if opta.AccOldAvailable then
  begin
    Caption := Caption + ' (سامان) ';
    qryDocuments.Connection := DMF.adcOldAccounting;
    qryDocGroups.Connection := DMF.adcOldAccounting;
    qryItems.FieldByName('_CTopicName2').LookupDataSet := DMF.qry_CTopicCode;
    qryItems.FieldByName('_CTopicName2').KeyFields := 'AccCTopicCode';
    qryItems.FieldByName('_CTopicName2').LookupResultField := 'CTopicName_L1';
    qryItems.FieldByName('_CTopicName2').LookupKeyFields := 'CTopicCode';
    qryItems.FieldByName('_CTopicName3').LookupDataSet := DMF.qry_CTopicCode;
    qryItems.FieldByName('_CTopicName3').KeyFields := 'AccCTopicCode';
    qryItems.FieldByName('_CTopicName3').LookupResultField := 'CTopicName_L1';
    qryItems.FieldByName('_CTopicName3').LookupKeyFields := 'CTopicCode';

    qryDetail.FieldByName('_CTopicName2').LookupDataSet := DMF.qry_CTopicCode;
    qryDetail.FieldByName('_CTopicName2').KeyFields := 'AccCTopicCode';
    qryDetail.FieldByName('_CTopicName2').LookupResultField := 'CTopicName_L1';
    qryDetail.FieldByName('_CTopicName2').LookupKeyFields := 'CTopicCode';
    qryDetail.FieldByName('_CTopicName3').LookupDataSet := DMF.qry_CTopicCode;
    qryDetail.FieldByName('_CTopicName3').KeyFields := 'AccCTopicCode';
    qryDetail.FieldByName('_CTopicName3').LookupResultField := 'CTopicName_L1';
    qryDetail.FieldByName('_CTopicName3').LookupKeyFields := 'CTopicCode';
  end;
  MonthNo := var_glb_CurrentMonth;
  if MonthNo < 1 then
    MonthNo := 1;
  SqlText := qryItems.SQL.Text;
  initCombos;
  cmbCompany.ItemIndex := 0;
  PageControl1.TabIndex := 0;
  b := Readacc_BankConfig('CTopicCode1Active', '1') = '1';
  PnlAccCTopicCode.Visible := b;
  setColumns2(DBGrid1, b, 'AccCTopicCode');
  setColumns2(DBGrid2, b, 'AccCTopicCode');
  b := Readacc_BankConfig('CTopicCode2Active', '1') = '1';
  PnlAccCTopicCode2.Visible := b;
  setColumns2(DBGrid1, b, 'AccCTopicCode2');
  setColumns2(DBGrid2, b, 'AccCTopicCode2');

  b := Readacc_BankConfig('CTopicCode3Active', '1') = '1';
  setColumns2(DBGrid1, b, 'AccCTopicCode3');
  setColumns2(DBGrid2, b, 'AccCTopicCode3');

  // InitForm;
end;

procedure TMakeDocumentDecF.actMakeDocExecute(Sender: TObject);
var
  MakeDate: String;
begin
  inherited;
  if CmbDocType.ItemIndex = -1 then
  begin
    Warn('نوع سند انتخاب نشده است');
    Exit;
  end;
  if not checkSecondaryDocNo(StrToInt(trim(MskDocNo.Text)),
    Integer(cmbCompany.Items.Objects[cmbCompany.ItemIndex]), YearID_, True) then
    Exit;
  if qryDetail.Filtered or qryItems.Filtered then
    if get_response('اطلاعات فيلتر شده است آيا براي صدور سند مطمئن هستيد!!؟؟')
      <> mrYes then
      Exit;
  MakeDate := mskDocDate.Text;
  if not validate_date(False, '', '', 'تاريخ سند', MakeDate) then
    Exit;
  case PageControl1.TabIndex of
    0:
      AddDetail(AddMaster, qryItems);
    1:
      AddDetail(AddMaster, qryDetail);
  end;
        DocTransationInsert(qryDocGroups);
  FreeReservedCodes(DMF.qryTopicCode.Connection, '');
end;

function TMakeDocumentDecF.AddMaster: Integer;
begin
  with qryDocGroups do
  begin
    Active := True;
    Insert;
    FieldByName('SecondaryDocNo').AsInteger := StrToInt(trim(MskDocNo.Text));
    FieldByName('Serial').AsInteger := GetANewCode('','Acc.DocGroups', 'Serial',
      DMF.adcAccounting);
    FieldByName('YearID').AsInteger := YearID_;
    FieldByName('PrimaryDocNo').AsInteger := 0;
    FieldByName('DocDate').AsString := mskDocDate.Text;
    FieldByName('DocTopic_l1').AsString := MskDocTopic.Text;
    FieldByName('DocTypeCode').AsInteger :=
      Integer(CmbDocType.Items.Objects[CmbDocType.ItemIndex]);
    FieldByName('Status').AsInteger := 1;
    FieldByName('MakeDate').AsDateTime := now;
    FieldByName('UserID').AsInteger := User.id;
    FieldByName('CompanyCode').AsInteger :=
      Integer(cmbCompany.Items.Objects[cmbCompany.ItemIndex]);
    // FieldByName('Note').AsString:=Signature + '$d' + var_glb_CurrentDate + '$n' + FieldByName('SecondaryDocNo').AsString;
    Post;
    Result := FieldByName('Serial').AsInteger;
  end; // with  }
end;

procedure TMakeDocumentDecF.chkTaxClick(Sender: TObject);
begin
  inherited;
  pnlTax.Visible := chkTax.Checked;
  UpdateFilter
end;

procedure TMakeDocumentDecF.AddDetail(DocID: Integer; qry: TADOQuery);
var
  CTopicCode3: Boolean;
begin
  CTopicCode3 := qryDocuments.FindField('AccCTopicCode3') <> nil;
  with qry do
  begin
    First;
    qryDocuments.Active := True;
    while not eof do
    begin
      qryDocuments.Insert;
      // qryDocuments.FieldByName('ID').AsInteger:=GetANewCode('','acc.Documents','ID',DMf.ADCaccounting);

      if opta.AccOldAvailable then
      begin
      end
      else
      begin
        qryDocuments.FieldByName('CompanyCode').AsInteger :=
          Integer(cmbCompany.Items.Objects[cmbCompany.ItemIndex]);
      end;
      qryDocuments.FieldByName('Serial').AsInteger := DocID;
      qryDocuments.FieldByName('YearID').AsInteger := YearID_;
      qryDocuments.FieldByName('TopicCode').AsInteger :=
        FieldByName('AccTopicCode').AsInteger;
      qryDocuments.FieldByName('DetailCode').AsInteger :=
        FieldByName('AccDetailCode').AsInteger;
      qryDocuments.FieldByName('CTopicCode').AsInteger :=
        FieldByName('AccCTopicCode').AsInteger;
      qryDocuments.FieldByName('CTopicCode2').AsInteger :=
        FieldByName('AccCTopicCode2').AsInteger;
      if CTopicCode3 then
        qryDocuments.FieldByName('CTopicCode3').AsInteger :=
          FieldByName('AccCTopicCode3').AsInteger;
      qryDocuments.FieldByName('Comment_l1').AsString :=
        FieldByName('_dec').AsString;
      qryDocuments.FieldByName('Debt').AsCurrency := FieldByName('debt')
        .AsCurrency;
      qryDocuments.FieldByName('Credit').AsCurrency := FieldByName('credit')
        .AsCurrency;
      qryDocuments.FieldByName('Row').AsInteger := RecNo;
      qryDocuments.Post;
      Next;
    end; // while
    qryDocuments.Active := False;
  end; // with  }
  BigMessage('سند با شماره ' + MskDocNo.Text + ' ثبت شد.‏', 2);
end;

procedure TMakeDocumentDecF.FormShow(Sender: TObject);
begin
  inherited;
  ToolBar1.Buttons[MonthNo - 1].Down := True;
  myParams.Clear;
  actFilter.Execute;
  if myParams.FindParam('Personal') = nil then
    close;
  cmbCompany.Visible := gv_MultiCompany;
  Label8.Visible := cmbCompany.Visible;
  // CmbDocType.ItemIndex := 3;
  // cmbCompany.ItemIndex:=0;
end;

procedure TMakeDocumentDecF.actShowDocExecute(Sender: TObject);
var
  ErrorCount: Integer;
begin
  inherited;
  UpdateFilter;
  lslWarnings.Visible := False;
  ErrorCount := 0; // Error;
  actMakeDoc.Enabled := ErrorCount = 0;
  if ErrorCount > 0 then
  begin
    zbal.Title := IntToStr(ErrorCount) + 'خطا وجود دارد';
    zbal.Prompt.Text := 'جهت رويت از ليست خطاها استفاده كنيد.';
    zbal.Show(btnCheckDocument);
    FlashAControl(btnCheckDocument);
  end; // if
end;

procedure TMakeDocumentDecF.FormDestroy(Sender: TObject);
begin
  inherited;
  FreeReservedCodes(DMF.qryTopicCode.Connection, '');
end;

procedure TMakeDocumentDecF.DBGrid1EditButtonClick(Sender: TObject);
begin
  inherited;
  AccountpF.Enter(qryItems)
end;

procedure TMakeDocumentDecF.qryItemsAfterOpen(DataSet: TDataSet);
var
  credit, debt, c: Currency;
begin
  inherited;
  CloseMessage;
  credit := CalcSumFileds(qryItems.FieldByName('credit'));
  StatusBar1.Panels[0].Text := CurrToStrF(credit, ffCurrency, 0);
  debt := CalcSumFileds(qryItems.FieldByName('debt'));
  StatusBar1.Panels[1].Text := CurrToStrF(debt, ffCurrency, 0);
  c := debt - credit;
  StatusBar3.Panels[0].Text := CurrToStrF(c, ffCurrency, 0);
  actMakeDoc.Visible := c = 0;
  DecSet(qryItems);
end;

procedure TMakeDocumentDecF.cmbEndDateChange(Sender: TObject);
begin
  inherited;
  UpdateFilter
end;

procedure TMakeDocumentDecF.cmbGroupsChange(Sender: TObject);
begin
  inherited;
  UpdateFilter;
  actShowDoc.Execute;
end;

procedure TMakeDocumentDecF.cmbYearIDChange(Sender: TObject);
begin
  inherited;
  UpdateFilter;
end;

procedure TMakeDocumentDecF.RdGKindDocClick(Sender: TObject);
begin
  inherited;
  actShowDoc.Execute
end;

function TMakeDocumentDecF.Error: Integer;
begin
  Result := 0;
  with qryItems do
  begin
    DisableControls;
    First;
    while not eof do
    begin
      if (FieldByName('AccTopicCode').Value <> 0) and
        (FieldByName('_TopicName').IsNull) then
      begin
        Result := Result + 1;
        Next;
      end;
      if (FieldByName('AccDetailCode').Value <> 0) and
        (FieldByName('_DetailName').IsNull) then
      begin
        Result := Result + 1;
        Next;
      end;
      if (FieldByName('AccCTopicCode').Value <> 0) and
        (FieldByName('_CTopicName').IsNull) then
      begin
        Result := Result + 1;
        Next;
      end;
      if (FieldByName('AccCTopicCode2').Value <> 0) and
        (FieldByName('_CTopicName2').IsNull) then
      begin
        Result := Result + 1;
        Next;
      end;
      if (FieldByName('AccCTopicCode3').Value <> 0) and
        (FieldByName('_CTopicName3').IsNull) then
      begin
        Result := Result + 1;
        Next;
      end;
      Next;
    end; // while
    EnableControls;
  end; // with

end;

procedure TMakeDocumentDecF.actErrorListExecute(Sender: TObject);
var
  s: String;
begin
  inherited;
  if lslWarnings.Visible = True then
    lslWarnings.Visible := False
  else
  begin
    lslWarnings.Visible := True;
    lslWarnings.Clear;
    lslWarnings.Visible := True;
    if PageControl1.TabIndex = 0 then
      with qryItems do
      begin
        DisableControls;
        First;
        try
          while not eof do
          begin
            s := IfThen((FieldByName('_TopicName').AsString = '') and
              (FieldByName('AccTopicCode').AsString <> '0'),
              FieldByName('AccTopicCode').AsString);
            s := s + IfThen((FieldByName('_DetailName').AsString = '') and
              (FieldByName('AccDetailCode').AsString <> '0'),
              '-' + FieldByName('AccDetailCode').AsString);
            s := s + IfThen((FieldByName('_CTopicName').AsString = '') and
              (FieldByName('AccCTopicCode').AsString <> '0'),
              '-' + FieldByName('AccCTopicCode').AsString);
            s := s + IfThen((FieldByName('_CTopicName2').AsString = '') and
              (FieldByName('AccCTopicCode2').AsString <> '0'),
              '-' + FieldByName('AccCTopicCode2').AsString);
            s := s + IfThen((FieldByName('_CTopicName3').AsString = '') and
              (FieldByName('AccCTopicCode3').AsString <> '0'),
              '-' + FieldByName('AccCTopicCode3').AsString);
            if s <> '' then
              lslWarnings.Items.AddObject(Format('[رديف %d]: [خطا كد %s]',
                [RecNo, s]), TObject(qryItems.RecNo));
            Next;
          end; // while
        finally
          First;
          EnableControls;
        end; // try
      end // with
    else
    begin
      with qryDetail do
      begin
        DisableControls;
        First;
        try
          while not eof do
          begin
            s := IfThen((FieldByName('_TopicName').AsString = '') and
              (FieldByName('AccTopicCode').AsString <> '0'),
              FieldByName('AccTopicCode').AsString);
            s := s + IfThen((FieldByName('_DetailName').AsString = '') and
              (FieldByName('AccDetailCode').AsString <> '0'),
              '-' + FieldByName('AccDetailCode').AsString);
            s := s + IfThen((FieldByName('_CTopicName').AsString = '') and
              (FieldByName('AccCTopicCode').AsString <> '0'),
              '-' + FieldByName('AccCTopicCode').AsString);
            s := s + IfThen((FieldByName('_CTopicName2').AsString = '') and
              (FieldByName('AccCTopicCode2').AsString <> '0'),
              '-' + FieldByName('AccCTopicCode2').AsString);
            s := s + IfThen((FieldByName('_CTopicName3').AsString = '') and
              (FieldByName('AccCTopicCode3').AsString <> '0'),
              '-' + FieldByName('AccCTopicCode3').AsString);
            if s <> '' then
              lslWarnings.Items.AddObject(Format('[رديف %d]: [خطا كد %s]',
                [RecNo, s]), TObject(qryItems.RecNo));
            Next;
          end; // while
        finally
          First;
          EnableControls;
        end; // try
      end // with
    end; // else
  END; // ELSE
end;

procedure TMakeDocumentDecF.lslWarningsClick(Sender: TObject);
var
  i: Integer;
begin
  inherited;
  i := (Sender as TListBox).ItemIndex;
  if i = -1 then
    Exit;
  qryItems.First;
  qryItems.MoveBy(Integer((Sender as TListBox).Items.Objects[i]) - 1);
  lslWarnings.Hint := lslWarnings.Items[i];
end;

procedure TMakeDocumentDecF.actSendExcelExecute(Sender: TObject);
begin
  inherited;
  case PageControl1.TabIndex of
    0:
      DataToExcel(qryItems);
    1:
      DataToExcel(qryDetail);
  end;
end;

procedure TMakeDocumentDecF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  case PageControl1.TabIndex of
    0:
      search2F.ShowSearch(qryItems);
    1:
      search2F.ShowSearch(qryDetail);
  end;
end;

procedure TMakeDocumentDecF.actSortExecute(Sender: TObject);
begin
  inherited;
  case PageControl1.TabIndex of
    0:
      sort2F.ShowSort(qryItems);
    1:
      sort2F.ShowSort(qryDetail);
  end;
end;

procedure TMakeDocumentDecF.qryDetailAfterOpen(DataSet: TDataSet);
var
  credit, debt, c: Currency;
begin
  inherited;
  credit := CalcSumFileds(qryDetail.FieldByName('credit'));
  StatusBar2.Panels[0].Text := CurrToStrF(credit, ffCurrency, 0);
  debt := CalcSumFileds(qryDetail.FieldByName('debt'));
  StatusBar2.Panels[1].Text := CurrToStrF(debt, ffCurrency, 0);
  c := debt - credit;
  StatusBar4.Panels[0].Text := CurrToStrF(c, ffCurrency, 0);
  actMakeDoc.Visible := c = 0;
  DecSet(qryDetail);
end;

procedure TMakeDocumentDecF.ToolButton1Click(Sender: TObject);
begin
  inherited;
  MonthNo := (Sender as TToolButton).tag;    GetYearMounth(MonthNo);
  UpdateFilter;
end;

procedure TMakeDocumentDecF.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  MskAccCTopicCode2Tax.Text := SpeedButtonCTopicCode2(MskAccCTopicCode2Tax.Text,
    StrToInt(trim(mskAccTopicCodeTax.Text)));
  UpdateFilter;
end;

procedure TMakeDocumentDecF.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  MskAccTopicCode.Text := SpeedButtonTopicCode(trim(MskAccTopicCode.Text));
  UpdateFilter;
end;

procedure TMakeDocumentDecF.SpeedButton3Click(Sender: TObject);
begin
  inherited;
  MskAccDetailCode.Text := SpeedButtonDetailCode(MskAccDetailCode.Text,
    StrToInt(trim(MskAccTopicCode.Text)));
  UpdateFilter;
end;

procedure TMakeDocumentDecF.SpeedButton4Click(Sender: TObject);
begin
  inherited;
  MskAccCTopicCode.Text := SpeedButtonCTopicCode(MskAccCTopicCode.Text,
    StrToInt(trim(MskAccTopicCode.Text)));
  UpdateFilter;
end;

procedure TMakeDocumentDecF.SpeedButton5Click(Sender: TObject);
begin
  inherited;
  MskAccCTopicCodeTax.Text := SpeedButtonCTopicCode(MskAccCTopicCodeTax.Text,
    StrToInt(trim(mskAccTopicCodeTax.Text)));
  UpdateFilter;
end;

procedure TMakeDocumentDecF.SpeedButton6Click(Sender: TObject);
begin
  inherited;
  MskAccDetailCodeTax.Text := SpeedButtonDetailCode(MskAccDetailCodeTax.Text,
    StrToInt(trim(mskAccTopicCodeTax.Text)));
  UpdateFilter;
end;

procedure TMakeDocumentDecF.SpeedButton7Click(Sender: TObject);
begin
  inherited;
  mskAccTopicCodeTax.Text := SpeedButtonTopicCode
    (trim(mskAccTopicCodeTax.Text));
  UpdateFilter;
end;

procedure TMakeDocumentDecF.SBtnAccCTopicCode2Click(Sender: TObject);
begin
  inherited;
  MskAccCTopicCode.Text := SpeedButtonCTopicCode2(MskAccCTopicCode.Text,
    StrToInt(trim(MskAccTopicCode.Text)));
  UpdateFilter;
end;

procedure TMakeDocumentDecF.CmbDecExtChange(Sender: TObject);
begin
  inherited;
  SalaryID := Integer(CmbDecExt.Items.Objects[CmbDecExt.ItemIndex]);
  InitEndDate;
  if myParams.FindParam('Personal') <> nil then
    UpdateFilter
end;

procedure TMakeDocumentDecF.qryItemsBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  BigMessage('لطفا كمي صبر كنيد...‏', 0)
end;

procedure TMakeDocumentDecF.PageControl1Change(Sender: TObject);
begin
  inherited;
  case PageControl1.TabIndex of
    0:
      qryItems.Open;
    1:
      qryDetail.Open;
  end;

end;

function TMakeDocumentDecF.Getqry: TADOQuery;
begin
  case PageControl1.tag of
    1:
      Result := qryDetail;
  else
    Result := qryItems;
  end;

end;

procedure TMakeDocumentDecF.actCheckDocumentExecute(Sender: TObject);
// var
// qry: TADOQuery;
begin
  inherited;
  // qry := qryItems;
  // if PageControl1.TabIndex = 1 then
  // qry := qryDetail;
  //
  // if CheckDocument.ValidateDocument(mskDocDate.Text, APPBank.Year, qry, nil,
  // DMF.adcAccounting, lslWarnings, False) then
  // begin
  // Warn2('سند مورد تأييد است.');
  // actMakeDoc.Enabled := True;
  // end
  // else
  // begin
  // Warn('سند نامعتبر است.');
  // actMakeDoc.Enabled := False;
  // end; // else
  // lslWarnings.Visible := not actMakeDoc.Enabled;

  PnlUnderButton.Enabled := True;

  CheckDoc1.QuerySource := Getqry;
  PnlUnderButton.Enabled := False;
  if opta.AccOldAvailable then
    if ValidateOldDocument(Getqry, lslWarnings) then
    begin
      Warn2('سند مورد تأييد است.');
      actMakeDoc.Enabled := True;
    end
    else
    begin
      Warn('سند نامعتبر است.');
      actMakeDoc.Enabled := True;
    end
  else if CheckDocument.ValidateDocument(mskDocDate.Text, YearID_, Getqry, nil,
    DMF.adcAccounting, lslWarnings, False) then
  begin
    Warn2('سند مورد تأييد است.');
    actMakeDoc.Enabled := True;
  end
  else
  begin
    Warn('سند نامعتبر است.');
    actMakeDoc.Enabled := False;
  end; // else
  lslWarnings.Visible := not actMakeDoc.Enabled;

  // lslWarnings.Visible := (lslWarnings.Visible); // (RdGKindDoc.Visible) or
  PnlUnderButton.Enabled := True;

end;

procedure TMakeDocumentDecF.actChangeDecExecute(Sender: TObject);
var
  qry: TADOQuery;
begin
  inherited;
  qry := qryItems;
  if PageControl1.TabIndex = 1 then
    qry := qryDetail;
  With qry do
  begin
    First;
    while not eof do
    begin
      Edit;
      FieldByName('_Dec').AsString :=
        trim('سندحقوق ' + ToolBar1.Buttons[MonthNo - 1].Caption + ' ماه:' +
        FieldByName('_TopicName').AsString + ' ' + FieldByName('_DetailName')
        .AsString + ' ' + FieldByName('_CTopicName').AsString + ' ' +
        FieldByName('_CTopicName2').AsString + ' ' + FieldByName('_CTopicName3')
        .AsString);
      Next;
    end;
  end;
  BigMessage('انجام شد.‏', 1);

end;

procedure TMakeDocumentDecF.actSendWarnToExcelExecute(Sender: TObject);
begin
  inherited;
  case PageControl1.TabIndex of
    0:
      SendWarnDBGridToExcelc(DBGrid1, lslWarnings);
    1:
      SendWarnDBGridToExcelc(DBGrid2, lslWarnings);
  else
    SendWarnDBGridToExcelc(DBGrid1, lslWarnings);
  end;

end;

end.
