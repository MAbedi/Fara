unit DefineReportItems;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB,  Grids, Vcl.DBGrids, StdCtrls, Buttons,
  ExtCtrls, ADODB, DBActns, ActnList, System.Actions;

type
  TDefineReportItemsF = class(TForm)
    PnlUnderButton: TPanel;
    BtnReject: TBitBtn;
    DBGrid1: TDBGrid;
    topicPanel: TPanel;
    srcRowItems: TDataSource;
    qryCTopicCodes: TADOQuery;
    qryDetailCodes: TADOQuery;
    qryTopicCodes: TADOQuery;
    qryRowItems: TADOQuery;
    qryRowItemsrowID: TIntegerField;
    qryRowItemsrepCode: TWordField;
    qryRowItemsColNum: TWordField;
    qryRowItemsG_TopicCode: TIntegerField;
    qryRowItemsG_DetailCode: TIntegerField;
    qryRowItemsG_CTopicCode: TIntegerField;
    qryRowItems_MoeenName: TStringField;
    qryRowItems_DetailName: TStringField;
    qryCTopicCodesCTopicCode: TIntegerField;
    qryCTopicCodesDesc: TWideStringField;
    qryRowItems_CTopicName: TStringField;
    BitBtn1: TBitBtn;
    ActionList: TActionList;
    actExit: TAction;
    DataSetInsert1: TDataSetInsert;
    DataSetEdit1: TDataSetEdit;
    DataSetPost1: TDataSetPost;
    DataSetCancel1: TDataSetCancel;
    _actSearch: TAction;
    DataSetDelete1_: TDataSetDelete;
    actExcel: TAction;
    actSort: TAction;
    actPrint: TAction;
    procedure DBGrid1EditButtonClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure qryRowItemsAfterInsert(DataSet: TDataSet);
    procedure qryRowItemsBeforePost(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qryRowItemsBeforeDelete(DataSet: TDataSet);
  private
    { Private declarations }
    _rowID,_repCode,_colNum:  Integer;
//    procedure gridkeyenter(Sender: TObject;var key: char);
  public
    procedure ShowRows(const rowID,repCode: integer;const colNum: byte;const rowTopic, repName: string);
    { Public declarations }
  end;

var
  DefineReportItemsF: TDefineReportItemsF;

implementation

uses dm, GlobalPro, searchCode2_ADO , sndkey32;

{$R *.dfm}

procedure TDefineReportItemsF.ShowRows(const rowID,repCode: integer;const colNum: byte;const rowTopic, repName: string);
begin
  DefineReportItemsF:=TDefineReportItemsF.Create(Application);
  try
    with DefineReportItemsF do begin
      _rowID:=rowID;
      _repCode:=repCode;
      _colNum:=colNum;
      Font.Assign(var_glb_DefaultFont);
      ColorDBGrid(DBGrid1);
      topicPanel.Caption:=Format(' ⁄—Ì› ﬂœÂ«Ì Õ”«»œ«—Ì „— »ÿ »« —œÌ› %s «“ ê“«—‘ %s',[rowTopic,repName]);

      with qryRowItems do begin
        Active:=False;
        Parameters.ParamByName('rowID').Value:=rowID;
        Parameters.ParamByName('repCode').Value:=repCode;
        Parameters.ParamByName('colNum').Value:=colNum;
        Active:=True;
      end;//with
      ShowModal;
    end;//with
  finally
    DefineReportItemsF.Free;
  end;//try
end;

procedure TDefineReportItemsF.DBGrid1EditButtonClick(Sender: TObject);
var
   tc:   Cardinal;
   s: String;

   begin {
   case DBGrid1.SelectedIndex of
      0: begin
         tc:=searchCode2_ADO.getTopicCode(s,True);
         if tc>0 then begin
            if not (DBGrid1.DataSource.DataSet.State in [dsInsert,dsEdit]) then DBGrid1.DataSource.DataSet.Edit;
            DBGrid1.DataSource.DataSet.FieldByName('G_TopicCode').Value:=tc;
         end;//if
      end;//3
      1: begin
         tc:=searchCode2_ADO.getDetailCode(DBGrid1.DataSource.DataSet.fieldbyname('G_TopicCode').AsInteger,
           DBGrid1.DataSource.DataSet.fieldbyname('G_TopicCode').AsInteger,s,True);
         if tc>0 then begin
            if not (DBGrid1.DataSource.DataSet.State in [dsInsert,dsEdit]) then
              DBGrid1.DataSource.DataSet.Edit;
            DBGrid1.DataSource.DataSet.FieldByName('G_DetailCode').Value:=tc;
         end;//if
      end;//2
      2: begin
         tc:=searchTopicsF.GetExpenseCode(DBGrid1.DataSource.DataSet.fieldbyname('G_TopicCode').AsInteger,s,True);
         if tc>0 then begin
            if not (DBGrid1.DataSource.DataSet.State in [dsInsert,dsEdit]) then DBGrid1.DataSource.DataSet.Edit;
            DBGrid1.DataSource.DataSet.FieldByName('G_CTopicCode').Value:=tc;
         end;//if
      end;//1
   end;//case }
end;


//procedure TDefineReportItemsF.gridkeyenter(Sender: TObject;var key: char);
//var
//  nextIndex:  Integer;
//  curIndex:   Integer;
//begin
//  curIndex:=(Sender as TDBGrid).SelectedIndex;
//  nextIndex:=curIndex;
//  case key of
//    #13:  begin
//      if shiftDown then exit;
//      key:=#0;
//      nextIndex:=curIndex + 1;
//      if (nextIndex>-1) and (nextIndex< (Sender as TDBGrid).Columns.Count-1) then
//        while (((Sender as TDBGrid).Columns[nextIndex].ReadOnly) or (not(Sender as TDBGrid).Columns[nextIndex].Visible))  do begin
//          nextIndex:=nextIndex+1;
//          if nextIndex>(Sender as TDBGrid).Columns.Count-1 then begin
//            nextIndex:=-1;
//            Break;
//          end;//if
//        end;//while
//      if nextIndex>(Sender as TDBGrid).Columns.Count-1 then nextIndex:=-1;
//    end;//#13
//    '+': begin
//      key:=#0;
//      nextIndex:=curIndex-1;
//      if nextIndex>0 then
//         if (((Sender as TDBGrid).Columns[nextIndex].ReadOnly) or
//          (not(Sender as TDBGrid).Columns[nextIndex].Visible)) then dec(nextIndex);
//         if nextIndex<0 then nextIndex:=-3;
//    end;// +
//    '*':  begin
//      key:=#0;
//      SendKeys('000',false);
//    end;// *
//    #27: if (sender as TDBGrid).DataSource.DataSet.State in dseditmodes then (sender as TDBGrid).DataSource.DataSet.Cancel;
//    #32:  if curIndex in [0..2] then begin
//      key:=#0;
//      DBGrid1EditButtonClick(sender);
//    end;//if
//  end;//case
//  if (curindex<>nextindex) then
//    case nextindex of
//       -1: begin
//            sendkey(vk_down,[],false);
//            (sender as TDBGrid).selectedindex:=0;
//          end;//0
//       -2:  begin
//              if (sender as TDBGrid).DataSource.State in dsEditmodes then (sender as TDBGrid).datasource.DataSet.Cancel;
//              Perform(WM_NEXTDLGCTL,0,0);
//            end;//-2
//       -3:  begin
//              if (sender as TDBGrid).DataSource.State in dsEditmodes then (sender as TDBGrid).datasource.DataSet.Cancel;
//              Perform(WM_NEXTDLGCTL,1,0);
//            end;//-3
//       else
//            (sender as TDBGrid).selectedindex:=nextIndex;
//    end;//case
//end;

procedure TDefineReportItemsF.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
 // gridkeyenter(Sender,Key);
end;

procedure TDefineReportItemsF.qryRowItemsAfterInsert(DataSet: TDataSet);
begin
  DataSet.FieldByName('rowID').AsInteger:=_rowID;
  DataSet.FieldByName('repCode').AsInteger:=_repCode;
  DataSet.FieldByName('colNum').AsInteger:=_colNum;
  DBGrid1.SelectedIndex:=0;
end;

procedure TDefineReportItemsF.qryRowItemsBeforePost(DataSet: TDataSet);
begin
  if DataSet.FieldByName('_MoeenName').AsString='' then Abort;
end;

procedure TDefineReportItemsF.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if qryRowItems.State in dseditmodes then begin
    if qryRowItems_MoeenName.AsString='' then qryRowItems.Cancel else  qryRowItems.Post ;
  end;
end;

procedure TDefineReportItemsF.qryRowItemsBeforeDelete(DataSet: TDataSet);
begin
if get_response('¬Ì« «“ Õ–› „ÿ„∆‰ Â” Ìœ')<> mryes then Abort;
end;

end.
