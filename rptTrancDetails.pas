// mahmood
unit rptTrancDetails;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, ADODB, DBCtrls, ComCtrls, ppBands,
  ppClass, ppCtrls, ppReport, ppStrtch, ppSubRpt, ppVar, ppPrnabl, ppCache,
  ppProd, ppDB, ppComm, ppRelatv, ppDBPipe, ppParameter, ppTxPipe,
  Filter_ADO_Const, ppDesignLayer, System.ImageList, System.Actions,
  FarsiReportBuilde, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, CedarDbGrid;

type
  TrptTrancDetailsF = class(Ttemplate2MDIF)
    qryCustStuff: TADOQuery;
    SrcCustStuff: TDataSource;
    qryCustStuffPersonID1: TIntegerField;
    qryCustStuffReciptID: TIntegerField;
    qryCustStuffReciptNumber: TIntegerField;
    qryCustStuffReciptDate: TStringField;
    qryCustStuffReciptType: TWordField;
    qryCustStuffReciptCaption: TStringField;
    qryCustStuffc_StuffName: TStringField;
    qryCustStuffUnitName: TStringField;
    qryCustStuffStuffSize: TStringField;
    qryCustStuffStuffAlloy: TStringField;
    qryCustStuffentity: TFloatField;
    qryCustStuffweight: TFloatField;
    qryCustStuffbed: TBCDField;
    qryCustStuffbes: TBCDField;
    qryCustStuffkind: TIntegerField;
    qryCustStuffStoreID: TSmallintField;
    qryCustStuffcustname: TStringField;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn4: TBitBtn;
    DBNavigator2: TDBNavigator;
    BitBtn2: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn3: TBitBtn;
    actFilter: TAction;
    LblLimit: TLabel;
    qryCustStuffStuffDiameter: TFloatField;
    StatusBar1: TStatusBar;
    qryCustStuffControlCode: TLargeintField;
    ppReport1: TppReport;
    actPrint: TAction;
    actSendExel: TAction;
    actShowForms: TAction;
    actSort: TAction;
    qryCustStuffItemNote: TStringField;
    qryCustStuffItemPersonID: TIntegerField;
    qryCustStuffItemPersonName: TStringField;
    qryCustStuffUnitSellPrice: TFMTBCDField;
    ppHeaderBand1: TppHeaderBand;
    ppShape1: TppShape;
    ppLblCompanyName: TppLabel;
    ppLblFormName: TppLabel;
    ppLine1: TppLine;
    ppLblPrintDate: TppLabel;
    ppSysVarPageNumber: TppSystemVariable;
    ppLine6: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLblDate: TppLabel;
    ppLine7: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLine50: TppLine;
    ppLine51: TppLine;
    ppLabel1: TppLabel;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLabel6: TppLabel;
    ppLabel3: TppLabel;
    ppLblCustname2: TppLabel;
    ppLblCustomerID2: TppLabel;
    ppLblCustname1: TppLabel;
    ppLabel10: TppLabel;
    ppLabel32: TppLabel;
    ppLabel9: TppLabel;
    ppLabel17: TppLabel;
    ppLabel5: TppLabel;
    ppLabel2: TppLabel;
    ppLine5: TppLine;
    ppLine4: TppLine;
    ppLabel4: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText6: TppDBText;
    ppDBText1: TppDBText;
    ppDBText9: TppDBText;
    ppDBText2: TppDBText;
    ppDBText23: TppDBText;
    ppDBText13: TppDBText;
    ppDBText3: TppDBText;
    ppDBText8: TppDBText;
    ppDBText4: TppDBText;
    ppDBText11: TppDBText;
    ppDBText19: TppDBText;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppLine25: TppLine;
    ppLine33: TppLine;
    ppLine2: TppLine;
    ppLine10: TppLine;
    ppLine43: TppLine;
    ppLine44: TppLine;
    ppLine46: TppLine;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppLine14: TppLine;
    ppLine3: TppLine;
    ppLine13: TppLine;
    ppDBText10: TppDBText;
    ppDBText5: TppDBText;
    ppLine19: TppLine;
    ppFooterBand1: TppFooterBand;
    ppShape5: TppShape;
    ppLine35: TppLine;
    ppDBCalc16: TppDBCalc;
    ppLine36: TppLine;
    ppDBCalc18: TppDBCalc;
    ppLine37: TppLine;
    ppDBCalc19: TppDBCalc;
    ppDBCalc20: TppDBCalc;
    ppLine38: TppLine;
    ppLabel18: TppLabel;
    ppDBCalc17: TppDBCalc;
    ppLabel16: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppShape2: TppShape;
    ppLine20: TppLine;
    ppDBCalc1: TppDBCalc;
    ppLine21: TppLine;
    ppDBCalc2: TppDBCalc;
    ppLine24: TppLine;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppLine26: TppLine;
    ppLabel7: TppLabel;
    ppDBCalc5: TppDBCalc;
    ppLabel8: TppLabel;
    ppLblSum: TppLabel;
    ppLabel11: TppLabel;
    ppLine27: TppLine;
    ppDBText7: TppDBText;
    ppLine28: TppLine;
    ppDBCalc6: TppDBCalc;
    ppLine29: TppLine;
    ppDBCalc7: TppDBCalc;
    ppLine30: TppLine;
    qryCustStuffServerID: TIntegerField;
    qryCustStuffYearID: TIntegerField;
    qryCustStuffStuffCode: TLargeintField;
    qry4backup: TADOQuery;
    qryCustStuffSecondName: TStringField;
    qryCustStuffPersonID2: TIntegerField;
    qryCustStuffCustName2: TStringField;
    qryCustStuffPersonID3: TIntegerField;
    qryCustStuffCustName3: TStringField;
    qryCustStuffSellsMethod: TIntegerField;
    qryCustStuffSellsMethodName: TWideStringField;
    ppDBPipeline1: TppDBPipeline;
    DBGrid1: TCedarDbgrid;
    qryCustStuffSellsEmporium: TIntegerField;
    qryCustStuffSellsEmporiumName: TWideStringField;
    qryCustStuffDeficitValue: TBCDField;
    qryCustStuffDeficitValue2: TBCDField;
    qryCustStuffDeficitValue3: TBCDField;
    qryCustStuffDeficitValue4: TBCDField;
    qryCustStuffTotalDeficient: TFloatField;
    qryCustStuffTaxValue: TBCDField;
    qryCustStuffTotalPrice: TFMTBCDField;
    qryCustStuffTotallSellPrice: TFMTBCDField;
    procedure actFilterExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure qryCustStuffAfterOpen(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure ppSysVarPageNumberGetText(Sender: TObject; var Text: String);
    procedure ppLblPrintDateGetText(Sender: TObject; var Text: String);
    procedure ppLblDateGetText(Sender: TObject; var Text: String);
    procedure actSendExelExecute(Sender: TObject);
    procedure actShowFormsExecute(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure ppLblSumGetText(Sender: TObject; var Text: String);
    procedure ppLblFormNameGetText(Sender: TObject; var Text: String);
  private
    { Private declarations }
    OrginalSQL: String;
    procedure UpdateFilter;
  public
    { Public declarations }
  end;

var
  rptTrancDetailsF: TrptTrancDetailsF;
  FormType: Integer;

implementation

uses filter_ADO, FilterClass_ADO, GlobalPro, DM,
  search2, sort2, FormFunctions;

{$R *.dfm}

procedure TrptTrancDetailsF.UpdateFilter;
var
  s: String;
begin
  // PriceOnStoreType(GetcFrom(myParams.ParamValues['StoreID'],ftInteger),DBGrid1);
  if opt.StuffKindActive then
    s := GetcFrom(myParams.ParamValues['StuffKindActive'], ftString);
  if s = '' then
    s := '0,1';
  qryCustStuff.SQL.Text := StringReplace(OrginalSQL, ':StuffKindActive', s,
    [rfReplaceAll]);

  with qryCustStuff do
  begin
    Active := False;
    if opt.AidInfoAvailable then
    begin
      Parameters.ParamByName('DiameterFrom').Value :=
        GetcFrom(myParams.ParamValues['StuffDiameter'], ftFloat);
      Parameters.ParamByName('Diameterto').Value :=
        GetcTo(myParams.ParamValues['StuffDiameter'], ftFloat);
    end
    else
    begin
      Parameters.ParamByName('DiameterFrom').Value := 0;
      Parameters.ParamByName('Diameterto').Value := 2147483647;
    end;
    Parameters.ParamByName('ItemPersonIDFrom').Value :=
      GetcFrom(myParams.ParamValues['ItemPersonID'], ftInteger);
    Parameters.ParamByName('ItemPersonIDTo').Value :=
      GetcTo(myParams.ParamValues['ItemPersonID'], ftInteger);

    Parameters.ParamByName('PersonIDFrom').Value :=
      GetcFrom(myParams.ParamValues['PersonID'], ftInteger);
    Parameters.ParamByName('PersonIDTo').Value :=
      GetcTo(myParams.ParamValues['PersonID'], ftInteger);

    Parameters.ParamByName('PersonID2From').Value :=
      GetcFrom(myParams.ParamValues['PersonID2'], ftInteger);
    Parameters.ParamByName('PersonID2To').Value :=
      GetcTo(myParams.ParamValues['PersonID2'], ftInteger);

    Parameters.ParamByName('NotStuffCode1').Value :=
      GetcNot(myParams.ParamValues['StuffCode']);
    Parameters.ParamByName('NotStuffCode2').Value :=
      GetcNot(myParams.ParamValues['StuffCode']);

    Parameters.ParamByName('INStuffCode1').Value :=
      GetcSelected(myParams.ParamValues['StuffCode']);
    Parameters.ParamByName('INStuffCode2').Value :=
      GetcSelected(myParams.ParamValues['StuffCode']);

    Parameters.ParamByName('StuffCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['StuffCode'], ftLargeint);
    Parameters.ParamByName('StuffCodeTo').Value :=
      GetcTo(myParams.ParamValues['StuffCode'], ftLargeint);
    Parameters.ParamByName('DateFrom').Value :=
      GetcFrom(myParams.ParamValues['ReciptDate'], ftDate);
    Parameters.ParamByName('DateTo').Value :=
      GetcTo(myParams.ParamValues['ReciptDate'], ftDate);
    LblLimit.Caption :=
    // '«“ „‘ —Ì '+IntToStr(ParamByName('PersonIDFrom1').Value)+'  « '+IntToStr(ParamByName('PersonIDTo1').Value)+'    '+
      '«“  «—ÌŒ ' + Parameters.ParamByName('DateFrom').Value + '  « ' +
      Parameters.ParamByName('DateTo').Value;
    Parameters.ParamByName('ControlCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['ControlCode'], ftLargeint);
    Parameters.ParamByName('ControlCodeTo').Value :=
      GetcTo(myParams.ParamValues['ControlCode'], ftLargeint);

    Parameters.ParamByName('SecondTypeFrom').Value :=
      GetcFrom(myParams.ParamValues['SecondType'], ftInteger);
    Parameters.ParamByName('SecondTypeTo').Value :=
      GetcTo(myParams.ParamValues['SecondType'], ftInteger);

    Parameters.ParamByName('SellsMethodFrom').Value :=
      GetcFrom(myParams.ParamValues['SellsMethod'], ftInteger);
    Parameters.ParamByName('SellsMethodTo').Value :=
      GetcTo(myParams.ParamValues['SellsMethod'], ftInteger);

    Parameters.ParamByName('SellsEmporiumFrom').Value :=
      GetcFrom(myParams.ParamValues['SellsEmporium'], ftInteger);
    Parameters.ParamByName('SellsEmporiumTo').Value :=
      GetcTo(myParams.ParamValues['SellsEmporium'], ftInteger);

    Active := True;
  end; // with
end;

procedure TrptTrancDetailsF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
    try
      AddItemFilter(GetFilter, TFilterSellsEmporium);
      AddItemFilter(GetFilter, TFilterSellsMethod);

      AddItem(dmF.adcBSell, 'SecondType', '‰Ê⁄ «ÿ·«⁄«  ', 'ﬂœ «ÿ·«⁄«  ',
        ftInteger, dvMinMax, '', '', ciLookup,
        'SELECT DISTINCT LookUps.Code as Code, LookUps.Name as Name FROM Recipts '
        + 'INNER JOIN LookUps ON Recipts.SecondType = LookUps.LookUpID ',
        'SELECT MIN(Code),999999999 FROM LookUps ');

      if opt.StuffKindActive then
        AddItem(dmF.adcBSell, 'StuffKindActive', '‰Ê⁄ ﬂ«·«', '', ftUnknown,
          dvDefaults, 'True', '', ciCheck,
          'SELECT  0 as OwnerShipKind,''ﬁÿ⁄Ì''  as OwnerShipKindName FROM  Config union all '
          + 'SELECT  1 as OwnerShipKind,''«„«‰Ì'' as OwnerShipKindName FROM  Config ',
          '');
      AddItemFilter(GetFilter, TFilterControlCode);

      AddItem(dmF.adcBSell, 'ItemPersonID', ' ‰«„ ÅﬂÌ‰ê ', 'ﬂœ ÅﬂÌ‰ê',
        ftInteger, dvMinMax, '', '', ciLookup,
        'SELECT CustID,CustName FROM Customers WHERE (CustomerGrpID IN (SELECT CustomerGrpID FROM dbo.CustomersGroup WHERE (GroupType = 4))) ',
        'SELECT 0,Max(CustID) From Customers ');
      if opt.AidInfoAvailable then
        AddItem(dmF.adcBSell, 'StuffDiameter', '÷Œ«„ ', '÷Œ«„ ', ftFloat,
          dvMinMax, '', '', ciSimple, '',
          'Select Min(StuffDiameter),max(StuffDiameter) from ReciptItems');

      AddItem(dmF.adcBSell, 'PersonID2', ' ‰«„ „‘ —Ì2 ', 'ﬂœ „‘ —Ì2', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT CustID,CustName FROM Customers WHERE (CustomerGrpID IN (SELECT CustomerGrpID FROM dbo.CustomersGroup WHERE (GroupType = 0))) ',
        'SELECT 0,Max(CustID) From Customers WHERE (CustomerGrpID IN (SELECT CustomerGrpID  FROM   dbo.CustomersGroup WHERE (GroupType = 0)))');

      AddItem(dmF.adcBSell, 'PersonID', ' ‰«„ „‘ —Ì ', 'ﬂœ „‘ —Ì', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT CustID,CustName FROM Customers WHERE (CustomerGrpID IN (SELECT CustomerGrpID FROM dbo.CustomersGroup WHERE (GroupType = 0))) ',
        'SELECT 0,Max(CustID) From Customers WHERE (CustomerGrpID IN (SELECT CustomerGrpID  FROM   dbo.CustomersGroup WHERE (GroupType = 0)))');

      AddItemFilter(GetFilter, TFilterStuffCode, True);
      // AddItem(DMf.adcBSell, 'StuffCode', 'ﬂ«·«', 'ﬂœ', ftLargeint, dvMinMax, '',
      // '', ciLookup, 'SELECT c_StuffCode,c_StuffName FROM  StuffCoding ',
      // 'select Min(c_StuffCode),Max(c_StuffCode) From StuffCoding');

      AddItem(dmF.adcBSell, 'ReciptDate', '  «—ÌŒ ', ' «—ÌŒ', ftDate, dvMinMax,
        '', '', ciSimple, '', 'Select  ''' + APPBank.StartYear +
        ''',Max(ReciptDate) from Recipts ');

      if ShowModal = mrOk then
      begin
        GetFilterString;
        UpdateFilter;
      end; // if
    finally
      Free;
    end; // try
end;

procedure TrptTrancDetailsF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  actFilter.Execute;
  if myParams.FindParam('ReciptDate') = nil then
    close;
end;

procedure TrptTrancDetailsF.qryCustStuffAfterOpen(DataSet: TDataSet);
var
  bes, bed: Currency;
begin
  inherited;
  StatusBar1.Panels[5].Text := IntToStr(qryCustStuff.RecordCount);
  if opt.EntityDisplay then
    StatusBar1.Panels[4].Text := '„ﬁœ«—=' +
      CurrToStr(CalcSumFileds(qryCustStuff, 'entity'));
  if opt.WeightDisplay then
    StatusBar1.Panels[3].Text := 'Ê“‰=' +
      CurrToStr(CalcSumFileds(qryCustStuff, 'weight'));
  if PriceOnStoreType(qryCustStuff.Fieldbyname('StoreID').AsInteger, DBGrid1,
    qryCustStuff) then
    if (FormType = 12) then
    begin
      bes := CalcSumFileds(qryCustStuff, 'bes');
      StatusBar1.Panels[2].Text := '»—ê‘ Ì=' + CurrToStrF(bes, ffCurrency, 0);
      bed := CalcSumFileds(qryCustStuff, 'bed');
      StatusBar1.Panels[1].Text := '«—“‘ ›—Ê‘ —› Â=' +
        CurrToStrF(bed, ffCurrency, 0);
      StatusBar1.Panels[0].Text := 'Œ«·’ ›—Ê‘ —› Â=' + CurrToStrF(bed - bes,
        ffCurrency, 0);
    end
    else
    begin
      StatusBar1.Panels[1].Text := '«—“‘ ’«œ—Â=' +
        CurrToStrF(CalcSumFileds(qryCustStuff, 'bed'), ffCurrency, 0);
      StatusBar1.Panels[0].Text := '«—“‘ Ê«—œÂ=' +
        CurrToStrF(CalcSumFileds(qryCustStuff, 'bes'), ffCurrency, 0);
    end;
end;

procedure TrptTrancDetailsF.FormCreate(Sender: TObject);
var
  FormTypes: String;
begin
  inherited;
  FormType := var_glb_gParam;
  case FormType of
    12:
      With dmF.qryTmpTmp do
      begin
        Active := False;
        SQL.Text := 'DECLARE @ReciptType varchar(500)';
        SQL.Add('SET @ReciptType=''12,6''');
        SQL.Add('SELECT @ReciptType= @ReciptType+'',''+LTRIM(STR(ReciptType))');
        SQL.Add('FROM ReciptTypes');
        SQL.Add('WHERE (SellEffect > 0)');
        SQL.Add('SELECT @ReciptType');
        Active := True;
        FormTypes := Fields[0].AsString;
        // qryCustStuff.SQL.Text := StringReplace(qryCustStuff.SQL.Text, 'Manfi',
        // '(-1)*', [rfReplaceAll]);
      end;
    // 'CASE ReciptTypes.ReciptType WHEN IN(6,12) THEN -1 ELSE 1 END'
    5:
      begin
        FormTypes := '5';
        Caption := 'ê“«—‘ ⁄„·ﬂ—œ —”Ìœ ﬂ«·«';
        // qryCustStuff.SQL.Text := StringReplace(qryCustStuff.SQL.Text, 'Manfi',
        // '', [rfReplaceAll]);
      end;
  else
    FormTypes := IntToStr(FormType);
  end;
  qryCustStuff.SQL.Text := StringReplace(qryCustStuff.SQL.Text, ':Recipt__Type',
    FormTypes, [rfReplaceAll]);
  OrginalSQL := qryCustStuff.SQL.Text;
  Entity_Weight(DBGrid1);
end;

procedure TrptTrancDetailsF.actPrintExecute(Sender: TObject);
begin
  inherited;
  try
    qryCustStuff.DisableControls;
    InitReportFile(ppReport1, 'rptTrancDetails');
  finally
    qryCustStuff.EnableControls;
  end; // try
end;

procedure TrptTrancDetailsF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName
end;

procedure TrptTrancDetailsF.ppSysVarPageNumberGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TrptTrancDetailsF.ppLblPrintDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate
end;

procedure TrptTrancDetailsF.ppLblDateGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := LblLimit.Caption
end;

procedure TrptTrancDetailsF.actSendExelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TrptTrancDetailsF.actShowFormsExecute(Sender: TObject);
begin
  inherited;
  case qryCustStuff.Fieldbyname('Kind').AsInteger of
    0:
      Warn('»—«Ì ‰Ê⁄ «ÿ·«⁄«  " ‰ﬁ· «“ ﬁ»· " ›—„Ì ÊÃÊœ ‰œ«—œ.!');
    1, 2:
      begin
        ShowFormTypesForms(qryCustStuff, Self);
      end; // 2
    3:
      ShowReciptTypes(qryCustStuff, Self);
  end; // case
end;

procedure TrptTrancDetailsF.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  actShowForms.Execute
end;

procedure TrptTrancDetailsF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryCustStuff);
end;

procedure TrptTrancDetailsF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryCustStuff);
end;

procedure TrptTrancDetailsF.ppLblSumGetText(Sender: TObject; var Text: String);
var
  i: Integer;
begin
  inherited;
  for i := StatusBar1.Panels.Count - 2 downto 0 do
    Text := Text + StatusBar1.Panels[i].Text + '       ';
  Text := Text + #0254;
end;

procedure TrptTrancDetailsF.ppLblFormNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := Caption;
end;

end.
