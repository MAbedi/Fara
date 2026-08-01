unit listPortionRange;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, Grids, Vcl.DBGrids, ImgList, DBActns, ActnList,
  StdCtrls, ExtCtrls, Buttons, DB, ADODB, ToolWin, ComCtrls, Mask, DBCtrls,
  SumDBGrid , Resource, System.ImageList, System.Actions ;

type
  TlistPortionRangeF = class(Ttemplate2MDIF)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    qrylistPortion: TADOQuery;
    srclistPortion: TDataSource;
    qryFormsinfo: TADOQuery;
    qryFormsinfoFormInfoID: TIntegerField;
    qryFormsinfoInfoName_L1: TStringField;
    qryCtopicPortion: TADOQuery;
    qryCtopicPortionCTopicName_L1: TStringField;
    qryCtopicPortionCTopicCode: TIntegerField;
    qryCtopicPortionCTopicName_L2: TStringField;
    BitBtn16: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn11: TBitBtn;
    actSort: TAction;
    actExcel: TAction;
    actFilter: TAction;
    BitBtn1: TBitBtn;
    ToolBar1: TToolBar;
    Panel4: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    SumGrid1: TSumGrid;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actExcelExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
    procedure ToolBar1CustomDrawButton(Sender: TToolBar;
      Button: TToolButton; State: TCustomDrawState;
      var DefaultDraw: Boolean);
    procedure DBGrid1ColEnter(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure _actSearchExecute(Sender: TObject);
  private
    counter:integer;
    procedure makeqry;
    procedure updateQry;
    procedure createToolButton;
    procedure UpdateList;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  listPortionRangeF: TlistPortionRangeF;

implementation

uses Dm, GlobalPro, sort2, search2, filter_ADO, FilterClass_ADO;

{$R *.dfm}

procedure TlistPortionRangeF.FormCreate(Sender: TObject);
begin
  inherited;
  createToolButton;
  counter:=var_glb_CurrentMonth;
  makeqry;
end;

procedure TlistPortionRangeF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
end;

procedure TlistPortionRangeF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1,5,true);
end;

procedure TlistPortionRangeF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qrylistPortion);
end;

procedure TlistPortionRangeF.actExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TlistPortionRangeF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qrylistPortion);
end;

procedure TlistPortionRangeF.UpdateList;

begin
  with qrylistPortion Do begin
    Active:=False;
//     Parameters.ParamByName('InfoIDFrom').Value:=GetcFrom(myParams.ParamValues['InfoID'],ftInteger);
//     Parameters.ParamByName('InfoIDTo').Value:=GetcTo(myParams.ParamValues['InfoID'],ftInteger);
     Parameters.ParamByName('TopicCodeFrom').Value:=GetcFrom(myParams.ParamValues['TopicCode'],ftInteger);
     Parameters.ParamByName('TopicCodeTo').Value:=GetcTo(myParams.ParamValues['TopicCode'],ftInteger);
     Parameters.ParamByName('CTopicCodeFrom').Value:=GetcFrom(myParams.ParamValues['CTopicCode'],ftInteger);
     Parameters.ParamByName('CTopicCodeTo').Value:=GetcTo(myParams.ParamValues['CTopicCode'],ftInteger);
     Parameters.ParamByName('CTopicCode2From').Value:=GetcFrom(myParams.ParamValues['CTopicCode2'],ftInteger);
     Parameters.ParamByName('CTopicCode2To').Value:=GetcTo(myParams.ParamValues['CTopicCode2'],ftInteger);
     Parameters.ParamByName('DetailCodeFrom').Value:=GetcFrom(myParams.ParamValues['DetailCode'],ftInteger);
     Parameters.ParamByName('DetailCodeTo').Value:=GetcTo(myParams.ParamValues['DetailCode'],ftInteger);
     Parameters.ParamByName('PortionCunt').Value:=counter;
     Parameters.ParamByName('YearID').Value:=APPBank.Year;
    Parameters.ParamByName('DocDateFrom').Value:= GetcFrom(myParams.ParamValues['DocDate'],ftString);
    Parameters.ParamByName('DocDateTo').Value:= GetcTo(myParams.ParamValues['DocDate'],ftString);
    Parameters.ParamByName('PrimaryDocNoFrom').Value:= GetcFrom(myParams.ParamValues['PrimaryDocNo'],ftInteger);
    Parameters.ParamByName('PrimaryDocNoTo').Value:= GetcTo(myParams.ParamValues['PrimaryDocNo'],ftInteger);
    Parameters.ParamByName('SecondaryDocNoFrom').Value:= GetcFrom(myParams.ParamValues['SecondaryDocNo'],ftInteger);
    Parameters.ParamByName('SecondaryDocNoTo').Value:= GetcTo(myParams.ParamValues['SecondaryDocNo'],ftInteger);

    Active:=True ;
     FieldByName('TopicCode').Tag:=3;
     FieldByName('TopicCode').Alignment:=taCenter;
     FieldByName('CTopicCode').Tag:=3;
     FieldByName('CTopicCode2').Tag:=3;
     FieldByName('DetailCode').Tag:=3;
     FieldByName('InfoName_L1').Tag:=3;
     FieldByName('InfoName_L1').Visible:=false;
     FieldByName('InfoID').Tag:=3;
     FieldByName('TopicCode').DisplayLabel:='Õ”«»';
     FieldByName('CTopicCode').DisplayLabel:='„.Â1';
     FieldByName('CTopicCode2').DisplayLabel:='„.Â2';
     FieldByName('DetailCode').DisplayLabel:=' ›’Ì·Ì';
     FieldByName('InfoID').DisplayLabel:='ﬂœ ‰ÕÊÂ  ”ÂÌ„';
     FieldByName('InfoName_L1').DisplayLabel:='⁄‰Ê«‰ ‰ÕÊÂ  ”ÂÌ„';
     FieldByName('remain').DisplayLabel:='„«‰œÂ Õ”«»';
//     FieldByName('accName').DisplayLabel:='⁄‰Ê«‰ „⁄Ì‰';
     FieldByName('accName').Visible:=false;
  end;
//  with qrySum Do begin
//    Active:=False;
////     Parameters.ParamByName('InfoIDFrom').Value:=GetcFrom(myParams.ParamValues['InfoID'],ftInteger);
////     Parameters.ParamByName('InfoIDTo').Value:=GetcTo(myParams.ParamValues['InfoID'],ftInteger);
//     Parameters.ParamByName('TopicCodeFrom').Value:=GetcFrom(myParams.ParamValues['TopicCode'],ftInteger);
//     Parameters.ParamByName('TopicCodeTo').Value:=GetcTo(myParams.ParamValues['TopicCode'],ftInteger);
//     Parameters.ParamByName('CTopicCodeFrom').Value:=GetcFrom(myParams.ParamValues['CTopicCode'],ftInteger);
//     Parameters.ParamByName('CTopicCodeTo').Value:=GetcTo(myParams.ParamValues['CTopicCode'],ftInteger);
//     Parameters.ParamByName('CTopicCode2From').Value:=GetcFrom(myParams.ParamValues['CTopicCode2'],ftInteger);
//     Parameters.ParamByName('CTopicCode2To').Value:=GetcTo(myParams.ParamValues['CTopicCode2'],ftInteger);
//     Parameters.ParamByName('DetailCodeFrom').Value:=GetcFrom(myParams.ParamValues['DetailCode'],ftInteger);
//     Parameters.ParamByName('DetailCodeTo').Value:=GetcTo(myParams.ParamValues['DetailCode'],ftInteger);
//     Parameters.ParamByName('PortionCunt').Value:=counter;
//    Active:=True ;
//  end;
  SetColSize(DBGrid1,5,true);
end;

procedure TlistPortionRangeF.FormShow(Sender: TObject);
begin
  inherited;
   myParams.Clear;
   actFilter.Execute;
   if myParams.FindParam('TopicCode')=nil then close;
end;

procedure TlistPortionRangeF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self,myParams) do
    try
//      AddItem(DMF.adcAccounting,'InfoID','ﬂœ Ê ‰«„ ‰ÕÊÂ  ”ÂÌ„','ﬂœ ‰ÕÊÂ  ”ÂÌ„',ftInteger,dvMinMax,'','',ciLookup,
//                                'SELECT  InfoID, InfoName_L1 FROM   acc.FormsInfo WHERE (FormType = 10)',
//                                'SELECT MIN(InfoID),MAX(InfoID) FROM   acc.FormsInfo WHERE (FormType = 10)');
      AddItem(DMF.adcAccounting,'DocDate',' «—ÌŒ ”‰œÕ”«»œ«—Ì',' «—ÌŒ',ftDate,dvMinMax,'','',ciSimple,'', Format(strMaxMinDocDate,[APPBank.Year]));
      AddItem(DMF.adcAccounting,'PrimaryDocNo','‘„«—Â «’·Ì ”‰œ Õ”«»œ«—Ì','‘„«—Â ”‰œ',ftInteger,dvMinMax,'','',ciSimple,'',Format(strMaxMinPrimaryDocNo,[APPBank.Year]));
      AddItem(DMF.adcAccounting,'SecondaryDocNo','‘„«—Â ›—⁄Ì ”‰œ Õ”«»œ«—Ì','‘„«—Â ›—⁄Ì',ftInteger,dvMinMax,'','',ciSimple,'', Format(strMaxMinSecondaryDocNo,[APPBank.Year]));


      AddItem(DMF.adcAccounting,'CTopicCode2','ﬂœ Ê ‰«„  ›’Ì·Ì 3','ﬂœ„—ﬂ“Â“Ì‰Â2',ftInteger,dvMinMax,'','',ciLookup,
                                'SELECT CTopicCode2, CTopicName2_L1 FROM   acc.CenterTopics2',
                                'SELECT MIN(CTopicCode2),MAX(CTopicCode2)  FROM acc.CenterTopics2');
      AddItem(DMF.adcAccounting,'CTopicCode','ﬂœ Ê ‰«„  ›’Ì·Ì 1',' ›’Ì·Ì 1',ftInteger,dvMinMax,'','',ciLookup,
                                'SELECT   CTopicCode, CTopicName_L1 FROM   acc.CenterTopics ',
                                'SELECT Min(CTopicCode)  , Max(CTopicCode)  FROM acc.CenterTopics');
      AddItem(DMF.adcAccounting,'DetailCode','ﬂœ Ê ‰«„  ›’Ì·Ì','ﬂœ  ›’Ì·Ì',ftInteger,dvMinMax,'','',ciLookup,
                                'SELECT DetailCode, DetailName_L1  FROM   acc.Details ',
                                'SELECT MIN((DetailCode) ),MAX((DetailCode) ) FROM acc.Details');
      AddItem(DMF.adcAccounting,'TopicCode','ﬂœ Ê ‰«„ Õ”«» ','ﬂœ Õ”«»',ftInteger,dvMinMax,'','',ciLookup,'SELECT acc.Categories.TopicCode, acc.Categories.MoeenName_L1 FROM acc.Categories LEFT OUTER JOIN '+
                                ' acc.CategoriesForUse ON acc.Categories.TopicCode = acc.CategoriesForUse.PrvTopicCode '+
                                ' WHERE (acc.CategoriesForUse.PrvTopicCode IS NULL) ',
                                'SELECT min(acc.Categories.TopicCode), max(acc.Categories.TopicCode) FROM acc.Categories LEFT OUTER JOIN '+
                                ' acc.CategoriesForUse ON acc.Categories.TopicCode = acc.CategoriesForUse.PrvTopicCode '+
                                ' WHERE (acc.CategoriesForUse.PrvTopicCode IS NULL) ');
      if ShowModal=mrOk then begin
        GetFilterString;
        UpdateList;
      end;//if
    finally
      Free;
    end;//try

end;

procedure TlistPortionRangeF.ToolBar1CustomDrawButton(Sender: TToolBar;
  Button: TToolButton; State: TCustomDrawState; var DefaultDraw: Boolean);
begin
  inherited;
  if (cdsSelected	in State) then begin
    counter:=Button.Tag;
    updateQry;
  end;
end;

procedure TlistPortionRangeF.updateQry;
begin
 makeqry;
 UpdateList;
end;

procedure TlistPortionRangeF.createToolButton;
var
  i:integer;
const
  NameButton='ToolButton';
begin
 i:=1;
 with Dmf.qry_Temp do begin
    Active:=False;
     SQL.Text:='SELECT InfoID,InfoName_L1 FROM acc.FormsInfo WHERE (FormType = 14)';
    Active:=true;
    while not Eof do begin
     with TToolButton.Create(ToolBar1) do begin
       Parent:=ToolBar1;
       Caption:=Fieldbyname('InfoName_L1').AsString;
       Name:= NameButton+IntToStr(i);
       Tag:=Fieldbyname('InfoID').AsInteger;
       i:=i+1;
       ToolBar1.ShowCaptions:=true;
       Grouped:=true;
       Style:=tbsCheck;
     end;//with
     Next;
    end;//while
//SET RESIZE
    TToolButton(ToolBar1.FindComponent('ToolButton'+IntToStr(var_glb_CurrentMonth))).down := true;
 end;//with

end;

procedure TlistPortionRangeF.makeqry;
var
 i:integer;SqlSum,SubSqlSum:string;
begin
  i:=0;
  qryFormsinfo.Active:=true;
  qryFormsinfo.First;
  SqlSum:='';
  with qrylistPortion do begin
   Active:=false;
			SQL.Text:='SELECT TopicCode, DetailCode, subSql.CTopicCode,CTopicCode2,';
			SQL.Add  ('InfoID, InfoName_L1,CTopicName2_L1+''_''+ CTopicName_L1+''_''+DetailName_L1+''_''+MoeenName_L1  as accName');
      SQL.Add  (', remain');
//----------»Â œ”  ¬Ê—œ‰ ÷—«Ì» Ê ·Ì”  „—«ﬂ“ Â“Ì‰Â-----------------------
      while  not qryFormsinfo.Eof do begin
//---------»Â œ”  ¬Ê—œ‰ ·Ì”  „—«ﬂ“ Â“Ì‰Â  --
        with qryCtopicPortion do begin
         Active:=false;
          Parameters.ParamByName('FormInfoID').Value:=qryFormsinfo.Fieldbyname('FormInfoID').AsInteger;
          Parameters.ParamByName('PortionCunt').Value:=counter;
          Parameters.ParamByName('YearId').Value:=APPBank.Year;
         Active:=true;
         while not Eof do begin
      	  	qrylistPortion.SQL.Add(',sum(case when acc.PortionTable.FormInfoID='+qryFormsinfo.Fieldbyname('FormInfoID').AsString+
                                   ' and acc.PortionTable.CTopicCode='+Fieldbyname('CTopicCode').AsString+
                                   ' and acc.PortionTable.PortionCunt='+IntToStr(counter)+
                                   ' then acc.PortionTable.Cofficient else 0 end) AS ['+'÷—Ì» '+Fieldbyname('CTopicName_L1').AsString+
                                                                       qryFormsinfo.Fieldbyname('FormInfoID').AsString+']');

            SubSqlSum:=SubSqlSum+',sum(case when acc.PortionTable.FormInfoID='+qryFormsinfo.Fieldbyname('FormInfoID').AsString+
                           ' and acc.PortionTable.CTopicCode='+Fieldbyname('CTopicCode').AsString+
                           ' and acc.PortionTable.PortionCunt='+IntToStr(counter)+
                           ' then acc.PortionTable.Cofficient else 0 end) AS C'+IntToStr(i);
            SqlSum:=SqlSum+',sum(C'+IntToStr(i)+')';

      	  	qrylistPortion.SQL.Add(',Round(sum(case when acc.PortionTable.FormInfoID='+qryFormsinfo.Fieldbyname('FormInfoID').AsString+
                                   ' and acc.PortionTable.CTopicCode='+Fieldbyname('CTopicCode').AsString+
                                   ' and acc.PortionTable.PortionCunt='+IntToStr(counter)+
                                   ' then acc.PortionTable.Cofficient else 0 end)'+
                                   '*(remain)'+
                                   '/sum(case when (acc.PortionTable.FormInfoID= '+qryFormsinfo.Fieldbyname('FormInfoID').AsString+
                                   ' and acc.PortionTable.PortionCunt='+IntToStr(counter)+') then  acc.PortionTable.Cofficient else -1  end),0) as ['+
                                                               '„»·€ '+Fieldbyname('CTopicName_L1').AsString+
                                                                       qryFormsinfo.Fieldbyname('FormInfoID').AsString+']');

            SubSqlSum:=SubSqlSum+',Round(sum(case when acc.PortionTable.FormInfoID='+qryFormsinfo.Fieldbyname('FormInfoID').AsString+
                                   ' and acc.PortionTable.CTopicCode='+Fieldbyname('CTopicCode').AsString+
                                   ' and acc.PortionTable.PortionCunt='+IntToStr(counter)+
                                   ' then acc.PortionTable.Cofficient else 0 end)'+
                                   '*(remain)'+
                                   '/sum(case when (acc.PortionTable.FormInfoID= '+qryFormsinfo.Fieldbyname('FormInfoID').AsString+
                                   ' and acc.PortionTable.PortionCunt='+IntToStr(counter)+') then  acc.PortionTable.Cofficient else -1  end),0) as r'+IntToStr(i);
            SqlSum:=SqlSum+',sum(r'+IntToStr(i)+')';
            i:=i+1;
            Next;
         end;//with
       end;//with
        qryFormsinfo.Next;
      end;
			SQL.Add  ('from ( SELECT  acc.Documents.YearID , acc.Documents.TopicCode, acc.Documents.DetailCode, acc.Documents.CTopicCode, acc.Documents.CTopicCode2,');
			SQL.Add  ('acc.FormsInfo.InfoID, acc.FormsInfo.InfoName_L1, SUM(acc.Documents.Debt) - SUM(acc.Documents.Credit) AS remain,');
			SQL.Add  ('acc.CenterTopics2.CTopicName2_L1, acc.CenterTopics.CTopicName_L1, acc.Details.DetailName_L1, acc.Categories.MoeenName_L1,');
			SQL.Add  ('acc.FormsInfo.FormInfoID');
  {
			SQL.Add  ('FROM acc.FormsInfo RIGHT OUTER JOIN');
			SQL.Add  ('acc.PortionRange ON acc.FormsInfo.FormInfoID = acc.PortionRange.FormInfoID RIGHT OUTER JOIN');
			SQL.Add  ('acc.CenterTopics INNER JOIN');
			SQL.Add  ('acc.Categories INNER JOIN');
			SQL.Add  ('acc.Documents ON acc.Categories.TopicCode = acc.Documents.TopicCode INNER JOIN');
			SQL.Add  ('acc.Details ON acc.Documents.DetailCode = acc.Details.DetailCode ON acc.CenterTopics.CTopicCode = acc.Documents.CTopicCode INNER JOIN');
			SQL.Add  ('acc.CenterTopics2 ON acc.Documents.CTopicCode2 = acc.CenterTopics2.CTopicCode2 ON');
			SQL.Add  ('acc.PortionRange.TopicCode = acc.Documents.TopicCode AND acc.PortionRange.DetailCode = acc.Documents.DetailCode AND Acc.PortionRange.YearID = Acc.Documents.YearID AND  ');
			SQL.Add  ('acc.PortionRange.CTopicCode = acc.Documents.CTopicCode AND acc.PortionRange.CTopicCode2 = acc.Documents.CTopicCode2');
}

			SQL.Add  ('FROM         Acc.DocGroups INNER JOIN');
			SQL.Add  ('Acc.CenterTopics INNER JOIN');
			SQL.Add  ('Acc.Categories INNER JOIN');
			SQL.Add  ('Acc.Documents ON Acc.Categories.TopicCode = Acc.Documents.TopicCode INNER JOIN');
			SQL.Add  ('Acc.Details ON Acc.Documents.DetailCode = Acc.Details.DetailCode ON Acc.CenterTopics.CTopicCode = Acc.Documents.CTopicCode INNER JOIN');
			SQL.Add  ('Acc.CenterTopics2 ON Acc.Documents.CTopicCode2 = Acc.CenterTopics2.CTopicCode2 ON Acc.DocGroups.Serial = Acc.Documents.Serial AND');
			SQL.Add  ('Acc.DocGroups.YearID = Acc.Documents.YearID AND Acc.DocGroups.CompanyCode = Acc.Documents.CompanyCode LEFT OUTER JOIN');
			SQL.Add  ('Acc.FormsInfo RIGHT OUTER JOIN');
			SQL.Add  ('Acc.PortionRange ON Acc.FormsInfo.FormInfoID = Acc.PortionRange.FormInfoID ON Acc.Documents.TopicCode = Acc.PortionRange.TopicCode AND');
			SQL.Add  ('Acc.Documents.DetailCode = Acc.PortionRange.DetailCode AND Acc.Documents.YearID = Acc.PortionRange.YearID AND');
			SQL.Add  ('Acc.Documents.CTopicCode = Acc.PortionRange.CTopicCode AND Acc.Documents.CTopicCode2 = Acc.PortionRange.CTopicCode2');

//			SQL.Add  (' where acc.PortionTable.PortionCunt='+IntToStr(counter));

      SQL.Add  (' Where  (Acc.DocGroups.SecondaryDocNo between  :SecondaryDocNoFrom    AND  :SecondaryDocNoTo ) AND ');
      SQL.Add  (' (Acc.DocGroups.PrimaryDocNo  between :PrimaryDocNoFrom   AND :PrimaryDocNoTo  ) AND ');
      SQL.Add  (' (Acc.DocGroups.DocDate  between   :DocDateFrom  AND  :DocDateTo ) ');
			SQL.Add  ('GROUP BY  acc.Documents.YearID , acc.Documents.TopicCode, acc.Documents.DetailCode, acc.Documents.CTopicCode, acc.Documents.CTopicCode2, acc.FormsInfo.InfoID,');
			SQL.Add  ('acc.FormsInfo.InfoName_L1, acc.CenterTopics2.CTopicName2_L1, acc.CenterTopics.CTopicName_L1, acc.Details.DetailName_L1,');
			SQL.Add  ('acc.Categories.MoeenName_L1, acc.FormsInfo.FormInfoID');

			SQL.Add  (')subSql LEFT OUTER JOIN  acc.PortionTable ON subSql.FormInfoID = acc.PortionTable.FormInfoID and   subSql.YearID = acc.PortionTable.YearID ');

      SQL.Add  ('where (TopicCode between :TopicCodeFrom and :TopicCodeTo )and (subSql.YearID =:YearID ) And');
			SQL.Add  ('(subSql.cTopicCode between :cTopicCodeFrom and :cTopicCodeTo )and');
			SQL.Add  ('(cTopicCode2 between :cTopicCode2From and :cTopicCode2To )and');
      SQL.Add  ('(DetailCode between :DetailCodeFrom and :DetailCodeTo)and');
      SQL.Add  ('(acc.PortionTable.PortionCunt =:PortionCunt)');

			SQL.Add  ('GROUP BY TopicCode,DetailCode,subSql.CTopicCode,CTopicCode2, InfoID,');
			SQL.Add  ('InfoName_L1, MoeenName_L1,DetailName_L1,');
			SQL.Add  ('CTopicName_L1, CTopicName2_L1,InfoName_L1,remain,PortionCunt');
			SQL.Add  ('ORDER BY TopicCode');
  // Active:=true;
  end;

  //with qrySum do begin
//   Active:=false;
//      SQL.Text:='select  ''s_um'' as Ã„⁄ﬂ· ,sum(remain) '+SqlSum+' from (';
//			SQL.Add  ('SELECT PortionCunt,remain ');
//      SQL.Add  (SubSqlSum);
//			SQL.Add  ('from ( SELECT  acc.Documents.TopicCode, acc.Documents.DetailCode, acc.Documents.CTopicCode, acc.Documents.CTopicCode2,');
//			SQL.Add  ('acc.FormsInfo.InfoID, acc.FormsInfo.InfoName_L1, SUM(acc.Documents.Debt) - SUM(acc.Documents.Credit) AS remain,');
//			SQL.Add  ('acc.CenterTopics2.CTopicName2_L1, acc.CenterTopics.CTopicName_L1, acc.Details.DetailName_L1, acc.Categories.MoeenName_L1,');
//			SQL.Add  ('acc.FormsInfo.FormInfoID');
//			SQL.Add  ('FROM acc.FormsInfo RIGHT OUTER JOIN');
//			SQL.Add  ('acc.PortionRange ON acc.FormsInfo.FormInfoID = acc.PortionRange.FormInfoID RIGHT OUTER JOIN');
//			SQL.Add  ('acc.CenterTopics INNER JOIN');
//			SQL.Add  ('acc.Categories INNER JOIN');
//			SQL.Add  ('acc.Documents ON acc.Categories.TopicCode = acc.Documents.TopicCode INNER JOIN');
//			SQL.Add  ('acc.Details ON acc.Documents.DetailCode = acc.Details.DetailCode ON acc.CenterTopics.CTopicCode = acc.Documents.CTopicCode INNER JOIN');
//			SQL.Add  ('acc.CenterTopics2 ON acc.Documents.CTopicCode2 = acc.CenterTopics2.CTopicCode2 ON');
//			SQL.Add  ('acc.PortionRange.TopicCode = acc.Documents.TopicCode AND acc.PortionRange.DetailCode = acc.Documents.DetailCode AND');
//			SQL.Add  ('acc.PortionRange.CTopicCode = acc.Documents.CTopicCode AND acc.PortionRange.CTopicCode2 = acc.Documents.CTopicCode2');
//
////			SQL.Add  (' where acc.PortionTable.PortionCunt='+IntToStr(counter));
//
//			SQL.Add  ('GROUP BY acc.Documents.TopicCode, acc.Documents.DetailCode, acc.Documents.CTopicCode, acc.Documents.CTopicCode2, acc.FormsInfo.InfoID,');
//			SQL.Add  ('acc.FormsInfo.InfoName_L1, acc.CenterTopics2.CTopicName2_L1, acc.CenterTopics.CTopicName_L1, acc.Details.DetailName_L1,');
//			SQL.Add  ('acc.Categories.MoeenName_L1, acc.FormsInfo.FormInfoID');
//
//			SQL.Add  (')subSql LEFT OUTER JOIN  acc.PortionTable ON subSql.FormInfoID = acc.PortionTable.FormInfoID ');
//
//      SQL.Add  ('where (TopicCode between :TopicCodeFrom and :TopicCodeTo )and');
//			SQL.Add  ('(subSql.cTopicCode between :cTopicCodeFrom and :cTopicCodeTo )and');
//			SQL.Add  ('(cTopicCode2 between :cTopicCode2From and :cTopicCode2To )and');
//      SQL.Add  ('(DetailCode between :DetailCodeFrom and :DetailCodeTo)and');
//      SQL.Add  ('(acc`.PortionTable.PortionCunt =:PortionCunt)');
//			SQL.Add  ('GROUP BY remain,PortionCunt');
//			SQL.Add  (')func GROUP BY PortionCunt');
//
//  // Active:=true;
//  end;


end;

procedure TlistPortionRangeF.DBGrid1ColEnter(Sender: TObject);
begin
  inherited;
//  if DBGrid1.SelectedIndex<4 then
//     DBGrid2.SelectedIndex:=0
//  else
//   if DBGrid1.SelectedIndex<=24 then
  // DBGrid2.SelectedIndex:=DBGrid1.SelectedIndex-4
end;

procedure TlistPortionRangeF.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  if not(gdSelected in State) then begin
    if odd(DBGrid1.DataSource.DataSet.RecNo) then
      DBGrid1.Canvas.Brush.Color:=const_fixed_columns_color;
  end;//if
  DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,state);

//  if Column.Index<=4 then
//   DBGrid2.Columns[0].Width:=DBGrid1.Columns[0].Width+DBGrid1.Columns[1].Width+DBGrid1.Columns[2].Width+
//                             DBGrid1.Columns[3].Width+DBGrid1.Columns[4].Width
//  else
//   if Column.Index<DBGrid1.Columns.Count-1   then
//    DBGrid2.Columns[Column.Index-4].Width:=Column.Width;
end;

procedure TlistPortionRangeF._actSearchExecute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qrylistPortion);
end;

end.

