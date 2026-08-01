unit PortionInDoc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template4, DBActns, ActnList, StdCtrls, Buttons, ExtCtrls,
  Grids, Vcl.DBGrids, DB, ADODB, SumDBGrid, Mask, DBCtrls, System.Actions;

type
  TPortionInDocF = class(TTemplate4F)
    Panel2: TPanel;
    Label1: TLabel;
    cmbBasic: TComboBox;
    Label2: TLabel;
    edtValue: TEdit;
    Label3: TLabel;
    edtTopicCode: TEdit;
    SpeedButton1: TSpeedButton;
    Label4: TLabel;
    edtDetail: TEdit;
    Label5: TLabel;
    RadioGroup1: TRadioGroup;
    cmbLevelPortion: TComboBox;
    SpeedButton2: TSpeedButton;
    edtCaption: TEdit;
    DBGrid2: TDBGrid;
    actCal: TAction;
    qryDetailPortion: TADOQuery;
    qryDetailPortionFormInfoID: TIntegerField;
    qryDetailPortionCTopicCode: TIntegerField;
    qryDetailPortion_TopicCode: TIntegerField;
    qryDetailPortionCenterTopics2: TIntegerField;
    qryDetailPortion_TopicName: TStringField;
    qryDetailPortionCTopicName_L1: TStringField;
    qryDetailPortionCTopicName2_L1: TStringField;
    qryDetailPortionExpName_L1: TStringField;
    qryDetailPortionCofficientItem: TFloatField;
    qryDetailPortionamount: TFloatField;
    qryDetailPortiondetailCode: TStringField;
    srcDetailPortion: TDataSource;
    qryDoc: TADOQuery;
    qryFindTopicCode: TADOQuery;
    btnCal: TBitBtn;
    SumGrid1: TSumGrid;
    Label6: TLabel;
    actSoudor: TAction;
    btnSoudor: TBitBtn;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actCalExecute(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actSoudorExecute(Sender: TObject);
    procedure edtTopicCodeKeyPress(Sender: TObject; var Key: Char);
    procedure edtDetailKeyPress(Sender: TObject; var Key: Char);
  private
    AccCaption:String;
    DetailCaption:String;
    SNDOC:Integer;
    procedure InitCombo;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PortionInDocF: TPortionInDocF;

implementation

uses DateUtils, Dm, searchCode_ADO, GlobalPro, mmessage;

{$R *.dfm}

{ TPortionInDocF }

procedure TPortionInDocF.InitCombo;

begin

  cmbBasic.Clear;
  cmbLevelPortion.Clear;
  with TADOQuery.Create(Self) do
  try
    Connection := Dmf.adcAccounting;
    SQL.Text := 'SELECT FormInfoID,InfoName_L1 FROM FormsInfo  WHERE  (FormType = 10)';
    Open;
    while not Eof do
    begin
      cmbBasic.AddItem(Fields[1].AsString,TObject(Fields[0].AsInteger));
      Next;
    end;
    close;
    SQL.Text := 'SELECT InfoID,InfoName_L1 FROM dbo.FormsInfo WHERE (FormType = 14)' ;
    Open;
    while not Eof do
    begin
      cmbLevelPortion.AddItem(Fields[1].AsString,TObject(Fields[0].AsInteger));
      Next;
    end;

  finally
    Free;
  end;
end;

procedure TPortionInDocF.SpeedButton1Click(Sender: TObject);
var
  sqlText:String;
  Results: array[0..1] of String;
begin
  inherited;
  sqlText:= 'SELECT Acc.Categories.TopicCode, Acc.Categories.MoeenName_l1 FROM Acc.Categories LEFT OUTER JOIN ' +
  'Acc.CategoriesForUse ON Acc.Categories.TopicCode = Acc.CategoriesForUse.PrvTopicCode WHERE     (Acc.CategoriesForUse.PrvTopicCode IS NULL) ' ;
  if searchCode_ADOF.SearchCode2(dmF.adcAccounting,'حسابهاي معین', sqlText,
  ['كد حساب','شرح'],results,[80,250],alLeft) then
  begin
    edtTopicCode.Text:=results[0];
    AccCaption:= results[1];
    edtCaption.Text := AccCaption + '--'+DetailCaption;
  end;//if

end;

procedure TPortionInDocF.SpeedButton2Click(Sender: TObject);
var
  c: String;

begin
  inherited;
   DetailCaption := searchCode_ADOF.SearchCode(dmF.adcAccounting,c,'كدهاي تفصيلي مرتبط با '+ AccCaption,
            'SELECT Details.DetailCode, Details.DetailName_L1 FROM Details ' +
            'INNER JOIN DetailRange ON Details.DetailCode = DetailRange.DetailCode ' +
            'WHERE DetailRange.TopicCode=' + edtTopicCode.Text  ,['كد تفصيلي','نام حساب'],alLeft,1);
              edtDetail.Text:=c;
                    edtCaption.Text := AccCaption + '--'+DetailCaption;
end;


procedure TPortionInDocF.FormCreate(Sender: TObject);
begin
  inherited;
  SNDOC := var_glb_gParam;
  InitCombo;
end;

procedure TPortionInDocF.actCalExecute(Sender: TObject);
begin
  inherited;
  if cmbBasic.ItemIndex = -1 then
  begin
    Warn('مباني تسهيم هزينه انتخاب نشده');
    FlashAControl(cmbBasic);
    Exit;
  end;
  if cmbLevelPortion.ItemIndex = -1 then
  begin
    Warn('مقطع تسهيم هزينه انتخاب نشده');
    FlashAControl(cmbLevelPortion);
    Exit;
  end;
  if edtValue.Text = EmptyStr then
  begin
    Warn('مبلغ قابل تسهيم وارد نشده');
    FlashAControl(edtValue);
    Exit;
  end;
  if edtValue.Text = EmptyStr then
  begin
    Warn('مبلغ قابل تسهيم وارد نشده');
    FlashAControl(edtValue);
    Exit;
  end;
  if edtTopicCode.Text = EmptyStr then
  begin
    Warn('كد حساب وارد نشده است');
    FlashAControl(edtTopicCode);
    Exit;
  end;
  if edtDetail.Text = EmptyStr then
  begin
    Warn('كد  تفصيلي وارد نشده است');
    FlashAControl(edtDetail);
    Exit;
  end;


   with qryFindTopicCode do
   begin
    Close;
    Parameters.ParamByName('TopicCode').Value:=Trim(edtTopicCode.Text);
    Open;
  end;

   with qryDetailPortion do
   begin
    Close;
    Parameters.ParamByName('FormInfoID').Value:=integer(cmbBasic.Items.Objects[cmbBasic.ItemIndex]);
    Parameters.ParamByName('subFormInfoID').Value:=integer(cmbBasic.Items.Objects[cmbBasic.ItemIndex]);
    Parameters.ParamByName('remain').Value:=Trim(edtValue.Text);
    Parameters.ParamByName('detail').Value:=Trim(edtDetail.Text);
    Parameters.ParamByName('subPortionCunt').Value:=integer(cmbLevelPortion.Items.Objects[cmbLevelPortion.ItemIndex]);
    Parameters.ParamByName('PortionCunt').Value:=integer(cmbLevelPortion.Items.Objects[cmbLevelPortion.ItemIndex]);
    Open;
    actSoudor.Enabled := not IsEmpty;
  end;

end;

procedure TPortionInDocF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid2,4);
end;

procedure TPortionInDocF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid2);
end;

procedure TPortionInDocF.actSoudorExecute(Sender: TObject);
Var
  ROW:Integer;
begin
  inherited;
  
  ROW := 1;
  BigMessageProgBar('در حال صدور سند...',qryDetailPortion.RecordCount);
  with qryDetailPortion do
  try
    qryDoc.Open;
    while not eof do
    begin
      qryDoc.Insert;
      qryDoc.FieldByName('Serial').AsInteger:=SNDOC;
      qryDoc.FieldByName('Row').AsInteger:=ROW;
      qryDoc.FieldByName('CompanyCode').AsInteger := opta.DefaultCompany;
      qryDoc.Fieldbyname('TopicCode').AsLargeInt := fieldbyname('_TopicCode').AsInteger  ;
      qryDoc.FieldByName('DetailCode').AsInteger :=fieldbyname('detailCode').AsInteger  ;
      qryDoc.FieldByName('CTopicCode').AsInteger := fieldbyname('CTopicCode').AsInteger  ;
      qryDoc.FieldByName('CTopicCode2').AsInteger := fieldbyname('CenterTopics2').AsInteger  ;
      qryDoc.FieldByName('Comment_L1').AsString :=
         'بابت سهم از ' + Trim(edtTopicCode.Text) +
         ' - '+ fieldbyname('DetailCode').AsString +
         ' - '+ fieldbyname('CTopicCode').AsString +
         ' - '+ fieldbyname('CenterTopics2').AsString +
         '  با نحوه تسهيم  '+ cmbBasic.Text ;
      qryDoc.FieldByName('AidAmount').AsFloat := fieldbyname('CofficientItem').AsFloat ;
      qryDoc.FieldByName('debt').AsCurrency:=abs(FieldByName('amount').AsCurrency ) ;
      Inc(ROW);
      qryDoc.Post;
      GoProgressBar('');
      Next;
    end;
    Inc(ROW);
    qryDoc.Insert;
    qryDoc.FieldByName('Serial').AsInteger:=SNDOC;
    qryDoc.FieldByName('Row').AsInteger:= ROW;
    qryDoc.FieldByName('CompanyCode').AsInteger := opta.DefaultCompany;
    qryDoc.Fieldbyname('TopicCode').AsLargeInt := fieldbyname('_TopicCode').AsInteger  ;
    qryDoc.FieldByName('DetailCode').AsInteger :=fieldbyname('detailCode').AsInteger  ;
    qryDoc.FieldByName('CTopicCode').AsInteger := fieldbyname('CTopicCode').AsInteger  ;
    qryDoc.FieldByName('CTopicCode2').AsInteger := fieldbyname('CenterTopics2').AsInteger  ;
    qryDoc.FieldByName('Comment_L1').AsString :='بابت تسهيم براساس  '+cmbBasic.Text ;
    qryDoc.FieldByName('Credit').AsCurrency:=StrToCurr(Trim(edtValue.Text)) ;
    qryDoc.Post;
  finally
    CloseMessage;
  end;






end;

procedure TPortionInDocF.edtTopicCodeKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key = #32 then SpeedButton1.Click;
end;

procedure TPortionInDocF.edtDetailKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
 if Key = #32 then SpeedButton2.Click;
end;

end.
