unit RptBalanceMoeenWithSomeColumn;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, ADODB, Grids, DBGrids, ppBands, ppCache, ppClass, ppComm,
  ppRelatv, ppProd, ppReport, DBCtrls, ppDB, ppDBPipe, ppCtrls, ppVar,
  ppPrnabl;

type
  TRptBalanceMoeenWithSomeColumnF = class(Ttemplate2MDIF)
    qryBalance: TADOQuery;
    qryBalanceCodeKol: TIntegerField;
    qryBalanceTopicCode: TIntegerField;
    qryBalanceKolName: TWideStringField;
    qryBalanceMoeenName: TWideStringField;
    qryBalanceFirstBed: TBCDField;
    qryBalanceFirstBes: TBCDField;
    qryBalanceLastBed_OFirst: TBCDField;
    qryBalanceLastBes_OFirst: TBCDField;
    qryBalanceLastBed_WFirst: TBCDField;
    qryBalanceLastBes_WFirst: TBCDField;
    qryBalanceLastBalanceBed: TBCDField;
    qryBalanceLastBalanceBes: TBCDField;
    qryBalanceBedIn: TBCDField;
    qryBalanceBesIn: TBCDField;
    qryBalanceBedIn_Ofirst: TBCDField;
    qryBalanceBesIn_OFirst: TBCDField;
    qryBalanceAllBed: TBCDField;
    qryBalanceAllBes: TBCDField;
    qryBalanceBalanceBed: TBCDField;
    qryBalanceBalanceBes: TBCDField;
    DBGrid1: TDBGrid;
    srcBalance: TDataSource;
    actFilter: TAction;
    BitBtn1: TBitBtn;
    qrySum: TADOQuery;
    srcSum: TDataSource;
    qrySumSumOfFirstBed: TBCDField;
    qrySumSumOfFirstBes: TBCDField;
    qrySumSumOfLastBed_OFirst: TBCDField;
    qrySumSumOfLastBes_OFirst: TBCDField;
    qrySumSumOfLastBed_WFirst: TBCDField;
    qrySumSumOfLastBes_WFirst: TBCDField;
    qrySumSumOfLastBalanceBed: TBCDField;
    qrySumSumOfLastBalanceBes: TBCDField;
    qrySumSumOfBedIn: TBCDField;
    qrySumSumOfBesIn: TBCDField;
    qrySumSumOfBedIn_Ofirst: TBCDField;
    qrySumSumOfBesIn_OFirst: TBCDField;
    qrySumSumOfAllBed: TBCDField;
    qrySumSumOfAllBes: TBCDField;
    qrySumSumOfBalanceBes: TBCDField;
    qrySumSumOfBalanceBed: TBCDField;
    qrySumMoeenName: TWideStringField;
    DBGrid2: TDBGrid;
    actSendToExcel: TAction;
    actSort: TAction;
    actPrint: TAction;
    DBNavigator1: TDBNavigator;
    BitBtn2: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn3: TBitBtn;
    ppReport1: TppReport;
    ppDBPipeline1: TppDBPipeline;
    ppHeaderBand1: TppHeaderBand;
    ppShape1: TppShape;
    ppLBCompanyName: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppDocDate: TppLabel;
    ppLabel3: TppLabel;
    ppLabel10: TppLabel;
    ppLabel7: TppLabel;
    ppLabel11: TppLabel;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLabel2: TppLabel;
    ppLabel9: TppLabel;
    ppLabel15: TppLabel;
    ppLine4: TppLine;
    ppLine7: TppLine;
    ppLabel6: TppLabel;
    ppLabel8: TppLabel;
    ppLabel12: TppLabel;
    ppLabel18: TppLabel;
    ppLine6: TppLine;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel14: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLine26: TppLine;
    ppLine30: TppLine;
    ppLine31: TppLine;
    ppLine32: TppLine;
    ppLine33: TppLine;
    ppLine34: TppLine;
    ppLine35: TppLine;
    ppDetailBand1: TppDetailBand;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppDBText2: TppDBText;
    ppLine12: TppLine;
    ppDBText3: TppDBText;
    ppDBText1: TppDBText;
    ppDBText6: TppDBText;
    ppDBText12: TppDBText;
    ppDBText11: TppDBText;
    ppLine1: TppLine;
    ppLine11: TppLine;
    ppLine13: TppLine;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppLine5: TppLine;
    ppLine8: TppLine;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppLine29: TppLine;
    ppFooterBand1: TppFooterBand;
    ppShape2: TppShape;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppLine15: TppLine;
    ppLine21: TppLine;
    ppLine22: TppLine;
    ppLabel1: TppLabel;
    ppDBCalc5: TppDBCalc;
    ppDBCalc11: TppDBCalc;
    ppLine51: TppLine;
    ppDBCalc13: TppDBCalc;
    ppDBCalc14: TppDBCalc;
    ppDBCalc17: TppDBCalc;
    ppLine52: TppLine;
    ppLine53: TppLine;
    ppLine56: TppLine;
    ppLine57: TppLine;
    ppDBCalc19: TppDBCalc;
    ppLine14: TppLine;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppLine28: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppShape3: TppShape;
    ppDBCalc4: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppLine23: TppLine;
    ppLine25: TppLine;
    ppLine24: TppLine;
    ppLabel13: TppLabel;
    ppDBCalc6: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    ppLine50: TppLine;
    ppDBCalc18: TppDBCalc;
    ppDBCalc20: TppDBCalc;
    ppDBCalc24: TppDBCalc;
    ppDBCalc23: TppDBCalc;
    ppLine58: TppLine;
    ppLine60: TppLine;
    ppLine63: TppLine;
    ppLine64: TppLine;
    ppLine16: TppLine;
    ppDBCalc9: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppLine27: TppLine;
    procedure actFilterExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1ColEnter(Sender: TObject);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure actPrintExecute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actSendToExcelExecute(Sender: TObject);
    procedure _actSearchExecute(Sender: TObject);
    procedure ppLBCompanyNameGetText(Sender: TObject; var Text: String);
    procedure ppDocDateGetText(Sender: TObject; var Text: String);
    procedure ppSystemVariable2GetText(Sender: TObject; var Text: String);
  private
    FormType:Byte;
    procedure UpdateList;
    procedure setColumns(Grid: TDBGrid; colNumber: string;
      StateCol: Boolean);
    procedure myInitReportFile( GeneralFileName: string);
//    procedure AddRecordQry(qry:TADOQuery);

    { Private declarations }
  public
    { Public declarations }
  end;

var
  RptBalanceMoeenWithSomeColumnF: TRptBalanceMoeenWithSomeColumnF;

implementation

uses dm, FilterClass_ADO, filter_ADO, GlobalPro, sort2, search2;

{$R *.dfm}

//procedure TRptBalanceMoeenWithSomeColumnF.AddRecordQry(qry:TADOQuery);
//var
//  i:Integer;
//  total:array of Variant;
//begin
//
//    with qry do begin
//      try
//        Requery;
//        SetLength(total,Fields.Count-1);
//        DisableControls;
//        First;
//        while not eof do begin
//          for i:= 0 to Fields.Count-1 do
//            if Fields[i].CustomConstraint = '1' then
//              total[i]:=total[i] + Fields[i].Value;
//          Next;
//        end;//while
//        Append;
//        for i:= 0 to Fields.Count-1 do
//          if Fields[i].CustomConstraint = '1' then begin
//            Fields[i].Value:=total[i];
//            total[i]:=0;
//          end;//if
//        //end;//with
//      finally
//        Post;
//        First;
//        EnableControls;
//      end;//try
//    end;//with
//end;


procedure TRptBalanceMoeenWithSomeColumnF.setColumns(Grid: TDBGrid; colNumber: string;
  StateCol: Boolean);
var
  s:  string;
  i:  integer;
begin
  for i:=0 to Grid.Columns.Count-1 do begin
    s:=Format('#%.2d%',[i]);
    if Pos(s,colNumber)<>0  then Grid.Columns[i].Visible:=StateCol;
  end;//for
end;


procedure TRptBalanceMoeenWithSomeColumnF.UpdateList;
var
  SecondaryFrom,SecondaryTo:String;
  DocDateFrom,DocDateTo:String;
  TopicFrom,TopicTo:String;

begin
  DocDateFrom:=GetcFrom(myParams.ParamValues['DocDate'],ftString);
  DocDateTo:=GetcTo(myParams.ParamValues['DocDate'],ftString);
  SecondaryFrom:=GetcFrom(myParams.ParamValues['SecNum'],ftString);
  SecondaryTo:=GetcTo(myParams.ParamValues['SecNum'],ftString);
  TopicFrom:=GetcFrom(myParams.ParamValues['TopicCode'],ftString);
  TopicTo:=GetcTo(myParams.ParamValues['TopicCode'],ftString);

  with qryBalance  do begin
    Active:=False;
		Sql.Text:='SELECT Categories.CodeKol, Categories.TopicCode, Categories.KolName, Categories.MoeenName,' +
		' Sum(IIf([DocTypeCode]=1,[bed],0)) AS FirstBed, Sum(IIf([DocTypeCode]=1,[bes],0)) AS FirstBes,' +
		' Sum(IIf(([Documents].[SecondaryDocNo]< '+SecondaryFrom+' Or [DocDate]<'+QuotedStr(DocDateFrom)+'),[bed],0)) AS LastBed_OFirst,' +
		' Sum(IIf(([Documents].[SecondaryDocNo]<'+SecondaryFrom+' Or [DocDate]<'+QuotedStr(DocDateFrom)+'),[bes],0)) AS LastBes_OFirst,' +
		' Sum(IIf([doctypecode]<>1  And (([Documents].[SecondaryDocNo]< '+SecondaryFrom+' Or [DocDate]<'+QuotedStr(DocDateFrom)+')),[bed],0)) AS LastBed_WFirst,' +
		' Sum(IIf([doctypecode]<>1  And (([Documents].[SecondaryDocNo]< '+SecondaryFrom+' Or [DocDate]<'+QuotedStr(DocDateFrom)+')),[bes],0)) AS LastBes_WFirst,' +
		' IIf(Sum(IIf(([Documents].[SecondaryDocNo]<'+SecondaryFrom+' Or [DocDate]<'+QuotedStr(DocDateFrom)+'),[bed]-[bes],0))>0,' +
		' Sum(IIf(([Documents].[SecondaryDocNo]< '+SecondaryFrom+' Or [DocDate]<'+QuotedStr(DocDateFrom)+'),[bed]-[bes],0)),0) AS LastBalanceBed,' +
		' IIf(Sum(IIf(([Documents].[SecondaryDocNo]< '+SecondaryFrom+' Or [DocDate]<'+QuotedStr(DocDateFrom)+'),[bes]-[bed],0))>0,' +
		' Sum(IIf(([Documents].[SecondaryDocNo]< '+SecondaryFrom+' Or [DocDate]<'+QuotedStr(DocDateFrom)+'),[bes]-[bed],0)),0) AS LastBalanceBes,' +
		' Sum(IIf(([Documents].[SecondaryDocNo] Between '+SecondaryFrom+' And '+SecondaryTo+' And [DocDate] Between '+QuotedStr(DocDateFrom)+' And '+QuotedStr(DocDateTo)+'),[bed],0)) AS BedIn,' +
		' Sum(IIf(([Documents].[SecondaryDocNo] Between '+SecondaryFrom+' And '+SecondaryTo+' And [DocDate] Between '+QuotedStr(DocDateFrom)+' And '+QuotedStr(DocDateTo)+'),[bes],0))' +
		' AS BesIn, Sum(IIf([doctypecode]<>1 And ([Documents].[SecondaryDocNo] Between '+SecondaryFrom+ ' And '+SecondaryTo+' And [DocDate] Between '+QuotedStr(DocDateFrom) +
		' And '+QuotedStr(DocDateTo)+' ),[bed],0)) AS BedIn_Ofirst,' +
		' Sum(IIf([doctypecode]<>1 And ([Documents].[SecondaryDocNo] Between '+SecondaryFrom+' And '+SecondaryTo+' And [DocDate] Between '+QuotedStr(DocDateFrom) +
		' And '+QuotedStr(DocDateTo)+' ),[bes],0)) AS BesIn_OFirst,' +
		' Sum(Documents.Bed) AS AllBed, Sum(Documents.Bes) AS AllBes, IIf(Sum([bed]-[bes])>0,Sum([bed]-[bes]),0) AS BalanceBed,' +
		' IIf(Sum([bes]-[bed])>0,Sum([bes]-[bed]),0) AS BalanceBes' +
		' FROM DocGroups INNER JOIN (Categories INNER JOIN Documents ON Categories.TopicCode = Documents.TopicCode) ON' +
		' DocGroups.SecondaryDocNo = Documents.SecondaryDocNo' +
    ' Where (((Categories.TopicCode) Between '+TopicFrom+' And '+TopicTo+'))' +
		' GROUP BY Categories.CodeKol, Categories.TopicCode, Categories.KolName, Categories.MoeenName' ;
    Active:=True;
  end;//with

  with qrySum do begin
    Active:=False;
		SQL.Text:='SELECT ''Ã„⁄ ﬂ·:'' AS MoeenName,Sum(SumQry.FirstBed) AS SumOfFirstBed, Sum(SumQry.FirstBes) AS SumOfFirstBes,' +
		' Sum(SumQry.LastBed_OFirst) AS' +
		' SumOfLastBed_OFirst, Sum(SumQry.LastBes_OFirst) AS SumOfLastBes_OFirst, Sum' +
		' (SumQry.LastBed_WFirst) AS' +
		' SumOfLastBed_WFirst, Sum(SumQry.LastBes_WFirst) AS SumOfLastBes_WFirst, Sum' +
		' (SumQry.LastBalanceBed) AS' +
		' SumOfLastBalanceBed, Sum(SumQry.LastBalanceBes) AS SumOfLastBalanceBes, Sum' +
		' (SumQry.BedIn) AS SumOfBedIn, Sum' +
		' (SumQry.BesIn) AS SumOfBesIn, Sum(SumQry.BedIn_Ofirst) AS SumOfBedIn_Ofirst, Sum' +
		' (SumQry.BesIn_OFirst) AS' +
		' SumOfBesIn_OFirst, Sum(SumQry.AllBed) AS SumOfAllBed, Sum(SumQry.AllBes) AS' +
		' SumOfAllBes, Sum(SumQry.BalanceBes)' +
		' AS SumOfBalanceBes, ' +
    ' Sum(SumQry.BalanceBed)' +
		' AS SumOfBalanceBed'  +
		' FROM ( '+qryBalance.SQL.Text+' ) AS SumQry';
   Active:=True;
  end;//with

end;

procedure TRptBalanceMoeenWithSomeColumnF.actFilterExecute(
  Sender: TObject);
begin
  inherited;
//  with TfilterF.Create2(Self,myParams) do begin
//    try
//     AddItem(dmF.adcSaman,'TopicCode','Õ”«»','ﬂœ',ftInteger,dvMinMax,'','',ciLookup,
//		  'SELECT * from' +
//			' (SELECT Categories.TopicCode, Categories.MoeenName FROM Documents INNER JOIN Categories ON' +
//			' Documents.TopicCode = Categories.TopicCode' +
//			' GROUP BY Categories.TopicCode, Categories.MoeenName' +
//			' ORDER BY Categories.TopicCode)' +
//			' Where (((Categories.MoeenName) Like :c))',
//			'SELECT Min(Categories.TopicCode), Max(Categories.TopicCode) ' +
//			'FROM Documents INNER JOIN Categories ON Documents.TopicCode = Categories.TopicCode;');
//      AddItem(DMF.adcSaman,'DocDate',' «—ÌŒ «”‰«œ',' «—ÌŒ',ftDate,dvMinMax,'','',ciSimple,'','SELECT Min(DocDate), Max(DocDate) FROM DocGroups');
//      AddItem(DMF.adcSaman,'SecNum','‘„«—Â ”‰œ ›—⁄Ì','‘„«—Â',ftInteger,dvMinMax,'','',ciSimple,'','SELECT Min(SecondaryDocNo) , Max(SecondaryDocNo) FROM DocGroups');
//      if ShowModal=mrOk then begin
//        GetFilterString;
//        UpdateList;
//      end;//if
//    finally
//      Free;
//    end;//try
//  end;//with
//
end;

procedure TRptBalanceMoeenWithSomeColumnF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  actFilter.Execute;
  if myParams.FindParam('TopicCode')=nil then Close;
end;


procedure TRptBalanceMoeenWithSomeColumnF.FormCreate(Sender: TObject);
var
  i:Byte;
begin
  inherited;
  FormType:=var_glb_gParam;
  case FormType of
    1:begin
       RptBalanceMoeenWithSomeColumnF.Caption:=' —«“ Â‘  ” Ê‰Ì Õ”«»Â«Ì Õ”«»';
       setColumns(DBGrid1,'#02#03#06#07#08#09#12#13',False);
      end;
    2:begin
       RptBalanceMoeenWithSomeColumnF.Caption:=' —«“ œÂ ” Ê‰Ì Õ”«»Â«Ì Õ”«» » ›ﬂÌﬂ «›  «ÕÌÂ';
       setColumns(DBGrid1,'#04#05#08#09#10#11',False);
      end;
    3:begin
       RptBalanceMoeenWithSomeColumnF.Caption:=' —«“ œÂ ” Ê‰Ì Õ”«»Â«Ì Õ”«»';
       setColumns(DBGrid1,'#02#03#06#07#12#13',False);
      end;
  end;//case
  for i:= 2 to DBGrid1.Columns.Count-1 do begin
    DBGrid2.Columns[i-1].Visible:=DBGrid1.Columns[i].Visible
  end;//for


end;

procedure TRptBalanceMoeenWithSomeColumnF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1,IntToStr(FormType));
end;

procedure TRptBalanceMoeenWithSomeColumnF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1,1,False,IntToStr(FormType));
end;

procedure TRptBalanceMoeenWithSomeColumnF.DBGrid1DrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
  r:TRect;
  DataName:TADOQuery;
begin
  inherited;
  if not(gdSelected in State) then begin
    if odd(DBGrid1.DataSource.DataSet.RecNo) then
      if Column.Index in [0,1] then
      DBGrid1.Canvas.Brush.Color:=const_fixed_columns_color;
  end;//if
  DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,state);
   if Column.Index<2 then begin
        DBGrid2.Columns[0].Width:=DBGrid1.Columns[0].Width + DBGrid1.columns[1].Width+15
   end else
        DBGrid2.Columns[Column.Index-1].Width:=Column.Width;



end;

procedure TRptBalanceMoeenWithSomeColumnF.DBGrid1ColEnter(Sender: TObject);
begin
  inherited;
  if DBGrid1.SelectedIndex>=2 then  DBGrid2.SelectedIndex:=DBGrid1.SelectedIndex-1
   else DBGrid2.SelectedIndex:=0;

end;

procedure TRptBalanceMoeenWithSomeColumnF.DBGrid2DrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
  r:TRect;
begin
  inherited;
  r:=Rect;
  DrawEdge(DBGrid2.Canvas.Handle, r, EDGE_BUMP,BF_RECT);

end;

procedure TRptBalanceMoeenWithSomeColumnF.myInitReportFile( GeneralFileName: string);
var
  s:String;
begin
  s:=IncludeTrailingBackslash(ExtractFilePath(ParamStr(0))+'Report\');
    with ppReport1 do begin
      Template.FileName:=s+GeneralFileName;
       try
         if FileExists(Template.FileName) then
            Template.LoadFromFile;
            Print ;
       finally
       end;//try
    end;//with
end;
procedure TRptBalanceMoeenWithSomeColumnF.actPrintExecute(Sender: TObject);
begin
  inherited;
   try
    qryBalance.DisableControls;
    qrySum.DisableControls;
    case  FormType of
     1:myInitReportFile('RptBalancelMoeen_8.rtm');
     2:myInitReportFile('RptBalanceMoeen_OFirst10.rtm');
     3:myInitReportFile('RptBalanceMoeen_WFirst10.rtm');
    end;//case
  finally
    qryBalance.EnableControls;
    qrySum.EnableControls;
  end;
end;

procedure TRptBalanceMoeenWithSomeColumnF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryBalance);
end;

procedure TRptBalanceMoeenWithSomeColumnF.actSendToExcelExecute(
  Sender: TObject);
begin
  inherited;
  SendDBGridToExcel(DBGrid1);
end;

procedure TRptBalanceMoeenWithSomeColumnF._actSearchExecute(
  Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryBalance);
end;

procedure TRptBalanceMoeenWithSomeColumnF.ppLBCompanyNameGetText(
  Sender: TObject; var Text: String);
begin
  inherited;
//  Text:=Corporation;
end;

procedure TRptBalanceMoeenWithSomeColumnF.ppDocDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text:=GetPrintDate;
end;

procedure TRptBalanceMoeenWithSomeColumnF.ppSystemVariable2GetText(
  Sender: TObject; var Text: String);
begin
  inherited;
  Text:= GetPageNumberString(Text)
end;

end.
