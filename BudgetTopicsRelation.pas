unit BudgetTopicsRelation;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template4, Grids, Vcl.DBGrids, DBActns, ActnList, StdCtrls, Buttons,
  ExtCtrls, DB, DBClient, Provider, ADODB, System.Actions;

type
  TBudgetTopicsRelationF = class(TTemplate4F)
    DBGrid1: TDBGrid;
    Image3: TImage;
    Image2: TImage;
    qrySelectTopicId: TADOQuery;
    DataSetProvider1: TDataSetProvider;
    CliSelectTopicId: TClientDataSet;
    SrcSelectTopicId: TDataSource;
    CliSelectTopicId_Checket: TBooleanField;
    BitBtn1: TBitBtn;
    CliSelectTopicIdProjectID: TIntegerField;
    CliSelectTopicIdProjectCaption: TStringField;
    qryProjectsRange: TADOQuery;
    qryProjectsRangeProjectID: TIntegerField;
    qryProjectsRangeBudgetTopicID: TIntegerField;
    qryProjectsRange_ProjectName: TStringField;
    SrcProjectRange: TDataSource;
    qrySelectTopicIdProjectID: TIntegerField;
    qrySelectTopicIdProjectCaption: TStringField;
    qrySelectTopicIdProjectCaption_L2: TStringField;
    CliSelectTopicIdProjectCaption_L2: TStringField;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn3: TBitBtn;
    actAll: TAction;
    actNotAll: TAction;
    actSort: TAction;
    actSearch: TAction;
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actAllExecute(Sender: TObject);
    procedure actNotAllExecute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actSearchExecute(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    procedure ReadSelect;
    procedure ToggleStore;
  public
    function CheckTick: Boolean;
    procedure enter(fType: byte);
    procedure SaveSelect;
  end;

var
  BudgetTopicsRelationF: TBudgetTopicsRelationF;
  ParmType:Byte;
implementation

uses dm, BudgetTopics1, GlobalPro, BudgetTopics2_EditNew,
  search2, sort2;

{$R *.dfm}

procedure TBudgetTopicsRelationF.DBGrid1DrawColumnCell(Sender: TObject;
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

procedure TBudgetTopicsRelationF.enter(fType: byte);
begin
 ParmType:=fType;
 BudgetTopicsRelationF:=TBudgetTopicsRelationF.Create(Application);
 with BudgetTopicsRelationF do begin
   try
     ReadSelect;
     if  mrok = ShowModal then
        SaveSelect;
   finally
     Free;
   end;//try
 end;//with
end;

procedure TBudgetTopicsRelationF.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  ToggleStore;
end;

procedure TBudgetTopicsRelationF.DBGrid1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key=VK_SPACE then begin
    Key:=0;
    ToggleStore;
  end;//if
end;

procedure TBudgetTopicsRelationF.ReadSelect;
begin
  CliSelectTopicId.Active:=False;
  CliSelectTopicId.Active:=True ;
  with qryProjectsRange do begin
    try
      DisableControls;
      First;
      while not Eof do begin
        with CliSelectTopicId do begin
          if Locate('ProjectID',qryProjectsRange.FieldByName('ProjectID').AsInteger,[]) then begin
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

procedure TBudgetTopicsRelationF.SaveSelect;
begin
  with qryProjectsRange do begin
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
          case ParmType of
            1:FieldByName('BudgetTopicID').AsInteger:=BudgetTopics1F.qryBudgetTopics.fieldbyname('BudgetTopicID').AsInteger;
            2:FieldByName('BudgetTopicID').AsInteger:=BudgetTopics2_EditNewF.qryBudgetTopics.fieldbyname('BudgetTopicID').AsInteger;
//            3:FieldByName('BudgetTopicID').AsInteger:=BudgetTopics_2f.qryBudgetTopics.fieldbyname('BudgetTopicID').AsInteger;
          end;//case
          FieldByName('ProjectID').AsInteger:=CliSelectTopicId.fieldbyname('ProjectID').AsInteger;
          post;
        end;//if
        CliSelectTopicId.Next;
      end;//while
    finally
      UpdateBatch;
      EnableControls;
      CliSelectTopicId.EnableControls;
      case ParmType of
         1: with BudgetTopics1F.qryProjectsRange do
            begin
              Active:=False;
              Parameters.ParamByName('BudTo').Value:= BudgetTopics1F.qryBudgetTopicsBudgetTopicID.AsInteger;
              Active:=true;
            end;
         2: with BudgetTopics2_EditNewF.qryProjectsRange do
            begin
              Active:=False;
              Parameters.ParamByName('BudTo').Value:= BudgetTopics2_EditNewF.qryBudgetTopicsBudgetTopicID.AsInteger;
              Active:=true;
            end;
//         3: with BudgetTopics_2f.qryProjectsRange do
//            begin
//              Active:=False;
//              Parameters.ParamByName('BudTo').Value:= BudgetTopics_2f.qryBudgetTopicsBudgetTopicID.AsInteger;
//              Active:=true;
//            end;
       end;//case
    end;//try
  end;//with

end;


procedure TBudgetTopicsRelationF.ToggleStore;
begin
  with CliSelectTopicId do begin
    Edit;
    FieldByName('_Checket').AsBoolean:=not FieldByName('_Checket').AsBoolean;
    Post;
  end;//with
end;

function TBudgetTopicsRelationF.CheckTick: Boolean;
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


procedure TBudgetTopicsRelationF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1,2);
end;

procedure TBudgetTopicsRelationF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1)
end;

procedure TBudgetTopicsRelationF.FormCreate(Sender: TObject);
begin
  inherited;
  case ParmType of
         1:with qryProjectsRange do
                begin
                  Active:=False;
                  Parameters.ParamByName('BudTo').Value:= BudgetTopics1F.qryBudgetTopicsBudgetTopicID.AsInteger;
                  Active:=true;
                end;
         2:with qryProjectsRange do
              begin
                 Active:=False;
                 Parameters.ParamByName('BudTo').Value:= BudgetTopics2_EditNewF.qryBudgetTopicsBudgetTopicID.AsInteger;
                 Active:=true;
              end;
         3: with qryProjectsRange do
            begin
              Active:=False;
//              Parameters.ParamByName('BudTo').Value:= BudgetTopics_2f.qryProjectsRangeBudgetTopicID.AsInteger;
              Active:=true;
            end;
       end;//case
end;

procedure TBudgetTopicsRelationF.actAllExecute(Sender: TObject);
begin
  inherited;
   with CliSelectTopicId do begin
    DisableControls;
    First;
    while not eof do begin
      Edit;
      FieldByName('_Checket').AsBoolean:=True;
      Post;
      Next;
    end;//while
    First;
    EnableControls;
  end;//with
end;

procedure TBudgetTopicsRelationF.actNotAllExecute(Sender: TObject);
begin
  inherited;
   with CliSelectTopicId do begin
    DisableControls;
    First;
    while not eof do begin
      Edit;
      FieldByName('_Checket').AsBoolean:=not FieldByName('_Checket').AsBoolean;
      Post;
      Next;
    end;//while
    First;
    EnableControls;
  end;//with
end;

procedure TBudgetTopicsRelationF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qrySelectTopicId);
end;

procedure TBudgetTopicsRelationF.actSearchExecute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qrySelectTopicId);
end;

procedure TBudgetTopicsRelationF.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
   QuickSearch(key,CliSelectTopicId.FieldByName('ProjectID'));
end;

procedure TBudgetTopicsRelationF.DBGrid1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
//  (Sender as TDBGrid).Refresh
end;

end.
