unit FormName_FormInfo_1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, Grids, DBGrids, DB, ADODB;

type
  TFormName_FormInfo_1F = class(Ttemplate2MDIF)
    DBGrid1: TDBGrid;
    qryFormInfo: TADOQuery;
    srcFormInfo: TDataSource;
    qryFormInfoID: TIntegerField;
    qryFormInfoFormType: TIntegerField;
    qryFormInfoInfoID: TIntegerField;
    qryFormInfoInfoName_L1: TStringField;
    qryFormInfoInfoName_L2: TStringField;
    qryFormInfoPrvInfoID: TIntegerField;
    qryFormInfoAmount: TBCDField;
    qryFormInfoAmount2: TBCDField;
    qryFormInfoCoefficient: TFloatField;
    qryFormInfoStandardDays: TFloatField;
    qryFormInfoStandardTimes: TFloatField;
    qryFormInfoAccTopicCode: TIntegerField;
    qryFormInfoAccDetailCode: TIntegerField;
    qryFormInfoAccCTopicode: TIntegerField;
    cmbType: TComboBox;
    Label1: TLabel;
    qryFormType: TADOQuery;
    qryFormTypeFormType: TSmallintField;
    qryFormTypeFormCaption_L1: TStringField;
    qryFormTypeFormCaption_L2: TStringField;
    qryFormTypeDurationDayActive: TWordField;
    qryFormTypeDurationTimeActive: TWordField;
    qryFormTypeExemptPersonActive: TWordField;
    qryFormTypeSalaryEffectKind: TWordField;
    qryFormTypeKargozinyEffectKind: TWordField;
    qryFormTypeRecalSalaryTypes: TStringField;
    qryFormTypeSalaryKind: TWordField;
    qryFormTypeCoefficientActive: TWordField;
    qryFormTypeAmountActive: TWordField;
    qryFormTypeAmount2Active: TWordField;
    qryFormTypeRecallFormTypes: TSmallintField;
    qryFormTypeUseEndMounthKind: TWordField;
    qryFormTypeAidInfoNo1Active: TWordField;
    qryFormTypeAidInfoDate1Active: TWordField;
    qryFormTypeAidInfo1Caption: TStringField;
    qryFormTypeAidInfoNo2Active: TWordField;
    qryFormTypeAidInfoDate2Active: TWordField;
    qryFormTypeAidInfo2Caption: TStringField;
    qryFormTypeTopicCodeKind: TWordField;
    qryFormTypeDetailCodeKind: TWordField;
    qryFormTypeCTopicCodeKind: TWordField;
    qryFormTypeCTopicCode2Kind: TWordField;
    qryFormTypeDisplayFormType: TWordField;
    qryFormTypeReportFileName1: TStringField;
    qryFormTypeReportFileName2: TStringField;
    qryFormTypeReportFileName3: TStringField;
    qryFormTypeReportFileName4: TStringField;
    qryFormTypeNote_L1: TMemoField;
    qryFormTypeNote_L2: TMemoField;
    qryFormTypeWordDocumentsActive: TWordField;
    qryFormTypeFunctionShow: TWordField;
    qryFormTypeRecalKindClock: TWordField;
    newPanel: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    okPanel: TPanel;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    actSort: TAction;
    actSendToExcel: TAction;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn6: TBitBtn;
    qryFormInfoAccCTopicode2: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure srcFormInfoStateChange(Sender: TObject);
    procedure qryFormInfoAfterInsert(DataSet: TDataSet);
    procedure cmbTypeChange(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actSendToExcelExecute(Sender: TObject);
    procedure qryFormInfoBeforeDelete(DataSet: TDataSet);
    procedure qryFormInfoAfterPost(DataSet: TDataSet);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure qryFormInfoAfterDelete(DataSet: TDataSet);
  private
    FormType:Byte;
    procedure initCombo;
    procedure gridkeyenter(Sender: TObject;var key: char);

    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormName_FormInfo_1F: TFormName_FormInfo_1F;

implementation

uses DM, Math, StrUtils, SalaryFunctions, search2, sort, sort2, GlobalPro,
  mmessage, sndkey32;

{$R *.dfm}

{ TFormName_FormInfo_1F }

procedure TFormName_FormInfo_1F.gridkeyenter(Sender: TObject;var key: char);
var
  nextIndex:  Integer;
  curIndex:   Integer;
  aDataSet: TDataSet;
  c:  String;
begin
  curIndex:=(Sender as TDBGrid).SelectedIndex;
  nextIndex:=curIndex;
  case key of
    #13:  begin
      if shiftDown then exit;
      aDataSet:=(Sender as TDBGrid).DataSource.DataSet;
      key:=#0;
      case curIndex of
        0: nextIndex:=IfThen((aDataSet.FieldByName('InfoID').AsString='') ,0,1);
        1: nextIndex:=IfThen((aDataSet.FieldByName('InfoName_L1').AsString='') ,1,2);
        2: nextIndex:=IfThen(aDataSet.FieldByName('InfoName_L2').AsString='',2,-1);
      end;//case
    end;//#13
    '+': begin
      key:=#0;
      nextIndex:=curIndex-1;
      while (nextIndex>=0) and (not (DBGrid1.Columns[nextIndex].Visible) OR (DBGrid1.Columns[nextIndex].ReadOnly)) do
        Dec(nextIndex);
      if nextIndex<0 then nextIndex:=-3;
    end;// +
    '*':  begin
      key:=#0;
      SendKeys('000',false);
    end;// *
    #27: if (sender as TDBGrid).DataSource.DataSet.State in dseditmodes then (sender as TDBGrid).DataSource.DataSet.Cancel;
    #32,#157:  if curIndex in [1..4] then begin
      key:=#0;
//      DBGrid1EditButtonClick(sender);
    end;//if
  end;//case
  if nextIndex>=0 then
    while (nextIndex<DBGrid1.Columns.Count) and (not (DBGrid1.Columns[nextIndex].Visible) OR (DBGrid1.Columns[nextIndex].ReadOnly)) do
      Inc(nextIndex);
  if nextIndex>=(Sender as TDBGrid).Columns.Count then nextIndex:=-1;
  if (curindex<>nextindex) then
    case nextindex of
       -1: begin
            sendkey(vk_down,[],false);
            (sender as TDBGrid).selectedindex:=0;
          end;//0
       -2:  begin
              if (sender as TDBGrid).DataSource.State in dsEditmodes then (sender as TDBGrid).datasource.DataSet.Cancel;
              Perform(WM_NEXTDLGCTL,0,0);
            end;//-2
       -3:  begin
              if (sender as TDBGrid).DataSource.State in dsEditmodes then (sender as TDBGrid).datasource.DataSet.Cancel;
              Perform(WM_NEXTDLGCTL,1,0);
            end;//-3
       else
            (sender as TDBGrid).selectedindex:=nextIndex;
    end;//case

end;

procedure TFormName_FormInfo_1F.initCombo;
begin
  cmbType.Clear;
  with qryFormType do begin
    Active:=False;
    Active:=True;
    while not Eof do begin
      cmbType.AddItem(IfThen(opt.primaryLanguage=1,fieldbyname('FormCaption_L1').asstring,fieldbyname('FormCaption_L2').asstring),
                      TObject(FieldByName('FormType').AsInteger));
      Next;
    end;//while
  end;//with
end;

procedure TFormName_FormInfo_1F.FormCreate(Sender: TObject);
begin
  inherited;
  initCombo;
  cmbType.ItemIndex:=0;
  cmbTypeChange(Sender);
end;

procedure TFormName_FormInfo_1F.FormShow(Sender: TObject);
begin
  inherited;
  setColumns(DBGrid1,'#01',opt.LanguageDisplay1);
  setColumns(DBGrid1,'#02',opt.LanguageDisplay2);
end;

procedure TFormName_FormInfo_1F.srcFormInfoStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible:=qryFormInfo.State in dsEditModes;
  newPanel.Visible:=not okPanel.Visible;
  BtnReject.Cancel:=newPanel.Visible;
  FreeReservedCodes(Dmf.adcSalary);

end;

procedure TFormName_FormInfo_1F.qryFormInfoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DBGrid1.SetFocus;
  DataSet.FieldByName('FormType').AsInteger:=qryFormType.fieldbyname('FormType').AsInteger;
  DataSet.FieldByName('ID').AsInteger:=GetANewCode('','Formsinfo','ID');
  DataSet.FieldByName('InfoID').AsInteger:=GetANewCode('','SELECT MAX(InfoID) FROM Pay.FormsInfo WHERE(FormType = '+qryFormType.fieldbyname('FormType').AsString+')','InfoID');

end;

procedure TFormName_FormInfo_1F.cmbTypeChange(Sender: TObject);
begin
  inherited;
  if cmbType.ItemIndex=-1 then exit;
  with qryFormInfo do begin
    Active:=False;
    Parameters.ParamByName('Type').Value:=integer(cmbType.Items.Objects[cmbType.ItemIndex]);
    Active:=True;
  end;//with
  qryFormType.Locate('FormType',integer(cmbType.Items.Objects[cmbType.ItemIndex]),[])
end;

procedure TFormName_FormInfo_1F.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryFormInfo);
end;

procedure TFormName_FormInfo_1F.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryFormInfo);
end;

procedure TFormName_FormInfo_1F.actSendToExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(qryFormInfo);
end;

procedure TFormName_FormInfo_1F.qryFormInfoBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if get_response('¬Ì« «“ Õ–› „ÿ„∆‰ Â” Ìœ.')<>mrYes then Abort;
end;

procedure TFormName_FormInfo_1F.qryFormInfoAfterPost(DataSet: TDataSet);
begin
  inherited;
 // BigMessage('À»‹‹  ‘œ',1);
end;

procedure TFormName_FormInfo_1F.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  gridkeyenter(Sender,key);
end;

procedure TFormName_FormInfo_1F.qryFormInfoAfterDelete(DataSet: TDataSet);
begin
  inherited;
  BigMessage('Õ‹–› ‘‹‹œ',1);
end;

end.


