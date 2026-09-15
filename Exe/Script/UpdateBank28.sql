----5---     1401/03/30  Pay Active تاریخ
SET NOCOUNT ON
----------------------------------------------------------------------------------------------------------

 if (Select Count(*) From Util.Analyze WHERE    (TableKind = 4)  )=0
begin
DELETE From Util.Analyze WHERE TableKind IN (1,2,3,4)
INSERT INTO Util.Analyze(ID,TableKind,CaptionName,FieldName,TableName,TopicName,AliasName,JoinFieldName)
SELECT 1001,1,N'ماه','SUBSTRING(FunctionSpecialControl.ControlDate,6,2)','Pay.Months','Name','Months','MonthID'
	UNION ALL
SELECT 1002,1,N'سال‏','Pay.FunctionSpecialControl.YearID','Util.MaliYear','','Y','YearID'
	UNION ALL
SELECT 1003,1,N'روز','SUBSTRING(FunctionSpecialControl.ControlDate,9,2)',NULL,'','',''
	UNION ALL
SELECT 1004,1,N'واحد سازماني','FunctionSpecialControl.OfficeCode','(SELECT InfoID, InfoName_L1 as OfficeName FROM FormsInfo WHERE FormType = 12)','OfficeName','Office','InfoID'
	UNION ALL
SELECT 1005,1,N'كد پرسنل','Pay.FunctionSpecialControl.PersonelNo','Pay.PersonelInfo','name_L1+'' ''+lastName_L1','C1','PersonelNo'	
	UNION ALL
SELECT 1006,1,N'كد پروژه','FunctionSpecialControl.ProjectID','(SELECT InfoID, InfoName_L1 as ProjectName FROM FormsInfo WHERE FormType  in(39,40,41) )','ProjectName','Project','InfoID'
	UNION ALL
SELECT 1007,1,N'كد خودرو','FunctionSpecialControl.CarCode','(SELECT InfoID, InfoName_L1 as CarName FROM FormsInfo WHERE FormType = 96)','CarName','Car','InfoID'
	UNION ALL
SELECT 1008,1,N'كد محصول','FunctionSpecialControl.ProcCode','(SELECT InfoID, InfoName_L1 as ProcName FROM FormsInfo WHERE FormType = 67)','ProcName','Procs','InfoID'
	UNION ALL
SELECT 1009,1,N'كد فعاليت','FunctionSpecialControl.ActivityCode','(SELECT InfoID, InfoName_L1 as ActivityName FROM FormsInfo WHERE FormType = 66)','ActivityName','Activity','InfoID'
	UNION ALL
SELECT 1010,1,N'نوع كاركرد','FunctionSpecialControl.FunctionKind','(SELECT InfoID, InfoName_L1 as FunctionKindName FROM FormsInfo WHERE FormType = 70)','FunctionKindName','FunctionKinds','InfoID'
	
UNION ALL

SELECT 1101,2,N'واحد سازماني','FormsInfo.InfoID', 'Pay.FormsInfo',  'InfoName_L1',NULL,'نمي خواد'
	UNION ALL
SELECT 1102,2,N'سال‏','SUBSTRING( FunctionDay.FunDate,1,4)','Util.MaliYear','StartYear+''تا''+EndYear','Y','YearID'
	UNION ALL
SELECT 1103,2,N'ماه','SUBSTRING( FunctionDay.FunDate,6,2)','Pay.Months','Name','Months','MonthID'
	UNION ALL
SELECT 1104,2,N'روز','SUBSTRING( FunctionDay.FunDate,9,2)',NULL,'','',''
	UNION ALL
SELECT 1105,2,N'كد پرسنل','Pay.FunctionDayItems.PersonelNo','Pay.PersonelInfo','name_L1+'' ''+lastName_L1','C1','PersonelNo'	
	UNION ALL
SELECT 1106,2,N'كد حضور','FunctionDayItems.PeresentID','(SELECT InfoID, InfoName_L1 as PeresentName FROM FormsInfo WHERE FormType = 64)','PeresentName','Peresents','InfoID'
	UNION ALL
SELECT 1107,2,N'كد شيفت','FunctionDayItems.ShiftNo','(SELECT InfoID, InfoName_L1 as ShiftName FROM FormsInfo WHERE FormType = 65)','ShiftName','Shifts','InfoID'
	UNION ALL
SELECT 1108,2,N'نوع كار','FunctionDayItems.WorkID','(SELECT InfoID, InfoName_L1 as WorkName FROM FormsInfo WHERE FormType = 66)','WorkName','WorkIDs','InfoID'
	UNION ALL
SELECT 1109,2,N'كد زمين','FunctionDayItems.EarthCode','(SELECT InfoID, InfoName_L1 as EarthName FROM FormsInfo WHERE FormType = 69)','EarthName','Earths','InfoID'
	UNION ALL
SELECT 1110,2,N'كد محصول','FunctionDayItems.ProcCode','(SELECT InfoID, InfoName_L1 as ProcName FROM FormsInfo WHERE FormType = 67)','ProcName','Procs','InfoID'

UNION ALL

SELECT 2401,3,N'كد پرسنل','Rpt_Comprasion2.PersonelNo','Pay.PersonelInfo','name_L1+'' ''+lastName_L1','C1','PersonelNo'	
	UNION ALL
SELECT 2402,3,N'واحد سازماني','Rpt_Comprasion2.OfficeCode','(SELECT InfoID, InfoName_L1 as OfficeName FROM FormsInfo WHERE FormType = 12)','OfficeName','Office','InfoID'
	UNION ALL
SELECT 2403,3,N'كد پروژه','Rpt_Comprasion2.ProjectCode','(SELECT InfoID, InfoName_L1 as ProjectName FROM FormsInfo WHERE FormType  in(39,40,41) )','ProjectName','Project','InfoID'
	UNION ALL
SELECT 2404,3,N'كد شغل','Rpt_Comprasion2.JobCode','(SELECT InfoID, InfoName_L1 as JobName FROM FormsInfo WHERE FormType = 13)','JobName','Job','InfoID'
	UNION ALL
SELECT 2405,3,N'نوع مزايا','Rpt_Comprasion2.SalaryID','(SELECT FormInfoID, InfoName_L1  FROM FormsInfo )','InfoName_L1','Pay.FormsInfo','FormInfoID'
	UNION ALL
SELECT 2406,3,N'ماه','Rpt_Comprasion2.Mounth','Pay.Months','Name','Months','MonthID'
	UNION ALL
SELECT 2407,3,N'سال‏','Rpt_Comprasion2.YearID','Util.MaliYear','StartYear+''تا''+EndYear','Y','YearID'
	UNION ALL
 SELECT 2408, 3, N'حساب', N'Rpt_Comprasion2.AccTopicCode', N'%W%.Acc.Categories', N'MoeenName_L1', N'FT1', N'TopicCode'
 UNION ALL
 SELECT 2409, 3, N'تفصیلی', N'Rpt_Comprasion2.AccDetailCode', N'%W%.Acc.Details', N'DetailName_L1', N'FD', N'DetailCode'
 UNION ALL
 SELECT 2410, 3, N'م‏ه1', N'Rpt_Comprasion2.AccCTopicCode', N'%W%.Acc.CenterTopics', N'CTopicName_L1', N'FCT1', N'CTopicCode'
 UNION ALL
 SELECT 2411, 3, N'م‏ه2', N'Rpt_Comprasion2.AccCTopicCode2', N'%W%.Acc.CenterTopics2', N'CTopicName2_L1', N'FCT2', N'CTopicCode2'
 UNION ALL
 SELECT 2412, 3, N'م‏ه3', N'Rpt_Comprasion2.AccCTopicCode3', N'%W%.Acc.CTopicCode3', N'CTopicName3_L1', N'FCT3', N'CTopicCode3'
	UNION ALL
SELECT 2413,3,N'كد محصول','Rpt_Comprasion2.ProcCode','(SELECT InfoID, InfoName_L1 as ProcName FROM FormsInfo WHERE FormType = 67)','ProcName','Procs','InfoID'


UNION ALL

SELECT 2601,4,N'كد پرسنل','Rpt_ProjectCostPrice.PersonelNo','Pay.PersonelInfo','name_L1+'' ''+C1.lastName_L1','C1','PersonelNo'	
	UNION ALL
SELECT 2602,4,N'واحد سازماني','Rpt_ProjectCostPrice.OfficeCode','(SELECT InfoID, InfoName_L1 as OfficeName FROM FormsInfo WHERE FormType = 12)','OfficeName','Office','InfoID'
	UNION ALL
SELECT 2603,4,N'كد پروژه','Rpt_ProjectCostPrice.ProjectID','(SELECT InfoID, InfoName_L1 as ProjectName FROM FormsInfo WHERE FormType in(39,40,41) )','ProjectName','Project','InfoID'
	UNION ALL
SELECT 2604,4,N'كد شغل','Rpt_ProjectCostPrice.JobCode','(SELECT InfoID, InfoName_L1 as JobName FROM FormsInfo WHERE FormType = 13)','JobName','Job','InfoID'
	UNION ALL
SELECT 2605,4,N'ماه','Rpt_ProjectCostPrice.Mounth','Pay.Months','Name','Months','MonthID'

end


--if (  OBJECT_ID('FK_GetRptColumns_GetRptConstColumns') is  null )
--ALTER TABLE Pay.GetRptColumns ADD  CONSTRAINT FK_GetRptColumns_GetRptConstColumns FOREIGN KEY(ConstID)
--REFERENCES Pay.GetRptConstColumns (ConstID) ON UPDATE CASCADE

if not(  OBJECT_ID('FK_GetRptColumns_GetRptConstColumns') is  null )
ALTER TABLE Pay.GetRptColumns DROP   CONSTRAINT FK_GetRptColumns_GetRptConstColumns 


--SELECT        'SELECT ' + LTRIM(STR(ConstID)) + ',' AS Expr1, '''' + ColumnsName + '''' AS Expr2, ',''' + Alias + '''' AS Expr3, ',N''' + ColumnsCaption + '''' AS Expr4, 
--                         ',''' + TabelName + ''',' AS Expr5, LTRIM(STR(IsOutPut)) + ',' AS Expr6, LTRIM(STR(GroupBy)) AS Expr7, ' UNION ALL ' AS Expr8
--FROM            GetRptConstColumns



if (Select Count(*) From Pay.GetRptConstColumns  ) < 76
begin
DELETE From Pay.GetRptConstColumns 
INSERT INTO Pay.GetRptConstColumns(ConstID, ColumnsName, Alias, ColumnsCaption, TabelName, IsOutPut, GroupBy)
SELECT 1,	'PersonelNo'	,''	,N'ش. پرسنل'	,'Pay.PersonelInfo',	1,	0	 UNION ALL 
SELECT 2,	'Mobile'	,''	,N'موبايل'	,'Pay.PersonelInfo',	1,	0	 UNION ALL 
SELECT 3,	'PersonelInfo.name_L1 + '' '' + PersonelInfo.lastName_L1'	,'PersonName'	,N'نام پرسنل'	,'',	1,	0	 UNION ALL 
SELECT 4,	'fatherName_L1'	,''	,N'نام پدر'	,'Pay.PersonelInfo',	1,	0	 UNION ALL 
SELECT 5,	'name_L1'	,''	,N'نام'	,'Pay.PersonelInfo',	1,	0	 UNION ALL 
SELECT 6,	'lastName_L1'	,''	,N'نام خانوادگي'	,'Pay.PersonelInfo',	1,	0	 UNION ALL 
SELECT 7,	'NationalID'	,''	,N'كد ملي'	,'Pay.PersonelInfo',	1,	0	 UNION ALL 
SELECT 8,	'''13'' + LEFT (PersonelInfo.BirthDate, 2)'	,'BirthYear'	,N'سال تولد'	,'',	1,	0	 UNION ALL 
SELECT 9,	'InfoID'	,'sexID'	,N'كد جنسيت'	,'FormsInfo_sex',	1,	0	 UNION ALL 
SELECT 10,	'InfoName_L1'	,'sexName'	,N'جنسيت'	,'FormsInfo_sex',	1,	0	 UNION ALL 
SELECT 11,	'InfoID'	,'marriageID'	,N'كد تاهل'	,'FormsInfo_marriage',	1,	0	 UNION ALL 
SELECT 12,	'InfoName_L1'	,'marriageName'	,N'تاهل'	,'FormsInfo_marriage',	1,	0	 UNION ALL 
SELECT 13,	'InfoID'	,'childNumberID'	,N'كد فرزند'	,'FormsInfo_childNumber',	1,	0	 UNION ALL 
SELECT 14,	'InfoName_L1'	,'childNumberName'	,N'تعداد فرزند'	,'FormsInfo_childNumber',	1,	0	 UNION ALL 
SELECT 15,	'InfoID'	,'EmployTypeID'	,N'كد نوع استخدام'	,'FormsInfo_EmployTypeID',	1,	0	 UNION ALL 
SELECT 16,	'InfoName_L1'	,'EmployTypeName'	,N'نوع استخدام'	,'FormsInfo_EmployTypeID',	1,	0	 UNION ALL 
SELECT 17,	'InfoID'	,'LicenceCode'	,N'كد مدرك تحصيلي'	,'FormsInfo_LicenceCode',	1,	0	 UNION ALL 
SELECT 18,	'InfoName_L1'	,'LicenceName'	,N'مدرك تحصيلي'	,'FormsInfo_LicenceCode',	1,	0	 UNION ALL 
SELECT 19,	'InfoID'	,'TaxCalculationTypeID'	,N'كد ماليات'	,'FormsInfo_TaxCalculationType',	1,	0	 UNION ALL 
SELECT 20,	'InfoName_L1'	,'TaxCalculationTypeName'	,N'ماليات'	,'FormsInfo_TaxCalculationType',	1,	0	 UNION ALL 
SELECT 21,	'insurancename'	,''	,N'بيمه'	,'InsuranceCONSTinfo_Interdicts',	1,	0	 UNION ALL 
SELECT 22,	'InfoID'	,'insuranceCode'	,N'كد بيمه'	,'FormsInfo_insuranceID',	1,	0	 UNION ALL 
SELECT 23,	'InfoName_L1'	,''	,N'نام بيمه'	,'FormsInfo_insuranceID',	1,	0	 UNION ALL 
SELECT 24,	'InfoName_L1'	,'BankName'	,N'نام بانك'	,'FormsInfo_BankCode',	1,	0	 UNION ALL 
SELECT 25,	'InfoName_L1'	,'BranchName'	,N'نام شعبه'	,'FormsInfo_BranchInfo',	1,	0	 UNION ALL 
SELECT 26,	'BranchCode'	,''	,N'كد شعبه'	,'Pay.PersonelInfo',	1,	0	 UNION ALL 
SELECT 27,	'StoreDayTime'	,''	,N'ذخيره سنوات انتقالي'	,'Pay.PersonelInfo',	1,	0	 UNION ALL 
SELECT 28,	'MON_PYM'	,''	,N'رديف پيمان(وضعيت بيمه)'	,'InsuranceCONSTinfo',	1,	0	 UNION ALL 
SELECT 29,	'FirstAmount'	,''	,N'مبلغ اوليه(نوع استخدام)'	,'FormsInfoEmployTypeID',	1,	0	 UNION ALL 
SELECT 30,	'InfoName_L1'	,'StateName'	,N'وضعيت پرسنل'	,'FormsInfoPersonelState',	1,	0	 UNION ALL 
SELECT 31,	'AccountNumber'	,''	,N'شماره حساب بانكي'	,'Pay.PersonelInfo',	1,	0	 UNION ALL 
SELECT 32,	'InsuranceNumber'	,''	,N'شماره بيمه'	,'Pay.PersonelInfo',	1,	0	 UNION ALL 
SELECT 33,	'InfoID'	,'OfficeCode'	,N'كد'	,'FormsInfoOffice',	1,	0	 UNION ALL 
SELECT 34,	'InfoName_L1'	,'OfficeName'	,N'واحد سازماني'	,'FormsInfoOffice',	1,	0	 UNION ALL 
SELECT 35,	'InfoID'	,'jobCode'	,N'كدپست سازماني'	,'FormsInfo_jobCode',	1,	0	 UNION ALL 
SELECT 36,	'InfoName_L1'	,'jobName'	,N'پست سازماني'	,'FormsInfo_jobCode',	1,	0	 UNION ALL 
SELECT 37,	'InfoID'	,'ProjectCode'	,N'كدپروژه/مركزهزينه'	,'FormsInfoProject',	1,	0	 UNION ALL 
SELECT 38,	'InfoName_L1'	,'ProjectName'	,N'پروژه/مركزهزينه'	,'FormsInfoProject',	1,	0	 UNION ALL 
SELECT 39,	'InfoName_L1'	,'gradeName'	,N'رتبه'	,'FormsInfo_grade',	1,	0	 UNION ALL 
SELECT 40,	'FunctionDay'	,''	,N'روزهاي كاركرد'	,'Functions_Sum',	1,	0	 UNION ALL 
SELECT 41,	'FunctionTime'	,''	,N'ساعات كاركرد'	,'Functions_Sum',	1,	0	 UNION ALL 
SELECT 42,	'Amount'	,''	,N'جمع عناوين حكم'	,'InterdictItemsAmount',	1,	0	 UNION ALL 
SELECT 43,	'CAST(SUM(CASE WHEN ((FormsInfo_2.InfoID BETWEEN 1 AND 4) AND (FormsInfo_2.FormType = 22)) THEN price ELSE 0 END) / (CASE WHEN Functions_Sum.FunctionDay <> 0 THEN Functions_Sum.FunctionDay ELSE 1 END) AS money)'	,'WageDay'	,N'حقوق روزانه'	,'',	1,	5	 UNION ALL 
SELECT 44,	'CASE ShowlistKind WHEN 1 THEN price ELSE 0 END'	,'SumWage'	,N'جمع حقوق و مزايا'	,'',	1,	10	 UNION ALL 
SELECT 45,	'CASE WHEN (ShowlistKind IN (2 , 4 , 15 , 14) AND bedbes = 1) THEN price ELSE 0 END'	,'sum23Dec'	,N'بيمه كارفرما'	,'',	1,	10	 UNION ALL 
SELECT 46,	'CASE WHEN SUM(CASE WHEN ((CalCulateKind = 10) AND (ShowlistKind = 2)) THEN price ELSE 0 END) <> 0 THEN SUM(CASE ShowlistKind WHEN 3 THEN price ELSE 0 END) ELSE 0 END'	,'ContainInsourance'	,N'مشمول بيمه'	,'',	1,	5	 UNION ALL 
SELECT 47,	'CASE WHEN (ShowlistKind = 11 AND bedbes = 0 AND CalCulateKind = 12) THEN price ELSE 0 END'	,'ContainTax'	,N'مشمول ماليات '	,'',	1,	10	 UNION ALL 
SELECT 48,	'CASE WHEN (ShowlistKind = 11 AND bedbes = 2) THEN price ELSE 0 END'	,'TaxValue'	,N'ماليات '	,'',	1,	10	 UNION ALL 
SELECT 49,	'SUM(CASE ShowlistKind WHEN 2 THEN price ELSE 0 END) + SUM(CASE WHEN ShowlistKind = 11 AND bedbes = 2 THEN price ELSE 0 END)'	,'SumDec'	,N'جمع كسورات'	,'',	1,	5	 UNION ALL 
SELECT 50,	'SUM(CASE ShowlistKind WHEN 1 THEN price ELSE 0 END) - (SUM(CASE ShowlistKind WHEN 2 THEN price ELSE 0 END) + SUM(CASE WHEN ShowlistKind = 11 AND bedbes = 2 THEN price ELSE 0 END))'	,'PayableSalary'	,N'حقوق قابل پرداخت'	,'',	1,	5	 UNION ALL 
SELECT 51,	'IDNumber'	,''	,N'ش.شناسنامه'	,'Pay.PersonelInfo',	1,	0	 UNION ALL 
SELECT 52,	'BirthPlace_L1'	,''	,N'محل تولد'	,'EmployeeInfo',	1,	0	 UNION ALL 
SELECT 53,	'SodurPlace_L1'	,''	,N'محل صدور'	,'EmployeeInfo',	1,	0	 UNION ALL 
SELECT 54,	'BirthProvince_L1'	,''	,N'استان محل تولد'	,'EmployeeInfo',	1,	0	 UNION ALL 
SELECT 55,	'IssuedProvince_L1'	,''	,N'استان محل صدور'	,'EmployeeInfo',	1,	0	 UNION ALL 
SELECT 56,	'EmployID'	,''	,N'شماره‏مستخدم'	,'Pay.PersonelInfo',	1,	0	 UNION ALL 
SELECT 57,	'studyField_L1'	,''	,N'رشته تحصيلي'	,'EmployeeInfo',	1,	0	 UNION ALL 
SELECT 58,	'SoldierState_L1'	,''	,N'وضعيت نظام'	,'EmployeeInfo',	1,	0	 UNION ALL 
SELECT 59,	'InfoName_L1'	,'GroupName'	,N'گروه'	,'FormsInfo_GroupID',	1,	0	 UNION ALL 
SELECT 60,	'AccountNumber'	,''	,N'شماره حساب بانكي'	,'Pay.PersonelInfo',	1,	0	 UNION ALL 
SELECT 61,	'InfoName_L1'	,'PayehNoName'	,N'پايه'	,'FormsInfo_PayehNo',	1,	0	 UNION ALL 
SELECT 62,	'InfoName_L1'	,'SubInterdictName'	,N'نوع حكم'	,'FormsInfo_SubInterdictID',	1,	0	 UNION ALL 
SELECT 63,	'InfoName_L1'	,'jobsGroupName'	,N'کد و عنوان شغل'	,'FormsInfo_jobsGroup',	1,	0	 UNION ALL 
SELECT 64,	'InfoName_L1'	,'jobCityName'	,N'محل خدمت'	,'FormsInfo_jobCity',	1,	0	 UNION ALL 
SELECT 65,	'employDate'	,''	,N'تاريخ استخدام'	,'Pay.PersonelInfo',	1,	0	 UNION ALL 
SELECT 66,	'TotalYearsWork'	,''	,N'سنوات'	,'Pay.Interdicts',	1,	0	 UNION ALL 
SELECT 67,	'CASE WHEN PersonelInfo.StoreDayTime>0 THEN LTRIM(STR(PersonelInfo.StoreDayTime))+''0000'' ELSE '''' END ','StoreDayTime2'	,N'ذخيره سنوات انتقالي2'	,'',	1,	0	 UNION ALL 
SELECT 68,	'InterdicStartDate'	,''	,N'تاريخ‏اجراي‏حكم'	,'Pay.Interdicts',	1,	0	 	 UNION ALL 
SELECT 69,	'InfoName_L1'	,'EmployTypeName2'	,N'نوع حكم استخدام'	,'FormsInfo_EmployTypeID',	1,	0	 UNION ALL 
SELECT 70,	'BirthDate'	,''	,N'تاريخ تولد'	,'Pay.PersonelInfo',	1,	0 UNION ALL 
SELECT 71,	'SpecialStateName'	,''	,N'وضعيت ويژه'	,'EmployeeInfo',	1,	0	 UNION ALL 
SELECT 72,	'PoorsantRate'	,''	,N'نرخ پورسانتاژ '	,'InsuranceCONSTinfo',	1,	0 UNION ALL 
SELECT 73,	''''' '	,'NullColumns'	,N'ستون خالي'	,'',	1,	5	  UNION ALL 
SELECT 74,	'CreditCardNo'	,''	,N'ش كارت اعتباري'	,'Pay.PersonelInfo',	1,	0	UNION ALL 
SELECT 75,	'FunctionSick'	,''	,N'روزهاي بیماری'	,'Functions_Sum',	1,	0	 UNION ALL 
SELECT 76,	'FunctionDayNoSick'	,''	,N'روزهاي كاركردبدون بیماری'	,'Functions_Sum',	1,	0	 
end  

 IF NOT EXISTS(SELECT * FROM SYSOBJECTS where id = object_id(N'Util.UserNotification') and OBJECTPROPERTY(id, N'IsUserTable') = 1 )
CREATE TABLE Util.UserNotification(
	Kind int NOT NULL CONSTRAINT DF_UserNotification_Kind   DEFAULT (1)  ,
	PositionCode int NOT NULL,
	ReciptType int NOT NULL,
 CONSTRAINT PK_UserNotification PRIMARY KEY CLUSTERED (	Kind,PositionCode,ReciptType)  ON [PRIMARY]) ON [PRIMARY] 
