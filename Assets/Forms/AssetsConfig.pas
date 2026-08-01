unit AssetsConfig;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template4, ComCtrls, DBActns, ActnList, StdCtrls, Buttons,
  ExtCtrls, DBCtrls, Mask, DB, ADODB, System.Actions,strutils;

type
  TAssetsConfigF = class(TTemplate4F)
    PageControl1: TPageControl;
    qryConfig: TADOQuery;
    srcConfig: TDataSource;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    OpenDialog1: TOpenDialog;
    TabSheet1: TTabSheet;
    TabSheet4: TTabSheet;
    qryConfigId: TIntegerField;
    qryConfigBaseDate: TStringField;
    qryConfigCompanyName: TStringField;
    qryConfigFirstDayMaliYear: TStringField;
    qryConfigEndDayMaliYear: TStringField;
    qryConfigFirstDepValueActive: TBooleanField;
    qryConfigServerName: TStringField;
    qryConfigBedTopicCode: TWordField;
    qryConfigBedDetailCode: TWordField;
    qryConfigBedCTopicCode: TWordField;
    qryConfigBedCTopicCode2: TWordField;
    qryConfigBedCTopicCode3: TWordField;
    qryConfigBesTopicCode: TWordField;
    qryConfigBesDetailCode: TWordField;
    qryConfigBesCTopicCode: TWordField;
    qryConfigBesCTopicCode2: TWordField;
    qryConfigBesCTopicCode3: TWordField;
    Label1: TLabel;
    edtFirstDayMaliYear: TDBEdit;
    Label2: TLabel;
    edtEndDayMaliYear: TDBEdit;
    qryConfigAccountDBName: TStringField;
    qryConfigStopDepNo: TFloatField;
    qryConfigLevelForEditFirstDep: TWordField;
    tbsConst: TTabSheet;
    GroupBox1: TGroupBox;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    CmbBedTopicCode: TDBComboBox;
    CmbBedDetailCode: TDBComboBox;
    CmbBedCTopicCode: TDBComboBox;
    CmbBedCTopicCode2: TDBComboBox;
    CmbBedCTopicCode3: TDBComboBox;
    CmbBesCTopicCode2: TDBComboBox;
    CmbBesCTopicCode3: TDBComboBox;
    CmbBesCTopicCode: TDBComboBox;
    CmbBesDetailCode: TDBComboBox;
    CmbBesTopicCode: TDBComboBox;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    Bevel5: TBevel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Bevel6: TBevel;
    Bevel7: TBevel;
    Bevel8: TBevel;
    Bevel9: TBevel;
    Label4: TLabel;
    DBEdit6: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    GroupBox3: TGroupBox;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    edtLevel: TDBEdit;
    Label3: TLabel;
    edtBaseDate: TDBEdit;
    qryConfigDefaultDocType: TIntegerField;
    Label10: TLabel;
    cmbSerialNumType: TDBComboBox;
    qryConfigSerialNumType: TWordField;
    dbchkSerialPelak: TDBCheckBox;
    qryConfigSerialPelak: TWordField;
    Label16: TLabel;
    DBEdit8: TDBEdit;
    qryConfigLevelGroup: TWordField;
    qryConfigStartLimitID: TIntegerField;
    qryConfigEndLimitID: TIntegerField;
    GroupBox11: TGroupBox;
    Label31: TLabel;
    Label32: TLabel;
    edtStartLimitID: TDBEdit;
    edtEndLimitID: TDBEdit;
    qryConfigEditableDepModeDepValue: TWordField;
    dbchkEditableDepModeDepValue: TDBCheckBox;
    qryConfigTimeToDefinitive: TWordField;
    qryConfigSysSmsActive: TWordField;
    qryConfigDocExportEffect: TWordField;
    dbchkDocExportEffect: TDBCheckBox;
    qryConfigShowAmount: TWordField;
    dbchkShoeAmount: TDBCheckBox;
    GroupBox2: TGroupBox;
    DBMemo1: TDBMemo;
    qryConfigAidFieldCaption: TWideStringField;
    Label17: TLabel;
    cmbTimeToDefinitive: TDBComboBox;
    TabSheet2: TTabSheet;
    GroupBox15: TGroupBox;
    btnEditableFields: TSpeedButton;
    edtRequiredFields: TDBEdit;
    Label9: TLabel;
    qryConfigRequiredFields: TWideStringField;
    qryConfigRecallReciptTypes: TStringField;
    edtRecallReciptTypes: TDBEdit;
    Label18: TLabel;
    SpeedButton3: TSpeedButton;
    qryConfigTopicCode: TLargeintField;
    qryConfigDetailCode: TIntegerField;
    qryConfigCTopicCode: TIntegerField;
    qryConfigCTopicCode2: TIntegerField;
    qryConfigCTopicCode3: TIntegerField;
    GroupBox4: TGroupBox;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    edtAccTopicCode: TDBEdit;
    edtDetailCode: TDBEdit;
    edtAccCTopicCode: TDBEdit;
    edtAccCTopicCode2: TDBEdit;
    edtAccCTopicCode3: TDBEdit;
    SpeedButton1: TSpeedButton;
    procedure qryConfigAfterInsert(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure qryConfigAfterPost(DataSet: TDataSet);
    procedure qryConfigBedTopicCodeGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure qryConfigBedTopicCodeSetText(Sender: TField; const Text: String);
    procedure qryConfigBeforePost(DataSet: TDataSet);
    procedure qryConfigFirstDepValueActiveChange(Sender: TField);
    procedure qryConfigAfterScroll(DataSet: TDataSet);
    procedure qryConfigSerialNumTypeGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure qryConfigSerialNumTypeSetText(Sender: TField; const Text: string);
    procedure btnEditableFieldsClick(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    Procedure GetsearchDialog(id: Byte);
    // procedure ReadOption;
    procedure InitCombo;
    { Private declarations }
  public
    Procedure enter;
    { Public declarations }
  end;

var
  AssetsConfigF: TAssetsConfigF;

implementation

uses Dm, mmessage, GlobalPro, shamsiDate, FaraConsts, FormFunctions, ChooseItem,
  Account;

{$R *.dfm}

procedure TAssetsConfigF.btnEditableFieldsClick(Sender: TObject);
begin
  inherited;
  EditableFields(qryConfig, 'RequiredFields', 'Assets.Amval', '');
end;

procedure TAssetsConfigF.enter;
begin
  AssetsConfigF := TAssetsConfigF.Create(Application);
  with AssetsConfigF do
    try
      // if mrok = ShowModal then
      // qryConfig.Post
      // else
      // qryConfig.Cancel;
      ShowModal;
    finally
      Free;
    end; // try

end;

procedure TAssetsConfigF.qryConfigAfterInsert(DataSet: TDataSet);
begin
  inherited;
  Abort;
end;

procedure TAssetsConfigF.FormCreate(Sender: TObject);
begin
  inherited;
  InitCombo;
  PageControl1.ActivePageIndex := 0;

  try
    qryConfig.Active := True;
  except
    qryConfig.Active := True;
  end;
  qryConfig.Edit;
  PageControl1.TabIndex := 0;
  tbsConst.TabVisible := User.level > 120
  // ReadOption;

end;

procedure TAssetsConfigF.qryConfigAfterPost(DataSet: TDataSet);
begin
  inherited;
  // DMf.ReadOption;
  ReadAllOption;
  BigMessage('À»  ‘œ', 1);
end;

procedure TAssetsConfigF.GetsearchDialog(id: Byte);
var
  dbedit: TDBEdit;
  qryname: TDataSet;
begin
  dbedit := TDBEdit(FindComponent('DBEdit' + IntToStr(id)));
  if dbedit = nil then
  begin
    warn('›Ì·œ „ﬁ’œ ÅÌœ« ‰‘œ.');
    exit;
  end; // if
  OpenDialog1.InitialDir := IncludeTrailingBackslash(ExtractFilePath(ParamStr(0)
    ) + 'Report');
  qryname := dbedit.DataSource.DataSet;
  If OpenDialog1.Execute then
  begin
    if not(qryname.State in dseditmodes) then
      qryname.Edit;
    qryname.FieldByName(dbedit.DataField).Value :=
      ExtractFileName(OpenDialog1.FileName);
    dbedit.SetFocus;
  end; // if
end;

procedure TAssetsConfigF.InitCombo;
begin
  CmbBesTopicCode.Items.Assign(CmbBedTopicCode.Items);
  CmbBedDetailCode.Items.Assign(CmbBedTopicCode.Items);
  CmbBesDetailCode.Items.Assign(CmbBedTopicCode.Items);
  CmbBedCTopicCode.Items.Assign(CmbBedTopicCode.Items);
  CmbBesCTopicCode.Items.Assign(CmbBedTopicCode.Items);
  CmbBedCTopicCode2.Items.Assign(CmbBedTopicCode.Items);
  CmbBesCTopicCode2.Items.Assign(CmbBedTopicCode.Items);
  CmbBedCTopicCode3.Items.Assign(CmbBedTopicCode.Items);
  CmbBesCTopicCode3.Items.Assign(CmbBedTopicCode.Items);
end;

procedure TAssetsConfigF.qryConfigBedTopicCodeGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  Text := TDBComboBox(FindComponent('Cmb' + Sender.FieldName))
    .Items[Sender.AsInteger];
end;

procedure TAssetsConfigF.qryConfigBedTopicCodeSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.AsInteger := TDBComboBox(FindComponent('Cmb' + Sender.FieldName))
    .ItemIndex;
end;

procedure TAssetsConfigF.qryConfigBeforePost(DataSet: TDataSet);
var
  s: String;
begin
  inherited;
  s := qryConfig.FieldByName('BaseDate').AsString;
  if not validate_date(True, '', '', ' «—ÌŒ Å«ÌÂ', s) then
    Abort;

  if qryConfig.FieldByName('StopDepNo').AsFloat > 100 then
  begin
    warn('÷—Ì» «” Â·«ﬂ  Êﬁ› ‰»«Ìœ »“—ê — «“ 100 »«‘œ.˛');
    Abort;
  end;

end;

procedure TAssetsConfigF.qryConfigFirstDepValueActiveChange(Sender: TField);
begin
  inherited;
  edtLevel.ReadOnly := not Sender.AsBoolean
end;

procedure TAssetsConfigF.qryConfigSerialNumTypeGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  Text := TDBComboBox(FindComponent('Cmb' + Sender.FieldName))
    .Items[Sender.AsInteger];
end;

procedure TAssetsConfigF.qryConfigSerialNumTypeSetText(Sender: TField;
  const Text: string);
begin
  inherited;
  Sender.AsInteger := TDBComboBox(FindComponent('Cmb' + Sender.FieldName))
    .ItemIndex;
end;

procedure TAssetsConfigF.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  Accountf.enter(qryConfig)
end;

procedure TAssetsConfigF.SpeedButton3Click(Sender: TObject);
var
  s: String;
begin
  inherited;
  s := qryConfig.FieldByName('RecallReciptTypes').AsString;
  if ChooseItemF.SelectChecks(s, 'ReciptType', 'ReciptCaption',
    ' ReciptTypes', '') then
  begin
    with qryConfig do
    begin
      Edit;
      FieldByName('RecallReciptTypes').Value := LeftStr(s, length(s) - 1);
    end; // with
  end; // if

end;

procedure TAssetsConfigF.qryConfigAfterScroll(DataSet: TDataSet);
begin
  inherited;
  edtLevel.ReadOnly := not DataSet.FieldByName('FirstDepValueActive').AsBoolean
end;

end.
