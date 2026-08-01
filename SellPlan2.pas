unit SellPlan2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, ADODB, Grids, Vcl.DBGrids, Mask, DBCtrls, ppDB, ppDBPipe,
  ppBands, ppCtrls, ppPrnabl, ppClass, ppVar, ppCache, ppComm, ppRelatv,
  ppProd, ppReport, SumDBGrid, ppParameter, ComCtrls, ppDesignLayer,
  System.ImageList, System.Actions;

type
  TSellPlan2F = class(Ttemplate2MDIF)
    DBGrid1: TDBGrid;
    lblUnitName: TLabel;
    qryCustomers: TADOQuery;
    srcCustomers: TDataSource;
    Panel1: TPanel;
    lblRecpits: TLabel;
    DBGrid2: TDBGrid;
    qryRecipts: TADOQuery;
    srcRecipts: TDataSource;
    qryReciptsReciptID: TIntegerField;
    qryReciptsReciptNumber: TIntegerField;
    qryReciptsReciptDate: TStringField;
    qryReciptsPersonID1: TIntegerField;
    qryReciptsReciptType: TWordField;
    qryReciptsCustName: TStringField;
    actOrderSelect: TAction;
    btnOrderSelect: TBitBtn;
    actShowForm: TAction;
    btnShowForm: TBitBtn;
    actDelDriver: TAction;
    btnDelDriver: TBitBtn;
    actSort: TAction;
    actSendExcel: TAction;
    btnSort: TBitBtn;
    btnSearch_: TBitBtn;
    btnSendExcel: TBitBtn;
    ppReport1: TppReport;
    ppDetailBand2: TppDetailBand;
    ppDBPipeline1: TppDBPipeline;
    actPrint: TAction;
    actprintvijeh: TAction;
    btnPrint: TBitBtn;
    ppDBPipeline2: TppDBPipeline;
    actRow: TAction;
    btnRow: TBitBtn;
    qryReciptsTel: TStringField;
    qryCustomersCustID: TIntegerField;
    qryCustomersCustName: TStringField;
    qryCustomersCustomerNote: TStringField;
    qryReciptsPersonID2: TIntegerField;
    qryReciptsCustName2: TStringField;
    qryReciptsServerID: TIntegerField;
    qryReciptsYearID: TIntegerField;
    TabControl1: TTabControl;
    qryReciptsSellsMethodName: TWideStringField;
    qryReciptsSumPrice: TBCDField;
    procedure qryCustomersAfterScroll(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure actOrderSelectExecute(Sender: TObject);
    procedure actShowFormExecute(Sender: TObject);
    procedure actDelDriverExecute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSendExcelExecute(Sender: TObject);
    procedure qryStorsAfterScroll(DataSet: TDataSet);
    procedure actPrintExecute(Sender: TObject);
    procedure actprintvijehExecute(Sender: TObject);
    procedure ppLblCaptionGetText(Sender: TObject; var Text: String);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure ppLblPrintDateGetText(Sender: TObject; var Text: String);
    procedure ppSysVarPageNoGetText(Sender: TObject; var Text: String);
    procedure actRowExecute(Sender: TObject);
    procedure TabControl1Change(Sender: TObject);
  private
    FormType: Integer;
    ReciptTypes, CustName: string;
    procedure DeleteCheck(ItemID: Integer);
//    procedure exportRecipt;
    procedure UpDateList;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SellPlan2F: TSellPlan2F;

implementation

uses DM, GlobalPro, selected, Recipts, FormFunctions, sort2, search2,
  DateUtils, searchCode_ADO, mmessage, DBGrid2Print, main, FaraConsts;

{$R *.dfm}

procedure TSellPlan2F.qryCustomersAfterScroll(DataSet: TDataSet);
begin
  inherited;
  case TabControl1.TabIndex of
    0:
      begin
        with qryRecipts do
        begin
          Close;
          Parameters.ParamByName('PersonID2').Value := 0;
          Parameters.ParamByName('SellsMethodFrom').Value :=
            DataSet.FieldByName('CustID').AsInteger;
          Parameters.ParamByName('SellsMethodTo').Value :=
            DataSet.FieldByName('CustID').AsInteger;
          Open;
        end;
      end;

    1:
      begin
        with qryRecipts do
        begin
          Close;
          Parameters.ParamByName('PersonID2').Value :=
            DataSet.FieldByName('CustID').AsInteger;
          Parameters.ParamByName('SellsMethodFrom').Value := 10;
          Parameters.ParamByName('SellsMethodTo').Value := 99;
          Open;
        end;
      end;
  end;

end;

procedure TSellPlan2F.FormCreate(Sender: TObject);
begin
  inherited;
  FormType := var_glb_gParam;
  ReciptTypes := '22,120,121,122,123,124,125,126,127,128,129';
  UpDateList
end;

procedure TSellPlan2F.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
  SaveColWidth(DBGrid2);
end;

procedure TSellPlan2F.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 2);
  SetColSize(DBGrid2, 6);
end;

procedure TSellPlan2F.actOrderSelectExecute(Sender: TObject);
var
  S, Sqltxt: String;
begin
  inherited;
  case TabControl1.TabIndex of
    0:
      begin
        Sqltxt := 'SELECT Recipts.ReciptID, Recipts.ReciptNumber, ' +
          'Recipts.ReciptDate, Recipts.PersonID1, Customers.CustName' +
          ',Customers.Address FROM Recipts INNER JOIN' +
          ' Customers ON Recipts.PersonID1 = Customers.CustID' +
          ' WHERE (Recipts.ReciptType in (%S))AND((Recipts.PersonID2 = 0) OR ' +
          ' (Recipts.PersonID2 IS NULL))  and (Recipts.ReciptState < 2)' +
          ' AND ( Recipts.YearID = %d ) AND ( Recipts.ServerID =  %d ) ' +
          ' AND (Recipts.SellsMethod = 1)' +
          ' ORDER BY Recipts.ReciptDate DESC ';
      end;
    1:
      begin
        Sqltxt := 'SELECT Recipts.ReciptID, Recipts.ReciptNumber, ' +
          'Recipts.ReciptDate, Recipts.PersonID1, Customers.CustName' +
          ',Customers.Address FROM Recipts INNER JOIN' +
          ' Customers ON Recipts.PersonID1 = Customers.CustID' +
          ' WHERE (Recipts.ReciptType in (%s))AND((Recipts.PersonID2 = 0) OR ' +
          ' (Recipts.PersonID2 IS NULL)) and (Recipts.ReciptState < 2)' +
          ' AND ( Recipts.YearID = %d ) AND ( Recipts.ServerID =  %d ) ' +
          ' AND (Recipts.SellsMethod >=10)' +
          ' ORDER BY Recipts.ReciptDate DESC ';
      end;
  end;

  S := selectedF.ShowSelect(DMf.adcBSell, lblRecpits.Caption,
    Format(Sqltxt, [ReciptTypes, APPBank.Year, opt.ServerID]),
    ['', '‘„«—Â', ' «—ÌŒ', 'ﬂœ ' + CustName, '‰«„ ' + CustName, '¬œ—”'], alLeft,
    [0, 25, 50, 50, 100, 300]);
  if S <> EmptyStr then
    with TADOQuery.Create(Self) do
      try
        Connection := DMf.adcBSell;
        case TabControl1.TabIndex of

          0:
            SQL.Text := 'UPDATE Recipts SET SellsMethod =%d';
          1:
            SQL.Text := 'UPDATE Recipts SET PersonID2 =%d';
        end;
        SQL.Add('WHERE (ReciptID IN (%s)) AND (ReciptType in (%s)  )');
        SQL.Text := Format(SQL.Text,
          [qryCustomers.FieldByName('CustID').AsInteger, S, ReciptTypes]);
        SQL.Add(Format('AND ( YearID = %d ) AND ( ServerID =  %d ) ',
          [APPBank.Year, opt.ServerID]));
        ExecSQL;
      finally
        qryRecipts.Requery;
        Free;
      end;
end;

procedure TSellPlan2F.DeleteCheck(ItemID: Integer);
begin
  case TabControl1.TabIndex of
    0:
      with DMf.qryTmpTmp do
      begin
        Close;
        SQL.Text :=
          Format('UPDATE Recipts SET SellsMethod = 1 WHERE ReciptID = %d',
          [ItemID]);
        SQL.Add(Format('AND ( YearID = %d ) AND ( ServerID =  %d ) ',
          [APPBank.Year, opt.ServerID]));
        ExecSQL;
      end; // with

    1:
      with DMf.qryTmpTmp do
      begin
        Close;
        SQL.Text :=
          Format('UPDATE Recipts SET PersonID2 = 0 WHERE ReciptID = %d',
          [ItemID]);
        SQL.Add(Format('AND ( YearID = %d ) AND ( ServerID =  %d ) ',
          [APPBank.Year, opt.ServerID]));
        ExecSQL;
      end; // with
  end;

end;

procedure TSellPlan2F.actShowFormExecute(Sender: TObject);
begin
  inherited;
  ShowReciptTypes(qryRecipts, ReciptsF);
end;

procedure TSellPlan2F.actDelDriverExecute(Sender: TObject);
var
  id: Integer;
  i: Integer;
  deletedCount: Integer;
begin
  inherited;
  if DBGrid2.SelectedRows.Count > 0 then
    if get_response('¬Ì« »—«Ì Õ–› ' + IntToStr(DBGrid2.SelectedRows.Count) +
      ' «‰ Œ«» „ÿ„∆‰ Â” Ìœø ') = mryes then
    begin
      deletedCount := 0;
      for i := 0 to DBGrid2.SelectedRows.Count - 1 do
        if qryRecipts.BookmarkValid((DBGrid2.SelectedRows[i])) then
        begin
          qryRecipts.GotoBookmark((DBGrid2.SelectedRows[i]));
          id := qryRecipts.FieldByName('ReciptID').AsInteger;
          DeleteCheck(id);
          inc(deletedCount);
        end; // for
      Warn(IntToStr(deletedCount) + ' „Ê—œ Õ–› ‘œ. ');
      qryRecipts.Requery;
    end; // if for get_response

end;

procedure TSellPlan2F.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryRecipts);
end;

procedure TSellPlan2F.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryRecipts);
end;

procedure TSellPlan2F.actSendExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid2);
end;

//procedure TSellPlan2F.exportRecipt;
//begin
//end;

procedure TSellPlan2F.qryStorsAfterScroll(DataSet: TDataSet);
begin
  inherited;
  if qryCustomers.Active then
    qryCustomers.Requery;
end;

procedure TSellPlan2F.TabControl1Change(Sender: TObject);
begin
  inherited;
  UpDateList
end;

procedure TSellPlan2F.UpDateList;
begin
  case TabControl1.TabIndex of
    0:
      begin
        lblUnitName.Caption := '·Ì”  „«„Ê— Œ—Ìœ';
        With qryCustomers do
        begin
          Active := False;
          SQL.Text :=
            'SELECT SellsMethod AS CustID, SellsMethodName AS CustName, '''' AS CustomerNote';
          SQL.Add('FROM SellsMethods');
          SQL.Add('WHERE (SellsMethod >= 10)');
          Active := True;
        end;
      end;

    1:
      begin
        lblUnitName.Caption := '·Ì”  ﬂ«—Å—œ«“«‰';
        With qryCustomers do
        begin
          Active := False;
          SQL.Text :=
            'SELECT Customers.CustID,Customers.CustName,Customers.CustomerNote';
          SQL.Add('FROM Customers INNER JOIN');
          SQL.Add('CustomersGroup ON Customers.CustomerGrpID = CustomersGroup.CustomerGrpID');
          SQL.Add('WHERE (Customers.CustID <> 0) AND');
          SQL.Add('(Customers.CustomerActive = 0) AND (CustomersGroup.GroupType = 17)');
          Active := True;
        end;
      end;

  end;
end;

procedure TSellPlan2F.actPrintExecute(Sender: TObject);
begin
  inherited;
  try
    qryRecipts.DisableControls;
    InitReportFile(ppReport1, 'SellPlan2', True);
  finally
    qryRecipts.EnableControls;
  end;
end;

procedure TSellPlan2F.actprintvijehExecute(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(DBGrid2, FormType);
end;

procedure TSellPlan2F.ppLblPrintDateGetText(Sender: TObject; var Text: String);
begin
  Text := GetPrintDate;
end;

procedure TSellPlan2F.ppSysVarPageNoGetText(Sender: TObject; var Text: String);
begin
  Text := GetPageNumberString(Text)
end;

procedure TSellPlan2F.ppLblCaptionGetText(Sender: TObject; var Text: String);
begin
  Text := lblRecpits.Caption;
end;

procedure TSellPlan2F.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  Text := APPBank.CompanyName;
end;

procedure TSellPlan2F.actRowExecute(Sender: TObject);
var
  ReciptsRow: Integer;
begin
  inherited;
  With DMf.qryTmpTmp do
  begin
    Active := False;
    SQL.Text := 'SELECT max(ReciptsRow)';
    SQL.Add('FROM Recipts INNER JOIN');
    SQL.Add('Customers as Customers2 ON Recipts.PersonID2 = Customers2.CustID');
    SQL.Add('INNER JOIN Customers ON Recipts.PersonID1 = Customers.CustID');
    SQL.Add('WHERE (Recipts.ReciptType = :Type) AND (Recipts.PersonID2 = :PersonID2)');
    SQL.Add('AND (Recipts.StoreID=:StoreID) and (Recipts.ReciptState<3) ');
    SQL.Add('AND (Recipts.ParentReciptID=0 or Recipts.ParentReciptID is null)');
    SQL.Add(Format('AND ( YearID = %d ) AND ( ServerID =  %d ) ',
      [APPBank.Year, opt.ServerID]));
    Parameters := qryRecipts.Parameters;
    Active := True;
    ReciptsRow := Fields[0].AsInteger + 1;
    Active := False;
  end;
  ReciptsRow := StrToInt(Trim(get_box(' ‘„«—Â —œÌ› ›—„ —« Ê«—œ ﬂ‰Ìœ',
    '‘„«—Â —œÌ› ›—„:', IntToStr(ReciptsRow))));
  if get_response('¬Ì« »—«Ì  €ÌÌ— ‘„«—Â  — Ì» ›—„ »Â   ' + IntToStr(ReciptsRow)
    + ' „ÿ„∆‰ Â” Ìœø') = mryes then
    With DMf.qryTmpTmp do
    begin
      Active := False;
      SQL.Text := 'UPDATE Recipts SET ReciptsRow=' + IntToStr(ReciptsRow) +
        'WHERE ReciptID in ( ' + qryRecipts.FieldByName('ReciptID')
        .AsString + ')';
      SQL.Add(Format('AND ( YearID = %d ) AND ( ServerID =  %d ) ',
        [APPBank.Year, opt.ServerID]));
      ExecSQL;
    end;
  qryRecipts.Requery();
end;

end.
