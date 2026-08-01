// MAHMOOD 84/03/08
unit ChooseCustomers;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template5, StdCtrls, CheckLst, DBActns, ActnList, Buttons,
  ExtCtrls, DB, ADODB, Grids, DBGrids, ComCtrls, DBClient, Provider;

type
  TChooseCustomersF = class(TTemplate5F)
    qryCustomers: TADOQuery;
    srcCustomers: TDataSource;
    BitBtn1: TBitBtn;
    DBGrid1: TDBGrid;
    DataSetProvider1: TDataSetProvider;
    cliCustomers: TClientDataSet;
    cliCustomers_checked: TBooleanField;
    actSearch: TAction;
    actSort: TAction;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    actPrint: TAction;
    actExcel: TAction;
    actSelectAll: TAction;
    Panel2: TPanel;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    actSlelectInverse: TAction;
    Image3: TImage;
    Image2: TImage;
    qryCustomersCustomerGrpID: TIntegerField;
    qryCustomersCustomerGrpName: TStringField;
    cliCustomersCustomerGrpID: TIntegerField;
    cliCustomersCustomerGrpName: TStringField;
    procedure FormResize(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure qryCustomersAfterOpen(DataSet: TDataSet);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure actSearchExecute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actSelectAllExecute(Sender: TObject);
    procedure actSlelectInverseExecute(Sender: TObject);
  private
    procedure ToggleCheck(CalculateSummary: boolean=True);
    { Private declarations }
  public
    function SelectChecks(var checkeds: string): Boolean;
    { Public declarations }
  end;

var
  ChooseCustomersF: TChooseCustomersF;

implementation

uses StrUtils, DM, GlobalPro, search, sort;

{$R *.dfm}

function TChooseCustomersF.SelectChecks(var checkeds: string): Boolean;
var
  r:  Int64;
begin
  Result:=False;
  ChooseCustomersF:=TChooseCustomersF.Create(Application);
  checkeds:=checkeds + ';';
  try
    with ChooseCustomersF do begin
        with cliCustomers do begin
        while pos(';',checkeds)<>0 do begin
          r:=StrToInt64Def(LeftStr(checkeds,pos(';',checkeds)-1),0);
          if r=0 then Break;
          if Locate('CustomerGrpID',r,[]) then ToggleCheck(false);
          checkeds:=copy(checkeds,pos(';',checkeds)+1,length(checkeds));
        end;//while
      end;//with
      if ShowModal=mrOk then begin
        Result:=True;
        checkeds:='';
        with cliCustomers do begin
          DisableControls;
          First;
          while not eof do begin
            if FieldByName('_checked').AsBoolean then checkeds:=checkeds + cliCustomersCustomerGrpID.AsString + ';';
            Next;
          end;//while
        end;//with
      end;//if
    end;//with
  finally
    ChooseCustomersF.Free;
  end;//try
end;

procedure TChooseCustomersF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1,6);
end;

procedure TChooseCustomersF.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,state);
  if DataCol=0 then begin
    DBGrid1.Canvas.Rectangle(Rect);
    if cliCustomers_checked.AsBoolean then
      DBGrid1.Canvas.Draw(Rect.Left,Rect.Top,Image3.Picture.Graphic)
    else
      DBGrid1.Canvas.Draw(Rect.Left,Rect.Top,Image2.Picture.Graphic)
  end;//if
end;

procedure TChooseCustomersF.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key=VK_SPACE then begin
    Key:=0;
    ToggleCheck;
  end;//if
end;

procedure TChooseCustomersF.qryCustomersAfterOpen(DataSet: TDataSet);
begin
  inherited;
  cliCustomers.Active:=False;
  cliCustomers.Active:=True;
end;

procedure TChooseCustomersF.DBGrid1CellClick(Column: TColumn);
begin
  inherited;
//  if Column.Index=0 then ToggleCheck;
end;

procedure TChooseCustomersF.ToggleCheck(CalculateSummary: boolean=True);
begin
  with cliCustomers do begin
    Edit;
    FieldByName('_Checked').AsBoolean:=not FieldByName('_Checked').AsBoolean;
    Post;
  end;//with
end;

procedure TChooseCustomersF.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  ToggleCheck;
end;

procedure TChooseCustomersF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
var
  n:  Int64;
begin
  inherited;
  n:=getKeyboardNumber(Key);
  if n>0 then cliCustomers.Locate('CustomerGrpID',IntToStr(n),[]);
end;

procedure TChooseCustomersF.actSearchExecute(Sender: TObject);
begin
  inherited;
  searchF.ShowSearch(cliCustomers);
end;

procedure TChooseCustomersF.actSortExecute(Sender: TObject);
begin
  inherited;
  sortF.ShowSort(cliCustomers);
end;

procedure TChooseCustomersF.actSelectAllExecute(Sender: TObject);
begin
  inherited;
  with cliCustomers do begin
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

procedure TChooseCustomersF.actSlelectInverseExecute(Sender: TObject);
begin
  inherited;
  with cliCustomers do begin
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

end.
