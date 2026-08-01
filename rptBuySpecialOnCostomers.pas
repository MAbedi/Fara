unit rptBuySpecialOnCostomers;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, ADODB, Grids, Vcl.DBGrids, ppDB, ppDBPipe, ppBands, ppClass,
  ppCtrls, ppReport, ppStrtch, ppSubRpt, ppVar, ppPrnabl, ppCache, ppComm,
  ppRelatv, ppProd, ComCtrls, DBCtrls, Mask, Menus, ppParameter, ppDesignLayer,
  System.ImageList, System.Actions;

type
  TrptBuySpecialOnCostomersF = class(Ttemplate2MDIF)
    BitBtn7: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    DBGrid1: TDBGrid;
    qryBuy: TADOQuery;
    SrcBuy: TDataSource;
    qryBuyReciptNumber: TIntegerField;
    qryBuyPersonID1: TIntegerField;
    qryBuypersonName1: TStringField;
    qryBuyReciptDate: TStringField;
    qryBuyRequestedEntity: TFloatField;
    qryBuyWaterCo: TFloatField;
    qryBuyInputEntity: TFloatField;
    qryBuyContactRate: TFloatField;
    qryBuyUnitSellPrice: TFMTBCDField;
    qryBuyTotalInputPrice: TBCDField;
    qryBuyPersonID2: TIntegerField;
    qryBuypersonName2: TStringField;
    actFilter: TAction;
    actPrint: TAction;
    actExcel: TAction;
    actSort: TAction;
    ppReport1: TppReport;
    qryBuyStoreID: TSmallintField;
    qryBuyReplaceRate1: TFloatField;
    qryBuyReplaceRate2: TFloatField;
    qryBuyReplaceRate3: TFloatField;
    qryBuyReplaceRate4: TFloatField;
    qryBuyReplaceRate5: TFloatField;
    qryBuyNameAmount1: TFloatField;
    qryBuyNameAmount2: TFloatField;
    qryBuyNameAmount3: TFloatField;
    qryBuyNameAmount4: TFloatField;
    qryBuyNameAmount5: TFloatField;
    StatusBar1: TStatusBar;
    ppDBPipeline1: TppDBPipeline;
    qryBuyshift: TIntegerField;
    qryBuyshiftName: TStringField;
    qryCust: TADOQuery;
    srccust: TDataSource;
    LblPerson1: TLabel;
    SpeedButton1: TSpeedButton;
    DBTextPersonID1: TDBText;
    EdtPersonID1: TDBEdit;
    DBNavigator1: TDBNavigator;
    qryCustPersonID1: TIntegerField;
    qryCustCustName: TStringField;
    qryBuyItemNote: TStringField;
    PopList4Print: TPopupMenu;
    AllClikPop: TMenuItem;
    N21: TMenuItem;
    ppHeaderBand1: TppHeaderBand;
    ppShape1: TppShape;
    ppLblCompanyName: TppLabel;
    ppLblCaption: TppLabel;
    ppLblPrintDate: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel7: TppLabel;
    ppLabel9: TppLabel;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDetailBand1: TppDetailBand;
    ppLine11: TppLine;
    ppLin4Position: TppLine;
    ppLabel6: TppLabel;
    ppDBText2: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppShape2: TppShape;
    ppLabel4: TppLabel;
    ppLabel8: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppShape3: TppShape;
    ppLabel2: TppLabel;
    ppLabel1: TppLabel;
    ppLabel3: TppLabel;
    ppLabel5: TppLabel;
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actExcelExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure qryBuyAfterOpen(DataSet: TDataSet);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure ppLblPrintDateGetText(Sender: TObject; var Text: String);
    procedure ppSysVarPageNoGetText(Sender: TObject; var Text: String);
    procedure ppDBText1GetText(Sender: TObject; var Text: String);
    procedure qryBuyNameAmount4GetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure ppDBText2GetText(Sender: TObject; var Text: String);
    procedure qryCustAfterScroll(DataSet: TDataSet);
    procedure SpeedButton1Click(Sender: TObject);
    procedure ppLblCaptionGetText(Sender: TObject; var Text: String);
    procedure FormCreate(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
     procedure AllPrint(Sender: TObject);
  private
     FormType:Integer;
     procedure setDisplayLabel;
     procedure  UpdateFilter;
     function  getTextShift:String;

    { Private declarations }
  public
    { Public declarations }
  end;

var
  rptBuySpecialOnCostomersF: TrptBuySpecialOnCostomersF;

implementation

uses DM, filter_ADO, FilterClass_ADO, sort2, search2,GlobalPro,
  searchCode_ADO;

{$R *.dfm}

procedure TrptBuySpecialOnCostomersF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
end;

procedure TrptBuySpecialOnCostomersF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1,3,True);
end;

procedure TrptBuySpecialOnCostomersF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self,myParams) do begin
    try
      AddItem(DMF.adcBSell,'ReciptDate','  «—ÌŒ ',' «—ÌŒ',ftDate,dvMinMax,'','',ciSimple, '',
        'Select  '''+APPBank.StartYear+''',Max(ReciptDate) from Recipts ');
      AddItem(dmf.adcBSell,'ReciptNumber',' ›—„ ','‘„«—Â',ftInteger,dvMinMax,'','',ciSimple,'','select Min(ReciptNumber),Max(ReciptNumber) From Recipts ');
      AddItem(DMf.adcBSell,'PersonID',' ‰«„ „‘ —Ì ','ﬂœ „‘ —Ì',ftInteger,dvMinMax,'','',ciLookup,
               'SELECT CustID,CustName FROM Customers WHERE (CustomerGrpID IN (SELECT CustomerGrpID FROM dbo.CustomersGroup )) ',
               'select Min(CustID),Max(CustID) From Customers WHERE (CustomerGrpID IN (SELECT CustomerGrpID  FROM   dbo.CustomersGroup ))');
      AddItem(dmf.adcBSell,'StoreID',' «‰»«— ','ﬂœ',ftInteger,dvMinMax,'','',ciLookup,LookupSQL4Store,MinMaxSQL4Store);
      if ShowModal=mrOk then begin
        GetFilterString;
        UpdateFilter;
      end;//if
    finally
     Free;
    end;//try
  end;//with
end;

procedure TrptBuySpecialOnCostomersF.UpdateFilter;
begin
  with qryBuy do begin
    Active:=False;
    Parameters.ParamByName('ReDateFrom').Value:=GetcFrom(myParams.ParamValues['ReciptDate'],ftDate);
    Parameters.ParamByName('ReDateTo').Value:=GetcTo(myParams.ParamValues['ReciptDate'],ftDate);
//    Parameters.ParamByName('StuffCodeFrom').Value:=GetcFrom(myParams.ParamValues['StuffCode'],ftLargeint);
//    Parameters.ParamByName('StuffCodeTo').Value:=GetcTo(myParams.ParamValues['StuffCode'],ftLargeint);
    Parameters.ParamByName('ReNumberFrom').Value:=GetcFrom(myParams.ParamValues['ReciptNumber'],ftInteger);
    Parameters.ParamByName('ReNumberTo').Value:=GetcTo(myParams.ParamValues['ReciptNumber'],ftInteger);
    Parameters.ParamByName('StoreIDFrom').Value:=GetcFrom(myParams.ParamValues['StoreID'],ftInteger);
    Parameters.ParamByName('StoreIDTo').Value:=GetcTo(myParams.ParamValues['StoreID'],ftInteger);
    Parameters.ParamByName('FormType').Value:=FormType;
  end;//with
  with qryCust do begin
    Active:=False;
    Parameters.ParamByName('PersonID1From').Value:=GetcFrom(myParams.ParamValues['PersonID'],ftInteger);
    Parameters.ParamByName('PersonID1To').Value:=GetcTo(myParams.ParamValues['PersonID'],ftInteger);
    Parameters.ParamByName('ReDateFrom').Value:=GetcFrom(myParams.ParamValues['ReciptDate'],ftDate);
    Parameters.ParamByName('ReDateTo').Value:=GetcTo(myParams.ParamValues['ReciptDate'],ftDate);
    Parameters.ParamByName('ReNumberFrom').Value:=GetcFrom(myParams.ParamValues['ReciptNumber'],ftInteger);
    Parameters.ParamByName('ReNumberTo').Value:=GetcTo(myParams.ParamValues['ReciptNumber'],ftInteger);
    Parameters.ParamByName('StoreIDFrom').Value:=GetcFrom(myParams.ParamValues['StoreID'],ftInteger);
    Parameters.ParamByName('StoreIDTo').Value:=GetcTo(myParams.ParamValues['StoreID'],ftInteger);
    Parameters.ParamByName('FormType').Value:=FormType;
    Active:=true;
  end;//with


  setDisplayLabel;
end;

procedure TrptBuySpecialOnCostomersF.setDisplayLabel;
var
 i:integer;
begin
  with DMf.qryTmpTmp do begin
     Active:=false;
      SQL.Text:='SELECT EffectID, EffectName FROM   dbo.PurchaseEffect';
     Active:=true;
     for i:=1 to 5 do begin
      qryBuy.FieldByName('NameAmount'+IntToStr(i)).DisplayLabel:=Fieldbyname('EffectName').AsString;
      next;
     end;
  end;
end;

procedure TrptBuySpecialOnCostomersF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryBuy);
end;

procedure TrptBuySpecialOnCostomersF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryBuy);
end;

procedure TrptBuySpecialOnCostomersF.actExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TrptBuySpecialOnCostomersF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  actFilter.Execute;
  if myParams.FindParam('ReciptDate')=nil then close;
end;

procedure TrptBuySpecialOnCostomersF.qryBuyAfterOpen(DataSet: TDataSet);
begin
  inherited;
  StatusBar1.Panels[0].Text:='„»·€ ﬂ· ='+CurrToStrF(CalcSumFileds(qryBuy,'TotalInputPrice'),ffCurrency,0);
  StatusBar1.Panels[1].Text:='„ﬁœ«— ‰Â«ÌÌ ='+CurrToStrF(CalcSumFileds(qryBuy,'InputEntity'),ffGeneral,3);
  StatusBar1.Panels[2].Text:='„ﬁœ«— ='+CurrToStrF(CalcSumFileds(qryBuy,'RequestedEntity'),ffGeneral,3);
end;

procedure TrptBuySpecialOnCostomersF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text:=APPBank.CompanyName;
end;

procedure TrptBuySpecialOnCostomersF.ppLblPrintDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text:=GetPrintDate;
end;

procedure TrptBuySpecialOnCostomersF.ppSysVarPageNoGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text:=GetPageNumberString(Text)
end;

function TrptBuySpecialOnCostomersF.getTextShift;
begin
 if qryBuyshift.AsString <>'' then
  with DMf.qryTmpTmp do begin
    Active:=false;
    SQL.Text:='SELECT LookUpID,Name FROM LookUps WHERE(Kind = 251) and (LookUpID='+qryBuyshift.AsString+') ORDER BY Code';
    Active:=True;
    Result:=Fieldbyname('Name').AsString;
    Active:=false;
  end;//with
end;

procedure TrptBuySpecialOnCostomersF.ppDBText1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text:=getTextShift;
end;

procedure TrptBuySpecialOnCostomersF.qryBuyNameAmount4GetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  Text:=getTextShift;
end;

procedure TrptBuySpecialOnCostomersF.ppDBText2GetText(Sender: TObject;
  var Text: String);
var
 oil:real;
begin
  inherited;
  oil:=qryBuyNameAmount1.AsInteger-3.2;
  if oil<0 then  begin
    oil:=ABs(oil);
    text:='('+FloatToStr(oil)+')';
  end else
   Text:=FloatToStr( oil);;

end;

procedure TrptBuySpecialOnCostomersF.qryCustAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qryBuy do begin
    Active:=False;
    Parameters.ParamByName('PersonID1From').Value:=qryCust.fieldbyname('PersonID1').AsInteger ;
    Parameters.ParamByName('PersonID1To').Value:= qryCust.fieldbyname('PersonID1').AsInteger ;
    Active:=True;
  end;//with
end;

procedure TrptBuySpecialOnCostomersF.SpeedButton1Click(Sender: TObject);
var
  b:Boolean;
  Results:  array[0..1] of String;
  Txt:String;
begin
  inherited;
   Txt:='SELECT Recipts.PersonID1,Customers.CustName  FROM  Recipts RIGHT OUTER JOIN '+
        'Customers ON Recipts.PersonID1 = Customers.CustID '+
        'WHERE  (dbo.Recipts.ReciptNumber BETWEEN '+
        IntToStr(qryCust.Parameters.ParamByName('ReNumberFrom').Value)+' AND '+
        IntToStr(qryCust.Parameters.ParamByName('ReNumberTo').Value)+
        ' )and(dbo.Recipts.ReciptDate BETWEEN '''+
        qryCust.Parameters.ParamByName('ReDateFrom').Value+''' AND '''+
        qryCust.Parameters.ParamByName('ReDateTo').Value+
        ''')and (dbo.Recipts.PersonID1 BETWEEN '+
        IntToStr(qryCust.Parameters.ParamByName('PersonID1From').Value)+' AND '+
        IntToStr(qryCust.Parameters.ParamByName('PersonID1To').Value)+
        ' )and (dbo.Recipts.StoreID BETWEEN '+
        IntToStr(qryCust.Parameters.ParamByName('StoreIDFrom').Value)+' AND '+
        IntToStr(qryCust.Parameters.ParamByName('StoreIDTo').Value)+
        ' )and(dbo.Recipts.ReciptType=8)GROUP BY Recipts.PersonID1, Customers.CustName';


  b:=searchCode_ADOF.SearchCode2(DMF.adcBSell,'„‘ —Ì«‰',Txt,['òœ','‰«„ '],Results,[50,150],alLeft);
  if b then begin
    qryCust.Locate('PersonID1',Results[0],[]);
  end;//if
end;

procedure TrptBuySpecialOnCostomersF.ppLblCaptionGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text:=Caption;
end;

procedure TrptBuySpecialOnCostomersF.FormCreate(Sender: TObject);
begin
  inherited;
  FormType:=var_glb_gParam;
  with DMf.qryTmpTmp do begin
    Active:=false;
    SQL.Text:='SELECT ReciptCaption FROM ReciptTypes WHERE ReciptType='+
                                                       IntToStr(FormType);
    Active:=True;
    Self.Caption:='ê“«—‘ '+Fieldbyname('ReciptCaption').AsString;
    Active:=false;
  end;//with
end;

procedure TrptBuySpecialOnCostomersF.AllPrint(Sender: TObject);
begin
try
   qryBuy.DisableControls;
  case (Sender as TMenuItem).Tag of
    0:
       InitReportFile(ppReport1,'rptBuySpesial_2',True);
      // myInitReportFile('rptBuySpesial_2.rtm',5);

    1: InitReportFile(ppReport1,'rptBuySpesial',True);
      //  myInitReportFile('rptBuySpesial.rtm',5);
    end;
    finally
   qryBuy.EnableControls;
  end;

end;

procedure TrptBuySpecialOnCostomersF.actPrintExecute(Sender: TObject);
begin
  inherited;
   PopList4Print.Popup(Mouse.CursorPos.X,Mouse.CursorPos.Y);
end;

end.
