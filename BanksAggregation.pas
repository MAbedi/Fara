{-----------------------------------------------------------------------------
 Unit Name: BanksAggregation
 Author:    M_A_H_M_O_O_D
 Purpose:
 History:
-----------------------------------------------------------------------------}
unit BanksAggregation;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DBCtrls, Grids, DBGrids,StrUtils,
  ppDB, ppDBPipe, ppComm, ppRelatv, ppProd, ppClass, ppReport, ppPrnabl,
  ppCtrls, ppCache, ppBands, ppVar, ppStrtch, ppMemo, ppModule, raCodMod,
  ppTypes, ppSubRpt,Menus, DB, ADODB, Mask, ComCtrls, Provider, DBClient,
  CheckLst ;

type
  TSearchItem=class
    BankName:  String;
    caption:  String;
  end;//tSearchItem
  Ttable = record
    tableName: String;
    tableKeyName: String;
    tableCaption: String;
    KeyFieldName: String;
  end;//Ttable
  TBanksAggregationF = class(Ttemplate2MDIF)
    SrcTypes: TDataSource;
    qryTypes: TADOQuery;
    qryTypesItems: TADOQuery;
    SrcTypesItems: TDataSource;
    DBGrid1: TDBGrid;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn3: TBitBtn;
    StatusBar1: TStatusBar;
    actFilter: TAction;
    actSendExel: TAction;
    LblLimit: TLabel;
    actSort: TAction;
    DBGrid2: TDBGrid;
    qryTypesType: TWordField;
    qryTypesCaption: TStringField;
    qryTypesKind: TIntegerField;
    qryTypesPerson1Caption: TStringField;
    qryTypesPerson2Caption: TStringField;
    BitBtn8: TBitBtn;
    cliTypesItems: TClientDataSet;
    cliTypesItems_checked: TBooleanField;
    DataSetProvider1: TDataSetProvider;
    cliTypesItemsReciptNumber: TIntegerField;
    cliTypesItemsReciptDate: TStringField;
    cliTypesItemsStoreID: TSmallintField;
    cliTypesItemsc_StoreName: TStringField;
    cliTypesItemsPersonID1: TIntegerField;
    cliTypesItemsCustName: TStringField;
    cliTypesItemsEntity: TFloatField;
    cliTypesItemsWeight: TFloatField;
    cliTypesItemsTotalPrice: TBCDField;
    cliTypesItemsReciptNote: TStringField;
    cliTypesItemsReciptState: TSmallintField;
    cliTypesItemsReciptID: TIntegerField;
    cliTypesItemsReciptType: TSmallintField;
    Image2: TImage;
    Image3: TImage;
    actSelectAll: TAction;
    actSlelectInverse: TAction;
    actMove: TAction;
    qryMove: TADOQuery;
    qryTableFieldNames: TADOQuery;
    qryItems: TADOQuery;
    qryRecipts: TADOQuery;
    adcSrc: TADOConnection;
    qrySrc: TADOQuery;
    actMoveBaseInfo: TAction;
    BitBtn1: TBitBtn;
    pnlLblL: TPanel;
    cliTypesItemsName: TStringField;
    Panel1: TPanel;
    lslTableName: TListBox;
    DBGrid3: TDBGrid;
    qryShow: TADOQuery;
    srcShow: TDataSource;
    LblMoveBaseInfo: TLabel;
    qryDeficits: TADOQuery;
    actShift: TAction;
    BitBtn9: TBitBtn;
    ChkBankName: TCheckListBox;
    qrySections: TADOQuery;
    procedure actFilterExecute(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actSendExelExecute(Sender: TObject);
    procedure qryTypesAfterScroll(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure cliTypesItemsReciptStateGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure qryTypesItemsAfterOpen(DataSet: TDataSet);
    procedure DBGrid2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure actSelectAllExecute(Sender: TObject);
    procedure actSlelectInverseExecute(Sender: TObject);
    procedure actMoveExecute(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure actMoveBaseInfoExecute(Sender: TObject);
    procedure lslTableNameClick(Sender: TObject);
    procedure actShiftExecute(Sender: TObject);
    procedure ChkBankNameDblClick(Sender: TObject);
  private
    { Private declarations }
    sitem:TSearchItem;
    TotalCount:Integer;
    MyArray: array[1..13] of Ttable;
    procedure UpdateFilter;
    procedure ToggleCheck;
    procedure InsertRecipts;
    function GetTableFieldNames(TableName:String='Field1,Field2,...'):String;
    procedure AssignBankName(adc: TADOConnection; dbName: String);
    procedure initForm;

  public
    { Public declarations }
  end;

var
  BanksAggregationF: TBanksAggregationF;

implementation

uses filter_ADO, FilterClass_ADO, GlobalPro, DM,  GetOtherMoney,
  GetCheck, Recipts, searchCode_ADO, TreeChart,
  DBGrid2Print, search, sort, mmessage;

{$R *.dfm}


procedure TBanksAggregationF.UpdateFilter;
begin
  with qryTypesItems do begin
    Active:=False;
    Parameters.ParamByName('DateFrom').Value:=GetcFrom(myParams.ParamValues['Date'],ftDate);
    Parameters.ParamByName('DateTo').Value:=GetcTo(myParams.ParamValues['Date'],ftDate);
  end;//with
  with qryTypes do begin
    Active:=False;
    Parameters.ParamByName('DateFrom').Value:=GetcFrom(myParams.ParamValues['Date'],ftDate);
    Parameters.ParamByName('DateTo').Value:=GetcTo(myParams.ParamValues['Date'],ftDate);
    Active:=True;
  end;//with
end;

procedure TBanksAggregationF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self,myParams) do begin
    try
      AddItem(DMF.adcBSell,'Date','  «—ÌŒ ',' «—ÌŒ',ftDate,dvMinMax,'','',ciSimple, '',
      ' SELECT Min(Date_),Max(Date_) FROM  (SELECT ReciptDate as Date_ FROM Recipts union all '+
      ' SELECT FormDate as Date_ FROM Forms)as a ');
     if ShowModal=mrOk then begin
        GetFilterString;
        UpdateFilter;
     end;//if
    finally
     Free;
    end;//try
  end;//with
end;

procedure TBanksAggregationF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid2,6);
end;

procedure TBanksAggregationF.FormDestroy(Sender: TObject);
begin
  inherited;
  sitem.Free;
  SaveColWidth(DBGrid2)
end;

procedure TBanksAggregationF.actSendExelExecute(Sender: TObject);
begin
  inherited;
  SendDBGridToExcel(DBGrid2);
end;

procedure TBanksAggregationF.qryTypesAfterScroll(
  DataSet: TDataSet);
begin
  inherited;
  with qryTypesItems do begin
    Active:=False;
    Parameters.ParamByName('Type').Value:=qryTypes.FieldByName('Type').AsInteger;
    Active:=True;
  end;//with
  with qryTypesItems.Parameters do begin
    LblLimit.Caption:=//'«“ „‘ —Ì '+IntToStr(ParamByName('PersonIDFrom1').Value)+'  « '+IntToStr(ParamByName('PersonIDTo1').Value)+'    '+
                    '«“  «—ÌŒ '+ParamByName('DateFrom').Value+'  « '+ParamByName('DateTo').Value;
  end;//with

  qryTypesItems.FieldByName('PersonID1').DisplayLabel:=
          'ﬂœ '+qryTypes.FieldByName('Person1Caption').AsString;

  qryTypesItems.FieldByName('CustName').DisplayLabel:=
          '‰«„ '+qryTypes.FieldByName('Person1Caption').AsString;


end;

procedure TBanksAggregationF.FormCreate(Sender: TObject);
var
  i:Integer;
begin
  inherited;
  initForm;
  Entity_Weight(DBGrid2);
  MyArray[01].tableName:='Deficits';           MyArray[01].tableKeyName:='DeficitID';
  MyArray[02].tableName:='LookUps';            MyArray[02].tableKeyName:='LookUpID';
  MyArray[03].tableName:='UseUnits';           MyArray[03].tableKeyName:='UseUnitID';
  MyArray[04].tableName:='Units';              MyArray[04].tableKeyName:='UnitCode';
  MyArray[05].tableName:='Stores';             MyArray[05].tableKeyName:='n_StoreID';
  MyArray[06].tableName:='CustomersGroup';     MyArray[06].tableKeyName:='CustomerGrpID';
  MyArray[07].tableName:='Customers';          MyArray[07].tableKeyName:='CustID';
  MyArray[08].tableName:='PurchaseEffect';     MyArray[08].tableKeyName:='EffectID';
  MyArray[09].tableName:='UsersStore';         MyArray[09].tableKeyName:='n_UserID';
  MyArray[10].tableName:='StuffGroups';        MyArray[10].tableKeyName:='GroupID';
  MyArray[11].tableName:='StuffCoding';        MyArray[11].tableKeyName:='c_StuffCode';
  MyArray[12].tableName:='StoreStuffs';        MyArray[12].tableKeyName:='c_StuffCode';
  MyArray[13].tableName:='StuffsDeficitsRange';MyArray[13].tableKeyName:='c_StuffCode';

  MyArray[01].tableCaption:='ﬂ”Ê—« /«÷«›« ';
  MyArray[02].tableCaption:='«ÿ·«⁄«  Å«ÌÂ Ê À«» ';
  MyArray[03].tableCaption:='„Õ· Â«Ì „’—›';
  MyArray[04].tableCaption:='Ê«ÕœÂ«Ì ‘„«—‘';
  MyArray[05].tableCaption:='«‰»«—Â«';
  MyArray[06].tableCaption:='ê—ÊÂ „‘ —Ì«‰';
  MyArray[07].tableCaption:='„‘ —Ì«‰';
  MyArray[08].tableCaption:='⁄‰«ÊÌ‰ „ÊÀ— »—Œ—Ìœ';
  MyArray[09].tableCaption:='«‰»«—Ê ﬂ«—»—';  //UsersStore
  MyArray[10].tableCaption:='ê—ÊÂ ﬂ«·«';
  MyArray[11].tableCaption:='ﬂœÌ‰ê ﬂ«·«';
  MyArray[12].tableCaption:='«‰»«— Ê ﬂ«·«';
  MyArray[13].tableCaption:='ﬂ«·« Ê ﬂ”Ê—« /«÷«›« ';

  MyArray[01].KeyFieldName:='DeficitName';
  MyArray[02].KeyFieldName:='Name';
  MyArray[03].KeyFieldName:='UseUnitName';
  MyArray[04].KeyFieldName:='UnitName';
  MyArray[05].KeyFieldName:='c_StoreName';
  MyArray[06].KeyFieldName:='CustomerGrpName';
  MyArray[07].KeyFieldName:='CustName';
  MyArray[08].KeyFieldName:='EffectName';
  MyArray[09].KeyFieldName:='n_StoreID';
  MyArray[10].KeyFieldName:='GroupName';
  MyArray[11].KeyFieldName:='c_StuffName';
  MyArray[12].KeyFieldName:='n_StoreID';
  MyArray[13].KeyFieldName:='DeficitID';

  for i:=1 to 11 do
    if not(i in [9]) then lslTableName.AddItem(MyArray[i].tableCaption,TObject(i));
end;

procedure TBanksAggregationF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  searchF.ShowSearch(cliTypesItems);
end;

procedure TBanksAggregationF.actSortExecute(Sender: TObject);
begin
  inherited;
  sortF.ShowSort(cliTypesItems);
end;

procedure TBanksAggregationF.DBGrid2DblClick(Sender: TObject);
begin
  inherited;
  ToggleCheck;
end;

procedure TBanksAggregationF.DBGrid2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  DBGrid2.DefaultDrawColumnCell(Rect,DataCol,Column,state);
  if DataCol=0 then begin
    DBGrid2.Canvas.Rectangle(Rect);
    if cliTypesItems_checked.AsBoolean then
      DBGrid2.Canvas.Draw(Rect.Left,Rect.Top,Image3.Picture.Graphic)
    else
      DBGrid2.Canvas.Draw(Rect.Left,Rect.Top,Image2.Picture.Graphic)
  end;//if
end;

procedure TBanksAggregationF.cliTypesItemsReciptStateGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  case cliTypesItems.FieldByName('ReciptState').AsInteger of
    0: Text:='„Êﬁ ';
    1: Text:='ﬁÿ⁄Ì';
    2: Text:='œ«∆„';
    3: Text:='»«ÿ·Â';
  end;//case

end;

procedure TBanksAggregationF.qryTypesItemsAfterOpen(DataSet: TDataSet);
begin
  inherited;
  cliTypesItems.Active:=False;
  cliTypesItems.Active:=True;
end;

procedure TBanksAggregationF.DBGrid2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key=VK_SPACE then begin
    Key:=0;
    ToggleCheck;
  end;//if

end;

procedure TBanksAggregationF.ToggleCheck;
begin
  with cliTypesItems do begin
    Edit;
    FieldByName('_Checked').AsBoolean:=not FieldByName('_Checked').AsBoolean;
    Post;
  end;//with
end;



procedure TBanksAggregationF.actSelectAllExecute(Sender: TObject);
begin
  inherited;
  with cliTypesItems do begin
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

procedure TBanksAggregationF.actSlelectInverseExecute(Sender: TObject);
begin
  inherited;
  with cliTypesItems do begin
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

procedure TBanksAggregationF.actMoveExecute(Sender: TObject);
var
  checkeds:String;
begin
  inherited;
  TotalCount:=0;
  With cliTypesItems do begin
    DisableControls;
    First;
    while not eof do begin
      if FieldByName('_checked').AsBoolean then checkeds:=checkeds + FieldByName('ReciptID').AsString + ',';
      inc(TotalCount);
      Next;
    end;//while
    checkeds:=LeftStr(checkeds,length(checkeds)-1);
    EnableControls;
  end;


  if checkeds='' then Exit;
  BigMessageProgBar('œ— Õ«· «‰ ﬁ«· '+qryTypesCaption.AsString+' Â« ',TotalCount);
  With cliTypesItems do begin
    DisableControls;
    First;
    while not eof do begin
      if FieldByName('_checked').AsBoolean then      InsertRecipts;
      Next;
    end;//while
    EnableControls;
  end;
  FreeReservedCodes(DMf.adcBSell);
  CloseMessage;
  actSelectAll.Execute;
  actSlelectInverse.Execute;
end;

function TBanksAggregationF.GetTableFieldNames(TableName: String): String;
var
  f:TStringList;
  i:Integer;
begin
  Result:='';
  f:=TStringList.Create;
  With qryTableFieldNames do begin
    SQL.Text:='SELECT top 1 * FROM '+TableName;
    GetFieldNames(f);
  end;
  for i:=0 to f.Count-1 do  Result:=Result+f[i]+',';
  f.Free;
  Result:=LeftStr(Result,length(Result)-1);
end;

procedure TBanksAggregationF.InsertRecipts;
var
  i,ReciptID  :Integer;
//  ,MaxReciptID,MaxReciptItemID:Integer;
begin
//  MaxReciptID:=GetANewCode('Recipts','ReciptID');
//  MaxReciptItemID:=GetANewCode('ReciptItems','ReciptItemID');
  qryRecipts.Active:=True;
  qryItems.Active:=True;
  qryDeficits.Active:=True;
  With qrySrc do begin
    Active:=False;
    SQL.Text:='SELECT *  FROM    Recipts';
    SQL.Add('WHERE     ReciptID = '+cliTypesItemsReciptID.AsString);
    Active:=True;
    while not Eof do begin
      qryRecipts.Insert;
        for i:=0 to FieldCount-1 do
          if (qryRecipts.FindField(Fields[i].FieldName)<>nil)
                          and(Fields[i].FieldName<>'ReciptID') then
            qryRecipts.FieldByName(Fields[i].FieldName).Value:=Fields[i].Value
          else begin
            if  FieldByName('ParentReciptID').AsInteger<>0 then
              qryRecipts.FieldByName('ParentReciptID').AsInteger:=FieldByName('ParentReciptID').AsInteger;//+MaxReciptID;
            qryRecipts.FieldByName('ReciptID').AsInteger:=FieldByName('ReciptID').AsInteger;//+MaxReciptID;
          end;
      qryRecipts.Post;
      Next;
    end;//while
    ReciptID:=qryRecipts.FieldByName('ReciptID').AsInteger;
    GoProgressBar(qryTypesCaption.AsString+'<>'+cliTypesItemsReciptNumber.AsString);
    Active:=False;
    SQL.Text:='SELECT *  FROM    ReciptItems';
    SQL.Add('WHERE     ReciptID = '+cliTypesItemsReciptID.AsString);
    Active:=True;
    while not Eof do begin
      qryItems.Insert;
        for i:=0 to FieldCount-1 do
          if (qryItems.FindField(Fields[i].FieldName)<>nil)
                          and(Fields[i].FieldName<>'ReciptItemID') then
            qryItems.FieldByName(Fields[i].FieldName).Value:=Fields[i].Value
          else begin
            if  FieldByName('preReciptItemID').AsInteger<>0 then
              qryItems.FieldByName('preReciptItemID').AsInteger:=FieldByName('preReciptItemID').AsInteger;//+MaxReciptItemID;
            qryItems.FieldByName('ReciptItemID').AsInteger:=FieldByName('ReciptItemID').AsInteger;//+MaxReciptItemID;
          end;
      qryItems.FieldByName('ReciptID').AsInteger:=ReciptID;
      qryItems.Post;
      Next;
    end;//while

    Active:=False;
    SQL.Text:='SELECT *  FROM    ReciptsDeficits ';
    SQL.Add('WHERE     ReciptID = '+cliTypesItemsReciptID.AsString);
    Active:=True;
    while not Eof do begin
      qryDeficits.Insert;
        for i:=0 to FieldCount-1 do
          if (qryDeficits.FindField(Fields[i].FieldName)<>nil)
                          and(Fields[i].FieldName<>'ReciptDeficitID') then
            qryDeficits.FieldByName(Fields[i].FieldName).Value:=Fields[i].Value
          else begin
            qryDeficits.FieldByName('ReciptDeficitID').AsInteger:=FieldByName('ReciptDeficitID').AsInteger;//+MaxReciptDeficitID;
          end;
      qryDeficits.FieldByName('ReciptID').AsInteger:=ReciptID;
      qryDeficits.Post;
      Next;
    end;//while
  end;  //With qrySrc
end;

procedure TBanksAggregationF.AssignBankName(adc:TADOConnection;dbName: String);
var
  conStr: String;
  userName: String;
begin
  userName:=ReadConfig('','UserName');
  if userName='' then userName:='FaraUser';
  conStr:='Provider=SQLOLEDB.1;Password=tycedar;Persist Security Info=True;Initial Catalog='
  + dbName
  + ';Data Source=' + opt.ServerName
  + ';User ID=' + userName;
  qrySrc.Active:=False;
  adc.Connected:=False;
  adc.ConnectionString:=conStr;
  adc.Open;
end;


procedure TBanksAggregationF.ComboBox1Change(Sender: TObject);
begin
  inherited;
  qryShow.Active:=False;
  AssignBankName(adcSrc,sitem.BankName);
  myParams.Clear;
  actFilter.Execute;
//  if myParams.FindParam('Number')=nil then ComboBox1.DroppedDown:=True;
end;

procedure TBanksAggregationF.actMoveBaseInfoExecute(Sender: TObject);
var
  i:Integer;
  Table_FieldNames:String;//checkeds,
begin
  inherited;
  BigMessageProgBar('œ— Õ«· «‰ ﬁ«· «ÿ·«⁄«  Å«ÌÂ  ',13);
  With qryMove do begin
    for i:=1 to 13 do begin
      Table_FieldNames:=GetTableFieldNames(MyArray[i].tableName);
      SQL.Text:='INSERT INTO '+APPBank.Name+'.dbo.'+MyArray[i].tableName;
      SQL.Add('('+Table_FieldNames+')');
      SQL.Add  ('SELECT '+Table_FieldNames+' FROM '+sitem.BankName+'.dbo.'+MyArray[i].tableName);
      SQL.Add  ('WHERE (NOT ('+MyArray[i].tableKeyName+' IN (SELECT '+MyArray[i].tableKeyName);
      SQL.Add  ('FROM '+APPBank.Name+'.dbo.'+MyArray[i].tableName+')))');
      GoProgressBar(IntToStr(ExecSQL));
    end;
    BigMessage('«ÿ·«⁄«  Å«ÌÂ „‰ ﬁ· ‘œ.˛',0);
  end;
  CloseMessage;
end;

procedure TBanksAggregationF.lslTableNameClick(Sender: TObject);
var
  i:Integer;
  Table_FieldNames:String;
begin
  inherited;
  i:=(Sender as TListBox).ItemIndex;
  if i=-1 then exit;
  i:=integer((Sender as TListBox).Items.Objects[i]);
  With qryShow do begin
    Active:=False;
    Table_FieldNames:=MyArray[i].tableKeyName+' as ﬂœ '+ ','+ MyArray[i].KeyFieldName+' as ⁄‰Ê«‰ ';
    SQL.Text:='SELECT '+Table_FieldNames+' FROM '+sitem.BankName+'.dbo.'+MyArray[i].tableName;
    SQL.Add  ('WHERE (NOT ('+MyArray[i].tableKeyName+' IN (SELECT '+MyArray[i].tableKeyName);
    SQL.Add  ('FROM '+APPBank.Name+'.dbo.'+MyArray[i].tableName+')))');
    Active:=True;
  end;
end;

procedure TBanksAggregationF.actShiftExecute(Sender: TObject);
begin
  inherited;
  if get_response('œﬁ  ﬂ‰Ìœ ﬂÂ «Ì‰ ⁄„·Ì«  —ÊÌ »«‰ﬂÌ ﬂÂ ﬁ—«— «”  «ÿ·«⁄«  —« ›—«ŒÊ«‰Ì ﬂ‰œ ( »«‰ﬂ Ã«—Ì : '+
                    APPBank.Name+' )›ﬁÿ Ìﬂ»«— «Ã—« ‘Êœ.˛'+
                     #10#13+'¬Ì« «œ«„Â „Ì œÂÌœø')<>mrYes then Exit;
  With DMf.qryTmpTmp do begin
    Active:=False;
    SQL.Text:='SELECT max(ReciptID) FROM Recipts ';
    Active:=True;
    if Fields[0].AsInteger>10000000 then
    begin
      Warn('¬„«œÂ ”«“Ì —ÊÌ «Ì‰ »«‰ﬂ «‰Ã«„ ‘œÂ «” .˛');
      Exit;
    end;
    Active:=False;
    SQL.Text:='Update ReciptItems set ReciptItemID=ReciptItemID+10000000';
    SQL.Add  ('Update ReciptItems set preReciptItemID=preReciptItemID+10000000');
    SQL.Add  ('WHERE (preReciptItemID IS NOT NULL)');
    SQL.Add  ('Update Recipts set ReciptID=ReciptID+10000000');
    SQL.Add  ('Update Recipts set ParentReciptID=ParentReciptID+10000000');
    SQL.Add  ('WHERE (ParentReciptID IS NOT NULL)');
    SQL.Add  ('Update ReciptsDeficits set ReciptDeficitID=ReciptDeficitID+10000000');
    BigMessage('·ÿ›« ’»— ﬂ‰Ìœ...˛',0);
    ExecSQL;
    BigMessage('«‰Ã«„ ‘œ.˛',1);
    Active:=False;
  end;
end;

procedure TBanksAggregationF.ChkBankNameDblClick(Sender: TObject);
var
  i:Integer;
begin
  inherited;
  for i:=0 to ChkBankName.Items.Count-1 do
    ChkBankName.Checked[i]:=not ChkBankName.Checked[i]
end;

procedure TBanksAggregationF.initForm;
begin
  ChkBankName.Clear;
  with qrySections do begin
    Active:=False;
    Parameters.ParamByName('SYSID').Value:=SYSID;
    Active:=True;
    while not Eof do begin
      ChkBankName.AddItem(FieldByName('BankName').AsString,TObject(RecNo));
      ChkBankName.Checked[RecNo-1]:=True;
      if FieldByName('BankName').AsString=APPBank.Name then
         ChkBankName.ItemIndex:=RecNo-1;
      Next;
    end;
    Active:=False;
  end;//with
end;


end.
