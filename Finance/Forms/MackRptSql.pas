{-----------------------------------------------------------------------------
 Unit Name: MackRptSql
 Author:    Mostafa
 Purpose:
 History:
-----------------------------------------------------------------------------}



unit MackRptSql;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, Grids, DBGrids, ImgList, DBActns, ActnList,
  StdCtrls, ExtCtrls, Buttons, DB, ADODB, DBCtrls, Mask, System.ImageList,
  System.Actions;

type
  TMackRptSqlF = class(Ttemplate2MDIF)
    DBGrid1: TDBGrid;
    qryRptUsers: TADOQuery;
    qryRptUsersRptId: TIntegerField;
    qryRptUsersRptName: TStringField;
    qryRptUsersHasGrp: TBooleanField;
    qryRptUsersSqlText: TMemoField;
    srcRptUsers: TDataSource;
    qryRptUserItems: TADOQuery;
    srcUserItems: TDataSource;
    qryRptUserItemsID: TAutoIncField;
    qryRptUserItemsRptID: TIntegerField;
    qryRptUserItemsRow: TIntegerField;
    qryRptUserItemsFieldName: TStringField;
    qryRptUserItemsFieldCaption: TStringField;
    qryRptUserItemsCriteria: TStringField;
    qryRptUserItemsCriteria2: TStringField;
    qrySource: TADOQuery;
    newPanel: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    ButtonNewLevel: TBitBtn;
    okPanel: TPanel;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    qryRptUserItemsGroupBy: TWordField;
    qryRptUserItemsSortType: TWordField;
    qryRptUserItemsSortOrder: TWordField;
    qryRptUserItems_Row: TIntegerField;
    qryRptUserItemsShowInRpt: TBooleanField;
    qrySourceID: TIntegerField;
    qrySourceSerial: TIntegerField;
    qrySourceTopicCode: TLargeintField;
    qrySourceDetailCode: TIntegerField;
    qrySourceCTopicCode: TIntegerField;
    qrySourceCTopicCode2: TIntegerField;
    qrySourceRow: TIntegerField;
    qrySourceDebt: TFMTBCDField;
    qrySourceCredit: TFMTBCDField;
    qrySourceAidDocNo: TIntegerField;
    qrySourceAidDocdate: TStringField;
    qrySourceAidAmount: TFloatField;
    qrySourceBudgetTopicID: TIntegerField;
    qrySourceBudgetID: TIntegerField;
    qrySourceReferenceNo: TIntegerField;
    qrySourceReferenceTxt: TStringField;
    qrySourceReferenceDate: TStringField;
    qrySourceProjectID: TIntegerField;
    qrySourceReferenceCheck: TWordField;
    GroupBox1: TGroupBox;
    DBEdit1: TDBEdit;
    chkGroup: TDBCheckBox;
    DBNavigator1: TDBNavigator;
    procedure FormCreate(Sender: TObject);
    procedure qryRptUsersAfterScroll(DataSet: TDataSet);
    procedure qryRptUsersAfterInsert(DataSet: TDataSet);
    procedure qryRptUserItemsAfterInsert(DataSet: TDataSet);
    procedure chkGroupClick(Sender: TObject);
    procedure qryRptUserItemsSortTypeSetText(Sender: TField;
      const Text: String);
    procedure qryRptUserItemsSortTypeGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure qryRptUserItemsCalcFields(DataSet: TDataSet);
    procedure qryRptUserItemsGroupByGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure qryRptUserItemsGroupBySetText(Sender: TField;
      const Text: String);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure qryRptUserItemsShowInRptGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure qryRptUserItemsShowInRptSetText(Sender: TField;
      const Text: String);
    procedure qryRptUserItemsBeforePost(DataSet: TDataSet);
    procedure qryRptUserItemsBeforeEdit(DataSet: TDataSet);
    procedure qryRptUserItemsAfterPost(DataSet: TDataSet);
    procedure srcRptUsersStateChange(Sender: TObject);
    procedure qryRptUsersBeforePost(DataSet: TDataSet);
    procedure srcUserItemsStateChange(Sender: TObject);
  private
    lastorder:Integer;
    fldname:array of String;
    procedure initPickList;
    procedure ToggleCheck;
    procedure setOrder(count:Integer);
    procedure ChangeOrder(Oldvalue,NewValue:Integer);
    function  MackSql:String;
    procedure Add2GroupBy(var grp: string; const s: string);
    procedure Add2Where(var flt: string; const s: string);
    function Add2Order:String;

    { Private declarations }
  public
    { Public declarations }
  end;

var
  MackRptSqlF: TMackRptSqlF;

implementation

uses Dm, GlobalPro, GeneralDM, StrUtils, mmessage;

{$R *.dfm}

procedure TMackRptSqlF.initPickList;
var
  i:Integer;
begin
  with qrySource do begin
    Active:=True;
    First;
    for i:=0 to Fields.Count-1 do begin
      if (Fields[i].Tag and 1)=1 then
       DBGrid1.Columns[1].PickList.AddObject(Fields[i].DisplayLabel,TObject(i));
    end;//while
    Active:=False;
  end;//with
  chkGroupClick(chkGroup);
  setOrder(qryRptUserItems.RecordCount);
end;

procedure TMackRptSqlF.FormCreate(Sender: TObject);
begin
  inherited;
  qryRptUsers.Active:=True;
  initPickList;
end;

procedure TMackRptSqlF.ToggleCheck;
begin
  with qryRptUserItems do begin
    Edit;
    FieldByName('ShowInRpt').AsBoolean:=not FieldByName('ShowInRpt').AsBoolean;
    Post;
  end;//with
end;


procedure TMackRptSqlF.qryRptUsersAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qryRptUserItems do begin
    Active:=False;
    Parameters.ParamByName('Rpt').Value:=DataSet.fieldbyname('RptId').AsInteger;
    Active:=True;
  end;//with
end;

procedure TMackRptSqlF.qryRptUsersAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('RptId').AsInteger:=GetANewCode('','RptUsers','RptId',dmf.adcAccounting);
end;

procedure TMackRptSqlF.qryRptUserItemsAfterInsert(DataSet: TDataSet);
begin
  inherited;

  DataSet.FieldByName('RptID').AsInteger:=qryRptUsers.FieldByName('RptID').AsInteger;
  DataSet.FieldByName('ShowInRpt').Value:=1;
  setOrder(DataSet.RecordCount+1);
end;

procedure TMackRptSqlF.chkGroupClick(Sender: TObject);
begin
  inherited;
  DBGrid1.Columns[6].Visible:=chkGroup.Checked;
end;

procedure TMackRptSqlF.qryRptUserItemsSortTypeSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.AsInteger:=DBGrid1.Columns[4].PickList.IndexOf(Text);
end;

procedure TMackRptSqlF.qryRptUserItemsSortTypeGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  case Sender.AsInteger of
    0:Text:='‰œ«—œ';
    1:Text:='’⁄ÊœÌ';
    2:Text:='‰“Ê·Ì';
  end;//case
end;

procedure TMackRptSqlF.qryRptUserItemsCalcFields(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('_row').AsInteger:=abs(qryRptUserItems.RecNo);
end;

procedure TMackRptSqlF.qryRptUserItemsGroupByGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
 case Sender.AsInteger of
  0:Text:='‰œ«—œ';
  1:Text:='ê—ÊÂÌ';
  2:Text:='Ã„⁄';
  3:Text:='„‘—Êÿ';
  4:Text:=' ⁄œ«œ';
  5:Text:='Õœ«ﬂÀ—';
  6:Text:='Õœ«ﬁ·';
 end;//case
end;

procedure TMackRptSqlF.qryRptUserItemsGroupBySetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.AsInteger:=DBGrid1.Columns[6].PickList.IndexOf(Text);

end;

procedure TMackRptSqlF.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  if DBGrid1.SelectedIndex in [3] then ToggleCheck;
end;

procedure TMackRptSqlF.qryRptUserItemsShowInRptGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  case Sender.AsBoolean of
    False:Text:='‰„«Ì‘ ‰‘Êœ';
    True:Text:='‰„«Ì‘ ‘Êœ'  ;
  end;//case
end;

procedure TMackRptSqlF.qryRptUserItemsShowInRptSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.Value:=DBGrid1.Columns[3].PickList.IndexOf(Text);
end;

procedure TMackRptSqlF.qryRptUserItemsBeforePost(DataSet: TDataSet);
begin
  inherited;
//  if DataSet.RecordCount < DataSet.FieldByName('SortOrder').AsInteger then begin
//    Warn('‘„«—Â  — Ì» ‰«„⁄ »— «” ');
//    Abort;
//  end;//if
 
  DataSet.FieldByName('row').AsInteger:=DataSet.FieldByName('_row').AsInteger;
  ChangeOrder(DataSet.fieldbyname('SortOrder').AsInteger,lastorder);
end;

procedure TMackRptSqlF.setOrder(count:Integer);
var
  i:Integer;
begin
  DBGrid1.Columns[5].PickList.Clear;
  for i:=1 to count do
    DBGrid1.Columns[5].PickList.Add(IntToStr(i))
end;

procedure TMackRptSqlF.qryRptUserItemsBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  lastorder:=DataSet.fieldbyname('SortOrder').AsInteger;
end;

procedure TMackRptSqlF.ChangeOrder(Oldvalue, NewValue: Integer);
begin
 if lastorder=0 then NewValue:=qryRptUserItems.RecordCount+1;
 with Dmf.qryTmpTmp do begin
  Active:=False;
  SQL.Text:='UPDATE RptUserItems';
  SQL.Add  ('SET SortOrder = '+IntToStr(NewValue));
  SQL.Add  ('WHERE (SortOrder = '+IntToStr(Oldvalue)+')');
  SQL.Add  ('AND (RptID = '+qryRptUsersRptId.AsString+')');
  ExecSQL;
  lastorder:=0;
 end;//with
end;

procedure TMackRptSqlF.qryRptUserItemsAfterPost(DataSet: TDataSet);
var
  SavePlace: TBookmark;
begin
  inherited;
  try
    SavePlace:=DataSet.GetBookmark;
    qryRptUserItems.Requery;
    DataSet.GotoBookmark(SavePlace);
  finally
    DataSet.FreeBookmark(SavePlace);
  end;//try
end;

procedure TMackRptSqlF.srcRptUsersStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible:=qryRptUsers.State in dsEditModes;
  newPanel.Visible:=not okPanel.Visible;
  BtnReject.Cancel:=newPanel.Visible;
  FreeReservedCodes(DMf.adcAccounting);
end;

function TMackRptSqlF.MackSql: String;
var
  Group:String;
  Where:String;
  ix:Integer;
  i:Integer;
  sqltxt:String;
begin
  i:=0;
  sqltxt:='';
  try
    with qryRptUserItems do begin
      SetLength(fldname,RecordCount);
      BigMessageProgBar('œ— Õ«· ”«Œ  ê“«—‘...',RecordCount);
      First;
      while not eof do begin
        ix:=DBGrid1.Columns[1].PickList.IndexOf(fieldbyname('FieldName').AsString);
        fldname[i]:=qrySource.Fields[integer(DBGrid1.Columns[1].PickList.Objects[ix])].FieldName;
        if chkGroup.Checked then begin
          case fieldbyname('GroupBy').AsInteger of
            1:Add2GroupBy(Group,fldname[i]);
            2:fldname[i]:='Sum('+fldname[i]+')';
            3:Add2Where(Where,StringReplace(fieldbyname('Criteria').AsString,fieldbyname('FieldName').AsString,fldname[i],[rfReplaceAll])+
                              StringReplace(fieldbyname('Criteria2').AsString,fieldbyname('FieldName').AsString,fldname[i],[rfReplaceAll]));
            4:fldname[i]:='Count('+fldname[i]+')';
            5:fldname[i]:='Max('+fldname[i]+')';
            6:fldname[i]:='Min('+fldname[i]+')';
          end;//case
        end;//if
        if fieldbyname('ShowInRpt').AsBoolean then
          sqltxt:=sqltxt+fldname[i]+',';
        Next;
        Inc(i);
        GoProgressBar(IntToStr(i));
      end;//while
      SetLength(sqltxt,length(sqltxt)-1);
      Result:='select ' +sqltxt+' from '+extractTableNameFromQuery(qrySource.SQL.Text) +
      Where+Group+Add2Order;
    end;//with
  finally
    CloseMessage;
  end;//try
end;

procedure TMackRptSqlF.Add2GroupBy(var grp: string; const s: string);
begin
   if grp='' then grp:=' GROUP BY  '+ trim(s)
   else
      grp:=grp + ' , '+ trim(s)  ;
end;

procedure TMackRptSqlF.Add2Where(var flt: string; const s: string);
begin
   if flt='' then flt:=' WHERE ' + trim(s)
   else
      flt:=flt +' ' +  trim(s)  ;
end;

Function TMackRptSqlF.Add2Order:String;
var
  SortType:String;
  ix:Integer;
  i:Integer;
begin
  i:=0;
  with Dmf.qry_Temp do begin
    Active:=False;
    SQL.Text:='SELECT SortOrder, SortType';
    SQL.Add  ('FROM RptUserItems');
    SQL.Add  ('WHERE RptID = '+qryRptUsersRptId.AsString);
    SQL.Add  ('ORDER BY SortOrder');
    Active:=True;
    First;
    while not eof  do begin
       SortType:='';
      if Fields[1].AsInteger=0 then Exit;
      if Fields[1].AsInteger = 2 then SortType:=' DESC';
       if Result='' then Result:=' ORDER BY ' + trim(fldname[i]) + SortType
       else
         Result:=Result +',' +  trim(fldname[i]) + SortType ;
      Next;
      Inc(i);
    end;//while
  end;//with
end;

procedure TMackRptSqlF.qryRptUsersBeforePost(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('SqlText').AsString:=MackSql;

end;

procedure TMackRptSqlF.srcUserItemsStateChange(Sender: TObject);
begin
  inherited;
 okPanel.Visible:=qryRptUserItems.State in dseditmodes;
end;

end.
