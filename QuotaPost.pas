unit QuotaPost;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, Provider, DBClient, Grids, Vcl.DBGrids, ADODB, Mask, SumDBGrid,
  System.ImageList, System.Actions;

type
  TQuotaPostF = class(Ttemplate2MDIF)
    SrcQuota: TDataSource;
    qryQuota: TADOQuery;
    qryQuotaItems: TADOQuery;
    qryQuotaItemsEntity: TFloatField;
    qryQuotaItemsWeight: TFloatField;
    SrcQuotaItems: TDataSource;
    grdQuota: TDBGrid;
    cliQuota: TClientDataSet;
    DataSetProvider1: TDataSetProvider;
    mskDate: TMaskEdit;
    lbl1: TLabel;
    qryQuotaItemsc_StuffName: TStringField;
    qryQuotaItemsSUMEntity: TFloatField;
    qryQuotaItemsSUMWeight: TFloatField;
    lbl2: TLabel;
    lbl3: TLabel;
    cmbStore: TComboBox;
    cmbReciptType: TComboBox;
    btnSort: TBitBtn;
    btnSearch_: TBitBtn;
    btnSendExcel: TBitBtn;
    btnSend: TBitBtn;
    actSort: TAction;
    actSendExcel: TAction;
    actSend: TAction;
    qryinit: TADOQuery;
    qryRecipts: TADOQuery;
    qryReciptItems: TADOQuery;
    pnl1: TPanel;
    grdQuotaItems: TDBGrid;
    SumGrid1: TSumGrid;
    pnl2: TPanel;
    btnSearch_1: TBitBtn;
    btnSort1: TBitBtn;
    btnSendExcel1: TBitBtn;
    img1: TImage;
    actFilter: TAction;
    btnFilter: TBitBtn;
    qryQuotaItemsLocatorEntity: TFloatField;
    qryQuotaItemsLocatorWeight: TFloatField;
    qryQuotaItemsTotalEntity: TFloatField;
    cmbUseUnitID: TComboBox;
    lbl4: TLabel;
    cliQuotaQuotaID: TIntegerField;
    cliQuotaYearID: TIntegerField;
    cliQuotaUseOtherID: TWideStringField;
    cliQuotaAmount: TBCDField;
    cliQuotaRunDate: TStringField;
    cliQuotaCutDate: TStringField;
    cliQuotaUseOtherName: TWideStringField;
    cliQuotaHealthNumber: TStringField;
    cliQuotaUseNote: TStringField;
    cliQuotaCustID: TIntegerField;
    cliQuota_Selected: TBooleanField;
    qryQuotaItemsStuffCode: TLargeintField;
    qryQuotaItemsLocatorStuffCode: TLargeintField;
    procedure FormCreate(Sender: TObject);
    procedure cliQuotaAfterScroll(DataSet: TDataSet);
    procedure cmbStoreEnter(Sender: TObject);
    procedure AllUpDate(Sender: TObject);
    procedure qryQuotaAfterOpen(DataSet: TDataSet);
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure grdQuotaDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure grdQuotaItemsKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdQuotaDblClick(Sender: TObject);
    procedure grdQuotaItemsDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure cmbReciptTypeChange(Sender: TObject);
    procedure actSendExecute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSendExcelExecute(Sender: TObject);
    procedure btnSearch_1Click(Sender: TObject);
    procedure btnSort1Click(Sender: TObject);
    procedure btnSendExcel1Click(Sender: TObject);
    procedure grdQuotaKeyPress(Sender: TObject; var Key: Char);
    procedure actFilterExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cmbUseUnitIDEnter(Sender: TObject);
  private
    ReciptNumbers:String;
    procedure InitCombo;
    procedure UpdateFilter;
    procedure ToggleCheck;
    procedure exportRecipt;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  QuotaPostF: TQuotaPostF;

implementation

uses GlobalPro, DM, FormFunctions, mmessage, search2, sort2, search1, sort,
  filter_ADO, FilterClass_ADO, ReciptsGrid, FaraConsts;

{$R *.dfm}

procedure TQuotaPostF.FormCreate(Sender: TObject);
begin
  inherited;
  mskDate.Text:=var_glb_CurrentDate;
  InitCombo;
  Entity_Weight(grdQuotaItems);
end;

procedure TQuotaPostF.InitCombo;
begin
  cmbStore.Clear;
  cmbReciptType.Clear;
  cmbUseUnitID.Clear;
  with TADOQuery.Create(Self) do
  try
    Connection := DMf.adcBSell;
		SQL.Text:='SELECT ReciptTypes.ReciptType, ReciptTypes.ReciptCaption';
		SQL.Add  ('FROM ReciptTypes');
//		SQL.Add  (' INNER JOIN Recipts ON ReciptTypes.ReciptType = Recipts.ReciptType');
//		SQL.Add  ('WHERE (ReciptTypes.EffectType < 3)');
//		SQL.Add  ('GROUP BY ReciptTypes.ReciptType, ReciptTypes.ReciptCaption');
//		SQL.Add  ('ORDER BY ReciptTypes.ReciptType');
    Open;
    while not Eof do
    begin
      cmbReciptType.AddItem(Fields[1].AsString,TObject(Fields[0].AsInteger));
      Next;
    end;
    Close;
		SQL.Text:='SELECT DISTINCT Stores.n_StoreID, Stores.c_StoreName';
		SQL.Add  ('FROM Stores ');
//		SQL.Add  ('INNER JOIN Recipts ON Stores.n_StoreID = Recipts.StoreID');
//		SQL.Add  ('GROUP BY Stores.n_StoreID, Stores.c_StoreName');
//		SQL.Add  ('ORDER BY Stores.n_StoreID');
    Open;
    while not Eof do
    begin
      cmbStore.AddItem(Fields[1].AsString,TObject(Fields[0].AsInteger));
      Next;
    end;

    Close;
		SQL.Text:='SELECT UseUnitID, UseUnitName FROM UseUnits WHERE (UseActive = 0)';
    Open;
    while not Eof do
    begin
      cmbUseUnitID.AddItem(Fields[1].AsString,TObject(Fields[0].AsInteger));
      Next;
    end;

  finally
    Free;
    CmbReciptType.ItemIndex:=StrToInt(ReadConfig(APPID,'QuotaCmbReciptType','0'));
    cmbStore.ItemIndex:=StrToInt(ReadConfig(APPID,'QuotacmbStore','0'));
    cmbUseUnitID.ItemIndex:=StrToInt(ReadConfig(APPID,'QuotacmbUseUnitID','0'));
  end;
end;

procedure TQuotaPostF.UpdateFilter;
begin
  if (cmbStore.ItemIndex<0)or(cmbReciptType.ItemIndex<0)or(cmbUseUnitID.ItemIndex<0)then Exit;

  with qryRecipts do
  begin
    Active:=False;
    Parameters.ParamByName('ServerID').Value:=opt.ServerID;
    Parameters.ParamByName('YearID').Value:=APPBank.Year;        
  end;


  with qryQuotaItems do
  begin
    Active:=False;
    Parameters.ParamByName('ReciptDate').Value:=Trim(mskDate.Text);
    Parameters.ParamByName('StoreID').Value:=integer(cmbStore.Items.Objects[cmbStore.ItemIndex]);
    Parameters.ParamByName('ReciptDate2').Value:=Trim(mskDate.Text);
    Parameters.ParamByName('StoreID2').Value:=integer(cmbStore.Items.Objects[cmbStore.ItemIndex]);
    Parameters.ParamByName('YearID').Value:=APPBank.Year;
    Parameters.ParamByName('RunDate').Value:=Trim(mskDate.Text);
  end;
  with qryinit do
  begin
    Close;
    Parameters.ParamByName('ReciptType').Value:=integer(cmbReciptType.Items.Objects[cmbReciptType.ItemIndex]);
    Open;
  end;
  With qryQuota do
  begin
    Close;
    Parameters.ParamByName('YearID').Value:=APPBank.Year;
    Parameters.ParamByName('RunDateFrom').Value:=GetcFrom(myParams.ParamValues['RunDate'],ftDate);
    Parameters.ParamByName('RunDateTo').Value:=GetcTo(myParams.ParamValues['RunDate'],ftDate);
    Parameters.ParamByName('UseUnitID').Value:=integer(cmbUseUnitID.Items.Objects[cmbUseUnitID.ItemIndex]);
    Parameters.ParamByName('ReciptType').Value:=integer(cmbReciptType.Items.Objects[cmbReciptType.ItemIndex]);
    Parameters.ParamByName('CutDate').Value:=Trim(mskDate.Text);
    Open;
  end;
end;

procedure TQuotaPostF.cliQuotaAfterScroll(DataSet: TDataSet);
begin
  inherited;
  With qryQuotaItems do
  begin
    Close;
    Parameters.ParamByName('UseOtherID').Value:=cliQuota.Fieldbyname('UseOtherID').Value;
    Open;
  end;

end;

procedure TQuotaPostF.cmbStoreEnter(Sender: TObject);
begin
  inherited;
  cmbStore.DroppedDown:=True;
end;

procedure TQuotaPostF.AllUpDate(Sender: TObject);
begin
  inherited;
  UpdateFilter;
end;                                 

procedure TQuotaPostF.qryQuotaAfterOpen(DataSet: TDataSet);
begin
  inherited;
  With cliQuota do
  begin
    Close;
    Open;
  end;

end;

procedure TQuotaPostF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(grdQuota,2,True);
  SetColSize(grdQuotaItems,1,True);
end;

procedure TQuotaPostF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(grdQuota);
  SaveColWidth(grdQuotaItems);
  SaveConfig(APPID,'QuotaCmbReciptType',IntToStr(cmbReciptType.ItemIndex));
  SaveConfig(APPID,'QuotaCmbStore',IntToStr(cmbStore.ItemIndex));
  SaveConfig(APPID,'QuotaCmbUseUnitID',IntToStr(cmbUseUnitID.ItemIndex));
end;

procedure TQuotaPostF.grdQuotaDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  grdQuota.DefaultDrawColumnCell(Rect,DataCol,Column,state);
  if DataCol=0 then
  begin
    grdQuota.Canvas.Rectangle(Rect);
    if cliQuota_Selected.AsBoolean then
      grdQuota.Canvas.Draw(Rect.Left,Rect.Top,img1.Picture.Graphic)
    else
//      grdQuota.Canvas.Draw(Rect.Left,Rect.Top,img2.Picture.Graphic)
  end;

end;

procedure TQuotaPostF.grdQuotaItemsKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key=VK_SPACE then
  begin
    Key:=0;
    ToggleCheck;
  end;
end;

procedure TQuotaPostF.grdQuotaDblClick(Sender: TObject);
begin
  inherited;
  ToggleCheck;
end;

procedure TQuotaPostF.ToggleCheck;
begin
  with cliQuota do
  begin
    Edit;
    FieldByName('_Selected').AsBoolean:=not FieldByName('_Selected').AsBoolean;
    Post;
  end;//with
end;


procedure TQuotaPostF.grdQuotaItemsDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
   if ((Sender as TDBGrid).DataSource.DataSet.FieldByName('TotalEntity').AsFloat<
       (Sender as TDBGrid).DataSource.DataSet.FieldByName('Entity').AsFloat)
   then
        (Sender as TDBGrid).Canvas.Font.Color:=clRed
   else (Sender as TDBGrid).Canvas.Font.Color:=clWindowText;
 (Sender as TDBGrid).DefaultDrawColumnCell(Rect,DataCol,Column,state);

end;

procedure TQuotaPostF.cmbReciptTypeChange(Sender: TObject);
begin
  inherited;
  actSend.Caption:='ÇÑÓÇáþÈå '+' '+(Sender as TComboBox).Text;
end;

procedure TQuotaPostF.actSendExecute(Sender: TObject);
begin
  inherited;
  ReciptNumbers:=EmptyStr;
  try
    BigMessageProgBar('ÏÑ ÍÇá ÕÏæÑ ...',cliQuota.RecordCount+1);
    cliQuota.First;
    cliQuota.Filter:='_Selected = true';
    cliQuota.Filtered:=True;
    cliQuota.DisableControls;
    while not cliQuota.Eof do
    begin
      exportRecipt;
      cliQuota.Next;
    end;
  finally
    UpdateFilter;
    CloseMessage;
    FreeReservedCodes(DMf.adcBSell,'','',Self.Name);
    cliQuota.Filtered:=False;
    cliQuota.EnableControls;
    qryRecipts.Open;
    if ReciptNumbers<>EmptyStr then
    begin
      Warn(' ÝÑã Èå ÊÇÑíÎ '+mskDate.Text+' æ ÔãÇÑå ÝÑã '+ReciptNumbers+
           ' ËÈÊ ÔÏ.',mtInformation);
      ShowReciptTypes(qryRecipts,Self);
    end;
  end;

end;

procedure TQuotaPostF.exportRecipt;
var
  RID ,ReciptNumber: Integer;
  CanRestart:Boolean;
  Txt,FormInOut:String;
  Entity,Weight:Real;
begin
  FreeReservedCodes(DMf.adcBSell,'','',Self.Name);
  RID:=Getanewid(nil,Self.Name,'Recipts','ReciptID',nil,qryinit.FieldByName('StepCorrelate').AsInteger);
  CanRestart:=qryinit.FieldByName('RestartFormNumberOnStore').AsInteger in [0,1,4];
  Txt:='SELECT MAX(ReciptNumber)FROM Recipts WHERE(ReciptType in('+
        qryinit.FieldByName('ReciptType').AsString+',9))'+
         ' AND ( YearID = '+IntToStr(APPBank.Year)+') AND '+
                     ' ServerID = '+IntToStr(opt.ServerID);
  if CanRestart then Txt:=Txt+' AND(StoreID='+
     IntToStr(integer(cmbStore.Items.Objects[cmbStore.ItemIndex]))+')';
  ReciptNumber:= GetANewCode(Self.Name,Txt,'ReciptNumber');
  With qryRecipts do
  begin
    Close;
    Open;
    Insert;
    FieldByName('ReciptID').AsInteger:=RID;
    FieldByName('StoreID').AsInteger:=integer(cmbStore.Items.Objects[cmbStore.ItemIndex]);
    FieldByName('UseUnitID').AsInteger:=integer(cmbUseUnitID.Items.Objects[cmbUseUnitID.ItemIndex]);
    FieldByName('ReciptNumber').AsInteger:=ReciptNumber;
    FieldByName('ReciptDate').AsString:=Trim(mskDate.Text);
    FieldByName('PersonID1').AsInteger:=0;
    FieldByName('PersonID2').AsInteger:=0;
    FieldByName('ReciptType').AsInteger:=integer(cmbReciptType.Items.Objects[cmbReciptType.ItemIndex]);
    FieldByName('OperatorID').AsInteger:=User.id;
    FieldByName('ModifyDate').AsDateTime:=Now;
    FieldByName('FirstUser').AsString:=User.name;
    FieldByName('ServerID').AsInteger:=opt.ServerID;
    FieldByName('YearID').AsInteger:=APPBank.Year;
    FieldByName('UseOtherID').AsString:=cliQuota.FieldByName('UseOtherID').AsString;
    FieldByName('SecondType').AsInteger:=394;
    FieldByName('ReciptNote').AsString:=cliQuota.FieldByName('UseNote').AsString;
    FieldByName('PersonID3').AsInteger:=cliQuota.FieldByName('CustID').AsInteger;

    Post;
  end;
  FormInOut:='Input';
  if qryinit.FieldByName('EffectType').AsInteger in[3,4,5,7]
  then FormInOut:='Output';

  qryQuotaItems.First;
  With qryReciptItems do
  begin
    Close;
    Open;
    while (RID>0)and(not qryQuotaItems.Eof) do
    begin                                                                     //

      if (qryQuotaItems.FieldByName('Entity').AsFloat<=qryQuotaItems.FieldByName('TotalEntity').AsFloat)
//      and(qryQuotaItems.FieldByName('Weight').AsFloat<=qryQuotaItems.FieldByName('SumWeight').AsFloat)
      then
      begin
        if (qryQuotaItems.FieldByName('Entity').AsFloat<=qryQuotaItems.FieldByName('SumEntity').AsFloat) then
        begin
          Insert;
          FieldByName('ReciptItemID').AsInteger:=Getanewid(nil,Self.Name,'ReciptItems','ReciptItemID',nil,qryinit.FieldByName('StepCorrelate').AsInteger);;
          FieldByName('ReciptID').AsInteger:=RID;
          FieldByName('FirstUser').AsString:=User.name;
          FieldByName('ServerID').AsInteger:=opt.ServerID;
          FieldByName('YearID').AsInteger:=APPBank.Year;
          FieldByName('StuffCode').AsLargeInt:=qryQuotaItems.FieldByName('StuffCode').AsLargeInt;
          FieldByName(FormInOut+'Entity').AsFloat:=qryQuotaItems.FieldByName('Entity').AsFloat;
          FieldByName(FormInOut+'Weight').AsFloat:=qryQuotaItems.FieldByName('Weight').AsFloat;
          GoProgressBar(qryQuotaItems.FieldByName('c_StuffName').AsString);
          Post;
        end
        else
        begin
          if qryQuotaItems.FieldByName('SumEntity').AsFloat>0 then
          begin
            Insert;
            FieldByName('ReciptItemID').AsInteger:=Getanewid(nil,Self.Name,'ReciptItems','ReciptItemID',nil,qryinit.FieldByName('StepCorrelate').AsInteger);
            FieldByName('ReciptID').AsInteger:=RID;
            FieldByName('FirstUser').AsString:=User.name;
            FieldByName('ServerID').AsInteger:=opt.ServerID;
            FieldByName('YearID').AsInteger:=APPBank.Year;
            FieldByName('StuffCode').AsLargeInt:=qryQuotaItems.FieldByName('StuffCode').AsLargeInt;
            FieldByName(FormInOut+'Entity').AsFloat:=qryQuotaItems.FieldByName('SumEntity').AsFloat;
            FieldByName(FormInOut+'Weight').AsFloat:=qryQuotaItems.FieldByName('SumWeight').AsFloat;
            GoProgressBar(qryQuotaItems.FieldByName('c_StuffName').AsString);
            Post;
            Entity:=qryQuotaItems.FieldByName('SumEntity').AsFloat;
            Weight:=qryQuotaItems.FieldByName('SumWeight').AsFloat;
          end
          else
          begin
            Entity:=0;
            Weight:=0;
          end;
          Insert;
          FieldByName('ReciptItemID').AsInteger:=Getanewid(nil,Self.Name,'ReciptItems','ReciptItemID',nil,qryinit.FieldByName('StepCorrelate').AsInteger);
          FieldByName('ReciptID').AsInteger:=RID;
          FieldByName('FirstUser').AsString:=User.name;
          FieldByName('ServerID').AsInteger:=opt.ServerID;
          FieldByName('YearID').AsInteger:=APPBank.Year;
          FieldByName('StuffCode').AsLargeInt:=qryQuotaItems.FieldByName('LocatorStuffCode').AsInteger;
          FieldByName(FormInOut+'Entity').AsFloat:=qryQuotaItems.FieldByName('Entity').AsFloat-
                                                   Entity;
          FieldByName(FormInOut+'Weight').AsFloat:=qryQuotaItems.FieldByName('Weight').AsFloat-
                                                   Weight;
          GoProgressBar(qryQuotaItems.FieldByName('LocatorStuffCode').AsString);
          Post;
        end;
      end
      else
      if get_response('ãæÌæÏí '+#13+qryQuotaItems.FieldByName('c_StuffName').AsString+#13
                     +' ÕÝÑ ÇÓÊ ÂíÇ ÈÇ ãæÌæÏí ÕÝÑ ËÈÊ ÔæÏ¿')= mrYes
      then
      begin
          Insert;
          FieldByName('ReciptItemID').AsInteger:=Getanewid(nil,Self.Name,'ReciptItems','ReciptItemID',nil,qryinit.FieldByName('StepCorrelate').AsInteger);;
          FieldByName('ReciptID').AsInteger:=RID;
          FieldByName('FirstUser').AsString:=User.name;
          FieldByName('ServerID').AsInteger:=opt.ServerID;
          FieldByName('YearID').AsInteger:=APPBank.Year;
          FieldByName('StuffCode').AsLargeInt:=qryQuotaItems.FieldByName('StuffCode').AsLargeInt;
          FieldByName(FormInOut+'Entity').AsFloat:=0;
          FieldByName(FormInOut+'Weight').AsFloat:=0;
          FieldByName('ItemNote').AsString:='ãæÌæÏ äíÓÊ.þ';
          GoProgressBar(qryQuotaItems.FieldByName('StuffCode').AsString);
          Post;
      end
      else
      begin
        RID:=0;
        qryQuotaItems.Last;
      end;

      qryQuotaItems.Next;
    end;

    if RID>0 then
    begin
      ReciptNumbers:=ReciptNumbers+' '+IntToStr(ReciptNumber)+' ';
      qryRecipts.UpdateBatch();
      qryReciptItems.UpdateBatch();
      qryRecipts.Close;
      qryReciptItems.Close;
      qryRecipts.Parameters.ParamByName('ReciptID').Value:=RID;
    end;

    Close;
  end
end;

procedure TQuotaPostF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryQuotaItems);
end;

procedure TQuotaPostF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryQuotaItems);
end;

procedure TQuotaPostF.actSendExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(grdQuotaItems)
end;

procedure TQuotaPostF.btnSearch_1Click(Sender: TObject);
begin
  inherited;
  searchF.ShowSearch(cliQuota);
end;

procedure TQuotaPostF.btnSort1Click(Sender: TObject);
begin
  inherited;
  sortF.ShowSort(cliQuota);
end;

procedure TQuotaPostF.btnSendExcel1Click(Sender: TObject);
begin
  inherited;
  SendToExcel(grdQuota);
end;

procedure TQuotaPostF.grdQuotaKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  QuickSearch(Key,cliQuotaHealthNumber);
end;

procedure TQuotaPostF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self,myParams) do
  begin
   try
      AddItem(DMf.adcBSell,'RunDate','ÊÇÑíÎ ÇÌÑÇ','ÊÇÑíÎ',ftDate,
        dvMinMax,'','',ciSimple,'',
        'Select Min(RunDate),max(RunDate) from Quota');
    if ShowModal=mrOk then
    begin
      GetFilterString;
      UpdateFilter;
    end;//if
   finally
     Free;
   end;//try
  end;//with
end;

procedure TQuotaPostF.FormShow(Sender: TObject);
begin
  inherited;
   actFilter.Execute;
   if myParams.FindParam('RunDate')=nil then close;
end;

procedure TQuotaPostF.cmbUseUnitIDEnter(Sender: TObject);
begin
  inherited;
  cmbUseUnitID.DroppedDown:=True
end;

end.
