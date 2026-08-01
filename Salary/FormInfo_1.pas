unit FormInfo_1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, Grids, Vcl.DBGrids, DB, ADODB, ppCtrls, ppBands, ppVar, ppPrnabl,
  ppClass, ppCache, ppProd, ppReport, ppDB, ppComm, ppRelatv, ppDBPipe,
  ppParameter, ppDesignLayer, System.ImageList, System.Actions;

type
  TFormInfo_1F = class(Ttemplate2MDIF)
    DBGrid1: TDBGrid;
    qryFormInfo: TADOQuery;
    srcFormInfo: TDataSource;
    qryFormInfoID: TIntegerField;
    qryFormInfoFormType: TIntegerField;
    qryFormInfoInfoID: TIntegerField;
    qryFormInfoInfoName_L1: TStringField;
    qryFormInfoInfoName_L2: TStringField;
    cmbType: TComboBox;
    Label1: TLabel;
    qryFormType: TADOQuery;
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
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppLabel1: TppLabel;
    ppLblFromCaption: TppLabel;
    pplblPrintDate: TppLabel;
    ppHeaderBand1: TppHeaderBand;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppSysVarPageNo: TppSystemVariable;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLabel7: TppLabel;
    ppLabel6: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText3: TppDBText;
    ppDBText2: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppLine3: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppLine4: TppLine;
    ppLabel8: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppLine5: TppLine;
    ppLine6: TppLine;
    AcPrint: TAction;
    BitBtn9: TBitBtn;
    qryFormInfoTaxCode: TWordField;
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
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure AcPrintExecute(Sender: TObject);
    procedure ppLblFromCaptionGetText(Sender: TObject; var Text: String);
    procedure pplblPrintDateGetText(Sender: TObject; var Text: String);
    procedure ppSysVarPageNoGetText(Sender: TObject; var Text: String);
    procedure qryFormInfoBeforePost(DataSet: TDataSet);
  private
    FormType:Byte;
    procedure initCombo;
    procedure gridkeyenter(Sender: TObject;var key: char);

    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormInfo_1F: TFormInfo_1F;

implementation

uses DM, Math, StrUtils, SalaryFunctions, search2, sort2, GlobalPro,
  mmessage, sndkey32;

{$R *.dfm}

{ TFormName_FormInfo_1F }

procedure TFormInfo_1F.gridkeyenter(Sender: TObject;var key: char);
var
  nextIndex:  Integer;
  curIndex:   Integer;
  aDataSet: TDataSet;
//  c:  String;
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
        2: nextIndex:=IfThen(aDataSet.FieldByName('InfoName_L2').AsString='',2,3);
        3: nextIndex:=-1;
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
//    #32,#157:  if curIndex in [1..4] then begin
//      key:=#0;
////      DBGrid1EditButtonClick(sender);
//    end;//if
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

procedure TFormInfo_1F.initCombo;
begin
  cmbType.Clear;
  with qryFormType do begin
    Active:=False;
    Active:=True;
    while not Eof do begin
      cmbType.AddItem(IfThen(optP.primaryLanguage=0,fieldbyname('FormCaption_L1').asstring,fieldbyname('FormCaption_L2').asstring),
                      TObject(FieldByName('FormType').AsInteger));
      Next;
    end;//while
  end;//with
end;

procedure TFormInfo_1F.FormCreate(Sender: TObject);
begin
  inherited;
  FormType:=var_glb_gParam;
  with qryFormType do
  begin
    Active:=False;
    Parameters.ParamByName('Type').Value:=FormType;
    Active:=True;
  end;//with
  initCombo;
  cmbType.ItemIndex:=0;
  cmbTypeChange(Sender);
end;

procedure TFormInfo_1F.FormShow(Sender: TObject);
begin
  inherited;
  setColumns2(DBGrid1,optP.LanguageDisplay1,'InfoName_L1');
  setColumns2(DBGrid1,optP.LanguageDisplay2,'InfoName_L2');
end;

procedure TFormInfo_1F.srcFormInfoStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible:=qryFormInfo.State in dsEditModes;
  newPanel.Visible:=not okPanel.Visible;
  BtnReject.Cancel:=newPanel.Visible;
  FreeReservedCodes(Dmf.adcSalary);

end;

procedure TFormInfo_1F.qryFormInfoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DBGrid1.SetFocus;
  DataSet.FieldByName('FormType').AsInteger:=qryFormType.fieldbyname('FormType').AsInteger;
  DataSet.FieldByName('FormInfoID').AsInteger:=GetANewCode('','Pay.Formsinfo','FormInfoID');


  DataSet.FieldByName('InfoID').AsInteger:=GetANewCode('',
    'SELECT MAX(InfoID) FROM Pay.FormsInfo WHERE(FormType = '+
    qryFormType.fieldbyname('FormType').AsString+')','InfoID');
end;

procedure TFormInfo_1F.cmbTypeChange(Sender: TObject);
begin
  inherited;
  if cmbType.ItemIndex=-1 then exit;
  with qryFormInfo do begin
    Active:=False;
    Parameters.ParamByName('Type').Value:=integer(cmbType.Items.Objects[cmbType.ItemIndex]);
    Active:=True;
  end;//with
  qryFormType.Locate('FormType',integer(cmbType.Items.Objects[cmbType.ItemIndex]),[]);
  setColumns2(DBGrid1,qryFormType.fieldbyname('TaxCodeShow').AsInteger>0,'TaxCode');
end;

procedure TFormInfo_1F.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryFormInfo);
end;

procedure TFormInfo_1F.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryFormInfo);
end;

procedure TFormInfo_1F.actSendToExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TFormInfo_1F.qryFormInfoBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if not FormInfoDelete(DataSet.FieldByName('FormInfoID').AsInteger) then
    Abort;
  if get_response('¬Ì« «“ Õ–› „ÿ„∆‰ Â” Ìœ.')<>mrYes then Abort;
end;

procedure TFormInfo_1F.qryFormInfoAfterPost(DataSet: TDataSet);
begin
  inherited;
  BigMessage('À»‹‹  ‘œ',1);
end;

procedure TFormInfo_1F.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  gridkeyenter(Sender,key);
end;

procedure TFormInfo_1F.qryFormInfoAfterDelete(DataSet: TDataSet);
begin
  inherited;
  BigMessage('Õ‹–› ‘‹‹œ',1);
end;

procedure TFormInfo_1F.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1,IntToStr(FormType));
end;

procedure TFormInfo_1F.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1,1,True,IntToStr(FormType));
end;

procedure TFormInfo_1F.AcPrintExecute(Sender: TObject);
begin
  inherited;
  try
    qryFormInfo.DisableControls;
    SetSendToBackShapeOnPrint(Self);
    ppReport1.Print;
  finally
    qryFormInfo.EnableControls;
  end//try
end;

procedure TFormInfo_1F.ppLblFromCaptionGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text:=Text+' '+cmbType.Text;
end;

procedure TFormInfo_1F.pplblPrintDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text:=GetPrintDate;
end;

procedure TFormInfo_1F.ppSysVarPageNoGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text:=GetPageNumberString(Text)
end;

procedure TFormInfo_1F.qryFormInfoBeforePost(DataSet: TDataSet);
begin
  inherited;
  TrimStringFields(DataSet);
  if not ValidInfoName(DataSet,qryFormType) then Abort;
end;

end.


