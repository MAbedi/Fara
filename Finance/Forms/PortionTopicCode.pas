unit PortionTopicCode;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, Grids, Vcl.DBGrids, ImgList, DBActns, ActnList,
  StdCtrls, ExtCtrls, Buttons, DB, ADODB, ppBands, ppClass, ppCtrls, ppVar,
  ppPrnabl, ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe,
  Menus, ppParameter, ppDesignLayer, System.ImageList, System.Actions;

type
  TPortionTopicCodeF = class(Ttemplate2MDIF)
    DBGrid1: TDBGrid;
    srcPortion: TDataSource;
    qryTopic: TADOQuery;
    qryTopicMoeenName_L1: TStringField;
    qryTopicMoeenName_L2: TStringField;
    newPanel: TPanel;
    BitBtn6: TBitBtn;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    okPanel: TPanel;
    BitBtn5: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn12: TBitBtn;
    BitBtn16: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn11: TBitBtn;
    qryPortion: TADOQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    actSort: TAction;
    actSend: TAction;
    actPrint: TAction;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
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
    qryTopicTopicCode: TLargeintField;
    qryPortionTopicCode: TLargeintField;
    qryPortionPortionTopicCode: TLargeintField;
    actOther: TAction;
    popOther: TPopupMenu;
    N1: TMenuItem;
    actReciveExcel: TAction;
    actRecallAcc: TAction;
    N2: TMenuItem;
    btnOther: TBitBtn;
    actDelSelected: TAction;
    N3: TMenuItem;
    procedure srcPortionDataChange(Sender: TObject; Field: TField);
    procedure DBGrid1EditButtonClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure qryPortionAfterPost(DataSet: TDataSet);
    procedure qryPortionBeforeDelete(DataSet: TDataSet);
    procedure qryPortionBeforePost(DataSet: TDataSet);
    procedure qryPortionAfterDelete(DataSet: TDataSet);
    procedure actSortExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSendExecute(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure actPrintExecute(Sender: TObject);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure ppLblPrintDateGetText(Sender: TObject; var Text: String);
    procedure ppSysVarPageNoGetText(Sender: TObject; var Text: String);
    procedure _actSearchExecute(Sender: TObject);
    procedure actRecallAccExecute(Sender: TObject);
    procedure actOtherExecute(Sender: TObject);
    procedure actReciveExcelExecute(Sender: TObject);
    procedure actDelSelectedExecute(Sender: TObject);
  private
    procedure gridkeyenter(Sender: TObject;var key: char);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PortionTopicCodeF: TPortionTopicCodeF;

implementation

uses Dm, sort2, search2, GlobalPro, mmessage,
  searchCode_L1_L2, GetExcel, FilterClass_ADO, filter_ADO, selected;

{$R *.dfm}

procedure TPortionTopicCodeF.srcPortionDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  okPanel.Visible:=qryPortion.State in dsEditModes;
  newPanel.Visible:=not okPanel.Visible;
  BtnReject.Cancel:=newPanel.Visible;
  //FreeReservedCodes(Dmf.adcAccounting)
end;
procedure TPortionTopicCodeF.gridkeyenter(Sender: TObject;var key: char);
var
  nextIndex:  Integer;
  curIndex:   Integer;
 // aDataSet: TDataSet;
//  c:  String;
begin
  curIndex:=(Sender as TDBGrid).SelectedIndex;
  nextIndex:=curIndex;
  case key of
    #13:  begin
      if shiftDown then exit;
//      aDataSet:=(Sender as TDBGrid).DataSource.DataSet;
      key:=#0;
      case curIndex of
        0: nextIndex:=1;
        1: nextIndex:=2;
        2: nextIndex:=3;
        3: nextIndex:=4;
      end;//case
    end;//#13
    '+': begin
      key:=#0;
      nextIndex:=curIndex-1;
      while (nextIndex>=0) and (not (DBGrid1.Columns[nextIndex].Visible) OR (DBGrid1.Columns[nextIndex].ReadOnly)) do
        Dec(nextIndex);
      if nextIndex<0 then nextIndex:=-3;
    end;// +
//    '*':  begin
//      key:=#0;
//      SendKeys('000',false);
//    end;// *
    #27: if (sender as TDBGrid).DataSource.DataSet.State in dseditmodes then (sender as TDBGrid).DataSource.DataSet.Cancel;

    #32,#157:  if curIndex in [0,2] then begin
      key:=#0;
      DBGrid1EditButtonClick(sender);
    end;//if
  end;//case

  if nextIndex>=0 then
    while (nextIndex<DBGrid1.Columns.Count) and (not (DBGrid1.Columns[nextIndex].Visible) OR (DBGrid1.Columns[nextIndex].ReadOnly)) do
      Inc(nextIndex);
  if nextIndex>=(Sender as TDBGrid).Columns.Count then nextIndex:=-1;
  if (curindex<>nextindex) then
    case nextindex of
       -1: begin
//            sendkey(vk_down,[],false);
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


procedure TPortionTopicCodeF.DBGrid1EditButtonClick(Sender: TObject);
var
//   c: String;
   TmpChar: Char;
   i: Smallint;
   sqlText: String;
   Results: array[0..2] of String;
begin
  inherited;
  i:=(Sender as TDBGrid).SelectedIndex;
  (Sender as TDBGrid).SelectedIndex:=i;
  if not (qryPortion.State in dseditmodes) then qryPortion.Edit;
  sqltext:=qryTopic.SQL.Text;
  case i of
   0: begin
         if searchCode_L1_L2F.SearchCode2(DMf.adcAccounting,'⁄‰Ê«‰ „⁄Ì‰', sqltext,['òœ','⁄‰Ê«‰ „⁄Ì‰','caption'],Results,[50,150,150],alLeft) then begin
          qryPortion.FieldByName('TopicCode').AsString:=results[0];
          TmpChar:=#13;
          gridkeyenter(Sender,TmpChar);
         end;//if
       end;//0
   2: begin
         if searchCode_L1_L2F.SearchCode2(DMf.adcAccounting,'⁄‰Ê«‰ „⁄Ì‰ „ ‰«÷—', sqltext,['òœ','⁄‰Ê«‰ „⁄Ì‰','caption'],Results,[50,150,150],alLeft) then begin
          qryPortion.FieldByName('PortionTopicCode').AsString:=results[0];
          TmpChar:=#13;
          gridkeyenter(Sender,TmpChar);
         end;//if
       end;//0
  end;//case
end;

procedure TPortionTopicCodeF.FormCreate(Sender: TObject);
begin
  inherited;
  qryTopic.Open;
  qryPortion.Open;
end;

procedure TPortionTopicCodeF.qryPortionAfterPost(DataSet: TDataSet);
begin
  inherited;
  BigMessage('À»‹  ‘œ.',1);
end;

procedure TPortionTopicCodeF.qryPortionBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if get_response('¬Ì« »—«Ì Õ–› «Ì‰ ﬂœ Â“Ì‰Â „ÿ„∆‰ Â” Ìœø')<>mrYes then Abort;
end;

procedure TPortionTopicCodeF.qryPortionBeforePost(DataSet: TDataSet);
begin
  inherited;
  if not CheckRequiredFields(qryPortion) then begin
   Abort;
   exit;
  end;//if
end;

procedure TPortionTopicCodeF.qryPortionAfterDelete(DataSet: TDataSet);
begin
  inherited;
  BigMessage('Õ–› ‘œ.',1);
end;

procedure TPortionTopicCodeF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryPortion);
end;

procedure TPortionTopicCodeF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryPortion);
end;

procedure TPortionTopicCodeF.actSendExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1); 
end;

procedure TPortionTopicCodeF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1,1);
end;

procedure TPortionTopicCodeF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
end;

procedure TPortionTopicCodeF.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  gridkeyenter(Sender,key);
end;

procedure TPortionTopicCodeF.actPrintExecute(Sender: TObject);
begin
  inherited;
  try
   qryportion.DisableControls;
   ppReport1.PreviewFormSettings.SinglePageOnly := True;
   ppReport1.Print;
//   InitReportFile(ppReport1,'PortionTopicCode');
  finally
   qryportion.EnableControls;
  end;
end;

procedure TPortionTopicCodeF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text:=APPBank.CompanyName;
end;

procedure TPortionTopicCodeF.ppLblPrintDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text:=GetPrintDate;
end;

procedure TPortionTopicCodeF.ppSysVarPageNoGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text:= GetPageNumberString(Text)
end;

procedure TPortionTopicCodeF._actSearchExecute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryPortion);
end;

procedure TPortionTopicCodeF.actRecallAccExecute(Sender: TObject);
var
  AccCodeFrom,
  AccCodeTo: Integer;
  StrSel:String;
  strList:TStringList;
  I : Integer;
Const
  SqlTxt ='SELECT Acc.Categories.TopicCode, Acc.Categories.MoeenName_L1' +
  ' FROM Acc.Categories LEFT OUTER JOIN' +
  ' Acc.PortionTopicCode ON Acc.Categories.TopicCode = Acc.PortionTopicCode.TopicCode' +
  ' WHERE (Acc.PortionTopicCode.TopicCode IS NULL) AND (Acc.Categories.LevelID = 3) AND (Acc.Categories.TopicCode' +
  ' BETWEEN %d AND %d)';

begin
  inherited;
  with TfilterF.Create2(Self,myParams) do
  try
    AddItem(DMF.adcAccounting,'AccCode','ﬂœ Ê ‰«„ Õ”«» ','ﬂœ Õ”«»',ftInteger,dvMinMax,'','',ciLookup,
           'SELECT TopicCode,MoeenName_L1 FROM acc.Categories WHERE levelId=3',
           'SELECT min(TopicCode),max(TopicCode) FROM acc.Categories WHERE levelId=3');
    if ShowModal=mrOk then
    begin
      GetFilterString;
      AccCodeFrom := GetcFrom(MyParams.ParamValues['AccCode'],ftLargeint);
      AccCodeTo   := GetcTo(MyParams.ParamValues['AccCode'],ftLargeint);
    end else Exit;
  finally
    Free;
  end;//try
  StrSel:= selectedF.ShowSelect(Dmf.adcAccounting,'«‰ Œ«» ﬂœ',Format(SqlTxt,[AccCodeFrom,AccCodeTo]),['⁄‰Ê«‰ „⁄Ì‰','ﬂœ Õ”«» '],alLeft,[100,250]);
  if Trim(StrSel) = EmptyStr then   Exit;
  strList := TStringList.Create;
  try
    strList.Text := StringReplace(StrSel,',',#13,[rfReplaceAll]);
    qryPortion.AfterPost := nil ;
    for i := 0 to strList.Count - 1 do
    begin
      qryPortion.Append ;
      qryPortionTopicCode.AsString := strList[i] ;
      qryPortionPortionTopicCode.AsString := strList[i] ;
      qryPortion.Post ;
    end;
  finally
    qryPortion.AfterPost := qryPortionAfterPost ;
    FreeAndNil(strList);
  end;

end;

procedure TPortionTopicCodeF.actOtherExecute(Sender: TObject);
begin
  inherited;
  popOther.Popup(Mouse.CursorPos.X,Mouse.CursorPos.Y);
end;

procedure TPortionTopicCodeF.actReciveExcelExecute(Sender: TObject);
begin
  inherited;
  GetExcelF.ShowImPortExcel(qryPortion);   
end;

procedure TPortionTopicCodeF.actDelSelectedExecute(Sender: TObject);
var
  i:Integer;
begin
  inherited;
  if get_response('¬Ì« »—«Ì Õ–› „ÿ„∆‰ Â” Ìœø')<>mrYes then Exit;
  if DBGrid1.SelectedRows.Count < 1 then
  begin
    Warn('Ìﬂ „Ê—œ —« «‰ Œ«» ﬂ‰Ìœ');
    Exit;
  end;
  try
    qryPortion.BeforeDelete := nil ;
    qryPortion.AfterDelete := nil ;
    for i := 0 to DBGrid1.SelectedRows.Count - 1 do
    begin
       qryPortion.GotoBookmark((DBGrid1.SelectedRows.items[i]));
       qryPortion.Delete;
    end;
  finally
    qryPortion.AfterDelete := qryPortionAfterDelete;
    qryPortion.BeforeDelete := qryPortionBeforeDelete;
  end;

end;

end.
