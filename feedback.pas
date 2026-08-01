unit Feedback;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Ufeedback, System.Net.Mime,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, template4, Vcl.DBActns, System.Actions,
  Vcl.ActnList, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, System.Net.HttpClient;

type
  TFeedbackF = class(TTemplate4F)
    cmbProject: TComboBox;
    lblProject: TLabel;
    cmbPriority: TComboBox;
    lblPriority: TLabel;
    cmbType: TComboBox;
    lblType: TLabel;
    cmbProduct: TComboBox;
    lblProduct: TLabel;
    edtSUBJECT: TEdit;
    lblSUBJECT: TLabel;
    lblCOMMENTS: TLabel;
    cmbTaskNoMax: TComboBox;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Label1: TLabel;
    edtMobile: TEdit;
    Label2: TLabel;
    mmoCOMMENTS: TMemo;
    procedure FormCreate(Sender: TObject);
    procedure cmbProjectChange(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    ORG, Server_Name, _FormName, _FormCaption: string;
    procedure InitForm;
    procedure Initcmb(FormRestName, Params: string; cmb1: TComboBox);
    function Post: Boolean;
    function InitFormDate(var lFormData: TRootFormData): Boolean;
    { Private declarations }
  public
    procedure enter(const AFormName, AFormCaption: string);
    { Public declarations }
  end;

var
  FeedbackF: TFeedbackF;

implementation

uses
  GlobalPro, FaraConsts, MMESSAGE, DM;

{$R *.dfm}

procedure TFeedbackF.FormCreate(Sender: TObject);
begin
  inherited;
  ORG := LockcompanyCode.ToString; // 'argham';
  Server_Name := 'http://erp.reenook.com';
  // Server_Name := 'http://192.168.200.133';
  InitForm;
  // edtMobile.Text := User.Mobile;
end;

procedure TFeedbackF.BitBtn3Click(Sender: TObject);
begin
  inherited;
  if Post then
    Warn2('ارسال شد');

end;

procedure TFeedbackF.cmbProjectChange(Sender: TObject);
var
  PROJECT_ID: Integer;
  param: string;
begin
  inherited;
  PROJECT_ID := Integer(cmbProject.Items.Objects[cmbProject.ItemIndex]);
  param := '?PROJECT_ID=' + PROJECT_ID.ToString;
  Initcmb('ProductLOV', param, cmbProduct);
  cmbProduct.DroppedDown := True;
end;

procedure TFeedbackF.enter(const AFormName, AFormCaption: string);
begin
  with TFeedbackF.Create(Application) do
    try
      if mrok = ShowModal then
      begin
        // Post;
      end;
    finally
      Free;
    end; // try

end;

function TFeedbackF.Post;
var
  webl: TRootFormData;
  LRequest: THTTPClient;
  lFormData: TMultipartFormData;
  LResponse: TStringStream;
  // aweb: TwebResult;
begin
  inherited;
  // aweb := TwebResult.Create;
  Result := InitFormDate(webl);
  LRequest := THTTPClient.Create;
  lFormData := TMultipartFormData.Create();
  LResponse := TStringStream.Create;
  try // http://dev.fararayaneh.com
    lFormData.AddField('ORG', webl.ORG);
    lFormData.AddField('B5IDREF_ID_8', webl.B5IDREF_ID_8.ToString);
    lFormData.AddField('B5IDREF_ID_11', webl.B5IDREF_ID_11.ToString);
    lFormData.AddField('T5SCTYPE_ID', webl.T5SCTYPE_ID.ToString);
    lFormData.AddField('SUBJECT', webl.SUBJECT);
    lFormData.AddField('COMMENTS', webl.COMMENTS);
    lFormData.AddField('B5HCPRIORITY_ID', webl.B5HCPRIORITY_ID.ToString);
    lFormData.AddField('SENDER_FEEDBACK_INFO', webl.SENDER_FEEDBACK_INFO);
    BitBtn3.Enabled := False;
    LRequest.Post(Server_Name + '/ords/fara/FormRest/FeedBackForm', lFormData,
      LResponse);
    // aweb.AsJson := LResponse.DataString;
    // b := aweb.Items[0].userId <> '-0';
  finally
    lFormData.Free;
    LResponse.Free;
    LRequest.Free;
    // aweb.Free;
    webl.Free;
  end;

end;

function TFeedbackF.InitFormDate(var lFormData: TRootFormData): Boolean;
var
  CompanyName, UserMobile: string;
begin
  Result := True;
  lFormData := TRootFormData.Create;
  lFormData.ORG := ORG;
  if cmbProduct.ItemIndex <> -1 then
    lFormData.B5IDREF_ID_8 :=
      Integer(cmbProduct.Items.Objects[cmbProduct.ItemIndex])
  else
  begin
    Result := False;
    Warn(lblProduct.Caption + ' وارد نشده ');
    Abort;
  end;
  if cmbProject.ItemIndex <> -1 then
    lFormData.B5IDREF_ID_11 :=
      Integer(cmbProject.Items.Objects[cmbProject.ItemIndex])
  else
  begin
    Result := False;
    Warn(lblProject.Caption + ' وارد نشده ');
    Abort;
  end;;
  if cmbType.ItemIndex <> -1 then
    lFormData.T5SCTYPE_ID := Integer(cmbType.Items.Objects[cmbType.ItemIndex])
  else
  begin
    Result := False;
    Warn(lblType.Caption + ' وارد نشده ');
    Abort;
  end;;
  if cmbPriority.ItemIndex <> -1 then
    lFormData.B5HCPRIORITY_ID :=
      Integer(cmbPriority.Items.Objects[cmbPriority.ItemIndex])
  else
  begin
    Result := False;
    Warn(lblPriority.Caption + ' وارد نشده ');
    Abort;
  end;;
  lFormData.SUBJECT := Trim(edtSUBJECT.Text);
  if (lFormData.SUBJECT = EmptyStr) or (Length(lFormData.SUBJECT) < 10) then
  begin
    Result := False;
    Warn(lblSUBJECT.Caption + ' وارد نشده ' + ' کامل وارد نشده');
    Abort;
  end;

  lFormData.COMMENTS := Trim(mmoCOMMENTS.Text);
  if (lFormData.COMMENTS = EmptyStr) or (Length(lFormData.COMMENTS) < 60) then
  begin
    Result := False;
    Warn(lblCOMMENTS.Caption + ' وارد نشده ' + '60 یا کامل وارد نشده');
    Abort;
  end;
  lFormData.COMMENTS := _FormName + _FormCaption + var_glb_gParam.ToString +
    lFormData.COMMENTS;

  if APPBank.CompanyName = EmptyStr then
    CompanyName := get_box('شرکت', 'لطفا شرکت درخواست کننده را وارد کنید',
      CompanyName)
  else
    CompanyName := APPBank.CompanyName;

  UserMobile := edtMobile.Text;
  if (UserMobile = EmptyStr) or (Length(UserMobile) < 10) then
  begin
    Result := False;
    Warn(edtMobile.Text + ' لطفا تلفن همراه درخواست کننده را وارد کنید');
    Abort;
  end;

  lFormData.SENDER_FEEDBACK_INFO := ':' + CompanyName + ':' + User.Name + ':' +
    UserMobile;
end;

procedure TFeedbackF.InitForm;
begin
  inherited;
  BigMessage('لطفا کمی صبر کنید....', 0);
  mmoCOMMENTS.Clear;
  Initcmb('PriorityLOV', '', cmbPriority);
  Initcmb('FARAProjectLOV', '?ORG=' + ORG, cmbProject);
  Initcmb('TaskTypeLOV', '?ORG=' + ORG, cmbType);
  Initcmb('TaskNoMaxLOV', '?ORG=' + ORG, cmbTaskNoMax);
  cmbTaskNoMax.ItemIndex := 0;
  CloseMessage;
end;

procedure TFeedbackF.Initcmb(FormRestName, Params: string; cmb1: TComboBox);
var
  LRequest: THTTPClient;
  LResponse: TStringStream;
  aweb: Ufeedback.TRoot;
  url: string;
  i: Integer;
begin
  aweb := TRoot.Create;
  LRequest := THTTPClient.Create;
  LResponse := TStringStream.Create;
  try
    url := Server_Name + '/ords/fara/FormRest/' + FormRestName + Params;
    LRequest.Get(url, LResponse);
    aweb.AsJson := LResponse.DataString;
    cmb1.Clear;
    for i := 0 to aweb.Count - 1 do
    begin
      cmb1.Items.AddObject(UTF8ToString(aweb.Items[i].Name + aweb.Items[i].d),
        TObject(aweb.Items[i].Id + aweb.Items[i].r));
    end;
  finally
    LResponse.Free;
    LRequest.Free;
    aweb.Free;
  end;

end;

end.
