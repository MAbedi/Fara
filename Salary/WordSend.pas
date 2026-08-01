unit WordSend;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, StdCtrls, ImgList, DBActns, ActnList, ExtCtrls,
  Buttons, DB, ADODB, Grids, Vcl.DBGrids, Provider, DBClient, StrUtils, Menus,
  System.ImageList, System.Actions;

type
  TWordSendF = class(Ttemplate2MDIF)
    srcList: TDataSource;
    qryList: TADOQuery;
    Image1: TImage;
    Image2: TImage;
    CliList: TClientDataSet;
    DataSetProvider1: TDataSetProvider;
    CliListPersonelNo: TIntegerField;
    CliListPersonelName_L1: TStringField;
    CliListPersonelName_L2: TStringField;
    CliListfatherName_L1: TStringField;
    CliListfatherName_L2: TStringField;
    CliListNationality_L1: TStringField;
    CliListNationality_L2: TStringField;
    CliListBirthDate: TStringField;
    CliListSodurDate: TStringField;
    CliListBirthPlace_L1: TStringField;
    CliListBirthPlace_L2: TStringField;
    CliListSodurPlace_L1: TStringField;
    CliListSodurPlace_L2: TStringField;
    CliListNationalID: TStringField;
    CliListIDNumber: TStringField;
    CliListlicence_L1: TStringField;
    CliListlicence_L2: TStringField;
    CliListemployDate: TStringField;
    CliListAccountNumber: TStringField;
    CliListaddress_L1: TStringField;
    CliListaddress_L2: TStringField;
    CliListTel: TStringField;
    CliList_checked: TBooleanField;
    DBGrid1: TDBGrid;
    actSelectAll: TAction;
    BitBtn1: TBitBtn;
    actSlelectInverse: TAction;
    ActSendToWord: TAction;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    qryList4Print: TADOQuery;
    qryList4PrintInfoID: TIntegerField;
    qryList4PrintInfoName_L1: TStringField;
    qryList4PrintInfoName_L2: TStringField;
    PopList4Print: TPopupMenu;
    AllClikPop: TMenuItem;
    qryList4PrintWordDocuments: TStringField;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    actSort: TAction;
    actExcel: TAction;
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure actSelectAllExecute(Sender: TObject);
    procedure actSlelectInverseExecute(Sender: TObject);
    procedure ActSendToWordExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure AllClikPopClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actExcelExecute(Sender: TObject);
  private
    WordFileName: String;
    procedure ToggleCheck(CalculateSummary: boolean = True);
    procedure MakeMenuItem;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  WordSendF: TWordSendF;

implementation

uses GlobalPro, DM, mmessage, search2, sort;

{$R *.dfm}

procedure TWordSendF.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  if not(gdselected in State) then
  begin
    if odd(DBGrid1.DataSource.DataSet.RecNo) then
      DBGrid1.Canvas.Brush.Color := const_normal_columns_color;
  end; // if
  DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  if DataCol = 0 then
  begin
    DBGrid1.Canvas.Rectangle(Rect);
    if CliList.FieldByName('_checked').AsBoolean then
      DBGrid1.Canvas.Draw(Rect.Left, Rect.Top, Image1.Picture.Graphic)
    else
      DBGrid1.Canvas.Draw(Rect.Left, Rect.Top, Image2.Picture.Graphic)
  end; // if
end;

procedure TWordSendF.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  ToggleCheck;
end;

procedure TWordSendF.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_SPACE then
  begin
    Key := 0;
    ToggleCheck;
  end; // if
end;

procedure TWordSendF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
// var
// n:  Int64;
begin
  inherited;
  QuickSearch(Key, CliListPersonelNo);
  // n:=getKeyboardNumber(Key);
  // if n>0 then CliList.Locate('PersonelNo',IntToStr(n),[]);
end;

procedure TWordSendF.ToggleCheck(CalculateSummary: boolean = True);
begin
  with CliList do
  begin
    Edit;
    FieldByName('_Checked').AsBoolean := not FieldByName('_Checked').AsBoolean;
    Post;
  end; // with
end;

procedure TWordSendF.FormCreate(Sender: TObject);
begin
  inherited;
  with CliList do
  begin
    Active := True
  end; // with
  MakeMenuItem;
end;

procedure TWordSendF.actSelectAllExecute(Sender: TObject);
begin
  inherited;
  with CliList do
  begin
    DisableControls;
    First;
    while not eof do
    begin
      Edit;
      FieldByName('_checked').AsBoolean := True;
      Post;
      Next;
    end; // while
    First;
    EnableControls;
  end; // with
end;

procedure TWordSendF.actSlelectInverseExecute(Sender: TObject);
begin
  inherited;
  with CliList do
  begin
    DisableControls;
    First;
    while not eof do
    begin
      Edit;
      FieldByName('_checked').AsBoolean := not FieldByName('_checked')
        .AsBoolean;
      Post;
      Next;
    end; // while
    First;
    EnableControls;
  end; // with
end;

procedure TWordSendF.ActSendToWordExecute(Sender: TObject);
var
  p, checkeds: String;
begin
  inherited;
  checkeds := '';
  with CliList do
  begin
    DisableControls;
    First;
    while not eof do
    begin
      if FieldByName('_checked').AsBoolean then
        checkeds := checkeds + 'PersonelNo =' + CliList.FieldByName
          ('PersonelNo').AsString + ' OR ';
      Next;
    end; // while
    EnableControls;
  end; // with
  if checkeds = '' then
    Exit;
  qryList.Filter := LeftStr(checkeds, length(checkeds) - 3);
  qryList.Filtered := True;
  qryList.Active := True;
  p := IncludeTrailingPathDelimiter(ExtractFilePath(ParamStr(0))) + 'Word\';
  try
    CreateDocFromTemplate(p + WordFileName,
      p + MakeUniqDBBackupName(LeftStr(WordFileName, length(WordFileName) - 4),
      var_glb_CurrentDate) + '.doc', qryList);
  finally
    CloseMessage;
    qryList.Filtered := False;
    BigMessage('ÇäÌÇã ÔÏ.þ', 1);
  end; // try
end;

procedure TWordSendF.MakeMenuItem;
var
  MenuItem: array of TMenuItem;
  i: Integer;
  FiledName: String;
begin
  FiledName := 'InfoName_L1';
  if optP.primaryLanguage <> 0 then
    FiledName := 'InfoName_L2';
  With qryList4Print do
  begin
    Active := False;
    Active := True;
    SetLength(MenuItem, RecordCount);
    i := 0;
    while not eof do
    begin
      MenuItem[i] := NewItem(FieldByName(FiledName).AsString,
        TextToShortCut(''), False, True, AllClikPopClick, 0,
        'Item' + FieldByName('InfoID').AsString);
      MenuItem[i].Tag := FieldByName('InfoID').AsInteger;
      MenuItem[i].Hint := FieldByName('WordDocuments').AsString;
      inc(i);
      Next;
    end; // while
  end; // With
  PopList4Print := NewPopupMenu(Self, 'MyMenu', paRight, True, MenuItem);
end;

procedure TWordSendF.FormShow(Sender: TObject);
begin
  inherited;
  // L1_L2(DBGrid1);
end;

procedure TWordSendF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 2, True);
end;

procedure TWordSendF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
end;

procedure TWordSendF.AllClikPopClick(Sender: TObject);
begin
  inherited;
  WordFileName := (Sender as TMenuItem).Hint;
  ActSendToWord.Execute;
end;

procedure TWordSendF.BitBtn3Click(Sender: TObject);
begin
  inherited;
  PopList4Print.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TWordSendF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(CliList);
end;

procedure TWordSendF.actSortExecute(Sender: TObject);
begin
  inherited;
  sortF.ShowSort(CliList);
end;

procedure TWordSendF.actExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

end.
