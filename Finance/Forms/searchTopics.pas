unit searchTopics;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, Grids, DBGrids, DB, DAODataset,
  DAOQuery,dm;

type
  TsearchTopicsF = class(TForm)
    Panel1: TPanel;
    srch: TEdit;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    qry_topics: TDAOQuery;
    src_topics: TDataSource;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    qry_topicscode1: TIntegerField;
    qry_topicsdesc1: TStringField;
    addBTN: TBitBtn;
    procedure DBGrid1DblClick(Sender: TObject);
    procedure srchChange(Sender: TObject);
    procedure addBTNClick(Sender: TObject);
    procedure srchKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    function getCodeKol(gid: Cardinal;var kname: string;AllowAdd: Boolean): Cardinal;
    function getTopicCode(var Mname: string;AllowAdd: Boolean): Cardinal;
    function GetDetailCode(tc1,tc2:Cardinal;var dName: String;AllowAdd: Boolean): Cardinal;
    function GetExpenseCode(tc: Cardinal; var eName: String;AllowAdd: Boolean): Cardinal;
    function GetDetailCodeFromAll: Cardinal;
    function getGroupID(var gname: String; AllowAdd: Boolean): Cardinal;
    function getKolID(gid: Cardinal; var kname: string;
      AllowAdd: Boolean): Cardinal;
    { Public declarations }
  end;

var
  searchTopicsF: TsearchTopicsF;
  searchType:  TCatType;
  _1_tc: Cardinal;

implementation

uses GroupAccounts, kolAccounts, MoeenAccounts,   Details,
  GlobalPro, CTopics;


{$R *.dfm}

procedure TsearchTopicsF.DBGrid1DblClick(Sender: TObject);
begin
   ModalResult:=mrOk;
end;

function TsearchTopicsF.getCodeKol(gid: Cardinal;var kname: string;AllowAdd: Boolean): Cardinal;
begin
   searchtype:=cKol;
   searchTopicsF:=TsearchTopicsF.Create(Application);
   SetFormProfile(searchTopicsF);
   with searchTopicsF do begin
      try
         Result:=0;
         kname:='';
         with qry_topics do begin
            Active:=False;
            SQL.Text:='Select DISTINCT CodeKol as code1,kolName as desc1';
            SQL.add('from Categories');
            if gid<>0 then
               SQL.add('where (GroupID=' + IntToStr(gid) + ') and kolName like :dsc')
            else
               SQL.add('where kolName like :dsc');
            SQL.add('order by CodeKol;');
            ParamByName('dsc').Value:='**';
            Active:=True;
         end;//with
         addBTN.Visible:=AllowAdd;
         if ShowModal=mrOK then begin
            Result:=qry_topics.fieldbyname('Code1').AsInteger;
            kname:=qry_topics.fieldbyname('Desc1').AsString;
         end;//if
      finally
         Free;
      end;//try
   end;//with
end;


function TsearchTopicsF.GetDetailCode(tc1,tc2:Cardinal;var dName: String;AllowAdd: Boolean): Cardinal;
begin
   _1_tc:=tc1;
   searchType:=cDetail;
   searchTopicsF:=TsearchTopicsF.Create(Application);
   SetFormProfile(searchTopicsF);
   with searchTopicsF do begin
      try
         Result:=0;
         dname:='';
         with qry_topics do begin
            Active:=False;
            SQL.Text:='Select Distinct DetailCode as Code1,Desc as desc1';
            SQL.add('from AllowedDetails');
            SQL.add('where (Desc like :dsc)');
            if not((tc1=0)and(tc2=0)) then
               SQL.Add(format(' and (TopicCode between %d and %d) ',[tc1,tc2]));
            SQL.add('order by DetailCode;');
            ParamByName('dsc').Value:='**';
            Active:=True;
         end;//with
         addBTN.Visible:=AllowAdd;
         if ShowModal=mrOK then begin
            Result:=qry_topics.fieldbyname('Code1').AsInteger;
            dname:=qry_topics.fieldbyname('Desc1').AsString;
         end;//if
      finally
         Free;
      end;//try
   end;//with
end;

function TsearchTopicsF.GetExpenseCode(tc: Cardinal;
  var eName: String;AllowAdd: Boolean): Cardinal;
begin
   searchType:=cExpense;
   searchTopicsF:=TsearchTopicsF.Create(Application);
   SetFormProfile(searchTopicsF);
   with searchTopicsF do begin
      try
         Result:=0;
         ename:='';
         with qry_topics do begin
            Active:=False;
            SQL.Text:='Select Distinct CTopicCode as Code1,Desc as desc1';
            SQL.add('from AllowedExpenses');
            SQL.add('where (Desc like :dsc)');
            if tc<>0 then
               SQL.Add('and (TopicCode=' + IntToStr(tc) + ')');
            SQL.add('order by CTopicCode;');
            ParamByName('dsc').Value:='**';
            Active:=True;
         end;//with
         addBTN.Visible:=AllowAdd;
         if ShowModal=mrOK then begin
            Result:=qry_topics.fieldbyname('Code1').AsInteger;
            ename:=qry_topics.fieldbyname('Desc1').AsString;
         end;//if
      finally
         Free;
      end;//try
   end;//with
end;

function TsearchTopicsF.getTopicCode(var Mname: string;AllowAdd: Boolean): Cardinal;
begin
   searchType:=cMoeen;
   searchTopicsF:=TsearchTopicsF.Create(Application);
   SetFormProfile(searchTopicsF);
   with searchTopicsF do begin
      try
         Result:=0;
         Mname:='';
         with qry_topics do begin
            Active:=False;
            SQL.Text:='Select DISTINCT TopicCode as code1,MoeenName as desc1';
            SQL.add('from Categories');
            SQL.add('where (MoeenName like :dsc) and (MoeenID>0)');
            SQL.add('order by TopicCode;');
            ParamByName('dsc').Value:='**';
            Active:=True;
         end;//with
         addBTN.Visible:=AllowAdd;
         if ShowModal=mrOK then begin
            Result:=qry_topics.fieldbyname('Code1').AsInteger;
            Mname:=qry_topics.fieldbyname('Desc1').AsString;
         end;//if
      finally
         Free;
      end;//try
   end;//with
end;

procedure TsearchTopicsF.srchChange(Sender: TObject);
var
   n: Cardinal;
begin
   n:=strtointdef(Trim(srch.Text),0);
   if n>0 then begin
      if qry_topics.Locate('code1',n,[]) then begin
         srch.Font.Color:=clblack;
         DBGrid1.SetFocus;
      end else srch.Font.Color:=clred;
   end else
   with qry_topics do begin
      Active:=False;
      ParamByName('dsc').Value:='*' + trim(srch.Text) + '*';
      Active:=True;
   end;//with
end;

procedure TsearchTopicsF.addBTNClick(Sender: TObject);
begin
   case searchType of
      cGroup: GroupAccountsF.enter;
      cKol: kolAccountsF.enter(0);
      cMoeen:  MoeenAccountsF.enter(0);
      //cDetail: detailF.enter4moeen(_1_tc);
      cDetail:   CreateMDIForm2(TDetailsF,DetailsF,Self);
      cExpense:  CreateMDIForm2(TCTopicsF,CTopicsF,Self)

   end;//case
   qry_topics.Active:=false;
   qry_topics.Active:=True;
end;

function TsearchTopicsF.GetDetailCodeFromAll: Cardinal;
begin
   searchTopicsF:=TsearchTopicsF.Create(Application);
   SetFormProfile(searchTopicsF);
   with searchTopicsF do begin
      try
         Result:=0;
         with qry_topics do begin
            Active:=False;
            SQL.Text:='Select DetailCode as Code1,Desc as desc1';
            SQL.add('from Details');
            SQL.add('where (Desc like :dsc)');
            SQL.add('order by DetailCode;');
            ParamByName('dsc').Value:='**';
            Active:=True;
         end;//with
         addBTN.Visible:=False;
         if ShowModal=mrOK then begin
            Result:=qry_topics.fieldbyname('Code1').AsInteger;
         end;//if
      finally
         Free;
      end;//try
   end;//with
end;

function TsearchTopicsF.getGroupID(var gname: String;
  AllowAdd: Boolean): Cardinal;
begin
   searchtype:=cGroup;
   searchTopicsF:=TsearchTopicsF.Create(Application);
   SetFormProfile(searchTopicsF);
   with searchTopicsF do begin
      try
         Result:=0;
         gname:='';
         with qry_topics do begin
            Active:=False;
            SQL.Text:='Select DISTINCT groupID as code1,grpName as desc1';
            SQL.add('from Categories');
            SQL.add('where grpName like :dsc');
            SQL.add('order by GROUPID;');
            ParamByName('dsc').Value:='**';
            Active:=True;
         end;//with
         addBTN.Visible:=AllowAdd;
         if ShowModal=mrOK then begin
            Result:=qry_topics.fieldbyname('Code1').AsInteger;
            gname:=qry_topics.fieldbyname('Desc1').AsString;
         end;//if
      finally
         Free;
      end;//try
   end;//with
end;

function TsearchTopicsF.getKolID(gid: Cardinal; var kname: string;
  AllowAdd: Boolean): Cardinal;
begin
   searchtype:=cKol;
   searchTopicsF:=TsearchTopicsF.Create(Application);
   SetFormProfile(searchTopicsF);
   with searchTopicsF do begin
      try
         Result:=0;
         kname:='';
         with qry_topics do begin
            Active:=False;
            SQL.Text:='Select DISTINCT KolID as code1,kolName as desc1';
            SQL.add('from Categories');
            if gid<>0 then
               SQL.add('where (GroupID=' + IntToStr(gid) + ') and kolName like :dsc')
            else
               SQL.add('where kolName like :dsc');
            SQL.add('order by KOLID;');
            ParamByName('dsc').Value:='**';
            Active:=True;
         end;//with
         addBTN.Visible:=AllowAdd;
         if ShowModal=mrOK then begin
            Result:=qry_topics.fieldbyname('Code1').AsInteger;
            kname:=qry_topics.fieldbyname('Desc1').AsString;
         end;//if
      finally
         Free;
      end;//try
   end;//with
end;

procedure TsearchTopicsF.srchKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=vk_down then begin
      DBGrid1.SetFocus;
      Key:=0;
   end;//if
end;

procedure TsearchTopicsF.FormCreate(Sender: TObject);
begin
   Left:=0;
   Top:=0;
   Height:=Screen.Height-10;
end;

end.
