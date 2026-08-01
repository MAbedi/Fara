unit PortionRange;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, ADODB, Grids, Vcl.DBGrids, Mask, DBCtrls, ppDB, ppBands,
  ppCache, ppClass, ppProd, ppReport, ppComm, ppRelatv, ppDBPipe, ppCtrls,
  ppVar, ppPrnabl, Menus, ppParameter, ppDesignLayer, System.ImageList,
  System.Actions;

type
  TPortionRangeF = class(Ttemplate2MDIF)
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    qryportion: TADOQuery;
    srcPortion: TDataSource;
    qryportionID: TIntegerField;
    qryportionFormInfoID: TIntegerField;
    qryportionDetailCode: TIntegerField;
    qryportionCTopicCode: TIntegerField;
    qryportionCTopicCode2: TIntegerField;
    qryFormsinfo: TADOQuery;
    qryFormsinfoInfoID: TWordField;
    qryFormsinfoInfoName_L1: TStringField;
    qryFormsinfoFormInfoID: TIntegerField;
    qryportion_portionName: TStringField;
    qryFormsinfoInfoName_L2: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    qryportionCTopicName_L1: TStringField;
    qryportionDetailName_L1: TStringField;
    qryportionCTopicName2_L1: TStringField;
    qryportionMoeenName_L1: TStringField;
    qryportionaccName: TStringField;
    BitBtn12: TBitBtn;
    BitBtn16: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn11: TBitBtn;
    BitBtn1: TBitBtn;
    actSort: TAction;
    actExcel: TAction;
    qryportionTopicCode: TLargeintField;
    qryportioncompanycode: TIntegerField;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    qryportion_portionId: TIntegerField;
    popPrint: TPopupMenu;
    N11: TMenuItem;
    N21: TMenuItem;
    actPrint: TAction;
    ppHeaderBand1: TppHeaderBand;
    ppShape1: TppShape;
    ppLblCompanyName: TppLabel;
    ppLblCaption: TppLabel;
    ppSysVarPageNo: TppSystemVariable;
    ppLblPrintDate: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppLine11: TppLine;
    ppLin4Position: TppLine;
    ppFooterBand1: TppFooterBand;
    ppLine1: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppLine2: TppLine;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppGroupFooterBand1: TppGroupFooterBand;
    actOther: TAction;
    btnOther: TBitBtn;
    actReciveExcel: TAction;
    actSelectData: TAction;
    popOther: TPopupMenu;
    Excel1: TMenuItem;
    N1: TMenuItem;
    mnuYear: TMenuItem;
    qryportionYearID: TIntegerField;
    qryportionCTopicCode3: TIntegerField;
    qryportionCTopicName3_L1: TStringField;
    procedure DBGrid1EditButtonClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actExcelExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure ppLblPrintDateGetText(Sender: TObject; var Text: String);
    procedure ppSysVarPageNoGetText(Sender: TObject; var Text: String);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure actPrintExecute(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure N21Click(Sender: TObject);
    procedure _actSearchExecute(Sender: TObject);
    procedure actReciveExcelExecute(Sender: TObject);
    procedure actSelectDataExecute(Sender: TObject);
    procedure actOtherExecute(Sender: TObject);
    procedure qryportionAfterInsert(DataSet: TDataSet);
  private
    procedure SampleClick(Sender: TObject);
    procedure inipop;
    // procedure gridkeyenter(Sender: TObject;var key: char);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PortionRangeF: TPortionRangeF;

implementation

uses Dm, PortionRange_Relation, GlobalPro, search2, sort2,
  searchCode_L1_L2, sndkey32, GetExcel, searchCode2_ADO, searchCode_ADO;
{$R *.dfm}
// procedure TPortionRangeF.gridkeyenter(Sender: TObject;var key: char);
// var
// nextIndex:  Integer;
// curIndex:   Integer;
/// /  aDataSet: TDataSet;
/// /  c:  String;
// begin
// curIndex:=(Sender as TDBGrid).SelectedIndex;
// nextIndex:=curIndex;
// case key of
// #13:  begin
// if shiftDown then exit;
/// /      aDataSet:=(Sender as TDBGrid).DataSource.DataSet;
// key:=#0;
// case curIndex of
// 0: nextIndex:=1;
// 1: nextIndex:=2;
// 2: nextIndex:=3;
// 3: nextIndex:=4;
// end;//case
// end;//#13
// '+': begin
// key:=#0;
// nextIndex:=curIndex-1;
// while (nextIndex>=0) and (not (DBGrid1.Columns[nextIndex].Visible) OR (DBGrid1.Columns[nextIndex].ReadOnly)) do
// Dec(nextIndex);
// if nextIndex<0 then nextIndex:=-3;
// end;// +
/// /    '*':  begin
/// /      key:=#0;
/// /      SendKeys('000',false);
/// /    end;// *
// #27: if (sender as TDBGrid).DataSource.DataSet.State in dseditmodes then (sender as TDBGrid).DataSource.DataSet.Cancel;
//
// #32,#157:  if curIndex=5  then begin
// key:=#0;
// DBGrid1EditButtonClick(sender);
// end;//if
// end;//case
//
// if nextIndex>=0 then
// while (nextIndex<DBGrid1.Columns.Count) and (not (DBGrid1.Columns[nextIndex].Visible) OR (DBGrid1.Columns[nextIndex].ReadOnly)) do
// Inc(nextIndex);
// if nextIndex>=(Sender as TDBGrid).Columns.Count then nextIndex:=-1;
// if (curindex<>nextindex) then
// case nextindex of
// -1: begin
// sendkey(vk_down,[],false);
// (sender as TDBGrid).selectedindex:=5;
// end;//0
// -2:  begin
// if (sender as TDBGrid).DataSource.State in dsEditmodes then (sender as TDBGrid).datasource.DataSet.Cancel;
// Perform(WM_NEXTDLGCTL,0,0);
// end;//-2
// -3:  begin
// if (sender as TDBGrid).DataSource.State in dsEditmodes then (sender as TDBGrid).datasource.DataSet.Cancel;
// Perform(WM_NEXTDLGCTL,1,0);
// end;//-3
// else
// (sender as TDBGrid).selectedindex:=nextIndex;
// end;//case
//
// end;

procedure TPortionRangeF.DBGrid1EditButtonClick(Sender: TObject);
var
  // TmpChar: Char;
  i: Smallint;
  sqlText: String;
  Results: array [0 .. 3] of String;
begin
  inherited;
  try
    qryportion.DisableControls;
    i := (Sender as TDBGrid).SelectedIndex; (Sender as TDBGrid)
    .SelectedIndex := i;
    if not(qryportion.State in dseditmodes) then
      qryportion.Edit;
    sqlText :=
      'SELECT  InfoID, InfoName_L1 , InfoName_L2 ,forminfoid FROM   acc.FormsInfo '
      + ' WHERE  (FormType = 10)';

    if searchCode_L1_L2F.SearchCode2(DMf.adcAccounting, '⁄‰Ê«‰ ‰ÕÊÂ  ”ÂÌ„',
      sqlText, ['òœ', '⁄‰Ê«‰ ‰ÕÊÂ  ”ÂÌ„', 'caption', 'o'], Results,
      [50, 150, 150, 1], alLeft) then
      qryportion.FieldByName('FormInfoID').AsString := Results[3];

    sendkey(vk_down, [], false); (Sender as TDBGrid)
    .SelectedIndex := 5;
  finally
    qryportion.EnableControls;
  end; // try
end;

procedure TPortionRangeF.FormCreate(Sender: TObject);
begin
  inherited;
  qryFormsinfo.Open;
  with qryportion do
  begin
    Close;
    Parameters.ParamByName('YearID').Value := APPBank.Year;
    Open;
  end;
  inipop;

end;

procedure TPortionRangeF.BitBtn1Click(Sender: TObject);
begin
  inherited;
  if qryportion.State in dseditmodes then
    qryportion.Post;
  PortionRange_RelationF.ShowChooseDetail
    (qryportion.FieldByName('ID').AsInteger);
  qryportion.Requery;

end;

procedure TPortionRangeF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  // gridkeyenter(Sender,Key);
  if Key = #13 then
  begin
    sendkey(vk_down, [], false); (Sender as TDBGrid)
    .SelectedIndex := 5;
  end;
  if Key = #32 then
    DBGrid1EditButtonClick(Sender);
end;

procedure TPortionRangeF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryportion);
end;

procedure TPortionRangeF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryportion);
end;

procedure TPortionRangeF.actExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TPortionRangeF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
end;

procedure TPortionRangeF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 4);
end;

procedure TPortionRangeF.inipop;
var
  aitems: TMenuItem;
begin
  with DMf.qry_Temp do
  begin
    Active := false;
    SQL.Text := 'select YearId from util.MaliYear where YearID <> ' + IntToStr
      (APPBank.Year);
    Active := True;
    while not Eof do
    begin
      aitems := TMenuItem.Create(mnuYear);
      aitems.Caption := Fields[0].AsString;
      aitems.Tag := Fields[0].AsInteger;
      aitems.OnClick := SampleClick;
      mnuYear.Add(aitems);
      Next;
    end;
  end;
end;

procedure TPortionRangeF.ppLblPrintDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TPortionRangeF.ppSysVarPageNoGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TPortionRangeF.qryportionAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qryportionYearID.AsInteger:=APPBank.Year
end;

procedure TPortionRangeF.SampleClick(Sender: TObject);
var
  Qsrc, QDesc: TADOQuery;
  i: Integer;
begin
  if get_response('¬Ì« „ÿ„∆‰ Â” Ìœø')<> mrYes then exit ;
  Qsrc := TADOQuery.Create(Self);
  QDesc := TADOQuery.Create(Self);
  try
    With Qsrc do
    begin
      Connection := DMf.adcAccounting;
      SQL.Text := 'SELECT  * FROM  Acc.PortionRange Where YearID = :YearID';
      Parameters.ParamByName('yearId').Value := (Sender as TMenuItem).Tag;
      Open;
    end;
    With QDesc do
    begin
      Connection := DMf.adcAccounting;
      SQL.Text := 'SELECT  * FROM  Acc.PortionRange where 0=1';
      Open;
      while not Qsrc.Eof do
      begin
        Insert;
        for i := 0 to Qsrc.FieldCount - 1 do
          if Qsrc.Fields[i].FieldName<>'ID' then
            FieldByName(Qsrc.Fields[i].FieldName).AsString := Qsrc.Fields[i].AsString;
//        FieldByName('ID').AsInteger := GetANewCode('','PortionRange', 'ID');
        FieldByName('YearID').AsInteger := APPBank.Year;
        Post;
        Qsrc.Next;
      end;
    end;
  finally
    qryportion.Requery;
    Qsrc.Free;
    QDesc.Free;
  end;

end;

procedure TPortionRangeF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TPortionRangeF.actPrintExecute(Sender: TObject);
begin
  inherited;
  popPrint.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TPortionRangeF.N11Click(Sender: TObject);
begin
  inherited;
  try
    qryportion.DisableControls;
    InitReportFile(ppReport1, 'PortionRange', DBGrid1,ppDBPipeline1);
  finally
    qryportion.EnableControls;
  end;
end;

procedure TPortionRangeF.N21Click(Sender: TObject);
begin
  inherited;
  try
    qryportion.DisableControls;
    qryportion.Sort := 'FormInfoID';
    InitReportFile(ppReport1, 'PortionRange_group', DBGrid1,ppDBPipeline1);
  finally
    qryportion.EnableControls;
  end;

end;

procedure TPortionRangeF._actSearchExecute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryportion);
end;

procedure TPortionRangeF.actReciveExcelExecute(Sender: TObject);
begin
  inherited;
  GetExcelF.ShowImPortExcel(qryportion);
end;

procedure TPortionRangeF.actSelectDataExecute(Sender: TObject);
var
  sqlText: String;
  aCode: String;
  Results: array [0 .. 2] of String;
  i: Integer;
begin
  inherited;
  sqlText :=
    'SELECT forminfoid , InfoID, InfoName_L1   FROM  acc.FormsInfo  WHERE  (FormType = 10)';
  if searchCode_ADOF.SearchCode2(DMf.adcAccounting, '⁄‰Ê«‰ ‰ÕÊÂ  ”ÂÌ„',
    sqlText, ['', 'òœ', '⁄‰Ê«‰ ‰ÕÊÂ  ”ÂÌ„'], Results, [0, 50, 200], alLeft)
    then
    aCode := Trim(Results[0]);
  if aCode = EmptyStr then
    Exit;
  if DBGrid1.SelectedRows.Count = 0 then
  begin
    Warn('Ìﬂ „Ê—œ —« «‰ Œ«» ﬂ‰Ìœ');
    Exit;
  end;
  for i := 0 to DBGrid1.SelectedRows.Count - 1 do
  begin
    qryportion.GotoBookmark((DBGrid1.SelectedRows.items[i]));
    if qryportion.FieldByName('_portionName').AsString = EmptyStr then
    begin
      qryportion.Edit;
      qryportion.FieldByName('FormInfoID').AsString := aCode;
      qryportion.Post;
    end;
  end;
end;

procedure TPortionRangeF.actOtherExecute(Sender: TObject);
begin
  inherited;
  popOther.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

end.
