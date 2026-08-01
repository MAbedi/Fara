unit rptMailboxdatacontrol;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, ADODB, Grids, Vcl.DBGrids, sndkey32, Mask, DBCtrls, StrUtils,
  System.ImageList, System.Actions;

type
  TrptMailboxdatacontrolF = class(Ttemplate2MDIF)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    srcWorkFlow: TDataSource;
    qryWorkFlow: TADOQuery;
    qryViewFlow: TADOQuery;
    srcViewFlow: TDataSource;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    btnFilter: TBitBtn;
    actSort: TAction;
    actSendToExcel: TAction;
    actShow: TAction;
    Label1: TLabel;
    Label2: TLabel;
    qryViewFlowFormCaption: TStringField;
    qryViewFlowSortAccept: TWordField;
    qryViewFlowkind: TWordField;
    Edit1: TEdit;
    Edit2: TEdit;
    GroupBox1: TGroupBox;
    DBMemo1: TDBMemo;
    qryViewFlowNote: TWideStringField;
    qryWorkFlowID: TAutoIncField;
    qryWorkFlowkind: TWordField;
    qryWorkFlowServerID: TIntegerField;
    qryWorkFlowYearID: TIntegerField;
    qryWorkFlowFormID: TIntegerField;
    qryWorkFlowFormType: TWordField;
    qryWorkFlowModifyDate: TDateTimeField;
    qryWorkFlowUserID: TIntegerField;
    qryWorkFlowPositionCode: TIntegerField;
    qryWorkFlowSortAccept: TWordField;
    qryWorkFlowState: TWordField;
    qryWorkFlowNote: TWideStringField;
    qryWorkFlowMaxSortAccept: TWordField;
    qryViewFlowFormTypeNum: TIntegerField;
    qryWorkFlowFormNumber: TIntegerField;
    qryWorkFlowFormDate: TStringField;
    qryWorkFlowDes: TStringField;
    qryWorkFlowFomNote: TStringField;
    qryWorkFlowStateName: TStringField;
    qryViewFlowCancelSortAccept: TWordField;
    qryWorkFlowItem: TADOQuery;
    AutoIncField1: TAutoIncField;
    WordField1: TWordField;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    WordField2: TWordField;
    DateTimeField1: TDateTimeField;
    qryWorkFlowDate: TStringField;
    IntegerField4: TIntegerField;
    IntegerField5: TIntegerField;
    WordField3: TWordField;
    WideStringField1: TWideStringField;
    qryWorkFlowname: TStringField;
    qryWorkFlowPositionTitle: TStringField;
    qryWorkFlowHourMinuteSecond: TStringField;
    StringField1: TStringField;
    IntegerField6: TIntegerField;
    StringField2: TStringField;
    WordField4: TWordField;
    StringField3: TStringField;
    StringField4: TStringField;
    qryWorkFlowCitationNote: TStringField;
    srcWorkFlowItem: TDataSource;
    pnl1: TPanel;
    dbgrdWorkFlow: TDBGrid;
    dbgrdWorkFlowItem: TDBGrid;
    spl1: TSplitter;
    actFilter: TAction;
    btnShow: TBitBtn;
    qryWorkFlowItemReferringNote: TStringField;
    procedure actSearch_Execute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actSendToExcelExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure qryViewFlowAfterScroll(DataSet: TDataSet);
    procedure RadioGroup1Click(Sender: TObject);
    procedure actShowExecute(Sender: TObject);
    procedure qryWorkFlowAfterScroll(DataSet: TDataSet);
    procedure actFilterExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  rptMailboxdatacontrolF: TrptMailboxdatacontrolF;

implementation

uses DM, GlobalPro, searchCode_ADO, search2, sort2, MMESSAGE, FaraConsts,
  FormFunctions, mdiMain, filter_ADO, FilterClass_ADO;

{$R *.dfm}

procedure TrptMailboxdatacontrolF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryWorkFlow);
end;

procedure TrptMailboxdatacontrolF.actSendToExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(dbgrdWorkFlow);
end;

procedure TrptMailboxdatacontrolF.actShowExecute(Sender: TObject);
begin
  inherited;
  case qryWorkFlow.FieldByName('Kind').AsInteger of
    1:
      ShowFormTypesForms(qryWorkFlow, Self);
    2:
      ShowReciptTypes(qryWorkFlow, Self)
  end;
end;

procedure TrptMailboxdatacontrolF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryWorkFlow);
end;

procedure TrptMailboxdatacontrolF.FormCreate(Sender: TObject);
begin
  inherited;
  Edit1.Text := IntToStr(User.ID) + '  ' + User.name;
  Edit2.Text := IntToStr(User.PositionCode) + '  ' + User.PositionTitle;
  with qryViewFlow do
  begin
    Active := False;
    Parameters.ParamByName('PositionCode').Value := User.PositionCode;
    Active := True;
  end;
end;

procedure TrptMailboxdatacontrolF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
  SaveColWidth(dbgrdWorkFlow);
  SaveColWidth(dbgrdWorkFlowItem);
end;

procedure TrptMailboxdatacontrolF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 1, True);
  SetColSize(dbgrdWorkFlow, 3, True);
  SetColSize(dbgrdWorkFlowItem, 4, True);
end;

procedure TrptMailboxdatacontrolF.qryWorkFlowAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qryWorkFlowItem do
  begin
    Active := False;
    Parameters.ParamByName('kind').Value := qryWorkFlowkind.AsInteger;
    Parameters.ParamByName('FormType').Value := qryWorkFlowFormType.AsInteger;
    Parameters.ParamByName('ServerID').Value := qryWorkFlowServerID.AsInteger;
    Parameters.ParamByName('YearID').Value := qryWorkFlowYearID.AsInteger;
    Parameters.ParamByName('FormID').Value := qryWorkFlowFormID.AsInteger;
    Parameters.ParamByName('YearID2').Value := qryWorkFlowYearID.AsInteger;
    Parameters.ParamByName('kind2').Value := qryWorkFlowkind.AsInteger;
    Parameters.ParamByName('FormType2').Value := qryWorkFlowFormType.AsInteger;
    Active := True;
  end;
end;

procedure TrptMailboxdatacontrolF.RadioGroup1Click(Sender: TObject);
var
  FormTypeNum: Integer;
begin
  inherited;
  FormTypeNum := qryViewFlowFormTypeNum.AsInteger;
  qryViewFlow.Requery();
  qryViewFlow.Locate('FormTypeNum', FormTypeNum, []);
end;

procedure TrptMailboxdatacontrolF.actFilterExecute(Sender: TObject);
var
  fi: TfilterF;
begin
  inherited;
  fi := TfilterF.Create2(Self, myParams);
  with fi do
  begin
    try
      AddItem(DMf.adcBsell, 'Date', 'تاريخ ', 'تاريخ', ftDate, dvMinMax, '', '',
        ciSimple, '', 'Select  ''' + APPBank.StartYear + ''',''' +
        APPBank.endYear + '''');
      AddItem(DMf.adcBsell, 'Number', 'فرم', 'شماره', ftInteger, dvMinMax, '',
        '', ciSimple, '', 'Select 0,99999999 ');
      if ShowModal = mrOk then
      begin
        GetFilterString;
        qryViewFlowAfterScroll(qryViewFlow);
      end;
    finally
      fi.Free;
    end;
  end;
end;

procedure TrptMailboxdatacontrolF.qryViewFlowAfterScroll(DataSet: TDataSet);
begin
  inherited;
  qryWorkFlowItem.Close;
  with qryWorkFlow do
  begin
    Active := False;
    SQL.Text := 'SELECT *';
    SQL.Add('FROM dbo.Fn_WorkFlow ( :YearID , :FormType , :kind )');

    if myParams.FindParam('Number') <> nil then
    begin
      SQL.Add('WHERE (FormNumber BETWEEN :FormNumberFrom AND :FormNumberTo )');
      SQL.Add('AND (FormDate BETWEEN :FormDateFrom AND :FormDateTo )');

      Parameters.ParamByName('FormNumberFrom').Value :=
        GetcFrom(myParams.ParamValues['Number'], ftInteger);
      Parameters.ParamByName('FormNumberTo').Value :=
        GetcTo(myParams.ParamValues['Number'], ftInteger);

      Parameters.ParamByName('FormDateFrom').Value :=
        GetcFrom(myParams.ParamValues['Date'], ftDate);
      Parameters.ParamByName('FormDateTo').Value :=
        GetcTo(myParams.ParamValues['Date'], ftDate);
    end;

    Parameters.ParamByName('kind').Value := DataSet.FieldByName('Kind')
      .AsInteger;
    Parameters.ParamByName('FormType').Value :=
      DataSet.FieldByName('FormTypeNum').AsInteger;
    Parameters.ParamByName('YearID').Value := APPBank.Year;
    Active := True;
  end;
end;

end.

