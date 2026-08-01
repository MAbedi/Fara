unit ReciptsRegulation;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, Grids, Vcl.DBGrids, ImgList, DBActns, ActnList,
  StdCtrls, ExtCtrls, Buttons, DB, ADODB, DBCtrls, Mask,Math, System.ImageList,
  System.Actions;

type
  TReciptsRegulationF = class(Ttemplate2MDIF)
    grdMaster: TDBGrid;
    grdDetail: TDBGrid;
    qryReciptsRegulation: TADOQuery;
    qryReciptsRegulationReciptsRegulationID: TIntegerField;
    qryReciptsRegulationReciptType: TWordField;
    qryReciptsRegulationRegNote: TWideStringField;
    qryReciptsRegulationCodeDefaultKind: TWordField;
    qryReciptsRegulationCustID: TIntegerField;
    srcReciptsRegulation: TDataSource;
    qryReciptTypes: TADOQuery;
    srcReciptTypes: TDataSource;
    grpRecipt: TGroupBox;
    edtReciptType: TDBEdit;
    edtReciptCaption: TDBEdit;
    dbnvgr1: TDBNavigator;
    qryReciptsRegulationItems: TADOQuery;
    srcReciptsRegulationItems: TDataSource;
    pnlOK: TPanel;
    btn1: TBitBtn;
    btn2: TBitBtn;
    pnlNew: TPanel;
    btn3: TBitBtn;
    btn4: TBitBtn;
    btn5: TBitBtn;
    qryReciptsRegulationItemsReciptsRegulationItemsID: TAutoIncField;
    qryReciptsRegulationItemsReciptsRegulationID: TIntegerField;
    qryReciptsRegulationItemsUnityRate: TBCDField;
    qryReciptsRegulationItemsAmountFactor: TBCDField;
    qryReciptsRegulationItemsRunDate: TStringField;
    qryReciptsRegulationItemsRegState: TWordField;
    pnlDetail: TPanel;
    btn6: TSpeedButton;
    qryStuffCoding: TADOQuery;
    qryReciptsRegulationItems_StuffName: TStringField;
    qryReciptsRegulationItems_UnitName: TStringField;
    qryReciptTypesReciptType: TWordField;
    qryReciptTypesReciptCaption: TStringField;
    DataSetDelete1: TDataSetDelete;
    btnSort: TBitBtn;
    actSort: TAction;
    btnSort1: TBitBtn;
    actExcel: TAction;
    btnSearch_: TBitBtn;
    actSelected: TAction;
    btnSelected: TSpeedButton;
    qryReciptsRegulationItemsStuffCode: TLargeintField;
    procedure qryReciptTypesAfterScroll(DataSet: TDataSet);
    procedure qryReciptsRegulationAfterScroll(DataSet: TDataSet);
    procedure qryReciptsRegulationAfterInsert(DataSet: TDataSet);
    procedure srcReciptsRegulationStateChange(Sender: TObject);
    procedure grdDetailEditButtonClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure grdMasterKeyPress(Sender: TObject; var Key: Char);
    procedure grdDetailKeyPress(Sender: TObject; var Key: Char);
    procedure qryReciptsRegulationCodeDefaultKindGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure qryReciptsRegulationCodeDefaultKindSetText(Sender: TField;
      const Text: String);
    procedure grdMasterEditButtonClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure srcReciptsRegulationItemsStateChange(Sender: TObject);
    procedure qryReciptsRegulationItemsRegStateGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure qryReciptsRegulationItemsRegStateSetText(Sender: TField;
      const Text: String);
    procedure qryReciptsRegulationAfterPost(DataSet: TDataSet);
    procedure qryReciptsRegulationItemsAfterInsert(DataSet: TDataSet);
    procedure qryReciptsRegulationBeforeDelete(DataSet: TDataSet);
    procedure actSortExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actExcelExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actSelectedExecute(Sender: TObject);
    procedure qryReciptsRegulationItemsBeforePost(DataSet: TDataSet);
  private
    procedure gridkeyenter(Sender: TObject; var key: char);
    Function CheckDublicate (Code:String;ID:Integer):Boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ReciptsRegulationF: TReciptsRegulationF;

implementation

uses DM, GlobalPro, sndkey32, searchCode_ADO, mmessage, sort2, search2,
  selected;

{$R *.dfm}

procedure TReciptsRegulationF.gridkeyenter(Sender: TObject;var key: char);
var
  nextIndex:  Integer;
  curIndex:   Integer;
  aDataSet: TDataSet;
  IsMaster : Boolean;
begin
   IsMaster := (LowerCase((Sender as TDBGrid).Name) = 'grdmaster');
  curIndex:=(Sender as TDBGrid).SelectedIndex;
  nextIndex:=curIndex;
  case key of
    #13:  begin
      if shiftDown then exit;
      aDataSet:=(Sender as TDBGrid).DataSource.DataSet;
      key:=#0;

      if IsMaster then
      begin
        case curIndex of
          0: nextIndex := IfThen(aDataSet.FieldByName('RegNote').AsString = EmptyStr,-2,1);
          1: nextIndex := 2;
          2: nextIndex := 3;
          3: nextIndex :=-1;
        end;//case
      end else
      begin
        case curIndex of
          0: nextIndex:=IfThen(aDataSet.FieldByName('_StuffName').AsString = EmptyStr,-2,3);
          3: nextIndex:=4;
          4: nextIndex:=5;
          5: nextIndex:=6;
          6: nextIndex:=-1;
        end;//case
      end;
    end;//#13
    '+': begin
      key:=#0;
      nextIndex:=curIndex-1;
      while (nextIndex>=0) and (not ((sender as TDBGrid).Columns[nextIndex].Visible) OR ((sender as TDBGrid).Columns[nextIndex].ReadOnly)) do
        Dec(nextIndex);
      if nextIndex<0 then nextIndex:=-3;
    end;// +
    '*':  begin
      key:=#0;
      SendKeys('000',false);
    end;// *
    #27: if (sender as TDBGrid).DataSource.DataSet.State in dseditmodes then (sender as TDBGrid).DataSource.DataSet.Cancel;
    #32,#157:  if curIndex in [0] then begin
      key:=#0;
      if not (IsMaster) then grdDetailEditButtonClick(sender);
    end;//if
  end;//case

   if nextIndex>=0 then
    while (nextIndex<(sender as TDBGrid).Columns.Count) and (not ((sender as TDBGrid).Columns[nextIndex].Visible) OR ((sender as TDBGrid).Columns[nextIndex].ReadOnly)) do
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

procedure TReciptsRegulationF.qryReciptTypesAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qryReciptsRegulation do
  begin
    Close;
    Parameters.ParamByName('ReciptType').Value := DataSet.fieldbyname('ReciptType').AsInteger;
    Open;
  end;
end;

procedure TReciptsRegulationF.qryReciptsRegulationAfterScroll( 
  DataSet: TDataSet);
begin
  inherited;
  with qryReciptsRegulationItems do
  begin
    Close;
    Parameters.ParamByName('ReciptsRegulationID').Value := DataSet.FieldByName('ReciptsRegulationID').AsInteger;
    Open;
  end;
    DataSet.FieldByName('CustID').ReadOnly := not DataSet.FieldByName('CustID').IsNull;
    grdMaster.Columns[3].ReadOnly := DataSet.FieldByName('CustID').ReadOnly;
end;

procedure TReciptsRegulationF.qryReciptsRegulationAfterInsert(
  DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('ReciptsRegulationID').AsInteger := GetANewCode(Self.Name,'ReciptsRegulation','ReciptsRegulationID');
  DataSet.FieldByName('ReciptType').AsInteger  := qryReciptTypes.fieldbyName('ReciptType').AsInteger;
  DataSet.FieldByName('CodeDefaultKind').AsInteger := 0;
  //DataSet.FieldByName('CustID').AsInteger := 0;
end;

procedure TReciptsRegulationF.srcReciptsRegulationStateChange(
  Sender: TObject);
begin
  inherited;
  pnlok.Visible:=qryReciptsRegulation.State in dsEditModes;
  pnlNew.Visible:=not pnlok.Visible;
  BtnReject.Cancel:=pnlNew.Visible;
  FreeReservedCodes(DMf.adcBSell,'','',Self.Name);
  pnlDetail.Visible  := pnlok.Visible;

end;

procedure TReciptsRegulationF.grdDetailEditButtonClick(Sender: TObject);
var
   aDataSet:  TDataSet;
   TmpChar: Char;
   sqlText: String;
   Results: array[0..1] of String;
begin
  inherited;
  if (Sender as TDBGrid).ReadOnly then exit;
  aDataSet:=(Sender as TDBGrid).DataSource.DataSet;
  if not (aDataSet.State in dseditmodes) then aDataSet.Edit;
  case (Sender as TDBGrid).SelectedIndex of
   0:Begin
			sqlText:='SELECT DISTINCT  StuffCoding.c_StuffCode,StuffCoding.c_StuffName' +
			' FROM StuffCoding INNER JOIN' +
			' StoreStuffs ON StuffCoding.c_StuffCode = StoreStuffs.c_StuffCode INNER JOIN' +
			' Stores ON StoreStuffs.n_StoreID = Stores.n_StoreID' +
		 	' WHERE (Stores.StoreKind IN (1, 2, 3))';

       if searchCode_ADOF.SearchCode2(dmF.adcBSell,'ﬂ«·«Â«', sqlText,
                      ['ﬂœ ','‘—Õ'],results,[80,250],alLeft) then
       begin
          aDataSet.FieldByName('StuffCode').AsString:=results[0];
          TmpChar:=#13;
          gridkeyenter(Sender,TmpChar);
       end;//if
     end;
  end;//0
end;

procedure TReciptsRegulationF.FormCreate(Sender: TObject);
begin
  inherited;
  qryReciptTypes.Open;
end;

procedure TReciptsRegulationF.grdMasterKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
 gridkeyenter(Sender,key);
end;

procedure TReciptsRegulationF.grdDetailKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
 gridkeyenter(Sender,key);
end;

procedure TReciptsRegulationF.qryReciptsRegulationCodeDefaultKindGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  Text := grdMaster.Columns[2].PickList[Sender.asinteger];
end;

procedure TReciptsRegulationF.qryReciptsRegulationCodeDefaultKindSetText(
  Sender: TField; const Text: String);
begin
  inherited;
  Sender.AsInteger := grdMaster.Columns[2].PickList.IndexOf(Text);
end;

procedure TReciptsRegulationF.grdMasterEditButtonClick(Sender: TObject);
var
   aDataSet:  TDataSet;
   TmpChar: Char;
   sqlText: String;
   Results: array[0..1] of String;
begin
  inherited;
  if (Sender as TDBGrid).ReadOnly then exit;
  aDataSet:=(Sender as TDBGrid).DataSource.DataSet;
  if not (aDataSet.State in dseditmodes) then aDataSet.Edit;
  case (Sender as TDBGrid).SelectedIndex of
   3:Begin
			sqlText:='SELECT Customers.CustID' +
			' FROM Customers INNER JOIN' +
			' CustomersGroup ON Customers.CustomerGrpID = CustomersGroup.CustomerGrpID' ;
      if searchCode_ADOF.SearchCode2(dmF.adcBSell,'„‘ —Ì«‰', sqlText,
                      ['ﬂœ '],results,[80],alLeft) then
       begin
          aDataSet.FieldByName('CustId').AsInteger:= StrToInt(results[0]);
          TmpChar:=#13;
          gridkeyenter(Sender,TmpChar);
       end;//if
     end;
  end;//0
end;

procedure TReciptsRegulationF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(grdDetail,1);
  SetColSize(grdMaster,1);
end;

procedure TReciptsRegulationF.srcReciptsRegulationItemsStateChange(
  Sender: TObject);
begin
  inherited;
  if qryReciptsRegulationItems.State in dsEditModes then qryReciptsRegulation.Edit;

end;

procedure TReciptsRegulationF.qryReciptsRegulationItemsRegStateGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  Text := grdDetail.Columns[6].PickList[Sender.asinteger];
end;

procedure TReciptsRegulationF.qryReciptsRegulationItemsRegStateSetText(
  Sender: TField; const Text: String);
begin
  inherited;
  Sender.AsInteger := grdDetail.Columns[6].PickList.IndexOf(Text) ;
end;

procedure TReciptsRegulationF.qryReciptsRegulationAfterPost(
  DataSet: TDataSet);
begin
  inherited;
  try
    If qryReciptsRegulationItems.State in dseditmodes then
      qryReciptsRegulationItems.Cancel;
    qryReciptsRegulationItems.UpdateBatch;
    BigMessage('À»  ‘œ.',1);
  except
    Warn('«‘ﬂ«· œ— À» ');
  end;
end;

procedure TReciptsRegulationF.qryReciptsRegulationItemsAfterInsert(
  DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('ReciptsRegulationID').AsInteger := qryReciptsRegulation.FieldByName('ReciptsRegulationID').AsInteger;
  DataSet.FieldByName('RunDate').AsString := var_glb_CurrentDate;
end;

procedure TReciptsRegulationF.qryReciptsRegulationBeforeDelete(
  DataSet: TDataSet);
begin
  inherited;
  if get_response('¬Ì« «“ Õ–› „ÿ„∆‰ Â” Ìœø') <> mrYes then Abort;
end;

procedure TReciptsRegulationF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryReciptsRegulationItems);
end;

procedure TReciptsRegulationF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryReciptsRegulationItems);
end;

procedure TReciptsRegulationF.actExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(grdDetail);
end;

procedure TReciptsRegulationF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(grdMaster);
  SaveColWidth(grdDetail);
end;

procedure TReciptsRegulationF.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  if qryReciptsRegulation.State in dsEditModes then
    if get_response('«ÿ·«⁄«  À»  ‰‘œÂ «”  !   «ÿ·«⁄«  –ŒÌ—Â ‘Êœø')  = mrYes then
    qryReciptsRegulation.Post;
end;

procedure TReciptsRegulationF.actSelectedExecute(Sender: TObject);
const
  sqlText = 'SELECT DISTINCT  StuffCoding.c_StuffCode,StuffCoding.c_StuffName' +
            ' FROM StuffCoding INNER JOIN' +
            ' StoreStuffs ON StuffCoding.c_StuffCode = StoreStuffs.c_StuffCode INNER JOIN' +
            ' Stores ON StoreStuffs.n_StoreID = Stores.n_StoreID' +
            ' WHERE (Stores.StoreKind IN (1, 2, 3)) And (StuffCoding.c_StuffCode not in (%S))';
var
  S:String;
  aResult:String;
  TSBreak:TStringList;
  I:Integer;
begin
  inherited;

  with qryReciptsRegulationItems do
  try
    DisableControls;
    First;
    while not Eof do
    begin
      S := S + qryReciptsRegulationItems.FieldByName('StuffCode').AsString +',';
      Next;
    end;
    SetLength(S,length(S)-1);
    if S= EmptyStr then S := '0';
    aResult :=  selectedF.ShowSelect(DMf.adcBSell,'ﬂ«·« Â«',Format(sqlText,[s]),['ﬂœ', '⁄‰Ê«‰'],alLeft,[50,300]);
    if aResult <> EmptyStr then
    begin
      TSBreak := TStringList.Create;
      TSBreak.Text := StringReplace(aResult,',',#13,[rfReplaceAll]);
      for I := 0 to TSBreak.Count - 1 do
      begin
        Append;
        FieldByName('StuffCode').AsString:=TSBreak[I];
        FieldByName('UnityRate').AsInteger := 0;
        FieldByName('AmountFactor').AsInteger := 0;
        Post
      end;
    end;
  finally
    FreeAndNil(TSBreak);
    EnableControls;
  end;
end;

function TReciptsRegulationF.CheckDublicate(Code:String;ID:Integer):Boolean;
var
  Cloned :TADOQuery;
begin
  Cloned := TADOQuery.Create(Self);
  try
    Cloned.Clone(qryReciptsRegulationItems,ltReadOnly);
    Cloned.Filter := Format('(StuffCode = %d ) AND (ReciptsRegulationItemsID <> %d)',[Code,ID]);
    Cloned.Filtered := True;
    Result := not Cloned.IsEmpty;
  finally
    FreeAndNil(Cloned);
  end;
end;

procedure TReciptsRegulationF.qryReciptsRegulationItemsBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  if CheckDublicate(qryReciptsRegulationItems.FieldByName('StuffCode').AsString,
                    qryReciptsRegulationItems.fieldbyName('ReciptsRegulationItemsID').AsInteger)  then
  begin
    Warn('ﬂœ ﬂ«·«  ﬂ—«—Ì „Ì »«‘œ');
    Abort;
  end;

end;

end.
