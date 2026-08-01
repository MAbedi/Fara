unit rptCash2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, ADODB, ppParameter, ppBands, ppClass, ppCtrls, System.DateUtils,
  ppReport, ppStrtch, ppSubRpt, ppVar, ppPrnabl, ppCache, ppProd, ppDB, ppComm,
  ppRelatv, ppDBPipe, ComCtrls, DBCtrls, Mask, Menus, Provider, DBClient,
  ppDesignLayer, System.ImageList, System.Actions, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, CedarDbGrid;

type
  TrptCash2F = class(Ttemplate2MDIF)
    qryDetail: TADOQuery;
    src1: TDataSource;
    qryMaster: TADOQuery;
    ppDBPipeline1: TppDBPipeline;
    ppDBPipeline1ppField1: TppField;
    ppDBPipeline1ppField2: TppField;
    ppDBPipeline1ppField3: TppField;
    ppDBPipeline1ppField4: TppField;
    ppDBPipeline1ppField5: TppField;
    ppDBPipeline1ppField6: TppField;
    ppDBPipeline1ppField7: TppField;
    ppDBPipeline1ppField8: TppField;
    ppDBPipeline1ppField9: TppField;
    ppDBPipeline1ppField10: TppField;
    ppDBPipeline1ppField11: TppField;
    ppDBPipeline1ppField12: TppField;
    ppDBPipeline1ppField13: TppField;
    ppDBPipeline1ppField14: TppField;
    ppDBPipeline1ppField15: TppField;
    ppDBPipeline1ppField16: TppField;
    ppDBPipeline1ppField17: TppField;
    ppDBPipeline1ppField18: TppField;
    ppDBPipeline1ppField19: TppField;
    ppDBPipeline1ppField20: TppField;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppLblCompanyName: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppParameterList1: TppParameterList;
    btnPrint: TBitBtn;
    btnSendExcel: TBitBtn;
    actSendExcel: TAction;
    actPrint: TAction;
    btnSort: TBitBtn;
    actSort: TAction;
    actFilter: TAction;
    btnSearch_: TBitBtn;
    ImageList2: TImageList;
    DBGrid1: TCedarDbgrid;
    BitBtn1: TBitBtn;
    procedure actSendExcelExecute(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure qryDetailAfterOpen(DataSet: TDataSet);
    procedure qryDetailAfterClose(DataSet: TDataSet);
    procedure actSortExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure FormResize(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private

    FDate, qryMasterSql: string;
    procedure initQry;
    procedure initDetaile;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  rptCash2F: TrptCash2F;

implementation

uses DM, shamsiDate, GlobalPro, FaraConsts, sort2, search2, filter_ADO,
  FilterClass_ADO, Filter_ADO_Const, search1;

{$R *.dfm}

procedure TrptCash2F.initQry;
begin
  FDate := miladi2Shamsi(incmonth(now, -1));
  FDate := System.Copy(FDate, 1, 7);
  with qryMaster do
  begin
    SQL.Text := StringReplace(qryMasterSql, '@DateFrom', FDate, [rfReplaceAll]);

    Parameters.ParamByName('FormDateFrom').Value :=
      GetcFrom(myParams.ParamValues['FormDate'], ftDate);
    Parameters.ParamByName('FormDateTo').Value :=
      GetcTo(myParams.ParamValues['FormDate'], ftDate);
    Parameters.ParamByName('CheckDateFrom').Value :=
      GetcFrom(myParams.ParamValues['CheckDate'], ftDate);
    Parameters.ParamByName('CheckDateTo').Value :=
      GetcTo(myParams.ParamValues['CheckDate'], ftDate);

    Open;
  end;
  initDetaile;
end;

procedure TrptCash2F.qryDetailAfterClose(DataSet: TDataSet);
begin
  inherited;
  qryDetail.Close;
end;

procedure TrptCash2F.qryDetailAfterOpen(DataSet: TDataSet);
begin
  inherited;
  qryDetail.Open;
  DBGrid1.ColorDBGrid;
  DBGrid1.setSizeColDBGrid
end;

procedure TrptCash2F.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      AddItem(DMf.adcBSell, 'CheckDate', ' تاريخ  چك ', 'تاريخ', ftDate,
        dvMinMax, '', '', ciSimple, '',
        'SELECT MIN(CheckDate),MAX(CheckDate) FROM FormItems where len(CheckDate)=10', False, '',
        '', True);

      AddItem(DMf.adcBSell, 'FormDate', ' تاريخ فرم ', 'تاريخ', ftDate,
        dvMinMax, '', '', ciSimple, '', 'SELECT  ''' + APPBank.StartYear +
        ''',MAX(FormDate) FROM Forms');

      if ShowModal = mrOk then
      begin
        GetFilterString;
        initQry;
      end; // if
    finally
      Free;
    end; // try
  end; // with

end;

procedure TrptCash2F.actPrintExecute(Sender: TObject);
begin
  inherited;
  qryDetail.DisableControls;
  try
    InitReportFile(ppReport1, 'rptCash2');
  finally
    qryDetail.EnableControls;
  end;
end;

procedure TrptCash2F.actSearch_Execute(Sender: TObject);
begin
  inherited;
  searchF.ShowSearch(qryDetail);
end;

procedure TrptCash2F.actSendExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TrptCash2F.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryDetail);
end;

procedure TrptCash2F.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
begin
  inherited;
  if not(gdSelected in State) and (Column.FieldName <> 'Remain') then
  begin
    if (qryDetail.FindField('p').AsFloat = 2) or
      (qryDetail.FindField('p').AsFloat = 4) then
      DBGrid1.Canvas.Brush.Color := const_fixed_columns_color
    else if (qryDetail.FindField('p').AsFloat = 1) or
      (qryDetail.FindField('p').AsFloat = 3) then
      DBGrid1.Canvas.Brush.Color := const_normal_columns_color
    else
      DBGrid1.Canvas.Brush.Color := const_Date_columns_color;

  end; // if
  DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);

end;

procedure TrptCash2F.FormCreate(Sender: TObject);
begin
  inherited;
  qryMasterSql := qryMaster.SQL.Text
end;

procedure TrptCash2F.FormResize(Sender: TObject);
begin
  inherited;
  DBGrid1.setSizeColDBGrid;
end;

procedure TrptCash2F.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  actFilter.Execute;
  if myParams.FindParam('CheckDate') = nil then
    Close;
end;

procedure TrptCash2F.initDetaile;
var
  Script, script2, Sum: tstrings;
  fld: TField;
  i: Integer;
  DateFromRemain: string;
begin
  Script := TStringList.Create;
  script2 := TStringList.Create;
  Sum := TStringList.Create;
  try
    with qryMaster do
    begin
      First;
      while not Eof do
      begin
        Script.Text := Script.Text +
          Format(',CAST(SUM( CASE WHEN Forms.CustomerID1 = %s THEN  FI.ItemAmount ELSE 0 END) AS MONEY) Amount'
          + inttostr(RecNo), [fieldbyname('CustomerID1').asstring]);
        script2.Text := script2.Text + Format(',0 Amount' + inttostr(RecNo),
          [fieldbyname('CustomerID1').asstring]);
        Sum.Add('0');
        Next;
      end;
    end;
    with qryDetail do
    begin
      Close;

      DateFromRemain := GetcFrom(myParams.ParamValues['FormDate'], ftDate);
      DateFromRemain := miladi2Shamsi
        (IncDay(Shamsi2Miladi(DateFromRemain), -1));
      Parameters.ParamByName('DateFromRemain1').Value := DateFromRemain;

      SQL.Text := StringReplace(SQL.Text, '@FormDateFrom',
       QuotedStr( GetcFrom(myParams.ParamValues['FormDate'], ftDate)), [rfReplaceAll]);
      SQL.Text := StringReplace(SQL.Text, '@FormDateTo',
        QuotedStr(GetcTo(myParams.ParamValues['FormDate'], ftDate)), [rfReplaceAll]);

      SQL.Text := StringReplace(SQL.Text, '@CheckDateFrom',
       QuotedStr( GetcFrom(myParams.ParamValues['CheckDate'], ftDate)), [rfReplaceAll]);
      SQL.Text := StringReplace(SQL.Text, '@CheckDateTo',
       QuotedStr( GetcTo(myParams.ParamValues['CheckDate'], ftDate)), [rfReplaceAll]);

      SQL.Text := StringReplace(SQL.Text, '@YearIDFrom', inttostr(APPBank.Year),
        [rfReplaceAll]);
      SQL.Text := StringReplace(SQL.Text, '@YearIDTo', inttostr(APPBank.Year),
        [rfReplaceAll]);
      SQL.Text := StringReplace(SQL.Text, '@DateFrom', FDate, [rfReplaceAll]);
      SQL.Text := StringReplace(SQL.Text, ',@Amount', Script.Text,
        [rfReplaceAll]);
      SQL.Text := StringReplace(SQL.Text, ',@Bank', script2.Text,
        [rfReplaceAll]);

      if Parameters.FindParam('YearIDFrom') <> nil then
        Parameters.ParamByName('YearIDFrom').Value := APPBank.Year;
      if Parameters.FindParam('YearIDTo') <> nil then
        Parameters.ParamByName('YearIDTo').Value := APPBank.Year;

      Open;
      DBGrid1.Columns[0].Visible := False;
    end;
  finally
    Script.Free;
    script2.Free;
  end;
  with qryMaster do
  begin
    First;
    qryDetail.FindField('Week').DisplayLabel := 'بانک/هفته';
    qryDetail.FindField('Week').tag := 3;
    qryDetail.FindField('Caption').DisplayLabel := 'عنوان';
    qryDetail.FindField('Caption').tag := 3;
    try
      fld := qryDetail.FindField('Remain');
      fld.DisplayLabel := 'مانده از قبل';
      fld.tag := 3;
      TBCDField(fld).currency := True;
      // Set Remain
      with qryDetail do
      begin
        First;
        Sum.Add('0');
        while not Eof do
        begin
          // if FindField('p').AsFloat = 4 then
          // Sum.Strings[0] := FloatToStr(StrToFloat(Sum.Strings[0]) + // -
          // fld.AsFloat);
          // if FindField('p').AsFloat = 1 then
          if FindField('p').AsFloat = FindField('p').AsInteger then
            Sum.Strings[0] := FloatToStr(StrToFloat(Sum.Strings[0]) +
              fld.AsFloat);
          Next;
        end;
      end;
      /// ///////////
      while not Eof do
      begin
        i := RecNo;
        fld := qryDetail.FindField('Amount' + inttostr(RecNo));
        TBCDField(fld).currency := True;
        fld.tag := 3;
        fld.DisplayLabel := fieldbyname('CustName').asstring;
        // Set Sum
        with qryDetail do
        begin
          First;
          while not Eof do
          begin
            // if FindField('p').AsFloat = 4 then
            // Sum.Strings[i] := FloatToStr(StrToFloat(Sum.Strings[i]) + // -
            // fld.AsFloat);
            // if FindField('p').AsFloat = 1 then
            if FindField('p').AsFloat = FindField('p').AsInteger then
              Sum.Strings[i] := FloatToStr(StrToFloat(Sum.Strings[i]) +
                fld.AsFloat);
            Next;
          end;
        end;
        Sum.Strings[i] := FloatToStr(StrToFloat(Sum.Strings[i]) +
          StrToFloat(Sum.Strings[i - 1]));
        ///
        Next;
      end;
      with qryDetail do
      begin
        Insert;
        Fields[0].ReadOnly := False;
        Fields[1].ReadOnly := False;
        Fields[0].AsInteger := 5;
        Fields[1].asstring := 'جمع نقدینگی و اسناد';
        for i := 0 to Sum.Count - 1 do
        begin
          Fields[i + 3].ReadOnly := False;
          Fields[i + 3].asstring := Sum.Strings[i];
        end;
        Post;
      end;
    finally
      // qryDetail.IndexFieldNames := 'p;Week';
      Sum.Free;
    end

  end;
end;

end.
