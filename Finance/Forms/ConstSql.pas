unit ConstSql;

interface

uses SysUtils,Dm;

var
  MaxMinSecondaryDocNo,
  MaxMinDocDate,
  MaxMinPrimaryDocNo ,
  MaxMinDocType,
  MaxMinCtopic1,
  MaxMinDetail ,
  MaxMinCTopic2,
  MaxMinCompany,
  LookUpDocType,
  LookUpCtopic1,
  LookUpDetail,
  LookUpCTopic2,
  LookUpCompany:String;

procedure CreateMaxMin;


implementation

procedure CreateMaxMin;
begin
  MaxMinSecondaryDocNo := Format('SELECT Min(SecondaryDocNo) , Max(SecondaryDocNo)  FROM acc.DocGroups where yearID = %d',[APPBank.Year]);
  MaxMinPrimaryDocNo   := Format('SELECT Min(PrimaryDocNo) , Max(PrimaryDocNo)  FROM acc.DocGroups where yearID = %d',[APPBank.Year]);
  MaxMinDocDate        := Format('SELECT Min(DocDate) , Max(DocDate)  FROM acc.DocGroups where yearID = %d',[APPBank.Year]) ;

  MaxMinDocType        := 'SELECT Min(DocTypeCode), Max(DocTypeCode) FROM acc.DocTypes';
  LookUpDocType        := 'SELECT DocTypeCode, DocTypeName_L1 FROM acc.DocTypes '  ;

  LookUpCtopic1        := 'SELECT CTopicCode, CTopicName_L1 FROM  acc.CTopicsForUse';
  MaxMinCtopic1        := 'SELECT Min(CTopicCode), max(CTopicCode) FROM  acc.CTopicsForUse';

  LookUpDetail         := 'SELECT DetailCode, DetailName_L1  FROM   acc.Details';
  MaxMinDetail         := 'SELECT MIN((DetailCode) ),MAX((DetailCode) ) FROM acc.Documents';

  LookUpCTopic2        :=  'SELECT CTopicCode2, CTopicName2_L1 FROM   acc.CTopics2ForUse';
  MaxMinCTopic2        :=  'SELECT MIN(CTopicCode2),MAX(CTopicCode2)  FROM acc.CTopics2ForUse';

  LookUpCompany        := 'SELECT CompanyCode,CompanyName_L1 FROM acc.Companies ';
  MaxMinCompany        := 'SELECT Min(CompanyCode)  , Max(CompanyCode)  FROM acc.Companies'
end;




end.
