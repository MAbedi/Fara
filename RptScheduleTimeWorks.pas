unit RptScheduleTimeWorks;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, ADODB, Grids, Vcl.DBGrids, Menus, System.ImageList,
  System.Actions;

type
  TRptScheduleTimeWorksF = class(Ttemplate2MDIF)
    qryScheduleTimeWorks: TADOQuery;
    qryScheduleTimeWorksWorkId: TIntegerField;
    qryScheduleTimeWorksWorkNo: TIntegerField;
    qryScheduleTimeWorksWorkDate: TStringField;
    qryScheduleTimeWorksState: TWordField;
    qryScheduleTimeWorksMashinID: TIntegerField;
    qryScheduleTimeWorksShiftNo: TWordField;
    qryScheduleTimeWorksReciptNo: TIntegerField;
    qryScheduleTimeWorksReciptDate: TStringField;
    qryScheduleTimeWorksProcCode: TIntegerField;
    qryScheduleTimeWorks_MashinName: TStringField;
    qryScheduleTimeWorks_ProcName: TStringField;
    SrcScheduleTimeWorks: TDataSource;
    DBGrid1: TDBGrid;
    actFiltter: TAction;
    BitBtn1: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn4: TBitBtn;
    actChangeState: TAction;
    PopMnuState: TPopupMenu;
    qry_LookUpState: TADOQuery;
    qry_LookUpStateInfoId: TIntegerField;
    qry_LookUpStateInfoName: TStringField;
    actSendToExcel: TAction;
    actSort: TAction;
    actPrint: TAction;
    qryLookup_Mashin: TADOQuery;
    qryLookup_Proc: TADOQuery;
    procedure actFiltterExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure actChangeStateExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actSendToExcelExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure qryScheduleTimeWorksStateGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
  private
    { Private declarations }
    procedure UpdateFilter;
    procedure SampelClick(Sender: TObject);
    procedure initpopmenu;
  public
    { Public declarations }
  end;

var
  RptScheduleTimeWorksF: TRptScheduleTimeWorksF;

implementation

uses DM, GlobalPro, search2, sort2, filter_ADO, FilterClass_ADO, mmessage;

{$R *.dfm}

procedure TRptScheduleTimeWorksF.actFiltterExecute(Sender: TObject);
begin
  inherited;
   with TfilterF.Create2(Self,myParams) do begin
    try
      AddItem(DMf.adcBSell,'MashinID','⁄Ê«„·  Ê·Ìœ ','⁄«„·',ftInteger,dvMinMax,'','',ciLookup,
       'SELECT InfoId, InfoName FROM  dbo.ScheduleInfo WHERE (Code = 6) ',
       'SELECT MIN(MashinID), MAX(MashinID) FROM dbo.ScheduleTimeWorks');
      AddItem(DMf.adcBSell,'ProcCode','Œÿ  Ê·ÌœÌ','Œÿ ',ftInteger,dvMinMax,'','',ciLookup,
       'SELECT InfoId, InfoName FROM  dbo.ScheduleInfo WHERE (Code = 7) ',
       'SELECT MIN(ProcCode), MAX(ProcCode)  FROM dbo.ScheduleTimeWorks');
      AddItem(DMf.adcBSell,'State','Ê÷⁄Ì  ','Ê÷⁄Ì ',ftInteger,dvMinMax,'','',ciLookup,
        'SELECT InfoId, InfoName FROM  dbo.ScheduleInfo WHERE (Code = 101) ',
        'SELECT     MIN(State), MAX(State)  FROM    dbo.ScheduleTimeWorks');
      AddItem(DMF.adcBSell,'WorkDate','  «—ÌŒ ',' «—ÌŒ',ftDate,dvMinMax,'','',ciSimple, '',
        'SELECT MIN(WorkDate), MAX(WorkDate)  FROM  dbo.ScheduleTimeWorks');
      AddItem(DMf.adcBSell,'WorkNo',' ‘„«—Â ','‘„«—Â',ftInteger,dvMinMax,'','',ciSimple,
         '','SELECT MIN(WorkNo), MAX(WorkNo)  FROM    dbo.ScheduleTimeWorks');
     if ShowModal=mrOk then begin
        GetFilterString;
        UpdateFilter;
     end;//if
    finally
     Free;
    end;//try
  end;//with
end;

procedure TRptScheduleTimeWorksF.UpdateFilter;
begin
  with qryScheduleTimeWorks do begin
    Active:=False;
    Parameters.ParamByName('WorkNoFrom').Value:=GetcFrom(myParams.ParamValues['WorkNo'],ftInteger);
    Parameters.ParamByName('WorkNoTo').Value:=GetcTo(myParams.ParamValues['WorkNo'],ftInteger);
    Parameters.ParamByName('WorkDateFrom').Value:=GetcFrom(myParams.ParamValues['WorkDate'],ftDate);
    Parameters.ParamByName('WorkDateTo').Value:=GetcTo(myParams.ParamValues['WorkDate'],ftDate);
    Parameters.ParamByName('StateFrom').Value:=GetcFrom(myParams.ParamValues['State'],ftInteger);
    Parameters.ParamByName('StateTo').Value:=GetcTo(myParams.ParamValues['State'],ftInteger);
    Parameters.ParamByName('MashinIDFrom').Value:=GetcFrom(myParams.ParamValues['MashinID'],ftInteger);
    Parameters.ParamByName('MashinIDTo').Value:=GetcTo(myParams.ParamValues['MashinID'],ftInteger);
    Parameters.ParamByName('ProcCodeFrom').Value:=GetcFrom(myParams.ParamValues['ProcCode'],ftInteger);
    Parameters.ParamByName('ProcCodeTo').Value:=GetcTo(myParams.ParamValues['ProcCode'],ftInteger);
    Active:=True;
  end;//with
end;


procedure TRptScheduleTimeWorksF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  actFiltter.Execute;
  if myParams.FindParam('WorkNo')=nil then close;
end;

procedure TRptScheduleTimeWorksF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1,3);
end;

procedure TRptScheduleTimeWorksF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
end;

procedure TRptScheduleTimeWorksF.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  if not(gdSelected in State) then begin
    if odd(DBGrid1.DataSource.DataSet.RecNo) then
      DBGrid1.Canvas.Brush.Color:=const_fixed_columns_color;
  end;//if
  DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,state);
end;

procedure TRptScheduleTimeWorksF.actChangeStateExecute(Sender: TObject);
begin
  inherited;
  PopMnuState.Popup(Mouse.CursorPos.X,Mouse.CursorPos.Y);
end;

procedure TRptScheduleTimeWorksF.SampelClick(Sender: TObject);
var
//  LastNumber: Integer;
  ChangeNo:Integer;
begin
  inherited;


  begin
    if get_response(' ¬Ì« »—«Ì  €ÌÌ— Ê÷⁄Ì  „ÿ„∆‰ Â” Ìœø')<>mrYes then Exit;
 //      LastNumber:=qryScheduleTimeWorks.fieldbyname('WorkId').AsInteger;
       ChangeNo:=TMainMenu(Sender).Tag;
     with DMF.qryTmpTmp do begin
       Active:=false;
       SQL.text:='UPDATE ScheduleTimeWorks SET State ='+IntToStr(ChangeNo)+
                  ' WHERE(WorkId =  '+qryScheduleTimeWorks.fieldbyname('WorkId').AsString+')' ;
       ExecSQL;
       BigMessage(TMenuItem(Sender).Caption,1);
     end;//with
        qryScheduleTimeWorks.Requery;
  end;//else
     // qryScheduleProcItems.Locate('ReciptItemID',LastNumber,[]);

end;
procedure TRptScheduleTimeWorksF.initpopmenu;
var
  i:Integer;
begin
  i:=0;
    with qry_LookUpState  do begin
      Active:=True;
     First;
      while not eof do begin
          PopMnuState.Items.Add(NewItem(fieldbyname('InfoName').AsString,TextToShortCut(''),false
                                       ,true,SampelClick,0,'items'+IntToStr(i)));
          PopMnuState.Items[i].Tag:=fieldbyname('InfoId').AsInteger;
          Inc(i);
        Next;
      end;//while
      Active:=False;
    end;//with
end;

procedure TRptScheduleTimeWorksF.FormCreate(Sender: TObject);
begin
  inherited;
   initpopmenu;
end;

procedure TRptScheduleTimeWorksF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryScheduleTimeWorks);
end;

procedure TRptScheduleTimeWorksF.actSendToExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TRptScheduleTimeWorksF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryScheduleTimeWorks);
end;

procedure TRptScheduleTimeWorksF.qryScheduleTimeWorksStateGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
 case Sender.AsInteger of
    1:text:='„Êﬁ ';
    2:text:='ﬁÿ⁄Ì';
    3:text:='‰Â«∆Ì ‘œÂ';
  end;//case
end;

end.
