unit rptCash;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, ADODB, ppParameter, ppBands, ppClass, ppCtrls,
  ppReport, ppStrtch, ppSubRpt, ppVar, ppPrnabl, ppCache, ppProd, ppDB, ppComm,
  ppRelatv, ppDBPipe, ComCtrls, DBCtrls, Mask, Menus, Provider, DBClient,
  ppDesignLayer, System.ImageList, System.Actions, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, CedarDbGrid;

type
  TrptCashF = class(Ttemplate2MDIF)
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
    cliDetail: TClientDataSet;
    DataSetProvider1: TDataSetProvider;
    btnSort: TBitBtn;
    actSort: TAction;
    actFilter: TAction;
    btnSearch_: TBitBtn;
    ImageList2: TImageList;
    DBGrid1: TCedarDbgrid;
    procedure FormCreate(Sender: TObject);
    procedure actSendExcelExecute(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure qryDetailAfterOpen(DataSet: TDataSet);
    procedure qryDetailAfterClose(DataSet: TDataSet);
    procedure actSortExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure FormResize(Sender: TObject);
  private

    FDate: string;
    procedure initForm;
    procedure initDetaile;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  rptCashF: TrptCashF;

implementation

uses DM, shamsiDate, GlobalPro, FaraConsts, sort2, search2, sort, search1;

{$R *.dfm}

procedure TrptCashF.initForm;
begin
  FDate := miladi2Shamsi(incmonth(now, -1));
  FDate := System.Copy(FDate, 1, 7);
  with qryMaster do
  begin
    SQL.Text := StringReplace(SQL.Text, '@DateFrom', FDate, [rfReplaceAll]);
    Open;
  end;
  initDetaile;
end;

procedure TrptCashF.qryDetailAfterClose(DataSet: TDataSet);
begin
  inherited;
  cliDetail.Close;
end;

procedure TrptCashF.qryDetailAfterOpen(DataSet: TDataSet);
begin
  inherited;
  cliDetail.Open;
  DBGrid1.ColorDBGrid;
  DBGrid1.setSizeColDBGrid
end;

procedure TrptCashF.actPrintExecute(Sender: TObject);
begin
  inherited;
  qryDetail.DisableControls;
  try
    InitReportFile(ppReport1, 'rptCash');
  finally
    qryDetail.EnableControls;
  end;
end;

procedure TrptCashF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  searchF.ShowSearch(cliDetail);
end;

procedure TrptCashF.actSendExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TrptCashF.actSortExecute(Sender: TObject);
begin
  inherited;
  sortF.ShowSort(cliDetail);
end;

procedure TrptCashF.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
begin
  inherited;
  if not(gdSelected in State) and (Column.FieldName <> 'Remain') then
  begin
    if (cliDetail.FindField('p').AsFloat = 2) or
      (cliDetail.FindField('p').AsFloat = 4) then
      DBGrid1.Canvas.Brush.Color := const_fixed_columns_color
    else if (cliDetail.FindField('p').AsFloat = 1) or
      (cliDetail.FindField('p').AsFloat = 3) then
      DBGrid1.Canvas.Brush.Color := const_normal_columns_color
    else
      DBGrid1.Canvas.Brush.Color := const_Date_columns_color;

  end; // if
  DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);

end;

procedure TrptCashF.FormCreate(Sender: TObject);
begin
  inherited;
  initForm;
end;

procedure TrptCashF.FormResize(Sender: TObject);
begin
  inherited;
  DBGrid1.setSizeColDBGrid;
end;

procedure TrptCashF.initDetaile;
var
  Script, script2, Sum: tstrings;
  fld: TField;
  i: Integer;
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
          Format(',CAST(SUM( CASE WHEN LEFT(FI.CheckDate,7) = ''%s'' THEN  FI.ItemAmount ELSE 0 END) AS MONEY) Amount'
          + inttostr(RecNo), [fieldbyname('Code').asstring]);
        script2.Text := script2.Text + Format(',0 Amount' + inttostr(RecNo),
          [fieldbyname('Code').asstring]);
        Sum.Add('0');
        Next;
      end;
    end;
    with qryDetail do
    begin
      Close;
      Parameters.ParamByName('DateTo').Value := miladi2Shamsi(now);
      Parameters.ParamByName('Date1To').Value := miladi2Shamsi(now);
      Parameters.ParamByName('DateFromRemain').Value :=
        inttostr(APPBank.Year - 1) + '/12/29';
      Parameters.ParamByName('DateFromRemain1').Value :=
        inttostr(APPBank.Year - 1) + '/12/29';

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
    cliDetail.FindField('Week').DisplayLabel := 'بانک/هفته';
    cliDetail.FindField('Week').tag := 3;
    cliDetail.FindField('Caption').DisplayLabel := 'عنوان';
    cliDetail.FindField('Caption').tag := 3;
    try
      fld := cliDetail.FindField('Remain');
      fld.DisplayLabel := 'مانده از قبل';
      fld.tag := 3;
      TBCDField(fld).currency := True;
      // Set Remain
      with cliDetail do
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
        fld := cliDetail.FindField('Amount' + inttostr(RecNo));
        TBCDField(fld).currency := True;
        fld.tag := 3;
        fld.DisplayLabel := fieldbyname('Mounth').asstring;
        // Set Sum
        with cliDetail do
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
      with cliDetail do
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
      cliDetail.IndexFieldNames := 'p;Week';
      Sum.Free;
    end

  end;
end;

end.
