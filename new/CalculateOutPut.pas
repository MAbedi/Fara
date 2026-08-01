unit CalculateOutPut;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, Grids, DBGrids, ComCtrls, DBCtrls, Mask, DB, ADODB, ppCtrls,
  ppPrnabl, ppClass, ppBands, ppCache, ppComm, ppRelatv, ppProd, ppReport,
  ppDB, ppDBPipe, ppVar, Menus, stringGridFara, DateUtils;




type
  TCalculateOutPutF = class(Ttemplate2MDIF)
    DBGrid1: TDBGrid;
    Label1: TLabel;
    SrcCalSpecialOutPut: TDataSource;
    qryCalSpecialOutPut: TADOQuery;
    qryCalSpecialOutPutStuffCode: TIntegerField;
    qryCalSpecialOutPutc_StuffName: TStringField;
    actFilter: TAction;
    BitBtn2: TBitBtn;
    BitBtn7: TBitBtn;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLblCompanyName: TppLabel;
    ppLabel2: TppLabel;
    ppLine1: TppLine;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLblPrintDate: TppLabel;
    actPrint: TAction;
    ppLabel12: TppLabel;
    ppDBPipeline1: TppDBPipeline;
    ppDBPipeline2: TppDBPipeline;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppLabel15: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    BitBtn6: TBitBtn;
    BitBtn1: TBitBtn;
    actsendtoexel: TAction;
    BitBtn3: TBitBtn;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppLine24: TppLine;
    ppLine25: TppLine;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppLine26: TppLine;
    ppLine27: TppLine;
    ppLine28: TppLine;
    ppLine29: TppLine;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppLine33: TppLine;
    ppLine34: TppLine;
    ppLine21: TppLine;
    ppShape2: TppShape;
    ppShape1: TppShape;
    ppShape3: TppShape;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel16: TppLabel;
    actSort: TAction;
    StatusBar1: TStatusBar;
    qrySpecialInputItems: TADOQuery;
    qryCalSpecialOutPutReciptItemID: TIntegerField;
    qryCalSpecialOutPutReciptCaption: TStringField;
    qryCalSpecialOutPutStuffSize: TStringField;
    qryCalSpecialOutPutStuffDiameter: TFloatField;
    qryCalSpecialOutPutStuffAlloy: TStringField;
    qryCalSpecialOutPutOutputEntity: TFloatField;
    qryCalSpecialOutPutOutputWeight: TFloatField;
    qryCalSpecialOutPutTotalOutputPrice: TBCDField;
    qryCalSpecialOutPutUnitSellPrice: TFMTBCDField;
    qryCalSpecialOutPutpreReciptItemID: TIntegerField;
    qryCalSpecialOutPutReciptNumber: TIntegerField;
    qryCalSpecialOutPutReciptDate: TStringField;
    BitBtn4: TBitBtn;
    actCalcVijeh: TAction;
    qrySpecialInputItemsReciptItemID: TIntegerField;
    qrySpecialInputItemsInputEntity: TFloatField;
    qrySpecialInputItemsInputWeight: TFloatField;
    qrySpecialInputItemsTotalInputPrice: TBCDField;
    qrySpecialInputItemspreReciptItemID: TIntegerField;
    actAllCalculate: TAction;
    actCalcAverage: TAction;
    actCalcFiFo: TAction;
    qryStores: TADOQuery;
    qryStoresn_StoreID: TSmallintField;
    qryStoresc_StoreName: TStringField;
    qryStoresn_ValuationType: TSmallintField;
    DBGrid2: TDBGrid;
    SrcStores: TDataSource;
    qryKol: TADOQuery;
    qryOut: TADOQuery;
    qryIN: TADOQuery;
    qryINReciptDate: TStringField;
    qryINc_StuffCode: TIntegerField;
    qryINInputWeight: TFloatField;
    qryINTotalInputPrice: TBCDField;
    qryINInputEntity: TFloatField;
    qryOutReciptItemID: TIntegerField;
    qryOutReciptDate: TStringField;
    qryOutc_StuffCode: TIntegerField;
    qryOutOutputEntity: TFloatField;
    qryOutOutputWeight: TFloatField;
    qryAverage: TADOQuery;
    DataSource1: TDataSource;
    qryAverageModel: TADOQuery;
    qryAverageModelUseUnits: TADOQuery;
    ProgressBar1: TProgressBar;
    ADOQuery1: TADOQuery;
    srckol: TDataSource;
    pnlLblLimitPlace: TPanel;
    LblShowLimitPlace1: TLabel;
    qryAvrageFirstEntity: TADOQuery;
    pnlReciptsRegulates: TPanel;
    grd1: TDBGrid;
    qryCalcControls: TADOQuery;
    SrcCalcControls: TDataSource;
    qryCalcControlsReciptID: TIntegerField;
    qryCalcControlsStoreID: TSmallintField;
    qryCalcControlsReciptNumber: TIntegerField;
    qryCalcControlsReciptDate: TStringField;
    qryCalcControlsReciptCaption: TStringField;
    qryCalcControlsReciptType: TWordField;
    qryCalcControlsDocNo: TIntegerField;
    qryCalcControlsDocDate: TStringField;
    qryCalcControlsKind: TStringField;
    qryCalcControlsAutoPrice: TWordField;
    lbl1: TLabel;
    lblDate: TLabel;
    mskDate: TMaskEdit;
    qryReciptsRegulates: TADOQuery;
    qryOutReciptID: TIntegerField;
    qryOutServerID: TIntegerField;
    qryOutYearID: TIntegerField;
    Button1: TButton;
    btn1: TButton;
    btn2: TButton;
    procedure actFilterExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ppLabel11GetText(Sender: TObject; var Text: String);
    procedure ppLblPrintDateGetText(Sender: TObject; var Text: String);
    procedure ppSystemVariable1GetText(Sender: TObject; var Text: String);
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actsendtoexelExecute(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure ppLabel16GetText(Sender: TObject; var Text: String);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure qryCalSpecialOutPutAfterOpen(DataSet: TDataSet);
    procedure actCalcVijehExecute(Sender: TObject);
    procedure actAllCalculateExecute(Sender: TObject);
    procedure qryStoresAfterScroll(DataSet: TDataSet);
    procedure actCalcFiFoExecute(Sender: TObject);
    procedure qryStoresn_ValuationTypeGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
//    procedure btn1Click(Sender: TObject);
//    procedure btn2Click(Sender: TObject);
//    procedure btn3Click(Sender: TObject);
//    procedure btn4Click(Sender: TObject);
  private
    { Private declarations }
    SQLAvrageFirstEntity:String;
    CalcReciptsRegulatesActive:Boolean;
    strFaraGridFara1:TstringGridFara;
//    flag:Integer;
    procedure UpdateFilter;
    procedure CalculateIt(StuffCode: Integer);
    procedure PostPrice(savePrice: Currency;qry:TADOQuery);
    procedure CalcAllAverage(AverageKind:Byte;
              DateFrom,DateTo:String ;StuffCodeFrom ,StuffCodeTo:Integer;aStoreIDFrom ,aStoreIDTo,aStoreID:Byte ; aFlag : Integer);
    procedure ReciptsRegulatesPost(p_price,TotalPrice:Currency;qry:TADOQuery);



//    function  CalcSumFileds(FiledName: String): Currency;
  public
    { Public declarations }
  end;

var
  CalculateOutPutF: TCalculateOutPutF;

implementation

uses DM, filter_ADO, FilterClass_ADO, GlobalPro, searchCode_ADO,  search2, sort2,
  mmessage, Math, main, shamsiDate;

{$R *.dfm}

procedure TCalculateOutPutF.UpdateFilter;
begin
  with qryAvrageFirstEntity do
  begin
    Active:=False;
    Parameters.ParamByName('YearID').Value:=APPBank.Year;
  end;//with

  with qryCalSpecialOutPut do
  begin
    Active:=False;
    Parameters.ParamByName('DateFrom').Value:=GetcFrom(myParams.ParamValues['ReciptDate'],ftDate);
    Parameters.ParamByName('DateTo').Value:=GetcTo(myParams.ParamValues['ReciptDate'],ftDate);
    Parameters.ParamByName('StuffCodeFrom').Value:=GetcFrom(myParams.ParamValues['StuffCode'],ftInteger);
    Parameters.ParamByName('StuffCodeTo').Value:=GetcTo(myParams.ParamValues['StuffCode'],ftInteger);
    LblShowLimitPlace1.Caption:='   «  «—ÌŒ '+ Parameters.ParamByName('DateFrom').Value;//+'  « '+ Parameters.ParamByName('DateTo').Value ;
  end;//with
  with qryStores do
  begin
    Active:=False;
    Parameters.ParamByName('StoreIDFrom').Value:=GetcFrom(myParams.ParamValues['StoreID'],ftInteger);
    Parameters.ParamByName('StoreIDTo').Value:=GetcTo(myParams.ParamValues['StoreID'],ftInteger);
    Active:=True;
  end;//with

  with qryCalcControls do
  begin
    Active:=False;
    Parameters.ParamByName('DateFrom').Value:=GetcFrom(myParams.ParamValues['ReciptDate'],ftDate);
    Parameters.ParamByName('DateTo').Value:=GetcTo(myParams.ParamValues['ReciptDate'],ftDate);
    Parameters.ParamByName('StuffCodeFrom').Value:=GetcFrom(myParams.ParamValues['StuffCode'],ftInteger);
    Parameters.ParamByName('StuffCodeTo').Value:=GetcTo(myParams.ParamValues['StuffCode'],ftInteger);
    Parameters.ParamByName('StoreIDFrom').Value:=GetcFrom(myParams.ParamValues['StoreID'],ftInteger);
    Parameters.ParamByName('StoreIDTo').Value:=GetcTo(myParams.ParamValues['StoreID'],ftInteger);
    Active:=True;
  end;//with  

end;

procedure TCalculateOutPutF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self,myParams) do
  begin
    try
      AddItem(dmf.adcBSell,'StoreID',' «‰»«— ','ﬂœ',ftInteger,dvMinMax,'','',ciLookup,LookupSQL4Store,MinMaxSQL4Store);
      AddItem(dmf.adcBSell,'StuffCode',' ﬂ«·« ','ﬂœ',ftInteger,dvMinMax,'','',ciLookup,'SELECT c_StuffCode , c_StuffName FROM StuffCoding ','select Min(c_StuffCode),Max(c_StuffCode) From StuffCoding');
      AddItem(DMF.adcBSell,'ReciptDate','  «—ÌŒ ',' «—ÌŒ',ftDate,dvMinMax,'','',ciSimple, '','Select Min(ReciptDate),Max(ReciptDate) from Recipts ');
//      AddItem(DMf.adcBSell,'ReciptDate',' «—ÌŒ ',' « «—ÌŒ',ftDate,dvDefaults,var_glb_CurrentDate,'',ciSingle,'','');

     if ShowModal=mrOk then begin
        GetFilterString;
        UpdateFilter;
     end;//if
    finally
     Free;
    end;//try
  end;//with
end;

procedure TCalculateOutPutF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  actFilter.Execute;
  if myParams.FindParam('ReciptDate')=nil then close;
end;

procedure TCalculateOutPutF.ppLabel11GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text:='«“ ﬂœ ﬂ«·«Ì '+ IntToStr( qryCalSpecialOutPut.Parameters.ParamByName('StuffCodeFrom').Value)+'  « '+IntToStr( qryCalSpecialOutPut.Parameters.ParamByName('StuffCodeTo').Value) ;
end;

procedure TCalculateOutPutF.ppLblPrintDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text:=GetPrintDate;
end;


procedure TCalculateOutPutF.ppSystemVariable1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text:=GetPageNumberString(Text);
end;

procedure TCalculateOutPutF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1,1,True);
  SetColSize(DBGrid2,1,True);
end;

procedure TCalculateOutPutF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
  SaveColWidth(DBGrid2);
end;

procedure TCalculateOutPutF.actsendtoexelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TCalculateOutPutF.actPrintExecute(Sender: TObject);
begin
  inherited;
  try
    qryCalSpecialOutPut.DisableControls;
    InitReportFile(ppReport1,'CalculateOutPut');
  finally
    qryCalSpecialOutPut.EnableControls;
  end;//try
end;

procedure TCalculateOutPutF.ppLabel16GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text:=' «  «—ÌŒ '+qryCalSpecialOutPut.Parameters.ParamByName('DateFrom').Value;//+'  « '+qryCalSpecialOutPut.Parameters.ParamByName('DateTo').Value ;
end;

procedure TCalculateOutPutF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryCalSpecialOutPut);
end;

procedure TCalculateOutPutF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryCalSpecialOutPut);
end;

procedure TCalculateOutPutF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text:=APPBank.CompanyName
end;

procedure TCalculateOutPutF.qryCalSpecialOutPutAfterOpen(DataSet: TDataSet);
begin
  inherited;
//  StatusBar1.Panels[3].Text:='';
//  StatusBar1.Panels[2].Text:=CurrToStr(CalcSumFileds('entity'));
//  StatusBar1.Panels[1].Text:=CurrToStr(CalcSumFileds('weight'));
//  StatusBar1.Panels[0].Text:=CurrToStrF(CalcSumFileds('price'),ffCurrency,0) + '  ' ;
end;

//function TCalculateOutPutF.CalcSumFileds(FiledName: String): Currency;
//begin
//  Result:=0;
//  try
//    with cloned do begin
//      Clone(qryCalSpecialOutPut,ltReadOnly);
//      First;
//      while not eof do begin
//        Result:=Result +fieldbyname(FiledName).AsCurrency;
//        Next;
//      end;//while
//    end;//with
//  except
//  end;//try
//end;

procedure TCalculateOutPutF.actCalcVijehExecute(Sender: TObject);
var
  InvPrice : Currency;
  InvAmount: Double ;
  LastPrvReciptItemID: integer;
  CalculateType : byte ;
begin
  inherited;
  CalculateType:=1;
  DBGrid1.DataSource:=SrcCalSpecialOutPut;
//  Warn('·ÿ›«  « Å«Ì«‰ ⁄„·Ì«  ﬁÌ„  ê–«—Ì ’»— ﬂ‰Ìœ.˛',mtInformation);
  { «ê— ‰ÕÊÂ ﬁÌ„  ê–«—Ì «‰»«— »—«»— ‘‰«”«ÌÌ ÊÌéÂ »Êœ  ¬‰ê«Â}
  Invprice:=0;
  InvAmount:=0;
  lastPrvReciptItemID:=0;
  With qryCalSpecialOutPut   do begin //  end//With
    DisableControls;
    Active := False ;
    Parameters.ParamByName('StoreID').Value:=qryStores.FieldByName('n_StoreID').AsInteger;
    Active :=True ;
    First ;
//    BigMessageProgBar('·ÿ›«  « Å«Ì«‰ ⁄„·Ì«  ’»— ﬂ‰Ìœ....',RecordCount);
    if RecordCount>0 then
      ProgressBar1.Max:=RecordCount;
//  End ;//with
    While not eof do Begin
      If FieldByName('preReciptItemID').AsInteger = lastPrvreciptItemID  then begin
        edit ;
        If   CalculateType = 1        then begin
          if InvAmount*FieldByName('OutPutEntity').AsCurrency<>0 then
           FieldByName('TotalOutputPrice').Value:=
                                      Roundto(InvPrice/InvAmount *FieldByName('OutPutEntity').AsFloat,0);
          InvAmount:= InvAmount- FieldByName('OutPutEntity').AsFloat;
        end//if
        else begin
          if InvAmount *FieldByName('OutPutWeight').AsCurrency<>0 then
           FieldByName('TotalOutPutPrice').Value:=
                                         Roundto(InvPrice/InvAmount *FieldByName('OutPutWeight').AsFloat,0);
          InvAmount:= InvAmount- FieldByName('OutPutWeight').AsFloat;
        end ;//if
        post ;
        InvPrice := InvPrice - FieldByName('TotalOutPutPrice').AsCurrency ;
//        GoProgressBar(IntToStr(RecNo));
        ProgressBar1.StepIt;
        Next;
     end //if
      else begin
        qrySpecialInputItems.Active:=False ;
        qrySpecialInputItems.Parameters.ParamByName('pryreciptItemId').Value:=FieldByName('preReciptItemID').AsInteger;
        qrySpecialInputItems.Active:=True ;
        if qrySpecialInputItems.IsEmpty then
          qryCalSpecialOutPut.Next
        else begin
          InvPrice := qrySpecialInputItems.FieldByName('TotalInputPrice').AsCurrency ;
          lastPrvReciptItemID:=qrySpecialInputItems.FieldByName('reciptItemId').AsInteger;
           If qrySpecialInputItems.FieldByName('InputWeight').Value<0.0001 then begin
             InvAmount:=qrySpecialInputItems.FieldByName('InputEntity').AsInteger  ;
             CalculateType:=1;
           end
           else begin
              InvAmount:=qrySpecialInputItems.FieldByName('InputWeight').AsFloat  ;
              CalculateType:=2;
            End ;//if else
           End ;//if
        End ;//if else
    End ;//while
  EnableControls;
  End ;// with
  BigMessage('«‰Ã«„ ‘œ.',1);
end;

procedure TCalculateOutPutF.actAllCalculateExecute(Sender: TObject);
var
  SQL_Text:String;
begin
  inherited;
  if get_response('¬Ì« „Ì˛ŒÊ«ÂÌœ ⁄„·Ì«  ﬁÌ„  ê–«—Ì «‰Ã«„ ‘Êœø˛')<>mrYes then Exit;
  strFaraGridFara1:=TstringGridFara.Create(Self);
  strFaraGridFara1.Parent:=ProgressBar1.Parent;
  strFaraGridFara1.Align:=alBottom;
  strFaraGridFara1.Visible:=IsDelphiRunning;

  strFaraGridFara1.AddColumn('StoreID');
  strFaraGridFara1.AddColumn('DateFrom');
  strFaraGridFara1.AddColumn('DateTo');
  strFaraGridFara1.AddColumn('StoreID2');



  With qryStores do
  begin
    First;
    while not Eof do
    Begin
      case FieldByName('n_ValuationType').AsInteger of
        0: CalcAllAverage(0,
                          GetcFrom(myParams.ParamValues['ReciptDate'],ftDate),
                          GetcTo(myParams.ParamValues['ReciptDate'],ftDate),
                          GetcFrom(myParams.ParamValues['StuffCode'],ftInteger) ,
                          GetcTo(myParams.ParamValues['StuffCode'],ftInteger),
                          GetcFrom(myParams.ParamValues['StoreID'],ftInteger),
                          GetcTo(myParams.ParamValues['StoreID'],ftInteger),
                          FieldByName('n_StoreID').AsInteger ,1
                          );   //  „Ì«‰êÌ‰
        1: actCalcFiFo.Execute   ;   //   Lifo
        2: actCalcFiFo.Execute   ;   //  Fifo
        3: actCalcVijeh.Execute  ;   //‘‰«”«ÌÌ ÊÌéÂ
        4: CalcAllAverage(4,
                          GetcFrom(myParams.ParamValues['ReciptDate'],ftDate),
                          GetcTo(myParams.ParamValues['ReciptDate'],ftDate),
                          GetcFrom(myParams.ParamValues['StuffCode'],ftInteger) ,
                          GetcTo(myParams.ParamValues['StuffCode'],ftInteger),
                          GetcFrom(myParams.ParamValues['StoreID'],ftInteger),
                          GetcTo(myParams.ParamValues['StoreID'],ftInteger),
                          qryStores.FieldByName('n_StoreID').AsInteger ,1
                          );       //  „Ì«‰êÌ‰ Œ«’
        5: CalcAllAverage(5,
                          GetcFrom(myParams.ParamValues['ReciptDate'],ftDate),
                          GetcTo(myParams.ParamValues['ReciptDate'],ftDate),
                          GetcFrom(myParams.ParamValues['StuffCode'],ftInteger) ,
                          GetcTo(myParams.ParamValues['StuffCode'],ftInteger),
                          GetcFrom(myParams.ParamValues['StoreID'],ftInteger),
                          GetcTo(myParams.ParamValues['StoreID'],ftInteger),
                          qryStores.FieldByName('n_StoreID').AsInteger ,1
                          );       //  „Ì«‰êÌ‰ Œ«’2
      end;//case
      Next;
    end;
  end;//With
  case opt.EntityDisplayType of
    0,2:SQL_Text:='UPDATE ReciptsEffectType_4 SET UnitSellPrice = '+
                  'ROUND(Price/(CASE Entity WHEN 0 THEN 1 else Entity END),2)';
    1  :SQL_Text:='UPDATE ReciptsEffectType_4 SET UnitSellPrice = '+
                  'ROUND(Price/(CASE Weight WHEN 0 THEN 1 else Weight END),2)';
    3  :SQL_Text:='UPDATE    ReciptsEffectType_4 '+
                  'SET UnitSellPrice = ROUND( (CASE Weight WHEN 0 THEN '+
                  'Price / (CASE Entity  WHEN 0 THEN 1 else Entity END)  ELSE '+
                  'Price / (CASE Weight  WHEN 0 THEN 1 else Weight END)  END) , 2) ';
  end ;//case
  with DMf.qryTmpTmp do
  begin
    Active:=False;
    SQL.Text:=SQL_Text;
    ExecSQL;
    BigMessage('À»  ‘œ.˛',1); ;
    Active:=False;
  end;//with
  ProgressBar1.Position:=0;
//  strFaraGridFara1.Free;
end;

procedure TCalculateOutPutF.qryStoresAfterScroll(DataSet: TDataSet);
begin
  inherited;
//  with qryCalSpecialOutPut do begin
//    Active:=False;
//    Parameters.ParamByName('StoreID').Value:=qryStores.FieldByName('n_StoreID').AsInteger;
//    Active:=True;
//  end;//with
end;

procedure TCalculateOutPutF.actCalcFiFoExecute(Sender: TObject);
begin
  inherited;
  with qryin do begin
    Active:=False;
    SQL.Text:='SELECT  Recipts.ReciptDate, StuffCoding.c_StuffCode, ReciptItems.InputEntity, ReciptItems.InputWeight,';
    SQL.Add  ('ReciptItems.InputWeight,ReciptItems.TotalInputPrice');
    SQL.Add  ('FROM StuffCoding INNER JOIN');
    SQL.Add  ('Recipts INNER JOIN');
    SQL.Add  ('ReciptItems ON Recipts.ReciptID = ReciptItems.ReciptID AND Recipts.ServerID = ReciptItems.ServerID AND Recipts.YearID = ReciptItems.YearID ON');
    SQL.Add  ('StuffCoding.c_StuffCode = ReciptItems.StuffCode');
    SQL.Add  ('INNER JOIN ReciptTypes ON Recipts.ReciptType = ReciptTypes.ReciptType');
    SQL.Add  ('WHERE(Recipts.StoreID=:StoreID)AND(StuffCoding.c_StuffCode=:StuffCode)');
    SQL.Add  ('AND(ReciptTypes.EffectType=2) AND(ReciptTypes.SellEffect<>1) AND (Recipts.ReciptState < 3)');
    SQL.Add  ('ORDER BY Recipts.ReciptDate, StuffCoding.c_StuffCode');
    Parameters.ParamByName('StoreID').Value:=qryStores.Fieldbyname('n_StoreID').AsInteger;
//    Parameters.ParamByName('StuffCode').Value:=qryCalSpecialOutPut.fieldbyname('StuffCode').AsInteger;
//    Active:=True;
  end;//with
  with qryKol do begin
    Active:=False;
    Parameters.ParamByName('StoreID').Value:=qryStores.Fieldbyname('n_StoreID').AsInteger;
    Parameters.ParamByName('StuffCodeFrom').Value:=GetcFrom(myParams.ParamValues['StuffCode'],ftInteger);
    Parameters.ParamByName('StuffCodeTo').Value:=GetcTo(myParams.ParamValues['StuffCode'],ftInteger);
    Active:=True;
    if qryKol.RecordCount>0 then
       ProgressBar1.Max:=qryKol.RecordCount;
//    BigMessageProgBar('œ— Õ«· „Õ«”»Â ﬂ«·«Ì:  '+StatusBar1.Panels[0].Text,qryKol.RecordCount);
    while not eof do begin
      CalculateIt(fieldbyname('StuffCode').AsInteger);
//      GoProgressBar(qryKol.Fieldbyname('c_StuffName').AsString+' <> '+fieldbyname('c_StuffName').AsString);
      ProgressBar1.StepIt;
      Application.ProcessMessages;
      Next;
    end;//while
  end;//if
  BigMessage('«‰Ã«„ ‘œ.',1);
  StatusBar1.Panels[0].Text:='';
  CloseMessage;
  with qryCalSpecialOutPut do begin
    Active:=False;
    Parameters.ParamByName('StuffCodeFrom').Value:=GetcFrom(myParams.ParamValues['StuffCode'],ftInteger);
    Parameters.ParamByName('StuffCodeTo').Value:=GetcTo(myParams.ParamValues['StuffCode'],ftInteger);
    Active:=True;
  end;//with
end;

procedure TCalculateOutPutF.CalculateIt(StuffCode: Integer);
var
  requiredEntity ,sumEntity : Real;
  Price,sumPrice:  Currency;
begin
  sumPrice:=0;  sumEntity:=0;  // Price:=0;
  StatusBar1.Panels[0].Text:=IntToStr(StuffCode);
  with qryOut do
  begin
    DisableControls;
    Active:=False;
    Parameters.ParamByName('StoreID').Value:=qryStores.Fieldbyname('n_StoreID').AsInteger;
    Parameters.ParamByName('StuffCode').Value:=StuffCode ;
    Active:=True;
  with qryIN do
  begin
    qryIN.DisableControls;
    Active:=False;
    Parameters.ParamByName('StoreID').Value:=qryStores.Fieldbyname('n_StoreID').AsInteger;
    Parameters.ParamByName('StuffCode').Value:=stuffcode;
    Active:=True;
  end;//with
     while not qryOut.Eof do
     begin
      requiredEntity:=fieldbyname('OutputEntity').AsFloat;
        Price:=0;
        if requiredEntity <= sumEntity then
        begin
          if sumEntity<>0 then Price:=Round((sumPrice/sumEntity)*requiredEntity)  ;
          PostPrice(Price,qryOut);
          sumPrice:=sumPrice-Price;
          sumEntity:=sumEntity-fieldbyname('OutputEntity').AsFloat;
//          qryIN.Next;
        end//if
        else
        begin

          while ( requiredEntity >sumEntity+qryIN.fieldbyname('InputEntity').AsFloat ) and ( not qryIN.Eof ) do
          begin
                    sumEntity:=sumEntity+qryIN.fieldbyname('InputEntity').AsFloat;
                    sumPrice:=sumPrice+qryIN.fieldbyname('TotalInputPrice').AsCurrency;
                    qryIN.Next;
          end;//while
          if qryIN.fieldbyname('InputEntity').AsFloat<>0 then
          Price:=round(sumPrice+((qryIN.fieldbyname('TotalInputPrice').AsCurrency/qryIN.fieldbyname('InputEntity').AsFloat)*
                                             (requiredEntity-sumEntity))) ;

          PostPrice(Price,qryOut);
          sumEntity:=sumEntity+qryIN.fieldbyname('InputEntity').AsFloat-fieldbyname('OutputEntity').AsFloat;
          sumPrice:=sumPrice+qryIN.fieldbyname('TotalInputPrice').AsCurrency-Price;
          qryIN.Next;
        end;//else
    qryOut.Next;
    end;//while
  end;//with
end;

procedure TCalculateOutPutF.PostPrice;
begin
  with DMf.qryTmpTmp do
  begin
    Active:=False;
		SQL.Text:='update ReciptItems';
		SQL.Add  ('set TotalOutputPrice= :price');
		SQL.Add  ('where ReciptItemID = :ReciptItemID');
		SQL.Add  ('AND ReciptID = :ReciptID');
		SQL.Add  ('AND ServerID = :ServerID');
		SQL.Add  ('AND YearID = :YearID');   
    Parameters.ParamByName('Price').Value:=savePrice;
    Parameters.ParamByName('ReciptItemID').Value:=qry.fieldbyname('ReciptItemID').AsInteger;
    Parameters.ParamByName('ReciptID').Value:=qry.fieldbyname('ReciptID').AsInteger;
    Parameters.ParamByName('ServerID').Value:=qry.fieldbyname('ServerID').AsInteger;
    Parameters.ParamByName('YearID').Value:=qry.fieldbyname('YearID').AsInteger;
    ExecSQL;
    Active:=False;
  end;//with
end;

procedure TCalculateOutPutF.qryStoresn_ValuationTypeGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  case qryStoresn_ValuationType.AsInteger of
    0:Text:='„Ì«‰êÌ‰';
    1:Text:='Lifo';
    2:Text:='Fifo' ;
    3:Text:='‘‰«”«ÌÌ ÊÌéÂ' ;
    4:Text:='„Ì«‰êÌ‰ Œ«’';
    5:Text:='„Ì«‰êÌ‰ Œ«’2';
  end;//case
end;

procedure TCalculateOutPutF.CalcAllAverage;
var
  s_entity: Real;
  s_Weight: Real;
  s_sumIn:  Currency;
  s_sumSellIn:  Currency;
  p_price:  Currency;
  S_price:  Currency;
  prvCode:  Integer ;
  prvAnbar:  Integer ;
  prvModel:  Integer ;
  prvUseUnit:  Integer ;
  S_UnitPrice_E: Currency;
  S_UnitPrice_W: Currency;
  P_UnitPrice_E: Currency;
  P_UnitPrice_W: Currency;
  qry_AllAverage:TADOQuery;
  i:Integer;
  Date_From:String;
  procedure setAvrageFirstEntity;
  begin
    With qryAvrageFirstEntity do
    begin
      Active:=False;
      Parameters.ParamByName('StuffCode').Value:=qry_AllAverage.FieldByName('Stuffcode').AsInteger;
      Active:=True;
      s_entity:=FieldByName('Entity').AsFloat;
      s_Weight:=FieldByName('Weight').AsFloat;
      s_sumIn:=FieldByName('TotalPrice').AsFloat;
      s_sumSellIn:=FieldByName('TotallSellPrice').AsFloat;
      p_price:=0;
    end;
  end;

begin
  S_UnitPrice_E := 0 ;
  S_UnitPrice_W := 0 ;
  P_UnitPrice_E := 0 ;
  P_UnitPrice_W := 0 ;
  s_price:=0;

  if CalcReciptsRegulatesActive then
  With DMf.qryTmpTmp do
  begin
    Close;
    SQL.Text:='DELETE FROM ReciptsRegulates';
    SQL.Add  ('FROM Recipts INNER JOIN');
    SQL.Add  ('ReciptTypes ON Recipts.ReciptType = ReciptTypes.ReciptType INNER JOIN');
    SQL.Add  ('ReciptItems ON Recipts.ReciptID = ReciptItems.ReciptID AND Recipts.ServerID = ReciptItems.ServerID AND');
    SQL.Add  ('Recipts.YearID = ReciptItems.YearID INNER JOIN');
    SQL.Add  ('ReciptsRegulates ON ReciptItems.ReciptItemID = ReciptsRegulates.ReciptItemID AND ReciptItems.ReciptID =');
    SQL.Add  ('ReciptsRegulates.ReciptID AND');
    SQL.Add  ('ReciptItems.ServerID = ReciptsRegulates.ServerID AND ReciptItems.YearID = ReciptsRegulates.YearID');
    SQL.Add  ('WHERE (Recipts.StoreID BETWEEN :StoreIDFrom AND :StoreIDTo)');
    SQL.Add  ('AND (ReciptItems.StuffCode BETWEEN :StuffCodeFrom AND :StuffCodeTo)');
    SQL.Add  ('AND ((ReciptTypes.EffectType = 4)OR(ReciptTypes.AutoPrice = 1))');
    SQL.Add  ('AND (ReciptsRegulates.RegDocNo = 0)');
    SQL.Add  ('AND (Recipts.ReciptDate BETWEEN :DateFrom AND :DateTo)');
    Parameters.ParamByName('DateFrom').Value:=DateFrom;
    Parameters.ParamByName('DateTo').Value:=DateTo;
    Parameters.ParamByName('StuffCodeFrom').Value:=StuffCodeFrom;
    Parameters.ParamByName('StuffCodeTo').Value:=StuffCodeTo;
    Parameters.ParamByName('StoreIDFrom').Value:=aStoreIDFrom;
    Parameters.ParamByName('StoreIDTo').Value:=aStoreIDTo;
    ExecSQL;
    Close;
  end;
  qry_AllAverage:=TADOQuery.Create(Self);
  with qry_AllAverage do
  begin
    Connection:=DMf.adcBSell;
    qryAvrageFirstEntity.SQL.Text:=StringReplace(SQLAvrageFirstEntity,
                                   ':AverageKind',IntToStr(AverageKind),
                                   [rfReplaceAll]);
    case  AverageKind of
      0:begin
          SQL:=qryAverage.SQL;
        end;
      4:begin
          SQL:=qryAverageModel.SQL;
        end;
      5:begin
          SQL:=qryAverageModelUseUnits.SQL;
        end;
    end;

    qryAvrageFirstEntity.Parameters.ParamByName('StoreID').Value:=aStoreID;
    qryAvrageFirstEntity.Parameters.ParamByName('DateFrom').Value:=DateFrom;

    //GetcFrom(myParams.ParamValues['ReciptDate'],ftDate);


    Parameters.ParamByName('StoreID').Value:=aStoreID;
    Parameters.ParamByName('StoreID2').Value:=aStoreID;
    Parameters.ParamByName('DateFrom').Value:=DateFrom;
    Parameters.ParamByName('DateTo').Value:=DateTo;
    Parameters.ParamByName('StuffCodeFrom').Value:=StuffCodeFrom;
    Parameters.ParamByName('StuffCodeTo').Value:=StuffCodeTo;
    Active:=True;
//    BigMessageProgBar(IntToStr(RecordCount),RecordCount);
    if RecordCount>0 then  ProgressBar1.Max:=RecordCount;
    First;
    setAvrageFirstEntity;
    if aflag=1 then
    begin
      strFaraGridFara1.DeleteAll;
      Application.ProcessMessages;
    end;

    prvAnbar:=FieldByName('StoreID').AsInteger;
    prvCode:=FieldByName('Stuffcode').AsInteger;
    prvModel:= FieldByName('ProductModel').AsInteger ;
    prvUseUnit:=FieldByName('UseUnitID').AsInteger;

    try
      while not eof do
      begin
        if
//           ( FieldByName('StoreID').AsInteger<>prvAnbar ) or
           ( FieldByName('Stuffcode').AsInteger<>prvCode ) or
           ( FieldByName('ProductModel').AsInteger<>prvModel) or
           ( FieldByName('UseUnitID').AsInteger<>prvUseUnit )
        then
        begin
          setAvrageFirstEntity;
          if aflag=1 then
          begin
             strFaraGridFara1.DeleteAll;
             Application.ProcessMessages;
          end;
        end;

        if FieldByName('EffectType').AsInteger=2
        then
        begin
          if (( FieldByName('AutoPrice').AsInteger=1)  and
             ( FieldByName('StoreID').AsInteger = qryStores.FieldByName('n_StoreID').AsInteger  ) and
             ( FieldByName('StoreID2').AsInteger <> qryStores.FieldByName('n_StoreID').AsInteger  ))

          then
          begin
{-------------------------------------------------------------------------------
                           ﬁÌ„  ê–«—Ì »« Å«—«„ —Â«Ì ÃœÌœ
--------------------------------------------------------------------------------}
            if strFaraGridFara1.GetColumnIndexValue('StoreID2',FieldByName('StoreID2').AsString)=0 then
            begin
              i:=strFaraGridFara1.GetColumnIndexLastValue('StoreID',FieldByName('StoreID').AsString);
              if i>0 then
                Date_From:=strFaraGridFara1.GetColumnValueByIndex('DateTo',i);
              if Date_From<>EmptyStr then
                Date_From:=miladi2Shamsi(IncDay(Shamsi2Miladi(Date_From),1))
              else Date_From:=APPBank.StartYear;

              strFaraGridFara1.AddColumnRowValue('StoreID',FieldByName('StoreID').AsString,0);
              strFaraGridFara1.AddColumnRowValue('DateFrom',Date_From,0);
              strFaraGridFara1.AddColumnRowValue('DateTo',FieldByName('ReciptDate').AsString,0);
              strFaraGridFara1.AddColumnRowValue('StoreID2',FieldByName('StoreID2').AsString,1);
              CalcAllAverage(AverageKind,
                Date_From,FieldByName('ReciptDate').AsString ,prvCode ,prvCode,
                FieldByName('StoreID2').AsInteger ,FieldByName('StoreID2').AsInteger,
                FieldByName('StoreID2').AsInteger , 2);

            end;
            Application.ProcessMessages;
          end;
{-------------------------------------------------------------------------------
                           ﬁÌ„  ê–«—Ì »« Å«—«„ —Â«Ì ÃœÌœ
--------------------------------------------------------------------------------}


          if (( FieldByName('AutoPrice').AsInteger=1) and            
                ( (FieldByName('ReciptType').AsInteger=7) and
                (FieldByName('StoreID2').AsInteger = qryStores.FieldByName('n_StoreID').AsInteger  )))
          then
          begin
              case opt.EntityDisplayType of
                0 : begin
                    if  P_UnitPrice_E >0 then p_price:=P_UnitPrice_E * fieldbyname('InputEntity').AsFloat;
                    if  S_UnitPrice_E >0 then S_price:=S_UnitPrice_E * fieldbyname('InputEntity').AsFloat;
                end ;//case (0)
                1 : begin
                    if  P_UnitPrice_W >0 then p_price:=P_UnitPrice_W * fieldbyname('InputWeight').AsFloat;
                    if  S_UnitPrice_W >0 then S_price:=S_UnitPrice_W * fieldbyname('InputWeight').AsFloat;
                end ;//case (1)
                2 : begin
                    if fieldbyname('InputEntity').AsFloat >0 then
                    begin
                      if  P_UnitPrice_E >0 then p_price:=P_UnitPrice_E * fieldbyname('InputEntity').AsFloat ;
                      if  S_UnitPrice_E >0 then S_price:=S_UnitPrice_E * fieldbyname('InputEntity').AsFloat ;
                    end else
                    if fieldbyname('InputWeight').AsFloat >0 then
                    begin
                      if  P_UnitPrice_W >0 then p_price:=P_UnitPrice_W * fieldbyname('InputWeight').AsFloat;
                      if  S_UnitPrice_W >0 then S_price:=S_UnitPrice_W * fieldbyname('InputWeight').AsFloat;
                    end ;
                end ;//case (2)
                3 : begin
                      if fieldbyname('InputWeight').AsFloat >0 then
                      begin
                        if  P_UnitPrice_W >0 then p_price:= P_UnitPrice_W * fieldbyname('InputWeight').AsFloat ;
                        if  S_UnitPrice_W >0 then S_price:= S_UnitPrice_W * fieldbyname('InputWeight').AsFloat  ;
                      end else
                      if fieldbyname('InputEntity').AsFloat >0 then
                      begin
                       if  P_UnitPrice_E >0 then p_price:=P_UnitPrice_E * fieldbyname('InputEntity').AsFloat;
                       if  S_UnitPrice_E >0 then S_price:=S_UnitPrice_E * fieldbyname('InputEntity').AsFloat;
                      end ;
                    end ;//case (3)
              end ;//case
              Edit ;
              if s_price>=0 then fieldbyname('TotallSellPrice').AsCurrency :=RoundTo(s_price,0) ;
              if CalcReciptsRegulatesActive and (FieldByName('DocNo').AsInteger<>0) then
              begin
                 ReciptsRegulatesPost(p_price,fieldbyname('TotalInputPrice').AsCurrency,qry_AllAverage);
              end
              else
                  if p_price>=0 then fieldbyname('TotalInputPriceBase').AsCurrency :=RoundTo(p_price,0) ;
             Post ;
          end ;//if
          if (FieldByName('StoreID').AsInteger =qryStores.FieldByName('n_StoreID').AsInteger  )
          then
          begin
             s_entity:=s_entity + fieldbyname('InputEntity').AsFloat;
             s_Weight:=s_Weight + fieldbyname('InputWeight').AsFloat;
             s_sumIn:=s_sumIn + fieldbyname('TotalInputPrice').AsCurrency;
             s_sumSellIn:=s_sumSellIn + fieldbyname('TotallSellPrice').AsCurrency;
          end ;//if
          if s_entity>0 then S_UnitPrice_E:=s_sumSellIn/s_entity else S_UnitPrice_E:=0  ;
          if s_Weight>0 then S_UnitPrice_W:=s_sumSellIn/s_Weight else S_UnitPrice_W:=0;
          if s_entity>0 then P_UnitPrice_E:=s_sumIn/s_entity else P_UnitPrice_E:=0;
          if s_Weight>0 then P_UnitPrice_W:=s_sumIn/s_Weight else P_UnitPrice_W:=0 ;
        end
        else
        begin
          if  (fieldbyname('OutputEntity').AsFloat + fieldbyname('OutputWeight').AsFloat  ) >= 0.0001 then

              case opt.EntityDisplayType of
                0 : Begin
                    if s_entity>0 then p_price:=s_sumIn/s_entity * fieldbyname('OutputEntity').AsFloat else p_price:=0 ;
                    if s_entity>0 then S_price:=s_sumSellIn/s_entity * fieldbyname('OutputEntity').AsFloat else S_price:=0;
                end ;//case (0)
                1 : Begin
                    if s_Weight>0 then p_price:=s_sumIn/s_Weight * fieldbyname('OutputWeight').AsFloat else p_price:=0 ;
                    if s_Weight>0 then S_price:=s_sumSellIn/s_Weight * fieldbyname('OutputWeight').AsFloat else S_price:=0;
                end ;//case (1)
                2 : Begin
                    if s_entity>0 then p_price:=s_sumIn/s_entity * fieldbyname('OutputEntity').AsFloat
                    else
                    if s_Weight>0 then p_price:=s_sumIn/s_Weight * fieldbyname('OutputWeight').AsFloat else p_price:=0 ;

                    if s_entity>0 then S_price:=s_sumSellIn/s_entity * fieldbyname('OutputEntity').AsFloat
                    else
                    if s_Weight>0 then S_price:=s_sumSellIn/s_Weight * fieldbyname('OutputWeight').AsFloat  else S_price:=0;

                end ;//case (2)
                3 : Begin
                    if s_Weight>0 then  p_price:=s_sumIn/s_Weight * fieldbyname('OutputWeight').AsFloat
                    else
                    if  s_entity>0 then p_price:=s_sumIn/s_entity * fieldbyname('OutputEntity').AsFloat  else P_price:=0;;

                    if s_Weight>0 then  S_price:=s_sumSellIn/s_Weight * fieldbyname('OutputWeight').AsFloat
                    else
                    if s_entity>0 then S_price:=s_sumSellIn/s_entity * fieldbyname('OutputEntity').AsFloat  else S_price:=0;
                end ;//case (3)
              end //case
          else
          begin
                p_price:=0 ;
                S_price:=0 ;
          end;

            s_entity:=s_entity - fieldbyname('OutputEntity').AsFloat;
            s_Weight:=s_Weight - fieldbyname('OutputWeight').AsFloat;
            s_sumIn:=s_sumIn - RoundTo(p_price,0);
            s_sumSellIn:=s_sumSellIn - RoundTo(S_price,0);

            Edit ;
            if s_price>=0 then fieldbyname('TotallSellPrice').AsCurrency :=RoundTo(s_price,0) ;
            if CalcReciptsRegulatesActive and (FieldByName('DocNo').AsInteger<>0) then
            begin
               ReciptsRegulatesPost(p_price,fieldbyname('TotalOutputPrice').AsCurrency,qry_AllAverage);
            end
            else
                if p_price>=0 then fieldbyname('TotalOutputPriceBase').AsCurrency :=RoundTo(p_price,0) ;
            Post ;

        end;//if 11
        prvCode := Fieldbyname('StuffCode').AsInteger ;
        prvModel:= FieldByName('ProductModel').AsInteger ;
        prvUseUnit:=FieldByName('UseUnitID').AsInteger;
        prvAnbar:=FieldByName('StoreID').AsInteger;
        ProgressBar1.StepIt;
//        if prvAnbar=36 then         Warn(IntToStr(prvAnbar));
        Next;


      end;//while
    finally
//      BigMessage('À»  ‘œ .',1);
    end;//try
//      Free
  end;//with
end;

procedure TCalculateOutPutF.FormCreate(Sender: TObject);
begin
  inherited;
  Entity_Weight(DBGrid1);
  SQLAvrageFirstEntity:=qryAvrageFirstEntity.SQL.Text;
  mskDate.Text := var_glb_CurrentDate;
  CalcReciptsRegulatesActive:=DMF.ReadBankConfig('CalcReciptsRegulatesActive','0')='1';
  pnlReciptsRegulates.Visible:=CalcReciptsRegulatesActive;

end;

procedure TCalculateOutPutF.ReciptsRegulatesPost;
var
  txt:String;
begin
  if RoundTo(p_price,0)- TotalPrice<>0 then
  with qryReciptsRegulates  do
  try
    Open;
    Insert;
    FieldByName('ServerID').AsInteger:=qry.FieldByName('ServerID').AsInteger;
    FieldByName('YearID').AsInteger:=qry.FieldByName('YearID').AsInteger;
    FieldByName('ReciptItemID').AsInteger:=qry.FieldByName('ReciptItemID').AsInteger;
    FieldByName('ReciptID').AsInteger:=qry.FieldByName('ReciptID').AsInteger;
    FieldByName('RegDate').AsString:=Trim(mskDate.Text);
    Txt:='SELECT MAX(RegRowId) FROM ReciptsRegulates '+
       ' WHERE ( YearID = '+qry.Fieldbyname('YearID').AsString+') AND '+
             ' ServerID = '+qry.Fieldbyname('ServerID').AsString;
    FieldByName('RegRowId').AsInteger:=GetANewCode(Self.Name,Txt,'RegRowId');

    FieldByName('RegPrice').AsCurrency:=RoundTo(p_price,0)-TotalPrice;
    FieldByName('RegNote').AsString:='ﬁÌ„  ê–«—Ì  Ê”ÿ ”Ì” „';
    FieldByName('CustID').AsInteger:=0;
    Post;
  finally
    Close;
    FreeReservedCodes(DMf.adcBSell);
  end;
  
end;




//procedure TCalculateOutPutF.btn1Click(Sender: TObject);
//var
//  i:Integer;
//begin
//  inherited;
//  strFaraGridFara1.AddColumnRowValue('a','av');
//  strFaraGridFara1.AddColumnRowValue('StringStoreID','StringStoreID=');
//  strFaraGridFara1.AddColumnRowValue('DateFrom','89/09');
//  strFaraGridFara1.AddColumnRowValue('DateTo','98/09');
//
//end;
//
//procedure TCalculateOutPutF.btn2Click(Sender: TObject);
//begin
//  inherited;
//  Warn(strFaraGridFara1.GetColumnValue('StringStoreID'));
//  Warn('1'+strFaraGridFara1.GetColumnValue('StringStoreID',1));
//  Warn('2'+strFaraGridFara1.GetColumnValue('StringStoreID',2));
//
//end;
//
//procedure TCalculateOutPutF.btn3Click(Sender: TObject);
//begin
//  inherited;
//  Warn(IntToStr( strFaraGridFara1.GetColumnIndexValue('StringStoreID','StringStoreID=2')));
//  Warn(IntToStr( strFaraGridFara1.GetColumnIndexValue('StringStoreID','StringStoreID=3')));
//
//end;
//
//procedure TCalculateOutPutF.btn4Click(Sender: TObject);
//begin
//  inherited;
//  strFaraGridFara1.DeleteRow(['StringStoreID=3','','']);
//end;

procedure TCalculateOutPutF.Button1Click(Sender: TObject);
begin
  inherited;
  strFaraGridFara1:=TstringGridFara.Create(Self);
  strFaraGridFara1.Parent:=ProgressBar1.Parent;
  strFaraGridFara1.Align:=alBottom;
  strFaraGridFara1.Visible:=IsDelphiRunning;

  strFaraGridFara1.AddColumn('StoreID');
  strFaraGridFara1.AddColumn('DateFrom');
  strFaraGridFara1.AddColumn('DateTo');
  strFaraGridFara1.AddColumn('StoreID2');

  strFaraGridFara1.AddColumnRowValue('DateFrom','89/09',0);
  strFaraGridFara1.AddColumnRowValue('DateTo','98/09',1);

end;

procedure TCalculateOutPutF.btn1Click(Sender: TObject);
begin
  inherited;
  strFaraGridFara1.DeleteAll
end;

procedure TCalculateOutPutF.btn2Click(Sender: TObject);
begin
  inherited;
  strFaraGridFara1.AddColumnRowValue('DateFrom','88/09',0);
  strFaraGridFara1.AddColumnRowValue('DateTo','99/09',1);

end;

end.
