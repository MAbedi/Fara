unit DocSanama;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template4, StdCtrls, DBActns, ActnList, Buttons, ExtCtrls, DB, ADODB,
  Dm, Vcl.DBGrids, Grids, GlobalPro, StrUtils, System.Actions;

type
  TDocSanamaF = class(TTemplate4F)
    lblTopicCode: TLabel;
    edtTopic: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    lblTopicName: TLabel;
    qrySanama: TADOQuery;
    grdSanama: TDBGrid;
    srcSanama: TDataSource;
    qrySanamaTopicCode: TLargeintField;
    qrySanamaFormType: TIntegerField;
    qrySanamaFormCaption: TStringField;
    qrySanamaKind: TWordField;
    qrySanamaDefaultValue: TIntegerField;
    qryFormsInfo: TADOQuery;
    qrySanama_FormInfoName: TStringField;
    qryFormsInfoFormInfoID: TIntegerField;
    qryFormsInfoInfoName_L1: TStringField;
    qryFormsInfoFormType: TWordField;
    procedure qrySanamaAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
    procedure initPicList(FormType: Integer);
    function CreateXml: string;
    procedure EditDefaultValue(XMLSanama: string);
  public
    function Enter(TopicCode: Int64; TopicName, XMLSanama: string): string;

    { Public declarations }
  end;

var
  DocSanamaF: TDocSanamaF;

implementation

{$R *.dfm}
{ TDocSanamaF }

function TDocSanamaF.CreateXml: string;
var
  Fxml, FDefaultValue: string;
begin
  Fxml := '<Sanama>';
  with qrySanama do
  begin
    if State = dsInsert then
      Cancel
    else if State = dsEdit then
      Post;
    DisableControls;
    First;
    while not Eof do
    begin
      Fxml := Fxml + '<SanamaID SanamaType="' + FieldByName('FormType').AsString
        + '" SanamaValue="' + FieldByName('DefaultValue').AsString + '" />';
      Next;
    end;
    // Fxml := LeftStr(Fxml, Length(Fxml) - 1);
    // FDefaultValue := LeftStr(FDefaultValue, Length(FDefaultValue) - 1);
    Fxml := Fxml + '</Sanama>';
    EnableControls;
  end;
  Result := Fxml;
end;

procedure TDocSanamaF.EditDefaultValue(XMLSanama: string);
var
  SqlStr: string;
begin
  // change by mostafa  96/06/15
  SqlStr := 'declare @Fxml xml = ' + QuotedStr(XMLSanama) +
    'Select  xmlData.A.value(''@SanamaType'', ''VARCHAR(100)'') AS SanamaType' +
    ' ,xmlData.A.value(''@SanamaValue'', ''VARCHAR(100)'') as SanamaValue  From '
    + ' @Fxml.nodes(''Sanama/SanamaID'') xmlData(A)  ';

  // ' select formtype.id,forminfo.val' +
  // ' FROM (select ROW_NUMBER() OVER (ORDER BY mm.part) AS Row' +
  // ' , mm.part as id from dbo.SplitString( @Fxml.value(''(/Sanama/SanamaID/@SanamaType)[1]'',''varchar(50)''),'','')'
  // + ' as mm) formtype' + ' INNER JOIN' +
  // ' (select ROW_NUMBER() OVER (ORDER BY nn.part) AS Row' +
  // ' , (nn.part) as val from dbo.SplitString( @Fxml.value(''(/Sanama/SanamaID/@SanamaValue)[1]'',''varchar'
  // + ' (50)''),'','') as nn) forminfo' + ' ON formtype.Row = forminfo.Row';
  with Dmf.qry_Temp do
  begin
    Close;
    SQL.Text := SqlStr;
    Open;
    First;
    while not Eof do
    begin
      if qrySanama.Locate('FormType', Fields[0].Value, []) then
      begin
        qrySanama.Edit;
        qrySanamaDefaultValue.AsInteger := Fields[1].AsInteger;
        qrySanama.Post;
      end;
      Next;
    end;
    Close;
  end;

end;

function TDocSanamaF.Enter(TopicCode: Int64;
  TopicName, XMLSanama: string): string;
begin
  DocSanamaF := TDocSanamaF.Create(Application);
  with DocSanamaF do
    try
      lblTopic0.Caption := '”‰‹«„«';
      edtTopic.Text := IntToStr(TopicCode);
      lblTopicName.Caption := TopicName;
      with qrySanama, Parameters do
      begin
        Close;
        ParamByName('TopicCode').Value := TopicCode;
        Open;
      end;
      if XMLSanama <> EmptyStr then
        EditDefaultValue(XMLSanama);

      if ShowModal = mrOk then
        Result := CreateXml
      else
        Result := EmptyStr;
    finally
      Free;
    end;

end;

procedure TDocSanamaF.initPicList(FormType: Integer);
begin
  grdSanama.Columns[1].PickList.Clear;
  with Dmf.qry_Temp do
  begin
    Active := False;
    SQL.Text :=
      'SELECT  FormInfoID,InfoName_L1,InfoName_L2 FROM  acc.FormsInfo ' +
      'WHERE FormType=' + IntToStr(FormType);
    Active := True;
    while not Eof do
    begin
      grdSanama.Columns[1].PickList.AddObject(Fields[1].AsString,
        TObject(Fields[0].AsInteger));
      Next;
    end;
    Active := False;
  end
end;

procedure TDocSanamaF.qrySanamaAfterScroll(DataSet: TDataSet);
begin
  inherited;
  qryFormsInfo.Filtered := False;
  qryFormsInfo.Filter := 'formtype = ' + IntToStr(qrySanamaFormType.AsInteger);
  qryFormsInfo.Filtered := True;
end;

end.
