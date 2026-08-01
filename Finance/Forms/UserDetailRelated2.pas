unit UserDetailRelated2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Dm, template5, StdCtrls, CheckLst, Grids, Vcl.DBGrids, DB, ADODB, Menus,
  DBActns, ActnList, Buttons, ExtCtrls, search2, sort2, GlobalPro, StrUtils,
  System.Actions, System.ImageList, Vcl.ImgList, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  CedarDbGrid;

type
  TUserDetailRelated2F = class(TTemplate5F)
    srcOperator: TDataSource;
    qryOperator: TADOQuery;
    Panel2: TPanel;
    actSearch: TAction;
    actSort: TAction;
    DataSetEdit1: TDataSetEdit;
    Panel3: TPanel;
    qryOperatoruserid: TIntegerField;
    qryOperatorname: TStringField;
    srcDetails: TDataSource;
    qryDetails: TADOQuery;
    qryDetailsCode: TLargeintField;
    qryDetailsName: TStringField;
    pnl1: TPanel;
    spdAdd: TSpeedButton;
    actAdd: TAction;
    actDel: TAction;
    ImageList1: TImageList;
    spdAdd1: TSpeedButton;
    DBGrid1: TCedarDbgrid;
    dbgrdDetails: TCedarDbgrid;
    procedure actSearchExecute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure qryOperatorAfterScroll(DataSet: TDataSet);
    procedure actAddExecute(Sender: TObject);
    procedure actDelExecute(Sender: TObject);
  private
    TopicCode: Boolean;
    { Private declarations }
  public
    { Public declarations }
    procedure Enter(Sender: TObject);
  end;

var
  UserDetailRelated2F: TUserDetailRelated2F;

const
  SQLstr4Topic = 'select TopicCode as Code,MoeenName_L1 as Name' +
    ' from acc.Categories ' +
    'where LevelID = (select max(LevelID) from acc.Categories)' +
    'AND (((CHARINDEX('',''+ltrim( :UserID )+'','', '','' + UserRelated + '','') <> 0) ) )';

implementation

{$R *.dfm}

uses selected;

procedure TUserDetailRelated2F.actAddExecute(Sender: TObject);
var
  s, txt: string;
  i: Integer;
begin
  inherited;
  if TopicCode then
  begin
    txt := 'select TopicCode ,MoeenName_L1 ' + ' from acc.Categories ' +
      'where LevelID = (select max(LevelID) from acc.Categories)' +
      'AND TopicCode not in(SELECT TopicCode ' + ' FROM acc.Categories ' +
      ' where (((CHARINDEX('',''+ltrim(' + qryOperatoruserid.AsString +
      ')+'','', '','' + UserRelated + '','') <> 0) ) ))';

    s := selectedF.ShowSelect(Dmf.adcAccounting, 'انتخاب کد حساب', txt,
      ['كد', 'عنوان'], alLeft, [80, 350]);

    if s <> EmptyStr then
    begin
      txt := ' declare @UserIDAdd int=' + qryOperatoruserid.AsString +
        ' UPDATE acc.Categories' + ' SET UserRelated =' +
        ' CASE WHEN ISNULL(UserRelated,'''')='''' THEN LTRIM(@UserIDAdd)' +
        ' ELSE UserRelated + '',''+LTRIM(@UserIDAdd) END' + ' ' +
        ' WHERE TopicCode in (' + s + ')';
      Dmf.adcAccounting.Execute(txt, i);
      if i > 0 then
        Warn(i.ToString + ' مورد انجام شد ');
      qryDetails.Requery();
    end;

  end
  else
  begin
    txt := ' SELECT cast(details.DetailCode as bigint) as DetailCode,details.DetailName_L1,details.DetailName_L2'
      + ' FROM acc.Details as details inner join dbo.customers as Cust' +
      ' ON details.DetailCode = Cust.CustID' + ' where' +
      ' details.DetailCode not in(SELECT cast(details.DetailCode as bigint) as DetailCode'
      + ' FROM acc.Details as details inner join dbo.customers as Cust' +
      ' ON details.DetailCode = Cust.CustID' +
      ' where (((CHARINDEX('',''+ltrim(' + qryOperatoruserid.AsString +
      ')+'','', '','' + Cust.OperatorID + '','') <> 0) ) ))';

    s := selectedF.ShowSelect(Dmf.adcAccounting, 'انتخاب تفصيلي', txt,
      ['كد', 'عنوان', 'DetailName'], alLeft, [80, 350, 40]);

    if s <> EmptyStr then
    begin
      txt := ' declare @UserIDAdd int=' + qryOperatoruserid.AsString +
        ' UPDATE customers' + ' SET OperatorID =' +
        ' CASE WHEN ISNULL(OperatorID,'''')='''' THEN LTRIM(@UserIDAdd)' +
        ' ELSE OperatorID + '',''+LTRIM(@UserIDAdd) END' + ' ' +
        ' WHERE CustID in (' + s + ')';
      Dmf.adcAccounting.Execute(txt, i);
      if i > 0 then
        Warn(i.ToString + ' مورد انجام شد ');
      qryDetails.Requery();
    end;
  end;

end;

procedure TUserDetailRelated2F.actDelExecute(Sender: TObject);
var
  s: string;
begin
  inherited;
  if get_response('آيا براي حذف مطمئن هستيد؟') <> mrYes then
    exit;
  if TopicCode then
  begin
    With Dmf.qry_Temp do
    begin
      Active := False;
      SQL.Text := 'SELECT TopicCode, UserRelated';
      SQL.Add('FROM acc.Categories');
      SQL.Add('WHERE (TopicCode = :Code )');
      Parameters.ParamByName('Code').Value := qryDetailsCode.AsLargeInt;
      Active := True;
      s := FieldByName('UserRelated').AsString;
      s := ',' + s + ',';
      s := ReplaceStr(s, ',' + qryOperatoruserid.AsString + ',', ',');
      SetLength(s, Length(s));
      if s[1] = ',' then
        s[1] := ' ';
      if s[Length(s) - 1] = ',' then
        s[Length(s) - 1] := ' ';
      Edit;

      FieldByName('UserRelated').AsString := s;
      Post;
      qryDetails.Delete;
    end;

  end
  else
  begin
    With Dmf.qry_Temp do
    begin
      Active := False;
      SQL.Text := 'SELECT CustID, OperatorID';
      SQL.Add('FROM Customers');
      SQL.Add('WHERE (CustID = :CustID )');
      Parameters.ParamByName('CustID').Value := qryDetailsCode.AsLargeInt;
      Active := True;
      s := FieldByName('OperatorID').AsString;
      s := ',' + s + ',';
      s := ReplaceStr(s, ',' + qryOperatoruserid.AsString + ',', ',');
      SetLength(s, Length(s));
      if s[1] = ',' then
        s[1] := ' ';
      if s[Length(s) - 1] = ',' then
        s[Length(s) - 1] := ' ';
      Edit;

      FieldByName('OperatorID').AsString := s;
      Post;
      qryDetails.Delete;
    end;
  end;

end;

procedure TUserDetailRelated2F.actSearchExecute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryDetails);
end;

procedure TUserDetailRelated2F.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryDetails);
end;

procedure TUserDetailRelated2F.Enter(Sender: TObject);
begin
  UserDetailRelated2F := TUserDetailRelated2F.Create(Application);
  with UserDetailRelated2F do
    try
      Caption := (Sender as TMenuItem).Caption;
      TopicCode := (Sender as TMenuItem).tag = 1;
      if TopicCode then
      begin
        qryDetails.SQL.Text := SQLstr4Topic;
        qryDetailsCode.DisplayLabel := 'کد حساب';
        qryDetailsName.DisplayLabel := 'نام حساب';
      end;
      with qryOperator do
      begin
        Open;
      end;
      ShowModal;
    finally
      Free;
    end;
end;

procedure TUserDetailRelated2F.qryOperatorAfterScroll(DataSet: TDataSet);
var
  UserID: string;
  i: Integer;
begin
  inherited;
  With qryDetails do
  begin
    Active := False;
    Parameters.ParamByName('UserID').Value := qryOperatoruserid.AsInteger;
    Active := True;
  end;

end;

end.
