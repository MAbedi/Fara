{ -----------------------------------------------------------------------------
  Unit Name: RptControlEntity
  Author:    Mahmood
  ----------------------------------------------------------------------------- }
unit RptControlEntity;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, DB, ADODB, ImgList, DBActns,
  ActnList, StdCtrls, ExtCtrls, Buttons, DBCtrls, ComCtrls, ppCtrls,
  ppPrnabl, ppClass, ppBands, ppDB, ppCache, ppProd, ppReport, ppComm,
  ppRelatv, ppDBPipe, ppVar, Menus, ppParameter, ppDesignLayer,
  System.ImageList, System.Actions, System.Math,ReciptsFunctions,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, CedarDbGrid ;

type
  TRptControlEntityF = class(Ttemplate2MDIF)
    LblLimit: TLabel;
    qryEntity: TADOQuery;
    srcEntity: TDataSource;
    qryEntityStoreID: TSmallintField;
    qryEntityEntity: TFloatField;
    qryEntityWeight: TFloatField;
    qryEntityPrice: TBCDField;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    BtnShow: TButton;
    actfilter: TAction;
    Button2: TButton;
    actsendtoExel: TAction;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppLblCompanyName: TppLabel;
    ppLabel2: TppLabel;
    ppLine1: TppLine;
    ppLabel3: TppLabel;
    ppLabel5: TppLabel;
    ppLine4: TppLine;
    ppLabel6: TppLabel;
    ppLine5: TppLine;
    ppLabel7: TppLabel;
    ppLine6: TppLine;
    ppLabel8: TppLabel;
    ppLine7: TppLine;
    ppLabel9: TppLabel;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppDBText1: TppDBText;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBText2: TppDBText;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppShape1: TppShape;
    ppLine21: TppLine;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppShape2: TppShape;
    ppLblPrintDate: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    BitBtn3: TBitBtn;
    ppShape3: TppShape;
    actPrint: TAction;
    actSort: TAction;
    qryEntityc_StoreName: TStringField;
    PMnuShow: TPopupMenu;
    BitBtn4: TBitBtn;
    actshow: TAction;
    N4: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    Button3: TButton;
    Label1: TLabel;
    qryEntityTotallSellPrice: TBCDField;
    DBGrid1: TCedarDbgrid;
    procedure actfilterExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actsendtoExelExecute(Sender: TObject);
    procedure ppLabel3GetText(Sender: TObject; var Text: String);
    procedure ppLblPrintDateGetText(Sender: TObject; var Text: String);
    procedure ppSystemVariable1GetText(Sender: TObject; var Text: String);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure actPrintExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure qryEntityAfterOpen(DataSet: TDataSet);
    procedure actshowChartExecute(Sender: TObject);
    procedure actshowExecute(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure BtnShowClick(Sender: TObject);
  private
    OrginalSQL: String;
    procedure updatelist;
    // function CalculateChecksTotal(fldName:string): Currency;

    { Private declarations }
  public
    { Public declarations }
  end;

var
  RptControlEntityF: TRptControlEntityF;

implementation

uses DM, filter_ADO, FilterClass_ADO, GlobalPro, search2,
  sort2, TreeChart, main, mdiMain, FaraConsts;

{$R *.dfm}

procedure TRptControlEntityF.updatelist;
var
  s: String;
begin
  if opt.StuffKindActive then
    s := GetcFrom(myParams.ParamValues['StuffKindActive'], ftString);
  if s = '' then
    s := '0,1';
  qryEntity.SQL.Text := StringReplace(OrginalSQL, ':StuffKindActive', s,
    [rfReplaceAll]);
  with qryEntity do
  begin
    Active := False;
    Parameters.ParamByName('DateFrom').Value :=
      GetcFrom(myParams.ParamValues['ReciptDate'], ftDate);
    Parameters.ParamByName('DateTo').Value :=
      GetcTo(myParams.ParamValues['ReciptDate'], ftDate);
    Parameters.ParamByName('STOREIDFrom').Value :=
      GetcFrom(myParams.ParamValues['STOREID'], ftInteger);
    Parameters.ParamByName('STOREIDTo').Value :=
      GetcTo(myParams.ParamValues['STOREID'], ftInteger);
    Parameters.ParamByName('YearIDFrom').Value := opt.DefaultYear;
    Parameters.ParamByName('YearIDTo').Value := APPBank.Year;
    Parameters.ParamByName('UserID').Value := User.id;
    Parameters.ParamByName('UserIDAdmin').Value :=
      ifthen(User.PowerUser, 127, User.id);

    Active := True;
    LblLimit.Caption := '  «“  «—ÌŒ  ' + Parameters.ParamByName('datefrom')
      .Value + '   «  «—ÌŒ  ' + Parameters.ParamByName('dateto').Value;
  end; // with

end;

procedure TRptControlEntityF.actfilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      if opt.StuffKindActive then
        AddItem(DMF.adcBSell, 'StuffKindActive', '‰Ê⁄ ﬂ«·«', '', ftUnknown,
          dvDefaults, 'True', '', ciCheck,
          'SELECT  0 as OwnerShipKind,''ﬁÿ⁄Ì''  as OwnerShipKindName FROM  Config union all '
          + 'SELECT  1 as OwnerShipKind,''«„«‰Ì'' as OwnerShipKindName FROM  Config ',
          '');
      AddItem(DMF.adcBSell, 'ReciptDate', ' «—ÌŒ', ' «—ÌŒ', ftDate, dvMinMax,
        '', '', ciSimple, '', 'Select  ''' + APPBank.StartYear +
        ''',max(ReciptDate) from Recipts');
      AddItem(DMF.adcBSell, 'STOREID', '«‰»«—', ' ﬂœ ', ftInteger, dvMinMax, '',
        '', cilookup, LookupSQL4Store, MinMaxSQL4Store);
      if ShowModal = mrOk then
      begin
        GetFilterString;
        updatelist;
      end; // if
    finally
      Free;
    end; // try
  end; // with
end;

procedure TRptControlEntityF.FormCreate(Sender: TObject);
begin
  inherited;
  OrginalSQL := qryEntity.SQL.Text;
  Entity_Weight(DBGrid1);
  // setColumns2(DBGrid1, opt.ActiveSellPrice2, 'TotallSellPrice');
  // qryEntity.FieldByName('TotallSellPrice').Visible :=
  // opt.ActiveSellPrice2;
  HideOrShowSellPriceFields(qryEntity, DBGrid1);

end;

procedure TRptControlEntityF.actsendtoExelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TRptControlEntityF.ppLabel3GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := LblLimit.Caption;
end;

procedure TRptControlEntityF.ppLblPrintDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TRptControlEntityF.ppSystemVariable1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text);
end;

procedure TRptControlEntityF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TRptControlEntityF.actPrintExecute(Sender: TObject);
begin
  inherited;
  try
    qryEntity.DisableControls;
    ppReport1.Print;
    // InitReportFile(RptEntityStuffGrpF,ppReport1,'RptControlEntity');
  finally
    qryEntity.EnableControls;
  end; // try
end;

procedure TRptControlEntityF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  actfilter.Execute;
  if myParams.FindParam('ReciptDate') = nil then
    close;
end;

procedure TRptControlEntityF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryEntity);
end;

procedure TRptControlEntityF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryEntity);
end;

procedure TRptControlEntityF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  QuickSearch(Key, qryEntity.FieldByName('StoreID'));
end;

procedure TRptControlEntityF.qryEntityAfterOpen(DataSet: TDataSet);
begin
  inherited;
  // if PriceOnStoreType(DataSet.fieldbyname('storeid').AsInteger,DBGrid1) then
  // StatusBar1.Panels[0].Text:='„»·€ :'+CurrToStrF(CalcSumFileds(qryEntity, 'price'),ffCurrency,0)
  // else StatusBar1.Panels[0].Text:='';
  // if opt.WeightDisplay then
  // StatusBar1.Panels[1].Text:='Ê“‰ :' +CurrToStr(CalcSumFileds(qryEntity,'Weight'));
  // if opt.EntityDisplay then
  // StatusBar1.Panels[2].Text:='„ﬁœ«— :'+ CurrToStr(CalcSumFileds(qryEntity,'entity'));
  // StatusBar1.Panels[3].Text:='Ã„⁄:  ';
  // StatusBar1.Panels[4].Text:=' ⁄œ«œ  :'+IntToStr(qryEntity.RecordCount);

end;

procedure TRptControlEntityF.actshowChartExecute(Sender: TObject);
begin
  inherited;
  TreeChartF.showChart(qryEntity, Self, LblLimit.Caption);
end;

procedure TRptControlEntityF.actshowExecute(Sender: TObject);
begin
  inherited;
  mainF.RptEntityStuffGrpF0Click(Sender);
end;

procedure TRptControlEntityF.N6Click(Sender: TObject);
begin
  inherited;
  mdiMainF.actRptEntityStuffFExecute(Sender);
end;

procedure TRptControlEntityF.N7Click(Sender: TObject);
begin
  inherited;
  mdiMainF.actrptEntityOnDetailStuffsF.Execute;
end;

procedure TRptControlEntityF.N8Click(Sender: TObject);
begin
  inherited;
  mainF.RptEntityStuffDetailsF0Click(Sender)
end;

procedure TRptControlEntityF.BtnShowClick(Sender: TObject);
begin
  inherited;
  PMnuShow.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

end.
