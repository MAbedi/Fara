unit ConversionCoList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons,
  DB, ADODB, Grids, Vcl.DBGrids, ppDB, ppDBPipe, ppParameter, ppBands, ppCtrls,
  ppPrnabl, ppClass, ppCache, ppComm, ppRelatv, ppProd, ppReport, ppDesignLayer,
  System.ImageList, System.Actions, ppVar;

type
  TConversionCoListF = class(Ttemplate2MDIF)
    BitBtn3: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn2: TBitBtn;
    btnPrint: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn4: TBitBtn;
    DBGrid1: TDBGrid;
    qry_TransForms: TADOQuery;
    qry_TransFormsTransFormNo: TIntegerField;
    qry_TransFormsTransFormDate: TStringField;
    qry_TransFormsStuffCode: TLargeintField;
    qry_TransForms_StuffName: TStringField;
    qry_TransFormsNote: TStringField;
    qry_TransFormsCycleMonth: TFloatField;
    Src_TransForms: TDataSource;
    qryStuff_Unit_TecInf: TADOQuery;
    qry_TransFormsTransFormID: TIntegerField;
    actFilter: TAction;
    actSort: TAction;
    actSendToExcell: TAction;
    actPrint: TAction;
    actShow: TAction;
    ppReport1: TppReport;
    ppParameterList1: TppParameterList;
    ppDBPipeline1: TppDBPipeline;
    actHighestPrice: TAction;
    btnShow: TBitBtn;
    ppHeaderBand1: TppHeaderBand;
    ppLblCompanyName: TppLabel;
    ppLblCaption: TppLabel;
    ppSysVarPageNo: TppSystemVariable;
    ppLblPrintDate: TppLabel;
    ppDBCalcdcCount_TextAlign: TppDBCalc;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppShape1: TppShape;
    ppLabel4: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppShape2: TppShape;
    ppLabel2: TppLabel;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actSendToExcellExecute(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure actShowExecute(Sender: TObject);
    procedure actHighestPriceExecute(Sender: TObject);
    procedure ppLblCaptionGetText(Sender: TObject; var Text: String);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure ppLblPrintDateGetText(Sender: TObject; var Text: String);
    procedure ppSysVarPageNoGetText(Sender: TObject; var Text: String);
  private
    { Private declarations }
    procedure UpdateFilter;
    procedure Add_WHERE_SQL_Parameters(qry: TADOQuery);
  public
    { Public declarations }
  end;

var
  ConversionCoListF: TConversionCoListF;

implementation

uses GlobalPro, search2, sort2, DM, filter_ADO, FilterClass_ADO, ConversionCo,
  MMESSAGE;

{$R *.dfm}

procedure TConversionCoListF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      AddItem(DMF.adcBSell, 'TransFormDate', ' تاريخ ', 'تاريخ', ftDate,
        dvMinMax, '', '', ciSimple, '',
        'Select Min(TransFormDate) ,Max(TransFormDate) from  TransForms ');
      // WHERE ReciptType = '+IntToStr(formType));
      AddItem(DMF.adcBSell, 'TransFormNo', ' فرم ', 'شماره', ftInteger,
        dvMinMax, '', '', ciSimple, '',
        'select Min(TransFormNo),Max(TransFormNo) From TransForms');
      // WHERE ReciptType = '+IntToStr(formType));

      AddItem(DMF.adcBSell, 'TransFormID', ' فرم ', 'سريال', ftInteger,
        dvMinMax, '', '', ciSimple, '',
        'select Min(TransFormID),Max(TransFormID) From TransForms');

      AddItem(DMF.adcBSell, 'StuffCode', 'نام كالا ', 'كد', ftInteger, dvMinMax,
        '', '', ciLookup,
        'SELECT     c_StuffCode, c_StuffName  FROM   StuffCoding ',
        'SELECT     MIN(StuffCoding.c_StuffCode), MAX(StuffCoding.c_StuffCode) FROM  StuffCoding INNER JOIN   TransForms ON StuffCoding.c_StuffCode = TransForms.StuffCode');
      if ShowModal = mrOk then
      begin
        GetFilterString;
        UpdateFilter;
      end; // if
    finally
      Free;
    end; // try
  end; // with
end;

procedure TConversionCoListF.actHighestPriceExecute(Sender: TObject);
begin
  inherited;
  actFilter.Execute;
  if get_response
    ('آیا برای قیمت گذاری نرخ استاندارد محدوده انتخاب شده مطمئن هستید؟') <>
    mrYes then
    Exit;
  With DMF.qryTmpTmp do
  begin
    SQL.Text := 'UPDATE TransFormItems';
    SQL.Add('SET StanRate = HighestPrice.UnitSellPriceMAX');
    SQL.Add('FROM TransFormItems INNER JOIN');
    SQL.Add('(SELECT ReciptItems.StuffCode, MAX(ReciptItems.UnitSellPrice) AS UnitSellPriceMAX');
    SQL.Add('FROM ReciptTypes1 INNER JOIN');
    SQL.Add('Recipts ON ReciptTypes1.ReciptType = Recipts.ReciptType INNER JOIN');
    SQL.Add('ReciptItems ON Recipts.ReciptID = ReciptItems.ReciptID ');
    SQL.Add('AND Recipts.ServerID = ReciptItems.ServerID AND Recipts.YearID = ReciptItems.YearID');
    SQL.Add('WHERE (ReciptTypes1.EffectType = 2) AND (ReciptItems.UnitSellPrice >0)');
    SQL.Add('AND (Recipts.YearID = :YearID)');
    SQL.Add('GROUP BY ReciptItems.StuffCode) AS HighestPrice ON TransFormItems.StuffCode =');
    SQL.Add('HighestPrice.StuffCode INNER JOIN');
    SQL.Add('TransForms ON TransFormItems.TransFormID = TransForms.TransFormID');
    Add_WHERE_SQL_Parameters(DMF.qryTmpTmp);
    Parameters.ParamByName('YearID').Value := APPBank.Year;
    BigMessage(IntToStr(ExecSQL) + 'مورد ثبت شد.‏', 1);
  end;
end;

procedure TConversionCoListF.actPrintExecute(Sender: TObject);
begin
  inherited;
  try
    qry_TransForms.DisableControls;
    InitReportFile(ppReport1, 'ConversionCoListF', True);
  finally
    qry_TransForms.EnableControls;
  end;
end;

procedure TConversionCoListF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qry_TransForms);
end;

procedure TConversionCoListF.actSendToExcellExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TConversionCoListF.actShowExecute(Sender: TObject);
begin
  inherited;
  CreateMDIForm2(TConversionCoF, ConversionCoF, Self);
  ConversionCoF.qry_TransForms.Locate('TransFormID',
    qry_TransFormsTransFormID.AsInteger, []);
end;

procedure TConversionCoListF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qry_TransForms);
end;

procedure TConversionCoListF.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  actShow.Execute
end;

procedure TConversionCoListF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  QuickSearch(Key, qry_TransFormsTransFormNo);
end;

procedure TConversionCoListF.Add_WHERE_SQL_Parameters(qry: TADOQuery);
begin
  inherited;
  with qry do
  begin
    SQL.Add('WHERE (TransForms.TransFormNo BETWEEN :TransFormNoFrom AND :TransFormNoTo)');
    SQL.Add('AND (TransForms.TransFormDate BETWEEN :TransFormDateFrom AND :TransFormDateTo)');
    SQL.Add('AND (TransForms.StuffCode BETWEEN :StuffCodeFrom AND :StuffCodeTo)');
    SQL.Add('AND (TransForms.TransFormID BETWEEN :TransFormIDFrom AND :TransFormIDTo)');
    Parameters.ParamByName('StuffCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['StuffCode'], ftString);
    Parameters.ParamByName('StuffCodeTo').Value :=
      GetcTo(myParams.ParamValues['StuffCode'], ftString);

    Parameters.ParamByName('TransFormNoFrom').Value :=
      GetcFrom(myParams.ParamValues['TransFormNo'], ftInteger);
    Parameters.ParamByName('TransFormNoTo').Value :=
      GetcTo(myParams.ParamValues['TransFormNo'], ftInteger);

    Parameters.ParamByName('TransFormIDFrom').Value :=
      GetcFrom(myParams.ParamValues['TransFormID'], ftInteger);
    Parameters.ParamByName('TransFormIDTo').Value :=
      GetcTo(myParams.ParamValues['TransFormID'], ftInteger);

    Parameters.ParamByName('TransFormDateFrom').Value :=
      GetcFrom(myParams.ParamValues['TransFormDate'], ftDate);
    Parameters.ParamByName('TransFormDateTo').Value :=
      GetcTo(myParams.ParamValues['TransFormDate'], ftDate);
  end;
end;

procedure TConversionCoListF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
end;

procedure TConversionCoListF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 5, True);
end;

procedure TConversionCoListF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  actFilter.Execute;
  if myParams.FindParam('TransFormDate') = nil then
    close;
end;

procedure TConversionCoListF.UpdateFilter;
begin
  with qry_TransForms do
  begin
    Active := False;
    SQL.Text := 'SELECT *';
    SQL.Add('FROM TransForms');
    Add_WHERE_SQL_Parameters(qry_TransForms);
    SQL.Add('ORDER BY TransFormNo');
    Active := True;
  end;
end;

procedure TConversionCoListF.ppLblPrintDateGetText(Sender: TObject;
  var Text: String);
begin
  Text := GetPrintDate;
end;

procedure TConversionCoListF.ppSysVarPageNoGetText(Sender: TObject;
  var Text: String);
begin
  Text := GetPageNumberString(Text)
end;

procedure TConversionCoListF.ppLblCaptionGetText(Sender: TObject; var Text: String);
begin
  Text := caption
end;

procedure TConversionCoListF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  Text := APPBank.CompanyName;
end;


end.
