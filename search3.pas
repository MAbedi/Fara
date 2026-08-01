unit search3;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ActnList, db,  DBClient, Provider, DBCtrls,Menus,StrUtils,
  ADODB;

type
  TSearchItem=class
    fieldName:  String;
    caption:  String;
    IsString: Boolean;
  end;//tSearchItem
  Tsearch3F = class(TForm)
    searchbox: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    ActionList1: TActionList;
    Action1: TAction;
    DBText1: TDBText;
    srcSearch: TDataSource;
    procedure Action1Execute(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
  private
    New_dataset: TDataset;
    New_src: TDataSource;
    New_fldName: string;
    String4LIKE :String;

    { Private declarations }
  public
    procedure ShowSearch(dataset: TDataset;src: TDataSource=nil;fldName: string='');
    procedure assignFieldNames;
  published
    { Public declarations }
  end;

var
  search3F: Tsearch3F;
  orginalsql:String;
  qry:TADOQuery;

implementation

uses Filters;

{$R *.DFM}

procedure Tsearch3F.Action1Execute(Sender: TObject);
var
   s: String;
begin
   s:=trim(searchbox.Text);
   s:=StringReplace(String4LIKE,'SearchString4LIKE',s,[rfReplaceAll]);
   try
      with qry do begin
        Active:=False;
        qry.SQL.Text:='SELECT  * FROM('+orginalsql+') AS a WHERE '+s;
        qry.SQL.SaveToFile('c:\sql.txt');
        Active:=True;
      end;//with
   except
    MessageDlg('ÅÌœ« ‰‘œ!˛', mtWarning, [mbOK], 0);
   end;//try
end;

procedure Tsearch3F.ShowSearch(dataset: TDataset;src: TDataSource=nil;fldName: string='');
begin
  if search3F  = nil then
   with search3F do begin
      try
         search3F:=Tsearch3F.Create(Application);
         search3F.New_dataset:=dataset;
         search3F.New_src:=src;
         search3F.New_fldName:=fldName;
         New_dataset:=dataset;
         orginalsql:=TADOQuery(New_dataset).SQL.Text;
         qry:=TADOQuery(New_dataset);

        assignFieldNames;
         DBText1.DataSource:=src;
         DBText1.DataField:=fldName;
         ShowModal;
      finally
         TADOQuery(New_dataset).SQL.Text:=orginalsql;
         searchbox.Text:='';
         free;
      end;//try

   end//with
   else ShowModal;
end;

procedure Tsearch3F.assignFieldNames;
var
  i:  Integer;
begin
  for i:=0 to New_dataset.FieldCount-1 do
    if (New_dataset.Fields[i].Tag and 1)=1 then begin
       String4LIKE:=String4LIKE+
         '(CAST('+New_dataset.Fields[i].FieldName+' AS varchar(200)) LIKE ''%SearchString4LIKE%'') OR';
    end;//if
 String4LIKE:=LeftStr(String4LIKE,length(String4LIKE)-2)
end;

procedure Tsearch3F.CheckBox1Click(Sender: TObject);
begin
 Action1.Execute;
end;


end.
