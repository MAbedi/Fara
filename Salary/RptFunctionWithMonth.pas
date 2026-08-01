unit RptFunctionWithMonth;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, ADODB, ComCtrls, ToolWin, ppCtrls, ppBands,
  ppModule, ppVar, ppPrnabl, ppClass, ppCache, ppDB, ppProd, Filter_ADO_Const,
  ppReport, ppComm, ppRelatv, ppDBPipe, pptypes, DBCtrls,
  ppParameter, ppDesignLayer, System.ImageList, System.Actions,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, CedarDbGrid;

type
  TRptFunctionWithMonthF = class(Ttemplate2MDIF)
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    ToolButton11: TToolButton;
    ToolButton12: TToolButton;
    qryFunction_Mounth: TADOQuery;
    srcFunction_Mounth: TDataSource;
    qryFunctionShow: TADOQuery;
    BitBtn7: TBitBtn;
    actFilter: TAction;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    Button1: TButton;
    actPrint: TAction;
    BitBtn6: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn4: TBitBtn;
    DBNavigator2: TDBNavigator;
    actSendtoExcel: TAction;
    actSort: TAction;
    Button2: TButton;
    ppHeaderBand1: TppHeaderBand;
    ppShape3: TppShape;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel7: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLabel17: TppLabel;
    ppLblHours: TppLabel;
    ppLblDay: TppLabel;
    ppLabel21: TppLabel;
    ppLabel13: TppLabel;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppDBText2: TppDBText;
    ppDetailBand1: TppDetailBand;
    ppDBText7: TppDBText;
    ppDBTxtFunDay: TppDBText;
    ppDBTxtFunTime: TppDBText;
    ppDBText12: TppDBText;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppLine12: TppLine;
    ppLine9: TppLine;
    ppLine2: TppLine;
    ppFooterBand1: TppFooterBand;
    ppShape2: TppShape;
    ppLabel1: TppLabel;
    ppDBCalcFunTime: TppDBCalc;
    ppDBCalcFunDay: TppDBCalc;
    ppLine11: TppLine;
    ppLine13: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppShape1: TppShape;
    ppLabel10: TppLabel;
    ppDBCalcFunTimesur: TppDBCalc;
    ppDBCalcFunDaysur: TppDBCalc;
    ppLine1: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine8: TppLine;
    actSMS: TAction;
    qryFormInfo: TADOQuery;
    qryFormInfoFormInfoID: TIntegerField;
    qryFormInfoInfoID: TIntegerField;
    qryFormInfoInfoName_L1: TStringField;
    qryFormInfoInfoName_L2: TStringField;
    qryFormInfoFormType: TSmallintField;
    qryFormInfoStandardDays: TFloatField;
    qryFormInfoStandardTimes: TFloatField;
    qryFormInfoAmount: TBCDField;
    ppDBText1: TppDBText;
    actPrint2: TAction;
    Button3: TButton;
    DBGrid1: TCedarDbgrid;
    procedure ToolButton1Click(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure ppLabel7GetText(Sender: TObject; var Text: String);
    procedure ppSystemVariable2GetText(Sender: TObject; var Text: String);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSendtoExcelExecute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ppLabel2GetText(Sender: TObject; var Text: String);
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure actSMSExecute(Sender: TObject);
    procedure ppDBText1GetText(Sender: TObject; var Text: string);
    procedure actPrint2Execute(Sender: TObject);

  private
    MonthNo: Byte;
    capname: array of String;
    procedure MakeSql;
    procedure UpdateList;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RptFunctionWithMonthF: TRptFunctionWithMonthF;

implementation

uses DM, Mymostafa, GlobalPro, filter_ADO, FilterClass_ADO, search2, sort2,
  SalaryFunctions, main, FunctionItems, infoSMS, mdiMain;

{$R *.dfm}

procedure TRptFunctionWithMonthF.ToolButton1Click(Sender: TObject);
begin
  inherited;
  MonthNo := (Sender as TToolButton).tag;    GetYearMounth(MonthNo);
  UpdateList;
end;

procedure TRptFunctionWithMonthF.UpdateList;
var
  j: Integer;
begin
  MakeSql;
  with qryFunction_Mounth do
  begin
    Active := false;
    Parameters.ParamByName('PersonelNoFrom').Value :=
      GetcFrom(myParams.ParamValues['PersonelNo'], ftInteger);
    Parameters.ParamByName('PersonelNoTo').Value :=
      GetcTo(myParams.ParamValues['PersonelNo'], ftInteger);
    Parameters.ParamByName('ProjectIDFrom').Value :=
      GetcFrom(myParams.ParamValues['ProjectID'], ftInteger);
    Parameters.ParamByName('ProjectIDTo').Value :=
      GetcTo(myParams.ParamValues['ProjectID'], ftInteger);
    Parameters.ParamByName('OfficeCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['OfficeCode'], ftInteger);
    Parameters.ParamByName('OfficeCodeTo').Value :=
      GetcTo(myParams.ParamValues['OfficeCode'], ftInteger);
    Parameters.ParamByName('MounthNo').Value := MonthNo;
    Parameters.ParamByName('YearID').Value := APPBank.Year;
    Parameters.ParamByName('Years').Value :=              optP.Year;

    Parameters.ParamByName('PersonelStateFrom').Value :=
      GetcFrom(myParams.ParamValues['PersonelState'], ftInteger);
    Parameters.ParamByName('PersonelStateTo').Value :=
      GetcTo(myParams.ParamValues['PersonelState'], ftInteger);

    Parameters.ParamByName('MounthForm2').Value := 0;
    Parameters.ParamByName('MounthTo2').Value := MonthNo;
    Parameters.ParamByName('FromPersonelNo2').Value :=
      GetcFrom(myParams.ParamValues['PersonelNo'], ftInteger);
    Parameters.ParamByName('ToPersonelNo2').Value :=
      GetcTo(myParams.ParamValues['PersonelNo'], ftInteger);

    Parameters.ParamByName('MounthLeave').Value := MonthNo;
    Parameters.ParamByName('PersonelLeaveFrom').Value :=
      GetcFrom(myParams.ParamValues['PersonelNo'], ftInteger);
    Parameters.ParamByName('PersonelLeaveTo').Value :=
      GetcTo(myParams.ParamValues['PersonelNo'], ftInteger);

    Parameters.ParamByName('FormInfoID').Value :=
      qryFormInfoFormInfoID.AsInteger;
    Parameters.ParamByName('StandardDays').Value :=
      qryFormInfoStandardDays.AsInteger;
    Parameters.ParamByName('StandardTimes').Value :=
      qryFormInfoStandardTimes.AsInteger;

    Parameters.ParamByName('PersonelStateFrom2').Value :=
      GetcFrom(myParams.ParamValues['PersonelState'], ftInteger);
    Parameters.ParamByName('PersonelStateTo2').Value :=
      GetcTo(myParams.ParamValues['PersonelState'], ftInteger);

    Active := true;
    FieldByName('name_l1').DisplayLabel := 'مشخصات پرسنل';
    FieldByName('name_l2').DisplayLabel := 'Name';
    FieldByName('PersonelNo').DisplayLabel := 'ش.پرسنل';
    FieldByName('FunctionTime').DisplayLabel := 'ساعت كاركرد';
    FieldByName('FunctionDay').DisplayLabel := 'روز كاركرد';
    FieldByName('InfoName_L1').DisplayLabel := 'ماه';
    FieldByName('Mobile').DisplayLabel := 'همراه';

    FieldByName('BalanceAllDay').DisplayLabel := 'مانده ' +
      qryFormInfoInfoName_L1.AsString;

    FieldByName('AllDay').DisplayLabel := qryFormInfoInfoName_L1.AsString;

    FieldByName('BalanceAllDay').OnGetText := AllFloatToTimeGetText;
    FieldByName('AllDay').OnGetText := AllFloatToTimeGetText;

    j := 0;
    qryFunctionShow.First;
    SetLength(capname, qryFunctionShow.RecordCount);
    while not qryFunctionShow.Eof do
    begin
      FieldByName('Fdaily' + qryFunctionShow.FieldByName('FormInfoID').AsString)
        .DisplayLabel := qryFunctionShow.FieldByName('InfoName_L1')
        .AsString + ' روز';
      FieldByName('fHours' + qryFunctionShow.FieldByName('FormInfoID').AsString)
        .DisplayLabel := qryFunctionShow.FieldByName('InfoName_L1').AsString
        + ' ساعت';
      capname[j] := qryFunctionShow.FieldByName('InfoName_L1').AsString;
      qryFunctionShow.Next;
      j := j + 1;
    end; // while
    DisbelLabel(Self);
    // setColumns(DBGrid1, '#05', false);
    // SetColSize(DBGrid1, 1, true);
    DBGrid1.setSizeColDBGrid();

    for j := 1 to qryFunction_Mounth.FieldCount - 1 do
    begin
      qryFunction_Mounth.Fields[j].tag := 3
    end; // for

  end; // with

end;

procedure TRptFunctionWithMonthF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      AddItem(DMf.adcSalary, 'FormType16', 'مرخصی پرسنل ', 'كد', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT InfoID, InfoName_L1 FROM Pay.FormsInfo WHERE (FormType = 16)',
        'SELECT Min(InfoID),Max(InfoID) FROM Pay.FormsInfo WHERE (FormType = 16)');

      AddItem(DMf.adcSalary, 'PersonelState', 'وضعيت پرسنل ', 'كد', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT InfoID, InfoName_L1 FROM Pay.FormsInfo WHERE     (FormType = 3)',
        'SELECT Min(InfoID),Max(InfoID) FROM Pay.FormsInfo WHERE (FormType = 3)');

      AddItemFilter(GetFilter, TPersonelNo);
      AddItem(DMf.adcSalary, 'ProjectID', ' كد پروژه', 'كد', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT InfoID AS ProjectID, InfoName_L1 AS ProjectName_L1, InfoName_L2 AS ProjectName_L2 FROM Pay.FormsInfo WHERE(FormType=40)  ',
        ' SELECT 0, MAX(FormsInfo.InfoID) AS Expr2  FROM Pay.FormsInfo RIGHT OUTER JOIN '
        + ' Pay.Functions ON FormsInfo.FormInfoID = Functions.ProjectID ');
      AddItem(DMf.adcSalary, 'OfficeCode', ' عنوان سازمان', 'كد', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT FormsInfo.InfoID, FormsInfo.InfoName_L1 FROM Pay.FixedCalculated INNER JOIN  '
        + ' Pay.FormsInfo ON FixedCalculated.OfficeCode = FormsInfo.FormInfoID WHERE  formtype=12   '
        + ' GROUP BY  FormsInfo.InfoID,FormsInfo.InfoName_L1 ',
        ' SELECT MIN(FormsInfo.InfoID) AS Expr1, MAX(FormsInfo.InfoID) AS Expr2  FROM Pay.FormsInfo RIGHT OUTER JOIN '
        + ' Pay.Functions ON FormsInfo.FormInfoID = Functions.OfficeCode ');
      if ShowModal = mrOk then
      begin
        GetFilterString;
        UpdateList;
      end; // if
    finally
      Free;
    end; // try
  end; // with
end;

procedure TRptFunctionWithMonthF.actPrint2Execute(Sender: TObject);
begin
  inherited;
  InitReportFile(ppReport1, Self.Name + '_2');
end;

procedure TRptFunctionWithMonthF.actPrintExecute(Sender: TObject);
var
  i, j: Integer;
  // leftla1,
  leftdbtDay, leftdbtTime, leftla2, leftdbcaSumarryDay, leftdbcaSumarryTime,
    leftdbcaFooterDay, leftdbcaFooterTime: real;
  // s:string;
begin
  inherited;
  try
    qryFunction_Mounth.DisableControls;
    // j:=0;
    leftdbtDay := ppDBTxtFunDay.Left;
    leftdbtTime := ppDBTxtFunTime.Left;
    leftdbcaSumarryDay := ppDBCalcFunDaysur.Left;
    leftdbcaSumarryTime := ppDBCalcFunTimesur.Left;
    leftdbcaFooterDay := ppDBCalcFunDay.Left;
    leftdbcaFooterTime := ppDBCalcFunTime.Left;
    // leftla1:=ppLblHours.Left;
    leftla2 := ppLabel21.Left;
    for i := 6 to DBGrid1.Columns.Count - 1 do
    begin
      // if (qrySum.Fields[i-2].AsCurrency>0)or
      // (qrySum.Fields[i-1].AsCurrency>0)then
      if not Odd(i) then
      begin
        with TppDBText.Create(ppReport1) do
        begin
          TextAlignment := ppDBTxtFunDay.TextAlignment;
          Height := ppDBTxtFunDay.Height;
          // AutoSize := true;
          Font.Size := 10;
          Width := ppDBTxtFunDay.Width;
          Font.Name := 'badr';
          leftdbtDay := leftdbtDay - ppDBTxtFunDay.Width - 0.0937;
          Left := leftdbtDay;
          DataPipeline := Self.ppDBPipeline1;
          DataField := DBGrid1.Columns[i].FieldName;
          Top := ppDBTxtFunDay.Top;
          Band := ppReport1.DetailBand;
        end; // with
        with TppDBCalc.Create(ppReport1) do
        begin
          TextAlignment := ppDBCalcFunDay.TextAlignment;
          // AutoSize := true;
          Height := ppDBCalcFunDay.Height;
          Font.Size := 10;
          Width := ppDBCalcFunDay.Width;
          Font.Name := 'badr';
          leftdbcaFooterDay := leftdbcaFooterDay - ppDBCalcFunDay.Width
            - 0.0937;
          Left := leftdbcaFooterDay;
          DBCalcType := ppDBCalcFunDay.DBCalcType;
          DataPipeline := Self.ppDBPipeline1;
          DataField := DBGrid1.Columns[i].FieldName;
          Top := ppDBCalcFunDay.Top;
          Band := ppReport1.FooterBand;
        end; // with
        with TppDBCalc.Create(ppReport1) do
        begin
          TextAlignment := ppDBCalcFunDaysur.TextAlignment;
          // AutoSize := true;
          Height := ppDBCalcFunDaysur.Height;
          Font.Size := 10;
          Width := ppDBCalcFunDaysur.Width;
          Font.Name := 'badr';
          leftdbcaSumarryDay := leftdbcaSumarryDay -
            ppDBCalcFunDaysur.Width - 0.0937;
          Left := leftdbcaSumarryDay;
          DBCalcType := ppDBCalcFunDaysur.DBCalcType;
          DataPipeline := Self.ppDBPipeline1;
          DataField := DBGrid1.Columns[i].FieldName;
          Top := ppDBCalcFunDaysur.Top;
          Band := ppReport1.SummaryBand;
        end; // with
      end // if
      else
      begin
        with TppDBText.Create(ppReport1) do
        begin
          TextAlignment := ppDBTxtFunTime.TextAlignment;
          Height := ppDBTxtFunTime.Height;
          // AutoSize := true;
          Font.Size := 10;
          Width := ppDBTxtFunTime.Width;
          Font.Name := 'badr';
          leftdbtTime := leftdbtTime - ppDBTxtFunTime.Width - 0.0937;
          Left := leftdbtTime;
          DataPipeline := Self.ppDBPipeline1;
          DataField := DBGrid1.Columns[i].FieldName;
          Top := ppDBTxtFunTime.Top;
          Band := ppReport1.DetailBand;
        end; // with
        with TppDBCalc.Create(ppReport1) do
        begin
          TextAlignment := ppDBCalcFunTime.TextAlignment;
          // AutoSize := true;
          Height := ppDBCalcFunTime.Height;
          Font.Size := 10;
          Width := ppDBCalcFunTime.Width;
          Font.Name := 'badr';
          leftdbcaFooterTime := leftdbcaFooterTime -
            ppDBCalcFunTime.Width - 0.0937;
          Left := leftdbcaFooterTime;
          DBCalcType := ppDBCalcFunTime.DBCalcType;
          DataPipeline := Self.ppDBPipeline1;
          DataField := DBGrid1.Columns[i].FieldName;
          Top := ppDBCalcFunTime.Top;
          Band := ppReport1.FooterBand;
        end; // with
        with TppDBCalc.Create(ppReport1) do
        begin
          TextAlignment := ppDBCalcFunTimesur.TextAlignment;
          // AutoSize := true;
          Height := ppDBCalcFunTimesur.Height;
          Font.Size := 10;
          Width := ppDBCalcFunTimesur.Width;
          Font.Name := 'badr';
          leftdbcaSumarryTime := leftdbcaSumarryTime -
            ppDBCalcFunTimesur.Width - 0.0937;
          Left := leftdbcaSumarryTime;
          DBCalcType := ppDBCalcFunTimesur.DBCalcType;
          DataPipeline := Self.ppDBPipeline1;
          DataField := DBGrid1.Columns[i].FieldName;
          Top := ppDBCalcFunTimesur.Top;
          Band := ppReport1.SummaryBand;
        end; // with
      end; // else
    end; // for
    for j := 0 to qryFunctionShow.RecordCount - 1 do
    begin
      with TppLabel.Create(ppReport1) do
      begin
        TextAlignment := tacentered;
        // AutoSize := True;
        Font.Style := [fsBold];
        Top := ppLabel21.Top;
        Height := ppLabel21.Height;
        Font.Name := 'Yagut';
        Font.Size := 10;
        Width := ppLabel21.Width;
        leftla2 := leftla2 - ppLabel21.Width - 0.0937;
        Left := leftla2;
        Band := ppReport1.HeaderBand;
        Caption := capname[j];
      end; // with
      with TppLabel.Create(ppReport1) do
      begin
        TextAlignment := ppLblHours.TextAlignment;
        // AutoSize := True;
        Font.Style := [fsBold];
        Top := ppLblHours.Top;
        Height := ppLblHours.Top;
        Font.Name := 'Yagut';
        Font.Size := 10;
        Width := ppLblHours.Width;
        Left := leftla2;
        Band := ppReport1.HeaderBand;
        Caption := 'ساعت'
      end; // with
      with TppLabel.Create(ppReport1) do
      begin
        TextAlignment := ppLblDay.TextAlignment;
        // AutoSize := True;
        Font.Style := [fsBold];
        Top := ppLblDay.Top;
        Height := ppLblDay.Top;
        Font.Name := 'Yagut';
        Font.Size := 10;
        Width := ppLblDay.Width;
        Left := leftla2;
        Band := ppReport1.HeaderBand;
        Caption := 'روز';
      end; // with

    end; // for
    SetSendToBackShapeOnPrint(Self);
    ppReport1.Print;
  finally
    qryFunction_Mounth.EnableControls;
  end; // try
end;

procedure TRptFunctionWithMonthF.ppLabel7GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TRptFunctionWithMonthF.ppSystemVariable2GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TRptFunctionWithMonthF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryFunction_Mounth);
end;

procedure TRptFunctionWithMonthF.actSendtoExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TRptFunctionWithMonthF.actSMSExecute(Sender: TObject);
begin
  inherited;
  InfoSMSF.ShowSMS(qryFunction_Mounth, 'Mobile');
end;

procedure TRptFunctionWithMonthF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryFunction_Mounth);
end;

procedure TRptFunctionWithMonthF.FormShow(Sender: TObject);
begin
  inherited;
  MonthNo := var_glb_CurrentMonth;
  if MonthNo < 1 then
    MonthNo := 1;
  ToolBar1.Buttons[MonthNo - 1].Down := true;
  myParams.Clear;
  if actFilter.Execute then
    if myParams.FindParam('PersonelNo') = nil then
      Close;

end;

procedure TRptFunctionWithMonthF.ppDBText1GetText(Sender: TObject;
  var Text: string);
begin
  inherited;
  if qryFunction_Mounth.FindField((Sender as TppDBText).DataField) <> nil then
    Text := FloatToTime(qryFunction_Mounth.FieldByName((Sender as TppDBText)
      .DataField).AsFloat) + #254
end;

procedure TRptFunctionWithMonthF.ppLabel2GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName
end;

procedure TRptFunctionWithMonthF.MakeSql;
var
  // j:integer;
  sqltxt: string;
  SelectList: String;
  i: Integer;
begin
  inherited;
  with qryFormInfo do
  begin
    Active := false;
    Active := true;
    i := GetcFrom(myParams.ParamValues['FormType16'], ftInteger);
    Filter := 'InfoID =' + i.ToString;
    Filtered := true;
  end;

  with qryFunctionShow do
  begin
    Active := false;
    Active := true;
    sqltxt := '';
    SelectList := '';
    while not Eof do
    begin
      sqltxt := sqltxt + ', sum(case SalaryID when ' + FieldByName('FormInfoID')
        .AsString + ' then fdaily else 0 end ) as Fdaily' + Fields[0].AsString;
      SelectList := SelectList + ' , sum(Fdaily' + Fields[0].AsString +
        ') as Fdaily' + Fields[0].AsString;

      sqltxt := sqltxt + ', sum(case SalaryID when ' + FieldByName('FormInfoID')
        .AsString + ' then fHours else 0 end ) as fHours' + Fields[0].AsString;
      if optP.DecimalOrMinute = 0 then
      begin
        SelectList := SelectList + ', Sum(fHours' + Fields[0].AsString +
          ') as fHours' + Fields[0].AsString;
      end
      else
      begin
        SelectList := SelectList + ', Pay.Dec2Mint(Sum(fHours' +
          Fields[0].AsString + ')) as fHours' + Fields[0].AsString;

      end;

      Next;
    end; // while
  end; // with
  with qryFunction_Mounth do
  begin
    Active := false;
    SQL.Text :=
      'SELECT str (PersonelNo) as PersonelNo, name_l1 ,  name_l2 , sum(FunctionDay) as FunctionDay , Sum(FunctionTime) as FunctionTime ,InfoName_L1 ';
    SQL.Add(SelectList);
    SQL.Add(',Mobile,BalanceAllDay,AllDay from  ( SELECT FunctionsAll.FunctionId ,FunctionsAll.PersonelNo,PersonelInfo.Mobile,( PersonelInfo.name_L1+''  ''+PersonelInfo.lastName_L1) as name_l1 , (PersonelInfo.name_L2+''  ''+PersonelInfo.lastName_L2) as name_l2 ');
    SQL.Add(', MAX(FunctionsAll.FunctionDay) AS FunctionDay, MAX(FunctionsAll.FunctionTime) AS FunctionTime,StandardTimes.InfoName_L1,balanceDecExt_1.BalanceAllDay,balanceDecExtLeave.Leave AS AllDay');
    SQL.Add(sqltxt);
    SQL.Add(' FROM Pay.FunctionsAll INNER JOIN Pay.FormsInfo ON FunctionsAll.SalaryID = FormsInfo.FormInfoID  OR FunctionsAll.SalaryID = 0   ');
    SQL.Add(' INNER JOIN Pay.PersonelInfo ON FunctionsAll.PersonelNo = PersonelInfo.PersonelNo ');
    SQL.Add(' INNER JOIN Pay.FormTypes ON FormsInfo.FormType = FormTypes.FormType  ');
    SQL.Add(' INNER JOIN Pay.StandardTimes ON FunctionsAll.Mounth = StandardTimes.InfoID ');

    SQL.Add(' LEFT OUTER JOIN Pay.FormsInfo FormsInfo_1pro ON FunctionsAll.ProjectID = FormsInfo_1pro.FormInfoID ');
    SQL.Add(' LEFT OUTER JOIN Pay.FormsInfo FormsInfo_1OfficeCode ON FunctionsAll.OfficeCode = FormsInfo_1OfficeCode.FormInfoID ');

    SQL.Add(' LEFT OUTER JOIN Pay.FormsInfo AS FormsInfoPersonelState ON PersonelInfo.PersonelState = FormsInfoPersonelState.FormInfoID ');

    SQL.Add('LEFT OUTER JOIN Pay.balanceDecExt( ' + APPBank.Year.ToString + ','
      + APPBank.Year.ToString + ', :MounthForm2, :MounthTo2,');
    SQL.Add(':FromPersonelNo2 , :ToPersonelNo2 ,');
    SQL.Add(':FormInfoID, :StandardDays, :StandardTimes ,');
    SQL.Add('DEFAULT , DEFAULT , :PersonelStateFrom2 , :PersonelStateTo2 , DEFAULT , DEFAULT )');
    SQL.Add('AS balanceDecExt_1');
    SQL.Add('ON FunctionsAll.PersonelNO = balanceDecExt_1.PersonelNo');

    SQL.Add('LEFT OUTER JOIN Pay.balanceDecExtLeave( ' + APPBank.Year.ToString +
      ', :MounthLeave, :PersonelLeaveFrom , :PersonelLeaveTo )');
    SQL.Add('AS balanceDecExtLeave');
    SQL.Add('ON FunctionsAll.PersonelNO = balanceDecExtLeave.PersonelNo');

    SQL.Add(' WHERE  (FunctionsAll.YearID = :YearID ) ');
    SQL.Add('and (FunctionsAll.Years = :Years )');
    SQL.Add('and (FunctionsAll.Mounth =:MounthNo ) ');
    SQL.Add('and  (FormTypes.FunctionShow = 1)and (PersonelInfo.PersonelNo between :PersonelNoFrom and :PersonelNoTo) ');

    SQL.Add('AND (FormsInfo_1pro.InfoID BETWEEN :ProjectIDFrom AND :ProjectIDTo) AND (FormsInfo_1OfficeCode.InfoID BETWEEN :OfficeCodeFrom AND :OfficeCodeTo) ');

    SQL.Add('AND (FormsInfoPersonelState.InfoID BETWEEN :PersonelStateFrom AND :PersonelStateTo )');

    SQL.Add(' GROUP BY FunctionsAll.FunctionId ,FunctionsAll.PersonelNo,  FunctionsAll.Mounth, FormTypes.FunctionShow , StandardTimes.InfoName_L1,');
    SQL.Add('balanceDecExt_1.BalanceAllDay,balanceDecExtLeave.Leave,PersonelInfo.Mobile, PersonelInfo.name_L1, PersonelInfo.name_L2,PersonelInfo.lastName_L1, PersonelInfo.lastName_L2 ) Allinfo ');
    SQL.Add('Group By  PersonelNo,Mobile, name_l1 ,  name_l2 , InfoName_L1,BalanceAllDay,AllDay');
  end; // with

end;

procedure TRptFunctionWithMonthF.Button1Click(Sender: TObject);
begin
  inherited;
  if (mdiMainF.ActFunctionsF.Enabled) and (mdiMainF.ActFunctionsF.Visible) then
  begin
    CreateMDIForm2(TFunctionItemsF, FunctionItemsF, Self, 28);
    FunctionItemsF.ToolBar1.Buttons[MonthNo - 1].Down := true;
    FunctionItemsF.ToolBar1.Buttons[MonthNo - 1].Click;
    FunctionItemsF.qryPersonel.Locate('PersonelNo',
      qryFunction_Mounth.FieldByName('PersonelNo').AsVariant, [])
  end; // Execute
end;

procedure TRptFunctionWithMonthF.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  QuickSearch(Key, qryFunction_Mounth.FieldByName('PersonelNo'));
end;

end.
