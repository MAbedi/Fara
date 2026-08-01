unit StuffToStore2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, DB, ADODB, ImgList, DBActns, ActnList, StdCtrls,
  ExtCtrls, Buttons, Mask, DBCtrls, Grids, DBGrids, ComCtrls;

type
  TStuffToStore2F = class(Ttemplate2MDIF)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    Label12: TLabel;
    DBEdit12: TDBEdit;
    Label13: TLabel;
    DBEdit13: TDBEdit;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    qry_LookPurchaseEffect: TADOQuery;
    qry_LookPurchaseEffectEffectID: TIntegerField;
    qry_LookPurchaseEffectEffectName: TStringField;
    qry_LookPurchaseEffectCoefficient: TFloatField;
    qry_LookPurchaseEffectAmountRate: TFloatField;
    newPanel: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    okPanel: TPanel;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn9: TBitBtn;
    qry_LookStore: TADOQuery;
    qry_LookPerson: TADOQuery;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    qry_LookStuff: TADOQuery;
    qryEffect: TADOQuery;
    srcEffect: TDataSource;
    qryEffectEffectID: TIntegerField;
    qryEffectAmount: TFloatField;
    qryEffectReplaceRate: TFloatField;
    qryEffectReciptItemID: TIntegerField;
    StatusBar1: TStatusBar;
    DBNavigator1: TDBNavigator;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    qryRecipts: TADOQuery;
    srcRecipts: TDataSource;
    qryReciptsReciptID: TIntegerField;
    qryReciptsStoreID: TSmallintField;
    qryReciptsReciptNumber: TIntegerField;
    qryReciptsReciptDate: TStringField;
    qryReciptsPersonID1: TIntegerField;
    qryReciptsPersonID2: TIntegerField;
    qryReciptsReciptType: TWordField;
    qryReciptsSecondType: TWordField;
    qryReciptsTotalValue: TBCDField;
    qryReciptsReciptNote: TStringField;
    qryReciptsParentReciptID: TIntegerField;
    qryReciptsOperatorID: TIntegerField;
    qryReciptsModifyDate: TDateTimeField;
    qryReciptsReciptState: TWordField;
    qryReciptsUseUnitID: TIntegerField;
    qryRecipts_storeName: TStringField;
    qryRecipts_person1Name: TStringField;
    qryRecipts_person2Name: TStringField;
    qryEffect_effectName: TStringField;
    qryReplaceRate: TADOQuery;
    qryEffectPurchaseID: TIntegerField;
    actSort: TAction;
    actExcel: TAction;
    qryReciptsReciptItemID: TIntegerField;
    qryReciptsStuffCode: TIntegerField;
    qryReciptsRequestedEntity: TFloatField;
    qryReciptsRequestedWeight: TFloatField;
    qryReciptsControlCode: TLargeintField;
    qryReciptsTotalInputPrice: TBCDField;
    qryReciptsTotalOutputPrice: TBCDField;
    qryReciptsUnitSellPrice: TFMTBCDField;
    qryReciptsTotallSellPrice: TBCDField;
    qryReciptsItemNote: TStringField;
    qryReciptsOrderState: TWordField;
    qryReciptsContactRate: TFloatField;
    qryReciptsWaterCo: TFloatField;
    qryReciptsReciptID_1: TIntegerField;
    qryReciptsPersonID1_1: TIntegerField;
    qryReciptsUseUnitID_1: TIntegerField;
    qryReciptsInputEntity: TFloatField;
    qryRecipts_stuffName: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure qryReciptItemsAfterInsert(DataSet: TDataSet);
    procedure qryReciptsAfterInsert(DataSet: TDataSet);
    procedure qryReciptsAfterPost(DataSet: TDataSet);
    procedure qryEffectAmountChange(Sender: TField);
    procedure qryEffectAfterScroll(DataSet: TDataSet);
    procedure srcReciptsStateChange(Sender: TObject);
    procedure qryEffectAfterPost(DataSet: TDataSet);
    procedure qryReciptItemsBeforeEdit(DataSet: TDataSet);
    procedure qryReciptsBeforeDelete(DataSet: TDataSet);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure qryReciptsBeforePost(DataSet: TDataSet);
    procedure qryEffectBeforePost(DataSet: TDataSet);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit5KeyPress(Sender: TObject; var Key: Char);
    procedure qryReciptsAfterScroll(DataSet: TDataSet);
    procedure BitBtn5Click(Sender: TObject);
  private
   insert:boolean;
   formtype:byte;
   procedure insertEffect;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  StuffToStore2F: TStuffToStore2F;

implementation

uses DM,mmessage,GlobalPro, searchCode_ADO;

{$R *.dfm}

procedure TStuffToStore2F.FormCreate(Sender: TObject);
begin
  inherited;
  formtype:=var_glb_gParam;
  qryRecipts.Active:=true;
  qryEffect.Active:=true;
  insert:=false;
end;

procedure TStuffToStore2F.insertEffect;
begin
   insert:=true;
   with DMf.qryTmpTmp do begin
    Active:=false;
    SQL.Text:='SELECT  dbo.PurchaseEffect.*  FROM  dbo.PurchaseEffect';
    Active:=true;
    while not Eof do begin
      qryEffect.Insert;
      qryEffect.FieldByName('PurchaseID').AsInteger:=GetANewCode('ReciptPurchaseEffect','PurchaseID');
      qryEffect.FieldByName('EffectID').AsInteger:=FieldByName('EffectID').AsInteger;
      qryEffect.FieldByName('ReciptItemID').AsInteger:=qryRecipts.FieldByName('ReciptItemID').AsInteger;
      qryEffect.FieldByName('Amount').AsInteger:=0;
      qryEffect.FieldByName('ReplaceRate').AsInteger:=0;
      qryEffect.post;
      next;
    end;
   end;
end;

procedure TStuffToStore2F.qryReciptItemsAfterInsert(DataSet: TDataSet);
begin
  inherited;
//__________set reciptitem
  DataSet.FieldByName('ReciptItemID').AsInteger:=GetANewCode('ReciptItems','ReciptItemID');

end;

procedure TStuffToStore2F.qryReciptsAfterInsert(DataSet: TDataSet);
var
 txt:string;
begin
  inherited;
  DataSet.FieldByName('ReciptType').AsInteger := formtype ;
  DataSet.FieldByName('ReciptID').AsInteger:=GetANewCode('Recipts','ReciptID');
  Txt:='SELECT MAX(ReciptNumber)FROM Recipts WHERE(ReciptType='+IntToStr(formType)+')';
//  IF FilterStore THEN Txt:=Txt+'AND(StoreID='+IntToStr(myStore.code)+')';
  DataSet.FieldByName('ReciptNumber').AsInteger:=GetANewCode(Txt,'ReciptNumber');
  DataSet.FieldByName('ReciptDate').AsString := var_glb_CurrentDate ;
  DataSet.FieldByName('ModifyDate').AsString := var_glb_CurrentDate ;
  DataSet.FieldByName('OperatorID').AsInteger:=User.id;

  DataSet.FieldByName('ReciptItemID').AsInteger:=GetANewCode('ReciptItems','ReciptItemID');
  insertEffect;
end;

procedure TStuffToStore2F.qryReciptsAfterPost(DataSet: TDataSet);
begin
  inherited;

  qryEffect.UpdateBatch();
end;

procedure TStuffToStore2F.qryEffectAmountChange(Sender: TField);
begin
  inherited;
//   with DMf.qryTmpTmp do begin
//    Active:=false;
//     SQL.Text:='SELECT  dbo.PurchaseEffect.*  FROM  dbo.PurchaseEffect where EffectID='+qryEffect.FieldByName('EffectID').AsString;
//    Active:=true;
    qryEffect.FieldByName('ReplaceRate').AsInteger:=(qryEffect.FieldByName('amount').AsInteger-qryReplaceRate.FieldByName('AmountRate').AsInteger)*qryReplaceRate.FieldByName('Coefficient').AsInteger;
    //  end;
end;

procedure TStuffToStore2F.qryEffectAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qryReplaceRate do begin
   Active:=false;
    Parameters.ParamByName('EffectID').Value:=DataSet.Fieldbyname('EffectID').AsInteger;
   Active:=true;
  end;

end;

procedure TStuffToStore2F.srcReciptsStateChange(Sender: TObject);
begin
  inherited;
  inherited;
  okPanel.Visible:=qryRecipts.State in dsEditModes;
  newPanel.Visible:=not okPanel.Visible;
  BtnReject.Cancel:=newPanel.Visible;
  FreeReservedCodes(DMf.adcBSell);
end;

procedure TStuffToStore2F.qryEffectAfterPost(DataSet: TDataSet);
begin
  inherited;
  StatusBar1.Panels[0].Text:=CurrToStrF(CalcSumFileds(qryEffect,'ReplaceRate'),ffGeneral,3);
end;

procedure TStuffToStore2F.qryReciptItemsBeforeEdit(DataSet: TDataSet);
begin
  inherited;
//  IF not(qryRecipts.State IN [dsedit]) then qryRecipts.Edit;
end;

procedure TStuffToStore2F.qryReciptsBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  with dmf.qryTmpTmp do begin
    Active:=false;
     SQL.Text:='SELECT * FROM dbo.ReciptPurchaseEffect where  ReciptItemID=:ReciptItemID';
     Parameters.ParamByName('ReciptItemID').Value:=DataSet.Fieldbyname('ReciptItemID').AsInteger;
    Active:=true;
    while not eof do begin
      Delete;
      Next;
    end;
  end;
end;

procedure TStuffToStore2F.SpeedButton1Click(Sender: TObject);
var
  s:Boolean;
  Results:  array[0..1] of String;
begin
  inherited;
  s:=searchCode_ADOF.SearchCode2(DMF.adcBSell,'„‘ —Ì Â«','SELECT n_StoreID, c_StoreName FROM Stores '
                                                       ,['òœ','‰«„ '],Results,[50,150],alLeft);
  if s then begin
    if not(qryRecipts.State in [dsedit]) then qryRecipts.Edit;
    qryRecipts['StoreID']:=Results[0];
  end;//if

end;

procedure TStuffToStore2F.SpeedButton2Click(Sender: TObject);
var
  s:Boolean;
  Results:  array[0..1] of String;
begin
  inherited;
  s:=searchCode_ADOF.SearchCode2(DMF.adcBSell,'„‘ —Ì Â«','SELECT custID,CustName FROM dbo.Customers '
                                 ,['òœ','‰«„ '],Results,[50,150],alLeft);
  if s then begin
    if not(qryRecipts.State in [dsedit]) then qryRecipts.Edit;
    qryRecipts['PersonID1']:=Results[0];
  end;//if
end;

procedure TStuffToStore2F.SpeedButton3Click(Sender: TObject);
var
  s:Boolean;
  Results:  array[0..1] of String;
begin
  inherited;
  s:=searchCode_ADOF.SearchCode2(DMF.adcBSell,'„‘ —Ì Â«','SELECT custID,CustName FROM dbo.Customers '
                                 ,['òœ','‰«„ '],Results,[50,150],alLeft);
  if s then begin
    if not(qryRecipts.State in [dsedit]) then qryRecipts.Edit;
    qryRecipts['PersonID2']:=Results[0];
  end;//if
end;

procedure TStuffToStore2F.SpeedButton4Click(Sender: TObject);
var
  s:Boolean;
  Results:  array[0..1] of String;
begin
  inherited;
  s:=searchCode_ADOF.SearchCode2(DMF.adcBSell,'„‘Œ’«  ﬂ«·«Â«','SELECT c_StuffCode, c_StuffName FROM  dbo.StuffCoding '
                                 ,['òœ','‰«„ '],Results,[50,150],alLeft);
  if s then begin
    if not(qryRecipts.State in [dsedit]) then begin
     qryRecipts.Edit;
    end;
    qryRecipts['StuffCode']:=Results[0];
  end;//if
end;

procedure TStuffToStore2F.qryReciptsBeforePost(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('InputEntity').AsInteger:=(100-DataSet.FieldByName('WaterCo').AsInteger)*DataSet.FieldByName('RequestedEntity').AsInteger;
  DataSet.FieldByName('UnitSellPrice').AsInteger:=StrToInt(StatusBar1.Panels[0].Text)+DataSet.FieldByName('ContactRate').AsInteger;
  DataSet.FieldByName('TotalInputPrice').AsInteger:=DataSet.FieldByName('InputEntity').AsInteger*DataSet.FieldByName('UnitSellPrice').AsInteger;
  DataSet.FieldByName('PersonID1_1').AsInteger:=qryRecipts.FieldByName('PersonID1').AsInteger ;
  DataSet.FieldByName('ReciptID_1').AsInteger:=qryRecipts.FieldByName('ReciptID').AsInteger;

  if not CheckRequiredFields(qryRecipts) then Abort;
end;

procedure TStuffToStore2F.qryEffectBeforePost(DataSet: TDataSet);
begin
  inherited;
  if not CheckRequiredFields(qryEffect) then Abort;
end;

procedure TStuffToStore2F.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key=#32 then
    SpeedButton1.Click;
end;

procedure TStuffToStore2F.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key=#32 then
    SpeedButton2.Click;
end;

procedure TStuffToStore2F.DBEdit4KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key=#32 then
    SpeedButton3.Click;
end;

procedure TStuffToStore2F.DBEdit5KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key=#32 then
    SpeedButton4.Click;
end;

procedure TStuffToStore2F.qryReciptsAfterScroll(DataSet: TDataSet);
begin
  inherited;
//  if not insert then
//    with qryEffect do begin
//      Active:=false;
//       Parameters.ParamByName('ReciptItemID').Value:=DataSet.fieldbyname('ReciptItemID').AsInteger;
//     Active:=true;
//    end;
//  insert:=false;
//  StatusBar1.Panels[0].Text:=CurrToStrF(CalcSumFileds(qryEffect,'ReplaceRate'),ffGeneral,3);
end;

procedure TStuffToStore2F.BitBtn5Click(Sender: TObject);
begin
  inherited;
  with qryRecipts do begin
   Active:=false;
    SQL.Text:='SELECT dbo.Recipts.*,  dbo.ReciptItems.* FROM   dbo.Recipts INNER JOIN ' +
              ' dbo.ReciptItems ON dbo.Recipts.ReciptID = dbo.ReciptItems.ReciptID';
   Active:=true;
  end;
  DataSetDelete1_.Execute;
  with qryRecipts do begin
   Active:=false;
    SQL.Text:='SELECT dbo.ReciptItems.*,dbo.Recipts.*  FROM   dbo.Recipts INNER JOIN ' +
              ' dbo.ReciptItems ON dbo.Recipts.ReciptID = dbo.ReciptItems.ReciptID';
   Active:=true;
  end;
end;

end.

