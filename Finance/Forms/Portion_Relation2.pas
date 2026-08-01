unit Portion_Relation2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template4, DBActns, ActnList, StdCtrls, Buttons, ExtCtrls, DB,
  DBClient, Provider, ADODB, Grids, Vcl.DBGrids, System.Actions;

type
  TPortion_Relation2F = class(TTemplate4F)
    qry_CToplic2: TADOQuery;
    prv_Ctoplic2: TDataSetProvider;
    cli_CToplic2: TClientDataSet;
    src_CToplic2: TDataSource;
    Image3: TImage;
    Image2: TImage;
    BitBtn1: TBitBtn;
    qry_Portion: TADOQuery;
    cli_CToplic2_Checked: TBooleanField;
    cli_CToplic2CTopicCode: TIntegerField;
    DBGrid1: TDBGrid;
    cli_CToplic2CTopicName_L1: TStringField;
    cli_CToplic2CTopicName_L2: TStringField;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn3: TBitBtn;
    actAll: TAction;
    actNotAll: TAction;
    actSearch: TAction;
    actSort: TAction;
    qry_PortionID: TAutoIncField;
    qry_PortionCofficientID: TIntegerField;
    qry_PortionCTopicCode2: TIntegerField;
    qry_PortionCofficientItem: TFloatField;
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actAllExecute(Sender: TObject);
    procedure actNotAllExecute(Sender: TObject);
    procedure actSearchExecute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
  private
    procedure ToggleCheck;
    procedure SaveSelect;
    procedure ReadSelect;
    { Private declarations }
  public
    function ShowChooseDetail2(FilterCode: Integer;CTopic:integer):boolean;
   { Public declarations }
  end;

var
  Portion_Relation2F: TPortion_Relation2F;

implementation

uses Dm, GlobalPro,  search2, sort2, PortionTable;

{$R *.dfm}

procedure TPortion_Relation2F.DBGrid1DrawColumnCell(Sender: TObject;
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


procedure TPortion_Relation2F.ToggleCheck;
begin
  with cli_CToplic2 do begin
    Edit;
    FieldByName('_Checked').AsBoolean:=not FieldByName('_Checked').AsBoolean;
    Post;
  end;//with
end;

procedure TPortion_Relation2F.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  ToggleCheck;
end;

function TPortion_Relation2F.ShowChooseDetail2(FilterCode:Integer;CTopic:integer):boolean;
begin
  Portion_Relation2F:=TPortion_Relation2F.Create(Application);
  with Portion_Relation2F do begin
    try
      with qry_CToplic2 do begin
       Active:=false;
         Parameters.ParamByName('CTopicCode').Value:=CTopic;
       Active:=true;
      end;
      with qry_Portion do begin
        Active:=False;
        Parameters.ParamByName('CofficientID').Value:=FilterCode;
        Active:=True;
      end;//with
      ReadSelect;
      if mrok=ShowModal then begin
       Result:=true;
       SaveSelect;
      end else
       Result:=false; 
    finally
      Free;
    end;//try
  end;//with
end;

procedure TPortion_Relation2F.ReadSelect;
begin
  cli_CToplic2.Active:=False;
  cli_CToplic2.Active:=True ;
  with qry_Portion do begin
    try
      DisableControls;
      First;
      while not Eof do begin
        with cli_CToplic2 do begin
          if Locate('CTopicCode2',qry_Portion.FieldByName('CTopicCode2').AsInteger,[]) then begin
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


procedure TPortion_Relation2F.SaveSelect;
begin
  with qry_Portion do begin
    try
      DisableControls;
      First;
      cli_CToplic2.DisableControls;
      cli_CToplic2.First;
      while not cli_CToplic2.Eof do begin
        if cli_CToplic2_Checked.AsBoolean then begin
         if not qry_Portion.Locate('CTopicCode2;CofficientID',
                                   VarArrayOf([cli_CToplic2.FieldByName('cTopicCode2').AsInteger,
                                   PortionTableF.qryCtopic1.Fieldbyname('CofficientID').AsInteger]),[])
         then begin
            Insert;
          FieldByName('CofficientID').AsInteger:=PortionTableF.qryCtopic1.Fieldbyname('CofficientID').AsInteger;
          FieldByName('CTopicCode2').AsInteger:=cli_CToplic2.fieldbyname('CTopicCode2').AsInteger;
          FieldByName('CofficientItem').AsInteger:=0;
            post;
         end;
        end
          else begin
           if  qry_Portion.Locate('CTopicCode2',
                                               cli_CToplic2.FieldByName('cTopicCode2').AsInteger,[])
           then begin
              qry_Portion.Delete;
          end;
        end;
        cli_CToplic2.Next;
      end;//while
    finally
      EnableControls;
      cli_CToplic2.EnableControls;
    end;//try
  end;//with
//  FreeReservedCodes(Dmf.adcAccounting)
end;

procedure TPortion_Relation2F.FormCreate(Sender: TObject);
begin
  inherited;
  qry_CToplic2.Active:=True;
end;

procedure TPortion_Relation2F.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key=VK_SPACE then begin
    Key:=0;
    ToggleCheck;
  end;//if

end;

procedure TPortion_Relation2F.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1,2,True);
end;

procedure TPortion_Relation2F.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
end;

procedure TPortion_Relation2F.actAllExecute(Sender: TObject);
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

procedure TPortion_Relation2F.actNotAllExecute(Sender: TObject);
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

procedure TPortion_Relation2F.actSearchExecute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qry_CToplic2);
end;

procedure TPortion_Relation2F.actSortExecute(Sender: TObject);
begin
  inherited;
   sort2F.ShowSort(qry_CToplic2);
end;

procedure TPortion_Relation2F.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  QuickSearch(key,cli_CToplic2.FieldByName('CTopicCode2'));
end;

end.
