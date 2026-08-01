unit rptFunction4ProjectPerson;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, Grids, DBGrids, DB, ADODB, DBCtrls, ppDB, ppModule, raCodMod,
  ppBands, ppCtrls, ppVar, ppPrnabl, ppClass, ppCache, ppProd, ppReport,
  ppComm, ppRelatv, ppDBPipe,pptypes, Menus;

type
  TrptFunction4ProjectPersonF = class(Ttemplate2MDIF)
    DBGrid1: TDBGrid;
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
    A42: TMenuItem;
    ppReport2: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppShape3: TppShape;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel7: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLabel4: TppLabel;
    ppLine2: TppLine;
    ppLabel6: TppLabel;
    ppDBText4: TppDBText;
    ppDBText3: TppDBText;
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
    raCodeModule2: TraCodeModule;
    ppHeaderBand2: TppHeaderBand;
    ppShape4: TppShape;
    ppLabel5: TppLabel;
    ppLabel9: TppLabel;
    ppLabel11: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
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
    raCodeModule1: TraCodeModule;
    procedure actSearch_Execute(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actSendtoExcelExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure leter1Click(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure A41Click(Sender: TObject);
    procedure A42Click(Sender: TObject);
  private
      capname:array of String;
      procedure Updatelist;
      procedure  MakeSql;

      procedure MakeReport1;
      procedure MakeReport2;

    { Private declarations }
  public
    { Public declarations }
  end;

var
  rptFunction4ProjectPersonF: TrptFunction4ProjectPersonF;

implementation

uses DM, search2, sort2, filter_ADO, FilterClass_ADO, GlobalPro, Mymostafa;

{$R *.dfm}

procedure TrptFunction4ProjectPersonF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryFunction);
end;

procedure TrptFunction4ProjectPersonF.actFilterExecute(Sender: TObject);
begin
  inherited;

  with TfilterF.Create2(Self,myParams) do begin
    try
      AddItem(DMf.adcSalary,'PersonelNo',' ‘„«—Â Å—”‰·Ì','ﬂœ',ftInteger,dvMinMax,'','',ciLookup,'SELECT PersonelNo ,  Name_L1+'' ''+lastName_L1 FROM PersonelInfo WHERE lastName_L1 Like :c',
              'SELECT MIN(PersonelNo) , MAX(PersonelNo)  FROM PersonelInfo');
      AddItem(DMf.adcSalary,'Mounth',' „«Â','„«Â',ftInteger,dvMinMax,'','',ciLookup,'SELECT dbo.StandardTimes.InfoID, dbo.StandardTimes.InfoName_L1 '+
                                                                                  'FROM   dbo.Functions INNER JOIN ' +
                                                                                  'dbo.StandardTimes ON dbo.Functions.Mounth = dbo.StandardTimes.InfoID '+
                                                                                  'WHERE     (dbo.StandardTimes.InfoName_L1 LIKE :c) '+
                                                                                  'GROUP BY dbo.StandardTimes.InfoName_L1, dbo.StandardTimes.InfoID '+
                                                                                  ' ORDER BY dbo.StandardTimes.InfoID ' ,
                                                                                  'SELECT     MIN(dbo.StandardTimes.InfoID) , MAX(dbo.StandardTimes.InfoID) '
                                                                                  +' FROM   dbo.Functions INNER JOIN dbo.StandardTimes ON dbo.Functions.Mounth = dbo.StandardTimes.InfoID');
      AddItem(DMf.adcSalary,'ProjectID',' ﬂœ Å—ÊéÂ','ﬂœ',ftInteger,dvMinMax,'','',ciSimple,'',
              'SELECT  MIN(ProjectID) , MAX(ProjectID) FROM dbo.Functions');

     if ShowModal=mrOk then begin
        GetFilterString;
        Updatelist;
     end;//if
    finally
     Free;
    end;//try
  end;//with
end;

procedure TrptFunction4ProjectPersonF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryFunction);
end;

procedure TrptFunction4ProjectPersonF.actSendtoExcelExecute(
  Sender: TObject);
begin
  inherited;
  SendDBGridToExcel(DBGrid1);
end;

procedure TrptFunction4ProjectPersonF.FormCreate(Sender: TObject);
begin
  MakeSql;
end;

procedure TrptFunction4ProjectPersonF.Updatelist;
var
j:integer;
begin
 with qryFunction do begin
    Active:=false;
    Parameters.ParamByName('FromMounth').Value:=GetcFrom(myParams.ParamValues['Mounth'],ftInteger);
    Parameters.ParamByName('ToMounth').Value:=GetcTo(myParams.ParamValues['Mounth'],ftInteger);
    Parameters.ParamByName('FromProjectID').Value:=GetcFrom(myParams.ParamValues['ProjectID'],ftInteger);
    Parameters.ParamByName('ToProjectID').Value:=GetcTo(myParams.ParamValues['ProjectID'],ftInteger);
    Parameters.ParamByName('FromPersonelNo').Value:=GetcFrom(myParams.ParamValues['PersonelNo'],ftInteger);
    Parameters.ParamByName('ToPersonelNo').Value:=GetcTo(myParams.ParamValues['PersonelNo'],ftInteger);
    Active:=true;
    FieldByName('name_l1').DisplayLabel:='„‘Œ’«  Å—”‰·1';
    FieldByName('name_l2').DisplayLabel:='„‘Œ’«  Å—”‰·2';
    FieldByName('PersonelNo').DisplayLabel:='‘„«—Â Å—”‰·Ì' ;
    FieldByName('FunctionTime').DisplayLabel:='”«⁄  ﬂ«—ﬂ—œ';
    FieldByName('FunctionDay').DisplayLabel:='—Ê“ ﬂ«—ﬂ—œ';
    FieldByName('ProjectID').DisplayLabel:='ﬂœ Å—ÊéÂ';
    FieldByName('InfoName_L1').DisplayLabel:='⁄‰Ê«‰ Å—ÊéÂ';
    FieldByName('PersonelNo').Tag:=3;
    FieldByName('ProjectID').Tag:=3;
    FieldByName('name_l1').Tag:=3;
    FieldByName('name_l2').Tag:=3;
    FieldByName('InfoName_L1').Tag:=3;
    j:=0;
    qryWage.First;
    SetLength(capname,qryWage.RecordCount);
    while not qryWage.Eof do begin
      FieldByName('Fdaily'+qryWage.FieldByName('FormInfoID').AsString).DisplayLabel:=qryWage.Fieldbyname('InfoName_L1').AsString+' —Ê“' ;
      FieldByName('fHours'+qryWage.fieldbyname('FormInfoID').AsString).DisplayLabel:=qryWage.Fieldbyname('InfoName_L1').AsString+ ' ”«⁄ ';
      capname[j]:=qryWage.Fieldbyname('InfoName_L1').AsString;
      qryWage.Next ;
      j:=j+1;
    end ;//while
  end;//with
  DisbelLabel(Self);
  SetColSize(DBGrid1,3,True);
end;

procedure TrptFunction4ProjectPersonF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  if actFilter.Execute then
   if myParams.FindParam('PersonelNo')=nil then Close;
end;

procedure TrptFunction4ProjectPersonF.MakeSql;
var
  j:integer;
 sqltxt:string;
 SelectList : String ;
begin
  inherited;
  with qryWage do begin
      Active:=False;
      Active:=True;
      sqltxt:='';
      SelectList:='';
    while not eof do begin
      sqltxt:=sqltxt+', sum(case SalaryID when '+Fieldbyname('FormInfoID').AsString +' then fdaily else 0 end ) as Fdaily'+Fields[0].AsString +
              ', sum(case SalaryID when '+Fieldbyname('FormInfoID').AsString +' then fHours else 0 end ) as fHours'+Fields[0].AsString;
      SelectList:=SelectList+ ' , sum(Fdaily'+Fields[0].AsString +') as Fdaily'+Fields[0].AsString + ', Sum(fHours'+Fields[0].AsString +') as fHours'+Fields[0].AsString ;
      Next ;
    end ;// while
  end ;//with
  with qryFunction do begin
    Active:=False ;
    SQL.Text:='SELECT ProjectID,allinfo.InfoName_L1,PersonelNo, name_l1 ,  name_l2 , sum(FunctionDay) as FunctionDay , Sum(FunctionTime) as FunctionTime ';
    SQL.Add  ( SelectList );
    SQL.Add  (' from(SELECT dbo.FunctionsAll.ProjectID,FormsInfo_1.InfoName_L1,dbo.FunctionsAll.FunctionId ,dbo.FunctionsAll.PersonelNo,');
    SQL.Add  (' ( Pay.PersonelInfo.name_L1+''  ''+Pay.PersonelInfo.lastName_L1) as name_l1 , (Pay.PersonelInfo.name_L2+''  ''+Pay.PersonelInfo.lastName_L2) as name_l2 ');
    SQL.Add  (', MAX(dbo.FunctionsAll.FunctionDay) AS FunctionDay, MAX(dbo.FunctionsAll.FunctionTime) AS FunctionTime ');
    SQL.Add  ( sqltxt );
    SQL.Add  (' FROM dbo.FunctionsAll INNER JOIN dbo.FormsInfo ON dbo.FunctionsAll.SalaryID = dbo.FormsInfo.FormInfoID ');
    SQL.Add  (' INNER JOIN  Pay.PersonelInfo ON dbo.FunctionsAll.PersonelNo = Pay.PersonelInfo.PersonelNo ');
    SQL.Add  (' INNER JOIN  dbo.FormTypes ON dbo.FormsInfo.FormType = dbo.FormTypes.FormType ');
    SQL.Add  (' INNER JOIN  dbo.FormsInfo FormsInfo_1 ON dbo.FunctionsAll.ProjectID = FormsInfo_1.FormInfoID ');
    SQL.Add  (' WHERE   (dbo.FormTypes.FunctionShow = 1)and (Pay.PersonelInfo.PersonelNo between :FromPersonelNo and :ToPersonelNo) and (dbo.FunctionsAll.ProjectID between :FromProjectID and :ToProjectID)');
    SQL.Add  (' and  (dbo.FunctionsAll.Mounth  between :FromMounth and   :ToMounth)');
    SQL.Add  (' GROUP BY  dbo.FunctionsAll.Mounth,FormsInfo_1.InfoName_L1,dbo.FunctionsAll.ProjectID,dbo.FunctionsAll.FunctionId ,dbo.FunctionsAll.PersonelNo,  dbo.FunctionsAll.Mounth, dbo.FormTypes.FunctionShow ,');
    SQL.Add  (' Pay.PersonelInfo.name_L1, Pay.PersonelInfo.name_L2,Pay.PersonelInfo.lastName_L1, Pay.PersonelInfo.lastName_L2 )allinfo');
    SQL.Add  ('Group By ProjectID ,PersonelNo, name_l1 ,  name_l2,allinfo.InfoName_L1');
end;//with
end;
procedure TrptFunction4ProjectPersonF.MakeReport2;
var
  i,j:Integer;
  leftla1,leftdbt,leftla2,leftdbcaSumarry,leftdbcaFooter :  real;
  s:string;
begin
  inherited;
try
  qryFunction.DisableControls;
  j:=0;

   leftdbt:=ppDBText8.Left;
   leftdbcaSumarry:=ppDBCalc4.left;
   leftdbcaFooter:=ppDBCalc7.left;
   leftla1:=ppLabel12.Left;
   leftla2:=ppLabel14.Left;

  for i:=7  to DBGrid1.Columns.Count-1  do begin

     with TppDBText.Create(ppReport2) do begin
      TextAlignment:=ppDBText8.TextAlignment;
      Height:=ppDBText8.Height;
      AutoSize := true;
      Font.Size:=10;
      Width:=ppDBText8.Width;
      Font.Name:='badr';
      leftdbt:=leftdbt-ppDBText8.Width-0.0937;
      Left:=leftdbt ;
      DataPipeline:=Self.ppDBPipeline1;
      DataField:=DBGrid1.Columns[i].FieldName;
      Top:=0;
      Band:=ppReport2.DetailBand;
    end;//with
    with TppDBCalc.Create(ppReport2) do begin
      TextAlignment:=ppDBCalc7.TextAlignment;
      AutoSize := true;
      Height:=ppDBCalc7.Height;
      Font.Size:=10;
      Width:=ppDBCalc7.Width;
      Font.Name:='badr';
      leftdbcaFooter:=leftdbcaFooter-ppDBCalc7.Width-0.0937;
      Left:=leftdbcaFooter ;
      DBCalcType:=ppDBCalc7.DBCalcType;
      DataPipeline:=Self.ppDBPipeline1;
      DataField:=DBGrid1.Columns[i].FieldName;
      Top:=ppDBCalc7.Top;
      Band:=ppReport2.GroupFooterBand[0];
    end;//with
    with TppDBCalc.Create(ppReport2) do begin
      TextAlignment:=ppDBCalc4.TextAlignment;
      AutoSize := true;
      Height:=ppDBCalc4.Height;
      Font.Size:=10;
      Width:=ppDBCalc4.Width;
      Font.Name:='badr';
      leftdbcaSumarry:=leftdbcaSumarry-ppDBCalc4.Width-0.0937;
      Left:=leftdbcaSumarry ;
      DBCalcType:=ppDBCalc4.DBCalcType;
      DataPipeline:=Self.ppDBPipeline1;
      DataField:=DBGrid1.Columns[i].FieldName;
      Top:=ppDBCalc4.Top;
      Band:=ppReport2.SummaryBand;
    end;//with
    with TppLabel.Create(ppReport2) do begin
      if Odd(i) then
          Caption:='”«⁄ '
        else
          Caption:='—Ê“';
      TextAlignment:=ppLabel12.TextAlignment;
      AutoSize := True;
      Font.Style:=[fsBold];
      Top:=ppLabel12.Top;
      Height:=ppLabel12.Height;
      Font.Name:='Yagut';
      Font.Size:=10;
      Width:=ppLabel12.Width;
      leftla1:=leftla1-ppLabel12.Width-0.0937;
      Left:=leftla1 ;
      Band:=ppReport2.HeaderBand;

    end;//with
  end;//for
  for j:=0 to 5 do begin
      with TppLabel.Create(ppReport2) do begin
         Caption:=capname[j];
         TextAlignment:=tacentered;
         AutoSize := True;
         Font.Style:=[fsBold];
         top:=ppLabel14.Top;
         Height:=ppLabel14.Height;
         Font.Name:='Yagut';
         Font.Size:=10;
         Width:=ppLabel14.Width;
         leftla2:=leftla2-ppLabel14.Width-0.0937;
         Left:=leftla2;
         Band:=ppReport2.HeaderBand;

      end;//with

  end;//for
finally
 qryFunction.EnableControls;
end;//try
end;




procedure TrptFunction4ProjectPersonF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1,3,True);
end;

procedure TrptFunction4ProjectPersonF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
end;

procedure TrptFunction4ProjectPersonF.leter1Click(Sender: TObject);
begin
  inherited;
  qryFunction.Sort:='ProjectID';

end;

procedure TrptFunction4ProjectPersonF.actPrintExecute(Sender: TObject);
begin
  inherited;
  try
    qryFunction.DisableControls;
    PopList4Print.Popup(Mouse.CursorPos.X,Mouse.CursorPos.Y);
  finally
    qryFunction.EnableControls;
  end;
end;

procedure TrptFunction4ProjectPersonF.A41Click(Sender: TObject);
begin
  inherited;
  qryFunction.Sort:='PersonelNo';
  MakeReport2;
  ppReport2.Print;
end;

procedure TrptFunction4ProjectPersonF.A42Click(Sender: TObject);
begin
  inherited;
  qryFunction.Sort:='ProjectID';
  MakeReport1;
  ppReport1.Print;
end;

procedure TrptFunction4ProjectPersonF.MakeReport1;
var
  i,j:Integer;
  leftla1,leftdbt,leftla2,leftdbcaSumarry,leftdbcaFooter :  real;
  s:string;
begin
try
   qryFunction.DisableControls;
   j:=0;
   leftdbt:=ppDBText11.Left;
   leftdbcaSumarry:=ppDBCalc16.left;
   leftdbcaFooter:=ppDBCalc2.left;
   leftla1:=ppLabel19.Left;
   leftla2:=ppLabel21.Left;
  for i:=7  to DBGrid1.Columns.Count-1  do begin

     with TppDBText.Create(ppReport1) do begin
      TextAlignment:=ppDBText11.TextAlignment;
      Height:=ppDBText11.Height;
      AutoSize := true;
      Font.Size:=10;
      Width:=ppDBText11.Width;
      Font.Name:='badr';
      leftdbt:=leftdbt-ppDBText11.Width-0.0937;
      Left:=leftdbt ;
      DataPipeline:=Self.ppDBPipeline1;
      DataField:=DBGrid1.Columns[i].FieldName;
      Top:=0;
      Band:=ppReport1.DetailBand;
    end;//with
    with TppDBCalc.Create(ppReport1) do begin
      TextAlignment:=ppDBCalc2.TextAlignment;
      AutoSize := true;
      Height:=ppDBCalc2.Height;
      Font.Size:=10;
      Width:=ppDBCalc2.Width;
      Font.Name:='badr';
      leftdbcaFooter:=leftdbcaFooter-ppDBCalc2.Width-0.0937;
      Left:=leftdbcaFooter ;
      DBCalcType:=ppDBCalc2.DBCalcType;
      DataPipeline:=Self.ppDBPipeline1;
      DataField:=DBGrid1.Columns[i].FieldName;
      Top:=ppDBCalc2.Top;
      Band:=ppReport1.GroupFooterBand[0];
    end;//with
    with TppDBCalc.Create(ppReport1) do begin
      TextAlignment:=ppDBCalc16.TextAlignment;
      AutoSize := true;
      Height:=ppDBCalc16.Height;
      Font.Size:=10;
      Width:=ppDBCalc16.Width;
      Font.Name:='badr';
      leftdbcaSumarry:=leftdbcaSumarry-ppDBCalc16.Width-0.0937;
      Left:=leftdbcaSumarry ;
      DBCalcType:=ppDBCalc16.DBCalcType;
      DataPipeline:=Self.ppDBPipeline1;
      DataField:=DBGrid1.Columns[i].FieldName;
      Top:=ppDBCalc16.Top;
      Band:=ppReport1.SummaryBand;
    end;//with
    with TppLabel.Create(ppReport1) do begin
      if Odd(i) then
          Caption:='”«⁄ '
        else
          Caption:='—Ê“';
      TextAlignment:=ppLabel19.TextAlignment;
      AutoSize := True;
      Font.Style:=[fsBold];
      Top:=ppLabel19.Top;
      Height:=ppLabel19.Height;
      Font.Name:='Yagut';
      Font.Size:=10;
      Width:=ppLabel19.Width;
      leftla1:=leftla1-ppLabel19.Width-0.0937;
      Left:=leftla1 ;
      Band:=ppReport1.HeaderBand;

    end;//with
  end;//for
  for j:=0 to 5 do begin
      with TppLabel.Create(ppReport1) do begin
         Caption:=capname[j];
         TextAlignment:=tacentered;
         AutoSize := True;
         Font.Style:=[fsBold];
         top:=ppLabel21.Top;
         Height:=ppLabel21.Height;
         Font.Name:='Yagut';
         Font.Size:=10;
         Width:=ppLabel21.Width;
         leftla2:=leftla2-ppLabel21.Width-0.0937;
         Left:=leftla2;
         Band:=ppReport1.HeaderBand;
      end;//with
  end;//for
finally
 qryFunction.EnableControls;
end;//try
end;


end.
