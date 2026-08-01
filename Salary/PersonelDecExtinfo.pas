unit PersonelDecExtinfo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, Mask, DBCtrls, DB, ADODB, Grids, Vcl.DBGrids, ComCtrls, ppProd,
  ppClass, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppBands, ppModule,
  ppCtrls, ppStrtch, ppSubRpt, ppVar, ppPrnabl, ppCache, pptypes,
  ppParameter, ppDesignLayer, System.ImageList, System.Actions,Filter_ADO_Const;

type
  TPersonelDecExtinfoF = class(Ttemplate2MDIF)
    qryPersonelDecExt: TADOQuery;
    srcPersonelDecExt: TDataSource;
    DBNavigator1: TDBNavigator;
    DBEdit2: TDBEdit;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    SpeedButton1: TSpeedButton;
    BitBtn7: TBitBtn;
    BitBtn2: TBitBtn;
    DBNavigator2: TDBNavigator;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    qryStandardTimes: TADOQuery;
    qryFormType: TADOQuery;
    srcFormType: TDataSource;
    actFilter: TAction;
    actPrint: TAction;
    actSendtoExcel: TAction;
    actSort: TAction;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppDBPipeline2: TppDBPipeline;
    qrysum: TADOQuery;
    srcSum: TDataSource;
    qryFormTypeFormInfoID: TIntegerField;
    qryFormTypeFormType: TSmallintField;
    qryFormTypeInfoID: TIntegerField;
    qryFormTypeInfoName_L1: TStringField;
    qryFormTypeInfoName_L2: TStringField;
    DBGrid2: TDBGrid;
    DBGrid1: TDBGrid;
    ppHeaderBand1: TppHeaderBand;
    ppShape2: TppShape;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel7: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLabel5: TppLabel;
    ppDBText9: TppDBText;
    ppLine5: TppLine;
    ppLine7: TppLine;
    ppDBText1: TppDBText;
    ppLabel1: TppLabel;
    ppLabel4: TppLabel;
    ppLabel6: TppLabel;
    ppDBText5: TppDBText;
    ppDetailBand1: TppDetailBand;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppDetailBand4: TppDetailBand;
    ppLine12: TppLine;
    ppLine9: TppLine;
    ppDBText2: TppDBText;
    ppDBText4: TppDBText;
    ppLine13: TppLine;
    ppLine11: TppLine;
    ppDBText3: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppShape1: TppShape;
    ppLabel10: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppLine3: TppLine;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    procedure FormDestroy(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSendtoExcelExecute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure ppLabel7GetText(Sender: TObject; var Text: String);
    procedure ppSystemVariable2GetText(Sender: TObject; var Text: String);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1ColEnter(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure qryFormTypeAfterScroll(DataSet: TDataSet);
    procedure ppLabel2GetText(Sender: TObject; var Text: String);
    procedure FormShow(Sender: TObject);
    procedure qryPersonelDecExtAfterOpen(DataSet: TDataSet);
  private
    FormType: Byte;
    capname: array of string;
    procedure UpdateFilter;

    { Private declarations }
  public
    { Public declarations }
  end;

var
  PersonelDecExtinfoF: TPersonelDecExtinfoF;

implementation

uses search2, filter_ADO, FilterClass_ADO, sort2, GlobalPro,
  searchCode_ADO, DM, Mymostafa, SalaryFunctions;

{$R *.dfm}

procedure TPersonelDecExtinfoF.UpdateFilter;
var
  sqltxt: String;
  i, k: Integer;
begin
  inherited;
  k := 0;
  with qryStandardTimes do
  begin
    Active := False;
    Active := True;
    qryPersonelDecExt.Active := False;
    qryPersonelDecExt.SQL.Text :=
      'SELECT  Pay.PersonelDecExt.PersonelNo , Pay.PersonelDecExt.FormInfoID ';
    while not eof do
    begin
      qryPersonelDecExt.SQL.Add(', sum(case InfoID when ' +
        Fieldbyname('InfoID').AsString +
        ' then EmployeeAmount else 0 end ) as EmployeeAmount' +
        Fieldbyname('InfoID').AsString);
      Next;
    end; // while
    qryPersonelDecExt.SQL.Add
      (',sum(EmployeeAmount) AS allsumAmount FROM  Pay.StandardTimes INNER JOIN  Pay.PersonelDecExt ON Pay.StandardTimes.InfoID = Pay.PersonelDecExt.FirstMounth ');
    qryPersonelDecExt.SQL.Add
      (' GROUP BY Pay.PersonelDecExt.PersonelNo , Pay.PersonelDecExt.FormInfoID');
  end; // with

  sqltxt := qryPersonelDecExt.SQL.Text;

  with qryPersonelDecExt do
  begin
    Active := False;
    SQL.Text :=
      'SELECT   Pay.PersonelInfo.PersonelNo as PersonNo , Pay.PersonelInfo.name_L1+'' ''+Pay.PersonelInfo.lastName_L1  as namelast_l1,';
    SQL.Add('Pay.PersonelInfo.name_L2+'' ''+Pay.PersonelInfo.lastName_L2 as namelast_l2, allStandardTimes.* ');
    SQL.Add('FROM  Pay.PersonelInfo INNER JOIN (');
    SQL.Add(sqltxt);
    SQL.Add(') allStandardTimes on  Pay.PersonelInfo.PersonelNo = allStandardTimes.PersonelNo');
    SQL.Add(' WHERE  (FormInfoID=:FormInfo)  and (Pay.PersonelInfo.PersonelNo between :PersonelNoFrom and :PersonelNoTo)    ');
    Parameters.ParamByName('PersonelNoFrom').Value :=
      GetcFrom(myParams.ParamValues['PersonelNo'], ftInteger);
    Parameters.ParamByName('PersonelNoTo').Value :=
      GetcTo(myParams.ParamValues['PersonelNo'], ftInteger);
    Parameters.ParamByName('FormInfo').Value :=
      qryFormType.Fieldbyname('FormInfoID').AsInteger;
    Active := True;
    for i := 0 to FieldCount - 1 do
    begin
      if Fields[i] is TBCDField then
      begin
        TBCDField(Fields[i]).currency := True;
        Fields[i].Tag := 3;
      end;
    end;

    SetLength(capname, qryStandardTimes.RecordCount + 1);
    qryStandardTimes.First;
    while not qryStandardTimes.eof do
    begin
      Fieldbyname('EmployeeAmount' + qryStandardTimes.Fieldbyname('InfoID')
        .AsString).DisplayLabel := qryStandardTimes.Fieldbyname
        ('infoName_L1').AsString;
      // TBCDField(FindField('EmployeeAmount'+qryStandardTimes.FieldByName('InfoID').AsString)).currency:=True;
      // TNumericField(FindField('EmployeeAmount'+qryStandardTimes.FieldByName('InfoID').AsString)).DisplayFormat:='#,0;(#,0)';
      capname[k] := qryStandardTimes.Fieldbyname('infoName_L1').AsString;
      qryStandardTimes.Next;
      k := k + 1;
    end; // while

    Fieldbyname('PersonNo').DisplayLabel := '‘.Å—”‰·';
    Fieldbyname('namelast_L1').DisplayLabel := '„‘Œ’«  Å—”‰·';
    Fieldbyname('namelast_L2').DisplayLabel := 'Name';
    Fieldbyname('allsumAmount').DisplayLabel := 'Ã„⁄ ﬂ·';
    Fieldbyname('PersonNo').Tag := 3;
    Fieldbyname('namelast_l1').Tag := 3;

  End; // with
  capname[k] := 'Ã„⁄ ﬂ·';
  setColumns(DBGrid1, '#03#04', False);
  with qrysum do
  begin
    Active := False;
    SQL.Clear;
    SQL.Add('SELECT   ''Ã„⁄ ﬂ·'' as s_u_m');
    qryStandardTimes.First;
    while not qryStandardTimes.eof do
    begin
      SQL.Add(' ,SUM(EmployeeAmount' + qryStandardTimes.Fieldbyname('infoid')
        .AsString + ')');
      qryStandardTimes.Next;
    end; // while
    SQL.Add(',sum(allsumAmount) AS allsumAmount  ');
    SQL.Add(' FROM (' + qryPersonelDecExt.SQL.Text + ')a');
    Parameters.ParamByName('PersonelNoFrom').Value :=
      GetcFrom(myParams.ParamValues['PersonelNo'], ftInteger);
    Parameters.ParamByName('PersonelNoTo').Value :=
      GetcTo(myParams.ParamValues['PersonelNo'], ftInteger);
    Parameters.ParamByName('FormInfo').Value :=
      qryFormType.Fieldbyname('FormInfoID').AsInteger;
    Active := True;
    for i := 0 to qrysum.FieldCount - 1 do
    begin
      if qrysum.Fields[i] is TBCDField then
        TBCDField(qrysum.Fields[i]).currency := True;
    end;
  end; // with
  DisbelLabel(Self);
end;

procedure TPersonelDecExtinfoF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1, IntToStr(FormType));
end;

procedure TPersonelDecExtinfoF.actPrintExecute(Sender: TObject);
var
  i, j: Integer;
  leftla1, leftdbt, leftdbca: real;
begin
  inherited;
  try
    qryPersonelDecExt.DisableControls;
    j := 0;
    leftdbt := ppDBText2.Left;
    leftdbca := ppDBCalc1.Left;
    leftla1 := ppLabel6.Left;

    for i := 5 to DBGrid1.Columns.Count - 1 do
    begin
      with TppDBText.Create(ppChildReport1) do
      begin
        TextAlignment := taRightJustified;
        Height := ppDBText2.Height;
        AutoSize := True;
        Font.Size := 10;
        Width := ppDBText2.Width;
        DisplayFormat := '#,0;(#,0)';
        Font.Name := 'badr';
        Left := leftdbt;
        leftdbt := leftdbt - ppDBText2.Width - 0.0937;
        DataPipeline := Self.ppDBPipeline1;
        DataField := DBGrid1.Columns[i].FieldName;
        Top := 0;
        Band := ppChildReport1.DetailBand;
      end; // with
      with TppDBCalc.Create(ppChildReport1) do
      begin
        TextAlignment := taRightJustified;
        Height := ppDBCalc1.Height;
        AutoSize := True;
        Font.Size := 10;
        Width := ppDBCalc1.Width;
        DisplayFormat := '#,0;(#,0)';
        Font.Name := 'badr';
        Left := leftdbca;
        leftdbca := leftdbca - ppDBCalc1.Width - 0.0937;
        DBCalcType := ppDBCalc1.DBCalcType;
        DataPipeline := Self.ppDBPipeline1;
        DataField := DBGrid1.Columns[i].FieldName;
        Top := ppDBCalc1.Top;
        Band := ppChildReport1.SummaryBand
      end; // with

      with TppLabel.Create(ppReport1) do
      begin
        TextAlignment := taCentered;
        AutoSize := True;
        Font.Style := [fsBold];
        Top := ppLabel6.Top;
        Height := ppLabel6.Height;
        Font.Name := 'Yagut';
        Font.Size := 10;
        Width := ppLabel6.Width;
        Left := leftla1;
        leftla1 := leftla1 - ppLabel6.Width - 0.0937;
        Band := ppReport1.HeaderBand;
        Caption := capname[j];
      end; // with
      j := j + 1;
    end; // for
    SetSendToBackShapeOnPrint(Self);
    ppReport1.Print;
  finally
    qryPersonelDecExt.EnableControls;
    setColumns(DBGrid1, '#03#04', False);
  end; // try
end;

procedure TPersonelDecExtinfoF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryPersonelDecExt);
end;

procedure TPersonelDecExtinfoF.actSendtoExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TPersonelDecExtinfoF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryPersonelDecExt);
end;

procedure TPersonelDecExtinfoF.ppLabel7GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TPersonelDecExtinfoF.ppSystemVariable2GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text);
end;

procedure TPersonelDecExtinfoF.SpeedButton1Click(Sender: TObject);
var
  Txt: String;
  s: Boolean;
  Results: array [0 .. 2] of String;
begin
  inherited;
  Txt := ' SELECT     FormInfoID, InfoName_L1, InfoName_L2 ' +
    'FROM         Pay.FormsInfo  WHERE     FormType =' + qryFormType.Fieldbyname
    ('FormType').AsString;
  s := searchCode_ADOF.SearchCode2(DMF.adcSalary, '  ê—ÊÂ «ÿ·«⁄« ', Txt,
    ['ﬂœ', '‰«„ 1', '‰«„ 2'], Results, [50, 100, 100], alLeft);
  if s then
    qryFormType.Locate('FormInfoID', Results[0], []);
end;

procedure TPersonelDecExtinfoF.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  if not(gdSelected in State) then
  begin
    if odd(DBGrid1.DataSource.DataSet.RecNo) then
      DBGrid1.Canvas.Brush.Color := const_fixed_columns_color;
  end; // if
  DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  //
  // if (1<Column.ID)and(Column.ID<5) then Exit;
  // if Column.ID<2 then DBGrid2.Columns[0].Width :=DBGrid1.Columns[0].Width+DBGrid1.Columns[1].Width
  // else DBGrid1.Columns[Column.ID-1].Width:=Column.Width;
end;

procedure TPersonelDecExtinfoF.DBGrid1ColEnter(Sender: TObject);
begin
  inherited;
  if DBGrid1.SelectedIndex > 4 then
    DBGrid2.SelectedIndex := DBGrid1.SelectedIndex - 4
  else
    DBGrid2.SelectedIndex := 0;
end;

procedure TPersonelDecExtinfoF.actFilterExecute(Sender: TObject);
begin
  inherited;
  FormType := var_glb_gParam;
  with qryFormType do
  begin
    Active := False;
    Parameters.ParamByName('FormType').Value := FormType;
  end; // with
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      AddItemFilter(GetFilter, TPersonelNo);
      if ShowModal = mrOk then
      begin
        GetFilterString;
        qryFormType.Active := True;
      end; // if
    finally
      Free;
    end; // try
  end; // with
end;

procedure TPersonelDecExtinfoF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 1, False, IntToStr(FormType));
end;

procedure TPersonelDecExtinfoF.qryFormTypeAfterScroll(DataSet: TDataSet);
begin
  inherited;
  UpdateFilter;
end;

procedure TPersonelDecExtinfoF.ppLabel2GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName
end;

procedure TPersonelDecExtinfoF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  if actFilter.Execute then
    if myParams.FindParam('PersonelNo') = nil then
      Close;
end;

procedure TPersonelDecExtinfoF.qryPersonelDecExtAfterOpen(DataSet: TDataSet);
begin
  inherited;
  qryPersonelDecExt.Sort := 'PersonelNo';

end;

end.
