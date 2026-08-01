unit Release;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template4, DBActns, ActnList, StdCtrls, Buttons, ExtCtrls, DB,
  ADODB,StrUtils, Mask, DBCtrls;

type
  TReleaseF = class(TTemplate4F)
    BitBtn12: TBitBtn;
    BitBtn11: TBitBtn;
    srcSource: TDataSource;
    qrySource: TADOQuery;
    qrySourceAccTopicCode: TIntegerField;
    qrySourceAccDetailCode: TIntegerField;
    qrySourceAccCTopicCode: TIntegerField;
    qrySourceAccCTopicCode2: TIntegerField;
    qrySource_AccTopicCode: TStringField;
    qrySource_AccDetailName: TStringField;
    qrySource_AccCTopicName: TStringField;
    qrySource_AccCTopicName2: TStringField;
    LblPerson1: TLabel;
    EdtPersonID1: TDBEdit;
    SpeedButton1: TSpeedButton;
    DBTextPersonID1: TDBText;
    qryinit: TADOQuery;
    qryinitReciptType: TWordField;
    qryinitReciptCaption: TStringField;
    qryinitEffectType: TWordField;
    qryinitUseType: TWordField;
    qryinitRecallType: TWordField;
    qryinitRecallReciptTypes: TStringField;
    qryinitStoreActive: TWordField;
    qryinitStoreCaption: TStringField;
    qryinitRestartFormNumberOnStore: TWordField;
    qryinitPerson1Active: TWordField;
    qryinitPerson1Caption: TStringField;
    qryinitPerson1Groups: TStringField;
    qryinitPerson2Active: TWordField;
    qryinitPerson2Caption: TStringField;
    qryinitPerson2Groups: TStringField;
    qryinitSection2Visible: TWordField;
    qryinitSection2Caption: TStringField;
    qryinitSection1Visible: TWordField;
    qryinitSecondTypeActive: TWordField;
    qryinitMakeDoc: TWordField;
    qryinitBedType: TWordField;
    qryinitBesType: TWordField;
    qryinitDetailNoteActive: TWordField;
    qryinitControlEntityActive: TWordField;
    qryinitExpireDateActive: TWordField;
    qryinitExpireDateCaption: TStringField;
    qryinitFormSignature: TStringField;
    qryinitPerformFileName: TStringField;
    qryinitReportFileName: TStringField;
    qryinitReciptDescription: TMemoField;
    qryinitTemplateCode: TWordField;
    qryinitControlCodeCaption: TStringField;
    qryinitUseUnitCase: TWordField;
    qryinitUseUnitCaseCaption: TStringField;
    qryinitFormHeader: TStringField;
    qryinitFormFooter: TStringField;
    qryinitUserSecurityCheckActive: TWordField;
    qryinitUseStoreIDOnRecall: TWordField;
    qryinitDeficitsActive: TWordField;
    qryinitHelpID: TIntegerField;
    qryinitUnitPriceReadOnly: TWordField;
    qryinitMaxRowsPerForm: TIntegerField;
    qryinitPrintCount: TWordField;
    qryinitRecallReciptDeficitsType: TStringField;
    qryinitCorrelateReciptType: TWordField;
    qryinitCorrelateKind: TWordField;
    qryinitAidInfoActive: TWordField;
    qryinitAidInfoCaption: TStringField;
    qryinitAutoPrice: TWordField;
    qryRecipts: TADOQuery;
    qryReciptsStoreID: TSmallintField;
    qryRecipts_StoresName: TStringField;
    qryReciptsReciptNumber: TIntegerField;
    qryReciptsReciptDate: TStringField;
    qryReciptsPersonID1: TIntegerField;
    qryRecipts_PersonName: TStringField;
    qryRecipts_PersonName3: TStringField;
    qryRecipts_PersonName4: TStringField;
    qryRecipts_PersonName5: TStringField;
    qryRecipts_PersonName1: TStringField;
    qryReciptsPersonID2: TIntegerField;
    qryRecipts_PersonName2: TStringField;
    qryReciptsReciptType: TWordField;
    qryReciptsServiceValue: TBCDField;
    qryReciptsReciptValue: TBCDField;
    qryReciptsTotalValue: TBCDField;
    qryReciptsAddDecValue: TBCDField;
    qryReciptsDocNo: TIntegerField;
    qryReciptsDocDate: TStringField;
    qryReciptsReciptNote: TStringField;
    qryReciptsParentReciptID: TIntegerField;
    qryReciptsModifyDate: TDateTimeField;
    qryReciptsReciptState: TWordField;
    qryReciptsUseUnitID: TIntegerField;
    qryRecipts_UseUnitName: TStringField;
    qryReciptsExpireDate: TStringField;
    qryReciptsSecondType: TWordField;
    qryRecipts_ValuationType: TIntegerField;
    qryReciptsReciptID: TIntegerField;
    qryReciptsOperatorID: TIntegerField;
    qryRecipts_OperatorName: TStringField;
    qryRecipts_PersonFax: TStringField;
    qryReciptsAidDate: TStringField;
    qryRecipts_CustValuationType: TIntegerField;
    qryReciptsAidNumber: TFloatField;
    qryItems: TADOQuery;
    qryItemsReciptItemID: TIntegerField;
    qryItemsReciptID: TIntegerField;
    qryItemsStuffCode: TIntegerField;
    qryItems_StuffName: TStringField;
    qryItems_UnitName: TStringField;
    qryItems_StuffTecInfo: TStringField;
    qryItemsStuffSize: TStringField;
    qryItemsStuffAlloy: TStringField;
    qryItemsInputEntity: TFloatField;
    qryItemsOutputEntity: TFloatField;
    qryItemsInputWeight: TFloatField;
    qryItemsOutputWeight: TFloatField;
    qryItemsRequestedEntity: TFloatField;
    qryItemsRequestedWeight: TFloatField;
    qryItemsStuffGrade: TWordField;
    qryItemsTotalInputPrice: TBCDField;
    qryItemsTotalOutputPrice: TBCDField;
    qryItemsTotallSellPrice: TBCDField;
    qryItemsUnitSellPrice: TFMTBCDField;
    qryItemsItemNote: TStringField;
    qryItemsacc_TopicCode: TStringField;
    qryItems_TopicCodeName: TStringField;
    qryItemsacc_DetailCode: TStringField;
    qryItems_DetailCode: TStringField;
    qryItemsacc_CTopicCode: TStringField;
    qryItems_CTopicCode2: TStringField;
    qryItemsUseUnitID: TIntegerField;
    qryItems_UseUnitName: TStringField;
    qryItemspreReciptItemID: TIntegerField;
    qryItems_SumEntity: TIntegerField;
    qryItems_CTopicCode: TStringField;
    qryItems_SumWeight: TIntegerField;
    qryItemsStuffDiameter: TFloatField;
    qryItemsControlCode: TLargeintField;
    qryItemsacc_CTopicCode2: TStringField;
    qryItemsPersonID1: TIntegerField;
    qryItems_radif: TIntegerField;
    qryItemsAidNumber: TIntegerField;
    qryItemsAidDate: TStringField;
    qryItemsDiscount: TIntegerField;
    qryItems_Carton: TIntegerField;
    qryInsert: TADOQuery;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    FloatField5: TFloatField;
    FloatField6: TFloatField;
    WordField1: TWordField;
    BCDField1: TBCDField;
    BCDField2: TBCDField;
    BCDField3: TBCDField;
    BCDField4: TBCDField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    StringField10: TStringField;
    StringField11: TStringField;
    StringField12: TStringField;
    IntegerField4: TIntegerField;
    StringField13: TStringField;
    IntegerField5: TIntegerField;
    IntegerField6: TIntegerField;
    StringField14: TStringField;
    IntegerField7: TIntegerField;
    FloatField7: TFloatField;
    IntegerField8: TIntegerField;
    StringField15: TStringField;
    IntegerField9: TIntegerField;
    IntegerField10: TIntegerField;
    IntegerField11: TIntegerField;
    StringField16: TStringField;
    IntegerField12: TIntegerField;
    IntegerField13: TIntegerField;
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    function enter(qry: TADOQuery): string;
    { Public declarations }
  end;

var
  ReleaseF: TReleaseF;

implementation

uses searchCode_ADO, DM, mmessage, GlobalPro;

{$R *.dfm}

function TReleaseF.enter(qry: TADOQuery):string;
var
  Person1Groups :String;
  ReciptID,ReciptType,ReciptNumber,SQLText,ReciptCaption:String;
  ReciptItemID:Integer;
  Filter_Store:Boolean;
begin
  ReleaseF:=TReleaseF.Create(Application);
  try
    with ReleaseF do begin
      with qryinit do begin
        Active:=False;
        Parameters.ParamByName('ReciptType').Value:=11;
        Active:=True;
        Filter_Store:=FieldByName('RestartFormNumberOnStore').AsInteger=1;
        Person1Groups:=FieldByName('Person1Groups').AsString;
        if Person1Groups='' then Person1Groups:='0';
        Active:=False;
      end;//with
      ReciptID:=IntToStr(GetANewCode(Self.Name,'Recipts','ReciptID'));
      SQLText:='SELECT MAX(ReciptNumber)FROM Recipts WHERE(ReciptType='+ReciptType+')';
      IF Filter_Store THEN SQLText:=SQLText+'AND(StoreID='+qry.FieldByName('StoreID').AsString+')';
      ReciptNumber:=IntToStr(GetANewCode(Self.Name,SQLText,'ReciptNumber'));
  With  DMf.qryTmpTmp do begin
    Active:=False;
    SQL.Text:='INSERT INTO Recipts';
    SQL.Add  ('(ReciptID,StoreID,ReciptNumber,ReciptDate,PersonID1,PersonID2,ReciptType,SecondType,ServiceValue,ReciptValue,');
    SQL.Add  ('TotalValue,AddDecValue,DocNo,DocDate,ReciptNote,ParentReciptID,OperatorID,ModifyDate,ReciptState,UseUnitID,');
    SQL.Add  ('[ExpireDate],ProjectID,BudgetID,AidNumber,AidDate)');
    SQL.Add  ('SELECT '+ReciptID+',StoreID,'+ReciptNumber+',ReciptDate,PersonID1,PersonID2,'+ReciptType+',SecondType,ServiceValue,ReciptValue,');
    SQL.Add  ('TotalValue,AddDecValue,DocNo,DocDate,ReciptNote,ReciptID,OperatorID,GETDATE(),ReciptState,UseUnitID,');
    SQL.Add  ('[ExpireDate],ProjectID,BudgetID,AidNumber,AidDate');   { Parent }
    SQL.Add  ('FROM Recipts');
    SQL.Add  ('WHERE (ReciptID = '+qryRecipts.FieldByName('ReciptID').AsString+')');
    try
      ExecSQL;
      BigMessage(' œ— Õ«· À»  ›—„...',1);
      Active:=false;
    except
       Warn('«‘ﬂ«· œ— À»  ﬂ—œ‰ ›—„ù');
    end;//try
  end;//with
  ReciptItemID:=GetANewCode(Self.Name,'ReciptItems','ReciptItemID');
//  case qryinit.FieldByName('CorrelateKind').AsInteger of
//    {'À»  œ— Ê«—œÂ˛Â« »« „»·€'}
//    1:SQLText:=IfThen(FormOutput,'OutputEntity,InputEntity,OutputWeight,InputWeight,TotalOutputPrice,TotalInputPrice',
//                                 'InputEntity,OutputEntity,InputWeight,OutputWeight,TotalInputPrice,TotalOutputPrice');
//    {'À»  œ— Ê«—œÂ˛Â« »œÊ‰ „»·€'}
//    2:SQLText:=IfThen(FormOutput,'OutputEntity,InputEntity,OutputWeight,InputWeight,0,0',
//                                 'InputEntity,OutputEntity,InputWeight,OutputWeight,0,0');
//    {'À»  œ— ’«œ—Â˛Â« »« „»·€'}
//    3:SQLText:=IfThen(FormOutput,'InputEntity,OutputEntity,InputWeight,OutputWeight,TotalInputPrice,TotalOutputPrice',
//                                 'OutputEntity,InputEntity,OutputWeight,InputWeight,TotalOutputPrice,TotalInputPrice');
//    {'À»  œ— ’«œ—Â˛Â« »œÊ‰ „»·€'}
//    4:SQLText:=IfThen(FormOutput,'InputEntity,OutputEntity,InputWeight,OutputWeight,0,0',
//                                 'OutputEntity,InputEntity,OutputWeight,InputWeight,0,0');
//  end;//case

  With qryItems do begin
    DisableControls;
    First;
    while not Eof do begin
      qryInsert.Active:=False;
      qryInsert.SQL.Text:='INSERT INTO ReciptItems';
      qryInsert.SQL.Add  ('(ReciptItemID,ReciptID,StuffCode,StuffSize,StuffDiameter,StuffAlloy,InputEntity,OutputEntity,InputWeight,');
      qryInsert.SQL.Add  ('OutputWeight,TotalInputPrice,TotalOutputPrice,RequestedEntity,RequestedWeight,ControlCode,StuffGrade,UnitSellPrice,');
      qryInsert.SQL.Add  ('TotallSellPrice,ItemNote,preReciptItemID,acc_TopicCode,acc_DetailCode,acc_CTopicCode,UseUnitID,AidNumber,AidDate,');
      qryInsert.SQL.Add  ('Discount,acc_CTopicCode2,PersonID1)');
      qryInsert.SQL.Add  ('SELECT '+IntToStr(ReciptItemID)+','+ReciptID+',StuffCode,StuffSize,StuffDiameter,StuffAlloy,');
      qryInsert.SQL.Add  (SQLText+',RequestedEntity,RequestedWeight,ControlCode,StuffGrade,UnitSellPrice,');
      qryInsert.SQL.Add  ('TotallSellPrice,ItemNote,preReciptItemID,acc_TopicCode,acc_DetailCode,acc_CTopicCode,UseUnitID,AidNumber,AidDate,');
      qryInsert.SQL.Add  ('Discount,acc_CTopicCode2,PersonID1');
      qryInsert.SQL.Add  ('FROM ReciptItems');
      qryInsert.SQL.Add  ('WHERE (ReciptItemID = '+FieldByName('ReciptItemID').AsString+')');
      try
        qryInsert.ExecSQL;
        BigMessage(' œ— Õ«· À»  ﬂ«·«Â«Ì ›—„...',0);
        qryInsert.Active:=false;
      except
         Warn('«‘ﬂ«· œ— À»  ﬂ«·«Â«Ì ›—„ù');
      end;//try
      inc(ReciptItemID);
      Next;
    end;//while
    EnableControls;
    BigMessage(' ›—„ '+ReciptCaption+'ù »« ‘„«—Â ›—„ '+ReciptNumber+' À»  ‘œ.',2);
  end;//with
  FreeReservedCodes(DMf.adcBSell);

      qrySource.Active:=True;
      qrySource.Edit;
      ShowModal;
      if qry.State in dsEditModes then begin
      end;//if
    end;//with
  finally
    FreeAndNil(ReleaseF);
  end;//try
end;


procedure TReleaseF.SpeedButton1Click(Sender: TObject);
var
  txt:  String;
  s:Boolean;
  Results:  array[0..1] of String;
begin
  inherited;
  txt:='SELECT CustID,CustName FROM Customers WHERE (CustomerGrpID IN('+qryinitPerson1Groups.AsString+
       ')) AND (OperatorID IS NULL OR OperatorID = '+IntToStr(user.id)+')'+
       ' ORDER BY CustID';
  s:=searchCode_ADOF.SearchCode2(DMF.adcBSell,qryinit.FieldByName('Person1Caption').AsString+'Â« ', txt,
    ['òœ','‰«„ '+qryinit.FieldByName('Person1Caption').AsString+''],
    Results,[50,150],alLeft);
  if s then begin
    if not (qryRecipts.state in dsEditModes) then   qryRecipts.edit;
    qryRecipts['PersonID1']:=Results[0];
//    if PnlPerson2.Visible then EdtPersonID2.SetFocus
  end;//if
end;

end.
