unit BudgetTopics1_NewEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template4, Grids, Vcl.DBGrids, DBActns, ActnList, StdCtrls, Buttons,
  ExtCtrls, DB, DBClient, Provider, ADODB, System.Actions;

type
  TBudgetTopics1_NewEditF = class(TTemplate4F)
    DBGrid1: TDBGrid;
    Image3: TImage;
    Image2: TImage;
    qrySelectTopicId: TADOQuery;
    DataSetProvider1: TDataSetProvider;
    CliSelectTopicId: TClientDataSet;
    SrcSelectTopicId: TDataSource;
    CliSelectTopicId_Checket: TBooleanField;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    qrySelectTopicIdProjectID: TIntegerField;
    qrySelectTopicIdProjectCaption: TStringField;
    CliSelectTopicIdProjectID: TIntegerField;
    CliSelectTopicIdProjectCaption: TStringField;
    qrySelectTopicIdProjectCaption_L2: TStringField;
    CliSelectTopicIdProjectCaption_L2: TStringField;
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure DBGrid1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    procedure ReadSelect;
    procedure ToggleStore;
  public
    function CheckTick: Boolean;
    procedure enter;
    procedure SaveSelect;
  end;

var
  BudgetTopics1_NewEditF: TBudgetTopics1_NewEditF;

implementation

uses dm, BudgetTopics1, GlobalPro;

{$R *.dfm}

procedure TBudgetTopics1_NewEditF.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,state);
  if DataCol=0 then begin
    DBGrid1.Canvas.Rectangle(Rect);
    if CliSelectTopicId_Checket.AsBoolean then
      DBGrid1.Canvas.Draw(Rect.Left,Rect.Top,Image3.Picture.Graphic)
    else
      DBGrid1.Canvas.Draw(Rect.Left,Rect.Top,Image2.Picture.Graphic)
  end;//if

end;

procedure TBudgetTopics1_NewEditF.enter;
begin
 BudgetTopics1_NewEditF:=TBudgetTopics1_NewEditF.Create(Application);
 with BudgetTopics1_NewEditF do begin
   try
     ReadSelect;
     if  mrok = ShowModal then
        SaveSelect;
   finally
     Free;
   end;//try
 end;//with

end;

procedure TBudgetTopics1_NewEditF.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  ToggleStore;
end;

procedure TBudgetTopics1_NewEditF.DBGrid1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key=VK_SPACE then begin
    Key:=0;
    ToggleStore;
  end;//if
end;

procedure TBudgetTopics1_NewEditF.DBGrid1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
//  (Sender as TDBGrid).Refresh
end;

procedure TBudgetTopics1_NewEditF.ReadSelect;
begin
  CliSelectTopicId.Active:=False;
  CliSelectTopicId.Active:=True ;
  with BudgetTopics1F.qryProjectsRange do begin
    try
      DisableControls;
      First;
      while not Eof do begin
        with CliSelectTopicId do begin
          if Locate('ProjectID',BudgetTopics1F.qryProjectsRange.FieldByName('ProjectID').AsInteger,[]) then begin
            Edit;
            FieldByName('_Checket').AsBoolean:=True;
            Post;
          end;//if
        end;//with
        next;
      end;//while
    finally
      EnableControls;
    end;//try
  end;//with
end;

procedure TBudgetTopics1_NewEditF.SaveSelect;
begin
  with BudgetTopics1F.qryProjectsRange do begin
    try
      DisableControls;
      First;
      while not eof do begin
        delete;
      end;//while
      CliSelectTopicId.DisableControls;
      CliSelectTopicId.First;
      while not CliSelectTopicId.Eof do begin
        if CliSelectTopicId_Checket.AsBoolean then begin
          Insert;
          FieldByName('BudgetTopicID').AsInteger:=BudgetTopics1F.qryBudgetTopics.fieldbyname('BudgetTopicID').AsInteger;
          FieldByName('ProjectID').AsInteger:=CliSelectTopicId.fieldbyname('ProjectID').AsInteger;
          post;
        end;//if
        CliSelectTopicId.Next;
      end;//while
    finally
      UpdateBatch;
      EnableControls;
      CliSelectTopicId.EnableControls;
    end;//try
  end;//with

end;


procedure TBudgetTopics1_NewEditF.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  if BudgetTopics1F.qryBudgetTopics.State in dsEditModes then
    if get_response('ÂíÇ ÇØáÇÚÇÊ ÐÎíÑå ÔæÏ.þ') = mryes then  DataSetPost1.Execute
     else  DataSetCancel1.Execute;

end;

procedure TBudgetTopics1_NewEditF.ToggleStore;
begin
  with CliSelectTopicId do begin
    Edit;
    FieldByName('_Checket').AsBoolean:=not FieldByName('_Checket').AsBoolean;
    Post;
  end;//with
end;

function TBudgetTopics1_NewEditF.CheckTick: Boolean;
begin
  Result:=False;
  with CliSelectTopicId do begin
    DisableControls;
    First;
    try
      while not eof do begin
        Result:=CliSelectTopicId_Checket.AsBoolean;
        if Result then Break;
        Next;
      end;//while
    finally
      First;
      EnableControls;
    end;//try
  end;//with
end;


procedure TBudgetTopics1_NewEditF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1,2);
end;

procedure TBudgetTopics1_NewEditF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1)
end;

end.
