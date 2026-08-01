// mahmood
unit RecallSpecialRecipts;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template5, StdCtrls, CheckLst, DBActns, ActnList, Buttons,
  ExtCtrls, DB, ADODB, Grids, DBGrids, ComCtrls, DBClient, Provider,
  ppBands, ppCtrls, ppPrnabl, ppClass, ppDB, ppCache, ppDBPipe, ppComm,
  ppRelatv, ppProd, ppReport, DBCtrls, Menus;

type
  TRecallSpecialReciptsF = class(TTemplate5F)
    qrySpecialRecall: TADOQuery;
    srcSpecialRecall: TDataSource;
    BitBtn1: TBitBtn;
    Image2: TImage;
    Image3: TImage;
    StatusBar1: TStatusBar;
    DataSetProvider1: TDataSetProvider;
    cliSpecialRecall: TClientDataSet;
    cliSpecialRecall_checked: TBooleanField;
    actSearch: TAction;
    actSort: TAction;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    StatusBar2: TStatusBar;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    actPrint: TAction;
    actExcel: TAction;
    ppReport1: TppReport;
    ppDBPipeline1: TppDBPipeline;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLine1: TppLine;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLine2: TppLine;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBCalc1: TppDBCalc;
    ppSummaryBand1: TppSummaryBand;
    ppLine3: TppLine;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    actSelectAll: TAction;
    Panel2: TPanel;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    lblSumChecks: TLabel;
    actSlelectInverse: TAction;
    DBGrid1: TDBGrid;
    qryInsert: TADOQuery;
    cliSpecialRecallReciptItemID: TIntegerField;
    cliSpecialRecallStoreID: TSmallintField;
    cliSpecialRecallc_StoreName: TStringField;
    cliSpecialRecallStuffCode: TIntegerField;
    cliSpecialRecallc_StuffName: TStringField;
    cliSpecialRecallUnitName: TStringField;
    cliSpecialRecallStuffSize: TStringField;
    cliSpecialRecallStuffAlloy: TStringField;
    cliSpecialRecallStuffGrade: TSmallintField;
    cliSpecialRecallEntity: TFloatField;
    cliSpecialRecallWeight: TFloatField;
    cliSpecialRecallPrice: TBCDField;
    cliSpecialRecallPersonID1: TIntegerField;
    cliSpecialRecallCustName: TStringField;
    cliSpecialRecallReciptNumber: TIntegerField;
    cliSpecialRecallReciptDate: TStringField;
    cliSpecialRecallReciptCaption: TStringField;
    Panel3: TPanel;
    LblStore: TLabel;
    DBTextStoreID: TDBText;
    DBText2: TDBText;
    Label2: TLabel;
    chkPrice: TCheckBox;
    cliSpecialRecallStuffDiameter: TFloatField;
    PopMnuForm: TPopupMenu;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    N9: TMenuItem;
    N4: TMenuItem;
    N6: TMenuItem;
    N8: TMenuItem;
    Exel1: TMenuItem;
    N3: TMenuItem;
    N1: TMenuItem;
    cliSpecialRecallControlCode: TLargeintField;
    ADOQuery1: TADOQuery;
    qrySpecialRecallControlCode: TLargeintField;
    qrySpecialRecallStuffCode: TIntegerField;
    qrySpecialRecallStuffDiameter: TFloatField;
    qrySpecialRecallStuffSize: TStringField;
    qrySpecialRecallStoreID: TSmallintField;
    qrySpecialRecallReciptItemID: TIntegerField;
    qrySpecialRecallc_StoreName: TStringField;
    qrySpecialRecallc_StuffName: TStringField;
    qrySpecialRecallUnitName: TStringField;
    qrySpecialRecallStuffAlloy: TStringField;
    qrySpecialRecallStuffGrade: TSmallintField;
    qrySpecialRecallEntity: TFloatField;
    qrySpecialRecallWeight: TFloatField;
    qrySpecialRecallPrice: TBCDField;
    qrySpecialRecallPersonID1: TIntegerField;
    qrySpecialRecallCustName: TStringField;
    qrySpecialRecallReciptNumber: TIntegerField;
    qrySpecialRecallReciptDate: TStringField;
    qrySpecialRecallReciptCaption: TStringField;
    actRptCardex: TAction;
    BitBtn8: TBitBtn;
    actFilter: TAction;
    procedure FormResize(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure qrySpecialRecallAfterOpen(DataSet: TDataSet);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure actSearchExecute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actExcelExecute(Sender: TObject);
    procedure ppLabel3GetText(Sender: TObject; var Text: String);
    procedure ppLabel1GetText(Sender: TObject; var Text: String);
    procedure actPrintExecute(Sender: TObject);
    procedure actSelectAllExecute(Sender: TObject);
    procedure actSlelectInverseExecute(Sender: TObject);
    procedure cliSpecialRecallStoreIDChange(Sender: TField);
    procedure FormShow(Sender: TObject);
    procedure actRptCardexExecute(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
  private
    cliSum: TClientDataSet;
    sumChecked, sumUnchecked: Currency;
    countChecked, countUnchecked: Integer;
    procedure ToggleCheck(CalculateSummary: boolean=True);
    procedure CalculateSumChecks;
    procedure UpdateList;
    { Private declarations }
  public
    function SelectRecall(SqlFilter,UseStoreIDOnRecall:String;formType,ReciptID:Integer;FormOutput:Boolean):Boolean;
    { Public declarations }
  end;

var
  RecallSpecialReciptsF: TRecallSpecialReciptsF;

implementation

uses StrUtils, DM, GlobalPro, search, sort, Recipts, search2, sort2,
  RptCardex, filter_ADO, FilterClass_ADO;

{$R *.dfm}
function TRecallSpecialReciptsF.SelectRecall(SqlFilter,UseStoreIDOnRecall:String;formType,ReciptID:Integer;FormOutput:Boolean):Boolean;
var
   ID:Integer;
   Sql_In_Out:String;
begin
  RecallSpecialReciptsF:=TRecallSpecialReciptsF.Create(Application);
  try
    with RecallSpecialReciptsF do begin
      with qrySpecialRecall Do begin
        Active:=False;
        SQL.Add(SqlFilter);
        if UseStoreIDOnRecall<>'' then
           SQL.Text:='SELECT * FROM ('+SQL.Text+UseStoreIDOnRecall;
//        SQL.Add(' ORDER BY dbo.ReciptItems.StuffCode,dbo.ReciptItems.StuffDiameter,dbo.ReciptItems.StuffSize');
           SQL.SaveToFile('c:\sql.txt');
        myParams.Clear;
        actFilter.Execute;
        if myParams.FindParam('Stuffcode')=nil then Close;
        Entity_Weight(DBGrid1);
//        Active:=True;
      end;//with
      if ShowModal=mrOk then begin
        with cliSpecialRecall do begin
          Filter:='_checked=True' ;
          Filtered:=True;
          DisableControls ;
          first ;
          ID:=GetANewCode('ReciptItems','ReciptItemID',DMf.adcBSell);
          Sql_In_Out:=IfThen(FormOutput,'0,0,0,AvailableEntity.Entity,AvailableEntity.Weight,AvailableEntity.Price','AvailableEntity.Entity,AvailableEntity.Weight,AvailableEntity.Price,0,0,0');
          Sql_In_Out:=LowerCase(Sql_In_Out);
          If not chkPrice.Checked  Then Sql_In_Out:=StringReplace(Sql_In_Out,'availableentity.price','0',[rfReplaceAll]);
          while not eof do begin
            qryInsert.SQL.Text:='INSERT INTO ReciptItems '+
              '( ReciptItemID, ReciptID, StuffCode, ControlCode, StuffSize, StuffDiameter, StuffAlloy, StuffGrade, RequestedEntity,RequestedWeight, '+
              'InputEntity, InputWeight, TotalInputPrice, OutputEntity, OutputWeight, TotalOutputPrice, UnitSellPrice, '+
              'TotallSellPrice, ItemNote, preReciptItemID, acc_TopicCode,acc_DetailCode, acc_CTopicCode, UseUnitID,PersonID1) '+
              'SELECT    '+IntToStr(ID) +','+IntToStr(ReciptID)+', ReciptItems.StuffCode, ReciptItems.ControlCode, ReciptItems.StuffSize, '+
              'ReciptItems.StuffDiameter, ReciptItems.StuffAlloy, ReciptItems.StuffGrade,ReciptItems. RequestedEntity,ReciptItems.RequestedWeight, '+
              Sql_In_Out+',UnitSellPrice,0, ItemNote, '+FieldByName('ReciptItemID').AsString+', acc_TopicCode,0,0 ,0,ReciptItems.PersonID1  '+
              'FROM         ReciptItems INNER JOIN '+
              'Recipts ON ReciptItems.ReciptID = Recipts.ReciptID INNER JOIN '+
              'StuffCoding ON ReciptItems.StuffCode = StuffCoding.c_StuffCode INNER JOIN '+
              'AvailableEntity ON ReciptItems.ReciptItemID = AvailableEntity.ReciptItemID INNER JOIN '+
              'ReciptTypes ON Recipts.ReciptType = ReciptTypes.ReciptType INNER JOIN '+
              'Units ON StuffCoding.n_UnitCode = Units.UnitCode LEFT OUTER JOIN '+
              'Customers ON Recipts.PersonID1 = Customers.CustID LEFT OUTER JOIN '+
              'Stores ON Recipts.StoreID = Stores.n_StoreID '+
              'WHERE (ReciptItems.ReciptItemID = '+FieldByName('ReciptItemID').AsString+') ';
//              (AvailableEntity.Entity > 0) AND (ReciptItems.ReciptItemID = '+FieldByName('ReciptItemID').AsString+') OR '+
//              '(AvailableEntity.Weight > 0) AND (ReciptItems.ReciptItemID = '+FieldByName('ReciptItemID').AsString+') ';
            qryInsert.SQL.SaveToFile('c:\sql.txt');
            qryInsert.ExecSQL ;
            inc(ID);
            Next ;
          end ;//while
        end;// cliSpecialRecall
      end;//if
    end;//with
        Result:=true;
  finally
    RecallSpecialReciptsF.Free;
    FreeReservedCodes(DMf.adcBSell);
  end;//try
end;

procedure TRecallSpecialReciptsF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1,1);
end;

procedure TRecallSpecialReciptsF.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,state);
  if DataCol=0 then begin
    DBGrid1.Canvas.Rectangle(Rect);
    if cliSpecialRecall_checked.AsBoolean then
      DBGrid1.Canvas.Draw(Rect.Left,Rect.Top,Image3.Picture.Graphic)
    else
      DBGrid1.Canvas.Draw(Rect.Left,Rect.Top,Image2.Picture.Graphic)
  end;//if
end;

procedure TRecallSpecialReciptsF.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key=VK_SPACE then begin
    Key:=0;
    ToggleCheck;
  end;//if
end;

procedure TRecallSpecialReciptsF.qrySpecialRecallAfterOpen(DataSet: TDataSet);
begin
  inherited;
  cliSpecialRecall.Active:=False;
  cliSpecialRecall.Active:=True;
end;

procedure TRecallSpecialReciptsF.DBGrid1CellClick(Column: TColumn);
begin
  inherited;
//  if Column.Index=0 then ToggleCheck;
end;

procedure TRecallSpecialReciptsF.ToggleCheck(CalculateSummary: boolean=True);
begin
  with cliSpecialRecall do begin
    Edit;
    FieldByName('_Checked').AsBoolean:=not FieldByName('_Checked').AsBoolean;
    Post;
  end;//with
  if CalculateSummary then CalculateSumChecks;
end;

procedure TRecallSpecialReciptsF.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  ToggleCheck;
end;

procedure TRecallSpecialReciptsF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
var
  c: Cardinal;
begin
  inherited;
  if cliSpecialRecall.State=dsBrowse then begin
      c:=getKeyboardNumber(key);
      if c>0 then begin cliSpecialRecall.Locate(opt.SearchCode,c,[loPartialKey]);
         key:=#0;
         exit;
      end else Perform(WM_NEXTDLGCTL,0,0);
     end;//if
end;

procedure TRecallSpecialReciptsF.actSearchExecute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(cliSpecialRecall);
end;

procedure TRecallSpecialReciptsF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qrySpecialRecall);
  cliSpecialRecall.Refresh;
end;

procedure TRecallSpecialReciptsF.FormCreate(Sender: TObject);
begin
  inherited;
  cliSum:=TClientDataSet.Create(Self);
end;

procedure TRecallSpecialReciptsF.FormDestroy(Sender: TObject);
begin
  inherited;
  cliSum.Free;
  SaveColWidth(DBGrid1);
end;

procedure TRecallSpecialReciptsF.CalculateSumChecks;
begin
  with cliSum do begin
    CloneCursor(cliSpecialRecall,True);
    First;
    sumChecked:=0;
    sumUnchecked:=0;
    countChecked:=0;
    countUnchecked:=0;
    while not Eof do begin
      if FieldByName('_checked').AsBoolean then begin
        Inc(countChecked);
        sumChecked:=sumChecked + fieldbyname('Price').AsCurrency;
      end else begin
        Inc(countUnChecked);
        sumUnChecked:=sumUnChecked + fieldbyname('Price').AsCurrency;
      end;//else
      Next;
    end;//while
    Close;
  end;//with
  StatusBar1.Panels[1].Text:=' ⁄œ«œ ›—„ùÂ«Ì «‰ Œ«» ‘œÂ = ' + IntToStr(countChecked);
  StatusBar1.Panels[0].Text:='Ã„⁄ „»·€ ›—„ùÂ«Ì «‰ Œ«» ‘œÂ = '+ CurrToStrF(sumChecked,ffCurrency,0);
  StatusBar2.Panels[1].Text:=' ⁄œ«œ ›—„ùÂ«Ì »«ﬁÌ„«‰œÂ     = ' + IntToStr(countUnChecked);
  StatusBar2.Panels[0].Text:='Ã„⁄ „»·€ ›—„ùÂ«Ì »«ﬁÌ„«‰œÂ     = '+ CurrToStrF(sumUnChecked,ffCurrency,0);
  lblSumChecks.Caption:=num2alphabet(round(sumChecked));
end;

procedure TRecallSpecialReciptsF.actExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(cliSpecialRecall);
end;

procedure TRecallSpecialReciptsF.ppLabel3GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  text:=GetPrintDate;
end;

procedure TRecallSpecialReciptsF.ppLabel1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text:=APPBank.CompanyName;
end;

procedure TRecallSpecialReciptsF.actPrintExecute(Sender: TObject);
begin
  inherited;
  cliSpecialRecall.DisableControls;
  try
    InitReportFile(RecallSpecialReciptsF,ppReport1,'RecallSpecialRecipts');
  finally
    cliSpecialRecall.EnableControls;
  end;//try
end;

procedure TRecallSpecialReciptsF.actSelectAllExecute(Sender: TObject);
begin
  inherited;
  with cliSpecialRecall do begin
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
  CalculateSumChecks;
end;

procedure TRecallSpecialReciptsF.actSlelectInverseExecute(Sender: TObject);
begin
  inherited;
  with cliSpecialRecall do begin
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
  CalculateSumChecks;
end;

procedure TRecallSpecialReciptsF.cliSpecialRecallStoreIDChange(
  Sender: TField);
begin
  inherited;
  PriceOnStoreType(cliSpecialRecall.FieldByName('StoreID').AsInteger,DBGrid1)
end;

procedure TRecallSpecialReciptsF.FormShow(Sender: TObject);
begin
  inherited;
//  myParams.Clear;
//  actFilter.Execute;
//  if myParams.FindParam('Stuffcode')=nil then Close;
  Entity_Weight(DBGrid1);
end;

procedure TRecallSpecialReciptsF.actRptCardexExecute(Sender: TObject);
begin
  inherited;
  MyParams.CreateParam(ftInteger,'store',ptInput).AsString:=cliSpecialRecall.Fieldbyname('StoreID').AsString;
  MyParams.CreateParam(ftDate,'Date',ptInput).AsString:=cliSpecialRecall.Fieldbyname('ReciptDate').AsString;
  MyParams.CreateParam(ftInteger,'StuffCode',ptInput).AsString:=
    cliSpecialRecall.Fieldbyname('StuffCode').AsString+';'+cliSpecialRecall.Fieldbyname('StuffCode').AsString;
  CreateMDIForm2(TRptCardexF,RptCardexF,Self,100);
  RptCardexF.qryStuffs.Locate('StuffCode',cliSpecialRecall.FieldByName('StuffCode').Value,[])

end;

procedure TRecallSpecialReciptsF.actFilterExecute(Sender: TObject);
begin
  inherited;
 with TfilterF.Create2(Self,myParams) do begin
   try
      AddItem(DMf.adcBSell,'ControlCode','—«Â‰„«',' —«Â‰„«',ftInteger,dvMinMax,'','',ciSimple,'','Select Min(ControlCode),max(ControlCode) from ReciptItems');
      if opt.AidInfoAvailable then
         AddItem(DMf.adcBSell,'StuffDiameter','÷Œ«„ ','÷Œ«„ ',ftFloat,dvMinMax,'','',ciSimple,'','Select Min(StuffDiameter),max(StuffDiameter) from ReciptItems');
      AddItem(DMf.adcBSell,'StuffCode','ﬂ«·«','ﬂ«·«',ftInteger,dvMinMax,'','',ciLookup,'SELECT c_StuffCode, c_StuffName FROM  StuffCoding WHERE c_StuffName LIKE :c','Select Min(StuffCode),max(StuffCode) from ReciptItems');
      AddItem(DMf.adcBSell,'Storid','«‰»«— ','«‰»«—',ftInteger,dvMinMax,'','',ciLookup,'SELECT n_StoreID, c_StoreName FROM Stores WHERE c_StoreName LIKE :c','Select Min( StoreID),max( StoreID) from Recipts');
    if ShowModal=mrOk then begin
      GetFilterString;
      UpdateList;
    end;//if
   finally
     Free;
   end;//try
  end;//with

end;

procedure TRecallSpecialReciptsF.UpdateList;
begin
  with qrySpecialRecall do begin
    Active:=False;
    Parameters.ParamByName('StoreIDFrom').Value:=GetcFrom(myParams.ParamValues['Storid'],ftInteger);
    Parameters.ParamByName('StoreIDTo').Value:=GetcTo(myParams.ParamValues['Storid'],ftInteger);
    Parameters.ParamByName('StuffCodeFrom').Value:=GetcFrom(myParams.ParamValues['StuffCode'],ftInteger);
    Parameters.ParamByName('StuffCodeTo').Value:=GetcTo(myParams.ParamValues['StuffCode'],ftInteger);
    if opt.AidInfoAvailable then begin
      Parameters.ParamByName('DiameterFrom').Value:=GetcFrom(myParams.ParamValues['StuffDiameter'],ftFloat);
      Parameters.ParamByName('Diameterto').Value:=GetcTo(myParams.ParamValues['StuffDiameter'],ftFloat);
    end
    else begin
      Parameters.ParamByName('DiameterFrom').Value:=0;
      Parameters.ParamByName('Diameterto').Value:=999999999;
    end;
    Parameters.ParamByName('ControlCodeFrom').Value:=GetcFrom(myParams.ParamValues['ControlCode'],ftInteger);
    Parameters.ParamByName('ControlCodeTo').Value:=GetcTo(myParams.ParamValues['ControlCode'],ftInteger);


    Active:=True;
  end;//with
end;


end.

//
//                      FROM         dbo.Units INNER JOIN
//                      dbo.StuffCoding ON dbo.Units.UnitCode = dbo.StuffCoding.n_UnitCode INNER JOIN
//                      dbo.ReciptItems INNER JOIN
//                      dbo.Recipts ON dbo.ReciptItems.ReciptID = dbo.Recipts.ReciptID INNER JOIN
//                      dbo.ReciptTypes ON dbo.Recipts.ReciptType = dbo.ReciptTypes.ReciptType INNER JOIN
//                      dbo.Customers ON dbo.Recipts.PersonID1 = dbo.Customers.CustID INNER JOIN
//                      dbo.Stores ON dbo.Recipts.StoreID = dbo.Stores.n_StoreID ON dbo.StuffCoding.c_StuffCode = dbo.ReciptItems.StuffCode LEFT OUTER JOIN
//                      dbo.RecallSpecial ON dbo.ReciptItems.ReciptItemID = dbo.RecallSpecial.preReciptItemID

