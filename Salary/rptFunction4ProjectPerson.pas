unit rptFunction4ProjectPerson;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, ADODB, DBCtrls, ppDB, ppModule,
  ppBands, ppCtrls, ppVar, ppPrnabl, ppClass, ppCache, ppProd, ppReport,
  ppComm, ppRelatv, ppDBPipe, pptypes, Menus, ppParameter, ppDesignLayer,
  System.ImageList, System.Actions,Filter_ADO_Const, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, CedarDbGrid;

type
  TrptFunction4ProjectPersonF = class(Ttemplate2MDIF)
    SRCFunction: TDataSource;
    qryFunction: TADOQuery;
    BitBtn7: TBitBtn;
    BitBtn2: TBitBtn;
    DBNavigator2: TDBNavigator;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    actFilter: TAction;
    actPrint: TAction;
    actSendtoExcel: TAction;
    actSort: TAction;
    qryWage: TADOQuery;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    PopList4Print: TPopupMenu;
    A41: TMenuItem;
    ProjectID: TMenuItem;
    ppReport2: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppShape4: TppShape;
    ppLabel5: TppLabel;
    ppLabel9: TppLabel;
    ppLabel11: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLblTime2: TppLabel;
    ppLabel13: TppLabel;
    ppLblFun2: TppLabel;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLine10: TppLine;
    ppLabel17: TppLabel;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDetailBand2: TppDetailBand;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppLine15: TppLine;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppDBText9: TppDBText;
    ppDBText12: TppDBText;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppSummaryBand2: TppSummaryBand;
    ppShape5: TppShape;
    ppLabel18: TppLabel;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppLine21: TppLine;
    ppLine22: TppLine;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppShape6: TppShape;
    ppLabel22: TppLabel;
    ppDBCalc6: TppDBCalc;
    ppLine23: TppLine;
    ppDBCalc7: TppDBCalc;
    ppLine24: TppLine;
    ActFunShow: TAction;
    BitBtn1: TBitBtn;
    NameHint1: TMenuItem;
    OfficeCode: TMenuItem;
    ppHeaderBand1: TppHeaderBand;
    ppShape3: TppShape;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLblPrintData: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLblTime1: TppLabel;
    ppLabel20: TppLabel;
    ppLblFun1: TppLabel;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLblGroupName: TppLabel;
    ppLine2: TppLine;
    ppLabel6: TppLabel;
    ppDBTxtGroupName: TppDBText;
    ppDBTxtGroupID: TppDBText;
    ppLabel8: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppLine16: TppLine;
    ppLine12: TppLine;
    ppLine9: TppLine;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppLine14: TppLine;
    ppLine4: TppLine;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppShape1: TppShape;
    ppLabel10: TppLabel;
    ppDBCalc16: TppDBCalc;
    ppDBCalc1: TppDBCalc;
    ppLine1: TppLine;
    ppLine3: TppLine;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppShape2: TppShape;
    ppLabel1: TppLabel;
    ppLine11: TppLine;
    ppDBCalc3: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppLine13: TppLine;
    DBGrid1: TCedarDbgrid;
    procedure actSearch_Execute(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actSendtoExcelExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure leter1Click(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure A41Click(Sender: TObject);
    procedure ProjectIDClick(Sender: TObject);
    procedure ActFunShowExecute(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure ppSystemVariable2GetText(Sender: TObject; var Text: String);
    procedure ppLblPrintDataGetText(Sender: TObject; var Text: String);
  private
    capname: array of String;
    procedure Updatelist;
    procedure MakeSql;
    procedure MakeReport1;
    procedure MakeReport2;

    { Private declarations }
  public
    { Public declarations }
  end;

var
  rptFunction4ProjectPersonF: TrptFunction4ProjectPersonF;

implementation

uses DM, search2, sort2, filter_ADO, FilterClass_ADO, GlobalPro, Mymostafa,
  main, FunctionItems, mdiMain;

{$R *.dfm}

procedure TrptFunction4ProjectPersonF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryFunction);
end;

procedure TrptFunction4ProjectPersonF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      AddItemFilter(GetFilter, TPersonelNo);
      AddItem(DMf.adcSalary, 'Mounth', ' „«Â', '„«Â', ftInteger, dvMinMax, '',
        '', ciLookup,
        'SELECT Pay.StandardTimes.InfoID, Pay.StandardTimes.InfoName_L1 ' +
        'FROM   Pay.Functions INNER JOIN ' +
        'Pay.StandardTimes ON Pay.Functions.Mounth = Pay.StandardTimes.InfoID '
        + 'GROUP BY Pay.StandardTimes.InfoName_L1, Pay.StandardTimes.InfoID ',
        'SELECT     MIN(Pay.StandardTimes.InfoID) , MAX(Pay.StandardTimes.InfoID) '
        + ' FROM   Pay.Functions INNER JOIN Pay.StandardTimes ON Pay.Functions.Mounth = Pay.StandardTimes.InfoID');
      AddItem(DMf.adcSalary, 'ProjectID', ' ﬂœ Å—ÊéÂ', 'ﬂœ', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT InfoID AS ProjectID, InfoName_L1 AS ProjectName_L1, InfoName_L2 AS ProjectName_L2 FROM Pay.FormsInfo WHERE(FormType=40)  ',
        ' SELECT 0, MAX(Pay.FormsInfo.InfoID) AS Expr2  FROM  Pay.FormsInfo RIGHT OUTER JOIN '
        + ' Pay.Functions ON Pay.FormsInfo.FormInfoID = Pay.Functions.ProjectID ');
      AddItem(DMf.adcSalary, 'OfficeCode', ' ⁄‰Ê«‰ ”«“„«‰', 'ﬂœ', ftInteger,
        dvMinMax, '', '', ciLookup,
        'SELECT    Pay.FormsInfo.InfoID, Pay.FormsInfo.InfoName_L1 FROM  Pay.FixedCalculated INNER JOIN  '
        + ' Pay.FormsInfo ON Pay.FixedCalculated.OfficeCode = Pay.FormsInfo.FormInfoID WHERE  formtype=12   '
        + ' GROUP BY  Pay.FormsInfo.InfoID,Pay.FormsInfo.InfoName_L1 ',
        ' SELECT MIN(Pay.FormsInfo.InfoID) AS Expr1, MAX(Pay.FormsInfo.InfoID) AS Expr2  FROM  Pay.FormsInfo RIGHT OUTER JOIN '
        + ' Pay.Functions ON Pay.FormsInfo.FormInfoID = Pay.Functions.OfficeCode ');

      if ShowModal = mrOk then
      begin
        GetFilterString;
        Updatelist;
      end; // if
    finally
      Free;
    end; // try
  end; // with
end;

procedure TrptFunction4ProjectPersonF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryFunction);
end;

procedure TrptFunction4ProjectPersonF.actSendtoExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TrptFunction4ProjectPersonF.FormCreate(Sender: TObject);
begin
  inherited;
  MakeSql;
end;

procedure TrptFunction4ProjectPersonF.Updatelist;
var
  j: Integer;
begin
  with qryFunction do
  begin
    Active := false;
    Parameters.ParamByName('FromMounth').Value :=
      GetcFrom(myParams.ParamValues['Mounth'], ftInteger);
    Parameters.ParamByName('ToMounth').Value :=
      GetcTo(myParams.ParamValues['Mounth'], ftInteger);

    Parameters.ParamByName('YearID').Value :=APPBank.Year;
    Parameters.ParamByName('Years').Value :=              optP.Year;
    Parameters.ParamByName('FromProjectID').Value :=
      GetcFrom(myParams.ParamValues['ProjectID'], ftInteger);
    Parameters.ParamByName('ToProjectID').Value :=
      GetcTo(myParams.ParamValues['ProjectID'], ftInteger);
    Parameters.ParamByName('FromPersonelNo').Value :=
      GetcFrom(myParams.ParamValues['PersonelNo'], ftInteger);
    Parameters.ParamByName('ToPersonelNo').Value :=
      GetcTo(myParams.ParamValues['PersonelNo'], ftInteger);
    Parameters.ParamByName('OfficeCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['OfficeCode'], ftInteger);
    Parameters.ParamByName('OfficeCodeTo').Value :=
      GetcTo(myParams.ParamValues['OfficeCode'], ftInteger);
    Active := true;
    FieldByName('name_l1').DisplayLabel := '„‘Œ’«  Å—”‰·';
    FieldByName('name_l2').DisplayLabel := 'Name';
    FieldByName('PersonelNo').DisplayLabel := '‘.Å—”‰·';
    FieldByName('FunctionTime').DisplayLabel := '”«⁄  ﬂ«—ﬂ—œ';
    FieldByName('FunctionDay').DisplayLabel := '—Ê“ ﬂ«—ﬂ—œ';
    FieldByName('ProjectID').DisplayLabel := 'ﬂœ Å—ÊéÂ';
    FieldByName('ProjectName_L1').DisplayLabel := '⁄‰Ê«‰ Å—ÊéÂ';
    FieldByName('OfficeCode').DisplayLabel := 'ﬂœ ”«“„«‰';
    FieldByName('OfficeName_L1').DisplayLabel := '⁄‰Ê«‰ ”«“„«‰';
    FieldByName('jobCode').DisplayLabel := 'ﬂœÅ”  ”«“„«‰Ì';
    FieldByName('jobName').DisplayLabel := 'Å”  ”«“„«‰Ì';
    FieldByName('Mounth').DisplayLabel := '„«Â';
    // FieldByName('Mounth').DisplayLabel:='„«Â';
    // FieldByName('PersonelNo').Tag:=3;
    // FieldByName('ProjectID').Tag:=3;
    // FieldByName('name_l1').Tag:=3;
    // FieldByName('name_l2').Tag:=3;
    // FieldByName('InfoName_L1').Tag:=3;
    j := 0;
    qryWage.First;
    SetLength(capname, qryWage.RecordCount);
    while not qryWage.Eof do
    begin
      FieldByName('Fdaily' + qryWage.FieldByName('FormInfoID').AsString)
        .DisplayLabel := qryWage.FieldByName('InfoName_L1').AsString + ' —Ê“';
      FieldByName('fHours' + qryWage.FieldByName('FormInfoID').AsString)
        .DisplayLabel := qryWage.FieldByName('InfoName_L1').AsString + ' ”«⁄ ';
      capname[j] := qryWage.FieldByName('InfoName_L1').AsString;
      qryWage.Next;
      j := j + 1;
    end; // while
  end; // with
  for j := 1 to qryFunction.FieldCount - 1 do
  begin
    qryFunction.Fields[j].Tag := 3
  end; // for

  DisbelLabel(Self);
end;

procedure TrptFunction4ProjectPersonF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  if actFilter.Execute then
    if myParams.FindParam('PersonelNo') = nil then
      Close;
end;

procedure TrptFunction4ProjectPersonF.MakeSql;
var
  // j:integer;
  sqltxt: string;
  SelectList: String;
begin
  inherited;
  with qryWage do
  begin
    Active := false;
    Active := true;
    sqltxt := '';
    SelectList := '';
    while not Eof do
    begin
      sqltxt := sqltxt + ', sum(case SalaryID when ' + FieldByName('FormInfoID')
        .AsString + ' then fdaily else 0 end ) as Fdaily' + Fields[0].AsString +
        ', sum(case SalaryID when ' + FieldByName('FormInfoID').AsString +
        ' then fHours else 0 end ) as fHours' + Fields[0].AsString;
      SelectList := SelectList + ' , sum(Fdaily' + Fields[0].AsString +
        ') as Fdaily' + Fields[0].AsString + ', Sum(fHours' + Fields[0].AsString
        + ') as fHours' + Fields[0].AsString;
      Next;
    end; // while
  end; // with
  with qryFunction do
  begin
    Active := false; // ,Mounth
    SQL.Text :=
      'SELECT ProjectID,ProjectName_L1,ProjectName_L2,OfficeCode,OfficeName_L1,OfficeName_L2 ';

    SQL.Add(', jobCode ,  jobName,Mounth ');

    SQL.Add(',PersonelNo, name_l1 ,  name_l2 , sum(FunctionDay) as FunctionDay , Sum(FunctionTime) as FunctionTime ');
    SQL.Add(SelectList);
    SQL.Add(' from(SELECT FormsInfo_1.InfoName_L1,Pay.FunctionsAll.FunctionId ,Pay.FunctionsAll.PersonelNo,');
    SQL.Add(' ( Pay.PersonelInfo.name_L1+''  ''+Pay.PersonelInfo.lastName_L1) as name_l1 , (Pay.PersonelInfo.name_L2+''  ''+Pay.PersonelInfo.lastName_L2) as name_l2 ');
    SQL.Add(', MAX(Pay.FunctionsAll.FunctionDay) AS FunctionDay, MAX(Pay.FunctionsAll.FunctionTime) AS FunctionTime ');
    SQL.Add(', FormsInfo_2OfficeCode.InfoID AS OfficeCode, FormsInfo_1.InfoID AS ProjectID ');
    SQL.Add(', FormsInfo_2OfficeCode.InfoName_L1 AS OfficeName_L1, FormsInfo_2OfficeCode.InfoName_L2 AS OfficeName_L2, ');
    SQL.Add('  FormsInfo_1.InfoName_L1 AS ProjectName_L1, FormsInfo_1.InfoName_L2 AS ProjectName_L2, Pay.FunctionsAll.Mounth');
    //

    SQL.Add(',FormsInfo_jobCode.InfoID as jobCode , FormsInfo_jobCode.InfoName_L1 AS jobName  ');

    SQL.Add(sqltxt);
    SQL.Add(' FROM Pay.FunctionsAll left outer JOIN Pay.FormsInfo ON Pay.FunctionsAll.SalaryID = Pay.FormsInfo.FormInfoID ');
    SQL.Add(' INNER JOIN  Pay.PersonelInfo ON Pay.FunctionsAll.PersonelNo = Pay.PersonelInfo.PersonelNo ');
    SQL.Add(' INNER JOIN  Pay.FormTypes ON Pay.FormsInfo.FormType = Pay.FormTypes.FormType ');
    SQL.Add('INNER JOIN Pay.FormsInfo FormsInfo_1 ON Pay.FunctionsAll.ProjectID = FormsInfo_1.FormInfoID ');
    SQL.Add('LEFT OUTER JOIN Pay.FormsInfo FormsInfo_2OfficeCode ON Pay.FunctionsAll.OfficeCode = FormsInfo_2OfficeCode.FormInfoID  ');

    SQL.Add('LEFT OUTER JOIN Pay.FormsInfo FormsInfo_jobCode ON Pay.FunctionsAll.jobCode = FormsInfo_jobCode.FormInfoID');
    SQL.Add(' where  (Pay.FunctionsAll.PersonelNo between :FromPersonelNo and :ToPersonelNo) and (FormsInfo_1.InfoID between :FromProjectID and :ToProjectID)');
    SQL.Add(' and (FormsInfo_2OfficeCode.InfoID BETWEEN :OfficeCodeFrom and :OfficeCodeTo)   ');
    SQL.Add('and  (Pay.FunctionsAll.Mounth  between :FromMounth and   :ToMounth)');
    SQL.Add('and (FunctionsAll.YearID = :YearID )');
    SQL.Add('and (FunctionsAll.Years = :Years )');

    SQL.Add(' GROUP BY  FormsInfo_1.InfoName_L1,Pay.FunctionsAll.FunctionId ,Pay.FunctionsAll.PersonelNo,  Pay.FunctionsAll.Mounth, Pay.FormTypes.FunctionShow ,');
    //
    SQL.Add(' Pay.FunctionsAll.Mounth, ');
    SQL.Add(' FormsInfo_2OfficeCode.InfoID, FormsInfo_1.InfoID ');

    SQL.Add(' ,FormsInfo_2OfficeCode.InfoName_L1, FormsInfo_2OfficeCode.InfoName_L2,FormsInfo_1.InfoName_L2 ');
    SQL.Add(' ,Pay.PersonelInfo.name_L1, Pay.PersonelInfo.name_L2,Pay.PersonelInfo.lastName_L1, Pay.PersonelInfo.lastName_L2 ');

    SQL.Add(',FormsInfo_jobCode.InfoID  , FormsInfo_jobCode.InfoName_L1 ,FunctionsAll.Mounth ');



    SQL.Add(')allinfo');
    SQL.Add('Group By ProjectID,OfficeCode ,PersonelNo, name_l1 ,  name_l2');
    SQL.Add(', ProjectName_L1, ProjectName_L2, OfficeCode, OfficeName_L1, OfficeName_L2, Mounth');
    //
    SQL.Add(',jobCode,jobName');

    // SQL.SaveToFile('d:\123.txt');
    // RunDoc('d:\123.txt')
  end; // with
end;

procedure TrptFunction4ProjectPersonF.MakeReport2;
var
  i, j: Integer;
  leftla1, leftdbt, leftla2, leftdbcaSumarry, leftdbcaFooter: real;
  // s:string;
begin
  inherited;
  try
    qryFunction.DisableControls;
    // j:=0;

    leftdbt := ppDBText8.Left;
    leftdbcaSumarry := ppDBCalc4.Left;
    leftdbcaFooter := ppDBCalc7.Left;
    leftla1 := ppLblTime2.Left;
    leftla2 := ppLblFun2.Left;

    for i := 12 to DBGrid1.Columns.Count - 1 do
    begin

      with TppDBText.Create(ppReport2) do
      begin
        TextAlignment := ppDBText8.TextAlignment;
        Height := ppDBText8.Height;
        Font.Size := 10;
        Width := ppDBText8.Width;
        Font.Name := 'badr';
        leftdbt := leftdbt - ppDBText8.Width - 0.0937;
        Left := leftdbt;
        DataPipeline := Self.ppDBPipeline1;
        DataField := DBGrid1.Columns[i].FieldName;
        Top := 0;
        Band := ppReport2.DetailBand;
      end; // with
      with TppDBCalc.Create(ppReport2) do
      begin
        TextAlignment := ppDBCalc7.TextAlignment;
        Height := ppDBCalc7.Height;
        Font.Size := 10;
        Width := ppDBCalc7.Width;
        Font.Name := 'badr';
        leftdbcaFooter := leftdbcaFooter - ppDBCalc7.Width - 0.0937;
        Left := leftdbcaFooter;
        DBCalcType := ppDBCalc7.DBCalcType;
        DataPipeline := Self.ppDBPipeline1;
        ResetGroup := ppDBCalc7.ResetGroup;
        DataField := DBGrid1.Columns[i].FieldName;
        Top := ppDBCalc7.Top;
        Band := ppReport2.GroupFooterBand[0];
      end; // with
      with TppDBCalc.Create(ppReport2) do
      begin
        TextAlignment := ppDBCalc4.TextAlignment;
        Height := ppDBCalc4.Height;
        Font.Size := 10;
        Width := ppDBCalc4.Width;
        Font.Name := 'badr';
        leftdbcaSumarry := leftdbcaSumarry - ppDBCalc4.Width - 0.0937;
        Left := leftdbcaSumarry;
        DBCalcType := ppDBCalc4.DBCalcType;
        DataPipeline := Self.ppDBPipeline1;
        DataField := DBGrid1.Columns[i].FieldName;
        Top := ppDBCalc4.Top;
        Band := ppReport2.SummaryBand;
      end; // with
      with TppLabel.Create(ppReport2) do
      begin
        if Odd(i) then
          Caption := '”«⁄ '
        else
          Caption := '—Ê“';
        TextAlignment := ppLblTime2.TextAlignment;
        Font.Style := [fsBold];
        Top := ppLblTime2.Top;
        Height := ppLblTime2.Height;
        Font.Name := 'Yagut';
        Font.Size := 10;
        Width := ppLblTime2.Width;
        leftla1 := leftla1 - ppLblTime2.Width - 0.0937;
        Left := leftla1;
        Band := ppReport2.HeaderBand;

      end; // with
    end; // for
    for j := 0 to qryWage.RecordCount - 1 do
    begin
      with TppLabel.Create(ppReport2) do
      begin
        Caption := capname[j];
        TextAlignment := tacentered;
        Font.Style := [fsBold];
        Top := ppLblFun2.Top;
        Height := ppLblFun2.Height;
        Font.Name := 'Yagut';
        Font.Size := 10;
        Width := ppLblFun2.Width;
        leftla2 := leftla2 - ppLblFun2.Width - 0.0937;
        Left := leftla2;
        Band := ppReport2.HeaderBand;

      end; // with

    end; // for
  finally
    qryFunction.EnableControls;
  end; // try
end;

procedure TrptFunction4ProjectPersonF.leter1Click(Sender: TObject);
begin
  inherited;
  qryFunction.Sort := 'ProjectID';

end;

procedure TrptFunction4ProjectPersonF.actPrintExecute(Sender: TObject);
begin
  inherited;
  try
    qryFunction.DisableControls;
    PopList4Print.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
  finally
    qryFunction.EnableControls;
  end;
end;

procedure TrptFunction4ProjectPersonF.A41Click(Sender: TObject);
begin
  inherited;
  qryFunction.Sort := 'PersonelNo';
  MakeReport2;
  SetSendToBackShapeOnPrint(Self);
  ppReport2.Print;
end;

procedure TrptFunction4ProjectPersonF.ProjectIDClick(Sender: TObject);
var
  s: String;
begin
  inherited;
  qryFunction.Sort := (Sender as TMenuItem).Name;
  with ppReport1 do
  begin
    Template.FileName := GetReportFileWithPath((Sender as TMenuItem).Hint);
    try
      if FileExists(Template.FileName) then
        Template.LoadFromFile
      else
        Warn('›«Ì· ç«ÅÌ ' + (Sender as TMenuItem).Hint + ' Ì«›  ‰‘œ.!˛');
      MakeReport1;
      SetSendToBackShapeOnPrint(Self);
      Print;
    finally
    end; // try
  end; // with
end;

procedure TrptFunction4ProjectPersonF.MakeReport1;
var
  i, j: Integer;
  leftla1, leftdbt, leftla2, leftdbcaSumarry, leftdbcaFooter: real;
  // s:string;
begin
  try
    qryFunction.DisableControls;
    // j:=0;
    leftdbt := ppDBText11.Left;
    leftdbcaSumarry := ppDBCalc16.Left;
    leftdbcaFooter := ppDBCalc2.Left;
    leftla1 := ppLblTime1.Left;
    leftla2 := ppLblFun1.Left;
    for i := 12 to DBGrid1.Columns.Count - 1 do
    begin

      if Odd(i) then
      begin
        leftdbt := leftdbt - ppDBText11.Width;
        leftdbcaFooter := leftdbcaFooter - ppDBCalc2.Width;
        leftdbcaSumarry := leftdbcaSumarry - ppDBCalc16.Width;
      end
      else
      begin
        leftdbt := leftdbt - ppDBText11.Width - 0.0937;
        leftdbcaFooter := leftdbcaFooter - ppDBCalc2.Width - 0.0937;
        leftdbcaSumarry := leftdbcaSumarry - ppDBCalc16.Width - 0.0937;
      end;
      with TppDBText.Create(ppReport1) do
      begin
        TextAlignment := ppDBText11.TextAlignment;
        Height := ppDBText11.Height;
        Font.Size := 10;
        Width := ppDBText11.Width;
        Font.Name := 'badr';
        Left := leftdbt;
        DataPipeline := Self.ppDBPipeline1;
        DataField := DBGrid1.Columns[i].FieldName;
        Top := 0;
        Band := ppReport1.DetailBand;
      end; // with
      with TppDBCalc.Create(ppReport1) do
      begin
        TextAlignment := ppDBCalc2.TextAlignment;
        Height := ppDBCalc2.Height;
        Font.Size := 10;
        Width := ppDBCalc2.Width;
        Font.Name := 'badr';
        Left := leftdbcaFooter;
        ResetGroup := ppDBCalc2.ResetGroup;
        DBCalcType := ppDBCalc2.DBCalcType;
        DataPipeline := Self.ppDBPipeline1;
        DataField := DBGrid1.Columns[i].FieldName;
        Top := ppDBCalc2.Top;
        Band := ppReport1.GroupFooterBand[0];
      end; // with
      with TppDBCalc.Create(ppReport1) do
      begin
        TextAlignment := ppDBCalc16.TextAlignment;
        Height := ppDBCalc16.Height;
        Font.Size := 10;
        Width := ppDBCalc16.Width;
        Font.Name := 'badr';
        Left := leftdbcaSumarry;
        DBCalcType := ppDBCalc16.DBCalcType;
        DataPipeline := Self.ppDBPipeline1;
        DataField := DBGrid1.Columns[i].FieldName;
        Top := ppDBCalc16.Top;
        Band := ppReport1.SummaryBand;
      end; // with
      with TppLabel.Create(ppReport1) do
      begin
        TextAlignment := ppLblTime1.TextAlignment;
        Font.Style := [fsBold];
        Top := ppLblTime1.Top;
        AutoSize := false;
        Height := ppLblTime1.Height;
        Font.Name := 'Yagut';
        Font.Size := 10;
        Width := ppLblTime1.Width;
        Band := ppReport1.HeaderBand;
        if Odd(i) then
        begin
          Caption := '”«⁄ ';
          leftla1 := leftla1 - ppLblTime1.Width;
        end
        else
        begin
          Caption := '—Ê“';
          leftla1 := leftla1 - ppLblTime1.Width - 0.0937;
        end;
        Left := leftla1;

      end; // with
    end; // for
    for j := 0 to qryWage.RecordCount - 1 do
    begin
      with TppLabel.Create(ppReport1) do
      begin
        Caption := capname[j];
        TextAlignment := ppLblFun1.TextAlignment;
        Font.Style := [fsBold];
        // AutoSize:=False;
        Top := ppLblFun1.Top;
        Height := ppLblFun1.Height;
        Font.Name := 'Yagut';
        Font.Size := 10;
        Width := ppLblFun1.Width;
        leftla2 := leftla2 - ppLblFun1.Width - 0.0937;
        Left := leftla2;
        Band := ppReport1.HeaderBand;
      end; // with
    end; // for
  finally
    qryFunction.EnableControls;
  end; // try
end;

procedure TrptFunction4ProjectPersonF.ActFunShowExecute(Sender: TObject);
begin
  inherited;
  if (mdiMainF.ActFunctionsF.Enabled) and (mdiMainF.ActFunctionsF.Visible) then
  begin
    CreateMDIForm2(TFunctionItemsF, FunctionItemsF, Self, 28);
    FunctionItemsF.ToolBar1.Buttons[qryFunction.FieldByName('Mounth').AsInteger
      - 1].Down := true;
    FunctionItemsF.ToolBar1.Buttons[qryFunction.FieldByName('Mounth').AsInteger
      - 1].Click;
    FunctionItemsF.qryPersonel.Locate('PersonelNo',
      qryFunction.FieldByName('PersonelNo').AsVariant, [])
  end; // Execute
end;

procedure TrptFunction4ProjectPersonF.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  QuickSearch(Key, qryFunction.FieldByName('PersonelNo'));
end;

procedure TrptFunction4ProjectPersonF.ppSystemVariable2GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TrptFunction4ProjectPersonF.ppLblPrintDataGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

end.
