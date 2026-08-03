---T  تاريخ  1403/07/24  Pay Active
SET NOCOUNT ON
GO
IF OBJECT_ID ('pay.TR_ConfigChangeLog_FormInfoItems', 'TR') IS NOT NULL
DROP TRIGGER pay.TR_ConfigChangeLog_FormInfoItems
GO
IF OBJECT_ID ('Pay.TR_ConfigChangeLog_FormsInfo', 'TR') IS NOT NULL
DROP TRIGGER Pay.TR_ConfigChangeLog_FormsInfo
GO
IF OBJECT_ID ('pay.TR_ConfigChangeLog_Functions', 'TR') IS NOT NULL
DROP TRIGGER pay.TR_ConfigChangeLog_Functions
GO
IF OBJECT_ID ('Pay.TR_ConfigChangeLog_FunctionsItems', 'TR') IS NOT NULL
DROP TRIGGER Pay.TR_ConfigChangeLog_FunctionsItems
GO
IF OBJECT_ID ('Pay.TR_ConfigChangeLog_PersonelInfo', 'TR') IS NOT NULL
DROP TRIGGER Pay.TR_ConfigChangeLog_PersonelInfo
GO
IF OBJECT_ID ('Pay.TR_ConfigChangeLog_PersonelDecExt', 'TR') IS NOT NULL
DROP TRIGGER Pay.TR_ConfigChangeLog_PersonelDecExt
GO
IF OBJECT_ID ('Pay.TR_ConfigChangeLog_PersonelDecExtItem', 'TR') IS NOT NULL
DROP TRIGGER Pay.TR_ConfigChangeLog_PersonelDecExtItem
GO
IF OBJECT_ID ('Pay.TR_ConfigChangeLog_Interdicts', 'TR') IS NOT NULL
DROP TRIGGER Pay.TR_ConfigChangeLog_Interdicts
GO
IF OBJECT_ID ('Pay.TR_ConfigChangeLog_InterdictItems', 'TR') IS NOT NULL
DROP TRIGGER Pay.TR_ConfigChangeLog_InterdictItems
GO
IF OBJECT_ID ('Pay.TR_ConfigChangeLog_InsuranceCONSTinfo', 'TR') IS NOT NULL
DROP TRIGGER Pay.TR_ConfigChangeLog_InsuranceCONSTinfo
GO
IF OBJECT_ID ('Pay.TR_ConfigChangeLog_SalaryRange', 'TR') IS NOT NULL
DROP TRIGGER Pay.TR_ConfigChangeLog_SalaryRange
GO
--------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------
CREATE TRIGGER Pay.[TR_ConfigChangeLog_FormInfoItems]
ON  Pay.[FormInfoItems]
AFTER INSERT,UPDATE,DELETE
AS
SET NOCOUNT ON
  if exists (select * from sysobjects where id = object_id(N'INsertTOLogFile') AND OBJECTPROPERTY(id, N'IsProcedure') = 1)
     begin

		DECLARE @previousRowXmlValues XML
		DECLARE	@currentRowXmlValues XML

		DECLARE @TableName varchar(150)
		SET @TableName = (SELECT top 1 OBJECT_NAME(parent_object_id) FROM sys.objects WHERE name = OBJECT_NAME(@@PROCID))

		--Get the previous value
		SET @previousRowXmlValues = (Select * From deleted FOR XML AUTO)
		--Get the current value
		SET @currentRowXmlValues = (Select * From inserted FOR XML AUTO)
		
		exec INsertTOLogFile @previousRowXmlValues,@currentRowXmlValues,@TableName		
     end
GO
------------------------------------------------------------------------
------------------------------------------------------------------------
CREATE TRIGGER Pay.TR_ConfigChangeLog_FormsInfo
ON  Pay.[FormsInfo]
AFTER INSERT,UPDATE,DELETE
AS
SET NOCOUNT ON
  if exists (select * from sysobjects where id = object_id(N'INsertTOLogFile') AND OBJECTPROPERTY(id, N'IsProcedure') = 1)
     begin

		DECLARE @previousRowXmlValues XML
		DECLARE	@currentRowXmlValues XML

		DECLARE @TableName varchar(150)
		SET @TableName = (SELECT top 1 OBJECT_NAME(parent_object_id) FROM sys.objects WHERE name = OBJECT_NAME(@@PROCID))

		--Get the previous value
		SET @previousRowXmlValues = (SELECT FormInfoID, FormType, InfoID, InfoName_L1, InfoName_L2, PrvInfoID, Amount, Amount2, Coefficient, StandardDays, StandardTimes, AccTopicCode, AccDetailCode, AccCTopicCode, AccCTopicCode2, CalCulateType, 
                         RecallFormInfoID1, RecallFormInfoID2, WordDocuments, RecalKindClock, FirstAmount, MaxDay, MaxTime, MuliplyInDay, AccCTopicCode3, PayMentActive, TaxCode, WageCalcKind, FormInfoID2, Checking4AllPersonnel, 
                         EmployerAmountActive, AccTopicCodeB, AccDetailCodeB, DisableDecContainTaxNumerator, SalaryIDinDocActive, WageKind
                                     FROM  deleted FOR XML AUTO)
		--Get the current value
		SET @currentRowXmlValues = (Select FormInfoID, FormType, InfoID, InfoName_L1, InfoName_L2, PrvInfoID, Amount, Amount2, Coefficient, StandardDays, StandardTimes, AccTopicCode, AccDetailCode, AccCTopicCode, AccCTopicCode2, CalCulateType, 
                         RecallFormInfoID1, RecallFormInfoID2, WordDocuments, RecalKindClock, FirstAmount, MaxDay, MaxTime, MuliplyInDay, AccCTopicCode3, PayMentActive, TaxCode, WageCalcKind, FormInfoID2, Checking4AllPersonnel, 
                         EmployerAmountActive, AccTopicCodeB, AccDetailCodeB, DisableDecContainTaxNumerator, SalaryIDinDocActive, WageKind
									From inserted FOR XML AUTO)
		
		exec INsertTOLogFile @previousRowXmlValues,@currentRowXmlValues,@TableName		
     end
GO
------------------------------------------------------------------------
------------------------------------------------------------------------
CREATE TRIGGER Pay.[TR_ConfigChangeLog_Functions]
ON  Pay.[Functions]
AFTER INSERT,UPDATE,DELETE
AS
SET NOCOUNT ON
  if exists (select * from sysobjects where id = object_id(N'INsertTOLogFile') AND OBJECTPROPERTY(id, N'IsProcedure') = 1)
     begin
		DECLARE @previousRowXmlValues XML
		DECLARE	@currentRowXmlValues XML
		DECLARE @TableName varchar(150)
		SET @TableName = (SELECT top 1 OBJECT_NAME(parent_object_id) FROM sys.objects WHERE name = OBJECT_NAME(@@PROCID))

		--Get the previous value
		SET @previousRowXmlValues = (Select * From deleted FOR XML AUTO)
		--Get the current value
		SET @currentRowXmlValues = (Select * From inserted FOR XML AUTO)
		
		exec INsertTOLogFile @previousRowXmlValues,@currentRowXmlValues,@TableName		
     end
GO
------------------------------------------------------------------------
------------------------------------------------------------------------
CREATE TRIGGER Pay.TR_ConfigChangeLog_FunctionsItems
ON  Pay.[FunctionsItems]
AFTER INSERT,UPDATE,DELETE
AS
SET NOCOUNT ON
  if exists (select * from sysobjects where id = object_id(N'INsertTOLogFile') AND OBJECTPROPERTY(id, N'IsProcedure') = 1)
     begin
		DECLARE @previousRowXmlValues XML
		DECLARE	@currentRowXmlValues XML
		DECLARE @TableName varchar(150)
		SET @TableName = (SELECT top 1 OBJECT_NAME(parent_object_id) FROM sys.objects WHERE name = OBJECT_NAME(@@PROCID))

		--Get the previous value
		SET @previousRowXmlValues = (Select * From deleted FOR XML AUTO)
		--Get the current value
		SET @currentRowXmlValues = (Select * From inserted FOR XML AUTO)
		
		exec INsertTOLogFile @previousRowXmlValues,@currentRowXmlValues,@TableName		
     end
GO
------------------------------------------------------------------------
------------------------------------------------------------------------
CREATE TRIGGER Pay.TR_ConfigChangeLog_PersonelInfo
ON  Pay.[PersonelInfo]
AFTER INSERT,UPDATE,DELETE
AS
SET NOCOUNT ON
  if exists (select * from sysobjects where id = object_id(N'INsertTOLogFile') AND OBJECTPROPERTY(id, N'IsProcedure') = 1)
     begin
		DECLARE @previousRowXmlValues XML
		DECLARE	@currentRowXmlValues XML
		DECLARE @TableName varchar(150)
		SET @TableName = (SELECT top 1 OBJECT_NAME(parent_object_id) FROM sys.objects WHERE name = OBJECT_NAME(@@PROCID))

		--Get the previous value
		SET @previousRowXmlValues = (Select * From deleted FOR XML AUTO)
		--Get the current value
		SET @currentRowXmlValues = (Select * From inserted FOR XML AUTO)
		
		exec INsertTOLogFile @previousRowXmlValues,@currentRowXmlValues,@TableName		
     end
GO
------------------------------------------------------------------------
------------------------------------------------------------------------
CREATE TRIGGER Pay.TR_ConfigChangeLog_PersonelDecExt
ON  Pay.[PersonelDecExt]
AFTER INSERT,UPDATE,DELETE
AS
SET NOCOUNT ON
  if exists (select * from sysobjects where id = object_id(N'INsertTOLogFile') AND OBJECTPROPERTY(id, N'IsProcedure') = 1)
     begin

		DECLARE @previousRowXmlValues XML
		DECLARE	@currentRowXmlValues XML

		DECLARE @TableName varchar(150)
		SET @TableName = (SELECT top 1 OBJECT_NAME(parent_object_id) FROM sys.objects WHERE name = OBJECT_NAME(@@PROCID))

		--Get the previous value
		SET @previousRowXmlValues = (SELECT        DecExtID, FormInfoID, PersonelNo, EmployeeAmount, FirstMounth, EndMounth, AidNo1, AidDate1, AidNo2, AidDate2, DayQuntity, DayTime, EmployerAmount, FormInfoID2, AccTopicCode, AccDetailCode, AccCTopicCode, 
                         AccCTopicCode2, PaymentLoan, OfficeCode, ProjectInfoID, OfficeInfoID, EndDate, Minute_, AccCTopicCode3, State, ProcCode, EarthCode, Settlement, YearID, StartYear, EndYear, Situation, SettlementDate, PayableDuringMonth, 
                         LastUser, FirstUser, DocNoBonus, DocDateBonus, DocNoAnnuity, DocDateAnnuity, NumberOfMonth, leaveCount, leavePrice
                                     FROM            deleted FOR XML AUTO)
		--Get the current value
		SET @currentRowXmlValues = (Select DecExtID, FormInfoID, PersonelNo, EmployeeAmount, FirstMounth, EndMounth, AidNo1, AidDate1, AidNo2, AidDate2, DayQuntity, DayTime, EmployerAmount, FormInfoID2, AccTopicCode, AccDetailCode, AccCTopicCode, 
                         AccCTopicCode2, PaymentLoan, OfficeCode, ProjectInfoID, OfficeInfoID, EndDate, Minute_, AccCTopicCode3, State, ProcCode, EarthCode, Settlement, YearID, StartYear, EndYear, Situation, SettlementDate, PayableDuringMonth, 
                         LastUser, FirstUser, DocNoBonus, DocDateBonus, DocNoAnnuity, DocDateAnnuity, NumberOfMonth, leaveCount, leavePrice
								    From inserted FOR XML AUTO)
		
		exec INsertTOLogFile @previousRowXmlValues,@currentRowXmlValues,@TableName		
     end
GO
------------------------------------------------------------------------
------------------------------------------------------------------------
CREATE TRIGGER Pay.TR_ConfigChangeLog_PersonelDecExtItem
ON  Pay.[PersonelDecExtItem]
AFTER INSERT,UPDATE,DELETE
AS
SET NOCOUNT ON
  if exists (select * from sysobjects where id = object_id(N'INsertTOLogFile') AND OBJECTPROPERTY(id, N'IsProcedure') = 1)
     begin
		DECLARE @previousRowXmlValues XML
		DECLARE	@currentRowXmlValues XML
		DECLARE @TableName varchar(150)
		SET @TableName = (SELECT top 1 OBJECT_NAME(parent_object_id) FROM sys.objects WHERE name = OBJECT_NAME(@@PROCID))

		--Get the previous value
		SET @previousRowXmlValues = (Select * From deleted FOR XML AUTO)
		--Get the current value
		SET @currentRowXmlValues = (Select * From inserted FOR XML AUTO)
		
		exec INsertTOLogFile @previousRowXmlValues,@currentRowXmlValues,@TableName		
     end
GO
------------------------------------------------------------------------
------------------------------------------------------------------------
CREATE TRIGGER Pay.TR_ConfigChangeLog_Interdicts
ON  Pay.[Interdicts]
AFTER INSERT,UPDATE,DELETE
AS
SET NOCOUNT ON
  if exists (select * from sysobjects where id = object_id(N'INsertTOLogFile') AND OBJECTPROPERTY(id, N'IsProcedure') = 1)
     begin

		DECLARE @previousRowXmlValues XML
		DECLARE	@currentRowXmlValues XML

		DECLARE @TableName varchar(150)
		SET @TableName = (SELECT top 1 OBJECT_NAME(parent_object_id) FROM sys.objects WHERE name = OBJECT_NAME(@@PROCID))

		--Get the previous value
		SET @previousRowXmlValues = (SELECT        InterdictID, InterdictNo, InterdictDate, subcompanyCode, PersonelNo, OfficeCode, jobCode, grade, jobCity, InterdicType, EmployTypeID, InterdicStartDate, employDaytime, AccTopicCode, AccDetailCode, AccCTopicCode, 
                         AccCTopicCode2, State, UserID, TotalYearsWork, InterdicEndDate, InterdicStartDateM, TaxCalculationType, insuranceID, ProjectID, StandardEmployAmount, ManegePercent, OfficeManegePercent, GroupID, PayehNo, 
                         GrpExpense, SubFunctionID, SubInterdictID, LastInterdictID, AccCTopicCode3, GradeDate, HasRetard, InsuranceStartDate, InsuranceEndDate, jobsGroup, TaxMounth, TaxDays, LastUser, FirstUser, AidNo1, AidDate1, 
                         TypeOfContract, StandardClock, RetardActive, RetirementDate
FROM             deleted FOR XML AUTO)
		--Get the current value
		SET @currentRowXmlValues = (Select InterdictID, InterdictNo, InterdictDate, subcompanyCode, PersonelNo, OfficeCode, jobCode, grade, jobCity, InterdicType, EmployTypeID, InterdicStartDate, employDaytime, AccTopicCode, AccDetailCode, AccCTopicCode, 
                         AccCTopicCode2, State, UserID, TotalYearsWork, InterdicEndDate, InterdicStartDateM, TaxCalculationType, insuranceID, ProjectID, StandardEmployAmount, ManegePercent, OfficeManegePercent, GroupID, PayehNo, 
                         GrpExpense, SubFunctionID, SubInterdictID, LastInterdictID, AccCTopicCode3, GradeDate, HasRetard, InsuranceStartDate, InsuranceEndDate, jobsGroup, TaxMounth, TaxDays, LastUser, FirstUser, AidNo1, AidDate1, 
                         TypeOfContract, StandardClock, RetardActive, RetirementDate From inserted FOR XML AUTO)
		
		exec INsertTOLogFile @previousRowXmlValues,@currentRowXmlValues,@TableName		
     end
GO
------------------------------------------------------------------------
------------------------------------------------------------------------
CREATE TRIGGER Pay.TR_ConfigChangeLog_InterdictItems
ON  Pay.[InterdictItems]
AFTER INSERT,UPDATE,DELETE
AS
SET NOCOUNT ON
  if exists (select * from sysobjects where id = object_id(N'INsertTOLogFile') AND OBJECTPROPERTY(id, N'IsProcedure') = 1)
     begin
		DECLARE @previousRowXmlValues XML
		DECLARE	@currentRowXmlValues XML
		DECLARE @TableName varchar(150)
		SET @TableName = (SELECT top 1 OBJECT_NAME(parent_object_id) FROM sys.objects WHERE name = OBJECT_NAME(@@PROCID))

		--Get the previous value
		SET @previousRowXmlValues = (Select * From deleted FOR XML AUTO)
		--Get the current value
		SET @currentRowXmlValues = (Select * From inserted FOR XML AUTO)
		
		exec INsertTOLogFile @previousRowXmlValues,@currentRowXmlValues,@TableName		
     end
GO
------------------------------------------------------------------------
------------------------------------------------------------------------
CREATE TRIGGER Pay.TR_ConfigChangeLog_InsuranceCONSTinfo
ON  Pay.[InsuranceCONSTinfo]
AFTER INSERT,UPDATE,DELETE
AS
SET NOCOUNT ON
  if exists (select * from sysobjects where id = object_id(N'INsertTOLogFile') AND OBJECTPROPERTY(id, N'IsProcedure') = 1)
     begin
		DECLARE @previousRowXmlValues XML
		DECLARE	@currentRowXmlValues XML
		DECLARE @TableName varchar(150)
		SET @TableName = (SELECT top 1 OBJECT_NAME(parent_object_id) FROM sys.objects WHERE name = OBJECT_NAME(@@PROCID))

		--Get the previous value
		SET @previousRowXmlValues = (Select * From deleted FOR XML AUTO)
		--Get the current value
		SET @currentRowXmlValues = (Select * From inserted FOR XML AUTO)
		
		exec INsertTOLogFile @previousRowXmlValues,@currentRowXmlValues,@TableName		
     end
GO
------------------------------------------------------------------------
------------------------------------------------------------------------
CREATE TRIGGER Pay.TR_ConfigChangeLog_SalaryRange
ON  Pay.[SalaryRange]
AFTER INSERT,UPDATE,DELETE
AS
SET NOCOUNT ON
  if exists (select * from sysobjects where id = object_id(N'INsertTOLogFile') AND OBJECTPROPERTY(id, N'IsProcedure') = 1)
     begin
		DECLARE @previousRowXmlValues XML
		DECLARE	@currentRowXmlValues XML
		DECLARE @TableName varchar(150)
		SET @TableName = (SELECT top 1 OBJECT_NAME(parent_object_id) FROM sys.objects WHERE name = OBJECT_NAME(@@PROCID))

		--Get the previous value
		SET @previousRowXmlValues = (Select * From deleted FOR XML AUTO)
		--Get the current value
		SET @currentRowXmlValues = (Select * From inserted FOR XML AUTO)
		
		exec INsertTOLogFile @previousRowXmlValues,@currentRowXmlValues,@TableName		
     end
------------------------------------------------------------------------------------------------------------------------------
