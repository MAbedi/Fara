// mahmood 84/03/09
unit ChooseReciptTypes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template5, StdCtrls, CheckLst, DBActns, ActnList, Buttons,
  ExtCtrls, DB, ADODB, Grids, DBGrids, ComCtrls, DBClient, Provider;

type
  TChooseReciptTypeF = class(TTemplate5F)
    qryReciptTypes: TADOQuery;
    srcReciptTypes: TDataSource;
    BitBtn1: TBitBtn;
    DBGrid1: TDBGrid;
    DataSetProvider1: TDataSetProvider;
    cliReciptTypes: TClientDataSet;
    cliReciptTypes_checked: TBooleanField;
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
    qryReciptTypesReciptType: TWordField;
    qryReciptTypesReciptCaption: TStringField;
    cliReciptTypesReciptType: TSmallintField;
    cliReciptTypesReciptCaption: TStringField;
    Image3: TImage;
    Image2: TImage;
    procedure FormResize(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure qryReciptTypesAfterOpen(DataSet: TDataSet);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure actSearchExecute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actExcelExecute(Sender: TObject);
    procedure actSelectAllExecute(Sender: TObject);
    procedure actSlelectInverseExecute(Sender: TObject);
  private
    cliSum: TClientDataSet;
    procedure ToggleCheck(CalculateSummary: boolean=True);
    { Private declarations }
  public
    function SelectReciptType(var checkeds: string;ReciptType:Integer): Boolean;
    { Public declarations }
  end;

var
  ChooseReciptTypeF: TChooseReciptTypeF;

implementation

uses StrUtils, DM, GlobalPro, search, sort;

{$R *.dfm}

function TChooseReciptTypeF.SelectReciptType(var checkeds: string;ReciptType:Integer): Boolean;
var
  r:  Int64;
begin
  Result:=False;
  ChooseReciptTypeF:=TChooseReciptTypeF.Create(Application);
  checkeds:=checkeds + ';';
  try
    with ChooseReciptTypeF do begin
      with qryReciptTypes do begin
        Active:=False;
        Parameters.ParamByName('ReciptType').Value:=ReciptType ;
        Active:=True;
        if qryReciptTypes.RecordCount = 0 then begin
          Warn('«Ì‰ Ê÷⁄Ì  ›—„Ì »—«Ì «‰ Œ«» ‰œ«—œ.˛');
          Exit;
        end;//if
      end;//with
      with cliReciptTypes do begin
        while pos(';',checkeds)<>0 do begin
          r:=StrToInt64Def(LeftStr(checkeds,pos(';',checkeds)-1),0);
          if r=0 then Break;
          if Locate('ReciptType',r,[]) then ToggleCheck(false);
          checkeds:=copy(checkeds,pos(';',checkeds)+1,length(checkeds));
        end;//while
        First;
        EnableControls;
      end;//with
      if ShowModal=mrOk then begin
        Result:=True;
        checkeds:='';
        with cliReciptTypes do begin
          DisableControls;
          First;
          while not eof do begin
            if FieldByName('_checked').AsBoolean then checkeds:=checkeds + cliReciptTypesReciptType.AsString + ';';
            Next;
          end;//while
        end;//with
      end;//if
    end;//with
  finally
    ChooseReciptTypeF.Free;
  end;//try
end;

procedure TChooseReciptTypeF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1,6);
end;

procedure TChooseReciptTypeF.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,state);
  if DataCol=0 then begin
    DBGrid1.Canvas.Rectangle(Rect);
    if cliReciptTypes_checked.AsBoolean then
      DBGrid1.Canvas.Draw(Rect.Left,Rect.Top,Image3.Picture.Graphic)
    else
      DBGrid1.Canvas.Draw(Rect.Left,Rect.Top,Image2.Picture.Graphic)
  end;//if
end;

procedure TChooseReciptTypeF.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key=VK_SPACE then begin
    Key:=0;
    ToggleCheck;
  end;//if
end;

procedure TChooseReciptTypeF.qryReciptTypesAfterOpen(DataSet: TDataSet);
begin
  inherited;
  cliReciptTypes.Active:=False;
  cliReciptTypes.Active:=True;
end;

procedure TChooseReciptTypeF.DBGrid1CellClick(Column: TColumn);
begin
  inherited;
  if Column.Index=0 then ToggleCheck;
end;

procedure TChooseReciptTypeF.ToggleCheck(CalculateSummary: boolean=True);
begin
  with cliReciptTypes do begin
    Edit;
    FieldByName('_Checked').AsBoolean:=not FieldByName('_Checked').AsBoolean;
    Post;
  end;//with
end;

procedure TChooseReciptTypeF.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  ToggleCheck;
end;

procedure TChooseReciptTypeF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
var
  n:  Int64;
begin
  inherited;
  n:=getKeyboardNumber(Key);
  if n>0 then cliReciptTypes.Locate('ReciptCaption',IntToStr(n),[]);
end;

procedure TChooseReciptTypeF.actSearchExecute(Sender: TObject);
begin
  inherited;
  searchF.ShowSearch(cliReciptTypes);
end;

procedure TChooseReciptTypeF.actSortExecute(Sender: TObject);
begin
  inherited;
  sortF.ShowSort(cliReciptTypes);
end;

procedure TChooseReciptTypeF.FormCreate(Sender: TObject);
begin
  inherited;
  cliSum:=TClientDataSet.Create(Self);
end;

procedure TChooseReciptTypeF.FormDestroy(Sender: TObject);
begin
  inherited;
  cliSum.Free;
  SaveColWidth(DBGrid1);
end;

procedure TChooseReciptTypeF.actExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TChooseReciptTypeF.actSelectAllExecute(Sender: TObject);
begin
  inherited;
  with cliReciptTypes do begin
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

procedure TChooseReciptTypeF.actSlelectInverseExecute(Sender: TObject);
begin
  inherited;
  with cliReciptTypes do begin
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
