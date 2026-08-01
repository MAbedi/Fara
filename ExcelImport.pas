unit ExcelImport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, DB, ADODB, Grids, Vcl.DBGrids, ImgList, DBActns,
  ActnList, StdCtrls, ExtCtrls, Buttons,StrUtils,math, System.ImageList,
  System.Actions;

type
  TExcelImportF = class(Ttemplate2MDIF)
    DBGrid1: TDBGrid;
    qryExcel: TADOQuery;
    srcExcel: TDataSource;
    qryExcelCellCode: TStringField;
    qryExcelStoreID: TSmallintField;
    qryExcelReciptType: TWordField;
    qryExcelKindValue: TWordField;
    newPanel: TPanel;
    BitBtn6: TBitBtn;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    okPanel: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    actSort: TAction;
    actExcel: TAction;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    cmbGroup: TComboBox;
    Label1: TLabel;
    qryExcelStuffCode: TLargeintField;
    qryExcelGroupID: TIntegerField;
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1EditButtonClick(Sender: TObject);
    procedure qryExcelAfterInsert(DataSet: TDataSet);
    procedure qryExcelAfterPost(DataSet: TDataSet);
    procedure qryExcelBeforeDelete(DataSet: TDataSet);
    procedure actSortExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actExcelExecute(Sender: TObject);
    procedure srcExcelStateChange(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure qryExcelKindValueGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure qryExcelKindValueSetText(Sender: TField; const Text: String);
    procedure cmbGroupChange(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);

  private
    procedure gridkeyenter(Sender: TObject;var key: char);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ExcelImportF: TExcelImportF;

implementation

uses DM, GlobalPro, searchCode_ADO, sndkey32, mmessage, search2, sort2;

{$R *.dfm}

procedure TExcelImportF.gridkeyenter(Sender: TObject;var key: char);
var
  nextIndex:  Integer;
  curIndex:   Integer;
  aDataSet: TDataSet;

begin
  curIndex:=(Sender as TDBGrid).SelectedIndex;
  nextIndex:=curIndex;
  case key of
    #13:  begin
      if shiftDown then exit;
      aDataSet:=(Sender as TDBGrid).DataSource.DataSet;
      key:=#0;
      case curIndex of
        0: nextIndex:=1;
        1: nextIndex:= IfThen((aDataSet.FieldByName('StoreID').AsString=EmptyStr) ,0,2);
        2: nextIndex:= IfThen((aDataSet.FieldByName('StuffCode').AsLargeInt=0) ,1,3);
        3: nextIndex:=4;
        4: nextIndex:=5;
        5: nextIndex:=-1;

      end;//case
    end;//#13
    '+': begin
      key:=#0;
      nextIndex:=curIndex-1;
      while (nextIndex>=0) and (not (DBGrid1.Columns[nextIndex].Visible) OR (DBGrid1.Columns[nextIndex].ReadOnly)) do
        Dec(nextIndex);
      if nextIndex<0 then nextIndex:=-3;
    end;// +
    '*':  begin
      key:=#0;
      SendKeys('000',false);
    end;// *
    #27: if (sender as TDBGrid).DataSource.DataSet.State in dseditmodes then (sender as TDBGrid).DataSource.DataSet.Cancel;
    #32,#157:  if DBGrid1.Columns[curIndex].ButtonStyle=cbsEllipsis  then begin
      key:=#0;
     DBGrid1EditButtonClick(sender);
    end;//if
  end;//case
  if nextIndex>=0 then
    while (nextIndex<DBGrid1.Columns.Count) and (not (DBGrid1.Columns[nextIndex].Visible) OR (DBGrid1.Columns[nextIndex].ReadOnly)) do
      Inc(nextIndex);
  if nextIndex>=(Sender as TDBGrid).Columns.Count then nextIndex:=-1;
  if (curindex<>nextindex) then
    case nextindex of
       -1: begin
            sendkey(vk_down,[],false);
            (sender as TDBGrid).selectedindex:=0;
          end;//0
       -2:  begin
              if (sender as TDBGrid).DataSource.State in dsEditmodes then (sender as TDBGrid).datasource.DataSet.Cancel;
              Perform(WM_NEXTDLGCTL,0,0);
            end;//-2
       -3:  begin
              if (sender as TDBGrid).DataSource.State in dsEditmodes then (sender as TDBGrid).datasource.DataSet.Cancel;
              Perform(WM_NEXTDLGCTL,1,0);
            end;//-3
       else
            (sender as TDBGrid).selectedindex:=nextIndex;
    end;//case

end;

procedure TExcelImportF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1,5);
end;

procedure TExcelImportF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
end;

procedure TExcelImportF.FormCreate(Sender: TObject);
begin
  inherited;
  cmbGroup.ItemIndex := 0;
  cmbGroupChange(cmbGroup)

end;

procedure TExcelImportF.DBGrid1EditButtonClick(Sender: TObject);
var
  aGrid : TDBGrid;
  aDataSet : TDataSet;
  Results:  array[0..1] of String;
begin
  inherited;
  aGrid := (Sender as TDBGrid);
  aDataSet := aGrid.DataSource.DataSet;
  if not (aDataSet.state in dsEditModes) then aDataSet.edit;
  case  aGrid.SelectedIndex of
     1:Begin
        if searchCode_ADOF.SearchCode2(DMF.adcBSell,'«‰»«—',
          'SELECT  n_StoreID, c_StoreName FROM   Stores ',
          ['ﬂœ ','‘—Õ'],Results,[100,200],alLeft) then
           aDataSet.fieldbyname('StoreID').AsString:=Results[0];

     end;//1
     2:Begin
        if searchCode_ADOF.SearchCode2(DMF.adcBSell,'ﬂœÌ‰ê ﬂ«·«',
          'SELECT c_StuffCode, c_StuffName FROM StuffCoding ',
          ['ﬂœ ','‘—Õ'],Results,[100,200],alLeft) then
          aDataSet.FieldByName('StuffCode').AsString:=Results[0];
     end;//2
     3:Begin
      if searchCode_ADOF.SearchCode2(DMF.adcBSell,'‰Ê⁄ «ÿ·«⁄« ',
      'SELECT ReciptType, ReciptCaption FROM ReciptTypes',

        ['ﬂœ ','‘—Õ'],Results,[100,200],alLeft) then
        aDataSet.fieldbyname('ReciptType').AsString:=Results[0];
   end;//2
  end;

end;

procedure TExcelImportF.qryExcelAfterInsert(DataSet: TDataSet);
begin
  inherited;
  SetKeyboardLatin;
  DataSet.FieldByName('GroupID').AsInteger := cmbGroup.ItemIndex;
  DBGrid1.SetFocus;
end;

procedure TExcelImportF.qryExcelAfterPost(DataSet: TDataSet);
begin
  inherited;
  BigMessage('À»  ‘œ' ,1);
end;

procedure TExcelImportF.qryExcelBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if get_response('¬Ì« «“ Õ–› „ÿ„∆‰ Â” Ìœø')<>mryes then Abort;
end;

procedure TExcelImportF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryExcel);
end;

procedure TExcelImportF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryExcel);
end;

procedure TExcelImportF.actExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TExcelImportF.srcExcelStateChange(Sender: TObject);
begin
  inherited;
  FreeReservedCodes(DMf.adcBSell,'','',Self.Name);
  okPanel.Visible:= qryExcel.State in dsEditModes;
  newPanel.Visible:=not okPanel.Visible;
  BtnReject.Cancel:=newPanel.Visible;

end;

procedure TExcelImportF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  gridkeyenter(Sender,Key);
end;

procedure TExcelImportF.qryExcelKindValueGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  Text := DBGrid1.Columns[4].PickList[Sender.asinteger]
end;

procedure TExcelImportF.qryExcelKindValueSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.AsInteger := DBGrid1.Columns[4].PickList.IndexOf(Text)
end;

procedure TExcelImportF.cmbGroupChange(Sender: TObject);
begin
  inherited;
  with qryExcel do
  begin
    Close;
    Parameters.ParamByName('Grp').value := cmbGroup.ItemIndex;
    Open;
  end;
end;

procedure TExcelImportF.DBGrid1CellClick(Column: TColumn);
begin
  inherited;
 if DBGrid1.SelectedIndex = 0 then SetKeyboardLatin
 else SetKeyboardFarsi;
end;

end.


