unit FrmInfo_2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, Buttons, StdCtrls, Mask, DBCtrls, ImgList,
  DBActns, ActnList, ExtCtrls, Grids, DBGrids, DB, ADODB;

type
  TFrmInfo_2F = class(Ttemplate2MDIF)
    DBEdit1: TDBEdit;
    SpeedButton1: TSpeedButton;
    DBEdit2: TDBEdit;
    Label1: TLabel;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    newPanel: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn7: TBitBtn;
    qryItem: TADOQuery;
    qryMaster: TADOQuery;
    SrcMaster: TDataSource;
    SrcItem: TDataSource;
    qryMasterFormInfoID: TIntegerField;
    qryMasterFormType: TIntegerField;
    qryMasterInfoID: TIntegerField;
    qryMasterInfoName_L1: TStringField;
    qryMasterInfoName_L2: TStringField;
    qryInitForm: TADOQuery;
    qryInitFormFormType: TSmallintField;
    qryInitFormFormCaption_L1: TStringField;
    qryInitFormFormCaption_L2: TStringField;
    qryInitFormDurationDayActive: TWordField;
    qryInitFormDurationTimeActive: TWordField;
    qryInitFormExemptPersonActive: TWordField;
    qryInitFormSalaryEffectKind: TWordField;
    qryInitFormKargozinyEffectKind: TWordField;
    qryInitFormRecalSalaryTypes: TStringField;
    qryInitFormSalaryKind: TWordField;
    qryInitFormCoefficientActive: TWordField;
    qryInitFormAmountActive: TWordField;
    qryInitFormAmount2Active: TWordField;
    qryInitFormRecallFormTypes: TSmallintField;
    qryInitFormUseEndMounthKind: TWordField;
    qryInitFormAidInfoNo1Active: TWordField;
    qryInitFormAidInfoDate1Active: TWordField;
    qryInitFormAidInfo1Caption: TStringField;
    qryInitFormAidInfoNo2Active: TWordField;
    qryInitFormAidInfoDate2Active: TWordField;
    qryInitFormAidInfo2Caption: TStringField;
    qryInitFormTopicCodeKind: TWordField;
    qryInitFormDetailCodeKind: TWordField;
    qryInitFormCTopicCodeKind: TWordField;
    qryInitFormCTopicCode2Kind: TWordField;
    qryInitFormDisplayFormType: TWordField;
    qryInitFormReportFileName1: TStringField;
    qryInitFormReportFileName2: TStringField;
    qryInitFormReportFileName3: TStringField;
    qryInitFormReportFileName4: TStringField;
    qryInitFormNote_L1: TMemoField;
    qryInitFormNote_L2: TMemoField;
    qryInitFormWordDocumentsActive: TWordField;
    qryInitFormFunctionShow: TWordField;
    qryInitFormRecalKindClock: TWordField;
    actSendToExcel: TAction;
    actSort: TAction;
    qryItemFormInfoID: TIntegerField;
    qryItemFormType: TIntegerField;
    qryItemInfoID: TIntegerField;
    qryItemInfoName_L1: TStringField;
    qryItemInfoName_L2: TStringField;
    qryItemPrvInfoID: TIntegerField;
    qryItemAmount: TBCDField;
    qryItemAmount2: TBCDField;
    qryItemCoefficient: TFloatField;
    qryItemStandardDays: TFloatField;
    qryItemStandardTimes: TFloatField;
    qryItemAccTopicCode: TIntegerField;
    qryItemAccDetailCode: TIntegerField;
    qryItemAccCTopicode: TIntegerField;
    qryItemAccCTopicode2: TIntegerField;
    qryItemCalCulateType: TWordField;
    qryItemRecallFormInfoID1: TStringField;
    qryItemRecallFormInfoID2: TStringField;
    qryItemRecalKindClock: TWordField;
    qryItemWordDocuments: TStringField;
    procedure actSendToExcelExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure qryMasterAfterScroll(DataSet: TDataSet);
    procedure qryItemCalCulateTypeGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure qryItemRecalKindClockGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure qryItemAfterInsert(DataSet: TDataSet);
    procedure qryItemCalCulateTypeSetText(Sender: TField;
      const Text: String);
    procedure qryItemAfterEdit(DataSet: TDataSet);
  private
    { Private declarations }
    FormType:Byte;
    procedure InitForm;
  public
    { Public declarations }
  end;

var
  FrmInfo_2F: TFrmInfo_2F;

implementation

uses DM, GlobalPro, search2, sort2, searchCode_ADO, EditNewFormInfo_2;

{$R *.dfm}

procedure TFrmInfo_2F.actSendToExcelExecute(Sender: TObject);
begin
  inherited;
  SendDBGridToExcel(DBGrid1);
end;

procedure TFrmInfo_2F.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryItem);
end;

procedure TFrmInfo_2F.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryItem);
end;

procedure TFrmInfo_2F.FormCreate(Sender: TObject);
begin
  inherited;
  FormType:=var_glb_gParam;
  InitForm;
end;

procedure TFrmInfo_2F.InitForm;
begin
  with qryInitForm do
  begin
    Active:=false;
    Parameters.ParamByName('FormType').Value:=FormType;
    Active:=true;
  end;//with qryInitForm
  with qryMaster do
  begin
    Active:=false;
    Parameters.ParamByName('RecallFormTypes').Value:=qryInitForm.Fieldbyname('RecallFormTypes').AsInteger;
    Active:=true;
  end;//with qryMaster
  DBGrid1.Columns[3].Visible:=qryInitForm.FieldByName('ExemptPersonActive').AsInteger=1;
  DBGrid1.Columns[4].Visible:=qryInitForm.FieldByName('AmountActive').AsInteger=1;
  DBGrid1.Columns[5].Visible:=qryInitForm.FieldByName('CoefficientActive').AsInteger=1;
  DBGrid1.Columns[6].Visible:=qryInitForm.FieldByName('DurationDayActive').AsInteger=1;
  DBGrid1.Columns[7].Visible:=qryInitForm.FieldByName('DurationTimeActive').AsInteger=1;
  DBGrid1.Columns[14].Visible:=qryInitForm.FieldByName('RecalKindClock').AsInteger=1;
end;

procedure TFrmInfo_2F.SpeedButton1Click(Sender: TObject);
var
  Txt:  String;
  s:Boolean;
  Results:  array[0..2] of String;
begin
  inherited;
  txt:='SELECT  InfoID, InfoName_L1, InfoName_L2  FROM Pay.FormsInfo  WHERE   (FormType ='+inttostr(qryInitForm.Fieldbyname('RecallFormTypes').AsInteger)+' )';
  s:=searchCode_ADOF.SearchCode2(DMF.adcSalary,' ﬂœ Ê ”ÿÕ ⁄‰Ê«‰ ﬁ»·Ì ', txt,
    ['ﬂœ','⁄‰Ê«‰ 1','⁄‰Ê«‰ 2'],
    Results,[50,100,100],alLeft);
  if s then
    qryMaster.Locate('InfoID',Results[0],[]);
end;


procedure TFrmInfo_2F.qryMasterAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qryItem do
  begin
    Active:=false;
    Parameters.ParamByName('FormInfoID').Value:=qryMaster.Fieldbyname('FormInfoID').AsInteger;
    Parameters.ParamByName('FormType').Value:=qryMaster.Fieldbyname('FormType').AsInteger ;
    Active:=true;
  end;//with
end;

procedure TFrmInfo_2F.qryItemCalCulateTypeGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  case qryItem.FieldByName('CalCulateType').AsInteger of
    0:Text:='‰œ«—œ';
    1:Text:='÷—Ì» «“ 30 —Ê“';
    2:Text:='÷—Ì» «“ „«Â';
    3:Text:='„»·€ À«» ';
    4:Text:='„Õ«”»« Ì';
  end;//case
end;

procedure TFrmInfo_2F.qryItemRecalKindClockGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  case Sender.Value of
    0:Text:='‰œ«—œ';
    1:Text:='«÷«›Â ﬂ«—Ì';
    2:Text:='‘»ﬂ«—Ì';
    3:Text:='‰Ê»  ﬂ«—Ì';
    4:Text:=' ⁄ÿÌ· ﬂ«—Ì';
    5:Text:='€Ì» ';
    6:Text:='„—Œ’Ì ”«⁄ Ì';
    7:Text:='„—Œ’Ì «” Õﬁ«ﬁÌ';
    8:Text:='„—Œ’Ì «” ⁄·«ÃÌ';
    9:Text:='„—Œ’Ì »œÊ‰ ÕﬁÊﬁ';
  end;//case
end;

procedure TFrmInfo_2F.FormDestroy(Sender: TObject);
begin
  inherited;
   SaveColWidth(DBGrid1);
end;

procedure TFrmInfo_2F.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1,14);
end;

procedure TFrmInfo_2F.qryItemAfterInsert(DataSet: TDataSet);
begin
  inherited;

  with qryItem do
  begin
    FieldByName('FormInfoID').AsInteger:=GetANewCode('','FormsInfo','FormInfoID',DMf.adcSalary);
    DataSet.FieldByName('InfoID').AsInteger:=GetANewCode('','SELECT MAX(InfoID) FROM Pay.FormsInfo WHERE(FormType = '+qryInitForm.fieldbyname('FormType').AsString+')','InfoID');
    FieldByName('FormType').AsInteger:=FormType;
    FieldByName('PrvInfoID').AsInteger:=qryMaster.Fieldbyname('FormInfoID').AsInteger;
  end;//with
   EditNewFormInfo_2F.Enter;
end;

procedure TFrmInfo_2F.qryItemCalCulateTypeSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.AsInteger:=EditNewFormInfo_2F.DBCmbCalcu.ItemIndex;
end;

procedure TFrmInfo_2F.qryItemAfterEdit(DataSet: TDataSet);
begin
  inherited;
  EditNewFormInfo_2F.Enter;
end;

end.
