unit VU_Financial_statement;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, ADODB, Grids, Vcl.DBGrids, ppCtrls, ppVar, ppPrnabl, ppClass,
  ppBands, ppCache, ppDB, ppDBPipe, ppComm, ppRelatv, ppProd, ppReport,
  SumDBGrid, Menus, ppParameter, ppDesignLayer, System.ImageList,
  System.Actions,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, CedarDbGrid;

type
  TVU_Financial_statementF = class(Ttemplate2MDIF)
    dsFinancial_: TDataSource;
    qryFinancial_: TADOQuery;
    BitBtn1: TBitBtn;
    actFilter: TAction;
    BitBtn5: TBitBtn;
    btnactSearch: TBitBtn;
    Button1: TButton;
    actSOrt: TAction;
    actExcel: TAction;
    BitBtn4: TBitBtn;
    actRelation: TAction;
    actGhoose: TAction;
    actprint: TAction;
    ppReport1: TppReport;
    ppDBPipeline1: TppDBPipeline;
    ppHeaderBand1: TppHeaderBand;
    ppShape1: TppShape;
    ppLine1: TppLine;
    ppLine7: TppLine;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel2: TppLabel;
    ppLabel6: TppLabel;
    ppLine6: TppLine;
    ppLine13: TppLine;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLine3: TppLine;
    ppLBCompanyName: TppLabel;
    ppLabel3: TppLabel;
    ppDocDate: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLabel7: TppLabel;
    ppLabel10: TppLabel;
    ppLine29: TppLine;
    ppLabel13: TppLabel;
    ppLine16: TppLine;
    ppLabel12: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppLine5: TppLine;
    ppLine11: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLine15: TppLine;
    ppLine19: TppLine;
    ppFooterBand1: TppFooterBand;
    ppShape2: TppShape;
    ppLine2: TppLine;
    ppLine4: TppLine;
    ppLine12: TppLine;
    ppLine14: TppLine;
    ppLabel1: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppShape3: TppShape;
    ppLine21: TppLine;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppLine24: TppLine;
    ppLabel11: TppLabel;
    Button2: TButton;
    actOther: TAction;
    popOther: TPopupMenu;
    MenuItem3: TMenuItem;
    MenuItem5: TMenuItem;
    DBGrid1: TCedarDbgrid;
    procedure actFilterExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actExcelExecute(Sender: TObject);
    procedure actSOrtExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actprintExecute(Sender: TObject);
    procedure qryFinancial_AfterOpen(DataSet: TDataSet);
    procedure ppLBCompanyNameGetText(Sender: TObject; var Text: String);
    procedure ppDocDateGetText(Sender: TObject; var Text: String);
    procedure ppSystemVariable2GetText(Sender: TObject; var Text: String);
    procedure MenuItem3Click(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure actOtherExecute(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    procedure UpdateList;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  VU_Financial_statementF: TVU_Financial_statementF;

implementation

uses Dm, ChooseCols, FilterClass_ADO, filter_ADO, GlobalPro, search2,
  sort2, AccBookAnalyze, DBGrid2Print, FormFunctions, Resource;

{$R *.dfm}

procedure TVU_Financial_statementF.UpdateList;
var
  DocDate1From, DocDate1To, DocDate2From, DocDate2To: string;
  I: Integer;
begin
  with qryFinancial_ Do
  begin
    SQL.Text := 'drop view VU_Financial_statement';
    try
      ExecSQL;
    except
    end;

    DocDate1From := GetcFrom(myParams.ParamValues['DocDate1'], ftString);
    DocDate1To := GetcTo(myParams.ParamValues['DocDate1'], ftString);
    DocDate2From := GetcFrom(myParams.ParamValues['DocDate2'], ftString);
    DocDate2To := GetcTo(myParams.ParamValues['DocDate2'], ftString);

    SQL.Text := 'create view VU_Financial_statement as';
    SQL.Add('SELECT * from [Acc].[Financial_statement](''' + DocDate1From +
      ''',''' + DocDate1To + ''',''' + DocDate2From + ''',''' +
      DocDate2To + ''')');
    ExecSQL;
    Active := False;
    SQL.Text := 'SELECT * from VU_Financial_statement';
    Active := true;
    for I := 0 to Fields.Count - 1 do
    begin
      if Fields[I] is TBCDField then
        TBCDField(Fields[I]).currency := true;
      if (Fields[I] is TFMTBCDField) then
        TFMTBCDField(Fields[I]).currency := true;
      Fields[I].Tag := 3;
    end;

    DBGrid1.setSizeColDBGrid;
    DBGrid1.ColorDBGrid;

  end;

end;

procedure TVU_Financial_statementF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
    try

      AddItem(DMF.adcAccounting, 'DocDate2', ' «—ÌŒ ”‰œÕ”«»œ«—Ì', ' «—ÌŒ2',
        ftDate, dvMinMax, '', '', ciSimple, '', Format(strMaxMinDocDate,
        [APPBank.Year]));

      AddItem(DMF.adcAccounting, 'DocDate1', ' «—ÌŒ ”‰œÕ”«»œ«—Ì', ' «—ÌŒ1',
        ftDate, dvMinMax, '', '', ciSimple, '', Format(strMaxMinDocDate,
        [APPBank.Year - 1]));

      if ShowModal = mrOk then
      begin
        GetFilterString;
        UpdateList;
      end; // if
    finally
      Free;
    end; // try

end;

procedure TVU_Financial_statementF.FormResize(Sender: TObject);
begin
  inherited;
  DBGrid1.setSizeColDBGrid;
end;

procedure TVU_Financial_statementF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  actFilter.Execute;
  if myParams.FindParam('DocDate1') = nil then
    close;
end;

procedure TVU_Financial_statementF.actExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TVU_Financial_statementF.actSOrtExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryFinancial_);
end;

procedure TVU_Financial_statementF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryFinancial_);
end;

procedure TVU_Financial_statementF.actprintExecute(Sender: TObject);
begin
  inherited;
  try
    qryFinancial_.DisableControls;
    ppReport1.PreviewFormSettings.SinglePageOnly := true;
    ppReport1.Print;
  finally
    qryFinancial_.EnableControls;
  end;
end;

procedure TVU_Financial_statementF.qryFinancial_AfterOpen(DataSet: TDataSet);
begin
  inherited;
  // Updateremain;
end;

procedure TVU_Financial_statementF.ppLBCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TVU_Financial_statementF.ppDocDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TVU_Financial_statementF.ppSystemVariable2GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TVU_Financial_statementF.MenuItem3Click(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(DBGrid1, 0);
end;

procedure TVU_Financial_statementF.MenuItem5Click(Sender: TObject);
begin
  inherited;
  UpdateAllQry(Self);
end;

procedure TVU_Financial_statementF.actOtherExecute(Sender: TObject);
begin
  inherited;
  popOther.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

end.
