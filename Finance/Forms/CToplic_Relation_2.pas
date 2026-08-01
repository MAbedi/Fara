unit CToplic_Relation_2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template4, DBActns, ActnList, StdCtrls, Buttons, ExtCtrls, DB,
  DBClient, Provider, ADODB, Grids, Vcl.DBGrids, System.Actions;

type
  TCToplic_Relation_2F = class(TTemplate4F)
    qry_CToplic2: TADOQuery;
    prv_Ctoplic2: TDataSetProvider;
    cli_CToplic2: TClientDataSet;
    src_CToplic2: TDataSource;
    Image3: TImage;
    Image2: TImage;
    BitBtn1: TBitBtn;
    qryCTpTogether: TADOQuery;
    cli_CToplic2_Checked: TBooleanField;
    DBGrid1: TDBGrid;
    qryCTpTogetherCTopicCode: TIntegerField;
    qryCTpTogetherCTopicCode2: TIntegerField;
    Button1: TButton;
    Button2: TButton;
    Button4: TButton;
    Button3: TButton;
    actSlelectAll: TAction;
    actSlelectInverse: TAction;
    actSort: TAction;
    actSearch: TAction;
    cli_CToplic2CTopicCode: TIntegerField;
    cli_CToplic2CTopicName_L1: TStringField;
    cli_CToplic2CTopicName_L2: TStringField;
    qry_CToplic2CTopicCode: TIntegerField;
    qry_CToplic2CTopicName_L1: TStringField;
    qry_CToplic2CTopicName_L2: TStringField;
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actSlelectInverseExecute(Sender: TObject);
    procedure actSlelectAllExecute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actSearchExecute(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
  private
    procedure makeSql;
    procedure ToggleCheck;
    procedure SaveSelect;
    procedure ReadSelect;
    { Private declarations }
  public
    procedure ShowChooseDetail(FilterCode: Integer);
   { Public declarations }
  end;

var
  CToplic_Relation_2F: TCToplic_Relation_2F;

implementation

uses Dm, GlobalPro, sort2, search2;

{$R *.dfm}

procedure TCToplic_Relation_2F.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,state);
  if DataCol=0 then begin
    DBGrid1.Canvas.Rectangle(Rect);
    if cli_CToplic2_Checked.AsBoolean then
      DBGrid1.Canvas.Draw(Rect.Left,Rect.Top,Image3.Picture.Graphic)
    else
      DBGrid1.Canvas.Draw(Rect.Left,Rect.Top,Image2.Picture.Graphic)
  end;//if
end;


procedure TCToplic_Relation_2F.ToggleCheck;
begin
  with cli_CToplic2 do begin
    Edit;
    FieldByName('_Checked').AsBoolean:=not FieldByName('_Checked').AsBoolean;
    Post;
  end;//with
end;

procedure TCToplic_Relation_2F.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  ToggleCheck;
end;

procedure TCToplic_Relation_2F.ShowChooseDetail(FilterCode:Integer);
begin
  CToplic_Relation_2F:=TCToplic_Relation_2F.Create(Application);
  with CToplic_Relation_2F do begin
    try
      with qryCTpTogether do begin
        Active:=False;
        Parameters.ParamByName('FilterCode').Value:=FilterCode;
        Active:=True;
      end;//with
      makeSql;
      ReadSelect;
      if mrok=ShowModal then SaveSelect;
    finally
      Free;
    end;//try
  end;//with
end;

procedure TCToplic_Relation_2F.ReadSelect;
begin
  cli_CToplic2.Active:=False;
  cli_CToplic2.Active:=True ;
  with qryCTpTogether do
    try
      DisableControls;
      First;
      while not Eof do
      begin
        with cli_CToplic2 do
        begin
          if Locate('CTopicCode',qryCTpTogether.FieldByName('CTopicCode').AsInteger,[]) then
          begin
            Edit;
            FieldByName('_Checked').AsBoolean:=True;
            Post;
          end;//if
        end;//with
        next;
      end;//while
    finally
      EnableControls;
    end;//try

end;


procedure TCToplic_Relation_2F.SaveSelect;
begin
  with qryCTpTogether do
    try
      DisableControls;
      First;
      while not eof do begin
        delete;
      end;//while
      cli_CToplic2.DisableControls;
      cli_CToplic2.First;
      while not cli_CToplic2.Eof do begin
        if cli_CToplic2_Checked.AsBoolean then begin
          Insert;
          FieldByName('CTopicCode').AsInteger:=cli_CToplic2.fieldbyname('CTopicCode').AsInteger;
          FieldByName('CTopicCode2').AsInteger:=Parameters.ParamByName('Filtercode').Value;

          post;
        end;//if
        cli_CToplic2.Next;
      end;//while
    finally
      UpdateBatch;
      EnableControls;
      cli_CToplic2.EnableControls;
    end;//try

end;

procedure TCToplic_Relation_2F.FormCreate(Sender: TObject);
begin
  inherited;
  qry_CToplic2.Active:=True;
end;

procedure TCToplic_Relation_2F.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key=VK_SPACE then begin
    Key:=0;
    ToggleCheck;
  end;//if

end;

procedure TCToplic_Relation_2F.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1,1,True);
end;

procedure TCToplic_Relation_2F.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
end;

procedure TCToplic_Relation_2F.actSlelectInverseExecute(Sender: TObject);
begin
  inherited;
   with cli_CToplic2 do begin
    DisableControls;
    First;
    while not eof do begin
      Edit;
      FieldByName('_checked').AsBoolean:=not FieldByName('_checked').AsBoolean;
      Post;
      Next;
    end;//while
    First;
    EnableControls;
  end;//with
end;

procedure TCToplic_Relation_2F.actSlelectAllExecute(Sender: TObject);
begin
  inherited;
   with cli_CToplic2 do begin
    DisableControls;
    First;
    while not eof do begin
      Edit;
      FieldByName('_checked').AsBoolean:=True;
      Post;
      Next;
    end;//while
    First;
    EnableControls;
  end;//with
end;

procedure TCToplic_Relation_2F.actSortExecute(Sender: TObject);
begin
  inherited;
   sort2F.ShowSort(qry_CToplic2);
end;

procedure TCToplic_Relation_2F.actSearchExecute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qry_CToplic2);
end;

procedure TCToplic_Relation_2F.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key <> #32 then
  QuickSearch(key,cli_CToplic2.FieldByName('CTopicCode'));
end;

procedure TCToplic_Relation_2F.makeSql;
begin

//- -- -- --  not zero CTopic2 in sql
      with Dmf.qry_Temp do begin
       Active:=false;
       SQL.Text:='SELECT CTopicCode  FROM acc.Documents';
       SQL.Add  (' GROUP BY  CTopicCode  Having  Max(CTopicCode2) = 0 ' );
       Active:=true;
       First;
       qry_CToplic2.Active:=false;
       while not eof do begin
        qry_CToplic2.SQL.Text:=qry_CToplic2.SQL.Text+
                              ' and acc.CenterTopics.CTopicCode<>'+Fieldbyname('CTopicCode').AsString;
        next;
       end;
       sql.Add('Order By Ltrim(Str(acc.CenterTopics.CTopicCode))');
      end;//with
  qryCTpTogether.Active:=True;
end;

end.
