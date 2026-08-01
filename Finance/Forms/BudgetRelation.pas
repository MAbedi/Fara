unit BudgetRelation;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template4, DB, ADODB, Provider, DBClient, Grids, Vcl.DBGrids,
  DBActns, ActnList, StdCtrls, Buttons, ExtCtrls, System.Actions;

type
  TBudgetRelationF = class(TTemplate4F)
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    cliSelect: TClientDataSet;
    srcSelect: TDataSource;
    DataSetProvider1: TDataSetProvider;
    qry_Select: TADOQuery;
    cliSelectBudgetTopicID: TIntegerField;
    cliSelect_Selected: TBooleanField;
    Image3: TImage;
    Image2: TImage;
    qry_ProjectsRange: TADOQuery;
    qry_ProjectsRangeProjectID: TIntegerField;
    qry_ProjectsRangeBudgetTopicID: TIntegerField;
    qry_SelectBudgetTopicID: TIntegerField;
    qry_SelectBudgetCaption_L1: TStringField;
    qry_SelectBudgetCaption_L2: TStringField;
    cliSelectBudgetCaption_L1: TStringField;
    cliSelectBudgetCaption_L2: TStringField;
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    procedure ToggleBudget;
    procedure ReadSelect;
    procedure SaveSelect;
    { Private declarations }
  public
     procedure enter;
    { Public declarations }
  end;

var
  BudgetRelationF: TBudgetRelationF;

implementation

uses dm;

{$R *.dfm}

procedure TBudgetRelationF.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,state);
  if DataCol=0 then begin
    DBGrid1.Canvas.Rectangle(Rect);
    if cliSelect_Selected.AsBoolean then
      DBGrid1.Canvas.Draw(Rect.Left,Rect.Top,Image3.Picture.Graphic)
    else
      DBGrid1.Canvas.Draw(Rect.Left,Rect.Top,Image2.Picture.Graphic)
  end;//if

end;

procedure TBudgetRelationF.enter;
begin
 BudgetRelationF:=TBudgetRelationF.Create(Application);
 with BudgetRelationF do begin
   try
     ReadSelect;
     if mrok = ShowModal then
     SaveSelect;
   finally
     Free;
   end;//try
 end;//with
end;

procedure TBudgetRelationF.SaveSelect;
begin
 // with qry_ProjectsRange do begin
//    try
//      DisableControls;
//      First;
//      while not eof do begin
//        delete;
//      end;//while
//      cliSelect.DisableControls;
//      cliSelect.First;
//      while not cliSelect.Eof do begin
//        if cliSelect_Selected.AsBoolean then begin
//          Insert;
//          FieldByName('BudgetTopicID').AsInteger:=cliSelect.fieldbyname('BudgetTopicID').AsInteger;
//          FieldByName('ProjectID').AsInteger:=Projects2F.qryProjects.fieldbyname('ProjectID').AsInteger;
//          post;
//        end;//if
//        cliSelect.Next;
//      end;//while
//    finally
//      UpdateBatch;
//      EnableControls;
//      Projects2F.qry_ProjectsRange.Requery;
//      cliSelect.EnableControls;
//    end;//try
//  end;//with

end;

procedure TBudgetRelationF.ToggleBudget;
begin
  with cliSelect do begin
    Edit;
    FieldByName('_Checked').AsBoolean:=not FieldByName('_Checked').AsBoolean;
    Post;
  end;//with
end;


procedure TBudgetRelationF.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  ToggleBudget;
end;

procedure TBudgetRelationF.ReadSelect;
begin
  cliSelect.Active:=False;
  cliSelect.Active:=True ;
  with qry_ProjectsRange do begin
    try
      DisableControls;
      First;
      while not Eof do begin
        with cliSelect do begin
          if Locate('BudgetTopicID',qry_ProjectsRange.FieldByName('BudgetTopicID').AsInteger,[]) then begin
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
  end;//with

end;

procedure TBudgetRelationF.FormCreate(Sender: TObject);
begin
  inherited;
  qry_ProjectsRange.Active:=True;
  cliSelect.Active:=True;

end;

procedure TBudgetRelationF.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key=VK_SPACE then begin
    Key:=0;
    ToggleBudget;
  end;//if

end;

end.
