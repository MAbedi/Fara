unit FormFunctions;

interface

uses
  ADODB,GlobalPro, Classes, db, Menus,Windows,SysUtils,
  forms,IdStack,Controls,DBGrids;


  procedure ShowAllFrom(Tag4Type:Integer;GroupIndex4case:Integer;frParent: TForm;qry:TADOQuery);
  procedure ShowAllFrom2(grd:TDBGrid;i,j:Integer);
  Procedure UpdateAllQry(FormName:TForm);
  procedure Alladd2PopOther(TagOfMenu :Integer;GRD:TDBGrid);
  function WSGetHostByAddr(s: String) : String;

const
  BaseFieldTypes: array[0..37] of TFieldType = (ftUnknown, ftString,
    ftSmallint, ftInteger, ftWord, ftBoolean, ftFloat, ftCurrency, ftBCD,
    ftDate, ftTime, ftDateTime, ftBytes, ftVarBytes, ftAutoInc, ftBlob, ftMemo,
    ftGraphic, ftFmtMemo, ftParadoxOle, ftDBaseOle, ftTypedBinary, ftCursor,
    ftFixedChar, ftWideString, ftLargeint, ftADT, ftArray, ftReference,
    ftDataSet, ftOraBlob, ftOraClob, ftVariant, ftInterface, ftIDispatch,
    ftGuid, ftTimeStamp, ftFMTBcd);
implementation

uses RptReports,   Rpt_CtopicsOnDetailsBook,Main,
   filter_ADO, FilterClass_ADO, ConstSql,Dm;

procedure ShowAllFrom(Tag4Type:Integer;GroupIndex4case:Integer;frParent: TForm;qry:TADOQuery);
var
  qryFara:TADOQuery;
begin
  qryFara:=TADOQuery.Create(Dmf);
  with qryFara do begin
    Connection:=Dmf.adcFaraSystem;
  	SQL.Text:='SELECT * FROM ReportsItems';
		SQL.Add  ('WHERE (UseParamInOtherForms  = 1) AND (ReportID = '+IntToStr(Tag4Type)+')');
    Active:=True;
    while not Eof do begin
      MyParams.CreateParam(BaseFieldTypes[FieldByName('cType').AsInteger],
             FieldByName('fldName').AsString,ptInput).AsString:=qry.FieldByName(FieldByName('fldName').AsString).AsString+';'+
               qry.FieldByName(FieldByName('fldName').AsString).AsString;
      Next;
    end;
  end;
  case GroupIndex4case of
    0: CreateMDIForm3(False,TRptReportsF,RptReportsF,frParent,Tag4Type);
    1:begin
//        MyParams.CreateParam(ftInteger,'ControlCode',ptInput).AsString:='0;999999999';
//        MyParams.CreateParam(ftInteger,'store',ptInput).AsString:=
//           qry.Fieldbyname('StoreID').AsString+';'+qry.Fieldbyname('StoreID').AsString;
//        MyParams.CreateParam(ftDate,'Date',ptInput).AsString:=myParams.ParamValues['Date'];
//        MyParams.CreateParam(ftInteger,'StuffCode',ptInput).AsString:=
//          qry.Fieldbyname('StuffCode').AsString+';'+qry.Fieldbyname('StuffCode').AsString;
//        CreateMDIForm2(TRptCardexF,RptCardexF,frParent,100);
//        RptCardexF.qryStuffs.Locate('StuffCode',qry.FieldByName('StuffCode').Value,[])
      end;
  end;
end;

procedure Alladd2PopOther;
var
  aParam:TParams;
  qry:TDataSet;
begin
  qry:=grd.DataSource.DataSet;
  aParam := myParams;
  case TagOfMenu of
    1:begin

        with TfilterF.Create2(MainF,aParam) do
        try
         AddItem(DMF.adcAccounting,'DocDate',' «—ÌŒ ”‰œÕ”«»œ«—Ì',' «—ÌŒ',ftDate,dvMinMax,'','',ciSimple,'',MaxMinDocDate);
         AddItem(DMF.adcAccounting,'PrimaryDocNo','‘„«—Â «’·Ì ”‰œ Õ”«»œ«—Ì','‘„«—Â ”‰œ',ftInteger,dvMinMax,'','',ciSimple,'',MaxMinPrimaryDocNo);
         AddItem(DMF.adcAccounting,'SecondaryDocNo','‘„«—Â ›—⁄Ì ”‰œ Õ”«»œ«—Ì','‘„«—Â ›—⁄Ì',ftInteger,dvMinMax,'','',ciSimple,'',MaxMinSecondaryDocNo);
         if gv_MultiCompany then
           AddItem(DMF.adcAccounting,'CompanyCode','ﬂœ Ê ‰«„ ‘⁄»Â /‘—ﬂ ','‘—ﬂ ',ftInteger,dvMinMax,'','',ciLookup,'SELECT CompanyCode,CompanyName_L1 FROM Companies ',
                                 'SELECT Min(CompanyCode)  , Max(CompanyCode)  FROM Companies');
          if ShowModal=mrOk then
          begin
            GetFilterString;
            createMDIForm3(False,TRpt_CtopicsOnDetailsBookF,Rpt_CtopicsOnDetailsBookF,MainF) ;
            with  Rpt_CtopicsOnDetailsBookF do
            begin
             with qry_AccCode do begin
              Active:=false;
              Parameters.ParamByName('SecondaryDocNoTo').Value:= GetcTo(aParam.ParamValues['SecondaryDocNo'],ftInteger);
              Parameters.ParamByName('PrimaryDocNoTo').Value:= GetcTo(aParam.ParamValues['PrimaryDocNo'],ftInteger);
              Parameters.ParamByName('DocDateTo').Value:= GetcTo(aParam.ParamValues['DocDate'],ftString);
              Parameters.ParamByName('TopicCodeFrom').Value:=qry.FieldByName('TopicCode').AsInteger;
              Parameters.ParamByName('TopicCodeTo').Value:=qry.FieldByName('TopicCode').AsInteger;
              Parameters.ParamByName('CTopicCodeFrom').Value:=qry.FieldByName('CTopicCode').AsInteger;
              Parameters.ParamByName('CTopicCodeTo').Value:=qry.FieldByName('CTopicCode').AsInteger;
              Parameters.ParamByName('DetailCodeFrom').Value :=qry.FieldByName('DetailCode').AsInteger;
              Parameters.ParamByName('DetailCodeTo').Value := qry.FieldByName('DetailCode').AsInteger;
              Parameters.ParamByName('Status1').Value:=-1;
              Parameters.ParamByName('Status2').Value:=-1;
              Active:=true;
             end;//with
             with qry_Doc do begin
              Active:=false;
              Parameters.ParamByName('DocDateFrom').Value:= GetcFrom(aParam.ParamValues['DocDate'],ftString);
              Parameters.ParamByName('DocDateTo').Value:= GetcTo(aParam.ParamValues['DocDate'],ftString);
              Parameters.ParamByName('PrimaryDocNoFrom').Value:= GetcFrom(aParam.ParamValues['PrimaryDocNo'],ftInteger);
              Parameters.ParamByName('PrimaryDocNoTo').Value:= GetcTo(aParam.ParamValues['PrimaryDocNo'],ftInteger);
              Parameters.ParamByName('SecondaryDocNoFrom').Value:= GetcFrom(aParam.ParamValues['SecondaryDocNo'],ftInteger);
              Parameters.ParamByName('SecondaryDocNoTo').Value:= GetcTo(aParam.ParamValues['SecondaryDocNo'],ftInteger);
              Parameters.ParamByName('Status1').Value:=-1;
              Parameters.ParamByName('Status2').Value:=-1;
              Parameters.ParamByName('AccCode').Value:=qry_AccCode.fieldByName('TopicCode').AsInteger  ;
              Parameters.ParamByName('CTopicCode').Value:=qry_AccCode.fieldByName('CTopicCode').AsInteger  ;
              Parameters.ParamByName('DetailCode').Value:=qry_AccCode.fieldByName('DetailCode').AsInteger  ;
              Open;
             end;//with
            end;//with
          end;//if
        finally
           Free;
        end;//try
      end;
  end;

end;


procedure ShowAllFrom2(grd:TDBGrid;i,j:Integer);
var
  qry:TDataSet;

begin
  qry:=grd.DataSource.DataSet;

  case qry.FieldByName('FormType').AsInteger of
   1:begin
      CreateMDIForm3(false,TRpt_CtopicsOnDetailsBookF ,Rpt_CtopicsOnDetailsBookF,MainF);
          with Rpt_CtopicsOnDetailsBookF.qry_AccCode do
          begin
            Active:=false;
//            Parameters.ParamByName('SecondaryDocNoTo').Value:=qry_DocGroups.fieldbyname('SecondaryDocNo').AsString;
//            Parameters.ParamByName('PrimaryDocNoTo').Value:=qry_DocGroups.fieldbyname('PrimaryDocNo').AsString;
//            Parameters.ParamByName('DocDateTo').Value:=qry_DocGroups.fieldbyname('DocDate').AsString;
            Parameters.ParamByName('TopicCodeFrom').Value:=qry.fieldByName('TopicCode').AsCurrency;
            Parameters.ParamByName('TopicCodeTo').Value:=qry.fieldByName('TopicCode').AsCurrency;
            Parameters.ParamByName('DetailCodeFrom').Value:=qry.fieldByName('DetailCode').AsInteger;
            Parameters.ParamByName('DetailCodeTo').Value:=qry.fieldByName('DetailCode').AsInteger;
            Parameters.ParamByName('CTopicCodeFrom').Value:=qry.fieldByName('CTopicCode').AsInteger;
            Parameters.ParamByName('CTopicCodeTo').Value:=qry.fieldByName('CTopicCode').AsInteger;
            Parameters.ParamByName('Status1').Value:=-1;//qry_DocGroups.fieldbyname('Status').AsString;
            Parameters.ParamByName('Status2').Value:=-1;//qry_DocGroups.fieldbyname('Status').AsString;
            Active:=True;
            Rpt_CtopicsOnDetailsBookF.qry_Companies.Active := true 
          end;//with

     end;

//   5:  begin
//            GetOtherMoneyF.enter(FormType,False,
//               qry.FieldByName('RestartField').AsInteger,qry.fieldbyname('LocateField').AsInteger);
//      end;//5
//   6:  begin
//            GetCheckF.enter(FormType,False);
//            GetCheckF.ShowForm(qry.fieldbyname('LocateField').AsInteger,qry.FieldByName('RestartField').AsInteger);
//      end;//6
//   7: begin
//            ReciptsF.Enter(formType,False,qry.FieldByName('RestartField').AsInteger,qry.fieldbyname('LocateField').AsInteger);
//      end;//7
  end;//case
end;

Procedure UpdateAllQry(FormName:TForm);
var
  i: Integer;
begin
  for i := 0 to FormName.ComponentCount - 1 do
    if (FormName.Components[i] is TADOQuery) then
    if (FormName.Components[i] as TADOQuery).Active then
    (FormName.Components[i] as TADOQuery).Requery;
end;

function WSGetHostByAddr(s: String): String;
begin
  Result := GStack.WSGetHostByName(s);
end;

end.
