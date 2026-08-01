unit ReciptRelease;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, Grids, Vcl.DBGrids, DB, ADODB, SumDBGrid, ComCtrls, Mask, DBCtrls,
  System.ImageList, System.Actions;

type
  TReciptReleaseF = class(Ttemplate2MDIF)
    pnlRight: TPanel;
    DBGrid1: TDBGrid;
    SumGrid1: TSumGrid;
    PnlLeft: TPanel;
    DBGrid2: TDBGrid;
    qryRecipts: TADOQuery;
    srcRecipts: TDataSource;
    qryReciptsReciptNumber: TIntegerField;
    qryReciptsReciptDate: TStringField;
    qryReciptsPersonID1: TIntegerField;
    qryReciptsPersonID2: TIntegerField;
    qryReciptsPersonName1: TStringField;
    qryReciptsPersonName2: TStringField;
    qryReciptsEntity: TFloatField;
    qryReciptsWeight: TFloatField;
    qryReciptRelease: TADOQuery;
    qryReciptReleaseReleaseID: TIntegerField;
    qryReciptReleaseReciptItemID: TIntegerField;
    qryReciptReleaseServerID: TIntegerField;
    qryReciptReleaseYearID: TIntegerField;
    qryReciptReleaseReciptID: TIntegerField;
    qryReciptReleaseCustID: TIntegerField;
    qryReciptReleaseReleaseEntity: TFloatField;
    qryReciptReleaseReleaseWeight: TFloatField;
    srcReciptRelease: TDataSource;
    qryReciptsReciptID: TIntegerField;
    qryReciptsReciptItemID: TIntegerField;
    qryCustomers: TADOQuery;
    qryReciptRelease_CustName: TStringField;
    SumGrid2: TSumGrid;
    qryReciptsHasColor: TIntegerField;
    qryStuff: TADOQuery;
    qryStuffc_StuffName: TStringField;
    srcStuff: TDataSource;
    qryStuffStuffCodeName: TWideStringField;
    Label1: TLabel;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    DBEdit1: TDBEdit;
    dbedtReciptDate: TDBEdit;
    DBNavigator1: TDBNavigator;
    actSort: TAction;
    actExcel: TAction;
    btnSearch_: TBitBtn;
    BitBtn1: TBitBtn;
    btnExcel: TBitBtn;
    qryReciptsServerID: TIntegerField;
    qryReciptsYearID: TIntegerField;
    Panel1: TPanel;
    newPanel: TPanel;
    BtnInsert: TBitBtn;
    BitBtn4: TBitBtn;
    BtnDelete: TBitBtn;
    btnFilter: TButton;
    actFilter: TAction;
    qryReciptsCustomerGrpID: TIntegerField;
    okPanel: TPanel;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    btnSelected: TBitBtn;
    actSelected: TAction;
    qryReciptRelease_InfoWeight: TFloatField;
    qryReciptReleaseReleaseKind: TWordField;
    qryStuffStuffCode: TLargeintField;
    procedure FormResize(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure qryReciptsAfterScroll(DataSet: TDataSet);
    procedure srcReciptReleaseStateChange(Sender: TObject);
    procedure qryReciptReleaseBeforeDelete(DataSet: TDataSet);
    procedure qryReciptReleaseAfterInsert(DataSet: TDataSet);
    procedure qryReciptReleaseBeforePost(DataSet: TDataSet);
    procedure DBGrid2EditButtonClick(Sender: TObject);
    procedure qryReciptReleaseAfterPost(DataSet: TDataSet);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton1Click(Sender: TObject);
    procedure qryStuffAfterScroll(DataSet: TDataSet);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actExcelExecute(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actSelectedExecute(Sender: TObject);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure qryReciptReleaseReleaseKindGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure qryReciptReleaseReleaseKindSetText(Sender: TField;
      const Text: String);
  private
    { Private declarations }
    FormType:Integer;
    _dateFrom,_dateTo : String;
    _custFrom,_custTo : Integer;
    procedure initForm;
    function CalWeight: Boolean;
    procedure gridkeyenter(Sender: TObject; var key: char);
    procedure updateFilter;
//    function SumWeight(CustID: Integer): real;
  public
    { Public declarations }
  end;

var
  ReciptReleaseF: TReciptReleaseF;

implementation

uses GlobalPro, DM, FormFunctions, searchCode_ADO, Math, sndkey32, search2,
  sort2, filter_ADO, FilterClass_ADO, StrUtils, selected, mmessage;

{$R *.dfm}
procedure TReciptReleaseF.gridkeyenter(Sender: TObject;var key: char);
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
        0: nextIndex:=IfThen(aDataSet.FieldByName('_CustName').AsString='',0,2);
        2: nextIndex:= 3;
        3: nextIndex:=4;
        4: nextIndex:=-1;
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
    #32,#157:  if curIndex =0 then begin
      key:=#0;
      DBGrid2EditButtonClick(sender);
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
            (sender as TDBGrid).selectedindex:=5;
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


function TReciptReleaseF.CalWeight: Boolean;
var
  Entity,Weight : Currency;
  Cloned : TADOQuery;
begin
   Weight    := 0;
   Entity    := 0;
   Cloned := TADOQuery.Create(DMf.adcBSell);
   try
     Cloned.Clone(qryReciptRelease,ltReadOnly);
     Cloned.Filter   := Format('ReleaseID<>%d',[qryReciptRelease.fieldbyname('ReleaseID').AsInteger] );
     Cloned.Filtered := True;
     Cloned.First;
     with Cloned do
     while not Eof do
     begin
      Entity :=  Entity + fieldbyname('ReleaseEntity').AsCurrency;
      Weight :=  Weight + fieldbyname('ReleaseWeight').AsCurrency;
      Next;
     end;
     Entity :=  Entity + qryReciptRelease.fieldbyname('ReleaseEntity').AsCurrency;
     Weight :=  Weight + qryReciptRelease.fieldbyname('ReleaseWeight').AsCurrency;


     Result := not (( Entity > qryRecipts.fieldbyname('Entity').AsCurrency) or
                    (Weight > qryRecipts.fieldbyname('Weight').AsCurrency ));

   finally
      Cloned.Free;
   end;


end;


//function TReciptReleaseF.SumWeight(CustID:Integer): real;
//var
//  Weight : Real;
//  Cloned : TADOQuery;
//begin
//   Weight    := 0;
//   Cloned := TADOQuery.Create(DMf.adcBSell);
//   try
//     Cloned.Clone(qryReciptRelease,ltReadOnly);
//     Cloned.Filter   := Format('CustID=%d',[CustID] );
//     Cloned.Filtered := True;
//     Cloned.First;
//     with Cloned do
//     while not Eof do
//     begin
//      Weight :=  Weight + qryReciptRelease.fieldbyname('ReleaseWeight').AsCurrency;
//      Next;
//     end;
//
//     Result := Weight;
//   finally
//     FreeAndNil(Cloned);
//   end;
//
//
//end;

procedure TReciptReleaseF.FormResize(Sender: TObject);
var
  aWidth: Integer;
begin
  inherited;
  aWidth := trunc(Self.Width/2);
  PnlLeft.Width := aWidth;
  pnlRight.Width := aWidth;
  SetColSize(DBGrid1,4);
  SetColSize(DBGrid2,1);
end;

procedure TReciptReleaseF.initForm;
var
  VP1:Boolean;
//  Vp2:Boolean;
begin
  SetLookUpCash(qryReciptRelease);
  FormType := var_glb_gParam;
  with TADOQuery.Create(Self) do
  try
    Connection := DMf.adcBSell;
    SQL.Text:='SELECT Person1Active,Person2Active FROM ReciptTypes';
		SQL.Add  ('WHERE (ReciptType = :ReciptType)');
    Parameters.ParamByName('ReciptType').Value := FormType;
    Open;
    VP1 := FieldByName('Person1Active').AsInteger=1;
//    VP2 := FieldByName('Person2Active').AsInteger=1;
    setColumns2(DBGrid1,VP1,'PersonID1');
    setColumns2(DBGrid1,VP1,'PersonName1');
    setColumns2(DBGrid1,VP1,'PersonID2');
    setColumns2(DBGrid1,VP1,'PersonName2');
    myParams.Clear;
    actFilter.Execute;     
  finally
    Free;
  end;

end;

procedure TReciptReleaseF.FormCreate(Sender: TObject);
begin
  inherited;
  initForm;
end;

procedure TReciptReleaseF.qryReciptsAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qryReciptRelease do
  begin
    Close;
    Parameters.ParamByName('ReciptItemID').Value := DataSet.fieldbyname('ReciptItemID').AsInteger;
    Parameters.ParamByName('ReciptID').Value := DataSet.fieldbyname('ReciptID').AsInteger;
    Parameters.ParamByName('YearID').Value := DataSet.FieldByName('YearID').AsInteger ;
    Parameters.ParamByName('ServerID').Value := DataSet.FieldByName('ServerID').AsInteger   ;
//    SetParametersYearServerID(qryReciptRelease);
    Open;
  end;
end;

procedure TReciptReleaseF.srcReciptReleaseStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible:=qryReciptRelease.State in dsEditModes;
  newPanel.Visible:=not okPanel.Visible;
  BtnReject.Cancel:=newPanel.Visible;
  FreeReservedCodes(DMf.adcBSell,'','',Self.Name);
end;

procedure TReciptReleaseF.qryReciptReleaseBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if get_response('¬Ì« »—«Ì Õ–› «Ì‰ ›—„ „ÿ„∆‰ Â” Ìœø')<> mrYes then Abort;
end;

procedure TReciptReleaseF.qryReciptReleaseAfterInsert(DataSet: TDataSet);

begin
  inherited;
  DataSet.FieldByName('ServerID').AsInteger := qryRecipts.FieldByName('ServerID').AsInteger   ;
  DataSet.FieldByName('YearId').AsInteger := qryRecipts.FieldByName('YearID').AsInteger ;
  DataSet.FieldByName('ReciptID').AsInteger := qryRecipts.FieldByName('ReciptID').AsInteger;
  DataSet.FieldByName('ReciptItemID').AsInteger := qryRecipts.FieldByName('ReciptItemID').AsInteger;
  DataSet.FieldByName('ReleaseID').AsInteger := GetANewCode(Self.Name,'ReciptItemsRelease','ReleaseID') ;
  DBGrid2.SelectedIndex := 0;
end;


procedure TReciptReleaseF.qryReciptReleaseBeforePost(DataSet: TDataSet);
begin
  inherited;
  if (DataSet.FieldByName('CustID').AsString = EmptyStr) and (DataSet.State=dsInsert)
  then
  begin
    DataSet.Cancel;
    Abort;
    Exit;
  end;//if
  if DataSet.FieldByName('ReleaseEntity').IsNull then
    DataSet.FieldByName('ReleaseEntity').AsInteger := 0;
  if DataSet.FieldByName('ReleaseWeight').IsNull then
    DataSet.FieldByName('ReleaseWeight').AsInteger := 0;
  if not CalWeight then
  begin
    Warn('„ﬁœ«— »Ì‘ — «“ „ﬁœ«—  Ê“Ì⁄ ‘œÂ «” ');
    Abort;
  end;
end;

procedure TReciptReleaseF.DBGrid2EditButtonClick(Sender: TObject);
var
  txt:  String;
  b:Boolean;
  Results:  array[0..2] of String;
  fld:TField;
begin
  inherited;

  if DBGrid2.SelectedIndex = 0 then
  begin
    fld :=qryRecipts.FieldByName('CustomerGrpID');
    txt:='SELECT Customers.CustID,Customers.CustName , Customers.InfoWeight FROM Customers '+
         ' INNER JOIN CustomersGroup ON Customers.CustomerGrpID = CustomersGroup.CustomerGrpID ' +
         IfThen(fld.IsNull, ' WHERE  (CustomersGroup.GroupType IN (3, 5, 6)) ',
                            ' WHERE Customers.CustomerGrpID = '+  fld.AsString );

    b:=searchCode_ADOF.SearchCode2(DMF.adcBSell,'êÌ—‰œÂ ', txt,
      ['òœ','⁄‰Ê«‰',' ⁄œ«œ'],Results,[50,150,50],alLeft);
    if b then
    begin
      if not (qryReciptRelease.state in dsEditModes) then   qryReciptRelease.edit;
      qryReciptRelease['CustID']:=Results[0];
  //    if PnlPerson2.Visible then EdtPersonID2.SetFocus
    end;//if
  end;
end;

procedure TReciptReleaseF.qryReciptReleaseAfterPost(DataSet: TDataSet);
var
  MBT:TBookmark;
  DBT:TBookmark;
begin
  inherited;
  MBT := qryRecipts.GetBookmark;
  DBT := DataSet.GetBookmark;
  try
    SumGrid2.Active := False ;
    SumGrid2.Active := True ;
    qryRecipts.Requery ;
    qryRecipts.GotoBookmark(MBT);
    DataSet.GotoBookmark(DBT);
  finally
 //    DataSet.FreeBookmark(DBT);
//    qryRecipts.FreeBookmark(MBT);

  end;

end;

procedure TReciptReleaseF.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  if (qryRecipts.FieldByName('HasColor').AsInteger = 1 ) then
  begin
      DBGrid1.Canvas.Brush.Color:=$00D2FFD2;
      DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,state);
  end;
end;

procedure TReciptReleaseF.DBGrid2KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
 gridkeyenter(Sender,Key);
end;

procedure TReciptReleaseF.SpeedButton1Click(Sender: TObject);
var
  txt:  String;
  b:Boolean;
  Results:  array[0..1] of String;
begin
  inherited;

    txt:='SELECT ReciptItems.StuffCode, StuffCoding.c_StuffName ' +
    ' FROM Recipts INNER JOIN' +
    ' ReciptItems ON Recipts.ReciptID = ReciptItems.ReciptID AND Recipts.ServerID = ReciptItems.ServerID AND' +
    ' Recipts.YearID = ReciptItems.YearID INNER JOIN' +
    ' StuffCoding ON ReciptItems.StuffCode = StuffCoding.c_StuffCode' +
    ' WHERE reciptdate between %s and %s and recipttype= %d '+
    ' GROUP BY ReciptItems.StuffCode, StuffCoding.c_StuffName';
    txt := Format(txt,[QuotedStr(_dateFrom),QuotedStr(_dateTo),FormType]) ;
    b:=searchCode_ADOF.SearchCode2(DMF.adcBSell,'ﬂ«·«Â« ', txt,
      ['òœ','⁄‰Ê«‰'],Results,[50,180],alLeft);
    if b then
    qryStuff.Locate('StuffCode',Results[0],[])
end;

procedure TReciptReleaseF.qryStuffAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qryRecipts do
  begin
    Close;
    Parameters.ParamByName('FormType').Value := FormType;
    Parameters.ParamByName('DateFrom').Value := _dateFrom;//DataSet.fieldbyname('ReciptDate').AsString ;
    Parameters.ParamByName('DateTo').Value := _dateTo;
    Parameters.ParamByName('custFrom').Value := _custFrom;//DataSet.fieldbyname('ReciptDate').AsString ;
    Parameters.ParamByName('custTo').Value := _custTo;
    Parameters.ParamByName('StuffCode').Value := DataSet.FieldByName('StuffCode').AsLargeInt ;
//    SetParametersYearServerID(qryRecipts);
//    Parameters.ParamByName('YearID').Value := APPBank.Year;
//    Parameters.ParamByName('ServerID').Value := opt.ServerID;
//    AND (a.ServerID = :ServerID) AND (a.YearID = :YearID)
    Open;
  end;
end;

procedure TReciptReleaseF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryRecipts);
end;

procedure TReciptReleaseF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryRecipts);
end;

procedure TReciptReleaseF.actExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TReciptReleaseF.updateFilter;
begin
  _dateFrom := GetcFrom(myParams.ParamValues['Date'],ftDate);
  _dateTo := GetcTo(myParams.ParamValues['Date'],ftDate);
  _custFrom := GetcFrom(myParams.ParamValues['Personal1'],ftInteger);
  _custTo := GetcTo(myParams.ParamValues['Personal1'],ftInteger);
  with qryStuff do
  begin
    Close;
    Parameters.ParamByName('DateFrom').Value := _dateFrom;
    Parameters.ParamByName('DateTo').Value := _dateTo;
    Parameters.ParamByName('StuffFrom').Value := GetcFrom(myParams.ParamValues['StuffCode'],ftLargeint);
    Parameters.ParamByName('StuffTO').Value := GetcTo(myParams.ParamValues['StuffCode'],ftLargeint);
    Parameters.ParamByName('Fromtype').Value := FormType;
    Open;
  end;

end;

procedure TReciptReleaseF.actFilterExecute(Sender: TObject);
begin
  inherited;
   with TfilterF.Create2(Self,myParams) do
   try
      AddItem(DMF.adcBSell,'Date','  «—ÌŒ ',' «—ÌŒ',ftDate,dvMinMax,'','',ciSimple, '',
        'Select  '''+APPBank.StartYear+''',Max(ReciptDate) from Recipts');

      AddItem(DMf.adcBSell,'StuffCode','ﬂ«·«','ﬂœ',ftLargeint,dvMinMax,'','',ciLookup,
       Format('SELECT ReciptItems.StuffCode, StuffCoding.c_StuffName ' +
			' FROM Recipts INNER JOIN' +
			' ReciptItems ON Recipts.ReciptID = ReciptItems.ReciptID AND Recipts.ServerID = ReciptItems.ServerID AND' +
			' Recipts.YearID = ReciptItems.YearID INNER JOIN' +
			' StuffCoding ON ReciptItems.StuffCode = StuffCoding.c_StuffCode' +
			' WHERE  recipttype= %d '+
			' GROUP BY ReciptItems.StuffCode, StuffCoding.c_StuffName',[FormType]),
      Format('SELECT min(ReciptItems.StuffCode),max(ReciptItems.StuffCode)' +
			' FROM Recipts INNER JOIN' +
			' ReciptItems ON Recipts.ReciptID = ReciptItems.ReciptID AND Recipts.ServerID = ReciptItems.ServerID AND' +
			' Recipts.YearID = ReciptItems.YearID INNER JOIN' +
			' StuffCoding ON ReciptItems.StuffCode = StuffCoding.c_StuffCode' +
			' WHERE (recipttype = %d)',[FormType]));

      AddItem(DMf.adcBSell,'Personal1','„‘ —Ì','ﬂœ',ftInteger,dvMinMax,'','',ciLookup,
       Format('SELECT DISTINCT Recipts.PersonID1, Customers.CustName '+
              'FROM  Recipts INNER JOIN  Customers ON Recipts.PersonID1 = Customers.CustID '+
              'WHERE (Recipts.ReciptType = %d)',[FormType]),

      Format('SELECT DISTINCT min(Recipts.PersonID1),max(Recipts.PersonID1) '+
              'FROM  Recipts INNER JOIN  Customers ON Recipts.PersonID1 = Customers.CustID '+
              'WHERE (Recipts.ReciptType = %d)',[FormType]));

     if showmodal=mrok then
     begin
       GetFilterString;
       updateFilter;
     end;//if
   finally;
      free;
    end;//try
end;

procedure TReciptReleaseF.FormShow(Sender: TObject);
begin
  inherited;
  if MyParams.FindParam('StuffCode')=nil then close;
end;

procedure TReciptReleaseF.actSelectedExecute(Sender: TObject);
var
  txt:String;
  fld:TField;
  Results:String;
  TSResult:TStrings;
  i:Integer;
  inxStr : Integer;
begin
  inherited;
    fld :=qryRecipts.FieldByName('CustomerGrpID');
    txt:= 'SELECT  cast(Customers.CustID as  nvarchar(14))+''#$''+ isnull(CAST(Customers.InfoWeight AS nvarchar(14)),0), '+
          'Customers.CustID,Customers.CustName , Customers.InfoWeight FROM Customers '+
          ' INNER JOIN CustomersGroup ON Customers.CustomerGrpID = CustomersGroup.CustomerGrpID ' +
          ' WHERE  (Customers.CustID NOT IN  (SELECT CustID FROM ReciptItemsRelease where '+
          ' (YearID =%d) and (ServerId =%d) And (ReciptID=%D) And   (ReciptItemID =%D) )) '+
          IfThen(fld.IsNull, ' And  (CustomersGroup.GroupType IN (3, 5, 6)) ',
          ' And Customers.CustomerGrpID = '+  fld.AsString );

    txt  := Format(txt,[qryRecipts.FieldByName('YearID').AsInteger,
    qryRecipts.FieldByName('ServerID').AsInteger,
    qryRecipts.FieldByName('ReciptID').AsInteger,
    qryRecipts.fieldbyname('ReciptItemID').AsInteger]);


    Results := selectedF.ShowSelect(DMf.adcBSell,'«‰ Œ«» ',txt ,['','òœ','⁄‰Ê«‰',' ⁄œ«œ'],alLeft,[0,15,280,50]);
    if Results = EmptyStr then Exit;
    TSResult := TStringList.Create;
    with qryReciptRelease do
    try
      DisableControls;
      TSResult.Text := StringReplace(Results,',',#13,[rfReplaceAll]);
      BigMessageProgBar('œ— Õ«·  À»  ...', TSResult.Count);
      for i := 0 to TSResult.Count-1 do
      begin
        Append;
        inxStr := pos('#$',TSResult[i]);
        FieldByName('CustID').AsString := copy(TSResult[i],0,inxStr-1);
        if (qryRecipts.FieldByName('Weight').AsFloat >= qryRecipts.FieldByName('Entity').AsFloat ) then
          FieldByName('ReleaseWeight').AsString := copy(TSResult[i],inxStr+2,(length(TSResult[i])-(inxStr+1)))
        else
         FieldByName('ReleaseEntity').AsString :=  copy(TSResult[i],inxStr+2,(length(TSResult[i])-(inxStr+1)));
        Post;
        GoProgressBar(IntToStr(i));
      end;
      BigMessage('À»  ‘œ.',1);
    finally
      FreeAndNil(TSResult);
      EnableControls;
      CloseMessage;
    end;
end;

procedure TReciptReleaseF.DBGrid2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  if (DBGrid2.DataSource.DataSet.State in [dsBrowse] ) then
  if (qryReciptRelease.FieldByName('_InfoWeight').AsFloat < SumGrid2.GetValueField('ReleaseWeight') ) then
        DBGrid2.Canvas.Brush.Color:=$00BBBBFF

   else
   DBGrid2.Color:=clCream;
   DBGrid2.DefaultDrawColumnCell(Rect,DataCol,Column,state);
end;

procedure TReciptReleaseF.qryReciptReleaseReleaseKindGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
   Text := DBGrid2.Columns[4].PickList[Sender.asinteger];
end;

procedure TReciptReleaseF.qryReciptReleaseReleaseKindSetText(
  Sender: TField; const Text: String);
begin
  inherited;
  Sender.AsInteger := DBGrid2.Columns[4].PickList.IndexOf(Text);
end;

end.

