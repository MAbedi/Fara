unit rptOrderControlPoint;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, Grids, Vcl.DBGrids, ImgList, DBActns, ActnList,
  StdCtrls, ExtCtrls, Buttons, DB, ADODB, ComCtrls,
  ppBands, ppCache, ppClass, ppProd, ppReport, ppComm, ppRelatv, ppDB,
  ppDBPipe, ppCtrls, ppVar, ppPrnabl, ppParameter, SumDBGrid, Filter_ADO_Const,
  ppDesignLayer, System.ImageList, System.Actions;

type
  TrptOrderControlPointF = class(Ttemplate2MDIF)
    DBGrid1: TDBGrid;
    qryOrderControlPoint: TADOQuery;
    srcOrderControlPoint: TDataSource;
    BitBtn3: TBitBtn;
    actSort: TAction;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    actSendToExcel: TAction;
    actPrintVijeh: TAction;
    qryOrderControlPointStuffSize: TStringField;
    qryOrderControlPointStuffDiameter: TFloatField;
    qryOrderControlPointStuffAlloy: TStringField;
    qryOrderControlPointminOrder: TFloatField;
    qryOrderControlPointmaxOrder: TFloatField;
    qryOrderControlPointorderPoint: TFloatField;
    qryOrderControlPointorderEntity: TFloatField;
    actPost: TAction;
    actFilter: TAction;
    ProgressBar1: TProgressBar;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppShape1: TppShape;
    ppLblCompanyName: TppLabel;
    ppLblCaption: TppLabel;
    ppSysVarPageNo: TppSystemVariable;
    ppLblPrintDate: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppLineDetail: TppLine;
    ppLin4Position: TppLine;
    ppFooterBand1: TppFooterBand;
    ppShape2: TppShape;
    ppLabel4: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppShape3: TppShape;
    ppLabel2: TppLabel;
    actPrint: TAction;
    qryOrderControlPointStuffCode: TLargeintField;
    qryOrderControlPointc_StuffName: TStringField;
    qryOrderControlPointUnitName: TStringField;
    qryOrderControlPointInvWeight: TFloatField;
    qryOrderControlPointOrderWeight: TFloatField;
    BitBtn1: TBitBtn;
    btnPrint: TBitBtn;
    btnPost: TBitBtn;
    CheckBox1: TCheckBox;
    qryinit: TADOQuery;
    RadioGroup1: TRadioGroup;
    SumGrid1: TSumGrid;
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSendToExcelExecute(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure ppLblPrintDateGetText(Sender: TObject; var Text: String);
    procedure ppSysVarPageNoGetText(Sender: TObject; var Text: String);
    procedure actPrintExecute(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure actPostExecute(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
  private
    OrginalSQL: string;
    procedure UpdateFilter;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  rptOrderControlPointF: TrptOrderControlPointF;

implementation

uses DM, GlobalPro, sort2, search2, mmessage,
  filter_ADO, FilterClass_ADO, FormFunctions, FaraConsts;

{$R *.dfm}

procedure TrptOrderControlPointF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 1);
end;

procedure TrptOrderControlPointF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  actFilter.Execute;
  if myParams.FindParam('StuffCode') = nil then
    close;

end;

procedure TrptOrderControlPointF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
end;

procedure TrptOrderControlPointF.FormCreate(Sender: TObject);
begin
  inherited;
  OrginalSQL := qryOrderControlPoint.SQL.Text;
  qryinit.Active := True;
  Entity_Weight(DBGrid1)
end;

procedure TrptOrderControlPointF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryOrderControlPoint);
end;

procedure TrptOrderControlPointF.CheckBox1Click(Sender: TObject);
begin
  inherited;
  UpdateFilter;
end;

procedure TrptOrderControlPointF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryOrderControlPoint);
end;

procedure TrptOrderControlPointF.actSendToExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TrptOrderControlPointF.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  if not(gdSelected in State) then
  begin
    // if odd(DBGrid1.DataSource.DataSet.RecNo) then
    // DBGrid1.Canvas.Brush.Color:=const_fixed_columns_color;
    if qryOrderControlPoint.FieldByName('InvWeight').AsFloat +
      qryOrderControlPoint.FieldByName('OrderWeight').AsFloat <=
      qryOrderControlPoint.FieldByName('minOrder').AsFloat then
      DBGrid1.Canvas.Font.Color := clRed;
  end; // if
  DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);

end;

procedure TrptOrderControlPointF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName
end;

procedure TrptOrderControlPointF.ppLblPrintDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate
end;

procedure TrptOrderControlPointF.ppSysVarPageNoGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TrptOrderControlPointF.RadioGroup1Click(Sender: TObject);
begin
  inherited;
  UpdateFilter
end;

procedure TrptOrderControlPointF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
    try
      AddItemFilter(GetFilter, TFilterStuffCode);
      // AddItem(DMf.adcBSell,'StuffCode','ßÇáÇ','ßÏ',ftLargeint,dvMinMax,'','',ciLookup,
      // 'SELECT c_StuffCode,c_StuffName from StuffCoding ',
      // 'select min(c_StuffCode),max(c_StuffCode) from StuffCoding');

      if showmodal = mrok then
      begin
        GetFilterString;
        UpdateFilter;
      end; // if
    finally;
      free;
    end; // try

end;

procedure TrptOrderControlPointF.UpdateFilter;
begin
  with qryOrderControlPoint do
  begin
    Active := False;
    SQL.Text := OrginalSQL;
    if not CheckBox1.Checked then
      SQL.Add('AND (SUM(derivedtbl_1.InvWeight) + SUM(derivedtbl_1.OrderWeight) '
        + '<= SUM(derivedtbl_1.orderPoint))');
    case RadioGroup1.ItemIndex of
      1:
        SQL.Add('AND (SUM(derivedtbl_1.InvWeight) + SUM(derivedtbl_1.OrderWeight) '
          + '<= SUM(derivedtbl_1.minOrder))');
      2:
        SQL.Add('AND (SUM(derivedtbl_1.InvWeight) + SUM(derivedtbl_1.OrderWeight) '
          + '> SUM(derivedtbl_1.minOrder))');
    end;

    Parameters.ParamByName('StuffCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['StuffCode'], ftLargeint);
    Parameters.ParamByName('StuffCodeTo').Value :=
      Getcto(myParams.ParamValues['StuffCode'], ftLargeint);
    Parameters.ParamByName('StuffCode1From').Value :=
      GetcFrom(myParams.ParamValues['StuffCode'], ftLargeint);
    Parameters.ParamByName('StuffCode1To').Value :=
      Getcto(myParams.ParamValues['StuffCode'], ftLargeint);
    Parameters.ParamByName('StuffCode2From').Value :=
      GetcFrom(myParams.ParamValues['StuffCode'], ftLargeint);
    Parameters.ParamByName('StuffCode2To').Value :=
      Getcto(myParams.ParamValues['StuffCode'], ftLargeint);
    Active := True;
  end; // with
end;

procedure TrptOrderControlPointF.actPostExecute(Sender: TObject);
var
  ReciptID, ReciptNumber: Integer;
  Q: TADOQuery;
  Txt: String;
  i, StoreID, SecondType, PersonID1: Integer;
begin
  inherited;
  try
    DMf.adcBSell.BeginTrans;
    qryOrderControlPoint.AfterScroll := nil;
    qryOrderControlPoint.DisableControls;

    if DBGrid1.SelectedRows.Count < 1 then
    begin
      Warn('ÓÝÇÑÔí ÇäÊÎÇÈ äÔÏå');
      Exit;
    end;
    ReciptID := Getanewid(nil, Self.Name, 'Recipts', 'ReciptID', nil,
      qryinit.FieldByName('StepCorrelate').AsInteger);
    Txt := 'SELECT MAX(ReciptNumber)FROM Recipts WHERE(ReciptType = 22 )' +
      ' AND ( YearID = ' + IntToStr(APPBank.Year) + ') AND ' + ' ServerID = ' +
      IntToStr(opt.ServerID);
    ReciptNumber := GetANewCode(Self.Name, Txt, 'ReciptNumber');

    Q := TADOQuery.Create(Self);
    with Q do
    begin
      BigMessageProgBar('ÏÑ ÍÇá ÕÏæÑ ÏÑÎæÇÓÊ ÎÑíÏ...',
        DBGrid1.SelectedRows.Count + 1);
      Connection := DMf.adcBSell;
      SQL.Text := 'SELECT MIN(n_StoreID) FROM Stores';
      Active := True;
      StoreID := Q.Fields[0].AsInteger;
      Active := False;

      SQL.Text :=
        'SELECT Top 1 SecondType,PersonID1 FROM Recipts WHERE(ReciptType = 22 )';
      Active := True;
      SecondType := Q.Fields[0].AsInteger;
      PersonID1 := Q.Fields[1].AsInteger;
      Active := False;

      SQL.Text := 'SELECT TOP 0 * FROM Recipts';
      Active := True;
      Q.Insert;
      Q.FieldByName('ReciptID').AsInteger := ReciptID;
      Q.FieldByName('ReciptNumber').Value := ReciptNumber;
      Q.FieldByName('OperatorID').Value := User.id;
      Q.FieldByName('YearID').Value := APPBank.Year;
      Q.FieldByName('ServerID').Value := opt.ServerID;
      Q.FieldByName('FirstUser').Value := User.Name;
      Q.FieldByName('ReciptDate').Value := var_glb_CurrentDate;
      Q.FieldByName('ReciptType').Value := 22;
      Q.FieldByName('ModifyDate').Value := Now;
      Q.FieldByName('StoreID').Value := StoreID;
      Q.FieldByName('SecondType').Value := SecondType;
      Q.FieldByName('PersonID1').Value := PersonID1;
      Q.FieldByName('UseOtherID').Value := 0;
      Q.Post;
      Active := False;
      SQL.Text := 'SELECT TOP 0 * FROM ReciptItems';
      Active := True;
      with DBGrid1.DataSource.DataSet do
        for i := 0 to DBGrid1.SelectedRows.Count - 1 do
        begin
          GotoBookmark((DBGrid1.SelectedRows.Items[i]));
          Q.Insert;
          Q.FieldByName('ReciptItemID').AsInteger :=
            Getanewid(Q, Self.Name, 'ReciptItems', 'ReciptItemID', nil,
            qryinit.FieldByName('StepCorrelate').AsInteger);
          Q.FieldByName('ReciptID').AsInteger := ReciptID;
          Q.FieldByName('StuffCode').AsLargeInt :=
            qryOrderControlPointStuffCode.AsInteger;
          Q.FieldByName('StuffSize').AsString :=
            qryOrderControlPointStuffSize.AsString;
          Q.FieldByName('StuffDiameter').AsString :=
            qryOrderControlPointStuffDiameter.AsString;
          Q.FieldByName('StuffAlloy').AsString :=
            qryOrderControlPointStuffAlloy.AsString;
          Q.FieldByName('RequestedWeight').AsFloat :=
            qryOrderControlPointorderEntity.AsFloat;
          if qryinit.FieldByName('EffectType').AsInteger in [3, 4, 5, 7] then
            Q.FieldByName('OutputWeight').AsFloat :=
              qryOrderControlPointorderEntity.AsFloat
          else
            Q.FieldByName('InputWeight').AsFloat :=
              qryOrderControlPointorderEntity.AsFloat;
          Q.Post;
          GoProgressBar(qryOrderControlPointc_StuffName.AsString);
        end;

      DMf.adcBSell.CommitTrans;
      FreeReservedCodes(DMf.adcBSell, '', '', Self.Name);
      Warn(' ÝÑã Èå ÊÇÑíÎ ' + var_glb_CurrentDate + #13#10 + ' æ ÔãÇÑå ÝÑã ' +
        IntToStr(ReciptNumber) + ' ËÈÊ ÔÏ.', mtInformation);
      CloseMessage;
      qryOrderControlPoint.Requery;
      qryOrderControlPoint.EnableControls;
      free;
    end;
  except
    on E: Exception do
    begin
      DMf.adcBSell.RollbackTrans;
      FreeReservedCodes(DMf.adcBSell, '', '', Self.Name);
      Warn(E.Message + #13#10 + 'ÇÔßÇá ÏÑ ËÈÊ');
      CloseMessage;
    end;
  end; // try

end;

procedure TrptOrderControlPointF.actPrintExecute(Sender: TObject);
begin
  inherited;
  try
    qryOrderControlPoint.DisableControls;
    InitReportFile(ppReport1, 'rptOrderControlPoint');
  finally
    qryOrderControlPoint.EnableControls;
  end; // try
end;

end.
