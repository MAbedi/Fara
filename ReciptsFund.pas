unit ReciptsFund;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons,
  Mask, DB, Grids, Vcl.DBGrids, ADODB, SumDBGrid, ppDB, ppDBPipe, ppParameter,
  ppBands, ppCtrls, ppVar, ppPrnabl, ppClass, ppCache, ppComm, ppRelatv, ppProd,
  ppReport, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, ppDesignLayer, System.ImageList,
  System.Actions;

type
  TReciptsFundF = class(Ttemplate2MDIF)
    pnlWorkShopId: TPanel;
    lblPersonID2: TLabel;
    btnPersonID2: TSpeedButton;
    medtPersonID2: TMaskEdit;
    medtPersonID2Name: TMaskEdit;
    qryRecipts: TADOQuery;
    srcRecipts: TDataSource;
    qryReciptsReciptCaption: TStringField;
    qryReciptsReciptNumber: TIntegerField;
    qryReciptsReciptDate: TStringField;
    qryReciptsPersonID1: TIntegerField;
    qryReciptsCustName: TStringField;
    qryReciptsReciptNote: TStringField;
    qryReciptsTotalPrice: TBCDField;
    qryReciptsReciptID: TIntegerField;
    qryReciptsServerID: TIntegerField;
    qryReciptsYearID: TIntegerField;
    actReciptsPricing: TAction;
    btnReciptsPricing: TBitBtn;
    btnSort: TBitBtn;
    btnSearch_: TBitBtn;
    btnSendExcel: TBitBtn;
    btnReciptsPricing1: TBitBtn;
    btnReciptsPricing2: TBitBtn;
    btnReciptsPricing3: TBitBtn;
    actPrint: TAction;
    actDelete: TAction;
    actSelectNew: TAction;
    actSendExcel: TAction;
    actSort: TAction;
    btnReciptsRow: TSpeedButton;
    medtReciptsRow: TMaskEdit;
    lbl1: TLabel;
    prp1: TppReport;
    ppParameterList1: TppParameterList;
    pln1: TppDBPipeline;
    ppHeaderBand1: TppHeaderBand;
    plblLblCompanyName: TppLabel;
    plblLblCaption: TppLabel;
    ppSysVarPageNo: TppSystemVariable;
    plblLblPrintDate: TppLabel;
    ppDBCalcdcCount_TextAlign: TppDBCalc;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppShape1: TppShape;
    plbl1: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppShape2: TppShape;
    plbl2: TppLabel;
    actSelectEdit: TAction;
    btnSelectNew: TBitBtn;
    qryReciptsReciptsRow: TIntegerField;
    DBGridEh1: TDBGridEh;
    procedure btnPersonID2Click(Sender: TObject);
    procedure actReciptsPricingExecute(Sender: TObject);
    procedure medtPersonID2Change(Sender: TObject);
    procedure btnReciptsRowClick(Sender: TObject);
    procedure actDeleteExecute(Sender: TObject);
    procedure actSendExcelExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure plblLblCaptionGetText(Sender: TObject; var Text: String);
    procedure plblLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure plblLblPrintDateGetText(Sender: TObject; var Text: String);
    procedure ppSysVarPageNoGetText(Sender: TObject; var Text: String);
    procedure actPrintExecute(Sender: TObject);
    procedure actSelectNewExecute(Sender: TObject);
    procedure actSelectEditExecute(Sender: TObject);
  private
    SQL_FROM, SQL_WHERE: string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ReciptsFundF: TReciptsFundF;

implementation

uses searchCode_ADO, DM, ReciptsPricing, GlobalPro, MMESSAGE, search2, sort2,
  SelectedNew;

{$R *.dfm}

procedure TReciptsFundF.actDeleteExecute(Sender: TObject);
begin
  inherited;
  if get_response('آيا براي حذف ردیف مطمئن هستيد؟') <> mrYes then
    Exit;
  With DMf.qryTmpTmp do
  begin
    Active := False;
    SQL.Text := 'UPDATE Recipts ';
    SQL.Add('SET ReciptsRow = 0');
    SQL.Add(SQL_FROM);
    SQL.Add(SQL_WHERE);
    BigMessage(IntToStr(ExecSQL) + ' فرم‌ حذف شد.', 2);
    qryRecipts.Requery();
  end;

end;

procedure TReciptsFundF.actPrintExecute(Sender: TObject);
begin
  inherited;
  try
    InitReportFile(prp1, Self.Name, True);
  finally
    With DMf.qryTmpTmp do
    begin
      Active := False;
      SQL.Text := 'UPDATE Recipts ';
      SQL.Add('SET ReciptState = 1');
      SQL.Add(SQL_FROM);
      SQL.Add(SQL_WHERE);
      BigMessage(IntToStr(ExecSQL) + ' فرم‌ قطعی شد.', 2);
      // qryRecipts.Requery();
    end;

  end;
end;

procedure TReciptsFundF.actReciptsPricingExecute(Sender: TObject);
begin
  inherited;
  ReciptsPricingF.enter(qryRecipts);
end;

procedure TReciptsFundF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryRecipts);
end;

procedure TReciptsFundF.actSelectEditExecute(Sender: TObject);
begin
  inherited;
  medtReciptsRow.Tag := StrToInt(Trim(medtReciptsRow.Text));
  medtPersonID2.Tag := StrToInt(Trim(medtPersonID2.Text));
  if medtReciptsRow.Tag <> 0 then
  begin
    medtReciptsRow.Text := IntToStr(SelectedNewF.enter(medtReciptsRow.Tag,
      medtPersonID2.Tag));
    qryRecipts.Requery();
  end;
end;

procedure TReciptsFundF.actSelectNewExecute(Sender: TObject);
begin
  inherited;
  medtReciptsRow.Text := IntToStr(SelectedNewF.enter(0, medtPersonID2.Tag));
  qryRecipts.Requery();
end;

procedure TReciptsFundF.actSendExcelExecute(Sender: TObject);
begin
  inherited;
  DataToExcel(qryRecipts);
end;

procedure TReciptsFundF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryRecipts);
end;

procedure TReciptsFundF.btnPersonID2Click(Sender: TObject);
var
  b: Boolean;
  Results: array [0 .. 1] of String;
  txt: string;
begin
  inherited;
  txt := 'SELECT DISTINCT Recipts.PersonID2, Customers.CustName' +
    ' FROM Recipts INNER JOIN' +
    ' Customers ON Recipts.PersonID2 = Customers.CustID' +
    ' WHERE (Recipts.PersonID2 <> 0)';
  b := searchCode_ADOF.SearchCode2(DMf.adcBSell, lblPersonID2.Caption, txt,
    ['کد', lblPersonID2.Caption], Results, [50, 150], alLeft);
  if b then
  begin
    medtPersonID2.Text := Results[0];
    medtPersonID2Name.Text := Results[1];
  end;
end;

procedure TReciptsFundF.btnReciptsRowClick(Sender: TObject);
var
  b: Boolean;
  Results: array [0 .. 2] of String;
  txt: string;
begin
  inherited;
  txt := 'SELECT DISTINCT Recipts.ReciptsRow,Recipts.PersonID2, Customers.CustName'
    + ' FROM Recipts INNER JOIN' +
    ' Customers ON Recipts.PersonID2 = Customers.CustID' +
    ' WHERE (Recipts.ReciptsRow <> 0)';
  b := searchCode_ADOF.SearchCode2(DMf.adcBSell, lblPersonID2.Caption, txt,
    ['شماره', 'کد', lblPersonID2.Caption], Results, [50, 50, 150], alLeft);
  if b then
  begin
    medtReciptsRow.Text := Results[0];
  end;

end;

procedure TReciptsFundF.medtPersonID2Change(Sender: TObject);

begin
  inherited;
  medtPersonID2.Tag := StrToInt(Trim(medtPersonID2.Text));
  medtReciptsRow.Tag := StrToInt(Trim(medtReciptsRow.Text));
  SQL_WHERE := 'WHERE (Recipts.ReciptType in(4,5,31,140))';

  if medtPersonID2.Tag <> 0 then
    SQL_WHERE := SQL_WHERE + Format('AND (Recipts.PersonID2 = %d)',
      [medtPersonID2.Tag]);

  if medtReciptsRow.Tag <> 0 then
    SQL_WHERE := SQL_WHERE + Format('AND (Recipts.ReciptsRow = %d)',
      [medtReciptsRow.Tag]);

  With qryRecipts do
  begin
    Active := False;
    SQL.Text := EmptyStr;
    SQL.Add('FROM Recipts INNER JOIN');
    SQL.Add('ReciptTypes ON Recipts.ReciptType = ReciptTypes.ReciptType INNER JOIN');
    SQL.Add('Customers AS Customers_1 ON Recipts.PersonID1 = Customers_1.CustID INNER JOIN');
    SQL.Add('ReciptItems ON Recipts.ReciptID = ReciptItems.ReciptID AND Recipts.ServerID = ReciptItems.ServerID ');
    SQL.Add('AND Recipts.YearID = ReciptItems.YearID');
    SQL_FROM := SQL.Text;
    SQL.Text := 'SELECT ReciptTypes.ReciptCaption, Recipts.ReciptNumber, ';
    SQL.Add('Recipts.ReciptDate, Recipts.PersonID1,Customers_1.CustName, Recipts.ReciptNote, ');
    SQL.Add('SUM(ReciptItems.TotalInputPrice + ReciptItems.TotalOutputPrice)AS TotalPrice');
    SQL.Add(', Recipts.ReciptID, Recipts.ServerID, Recipts.YearID, Recipts.ReciptsRow');
    SQL.Add(SQL_FROM);
    SQL.Add(SQL_WHERE);
    SQL.Add('GROUP BY ReciptTypes.ReciptCaption, Recipts.ReciptNumber, Recipts.ReciptDate, Recipts.PersonID1, ');
    SQL.Add('Customers_1.CustName,');
    SQL.Add('Recipts.ReciptNote, Recipts.ReciptID, Recipts.ServerID, Recipts.YearID, Recipts.ReciptsRow');
    Active := True;
  end;
end;

procedure TReciptsFundF.plblLblPrintDateGetText(Sender: TObject;
  var Text: String);
begin
  Text := GetPrintDate;
end;

procedure TReciptsFundF.ppSysVarPageNoGetText(Sender: TObject;
  var Text: String);
begin
  Text := GetPageNumberString(Text)
end;

procedure TReciptsFundF.plblLblCaptionGetText(Sender: TObject;
  var Text: String);
begin
  Text := Caption;
end;

procedure TReciptsFundF.plblLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  Text := APPBank.CompanyName;
end;

end.
