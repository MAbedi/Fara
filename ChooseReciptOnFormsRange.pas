unit ChooseReciptOnFormsRange;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template5, StdCtrls, CheckLst, DBActns, ActnList, Buttons,
  ExtCtrls, DB, ADODB, Grids, Vcl.DBGrids, ComCtrls, DBClient, Provider,
  ppBands, ppCtrls, ppPrnabl, ppClass, ppDB, ppCache, ppDBPipe, ppComm,
  ppRelatv, ppProd, ppReport, System.Actions;

type
  TChooseReciptOnFormsRangeF = class(TTemplate5F)
    qryChecks: TADOQuery;
    srcChecks: TDataSource;
    BitBtn1: TBitBtn;
    Image2: TImage;
    Image3: TImage;
    StatusBar1: TStatusBar;
    DataSetProvider1: TDataSetProvider;
    cliChecks: TClientDataSet;
    cliChecks_checked: TBooleanField;
    actSearch: TAction;
    actSort: TAction;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    StatusBar2: TStatusBar;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    actPrint: TAction;
    actExcel: TAction;
    actSelectAll: TAction;
    Panel2: TPanel;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    lblSumChecks: TLabel;
    actSlelectInverse: TAction;
    DBGrid1: TDBGrid;
    qryInsert: TADOQuery;
    cliChecksFormID: TIntegerField;
    cliChecksFormNumber: TIntegerField;
    cliChecksFormDate: TStringField;
    cliChecksCustomerID1: TIntegerField;
    cliChecksCustName1: TStringField;
    cliChecksCustomerID2: TIntegerField;
    cliChecksCustName2: TStringField;
    cliChecksFormCaption: TStringField;
    cliChecksFormItemsAmount: TBCDField;
    cliChecksPrice: TBCDField;
    procedure FormResize(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure qryChecksAfterOpen(DataSet: TDataSet);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure actSearchExecute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure ppLabel3GetText(Sender: TObject; var Text: String);
    procedure ppLabel1GetText(Sender: TObject; var Text: String);
    procedure actSelectAllExecute(Sender: TObject);
    procedure actSlelectInverseExecute(Sender: TObject);
    procedure actExcelExecute(Sender: TObject);
    procedure DBGrid1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    cliSum: TClientDataSet;
    sumChecked, sumUnchecked: Currency;
    countChecked, countUnchecked: Integer;
    procedure ToggleCheck(CalculateSummary: boolean = True);
    procedure CalculateSumChecks;
    { Private declarations }
  public
    function SelectChecks(qryRecipts: TADOQuery; formType, SqlFilter: String;
      formID: Integer): boolean;
    { Public declarations }
  end;

var
  ChooseReciptOnFormsRangeF: TChooseReciptOnFormsRangeF;

implementation

uses DM, GlobalPro, search1, sort;

{$R *.dfm}

function TChooseReciptOnFormsRangeF.SelectChecks(qryRecipts: TADOQuery;
  formType, SqlFilter: String; formID: Integer): boolean;
begin
  Result := False;
  ChooseReciptOnFormsRangeF := TChooseReciptOnFormsRangeF.Create(Application);
  with ChooseReciptOnFormsRangeF do
    try
      with qryChecks Do
      begin
        Active := False;
        SQL.Add(SqlFilter);
        SQL.Add('AND (Forms.FormType IN (' + formType + '))  ');
        Active := True;
      end; // with
      with qryInsert do
      begin
        Active := False;
        SQL.Text :=
          'SELECT FormID FROM ReciptOnFormsRange WHERE(ReciptID=:ReciptID)';
        SQL.Add('and ServerID = ' + qryRecipts.Fieldbyname('ServerID')
          .AsString);
        SQL.Add('and YearID = ' + qryRecipts.Fieldbyname('YearID').AsString);
        Parameters.ParamByName('ReciptID').Value :=
          qryRecipts.Fieldbyname('ReciptID').AsInteger;
        Active := True;
        while not cliChecks.eof do
        begin
          if Locate('FormID', cliChecks.Fieldbyname('FormID')
            .AsInteger, []) then
          begin
            cliChecks.Edit;
            cliChecks.Fieldbyname('_Checked').AsBoolean := True;
            cliChecks.Post;
          end;
          cliChecks.Next;
        end; // while
        Active := False;
      end; // with qryinsert
      if ShowModal = mrOk then
      begin
        with cliChecks do
        begin
          with qryInsert do
          begin
            SQL.Text :=
              'DELETE FROM ReciptOnFormsRange WHERE(ReciptID=:ReciptID)';
            SQL.Add('and ServerID = ' + qryRecipts.Fieldbyname('ServerID')
              .AsString);
            SQL.Add('and YearID = ' + qryRecipts.Fieldbyname('YearID')
              .AsString);
            Parameters.ParamByName('ReciptID').Value :=
              qryRecipts.Fieldbyname('ReciptID').AsInteger;
            ExecSQL;
            SQL.Text :=
              'INSERT INTO ReciptOnFormsRange (FormID, ReciptID,ServerID,YearID)';
            SQL.Add('SELECT FormID,:ReciptID,ServerID,YearID FROM Forms');
            SQL.Add('WHERE (FormID IN (:FormID))');
          end; // with qryinsert
          DisableControls;
          first;
          while not eof do
          begin
            with qryInsert do
            begin
              if cliChecks_checked.AsBoolean then
              begin
                Parameters.ParamByName('FormID').Value :=
                  cliChecks.Fieldbyname('FormID').AsInteger;
                Parameters.ParamByName('ReciptID').Value :=
                  qryRecipts.Fieldbyname('ReciptID').AsInteger;
                ExecSQL;
              end; // if
            end; // with qryinsert
            Next;
          end; // while
        end; // with
        Result := True
      end; // if
      // end;//with
    finally
      ChooseReciptOnFormsRangeF.Free;

    end; // try
end;

procedure TChooseReciptOnFormsRangeF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 6);
end;

procedure TChooseReciptOnFormsRangeF.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  if DataCol = 0 then
  begin
    DBGrid1.Canvas.Rectangle(Rect);
    if cliChecks_checked.AsBoolean then
      DBGrid1.Canvas.Draw(Rect.Left, Rect.Top, Image3.Picture.Graphic)
    else
      DBGrid1.Canvas.Draw(Rect.Left, Rect.Top, Image2.Picture.Graphic)
  end; // if
end;

procedure TChooseReciptOnFormsRangeF.DBGrid1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_SPACE then
  begin
    Key := 0;
    ToggleCheck;
  end; // if
end;

procedure TChooseReciptOnFormsRangeF.DBGrid1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  // (Sender as TDBGrid).Refresh
end;

procedure TChooseReciptOnFormsRangeF.qryChecksAfterOpen(DataSet: TDataSet);
begin
  inherited;
  cliChecks.Active := False;
  cliChecks.Active := True;
end;

procedure TChooseReciptOnFormsRangeF.ToggleCheck(CalculateSummary
  : boolean = True);
begin
  with cliChecks do
  begin
    Edit;
    Fieldbyname('_Checked').AsBoolean := not Fieldbyname('_Checked').AsBoolean;
    Post;
  end; // with
  if CalculateSummary then
    CalculateSumChecks;
end;

procedure TChooseReciptOnFormsRangeF.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  ToggleCheck;
end;

procedure TChooseReciptOnFormsRangeF.actSearchExecute(Sender: TObject);
begin
  inherited;
  searchF.ShowSearch(cliChecks);
end;

procedure TChooseReciptOnFormsRangeF.actSortExecute(Sender: TObject);
begin
  inherited;
  sortF.ShowSort(cliChecks);
end;

procedure TChooseReciptOnFormsRangeF.FormCreate(Sender: TObject);
begin
  inherited;
  cliSum := TClientDataSet.Create(Self);
end;

procedure TChooseReciptOnFormsRangeF.FormDestroy(Sender: TObject);
begin
  inherited;
  cliSum.Free;
  SaveColWidth(DBGrid1);
end;

procedure TChooseReciptOnFormsRangeF.CalculateSumChecks;
begin
  with cliSum do
  begin
    CloneCursor(cliChecks, True);
    first;
    sumChecked := 0;
    sumUnchecked := 0;
    countChecked := 0;
    countUnchecked := 0;
    while not eof do
    begin
      if Fieldbyname('_checked').AsBoolean then
      begin
        Inc(countChecked);
        sumChecked := sumChecked + Fieldbyname('Price').AsCurrency;
      end
      else
      begin
        Inc(countUnchecked);
        sumUnchecked := sumUnchecked + Fieldbyname('Price').AsCurrency;
      end; // else
      Next;
    end; // while
    Close;
  end; // with
  StatusBar1.Panels[1].Text := ' ⁄œ«œ ›—„Â«Ì «‰ Œ«» ‘œÂ = ' +
    IntToStr(countChecked);
  StatusBar1.Panels[0].Text := 'Ã„⁄ „»·€ ›—„Â«Ì «‰ Œ«» ‘œÂ = ' +
    CurrToStrF(sumChecked, ffCurrency, 0);
  StatusBar2.Panels[1].Text := ' ⁄œ«œ ›—„Â«Ì »«ﬁÌ„«‰œÂ     = ' +
    IntToStr(countUnchecked);
  StatusBar2.Panels[0].Text := 'Ã„⁄ „»·€ ›—„Â«Ì »«ﬁÌ„«‰œÂ     = ' +
    CurrToStrF(sumUnchecked, ffCurrency, 0);
  lblSumChecks.Caption := num2alphabet(round(sumChecked));
end;

procedure TChooseReciptOnFormsRangeF.ppLabel3GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TChooseReciptOnFormsRangeF.ppLabel1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TChooseReciptOnFormsRangeF.actSelectAllExecute(Sender: TObject);
begin
  inherited;
  with cliChecks do
  begin
    DisableControls;
    first;
    while not eof do
    begin
      Edit;
      Fieldbyname('_checked').AsBoolean := True;
      Post;
      Next;
    end; // while
    first;
    EnableControls;
  end; // with
  CalculateSumChecks;
end;

procedure TChooseReciptOnFormsRangeF.actSlelectInverseExecute(Sender: TObject);
begin
  inherited;
  with cliChecks do
  begin
    DisableControls;
    first;
    while not eof do
    begin
      Edit;
      Fieldbyname('_checked').AsBoolean := not Fieldbyname('_checked')
        .AsBoolean;
      Post;
      Next;
    end; // while
    first;
    EnableControls;
  end; // with
  CalculateSumChecks;
end;

procedure TChooseReciptOnFormsRangeF.actExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

end.
