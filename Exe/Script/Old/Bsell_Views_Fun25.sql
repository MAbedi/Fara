---25 Pay  تاريخ 1402/11/10   Pay Active      
SET NOCOUNT ON 
IF OBJECT_ID ('Pay.[TR_ConfigChangeLog_FormInfoItems]', 'TR') IS NOT NULL 
DROP TRIGGER Pay.[TR_ConfigChangeLog_FormInfoItems]
GO
IF OBJECT_ID ('Pay.[TR_ConfigChangeLog_FormsInfo]', 'TR') IS NOT NULL 
DROP TRIGGER Pay.[TR_ConfigChangeLog_FormsInfo]
GO
IF OBJECT_ID ('Pay.[TR_ConfigChangeLog_Functions]', 'TR') IS NOT NULL 
DROP TRIGGER Pay.[TR_ConfigChangeLog_Functions]
GO
IF OBJECT_ID ('Pay.[TR_ConfigChangeLog_FunctionsItems]', 'TR') IS NOT NULL 
DROP TRIGGER Pay.[TR_ConfigChangeLog_FunctionsItems]
GO
IF OBJECT_ID ('Pay.[TR_ConfigChangeLog_PersonelInfo]', 'TR') IS NOT NULL 
DROP TRIGGER Pay.[TR_ConfigChangeLog_PersonelInfo]
GO
IF OBJECT_ID ('Pay.[TR_ConfigChangeLog_PersonelDecExt]', 'TR') IS NOT NULL 
DROP TRIGGER Pay.[TR_ConfigChangeLog_PersonelDecExt]
GO
IF OBJECT_ID ('Pay.[TR_ConfigChangeLog_PersonelDecExtItem]', 'TR') IS NOT NULL 
DROP TRIGGER Pay.[TR_ConfigChangeLog_PersonelDecExtItem]
GO
IF OBJECT_ID ('Pay.[TR_ConfigChangeLog_Interdicts]', 'TR') IS NOT NULL 
DROP TRIGGER Pay.[TR_ConfigChangeLog_Interdicts]
GO
IF OBJECT_ID ('Pay.[TR_ConfigChangeLog_InterdictItems]', 'TR') IS NOT NULL 
DROP TRIGGER Pay.[TR_ConfigChangeLog_InterdictItems]
GO
IF OBJECT_ID ('Pay.[TR_ConfigChangeLog_InsuranceCONSTinfo]', 'TR') IS NOT NULL 
DROP TRIGGER Pay.[TR_ConfigChangeLog_InsuranceCONSTinfo]
GO
IF OBJECT_ID ('Pay.[TR_ConfigChangeLog_SalaryRange]', 'TR') IS NOT NULL 
DROP TRIGGER Pay.[TR_ConfigChangeLog_SalaryRange]
GO
----------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------
--if exists (select * from sysobjects where (id = object_id(N'dbo.UpdateDifferanteCalculate')
--                                       or  id = object_id(N'dbo.AccForDecExt')
--                                       or  id = object_id(N'dbo.RetardDiskBank')
--										   ) and xtype in (N'FN', N'IF', N'TF'))
BEGIN TRY  
drop function dbo.AccForDecExt   drop function dbo.AccForInterdict drop function dbo.balanceDecExt drop function dbo.balanceDecExtLeave drop function dbo.BimehDarman_1 drop function dbo.BimehDarman_2
drop function dbo.Bonus4Use drop function dbo.BonusForUpDate drop function dbo.BonusForUpDateYearly drop function dbo.BonusForUpDateYearlyGov drop function dbo.CalculateAnnuitySalary
drop function dbo.CalculateBonusSalary drop function dbo.CalculateBonusSalaryIndependent drop function dbo.CalculateBonusSalaryYearly drop function dbo.CalculateBonusSalaryYearlyGov
drop function dbo.ChkTick drop function dbo.ContainInsourance_Person drop function dbo.ContainInsouranceWithPerson drop function dbo.ContainSalaryAnnuity drop function dbo.ContainSalaryAnnuityGov
drop function dbo.ContainTaxBefore drop function dbo.ContainTaxWithPerson drop function dbo.CountOfMounths drop function dbo.DecreaseContainTax drop function dbo.ExtraSalary
drop function dbo.ExtraSalaryDisk drop function dbo.F_SalaryRange drop function dbo.FixCalculate_Retared  drop function dbo.FixCalculateType_2 drop function dbo.FixCalculateType_3
drop function dbo.FixCalculateType1 drop function dbo.FixCalculateTypeOffice drop function dbo.FixCalculateTypeOffice_formule drop function dbo.FixCalculateTypePersonel 
drop function dbo.FixCalculateTypeProject drop function dbo.FixCalculateTypeProject_formule drop function dbo.FixedCalActive drop function dbo.FN_CalcleaveCount
drop function dbo.Fn_CalculateSalaryRange drop function dbo.Fn_DecExtOnMounth drop function dbo.Fn_FixedCalculated_95 drop function dbo.Fn_FunctionsHasCount drop function dbo.Fn_GetCOUNTFun
drop function dbo.FN_GetFunctionsItems drop function dbo.FN_PersonelFunctions drop function dbo.Fn_PersonelTypeInfo drop function dbo.Fn_S_CaclBonus drop function dbo.Fn_Tide
drop function dbo.Fn_WagesDecs drop function dbo.FormItemsAmount drop function dbo.FormsInfo_4Type drop function dbo.FunctionItems_Amount drop function dbo.FunctionItems_AmountSID
drop function dbo.FunctionItemsList drop function dbo.FunctionItemsList_FA drop function dbo.FunctionItemsListMounth drop function dbo.FunctionItemsListParam
drop function dbo.FunctionItemsListProject drop function dbo.FunctionItemsListProjectParam drop function dbo.FunctionList drop function dbo.FunctionList2 drop function dbo.FunctionsSUM
drop function dbo.GetDifferenceDate drop function dbo.GetInfoID drop function dbo.GetInterdictSalaryAmount drop function dbo.GetLastMounths drop function dbo.GetLeave
drop function dbo.GETOffTimeInFish drop function dbo.GETOffTimeInFish2Function drop function dbo.GETRemainedOffTime drop function dbo.GetRetaredYearMounth drop function dbo.GetTotalDays
drop function dbo.GetYearMounth  drop function dbo.GetYearMounthVacation drop function dbo.Insourance drop function dbo.InsouranceCheck drop function dbo.InsouranceContain
drop function dbo.InsouranceEmployeeshare drop function dbo.InsouranceEmployershare drop function dbo.InsouranceForBime   drop function dbo.InsouranceForUse
drop function dbo.InsouranceHardWork drop function dbo.InsouranceInaction drop function dbo.InsouranceInfo4Rpt drop function dbo.InsouranceInfo4RptFixed drop function dbo.InsouranceItems
drop function dbo.InsouranceSanavat drop function dbo.InsouranceUpWithPerson drop function dbo.Insournace_Takmily drop function dbo.Interdict_Aid_Retaerd
drop function dbo.InterdictForUse drop function dbo.InterdictForUse_2 drop function dbo.InterdictForUse_retaerd
drop function dbo.InterdictForUseLast
drop function dbo.InterdictForUseWithOffice
drop function dbo.InterdictItems_InAmount
drop function dbo.InterdictItems2Amounts
drop function dbo.Interdicts4ItemsList
drop function dbo.LabelForFixedCalCulate
drop function dbo.LabelMakeDocuments
drop function dbo.Loan
drop function dbo.MakeDoc_PersonDecExt
drop function dbo.MakeDoc_PersonDecExt2
drop function dbo.MakeDocAnnuity
drop function dbo.MakeDocAnnuityFull
drop function dbo.MakeDocBonus
drop function dbo.MakeDocBonusFull
drop function dbo.MakeDocDecExtOnMounth
drop function dbo.MakeDocDuringWork
drop function dbo.MakeDocuments
drop function dbo.MakeDocuments_Mission
drop function dbo.MakeDocuments_PayMent
drop function dbo.NoToDayHourMin
drop function dbo.OffTime
drop function dbo.OffTimeList
drop function dbo.OffTimeListCurent
drop function dbo.PaymentDecExt
drop function dbo.PaymentLoan
drop function dbo.PersonelDecExtMounth
drop function dbo.PersonelInfo_Ins_Tax
drop function dbo.PonyExtra
drop function dbo.PonyExtra1
drop function dbo.PonyExtra2
drop function dbo.PonyInterdictList
drop function dbo.PonyTax
drop function dbo.ReportChekerALL
end TRY  
BEGIN CATCH  
END CATCH  
-----------------
BEGIN TRY  

drop function dbo.RetardDiskBank    drop function dbo.RetardFixedCalculated   drop function dbo.RetardMakeDocuments   drop function dbo.Rpt_Comprasion2 drop function dbo.Rpt_ProjectCostPrice
drop function dbo.Rpt_SumPrice drop function dbo.RptComprasion drop function dbo.RptComprasionSub  drop function dbo.RptComprasionSubFinalArchive  drop function dbo.SalaryWageDecList
drop function dbo.[Tax_List&File95]  drop function dbo.Tax4Rpt95  drop function dbo.TaxInsouranceExport   drop function dbo.UpdateDifferanteCalculate
end TRY  
BEGIN CATCH  
END CATCH  
----------------------------------------------------------------------------------------------------------------------------

----------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------

IF EXISTS (SELECT * FROM  sysobjects WHERE ID = object_id(N'Fn_CostOfStorage') AND xtype IN (N'FN', N'IF', N'TF'))
DROP FUNCTION Fn_CostOfStorage
GO
if exists (select * from sysobjects where id = object_id(N'Vu_Buy_Transaction') and OBJECTPROPERTY(id, N'IsView') = 1)
DROP VIEW Vu_Buy_Transaction
GO
IF EXISTS (SELECT * FROM  sysobjects WHERE ID = object_id(N'Pay.InsouranceForBime') AND xtype IN (N'FN', N'IF', N'TF'))
DROP FUNCTION Pay.InsouranceForBime
GO
IF EXISTS (SELECT * FROM  sysobjects WHERE ID = object_id(N'Pay.ContainTaxWithPerson') AND xtype IN (N'FN', N'IF', N'TF'))
DROP FUNCTION Pay.ContainTaxWithPerson
GO
IF EXISTS (SELECT * FROM  sysobjects WHERE ID = object_id(N'Pay.taxtable') AND xtype IN (N'FN', N'IF', N'TF'))
DROP FUNCTION Pay.taxtable
GO
IF EXISTS (SELECT * FROM  sysobjects WHERE ID = object_id(N'Pay.InsuranceCONSTinfo_f') AND xtype IN (N'FN', N'IF', N'TF'))
DROP FUNCTION Pay.InsuranceCONSTinfo_f
GO
IF EXISTS (SELECT * FROM  sysobjects WHERE ID = object_id(N'Pay.CalculateBonusSalaryYearly') AND xtype IN (N'FN', N'IF', N'TF'))
DROP FUNCTION Pay.CalculateBonusSalaryYearly
GO
IF EXISTS (SELECT * FROM  sysobjects WHERE ID = object_id(N'Pay.CalculateBonusSalary') AND xtype IN (N'FN', N'IF', N'TF'))
DROP FUNCTION Pay.CalculateBonusSalary
GO
IF EXISTS (SELECT * FROM  sysobjects WHERE ID = object_id(N'Pay.taxtable_List') AND xtype IN (N'FN', N'IF', N'TF'))
DROP FUNCTION Pay.taxtable_List
GO

IF EXISTS (SELECT * FROM  sysobjects WHERE ID = object_id(N'Pay.ContainTaxBefore') AND xtype IN (N'FN', N'IF', N'TF'))
DROP FUNCTION Pay.ContainTaxBefore
GO
IF EXISTS (SELECT * FROM  sysobjects WHERE ID = object_id(N'Pay.ContainSalaryAnnuity') AND xtype IN (N'FN', N'IF', N'TF'))
DROP FUNCTION Pay.ContainSalaryAnnuity
GO
IF EXISTS (SELECT * FROM  sysobjects WHERE ID = object_id(N'Pay.InsuranceCONSTinfo_f') AND xtype IN (N'FN', N'IF', N'TF'))
DROP FUNCTION Pay.InsuranceCONSTinfo_f
GO
if exists (select * from sysobjects where id = object_id(N'Pay.InsouranceSanavat') and xtype in (N'FN', N'IF', N'TF'))
drop function Pay.InsouranceSanavat
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.[Sp_SummerySalaryList]') and OBJECTPROPERTY(id,N'IsProcedure') = 1)
drop procedure Pay.[Sp_SummerySalaryList]
GO
if exists (select * from sysobjects where id = object_id(N'Pay.Fn_CalculateSalaryRange') and xtype in (N'FN', N'IF', N'TF'))
DROP FUNCTION Pay.Fn_CalculateSalaryRange
GO
if exists (select * from sysobjects where id = object_id(N'Pay.GetLeave') and xtype in (N'FN', N'IF', N'TF'))
DROP FUNCTION Pay.GetLeave
GO
if exists (select * from sysobjects where id = object_id(N'Pay.Fn_DecExtOnMounth') and xtype in (N'FN', N'IF', N'TF'))
DROP FUNCTION Pay.Fn_DecExtOnMounth
GO
if exists (select * from sysobjects where id = object_id(N'Pay.MakeDocDecExtOnMounth') and xtype in (N'FN', N'IF', N'TF'))
DROP FUNCTION Pay.MakeDocDecExtOnMounth
GO
if exists (select * from sysobjects where id = object_id(N'Pay.Rpt_SumPrice') and xtype in (N'FN', N'IF', N'TF'))
drop function Pay.Rpt_SumPrice
GO
if exists (select * from sysobjects where id = object_id(N'Pay.Rpt_ProjectCostPrice') and xtype in (N'FN', N'IF', N'TF'))
drop function Pay.Rpt_ProjectCostPrice
GO
if exists (select * from sysobjects where id = object_id(N'Pay.PonyTax') and xtype in (N'FN', N'IF', N'TF'))
drop function Pay.PonyTax
GO
if exists (select * from sysobjects where id = object_id(N'Pay.FunctionList2') and xtype in (N'FN', N'IF', N'TF'))
drop function Pay.FunctionList2
GO
if exists (select * from sysobjects where id = object_id(N'Pay.GetYearMounthVacation ') and xtype in (N'FN', N'IF', N'TF'))
drop function Pay.GetYearMounthVacation 
GO
if exists (select * from sysobjects where id = object_id(N'Pay.VacationWithPrvYear') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure Pay.VacationWithPrvYear
GO
IF EXISTS (SELECT * FROM sysobjects WHERE id = object_id(N'Pay.GetInterdictSalaryAmount') AND xtype IN (N'FN', N'IF', N'TF'))
DROP FUNCTION Pay.GetInterdictSalaryAmount
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.CalculateBonusSalaryIndependent') and xtype in (N'FN', N'IF', N'TF'))
drop function Pay.CalculateBonusSalaryIndependent
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.SpAnalysisSalary') AND OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure  Pay.SpAnalysisSalary 
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.SpAnalysisSalaryActualCosts') AND OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure  Pay.SpAnalysisSalaryActualCosts 
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.[ShamsiToMiladi]') and xtype in (N'FN', N'IF', N'TF'))
drop function Pay.[ShamsiToMiladi]
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.[FunctionItemsList]') and xtype in (N'FN', N'IF', N'TF'))
drop function Pay.FunctionItemsList
GO
IF EXISTS (SELECT * FROM sysobjects WHERE id = object_id(N'Pay.[Is_EnLeapYear]') AND xtype IN (N'FN', N'IF', N'TF'))
DROP FUNCTION Pay.[Is_EnLeapYear]
GO
IF EXISTS (SELECT * FROM sysobjects WHERE id = object_id(N'Pay.NoToDayHourMin') AND xtype IN (N'FN', N'IF', N'TF'))
DROP FUNCTION Pay.NoToDayHourMin
GO
IF EXISTS (SELECT * FROM sysobjects WHERE id = object_id(N'Pay.[MiladiToShamsi]') AND xtype IN (N'FN', N'IF', N'TF'))
DROP FUNCTION Pay.[MiladiToShamsi]
GO
IF EXISTS (SELECT id FROM  sysobjects WHERE id = object_id(N'Pay.RemainDayDec') AND xtype IN (N'FN', N'IF', N'TF'))
DROP FUNCTION Pay.RemainDayDec
GO
IF EXISTS (SELECT id FROM  sysobjects WHERE id = object_id(N'Pay.ChkTick') AND xtype IN (N'FN', N'IF', N'TF'))
DROP FUNCTION Pay.ChkTick
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.FunctionsSum') and xtype in (N'FN', N'IF', N'TF'))
drop function Pay.FunctionsSum
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.GetLastMounths') and xtype in (N'FN', N'IF', N'TF'))
drop function Pay.GetLastMounths
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.GETOffTimeInFish2Function') and xtype in (N'FN', N'IF', N'TF'))
drop function Pay.GETOffTimeInFish2Function
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.OffTimeList') and xtype in (N'FN', N'IF', N'TF'))
drop function Pay.OffTimeList
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.OffTimeListCurent') and xtype in (N'FN', N'IF', N'TF'))
drop function Pay.OffTimeListCurent
GO

if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.GETRemainedOffTime') and xtype in (N'FN', N'IF', N'TF'))
drop function Pay.GETRemainedOffTime
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.GETOffTimeInFish') and xtype in (N'FN', N'IF', N'TF'))
drop function Pay.GETOffTimeInFish
GO
--if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.GETRemainedOffTime') and xtype in (N'FN', N'IF', N'TF'))
--drop function GETRemainedOffTime
--GO
IF EXISTS (SELECT name FROM SYSOBJECTS WHERE ID = OBJECT_ID(N'Pay.[GetDifferenceDate]') AND xtype IN (N'FN', N'IF', N'TF'))
DROP FUNCTION Pay.GetDifferenceDate
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.[InterdictsInterdicEndDate]') and OBJECTPROPERTY(id,N'IsView') = 1)
drop view Pay.[InterdictsInterdicEndDate]
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.[GetYear]') and OBJECTPROPERTY(id,N'IsView') = 1)
drop view Pay.GetYear
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.Interdicts_V') and OBJECTPROPERTY(id,N'IsView') = 1)
drop view Pay.Interdicts_V
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.BounsHours') and OBJECTPROPERTY(id,N'IsView') = 1)
drop view Pay.BounsHours
GO

if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.[SpFunctionSpecialControl]') and OBJECTPROPERTY(id,N'IsProcedure') = 1)
drop procedure Pay.[SpFunctionSpecialControl]
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.[RecoveryPersonelArchives]') and OBJECTPROPERTY(id,N'IsProcedure') = 1)
drop procedure Pay.[RecoveryPersonelArchives]
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.[SpTax_ListFiles]') and OBJECTPROPERTY(id,N'IsProcedure') = 1)
drop procedure Pay.SpTax_ListFiles
GO
IF EXISTS (SELECT * FROM  sysobjects WHERE id = object_id(N'Pay.[Months]') AND OBJECTPROPERTY(id, N'IsView') = 1)
DROP VIEW Pay.[Months]
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.[SplitString]') and xtype in (N'FN',N'IF',N'TF'))
DROP FUNCTION Pay.[SplitString]
GO

if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.[InsouranceHardWork]') and xtype in (N'FN',N'IF',N'TF'))
drop function Pay.[InsouranceHardWork]
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.[InsouranceInfo4RptFixed]') and xtype in (N'FN',N'IF',N'TF'))
drop function Pay.[InsouranceInfo4RptFixed]
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.[InsouranceInfo4Rpt]') and xtype in (N'FN',N'IF',N'TF'))
drop function Pay.[InsouranceInfo4Rpt]
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.[AccForDecExt]') and xtype in (N'FN',N'IF',N'TF'))
drop function Pay.[AccForDecExt]
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.[AccForInterdict]') and xtype in (N'FN',N'IF',N'TF'))
drop function Pay.[AccForInterdict]
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.[BonusForUpDate]') and xtype in (N'FN',N'IF',N'TF'))
drop function Pay.[BonusForUpDate]
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.[CalculateAnnuitySalary]') and xtype in (N'FN',N'IF',N'TF'))
drop function Pay.[CalculateAnnuitySalary]
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.[CalculateBonusSalary]') and xtype in (N'FN',N'IF',N'TF'))
drop function Pay.[CalculateBonusSalary]
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.[ContainInsouranceWithPerson]') and xtype in (N'FN',N'IF',N'TF'))
drop function Pay.[ContainInsouranceWithPerson]
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.[ContainSalaryAnnuity]') and xtype in (N'FN',N'IF',N'TF'))
drop function Pay.[ContainSalaryAnnuity]
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.[ContainTaxBefore]') and xtype in (N'FN',N'IF',N'TF'))
drop function Pay.[ContainTaxBefore]
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.[ContainTaxWithPerson]') and xtype in (N'FN',N'IF',N'TF'))
drop function Pay.[ContainTaxWithPerson]
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.[AllOldTax]') and xtype in (N'FN',N'IF',N'TF'))
drop function Pay.[AllOldTax]
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.[DecreaseContainTax]') and xtype in (N'FN',N'IF',N'TF'))
drop function Pay.[DecreaseContainTax]
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.[DecreaseContainTaxOld]') and xtype in (N'FN',N'IF',N'TF'))
drop function Pay.[DecreaseContainTaxOld]
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.[ExtraSalary]') and xtype in (N'FN',N'IF',N'TF'))
drop function Pay.[ExtraSalary]
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.[F_SalaryRange]') and xtype in (N'FN',N'IF',N'TF'))
drop function Pay.[F_SalaryRange]
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.[FixCalculateType1]') and xtype in (N'FN',N'IF',N'TF'))
drop function Pay.[FixCalculateType1]
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.[FixCalculateType2]') and xtype in (N'FN',N'IF',N'TF'))
drop function Pay.[FixCalculateType2]
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.[FixedCalActive]') and xtype in (N'FN',N'IF',N'TF'))
drop function Pay.[FixedCalActive]
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.[FormItemsAmount]') and xtype in (N'FN',N'IF',N'TF'))
drop function Pay.[FormItemsAmount]
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.[FunctionList]') and xtype in (N'FN',N'IF',N'TF'))
drop function Pay.[FunctionList]
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.[Insourance]') and xtype in (N'FN',N'IF',N'TF'))
drop function Pay.[Insourance]
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.[InsouranceContain]') and xtype in (N'FN',N'IF',N'TF'))
drop function Pay.[InsouranceContain]
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.[InsouranceEmployeeshare]') and xtype in (N'FN',N'IF',N'TF'))
drop function Pay.[InsouranceEmployeeshare]
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.[InsouranceEmployershare]') and xtype in (N'FN',N'IF',N'TF'))
drop function Pay.[InsouranceEmployershare]
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.[InsouranceForUse]') and xtype in (N'FN',N'IF',N'TF'))
drop function Pay.[InsouranceForUse]
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.[InsouranceInaction]') and xtype in (N'FN',N'IF',N'TF'))
drop function Pay.[InsouranceInaction]
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.[InsouranceUpWithPerson]') and xtype in (N'FN',N'IF',N'TF'))
drop function Pay.[InsouranceUpWithPerson]
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.[InterdictForUse]') and xtype in (N'FN',N'IF',N'TF'))
drop function Pay.[InterdictForUse]
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.[InterdictForUseLast]') and xtype in (N'FN',N'IF',N'TF'))
drop function Pay.[InterdictForUseLast]
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.[InterdictForUseWithOffice]') and xtype in (N'FN',N'IF',N'TF'))
drop function Pay.[InterdictForUseWithOffice]
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.[LabelForFixedCalCulate]') and xtype in (N'FN',N'IF',N'TF'))
drop function Pay.[LabelForFixedCalCulate]
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.[MakeDocuments]') and xtype in (N'FN',N'IF',N'TF'))
drop function Pay.[MakeDocuments]
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.[PaymentLoan]') and xtype in (N'FN',N'IF',N'TF'))
drop function Pay.[PaymentLoan]
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.[ReMainPerson]') and xtype in (N'FN',N'IF',N'TF'))
drop function Pay.[ReMainPerson]
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.[RetardFixedCalculated]') and xtype in (N'FN',N'IF',N'TF'))
drop function Pay.[RetardFixedCalculated]
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.[RetardMakeDocuments]') and xtype in (N'FN',N'IF',N'TF'))
drop function Pay.[RetardMakeDocuments]
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.[LabelMakeDocuments]') and xtype in (N'FN',N'IF',N'TF'))
drop function Pay.LabelMakeDocuments
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.[RptComprasionSubFinalArchive]') and xtype in (N'FN',N'IF',N'TF'))
drop function Pay.RptComprasionSubFinalArchive
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.[RptComprasionSub]') and xtype in (N'FN',N'IF',N'TF'))
drop function Pay.[RptComprasionSub]
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.[RptComprasion]') and xtype in (N'FN',N'IF',N'TF'))
drop function Pay.[RptComprasion]
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.[Rpt_Comprasion2]') and xtype in (N'FN',N'IF',N'TF'))
drop function Pay.[Rpt_Comprasion2]
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.[TaxInsouranceExport]') and xtype in (N'FN',N'IF',N'TF'))
drop function Pay.[TaxInsouranceExport]
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.[TaxCheck]') and xtype in (N'FN',N'IF',N'TF'))
drop function Pay.[TaxCheck]
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.[TaxCheck]') and OBJECTPROPERTY(id,N'IsProcedure') = 1)
drop procedure Pay.[TaxCheck]
GO

if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.[balanceDecExtLeave]') and xtype in (N'FN',N'IF',N'TF'))
drop function Pay.balanceDecExtLeave
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.[balanceDecExt]') and xtype in (N'FN',N'IF',N'TF'))
drop function Pay.[balanceDecExt]
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.[FSalaryRange]') and OBJECTPROPERTY(id,N'IsProcedure') = 1)
drop procedure Pay.[FSalaryRange]
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.[NewInterdict]') and OBJECTPROPERTY(id,N'IsProcedure') = 1)
drop procedure Pay.[NewInterdict]
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.[AccFormInfo]') and OBJECTPROPERTY(id,N'IsView') = 1)
drop view Pay.[AccFormInfo]
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.[AccInterdict]') and OBJECTPROPERTY(id,N'IsView') = 1)
drop view Pay.[AccInterdict]
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.[AccProject]') and OBJECTPROPERTY(id,N'IsView') = 1)
drop view Pay.[AccProject]
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.[Annuity]') and OBJECTPROPERTY(id,N'IsView') = 1)
drop view Pay.[Annuity]
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.[EmployeeInfo]') and OBJECTPROPERTY(id,N'IsView') = 1)
drop view Pay.[EmployeeInfo]
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.[EmployeeStoreDayTime]') and OBJECTPROPERTY(id,N'IsView') = 1)
drop view Pay.[EmployeeStoreDayTime]
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.[Filter4InterdictsWage]') and OBJECTPROPERTY(id,N'IsView') = 1)
drop view Pay.[Filter4InterdictsWage]
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.[FinalArchive]') and OBJECTPROPERTY(id,N'IsView') = 1)
drop view Pay.[FinalArchive]
GO

if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.[FinalCalculateBonus]') and OBJECTPROPERTY(id,N'IsView') = 1)
drop view Pay.[FinalCalculateBonus]
GO

if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.[FunctionsAll]') and OBJECTPROPERTY(id,N'IsView') = 1)
drop view Pay.[FunctionsAll]
GO

if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.[InterdictGrade]') and OBJECTPROPERTY(id,N'IsView') = 1)
drop view Pay.[InterdictGrade]
GO

if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.[Interdicts4Form]') and OBJECTPROPERTY(id,N'IsView') = 1)
drop view Pay.[Interdicts4Form]
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.[InterdictsListAll]') and OBJECTPROPERTY(id,N'IsView') = 1)
drop view Pay.InterdictsListAll
GO

if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.[InterdictsList]') and OBJECTPROPERTY(id,N'IsView') = 1)
drop view Pay.[InterdictsList]
GO

if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.[InterdictsList2]') and OBJECTPROPERTY(id,N'IsView') = 1)
drop view Pay.[InterdictsList2]
GO

if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.[OfficeCOUNTPersonel]') and OBJECTPROPERTY(id,N'IsView') = 1)
drop view Pay.[OfficeCOUNTPersonel]
GO

if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.[PersonelCountOffice]') and OBJECTPROPERTY(id,N'IsView') = 1)
drop view Pay.[PersonelCountOffice]
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.[PersonelDecExtInfo]') and OBJECTPROPERTY(id,N'IsView') = 1)
drop view Pay.[PersonelDecExtInfo]
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.[ProjectForUse]') and OBJECTPROPERTY(id,N'IsView') = 1)
drop view Pay.[ProjectForUse]
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.[SalaryListGroup]') and OBJECTPROPERTY(id,N'IsView') = 1)
drop view Pay.[SalaryListGroup]
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.[StandardTimes]') and OBJECTPROPERTY(id,N'IsView') = 1)
drop view Pay.[StandardTimes]
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.GetTotalDays') and xtype in (N'FN', N'IF', N'TF'))
drop function Pay.GetTotalDays
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.[StoreDayTimeActive]') and OBJECTPROPERTY(id,N'IsView') = 1)
drop view Pay.[StoreDayTimeActive]
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.[_InterdictEffect]') and OBJECTPROPERTY(id,N'IsView') = 1)
drop view Pay.[_InterdictEffect]
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.[function4]') and OBJECTPROPERTY(id,N'IsView') = 1)
drop view Pay.[function4]
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.[master]') and OBJECTPROPERTY(id,N'IsView') = 1)
drop view Pay.[master]
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.[YearLoan]') and OBJECTPROPERTY(id,N'IsView') = 1)
drop view Pay.[YearLoan]
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.[InsouranceItems]') and xtype in (N'FN',N'IF',N'TF'))
drop function Pay.[InsouranceItems]
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.[InsouranceForBime]') and xtype in (N'FN',N'IF',N'TF'))
drop function Pay.[InsouranceForBime]
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.[CalculateBonusSalaryYearly]') and xtype in (N'FN',N'IF',N'TF'))
drop function Pay.CalculateBonusSalaryYearly
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.[BonusForUpDateYearly]') and xtype in (N'FN',N'IF',N'TF'))
drop function Pay.BonusForUpDateYearly
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.[FN_CalcleaveCount]') and xtype in (N'FN',N'IF',N'TF'))
drop function Pay.FN_CalcleaveCount
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.PersonelInfo_Ins_Tax') and xtype in (N'FN',N'IF',N'TF'))
drop function Pay.PersonelInfo_Ins_Tax
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.[CountOfMounths]') and xtype in (N'FN',N'IF',N'TF'))
drop function Pay.[CountOfMounths]
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.[RetardDiskBank]') and xtype in (N'FN',N'IF',N'TF'))
drop function Pay.[RetardDiskBank]
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.GetInfoID') and xtype in (N'FN',N'IF',N'TF'))
drop function Pay.GetInfoID
GO
if exists (select * from sysobjects where id = object_id(N'Pay.SalaryList') and OBJECTPROPERTY(id, N'IsView') = 1)
DROP VIEW Pay.SalaryList
GO

if ((SELECT count(FormType)FROM Pay.FormTypes WHERE (FormType =111))= 0) 
begin
	INSERT INTO Pay.FormTypes (FormType,FormCaption_L1)  VALUES  (111,'پاداش مستقل از حقوق')

	INSERT INTO Pay.FormsInfo (FormInfoID, FormType, InfoID, InfoName_L1)
	SELECT (SELECT MAX(FormInfoID) + 1 FROM Pay.FormsInfo) , 111, 1, 'پاداش مستقل از حقوق'	

end
--if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.PersonelInfo_Ins_TaxOld') and xtype in (N'FN',N'IF',N'TF'))
--drop function Pay.PersonelInfo_Ins_TaxOld
--GO
UPDATE    Pay.FormsInfo SET              InfoID = 0 WHERE     (FormInfoID = 0)
GO
UPDATE Pay.FormsInfo SET Note = InfoName_L1 WHERE (FormType = 15) AND (Note IS NULL)
GO
UPDATE Pay.FormTypes SET NoteActive = 1 WHERE (FormType = 15) AND (NoteActive IS NULL)
GO
UPDATE Pay.FormTypes SET RecallFormTypes = 11 WHERE (FormType = 55) and RecallFormTypes = 0
GO
UPDATE Pay.FormTypes SET AmountCaption = 'مقدار ساعت روز' WHERE (FormType = 16) and ISNULL(AmountCaption,'') = ''
GO
UPDATE Pay.FormTypes SET AmountActive = 1 WHERE (FormType = 16) and AmountActive = 0
GO
UPDATE  Pay.FormsInfo SET Amount = 8 WHERE (FormType = 16) and ((Amount IS NULL)OR(Amount = 0))
GO
UPDATE    Pay.FormTypes SET	FormCaption_L1 = 'معرفي انواع بيمه خدمات درماني', DurationDayActive = 1 , 	 DisplayFormType = 5
WHERE     (FormType = 61)
GO
UPDATE   Pay.FormTypes
SET 	FormCaption_L1 = 'تنظيمات انواع بيمه خدمات درماني', DurationDayActive = 1, 
	AmountActive = 1, FirstAmountActive = 1, DisplayFormType = 4 ,
	 FirstAmountName = 'سهم كارفرما', AmountCaption = 'سهم كارمند', 
	StandardDayCaption = 'ضريب'

WHERE     (FormType = 63)
GO
-----------Sheikh 2015/08/02

UPDATE Pay.Config SET VacationMounthTo = LEFT(FinishMaliYear,7) WHERE (LEN(VacationMounthTo)<7 )OR( VacationMounthTo IS NULL)
GO
UPDATE Pay.Config SET VacationMounthFrom = LEFT(StartMaliYear,7) WHERE (LEN(VacationMounthFrom)<7)OR( VacationMounthFrom IS NULL)
GO

if (SELECT  COUNT(InsuranceStartDate) FROM Pay.Interdicts WHERE     (InsuranceStartDate IS NOT NULL))=0  
  UPDATE Pay.Interdicts
  SET    insuranceID  =PersonelInfo.insuranceID , 
         TaxCalculationType =PersonelInfo.TaxCalculationType,
         InsuranceStartDate =PersonelInfo.employDate,
         InsuranceEndDate =PersonelInfo.finishEmployDate         
  FROM   Pay.Interdicts INNER JOIN Pay.PersonelInfo ON Pay.Interdicts.PersonelNo = Pay.PersonelInfo.PersonelNo  
  WHERE ( Pay.Interdicts.insuranceID  <>PersonelInfo.insuranceID)OR  
        ( Pay.Interdicts.TaxCalculationType <>PersonelInfo.TaxCalculationType)OR  
        ( Pay.Interdicts.InsuranceStartDate <>PersonelInfo.employDate)OR  
        ( Pay.Interdicts.InsuranceEndDate <>PersonelInfo.finishEmployDate )
GO
UPDATE Pay.PersonelInfo 
SET    TaxZone=(SELECT FormInfoID FROM  Pay.FormsInfo WHERE (FormType = 20) AND (InfoID = 1))
WHERE  TaxZone not in (SELECT FormInfoID FROM  Pay.FormsInfo WHERE (FormType = 20))
GO
UPDATE  Pay.FormsInfo SET PrvInfoID =(SELECT top 1 forminfoid FROM  Pay.FormsInfo where formtype = 11) 
  WHERE (FormType = 55) AND (PrvInfoID = 0)
GO
if (SELECT  COUNT(FormType) FROM Pay.FormTypes WHERE    (FormType = 16) AND (PayMentShow = 0) )=1  
BEGIN
UPDATE  Pay.FormsInfo SET PayMentActive = 1 WHERE (FormType = 16) 
UPDATE Pay.FormTypes SET PayMentShow = 1   WHERE (FormType = 16) AND (PayMentShow = 0)
END

GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.[Functions_Sum]') and OBJECTPROPERTY(id,N'IsView') = 1)
drop view Pay.[Functions_Sum]
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.[States]') and OBJECTPROPERTY(id,N'IsView') = 1)
drop view Pay.States
GO


if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.[Functions_SumOffice]') and OBJECTPROPERTY(id,N'IsView') = 1)
drop view Pay.Functions_SumOffice
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.[Functions_SumProjects]') and OBJECTPROPERTY(id,N'IsView') = 1)
drop view Pay.[Functions_SumProjects]
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.[Functions_SumProjectsM]') and OBJECTPROPERTY(id,N'IsView') = 1)
drop view Pay.[Functions_SumProjectsM]
GO

if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.[Functions_SumProject]') and OBJECTPROPERTY(id,N'IsView') = 1)
drop view Pay.[Functions_SumProject]
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.FinalArchiveWithPersonelNO') and OBJECTPROPERTY(id,N'IsView') = 1)
drop view Pay.FinalArchiveWithPersonelNO
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.[OffTime]') and xtype in (N'FN',N'IF',N'TF'))
drop function Pay.[OffTime]
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.FormsInfo_4Type') and xtype in (N'FN',N'IF',N'TF'))
drop function Pay.FormsInfo_4Type
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.[InterdictItems2Amounts]') and xtype in (N'FN',N'IF',N'TF'))
drop function Pay.[InterdictItems2Amounts]
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.[ExportSpecialFunction]') and OBJECTPROPERTY(id,N'IsProcedure') = 1)
drop procedure Pay.[ExportSpecialFunction]
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.[FN_GetFunctionsItems]') and xtype in (N'FN',N'IF',N'TF'))
drop function Pay.FN_GetFunctionsItems
GO

if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.[GetFunctionsItemsParam]') and OBJECTPROPERTY(id,N'IsProcedure') = 1)
drop procedure Pay.[GetFunctionsItemsParam]
GO

if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.[GetFunctionsItems]') and OBJECTPROPERTY(id,N'IsProcedure') = 1)
drop procedure Pay.[GetFunctionsItems]
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.[GetFunctionsItems_FA]') and OBJECTPROPERTY(id,N'IsProcedure') = 1)
drop procedure Pay.[GetFunctionsItems_FA]
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.[QryChangeWage]') and OBJECTPROPERTY(id,N'IsView') = 1)
drop view Pay.[QryChangeWage]
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.[CalChangeWage]') and OBJECTPROPERTY(id,N'IsProcedure') = 1)
drop procedure Pay.[CalChangeWage]
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.[ContainInsourance_Person]') and xtype in (N'FN',N'IF',N'TF'))
drop function Pay.[ContainInsourance_Person]
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.[MakeDocuments_Mission]') and xtype in (N'FN',N'IF',N'TF'))
drop function Pay.[MakeDocuments_Mission]
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.[MakeDoc_PersonDecExt]') and xtype in (N'FN',N'IF',N'TF'))
drop function Pay.[MakeDoc_PersonDecExt]
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.[MakeDoc_PersonDecExt2]') and xtype in (N'FN',N'IF',N'TF'))
drop function Pay.[MakeDoc_PersonDecExt2]
GO

if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.[PaymentDecExt]') and xtype in (N'FN',N'IF',N'TF'))
drop function Pay.[PaymentDecExt]
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.[GetWageDecItems]') and OBJECTPROPERTY(id,N'IsProcedure') = 1)
drop procedure Pay.[GetWageDecItems]
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.[GetInterdicts4Items]') and OBJECTPROPERTY(id,N'IsProcedure') = 1)
drop procedure Pay.[GetInterdicts4Items]
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.[UpdateDifferanteCalculate]') and xtype in (N'FN',N'IF',N'TF'))
drop function Pay.[UpdateDifferanteCalculate]
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.[InsouranceCheck]') and xtype in (N'FN',N'IF',N'TF'))
drop function Pay.[InsouranceCheck]
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.[Loan]') and xtype in (N'FN',N'IF',N'TF'))
drop function Pay.[Loan]
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.[GetYearMounth]') and xtype in (N'FN',N'IF',N'TF'))
drop function Pay.[GetYearMounth]
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.[Tax4Rpt]') and xtype in (N'FN',N'IF',N'TF'))
drop function Pay.[Tax4Rpt]
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.[Tax4RptOld]') and xtype in (N'FN',N'IF',N'TF'))
drop function Pay.[Tax4RptOld]
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.[Bonus4Use]') and xtype in (N'FN',N'IF',N'TF'))
drop function Pay.[Bonus4Use]
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.[Tax_List&File]') and xtype in (N'FN',N'IF',N'TF'))
drop function Pay.[Tax_List&File]
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.[MakeDocAnnuity]') and xtype in (N'FN',N'IF',N'TF'))
drop function Pay.[MakeDocAnnuity]
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.[MakeDocBonus]') and xtype in (N'FN',N'IF',N'TF'))
drop function Pay.[MakeDocBonus]
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.[MakeDocAnnuityFull]') and xtype in (N'FN',N'IF',N'TF'))
drop function Pay.[MakeDocAnnuityFull]
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.[MakeDocBonusFull]') and xtype in (N'FN',N'IF',N'TF'))
drop function Pay.[MakeDocBonusFull]
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.[MakeDocDuringWork]') and xtype in (N'FN',N'IF',N'TF'))
drop function Pay.[MakeDocDuringWork]
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.[MakeDocuments_PayMent]') and xtype in (N'FN',N'IF',N'TF'))
drop function Pay.[MakeDocuments_PayMent]
GO
--if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.[MakeDocuments_PayMent2]') and xtype in (N'FN',N'IF',N'TF'))
--drop function Pay.[MakeDocuments_PayMent2]
--GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.[Interdict_Aid_Retaerd]') and xtype in (N'FN',N'IF',N'TF'))
drop function Pay.[Interdict_Aid_Retaerd]
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.[InterdictForUse_retaerd]') and xtype in (N'FN',N'IF',N'TF'))
drop function Pay.[InterdictForUse_retaerd]
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.[FixCalculate_Retared]') and xtype in (N'FN',N'IF',N'TF'))
drop function Pay.[FixCalculate_Retared]
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.[FixCalculateType_2]') and xtype in (N'FN',N'IF',N'TF'))
drop function Pay.[FixCalculateType_2]
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.[FixCalculateType_3]') and xtype in (N'FN',N'IF',N'TF'))
drop function Pay.[FixCalculateType_3]
GO

if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.[GetRetaredYearMounth]') and xtype in (N'FN',N'IF',N'TF'))
drop function Pay.[GetRetaredYearMounth]
GO

if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.[InterdictForUse_2]') and xtype in (N'FN',N'IF',N'TF'))
drop function Pay.[InterdictForUse_2]
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.[BimehDarman_2]') and xtype in (N'FN',N'IF',N'TF'))
drop function Pay.[BimehDarman_2]
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.[BimehDarman_1]') and xtype in (N'FN',N'IF',N'TF'))
drop function Pay.[BimehDarman_1]
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.[Insournace_Takmily]') and xtype in (N'FN',N'IF',N'TF'))
drop function Pay.[Insournace_Takmily]
GO


UPDATE    Pay.Interdicts SET InterdicEndDate = '87/12/30' WHERE     (InterdicEndDate = '87/12/29')
GO
if ((SELECT count(FormType)FROM Pay.FormTypes WHERE (FormType =97))= 0) 
begin
	INSERT INTO Pay.FormTypes (FormType,FormCaption_L1)  VALUES  (97,'شعبه ديسكت ماليات')

	INSERT INTO  Pay.FormsInfo (FormInfoID, FormType, InfoID, InfoName_L1)
	SELECT (SELECT MAX(FormInfoID) + 1 FROM Pay.FormsInfo) , 97, 1, 'دفتر مركزي'
	UNION ALL
	SELECT (SELECT MAX(FormInfoID) + 2 FROM Pay.FormsInfo) , 97, 2, 'شعبه دوم'
	UNION ALL
	SELECT (SELECT MAX(FormInfoID) + 3 FROM Pay.FormsInfo) , 97, 3, 'شعبه سوم'
end
GO
if ((SELECT count(ScanType)FROM util.ScanInfo WHERE (ScanType IN (1)))= 0) begin
INSERT INTO util.ScanType (ScanType,ScanTypeName)  VALUES  (1,'معرفي پرسنل')
INSERT INTO util.ScanInfo (ScanType, ScanInfoID, ScanInfoName)  VALUES  (1,1,'عكس پرسنل')
end
GO
if ((SELECT count(FormType)FROM Pay.FormTypes WHERE (FormType IN (81,82,83)))= 0) begin
INSERT INTO Pay.[FormTypes] ([FormType],[FormCaption_L1])  VALUES  (81,'فرم كاركرد2')
INSERT INTO Pay.[FormTypes] ([FormType],[FormCaption_L1])  VALUES  (82,'ثبت كاركرد خاص')
INSERT INTO Pay.[FormTypes] ([FormType],[FormCaption_L1])  VALUES  (83,'انتقال اطلاعات')
end
GO
UPDATE Pay.FormTypes SET DisplayFormType = 3, ShowMnuId = 3, TaxCodeShow = 1
WHERE     (FormType IN ( 8))  -- , 12, 7, 2,20
GO
UPDATE Pay.FormTypes SET  DisplayFormType = 4,TaxCodeShow = 1
WHERE     (FormType IN ( 14,21))
GO

if ((SELECT count(FormType)FROM Pay.FormTypes WHERE (FormType =94 ))= 0) 
INSERT INTO Pay.[FormTypes] ([FormType],[FormCaption_L1],DisplayFormType,ShowMnuId)  VALUES  (94,'ليست و ديسكت ماليات بر درآمد حقوق',4,3)

GO
UPDATE Pay.FormTypes SET  ReportFileName1 = 'MakeDskTax.rtm',    ReportCaption1 = 'چاپ ليست حقوق'
WHERE     (FormType = 94)AND (ReportFileName1 IS NULL OR ReportFileName1 = '')
GO
UPDATE Pay.FormTypes SET  ReportFileName2 = 'MakeDskTaxSum.rtm', ReportCaption2 = 'چاپ خلاصه ليست'
WHERE     (FormType = 94)AND (ReportFileName2 IS NULL OR ReportFileName2 = '')
GO

if ((SELECT count(InfoID)FROM  Pay.FormsInfo WHERE (FormType =94)and(InfoID=17))= 0) 
begin
	INSERT INTO  Pay.FormsInfo (FormInfoID, FormType, InfoID, InfoName_L1)
	SELECT (SELECT ISNULL(MAX(FormInfoID),0) + 1 FROM Pay.FormsInfo) , 94, 17, 'حقوق و مزاياي مستمر  پرداختي/ تخصيصي'
	UNION ALL
	SELECT (SELECT ISNULL(MAX(FormInfoID),0) + 2 FROM Pay.FormsInfo) , 94, 18, 'اضافه كار و مزاياي غير مستمر  پرداختي/ تخصيصي'
	UNION ALL
	SELECT (SELECT ISNULL(MAX(FormInfoID),0) + 3 FROM Pay.FormsInfo) , 94, 19, 'ساير  پرداختهاي ماه جاري'
	UNION ALL
	SELECT (SELECT ISNULL(MAX(FormInfoID),0) + 4 FROM Pay.FormsInfo) , 94, 21, 'معافيت ماده 191 ( به استثناء بندهاي  10 و 13 )'
	UNION ALL
	SELECT (SELECT ISNULL(MAX(FormInfoID),0) + 5 FROM Pay.FormsInfo) , 94, 23, 'مبلغ پرداختي / تخصيصي  غير نقدي در ماه جاري'
	UNION ALL
	SELECT (SELECT ISNULL(MAX(FormInfoID),0) + 6 FROM Pay.FormsInfo) , 94, 24, 'مبلغ قابل احتساب بابت مسكن'
	UNION ALL
	SELECT (SELECT ISNULL(MAX(FormInfoID),0) + 7 FROM Pay.FormsInfo) , 94, 25, 'مبلغ قابل احتساب بابت اتومبيل'
end
GO
if ((SELECT count(FormInfoID)FROM  Pay.FormsInfo WHERE(FormType = 47) AND (InfoID = 3))=0) 
	INSERT INTO  Pay.FormsInfo (FormInfoID, FormType, InfoID, InfoName_L1, Amount, StandardDays, StandardTimes)
	SELECT (SELECT MAX(FormInfoID) + 1 FROM Pay.FormsInfo) , 47, 3, 'مرخصي',30,1.4,0
GO
--if ((SELECT count(FormInfoID)FROM  Pay.FormsInfo WHERE(FormType = 59) AND (InfoID = 3))=0) 
--	INSERT INTO  Pay.FormsInfo (FormInfoID, FormType, InfoID, InfoName_L1, AccTopicCode, AccDetailCode, AccCTopicCode, AccCTopicCode2, AccCTopicCode3)
--	SELECT (SELECT MAX(FormInfoID) + 1 FROM Pay.FormsInfo) , 59, 3, 'بازخرید مرخصی',0, 0, 0, 0, 0
--GO

if
(SELECT COUNT(*) FROM   Pay.FormsInfo INNER JOIN
   Pay.SalaryRange ON Pay.FormsInfo.FormInfoID = Pay.SalaryRange.FormInfoID
   WHERE (FormsInfo.FormType = 47) AND (FormsInfo.InfoID = 3) AND (SalaryRange.Kind = 0))=0
INSERT INTO Pay.SalaryRange (FormInfoID, SalaryID, Kind)
SELECT     (SELECT MAX(FormInfoID)FROM  Pay.FormsInfo WHERE(FormType = 47) AND (InfoID = 3)), Pay.SalaryRange.SalaryID, Pay.SalaryRange.Kind
FROM          Pay.FormsInfo INNER JOIN
                      Pay.SalaryRange ON Pay.FormsInfo.FormInfoID = Pay.SalaryRange.FormInfoID
WHERE     (FormsInfo.FormType = 47) AND (FormsInfo.InfoID = 1) AND (SalaryRange.Kind = 0)
GO
	
UPDATE Pay.FormTypes
SET  ShowMnuPlace=CASE ShowMnuId 
     WHEN  0 THEN '2'
     WHEN  1 THEN '3'
     WHEN  2 THEN '2,3'
    ELSE         '2,3,4'  END
WHERE  (ShowMnuPlace IS NULL) OR  (ShowMnuPlace = '')     
GO
 
GO

UPDATE    Pay.InterdictItems SET Firstdate = NULL WHERE     (Firstdate = '  /  /  ')
UPDATE    Pay.InterdictItems SET Firstdate = NULL WHERE     (Firstdate = '        ')

UPDATE    Pay.InterdictItems SET ENDdate = NULL WHERE     (Enddate = '  /  /  ')
UPDATE    Pay.InterdictItems SET ENDdate = NULL WHERE     (Enddate = '        ')

--if not(SELECT top 1 DecExtID FROM Pay.PersonelDecExt where DecExtID<=20)  is null
--BEGIN
--  SELECT     DecExtID,DecExtID+(SELECT MAX(DecExtID)FROM  Pay.PersonelDecExt) AS update2in into TempPersonelDecExtid FROM         Pay.PersonelDecExt
--    WHERE DecExtID<=20
--  
--  UPDATE Pay.PersonelDecExt set  DecExtID=DecExtID+(SELECT     MAX(DecExtID) FROM         Pay.PersonelDecExt)
--    WHERE DecExtID<=20
--END

GO
--UPDATE Pay.FormsInfo
--SET    Years =(SELECT TOP 1 LEFT(StartYear, 4) FROM Util.MaliYear where YearID=SUBSTRING((SELECT  StartMaliYear FROM Pay.Config), 1, 4) )
--WHERE  (FormType IN (37, 17)) AND (Years = 0 OR  Years IS NULL)
--GO

UPDATE Pay.FormTypes
SET   ActiveYearID = 1
WHERE  (FormType IN (37, 17)) AND (ActiveYearID = 0 )
GO
if ((SELECT count(FormType)FROM Pay.FormTypes WHERE (FormType =125 ))= 0) 
INSERT INTO Pay.FormTypes
                         (FormType, FormCaption_L1, FormCaption_L2, DurationDayActive, DurationTimeActive, ExemptPersonActive, SalaryEffectKind, KarGOzinyEffectKind, RecalSalaryTypes, SalaryKind, CoefficientActive, 
                         AmountActive, Amount2Active, RecallFormTypes, UseEndMounthKind, AidInfoNo1Active, AidInfoDate1Active, AidInfo1Caption, AidInfoNo2Active, AidInfoDate2Active, AidInfo2Caption, TopicCodeKind, 
                         DetailCodeKind, CTopicCodeKind, CTopicCode2Kind, DisplayFormType,  Note_L1, Note_L2, WordDocumentsActive, Pay.Functionshow, 
                         RecalKindClock, CalCulateTypeActive, FormInfo4Function, ChangeAmountActive, FirstAmountActive, NoteActive, LimitMounthActive, ReportFooter, MaxDayTimeActive, ReportCaption1, ReportCaption2, 
                         ReportCaption3, ReportCaption4, MnuRow, ShowMnuId, ShowOperators, MuliplyInDayActive, CTopicCode3Kind, EarthProceedsActivate, ADDLevelID, EditLevelID, DeleteLevelID, ChangeStateLevelID, PrintLevelID,
                          PrintDesignLevelID, FormRelatedLevelID, AccCodeLevelID, OtherCtrlLevelID, XlsLevelID, FinalStateEditLevelID, ConstantStateEditLevelID, CalcLevelID, SendLevelID, DecExtStateActive, AmountCaption, 
                         Amount2Caption, StandardDayCaption, StandardTimeCaption, ShowMnuPlace, PayMentShow, ProcName, EarthName, TaxCodeShow, WageCalcKindActive, FirstAmountName, PrefixInfoID, MasterFormType, 
                         ContactFormType, RepetitiveControl, ActiveYearID, PersonelTypeInfoRow, PrintAfterPost, InsertAccCode)
SELECT        125 AS FormType, 'معرفی پرسنل' AS FormCaption_L1, 'PersonelInfo' AS FormCaption_L2, DurationDayActive, DurationTimeActive, ExemptPersonActive, SalaryEffectKind, KarGOzinyEffectKind, RecalSalaryTypes, 
                         SalaryKind, CoefficientActive, AmountActive, Amount2Active, RecallFormTypes, UseEndMounthKind, AidInfoNo1Active, AidInfoDate1Active, AidInfo1Caption, AidInfoNo2Active, AidInfoDate2Active, AidInfo2Caption, 
                         TopicCodeKind, DetailCodeKind, CTopicCodeKind, CTopicCode2Kind, DisplayFormType, Note_L1, Note_L2, WordDocumentsActive, 
                         Functionshow, RecalKindClock, CalCulateTypeActive, FormInfo4Function, ChangeAmountActive, FirstAmountActive, NoteActive, LimitMounthActive, ReportFooter, MaxDayTimeActive, ReportCaption1, 
                         ReportCaption2, ReportCaption3, ReportCaption4, MnuRow, ShowMnuId, ShowOperators, MuliplyInDayActive, CTopicCode3Kind, EarthProceedsActivate, ADDLevelID, EditLevelID, DeleteLevelID, 
                         ChangeStateLevelID, PrintLevelID, PrintDesignLevelID, FormRelatedLevelID, AccCodeLevelID, OtherCtrlLevelID, XlsLevelID, FinalStateEditLevelID, ConstantStateEditLevelID, CalcLevelID, SendLevelID, 
                         DecExtStateActive, AmountCaption, Amount2Caption, StandardDayCaption, StandardTimeCaption, ShowMnuPlace, PayMentShow, ProcName, EarthName, TaxCodeShow, WageCalcKindActive, FirstAmountName, 
                         PrefixInfoID, MasterFormType, ContactFormType, RepetitiveControl, ActiveYearID, PersonelTypeInfoRow, PrintAfterPost, InsertAccCode
FROM            Pay.FormTypes AS FormTypes_1
WHERE        (FormType = 45)
GO

if (SELECT OBJECT_ID('Pay.PK_InsuranceCONSTinfo')) is null
  ALTER TABLE Pay.InsuranceCONSTinfo ADD CONSTRAINT PK_InsuranceCONSTinfo PRIMARY KEY (insuranceNo)

if exists (SELECT * FROM sysobjects where id = object_id(N'FK_PersonelInfo_InsuranceCONSTinfo') and OBJECTPROPERTY(id,N'CnstIsUPDATECascade') = 1)
ALTER TABLE Pay.PersonelInfo drop CONSTRAINT	FK_PersonelInfo_InsuranceCONSTinfo 

if not exists (SELECT * FROM sysobjects where id = object_id(N'Pay.FK_PersonelInfo_InsuranceCONSTinfo') and OBJECTPROPERTY(id,N'CnstIsUPDATECascade') = 1)
ALTER TABLE Pay.PersonelInfo WITH CHECK ADD CONSTRAINT	FK_PersonelInfo_InsuranceCONSTinfo FOREIGN KEY
(insuranceID) REFERENCES Pay.InsuranceCONSTinfo(insuranceNo) ON UPDATE CASCADE 
GO
if (SELECT OBJECT_ID('Pay.PK_FormsInfo')) is null
  ALTER TABLE  Pay.FormsInfo ADD CONSTRAINT PK_FormsInfo PRIMARY KEY (FormInfoID)

if  exists (SELECT * FROM sysobjects where id = object_id(N'FK_Functions_FormsInfo_OfficeCode') )
ALTER TABLE Pay.Functions  drop  CONSTRAINT FK_Functions_FormsInfo_OfficeCode 

INSERT INTO Pay.FormsInfo
                         (FormInfoID, FormType, InfoID, InfoName_L1)
SELECT DISTINCT OfficeCode FormInfoID ,12 as FormType , OfficeCode InfoID ,'واحد حذف شده استفاده شده در کارکرد' as InfoName_L1
FROM            Pay.Functions
WHERE        (OfficeCode NOT IN
                             (SELECT        FormInfoID
                                FROM             Pay.FormsInfo AS FormsInfo_1))

if not exists (SELECT * FROM sysobjects where id = object_id(N'Pay.FK_Functions_FormsInfo_OfficeCode') )
ALTER TABLE Pay.Functions  WITH CHECK ADD  CONSTRAINT FK_Functions_FormsInfo_OfficeCode FOREIGN KEY(OfficeCode)
REFERENCES  Pay.FormsInfo (FormInfoID)
GO
if not exists (SELECT * FROM sysobjects where id = object_id(N'FK_Interdicts_FormsInfo_OfficeCode') )
ALTER TABLE Pay.Interdicts  drop  CONSTRAINT FK_Interdicts_FormsInfo_OfficeCode 


if not exists (SELECT * FROM sysobjects where id = object_id(N'FK_Interdicts_FormsInfo_OfficeCode') )
ALTER TABLE Pay.Interdicts  WITH CHECK ADD  CONSTRAINT FK_Interdicts_FormsInfo_OfficeCode FOREIGN KEY(OfficeCode)
REFERENCES  Pay.FormsInfo (FormInfoID)
GO
if  exists (SELECT * FROM sysobjects where id = object_id(N'FK_Interdicts_FormsInfo_jobCode') )
ALTER TABLE Pay.Interdicts  drop  CONSTRAINT FK_Interdicts_FormsInfo_jobCode 


if not exists (SELECT * FROM sysobjects where id = object_id(N'Pay.FK_Interdicts_FormsInfo_jobCode') )
ALTER TABLE Pay.Interdicts  WITH CHECK ADD  CONSTRAINT FK_Interdicts_FormsInfo_jobCode FOREIGN KEY(jobCode)
REFERENCES  Pay.FormsInfo (FormInfoID)
GO


if ((exists (select * from sysobjects where id = object_id(N'Pay.Cnv_Function') and xtype in (N'FN', N'IF', N'TF')))and
   ( COLUMNPROPERTY( OBJECT_ID('Pay.Cnv_Function'),'outMamoriatDay','IsRowGuidCol')is  null ))
ALTER TABLE Pay.Cnv_Function ADD outMamoriatDay float
GO

if ((exists (select * from sysobjects where id = object_id(N'Pay.Cnv_Function') and xtype in (N'FN', N'IF', N'TF')))and
 ( COLUMNPROPERTY( OBJECT_ID('Pay.Cnv_Function'),'outMamoriatTime','IsRowGuidCol')is  null ))
ALTER TABLE Pay.Cnv_Function ADD outMamoriatTime float

GO

if not exists (select * from sysobjects where id = object_id(N'Pay.Fn_WagesDecs') and xtype in (N'FN', N'IF', N'TF'))
exec ('create FUNCTION Pay.Fn_WagesDecs ( @c_PersonelNo int=1110032 , @MonthNo int=11 , @ArchiveID int=0)  		
RETURNS  table  AS 
return  (
--- Edited SQL 
SELECT ''طراحی خاص برای هر شرکت'' AS InfoName_L1
)')

GO
----------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE FUNCTION Pay.GetTotalDays()
RETURNS int
AS  
BEGIN 
   DECLARE @StandardDays int
   SELECT  @StandardDays=SUM(StandardDays) FROM  pay.StandardTimes
   RETURN  @StandardDays
END
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
--------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------
--------------------------------------------------
SET QUOTED_IDENTIFIER ON 
GO
--SET ANSI_NULLS OFF 
GO
CREATE FUNCTION Pay.SplitString
( 
    -- Add the parameters for the function here 
    @myString varchar(8000), 
    @deliminator varchar(10) 
) 
RETURNS  
@ReturnTable TABLE  
( 
    -- Add the column definitions for the TABLE variable here 
    [id] [int] IDENTITY(1,1) NOT NULL, 
    [part] [varchar](50) NULL 
) 
AS 
BEGIN 
        Declare @iSpaces int 
        Declare @part varchar(50) 
 
        --initialize spaces 
        SELECT @iSpaces = charindex(@deliminator,@myString,0) 
        While @iSpaces > 0 
 
        Begin 
            SELECT @part = substring(@myString,0,charindex(@deliminator,@myString,0)) 
 
            Insert Into @ReturnTable(part) 
            SELECT @part 
 
    SELECT @myString = substring(@mystring,charindex(@deliminator,@myString,0)+ len(@deliminator),len(@myString) - charindex(' ',@myString,0)) 
 
 
            SELECT @iSpaces = charindex(@deliminator,@myString,0) 
        END 
 
        If len(@myString) > 0 
            Insert Into @ReturnTable 
            SELECT @myString 
 
    RETURN  
END  
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------

SET QUOTED_IDENTIFIER ON 
GO
--SET ANSI_NULLS OFF 
GO
CREATE FUNCTION Pay.GetLeave (@PersonelNo  int ,@MounthFrom int ,@MounthTo int ,@FormInfoID Float)
RETURNS FLOAT 
BEGIN
DECLARE @StandardDays Float, @MaxDay Float, @MaxTime  Float, @Leave  Float

SELECT        @StandardDays=StandardDays , @MaxDay=MaxDay, @MaxTime=MaxTime
FROM            Pay.FormsInfo
WHERE        (FormType = 16) AND (FormInfoID = @FormInfoID)

DECLARE @NumberOffDaysInMonth Float
SELECT @NumberOffDaysInMonth = NumberOffDaysInMonth FROM Pay.Config

if @NumberOffDaysInMonth = 0 
		SELECT @Leave= @StandardDays * ISNULL(SUM(FunctionDay),0) / Pay.GetTotalDays() 
		  FROM Pay.Functions
		  WHERE (PersonelNo = @PersonelNo) AND (Mounth BETWEEN @MounthFrom AND @MounthTo)

if @NumberOffDaysInMonth = 1 
  BEGIN
     SELECT       @Leave= COUNT(DISTINCT Mounth) 
       FROM            Pay.Functions
     WHERE        (PersonelNo = @PersonelNo) AND (Mounth BETWEEN @MounthFrom AND @MounthTo)

     SET @Leave=@Leave * 2.5
     RETURN(@Leave)
  END
if @NumberOffDaysInMonth = 3 
  BEGIN
     SELECT       @Leave= COUNT(DISTINCT Mounth) 
       FROM            Pay.Functions
     WHERE        (PersonelNo = @PersonelNo) AND (Mounth BETWEEN @MounthFrom AND @MounthTo)

     SET @Leave=@Leave * 2
     RETURN(@Leave)
  END

if @NumberOffDaysInMonth = 2   
 SELECT @Leave=  case SUM(ISNULL(FunctionDay,0) + ISNULL(SickDay,0)) 
											when 1 then 0.08 
											when 2 then 0.17 
											when 3 then 0.25 
											when 4 then 0.33 
											when 5 then 0.42 
											when 6 then 0.50 
											when 7 then 0.58 
											when 8 then 0.67
											when 9 then 0.75 
											when 10 then 0.83 
											when 11 then 0.92 
											when 12 then 1.0 
											when 13 then 1.08 
											when 14 then 1.17 
											when 15 then 1.25 
											when 16 then 1.33 
											when 17 then 1.42 
											when 18 then 1.50 
											when 19 then 1.58 
											when 20 then 1.67 
											when 21 then 1.75 
											when 22 then 1.83 
											when 23 then 1.92 
											when 24 then 2.0 
											when 25 then 2.08 
											when 26 then 2.17 
											when 27 then 2.25 
											when 28 then 2.33 
											when 29 then 2.42 
											when 30 then 2.50 
											when 31 then 2.50 
											else 0 end  																		  
							  --@StandardDays * SUM(FunctionDay) / 365 
									   FROM Pay.Functions
									   WHERE (PersonelNo = @PersonelNo) AND (Mounth BETWEEN @MounthFrom AND @MounthTo)

									

									
RETURN(ROUND(ISNULL( @Leave,0),2))

END
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

----------------------------------------------------------------------
----------------------------------------------------------------------
SET QUOTED_IDENTIFIER ON 
GO
--SET ANSI_NULLS OFF 
GO
CREATE  FUNCTION Pay.[PersonelInfo_Ins_Tax]   
	( @YearMounth varchar(7) ='81/01' ,
	  @PersonelNoFROM int=0,@PersonelNoTo int=9999999  )  
RETURNS  table  AS 
Return  
(
SELECT Pay.Interdicts.PersonelNo, MAX(Interdicts.TaxCalculationType) AS TaxCalculationType ,
	 MAX(Interdicts.insuranceID) AS insuranceID ,
		MAX(InsuranceStartDate) AS employDate , 
		MAX(InsuranceEndDate) AS finishEmployDate ,PersonelInfo.AccDetailCode

FROM         Pay.Interdicts INNER JOIN
                      Pay.PersonelInfo ON Pay.Interdicts.PersonelNo = Pay.PersonelInfo.PersonelNo
WHERE   (@YearMounth between  
						LEFT(Interdicts.InterdicStartDate,7)  AND 
						LEFT(Interdicts.InterdicEndDate, 7) )
			And 
		(Interdicts.PersonelNo BETWEEN  @PersonelNoFROM and @PersonelNoTo )
Group By Pay.Interdicts.PersonelNo, Pay.PersonelInfo.AccDetailCode
)
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
----------------------------------------------------------------------
----------------------------------------------------------------------
GO
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO
CREATE FUNCTION Pay.OffTime   (@h int=8,@KindForm int=0,@KindTo int=999999,@PersonelNoForm int=0,@PersonelNoTo int=999999999 )  
RETURNS  table  AS 
Return  (
SELECT     Pay.PersonelInfo.PersonelNo,PersonelInfo.name_L1,PersonelInfo.name_L2,PersonelInfo.lastName_L1,PersonelInfo.lastName_L2,
                      Pay.FormsInfo.InfoName_L1,FormsInfo.InfoName_L2
,FormsInfo.StandardTimes,FormsInfo.StandardDays
,ROUND((SELECT Pay.FormsInfo.StandardDays*SUM(FunctionDay+ISNULL(SickDay, 0))/Pay.GetTotalDays() AS FunctionDay FROM Pay.Functions  WHERE (PersonelNo = Pay.PersonelInfo.PersonelNo)),2) AS Realize 
,ROUND(SUM((CASE Pay.PersonelDecExt.FirstMounth WHEN 00 THEN ISNULL(PersonelDecExt.DayQuntity,0)*@h*60 +
                                               60*ISNULL(PersonelDecExt.DayTime,0)+ISNULL(PersonelDecExt.Minute_,0) ELSE 0 END))/(@h*60),2) AS M00
,ROUND(SUM((CASE Pay.PersonelDecExt.FirstMounth WHEN 01 THEN ISNULL(PersonelDecExt.DayQuntity,0)*@h*60 +
                                               60*ISNULL(PersonelDecExt.DayTime,0)+ISNULL(PersonelDecExt.Minute_,0) ELSE 0 END))/(@h*60),2) AS M01
,ROUND(SUM((CASE Pay.PersonelDecExt.FirstMounth WHEN 02 THEN ISNULL(PersonelDecExt.DayQuntity,0)*@h*60 +
                                               60*ISNULL(PersonelDecExt.DayTime,0)+ISNULL(PersonelDecExt.Minute_,0) ELSE 0 END))/(@h*60),2) AS M02
,ROUND(SUM((CASE Pay.PersonelDecExt.FirstMounth WHEN 03 THEN ISNULL(PersonelDecExt.DayQuntity,0)*@h*60 +
                                               60*ISNULL(PersonelDecExt.DayTime,0)+ISNULL(PersonelDecExt.Minute_,0) ELSE 0 END))/(@h*60),2) AS M03
,ROUND(SUM((CASE Pay.PersonelDecExt.FirstMounth WHEN 04 THEN ISNULL(PersonelDecExt.DayQuntity,0)*@h*60 +
                                               60*ISNULL(PersonelDecExt.DayTime,0)+ISNULL(PersonelDecExt.Minute_,0) ELSE 0 END))/(@h*60),2) AS M04
,ROUND(SUM((CASE Pay.PersonelDecExt.FirstMounth WHEN 05 THEN ISNULL(PersonelDecExt.DayQuntity,0)*@h*60 +
                                               60*ISNULL(PersonelDecExt.DayTime,0)+ISNULL(PersonelDecExt.Minute_,0) ELSE 0 END))/(@h*60),2) AS M05
,ROUND(SUM((CASE Pay.PersonelDecExt.FirstMounth WHEN 06 THEN ISNULL(PersonelDecExt.DayQuntity,0)*@h*60 +
                                               60*ISNULL(PersonelDecExt.DayTime,0)+ISNULL(PersonelDecExt.Minute_,0) ELSE 0 END))/(@h*60),2) AS M06
,ROUND(SUM((CASE Pay.PersonelDecExt.FirstMounth WHEN 07 THEN ISNULL(PersonelDecExt.DayQuntity,0)*@h*60 +
                                               60*ISNULL(PersonelDecExt.DayTime,0)+ISNULL(PersonelDecExt.Minute_,0) ELSE 0 END))/(@h*60),2) AS M07
,ROUND(SUM((CASE Pay.PersonelDecExt.FirstMounth WHEN 08 THEN ISNULL(PersonelDecExt.DayQuntity,0)*@h*60 +
                                               60*ISNULL(PersonelDecExt.DayTime,0)+ISNULL(PersonelDecExt.Minute_,0) ELSE 0 END))/(@h*60),2) AS M08
,ROUND(SUM((CASE Pay.PersonelDecExt.FirstMounth WHEN 09 THEN ISNULL(PersonelDecExt.DayQuntity,0)*@h*60 +
                                               60*ISNULL(PersonelDecExt.DayTime,0)+ISNULL(PersonelDecExt.Minute_,0) ELSE 0 END))/(@h*60),2) AS M09
,ROUND(SUM((CASE Pay.PersonelDecExt.FirstMounth WHEN 10 THEN ISNULL(PersonelDecExt.DayQuntity,0)*@h*60 +
                                               60*ISNULL(PersonelDecExt.DayTime,0)+ISNULL(PersonelDecExt.Minute_,0) ELSE 0 END))/(@h*60),2) AS M010
,ROUND(SUM((CASE Pay.PersonelDecExt.FirstMounth WHEN 11 THEN ISNULL(PersonelDecExt.DayQuntity,0)*@h*60 +
                                               60*ISNULL(PersonelDecExt.DayTime,0)+ISNULL(PersonelDecExt.Minute_,0) ELSE 0 END))/(@h*60),2) AS M011
,ROUND(SUM((CASE Pay.PersonelDecExt.FirstMounth WHEN 12 THEN ISNULL(PersonelDecExt.DayQuntity,0)*@h*60 +
                                               60*ISNULL(PersonelDecExt.DayTime,0)+ISNULL(PersonelDecExt.Minute_,0) ELSE 0 END))/(@h*60),2) AS M012
,ROUND(SUM((CASE  WHEN Pay.PersonelDecExt.FirstMounth  between 1 and 12 THEN ISNULL(PersonelDecExt.DayQuntity,0)*@h*60 +
                                               60*ISNULL(PersonelDecExt.DayTime,0)+ISNULL(PersonelDecExt.Minute_,0) ELSE 0 END))/(@h*60),2) AS M1TO12

,ROUND(((SELECT Pay.FormsInfo.StandardDays*SUM(FunctionDay+ISNULL(SickDay, 0))/Pay.GetTotalDays() AS FunctionDay FROM Pay.Functions  WHERE (PersonelNo = Pay.PersonelInfo.PersonelNo)) 
-SUM((CASE  WHEN Pay.PersonelDecExt.FirstMounth  between 1 and 12 THEN ISNULL(PersonelDecExt.DayQuntity,0)*@h*60 +
                                               60*ISNULL(PersonelDecExt.DayTime,0)+ISNULL(PersonelDecExt.Minute_,0) ELSE 0 END))/(@h*60) ),2)AS RemnantY

,ROUND((((SELECT Pay.FormsInfo.StandardDays*SUM(FunctionDay+ISNULL(SickDay, 0))/Pay.GetTotalDays() AS FunctionDay FROM Pay.Functions  WHERE (PersonelNo = Pay.PersonelInfo.PersonelNo))) 
+(SUM((CASE Pay.PersonelDecExt.FirstMounth WHEN 00 THEN ISNULL(PersonelDecExt.DayQuntity,0)*@h*60 +
                                               60*ISNULL(PersonelDecExt.DayTime,0)+ISNULL(PersonelDecExt.Minute_,0) ELSE 0 END))/(@h*60)) 
-(SUM((CASE  WHEN Pay.PersonelDecExt.FirstMounth  between 1 and 12 THEN ISNULL(PersonelDecExt.DayQuntity,0)*@h*60 +
                                               60*ISNULL(PersonelDecExt.DayTime,0)+ISNULL(PersonelDecExt.Minute_,0) ELSE 0 END))/(@h*60))  ),2)AS Remnant

FROM         Pay.PersonelDecExt INNER JOIN
                       Pay.FormsInfo ON Pay.PersonelDecExt.FormInfoID = Pay.FormsInfo.FormInfoID RIGHT OUTER JOIN
                      Pay.PersonelInfo ON Pay.PersonelDecExt.PersonelNo = Pay.PersonelInfo.PersonelNo
WHERE     (FormsInfo.FormType = 16) AND (FormsInfo.InfoID BETWEEN @KindForm AND @KindTo) AND (PersonelInfo.PersonelNo BETWEEN @PersonelNoForm AND @PersonelNoTo)
GROUP BY Pay.PersonelInfo.PersonelNo,PersonelInfo.name_L1,PersonelInfo.name_L2,PersonelInfo.lastName_L1,PersonelInfo.lastName_L2,
                      Pay.FormsInfo.InfoName_L1,FormsInfo.InfoName_L2,FormsInfo.StandardDays,FormsInfo.StandardTimes
)  
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO
CREATE VIEW Pay.FinalArchiveWithPersonelNO
AS
SELECT    YearID,Mounth,CASE 	WHEN MIN(ArchiveID)=0 THEN MIN(ArchiveID) ELSE MAX(ArchiveID) END AS ArchiveID,PersonelNO
FROM         Pay.FixedCalculated
GROUP BY YearID,Mounth,PersonelNO

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO
CREATE VIEW Pay.Functions_SumProjectsM
AS 
SELECT   ProjectID,YearID, Mounth, SUM(FunctionDay+ISNULL(SickDay, 0)) AS FunctionDay,SUM(FunctionTime) AS FunctionTime,  COUNT(DISTINCT PersonelNo) AS PersonelCount 
FROM         Pay.Functions
GROUP BY ProjectID,Mounth,YearID

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE VIEW Pay.Functions_Sum
AS
SELECT     PersonelNo,Mounth,YearID,SUM(FunctionDay+ISNULL(SickDay, 0)) AS FunctionDay,SUM(FunctionTime) AS FunctionTime
          ,SUM(FunctionDay) AS FunctionDayNoSick ,SUM(ISNULL(SickDay, 0)) AS Functionsick
FROM         Pay.Functions
GROUP BY PersonelNo,Mounth,YearID
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO
GO
CREATE VIEW Pay.States
AS
SELECT 0 AS StateID, 'پيش نويس' AS StateName
UNION
SELECT 1, 'نهائي'
UNION
SELECT 50,'بايگاني'
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE VIEW Pay.Functions_SumProjects
AS 
SELECT   ProjectID,YearID, SUM(FunctionDay+ISNULL(SickDay, 0)) AS FunctionDay,SUM(FunctionTime) AS FunctionTime,  COUNT(DISTINCT PersonelNo) AS PersonelCount 
FROM         Pay.Functions
GROUP BY ProjectID,YearID
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO
CREATE VIEW Pay.Functions_SumProject
AS 
SELECT     PersonelNo,YearID,Mounth,SUM(FunctionDay+ISNULL(SickDay, 0)) AS FunctionDay,SUM(FunctionTime) AS FunctionTime,ProjectID
FROM         Pay.Functions
GROUP BY PersonelNo,YearID,Mounth,ProjectID
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

----------------------------------------------------------------------
----------------------------------------------------------------------
SET QUOTED_IDENTIFIER ON 
GO
--SET ANSI_NULLS OFF 
GO
CREATE VIEW Pay.Functions_SumOffice
AS 
SELECT     PersonelNo,YearID,Mounth,SUM(FunctionDay+ISNULL(SickDay, 0)) AS FunctionDay,SUM(FunctionTime) AS FunctionTime,OfficeCode
FROM         Pay.Functions
GROUP BY PersonelNo,YearID,Mounth,OfficeCode
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
----------------------------------------------------------------------
----------------------------------------------------------------------
----------------------------------------------------------------------
SET QUOTED_IDENTIFIER ON 
GO
--SET ANSI_NULLS OFF 
GO
CREATE VIEW Pay.Interdicts_V
AS 
SELECT		InterdictID, OfficeCode, jobCode, InterdictDate, subcompanyCode, PersonelNo,EmployTypeID,
			SUBSTRING(InterdicStartDate,1,7) AS startmonth, SUBSTRING(InterdicEndDate,1,7)  AS endMonth,
			SUBSTRING(InterdicStartDate,6,2) AS Smonth,     SUBSTRING(InterdicEndDate,6,2)  AS EMonth,
			CAST(SUBSTRING(InterdicStartDate,1, 4)  AS int) AS YearID ,TaxCalculationType
FROM		pay.Interdicts  
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
----------------------------------------------------------------------
----------------------------------------------------------------------
SET QUOTED_IDENTIFIER ON 
GO
--SET ANSI_NULLS OFF 
GO
CREATE VIEW Pay.BounsHours
AS SELECT PersonelNo,round(SUM(FunctionTime),2) as avgHours,count(FunctionTime) as cnt from (
		SELECT        F.PersonelNo, F.Mounth, F.FunctionTime
		--,		ROW_NUMBER() over (Partition by  F.PersonelNo order by F.Mounth desc) as rowno
		FROM            Pay.Functions AS F 
		WHERE ISNULL(F.FunctionTime,0) <> 0 --and F.Mounth <4
)aaa
GROUP BY  PersonelNo
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
----------------------------------------------------------------------


/*----------------------------- پارامتر ها بترتيب  شامل  1- تركيب سال و ماه 2- نوع عوامل حقوق و مزايا  (  در معرفي انواع فرمها  = همان نوع عوامل حقوق و مزايا ميباشد . (‏ - ----------------------
*/
CREATE VIEW Pay.AccFormInfo
AS
SELECT     Pay.FormsInfo.FormInfoID,0 AS ProjectID,0 AS PersonNO,0 AS OfficeCode,FormTypes.TopicCodeKind,FormTypes.DetailCodeKind,
                     Pay.FormTypes.CTopicCodeKind,FormTypes.CTopicCode2Kind,FormsInfo.AccTopicCode AS FormsInfoAccTopicCode,
                      Pay.FormsInfo.AccDetailCode AS FormsInfoAccDetailCode,FormsInfo.AccCTopicCode AS FormsInfoAccCTopicCode,
                      Pay.FormsInfo.AccCTopicCode2 AS FormsInfoAccCTopicCode2,0 AS ProjectAccTopicCode,0 AS ProjectAccDetailCode,0 AS ProjectAccCTopicCode,
                      0 AS ProjectAccCTopicCode2
FROM         Pay.FormTypes INNER JOIN
                       Pay.FormsInfo ON Pay.FormTypes.FormType = Pay.FormsInfo.FormType
WHERE     (FormsInfo.FormInfoID = 3)




GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO




CREATE VIEW Pay.AccInterdict
AS
SELECT     0 AS FormInfoID,0 AS ProjectID,Pay.Interdicts.PersonelNo,Pay.Interdicts.OfficeCode,0 AS TopicCodeKind,0 AS DetailCodeKind,0 AS CTopicCodeKind,
                       0 AS CTopicCode2Kind,0 AS FormsInfoAccTopicCode,0 AS FormsInfoAccDetailCode,0 AS FormsInfoAccCTopicCode,0 AS FormsInfoAccCTopicCode2,
                      Pay.Interdicts.AccTopicCode AS InterdictAccTopicCode,Pay.Interdicts.AccDetailCode AS InterdictAccDetailCode,
                      Pay.Interdicts.AccCTopicCode AS InterdictAccCTopicCode,Pay.Interdicts.AccCTopicCode2 AS InterdictAccCTopicCode2,
                      FormsInfo_1.AccTopicCode AS OfficeAccTopicCode,FormsInfo_1.AccDetailCode AS OfficeAccDetailCode,
                      FormsInfo_1.AccCTopicCode AS OfficeAccCTopicCode,FormsInfo_1.AccCTopicCode2 AS OfficeAccCTopicCode2
FROM         Pay.Interdicts INNER JOIN
                      Pay.FormsInfo  FormsInfo ON Pay.Interdicts.InterdicType = FormsInfo.FormInfoID INNER JOIN
                      Pay.FormTypes ON FormsInfo.FormType =Pay.FormTypes.FormType INNER JOIN
                      Pay.FormsInfo FormsInfo_1 ON Pay.Interdicts.OfficeCode = FormsInfo_1.FormInfoID
GROUP BY Pay.Interdicts.PersonelNo,Pay.Interdicts.OfficeCode,Pay.Interdicts.AccTopicCode,Pay.Interdicts.AccDetailCode,Pay.Interdicts.AccCTopicCode,
                      Pay.Interdicts.AccCTopicCode2,FormsInfo_1.AccTopicCode,FormsInfo_1.AccDetailCode,FormsInfo_1.AccCTopicCode,
                      FormsInfo_1.AccCTopicCode2
HAVING      (Pay.Interdicts.PersonelNo = 1)




GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE VIEW Pay.AccProject
AS
SELECT     0 AS FormInfoID,FormInfoID AS ProjectID,0 AS PersonNO,0 AS OfficeCode,0 AS TopicCodeKind,0 AS DetailCodeKind,0 AS CTopicCodeKind,
                      0 AS CTopicCode2Kind,0 AS FormsInfoAccTopicCode,0 AS FormsInfoAccDetailCode,0 AS FormsInfoAccCTopicCode,0 AS FormsInfoAccCTopicCode2,
                      AccTopicCode AS ProjectAccTopicCode,AccDetailCode AS ProjectAccDetailCode,AccCTopicCode AS ProjectAccCTopicCode,
                      AccCTopicCode2 AS ProjectAccCTopicCode2
FROM         Pay.FormsInfo
WHERE     (FormInfoID = 154)




GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE VIEW Pay.Annuity
AS
SELECT     Pay.FormsInfo.FormInfoID,FormsInfo.InfoID,FormsInfo.InfoName_L1,Pay.SalaryRange.SalaryID
FROM         Pay.FormsInfo INNER JOIN
                      Pay.SalaryRange ON Pay.FormsInfo.FormInfoID = Pay.SalaryRange.FormInfoID
WHERE     (FormsInfo.FormType = 47)

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO



CREATE VIEW Pay.EmployeeInfo
AS
SELECT     Pay.PersonelInfo.PersonelNo,FormsInfo_4.InfoID AS PersonStateNo,FormsInfo_4.InfoName_L1 AS personelstate_L1,
                      FormsInfo_4.InfoName_L2 AS personelstate_L2,PersonelInfo.lastName_L1 + ' ' + Pay.PersonelInfo.name_L1 AS PersonelName_L1,
                      Pay.PersonelInfo.lastName_L2 + ' ' + Pay.PersonelInfo.name_L2 AS PersonelName_L2,PersonelInfo.fatherName_L1,
                      Pay.PersonelInfo.fatherName_L2,FormsInfo_Nationality.InfoID AS NationalityID,FormsInfo_Nationality.InfoName_L1 AS Nationality_L1,FormsInfo_Nationality.InfoName_L2 AS Nationality_L2,
                      Pay.PersonelInfo.BirthDate,PersonelInfo.SodurDate,FormsInfo_6.InfoName_L1 AS BirthPlace_L1,FormsInfo_6.InfoName_L2 AS BirthPlace_L2,
                      FormsInfo_7.InfoName_L1 AS SodurPlace_L1,FormsInfo_7.InfoName_L2 AS SodurPlace_L2,PersonelInfo.NationalID,PersonelInfo.IDNumber,
                      Pay.FormsInfo.InfoName_L1 AS Sex_L1,FormsInfo.InfoName_L2 AS Sex_L2,FormsInfo_1.InfoName_L1 AS marriage_L1,
                      FormsInfo_1.InfoName_L2 AS marriage_L2,FormsInfo_3.InfoName_L1 AS childnumber_L1,FormsInfo_3.InfoName_L2 AS childnumber_L2,
                      Pay.PersonelInfo.SupPepNumber,PersonelInfo.LicenceCode,FormsInfo_2.InfoName_L1 AS licence_L1,FormsInfo_2.InfoName_L2 AS licence_L2,
                      FormsInfo_9.InfoName_L1 AS studyField_L1,FormsInfo_9.InfoName_L2 AS studyField_L2,FormsInfo_10.InfoName_L1 AS StudyCity_L1,
                      FormsInfo_10.InfoName_L2 AS StudyCity_L2,FormsInfo_8.InfoName_L1 AS UnivercityName_L1,FormsInfo_8.InfoName_L2 AS UnivercityName_L2,
                      Pay.PersonelInfo.StudyFinishedate,PersonelInfo.StudyAverage,PersonelInfo.employDate,PersonelInfo.finishEmployDate,
                      FormsInfo_11.InfoName_L1 AS BankName_L1,FormsInfo_11.InfoName_L2 AS BankName_L2,FormsInfo_Tax.InfoName_L1 AS TaxCalculationName_L1,
                      FormsInfo_Tax.InfoName_L2 AS TaxCalculationName_L2,FormsInfo_13.InfoName_L1 AS TaxZoneName_L1,
                      FormsInfo_13.InfoName_L2 AS TaxZoneName_L2,PersonelInfo.BranchCode,PersonelInfo.AccountNumber,PersonelInfo.AccBankType,
                      Pay.PersonelInfo.insuranceID,Pay.InsuranceCONSTinfo.insurancename,PersonelInfo.InsuranceNumber,PersonelInfo.TaxZone,
                      Pay.PersonelInfo.TaxCalculationType,PersonelInfo.CoTax,PersonelInfo.address_L1,PersonelInfo.address_L2,
                      Pay.PersonelInfo.Note_L1,PersonelInfo.Note_L2,PersonelInfo.Tel,PersonelInfo.BankCode,PersonelInfo.name_L1,
                      Pay.PersonelInfo.name_L2,PersonelInfo.lastName_L1,PersonelInfo.lastName_L2,PersonelInfo.StoreDayTime,
                      Pay.PersonelInfo.employDatem,PersonelInfo.StoreDayTimeActive,PersonelInfo.EmployID,FormsInfo_14.InfoName_L1 AS AccName_L1,
                      FormsInfo_14.InfoName_L2 AS AccName_L2,PersonelInfo.AccTopicCode,PersonelInfo.AccDetailCode,PersonelInfo.AccCTopicCode,
                      Pay.PersonelInfo.AccCTopicCode2,PersonelInfo.AccCTopicCode3,PersonelInfo.PercentWound,FormsInfo_SoldierState.InfoID AS SoldierState,
                      FormsInfo_SoldierState.InfoName_L1 AS SoldierState_L1,FormsInfo_SoldierState.InfoName_L2 AS SoldierState_L2,PersonelInfo.PostalCode,
                      Pay.PersonelInfo.DSW_JOB,FormsInfo_SpecialState.InfoName_L1 AS SpecialStateName,FormsInfo_2.InfoID AS LicenceID
                      ,PersonelInfo.EmployTypeID,PersonelInfo.Mobile,
					  FormsInfo_BirthProvince.InfoName_L1 AS BirthProvince_L1,FormsInfo_IssuedProvince.InfoName_L1 AS IssuedProvince_L1
					  , FormsInfo_BranchInfo.InfoName_L1 AS BranchInfo,PersonelInfo.MartyrChild,PersonelInfo.TelegramChatID
FROM         Pay.PersonelInfo INNER JOIN
                      Pay.FormsInfo ON Pay.PersonelInfo.sex = Pay.FormsInfo.FormInfoID LEFT OUTER JOIN
                      Pay.FormsInfo FormsInfo_1 ON Pay.PersonelInfo.marriage = FormsInfo_1.FormInfoID LEFT OUTER JOIN
                      Pay.FormsInfo FormsInfo_2 ON Pay.PersonelInfo.LicenceCode = FormsInfo_2.FormInfoID LEFT OUTER JOIN
                      Pay.FormsInfo FormsInfo_3 ON Pay.PersonelInfo.childNumber = FormsInfo_3.FormInfoID LEFT OUTER JOIN
                      Pay.FormsInfo FormsInfo_4 ON Pay.PersonelInfo.PersonelState = FormsInfo_4.FormInfoID LEFT OUTER JOIN
                      Pay.FormsInfo FormsInfo_Nationality ON Pay.PersonelInfo.NationalityCode = FormsInfo_Nationality.FormInfoID LEFT OUTER JOIN
                      Pay.FormsInfo FormsInfo_6 ON Pay.PersonelInfo.BirthPlace = FormsInfo_6.FormInfoID LEFT OUTER JOIN
                      Pay.FormsInfo FormsInfo_7 ON Pay.PersonelInfo.SodurPlace = FormsInfo_7.FormInfoID LEFT OUTER JOIN
                      Pay.FormsInfo FormsInfo_8 ON Pay.PersonelInfo.UnivercityCode = FormsInfo_8.FormInfoID LEFT OUTER JOIN
                      Pay.FormsInfo FormsInfo_9 ON Pay.PersonelInfo.studyField = FormsInfo_9.FormInfoID LEFT OUTER JOIN
                      Pay.FormsInfo FormsInfo_10 ON Pay.PersonelInfo.StudyCityCode = FormsInfo_10.FormInfoID LEFT OUTER JOIN
                      Pay.FormsInfo FormsInfo_11 ON Pay.PersonelInfo.BankCode = FormsInfo_11.FormInfoID LEFT OUTER JOIN
                      Pay.InsuranceCONSTinfo ON Pay.PersonelInfo.insuranceID = InsuranceCONSTinfo.insuranceNo LEFT OUTER JOIN
                      Pay.FormsInfo FormsInfo_14 ON Pay.PersonelInfo.AccBankType = FormsInfo_14.FormInfoID LEFT OUTER JOIN
                      Pay.FormsInfo FormsInfo_Tax ON Pay.PersonelInfo.TaxCalculationType = FormsInfo_Tax.FormInfoID LEFT OUTER JOIN
                      Pay.FormsInfo FormsInfo_13 ON Pay.PersonelInfo.TaxZone = FormsInfo_13.FormInfoID LEFT OUTER JOIN
                      Pay.FormsInfo FormsInfo_SoldierState ON Pay.PersonelInfo.SoldierState = FormsInfo_SoldierState.FormInfoID LEFT OUTER JOIN
                      Pay.FormsInfo FormsInfo_SpecialState ON Pay.PersonelInfo.SpecialState = FormsInfo_SpecialState.FormInfoID LEFT OUTER JOIN
                      Pay.FormsInfo FormsInfo_BirthProvince ON Pay.PersonelInfo.BirthPlace = FormsInfo_BirthProvince.FormInfoID  LEFT OUTER JOIN
                      Pay.FormsInfo FormsInfo_IssuedProvince ON Pay.PersonelInfo.BirthPlace = FormsInfo_IssuedProvince.FormInfoID  LEFT OUTER JOIN
                           Pay.FormsInfo AS FormsInfo_BranchInfo ON Pay.PersonelInfo.BranchInfo = FormsInfo_BranchInfo.FormInfoID


GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO
CREATE VIEW Pay.EmployeeStoreDayTime
AS
SELECT     Pay.Interdicts.InterdictID,Pay.Interdicts.PersonelNo,PersonelInfo.name_L1 + ' ' + Pay.PersonelInfo.lastName_L1 AS Name,
                      Pay.Interdicts.InterdictNo,Pay.Interdicts.InterdictDate,Pay.Interdicts.TotalYearsWork,PersonelInfo.StoreDayTime,PersonelInfo.employDate,
                      Pay.PersonelInfo.StoreDayTime + DATEDIFF(day,PersonelInfo.employDateM,GETDATE()) / 365 AS no_of_year
,Pay.Interdicts.InterdicStartDate,Pay.Interdicts.InterdicEndDate

FROM         Pay.Interdicts INNER JOIN
                      Pay.PersonelInfo ON Pay.Interdicts.PersonelNo = Pay.PersonelInfo.PersonelNo
WHERE     (Pay.Interdicts.State < 50) AND (PersonelInfo.StoreDayTime + DATEDIFF(day,PersonelInfo.employDateM,GETDATE()) 
                      / 365 - Pay.Interdicts.TotalYearsWork >= 1) AND (PersonelInfo.StoreDayTimeActive = 1)

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO
CREATE VIEW Pay.Filter4InterdictsWage
AS
SELECT PersonelNo,LTRIM(STR(ISNULL(UnivercityCode,0))) + ',' + LTRIM(STR(ISNULL(StudyCityCode,0))) + ',' + LTRIM(STR(ISNULL(studyField,0))) + ',' 
                + LTRIM(STR(ISNULL(LicenceCode,0))) + ',' +    LTRIM(STR(ISNULL(childNumber,0))) + ',' +   LTRIM(STR(ISNULL(marriage,0))) + ',' 
				+ LTRIM(STR(ISNULL(sex,0))) + ',' +            LTRIM(STR(ISNULL(SodurPlace,0))) + ',' +    LTRIM(STR(ISNULL(BirthPlace,0)))+ ',' 
				+ LTRIM(STR(ISNULL(NationalityCode,0))) AS StrFilter
FROM         Pay.PersonelInfo
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO
CREATE VIEW Pay.FinalArchive
AS
SELECT    YearID, Mounth,MAX(ArchiveID) AS ArchiveID
FROM         Pay.FixedCalculated
GROUP BY YearID,Mounth
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO
CREATE VIEW Pay.FunctionsAll
AS
SELECT  TOP 100 PERCENT Pay.Functions.FunctionID,Pay.Functions.FormInfoID,Pay.Functions.YearID,Pay.Functions.Mounth,Pay.Functions.PersonelNo,
                      MAX(Pay.Functions.FunctionDay+ISNULL(Functions.SickDay, 0)) AS FunctionDay,MAX(Pay.Functions.FunctionTime) AS FunctionTime,Pay.Functions.ProjectID,
                      Pay.Functions.JobCode,ISNULL(Pay.FunctionsItems.SalaryID,0) AS SalaryID,SUM(ISNULL(Pay.FunctionsItems.FDaily,0)) AS FDaily,
                      SUM(ISNULL(Pay.FunctionsItems.FHours,0)) AS FHours,Pay.Functions.OfficeCode
FROM         Pay.Functions LEFT OUTER JOIN
                      Pay.FunctionsItems ON Pay.Functions.FunctionID = Pay.FunctionsItems.FunctionID
GROUP BY Pay.Functions.PersonelNo,Pay.Functions.FunctionID,Pay.Functions.YearID,Pay.Functions.Mounth,Pay.Functions.FormInfoID,Pay.Functions.ProjectID,
                      Pay.Functions.JobCode,ISNULL(Pay.FunctionsItems.SalaryID,0),Pay.Functions.OfficeCode
ORDER BY Pay.Functions.FunctionID
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO
CREATE VIEW Pay.InterdictGrade
AS
SELECT     TOP 100 PERCENT MAX(InterdictID) AS InterdictID,PersonelNo,MAX(grade) AS grade
FROM         Pay.Interdicts
GROUP BY PersonelNo
ORDER BY MAX(InterdictID),PersonelNo
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO
CREATE VIEW Pay.Interdicts4Form
AS
SELECT     TOP 100 PERCENT *
FROM         Pay.Interdicts
WHERE     (subcompanyCode = 1) AND (PersonelNo BETWEEN 0 AND 9999) AND (OfficeCode BETWEEN '0' AND '9999') AND (EmployTypeID BETWEEN '0' AND 
                      '9999') AND (InterdictNo BETWEEN '0' AND '9999') AND (InterdictDate BETWEEN '0000/00/00' AND '9999/99/99')
ORDER BY InterdictID
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
GO
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO
CREATE VIEW Pay.InterdictsListAll
AS
SELECT     Pay.Interdicts.InterdictID, CAST(Interdicts.InterdictNo AS float) AS InterdictNo, Pay.Interdicts.InterdictDate, Pay.Interdicts.subcompanyCode, 
                      FormsInfo_2.InfoName_L1 AS JobName_L1, FormsInfo_2.InfoName_L2 AS JobName_L2, FormsInfo_3.InfoName_L1 AS grade_L1, 
                      FormsInfo_3.InfoName_L2 AS grade_L2, FormsInfo_4.InfoName_L1 AS jobCity_L1, FormsInfo_4.InfoName_L2 AS jobCity_L2, 
                      FormsInfo_5.InfoName_L1 AS InterdicType_L1, FormsInfo_5.InfoName_L2 AS InterdicType_L2, Pay.Interdicts.InterdicStartDate, Pay.Interdicts.employDaytime, 
                      Pay.Interdicts.AccTopicCode, Pay.Interdicts.AccDetailCode, Pay.Interdicts.AccCTopicCode, Pay.Interdicts.AccCTopicCode2, Pay.Interdicts.KarGOzinyNote_L1, 
                      Pay.Interdicts.KarGOzinyNote_L2, Pay.Interdicts.State, Pay.Interdicts.UserID, FormsInfo_5.InfoID AS InterdicTypeID, FormsInfo_1.InfoID AS OfficeID, 
                      Pay.Interdicts.PersonelNo, FormsInfo_1.InfoName_L1 AS OfficeName_L1, FormsInfo_1.InfoName_L2 AS OfficeName_L2, Pay.Interdicts.InterdicEndDate, 
                      Pay.Interdicts.InterdicType, FormsInfo_4.InfoID AS jobCity, ABS(LEFT(Interdicts.InterdicEndDate, 4)) AS year, Pay.Interdicts.StandardEmployAmount, 
                      FormsInfo_2.InfoID AS jobCode, FormsInfo_3.InfoID AS gradeID, FormsInfo_GroupID.InfoID AS GroupCode, 
                      FormsInfo_GroupID.InfoName_L1 AS GroupName, FormsInfo_ProjectID.InfoID AS ProjectID, FormsInfo_ProjectID.InfoName_L1 AS ProjectName,
                      FormsInfo_SubInterdict.InfoName_L1 AS SubInterdictName, FormsInfo_GrpExpense.InfoName_L1 AS GrpExpenseName, Pay.Interdicts.LastUser, Pay.Interdicts.FirstUser ,
					  FormsInfo_TaxCalculationType.InfoName_L1 AS TaxCalculationName,FormsInfo_PayehNo.InfoName_L1 AS PayehName,
					  Pay.Interdicts.AidNo1,Interdicts.AidDate1,Interdicts.OfficeCode, FormsInfo_PayehNo.InfoID AS PayehCode
					  , Pay.Interdicts.InsuranceStartDate  , Pay.Interdicts.InsuranceEndDate
FROM         Pay.Interdicts INNER JOIN
                       Pay.FormsInfo AS FormsInfo_1 ON Pay.Interdicts.OfficeCode = FormsInfo_1.FormInfoID INNER JOIN
                       Pay.FormsInfo AS FormsInfo_2 ON Pay.Interdicts.jobCode = FormsInfo_2.FormInfoID INNER JOIN
                       Pay.FormsInfo AS FormsInfo_3 ON Pay.Interdicts.grade = FormsInfo_3.FormInfoID INNER JOIN
                       Pay.FormsInfo AS FormsInfo_4 ON Pay.Interdicts.jobCity = FormsInfo_4.FormInfoID INNER JOIN
                       Pay.FormsInfo AS FormsInfo_5 ON Pay.Interdicts.EmployTypeID = FormsInfo_5.FormInfoID INNER JOIN
                       Pay.FormsInfo AS FormsInfo_GroupID ON Pay.Interdicts.GroupID = FormsInfo_GroupID.FormInfoID LEFT OUTER JOIN
                       Pay.FormsInfo AS FormsInfo_ProjectID ON Pay.Interdicts.ProjectID = FormsInfo_ProjectID.FormInfoID
                      LEFT OUTER JOIN
                       Pay.FormsInfo AS FormsInfo_SubInterdict ON Pay.Interdicts.SubInterdictID = FormsInfo_SubInterdict.FormInfoID
                      LEFT OUTER JOIN
                       Pay.FormsInfo AS FormsInfo_GrpExpense ON Pay.Interdicts.GrpExpense = FormsInfo_GrpExpense.FormInfoID LEFT OUTER JOIN
                       Pay.FormsInfo AS FormsInfo_TaxCalculationType ON Pay.Interdicts.ProjectID = FormsInfo_TaxCalculationType.FormInfoID LEFT OUTER JOIN
                       Pay.FormsInfo AS FormsInfo_PayehNo ON Pay.Interdicts.PayehNo = FormsInfo_PayehNo.FormInfoID 


GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO


SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO
CREATE VIEW Pay.InterdictsList
AS
SELECT     Pay.Interdicts.InterdictID, CAST(Interdicts.InterdictNo AS float) AS InterdictNo, Pay.Interdicts.InterdictDate, Pay.Interdicts.subcompanyCode, 
                      FormsInfo_2.InfoName_L1 AS JobName_L1, FormsInfo_2.InfoName_L2 AS JobName_L2, FormsInfo_3.InfoName_L1 AS grade_L1, 
                      FormsInfo_3.InfoName_L2 AS grade_L2, FormsInfo_4.InfoName_L1 AS jobCity_L1, FormsInfo_4.InfoName_L2 AS jobCity_L2, 
                      FormsInfo_5.InfoName_L1 AS InterdicType_L1, FormsInfo_5.InfoName_L2 AS InterdicType_L2, Pay.Interdicts.InterdicStartDate, Pay.Interdicts.employDaytime, 
                      Pay.Interdicts.AccTopicCode, Pay.Interdicts.AccDetailCode, Pay.Interdicts.AccCTopicCode, Pay.Interdicts.AccCTopicCode2, Pay.Interdicts.KarGOzinyNote_L1, 
                      Pay.Interdicts.KarGOzinyNote_L2, Pay.Interdicts.State, Pay.Interdicts.UserID, FormsInfo_5.InfoID AS InterdicTypeID, FormsInfo_1.InfoID AS OfficeID, 
                      Pay.Interdicts.PersonelNo, FormsInfo_1.InfoName_L1 AS OfficeName_L1, FormsInfo_1.InfoName_L2 AS OfficeName_L2, Pay.Interdicts.InterdicEndDate, 
                      Pay.Interdicts.InterdicType, FormsInfo_4.InfoID AS jobCity, ABS(LEFT(Interdicts.InterdicEndDate, 4)) AS year, Pay.Interdicts.StandardEmployAmount, 
                      FormsInfo_2.InfoID AS jobCode, FormsInfo_3.InfoID AS gradeID, FormsInfo_GroupID.InfoID AS GroupCode, 
                      FormsInfo_GroupID.InfoName_L1 AS GroupName, FormsInfo_ProjectID.InfoID AS ProjectID, FormsInfo_ProjectID.InfoName_L1 AS ProjectName,
                      FormsInfo_SubInterdict.InfoName_L1 AS SubInterdictName, FormsInfo_GrpExpense.InfoName_L1 AS GrpExpenseName, Pay.Interdicts.LastUser, Pay.Interdicts.FirstUser ,
					  FormsInfo_TaxCalculationType.InfoName_L1 AS TaxCalculationName,FormsInfo_PayehNo.InfoName_L1 AS PayehName,
					  Interdicts.AidNo1,Interdicts.AidDate1,Interdicts.OfficeCode, FormsInfo_PayehNo.InfoID AS PayehCode
					  , Pay.Interdicts.InsuranceStartDate  , Pay.Interdicts.InsuranceEndDate
FROM         Pay.Interdicts INNER JOIN
                       Pay.FormsInfo AS FormsInfo_1 ON Pay.Interdicts.OfficeCode = FormsInfo_1.FormInfoID INNER JOIN
                       Pay.FormsInfo AS FormsInfo_2 ON Pay.Interdicts.jobCode = FormsInfo_2.FormInfoID INNER JOIN
                       Pay.FormsInfo AS FormsInfo_3 ON Pay.Interdicts.grade = FormsInfo_3.FormInfoID INNER JOIN
                       Pay.FormsInfo AS FormsInfo_4 ON Pay.Interdicts.jobCity = FormsInfo_4.FormInfoID INNER JOIN
                       Pay.FormsInfo AS FormsInfo_5 ON Pay.Interdicts.EmployTypeID = FormsInfo_5.FormInfoID INNER JOIN
                       Pay.FormsInfo AS FormsInfo_GroupID ON Pay.Interdicts.GroupID = FormsInfo_GroupID.FormInfoID LEFT OUTER JOIN
                       Pay.FormsInfo AS FormsInfo_ProjectID ON Pay.Interdicts.ProjectID = FormsInfo_ProjectID.FormInfoID
                      LEFT OUTER JOIN
                       Pay.FormsInfo AS FormsInfo_SubInterdict ON Pay.Interdicts.SubInterdictID = FormsInfo_SubInterdict.FormInfoID
                      LEFT OUTER JOIN
                       Pay.FormsInfo AS FormsInfo_GrpExpense ON Pay.Interdicts.GrpExpense = FormsInfo_GrpExpense.FormInfoID LEFT OUTER JOIN
                       Pay.FormsInfo AS FormsInfo_TaxCalculationType ON Pay.Interdicts.ProjectID = FormsInfo_TaxCalculationType.FormInfoID LEFT OUTER JOIN
                       Pay.FormsInfo AS FormsInfo_PayehNo ON Pay.Interdicts.PayehNo = FormsInfo_PayehNo.FormInfoID 

WHERE     (Pay.Interdicts.State < 50)
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO
CREATE VIEW Pay.InterdictsList2
AS
SELECT     Pay.Interdicts.InterdictID,Pay.Interdicts.InterdictNo,Pay.Interdicts.InterdictDate,Pay.Interdicts.subcompanyCode,
                      FormsInfo_2.InfoName_L1 AS JobName_L1,FormsInfo_2.InfoName_L2 AS JobName_L2,FormsInfo_3.InfoName_L1 AS grade_L1,
                      FormsInfo_3.InfoName_L2 AS grade_L2,FormsInfo_4.InfoName_L1 AS jobCity_L1,FormsInfo_4.InfoName_L2 AS jobCity_L2,
                      FormsInfo_5.InfoName_L1 AS InterdicType_L1,FormsInfo_5.InfoName_L2 AS InterdicType_L2,Pay.Interdicts.InterdicStartDate,
                      Pay.Interdicts.employDaytime,Pay.Interdicts.AccTopicCode,Pay.Interdicts.AccDetailCode,Pay.Interdicts.AccCTopicCode,
                      Pay.Interdicts.AccCTopicCode2,Pay.Interdicts.KarGOzinyNote_L1,Pay.Interdicts.KarGOzinyNote_L2,Pay.Interdicts.State,Pay.Interdicts.UserID,
                      FormsInfo_5.InfoID AS InterdicTypeID,FormsInfo_1.InfoID AS OfficeID,Pay.Interdicts.PersonelNo,FormsInfo_1.InfoName_L1 AS OfficeName_L1,
                      FormsInfo_1.InfoName_L2 AS OfficeName_L2,Pay.Interdicts.InterdicEndDate
					   , Pay.Interdicts.InsuranceStartDate  , Pay.Interdicts.InsuranceEndDate
FROM         Pay.Interdicts INNER JOIN
                      Pay.FormsInfo FormsInfo_1 ON Pay.Interdicts.OfficeCode = FormsInfo_1.FormInfoID INNER JOIN
                      Pay.FormsInfo FormsInfo_2 ON Pay.Interdicts.jobCode = FormsInfo_2.FormInfoID INNER JOIN
                      Pay.FormsInfo FormsInfo_3 ON Pay.Interdicts.grade = FormsInfo_3.FormInfoID INNER JOIN
                      Pay.FormsInfo FormsInfo_4 ON Pay.Interdicts.jobCity = FormsInfo_4.FormInfoID INNER JOIN
                      Pay.FormsInfo FormsInfo_5 ON Pay.Interdicts.InterdicType = FormsInfo_5.FormInfoID
WHERE     (Pay.Interdicts.State < 50)
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO
CREATE VIEW Pay.OfficeCOUNTPersonel
AS
--SELECT     OfficeCode,COUNT(PersonelNo) AS PersonelCOUNT
--FROM         (SELECT     Pay.PersonelInfo.PersonelNo AS PersonelNo,Pay.FixedCalculated.OfficeCode
--                        FROM         Pay.PersonelInfo INNER JOIN
--                                              Pay.FixedCalculated ON Pay.PersonelInfo.PersonelNo = Pay.FixedCalculated.PersonelNO
--                        GROUP BY Pay.FixedCalculated.OfficeCode,PersonelInfo.PersonelNo) DERIVEDTBL
--GROUP BY OfficeCode
SELECT     OfficeCode,Mounth,COUNT(PersonelNo) AS PersonelCOUNT
FROM         (SELECT  distinct   Pay.PersonelInfo.PersonelNo AS PersonelNo,Pay.Functions.OfficeCode,Mounth
                        FROM         Pay.PersonelInfo INNER JOIN
                                              Pay.Functions ON Pay.PersonelInfo.PersonelNo = Pay.Functions.PersonelNO
                        GROUP BY Pay.Functions.OfficeCode,PersonelInfo.PersonelNo,Mounth) DERIVEDTBL
GROUP BY OfficeCode,Mounth

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO
CREATE VIEW Pay.PersonelCountOffice
AS
SELECT     COUNT(PersonelNo) AS PersonelCOUNT,OfficeCode
FROM         (SELECT     Pay.PersonelInfo.PersonelNo AS PersonelNo,Pay.FixedCalculated.OfficeCode
                        FROM         Pay.PersonelInfo INNER JOIN
                                              Pay.FixedCalculated ON Pay.PersonelInfo.PersonelNo = Pay.FixedCalculated.PersonelNO
                        GROUP BY Pay.FixedCalculated.OfficeCode,PersonelInfo.PersonelNo) DERIVEDTBL
GROUP BY OfficeCode


GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO
CREATE VIEW Pay.PersonelDecExtInfo
AS
SELECT     Pay.PersonelDecExt.PersonelNo,E.PersonelName_L1,E.PersonelName_L2,PersonelDecExt.EmployeeAmount,
                      Pay.PersonelDecExt.FormInfoID
FROM         Pay.PersonelDecExt LEFT OUTER JOIN
                      Pay.EmployeeInfo E ON Pay.PersonelDecExt.PersonelNo = E.PersonelNo
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO
CREATE VIEW Pay.ProjectForUse
AS
SELECT   InfoID,  ProjectID,InfoName_L1,InfoName_L2
FROM         (SELECT  Pay.FormsInfo.InfoID,   Pay.Functions.ProjectID,FormsInfo.InfoName_L1,FormsInfo.InfoName_L2
                        FROM         Pay.Functions INNER JOIN
                                              Pay.FormsInfo ON Pay.Functions.ProjectID = Pay.FormsInfo.FormInfoID
                        GROUP BY Pay.FormsInfo.InfoID,Pay.Functions.ProjectID,FormsInfo.InfoName_L1,FormsInfo.InfoName_L2) QSearch
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO
CREATE VIEW Pay.SalaryListGroup AS SELECT  Pay.FormsInfo.InfoID,Pay.FixedCalculated.Mounth,
Pay.FixedCalculated.ArchiveID,(SELECT OfficeCOUNTPersonel.PersonelCOUNT 
FROM OfficeCOUNTPersonel WHERE OfficeCOUNTPersonel.OfficeCode=Pay.FixedCalculated.OfficeCode)AS PersonelCOUNT,
FormsInfo.InfoName_L1 AS OfficeName,SUM(CASE salaryid WHEN 359 THEN price ELSE 0 END)as Wage1,
SUM(CASE salaryid WHEN 600 THEN price ELSE 0 END)as Wage2,SUM(CASE salaryid WHEN 601 THEN price ELSE 0 END)as Wage3
,SUM(CASE salaryid WHEN 602 THEN price ELSE 0 END)as Wage4,SUM(CASE salaryid WHEN 603 THEN price ELSE 0 END)as Wage5,
SUM(CASE salaryid WHEN 604 THEN price ELSE 0 END)as Wage6,
SUM(CASE salaryid WHEN 606 THEN price ELSE 0 END)as Wage7,
SUM(CASE salaryid WHEN 608 THEN price ELSE 0 END)as Wage8,
SUM(CASE salaryid WHEN 626 THEN price ELSE 0 END)as Wage9,
SUM(CASE salaryid WHEN 627 THEN price ELSE 0 END)as Wage10,
SUM(CASE salaryid WHEN 629 THEN price ELSE 0 END)as Wage11,
SUM(CASE salaryid WHEN 632 THEN price ELSE 0 END)as Wage12,
SUM(CASE salaryid WHEN 634 THEN price ELSE 0 END)as Wage13,
SUM(CASE WHEN salaryid >635 THEN CASE ShowlistKind WHEN 1 THEN price ELSE 0 END ELSE 0 END) AS Wage14,
SUM(CASE ShowlistKind WHEN 1 THEN price ELSE 0 END) AS SumWage,
SUM( CASE WHEN ( ShowlistKind=4 and bedbes=1 )  THEN price ELSE 0 END ) AS sum23Dec,
SUM(CASE ShowlistKind WHEN 3  THEN price ELSE 0 END) AS ContainInsourance,
SUM(CASE WHEN(ShowlistKind=11 and bedbes=0 AND CalCulateKind = 12 ) THEN price ELSE 0 END) AS ContainTax,
SUM(CASE WHEN(ShowlistKind=11 and bedbes=2) THEN price ELSE 0 END) AS TaxValue,SUM(CASE  WHEN salaryid=44  and  ShowlistKind =2 THEN price ELSE 0 END)as dec1,
SUM(CASE  WHEN salaryid=46  and  ShowlistKind =2 THEN price ELSE 0 END)as dec2,
SUM(CASE  WHEN salaryid=114  and  ShowlistKind =2 THEN price ELSE 0 END)as dec3,
SUM(CASE  WHEN salaryid=714  and  ShowlistKind =2 THEN price ELSE 0 END)as dec4,
SUM(CASE  WHEN salaryid=715  and  ShowlistKind =2 THEN price ELSE 0 END)as dec5,
SUM(CASE  WHEN salaryid=716  and  ShowlistKind =2 THEN price ELSE 0 END)as dec6,
SUM(CASE  WHEN salaryid=717  and  ShowlistKind =2 THEN price ELSE 0 END)as dec7,
SUM(CASE  WHEN salaryid=718  and  ShowlistKind =2 THEN price ELSE 0 END)as dec8,
SUM(CASE  WHEN salaryid=719  and  ShowlistKind =2 THEN price ELSE 0 END)as dec9,
SUM(CASE  WHEN salaryid >720 THEN CASE ShowlistKind WHEN 2 THEN price ELSE 0 END	 ELSE 0 END) AS Dec10,
SUM(CASE ShowlistKind WHEN 2  THEN price ELSE 0 END) + 
SUM(CASE  WHEN ShowlistKind=11 and bedbes = 2 THEN price ELSE 0 END) AS SumDec,
SUM(CASE ShowlistKind WHEN 1 THEN price ELSE 0 END)-(SUM(CASE ShowlistKind WHEN 2  THEN price ELSE 0 END ) +
SUM( CASE  WHEN ShowlistKind=11 and bedbes = 2 THEN price ELSE 0 END )) AS PayableSalary 
FROM Pay.FixedCalculated LEFT OUTER JOIN  Pay.PersonelInfo ON Pay.FixedCalculated.PersonelNO = Pay.PersonelInfo.PersonelNo 
LEFT OUTER JOIN   Pay.FormsInfo ON Pay.FixedCalculated.OfficeCode=FormsInfo.FormInfoID  
GROUP BY Pay.FormsInfo.InfoID,FormsInfo.InfoName_L1,Pay.FixedCalculated.OfficeCode,Pay.FixedCalculated.Mounth,Pay.FixedCalculated.ArchiveID 
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO
CREATE VIEW Pay.StandardTimes
AS
SELECT        InfoID, InfoName_L1, InfoName_L2, StandardDays, StandardTimes,  AccCTopicCode2,  AccCTopicCode3
FROM            Pay.FormsInfo
WHERE        (FormType = 17)
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO
CREATE VIEW Pay.StoreDayTimeActive
AS
SELECT     Pay.Interdicts.InterdictID,Pay.Interdicts.PersonelNo,PersonelInfo.name_L1 + ' ' + Pay.PersonelInfo.lastName_L1 AS Name,
                      Pay.Interdicts.InterdictNo,Pay.Interdicts.InterdictDate,Pay.Interdicts.TotalYearsWork,PersonelInfo.StoreDayTime,PersonelInfo.employDate,
                      Pay.PersonelInfo.StoreDayTime + DATEDIFF(day,PersonelInfo.employDateM,GETDATE()) / 365 AS no_of_year
FROM         Pay.Interdicts INNER JOIN
                      Pay.PersonelInfo ON Pay.Interdicts.PersonelNo = Pay.PersonelInfo.PersonelNo
WHERE     (Pay.Interdicts.State < 50) AND (PersonelInfo.StoreDayTime + DATEDIFF(day,PersonelInfo.employDateM,GETDATE()) 
                      / 365 - Pay.Interdicts.TotalYearsWork >= 1) AND (PersonelInfo.StoreDayTimeActive = 1)
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO
CREATE VIEW Pay._InterdictEffect
AS
SELECT     TOP 100 PERCENT Pay.FormsInfo.FormInfoID,FormsInfo.InfoID,FormTypes.FormCaption_L1,FormTypes.FormCaption_L2,
                      Pay.FormsInfo.InfoName_L1,FormsInfo.InfoName_L2,FormsInfo.FormType
FROM         Pay.FormsInfo INNER JOIN
                      Pay.FormTypes ON Pay.FormsInfo.FormType =Pay.FormTypes.FormType
WHERE     (FormTypes.KarGOzinyEffectKind <> 0)
ORDER BY Pay.FormsInfo.FormType
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO
CREATE VIEW Pay.function4
AS
SELECT     Pay.FunctionsAll.FunctionID,Pay.FunctionsAll.ProjectID,Pay.FunctionsAll.PersonelNo,
                      Pay.PersonelInfo.name_L1 + '  ' + Pay.PersonelInfo.lastName_L1 AS name_l1,
                      Pay.PersonelInfo.name_L2 + '  ' + Pay.PersonelInfo.lastName_L2 AS name_l2,MAX(Pay.FunctionsAll.FunctionDay) AS FunctionDay,
                      MAX(Pay.FunctionsAll.FunctionTime) AS FunctionTime,FormsInfo_1.InfoName_L1,FormsInfo_1.InfoName_L2
					  ,Pay.FunctionsAll.YearID
FROM         Pay.FunctionsAll INNER JOIN
                      Pay.FormsInfo ON Pay.FunctionsAll.SalaryID = Pay.FormsInfo.FormInfoID INNER JOIN
                      Pay.PersonelInfo ON Pay.FunctionsAll.PersonelNo = Pay.PersonelInfo.PersonelNo INNER JOIN
                      Pay.FormTypes ON Pay.FormsInfo.FormType =Pay.FormTypes.FormType INNER JOIN
                      Pay.StandardTimes ON Pay.FunctionsAll.Mounth = Pay.StandardTimes.InfoID INNER JOIN
                      Pay.FormsInfo FormsInfo_1 ON Pay.FunctionsAll.ProjectID = FormsInfo_1.FormInfoID
GROUP BY Pay.FunctionsAll.FunctionID,Pay.FunctionsAll.ProjectID,Pay.FunctionsAll.PersonelNo,Pay.FunctionsAll.Mounth,FormTypes.FunctionShow,
                      Pay.PersonelInfo.name_L1,PersonelInfo.name_L2,PersonelInfo.lastName_L1,PersonelInfo.lastName_L2,FormsInfo_1.InfoName_L1,
                      FormsInfo_1.InfoName_L2,Pay.FunctionsAll.YearID
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO





SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO
CREATE VIEW Pay.master
AS
SELECT     Pay.FormsInfo.InfoID,FormsInfo.InfoName_L1,FormsInfo.InfoName_L2,FormsInfo.FormInfoID
FROM         Pay.FormTypes INNER JOIN
                      Pay.FormsInfo ON Pay.FormTypes.FormType = Pay.FormsInfo.FormType
WHERE     (FormTypes.SalaryKind = 10)
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
SET QUOTED_IDENTIFIER ON 
GO
--SET ANSI_NULLS OFF 
GO
CREATE PROCEDURE Pay.FSalaryRange (@FormInfoID AS int,@Kind AS tinyint ) AS 
(
SELECT     Pay.SalaryRange.*,FormsInfo.InfoName_L1,FormsInfo.InfoName_L2
FROM         Pay.SalaryRange INNER JOIN
                       Pay.FormsInfo ON Pay.SalaryRange.FormInfoID = Pay.FormsInfo.FormInfoID
WHERE     (SalaryRange.FormInfoID = @FormInfoID) AND (SalaryRange.Kind = @Kind) 
)
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
CREATE PROCEDURE Pay.NewInterdict @OldInterdictID int,
                             @InterdicStartDate Varchar(10)='9999/99/99',
                             @InterdicEndDate Varchar(10)='99/12/30',@InterdicType int=0,
                             @PersonelNo int=0,
							 @FirstUser nvarchar(20),
                             @InterdictID int OUTPUT
as
DECLARE @InterdictNo float
DECLARE @InterdictItemsID int
DECLARE @AidNo1 varchar(20)
DECLARE @AidDate1 Char(10)

BEGIN
SET NOCOUNT ON
SET     @InterdictID=(SELECT MAX(InterdictID)+1            FROM Pay.Interdicts)
SET     @InterdictItemsID=(SELECT MAX(InterdictItemsID)+1  FROM Pay.InterdictItems)
SET     @InterdictNo=(SELECT InterdictNo FROM Pay.Interdicts WHERE (InterdictID = @OldInterdictID))

SELECT @AidNo1=AidNo1,@AidDate1=AidDate1 FROM Pay.Interdicts WHERE (InterdictID = @OldInterdictID)

if @PersonelNo=0 
SET     @PersonelNo=(SELECT PersonelNo FROM Pay.Interdicts WHERE (InterdictID = @OldInterdictID))
else
begin
SET     @InterdictNo=(SELECT MAX(CAST(InterdictNo AS Float)) FROM Pay.Interdicts WHERE (PersonelNo = @PersonelNo))
SET     @InterdicStartDate=(SELECT InterdicStartDate FROM Pay.Interdicts WHERE (InterdictID = @OldInterdictID))
SET     @InterdicEndDate = (SELECT InterdicEndDate   FROM Pay.Interdicts WHERE (InterdictID = @OldInterdictID))
end

SET     @InterdictNo=@InterdictNo+0.01

if ((SELECT AidInfoNo1Active FROM Pay.FormTypes WHERE (FormType = 45))=2)
  SELECT @AidNo1=MAX(CONVERT(float, ISNULL(AidNo1,0)))+1 FROM Pay.Interdicts

if ((SELECT AidInfoDate1Active FROM Pay.FormTypes WHERE (FormType = 45))=1)
    SELECT @AidDate1=  Pay.MiladiToShamsi(GETDATE())

INSERT INTO Pay.Interdicts
                      (InterdictID, InterdictNo, InterdictDate, subcompanyCode, PersonelNo, OfficeCode, jobCode, grade, jobCity, InterdicType, EmployTypeID, 
                      InterdicStartDate, employDaytime, AccTopicCode, AccDetailCode, AccCTopicCode, AccCTopicCode2, KarGOzinyNote_L1, KarGOzinyNote_L2, State, 
                      UserID, TotalYearsWork, InterdicEndDate, Comment, InterdicStartDateM, TaxCalculationType, insuranceID, StandardEmployAmount, ProjectID, 
                      ManegePercent, OfficeManegePercent, GroupID, PayehNo, GrpExpense, SubFunctionID, SubInterdictID, LastInterdictID, AccCTopicCode3, GradeDate, 
                      HasRetard, InsuranceStartDate,  jobsGroup, TaxMounth, TaxDays , FirstUser, AidNo1, AidDate1 )
SELECT     @InterdictID, LTRIM(STR(@InterdictNo, 10, 2)), pay.MiladiToShamsi(GETDATE()) AS InterdictDate, subcompanyCode, @PersonelNo, OfficeCode, jobCode, grade, jobCity, @InterdicType, 
                      EmployTypeID, @InterdicStartDate, employDaytime, AccTopicCode, AccDetailCode, AccCTopicCode, AccCTopicCode2, KarGOzinyNote_L1, 
                      KarGOzinyNote_L2, 0, UserID, TotalYearsWork, @InterdicEndDate, Comment, InterdicStartDateM, TaxCalculationType, insuranceID, 
                      StandardEmployAmount, ProjectID, ManegePercent, OfficeManegePercent, GroupID, PayehNo, GrpExpense, SubFunctionID, SubInterdictID, 
                      @OldInterdictID, AccCTopicCode3, GradeDate, HasRetard, InsuranceStartDate,  jobsGroup, TaxMounth, TaxDays
					  , @FirstUser, @AidNo1, @AidDate1
FROM         Pay.Interdicts AS Interdicts_1
WHERE     (InterdictID = @OldInterdictID)

DECLARE @MINItemsID int
SET @MINItemsID=(SELECT MIN(InterdictItemsID)FROM Pay.InterdictItems WHERE (InterdictID = @OldInterdictID))
INSERT INTO Pay.InterdictItems
       (InterdictItemsID,InterdictID,SalaryID,Amount,/*FirstMounth,EndMounth,*/
	   AccTopicCode,AccDetailCode,AccCTopicCode,AccCTopicCode2,
        ExpenseType,UserID,ItemNote_L1,ItemNote_L2)
SELECT    @InterdictItemsID+ROW_NUMBER() OVER(ORDER BY InterdictItemsID ),@InterdictID,SalaryID,Amount,/*FirstMounth,EndMounth,*/
       AccTopicCode,AccDetailCode,AccCTopicCode,AccCTopicCode2,
        ExpenseType,UserID,ItemNote_L1,ItemNote_L2
FROM         Pay.InterdictItems
WHERE     (InterdictID =@OldInterdictID )
RETURN(@InterdictID)
end
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
SET QUOTED_IDENTIFIER OFF 
GO
--SET ANSI_NULLS OFF 
GO
CREATE FUNCTION Pay.AccForDecExt 	 (@FormInfoID  int=158  )  
RETURNS  table  AS 
return  (
SELECT   Pay.PersonelDecExt.DecExtID,PersonelDecExt.PersonelNo,
	 CASE TopicCodeKind 
		WHEN 0 THEN 0 
		WHEN 1 THEN InterdictAcc.InterdictAccTopicCode
		WHEN 2 THEN Pay.FormsInfo.AccTopicCode
		WHEN 3 THEN FormsInfo_1.AccTopicCode
		WHEN 4 THEN InterdictAcc.OfficeAccTopicCode
		WHEN 5 THEN Pay.FormsInfo.AccTopicCode
		WHEN 6 THEN InterdictAcc.PersonAccTopicCode
		ELSE 0 END AS AccTopicCode,
	 CASE Pay.FormTypes.DetailCodeKind 
		WHEN 0 THEN 0 
		WHEN 1 THEN InterdictAcc.InterdictAccDetailCode
		WHEN 2 THEN Pay.FormsInfo.AccDetailCode
		WHEN 3 THEN FormsInfo_1.AccDetailCode
		WHEN 4 THEN InterdictAcc.OfficeAccDetailCode
		WHEN 5 THEN Pay.FormsInfo.AccDetailCode
		WHEN 6 THEN InterdictAcc.PersonAccDetailCode
		ELSE 0 END AS AccDetailCode,
	 CASE Pay.FormTypes.CTopicCodeKind 
		WHEN 0 THEN 0 
		WHEN 1 THEN  InterdictAcc.InterdictAccCTopicCode
		WHEN 2 THEN Pay.FormsInfo.AccCTopicCode
		WHEN 3 THEN FormsInfo_1.AccCTopicCode
		WHEN 4 THEN  InterdictAcc.OfficeAccCTopicCode
		WHEN 5 THEN Pay.FormsInfo.AccCTopicCode
		WHEN 6 THEN  InterdictAcc.PersonAccCTopicCode
		ELSE 0 END AS AccCTopicCode,

	 CASE Pay.FormTypes.CTopicCode2Kind 
		WHEN 0 THEN 0 
		WHEN 1 THEN InterdictAcc.InterdictAccCTopicCode2
		WHEN 2 THEN Pay.FormsInfo.AccCTopicCode2
		WHEN 3 THEN FormsInfo_1.AccCTopicCode2
		WHEN 4 THEN InterdictAcc.OfficeAccCTopicCode2
		WHEN 5 THEN Pay.FormsInfo.AccCTopicCode2
		WHEN 6 THEN InterdictAcc.PersonAccCTopicCode2
    	--WHEN 11 THEN StandardTimes.AccCTopicCode2
    	--WHEN 12 THEN st.AccCTopicCode2
		ELSE 0 END AS AccCTopicCode2,
	 CASE Pay.FormTypes.CTopicCode3Kind 
		WHEN 0 THEN 0 
		WHEN 1 THEN InterdictAcc.InterdictAccCTopicCode3
		WHEN 2 THEN Pay.FormsInfo.AccCTopicCode3
		WHEN 3 THEN FormsInfo_1.AccCTopicCode3
		WHEN 4 THEN InterdictAcc.OfficeAccCTopicCode3
		WHEN 5 THEN Pay.FormsInfo.AccCTopicCode3
		WHEN 6 THEN InterdictAcc.PersonAccCTopicCode3
    	--WHEN 10 THEN StandardTimes.AccCTopicCode3
		ELSE 0 END AS AccCTopicCode3 

FROM         (

SELECT     Pay.Interdicts.PersonelNo,Pay.Interdicts.AccTopicCode AS InterdictAccTopicCode,Pay.Interdicts.AccDetailCode AS InterdictAccDetailCode,
                      Pay.Interdicts.AccCTopicCode AS InterdictAccCTopicCode,Pay.Interdicts.AccCTopicCode2 AS InterdictAccCTopicCode2,Pay.Interdicts.AccCTopicCode3 AS InterdictAccCTopicCode3,
                      FormsInfo_1.AccTopicCode AS OfficeAccTopicCode,FormsInfo_1.AccDetailCode AS OfficeAccDetailCode,
                      FormsInfo_1.AccCTopicCode AS OfficeAccCTopicCode,FormsInfo_1.AccCTopicCode2 AS OfficeAccCTopicCode2,FormsInfo_1.AccCTopicCode3 AS OfficeAccCTopicCode3,
                      Pay.PersonelInfo.AccTopicCode AS PersonAccTopicCode,PersonelInfo.AccDetailCode AS PersonAccDetailCode,
                      Pay.PersonelInfo.AccCTopicCode AS PersonAccCTopicCode,PersonelInfo.AccCTopicCode2 AS PersonAccCTopicCode2,
		PersonelInfo.AccCTopicCode3 AS PersonAccCTopicCode3
FROM         Pay.Interdicts INNER JOIN
                      Pay.FormsInfo ON Pay.Interdicts.InterdicType = Pay.FormsInfo.FormInfoID INNER JOIN
                      Pay.FormsInfo FormsInfo_1 ON Pay.Interdicts.OfficeCode = FormsInfo_1.FormInfoID INNER JOIN
                      Pay.PersonelInfo ON Pay.Interdicts.PersonelNo = Pay.PersonelInfo.PersonelNo
WHERE     (FormsInfo.InfoID < 100)
GROUP BY Pay.Interdicts.PersonelNo,Pay.Interdicts.AccTopicCode,Pay.Interdicts.AccDetailCode,Pay.Interdicts.AccCTopicCode,Pay.Interdicts.AccCTopicCode2,Pay.Interdicts.AccCTopicCode3,
                      FormsInfo_1.AccTopicCode,FormsInfo_1.AccDetailCode,FormsInfo_1.AccCTopicCode,FormsInfo_1.AccCTopicCode2,FormsInfo_1.AccCTopicCode3,PersonelInfo.AccTopicCode,
                      Pay.PersonelInfo.AccDetailCode,PersonelInfo.AccCTopicCode,PersonelInfo.AccCTopicCode2,PersonelInfo.AccCTopicCode3

) InterdictAcc INNER JOIN

         Pay.PersonelDecExt ON InterdictAcc.PersonelNo = Pay.PersonelDecExt.PersonelNo INNER JOIN
        Pay.FormsInfo ON Pay.PersonelDecExt.FormInfoID = Pay.FormsInfo.FormInfoID INNER JOIN
              Pay.FormTypes ON Pay.FormsInfo.FormType =Pay.FormTypes.FormType LEFT OUTER JOIN
             Pay.FormsInfo FormsInfo_1 ON Pay.FormTypes.FormType = FormsInfo_1.FormType AND Pay.PersonelDecExt.FormInfoID2 = FormsInfo_1.FormInfoID
)
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
SET QUOTED_IDENTIFIER ON 
GO
--SET ANSI_NULLS OFF 
GO
CREATE FUNCTION Pay.AccForInterdict
	 (@InterdicID  int=2  )  
RETURNS  table  AS 
return  (
SELECT     Pay.InterdictItems.InterdictItemsID,
	 CASE TopicCodeKind 
		WHEN 0 THEN 0 
		WHEN 1 THEN Pay.Interdicts.AccTopicCode
		WHEN 2 THEN FormsInfo.AccTopicCode
		WHEN 3 THEN 0
		WHEN 4 THEN FormsInfo_1.AccTopicCode
		ELSE 0 END AS AccTopicCode,
	 CASE Pay.FormTypes.DetailCodeKind 
		WHEN 0 THEN 0 
		WHEN 1 THEN Pay.Interdicts.AccDetailCode
		WHEN 2 THEN FormsInfo.AccDetailCode
		WHEN 3 THEN 0
		WHEN 4 THEN FormsInfo_1.AccDetailCode
		ELSE 0 END AS AccDetailCode,
	 CASE Pay.FormTypes.CTopicCodeKind 
		WHEN 0 THEN 0 
		WHEN 1 THEN  Pay.Interdicts.AccCTopicCode
		WHEN 2 THEN  FormsInfo.AccCTopicCode
		WHEN 3 THEN 0
		WHEN 4 THEN  FormsInfo_1.AccCTopicCode
		ELSE 0 END AS AccCTopicCode,
	 CASE Pay.FormTypes.CTopicCode2Kind 
		WHEN 0 THEN 0 
		WHEN 1 THEN Pay.Interdicts.AccCTopicCode2
		WHEN 2 THEN FormsInfo.AccCTopicCode2
		WHEN 3 THEN 0
		WHEN 4 THEN FormsInfo_1.AccCTopicCode2
    	--WHEN 11 THEN StandardTimes.AccCTopicCode2
    	--WHEN 12 THEN st.AccCTopicCode2
		ELSE 0 END AS AccCTopicCode2 ,
	 CASE Pay.FormTypes.CTopicCode3Kind 
		WHEN 0 THEN 0 
		WHEN 1 THEN Pay.Interdicts.AccCTopicCode3
		WHEN 2 THEN FormsInfo.AccCTopicCode3
		WHEN 3 THEN 0
		WHEN 4 THEN FormsInfo_1.AccCTopicCode3
    	--WHEN 10 THEN StandardTimes.AccCTopicCode20
		ELSE 0 END AS AccCTopicCode3 

FROM         Pay.Interdicts INNER JOIN
                      Pay.FormsInfo FormsInfo_1 ON Pay.Interdicts.OfficeCode = FormsInfo_1.FormInfoID INNER JOIN
                      Pay.InterdictItems ON Pay.Interdicts.InterdictID = Pay.InterdictItems.InterdictID INNER JOIN
                      Pay.FormsInfo  FormsInfo ON Pay.InterdictItems.SalaryID = FormsInfo.FormInfoID INNER JOIN
                      Pay.FormTypes ON FormsInfo.FormType =Pay.FormTypes.FormType

GROUP BY Pay.Interdicts.AccTopicCode,Pay.Interdicts.AccDetailCode,Pay.Interdicts.AccCTopicCode,Pay.Interdicts.AccCTopicCode2,Pay.Interdicts.AccCTopicCode3,FormsInfo_1.AccTopicCode,
                      FormsInfo_1.AccDetailCode,FormsInfo_1.AccCTopicCode,FormsInfo_1.AccCTopicCode2,FormsInfo_1.AccCTopicCode3,Pay.InterdictItems.InterdictItemsID,FormsInfo.AccTopicCode,
                      FormsInfo.AccDetailCode,FormsInfo.AccCTopicCode,FormsInfo.AccCTopicCode2,FormsInfo.AccCTopicCode3,FormTypes.TopicCodeKind,FormTypes.DetailCodeKind,
                     Pay.FormTypes.CTopicCodeKind,FormTypes.CTopicCode2Kind,FormTypes.CTopicCode3Kind)
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
------------------------------------------------------------------------------------------------------------
SET QUOTED_IDENTIFIER OFF 
GO
--SET ANSI_NULLS OFF 
GO
CREATE FUNCTION Pay.FixedCalActive  ()  
RETURNS  table  AS 
Return  (
SELECT     PersonelNO,Mounth,YearID,Years,MIN(ArchiveID) AS MinArchiveID,MAX(ArchiveID) AS MaxArchiveID,
		 CASE 	WHEN MIN(ArchiveID)=0 THEN MIN(ArchiveID) ELSE MAX(ArchiveID)end AS F_ArchiveID,
		 CASE 	WHEN MIN(ArchiveID)=0 THEN MAX(ArchiveID) ELSE MAX(ArchiveID) - 1 END AS Last_ArchiveID 
FROM         Pay.FixedCalculated F 
GROUP BY Mounth,PersonelNO,YearID,Years
)
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
------------------------------------------------------------------------------------------------------------
GO
SET QUOTED_IDENTIFIER OFF 
GO
--SET ANSI_NULLS OFF 
GO
CREATE FUNCTION Pay.[DecreaseContainTax]  (@Mounth int=1 ,
 @PersonelNoFROM int=0,@PersonelNoTo int=9999999,@ShowListKind int=12 ,@YearID int)  
RETURNS  table  AS 
return  (
------------------------------------محاسبات مربوط به معافيتهاي خاص مالياتي   -----------------------------------------------------------------------------------------------
	
	SELECT	PersonelNo, ISNULL(sum(Price),0) AS Price, Showlistkind, ISNULL(sum(priceM),0) as priceM, TaxCalculationType
				,sum(Darmani4Tax18) AS Darmani4Tax18 ,sum(Pardakhti4Tax19) as Pardakhti4Tax19

	FROM (
			SELECT	PD.PersonelNo, SUM(PD.EmployeeAmount) AS Price, 12 AS Showlistkind, 0 as priceM, 0 as TaxCalculationType
			,SUM(PD.EmployeeAmount) AS Darmani4Tax18 ,0 as Pardakhti4Tax19

			FROM	Pay.PersonelDecExt PD INNER JOIN
					Pay.FormsInfo FO ON PD.FormInfoID = FO.FormInfoID INNER JOIN
					Pay.FormTypes FY ON FO.FormType   = FY.FormType 

			WHERE	(PD.FirstMounth  <= @Mounth) AND (PD.EndMounth >= @Mounth) and (fy.SalaryKind = 11) 
			AND (PD.PersonelNo BETWEEN  @PersonelNoFROM AND @PersonelNoTo)

			GROUP BY PD.PersonelNo
			
			UNION ALL

			SELECT	PD.PersonelNo, 0, 12 AS Showlistkind,
					CASE WHEN  (SELECT     TaxKindCalc  FROM Pay.Config) =0 THEN SUM(PD.EmployeeAmount)/COUNT(IV.interdictid)  ELSE ---- AND NEW THIS CASE

								SUM(
					
								(CASE WHEN 
											CASE WHEN	IV.eMonth   < PD.EndMounth AND @Mounth >= IV.eMonth THEN IV.eMonth
											ELSE
												CASE WHEN	@Mounth < PD.EndMounth    THEN @Mounth ELSE PD.EndMounth    END 
											END 
										  - CASE WHEN	IV.smonth   >= PD.FirstMounth THEN IV.smonth ELSE PD.FirstMounth  END  >= 0 
									 THEN 
											CASE WHEN	IV.eMonth   < PD.EndMounth AND @Mounth >= IV.eMonth THEN IV.eMonth   
											ELSE 
												CASE WHEN	@Mounth <  PD.EndMounth   THEN @Mounth ELSE PD.EndMounth  END 
											END 
											- CASE WHEN	IV.smonth   >= PD.FirstMounth THEN IV.smonth ELSE PD.FirstMounth  END 

									ELSE - 1 
									END  + 1
									) 						
									* PD.EmployeeAmount ) 

						 END ---- AND NEW THIS CASE

						 AS priceM , 0 as TaxCalculationType
						 ,0 AS Darmani4Tax18 ,0 as Pardakhti4Tax19
			FROM      Pay.PersonelDecExt PD INNER JOIN
                      Pay.FormsInfo FO ON PD.FormInfoID = FO.FormInfoID INNER JOIN
                      Pay.FormTypes T ON FO.FormType = T.FormType 
					  inner  join  (
									SELECT       interdictid, OfficeCode, jobCode, InterdictDate, subcompanyCode, PersonelNo, TaxCalculationType,
											     EmployTypeID,Smonth, EMonth, YearID
									FROM            Pay.Interdicts_v  
									where YearID=@YearID
									AND (PersonelNo BETWEEN  @PersonelNoFROM AND @PersonelNoTo)
									) IV on IV.PersonelNo=PD.PersonelNo 
			WHERE    (PD.FirstMounth  <=  @Mounth)  and (T.SalaryKind = 11)
			AND (PD.PersonelNo BETWEEN  @PersonelNoFROM AND @PersonelNoTo)
			       
			GROUP BY  PD.PersonelNo,TaxCalculationType
		
		UNION ALL
		
		SELECT	fc.PersonelNO, CASE WHEN  (F_TaxLevel.DisableDecContainTaxNumerator = 0 ) THEN SUM(Price) *(SELECT DecContainTaxNumerator FROM Pay.Config) / (SELECT  DecContainTaxunder FROM Pay.Config) ELSE 0 END  AS Price
		, 12 AS Showlistkind, 0, 0 as TaxCalculationType
		,0 AS Darmani4Tax18 ,CASE WHEN  (F_TaxLevel.DisableDecContainTaxNumerator = 0 ) THEN SUM(Price) *(SELECT DecContainTaxNumerator FROM Pay.Config) / (SELECT  DecContainTaxunder FROM Pay.Config) ELSE 0 END as Pardakhti4Tax19
		FROM         pay.FixedCalculated fc
				join Pay.FixedCalActive() FCA ON FC.PersonelNO = FCA.PersonelNO AND FC.Mounth = FCA.Mounth AND FC.YearID = FCA.YearID AND FC.ArchiveID = FCA.F_ArchiveID
				--new ADD DisableDecContainTaxNumerator
				INNER  JOIN  (
							SELECT	interdictid, OfficeCode, jobCode, InterdictDate, subcompanyCode, PersonelNo, 
									TaxCalculationType, EmployTypeID, startmonth, endMonth, YearID
							FROM            Pay.Interdicts_V
							where YearID = @YearID  
		                 	AND (PersonelNo BETWEEN  @PersonelNoFROM AND @PersonelNoTo)

							  ) IV on IV.PersonelNo=fc.PersonelNo 
								AND RTRIM(LTRIM(str(@YearID)))+'/'+ SUBSTRING(RTRIM(LTRIM(str(100 + fc.Mounth))),2,2)  BETWEEN IV.startmonth and IV.Endmonth
                INNER JOIN  Pay.FormsInfo AS F_TaxLevel ON IV.TaxCalculationType = F_TaxLevel.FormInfoID
				--new ADD DisableDecContainTaxNumerator

		WHERE     (fc.ShowListKind = 2) AND (fc.CalCulateKind = 10) AND (fc.BedBes = 2) AND (fc.Mounth = @Mounth)
			AND (FC.PersonelNo BETWEEN  @PersonelNoFROM AND @PersonelNoTo)
              
		GROUP BY fc.PersonelNO,F_TaxLevel.DisableDecContainTaxNumerator
		
		UNION ALL
     
	    SELECT	fc.PersonelNO, 0, 12 AS Showlistkind,CASE WHEN  (F_TaxLevel.DisableDecContainTaxNumerator = 0 ) THEN SUM(Price) * (SELECT  DecContainTaxNumerator FROM  Pay.Config) / (SELECT  DecContainTaxunder  FROM  Pay.Config)  ELSE 0 END  AS Price
		, 0 as TaxCalculationType
    	,0 AS Darmani4Tax18 ,0 as Pardakhti4Tax19
        FROM         Pay.FixedCalculated fc
			join Pay.FixedCalActive() FCA ON FC.PersonelNO = FCA.PersonelNO AND FC.Mounth = FCA.Mounth AND FC.YearID = FCA.YearID AND FC.ArchiveID = FCA.F_ArchiveID
				--new ADD DisableDecContainTaxNumerator
				INNER  JOIN  (
							SELECT	interdictid, OfficeCode, jobCode, InterdictDate, subcompanyCode, PersonelNo, 
									TaxCalculationType, EmployTypeID, startmonth, endMonth, YearID
							FROM            Pay.Interdicts_V
							where YearID = @YearID  
							AND (PersonelNo BETWEEN  @PersonelNoFROM AND @PersonelNoTo)

							  ) IV on IV.PersonelNo=fc.PersonelNo 
								AND RTRIM(LTRIM(str(@YearID)))+'/'+ SUBSTRING(RTRIM(LTRIM(str(100 + fc.Mounth))),2,2)  BETWEEN IV.startmonth and IV.Endmonth
                INNER JOIN  Pay.FormsInfo AS F_TaxLevel ON IV.TaxCalculationType = F_TaxLevel.FormInfoID
				--new ADD DisableDecContainTaxNumerator

		WHERE     (ShowListKind = 2) AND (CalCulateKind = 10) AND (BedBes = 2) 
			  AND (fc.Mounth between CASE WHEN  (SELECT     TaxKindCalc  FROM Pay.Config) =0 THEN @Mounth  ELSE 0 END  and @Mounth)
			AND (FC.PersonelNo BETWEEN  @PersonelNoFROM AND @PersonelNoTo)

	    GROUP BY fc.PersonelNO,SalaryID,F_TaxLevel.DisableDecContainTaxNumerator
		) ACT

	WHERE (Showlistkind=@ShowListKind) 

	Group By  PersonelNo,Showlistkind,TaxCalculationType

	Having  (SUM(Price) <>0) or (SUM(priceM) <>0)

----------------------------------پايان محاسبات مربوط به معافيتهاي خاص مالياتي --------------------------------------------------------------------------------------
) 
  
--------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------
  
  
  
  
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO




--------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------
SET QUOTED_IDENTIFIER OFF 
GO
--SET ANSI_NULLS OFF 
GO
CREATE FUNCTION Pay.ExtraSalary ( @Month int=6 ,@ArchiveID int=0,@SalaryIDFROM int=702,@SalaryIDTo int=702 ,@LabelIDFrom  int=0,@LabelIDTo  int=0,@YearIDFrom  int=1402,@YearIDTo  int=1402)  
RETURNS  table  AS 
Return  (SELECT   ExtrInfo.PersonelNO,Fun.FDaily+ Fun.FHours AS Amount,SalaryPay.BasePrice,SalaryPay.Rate,
	 ExtrInfo.Price,ISNULL(Tax.taxValue,0) AS Tax,
	CASE WHEN ExtrInfo.Price*.1 <ISNULL(Tax.taxValue,0) THEN ExtrInfo.Price*.1 ELSE 
	CASE WHEN ISNULL(Tax.taxValue,0)>0 THEN ISNULL(Tax.taxValue,0) ELSE 0 END END AS taxvalue,
        ExtrInfo.OfficeCode 

FROM         (SELECT  FixedCalculated.PersonelNO,SUM(FixedCalculated.Price) AS Price,FormsInfo_OfficeCode.InfoID AS OfficeCode
                      
               FROM   Pay.FixedCalculated FixedCalculated INNER JOIN
                      Pay.FormsInfo ON FixedCalculated.SalaryID = Pay.FormsInfo.FormInfoID LEFT OUTER JOIN
                      Pay.FormsInfo FormsInfo_OfficeCode ON FixedCalculated.OfficeCode = FormsInfo_OfficeCode.FormInfoID
              WHERE     (FixedCalculated.Mounth = @Month) 
              AND (FormsInfo.FormInfoID between @SalaryIDFROM AND @SalaryIDTo ) AND (FixedCalculated.ArchiveID = @ArchiveID)
			  And (FixedCalculated.LabelID between @LabelIDFrom  and @LabelIDTo   )
			  And (FixedCalculated.YearID between @YearIDFrom  and @YearIDTo   )
              GROUP BY FixedCalculated.PersonelNO,FormsInfo_OfficeCode.InfoID,FormsInfo.FormInfoID) ExtrInfo INNER JOIN

              (SELECT     Pay.Interdicts.PersonelNo,SUM(InterdictItems.Amount) AS BasePrice,
			SUM(ROUND((InterdictItems.Amount / Pay.FormsInfo.Amount) 
              		* (FormsInfo.StandardDays + Pay.FormsInfo.StandardTimes),2)) AS Rate
              		
              FROM          Pay.FormsInfo INNER JOIN
                           Pay.SalaryRange ON Pay.FormsInfo.FormInfoID = Pay.SalaryRange.FormInfoID INNER JOIN
                           Pay.InterdictItems ON Pay.SalaryRange.SalaryID = Pay.InterdictItems.SalaryID INNER JOIN
                           Pay.Interdicts ON Pay.InterdictItems.InterdictID = Pay.Interdicts.InterdictID INNER JOIN
                            Pay.FormsInfo FormsInfo_1 ON Pay.SalaryRange.SalaryID = FormsInfo_1.FormInfoID
              WHERE     (FormsInfo.FormType  IN (29,91) ) AND (FormsInfo.FormInfoID between @SalaryIDFROM AND @SalaryIDTo) AND 
		  (ABS(SUBSTRING(InterdicStartDate,6,2)) <= @Month) AND (ABS(SUBSTRING(InterdicEndDate,6,2)) >= @Month)
           AND  (InterdicType = 0 )           

              GROUP BY Pay.Interdicts.PersonelNo,FormsInfo.FormInfoID) SalaryPay ON ExtrInfo.PersonelNO = SalaryPay.PersonelNo LEFT OUTER JOIN

             (SELECT     Pay.Functions.PersonelNo,SUM(FunctionsItems.FDaily) AS FDaily,SUM(FunctionsItems.FHours) AS FHours
                
              FROM         Pay.Functions INNER JOIN
                        Pay.FunctionsItems ON Pay.Functions.FunctionID = Pay.FunctionsItems.FunctionID
              WHERE     (FunctionsItems.SalaryID between @SalaryIDFROM AND @SalaryIDTo ) AND (Functions.Mounth =@Month) AND (Functions.YearID = @YearIDFrom )
              GROUP BY Pay.Functions.PersonelNo,FunctionsItems.SalaryID) Fun ON ExtrInfo.PersonelNO = Fun.PersonelNo LEFT OUTER JOIN


         (SELECT     FixedCalculated.PersonelNO,FixedCalculated.Price AS taxValue
          FROM         pay.FixedCalculated INNER JOIN
	           Pay.FormsInfo ON FixedCalculated.SalaryID = Pay.FormsInfo.FormInfoID
          WHERE     (FixedCalculated.Mounth = @Month) AND (FormsInfo.FormType = 21) AND (FixedCalculated.BedBes = 2) 
		  AND (FixedCalculated.ArchiveID = @ArchiveID)
		  And (FixedCalculated.LabelID between @LabelIDFrom  and @LabelIDTo   )
		  And (FixedCalculated.YearID between @YearIDFrom  and @YearIDTo   )
) 
        	  Tax ON ExtrInfo.PersonelNO = Tax.PersonelNO
)
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
--SET ANSI_NULLS OFF 
GO
CREATE FUNCTION Pay.F_SalaryRange (@FormInfoID AS int =[3],@Kind AS tinyint=[1] ) 
RETURNS table AS  
return
(SELECT     Pay.SalaryRange.*,FormsInfo.InfoID,FormsInfo.InfoName_L1,FormsInfo.InfoName_L2
FROM         Pay.SalaryRange INNER JOIN
                      Pay.FormsInfo ON Pay.SalaryRange.SalaryID = Pay.FormsInfo.FormInfoID
WHERE     (SalaryRange.FormInfoID = @FormInfoID) AND (SalaryRange.Kind = @Kind) 
)
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
SET QUOTED_IDENTIFIER ON 
GO
--SET ANSI_NULLS OFF 
GO
CREATE FUNCTION Pay.InterdictForUseWithOffice
------------------------------- پارامتر ها بترتيب  شامل  1- تركيب سال و ماه 2- نوع عوامل حقوق و مزايا  (  در معرفي انواع فرمها  = همان نوع عوامل حقوق و مزايا ميباشد . (‏ - ----------------------
	 (@YearMounth varchar(7) ='81/01' ,@salarykind int=1,@salarykindTo int=1 ,
	 @PersonelNoFROM int=0,@PersonelNoTo int=9999999)  
RETURNS  table  AS 
return  (
SELECT     Pay.Interdicts.PersonelNo,Pay.Interdicts.OfficeCode,Pay.Interdicts.jobCode ,Pay.Interdicts.EmployTypeID,Pay.Interdicts.ProjectID,Interdicts.insuranceID,InterdicEndDate
FROM         Pay.Interdicts
-- INNER JOIN
--                      Pay.FormsInfo  Pay.FormsInfo ON Pay.Interdicts.InterdicType = Pay.FormsInfo.FormInfoID INNER JOIN
--                      Pay.FormTypes ON Pay.FormsInfo.FormType =Pay.FormTypes.FormType
WHERE     
-------------------------------------------------اولين شر ط ثابت بوده و منظور حكم هاي كارگزيني فعال ميباشد . ------------------------------------------------------
--(FormsInfo.InfoID < 100) AND 
(LEFT(Pay.Interdicts.InterdicStartDate,7) <= @YearMounth) AND 
				(LEFT(Pay.Interdicts.InterdicEndDate,7) >=@YearMounth) 
-- AND             (FormTypes.SalaryKind between  @salarykind and @salarykindTo ) 
  AND  Pay.Interdicts.PersonelNo between  @PersonelNoFROM and @PersonelNoTo 
GROUP BY Pay.Interdicts.PersonelNo,Pay.Interdicts.OfficeCode,Pay.Interdicts.jobCode ,Pay.Interdicts.EmployTypeID,Pay.Interdicts.ProjectID,Interdicts.insuranceID,InterdicEndDate

)
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
------------------------------------------  محاسبه مبلغ بر اساس نوع فرم قابل نمايش ------------------------------------------------------------------------------------------
CREATE FUNCTION Pay.FormItemsAmount (@FormID int=1 )
RETURNS money 
begin
  DECLARE @ItemAmount money
  DECLARE @DisplayFormType tinyint

  --SET @DisplayFormType=(SELECT Pay.FormTypes.DisplayFormType FROM Pay.Forms INNER JOIN Pay.FormTypes ON 
  --                                                      Pay.Forms.FormType=FormTypes.FormType WHERE  Pay.Forms.FormID = @FormID)

  --SET @ItemAmount=(SELECT Amount FROM Forms WHERE FormID=@FormID)
  --if @DisplayFormType<>0  
  --   SET @ItemAmount=(SELECT SUM(ItemAmount)FROM FormItems WHERE FormID=@FormID)

RETURN(@ItemAmount)
end
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
SET QUOTED_IDENTIFIER OFF 
GO
--SET ANSI_NULLS OFF 
GO
CREATE FUNCTION Pay.FunctionList  ( @Years int=1402 ,@YearID int=1402 ,@Month int=1 ,@SalaryID1 int=368,@SalaryID2 int=483,@SalaryID3 int=524 )  
RETURNS  table  AS 
Return  (
SELECT     Pay.Functions.PersonelNo,SUM(CASE WHEN Pay.FunctionsItems.SalaryID = @SalaryID1 THEN (Pay.FunctionsItems.FDaily + Pay.FunctionsItems.FHours) 
                     ELSE 0 END) AS FAmount1,SUM(CASE WHEN Pay.FunctionsItems.SalaryID = @SalaryID2 THEN (Pay.FunctionsItems.FDaily + Pay.FunctionsItems.FHours) 
                     ELSE 0 END) AS FAmount2,SUM(CASE WHEN Pay.FunctionsItems.SalaryID = @SalaryID3 THEN (Pay.FunctionsItems.FDaily + Pay.FunctionsItems.FHours) 
                     ELSE 0 END) AS FAmount3
FROM         Pay.Functions INNER JOIN
                      Pay.FunctionsItems ON Pay.Functions.FunctionID = Pay.FunctionsItems.FunctionID INNER JOIN
                      Pay.FormsInfo ON Pay.FunctionsItems.SalaryID = Pay.FormsInfo.FormInfoID
WHERE     (Pay.Functions.Mounth = @Month) AND (Pay.Functions.Years = @Years ) AND (Pay.Functions.YearID = @YearID )
GROUP BY Pay.Functions.PersonelNo
)
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
-------------------------------------------------
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS OFF 
GO
  

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO
CREATE FUNCTION Pay.InterdictForUse 
------------------------------- پارامتر ها بترتيب  شامل  1- تركيب سال و ماه 2- نوع عوامل حقوق و مزايا  (  در معرفي انواع فرمها  = همان نوع عوامل حقوق و مزايا ميباشد . (‏ - ----------------------
	 (@YearMounth varchar(7) ='81/01' ,@salarykind int=1,@salarykindTo int=1 ,
	 @PersonelNoFROM int=0,@PersonelNoTo int=9999999 , @4ContainSalaryAnnuity int = 0 )  
RETURNS  table  AS 
return  (
SELECT     Pay.Interdicts.PersonelNo,Pay.Interdicts.subcompanyCode,Pay.Interdicts.OfficeCode,Pay.Interdicts.jobCode,Pay.InterdictItems.SalaryID,
                      Pay.FormsInfo.CalCulateType,

					    --SUM(Pay.InterdictItems.Amount) AS Amount,   change  For pasargad
						case @4ContainSalaryAnnuity when  1 then
                            ROUND(SUM(case when (FormTypes.SalaryKind = 2)and(FormsInfo.CalCulateType = 13) 
						    then  Pay.InterdictItems.Amount * 15 else Pay.InterdictItems.Amount end), 0)
						  else 
                             SUM(Pay.InterdictItems.Amount) end
							AS Amount, 
						
						Pay.Interdicts.AccTopicCode,Pay.Interdicts.AccDetailCode,
                      Pay.Interdicts.AccCTopicCode,Pay.Interdicts.AccCTopicCode2,Pay.Interdicts.AccCTopicCode3,FormTypes_1.TopicCodeKind,FormTypes_1.DetailCodeKind,
                     FormTypes_1.CTopicCodeKind,FormTypes_1.CTopicCode2Kind,FormTypes_1.CTopicCode3Kind,
	         FormsInfo_2.FormType,FormsInfo_3.AccTopicCode AS OfficeAccTopicCode,
                      FormsInfo_3.AccDetailCode AS OfficeAccDetailCode,FormsInfo_3.AccCTopicCode AS OfficeAccCTopicCode,
                      FormsInfo_3.AccCTopicCode2 AS OfficeAccCTopicCode2,FormsInfo_3.AccCTopicCode3 AS OfficeAccCTopicCode3,
	        Pay.FormsInfo.AccTopicCode AS SalaryAccTopicCode,
                      Pay.FormsInfo.AccDetailCode AS SalaryAccDetailCode,FormsInfo.AccCTopicCode AS SalaryAccCTopicCode,
                      Pay.FormsInfo.AccCTopicCode2 AS SalaryAccCTopicCode2,FormsInfo.AccCTopicCode3 AS SalaryAccCTopicCode3,
	         FormsInfo_2.AccTopicCode AS MasterAccTopicCode,
                      FormsInfo_2.AccDetailCode AS MasterAccDetailCode,FormsInfo_2.AccCTopicCode AS MasterAccCTopicCode,
                      FormsInfo_2.AccCTopicCode2 AS MasterAccCTopicCode2,FormsInfo_2.AccCTopicCode3 AS MasterAccCTopicCode3
					  ,Interdicts.ProjectID ,Interdicts.jobsGroup ,Interdicts.EmployTypeID,Interdicts.insuranceID
FROM         Pay.Interdicts INNER JOIN
                      Pay.FormsInfo INNER JOIN
                      Pay.FormTypes ON Pay.FormsInfo.FormType =Pay.FormTypes.FormType INNER JOIN
                      Pay.InterdictItems ON Pay.FormsInfo.FormInfoID = Pay.InterdictItems.SalaryID ON Pay.Interdicts.InterdictID = Pay.InterdictItems.InterdictID INNER JOIN
--		 Pay.FormsInfo FormsInfo_1 ON Pay.Interdicts.InterdicType = FormsInfo_1.FormInfoID INNER JOIN                     
                      Pay.FormsInfo FormsInfo_2 ON Pay.Interdicts.EmployTypeID = FormsInfo_2.FormInfoID INNER JOIN
                      Pay.FormTypes FormTypes_1 ON FormsInfo_2.FormType =FormTypes_1.FormType INNER JOIN
                      Pay.FormsInfo FormsInfo_3 ON Pay.Interdicts.OfficeCode = FormsInfo_3.FormInfoID
WHERE     
-------------------------------------------------اولين شر ط ثابت بوده و منظور حكم هاي كارگزيني فعال ميباشد . ------------------------------------------------------
		--(FormsInfo_1.InfoID  < 100) AND 
		(LEFT(Pay.Interdicts.InterdicStartDate,7) <= @YearMounth)  AND 
		(LEFT(Pay.Interdicts.InterdicEndDate,7) >=@YearMounth)  AND
	             (FormTypes.SalaryKind BETWEEN  @salarykind and @salarykindTo ) 
AND      (Pay.Interdicts.PersonelNo BETWEEN  @PersonelNoFROM and @PersonelNoTo )

GROUP BY Pay.Interdicts.PersonelNo,Pay.Interdicts.subcompanyCode,Pay.Interdicts.OfficeCode,Pay.Interdicts.jobCode,Pay.InterdictItems.SalaryID,
                      Pay.Interdicts.AccTopicCode,Pay.Interdicts.AccDetailCode,Pay.Interdicts.AccCTopicCode,Pay.Interdicts.AccCTopicCode2,Pay.Interdicts.AccCTopicCode3,
                      Pay.FormsInfo.CalCulateType,FormTypes_1.TopicCodeKind,FormTypes_1.DetailCodeKind,FormTypes_1.CTopicCodeKind,
                     FormTypes_1.CTopicCode2Kind,FormTypes_1.CTopicCode3Kind,FormsInfo_2.FormType,FormsInfo_3.AccTopicCode,FormsInfo_3.AccDetailCode,FormsInfo_3.AccCTopicCode,
                      FormsInfo_3.AccCTopicCode2,FormsInfo_3.AccCTopicCode3,FormsInfo.AccTopicCode,
                      Pay.FormsInfo.AccDetailCode,FormsInfo.AccCTopicCode,
                      Pay.FormsInfo.AccCTopicCode2,FormsInfo.AccCTopicCode3,FormsInfo_2.AccTopicCode ,
                      FormsInfo_2.AccDetailCode,FormsInfo_2.AccCTopicCode,
                      FormsInfo_2.AccCTopicCode2,FormsInfo_2.AccCTopicCode3 ,Interdicts.ProjectID ,Interdicts.jobsGroup,Interdicts.EmployTypeID,Interdicts.insuranceID
)
GO
SET QUOTED_IDENTIFIER ON 
GO
--SET ANSI_NULLS OFF 
GO
-------------------------------------------------------------------------------------
GO
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO
CREATE FUNCTION Pay.InterdictForUseLast 
------------------------------- پارامتر ها بترتيب  شامل  1- تركيب سال و ماه 2- نوع عوامل حقوق و مزايا  (  در معرفي انواع فرمها  = همان نوع عوامل حقوق و مزايا ميباشد . (‏ - ----------------------
	 (@salarykind int=1,@salarykindTo int=1 ,
	 @PersonelNoFROM int=0,@PersonelNoTo int=9999999)  
RETURNS  table  AS 
return  (
SELECT     Pay.Interdicts.PersonelNo,Pay.Interdicts.subcompanyCode,Pay.Interdicts.OfficeCode,Pay.Interdicts.jobCode,Pay.InterdictItems.SalaryID,
                      Pay.FormsInfo.CalCulateType,SUM(Pay.InterdictItems.Amount) AS Amount,Pay.Interdicts.AccTopicCode,Pay.Interdicts.AccDetailCode,
                      Pay.Interdicts.AccCTopicCode,Pay.Interdicts.AccCTopicCode2,Pay.Interdicts.AccCTopicCode3,FormTypes_1.TopicCodeKind,FormTypes_1.DetailCodeKind,
                     FormTypes_1.CTopicCodeKind,FormTypes_1.CTopicCode2Kind,FormTypes_1.CTopicCode3Kind,
	         FormsInfo_2.FormType,FormsInfo_3.AccTopicCode AS OfficeAccTopicCode,
                      FormsInfo_3.AccDetailCode AS OfficeAccDetailCode,FormsInfo_3.AccCTopicCode AS OfficeAccCTopicCode,
                      FormsInfo_3.AccCTopicCode2 AS OfficeAccCTopicCode2,FormsInfo_3.AccCTopicCode3 AS OfficeAccCTopicCode3,
	        Pay.FormsInfo.AccTopicCode AS SalaryAccTopicCode,
                      Pay.FormsInfo.AccDetailCode AS SalaryAccDetailCode,FormsInfo.AccCTopicCode AS SalaryAccCTopicCode,
                      Pay.FormsInfo.AccCTopicCode2 AS SalaryAccCTopicCode2,FormsInfo.AccCTopicCode3 AS SalaryAccCTopicCode3,
	         FormsInfo_2.AccTopicCode AS MasterAccTopicCode,
                      FormsInfo_2.AccDetailCode AS MasterAccDetailCode,FormsInfo_2.AccCTopicCode AS MasterAccCTopicCode,
                      FormsInfo_2.AccCTopicCode2 AS MasterAccCTopicCode2,FormsInfo_2.AccCTopicCode3 AS MasterAccCTopicCode3
FROM         Pay.Interdicts INNER JOIN
                      Pay.FormsInfo INNER JOIN
                      Pay.FormTypes ON Pay.FormsInfo.FormType =Pay.FormTypes.FormType INNER JOIN
                      Pay.InterdictItems ON Pay.FormsInfo.FormInfoID = Pay.InterdictItems.SalaryID ON Pay.Interdicts.InterdictID = Pay.InterdictItems.InterdictID INNER JOIN
--		 Pay.FormsInfo FormsInfo_1 ON Pay.Interdicts.InterdicType = FormsInfo_1.FormInfoID INNER JOIN                     
                      Pay.FormsInfo FormsInfo_2 ON Pay.Interdicts.EmployTypeID = FormsInfo_2.FormInfoID INNER JOIN
                      Pay.FormTypes FormTypes_1 ON FormsInfo_2.FormType =FormTypes_1.FormType INNER JOIN
                      Pay.FormsInfo FormsInfo_3 ON Pay.Interdicts.OfficeCode = FormsInfo_3.FormInfoID
WHERE     
-------------------------------------------------اولين شر ط ثابت بوده و منظور حكم هاي كارگزيني فعال ميباشد . ------------------------------------------------------
		(State<50)AND
	             (FormTypes.SalaryKind BETWEEN  @salarykind and @salarykindTo ) 
and      (Pay.Interdicts.PersonelNo BETWEEN  @PersonelNoFROM and @PersonelNoTo )
GROUP BY Pay.Interdicts.PersonelNo,Pay.Interdicts.subcompanyCode,Pay.Interdicts.OfficeCode,Pay.Interdicts.jobCode,Pay.InterdictItems.SalaryID,
                      Pay.Interdicts.AccTopicCode,Pay.Interdicts.AccDetailCode,Pay.Interdicts.AccCTopicCode,Pay.Interdicts.AccCTopicCode2,Pay.Interdicts.AccCTopicCode3,
                      Pay.FormsInfo.CalCulateType,FormTypes_1.TopicCodeKind,FormTypes_1.DetailCodeKind,FormTypes_1.CTopicCodeKind,
                     FormTypes_1.CTopicCode2Kind,FormTypes_1.CTopicCode3Kind,FormsInfo_2.FormType,FormsInfo_3.AccTopicCode,FormsInfo_3.AccDetailCode,FormsInfo_3.AccCTopicCode,
                      FormsInfo_3.AccCTopicCode2,FormsInfo_3.AccCTopicCode3,FormsInfo.AccTopicCode,
                      Pay.FormsInfo.AccDetailCode,FormsInfo.AccCTopicCode,
                      Pay.FormsInfo.AccCTopicCode2,FormsInfo.AccCTopicCode3,FormsInfo_2.AccTopicCode ,
                      FormsInfo_2.AccDetailCode,FormsInfo_2.AccCTopicCode,
                      FormsInfo_2.AccCTopicCode2,FormsInfo_2.AccCTopicCode3 
--HAVING      (Pay.Interdicts.PersonelNo BETWEEN  @PersonelNoFROM and @PersonelNoTo )
)
GO
SET QUOTED_IDENTIFIER ON 
GO
--SET ANSI_NULLS OFF 
GO
--------------------------------------------------------------------------------------


SET QUOTED_IDENTIFIER ON 
GO
--SET ANSI_NULLS OFF 
GO
CREATE FUNCTION Pay.LabelForFixedCalCulate  (@MounthFROM int =0,@MounthTo int=12  )  
RETURNS  table  AS 
return  (SELECT     FixedCalculated.SalaryID,FormsInfo.InfoID,
	   CASE   ISNULL(FormsInfo_1.FormInfoID,0)
	WHEN 0 THEN Pay.FormsInfo.InfoName_L1	ELSE FormsInfo_1.InfoName_L1 END AS InfoName_L1,
	   CASE  ISNULL(FormsInfo_1.FormInfoID,0)
	WHEN 0 THEN Pay.FormsInfo.InfoName_L2	ELSE FormsInfo_1.InfoName_L2 END AS InfoName_L2
FROM         Pay.FixedCalculated INNER JOIN
                      Pay.FormsInfo ON Pay.FixedCalculated.FormInfoID = Pay.FormsInfo.FormInfoID LEFT OUTER JOIN
                          (SELECT     *
                             FROM         Pay.FormsInfo
                             WHERE     formtype = 100) FormsInfo_1 ON Pay.FixedCalculated.showListKind = FormsInfo_1.InfoID
WHERE     (FixedCalculated.Mounth between @MounthFROM and  @MounthTo )--And (FixedCalculated.YearID between @YearIDFrom  and @YearIDTo   )
)
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

----------------------------------------------------------------------
----------------------------------------------------------------------
SET QUOTED_IDENTIFIER ON 
GO
--SET ANSI_NULLS OFF 
GO
CREATE FUNCTION Pay.GetLastMounths (@Mounth int )
RETURNS  
@ReturnTable TABLE  ( Mounth Tinyint  ) 
AS 
BEGIN 
  DECLARE @Start varchar(10)
  DECLARE @MounthTmp Tinyint 
  SELECT  @Start= StartMaliYear FROM Pay.Config
  SET @MounthTmp=abs(substring(@Start,6,2))
  IF @MounthTmp<=@Mounth 
  BEGIN
    WHILE  @MounthTmp<=@Mounth 
      BEGIN   
		INSERT INTO @ReturnTable
					  (Mounth)
		 VALUES      (@MounthTmp)  
		SET @MounthTmp=@MounthTmp+1    
      END
  END
 ELSE     
  BEGIN
    WHILE  @MounthTmp<=12 
      BEGIN   
		INSERT INTO @ReturnTable
					  (Mounth)
		 VALUES      (@MounthTmp)  
		SET @MounthTmp=@MounthTmp+1    
      END
      
    SET @MounthTmp=1    

    WHILE  @MounthTmp<=@Mounth 
      BEGIN   
		INSERT INTO @ReturnTable
					  (Mounth)
		 VALUES      (@MounthTmp)  
		SET @MounthTmp=@MounthTmp+1    
      END
      
  END 
     DELETE @ReturnTable WHERE  Mounth=@Mounth 
  RETURN  
END  
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
----------------------------------------------------------------------
----------------------------------------------------------------------


GO
--SET ANSI_NULLS OFF 
GO
CREATE FUNCTION Pay.PaymentLoan(@CalCulateKind int=9,@PersonelNoFROM int=0,@PersonelNoTo int=9999999,@month int ,@YearID int  ,@Years int  )  
RETURNS  table  AS 
Return  (
SELECT     Pay.FixedCalculated.FunctionID,Pay.FixedCalculated.FormInfoID,Pay.FixedCalculated.PersonelNO,
		Pay.FixedCalculated.CalCulateKind  , SUM(Pay.FixedCalculated.Price) AS Price 
FROM         Pay.FixedCalculated INNER JOIN
                      Pay.PersonelDecExt ON Pay.FixedCalculated.PersonelNO = Pay.PersonelDecExt.PersonelNo AND 
                      Pay.FixedCalculated.FormInfoID = Pay.PersonelDecExt.FormInfoID AND Pay.FixedCalculated.FunctionID = Pay.PersonelDecExt.DecExtID INNER JOIN
                      Pay.FixedCalActive() FixedCalActive ON Pay.FixedCalculated.Mounth = FixedCalActive.Mounth AND FixedCalculated.YearID = FixedCalActive.YearID AND 
                      Pay.FixedCalculated.ArchiveID = FixedCalActive.F_ArchiveID AND Pay.FixedCalculated.PersonelNO = FixedCalActive.PersonelNO
WHERE     (Pay.FixedCalculated.CalCulateKind IN(  @CalCulateKind,14 )) --AND (Pay.FixedCalculated.YearID = @YearID )

AND  ( ltrim(Pay.FixedCalculated.YearID)+'/'+RIGHT( '0'+ltrim(Pay.FixedCalculated.Mounth),2)<  ltrim(@YearID)+'/'+RIGHT( '0'+ltrim(@month),2)  ) ---محاسبه وام در بایگانی
--   Pay.FixedCalculated.PersonelNO in (SELECT DISTINCT PersonelNO FROM Pay.Functions 
--                                          WHERE Pay.Functions.PersonelNO = FixedCalculated.PersonelNO
--                                          and Pay.Functions.Mounth = FixedCalculated.Mounth )
                                          
 AND  (Pay.FixedCalculated.Mounth in(SELECT Mounth FROM Pay.GetLastMounths(@month)) OR  
 Pay.FixedCalculated.FormInfoID in (SELECT [FormInfoID]  FROM  Pay.[FormsInfo]  where [PayMentActive]<>1))
  and (Pay.FixedCalculated.PersonelNO between @PersonelNoFROM and @PersonelNoTo)
  AND (FixedCalculated.BedBes = 2)  --AND  (Pay.FixedCalculated.YearID = @YearID )AND  (Pay.FixedCalculated.Years = @Years )
GROUP BY Pay.FixedCalculated.CalCulateKind , Pay.FixedCalculated.FunctionID,Pay.FixedCalculated.FormInfoID,Pay.FixedCalculated.PersonelNO 

UNION ALL

SELECT	F.FunctionID,F.salaryid ,
		F.PersonelNO,
		F.CalCulateKind  , SUM(F.Price) AS Price 
FROM	Pay.FixedCalculated F INNER JOIN
		Pay.FixedCalActive() AS FixedCalActive ON F.Mounth = FixedCalActive.Mounth AND F.YearID = FixedCalActive.YearID AND 
		F.ArchiveID = FixedCalActive.F_ArchiveID AND 
		F.PersonelNO = FixedCalActive.PersonelNO
WHERE	((F.CalCulateKind not IN(  @CalCulateKind,14 ))  AND  --(F.YearID = @YearID ) AND  (F.Years = @Years ) AND 
		F.Mounth in(SELECT Mounth FROM Pay.GetLastMounths(@month)) AND 
		F.PersonelNO between @PersonelNoFROM and @PersonelNoTo )	AND 
		F.SalaryID in (SELECT [FormInfoID]  FROM  Pay.[FormsInfo]  where [PayMentActive]<>0)
GROUP BY F.CalCulateKind , F.FunctionID, F.salaryid ,
		F.PersonelNO


)


GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO
--CREATE FUNCTION ReMainPerson (@FormID int=1,@FormDate varchar(20)='9999/99/99',@PersonID int )
--RETURNS money 
--begin
--DECLARE @ReMain money
--set @ReMain=(SELECT SUM(Bed)-SUM(Bes) AS ReMain
-- from(
--(SELECT Pay.Recipts.PersonID1 AS PersonID,
--       SUM((CASE Pay.ReciptTypes.BedType WHEN 1 THEN  Pay.ReciptItems.TotalInputPrice+Pay.ReciptItems.TotalOutputPrice
--                                   ELSE 0 END)) AS Bed,
--       SUM((CASE Pay.ReciptTypes.BesType WHEN 1 THEN  Pay.ReciptItems.TotalInputPrice+Pay.ReciptItems.TotalOutputPrice
--                                   ELSE 0 END)) AS Bes
--FROM ReciptItems INNER JOIN
--     Pay.Recipts ON Pay.ReciptItems.ReciptID = Pay.Recipts.ReciptID INNER JOIN
--     Pay.ReciptTypes ON Pay.Recipts.ReciptType = Pay.ReciptTypes.ReciptType
--WHERE ((Pay.ReciptTypes.BedType = 1) OR (Pay.ReciptTypes.BesType = 1))--And(Pay.Recipts.ReciptID<>:ReciptID)
--      And(Pay.Recipts.ReciptState<3)
--GROUP BY Pay.Recipts.PersonID1)
--union all
--(SELECT  Pay.Forms.CustomerID1 AS PersonID,
--       SUM((CASE Pay.FormTypes.BedBes WHEN 1 THEN   Pay.FormItems.ItemAmount ELSE 0 END)) AS Bed,
--       SUM((CASE Pay.FormTypes.BedBes WHEN 0 THEN   Pay.FormItems.ItemAmount ELSE 0 END)) AS Bes
--FROM    Pay.FormItems INNER JOIN
--        Pay.Forms ON  Pay.FormItems.FormID =  Pay.Forms.FormID INNER JOIN
--        Pay.FormTypes ON  Pay.Forms.FormType = Pay.FormTypes.FormType
--WHERE (Pay.FormTypes.Customer1DocType = 10)And(Pay.Forms.FormID<>@FormID)And(Pay.Forms.FormDate<@FormDate)
--GROUP BY  Pay.Forms.CustomerID1)
--union all
--(SELECT  Pay.Forms.CustomerID2 AS PersonID,
--        SUM((CASE Pay.FormTypes.BedBes WHEN 0 THEN   Pay.FormItems.ItemAmount ELSE 0 END)) AS Bed,
--        SUM((CASE Pay.FormTypes.BedBes WHEN 1 THEN   Pay.FormItems.ItemAmount ELSE 0 END)) AS Bes
--FROM     Pay.FormItems INNER JOIN
--         Pay.Forms ON  Pay.FormItems.FormID =  Pay.Forms.FormID INNER JOIN
--         Pay.FormTypes ON  Pay.Forms.FormType = Pay.FormTypes.FormType
--WHERE  (Pay.FormTypes.Customer2DocType = 10)And(Pay.Forms.FormID<>@FormID)And(Pay.Forms.FormDate<@FormDate)
--GROUP BY  Pay.Forms.CustomerID2)
--union all
--(SELECT  Pay.Forms.CustomerID1 AS PersonID,
--       SUM((CASE Pay.FormTypes.BedBes WHEN 1 THEN   Pay.Forms.Amount ELSE 0 END)) AS Bed,
--       SUM((CASE Pay.FormTypes.BedBes WHEN 0 THEN   Pay.Forms.Amount ELSE 0 END)) AS Bes
--FROM          Pay.Forms INNER JOIN
--                       Pay.FormTypes ON  Pay.Forms.FormType = Pay.FormTypes.FormType
--WHERE (Pay.FormTypes.Customer1DocType = 10) and(Pay.FormTypes.DisplayFormType=0)
--       And(Pay.Forms.FormID<>@FormID)And(Pay.Forms.FormDate<@FormDate)
--GROUP BY  Pay.Forms.CustomerID1)
--union all
--(SELECT  Pay.Forms.CustomerID2 AS PersonID,
--       SUM((CASE Pay.FormTypes.BedBes WHEN 0 THEN   Pay.Forms.Amount ELSE 0 END)) AS Bed,
--       SUM((CASE Pay.FormTypes.BedBes WHEN 1 THEN   Pay.Forms.Amount ELSE 0 END)) AS Bes
--FROM          Pay.Forms INNER JOIN
--                       Pay.FormTypes ON  Pay.Forms.FormType = Pay.FormTypes.FormType
--WHERE  (Pay.FormTypes.Customer2DocType = 10)and(Pay.FormTypes.DisplayFormType=0)
--        And(Pay.Forms.FormID<>@FormID)And(Pay.Forms.FormDate<@FormDate)
--GROUP BY  Pay.Forms.CustomerID2)
--union all
--SELECT     Pay.Recipts.PersonID1,SUM(Pay.ReciptsDeficits.DeficitAdd) AS Bed,SUM(Pay.ReciptsDeficits.DeficitDec) AS Bes
--FROM         Pay.ReciptsDeficits INNER JOIN
--                      Pay.Recipts ON Pay.ReciptsDeficits.ReciptID = Pay.Recipts.ReciptID
--WHERE (Pay.Recipts.ReciptState<3)--And(Pay.Recipts.ReciptID<>:ReciptID2)
--GROUP BY Pay.ReciptsDeficits.ReciptID,Pay.Recipts.PersonID1

--)ReMain
--WHERE (PersonID = @PersonID)
--GROUP BY PersonID
--)
--set @ReMain=ISNULL(@ReMain,0)+(SELECT ISNULL(FirstBalance,0) FROM Customers WHERE CustID=@PersonID)
--RETURN(@ReMain)
--end
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO
CREATE FUNCTION Pay.RetardFixedCalculated  (@FirstArchiveID int=1,@LastArchiveID int=9999  ,@MounthRetard  int=0
                                       ,@LabelIDFrom  int=0,@LabelIDTo  int=0,@YearIDFrom  int=1402,@YearIDTo  int=1402)  --JobCede, FormInfoID, 4 mored
RETURNS  table  AS 
Return  (
SELECT  FunctionID,PersonelNO,ProjectID,OfficeCode,SalaryID,Mounth,SUM(Price) AS price,BedBes,CalCulateKind,ShowListKind,DocNo,LabelID,YearID
FROM (
SELECT     FunctionID,PersonelNO,ProjectID,OfficeCode,SalaryID,Mounth,Price,BedBes,CalCulateKind,ShowListKind,DocNo,LabelID,YearID
FROM         FixedCalculated
WHERE     (ArchiveID = @LastArchiveID ) --and (case when @MounthRetard=0 then 1 else case when MounthRetard=@MounthRetard then 1 else 0 end end) = 1
 AND (LabelID BETWEEN @LabelIDFrom AND @LabelIDTo)
 			  And (FixedCalculated.YearID between @YearIDFrom  and @YearIDTo   )

------------------------------------------------------
UNION ALL
------------------------------------------------------
SELECT     FunctionID,PersonelNO,ProjectID,OfficeCode,SalaryID,Mounth,- (1 * Price) AS price,BedBes,CalCulateKind,ShowListKind,DocNo,LabelID,YearID
FROM         FixedCalculated
WHERE     (ArchiveID = @FirstArchiveID)  --and (case when @MounthRetard=0 then 1 else case when MounthRetard=@MounthRetard then 1 else 0 end end) = 1
 AND (LabelID BETWEEN @LabelIDFrom AND @LabelIDTo)
 			  And (FixedCalculated.YearID between @YearIDFrom  and @YearIDTo   )

 ) Fixed
group by   FunctionID,PersonelNO,ProjectID,OfficeCode,SalaryID,Mounth,BedBes,CalCulateKind,ShowListKind,DocNo,LabelID,YearID
HAVING      (SUM(Price) <> 0)
)
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
--------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO
CREATE FUNCTION Pay.RptComprasionSubFinalArchive (@EmployTypeIDs varchar(800) ,@LabelIDFrom  int=0,@LabelIDTo  int=0 ,@YearIDFrom  int=1402,@YearIDTo  int=1402 )
RETURNS  table  AS 
return  (
----------------مزايا -------------------------
SELECT    1 AS ShowColumn,Pay.FixedCalculated.PersonelNO,Pay.FixedCalculated.ProjectID,FormsInfo_OfficeCode.InfoID AS OfficeCode,Pay.FixedCalculated.SalaryID,
                      Pay.FixedCalculated.Mounth,Pay.FixedCalculated.Price AS Price,Pay.FixedCalculated.ArchiveDate,Pay.FixedCalculated.ArchiveID,FormsInfo.InfoName_L1,
                      Pay.FormsInfo.InfoName_L2
FROM         Pay.FormsInfo RIGHT OUTER JOIN
                      Pay.FinalArchiveWithPersonelNO INNER JOIN
                      Pay.FixedCalculated ON Pay.FinalArchiveWithPersonelNO.Mounth = Pay.FixedCalculated.Mounth AND 
                      Pay.FinalArchiveWithPersonelNO.YearID = Pay.FixedCalculated.YearID AND 
                      Pay.FinalArchiveWithPersonelNO.ArchiveID = Pay.FixedCalculated.ArchiveID AND 
                      Pay.FinalArchiveWithPersonelNO.PersonelNO = Pay.FixedCalculated.PersonelNO ON 
                      Pay.FormsInfo.FormInfoID = Pay.FixedCalculated.SalaryID RIGHT OUTER JOIN
                      Pay.FormsInfo FormsInfo_OfficeCode ON Pay.FixedCalculated.OfficeCode = FormsInfo_OfficeCode.FormInfoID

			-------------------------------edit 14000629
				INNER  JOIN  (SELECT    interdictid, OfficeCode, jobCode, InterdictDate, subcompanyCode, PersonelNo, TaxCalculationType,EmployTypeID,
										SUBSTRING(InterdicStartDate,1,7) AS startmonth,
										SUBSTRING(InterdicEndDate,1,7)   AS endMonth,
										CAST(left(InterdicStartDate, 4) AS int) AS YearID
							  FROM            Pay.Interdicts  
							  ) aaa on aaa.PersonelNo=FixedCalculated.PersonelNo 
								and RTRIM(LTRIM(str(FixedCalculated.YearID)))+'/'+ SUBSTRING(RTRIM(LTRIM(str(100 + FixedCalculated.Mounth))),2,2)  BETWEEN startmonth and aaa.Endmonth
								and aaa.YearID=FixedCalculated.YearID
            -------------------------------edit 14000629
	

WHERE     (Pay.FixedCalculated.ShowListKind = 1)
--and aaa.EmployTypeID  IN (SELECT part FROM Pay.SplitString(@EmployTypeIDs,','))
and exists( Select part From Pay.SplitString(@EmployTypeIDs,',') where part = aaa.EmployTypeID)
 
AND RTRIM(LTRIM(str(FixedCalculated.YearID)))+'/'+ SUBSTRING(RTRIM(LTRIM(str(100 + FixedCalculated.Mounth))),2,2)  BETWEEN startmonth and aaa.Endmonth
And (FixedCalculated.LabelID between @LabelIDFrom  and @LabelIDTo   )
			  And (FixedCalculated.YearID between @YearIDFrom  and @YearIDTo   )


-----------پايان مزايا -----------
union all
----------------جمع حقوق و مزايا ------------------
SELECT    2 AS ShowColumn,Pay.FixedCalculated.PersonelNO,Pay.FixedCalculated.ProjectID,FormsInfo_OfficeCode.InfoID AS OfficeCode,0 AS SalaryID,
                      Pay.FixedCalculated.Mounth,SUM(Pay.FixedCalculated.Price) AS Price,Pay.FixedCalculated.ArchiveDate,
					  Pay.FixedCalculated.ArchiveID,'جمع حقوق و مزايا ' AS InfoName_L1,
                      'Total Wage ' AS InfoName_L2
FROM         Pay.FormsInfo RIGHT OUTER JOIN
                      Pay.FinalArchiveWithPersonelNO INNER JOIN
                      Pay.FixedCalculated ON Pay.FinalArchiveWithPersonelNO.Mounth = Pay.FixedCalculated.Mounth AND 
                      Pay.FinalArchiveWithPersonelNO.YearID = Pay.FixedCalculated.YearID AND 
                      Pay.FinalArchiveWithPersonelNO.ArchiveID = Pay.FixedCalculated.ArchiveID AND 
                      Pay.FinalArchiveWithPersonelNO.PersonelNO = Pay.FixedCalculated.PersonelNO ON 
                      Pay.FormsInfo.FormInfoID = Pay.FixedCalculated.SalaryID  RIGHT OUTER JOIN
                      Pay.FormsInfo FormsInfo_OfficeCode ON Pay.FixedCalculated.OfficeCode = FormsInfo_OfficeCode.FormInfoID
			-------------------------------edit 14000629
				INNER  JOIN  (SELECT    interdictid, OfficeCode, jobCode, InterdictDate, subcompanyCode, PersonelNo, TaxCalculationType,EmployTypeID,
										SUBSTRING(InterdicStartDate,1,7) AS startmonth,
										SUBSTRING(InterdicEndDate,1,7)   AS endMonth,
										CAST(left(InterdicStartDate, 4) AS int) AS YearID
							  FROM            Pay.Interdicts  
							  ) aaa on aaa.PersonelNo=FixedCalculated.PersonelNo 
								and RTRIM(LTRIM(str(FixedCalculated.YearID)))+'/'+ SUBSTRING(RTRIM(LTRIM(str(100 + FixedCalculated.Mounth))),2,2)  BETWEEN startmonth and aaa.Endmonth
								and aaa.YearID=FixedCalculated.YearID
            -------------------------------edit 14000629

WHERE     (Pay.FixedCalculated.ShowListKind = 1) 
--and aaa.EmployTypeID  IN (SELECT part FROM Pay.SplitString(@EmployTypeIDs,','))
and exists( Select part From Pay.SplitString(@EmployTypeIDs,',') where part = aaa.EmployTypeID)
AND RTRIM(LTRIM(str(FixedCalculated.YearID)))+'/'+ SUBSTRING(RTRIM(LTRIM(str(100 + FixedCalculated.Mounth))),2,2)  BETWEEN startmonth and aaa.Endmonth
And (FixedCalculated.LabelID between @LabelIDFrom  and @LabelIDTo   )
			  And (FixedCalculated.YearID between @YearIDFrom  and @YearIDTo   )

group by Pay.FixedCalculated.PersonelNO,Pay.FixedCalculated.ProjectID,FormsInfo_OfficeCode.InfoID,
                      Pay.FixedCalculated.Mounth,Pay.FixedCalculated.ArchiveDate,Pay.FixedCalculated.ArchiveID
----------------جمع حقوق و مزايا ------------------
union all
-------------------------------در جمع حقوق و مزايا------پایان  پاداش مستقل از حقوق  ------------------------------------------------
SELECT      2 AS ShowColumn, Bonus.PersonelNo, ProjectID, OfficeID, 0 AS SalaryID,ABS(SUBSTRING(EndDate,6,2)) AS Mounth,
          ISNULL(BonusPrise, 0) AS BonusPayAble,
	 EndDate,0 as ArchiveID,'جمع حقوق و مزايا ' AS InfoName_L1,
                      'Total Wage ' AS InfoName_L2
FROM      (SELECT        Pay.PersonelDecExt.PersonelNo, Pay.PersonelDecExt.EndDate ,  
                                   ROUND(SUM(ISNULL(PersonelDecExt.EmployeeAmount, 0)), 0) AS BonusPrise, ROUND(SUM(PersonelDecExt.PaymentLoan), 0) AS TaxPrice, 
                                   ROUND(SUM(PersonelDecExt.EmployeeAmount - Pay.PersonelDecExt.PaymentLoan), 0) AS BonusPayAble
, FormsInfo_Project.InfoID AS ProjectID, FormsInfo_Office.InfoID AS OfficeID
                                FROM Pay.PersonelDecExt INNER JOIN
                                     Pay.PersonelInfo ON Pay.PersonelDecExt.PersonelNo = Pay.PersonelInfo.PersonelNo LEFT OUTER JOIN
                          Pay.FormsInfo AS FormsInfo_Office ON Pay.PersonelDecExt.OfficeCode = FormsInfo_Office.FormInfoID LEFT OUTER JOIN
                          Pay.FormsInfo AS FormsInfo_Project ON Pay.PersonelDecExt.FormInfoID2 = FormsInfo_Project.FormInfoID INNER JOIN
                                                     Pay.FormsInfo AS FormsInfo_1 ON Pay.PersonelDecExt.FormInfoID = FormsInfo_1.FormInfoID
INNER JOIN (SELECT        InterdictID, InterdictNo, InterdictDate, subcompanyCode, PersonelNo, 
											  EmployTypeID, CAST(RIGHT(LEFT(InterdicStartDate,7), 2) AS int) AS startmonth, CAST(RIGHT(LEFT(InterdicEndDate,7), 2) AS int) AS endMonth,
											   CAST(left(InterdicStartDate, 4) AS int) AS YearID
					FROM            Pay.Interdicts  
					
					
					--where EmployTypeID  IN (SELECT part FROM Pay.SplitString(@EmployTypeIDs,','))
					where exists( Select part From Pay.SplitString(@EmployTypeIDs,',') where part = EmployTypeID)
					)aaa on aaa.PersonelNo=PersonelDecExt.PersonelNO and Pay.PersonelDecExt.YearID=aaa.YearID
					and (CAST(LEFT(RIGHT(PersonelDecExt.Enddate,5),2) AS int)) >= aaa.startmonth 
					and (CAST(LEFT(RIGHT(PersonelDecExt.Enddate,5),2) AS int)) <= aaa.Endmonth
CROSS JOIN Pay.Config as C
                                WHERE  (C.ActRewardInlistSalary in(1,2))AND  (FormsInfo_1.FormType = 111 ) AND   (FormsInfo_1.InfoID = 1) 
								  AND NOT(PersonelDecExt.EndDate IS NULL OR Pay.PersonelDecExt.EndDate = '        ' )
                                GROUP BY Pay.PersonelDecExt.PersonelNo, Pay.PersonelDecExt.EndDate  
								, FormsInfo_Project.InfoID , FormsInfo_Office.InfoID ) AS 
								Bonus  
-------------------------------------پایان  پاداش مستقل از حقوق  ---------------جمع حقوق و مزايا---------------------------------




union all
-----------
SELECT  distinct   3 AS ShowColumn,Pay.FixedCalculated.PersonelNO,Pay.FixedCalculated.ProjectID,FormsInfo_OfficeCode.InfoID AS OfficeCode,Pay.FixedCalculated.SalaryID,
                      Pay.FixedCalculated.Mounth,
					  CASE WHEN SUM(case when ((CalCulateKind=10) and (ShowlistKind =2)) then price else 0 end )<>0 
                           THEN SUM( case ShowlistKind when 3  then price else 0 end ) ELSE 0 END as Price					  
					  ,Pay.FixedCalculated.ArchiveDate,Pay.FixedCalculated.ArchiveID,'مشمول بيمه ' AS InfoName_L1,
                      'Contain Insourance ' AS InfoName_L2
FROM         Pay.FormsInfo RIGHT OUTER JOIN
                      Pay.FinalArchiveWithPersonelNO INNER JOIN
                      Pay.FixedCalculated ON Pay.FinalArchiveWithPersonelNO.Mounth = Pay.FixedCalculated.Mounth AND 
                      Pay.FinalArchiveWithPersonelNO.YearID = Pay.FixedCalculated.YearID AND 
                      Pay.FinalArchiveWithPersonelNO.ArchiveID = Pay.FixedCalculated.ArchiveID AND 
                      Pay.FinalArchiveWithPersonelNO.PersonelNO = Pay.FixedCalculated.PersonelNO ON 
                      Pay.FormsInfo.FormInfoID = Pay.FixedCalculated.SalaryID  RIGHT OUTER JOIN
                      Pay.FormsInfo FormsInfo_OfficeCode ON Pay.FixedCalculated.OfficeCode = FormsInfo_OfficeCode.FormInfoID
			-------------------------------edit 14000629
				INNER  JOIN  (SELECT    interdictid, OfficeCode, jobCode, InterdictDate, subcompanyCode, PersonelNo, TaxCalculationType,EmployTypeID,
										SUBSTRING(InterdicStartDate,1,7) AS startmonth,
										SUBSTRING(InterdicEndDate,1,7)   AS endMonth,
										CAST(left(InterdicStartDate, 4) AS int) AS YearID
							  FROM            Pay.Interdicts  
							  ) aaa on aaa.PersonelNo=FixedCalculated.PersonelNo 
								and RTRIM(LTRIM(str(FixedCalculated.YearID)))+'/'+ SUBSTRING(RTRIM(LTRIM(str(100 + FixedCalculated.Mounth))),2,2)  BETWEEN startmonth and aaa.Endmonth
								and aaa.YearID=FixedCalculated.YearID
            -------------------------------edit 14000629
--WHERE aaa.EmployTypeID  IN (SELECT part FROM Pay.SplitString(@EmployTypeIDs,','))
WHERE exists( Select part From Pay.SplitString(@EmployTypeIDs,',') where part = aaa.EmployTypeID)
AND RTRIM(LTRIM(str(FixedCalculated.YearID)))+'/'+ SUBSTRING(RTRIM(LTRIM(str(100 + FixedCalculated.Mounth))),2,2)  BETWEEN startmonth and aaa.Endmonth
And (FixedCalculated.LabelID between @LabelIDFrom  and @LabelIDTo   )
			  And (FixedCalculated.YearID between @YearIDFrom  and @YearIDTo   )


 GROUP BY Pay.FixedCalculated.PersonelNO,Pay.FixedCalculated.ProjectID,FormsInfo_OfficeCode.InfoID ,Pay.FixedCalculated.SalaryID,
                      Pay.FixedCalculated.Mounth,Pay.FixedCalculated.ArchiveDate,Pay.FixedCalculated.ArchiveID
HAVING        (CASE WHEN SUM(CASE WHEN ((CalCulateKind = 10) AND (ShowlistKind = 2)) THEN price ELSE 0 END) 
                         <> 0 THEN SUM(CASE ShowlistKind WHEN 3 THEN price ELSE 0 END) ELSE 0 END <> 0)
-----------
union all
------------------------------شروع ماليات ---------------------------------------
SELECT    4 AS ShowColumn,Pay.FixedCalculated.PersonelNO,Pay.FixedCalculated.ProjectID,FormsInfo_OfficeCode.InfoID AS OfficeCode,Pay.FixedCalculated.SalaryID,
                      Pay.FixedCalculated.Mounth,Pay.FixedCalculated.Price,Pay.FixedCalculated.ArchiveDate,Pay.FixedCalculated.ArchiveID,'مشمول ماليات ' AS InfoName_L1,
                      'Tax Insourance ' AS InfoName_L2
FROM         Pay.FormsInfo RIGHT OUTER JOIN
                      Pay.FinalArchiveWithPersonelNO INNER JOIN
                      Pay.FixedCalculated ON Pay.FinalArchiveWithPersonelNO.Mounth = Pay.FixedCalculated.Mounth AND 
                      Pay.FinalArchiveWithPersonelNO.YearID = Pay.FixedCalculated.YearID AND 
                      Pay.FinalArchiveWithPersonelNO.ArchiveID = Pay.FixedCalculated.ArchiveID AND 
                      Pay.FinalArchiveWithPersonelNO.PersonelNO = Pay.FixedCalculated.PersonelNO ON 
                      Pay.FormsInfo.FormInfoID = Pay.FixedCalculated.SalaryID RIGHT OUTER JOIN
                      Pay.FormsInfo FormsInfo_OfficeCode ON Pay.FixedCalculated.OfficeCode = FormsInfo_OfficeCode.FormInfoID
			-------------------------------edit 14000629
				INNER  JOIN  (SELECT    interdictid, OfficeCode, jobCode, InterdictDate, subcompanyCode, PersonelNo, TaxCalculationType,EmployTypeID,
										SUBSTRING(InterdicStartDate,1,7) AS startmonth,
										SUBSTRING(InterdicEndDate,1,7)   AS endMonth,
										CAST(left(InterdicStartDate, 4) AS int) AS YearID
							  FROM            Pay.Interdicts  
							  ) aaa on aaa.PersonelNo=FixedCalculated.PersonelNo 
								and RTRIM(LTRIM(str(FixedCalculated.YearID)))+'/'+ SUBSTRING(RTRIM(LTRIM(str(100 + FixedCalculated.Mounth))),2,2)  BETWEEN startmonth and aaa.Endmonth
								and aaa.YearID=FixedCalculated.YearID
            -------------------------------edit 14000629


WHERE     (Pay.FixedCalculated.ShowListKind = 11)  and (Pay.FixedCalculated.bedbes = 0) and (Pay.FixedCalculated.CalCulateKind=12) 
--and aaa.EmployTypeID  IN (SELECT part FROM Pay.SplitString(@EmployTypeIDs,','))
and exists( Select part From Pay.SplitString(@EmployTypeIDs,',') where part = aaa.EmployTypeID)
AND RTRIM(LTRIM(str(FixedCalculated.YearID)))+'/'+ SUBSTRING(RTRIM(LTRIM(str(100 + FixedCalculated.Mounth))),2,2)  BETWEEN startmonth and aaa.Endmonth
And (FixedCalculated.LabelID between @LabelIDFrom  and @LabelIDTo   )
			  And (FixedCalculated.YearID between @YearIDFrom  and @YearIDTo   )


--------------------------------------پايان مشمول ماليات ---------------------
union all
--------------------------------------ماليات ---------------------
SELECT    5 AS ShowColumn,Pay.FixedCalculated.PersonelNO,Pay.FixedCalculated.ProjectID,FormsInfo_OfficeCode.InfoID AS OfficeCode,Pay.FixedCalculated.SalaryID,
                      Pay.FixedCalculated.Mounth,Pay.FixedCalculated.Price,Pay.FixedCalculated.ArchiveDate,Pay.FixedCalculated.ArchiveID,'ماليات ' AS InfoName_L1,
                      'Tax' AS InfoName_L2
FROM         Pay.FormsInfo RIGHT OUTER JOIN
                      Pay.FinalArchiveWithPersonelNO INNER JOIN
                      Pay.FixedCalculated ON Pay.FinalArchiveWithPersonelNO.Mounth = Pay.FixedCalculated.Mounth AND 
                      Pay.FinalArchiveWithPersonelNO.YearID = Pay.FixedCalculated.YearID AND 
                      Pay.FinalArchiveWithPersonelNO.ArchiveID = Pay.FixedCalculated.ArchiveID AND 
                      Pay.FinalArchiveWithPersonelNO.PersonelNO = Pay.FixedCalculated.PersonelNO ON 
                      Pay.FormsInfo.FormInfoID = Pay.FixedCalculated.SalaryID RIGHT OUTER JOIN
                      Pay.FormsInfo FormsInfo_OfficeCode ON Pay.FixedCalculated.OfficeCode = FormsInfo_OfficeCode.FormInfoID
			-------------------------------edit 14000629
				INNER  JOIN  (SELECT    interdictid, OfficeCode, jobCode, InterdictDate, subcompanyCode, PersonelNo, TaxCalculationType,EmployTypeID,
										SUBSTRING(InterdicStartDate,1,7) AS startmonth,
										SUBSTRING(InterdicEndDate,1,7)   AS endMonth,
										CAST(left(InterdicStartDate, 4) AS int) AS YearID
							  FROM            Pay.Interdicts  
							  ) aaa on aaa.PersonelNo=FixedCalculated.PersonelNo 
								and RTRIM(LTRIM(str(FixedCalculated.YearID)))+'/'+ SUBSTRING(RTRIM(LTRIM(str(100 + FixedCalculated.Mounth))),2,2)  BETWEEN startmonth and aaa.Endmonth
								and aaa.YearID=FixedCalculated.YearID
            -------------------------------edit 14000629


WHERE     (Pay.FixedCalculated.ShowListKind = 11)  and (Pay.FixedCalculated.bedbes = 2)
--and aaa.EmployTypeID  IN (SELECT part FROM Pay.SplitString(@EmployTypeIDs,','))
and exists( Select part From Pay.SplitString(@EmployTypeIDs,',') where part = aaa.EmployTypeID)
AND RTRIM(LTRIM(str(FixedCalculated.YearID)))+'/'+ SUBSTRING(RTRIM(LTRIM(str(100 + FixedCalculated.Mounth))),2,2)  BETWEEN startmonth and aaa.Endmonth
And (FixedCalculated.LabelID between @LabelIDFrom  and @LabelIDTo   )
			  And (FixedCalculated.YearID between @YearIDFrom  and @YearIDTo   )

-----------------------------------پايان ماليات -----------------------
union all
---------------------------شروع كسورات -----------------------------
SELECT    6 AS ShowColumn,Pay.FixedCalculated.PersonelNO,Pay.FixedCalculated.ProjectID,FormsInfo_OfficeCode.InfoID AS OfficeCode,Pay.FixedCalculated.SalaryID,
                      Pay.FixedCalculated.Mounth,Pay.FixedCalculated.Price,Pay.FixedCalculated.ArchiveDate,Pay.FixedCalculated.ArchiveID,FormsInfo.InfoName_L1,
                      Pay.FormsInfo.InfoName_L2
FROM         Pay.FormsInfo RIGHT OUTER JOIN
                      Pay.FinalArchiveWithPersonelNO INNER JOIN
                      Pay.FixedCalculated ON Pay.FinalArchiveWithPersonelNO.Mounth = Pay.FixedCalculated.Mounth AND 
                      Pay.FinalArchiveWithPersonelNO.YearID = Pay.FixedCalculated.YearID AND 
                      Pay.FinalArchiveWithPersonelNO.ArchiveID = Pay.FixedCalculated.ArchiveID AND 
                      Pay.FinalArchiveWithPersonelNO.PersonelNO = Pay.FixedCalculated.PersonelNO ON 
                      Pay.FormsInfo.FormInfoID = Pay.FixedCalculated.SalaryID RIGHT OUTER JOIN
                      Pay.FormsInfo FormsInfo_OfficeCode ON Pay.FixedCalculated.OfficeCode = FormsInfo_OfficeCode.FormInfoID
			-------------------------------edit 14000629
				INNER  JOIN  (SELECT    interdictid, OfficeCode, jobCode, InterdictDate, subcompanyCode, PersonelNo, TaxCalculationType,EmployTypeID,
										SUBSTRING(InterdicStartDate,1,7) AS startmonth,
										SUBSTRING(InterdicEndDate,1,7)   AS endMonth,
										CAST(left(InterdicStartDate, 4) AS int) AS YearID
							  FROM            Pay.Interdicts  
							  ) aaa on aaa.PersonelNo=FixedCalculated.PersonelNo 
								and RTRIM(LTRIM(str(FixedCalculated.YearID)))+'/'+ SUBSTRING(RTRIM(LTRIM(str(100 + FixedCalculated.Mounth))),2,2)  BETWEEN startmonth and aaa.Endmonth
								and aaa.YearID=FixedCalculated.YearID
            -------------------------------edit 14000629


WHERE     (Pay.FixedCalculated.ShowListKind = 2) 
--and aaa.EmployTypeID  IN (SELECT part FROM Pay.SplitString(@EmployTypeIDs,','))
and exists( Select part From Pay.SplitString(@EmployTypeIDs,',') where part = aaa.EmployTypeID)
AND RTRIM(LTRIM(str(FixedCalculated.YearID)))+'/'+ SUBSTRING(RTRIM(LTRIM(str(100 + FixedCalculated.Mounth))),2,2)  BETWEEN startmonth and aaa.Endmonth
And (FixedCalculated.LabelID between @LabelIDFrom  and @LabelIDTo   )
			  And (FixedCalculated.YearID between @YearIDFrom  and @YearIDTo   )
------------------------------پايان كسورات -------------------------
union all
----------------------شروع جمع كسورات -----------------------------
SELECT    7 AS ShowColumn,Pay.FixedCalculated.PersonelNO,Pay.FixedCalculated.ProjectID,FormsInfo_OfficeCode.InfoID AS OfficeCode,0 AS SalaryID,
                      Pay.FixedCalculated.Mounth,SUM(Pay.FixedCalculated.Price) AS Price,Pay.FixedCalculated.ArchiveDate,Pay.FixedCalculated.ArchiveID,'جمع كسورات حقوق ' AS InfoName_L1,
                      'Total Desres ' AS InfoName_L2
FROM         Pay.FormsInfo RIGHT OUTER JOIN
                      Pay.FinalArchiveWithPersonelNO INNER JOIN
                      Pay.FixedCalculated ON Pay.FinalArchiveWithPersonelNO.Mounth = Pay.FixedCalculated.Mounth AND 
                      Pay.FinalArchiveWithPersonelNO.YearID = Pay.FixedCalculated.YearID AND 
                      Pay.FinalArchiveWithPersonelNO.ArchiveID = Pay.FixedCalculated.ArchiveID AND 
                      Pay.FinalArchiveWithPersonelNO.PersonelNO = Pay.FixedCalculated.PersonelNO ON 
                      Pay.FormsInfo.FormInfoID = Pay.FixedCalculated.SalaryID RIGHT OUTER JOIN
                      Pay.FormsInfo FormsInfo_OfficeCode ON Pay.FixedCalculated.OfficeCode = FormsInfo_OfficeCode.FormInfoID
INNER JOIN (SELECT        InterdictID, InterdictNo, InterdictDate, subcompanyCode, PersonelNo, 
											  EmployTypeID, CAST(RIGHT(LEFT(InterdicStartDate,7), 2) AS int) AS startmonth, CAST(RIGHT(LEFT(InterdicEndDate,7), 2) AS int) AS endMonth,
											   CAST(left(InterdicStartDate, 4) AS int) AS YearID
					FROM            Pay.Interdicts  
					
					--where EmployTypeID  IN (SELECT part FROM Pay.SplitString(@EmployTypeIDs,','))
					WHERE exists( Select part From Pay.SplitString(@EmployTypeIDs,',') where part = EmployTypeID)
					)aaa on aaa.PersonelNo=FixedCalculated.PersonelNO and FixedCalculated.YearID=aaa.YearID

					and FixedCalculated.Mounth>=aaa.startmonth and FixedCalculated.Mounth<=aaa.Endmonth


WHERE    ( (Pay.FixedCalculated.ShowListKind = 2) OR ((Pay.FixedCalculated.ShowListKind = 11)and (Pay.FixedCalculated.bedbes = 2)))
And (FixedCalculated.LabelID between @LabelIDFrom  and @LabelIDTo   )
			  And (FixedCalculated.YearID between @YearIDFrom  and @YearIDTo   )



group by Pay.FixedCalculated.PersonelNO,Pay.FixedCalculated.ProjectID,FormsInfo_OfficeCode.InfoID,
                      Pay.FixedCalculated.Mounth,Pay.FixedCalculated.ArchiveDate,Pay.FixedCalculated.ArchiveID
                    
-------------------------پايان جمع كسورات ----------------------------
union all
--------------------------شروع حق بيمه سهم كارفرما --------------------------------------
SELECT    8 AS ShowColumn,Pay.FixedCalculated.PersonelNO,Pay.FixedCalculated.ProjectID,FormsInfo_OfficeCode.InfoID AS OfficeCode,0 AS SalaryID,
                      Pay.FixedCalculated.Mounth,SUM(Pay.FixedCalculated.Price) AS Price,Pay.FixedCalculated.ArchiveDate,Pay.FixedCalculated.ArchiveID,'حق بيمه كارفرما ' AS InfoName_L1,
                      'Insourance Emoloyee Share' AS InfoName_L2
FROM         Pay.FormsInfo RIGHT OUTER JOIN   
                      Pay.FinalArchiveWithPersonelNO INNER JOIN
                      Pay.FixedCalculated ON Pay.FinalArchiveWithPersonelNO.Mounth = Pay.FixedCalculated.Mounth AND 
                      Pay.FinalArchiveWithPersonelNO.YearID = Pay.FixedCalculated.YearID AND 
                      Pay.FinalArchiveWithPersonelNO.ArchiveID = Pay.FixedCalculated.ArchiveID AND 
                      Pay.FinalArchiveWithPersonelNO.PersonelNO = Pay.FixedCalculated.PersonelNO ON 
                      Pay.FormsInfo.FormInfoID = Pay.FixedCalculated.SalaryID RIGHT OUTER JOIN
                      Pay.FormsInfo FormsInfo_OfficeCode ON Pay.FixedCalculated.OfficeCode = FormsInfo_OfficeCode.FormInfoID
			-------------------------------edit 14000629
				INNER  JOIN  (SELECT    interdictid, OfficeCode, jobCode, InterdictDate, subcompanyCode, PersonelNo, TaxCalculationType,EmployTypeID,
										SUBSTRING(InterdicStartDate,1,7) AS startmonth,
										SUBSTRING(InterdicEndDate,1,7)   AS endMonth,
										CAST(left(InterdicStartDate, 4) AS int) AS YearID
							  FROM            Pay.Interdicts  
							  ) aaa on aaa.PersonelNo=FixedCalculated.PersonelNo 
								and RTRIM(LTRIM(str(FixedCalculated.YearID)))+'/'+ SUBSTRING(RTRIM(LTRIM(str(100 + FixedCalculated.Mounth))),2,2)  BETWEEN startmonth and aaa.Endmonth
								and aaa.YearID=FixedCalculated.YearID
            -------------------------------edit 14000629


WHERE     (Pay.FixedCalculated.ShowlistKind  in( 4,14 )) AND (CalCulateKind = 10) 
--and aaa.EmployTypeID  IN (SELECT part FROM Pay.SplitString(@EmployTypeIDs,','))
and exists( Select part From Pay.SplitString(@EmployTypeIDs,',') where part = aaa.EmployTypeID)
AND RTRIM(LTRIM(str(FixedCalculated.YearID)))+'/'+ SUBSTRING(RTRIM(LTRIM(str(100 + FixedCalculated.Mounth))),2,2)  BETWEEN startmonth and aaa.Endmonth
And (FixedCalculated.LabelID between @LabelIDFrom  and @LabelIDTo   )
			  And (FixedCalculated.YearID between @YearIDFrom  and @YearIDTo   )

group by Pay.FixedCalculated.PersonelNO,Pay.FixedCalculated.ProjectID,FormsInfo_OfficeCode.InfoID,
                      Pay.FixedCalculated.Mounth,Pay.FixedCalculated.ArchiveDate,Pay.FixedCalculated.ArchiveID
-----------------------------------------پايان حق بيمه سهم كارفرما -------------------------

union all

-------------------------------------شروع خالص پرداختي ------------------------------------------------
SELECT    9 AS ShowColumn,Pay.FixedCalculated.PersonelNO,Pay.FixedCalculated.ProjectID,FormsInfo_OfficeCode.InfoID AS OfficeCode,0 AS SalaryID,
     Pay.FixedCalculated.Mounth,SUM(CASE WHEN (Pay.FixedCalculated.ShowListKind = 1) THEN Pay.FixedCalculated.Price ELSE  -Pay.FixedCalculated.Price  END ) AS Price,
	 Pay.FixedCalculated.ArchiveDate,Pay.FixedCalculated.ArchiveID,
		  'خالص پرداختي ' AS InfoName_L1,     'payable Salary ' AS InfoName_L2
FROM         Pay.FormsInfo RIGHT OUTER JOIN
                      Pay.FinalArchiveWithPersonelNO INNER JOIN
                      Pay.FixedCalculated ON Pay.FinalArchiveWithPersonelNO.Mounth = Pay.FixedCalculated.Mounth AND 
                      Pay.FinalArchiveWithPersonelNO.YearID = Pay.FixedCalculated.YearID AND 
                      Pay.FinalArchiveWithPersonelNO.ArchiveID = Pay.FixedCalculated.ArchiveID AND 
                      Pay.FinalArchiveWithPersonelNO.PersonelNO = Pay.FixedCalculated.PersonelNO ON 
                      Pay.FormsInfo.FormInfoID = Pay.FixedCalculated.SalaryID RIGHT OUTER JOIN
                      Pay.FormsInfo FormsInfo_OfficeCode ON Pay.FixedCalculated.OfficeCode = FormsInfo_OfficeCode.FormInfoID
			-------------------------------edit 14000629
				INNER  JOIN  (SELECT    interdictid, OfficeCode, jobCode, InterdictDate, subcompanyCode, PersonelNo, TaxCalculationType,EmployTypeID,
										SUBSTRING(InterdicStartDate,1,7) AS startmonth,
										SUBSTRING(InterdicEndDate,1,7)   AS endMonth,
										CAST(left(InterdicStartDate, 4) AS int) AS YearID
							  FROM            Pay.Interdicts  
							  ) aaa on aaa.PersonelNo=FixedCalculated.PersonelNo 
								and RTRIM(LTRIM(str(FixedCalculated.YearID)))+'/'+ SUBSTRING(RTRIM(LTRIM(str(100 + FixedCalculated.Mounth))),2,2)  BETWEEN startmonth and aaa.Endmonth
								and aaa.YearID=FixedCalculated.YearID
								And (aaa.YearID between @YearIDFrom  and @YearIDTo   )
            -------------------------------edit 14000629


WHERE     (Pay.FixedCalculated.ShowListKind = 1) OR ((Pay.FixedCalculated.ShowListKind = 2) OR ((Pay.FixedCalculated.ShowListKind = 11)
and (Pay.FixedCalculated.bedbes = 2)))
And (FixedCalculated.LabelID between @LabelIDFrom  and @LabelIDTo   )
			  And (FixedCalculated.YearID between @YearIDFrom  and @YearIDTo   )

AND RTRIM(LTRIM(str(FixedCalculated.YearID)))+'/'+ SUBSTRING(RTRIM(LTRIM(str(100 + FixedCalculated.Mounth))),2,2)  BETWEEN startmonth and aaa.Endmonth
--AND (FixedCalculated.ArchiveID BETWEEN @ArchiveIDFrom AND @ArchiveIDTo )



group by Pay.FixedCalculated.PersonelNO,Pay.FixedCalculated.ProjectID,FormsInfo_OfficeCode.InfoID,
                   Pay.FixedCalculated.Mounth,Pay.FixedCalculated.ArchiveDate,Pay.FixedCalculated.ArchiveID
                 

----------------------------پايان خالص پرداختي  -------------------------------
UNION ALL

-------------------------------در خالص------پایان  پاداش مستقل از حقوق  ------------------------------------------------
SELECT      9 AS ShowColumn, Bonus.PersonelNo, ProjectID, OfficeID, 0 AS SalaryID,ABS(SUBSTRING(EndDate,6,2)) AS Mounth,
          ISNULL(BonusPayAble, 0) AS BonusPayAble,
	 EndDate,0 as ArchiveID,  'خالص پرداختي ' AS InfoName_L1,     'payable Salary ' AS InfoName_L2
FROM      (SELECT        Pay.PersonelDecExt.PersonelNo, Pay.PersonelDecExt.EndDate ,  
                                   ROUND(SUM(ISNULL(PersonelDecExt.EmployeeAmount, 0)), 0) AS BonusPrise, ROUND(SUM(PersonelDecExt.PaymentLoan), 0) AS TaxPrice, 
                                   ROUND(SUM(PersonelDecExt.EmployeeAmount - Pay.PersonelDecExt.PaymentLoan), 0) AS BonusPayAble
, FormsInfo_Project.InfoID AS ProjectID, FormsInfo_Office.InfoID AS OfficeID
                                FROM Pay.PersonelDecExt INNER JOIN
                                     Pay.PersonelInfo ON Pay.PersonelDecExt.PersonelNo = Pay.PersonelInfo.PersonelNo LEFT OUTER JOIN
                          Pay.FormsInfo AS FormsInfo_Office ON Pay.PersonelDecExt.OfficeCode = FormsInfo_Office.FormInfoID LEFT OUTER JOIN
                          Pay.FormsInfo AS FormsInfo_Project ON Pay.PersonelDecExt.FormInfoID2 = FormsInfo_Project.FormInfoID INNER JOIN
                                                     Pay.FormsInfo AS FormsInfo_1 ON Pay.PersonelDecExt.FormInfoID = FormsInfo_1.FormInfoID
INNER JOIN (SELECT        InterdictID, InterdictNo, InterdictDate, subcompanyCode, PersonelNo, 
											  EmployTypeID, CAST(RIGHT(LEFT(InterdicStartDate,7), 2) AS int) AS startmonth, CAST(RIGHT(LEFT(InterdicEndDate,7), 2) AS int) AS endMonth,
											   CAST(left(InterdicStartDate, 4) AS int) AS YearID
					FROM            Pay.Interdicts  
					
					--where EmployTypeID  IN (SELECT part FROM Pay.SplitString(@EmployTypeIDs,','))
                    WHERE exists( Select part From Pay.SplitString(@EmployTypeIDs,',') where part = EmployTypeID)					
					)aaa on aaa.PersonelNo=PersonelDecExt.PersonelNO and Pay.PersonelDecExt.YearID=aaa.YearID
					and (CAST(LEFT(RIGHT(PersonelDecExt.Enddate,5),2) AS int)) >= aaa.startmonth 
					and (CAST(LEFT(RIGHT(PersonelDecExt.Enddate,5),2) AS int)) <= aaa.Endmonth
CROSS JOIN Pay.Config as C
                                WHERE  (C.ActRewardInlistSalary in(1,2))AND    (FormsInfo_1.FormType = 111 ) AND   (FormsInfo_1.InfoID = 1) 
								  AND NOT(PersonelDecExt.EndDate IS NULL OR Pay.PersonelDecExt.EndDate = '        ' )
									  And (PersonelDecExt.YearID between @YearIDFrom  and @YearIDTo   )
                                GROUP BY Pay.PersonelDecExt.PersonelNo, Pay.PersonelDecExt.EndDate  
								, FormsInfo_Project.InfoID , FormsInfo_Office.InfoID ) AS 
								Bonus  
-------------------------------------پایان  پاداش مستقل از حقوق  ------------------------------------------------




-------------------------------------شروع عیدی پرداختي ------------------------------------------------
UNION ALL

SELECT      10 AS ShowColumn, Bonus.PersonelNo, ProjectID, OfficeID, 0 AS SalaryID,ABS(SUBSTRING(EndDate,6,2)) AS Mounth,
          ISNULL(BonusPrise, 0) AS BonusPayAble,
	 EndDate,0 as ArchiveID,  'عیدی' AS InfoName_L1,     'BonusPayAble' AS InfoName_L2
FROM      (SELECT        Pay.PersonelDecExt.PersonelNo, Pay.PersonelDecExt.EndDate ,  
                                   ROUND(SUM(ISNULL(PersonelDecExt.EmployeeAmount, 0)), 0) AS BonusPrise, ROUND(SUM(PersonelDecExt.PaymentLoan), 0) AS TaxPrice, 
                                   ROUND(SUM(PersonelDecExt.EmployeeAmount - Pay.PersonelDecExt.PaymentLoan), 0) AS BonusPayAble
, FormsInfo_Project.InfoID AS ProjectID, FormsInfo_Office.InfoID AS OfficeID
                                FROM Pay.PersonelDecExt INNER JOIN
                                     Pay.PersonelInfo ON Pay.PersonelDecExt.PersonelNo = Pay.PersonelInfo.PersonelNo LEFT OUTER JOIN
                          Pay.FormsInfo AS FormsInfo_Office ON Pay.PersonelDecExt.OfficeCode = FormsInfo_Office.FormInfoID LEFT OUTER JOIN
                          Pay.FormsInfo AS FormsInfo_Project ON Pay.PersonelDecExt.FormInfoID2 = FormsInfo_Project.FormInfoID INNER JOIN
                                                     Pay.FormsInfo AS FormsInfo_1 ON Pay.PersonelDecExt.FormInfoID = FormsInfo_1.FormInfoID
INNER JOIN (SELECT        InterdictID, InterdictNo, InterdictDate, subcompanyCode, PersonelNo, 
											  EmployTypeID, CAST(RIGHT(LEFT(InterdicStartDate,7), 2) AS int) AS startmonth, CAST(RIGHT(LEFT(InterdicEndDate,7), 2) AS int) AS endMonth,
											   CAST(left(InterdicStartDate, 4) AS int) AS YearID
					FROM            Pay.Interdicts  
					
					--where EmployTypeID  IN (SELECT part FROM Pay.SplitString(@EmployTypeIDs,','))
					WHERE exists( Select part From Pay.SplitString(@EmployTypeIDs,',') where part = EmployTypeID)
					)aaa on aaa.PersonelNo=PersonelDecExt.PersonelNO and Pay.PersonelDecExt.YearID=aaa.YearID
					and (CAST(LEFT(RIGHT(PersonelDecExt.Enddate,5),2) AS int)) >= aaa.startmonth 
					and (CAST(LEFT(RIGHT(PersonelDecExt.Enddate,5),2) AS int)) <= aaa.Endmonth

                                WHERE    (FormsInfo_1.FormType<>111) AND   (FormsInfo_1.InfoID = 1) 
								  AND NOT(PersonelDecExt.EndDate IS NULL OR Pay.PersonelDecExt.EndDate = '        ' )
                                GROUP BY Pay.PersonelDecExt.PersonelNo, Pay.PersonelDecExt.EndDate  
								, FormsInfo_Project.InfoID , FormsInfo_Office.InfoID ) AS 
								Bonus  

UNION ALL

SELECT      11 AS ShowColumn, Bonus.PersonelNo, ProjectID, OfficeID, 0 AS SalaryID,ABS(SUBSTRING(EndDate,6,2)) AS Mounth,
          ISNULL(TaxPrice, 0) AS TaxPrice,
	 EndDate,0 as ArchiveID,  'مالیات عیدی' AS InfoName_L1,     'PaymentLoan' AS InfoName_L2
FROM      (SELECT        Pay.PersonelDecExt.PersonelNo, Pay.PersonelDecExt.EndDate ,  
                                   ROUND(SUM(PersonelDecExt.PaymentLoan), 0) AS TaxPrice
, FormsInfo_Project.InfoID AS ProjectID, FormsInfo_Office.InfoID AS OfficeID
                                FROM Pay.PersonelDecExt INNER JOIN
                                     Pay.PersonelInfo ON Pay.PersonelDecExt.PersonelNo = Pay.PersonelInfo.PersonelNo LEFT OUTER JOIN
                          Pay.FormsInfo AS FormsInfo_Office ON Pay.PersonelDecExt.OfficeCode = FormsInfo_Office.FormInfoID LEFT OUTER JOIN
                          Pay.FormsInfo AS FormsInfo_Project ON Pay.PersonelDecExt.FormInfoID2 = FormsInfo_Project.FormInfoID INNER JOIN
                                                     Pay.FormsInfo AS FormsInfo_1 ON Pay.PersonelDecExt.FormInfoID = FormsInfo_1.FormInfoID
		INNER JOIN (SELECT        InterdictID, InterdictNo, InterdictDate, subcompanyCode, PersonelNo, 
											  EmployTypeID, CAST(RIGHT(LEFT(InterdicStartDate,7), 2) AS int) AS startmonth, CAST(RIGHT(LEFT(InterdicEndDate,7), 2) AS int) AS endMonth,
											   CAST(left(InterdicStartDate, 4) AS int) AS YearID
					FROM            Pay.Interdicts  
					
					--where EmployTypeID  IN (SELECT part FROM Pay.SplitString(@EmployTypeIDs,','))
                    WHERE exists( Select part From Pay.SplitString(@EmployTypeIDs,',') where part = EmployTypeID)	

					)aaa on aaa.PersonelNo=PersonelDecExt.PersonelNO and Pay.PersonelDecExt.YearID=aaa.YearID
					and (CAST(LEFT(RIGHT(PersonelDecExt.Enddate,5),2) AS int)) >= aaa.startmonth 
					and (CAST(LEFT(RIGHT(PersonelDecExt.Enddate,5),2) AS int)) <= aaa.Endmonth
                                WHERE     (FormsInfo_1.FormType <> 111 ) AND     (FormsInfo_1.InfoID = 1) 
								  AND NOT(PersonelDecExt.EndDate IS NULL OR Pay.PersonelDecExt.EndDate = '        ' )
                                GROUP BY Pay.PersonelDecExt.PersonelNo, Pay.PersonelDecExt.EndDate  
								, FormsInfo_Project.InfoID , FormsInfo_Office.InfoID ) AS 
								Bonus  

----------------------------پايان عیدی پرداختي  -------------------------------

-------------------------------------شروع سنوات پرداختي ------------------------------------------------
UNION ALL

SELECT      12 AS ShowColumn, Bonus.PersonelNo, ProjectID, OfficeID, 0 AS SalaryID,ABS(SUBSTRING(EndDate,6,2)) AS Mounth,
            ISNULL(EmployerAmount, 0) AS EmployerAmount,
	 EndDate,0 as ArchiveID,  'سنوات' AS InfoName_L1,     '...' AS InfoName_L2
FROM           
                             (SELECT        Pay.PersonelDecExt.PersonelNo, Pay.PersonelDecExt.EndDate ,  
                                   ROUND(SUM(ISNULL(PersonelDecExt.EmployerAmount, 0)), 0) AS EmployerAmount
                               , FormsInfo_Project.InfoID AS ProjectID, FormsInfo_Office.InfoID AS OfficeID
                                FROM Pay.PersonelDecExt INNER JOIN
                                     Pay.PersonelInfo ON Pay.PersonelDecExt.PersonelNo = Pay.PersonelInfo.PersonelNo LEFT OUTER JOIN
                          Pay.FormsInfo AS FormsInfo_Office ON Pay.PersonelDecExt.OfficeCode = FormsInfo_Office.FormInfoID LEFT OUTER JOIN
                          Pay.FormsInfo AS FormsInfo_Project ON Pay.PersonelDecExt.FormInfoID2 = FormsInfo_Project.FormInfoID INNER JOIN
                                                     Pay.FormsInfo AS FormsInfo_1 ON Pay.PersonelDecExt.FormInfoID = FormsInfo_1.FormInfoID
          INNER JOIN (SELECT        InterdictID, InterdictNo, InterdictDate, subcompanyCode, PersonelNo, 
											  EmployTypeID, CAST(RIGHT(LEFT(InterdicStartDate,7), 2) AS int) AS startmonth, CAST(RIGHT(LEFT(InterdicEndDate,7), 2) AS int) AS endMonth,
											   CAST(left(InterdicStartDate, 4) AS int) AS YearID
					FROM            Pay.Interdicts  
					
					--where EmployTypeID  IN (SELECT part FROM Pay.SplitString(@EmployTypeIDs,','))
					WHERE exists( Select part From Pay.SplitString(@EmployTypeIDs,',') where part = EmployTypeID)

					)aaa on aaa.PersonelNo=PersonelDecExt.PersonelNO and Pay.PersonelDecExt.YearID=aaa.YearID
					and (CAST(LEFT(RIGHT(PersonelDecExt.Enddate,5),2) AS int)) >= aaa.startmonth 
					and (CAST(LEFT(RIGHT(PersonelDecExt.Enddate,5),2) AS int)) <= aaa.Endmonth

                                WHERE        (FormsInfo_1.InfoID = 1) AND NOT(PersonelDecExt.EndDate IS NULL OR
                                                         Pay.PersonelDecExt.EndDate = '        ' )


                                GROUP BY Pay.PersonelDecExt.PersonelNo, Pay.PersonelDecExt.EndDate  
								, FormsInfo_Project.InfoID , FormsInfo_Office.InfoID ) AS 
								Bonus  

----------------------------پايان سنوات پرداختي  -------------------------------

-------------------------------------شروع مبلغ مرخصی استفاده نشده ------------------------------------------------
UNION ALL

SELECT 13 AS ShowColumn, Pony.PersonelNo,0 AS ProjectID,FormsInfoOffice.InfoID AS  OfficeID, 0 AS SalaryID
  ,ABS(SUBSTRING(AdjustDate,6,2)) AS Mounth,  ISNULL(UselessLeavePay, 0) AS EmployerAmount,
	    AdjustDate,0 as ArchiveID,  'مبلغ مرخصی استفاده نشده' AS InfoName_L1,     '...' AS InfoName_L2

FROM Pony INNER JOIN Pay.Interdicts ON Pony.PersonelNo = Pay.Interdicts.PersonelNo  LEFT OUTER JOIN
	 Pay.FormsInfo AS FormsInfoOffice ON Pay.Interdicts.OfficeCode = FormsInfoOffice.FormInfoID
WHERE   (Interdicts.State < 50) 
--and Pay.Interdicts.EmployTypeID  IN (SELECT part FROM Pay.SplitString(@EmployTypeIDs,','))
and exists( Select part From Pay.SplitString(@EmployTypeIDs,',') where part = EmployTypeID)



-------------------------------------پايان مبلغ مرخصی استفاده نشده ------------------------------------------------
-------------------------------------شروع پاداش مستقل از حقوق  ------------------------------------------------
UNION ALL

SELECT      14 AS ShowColumn, Bonus.PersonelNo, ProjectID, OfficeID, 0 AS SalaryID,ABS(SUBSTRING(EndDate,6,2)) AS Mounth,
          ISNULL(BonusPrise, 0) AS BonusPayAble,
	 EndDate,0 as ArchiveID,  'پاداش' AS InfoName_L1,     'Reward' AS InfoName_L2
FROM      (SELECT        Pay.PersonelDecExt.PersonelNo, Pay.PersonelDecExt.EndDate ,  
                                   ROUND(SUM(ISNULL(PersonelDecExt.EmployeeAmount, 0)), 0) AS BonusPrise, ROUND(SUM(PersonelDecExt.PaymentLoan), 0) AS TaxPrice, 
                                   ROUND(SUM(PersonelDecExt.EmployeeAmount - Pay.PersonelDecExt.PaymentLoan), 0) AS BonusPayAble
, FormsInfo_Project.InfoID AS ProjectID, FormsInfo_Office.InfoID AS OfficeID
                                FROM Pay.PersonelDecExt INNER JOIN
                                     Pay.PersonelInfo ON Pay.PersonelDecExt.PersonelNo = Pay.PersonelInfo.PersonelNo LEFT OUTER JOIN
                          Pay.FormsInfo AS FormsInfo_Office ON Pay.PersonelDecExt.OfficeCode = FormsInfo_Office.FormInfoID LEFT OUTER JOIN
                          Pay.FormsInfo AS FormsInfo_Project ON Pay.PersonelDecExt.FormInfoID2 = FormsInfo_Project.FormInfoID INNER JOIN
                                                     Pay.FormsInfo AS FormsInfo_1 ON Pay.PersonelDecExt.FormInfoID = FormsInfo_1.FormInfoID
INNER JOIN (SELECT        InterdictID, InterdictNo, InterdictDate, subcompanyCode, PersonelNo, 
											  EmployTypeID, CAST(RIGHT(LEFT(InterdicStartDate,7), 2) AS int) AS startmonth, CAST(RIGHT(LEFT(InterdicEndDate,7), 2) AS int) AS endMonth,
											   CAST(left(InterdicStartDate, 4) AS int) AS YearID
					FROM            Pay.Interdicts  
					
					--where EmployTypeID  IN (SELECT part FROM Pay.SplitString(@EmployTypeIDs,','))
					WHERE exists( Select part From Pay.SplitString(@EmployTypeIDs,',') where part = EmployTypeID)
					
					)aaa on aaa.PersonelNo=PersonelDecExt.PersonelNO and Pay.PersonelDecExt.YearID=aaa.YearID
					and (CAST(LEFT(RIGHT(PersonelDecExt.Enddate,5),2) AS int)) >= aaa.startmonth 
					and (CAST(LEFT(RIGHT(PersonelDecExt.Enddate,5),2) AS int)) <= aaa.Endmonth
CROSS JOIN Pay.Config as C
                                WHERE  (C.ActRewardInlistSalary in(1,2))AND    (FormsInfo_1.FormType = 111 ) AND   (FormsInfo_1.InfoID = 1) 
								  AND NOT(PersonelDecExt.EndDate IS NULL OR Pay.PersonelDecExt.EndDate = '        ' )
                                GROUP BY Pay.PersonelDecExt.PersonelNo, Pay.PersonelDecExt.EndDate  
								, FormsInfo_Project.InfoID , FormsInfo_Office.InfoID ) AS 
								Bonus  
-------------------------------------پایان  پاداش مستقل از حقوق  ------------------------------------------------

UNION ALL

-------------------------------------شروع  مالیات پاداش مستقل از حقوق  ------------------------------------------------
SELECT      15 AS ShowColumn, Bonus.PersonelNo, ProjectID, OfficeID, 0 AS SalaryID,ABS(SUBSTRING(EndDate,6,2)) AS Mounth,
          ISNULL(TaxPrice, 0) AS TaxPrice,
	 EndDate,0 as ArchiveID,  'مالیات' AS InfoName_L1,     'Tax' AS InfoName_L2
FROM      (SELECT        Pay.PersonelDecExt.PersonelNo, Pay.PersonelDecExt.EndDate ,  
                                   ROUND(SUM(PersonelDecExt.PaymentLoan), 0) AS TaxPrice
, FormsInfo_Project.InfoID AS ProjectID, FormsInfo_Office.InfoID AS OfficeID
                                FROM Pay.PersonelDecExt INNER JOIN
                                     Pay.PersonelInfo ON Pay.PersonelDecExt.PersonelNo = Pay.PersonelInfo.PersonelNo LEFT OUTER JOIN
                          Pay.FormsInfo AS FormsInfo_Office ON Pay.PersonelDecExt.OfficeCode = FormsInfo_Office.FormInfoID LEFT OUTER JOIN
                          Pay.FormsInfo AS FormsInfo_Project ON Pay.PersonelDecExt.FormInfoID2 = FormsInfo_Project.FormInfoID INNER JOIN
                                                     Pay.FormsInfo AS FormsInfo_1 ON Pay.PersonelDecExt.FormInfoID = FormsInfo_1.FormInfoID
		INNER JOIN (SELECT        InterdictID, InterdictNo, InterdictDate, subcompanyCode, PersonelNo, 
											  EmployTypeID, CAST(RIGHT(LEFT(InterdicStartDate,7), 2) AS int) AS startmonth, CAST(RIGHT(LEFT(InterdicEndDate,7), 2) AS int) AS endMonth,
											   CAST(left(InterdicStartDate, 4) AS int) AS YearID
					FROM            Pay.Interdicts  
					
					--where EmployTypeID  IN (SELECT part FROM Pay.SplitString(@EmployTypeIDs,','))
					WHERE exists( Select part From Pay.SplitString(@EmployTypeIDs,',') where part = EmployTypeID)
					
					)aaa on aaa.PersonelNo=PersonelDecExt.PersonelNO and Pay.PersonelDecExt.YearID=aaa.YearID
					and (CAST(LEFT(RIGHT(PersonelDecExt.Enddate,5),2) AS int)) >= aaa.startmonth 
					and (CAST(LEFT(RIGHT(PersonelDecExt.Enddate,5),2) AS int)) <= aaa.Endmonth
CROSS JOIN Pay.Config as C
                                WHERE  (C.ActRewardInlistSalary in(1,2))AND      (FormsInfo_1.FormType = 111 ) AND     (FormsInfo_1.InfoID = 1) 
								  AND NOT(PersonelDecExt.EndDate IS NULL OR Pay.PersonelDecExt.EndDate = '        ' )
                                GROUP BY Pay.PersonelDecExt.PersonelNo, Pay.PersonelDecExt.EndDate  
								, FormsInfo_Project.InfoID , FormsInfo_Office.InfoID ) AS 
								Bonus  

-------------------------------------پایان  مالیات پاداش مستقل از حقوق  ------------------------------------------------


-------------------------------------شروع مرخصی سالیانه ------------------------------------------------
UNION ALL

SELECT      16 AS ShowColumn, Bonus.PersonelNo, ProjectID, OfficeID, 0 AS SalaryID,ABS(SUBSTRING(EndDate,6,2)) AS Mounth,
            ISNULL(leavePrice, 0) AS leavePrice,
	 EndDate,0 as ArchiveID,  'مرخصی سالیانه' AS InfoName_L1,     '...' AS InfoName_L2
FROM           
                             (SELECT        Pay.PersonelDecExt.PersonelNo, Pay.PersonelDecExt.EndDate ,  
                                   ROUND(SUM(ISNULL(PersonelDecExt.leavePrice, 0)), 0) AS leavePrice
                               , FormsInfo_Project.InfoID AS ProjectID, FormsInfo_Office.InfoID AS OfficeID
                                FROM Pay.PersonelDecExt INNER JOIN
                                     Pay.PersonelInfo ON Pay.PersonelDecExt.PersonelNo = Pay.PersonelInfo.PersonelNo LEFT OUTER JOIN
                          Pay.FormsInfo AS FormsInfo_Office ON Pay.PersonelDecExt.OfficeCode = FormsInfo_Office.FormInfoID LEFT OUTER JOIN
                          Pay.FormsInfo AS FormsInfo_Project ON Pay.PersonelDecExt.FormInfoID2 = FormsInfo_Project.FormInfoID INNER JOIN
                                                     Pay.FormsInfo AS FormsInfo_1 ON Pay.PersonelDecExt.FormInfoID = FormsInfo_1.FormInfoID
          INNER JOIN (SELECT        InterdictID, InterdictNo, InterdictDate, subcompanyCode, PersonelNo, 
											  EmployTypeID, CAST(RIGHT(LEFT(InterdicStartDate,7), 2) AS int) AS startmonth
											  , CAST(RIGHT(LEFT(InterdicEndDate,7), 2) AS int) AS endMonth,
											   CAST(left(InterdicStartDate, 4) AS int) AS YearID
					FROM            Pay.Interdicts  
					
					--where EmployTypeID  IN (SELECT part FROM Pay.SplitString(@EmployTypeIDs,','))
                    WHERE exists( Select part From Pay.SplitString(@EmployTypeIDs,',') where part = EmployTypeID)
					
					)aaa on aaa.PersonelNo=PersonelDecExt.PersonelNO and Pay.PersonelDecExt.YearID=aaa.YearID
					and (CAST(LEFT(RIGHT(PersonelDecExt.Enddate,5),2) AS int)) >= aaa.startmonth 
					and (CAST(LEFT(RIGHT(PersonelDecExt.Enddate,5),2) AS int)) <= aaa.Endmonth

                                WHERE        (FormsInfo_1.InfoID = 1) AND NOT(PersonelDecExt.EndDate IS NULL OR
                                                         Pay.PersonelDecExt.EndDate = '        ' )


                                GROUP BY Pay.PersonelDecExt.PersonelNo, Pay.PersonelDecExt.EndDate  
								, FormsInfo_Project.InfoID , FormsInfo_Office.InfoID ) AS 
								Bonus  

----------------------------پايان مرخصی سالیانه   -------------------------------



)

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO
CREATE FUNCTION Pay.RptComprasionSub(@ArchiveIDFrom int=0 , @ArchiveIDTo int=0 ,@MounthFrom Tinyint=1, @MounthTo Tinyint=12
,@EmployTypeIDs varchar(800) ,@LabelIDFrom  int=0,@LabelIDTo  int=0 ,@YearIDFrom  int=1402,@YearIDTo  int=1402)  
RETURNS  table  AS 
return  (
----------------مزايا -------------------------
----------------مزايا -------------------------
SELECT    1 AS ShowColumn,Pay.FixedCalculated.PersonelNO,Pay.FixedCalculated.ProjectID,FormsInfo_OfficeCode.InfoID AS OfficeCode,Pay.FixedCalculated.SalaryID,
                      Pay.FixedCalculated.Mounth,Pay.FixedCalculated.Price AS Price,Pay.FixedCalculated.ArchiveDate,Pay.FixedCalculated.ArchiveID,FormsInfo.InfoName_L1,
                      Pay.FormsInfo.InfoName_L2
--FROM         Pay.FormsInfo RIGHT OUTER JOIN
--                      Pay.FinalArchiveWithPersonelNO INNER JOIN
--                      Pay.FixedCalculated ON Pay.FinalArchiveWithPersonelNO.Mounth = Pay.FixedCalculated.Mounth AND 
--                      Pay.FinalArchiveWithPersonelNO.YearID = Pay.FixedCalculated.YearID AND 
--                      Pay.FinalArchiveWithPersonelNO.ArchiveID = Pay.FixedCalculated.ArchiveID AND 
--                      Pay.FinalArchiveWithPersonelNO.PersonelNO = Pay.FixedCalculated.PersonelNO ON 
--                      Pay.FormsInfo.FormInfoID = Pay.FixedCalculated.SalaryID RIGHT OUTER JOIN
--                      Pay.FormsInfo FormsInfo_OfficeCode ON Pay.FixedCalculated.OfficeCode = FormsInfo_OfficeCode.FormInfoID
--WHERE     (Pay.FixedCalculated.ShowListKind = 1)
FROM             Pay.FormsInfo RIGHT OUTER JOIN
				Pay.FixedCalculated ON Pay.FormsInfo.FormInfoID = FixedCalculated.SalaryID RIGHT OUTER JOIN
                 Pay.FormsInfo AS FormsInfo_OfficeCode ON FixedCalculated.OfficeCode = FormsInfo_OfficeCode.FormInfoID
			-------------------------------edit 980913
				INNER  JOIN  (SELECT    interdictid, OfficeCode, jobCode, InterdictDate, subcompanyCode, PersonelNo, TaxCalculationType,EmployTypeID,
										SUBSTRING(InterdicStartDate,1,7) AS startmonth,
										SUBSTRING(InterdicEndDate,1,7)   AS endMonth,
										CAST(left(InterdicStartDate, 4) AS int) AS YearID
							  FROM            Pay.Interdicts  
							  ) aaa on aaa.PersonelNo=FixedCalculated.PersonelNo 
								and RTRIM(LTRIM(str(FixedCalculated.YearID)))+'/'+ SUBSTRING(RTRIM(LTRIM(str(100 + FixedCalculated.Mounth))),2,2)  BETWEEN startmonth and aaa.Endmonth
								and aaa.YearID=FixedCalculated.YearID
            -------------------------------edit 980913
	
WHERE     (Pay.FixedCalculated.ShowListKind = 1)
AND (FixedCalculated.ArchiveID BETWEEN @ArchiveIDFrom AND @ArchiveIDTo )
And (FixedCalculated.LabelID between @LabelIDFrom  and @LabelIDTo   )
			  And (FixedCalculated.YearID between @YearIDFrom  and @YearIDTo   )
--AND (FixedCalculated.Mounth BETWEEN @MounthFrom AND @MounthTo )
--and aaa.EmployTypeID  IN (SELECT part FROM Pay.SplitString(@EmployTypeIDs,','))
and exists( Select part From Pay.SplitString(@EmployTypeIDs,',') where part = aaa.EmployTypeID)
AND RTRIM(LTRIM(str(FixedCalculated.YearID)))+'/'+ SUBSTRING(RTRIM(LTRIM(str(100 + FixedCalculated.Mounth))),2,2)  BETWEEN startmonth and aaa.Endmonth


-----------پايان مزايا -----------
union all
----------------جمع حقوق و مزايا ------------------
SELECT    2 AS ShowColumn,Pay.FixedCalculated.PersonelNO,Pay.FixedCalculated.ProjectID,FormsInfo_OfficeCode.InfoID AS OfficeCode,0 AS SalaryID,
                      Pay.FixedCalculated.Mounth,SUM(Pay.FixedCalculated.Price) AS Price,Pay.FixedCalculated.ArchiveDate,
					  Pay.FixedCalculated.ArchiveID,'جمع حقوق و مزايا ' AS InfoName_L1,
                      'Total Wage ' AS InfoName_L2
--FROM         Pay.FormsInfo RIGHT OUTER JOIN
--                      Pay.FinalArchiveWithPersonelNO INNER JOIN
--                      Pay.FixedCalculated ON Pay.FinalArchiveWithPersonelNO.Mounth = Pay.FixedCalculated.Mounth AND 
--                      Pay.FinalArchiveWithPersonelNO.YearID = Pay.FixedCalculated.YearID AND 
--                      Pay.FinalArchiveWithPersonelNO.ArchiveID = Pay.FixedCalculated.ArchiveID AND 
--                      Pay.FinalArchiveWithPersonelNO.PersonelNO = Pay.FixedCalculated.PersonelNO ON 
--                      Pay.FormsInfo.FormInfoID = Pay.FixedCalculated.SalaryID  RIGHT OUTER JOIN
--                      Pay.FormsInfo FormsInfo_OfficeCode ON Pay.FixedCalculated.OfficeCode = FormsInfo_OfficeCode.FormInfoID
FROM             Pay.FormsInfo RIGHT OUTER JOIN
				Pay.FixedCalculated ON Pay.FormsInfo.FormInfoID = FixedCalculated.SalaryID RIGHT OUTER JOIN
				 Pay.FormsInfo AS FormsInfo_OfficeCode ON FixedCalculated.OfficeCode = FormsInfo_OfficeCode.FormInfoID
			-------------------------------edit 980913
				INNER  JOIN  (SELECT    interdictid, OfficeCode, jobCode, InterdictDate, subcompanyCode, PersonelNo, TaxCalculationType,EmployTypeID,
										SUBSTRING(InterdicStartDate,1,7) AS startmonth,
										SUBSTRING(InterdicEndDate,1,7)   AS endMonth,
										CAST(left(InterdicStartDate, 4) AS int) AS YearID
							  FROM            Pay.Interdicts  
							  ) aaa on aaa.PersonelNo=FixedCalculated.PersonelNo 
								and RTRIM(LTRIM(str(FixedCalculated.YearID)))+'/'+ SUBSTRING(RTRIM(LTRIM(str(100 + FixedCalculated.Mounth))),2,2)  BETWEEN startmonth and aaa.Endmonth
								and aaa.YearID=FixedCalculated.YearID
            -------------------------------edit 980913
WHERE     (Pay.FixedCalculated.ShowListKind = 1) 
AND (FixedCalculated.ArchiveID BETWEEN @ArchiveIDFrom AND @ArchiveIDTo )
And (FixedCalculated.LabelID between @LabelIDFrom  and @LabelIDTo   )
			  And (FixedCalculated.YearID between @YearIDFrom  and @YearIDTo   )
--AND (FixedCalculated.Mounth BETWEEN @MounthFrom AND @MounthTo )
--and aaa.EmployTypeID  IN (SELECT part FROM Pay.SplitString(@EmployTypeIDs,','))
and exists( Select part From Pay.SplitString(@EmployTypeIDs,',') where part = aaa.EmployTypeID)
AND RTRIM(LTRIM(str(FixedCalculated.YearID)))+'/'+ SUBSTRING(RTRIM(LTRIM(str(100 + FixedCalculated.Mounth))),2,2)  BETWEEN aaa.startmonth and aaa.Endmonth

group by Pay.FixedCalculated.PersonelNO,Pay.FixedCalculated.ProjectID,FormsInfo_OfficeCode.InfoID,
                      Pay.FixedCalculated.Mounth,Pay.FixedCalculated.ArchiveDate,Pay.FixedCalculated.ArchiveID
----------------جمع حقوق و مزايا ------------------
union all
-----------
SELECT  distinct   3 AS ShowColumn,Pay.FixedCalculated.PersonelNO,Pay.FixedCalculated.ProjectID,FormsInfo_OfficeCode.InfoID AS OfficeCode,Pay.FixedCalculated.SalaryID,
                      Pay.FixedCalculated.Mounth,
					  CASE WHEN SUM(case when ((CalCulateKind=10) and (ShowlistKind =2)) then price else 0 end )<>0 
                           THEN SUM( case ShowlistKind when 3  then price else 0 end ) ELSE 0 END as Price					  
					  ,Pay.FixedCalculated.ArchiveDate,Pay.FixedCalculated.ArchiveID,'مشمول بيمه ' AS InfoName_L1,
                      'Contain Insourance ' AS InfoName_L2
--FROM         Pay.FormsInfo RIGHT OUTER JOIN
--                      Pay.FinalArchiveWithPersonelNO INNER JOIN
--                      Pay.FixedCalculated ON Pay.FinalArchiveWithPersonelNO.Mounth = Pay.FixedCalculated.Mounth AND 
--                      Pay.FinalArchiveWithPersonelNO.ArchiveID = Pay.FixedCalculated.ArchiveID AND                        Pay.FinalArchiveWithPersonelNO.YearID = Pay.FixedCalculated.YearID AND 

--                      Pay.FinalArchiveWithPersonelNO.PersonelNO = Pay.FixedCalculated.PersonelNO ON 
--                      Pay.FormsInfo.FormInfoID = Pay.FixedCalculated.SalaryID  RIGHT OUTER JOIN
--                      Pay.FormsInfo FormsInfo_OfficeCode ON Pay.FixedCalculated.OfficeCode = FormsInfo_OfficeCode.FormInfoID
FROM             Pay.FormsInfo RIGHT OUTER JOIN
                         Pay.FixedCalculated ON Pay.FormsInfo.FormInfoID = FixedCalculated.SalaryID RIGHT OUTER JOIN
                          Pay.FormsInfo AS FormsInfo_OfficeCode ON FixedCalculated.OfficeCode = FormsInfo_OfficeCode.FormInfoID
			-------------------------------edit 980913
				INNER  JOIN  (SELECT    interdictid, OfficeCode, jobCode, InterdictDate, subcompanyCode, PersonelNo, TaxCalculationType,EmployTypeID,
										SUBSTRING(InterdicStartDate,1,7) AS startmonth,
										SUBSTRING(InterdicEndDate,1,7)   AS endMonth,
										CAST(left(InterdicStartDate, 4) AS int) AS YearID
							  FROM            Pay.Interdicts  
							  ) aaa on aaa.PersonelNo=FixedCalculated.PersonelNo 
								and RTRIM(LTRIM(str(FixedCalculated.YearID)))+'/'+ SUBSTRING(RTRIM(LTRIM(str(100 + FixedCalculated.Mounth))),2,2)  BETWEEN startmonth and aaa.Endmonth
								and aaa.YearID=FixedCalculated.YearID
            -------------------------------edit 980913
WHERE  (FixedCalculated.ArchiveID BETWEEN @ArchiveIDFrom AND @ArchiveIDTo )
And (FixedCalculated.LabelID between @LabelIDFrom  and @LabelIDTo   )
			  And (FixedCalculated.YearID between @YearIDFrom  and @YearIDTo   )
--AND (FixedCalculated.Mounth BETWEEN @MounthFrom AND @MounthTo )
--and aaa.EmployTypeID  IN (SELECT part FROM Pay.SplitString(@EmployTypeIDs,','))
and exists( Select part From Pay.SplitString(@EmployTypeIDs,',') where part = aaa.EmployTypeID)
AND RTRIM(LTRIM(str(FixedCalculated.YearID)))+'/'+ SUBSTRING(RTRIM(LTRIM(str(100 + FixedCalculated.Mounth))),2,2)  BETWEEN aaa.startmonth and aaa.Endmonth

 GROUP BY Pay.FixedCalculated.PersonelNO,Pay.FixedCalculated.ProjectID,FormsInfo_OfficeCode.InfoID ,Pay.FixedCalculated.SalaryID,
                      Pay.FixedCalculated.Mounth,Pay.FixedCalculated.ArchiveDate,Pay.FixedCalculated.ArchiveID
HAVING        (CASE WHEN SUM(CASE WHEN ((CalCulateKind = 10) AND (ShowlistKind = 2)) THEN price ELSE 0 END) 
                         <> 0 THEN SUM(CASE ShowlistKind WHEN 3 THEN price ELSE 0 END) ELSE 0 END <> 0)
-----------
union all
------------------------------شروع ماليات ---------------------------------------
SELECT    4 AS ShowColumn,Pay.FixedCalculated.PersonelNO,Pay.FixedCalculated.ProjectID,FormsInfo_OfficeCode.InfoID AS OfficeCode,Pay.FixedCalculated.SalaryID,
                      Pay.FixedCalculated.Mounth,Pay.FixedCalculated.Price,Pay.FixedCalculated.ArchiveDate,Pay.FixedCalculated.ArchiveID,'مشمول ماليات ' AS InfoName_L1,
                      'Tax Insourance ' AS InfoName_L2
--FROM         Pay.FormsInfo RIGHT OUTER JOIN
--                      Pay.FinalArchiveWithPersonelNO INNER JOIN
--                      Pay.FixedCalculated ON Pay.FinalArchiveWithPersonelNO.Mounth = Pay.FixedCalculated.Mounth AND 
--                      Pay.FinalArchiveWithPersonelNO.ArchiveID = Pay.FixedCalculated.ArchiveID AND                       Pay.FinalArchiveWithPersonelNO.YearID = Pay.FixedCalculated.YearID AND 

--                      Pay.FinalArchiveWithPersonelNO.PersonelNO = Pay.FixedCalculated.PersonelNO ON 
--                      Pay.FormsInfo.FormInfoID = Pay.FixedCalculated.SalaryID RIGHT OUTER JOIN
--                      Pay.FormsInfo FormsInfo_OfficeCode ON Pay.FixedCalculated.OfficeCode = FormsInfo_OfficeCode.FormInfoID
FROM             Pay.FormsInfo RIGHT OUTER JOIN
				Pay.FixedCalculated ON Pay.FormsInfo.FormInfoID = FixedCalculated.SalaryID RIGHT OUTER JOIN
				 Pay.FormsInfo AS FormsInfo_OfficeCode ON FixedCalculated.OfficeCode = FormsInfo_OfficeCode.FormInfoID
			-------------------------------edit 980913
				INNER  JOIN  (SELECT    interdictid, OfficeCode, jobCode, InterdictDate, subcompanyCode, PersonelNo, TaxCalculationType,EmployTypeID,
										SUBSTRING(InterdicStartDate,1,7) AS startmonth,
										SUBSTRING(InterdicEndDate,1,7)   AS endMonth,
										CAST(left(InterdicStartDate, 4) AS int) AS YearID
							  FROM            Pay.Interdicts  
							  ) aaa on aaa.PersonelNo=FixedCalculated.PersonelNo 
								and RTRIM(LTRIM(str(FixedCalculated.YearID)))+'/'+ SUBSTRING(RTRIM(LTRIM(str(100 + FixedCalculated.Mounth))),2,2)  BETWEEN startmonth and aaa.Endmonth
								and aaa.YearID=FixedCalculated.YearID
            -------------------------------edit 980913
WHERE     (Pay.FixedCalculated.ShowListKind = 11)  and (Pay.FixedCalculated.bedbes = 0) and (Pay.FixedCalculated.CalCulateKind=12) 
AND (FixedCalculated.ArchiveID BETWEEN @ArchiveIDFrom AND @ArchiveIDTo )
And (FixedCalculated.LabelID between @LabelIDFrom  and @LabelIDTo   )
			  And (FixedCalculated.YearID between @YearIDFrom  and @YearIDTo   )
--AND (FixedCalculated.Mounth BETWEEN @MounthFrom AND @MounthTo )
--and aaa.EmployTypeID  IN (SELECT part FROM Pay.SplitString(@EmployTypeIDs,','))
and exists( Select part From Pay.SplitString(@EmployTypeIDs,',') where part = aaa.EmployTypeID)
AND RTRIM(LTRIM(str(FixedCalculated.YearID)))+'/'+ SUBSTRING(RTRIM(LTRIM(str(100 + FixedCalculated.Mounth))),2,2)  BETWEEN startmonth and aaa.Endmonth



--------------------------------------پايان مشمول ماليات ---------------------
union all
--------------------------------------ماليات ---------------------
SELECT    5 AS ShowColumn,Pay.FixedCalculated.PersonelNO,Pay.FixedCalculated.ProjectID,FormsInfo_OfficeCode.InfoID AS OfficeCode,Pay.FixedCalculated.SalaryID,
                      Pay.FixedCalculated.Mounth,Pay.FixedCalculated.Price,Pay.FixedCalculated.ArchiveDate,Pay.FixedCalculated.ArchiveID,'ماليات ' AS InfoName_L1,
                      'Tax' AS InfoName_L2
--FROM         Pay.FormsInfo RIGHT OUTER JOIN
--                      Pay.FinalArchiveWithPersonelNO INNER JOIN
--                      Pay.FixedCalculated ON Pay.FinalArchiveWithPersonelNO.Mounth = Pay.FixedCalculated.Mounth AND 
--                      Pay.FinalArchiveWithPersonelNO.ArchiveID = Pay.FixedCalculated.ArchiveID AND                       Pay.FinalArchiveWithPersonelNO.YearID = Pay.FixedCalculated.YearID AND 

--                      Pay.FinalArchiveWithPersonelNO.PersonelNO = Pay.FixedCalculated.PersonelNO ON 
--                      Pay.FormsInfo.FormInfoID = Pay.FixedCalculated.SalaryID RIGHT OUTER JOIN
--                      Pay.FormsInfo FormsInfo_OfficeCode ON Pay.FixedCalculated.OfficeCode = FormsInfo_OfficeCode.FormInfoID
FROM             Pay.FormsInfo RIGHT OUTER JOIN
				Pay.FixedCalculated ON Pay.FormsInfo.FormInfoID = FixedCalculated.SalaryID RIGHT OUTER JOIN
				 Pay.FormsInfo AS FormsInfo_OfficeCode ON FixedCalculated.OfficeCode = FormsInfo_OfficeCode.FormInfoID
			-------------------------------edit 980913
				INNER  JOIN  (SELECT    interdictid, OfficeCode, jobCode, InterdictDate, subcompanyCode, PersonelNo, TaxCalculationType,EmployTypeID,
										SUBSTRING(InterdicStartDate,1,7) AS startmonth,
										SUBSTRING(InterdicEndDate,1,7)   AS endMonth,
										CAST(left(InterdicStartDate, 4) AS int) AS YearID
							  FROM            Pay.Interdicts  
							  ) aaa on aaa.PersonelNo=FixedCalculated.PersonelNo 
								and RTRIM(LTRIM(str(FixedCalculated.YearID)))+'/'+ SUBSTRING(RTRIM(LTRIM(str(100 + FixedCalculated.Mounth))),2,2)  BETWEEN startmonth and aaa.Endmonth
								and aaa.YearID=FixedCalculated.YearID
            -------------------------------edit 980913
WHERE     (Pay.FixedCalculated.ShowListKind = 11)  and (Pay.FixedCalculated.bedbes = 2)
AND (FixedCalculated.ArchiveID BETWEEN @ArchiveIDFrom AND @ArchiveIDTo )
And (FixedCalculated.LabelID between @LabelIDFrom  and @LabelIDTo   )
			  And (FixedCalculated.YearID between @YearIDFrom  and @YearIDTo   )
---AND (FixedCalculated.Mounth BETWEEN @MounthFrom AND @MounthTo )
--and aaa.EmployTypeID  IN (SELECT part FROM Pay.SplitString(@EmployTypeIDs,','))
and exists( Select part From Pay.SplitString(@EmployTypeIDs,',') where part = aaa.EmployTypeID)
AND RTRIM(LTRIM(str(FixedCalculated.YearID)))+'/'+ SUBSTRING(RTRIM(LTRIM(str(100 + FixedCalculated.Mounth))),2,2)  BETWEEN aaa.startmonth and aaa.Endmonth
-----------------------------------پايان ماليات -----------------------
union all
---------------------------شروع كسورات -----------------------------
SELECT    6 AS ShowColumn,Pay.FixedCalculated.PersonelNO,Pay.FixedCalculated.ProjectID,FormsInfo_OfficeCode.InfoID AS OfficeCode,Pay.FixedCalculated.SalaryID,
                      Pay.FixedCalculated.Mounth,Pay.FixedCalculated.Price,Pay.FixedCalculated.ArchiveDate,Pay.FixedCalculated.ArchiveID,FormsInfo.InfoName_L1,
                      Pay.FormsInfo.InfoName_L2
--FROM         Pay.FormsInfo RIGHT OUTER JOIN
--                      Pay.FinalArchiveWithPersonelNO INNER JOIN
--                      Pay.FixedCalculated ON Pay.FinalArchiveWithPersonelNO.Mounth = Pay.FixedCalculated.Mounth AND 
--                      Pay.FinalArchiveWithPersonelNO.ArchiveID = Pay.FixedCalculated.ArchiveID AND                       Pay.FinalArchiveWithPersonelNO.YearID = Pay.FixedCalculated.YearID AND 

--                      Pay.FinalArchiveWithPersonelNO.PersonelNO = Pay.FixedCalculated.PersonelNO ON 
--                      Pay.FormsInfo.FormInfoID = Pay.FixedCalculated.SalaryID RIGHT OUTER JOIN
--                      Pay.FormsInfo FormsInfo_OfficeCode ON Pay.FixedCalculated.OfficeCode = FormsInfo_OfficeCode.FormInfoID
FROM             Pay.FormsInfo RIGHT OUTER JOIN
				Pay.FixedCalculated ON Pay.FormsInfo.FormInfoID = FixedCalculated.SalaryID RIGHT OUTER JOIN
				 Pay.FormsInfo AS FormsInfo_OfficeCode ON FixedCalculated.OfficeCode = FormsInfo_OfficeCode.FormInfoID
			-------------------------------edit 980913
				INNER  JOIN  (SELECT    interdictid, OfficeCode, jobCode, InterdictDate, subcompanyCode, PersonelNo, TaxCalculationType,EmployTypeID,
										SUBSTRING(InterdicStartDate,1,7) AS startmonth,
										SUBSTRING(InterdicEndDate,1,7)   AS endMonth,
										CAST(left(InterdicStartDate, 4) AS int) AS YearID
							  FROM            Pay.Interdicts  
							  ) aaa on aaa.PersonelNo=FixedCalculated.PersonelNo 
								and RTRIM(LTRIM(str(FixedCalculated.YearID)))+'/'+ SUBSTRING(RTRIM(LTRIM(str(100 + FixedCalculated.Mounth))),2,2)  BETWEEN startmonth and aaa.Endmonth
								and aaa.YearID=FixedCalculated.YearID
            -------------------------------edit 980913
WHERE     (Pay.FixedCalculated.ShowListKind = 2) 
AND (FixedCalculated.ArchiveID BETWEEN @ArchiveIDFrom AND @ArchiveIDTo )
And (FixedCalculated.LabelID between @LabelIDFrom  and @LabelIDTo   )
			  And (FixedCalculated.YearID between @YearIDFrom  and @YearIDTo   )
--AND (FixedCalculated.Mounth BETWEEN @MounthFrom AND @MounthTo )
--and aaa.EmployTypeID  IN (SELECT part FROM Pay.SplitString(@EmployTypeIDs,','))
and exists( Select part From Pay.SplitString(@EmployTypeIDs,',') where part = aaa.EmployTypeID)

AND RTRIM(LTRIM(str(FixedCalculated.YearID)))+'/'+ SUBSTRING(RTRIM(LTRIM(str(100 + FixedCalculated.Mounth))),2,2)  BETWEEN aaa.startmonth and aaa.Endmonth
------------------------------پايان كسورات -------------------------
union all
----------------------شروع جمع كسورات -----------------------------
SELECT    7 AS ShowColumn,Pay.FixedCalculated.PersonelNO,Pay.FixedCalculated.ProjectID,FormsInfo_OfficeCode.InfoID AS OfficeCode,0 AS SalaryID,
                      Pay.FixedCalculated.Mounth,SUM(Pay.FixedCalculated.Price) AS Price,Pay.FixedCalculated.ArchiveDate,Pay.FixedCalculated.ArchiveID,'جمع كسورات حقوق ' AS InfoName_L1,
                      'Total Desres ' AS InfoName_L2
--FROM         Pay.FormsInfo RIGHT OUTER JOIN
--                      Pay.FinalArchiveWithPersonelNO INNER JOIN
--                      Pay.FixedCalculated ON Pay.FinalArchiveWithPersonelNO.Mounth = Pay.FixedCalculated.Mounth AND                       Pay.FinalArchiveWithPersonelNO.YearID = Pay.FixedCalculated.YearID AND 

--                      Pay.FinalArchiveWithPersonelNO.ArchiveID = Pay.FixedCalculated.ArchiveID AND 
--                      Pay.FinalArchiveWithPersonelNO.PersonelNO = Pay.FixedCalculated.PersonelNO ON 
--                      Pay.FormsInfo.FormInfoID = Pay.FixedCalculated.SalaryID RIGHT OUTER JOIN
--                      Pay.FormsInfo FormsInfo_OfficeCode ON Pay.FixedCalculated.OfficeCode = FormsInfo_OfficeCode.FormInfoID
FROM             Pay.FormsInfo RIGHT OUTER JOIN
                         Pay.FixedCalculated ON Pay.FormsInfo.FormInfoID = FixedCalculated.SalaryID RIGHT OUTER JOIN
                          Pay.FormsInfo AS FormsInfo_OfficeCode ON FixedCalculated.OfficeCode = FormsInfo_OfficeCode.FormInfoID
			-------------------------------edit 980913
				INNER  JOIN  (SELECT    interdictid, OfficeCode, jobCode, InterdictDate, subcompanyCode, PersonelNo, TaxCalculationType,EmployTypeID,
										SUBSTRING(InterdicStartDate,1,7) AS startmonth,
										SUBSTRING(InterdicEndDate,1,7)   AS endMonth,
										CAST(left(InterdicStartDate, 4) AS int) AS YearID
							  FROM            Pay.Interdicts  
							  --where EmployTypeID  IN (SELECT part FROM Pay.SplitString(@EmployTypeIDs,','))
           					  where exists( Select part From Pay.SplitString(@EmployTypeIDs,',') where part = EmployTypeID)
							  ) aaa on aaa.PersonelNo=FixedCalculated.PersonelNo 
								and RTRIM(LTRIM(str(FixedCalculated.YearID)))+'/'+ SUBSTRING(RTRIM(LTRIM(str(100 + FixedCalculated.Mounth))),2,2)  BETWEEN startmonth and aaa.Endmonth
								and aaa.YearID=FixedCalculated.YearID
            -------------------------------edit 980913


WHERE    ( (Pay.FixedCalculated.ShowListKind = 2) OR ((Pay.FixedCalculated.ShowListKind = 11)and (Pay.FixedCalculated.bedbes = 2)))
AND (FixedCalculated.ArchiveID BETWEEN @ArchiveIDFrom AND @ArchiveIDTo )
And (FixedCalculated.LabelID between @LabelIDFrom  and @LabelIDTo   )
			  And (FixedCalculated.YearID between @YearIDFrom  and @YearIDTo   )
--AND (FixedCalculated.Mounth BETWEEN @MounthFrom AND @MounthTo )
AND RTRIM(LTRIM(str(FixedCalculated.YearID)))+'/'+ SUBSTRING(RTRIM(LTRIM(str(100 + FixedCalculated.Mounth))),2,2)  BETWEEN aaa.startmonth and aaa.Endmonth
group by Pay.FixedCalculated.PersonelNO,Pay.FixedCalculated.ProjectID,FormsInfo_OfficeCode.InfoID,
                      Pay.FixedCalculated.Mounth,Pay.FixedCalculated.ArchiveDate,Pay.FixedCalculated.ArchiveID
--having ( (Pay.FixedCalculated.ArchiveID BETWEEN  @ArchiveIDFrom AND @ArchiveIDTo ))                      
-------------------------پايان جمع كسورات ----------------------------
union all
--------------------------شروع حق بيمه سهم كارفرما --------------------------------------
SELECT    8 AS ShowColumn,Pay.FixedCalculated.PersonelNO,Pay.FixedCalculated.ProjectID,FormsInfo_OfficeCode.InfoID AS OfficeCode,0 AS SalaryID,
                      Pay.FixedCalculated.Mounth,SUM(Pay.FixedCalculated.Price) AS Price,Pay.FixedCalculated.ArchiveDate,Pay.FixedCalculated.ArchiveID,'حق بيمه كارفرما ' AS InfoName_L1,
                      'Insourance Emoloyee Share' AS InfoName_L2
--FROM         Pay.FormsInfo RIGHT OUTER JOIN   
--                      Pay.FinalArchiveWithPersonelNO INNER JOIN
--                      Pay.FixedCalculated ON Pay.FinalArchiveWithPersonelNO.Mounth = Pay.FixedCalculated.Mounth AND 
--                      Pay.FinalArchiveWithPersonelNO.ArchiveID = Pay.FixedCalculated.ArchiveID AND 
--                      Pay.FinalArchiveWithPersonelNO.PersonelNO = Pay.FixedCalculated.PersonelNO ON 
--                      Pay.FormsInfo.FormInfoID = Pay.FixedCalculated.SalaryID RIGHT OUTER JOIN
--                      Pay.FormsInfo FormsInfo_OfficeCode ON Pay.FixedCalculated.OfficeCode = FormsInfo_OfficeCode.FormInfoID
FROM             Pay.FormsInfo RIGHT OUTER JOIN
                         Pay.FixedCalculated ON Pay.FormsInfo.FormInfoID = FixedCalculated.SalaryID RIGHT OUTER JOIN
                          Pay.FormsInfo AS FormsInfo_OfficeCode ON FixedCalculated.OfficeCode = FormsInfo_OfficeCode.FormInfoID
			-------------------------------edit 980913
				INNER  JOIN  (SELECT    interdictid, OfficeCode, jobCode, InterdictDate, subcompanyCode, PersonelNo, TaxCalculationType,EmployTypeID,
										SUBSTRING(InterdicStartDate,1,7) AS startmonth,
										SUBSTRING(InterdicEndDate,1,7)   AS endMonth,
										CAST(left(InterdicStartDate, 4) AS int) AS YearID
							  FROM            Pay.Interdicts  
							  --where EmployTypeID  IN (SELECT part FROM Pay.SplitString(@EmployTypeIDs,','))
           					  where exists( Select part From Pay.SplitString(@EmployTypeIDs,',') where part = EmployTypeID)
							  ) aaa on aaa.PersonelNo=FixedCalculated.PersonelNo 
								and RTRIM(LTRIM(str(FixedCalculated.YearID)))+'/'+ SUBSTRING(RTRIM(LTRIM(str(100 + FixedCalculated.Mounth))),2,2)  BETWEEN startmonth and aaa.Endmonth
								and aaa.YearID=FixedCalculated.YearID
            -------------------------------edit 980913
WHERE     (Pay.FixedCalculated.ShowlistKind  in( 4,14 )) AND (CalCulateKind = 10) 
AND (FixedCalculated.ArchiveID BETWEEN @ArchiveIDFrom AND @ArchiveIDTo )
And (FixedCalculated.LabelID between @LabelIDFrom  and @LabelIDTo   )
			  And (FixedCalculated.YearID between @YearIDFrom  and @YearIDTo   )
--AND (FixedCalculated.Mounth BETWEEN @MounthFrom AND @MounthTo )
--and aaa.EmployTypeID  IN (SELECT part FROM Pay.SplitString(@EmployTypeIDs,','))
and exists( Select part From Pay.SplitString(@EmployTypeIDs,',') where part = aaa.EmployTypeID)

AND RTRIM(LTRIM(str(FixedCalculated.YearID)))+'/'+ SUBSTRING(RTRIM(LTRIM(str(100 + FixedCalculated.Mounth))),2,2)  BETWEEN aaa.startmonth and aaa.Endmonth
group by Pay.FixedCalculated.PersonelNO,Pay.FixedCalculated.ProjectID,FormsInfo_OfficeCode.InfoID,
                      Pay.FixedCalculated.Mounth,Pay.FixedCalculated.ArchiveDate,Pay.FixedCalculated.ArchiveID
-----------------------------------------پايان حق بيمه سهم كارفرما -------------------------

union all

-------------------------------------شروع خالص پرداختي ------------------------------------------------
SELECT    9 AS ShowColumn,Pay.FixedCalculated.PersonelNO,Pay.FixedCalculated.ProjectID,FormsInfo_OfficeCode.InfoID AS OfficeCode,0 AS SalaryID,
                      Pay.FixedCalculated.Mounth,SUM(CASE WHEN (Pay.FixedCalculated.ShowListKind = 1) THEN Pay.FixedCalculated.Price ELSE  -Pay.FixedCalculated.Price  END ) AS Price,
					  Pay.FixedCalculated.ArchiveDate,Pay.FixedCalculated.ArchiveID,
		  'خالص پرداختي ' AS InfoName_L1,     'payable Salary ' AS InfoName_L2
--FROM         Pay.FormsInfo RIGHT OUTER JOIN
--                      Pay.FinalArchiveWithPersonelNO INNER JOIN
--                      Pay.FixedCalculated ON Pay.FinalArchiveWithPersonelNO.Mounth = Pay.FixedCalculated.Mounth AND 
--                      Pay.FinalArchiveWithPersonelNO.ArchiveID = Pay.FixedCalculated.ArchiveID AND 
--                      Pay.FinalArchiveWithPersonelNO.PersonelNO = Pay.FixedCalculated.PersonelNO ON 
--                      Pay.FormsInfo.FormInfoID = Pay.FixedCalculated.SalaryID RIGHT OUTER JOIN
--                      Pay.FormsInfo FormsInfo_OfficeCode ON Pay.FixedCalculated.OfficeCode = FormsInfo_OfficeCode.FormInfoID
FROM             Pay.FormsInfo RIGHT OUTER JOIN
                         Pay.FixedCalculated ON Pay.FormsInfo.FormInfoID = FixedCalculated.SalaryID RIGHT OUTER JOIN
                          Pay.FormsInfo AS FormsInfo_OfficeCode ON FixedCalculated.OfficeCode = FormsInfo_OfficeCode.FormInfoID
			-------------------------------edit 980913
				INNER  JOIN  (SELECT    interdictid, OfficeCode, jobCode, InterdictDate, subcompanyCode, PersonelNo, TaxCalculationType,EmployTypeID,
										SUBSTRING(InterdicStartDate,1,7) AS startmonth,
										SUBSTRING(InterdicEndDate,1,7)   AS endMonth,
										CAST(left(InterdicStartDate, 4) AS int) AS YearID
							  FROM            Pay.Interdicts  
							  --where EmployTypeID  IN (SELECT part FROM Pay.SplitString(@EmployTypeIDs,','))
           					  where exists( Select part From Pay.SplitString(@EmployTypeIDs,',') where part = EmployTypeID)
							  ) aaa on aaa.PersonelNo=FixedCalculated.PersonelNo 
								and RTRIM(LTRIM(str(FixedCalculated.YearID)))+'/'+ SUBSTRING(RTRIM(LTRIM(str(100 + FixedCalculated.Mounth))),2,2)  BETWEEN startmonth and aaa.Endmonth
								and aaa.YearID=FixedCalculated.YearID
            -------------------------------edit 980913

WHERE     (Pay.FixedCalculated.ShowListKind = 1) OR ((Pay.FixedCalculated.ShowListKind = 2) OR ((Pay.FixedCalculated.ShowListKind = 11)
and (Pay.FixedCalculated.bedbes = 2)))
--AND (FixedCalculated.ArchiveID BETWEEN @ArchiveIDFrom AND @ArchiveIDTo )
And (FixedCalculated.LabelID between @LabelIDFrom  and @LabelIDTo   )
			  And (FixedCalculated.YearID between @YearIDFrom  and @YearIDTo   )




group by Pay.FixedCalculated.PersonelNO,Pay.FixedCalculated.ProjectID,FormsInfo_OfficeCode.InfoID,
                   Pay.FixedCalculated.Mounth,Pay.FixedCalculated.ArchiveDate,Pay.FixedCalculated.ArchiveID,FixedCalculated.YearID,aaa.startmonth , aaa.Endmonth    
having ( (Pay.FixedCalculated.ArchiveID BETWEEN  @ArchiveIDFrom AND @ArchiveIDTo ))   
AND RTRIM(LTRIM(str(FixedCalculated.YearID)))+'/'+ SUBSTRING(RTRIM(LTRIM(str(100 + FixedCalculated.Mounth))),2,2)  BETWEEN aaa.startmonth and aaa.Endmonth                 

----------------------------پايان خالص پرداختي  -------------------------------

-------------------------------------شروع عیدی پرداختي ------------------------------------------------
UNION ALL

SELECT      10 AS ShowColumn, Bonus.PersonelNo, ProjectID, OfficeID, 0 AS SalaryID,ABS(SUBSTRING(EndDate,6,2)) AS Mounth,
            ISNULL(BonusPrise, 0) AS BonusPayAble,
	 EndDate,0 as ArchiveID,  'عیدی' AS InfoName_L1,     'BonusPayAble' AS InfoName_L2
FROM      (SELECT        Pay.PersonelDecExt.PersonelNo, Pay.PersonelDecExt.EndDate ,  
                                   ROUND(SUM(ISNULL(PersonelDecExt.EmployeeAmount, 0)), 0) AS BonusPrise, ROUND(SUM(PersonelDecExt.PaymentLoan), 0) AS TaxPrice, 
                                   ROUND(SUM(PersonelDecExt.EmployeeAmount - Pay.PersonelDecExt.PaymentLoan), 0) AS BonusPayAble
, FormsInfo_Project.InfoID AS ProjectID, FormsInfo_Office.InfoID AS OfficeID
                                FROM Pay.PersonelDecExt INNER JOIN
                                     Pay.PersonelInfo ON Pay.PersonelDecExt.PersonelNo = Pay.PersonelInfo.PersonelNo LEFT OUTER JOIN
                          Pay.FormsInfo AS FormsInfo_Office ON Pay.PersonelDecExt.OfficeCode = FormsInfo_Office.FormInfoID LEFT OUTER JOIN
                          Pay.FormsInfo AS FormsInfo_Project ON Pay.PersonelDecExt.FormInfoID2 = FormsInfo_Project.FormInfoID INNER JOIN
                                          Pay.FormsInfo AS FormsInfo_1 ON Pay.PersonelDecExt.FormInfoID = FormsInfo_1.FormInfoID
			-------------------------------edit 980913
				INNER  JOIN  (SELECT    interdictid, OfficeCode, jobCode, InterdictDate, subcompanyCode, PersonelNo, TaxCalculationType,EmployTypeID,
										SUBSTRING(InterdicStartDate,1,7) AS startmonth,
										SUBSTRING(InterdicEndDate,1,7)   AS endMonth,
										CAST(left(InterdicStartDate, 4) AS int) AS YearID
							  FROM            Pay.Interdicts  
							--  where EmployTypeID  IN (SELECT part FROM Pay.SplitString(@EmployTypeIDs,','))
           					  where exists( Select part From Pay.SplitString(@EmployTypeIDs,',') where part = EmployTypeID)
							  ) aaa on aaa.PersonelNo=PersonelDecExt.PersonelNo 
								AND aaa.YearID=PersonelDecExt.YearID
								AND SUBSTRING(PersonelDecExt.Enddate,1,7)  between  aaa.startmonth AND aaa.Endmonth
            -------------------------------edit 980913

	WHERE    ( FormsInfo_1.FormType <> 111 ) and   (FormsInfo_1.InfoID = 1) AND
			 NOT(PersonelDecExt.EndDate IS NULL OR Pay.PersonelDecExt.EndDate = '        ' )
             AND (CAST(LEFT(RIGHT(PersonelDecExt.Enddate,5),2) AS int) BETWEEN @MounthFrom AND @MounthTo )
    GROUP BY Pay.PersonelDecExt.PersonelNo, Pay.PersonelDecExt.EndDate  
								, FormsInfo_Project.InfoID , FormsInfo_Office.InfoID ) AS 
								Bonus 

----------------------------پايان عیدی پرداختي  -------------------------------

-------------------------------------شروع سنوات پرداختي ------------------------------------------------
UNION ALL

SELECT      11 AS ShowColumn, Bonus.PersonelNo, ProjectID, OfficeID, 0 AS SalaryID,ABS(SUBSTRING(EndDate,6,2)) AS Mounth,
          ISNULL(TaxPrice, 0) AS TaxPrice,
	 EndDate,0 as ArchiveID,  'مالیات عیدی' AS InfoName_L1,     'PaymentLoan' AS InfoName_L2
FROM      (SELECT        Pay.PersonelDecExt.PersonelNo, Pay.PersonelDecExt.EndDate ,  
                                   ROUND(SUM(PersonelDecExt.PaymentLoan), 0) AS TaxPrice
, FormsInfo_Project.InfoID AS ProjectID, FormsInfo_Office.InfoID AS OfficeID
                                FROM Pay.PersonelDecExt INNER JOIN
                                     Pay.PersonelInfo ON Pay.PersonelDecExt.PersonelNo = Pay.PersonelInfo.PersonelNo LEFT OUTER JOIN
                          Pay.FormsInfo AS FormsInfo_Office ON Pay.PersonelDecExt.OfficeCode = FormsInfo_Office.FormInfoID LEFT OUTER JOIN
                          Pay.FormsInfo AS FormsInfo_Project ON Pay.PersonelDecExt.FormInfoID2 = FormsInfo_Project.FormInfoID INNER JOIN
                                                     Pay.FormsInfo AS FormsInfo_1 ON Pay.PersonelDecExt.FormInfoID = FormsInfo_1.FormInfoID
	-------------------------------edit 980913
				INNER  JOIN  (SELECT    interdictid, OfficeCode, jobCode, InterdictDate, subcompanyCode, PersonelNo, TaxCalculationType,EmployTypeID,
										SUBSTRING(InterdicStartDate,1,7) AS startmonth,
										SUBSTRING(InterdicEndDate,1,7)   AS endMonth,
										CAST(left(InterdicStartDate, 4) AS int) AS YearID
							  FROM            Pay.Interdicts  
							 -- where EmployTypeID  IN (SELECT part FROM Pay.SplitString(@EmployTypeIDs,','))
           					  where exists( Select part From Pay.SplitString(@EmployTypeIDs,',') where part = EmployTypeID)
							  ) aaa on aaa.PersonelNo=PersonelDecExt.PersonelNo 
								AND aaa.YearID=PersonelDecExt.YearID
								AND SUBSTRING(PersonelDecExt.Enddate,1,7)  between  aaa.startmonth AND aaa.Endmonth
            -------------------------------edit 980913
                                WHERE       ( FormsInfo_1.FormType <> 111 ) and     (FormsInfo_1.InfoID = 1) 
								  AND NOT(PersonelDecExt.EndDate IS NULL OR Pay.PersonelDecExt.EndDate = '        ' )
                                GROUP BY Pay.PersonelDecExt.PersonelNo, Pay.PersonelDecExt.EndDate  
								, FormsInfo_Project.InfoID , FormsInfo_Office.InfoID ) AS 
								Bonus  

----------------------------پايان عیدی پرداختي  -------------------------------

-------------------------------------شروع سنوات پرداختي ------------------------------------------------

UNION ALL

SELECT      12 AS ShowColumn, Bonus.PersonelNo, ProjectID, OfficeID, 0 AS SalaryID,ABS(SUBSTRING(EndDate,6,2)) AS Mounth,
            ISNULL(EmployerAmount, 0) AS EmployerAmount,
	 EndDate,0 as ArchiveID,  'سنوات' AS InfoName_L1,     '...' AS InfoName_L2
FROM           
                             (SELECT        Pay.PersonelDecExt.PersonelNo, Pay.PersonelDecExt.EndDate ,  
                                   ROUND(SUM(ISNULL(PersonelDecExt.EmployerAmount, 0)), 0) AS EmployerAmount
                               , FormsInfo_Project.InfoID AS ProjectID, FormsInfo_Office.InfoID AS OfficeID
                                FROM Pay.PersonelDecExt INNER JOIN
                                     Pay.PersonelInfo ON Pay.PersonelDecExt.PersonelNo = Pay.PersonelInfo.PersonelNo LEFT OUTER JOIN
                          Pay.FormsInfo AS FormsInfo_Office ON Pay.PersonelDecExt.OfficeCode = FormsInfo_Office.FormInfoID LEFT OUTER JOIN
                          Pay.FormsInfo AS FormsInfo_Project ON Pay.PersonelDecExt.FormInfoID2 = FormsInfo_Project.FormInfoID INNER JOIN
                                                     Pay.FormsInfo AS FormsInfo_1 ON Pay.PersonelDecExt.FormInfoID = FormsInfo_1.FormInfoID
	-------------------------------edit 980913
				INNER  JOIN  (SELECT    interdictid, OfficeCode, jobCode, InterdictDate, subcompanyCode, PersonelNo, TaxCalculationType,EmployTypeID,
										SUBSTRING(InterdicStartDate,1,7) AS startmonth,
										SUBSTRING(InterdicEndDate,1,7)   AS endMonth,
										CAST(left(InterdicStartDate, 4) AS int) AS YearID
							  FROM            Pay.Interdicts  
							 -- where EmployTypeID  IN (SELECT part FROM Pay.SplitString(@EmployTypeIDs,','))
           					  where exists( Select part From Pay.SplitString(@EmployTypeIDs,',') where part = EmployTypeID)

							  ) aaa on aaa.PersonelNo=PersonelDecExt.PersonelNo 
								AND aaa.YearID=PersonelDecExt.YearID
								AND SUBSTRING(PersonelDecExt.Enddate,1,7)  between  aaa.startmonth AND aaa.Endmonth
            -------------------------------edit 980913
                                WHERE        (FormsInfo_1.InfoID = 1) AND NOT(PersonelDecExt.EndDate IS NULL OR
                                                         Pay.PersonelDecExt.EndDate = '        ' )
                                 AND (CAST(LEFT(RIGHT(PersonelDecExt.Enddate,5),2) AS int) BETWEEN @MounthFrom AND @MounthTo )


                                GROUP BY Pay.PersonelDecExt.PersonelNo, Pay.PersonelDecExt.EndDate  
								, FormsInfo_Project.InfoID , FormsInfo_Office.InfoID ) AS 
								Bonus  

----------------------------پايان سنوات پرداختي  -------------------------------



-------------------------------------شروع پاداش مستقل از حقوق ------------------------------------------------
UNION ALL

SELECT      13 AS ShowColumn, Bonus.PersonelNo, ProjectID, OfficeID, 0 AS SalaryID,ABS(SUBSTRING(EndDate,6,2)) AS Mounth,
            ISNULL(BonusPrise, 0) AS BonusPayAble,
	 EndDate,0 as ArchiveID,  'پاداش' AS InfoName_L1,     'RewardPayAble' AS InfoName_L2
FROM      (SELECT        Pay.PersonelDecExt.PersonelNo, Pay.PersonelDecExt.EndDate ,  
                                   ROUND(SUM(ISNULL(PersonelDecExt.EmployeeAmount, 0)), 0) AS BonusPrise, ROUND(SUM(PersonelDecExt.PaymentLoan), 0) AS TaxPrice, 
                                   ROUND(SUM(PersonelDecExt.EmployeeAmount - Pay.PersonelDecExt.PaymentLoan), 0) AS BonusPayAble
, FormsInfo_Project.InfoID AS ProjectID, FormsInfo_Office.InfoID AS OfficeID
                                FROM Pay.PersonelDecExt INNER JOIN
                                     Pay.PersonelInfo ON Pay.PersonelDecExt.PersonelNo = Pay.PersonelInfo.PersonelNo LEFT OUTER JOIN
                          Pay.FormsInfo AS FormsInfo_Office ON Pay.PersonelDecExt.OfficeCode = FormsInfo_Office.FormInfoID LEFT OUTER JOIN
                          Pay.FormsInfo AS FormsInfo_Project ON Pay.PersonelDecExt.FormInfoID2 = FormsInfo_Project.FormInfoID INNER JOIN
                                          Pay.FormsInfo AS FormsInfo_1 ON Pay.PersonelDecExt.FormInfoID = FormsInfo_1.FormInfoID
	-------------------------------edit 980913
				INNER  JOIN  (SELECT    interdictid, OfficeCode, jobCode, InterdictDate, subcompanyCode, PersonelNo, TaxCalculationType,EmployTypeID,
										SUBSTRING(InterdicStartDate,1,7) AS startmonth,
										SUBSTRING(InterdicEndDate,1,7)   AS endMonth,
										CAST(left(InterdicStartDate, 4) AS int) AS YearID
							  FROM            Pay.Interdicts  
							  --where EmployTypeID  IN (SELECT part FROM Pay.SplitString(@EmployTypeIDs,','))
							  where exists( Select part From Pay.SplitString(@EmployTypeIDs,',') where part = EmployTypeID)

							  ) aaa on aaa.PersonelNo=PersonelDecExt.PersonelNo 
								AND aaa.YearID=PersonelDecExt.YearID
								AND SUBSTRING(PersonelDecExt.Enddate,1,7)  between  aaa.startmonth AND aaa.Endmonth
            -------------------------------edit 980913

CROSS JOIN Pay.Config as C
                                WHERE  (C.ActRewardInlistSalary in(1,2))AND    ( FormsInfo_1.FormType = 111 ) and   (FormsInfo_1.InfoID = 1) 
								  AND NOT(PersonelDecExt.EndDate IS NULL OR Pay.PersonelDecExt.EndDate = '        ' )
                                  AND (CAST(LEFT(RIGHT(PersonelDecExt.Enddate,5),2) AS int) BETWEEN @MounthFrom AND @MounthTo )
                                GROUP BY Pay.PersonelDecExt.PersonelNo, Pay.PersonelDecExt.EndDate  
								, FormsInfo_Project.InfoID , FormsInfo_Office.InfoID ) AS 
								Bonus 


-------------------------------------پايان پاداش مستقل از حقوق ------------------------------------------------

-------------------------------------شروع  مالیات پاداش مستقل از حقوق ------------------------------------------------
UNION ALL

SELECT      14 AS ShowColumn, Bonus.PersonelNo, ProjectID, OfficeID, 0 AS SalaryID,ABS(SUBSTRING(EndDate,6,2)) AS Mounth,
          ISNULL(TaxPrice, 0) AS TaxPrice,
	 EndDate,0 as ArchiveID,  'مالیات' AS InfoName_L1,     'Tax' AS InfoName_L2
FROM      (SELECT        Pay.PersonelDecExt.PersonelNo, Pay.PersonelDecExt.EndDate ,  
                                   ROUND(SUM(PersonelDecExt.PaymentLoan), 0) AS TaxPrice
, FormsInfo_Project.InfoID AS ProjectID, FormsInfo_Office.InfoID AS OfficeID
                                FROM Pay.PersonelDecExt INNER JOIN
                                     Pay.PersonelInfo ON Pay.PersonelDecExt.PersonelNo = Pay.PersonelInfo.PersonelNo LEFT OUTER JOIN
                          Pay.FormsInfo AS FormsInfo_Office ON Pay.PersonelDecExt.OfficeCode = FormsInfo_Office.FormInfoID LEFT OUTER JOIN
                          Pay.FormsInfo AS FormsInfo_Project ON Pay.PersonelDecExt.FormInfoID2 = FormsInfo_Project.FormInfoID INNER JOIN
                                                     Pay.FormsInfo AS FormsInfo_1 ON Pay.PersonelDecExt.FormInfoID = FormsInfo_1.FormInfoID
	-------------------------------edit 980913
				INNER  JOIN  (SELECT    interdictid, OfficeCode, jobCode, InterdictDate, subcompanyCode, PersonelNo, TaxCalculationType,EmployTypeID,
										SUBSTRING(InterdicStartDate,1,7) AS startmonth,
										SUBSTRING(InterdicEndDate,1,7)   AS endMonth,
										CAST(left(InterdicStartDate, 4) AS int) AS YearID
							  FROM            Pay.Interdicts  
							  --where EmployTypeID  IN (SELECT part FROM Pay.SplitString(@EmployTypeIDs,','))
							  where exists( Select part From Pay.SplitString(@EmployTypeIDs,',') where part = EmployTypeID)

							  ) aaa on aaa.PersonelNo=PersonelDecExt.PersonelNo 
								AND aaa.YearID=PersonelDecExt.YearID
								AND SUBSTRING(PersonelDecExt.Enddate,1,7)  between  aaa.startmonth AND aaa.Endmonth
            -------------------------------edit 980913
CROSS JOIN Pay.Config as C
                                WHERE  (C.ActRewardInlistSalary in(1,2))AND        ( FormsInfo_1.FormType = 111 ) and     (FormsInfo_1.InfoID = 1) 
								  AND NOT(PersonelDecExt.EndDate IS NULL OR Pay.PersonelDecExt.EndDate = '        ' )
                                GROUP BY Pay.PersonelDecExt.PersonelNo, Pay.PersonelDecExt.EndDate  
								, FormsInfo_Project.InfoID , FormsInfo_Office.InfoID ) AS 
								Bonus  

-------------------------------------پايان مالیات  پاداش مستقل از حقوق ------------------------------------------------

-------------------------------------شروع مرخصی سالیانه  ------------------------------------------------

UNION ALL

SELECT      15 AS ShowColumn, Bonus.PersonelNo, ProjectID, OfficeID, 0 AS SalaryID,ABS(SUBSTRING(EndDate,6,2)) AS Mounth,
            ISNULL(leavePrice, 0) AS leavePrice,
	 EndDate,0 as ArchiveID,  'مرخصی سالیانه ' AS InfoName_L1,     '...' AS InfoName_L2
FROM           
                             (SELECT        Pay.PersonelDecExt.PersonelNo, Pay.PersonelDecExt.EndDate ,  
                                   ROUND(SUM(ISNULL(PersonelDecExt.leavePrice, 0)), 0) AS leavePrice
                               , FormsInfo_Project.InfoID AS ProjectID, FormsInfo_Office.InfoID AS OfficeID
                                FROM Pay.PersonelDecExt INNER JOIN
                                     Pay.PersonelInfo ON Pay.PersonelDecExt.PersonelNo = Pay.PersonelInfo.PersonelNo LEFT OUTER JOIN
                          Pay.FormsInfo AS FormsInfo_Office ON Pay.PersonelDecExt.OfficeCode = FormsInfo_Office.FormInfoID LEFT OUTER JOIN
                          Pay.FormsInfo AS FormsInfo_Project ON Pay.PersonelDecExt.FormInfoID2 = FormsInfo_Project.FormInfoID INNER JOIN
                                                     Pay.FormsInfo AS FormsInfo_1 ON Pay.PersonelDecExt.FormInfoID = FormsInfo_1.FormInfoID
	
				INNER  JOIN  (SELECT    interdictid, OfficeCode, jobCode, InterdictDate, subcompanyCode, PersonelNo, TaxCalculationType,EmployTypeID,
										SUBSTRING(InterdicStartDate,1,7) AS startmonth,
										SUBSTRING(InterdicEndDate,1,7)   AS endMonth,
										CAST(left(InterdicStartDate, 4) AS int) AS YearID
							  FROM            Pay.Interdicts  
							  --where EmployTypeID  IN (SELECT part FROM Pay.SplitString(@EmployTypeIDs,','))
							             					  where exists( Select part From Pay.SplitString(@EmployTypeIDs,',') where part = EmployTypeID)

							  ) aaa on aaa.PersonelNo=PersonelDecExt.PersonelNo 
								AND aaa.YearID=PersonelDecExt.YearID
								AND SUBSTRING(PersonelDecExt.Enddate,1,7)  between  aaa.startmonth AND aaa.Endmonth
    
                                WHERE        (FormsInfo_1.InfoID = 1) AND NOT(PersonelDecExt.EndDate IS NULL OR
                                                         Pay.PersonelDecExt.EndDate = '        ' )
                                 AND (CAST(LEFT(RIGHT(PersonelDecExt.Enddate,5),2) AS int) BETWEEN @MounthFrom AND @MounthTo )


                                GROUP BY Pay.PersonelDecExt.PersonelNo, Pay.PersonelDecExt.EndDate  
								, FormsInfo_Project.InfoID , FormsInfo_Office.InfoID ) AS 
								Bonus  

----------------------------   پايان مرخصی سالیانه    -------------------------------





)
  
  

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

--------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------

-------------------------------------------------------------------------------------------------------------
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO
CREATE FUNCTION Pay.RptComprasion  (@ArchiveIDFrom int=0 , @ArchiveIDTo int=0,@EmployTypeIDs varchar(800),@LabelIDFrom  int=0,@LabelIDTo  int=0,@YearIDFrom  int=1402,@YearIDTo  int=1402)  
RETURNS  table  AS 
return  (
----------------مزايا -------------------------
SELECT     ShowColumn,PersonelNO,ProjectID,OfficeCode,SalaryID,ArchiveDate,ArchiveID,InfoName_L1,InfoName_L2,
                      CASE mounth WHEN 01 THEN Price ELSE 0 END AS Month1, CASE mounth WHEN 02 THEN Price ELSE 0 END AS Month2,
                      CASE mounth WHEN 03 THEN Price ELSE 0 END AS Month3, CASE mounth WHEN 04 THEN Price ELSE 0 END AS Month4,
                      CASE mounth WHEN 05 THEN Price ELSE 0 END AS Month5, CASE mounth WHEN 06 THEN Price ELSE 0 END AS Month6,
                      CASE mounth WHEN 07 THEN Price ELSE 0 END AS Month7, CASE mounth WHEN 08 THEN Price ELSE 0 END AS Month8,
                      CASE mounth WHEN 09 THEN Price ELSE 0 END AS Month9, CASE mounth WHEN 10 THEN Price ELSE 0 END AS Month10,
                      CASE mounth WHEN 11 THEN Price ELSE 0 END AS Month11,CASE mounth WHEN 12 THEN Price ELSE 0 END AS Month12,
                       Price AS SumPrice
FROM      Pay.RptComprasionSub(@ArchiveIDFrom  , @ArchiveIDTo ,1,12 ,@EmployTypeIDs,@LabelIDFrom  ,@LabelIDTo ,@YearIDFrom  ,@YearIDTo  )

WHERE ((@ArchiveIDFrom <> -9999)and(@ArchiveIDTo <> -9999))


UNION All
SELECT     ShowColumn,PersonelNO,ProjectID,OfficeCode,SalaryID,ArchiveDate,ArchiveID,InfoName_L1,InfoName_L2,
                      CASE mounth WHEN 01 THEN Price ELSE 0 END AS Month1, CASE mounth WHEN 02 THEN Price ELSE 0 END AS Month2,
                      CASE mounth WHEN 03 THEN Price ELSE 0 END AS Month3, CASE mounth WHEN 04 THEN Price ELSE 0 END AS Month4,
                      CASE mounth WHEN 05 THEN Price ELSE 0 END AS Month5, CASE mounth WHEN 06 THEN Price ELSE 0 END AS Month6,
                      CASE mounth WHEN 07 THEN Price ELSE 0 END AS Month7, CASE mounth WHEN 08 THEN Price ELSE 0 END AS Month8,
                      CASE mounth WHEN 09 THEN Price ELSE 0 END AS Month9, CASE mounth WHEN 10 THEN Price ELSE 0 END AS Month10,
                      CASE mounth WHEN 11 THEN Price ELSE 0 END AS Month11,CASE mounth WHEN 12 THEN Price ELSE 0 END AS Month12,
                       Price AS SumPrice
FROM      Pay.RptComprasionSubFinalArchive(@EmployTypeIDs,@LabelIDFrom  ,@LabelIDTo ,@YearIDFrom  ,@YearIDTo   )
WHERE ((@ArchiveIDFrom = -9999)or(@ArchiveIDTo = -9999))


)
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
------------------------------------------------------------------------------------

GO
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO
CREATE FUNCTION Pay.Rpt_Comprasion2(@YearIDFrom  int=1402,@YearIDTo  int=1402)  
RETURNS  table  AS 
return  (
SELECT All_FixedCalculated.ShowColumn, All_FixedCalculated.PersonelNO,  All_FixedCalculated.SalaryID, All_FixedCalculated.Mounth, All_FixedCalculated.Price, 
 All_FixedCalculated.ArchiveDate, All_FixedCalculated.InfoName_L1, All_FixedCalculated.InfoName_L2, All_FixedCalculated.AccTopicCode,
 All_FixedCalculated.AccDetailCode, All_FixedCalculated.AccCTopicCode, All_FixedCalculated.AccCTopicCode2, All_FixedCalculated.AccCTopicCode3, 
  FormsInfo_OfficeCode.InfoID AS OfficeCode,FormsInfo_OfficeCode.InfoName_L1 AS OfficeName, 
  FormsInfo_Job.InfoID AS JobCode, FormsInfo_Job.InfoName_L1 AS JobName, 
  FormsInfo_Project.InfoID AS ProjectCode, FormsInfo_Project.InfoName_L1 AS ProjectName, 
  FormsInfo_Proc.InfoID AS ProcCode, FormsInfo_Proc.InfoName_L1 AS ProcName,All_FixedCalculated.YearID as YearID
  FROM(

----------------مزايا -------------------------
SELECT    1 AS ShowColumn,Pay.FixedCalculated.PersonelNO,Pay.FixedCalculated.ProjectID,Pay.FixedCalculated.SalaryID,
  Pay.FixedCalculated.Mounth,Pay.FixedCalculated.Price,Pay.FixedCalculated.ArchiveDate,FormsInfo.InfoName_L1,
  Pay.FormsInfo.InfoName_L2, FixedCalculated.OfficeCode, FixedCalculated.JobCede, FixedCalculated.AccTopicCode, 
  FixedCalculated.AccDetailCode, FixedCalculated.AccCTopicCode, FixedCalculated.AccCTopicCode2, 
  FixedCalculated.AccCTopicCode3, FixedCalculated.ProcCode, FixedCalculated.YearID
FROM  Pay.FormsInfo RIGHT OUTER JOIN
     FinalArchiveWithPersonelNO INNER JOIN
     FixedCalculated ON FinalArchiveWithPersonelNO.Mounth = FixedCalculated.Mounth AND 
                      Pay.FinalArchiveWithPersonelNO.YearID = Pay.FixedCalculated.YearID AND 
	 FinalArchiveWithPersonelNO.ArchiveID = FixedCalculated.ArchiveID AND 
     FinalArchiveWithPersonelNO.PersonelNO = FixedCalculated.PersonelNO ON 
	 Pay.FormsInfo.FormInfoID = FixedCalculated.SalaryID

WHERE     (Pay.FixedCalculated.ShowListKind = 1)
-----------پايان مزايا -----------
union all
----------------جمع حقوق و مزايا ------------------
SELECT    2 AS ShowColumn,Pay.FixedCalculated.PersonelNO,Pay.FixedCalculated.ProjectID,0 AS SalaryID,
                      Pay.FixedCalculated.Mounth,SUM(Pay.FixedCalculated.Price) AS Price,Pay.FixedCalculated.ArchiveDate,'جمع حقوق و مزايا ' AS InfoName_L1,
                      'Total Wage ' AS InfoName_L2, FixedCalculated.OfficeCode, FixedCalculated.JobCede, FixedCalculated.AccTopicCode, 
  FixedCalculated.AccDetailCode, FixedCalculated.AccCTopicCode, FixedCalculated.AccCTopicCode2, 
  FixedCalculated.AccCTopicCode3, FixedCalculated.ProcCode, FixedCalculated.YearID
FROM  Pay.FormsInfo RIGHT OUTER JOIN
     FinalArchiveWithPersonelNO INNER JOIN
     FixedCalculated ON FinalArchiveWithPersonelNO.Mounth = FixedCalculated.Mounth AND 
                      Pay.FinalArchiveWithPersonelNO.YearID = Pay.FixedCalculated.YearID AND 
	 FinalArchiveWithPersonelNO.ArchiveID = FixedCalculated.ArchiveID AND 
     FinalArchiveWithPersonelNO.PersonelNO = FixedCalculated.PersonelNO ON 
	 Pay.FormsInfo.FormInfoID = FixedCalculated.SalaryID
WHERE     (Pay.FixedCalculated.ShowListKind = 1) 
group by Pay.FixedCalculated.PersonelNO,Pay.FixedCalculated.ProjectID,
                      Pay.FixedCalculated.Mounth,Pay.FixedCalculated.ArchiveDate
					  ,FixedCalculated.OfficeCode,FixedCalculated.JobCede, FixedCalculated.AccTopicCode, 
  FixedCalculated.AccDetailCode, FixedCalculated.AccCTopicCode, FixedCalculated.AccCTopicCode2, 
  FixedCalculated.AccCTopicCode3, FixedCalculated.ProcCode, FixedCalculated.YearID
----------------جمع حقوق و مزايا ------------------
union all
-----------
SELECT    3 AS ShowColumn,Pay.FixedCalculated.PersonelNO,Pay.FixedCalculated.ProjectID,Pay.FixedCalculated.SalaryID,
                      Pay.FixedCalculated.Mounth,Pay.FixedCalculated.Price,Pay.FixedCalculated.ArchiveDate,'مشمول بيمه ' AS InfoName_L1,
                      'Contain Insourance ' AS InfoName_L2, FixedCalculated.OfficeCode, FixedCalculated.JobCede, FixedCalculated.AccTopicCode, 
  FixedCalculated.AccDetailCode, FixedCalculated.AccCTopicCode, FixedCalculated.AccCTopicCode2, 
  FixedCalculated.AccCTopicCode3, FixedCalculated.ProcCode, FixedCalculated.YearID
FROM  Pay.FormsInfo RIGHT OUTER JOIN
     FinalArchiveWithPersonelNO INNER JOIN
     FixedCalculated ON FinalArchiveWithPersonelNO.Mounth = FixedCalculated.Mounth AND 
                      Pay.FinalArchiveWithPersonelNO.YearID = Pay.FixedCalculated.YearID AND 
	 FinalArchiveWithPersonelNO.ArchiveID = FixedCalculated.ArchiveID AND 
     FinalArchiveWithPersonelNO.PersonelNO = FixedCalculated.PersonelNO ON 
	 Pay.FormsInfo.FormInfoID = FixedCalculated.SalaryID
WHERE     (Pay.FixedCalculated.ShowListKind = 3) 

-----------
union all
------------------------------شروع ماليات ---------------------------------------
SELECT    4 AS ShowColumn,Pay.FixedCalculated.PersonelNO,Pay.FixedCalculated.ProjectID,Pay.FixedCalculated.SalaryID,
                      Pay.FixedCalculated.Mounth,Pay.FixedCalculated.Price,Pay.FixedCalculated.ArchiveDate,'مشمول ماليات ' AS InfoName_L1,
                      'Tax Insourance ' AS InfoName_L2, FixedCalculated.OfficeCode, FixedCalculated.JobCede, FixedCalculated.AccTopicCode, 
  FixedCalculated.AccDetailCode, FixedCalculated.AccCTopicCode, FixedCalculated.AccCTopicCode2, 
  FixedCalculated.AccCTopicCode3, FixedCalculated.ProcCode, FixedCalculated.YearID
FROM  Pay.FormsInfo RIGHT OUTER JOIN
     FinalArchiveWithPersonelNO INNER JOIN
     FixedCalculated ON FinalArchiveWithPersonelNO.Mounth = FixedCalculated.Mounth AND 
                      Pay.FinalArchiveWithPersonelNO.YearID = Pay.FixedCalculated.YearID AND 
	 FinalArchiveWithPersonelNO.ArchiveID = FixedCalculated.ArchiveID AND 
     FinalArchiveWithPersonelNO.PersonelNO = FixedCalculated.PersonelNO ON 
	 Pay.FormsInfo.FormInfoID = FixedCalculated.SalaryID
WHERE     (Pay.FixedCalculated.ShowListKind = 11)  and (Pay.FixedCalculated.bedbes = 0) and (Pay.FixedCalculated.CalCulateKind=12) 


--------------------------------------پايان مشمول ماليات ---------------------
union all
--------------------------------------ماليات ---------------------
SELECT    5 AS ShowColumn,Pay.FixedCalculated.PersonelNO,Pay.FixedCalculated.ProjectID,Pay.FixedCalculated.SalaryID,
                      Pay.FixedCalculated.Mounth,Pay.FixedCalculated.Price,Pay.FixedCalculated.ArchiveDate,'ماليات ' AS InfoName_L1,
                      'Tax' AS InfoName_L2, FixedCalculated.OfficeCode, FixedCalculated.JobCede, FixedCalculated.AccTopicCode, 
  FixedCalculated.AccDetailCode, FixedCalculated.AccCTopicCode, FixedCalculated.AccCTopicCode2, 
  FixedCalculated.AccCTopicCode3, FixedCalculated.ProcCode, FixedCalculated.YearID
FROM  Pay.FormsInfo RIGHT OUTER JOIN
     FinalArchiveWithPersonelNO INNER JOIN
     FixedCalculated ON FinalArchiveWithPersonelNO.Mounth = FixedCalculated.Mounth AND 
                      Pay.FinalArchiveWithPersonelNO.YearID = Pay.FixedCalculated.YearID AND 
	 FinalArchiveWithPersonelNO.ArchiveID = FixedCalculated.ArchiveID AND 
     FinalArchiveWithPersonelNO.PersonelNO = FixedCalculated.PersonelNO ON 
	 Pay.FormsInfo.FormInfoID = FixedCalculated.SalaryID
WHERE     (Pay.FixedCalculated.ShowListKind = 11)  and (Pay.FixedCalculated.bedbes = 2)
-----------------------------------پايان ماليات -----------------------
union all
---------------------------شروع كسورات -----------------------------
SELECT    6 AS ShowColumn,Pay.FixedCalculated.PersonelNO,Pay.FixedCalculated.ProjectID,Pay.FixedCalculated.SalaryID,
                      Pay.FixedCalculated.Mounth,Pay.FixedCalculated.Price,Pay.FixedCalculated.ArchiveDate,FormsInfo.InfoName_L1,
                      Pay.FormsInfo.InfoName_L2, FixedCalculated.OfficeCode, FixedCalculated.JobCede, FixedCalculated.AccTopicCode, 
  FixedCalculated.AccDetailCode, FixedCalculated.AccCTopicCode, FixedCalculated.AccCTopicCode2, 
  FixedCalculated.AccCTopicCode3, FixedCalculated.ProcCode, FixedCalculated.YearID
FROM  Pay.FormsInfo RIGHT OUTER JOIN
     FinalArchiveWithPersonelNO INNER JOIN
     FixedCalculated ON FinalArchiveWithPersonelNO.Mounth = FixedCalculated.Mounth AND 
                      Pay.FinalArchiveWithPersonelNO.YearID = Pay.FixedCalculated.YearID AND 
	 FinalArchiveWithPersonelNO.ArchiveID = FixedCalculated.ArchiveID AND 
     FinalArchiveWithPersonelNO.PersonelNO = FixedCalculated.PersonelNO ON 
	 Pay.FormsInfo.FormInfoID = FixedCalculated.SalaryID
WHERE     (Pay.FixedCalculated.ShowListKind = 2) 
------------------------------پايان كسورات -------------------------
union all
----------------------شروع جمع كسورات -----------------------------
SELECT    7 AS ShowColumn,Pay.FixedCalculated.PersonelNO,Pay.FixedCalculated.ProjectID,0 AS SalaryID,
                      Pay.FixedCalculated.Mounth,SUM(Pay.FixedCalculated.Price) AS Price,Pay.FixedCalculated.ArchiveDate,'جمع كسورات حقوق ' AS InfoName_L1,
                      'Total Desres ' AS InfoName_L2, FixedCalculated.OfficeCode, FixedCalculated.JobCede, FixedCalculated.AccTopicCode, 
  FixedCalculated.AccDetailCode, FixedCalculated.AccCTopicCode, FixedCalculated.AccCTopicCode2, 
  FixedCalculated.AccCTopicCode3, FixedCalculated.ProcCode, FixedCalculated.YearID
FROM  Pay.FormsInfo RIGHT OUTER JOIN
     FinalArchiveWithPersonelNO INNER JOIN
     FixedCalculated ON FinalArchiveWithPersonelNO.Mounth = FixedCalculated.Mounth AND 
                      Pay.FinalArchiveWithPersonelNO.YearID = Pay.FixedCalculated.YearID AND 
	 FinalArchiveWithPersonelNO.ArchiveID = FixedCalculated.ArchiveID AND 
     FinalArchiveWithPersonelNO.PersonelNO = FixedCalculated.PersonelNO ON 
	 Pay.FormsInfo.FormInfoID = FixedCalculated.SalaryID
WHERE    ( (Pay.FixedCalculated.ShowListKind = 2) OR ((Pay.FixedCalculated.ShowListKind = 11)and (Pay.FixedCalculated.bedbes = 2)))
group by Pay.FixedCalculated.PersonelNO,Pay.FixedCalculated.ProjectID,
                      Pay.FixedCalculated.Mounth,Pay.FixedCalculated.ArchiveDate
					  ,FixedCalculated.OfficeCode,FixedCalculated.JobCede, FixedCalculated.AccTopicCode, 
  FixedCalculated.AccDetailCode, FixedCalculated.AccCTopicCode, FixedCalculated.AccCTopicCode2, 
  FixedCalculated.AccCTopicCode3, FixedCalculated.ProcCode, FixedCalculated.YearID
-------------------------پايان جمع كسورات ----------------------------
union all
--------------------------شروع حق بيمه سهم كارفرما --------------------------------------
SELECT    8 AS ShowColumn,Pay.FixedCalculated.PersonelNO,Pay.FixedCalculated.ProjectID,0 AS SalaryID,
                      Pay.FixedCalculated.Mounth,SUM(Pay.FixedCalculated.Price) AS Price,Pay.FixedCalculated.ArchiveDate,'حق بيمه كارفرما ' AS InfoName_L1,
                      'Insourance Emoloyee Share' AS InfoName_L2, FixedCalculated.OfficeCode, FixedCalculated.JobCede, FixedCalculated.AccTopicCode, 
  FixedCalculated.AccDetailCode, FixedCalculated.AccCTopicCode, FixedCalculated.AccCTopicCode2, 
  FixedCalculated.AccCTopicCode3, FixedCalculated.ProcCode, FixedCalculated.YearID
FROM  Pay.FormsInfo RIGHT OUTER JOIN
     FinalArchiveWithPersonelNO INNER JOIN
     FixedCalculated ON FinalArchiveWithPersonelNO.Mounth = FixedCalculated.Mounth AND 
                      Pay.FinalArchiveWithPersonelNO.YearID = Pay.FixedCalculated.YearID AND 
	 FinalArchiveWithPersonelNO.ArchiveID = FixedCalculated.ArchiveID AND 
     FinalArchiveWithPersonelNO.PersonelNO = FixedCalculated.PersonelNO ON 
	 Pay.FormsInfo.FormInfoID = FixedCalculated.SalaryID
WHERE     (Pay.FixedCalculated.ShowlistKind  in( 4,14 )) AND (CalCulateKind = 10) 
 --And (FixedCalculated.YearID between @YearIDFrom  and @YearIDTo   )

group by Pay.FixedCalculated.PersonelNO,Pay.FixedCalculated.ProjectID,
                      Pay.FixedCalculated.Mounth,Pay.FixedCalculated.ArchiveDate
					  ,FixedCalculated.OfficeCode,FixedCalculated.JobCede, FixedCalculated.AccTopicCode, 
  FixedCalculated.AccDetailCode, FixedCalculated.AccCTopicCode, FixedCalculated.AccCTopicCode2, 
  FixedCalculated.AccCTopicCode3, FixedCalculated.ProcCode, FixedCalculated.YearID
-----------------------------------------پايان حق بيمه سهم كارفرما -------------------------

union all

-------------------------------------شروع خالص پرداختي ------------------------------------------------
SELECT    9 AS ShowColumn,Pay.FixedCalculated.PersonelNO,Pay.FixedCalculated.ProjectID,0 AS SalaryID,
                      Pay.FixedCalculated.Mounth,SUM(CASE WHEN (Pay.FixedCalculated.ShowListKind = 1) THEN Pay.FixedCalculated.Price ELSE  -Pay.FixedCalculated.Price  END ) AS Price,Pay.FixedCalculated.ArchiveDate,
		  'خالص پرداختي ' AS InfoName_L1,     'payable Salary ' AS InfoName_L2, FixedCalculated.OfficeCode, FixedCalculated.JobCede, FixedCalculated.AccTopicCode, 
  FixedCalculated.AccDetailCode, FixedCalculated.AccCTopicCode, FixedCalculated.AccCTopicCode2, 
  FixedCalculated.AccCTopicCode3, FixedCalculated.ProcCode, FixedCalculated.YearID
FROM  Pay.FormsInfo RIGHT OUTER JOIN
     FinalArchiveWithPersonelNO INNER JOIN
     FixedCalculated ON FinalArchiveWithPersonelNO.Mounth = FixedCalculated.Mounth AND 
                      Pay.FinalArchiveWithPersonelNO.YearID = Pay.FixedCalculated.YearID AND 
	 FinalArchiveWithPersonelNO.ArchiveID = FixedCalculated.ArchiveID AND 
     FinalArchiveWithPersonelNO.PersonelNO = FixedCalculated.PersonelNO ON 
	 Pay.FormsInfo.FormInfoID = FixedCalculated.SalaryID
WHERE     (Pay.FixedCalculated.ShowListKind = 1) OR ((Pay.FixedCalculated.ShowListKind = 2) OR ((Pay.FixedCalculated.ShowListKind = 11)and (Pay.FixedCalculated.bedbes = 2)))
		  And (FixedCalculated.YearID between @YearIDFrom  and @YearIDTo   )
group by Pay.FixedCalculated.PersonelNO,Pay.FixedCalculated.ProjectID,
                   Pay.FixedCalculated.Mounth,Pay.FixedCalculated.ArchiveDate
					  ,FixedCalculated.OfficeCode,FixedCalculated.JobCede, FixedCalculated.AccTopicCode, 
  FixedCalculated.AccDetailCode, FixedCalculated.AccCTopicCode, FixedCalculated.AccCTopicCode2, 
  FixedCalculated.AccCTopicCode3, FixedCalculated.ProcCode, FixedCalculated.YearID

----------------------------پايان خالص پرداختي  -------------------------------

)AS All_FixedCalculated
LEFT OUTER JOIN  Pay.FormsInfo AS FormsInfo_OfficeCode ON All_FixedCalculated.OfficeCode = FormsInfo_OfficeCode.FormInfoID 
LEFT OUTER JOIN  Pay.FormsInfo AS FormsInfo_Project ON All_FixedCalculated.ProjectID = FormsInfo_Project.FormInfoID 
LEFT OUTER JOIN  Pay.FormsInfo AS FormsInfo_Proc ON All_FixedCalculated.ProcCode = FormsInfo_Proc.FormInfoID
LEFT OUTER JOIN  Pay.FormsInfo AS FormsInfo_Job ON All_FixedCalculated.JobCede = FormsInfo_Job.FormInfoID
)
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

-------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------
SET QUOTED_IDENTIFIER ON 
GO
--SET ANSI_NULLS OFF 
GO
CREATE FUNCTION Pay.balanceDecExtLeave (@Mounth int =10 , @PersonFROM int=0,@PersonTo int=2147483647)  		
RETURNS  table  AS 
return  (
SELECT        Pay.PersonelDecExt.PersonelNo, ROUND(ROUND(SUM(PersonelDecExt.DayQuntity) + 
                                         ROUND(ISNULL(SUM(PersonelDecExt.DayTime), 0) 
                                             + ISNULL(SUM(PersonelDecExt.Minute_), 0) / 60, 4) / FormsInfo_16.Amount, 4), 4) AS Leave 
FROM            Pay.PersonelDecExt INNER JOIN
                          Pay.FormsInfo AS FormsInfo_16 ON Pay.PersonelDecExt.FormInfoID = FormsInfo_16.FormInfoID
WHERE        (PersonelDecExt.PersonelNo BETWEEN @PersonFROM AND @PersonTo) 
 AND (ISNULL(PersonelDecExt.FirstMounth, 0) = @Mounth) 
 AND (FormsInfo_16.FormType = 16) AND (FormsInfo_16.InfoID = 1)
GROUP BY Pay.PersonelDecExt.PersonelNo,  FormsInfo_16.Amount
)
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
--------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------



SET QUOTED_IDENTIFIER OFF 
GO
--SET ANSI_NULLS OFF 
GO
CREATE FUNCTION Pay.balanceDecExt    
-------------------------------------------------------------------------------------------------------پارامترها -----------------------------------------------------------------------------------
		 (@MounthFROM int =0,@MounthTo int=12,
		@PersonFROM int=0,@PersonTo int=2147483647 ,
		@FormInfoID int=115,
		@StandardDay Float(12)=26.0 ,@StandardTime Float(8)=208,
		@OfficeCodeFROM int=0 ,@OfficeCodeTo int=2147483647 ,
		@PersonelStateFROM int=0 , @PersonelStateTo	 int=2147483647 ,
		@EmployTypeIDFROM int=0 , @EmployTypeIDTo	 int=2147483647)  


		
RETURNS  table  AS 
return  (
SELECT     ISNULL(AllPersonelDecExt.FormInfoID, 0) AS FormInfoID, AllFunctions.PersonelNo, Pay.PersonelInfo.name_L1 + ' - ' + Pay.PersonelInfo.lastName_L1 AS name_L1, 
                      Pay.PersonelInfo.name_L2 + ' - ' + Pay.PersonelInfo.lastName_L2 AS name_L2, Pay.PersonelInfo.lastName_L1, Pay.PersonelInfo.lastName_L2, Pay.PersonelInfo.fatherName_L1, 
                      Pay.PersonelInfo.fatherName_L2, Pay.PersonelInfo.NationalID, Pay.PersonelInfo.IDNumber, AllFunctions.FunctionDay, AllFunctions.FunctionTime, 
                      ISNULL(AllPersonelDecExt.FirstDay, 0) AS FirstDay, ISNULL(AllPersonelDecExt.FirstTime, 0) AS FirstTime, AllPersonelDecExt.FirstMinute_, 
                     -- cast(ISNULL(AllFunctions.FunctionDayOnSt, 0)  * @StandardDay/12 AS Decimal(18,3)) AS ContainDay
					  Pay.GetLeave (AllPersonelDecExt.PersonelNo ,@MounthFROM ,@MounthTo  ,AllPersonelDecExt.FormInfoID) AS ContainDay
					  --, ROUND(ISNULL(AllFunctions.FunctionTime, 0) / 2640.0 * @StandardTime, 4)  AS ContainTime
					  , ROUND(Pay.GetLeave (AllPersonelDecExt.PersonelNo ,@MounthFROM ,@MounthTo  ,AllPersonelDecExt.FormInfoID)  * (@StandardTime/@StandardDay), 4)  AS ContainTime
					  , ISNULL(AllPersonelDecExt.DayQuntity, 0) AS ExpireDay, ISNULL(AllPersonelDecExt.DayTime, 0) AS ExpireTime, 
                      cast(ISNULL(AllPersonelDecExt.FirstDay, 0) + 
                          --  ISNULL(AllFunctions.FunctionDayOnSt, 0) * @StandardDay / 12  - 
                            Pay.GetLeave (AllPersonelDecExt.PersonelNo ,@MounthFROM ,@MounthTo  ,AllPersonelDecExt.FormInfoID)  - 
                            ISNULL(AllPersonelDecExt.DayQuntity, 0) AS Decimal(18,3)) 
                      AS BalanceDay, 
                      ROUND(ISNULL(AllPersonelDecExt.FirstTime, 0) 
					  --+ ISNULL(AllFunctions.FunctionTime, 0) / 2640.0 * @StandardTime 
					  - ISNULL(AllPersonelDecExt.DayTime, 0), 4) AS BalanceTime, 
                      ROUND(ROUND(AllPersonelDecExt.DayQuntity + ROUND(ISNULL(AllPersonelDecExt.DayTime, 0) 
					  + ISNULL(AllPersonelDecExt.Minute_, 0) / 60, 4) / DayHour, 4), 4) AS AllDay, 

					  
                      cast(
					  --ROUND(ISNULL(AllFunctions.FunctionDayOnSt, 0)  * @StandardDay / 12, 2) 
                       ISNULL(ROUND(ROUND(AllPersonelDecExt.FirstDay + ROUND(AllPersonelDecExt.FirstTime 
					   + AllPersonelDecExt.FirstMinute_ / 60, 4) / DayHour, 4), 4)  , 0) 
					   + Pay.GetLeave (AllPersonelDecExt.PersonelNo ,@MounthFROM ,@MounthTo  ,AllPersonelDecExt.FormInfoID)

                      - ROUND(ROUND(AllPersonelDecExt.DayQuntity + ROUND(AllPersonelDecExt.DayTime + AllPersonelDecExt.Minute_ / 60, 4) / DayHour, 4), 4) AS Decimal(18,3)) AS BalanceAllDay, 
                      AllPersonelDecExt.Minute_, Pay.PersonelInfo.Mobile, AllFunctions.OfficeCode, AllFunctions.OfficeName,EmployTypeIDName
FROM         Pay.PersonelInfo INNER JOIN
                          (
SELECT     Pay.Functions.PersonelNo, SUM(Functions.FunctionDay+ISNULL(Functions.SickDay, 0)) FunctionDay , SUM((Functions.FunctionDay+ISNULL(Functions.SickDay, 0))
                   /  StandardTimes.StandardDays ) AS FunctionDayOnSt
				   , SUM(Functions.FunctionTime) AS FunctionTime
				   , FormsInfo_Office.InfoName_L1 AS OfficeName, 
                      FormsInfo_Office.InfoID AS OfficeCode ,FormsInfo_EmployTypeID.InfoName_L1 AS EmployTypeIDName
FROM         Pay.Interdicts LEFT OUTER JOIN
                       Pay.FormsInfo AS FormsInfo_Office ON Pay.Interdicts.OfficeCode = FormsInfo_Office.FormInfoID RIGHT OUTER JOIN
                      Pay.Functions ON Pay.Interdicts.PersonelNo = Pay.Functions.PersonelNo
 INNER JOIN
                         StandardTimes ON Pay.Functions.Mounth = StandardTimes.InfoID LEFT OUTER JOIN
                       Pay.FormsInfo AS FormsInfo_EmployTypeID ON Pay.Interdicts.EmployTypeID = FormsInfo_EmployTypeID.FormInfoID 




WHERE     (Interdicts.State < 50) 
 AND (Functions.Mounth  BETWEEN @MounthFROM AND @MounthTo ) 
 AND (FormsInfo_Office.InfoID BETWEEN @OfficeCodeFROM AND @OfficeCodeTo)
 AND (FormsInfo_EmployTypeID.InfoID BETWEEN @EmployTypeIDFROM AND @EmployTypeIDTo)

GROUP BY Pay.Functions.PersonelNo, FormsInfo_Office.InfoName_L1, FormsInfo_Office.InfoID ,FormsInfo_EmployTypeID.InfoName_L1 

                          
                        ) AS AllFunctions ON 
                      Pay.PersonelInfo.PersonelNo = AllFunctions.PersonelNo LEFT OUTER JOIN
                       Pay.FormsInfo INNER JOIN
                          (SELECT     Pay.PersonelDecExt.PersonelNo, SUM(CASE WHEN Pay.PersonelDecExt.FirstMounth = 0 THEN Pay.PersonelDecExt.DayQuntity ELSE 0 END) AS FirstDay, 
                                                   SUM(CASE WHEN Pay.PersonelDecExt.FirstMounth = 0 THEN Pay.PersonelDecExt.DayTime ELSE 0 END) AS FirstTime, 
                                                   SUM(CASE WHEN Pay.PersonelDecExt.FirstMounth = 0 THEN Pay.PersonelDecExt.Minute_ ELSE 0 END) AS FirstMinute_, 
                                                   SUM(CASE WHEN Pay.PersonelDecExt.FirstMounth <> 0 THEN Pay.PersonelDecExt.DayQuntity ELSE 0 END) AS DayQuntity, 
                                                   SUM(CASE WHEN Pay.PersonelDecExt.FirstMounth <> 0 THEN Pay.PersonelDecExt.DayTime ELSE 0 END) AS DayTime, 
                                                   SUM(CASE WHEN Pay.PersonelDecExt.FirstMounth <> 0 THEN Pay.PersonelDecExt.Minute_ ELSE 0 END) AS Minute_
												   , Pay.PersonelDecExt.FormInfoID,FormsInfo_1.Amount AS DayHour
                             FROM         Pay.PersonelDecExt INNER JOIN
                                                    Pay.FormsInfo AS FormsInfo_1 ON Pay.PersonelDecExt.FormInfoID = FormsInfo_1.FormInfoID
                             WHERE     (PersonelDecExt.PersonelNo BETWEEN @PersonFROM AND @PersonTo) 
							   AND ((PersonelDecExt.FirstMounth BETWEEN @MounthFROM AND  @MounthTo) OR (ISNULL(PersonelDecExt.FirstMounth,0) = 0 and ISNULL(PersonelDecExt.EndMounth,0) = 0)) 
							   AND (FormsInfo_1.FormType = 16)
                             GROUP BY Pay.PersonelDecExt.PersonelNo, Pay.PersonelDecExt.FormInfoID,FormsInfo_1.Amount) AS AllPersonelDecExt ON Pay.FormsInfo.FormInfoID = AllPersonelDecExt.FormInfoID ON 
                      Pay.PersonelInfo.PersonelNo = AllPersonelDecExt.PersonelNo
INNER JOIN  Pay.FormsInfo AS FormsInfoPersonelState ON Pay.PersonelInfo.PersonelState = FormsInfoPersonelState.FormInfoID 
                      
WHERE     (AllFunctions.PersonelNo BETWEEN  @PersonFROM AND @PersonTo ) 
and (ISNULL(AllPersonelDecExt.FormInfoID,0) = 0 OR ISNULL(AllPersonelDecExt.FormInfoID,0)=@FormInfoID)
AND (FormsInfoPersonelState.InfoID BETWEEN @PersonelStateFROM AND @PersonelStateTo)
)
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

-------------------------------------------------
-------------------------------------------------
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS OFF 
GO
CREATE FUNCTION Pay.ContainSalaryAnnuity
					-- پارامتر ها بترتيب  شامل  1- تركيب سال و ماه 2- نوع عوامل حقوق و مزايا  (  در معرفي انواع فرمها  = همان نوع عوامل حقوق و مزايا ميباشد . (.‏ - -----
						(
							@YearMounth varchar(7) ='81/01' ,
							@salarykind int=1,
							@salarykindTo int=1 ,
							@PersonelNoFROM int=0,
							@PersonelNoTo int=9999999,
							@InfoID int , -- 1: eydy , 2: sanavat 
							@4ContainSalaryAnnuity int = 0
						)  
RETURNS  table  AS 
return  
	(
		SELECT  PersonelNo,
				SUM(Amount) AS amount
		FROM    Pay.InterdictForUse(@YearMounth,@salarykind,@salarykindTo,@PersonelNoFrom,@PersonelNoTo , @4ContainSalaryAnnuity) InterdictForUse
		WHERE   SalaryID IN ( SELECT     salaryid FROM         pay.annuity WHERE     infoid = @InfoID )
		GROUP BY PersonelNo
	)
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO


-------------------------------------------------
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS OFF 
GO
CREATE FUNCTION [Pay].[CalculateBonusSalary]
------------------------------- پارامتر ها بترتيب  شامل  1- تركيب سال و ماه 2- نوع عوامل حقوق و مزايا  (  در معرفي انواع فرمها  = همان نوع عوامل حقوق و مزايا ميباشد . (‏ - ----------------------
						(
							@YearMounth varchar(7) ='81/01'  , 
							@salarykind int=1 , 
							@salarykindTo int=1  ,
							@PersonelNoFROM int=0 ,
							@PersonelNoTo int=9999999 , 
							@FormInfoID int , 
							@InfoID int, 
							@4ContainSalaryAnnuity int = 0,
							@InterTypeFrom int=0,
							@InterTypeTo int=9999999
						)  
RETURNS  table   AS 
return  
	(
		SELECT  BONUS.* , 
				ROUND( FormsInfo.Amount + (EmployeeAmount- FormsInfo.FirstAmount)* FormsInfo.Coefficient,0) AS TaxValue
		FROM (
				SELECT  PersonelDecExt.PersonelNo, 
						PersonelDecExt.DayQuntity,
						ContainSalaryAnnuity.amount, 
						FormsInfo.InfoID,
						TaxInfo.Forminfoid AS TaxID,
						FormsInfo.StandardDays,  
						FormsInfo.StandardTimes, 
						FormsInfo.Amount AS ConstAmount ,
						CASE 
						WHEN ROUND(   (((PersonelDecExt.DayQuntity / FormsInfo.Amount) * FormsInfo.StandardDays)  + 
		 						((PersonelDecExt.DayQuntity / FormsInfo.Amount) * FormsInfo.StandardTimes))
									* ContainSalaryAnnuity.amount  ,0) > TaxInfo.Amount * (PersonelDecExt.DayQuntity / FormsInfo.Amount)	
								then TaxInfo.Amount *(PersonelDecExt.DayQuntity / FormsInfo.Amount)
						ELSE  ROUND(   (((PersonelDecExt.DayQuntity / FormsInfo.Amount) * FormsInfo.StandardDays)  + 
		 						((PersonelDecExt.DayQuntity / FormsInfo.Amount) * FormsInfo.StandardTimes))
									* ContainSalaryAnnuity.amount  ,0)
						end AS EmployeeAmount
				FROM	
					(
						SELECT  PersonelNo,
								FormInfoID , 
								SUM(DayQuntity) AS DayQuntity
						FROM    Pay.PersonelDecExt
						WHERE   (FormInfoID = @FormInfoID)
						GROUP BY 
								PersonelNo , 
								FormInfoID 
					) PersonelDecExt 
					INNER JOIN Pay.ContainSalaryAnnuity(@YearMounth, @salarykind, @salarykindTo, @PersonelNoFrom, @PersonelNoTo, 1 ,@4ContainSalaryAnnuity) ContainSalaryAnnuity ON 
														PersonelDecExt.PersonelNo = ContainSalaryAnnuity.PersonelNo 
					INNER JOIN Pay.PersonelInfo_Ins_Tax (@YearMounth , @PersonelNoFrom, @PersonelNoTo )  PersonelInfo ON PersonelDecExt.PersonelNo = PersonelInfo.PersonelNo 
					INNER JOIN Pay.FormsInfo TaxInfo ON PersonelInfo.TaxCalculationType = TaxInfo.FormInfoID 
					CROSS JOIN (
								  SELECT *
								  FROM   Pay.FormsInfo
								  WHERE  formtype = 47 
										 AND infoid =@InfoID
							    ) FormsInfo
					WHERE	(PersonelDecExt.FormInfoID = @FormInfoID)
			) Bonus  	
			INNER JOIN Pay.FormsInfo ON bonus.TaxID = Pay.FormsInfo.PrvInfoID 
									AND bonus.EmployeeAmount >= FormsInfo.FirstAmount 
									AND bonus.EmployeeAmount <=FormsInfo.Amount2
	) 
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO
/*----------------------------- پارامتر ها بترتيب  شامل  1- تركيب سال و ماه 2- نوع عوامل حقوق و مزايا  (  در معرفي انواع فرمها  = همان نوع عوامل حقوق و مزايا ميباشد . (‏ - ----------------------


*/
CREATE VIEW Pay.FinalCalculateBonus
AS
SELECT     PaymentLoan AS Expr1,CTax AS Expr2
FROM         (SELECT     Pay.PersonelDecExt.DecExtID,PersonelDecExt.PersonelNo,PersonelDecExt.DayQuntity,
                                              ROUND(CalculateBonusSalary.EmployeeAmount / CalculateBonusSalary.DayQuntity * Pay.PersonelDecExt.DayQuntity,0) AS CBonusPrice,
                                              ROUND(CalculateBonusSalary.TaxValue / CalculateBonusSalary.DayQuntity * Pay.PersonelDecExt.DayQuntity,0) AS CTax,
                                              CalculateBonusSalary.DayQuntity AS SumDayQuntity,PersonelDecExt.EmployeeAmount,PersonelDecExt.PaymentLoan
                        FROM         Pay.PersonelDecExt INNER JOIN
                                              Pay.CalculateBonusSalary('95/12',DEFAULT,DEFAULT,DEFAULT,DEFAULT,840,1,0,DEFAULT,DEFAULT) CalculateBonusSalary ON 
                                              Pay.PersonelDecExt.PersonelNo = CalculateBonusSalary.PersonelNo
                        WHERE     (PersonelDecExt.FormInfoID = 840)) FinalBonus

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
SET QUOTED_IDENTIFIER ON 
GO
--SET ANSI_NULLS OFF 
GO

CREATE FUNCTION Pay.[FixCalculateType1]  (@Mounth int =1 ,@year int=84,@YearMounth varchar(7)= '81/01',
 @PersonelNoFROM int=0,@PersonelNoTo int=9999999 )  
RETURNS  table  AS 
return  (
-------------Anavin hokm --------------------------------------- اين قسمت بمنظور محاسبه حقوق و مزايايي مانند حقوق پايه  ، حق جذب و ... طراحي شده است  --------------------------------------------
SELECT  1 AS Part,   Pay.Functions.FunctionID,Pay.Functions.FormInfoID AS FunctionInfoID,InterdictForUse.PersonelNo,Pay.Functions.ProjectID,Pay.Functions.OfficeCode
,Pay.Functions.JobCode,
     InterdictForUse.SalaryID,Pay.Functions.Mounth,Functions.ProcCode,
   CASE InterdictForUse.CalCulateType 
	WHEN 0 THEN 0 
	WHEN 1 THEN ROUND(InterdictForUse.Amount / 30 * Pay.Functions.FunctionDay,0)
	WHEN 2 THEN ROUND(InterdictForUse.Amount / Pay.StandardTimes.StandardDays * Pay.Functions.Functionday,0)
		--WHEN 3 THEN ROUND(InterdictForUse.Amount / Pay.StandardTimes.Standardtimes * Pay.Functions.FunctionTime,0)
     WHEN 3 THEN CASE WHEN  Pay.Functions.FunctionTime > Pay.StandardTimes.Standardtimes THEN
			InterdictForUse.Amount ELSE 	
		ROUND( InterdictForUse.Amount / Pay.StandardTimes.Standardtimes * 
		 Pay.Functions.FunctionTime ,0) END		
	WHEN 4 THEN 
		CASE  WHEN AllDay_Function.AllDay =0 THEN InterdictForUse.Amount ELSE 
			ROUND((Pay.Functions.FunctionDay /  AllDay_Function.AllDay )  * InterdictForUse.Amount ,0)
		end 
	WHEN 5  THEN CASE  WHEN Pay.Functions.FunctionDay >30 THEN InterdictForUse.Amount ELSE  ROUND(InterdictForUse.Amount / 30 * Pay.Functions.FunctionDay,0)  END 
	WHEN 6 THEN ROUND(InterdictForUse.Amount * Pay.Functions.Functionday,0)
	WHEN 7 THEN ROUND(InterdictForUse.Amount / 30 * Pay.StandardTimes.StandardDays ,0)
	WHEN 8 THEN ROUND(InterdictForUse.Amount /30* ( Pay.Functions.Functionday + ISNULL(Pay.Functions.SickDay,0)),0) 
	WHEN 11 THEN --ROUND(InterdictForUse.Amount/(SELECT COUNT(ProjectID)FROM Pay.Functions WHERE PersonelNo = InterdictForUse.PersonelNo AND Mounth = @Mounth GROUP BY PersonelNo),0)

     CASE WHEN Pay.Functions.FunctionID=(SELECT MIN(FunctionID)FROM Pay.Functions 
                WHERE PersonelNo=InterdictForUse.PersonelNo AND Mounth=@Mounth )
     THEN InterdictForUse.Amount ELSE 0 END

    WHEN 14 THEN  ROUND( InterdictForUse.Amount / Pay.StandardTimes.Standardtimes *  Pay.Functions.FunctionTime ,0)   

    WHEN 15 THEN  ROUND(InterdictForUse.Amount /  Pay.StandardTimes.StandardDays * ( Pay.Functions.Functionday + ISNULL(Pay.Functions.SickDay,0)),0)

	ELSE 0 	end AS price ,1 AS BedBes,1 AS CalCulateKind,
	CASE InterdictForUse.TopicCodeKind 
		WHEN 0 THEN 0 
		WHEN 1 THEN InterdictForUse.AccTopicCode
		WHEN 2 THEN InterdictForUse.SalaryAccTopicCode
		WHEN 3 THEN FormsInfo_Project.AccTopicCode
		WHEN 4 THEN FormsInfo_FunctionsOffice.AccTopicCode
		WHEN 5 THEN InterdictForUse.MasterAccTopicCode
		WHEN 6 THEN Pay.PersonelInfo.AccTopicCode
		WHEN 8 THEN FormsInfo_FunctionsProcCode.AccTopicCode
		WHEN 9 THEN FormsInfo_FunCTopic3.AccTopicCode
		WHEN 10 THEN CASE  WHEN InterdictForUse.SalaryAccCTopicCode2 >0 THEN InterdictForUse.SalaryAccTopicCode   ELSE  FormsInfo_FunctionsOffice.AccTopicCode  END 
		WHEN 11 THEN ltrim(str(FormsInfo_FunctionsOffice.AccTopicCode)) +''+ ltrim(str(InterdictForUse.SalaryAccTopicCode))
    	--WHEN 12 THEN CASE  WHEN InterdictForUse.SalaryAccCTopicCode2 >0 THEN InterdictForUse.SalaryAccTopicCode   ELSE  FormsInfo_Project.AccTopicCode  END 
		WHEN 12 THEN CASE WHEN Pay.FormsInfo.AccTopicCode<>0 THEN Pay.FormsInfo.AccTopicCode ELSE  FormsInfo_Project.AccTopicCode END 					

ELSE 0 END AS AccTopicCode,
	CASE InterdictForUse.DetailCodeKind 
		WHEN 0 THEN 0 
		WHEN 1 THEN InterdictForUse.AccDetailCode
		WHEN 2 THEN InterdictForUse.SalaryAccDetailCode
		WHEN 3 THEN FormsInfo_Project.AccDetailCode
		WHEN 4 THEN FormsInfo_FunctionsOffice.AccDetailCode
		WHEN 5 THEN InterdictForUse.MasterAccDetailCode
		WHEN 6 THEN Pay.PersonelInfo.AccDetailCode
		WHEN 8 THEN FormsInfo_FunctionsProcCode.AccDetailCode
		WHEN 9 THEN FormsInfo_FunCTopic3.AccDetailCode
		WHEN 11 THEN case when InterdictForUse.SalaryAccDetailCode =-1 then Pay.PersonelInfo.AccDetailCode else InterdictForUse.SalaryAccDetailCode end
		WHEN 12 THEN case when InterdictForUse.SalaryAccDetailCode =-1 then FormsInfo_FunctionsOffice.AccDetailCode else InterdictForUse.SalaryAccDetailCode end
	ELSE 0 END  AS AccDetailCode,
	CASE InterdictForUse.CTopicCodeKind 
		WHEN 0 THEN 0 
		WHEN 1 THEN InterdictForUse.AccCTopicCode
		WHEN 2 THEN InterdictForUse.SalaryAccCTopicCode
		WHEN 3 THEN FormsInfo_Project.AccCTopicCode
		WHEN 4 THEN FormsInfo_FunctionsOffice.AccCTopicCode
		WHEN 5 THEN InterdictForUse.MasterAccCTopicCode
		WHEN 6 THEN Pay.PersonelInfo.AccCTopicCode
		WHEN 8 THEN FormsInfo_FunctionsProcCode.AccCTopicCode
		WHEN 9 THEN FormsInfo_FunCTopic3.AccCTopicCode
		WHEN 13 THEN CASE WHEN InterdictForUse.SalaryAccCTopicCode=-1 THEN 0 ELSE  FormsInfo_Project.AccCTopicCode END 
	ELSE 0 END AS AccCTopicCode,
	CASE InterdictForUse.CTopicCode2Kind 
		WHEN 0 THEN 0 
		WHEN 1 THEN InterdictForUse.AccCTopicCode2
		WHEN 2 THEN InterdictForUse.SalaryAccCTopicCode2
		WHEN 3 THEN FormsInfo_Project.AccCTopicCode2
		WHEN 4 THEN FormsInfo_FunctionsOffice.AccCTopicCode2
		WHEN 5 THEN InterdictForUse.MasterAccCTopicCode2
		WHEN 6 THEN Pay.PersonelInfo.AccCTopicCode2
		WHEN 8 THEN FormsInfo_FunctionsProcCode.AccCTopicCode2
		WHEN 9 THEN FormsInfo_FunCTopic3.AccCTopicCode2
		WHEN 10 THEN CASE WHEN InterdictForUse.SalaryAccCTopicCode2=-1 THEN 0 ELSE  FormsInfo_Project.AccCTopicCode2 END 		
    	WHEN 11 THEN StandardTimes.AccCTopicCode2
    	--WHEN 12 THEN st.AccCTopicCode2
	ELSE 0 END AS AccCTopicCode2,
	CASE InterdictForUse.CTopicCode3Kind
	 	WHEN 0 THEN 0 
--		WHEN 1 THEN InterdictForUse.AccCTopicCode2
		WHEN 2 THEN InterdictForUse.SalaryAccCTopicCode3
		WHEN 3 THEN FormsInfo_Project.AccCTopicCode3
		WHEN 4 THEN FormsInfo_FunctionsOffice.AccCTopicCode3
--		WHEN 5 THEN InterdictForUse.MasterAccCTopicCode2
--		WHEN 6 THEN Pay.PersonelInfo.AccCTopicCode2
		WHEN 8 THEN FormsInfo_FunctionsProcCode.AccCTopicCode3
		WHEN 9 THEN Pay.Functions.CTopic3--FormsInfo_FunCTopic3.AccCTopicCode3
    	WHEN 10 THEN StandardTimes.AccCTopicCode3

		WHEN 12 THEN CASE WHEN Pay.PersonelInfo.AccCTopicCode3=0 THEN FormsInfo_FunctionsOffice.AccCTopicCode3 ELSE  Pay.PersonelInfo.AccCTopicCode3 END 		
		--- پیش فرض از اطلاعات پرسنلی ، اگر اطلاعات پرسنلی صفر بود از واحد سازمانی


 	 ELSE 0 END AS AccCTopicCode3,

	SalaryEffectKind AS ShowListKind
	------    FixCalculate Type 1
FROM         Pay.Functions INNER JOIN
                      Pay.InterdictForUse(@YearMounth,1,1,@PersonelNoFROM ,@PersonelNoTo ,1 ) InterdictForUse  ON Pay.Functions.PersonelNo = InterdictForUse.PersonelNo INNER JOIN
                      Pay.PersonelInfo ON Pay.Functions.PersonelNo = Pay.PersonelInfo.PersonelNo LEFT OUTER JOIN
                      Pay.FormsInfo FormsInfo_FunctionsOffice ON Pay.Functions.OfficeCode = FormsInfo_FunctionsOffice.FormInfoID LEFT OUTER JOIN
                      Pay.FormsInfo FormsInfo_Project ON Pay.Functions.ProjectID = FormsInfo_Project.FormInfoID LEFT OUTER JOIN
                      Pay.FormsInfo FormsInfo_FunctionsProcCode ON Pay.Functions.ProcCode = FormsInfo_FunctionsProcCode.FormInfoID LEFT OUTER JOIN
                      Pay.FormsInfo FormsInfo_FunCTopic3 ON Pay.Functions.CTopic3 = FormsInfo_FunCTopic3.FormInfoID LEFT OUTER JOIN
                      Pay.StandardTimes ON Pay.Functions.Mounth = Pay.StandardTimes.InfoID INNER JOIN 
                      (SELECT     PersonelNo, SUM(FunctionDay + ISNULL(SickDay, 0)) AS AllDay 
							FROM         Pay.Functions    
							Where (Pay.Functions.Mounth =  @Mounth )AND(Pay.Functions.YearID = @year )
							GROUP BY PersonelNo
							) AllDay_Function on AllDay_Function.PersonelNo=Pay.Functions.PersonelNo

							----------abedi 93/06/26-----------
                       LEFT OUTER JOIN  Pay.FormTypes INNER JOIN
                       Pay.FormsInfo ON Pay.FormTypes.FormType = Pay.FormsInfo.FormType ON InterdictForUse.SalaryID = Pay.FormsInfo.FormInfoID
							----------abedi 93/06/26-----------

WHERE     (Pay.Functions.Mounth =  @Mounth  and Pay.Functions.PersonelNo between @PersonelNoFROM and @PersonelNoTo ) 
	 AND(Pay.Functions.YearID = @year )
--and    
--             ( CASE InterdictForUse.CalCulateType 
--	WHEN 0 THEN 0 
--	WHEN 1 THEN ROUND(InterdictForUse.Amount / 30 * Pay.Functions.FunctionDay,0)
--	WHEN 2 THEN ROUND(InterdictForUse.Amount / Pay.StandardTimes.StandardDays * Pay.Functions.Functionday,0)
--	WHEN 3 THEN ROUND(InterdictForUse.Amount / Pay.StandardTimes.Standardtimes * Pay.Functions.FunctionTime,0)
--	WHEN 4 THEN 
--		CASE  WHEN AllDay_Function.AllDay =0 THEN InterdictForUse.Amount ELSE 
--			ROUND((Pay.Functions.FunctionDay /  AllDay_Function.AllDay )  * InterdictForUse.Amount ,0)
--		end 
--	WHEN 5  THEN CASE  WHEN Pay.Functions.FunctionDay >30 THEN InterdictForUse.Amount ELSE  ROUND(InterdictForUse.Amount / 30 * Pay.Functions.FunctionDay,0)  END 
--	WHEN 6 THEN ROUND(InterdictForUse.Amount * Pay.Functions.Functionday,0)
--	WHEN 7 THEN ROUND(InterdictForUse.Amount / 30 * Pay.StandardTimes.StandardDays ,0)
--	WHEN 8 THEN ROUND(InterdictForUse.Amount /30* ( Pay.Functions.Functionday + ISNULL(Pay.Functions.SickDay,0)),0) 
--	WHEN 11 THEN --ROUND(InterdictForUse.Amount/(SELECT COUNT(ProjectID)FROM Pay.Functions WHERE PersonelNo = InterdictForUse.PersonelNo AND Mounth = @Mounth GROUP BY PersonelNo),0)
--                 CASE WHEN Pay.Functions.FunctionID=(SELECT MIN(FunctionID)FROM Pay.Functions 
--                      WHERE PersonelNo=InterdictForUse.PersonelNo AND Mounth=@Mounth )
--                    THEN InterdictForUse.Amount ELSE 0 END
--	ELSE 0 	end )  <>0 
---------------------------------------------------------------------------پايان محاسبه محاسبه حقوق پايه ، حق جذب  و ساير    ----------------------------------------------------------------------------------
union all 
------------------------------------------------------------------اين قسمت بمنظور محاسبه ناهاري و كارانه و بهره وري طراحي شده است  ------------------------------------------------------------
SELECT  2 AS Part,   Pay.Functions.FunctionID,Pay.Functions.FormInfoID AS FunctionInfoID,InterdictForUse.PersonelNo,Pay.Functions.ProjectID,Pay.Functions.OfficeCode,Pay.Functions.JobCode,
     InterdictForUse.SalaryID,Pay.Functions.Mounth,Functions.ProcCode,

   CASE InterdictForUse.CalCulateType 
	WHEN 0 THEN 0 
	WHEN 1 THEN ROUND(InterdictForUse.Amount / 30 * Pay.FunctionsItems.FDaily ,0)
	WHEN 4 THEN InterdictForUse.Amount
--		CASE  WHEN AllDay_Function.AllDay =0 THEN InterdictForUse.Amount ELSE 
--			ROUND((Pay.Functions.FunctionDay /  AllDay_Function.AllDay )  * InterdictForUse.Amount ,0)--
--		end
	WHEN 5  THEN CASE  WHEN Pay.FunctionsItems.FDaily  >30 THEN InterdictForUse.Amount ELSE  ROUND(InterdictForUse.Amount / 30 * Pay.FunctionsItems.FDaily ,0)  END 
	WHEN 6 THEN ROUND(InterdictForUse.Amount * Pay.FunctionsItems.FDaily ,0)
	WHEN 8 THEN ROUND(InterdictForUse.Amount / 30 * ( Pay.Functions.Functionday + ISNULL(Pay.Functions.SickDay,0)),0) 	
	WHEN 9 THEN ROUND(InterdictForUse.Amount *   Pay.Functions.Functionday ,0) 
	WHEN 10 THEN ROUND(InterdictForUse.Amount *  Pay.Functions.FunctionTime ,0)
	
----    makhsose pasargad ------1	FixCalcu
    WHEN 13 THEN
          CASE WHEN  Pay.FunctionsItems.FDaily >15 THEN
           ROUND(InterdictForUse.Amount/15 * (Pay.FunctionsItems.FDaily - 15 ) * 1.4 + InterdictForUse.Amount ,0)
       ELSE InterdictForUse.Amount/15 *  Pay.FunctionsItems.FDaily --end
        END

----    makhsose pasargad ------1	FixCalcu

	
	
	ELSE      InterdictForUse.Amount * Pay.FunctionsItems.FDaily END AS price,
	1 AS BedBes,2 AS CalCulateKind,
	CASE Pay.FormTypes.TopicCodeKind 
		WHEN 0 THEN 0 
		WHEN 1 THEN InterdictForUse.AccTopicCode
		WHEN 2 THEN FormsInfo.AccTopicCode 
		WHEN 3 THEN FormsInfo_Project.AccTopicCode
		WHEN 4 THEN FormsInfo_Office.AccTopicCode
		WHEN 5 THEN InterdictForUse.MasterAccTopicCode
		WHEN 6 THEN Pay.PersonelInfo.AccTopicCode
		WHEN 8 THEN FormsInfo_ProcCode.AccTopicCode
		WHEN 9 THEN FormsInfo_CTopics3.AccTopicCode
		WHEN 11 THEN ltrim(str(FormsInfo_Office.AccTopicCode)) +''+ ltrim(str(FormsInfo.AccTopicCode))
		WHEN 12 THEN CASE WHEN Pay.FormsInfo.AccTopicCode<>0 THEN Pay.FormsInfo.AccTopicCode ELSE  FormsInfo_Project.AccTopicCode END 					
	ELSE 0 END AS AccTopicCode,
	CASE Pay.FormTypes.DetailCodeKind 
		WHEN 0 THEN 0 
		WHEN 1 THEN InterdictForUse.AccDetailCode
		WHEN 2 THEN Pay.FormsInfo.AccDetailCode
		WHEN 3 THEN FormsInfo_Project.AccDetailCode
		WHEN 4 THEN FormsInfo_Office.AccDetailCode
		WHEN 5 THEN InterdictForUse.MasterAccDetailCode
		WHEN 6 THEN Pay.PersonelInfo.AccDetailCode
		WHEN 8 THEN FormsInfo_ProcCode.AccDetailCode
		WHEN 9 THEN FormsInfo_CTopics3.AccDetailCode
		WHEN 11 THEN case when  Pay.FormsInfo.AccDetailCode = -1 then PersonelInfo.AccDetailCode else Pay.FormsInfo.AccDetailCode  end
		WHEN 12 THEN case when InterdictForUse.SalaryAccDetailCode =-1 then FormsInfo_Office.AccDetailCode else InterdictForUse.SalaryAccDetailCode end
	ELSE 0 END  AS AccDetailCode,
	CASE Pay.FormTypes.CTopicCodeKind 
		WHEN 0 THEN 0 
		WHEN 1 THEN InterdictForUse.AccCTopicCode
		WHEN 2 THEN Pay.FormsInfo.AccCTopicCode
		WHEN 3 THEN FormsInfo_Project.AccCTopicCode
		WHEN 4 THEN FormsInfo_Office.AccCTopicCode
		WHEN 5 THEN InterdictForUse.MasterAccCTopicCode
		WHEN 6 THEN Pay.PersonelInfo.AccCTopicCode
		WHEN 8 THEN FormsInfo_ProcCode.AccCTopicCode
		WHEN 9 THEN FormsInfo_CTopics3.AccCTopicCode
	ELSE 0 END AS AccCTopicCode,
	CASE Pay.FormTypes.CTopicCode2Kind 
		WHEN 0 THEN 0 
		WHEN 1 THEN InterdictForUse.AccCTopicCode2

		WHEN 2 THEN Pay.FormsInfo.AccCTopicCode2
		WHEN 3 THEN FormsInfo_Project.AccCTopicCode2
		WHEN 4 THEN FormsInfo_Office.AccCTopicCode2
		WHEN 5 THEN InterdictForUse.MasterAccCTopicCode2
		WHEN 6 THEN Pay.PersonelInfo.AccCTopicCode2
		WHEN 8 THEN FormsInfo_ProcCode.AccCTopicCode2
		WHEN 9 THEN FormsInfo_CTopics3.AccCTopicCode2
    	WHEN 11 THEN StandardTimes.AccCTopicCode2
    	--WHEN 12 THEN st.AccCTopicCode2
	ELSE 0 END AS AccCTopicCode2,
	CASE Pay.FormTypes.CTopicCode3Kind
		WHEN 0 THEN 0 
--		WHEN 1 THEN InterdictForUse.AccCTopicCode3
		WHEN 2 THEN Pay.FormsInfo.AccCTopicCode3
		WHEN 3 THEN FormsInfo_Project.AccCTopicCode3
		WHEN 4 THEN FormsInfo_Office.AccCTopicCode3
--		WHEN 5 THEN InterdictForUse.MasterAccCTopicCode3
--		WHEN 6 THEN Pay.PersonelInfo.AccCTopicCode3
		WHEN 8 THEN FormsInfo_ProcCode.AccCTopicCode3
		WHEN 9 THEN Pay.Functions.CTopic3  ---FormsInfo_CTopics3.AccCTopicCode3
    	WHEN 10 THEN StandardTimes.AccCTopicCode3

		WHEN 12 THEN CASE WHEN Pay.PersonelInfo.AccCTopicCode3=0 THEN FormsInfo_Office.AccCTopicCode3 ELSE  Pay.PersonelInfo.AccCTopicCode3 END 		
		--- پیش فرض از اطلاعات پرسنلی ، اگر اطلاعات پرسنلی صفر بود از واحد سازمانی

 	 ELSE 0 END AS AccCTopicCode3,

	1 AS ShowListKind

	
	------    FixCalculate Type 1
FROM         Pay.InterdictForUse(@YearMounth, 2, 2, @PersonelNoFrom, @PersonelNoTo,1) AS InterdictForUse INNER JOIN
                      Pay.Functions INNER JOIN
                      Pay.PersonelInfo ON Pay.Functions.PersonelNo = Pay.PersonelInfo.PersonelNo ON InterdictForUse.PersonelNo = Pay.Functions.PersonelNo 
                      --INNER JOIN
                      --    (SELECT     PersonelNo, SUM(FunctionDay + ISNULL(SickDay, 0)) AS AllDay
                      --       FROM         Pay.Functions AS Pay.Functions_1
                      --       WHERE     (Mounth = @Mounth)
                      --       GROUP BY PersonelNo) AS  AllDay_Function ON Pay.Functions.PersonelNo = AllDay_Function.PersonelNo 
                             LEFT OUTER JOIN
                      Pay.FormTypes INNER JOIN
                       Pay.FormsInfo  ON Pay.FormTypes.FormType = Pay.FormsInfo.FormType ON InterdictForUse.SalaryID = Pay.FormsInfo.FormInfoID LEFT OUTER JOIN
                      Pay.FunctionsItems ON Pay.Functions.FunctionID = Pay.FunctionsItems.FunctionID AND InterdictForUse.SalaryID = Pay.FunctionsItems.SalaryID LEFT OUTER JOIN
                       Pay.FormsInfo AS FormsInfo_Office ON Pay.Functions.OfficeCode = FormsInfo_Office.FormInfoID LEFT OUTER JOIN
                       Pay.FormsInfo AS FormsInfo_Project ON Pay.Functions.ProjectID = FormsInfo_Project.FormInfoID LEFT OUTER JOIN
                       Pay.FormsInfo AS FormsInfo_ProcCode ON Pay.Functions.ProcCode = FormsInfo_ProcCode.FormInfoID LEFT OUTER JOIN
                       Pay.FormsInfo AS FormsInfo_CTopics3 ON Pay.Functions.CTopic3 = FormsInfo_CTopics3.FormInfoID LEFT OUTER JOIN
                      Pay.StandardTimes ON Pay.Functions.Mounth = Pay.StandardTimes.InfoID 
                                           
WHERE     (Pay.Functions.Mounth = @Mounth and Pay.Functions.PersonelNo between @PersonelNoFROM and @PersonelNoTo )
        AND(Pay.Functions.YearID = @year )

------------------------پايان محاسبه بهره وري و كارانه ( مزاياي شماره   2   -----------------------------------------
UNION ALL
----------- اين قسمت براي محاسبات اقلام حقوقي غير حكم كارگزيني طراحي شده است  مانند :  ناهاري با پايه ثابت و ...------
SELECT	3 AS Part,Functions.FunctionID,Functions.FormInfoID AS FunctionInfoID,Interdictsact.PersonelNo,Functions.ProjectID,
		Functions.OfficeCode,Functions.JobCode,FunctionsItems.SalaryID,Functions.Mounth,Functions.ProcCode,
		FormsInfo.Amount * Pay.FunctionsItems.FDaily AS price,SalaryEffectKind AS BedBes,2 AS CalCulateKind,
	CASE Pay.FormTypes.TopicCodeKind 
		WHEN 0 THEN 0 
		WHEN 1 THEN Interdictsact.AccTopicCode
		WHEN 2 THEN Pay.FormsInfo.AccTopicCode
		WHEN 3 THEN FormsInfo_Project.AccTopicCode
		WHEN 4 THEN FormsInfo_Office.AccTopicCode
		WHEN 5 THEN FormsInfo_Master.AccTopicCode
		WHEN 6 THEN Pay.PersonelInfo.AccTopicCode
		WHEN 8 THEN FormsInfo_ProcCode.AccTopicCode
		WHEN 9 THEN FormsInfo_CTopics3.AccTopicCode
		WHEN 11 THEN ltrim(str(FormsInfo_Office.AccTopicCode)) +''+ ltrim(str(FormsInfo.AccTopicCode))		
	ELSE 0 END AS AccTopicCode,
	CASE Pay.FormTypes.DetailCodeKind 
		WHEN 0 THEN 0 
		WHEN 1 THEN Interdictsact.AccDetailCode
		WHEN 2 THEN Pay.FormsInfo.AccDetailCode
		WHEN 3 THEN FormsInfo_Project.AccDetailCode
		WHEN 4 THEN FormsInfo_Office.AccDetailCode
		WHEN 5 THEN FormsInfo_Master.AccDetailCode
		WHEN 6 THEN Pay.PersonelInfo.AccDetailCode
		WHEN 8 THEN FormsInfo_ProcCode.AccDetailCode
		WHEN 9 THEN FormsInfo_CTopics3.AccDetailCode
		WHEN 12 THEN case when Interdictsact.AccDetailCode =-1 then FormsInfo_Office.AccDetailCode else Interdictsact.AccDetailCode end
	ELSE 0 END AS AccDetailCode,
	CASE Pay.FormTypes.CTopicCodeKind 
		WHEN 0 THEN 0 
		WHEN 1 THEN Interdictsact.AccCTopicCode
		WHEN 2 THEN Pay.FormsInfo.AccCTopicCode
		WHEN 3 THEN FormsInfo_Project.AccCTopicCode
		WHEN 4 THEN FormsInfo_Office.AccCTopicCode
		WHEN 5 THEN FormsInfo_Master.AccCTopicCode
		WHEN 6 THEN Pay.PersonelInfo.AccCTopicCode
		WHEN 8 THEN FormsInfo_ProcCode.AccCTopicCode
		WHEN 9 THEN FormsInfo_CTopics3.AccCTopicCode
	ELSE 0 END AS AccCTopicCode,
	CASE Pay.FormTypes.CTopicCode2Kind 
		WHEN 0 THEN 0 
		WHEN 1 THEN Interdictsact.AccCTopicCode2
		WHEN 2 THEN Pay.FormsInfo.AccCTopicCode2
		WHEN 3 THEN FormsInfo_Project.AccCTopicCode2
		WHEN 4 THEN FormsInfo_Office.AccCTopicCode2
		WHEN 5 THEN FormsInfo_Master.AccCTopicCode2
		WHEN 6 THEN Pay.PersonelInfo.AccCTopicCode2
		WHEN 8 THEN FormsInfo_ProcCode.AccCTopicCode2
		WHEN 9 THEN FormsInfo_CTopics3.AccCTopicCode2
	ELSE 0 END AS AccCTopicCode2,
	CASE Pay.FormTypes.CTopicCode3Kind 
		WHEN 0 THEN 0 
--		WHEN 1 THEN Interdictsact.AccCTopicCode3
		WHEN 2 THEN Pay.FormsInfo.AccCTopicCode3
		WHEN 3 THEN FormsInfo_Project.AccCTopicCode3
		WHEN 4 THEN FormsInfo_Office.AccCTopicCode3
		WHEN 5 THEN FormsInfo_Master.AccCTopicCode3
--		WHEN 6 THEN Pay.PersonelInfo.AccCTopicCode3
		WHEN 8 THEN FormsInfo_ProcCode.AccCTopicCode3
		WHEN 9 THEN Pay.Functions.CTopic3 ---FormsInfo_CTopics3.AccCTopicCode3
    	WHEN 10 THEN StandardTimes.AccCTopicCode3

		WHEN 12 THEN CASE WHEN Pay.PersonelInfo.AccCTopicCode3=0 THEN FormsInfo_Office.AccCTopicCode3 ELSE  Pay.PersonelInfo.AccCTopicCode3 END 		
		--- پیش فرض از اطلاعات پرسنلی ، اگر اطلاعات پرسنلی صفر بود از واحد سازمانی

	ELSE 0 END AS AccCTopicCode3,
              SalaryEffectKind AS ShowListKind

	------    FixCalculate Type 1
FROM         Pay.FunctionsItems INNER JOIN
                      Pay.Functions INNER JOIN
                          (SELECT     *
                             FROM         Pay.Interdicts
                             WHERE     state < 50  ) Interdictsact ON Pay.Functions.PersonelNo = Interdictsact.PersonelNo ON 
                      Pay.FunctionsItems.FunctionID = Pay.Functions.FunctionID INNER JOIN
                      Pay.PersonelInfo ON Pay.Functions.PersonelNo = Pay.PersonelInfo.PersonelNo INNER JOIN
                      Pay.FormsInfo FormsInfo_Master ON Interdictsact.EmployTypeID = FormsInfo_Master.FormInfoID LEFT OUTER JOIN
                      Pay.FormsInfo FormsInfo_Project ON Pay.Functions.ProjectID = FormsInfo_Project.FormInfoID LEFT OUTER JOIN
                      Pay.FormsInfo FormsInfo_Office ON Pay.Functions.OfficeCode = FormsInfo_Office.FormInfoID LEFT OUTER JOIN
                      Pay.FormsInfo FormsInfo_ProcCode ON Pay.Functions.ProcCode = FormsInfo_ProcCode.FormInfoID LEFT OUTER JOIN
                      Pay.FormsInfo FormsInfo_CTopics3 ON Pay.Functions.CTopic3 = FormsInfo_CTopics3.FormInfoID LEFT OUTER JOIN
                      Pay.FormTypes INNER JOIN
                      Pay.FormsInfo ON Pay.FormTypes.FormType = Pay.FormsInfo.FormType ON Pay.FunctionsItems.SalaryID = Pay.FormsInfo.FormInfoID LEFT OUTER JOIN
                      Pay.StandardTimes ON Pay.Functions.Mounth = Pay.StandardTimes.InfoID 


WHERE     (Interdictsact.PersonelNo between @PersonelNoFROM and @PersonelNoTo ) AND (FormTypes.SalaryKind = 3) AND (Functions.Mounth =@Mounth)
      AND(Pay.Functions.YearID = @year )

-----------پايان محاسبه ---
------اين قسمت براي محاسبات اقلام حقوقي غير حكم كارگزيني طراحي شده است  مانند :  ناهاري با پايه ثابت و ...----------

UNION ALL 
-----------      بمنظور محاسبه مزاياي محاسباتي مانند اضافه كاري ، نوبت كاري ، غيبت و شبكاري  نوشته شده است ---------
-------- type 31 -----------پارامترها شامل :    از ماه    تا ماه    و تركيب سال و ماه مانند  84/02 ميباشد .  ------------
SELECT   4 AS Part,  Pay.FunctionsItems.FunctionID,Pay.Functions.FormInfoID AS FunctionInfoID,Pay.Functions.PersonelNo,Pay.Functions.ProjectID,
                       Pay.Functions.OfficeCode,Pay.Functions.JobCode,Pay.FunctionsItems.SalaryID,Pay.Functions.Mounth,Functions.ProcCode,

		--ROUND(SUM(InterdictForUse.Amount) / MAX(FormsInfo.Amount)  * 
		--MAX(FormsInfo.StandardDays * Pay.FunctionsItems.FDaily ) + 
		--SUM(InterdictForUse.Amount) / MAX(FormsInfo.Amount) * MAX(FormsInfo.StandardTimes *   Pay.FunctionsItems.FHours ),
  --                     0 ) AS price
ROUND((CASE WHEN ((SUM(InterdictForUse.Amount)>MAX(FormsInfo.FirstAmount) and MAX(FormsInfo.FirstAmount)>0))
  THEN MAX(FormsInfo.FirstAmount) ELSE SUM(InterdictForUse.Amount) END ) / MAX(FormsInfo.Amount)  * 
  MAX(FormsInfo.StandardDays * Pay.FunctionsItems.FDaily ) + 
 (CASE WHEN (SUM(InterdictForUse.Amount)>MAX(FormsInfo.FirstAmount) and MAX(FormsInfo.FirstAmount)>0) 
   THEN MAX(FormsInfo.FirstAmount) ELSE SUM(InterdictForUse.Amount) END ) / MAX(FormsInfo.Amount) * MAX(FormsInfo.StandardTimes *   Pay.FunctionsItems.FHours ),
        0 ) AS price
					   
					   ,SalaryEffectKind AS BedBes,5 AS CalCulateKind,

	CASE Pay.FormTypes.TopicCodeKind 
		WHEN 0 THEN 0 
		WHEN 1 THEN InterdictForUse.AccTopicCode
		WHEN 2 THEN Pay.FormsInfo.AccTopicCode
		WHEN 3 THEN FormsInfo_Project.AccTopicCode
		WHEN 4 THEN FormsInfo_Office.AccTopicCode
		WHEN 5 THEN InterdictForUse.MasterAccTopicCode
		WHEN 6 THEN Pay.PersonelInfo.AccTopicCode
		WHEN 8 THEN FormsInfo_ProcCode.AccTopicCode
		WHEN 9 THEN FormsInfo_CTopics3.AccTopicCode
		WHEN 11 THEN ltrim(str(FormsInfo_Office.AccTopicCode)) +''+ ltrim(str(FormsInfo.AccTopicCode))				
		WHEN 12 THEN CASE WHEN Pay.FormsInfo.AccTopicCode<>0 THEN Pay.FormsInfo.AccTopicCode ELSE  FormsInfo_Project.AccTopicCode END 					
	ELSE 0 END AS AccTopicCode,
	CASE Pay.FormTypes.DetailCodeKind 
		WHEN 0 THEN 0 
		WHEN 1 THEN InterdictForUse.AccDetailCode
		WHEN 2 THEN Pay.FormsInfo.AccDetailCode
		WHEN 3 THEN FormsInfo_Project.AccDetailCode
		WHEN 4 THEN FormsInfo_Office.AccDetailCode
		WHEN 5 THEN InterdictForUse.MasterAccDetailCode
		WHEN 6 THEN Pay.PersonelInfo.AccDetailCode
		WHEN 8 THEN FormsInfo_ProcCode.AccDetailCode
		WHEN 9 THEN FormsInfo_CTopics3.AccDetailCode
		---- add abedi amini
    	WHEN 11  THEN CASE WHEN Pay.FormsInfo.AccDetailCode =-1 THEN Pay.PersonelInfo.AccDetailCode ELSE Pay.FormsInfo.AccDetailCode  END 
    	WHEN 12  THEN CASE WHEN Pay.FormsInfo.AccDetailCode =-1 THEN FormsInfo_Office.AccDetailCode ELSE Pay.FormsInfo.AccDetailCode  END 
	ELSE 0 END AS AccDetailCode,
	CASE Pay.FormTypes.CTopicCodeKind 
		WHEN 0 THEN 0 
		WHEN 1 THEN InterdictForUse.AccCTopicCode
		WHEN 2 THEN Pay.FormsInfo.AccCTopicCode
		WHEN 3 THEN FormsInfo_Project.AccCTopicCode
		WHEN 4 THEN FormsInfo_Office.AccCTopicCode
		WHEN 5 THEN InterdictForUse.MasterAccCTopicCode
		WHEN 6 THEN Pay.PersonelInfo.AccCTopicCode
		WHEN 8 THEN FormsInfo_ProcCode.AccCTopicCode
		WHEN 9 THEN FormsInfo_CTopics3.AccCTopicCode
			---- add abedi oredr by salehi
    	WHEN 13  THEN CASE WHEN Pay.FormsInfo.AccCTopicCode =-1 THEN FormsInfo_Project.AccCTopicCode ELSE Pay.FormsInfo.AccCTopicCode  END 
			---- add abedi oredr by salehi
ELSE 0 END AS AccCTopicCode,
	CASE Pay.FormTypes.CTopicCode2Kind 
		WHEN 0 THEN 0 
		WHEN 1 THEN InterdictForUse.AccCTopicCode2
		WHEN 2 THEN Pay.FormsInfo.AccCTopicCode2
		WHEN 3 THEN FormsInfo_Project.AccCTopicCode2
		WHEN 4 THEN FormsInfo_Office.AccCTopicCode2
		WHEN 5 THEN InterdictForUse.MasterAccCTopicCode2
		WHEN 6 THEN Pay.PersonelInfo.AccCTopicCode2
		WHEN 8 THEN FormsInfo_ProcCode.AccCTopicCode2
		WHEN 9 THEN FormsInfo_CTopics3.AccCTopicCode2
    	WHEN 11 THEN StandardTimes.AccCTopicCode2
    	--WHEN 12 THEN st.AccCTopicCode2
	ELSE 0 END AS AccCTopicCode2,
	CASE Pay.FormTypes.CTopicCode3Kind ---old CTopicCode2Kind
		WHEN 0 THEN 0 
--		WHEN 1 THEN InterdictForUse.AccCTopicCode2
		WHEN 2 THEN Pay.FormsInfo.AccCTopicCode3
		WHEN 3 THEN FormsInfo_Project.AccCTopicCode3
		WHEN 4 THEN FormsInfo_Office.AccCTopicCode3
--		WHEN 5 THEN InterdictForUse.MasterAccCTopicCode2
		WHEN 6 THEN Pay.PersonelInfo.AccCTopicCode3
		WHEN 8 THEN FormsInfo_ProcCode.AccCTopicCode3
		WHEN 9 THEN FormsInfo_CTopics3.AccCTopicCode3
		WHEN 10 THEN StandardTimes.AccCTopicCode3

		WHEN 12 THEN CASE WHEN Pay.PersonelInfo.AccCTopicCode3=0 THEN FormsInfo_Office.AccCTopicCode3 ELSE  Pay.PersonelInfo.AccCTopicCode3 END 		
		--- پیش فرض از اطلاعات پرسنلی ، اگر اطلاعات پرسنلی صفر بود از واحد سازمانی

	ELSE 0 END AS AccCTopicCode3,
	SalaryEffectKind AS ShowListKind
 
	------    FixCalculate Type 1
FROM         Pay.FunctionsItems INNER JOIN
                      Pay.Functions ON Pay.FunctionsItems.FunctionID = Pay.Functions.FunctionID INNER JOIN
                      Pay.InterdictForUse(@YearMounth,1,1,@PersonelNoFROM ,@PersonelNoTo ,1 ) InterdictForUse ON Pay.Functions.PersonelNo = InterdictForUse.PersonelNo INNER JOIN
                          (SELECT     *
                             FROM         Pay.SalaryRange
                             WHERE     kind = 0) SalaryRange4Use ON InterdictForUse.SalaryID = SalaryRange4Use.SalaryID AND 
                      Pay.FunctionsItems.SalaryID = SalaryRange4Use.FormInfoID INNER JOIN
                      Pay.FormsInfo ON Pay.FunctionsItems.SalaryID = Pay.FormsInfo.FormInfoID INNER JOIN
                      Pay.FormTypes ON Pay.FormsInfo.FormType =Pay.FormTypes.FormType INNER JOIN
                      Pay.PersonelInfo ON Pay.Functions.PersonelNo = Pay.PersonelInfo.PersonelNo LEFT OUTER JOIN
                      Pay.FormsInfo FormsInfo_Office ON Pay.Functions.OfficeCode = FormsInfo_Office.FormInfoID LEFT OUTER JOIN
                      Pay.FormsInfo FormsInfo_Project ON Pay.Functions.ProjectID = FormsInfo_Project.FormInfoID LEFT OUTER JOIN
                      Pay.FormsInfo FormsInfo_ProcCode ON Pay.Functions.ProcCode = FormsInfo_ProcCode.FormInfoID LEFT OUTER JOIN
                      Pay.FormsInfo FormsInfo_CTopics3 ON Pay.Functions.CTopic3 = FormsInfo_CTopics3.FormInfoID LEFT OUTER JOIN
                      Pay.FormsInfo FormsInfo_1 ON InterdictForUse.OfficeCode = FormsInfo_1.FormInfoID LEFT OUTER JOIN
                      Pay.StandardTimes ON Pay.Functions.Mounth = Pay.StandardTimes.InfoID 

WHERE     (FormTypes.SalaryKind = 5) 
--------------------------------------------------abedi
AND (ISNULL( Pay.FormsInfo.WageCalcKind,0) = 0 )
--------------------------------------------------abedi
AND      (Pay.Functions.Mounth = @Mounth and Pay.Functions.PersonelNo between @PersonelNoFROM and @PersonelNoTo )
      AND(Pay.Functions.YearID = @year )
GROUP BY Pay.FunctionsItems.FunctionID,Pay.Functions.FormInfoID ,Pay.Functions.PersonelNo,Pay.Functions.ProjectID,
                       Pay.Functions.OfficeCode,Pay.Functions.JobCode,Pay.FunctionsItems.SalaryID,Pay.Functions.Mounth,Functions.ProcCode,

SalaryEffectKind ,

	CASE Pay.FormTypes.TopicCodeKind 
		WHEN 0 THEN 0 
		WHEN 1 THEN InterdictForUse.AccTopicCode
		WHEN 2 THEN Pay.FormsInfo.AccTopicCode
		WHEN 3 THEN FormsInfo_Project.AccTopicCode
		WHEN 4 THEN FormsInfo_Office.AccTopicCode
		WHEN 5 THEN InterdictForUse.MasterAccTopicCode
		WHEN 6 THEN Pay.PersonelInfo.AccTopicCode
		WHEN 8 THEN FormsInfo_ProcCode.AccTopicCode
		WHEN 9 THEN FormsInfo_CTopics3.AccTopicCode
		WHEN 11 THEN ltrim(str(FormsInfo_Office.AccTopicCode)) +''+ ltrim(str(FormsInfo.AccTopicCode))				
		WHEN 12 THEN CASE WHEN Pay.FormsInfo.AccTopicCode<>0 THEN Pay.FormsInfo.AccTopicCode ELSE  FormsInfo_Project.AccTopicCode END 					
	ELSE 0 END ,
	CASE Pay.FormTypes.DetailCodeKind 
		WHEN 0 THEN 0 
		WHEN 1 THEN InterdictForUse.AccDetailCode
		WHEN 2 THEN Pay.FormsInfo.AccDetailCode
		WHEN 3 THEN FormsInfo_Project.AccDetailCode
		WHEN 4 THEN FormsInfo_Office.AccDetailCode
		WHEN 5 THEN InterdictForUse.MasterAccDetailCode
		WHEN 6 THEN Pay.PersonelInfo.AccDetailCode
		WHEN 8 THEN FormsInfo_ProcCode.AccDetailCode
		WHEN 9 THEN FormsInfo_CTopics3.AccDetailCode
		---- add abedi amini
    	WHEN 11  THEN CASE WHEN Pay.FormsInfo.AccDetailCode =-1 THEN Pay.PersonelInfo.AccDetailCode ELSE Pay.FormsInfo.AccDetailCode  END 
    	WHEN 12  THEN CASE WHEN Pay.FormsInfo.AccDetailCode =-1 THEN FormsInfo_Office.AccDetailCode ELSE Pay.FormsInfo.AccDetailCode  END 
	ELSE 0 END ,
	CASE Pay.FormTypes.CTopicCodeKind 
		WHEN 0 THEN 0 
		WHEN 1 THEN InterdictForUse.AccCTopicCode
		WHEN 2 THEN Pay.FormsInfo.AccCTopicCode
		WHEN 3 THEN FormsInfo_Project.AccCTopicCode
		WHEN 4 THEN FormsInfo_Office.AccCTopicCode
		WHEN 5 THEN InterdictForUse.MasterAccCTopicCode
		WHEN 6 THEN Pay.PersonelInfo.AccCTopicCode
		WHEN 8 THEN FormsInfo_ProcCode.AccCTopicCode
		WHEN 9 THEN FormsInfo_CTopics3.AccCTopicCode
			---- add abedi oredr by salehi
    	WHEN 13  THEN CASE WHEN Pay.FormsInfo.AccCTopicCode =-1 THEN FormsInfo_Project.AccCTopicCode ELSE Pay.FormsInfo.AccCTopicCode  END 
			---- add abedi oredr by salehi
ELSE 0 END ,
	CASE Pay.FormTypes.CTopicCode2Kind 
		WHEN 0 THEN 0 
		WHEN 1 THEN InterdictForUse.AccCTopicCode2
		WHEN 2 THEN Pay.FormsInfo.AccCTopicCode2
		WHEN 3 THEN FormsInfo_Project.AccCTopicCode2
		WHEN 4 THEN FormsInfo_Office.AccCTopicCode2
		WHEN 5 THEN InterdictForUse.MasterAccCTopicCode2
		WHEN 6 THEN Pay.PersonelInfo.AccCTopicCode2
		WHEN 8 THEN FormsInfo_ProcCode.AccCTopicCode2
		WHEN 9 THEN FormsInfo_CTopics3.AccCTopicCode2
    	WHEN 11 THEN StandardTimes.AccCTopicCode2
    	--WHEN 12 THEN st.AccCTopicCode2
	ELSE 0 END ,
	CASE Pay.FormTypes.CTopicCode3Kind ---old CTopicCode2Kind
		WHEN 0 THEN 0 
--		WHEN 1 THEN InterdictForUse.AccCTopicCode2
		WHEN 2 THEN Pay.FormsInfo.AccCTopicCode3
		WHEN 3 THEN FormsInfo_Project.AccCTopicCode3
		WHEN 4 THEN FormsInfo_Office.AccCTopicCode3
--		WHEN 5 THEN InterdictForUse.MasterAccCTopicCode2
		WHEN 6 THEN Pay.PersonelInfo.AccCTopicCode3
		WHEN 8 THEN FormsInfo_ProcCode.AccCTopicCode3
		WHEN 9 THEN FormsInfo_CTopics3.AccCTopicCode3
		WHEN 10 THEN StandardTimes.AccCTopicCode3

		WHEN 12 THEN CASE WHEN Pay.PersonelInfo.AccCTopicCode3=0 THEN FormsInfo_Office.AccCTopicCode3 ELSE  Pay.PersonelInfo.AccCTopicCode3 END 		
		--- پیش فرض از اطلاعات پرسنلی ، اگر اطلاعات پرسنلی صفر بود از واحد سازمانی

	ELSE 0 END ,
	SalaryEffectKind 
--HAVING      (Pay.Functions.Mounth = @Mounth and Pay.Functions.PersonelNo between @PersonelNoFROM and @PersonelNoTo )

--------abedi orderby Morteza.rezaei orderby Rahbin   ADD UNION ALL

UNION ALL 
SELECT 5 AS Part, Pay.Functions.FunctionID,Functions.FormInfoID AS FunctionInfoID,Functions.PersonelNo,Functions.ProjectID,
        Pay.Functions.OfficeCode,Functions.JobCode,salaryRange4Use.FormInfoID AS SalaryID,Functions.Mounth,Functions.ProcCode,

ROUND(
 (CASE WHEN (SUM(InterdictForUse.Amount)>MAX(FormsInfo.FirstAmount) and MAX(FormsInfo.FirstAmount)>0)
  THEN MAX(FormsInfo.FirstAmount) ELSE SUM(InterdictForUse.Amount) END ) / MAX(FormsInfo.Amount)  * 
  MAX(FormsInfo.StandardDays * 1 ) +
 (CASE WHEN (SUM(InterdictForUse.Amount)>MAX(FormsInfo.FirstAmount) and MAX(FormsInfo.FirstAmount)>0) 
  THEN MAX(FormsInfo.FirstAmount) ELSE SUM(InterdictForUse.Amount) END ) / MAX(FormsInfo.Amount) * 
  MAX(FormsInfo.StandardTimes *   1 )  
  ,0 ) AS price
					   
	,SalaryEffectKind AS BedBes,5 AS CalCulateKind,

	CASE Pay.FormTypes.TopicCodeKind 
		WHEN 0 THEN 0 
		WHEN 1 THEN InterdictForUse.AccTopicCode
		WHEN 2 THEN Pay.FormsInfo.AccTopicCode
		WHEN 3 THEN FormsInfo_Project.AccTopicCode
		WHEN 4 THEN FormsInfo_Office.AccTopicCode
		WHEN 5 THEN InterdictForUse.MasterAccTopicCode
		WHEN 6 THEN Pay.PersonelInfo.AccTopicCode
		WHEN 8 THEN FormsInfo_ProcCode.AccTopicCode
		WHEN 9 THEN FormsInfo_CTopics3.AccTopicCode
		WHEN 11 THEN ltrim(str(FormsInfo_Office.AccTopicCode)) +''+ ltrim(str(FormsInfo.AccTopicCode))				
		WHEN 12 THEN CASE WHEN Pay.FormsInfo.AccTopicCode<>0 THEN Pay.FormsInfo.AccTopicCode ELSE  FormsInfo_Project.AccTopicCode END 					
	ELSE 0 END AS AccTopicCode,
	CASE Pay.FormTypes.DetailCodeKind 
		WHEN 0 THEN 0 
		WHEN 1 THEN InterdictForUse.AccDetailCode
		WHEN 2 THEN Pay.FormsInfo.AccDetailCode
		WHEN 3 THEN FormsInfo_Project.AccDetailCode
		WHEN 4 THEN FormsInfo_Office.AccDetailCode
		WHEN 5 THEN InterdictForUse.MasterAccDetailCode
		WHEN 6 THEN Pay.PersonelInfo.AccDetailCode
		WHEN 8 THEN FormsInfo_ProcCode.AccDetailCode
		WHEN 9 THEN FormsInfo_CTopics3.AccDetailCode
		---- add abedi amini
    	WHEN 11  THEN CASE WHEN Pay.FormsInfo.AccDetailCode =-1 THEN Pay.PersonelInfo.AccDetailCode ELSE Pay.FormsInfo.AccDetailCode  END 
    	WHEN 12  THEN CASE WHEN Pay.FormsInfo.AccDetailCode =-1 THEN FormsInfo_Office.AccDetailCode ELSE Pay.FormsInfo.AccDetailCode  END 
	ELSE 0 END AS AccDetailCode,
	CASE Pay.FormTypes.CTopicCodeKind 
		WHEN 0 THEN 0 
		WHEN 1 THEN InterdictForUse.AccCTopicCode
		WHEN 2 THEN Pay.FormsInfo.AccCTopicCode
		WHEN 3 THEN FormsInfo_Project.AccCTopicCode
		WHEN 4 THEN FormsInfo_Office.AccCTopicCode
		WHEN 5 THEN InterdictForUse.MasterAccCTopicCode
		WHEN 6 THEN Pay.PersonelInfo.AccCTopicCode
		WHEN 8 THEN FormsInfo_ProcCode.AccCTopicCode
		WHEN 9 THEN FormsInfo_CTopics3.AccCTopicCode
			---- add abedi oredr by salehi
    	WHEN 13  THEN CASE WHEN Pay.FormsInfo.AccCTopicCode =-1 THEN FormsInfo_Project.AccCTopicCode ELSE Pay.FormsInfo.AccCTopicCode  END 
			---- add abedi oredr by salehi
ELSE 0 END AS AccCTopicCode,
	CASE Pay.FormTypes.CTopicCode2Kind 
		WHEN 0 THEN 0 
		WHEN 1 THEN InterdictForUse.AccCTopicCode2
		WHEN 2 THEN Pay.FormsInfo.AccCTopicCode2
		WHEN 3 THEN FormsInfo_Project.AccCTopicCode2
		WHEN 4 THEN FormsInfo_Office.AccCTopicCode2
		WHEN 5 THEN InterdictForUse.MasterAccCTopicCode2
		WHEN 6 THEN Pay.PersonelInfo.AccCTopicCode2
		WHEN 8 THEN FormsInfo_ProcCode.AccCTopicCode2
		WHEN 9 THEN FormsInfo_CTopics3.AccCTopicCode2
    	WHEN 11 THEN StandardTimes.AccCTopicCode2
    	--WHEN 12 THEN st.AccCTopicCode2
	ELSE 0 END AS AccCTopicCode2,
	CASE Pay.FormTypes.CTopicCode3Kind ---old CTopicCode2Kind 
		WHEN 0 THEN 0 
--		WHEN 1 THEN InterdictForUse.AccCTopicCode2
		WHEN 2 THEN Pay.FormsInfo.AccCTopicCode3
		WHEN 3 THEN FormsInfo_Project.AccCTopicCode3
		WHEN 4 THEN FormsInfo_Office.AccCTopicCode3
--		WHEN 5 THEN InterdictForUse.MasterAccCTopicCode2
--		WHEN 6 THEN Pay.PersonelInfo.AccCTopicCode2
		WHEN 8 THEN FormsInfo_ProcCode.AccCTopicCode3
		WHEN 9 THEN FormsInfo_CTopics3.AccCTopicCode3
		WHEN 10 THEN StandardTimes.AccCTopicCode3
	
		WHEN 12 THEN CASE WHEN Pay.PersonelInfo.AccCTopicCode3=0 THEN FormsInfo_Office.AccCTopicCode3 ELSE  Pay.PersonelInfo.AccCTopicCode3 END 		
		--- پیش فرض از اطلاعات پرسنلی ، اگر اطلاعات پرسنلی صفر بود از واحد سازمانی

ELSE 0 END AS AccCTopicCode3,
	SalaryEffectKind AS ShowListKind
 
	------    FixCalculate Type 1
FROM            (SELECT        FormInfoID, SalaryID, Kind
                           FROM            Pay.SalaryRange
                           WHERE        (Kind = 0)) AS SalaryRange4Use INNER JOIN
                          Pay.FormsInfo INNER JOIN
                         Pay.FormTypes ON Pay.FormsInfo.FormType =Pay.FormTypes.FormType ON SalaryRange4Use.FormInfoID = Pay.FormsInfo.FormInfoID INNER JOIN
                         Pay.PersonelInfo INNER JOIN
                         InterdictForUse(@YearMounth, 1, 1, @PersonelNoFROM, @PersonelNoTo, 1) AS InterdictForUse INNER JOIN
                         Pay.Functions ON InterdictForUse.PersonelNo = Pay.Functions.PersonelNo ON Pay.PersonelInfo.PersonelNo = Pay.Functions.PersonelNo ON SalaryRange4Use.SalaryID = InterdictForUse.SalaryID LEFT OUTER JOIN
                          Pay.FormsInfo AS FormsInfo_Office ON Pay.Functions.OfficeCode = FormsInfo_Office.FormInfoID LEFT OUTER JOIN
                          Pay.FormsInfo AS FormsInfo_Project ON Pay.Functions.ProjectID = FormsInfo_Project.FormInfoID LEFT OUTER JOIN
                          Pay.FormsInfo AS FormsInfo_ProcCode ON Pay.Functions.ProcCode = FormsInfo_ProcCode.FormInfoID LEFT OUTER JOIN
                          Pay.FormsInfo AS FormsInfo_CTopics3 ON Pay.Functions.CTopic3 = FormsInfo_CTopics3.FormInfoID LEFT OUTER JOIN
                          Pay.FormsInfo AS FormsInfo_1 ON InterdictForUse.OfficeCode = FormsInfo_1.FormInfoID LEFT OUTER JOIN
                      Pay.StandardTimes ON Pay.Functions.Mounth = Pay.StandardTimes.InfoID 


WHERE     (FormTypes.SalaryKind = 5) 
AND      (Functions.Mounth = @Mounth and Pay.Functions.PersonelNo between @PersonelNoFROM and @PersonelNoTo )
AND (ISNULL( Pay.FormsInfo.WageCalcKind,0) in( 2 ) )
      AND(Pay.Functions.YearID = @year )

GROUP BY Pay.Functions.FunctionID,Functions.FormInfoID  ,Functions.PersonelNo,Functions.ProjectID,
        Pay.Functions.OfficeCode,Functions.JobCode,salaryRange4Use.FormInfoID  ,Functions.Mounth,Functions.ProcCode,

SalaryEffectKind  ,

	CASE Pay.FormTypes.TopicCodeKind 
		WHEN 0 THEN 0 
		WHEN 1 THEN InterdictForUse.AccTopicCode
		WHEN 2 THEN Pay.FormsInfo.AccTopicCode
		WHEN 3 THEN FormsInfo_Project.AccTopicCode
		WHEN 4 THEN FormsInfo_Office.AccTopicCode
		WHEN 5 THEN InterdictForUse.MasterAccTopicCode
		WHEN 6 THEN Pay.PersonelInfo.AccTopicCode
		WHEN 8 THEN FormsInfo_ProcCode.AccTopicCode
		WHEN 9 THEN FormsInfo_CTopics3.AccTopicCode
		WHEN 11 THEN ltrim(str(FormsInfo_Office.AccTopicCode)) +''+ ltrim(str(FormsInfo.AccTopicCode))				
		WHEN 12 THEN CASE WHEN Pay.FormsInfo.AccTopicCode<>0 THEN Pay.FormsInfo.AccTopicCode ELSE  FormsInfo_Project.AccTopicCode END 					
	ELSE 0 END  ,
	CASE Pay.FormTypes.DetailCodeKind 
		WHEN 0 THEN 0 
		WHEN 1 THEN InterdictForUse.AccDetailCode
		WHEN 2 THEN Pay.FormsInfo.AccDetailCode
		WHEN 3 THEN FormsInfo_Project.AccDetailCode
		WHEN 4 THEN FormsInfo_Office.AccDetailCode
		WHEN 5 THEN InterdictForUse.MasterAccDetailCode
		WHEN 6 THEN Pay.PersonelInfo.AccDetailCode
		WHEN 8 THEN FormsInfo_ProcCode.AccDetailCode
		WHEN 9 THEN FormsInfo_CTopics3.AccDetailCode
		---- add abedi amini
    	WHEN 11  THEN CASE WHEN Pay.FormsInfo.AccDetailCode =-1 THEN Pay.PersonelInfo.AccDetailCode ELSE Pay.FormsInfo.AccDetailCode  END 
    	WHEN 12  THEN CASE WHEN Pay.FormsInfo.AccDetailCode =-1 THEN FormsInfo_Office.AccDetailCode ELSE Pay.FormsInfo.AccDetailCode  END 
	ELSE 0 END  ,
	CASE Pay.FormTypes.CTopicCodeKind 
		WHEN 0 THEN 0 
		WHEN 1 THEN InterdictForUse.AccCTopicCode
		WHEN 2 THEN Pay.FormsInfo.AccCTopicCode
		WHEN 3 THEN FormsInfo_Project.AccCTopicCode
		WHEN 4 THEN FormsInfo_Office.AccCTopicCode
		WHEN 5 THEN InterdictForUse.MasterAccCTopicCode
		WHEN 6 THEN Pay.PersonelInfo.AccCTopicCode
		WHEN 8 THEN FormsInfo_ProcCode.AccCTopicCode
		WHEN 9 THEN FormsInfo_CTopics3.AccCTopicCode
			---- add abedi oredr by salehi
    	WHEN 13  THEN CASE WHEN Pay.FormsInfo.AccCTopicCode =-1 THEN FormsInfo_Project.AccCTopicCode ELSE Pay.FormsInfo.AccCTopicCode  END 
			---- add abedi oredr by salehi
ELSE 0 END  ,
	CASE Pay.FormTypes.CTopicCode2Kind 
		WHEN 0 THEN 0 
		WHEN 1 THEN InterdictForUse.AccCTopicCode2
		WHEN 2 THEN Pay.FormsInfo.AccCTopicCode2
		WHEN 3 THEN FormsInfo_Project.AccCTopicCode2
		WHEN 4 THEN FormsInfo_Office.AccCTopicCode2
		WHEN 5 THEN InterdictForUse.MasterAccCTopicCode2
		WHEN 6 THEN Pay.PersonelInfo.AccCTopicCode2
		WHEN 8 THEN FormsInfo_ProcCode.AccCTopicCode2
		WHEN 9 THEN FormsInfo_CTopics3.AccCTopicCode2
    	WHEN 11 THEN StandardTimes.AccCTopicCode2
    	--WHEN 12 THEN st.AccCTopicCode2
	ELSE 0 END  ,
	CASE Pay.FormTypes.CTopicCode3Kind ---old CTopicCode2Kind 
		WHEN 0 THEN 0 
--		WHEN 1 THEN InterdictForUse.AccCTopicCode2
		WHEN 2 THEN Pay.FormsInfo.AccCTopicCode3
		WHEN 3 THEN FormsInfo_Project.AccCTopicCode3
		WHEN 4 THEN FormsInfo_Office.AccCTopicCode3
--		WHEN 5 THEN InterdictForUse.MasterAccCTopicCode2
--		WHEN 6 THEN Pay.PersonelInfo.AccCTopicCode2
		WHEN 8 THEN FormsInfo_ProcCode.AccCTopicCode3
		WHEN 9 THEN FormsInfo_CTopics3.AccCTopicCode3
		WHEN 10 THEN StandardTimes.AccCTopicCode3

		WHEN 12 THEN CASE WHEN Pay.PersonelInfo.AccCTopicCode3=0 THEN FormsInfo_Office.AccCTopicCode3 ELSE  Pay.PersonelInfo.AccCTopicCode3 END 		
		--- پیش فرض از اطلاعات پرسنلی ، اگر اطلاعات پرسنلی صفر بود از واحد سازمانی

	ELSE 0 END  ,
	SalaryEffectKind 
--------abedi orderby Morteza.rezaei orderby Rahbin   ADD UNION ALL

---------------------------پايان محاسبه  اضافه كاري و مزاياي محاسباتي  -----------------------



UNION ALL 
--------------------------      بمنظور محاسبه مزاياي محاسباتي مانند اضافه كاري ، نوبت كاري ، غيبت و شبكاري  نوشته شده است ---------------------------
--------------------پارامترها شامل :    از ماه    تا ماه    و تركيب سال و ماه مانند  84/02 ميباشد .  -------------------------------------------------
SELECT  6 AS Part,   Pay.FunctionsItems.FunctionID,Pay.Functions.FormInfoID AS FunctionInfoID,Pay.Functions.PersonelNo,Pay.Functions.ProjectID,
                      Pay.Functions.OfficeCode,Pay.Functions.JobCode,Pay.FunctionsItems.SalaryID,Pay.Functions.Mounth,Functions.ProcCode,
		ROUND(SUM(InterdictForUse.Amount) / MAX(FormsInfo.Amount)  * MAX(FormsInfo.StandardDays * Pay.FunctionsItems.FDaily ) + SUM(InterdictForUse.Amount) / MAX(FormsInfo.Amount) * MAX(FormsInfo.StandardTimes *   Pay.FunctionsItems.FHours ),
                       0 ) AS price,SalaryEffectKind AS BedBes,5 AS CalCulateKind,

	CASE Pay.FormTypes.TopicCodeKind 
		WHEN 0 THEN 0 
		WHEN 1 THEN InterdictForUse.AccTopicCode
		WHEN 2 THEN Pay.FormsInfo.AccTopicCode
		WHEN 3 THEN FormsInfo_Project.AccTopicCode
		WHEN 4 THEN FormsInfo_Office.AccTopicCode
		WHEN 5 THEN InterdictForUse.MasterAccTopicCode
		WHEN 6 THEN Pay.PersonelInfo.AccTopicCode
		WHEN 8 THEN FormsInfo_ProcCode.AccTopicCode
		WHEN 9 THEN FormsInfo_CTopics3.AccTopicCode
		WHEN 11 THEN ltrim(str(FormsInfo_Office.AccTopicCode)) +''+ ltrim(str(FormsInfo.AccTopicCode))				
	ELSE 0 END AS AccTopicCode,
	CASE Pay.FormTypes.DetailCodeKind 
		WHEN 0 THEN 0 
		WHEN 1 THEN InterdictForUse.AccDetailCode
		WHEN 2 THEN Pay.FormsInfo.AccDetailCode
		WHEN 3 THEN FormsInfo_Project.AccDetailCode
		WHEN 4 THEN FormsInfo_Office.AccDetailCode
		WHEN 5 THEN InterdictForUse.MasterAccDetailCode
		WHEN 6 THEN Pay.PersonelInfo.AccDetailCode
		WHEN 8 THEN FormsInfo_ProcCode.AccDetailCode
		WHEN 9 THEN FormsInfo_CTopics3.AccDetailCode
    	WHEN 12  THEN CASE WHEN Pay.FormsInfo.AccDetailCode =-1 THEN FormsInfo_Office.AccDetailCode ELSE Pay.FormsInfo.AccDetailCode  END 
	ELSE 0 END AS AccDetailCode,
	CASE Pay.FormTypes.CTopicCodeKind 
		WHEN 0 THEN 0 
		WHEN 1 THEN InterdictForUse.AccCTopicCode
		WHEN 2 THEN Pay.FormsInfo.AccCTopicCode
		WHEN 3 THEN FormsInfo_Project.AccCTopicCode
		WHEN 4 THEN FormsInfo_Office.AccCTopicCode

		WHEN 5 THEN InterdictForUse.MasterAccCTopicCode
		WHEN 6 THEN Pay.PersonelInfo.AccCTopicCode
		WHEN 8 THEN FormsInfo_ProcCode.AccCTopicCode
		WHEN 9 THEN FormsInfo_CTopics3.AccCTopicCode
	ELSE 0 END AS AccCTopicCode,
	CASE Pay.FormTypes.CTopicCode2Kind 
		WHEN 0 THEN 0 
		WHEN 1 THEN InterdictForUse.AccCTopicCode2
		WHEN 2 THEN Pay.FormsInfo.AccCTopicCode2
		WHEN 3 THEN FormsInfo_Project.AccCTopicCode2
		WHEN 4 THEN FormsInfo_Office.AccCTopicCode2
		WHEN 5 THEN InterdictForUse.MasterAccCTopicCode2
		WHEN 6 THEN Pay.PersonelInfo.AccCTopicCode2
		WHEN 8 THEN FormsInfo_ProcCode.AccCTopicCode2
		WHEN 9 THEN FormsInfo_CTopics3.AccCTopicCode2
    	WHEN 11 THEN StandardTimes.AccCTopicCode2
    	--WHEN 12 THEN st.AccCTopicCode2
	ELSE 0 END AS AccCTopicCode2,
	CASE Pay.FormTypes.CTopicCode3Kind 
		WHEN 0 THEN 0 
--		WHEN 1 THEN InterdictForUse.AccCTopicCode3
		WHEN 2 THEN Pay.FormsInfo.AccCTopicCode3
		WHEN 3 THEN FormsInfo_Project.AccCTopicCode3
		WHEN 4 THEN FormsInfo_Office.AccCTopicCode3
--		WHEN 5 THEN InterdictForUse.MasterAccCTopicCode3
--		WHEN 6 THEN Pay.PersonelInfo.AccCTopicCode3
		WHEN 8 THEN FormsInfo_ProcCode.AccCTopicCode3
		WHEN 9 THEN Pay.Functions.CTopic3 ----FormsInfo_CTopics3.AccCTopicCode3
    	WHEN 10 THEN StandardTimes.AccCTopicCode3

		WHEN 12 THEN CASE WHEN Pay.PersonelInfo.AccCTopicCode3=0 THEN FormsInfo_Office.AccCTopicCode3 ELSE  Pay.PersonelInfo.AccCTopicCode3 END 		
		--- پیش فرض از اطلاعات پرسنلی ، اگر اطلاعات پرسنلی صفر بود از واحد سازمانی

	ELSE 0 END AS AccCTopicCode3,
	SalaryEffectKind AS ShowListKind

	------    FixCalculate Type 1

FROM         Pay.FunctionsItems INNER JOIN
                      Pay.Functions ON Pay.FunctionsItems.FunctionID = Pay.Functions.FunctionID INNER JOIN
                      Pay.InterdictForUse(@YearMounth,1,1,@PersonelNoFROM ,@PersonelNoTo , 1 ) InterdictForUse ON Pay.Functions.PersonelNo = InterdictForUse.PersonelNo INNER JOIN
                          (SELECT     *
                             FROM         Pay.SalaryRange
                             WHERE     kind = 1) SalaryRange4Use ON InterdictForUse.SalaryID = SalaryRange4Use.SalaryID AND 
                      Pay.FunctionsItems.SalaryID = SalaryRange4Use.FormInfoID INNER JOIN
                      Pay.FormsInfo ON Pay.FunctionsItems.SalaryID = Pay.FormsInfo.FormInfoID INNER JOIN
                      Pay.FormTypes ON Pay.FormsInfo.FormType =Pay.FormTypes.FormType INNER JOIN
                      Pay.PersonelInfo ON Pay.Functions.PersonelNo = Pay.PersonelInfo.PersonelNo LEFT OUTER JOIN
                      Pay.FormsInfo FormsInfo_Office ON Pay.Functions.OfficeCode = FormsInfo_Office.FormInfoID LEFT OUTER JOIN
                      Pay.FormsInfo FormsInfo_Project ON Pay.Functions.ProjectID = FormsInfo_Project.FormInfoID LEFT OUTER JOIN
                      Pay.FormsInfo FormsInfo_ProcCode ON Pay.Functions.ProcCode = FormsInfo_ProcCode.FormInfoID LEFT OUTER JOIN
                      Pay.FormsInfo FormsInfo_CTopics3 ON Pay.Functions.CTopic3 = FormsInfo_CTopics3.FormInfoID LEFT OUTER JOIN
                      Pay.FormsInfo FormsInfo_1 ON InterdictForUse.OfficeCode = FormsInfo_1.FormInfoID INNER JOIN
                      Pay.StandardTimes ON Pay.Functions.Mounth = Pay.StandardTimes.InfoID 

WHERE    (FormTypes.SalaryKind = 5)
AND      (Pay.Functions.Mounth =@Mounth) and (Pay.Functions.PersonelNo between @PersonelNoFROM and @PersonelNoTo )
      AND(Pay.Functions.YearID = @year )
GROUP BY Pay.FunctionsItems.FunctionID,Pay.FunctionsItems.SalaryID,Pay.Functions.PersonelNo,Pay.Functions.ProjectID,InterdictForUse.OfficeCode,
                      Pay.Functions.JobCode,Pay.Functions.Mounth,Functions.ProcCode,Pay.Functions.FormInfoID, Pay.Functions.OfficeCode,SalaryEffectKind ,


	CASE Pay.FormTypes.TopicCodeKind 
		WHEN 0 THEN 0 
		WHEN 1 THEN InterdictForUse.AccTopicCode
		WHEN 2 THEN Pay.FormsInfo.AccTopicCode
		WHEN 3 THEN FormsInfo_Project.AccTopicCode
		WHEN 4 THEN FormsInfo_Office.AccTopicCode
		WHEN 5 THEN InterdictForUse.MasterAccTopicCode
		WHEN 6 THEN Pay.PersonelInfo.AccTopicCode
		WHEN 8 THEN FormsInfo_ProcCode.AccTopicCode
		WHEN 9 THEN FormsInfo_CTopics3.AccTopicCode
		WHEN 11 THEN ltrim(str(FormsInfo_Office.AccTopicCode)) +''+ ltrim(str(FormsInfo.AccTopicCode))			
	ELSE 0 END,
	CASE Pay.FormTypes.DetailCodeKind 
		WHEN 0 THEN 0 
		WHEN 1 THEN InterdictForUse.AccDetailCode
		WHEN 2 THEN Pay.FormsInfo.AccDetailCode
		WHEN 3 THEN FormsInfo_Project.AccDetailCode
		WHEN 4 THEN FormsInfo_Office.AccDetailCode
		WHEN 5 THEN InterdictForUse.MasterAccDetailCode
		WHEN 6 THEN Pay.PersonelInfo.AccDetailCode
		WHEN 8 THEN FormsInfo_ProcCode.AccDetailCode
		WHEN 9 THEN FormsInfo_CTopics3.AccDetailCode
    	WHEN 12  THEN CASE WHEN Pay.FormsInfo.AccDetailCode =-1 THEN FormsInfo_Office.AccDetailCode ELSE Pay.FormsInfo.AccDetailCode  END 
	ELSE 0 END ,
	CASE Pay.FormTypes.CTopicCodeKind 
		WHEN 0 THEN 0 
		WHEN 1 THEN InterdictForUse.AccCTopicCode
		WHEN 2 THEN Pay.FormsInfo.AccCTopicCode
		WHEN 3 THEN FormsInfo_Project.AccCTopicCode
		WHEN 4 THEN FormsInfo_Office.AccCTopicCode

		WHEN 5 THEN InterdictForUse.MasterAccCTopicCode
		WHEN 6 THEN Pay.PersonelInfo.AccCTopicCode
		WHEN 8 THEN FormsInfo_ProcCode.AccCTopicCode
		WHEN 9 THEN FormsInfo_CTopics3.AccCTopicCode
	ELSE 0 END,
	CASE Pay.FormTypes.CTopicCode2Kind 
		WHEN 0 THEN 0 
		WHEN 1 THEN InterdictForUse.AccCTopicCode2
		WHEN 2 THEN Pay.FormsInfo.AccCTopicCode2
		WHEN 3 THEN FormsInfo_Project.AccCTopicCode2
		WHEN 4 THEN FormsInfo_Office.AccCTopicCode2
		WHEN 5 THEN InterdictForUse.MasterAccCTopicCode2
		WHEN 6 THEN Pay.PersonelInfo.AccCTopicCode2
		WHEN 8 THEN FormsInfo_ProcCode.AccCTopicCode2
		WHEN 9 THEN FormsInfo_CTopics3.AccCTopicCode2
    	WHEN 11 THEN StandardTimes.AccCTopicCode2
	ELSE 0 END,
	CASE Pay.FormTypes.CTopicCode3Kind 
		WHEN 0 THEN 0 
--		WHEN 1 THEN InterdictForUse.AccCTopicCode3
		WHEN 2 THEN Pay.FormsInfo.AccCTopicCode3
		WHEN 3 THEN FormsInfo_Project.AccCTopicCode3
		WHEN 4 THEN FormsInfo_Office.AccCTopicCode3
--		WHEN 5 THEN InterdictForUse.MasterAccCTopicCode3
--		WHEN 6 THEN Pay.PersonelInfo.AccCTopicCode3
		WHEN 8 THEN FormsInfo_ProcCode.AccCTopicCode3
		WHEN 9 THEN Pay.Functions.CTopic3 ----FormsInfo_CTopics3.AccCTopicCode3
    	WHEN 10 THEN StandardTimes.AccCTopicCode3

		WHEN 12 THEN CASE WHEN Pay.PersonelInfo.AccCTopicCode3=0 THEN FormsInfo_Office.AccCTopicCode3 ELSE  Pay.PersonelInfo.AccCTopicCode3 END 		
		--- پیش فرض از اطلاعات پرسنلی ، اگر اطلاعات پرسنلی صفر بود از واحد سازمانی

	ELSE 0 END

--HAVING      (Pay.Functions.Mounth =@Mounth and Pay.Functions.PersonelNo between @PersonelNoFROM and @PersonelNoTo )
--------------------------     پايان محاسبه  اضافه كاري و مزاياي محاسباتي         ---------------------------


UNION ALL 
------------------------- Type --  محاسبه كسورات و اضافات  بغير از وامها و ماموريت      --------, 43 , 23 , 53-------------------
SELECT   7 AS Part,  Pay.PersonelDecExt.FormInfoID AS DecExtInfoID,PersonelDecExt.DecExtID,PersonelDecExt.PersonelNo,PersonelDecExt.FormInfoID2 AS ProjectID,
                      MAX(InterdictForUse.OfficeCode) AS OfficeCode ,MAX(InterdictForUse.JobCode) AS JobCode ,PersonelDecExt.FormInfoID AS salaryID,@Mounth AS Mounth,0 AS ProcCode,
	 Pay.PersonelDecExt.EmployeeAmount,	Pay.FormTypes.SalaryEffectKind AS BedBes,FormTypes.SalaryKind AS CalCulateKind,
	CASE WHEN ( Pay.PersonelDecExt.AccTopicCode = 0 OR Pay.PersonelDecExt.AccTopicCode  is null )  THEN 
		CASE Pay.FormTypes.TopicCodeKind 
			WHEN 2 THEN Pay.FormsInfo.AccTopicCode
			WHEN 3 THEN FormsInfo_Project.AccTopicCode			
			WHEN 4 THEN  InterdictForUse.OfficeAccTopicCode
			WHEN 6 THEN Pay.PersonelInfo.AccTopicCode
			WHEN 7 THEN Pay.PersonelDecExt.AccTopicCode
			WHEN 10 THEN CASE  WHEN Pay.FormsInfo.AccCTopicCode2 >0 THEN Pay.FormsInfo.AccTopicCode   ELSE  InterdictForUse.OfficeAccTopicCode  END 
			WHEN 11 THEN ltrim(str(InterdictForUse.OfficeAccTopicCode)) +''+ ltrim(str(FormsInfo.AccTopicCode))				
     		WHEN 12 THEN CASE WHEN Pay.FormsInfo.AccTopicCode<>0 THEN Pay.FormsInfo.AccTopicCode ELSE  FormsInfo_Project.AccTopicCode END 					
		ELSE 0 END 
	ELSE 
	 Pay.PersonelDecExt.AccTopicCode  END AS AccTopicCode,
	CASE WHEN ( Pay.PersonelDecExt.AccDetailCode=0 OR  Pay.PersonelDecExt.AccDetailCode is null ) THEN 
		CASE Pay.FormTypes.DetailCodeKind 
			WHEN 0 THEN 0 
			WHEN 2 THEN Pay.FormsInfo.AccDetailCode
			WHEN 3 THEN FormsInfo_Project.AccDetailCode						
			WHEN 4 THEN  InterdictForUse.OfficeAccDetailCode
			WHEN 5 THEN InterdictForUse.MasterAccDetailCode
			WHEN 6 THEN Pay.PersonelInfo.AccDetailCode
			WHEN 7 THEN Pay.PersonelDecExt.AccDetailCode
			WHEN 10  THEN CASE WHEN Pay.FormsInfo.AccDetailCode =0 THEN Pay.PersonelInfo.AccDetailCode ELSE Pay.FormsInfo.AccDetailCode  END 
			WHEN 11  THEN CASE WHEN Pay.FormsInfo.AccDetailCode =-1 THEN Pay.PersonelInfo.AccDetailCode ELSE Pay.FormsInfo.AccDetailCode  END 
    	WHEN 12  THEN CASE WHEN Pay.FormsInfo.AccDetailCode =-1 THEN InterdictForUse.OfficeAccDetailCode ELSE Pay.FormsInfo.AccDetailCode  END 
		ELSE 0 END
	ELSE Pay.PersonelDecExt.AccDetailCode END AS AccDetailCode,
	CASE WHEN (  Pay.PersonelDecExt.AccCTopicCode =0 OR   Pay.PersonelDecExt.AccCTopicCode is null ) THEN 
		CASE Pay.FormTypes.CTopicCodeKind 
			WHEN 0 THEN 0 
			WHEN 2 THEN Pay.FormsInfo.AccCTopicCode
			WHEN 3 THEN FormsInfo_Project.AccCTopicCode						
			WHEN 4 THEN  InterdictForUse.OfficeAccCTopicCode
			WHEN 6 THEN Pay.PersonelInfo.AccCTopicCode
			WHEN 7 THEN Pay.PersonelDecExt.AccCTopicCode
			WHEN 10  THEN CASE WHEN Pay.FormsInfo.AccCTopicCode =0 THEN  InterdictForUse.OfficeAccCTopicCode ELSE Pay.FormsInfo.AccCTopicCode  END 
			WHEN 11  THEN CASE WHEN Pay.FormsInfo.AccDetailCode =0 THEN  Pay.FormsInfo.AccCTopicCode ELSE InterdictForUse.OfficeAccCTopicCode  END 
			WHEN 12  THEN CASE WHEN Pay.FormsInfo.AccCTopicCode <> 0 THEN InterdictForUse.OfficeAccCTopicCode ELSE 0  END 			
			WHEN 13 THEN CASE WHEN Pay.FormsInfo.AccCTopicCode=-1 THEN 0 ELSE  FormsInfo_Project.AccCTopicCode END 
		ELSE 0 END 
	ELSE Pay.PersonelDecExt.AccCTopicCode END AS AccCTopicCode,
	CASE WHEN ( Pay.PersonelDecExt.AccCTopicCode2=0  OR   Pay.PersonelDecExt.AccCTopicCode2 is null ) THEN 
		CASE Pay.FormTypes.CTopicCode2Kind 
			WHEN 0 THEN 0 
			WHEN 2 THEN Pay.FormsInfo.AccCTopicCode2
			WHEN 3 THEN FormsInfo_Project.AccCTopicCode2						
			WHEN 4 THEN  InterdictForUse.OfficeAccCTopicCode2
			WHEN 6 THEN Pay.PersonelInfo.AccCTopicCode2
			WHEN 7 THEN Pay.PersonelDecExt.AccCTopicCode2
			WHEN 10 THEN CASE WHEN Pay.FormsInfo.AccCTopicCode2 =-1 THEN 0 ELSE  FormsInfo_Project.AccCTopicCode2 END 
    	WHEN 11 THEN StandardTimes.AccCTopicCode2
    	--WHEN 12 THEN st.AccCTopicCode2
		ELSE 0 END 
	ELSE Pay.PersonelDecExt.AccCTopicCode2 END AS AccCTopicCode2,

	CASE Pay.FormTypes.CTopicCode3Kind 
		WHEN 0 THEN 0 
		WHEN 2 THEN Pay.FormsInfo.AccCTopicCode3
     	WHEN 3 THEN FormsInfo_Project.AccCTopicCode3						

--		WHEN 6 THEN Pay.PersonelInfo.AccCTopicCode3
--		WHEN 7 THEN Pay.PersonelDecExt.AccCTopicCode3
        --WHEN 9 THEN Pay.PersonelDecExt.AccCTopicCode3
    	WHEN 10 THEN StandardTimes.AccCTopicCode3

		--WHEN 12 THEN CASE WHEN Pay.PersonelInfo.AccCTopicCode3=0 THEN FormsInfo_Office.AccCTopicCode3 ELSE  Pay.PersonelInfo.AccCTopicCode3 END 		
		--- پیش فرض از اطلاعات پرسنلی ، اگر اطلاعات پرسنلی صفر بود از واحد سازمانی

 	ELSE 0 END AS AccCTopicCode3,
	Pay.FormTypes.SalaryEffectKind AS ShowListKind

	------    FixCalculate Type 1

FROM         Pay.PersonelDecExt INNER JOIN
                      Pay.InterdictForUse(@YearMounth,1,2,@PersonelNoFROM ,@PersonelNoTo , 1) AS InterdictForUse ON Pay.PersonelDecExt.PersonelNo = InterdictForUse.PersonelNo INNER JOIN
                       Pay.FormsInfo ON Pay.PersonelDecExt.FormInfoID = Pay.FormsInfo.FormInfoID INNER JOIN
                      Pay.FormTypes ON Pay.FormsInfo.FormType =Pay.FormTypes.FormType INNER JOIN
                      Pay.PersonelInfo ON Pay.PersonelDecExt.PersonelNo = Pay.PersonelInfo.PersonelNo LEFT OUTER JOIN
                       Pay.FormsInfo AS FormsInfo_Project ON Pay.PersonelDecExt.FormInfoID2 = FormsInfo_Project.FormInfoID INNER JOIN
                      Pay.StandardTimes ON @Mounth = Pay.StandardTimes.InfoID 

--FROM         Pay.PersonelDecExt INNER JOIN
--                     InterdictForUse(@YearMounth,1,2,@PersonelNoFROM ,@PersonelNoTo ) InterdictForUse ON Pay.PersonelDecExt.PersonelNo = InterdictForUse.PersonelNo INNER JOIN
--                       Pay.FormsInfo ON Pay.PersonelDecExt.FormInfoID = Pay.FormsInfo.FormInfoID INNER JOIN
--                      Pay.FormTypes ON Pay.FormsInfo.FormType =Pay.FormTypes.FormType INNER JOIN
--                      Pay.PersonelInfo ON Pay.PersonelDecExt.PersonelNo = Pay.PersonelInfo.PersonelNo

WHERE     (PersonelDecExt.FirstMounth <= @Mounth ) AND (PersonelDecExt.EndMounth >= @Mounth ) AND (PersonelDecExt.State <> 1)
     AND ( (SalaryKind = 12) OR  (SalaryKind = 13) )
     AND (@year  BETWEEN   StartYear AND  EndYear )

GROUP BY Pay.PersonelDecExt.FormInfoID,PersonelDecExt.DecExtID,PersonelDecExt.PersonelNo,PersonelDecExt.FormInfoID2, Pay.PersonelDecExt.EmployeeAmount,
                     Pay.FormTypes.SalaryEffectKind,FormTypes.SalaryKind,
	CASE WHEN ( Pay.PersonelDecExt.AccTopicCode = 0 OR Pay.PersonelDecExt.AccTopicCode  is null ) THEN 
		CASE Pay.FormTypes.TopicCodeKind 
			WHEN 2 THEN Pay.FormsInfo.AccTopicCode
			WHEN 3 THEN FormsInfo_Project.AccTopicCode						
			WHEN 4 THEN  InterdictForUse.OfficeAccTopicCode
			WHEN 6 THEN Pay.PersonelInfo.AccTopicCode
			WHEN 7 THEN Pay.PersonelDecExt.AccTopicCode
			WHEN 10 THEN CASE  WHEN Pay.FormsInfo.AccCTopicCode2 >0 THEN Pay.FormsInfo.AccTopicCode   ELSE  InterdictForUse.OfficeAccTopicCode  END 
			WHEN 11 THEN ltrim(str(InterdictForUse.OfficeAccTopicCode)) +''+ ltrim(str(FormsInfo.AccTopicCode))	
     		WHEN 12 THEN CASE WHEN Pay.FormsInfo.AccTopicCode<>0 THEN Pay.FormsInfo.AccTopicCode ELSE  FormsInfo_Project.AccTopicCode END 					
		ELSE 0 END 
	ELSE Pay.PersonelDecExt.AccTopicCode  END,
	CASE WHEN ( Pay.PersonelDecExt.AccDetailCode=0 OR  Pay.PersonelDecExt.AccDetailCode is null ) THEN 
		CASE Pay.FormTypes.DetailCodeKind 
			WHEN 0 THEN 0 
			WHEN 2 THEN Pay.FormsInfo.AccDetailCode
			WHEN 3 THEN FormsInfo_Project.AccDetailCode						
			WHEN 4 THEN  InterdictForUse.OfficeAccDetailCode
			WHEN 5 THEN InterdictForUse.MasterAccDetailCode
			WHEN 6 THEN Pay.PersonelInfo.AccDetailCode
			WHEN 7 THEN Pay.PersonelDecExt.AccDetailCode
			WHEN 10  THEN CASE WHEN Pay.FormsInfo.AccDetailCode =0 THEN Pay.PersonelInfo.AccDetailCode ELSE Pay.FormsInfo.AccDetailCode  END 
			WHEN 11  THEN CASE WHEN Pay.FormsInfo.AccDetailCode =-1 THEN Pay.PersonelInfo.AccDetailCode ELSE Pay.FormsInfo.AccDetailCode  END 
    	WHEN 12  THEN CASE WHEN Pay.FormsInfo.AccDetailCode =-1 THEN InterdictForUse.OfficeAccDetailCode ELSE Pay.FormsInfo.AccDetailCode  END 
		ELSE 0 END
	ELSE Pay.PersonelDecExt.AccDetailCode END ,
	CASE WHEN ( Pay.PersonelDecExt.AccCTopicCode = 0 OR Pay.PersonelDecExt.AccCTopicCode is null ) THEN 
		CASE Pay.FormTypes.CTopicCodeKind 
			WHEN 0 THEN 0 
			WHEN 2 THEN Pay.FormsInfo.AccCTopicCode
			WHEN 3 THEN FormsInfo_Project.AccCTopicCode						
			WHEN 4 THEN  InterdictForUse.OfficeAccCTopicCode
			WHEN 6 THEN Pay.PersonelInfo.AccCTopicCode
			WHEN 7 THEN Pay.PersonelDecExt.AccCTopicCode
			WHEN 10  THEN CASE WHEN Pay.FormsInfo.AccCTopicCode =0 THEN  InterdictForUse.OfficeAccCTopicCode ELSE Pay.FormsInfo.AccCTopicCode  END 
			WHEN 11  THEN CASE WHEN Pay.FormsInfo.AccDetailCode =0 THEN  Pay.FormsInfo.AccCTopicCode ELSE InterdictForUse.OfficeAccCTopicCode  END 
			WHEN 12  THEN CASE WHEN Pay.FormsInfo.AccCTopicCode <> 0 THEN InterdictForUse.OfficeAccCTopicCode ELSE 0  END 			
			WHEN 13 THEN CASE WHEN Pay.FormsInfo.AccCTopicCode=-1 THEN 0 ELSE  FormsInfo_Project.AccCTopicCode END 			
		ELSE 0 END 
	ELSE Pay.PersonelDecExt.AccCTopicCode END ,
	CASE WHEN ( Pay.PersonelDecExt.AccCTopicCode2=0 OR Pay.PersonelDecExt.AccCTopicCode2 is null ) THEN 
		CASE Pay.FormTypes.CTopicCode2Kind 
			WHEN 0 THEN 0 
			WHEN 2 THEN Pay.FormsInfo.AccCTopicCode2
			WHEN 3 THEN FormsInfo_Project.AccCTopicCode2						
			WHEN 4 THEN InterdictForUse.OfficeAccCTopicCode2
			WHEN 6 THEN Pay.PersonelInfo.AccCTopicCode2
			WHEN 7 THEN Pay.PersonelDecExt.AccCTopicCode2
			WHEN 10 THEN CASE WHEN Pay.FormsInfo.AccCTopicCode2 =-1 THEN 0 ELSE  FormsInfo_Project.AccCTopicCode2 END 			
    	WHEN 11 THEN StandardTimes.AccCTopicCode2
    	--WHEN 12 THEN st.AccCTopicCode2
		ELSE 0 END 
	ELSE Pay.PersonelDecExt.AccCTopicCode2 END ,

	CASE Pay.FormTypes.CTopicCode3Kind 
		WHEN 0 THEN 0 
		WHEN 2 THEN Pay.FormsInfo.AccCTopicCode3
     	WHEN 3 THEN FormsInfo_Project.AccCTopicCode3						
--		WHEN 6 THEN Pay.PersonelInfo.AccCTopicCode3
--		WHEN 7 THEN Pay.PersonelDecExt.AccCTopicCode3
    	WHEN 10 THEN StandardTimes.AccCTopicCode3

		--WHEN 12 THEN CASE WHEN Pay.PersonelInfo.AccCTopicCode3=0 THEN FormsInfoOffice.AccCTopicCode3 ELSE  Pay.PersonelInfo.AccCTopicCode3 END 		
		--- پیش فرض از اطلاعات پرسنلی ، اگر اطلاعات پرسنلی صفر بود از واحد سازمانی

	ELSE 0 END 
--HAVING      ( (SalaryKind = 12 OR  SalaryKind = 13) )
-----------------------------پايان محاسبه كسورات و اضافات بغير از وامها و ماموريت  -------------------------
UNION ALL 
--------------------------محاسبه كسورات اضافات شبيه ماموريت  بر اساس اطلاعات ثابت  --------------------

SELECT  8 AS Part,   Pay.PersonelDecExt.FormInfoID AS DecExtInfoID,PersonelDecExt.DecExtID,
		PersonelDecExt.PersonelNo,PersonelDecExt.FormInfoID2 AS ProjectID,
		InterdictForUseWithOffice.OfficeCode,InterdictForUseWithOffice.JobCode,
		PersonelDecExt.FormInfoID AS salaryID,@Mounth AS Mounth,0 AS ProcCode,
		SUM(Pay.DecExtItems.Amount) AS price,Pay.FormTypes.SalaryEffectKind AS BedBes,
		FormTypes.SalaryKind AS CalCulateKind ,
	CASE WHEN ( Pay.PersonelDecExt.AccTopicCode = 0 OR Pay.PersonelDecExt.AccTopicCode is null ) THEN 
		CASE Pay.FormTypes.TopicCodeKind   
			WHEN 2 THEN Pay.FormsInfo.AccTopicCode
			WHEN 3 THEN ProjectsInfo.AccTopicCode

			WHEN 4 THEN FormsInfo_Office.AccTopicCode
			WHEN 6 THEN Pay.PersonelInfo.AccTopicCode
			WHEN 7 THEN Pay.PersonelDecExt.AccTopicCode
			WHEN 11 THEN ltrim(str(FormsInfo_Office.AccTopicCode)) +''+ ltrim(str(FormsInfo.AccTopicCode))	
		ELSE 0 END
	ELSE  Pay.PersonelDecExt.AccTopicCode END AS AccTopicCode,
	CASE WHEN ( Pay.PersonelDecExt.AccDetailCode =0 OR Pay.PersonelDecExt.AccDetailCode is null ) THEN 
		CASE Pay.FormTypes.DetailCodeKind 
			WHEN 0 THEN 0 
			WHEN 2 THEN Pay.FormsInfo.AccDetailCode   
			WHEN 3 THEN ProjectsInfo.AccDetailCode
			WHEN 4 THEN FormsInfo_Office.AccDetailCode
			WHEN 6 THEN Pay.PersonelInfo.AccDetailCode
			WHEN 7 THEN Pay.PersonelDecExt.AccDetailCode
			WHEN 10  THEN CASE WHEN Pay.FormsInfo.AccDetailCode =0 THEN Pay.PersonelInfo.AccDetailCode ELSE Pay.FormsInfo.AccDetailCode  END 
    	WHEN 12  THEN CASE WHEN Pay.FormsInfo.AccDetailCode =-1 THEN FormsInfo_Office.AccDetailCode ELSE Pay.FormsInfo.AccDetailCode  END 
		ELSE 0 END 
	ELSE Pay.PersonelDecExt.AccDetailCode END AS AccDetailCode,
	CASE WHEN ( Pay.PersonelDecExt.AccCTopicCode =0 OR Pay.PersonelDecExt.AccCTopicCode is null ) THEN 
		CASE Pay.FormTypes.CTopicCodeKind 
			WHEN 0 THEN 0 
			WHEN 2 THEN Pay.FormsInfo.AccCTopicCode
			WHEN 3 THEN ProjectsInfo.AccCTopicCode
			WHEN 4 THEN FormsInfo_Office.AccCTopicCode
			WHEN 6 THEN Pay.PersonelInfo.AccCTopicCode
			WHEN 7 THEN Pay.PersonelDecExt.AccCTopicCode
		ELSE 0 END 
	ELSE Pay.PersonelDecExt.AccCTopicCode END AS AccCTopicCode,
	CASE WHEN ( Pay.PersonelDecExt.AccCTopicCode2=0 OR   Pay.PersonelDecExt.AccCTopicCode2 is null ) THEN 
		CASE Pay.FormTypes.CTopicCode2Kind 
			WHEN 0 THEN 0 
			WHEN 2 THEN Pay.FormsInfo.AccCTopicCode2
			WHEN 3 THEN ProjectsInfo.AccCTopicCode2
			WHEN 4 THEN FormsInfo_Office.AccCTopicCode2
			WHEN 6 THEN Pay.PersonelInfo.AccCTopicCode2
			WHEN 7 THEN Pay.PersonelDecExt.AccCTopicCode2
    	WHEN 11 THEN StandardTimes.AccCTopicCode2
    	--WHEN 12 THEN st.AccCTopicCode2
		ELSE 0 END 
	ELSE Pay.PersonelDecExt.AccCTopicCode2 END AS AccCTopicCode2,
	CASE Pay.FormTypes.CTopicCode3Kind 
		WHEN 0 THEN 0 
		WHEN 2 THEN Pay.FormsInfo.AccCTopicCode3
		WHEN 3 THEN ProjectsInfo.AccCTopicCode3		
		WHEN 4 THEN FormsInfo_Office.AccCTopicCode3
--		WHEN 6 THEN Pay.PersonelInfo.AccCTopicCode3
--		WHEN 7 THEN Pay.PersonelDecExt.AccCTopicCode3
    	WHEN 10 THEN StandardTimes.AccCTopicCode3

		WHEN 12 THEN CASE WHEN Pay.PersonelInfo.AccCTopicCode3=0 THEN FormsInfo_Office.AccCTopicCode3 ELSE  Pay.PersonelInfo.AccCTopicCode3 END 		
		--- پیش فرض از اطلاعات پرسنلی ، اگر اطلاعات پرسنلی صفر بود از واحد سازمانی

	ELSE 0 END AS AccCTopicCode3,
           Pay.FormTypes.SalaryEffectKind AS ShowListKind


	------    FixCalculate Type 1

FROM         Pay.PersonelDecExt INNER JOIN
                      Pay.InterdictForUseWithOffice(@YearMounth, 0, 2, @PersonelNoFrom, @PersonelNoTo) AS InterdictForUseWithOffice ON 
                      Pay.PersonelDecExt.PersonelNo = InterdictForUseWithOffice.PersonelNo INNER JOIN
                       Pay.FormsInfo ON Pay.PersonelDecExt.FormInfoID = Pay.FormsInfo.FormInfoID INNER JOIN
                      Pay.FormTypes ON Pay.FormsInfo.FormType =Pay.FormTypes.FormType INNER JOIN
                      Pay.PersonelInfo ON Pay.PersonelDecExt.PersonelNo = Pay.PersonelInfo.PersonelNo LEFT OUTER JOIN
                       Pay.FormsInfo AS FormsInfo_Office ON InterdictForUseWithOffice.OfficeCode = FormsInfo_Office.FormInfoID LEFT OUTER JOIN
                       Pay.FormsInfo AS ProjectsInfo ON Pay.PersonelDecExt.FormInfoID2 = ProjectsInfo.FormInfoID AND 
                     Pay.FormTypes.FormInfo4Function = ProjectsInfo.FormType LEFT OUTER JOIN
                      DecExtItems ON Pay.PersonelDecExt.DecExtID = DecExtItems.DecExtID INNER JOIN
                      Pay.StandardTimes ON @Mounth = Pay.StandardTimes.InfoID 
                      
WHERE   (PersonelDecExt.FirstMounth >= @Mounth) AND 
		(PersonelDecExt.EndMounth <= @Mounth) AND 
		(NOT (Pay.DecExtItems.DecExtItemID IS NULL)) AND 
        (FormTypes.SalaryKind = 6) 
AND     ( Pay.PersonelDecExt.PersonelNo between @PersonelNoFROM and @PersonelNoTo)
     AND (@year  BETWEEN   StartYear AND  EndYear )

GROUP BY Pay.PersonelDecExt.FormInfoID,PersonelDecExt.DecExtID,PersonelDecExt.PersonelNo,
			PersonelDecExt.FormInfoID2,
                      InterdictForUseWithOffice.OfficeCode,InterdictForUseWithOffice.JobCode,
	CASE WHEN ( Pay.PersonelDecExt.AccTopicCode = 0 OR Pay.PersonelDecExt.AccTopicCode is null ) THEN 
		CASE Pay.FormTypes.TopicCodeKind   
			WHEN 2 THEN Pay.FormsInfo.AccTopicCode
			WHEN 3 THEN ProjectsInfo.AccTopicCode	
			WHEN 4 THEN FormsInfo_Office.AccTopicCode	
			WHEN 6 THEN Pay.PersonelInfo.AccTopicCode
			WHEN 7 THEN Pay.PersonelDecExt.AccTopicCode
			WHEN 11 THEN ltrim(str(FormsInfo_Office.AccTopicCode)) +''+ ltrim(str(FormsInfo.AccTopicCode))
		ELSE 0 END
	ELSE  Pay.PersonelDecExt.AccTopicCode END ,
	CASE WHEN ( Pay.PersonelDecExt.AccDetailCode =0 OR  Pay.PersonelDecExt.AccDetailCode is null ) THEN 
		CASE Pay.FormTypes.DetailCodeKind 
			WHEN 0 THEN 0 
			WHEN 2 THEN Pay.FormsInfo.AccDetailCode
			WHEN 3 THEN ProjectsInfo.AccDetailCode
			WHEN 4 THEN FormsInfo_Office.AccDetailCode
			WHEN 6 THEN Pay.PersonelInfo.AccDetailCode
			WHEN 7 THEN Pay.PersonelDecExt.AccDetailCode
			WHEN 10  THEN CASE WHEN Pay.FormsInfo.AccDetailCode =0 THEN Pay.PersonelInfo.AccDetailCode ELSE Pay.FormsInfo.AccDetailCode  END 
    	WHEN 12  THEN CASE WHEN Pay.FormsInfo.AccDetailCode =-1 THEN FormsInfo_Office.AccDetailCode ELSE Pay.FormsInfo.AccDetailCode  END 
		ELSE 0 END 
	ELSE Pay.PersonelDecExt.AccDetailCode END ,
	CASE WHEN ( Pay.PersonelDecExt.AccCTopicCode =0  OR Pay.PersonelDecExt.AccCTopicCode is null ) THEN 
		CASE Pay.FormTypes.CTopicCodeKind 
			WHEN 0 THEN 0 
			WHEN 2 THEN Pay.FormsInfo.AccCTopicCode
			WHEN 3 THEN ProjectsInfo.AccCTopicCode
			WHEN 4 THEN FormsInfo_Office.AccCTopicCode
			WHEN 6 THEN Pay.PersonelInfo.AccCTopicCode
			WHEN 7 THEN Pay.PersonelDecExt.AccCTopicCode
		ELSE 0 END 
	ELSE Pay.PersonelDecExt.AccCTopicCode END ,
	CASE WHEN (  Pay.PersonelDecExt.AccCTopicCode2=0 OR  Pay.PersonelDecExt.AccCTopicCode2 is null ) THEN 
		CASE Pay.FormTypes.CTopicCode2Kind 
			WHEN 0 THEN 0 
			WHEN 2 THEN Pay.FormsInfo.AccCTopicCode2
			WHEN 3 THEN ProjectsInfo.AccCTopicCode2
			WHEN 4 THEN FormsInfo_Office.AccCTopicCode2
			WHEN 6 THEN Pay.PersonelInfo.AccCTopicCode2
			WHEN 7 THEN Pay.PersonelDecExt.AccCTopicCode2
    	WHEN 11 THEN StandardTimes.AccCTopicCode2
    	--WHEN 12 THEN st.AccCTopicCode2
		ELSE 0 END 
	ELSE Pay.PersonelDecExt.AccCTopicCode2 END ,
	CASE Pay.FormTypes.CTopicCode3Kind 
		WHEN 0 THEN 0 
		WHEN 2 THEN Pay.FormsInfo.AccCTopicCode3
		WHEN 3 THEN ProjectsInfo.AccCTopicCode3
		WHEN 4 THEN FormsInfo_Office.AccCTopicCode3
--		WHEN 6 THEN Pay.PersonelInfo.AccCTopicCode3
--		WHEN 7 THEN Pay.PersonelDecExt.AccCTopicCode3
    	WHEN 10 THEN StandardTimes.AccCTopicCode3

		WHEN 12 THEN CASE WHEN Pay.PersonelInfo.AccCTopicCode3=0 THEN FormsInfo_Office.AccCTopicCode3 ELSE  Pay.PersonelInfo.AccCTopicCode3 END 		
		--- پیش فرض از اطلاعات پرسنلی ، اگر اطلاعات پرسنلی صفر بود از واحد سازمانی

	ELSE 0 END ,
	Pay.FormTypes.SalaryEffectKind,FormTypes.SalaryKind
--HAVING     ( Pay.PersonelDecExt.PersonelNo between @PersonelNoFROM and @PersonelNoTo)

-------------------پايان محاسبه كسورات/اضافات بغير از ماموريتها  بر اساس اصلاعات ثابت  --------------------
UNION ALL 
--------------------------------------   محاسبات مربوط به وامها   ---------------------------------------

SELECT 9 AS Part,  Pay.PersonelDecExt.DecExtID,PersonelDecExt.FormInfoID,PersonelDecExt.PersonelNo,0 AS ProjectID,InterdictForUseWithOffice.OfficeCode,
       InterdictForUseWithOffice.JobCode,PersonelDecExt.FormInfoID AS SalaryID,@Mounth AS Mounth,0 AS ProcCode,

	CASE Pay.FormTypes.SalaryKind 
	WHEN  9 THEN 
		CASE 
		WHEN (PersonelDecExt.EmployerAmount 
				- (PersonelDecExt.PaymentLoan + ISNULL(PersonelDecExt.Settlement,0)) 
				- ISNULL(PaymentLoan.Price,0)) >= Pay.PersonelDecExt.EmployeeAmount 
			then   Pay.PersonelDecExt.EmployeeAmount 
		ELSE 
			 (PersonelDecExt.EmployerAmount 
				- (PersonelDecExt.PaymentLoan + ISNULL(PersonelDecExt.Settlement,0)) 
				- ISNULL(PaymentLoan.Price,0))  
		end 
	WHEN  14 THEN 
		CASE 
		WHEN (PersonelDecExt.EmployerAmount 
				- (PersonelDecExt.PaymentLoan + ISNULL(PersonelDecExt.Settlement,0)) 
				- ISNULL(PaymentLoan.Price,0)) >= ISNULL(Loan14.Amount,0)
			then   ISNULL(Loan14.Amount,0)
		ELSE 
			 (PersonelDecExt.EmployerAmount 
				- (PersonelDecExt.PaymentLoan + ISNULL(PersonelDecExt.Settlement,0)) 
				- ISNULL(PaymentLoan.Price,0))  
		end 
	end AS Price ,
	FormTypes.SalaryEffectKind AS BedBes,FormTypes.SalaryKind AS CalCulateKind,
	CASE WHEN ( Pay.PersonelDecExt.AccTopicCode = 0 OR Pay.PersonelDecExt.AccTopicCode is null ) THEN 
		CASE Pay.FormTypes.TopicCodeKind 
			WHEN 2 THEN Pay.FormsInfo.AccTopicCode
			WHEN 6 THEN Pay.PersonelInfo.AccTopicCode
			WHEN 7 THEN Pay.PersonelDecExt.AccTopicCode
		ELSE 0 END
	ELSE  Pay.PersonelDecExt.AccTopicCode END AS AccTopicCode,
	CASE WHEN ( Pay.PersonelDecExt.AccDetailCode =0 OR Pay.PersonelDecExt.AccDetailCode is null ) THEN 
		CASE Pay.FormTypes.DetailCodeKind 
			WHEN 0 THEN 0 
			WHEN 2 THEN Pay.FormsInfo.AccDetailCode
			WHEN 6 THEN Pay.PersonelInfo.AccDetailCode
			WHEN 7 THEN Pay.PersonelDecExt.AccDetailCode
			WHEN 10  THEN CASE WHEN Pay.FormsInfo.AccDetailCode =0 THEN Pay.PersonelInfo.AccDetailCode ELSE Pay.FormsInfo.AccDetailCode  END 
    	--WHEN 12  THEN CASE WHEN Pay.FormsInfo.AccDetailCode =-1 THEN InterdictForUseWithOffice.AccDetailCode ELSE Pay.FormsInfo.AccDetailCode  END 
		ELSE 0 END 
	ELSE Pay.PersonelDecExt.AccDetailCode END AS AccDetailCode,

	CASE WHEN ( Pay.PersonelDecExt.AccCTopicCode =0 OR Pay.PersonelDecExt.AccCTopicCode is null ) THEN 
		CASE Pay.FormTypes.CTopicCodeKind 
			WHEN 0 THEN 0 
			WHEN 2 THEN Pay.FormsInfo.AccCTopicCode
			WHEN 6 THEN Pay.PersonelInfo.AccCTopicCode
			WHEN 7 THEN Pay.PersonelDecExt.AccCTopicCode
		ELSE 0 END 
	ELSE Pay.PersonelDecExt.AccCTopicCode END AS AccCTopicCode,
	CASE WHEN ( Pay.PersonelDecExt.AccCTopicCode2=0 OR   Pay.PersonelDecExt.AccCTopicCode2 is null ) THEN 
		CASE Pay.FormTypes.CTopicCode2Kind 
			WHEN 0 THEN 0 
			WHEN 2 THEN Pay.FormsInfo.AccCTopicCode2
			WHEN 6 THEN Pay.PersonelInfo.AccCTopicCode2
			WHEN 7 THEN Pay.PersonelDecExt.AccCTopicCode2
    	WHEN 11 THEN StandardTimes.AccCTopicCode2
    	--WHEN 12 THEN st.AccCTopicCode2
		ELSE 0 END 
	ELSE Pay.PersonelDecExt.AccCTopicCode2 END AS AccCTopicCode2,
	CASE Pay.FormTypes.CTopicCode3Kind 
		WHEN 0 THEN 0 
		WHEN 2 THEN Pay.FormsInfo.AccCTopicCode3
    	WHEN 10 THEN StandardTimes.AccCTopicCode3

		--WHEN 12 THEN CASE WHEN Pay.PersonelInfo.AccCTopicCode3=0 THEN FormsInfo_Office.AccCTopicCode3 ELSE  Pay.PersonelInfo.AccCTopicCode3 END 		
		--- پیش فرض از اطلاعات پرسنلی ، اگر اطلاعات پرسنلی صفر بود از واحد سازمانی

	ELSE 0 END AS AccCTopicCode3,
	FormTypes.SalaryEffectKind AS ShowListKind
FROM    Pay.PersonelDecExt INNER JOIN
         Pay.FormsInfo ON Pay.PersonelDecExt.FormInfoID = Pay.FormsInfo.FormInfoID INNER JOIN
        Pay.FormTypes ON Pay.FormsInfo.FormType =Pay.FormTypes.FormType INNER JOIN
        Pay.PersonelInfo ON Pay.PersonelDecExt.PersonelNo = Pay.PersonelInfo.PersonelNo  INNER JOIN
        pay.InterdictForUseWithOffice(@YearMounth,0,2,@PersonelNoFROM ,@PersonelNoTo) InterdictForUseWithOffice ON 
        Pay.PersonelDecExt.PersonelNo = InterdictForUseWithOffice.PersonelNo LEFT OUTER JOIN
        (SELECT     DecExtID,Months,SUM(Amount) AS Amount
	        FROM         Pay.PersonelDecExtItem
        	WHERE     (Years = @year) AND (Months = @Mounth )
	        GROUP BY DecExtID,Months ) Loan14 ON Pay.PersonelDecExt.DecExtID = Loan14.DecExtID LEFT OUTER JOIN
        pay.PaymentLoan(9,@PersonelNoFrom,@PersonelNoTo,@Mounth ,@Year ,@Year) PaymentLoan ON Pay.PersonelDecExt.DecExtID = PaymentLoan.FunctionID AND 
        Pay.PersonelDecExt.FormInfoID = PaymentLoan.FormInfoID AND Pay.PersonelDecExt.PersonelNo = PaymentLoan.PersonelNO  INNER JOIN
                      Pay.StandardTimes ON @Mounth = Pay.StandardTimes.InfoID 
WHERE   (((FormTypes.SalaryKind = 9) AND (PersonelDecExt.FirstMounth <= @Mounth )) OR
	(FormTypes.SalaryKind = 14 AND  Loan14.Months = @Mounth )) AND 
	(PersonelDecExt.PersonelNo BETWEEN @PersonelNoFROM AND @PersonelNoTo ) AND 
        (PersonelDecExt.EmployerAmount 
			- (PersonelDecExt.PaymentLoan + ISNULL(PersonelDecExt.Settlement,0)) 
			- ISNULL(PaymentLoan.Price,0) > 0) AND 
	(PersonelDecExt.State <> 1)
--	     AND (@year  BETWEEN   StartYear AND  EndYear )

--------------------------------پايان محاسبات مربوط به وامها ----------------------------------------------
--------------------------------  محاسبات مربوط به پرداخت وام در فیش حقوق   ----------------------------------------------
UNION ALL 

SELECT 10 AS Part, Pay.PersonelDecExt.DecExtID, Pay.PersonelDecExt.FormInfoID, Pay.PersonelDecExt.PersonelNo, 0 AS ProjectID, InterdictForUseWithOffice.OfficeCode, 
        InterdictForUseWithOffice.jobCode, Pay.PersonelDecExt.FormInfoID AS SalaryID, @Mounth AS Mounth, 0 AS ProcCode, Pay.PersonelDecExt.EmployerAmount AS Price, 
		1 AS BedBes, Pay.FormTypes.SalaryKind AS CalCulateKind, 
	CASE WHEN ( Pay.PersonelDecExt.AccTopicCode = 0 OR Pay.PersonelDecExt.AccTopicCode is null ) THEN 
		CASE Pay.FormTypes.TopicCodeKind 
			WHEN 2 THEN Pay.FormsInfo.AccTopicCode
			WHEN 6 THEN Pay.PersonelInfo.AccTopicCode
			WHEN 7 THEN Pay.PersonelDecExt.AccTopicCode
		ELSE 0 END
	ELSE  Pay.PersonelDecExt.AccTopicCode END AS AccTopicCode,
	CASE WHEN ( Pay.PersonelDecExt.AccDetailCode =0 OR Pay.PersonelDecExt.AccDetailCode is null ) THEN 
		CASE Pay.FormTypes.DetailCodeKind 
			WHEN 0 THEN 0 
			WHEN 2 THEN Pay.FormsInfo.AccDetailCode
			WHEN 6 THEN Pay.PersonelInfo.AccDetailCode
			WHEN 7 THEN Pay.PersonelDecExt.AccDetailCode
			WHEN 10  THEN CASE WHEN Pay.FormsInfo.AccDetailCode =0 THEN Pay.PersonelInfo.AccDetailCode ELSE Pay.FormsInfo.AccDetailCode  END 
    	--WHEN 12  THEN CASE WHEN Pay.FormsInfo.AccDetailCode =-1 THEN InterdictForUseWithOffice.AccDetailCode ELSE Pay.FormsInfo.AccDetailCode  END 
		ELSE 0 END 
	ELSE Pay.PersonelDecExt.AccDetailCode END AS AccDetailCode,

	CASE WHEN ( Pay.PersonelDecExt.AccCTopicCode =0 OR Pay.PersonelDecExt.AccCTopicCode is null ) THEN 
		CASE Pay.FormTypes.CTopicCodeKind 
			WHEN 0 THEN 0 
			WHEN 2 THEN Pay.FormsInfo.AccCTopicCode
			WHEN 6 THEN Pay.PersonelInfo.AccCTopicCode
			WHEN 7 THEN Pay.PersonelDecExt.AccCTopicCode
		ELSE 0 END 
	ELSE Pay.PersonelDecExt.AccCTopicCode END AS AccCTopicCode,
	CASE WHEN ( Pay.PersonelDecExt.AccCTopicCode2=0 OR   Pay.PersonelDecExt.AccCTopicCode2 is null ) THEN 
		CASE Pay.FormTypes.CTopicCode2Kind 
			WHEN 0 THEN 0 
			WHEN 2 THEN Pay.FormsInfo.AccCTopicCode2
			WHEN 6 THEN Pay.PersonelInfo.AccCTopicCode2
			WHEN 7 THEN Pay.PersonelDecExt.AccCTopicCode2
    	WHEN 11 THEN StandardTimes.AccCTopicCode2
    	--WHEN 12 THEN st.AccCTopicCode2
		ELSE 0 END 
	ELSE Pay.PersonelDecExt.AccCTopicCode2 END AS AccCTopicCode2,
	CASE Pay.FormTypes.CTopicCode3Kind 
		WHEN 0 THEN 0 
		WHEN 2 THEN Pay.FormsInfo.AccCTopicCode3
    	WHEN 10 THEN StandardTimes.AccCTopicCode3

		--WHEN 12 THEN CASE WHEN Pay.PersonelInfo.AccCTopicCode3=0 THEN FormsInfo_FunctionsOffice.AccCTopicCode3 ELSE  Pay.PersonelInfo.AccCTopicCode3 END 		
		--- پیش فرض از اطلاعات پرسنلی ، اگر اطلاعات پرسنلی صفر بود از واحد سازمانی

	ELSE 0 END AS AccCTopicCode3,
	1 AS ShowListKind
	FROM            Pay.PersonelDecExt INNER JOIN
                          Pay.FormsInfo ON Pay.PersonelDecExt.FormInfoID = Pay.FormsInfo.FormInfoID INNER JOIN
                         Pay.FormTypes ON Pay.FormsInfo.FormType =Pay.FormTypes.FormType INNER JOIN
                         Pay.PersonelInfo ON Pay.PersonelDecExt.PersonelNo = Pay.PersonelInfo.PersonelNo INNER JOIN
                         Pay.InterdictForUseWithOffice(@YearMounth, 0, 2, @PersonelNoFROM, @PersonelNoTo) AS InterdictForUseWithOffice ON Pay.PersonelDecExt.PersonelNo = InterdictForUseWithOffice.PersonelNo
						  INNER JOIN
                      Pay.StandardTimes ON @Mounth = Pay.StandardTimes.InfoID 
WHERE  (PersonelDecExt.PayableDuringMonth = @Mounth ) 
   AND (PersonelDecExt.StartYear = @Year) 
   AND (FormTypes.SalaryKind IN (9, 14))
   AND (PersonelDecExt.PersonelNo BETWEEN @PersonelNoFROM AND @PersonelNoTo ) 
   AND (PersonelDecExt.EmployerAmount > 0) 
   AND (PersonelDecExt.State <> 1)
---        AND (@year  BETWEEN   StartYear AND  EndYear )
-------------------------------- پايان محاسبات مربوط به پرداخت وام در فیش حقوق   ----------------------------------------------
)   
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
---------------------------------------------------------------------------------------------------------
-------------------------------------------------

-------------------------------------------------
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS OFF 
GO
CREATE FUNCTION Pay.ContainTaxBefore
						( 
							@Mounth int=6,
							@PersonelNoFROM int=0,
							@PersonelNoTo int=9999999 ,
							@YearID int
							--@Kind_Of_Salary_Useable varchar(5) ='1:2:3'--- 1:Salary , 2:Independed Reward , 
						)  
RETURNS  table  AS 
Return  (
	SELECT	Ctax.PersonelNO ,case when count(isnull(Ctax.CountMounth,0))> 0 then   count(Ctax.CountMounth) else 1 end AS CountMounth ,
			MAX(Ctax.BonusMounth) AS BonusMounth ,
			ISNULL(SUM(Ctax.ContainTaxValue),0) AS ContainTaxValue , --------مشمول مالیات کل ماه های پیش
			ISNULL(SUM(Ctax.taxValue),0) AS TaxValue ,MAX(TaxFunDay_SickDay) as TaxFunDay_SickDay, 
			MAX(TaxFunDay) as TaxFunDay,sum(MTAX) as MTAX, -------کل معافیت ها را در نظر میگیرد
			TaxCalculationType
	FROM (
    	SELECT	FC.PersonelNO,FC.Mounth AS CountMounth, 0 as BonusMounth ,
				sum(CASE WHEN (BedBes = 0 AND  CalCulateKind=12)  THEN FC.Price ELSE 0 END) AS ContainTaxValue,
				sum(CASE WHEN (BedBes = 0 AND  CalCulateKind=13)  THEN FC.Price ELSE 0 END) AS MTAX,
				sum(CASE WHEN (BedBes = 2 AND  CalCulateKind=11)  THEN FC.Price ELSE 0 END) AS TaxValue,
				TFD.TaxFunDay_SickDay,TFD.TaxFunDay,IV.TaxCalculationType
		FROM	Pay.FixedCalculated FC  INNER JOIN
				Pay.FixedCalActive() FCA ON FC.PersonelNO = FCA.PersonelNO AND FC.Mounth = FCA.Mounth  AND FC.YearID = FCA.YearID AND FC.ArchiveID = FCA.F_ArchiveID 
				INNER JOIN (
							SELECT     PersonelNo,SUM(ISNULL(SickDay,0)) AS TaxFunDay_SickDay,SUM(ISNULL(FunctionDay,0)) AS TaxFunDay
							FROM         Pay.Functions
							WHERE     (Mounth <@Mounth ) and (YearID = @YearID)
							GROUP BY PersonelNo
							) TFD ON FC.PersonelNO = TFD.PersonelNo
				INNER  JOIN (
							SELECT    OfficeCode, jobCode, InterdictDate, subcompanyCode, PersonelNo, TaxCalculationType, EmployTypeID,
									  startmonth,endMonth, YearID
							FROM      Pay.Interdicts_V  
							where YearID = @YearID
							) IV on IV.PersonelNo=FC.PersonelNo AND IV.TaxCalculationType = FC.SalaryID
								AND RTRIM(LTRIM(str(@YearID)))  +'/' + SUBSTRING(RTRIM(LTRIM(str(100 + FC.Mounth))),2,2)  BETWEEN IV.startmonth and IV.Endmonth

		WHERE     (FC.ShowListKind = 11) and FC.YearID = @YearID
		AND (FC.PersonelNO Between @PersonelNoFROM and @PersonelNoTo)  AND (FC.Mounth <@Mounth)
		GROUP BY FC.PersonelNO,TFD.TaxFunDay_SickDay,TFD.TaxFunDay ,FC.Mounth,TaxCalculationType

		---------------------------------------------------------------------------
		Union all
		-----  براي  پاداش مستقل از حقوق و ماليات آن کاربرد دارد -------------
		SELECT	PD.PersonelNo AS PersonelNO, null AS CountMounth, 0 as BonusMounth ,
				PD.EmployeeAmount AS ContainTaxValue, 0 as MTAX, PD.PaymentLoan AS TaxValue, 
				0 AS TaxFunDay_SickDay, 30 AS TaxFunDay, 0 as TaxCalculationType
		FROM	Pay.PersonelDecExt PD INNER JOIN
				 Pay.FormsInfo FO ON PD.FormInfoID = FO.FormInfoID
				INNER  JOIN  (
							SELECT	interdictid, OfficeCode, jobCode, InterdictDate, subcompanyCode, PersonelNo, 
									TaxCalculationType, EmployTypeID, startmonth, endMonth, YearID
							FROM            Pay.Interdicts_V
							where YearID = @YearID  
							  ) IV on IV.PersonelNo=PD.PersonelNo 
								AND RTRIM(LTRIM(str(@YearID)))+'/'+ SUBSTRING(RTRIM(LTRIM(str(100 + PD.FirstMounth))),2,2)  BETWEEN IV.startmonth and IV.Endmonth
 
		WHERE	 FO.FormType in (111)	AND  (FO.InfoID <=10) AND
				 (cast(SUBSTRING(PD.EndDate,6,2) as int) between 1 and  @Mounth)
	
		---------------------------------------------------------------------------
		Union all
		-----  براي عيدي و ماليات آن کاربرد دارد -------------

		SELECT	PD.PersonelNo AS PersonelNO, null AS CountMounth, 1 as BonusMounth , PD.EmployeeAmount AS ContainTaxValue, 0 as MTAX,
				PD.PaymentLoan AS TaxValue,  0 AS TaxFunDay_SickDay, 30 AS TaxFunDay, 0 as TaxCalculationType 
		FROM	Pay.PersonelDecExt PD INNER JOIN
				 Pay.FormsInfo FO ON PD.FormInfoID = FO.FormInfoID
				INNER  JOIN  (
							  SELECT    OfficeCode, jobCode, InterdictDate, subcompanyCode, PersonelNo, TaxCalculationType,EmployTypeID,
										startmonth,endMonth, YearID
							  FROM            Pay.Interdicts_v  
							  where YearID = @YearID
							  ) IV on IV.PersonelNo=PD.PersonelNo 
								and RTRIM(LTRIM(str(@YearID)))+'/'+ SUBSTRING(RTRIM(LTRIM(str(100 + PD.FirstMounth))),2,2)  BETWEEN IV.startmonth and IV.Endmonth

		WHERE	(FO.FormType in (59) and FO.InfoID=1)  AND (SUBSTRING(PD.EndDate,6,2)  between 1 and  @Mounth  )
		) AS Ctax
	
		GROUP BY   Ctax.PersonelNO, TaxCalculationType
)
  

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO




GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
-----------------------------------------------------------------------------------------------------------
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
CREATE FUNCTION Pay.[ContainInsouranceWithPerson]  (@Mounth int =6,@Year int=84,@YearMounth varchar(7) ='81/01',
				@InterdictType int=0,@PersonelNoFROM int=0,@PersonelNoTo int=9999999 ,@ArchiveID int = 0)  
RETURNS  table  AS 
Return  (

SELECT     FixedCalculated.PersonelNO,FixedCalculated.ProjectID AS ProjectID,FixedCalculated.OfficeCode,FixedCalculated.JobCede AS JobCode,
                      ISNULL(FixedCalculated.ProcCode,0) AS ProcCode,FixedCalculated.Mounth,
					  --SUM(FixedCalculated.Price) AS ContainInsourance , 
					  SUM(CASE WHEN Pay.FixedCalculated.ShowListKind = 2 THEN - Pay.FixedCalculated.Price  ELSE Pay.FixedCalculated.Price END  ) AS ContainInsourance,
			case when Pay.FixedCalculated.ShowListKind  in (1,2) then 2 else 0 end as ShowListKind --new
FROM         pay.InsuranceCONSTinfo INNER JOIN
                      Pay.PersonelInfo_Ins_Tax(@YearMounth,@PersonelNoFrom,@PersonelNoTo)  PersonelInfo ON InsuranceCONSTinfo.insuranceNo = PersonelInfo.insuranceID INNER JOIN
                      Pay.SalaryRange ON InsuranceCONSTinfo.FormInfoID = Pay.SalaryRange.FormInfoID INNER JOIN
                      pay.FixedCalculated ON PersonelInfo.PersonelNo = FixedCalculated.PersonelNO AND Pay.SalaryRange.SalaryID = FixedCalculated.SalaryID
WHERE     (SalaryRange.Kind = 0) And  (FixedCalculated.ArchiveID = @ArchiveID)
			  And (FixedCalculated.YearID = @Year   )

--And (FixedCalculated.LabelID between @LabelIDFrom  and @LabelIDTo   )
 And    (Pay.FixedCalculated.PersonelNO between @PersonelNoFROM and @PersonelNoTo ) AND (Pay.FixedCalculated.Mounth  = @Mounth )
GROUP BY FixedCalculated.PersonelNO,FixedCalculated.OfficeCode,FixedCalculated.JobCede,FixedCalculated.Mounth,FixedCalculated.ProjectID,
                      ISNULL(FixedCalculated.ProcCode,0),
					  case when Pay.FixedCalculated.ShowListKind  in (1,2) then 2 else 0 end 
)
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
--------------------------------------------------------------------------------------------------------
SET QUOTED_IDENTIFIER OFF 
GO
--SET ANSI_NULLS OFF 
GO

CREATE FUNCTION Pay.[ContainInsourance_Person]  (@Mounth int =6,@Year int=84,@YearMounth varchar(7) ='81/01',
				@InterdictType int=0,@PersonelNoFROM int=0,@PersonelNoTo int=9999999 ,@ArchiveID int = 0 )  
RETURNS  table  AS 
Return  (

SELECT	FixedCalculated.PersonelNO,FixedCalculated.Mounth,SUM(FixedCalculated.Price) AS AllContainInsourance
FROM	pay.InsuranceCONSTinfo INNER JOIN
		pay.PersonelInfo_Ins_Tax(@YearMounth,@PersonelNoFrom,@PersonelNoTo)  PersonelInfo ON InsuranceCONSTinfo.insuranceNo = PersonelInfo.insuranceID INNER JOIN
		pay.SalaryRange ON InsuranceCONSTinfo.FormInfoID = Pay.SalaryRange.FormInfoID INNER JOIN
		pay.FixedCalculated ON PersonelInfo.PersonelNo = FixedCalculated.PersonelNO AND Pay.SalaryRange.SalaryID = FixedCalculated.SalaryID
WHERE     (SalaryRange.Kind = 0 ) And  (FixedCalculated.ArchiveID = @ArchiveID)
			  And (FixedCalculated.YearID  = @Year    )
--And (FixedCalculated.LabelID between @LabelIDFrom  and @LabelIDTo   )
      AND (Pay.FixedCalculated.PersonelNO between @PersonelNoFROM and @PersonelNoTo ) AND (Pay.FixedCalculated.Mounth  = @Mounth )
GROUP BY FixedCalculated.PersonelNO,FixedCalculated.Mounth
--HAVING      (Pay.FixedCalculated.PersonelNO between @PersonelNoFROM and @PersonelNoTo ) AND (Pay.FixedCalculated.Mounth  = @Mounth )
)
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
----------------------------------------------------------------------------

------------------------------------------------------------------------------------------------------

CREATE FUNCTION Pay.BonusForUpDate
------------------------------- پارامتر ها بترتيب  شامل  1- تركيب سال و ماه 2- نوع عوامل حقوق و مزايا  (  در معرفي انواع فرمها  = همان نوع عوامل حقوق و مزايا ميباشد . (‏ - ----------------------
	 (@YearMounth varchar(7) ='81/01' ,@salarykind int=1 ,@salarykindTo int=1 ,
	 @PersonelNoFROM int=0,@PersonelNoTo int=9999999,@FormInfoID int,@InfoID int
             ,@OfficeCodeFROM int=0,@OfficeCodeTo int=9999999,@Mounth int, @4ContainSalaryAnnuity int = 0,@InterTypeFrom int=0,@InterTypeTo int=9999999)  
RETURNS  table  AS 
return  (
SELECT     Pay.PersonelDecExt.DecExtID,PersonelDecExt.PersonelNo,PersonelDecExt.DayQuntity,
                      ROUND(CalculateBonusSalary.EmployeeAmount / CalculateBonusSalary.DayQuntity * Pay.PersonelDecExt.DayQuntity,0) AS CBonusPrice,
                      ROUND(CalculateBonusSalary.TaxValue / CalculateBonusSalary.DayQuntity * Pay.PersonelDecExt.DayQuntity,0) AS CTax,
                      CalculateBonusSalary.DayQuntity AS SumDayQuntity,PersonelDecExt.PaymentLoan,PersonelDecExt.EmployeeAmount,
                      Pay.PersonelDecExt.EndDate
FROM         Pay.PersonelDecExt INNER JOIN
                      Pay.CalculateBonusSalary(@YearMounth,@salarykind,@salarykindTo,@PersonelNoFrom,@PersonelNoTo,@FormInfoID,@InfoID,@4ContainSalaryAnnuity
					                           ,@InterTypeFrom ,@InterTypeTo) CalculateBonusSalary ON 
                      Pay.PersonelDecExt.PersonelNo = CalculateBonusSalary.PersonelNo LEFT OUTER JOIN
                      Pay.FormsInfo ON Pay.PersonelDecExt.OfficeCode = Pay.FormsInfo.FormInfoID
WHERE     (PersonelDecExt.FormInfoID = @FormInfoID) AND (FormsInfo.InfoID BETWEEN @OfficeCodeFROM AND @OfficeCodeTo)
)
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
SET QUOTED_IDENTIFIER OFF 
GO
--SET ANSI_NULLS OFF 
GO
CREATE FUNCTION Pay.CalculateAnnuitySalary
------------------------------- پارامتر ها بترتيب  شامل  1- تركيب سال و ماه 2- نوع عوامل حقوق و مزايا  (  در معرفي انواع فرمها  = همان نوع عوامل حقوق و مزايا ميباشد . (‏ - ----------------------
	 (@YearMounth varchar(7) ='81/01' ,@salarykind int=1,@salarykindTo int=1 ,
	 @PersonelNoFROM int=0,@PersonelNoTo int=9999999,@FormInfoID int,@InfoID int , @4ContainSalaryAnnuity int = 0 ,@InterTypeFrom int=0,@InterTypeTo int=9999999 )  
RETURNS  table  AS 
return  (
SELECT  Pay.PersonelDecExt.DecExtId,PersonelDecExt.PersonelNo,PersonelDecExt.EmployerAmount,PersonelDecExt.DayQuntity,


ContainSalaryAnnuity.amount,



		Formsinfo.InfoID,Formsinfo.StandardDays, FormsInfo.StandardTimes,Formsinfo.Amount AS ConstAmount,

                      ROUND((PersonelDecExt.DayQuntity +  ( Pay.PersonelDecExt.DayQuntity / FirstAmount.AllDayQuntity ) *   ISNULL(FirstAmount.DayQuntity,0)) 
                      / FormsInfo.Amount * FormsInfo.StandardDays 
                      * ContainSalaryAnnuity.amount  -  ( Pay.PersonelDecExt.DayQuntity / FirstAmount.AllDayQuntity ) *  ISNULL(FirstAmount.FirstAnnuityPrice,0),0) AS CAnnuityPrice,
                      Pay.PersonelDecExt.EndDate

FROM         Pay.PersonelDecExt INNER JOIN
                      ContainSalaryAnnuity ( @YearMounth,@salarykind,@salarykindTo,@PersonelNoFrom,@PersonelNoTo,2 , @4ContainSalaryAnnuity ) ContainSalaryAnnuity ON 
                      Pay.PersonelDecExt.PersonelNo = ContainSalaryAnnuity.PersonelNo LEFT OUTER JOIN
                          ( SELECT     Pay.PersonelDecExt.PersonelNo,
		 SUM( CASE WHEN Pay.FormsInfo.FormType = 32 THEN ISNULL(PersonelDecExt.EmployeeAmount,0) ELSE 0 END ) AS FirstAnnuityPrice,
		 SUM( CASE WHEN Pay.FormsInfo.FormType = 59 THEN Pay.PersonelDecExt.DayQuntity ELSE 0 END ) AS AllDayQuntity,
		SUM(CASE WHEN Pay.FormsInfo.FormType = 32 THEN  Pay.PersonelDecExt.DayQuntity ELSE 0 END ) AS DayQuntity  
		FROM         Pay.PersonelDecExt INNER JOIN
		 Pay.FormsInfo ON Pay.PersonelDecExt.FormInfoID = Pay.FormsInfo.FormInfoID
		where (FormsInfo.FormType in ( 32,59)) 
		GROUP BY Pay.PersonelDecExt.PersonelNo  )	 FirstAmount ON Pay.PersonelDecExt.PersonelNo = FirstAmount.PersonelNo CROSS JOIN
                          (SELECT     *
                             FROM         Pay.FormsInfo
                             WHERE     formtype = 47 AND infoid = 2)  FormsInfo CROSS JOIN
                      Pay.Config
WHERE	(PersonelDecExt.FormInfoID = @FormInfoID  )
)

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
GO
SET QUOTED_IDENTIFIER ON 
GO
--SET ANSI_NULLS OFF 
GO
CREATE FUNCTION Pay.[InsouranceForUse]  (@InterdictType int=0,@Mounth int =8,@Year int=84,@YearMounth varchar(7) ='81/01' 
	,@PersonelNoFROM int=0,@PersonelNoTo int=9999999 )  
RETURNS  table  AS 
Return  (
SELECT     FixCalculateType1.PersonelNo,FixCalculateType1.ProjectID,FixCalculateType1.OfficeCode,FixCalculateType1.JobCode,FixCalculateType1.Mounth,FixCalculateType1.ProcCode,
                      FixCalculateType1.price
FROM         Pay.InsuranceCONSTinfo INNER JOIN
                      Pay.PersonelInfo_Ins_Tax(@YearMounth,@PersonelNoFrom,@PersonelNoTo) PersonelInfo ON Pay.InsuranceCONSTinfo.insuranceNo = PersonelInfo.insuranceID INNER JOIN
                      Pay.FixCalculateType1(@Mounth,@Year,@YearMounth,@PersonelNoFrom,@PersonelNoTo ) FixCalculateType1 INNER JOIN
                      Pay.SalaryRange ON FixCalculateType1.SalaryID = Pay.SalaryRange.SalaryID ON 
                      Pay.InsuranceCONSTinfo.FormInfoID = Pay.SalaryRange.FormInfoID AND PersonelInfo.PersonelNo = FixCalculateType1.PersonelNo
WHERE     (FixCalculateType1.Mounth = @Mounth ) AND (Pay.SalaryRange.Kind = @InterdictType))
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

-------------------------------------------------
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS OFF 
GO
  
---------
-- function Pay.InsuranceCONSTinfo_f : use in calculate salary  for calculate Insourance and Contain Insourance 
-- create by h.rezaei 
-- 1401/11
---------
CREATE FUNCTION Pay.InsuranceCONSTinfo_f 
								  (
									@Year int=1401, 
									@Mounth int =11 
							      )  
RETURNS Table AS 
return 
(

		select 
				ici.insuranceNo,
				ici.FormInfoID,
				ici.insurancename,
				ici.EmployerName,
				ici.workShop,
				ici.InsuranceLabel_L1,
				ici.InsuranceLabel_L2,
				ici.Employeeshare,
				ici.Employershare,
				ici.InactionInsuranceShare,
				ici.HardShipPercent,
				ici.PeopleExempt,
				i.MaxDailySalary insuranceUp,
				i.MinDailySalary dailywage,
				ici.AccTopicCode,
				ici.AccDetailCode,
				ici.AccCTopicCode,
				ici.AccCTopicCode2,
				ici.AccCTopicCode3,
				ici.tel,
				ici.address,
				ici.OffShootName_L1,
				ici.PostalCode,
				ici.PoorsantRate,
				ici.TaxCode,
				ici.MON_PYM,
				i.YearRun *100+ i.MonthRun FromYearMonth ,
				isnull(lead (i.YearRun *100+ i.MonthRun ) over(partition by i.FormInfoID , i.YearRun , i.MonthRun order by i.FormInfoID , i.YearRun , i.MonthRun ,i.InsuranceID ),999999)  ToYearMonth 
		from pay.InsuranceCONSTinfo ici 
			left join Pay.Insurance i on ici.FormInfoID = i.FormInfoID
)
			
			---------
 -- END of Pay.InsuranceCONSTinfo_f  
---------
  
 
  


GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
  
  
-------------------------------------------------


SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO
CREATE FUNCTION Pay.[InsouranceUpWithPerson]  (@Mounth int=8,@PersonelNoFROM int=0,@PersonelNoTo int=9999999 , @YearMounth char(7)='81/01')  
RETURNS  table  AS 
Return  (

SELECT     Pay.Functions.PersonelNo,SUM(Pay.Functions.FunctionDay) AS FunctionDay,PersonelInfo_Ins.insuranceID,
                      SUM(ROUND(InsuranceCONSTinfo.insuranceUp * --Pay.Functions.FunctionDay

					  case when Pay.Functions.FunctionDay=0 and Pay.Functions.FunctionTime=1 then 1 else Pay.Functions.FunctionDay end 

					  ,0)) AS insuranceUpPerson,InsuranceCONSTinfo.FormInfoID,
                      MAX(InsuranceCONSTinfo.Employeeshare) AS Employeeshare,MAX(InsuranceCONSTinfo.Employershare) AS Employershare,
                      MAX(InsuranceCONSTinfo.InactionInsuranceShare) AS InactionInsuranceShare,MAX(InsuranceCONSTinfo.HardShipPercent) AS HardShipPercent,FormsInfo.AccTopicCode AS ExpAccTopicCode,
                      Pay.FormsInfo.AccDetailCode AS ExpAccDetailCode,FormsInfo.AccCTopicCode AS ExpAccCTopicCode,
                      Pay.FormsInfo.AccCTopicCode2 AS ExpAccCTopicCode2,FormsInfo.AccCTopicCode3 AS ExpAccCTopicCode3,InsuranceCONSTinfo.AccTopicCode,InsuranceCONSTinfo.AccDetailCode,
                      InsuranceCONSTinfo.AccCTopicCode,InsuranceCONSTinfo.AccCTopicCode2,InsuranceCONSTinfo.AccCTopicCode3,
                     Pay.FormTypes.TopicCodeKind,FormTypes.DetailCodeKind,FormTypes.CTopicCodeKind,FormTypes.CTopicCode2Kind,FormTypes.CTopicCode3Kind,
                      Pay.PersonelInfo.AccTopicCode AS PersonAccTopicCode,PersonelInfo.AccDetailCode AS PersonAccDetailCode,
                      Pay.PersonelInfo.AccCTopicCode AS PersonAccCTopicCode,PersonelInfo.AccCTopicCode2 AS PersonAccCTopicCode2,PersonelInfo.AccCTopicCode3 AS PersonAccCTopicCode3

                     
FROM         Pay.PersonelInfo_Ins_Tax(@YearMounth, @PersonelNoFrom, @PersonelNoTo) AS PersonelInfo_Ins  INNER JOIN
                      Pay.Functions INNER JOIN
                      Pay.PersonelInfo ON Pay.Functions.PersonelNo = Pay.PersonelInfo.PersonelNo ON PersonelInfo_Ins.PersonelNo = Pay.Functions.PersonelNo INNER JOIN
                      Pay.FormsInfo INNER JOIN
                      pay.InsuranceCONSTinfo_f (left(@YearMounth,4) , @Mounth) InsuranceCONSTinfo ON Pay.FormsInfo.FormInfoID = InsuranceCONSTinfo.FormInfoID INNER JOIN
                      Pay.FormTypes ON Pay.FormsInfo.FormType =Pay.FormTypes.FormType ON PersonelInfo_Ins.insuranceID = InsuranceCONSTinfo.insuranceNo                      
WHERE     (Pay.Functions.Mounth  =@Mounth) AND (Pay.Functions.YearID = left(@YearMounth,4) ) 
AND    ( Pay.Functions.PersonelNo between @PersonelNoFROM and @PersonelNoTo)

GROUP BY Pay.Functions.PersonelNo,PersonelInfo_Ins.insuranceID,InsuranceCONSTinfo.FormInfoID,InsuranceCONSTinfo.AccTopicCode,
                      InsuranceCONSTinfo.AccDetailCode,InsuranceCONSTinfo.AccCTopicCode,InsuranceCONSTinfo.AccCTopicCode2,InsuranceCONSTinfo.AccCTopicCode3,FormsInfo.AccTopicCode,
                      Pay.FormsInfo.AccDetailCode,FormsInfo.AccCTopicCode,FormsInfo.AccCTopicCode2,FormsInfo.AccCTopicCode3,FormTypes.TopicCodeKind,FormTypes.DetailCodeKind,
                     Pay.FormTypes.CTopicCodeKind,FormTypes.CTopicCode2Kind,FormTypes.CTopicCode3Kind,PersonelInfo.AccTopicCode,PersonelInfo.AccDetailCode,PersonelInfo.AccCTopicCode,
                      Pay.PersonelInfo.AccCTopicCode2,PersonelInfo.AccCTopicCode3
--HAVING         Pay.Functions.PersonelNo between @PersonelNoFROM and @PersonelNoTo
)

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO




SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO
CREATE FUNCTION Pay.[InsouranceEmployershare]   (@InterdictType int=0,@Mounth int =8,@Year int =84,
	@YearMounth varchar(7) ='81/01' ,@PersonelNoFROM int=0,@PersonelNoTo int=9999999 ,@ArchiveID int=00 )  
RETURNS  table  AS 
Return  (
------------------------------------------------------------------------------------------------محاسبه سهم كارفرما در خصوص انواع بيمه  -------------------------------------------------------------------------------
SELECT  InsouranceUpWithPerson.insuranceID,InsouranceUpWithPerson.FormInfoID,ContainInsouranceWithPerson.PersonelNo,
ContainInsouranceWithPerson.ProjectID,ContainInsouranceWithPerson.OfficeCode,ContainInsouranceWithPerson.JobCode,
InsouranceUpWithPerson.FormInfoID AS SalaryID,ContainInsouranceWithPerson.Mounth,ContainInsouranceWithPerson.ProcCode,
SUM( round ( CASE 
WHEN InsouranceUpWithPerson.insuranceUpPerson < ContainInsourance_Person.AllContainInsourance
then (ContainInsouranceWithPerson.ContainInsourance *InsouranceUpWithPerson.insuranceUpPerson ) / ContainInsourance_Person.AllContainInsourance
 * InsouranceUpWithPerson.Employershare/100
ELSE ContainInsouranceWithPerson.ContainInsourance  * InsouranceUpWithPerson.Employershare /100 END,0) )
 AS  Price ,1 AS Bedbes,10 AS CalCulateKind,
-- InsouranceUpWithPerson.TopicCodeKind
--InsouranceUpWithPerson.PersonAccDetailCode  
	CASE InsouranceUpWithPerson.TopicCodeKind 
		WHEN 0 THEN 0 
		WHEN 1 THEN Interdict.AccTopicCode
		WHEN 2 THEN InsouranceUpWithPerson.ExpAccTopicCode
		WHEN 3 THEN FormsInfo_Project.AccTopicCode
		WHEN 4 THEN FormsInfo_Office.AccTopicCode
		WHEN 5 THEN Interdict.MasterAccTopicCode
		WHEN 6 THEN InsouranceUpWithPerson.PersonAccTopicCode
		WHEN 8 THEN FormsInfo_Proc.AccTopicCode
		WHEN 11 THEN ltrim(str(FormsInfo_Office.AccTopicCode)) +''+ ltrim(str(InsouranceUpWithPerson.ExpAccTopicCode))		
	ELSE 0 END AS AccTopicCode,
	CASE InsouranceUpWithPerson.DetailCodeKind 
		WHEN 0 THEN 0 
		WHEN 1 THEN Interdict.AccDetailCode
		WHEN 2 THEN InsouranceUpWithPerson.ExpAccDetailCode
		WHEN 3 THEN FormsInfo_Project.AccDetailCode
		WHEN 4 THEN FormsInfo_Office.AccDetailCode
		WHEN 5 THEN Interdict.MasterAccDetailCode
		WHEN 6 THEN InsouranceUpWithPerson.PersonAccDetailCode  
		WHEN 8 THEN FormsInfo_Proc.AccDetailCode
    	WHEN 12  THEN CASE WHEN InsouranceUpWithPerson.AccDetailCode =-1 THEN FormsInfo_Office.AccDetailCode ELSE InsouranceUpWithPerson.AccDetailCode  END 
	ELSE 0 END AS AccDetailCode,
	CASE InsouranceUpWithPerson.CTopicCodeKind 
		WHEN 0 THEN 0 
		WHEN 1 THEN Interdict.AccCTopicCode
		WHEN 2 THEN InsouranceUpWithPerson.ExpAccCTopicCode
		WHEN 3 THEN FormsInfo_Project.AccCTopicCode
		WHEN 4 THEN FormsInfo_Office.AccCTopicCode
		WHEN 5 THEN Interdict.MasterAccCTopicCode
		WHEN 6 THEN InsouranceUpWithPerson.PersonAccCTopicCode
		WHEN 8 THEN FormsInfo_Proc.AccCTopicCode
	ELSE 0 END AS AccCTopicCode,
	CASE InsouranceUpWithPerson.CTopicCode2Kind 
		WHEN 0 THEN 0 
		WHEN 1 THEN Interdict.AccCTopicCode2
		WHEN 2 THEN InsouranceUpWithPerson.ExpAccCTopicCode2
		WHEN 3 THEN FormsInfo_Project.AccCTopicCode2
		WHEN 4 THEN FormsInfo_Office.AccCTopicCode2
		WHEN 5 THEN Interdict.MasterAccCTopicCode2
		WHEN 6 THEN InsouranceUpWithPerson.PersonAccCTopicCode2
		WHEN 8 THEN FormsInfo_Proc.AccCTopicCode2
    	WHEN 11 THEN StandardTimes.AccCTopicCode2
    	--WHEN 12 THEN st.AccCTopicCode2
	ELSE 0 END AS AccCTopicCode2,
	CASE InsouranceUpWithPerson.CTopicCode3Kind 
		WHEN 0 THEN 0 
		WHEN 1 THEN Interdict.AccCTopicCode3
		WHEN 2 THEN InsouranceUpWithPerson.ExpAccCTopicCode3
		WHEN 3 THEN FormsInfo_Project.AccCTopicCode3
		WHEN 4 THEN FormsInfo_Office.AccCTopicCode3
		WHEN 5 THEN Interdict.MasterAccCTopicCode3
		WHEN 6 THEN InsouranceUpWithPerson.PersonAccCTopicCode3
		WHEN 8 THEN FormsInfo_Proc.AccCTopicCode3
    	WHEN 10 THEN StandardTimes.AccCTopicCode3
	ELSE 0 END AS AccCTopicCode3

	,4 AS ShowListKind 

FROM         InsouranceUpWithPerson(@Mounth,@PersonelNoFrom,@PersonelNoTo , @YearMounth ) InsouranceUpWithPerson INNER JOIN
                      ContainInsouranceWithPerson(@Mounth,@Year,@YearMounth,@InterdictType,@PersonelNoFrom,@PersonelNoTo , @ArchiveID  ) ContainInsouranceWithPerson ON 
                      InsouranceUpWithPerson.PersonelNo = ContainInsouranceWithPerson.PersonelNO INNER JOIN
                          (SELECT     PersonelNo,AccTopicCode,AccDetailCode,AccCTopicCode,AccCTopicCode2,AccCTopicCode3,MasterAccTopicCode,MasterAccDetailCode,
                                                   MasterAccCTopicCode,MasterAccCTopicCode2,MasterAccCTopicCode3
                             FROM         Pay.InterdictForUse( @YearMounth,1,2,@PersonelNoFrom,@PersonelNoTo , 1 ) InterdictForUse
                             GROUP BY PersonelNo,AccTopicCode,AccDetailCode,AccCTopicCode,AccCTopicCode2,AccCTopicCode3,MasterAccTopicCode,MasterAccDetailCode,
                                                   MasterAccCTopicCode,MasterAccCTopicCode2,MasterAccCTopicCode3 ) interdict ON 
                      ContainInsouranceWithPerson.PersonelNO = interdict.PersonelNo INNER JOIN
                      ContainInsourance_Person(@Mounth,@Year,@YearMounth,@InterdictType,@PersonelNoFrom,@PersonelNoTo  , @ArchiveID    ) ContainInsourance_Person ON 
                      ContainInsouranceWithPerson.PersonelNO = ContainInsourance_Person.PersonelNO LEFT OUTER JOIN
                       Pay.FormsInfo FormsInfo_Proc ON ContainInsouranceWithPerson.ProcCode = FormsInfo_Proc.FormInfoID LEFT OUTER JOIN
                       Pay.FormsInfo FormsInfo_Project ON ContainInsouranceWithPerson.ProjectID = FormsInfo_Project.FormInfoID LEFT OUTER JOIN
                       Pay.FormsInfo FormsInfo_Office ON ContainInsouranceWithPerson.OfficeCode = FormsInfo_Office.FormInfoID INNER JOIN
                      Pay.StandardTimes ON @Mounth = Pay.StandardTimes.InfoID 

GROUP BY InsouranceUpWithPerson.insuranceID,InsouranceUpWithPerson.FormInfoID,ContainInsouranceWithPerson.PersonelNO,
                      ContainInsouranceWithPerson.ProjectID,ContainInsouranceWithPerson.OfficeCode,ContainInsouranceWithPerson.JobCode,
                      ContainInsouranceWithPerson.Mounth,ContainInsouranceWithPerson.ProcCode,

	CASE InsouranceUpWithPerson.TopicCodeKind 
		WHEN 0 THEN 0 
		WHEN 1 THEN Interdict.AccTopicCode
		WHEN 2 THEN InsouranceUpWithPerson.ExpAccTopicCode
		WHEN 3 THEN FormsInfo_Project.AccTopicCode
		WHEN 4 THEN FormsInfo_Office.AccTopicCode
		WHEN 5 THEN Interdict.MasterAccTopicCode
		WHEN 6 THEN InsouranceUpWithPerson.PersonAccTopicCode
		WHEN 8 THEN FormsInfo_Proc.AccTopicCode
		WHEN 11 THEN ltrim(str(FormsInfo_Office.AccTopicCode)) +''+ ltrim(str(InsouranceUpWithPerson.ExpAccTopicCode))	
	ELSE 0 END,
	CASE InsouranceUpWithPerson.DetailCodeKind 
		WHEN 0 THEN 0 
		WHEN 1 THEN Interdict.AccDetailCode
		WHEN 2 THEN InsouranceUpWithPerson.ExpAccDetailCode
		WHEN 3 THEN FormsInfo_Project.AccDetailCode
		WHEN 4 THEN FormsInfo_Office.AccDetailCode
		WHEN 5 THEN Interdict.MasterAccDetailCode
		WHEN 6 THEN InsouranceUpWithPerson.PersonAccDetailCode  
		WHEN 8 THEN FormsInfo_Proc.AccDetailCode
    	WHEN 12  THEN CASE WHEN InsouranceUpWithPerson.AccDetailCode =-1 THEN FormsInfo_Office.AccDetailCode ELSE InsouranceUpWithPerson.AccDetailCode  END 
	ELSE 0 END ,
	CASE InsouranceUpWithPerson.CTopicCodeKind 
		WHEN 0 THEN 0 
		WHEN 1 THEN Interdict.AccCTopicCode
		WHEN 2 THEN InsouranceUpWithPerson.ExpAccCTopicCode
		WHEN 3 THEN FormsInfo_Project.AccCTopicCode
		WHEN 4 THEN FormsInfo_Office.AccCTopicCode
		WHEN 5 THEN Interdict.MasterAccCTopicCode
		WHEN 6 THEN InsouranceUpWithPerson.PersonAccCTopicCode
		WHEN 8 THEN FormsInfo_Proc.AccCTopicCode
	ELSE 0 END ,
	CASE InsouranceUpWithPerson.CTopicCode2Kind 
		WHEN 0 THEN 0 
		WHEN 1 THEN Interdict.AccCTopicCode2
		WHEN 2 THEN InsouranceUpWithPerson.ExpAccCTopicCode2
		WHEN 3 THEN FormsInfo_Project.AccCTopicCode2
		WHEN 4 THEN FormsInfo_Office.AccCTopicCode2
		WHEN 5 THEN Interdict.MasterAccCTopicCode2
		WHEN 6 THEN InsouranceUpWithPerson.PersonAccCTopicCode2
		WHEN 8 THEN FormsInfo_Proc.AccCTopicCode2
    	WHEN 11 THEN StandardTimes.AccCTopicCode2
    	--WHEN 12 THEN st.AccCTopicCode2
	ELSE 0 END,
	CASE InsouranceUpWithPerson.CTopicCode3Kind 
		WHEN 0 THEN 0 
		WHEN 1 THEN Interdict.AccCTopicCode3
		WHEN 2 THEN InsouranceUpWithPerson.ExpAccCTopicCode3
		WHEN 3 THEN FormsInfo_Project.AccCTopicCode3
		WHEN 4 THEN FormsInfo_Office.AccCTopicCode3
		WHEN 5 THEN Interdict.MasterAccCTopicCode3
		WHEN 6 THEN InsouranceUpWithPerson.PersonAccCTopicCode3
		WHEN 8 THEN FormsInfo_Proc.AccCTopicCode3
    	WHEN 10 THEN StandardTimes.AccCTopicCode3
	ELSE 0 END 

-------------------------------------------------------------------------------------------------پايان محاسبه حق بيمه سهم كارفرما  -----------------------------------------------------------------------------------
)

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
SET QUOTED_IDENTIFIER OFF 
GO
--SET ANSI_NULLS OFF 
GO
CREATE FUNCTION Pay.[InsouranceInaction]   (@InterdictType int=0,@Mounth int =8,@Year int=84,
	@YearMounth varchar(7) ='81/01' ,@PersonelNoFROM int=0,@PersonelNoTo int=9999999 ,@ArchiveID int=00)  
RETURNS  table  AS 
Return  (
---------------------------------------------------------------------------------------------شروع محاسبه بيمه بيكاري سهم كارفرما  -------------------------------------------------------------------------------
SELECT  InsouranceUpWithPerson.insuranceID,InsouranceUpWithPerson.FormInfoID,ContainInsouranceWithPerson.PersonelNo,
ContainInsouranceWithPerson.ProjectID,ContainInsouranceWithPerson.OfficeCode,ContainInsouranceWithPerson.JobCode,
InsouranceUpWithPerson.FormInfoID AS SalaryID,ContainInsouranceWithPerson.Mounth,ContainInsouranceWithPerson.ProcCode 
,
SUM( round ( CASE 
WHEN InsouranceUpWithPerson.insuranceUpPerson < ContainInsourance_Person.AllContainInsourance
then (ContainInsouranceWithPerson.ContainInsourance *InsouranceUpWithPerson.insuranceUpPerson ) / ContainInsourance_Person.AllContainInsourance
   * InsouranceUpWithPerson.InactionInsuranceShare /100
ELSE ContainInsouranceWithPerson.ContainInsourance   * InsouranceUpWithPerson.InactionInsuranceShare /100 END,0) )
 AS  Price  	,1 AS Bedbes,10 AS CalCulateKind,
--        InsouranceUpWithPerson.ExpAccTopicCode,
--	InsouranceUpWithPerson.ExpAccDetailCode,InsouranceUpWithPerson.ExpAccCTopicCode,
  --      InsouranceUpWithPerson.ExpAccCTopicCode2,

	CASE InsouranceUpWithPerson.TopicCodeKind 
		WHEN 0 THEN 0 
		WHEN 1 THEN Interdict.AccTopicCode
		WHEN 2 THEN InsouranceUpWithPerson.ExpAccTopicCode
		WHEN 3 THEN FormsInfo_Project.AccTopicCode
		WHEN 4 THEN FormsInfo_Office.AccTopicCode
		WHEN 5 THEN Interdict.MasterAccTopicCode
		WHEN 6 THEN InsouranceUpWithPerson.PersonAccTopicCode
		WHEN 8 THEN FormsInfo_Proc.AccTopicCode
		WHEN 11 THEN ltrim(str(FormsInfo_Office.AccTopicCode)) +''+ ltrim(str(InsouranceUpWithPerson.ExpAccTopicCode))		
	ELSE 0 END AS AccTopicCode,
	CASE InsouranceUpWithPerson.DetailCodeKind 
		WHEN 0 THEN 0 
		WHEN 1 THEN Interdict.AccDetailCode
		WHEN 2 THEN InsouranceUpWithPerson.ExpAccDetailCode
		WHEN 3 THEN FormsInfo_Project.AccDetailCode
		WHEN 4 THEN FormsInfo_Office.AccDetailCode
		WHEN 5 THEN Interdict.MasterAccDetailCode
		WHEN 6 THEN InsouranceUpWithPerson.PersonAccDetailCode  
		WHEN 8 THEN FormsInfo_Proc.AccDetailCode
    	WHEN 12  THEN CASE WHEN InsouranceUpWithPerson.AccDetailCode =-1 THEN FormsInfo_Office.AccDetailCode ELSE InsouranceUpWithPerson.AccDetailCode  END 
	ELSE 0 END AS AccDetailCode,
	CASE InsouranceUpWithPerson.CTopicCodeKind 
		WHEN 0 THEN 0 
		WHEN 1 THEN Interdict.AccCTopicCode
		WHEN 2 THEN InsouranceUpWithPerson.ExpAccCTopicCode
		WHEN 3 THEN FormsInfo_Project.AccCTopicCode
		WHEN 4 THEN FormsInfo_Office.AccCTopicCode
		WHEN 5 THEN Interdict.MasterAccCTopicCode
		WHEN 6 THEN InsouranceUpWithPerson.PersonAccCTopicCode
		WHEN 8 THEN FormsInfo_Proc.AccCTopicCode
	ELSE 0 END AS AccCTopicCode,
	CASE InsouranceUpWithPerson.CTopicCode2Kind 
		WHEN 0 THEN 0 
		WHEN 1 THEN Interdict.AccCTopicCode2
		WHEN 2 THEN InsouranceUpWithPerson.ExpAccCTopicCode2
		WHEN 3 THEN FormsInfo_Project.AccCTopicCode2
		WHEN 4 THEN FormsInfo_Office.AccCTopicCode2
		WHEN 5 THEN Interdict.MasterAccCTopicCode2
		WHEN 6 THEN InsouranceUpWithPerson.PersonAccCTopicCode2
		WHEN 8 THEN FormsInfo_Proc.AccCTopicCode2
    	WHEN 11 THEN StandardTimes.AccCTopicCode2
    	--WHEN 12 THEN st.AccCTopicCode2
	ELSE 0 END AS AccCTopicCode2,
	CASE InsouranceUpWithPerson.CTopicCode3Kind 
		WHEN 0 THEN 0 
		WHEN 1 THEN Interdict.AccCTopicCode3
		WHEN 2 THEN InsouranceUpWithPerson.ExpAccCTopicCode3
		WHEN 3 THEN FormsInfo_Project.AccCTopicCode3
		WHEN 4 THEN FormsInfo_Office.AccCTopicCode3
		WHEN 5 THEN Interdict.MasterAccCTopicCode3
		WHEN 6 THEN InsouranceUpWithPerson.PersonAccCTopicCode3
		WHEN 8 THEN FormsInfo_Proc.AccCTopicCode3
    	WHEN 10 THEN StandardTimes.AccCTopicCode3
	ELSE 0 END AS AccCTopicCode3

	,14 AS ShowListKind 


FROM         InsouranceUpWithPerson(@Mounth,@PersonelNoFrom,@PersonelNoTo , @YearMounth ) InsouranceUpWithPerson INNER JOIN
                      ContainInsouranceWithPerson(@Mounth,@Year,@YearMounth,@InterdictType,@PersonelNoFrom,@PersonelNoTo , @ArchiveID  ) ContainInsouranceWithPerson ON 
                      InsouranceUpWithPerson.PersonelNo = ContainInsouranceWithPerson.PersonelNO INNER JOIN
                          (SELECT     PersonelNo,AccTopicCode,AccDetailCode,AccCTopicCode,AccCTopicCode2,AccCTopicCode3,MasterAccTopicCode,MasterAccDetailCode,
                                                   MasterAccCTopicCode,MasterAccCTopicCode2,MasterAccCTopicCode3
                             FROM         Pay.InterdictForUse( @YearMounth,1,2,@PersonelNoFrom,@PersonelNoTo ,1 ) InterdictForUse
                             GROUP BY PersonelNo,AccTopicCode,AccDetailCode,AccCTopicCode,AccCTopicCode2,AccCTopicCode3,MasterAccTopicCode,MasterAccDetailCode,
                                                   MasterAccCTopicCode,MasterAccCTopicCode2,MasterAccCTopicCode3 ) interdict ON 
                      ContainInsouranceWithPerson.PersonelNO = interdict.PersonelNo INNER JOIN
                      ContainInsourance_Person(@Mounth,@Year,@YearMounth,@InterdictType,@PersonelNoFrom,@PersonelNoTo , @ArchiveID  ) ContainInsourance_Person ON 
                      ContainInsouranceWithPerson.PersonelNO = ContainInsourance_Person.PersonelNO LEFT OUTER JOIN
                       Pay.FormsInfo FormsInfo_Proc ON ContainInsouranceWithPerson.ProcCode = FormsInfo_Proc.FormInfoID LEFT OUTER JOIN
                       Pay.FormsInfo FormsInfo_Project ON ContainInsouranceWithPerson.ProjectID = FormsInfo_Project.FormInfoID LEFT OUTER JOIN
                       Pay.FormsInfo FormsInfo_Office ON ContainInsouranceWithPerson.OfficeCode = FormsInfo_Office.FormInfoID INNER JOIN
                      Pay.StandardTimes ON @Mounth = Pay.StandardTimes.InfoID 

GROUP BY InsouranceUpWithPerson.insuranceID,InsouranceUpWithPerson.FormInfoID,ContainInsouranceWithPerson.PersonelNO,
                      ContainInsouranceWithPerson.ProjectID,ContainInsouranceWithPerson.OfficeCode,ContainInsouranceWithPerson.JobCode,
                      ContainInsouranceWithPerson.Mounth,ContainInsouranceWithPerson.ProcCode,

	CASE InsouranceUpWithPerson.TopicCodeKind 
		WHEN 0 THEN 0 
		WHEN 1 THEN Interdict.AccTopicCode
		WHEN 2 THEN InsouranceUpWithPerson.ExpAccTopicCode
		WHEN 3 THEN FormsInfo_Project.AccTopicCode
		WHEN 4 THEN FormsInfo_Office.AccTopicCode
		WHEN 5 THEN Interdict.MasterAccTopicCode
		WHEN 6 THEN InsouranceUpWithPerson.PersonAccTopicCode
		WHEN 8 THEN FormsInfo_Proc.AccTopicCode
		WHEN 11 THEN ltrim(str(FormsInfo_Office.AccTopicCode)) +''+ ltrim(str(InsouranceUpWithPerson.ExpAccTopicCode))	
	ELSE 0 END,
	CASE InsouranceUpWithPerson.DetailCodeKind 
		WHEN 0 THEN 0 
		WHEN 1 THEN Interdict.AccDetailCode
		WHEN 2 THEN InsouranceUpWithPerson.ExpAccDetailCode
		WHEN 3 THEN FormsInfo_Project.AccDetailCode
		WHEN 4 THEN FormsInfo_Office.AccDetailCode
		WHEN 5 THEN Interdict.MasterAccDetailCode
		WHEN 6 THEN InsouranceUpWithPerson.PersonAccDetailCode  
		WHEN 8 THEN FormsInfo_Proc.AccDetailCode
    	WHEN 12  THEN CASE WHEN InsouranceUpWithPerson.AccDetailCode =-1 THEN FormsInfo_Office.AccDetailCode ELSE InsouranceUpWithPerson.AccDetailCode  END 
	ELSE 0 END ,
	CASE InsouranceUpWithPerson.CTopicCodeKind 
		WHEN 0 THEN 0 
		WHEN 1 THEN Interdict.AccCTopicCode
		WHEN 2 THEN InsouranceUpWithPerson.ExpAccCTopicCode
		WHEN 3 THEN FormsInfo_Project.AccCTopicCode
		WHEN 4 THEN FormsInfo_Office.AccCTopicCode
		WHEN 5 THEN Interdict.MasterAccCTopicCode
		WHEN 6 THEN InsouranceUpWithPerson.PersonAccCTopicCode
		WHEN 8 THEN FormsInfo_Proc.AccCTopicCode
	ELSE 0 END ,
	CASE InsouranceUpWithPerson.CTopicCode2Kind 
		WHEN 0 THEN 0 
		WHEN 1 THEN Interdict.AccCTopicCode2
		WHEN 2 THEN InsouranceUpWithPerson.ExpAccCTopicCode2
		WHEN 3 THEN FormsInfo_Project.AccCTopicCode2
		WHEN 4 THEN FormsInfo_Office.AccCTopicCode2
		WHEN 5 THEN Interdict.MasterAccCTopicCode2
		WHEN 6 THEN InsouranceUpWithPerson.PersonAccCTopicCode2
		WHEN 8 THEN FormsInfo_Proc.AccCTopicCode2
    	WHEN 11 THEN StandardTimes.AccCTopicCode2
    	--WHEN 12 THEN st.AccCTopicCode2
	ELSE 0 END ,
	CASE InsouranceUpWithPerson.CTopicCode3Kind 
		WHEN 0 THEN 0 
		WHEN 1 THEN Interdict.AccCTopicCode3
		WHEN 2 THEN InsouranceUpWithPerson.ExpAccCTopicCode3
		WHEN 3 THEN FormsInfo_Project.AccCTopicCode3
		WHEN 4 THEN FormsInfo_Office.AccCTopicCode3
		WHEN 5 THEN Interdict.MasterAccCTopicCode3
		WHEN 6 THEN InsouranceUpWithPerson.PersonAccCTopicCode3
		WHEN 8 THEN FormsInfo_Proc.AccCTopicCode3
    	WHEN 10 THEN StandardTimes.AccCTopicCode3
	ELSE 0 END 


---------------------------------------------------------------------------------------------------پايان محاسبه بيكاري سهم كارفرما  ---------------------------------------------------------------------------------
)

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO


-------------------------------------------------
--------------------------------------------------
SET QUOTED_IDENTIFIER ON 
GO
--SET ANSI_NULLS OFF 
GO
CREATE FUNCTION Pay.ChkTick (@Ticks  varchar(4000) ,@TickID int )
RETURNS bit 
begin
  if ((ISNULL(@Ticks,'') = '') OR (','+@Ticks+',' LIKE N'%,'+ltrim(str(@TickID))+',%'))
   RETURN(1)
  RETURN(0)
end
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
-------------------------------------------------
--------------------------------------------------


GO
SET QUOTED_IDENTIFIER OFF 
GO
--SET ANSI_NULLS OFF 
GO
CREATE FUNCTION Pay.MakeDocuments  ( @PersonelNoFROM int=0,@PersonelNoTo int=9999999,
 @OfficeCodes varchar(8000)='1172',	@FirstArchiveID int=1,@LastArchiveID int=9999,@month int,@YearMonth varchar(7) ='85/01' 
,@PersonelStateFROM int=0,@PersonelStateTo int=10,@EmployTypeIDFROM  int=0,@EmployTypeIDTo int=100
,@subcompanyCode int=0 ,  @ProjectIDFrom int=0,@ProjectIDTo int=9999999 , @insuranceIDs varchar(8000)='0'
,@LabelIDFrom  int=0,@LabelIDTo  int=0 )  
RETURNS  @retFindReports TABLE 
  (
    Part char(2) ,
    AccTopicCode bigint NULL,
	AccDetailCode int NULL,
	AccCTopicCode int NULL,
	AccCTopicCode2 int NULL,
	AccCTopicCode3 int null,
	debt money NULL,
	credit money  NULL,
	InfoName_L1 varchar(500)  COLLATE DATABASE_DEFAULT NULL,
	PersonelNO int null,
	PeronName varchar(200)  COLLATE DATABASE_DEFAULT NULL,
	BedBes int  NULL,
	FormType int  NULL,	
	SalaryID int  NULL,
	FormCaption_L1  varchar(500)  COLLATE DATABASE_DEFAULT NULL,
	EmployerShare bit NULL
  )
  AS 
BEGIN  
INSERT INTO @retFindReports

SELECT  MAX(Part) ,AccTopicCode,AccDetailCode,AccCTopicCode,AccCTopicCode2,AccCTopicCode3,
	CASE WHEN SUM(debt-credit)>0 THEN SUM(debt-credit) ELSE 0 END AS  debt,
	CASE WHEN SUM(credit-debt)>0 THEN SUM(credit-debt) ELSE 0 END AS  credit,
	InfoName_L1,PersonelNO,PeronName,CASE WHEN SUM(debt-credit)>0 THEN 1 ELSE 2 END AS bedbes,
	MAX(FormType) AS FormType , MAX(SalaryID) AS SalaryID,MAX(FormCaption_L1) AS FormCaption_L1,  EmployerShare

FROM (


	SELECT '01' AS Part ,
	case when isnull(FormsInfo.EmployerAmountActive,0)=0 then FC.AccTopicCode else Pay.FormsInfo.AccTopicCodeB end as AccTopicCode  ,
	
--	case when isnull(FormsInfo.EmployerAmountActive,0)=0 then FC.AccDetailCode else Pay.FormsInfo.AccDetailCodeB end AccDetailCode,
	--case when isnull(FormsInfo.EmployerAmountActive,0)=0 then case when  FC.BedBes= 2  and FC.AccDetailCode = -1 
	--    then Pay.PersonelInfo.AccDetailCode else FC.AccDetailCode end
	--else Pay.FormsInfo.AccDetailCodeB end AccDetailCode,
case 
	when isnull(FormsInfo.EmployerAmountActive,0)=0 then case when  FC.BedBes= 2  and FC.AccDetailCode = -1 then Pay.PersonelInfo.AccDetailCode else FC.AccDetailCode end
	else Pay.FormsInfo.AccDetailCodeB end AccDetailCode,
             -- FC.AccCTopicCode			
				CASE Pay.FormTypes.CTopicCodeKind 
                        --WHEN 4 THEN FormsInfo_Office.AccCTopicCode
                        WHEN 4 THEN case when  FC.BedBes= 2  then 0 else FormsInfo_Office.AccCTopicCode end
                        WHEN 6 THEN Pay.PersonelInfo.AccCTopicCode  
						WHEN 13 THEN  case when Pay.FormsInfo.AccCTopicCode = -1  then FormsInfo_Project.AccCTopicCode else Pay.FormsInfo.AccCTopicCode end  
					ELSE FC.AccCTopicCode END AS AccCTopicCode					
		--	,FC.AccCTopicCode2,FC.AccCTopicCode3,

				,CASE FC.BedBes WHEN 2 THEN
				CASE FormTypes50.CTopicCode2Kind
    	           WHEN 1100 THEN StandardTimes.AccCTopicCode2    ---  به خواست رشیدی و نظر فلاحی
                   WHEN 1200 THEN StandardTimes.AccCTopicCode2
					ELSE FC.AccCTopicCode2 END
			 ELSE FC.AccCTopicCode2 END  
					AS AccCTopicCode2	
				,CASE FC.BedBes WHEN 2 THEN
				CASE FormTypes50.CTopicCode3Kind 
    	WHEN 12 THEN StandardTimes.AccCTopicCode3
					ELSE FC.AccCTopicCode3 END 
			 ELSE FC.AccCTopicCode3 END  					
					AS AccCTopicCode3	,				


		    CASE FC.BedBes WHEN 1 THEN FC.Price ELSE 0 END AS debt,
			CASE FC.BedBes WHEN 2 THEN FC.Price ELSE 0 END 
			+CASE WHEN BedBes=2 and CalCulateKind=11 then isnull(RewardTax,0) else 0 end			
			 AS credit,
			FormsInfo.InfoName_L1,FC.PersonelNO,
			PersonelInfo.name_L1 + ' - ' + Pay.PersonelInfo.lastName_L1 AS PeronName,
			FC.BedBes,FormsInfo.FormType, FC.SalaryID,Pay.FormTypes.FormCaption_L1,1 as EmployerShare
		
	FROM	FixedCalculated AS FC 
			INNER JOIN  Pay.FormsInfo ON FC.SalaryID = Pay.FormsInfo.FormInfoID 
			INNER JOIN Pay.PersonelInfo ON FC.PersonelNO = Pay.PersonelInfo.PersonelNo 
			LEFT OUTER JOIN  Pay.FormsInfo FormsInfo_Office ON FC.OfficeCode = FormsInfo_Office.FormInfoID
			INNER JOIN  Pay.FormsInfo FormsInfoPersonelState ON Pay.PersonelInfo.PersonelState = FormsInfoPersonelState.FormInfoID
			INNER JOIN Pay.Interdicts AS I ON Pay.PersonelInfo.PersonelNo = I.PersonelNo
			LEFT OUTER JOIN	 Pay.FormsInfo AS FormsInfoEmployTypeID ON I.EmployTypeID = FormsInfoEmployTypeID.FormInfoID
			LEFT OUTER JOIN  Pay.FormsInfo AS FormsInfo_Project ON FC.ProjectID = FormsInfo_Project.FormInfoID
			INNER JOIN Pay.FormTypes ON Pay.FormsInfo.FormType =Pay.FormTypes.FormType   
			INNER JOIN Pay.StandardTimes ON @Month = Pay.StandardTimes.InfoID 
			INNER JOIN Pay.FormTypes FormTypes50 ON FormTypes50.FormType = 50 
			
 LEFT OUTER JOIN 
(SELECT PersonelNo 
,ISNULL(SUM(case when F_sanavat.FormType = 59 then EmployerAmount else 0 end ),0) AS Sanavat
,ISNULL(SUM(case when F_sanavat.FormType = 59 then EmployeeAmount else 0 end ),0) AS Eydi
,ISNULL(SUM(case when F_sanavat.FormType = 59 then PaymentLoan else 0 end ),0) AS MaliatEydi
,ISNULL(SUM(case when F_sanavat.FormType = 111 then EmployeeAmount else 0 end ),0) AS Reward
,ISNULL(SUM(case when F_sanavat.FormType = 111 then PaymentLoan else 0 end ),0) AS RewardTax
FROM Pay.PersonelDecExt PersonelDecExt_1 INNER JOIN 
 Pay.FormsInfo F_sanavat ON PersonelDecExt_1.FormInfoID = F_sanavat.FormInfoID 
CROSS JOIN Pay.Config c 
WHERE (LEFT(EndDate, 7) = @YearMonth) 
AND ((F_sanavat.FormType IN (59,111)) and  C.ActRewardInlistSalary in ( 1 ,2)
			
  ) 

Group by PersonelNo)
 AS EydiSanavat ON FC.PersonelNO = EydiSanavat.PersonelNo 

CROSS JOIN Pay.Config c 
			
	WHERE	(ISNULL(FC.DocNo, 0) = 0) 
			AND (FC.BedBes <> 0) 
			AND (FC.Mounth = @month ) 
			AND (FC.YearID = LEFT(@YearMonth,4 )) 
			AND not((FC.CalCulateKind = 10) AND (FC.ShowListKind = 2)) 
			AND (FC.Price <> 0) 
			AND	(FC.PersonelNO BETWEEN @PersonelNoFROM  AND @PersonelNoTo )    
		  --AND (FormsInfo_Office.infoID BETWEEN @OfficeCodeFROM AND @OfficeCodeTo ) 
			AND ((Pay.ChkTick(@OfficeCodes,FC.OfficeCode)=1)or(isnull(FC.OfficeCode,0)=0))
			AND ((Pay.ChkTick(@insuranceIDs,I.insuranceID)=1)or(isnull(I.insuranceID,0)=0))			
			AND (ArchiveID = @LastArchiveID)
			AND (FormsInfoPersonelState.InfoID  BETWEEN @PersonelStateFROM AND @PersonelStateTo )
			AND (FormsInfoEmployTypeID.InfoID   BETWEEN @EmployTypeIDFROM AND @EmployTypeIDTo )
			AND ((I.subcompanyCode = @subcompanyCode)OR(I.subcompanyCode =0))
		 -- AND (Interdicts.State < 50)  
			AND (@YearMonth BETWEEN LEFT(InterdicStartDate,7) AND LEFT(InterdicEnddate,7))
			AND ((FormsInfo_Project.InfoID BETWEEN @ProjectIDFrom AND @ProjectIDTo) OR (FC.ProjectID = 0)) 
			AND (FormTypes.SalaryEffectKind <> 3)
            AND (FC.LabelID between @LabelIDFrom  and @LabelIDTo   )
			AND (FormsInfo.SalaryIDinDocActive = 1 )
			AND (FormsInfoPersonelState.SalaryIDinDocActive = 1 )
			
			
	UNION ALL


SELECT   '02' AS Part ,
FormsInfo.AccTopicCode AS AccTopicCode,
FormsInfo.AccDetailCode AS AccDetailCode,
FormsInfo.AccCTopicCode AS AccCTopicCode,
FormsInfo.AccCTopicCode2 AS AccCTopicCode2,
FormsInfo.AccCTopicCode3 AS AccCTopicCode3,
ISNULL(SUM(case when Pay.FormsInfo.FormType = 111 then EmployeeAmount else 0 end ),0) AS debt
, cast(0 as money) AS credit,
			'پاداش' as InfoName_L1,PersonelDecExt.PersonelNO,
			PersonelInfo.name_L1 + ' - ' + Pay.PersonelInfo.lastName_L1 AS PeronName,
			1 as BedBes,FormsInfo.FormType, Pay.PersonelDecExt.FormInfoID,Pay.FormTypes.FormCaption_L1,1 as EmployerShare




FROM Pay.PersonelDecExt INNER JOIN
InterdictForUse(@YearMonth,1,2,@PersonelNoFROM ,@PersonelNoTo ,1 ) I ON
PersonelDecExt.PersonelNo = I.PersonelNo INNER JOIN
 Pay.FormsInfo ON Pay.PersonelDecExt.FormInfoID = Pay.FormsInfo.FormInfoID INNER JOIN
FormTypes ON Pay.FormsInfo.FormType =Pay.FormTypes.FormType INNER JOIN
PersonelInfo ON Pay.PersonelDecExt.PersonelNo = Pay.PersonelInfo.PersonelNo


CROSS JOIN Pay.Config c



WHERE ( C.ActRewardInlistSalary in(1,2) )and  (PersonelDecExt.State <> 1)
AND  (LEFT(EndDate, 7) = @YearMonth) 
AND ((FormsInfo.FormType IN (111))   )  
			AND ((Pay.ChkTick(@OfficeCodes,I.OfficeCode)=1)or(isnull(I.OfficeCode,0)=0))
			AND ((Pay.ChkTick(@insuranceIDs,I.insuranceID)=1)or(isnull(I.insuranceID,0)=0))			
			AND (FormsInfo.SalaryIDinDocActive = 1 )
			AND (Pay.PersonelDecExt.YearID = LEFT(@YearMonth,4 )) 

GROUP BY Pay.FormsInfo.AccTopicCode,
FormsInfo.AccDetailCode,
FormsInfo.AccCTopicCode,
FormsInfo.AccCTopicCode2,
FormsInfo.AccCTopicCode3 ,FormsInfo.InfoName_L1,PersonelDecExt.PersonelNO,PersonelInfo.name_L1 , 
PersonelInfo.lastName_L1 ,FormsInfo.FormType,PersonelDecExt.FormInfoID,FormTypes.FormCaption_L1

	UNION ALL

	SELECT   '03' AS Part , case when isnull(FormsInfo.EmployerAmountActive,0)=0 then FC.AccTopicCode else Pay.FormsInfo.AccTopicCodeB end as AccTopicCode  ,
	case when isnull(FormsInfo.EmployerAmountActive,0)=0 then FC.AccDetailCode else Pay.FormsInfo.AccDetailCodeB end AccDetailCode,
			FC.AccCTopicCode,FC.AccCTopicCode2,FC.AccCTopicCode3,
			CASE FC.BedBes WHEN 1 THEN - FC.Price ELSE 0 END AS debt,
			CASE FC.BedBes WHEN 2 THEN - FC.Price ELSE 0 END AS credit,
			FormsInfo.InfoName_L1,FC.PersonelNO,
			(PersonelInfo.name_L1 + ' - ' + Pay.PersonelInfo.lastName_L1) AS PeronName,
			FC.BedBes,FormsInfo.FormType, FC.SalaryID,Pay.FormTypes.FormCaption_L1,1 as EmployerShare

	FROM	FixedCalculated AS FC
			INNER JOIN	 Pay.FormsInfo ON FC.SalaryID = Pay.FormsInfo.FormInfoID 
			INNER JOIN	PersonelInfo ON FC.PersonelNO = Pay.PersonelInfo.PersonelNo  
	--		LEFT OUTER JOIN	 Pay.FormsInfo FormsInfo_Office ON FC.OfficeCode = FormsInfo_Office.FormInfoID
			INNER JOIN	 Pay.FormsInfo FormsInfoPersonelState ON Pay.PersonelInfo.PersonelState = FormsInfoPersonelState.FormInfoID
			INNER JOIN	Interdicts AS I ON PersonelInfo.PersonelNo = I.PersonelNo
			LEFT OUTER JOIN  Pay.FormsInfo AS FormsInfoEmployTypeID ON I.EmployTypeID = FormsInfoEmployTypeID.FormInfoID
			LEFT OUTER JOIN  Pay.FormsInfo AS FormsInfo_Project ON FC.ProjectID = FormsInfo_Project.FormInfoID
			INNER JOIN	FormTypes ON Pay.FormsInfo.FormType =Pay.FormTypes.FormType 

	WHERE		(ISNULL(FC.DocNo,0) = 0) 
			AND (FC.BedBes <> 0) 
			AND (FC.Mounth = @month ) 
			AND (FC.YearID = LEFT(@YearMonth,4 )) 
			AND NOT((FC.CalCulateKind = 10) AND (FC.ShowListKind = 2)) 
			AND (FC.Price <> 0) 
			AND (FC.PersonelNO BETWEEN @PersonelNoFROM  AND @PersonelNoTo ) 
	  --	AND (FormsInfo_Office.infoID BETWEEN @OfficeCodeFROM AND @OfficeCodeTo ) 
			AND ((Pay.ChkTick(@OfficeCodes,FC.OfficeCode)=1)or(isnull(FC.OfficeCode,0)=0))
			AND ((Pay.ChkTick(@insuranceIDs,I.insuranceID)=1)or(isnull(I.insuranceID,0)=0))			
			AND (ArchiveID = @FirstArchiveID)
			AND (FormsInfoPersonelState.InfoID  BETWEEN @PersonelStateFROM AND @PersonelStateTo )
			AND (FormsInfoEmployTypeID.InfoID   BETWEEN @EmployTypeIDFROM AND @EmployTypeIDTo )
			AND ((I.subcompanyCode = @subcompanyCode)OR(I.subcompanyCode =0))
		--	AND (Interdicts.State < 50)   
			AND (@YearMonth between left(InterdicStartDate,7) and left(InterdicEnddate,7))
			AND ((FormsInfo_Project.InfoID BETWEEN @ProjectIDFrom AND @ProjectIDTo) OR (FC.ProjectID = 0) ) 
			AND (FormTypes.SalaryEffectKind <> 3)
            And (FC.LabelID between @LabelIDFrom  and @LabelIDTo   )
			AND (FormsInfo.SalaryIDinDocActive = 1 )
			) FinalFixed
	GROUP BY AccTopicCode,AccDetailCode,AccCTopicCode,AccCTopicCode2,AccCTopicCode,AccCTopicCode3,InfoName_L1,PersonelNO,PeronName,BedBes,EmployerShare
	HAVING (SUM(debt-credit)<>0 )
	
	UNION ALL

	SELECT DISTINCT  '04' AS Part ,
           case when Pay.FormTypes.TopicCodeKind = 2 then  Pay.FormsInfo.AccTopicCode else I.OfficeAccTopicCode end  OfficeAccTopicCode
		   , Pay.FormsInfo.AccDetailCode, I.OfficeAccCTopicCode,
		   I.OfficeAccCTopicCode2, Pay.FormsInfo.AccCTopicCode3,
		   Pay.PersonelDecExt.EmployerAmount AS debt, 0 AS credit,
		   Pay.FormsInfo.InfoName_L1, Pay.PersonelDecExt.PersonelNo,
		   Pay.PersonelInfo.name_L1 + ' - ' + Pay.PersonelInfo.lastName_L1 AS PeronName, 1 AS bedbes,
		   Pay.FormsInfo.FormType, Pay.PersonelDecExt.FormInfoID AS salaryid, 
          Pay.FormTypes.FormCaption_L1,0 as EmployerShare
	
	FROM	Pay.PersonelDecExt 
			INNER JOIN	Pay.InterdictForUse(@YearMonth, 1, 2, @PersonelNoFROM, @PersonelNoTO, 1) AS I ON Pay.PersonelDecExt.PersonelNo = I.PersonelNo 
			INNER JOIN   Pay.FormsInfo ON Pay.PersonelDecExt.FormInfoID = Pay.FormsInfo.FormInfoID 
			INNER JOIN  Pay.FormTypes ON Pay.FormsInfo.FormType =Pay.FormTypes.FormType 
			INNER JOIN  Pay.PersonelInfo ON Pay.PersonelDecExt.PersonelNo = Pay.PersonelInfo.PersonelNo

	WHERE       (PersonelDecExt.State <> 1) 
			AND (PersonelDecExt.FirstMounth <= @month) 
			AND (PersonelDecExt.EndMounth >= @month) 
			AND (Pay.PersonelDecExt.YearID = LEFT(@YearMonth,4 )) 
			AND (FormTypes.SalaryKind IN (0, 12, 13))
			AND (FormsInfo.FormType = 54) 
			AND (PersonelDecExt.EmployerAmount <> 0)
			AND ((Pay.ChkTick(@OfficeCodes,I.OfficeCode)=1)or(isnull(I.OfficeCode,0)=0))
			AND ((Pay.ChkTick(@insuranceIDs,I.insuranceID)=1)or(isnull(I.insuranceID,0)=0))			
			AND (FormsInfo.SalaryIDinDocActive = 1 )
	UNION ALL

	SELECT DISTINCT  '05' AS Part ,
           Pay.FormsInfo.AccTopicCodeB, Pay.FormsInfo.AccDetailCodeB, Pay.FormsInfo.AccCTopicCode,
		   I.OfficeAccCTopicCode2, Pay.FormsInfo.AccCTopicCode3,
		   0 AS debt,PersonelDecExt.EmployerAmount AS credit,
		   Pay.FormsInfo.InfoName_L1, Pay.PersonelDecExt.PersonelNo,
		   Pay.PersonelInfo.name_L1 + ' - ' + Pay.PersonelInfo.lastName_L1 AS PeronName, 2 AS bedbes,
		   Pay.FormsInfo.FormType, Pay.PersonelDecExt.FormInfoID AS salaryid, 
          Pay.FormTypes.FormCaption_L1,0 as EmployerShare
	
	FROM	Pay.PersonelDecExt 
			INNER JOIN Pay.InterdictForUse(@YearMonth, 1, 2, @PersonelNoFROM, @PersonelNoTO, 1) AS I ON Pay.PersonelDecExt.PersonelNo = I.PersonelNo 
		    INNER JOIN  Pay.FormsInfo ON Pay.PersonelDecExt.FormInfoID = Pay.FormsInfo.FormInfoID 
			INNER JOIN Pay.FormTypes ON Pay.FormsInfo.FormType =Pay.FormTypes.FormType 
			INNER JOIN Pay.PersonelInfo ON Pay.PersonelDecExt.PersonelNo = Pay.PersonelInfo.PersonelNo

	WHERE       (PersonelDecExt.State <> 1) 
			AND (PersonelDecExt.FirstMounth <=@month) 
			AND (PersonelDecExt.EndMounth >= @month) 
			AND (PersonelDecExt.YearID = LEFT(@YearMonth,4 )) 
			AND (FormTypes.SalaryKind IN (0, 12, 13))
			AND (FormsInfo.FormType = 54) 
			AND (PersonelDecExt.EmployerAmount <> 0)
			AND ((Pay.ChkTick(@OfficeCodes,I.OfficeCode)=1)or(isnull(I.OfficeCode,0)=0))
			AND ((Pay.ChkTick(@insuranceIDs,I.insuranceID)=1)or(isnull(I.insuranceID,0)=0))			
			AND (FormsInfo.SalaryIDinDocActive = 1 )
	   





INSERT INTO @retFindReports

SELECT   '06' AS Part ,CASE Pay.FormTypes.TopicCodeKind 
		WHEN 0	THEN 0 
		WHEN 1	THEN Interdict.AccTopicCode
		WHEN 2	THEN FormInfo_PayAble.AccTopicCode
		WHEN 3	THEN FormsInfo_Project.AccTopicCode
		WHEN 4	THEN FormsInfo_Office.AccTopicCode
		WHEN 5	THEN Interdict.MasterAccTopicCode
		WHEN 6	THEN Pay.PersonelInfo.AccTopicCode
		WHEN 13 THEN  case when Pay.PersonelInfo.AccTopicCode > 0  then Pay.PersonelInfo.AccTopicCode else FormInfo_PayAble.AccTopicCode end  
	ELSE 0 END AS AccTopicCode,
	CASE Pay.FormTypes.DetailCodeKind 
		WHEN 0 THEN 0 
		WHEN 1 THEN Interdict.AccDetailCode
		WHEN 2 THEN FormInfo_PayAble.AccDetailCode
		WHEN 3 THEN FormsInfo_Project.AccDetailCode
		WHEN 4 THEN FormsInfo_Office.AccDetailCode
		WHEN 5 THEN Interdict.MasterAccDetailCode
		WHEN 6 THEN Pay.PersonelInfo.AccDetailCode
		WHEN 10 THEN CASE WHEN FormInfo_PayAble.AccDetailCode =0 THEN Pay.PersonelInfo.AccDetailCode 
		ELSE  FormInfo_PayAble.AccDetailCode END   
--  11-اگر تفصيلي عناوين مزايا برابر با -1 بود ، اطلاعات پرسنلي در غير اينصورت  عناوين مزايا
		WHEN 11 THEN CASE WHEN FormInfo_PayAble.AccDetailCode = -1 THEN Pay.PersonelInfo.AccDetailCode 
		ELSE  FormInfo_PayAble.AccDetailCode END   
    	WHEN 12  THEN CASE WHEN FormInfo_PayAble.AccDetailCode =-1 THEN FormsInfo_Office.AccDetailCode ELSE FormInfo_PayAble.AccDetailCode  END 

	ELSE 0 END AS AccDetailCode,
	CASE Pay.FormTypes.CTopicCodeKind 
		WHEN 0 THEN 0 
		WHEN 1 THEN Interdict.AccCTopicCode
		WHEN 2 THEN FormInfo_PayAble.AccCTopicCode
		WHEN 3 THEN FormsInfo_Project.AccCTopicCode
		WHEN 4 THEN FormsInfo_Office.AccCTopicCode
		WHEN 5 THEN Interdict.MasterAccCTopicCode
		WHEN 6 THEN Pay.PersonelInfo.AccCTopicCode
		WHEN 13 THEN  case when FormInfo_PayAble.AccCTopicCode>0 then FormsInfo_Project.AccCTopicCode else FormInfo_PayAble.AccCTopicCode end  

	ELSE 0 END AS AccCTopicCode,
	CASE Pay.FormTypes.CTopicCode2Kind 
		WHEN 0 THEN 0 
		WHEN 1 THEN Interdict.AccCTopicCode2
		WHEN 2 THEN FormInfo_PayAble.AccCTopicCode2
		WHEN 3 THEN FormsInfo_Project.AccCTopicCode2
		WHEN 4 THEN FormsInfo_Office.AccCTopicCode2
		WHEN 5 THEN Interdict.MasterAccCTopicCode2
		WHEN 6 THEN Pay.PersonelInfo.AccCTopicCode2
    	WHEN 11 THEN StandardTimes.AccCTopicCode2
    	WHEN 12 THEN StandardTimes.AccCTopicCode2
	ELSE 0 END AS AccCTopicCode2,
	CASE Pay.FormTypes.CTopicCode3Kind 
		WHEN 0 THEN 0 
		WHEN 1 THEN Interdict.AccCTopicCode3
		WHEN 2 THEN FormInfo_PayAble.AccCTopicCode3
		WHEN 3 THEN FormsInfo_Project.AccCTopicCode3
		WHEN 4 THEN FormsInfo_Office.AccCTopicCode3
		WHEN 5 THEN Interdict.MasterAccCTopicCode3
		WHEN 6 THEN Pay.PersonelInfo.AccCTopicCode3
    	WHEN 10 THEN StandardTimes.AccCTopicCode3
	ELSE 0 END AS AccCTopicCode3,

	CASE WHEN SUM(CASE RFC.BedBes WHEN 1 THEN RFC.price ELSE - RFC.price END )+ISNULL(case when C.ActRewardInlistSalary in(1,2) then EydiSanavat.Reward else 0 end - EydiSanavat.RewardTax,0) < 0 
		 THEN  - SUM(CASE RFC.BedBes WHEN 1 THEN RFC.price ELSE - RFC.price END )+ISNULL(case when C.ActRewardInlistSalary in(1,2) then EydiSanavat.Reward else 0 end - EydiSanavat.RewardTax,0) ELSE 0 END 
		 
-- +ISNULL(case when C.ActRewardInlistSalary in(1,2) then EydiSanavat.Reward else 0 end - EydiSanavat.RewardTax,0)		 
		  AS  debt,
	CASE WHEN SUM(CASE RFC.BedBes WHEN 1 THEN RFC.price ELSE - RFC.price END )+ISNULL(case when C.ActRewardInlistSalary in(1,2) then EydiSanavat.Reward else 0 end - EydiSanavat.RewardTax,0) > 0 
		 THEN   SUM(CASE RFC.BedBes WHEN 1 THEN RFC.price ELSE - RFC.price END ) ELSE 0 END+ISNULL(case when C.ActRewardInlistSalary in(1,2) then EydiSanavat.Reward else 0 end - EydiSanavat.RewardTax,0) AS  credit,

		 FormInfo_PayAble.infoname_L1,
	      RFC.PersonelNO,PersonelInfo.name_L1 + '   ' + Pay.PersonelInfo.lastName_L1 AS personName 
,	CASE WHEN SUM(CASE RFC.BedBes WHEN 1 THEN RFC.price ELSE - RFC.price END ) < 0  THEN  1 ELSE 2 END AS bedbes

		,MAX(FormInfo_PayAble.FormType) AS FormType,MAX( RFC.SalaryID) AS SalaryID, MAX(FormTypes.FormCaption_L1) AS FormCaption_L1, 1 as EmployerShare

FROM     Pay.FormsInfo FormsInfo_Project RIGHT OUTER JOIN
        RetardFixedCalculated(@FirstArchiveID,@LastArchiveID , 0,@LabelIDFrom  ,@LabelIDTo ,LEFT(@YearMonth,4)  ,LEFT(@YearMonth,4)   ) RFC INNER JOIN
        (SELECT     PersonelNo,AccTopicCode,AccDetailCode,AccCTopicCode,AccCTopicCode2,AccCTopicCode3,
	MasterAccTopicCode,MasterAccDetailCode,
        MasterAccCTopicCode,MasterAccCTopicCode2,MasterAccCTopicCode3
        FROM         InterdictForUse( @YearMonth,0,3,@PersonelNoFrom,@PersonelNoTo , 1) AS I
        GROUP BY PersonelNo,AccTopicCode,AccDetailCode,AccCTopicCode,AccCTopicCode2,AccCTopicCode3,
	MasterAccTopicCode,MasterAccDetailCode,MasterAccCTopicCode,MasterAccCTopicCode2,MasterAccCTopicCode3  )interdict 
	ON RFC.PersonelNO = interdict.PersonelNo INNER JOIN
        Pay.PersonelInfo ON RFC.PersonelNO = Pay.PersonelInfo.PersonelNo ON 
        FormsInfo_Project.FormInfoID = RFC.ProjectID 
		LEFT OUTER JOIN
         Pay.FormsInfo FormsInfo_Office ON RFC.OfficeCode = FormsInfo_Office.FormInfoID 
		CROSS JOIN
        Pay.FormTypes INNER JOIN
        (SELECT     TOP 1 *
        FROM         Pay.FormsInfo
        WHERE     (formtype = 50)) FormInfo_PayAble ON Pay.FormTypes.FormType = FormInfo_PayAble.FormType
	INNER JOIN  Pay.FormsInfo FormsInfoPersonelState ON Pay.PersonelInfo.PersonelState = FormsInfoPersonelState.FormInfoID
	INNER JOIN Pay.Interdicts ON PersonelInfo.PersonelNo = Pay.Interdicts.PersonelNo
	LEFT OUTER JOIN 	 Pay.FormsInfo AS FormsInfoEmployTypeID ON Pay.Interdicts.EmployTypeID = FormsInfoEmployTypeID.FormInfoID
	INNER JOIN  Pay.FormsInfo AS FormsInfoSalaryEffectKind ON RFC.SalaryID = FormsInfoSalaryEffectKind.FormInfoID
    INNER JOIN Pay.FormTypes  AS FormTypesInfoSalaryEffectKind ON FormsInfoSalaryEffectKind.FormType =FormTypesInfoSalaryEffectKind.FormType

 LEFT OUTER JOIN 
(SELECT PersonelNo 
,ISNULL(SUM(case when F_sanavat.FormType = 59 then EmployerAmount else 0 end ),0) AS Sanavat
,ISNULL(SUM(case when F_sanavat.FormType = 59 then EmployeeAmount else 0 end ),0) AS Eydi
,ISNULL(SUM(case when F_sanavat.FormType = 59 then PaymentLoan else 0 end ),0) AS MaliatEydi
,ISNULL(SUM(case when F_sanavat.FormType = 111 then EmployeeAmount else 0 end ),0) AS Reward
,ISNULL(SUM(case when F_sanavat.FormType = 111 then PaymentLoan else 0 end ),0) AS RewardTax


FROM Pay.PersonelDecExt PersonelDecExt_1 INNER JOIN 
 Pay.FormsInfo F_sanavat ON PersonelDecExt_1.FormInfoID = F_sanavat.FormInfoID  INNER JOIN
                      Pay.StandardTimes ON @Month = Pay.StandardTimes.InfoID 
WHERE (LEFT(EndDate, 7) = @YearMonth) 
AND ((F_sanavat.FormType IN (59,111))   ) 
	

Group by PersonelNo)
 AS EydiSanavat ON RFC.PersonelNO = EydiSanavat.PersonelNo 

CROSS JOIN Pay.Config c   INNER JOIN
                      Pay.StandardTimes ON @Month = Pay.StandardTimes.InfoID 

WHERE (ISNULL(RFC.DocNo, 0) = 0) 
	AND ((RFC.CalCulateKind <> 10) OR (RFC.ShowListKind <> 2)) 
	AND (bedbes<>0) 
	AND (RFC.Mounth =@month ) 
			AND (RFC.YearID = LEFT(@YearMonth,4 )) 
  --AND (FormsInfo_Office.infoID BETWEEN @OfficeCodeFROM AND @OfficeCodeTo ) 
   AND ((Pay.ChkTick(@OfficeCodes,RFC.OfficeCode)=1)or(isnull(RFC.OfficeCode,0)=0))
			AND ((Pay.ChkTick(@insuranceIDs,Pay.Interdicts.insuranceID)=1)or(isnull(Pay.Interdicts.insuranceID,0)=0))			
	AND (FormsInfoPersonelState.InfoID  BETWEEN @PersonelStateFROM AND @PersonelStateTo )
	AND (FormsInfoEmployTypeID.InfoID   BETWEEN @EmployTypeIDFROM AND @EmployTypeIDTo )
	AND ((Interdicts.subcompanyCode = @subcompanyCode)OR(Interdicts.subcompanyCode =0))
--- AND (Interdicts.State < 50)   
	AND (@YearMonth between left(InterdicStartDate,7) and left(InterdicEnddate,7))
	AND (RFC.PersonelNO between @PersonelNoFROM and  @PersonelNoTo)
	AND ((FormsInfo_Project.InfoID BETWEEN @ProjectIDFrom AND @ProjectIDTo) OR (RFC.ProjectID = 0) ) 
	AND (FormTypesInfoSalaryEffectKind.SalaryEffectKind <> 3)
    And (RFC.LabelID between @LabelIDFrom  and @LabelIDTo   )
			AND (FormsInfoSalaryEffectKind.SalaryIDinDocActive = 1 )


GROUP BY RFC.PersonelNO,C.ActRewardInlistSalary,EydiSanavat.Reward,EydiSanavat.RewardTax,
	CASE Pay.FormTypes.TopicCodeKind 
		WHEN 0 THEN 0 
		WHEN 1 THEN Interdict.AccTopicCode
		WHEN 2 THEN FormInfo_PayAble.AccTopicCode
		WHEN 3 THEN FormsInfo_Project.AccTopicCode
		WHEN 4 THEN FormsInfo_Office.AccTopicCode
		WHEN 5 THEN Interdict.MasterAccTopicCode
		WHEN 6 THEN Pay.PersonelInfo.AccTopicCode
		WHEN 13 THEN  case when Pay.PersonelInfo.AccTopicCode > 0  then Pay.PersonelInfo.AccTopicCode else FormInfo_PayAble.AccTopicCode end  
	ELSE 0 END,
	CASE Pay.FormTypes.DetailCodeKind 
		WHEN 0 THEN 0 
		WHEN 1 THEN Interdict.AccDetailCode
		WHEN 2 THEN FormInfo_PayAble.AccDetailCode
		WHEN 3 THEN FormsInfo_Project.AccDetailCode
		WHEN 4 THEN FormsInfo_Office.AccDetailCode
		WHEN 5 THEN Interdict.MasterAccDetailCode
		WHEN 6 THEN Pay.PersonelInfo.AccDetailCode
		WHEN 10 THEN CASE WHEN FormInfo_PayAble.AccDetailCode =0 THEN Pay.PersonelInfo.AccDetailCode ELSE  FormInfo_PayAble.AccDetailCode END   
--  11-اگر تفصيلي عناوين مزايا برابر با -1 بود ، اطلاعات پرسنلي در غير اينصورت  عناوين مزايا
		WHEN 11 THEN CASE WHEN FormInfo_PayAble.AccDetailCode = -1 THEN Pay.PersonelInfo.AccDetailCode 
		ELSE  FormInfo_PayAble.AccDetailCode END   
    	WHEN 12  THEN CASE WHEN FormInfo_PayAble.AccDetailCode =-1 THEN FormsInfo_Office.AccDetailCode ELSE FormInfo_PayAble.AccDetailCode  END 
	ELSE 0 END,
	CASE Pay.FormTypes.CTopicCodeKind 
		WHEN 0 THEN 0 
		WHEN 1 THEN Interdict.AccCTopicCode
		WHEN 2 THEN FormInfo_PayAble.AccCTopicCode
		WHEN 3 THEN FormsInfo_Project.AccCTopicCode
		WHEN 4 THEN FormsInfo_Office.AccCTopicCode
		WHEN 5 THEN Interdict.MasterAccCTopicCode
		WHEN 6 THEN Pay.PersonelInfo.AccCTopicCode
		WHEN 13 THEN  case when FormInfo_PayAble.AccCTopicCode>0 then FormsInfo_Project.AccCTopicCode else FormInfo_PayAble.AccCTopicCode end  

	ELSE 0 END,
	CASE Pay.FormTypes.CTopicCode2Kind 
		WHEN 0 THEN 0 
		WHEN 1 THEN Interdict.AccCTopicCode2
		WHEN 2 THEN FormInfo_PayAble.AccCTopicCode2
		WHEN 3 THEN FormsInfo_Project.AccCTopicCode2
		WHEN 4 THEN FormsInfo_Office.AccCTopicCode2
		WHEN 5 THEN Interdict.MasterAccCTopicCode2
		WHEN 6 THEN Pay.PersonelInfo.AccCTopicCode2
    	WHEN 11 THEN StandardTimes.AccCTopicCode2
    	WHEN 12 THEN StandardTimes.AccCTopicCode2
	ELSE 0 END,
	CASE Pay.FormTypes.CTopicCode3Kind 
		WHEN 0 THEN 0 
		WHEN 1 THEN Interdict.AccCTopicCode3
		WHEN 2 THEN FormInfo_PayAble.AccCTopicCode3
		WHEN 3 THEN FormsInfo_Project.AccCTopicCode3
		WHEN 4 THEN FormsInfo_Office.AccCTopicCode3
		WHEN 5 THEN Interdict.MasterAccCTopicCode3
		WHEN 6 THEN Pay.PersonelInfo.AccCTopicCode3
    	WHEN 10 THEN StandardTimes.AccCTopicCode3
	ELSE 0 END,
	 FormInfo_PayAble.infoname_L1 ,PersonelInfo.name_L1 + '   ' + Pay.PersonelInfo.lastName_L1 

     RETURN
END


GO


SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE VIEW Pay.YearLoan
AS   
SELECT  TOP 100 PERCENT Pay.PersonelDecExt.FormInfoID,PersonelDecExt.PersonelNo,PersonelDecExt.EmployeeAmount,1 AS FirstMounth,
                      Pay.PersonelDecExt.EndMounth,PersonelDecExt.AidNo1,PersonelDecExt.AidDate1,PersonelDecExt.AidNo2,
                      Pay.PersonelDecExt.AidDate2,PersonelDecExt.DayQuntity,PersonelDecExt.DayTime,PersonelDecExt.EmployerAmount,
                      Pay.PersonelDecExt.FormInfoID2,PersonelDecExt.Note_L1,PersonelDecExt.Note_L2,PersonelDecExt.AccTopicCode,
                      Pay.PersonelDecExt.AccDetailCode,PersonelDecExt.AccCTopicCode,PersonelDecExt.AccCTopicCode2,
                      Pay.PersonelDecExt.PaymentLoan +
                          (SELECT     ISNULL(SUM(Pay.FixedCalculated.Price),0) AS sumPrice
                             FROM         Pay.FixedCalculated INNER JOIN
                                                   Pay.FixedCalActive() FixedCalActive ON Pay.FixedCalculated.Mounth = FixedCalActive.Mounth 
												                                   AND Pay.FixedCalculated.YearID = FixedCalActive.YearID AND 
                                                   Pay.FixedCalculated.ArchiveID = FixedCalActive.F_ArchiveID AND Pay.FixedCalculated.PersonelNO = FixedCalActive.PersonelNO
                             WHERE     (Pay.FixedCalculated.FunctionID = Pay.PersonelDecExt.DecExtID) AND (Pay.FixedCalculated.SalaryID = Pay.PersonelDecExt.FormInfoID) 
                                                   AND (Pay.FixedCalculated.PersonelNO = Pay.PersonelDecExt.PersonelNO)
												   AND (FixedCalculated.BedBes=2)
												    ) AS PaymentLoan,PersonelDecExt.OfficeCode,
                      Pay.PersonelDecExt.ProjectInfoID,PersonelDecExt.OfficeInfoID, Pay.PersonelDecExt.DecExtID AS oldDecExtID
                      ,Settlement,SettlementDate, PayableDuringMonth 					  
    , Pay.PersonelDecExt.EndDate, Pay.PersonelDecExt.Minute_, Pay.PersonelDecExt.AccCTopicCode3, Pay.PersonelDecExt.State, Pay.PersonelDecExt.ProcCode,
     Pay.PersonelDecExt.EarthCode, Pay.PersonelDecExt.StartYear, Pay.PersonelDecExt.EndYear, Pay.PersonelDecExt.Situation, Pay.PersonelDecExt.LastUser, Pay.PersonelDecExt.FirstUser					  
					  ,YearID

FROM         Pay.FormTypes INNER JOIN
                       Pay.FormsInfo ON Pay.FormTypes.FormType = Pay.FormsInfo.FormType INNER JOIN
                      Pay.PersonelDecExt INNER JOIN
                      Pay.PersonelInfo ON Pay.PersonelDecExt.PersonelNo = Pay.PersonelInfo.PersonelNo ON Pay.FormsInfo.FormInfoID = Pay.PersonelDecExt.FormInfoID
WHERE     (FormTypes.SalaryKind IN (9, 14))

--FROM         Pay.PersonelDecExt INNER JOIN
--                      Pay.FormsInfo ON Pay.PersonelDecExt.FormInfoID = Pay.FormsInfo.FormInfoID INNER JOIN
--                      Pay.PersonelInfo ON Pay.PersonelDecExt.PersonelNo = Pay.PersonelInfo.PersonelNo
--WHERE     (FormsInfo.FormType = 33)
ORDER BY Pay.PersonelDecExt.PersonelNo

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO


SET QUOTED_IDENTIFIER ON 
GO
--SET ANSI_NULLS OFF 
GO
CREATE FUNCTION  Pay.InsouranceItems (@FormType int=63 )--,@PrvInfoID int=303 )
RETURNS  table  AS 
Return  (
SELECT      DecExtItems.DecExtID,
SUM(CASE WHEN DecExtItems.Amount=0  THEN DecExtItems.DayQuntity * ( Pay.FormsInfo.FirstAmount + Pay.FormsInfo.Amount) ELSE 
	DecExtItems.DayQuntity*FormsInfo.FirstAmount END ) AS Employe1,


--  Pay.FormsInfo.InfoID =1 OR Pay.FormsInfo.InfoID =2   THEN DecExtItems.DayQuntity*FormsInfo.FirstAmount ELSE 0 END) AS Employe1,
SUM(CASE WHEN   Pay.FormsInfo.InfoID =1  THEN DecExtItems.DayQuntity ELSE 0 END) AS Amount1,
SUM(CASE WHEN   Pay.FormsInfo.InfoID =1  THEN DecExtItems.Amount ELSE 0 END) AS Price1,
SUM(CASE WHEN   Pay.FormsInfo.InfoID =2  THEN DecExtItems.DayQuntity ELSE 0 END) AS Amount2,
SUM(CASE WHEN   Pay.FormsInfo.InfoID =2  THEN DecExtItems.Amount ELSE 0 END) AS Price2,
SUM(CASE WHEN   Pay.FormsInfo.InfoID =3  THEN DecExtItems.DayQuntity ELSE 0 END) AS Amount3,
SUM(CASE WHEN   Pay.FormsInfo.InfoID =3  THEN DecExtItems.Amount ELSE 0 END) AS Price3,
SUM(CASE WHEN   Pay.FormsInfo.InfoID =4  THEN DecExtItems.DayQuntity ELSE 0 END) AS Amount4,
SUM(CASE WHEN   Pay.FormsInfo.InfoID =4  THEN DecExtItems.Amount ELSE 0 END )as Price4,
SUM(DecExtItems.DayQuntity) AS SumAmount,SUM(DecExtItems.Amount) AS sumPrice
FROM         Pay.DecExtItems INNER JOIN
                       Pay.FormsInfo  ON DecExtItems.SalaryID = Pay.FormsInfo.FormInfoID
WHERE     (FormsInfo.FormType = @FormType)--AND (FormsInfo.PrvInfoID = @PrvInfoID)
group by DecExtItems.DecExtID
)
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
SET QUOTED_IDENTIFIER OFF 
GO
--SET ANSI_NULLS OFF 
GO




CREATE FUNCTION Pay.InsouranceInfo4Rpt    (  @Mounth int =1,@FirstArchiveID int=1,@LastArchiveId int=9999,  @PrvInfoID int = 0,
	                     @PersonelNoFROM int=0,@PersonelNoTo int=99999999 ,@MounthRetard int=0 
						 ,@LabelIDFrom  int=0,@LabelIDTo  int=0 ,@YearIDFrom  int=1402,@YearIDTo  int=1402  )  
RETURNS  table  AS 
Return  (
--------------------------------------------------------------------------------------
SELECT     PersonelNo,SUM(containpay) AS containpay,SUM(ContainWage) AS ContainWage,SUM(  ContainPayAndWage) AS ContainPayAndWage,
                      SUM(PayAndWage) AS PayAndWage, SUM(BenPrice) as benprice 
FROM	(SELECT     PersonelNo,
			CASE WHEN salaryid IN
                (SELECT     Pay.SalaryRange.SalaryID
                 FROM          Pay.FormsInfo INNER JOIN
                 Pay.SalaryRange ON Pay.FormsInfo.FormInfoID = Pay.SalaryRange.FormInfoID
                 WHERE     (FormsInfo.FormType = 55) AND (FormsInfo.PrvInfoID = @PrvInfoID ) AND (FormsInfo.InfoID = 1)) THEN price ELSE 0 END AS ContainPay,
			CASE WHEN salaryid IN
				(SELECT     s.SalaryID
FROM            Pay.FormsInfo F INNER JOIN
                         Pay.SalaryRange S ON F.FormInfoID = S.FormInfoID INNER JOIN
                         Pay.FormsInfo AS F2 ON S.SalaryID = F2.FormInfoID INNER JOIN
                         Pay.FormTypes AS T ON F2.FormType = T.FormType
				WHERE     (f.FormType = 55) AND (f.PrvInfoID = @PrvInfoID ) AND (f.InfoID = 2)AND (T.SalaryEffectKind = 1)) THEN price ELSE 0 END 
-
			CASE WHEN salaryid IN
				(SELECT     s.SalaryID
FROM            Pay.FormsInfo F INNER JOIN
                         Pay.SalaryRange S ON F.FormInfoID = S.FormInfoID INNER JOIN
                         Pay.FormsInfo AS F2 ON S.SalaryID = F2.FormInfoID INNER JOIN
                         Pay.FormTypes AS T ON F2.FormType = T.FormType
				WHERE     (f.FormType = 55) AND (f.PrvInfoID = @PrvInfoID ) AND (f.InfoID = 2)AND (T.SalaryEffectKind = 2)) THEN price ELSE 0 END 

				
				AS ContainWage,

			CASE WHEN salaryid IN
				(SELECT        S.SalaryID
FROM            Pay.FormsInfo F INNER JOIN
                         Pay.SalaryRange S ON F.FormInfoID = S.FormInfoID INNER JOIN
                         Pay.FormsInfo AS F2 ON S.SalaryID = F2.FormInfoID INNER JOIN
                         Pay.FormTypes AS T ON F2.FormType = T.FormType
WHERE        (F.FormType = 55) AND (F.PrvInfoID = @PrvInfoID) AND (F.InfoID = 3) AND (T.SalaryEffectKind = 1)) THEN   price ELSE 0 END 
-
			CASE WHEN salaryid IN
				(SELECT        S.SalaryID
FROM            Pay.FormsInfo F INNER JOIN
                         Pay.SalaryRange S ON F.FormInfoID = S.FormInfoID INNER JOIN
                         Pay.FormsInfo AS F2 ON S.SalaryID = F2.FormInfoID INNER JOIN
                         Pay.FormTypes AS T ON F2.FormType = T.FormType
WHERE        (f.FormType = 55) AND (f.PrvInfoID = @PrvInfoID) AND (f.InfoID = 3) AND (T.SalaryEffectKind = 2)) THEN   price ELSE 0 END 


AS ContainPayAndWage,


			CASE WHEN salaryid IN
				(SELECT     s.SalaryID
FROM            Pay.FormsInfo F INNER JOIN
                         Pay.SalaryRange S ON F.FormInfoID = S.FormInfoID INNER JOIN
                         Pay.FormsInfo AS F2 ON S.SalaryID = F2.FormInfoID INNER JOIN
                         Pay.FormTypes AS T ON F2.FormType = T.FormType
				WHERE     (f.FormType = 55) AND (f.PrvInfoID = @PrvInfoID ) AND (f.InfoID = 4)AND (T.SalaryEffectKind = 1)) THEN price ELSE 0 END
--				-
--CASE WHEN salaryid IN
--				(SELECT     s.SalaryID
--FROM            Pay.FormsInfo F INNER JOIN
--                         Pay.SalaryRange S ON F.FormInfoID = S.FormInfoID INNER JOIN
--                         Pay.FormsInfo AS F2 ON S.SalaryID = F2.FormInfoID INNER JOIN
--                         Pay.FormTypes AS T ON F2.FormType = T.FormType
--				WHERE     (f.FormType = 55) AND (f.PrvInfoID = @PrvInfoID ) AND (f.InfoID = 4)AND (T.SalaryEffectKind = 2)) THEN price ELSE 0 END
				
				
				AS PayAndWage ,
			CASE WHEN salaryid IN
				(SELECT BenCode	FROM Pay.Config) THEN price ELSE 0 END AS BenPrice
FROM        (
				SELECT PersonelNo ,  salaryid , SUM(price) as price   
					FROM Pay.RetardFixedCalculated(@FirstArchiveId ,@LastArchiveId , @MounthRetard ,@LabelIDFrom  ,@LabelIDTo ,@YearIDFrom  ,@YearIDTo   )a
				WHERE   (PersonelNo BETWEEN @PersonelNoFROM AND @PersonelNoTo ) AND mounth = @Mounth  
				group by  PersonelNo ,  salaryid 
				----
				UNION all 
				----
				SELECT PersonelNo , forminfoid , EmployerAmount + EmployeeAmount   
				FROM Pay.PersonelDecExt
				WHERE   (PersonelNo BETWEEN @PersonelNoFROM AND @PersonelNoTo ) 
						AND abs(substring(PersonelDecExt.EndDate,6,2)) =@Mounth
						AND (FormInfoID = (select   min(FormInfoID) from  Pay.FormsInfo where FormType = 59 ))  
     			---- Abedi Add
 				UNION ALL 
				SELECT Pony.PersonelNo, Pay.FormsInfo.FormInfoID, SUM(Pony.UselessLeavePay) AS UselessLeavePay
                 FROM  Pony CROSS JOIN  Pay.FormsInfo
                 WHERE  (Pony.PersonelNo BETWEEN @PersonelNoFROM AND @PersonelNoTo ) 
					AND (ABS(SUBSTRING(Pony.AdjustDate,6,2)) = @Mounth ) --(LEFT(Pony.AdjustDate, 7) = @YearMounth) 
                    AND (FormsInfo.FormType = 16) AND (FormsInfo.InfoID = 1)
                 GROUP BY Pony.PersonelNo, Pay.FormsInfo.FormInfoID, Pay.FormsInfo.FormType, Pay.FormsInfo.InfoID
     			---- Abedi Add

			) AS  FixedCalculated
)sqlTxt
GROUP BY PersonelNo
)



GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
--SET ANSI_NULLS OFF 
GO




CREATE FUNCTION Pay.InsouranceInfo4RptFixed   (  @Mounth int =1,@FirstArchiveId int=1 ,@LastArchiveId int=9999 ,
	 @PersonelNoFROM int=0,@PersonelNoTo int=99999999 , @MounthRetard int = 0,@LabelIDFrom  int=0,@LabelIDTo  int=0 ,@YearIDFrom  int=1402,@YearIDTo  int=1402)  
RETURNS  table  AS 
Return  (
SELECT     FixedCalculated.PersonelNO,
	         SUM(CASE ShowlistKind WHEN 1 THEN price ELSE 0 END) AS SumWage,
             SUM(CASE ShowlistKind WHEN 3 THEN price ELSE 0 END) AS AidContainInsourance,
	       --SUM(CASE WHEN (ShowlistKind = 2  AND CalCulateKind = 10) THEN price ELSE 0 END) AS InsouranceEmploye,
             SUM(CASE WHEN (((ShowlistKind = 2)OR((ShowlistKind = 0)OR(FormTypes.SalaryEffectKind=3)))  AND (CalCulateKind = 10)) THEN price ELSE 0 END) AS InsouranceEmploye,
	         SUM(CASE WHEN (ShowlistKind = 4  AND CalCulateKind = 10) THEN price ELSE 0 END) AS InsouranceEmployer,			
	         SUM(CASE WHEN (ShowlistKind = 14 AND CalCulateKind = 10) THEN price ELSE 0 END) AS InsouranceInaction,
             SUM(CASE WHEN (ShowlistKind = 15 AND CalCulateKind = 10) THEN price ELSE 0 END) AS InsouranceHardWork,
             SUM(CASE WHEN (ShowlistKind = 11 AND bedbes = 0 AND CalCulateKind = 12 ) THEN price ELSE 0 END) AS ContainTax,
	         SUM(CASE WHEN (ShowlistKind = 11 AND bedbes = 2) THEN price ELSE 0 END) AS TaxValue,
	         SUM(CASE ShowlistKind WHEN 2 THEN price ELSE 0 END) + SUM(CASE WHEN (ShowlistKind = 11 AND bedbes = 2) THEN price ELSE 0 END) AS SumDec,
             SUM(CASE ShowlistKind WHEN 1 THEN price ELSE 0 END) - (SUM(CASE ShowlistKind WHEN 2 THEN price ELSE 0 END) + SUM(CASE WHEN (ShowlistKind = 11 AND bedbes = 2) THEN price ELSE 0 END)) AS PayableSalary

--FROM         Pay.RetardFixedCalculated( @FirstArchiveId,@LastArchiveId )as FixedCalculated
FROM            Pay.FormTypes INNER JOIN
                          Pay.FormsInfo ON Pay.FormTypes.FormType = Pay.FormsInfo.FormType INNER JOIN
                         Pay.RetardFixedCalculated(@FirstArchiveId, @LastArchiveId , @MounthRetard,@LabelIDFrom  ,@LabelIDTo ,@YearIDFrom ,@YearIDTo    ) AS FixedCalculated ON Pay.FormsInfo.FormInfoID = FixedCalculated.SalaryID
WHERE    (PersonelNo BETWEEN @PersonelNoFROM AND @PersonelNoTo ) AND 
				    (FixedCalculated.Mounth = @Mounth) --AND archiveid = @ArchiveId
GROUP BY FixedCalculated.PersonelNO
)



GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

--------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------
SET QUOTED_IDENTIFIER ON 
GO
--SET ANSI_NULLS OFF 
GO
CREATE FUNCTION Pay.InsouranceSanavat  (@YearMounth varchar(7) ='96/07' , @PersonelNoFROM int=0,@PersonelNoTo int=99999999,	 @Mounth int =7, @PrvInfoID int = 0 )  
RETURNS  @retFindReports TABLE   (	PersonelNo int NULL, sanavatAmount money null ,EydiAmount  money null, SanavatOnlyAmount  money null)  AS 
BEGIN
 ---  جمع دستمزد و مزاياي ماهانه مشمول و غير مشمول  برای عیدی و سنوات در لیست بیمه
DECLARE @Eydi int  
IF EXISTS(SELECT  FormsInfo_Salary.InfoID
FROM            Pay.SalaryRange INNER JOIN
                          Pay.FormsInfo ON Pay.SalaryRange.FormInfoID = Pay.FormsInfo.FormInfoID INNER JOIN
                          Pay.FormsInfo AS FormsInfo_Salary ON Pay.SalaryRange.SalaryID = FormsInfo_Salary.FormInfoID
WHERE  (FormsInfo.FormType = 55) AND (FormsInfo.InfoID = 4) AND (SalaryRange.Kind = 0) 
 AND (FormsInfo_Salary.FormType = 47) AND (FormsInfo.PrvInfoID = @PrvInfoID)
 AND (FormsInfo_Salary.InfoID = 1)) --عیدی  
 SET @Eydi=1
 ELSE SET @Eydi=0


DECLARE @Sanavat int  

IF EXISTS(SELECT  FormsInfo_Salary.InfoID
FROM            Pay.SalaryRange INNER JOIN
                          Pay.FormsInfo ON Pay.SalaryRange.FormInfoID = Pay.FormsInfo.FormInfoID INNER JOIN
                          Pay.FormsInfo AS FormsInfo_Salary ON Pay.SalaryRange.SalaryID = FormsInfo_Salary.FormInfoID
WHERE (FormsInfo.FormType = 55) AND (FormsInfo.InfoID = 4) AND (SalaryRange.Kind = 0) 
  AND (FormsInfo_Salary.FormType = 47) AND (FormsInfo.PrvInfoID = @PrvInfoID)
  AND (FormsInfo_Salary.InfoID = 2)) -- سنوات
 SET @Sanavat=1
 ELSE SET @Sanavat=0



INSERT INTO @retFindReports
SELECT     PersonelNo, 
	  sum( case when FormsInfo_sanavat.FormType = 59 then  @Eydi*ISNULL(EmployeeAmount,0)+@Sanavat*ISNULL(EmployerAmount,0) else 0 end ) AS sanavatAmount 
	  ,SUM(EmployeeAmount) as EydiAmount,SUM(EmployerAmount) as SanavatOnlyAmount
	  --,sum( PaymentLoan)*10 AS ContainTax  
FROM            Pay.PersonelDecExt PersonelDecExt_1 INNER JOIN
                          Pay.FormsInfo FormsInfo_sanavat ON PersonelDecExt_1.FormInfoID = FormsInfo_sanavat.FormInfoID 
       WHERE     (LEFT(EndDate, 7) = @YearMounth)  AND 
				((FormsInfo_sanavat.FormType IN (59)) or 
				(FormsInfo_sanavat.FormType IN (111) and FormsInfo_sanavat.infoid >10  )  )and 
	   	case when (/*@Mounth = 12 and*/ (select EidiDisplayedSeparatelyOnTaxList from Pay.Config )in(1,2) ) then 1 else 0 end =1
		AND(PersonelNo BETWEEN @PersonelNoFROM AND @PersonelNoTo ) 
  
       Group by PersonelNo
       

     RETURN
END


GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
--------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------



GO
SET QUOTED_IDENTIFIER OFF 
GO
--SET ANSI_NULLS OFF 
GO
CREATE FUNCTION Pay.[InsouranceHardWork]   (@InterdictType int=0,@Mounth int =8,@Year int=84,
	@YearMounth varchar(7) ='81/01' ,@PersonelNoFROM int=0,@PersonelNoTo int=9999999  ,@ArchiveID int=00 )  
RETURNS  table  AS 
Return  (
---------------------------------------------------------------------------------------------شروع محاسبه سختي کار   -------------------------------------------------------------------------------
SELECT  InsouranceUpWithPerson.insuranceID,InsouranceUpWithPerson.FormInfoID,ContainInsouranceWithPerson.PersonelNo,
ContainInsouranceWithPerson.ProjectID,ContainInsouranceWithPerson.OfficeCode,ContainInsouranceWithPerson.JobCode,
InsouranceUpWithPerson.FormInfoID AS SalaryID,ContainInsouranceWithPerson.Mounth,ContainInsouranceWithPerson.ProcCode 
,

SUM( round ( CASE 
WHEN InsouranceUpWithPerson.insuranceUpPerson < ContainInsourance_Person.AllContainInsourance
then (ContainInsouranceWithPerson.ContainInsourance *InsouranceUpWithPerson.insuranceUpPerson ) / ContainInsourance_Person.AllContainInsourance
     * InsouranceUpWithPerson.HardShipPercent /100
ELSE ContainInsouranceWithPerson.ContainInsourance    * InsouranceUpWithPerson.HardShipPercent /100 END,0) )
 AS  Price  

,1 AS Bedbes,10 AS CalCulateKind,

	CASE InsouranceUpWithPerson.TopicCodeKind 
		WHEN 0 THEN 0 
		WHEN 1 THEN Interdict.AccTopicCode
		WHEN 2 THEN InsouranceUpWithPerson.ExpAccTopicCode
		WHEN 3 THEN FormsInfo_Project.AccTopicCode
		WHEN 4 THEN FormsInfo_Office.AccTopicCode
		WHEN 5 THEN Interdict.MasterAccTopicCode
		WHEN 6 THEN InsouranceUpWithPerson.PersonAccTopicCode
		WHEN 8 THEN FormsInfo_Proc.AccTopicCode
		WHEN 11 THEN ltrim(str(FormsInfo_Office.AccTopicCode)) +''+ ltrim(str(InsouranceUpWithPerson.ExpAccTopicCode))			
	ELSE 0 END AS AccTopicCode,
	CASE InsouranceUpWithPerson.DetailCodeKind 
		WHEN 0 THEN 0 
		WHEN 1 THEN Interdict.AccDetailCode
		WHEN 2 THEN InsouranceUpWithPerson.ExpAccDetailCode
		WHEN 3 THEN FormsInfo_Project.AccDetailCode
		WHEN 4 THEN FormsInfo_Office.AccDetailCode
		WHEN 5 THEN Interdict.MasterAccDetailCode
		WHEN 6 THEN InsouranceUpWithPerson.PersonAccDetailCode  
		WHEN 8 THEN FormsInfo_Proc.AccDetailCode
    	WHEN 12  THEN CASE WHEN InsouranceUpWithPerson.AccDetailCode =-1 THEN FormsInfo_Office.AccDetailCode ELSE InsouranceUpWithPerson.AccDetailCode  END 
	ELSE 0 END AS AccDetailCode,
	CASE InsouranceUpWithPerson.CTopicCodeKind 
		WHEN 0 THEN 0 
		WHEN 1 THEN Interdict.AccCTopicCode
		WHEN 2 THEN InsouranceUpWithPerson.ExpAccCTopicCode
		WHEN 3 THEN FormsInfo_Project.AccCTopicCode
		WHEN 4 THEN FormsInfo_Office.AccCTopicCode
		WHEN 5 THEN Interdict.MasterAccCTopicCode
		WHEN 6 THEN InsouranceUpWithPerson.PersonAccCTopicCode
		WHEN 8 THEN FormsInfo_Proc.AccCTopicCode
	ELSE 0 END AS AccCTopicCode,
	CASE InsouranceUpWithPerson.CTopicCode2Kind 
		WHEN 0 THEN 0 
		WHEN 1 THEN Interdict.AccCTopicCode2
		WHEN 2 THEN InsouranceUpWithPerson.ExpAccCTopicCode2
		WHEN 3 THEN FormsInfo_Project.AccCTopicCode2
		WHEN 4 THEN FormsInfo_Office.AccCTopicCode2
		WHEN 5 THEN Interdict.MasterAccCTopicCode2
		WHEN 6 THEN InsouranceUpWithPerson.PersonAccCTopicCode2
		WHEN 8 THEN FormsInfo_Proc.AccCTopicCode2
    	WHEN 11 THEN StandardTimes.AccCTopicCode2
    	--WHEN 12 THEN st.AccCTopicCode2
	ELSE 0 END AS AccCTopicCode2,
	CASE InsouranceUpWithPerson.CTopicCode3Kind 
		WHEN 0 THEN 0 
		WHEN 1 THEN Interdict.AccCTopicCode3
		WHEN 2 THEN InsouranceUpWithPerson.ExpAccCTopicCode3
		WHEN 3 THEN FormsInfo_Project.AccCTopicCode3
		WHEN 4 THEN FormsInfo_Office.AccCTopicCode3
		WHEN 5 THEN Interdict.MasterAccCTopicCode3
		WHEN 6 THEN InsouranceUpWithPerson.PersonAccCTopicCode3
		WHEN 8 THEN FormsInfo_Proc.AccCTopicCode3
     	WHEN 10 THEN StandardTimes.AccCTopicCode3
ELSE 0 END AS AccCTopicCode3

	,15 AS ShowListKind 


FROM         InsouranceUpWithPerson(@Mounth,@PersonelNoFrom,@PersonelNoTo , @YearMounth ) InsouranceUpWithPerson INNER JOIN
                      ContainInsouranceWithPerson(@Mounth,@Year,@YearMounth,@InterdictType,@PersonelNoFrom,@PersonelNoTo  , @ArchiveID) ContainInsouranceWithPerson ON 
                      InsouranceUpWithPerson.PersonelNo = ContainInsouranceWithPerson.PersonelNO INNER JOIN
                          (SELECT     PersonelNo,AccTopicCode,AccDetailCode,AccCTopicCode,AccCTopicCode2,AccCTopicCode3,MasterAccTopicCode,MasterAccDetailCode,
                                                   MasterAccCTopicCode,MasterAccCTopicCode2,MasterAccCTopicCode3
                             FROM         Pay.InterdictForUse( @YearMounth,1,2,@PersonelNoFrom,@PersonelNoTo ,1 ) InterdictForUse
                             GROUP BY PersonelNo,AccTopicCode,AccDetailCode,AccCTopicCode,AccCTopicCode2,AccCTopicCode3,MasterAccTopicCode,MasterAccDetailCode,
                                                   MasterAccCTopicCode,MasterAccCTopicCode2,MasterAccCTopicCode3  ) interdict ON 
                      ContainInsouranceWithPerson.PersonelNO = interdict.PersonelNo INNER JOIN
                      ContainInsourance_Person(@Mounth,@Year,@YearMounth,@InterdictType,@PersonelNoFrom,@PersonelNoTo  , @ArchiveID ) ContainInsourance_Person ON 
                      ContainInsouranceWithPerson.PersonelNO = ContainInsourance_Person.PersonelNO LEFT OUTER JOIN
                       Pay.FormsInfo FormsInfo_Proc ON ContainInsouranceWithPerson.ProcCode = FormsInfo_Proc.FormInfoID LEFT OUTER JOIN
                       Pay.FormsInfo FormsInfo_Project ON ContainInsouranceWithPerson.ProjectID = FormsInfo_Project.FormInfoID LEFT OUTER JOIN
                       Pay.FormsInfo FormsInfo_Office ON ContainInsouranceWithPerson.OfficeCode = FormsInfo_Office.FormInfoID INNER JOIN
                      Pay.StandardTimes ON @Mounth = Pay.StandardTimes.InfoID 

GROUP BY InsouranceUpWithPerson.insuranceID,InsouranceUpWithPerson.FormInfoID,ContainInsouranceWithPerson.PersonelNO,
                      ContainInsouranceWithPerson.ProjectID,ContainInsouranceWithPerson.OfficeCode,ContainInsouranceWithPerson.JobCode,
                      ContainInsouranceWithPerson.Mounth,ContainInsouranceWithPerson.ProcCode,

	CASE InsouranceUpWithPerson.TopicCodeKind 
		WHEN 0 THEN 0 
		WHEN 1 THEN Interdict.AccTopicCode
		WHEN 2 THEN InsouranceUpWithPerson.ExpAccTopicCode
		WHEN 3 THEN FormsInfo_Project.AccTopicCode
		WHEN 4 THEN FormsInfo_Office.AccTopicCode
		WHEN 5 THEN Interdict.MasterAccTopicCode
		WHEN 6 THEN InsouranceUpWithPerson.PersonAccTopicCode
		WHEN 8 THEN FormsInfo_Proc.AccTopicCode
		WHEN 11 THEN ltrim(str(FormsInfo_Office.AccTopicCode)) +''+ ltrim(str(InsouranceUpWithPerson.ExpAccTopicCode))		
	ELSE 0 END,
	CASE InsouranceUpWithPerson.DetailCodeKind 
		WHEN 0 THEN 0 
		WHEN 1 THEN Interdict.AccDetailCode
		WHEN 2 THEN InsouranceUpWithPerson.ExpAccDetailCode
		WHEN 3 THEN FormsInfo_Project.AccDetailCode
		WHEN 4 THEN FormsInfo_Office.AccDetailCode
		WHEN 5 THEN Interdict.MasterAccDetailCode
		WHEN 6 THEN InsouranceUpWithPerson.PersonAccDetailCode  
		WHEN 8 THEN FormsInfo_Proc.AccDetailCode
    	WHEN 12  THEN CASE WHEN InsouranceUpWithPerson.AccDetailCode =-1 THEN FormsInfo_Office.AccDetailCode ELSE InsouranceUpWithPerson.AccDetailCode  END 
	ELSE 0 END ,
	CASE InsouranceUpWithPerson.CTopicCodeKind 
		WHEN 0 THEN 0 
		WHEN 1 THEN Interdict.AccCTopicCode
		WHEN 2 THEN InsouranceUpWithPerson.ExpAccCTopicCode
		WHEN 3 THEN FormsInfo_Project.AccCTopicCode
		WHEN 4 THEN FormsInfo_Office.AccCTopicCode
		WHEN 5 THEN Interdict.MasterAccCTopicCode
		WHEN 6 THEN InsouranceUpWithPerson.PersonAccCTopicCode
		WHEN 8 THEN FormsInfo_Proc.AccCTopicCode
	ELSE 0 END ,
	CASE InsouranceUpWithPerson.CTopicCode2Kind 
		WHEN 0 THEN 0 
		WHEN 1 THEN Interdict.AccCTopicCode2
		WHEN 2 THEN InsouranceUpWithPerson.ExpAccCTopicCode2
		WHEN 3 THEN FormsInfo_Project.AccCTopicCode2
		WHEN 4 THEN FormsInfo_Office.AccCTopicCode2
		WHEN 5 THEN Interdict.MasterAccCTopicCode2
		WHEN 6 THEN InsouranceUpWithPerson.PersonAccCTopicCode2
		WHEN 8 THEN FormsInfo_Proc.AccCTopicCode2
    	WHEN 11 THEN StandardTimes.AccCTopicCode2
    	--WHEN 12 THEN st.AccCTopicCode2
	ELSE 0 END,
	CASE InsouranceUpWithPerson.CTopicCode3Kind 
		WHEN 0 THEN 0 
		WHEN 1 THEN Interdict.AccCTopicCode3
		WHEN 2 THEN InsouranceUpWithPerson.ExpAccCTopicCode3
		WHEN 3 THEN FormsInfo_Project.AccCTopicCode3
		WHEN 4 THEN FormsInfo_Office.AccCTopicCode3
		WHEN 5 THEN Interdict.MasterAccCTopicCode3
		WHEN 6 THEN InsouranceUpWithPerson.PersonAccCTopicCode3
		WHEN 8 THEN FormsInfo_Proc.AccCTopicCode3
    	WHEN 10 THEN StandardTimes.AccCTopicCode3
	ELSE 0 END 

---------------------------------------------------------------------------------------------------پايان محاسبه سختي کار- حق بيمه   ---------------------------------------------------------------------------------
)

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE PROCEDURE Pay.RecoveryPersonelArchives @ArchiveID int,@PersonelNo int
as
DECLARE @FormInfoID int
set @FormInfoID=(SELECT TOP 1 FormInfoID FROM Pay.PersonelArchives
                 GROUP BY FormInfoID ORDER BY COUNT(FormInfoID) DESC)

if (SELECT count(ArchiveID)  FROM Pay.PersonelArchives WHERE     (ArchiveID = @ArchiveID))=0
begin
  INSERT INTO Pay.PersonelArchives
                      (ArchiveID,PersonelNo,FormInfoID)
  VALUES     (@ArchiveID,@PersonelNo,@FormInfoID)
end

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE VIEW Pay.InterdictsInterdicEndDate
AS
SELECT     Pay.PersonelInfo.PersonelNo,PersonelInfo.name_L1,PersonelInfo.lastName_L1,Pay.Interdicts.InterdictID,Pay.Interdicts.InterdictNo,
                      Pay.Interdicts.InterdictDate,Pay.Interdicts.InterdicStartDate,Pay.Interdicts.InterdicEndDate
FROM         Pay.PersonelInfo 
INNER JOIN  Pay.FormsInfo FormsInfoPersonelState ON Pay.PersonelInfo.PersonelState = FormsInfoPersonelState.FormInfoID
 INNER JOIN    Pay.Interdicts ON Pay.PersonelInfo.PersonelNo = Pay.Interdicts.PersonelNo
WHERE     (FormsInfoPersonelState.InfoID < 100) AND (Pay.Interdicts.State < 50) AND (Pay.Interdicts.InterdicType = 0)

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
SET QUOTED_IDENTIFIER ON 
GO
--SET ANSI_NULLS OFF 
GO
CREATE FUNCTION Pay.FormsInfo_4Type  (@FormType AS int =[3] ) 
RETURNS table AS  
return
(SELECT     *
FROM         Pay.FormsInfo 
WHERE     (FormType = @FormType))

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
--------------------------------------------------------------------------------------------------------------------------------------------

GO


SET QUOTED_IDENTIFIER ON 
GO
--SET ANSI_NULLS OFF 
GO
CREATE PROCEDURE Pay.ExportSpecialFunction ( @Month int=1 ,@PersonelNoFROM int=0,@PersonelNoTo int=99999999 
                , @YearID int=90 , @Years int=90   )    AS 

if exists (SELECT * FROM sysobjects where id = object_id(N'[pay].[Cnv_Function]') and OBJECTPROPERTY(id,N'IsUserTable') = 1)
DROP TABLE [pay].[Cnv_Function]
-------------------------------------      ايجاد يك جدول اطلاعاتي رابط      ----------------------------------

SELECT    IDENTITY(int,1,1) AS New_ID,
          cast(SUBSTRING(FunctionDay.FunDate,6,2)as int) AS [Month],FunctionDayItems.PersonelNo,
	   FunctionDay.OfficeCode,FunctionDayItems.WorkID,FunctionDayItems.ProcCode,
	   SUM(CASE WHEN (FunctionDayItems.PeresentID not IN (3,5,4))then 1 ELSE 0 END ) AS AllDay,
	   SUM(CASE WHEN (FunctionDayItems.PeresentID not IN (3,5,4))then FunctionDayItems.FunTime ELSE 0 END) AS TTime,
	   SUM(FunctionDayItems.ExtTime ) AS ExtraTime,

	   SUM(CASE WHEN (FunctionDayItems.ShiftNo =1 ) THEN 1 ELSE 0 END ) AS ShiftDay1,
	   SUM(CASE WHEN (FunctionDayItems.ShiftNo =2 ) THEN 1 ELSE 0 END ) AS ShiftDay2,
	   SUM(CASE WHEN (FunctionDayItems.ShiftNo =3 ) THEN 1 ELSE 0 END ) AS ShiftDay3,
	   SUM(CASE WHEN (FunctionDayItems.ShiftNo =1 ) THEN FunctionDayItems.FunTime ELSE 0 END) AS ShiftTime,
	   SUM(CASE WHEN (FunctionDayItems.ShiftNo =1 ) THEN FunctionDayItems.ExtTime ELSE 0 END) AS ShiftExtraTime,
	   SUM(CASE WHEN (FunctionDayItems.PeresentID not in (2,3,12,5,8,4  , 11 )) THEN 1 ELSE 0 END ) AS FoodDay,
	   SUM(CASE WHEN (FunctionDayItems.PeresentID not in (2,3,12,5,8,4  , 11 )) THEN 1 ELSE 0 END ) AS TaradodDay,

	   SUM(CASE WHEN (FunctionDayItems.PeresentID =7 ) THEN 1 ELSE 0 END ) AS HolidayDay,
	   SUM(CASE WHEN (FunctionDayItems.PeresentID =7 ) THEN FunctionDayItems.FunTime ELSE 0 END) AS HolidayTime,
	   SUM(CASE WHEN (FunctionDayItems.PeresentID =7 ) THEN FunctionDayItems.ExtTime ELSE 0 END) AS HolidayExtraTime,

	   SUM(CASE WHEN (FunctionDayItems.PeresentID =6 ) THEN 1 ELSE 0 END ) AS MamoriatDay,
	   SUM(CASE WHEN (FunctionDayItems.PeresentID =6 ) THEN FunctionDayItems.FunTime ELSE 0 END) AS MamoriatTime,
	   SUM(CASE WHEN (FunctionDayItems.PeresentID =6 ) THEN FunctionDayItems.ExtTime ELSE 0 END) AS MamoriatExtraTime,

	   SUM(CASE WHEN (FunctionDayItems.PeresentID =13 ) THEN 1 ELSE 0 END ) AS outMamoriatDay,
	   SUM(CASE WHEN (FunctionDayItems.PeresentID =13 ) THEN FunctionDayItems.FunTime ELSE 0 END) AS outMamoriatTime,
	   SUM(CASE WHEN (FunctionDayItems.PeresentID =13 ) THEN FunctionDayItems.ExtTime ELSE 0 END) AS outMamoriatExtraTime,

	   SUM(CASE WHEN (FunctionDayItems.PeresentID =5 ) THEN 1 ELSE 0 END ) AS AbsentDay,
	   SUM(CASE WHEN (FunctionDayItems.PeresentID =5 ) THEN FunctionDayItems.FunTime ELSE 0 END) AS AbsentTime,
	   SUM(CASE WHEN (FunctionDayItems.PeresentID =5 ) THEN FunctionDayItems.ExtTime ELSE 0 END) AS AbsentExtraTime,
	   SUM(CASE WHEN (FunctionDayItems.PeresentID =2 ) THEN 1 ELSE 0 END ) AS MorakhasiDay,
	   SUM(CASE WHEN (FunctionDayItems.PeresentID =3 ) THEN 1 ELSE 0 END ) AS MorakhasiDay_WithOutWage,
	   SUM(CASE WHEN (FunctionDayItems.PeresentID =4 ) THEN 1 ELSE 0 END ) AS BimariBiHoGOogDay,
	   SUM(CASE WHEN (FunctionDayItems.PeresentID =11 ) THEN 1 ELSE 0 END ) AS Off_Day,
	   SUM(CASE WHEN (FunctionDayItems.PeresentID =4 ) THEN 1 ELSE 0 END ) AS Sick_Day,
	   COUNT(FunctionDayItems.FunItemID) AS ToTalDay,
	   SUM(FunctionDayItems.FunTime) AS TotalTime,
           SUM(FunctionDayItems.ExtTime) AS TotalExtraTime
		   ,FunctionDayItems.AccCTopicCode3
INTO Pay.Cnv_Function

FROM         Pay.FunctionDayItems INNER JOIN
                      Pay.FunctionDay ON FunctionDayItems.FunID = FunctionDay.FunID
Where    cast(SUBSTRING(FunctionDay.FunDate,6,2)as int)=@Month AND
	( FunctionDayItems.PersonelNo between  @PersonelNoFROM and @PersonelNoTo)

GROUP BY cast(SUBSTRING(FunctionDay.FunDate,6,2)as int),FunctionDayItems.PersonelNo,FunctionDay.OfficeCode,FunctionDayItems.WorkID,
                      FunctionDayItems.ProcCode--,FunctionDayItems.ShiftNo
					  ,FunctionDayItems.AccCTopicCode3
ORDER BY cast(SUBSTRING(FunctionDay.FunDate,6,2)as int),FunctionDayItems.PersonelNo


---------------------------------------------------------------------------------------------------------------حذف اطلاعات كاركرد در محدوده مورد نظر
DELETE FROM Pay.Functions
WHERE    (Mounth=@Month) AND  (PersonelNo between  @PersonelNoFROM and @PersonelNoTo)
        AND (YearID=@YearID) AND(Years=@Years)   

--------------------
declare @FunctionID int
set  @FunctionID=(SELECT  ISNULL(MAX(FunctionID),0) AS Expr1 FROM  Pay.Functions )
---------------------
INSERT INTO Pay.Functions
                      (OfficeCode,ProcCode,ProjectID,CTopic3,FunctionDay,FunctionTime,
		      FunctionID,FormInfoID,JobCode,PersonelNo,Mounth,ProjectRow,SickDay ,YearID ,Years )
SELECT                Cnv_Function.OfficeCode,ISNULL(procce.FormInfoID,804712) AS ProcID,
	              ISNULL(Project.FormInfoID,804713) AS ProjID,Cnv_Function.AccCTopicCode3 ,   -- 0804711  AS Earth ->> AccCTopicCode3
                      Cnv_Function.AllDay,Cnv_Function.TTime,
                      Cnv_Function.NEw_ID + @FunctionID,0 AS Expr1,
		      0 AS Expr2,Cnv_Function.PersonelNo,Cnv_Function.[Month],
                      Project.InfoID,Cnv_Function.Sick_Day ,@YearID ,@Years 
FROM                  Pay.Cnv_Function LEFT OUTER JOIN
                      Pay.FormsInfo_4Type((select FormInfo4Function from FormTypes where formtype=28)) Project ON Cnv_Function.WorkID = Project.InfoID LEFT OUTER JOIN
                      Pay.FormsInfo_4Type(67) procce ON Cnv_Function.ProcCode = procce.InfoID
Where    Cnv_Function.[Month]=@Month AND
	( Cnv_Function.PersonelNo between  @PersonelNoFROM and @PersonelNoTo)

------------------------------------  فيلد كليد بصورت سريالي ثبت شود   ---------------------------------------------

INSERT INTO Pay.FunctionsItems
                      (FunctionID,SalaryID,FHours,FDaily)
SELECT     NEw_ID+@FunctionID,330 AS Expr1,ExtraTime,0 AS Expr2
FROM         Pay.Cnv_Function
WHERE     (ExtraTime > 0) And 
	    Cnv_Function.[Month]=@Month AND
	( Cnv_Function.PersonelNo between  @PersonelNoFROM and @PersonelNoTo)

INSERT INTO FunctionsItems
                      (FunctionID,SalaryID,FHours,FDaily)
SELECT     NEw_ID+@FunctionID,329 AS Expr1,0 AS ShiftTime,ShiftDay1 AS Expr2
FROM         Pay.Cnv_Function
WHERE     ((ShiftTime > 0 OR ShiftDay1  >0 ))And
	    Cnv_Function.[Month]=@Month AND
	( Cnv_Function.PersonelNo between  @PersonelNoFROM and @PersonelNoTo)


INSERT INTO FunctionsItems
                      (FunctionID,SalaryID,FHours,FDaily)
SELECT     NEw_ID+@FunctionID,805525 AS Expr1,0 AS ShiftTime,ShiftDay2 AS Expr2
FROM         Pay.Cnv_Function
WHERE     ((ShiftTime > 0 OR ShiftDay2  >0 ))And
	    Cnv_Function.[Month]=@Month AND
	( Cnv_Function.PersonelNo between  @PersonelNoFROM and @PersonelNoTo)

INSERT INTO FunctionsItems
                      (FunctionID,SalaryID,FHours,FDaily)
SELECT     NEw_ID+@FunctionID,805544 AS Expr1,0 AS ShiftTime,ShiftDay3 AS Expr2
FROM         Pay.Cnv_Function
WHERE     ((ShiftTime > 0 OR ShiftDay3  >0 ))And
	    Cnv_Function.[Month]=@Month AND
	( Cnv_Function.PersonelNo between  @PersonelNoFROM and @PersonelNoTo)


	

	

--INSERT INTO FunctionsItems
--                      (FunctionID,SalaryID,FHours,FDaily)
--SELECT     NEw_ID+@FunctionID,328 AS Expr1,0 AS Expr3,MamoriatDay AS Expr2
--FROM         Pay.Cnv_Function
--WHERE     ((MamoriatDay > 0) OR
--                      (MamoriatTime > 0)) And 
--          Cnv_Function.[Month]=@Month AND
--	 ( Cnv_Function.PersonelNo between  @PersonelNoFROM and @PersonelNoTo)

INSERT INTO FunctionsItems
                      (FunctionID,SalaryID,FHours,FDaily)
SELECT     NEw_ID+@FunctionID,327 AS Expr1,0 AS Expr3,HolidayDay AS Expr2
FROM         Pay.Cnv_Function
WHERE     ((HolidayDay > 0) OR  (HolidayTime > 0)) AND
	   Cnv_Function.[Month]=@Month AND
	( Cnv_Function.PersonelNo between  @PersonelNoFROM and @PersonelNoTo)

INSERT INTO FunctionsItems
                      (FunctionID,SalaryID,FHours,FDaily)
SELECT     NEw_ID+@FunctionID,317 AS Expr1,0 AS Expr3,FoodDay AS Expr2
FROM         Pay.Cnv_Function
WHERE     (FoodDay > 0) AND
	    Cnv_Function.[Month]=@Month AND
	( Cnv_Function.PersonelNo between  @PersonelNoFROM and @PersonelNoTo) and 
( Cnv_Function.PersonelNo In ( SELECT     Interdicts.PersonelNo
FROM         Pay.Interdicts INNER JOIN
                      Pay.InterdictItems ON Interdicts.InterdictID = InterdictItems.InterdictID
WHERE     (InterdictItems.SalaryID = 317)  and state <50   ))


INSERT INTO Pay.FunctionsItems
                      (FunctionID,SalaryID,FHours,FDaily)
SELECT     NEw_ID+@FunctionID,353 AS Expr1,0 AS Expr3,TaradodDay AS Expr2
FROM         Pay.Cnv_Function
WHERE     (TaradodDay > 0) AND
	    Cnv_Function.[Month]=@Month AND
	( Cnv_Function.PersonelNo between  @PersonelNoFROM and @PersonelNoTo) and 
( Cnv_Function.PersonelNo In ( SELECT     Interdicts.PersonelNo
FROM         Pay.Interdicts INNER JOIN
                      Pay.InterdictItems ON Interdicts.InterdictID = InterdictItems.InterdictID
WHERE     (InterdictItems.SalaryID = 353)  and state <50 ))



INSERT INTO Pay.FunctionsItems
                      (FunctionID,SalaryID,FHours,FDaily)
SELECT     NEw_ID+@FunctionID,804635 AS Expr1,0 AS Expr3,AbsentDay AS Expr2
FROM         Pay.Cnv_Function
WHERE     ((AbsentDay > 0) OR  (AbsentTime  > 0)) AND
	   Cnv_Function.[Month]=@Month AND
	( Cnv_Function.PersonelNo between  @PersonelNoFROM and @PersonelNoTo)


INSERT INTO Pay.FunctionsItems
                      (FunctionID,SalaryID,FHours,FDaily)
SELECT     NEw_ID+@FunctionID,804738 AS Expr1,0 AS Expr3,Off_Day AS Expr2
FROM         Pay.Cnv_Function
WHERE     ((Off_Day > 0) ) AND
	   Cnv_Function.[Month]=@Month AND
	( Cnv_Function.PersonelNo between  @PersonelNoFROM and @PersonelNoTo)


INSERT INTO Pay.FunctionsItems
                      (FunctionID,SalaryID,FHours,FDaily)
SELECT     NEw_ID+@FunctionID,804632 AS Expr1,0 AS Expr3,MorakhasiDay AS Expr2
FROM         Pay.Cnv_Function
WHERE     ((MorakhasiDay > 0))   AND
	   Cnv_Function.[Month]=@Month AND
	( Cnv_Function.PersonelNo between  @PersonelNoFROM and @PersonelNoTo)


INSERT INTO Pay.FunctionsItems
                      (FunctionID,SalaryID,FHours,FDaily)
SELECT     NEw_ID+@FunctionID,805421 AS Expr1,0 AS Expr3,MamoriatDay AS Expr2
FROM         Pay.Cnv_Function
WHERE     ((MamoriatDay > 0) OR
                      (MamoriatTime > 0)) And 
          Cnv_Function.[Month]=@Month AND
	 ( Cnv_Function.PersonelNo between  @PersonelNoFROM and @PersonelNoTo)


	 INSERT INTO Pay.FunctionsItems
                      (FunctionID,SalaryID,FHours,FDaily)
SELECT     NEw_ID+@FunctionID,805422 AS Expr1,0 AS Expr3,outMamoriatDay AS Expr2
FROM         Pay.Cnv_Function
WHERE     ((outMamoriatDay > 0) OR
                      (outMamoriatTime > 0)) And 
          Cnv_Function.[Month]=@Month AND
	 ( Cnv_Function.PersonelNo between  @PersonelNoFROM and @PersonelNoTo)

--if  ( COLUMNPROPERTY( OBJECT_ID('Cnv_Function'),'outMamoriatDay','IsRowGuidCol')is  null )  
--exec('INSERT INTO FunctionsItems
--                      (FunctionID,SalaryID,FHours,FDaily)
--SELECT     NEw_ID+@FunctionID,805422 AS Expr1,0 AS Expr3,outMamoriatDay AS Expr2
--FROM         Cnv_Function
--WHERE     ((outMamoriatDay > 0) OR
--                      (outMamoriatTime > 0)) And 
--          Cnv_Function.[Month]=@Month AND
--	 ( Cnv_Function.PersonelNo between  @PersonelNoFROM and @PersonelNoTo)')
----------------------------------------------------------------
--------------------------
----------------------------------------------------------------
--------------------------
  
  
  
  
  
----------------------------------------------------------------
  
  
  
  
--------------------------
-----------------------------------
--------------------------
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
----------------------------------------------------------------
SET QUOTED_IDENTIFIER ON 
GO
--SET ANSI_NULLS OFF 
GO
--------------------------
CREATE  FUNCTION Pay.[InterdictItems2Amounts] (@PersonelNo int=[135302] )
RETURNS money 
begin
  DECLARE @Amount money
  SET @Amount=(SELECT     SUM(Amount) AS Amount
FROM         (SELECT     TOP 1 Pay.InterdictItems.Amount
                        FROM         Pay.Interdicts INNER JOIN
                                              Pay.InterdictItems ON Pay.Interdicts.InterdictID = Pay.InterdictItems.InterdictID INNER JOIN
                                               Pay.FormsInfo ON Pay.InterdictItems.SalaryID = Pay.FormsInfo.FormInfoID
                        WHERE     (Interdicts.PersonelNo = @PersonelNo) AND (Interdicts.State < 50)  AND (FormsInfo.FormType = 22)
                        ORDER BY Pay.FormsInfo.InfoID) AS derivedtbl_1)
 if @Amount=null OR @Amount=0 
   begin
     set @Amount=0
   END

 if @Amount >200000 
   begin
     set @Amount=(SELECT    ROUND( SUM(Amount) /30,0) AS Amount
FROM         (SELECT    top 10  Pay.InterdictItems.Amount
                        FROM         Pay.Interdicts INNER JOIN
                                              Pay.InterdictItems ON Pay.Interdicts.InterdictID = Pay.InterdictItems.InterdictID INNER JOIN
                                               Pay.FormsInfo ON Pay.InterdictItems.SalaryID = Pay.FormsInfo.FormInfoID
                        WHERE     (Interdicts.PersonelNo = @PersonelNo) AND (Interdicts.State < 50)  AND (FormsInfo.FormType = 22)
                                            AND (InterdictItems.SalaryID IN (357))
                        ORDER BY Pay.FormsInfo.InfoID) AS derivedtbl_1)
   END



  ELSE set @Amount=ROUND( @Amount/1,0)
RETURN(@Amount)
end
----------------------------
----------------------------
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
----------------------------------------------------------------------
----------------------------------------------------------------
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO
CREATE VIEW Pay.QryChangeWage
AS
SELECT        I.PersonelNo, Pay.PersonelInfo.name_L1 + ' ' + Pay.PersonelInfo.lastName_L1 AS FullName, I.InterdictNo, I.InterdictDate, 
                         I.InterdicStartDate, I.InterdicEndDate, Pay.FormsInfo.InfoName_L1 AS SalaryName, Pay.InterdictItems.Amount, I.HasRetard, Pay.InterdictItems.Firstdate, 
                         Pay.InterdictItems.Enddate, Pay.InterdictItems.SalaryID, I.GroupID, FormsInfo_EmployType.InfoID AS EmployType, FormsInfo_grade.InfoID AS Grade, 
                         FormsInfo_childNumber.InfoID AS childNumber, FormsInfo_Sex.InfoID AS Sex, FormsInfoPersonelState.InfoID AS PersonelState,
						 I.ProjectID ,InterdictItems.InterdictID,InterdictItems.InterdictItemsID
						 ,I.jobCode,I.OfficeCode,I.TaxMounth,I.TaxDays,i.LastUser
FROM            Pay.InterdictItems INNER JOIN
                          Pay.FormsInfo ON Pay.InterdictItems.SalaryID = Pay.FormsInfo.FormInfoID INNER JOIN
                         Pay.Interdicts I ON Pay.InterdictItems.InterdictID = I.InterdictID INNER JOIN
                          Pay.FormsInfo AS FormsInfo_EmployType ON I.EmployTypeID = FormsInfo_EmployType.FormInfoID INNER JOIN
                          Pay.FormsInfo AS FormsInfo_grade ON I.grade = FormsInfo_grade.FormInfoID INNER JOIN
                         Pay.PersonelInfo ON I.PersonelNo = Pay.PersonelInfo.PersonelNo INNER JOIN
                          Pay.FormsInfo AS FormsInfo_childNumber ON Pay.PersonelInfo.childNumber = FormsInfo_childNumber.FormInfoID INNER JOIN
                          Pay.FormsInfo AS FormsInfo_Sex ON Pay.PersonelInfo.sex = FormsInfo_Sex.FormInfoID LEFT OUTER JOIN
                          Pay.FormsInfo AS FormsInfoPersonelState ON Pay.PersonelInfo.PersonelState = FormsInfoPersonelState.FormInfoID
WHERE        (I.State = 0)
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
----------------------------------------------------------------
SET QUOTED_IDENTIFIER OFF 
GO
--SET ANSI_NULLS OFF 
GO
--------------------------
CREATE PROCEDURE Pay.CalChangeWage( @PersonelNoFROM  int,@PersonelNoTo  int,@GroupIDFROM  int,@GroupIDTo  int
                                     ,@EmployTypeFROM  int,@EmployTypeTo  int,@GradeFROM  int,@GradeTo  int 
                                     ,@childNumberFROM  int,@childNumberTo  int,@SexFROM  int,@SexTo  int
                                     ,@PersonelStateFROM int=0,@PersonelStateTo int=100
									 ,@ProjectIDFrom int=0,@ProjectIDTo int=999999999
									 ,@jobCodeFrom int=0,@jobCodeTo int=999999999
									 ,@OfficeCodeFrom int=0,@OfficeCodeTo int=999999999
									  )
AS
DECLARE abc CURSOR FOR SELECT SalaryID,CalculatedKind,Amount, Firstdate, Enddate FROM Pay.ChangeWage WHERE (CalculatedKind <> 3);
DECLARE @SalayId int 
DECLARE @State  TinyInt
DECLARE @Amount Float
DECLARE @Firstdate char(10)
DECLARE @Enddate char(10)

OPEN abc;
FETCH NEXT FROM abc into @SalayId,@State,@Amount, @Firstdate, @Enddate
WHILE (@@FETCH_STATUS = 0)
begin
UPDATE Pay.QryChangeWage   
SET Amount = ROUND((CASE WHEN @State=0 THEN  ((Amount*@Amount)/100)+ Amount 
                         WHEN @State=1 THEN (Amount+@Amount)
                         WHEN @State=2 THEN @Amount
                         ELSE Amount 
					end),0)
						,Firstdate = CASE WHEN @Firstdate > '0000/00/00' THEN @Firstdate ELSE NUll end
						,Enddate   = CASE WHEN @Enddate > '0000/00/00' THEN @Enddate   ELSE NUll end
						
WHERE ( SalaryID  = @SalayId )
AND ((GroupID       BETWEEN @GroupIDFROM       AND @GroupIDTo) OR (GroupID = 0))
AND (PersonelNo     BETWEEN @PersonelNoFROM    AND @PersonelNoTo)
AND (EmployType     BETWEEN @EmployTypeFROM    AND @EmployTypeTo)
AND (Grade          BETWEEN @GradeFROM         AND @GradeTo)
AND (childNumber    BETWEEN @childNumberFROM   AND @childNumberTo)
AND (Sex            BETWEEN @SexFROM           AND @SexTo)
AND (PersonelState  BETWEEN @PersonelStateFROM AND @PersonelStateTo )
AND ( ( ProjectID   BETWEEN @ProjectIDFrom AND @ProjectIDTo) OR   (ProjectID  = 0))
AND ( jobCode BETWEEN @jobCodeFrom AND @jobCodeTo ) 
AND ( OfficeCode between @OfficeCodeFrom and @OfficeCodeTo)

	FETCH NEXT FROM abc into @SalayId,@State,@Amount, @Firstdate, @Enddate
end
CLOSE abc;
DEALLOCATE abc;

UPDATE Pay.QryChangeWage   
  SET  HasRetard =   0 
WHERE (((Firstdate) IS NULL ) OR  ((Enddate) IS NULL ))


UPDATE Pay.QryChangeWage   
  SET  HasRetard =   1 
  WHERE (not((Firstdate) IS NULL ) OR (not (Enddate) IS NULL ))

return(SELECT count(*)  FROM Pay.QryChangeWage 
WHERE ( SalaryID  in(SELECT SalaryID FROM Pay.ChangeWage WHERE (CalculatedKind <> 3)AND (Amount > 0)or(not Firstdate IS NULL )or(not Enddate is NULL)  ) )
AND ((GroupID       BETWEEN @GroupIDFROM       AND @GroupIDTo) OR (GroupID = 0))
AND (PersonelNo     BETWEEN @PersonelNoFROM  AND @PersonelNoTo)
AND (EmployType     BETWEEN @EmployTypeFROM  AND @EmployTypeTo)
AND (Grade          BETWEEN @GradeFROM       AND @GradeTo)
AND (childNumber    BETWEEN @childNumberFROM AND @childNumberTo)
AND (Sex            BETWEEN @SexFROM         AND @SexTo)
AND (PersonelState  BETWEEN @PersonelStateFROM AND @PersonelStateTo )
)
----------------------------------------------------------------------
  
  
  
  
----------------------------------------------------------------------
----------------------------------------------------------------------
SET QUOTED_IDENTIFIER ON 
GO
--SET ANSI_NULLS OFF 
GO
CREATE FUNCTION Pay.MakeDoc_PersonDecExt2  (@Mounth int =11 ,@year int=86,@YearMounth varchar(7)= '81/01',@Zarib float = 1,
						 @PersonelNoFROM int=0,@PersonelNoTo int=9999999,@SallaryID int = 804603  ,
						@TopicCodeKind int = 1,@DetailCodeKind int = 2,@CTopicCodeKind int = 1,@CTopicCode2Kind int =1,@CTopicCode3Kind int = 0,
						@EndDate char(10) )  
RETURNS  table  AS 
return  (
SELECT DISTINCT
CASE @TopicCodeKind
WHEN 0 THEN 0
WHEN 3 THEN Pay.FormsInfo.AccTopicCode
WHEN 1 THEN InterdictForUse.OfficeAccTopicCode
WHEN 2 THEN Pay.PersonelInfo.AccTopicCode
			WHEN 4 THEN Fp.AccTopicCode
ELSE 0 END AS AccTopicCode,
CASE @DetailCodeKind
WHEN 0 THEN 0
WHEN 3 THEN Pay.FormsInfo.AccDetailCode
WHEN 1 THEN InterdictForUse.OfficeAccDetailCode
WHEN 2 THEN Pay.PersonelInfo.AccDetailCode
			WHEN 4 THEN Fp.AccDetailCode
ELSE 0 END AS AccDetailCode,
CASE @CTopicCodeKind
WHEN 0 THEN 0
WHEN 3 THEN Pay.FormsInfo.AccCTopicCode
WHEN 1 THEN InterdictForUse.OfficeAccCTopicCode
WHEN 2 THEN Pay.PersonelInfo.AccCTopicCode
			WHEN 4 THEN Fp.AccCTopicCode
ELSE 0 END AS AccCTopicCode,
CASE @CTopicCode2Kind
WHEN 0 THEN 0
WHEN 3 THEN Pay.FormsInfo.AccCTopicCode2
WHEN 1 THEN InterdictForUse.OfficeAccCTopicCode2
WHEN 2 THEN Pay.PersonelInfo.AccCTopicCode2
			WHEN 4 THEN Fp.AccCTopicCode2
    	--WHEN 11 THEN StandardTimes.AccCTopicCode20
    	--WHEN 12 THEN st.AccCTopicCode2
ELSE 0 END AS AccCTopicCode2,
CASE @CTopicCode3Kind
WHEN 0 THEN 0
WHEN 3 THEN Pay.FormsInfo.AccCTopicCode3
			WHEN 4 THEN Fp.AccCTopicCode3
--when 10 then 
ELSE 0 END AS AccCTopicCode3
,
CAST('کسورات ثابت حقوق _سهم کار فرما_'  + Pay.FormsInfo.InfoName_L1 AS varchar(600)) AS Dec
, cast(0 as money) AS debt,cast(sum(PersonelDecExt.EmployerAmount)as money) AS credit

FROM Pay.PersonelDecExt INNER JOIN
InterdictForUse(@YearMounth,1,2,@PersonelNoFROM ,@PersonelNoTo ,1 ) InterdictForUse ON
PersonelDecExt.PersonelNo = InterdictForUse.PersonelNo INNER JOIN
 Pay.FormsInfo ON Pay.PersonelDecExt.FormInfoID = Pay.FormsInfo.FormInfoID INNER JOIN
FormTypes ON Pay.FormsInfo.FormType =Pay.FormTypes.FormType INNER JOIN
PersonelInfo ON Pay.PersonelDecExt.PersonelNo = Pay.PersonelInfo.PersonelNo  LEFT JOIN
                       Pay.FormsInfo Fp ON Pay.PersonelDecExt.FormInfoID2 = Fp.FormInfoID
WHERE (PersonelDecExt.FirstMounth <= @Mounth ) AND (PersonelDecExt.EndMounth >= @Mounth ) AND
(PersonelDecExt.State <> 1)
AND (SalaryKind in(0,12,13) ) AND (PersonelDecExt.FormInfoID = @SallaryID)
AND (PersonelDecExt.EndDate = @EndDate) and Pay.PersonelDecExt.EmployerAmount <>0
GROUP BY 
CASE @TopicCodeKind
WHEN 0 THEN 0
WHEN 3 THEN Pay.FormsInfo.AccTopicCode
WHEN 1 THEN InterdictForUse.OfficeAccTopicCode
WHEN 2 THEN Pay.PersonelInfo.AccTopicCode
			WHEN 4 THEN Fp.AccTopicCode
ELSE 0 END ,
CASE @DetailCodeKind
WHEN 0 THEN 0
WHEN 3 THEN Pay.FormsInfo.AccDetailCode
WHEN 1 THEN InterdictForUse.OfficeAccDetailCode
WHEN 2 THEN Pay.PersonelInfo.AccDetailCode
			WHEN 4 THEN Fp.AccDetailCode
ELSE 0 END ,
CASE @CTopicCodeKind
WHEN 0 THEN 0
WHEN 3 THEN Pay.FormsInfo.AccCTopicCode
WHEN 1 THEN InterdictForUse.OfficeAccCTopicCode
WHEN 2 THEN Pay.PersonelInfo.AccCTopicCode
			WHEN 4 THEN Fp.AccCTopicCode
ELSE 0 END ,
CASE @CTopicCode2Kind
WHEN 0 THEN 0
WHEN 3 THEN Pay.FormsInfo.AccCTopicCode2
WHEN 1 THEN InterdictForUse.OfficeAccCTopicCode2
WHEN 2 THEN Pay.PersonelInfo.AccCTopicCode2
			WHEN 4 THEN Fp.AccCTopicCode2
    	--WHEN 11 THEN StandardTimes.AccCTopicCode20
    	--WHEN 12 THEN st.AccCTopicCode2
ELSE 0 END ,
CASE @CTopicCode3Kind
WHEN 0 THEN 0
WHEN 3 THEN Pay.FormsInfo.AccCTopicCode3
			WHEN 4 THEN Fp.AccCTopicCode3
--when 10 then 
ELSE 0 END , Pay.FormsInfo.InfoName_L1

UNION ALL

SELECT DISTINCT
FormsInfo.AccTopicCode AS AccTopicCode,
FormsInfo.AccDetailCode AS AccDetailCode,
FormsInfo.AccCTopicCode AS AccCTopicCode,
FormsInfo.AccCTopicCode2 AS AccCTopicCode2,
FormsInfo.AccCTopicCode3 AS AccCTopicCode3,
CAST('کسورات ثابت حقوق _سهم کار فرما_'  + Pay.FormsInfo.InfoName_L1 AS varchar(600)) AS Dec,
cast(sum(PersonelDecExt.EmployerAmount) as money) AS debt, cast(0 as money) AS credit

FROM Pay.PersonelDecExt INNER JOIN
InterdictForUse(@YearMounth,1,2,@PersonelNoFROM ,@PersonelNoTo ,1 ) InterdictForUse ON
PersonelDecExt.PersonelNo = InterdictForUse.PersonelNo INNER JOIN
 Pay.FormsInfo ON Pay.PersonelDecExt.FormInfoID = Pay.FormsInfo.FormInfoID INNER JOIN
FormTypes ON Pay.FormsInfo.FormType =Pay.FormTypes.FormType INNER JOIN
PersonelInfo ON Pay.PersonelDecExt.PersonelNo = Pay.PersonelInfo.PersonelNo
WHERE (PersonelDecExt.FirstMounth <= @Mounth ) AND (PersonelDecExt.EndMounth >= @Mounth ) AND
(PersonelDecExt.State <> 1)
AND (SalaryKind in(0,12,13) ) AND (PersonelDecExt.FormInfoID = @SallaryID)
AND (PersonelDecExt.EndDate = @EndDate) and Pay.PersonelDecExt.EmployerAmount <>0
GROUP BY Pay.FormsInfo.AccTopicCode,
FormsInfo.AccDetailCode,
FormsInfo.AccCTopicCode,
FormsInfo.AccCTopicCode2,
FormsInfo.AccCTopicCode3 ,FormsInfo.InfoName_L1

)


GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

----------------------------------------------------------------------
----------------------------------------------------------------------

-----------------------------------------------------------------------
SET QUOTED_IDENTIFIER ON 
GO
--SET ANSI_NULLS OFF 
GO
CREATE FUNCTION Pay.MakeDoc_PersonDecExt(@Mounth int =11 ,@year int=86,@YearMounth varchar(7)= '81/01',@Zarib float = 1,
						 @PersonelNoFROM int=0,@PersonelNoTo int=9999999,@SallaryID int = 804603  ,
						@TopicCodeKind int = 1,@DetailCodeKind int = 2,@CTopicCodeKind int = 1,@CTopicCode2Kind int =1,@CTopicCode3Kind int = 0,
						@EndDate char(10) )  
RETURNS  table  AS 
return  (
SELECT  DISTINCT  Pay.PersonelDecExt.DecExtID,PersonelDecExt.PersonelNo,PersonelDecExt.FormInfoID AS salaryID, @Mounth AS Mounth,
	  Pay.FormsInfo.InfoName_L1 ,PersonelInfo.name_L1,PersonelInfo.lastName_L1,
	cast(round ( Pay.PersonelDecExt.EmployeeAmount * @Zarib,0 )AS money) AS  EmployeeAmount ,
	cast(PersonelDecExt.PaymentLoan AS money) AS Tax,
	cast(EmployeeAmount - PaymentLoan  AS money) AS Pure ,
		CASE @TopicCodeKind 
			WHEN 0 THEN 0 
			WHEN 3  THEN Pay.FormsInfo.AccTopicCode
			WHEN 1 THEN  InterdictForUse.OfficeAccTopicCode
			WHEN 2 THEN Pay.PersonelInfo.AccTopicCode
			WHEN 4 THEN Fp.AccTopicCode
		ELSE 0 END AS AccTopicCode,
		CASE @DetailCodeKind  
			WHEN 0 THEN 0 
			WHEN 3 THEN Pay.FormsInfo.AccDetailCode
			WHEN 1 THEN  InterdictForUse.OfficeAccDetailCode
			WHEN 2 THEN Pay.PersonelInfo.AccDetailCode
			WHEN 4 THEN Fp.AccDetailCode
		ELSE 0 END AS AccDetailCode,
		CASE @CTopicCodeKind   
			WHEN 0 THEN 0 
			WHEN 3 THEN Pay.FormsInfo.AccCTopicCode
			WHEN 1 THEN  InterdictForUse.OfficeAccCTopicCode
			WHEN 2 THEN Pay.PersonelInfo.AccCTopicCode
			WHEN 4 THEN Fp.AccCTopicCode
		ELSE 0 END  AS AccCTopicCode,
		CASE @CTopicCode2Kind    
			WHEN 0 THEN 0 
			WHEN 3 THEN Pay.FormsInfo.AccCTopicCode2
			WHEN 1 THEN  InterdictForUse.OfficeAccCTopicCode2
			WHEN 2 THEN Pay.PersonelInfo.AccCTopicCode2
        	WHEN 11 THEN StandardTimes.AccCTopicCode2
        	--WHEN 12 THEN st.AccCTopicCode2
			WHEN 4 THEN Fp.AccCTopicCode2
		ELSE 0 END AS AccCTopicCode2,
	CASE @CTopicCode3Kind   
		WHEN 0 THEN 0 
		WHEN 3  THEN Pay.FormsInfo.AccCTopicCode3
    	WHEN 4 THEN Fp.AccCTopicCode3
	ELSE 0 END AS AccCTopicCode3 
FROM         Pay.PersonelDecExt INNER JOIN
                      InterdictForUse(@YearMounth,1,2,@PersonelNoFROM ,@PersonelNoTo ,1  ) InterdictForUse ON Pay.PersonelDecExt.PersonelNo = InterdictForUse.PersonelNo INNER JOIN
                       Pay.FormsInfo ON Pay.PersonelDecExt.FormInfoID = Pay.FormsInfo.FormInfoID INNER JOIN
                      Pay.FormTypes ON Pay.FormsInfo.FormType =Pay.FormTypes.FormType INNER JOIN
                      Pay.PersonelInfo ON Pay.PersonelDecExt.PersonelNo = Pay.PersonelInfo.PersonelNo INNER JOIN
                      Pay.StandardTimes ON @Mounth = Pay.StandardTimes.InfoID  LEFT JOIN
                       Pay.FormsInfo Fp ON Pay.PersonelDecExt.FormInfoID2 = Fp.FormInfoID
WHERE     (PersonelDecExt.FirstMounth <= @Mounth ) AND (PersonelDecExt.EndMounth >= @Mounth ) AND (PersonelDecExt.State <> 1)
       AND (SalaryKind in(0,12,13) ) AND (PersonelDecExt.FormInfoID = @SallaryID)
	   AND (PersonelDecExt.EndDate = @EndDate)
---وجود گروپ مشخص نبود برای چیست غیر فعال شد.   
--  DISTINCT  اضافه شد
--GROUP BY Pay.PersonelDecExt.FormInfoID,PersonelDecExt.DecExtID,PersonelDecExt.PersonelNo, Pay.PersonelDecExt.EmployeeAmount,PersonelDecExt.EmployerAmount ,
--                     Pay.FormTypes.SalaryEffectKind,FormTypes.SalaryKind,
--	  Pay.FormsInfo.InfoName_L1 ,PersonelInfo.name_L1,PersonelInfo.lastName_L1,
--		CASE @TopicCodeKind 
--			WHEN 0 THEN 0 
--			WHEN 3  THEN Pay.FormsInfo.AccTopicCode
--			WHEN 1 THEN  InterdictForUse.OfficeAccTopicCode
--			WHEN 2 THEN Pay.PersonelInfo.AccTopicCode
--		ELSE 0 END,
--		CASE @DetailCodeKind  
--			WHEN 0 THEN 0 
--			WHEN 3 THEN Pay.FormsInfo.AccDetailCode
--			WHEN 1 THEN  InterdictForUse.OfficeAccDetailCode
--			WHEN 2 THEN Pay.PersonelInfo.AccDetailCode
--		ELSE 0 END ,
--		CASE @CTopicCodeKind  
--			WHEN 0 THEN 0 
--			WHEN 3 THEN Pay.FormsInfo.AccCTopicCode
--			WHEN 1 THEN  InterdictForUse.OfficeAccCTopicCode
--			WHEN 2 THEN Pay.PersonelInfo.AccCTopicCode
--		ELSE 0 END  ,
--		CASE @CTopicCode2Kind 
--			WHEN 0 THEN 0 
--			WHEN 3 THEN Pay.FormsInfo.AccCTopicCode2
--			WHEN 1 THEN  InterdictForUse.OfficeAccCTopicCode2
--			WHEN 2 THEN Pay.PersonelInfo.AccCTopicCode2
--		ELSE 0 END,
--	CASE @CTopicCode3Kind  
--		WHEN 0 THEN 0 
--		WHEN 3  THEN Pay.FormsInfo.AccCTopicCode3
--	ELSE 0 END 
---HAVING  (SalaryKind in(12,13) ) and (PersonelDecExt.FormInfoID = @SallaryID)
)
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

----------------------------------------------------------------------
----------------------------------------------------------------------
----------------------------------------------------------------------
-----------------------------------------------------------------------
SET QUOTED_IDENTIFIER ON 
GO
--SET ANSI_NULLS OFF 
GO
CREATE FUNCTION Pay.FN_GetFunctionsItems  (@MounthFrom int, @MounthTo int ,@PersonelNOFrom int, @PersonelNOTo int ,@PersonelStateFrom int,  @PersonelStateTo int ,@ProjectFrom int, @ProjectTo int)  
RETURNS  table  AS 
return  (
SELECT        Pay.FunctionsItems.SalaryID, Pay.FormsInfo.InfoName_L1, Pay.FormsInfo.InfoID
FROM             Pay.FormsInfo AS FormsInfo_PersonelState RIGHT OUTER JOIN
                         Pay.PersonelInfo ON FormsInfo_PersonelState.FormInfoID = Pay.PersonelInfo.PersonelState CROSS JOIN
                         Pay.FunctionsItems INNER JOIN
                          Pay.FormsInfo ON Pay.FunctionsItems.SalaryID = Pay.FormsInfo.FormInfoID INNER JOIN
                         Pay.Functions ON Pay.FunctionsItems.FunctionID = Pay.Functions.FunctionID INNER JOIN
                          Pay.FormsInfo AS FormsInfo_Project ON Pay.Functions.ProjectID = FormsInfo_Project.FormInfoID

	WHERE (Functions.Mounth BETWEEN @MounthFrom AND @MounthTo) 
	 AND (Functions.PersonelNO BETWEEN @PersonelNOFrom AND @PersonelNOTo )
	 AND (FormsInfo_PersonelState.InfoID BETWEEN @PersonelStateFrom AND @PersonelStateTo )
	 AND (FormsInfo_Project.InfoID BETWEEN @ProjectFrom AND @ProjectTo  )
	 AND (ISNULL(FunctionsItems.FDaily,0)+ISNULL(FunctionsItems.FHours,0) > 0) 

GROUP BY Pay.FunctionsItems.SalaryID, Pay.FormsInfo.InfoName_L1, Pay.FormsInfo.InfoID

	--SELECT Pay.FunctionsItems.SalaryID, Pay.FormsInfo.InfoName_L1, Pay.FormsInfo.InfoID
	--FROM Pay.FunctionsItems INNER JOIN
	-- Pay.FormsInfo ON Pay.FunctionsItems.SalaryID = Pay.FormsInfo.FormInfoID INNER JOIN
	--FixedCalculated ON Pay.FunctionsItems.SalaryID = FixedCalculated.SalaryID INNER JOIN
	--PersonelInfo ON FixedCalculated.PersonelNO = Pay.PersonelInfo.PersonelNo INNER JOIN
	--Functions ON Pay.FunctionsItems.FunctionID = Pay.Functions.FunctionID AND FixedCalculated.PersonelNO =
	--Functions.PersonelNo AND FixedCalculated.Mounth = Pay.Functions.Mounth LEFT OUTER JOIN
	-- Pay.FormsInfo AS FormsInfo_PersonelState ON Pay.PersonelInfo.PersonelState = FormsInfo_PersonelState.FormInfoID
	--LEFT OUTER JOIN
	-- Pay.FormsInfo AS FormsInfo_Project ON FixedCalculated.ProjectID = FormsInfo_Project.FormInfoID
	--WHERE (FixedCalculated.Mounth BETWEEN @MounthFrom AND @MounthTo) 
	-- AND (FixedCalculated.PersonelNO BETWEEN @PersonelNOFrom AND @PersonelNOTo )
	-- AND (FormsInfo_PersonelState.InfoID BETWEEN @PersonelStateFrom AND @PersonelStateTo )
	-- AND (FormsInfo_Project.InfoID BETWEEN @ProjectFrom AND @ProjectTo  )
	-- AND (ISNULL(FunctionsItems.FDaily,0)+ISNULL(FunctionsItems.FHours,0) > 0) 
	--GROUP BY Pay.FunctionsItems.SalaryID, Pay.FormsInfo.InfoName_L1, Pay.FormsInfo.InfoID


)
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

----------------------------------------------------------------------
----------------------------------------------------------------------
SET QUOTED_IDENTIFIER ON 
GO
--SET ANSI_NULLS OFF 
GO
CREATE PROCEDURE Pay.[GetFunctionsItemsParam] (@MounthFrom int, @MounthTo int ,@PersonelNOFrom int, @PersonelNOTo int ,@PersonelStateFrom int,  @PersonelStateTo int ,@ProjectFrom int, @ProjectTo int) AS
begin
DECLARE abc CURSOR FOR SELECT    SalaryID,InfoName_L1
FROM Pay.FN_GetFunctionsItems  (@MounthFrom , @MounthTo  , @PersonelNOFrom ,@PersonelNOTo,@PersonelStateFrom ,  @PersonelStateTo  ,@ProjectFrom , @ProjectTo )
	ORDER BY InfoID

declare @Query varchar(8000)
declare @CASEQuery varchar(8000)
set     @CASEQuery=''
declare @CASEQuery2 varchar(8000)
set     @CASEQuery2=''


DECLARE @SalayId int 
DECLARE @InfoName  varchar(50)
DECLARE @ID int 
set @ID=1
OPEN abc;
FETCH NEXT FROM abc into @SalayId,@InfoName
WHILE (@@FETCH_STATUS = 0)
begin
set @CASEQuery=@CASEQuery+',SUM(CASE Fi.SalaryID WHEN '+str(@SalayId)+
               ' THEN ISNULL(Fi.FDaily,0)+ISNULL(Fi.FHours,0) ELSE 0 END) AS _Amount'+ltrim(str(@ID))

set @CASEQuery2=@CASEQuery2+',SUM(CASE Fi.SalaryID WHEN '+str(@SalayId)+
               ' THEN ISNULL(Fi.FDaily,0)+ISNULL(Fi.FHours,0) ELSE 0 END) AS _Amount'+ltrim(str(@SalayId))
	FETCH NEXT FROM abc into @SalayId,@InfoName
    set @ID=@ID+1
 --   print @CASEQuery
end
CLOSE abc;
DEALLOCATE abc;
set @Query='if exists (SELECT * FROM sysobjects where id = object_id(N''Pay.[FunctionItemsListParam]'') and xtype in (N''FN'',N''IF'',N''TF''))
			 drop function Pay.[FunctionItemsListParam]'

Exec (@Query)
--print @Query  
set @Query='create FUNCTION Pay.FunctionItemsListParam () RETURNS TABLE AS  RETURN 
(  SELECT F.PersonelNo,F.Mounth,min(FunctionDay) AS FunctionDay,min(FunctionTime) AS FunctionTime '+@CASEQuery+
'   FROM Pay.Functions AS F LEFT OUTER JOIN Pay.FunctionsItems AS Fi ON F.FunctionID = Fi.FunctionID 
    GROUP BY F.PersonelNo,F.Mounth) '
--print @Query
Exec (@Query)


set @Query='if exists (SELECT * FROM sysobjects where id = object_id(N''Pay.[FunctionItemsListProjectParam]'') and xtype in (N''FN'',N''IF'',N''TF''))
			 drop function Pay.[FunctionItemsListProjectParam]'

Exec (@Query)
--print @Query  
set @Query='create FUNCTION Pay.FunctionItemsListProjectParam (@ProjectID Int) RETURNS TABLE AS  RETURN 
(  SELECT F.PersonelNo,F.Mounth,min(FunctionDay) AS FunctionDay,min(FunctionTime) AS FunctionTime '+@CASEQuery+
'   FROM Pay.Functions AS F LEFT OUTER JOIN Pay.FunctionsItems AS Fi ON F.FunctionID = Fi.FunctionID
    WHERE  (F.ProjectID = @ProjectID)
    GROUP BY F.PersonelNo,F.Mounth) '
--print @Query
Exec (@Query)



set @Query='if exists (SELECT * FROM sysobjects where id = object_id(N''Pay.[FunctionItems_Amount]'') and xtype in (N''FN'',N''IF'',N''TF''))
			 drop function Pay.[FunctionItems_Amount]'

Exec (@Query)
--print @Query  
set @Query='create FUNCTION Pay.FunctionItems_Amount (@Mounth Int) RETURNS TABLE AS  RETURN 
(  SELECT F.PersonelNo,@Mounth as Mounth,F.OfficeCode,F.ProjectID,F.ProcCode,F.CTopic3
,F.FunctionID,F.FormInfoID ,F.JobCode,min(FunctionDay) AS FunctionDay,min(FunctionTime) AS FunctionTime '+@CASEQuery+
'   FROM Pay.Functions AS F LEFT OUTER JOIN Pay.FunctionsItems AS Fi ON F.FunctionID = Fi.FunctionID
    WHERE  (F.Mounth = @Mounth)
    GROUP BY F.PersonelNo,F.OfficeCode,F.ProjectID,F.ProcCode,F.CTopic3
,F.FunctionID,F.FormInfoID ,F.JobCode) '
--print @Query
Exec (@Query)



set @Query='if exists (SELECT * FROM sysobjects where id = object_id(N''Pay.[FunctionItems_Amount]'') and xtype in (N''FN'',N''IF'',N''TF''))
			 drop function Pay.[FunctionItems_AmountSID]'

Exec (@Query)
--print @Query  
set @Query='create FUNCTION Pay.FunctionItems_AmountSID (@Mounth Int) RETURNS TABLE AS  RETURN 
(  SELECT F.PersonelNo,@Mounth as Mounth,F.OfficeCode,F.ProjectID,F.ProcCode,F.CTopic3
,F.FunctionID,F.FormInfoID ,F.JobCode,min(FunctionDay) AS FunctionDay,min(FunctionTime) AS FunctionTime '+@CASEQuery2+
'   FROM Pay.Functions AS F LEFT OUTER JOIN Pay.FunctionsItems AS Fi ON F.FunctionID = Fi.FunctionID
    WHERE  (F.Mounth = @Mounth)
    GROUP BY F.PersonelNo,F.OfficeCode,F.ProjectID,F.ProcCode,F.CTopic3
,F.FunctionID,F.FormInfoID ,F.JobCode) '
--print @Query
Exec (@Query)

---------------------------------------------------------------

DECLARE abc CURSOR FOR   SELECT DISTINCT  Ii.SalaryID,FormsInfo.InfoName_L1
  FROM   Pay.InterdictItems AS Ii INNER JOIN  Pay.FormsInfo ON Ii.SalaryID = Pay.FormsInfo.FormInfoID 
  ORDER BY Ii.SalaryID 
  


set     @CASEQuery=''


set @ID=1
OPEN abc;
FETCH NEXT FROM abc into @SalayId,@InfoName
WHILE (@@FETCH_STATUS = 0)
begin
set @CASEQuery=@CASEQuery+',SUM(CASE Ii.SalaryID WHEN '+ltrim(str(@SalayId))+
               ' THEN ISNULL(Ii.Amount,0) ELSE 0 END) AS InAmount'+ltrim(str(@SalayId))
	FETCH NEXT FROM abc into @SalayId,@InfoName
    set @ID=@ID+1
 --   print @CASEQuery
end
CLOSE abc;
DEALLOCATE abc;
set @Query='if exists (SELECT * FROM sysobjects where id = object_id(N''Pay.[InterdictItems_InAmount]'') and xtype in (N''FN'',N''IF'',N''TF''))
			 drop function Pay.[InterdictItems_InAmount]'

Exec (@Query)
--print @Query  
set @Query='create FUNCTION Pay.InterdictItems_InAmount(@YearMounth varchar(7)) RETURNS TABLE AS  RETURN 
(  SELECT  I.PersonelNo, I.subcompanyCode, I.OfficeCode, I.jobCode, I.AccTopicCode, I.AccDetailCode, I.AccCTopicCode, 
                         I.AccCTopicCode2, I.AccCTopicCode3, FT.TopicCodeKind, FT.DetailCodeKind, FT.CTopicCodeKind, FT.CTopicCode2Kind, FT.CTopicCode3Kind, 
                         F_2.FormType, F_3.AccTopicCode AS OfficeAccTopicCode, F_3.AccDetailCode AS OfficeAccDetailCode, F_3.AccCTopicCode AS OfficeAccCTopicCode, 
                         F_3.AccCTopicCode2 AS OfficeAccCTopicCode2, F_3.AccCTopicCode3 AS OfficeAccCTopicCode3, 0 AS SalaryAccTopicCode, 0 AS SalaryAccDetailCode, 
                         0 AS SalaryAccCTopicCode, 0 AS SalaryAccCTopicCode2,0 AS SalaryAccCTopicCode3, F_2.AccTopicCode AS MasterAccTopicCode, 
                         F_2.AccDetailCode AS MasterAccDetailCode, F_2.AccCTopicCode AS MasterAccCTopicCode, F_2.AccCTopicCode2 AS MasterAccCTopicCode2, F_2.AccCTopicCode3 AS MasterAccCTopicCode3, 
                         I.ProjectID, I.jobsGroup,SUM(Ii.Amount) AS AllInAmount '+@CASEQuery+
'   FROM            Pay.Interdicts AS I INNER JOIN
                         Pay.InterdictItems AS Ii ON I.InterdictID = Ii.InterdictID INNER JOIN
                          Pay.FormsInfo AS F_2 ON I.EmployTypeID = F_2.FormInfoID INNER JOIN
                         Pay.FormTypes AS FT ON F_2.FormType = FT.FormType INNER JOIN
                          Pay.FormsInfo AS F_3 ON I.OfficeCode = F_3.FormInfoID
WHERE (LEFT(I.InterdicStartDate,7) <= @YearMounth)  AND 
		(LEFT(I.InterdicEndDate,7) >=@YearMounth)  
    GROUP BY I.PersonelNo,I.subcompanyCode,I.OfficeCode,I.jobCode,
                      I.AccTopicCode,I.AccDetailCode,I.AccCTopicCode,I.AccCTopicCode2,I.AccCTopicCode3,
                      FT.TopicCodeKind,FT.DetailCodeKind,FT.CTopicCodeKind,
                      FT.CTopicCode2Kind,FT.CTopicCode3Kind,F_2.FormType,F_3.AccTopicCode,F_3.AccDetailCode,F_3.AccCTopicCode,
                      F_3.AccCTopicCode2,F_3.AccCTopicCode3,F_2.AccTopicCode ,
                      F_2.AccDetailCode,F_2.AccCTopicCode,
                      F_2.AccCTopicCode2,F_2.AccCTopicCode3 ,I.ProjectID ,I.jobsGroup) '
--print @Query
Exec (@Query)

----------------------------------------------------------------


end
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
----------------------------------------------------------------------
----------------------------------------------------------------------



----------------------------------------------------------------------
----------------------------------------------------------------------
SET QUOTED_IDENTIFIER ON 
GO
--SET ANSI_NULLS OFF 
GO
CREATE PROCEDURE Pay.[GetFunctionsItems] AS
begin
DECLARE abc CURSOR FOR SELECT    Pay.FunctionsItems.SalaryID,FormsInfo.InfoName_L1
FROM         Pay.Functions INNER JOIN
                      Pay.FunctionsItems ON Pay.Functions.FunctionID = Pay.FunctionsItems.FunctionID INNER JOIN
                       Pay.FormsInfo ON Pay.FunctionsItems.SalaryID = Pay.FormsInfo.FormInfoID
WHERE     (Functions.Mounth >= 1)
GROUP BY Pay.FunctionsItems.SalaryID,FormsInfo.InfoName_L1,FormsInfo.InfoID
ORDER BY Pay.FormsInfo.InfoID;

declare @Query varchar(max)
declare @CASEQuery varchar(max)
set     @CASEQuery=''

DECLARE @SalayId int 
DECLARE @InfoName  varchar(50)
DECLARE @ID int 
set @ID=1
OPEN abc;
FETCH NEXT FROM abc into @SalayId,@InfoName
WHILE (@@FETCH_STATUS = 0)
begin
set @CASEQuery=@CASEQuery+',SUM(CASE Pay.FunctionsItems.SalaryID WHEN '+str(@SalayId)+
               ' THEN ISNULL(FunctionsItems.FDaily,0)+ISNULL(FunctionsItems.FHours,0) ELSE 0 END) AS _Amount'+ltrim(str(@ID))
	FETCH NEXT FROM abc into @SalayId,@InfoName
    set @ID=@ID+1
 --   print @CASEQuery
end
CLOSE abc;
DEALLOCATE abc;
set @Query='if exists (SELECT * FROM sysobjects where id = object_id(N''Pay.[FunctionItemsList]'') and xtype in (N''FN'',N''IF'',N''TF''))
			 drop function Pay.[FunctionItemsList]'

Exec (@Query)
set @Query='if exists (SELECT * FROM sysobjects where id = object_id(N''Pay.[FunctionItemsListMounth]'') and xtype in (N''FN'',N''IF'',N''TF''))
			 drop function Pay.[FunctionItemsListMounth]'

Exec (@Query)

--print @Query  
set @Query='create FUNCTION Pay.FunctionItemsList () RETURNS TABLE AS  RETURN 
(  SELECT Pay.Functions.PersonelNo,Functions.Mounth,min(FunctionDay) AS FunctionDay,min(FunctionTime) AS FunctionTime '+@CASEQuery+
'   FROM Pay.Functions  LEFT OUTER JOIN Pay.FunctionsItems ON Pay.Functions.FunctionID = Pay.FunctionsItems.FunctionID 
    GROUP BY Pay.Functions.PersonelNo,Functions.Mounth) '
--print @Query
Exec (@Query)

set @Query='create FUNCTION Pay.FunctionItemsListMounth( @MounthFrom int=1 , @MounthTo int=12 ,@YearIDFrom  int=1402,@YearIDTo  int=1402) RETURNS TABLE AS  RETURN 
(  SELECT Pay.Functions.PersonelNo,min(FunctionDay) AS FunctionDay,min(FunctionTime) AS FunctionTime '+@CASEQuery+
'   FROM Pay.Functions  LEFT OUTER JOIN Pay.FunctionsItems ON Pay.Functions.FunctionID = Pay.FunctionsItems.FunctionID 
    WHERE  (Functions.Mounth BETWEEN @MounthFrom AND @MounthTo )
    GROUP BY Pay.Functions.PersonelNo) '
print @Query
Exec (@Query)


set @Query='if exists (SELECT * FROM sysobjects where id = object_id(N''Pay.[FunctionItemsListProject]'') and xtype in (N''FN'',N''IF'',N''TF''))
			 drop function Pay.[FunctionItemsListProject]'

Exec (@Query)
--print @Query  
set @Query='create FUNCTION Pay.FunctionItemsListProject (@ProjectID Int) RETURNS TABLE AS  RETURN 
(  SELECT Pay.Functions.PersonelNo,Functions.Mounth,min(FunctionDay) AS FunctionDay,min(FunctionTime) AS FunctionTime '+@CASEQuery+
'   FROM Pay.Functions  LEFT OUTER JOIN Pay.FunctionsItems ON Pay.Functions.FunctionID = Pay.FunctionsItems.FunctionID
    WHERE  (Functions.ProjectID = @ProjectID)
    GROUP BY Pay.Functions.PersonelNo,Functions.Mounth) '
--print @Query
Exec (@Query)



end
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
----------------------------------------------------------------------
----------------------------------------------------------------------
----------------------------------------------------------------------
----------------------------------------------------------------------
SET QUOTED_IDENTIFIER ON 
GO
--SET ANSI_NULLS OFF 
GO
CREATE PROCEDURE Pay.[GetWageDecItems](@Mounth int=1,@ArchiveID int=0,@PersonelNoFROM int=0,@PersonelNoTo int=136901,
             @PersonelStateFROM int=0,@PersonelStateTo int=10,@EmployTypeIDFROM  int=0,@EmployTypeIDTo int=100,
             @OfficeCodeFROM int=0,@OfficeCodeTo int=100)as
begin
DECLARE abc CURSOR FOR SELECT     FixedCalculated.SalaryID,FormsInfo_2.InfoName_L1
FROM Pay.FixedCalculated LEFT OUTER JOIN  Pay.Interdicts LEFT OUTER JOIN
	 Pay.FormsInfo AS FormsInfoEmployTypeID ON Pay.Interdicts.EmployTypeID = FormsInfoEmployTypeID.FormInfoID ON 
	FixedCalculated.PersonelNO = Pay.Interdicts.PersonelNo LEFT OUTER JOIN 	PersonelInfo LEFT OUTER JOIN
	 Pay.FormsInfo AS FormsInfoPersonelState ON Pay.PersonelInfo.PersonelState = FormsInfoPersonelState.FormInfoID ON 
	FixedCalculated.PersonelNO = Pay.PersonelInfo.PersonelNo LEFT OUTER JOIN
	 Pay.FormsInfo AS FormsInfo_2 ON FixedCalculated.SalaryID = FormsInfo_2.FormInfoID LEFT OUTER JOIN
	 Pay.FormsInfo AS FormsInfoOffice ON Pay.Interdicts.OfficeCode = FormsInfoOffice.FormInfoID AND Pay.Interdicts.PersonelNo = FixedCalculated.PersonelNO
WHERE     (Interdicts.State < 50) AND (FixedCalculated.ShowListKind = 1)
AND (FixedCalculated.Mounth = @Mounth)AND (FixedCalculated.ArchiveID = @ArchiveID)
--And (FixedCalculated.LabelID between @LabelIDFrom  and @LabelIDTo   )
AND (FixedCalculated.PersonelNO BETWEEN @PersonelNoFROM AND @PersonelNoTo)
AND (FormsInfoPersonelState.InfoID  BETWEEN @PersonelStateFROM AND @PersonelStateTo )
AND (FormsInfoEmployTypeID.InfoID   BETWEEN @EmployTypeIDFROM AND @EmployTypeIDTo )
AND (FormsInfoOffice.InfoID BETWEEN @OfficeCodeFROM  AND @OfficeCodeTo )
GROUP BY FixedCalculated.SalaryID,FormsInfo_2.InfoName_L1,FormsInfo_2.FormInfoID
ORDER BY FixedCalculated.SalaryID

declare @Query varchar(8000)
declare @CASEQuery varchar(8000)
set     @CASEQuery='SELECT  Pay.PersonelInfo.AccCTopicCode AS كدمركزهزينه,FormsInfoOffice.InfoID AS كدواحد,FormsInfoOffice.InfoName_L1 AS واحدسازماني,' +
            ' FixedCalculated.PersonelNO AS كدپرسنلي,PersonelInfo.name_L1 + '' '' + Pay.PersonelInfo.lastName_L1 AS پرسنل,PersonelInfo.fatherName_L1 AS پدر'
DECLARE @SalayId int 
DECLARE @InfoName  varchar(50)
DECLARE @ID int 
set @ID=1
OPEN abc;
FETCH NEXT FROM abc into @SalayId,@InfoName
WHILE (@@FETCH_STATUS = 0)
begin
--set @CASEQuery=@CASEQuery+',SUM(CASE SalaryID WHEN '+str(@SalayId)+' THEN price ELSE 0 END) AS Wage'+ltrim(str(@ID))
set @CASEQuery=@CASEQuery+',SUM(CASE SalaryID WHEN '+str(@SalayId)+' THEN price ELSE 0 END) AS ['+replace(@InfoName,' ','‏')+'] '
	FETCH NEXT FROM abc into @SalayId,@InfoName
    set @ID=@ID+1
 --   print @CASEQuery
end
CLOSE abc;
DEALLOCATE abc;
set @CASEQuery=@CASEQuery+
               ',SUM( CASE ShowlistKind WHEN 1 THEN price ELSE 0 END ) AS [جمع‏مزايا],'+
        	   ' SUM( CASE WHEN ( ShowlistKind in(2,4,15,14) and bedbes=1 )  THEN price ELSE 0 END ) AS [بيمه‏كارفرما],'+
      		   ' SUM( CASE ShowlistKind WHEN 3  THEN price ELSE 0 END ) AS [مشمول‏بيمه],'+
     	  	   ' SUM( CASE WHEN ( ShowlistKind=11 and bedbes=0 AND CalCulateKind = 12 ) THEN price ELSE 0 END ) AS [مشمول‏ماليات],'+
       		   ' SUM( CASE WHEN ( ShowlistKind=11 and bedbes=2 ) THEN price ELSE 0 END ) AS [ماليات] ' 
------------------------------------------------------
DECLARE abc CURSOR FOR SELECT    FixedCalculated.SalaryID,
MAX(CASE WHEN InsuranceCONSTinfo.InsuranceLabel_L1 IS NULL
    THEN FormsInfo_2.InfoName_L1 ELSE InsuranceCONSTinfo.InsuranceLabel_L1 END) AS InfoName_L1,
      FormsInfo_2.FormInfoID
FROM Pay.InsuranceCONSTinfo RIGHT OUTER JOIN
 Pay.FormsInfo AS FormsInfo_2 ON InsuranceCONSTinfo.FormInfoID = FormsInfo_2.FormInfoID RIGHT OUTER JOIN
Pay.FixedCalculated LEFT OUTER JOIN
Pay.Interdicts LEFT OUTER JOIN
 Pay.FormsInfo AS FormsInfoEmployTypeID ON Pay.Interdicts.EmployTypeID = FormsInfoEmployTypeID.FormInfoID ON
FixedCalculated.PersonelNO = Pay.Interdicts.PersonelNo LEFT OUTER JOIN
Pay.PersonelInfo LEFT OUTER JOIN
 Pay.FormsInfo AS FormsInfoPersonelState ON Pay.PersonelInfo.PersonelState = FormsInfoPersonelState.FormInfoID ON
FixedCalculated.PersonelNO = Pay.PersonelInfo.PersonelNo ON FormsInfo_2.FormInfoID = FixedCalculated.SalaryID LEFT OUTER JOIN
 Pay.FormsInfo AS FormsInfoOffice ON Pay.Interdicts.OfficeCode = FormsInfoOffice.FormInfoID AND Pay.Interdicts.PersonelNo = FixedCalculated.PersonelNO
WHERE     (Interdicts.State < 50) AND (FixedCalculated.ShowListKind = 2)
AND (FixedCalculated.Mounth = @Mounth)AND (FixedCalculated.ArchiveID = @ArchiveID)
--And (FixedCalculated.LabelID between @LabelIDFrom  and @LabelIDTo   )
AND (FixedCalculated.PersonelNO BETWEEN @PersonelNoFROM AND @PersonelNoTo)
AND (FormsInfoPersonelState.InfoID  BETWEEN @PersonelStateFROM AND @PersonelStateTo )
AND (FormsInfoEmployTypeID.InfoID   BETWEEN @EmployTypeIDFROM AND @EmployTypeIDTo )
AND (FormsInfoOffice.InfoID BETWEEN @OfficeCodeFROM  AND @OfficeCodeTo )
GROUP BY FixedCalculated.SalaryID,FormsInfo_2.InfoName_L1,FormsInfo_2.FormInfoID
ORDER BY FixedCalculated.SalaryID

DECLARE @FormInfoID int 
set @ID=1
OPEN abc;
FETCH NEXT FROM abc into @SalayId,@InfoName,@FormInfoID
WHILE (@@FETCH_STATUS = 0)
begin
--set @CASEQuery=@CASEQuery+',SUM(CASE  WHEN SalaryID='+str(ISNULL(@SalayId,'-1'))+' and ShowlistKind=2 THEN price ELSE 0 END ) AS dec'+ltrim(str(@ID))
set @CASEQuery=@CASEQuery+',SUM(CASE  WHEN SalaryID='+str(ISNULL(@SalayId,'-1'))+' and  ShowlistKind =2 THEN price ELSE 0 END ) AS ['+replace(@InfoName,' ','‏') +']'
	FETCH NEXT FROM abc into @SalayId,@InfoName,@FormInfoID
    set @ID=@ID+1
 --   print @CASEQuery
end
CLOSE abc;
DEALLOCATE abc;
set @CASEQuery=@CASEQuery+
	',SUM( CASE ShowlistKind WHEN 2  THEN price ELSE 0 END ) +'+
	' SUM( CASE  WHEN ShowlistKind=11 and bedbes = 2 THEN price ELSE 0 END ) AS [جمع‏كسورات],'+
	' SUM(CASE ShowlistKind WHEN 1 THEN price ELSE 0 END )-(SUM( CASE ShowlistKind WHEN 2  THEN price ELSE 0 END ) +SUM( CASE  WHEN ShowlistKind=11 and bedbes = 2 THEN price ELSE 0 END )) AS [قابل‏پرداخت] '+
	' FROM FixedCalculated LEFT OUTER JOIN Pay.Interdicts '+
	' LEFT OUTER JOIN  Pay.FormsInfo AS FormsInfoEmployTypeID ON Pay.Interdicts.EmployTypeID = FormsInfoEmployTypeID.FormInfoID ON'+
	' FixedCalculated.PersonelNO = Pay.Interdicts.PersonelNo LEFT OUTER JOIN Pay.Functions_Sum INNER JOIN'+
	' Pay.PersonelInfo ON Pay.Functions_Sum.PersonelNo = Pay.PersonelInfo.PersonelNo '+
	' LEFT OUTER JOIN  Pay.FormsInfo AS FormsInfoPersonelState ON Pay.PersonelInfo.PersonelState = FormsInfoPersonelState.FormInfoID ON'+
	' FixedCalculated.Mounth = Pay.Functions_Sum.Mounth AND FixedCalculated.YearID = Pay.Functions_Sum.YearID AND FixedCalculated.PersonelNO = Pay.PersonelInfo.PersonelNo '+
	' LEFT OUTER JOIN  Pay.FormsInfo AS FormsInfo_2 ON FixedCalculated.SalaryID = FormsInfo_2.FormInfoID'+
	' LEFT OUTER JOIN  Pay.FormsInfo AS FormsInfoOffice ON Pay.Interdicts.OfficeCode = FormsInfoOffice.FormInfoID and Pay.Interdicts.PersonelNo = FixedCalculated.PersonelNO'+
	' WHERE  (FixedCalculated.ArchiveID = '+str(@ArchiveID)+') AND(FixedCalculated.Mounth = '+str(@Mounth)+') '+
	--' And (FixedCalculated.LabelID between '+str(@LabelIDFrom)+'  and '+str(@LabelIDTo)+'   ) '+
	' AND (FormsInfoPersonelState.InfoID  BETWEEN '+str(@PersonelStateFrom)+' AND '+str(@PersonelStateTo)+' )'+
	' AND (FormsInfoEmployTypeID.InfoID   BETWEEN '+str(@EmployTypeIDFrom)+' AND '+str(@EmployTypeIDTo)+' )'+
	' AND (Interdicts.State < 50)'+
	' and  (FormsInfoOffice.InfoID  BETWEEN '+str(@OfficeCodeFrom)+' AND '+str(@OfficeCodeTo)+')   '+
	' AND (FixedCalculated.PersonelNO BETWEEN '+str(@PersonelNoFrom)+' AND '+str(@PersonelNoTo)+')'+
--	' AND (PersonelInfo.AccCTopicCode = '+str(@AccCTopicCode)+') '+
	' GROUP BY Pay.PersonelInfo.AccCTopicCode,FormsInfoOffice.InfoID,FixedCalculated.PersonelNO,FormsInfoOffice.InfoName_L1,'+
	' Pay.PersonelInfo.name_L1 + '' '' + Pay.PersonelInfo.lastName_L1,PersonelInfo.fatherName_L1'

------------------------------------------------------
set @Query='if exists (SELECT * FROM sysobjects where id = object_id(N''Pay.[SalaryWageDecList]'') and xtype in (N''FN'',N''IF'',N''TF''))
			 drop function Pay.[SalaryWageDecList]'

Exec (@Query)
--print @Query
set @Query='create function Pay.[SalaryWageDecList] () RETURNS TABLE AS  RETURN ( '+@CASEQuery+')'
--print @Query
Exec (@Query)
end
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
----------------------------------------------------------------------
----------------------------------------------------------------------
----------------------------------------------------------------------
----------------------------------------------------------------------
SET QUOTED_IDENTIFIER ON 
GO
--SET ANSI_NULLS OFF 
GO
CREATE PROCEDURE Pay.[GetInterdicts4Items] (@M int=1 ) as
begin            
DECLARE abc CURSOR FOR 
  SELECT TOP 30 Pay.InterdictItems.SalaryID,FormsInfo.InfoName_L1
  FROM   Pay.InterdictItems INNER JOIN  Pay.FormsInfo ON Pay.InterdictItems.SalaryID = Pay.FormsInfo.FormInfoID
  GROUP BY Pay.InterdictItems.SalaryID,FormsInfo.InfoName_L1,FormsInfo.InfoID
  ORDER BY Pay.FormsInfo.InfoID

DECLARE @Query  varchar(8000)
DECLARE @CASEQuery varchar(8000)
set     @CASEQuery='SELECT  E.PersonStateNo,E.LicenceID,InterdictsList.InterdicTypeID,InterdictsList.OfficeID,InterdictsList.jobCode,InterdictsList.gradeID,
                      Pay.InterdictsList.GroupCode,PersonStateNo/PersonStateNo AS balance1,PersonStateNo AS رديف,E.PersonelNo AS كدپرسنل,
                      E.personelstate_L1 AS وضعيت,E.PersonelName_L1 AS مشخصات,E.fatherName_L1 AS [نام‏پدر],
                      E.Nationality_L1 AS مليت,E.BirthDate AS [تاريخ‏تولد],E.SodurDate AS [تاريخ‏صدور],
                      E.BirthPlace_L1 AS [محل‏تولد],E.SodurPlace_L1 AS [محل‏صدور],E.NationalID AS كدملي,
                      E.IDNumber AS [شماره‏شناسنامه],E.Sex_L1 AS جنسيت,E.marriage_L1 AS [وضعيت‏تاهل],
                      E.childnumber_L1 AS تعدادفرزند,E.SupPepNumber AS [افرادتحت‏تكفل],E.licence_L1 AS مدرك,
                      E.studyField_L1 AS رشته,E.StudyCity_L1 AS [محل‏تحصيل],E.UnivercityName_L1 AS دانشگاه,
                      E.StudyFinishedate AS [تاريخ‏اخذمدرك],E.StudyAverage AS معدل,E.employDate AS [تاريخ‏استخدام],
                      E.finishEmployDate AS [تاريخ‏پايان‏قرارداد],E.BankName_L1 AS بانك,E.TaxCalculationName_L1 AS [مبناي‏ماليات],
                      E.TaxZoneName_L1 AS ماليات,E.BranchCode AS شعبه,E.AccountNumber AS [شماره‏حساب],
                      E.insurancename AS بيمه,E.InsuranceNumber AS [شماره‏بيمه],E.address_L1 AS آدرس,
                      E.Note_L1 AS توضيحات,E.Tel AS تلفن,E.name_L1 AS نام,E.lastName_L1 AS فاميلي,
                      E.AccName_L1 AS [نوع‏حساب],InterdictsList.InterdictNo AS [شماره‏حكم],InterdictsList.InterdictDate AS [تاريخ‏حكم],
                      Pay.InterdictsList.JobName_L1 AS [پست‏سازماني],InterdictsList.grade_L1 AS [رتبه‏شغلي],InterdictsList.jobCity_L1 AS [محل‏خدمت],
                      Pay.InterdictsList.InterdicType_L1 AS [نوع‏حكم],InterdictsList.InterdicStartDate AS [تاريخ‏شروع‏حكم],InterdictsList.OfficeName_L1 AS واحدسازماني,
                      Pay.InterdictsList.InterdicEndDate AS [تاريخ‏پايان‏حكم],E.SoldierState_L1 AS [نظام‏وظيفه],E.PostalCode AS كدپستي ,
                      Pay.InterdictsList.GroupName AS گروه  '
DECLARE @SalayId int 
DECLARE @InfoName  varchar(50)
OPEN abc;
FETCH NEXT FROM abc into @SalayId,@InfoName
WHILE (@@FETCH_STATUS = 0)
begin   
set @CASEQuery=@CASEQuery+',SUM(CASE InterdictItems_9.SalaryID WHEN '+ltrim(str(@SalayId))+'THEN InterdictItems_9.Amount ELSE 0 END)AS ['+replace(@InfoName,' ','‏')+'] '
	FETCH NEXT FROM abc into @SalayId,@InfoName
end
CLOSE abc;
DEALLOCATE abc;
set @CASEQuery=@CASEQuery+ ',SUM( InterdictItems_9.Amount ) AS [جمع‏مزايا]  '


------------------------------------------------------
set @CASEQuery=@CASEQuery+ ' FROM         Pay.InterdictsList INNER JOIN
                      EmployeeInfo E ON Pay.InterdictsList.PersonelNo = E.PersonelNo LEFT OUTER JOIN
                      Pay.InterdictItems AS InterdictItems_9 ON Pay.InterdictsList.InterdictID = InterdictItems_9.InterdictID
                      GROUP BY E.PersonStateNo,E.LicenceID,E.PersonelNo,E.personelstate_L1,E.PersonelName_L1,E.fatherName_L1,
                      E.Nationality_L1,E.BirthDate,E.SodurDate,E.BirthPlace_L1,E.SodurPlace_L1,
                      E.NationalID,E.IDNumber,E.Sex_L1,E.marriage_L1,E.childnumber_L1,
                      E.SupPepNumber,E.licence_L1,E.studyField_L1,E.StudyCity_L1,E.UnivercityName_L1,
                      E.StudyFinishedate,E.StudyAverage,E.employDate,E.finishEmployDate,
                      E.BankName_L1,E.TaxCalculationName_L1,E.TaxZoneName_L1,E.BranchCode,
                      E.AccountNumber,E.insurancename,E.InsuranceNumber,E.address_L1,E.Note_L1,
                      E.Tel,E.name_L1,E.lastName_L1,E.AccName_L1,InterdictsList.InterdictNo,
                      Pay.InterdictsList.InterdictDate,InterdictsList.JobName_L1,InterdictsList.grade_L1,InterdictsList.jobCity_L1,InterdictsList.InterdicType_L1,
                      Pay.InterdictsList.InterdicStartDate,InterdictsList.InterdicTypeID,InterdictsList.OfficeID,InterdictsList.OfficeName_L1,InterdictsList.InterdicEndDate,
                      Pay.InterdictsList.jobCode,E.SoldierState_L1,E.PostalCode,InterdictsList.gradeID,InterdictsList.GroupCode,InterdictsList.GroupName '
------------------------------------------------------
set @Query='if exists (SELECT * FROM sysobjects where id = object_id(N''Pay.Interdicts4ItemsList'') and xtype in (N''FN'',N''IF'',N''TF''))
			 drop function Pay.Interdicts4ItemsList'
Exec (@Query)
--print @Query  Exec GetInterdicts4Items
set @Query='create function Pay.[Interdicts4ItemsList] () RETURNS TABLE AS  RETURN ( '+@CASEQuery+')'
--print @Query
Exec (@Query)
end
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
GO
----------------------------------------------------------------------
----------------------------------------------------------------------
SET QUOTED_IDENTIFIER ON 
GO
--SET ANSI_NULLS OFF 
GO
CREATE PROCEDURE Pay.[GetFunctionsItems_FA] AS
begin
DECLARE abc CURSOR FOR SELECT    Pay.FunctionsItems.SalaryID,FormsInfo.InfoName_L1
FROM         Pay.Functions INNER JOIN
                      Pay.FunctionsItems ON Pay.Functions.FunctionID = Pay.FunctionsItems.FunctionID INNER JOIN
                       Pay.FormsInfo ON Pay.FunctionsItems.SalaryID = Pay.FormsInfo.FormInfoID
--WHERE     (Functions.Mounth >= 1)
GROUP BY Pay.FunctionsItems.SalaryID,FormsInfo.InfoName_L1,FormsInfo.InfoID
ORDER BY Pay.FormsInfo.InfoID

declare @Query varchar(max)
declare @CASEQuery varchar(max)
set     @CASEQuery=''

DECLARE @SalayId int 
DECLARE @InfoName  varchar(50)
DECLARE @ID int 
set @ID=1
OPEN abc;
FETCH NEXT FROM abc into @SalayId,@InfoName
WHILE (@@FETCH_STATUS = 0)
begin 
set @CASEQuery=@CASEQuery+',SUM(CASE Pay.FunctionsItems.SalaryID WHEN '+ltrim(@SalayId)+
               ' THEN ISNULL(FunctionsItems.FDaily,0)+ISNULL(FunctionsItems.FHours,0) ELSE 0 END) AS  ['+replace(@InfoName,' ','‏')+'] '
	FETCH NEXT FROM abc into @SalayId,@InfoName
    set @ID=@ID+1
 --   print @CASEQuery
end
CLOSE abc;
DEALLOCATE abc;
set @Query='if exists (SELECT * FROM sysobjects where id = object_id(N''Pay.[FunctionItemsList_FA]'') and xtype in (N''FN'',N''IF'',N''TF''))
			 drop function Pay.[FunctionItemsList_FA]'

Exec (@Query)
--print @Query   exec GetFunctionsItems_FA
set @Query='create FUNCTION Pay.FunctionItemsList_FA () RETURNS TABLE AS  RETURN 
(  SELECT Pay.Functions.PersonelNo AS شماره‏پرسنلي,Functions.Mounth AS  ماه,MAX(FunctionDay) AS روز,MAX(FunctionTime) AS ساعت  '+@CASEQuery+
'   FROM         Pay.Functions LEFT OUTER JOIN
                      Pay.FunctionsItems ON Pay.Functions.FunctionID = Pay.FunctionsItems.FunctionID 
    GROUP BY Pay.Functions.PersonelNo,Functions.Mounth ) '
--print @Query
Exec (@Query)
end
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
----------------------------------------------------------------------
----------------------------------------------------------------------
SET QUOTED_IDENTIFIER ON 
GO
--SET ANSI_NULLS OFF 
GO
CREATE FUNCTION Pay.MakeDocuments_Mission  ( @month int,@PersonelNoFROM int=0,@PersonelNoTo int=136901 )  
RETURNS  table  AS 
Return  (
SELECT    CASE Pay.FormTypes.TopicCodeKind
		WHEN 10 THEN Mission.AccTopicCode
		WHEN 5 THEN Pay.FormsInfo.AccTopicCode
		WHEN 2 THEN InfoDetails.AccTopicCode   END AS AccTopicCode,
	CASE Pay.FormTypes.DetailCodeKind
		WHEN 11 THEN Mission.AccDetailCode
		WHEN 7 THEN MissionInfo.AccDetailCode
		WHEN 5 THEN Pay.FormsInfo.AccDetailCode
		WHEN 2 THEN InfoDetails.AccDetailCode END AS AccDetailCode,
		MissionInfo.AccCTopicCode,MissionInfo.AccCTopicCode2,
		MissionInfo.AccCTopicCode3,ROUND(SUM(MissionInfo.Price),0)  AS debt,SUM(MissionInfo.Price)*0 credit,'بابت هزينه ماموريت' AS  _Dec
FROM         MissionInfo INNER JOIN
                      Mission ON MissionInfo.MissionID = Mission.MissionID INNER JOIN
                       Pay.FormsInfo ON Mission.MissionKind = Pay.FormsInfo.FormInfoID INNER JOIN
                      Pay.FormTypes ON Pay.FormsInfo.FormType =Pay.FormTypes.FormType LEFT OUTER JOIN
                       Pay.FormsInfo InfoDetails ON MissionInfo.ExpID = InfoDetails.FormInfoID
WHERE     (MissionInfo.InfoType = 0) And MissionInfo.Price >0 
		AND (ABS(SUBSTRING(Mission.MissionEndDate,6,2)) = @month )
		AND (    (Mission.DocNo IS NULL) OR  (Mission.DocNo = 0) )
		AND ( Mission.PersonelNo BETWEEN  @PersonelNoFROM and @PersonelNoTo )
group by CASE Pay.FormTypes.TopicCodeKind
		WHEN 10 THEN Mission.AccTopicCode 
		WHEN 5 THEN Pay.FormsInfo.AccTopicCode
		WHEN 2 THEN InfoDetails.AccTopicCode  END,
	CASE Pay.FormTypes.DetailCodeKind 
		WHEN 11 THEN Mission.AccDetailCode
		WHEN 7 THEN MissionInfo.AccDetailCode  
		WHEN 5 THEN Pay.FormsInfo.AccDetailCode
		WHEN 2 THEN InfoDetails.AccDetailCode  END  ,
	MissionInfo.AccCTopicCode,MissionInfo.AccCTopicCode2,MissionInfo.AccCTopicCode3

Union All

SELECT    CASE Pay.FormTypes.TopicCodeKind
  WHEN 10 THEN Mission.AccTopicCode
  WHEN 5 THEN Pay.FormsInfo.AccTopicCode
  WHEN 2 THEN InfoDetails.AccTopicCode
  END AS AccTopicCode,
  CASE Pay.FormTypes.DetailCodeKind
  WHEN 11 THEN Mission.AccDetailCode
  WHEN 7 THEN MissionInfo.AccDetailCode
  WHEN 5 THEN Pay.FormsInfo.AccDetailCode
  WHEN 2 THEN InfoDetails.AccDetailCode END AS AccDetailCode,
  MissionInfo.AccCTopicCode,MissionInfo.AccCTopicCode2,MissionInfo.AccCTopicCode3,
  SUM(MissionInfo.Price) AS  debt,SUM(MissionInfo.Price)*0 AS credit,
  'بابت هزينه ' + ' - ' +  InfoDetails.InfoName_L1 AS _Dec
FROM         MissionInfo INNER JOIN
                      Mission ON MissionInfo.MissionID = Mission.MissionID INNER JOIN
                       Pay.FormsInfo ON Mission.MissionKind = Pay.FormsInfo.FormInfoID INNER JOIN
                      Pay.FormTypes ON Pay.FormsInfo.FormType =Pay.FormTypes.FormType LEFT OUTER JOIN
                       Pay.FormsInfo InfoDetails ON MissionInfo.ExpID = InfoDetails.FormInfoID
WHERE     (MissionInfo.InfoType = 1) AND (ABS(SUBSTRING(Mission.MissionEndDate,6,2)) = @month )
  AND (    (Mission.DocNo IS NULL) OR  (Mission.DocNo = 0) )   and MissionInfo.Price >0 
		AND ( Mission.PersonelNo BETWEEN  @PersonelNoFROM and @PersonelNoTo )
group by CASE Pay.FormTypes.TopicCodeKind
  WHEN 10 THEN Mission.AccTopicCode
  WHEN 5 THEN Pay.FormsInfo.AccTopicCode
  WHEN 2 THEN InfoDetails.AccTopicCode  END,
   CASE Pay.FormTypes.DetailCodeKind
  WHEN 11 THEN Mission.AccDetailCode
  WHEN 7 THEN MissionInfo.AccDetailCode
  WHEN 5 THEN Pay.FormsInfo.AccDetailCode
  WHEN 2 THEN InfoDetails.AccDetailCode END  ,
 MissionInfo.AccCTopicCode,MissionInfo.AccCTopicCode2,
 MissionInfo.AccCTopicCode3,InfoDetails.InfoName_L1

Union All
SELECT  CASE Pay.FormTypes.TopicCodeKind
 WHEN 10 THEN Mission.AccTopicCode
 WHEN 5 THEN Pay.FormsInfo.AccTopicCode
 WHEN 2 THEN InfoDetails.AccTopicCode END AS AccTopicCode,
 CASE Pay.FormTypes.DetailCodeKind
 WHEN 11 THEN Mission.AccDetailCode
 WHEN 7 THEN MissionInfo.AccDetailCode
 WHEN 5 THEN Pay.FormsInfo.AccDetailCode
 WHEN 2 THEN InfoDetails.AccDetailCode END AS AccDetailCode,
 MissionInfo.AccCTopicCode,MissionInfo.AccCTopicCode2,MissionInfo.AccCTopicCode3,
 cast( ROUND(QrySumPrice.Price / TotalFun.SumFun * MissionInfo.FunMission,0) AS money) AS  debt,
  cast(0*QrySumPrice.Price / TotalFun.SumFun * MissionInfo.FunMission AS money)   AS credit,
 'بابت هزينه ' + ' - ' + InfoDetails.InfoName_L1 AS _Dec
FROM    MissionInfo
        INNER JOIN
         (SELECT     MissionID,SUM(FunMission) AS SumFun
          FROM         MissionInfo
          WHERE     (InfoType = 0)
          GROUP BY MissionID) TotalFun ON MissionInfo.MissionID = TotalFun.MissionID
        INNER JOIN
         (SELECT     MissionInfo.Price,MissionInfo.MissionID,expid
          FROM         MissionInfo INNER JOIN
            Mission ON MissionInfo.MissionID = Mission.MissionID
          WHERE     (MissionInfo.InfoType = 2) ) QrySumPrice ON
          MissionInfo.MissionID = QrySumPrice.MissionID INNER JOIN
          Mission ON MissionInfo.MissionID = Mission.MissionID INNER JOIN
           Pay.FormsInfo ON Mission.MissionKind = Pay.FormsInfo.FormInfoID INNER JOIN
          Pay.FormTypes ON Pay.FormsInfo.FormType =Pay.FormTypes.FormType LEFT OUTER JOIN
           Pay.FormsInfo InfoDetails ON QrySumPrice.expid = InfoDetails.FormInfoID

WHERE     (MissionInfo.InfoType = 0)
      AND  ROUND(QrySumPrice.Price / TotalFun.SumFun * MissionInfo.FunMission,0) >0
      AND (ABS(SUBSTRING(Mission.MissionEndDate,6,2)) = @month )
      AND ((Mission.DocNo IS NULL) OR  (Mission.DocNo = 0) )
		AND ( Mission.PersonelNo BETWEEN  @PersonelNoFROM and @PersonelNoTo )
Union All
SELECT 	FormInfoMission.AccTopicCode,PersonelInfo.AccDetailCode,FormInfoMission.AccCTopicCode,
	 FormInfoMission.AccCTopicCode2,0 AS AccCTopicCode3,0 AS debt,ROUND(SUM(MissionInfo.Price),0)  AS credit,'بابت حق ماموريت ' AS Comments
FROM         MissionInfo INNER JOIN
                      Mission ON MissionInfo.MissionID = Mission.MissionID INNER JOIN
                      Pay.PersonelInfo ON Mission.PersonelNo = Pay.PersonelInfo.PersonelNo CROSS JOIN
                          (SELECT    Pay.FormTypes.TopicCodeKind,FormTypes.DetailCodeKind,FormTypes.CTopicCodeKind,FormTypes.CTopicCode2Kind,
                                                  Pay.FormTypes.CTopicCode3Kind,FormsInfo.AccTopicCode,FormsInfo.AccDetailCode,FormsInfo.AccCTopicCode,
                                                   Pay.FormsInfo.AccCTopicCode2
                             FROM          Pay.FormsInfo INNER JOIN
                                                   Pay.FormTypes ON Pay.FormsInfo.FormType =Pay.FormTypes.FormType
                             WHERE     (FormTypes.FormType = 86)) FormInfoMission
Where 		 MissionInfo.Price >0 
		AND (ABS(SUBSTRING(Mission.MissionEndDate,6,2)) = @month )
		AND (    (Mission.DocNo IS NULL) OR  (Mission.DocNo = 0) )
				AND ( Mission.PersonelNo BETWEEN  @PersonelNoFROM and @PersonelNoTo )
GROUP BY Mission.PersonelNo,PersonelInfo.AccTopicCode,PersonelInfo.AccDetailCode,PersonelInfo.AccCTopicCode,PersonelInfo.AccCTopicCode2,
                      FormInfoMission.TopicCodeKind,FormInfoMission.DetailCodeKind,FormInfoMission.CTopicCodeKind,FormInfoMission.CTopicCode2Kind,
                      FormInfoMission.CTopicCode3Kind,FormInfoMission.AccTopicCode,FormInfoMission.AccDetailCode,FormInfoMission.AccCTopicCode,
                      FormInfoMission.AccCTopicCode2
)

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
----------------------------------------------------------------------
----------------------------------------------------------------------
SET QUOTED_IDENTIFIER ON 
GO
--SET ANSI_NULLS OFF 
GO
CREATE FUNCTION Pay.PaymentDecExt  ( @PersonelNoFROM int=0,@PersonelNoTo int=9999999,@month int )  
RETURNS  table  AS 
Return  (
SELECT     FixedCalculated.FunctionID,FixedCalculated.PersonelNO,
		SUM(FixedCalculated.Price) + MAX(FirstRemain.PaymentLoan) AS Price,FormsInfo.InfoID,
                      Pay.FormsInfo.InfoName_L1 , FixedCalculated.calculatekind,FixedCalculated.SalaryID
FROM         FixedCalculated INNER JOIN
                      FixedCalActive() FixedCalActive ON FixedCalculated.Mounth = FixedCalActive.Mounth AND FixedCalculated.ArchiveID = FixedCalActive.F_ArchiveID AND
                       FixedCalculated.PersonelNO = FixedCalActive.PersonelNO INNER JOIN
                       Pay.FormsInfo ON FixedCalculated.FunctionID = Pay.FormsInfo.FormInfoID INNER JOIN
            (
			SELECT	PersonelDecExt.PersonelNo,PersonelDecExt.FormInfoID,
					SUM(PersonelDecExt.PaymentLoan) AS PaymentLoan
			FROM	PersonelDecExt INNER JOIN
					 Pay.FormsInfo ON Pay.PersonelDecExt.FormInfoID = Pay.FormsInfo.FormInfoID
			WHERE	(FormsInfo.PayMentActive = 1) AND (PersonelDecExt.FirstMounth <= @month )  and  
					(PersonelDecExt.PersonelNO BETWEEN  @PersonelNoFROM and @PersonelNoTo )
			GROUP BY Pay.PersonelDecExt.PersonelNo,PersonelDecExt.FormInfoID
			) FirstRemain 
			
			 ON FixedCalculated.PersonelNO = FirstRemain.PersonelNo AND 
                      FixedCalculated.FunctionID = FirstRemain.FormInfoID
WHERE     (FixedCalculated.Mounth <= @month) AND (FormsInfo.PayMentActive = 1)--------<=
AND      (FixedCalculated.PersonelNO BETWEEN  @PersonelNoFROM and @PersonelNoTo )
AND (FixedCalculated.BedBes = 2)
GROUP BY FixedCalculated.FunctionID,FixedCalculated.PersonelNO,FormsInfo.InfoID,FormsInfo.InfoName_L1 , 
		FixedCalculated.calculatekind,FixedCalculated.SalaryID
		
UNION ALL
SELECT  MAX( FixedCalculated.FunctionID) AS FunctionID,FixedCalculated.PersonelNO,
		SUM(FixedCalculated.Price) +ISNULL( MAX(FirstRemain.PaymentLoan),0) - ISNULL(MAX(TadilLoan),0) AS Price,FormsInfo.InfoID,
                      Pay.FormsInfo.InfoName_L1 , FixedCalculated.calculatekind,FixedCalculated.SalaryID
FROM         FixedCalculated INNER JOIN
                      FixedCalActive() FixedCalActive ON FixedCalculated.Mounth = FixedCalActive.Mounth AND 
                      FixedCalculated.ArchiveID = FixedCalActive.F_ArchiveID AND
                       FixedCalculated.PersonelNO = FixedCalActive.PersonelNO INNER JOIN
                       Pay.FormsInfo ON FixedCalculated.SalaryID = Pay.FormsInfo.FormInfoID left outer JOIN
            (
			SELECT	PersonelDecExt.PersonelNo,PersonelDecExt.FormInfoID,
					SUM(PersonelDecExt.PaymentLoan) AS PaymentLoan ,
					SUM(PersonelDecExt.EmployeeAmount) AS TadilLoan
			FROM	PersonelDecExt INNER JOIN
					 Pay.FormsInfo ON Pay.PersonelDecExt.FormInfoID = Pay.FormsInfo.FormInfoID
			WHERE	(FormsInfo.PayMentActive = 1) AND (PersonelDecExt.FirstMounth <= @month )  and  
					(PersonelDecExt.PersonelNO BETWEEN  @PersonelNoFROM and @PersonelNoTo )
			GROUP BY Pay.PersonelDecExt.PersonelNo,PersonelDecExt.FormInfoID
			) FirstRemain 
					
					ON FixedCalculated.PersonelNO = FirstRemain.PersonelNo AND 
                      FixedCalculated.SalaryID = FirstRemain.FormInfoID
WHERE     (FixedCalculated.Mounth <= @month) AND (FormsInfo.PayMentActive = 1)--------<=
and      (FixedCalculated.PersonelNO BETWEEN  @PersonelNoFROM and @PersonelNoTo )
GROUP BY FixedCalculated.PersonelNO,FormsInfo.InfoID,FormsInfo.InfoName_L1 , 
		FixedCalculated.calculatekind,FixedCalculated.SalaryID

)
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
----------------------------------------------------------------------
----------------------------------------------------------------------
SET QUOTED_IDENTIFIER ON 
GO
--SET ANSI_NULLS OFF 
GO
CREATE FUNCTION Pay.UpdateDifferanteCalculate  (@Mounth int =1 ,@year int=84,@YearMounth varchar(7)= '81/01',
 @PersonelNoFROM int=0,@PersonelNoTo int=9999999 )  
RETURNS  table  AS 
return  (
SELECT    CalcInLast.FixedCID,
   CASE InterdictForUse.CalCulateType 
	WHEN 0 THEN 0 
	WHEN 1 THEN ROUND(InterdictForUse.Amount / 30 * SUM(Pay.Functions.FunctionDay),0)
	WHEN 2 THEN ROUND(InterdictForUse.Amount / Pay.StandardTimes.StandardDays * SUM(Pay.Functions.Functionday),0)
	--WHEN 3 THEN ROUND(InterdictForUse.Amount / Pay.StandardTimes.Standardtimes * SUM(Pay.Functions.FunctionTime),0)
   WHEN 3 THEN CASE WHEN  SUM(Pay.Functions.FunctionTime) > Pay.StandardTimes.Standardtimes THEN
			InterdictForUse.Amount ELSE 	
		ROUND( InterdictForUse.Amount / Pay.StandardTimes.Standardtimes * 
		 SUM(Pay.Functions.FunctionTime) ,0) END 	
	WHEN 4 THEN InterdictForUse.Amount
	WHEN 5  THEN CASE  WHEN SUM(Pay.Functions.FunctionDay) >30 THEN InterdictForUse.Amount ELSE  ROUND(InterdictForUse.Amount / 30 * SUM(Pay.Functions.FunctionDay),0)  END 
	WHEN 6 THEN ROUND(InterdictForUse.Amount * SUM(Pay.Functions.Functionday),0)
	WHEN 7 THEN ROUND(InterdictForUse.Amount / 30 * Pay.StandardTimes.StandardDays ,0)
	WHEN 8 THEN ROUND(InterdictForUse.Amount /30* ( SUM(Pay.Functions.Functionday + ISNULL(Pay.Functions.SickDay,0))),0) 
	WHEN 11 THEN InterdictForUse.Amount 
	WHEN 14 THEN  ROUND( InterdictForUse.Amount / Pay.StandardTimes.Standardtimes * SUM( Pay.Functions.FunctionTime) ,0)  

    WHEN 15 THEN ROUND(InterdictForUse.Amount / Pay.StandardTimes.StandardDays* ( SUM(Pay.Functions.Functionday + ISNULL(Pay.Functions.SickDay,0))),0)

	ELSE 0 	end - CalcInLast.Price AS price  
FROM         Pay.Functions INNER JOIN
                      InterdictForUse (@YearMounth,1,1,@PersonelNoFROM ,@PersonelNoTo , 0 )  InterdictForUse ON Pay.Functions.PersonelNo = InterdictForUse.PersonelNo INNER JOIN
                      Pay.PersonelInfo ON Pay.Functions.PersonelNo = Pay.PersonelInfo.PersonelNo INNER JOIN
                          (SELECT     PersonelNO,SalaryID,MIN(FixedCID) AS FixedCID,SUM(Price) AS Price
                             FROM         FixedCalculated
                             WHERE     (Mounth = @Mounth ) AND (Price > 0) AND (ArchiveID = 0) AND (BedBes = 1) AND (CalCulateKind = 1) AND (ShowListKind = 1)AND
								(MounthRetard =  @Mounth ) 
                             GROUP BY PersonelNO,SalaryID) CalcInLast ON InterdictForUse.SalaryID = CalcInLast.SalaryID AND 
                      InterdictForUse.PersonelNo = CalcInLast.PersonelNO LEFT OUTER JOIN
                      StandardTimes ON Pay.Functions.Mounth = StandardTimes.InfoID
WHERE     (Pay.Functions.Mounth =  @Mounth ) and  (Pay.Functions.YearID =  Left(@YearMounth,4) ) and ( Pay.Functions.PersonelNo between @PersonelNoFROM  and @PersonelNoTo  ) 

group by 	 InterdictForUse.CalCulateType,InterdictForUse.Amount,Pay.StandardTimes.StandardDays,Pay.StandardTimes.Standardtimes,CalcInLast.FixedCID,CalcInLast.Price 
             
Having  CASE InterdictForUse.CalCulateType 
		WHEN 0 THEN 0 
		WHEN 1 THEN ROUND(InterdictForUse.Amount / 30 * SUM(Pay.Functions.FunctionDay),0)
		WHEN 2 THEN ROUND(InterdictForUse.Amount / Pay.StandardTimes.StandardDays * SUM(Pay.Functions.Functionday),0)
		WHEN 3 THEN ROUND(InterdictForUse.Amount / Pay.StandardTimes.Standardtimes * SUM(Pay.Functions.FunctionTime),0)
		WHEN 4 THEN InterdictForUse.Amount
		WHEN 5  THEN CASE  WHEN SUM(Pay.Functions.FunctionDay) >30 THEN InterdictForUse.Amount ELSE  ROUND(InterdictForUse.Amount / 30 * SUM(Pay.Functions.FunctionDay),0)  END 
		WHEN 6 THEN ROUND(InterdictForUse.Amount * SUM(Pay.Functions.Functionday),0)
		WHEN 7 THEN ROUND(InterdictForUse.Amount / 30 * Pay.StandardTimes.StandardDays ,0)
		WHEN 8 THEN ROUND(InterdictForUse.Amount /30* ( SUM(Pay.Functions.Functionday + ISNULL(Pay.Functions.SickDay,0))),0) 
		WHEN 11 THEN InterdictForUse.Amount 
    	WHEN 14 THEN  ROUND( InterdictForUse.Amount / Pay.StandardTimes.Standardtimes * SUM( Pay.Functions.FunctionTime) ,0)  
	ELSE 0 	end - CalcInLast.Price <> 0)

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
----------------------------------------------------------------------
----------------------------------------------------------------------
SET QUOTED_IDENTIFIER ON 
GO
--SET ANSI_NULLS OFF 
GO
CREATE FUNCTION Pay.InsouranceCheck  (@PrvInfoID int  )  
RETURNS  table  AS 
Return  (
SELECT     Pay.SalaryRange.SalaryID,FormsInfo_1.InfoName_L1,SUM(FormsInfo.InfoID) AS TotalInfoID,COUNT(FormsInfo.InfoID) AS CntInfoID,
'ليست بيمه در منوي اطلاعات پايه - عناوين محاسباتي حقوق ، بيمه و ماليات  بدرستي تنظيم نشده است  ' AS WarnNote
FROM          Pay.FormsInfo INNER JOIN
                      Pay.SalaryRange ON Pay.FormsInfo.FormInfoID = Pay.SalaryRange.FormInfoID INNER JOIN
                       Pay.FormsInfo FormsInfo_1 ON Pay.SalaryRange.SalaryID = FormsInfo_1.FormInfoID
WHERE     (FormsInfo.FormType = 55) AND (FormsInfo.PrvInfoID = @PrvInfoID)
GROUP BY Pay.SalaryRange.SalaryID,FormsInfo_1.InfoName_L1
HAVING      (NOT (SUM(FormsInfo.InfoID) = 4 AND COUNT(FormsInfo.InfoID) = 1 OR
                      SUM(FormsInfo.InfoID) IN (8,9) AND COUNT(FormsInfo.InfoID) = 3))
---------------------------------------------
Union All
--------------------------------------------
SELECT     Pay.SalaryRange.SalaryID,FormsInfo_1.InfoName_L1,SUM(FormsInfo.InfoID) AS TotalInfoID,COUNT(FormsInfo.InfoID) AS CntInfoID
, 'ليست بيمه با مزاياي مشمول بيمه در عناوين محاسباتي برابر نميباشد   ' AS WarnNote
FROM          Pay.FormsInfo INNER JOIN
                      Pay.SalaryRange ON Pay.FormsInfo.FormInfoID = Pay.SalaryRange.FormInfoID INNER JOIN
                       Pay.FormsInfo FormsInfo_1 ON Pay.SalaryRange.SalaryID = FormsInfo_1.FormInfoID
WHERE     (FormsInfo.FormType = 55) AND (FormsInfo.InfoID = 3) AND (SalaryRange.Kind = 0) AND (FormsInfo.PrvInfoID = @PrvInfoID) OR
                      (FormsInfo.FormType = 11) AND (FormsInfo.InfoID = 1) AND (SalaryRange.Kind = 0)
                      
AND Pay.SalaryRange.SalaryID IN(SELECT SalaryID FROM Pay.SalaryRange
                               WHERE (FormInfoID = @PrvInfoID ) AND (Kind = 0))                      
          
GROUP BY Pay.SalaryRange.SalaryID,FormsInfo_1.InfoName_L1
HAVING      (SUM(FormsInfo.InfoID) <> 4) OR
                      (SUM(FormsInfo.InfoID) <> 4))

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
----------------------------------------------------------------------
----------------------------------------------------------------------
----------------------------------------------------------------------
----------------------------------------------------------------------
SET QUOTED_IDENTIFIER ON 
GO
--SET ANSI_NULLS OFF 
GO
CREATE FUNCTION Pay.[Loan]  ( @PersonelNoFROM int =0,@PersonelNoTo int=9999999,
                        @MounthFROM int =1,@MounthTo int=12,@InfoIDFROM int=0,@InfoIDTo int=999
                        ,@StateFROM int=0,@StateTo int=99 )  
RETURNS  table  AS 
Return  (
SELECT PersonelNo,Name,InfoName_L1,EmployerAmount,EmployeeAmount,PaymentLoan,sumPrice,Remain FROM 
   (SELECT     Pay.PersonelDecExt.PersonelNo,PersonelInfo.name_L1 + ' ' + Pay.PersonelInfo.lastName_L1 AS Name,FormsInfo.InfoName_L1,
                      Pay.PersonelDecExt.EmployerAmount,PersonelDecExt.EmployeeAmount,PersonelDecExt.PaymentLoan ,
                      derivedtbl_1.sumPrice,PersonelDecExt.EmployerAmount - Pay.PersonelDecExt.PaymentLoan - ISNULL(derivedtbl_1.sumPrice,0) AS Remain
					  ,FormsInfo.InfoID,PersonelDecExt.State
FROM         Pay.PersonelDecExt INNER JOIN
                       Pay.FormsInfo ON Pay.PersonelDecExt.FormInfoID = Pay.FormsInfo.FormInfoID INNER JOIN
                      Pay.PersonelInfo ON Pay.PersonelDecExt.PersonelNo = Pay.PersonelInfo.PersonelNo INNER JOIN
                      Pay.FormTypes ON Pay.FormsInfo.FormType =Pay.FormTypes.FormType INNER JOIN
                          (SELECT     FixedCalculated.PersonelNO,FixedCalculated.SalaryID,FixedCalculated.FunctionID,SUM(FixedCalculated.Price) AS sumPrice
                             FROM         FixedCalculated INNER JOIN
                                                   Pay.FixedCalActive() AS FixedCalActive ON FixedCalculated.Mounth = FixedCalActive.Mounth AND FixedCalculated.YearID = FixedCalActive.YearID AND 
                                                   FixedCalculated.ArchiveID = FixedCalActive.F_ArchiveID AND 
                                                   FixedCalculated.PersonelNO = FixedCalActive.PersonelNO LEFT OUTER JOIN
                                                   StandardTimes ON FixedCalculated.Mounth = StandardTimes.InfoID
                                WHERE  ( FixedCalActive.Mounth Between @MounthFROM and @MounthTo   )AND (FixedCalculated.bedbes=2)

                             GROUP BY FixedCalculated.PersonelNO,FixedCalculated.SalaryID,FixedCalculated.FunctionID) AS derivedtbl_1 ON 
                      Pay.PersonelDecExt.PersonelNo = derivedtbl_1.PersonelNO AND Pay.PersonelDecExt.DecExtID = derivedtbl_1.FunctionID AND 
                      Pay.PersonelDecExt.FormInfoID = derivedtbl_1.SalaryID
WHERE     (FormTypes.SalaryKind IN (9,14))
UNION ALL 
SELECT     Pay.PersonelDecExt.PersonelNo,PersonelInfo.name_L1 + ' ' + Pay.PersonelInfo.lastName_L1 AS Name,FormsInfo.InfoName_L1,
                      Pay.PersonelDecExt.EmployerAmount,PersonelDecExt.EmployeeAmount,PersonelDecExt.PaymentLoan ,
                      0 AS sumPrice,PersonelDecExt.EmployerAmount - Pay.PersonelDecExt.PaymentLoan AS Remain
                      ,FormsInfo.InfoID,PersonelDecExt.State
FROM             Pay.FormsInfo INNER JOIN
                         Pay.PersonelDecExt ON Pay.FormsInfo.FormInfoID = Pay.PersonelDecExt.FormInfoID INNER JOIN
                         Pay.PersonelInfo ON Pay.PersonelDecExt.PersonelNo = Pay.PersonelInfo.PersonelNo INNER JOIN                      
                         Pay.FormTypes ON Pay.FormsInfo.FormType =Pay.FormTypes.FormType LEFT OUTER JOIN
                         FixedCalculated ON Pay.PersonelDecExt.FormInfoID = FixedCalculated.SalaryID AND 
                         Pay.PersonelDecExt.PersonelNo = FixedCalculated.PersonelNO AND Pay.PersonelDecExt.DecExtID = FixedCalculated.FunctionID
WHERE        (FixedCalculated.FunctionID IS NULL) AND (FixedCalculated.SalaryID IS NULL) AND (FixedCalculated.PersonelNO IS NULL) AND 
                         (FormTypes.SalaryKind IN (9, 14))) AS T2
WHERE   ( t2.PersonelNo Between @PersonelNoFROM and @PersonelNoTo)
AND   ( t2.InfoID  Between @InfoIDFROM and @InfoIDTo  ) 
AND   ( t2.State Between @StateFROM and @StateTo )


)
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
----------------------------------------------------------------------
----------------------------------------------------------------------
SET QUOTED_IDENTIFIER ON 
GO
--SET ANSI_NULLS OFF 
GO
CREATE FUNCTION Pay.[GetYearMounth] (@Mounth int ,@YearID int)
RETURNS varchar(7) 
begin
  DECLARE @Start varchar(10)
  DECLARE @Finish varchar(10)
  DECLARE @YM varchar(7)
  SELECT    @Start=  StartYear,@Finish= EndYear FROM util.MaliYear where YearID =@YearID
   set @YM = '0'+ltrim(str(@Mounth))
   set @YM = RIGHT(@YM,2) 
  if abs(substring(@Start,6,2))<=@Mounth 
    set @YM = substring(@Start,1,5)+@YM
 ELSE     
    set @YM = substring(@Finish,1,5)+@YM
  RETURN(@YM)   
end

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
----------------------------------------------------------------------
----------------------------------------------------------------------
----------------------------------------------------------------------
----------------------------------------------------------------------
--SET QUOTED_IDENTIFIER ON 
--GO
----SET ANSI_NULLS OFF 
--GO
--CREATE FUNCTION Tax4Rpt   (  @MounthFROM int =1, @MounthTo int =12, @ArchiveId int=0 )  
--RETURNS  table  AS 
--Return  (
----------------------------------------------------------------------------------------
--SELECT     PersonelNO,ISNULL(SUM(Column17),0) AS Column17,ISNULL(SUM(Column18),0) AS Column18,ISNULL(SUM(Column19),0) AS Column19
--     ,ISNULL(SUM(Column21),0) AS Column21,ISNULL(SUM(Column23),0) AS Column23,ISNULL(SUM(Column24),0) AS Column24,ISNULL(SUM(Column25),0) AS Column25
--	 ,ISNULL(SUM(Column27),0) AS Column27
--FROM(SELECT     FixedCalculated.PersonelNo,CASE WHEN salaryid IN
--      (SELECT     Pay.SalaryRange.SalaryID
--         FROM          Pay.FormsInfo INNER JOIN
--                               Pay.SalaryRange ON Pay.FormsInfo.FormInfoID = Pay.SalaryRange.FormInfoID
--         WHERE     (FormsInfo.FormType = 94) AND (FormsInfo.InfoID = 17)) THEN  
--             CASE WHENPay.FormTypes_sEffectKind.SalaryEffectKind = 1 THEN price ELSE - price END--price 
--             ELSE 0 END AS Column17,
--      CASE WHEN salaryid IN
--          (SELECT     Pay.SalaryRange.SalaryID
--             FROM          Pay.FormsInfo INNER JOIN
--                                   Pay.SalaryRange ON Pay.FormsInfo.FormInfoID = Pay.SalaryRange.FormInfoID
--             WHERE     (FormsInfo.FormType = 94) AND (FormsInfo.InfoID = 18)) THEN  
--             CASE WHENPay.FormTypes_sEffectKind.SalaryEffectKind = 1 THEN price ELSE - price END--price 
--             ELSE 0 END AS Column18,
--      CASE WHEN salaryid IN
--          (SELECT     Pay.SalaryRange.SalaryID
--             FROM          Pay.FormsInfo INNER JOIN
--                                   Pay.SalaryRange ON Pay.FormsInfo.FormInfoID = Pay.SalaryRange.FormInfoID
--             WHERE     (FormsInfo.FormType = 94) AND (FormsInfo.InfoID = 19)) THEN  
--             CASE WHENPay.FormTypes_sEffectKind.SalaryEffectKind = 1 THEN price ELSE - price END--price 
--             ELSE 0 END AS Column19,
             

             
--      CASE WHEN salaryid IN
--          (SELECT     Pay.SalaryRange.SalaryID
--             FROM          Pay.FormsInfo INNER JOIN
--                                   Pay.SalaryRange ON Pay.FormsInfo.FormInfoID = Pay.SalaryRange.FormInfoID
--             WHERE     (FormsInfo.FormType = 94) AND (FormsInfo.InfoID = 21)) THEN  
--             CASE WHENPay.FormTypes_sEffectKind.SalaryEffectKind = 1 THEN price ELSE - price END--price 
--             ELSE 0 END AS Column21,
             
--      CASE WHEN salaryid IN
--          (SELECT     Pay.SalaryRange.SalaryID
--             FROM          Pay.FormsInfo INNER JOIN
--                                   Pay.SalaryRange ON Pay.FormsInfo.FormInfoID = Pay.SalaryRange.FormInfoID
--             WHERE     (FormsInfo.FormType = 94) AND (FormsInfo.InfoID = 23)) THEN  
--             CASE WHENPay.FormTypes_sEffectKind.SalaryEffectKind = 1 THEN price ELSE - price END--price 
--             ELSE 0 END AS Column23,
             
--      CASE WHEN salaryid IN
--          (SELECT     Pay.SalaryRange.SalaryID
--             FROM          Pay.FormsInfo INNER JOIN
--                                   Pay.SalaryRange ON Pay.FormsInfo.FormInfoID = Pay.SalaryRange.FormInfoID
--             WHERE     (FormsInfo.FormType = 94) AND (FormsInfo.InfoID = 24)) THEN  
--             CASE WHENPay.FormTypes_sEffectKind.SalaryEffectKind = 1 THEN price ELSE - price END--price 
--             ELSE 0 END AS Column24,
             
--      CASE WHEN salaryid IN
--          (SELECT     Pay.SalaryRange.SalaryID
--             FROM          Pay.FormsInfo INNER JOIN
--                                   Pay.SalaryRange ON Pay.FormsInfo.FormInfoID = Pay.SalaryRange.FormInfoID
--             WHERE     (FormsInfo.FormType = 94) AND (FormsInfo.InfoID = 25)) THEN  
--             CASE WHENPay.FormTypes_sEffectKind.SalaryEffectKind = 1 THEN price ELSE - price END--price 
--             ELSE 0 END AS Column25


--,
             
--      CASE WHEN salaryid IN
--          (SELECT     Pay.SalaryRange.SalaryID
--             FROM          Pay.FormsInfo INNER JOIN
--                                   Pay.SalaryRange ON Pay.FormsInfo.FormInfoID = Pay.SalaryRange.FormInfoID
--             WHERE     (FormsInfo.FormType = 130) AND (FormsInfo.InfoID = 27)) THEN  
--             CASE WHENPay.FormTypes_sEffectKind.SalaryEffectKind = 1 THEN price ELSE - price END--price 
--             ELSE 0 END AS Column27             
      
             
                                                                                                          
----                        FROM         FixedCalculated
--FROM         Pay.FormTypes AS Pay.FormTypes_sEffectKind INNER JOIN
--                       Pay.FormsInfo ON Pay.FormTypes_sEffectKind.FormType = Pay.FormsInfo.FormType INNER JOIN
--                      FixedCalculated ON Pay.FormsInfo.FormInfoID = FixedCalculated.SalaryID
-- INNER JOIN
--                      FinalArchiveWithPersonelNO ON FixedCalculated.Mounth = FinalArchiveWithPersonelNO.Mounth AND 
--                      FixedCalculated.PersonelNO = FinalArchiveWithPersonelNO.PersonelNO 
--					  --AND FixedCalculated.ArchiveID = FinalArchiveWithPersonelNO.ArchiveID 
                      
--                        WHERE  (   FixedCalculated.ArchiveID = @ArchiveId ) AND ------------11111
--                        FixedCalculated.mounth Between  @MounthFROM AND  @MounthTo ) insourance
                        
                        
                        
--GROUP BY PersonelNo
--)

--GO
--SET QUOTED_IDENTIFIER OFF 
--GO
--SET ANSI_NULLS ON 
--GO
------------------------------------------------------------------------
----------------------------------------------------------------------
SET QUOTED_IDENTIFIER ON 
GO
--SET ANSI_NULLS OFF 
GO
CREATE FUNCTION Pay.Bonus4Use (@Mounth int = 11 )  
RETURNS Table AS 
return 
(

--SELECT     Pay.PersonelDecExt.PersonelNo,SUM(PersonelDecExt.EmployeeAmount) AS Bonus,SUM(PersonelDecExt.PaymentLoan) AS BonusTax,
--                      SUM(PersonelDecExt.EmployeeAmount - Pay.PersonelDecExt.PaymentLoan) AS BonusRate
--FROM         Pay.PersonelDecExt INNER JOIN
--                       Pay.FormsInfo ON Pay.PersonelDecExt.FormInfoID = Pay.FormsInfo.FormInfoID
--WHERE     (FormsInfo.FormType = 59) AND (ABS(SUBSTRING(PersonelDecExt.EndDate,6,2)) = @month)
--GROUP BY Pay.PersonelDecExt.PersonelNo

SELECT     Pay.PersonelDecExt.PersonelNo,SUM(PersonelDecExt.EmployeeAmount) AS Bonus,SUM(PersonelDecExt.PaymentLoan) AS BonusTax,
                      SUM(PersonelDecExt.EmployeeAmount - Pay.PersonelDecExt.PaymentLoan) AS BonusRate , 
					  SUM(case when Pay.FormsInfo.FormType= 59  then DayQuntity else 0 end) as DayQuntity
					  ,SUM(PersonelDecExt.EmployerAmount) AS EmployerAmount
					  ,SUM(case when Pay.FormsInfo.FormType = 59 then Pay.PersonelDecExt.EmployeeAmount else 0 end ) AS Bonus1
					  ,SUM(case when Pay.FormsInfo.FormType = 111 then Pay.PersonelDecExt.EmployeeAmount else 0 end ) AS Bonus2
FROM         Pay.PersonelDecExt INNER JOIN
                       Pay.FormsInfo ON Pay.PersonelDecExt.FormInfoID = Pay.FormsInfo.FormInfoID
WHERE     (FormsInfo.FormType in (59,111) ) AND (FormsInfo.infoid<=10) 
and  (len(PersonelDecExt.EndDate)=10) AND	(cast((SUBSTRING(PersonelDecExt.EndDate,6,2))as int) = case when @Mounth<13 then @Mounth else 12 end )  
and case when (@Mounth = 12 and (select EidiDisplayedSeparatelyOnTaxList from Pay.Config )=1 ) then 0 else 1 end =1

GROUP BY Pay.PersonelDecExt.PersonelNo

)



GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
----------------------------------------------------------------------
----------------------------------------------------------------------
SET QUOTED_IDENTIFIER ON 
GO
--SET ANSI_NULLS OFF 
GO
CREATE FUNCTION Pay.[CountOfMounths] (@PersonelNO int=1,@Mounth int=1 )
RETURNS money 
begin
DECLARE @CMounth money
SELECT    @CMounth= COUNT(Mounth) 
FROM         (SELECT     PersonelNO, Mounth
                        FROM         FixedCalculated
                        WHERE     (Mounth < @Mounth) AND (PersonelNO = @PersonelNO)
                        AND (ShowListKind = 11) 
                        AND (BedBes = 2) 
                        AND (price <> 0) 
                        AND (CalCulateKind = 11) 
                        GROUP BY PersonelNO, Mounth) AS aaa
GROUP BY PersonelNO
RETURN(@CMounth)
end
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
------------------------------------------------------------------------
------------------------------------------------------------------------
SET QUOTED_IDENTIFIER ON 
GO
--SET ANSI_NULLS OFF 
GO
CREATE  FUNCTION Pay.[MakeDocBonus] ( --@OfficeCodeFROM int=0,@OfficeCodeTo int=99999
                                         @OfficeCodes varchar(8000)
                                        ,@Mounth tinyint=12  ,@YearID int , @insuranceIDs varchar(8000)='0' )  
RETURNS table AS 
return
(
SELECT	'P01' AS Part , Pay.PersonelDecExt.PersonelNo,
        CASE Pay.FormTypes.TopicCodeKind
		WHEN 0 THEN 0
		WHEN 2 THEN INFONAME.AccTopicCode
		WHEN 3 THEN FormsInfo_Project.Proj_TopicCode
		WHEN 4 THEN FormsInfo_Office.AccTopicCode
		WHEN 6 THEN Pay.PersonelInfo.AccTopicCode
		WHEN 8 THEN FormsInfo_Proc.AccTopicCode
	end AS TopicCode,
	CASE Pay.FormTypes.DetailCodeKind
		WHEN 0 THEN 0
		WHEN 2 THEN INFONAME.AccDetailCode
		WHEN 3 THEN FormsInfo_Project.Proj_DetailCode
		WHEN 4 THEN FormsInfo_Office.AccDetailCode
		WHEN 6 THEN Pay.PersonelInfo.AccDetailCode
		WHEN 8 THEN FormsInfo_Proc.AccDetailCode
	end AS DetailCode,
	CASE Pay.FormTypes.CTopicCodeKind
		WHEN 0 THEN 0
		WHEN 2 THEN INFONAME.AccCTopicCode
		WHEN 3 THEN FormsInfo_Project.Proj_CTopicCode
		WHEN 4 THEN FormsInfo_Office.AccCTopicCode
		WHEN 6 THEN Pay.PersonelInfo.AccCTopicCode
		WHEN 8 THEN FormsInfo_Proc.AccCTopicCode
	END AS CTopicCode,
	CASE  Pay.FormTypes.CTopicCode2Kind
		WHEN 0 THEN 0
		WHEN 2 THEN INFONAME.AccCTopicCode2
		WHEN 3 THEN FormsInfo_Project.Proj_CTopicCode2
		WHEN 4 THEN FormsInfo_Office.AccCTopicCode2
		WHEN 6 THEN Pay.PersonelInfo.AccCTopicCode2
		WHEN 8 THEN FormsInfo_Proc.AccCTopicCode2
    	WHEN 11 THEN St.AccCTopicCode2
    	--WHEN 12 THEN st.AccCTopicCode2
	end AS CTopicCode2,
	CASE  Pay.FormTypes.CTopicCode3Kind
		WHEN 0 THEN 0
		WHEN 2 THEN INFONAME.AccCTopicCode3
		WHEN 3 THEN FormsInfo_Project.Proj_CTopicCode3
		WHEN 4 THEN FormsInfo_Office.AccCTopicCode3
		WHEN 6 THEN Pay.PersonelInfo.AccCTopicCode3
		WHEN 8 THEN FormsInfo_Proc.AccCTopicCode3
    	WHEN 10 THEN St.AccCTopicCode3
    	WHEN 11 THEN st.AccCTopicCode3

end AS CTopicCode3,
	SUM(ISNULL(PersonelDecExt.EmployeeAmount,0)) AS Bed,
	0 AS bes ,ISNULL(PersonelDecExt.DocNoBonus,0) AS DocNoBonus
FROM	PersonelDecExt INNER JOIN
	 Pay.FormsInfo ON Pay.PersonelDecExt.FormInfoID = Pay.FormsInfo.FormInfoID INNER JOIN
	PersonelInfo ON Pay.PersonelDecExt.PersonelNo = Pay.PersonelInfo.PersonelNo INNER JOIN
	FormTypes ON Pay.FormsInfo.FormType =Pay.FormTypes.FormType LEFT OUTER JOIN
	FormsInfo_4Type(12) FormsInfo_Office ON Pay.PersonelDecExt.OfficeInfoID = FormsInfo_Office.InfoID LEFT OUTER JOIN
		(SELECT     MIN(FormInfoID) AS FormInfoID,FormType,InfoID,MIN(InfoName_L1) AS InfoName_L1,MIN(AccTopicCode) AS Proj_TopicCode,
			MIN(AccDetailCode) AS Proj_DetailCode,MIN(AccCTopicCode) AS Proj_CTopicCode,MIN(AccCTopicCode2) AS Proj_CTopicCode2,
			MIN(AccCTopicCode3) AS Proj_CTopicCode3
		FROM         Pay.FormsInfo
		GROUP BY FormType,InfoID
		HAVING      (FormType IN (40/*,66*/))) FormsInfo_Project 
		ON (PersonelDecExt.ProjectInfoID = FormsInfo_Project.InfoID OR Pay.PersonelDecExt.ProjectInfoID = FormsInfo_Project.InfoID) LEFT OUTER JOIN
	 Pay.FormsInfo FormsInfo_Proc ON Pay.PersonelDecExt.ProcCode = FormsInfo_Proc.FormInfoID CROSS JOIN 
	(SELECT AccTopicCode,AccDetailCode,AccCTopicCode,AccCTopicCode2,AccCTopicCode3 FROM  Pay.FormsInfo WHERE (FormType = 59) AND (InfoID = 1)) INFONAME
	join Pay.StandardTimes ST  on ST.InfoID = @Mounth
WHERE  	(FormsInfo.FormType = 59) 
--AND (FormsInfo_Office.InfoID BETWEEN @OfficeCodeFROM AND @OfficeCodeTo )
AND Pay.ChkTick(@OfficeCodes,PersonelDecExt.OfficeCode)=1

AND (CAST(SUBSTRING(PersonelDecExt.EndDate,6,2) AS int) = @Mounth)

Group By  Pay.PersonelDecExt.PersonelNo,
        CASE Pay.FormTypes.TopicCodeKind
		WHEN 0 THEN 0
		WHEN 2 THEN INFONAME.AccTopicCode
		WHEN 3 THEN FormsInfo_Project.Proj_TopicCode
		WHEN 4 THEN FormsInfo_Office.AccTopicCode
		WHEN 6 THEN Pay.PersonelInfo.AccTopicCode
		WHEN 8 THEN FormsInfo_Proc.AccTopicCode
	end ,
	CASE Pay.FormTypes.DetailCodeKind
		WHEN 0 THEN 0
		WHEN 2 THEN INFONAME.AccDetailCode
		WHEN 3 THEN FormsInfo_Project.Proj_DetailCode
		WHEN 4 THEN FormsInfo_Office.AccDetailCode
		WHEN 6 THEN Pay.PersonelInfo.AccDetailCode
		WHEN 8 THEN FormsInfo_Proc.AccDetailCode
	end ,
	CASE Pay.FormTypes.CTopicCodeKind
		WHEN 0 THEN 0
		WHEN 2 THEN INFONAME.AccCTopicCode
		WHEN 3 THEN FormsInfo_Project.Proj_CTopicCode
		WHEN 4 THEN FormsInfo_Office.AccCTopicCode
		WHEN 6 THEN Pay.PersonelInfo.AccCTopicCode
		WHEN 8 THEN FormsInfo_Proc.AccCTopicCode
	end ,
	CASE  Pay.FormTypes.CTopicCode2Kind
		WHEN 0 THEN 0
		WHEN 2 THEN INFONAME.AccCTopicCode2
		WHEN 3 THEN FormsInfo_Project.Proj_CTopicCode2
		WHEN 4 THEN FormsInfo_Office.AccCTopicCode2
		WHEN 6 THEN Pay.PersonelInfo.AccCTopicCode2
		WHEN 8 THEN FormsInfo_Proc.AccCTopicCode2
    	WHEN 11 THEN St.AccCTopicCode2
    	--WHEN 12 THEN st.AccCTopicCode2
	end ,
	CASE  Pay.FormTypes.CTopicCode3Kind
		WHEN 0 THEN 0
		WHEN 2 THEN INFONAME.AccCTopicCode3 
		WHEN 3 THEN FormsInfo_Project.Proj_CTopicCode3
		WHEN 4 THEN FormsInfo_Office.AccCTopicCode3
		WHEN 6 THEN Pay.PersonelInfo.AccCTopicCode3
		WHEN 8 THEN FormsInfo_Proc.AccCTopicCode3
    	WHEN 10 THEN St.AccCTopicCode3
    	WHEN 11 THEN st.AccCTopicCode3
	end ,ISNULL(PersonelDecExt.DocNoBonus,0) 

--------------------------------------------------
UNION ALL
--------------------------------------------------

SELECT	'P02' AS Part , PersonelDecExt.PersonelNo,
        Tax_TopicCode,Tax_DetailCode,Tax_CTopicCode,
	CASE Pay.FormTypes.CTopicCode2Kind
    	WHEN 10 THEN Proj_CTopicCode2
    	WHEN 11 THEN St.AccCTopicCode2
    	--WHEN 12 THEN st.AccCTopicCode2
		else Tax_CTopicCode2 
	end Tax_CTopicCode2  ,
	CASE Pay.FormTypes.CTopicCode3Kind
    	WHEN 10 THEN st.AccCTopicCode3
    	WHEN 11 THEN st.AccCTopicCode3
		else Tax_CTopicCode3 
	end Tax_CTopicCode3  ,

	0 AS Bed,SUM(ISNULL(PersonelDecExt.PaymentLoan,0)) AS bes ,ISNULL(PersonelDecExt.DocNoBonus,0) AS DocNoBonus 
FROM	pay.PersonelDecExt PersonelDecExt INNER JOIN
	 Pay.FormsInfo ON PersonelDecExt.FormInfoID = Pay.FormsInfo.FormInfoID LEFT OUTER JOIN
	(SELECT  PersonelNo , FormInfo_Tax.FormInfoID , AccTopicCode AS Tax_TopicCode , AccDetailCode AS Tax_DetailCode , AccCTopicCode AS Tax_CTopicCode ,
       FormInfo_Tax.AccCTopicCode2 AS Tax_CTopicCode2 , FormInfo_Tax.AccCTopicCode3 AS Tax_CTopicCode3 

FROM     Pay.FormsInfo AS FormInfo_Tax
        INNER JOIN (
						 SELECT I.PersonelNo , I.TaxCalculationType 
							FROM Pay.Interdicts I INNER JOIN 
 
						(
						SELECT PersonelNo ,  MAX(Interdicts.InterdicStartDate) as MaxInterdicStartDate,  MAX(Interdicts.InterdicendDate) as MaxInterdicendDate
						FROM   Pay.Interdicts
						WHERE	--(State < 49) AND 
						          ( InterdicType = 0 )
								AND ( LEFT(Interdicts.InterdicStartDate,7) <= Pay.[GetYearMounth] (@Mounth , @YearID )) 
						GROUP BY PersonelNo 
						) AidTaxKind ON AidTaxKind.PersonelNo = I.PersonelNo AND AidTaxKind.MaxInterdicStartDate=I.InterdicStartDate AND AidTaxKind.MaxInterdicendDate=I.InterdicendDate
                   ) InterdictTax ON FormInfo_Tax.FormInfoID = InterdictTax.TaxCalculationType



WHERE    (FormInfo_Tax.FormType = 21) AND ( AccTopicCode > 0) ) FormsInfo_Tax ON PersonelDecExt.PersonelNo = FormsInfo_Tax.PersonelNo
 INNER JOIN	FormTypes ON Pay.FormsInfo.FormType =Pay.FormTypes.FormType
  	 	join Pay.StandardTimes ST  on ST.InfoID = @Mounth

 LEFT OUTER JOIN
                          (SELECT     MIN(FormInfoID) AS FormInfoID, FormType, InfoID, MIN(InfoName_L1) AS InfoName_L1, MIN(AccTopicCode) AS Proj_TopicCode, 
                                                   MIN(AccDetailCode) AS Proj_DetailCode, MIN(AccCTopicCode) AS Proj_CTopicCode, MIN(AccCTopicCode2) AS Proj_CTopicCode2, 
                                                   MIN(AccCTopicCode3) AS Proj_CTopicCode3
                             FROM         Pay.FormsInfo
                             GROUP BY FormType, InfoID
                             HAVING      (FormType IN (40/*, 66*/))) FormsInfo_Project ON PersonelDecExt.ProjectInfoID = FormsInfo_Project.InfoID

WHERE	(FormsInfo.FormType = 59)
AND (CAST(SUBSTRING(PersonelDecExt.EndDate,6,2) AS int) = @Mounth)
--AND (FormsInfo_Office.InfoID BETWEEN @OfficeCodeFROM AND @OfficeCodeTo )
AND Pay.ChkTick(@OfficeCodes,PersonelDecExt.OfficeCode)=1

GROUP BY  PersonelDecExt.PersonelNo,
        Tax_TopicCode,Tax_DetailCode,Tax_CTopicCode,
		CASE Pay.FormTypes.CTopicCode2Kind
    	WHEN 10 THEN Proj_CTopicCode2
    	WHEN 11 THEN ST.AccCTopicCode2
    	--WHEN 12 THEN st.AccCTopicCode2
		else Tax_CTopicCode2
	end ,
		CASE Pay.FormTypes.CTopicCode3Kind
    	WHEN 10 THEN ST.AccCTopicCode3
    	WHEN 11 THEN st.AccCTopicCode3
		else Tax_CTopicCode3 
	end ,ISNULL(PersonelDecExt.DocNoBonus,0) 
HAVING  SUM(ISNULL(PersonelDecExt.PaymentLoan,0))<>0
--------------------------------------------------
UNION ALL
--------------------------------------------------
SELECT	'P03' AS Part , Pay.PersonelDecExt.PersonelNo,

    CASE FormsInfo_BonussPayable.TopicCodeKind
		WHEN 0 THEN pay_TopicCode 
		WHEN 13 THEN CASE WHEN Pay.PersonelInfo.AccTopicCode =0 THEN  pay_TopicCode  ELSE  Pay.PersonelInfo.AccTopicCode END 
		ELSE FormsInfo_BonussPayable.pay_TopicCode
     END AS pay_TopicCode,
	CASE Pay.FormTypes.DetailCodeKind
		WHEN 0 THEN 0 
		WHEN 2 THEN pay_DetailCode 
		WHEN 6 THEN Pay.PersonelInfo.AccDetailCode 
		WHEN 10 THEN CASE WHEN pay_DetailCode =0 THEN Pay.PersonelInfo.AccDetailCode  ELSE  pay_DetailCode END 
		ELSE 0 END AS pay_DetailCode,
	CASE Pay.FormTypes.CTopicCodeKind
		WHEN 0 THEN 0
		WHEN 2 THEN pay_CTopicCode
		WHEN 3 THEN FormsInfo_Project.Proj_CTopicCode 
		WHEN 4 THEN FormsInfo_Office.AccCTopicCode
	ELSE 0 END AS pay_CTopicCode,
	CASE Pay.FormTypes.CTopicCode2Kind
		WHEN 0 THEN 0
		WHEN 2 THEN pay_CTopicCode2
		WHEN 3 THEN FormsInfo_Project.Proj_CTopicCode2 
		WHEN 4 THEN FormsInfo_Office.AccCTopicCode2
		WHEN 10 THEN Proj_CTopicCode2
    	WHEN 11 THEN St.AccCTopicCode2
    	--WHEN 12 THEN st.AccCTopicCode2
	ELSE 0 END AS pay_CTopicCode2,
	CASE Pay.FormTypes.CTopicCode3Kind
		WHEN 0 THEN 0
		WHEN 2 THEN pay_CTopicCode3
		WHEN 3 THEN FormsInfo_Project.Proj_CTopicCode3 
		WHEN 4 THEN FormsInfo_Office.AccCTopicCode3
    	WHEN 10 THEN ST.AccCTopicCode3
    	WHEN 11 THEN st.AccCTopicCode3
	ELSE 0 END AS pay_CTopicCode3,
		
	0 AS Bed, SUM(ISNULL(PersonelDecExt.EmployeeAmount,0)- ISNULL(PersonelDecExt.PaymentLoan,0)) AS bes ,ISNULL(PersonelDecExt.DocNoBonus,0) AS DocNoBonus 
FROM         FormsInfo_4Type(12) FormsInfo_Office RIGHT OUTER JOIN
                      Pay.PersonelDecExt INNER JOIN
                       Pay.FormsInfo ON Pay.PersonelDecExt.FormInfoID = Pay.FormsInfo.FormInfoID INNER JOIN
                      Pay.PersonelInfo ON Pay.PersonelDecExt.PersonelNo = Pay.PersonelInfo.PersonelNo 
					  ON FormsInfo_Office.InfoID = Pay.PersonelDecExt.OfficeInfoID 
					  LEFT OUTER JOIN
                          (SELECT     MIN(FormInfoID) AS FormInfoID, FormType, InfoID, MIN(InfoName_L1) AS InfoName_L1, MIN(AccTopicCode) AS Proj_TopicCode, 
                                                   MIN(AccDetailCode) AS Proj_DetailCode, MIN(AccCTopicCode) AS Proj_CTopicCode, MIN(AccCTopicCode2) AS Proj_CTopicCode2, 
                                                   MIN(AccCTopicCode3) AS Proj_CTopicCode3
                             FROM         Pay.FormsInfo
                             GROUP BY FormType, InfoID
                             HAVING      (FormType IN (40/*, 66*/))) FormsInfo_Project ON Pay.PersonelDecExt.ProjectInfoID = FormsInfo_Project.InfoID CROSS JOIN
                          (SELECT        Pay.FormsInfo.FormType, Pay.FormsInfo.AccTopicCode AS pay_TopicCode, Pay.FormsInfo.AccDetailCode AS pay_DetailCode, Pay.FormsInfo.AccCTopicCode AS pay_CTopicCode, Pay.FormsInfo.AccCTopicCode2 AS pay_CTopicCode2, 
                         Pay.FormsInfo.AccCTopicCode3 AS pay_CTopicCode3,Pay.FormTypes.TopicCodeKind
FROM             Pay.FormsInfo INNER JOIN
                         Pay.FormTypes ON Pay.FormsInfo.FormType =Pay.FormTypes.FormType


WHERE        (FormsInfo.FormType = 50) AND (FormsInfo.InfoID = 2)) FormsInfo_BonussPayable INNER JOIN
                      Pay.FormTypes ON FormsInfo_BonussPayable.formtype =Pay.FormTypes.FormType
/*FROM  (SELECT	formtype,AccTopicCode AS pay_TopicCode,AccDetailCode AS pay_DetailCode,
	AccCTopicCode AS pay_CTopicCode,AccCTopicCode2 AS pay_CTopicCode2,AccCTopicCode3 AS pay_CTopicCode3
	FROM         Pay.FormsInfo
	WHERE     (FormType = 50 AND infoId = 2)) FormsInfo_BonussPayable INNER JOIN
	FormTypes ON FormsInfo_BonussPayable.formtype =Pay.FormTypes.FormType CROSS JOIN
	PersonelDecExt INNER JOIN
	 Pay.FormsInfo ON Pay.PersonelDecExt.FormInfoID = Pay.FormsInfo.FormInfoID INNER JOIN
	PersonelInfo ON Pay.PersonelDecExt.PersonelNo = Pay.PersonelInfo.PersonelNo
*/
	join Pay.StandardTimes ST  on ST.InfoID = @Mounth
WHERE	(FormsInfo.FormType = 59)
AND (CAST(SUBSTRING(PersonelDecExt.EndDate,6,2) AS int) = @Mounth)
--AND (FormsInfo_Office.InfoID BETWEEN @OfficeCodeFROM AND @OfficeCodeTo )
AND Pay.ChkTick(@OfficeCodes,PersonelDecExt.OfficeCode)=1
group by  Pay.PersonelDecExt.PersonelNo,
        CASE FormsInfo_BonussPayable.TopicCodeKind
		WHEN 0 THEN pay_TopicCode 
		WHEN 13 THEN CASE WHEN Pay.PersonelInfo.AccTopicCode =0 THEN  pay_TopicCode  ELSE  Pay.PersonelInfo.AccTopicCode END 
		ELSE FormsInfo_BonussPayable.pay_TopicCode
     END ,	
	CASE Pay.FormTypes.DetailCodeKind
		WHEN 0 THEN 0 
		WHEN 2 THEN pay_DetailCode 
		WHEN 6 THEN Pay.PersonelInfo.AccDetailCode 
		WHEN 10 THEN CASE WHEN pay_DetailCode =0 THEN Pay.PersonelInfo.AccDetailCode  ELSE  pay_DetailCode END 
		ELSE 0 END,
	CASE Pay.FormTypes.CTopicCodeKind
		WHEN 0 THEN 0
		WHEN 2 THEN pay_CTopicCode
		WHEN 3 THEN FormsInfo_Project.Proj_CTopicCode
		WHEN 4 THEN FormsInfo_Office.AccCTopicCode
		ELSE 0 END ,
	CASE Pay.FormTypes.CTopicCode2Kind
		WHEN 0 THEN 0
		WHEN 2 THEN pay_CTopicCode2
		WHEN 3 THEN FormsInfo_Project.Proj_CTopicCode2 
		WHEN 4 THEN FormsInfo_Office.AccCTopicCode2
		WHEN 10 THEN Proj_CTopicCode2
    	WHEN 11 THEN St.AccCTopicCode2
    	--WHEN 12 THEN st.AccCTopicCode2
	ELSE 0 END ,
	CASE Pay.FormTypes.CTopicCode3Kind
		WHEN 0 THEN 0
		WHEN 2 THEN pay_CTopicCode3
		WHEN 3 THEN FormsInfo_Project.Proj_CTopicCode3 
		WHEN 4 THEN FormsInfo_Office.AccCTopicCode3
    	WHEN 10 THEN ST.AccCTopicCode3
    	WHEN 11 THEN st.AccCTopicCode3
	ELSE 0 END 
	
	 ,ISNULL(PersonelDecExt.DocNoBonus,0) 
)
  
  
  
  
  
----------------------------------------------------------------------
----------------------------------------------------------------------
  
  
  
  

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
----------------------------------------------------------------------
----------------------------------------------------------------------
SET QUOTED_IDENTIFIER ON 
GO
--SET ANSI_NULLS OFF 
GO
CREATE FUNCTION Pay.[MakeDocAnnuity] ( --@OfficeCodeFROM int=0,@OfficeCodeTo int=99999 
                                           @OfficeCodes varchar(8000), @Mounth tinyint=12  ,@Year int=1420, @insuranceIDs varchar(8000)='0' )  
RETURNS table AS 
return
(
SELECT	 Pay.PersonelDecExt.PersonelNo,
        CASE Pay.FormTypes.TopicCodeKind
		WHEN 0 THEN 0
		WHEN 2 THEN INFONAME.AccTopicCode
		WHEN 3 THEN FormsInfo_Project.Proj_TopicCode
		WHEN 4 THEN FormsInfo_Office.AccTopicCode
		WHEN 6 THEN Pay.PersonelInfo.AccTopicCode
		WHEN 8 THEN FormsInfo_Proc.AccTopicCode 
	end AS TopicCode,
	CASE Pay.FormTypes.DetailCodeKind
		WHEN 0 THEN 0
		WHEN 2 THEN INFONAME.AccDetailCode
		WHEN 3 THEN FormsInfo_Project.Proj_DetailCode
		WHEN 4 THEN FormsInfo_Office.AccDetailCode
		WHEN 6 THEN Pay.PersonelInfo.AccDetailCode
		WHEN 8 THEN FormsInfo_Proc.AccDetailCode
	end AS DetailCode,
	CASE Pay.FormTypes.CTopicCodeKind
		WHEN 0 THEN 0
		WHEN 2 THEN INFONAME.AccCTopicCode
		WHEN 3 THEN FormsInfo_Project.Proj_CTopicCode
		WHEN 4 THEN FormsInfo_Office.AccCTopicCode
		WHEN 6 THEN Pay.PersonelInfo.AccCTopicCode
		WHEN 8 THEN FormsInfo_Proc.AccCTopicCode
	end AS CTopicCode,
	CASE  Pay.FormTypes.CTopicCode2Kind
		WHEN 0 THEN 0
		WHEN 2 THEN INFONAME.AccCTopicCode2
		WHEN 3 THEN FormsInfo_Project.Proj_CTopicCode2
		WHEN 4 THEN FormsInfo_Office.AccCTopicCode2
		WHEN 6 THEN Pay.PersonelInfo.AccCTopicCode2
		WHEN 8 THEN FormsInfo_Proc.AccCTopicCode2
    	WHEN 10 THEN StandardTimes.AccCTopicCode2 
    	WHEN 11 THEN StandardTimes.AccCTopicCode2 
    	--WHEN 12 THEN st.AccCTopicCode2
	end AS CTopicCode2,
	CASE  Pay.FormTypes.CTopicCode3Kind
		WHEN 0 THEN 0
		WHEN 2 THEN INFONAME.AccCTopicCode3
		WHEN 3 THEN FormsInfo_Project.Proj_CTopicCode3
		WHEN 4 THEN FormsInfo_Office.AccCTopicCode3
		WHEN 6 THEN Pay.PersonelInfo.AccCTopicCode3
		WHEN 8 THEN FormsInfo_Proc.AccCTopicCode3
    	WHEN 10 THEN StandardTimes.AccCTopicCode3
    	WHEN 11 THEN StandardTimes.AccCTopicCode3
	end AS CTopicCode3,
	SUM(ISNULL(PersonelDecExt.EmployerAmount,0)) AS Bed,
	0 AS bes ,ISNULL(PersonelDecExt.DocNoAnnuity,0) AS DocNoAnnuity
FROM	PersonelDecExt INNER JOIN
	 Pay.FormsInfo ON Pay.PersonelDecExt.FormInfoID = Pay.FormsInfo.FormInfoID INNER JOIN
	PersonelInfo ON Pay.PersonelDecExt.PersonelNo = Pay.PersonelInfo.PersonelNo INNER JOIN
	FormTypes ON Pay.FormsInfo.FormType =Pay.FormTypes.FormType LEFT OUTER JOIN
	FormsInfo_4Type(12) FormsInfo_Office ON Pay.PersonelDecExt.OfficeInfoID = FormsInfo_Office.InfoID LEFT OUTER JOIN
		(SELECT     MIN(FormInfoID) AS FormInfoID,FormType,InfoID,MIN(InfoName_L1) AS InfoName_L1,MIN(AccTopicCode) AS Proj_TopicCode,
			MIN(AccDetailCode) AS Proj_DetailCode,MIN(AccCTopicCode) AS Proj_CTopicCode,MIN(AccCTopicCode2) AS Proj_CTopicCode2,
			MIN(AccCTopicCode3) AS Proj_CTopicCode3
		FROM         Pay.FormsInfo
		GROUP BY FormType,InfoID
		HAVING      (FormType IN (40/*,66*/))) FormsInfo_Project ON Pay.PersonelDecExt.ProjectInfoID = FormsInfo_Project.InfoID LEFT OUTER JOIN
	 Pay.FormsInfo FormsInfo_Proc ON Pay.PersonelDecExt.ProcCode = FormsInfo_Proc.FormInfoID CROSS JOIN 
	(SELECT AccTopicCode,AccDetailCode,AccCTopicCode,AccCTopicCode2,AccCTopicCode3 FROM  Pay.FormsInfo WHERE (FormType = 59) AND (InfoID = 2)) INFONAME
	 INNER JOIN
                      Pay.StandardTimes ON @Mounth = Pay.StandardTimes.InfoID 
WHERE	(FormsInfo.FormType = 59)
--AND (FormsInfo_Office.InfoID BETWEEN @OfficeCodeFROM AND @OfficeCodeTo )
AND Pay.ChkTick(@OfficeCodes,PersonelDecExt.OfficeCode)=1

AND (CAST(SUBSTRING(PersonelDecExt.EndDate,6,2) AS int) = @Mounth)
AND (CAST(SUBSTRING(PersonelDecExt.EndDate,1,4) AS int) = @Year)

Group By  Pay.PersonelDecExt.PersonelNo,
        CASE Pay.FormTypes.TopicCodeKind
		WHEN 0 THEN 0
		WHEN 2 THEN INFONAME.AccTopicCode
		WHEN 3 THEN FormsInfo_Project.Proj_TopicCode
		WHEN 4 THEN FormsInfo_Office.AccTopicCode
		WHEN 6 THEN Pay.PersonelInfo.AccTopicCode
		WHEN 8 THEN FormsInfo_Proc.AccTopicCode
	end ,
	CASE Pay.FormTypes.DetailCodeKind
		WHEN 0 THEN 0
		WHEN 2 THEN INFONAME.AccDetailCode
		WHEN 3 THEN FormsInfo_Project.Proj_DetailCode
		WHEN 4 THEN FormsInfo_Office.AccDetailCode
		WHEN 6 THEN Pay.PersonelInfo.AccDetailCode
		WHEN 8 THEN FormsInfo_Proc.AccDetailCode
	end ,
	CASE Pay.FormTypes.CTopicCodeKind
		WHEN 0 THEN 0
		WHEN 2 THEN INFONAME.AccCTopicCode
		WHEN 3 THEN FormsInfo_Project.Proj_CTopicCode
		WHEN 4 THEN FormsInfo_Office.AccCTopicCode
		WHEN 6 THEN Pay.PersonelInfo.AccCTopicCode
		WHEN 8 THEN FormsInfo_Proc.AccCTopicCode
	end ,
	CASE  Pay.FormTypes.CTopicCode2Kind
		WHEN 0 THEN 0
		WHEN 2 THEN INFONAME.AccCTopicCode2
		WHEN 3 THEN FormsInfo_Project.Proj_CTopicCode2
		WHEN 4 THEN FormsInfo_Office.AccCTopicCode2
		WHEN 6 THEN Pay.PersonelInfo.AccCTopicCode2
		WHEN 8 THEN FormsInfo_Proc.AccCTopicCode2
    	WHEN 10 THEN StandardTimes.AccCTopicCode2
    	WHEN 11 THEN StandardTimes.AccCTopicCode2
    	--WHEN 12 THEN st.AccCTopicCode2
	end ,
	CASE  Pay.FormTypes.CTopicCode3Kind
		WHEN 0 THEN 0
		WHEN 2 THEN INFONAME.AccCTopicCode3 
		WHEN 3 THEN FormsInfo_Project.Proj_CTopicCode3
		WHEN 4 THEN FormsInfo_Office.AccCTopicCode3
		WHEN 6 THEN Pay.PersonelInfo.AccCTopicCode3
		WHEN 8 THEN FormsInfo_Proc.AccCTopicCode3
    	WHEN 10 THEN StandardTimes.AccCTopicCode3
    	WHEN 11 THEN StandardTimes.AccCTopicCode3
	end ,ISNULL(PersonelDecExt.DocNoAnnuity,0) 

--------------------------------------------------
UNION ALL
--------------------------------------------------
SELECT	 Pay.PersonelDecExt.PersonelNo,
    CASE FormsInfo_BonussPayable.TopicCodeKind
		WHEN 0 THEN pay_TopicCode 
		WHEN 13 THEN CASE WHEN Pay.PersonelInfo.AccTopicCode =0 THEN  pay_TopicCode  ELSE  Pay.PersonelInfo.AccTopicCode END 
		else FormsInfo_BonussPayable.pay_TopicCode
     END AS pay_TopicCode,

	CASE Pay.FormTypes.DetailCodeKind
		WHEN 0 THEN 0 
		WHEN 2 THEN pay_DetailCode 
		WHEN 6 THEN Pay.PersonelInfo.AccDetailCode
		WHEN 10 THEN CASE WHEN pay_DetailCode =0 THEN Pay.PersonelInfo.AccDetailCode  ELSE  pay_DetailCode END  
		ELSE 0 END AS pay_DetailCode,
	CASE Pay.FormTypes.CTopicCodeKind
		WHEN 0 THEN 0
		WHEN 2 THEN pay_CTopicCode
		WHEN 3 THEN FormsInfo_Project.Proj_CTopicCode 
		WHEN 4 THEN FormsInfo_Office.AccCTopicCode
	ELSE 0 END AS pay_CTopicCode,
--		pay_CTopicCode2,pay_CTopicCode3,
CASE  Pay.FormTypes.CTopicCode2Kind
    	WHEN 10 THEN  Proj_CTopicCode2   
    	WHEN 11 THEN StandardTimes.AccCTopicCode2 
    	--WHEN 12 THEN st.AccCTopicCode2
		else pay_CTopicCode2
	end AS pay_CTopicCode2,
	CASE  Pay.FormTypes.CTopicCode3Kind
    	WHEN 10 THEN StandardTimes.AccCTopicCode3
    	WHEN 11 THEN StandardTimes.AccCTopicCode3
		else pay_CTopicCode3
	end AS pay_CTopicCode3,


	0 AS Bed, SUM(ISNULL(PersonelDecExt.EmployerAmount,0)) AS bes ,ISNULL(PersonelDecExt.DocNoAnnuity,0) AS DocNoAnnuity 

FROM         FormsInfo_4Type(12) FormsInfo_Office RIGHT OUTER JOIN
                      Pay.PersonelDecExt INNER JOIN
                       Pay.FormsInfo ON Pay.PersonelDecExt.FormInfoID = Pay.FormsInfo.FormInfoID INNER JOIN
                      Pay.PersonelInfo ON Pay.PersonelDecExt.PersonelNo = Pay.PersonelInfo.PersonelNo ON FormsInfo_Office.InfoID = Pay.PersonelDecExt.OfficeInfoID LEFT OUTER JOIN
                          (SELECT     MIN(FormInfoID) AS FormInfoID, FormType, InfoID, MIN(InfoName_L1) AS InfoName_L1, MIN(AccTopicCode) AS Proj_TopicCode, 
                                                   MIN(AccDetailCode) AS Proj_DetailCode, MIN(AccCTopicCode) AS Proj_CTopicCode, MIN(AccCTopicCode2) AS Proj_CTopicCode2, 
                                                   MIN(AccCTopicCode3) AS Proj_CTopicCode3
                             FROM         Pay.FormsInfo
                             GROUP BY FormType, InfoID
                             HAVING      (FormType IN (40/*, 66*/))) FormsInfo_Project ON Pay.PersonelDecExt.ProjectInfoID = FormsInfo_Project.InfoID CROSS JOIN
                          (SELECT        Pay.FormsInfo.FormType, Pay.FormsInfo.AccTopicCode AS pay_TopicCode, Pay.FormsInfo.AccDetailCode AS pay_DetailCode, Pay.FormsInfo.AccCTopicCode AS pay_CTopicCode, Pay.FormsInfo.AccCTopicCode2 AS pay_CTopicCode2, 
                         Pay.FormsInfo.AccCTopicCode3 AS pay_CTopicCode3,Pay.FormTypes.TopicCodeKind
FROM             Pay.FormsInfo INNER JOIN
                         Pay.FormTypes ON Pay.FormsInfo.FormType =Pay.FormTypes.FormType
WHERE        (FormsInfo.FormType = 50) AND (FormsInfo.InfoID = 3)) FormsInfo_BonussPayable INNER JOIN
                      Pay.FormTypes ON FormsInfo_BonussPayable.formtype =Pay.FormTypes.FormType	 INNER JOIN
                      Pay.StandardTimes ON @Mounth = Pay.StandardTimes.InfoID 


/*FROM  (SELECT	formtype,AccTopicCode AS pay_TopicCode,AccDetailCode AS pay_DetailCode,
	AccCTopicCode AS pay_CTopicCode,AccCTopicCode2 AS pay_CTopicCode2,AccCTopicCode3 AS pay_CTopicCode3
	FROM         Pay.FormsInfo
	WHERE     (FormType = 50 AND infoId = 3)) FormsInfo_BonussPayable INNER JOIN
	FormTypes ON FormsInfo_BonussPayable.formtype =Pay.FormTypes.FormType CROSS JOIN
	PersonelDecExt INNER JOIN
	 Pay.FormsInfo ON Pay.PersonelDecExt.FormInfoID = Pay.FormsInfo.FormInfoID INNER JOIN
	PersonelInfo ON Pay.PersonelDecExt.PersonelNo = Pay.PersonelInfo.PersonelNo
*/
WHERE	(FormsInfo.FormType = 59)
AND (CAST(SUBSTRING(PersonelDecExt.EndDate,6,2) AS int) = @Mounth)
AND (CAST(SUBSTRING(PersonelDecExt.EndDate,1,4) AS int) = @Year)
AND Pay.ChkTick(@OfficeCodes,PersonelDecExt.OfficeCode)=1

group by  Pay.PersonelDecExt.PersonelNo,
           CASE FormsInfo_BonussPayable.TopicCodeKind
		WHEN 0 THEN pay_TopicCode 
		WHEN 13 THEN CASE WHEN Pay.PersonelInfo.AccTopicCode =0 THEN  pay_TopicCode  ELSE  Pay.PersonelInfo.AccTopicCode END 
		else FormsInfo_BonussPayable.pay_TopicCode
     END ,

	CASE Pay.FormTypes.DetailCodeKind
		WHEN 0 THEN 0 
		WHEN 2 THEN pay_DetailCode 
		WHEN 6 THEN Pay.PersonelInfo.AccDetailCode 
		WHEN 10 THEN CASE WHEN pay_DetailCode =0 THEN Pay.PersonelInfo.AccDetailCode  ELSE  pay_DetailCode END 
		ELSE 0 END,
		CASE Pay.FormTypes.CTopicCodeKind
		WHEN 0 THEN 0
		WHEN 2 THEN pay_CTopicCode
		WHEN 3 THEN FormsInfo_Project.Proj_CTopicCode 
		WHEN 4 THEN FormsInfo_Office.AccCTopicCode
	ELSE 0 END 
	,
CASE  Pay.FormTypes.CTopicCode2Kind
    	WHEN 10 THEN  Proj_CTopicCode2 
    	WHEN 11 THEN StandardTimes.AccCTopicCode2 
    	--WHEN 12 THEN st.AccCTopicCode2
		else pay_CTopicCode2
	end ,
	CASE  Pay.FormTypes.CTopicCode3Kind
    	WHEN 10 THEN StandardTimes.AccCTopicCode3
    	WHEN 11 THEN StandardTimes.AccCTopicCode3
		else pay_CTopicCode3
	end 
	,ISNULL(PersonelDecExt.DocNoAnnuity,0) 
)

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
----------------------------------------------------------------------
----------------------------------------------------------------------
SET QUOTED_IDENTIFIER ON 
GO
--SET ANSI_NULLS OFF 
GO
CREATE FUNCTION Pay.[MakeDocBonusFull] ( 
--@OfficeCodeFROM int=0,@OfficeCodeTo int=99999,
@OfficeCodes varchar(8000) ,
                                           @EmployTypFROM int=0,@EmployTypTo int=99999,
                                           @PersonelStateFROM int=0,@PersonelStateTo int=99999,
                                           @PersonelNoFROM int=0,@PersonelNoTo int=99999 
                                           , @Mounth tinyint=12 ,@YearID int,  @ProjectIDFrom int=0,@ProjectIDTo int=9999999 , @insuranceIDs varchar(8000) )  

RETURNS  @retFindReports2 TABLE 
  (
     Part char(3),
    AccTopicCode bigint NULL,
	AccDetailCode int NULL,
	AccCTopicCode int NULL,
	AccCTopicCode2 int NULL,
	AccCTopicCode3 int NULL,
	debt money NULL,
	credit money NULL
  )
  AS 
BEGIN  
INSERT INTO @retFindReports2

SELECT   max(Part)Part ,   cast(MakeDocBonus_1.TopicCode AS bigint ) AS AccTopicCode,MakeDocBonus_1.DetailCode AS AccDetailCode,
MakeDocBonus_1.CTopicCode AS AccCTopicCode,MakeDocBonus_1.CTopicCode2 AS AccCTopicCode2,
                      MakeDocBonus_1.CTopicCode3 AS AccCTopicCode3,SUM(MakeDocBonus_1.Bed) AS debt,
                      SUM(MakeDocBonus_1.bes) AS credit
FROM         Pay.MakeDocBonus( --@OfficeCodeFrom,@OfficeCodeTo 
                                @OfficeCodes 
                               ,@Mounth ,@YearID, @insuranceIDs) AS MakeDocBonus_1 INNER JOIN
                      Pay.PersonelInfo ON MakeDocBonus_1.PersonelNo = Pay.PersonelInfo.PersonelNo RIGHT OUTER JOIN
                      Pay.Interdicts I ON Pay.PersonelInfo.PersonelNo = I.PersonelNo LEFT OUTER JOIN
                       Pay.FormsInfo AS FormsInfo_EmployType ON I.EmployTypeID = FormsInfo_EmployType.FormInfoID 
                      LEFT OUTER JOIN
                       Pay.FormsInfo AS FormsInfo_2PersonelState ON 
                      Pay.PersonelInfo.PersonelState = FormsInfo_2PersonelState.FormInfoID
					  LEFT OUTER JOIN  Pay.FormsInfo AS FormsInfo_Project ON I.ProjectID = FormsInfo_Project.FormInfoID
WHERE   	( MakeDocBonus_1.DocNoBonus = 0) 
			AND  (I.State < 50) AND (I.InterdicType = 0)
AND (FormsInfo_EmployType.InfoID BETWEEN @EmployTypFROM AND @EmployTypTo ) 
AND (FormsInfo_2PersonelState.InfoID BETWEEN @PersonelStateFROM AND @PersonelStateTo ) 
AND (PersonelInfo.PersonelNo BETWEEN @PersonelNoFROM AND @PersonelNoTo )

AND Pay.ChkTick(@OfficeCodes,I.OfficeCode)=1
AND ((Pay.ChkTick(@insuranceIDs,I.insuranceID)=1)or(isnull(I.insuranceID,0)=0))		

AND ( ( FormsInfo_Project.InfoID BETWEEN @ProjectIDFrom AND @ProjectIDTo) OR I.ProjectID = 0 ) 

GROUP BY MakeDocBonus_1.TopicCode,MakeDocBonus_1.DetailCode,MakeDocBonus_1.CTopicCode,MakeDocBonus_1.CTopicCode2,
                      MakeDocBonus_1.CTopicCode3
HAVING (SUM(MakeDocBonus_1.Bed)+SUM(MakeDocBonus_1.bes)>0)
                    
     RETURN
END
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
----------------------------------------------------------------------
----------------------------------------------------------------------
SET QUOTED_IDENTIFIER ON 
GO
--SET ANSI_NULLS OFF 
GO
CREATE FUNCTION Pay.[MakeDocAnnuityFull] ( --@OfficeCodeFROM int=0,@OfficeCodeTo int=99999,
                                             @OfficeCodes varchar(8000),
                                             @EmployTypFROM int=0,@EmployTypTo int=99999,
                                             @PersonelStateFROM int=0,@PersonelStateTo int=99999,
                                             @PersonelNoFROM int=0,@PersonelNoTo int=99999 
                                             , @Mounth tinyint=12  ,@Year int=1420,  @ProjectIDFrom int=0,@ProjectIDTo int=9999999  , @insuranceIDs varchar(8000)='0')  
RETURNS  @retFindReports2 TABLE 
  (
	AccTopicCode bigint ,
	AccDetailCode int ,
	AccCTopicCode int ,
	AccCTopicCode2 int ,
	AccCTopicCode3 int ,
	debt money ,
	credit money 
  )
  AS 
BEGIN  
INSERT INTO @retFindReports2
SELECT     cast(MakeDocAnnuity_1.TopicCode AS bigint ) AS AccTopicCode,MakeDocAnnuity_1.DetailCode AS AccDetailCode,MakeDocAnnuity_1.CTopicCode AS AccCTopicCode,MakeDocAnnuity_1.CTopicCode2 AS AccCTopicCode2,
                      MakeDocAnnuity_1.CTopicCode3 AS AccCTopicCode3,SUM(MakeDocAnnuity_1.Bed) AS debt,SUM(MakeDocAnnuity_1.bes) AS credit
FROM         Pay.MakeDocAnnuity( --@OfficeCodeFrom,@OfficeCodeTo 
                                   @OfficeCodes, @Mounth ,@Year , @insuranceIDs ) AS MakeDocAnnuity_1 INNER JOIN
                      Pay.PersonelInfo ON MakeDocAnnuity_1.PersonelNo = Pay.PersonelInfo.PersonelNo RIGHT OUTER JOIN
                      Pay.Interdicts I ON Pay.PersonelInfo.PersonelNo = I.PersonelNo LEFT OUTER JOIN
                       Pay.FormsInfo AS FormsInfo_EmployType ON I.EmployTypeID = FormsInfo_EmployType.FormInfoID LEFT OUTER JOIN
                       Pay.FormsInfo AS FormsInfo_2PersonelState ON Pay.PersonelInfo.PersonelState = FormsInfo_2PersonelState.FormInfoID
					  LEFT OUTER JOIN  Pay.FormsInfo AS FormsInfo_Project ON I.ProjectID = FormsInfo_Project.FormInfoID
WHERE  	(DocNoAnnuity = 0) 
			AND   (I.State < 50) AND (I.InterdicType = 0)
AND (FormsInfo_EmployType.InfoID BETWEEN @EmployTypFROM AND @EmployTypTo ) 
AND (FormsInfo_2PersonelState.InfoID BETWEEN @PersonelStateFROM AND @PersonelStateTo ) 
AND (PersonelInfo.PersonelNo BETWEEN @PersonelNoFROM AND @PersonelNoTo )

AND Pay.ChkTick(@OfficeCodes,I.OfficeCode)=1
AND ((Pay.ChkTick(@insuranceIDs,I.insuranceID)=1)or(isnull(I.insuranceID,0)=0))		
AND ( ( FormsInfo_Project.InfoID BETWEEN @ProjectIDFrom AND @ProjectIDTo) OR I.ProjectID = 0 ) 

GROUP BY MakeDocAnnuity_1.TopicCode,MakeDocAnnuity_1.DetailCode,MakeDocAnnuity_1.CTopicCode,MakeDocAnnuity_1.CTopicCode2,
                      MakeDocAnnuity_1.CTopicCode3
HAVING (SUM(MakeDocAnnuity_1.Bed)+SUM(MakeDocAnnuity_1.bes)>0)
     RETURN
END
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
----------------------------------------------------------------------
----------------------------------------------------------------------
SET QUOTED_IDENTIFIER ON 
GO
--SET ANSI_NULLS OFF 
GO
CREATE FUNCTION Pay.[MakeDocDuringWork] ( @AccTopicCodeBed bigint=1401 ,@AccTopicCodeBes int=8101,
--    				@OfficeFROM int =0,@OfficeTo int =9999999,
    				@Offices varchar(4000),
					@EmployTypeIDFROM  int=0,@EmployTypeIDTo int=100000 ,
					@PersonelStateFROM int=0,@PersonelStateTo int=100,
                    @PersonelNoFROM int=0,@PersonelNoTo int=9999999 , @Mounth tinyint=1 ,@YearID int ,  @ProjectIDFrom int=0,@ProjectIDTo int=9999999  , @insuranceIDs varchar(8000)='0' )  
RETURNS  @retFindReports2 TABLE 
  (
	AccTopicCode bigint,
	AccDetailCode int ,
	AccCTopicCode int ,
	AccCTopicCode2 int  ,
	AccCTopicCode3 int  ,
	Debt float ,
	Credit float ,
	_Dec varchar(2000) ,
	InfoName_L1 varchar(500) ,
	PeronName varchar(500) ,
	PersonelNO int 
  )
  AS 
BEGIN  
INSERT INTO @retFindReports2
SELECT     @AccTopicCodeBed AS AccTopicCode, Pay.FormsInfo.AccDetailCode, Pay.FormsInfo.AccCTopicCode, 0 AS AccCTopicCode2, 0 AS AccCTopicCode3, 
                 ROUND(I.StandardEmployAmount*SUM(Functions.FunctionTime) ,0)AS Debt, 
                     0*I.StandardEmployAmount*SUM(Functions.FunctionTime)    AS Credit,
                      'سند كار در جريان' AS _Dec, ' ' AS InfoName_L1 , ' ' AS PeronName , 0 AS PersonelNO
FROM         Pay.Functions INNER JOIN
                      Pay.PersonelInfo ON Pay.Functions.PersonelNo = Pay.PersonelInfo.PersonelNo INNER JOIN
                       Pay.FormsInfo AS FormsInfoPersonelState ON Pay.PersonelInfo.PersonelState = FormsInfoPersonelState.FormInfoID INNER JOIN
                      Pay.Interdicts I ON Pay.PersonelInfo.PersonelNo = I.PersonelNo 
					  --LEFT OUTER JOIN
                      -- Pay.FormsInfo AS FormsInfoOfficeCode ON Pay.Functions.OfficeCode = FormsInfoOfficeCode.FormInfoID 
					  LEFT OUTER JOIN
                       Pay.FormsInfo ON Pay.Functions.ProjectID = Pay.FormsInfo.FormInfoID LEFT OUTER JOIN
                       Pay.FormsInfo AS FormsInfoEmployTypeID ON I.EmployTypeID = FormsInfoEmployTypeID.FormInfoID
					  LEFT OUTER JOIN  Pay.FormsInfo AS FormsInfo_Project ON I.ProjectID = FormsInfo_Project.FormInfoID

WHERE (Functions.PersonelNo BETWEEN @PersonelNoFROM  AND @PersonelNoTo ) 
		--AND (FormsInfoOfficeCode.infoID BETWEEN @OfficeFROM AND @OfficeTo ) 
		AND Pay.ChkTick(@Offices,Functions.OfficeCode)=1
        AND ((Pay.ChkTick(@insuranceIDs,I.insuranceID)=1)or(isnull(I.insuranceID,0)=0))		
		AND (FormsInfoPersonelState.InfoID  BETWEEN @PersonelStateFROM AND @PersonelStateTo )
		AND (FormsInfoEmployTypeID.InfoID   BETWEEN @EmployTypeIDFROM AND @EmployTypeIDTo )
		AND (Functions.Mounth = @Mounth ) AND (Pay.Functions.YearID = @YearID ) 
		AND ( Pay.GetYearMounth(@Mounth ,@YearID) BETWEEN LEFT(I.InterdicStartDate,7) AND 
		                                        LEFT(I.InterdicEndDate,7)) 	
AND ( ( FormsInfo_Project.InfoID BETWEEN @ProjectIDFrom AND @ProjectIDTo) OR I.ProjectID = 0 ) 
--WHERE   (Interdicts.State < 50)
--AND (Functions.PersonelNo BETWEEN @PersonelNoFROM  AND @PersonelNoTo ) 
--AND (FormsInfoOfficeCode.infoID BETWEEN @OfficeFROM AND @OfficeTo ) 
--AND (FormsInfoPersonelState.InfoID  BETWEEN @PersonelStateFROM AND @PersonelStateTo )
--AND (FormsInfoEmployTypeID.InfoID   BETWEEN @EmployTypeIDFROM AND @EmployTypeIDTo )
--AND (Functions.Mounth = @Mounth )
--AND (LEFT(Interdicts.InterdicStartDate,7) <= Pay.GetYearMounth(@Mounth) )  
--AND (LEFT(Interdicts.InterdicEndDate,7) >=Pay.GetYearMounth(@Mounth) )  
                 
GROUP BY Pay.FormsInfo.AccDetailCode, Pay.FormsInfo.AccCTopicCode,I.StandardEmployAmount
union all
SELECT     @AccTopicCodeBes AS AccTopicCode, FormsInfo_Project.AccDetailCode, FormsInfo_Project.AccCTopicCode, 0 AS AccCTopicCode2, 0 AS AccCTopicCode3, 
                    0*Interdicts.StandardEmployAmount*SUM(Functions.FunctionTime)    AS Debt, 
                ROUND(Interdicts.StandardEmployAmount*SUM(Functions.FunctionTime),0) AS Credit, 
                'سند كار در جريان' AS _Dec,' ' AS InfoName_L1 , ' ' AS PeronName , 0 AS PersonelNO

FROM         Pay.Functions INNER JOIN
                      Pay.PersonelInfo ON Pay.Functions.PersonelNo = Pay.PersonelInfo.PersonelNo INNER JOIN
                       Pay.FormsInfo AS FormsInfoPersonelState ON Pay.PersonelInfo.PersonelState = FormsInfoPersonelState.FormInfoID INNER JOIN
                      Pay.Interdicts ON Pay.PersonelInfo.PersonelNo = Pay.Interdicts.PersonelNo 
					  --LEFT OUTER JOIN
                      -- Pay.FormsInfo AS FormsInfoOfficeCode ON Pay.Functions.OfficeCode = FormsInfoOfficeCode.FormInfoID 
					  LEFT OUTER JOIN
                       Pay.FormsInfo  AS FormsInfo_Project  ON Pay.Functions.ProjectID = FormsInfo_Project.FormInfoID LEFT OUTER JOIN
                       Pay.FormsInfo AS FormsInfoEmployTypeID ON Pay.Interdicts.EmployTypeID = FormsInfoEmployTypeID.FormInfoID
                    
             

WHERE (Functions.PersonelNo BETWEEN @PersonelNoFROM  AND @PersonelNoTo ) 
		--AND (FormsInfoOfficeCode.infoID BETWEEN @OfficeFROM AND @OfficeTo ) 
		AND Pay.ChkTick(@Offices,Functions.OfficeCode)=1
		AND (FormsInfoPersonelState.InfoID  BETWEEN @PersonelStateFROM AND @PersonelStateTo )
		AND (FormsInfoEmployTypeID.InfoID   BETWEEN @EmployTypeIDFROM AND @EmployTypeIDTo )
		AND (Functions.Mounth = @Mounth )AND (Pay.Functions.YearID = @YearID ) 
		AND ( Pay.GetYearMounth(@Mounth,@YearID) BETWEEN LEFT(Interdicts.InterdicStartDate,7) AND LEFT(Interdicts.InterdicEndDate,7)) 		
AND ( ( FormsInfo_Project.InfoID BETWEEN @ProjectIDFrom AND @ProjectIDTo) OR Pay.Interdicts.ProjectID = 0 ) 
		
--WHERE   (Interdicts.State < 50)
--AND (Functions.PersonelNo BETWEEN @PersonelNoFROM  AND @PersonelNoTo ) 
--AND (FormsInfoOfficeCode.infoID BETWEEN @OfficeFROM AND @OfficeTo ) 
--AND (FormsInfoPersonelState.InfoID  BETWEEN @PersonelStateFROM AND @PersonelStateTo )
--AND (FormsInfoEmployTypeID.InfoID   BETWEEN @EmployTypeIDFROM AND @EmployTypeIDTo )
--AND (Functions.Mounth = @Mounth )
--AND (LEFT(Interdicts.InterdicStartDate,7) <= Pay.GetYearMounth(@Mounth) )  
--AND (LEFT(Interdicts.InterdicEndDate,7) >=Pay.GetYearMounth(@Mounth) )  

GROUP BY FormsInfo_Project.AccDetailCode, FormsInfo_Project.AccCTopicCode,Interdicts.StandardEmployAmount
     RETURN
END
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
----------------------------------------------------------------------
----------------------------------------------------------------------
SET QUOTED_IDENTIFIER ON 
GO
--SET ANSI_NULLS OFF 
GO
CREATE FUNCTION Pay.MakeDocuments_PayMent  ( @PersonelNoFROM int=0,@PersonelNoTo int=9999999,
    				--@OfficeCodeFROM int =0,@OfficeCodeTo int =9999999,
					@OfficeCodes varchar(8000),
					@FirstArchiveID int=1,@LastArchiveID int=9999,@month int,@YearMonth varchar(7) ='85/01' 
,@PersonelStateFROM int=0,@PersonelStateTo int=10,@EmployTypeIDFROM  int=0,@EmployTypeIDTo int=100  ,  @ProjectIDFrom int=0,@ProjectIDTo int=9999999  , @insuranceIDs varchar(8000)='0'
,@LabelIDFrom  int=0,@LabelIDTo  int=0 )  
RETURNS  table  AS 
Return  (
SELECT  CASE Pay.FormTypes.TopicCodeKind 
		WHEN 0 THEN 0 
		WHEN 1 THEN Interdict.AccTopicCode
		WHEN 2 THEN FormInfo_PayAble.AccTopicCode
		WHEN 3 THEN FormsInfo_Project.AccTopicCode
		WHEN 4 THEN FormsInfo_Office.AccTopicCode
		WHEN 5 THEN Interdict.MasterAccTopicCode
		WHEN 6 THEN Pay.PersonelInfo.AccTopicCode
		WHEN 13 THEN  case when Pay.PersonelInfo.AccTopicCode > 0  then Pay.PersonelInfo.AccTopicCode else FormInfo_PayAble.AccTopicCode end  
	ELSE 0 END  AS AccTopicCode,
	CASE Pay.FormTypes.DetailCodeKind 
		WHEN 0 THEN 0 
		WHEN 1 THEN Interdict.AccDetailCode
		WHEN 2 THEN FormInfo_PayAble.AccDetailCode
		WHEN 3 THEN FormsInfo_Project.AccDetailCode
		WHEN 4 THEN FormsInfo_Office.AccDetailCode
		WHEN 5 THEN Interdict.MasterAccDetailCode
		WHEN 6 THEN Pay.PersonelInfo.AccDetailCode  
	ELSE 0 END AS AccDetailCode,
	CASE Pay.FormTypes.CTopicCodeKind 
		WHEN 0 THEN 0 
		WHEN 1 THEN Interdict.AccCTopicCode
		WHEN 2 THEN FormInfo_PayAble.AccCTopicCode
		WHEN 3 THEN FormsInfo_Project.AccCTopicCode
		WHEN 4 THEN FormsInfo_Office.AccCTopicCode
		WHEN 5 THEN Interdict.MasterAccCTopicCode
		WHEN 6 THEN Pay.PersonelInfo.AccCTopicCode
	ELSE 0 END AS AccCTopicCode,
	CASE Pay.FormTypes.CTopicCode2Kind 
		WHEN 0 THEN 0 
		WHEN 1 THEN Interdict.AccCTopicCode2
		WHEN 2 THEN FormInfo_PayAble.AccCTopicCode2
		WHEN 3 THEN FormsInfo_Project.AccCTopicCode2
		WHEN 4 THEN FormsInfo_Office.AccCTopicCode2
		WHEN 5 THEN Interdict.MasterAccCTopicCode2
		WHEN 6 THEN Pay.PersonelInfo.AccCTopicCode2
    	WHEN 11 THEN StandardTimes.AccCTopicCode2
--    	WHEN 12 THEN st.AccCTopicCode2
	ELSE 0 END AS AccCTopicCode2,
	CASE Pay.FormTypes.CTopicCode3Kind 
		WHEN 0 THEN 0 
		WHEN 1 THEN Interdict.AccCTopicCode3
		WHEN 2 THEN FormInfo_PayAble.AccCTopicCode3
		WHEN 3 THEN FormsInfo_Project.AccCTopicCode3
		WHEN 4 THEN FormsInfo_Office.AccCTopicCode3
		WHEN 5 THEN Interdict.MasterAccCTopicCode3
		WHEN 6 THEN Pay.PersonelInfo.AccCTopicCode3
    	WHEN 10 THEN StandardTimes.AccCTopicCode3
	ELSE 0 END AS AccCTopicCode3,

	CASE WHEN SUM(CASE RetardFixedCalculated.BedBes WHEN 1 THEN RetardFixedCalculated.price ELSE - RetardFixedCalculated.price END ) > 0 
		 THEN   SUM(CASE RetardFixedCalculated.BedBes WHEN 1 THEN RetardFixedCalculated.price ELSE - RetardFixedCalculated.price END ) ELSE 0 END  AS  debt,
	CASE WHEN SUM(CASE RetardFixedCalculated.BedBes WHEN 1 THEN RetardFixedCalculated.price ELSE - RetardFixedCalculated.price END ) < 0 
		 THEN  - SUM(CASE RetardFixedCalculated.BedBes WHEN 1 THEN RetardFixedCalculated.price ELSE - RetardFixedCalculated.price END ) ELSE 0 END AS  credit,

	CASE WHEN SUM(CASE RetardFixedCalculated.BedBes WHEN 1 THEN RetardFixedCalculated.price ELSE - RetardFixedCalculated.price END ) > 0 
		 THEN  1 ELSE 2 END AS bedbes,FormInfo_PayAble.infoname_L1,
	      RetardFixedCalculated.PersonelNO,PersonelInfo.name_L1 + '   ' + Pay.PersonelInfo.lastName_L1 AS peronName 
FROM    Pay.FormsInfo FormsInfo_Project RIGHT OUTER JOIN
        Pay.RetardFixedCalculated(@FirstArchiveID,@LastArchiveID , 0,@LabelIDFrom  ,@LabelIDTo ,LEFT(@YearMonth,4)  ,LEFT(@YearMonth,4)   ) RetardFixedCalculated INNER JOIN
        (SELECT     PersonelNo,AccTopicCode,AccDetailCode,AccCTopicCode,AccCTopicCode2,AccCTopicCode3,
	MasterAccTopicCode,MasterAccDetailCode,
        MasterAccCTopicCode,MasterAccCTopicCode2,MasterAccCTopicCode3
        FROM         Pay.InterdictForUse( @YearMonth,0,3,@PersonelNoFrom,@PersonelNoTo , 1) InterdictForUse
        GROUP BY PersonelNo,AccTopicCode,AccDetailCode,AccCTopicCode,AccCTopicCode2,AccCTopicCode3,
	MasterAccTopicCode,MasterAccDetailCode,MasterAccCTopicCode,MasterAccCTopicCode2,MasterAccCTopicCode3  )interdict 
	ON RetardFixedCalculated.PersonelNO = interdict.PersonelNo INNER JOIN
        Pay.PersonelInfo ON RetardFixedCalculated.PersonelNO = Pay.PersonelInfo.PersonelNo ON 
        FormsInfo_Project.FormInfoID = RetardFixedCalculated.ProjectID LEFT OUTER JOIN
        Pay.FormsInfo FormsInfo_Office ON RetardFixedCalculated.OfficeCode = FormsInfo_Office.FormInfoID CROSS JOIN
        Pay.FormTypes INNER JOIN
        (SELECT     TOP 1 *
        FROM         Pay.FormsInfo
        WHERE     formtype = 50) FormInfo_PayAble ON Pay.FormTypes.FormType = FormInfo_PayAble.FormType
INNER JOIN  Pay.FormsInfo FormsInfoPersonelState ON Pay.PersonelInfo.PersonelState = FormsInfoPersonelState.FormInfoID
INNER JOIN Pay.Interdicts I ON Pay.PersonelInfo.PersonelNo = I.PersonelNo
LEFT OUTER JOIN 	 Pay.FormsInfo AS FormsInfoEmployTypeID ON I.EmployTypeID = FormsInfoEmployTypeID.FormInfoID INNER JOIN
                      Pay.StandardTimes ON @Month = Pay.StandardTimes.InfoID 

WHERE  (I.State < 50) 
  AND ((RetardFixedCalculated.CalCulateKind <> 10) OR (RetardFixedCalculated.ShowListKind <> 2)) 
  AND (bedbes<>0) AND   (RetardFixedCalculated.Mounth = @month ) 
	    --and  FormsInfo_Office.infoID between @OfficeCodeFROM and  @OfficeCodeTo
AND (Pay.ChkTick(@OfficeCodes,RetardFixedCalculated.OfficeCode)=1)
AND ((Pay.ChkTick(@insuranceIDs,I.insuranceID)=1)or(isnull(I.insuranceID,0)=0))	
AND (FormsInfoPersonelState.InfoID  BETWEEN @PersonelStateFROM AND @PersonelStateTo )
AND (FormsInfoEmployTypeID.InfoID   BETWEEN @EmployTypeIDFROM AND @EmployTypeIDTo )
AND ( ( FormsInfo_Project.InfoID BETWEEN @ProjectIDFrom AND @ProjectIDTo) OR (I.ProjectID = 0) ) 
AND ( RetardFixedCalculated.PersonelNO between @PersonelNoFROM and  @PersonelNoTo)
 ----AND(ISNULL(RetardFixedCalculated.DocNo, 0) = 0)  
AND ( RetardFixedCalculated.LabelID between @LabelIDFrom and  @LabelIDTo)
AND ( RetardFixedCalculated.YearID between LEFT(@YearMonth,4)  and  LEFT(@YearMonth,4) )


GROUP BY RetardFixedCalculated.PersonelNO,
	CASE Pay.FormTypes.TopicCodeKind 
		WHEN 0 THEN 0 
		WHEN 1 THEN Interdict.AccTopicCode
		WHEN 2 THEN FormInfo_PayAble.AccTopicCode
		WHEN 3 THEN FormsInfo_Project.AccTopicCode
		WHEN 4 THEN FormsInfo_Office.AccTopicCode
		WHEN 5 THEN Interdict.MasterAccTopicCode
		WHEN 6 THEN Pay.PersonelInfo.AccTopicCode
		WHEN 13 THEN  case when Pay.PersonelInfo.AccTopicCode>0  then Pay.PersonelInfo.AccTopicCode else FormInfo_PayAble.AccTopicCode end  
	ELSE 0 END,
	CASE Pay.FormTypes.DetailCodeKind 
		WHEN 0 THEN 0 
		WHEN 1 THEN Interdict.AccDetailCode
		WHEN 2 THEN FormInfo_PayAble.AccDetailCode
		WHEN 3 THEN FormsInfo_Project.AccDetailCode
		WHEN 4 THEN FormsInfo_Office.AccDetailCode
		WHEN 5 THEN Interdict.MasterAccDetailCode
		WHEN 6 THEN Pay.PersonelInfo.AccDetailCode  
	ELSE 0 END,
	CASE Pay.FormTypes.CTopicCodeKind 
		WHEN 0 THEN 0 
		WHEN 1 THEN Interdict.AccCTopicCode
		WHEN 2 THEN FormInfo_PayAble.AccCTopicCode
		WHEN 3 THEN FormsInfo_Project.AccCTopicCode
		WHEN 4 THEN FormsInfo_Office.AccCTopicCode
		WHEN 5 THEN Interdict.MasterAccCTopicCode
		WHEN 6 THEN Pay.PersonelInfo.AccCTopicCode
	ELSE 0 END,
	CASE Pay.FormTypes.CTopicCode2Kind 
		WHEN 0 THEN 0 
		WHEN 1 THEN Interdict.AccCTopicCode2
		WHEN 2 THEN FormInfo_PayAble.AccCTopicCode2
		WHEN 3 THEN FormsInfo_Project.AccCTopicCode2
		WHEN 4 THEN FormsInfo_Office.AccCTopicCode2
		WHEN 5 THEN Interdict.MasterAccCTopicCode2
		WHEN 6 THEN Pay.PersonelInfo.AccCTopicCode2
    	WHEN 11 THEN StandardTimes.AccCTopicCode2
--    	WHEN 12 THEN st.AccCTopicCode2
	ELSE 0 END,
	CASE Pay.FormTypes.CTopicCode3Kind 
		WHEN 0 THEN 0 
		WHEN 1 THEN Interdict.AccCTopicCode3
		WHEN 2 THEN FormInfo_PayAble.AccCTopicCode3
		WHEN 3 THEN FormsInfo_Project.AccCTopicCode3
		WHEN 4 THEN FormsInfo_Office.AccCTopicCode3
		WHEN 5 THEN Interdict.MasterAccCTopicCode3
		WHEN 6 THEN Pay.PersonelInfo.AccCTopicCode3
    	WHEN 10 THEN StandardTimes.AccCTopicCode3
	ELSE 0 END,
	 FormInfo_PayAble.infoname_L1
,PersonelInfo.name_L1 + '   ' + Pay.PersonelInfo.lastName_L1 


)
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
----------------------------------------------------------------------
----------------------------------------------------------------------
SET QUOTED_IDENTIFIER ON 
GO
--SET ANSI_NULLS OFF 
GO
CREATE FUNCTION Pay.[Interdict_Aid_Retaerd] 

	 (	 @YearMounth varchar(7) = '93/04' ,@salarykind int=1,@salarykindTo int=1 ,
	 @PersonelNoFROM int=0 ,@PersonelNoTo int=999999999  , @YearMounthRetared varchar(7) = '93/02' )  
RETURNS  table  AS 
return  (

SELECT PersonelNo , SalaryID , SUM( Amount) AS Amount , SUM( Curent_Amount) AS Curent_Amount 
FROM 
(

-----------------			 اطلاعات حكم جاري جهت معوقه ها				------------------

SELECT		Pay.Interdicts.PersonelNo,Pay.InterdictItems.SalaryID,
			SUM(Pay.InterdictItems.Amount) AS Amount ,SUM(Pay.InterdictItems.Amount) AS Curent_Amount 

FROM		Pay.Interdicts INNER JOIN
			Pay.InterdictItems ON  Pay.Interdicts.InterdictID = Pay.InterdictItems.InterdictID 
			
WHERE		(@YearMounth = left(Pay.Interdicts.InterdicStartDate,7) ) AND 
			(@YearMounthRetared between left(Pay.InterdictItems.Firstdate,7) and left(Pay.InterdictItems.Enddate,7))
AND         (Pay.Interdicts.PersonelNo BETWEEN  @PersonelNoFROM and @PersonelNoTo )
AND         (Pay.Interdicts.RetardActive = 1)

GROUP BY	Pay.Interdicts.PersonelNo,Pay.InterdictItems.SalaryID, Pay.InterdictItems.Firstdate  , 
			Pay.InterdictItems.Enddate

UNION ALL

------------------				 معوقه هاي قبلي							-----------------

SELECT		Pay.Interdicts.PersonelNo,Pay.InterdictItems.SalaryID,
			-SUM(Pay.InterdictItems.Amount) AS Amount,0 AS Curent_Amount 


FROM		Pay.Interdicts INNER JOIN
			Pay.InterdictItems ON  Pay.Interdicts.InterdictID = Pay.InterdictItems.InterdictID INNER JOIN 
			----- اين متن شماره پرسنلي شخصي را كه در اين ماه براي آن حكم با اطلاعات معوقه صادر شده را ليست مي كند -----			
			(	SELECT  DISTINCT Pay.Interdicts.PersonelNo
				FROM		Pay.Interdicts INNER JOIN
							Pay.InterdictItems ON  Pay.Interdicts.InterdictID = Pay.InterdictItems.InterdictID 
				WHERE		(@YearMounth = left(Pay.Interdicts.InterdicStartDate,7) ) AND 
							(@YearMounthRetared between left(Pay.InterdictItems.Firstdate,7) and left(Pay.InterdictItems.Enddate,7)) AND 
							(Pay.Interdicts.PersonelNo BETWEEN  @PersonelNoFROM and @PersonelNoTo )
			) HasRetared ON Pay.Interdicts.PersonelNo=HasRetared.PersonelNo   inner join 
			---------- mahal tagirat 
			------------ اين قسمت براي نمايش آخرين حكم معوقه نوشته شده است 
                          (SELECT     PersonelNo, MAX(InterdictID) AS maxInterdictID
                             FROM         (SELECT DISTINCT Pay.Interdicts.InterdictID, Pay.Interdicts.PersonelNo
				FROM		Pay.Interdicts INNER JOIN
							Pay.InterdictItems ON  Pay.Interdicts.InterdictID = Pay.InterdictItems.InterdictID 
				WHERE		( @YearMounth 	> left(Pay.Interdicts.InterdicStartDate,7)) AND 
							( @YearMounthRetared 
							 between left(Pay.InterdictItems.Firstdate,7) and left(Pay.InterdictItems.Enddate,7)) AND 
							(Pay.Interdicts.PersonelNo BETWEEN  @PersonelNoFROM and @PersonelNoTo   )) AS CntInterdict
                             GROUP BY PersonelNo) AS cntControl ON Pay.Interdicts.PersonelNo = cntControl.PersonelNo and 
                             Pay.Interdicts.InterdictID = cntControl.maxInterdictID
                             
---------- mahal tagirat 

WHERE		(left(Pay.Interdicts.InterdicStartDate,7)<@YearMounth ) AND 
			(@YearMounthRetared between left(Pay.InterdictItems.Firstdate,7) and left(Pay.InterdictItems.Enddate,7))
AND      (Pay.Interdicts.PersonelNo BETWEEN  @PersonelNoFROM and @PersonelNoTo )
AND         (Pay.Interdicts.RetardActive = 1)

GROUP BY	Pay.Interdicts.PersonelNo,Pay.InterdictItems.SalaryID, Pay.InterdictItems.Firstdate  , 
			Pay.InterdictItems.Enddate

UNION ALL

------------------				  حكم كارگزيني قبلي						-----------------

SELECT		Pay.Interdicts.PersonelNo,Pay.InterdictItems.SalaryID,
			-SUM(Pay.InterdictItems.Amount) AS Amount,0 AS Curent_Amount 

FROM		Pay.Interdicts INNER JOIN
			Pay.InterdictItems ON  Pay.Interdicts.InterdictID = Pay.InterdictItems.InterdictID INNER JOIN 
			----- اين متن شماره پرسنلي شخصي را كه در اين ماه براي آن حكم با اطلاعات معوقه صادر شده را ليست مي كند -----
			(	SELECT		DISTINCT  Pay.Interdicts.PersonelNo
				FROM		Pay.Interdicts INNER JOIN
							Pay.InterdictItems ON  Pay.Interdicts.InterdictID = Pay.InterdictItems.InterdictID 
				WHERE		(@YearMounth = left(Pay.Interdicts.InterdicStartDate,7)) AND 
							(@YearMounthRetared between left(Pay.InterdictItems.Firstdate,7) and left(Pay.InterdictItems.Enddate,7)) AND 
							(Pay.Interdicts.PersonelNo BETWEEN  @PersonelNoFROM and @PersonelNoTo )
			) HasRetared ON Pay.Interdicts.PersonelNo=HasRetared.PersonelNo    INNER JOIN
---------- mahal tagirat 
                          (SELECT     PersonelNo, COUNT(InterdictID) AS cnt
                             FROM         (SELECT DISTINCT Pay.Interdicts.InterdictID, Pay.Interdicts.PersonelNo
				FROM		Pay.Interdicts INNER JOIN
							Pay.InterdictItems ON  Pay.Interdicts.InterdictID = Pay.InterdictItems.InterdictID 
				WHERE		( @YearMounth 	>= left(Pay.Interdicts.InterdicStartDate,7)) AND 
							( @YearMounthRetared 
							 between left(Pay.InterdictItems.Firstdate,7) and left(Pay.InterdictItems.Enddate,7)) AND 
							(Pay.Interdicts.PersonelNo BETWEEN  @PersonelNoFROM and @PersonelNoTo   )) AS CntInterdict
                             GROUP BY PersonelNo) AS cntControl ON Pay.Interdicts.PersonelNo = cntControl.PersonelNo
---------- mahal tagirat 
			
	
WHERE	   (Pay.Interdicts.PersonelNo BETWEEN  @PersonelNoFROM and @PersonelNoTo )
	AND (@YearMounthRetared between left(Pay.Interdicts.InterdicStartDate,7) and left(Pay.Interdicts.InterdicEnddate,7))
AND         (Pay.Interdicts.RetardActive = 1)

---------- mahal tagirat 			
			and (
cntControl.cnt )>=1 
----- mahal tagirat 

GROUP BY	Pay.Interdicts.PersonelNo,Pay.InterdictItems.SalaryID, Pay.InterdictItems.Firstdate  , 
			Pay.InterdictItems.Enddate
   
)aaaa
Group By PersonelNo , SalaryID
Having SUM(Amount) <>0 )



--SELECT PersonelNo , SalaryID , SUM( Amount) AS Amount , SUM( Curent_Amount) AS Curent_Amount 
--FROM 
--(

-------------------			 اطلاعات حكم جاري جهت معوقه ها				------------------

--SELECT		Pay.Interdicts.PersonelNo,Pay.InterdictItems.SalaryID,
--			SUM(Pay.InterdictItems.Amount) AS Amount ,SUM(Pay.InterdictItems.Amount) AS Curent_Amount 

--FROM		Pay.Interdicts INNER JOIN
--			Pay.InterdictItems ON  Pay.Interdicts.InterdictID = Pay.InterdictItems.InterdictID 
			
--WHERE		(@YearMounth = left(Pay.Interdicts.InterdicStartDate,7) ) AND 
--			(@YearMounthRetared between left(Pay.InterdictItems.Firstdate,7) and left(Pay.InterdictItems.Enddate,7))

--GROUP BY	Pay.Interdicts.PersonelNo,Pay.InterdictItems.SalaryID, Pay.InterdictItems.Firstdate  , 
--			Pay.InterdictItems.Enddate
--HAVING      (Pay.Interdicts.PersonelNo BETWEEN  @PersonelNoFROM and @PersonelNoTo )

--UNION ALL

--------------------				 معوقه هاي قبلي							-----------------

--SELECT		Pay.Interdicts.PersonelNo,Pay.InterdictItems.SalaryID,
--			-SUM(Pay.InterdictItems.Amount) AS Amount,0 AS Curent_Amount 


--FROM		Pay.Interdicts INNER JOIN
--			Pay.InterdictItems ON  Pay.Interdicts.InterdictID = Pay.InterdictItems.InterdictID INNER JOIN 
--			----- اين متن شماره پرسنلي شخصي را كه در اين ماه براي آن حكم با اطلاعات معوقه صادر شده را ليست مي كند -----			
--			(	SELECT  DISTINCT Pay.Interdicts.PersonelNo
--				FROM		Pay.Interdicts INNER JOIN
--							Pay.InterdictItems ON  Pay.Interdicts.InterdictID = Pay.InterdictItems.InterdictID 
--				WHERE		(@YearMounth = left(Pay.Interdicts.InterdicStartDate,7) ) AND 
--							(@YearMounthRetared between left(Pay.InterdictItems.Firstdate,7) and left(Pay.InterdictItems.Enddate,7)) AND 
--							(Pay.Interdicts.PersonelNo BETWEEN  @PersonelNoFROM and @PersonelNoTo )
--			) HasRetared ON Pay.Interdicts.PersonelNo=HasRetared.PersonelNo   inner join 
--			---------- mahal tagirat 
--			------------ اين قسمت براي نمايش آخرين حكم معوقه نوشته شده است 
--                          (SELECT     PersonelNo, MAX(InterdictID) AS maxInterdictID
--                             FROM         (SELECT DISTINCT Pay.Interdicts.InterdictID, Pay.Interdicts.PersonelNo
--				FROM		Pay.Interdicts INNER JOIN
--							Pay.InterdictItems ON  Pay.Interdicts.InterdictID = Pay.InterdictItems.InterdictID 
--				WHERE		( @YearMounth 	> left(Pay.Interdicts.InterdicStartDate,7)) AND 
--							( @YearMounthRetared 
--							 between left(Pay.InterdictItems.Firstdate,7) and left(Pay.InterdictItems.Enddate,7)) AND 
--							(Pay.Interdicts.PersonelNo BETWEEN  @PersonelNoFROM and @PersonelNoTo   )) AS CntInterdict
--                             GROUP BY PersonelNo) AS cntControl ON Pay.Interdicts.PersonelNo = cntControl.PersonelNo and 
--                             Pay.Interdicts.InterdictID = cntControl.maxInterdictID
                             
------------ mahal tagirat 

--WHERE		(left(Pay.Interdicts.InterdicStartDate,7)<@YearMounth ) AND 
--			(@YearMounthRetared between left(Pay.InterdictItems.Firstdate,7) and left(Pay.InterdictItems.Enddate,7))

--GROUP BY	Pay.Interdicts.PersonelNo,Pay.InterdictItems.SalaryID, Pay.InterdictItems.Firstdate  , 
--			Pay.InterdictItems.Enddate
--HAVING      (Pay.Interdicts.PersonelNo BETWEEN  @PersonelNoFROM and @PersonelNoTo )

--UNION ALL

--------------------				  حكم كارگزيني قبلي						-----------------

--SELECT		Pay.Interdicts.PersonelNo,Pay.InterdictItems.SalaryID,
--			-SUM(Pay.InterdictItems.Amount) AS Amount,0 AS Curent_Amount 

--FROM		Pay.Interdicts INNER JOIN
--			Pay.InterdictItems ON  Pay.Interdicts.InterdictID = Pay.InterdictItems.InterdictID INNER JOIN 
--			----- اين متن شماره پرسنلي شخصي را كه در اين ماه براي آن حكم با اطلاعات معوقه صادر شده را ليست مي كند -----
--			(	SELECT		DISTINCT  Pay.Interdicts.PersonelNo
--				FROM		Pay.Interdicts INNER JOIN
--							Pay.InterdictItems ON  Pay.Interdicts.InterdictID = Pay.InterdictItems.InterdictID 
--				WHERE		(@YearMounth = left(Pay.Interdicts.InterdicStartDate,7)) AND 
--							(@YearMounthRetared between left(Pay.InterdictItems.Firstdate,7) and left(Pay.InterdictItems.Enddate,7)) AND 
--							(Pay.Interdicts.PersonelNo BETWEEN  @PersonelNoFROM and @PersonelNoTo )
--			) HasRetared ON Pay.Interdicts.PersonelNo=HasRetared.PersonelNo    INNER JOIN
------------ mahal tagirat 
--                          (SELECT     PersonelNo, COUNT(InterdictID) AS cnt
--                             FROM         (SELECT DISTINCT Pay.Interdicts.InterdictID, Pay.Interdicts.PersonelNo
--				FROM		Pay.Interdicts INNER JOIN
--							Pay.InterdictItems ON  Pay.Interdicts.InterdictID = Pay.InterdictItems.InterdictID 
--				WHERE		( @YearMounth 	>= left(Pay.Interdicts.InterdicStartDate,7)) AND 
--							( @YearMounthRetared 
--							 between left(Pay.InterdictItems.Firstdate,7) and left(Pay.InterdictItems.Enddate,7)) AND 
--							(Pay.Interdicts.PersonelNo BETWEEN  @PersonelNoFROM and @PersonelNoTo   )) AS CntInterdict
--                             GROUP BY PersonelNo) AS cntControl ON Pay.Interdicts.PersonelNo = cntControl.PersonelNo
------------ mahal tagirat 
			
	
--WHERE		(@YearMounthRetared between left(Pay.Interdicts.InterdicStartDate,7) and left(Pay.Interdicts.InterdicEnddate,7))

------------ mahal tagirat 			
--			and (
--cntControl.cnt )=1 
------- mahal tagirat 

--GROUP BY	Pay.Interdicts.PersonelNo,Pay.InterdictItems.SalaryID, Pay.InterdictItems.Firstdate  , 
--			Pay.InterdictItems.Enddate
--HAVING      (Pay.Interdicts.PersonelNo BETWEEN  @PersonelNoFROM and @PersonelNoTo )
--)aaaa
--Group By PersonelNo , SalaryID
--Having SUM(Amount) <>0 


--)


GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
----------------------------------------------------------------------
----------------------------------------------------------------------
SET QUOTED_IDENTIFIER ON 
GO
--SET ANSI_NULLS OFF 
GO
CREATE FUNCTION Pay.[InterdictForUse_retaerd] 

	 (@YearMounth varchar(7) ='1381/01' ,@salarykind int=1,@salarykindTo int=1 ,
	 @PersonelNoFROM int=0,@PersonelNoTo int=9999999 , @YearMounthRetared varchar(7) ='1381/01' )
	 
RETURNS  table  AS 
return  (
SELECT	Pay.Interdicts.PersonelNo,Pay.Interdicts.subcompanyCode,Pay.Interdicts.OfficeCode,Pay.Interdicts.jobCode, InterdictItems.SalaryID,
		FormsInfo.CalCulateType,SUM( InterdictItems.Amount) AS Amount,Pay.Interdicts.AccTopicCode,Pay.Interdicts.AccDetailCode,
		Pay.Interdicts.AccCTopicCode,Pay.Interdicts.AccCTopicCode2,Pay.Interdicts.AccCTopicCode3,FormTypes_1.TopicCodeKind,FormTypes_1.DetailCodeKind,
		FormTypes_1.CTopicCodeKind,FormTypes_1.CTopicCode2Kind,FormTypes_1.CTopicCode3Kind,
		FormsInfo_2.FormType,FormsInfo_3.AccTopicCode AS OfficeAccTopicCode,
		FormsInfo_3.AccDetailCode AS OfficeAccDetailCode,FormsInfo_3.AccCTopicCode AS OfficeAccCTopicCode,
		FormsInfo_3.AccCTopicCode2 AS OfficeAccCTopicCode2,FormsInfo_3.AccCTopicCode3 AS OfficeAccCTopicCode3,
		FormsInfo.AccTopicCode AS SalaryAccTopicCode,
		FormsInfo.AccDetailCode AS SalaryAccDetailCode,FormsInfo.AccCTopicCode AS SalaryAccCTopicCode,
		FormsInfo.AccCTopicCode2 AS SalaryAccCTopicCode2,FormsInfo.AccCTopicCode3 AS SalaryAccCTopicCode3,
		FormsInfo_2.AccTopicCode AS MasterAccTopicCode,
		FormsInfo_2.AccDetailCode AS MasterAccDetailCode,FormsInfo_2.AccCTopicCode AS MasterAccCTopicCode,
		FormsInfo_2.AccCTopicCode2 AS MasterAccCTopicCode2,FormsInfo_2.AccCTopicCode3 AS MasterAccCTopicCode3 
	   ,SUM(InterdictItems.Curent_Amount)AS Curent_Amount
                      
FROM	Pay.Interdicts INNER JOIN
		Pay.FormsInfo INNER JOIN
		Pay.FormTypes ON Pay.FormsInfo.FormType =Pay.FormTypes.FormType INNER JOIN
		Interdict_Aid_Retaerd
			( @YearMounth ,@salarykind,@salarykindTo , @PersonelNoFROM  , @PersonelNoTo , 
				@YearMounthRetared ) InterdictItems
						ON Pay.FormsInfo.FormInfoID = InterdictItems.SalaryID 
						ON Pay.Interdicts.PersonelNo = InterdictItems.PersonelNo INNER JOIN
		Pay.FormsInfo FormsInfo_2 ON Pay.Interdicts.EmployTypeID = FormsInfo_2.FormInfoID INNER JOIN
		Pay.FormTypes FormTypes_1 ON FormsInfo_2.FormType =FormTypes_1.FormType INNER JOIN
		Pay.FormsInfo FormsInfo_3 ON Pay.Interdicts.OfficeCode = FormsInfo_3.FormInfoID
WHERE   (@YearMounthRetared BETWEEN 
				LEFT(Pay.Interdicts.InterdicStartDate,7) AND LEFT(Pay.Interdicts.InterdicEnddate,7)) AND
		(FormTypes.SalaryKind BETWEEN  @salarykind and @salarykindTo ) 
AND	(Pay.Interdicts.PersonelNo BETWEEN  @PersonelNoFROM and @PersonelNoTo )

GROUP BY Pay.Interdicts.PersonelNo,Pay.Interdicts.subcompanyCode,Pay.Interdicts.OfficeCode,Pay.Interdicts.jobCode, InterdictItems.SalaryID,
		Pay.Interdicts.AccTopicCode,Pay.Interdicts.AccDetailCode,Pay.Interdicts.AccCTopicCode,Pay.Interdicts.AccCTopicCode2,Pay.Interdicts.AccCTopicCode3,
		FormsInfo.CalCulateType,FormTypes_1.TopicCodeKind,FormTypes_1.DetailCodeKind,FormTypes_1.CTopicCodeKind,
		FormTypes_1.CTopicCode2Kind,FormTypes_1.CTopicCode3Kind,FormsInfo_2.FormType,FormsInfo_3.AccTopicCode,FormsInfo_3.AccDetailCode,FormsInfo_3.AccCTopicCode,
		FormsInfo_3.AccCTopicCode2,FormsInfo_3.AccCTopicCode3,FormsInfo.AccTopicCode,
		FormsInfo.AccDetailCode,FormsInfo.AccCTopicCode,
		FormsInfo.AccCTopicCode2,FormsInfo.AccCTopicCode3,FormsInfo_2.AccTopicCode ,
		FormsInfo_2.AccDetailCode,FormsInfo_2.AccCTopicCode,
		FormsInfo_2.AccCTopicCode2,FormsInfo_2.AccCTopicCode3  
)
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
----------------------------------------------------------------------
----------------------------------------------------------------------
SET QUOTED_IDENTIFIER ON 
GO
--SET ANSI_NULLS OFF 
GO
CREATE FUNCTION Pay.[FixCalculate_Retared]		(	
----------      پارامتر ماه و سال مربوط به ماه معوقه ميباشد      --------		
			@Mounth int =1 ,@year int=88,@YearMounth varchar(7)= '81/01',
			@PersonelNoFROM int=0,@PersonelNoTo int=9999999	, @YearMounthRetared varchar(7) ='81/01'
		)
		
RETURNS  table  AS
return  (
-----------------       محاسبه حقوق و مزايايي مانند حقوق پايه  ، حق جذب و			 ----------------
SELECT     Pay.Functions.FunctionID,Pay.Functions.FormInfoID AS FunctionInfoID,InterdictForUse_retaerd.PersonelNo,Pay.Functions.ProjectID,Pay.Functions.OfficeCode,Pay.Functions.JobCode,
     InterdictForUse_retaerd.SalaryID,Pay.Functions.Mounth,Functions.ProcCode,
   CASE InterdictForUse_retaerd.CalCulateType 
	WHEN 0 THEN 0 
	WHEN 1 THEN ROUND(InterdictForUse_retaerd.Amount / 30 * Pay.Functions.FunctionDay,0)
	WHEN 2 THEN ROUND(InterdictForUse_retaerd.Amount / Pay.StandardTimes.StandardDays * Pay.Functions.Functionday,0)
--	WHEN 3 THEN ROUND(InterdictForUse_retaerd.Amount / Pay.StandardTimes.Standardtimes * Pay.Functions.FunctionTime,0)
     WHEN 3 THEN CASE WHEN  Pay.Functions.FunctionTime > Pay.StandardTimes.Standardtimes THEN
			InterdictForUse_retaerd.Amount ELSE 	
		ROUND( InterdictForUse_retaerd.Amount / Pay.StandardTimes.Standardtimes * 
		 Pay.Functions.FunctionTime ,0) END
	WHEN 4 THEN 
		CASE  WHEN AllDay_Function.AllDay =0 THEN InterdictForUse_retaerd.Amount ELSE 
			ROUND((Pay.Functions.FunctionDay /  AllDay_Function.AllDay )  * InterdictForUse_retaerd.Amount ,0)
		end 
	WHEN 5  THEN CASE  WHEN Pay.Functions.FunctionDay >30 THEN InterdictForUse_retaerd.Amount ELSE  ROUND(InterdictForUse_retaerd.Amount / 30 * Pay.Functions.FunctionDay,0)  END 
	WHEN 6 THEN ROUND(InterdictForUse_retaerd.Amount * Pay.Functions.Functionday,0)
	WHEN 7 THEN ROUND(InterdictForUse_retaerd.Amount / 30 * Pay.StandardTimes.StandardDays ,0)
	WHEN 8 THEN ROUND(InterdictForUse_retaerd.Amount /30* ( Pay.Functions.Functionday + ISNULL(Pay.Functions.SickDay,0)),0) 
	WHEN 11 THEN --ROUND(InterdictForUse_retaerd.Amount/(SELECT COUNT(ProjectID)FROM Pay.Functions WHERE PersonelNo = InterdictForUse_retaerd.PersonelNo AND Mounth = @Mounth GROUP BY PersonelNo),0)

     CASE WHEN Pay.Functions.FunctionID=(SELECT MIN(FunctionID)FROM Pay.Functions 
                WHERE PersonelNo=InterdictForUse_retaerd.PersonelNo AND Mounth=@Mounth )
     THEN InterdictForUse_retaerd.Amount ELSE 0 END


----    makhsose pasargad ------2	FixCalcu_Retared
    WHEN 13 THEN
          CASE WHEN  Pay.FunctionsItems.FDaily >15 THEN
           ROUND(InterdictForUse_retaerd.Amount *(Pay.FunctionsItems.FDaily - 15 )* 1.4+InterdictForUse_retaerd.Amount*15 ,0)
       ELSE InterdictForUse_retaerd.Amount *  Pay.FunctionsItems.FDaily --end
        END

----    makhsose pasargad ------2	FixCalcu_Retared


	ELSE 0 	end AS price ,1 AS BedBes,1 AS CalCulateKind,
	CASE InterdictForUse_retaerd.TopicCodeKind 
		WHEN 0 THEN 0 
		WHEN 1 THEN InterdictForUse_retaerd.AccTopicCode
		WHEN 2 THEN InterdictForUse_retaerd.SalaryAccTopicCode
		WHEN 3 THEN FormsInfo_Project.AccTopicCode
		WHEN 4 THEN FormsInfo_Office.AccTopicCode
		WHEN 5 THEN InterdictForUse_retaerd.MasterAccTopicCode
		WHEN 6 THEN Pay.PersonelInfo.AccTopicCode
		WHEN 8 THEN FormsInfo_3.AccTopicCode
		WHEN 9 THEN FormsInfo_4.AccTopicCode
		WHEN 10 THEN CASE  WHEN InterdictForUse_retaerd.SalaryAccCTopicCode2 >0 THEN InterdictForUse_retaerd.SalaryAccTopicCode   ELSE  FormsInfo_Office.AccTopicCode  END 
		---WHEN 12 THEN CASE  WHEN InterdictForUse_retaerd.SalaryAccCTopicCode2 >0 THEN InterdictForUse_retaerd.SalaryAccTopicCode   ELSE  FormsInfo_2.AccTopicCode  END 
		WHEN 12 THEN CASE WHEN Pay.FormsInfo.AccTopicCode<>0 THEN Pay.FormsInfo.AccTopicCode ELSE  FormsInfo_Project.AccTopicCode END 					

ELSE 0 END AS AccTopicCode,
	CASE InterdictForUse_retaerd.DetailCodeKind 
		WHEN 0 THEN 0 
		WHEN 1 THEN InterdictForUse_retaerd.AccDetailCode
		WHEN 2 THEN InterdictForUse_retaerd.SalaryAccDetailCode
		WHEN 3 THEN FormsInfo_Project.AccDetailCode
		WHEN 4 THEN FormsInfo_Office.AccDetailCode
		WHEN 5 THEN InterdictForUse_retaerd.MasterAccDetailCode
		WHEN 6 THEN Pay.PersonelInfo.AccDetailCode
		WHEN 8 THEN FormsInfo_3.AccDetailCode
		WHEN 9 THEN FormsInfo_4.AccDetailCode
		WHEN 11 THEN case when InterdictForUse_retaerd.SalaryAccDetailCode =-1 then Pay.PersonelInfo.AccDetailCode else InterdictForUse_retaerd.SalaryAccDetailCode end
    	WHEN 12  THEN CASE WHEN Pay.FormsInfo.AccDetailCode =-1 THEN FormsInfo_Office.AccDetailCode ELSE Pay.FormsInfo.AccDetailCode  END 
	ELSE 0 END AS AccDetailCode,
	CASE InterdictForUse_retaerd.CTopicCodeKind 
		WHEN 0 THEN 0 
		WHEN 1 THEN InterdictForUse_retaerd.AccCTopicCode
		WHEN 2 THEN InterdictForUse_retaerd.SalaryAccCTopicCode
		WHEN 3 THEN FormsInfo_Project.AccCTopicCode
		WHEN 4 THEN FormsInfo_Office.AccCTopicCode
		WHEN 5 THEN InterdictForUse_retaerd.MasterAccCTopicCode
		WHEN 6 THEN Pay.PersonelInfo.AccCTopicCode
		WHEN 8 THEN FormsInfo_3.AccCTopicCode
		WHEN 9 THEN FormsInfo_4.AccCTopicCode
		WHEN 13 THEN CASE WHEN InterdictForUse_retaerd.SalaryAccCTopicCode=-1 THEN 0 ELSE  FormsInfo_Project.AccCTopicCode END 
	ELSE 0 END AS AccCTopicCode,
	CASE InterdictForUse_retaerd.CTopicCode2Kind 
		WHEN 0 THEN 0 
		WHEN 1 THEN InterdictForUse_retaerd.AccCTopicCode2
		WHEN 2 THEN InterdictForUse_retaerd.SalaryAccCTopicCode2
		WHEN 3 THEN FormsInfo_Project.AccCTopicCode2
		WHEN 4 THEN FormsInfo_Office.AccCTopicCode2
		WHEN 5 THEN InterdictForUse_retaerd.MasterAccCTopicCode2
		WHEN 6 THEN Pay.PersonelInfo.AccCTopicCode2
		WHEN 8 THEN FormsInfo_3.AccCTopicCode2
		WHEN 9 THEN FormsInfo_4.AccCTopicCode2
		WHEN 10 THEN CASE WHEN InterdictForUse_retaerd.SalaryAccCTopicCode2=-1 THEN 0 ELSE  FormsInfo_Project.AccCTopicCode2 END 		
    	WHEN 11 THEN StandardTimes.AccCTopicCode2
    	--WHEN 12 THEN st.AccCTopicCode2
	ELSE 0 END AS AccCTopicCode2,
	CASE InterdictForUse_retaerd.CTopicCode3Kind
	 	WHEN 0 THEN 0 
		WHEN 1 THEN InterdictForUse_retaerd.AccCTopicCode3
		WHEN 2 THEN InterdictForUse_retaerd.SalaryAccCTopicCode3
		WHEN 3 THEN FormsInfo_Project.AccCTopicCode3
		WHEN 4 THEN FormsInfo_Office.AccCTopicCode3
		WHEN 5 THEN InterdictForUse_retaerd.MasterAccCTopicCode3
		WHEN 6 THEN Pay.PersonelInfo.AccCTopicCode3
		WHEN 8 THEN FormsInfo_3.AccCTopicCode3
		WHEN 9 THEN FormsInfo_4.AccCTopicCode3
    	WHEN 10 THEN StandardTimes.AccCTopicCode3
 	 ELSE 0 END AS AccCTopicCode3,

	1 AS ShowListKind
FROM         Pay.Functions INNER JOIN
                      Pay.InterdictForUse_retaerd(@YearMounth,1,1,@PersonelNoFROM ,@PersonelNoTo , @YearMounthRetared  ) InterdictForUse_retaerd  ON Pay.Functions.PersonelNo = InterdictForUse_retaerd.PersonelNo INNER JOIN
                      Pay.PersonelInfo ON Pay.Functions.PersonelNo = Pay.PersonelInfo.PersonelNo LEFT OUTER JOIN
                      Pay.FormsInfo FormsInfo_Office ON Pay.Functions.OfficeCode = FormsInfo_Office.FormInfoID LEFT OUTER JOIN
                      Pay.FormsInfo FormsInfo_Project ON Pay.Functions.ProjectID = FormsInfo_Project.FormInfoID LEFT OUTER JOIN
                      Pay.FormsInfo FormsInfo_3 ON Pay.Functions.ProcCode = FormsInfo_3.FormInfoID LEFT OUTER JOIN
                      Pay.FormsInfo FormsInfo_4 ON Pay.Functions.CTopic3 = FormsInfo_4.FormInfoID LEFT OUTER JOIN
                      Pay.StandardTimes ON Pay.Functions.Mounth = Pay.StandardTimes.InfoID INNER JOIN 
                      (SELECT     PersonelNo, SUM(FunctionDay + ISNULL(SickDay, 0)) AS AllDay 
							FROM         Pay.Functions    
							Where Pay.Functions.Mounth =  @Mounth AND (Pay.Functions.YearID = left(@YearMounth,4) ) 
							GROUP BY PersonelNo
							) AllDay_Function on AllDay_Function.PersonelNo=Pay.Functions.PersonelNo


----    makhsose pasargad ------FixCalcu_Retared	
LEFT OUTER JOIN
                      Pay.FunctionsItems ON Pay.Functions.FunctionID = Pay.FunctionsItems.FunctionID AND InterdictForUse_retaerd.SalaryID = Pay.FunctionsItems.SalaryID
----    makhsose pasargad ------FixCalcu_Retared	
							----------abedi 93/06/26-----------
                       LEFT OUTER JOIN  Pay.FormTypes INNER JOIN
                       Pay.FormsInfo ON Pay.FormTypes.FormType = Pay.FormsInfo.FormType ON InterdictForUse_retaerd.SalaryID = Pay.FormsInfo.FormInfoID
							----------abedi 93/06/26-----------

WHERE     (Pay.Functions.Mounth =  @Mounth  AND (Pay.Functions.YearID = left(@YearMounth,4) )  and Pay.Functions.PersonelNo between @PersonelNoFROM and @PersonelNoTo ) and    
             ( CASE InterdictForUse_retaerd.CalCulateType 
	WHEN 0 THEN 0 
	WHEN 1 THEN ROUND(InterdictForUse_retaerd.Amount / 30 * Pay.Functions.FunctionDay,0)
	WHEN 2 THEN ROUND(InterdictForUse_retaerd.Amount / Pay.StandardTimes.StandardDays * Pay.Functions.Functionday,0)
	WHEN 3 THEN ROUND(InterdictForUse_retaerd.Amount / Pay.StandardTimes.Standardtimes * Pay.Functions.FunctionTime,0)
	WHEN 4 THEN 
		CASE  WHEN AllDay_Function.AllDay =0 THEN InterdictForUse_retaerd.Amount ELSE 
			ROUND((Pay.Functions.FunctionDay /  AllDay_Function.AllDay )  * InterdictForUse_retaerd.Amount ,0)
		end 
	WHEN 5  THEN CASE  WHEN Pay.Functions.FunctionDay >30 THEN InterdictForUse_retaerd.Amount ELSE  ROUND(InterdictForUse_retaerd.Amount / 30 * Pay.Functions.FunctionDay,0)  END 
	WHEN 6 THEN ROUND(InterdictForUse_retaerd.Amount * Pay.Functions.Functionday,0)
	WHEN 7 THEN ROUND(InterdictForUse_retaerd.Amount / 30 * Pay.StandardTimes.StandardDays ,0)
	WHEN 8 THEN ROUND(InterdictForUse_retaerd.Amount /30* ( Pay.Functions.Functionday + ISNULL(Pay.Functions.SickDay,0)),0) 
	WHEN 11 THEN --ROUND(InterdictForUse_retaerd.Amount/(SELECT COUNT(ProjectID)FROM Pay.Functions WHERE PersonelNo = InterdictForUse_retaerd.PersonelNo AND Mounth = @Mounth GROUP BY PersonelNo),0)
                 CASE WHEN Pay.Functions.FunctionID=(SELECT MIN(FunctionID)FROM Pay.Functions 
                      WHERE PersonelNo=InterdictForUse_retaerd.PersonelNo AND Mounth=@Mounth )
                    THEN InterdictForUse_retaerd.Amount ELSE 0 END
	ELSE 0 	end )  <>0 
	and  (InterdictForUse_retaerd.Curent_Amount <> 0)

------------------		پايان محاسبه محاسبه حقوق پايه ، حق جذب  و ساير					---------------
union all 
------------------		اين قسمت بمنظور محاسبه ناهاري و كارانه و بهره وري طراحي شده است	---------------

SELECT     Pay.Functions.FunctionID,Pay.Functions.FormInfoID AS FunctionInfoID,InterdictForUse_retaerd.PersonelNo,Pay.Functions.ProjectID,Pay.Functions.OfficeCode,Pay.Functions.JobCode,
     InterdictForUse_retaerd.SalaryID,Pay.Functions.Mounth,Functions.ProcCode,

   CASE InterdictForUse_retaerd.CalCulateType 
	WHEN 0 THEN 0 
	WHEN 1 THEN ROUND(InterdictForUse_retaerd.Amount / 30 * Pay.FunctionsItems.FDaily ,0)
	WHEN 4 THEN InterdictForUse_retaerd.Amount
	WHEN 5  THEN CASE  WHEN Pay.FunctionsItems.FDaily  >30 THEN InterdictForUse_retaerd.Amount ELSE  ROUND(InterdictForUse_retaerd.Amount / 30 * Pay.FunctionsItems.FDaily ,0)  END 
	WHEN 6 THEN ROUND(InterdictForUse_retaerd.Amount * Pay.FunctionsItems.FDaily ,0)
	WHEN 8 THEN ROUND(InterdictForUse_retaerd.Amount / 30 * ( Pay.Functions.Functionday + ISNULL(Pay.Functions.SickDay,0)),0) 	
	WHEN 9 THEN ROUND(InterdictForUse_retaerd.Amount *   Pay.Functions.Functionday ,0) 
	WHEN 10 THEN ROUND(InterdictForUse_retaerd.Amount *  Pay.Functions.FunctionTime ,0)
----    makhsose pasargad ------3	FixCalcu_Retared
    WHEN 13 THEN
          CASE WHEN  Pay.FunctionsItems.FDaily >15 THEN
           ROUND(InterdictForUse_retaerd.Amount *(Pay.FunctionsItems.FDaily - 15 )* 1.4+InterdictForUse_retaerd.Amount*15 ,0)
       ELSE InterdictForUse_retaerd.Amount *  Pay.FunctionsItems.FDaily --end
        END

----    makhsose pasargad ------3	FixCalcu_Retared
	ELSE      InterdictForUse_retaerd.Amount * Pay.FunctionsItems.FDaily END AS price,
	1 AS BedBes,2 AS CalCulateKind,
	CASE Pay.FormTypes.TopicCodeKind 
		WHEN 0 THEN 0 
		WHEN 1 THEN InterdictForUse_retaerd.AccTopicCode
		WHEN 2 THEN Pay.FormsInfo.AccTopicCode 
		WHEN 3 THEN FormsInfo_2.AccTopicCode
		WHEN 4 THEN FormsInfo_1.AccTopicCode
		WHEN 5 THEN InterdictForUse_retaerd.MasterAccTopicCode
		WHEN 6 THEN Pay.PersonelInfo.AccTopicCode
		WHEN 8 THEN FormsInfo_ProcCode.AccTopicCode
		WHEN 9 THEN FormsInfo_CTopics3.AccTopicCode
	ELSE 0 END AS AccTopicCode,
	CASE Pay.FormTypes.DetailCodeKind 
		WHEN 0 THEN 0 
		WHEN 1 THEN InterdictForUse_retaerd.AccDetailCode
		WHEN 2 THEN Pay.FormsInfo.AccDetailCode
		WHEN 3 THEN FormsInfo_2.AccDetailCode
		WHEN 4 THEN FormsInfo_1.AccDetailCode
		WHEN 5 THEN InterdictForUse_retaerd.MasterAccDetailCode
		WHEN 6 THEN Pay.PersonelInfo.AccDetailCode
		WHEN 8 THEN FormsInfo_ProcCode.AccDetailCode
		WHEN 9 THEN FormsInfo_CTopics3.AccDetailCode
	ELSE 0 END AS AccDetailCode,
	CASE Pay.FormTypes.CTopicCodeKind 
		WHEN 0 THEN 0 
		WHEN 1 THEN InterdictForUse_retaerd.AccCTopicCode
		WHEN 2 THEN Pay.FormsInfo.AccCTopicCode
		WHEN 3 THEN FormsInfo_2.AccCTopicCode
		WHEN 4 THEN FormsInfo_1.AccCTopicCode
		WHEN 5 THEN InterdictForUse_retaerd.MasterAccCTopicCode
		WHEN 6 THEN Pay.PersonelInfo.AccCTopicCode
		WHEN 8 THEN FormsInfo_ProcCode.AccCTopicCode
		WHEN 9 THEN FormsInfo_CTopics3.AccCTopicCode
	ELSE 0 END AS AccCTopicCode,
	CASE Pay.FormTypes.CTopicCode2Kind 
		WHEN 0 THEN 0 
		WHEN 1 THEN InterdictForUse_retaerd.AccCTopicCode2

		WHEN 2 THEN Pay.FormsInfo.AccCTopicCode2
		WHEN 3 THEN FormsInfo_2.AccCTopicCode2
		WHEN 4 THEN FormsInfo_1.AccCTopicCode2
		WHEN 5 THEN InterdictForUse_retaerd.MasterAccCTopicCode2
		WHEN 6 THEN Pay.PersonelInfo.AccCTopicCode2
		WHEN 8 THEN FormsInfo_ProcCode.AccCTopicCode2
		WHEN 9 THEN FormsInfo_CTopics3.AccCTopicCode2
    	WHEN 11 THEN StandardTimes.AccCTopicCode2
    	--WHEN 12 THEN st.AccCTopicCode2
	ELSE 0 END AS AccCTopicCode2,
	CASE Pay.FormTypes.CTopicCode3Kind
		WHEN 0 THEN 0 
--		WHEN 1 THEN InterdictForUse_retaerd.AccCTopicCode3
		WHEN 2 THEN Pay.FormsInfo.AccCTopicCode3
		WHEN 3 THEN FormsInfo_2.AccCTopicCode3
		WHEN 4 THEN FormsInfo_1.AccCTopicCode3
--		WHEN 5 THEN InterdictForUse_retaerd.MasterAccCTopicCode3
--		WHEN 6 THEN Pay.PersonelInfo.AccCTopicCode3
		WHEN 8 THEN FormsInfo_ProcCode.AccCTopicCode3
		WHEN 9 THEN FormsInfo_CTopics3.AccCTopicCode3
    	WHEN 10 THEN StandardTimes.AccCTopicCode3
 	 ELSE 0 END AS AccCTopicCode3,

	1 AS ShowListKind

FROM         Pay.InterdictForUse_retaerd(@YearMounth, 2, 2, @PersonelNoFrom, @PersonelNoTo , @YearMounthRetared ) AS InterdictForUse_retaerd INNER JOIN
                      Pay.Functions INNER JOIN
                      Pay.PersonelInfo ON Pay.Functions.PersonelNo = Pay.PersonelInfo.PersonelNo ON InterdictForUse_retaerd.PersonelNo = Pay.Functions.PersonelNo LEFT OUTER JOIN
                      Pay.FormTypes INNER JOIN
                       Pay.FormsInfo ON Pay.FormTypes.FormType = Pay.FormsInfo.FormType ON InterdictForUse_retaerd.SalaryID = Pay.FormsInfo.FormInfoID LEFT OUTER JOIN
                      Pay.FunctionsItems ON Pay.Functions.FunctionID = Pay.FunctionsItems.FunctionID AND InterdictForUse_retaerd.SalaryID = Pay.FunctionsItems.SalaryID LEFT OUTER JOIN
                       Pay.FormsInfo AS FormsInfo_1 ON Pay.Functions.OfficeCode = FormsInfo_1.FormInfoID LEFT OUTER JOIN
                       Pay.FormsInfo AS FormsInfo_2 ON Pay.Functions.ProjectID = FormsInfo_2.FormInfoID LEFT OUTER JOIN
                       Pay.FormsInfo AS FormsInfo_ProcCode ON Pay.Functions.ProcCode = FormsInfo_ProcCode.FormInfoID LEFT OUTER JOIN
                       Pay.FormsInfo AS FormsInfo_CTopics3 ON Pay.Functions.CTopic3 = FormsInfo_CTopics3.FormInfoID INNER JOIN
                      Pay.StandardTimes ON @Mounth = Pay.StandardTimes.InfoID 
                                           
WHERE     (Pay.Functions.Mounth = @Mounth AND (Pay.Functions.YearID = left(@YearMounth,4) ) and Pay.Functions.PersonelNo between @PersonelNoFROM and @PersonelNoTo ) and  (InterdictForUse_retaerd.Curent_Amount <> 0)


------------		           پايان محاسبه بهره وري و كارانه                              ---------
UNION ALL
------------       محاسبه مزاياي محاسباتي مانند اضافه كاري ، نوبت كاري ، غيبت و شبكاري     ---------

SELECT     Pay.FunctionsItems.FunctionID,Pay.Functions.FormInfoID AS FunctionInfoID,Pay.Functions.PersonelNo,Pay.Functions.ProjectID,
                       Pay.Functions.OfficeCode,Pay.Functions.JobCode,Pay.FunctionsItems.SalaryID,Pay.Functions.Mounth,Functions.ProcCode,
		/*ROUND(SUM(InterdictForUse_retaerd.Amount) / MAX(FormsInfo.Amount)  * MAX(FormsInfo.StandardDays * Pay.FunctionsItems.FDaily ) + SUM(InterdictForUse_retaerd.Amount) / MAX(FormsInfo.Amount) * MAX(FormsInfo.StandardTimes *   Pay.FunctionsItems.FHours ),
                       0 ) AS price */
        ROUND((CASE WHEN ((SUM(InterdictForUse_retaerd.Curent_Amount)>MAX(FormsInfo.FirstAmount) and MAX(FormsInfo.FirstAmount)>0))
  THEN 0 ELSE SUM(InterdictForUse_retaerd.Amount) END ) / MAX(FormsInfo.Amount)  * 
  MAX(FormsInfo.StandardDays * Pay.FunctionsItems.FDaily ) + 
 (CASE WHEN (SUM(InterdictForUse_retaerd.Curent_Amount)>MAX(FormsInfo.FirstAmount) and MAX(FormsInfo.FirstAmount)>0) 
   THEN 0 ELSE SUM(InterdictForUse_retaerd.Amount) END ) / MAX(FormsInfo.Amount) * MAX(FormsInfo.StandardTimes *   Pay.FunctionsItems.FHours ),
        0 ) AS price,SalaryEffectKind AS BedBes,5 AS CalCulateKind,

	CASE Pay.FormTypes.TopicCodeKind 
		WHEN 0 THEN 0 
		WHEN 1 THEN InterdictForUse_retaerd.AccTopicCode
		WHEN 2 THEN Pay.FormsInfo.AccTopicCode
		WHEN 3 THEN FormsInfo_Project.AccTopicCode
		WHEN 4 THEN FormsInfo_Office.AccTopicCode
		WHEN 5 THEN InterdictForUse_retaerd.MasterAccTopicCode
		WHEN 6 THEN Pay.PersonelInfo.AccTopicCode
		WHEN 8 THEN FormsInfo_ProcCode.AccTopicCode
		WHEN 9 THEN FormsInfo_CTopics3.AccTopicCode
	ELSE 0 END AS AccTopicCode,
	CASE Pay.FormTypes.DetailCodeKind 
		WHEN 0 THEN 0 
		WHEN 1 THEN InterdictForUse_retaerd.AccDetailCode
		WHEN 2 THEN Pay.FormsInfo.AccDetailCode
		WHEN 3 THEN FormsInfo_Project.AccDetailCode
		WHEN 4 THEN FormsInfo_Office.AccDetailCode
		WHEN 5 THEN InterdictForUse_retaerd.MasterAccDetailCode
		WHEN 6 THEN Pay.PersonelInfo.AccDetailCode
		WHEN 8 THEN FormsInfo_ProcCode.AccDetailCode
		WHEN 9 THEN FormsInfo_CTopics3.AccDetailCode
	ELSE 0 END AS AccDetailCode,
	CASE Pay.FormTypes.CTopicCodeKind 
		WHEN 0 THEN 0 
		WHEN 1 THEN InterdictForUse_retaerd.AccCTopicCode
		WHEN 2 THEN Pay.FormsInfo.AccCTopicCode
		WHEN 3 THEN FormsInfo_Project.AccCTopicCode
		WHEN 4 THEN FormsInfo_Office.AccCTopicCode
		WHEN 5 THEN InterdictForUse_retaerd.MasterAccCTopicCode
		WHEN 6 THEN Pay.PersonelInfo.AccCTopicCode
		WHEN 8 THEN FormsInfo_ProcCode.AccCTopicCode
		WHEN 9 THEN FormsInfo_CTopics3.AccCTopicCode
	ELSE 0 END AS AccCTopicCode,
	CASE Pay.FormTypes.CTopicCode2Kind 
		WHEN 0 THEN 0 
		WHEN 1 THEN InterdictForUse_retaerd.AccCTopicCode2
		WHEN 2 THEN Pay.FormsInfo.AccCTopicCode2
		WHEN 3 THEN FormsInfo_Project.AccCTopicCode2
		WHEN 4 THEN FormsInfo_Office.AccCTopicCode2
		WHEN 5 THEN InterdictForUse_retaerd.MasterAccCTopicCode2
		WHEN 6 THEN Pay.PersonelInfo.AccCTopicCode2
		WHEN 8 THEN FormsInfo_ProcCode.AccCTopicCode2
		WHEN 9 THEN FormsInfo_CTopics3.AccCTopicCode2
    	WHEN 11 THEN StandardTimes.AccCTopicCode2
    	--WHEN 12 THEN st.AccCTopicCode2
	ELSE 0 END AS AccCTopicCode2,
	CASE Pay.FormTypes.CTopicCode3Kind 
		WHEN 0 THEN 0 
--		WHEN 1 THEN InterdictForUse_retaerd.AccCTopicCode2
		WHEN 2 THEN Pay.FormsInfo.AccCTopicCode3
		WHEN 3 THEN FormsInfo_Project.AccCTopicCode3
		WHEN 4 THEN FormsInfo_Office.AccCTopicCode3
--		WHEN 5 THEN InterdictForUse_retaerd.MasterAccCTopicCode2
--		WHEN 6 THEN Pay.PersonelInfo.AccCTopicCode2
		WHEN 8 THEN FormsInfo_ProcCode.AccCTopicCode3
		WHEN 9 THEN FormsInfo_CTopics3.AccCTopicCode3
    	WHEN 10 THEN StandardTimes.AccCTopicCode3
	ELSE 0 END AS AccCTopicCode3,
	SalaryEffectKind AS ShowListKind
 
FROM         Pay.FunctionsItems INNER JOIN
                      Pay.Functions ON Pay.FunctionsItems.FunctionID = Pay.Functions.FunctionID INNER JOIN
                      Pay.InterdictForUse_retaerd(@YearMounth,1,1,@PersonelNoFROM ,@PersonelNoTo , @YearMounthRetared) InterdictForUse_retaerd ON Pay.Functions.PersonelNo = InterdictForUse_retaerd.PersonelNo INNER JOIN
                          (SELECT     *
                             FROM         Pay.SalaryRange
                             WHERE     kind = 0) SalaryRange4Use ON InterdictForUse_retaerd.SalaryID = SalaryRange4Use.SalaryID AND 
                      Pay.FunctionsItems.SalaryID = SalaryRange4Use.FormInfoID INNER JOIN
                      Pay.FormsInfo ON Pay.FunctionsItems.SalaryID = Pay.FormsInfo.FormInfoID INNER JOIN
                      Pay.FormTypes ON Pay.FormsInfo.FormType =Pay.FormTypes.FormType INNER JOIN
                      Pay.PersonelInfo ON Pay.Functions.PersonelNo = Pay.PersonelInfo.PersonelNo LEFT OUTER JOIN
                      Pay.FormsInfo FormsInfo_Office ON Pay.Functions.OfficeCode = FormsInfo_Office.FormInfoID LEFT OUTER JOIN
                      Pay.FormsInfo FormsInfo_Project ON Pay.Functions.ProjectID = FormsInfo_Project.FormInfoID LEFT OUTER JOIN
                      Pay.FormsInfo FormsInfo_ProcCode ON Pay.Functions.ProcCode = FormsInfo_ProcCode.FormInfoID LEFT OUTER JOIN
                      Pay.FormsInfo FormsInfo_CTopics3 ON Pay.Functions.CTopic3 = FormsInfo_CTopics3.FormInfoID LEFT OUTER JOIN
                      Pay.FormsInfo FormsInfo_1 ON InterdictForUse_retaerd.OfficeCode = FormsInfo_1.FormInfoID  INNER JOIN
                      Pay.StandardTimes ON @Mounth = Pay.StandardTimes.InfoID 

WHERE     (FormTypes.SalaryKind = 5)
AND      (Pay.Functions.Mounth = @Mounth AND (Pay.Functions.YearID = left(@YearMounth,4) ) and Pay.Functions.PersonelNo between @PersonelNoFROM and @PersonelNoTo )
and  (InterdictForUse_retaerd.Curent_Amount <> 0)
GROUP BY Pay.FunctionsItems.FunctionID,Pay.FunctionsItems.SalaryID,Pay.Functions.PersonelNo,Pay.Functions.ProjectID,InterdictForUse_retaerd.OfficeCode,
                      Pay.Functions.JobCode,Pay.Functions.Mounth,Functions.ProcCode,Pay.Functions.FormInfoID,FormsInfo_Project.AccTopicCode,FormsInfo_Project.AccDetailCode,
                      FormsInfo_Project.AccCTopicCode,FormsInfo_Project.AccCTopicCode2,FormTypes.TopicCodeKind,FormTypes.DetailCodeKind,
                     Pay.FormTypes.CTopicCodeKind,FormTypes.CTopicCode2Kind,FormsInfo.AccTopicCode,FormsInfo.AccDetailCode,
                      Pay.FormsInfo.AccCTopicCode,FormsInfo.AccCTopicCode2,FormsInfo_Office.AccTopicCode,FormsInfo_Office.AccDetailCode,FormsInfo_Office.AccCTopicCode,
                      FormsInfo_Office.AccCTopicCode2,InterdictForUse_retaerd.AccTopicCode,InterdictForUse_retaerd.AccDetailCode,InterdictForUse_retaerd.AccCTopicCode,
                      InterdictForUse_retaerd.AccCTopicCode2,InterdictForUse_retaerd.MasterAccTopicCode,InterdictForUse_retaerd.MasterAccDetailCode,InterdictForUse_retaerd.MasterAccCTopicCode,
                      InterdictForUse_retaerd.MasterAccCTopicCode2,FormTypes.SalaryEffectKind,Pay.Functions.OfficeCode,PersonelInfo.AccTopicCode,
	        Pay.PersonelInfo.AccDetailCode,PersonelInfo.AccCTopicCode,PersonelInfo.AccCTopicCode2,FormsInfo_ProcCode.AccCTopicCode3,
		FormsInfo_CTopics3.AccCTopicCode3,FormsInfo_ProcCode.AccCTopicCode2,FormsInfo_CTopics3.AccCTopicCode2,
		FormsInfo_Project.AccCTopicCode3,FormsInfo_Office.AccCTopicCode3
,FormsInfo_ProcCode.AccCTopicCode,FormsInfo_CTopics3.AccCTopicCode,FormsInfo_ProcCode.AccDetailCode,FormsInfo_CTopics3.AccDetailCode
,FormsInfo_ProcCode.AccTopicCode,FormsInfo_CTopics3.AccTopicCode,FormTypes.CTopicCode3Kind,FormsInfo.AccCTopicCode3
,StandardTimes.AccCTopicCode2,StandardTimes.AccCTopicCode3
--HAVING      (Pay.Functions.Mounth = @Mounth and Pay.Functions.PersonelNo between @PersonelNoFROM and @PersonelNoTo )

-------------                پايان محاسبه  اضافه كاري و مزاياي محاسباتي                 ----------------

)

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
----------------------------------------------------------------------
----------------------------------------------------------------------
SET QUOTED_IDENTIFIER ON 
GO
--SET ANSI_NULLS OFF 
GO
CREATE FUNCTION Pay.[FixCalculateType_2]  (@Mounth int =1 ,@year int=84,@YearMounth varchar(7)= '81/01',
 @PersonelNoFROM int=0,@PersonelNoTo int=9999999  , @FormInfoID int=0)  
RETURNS  table  AS 
return  (
------------------   شروع محاسبه درصدي از حقوق و مزاياي محاسبه شده ----------------------
SELECT  0 AS FunctionID, 0 AS FunctionInfoID ,  FixedCalculated.PersonelNO, FixedCalculated.ProjectID, FixedCalculated.OfficeCode, 
		FixedCalculated.JobCede AS JobCode, ISNULL(SalaryRange.FormInfoID,0) AS SalaryID , FixedCalculated.Mounth, 
		FixedCalculated.ProcCode,

---   جهت تاثیر کارکرد در فرمول
		Case when MIN(ISNULL(FormsInfo.MaxDay,0))>0 AND (FormsInfo.WageCalcKind = 1)  then  ISNULL( MAX(FunctionsAll.FDaily),0)   
			 when MIN(ISNULL(FormsInfo.MaxTime,0))>0 AND (FormsInfo.WageCalcKind = 1)  then ISNULL( MAX(FunctionsAll.FHours),0)  
			 when MIN(ISNULL(FormsInfo.MaxDay,0))=0 AND MIN(ISNULL(FormsInfo.MaxTime,0))=0 AND (FormsInfo.WageCalcKind = 3)  then 1  
			 else 0 end *
---   جهت تاثیر کارکرد در فرمول    and(FormsInfo.WageCalcKind <> 3)

--		case when /*FormsInfo_2.FormType IN(29)*/3= 1 then SUM(FixedCalculated.Price) else
		ROUND(SUM((CASE FixedCalculated.BedBes WHEN 1 THEN 1 ELSE -1 END )*  FixedCalculated.Price ) 

----------abedi orderby Morteza.rezaei orderby Rahbin
-----	   *  (ISNULL( MAX(FunctionsAll.FDaily),0)+ISNULL( MAX(FunctionsAll.FHours),0))   Comment this Line ADD 2 Line Down
--       * case when Pay.FormsInfo.WageCalcKind = 3 then 1 else
--		  (ISNULL( MAX(FunctionsAll.FDaily),0)+ISNULL( MAX(FunctionsAll.FHours),0)) end
----------abedi orderby Morteza.rezaei  orderby Rahbin

		/ MAX(FormsInfo.Amount)  
		* ( MAX(ISNULL(FormsInfo.StandardDays,0))  + MAX(ISNULL(FormsInfo.StandardTimes,0)) )
		, 0 ) 
		
		--end
		AS price ,				
		
		FormTypes.SalaryEffectKind AS BedBes, 5 AS CalCulateKind, 

        CASE Pay.FormTypes.TopicCodeKind 
			WHEN 0 THEN 0 
			WHEN 2 THEN Pay.FormsInfo.AccTopicCode
		ELSE FixedCalculated.AccTopicCode END AS AccTopicCode,
		
		CASE Pay.FormTypes.DetailCodeKind 
			WHEN 0 THEN 0 
			WHEN 2 THEN Pay.FormsInfo.AccDetailCode
			WHEN 7 THEN Pay.PersonelInfo.AccDetailCode
			WHEN 10 THEN (
						CASE WHEN Pay.FormsInfo.AccDetailCode >0 
							then Pay.FormsInfo.AccDetailCode 
							ELSE Pay.PersonelInfo.AccDetailCode END )
	ELSE FixedCalculated.AccDetailCode END AS AccDetailCode,
	CASE Pay.FormTypes.CTopicCodeKind 
		WHEN 0 THEN 0 
		WHEN 2 THEN Pay.FormsInfo.AccCTopicCode
		ELSE FixedCalculated.AccCTopicCode END AS AccCTopicCode,
	CASE Pay.FormTypes.CTopicCode2Kind 
		WHEN 0 THEN 0 
		WHEN 2 THEN Pay.FormsInfo.AccCTopicCode2
    	WHEN 11 THEN StandardTimes.AccCTopicCode2
    	--WHEN 12 THEN st.AccCTopicCode2
	ELSE FixedCalculated.AccCTopicCode2 END AS AccCTopicCode2,
	CASE Pay.FormTypes.CTopicCode3Kind 
		WHEN 0 THEN 0 
		WHEN 2 THEN Pay.FormsInfo.AccCTopicCode3
    	WHEN 10 THEN StandardTimes.AccCTopicCode3
		ELSE 0 END AS AccCTopicCode3,
	SalaryEffectKind AS ShowListKind
        

 FROM            Pay.SalaryRange INNER JOIN
                         Pay.FixedCalculated ON Pay.SalaryRange.SalaryID = FixedCalculated.SalaryID INNER JOIN
                         Pay.PersonelInfo ON FixedCalculated.PersonelNO = Pay.PersonelInfo.PersonelNo INNER JOIN
                         Pay.FormTypes INNER JOIN
                          Pay.FormsInfo ON Pay.FormTypes.FormType = Pay.FormsInfo.FormType ON Pay.SalaryRange.FormInfoID = Pay.FormsInfo.FormInfoID INNER JOIN
                             (SELECT DISTINCT SalaryRange_1.FormInfoID, SalaryRange_1.SalaryID, DERIVEDTBL.PersonelNo
                                FROM            Pay.SalaryRange AS SalaryRange_1 INNER JOIN
                                                             (SELECT        EmployTypeID, PersonelNo
                                                                FROM            Pay.Interdicts
                                                                WHERE        (@YearMounth BETWEEN LEFT(InterdicStartDate,7) AND LEFT(InterdicEndDate,7))) AS DERIVEDTBL ON 
                                                         SalaryRange_1.FormInfoID = DERIVEDTBL.EmployTypeID
                                WHERE        (SalaryRange_1.FormInfoID IN
                                                             (SELECT        FormInfoID
                                                                FROM             Pay.FormsInfo AS FormsInfo_1
                                                                WHERE        (FormType = 14)))) AS filterPerson ON Pay.PersonelInfo.PersonelNo = filterPerson.PersonelNo AND 
                         Pay.FormsInfo.FormInfoID = filterPerson.SalaryID INNER JOIN
                         Pay.FinalArchiveWithPersonelNO ON FixedCalculated.PersonelNO = FinalArchiveWithPersonelNO.PersonelNO AND 
                         FixedCalculated.Mounth = FinalArchiveWithPersonelNO.Mounth AND
						                       Pay.FinalArchiveWithPersonelNO.YearID = Pay.FixedCalculated.YearID  

						 AND FixedCalculated.ArchiveID = FinalArchiveWithPersonelNO.ArchiveID INNER JOIN
                          Pay.FormsInfo AS FormsInfo_2 ON Pay.SalaryRange.SalaryID = FormsInfo_2.FormInfoID 
						 --INNER JOIN
                         --Functions ON Pay.PersonelInfo.PersonelNo = Pay.Functions.PersonelNo AND FinalArchiveWithPersonelNO.Mounth = Pay.Functions.Mounth left outer JOIN
                         --FunctionsItems ON Pay.Functions.FunctionID = Pay.FunctionsItems.FunctionID AND Pay.SalaryRange.FormInfoID = Pay.FunctionsItems.SalaryID
						 ---  بجاي جوين بالا جوين زير فعال شده مشكل به تعداد ايتمها اشتباه حساب مي شد
                       LEFT OUTER JOIN Pay.FunctionsAll  ON Pay.PersonelInfo.PersonelNo = Pay.FunctionsAll.PersonelNo 
					        AND FinalArchiveWithPersonelNO.Mounth = Pay.FunctionsAll.Mounth 
							 AND FinalArchiveWithPersonelNO.YearID = Pay.FunctionsAll.YearID 
							 AND Pay.SalaryRange.FormInfoID = Pay.FunctionsAll.SalaryID INNER JOIN
                      Pay.StandardTimes ON @Mounth = Pay.StandardTimes.InfoID 



   WHERE  (FixedCalculated.Mounth = @Mounth )
    AND	(FixedCalculated.PersonelNO BETWEEN @PersonelNoFROM AND @PersonelNoTo  )
	AND (FormsInfo.WageCalcKind in ( 1 , 3) )

	AND (FormsInfo.FormInfoID = @FormInfoID )
                      
GROUP BY FixedCalculated.PersonelNO, FixedCalculated.ProjectID, FixedCalculated.OfficeCode, 
		FixedCalculated.JobCede, Pay.SalaryRange.FormInfoID, FixedCalculated.Mounth, 
		FixedCalculated.BedBes, FormsInfo_2.FormType,
		      
        CASE Pay.FormTypes.TopicCodeKind 
			WHEN 0 THEN 0 
			WHEN 2 THEN Pay.FormsInfo.AccTopicCode
		ELSE FixedCalculated.AccTopicCode END ,
		
		CASE Pay.FormTypes.DetailCodeKind 
			WHEN 0 THEN 0 
			WHEN 2 THEN Pay.FormsInfo.AccDetailCode
			WHEN 7 THEN Pay.PersonelInfo.AccDetailCode
			WHEN 10 THEN (
						CASE WHEN Pay.FormsInfo.AccDetailCode >0 
							then Pay.FormsInfo.AccDetailCode 
							ELSE Pay.PersonelInfo.AccDetailCode END )
	ELSE FixedCalculated.AccDetailCode END ,
	CASE Pay.FormTypes.CTopicCodeKind 
		WHEN 0 THEN 0 
		WHEN 2 THEN Pay.FormsInfo.AccCTopicCode
		ELSE FixedCalculated.AccCTopicCode END ,
	CASE Pay.FormTypes.CTopicCode2Kind 
		WHEN 0 THEN 0 
		WHEN 2 THEN Pay.FormsInfo.AccCTopicCode2
    	WHEN 11 THEN StandardTimes.AccCTopicCode2
    	--WHEN 12 THEN st.AccCTopicCode2
	ELSE FixedCalculated.AccCTopicCode2 END ,
	CASE Pay.FormTypes.CTopicCode3Kind 
		WHEN 0 THEN 0 
		WHEN 2 THEN Pay.FormsInfo.AccCTopicCode3
    	WHEN 10 THEN StandardTimes.AccCTopicCode3
		ELSE 0 END , SalaryEffectKind , Pay.FormsInfo.WageCalcKind , FixedCalculated.ShowListKind , 
		FixedCalculated.ProcCode ,FormTypes.SalaryEffectKind
		
HAVING	(SUM(FixedCalculated.Price) <> 0) 
  --WHERE AND  (FixedCalculated.Mounth = @Mounth ) AND
		--(FixedCalculated.PersonelNO BETWEEN @PersonelNoFROM AND @PersonelNoTo  ) AND 
		--(FormsInfo.WageCalcKind in ( 1 , 3) )
		
--------------      پايان محاسبه درصدي از حقوق و مزاياي محاسبه شده    ---------------

)

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
----------------------------------------------------------------------
----------------------------------------------------------------------
SET QUOTED_IDENTIFIER ON 
GO
--SET ANSI_NULLS OFF 
GO
CREATE FUNCTION Pay.[FixCalculateType_3]  (@Mounth int =1 ,@year int=84,@YearMounth varchar(7)= '98/02',
 @PersonelNoFROM int=0,@PersonelNoTo int=9999999  , @FormInfoID int=0)  
RETURNS  table  AS 
return  (
  -------------4-بازگردانی کسورات

SELECT   Fc.FunctionID, Fc.FormInfoID as FunctionInfoID,  Fc.PersonelNO, Fc.ProjectID, Fc.OfficeCode, 
		Fc.JobCede AS JobCode, ISNULL(R1.FormInfoID,0) AS SalaryID , Fc.Mounth, 
		Fc.ProcCode,


		 SUM(Fc.Price) AS price ,				
		
		FormTypes.SalaryEffectKind AS BedBes, 5 AS CalCulateKind, 

        CASE Pay.FormTypes.TopicCodeKind 
			WHEN 0 THEN 0 
			WHEN 2 THEN Pay.FormsInfo.AccTopicCode
		ELSE Fc.AccTopicCode END AS AccTopicCode,
		
		CASE Pay.FormTypes.DetailCodeKind 
			WHEN 0 THEN 0 
			WHEN 2 THEN Pay.FormsInfo.AccDetailCode
			WHEN 7 THEN Pay.PersonelInfo.AccDetailCode
			WHEN 10 THEN (
						CASE WHEN Pay.FormsInfo.AccDetailCode >0 
							then Pay.FormsInfo.AccDetailCode 
							ELSE Pay.PersonelInfo.AccDetailCode END )
	ELSE Fc.AccDetailCode END AS AccDetailCode,
	CASE Pay.FormTypes.CTopicCodeKind 
		WHEN 0 THEN 0 
		WHEN 2 THEN Pay.FormsInfo.AccCTopicCode
		ELSE Fc.AccCTopicCode END AS AccCTopicCode,
	CASE Pay.FormTypes.CTopicCode2Kind 
		WHEN 0 THEN 0 
		WHEN 2 THEN Pay.FormsInfo.AccCTopicCode2
    	WHEN 11 THEN StandardTimes.AccCTopicCode2
    	--WHEN 12 THEN st.AccCTopicCode2
	ELSE Fc.AccCTopicCode2 END AS AccCTopicCode2,
	CASE Pay.FormTypes.CTopicCode3Kind 
		WHEN 0 THEN 0 
		WHEN 2 THEN Pay.FormsInfo.AccCTopicCode3
    	WHEN 10 THEN StandardTimes.AccCTopicCode3
		ELSE 0 END AS AccCTopicCode3,
	SalaryEffectKind AS ShowListKind 




 
FROM    Pay.FixedCalculated Fc LEFT OUTER JOIN
        Pay.FormsInfo ON Fc.SalaryID = Pay.FormsInfo.FormInfoID
		LEFT OUTER JOIN Pay.SalaryRange R1 ON Fc.SalaryID = R1.SalaryID
		LEFT OUTER JOIN  Pay.FormsInfo as FormsInfo_2  ON R1.FormInfoID = FormsInfo_2.FormInfoID
		LEFT OUTER JOIN Pay.FormTypes  ON Pay.FormTypes.FormType = FormsInfo_2.FormType 
		INNER JOIN Pay.PersonelInfo ON Fc.PersonelNO = Pay.PersonelInfo.PersonelNo  INNER JOIN
                      Pay.StandardTimes ON Fc.Mounth = Pay.StandardTimes.InfoID 
		 
		  
WHERE   (Fc.Mounth = @Mounth)
 AND ((Fc.ShowListKind = 2) OR(Fc.ShowListKind = 11))
 AND (Fc.PersonelNO BETWEEN @PersonelNoFROM AND @PersonelNoTo  )
 AND (bedbes=2)
 AND (Fc.ArchiveID = 0)
 AND (FormsInfo_2.WageCalcKind = 4) 
 AND  R1.FormInfoID in
        (SELECT R2.SalaryID from 
		Pay.InterdictForUse(@YearMounth,1,2,@PersonelNoFROM ,@PersonelNoTo , 0) AS I
				 LEFT OUTER JOIN Pay.SalaryRange R2 ON I.EmployTypeID = R2.FormInfoID 
			where  PersonelNo  = Fc.PersonelNO ) 


GROUP BY Fc.FunctionID,Fc.FormInfoID,Fc.PersonelNO, Fc.ProjectID, Fc.OfficeCode, 
		Fc.JobCede, R1.FormInfoID, Fc.Mounth, 
		Fc.BedBes, FormsInfo_2.FormType,
		      
        CASE Pay.FormTypes.TopicCodeKind 
			WHEN 0 THEN 0 
			WHEN 2 THEN Pay.FormsInfo.AccTopicCode
		ELSE Fc.AccTopicCode END ,
		
		CASE Pay.FormTypes.DetailCodeKind 
			WHEN 0 THEN 0 
			WHEN 2 THEN Pay.FormsInfo.AccDetailCode
			WHEN 7 THEN Pay.PersonelInfo.AccDetailCode
			WHEN 10 THEN (
						CASE WHEN Pay.FormsInfo.AccDetailCode >0 
							then Pay.FormsInfo.AccDetailCode 
							ELSE Pay.PersonelInfo.AccDetailCode END )
	ELSE Fc.AccDetailCode END ,
	CASE Pay.FormTypes.CTopicCodeKind 
		WHEN 0 THEN 0 
		WHEN 2 THEN Pay.FormsInfo.AccCTopicCode
		ELSE Fc.AccCTopicCode END ,
	CASE Pay.FormTypes.CTopicCode2Kind 
		WHEN 0 THEN 0 
		WHEN 2 THEN Pay.FormsInfo.AccCTopicCode2
    	WHEN 11 THEN StandardTimes.AccCTopicCode2
    	--WHEN 12 THEN st.AccCTopicCode2
	ELSE Fc.AccCTopicCode2 END ,
	CASE Pay.FormTypes.CTopicCode3Kind 
		WHEN 0 THEN 0 
		WHEN 2 THEN Pay.FormsInfo.AccCTopicCode3
    	WHEN 10 THEN StandardTimes.AccCTopicCode3
		ELSE 0 END , SalaryEffectKind , Pay.FormsInfo.WageCalcKind , Fc.ShowListKind , 
		Fc.ProcCode ,FormTypes.SalaryEffectKind
		
HAVING	(SUM(Fc.Price) <> 0) 

 ----------------------پایان 4-بازگردانی کسورات------------------------------

)  
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
----------------------------------------------------------------------
----------------------------------------------------------------------
SET QUOTED_IDENTIFIER ON 
GO
--SET ANSI_NULLS OFF 
GO
CREATE FUNCTION Pay.[GetRetaredYearMounth] (@YearMounth varchar(7) )
RETURNS varchar(7) 
begin

declare @RetaredYearMounth varchar(7)
    
SELECT		@RetaredYearMounth= min( left(Pay.InterdictItems.Firstdate,7))
FROM		Pay.Interdicts INNER JOIN
			Pay.InterdictItems ON  Pay.Interdicts.InterdictID = Pay.InterdictItems.InterdictID 
WHERE		(@YearMounth between left(Pay.Interdicts.InterdicStartDate,7) and left(Pay.Interdicts.InterdicEnddate,7)) 

--            AND (LEN(InterdictItems.Firstdate) > 7)

  RETURN(@RetaredYearMounth)   
end
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
----------------------------------------------------------------------
----------------------------------------------------------------------
----------------------------------------------------------------------
----------------------------------------------------------------------
SET QUOTED_IDENTIFIER ON 
GO
--SET ANSI_NULLS OFF 
GO
CREATE FUNCTION Pay.[InterdictForUse_2] 
------------------------------- پارامتر ها بترتيب  شامل  1- تركيب سال و ماه 2- نوع عوامل حقوق و مزايا  (  در معرفي انواع فرمها  = همان نوع عوامل حقوق و مزايا ميباشد . (‏ - ----------------------
	 (@YearMounth varchar(7) ='81/01' ,@salarykind int=1,@salarykindTo int=1 ,
	 @PersonelNoFROM int=0,@PersonelNoTo int=9999999)  
RETURNS  table  AS 
return  (
SELECT     Pay.Interdicts.PersonelNo, Pay.Interdicts.subcompanyCode, Pay.Interdicts.OfficeCode, Pay.Interdicts.jobCode, Pay.Interdicts.AccTopicCode, Pay.Interdicts.AccDetailCode, 
                      Pay.Interdicts.AccCTopicCode, Pay.Interdicts.AccCTopicCode2, Pay.Interdicts.AccCTopicCode3,FormTypes_1.TopicCodeKind,FormTypes_1.DetailCodeKind, 
                     FormTypes_1.CTopicCodeKind,FormTypes_1.CTopicCode2Kind,FormTypes_1.CTopicCode3Kind, FormsInfo_2.FormType, 
                      FormsInfo_3.AccTopicCode AS OfficeAccTopicCode, FormsInfo_3.AccDetailCode AS OfficeAccDetailCode, 
                      FormsInfo_3.AccCTopicCode AS OfficeAccCTopicCode, FormsInfo_3.AccCTopicCode2 AS OfficeAccCTopicCode2, 
                      FormsInfo_3.AccCTopicCode3 AS OfficeAccCTopicCode3, FormsInfo_2.AccTopicCode AS MasterAccTopicCode, 
                      FormsInfo_2.AccDetailCode AS MasterAccDetailCode, FormsInfo_2.AccCTopicCode AS MasterAccCTopicCode, 
                      FormsInfo_2.AccCTopicCode2 AS MasterAccCTopicCode2, FormsInfo_2.AccCTopicCode3 AS MasterAccCTopicCode3
FROM         Pay.Interdicts INNER JOIN
                       Pay.FormsInfo AS FormsInfo_2 ON Pay.Interdicts.EmployTypeID = FormsInfo_2.FormInfoID INNER JOIN
                      Pay.FormTypes AS FormTypes_1 ON FormsInfo_2.FormType =FormTypes_1.FormType INNER JOIN
                       Pay.FormsInfo AS FormsInfo_3 ON Pay.Interdicts.OfficeCode = FormsInfo_3.FormInfoID
WHERE   ( @YearMounth between  LEFT(Interdicts.InterdicStartDate,7)  AND LEFT(Interdicts.InterdicEndDate,7) )
AND      (Pay.Interdicts.PersonelNo BETWEEN  @PersonelNoFROM and @PersonelNoTo )

GROUP BY Pay.Interdicts.PersonelNo, Pay.Interdicts.subcompanyCode, Pay.Interdicts.OfficeCode, Pay.Interdicts.jobCode, Pay.Interdicts.AccTopicCode, Pay.Interdicts.AccDetailCode, 
                      Pay.Interdicts.AccCTopicCode, Pay.Interdicts.AccCTopicCode2, Pay.Interdicts.AccCTopicCode3,FormTypes_1.TopicCodeKind,FormTypes_1.DetailCodeKind, 
                     FormTypes_1.CTopicCodeKind,FormTypes_1.CTopicCode2Kind,FormTypes_1.CTopicCode3Kind, FormsInfo_2.FormType, FormsInfo_3.AccTopicCode, 
                      FormsInfo_3.AccDetailCode, FormsInfo_3.AccCTopicCode, FormsInfo_3.AccCTopicCode2, FormsInfo_3.AccCTopicCode3, FormsInfo_2.AccTopicCode, 
                      FormsInfo_2.AccDetailCode, FormsInfo_2.AccCTopicCode, FormsInfo_2.AccCTopicCode2, FormsInfo_2.AccCTopicCode3

--HAVING      (Pay.Interdicts.PersonelNo BETWEEN  @PersonelNoFROM and @PersonelNoTo )
)
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
----------------------------------------------------------------------
----------------------------------------------------------------------
SET QUOTED_IDENTIFIER ON 
GO
--SET ANSI_NULLS OFF 
GO
CREATE FUNCTION Pay.[BimehDarman_2]  (@Mounth int =10 ,@YearMounth varchar(7)= '81/01',
 @PersonelNoFROM int=0,@PersonelNoTo int=9999999 )  
RETURNS  table  AS 
return  (
SELECT	PersonelDecExt.PersonelNo, Pay.FormsInfo.FormInfoID ,
		ROUND(
			CASE WHEN SUM(InterdictForUse.Amount) <MAX(FormsInfo_Master.Amount) THEN 
			SUM(InterdictForUse.Amount) ELSE MAX(FormsInfo_Master.Amount) END *
		FormsInfo.StandardDays / 100,0) AS BimehDarman_2 ,
		ROUND(
			CASE WHEN SUM(InterdictForUse.Amount) <MAX(FormsInfo_Master.Amount) THEN 
			SUM(InterdictForUse.Amount) ELSE MAX(FormsInfo_Master.Amount) END *
		FormsInfo.Standardtimes / 100,0) AS employer_BimehDarman_2
FROM	 Pay.FormsInfo INNER JOIN
		 Pay.FormsInfo AS FormsInfo_Master ON Pay.FormsInfo.PrvInfoID = FormsInfo_Master.FormInfoID INNER JOIN
		PersonelDecExt ON FormsInfo_Master.FormInfoID = Pay.PersonelDecExt.FormInfoID INNER JOIN
		SalaryRange ON Pay.FormsInfo.FormInfoID = Pay.SalaryRange.FormInfoID INNER JOIN
		Pay.InterdictForUse(@YearMounth,1,2,@PersonelNoFROM ,@PersonelNoTo , 1) AS InterdictForUse 
			ON Pay.SalaryRange.SalaryID = InterdictForUse.SalaryID AND 
		PersonelDecExt.PersonelNo = InterdictForUse.PersonelNo
WHERE	(FormsInfo.FormType = 63) AND 
		(FormsInfo_Master.FormType = 61) AND 
		(FormsInfo_Master.StandardDays = 1) AND 
		(SalaryRange.Kind = 1) AND 
		(PersonelDecExt.FirstMounth <= @Mounth) AND (PersonelDecExt.EndMounth >= @Mounth) AND 
		(PersonelDecExt.State <> 1)
GROUP BY Pay.PersonelDecExt.PersonelNo , Pay.FormsInfo.StandardDays ,FormsInfo.FormInfoID ,FormsInfo.Standardtimes
)
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
----------------------------------------------------------------------
----------------------------------------------------------------------
SET QUOTED_IDENTIFIER ON 
GO
--SET ANSI_NULLS OFF 
GO
CREATE FUNCTION Pay.[BimehDarman_1]  (@Mounth int =10 ,@YearMounth varchar(7)= '81/01',
 @PersonelNoFROM int=0,@PersonelNoTo int=9999999 )  
RETURNS  table  AS 
return  (

SELECT	PersonelDecExt.PersonelNo , Pay.FormsInfo.FormInfoID ,
		ROUND( 
			CASE WHEN SUM(Fixed.Price) <MAX(FormsInfo_Master.Amount) THEN 
			SUM(Fixed.Price) ELSE MAX(FormsInfo_Master.Amount) END *
		FormsInfo.StandardDays / 100,0) AS PriceBimeh ,
		ROUND(
			CASE WHEN SUM(Fixed.Price) <MAX(FormsInfo_Master.Amount) THEN 
			SUM(Fixed.Price) ELSE MAX(FormsInfo_Master.Amount) END *
		FormsInfo.Standardtimes / 100,0) AS employer_PriceBimeh
FROM          Pay.FormsInfo INNER JOIN
                       Pay.FormsInfo AS FormsInfo_Master ON Pay.FormsInfo.PrvInfoID = FormsInfo_Master.FormInfoID INNER JOIN
                      Pay.PersonelDecExt ON FormsInfo_Master.FormInfoID = Pay.PersonelDecExt.FormInfoID INNER JOIN
                      Pay.SalaryRange ON Pay.FormsInfo.FormInfoID = Pay.SalaryRange.FormInfoID INNER JOIN
                          (SELECT     FixedCID, FunctionID, FormInfoID, PersonelNO, ProjectID, OfficeCode, JobCede, SalaryID, Mounth, Price, BedBes, CalCulateKind, 
                                                   AccTopicCode, AccDetailCode, AccCTopicCode, AccCTopicCode2, ShowListKind, ArchiveDate, DocNo, DocDate, ArchiveID, 
                                                   AccCTopicCode3, ProcCode, MounthRetard, YearRetard
                             FROM         FixedCalculated
                             WHERE     (Mounth = @Mounth)) AS Fixed ON Pay.SalaryRange.SalaryID = Fixed.SalaryID AND Pay.PersonelDecExt.PersonelNo = Fixed.PersonelNO INNER JOIN
                      Pay.FixedCalActive() AS FixedCalActive_1 ON Fixed.PersonelNO = FixedCalActive_1.PersonelNO AND 
                      Fixed.ArchiveID = FixedCalActive_1.F_ArchiveID AND Fixed.Mounth = FixedCalActive_1.Mounth --AND Fixed.YearRetard = FixedCalActive_1.YearID
WHERE	(PersonelDecExt.FirstMounth <= @Mounth) AND (PersonelDecExt.EndMounth >= @Mounth) AND 
		(PersonelDecExt.State <> 1) AND 
		(FormsInfo.FormType = 63) AND 
		(FormsInfo_Master.FormType = 61) AND 
		(FormsInfo_Master.StandardDays = 1) AND 
		(SalaryRange.Kind = 0)
		AND (PersonelDecExt.PersonelNo between @PersonelNoFROM  and @PersonelNoTo )
GROUP BY Pay.PersonelDecExt.PersonelNo , Pay.FormsInfo.FormInfoID ,FormsInfo.StandardDays , Pay.FormsInfo.Standardtimes
--Having (PersonelDecExt.PersonelNo between @PersonelNoFROM  and @PersonelNoTo )

)
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
----------------------------------------------------------------------
----------------------------------------------------------------------
SET QUOTED_IDENTIFIER ON 
GO
--SET ANSI_NULLS OFF 
GO
CREATE FUNCTION Pay.[Insournace_Takmily]  (@Mounth int =01,@Year int=85,@YearMounth varchar(7) ='85/01',
				@InterdictType int=0,@PersonelNoFROM int=0,@PersonelNoTo int=9999999,
				@bedbes int=2,@ShowListKind int=3 )  
RETURNS  table  AS 
return   
(
SELECT	PersonelDecExt.FormInfoID AS FunctionID,  DecExtItems.SalaryID AS FormInfoID, 
		PersonelDecExt.PersonelNo, Pay.PersonelDecExt.FormInfoID2 AS ProjectID, 
		MAX(InterdictForUse.OfficeCode) AS OfficeCode, MAX(InterdictForUse.jobCode) AS JobCode, 
		PersonelDecExt.FormInfoID AS salaryID, @Mounth AS Mounth, 0 AS ProcCode, 
		CASE WHEN ISNULL(PersonelInfo.PercentWound ,0)=0 THEN 
			SUM(ISNULL(DecExtItems.DayQuntity * FormsInfo_1.Amount, 0))+
			SUM(CASE WHEN DecExtItems.DayQuntity >0 THEN 
			ISNULL(BimehDarman_1.PriceBimeh, 0) + 
			ISNULL(BimehDarman_2.BimehDarman_2, 0) ELSE 0 END  )
		ELSE 0 END AS Price,
		FormTypes.SalaryEffectKind AS BedBes,Pay.FormTypes.SalaryKind AS CalCulateKind, Pay.FormsInfo.AccTopicCode, 
		FormsInfo.AccDetailCode, Pay.FormsInfo.AccCTopicCode, Pay.FormsInfo.AccCTopicCode2, 
		FormsInfo.AccCTopicCode3,Pay.FormTypes.SalaryEffectKind AS ShowListKind
FROM	PersonelDecExt INNER JOIN
		Pay.InterdictForUse_2(@YearMounth, 2, 2, @PersonelNoFROM ,@PersonelNoTo) AS InterdictForUse 
			ON Pay.PersonelDecExt.PersonelNo = InterdictForUse.PersonelNo INNER JOIN
		 Pay.FormsInfo ON Pay.PersonelDecExt.FormInfoID = Pay.FormsInfo.FormInfoID INNER JOIN
		FormTypes ON Pay.FormsInfo.FormType =Pay.FormTypes.FormType INNER JOIN
		PersonelInfo ON Pay.PersonelDecExt.PersonelNo = Pay.PersonelInfo.PersonelNo INNER JOIN
		DecExtItems ON Pay.PersonelDecExt.DecExtID = DecExtItems.DecExtID INNER JOIN
		 Pay.FormsInfo AS FormsInfo_1 ON DecExtItems.SalaryID = FormsInfo_1.FormInfoID LEFT OUTER JOIN
		Pay.BimehDarman_1(@Mounth ,@YearMounth , @PersonelNoFROM ,@PersonelNoTo) AS BimehDarman_1 
			ON DecExtItems.SalaryID = BimehDarman_1.FormInfoID AND 
		PersonelDecExt.PersonelNo = BimehDarman_1.PersonelNo LEFT OUTER JOIN
		Pay.BimehDarman_2(@Mounth ,@YearMounth , @PersonelNoFROM ,@PersonelNoTo) AS BimehDarman_2 
			ON DecExtItems.SalaryID = BimehDarman_2.FormInfoID AND 
		PersonelDecExt.PersonelNo = BimehDarman_2.PersonelNo LEFT OUTER JOIN
		 Pay.FormsInfo AS FormsInfo_Projects ON Pay.PersonelDecExt.FormInfoID2 = FormsInfo_Projects.FormInfoID

WHERE	(PersonelDecExt.FirstMounth <= @Mounth) AND (PersonelDecExt.EndMounth >= @Mounth) AND 
		(PersonelDecExt.State <> 1) AND (FormsInfo.FormType = 61)
GROUP BY Pay.PersonelDecExt.FormInfoID,  DecExtItems.SalaryID, Pay.PersonelDecExt.PersonelNo, Pay.PersonelDecExt.FormInfoID2,Pay.FormTypes.SalaryEffectKind, 
                     Pay.FormTypes.SalaryKind, Pay.FormsInfo.AccTopicCode, Pay.FormsInfo.AccDetailCode, Pay.FormsInfo.AccCTopicCode, Pay.FormsInfo.AccCTopicCode2, 
                      Pay.FormsInfo.AccCTopicCode3 ,DecExtItems.DayQuntity ,PersonelInfo.PercentWound
HAVING	(FormTypes.SalaryKind IN (12, 13)) and 
		CASE WHEN ISNULL(PersonelInfo.PercentWound ,0)=0 THEN 
			SUM(ISNULL(DecExtItems.DayQuntity * FormsInfo_1.Amount, 0))+
			SUM(CASE WHEN DecExtItems.DayQuntity >0 THEN 
			ISNULL(BimehDarman_1.PriceBimeh, 0) + 
			ISNULL(BimehDarman_2.BimehDarman_2, 0) ELSE 0 END  )
		ELSE 0 END >0

UNION ALL

SELECT	PersonelDecExt.FormInfoID AS DecExtInfoID, DecExtItems.SalaryID,PersonelDecExt.PersonelNo,
		PersonelDecExt.FormInfoID2 AS ProjectID,MAX(InterdictForUse.OfficeCode) AS OfficeCode ,
		MAX(InterdictForUse.JobCode) AS JobCode ,PersonelDecExt.FormInfoID AS salaryID,
		@Mounth AS Mounth,0 AS ProcCode, 
		CASE WHEN ISNULL(PersonelInfo.PercentWound ,0)>0 THEN 
			SUM(ISNULL(DecExtItems.DayQuntity * Pay.FormsInfo.Amount, 0))+
			SUM(CASE WHEN DecExtItems.DayQuntity >0 THEN 
			ISNULL(BimehDarman_1.PriceBimeh, 0) + 
			ISNULL(BimehDarman_2.BimehDarman_2, 0) ELSE 0 END  )
		ELSE 0 END +
		SUM(ISNULL(DecExtItems.DayQuntity * Pay.FormsInfo.FirstAmount, 0))
		+ 
			SUM(CASE WHEN DecExtItems.DayQuntity >0 THEN 
			ISNULL(BimehDarman_1.Employer_PriceBimeh, 0) + 
			ISNULL(BimehDarman_2.Employer_BimehDarman_2, 0) ELSE 0 END  ) AS Price	
		,1 AS BedBes,
		FormTypes.SalaryKind AS CalCulateKind ,
		MAX(CASE WHEN ( Pay.PersonelDecExt.AccTopicCode = 0 OR Pay.PersonelDecExt.AccTopicCode  is null )  THEN 
		CASE Pay.FormTypes.TopicCodeKind 
			WHEN 2 THEN Pay.FormsInfo.AccTopicCode
			WHEN 3 THEN FormsInfo_Projects.AccTopicCode			
			WHEN 4 THEN  InterdictForUse.OfficeAccTopicCode
			WHEN 6 THEN Pay.PersonelInfo.AccTopicCode
			WHEN 7 THEN Pay.PersonelDecExt.AccTopicCode
			WHEN 10 THEN CASE  WHEN Pay.FormsInfo.AccCTopicCode2 >0 THEN Pay.FormsInfo.AccTopicCode   ELSE  InterdictForUse.OfficeAccTopicCode  END 
		ELSE 0 END 
	ELSE Pay.PersonelDecExt.AccTopicCode  END ) AS AccTopicCode,
	MAX(CASE WHEN ( Pay.PersonelDecExt.AccDetailCode=0 OR  Pay.PersonelDecExt.AccDetailCode is null ) THEN 
		CASE Pay.FormTypes.DetailCodeKind 
			WHEN 0 THEN 0 
			WHEN 2 THEN Pay.FormsInfo.AccDetailCode
			WHEN 3 THEN FormsInfo_Projects.AccDetailCode						
			WHEN 4 THEN  InterdictForUse.OfficeAccDetailCode
			WHEN 6 THEN Pay.PersonelInfo.AccDetailCode
			WHEN 7 THEN Pay.PersonelDecExt.AccDetailCode
			WHEN 10  THEN CASE WHEN Pay.FormsInfo.AccDetailCode =0 THEN Pay.PersonelInfo.AccDetailCode ELSE Pay.FormsInfo.AccDetailCode  END 
		ELSE 0 END
	ELSE Pay.PersonelDecExt.AccDetailCode END ) AS AccDetailCode,
	MAX(CASE WHEN (  Pay.PersonelDecExt.AccCTopicCode =0 OR   Pay.PersonelDecExt.AccCTopicCode is null ) THEN 
		CASE Pay.FormTypes.CTopicCodeKind 
			WHEN 0 THEN 0 
			WHEN 2 THEN Pay.FormsInfo.AccCTopicCode
			WHEN 3 THEN FormsInfo_Projects.AccCTopicCode						
			WHEN 4 THEN  InterdictForUse.OfficeAccCTopicCode
			WHEN 6 THEN Pay.PersonelInfo.AccCTopicCode
			WHEN 7 THEN Pay.PersonelDecExt.AccCTopicCode
			WHEN 10  THEN CASE WHEN Pay.FormsInfo.AccCTopicCode =0 THEN  InterdictForUse.OfficeAccCTopicCode ELSE Pay.FormsInfo.AccCTopicCode  END 
			WHEN 11  THEN CASE WHEN Pay.FormsInfo.AccDetailCode =0 THEN  Pay.FormsInfo.AccCTopicCode ELSE InterdictForUse.OfficeAccCTopicCode  END 
			WHEN 12  THEN CASE WHEN Pay.FormsInfo.AccCTopicCode <> 0 THEN InterdictForUse.OfficeAccCTopicCode ELSE 0  END 			
			WHEN 13 THEN CASE WHEN Pay.FormsInfo.AccCTopicCode=-1 THEN 0 ELSE  FormsInfo_Projects.AccCTopicCode END 
		ELSE 0 END 
	ELSE Pay.PersonelDecExt.AccCTopicCode END) AS AccCTopicCode,
	MAX(CASE WHEN ( Pay.PersonelDecExt.AccCTopicCode2=0  OR   Pay.PersonelDecExt.AccCTopicCode2 is null ) THEN 
		CASE Pay.FormTypes.CTopicCode2Kind 
			WHEN 0 THEN 0 
			WHEN 2 THEN Pay.FormsInfo.AccCTopicCode2
			WHEN 3 THEN FormsInfo_Projects.AccCTopicCode2						
			WHEN 4 THEN  InterdictForUse.OfficeAccCTopicCode2
			WHEN 6 THEN Pay.PersonelInfo.AccCTopicCode2
			WHEN 7 THEN Pay.PersonelDecExt.AccCTopicCode2
			WHEN 10 THEN CASE WHEN Pay.FormsInfo.AccCTopicCode2 =-1 THEN 0 ELSE  FormsInfo_Projects.AccCTopicCode2 END 
    	WHEN 11 THEN StandardTimes.AccCTopicCode2
    	--WHEN 12 THEN st.AccCTopicCode2
		ELSE 0 END 
	ELSE Pay.PersonelDecExt.AccCTopicCode2 END )as AccCTopicCode2,

	MAX(CASE Pay.FormTypes.CTopicCode3Kind 
		WHEN 0 THEN 0 
		WHEN 2 THEN Pay.FormsInfo.AccCTopicCode3
    	WHEN 10 THEN StandardTimes.AccCTopicCode3
	ELSE 0 END) AS AccCTopicCode3,
	
	 20 AS ShowListKind 
FROM	PersonelDecExt INNER JOIN
		Pay.InterdictForUse_2(@YearMounth, 2, 2, @PersonelNoFROM ,@PersonelNoTo) AS InterdictForUse ON Pay.PersonelDecExt.PersonelNo = InterdictForUse.PersonelNo INNER JOIN
		 Pay.FormsInfo AS FormsInfo_61 ON Pay.PersonelDecExt.FormInfoID = FormsInfo_61.FormInfoID INNER JOIN
		FormTypes AS FormTypes_61 ON FormsInfo_61.FormType =FormTypes_61.FormType INNER JOIN
		PersonelInfo ON Pay.PersonelDecExt.PersonelNo = Pay.PersonelInfo.PersonelNo INNER JOIN
		DecExtItems ON Pay.PersonelDecExt.DecExtID = DecExtItems.DecExtID INNER JOIN
		 Pay.FormsInfo ON DecExtItems.SalaryID = Pay.FormsInfo.FormInfoID INNER JOIN
		FormTypes ON Pay.FormsInfo.FormType =Pay.FormTypes.FormType LEFT OUTER JOIN
		Pay.BimehDarman_1(@Mounth ,@YearMounth , @PersonelNoFROM ,@PersonelNoTo) AS BimehDarman_1 ON DecExtItems.SalaryID = BimehDarman_1.FormInfoID AND 
		PersonelDecExt.PersonelNo = BimehDarman_1.PersonelNo LEFT OUTER JOIN
		Pay.BimehDarman_2(@Mounth ,@YearMounth , @PersonelNoFROM ,@PersonelNoTo) AS BimehDarman_2 ON DecExtItems.SalaryID = BimehDarman_2.FormInfoID AND 
		PersonelDecExt.PersonelNo = BimehDarman_2.PersonelNo LEFT OUTER JOIN
		 Pay.FormsInfo AS FormsInfo_Projects ON Pay.PersonelDecExt.FormInfoID2 = FormsInfo_Projects.FormInfoID INNER JOIN
                      Pay.StandardTimes ON @Mounth = Pay.StandardTimes.InfoID 
WHERE     (PersonelDecExt.FirstMounth <= @Mounth ) AND (PersonelDecExt.EndMounth >= @Mounth ) AND 
			(PersonelDecExt.State <> 1) and (Formsinfo.Formtype=63)

GROUP BY Pay.PersonelDecExt.FormInfoID, DecExtItems.SalaryID,PersonelDecExt.PersonelNo,PersonelDecExt.FormInfoID2, Pay.PersonelDecExt.EmployeeAmount,
                     Pay.FormTypes.SalaryEffectKind,FormTypes.SalaryKind,PersonelInfo.PercentWound 
HAVING	CASE WHEN ISNULL(PersonelInfo.PercentWound ,0)>0 THEN 
			SUM(ISNULL(DecExtItems.DayQuntity * Pay.FormsInfo.Amount, 0))+
			SUM(CASE WHEN DecExtItems.DayQuntity >0 THEN 
			ISNULL(BimehDarman_1.PriceBimeh, 0) + 
			ISNULL(BimehDarman_2.BimehDarman_2, 0) ELSE 0 END  )
		ELSE 0 END +
		SUM(ISNULL(DecExtItems.DayQuntity * Pay.FormsInfo.FirstAmount, 0))
		+ 
			SUM(CASE WHEN DecExtItems.DayQuntity >0 THEN 
			ISNULL(BimehDarman_1.Employer_PriceBimeh, 0) + 
			ISNULL(BimehDarman_2.Employer_BimehDarman_2, 0) ELSE 0 END  ) <>0  


UNION ALL

SELECT	PersonelDecExt.FormInfoID AS DecExtInfoID, DecExtItems.SalaryID,PersonelDecExt.PersonelNo,
		PersonelDecExt.FormInfoID2 AS ProjectID,MAX(InterdictForUse.OfficeCode) AS OfficeCode ,
		MAX(InterdictForUse.JobCode) AS JobCode ,PersonelDecExt.FormInfoID AS salaryID,
		@Mounth AS Mounth,0 AS ProcCode, 
		CASE WHEN ISNULL(PersonelInfo.PercentWound ,0)>0 THEN 
			SUM(ISNULL(DecExtItems.DayQuntity * Pay.FormsInfo.Amount, 0))+
			SUM(CASE WHEN DecExtItems.DayQuntity >0 THEN 
			ISNULL(BimehDarman_1.PriceBimeh, 0) + 
			ISNULL(BimehDarman_2.BimehDarman_2, 0) ELSE 0 END  )
		ELSE 0 END +
		SUM(ISNULL(DecExtItems.DayQuntity * Pay.FormsInfo.FirstAmount, 0))
		+ 
			SUM(CASE WHEN DecExtItems.DayQuntity >0 THEN 
			ISNULL(BimehDarman_1.Employer_PriceBimeh, 0) + 
			ISNULL(BimehDarman_2.Employer_BimehDarman_2, 0) ELSE 0 END  ) AS Price	
		,2 AS BedBes,
		FormTypes.SalaryKind AS CalCulateKind ,
		FormsInfo_61.AccTopicCode, 
		FormsInfo_61.AccDetailCode, FormsInfo_61.AccCTopicCode, FormsInfo_61.AccCTopicCode2, 
		FormsInfo_61.AccCTopicCode3,
	
	 20 AS ShowListKind 
FROM	PersonelDecExt INNER JOIN
		Pay.InterdictForUse_2(@YearMounth, 2, 2, @PersonelNoFROM ,@PersonelNoTo) AS InterdictForUse ON Pay.PersonelDecExt.PersonelNo = InterdictForUse.PersonelNo INNER JOIN
		 Pay.FormsInfo AS FormsInfo_61 ON Pay.PersonelDecExt.FormInfoID = FormsInfo_61.FormInfoID INNER JOIN
		FormTypes AS FormTypes_61 ON FormsInfo_61.FormType =FormTypes_61.FormType INNER JOIN
		PersonelInfo ON Pay.PersonelDecExt.PersonelNo = Pay.PersonelInfo.PersonelNo INNER JOIN
		DecExtItems ON Pay.PersonelDecExt.DecExtID = DecExtItems.DecExtID INNER JOIN
		 Pay.FormsInfo ON DecExtItems.SalaryID = Pay.FormsInfo.FormInfoID INNER JOIN
		FormTypes ON Pay.FormsInfo.FormType =Pay.FormTypes.FormType LEFT OUTER JOIN
		Pay.BimehDarman_1(@Mounth ,@YearMounth , @PersonelNoFROM ,@PersonelNoTo) AS BimehDarman_1 ON DecExtItems.SalaryID = BimehDarman_1.FormInfoID AND 
		PersonelDecExt.PersonelNo = BimehDarman_1.PersonelNo LEFT OUTER JOIN
		Pay.BimehDarman_2(@Mounth ,@YearMounth , @PersonelNoFROM ,@PersonelNoTo) AS BimehDarman_2 ON DecExtItems.SalaryID = BimehDarman_2.FormInfoID AND 
		PersonelDecExt.PersonelNo = BimehDarman_2.PersonelNo LEFT OUTER JOIN
		 Pay.FormsInfo AS FormsInfo_Projects ON Pay.PersonelDecExt.FormInfoID2 = FormsInfo_Projects.FormInfoID
WHERE     (PersonelDecExt.FirstMounth <= @Mounth ) AND (PersonelDecExt.EndMounth >= @Mounth ) AND 
			(PersonelDecExt.State <> 1) and (Formsinfo.Formtype=63)

GROUP BY Pay.PersonelDecExt.FormInfoID, DecExtItems.SalaryID,PersonelDecExt.PersonelNo,PersonelDecExt.FormInfoID2, Pay.PersonelDecExt.EmployeeAmount,
                     Pay.FormTypes.SalaryEffectKind,FormTypes.SalaryKind,PersonelInfo.PercentWound  ,
		FormsInfo_61.AccTopicCode, 
		FormsInfo_61.AccDetailCode, FormsInfo_61.AccCTopicCode, FormsInfo_61.AccCTopicCode2, 
		FormsInfo_61.AccCTopicCode3
HAVING	CASE WHEN ISNULL(PersonelInfo.PercentWound ,0)>0 THEN 
			SUM(ISNULL(DecExtItems.DayQuntity * Pay.FormsInfo.Amount, 0))+
			SUM(CASE WHEN DecExtItems.DayQuntity >0 THEN 
			ISNULL(BimehDarman_1.PriceBimeh, 0) + 
			ISNULL(BimehDarman_2.BimehDarman_2, 0) ELSE 0 END  )
		ELSE 0 END +
		SUM(ISNULL(DecExtItems.DayQuntity * Pay.FormsInfo.FirstAmount, 0))
		+ 
			SUM(CASE WHEN DecExtItems.DayQuntity >0 THEN 
			ISNULL(BimehDarman_1.Employer_PriceBimeh, 0) + 
			ISNULL(BimehDarman_2.Employer_BimehDarman_2, 0) ELSE 0 END  ) <>0  

)
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
-------------------------------------------------
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS OFF 
GO

---------

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO


-------------------------------------------------
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS OFF 
GO
CREATE  FUNCTION Pay.taxtable_List (
									@Year int=1401, 
									@Mounth int =11 
							      )  
RETURNS Table AS 
return 
(

---------
-- function Pay.taxtable : use in calculate salary , Bonus for calculate Tax and Contain tax 
-- create by h.rezaei 
-- 1401/11
---------

With taxtable 
	as (
		SELECT  t.TaxID,
				t.FormInfoID PrvInfoID , 
				t.YearRun *100+ t.MonthRun FromYearMonth ,
				isnull(lead (t.YearRun *100+ case when t.MonthRun = 1 then -88 else t.MonthRun -1 End ) over(partition by t.FormInfoID  order by t.FormInfoID , t.YearRun , t.MonthRun ,t.TaxID ),999999)  ToYearMonth , 
				-- 88 means : -100 for mines 1 year and + 12 for end month  so : -100+12 = -88 
				t.YearRun , 
				t.MonthRun ,
				t.Descriptions,
				t.TFN_CODE , 
				t.BonusFreeTax , 
				t.Taxs_Bonus_TaxID,
				t.Statuss
			FROM  Pay.Taxs t where (YearRun = @Year)
		)
	select * 
	from taxtable
	where @Year*100 + @Mounth between FromYearMonth and ToYearMonth 
)
---------
 -- END of Pay.taxtable_List  
---------


GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO




---------
-- function Pay.taxtable : use in calculate salary , Bonus for calculate Tax and Contain tax 
-- create by h.rezaei 
-- 1401/11
---------
CREATE FUNCTION Pay.taxtable (
									@Year int=1401, 
									@Mounth int =11 
							      )  
RETURNS Table AS 
return 
(
With taxtable 
	as (
		SELECT  ti.ID FormInfoID , 
				t.TaxID ,
				37 formtype , 
				ti.RowNo infoid , 
				t.PrvInfoID , 
				t.FromYearMonth ,
				t.ToYearMonth , 
				-- 88 means : -100 for mines 1 year and + 12 for end month  so : -100+12 = -88 
				t.YearRun , 
				t.MonthRun ,
				t.Descriptions,
				isnull(LAG (ti.RevenuePrice ) over(partition by ti.TaxID order by ti.RevenuePrice ,ti.RowNo,ti.ID ),0) + 1 firstamount , 
				ti.FixedPrice amount , 
				ti.RevenuePrice Amount2 , 
				ti.Cofficient Coefficient ,
				t.TFN_CODE , 
				t.BonusFreeTax , 
				isnull(Taxs_Bonus_TaxID,ti.taxid) Taxs_Bonus_TaxID ,
				--ti.ID Taxs_Bonus_TaxID , -- temprory until add field by mr.abedi  
				t.Statuss
			FROM Pay.TaxsItems ti 
				join Pay.taxtable_List(@Year,@Mounth) t on ti.TaxID = t.TaxID 
				where t.YearRun  = @Year
		--	order by t.FormInfoID , t.YearRun , t.MonthRun ,ti.TaxID
		)
	select * 
	from taxtable
	--where @Year*100 + @Mounth between FromYearMonth and ToYearMonth 


)
---------
 -- END of Pay.taxtable  
---------

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
  
  
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS OFF 
GO
  

CREATE FUNCTION Pay.InsouranceForBime
------------------------------- پارامتر ها بترتيب  شامل  1- تركيب سال و ماه 2- نوع عوامل حقوق و مزايا  (  در معرفي انواع فرمها  = همان نوع عوامل حقوق و مزايا ميباشد . (‏ - ----------------------
					 (
						 @YearMounth char(7) ='86/01' ,
						 @salarykind int=0,
						 @salarykindTo int=2 ,
						 @PersonelNoFROM int=0,
						 @PersonelNoTo int=99999999,
						 @FirstArchiveID int=1,
						 @LastArchiveId int=9999,
						 @Mounth int =1,
						 @StateNoFROM int=0,
						 @StateNoTo int=99999999 , 
						 @PrvInfoID int = 0  , 
						 @MounthRetard int=0 ,
						 @LabelIDFrom  int=0,
						 @LabelIDTo  int=0 
					 )  
RETURNS  table  AS 
return  (
	SELECT	GrpFunction.PersonelNo AS PersonelNo,
			--GrpFunction.FDaily,
			CASE 
				WHEN FeT.MaxDay=0 THEN GrpFunction.FDaily 
				ELSE 
					CASE WHEN GrpFunction.FDaily>=FeT.MaxDay THEN st.StandardDays ELSE  GrpFunction.FDaily end
			END AS FDaily ,
			GrpFunction.FHours,
			E.PersonStateNo,
			E.personelstate_L1,
			E.PersonelName_L1,
			E.fatherName_L1,
			E.Nationality_L1,
			E.BirthDate,
            E.SodurDate,
			E.BirthPlace_L1,
			E.NationalID,
			E.IDNumber,
            E.Sex_L1,
			E.licence_L1,
			PersonelInfo_Ins.employDate,
			CASE  WHEN  LEFT(PersonelInfo_Ins.finishEmployDate,7)>@YearMounth THEN '' ELSE PersonelInfo_Ins.finishEmployDate END AS finishEmployDate,
			E.InsuranceNumber,
			E.lastName_L1,
			E.name_L1,
			E.SodurPlace_L1,
			FormsInfo_JobCode.InfoName_L1 AS JobName,
			E.PercentWound,
			E.AccountNumber,
			InsouranceInfo4RptFixed.SumWage,
			E.PostalCode ,
            /*CASE 
				WHEN 
					(
						CASE  
							WHEN InsouranceInfo4Rpt.ContainPayAndWage > InsuranceCONSTinfo.insuranceUp * GrpFunction.FDaily 
								THEN InsouranceInfo4Rpt.ContainPayAndWage - InsuranceCONSTinfo.insuranceUp * GrpFunction.FDaily 
							ELSE 0 
						END 
					) > ContainWage 
					THEN containpay + ContainWage - 
						(
							CASE  
								WHEN InsouranceInfo4Rpt.ContainPayAndWage > InsuranceCONSTinfo.insuranceUp * GrpFunction.FDaily 
									THEN InsouranceInfo4Rpt.ContainPayAndWage - InsuranceCONSTinfo.insuranceUp * GrpFunction.FDaily 
								ELSE 0 
							END 
						)
	             ELSE containpay 
			END AS*/ 
			containpay,
			/*CASE 
				WHEN 
					(
						CASE  
							WHEN InsouranceInfo4Rpt.ContainPayAndWage > InsuranceCONSTinfo.insuranceUp * GrpFunction.FDaily 
								THEN InsouranceInfo4Rpt.ContainPayAndWage - InsuranceCONSTinfo.insuranceUp * GrpFunction.FDaily 
							ELSE 0 
						END 
					) >= ContainWage  
					THEN 0 
				ELSE  ContainWage -
                      		(
								CASE  
									WHEN InsouranceInfo4Rpt.ContainPayAndWage > InsuranceCONSTinfo.insuranceUp * GrpFunction.FDaily 
										THEN InsouranceInfo4Rpt.ContainPayAndWage - InsuranceCONSTinfo.insuranceUp * GrpFunction.FDaily 
									ELSE 0 
								END 
							) 
	        END AS */ 
			ContainWage, 
			/*CASE 
				WHEN 
					(
						CASE 
							WHEN InsouranceInfo4Rpt.ContainPayAndWage > InsuranceCONSTinfo.insuranceUp * GrpFunction.FDaily 
								THEN InsouranceInfo4Rpt.ContainPayAndWage - InsuranceCONSTinfo.insuranceUp * GrpFunction.FDaily 
							ELSE 0 
						END 
					) > ContainWage 
					THEN containpay + ContainWage - 
							(
								CASE 
									WHEN InsouranceInfo4Rpt.ContainPayAndWage > InsuranceCONSTinfo.insuranceUp * GrpFunction.FDaily 
										THEN InsouranceInfo4Rpt.ContainPayAndWage - InsuranceCONSTinfo.insuranceUp * GrpFunction.FDaily 
									ELSE 0 
								END 
							)                       
				ELSE containpay 
			END + 
			CASE 
				WHEN 
					(
						CASE 
							WHEN InsouranceInfo4Rpt.ContainPayAndWage > InsuranceCONSTinfo.insuranceUp * GrpFunction.FDaily 
								THEN InsouranceInfo4Rpt.ContainPayAndWage - InsuranceCONSTinfo.insuranceUp * GrpFunction.FDaily 
							ELSE 0 
						END 
					) >= ContainWage  
					THEN 0 
					ELSE  ContainWage -
                      		(
								CASE 
									WHEN InsouranceInfo4Rpt.ContainPayAndWage > InsuranceCONSTinfo.insuranceUp * GrpFunction.FDaily 
										THEN InsouranceInfo4Rpt.ContainPayAndWage - InsuranceCONSTinfo.insuranceUp * GrpFunction.FDaily 
									ELSE 0 
								END 
							) 
			END AS */ 
			CASE 
				WHEN InsouranceInfo4Rpt.ContainPayAndWage > InsuranceCONSTinfo.insuranceUp * GrpFunction.FDaily 
					THEN InsuranceCONSTinfo.insuranceUp * GrpFunction.FDaily 
				ELSE InsouranceInfo4Rpt.ContainPayAndWage 
			END AS ContainPayAndWage,
			ISNULL( InsouranceInfo4Rpt.PayAndWage,0) +  ISNULL(Call_leavePrice1.leavePrice,0)--+ ISNULL(Pony_BuyOff.UselessLeavePay,0)
					  + ISNULL(sanavat.sanavatAmount,0) AS PayAndWage,
			InsouranceInfo4RptFixed.AidContainInsourance,
			InsouranceInfo4RptFixed.InsouranceEmploye,
			InsouranceInfo4RptFixed.InsouranceEmployer,
			ISNULL( InsouranceInfo4RptFixed.InsouranceInaction,0) AS InsouranceInaction,
			InsouranceInfo4RptFixed.InsouranceHardWork,
			InsouranceInfo4RptFixed.InsouranceEmploye + InsouranceInfo4RptFixed.InsouranceEmployer + 
				ISNULL( InsouranceInfo4RptFixed.InsouranceInaction,0) + InsouranceInfo4RptFixed.InsouranceHardWork AS InsouranceAll,
			InsouranceInfo4RptFixed.ContainTax,
			InsouranceInfo4RptFixed.TaxValue,
			InsouranceInfo4RptFixed.SumDec,
			InsouranceInfo4RptFixed.PayableSalary,/*PersonelInfo_Ins*/
			InterdictForUseWithOffice.insuranceID,
			InsuranceCONSTinfo.insurancename,
			E.DSW_JOB,
			(CASE  GrpFunction.FDaily WHEN 0 THEN 0 ELSE  ROUND(InsouranceInfo4Rpt.containpay/GrpFunction.FDaily,0)end) AS DaySalary ,
			PeopleExempt,
			dailywage ,
			E.Mobile,
			--- add 1394/03/27 rezaei 
			InsuranceCONSTinfo.insuranceUp * GrpFunction.FDaily as insuranceUpPrice,
			SickDay , 
			InsouranceInfo4Rpt.benprice ,
			InterdictForUseWithOffice.EmployTypeID,
			E.NationalityID  AS NationalityID ,
			EydiAmount  , 
			SanavatOnlyAmount 
	FROM   (
				SELECT  
					Mounth, 
					PersonelNo, 
					SUM(FunctionDay) AS FDaily, 
					SUM(FunctionTime) AS FHours,
					SUM(SickDay) AS SickDay
				FROM Pay.Functions
				WHERE   
					PersonelNo BETWEEN @PersonelNoFROM AND @PersonelNoTo 
					AND (Mounth = @Mounth) and (YearID = left(@YearMounth,4))
				GROUP BY 
					Mounth,
					PersonelNo
			) AS GrpFunction 
			INNER JOIN Pay.EmployeeInfo E ON GrpFunction.PersonelNo = E.PersonelNo 
			INNER JOIN Pay.InterdictForUseWithOffice(@YearMounth, @salarykind, @salarykindTo, @PersonelNoFrom, @PersonelNoTo) AS InterdictForUseWithOffice ON 
								GrpFunction.PersonelNo = InterdictForUseWithOffice.PersonelNo 
			INNER JOIN Pay.PersonelInfo_Ins_Tax(@YearMounth, @PersonelNoFrom, @PersonelNoTo) AS PersonelInfo_Ins ON GrpFunction.PersonelNo = PersonelInfo_Ins.PersonelNo 
			INNER JOIN Pay.InsuranceCONSTinfo_f (left(@YearMounth ,4), @Mounth) InsuranceCONSTinfo ON PersonelInfo_Ins.insuranceID = InsuranceCONSTinfo.insuranceNo 
			INNER JOIN Pay.InsouranceInfo4Rpt(@Mounth, @FirstArchiveId ,@LastArchiveId, @PrvInfoID, @PersonelNoFrom, @PersonelNoTo,@MounthRetard ,@LabelIDFrom  ,@LabelIDTo ,left(@YearMounth,4),left(@YearMounth,4)  ) AS InsouranceInfo4Rpt ON 
								GrpFunction.PersonelNo = InsouranceInfo4Rpt.PersonelNo 
			INNER JOIN Pay.InsouranceInfo4RptFixed(@Mounth, @FirstArchiveId,@LastArchiveId , @PersonelNoFrom, @PersonelNoTo,@MounthRetard ,@LabelIDFrom  ,@LabelIDTo ,left(@YearMounth,4),left(@YearMounth,4) ) AS InsouranceInfo4RptFixed ON 
								GrpFunction.PersonelNo = InsouranceInfo4RptFixed.PersonelNO 
			INNER JOIN Pay.FormsInfo AS FormsInfo_JobCode ON InterdictForUseWithOffice.jobCode = FormsInfo_JobCode.FormInfoID 
			INNER JOIN Pay.FormsInfo AS FeT ON InterdictForUseWithOffice.EmployTypeID = FeT.FormInfoID 
			LEFT OUTER JOIN Pay.StandardTimes ST ON GrpFunction.Mounth = ST.InfoID 
					  
			-------- add pony  
			--  LEFT OUTER JOIN
			--      (SELECT PersonelNo, SUM( UselessLeavePay ) AS UselessLeavePay , SUM( AnnuityPay ) AS AnnuityPay , SUM( Tax ) AS Tax    
			--         FROM Pony
			--         WHERE (LEFT(AdjustDate, 7) = @YearMounth)  				
			--       Group by PersonelNo
			--       ) AS Pony_BuyOff ON 
			--       E.PersonelNo = Pony_BuyOff.PersonelNo 
			LEFT OUTER JOIN 
					(
						SELECT  PersonelNo,
								SUM(leavePrice ) AS leavePrice
						FROM    Pay.PersonelDecExt PersonelDecExt_1 
							INNER JOIN Pay.FormsInfo FormsInfo_leave ON PersonelDecExt_1.FormInfoID = FormsInfo_leave.FormInfoID 
						WHERE  LEFT(EndDate, 7) = @YearMounth
							AND FormsInfo_leave.FormType IN (59)
							--and case when (@Mounth = 12 and (select EidiDisplayedSeparatelyOnTaxList from Pay.Config )=1 ) then 0 else 1 end =1
						Group by PersonelNo
					) AS Call_leavePrice1 ON E.PersonelNo = Call_leavePrice1.PersonelNo 
			------ add sanavat  
			LEFT OUTER JOIN Pay.InsouranceSanavat (@YearMounth , @PersonelNoFROM ,@PersonelNoTo , @Mounth, @PrvInfoID ) AS sanavat ON E.PersonelNo = sanavat.PersonelNo 
	WHERE GrpFunction.PersonelNo BETWEEN @PersonelNoFROM AND @PersonelNoTo 
		AND E.PersonStateNo BETWEEN @StateNoFROM AND @StateNoTo 
		AND InsuranceCONSTinfo.FormInfoID = @PrvInfoID
		AND (
				CASE 
					WHEN ltrim(PersonelInfo_Ins.finishEmployDate)<>'' and  LEFT(PersonelInfo_Ins.finishEmployDate, 7)<= @YearMounth 
						THEN 0 
					ELSE 1 
				END =1 -- \پایان بیمه خورده ماه آخر نیاد ماه های قبل بیاد
				OR   
				LEFT(InterdictForUseWithOffice.InterdicEndDate, 7)= LEFT(PersonelInfo_Ins.finishEmployDate, 7)
			)

	UNION ALL

	SELECT	PersonelInfo_Ins.PersonelNo AS PersonelNo, 
			0 AS FDaily, 
			0 AS FHours, 
			E.PersonStateNo, 
			E.personelstate_L1, 
			E.PersonelName_L1, 
			E.fatherName_L1, 
			E.Nationality_L1, 
			E.BirthDate, 
			E.SodurDate, 
			E.BirthPlace_L1, 
			E.NationalID, 
			E.IDNumber, 
			E.Sex_L1, 
			E.licence_L1, 
			PersonelInfo_Ins.employDate, 
			PersonelInfo_Ins.finishEmployDate, 
			E.InsuranceNumber, 
			E.lastName_L1, 
			E.name_L1, 
			E.SodurPlace_L1,  
			FormsInfo_JobCode.InfoName_L1 AS JobName, 
			E.PercentWound, 
			E.AccountNumber, 
			0 AS SumWage, 
			E.PostalCode, 
			0 AS containpay, 
			0 AS ContainWage, 
			0 AS ContainPayAndWage, 
			ISNULL(sanavat.sanavatAmount,0) +  ISNULL(Call_leavePrice2.leavePrice,0) AS PayAndWage, 
			0 AS AidContainInsourance, 
			0 AS InsouranceEmploye, 
			0 AS InsouranceEmployer, 
			0 AS InsouranceInaction, 
			0 AS InsouranceHardWork, 
			0 AS InsouranceAll, 
			0 AS ContainTax, 
			0 AS TaxValue, 
			0 AS SumDec, 
			0 AS PayableSalary, 
			PersonelInfo_Ins.insuranceID, 
			InsuranceCONSTinfo.insurancename, 
			E.DSW_JOB, 
			0 AS DaySalary,
			PeopleExempt,
			dailywage,
			E.Mobile ,
			0 as insuranceUpPrice , 
			SickDay , 
			0 as benprice,
			PersonelInfo_Ins.EmployTypeID,
			E.NationalityID AS NationalityID,
			EydiAmount  , 
			SanavatOnlyAmount 
	FROM    (
				SELECT  distinct 
						PersonelNo, 
						TaxCalculationType, 
						insuranceID, 
						InsuranceStartDate AS employDate, 
						InsuranceEndDate AS finishEmployDate ,
						jobCode,
						EmployTypeID,
						InterdicEndDate
                 FROM   Pay.Interdicts    
                 WHERE  
                         (
							 @YearMounth BETWEEN LEFT(InsuranceStartDate, 7) AND LEFT(InsuranceEndDate, 7)  
								OR ltrim(InsuranceEndDate) ='' 
						 )  
					AND 
						(
						@YearMounth BETWEEN LEFT(InterdicStartDate,7) AND LEFT(InterdicEndDate, 7)
						or 
						@YearMounth+'/01' = InsuranceEndDate 
						) 
					and PersonelNo BETWEEN  @PersonelNoFROM AND @PersonelNoTo
			) AS PersonelInfo_Ins 
			INNER JOIN Pay.InsuranceCONSTinfo_f (left(@YearMounth ,4), @Mounth) InsuranceCONSTinfo ON PersonelInfo_Ins.insuranceID = InsuranceCONSTinfo.insuranceNo 
			INNER JOIN pay.EmployeeInfo E ON PersonelInfo_Ins.PersonelNo = E.PersonelNo 
			LEFT OUTER JOIN	
					(  SELECT	PersonelNo , 
								SUM(FunctionDay) AS FDay , 
								SUM(FunctionTime) AS FHours,
								SUM(SickDay) AS SickDay
						FROM    Pay.Functions
						WHERE	case when len(Years)=2 then  '13'+CAST(Years AS char(2)) else CAST(Years AS char(4)) end + '/' + SUBSTRING(CAST(Mounth / 100.000 AS char(9)), 3, 2) = @YearMounth  
							AND PersonelNo BETWEEN @PersonelNoFROM AND @PersonelNoTo 
						group by PersonelNo
						--having 	(PersonelNo BETWEEN @PersonelNoFROM AND @PersonelNoTo ) 
					 ) AS PersonelInfo_Has_function ON PersonelInfo_Ins.PersonelNo = PersonelInfo_Has_function.PersonelNo 
			INNER JOIN Pay.FormsInfo AS FormsInfo_JobCode ON PersonelInfo_Ins.jobCode = FormsInfo_JobCode.FormInfoID
			LEFT OUTER JOIN  Pay.FormsInfo AS FormsInfoEmployTypeID ON PersonelInfo_Ins.EmployTypeID = FormsInfoEmployTypeID.FormInfoID
		-- add sanavat  
			LEFT OUTER JOIN Pay.InsouranceSanavat (@YearMounth , @PersonelNoFROM ,@PersonelNoTo , @Mounth, @PrvInfoID ) AS sanavat ON E.PersonelNo = sanavat.PersonelNo 
			LEFT OUTER JOIN
					(
						SELECT  PersonelNo,
								SUM(leavePrice ) AS leavePrice
						FROM	Pay.PersonelDecExt PersonelDecExt_1 
							INNER JOIN Pay.FormsInfo FormsInfo_leave ON PersonelDecExt_1.FormInfoID = FormsInfo_leave.FormInfoID 
						WHERE LEFT(EndDate, 7) = @YearMounth 
							AND FormsInfo_leave.FormType IN (59)
							--and case when (@Mounth = 12 and (select EidiDisplayedSeparatelyOnTaxList from Pay.Config )=1 ) then 0 else 1 end =1
						Group by PersonelNo
					) AS Call_leavePrice2 ON  E.PersonelNo = Call_leavePrice2.PersonelNo 
			--حق اولاد و عیدی و سنوات(این سه مورد رو اگه شحص نیست باز باید طبق قانون پرداخت بشه)
			LEFT OUTER JOIN  
					(
						SELECT  PersonelNo , 
								SUM(Price) AS IsCalcPrice 
						FROM    FixedCalculated
						WHERE   (case when len(Years)=2 then  '13'+CAST(Years AS char(2)) else CAST(Years AS char(4)) end + '/' + SUBSTRING(CAST(Mounth / 100.000 AS char(9)), 3, 2) = @YearMounth ) 
							AND	(PersonelNo BETWEEN @PersonelNoFROM AND @PersonelNoTo ) 
						group by PersonelNo
					) AS IsCalc ON PersonelInfo_Ins.PersonelNo = IsCalc.PersonelNo 
			--حق اولاد و عیدی و سنوات(این سه مورد رو اگه شحص نیست باز باید طبق قانون پرداخت بشه)
	WHERE	E.PersonStateNo BETWEEN @StateNoFROM AND @StateNoTo
		AND (
				(
					ltrim(PersonelInfo_Ins.finishEmployDate)= ''
					and PersonelInfo_Has_function.FDay=0
					and PersonelInfo_Has_function.FHours =1 
				)
			OR
				PersonelInfo_Ins.finishEmployDate = @YearMounth +'/01' 
			OR 	
				(
					left(PersonelInfo_Ins.finishEmployDate,7)= @YearMounth 
					and  
					(
						PersonelInfo_Has_function.FDay is null 
					OR 
						PersonelInfo_Has_function.FDay =0 and PersonelInfo_Has_function.FHours =1 
					)
				)  
			)
		AND PersonelInfo_Ins.PersonelNo BETWEEN @PersonelNoFROM AND @PersonelNoTo
		AND InsuranceCONSTinfo.FormInfoID = @PrvInfoID
		AND ( 
				IsCalcPrice = 0  
				OR  
				ltrim(PersonelInfo_Ins.finishEmployDate)<> ''  --حق اولاد و عیدی و سنوات(این سه مورد رو اگه شحص نیست باز باید طبق قانون پرداخت بشه)
			)
---
	)



GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

  
  
  
-------------------------------------------------
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS OFF 
GO
  
  
CREATE FUNCTION Pay.ContainTaxWithPerson 							(
								@Mounth int =01,
								@Year int=85,
								@YearMounth varchar(7) ='1385/01',
								@InterdictType int=0,
								@PersonelNoFROM int=0,
								@PersonelNoTo int=9999999,
								@bedbes int=2,
								@ShowListKind int=3 ,
								@FestivalCalc  tinyint=1
							)  
RETURNS  table  AS 
Return  (
	SELECT   TC.FunctionID
		    ,TC.FormInfoID
			,TC.PersonelNo
			,TC.BeforeTaxValue
			,CalcMounth as CountMounth
			,TC.ContainTaxValue
			,TC.ShowListKind
			,TC.AccCTopicCode2
			,TC.AccCTopicCode3
			,TC.AccCTopicCode
			,TC.AccDetailCode
			,TC.AccTopicCode
			,TC.CalCulateKind
			,TC.bedbes
			,CASE
				WHEN 
					TC.ContainTax + isnull(PDP.EmployeeAmount,0) + isnull(PBO.EmployeeAmount,0) - ISNULL(ROUND(DCT.priceM,0),0) 
					- (
						case  
						when  isnull(PBO.EmployeeAmount,0) > 0 
							--then CASE WHEN (SELECT TaxWithExemptionsTimeSheets FROM Pay.Config) = 1 THEN	ROUND(TEP.Amount2 / 365 * DayQuntity,0) ELSE TEP.Amount2 END
							then CASE WHEN (SELECT TaxWithExemptionsTimeSheets FROM Pay.Config) = 1 THEN	ROUND(TaxTable_Dec1.BonusFreeTax  / 365 * DayQuntity,0) ELSE TaxTable_Dec1.BonusFreeTax  END
						ELSE 0 
						END
						)  
					- (ISNULL(TaxTable_Dec1.Amount2,0) * (CalcMounth )) - TC.ContainTaxValue > 0 
				THEN
					TC.ContainTax  - ISNULL(ROUND( DCT.priceM, 0),0) 
					- (ISNULL(TaxTable_Dec1.Amount2,0) * (CalcMounth )) 
					- TC.ContainTaxValue 
				ELSE 0 
			 END  AS containTax
			,CASE
				WHEN 
					TC.ContainTax + isnull(PDP.EmployeeAmount,0) + isnull(PBO.EmployeeAmount,0) - ISNULL(ROUND(DCT.priceM,0),0)  
					- (
						CASE  
							WHEN  isnull(PBO.EmployeeAmount,0) > 0 
								--then CASE WHEN (SELECT TaxWithExemptionsTimeSheets FROM Pay.Config) = 1 THEN	ROUND(TEP.Amount2 / 365 * DayQuntity,0) ELSE TEP.Amount2 END
								then CASE WHEN (SELECT TaxWithExemptionsTimeSheets FROM Pay.Config) = 1 THEN	ROUND(TaxTable_Dec1.BonusFreeTax / 365 * DayQuntity,0) ELSE TaxTable_Dec1.BonusFreeTax END
							ELSE 0 
						END
						)
					- (ISNULL(TaxTable_Dec1.Amount2,0) * (CalcMounth )) - TC.ContainTaxValue > 0 
					then 
						ISNULL(TaxTable_Dec1.Amount2,0) * (CalcMounth ) - Mtax
				ELSE 
					TC.ContainTax 
					- ISNULL(ROUND( DCT.priceM,0),0) - Mtax - TC.ContainTaxValue 
					- (
						CASE  
						WHEN  isnull(PBO.EmployeeAmount,0) > 0 
							--THEN CASE WHEN (SELECT TaxWithExemptionsTimeSheets FROM Pay.Config) = 1 THEN	ROUND(TEP.Amount2 / 365 * DayQuntity,0) ELSE TEP.Amount2 END
							THEN CASE WHEN (SELECT TaxWithExemptionsTimeSheets FROM Pay.Config) = 1 THEN	ROUND(TaxTable_Dec1.BonusFreeTax / 365 * DayQuntity,0) ELSE TaxTable_Dec1.BonusFreeTax END
						ELSE 0 
						END
				       )
			 END AS containTax2
			,TC.Mounth
			,TC.SalaryID
			,TC.JobCode
			,TC.OfficeCode
			,TC.ProjectID
			,CASE (SELECT	TaxKindCalc	FROM	pay.Config)
				WHEN 0 THEN	ROUND(((TC.ContainTax - ISNULL(ROUND(DCT.priceM,0),0)) - FTAX.FirstAmount) *	FTAX.Coefficient + FTAX.Amount,0) 
				WHEN 1 THEN	ROUND(
									(
									(
										TC.ContainTax + isnull(PDP.EmployeeAmount,0) + isnull(PBO.EmployeeAmount,0) - ISNULL(ROUND(DCT.priceM,0),0) 
									- (
										CASE  
											WHEN  isnull(PBO.EmployeeAmount,0) > 0 
												--then CASE WHEN (SELECT TaxWithExemptionsTimeSheets FROM Pay.Config) = 1 THEN	ROUND(TEP.Amount2 / 365 * DayQuntity,0) ELSE TEP.Amount2 END
												then CASE WHEN (SELECT TaxWithExemptionsTimeSheets FROM Pay.Config) = 1 THEN	ROUND(TaxTable_Dec1.BonusFreeTax / 365 * DayQuntity,0) ELSE TaxTable_Dec1.BonusFreeTax END
											ELSE 0 
										END
										)
										)
									- FTAX.FirstAmount * CalcMounth 
									) * FTAX.Coefficient 
									+ (FTAX.Amount * CalcMounth) 
									-  TC.BeforeTaxValue - isnull(PDP.PaymentLoan,0) - isnull(PBO.PaymentLoan,0)
							   ,0) 
				WHEN 2 THEN	ROUND(((TC.ContainTax + isnull(PDP.EmployeeAmount,0)+isnull(PBO.EmployeeAmount,0) - ISNULL(ROUND( DCT.priceM, 0),0))-
							FTAX.FirstAmount*12 * TC.TaxFunDay/365) * 
							FTAX.Coefficient + FTAX.Amount*12 * ISNULL(TC.TaxFunDay,0)/365 - TC.BeforeTaxValue - isnull(PDP.PaymentLoan,0),0) 
				WHEN 3 THEN ROUND(((TC.ContainTax + PDP.EmployeeAmount +isnull(PBO.EmployeeAmount,0)- ISNULL(ROUND( DCT.priceM, 0),0)) - 
							FTAX.FirstAmount*12 * (ISNULL(TC.TaxFunDay,0)	+ ISNULL(TaxFunDay_SickDay,0) )/365) * 
							FTAX.Coefficient + FTAX.Amount*12 *( ISNULL(TC.TaxFunDay,0) + ISNULL(TaxFunDay_SickDay,0)) 
							/365 - TC.BeforeTaxValue- isnull(PDP.PaymentLoan,0),0) END  
						AS TaxValue
	FROM	(
			SELECT	0 AS FunctionID, 
					FO.FormInfoID, 
					FCT.PersonelNo, 
					0 AS ProjectID, 
					MAX(isnull(IV.OfficeCode,0)) AS OfficeCode, 
					MAX(isnull(IV.JobCode,0)) AS JobCode,
					FO.FormInfoID AS SalaryID,
					FCT.Mounth,
					SUM(FCT.price * (CASE	WHEN	FCT.bedbes=1  THEN 1 ELSE -1 END)) AS ContainTax, 
					@bedbes AS bedbes, 
					@ShowListKind AS CalCulateKind,
					FO.AccTopicCode,
 					case MAX(FormTypes.DetailCodeKind) 
						WHEN 11 THEN 
							CASE 
								WHEN FO.AccDetailCode = -1 THEN MAX(PF.accDetailCode) 
								ELSE FO.AccDetailCode 
							END 
						ELSE FO.AccDetailCode 
					END AS AccDetailCode ,	
					FO.AccCTopicCode ,
					CASE MAX(FormTypes.CTopicCode2Kind) WHEN 11  THEN StandardTimes.AccCTopicCode2 ELSE FO.AccCTopicCode2  END as AccCTopicCode2 ,
					CASE MAX(FormTypes.CTopicCode3Kind) WHEN 10  THEN StandardTimes.AccCTopicCode3 ELSE FO.AccCTopicCode3  END as AccCTopicCode3 ,
					11 AS ShowListKind,
					MAX(ISNULL(CTB.Mtax,0))as Mtax, 
					MAX(ISNULL(CTB.ContainTaxValue,0)) AS ContainTaxValue,
					MAX(ISNULL(CTB.CountMounth,0))  AS CountMounth, 
					MAX(ISNULL(CTB.TaxValue,0)) AS BeforeTaxValue,
					MAX(ISNULL(CTB.TaxFunDay,0))  + MAX(ISNULL(TDF.TaxFunDay,0)) AS TaxFunDay ,
					MAX(ISNULL(CTB.TaxFunDay_SickDay,0)) +  MAX(ISNULL(TDF.TaxFunDay_SickDay,0)) AS TaxFunDay_SickDay, 
					IV.TaxCalculationType,
					max(FCT.m2) as m2,
					case when MAX(ISNULL(CTB.CountMounth,0)) + 1 > @Mounth then @Mounth else MAX(ISNULL(CTB.CountMounth,0)) + 1 end CalcMounth
			FROM    Pay.PersonelInfo_Ins_Tax(@YearMounth,@PersonelNoFrom,@PersonelNoTo
			)  PF 
					INNER JOIN
						( 
							SELECT	FD.PersonelNo, 
									FD.OfficeCode, 
									sum(FD.price) as price, 
									@Mounth as Mounth,
									RTRIM(LTRIM(STR(FD.YearID))) + '/' + SUBSTRING (RTRIM(LTRIM(str(100 + FD.Mounth))),2,2) as m2,
									FD.bedbes, 
									SalaryID, 
									ProjectID, 
									jobCede AS JobCode
							FROM pay.FixedCalculated FD
									INNER JOIN Pay.FixedCalActive() AS FixedCalActive_1 ON	FD.PersonelNO = FixedCalActive_1.PersonelNO 
												         AND FD.Mounth = FixedCalActive_1.Mounth 
												         AND FD.YearID = FixedCalActive_1.YearID 
														 AND FD.ArchiveID = FixedCalActive_1.F_ArchiveID
							Where (FD.PersonelNo between @PersonelNoFROM And @PersonelNoTo) 
									AND (FD.Mounth between case when (SELECT     TaxKindCalc  FROM Pay.Config) =0 then @Mounth  else 0 end  and @Mounth)
									AND (FD.YearID = @Year)
							group by 
									FD.PersonelNo, 
									FD.OfficeCode, 
									FD.bedbes, 
									SalaryID, 
									ProjectID,
									jobCede ,
									FD.Mounth,
									FD.YearID 
						) FCT 
					INNER JOIN Pay.SalaryRange SR ON FCT.SalaryID = SR.SalaryID ON PF.PersonelNo = FCT.PersonelNo   			
					INNER JOIN  
						(
							SELECT	OfficeCode, 
									jobCode, 
									InterdictDate, 
									subcompanyCode, 
									PersonelNo, 
									TaxCalculationType,
									EmployTypeID, 
									startmonth, 
									endMonth, 
									YearID
							FROM    Pay.Interdicts_V  
							where YearID = @Year
						) IV on IV.PersonelNo=FCT.PersonelNo 
								        AND FCT.m2 BETWEEN startmonth AND endMonth AND IV.TaxCalculationType = SR.FormInfoID								  
					INNER JOIN  Pay.FormsInfo FO ON SR.FormInfoID = FO.FormInfoID 
					INNER JOIN  Pay.FormTypes ON FO.FormType =Pay.FormTypes.FormType 
					LEFT  JOIN 
						(
							SELECT	PersonelNo,
									SUM(ISNULL(SickDay,0)) AS TaxFunDay_SickDay,
									SUM(ISNULL(FunctionDay,0)) AS TaxFunDay
							FROM    Pay.Functions
							WHERE   (Mounth = @Mounth) AND (YearID = @Year)
							GROUP BY PersonelNo
						) TDF ON FCT.PersonelNo = TDF.PersonelNo 

					INNER JOIN  Pay.taxtable_List (@Year,@Mounth) TAX_Depend_Bonus ON  IV.TaxCalculationType = TAX_Depend_Bonus.PrvInfoID
					LEFT  JOIN  pay.ContainTaxBefore (@Mounth,@PersonelNoFrom,@PersonelNoTo,@Year) CTB ON FCT.PersonelNo = CTB.PersonelNO AND CTB.TaxCalculationType=IV.TaxCalculationType
																									AND BonusMounth <=case when TAX_Depend_Bonus.taxid = TAX_Depend_Bonus.Taxs_Bonus_TaxID then 1 else 0 end 
					LEFT  JOIN  Pay.FormsInfo FormsInfo_FunctionsOffice ON FCT.OfficeCode = FormsInfo_FunctionsOffice.FormInfoID 
					LEFT  JOIN  Pay.FormsInfo FormsInfo_Project ON FCT.ProjectID = FormsInfo_Project.FormInfoID 
					INNER JOIN  Pay.StandardTimes ON @Mounth = Pay.StandardTimes.InfoID 
			WHERE     (SR.Kind = @InterdictType ) AND (FormTypes.SalaryKind = 11) AND (YearID = @Year )
            GROUP BY 
					FCT.PersonelNo, 
					FO.FormInfoID, 
					FCT.Mounth, 
					IV.TaxCalculationType,
					FO.AccTopicCode, 
					FO.AccDetailCode, 
					FO.AccCTopicCode, 
					FO.AccCTopicCode2,
					FO.AccCTopicCode3 ,
					StandardTimes.AccCTopicCode2,
					StandardTimes.AccCTopicCode3
		) TC 
		INNER JOIN  Pay.taxtable_List (@Year,@Mounth) TERMINATE_TAX ON  TC.SalaryID = TERMINATE_TAX.PrvInfoID
		INNER JOIN  Pay.taxtable(@Year,@Mounth) FTAX ON FTAX.TaxID  = Case when @FestivalCalc=1 then TERMINATE_TAX.taxid else  TERMINATE_TAX.Taxs_Bonus_TaxID end  -- TC.SalaryID = FTAX.PrvInfoID 
		LEFT  JOIN  Pay.taxtable(@Year,@Mounth) TaxTable_Dec1 on FTAX.PrvInfoID = TaxTable_Dec1.PrvInfoID and TaxTable_Dec1.Coefficient = 0 
					/*(
					SELECT     PrvInfoID, Amount2
                    FROM          Pay.FormsInfo 
                    WHERE     (FormType = 37) AND (Coefficient = 0)
				    ) AS TaxTable_Dec1 ON FTAX.PrvInfoID = TaxTable_Dec1.PrvInfoID
					*/
		LEFT  JOIN  Pay.DecreaseContainTax(@Mounth,@PersonelNoFrom,@PersonelNoTo,12,@Year) DCT ON  TC.PersonelNo = DCT.PersonelNo 
	    LEFT  JOIN  (
					SELECT PersonelNo, sum(isnull(EmployeeAmount,0)) as	EmployeeAmount, sum(isnull(personeldecExt.PaymentLoan,0)) as PaymentLoan		
					FROM 	pay.personeldecExt 
							INNER JOIN	 Pay.FormsInfo ON Pay.PersonelDecExt.FormInfoID = Pay.FormsInfo.FormInfoID
    				WHERE	 (FormsInfo.FormType in (111)	AND  (FormsInfo.InfoID <=10)) AND (YearID = @Year)                              
					GROUP BY 	PersonelNo								
					) PDP on PDP.PersonelNo= TC.PersonelNo 
	    LEFT  JOIN  (
					SELECT PersonelNo, sum(isnull(EmployeeAmount,0)) as	EmployeeAmount, sum(isnull(personeldecExt.PaymentLoan,0)) as PaymentLoan, sum(isnull(DayQuntity,1)) as  DayQuntity		
					FROM 	pay.personeldecExt 
							INNER JOIN	 Pay.FormsInfo ON Pay.PersonelDecExt.FormInfoID = Pay.FormsInfo.FormInfoID
					WHERE	 ((FormsInfo.FormType in (59) and Pay.FormsInfo.InfoID=1))   
						and @Year*100+@Mounth between StartYear *100 +FirstMounth and EndYear *100 + EndMounth 
						AND (YearID = @Year)
					GROUP BY 	PersonelNo							
    				) PBO on PBO.PersonelNo= TC.PersonelNo
		INNER JOIN  (
						SELECT		OfficeCode, jobCode, InterdictDate, subcompanyCode, PersonelNo,EmployTypeID,
									startmonth, endMonth, YearID ,TaxCalculationType
        				FROM		pay.Interdicts_V  
                        WHERE		YearID = @Year  and  RTRIM(LTRIM(str(@Year)))+'/'+ SUBSTRING(RTRIM(LTRIM(str(100 + @Mounth))),2,2)  BETWEEN startmonth and endMonth
                     ) TV on TV.PersonelNo=TC.PersonelNo AND TC.TaxCalculationType=TV.TaxCalculationType
      -- INNER JOIN Pay.taxtable(@Year,@Mounth) TEP on TC.FormInfoID = TEP.PrvInfoID and tep.Coefficient = 0  AND tep.Amount = 0 
	   /*(
					SELECT     PrvInfoID, isnull(Amount2,0) as Amount2
					FROM         Pay.FormsInfo
					WHERE     (FormType = 37) AND (Coefficient = 0) AND (Amount = 0)  
				  ) AS TEP on TC.FormInfoID = TEP.PrvInfoID
		*/--BonusFreeTax
	

WHERE  (YearID = @Year)AND CASE	WHEN   TC.ContainTax - ISNULL(ROUND(DCT.priceM,0),0) + isnull(PBO.EmployeeAmount,0) + isnull(PDP.EmployeeAmount,0)  > 0 
			THEN   TC.ContainTax - ISNULL(ROUND(DCT.priceM,0),0) + isnull(PBO.EmployeeAmount,0) + 
					CASE when (SELECT TaxKindCalc FROM Pay.Config) = 0 then 0 else isnull(PDP.EmployeeAmount,0) end 
	  ELSE 0 END 
	  BETWEEN  
	    CASE (SELECT TaxKindCalc FROM Pay.Config)
			WHEN 0  THEN   FTAX.FirstAmount
			WHEN 1  THEN   (CalcMounth * FTAX.FirstAmount)
			WHEN 2  THEN   ((FTAX.FirstAmount * 12 * TC.TaxFunDay) / 365) 
			WHEN 3  THEN   ( FTAX.FirstAmount * 12 * (ISNULL(TC.TaxFunDay,0) + ISNULL(TaxFunDay_SickDay,0)) / 365)
		END 
	  AND 
		CASE (SELECT TaxKindCalc FROM Pay.Config)
			WHEN 0  THEN   FTAX.Amount2 
			WHEN 1  THEN   CalcMounth * FTAX.Amount2
			WHEN 2  THEN  ((FTAX.Amount2 * 12 * TC.TaxFunDay) / 365) 
			WHEN 3  THEN  ( FTAX.Amount2 * 12 * (ISNULL(TC.TaxFunDay,0) + ISNULL(TaxFunDay_SickDay,0)) / 365)   
	    END 

)

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO



-------------------------------------------------
----------------------------------------------------------------------
----------------------------------------------------------------------
SET QUOTED_IDENTIFIER ON 
GO
--SET ANSI_NULLS OFF 
GO
CREATE FUNCTION Pay.CalculateBonusSalaryYearly
------------------------------- پارامتر ها بترتيب  شامل  1- تركيب سال و ماه 2- نوع عوامل حقوق و مزايا  (  در معرفي انواع فرمها  = همان نوع عوامل حقوق و مزايا ميباشد . (‏ - ----------------------
	 (@YearMounth varchar(7) ='1398/01', @salarykind int=1, @salarykindTo int=1,@PersonelNoFROM int=0 ,@PersonelNoTo int=9999999 ,
	  @FormInfoID int, @InfoID int, @Mounth int, @4ContainSalaryAnnuity int=0, @InterTypeFrom int=0, @InterTypeTo int=9999999)  
RETURNS  table   AS 
return  
	(
		SELECT  BONUS.* ,
		case when A_FIX.taxid  = A_FIX.Taxs_Bonus_TaxID
		then 
		CASE WHEN 	
			ROUND( 
					FIX.Amount * (bonus.CountMounth) +
					(
						bonus.EmployeeAmount+DecEmployeeAmount+ bonus.ContainTaxValue+bonus.MTAX - 
						CASE WHEN (SELECT TaxWithExemptionsTimeSheets FROM Pay.Config )=1 
							THEN ROUND(FIX.BonusFreeTax /365*DayQuntity,0)
							ELSE FIX.BonusFreeTax  
						END - 
						FIX.FirstAmount * (bonus.CountMounth) 
					) * FIX.Coefficient
				,0)	- 
			bonus.PaymentTaxValue-DecPaymentLoan >0 
		THEN 
			ROUND( 
				FIX.Amount * (bonus.CountMounth)  +
				(
					bonus.EmployeeAmount+ DecEmployeeAmount+bonus.ContainTaxValue+bonus.MTAX - 
					CASE WHEN (SELECT TaxWithExemptionsTimeSheets FROM Pay.Config )=1 
						THEN  ROUND(FIX.BonusFreeTax /365*DayQuntity,0)
						ELSE FIX.BonusFreeTax  
					END -
					FIX.FirstAmount* (bonus.CountMounth) 
				 ) * FIX.Coefficient
				 ,0)- 
			bonus.PaymentTaxValue-DecPaymentLoan ELSE 0 END 
			else   
				case when  bonus.EmployeeAmount >   FIX.firstamount
					then  ROUND( ( bonus.EmployeeAmount -  FIX.firstamount ) * FIX.Coefficient ,0)  + fix.amount 
					else 0
				end 
			end AS TaxValue 
		FROM (
				SELECT  
						PD.PersonelNo, 
						PD.DayQuntity,
						PD.previous_DayQuntity,
						PD.previous_Taxvalue,
						CSA.amount, 
						FI.InfoID,
						TaxInfo.Forminfoid AS TaxID,
						FI.StandardDays,  
						FI.StandardTimes, 
						FI.Amount AS ConstAmount, 
						isnull(CTB.ContainTaxValue,0) AS ContainTaxValue ,
						isnull(CTB.CountMounth,0) as CountMounth ,
						isnull(CTB.TaxValue,0) AS PaymentTaxValue ,
						isnull(CTB.MTAX,0) as MTAX ,
						isnull(personeldec.DecEmployeeAmount,0) as DecEmployeeAmount ,
						isnull(personeldec.DecPaymentLoan,0) as DecPaymentLoan,
						case when isnull(PD.NumberOfMonth,0) <> 0 and PD.DayQuntity = 1 
								then round(
											case when  round(  (2 * CSA.amount * StandardClock * bh.avghours) / (12 *  StandardClock) ,0) > round((TaxInfo.Amount * bh.avghours ) / (12 *  StandardClock),0)
												then round((TaxInfo.Amount  * bh.avghours) / (12 *  StandardClock),0)
												else round((TaxInfo.Amount  * bh.avghours) / (12 *  StandardClock),0)
											end 
										 ,0)
	
							 When  isnull(PD.NumberOfMonth,0) = 0 and PD.DayQuntity <> 1 
								then 
									CASE 
										WHEN ROUND(   (((PD.DayQuntity / FI.Amount) * FI.StandardDays)  + ((PD.DayQuntity / FI.Amount) * FI.StandardTimes)) * CSA.amount  ,0) 
											 > TaxInfo.Amount * (PD.DayQuntity / FI.Amount)	
											then TaxInfo.Amount *(PD.DayQuntity / FI.Amount)
										ELSE  ROUND(
												   ( ( (PD.DayQuntity / FI.Amount) * FI.StandardDays )  + ( (PD.DayQuntity / FI.Amount) * FI.StandardTimes) )
													* CSA.amount  
												 ,0)
									end 
							 else 0
						end AS EmployeeAmount
				FROM	
					(
						SELECT  PersonelNo,
								FormInfoID , 
								SUM(DayQuntity) AS DayQuntity  ,
								sum(NumberOfMonth) as NumberOfMonth ,
								SUM(case when enddate is not null then DayQuntity  else 0 end ) previous_DayQuntity,
								sum(case when enddate is not null then PaymentLoan else 0 end ) previous_Taxvalue
						FROM    Pay.PersonelDecExt
						WHERE   (FormInfoID = @FormInfoID) 
						GROUP BY PersonelNo , 
								FormInfoID 
					) PD 
					INNER JOIN Pay.ContainSalaryAnnuity(@YearMounth, @salarykind, @salarykindTo, @PersonelNoFrom, @PersonelNoTo, 1 ,@4ContainSalaryAnnuity) CSA 
								ON PD.PersonelNo = CSA.PersonelNo 
					INNER JOIN Pay.PersonelInfo_Ins_Tax(@YearMounth , @PersonelNoFrom, @PersonelNoTo)  PersonelInfo 
								ON PD.PersonelNo = PersonelInfo.PersonelNo 
					INNER JOIN (
									SELECT	OfficeCode, 
											jobCode, 
											InterdictDate, 
											subcompanyCode, 
											PersonelNo, 
											EmployTypeID, 
											CAST(RIGHT(LEFT(InterdicStartDate,7), 2) AS int) AS startmonth,
											CAST(RIGHT(LEFT(InterdicEndDate,7), 2) AS int) AS endMonth,
											CAST(left(InterdicStartDate, 4) AS int) AS YearID,
											TaxCalculationType,
											StandardClock
									FROM    Pay.Interdicts   
										LEFT OUTER JOIN   Pay.FormsInfo ON Pay.Interdicts.EmployTypeID = Pay.FormsInfo.FormInfoID
									where 	right(rtrim(@YearMounth),2) >= CAST(RIGHT(LEFT(InterdicStartDate,7), 2) AS int) 
										and  right(rtrim(@YearMounth),2) <= CAST(RIGHT(LEFT(InterdicEndDate,7), 2) AS int) 
										AND (FormsInfo.InfoID BETWEEN @InterTypeFrom AND @InterTypeTo )
									) aaa on aaa.PersonelNo=PD.PersonelNo  and  aaa.YearID=left(ltrim(@YearMounth),4)
					INNER JOIN Pay.FormsInfo TaxInfo ON aaa.TaxCalculationType = TaxInfo.FormInfoID  	                                 		  
					LEFT OUTER JOIN Pay.ContainTaxBefore  ( @Mounth  ,@PersonelNoFROM ,@PersonelNoTo , left(@YearMounth,4)) CTB 
									on CTB.PersonelNo=aaa.PersonelNo and  CTB.TaxCalculationType  =aaa.TaxCalculationType 
					left outer join (
										select PersonelNo,
												sum(isnull(EmployeeAmount,0)) as DecEmployeeAmount,
												sum(isnull(PersonelDecExt.PaymentLoan,0)) as DecPaymentLoan		
										from 	Pay.PersonelDecExt 
											INNER JOIN Pay.FormsInfo ON Pay.PersonelDecExt.FormInfoID = Pay.FormsInfo.FormInfoID
										WHERE	 Pay.FormsInfo.FormType in (111)	
												AND  (FormsInfo.InfoID <=10)
										--    and      (PersonelDecExt.FirstMounth < @Mounth )	
										group by 	PersonelNo							
									
									) personeldec on personeldec.PersonelNo= PD.PersonelNo 
					CROSS JOIN  (
									SELECT *
									FROM   Pay.FormsInfo
									WHERE  formtype = 47 AND infoid =@InfoID
								) FI
					LEFT OUTER JOIN  Pay.BounsHours BH on PD.PersonelNo=BH.PersonelNo
				WHERE	(PD.FormInfoID = @FormInfoID )
		)Bonus  
		-- change by rezaei  in 1401/12 form suport new roll of bounes tax : Start 
		INNER JOIN  Pay.taxtable_List (left(@YearMounth,4),@Mounth) A_FIX ON  bonus.TaxID = A_FIX.PrvInfoID 
		INNER JOIN  (
						SELECT  ti.ID FormInfoID , 
								t.TaxID ,
								37 formtype , 
								ti.RowNo infoid , 
								t.FormInfoID PrvInfoID , 
								t.YearRun , 
								t.MonthRun ,
								t.Descriptions,
								isnull(LAG (ti.RevenuePrice ) over(partition by ti.TaxID order by ti.RevenuePrice ,ti.RowNo,ti.ID ),0) + 1 firstamount , 
								ti.FixedPrice amount , 
								ti.RevenuePrice Amount2 , 
								ti.Cofficient Coefficient ,
								t.TFN_CODE , 
								t.BonusFreeTax , 
								isnull(Taxs_Bonus_TaxID,ti.taxid) Taxs_Bonus_TaxID ,
								t.Statuss
							FROM Pay.TaxsItems ti 
								join Pay.Taxs t on ti.TaxID = t.TaxID 
								where t.YearRun = left(@YearMounth,4)
					) FIX ON FIX.taxid  = A_FIX.Taxs_Bonus_TaxID
		--INNER JOIN  Pay.TaxsItems TEX ON TEX.taxid  = FIX.taxid AND TEX.Cofficient = 0 AND TEX.FixedPrice = 0  
		/*INNER JOIN  Pay.FormsInfo FIX ON bonus.TaxID = FIX.PrvInfoID 
	    Left Outer Join 
					(	
						SELECT	PrvInfoID, 
								Amount2
						FROM    Pay.FormsInfo
						WHERE   (FormType = 37) 
								AND (Coefficient = 0) 
								AND (Amount = 0)  
					) AS TEX on bonus.TaxID = TEX.PrvInfoID
					*/
		-- End of change by rezaei  in 1401/12 form suport new roll of bounes tax 
		where	CASE 
					WHEN ISNULL(bonus.EmployeeAmount,0) +DecEmployeeAmount+ ISNULL(bonus.ContainTaxValue,0)+ bonus.MTAX - 
						CASE WHEN (SELECT TaxWithExemptionsTimeSheets FROM Pay.Config )=1 
							 THEN ROUND(FIX.BonusFreeTax /365*DayQuntity,0)
						ELSE FIX.BonusFreeTax 
						end >0 
					THEN ISNULL(bonus.EmployeeAmount,0) +DecEmployeeAmount+ ISNULL(bonus.ContainTaxValue,0)+bonus.MTAX - 
						CASE WHEN (SELECT TaxWithExemptionsTimeSheets FROM Pay.Config )=1 
							THEN ROUND(FIX.BonusFreeTax /365*DayQuntity,0)
						ELSE FIX.BonusFreeTax  
						END 
				ELSE 0 
				END >= 	FIX.FirstAmount*(ISNULL(bonus.CountMounth,0)) 
				
				AND 

				CASE 
					WHEN ISNULL(bonus.EmployeeAmount,0) + DecEmployeeAmount+ISNULL(bonus.ContainTaxValue,0)+bonus.MTAX - 
						CASE 
							WHEN (SELECT TaxWithExemptionsTimeSheets FROM Pay.Config )=1 
							THEN ROUND(FIX.BonusFreeTax /365*DayQuntity,0)
						ELSE FIX.BonusFreeTax  
						end  > 0 
					then ISNULL(bonus.EmployeeAmount,0) + DecEmployeeAmount+ISNULL(bonus.ContainTaxValue,0) +bonus.MTAX - 
						CASE WHEN (SELECT TaxWithExemptionsTimeSheets FROM Pay.Config )=1 
							THEN ROUND(FIX.BonusFreeTax /365*DayQuntity,0)
						ELSE FIX.BonusFreeTax  
						end 
				ELSE 0 
				END <=	FIX.Amount2 *(ISNULL(bonus.CountMounth,0))
) 


  
  
  
  
  

-------------------------------------------------
-------------------------------------------------
  
  
  
  
  
  
  
  

-------------------------------------------------
  
  
  
  
 
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
----------------------------------------------------------------------
----------------------------------------------------------------------
SET QUOTED_IDENTIFIER ON 
GO
--SET ANSI_NULLS OFF 
GO
CREATE FUNCTION Pay.[BonusForUpDateYearly]
------------------------------- پارامتر ها بترتيب  شامل  1- تركيب سال و ماه 2- نوع عوامل حقوق و مزايا  (  در معرفي انواع فرمها  = همان نوع عوامل حقوق و مزايا ميباشد . (‏ - ----------------------
	 (@YearMounth varchar(7) ='81/01' ,@salarykind int=1 ,@salarykindTo int=1 ,
	 @PersonelNoFROM int=0,@PersonelNoTo int=9999999,@FormInfoID int,@InfoID int
             ,@OfficeCodeFROM int=0,@OfficeCodeTo int=9999999 ,@Mounth int, @4ContainSalaryAnnuity int = 0 ,@InterTypeFrom int=0,@InterTypeTo int=9999999)  
RETURNS  table  AS 
return  
	(
		SELECT      Pay.PersonelDecExt.DecExtID,
					PersonelDecExt.PersonelNo,
					PersonelDecExt.DayQuntity,
					ROUND(CalculateBonusSalary.EmployeeAmount / CalculateBonusSalary.DayQuntity * Pay.PersonelDecExt.DayQuntity,0) AS CBonusPrice,
					ROUND((CalculateBonusSalary.TaxValue --CalculateBonusSalary.previous_Taxvalue
					)  / (CalculateBonusSalary.DayQuntity--CalculateBonusSalary.previous_DayQuntity
					)* Pay.PersonelDecExt.DayQuntity,0) AS CTax,
					CalculateBonusSalary.DayQuntity AS SumDayQuntity,
					PersonelDecExt.PaymentLoan,
					PersonelDecExt.EmployeeAmount,
					Pay.PersonelDecExt.EndDate
		FROM    Pay.PersonelDecExt 
				INNER JOIN  Pay.CalculateBonusSalaryYearly(@YearMounth,@salarykind,@salarykindTo,@PersonelNoFrom,@PersonelNoTo,@FormInfoID,@InfoID ,@Mounth ,@4ContainSalaryAnnuity,@InterTypeFrom ,@InterTypeTo) CalculateBonusSalary 
								ON Pay.PersonelDecExt.PersonelNo = CalculateBonusSalary.PersonelNo 
				LEFT OUTER JOIN Pay.FormsInfo ON Pay.PersonelDecExt.OfficeCode = Pay.FormsInfo.FormInfoID
		WHERE   (PersonelDecExt.FormInfoID = @FormInfoID) 
				AND (FormsInfo.InfoID BETWEEN @OfficeCodeFROM AND @OfficeCodeTo)
	)
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
----------------------------------------------------------------------

SET QUOTED_IDENTIFIER ON 
GO
--SET ANSI_NULLS OFF 
GO
CREATE VIEW Pay.Months
AS 
SELECT CAST('01' AS CHAR(2)) AS MonthID, 'فروردين' AS Name
UNION  
SELECT CAST('02' AS CHAR(2)), 'ارديبهشت' 
UNION  
SELECT CAST('03' AS CHAR(2)), 'خرداد' 
UNION  
SELECT CAST('04' AS CHAR(2)), 'تير' 
UNION  
SELECT CAST('05' AS CHAR(2)), 'مرداد'
UNION  
SELECT CAST('06' AS CHAR(2)), 'شهريور'
UNION  
SELECT CAST('07' AS CHAR(2)), 'مهر' 
UNION  
SELECT CAST('08' AS CHAR(2)), 'آبان' 
UNION  
SELECT CAST('09' AS CHAR(2)), 'آذر'
UNION  
SELECT CAST('10' AS CHAR(2)), 'دي' 
UNION  
SELECT CAST('11' AS CHAR(2)), 'بهمن' 
UNION  
SELECT CAST('12' AS CHAR(2)), 'اسفند' 

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
-------------------------------------------------
--------------------------------------------------
----------------------------------------------------------------------
------------------------------------------------------------------------
--SET QUOTED_IDENTIFIER ON 
--GO
----SET ANSI_NULLS OFF 
--GO

--CREATE PROCEDURE Pay.SpTax_ListFiles
-- @mounth varchar(2),
-- @FromPersonelNo varchar(15),
-- @ToPersonelNo varchar(15),
-- @ShowListKind varchar(2),
-- @ArchiveID varchar(2),
-- @YearID varchar(4),
-- @YearMounthFn Varchar(10),
-- @InterdictType varchar(2),
-- @bedbes varchar(2),
-- @PersonelStateFROM varchar(15),
-- @PersonelStateTo varchar(15),
-- @EmployTypeIDFROM varchar(15),
-- @EmployTypeIDTo varchar(15),
-- @OfficeCode varchar(8000),
-- @ProjectIDFROM int ,
-- @ProjectIDTo int ,
-- @PayKind int,
-- @TaxCalculationTypes varchar(1000)
 
--AS
--BEGIN

--SET NOCOUNT ON;
--declare @SqlTxt varchar(8000)
--DECLARE @SqlView VARCHAR(8000)
--SET @SqlView = '';



--set @SqlTxt='
--SELECT    [Tax_List&File_1].PersonelNo, Pay.PersonelInfo.NationalID,
--	PersonelInfo.name_L1, Pay.PersonelInfo.lastName_L1, Pay.PersonelInfo.fatherName_L1, FormsInfoEmployTypeID.TaxCode AS KindEmployTypeID,
--	PersonelInfo.PostalCode, FormsInfo_JobCode.InfoName_L1 AS jobName, Pay.Interdicts.TotalYearsWork, 
--	FormsInfo_LicenceCode.TaxCode AS LicenceTax,
--	FormsInfo_OfficeCode.TaxCode AS OfficeTax, Pay.FormsInfo_TaxCalculationType.TaxCode AS TaxCalculationTypeTax, 
--	FormsInfo_NationalityCode.TaxCode AS NationalityTax, Pay.FormsInfo_NationalityCode.InfoName_L1 AS NationalityName, 
--	InsuranceCONSTinfo.TaxCode AS InsuranceTax, Pay.PersonelInfo.InsuranceNumber,  [Tax_List&File_1].Column17,
--	[Tax_List&File_1].Column18, [Tax_List&File_1].Column19, [Tax_List&File_1].CheckColumn20, [Tax_List&File_1].Column20, 
--	[Tax_List&File_1].Column21 ,[Tax_List&File_1].Column22 ,[Tax_List&File_1].Column23 ,[Tax_List&File_1].Column24 ,
--	[Tax_List&File_1].Column25, [Tax_List&File_1].Column26, [Tax_List&File_1].Column27, [Tax_List&File_1].Column28, 
--	[Tax_List&File_1].Column29,  [Tax_List&File_1].Column30, [Tax_List&File_1].Column31,
--	CASE WHEN [Tax_List&File_1].Column32>0 THEN [Tax_List&File_1].Column32 ELSE 0 END + [Tax_List&File_1].Column29 AS Column32,
--	CASE WHEN [Tax_List&File_1].Column33>0 THEN [Tax_List&File_1].Column33 ELSE 0 END AS Column33,
--	'+str(@PayKind)+'*CASE WHEN  [Tax_List&File_1].Column34>0 THEN  [Tax_List&File_1].Column34 ELSE 0 END AS Column34,
--	FormsInfo_InsuranceCONSTinfo.InfoID AS InsuranceKind ,
--	FormsInfo_InsuranceCONSTinfo.InfoName_L1 AS InsuranceInfoName
--	,Price ,TaxValue ,Bonus ,BonusRate ,BonusTax , ContainTaxValue, BeforeTaxValue ,Column32Chk               
--	, CASE WHEN  CheckColumn20>0 THEN   Column32Chk-CheckColumn20 ELSE 0 END AS  CotrolCheck
--	,TaxZoneTaxCode, ISNULL([Tax_List&File_1].Column20 ,0) + ISNULL([Tax_List&File_1].Column28 ,0) AS Column2028
--	, Pay.FormsInfo_TaxCalculationType.InfoName_L1 AS TaxName, Pay.FormsInfo_LicenceCode.InfoName_L1 AS LicenceName, 
--	FormsInfo_OfficeCode.InfoName_L1 AS OfficeName, FormsInfoEmployTypeID.InfoName_L1 AS EmployName, 
--	FormsInfoPersonelState.InfoName_L1 AS StateName, InsuranceCONSTinfo.insurancename, Pay.PersonelInfo.Mobile

--FROM  Pay.FormsInfo AS FormsInfo_OfficeCode RIGHT OUTER JOIN
--	 Pay.FormsInfo AS FormsInfoEmployTypeID LEFT OUTER JOIN
--	 Pay.FormsInfo AS Pay.FormsInfo_LicenceCode RIGHT OUTER JOIN
--	 Pay.FormsInfo AS FormsInfoPersonelState RIGHT OUTER JOIN
--	PersonelInfo LEFT OUTER JOIN
--	Pay.[Tax_List&File]( '+@mounth+' , '+@FromPersonelNo+', '+@ToPersonelNo+' ,	'+@ShowListKind+' , '+@ArchiveID+', '+@YearID+'
--	, '''+@YearMounthFn+''' , '+@InterdictType+' , '+@bedbes+'   ) 
--	AS [Tax_List&File_1] LEFT OUTER JOIN
--	 Pay.FormsInfo AS Pay.FormsInfo_InsuranceCONSTinfo LEFT OUTER JOIN
--	InsuranceCONSTinfo INNER JOIN
--	Interdicts ON InsuranceCONSTinfo.insuranceNo = Pay.Interdicts.insuranceID ON Pay.FormsInfo_InsuranceCONSTinfo.FormInfoID = InsuranceCONSTinfo.FormInfoID ON 
--	[Tax_List&File_1].PersonelNo = Pay.Interdicts.PersonelNo ON Pay.PersonelInfo.PersonelNo = [Tax_List&File_1].PersonelNo ON 
--	FormsInfoPersonelState.FormInfoID = Pay.PersonelInfo.PersonelState ON Pay.FormsInfo_LicenceCode.FormInfoID = Pay.PersonelInfo.LicenceCode RIGHT OUTER JOIN
--	 Pay.FormsInfo AS Pay.FormsInfo_NationalityCode ON Pay.PersonelInfo.NationalityCode = Pay.FormsInfo_NationalityCode.FormInfoID LEFT OUTER JOIN
--	 Pay.FormsInfo AS Pay.FormsInfo_TaxCalculationType ON Pay.Interdicts.TaxCalculationType = Pay.FormsInfo_TaxCalculationType.FormInfoID ON 
--	FormsInfoEmployTypeID.FormInfoID = Pay.Interdicts.EmployTypeID RIGHT OUTER JOIN
--	 Pay.FormsInfo AS FormsInfo_JobCode ON Pay.Interdicts.jobCode = FormsInfo_JobCode.FormInfoID ON FormsInfo_OfficeCode.FormInfoID = Pay.Interdicts.OfficeCode

--WHERE (FormsInfoPersonelState.InfoID BETWEEN '+@PersonelStateFrom+' AND '+@PersonelStateTo+' ) 
-- AND (InterdicType = 0 )
-- AND (FormsInfoEmployTypeID.InfoID BETWEEN '+@EmployTypeIDFrom+' AND '+@EmployTypeIDTo+' )

-- AND (LEFT(Interdicts.InterdicStartDate,7) <=''' +@YearMounthFn + ''' ) AND	(LEFT(Interdicts.InterdicEndDate,7) >=''' +@YearMounthFn + ''')


-- AND ( ( Pay.Interdicts.ProjectID BETWEEN '+str(@ProjectIDFrom)+' AND '+str(@ProjectIDTo)+') OR Pay.Interdicts.ProjectID = 0 ) 
-- AND (Interdicts.OfficeCode IN (SELECT part FROM Pay.SplitString('''+@OfficeCode+''','','')))
-- AND (Interdicts.TaxCalculationType IN (SELECT part FROM Pay.SplitString('''+@TaxCalculationTypes+''','','')))
 
--'


--EXEC('IF EXISTS (SELECT * FROM sysobjects WHERE id = object_id( N''Pay.[view_Tax_ListFiles]'') AND OBJECTPROPERTY(id, N''IsView'') = 1)'
--                 +' DROP view Pay.[view_Tax_ListFiles]')

----ATE EW LowerCase
--SET @SqlView =  'create view Pay.[view_Tax_ListFiles]  AS ' 
--            + CHAR(13) + 'SELECT ''جمع:‏''AS [ ],SUM(Column17) AS Column17 ,SUM(Column18) AS Column18 ,SUM(Column19) AS Column19 ,
--SUM(Column20) AS Column20 ,SUM(Column25) AS Column25 ,SUM(Column26) AS Column26 ,
--SUM(Column21) AS Column21 ,SUM(Column22) AS Column22 ,SUM(Column23) AS Column23 ,
--SUM(Column27) AS Column27 ,SUM(Column28) AS Column28 ,SUM(Column29) AS Column29 ,
--SUM(Column30) AS Column30 ,SUM(Column31) AS Column31 ,SUM(Column32) AS Column32 ,
--SUM(Column33) AS Column33 ,'+str(@PayKind)+'*SUM(Column34) AS Column34 ,SUM(CotrolCheck) AS CotrolCheck  FROM (' 
--               + CHAR(13) + @SqlTxt +') AS Temp'


--set @SqlTxt=@SqlTxt+' ORDER BY [Tax_List&File_1].PersonelNo'

----print @SqlTxt
--Exec(@SqlTxt)

----PRINT (@SqlView)
--EXEC (@SqlView)

--END
--GO
--SET QUOTED_IDENTIFIER OFF 
--GO
--SET ANSI_NULLS ON 
--GO
------------------------------------------------------------------------
----------------------------------------------------------------------
SET QUOTED_IDENTIFIER ON 
GO
--SET ANSI_NULLS OFF 
GO
CREATE FUNCTION Pay.[RetardDiskBank]
(	
	@AccountsTypeID	int,
	@BranchInfoFrom	int,
	@BranchInfoTo	int,
	@Mounth	int,
	@BankCode	int,
	@AccBankTypeFrom	int,
	@AccBankTypeTo	int,
	@PersonelStateFrom	int,
	@PersonelStateTo	int,
	@PersonelFrom	int,
	@PersonelTo	int,
	@FirstArchiveID int=1 ,
	@LastArchiveID int=9999,
	@LabelIDFrom  int=0,@LabelIDTo  int=0 ,@YearIDFrom  int=1402,@YearIDTo  int=1402
)
RETURNS TABLE 
AS
RETURN 
(
	SELECT      Fitful.FitfulID AS selected , PersonelNO,FirstName,lastName_L1, name_L1, name_L2, sum(Price) as Price, BankCode, InfoID, AccountNumber, BankName_L1, BankName_L2, BankType_L1, BankType_L2, AccBankType, 
                      PersonelState, Mounth, BranchInfo ,ISFunctions
,Mobile ,fatherName_L1  ,max(ProjectName) as ProjectName,max(ProjectCode) as  ProjectCode ,max(ProjectID) as  ProjectID                         
FROM         (SELECT      RetardFixedCalculated.PersonelNO, Pay.PersonelInfo.name_L1 AS FirstName,lastName_L1,
                                              Pay.PersonelInfo.name_L1 + ' ' + Pay.PersonelInfo.lastName_L1 AS name_L1, Pay.PersonelInfo.name_L2 + ' ' + Pay.PersonelInfo.lastName_L2 AS name_L2, 
                                              ROUND(SUM(CASE WHEN (RetardFixedCalculated.ShowListKind = 1) THEN RetardFixedCalculated.Price ELSE  -(RetardFixedCalculated.Price) END), 0) 
                                              AS Price, Pay.PersonelInfo.BankCode, Pay.FormsInfo.InfoID, ISNULL(PersonelAccounts.AccountNumber_Pa, Pay.PersonelInfo.AccountNumber) AS AccountNumber, 
                                              ISNULL(FormsInfoBankCode_Pa.InfoName_L1, Pay.FormsInfo.InfoName_L1) AS BankName_L1, Pay.FormsInfo.InfoName_L2 AS BankName_L2, 
                                              ISNULL(FormsInfo_AccBankType_Pa.InfoName_L1, FormsInfo_AccBankType.InfoName_L1) AS BankType_L1, 
                                              FormsInfo_AccBankType.InfoName_L2 AS BankType_L2, FormsInfo_AccBankType.InfoID AS AccBankType, 
                                              FormsInfo_2PersonelState.InfoID AS PersonelState, RetardFixedCalculated.Mounth, FormsInfo_BranchInfo.InfoName_L1 AS BranchInfo
                                              ,PersonelInfo.Mobile,PersonelInfo.fatherName_L1,FormsInfoProject.InfoName_L1 AS ProjectName ,FormsInfoProject.InfoID AS ProjectCode
											  ,RetardFixedCalculated.ProjectID,
                          (SELECT     COUNT(*) AS Expr1
                             FROM         Pay.Functions
                             WHERE     (Mounth = RetardFixedCalculated.Mounth) AND (PersonelNo = RetardFixedCalculated.PersonelNO)
							    and  YearID between @YearIDFrom and @YearIDTo ) AS ISFunctions
                        FROM         Pay.RetardFixedCalculated(@FirstArchiveID, @LastArchiveID , 0,@LabelIDFrom  ,@LabelIDTo,@YearIDFrom  ,@YearIDTo  ) AS RetardFixedCalculated INNER JOIN
                                              Pay.PersonelInfo ON RetardFixedCalculated.PersonelNO = Pay.PersonelInfo.PersonelNo LEFT OUTER JOIN
                                               Pay.FormsInfo AS FormsInfo_2PersonelState ON Pay.PersonelInfo.PersonelState = FormsInfo_2PersonelState.FormInfoID LEFT OUTER JOIN
                                               Pay.FormsInfo ON Pay.PersonelInfo.BankCode = Pay.FormsInfo.FormInfoID LEFT OUTER JOIN
                                               Pay.FormsInfo AS FormsInfo_AccBankType ON Pay.PersonelInfo.AccBankType = FormsInfo_AccBankType.FormInfoID LEFT OUTER JOIN
                                               Pay.FormsInfo AS FormsInfo_BranchInfo ON Pay.PersonelInfo.BranchInfo = FormsInfo_BranchInfo.FormInfoID LEFT OUTER JOIN
                                              PersonelAccounts ON Pay.PersonelInfo.PersonelNo = PersonelAccounts.PersonelNo LEFT OUTER JOIN
                                               Pay.FormsInfo AS FormsInfo_AccBankType_Pa ON PersonelAccounts.AccBankType_Pa = FormsInfo_AccBankType_Pa.FormInfoID LEFT OUTER JOIN
                                               Pay.FormsInfo AS FormsInfo_AccountsType_Pa ON PersonelAccounts.AccountsType = FormsInfo_AccountsType_Pa.FormInfoID LEFT OUTER JOIN
                                               Pay.FormsInfo AS FormsInfo_BranchInfo_Pa ON PersonelAccounts.BranchInfo_Pa = FormsInfo_BranchInfo_Pa.FormInfoID LEFT OUTER JOIN
                                               Pay.FormsInfo AS FormsInfoBankCode_Pa ON PersonelAccounts.BankCode_Pa = FormsInfoBankCode_Pa.FormInfoID LEFT OUTER JOIN
                                               Pay.FormsInfo AS FormsInfoProject ON RetardFixedCalculated.ProjectID = FormsInfoProject.FormInfoID
                        WHERE     ( (  ((RetardFixedCalculated.ShowListKind = 2) OR(RetardFixedCalculated.ShowListKind = 11))and (bedbes=2)) or( (RetardFixedCalculated.ShowListKind = 1)and bedbes=1))
						AND (RetardFixedCalculated.Mounth = @Mounth) 
			
                                         AND (ISNULL(FormsInfo_AccountsType_Pa.InfoID,@AccountsTypeID) = @AccountsTypeID  ) 
										 AND (ISNULL(FormsInfo_BranchInfo_Pa.InfoID, FormsInfo_BranchInfo.InfoID) BETWEEN 
                                              @BranchInfoFROM AND @BranchInfoTo OR
                                              ISNULL(FormsInfo_BranchInfo_Pa.InfoID, FormsInfo_BranchInfo.InfoID) IS NULL) 
											  AND 
             --                                 (ISNULL(PersonelAccounts.BankCode_Pa, Pay.PersonelInfo.BankCode) = @BankCode) OR
                                               (FormsInfo_AccountsType_Pa.InfoID = @AccountsTypeID OR
                                              FormsInfo_AccountsType_Pa.InfoID IS NULL) 
											  AND (ISNULL(FormsInfo_BranchInfo_Pa.InfoID, FormsInfo_BranchInfo.InfoID) BETWEEN 
                                              @BranchInfoFROM AND @BranchInfoTo OR
                                              ISNULL(FormsInfo_BranchInfo_Pa.InfoID, FormsInfo_BranchInfo.InfoID) IS NULL)  AND 
                                              (ISNULL(PersonelAccounts.BankCode_Pa, Pay.PersonelInfo.BankCode) = @BankCode) 




                        GROUP BY RetardFixedCalculated.PersonelNO, Pay.PersonelInfo.name_L1 , Pay.PersonelInfo.lastName_L1, Pay.PersonelInfo.name_L2 + ' ' + Pay.PersonelInfo.lastName_L2, 
                                              Pay.PersonelInfo.BankCode, Pay.FormsInfo.InfoID, ISNULL(PersonelAccounts.AccountNumber_Pa, Pay.PersonelInfo.AccountNumber), 
                                              ISNULL(FormsInfoBankCode_Pa.InfoName_L1, Pay.FormsInfo.InfoName_L1), Pay.FormsInfo.InfoName_L2, ISNULL(FormsInfo_AccBankType_Pa.InfoName_L1, 
                                              FormsInfo_AccBankType.InfoName_L1), FormsInfo_AccBankType.InfoName_L2, FormsInfo_AccBankType.InfoID, FormsInfo_2PersonelState.InfoID, 
                                              RetardFixedCalculated.Mounth, FormsInfo_BranchInfo.InfoName_L1, FormsInfo_AccBankType.InfoID, FormsInfo_AccBankType_Pa.InfoID
                                              ,PersonelInfo.Mobile,PersonelInfo.fatherName_L1
											  ,FormsInfoProject.InfoName_L1 ,FormsInfoProject.InfoID
											  ,RetardFixedCalculated.ProjectID
                        HAVING      (ISNULL(FormsInfo_AccBankType_Pa.InfoID, FormsInfo_AccBankType.InfoID) BETWEEN @AccBankTypeFROM AND @AccBankTypeTo) AND 
                                              (FormsInfo_2PersonelState.InfoID BETWEEN @PersonelStateFROM AND @PersonelStateTo) AND (RetardFixedCalculated.PersonelNO BETWEEN 
                                              @PersonelFROM AND @PersonelTo) ) AS a
											   CROSS JOIN
                      Fitful
WHERE     (Price <> 0)
group by Fitful.FitfulID  , PersonelNO,FirstName,lastName_L1, name_L1, name_L2,  BankCode, InfoID, AccountNumber, BankName_L1, BankName_L2, BankType_L1, BankType_L2, AccBankType, 
                      PersonelState, Mounth, BranchInfo ,ISFunctions
,Mobile ,fatherName_L1  --,ProjectName,ProjectCode ,ProjectID  

)
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
----------------------------------------------------------------------
----------------------------------------------------------------------
SET QUOTED_IDENTIFIER ON 
GO
--SET ANSI_NULLS OFF 
GO
-- =============================================
-- Author:		Abedi
-- Create date: 89/10/18
-- Description:	توليد InfoID
-- =============================================
CREATE FUNCTION Pay.GetInfoID
(
	@FormInfoID int ,@FormType int
)
RETURNS int
AS
BEGIN
	
Declare @InfoID varchar(20)
Declare @PrefixInfoID int
Declare @NewInfoID int

SELECT    @InfoID = Pay.FormsInfo.InfoID 
FROM          Pay.FormsInfo 
WHERE      (FormsInfo.FormInfoID = @FormInfoID )

SELECT    @PrefixInfoID =PrefixInfoID
FROM      Pay.FormTypes 
WHERE      (FormType= @FormType)



/*
SELECT    @InfoID = Pay.FormsInfo.InfoID ,@PrefixInfoID =PrefixInfoID
FROM          Pay.FormsInfo INNER JOIN
                      Pay.FormTypes ON Pay.FormsInfo.FormType =Pay.FormTypes.FormType
WHERE      (FormsInfo.FormInfoID = @FormInfoID ) AND (FormTypes.PrefixInfoID > 0)
*/
if ISNULL((@PrefixInfoID),0) = 0
  SELECT  @NewInfoID = ISNULL(MAX(InfoID)+1,1) FROM  Pay.FormsInfo  WHERE (FormType = @FormType) and (PrvInfoID=@FormInfoID)
else
SELECT @NewInfoID = @InfoID +
        ISNULL( LTRIM(str(CAST( RIGHT(str(MAX(InfoID)),LEN(MAX(InfoID))-LEN(@InfoID) )  AS Int)+1)),1)
FROM         Pay.FormsInfo
WHERE     (FormType = @FormType) and (PrvInfoID=@FormInfoID)


RETURN (@NewInfoID)

END
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
-------------------------------------------------
--------------------------------------------------
SET QUOTED_IDENTIFIER ON 
GO
--SET ANSI_NULLS OFF 
GO
CREATE VIEW Pay.GetYear
AS
SELECT LEFT(StartYear,4) AS YearID FROM Util.MaliYear
union
SELECT LEFT(EndYear,  4) AS YearID FROM Util.MaliYear
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
----------------------------------------------------------------------
----------------------------------------------------------------------
SET QUOTED_IDENTIFIER ON 
GO
--SET ANSI_NULLS OFF 
GO
SET QUOTED_IDENTIFIER ON 
GO
--SET ANSI_NULLS OFF 
GO
CREATE PROCEDURE Pay.[SpFunctionSpecialControl]
	-- Add the parameters for the stored procedure here
 @BaseParam Varchar(50),
 @AddParam Varchar(4),
 @Filter Varchar(100),
 @MergeCode bit,
 @MergeCaption bit,
 @SqlWhere Varchar(1000),
 @TableKind int
 
AS
BEGIN

SET NOCOUNT ON;

-- متغيير هاي مربوط به ساخت رس جو
DECLARE @SqlSELECT varchar(2000)
--DECLARE @SqlWhere  varchar(1000)
DECLARE @SqlJoin   varchar(2000)
DECLARE @SqlGroup  varchar(2000)
DECLARE @SqlTopic  varchar(2000)
DECLARE @SqlFinal  varchar(6000) 

-- اين دو متغيير براي سطح قبل و نمايش كل ستونها در نظر رفته شده 
DECLARE @ALLColums varchar(1000)
DECLARE @ALLCaption varchar(1000)
DECLARE @OldAcc varchar(1000)


--Join متغيير هاي مربوط به 
DECLARE @fldName     varchar(200)
DECLARE @AliasName   varchar(50)
DECLARE @tblName     varchar(250)
DECLARE @TopicName   varchar(200)
Declare @Current     Varchar(50) 
DECLARE @JoinFldName varchar(50)
DECLARE @CaptionName Nvarchar(50)


-- SET Default
SET @SqlSELECT  = '' ; -- WARN = NOT NULL
SET @SqlJoin    = '' ; -- WARN = NOT NULL
SET @SqlGroup   = '' ; -- WARN = NOT NULL
SET @SqlTopic   = '' ; -- WARN = NOT NULL
SET @ALLColums  = '' ; -- WARN = NOT NULL
SET @ALLCaption = '' ; -- WARN = NOT NULL
SET @OldAcc     = '' ; -- WARN = NOT NULL
SET @Current    = RTRIM(LTRIM(@BaseParam +',' + @AddParam))


-- تعريف شده براي بدست آوردن مقدارها مي باشد  Cursor 
-- دقت داشته باشيد از فانكشني براي جدا سازي استفاده شده است 
DECLARE QAnalize CURSOR FOR(
	SELECT TableName,FieldName,AliasName ,JoinFieldName,CaptionName,TopicName
	FROM Util.Analyze  INNER JOIN SplitString(@Current,',') SP ON SP.part =  Util.Analyze.ID 
	WHERE     (TableKind = @TableKind ) ); 


--Start While	
open QAnalize ;
FETCH FROM QAnalize into @tblName,@fldName,@AliasName ,@JoinFldName ,@CaptionName,@TopicName ;
while @@fetch_status = 0 
begin

	--SET FieldName With TableName 
	IF ((@JoinFldName <> '' ))
		SET @JoinFldName =   ISNULL(@AliasName,@tblName)  + '.' + @JoinFldName


    -- Make SQL TXT
    SET @ALLColums =  'Cast( ' + @fldName +' AS Varchar(10)) +''-''+' + @ALLColums; 
    
	IF ( (@JoinFldName <> '' )  and  (@TopicName <> '')    )
	begin
		
		SET @SqlGroup      = @SqlGroup   +   'cast( ' +ISNULL(@AliasName,@tblName) + '.' + @TopicName + ' AS nvarchar(100)),' 
		
		SET @ALLCaption    = @ALLCaption +   'cast( ' +ISNULL(@AliasName,@tblName) + '.' + @TopicName + ' AS nvarchar(100)) +''-''+'  ;
		
		IF (@MergeCaption  = 1)
			SET @SqlTopic  =  @SqlTopic  +  'cast( ' +ISNULL(@AliasName,@tblName) + '.' + @TopicName + ' AS nvarchar(100)) AS ''عنوان‏' +  @CaptionName +''',' ; 
	end;

	IF (((@JoinFldName <> '' ) OR  (@JoinFldName <> NULL )) AND (@AliasName  IS NOT NULL ) )
		SET @SqlJoin = @tblName + ' ' + ISNULL(@AliasName,'') + ' ON ' + @JoinFldName  + ' = '+ @fldName + ' INNER JOIN '+ Char(13) + @SqlJoin ;

	IF (@MergeCode = 1)
	begin
		SET @SqlSELECT = @SqlSELECT + ' ' + @fldName + ' AS  ''' +  @CaptionName  +''',' ; 
		SET @SqlGroup  = @SqlGroup  + ' ' + @fldName + ' ,' ;
		
	end;			
	FETCH FROM QAnalize into @tblName,@fldName,@AliasName ,@JoinFldName ,@CaptionName,@TopicName ;
end; --End CURSOR

--Free CURSOR
CLOSE QAnalize ;	
DEALLOCATE QAnalize ; 

IF (@SqlJoin <> '')
	SET @SqlJoin   =  'INNER JOIN '+ LEFT (@SqlJoin  , (LEN(@SqlJoin) -  12)) ;
	
-- Remove Last Char
SET @ALLColums     =  LEFT (@ALLColums,  (LEN(@ALLColums) - 5)) ; 
SET @SqlGroup      =  @ALLColums +' , ' +@SqlGroup  ; 
set @SqlGroup =     LEFT (@SqlGroup , (LEN(@SqlGroup) -  1))

IF (@ALLCaption <> '')
Begin
	SET @ALLCaption    =  LEFT (@ALLCaption, (LEN(@ALLCaption) - 5)) ; 
	SET @SqlGroup     =  @ALLCaption + ',' + @SqlGroup
	SET @ALLCaption   =  @ALLCaption+' AS AccName,'
	
end;

IF  (@AddParam  <> '')
begin
	SELECT @OldAcc =  'Cast(' + FieldName +' AS Varchar(20)) +''-''+ '+ @OldAcc      
	FROM Util.Analyze  INNER JOIN SplitString(@BaseParam,',') SP ON SP.part = Util.Analyze.ID 
    WHERE     (TableKind = @TableKind )
	SET @OldAcc   =  LEFT (@OldAcc, (LEN(@OldAcc) - 5))  ; 
	
	if (@Filter <> '') 
	begin
		if (@SqlWhere = '')  
			SET @SqlWhere =  ' where '+ @OldAcc +'='''+@Filter+' '''	
		else		
			SET @SqlWhere =  @SqlWhere +' AND '+ @OldAcc +'='''+@Filter+' '''		
	end;	
end;

if @TableKind = 1
	SET @SqlFinal = 'SELECT  '+@ALLColums+ ' AS AccCode,' + @ALLCaption + @Sqlselect+ @SqlTopic +
				'  SUM(FunctionSpecialControl.FunctionTime) AS FunctionTime' +
				' ,SUM(FunctionSpecialControl.FunAmount) AS FunAmount ' +				
				' FROM Pay.FunctionspecialControl  ' + ISNULL(@SqlJoin,'')  + @SqlWhere + Char(13) +
				' GROUP BY '+ @SqlGroup
else
	SET @SqlFinal = 'SELECT  '+@ALLColums+ ' AS AccCode,' + @ALLCaption + @Sqlselect+ @SqlTopic +
				'  SUM(FunctionDayItems.FunTime) AS FunctionTime' +
				' ,SUM(FunctionDayItems.ExtTime) AS FunAmount ' +				
				' FROM FunctionDayItems INNER JOIN FunctionDay ON FunctionDayItems.FunID = FunctionDay.FunID '+
				' INNER JOIN  Pay.FormsInfo ON Pay.FormsInfo.FormInfoID = FunctionDay.OfficeCode '+
                 + ISNULL(@SqlJoin,'')  + @SqlWhere + Char(13) +
				' GROUP BY '+ @SqlGroup
				
				
                
--print @SqlFinal
Exec(@SqlFinal)
END
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
----------------------------------------------------------------------
----------------------------------------------------------------------
--SET QUOTED_IDENTIFIER ON 
--GO
----SET ANSI_NULLS OFF 
--GO
--CREATE  PROCEDURE Pay.[TaxCheck] 
--	(@Mounth int = 11,   @Year int=89,   @YearMounth varchar(7) ='81/01')  
-- AS  
--begin
----SET NOCOUNT ON 
--(
--SELECT     Pay.SalaryRange.SalaryID, FormsInfo_3.infoname_l1 , 
--		FormsInfo_3.infoname_l1 + '  در ديسكت مالياتي در ستونهاي ' + str(min (FormsInfo.infoID)) 
--		+ '  و   '+ ltrim(str(MAX(FormsInfo.infoID)))  + '    تكراري است' AS ErrorTxt,1 AS ErrorNoumber 
--	FROM         Pay.SalaryRange INNER JOIN
--                       Pay.FormsInfo ON Pay.SalaryRange.FormInfoID = Pay.FormsInfo.FormInfoID inner join 
--                       Pay.FormsInfo AS FormsInfo_3 ON Pay.SalaryRange.SalaryID = FormsInfo_3.FormInfoID 
--WHERE     (FormsInfo.FormType = 94)   AND Pay.FormsInfo.infoID<>21
--GROUP BY Pay.SalaryRange.SalaryID , FormsInfo_3.infoname_l1 
--HAVING      (COUNT(*) <> 1)
--union all

--SELECT    salaryid_Fiexed , FormsInfo_2.infoname_l1 ,
-- FormsInfo_2.infoname_l1  + '--  براي  -- '+ FormsInfo_1.infoname_l1 +  '-- با ديسكت مالياتي مطابقت ندارد '  AS ErrorTxt ,1 AS ErrorNoumber 
--FROM (
--SELECT DISTINCT Pay.PersonelInfo.TaxCalculationType, FixedCalculated.SalaryID AS salaryid_Fiexed, 
--			CASE WHEN FixedCalculated.salaryid IN
--				(SELECT     Pay.SalaryRange.SalaryID
--					FROM         Pay.SalaryRange INNER JOIN
--							 Pay.FormsInfo ON Pay.SalaryRange.FormInfoID = Pay.FormsInfo.FormInfoID
--					WHERE     (FormsInfo.FormType = 94) 
--					AND Pay.FormsInfo.infoID IN (17, 18, 19, 23, 24, 25)
--					) THEN FixedCalculated.salaryid ELSE 0 END AS Type94Tax, 
--			CASE WHEN FixedCalculated.salaryid IN
--				(   SELECT     Pay.SalaryRange.SalaryID
--					FROM         Pay.SalaryRange INNER JOIN
--							 Pay.FormsInfo ON Pay.SalaryRange.FormInfoID = Pay.FormsInfo.FormInfoID
--					WHERE     (FormsInfo.FormType = 94) 
--					AND NOT Pay.FormsInfo.infoID IN (17, 18, 19, 23, 24, 25)
--					) 
--                      THEN FixedCalculated.salaryid ELSE 0 END AS Type94_WithOutTax, 
--                      ISNULL(SalaryRange.SalaryID,0) AS Type21Tax
--FROM         Pay.FormTypes AS Pay.FormTypes_sEffectKind INNER JOIN
--                       Pay.FormsInfo ON Pay.FormTypes_sEffectKind.FormType = Pay.FormsInfo.FormType INNER JOIN
--                      FixedCalculated ON Pay.FormsInfo.FormInfoID = FixedCalculated.SalaryID INNER JOIN
--                      FinalArchiveWithPersonelNO ON FixedCalculated.Mounth = FinalArchiveWithPersonelNO.Mounth AND 
--                      FixedCalculated.PersonelNO = FinalArchiveWithPersonelNO.PersonelNO AND 
--                      FixedCalculated.ArchiveID = FinalArchiveWithPersonelNO.ArchiveID INNER JOIN
--                          (SELECT     Pay.Interdicts.PersonelNo, MAX(Interdicts.TaxCalculationType) AS TaxCalculationType
--                             FROM         Pay.Interdicts INNER JOIN
--                                                   Pay.PersonelInfo AS Pay.PersonelInfo_1 ON Pay.Interdicts.PersonelNo = Pay.PersonelInfo_1.PersonelNo
--                             WHERE     ( @YearMounth  BETWEEN LEFT(Interdicts.InterdicStartDate,7) AND LEFT(Interdicts.InterdicEndDate,7))
--                             GROUP BY Pay.Interdicts.PersonelNo) AS Pay.PersonelInfo ON Pay.PersonelInfo.PersonelNo = FixedCalculated.PersonelNO LEFT OUTER JOIN
--                      Pay.SalaryRange ON Pay.PersonelInfo.TaxCalculationType = Pay.SalaryRange.FormInfoID AND FixedCalculated.SalaryID = Pay.SalaryRange.SalaryID
--WHERE     (FixedCalculated.Mounth = @Mounth ) AND  (FixedCalculated.years = @Year ) AND
--			(FormTypes_sEffectKind.SalaryEffectKind = 1)) AS Erorlist INNER JOIN
--                       Pay.FormsInfo AS FormsInfo_1 ON Erorlist.TaxCalculationType = FormsInfo_1.FormInfoID INNER JOIN
--                       Pay.FormsInfo AS FormsInfo_2 ON Erorlist.salaryid_Fiexed = FormsInfo_2.FormInfoID
--Where type94tax-Type94_WithOutTax<>type21tax 

--Union all

--SELECT    salaryid_Fiexed , FormsInfo_2.infoname_l1 ,
-- FormsInfo_2.infoname_l1 + '  -- در ديسكت مالياتي تنظيم نشده است  '  AS ErrorTxt ,0 AS ErrorNoumber 
--FROM (
--SELECT DISTINCT Pay.PersonelInfo.TaxCalculationType, FixedCalculated.SalaryID AS salaryid_Fiexed, 
--			CASE WHEN FixedCalculated.salaryid IN
--				(SELECT     Pay.SalaryRange.SalaryID
--					FROM         Pay.SalaryRange INNER JOIN
--							 Pay.FormsInfo ON Pay.SalaryRange.FormInfoID = Pay.FormsInfo.FormInfoID
--					WHERE     (FormsInfo.FormType = 94) 
--					AND Pay.FormsInfo.infoID IN (17, 18, 19, 23, 24, 25)
--					) 
--					THEN FixedCalculated.salaryid ELSE 0 END AS Type94Tax, 
--			CASE WHEN FixedCalculated.salaryid IN
--				(   SELECT     Pay.SalaryRange.SalaryID
--					FROM         Pay.SalaryRange INNER JOIN
--							 Pay.FormsInfo ON Pay.SalaryRange.FormInfoID = Pay.FormsInfo.FormInfoID
--					WHERE     (FormsInfo.FormType = 94) 
--					AND NOT Pay.FormsInfo.infoID IN (17, 18, 19, 23, 24, 25)
--					) 
--                      THEN FixedCalculated.salaryid ELSE 0 END AS Type94_WithOutTax, 
--                      ISNULL(SalaryRange.SalaryID,0) AS Type21Tax
--FROM         Pay.FormTypes AS Pay.FormTypes_sEffectKind INNER JOIN
--                       Pay.FormsInfo ON Pay.FormTypes_sEffectKind.FormType = Pay.FormsInfo.FormType INNER JOIN
--                      FixedCalculated ON Pay.FormsInfo.FormInfoID = FixedCalculated.SalaryID INNER JOIN
--                      FinalArchiveWithPersonelNO ON FixedCalculated.Mounth = FinalArchiveWithPersonelNO.Mounth AND 
--                      FixedCalculated.PersonelNO = FinalArchiveWithPersonelNO.PersonelNO AND 
--                      FixedCalculated.ArchiveID = FinalArchiveWithPersonelNO.ArchiveID INNER JOIN
--                          (SELECT     Pay.Interdicts.PersonelNo, MAX(Interdicts.TaxCalculationType) AS TaxCalculationType
--                             FROM         Pay.Interdicts INNER JOIN
--                                                   Pay.PersonelInfo AS Pay.PersonelInfo_1 ON Pay.Interdicts.PersonelNo = Pay.PersonelInfo_1.PersonelNo
--                             WHERE     (@YearMounth  BETWEEN LEFT(Interdicts.InterdicStartDate,7) AND LEFT(Interdicts.InterdicEndDate,7))
--                             GROUP BY Pay.Interdicts.PersonelNo) AS Pay.PersonelInfo ON Pay.PersonelInfo.PersonelNo = FixedCalculated.PersonelNO LEFT OUTER JOIN
--                      Pay.SalaryRange ON Pay.PersonelInfo.TaxCalculationType = Pay.SalaryRange.FormInfoID AND FixedCalculated.SalaryID = Pay.SalaryRange.SalaryID
--WHERE      (FixedCalculated.Mounth = @Mounth ) 
--AND  (FixedCalculated.years = @Year ) 
--AND (FormTypes_sEffectKind.SalaryEffectKind = 1)) AS Erorlist INNER JOIN
--                       Pay.FormsInfo AS FormsInfo_1 ON Erorlist.TaxCalculationType = FormsInfo_1.FormInfoID INNER JOIN
--                       Pay.FormsInfo AS FormsInfo_2 ON Erorlist.salaryid_Fiexed = FormsInfo_2.FormInfoID
--Where type94tax <>salaryid_Fiexed 
--)
--end
--GO
--SET QUOTED_IDENTIFIER OFF 
--GO
--SET ANSI_NULLS ON 
--GO
----------------------------------------------------------------------
----------------------------------------------------------------------
--SET QUOTED_IDENTIFIER ON 
--GO
----SET ANSI_NULLS OFF 
--GO
--CREATE FUNCTION MakeDocuments_PayMent2  ( @PersonelNoFROM int=0,@PersonelNoTo int=9999999,
--    				@OfficeCodeFROM int =0,@OfficeCodeTo int =9999999,
--					@FirstArchiveID int=1,@LastArchiveID int=9999,@month int,@YearMonth varchar(7) ='85/01' 
--,@PersonelStateFROM int=0,@PersonelStateTo int=10,@EmployTypeIDFROM  int=0,@EmployTypeIDTo int=100
--,@MonthNoCaption varchar(526)='ماه',@AccTopicCode2Bes bigint=1010,@DetailCode int=212,@_Dec varchar(526)='تست')  
--RETURNS  table  AS 
--Return  (

----SELECT   1 AS aaa--*    FROM(
--SELECT  AccTopicCode , AccDetailCode, AccCTopicCode, AccCTopicCode2, AccCTopicCode3, SUM(Debt) AS Debt, SUM(Credit) AS Credit,  
-- MAX(InfoName_L1) AS InfoName_L1,  MAX(PersonelNO) AS PersonelNO
--,CAST('پرداخت حقوق ماه '+@MonthNoCaption AS varchar(526)) AS  _Dec, ' ' AS PeronName
--FROM Pay.MakeDocuments_PayMent(@PersonelNoFROM ,@PersonelNoTo , @OfficeCodeFROM ,@OfficeCodeTo ,@FirstArchiveID 
--,@LastArchiveID ,@Month ,@YearMonth
--,@PersonelStateFROM ,@PersonelStateTo ,@EmployTypeIDFROM  ,@EmployTypeIDTo ) AS MakeDocuments_PayMent_1 
--GROUP BY AccTopicCode, AccDetailCode, AccCTopicCode, AccCTopicCode2, AccCTopicCode3

--union all
--SELECT @AccTopicCode2Bes,@DetailCode , 0 AS AccCTopicCode, 0 AS AccCTopicCode2, 0 AS AccCTopicCode3,
--0 AS Debt, SUM(Debt) AS Credit,
--' ' AS InfoName_L1, 0 AS PersonelNO
--,CAST(@_Dec AS varchar(526)) AS  _Dec, ' ' AS PeronName
--FROM Pay.MakeDocuments_PayMent(@PersonelNoFROM ,@PersonelNoTo , @OfficeCodeFROM ,@OfficeCodeTo ,@FirstArchiveID 
--,@LastArchiveID ,@Month ,@YearMonth
--,@PersonelStateFROM ,@PersonelStateTo ,@EmployTypeIDFROM  ,@EmployTypeIDTo ) AS MakeDocuments_PayMent_2 

----)abced


--)
--GO
--SET QUOTED_IDENTIFIER OFF 
--GO
--SET ANSI_NULLS ON 
--GO
----------------------------------------------------------------------
----------------------------------------------------------------------


----------------------------------------------------------------------
----------------------------------------------------------------------
SET QUOTED_IDENTIFIER ON 
GO
--SET ANSI_NULLS OFF 
GO
CREATE FUNCTION Pay.GetDifferenceDate(@StartDate CHAR(10), @EndDate CHAR(10), @OutputType BIT = 0)
RETURNS NVARCHAR(1000)
AS
BEGIN
	DECLARE @MiladiStartDate DATETIME, @MiladiEndDate DATETIME;
	DECLARE @Y INT, @M INT, @D INT, @Days INT, @Temp INT;
	DECLARE @Result NVARCHAR(1000);
	SET @MiladiStartDate = Pay.ShamsiToMiladi(@StartDate);
	SET @MiladiEndDate = Pay.ShamsiToMiladi(@EndDate);
	
	SET @Days = DATEDIFF(DAY, @MiladiStartDate, @MiladiEndDate)
	
	SET @Result = STR(@Days) 
	
	IF(@OutputType = 1)
	BEGIN
		SET @Y = @Days / 365;

		SET @Temp = @Days % 365
		SET @M = @Temp / 30;
		SET @D = @Temp % 30;
		SET @Result = ltrim(STR(@Y)) + 'سال و' + ltrim(STR(@M)) + 'ماه و' + ltrim(STR(@D)) + 'روز'  
		--اسپیس نداشته باشه تا چیدمان بهم نریزد
	END
	RETURN @Result 
END



GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
----------------------------------------------------------------------
SET QUOTED_IDENTIFIER ON 
GO
--SET ANSI_NULLS OFF 
GO
CREATE FUNCTION Pay.OffTimeListCurent

			(	@MounthFrom int =1, @MounthTo int=12,
				@infoidFrom int=0 ,@infoidTO int=999999,
				@PersonelNoForm int=0,@PersonelNoTo int=999999999 )  

RETURNS  table  AS 
Return  (

SELECT 	3 as kind , PersonelNo , decextid,  firstmounth+.1 as mounth, '' as name, infoname_l1, 
		infoname_l2 , - 1 * addtype as addtype, addtype as duration, 
		0.0 as durationmounth, enddate, startdate, requestdate, 0.0 as allday , note_l1 , FormInfoID , InfoID 
FROM 
	(
		SELECT	personeldecext.decextid, Pay.PersonelDecExt.PersonelNo ,personeldecext.firstmounth, FormsInfo_1.infoname_l1, FormsInfo_1.infoname_l2 ,
				ROUND(
						(
						case Pay.PersonelDecExt.firstmounth 
							when 0 then ISNULL(personeldecext.dayquntity, 0) 
							else 1 * ISNULL(personeldecext.dayquntity, 0) 
						end
						) 
                 + ROUND(
							case Pay.PersonelDecExt.firstmounth 
								when 0 then Pay.PersonelDecExt.daytime 
									else 1 * Pay.PersonelDecExt.daytime 
							end
							+ 
							case Pay.PersonelDecExt.firstmounth 
								when 0 then Pay.PersonelDecExt.minute_ 
								else 1 * Pay.PersonelDecExt.minute_ 
							end
							/ 60 , 2) 
						/  

					formsinfo_1.amount , 2) as addtype, 

			aiddate2 as startdate, enddate, aiddate1 as requestdate,personeldecext.note_l1 , FormsInfo_1.FormInfoID , FormsInfo_1.InfoID 
from	personeldecext  left outer join
		 Pay.FormsInfo as FormsInfo_1 on Pay.PersonelDecExt.forminfoid = FormsInfo_1.forminfoid
where	(formsinfo_1.formtype = 16) and 
		(formsinfo_1.infoid between @infoidFrom and @infoidTO ) and 
		(personeldecext.personelno between @PersonelNoForm  and  @PersonelNoTo) ANd 
		(personeldecext.firstmounth between @MounthFrom  and @Mounthto ) 

) as abcd
	
)
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
--------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------
SET QUOTED_IDENTIFIER ON 
GO
--SET ANSI_NULLS OFF 
GO
CREATE FUNCTION Pay.OffTimeList

			(	@MounthFrom int =1, @MounthTo int=12,
				@infoidFrom int=0 ,@infoidTO int=999999,
				@PersonelNoForm int=0,@PersonelNoTo int=999999999 )  

RETURNS  table  AS 
Return  (

-----------------------------------   مرخصی ابتدای سال 
SELECT	1 as Kind ,personeldecext.PersonelNo ,personeldecext.decextid, Pay.PersonelDecExt.firstmounth as mounth, 'مانده ابتداي سال' as name, 
		formsinfo_1.infoname_l1, FormsInfo_1.infoname_l2 ,
		ROUND(ROUND(ISNULL(personeldecext.dayquntity, 0) + 
				ROUND(personeldecext.daytime + Pay.PersonelDecExt.minute_ / 60, 3) / FormsInfo_1.amount , 3), 3) as addtype, 
		0.0 as duration, 0.0 as durationmounth, '' as enddate, '' as startdate, '' as requestdate, 0.0 as allday ,
		personeldecext.note_l1 , FormsInfo_1.FormInfoID , FormsInfo_1.InfoID 
FROM	personeldecext left outer join
		 Pay.FormsInfo as FormsInfo_1 on Pay.PersonelDecExt.forminfoid = FormsInfo_1.forminfoid
where	(formsinfo_1.formtype = 16) and 
		(formsinfo_1.infoid between @infoidFrom and @infoidTO ) and 
		(personeldecext.firstmounth = 0) and 
		(personeldecext.personelno between @PersonelNoForm  and  @PersonelNoTo )

------------------------
union all
-----------------------------------   مرخصی تحقق یافته 

SELECT	2 as kind ,functions.PersonelNo , 0 as decextid, Pay.Functions.mounth, standardtimes.infoname_l1, Pay.FormsInfo.infoname_l1 + ' تحقق 0يافته '  as infoname_l1, 
		formsinfo.infoname_l2 + ' تحقق 0يافته '  as infoname_l2, 
		Pay.getleave (functions.personelno , Pay.Functions.mounth , Pay.Functions.mounth ,formsinfo.forminfoid) as addtype , 
		0.0 as duration, 0.0 as durationmounth, '' as enddate, '' as startdate, ltrim(str(functions.mounth)) as requestdate, 
		0.0 as allday ,'' as note_l1 , Pay.FormsInfo.FormInfoID , Pay.FormsInfo.InfoID 
FROM	 Pay.FormsInfo cross join
		functions inner join
		standardtimes on Pay.Functions.mounth = standardtimes.infoid
where	(formsinfo.formtype = 16) and 
		(formsinfo.infoid between @infoidFrom and @infoidTO ) and 
		(functions.personelno between @PersonelNoForm  and  @PersonelNoTo) and 
		(functions.mounth  between @MounthFrom  and @MounthTo ) --AND (Pay.Functions.YearID = left(@YearMounth,4) ) 
GROUP BY Pay.Functions.mounth, Pay.FormsInfo.standarddays, standardtimes.infoname_l1, Pay.FormsInfo.infoname_l1,
		standardtimes.standarddays,functions.personelno,formsinfo.forminfoid , Pay.FormsInfo.InfoID  ,formsinfo.infoname_l2

--------------------------
UNION ALL
-----------------------------------   مرخصی استفاده شده 

SELECT 	*
FROM   OffTimeListCurent (	@MounthFrom , @MounthTo ,@infoidFrom  ,@infoidTO ,@PersonelNoForm ,@PersonelNoTo  ) 
	

	
)
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
--------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------

SET QUOTED_IDENTIFIER ON 
GO
--SET ANSI_NULLS OFF 
GO
CREATE FUNCTION Pay.[GETRemainedOffTime] ( 
		@InfoIDFROM int=1 , @InfoIDTo int=1 , 
		@PersonelNoFROM int=-2147483647 , @PersonelNoTo int=2147483647 ,
		@DecExtID int = 0  ) 
RETURNS table AS  
return
( 

SELECT PersonelNo,SUM(AddType) AS Remained
FROM   (
		SELECT * from pay.OffTimeList (	1, 12,	@InfoIDFROM ,@InfoIDTo,
				@PersonelNoFROM  ,@PersonelNoTo   )  OffTimeList
			 
		)TotalOffTime
Where decextid<> @DecExtID
GROUP BY PersonelNo
)
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
--------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------

----------------------------------------------------------------------
SET QUOTED_IDENTIFIER ON 
GO
--SET ANSI_NULLS OFF 
GO
CREATE FUNCTION Pay.[GETOffTimeInFish]
  ( @Mounth int=13, @InfoIDFROM int=0 , @InfoIDTo int=999999999 , @PersonelNo int , @OffTimeInFish int) 
RETURNS table AS  
return
( 
--0-نمايش نشود
--1-نمايش شـود
--2-مانده ابتدای سال نمایش شود
--3-مرخصی سال جاری با مانده ابتداي سال جمع و نمايش شـود
--4-مرخصی سال جاری و مانده ابتداي سال مجزا نمايش شـوند
--5-مرخصي استفاده شده ماه جاري نمايش شـود
--6-مرخصی به تفکیک نوع نمایش شود
--7-مانده مرخصی با مانده ابتدای سال جمع شود


SELECT FormInfoID as salaryid  , 'مانده مرخصی' as infoname_l1 ,'' as infoname_l2 , SUM(AddType) AS RemainDay
FROM   (
		SELECT * from pay.OffTimeList (	1, @Mounth,	@InfoIDFROM ,@InfoIDTo,
				@PersonelNo  ,@PersonelNo   )  OffTimeList
			 
		)TotalOffTime
WHERE (infoid = 1) AND (@OffTimeInFish in(1,2,3,4 ,8 ,6,7))  
GROUP BY FormInfoID 
----------------------------
Union all 
----------------------------

SELECT FormInfoID as salaryid  , 'مرخصی استفاده شده' as infoname_l1 ,'' as infoname_l2 , SUM(AddType) AS RemainDay
FROM   (
		SELECT * from pay.OffTimeList (	@Mounth, @Mounth,	@InfoIDFROM ,@InfoIDTo,
				@PersonelNo  ,@PersonelNo   )  OffTimeList
			 
		)TotalOffTime
WHERE (infoid = 1) AND (kind = 3) AND (@OffTimeInFish in(5,8))

GROUP BY FormInfoID  
----------------------------
Union all 
----------------------------

SELECT        salaryid, infoname_l1, infoname_l2, FunctionDay
FROM            (SELECT        0 AS salaryid, 'مرخصی تحقق یافته ماه جاری' AS infoname_l1, '' AS infoname_l2,
                                                        (SELECT        StandardDays
                                                           FROM            Pay.FormsInfo
                                                           WHERE        (@OffTimeInFish = 5) AND (FormType = 16) AND (InfoID = 1)) * SUM(FunctionDay) / 365 AS FunctionDay
                           FROM            Pay.Functions
                           WHERE        (@OffTimeInFish = 5) AND (PersonelNo = @PersonelNo) AND (Mounth = @Mounth)) AS a
WHERE        (@OffTimeInFish = 5)

----------------------------
Union all 
----------------------------

SELECT FormInfoID as salaryid  ,case when kind =1 then ' ابتدای سال  '  else '' end + infoname_l1 , infoname_l2 ,sum (AddType) AS RemainDay
FROM   (
		SELECT * from pay.OffTimeList (	0, @Mounth,	@InfoIDFROM ,@InfoIDTo,
				@PersonelNo  ,@PersonelNo   )  OffTimeList
			 
		)TotalOffTime
WHERE  (@OffTimeInFish in(9))  

GROUP BY  FormInfoID   ,  infoname_l1 , infoname_l2,kind
having sum (AddType)<>0

----------------------------
Union all 
----------------------------

SELECT max(FormInfoID) as salaryid  ,'  مانده  '+max(infoname_l1) , max(infoname_l2) ,sum (AddType) AS RemainDay
FROM   (
		SELECT * from pay.OffTimeList (	0, @Mounth,	@InfoIDFROM ,@InfoIDTo,
				@PersonelNo  ,@PersonelNo   )  OffTimeList
			 
		)TotalOffTime
WHERE  (@OffTimeInFish in(9))  

GROUP BY   kind
having sum (AddType)<>0

)

--RETURNS  
--@ReturnTable TABLE  
--( 
--    -- Add the column definitions for the TABLE variable here 
--    SalaryID int ,InfoName_L1 varchar(300) COLLATE DATABASE_DEFAULT ,
--                  InfoName_L2 varchar(300) COLLATE DATABASE_DEFAULT, RemainDay float
--) 
--AS 
--BEGIN 
  
--  If @OffTimeInFish  IN (1,2,4,5,7)--= 1 OR @OffTimeInFish = 2 OR @OffTimeInFish = 4 OR @OffTimeInFish = 5 OR @OffTimeInFish = 7
--  begin

--If  @OffTimeInFish IN (4,5,7)
--  begin
--    Insert Into @ReturnTable 
--	SELECT     Pay.PersonelDecExt.FormInfoID, /*FormsInfo.InfoName_L1 +*/'مرخصي استفاده شده ماه جاري', Pay.FormsInfo.InfoName_L2, 
--						  ROUND(SUM((CASE Pay.PersonelDecExt.FirstMounth WHEN 0 THEN ISNULL(PersonelDecExt.DayQuntity,0) ELSE - 1 * ISNULL(PersonelDecExt.DayQuntity,0) END)) 
--						  + ROUND(SUM((CASE Pay.PersonelDecExt.FirstMounth WHEN 0 THEN Pay.PersonelDecExt.DayTime ELSE - 1 * Pay.PersonelDecExt.DayTime END)) 
--						  + SUM((CASE Pay.PersonelDecExt.FirstMounth WHEN 0 THEN Pay.PersonelDecExt.Minute_ ELSE - 1 * Pay.PersonelDecExt.Minute_ END)) / 60, 2) / Pay.FormsInfo.Amount, 2) AS RemainDay
--	FROM         Pay.PersonelDecExt INNER JOIN
--						   Pay.FormsInfo ON Pay.PersonelDecExt.FormInfoID = Pay.FormsInfo.FormInfoID
--	WHERE     (PersonelDecExt.FirstMounth = @Mounth) 
--	  AND (FormsInfo.FormType = 16)  
--	  AND (FormsInfo.InfoID BETWEEN @InfoIDFROM AND @InfoIDTo) 
--	  AND (PersonelDecExt.PersonelNo = @PersonelNo)
--	  AND (FormsInfo.PayMentActive = 1)
--	GROUP BY Pay.PersonelDecExt.FormInfoID, Pay.PersonelDecExt.PersonelNo, Pay.FormsInfo.StandardDays, Pay.FormsInfo.InfoName_L1, Pay.FormsInfo.InfoName_L2,FormsInfo.Amount
--  END	
  
--If  @OffTimeInFish IN (4 ,7)
--    Insert Into @ReturnTable 

--	SELECT   Pay.PersonelDecExt.FormInfoID, /* Pay.FormsInfo.InfoName_L1*/'مانده مرخصي',FormsInfo.InfoName_L2, 
--	   ROUND (
--	   Pay.GetLeave (PersonelDecExt.PersonelNo ,1,@Mounth  ,PersonelDecExt.FormInfoID)
--	   --(SELECT     Pay.FormsInfo.StandardDays * SUM(FunctionDay) / 365 AS FunctionDay
--				--  FROM          Pay.Functions
--				--  WHERE      (PersonelNo = Pay.PersonelDecExt.PersonelNo)
--				--  and Mounth<=@Mounth)
				   
--	  + ROUND(SUM((CASE Pay.PersonelDecExt.FirstMounth WHEN 0 THEN ISNULL(PersonelDecExt.DayQuntity,0) ELSE - 1 * ISNULL(PersonelDecExt.DayQuntity,0) END)) 
--	  + ROUND(SUM((CASE Pay.PersonelDecExt.FirstMounth WHEN 0 THEN Pay.PersonelDecExt.DayTime ELSE - 1 * Pay.PersonelDecExt.DayTime END)) 
--	  + SUM((CASE Pay.PersonelDecExt.FirstMounth WHEN 0 THEN Pay.PersonelDecExt.Minute_ ELSE - 1 * Pay.PersonelDecExt.Minute_ END)) / 60, 2) / Pay.FormsInfo.Amount, 2), 2) AS RemainDay
--	FROM         Pay.PersonelDecExt INNER JOIN
--	   Pay.FormsInfo ON Pay.PersonelDecExt.FormInfoID = Pay.FormsInfo.FormInfoID
--	WHERE (PersonelDecExt.FirstMounth BETWEEN CASE @OffTimeInFish WHEN 4 THEN 1 ELSE 0 END  AND @Mounth) 
--	  AND (FormsInfo.FormType = 16) 
--	  AND (FormsInfo.InfoID BETWEEN @InfoIDFROM AND @InfoIDTo)
--	  AND (PersonelDecExt.PersonelNo = @PersonelNo)
--	  AND (FormsInfo.PayMentActive = 1)
--	GROUP BY Pay.PersonelDecExt.FormInfoID, Pay.PersonelDecExt.PersonelNo, Pay.FormsInfo.StandardDays, Pay.FormsInfo.InfoName_L1,FormsInfo.InfoName_L2,FormsInfo.Amount
	
        
--  END      
  
--  If  @OffTimeInFish IN( 2 , 4)
--  begin

--    Insert Into @ReturnTable 

--	SELECT     Pay.PersonelDecExt.FormInfoID, /* Pay.FormsInfo.InfoName_L1 +*/'ذخيره مرخصي سنوات قبل' ,FormsInfo.InfoName_L2, 
--    SUM( ROUND(ISNULL(PersonelDecExt.DayQuntity,0)+ROUND( Pay.PersonelDecExt.DayTime+ ROUND(PersonelDecExt.Minute_  / 60, 2) / Pay.FormsInfo.Amount, 2), 2))
--    FROM         Pay.PersonelDecExt INNER JOIN
--                       Pay.FormsInfo ON Pay.PersonelDecExt.FormInfoID = Pay.FormsInfo.FormInfoID
--    WHERE (PersonelDecExt.FirstMounth = 0) 
--	  AND (FormsInfo.FormType = 16) 
--	  AND (FormsInfo.InfoID BETWEEN @InfoIDFROM AND @InfoIDTo)
--	  AND (PersonelDecExt.PersonelNo = @PersonelNo)
--	  AND (FormsInfo.PayMentActive = 1)
--	GROUP BY Pay.PersonelDecExt.FormInfoID, Pay.PersonelDecExt.PersonelNo, Pay.FormsInfo.StandardDays, Pay.FormsInfo.InfoName_L1,FormsInfo.InfoName_L2,FormsInfo.Amount
       
--  END 
       

--  If @OffTimeInFish = 3 
--  begin

--    Insert Into @ReturnTable 

--    	SELECT    Pay.PersonelDecExt.FormInfoID,/* Pay.FormsInfo.InfoName_L1 +*/'مانده مرخصي',  Pay.FormsInfo.InfoName_L2,
--		   ROUND (
--	          --     Pay.GetLeave (PersonelDecExt.PersonelNo ,1 ,@Mounth ,PersonelDecExt.FormInfoID)
		   
--		   (SELECT     Pay.FormsInfo.StandardDays * SUM(FunctionDay) / 365 AS FunctionDay
--					 FROM          Pay.Functions
--					 WHERE      (PersonelNo = Pay.PersonelDecExt.PersonelNo)
--					 and (Mounth<=@Mounth)---add by aghaye.rezaei
--					  ) 

--			+ ROUND(SUM((CASE Pay.PersonelDecExt.FirstMounth WHEN 0 THEN ISNULL(PersonelDecExt.DayQuntity,0) ELSE - 1 * ISNULL(PersonelDecExt.DayQuntity,0) END)) 
--			+ ROUND(SUM((CASE Pay.PersonelDecExt.FirstMounth WHEN 0 THEN Pay.PersonelDecExt.DayTime ELSE - 1 * Pay.PersonelDecExt.DayTime END)) 
--			+ SUM((CASE Pay.PersonelDecExt.FirstMounth WHEN 0 THEN Pay.PersonelDecExt.Minute_ ELSE - 1 * Pay.PersonelDecExt.Minute_ END)) / 60, 2) / Pay.FormsInfo.Amount, 2), 2) AS RemainDay
--		FROM  Pay.PersonelDecExt INNER JOIN
--			   Pay.FormsInfo ON Pay.PersonelDecExt.FormInfoID = Pay.FormsInfo.FormInfoID
--		WHERE (PersonelDecExt.FirstMounth BETWEEN 0 AND @Mounth) 
--		  AND (FormsInfo.FormType = 16) 
--		  AND (FormsInfo.InfoID BETWEEN @InfoIDFROM AND @InfoIDTo)
--    	  AND (PersonelDecExt.PersonelNo = @PersonelNo)
--     	  AND (FormsInfo.PayMentActive = 1)
--		GROUP BY Pay.PersonelDecExt.FormInfoID, Pay.PersonelDecExt.PersonelNo, Pay.FormsInfo.StandardDays, Pay.FormsInfo.InfoName_L1,FormsInfo.InfoName_L2,FormsInfo.Amount
--  END
------Sheikh 2015/08/04
--  ----Sheikh 2015/08/04
--  If @OffTimeInFish = 6 
--  BEGIN
--      Insert Into @ReturnTable 
--  	SELECT     Pay.PersonelDecExt.FormInfoID, 'مرخصی '+FormsInfo.InfoName_L1+ ' استفاده شده ماه جاري', Pay.FormsInfo.InfoName_L2, 
--						  ROUND(SUM((CASE Pay.PersonelDecExt.FirstMounth WHEN 0 THEN ISNULL(PersonelDecExt.DayQuntity,0) ELSE - 1 * ISNULL(PersonelDecExt.DayQuntity,0) END)) 
--						  + ROUND(SUM((CASE Pay.PersonelDecExt.FirstMounth WHEN 0 THEN Pay.PersonelDecExt.DayTime ELSE - 1 * Pay.PersonelDecExt.DayTime END)) 
--						  + SUM((CASE Pay.PersonelDecExt.FirstMounth WHEN 0 THEN Pay.PersonelDecExt.Minute_ ELSE - 1 * Pay.PersonelDecExt.Minute_ END)) / 60, 2) / Pay.FormsInfo.Amount, 2) AS RemainDay
--	FROM         Pay.PersonelDecExt INNER JOIN
--						   Pay.FormsInfo ON Pay.PersonelDecExt.FormInfoID = Pay.FormsInfo.FormInfoID
--	WHERE     (PersonelDecExt.FirstMounth = @Mounth)
--	      AND (FormsInfo.FormType = 16)
--	      AND (FormsInfo.InfoID BETWEEN @InfoIDFROM AND @InfoIDTo)
--	      AND (PersonelDecExt.PersonelNo = @PersonelNo)
--	      AND (FormsInfo.PayMentActive = 1)
--	GROUP BY Pay.PersonelDecExt.FormInfoID, Pay.PersonelDecExt.PersonelNo, Pay.FormsInfo.StandardDays, Pay.FormsInfo.InfoName_L1, Pay.FormsInfo.InfoName_L2,FormsInfo.Amount
--	--
--    INSERT INTO @ReturnTable 

--	SELECT    Pay.PersonelDecExt.FormInfoID,'مانده مرخصي '+ Pay.FormsInfo.InfoName_L1,  Pay.FormsInfo.InfoName_L2,
--	   ROUND (
--	   Pay.GetLeave (PersonelDecExt.PersonelNo ,1,@Mounth  ,PersonelDecExt.FormInfoID)
	   
--	   --(SELECT     Pay.FormsInfo.StandardDays * SUM(FunctionDay) / 365 AS FunctionDay
--				-- FROM          Pay.Functions
--				-- WHERE      (PersonelNo = Pay.PersonelDecExt.PersonelNo)
--				-- AND (Mounth<= @Mounth)
--				--  ) 
--		+ ROUND(SUM((CASE Pay.PersonelDecExt.FirstMounth WHEN 0 THEN ISNULL(PersonelDecExt.DayQuntity,0) ELSE - 1 * ISNULL(PersonelDecExt.DayQuntity,0) END)) 
--		+ ROUND(SUM((CASE Pay.PersonelDecExt.FirstMounth WHEN 0 THEN Pay.PersonelDecExt.DayTime ELSE - 1 * Pay.PersonelDecExt.DayTime END)) 
--		+ SUM((CASE Pay.PersonelDecExt.FirstMounth WHEN 0 THEN Pay.PersonelDecExt.Minute_ ELSE - 1 * Pay.PersonelDecExt.Minute_ END)) / 60, 2) / Pay.FormsInfo.Amount, 2), 2) AS RemainDay
--	FROM  Pay.PersonelDecExt INNER JOIN
--		   Pay.FormsInfo ON Pay.PersonelDecExt.FormInfoID = Pay.FormsInfo.FormInfoID
--	WHERE (PersonelDecExt.FirstMounth BETWEEN 0 AND @Mounth) 
--	  AND (FormsInfo.FormType = 16) 
--	  AND (FormsInfo.InfoID BETWEEN @InfoIDFROM AND @InfoIDTo)
--	  AND (PersonelDecExt.PersonelNo = @PersonelNo)
--      AND (FormsInfo.PayMentActive = 1)
--	GROUP BY Pay.PersonelDecExt.FormInfoID, Pay.PersonelDecExt.PersonelNo, Pay.FormsInfo.StandardDays, Pay.FormsInfo.InfoName_L1,FormsInfo.InfoName_L2,FormsInfo.Amount
----
--    Insert Into @ReturnTable 

--	SELECT     Pay.PersonelDecExt.FormInfoID, 'ذخيره مرخصي '+ Pay.FormsInfo.InfoName_L1 +' سنوات قبل' ,FormsInfo.InfoName_L2, 
--    SUM( ROUND(ISNULL(PersonelDecExt.DayQuntity,0)+ROUND( Pay.PersonelDecExt.DayTime+ ROUND(PersonelDecExt.Minute_  / 60, 2) / Pay.FormsInfo.Amount, 2), 2))
--    FROM         Pay.PersonelDecExt INNER JOIN
--                       Pay.FormsInfo ON Pay.PersonelDecExt.FormInfoID = Pay.FormsInfo.FormInfoID
--    WHERE (PersonelDecExt.FirstMounth = 0) 
--	  AND (FormsInfo.FormType = 16) 
--	  AND (FormsInfo.InfoID BETWEEN @InfoIDFROM AND @InfoIDTo)
--	  AND (PersonelDecExt.PersonelNo = @PersonelNo)
--      AND (FormsInfo.PayMentActive = 1)
--	GROUP BY Pay.PersonelDecExt.FormInfoID, Pay.PersonelDecExt.PersonelNo, Pay.FormsInfo.StandardDays, Pay.FormsInfo.InfoName_L1,FormsInfo.InfoName_L2,FormsInfo.Amount	
--  END	

--    RETURN  

--END
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
----------------------------------------------------------------------
----------------------------------------------------------------------
----------------------------------------------------------------------
SET QUOTED_IDENTIFIER ON 
GO
--SET ANSI_NULLS OFF 
GO
CREATE FUNCTION Pay.GETOffTimeInFish2Function
  ( @Mounth int=12, @InfoIDFROM int=1 , @InfoIDTo int=1 , @OffTimeInFish int=3) 
RETURNS table AS  
return
(SELECT PersonelNo,
        (SELECT RemainDay
          FROM Pay.GETOffTimeInFish(@Mounth, @InfoIDFROM, @InfoIDTo, Pay.PersonelInfo.PersonelNo, @OffTimeInFish) AS GETOffTimeInFish_1
		  ) AS RemainDay
FROM            Pay.PersonelInfo
)
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
----------------------------------------------------------------------
----------------------------------------------------------------------
SET QUOTED_IDENTIFIER ON 
GO
--SET ANSI_NULLS OFF 
GO
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
----------------------------------------------------------------------
----------------------------------------------------------------------
SET QUOTED_IDENTIFIER ON 
GO
--SET ANSI_NULLS OFF 
GO
CREATE FUNCTION Pay.FunctionsSUM(	@Mounth2FROM  int, @Mounth2To  int	,@YearIDFrom  int=1402,@YearIDTo  int=1402)
RETURNS Table AS 
return 
(
SELECT PersonelNo, SUM(FunctionDay) AS SumFunctionDay, SUM(FunctionTime) AS SumFunctionTime,SUM(SickDay)  AS SumSickDay 
FROM         Pay.Functions 
WHERE     (Mounth BETWEEN @Mounth2FROM AND @Mounth2To)And (YearID between @YearIDFrom  and @YearIDTo   )
GROUP BY PersonelNo	
)
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
----------------------------------------------------------------------
----------------------------------------------------------------------
SET QUOTED_IDENTIFIER ON 
GO
--SET ANSI_NULLS OFF 
GO
CREATE FUNCTION Pay.RemainDayDec (@RemainDay float) 
RETURNS varchar(100) 
BEGIN
  DECLARE @day int 
  DECLARE @hour int  
  DECLARE @minute int
  DECLARE @RemainDayN int

  DECLARE @DayHour int  
  SELECT @DayHour=Amount FROM  Pay.FormsInfo WHERE (FormType=16)AND(infoid = 1)

  
--  SET @day =(CASE WHEN @RemainDay<0 THEN -1 ELSE 1 END) * FLOOR(abs(@RemainDay))
  SET @day =CAST(@RemainDay AS INT)
  SET @RemainDay = @RemainDay - @day
  SET @RemainDayN =ROUND( @RemainDay * 60 * @DayHour,0)
  SET @minute =@RemainDayN % 60
  SET @hour =@RemainDayN / 60
  RETURN (ltrim(str(@day))+'روز و'+ltrim(str(@hour))+'ساعت و '+ltrim(str(@minute))+'دقيقه')
END
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
----------------------------------------------------------------------
----------------------------------------------------------------------
SET QUOTED_IDENTIFIER ON 
GO
--SET ANSI_NULLS OFF 
GO
CREATE FUNCTION Pay.[ShamsiToMiladi](@DateStr varchar(10))
RETURNS DATETIME
AS  
BEGIN 
   declare @YYear int
   declare @MMonth int
   declare @DDay int
   declare @epbase int
   declare @epyear int
   declare @mdays int
   declare @persian_jdn int
   declare @i int
   declare @j int
   declare @l int
   declare @n int
   declare @TMPRESULT varchar(10)
   declare @IsValideDate int
   declare @TempStr varchar(20)
   DECLARE @TmpDateStr varchar(10)

   SET @i=charindex('/',@DateStr)

   IF LEN(@DateStr) - CHARINDEX('/', @DateStr,CHARINDEX('/', @DateStr,1)+1) = 4
   BEGIN
     SET @TmpDateStr = Pay.ReversDate(@DateStr)
     IF ( ISDATE(@TmpDateStr) =1 )  
       RETURN @TmpDateStr
     ELSE
        RETURN NULL
   END
   ELSE
     SET @TmpDateStr = @DateStr

   IF ((@i<>0) and
        
        (ISNUMERIC(REPLACE(@TmpDateStr,'/',''))=1) and 
        (charindex('.',@TmpDateStr)=0)
       )
   BEGIN
	   SET @YYear=CAST(SUBSTRING(@TmpDateStr,1,@i-1) AS INT)
                IF ( @YYear< 1300 )
                      SET @YYear =@YYear + 1300
                IF @YYear > 9999
                  RETURN NULL
	
	   SET @TempStr= SUBSTRING(@TmpDateStr,@i+1,Len(@TmpDateStr))
	
	   SET @i=charindex('/',@TempStr)
	   SET @MMonth=CAST(SUBSTRING(@TempStr,1,@i-1) AS INT)
	   SET @MMonth=@MMonth-- -1
	   
	   SET @TempStr= SUBSTRING(@TempStr,@i+1,Len(@TempStr))   
	
	   SET @DDay=CAST(@TempStr AS INT)
	   SET @DDay=@DDay-- - 1
	       
                 IF ( @YYear >= 0 )
                     SET @epbase = @YYear - 474
                 Else
                     SET @epbase = @YYear - 473
                 SET @epyear = 474 + (@epbase % 2820)

	    IF (@MMonth <= 7 )
                       SET @mdays = ((@MMonth) - 1) * 31
	    Else
	        SET @mdays = ((@MMonth) - 1) * 30 + 6

	    SET @persian_jdn =(@DDay)  + @mdays + CAST((((@epyear * 682) - 110) / 2816) AS int)  + (@epyear - 1) * 365  +  CAST((@epbase / 2820)  AS int ) * 1029983  + (1948321 - 1)



	    IF (@persian_jdn > 2299160) 
                 BEGIN
	        SET @l = @persian_jdn + 68569
	        SET @n = CAST(((4 * @l) / 146097) AS int)
	        SET @l = @l -  CAST(((146097 * @n + 3) / 4) AS int)
	        SET @i =  CAST(((4000 * (@l + 1)) / 1461001) AS int)
	        SET @l = @l - CAST( ((1461 * @i) / 4) AS int) + 31
	        SET @j =  CAST(((80 * @l) / 2447) AS int)
	        SET @DDay = @l - CAST( ((2447 * @j) / 80) AS int)
	         SET @l =  CAST((@j / 11) AS int)
	        SET @MMonth = @j + 2 - 12 * @l
	        SET @YYear = 100 * (@n - 49) + @i + @l
                 END

           SET @TMPRESULT=Cast(@MMonth AS varchar(2))+'/'+CAST(@DDay AS Varchar(2))+'/'+CAST(@YYear AS varchar(4))  
           RETURN Cast(@TMPRESULT AS Datetime)

    END
    RETURN NULL      

END
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
----------------------------------------------------------------------
----------------------------------------------------------------------
----------------------------------------------------------------------
----------------------------------------------------------------------
--SET QUOTED_IDENTIFIER ON 
--GO
----SET ANSI_NULLS OFF 
--GO
--CREATE FUNCTION Pay.[MiladiTOShamsi] (@MDate  DateTime)  
--RETURNS Varchar(10)
--AS  
--BEGIN 
--   DECLARE @SYear  AS Integer
--   DECLARE @SMonth  AS Integer
--   DECLARE @SDay  AS Integer
--   DECLARE @AllDays  AS float
--   DECLARE @ShiftDays  AS float
--   DECLARE @OneYear  AS float
--   DECLARE @LeftDays  AS float
--   DECLARE @YearDay  AS Integer
--   DECLARE @Farsi_Date  AS Varchar(100) 
--   SET @MDate=@MDate-CONVERT(char,@MDate,114)

--  SET @ShiftDays=466699   +2
--  SET @OneYear= 365.24199


--   SET @SYear = 0
--   SET @SMonth = 0
--   SET @SDay = 0
--   SET @AllDays  = CAst(@Mdate AS Real)

--   SET @AllDays = @AllDays + @ShiftDays

--  SET @SYear = (@AllDays / @OneYear) --trunc
--  SET @LeftDays = @AllDays - @SYear * @OneYear

--  if (@LeftDays < 0.5)
--  begin
--    SET @SYear=@SYear+1
--    SET @LeftDays = @AllDays - @SYear * @OneYear
--  END;

--  SET @YearDay = @LeftDays --trunc
--  if (@LeftDays - @YearDay) >= 0.5 
--    SET @YearDay=@YearDay+1

--  if ((@YearDay / 31) > 6 )
--  begin
--    SET @SMonth = 6
--    SET @YearDay=@YearDay-(6 * 31)
--    SET @SMonth= @SMonth+( @YearDay / 30)
--    if (@YearDay % 30) <> 0 
--      SET @SMonth=@SMonth+1
--    SET @YearDay=@YearDay-((@SMonth - 7) * 30)
--  END 
--  else
--  begin
--    SET @SMonth = @YearDay / 31
--    if (@YearDay % 31) <> 0 
--      SET @SMonth=@SMonth+1 
--    SET @YearDay=@YearDay-((@SMonth - 1) * 31)
--  END
--  SET @SDay = @YearDay
--  SET @SYear=@SYear+1

-- SET @Farsi_Date =   CAST (@SYear   AS VarChar(10)) + '/' + RIGHT('0'+CAST (@SMonth   AS VarChar(10)),2) + '/' + RIGHT('0'+CAST (@SDay  AS VarChar(10)),2)
-- Return @Farsi_Date
--END

--GO
--SET QUOTED_IDENTIFIER OFF 
--GO
--SET ANSI_NULLS ON 
--GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO
CREATE FUNCTION Pay.[Is_EnLeapYear](@EnYear SMALLINT) RETURNS BIT
BEGIN 
  DECLARE @Result BIT 
  IF ((@EnYear % 4) = 0) AND (((@EnYear % 100) <> 0) OR ((@EnYear % 400) = 0))
    SET @Result = 1
  ELSE 
    SET @Result = 0
  RETURN @Result
END 

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO


CREATE FUNCTION Pay.[MiladiToShamsi](@EnDate DATETIME) RETURNS VARCHAR(10)
BEGIN
		DECLARE @EnYear SMALLINT 
		DECLARE @EnMonth SMALLINT 
		DECLARE @EnDay SMALLINT 
		DECLARE @I SMALLINT 
		DECLARE @Days_Of_Year SMALLINT 
		DECLARE @Temp VARCHAR(10)
		DECLARE @M SMALLINT
		DECLARE @En_Month_Days TABLE(ID SMALLINT IDENTITY(1,1),DayCount SMALLINT)
		INSERT INTO @En_Month_Days(DayCount)VALUES(31)
		INSERT INTO @En_Month_Days(DayCount)VALUES(28)
		INSERT INTO @En_Month_Days(DayCount)VALUES(31)
		INSERT INTO @En_Month_Days(DayCount)VALUES(30)
		INSERT INTO @En_Month_Days(DayCount)VALUES(31)
		INSERT INTO @En_Month_Days(DayCount)VALUES(30)
		INSERT INTO @En_Month_Days(DayCount)VALUES(31)
		INSERT INTO @En_Month_Days(DayCount)VALUES(31)
		INSERT INTO @En_Month_Days(DayCount)VALUES(30)
		INSERT INTO @En_Month_Days(DayCount)VALUES(31)
		INSERT INTO @En_Month_Days(DayCount)VALUES(30)
		INSERT INTO @En_Month_Days(DayCount)VALUES(31)

		SET @EnYear = DATEPART(YYYY,@EnDate)
		SET @EnMonth = DATEPART(MM,@EnDate)
		SET @EnDay = DATEPART(DD,@EnDate)
		SET @Days_Of_Year = 0
		SET @I = 1
--=============================================
--               Special Year
--=============================================
		IF ((@EnYear % 400) = 384)
			SET @M = 1
		ELSE
			SET @M = 0

		SET @EnDay = @EnDay - @M
		IF (@EnDay = 0)
		BEGIN
			SET @EnMonth = @EnMonth - 1
			IF (@EnMonth = 0)
			BEGIN
				SET @EnYear = @EnYear - 1
				SET @EnMonth = 12
				SET @EnDay = (SELECT DayCount FROM @En_Month_Days WHERE ID = @EnMonth)
			END
			ELSE
				SET @EnDay = (SELECT DayCount FROM @En_Month_Days WHERE ID = @EnMonth)
		END
--=============================================
--            Computing Day of Year
--=============================================
		WHILE @I < @EnMonth
		BEGIN 
			SET @Days_Of_Year = @Days_Of_Year + (SELECT DayCount FROM @En_Month_Days WHERE ID = @I)
			SET @I = @I + 1
		END 
		SET @Days_Of_Year = @Days_Of_Year + @EnDay
		IF (((SELECT Pay.[Is_EnLeapYear](@EnYear)) = 1) AND (@EnMonth > 2))
			SET @Days_Of_Year = @Days_Of_Year + 1
--=============================================
--         Computing Month and Day 
--=============================================
		IF (@Days_Of_Year <= 79)  
		BEGIN
			IF (((@EnYear - 1) % 4) = 0)
				SET @Days_Of_Year = @Days_Of_Year + 11
			ELSE
				SET @Days_Of_Year = @Days_Of_Year + 10
			SET @EnYear = @EnYear - 622
    
			IF ((@Days_Of_Year % 30) = 0)
			BEGIN 
				SET @EnMonth = (@Days_Of_Year / 30) + 9
				SET @EnDay = 30
			END 
			ELSE 
			BEGIN 
				SET @EnMonth = (@Days_Of_Year / 30) + 10
				SET @EnDay = @Days_Of_Year % 30
			END 
		END
		ELSE
		BEGIN 
			SET @EnYear = @EnYear - 621
			SET @Days_Of_Year = @Days_Of_Year - 79
			IF (@Days_Of_Year <= 186)
			BEGIN 
				IF ((@Days_Of_Year % 31) = 0)
				BEGIN 
					SET @EnMonth = (@Days_Of_Year / 31)
					SET @EnDay = 31
				END 
				ELSE
				BEGIN 
					SET @EnMonth = (@Days_Of_Year / 31) + 1
					SET @EnDay = (@Days_Of_Year % 31)
				END 
			END 
			ELSE
			BEGIN 
				SET @Days_Of_Year = @Days_Of_Year - 186
				IF ((@Days_Of_Year % 30) = 0)
				BEGIN 
					SET @EnMonth = (@Days_Of_Year / 30) + 6
					SET @EnDay = 30
				END 
				ELSE 
				BEGIN 
					SET @EnMonth = (@Days_Of_Year / 30) + 7
					SET @EnDay = @Days_Of_Year % 30
				END 
			END 
		END 
--=============================================
--               Format Result
--=============================================
		SET @Temp = CAST(@EnYear AS NCHAR(4)) + '/'
		IF (@EnMonth < 10)
			SET @Temp = @Temp + RIGHT('0' + CAST(@EnMonth AS NCHAR(1)),2) + '/'
		ELSE
			SET @Temp = @Temp + CAST(@EnMonth AS NCHAR(2)) + '/'
		IF (@EnDay < 10)
			SET @Temp = @Temp + RIGHT('0' + CAST(@EnDay AS NCHAR(1)),2) + '/'
		ELSE
			SET @Temp = @Temp + CAST(@EnDay AS NCHAR(2)) + '/'
  
		RETURN @Temp 
END

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

----------------------------------------------------------------------
----------------------------------------------------------------------
----------------------------------------------------------------------
----------------------------------------------------------------------
SET QUOTED_IDENTIFIER ON 
GO
--SET ANSI_NULLS OFF 
GO
CREATE PROCEDURE Pay.SpAnalysisSalary
	-- Add the parameters fOR the stORed procedure here
 @BaseParam Varchar(50),
 @AddParam Varchar(3),
 @Filter Varchar(100),
 @MergeCode bit,
 @MergeCaption bit,
 @SqlWhere Varchar(4000)
 
AS
BEGIN

SET NOCOUNT ON;

-- متغيير هاي مربوط به ساخت پرس جو
DECLARE @SqlSELECT varchar(2000)
DECLARE @SqlJoin   varchar(2000)
DECLARE @SqlGroup  varchar(2000)
DECLARE @SqlTopic  varchar(2000)
DECLARE @SqlFinal  varchar(6000) 

-- اين دو متغيير براي سطح قبل و نمايش كل ستونها در نظر گرفته شده 
DECLARE @ALLColums varchar(1000)
DECLARE @ALLCaption varchar(1000)
DECLARE @OldAcc varchar(1000)


--Join متغيير هاي مربوط به 
DECLARE @fldName     varchar(200)
DECLARE @AliasName   varchar(50)
DECLARE @tblName     varchar(250)
DECLARE @TopicName   varchar(200)
Declare @Current     Varchar(50) 
DECLARE @JoinFldName varchar(50)
DECLARE @CaptionName Nvarchar(50)


-- SET Default
SET @SqlSELECT  = '' ; -- WARN = NOT NULL
SET @SqlJoin    = '' ; -- WARN = NOT NULL
SET @SqlGroup   = '' ; -- WARN = NOT NULL
SET @SqlTopic   = '' ; -- WARN = NOT NULL
SET @ALLColums  = '' ; -- WARN = NOT NULL
SET @ALLCaption = '' ; -- WARN = NOT NULL
SET @OldAcc     = '' ; -- WARN = NOT NULL
SET @Current    = RTRIM(LTRIM(@BaseParam +',' + @AddParam))


-- تعريف شده براي بدست آوردن مقدارها مي باشد  CursOR 
-- دقت داشته باشيد از فانكشني براي جدا سازي استفاده شده است 
DECLARE QAnalize CURSOR FOR(
	SELECT TableName,FieldName,AliasName ,JoinFieldName,CaptionName,TopicName
	FROM Util.Analyze  
	WHERE        (TableKind = 3)
	    And (','+@Current+',' LIKE '%,' + LTRIM(STR(ID)) + ',%')  ); 


--Start While	
open QAnalize ;
FETCH FROM QAnalize into @tblName,@fldName,@AliasName ,@JoinFldName ,@CaptionName,@TopicName ;
while @@fetch_status = 0 
begin

	--SET FieldName With TableName 
	IF ((@JoinFldName <> '' ))
		SET @JoinFldName =   ISNULL(@AliasName,@tblName)  + '.' + @JoinFldName


    -- Make SQL TXT
    SET @ALLColums =  'Cast( ' + @fldName +' AS Varchar(10)) +''-''+' + @ALLColums; 
    
	IF ( (@JoinFldName <> '' )  AND  (@TopicName <> '')    )
	begin
		
		SET @SqlGroup      = @SqlGroup   +   'cast( ' +ISNULL(@AliasName,@tblName) + '.' + @TopicName + ' AS nvarchar(100)),' 
		
		SET @ALLCaption    = @ALLCaption +   'cast( ' +ISNULL(@AliasName,@tblName) + '.' + @TopicName + ' AS nvarchar(100)) +''-''+'  ;
		
		IF (@MergeCaption  = 1)
			SET @SqlTopic  =  @SqlTopic  +  'cast( ' +ISNULL(@AliasName,@tblName) + '.' + @TopicName + ' AS nvarchar(100)) AS ''عنوان‏' +  @CaptionName +''',' ; 
	end;

	IF ((@JoinFldName <> '' ) OR  (@JoinFldName <> NULL ) )
		SET @SqlJoin = @tblName + ' ' + ISNULL(@AliasName,'') + ' ON ' + @JoinFldName  + ' = '+ @fldName + ' INNER JOIN '+ Char(13) + @SqlJoin ;

	IF (@MergeCode = 1)
	begin
		SET @SqlSELECT = @SqlSELECT + ' ' + @fldName + ' AS  ''' +  @CaptionName  +''',' ; 
		SET @SqlGroup  = @SqlGroup  + ' ' + @fldName + ' ,' ;
		
	end;			
	FETCH FROM QAnalize into @tblName,@fldName,@AliasName ,@JoinFldName ,@CaptionName,@TopicName ;
end; --End CURSOR

--Free CURSOR
CLOSE QAnalize ;	
DEALLOCATE QAnalize ; 

IF (@SqlJoin <> '')
	SET @SqlJoin   =  'INNER JOIN '+ LEFT (@SqlJoin  , (LEN(@SqlJoin) -  12)) ;
	
-- Remove Last Char
SET @ALLColums     =  LEFT (@ALLColums,  (LEN(@ALLColums) - 5)) ; 
SET @SqlGroup      =  @ALLColums +' , ' +@SqlGroup  ; 
set @SqlGroup =     LEFT (@SqlGroup , (LEN(@SqlGroup) -  1))

IF (@ALLCaption <> '')
Begin
	SET @ALLCaption    =  LEFT (@ALLCaption, (LEN(@ALLCaption) - 5)) ; 
	SET @SqlGroup     =  @ALLCaption + ',' + @SqlGroup
	SET @ALLCaption   =  @ALLCaption+' AS AccName,'
	
end;

IF  (@AddParam  <> '')
begin
    SELECT @OldAcc =  'Cast(' + FieldName +' AS Varchar(20)) +''-''+ '+ @OldAcc      
	FROM Util.Analyze  INNER JOIN SplitString(@BaseParam,',') SP ON SP.part = Util.Analyze.ID 	
	WHERE        (TableKind = 3)  
	--SELECT @OldAcc =  'Cast(' + FieldName +' AS Varchar(20)) +''-''+ '+ @OldAcc      
	--FROM Util.Analyze   
	--WHERE        (TableKind = 3)  And (','+@Current+',' LIKE '%,' + LTRIM(STR(ID)) + ',%')

	SET @OldAcc   =  LEFT (@OldAcc, (LEN(@OldAcc) - 5))  ; 
	
	if (@Filter <> '') 
	begin
		if (@SqlWhere = '')  
			SET @SqlWhere =  ' where '+ @OldAcc +'='''+@Filter+' '''	
		else		
			SET @SqlWhere =  @SqlWhere +' AND '+ @OldAcc +'='''+@Filter+' '''		
	end;	
end;

SET @SqlFinal = ' SELECT  CAST(REPLACE(REPLACE('+@ALLColums+',''-'',''''),'' '','''') AS DECIMAL(38,0)) AS ORdAccCode, '+
                @ALLColums+ ' AS AccCode,' +
                @ALLCaption + @Sqlselect+ @SqlTopic +'  SUM(Price) AS Price' +
				' FROM         Pay.Rpt_Comprasion2() AS Rpt_Comprasion2 '
					   + @SqlJoin  + @SqlWhere + Char(13) +' GROUP BY '+ @SqlGroup 
                + ', CAST(REPLACE(REPLACE('+@ALLColums+',''-'',''''),'' '','''') AS DECIMAL(38,0))' 

DECLARE @AccBank VARCHAR(250)
SET @AccBank = (SELECT AccountDBName FROM Pay.Config)SET @SqlFinal = REPLACE(@SqlFinal , '%W%', @AccBank)
--print @SqlFinal
Exec(@SqlFinal)

END
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
----------------------------------------------------------------------
----------------------------------------------------------------------
SET QUOTED_IDENTIFIER ON 
GO
--SET ANSI_NULLS OFF 
GO
CREATE PROCEDURE Pay.SpAnalysisSalaryActualCosts
	-- Add the parameters fOR the stORed procedure here
 @BaseParam Varchar(50),
 @AddParam Varchar(3),
 @Filter Varchar(100),
 @MergeCode bit,
 @MergeCaption bit,
 @SqlWhere Varchar(4000),
 @PersonelNoFrom int , @PersonelNoTo int ,
 @ProjectIDFrom int , @ProjectIDTo int ,
 @OfficeCodeFrom int , @OfficeCodeTo int ,
 @MounthFrom int , @MounthTo int,
@YearIDFrom  int=1402,@YearIDTo  int=1402

 
AS
BEGIN

SET NOCOUNT ON;

-- متغيير هاي مربوط به ساخت پرس جو
DECLARE @SqlSELECT varchar(2000)
DECLARE @SqlJoin   varchar(2000)
DECLARE @SqlGroup  varchar(2000)
DECLARE @SqlTopic  varchar(2000)
DECLARE @SqlFinal  varchar(6000) 

-- اين دو متغيير براي سطح قبل و نمايش كل ستونها در نظر گرفته شده 
DECLARE @ALLColums varchar(1000)
DECLARE @ALLCaption varchar(1000)
DECLARE @OldAcc varchar(1000)


--Join متغيير هاي مربوط به 
DECLARE @fldName     varchar(200)
DECLARE @AliasName   varchar(50)
DECLARE @tblName     varchar(250)
DECLARE @TopicName   varchar(200)
Declare @Current     Varchar(150) 
DECLARE @JoinFldName varchar(150)
DECLARE @CaptionName Nvarchar(150)


-- SET Default
SET @SqlSELECT  = '' ; -- WARN = NOT NULL
SET @SqlJoin    = '' ; -- WARN = NOT NULL
SET @SqlGroup   = '' ; -- WARN = NOT NULL
SET @SqlTopic   = '' ; -- WARN = NOT NULL
SET @ALLColums  = '' ; -- WARN = NOT NULL
SET @ALLCaption = '' ; -- WARN = NOT NULL
SET @OldAcc     = '' ; -- WARN = NOT NULL
SET @Current    = RTRIM(LTRIM(@BaseParam +',' + @AddParam))


-- تعريف شده براي بدست آوردن مقدارها مي باشد  CursOR 
-- دقت داشته باشيد از فانكشني براي جدا سازي استفاده شده است 
DECLARE QAnalize CURSOR FOR(
	SELECT TableName,FieldName,AliasName ,JoinFieldName,CaptionName,TopicName
	FROM Util.Analyze  
	WHERE        (TableKind = 4)
	    And (','+@Current+',' LIKE '%,' + LTRIM(STR(ID)) + ',%')  ); 


--Start While	
open QAnalize ;
FETCH FROM QAnalize into @tblName,@fldName,@AliasName ,@JoinFldName ,@CaptionName,@TopicName ;
while @@fetch_status = 0 
begin

	--SET FieldName With TableName 
	IF ((@JoinFldName <> '' ))
		SET @JoinFldName =   ISNULL(@AliasName,@tblName)  + '.' + @JoinFldName


    -- Make SQL TXT
    SET @ALLColums =  'Cast( ' + @fldName +' AS Varchar(10)) +''-''+' + @ALLColums; 
    
	IF ( (@JoinFldName <> '' )  AND  (@TopicName <> '')    )
	begin
		
		SET @SqlGroup      = @SqlGroup   +   'cast( ' +ISNULL(@AliasName,@tblName) + '.' + @TopicName + ' AS nvarchar(100)),' 
		
		SET @ALLCaption    = @ALLCaption +   'cast( ' +ISNULL(@AliasName,@tblName) + '.' + @TopicName + ' AS nvarchar(100)) +''-''+'  ;
		
		IF (@MergeCaption  = 1)
			SET @SqlTopic  =  @SqlTopic  +  'cast( ' +ISNULL(@AliasName,@tblName) + '.' + @TopicName + ' AS nvarchar(100)) AS ''عنوان‏' +  @CaptionName +''',' ; 
	end;

	IF ((@JoinFldName <> '' ) OR  (@JoinFldName <> NULL ) )
		SET @SqlJoin = @tblName + ' ' + ISNULL(@AliasName,'') + ' ON ' + @JoinFldName  + ' = '+ @fldName + ' INNER JOIN '+ Char(13) + @SqlJoin ;

	IF (@MergeCode = 1)
	begin
		SET @SqlSELECT = @SqlSELECT + ' ' + @fldName + ' AS  ''' +  @CaptionName  +''',' ; 
		SET @SqlGroup  = @SqlGroup  + ' ' + @fldName + ' ,' ;
		
	end;			
	FETCH FROM QAnalize into @tblName,@fldName,@AliasName ,@JoinFldName ,@CaptionName,@TopicName ;
end; --End CURSOR

--Free CURSOR
CLOSE QAnalize ;	
DEALLOCATE QAnalize ; 

IF (@SqlJoin <> '')
	SET @SqlJoin   =  ' LEFT OUTER JOIN '+ LEFT (@SqlJoin  , (LEN(@SqlJoin) -  12)) ;   ----INNER JOIN >>> LEFT OUTER JOIN
	
-- Remove Last Char
SET @ALLColums     =  LEFT (@ALLColums,  (LEN(@ALLColums) - 5)) ; 
SET @SqlGroup      =  @ALLColums +' , ' +@SqlGroup  ; 
set @SqlGroup =     LEFT (@SqlGroup , (LEN(@SqlGroup) -  1))

IF (@ALLCaption <> '')
Begin
	SET @ALLCaption    =  LEFT (@ALLCaption, (LEN(@ALLCaption) - 5)) ; 
	SET @SqlGroup     =  @ALLCaption + ',' + @SqlGroup
	SET @ALLCaption   =  @ALLCaption+' AS AccName,'
	
end;

IF  (@AddParam  <> '')
begin
    SELECT @OldAcc =  'Cast(' + FieldName +' AS Varchar(20)) +''-''+ '+ @OldAcc      
	FROM Util.Analyze  INNER JOIN SplitString(@BaseParam,',') SP ON SP.part = Util.Analyze.ID 	
	WHERE        (TableKind = 4)  
	
	--SELECT @OldAcc =  'Cast(' + FieldName +' AS Varchar(20)) +''-''+ '+ @OldAcc      
	--FROM Util.Analyze   
	--WHERE        (TableKind = 4)  And (','+@Current+',' LIKE '%,' + LTRIM(STR(ID)) + ',%')

	SET @OldAcc   =  LEFT (@OldAcc, (LEN(@OldAcc) - 5))  ; 
	
	if (@Filter <> '') 
	begin
		if (@SqlWhere = '')  
			SET @SqlWhere =  ' where '+ @OldAcc +'='''+@Filter+' '''	
		else		
			SET @SqlWhere =  @SqlWhere +' AND '+ @OldAcc +'='''+@Filter+' '''		
	end;	
end;

SET @SqlFinal = ' SELECT  CAST(REPLACE(REPLACE('+@ALLColums+',''-'',''''),'' '','''') AS DECIMAL(38,0)) AS ORdAccCode, '+
                @ALLColums+ ' AS AccCode,' +
                @ALLCaption + @Sqlselect+ @SqlTopic +' SUM(FunctionDay) AS FunctionDay , SUM(FunctionTime) AS FunctionTime , CAST(SUM(Price) AS money) AS Price ' +
				' FROM         Pay.Rpt_ProjectCostPrice('+STR( @PersonelNoFrom)  +','+ STR( @PersonelNoTo)  +','+
 STR( @ProjectIDFrom )  +','+STR(  @ProjectIDTo ) +','+
 STR( @OfficeCodeFrom ) +','+ STR( @OfficeCodeTo ) +','+
 STR( @MounthFrom ) +','+ STR( @MounthTo) +','+
 STR( @YearIDFrom ) +','+ STR( @YearIDTo)  +') AS Rpt_ProjectCostPrice '
					   + @SqlJoin  + @SqlWhere + Char(13) +' GROUP BY '+ @SqlGroup 
                + ', CAST(REPLACE(REPLACE('+@ALLColums+',''-'',''''),'' '','''') AS DECIMAL(38,0))' 

DECLARE @AccBank VARCHAR(250)
SET @AccBank = (SELECT AccountDBName FROM Pay.Config)
SET @SqlFinal = REPLACE(@SqlFinal , '%W%', @AccBank)
print @SqlFinal
Exec(@SqlFinal)

END


GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
----------------------------------------------------------------------
----------------------------------------------------------------------
----------------------------------------------------------------------
SET QUOTED_IDENTIFIER ON 
GO
--SET ANSI_NULLS OFF 
GO
CREATE FUNCTION Pay.NoToDayHourMin  (@First decimal (6, 3))
RETURNS nvarchar(50)
BEGIN
DECLARE @Day decimal (6, 3)
DECLARE @Hour decimal (6, 3)
DECLARE @Min decimal (6, 3)
DECLARE @Final nvarchar
DECLARE @Symbol1 nvarchar DECLARE @Symbol2 nvarchar
IF @First < 0 BEGIN 
				SET @Symbol1 = '( ' 
				SET @Symbol2 = ')'
			  END 
			  ELSE 
			  BEGIN 
				SET @Symbol1 = '' 
				SET @Symbol2 = ''
			  END 

DECLARE @DayHour int  
SELECT @DayHour=Amount FROM  Pay.FormsInfo WHERE (FormType=16)AND(infoid = 1)

SET @Day = Floor(cast(abs(@First) as int))
SET @Hour = Floor(cast((abs(@First)-@Day)*@DayHour as int))
SET @Min = Floor(((abs(@First)-@Day)*@DayHour - @Hour) * 60)

	  RETURN(Select @Symbol1 
				+   case when @Day=0 and @Hour=0 and @Min=0 then '-' else '' end
				+ 	case when @day = 0 then '' else  ltrim(rtrim(str(@Day)))  + ' روز  ' end 
				+   case when @day<>0 and (@Hour<>0 or @Min<>0) then '  و ' else '' end 
				+	case when (@Hour <> 0 or @Min <> 0) then  ltrim(rtrim(str(@Hour))) + ':' + ltrim(rtrim(str(@Min))) else '' end 
				+	@Symbol2) 
END
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
----------------------------------------------------------------------
----------------------------------------------------------------------
----------------------------------------------------------------------
----------------------------------------------------------------------
SET QUOTED_IDENTIFIER ON 
GO
--SET ANSI_NULLS OFF 
GO
--IF EXISTS (SELECT * FROM sysobjects WHERE id = object_id(N'FunctionItemsList') AND xtype IN (N'FN', N'IF', N'TF'))
CREATE FUNCTION Pay.FunctionItemsList()  RETURNS 
TABLE AS  RETURN 
(  SELECT Pay.Functions.PersonelNo,Functions.YearID,Functions.Mounth,min(FunctionDay) AS FunctionDay,min(FunctionTime) AS FunctionTime
   ,0 as _Amount1 
   FROM Pay.Functions  LEFT OUTER JOIN Pay.FunctionsItems ON Pay.Functions.FunctionID = Pay.FunctionsItems.FunctionID 
    GROUP BY Pay.Functions.PersonelNo,Functions.YearID,Functions.Mounth) 

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
----------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------
SET QUOTED_IDENTIFIER ON 
GO
--SET ANSI_NULLS OFF 
GO
CREATE VIEW Pay.SalaryList
AS
SELECT        Pay.PersonelInfo.PersonelNo AS PersonelCode, FixedCalculated.Mounth AS MonthOrder, Pay.PersonelInfo.name_L1 + ' ' + Pay.PersonelInfo.lastName_L1 AS FullName, 
                         Pay.PersonelInfo.InsuranceNumber AS InsuranceCode, CAST(SUM(CASE WHEN ((FormsInfo_2.InfoID BETWEEN 1 AND 4) AND (FormsInfo_2.FormType = 22)) 
                         THEN price ELSE 0 END) / (CASE WHEN Pay.Functions_Sum.FunctionDay <> 0 THEN Pay.Functions_Sum.FunctionDay ELSE 1 END) AS money) AS DaillySalary, 
                         Pay.Functions_Sum.FunctionDay AS WorkDay, CAST(SUM(CASE WHEN ((FormsInfo_2.InfoID BETWEEN 1 AND 4) AND (FormsInfo_2.FormType = 22)) 
                         THEN price ELSE 0 END) AS money) AS MonthlySalary, SUM(CASE ShowlistKind WHEN 1 THEN price ELSE 0 END) AS TotalBenefits, 
                         Pay.Functions_Sum.FunctionTime * 60 AS WorkMinutes, FunctionItemsList_1._Amount1 * 60 AS ExtraWorkMinutes, SUM(CASE WHEN (CalCulateKind = 5) AND 
                         (ShowListKind = 1) AND (BedBes = 1) THEN price ELSE 0 END) AS ExtraWorkAmount, CASE WHEN SUM(CASE WHEN ((CalCulateKind = 10) AND (ShowlistKind = 2)) 
                         THEN price ELSE 0 END) <> 0 THEN SUM(CASE ShowlistKind WHEN 3 THEN price ELSE 0 END) ELSE 0 END AS TotalBenefitsInclhdeingInsourance, 
                         SUM(CASE WHEN (ShowlistKind = 11 AND bedbes = 0 AND CalCulateKind = 12) THEN price ELSE 0 END) AS TotalBenefitsInclhdeingTax, 
                         0 AS TotalSalaryInclhdeingInsourance, 0 AS TotalSalaryInclhdeingTax, SUM(CASE ShowlistKind WHEN 1 THEN price ELSE 0 END) AS TotalSalary, 
                         SUM(CASE WHEN ((BedBes = 2) AND (CalCulateKind = 10) AND (ShowListKind = 2)) THEN price ELSE 0 END) AS WorkerInsourance, 
                         SUM(CASE WHEN (ShowlistKind = 11 AND bedbes = 2) THEN price ELSE 0 END) AS Tax, SUM(CASE WHEN (ShowlistKind IN (2, 4, 15, 14) AND bedbes = 1) 
                         THEN price ELSE 0 END) AS WorkOwnerInsourance, SUM(CASE ShowlistKind WHEN 2 THEN price ELSE 0 END) + SUM(CASE WHEN ShowlistKind = 11 AND 
                         bedbes = 2 THEN price ELSE 0 END) AS TotalSubTraction, SUM(CASE ShowlistKind WHEN 1 THEN price ELSE 0 END) 
                         - (SUM(CASE ShowlistKind WHEN 2 THEN price ELSE 0 END) + SUM(CASE WHEN ShowlistKind = 11 AND bedbes = 2 THEN price ELSE 0 END)) AS PureSalary, 
                         Pay.PersonelInfo.AccountNumber AS AccountCode, FixedCalculated.YearID AS FiscalYear
FROM            Pay.Functions_Sum INNER JOIN
                         Pay.PersonelInfo ON Pay.Functions_Sum.PersonelNo = Pay.PersonelInfo.PersonelNo RIGHT OUTER JOIN
                         Pay.FixedCalculated LEFT OUTER JOIN
                         Pay.FunctionItemsList() AS FunctionItemsList_1 ON FixedCalculated.PersonelNO = FunctionItemsList_1.PersonelNo AND 
                         FixedCalculated.Mounth = FunctionItemsList_1.Mounth ON Pay.Functions_Sum.Mounth = FixedCalculated.Mounth AND Pay.Functions_Sum.YearID = FixedCalculated.YearID AND 
                         Pay.PersonelInfo.PersonelNo = FixedCalculated.PersonelNO RIGHT OUTER JOIN
                         Pay.Interdicts ON FixedCalculated.PersonelNO = Pay.Interdicts.PersonelNo LEFT OUTER JOIN
                          Pay.FormsInfo AS FormsInfo_2 ON FixedCalculated.SalaryID = FormsInfo_2.FormInfoID
WHERE        (FixedCalculated.ArchiveID = 0) AND (FixedCalculated.Mounth > 0) AND (Interdicts.InterdicType = 0) AND (LEFT(Interdicts.InterdicStartDate,7) 
                         <= LTRIM(STR(FixedCalculated.YearID)) + '/' + RIGHT('00' + LTRIM(STR(FixedCalculated.Mounth)), 2)) AND (LEFT(Interdicts.InterdicEndDate,7) 
                         >= LTRIM(STR(FixedCalculated.YearID)) + '/' + RIGHT('00' + LTRIM(STR(FixedCalculated.Mounth)), 2)) AND (Functions_Sum.Mounth = FixedCalculated.Mounth)
						 AND (Functions_Sum.YearID = FixedCalculated.YearID)
GROUP BY Pay.PersonelInfo.PersonelNo, Pay.PersonelInfo.name_L1 + ' ' + Pay.PersonelInfo.lastName_L1, Pay.PersonelInfo.name_L1, Pay.PersonelInfo.lastName_L1, Pay.PersonelInfo.AccountNumber, 
                         Pay.PersonelInfo.InsuranceNumber, Pay.Functions_Sum.FunctionDay, Pay.Functions_Sum.FunctionTime, Pay.PersonelInfo.AccountNumber, Pay.PersonelInfo.BirthDate, 
                         FunctionItemsList_1._Amount1 * 60, Pay.Functions_Sum.FunctionDay, Pay.Functions_Sum.FunctionTime * 60, Pay.Functions_Sum.FunctionTime, FixedCalculated.Mounth, 
                         FixedCalculated.YearID

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
----------------------------------------------------------------------
----------------------------------------------------------------------
----------------------------------------------------------------------
----------------------------------------------------------------------
----------------------------------------------------------------------
----------------------------------------------------------------------
SET QUOTED_IDENTIFIER ON 
GO
--SET ANSI_NULLS OFF 
GO
CREATE FUNCTION Pay.CalculateBonusSalaryIndependent (

 @YearMounth char(7)  ='91/03' ,
 @salarykind int =1 ,
 @salarykindTo int =1  ,
 @PersonelNoFROM int  =0 ,
 @PersonelNoTo int =9999999 ,
 @Mounth int  =3,
 @FormInfoID int  =2995
)
RETURNS  table  AS 
return  (
SELECT BONUS.* , 
CASE WHEN ROUND( Pay.FormsInfo.Amount *   bonus.CountMounth  +   
	(bonus.EmployeeAmount+ bonus.ContainTaxValue +MTAX -  Pay.FormsInfo.FirstAmount * bonus.CountMounth   ) * 
	FormsInfo.Coefficient,0)- bonus.PaymentTaxValue >0 
then 	ROUND( Pay.FormsInfo.Amount *   bonus.CountMounth   +   
	(bonus.EmployeeAmount+ bonus.ContainTaxValue+ MTAX -  Pay.FormsInfo.FirstAmount*   bonus.CountMounth  )*
	 Pay.FormsInfo.Coefficient,0)- bonus.PaymentTaxValue ELSE 0 END AS TaxValue 

FROM (
	SELECT  PersonelDecExt.PersonelNo, PersonelDecExt.FormInfoID as FormInfoID  ,
		TaxInfo.Forminfoid AS TaxID, ISNULL(ContainTaxBefore.ContainTaxValue,0)  AS ContainTaxValue  ,
ISNULL(ContainTaxBefore.CountMounth,1) as CountMounth   ,
		ISNULL(ContainTaxBefore.TaxValue,0) AS PaymentTaxValue,PersonelDecExt.EmployeeAmount,isnull(ContainTaxBefore.MTAX,0) as MTAX

	FROM  (select personelno , forminfoid, SUM(employeeAmount) as employeeAmount  
			from Pay.PersonelDecExt 
			where FormInfoID=@FormInfoID and    (EndDate IS NULL or ltrim(rtrim(EndDate)) = '' )  and FirstMounth = @Mounth
			group by personelno , forminfoid  
			   ) PersonelDecExt INNER JOIN
		PersonelInfo_Ins_Tax(@YearMounth , @PersonelNoFrom, @PersonelNoTo)  PersonelInfo ON 
							PersonelDecExt.PersonelNo = PersonelInfo.PersonelNo INNER JOIN
		 Pay.FormsInfo TaxInfo ON PersonelInfo.TaxCalculationType = TaxInfo.FormInfoID  Left OUTER Join 
		ContainTaxBefore  ( @Mounth  ,@PersonelNoFROM ,@PersonelNoTo ,left(@YearMounth,4)  )   ContainTaxBefore on 
							ContainTaxBefore.PersonelNo=PersonelDecExt.PersonelNo 

		) Bonus  	
		INNER JOIN 
			 Pay.FormsInfo ON bonus.TaxID = Pay.FormsInfo.PrvInfoID 

WHERE Bonus.FormInfoID=@FormInfoID 
 and 
		CASE WHEN ISNULL(bonus.EmployeeAmount,0) + ISNULL(bonus.ContainTaxValue,0)+MTAX >0 
		then 	ISNULL(bonus.EmployeeAmount,0) + ISNULL(bonus.ContainTaxValue,0)+MTAX ELSE 0 END 
			>= 	FormsInfo.FirstAmount*ISNULL(bonus.CountMounth,1) 
		AND 

		CASE WHEN ISNULL(bonus.EmployeeAmount,0) + ISNULL(bonus.ContainTaxValue,0)+MTAX >0 

		then ISNULL(bonus.EmployeeAmount,0) + ISNULL(bonus.ContainTaxValue,0)+MTAX ELSE 0 END 
			<=	FormsInfo.Amount2 *ISNULL(bonus.CountMounth,1)
)
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
----------------------------------------------------------------------
----------------------------------------------------------------------
SET QUOTED_IDENTIFIER ON 
GO
--SET ANSI_NULLS OFF 
GO
CREATE FUNCTION Pay.[GetInterdictSalaryAmount] (@SalaryID int=0,@InterdictID int=0 )
RETURNS money 
BEGIN
  DECLARE @Amount money
  SELECT     @Amount= Amount
FROM            Pay.InterdictItems
WHERE        (InterdictID = @InterdictID) AND ( SalaryID = @SalaryID)

RETURN(ISNULL( @Amount,0))
END
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
---------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------
--SET QUOTED_IDENTIFIER OFF 
--GO
----SET ANSI_NULLS OFF 
--GO
--CRTE FUNCTION RetardMakeDocuments  ( @PersonelNoFROM int=0,@PersonelNoTo int=9999999,@OfficeCodeFROM int=0,@OfficeCodeTo int=9999999,
--@FirstArchiveID int=1,@LastArchiveID int=9999,@month int )  
--RETURNS  table  AS 
--Return  (
--SELECT AccTopicCode,AccDetailCode,AccCTopicCode,AccCTopicCode2,
--	CASE WHEN SUM(debt-credit)>0 THEN SUM(debt-credit) ELSE 0 END AS  debt,
--	CASE WHEN SUM(credit-debt)>0 THEN SUM(credit-debt) ELSE 0 END AS  credit,
--	CASE WHEN SUM(debt-credit)>0 THEN 1 ELSE 2 END AS bedbes,InfoName_L1,PersonelNO,PeronName
--FROM 
--(
--SELECT  Pay.FixedCalculated.AccTopicCode,Pay.FixedCalculated.AccDetailCode,
--	Pay.FixedCalculated.AccCTopicCode,Pay.FixedCalculated.AccCTopicCode2,
--	CASE Pay.FixedCalculated.BedBes WHEN 1 THEN Pay.FixedCalculated.Price ELSE 0 END AS debt,
--	CASE Pay.FixedCalculated.BedBes WHEN 2 THEN Pay.FixedCalculated.Price ELSE 0 END AS credit,
--	FormsInfo.InfoName_L1,Pay.FixedCalculated.PersonelNO,
--        Pay.PersonelInfo.name_L1 + ' - ' + Pay.PersonelInfo.lastName_L1 AS PeronName
--FROM         Pay.FixedCalculated INNER JOIN
--                      Pay.FormsInfo ON Pay.FixedCalculated.SalaryID = Pay.FormsInfo.FormInfoID INNER JOIN
--                      Pay.PersonelInfo ON Pay.FixedCalculated.PersonelNO = Pay.PersonelInfo.PersonelNo
--WHERE     (Pay.FixedCalculated.BedBes <> 0) AND (Pay.FixedCalculated.Mounth = @month ) AND 
--	not((Pay.FixedCalculated.CalCulateKind = 10) AND        (Pay.FixedCalculated.ShowListKind = 2)) AND 
--	(Pay.FixedCalculated.Price <> 0) AND
--		 (Pay.FixedCalculated.PersonelNO BETWEEN @PersonelNoFROM  AND @PersonelNoTo ) AND 
--                      (Pay.FixedCalculated.OfficeCode BETWEEN @OfficeCodeFROM AND @OfficeCodeTo ) AND
--  (ArchiveID = @LastArchiveID)
--UNION ALL
--SELECT  Pay.FixedCalculated.AccTopicCode,Pay.FixedCalculated.AccDetailCode,
--	Pay.FixedCalculated.AccCTopicCode,Pay.FixedCalculated.AccCTopicCode2,
--	CASE Pay.FixedCalculated.BedBes WHEN 2 THEN Pay.FixedCalculated.Price ELSE 0 END AS debt,
--	CASE Pay.FixedCalculated.BedBes WHEN 1 THEN Pay.FixedCalculated.Price ELSE 0 END AS credit,

--	FormsInfo.InfoName_L1,Pay.FixedCalculated.PersonelNO,
--        Pay.PersonelInfo.name_L1 + ' - ' + Pay.PersonelInfo.lastName_L1 AS PeronName
--FROM         Pay.FixedCalculated INNER JOIN
--                      Pay.FormsInfo ON Pay.FixedCalculated.SalaryID = Pay.FormsInfo.FormInfoID INNER JOIN
--                      Pay.PersonelInfo ON Pay.FixedCalculated.PersonelNO = Pay.PersonelInfo.PersonelNo

--WHERE     (Pay.FixedCalculated.BedBes <> 0) AND (Pay.FixedCalculated.Mounth = @month ) AND
--	not((Pay.FixedCalculated.CalCulateKind = 10) AND        (Pay.FixedCalculated.ShowListKind = 2)) AND 
--	 (Pay.FixedCalculated.Price <> 0) AND
--		 (Pay.FixedCalculated.PersonelNO BETWEEN @PersonelNoFROM  AND @PersonelNoTo ) AND 
--                      (Pay.FixedCalculated.OfficeCode BETWEEN @OfficeCodeFROM AND @OfficeCodeTo ) AND
--  (ArchiveID = @FirstArchiveID)

--) FinalFixed
--group by AccTopicCode,AccDetailCode,AccCTopicCode,AccCTopicCode2,InfoName_L1,PersonelNO,PeronName
--having SUM(debt-credit)<>0 
--)
--GO
--SET QUOTED_IDENTIFIER OFF 
--GO
--SET ANSI_NULLS ON 
--GO
-------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------
SET QUOTED_IDENTIFIER ON 
GO
--SET ANSI_NULLS OFF 
GO

CREATE FUNCTION Pay.RetardMakeDocuments  (@PersonelNoFROM int=0,@PersonelNoTo int=9999999,
 @OfficeCodes varchar(8000)='1172',	@FirstArchiveID int=1,@CurentArchiveID int=9999, @OlderArchiveID int=1,@month int=11,@YearMonth varchar(7) ='93/11' 
,@PersonelStateFROM int=0,@PersonelStateTo int=999999,@EmployTypeIDFROM  int=0,@EmployTypeIDTo int=999999
,@subcompanyCode int=0 ,  @ProjectIDFrom int=0,@ProjectIDTo int=9999999 , @insuranceIDs varchar(8000)='0'
,@LabelIDFrom  int=0,@LabelIDTo  int=0)  
RETURNS  @retFindReports2 TABLE 
  (
    AccTopicCode bigint ,
	AccDetailCode int ,
	AccCTopicCode int ,
	AccCTopicCode2 int ,
	AccCTopicCode3 int ,
	debt money ,
	credit money  ,
	BedBes int  ,
	InfoName_L1 varchar(500)  COLLATE DATABASE_DEFAULT ,
	PersonelNO int ,
	PeronName varchar(200)  COLLATE DATABASE_DEFAULT 
  )
  AS 
BEGIN  
INSERT INTO @retFindReports2

SELECT        AccTopicCode, AccDetailCode, AccCTopicCode, AccCTopicCode2, AccCTopicCode3, SUM(debt) AS debt, SUM(credit) AS credit,
            BedBes,InfoName_L1,  PersonelNO, PeronName
FROM(

SELECT        MakeDocuments.AccTopicCode, MakeDocuments.AccDetailCode, MakeDocuments.AccCTopicCode, MakeDocuments.AccCTopicCode2, 
                         MakeDocuments.AccCTopicCode3, MakeDocuments.debt, MakeDocuments.credit,  InfoName_L1,  PersonelNO, 
                          PeronName,bedbes
						  
FROM            Pay.MakeDocuments(@PersonelNoFROM,@PersonelNoTo, @OfficeCodes  , @FirstArchiveID , @CurentArchiveID ,  @month ,@YearMonth
 ,@PersonelStateFrom , @PersonelStateTo , @EmployTypeIDFrom  , @EmployTypeIDTo , @subcompanyCode ,  @ProjectIDFrom , @ProjectIDTo , @insuranceIDs
 ,@LabelIDFrom  ,@LabelIDTo   ) 
                         AS MakeDocuments
UNION ALL
SELECT        MakeDocuments.AccTopicCode, MakeDocuments.AccDetailCode, MakeDocuments.AccCTopicCode, MakeDocuments.AccCTopicCode2, 
                         MakeDocuments.AccCTopicCode3,-1* MakeDocuments.debt,-1* MakeDocuments.credit,  InfoName_L1,  PersonelNO, 
                          PeronName,bedbes

FROM            Pay.MakeDocuments(@PersonelNoFROM,@PersonelNoTo, @OfficeCodes  , @FirstArchiveID , @OlderArchiveID ,  @month ,@YearMonth
 ,@PersonelStateFrom , @PersonelStateTo , @EmployTypeIDFrom  , @EmployTypeIDTo , @subcompanyCode ,  @ProjectIDFrom , @ProjectIDTo , @insuranceIDs
 ,@LabelIDFrom  ,@LabelIDTo   ) 
                         AS MakeDocuments


)abcd						 
GROUP BY AccTopicCode, AccDetailCode, AccCTopicCode, AccCTopicCode2, AccCTopicCode3, bedbes,InfoName_L1,PersonelNO,PeronName
HAVING        (SUM(debt) > 0) OR (SUM(credit) > 0)
ORDER BY CASE WHEN SUM(debt) > 0 THEN 0 ELSE 1 END



     RETURN
END
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
-------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------
SET QUOTED_IDENTIFIER ON 
GO
--SET ANSI_NULLS OFF 
GO

CREATE FUNCTION Pay.LabelMakeDocuments  (@PersonelNoFROM int=0,@PersonelNoTo int=9999999,
 @OfficeCodes varchar(8000)='1172',	@FirstLabelID int=-1,@CurentLabelID int=2, @OlderLabelID int=1,@month int=11,@YearMonth varchar(7) ='93/11' 
,@PersonelStateFROM int=0,@PersonelStateTo int=999999,@EmployTypeIDFROM  int=0,@EmployTypeIDTo int=999999
,@subcompanyCode int=0 ,  @ProjectIDFrom int=0,@ProjectIDTo int=9999999 , @insuranceIDs varchar(8000)='0'
,@FirstArchiveID int=1,@LastArchiveID  int=9999)  
RETURNS  @retFindReports2 TABLE 
  (
    AccTopicCode bigint ,
	AccDetailCode int ,
	AccCTopicCode int ,
	AccCTopicCode2 int ,
	AccCTopicCode3 int ,
	debt money ,
	credit money  ,
	BedBes int  ,
	InfoName_L1 varchar(500)  COLLATE DATABASE_DEFAULT ,
	PersonelNO int ,
	PeronName varchar(200)  COLLATE DATABASE_DEFAULT 
  )
  AS 
BEGIN  
INSERT INTO @retFindReports2

SELECT        AccTopicCode, AccDetailCode, AccCTopicCode, AccCTopicCode2, AccCTopicCode3, SUM(debt) AS debt, SUM(credit) AS credit,
            BedBes,InfoName_L1,  PersonelNO, PeronName
FROM(

SELECT        MakeDocuments.AccTopicCode, MakeDocuments.AccDetailCode, MakeDocuments.AccCTopicCode, MakeDocuments.AccCTopicCode2, 
                         MakeDocuments.AccCTopicCode3, MakeDocuments.debt, MakeDocuments.credit,  InfoName_L1,  PersonelNO, 
                          PeronName,bedbes
				
FROM            Pay.MakeDocuments(@PersonelNoFROM,@PersonelNoTo, @OfficeCodes  , @FirstArchiveID , @LastArchiveID ,  @month ,@YearMonth
 ,@PersonelStateFrom , @PersonelStateTo , @EmployTypeIDFrom  , @EmployTypeIDTo , @subcompanyCode ,  @ProjectIDFrom , @ProjectIDTo , @insuranceIDs
 /*,@FirstLabelID*/  ,@CurentLabelID ,@CurentLabelID   ) 
                         AS MakeDocuments
UNION ALL
SELECT        MakeDocuments.AccTopicCode, MakeDocuments.AccDetailCode, MakeDocuments.AccCTopicCode, MakeDocuments.AccCTopicCode2, 
                         MakeDocuments.AccCTopicCode3,-1* MakeDocuments.debt,-1* MakeDocuments.credit,  InfoName_L1,  PersonelNO, 
                          PeronName,bedbes

FROM            Pay.MakeDocuments(@PersonelNoFROM,@PersonelNoTo, @OfficeCodes  , @FirstArchiveID , @LastArchiveID ,  @month ,@YearMonth
 ,@PersonelStateFrom , @PersonelStateTo , @EmployTypeIDFrom  , @EmployTypeIDTo , @subcompanyCode ,  @ProjectIDFrom , @ProjectIDTo , @insuranceIDs
 /*,@FirstLabelID*/  ,@OlderLabelID   ,@OlderLabelID  ) 
                         AS MakeDocuments


)abcd						 
GROUP BY AccTopicCode, AccDetailCode, AccCTopicCode, AccCTopicCode2, AccCTopicCode3, bedbes,InfoName_L1,PersonelNO,PeronName
HAVING        (SUM(debt) > 0) OR (SUM(credit) > 0)
ORDER BY CASE WHEN SUM(debt) > 0 THEN 0 ELSE 1 END



     RETURN
END
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
-----------------------------------------------------------------------------

-----------------------------------------------------------------------------
GO
  
CREATE FUNCTION Pay.GetYearMounthVacation (@Mounth int )
RETURNS varchar(7) 
begin
  DECLARE @Start varchar(10)
  DECLARE @Finish varchar(10)
  DECLARE @YM varchar(7)
  SELECT    @Start= Replace(VacationMounthFrom,' ',''),@Finish= REPLACE(VacationMounthTo,' ','') FROM Pay.Config
   set @YM = '0'+ltrim(str(@Mounth))
   set @YM = RIGHT(@YM,2) 
  if abs(substring(@Start,6,2))<=@Mounth 
    set @YM = substring(@Start,1,5)+@YM
 ELSE     
    set @YM = substring(@Finish,1,5)+@YM
  RETURN(@YM)   
end
--------------------


GO
CREATE PROCEDURE Pay.VacationWithPrvYear @MounthFrom CHAR(2), @MounthTo CHAR(2),@VacationMounthFrom CHAR(7), @VacationMounthTo CHAR(7), @PersonelNoFrom VARCHAR(15), @PersonNoTo VARCHAR(15)
, @FormInfoID VARCHAR(10), @StandardDays CHAR(2),
 @StandardTimes CHAR(3), @PersonelStateFrom CHAR(3), @PersonelStateTo CHAR(3), @EmployTypeIDFROM char(7), @EmployTypeIDTo char(7)
, @PrvBank CHAR(30),@IntegrateDecExt CHAR(1) 

AS
BEGIN

DECLARE @PrvYearSQL VARCHAR(8000)
DECLARE @CurrentYearSQL VARCHAR(8000)
DECLARE @FinalSQL VARCHAR(8000)
DECLARE @JoinSQL VARCHAR(8000)
DECLARE @CurrentMounthFrom CHAR(2)

SET @VacationMounthFrom = RIGHT(REPLACE(@VacationMounthFrom,' ',''),7)
SET @VacationMounthTo =  RIGHT(REPLACE(@VacationMounthTo,' ',''),7)
IF (@IntegrateDecExt = 1)
BEGIN
	IF (CAST(@MounthTo AS INTEGER) > CAST(RIGHT(@VacationMounthTo,2) AS INTEGER))
		SET @MounthTo = RIGHT(@VacationMounthTo,2)
	IF (CAST(@MounthFrom AS INTEGER) < CAST(RIGHT(@VacationMounthFrom ,2)AS INTEGER))
		SET @MounthFrom = RIGHT(@VacationMounthFrom,2)
	SET @CurrentMounthFrom = '1'
END
ELSE
	SET @CurrentMounthFrom = @MounthFrom

SET @PrvYearSQL =
'SELECT   balanceDecExt_1.PersonelNo,name_L1 NAME,  ContainDay, ExpireDay, AllDay,ROUND(BalanceAllDay,2)AS BalanceAllDay, ISNULL(Vacation,0) Vacation
FROM '+ @PrvBank+'.Pay.balanceDecExt( '+@MounthFrom+', 12,'+
                   @PersonelNoFrom +','+ @PersonNoTo+ ','+
                   @FormInfoID+','+ @StandardDays+','+ @StandardTimes +',0,99999,'+
                      @PersonelStateFrom + ',' +@PersonelStateTo +','+ @EmployTypeIDFROM + ','+ @EmployTypeIDTo +')  AS balanceDecExt_1 ' 
                   
+' LEFT OUTER JOIN
         (SELECT PersonelNo,CAST(COUNT(MonthID) AS FLOAT)/12 * '+ @StandardDays+'  Vacation
          FROM (SELECT PersonelNo,MonthID  
                      FROM   '+ @PrvBank+'.Pay.Interdicts INNER JOIN 
                         '+ @PrvBank+'.Pay.Months ON  MonthID >= CAST(SUBSTRING(InterdictDate, 6, 2) AS INT)
                    WHERE  (State < 50) AND (MonthID >='+@MounthFrom+')
                     ) T WHERE (PersonelNo NOT IN (SELECT PersonelNo FROM Pay.Functions)) OR (MonthID NOT IN (SELECT Mounth FROM '+ @PrvBank+'.Pay.Functions WHERE PersonelNo=T.PersonelNo))
       GROUP BY T.PersonelNo
      ) Vac ON Vac.PersonelNo = balanceDecExt_1.PersonelNo
UNION ALL '

SET @CurrentYearSQL =
'SELECT   balanceDecExt_1.PersonelNo,name_L1 NAME,  ContainDay, ExpireDay, AllDay,ROUND(BalanceAllDay,2)AS BalanceAllDay,ISNULL(Vacation,0) Vacation

From Pay.balanceDecExt( '+@CurrentMounthFrom+','+ @MounthTo+','+
                   @PersonelNoFrom +','+ @PersonNoTo +','+
                   @FormInfoID+','+ @StandardDays+','+ @StandardTimes +',0,99999,'+ @PersonelStateFrom + ',' +@PersonelStateTo +',' +@EmployTypeIDFROM  +',' +@EmployTypeIDTo+ ')  AS balanceDecExt_1' 

SET @JoinSQL = '  LEFT OUTER JOIN
(SELECT PersonelNo,CAST(COUNT(MonthID) AS FLOAT)/12 * '+ @StandardDays+'  Vacation
FROM (SELECT PersonelNo,MonthID  
          FROM   Pay.Interdicts INNER JOIN 
             Months ON  MonthID > = CAST(SUBSTRING(InterdictDate, 6, 2) AS INT)
        WHERE  (State < 50)
         ) T WHERE (PersonelNo NOT IN (SELECT PersonelNo FROM Pay.Functions)) OR (MonthID NOT IN (SELECT Mounth FROM Pay.Functions WHERE PersonelNo=T.PersonelNo))
GROUP BY T.PersonelNo
) Vac ON Vac.PersonelNo = balanceDecExt_1.PersonelNo '

IF (@IntegrateDecExt = 1)
	SET @JoinSQL = '  LEFT OUTER JOIN 
	(SELECT PersonelNo,CAST(COUNT(MonthID) AS FLOAT)/12 * '+ @StandardDays+'  Vacation
	FROM (SELECT PersonelNo,MonthID  
			  FROM   Pay.Interdicts INNER JOIN 
				 Months ON  Pay.GetYearMounthVacation(MonthID) > = SUBSTRING(InterdictDate, 1, 7)
			WHERE  (State < 50)AND (MonthID <= '+@MounthTo+')
			 ) T WHERE (PersonelNo NOT IN (SELECT PersonelNo FROM Pay.Functions)) OR (MonthID NOT IN (SELECT Mounth FROM Pay.Functions WHERE PersonelNo=T.PersonelNo))
	GROUP BY T.PersonelNo
	) Vac ON Vac.PersonelNo = balanceDecExt_1.PersonelNo '

SET @FinalSQL =   'create VIEW Pay.AllDecExt AS SELECT * FROM ( ' 
                           
IF (@IntegrateDecExt = 1)
	SET @FinalSQL = @FinalSQL + @PrvYearSQL + @CurrentYearSQL
ELSE
	SET @FinalSQL = @FinalSQL + @CurrentYearSQL 
SET @FinalSQL = @FinalSQL +@JoinSQL+ ' ) BalanceDecExt'
EXEC(' if exists (select * from sysobjects where id = object_id(N''Pay.AllDecExt'') and OBJECTPROPERTY(id, N''IsView'') = 1)
DROP VIEW Pay.AllDecExt')
---print (@FinalSQL)
EXEC(@FinalSQL)

END
-------------
GO
CREATE FUNCTION Pay.FunctionList2  (@Years int=1402 ,@YearID int=1402 , @MonthFrom int=1 ,@MonthTo INT = 12,@SalaryID1 int=368,@SalaryID2 int=483,@SalaryID3 int=524 )  
RETURNS  table  AS 
Return  (
SELECT     Pay.Functions.PersonelNo,SUM(CASE WHEN Pay.FunctionsItems.SalaryID = @SalaryID1 THEN (FunctionsItems.FDaily + Pay.FunctionsItems.FHours) 
                     ELSE 0 END) AS FAmount1,SUM(CASE WHEN Pay.FunctionsItems.SalaryID = @SalaryID2 THEN (FunctionsItems.FDaily + Pay.FunctionsItems.FHours) 
                     ELSE 0 END) AS FAmount2,SUM(CASE WHEN Pay.FunctionsItems.SalaryID = @SalaryID3 THEN (FunctionsItems.FDaily + Pay.FunctionsItems.FHours) 
                     ELSE 0 END) AS FAmount3
FROM         Pay.Functions INNER JOIN
                      Pay.FunctionsItems ON Pay.Functions.FunctionID = Pay.FunctionsItems.FunctionID INNER JOIN
                       Pay.FormsInfo ON Pay.FunctionsItems.SalaryID = Pay.FormsInfo.FormInfoID
WHERE     (Functions.Mounth BETWEEN @MonthFrom AND @MonthTo) AND (Pay.Functions.Years = @Years ) AND (Pay.Functions.YearID = @YearID )
GROUP BY Pay.Functions.PersonelNo
)
-----------------------------------------------------------------------------------------------------------------------------------------------------
GO
--------------------------------------------------------------------------------------------------------------------------------------------
CREATE FUNCTION Pay.PonyTax (@Mounth int =12,@MounthOneMore  int =13,  @Year int=94,@YearMounth varchar(7) ='94/12',
		      @PersonelNoFROM int=4,@PersonelNoTo int=99999  ,@ContainTax money =5000 )  
RETURNS Table AS 
return 
(
SELECT	TaxCalculae.ContainTax AS containTax,	0 AS containTax2, 
		CASE (SELECT     TaxKindCalc     FROM	Config)
				WHEN 0 THEN ROUND(((TaxCalculae.ContainTax - ISNULL(ROUND( DecreaseContainTax.Price, 0), 0) ) ) * 0.10 , 0) 
				WHEN 1 THEN ROUND(((TaxCalculae.ContainTax + TaxCalculae.ContainTaxValue- 
							ISNULL(ROUND( DecreaseContainTax.Price, 0), 0) ) - 
							FormsInfo.FirstAmount 
							* 
							case when TaxCalculae.CountMounth > @Mounth then @Mounth else TaxCalculae.CountMounth end ) 
							* 
							FormsInfo.Coefficient + Pay.FormsInfo.Amount 
							* 
							case when TaxCalculae.CountMounth > @Mounth then @Mounth else TaxCalculae.CountMounth end  - 
							TaxCalculae.BeforeTaxValue,0)  
				WHEN 2 THEN ROUND(((TaxCalculae.ContainTax + TaxCalculae.ContainTaxValue- 
							ISNULL(ROUND( DecreaseContainTax.Price, 0), 0) ) - 
							FormsInfo.FirstAmount*12 * TaxCalculae.TaxFunDay/365) * 
							FormsInfo.Coefficient + Pay.FormsInfo.Amount * 12 * 
							ISNULL(TaxCalculae.TaxFunDay,0)/365 - TaxCalculae.BeforeTaxValue,0) 
				WHEN 3 THEN ROUND(((TaxCalculae.ContainTax + TaxCalculae.ContainTaxValue- 
							ISNULL(ROUND( DecreaseContainTax.Price, 0), 0) ) - 
							FormsInfo.FirstAmount*12 * 
							(ISNULL(TaxCalculae.TaxFunDay,0)+ISNULL(TaxFunDay_SickDay,0) )/365) * 
							FormsInfo.Coefficient + Pay.FormsInfo.Amount*12 *
							(ISNULL(TaxCalculae.TaxFunDay,0) + ISNULL(TaxFunDay_SickDay,0) ) /365 - 
							TaxCalculae.BeforeTaxValue,0) 
		END  AS TaxValue , CountMounth
FROM	(
			SELECT	PersonelInfo.PersonelNo, PersonelInfo.TaxCalculationType AS SalaryID,
					--- اینجا باید پارامتر دهی شود 
					@ContainTax AS ContainTax,
					MAX(ISNULL(ContainTaxBefore.ContainTaxValue,0)) AS ContainTaxValue,
					MAX(ISNULL(ContainTaxBefore.CountMounth,0)) AS CountMounth,
					MAX(ISNULL(ContainTaxBefore.TaxValue,0)) AS BeforeTaxValue,
					MAX(ISNULL(ContainTaxBefore.TaxFunDay,0))  AS TaxFunDay ,
					MAX(ISNULL(ContainTaxBefore.TaxFunDay_SickDay,0))  AS TaxFunDay_SickDay
				FROM    Pay.PersonelInfo_Ins_Tax(@YearMounth,@PersonelNoFrom,@PersonelNoTo)  PersonelInfo  LEFT OUTER JOIN
						ContainTaxBefore(@MounthOneMore,@PersonelNoFrom,@PersonelNoTo,@Year) ContainTaxBefore  
									ON PersonelInfo.PersonelNo = ContainTaxBefore.PersonelNO
  		                 
				GROUP BY PersonelInfo.TaxCalculationType ,PersonelInfo.PersonelNo
			) TaxCalculae INNER JOIN

			Pay.FormsInfo ON TaxCalculae.SalaryID = Pay.FormsInfo.PrvInfoID Left Outer JOIN
			(
				SELECT     PrvInfoID, Amount2
				FROM          Pay.FormsInfo AS FormsInfo_2
				WHERE     (FormType = 37) AND (Coefficient = 0)
			) AS TaxTable_Dec1 ON Pay.FormsInfo.PrvInfoID = TaxTable_Dec1.PrvInfoID
			LEFT OUTER JOIN
			Pay.DecreaseContainTax(@Mounth,@PersonelNoFrom,@PersonelNoTo,12 , @Year) DecreaseContainTax ON TaxCalculae.PersonelNo = DecreaseContainTax.PersonelNo

WHERE	CASE (SELECT     TaxKindCalc  FROM         Pay.Config)
			WHEN 0 THEN  TaxCalculae.ContainTax + 0 - ISNULL(ROUND( DecreaseContainTax.Price, 0), 0)   
			WHEN 1 THEN  TaxCalculae.ContainTax + TaxCalculae.ContainTaxValue- ISNULL(ROUND( DecreaseContainTax.Price, 0), 0)
			WHEN 2 THEN  TaxCalculae.ContainTax + TaxCalculae.ContainTaxValue- ISNULL(ROUND( DecreaseContainTax.Price, 0), 0) 
			WHEN 3 THEN  TaxCalculae.ContainTax + TaxCalculae.ContainTaxValue- ISNULL(ROUND( DecreaseContainTax.Price, 0), 0)  END 
		BETWEEN  
			CASE (SELECT     TaxKindCalc  FROM         Pay.Config)
				WHEN 0 THEN   Pay.FormsInfo.FirstAmount
				WHEN 1  THEN    case when TaxCalculae.CountMounth > @Mounth then @Mounth else TaxCalculae.CountMounth end   * Pay.FormsInfo.FirstAmount
				WHEN 2  THEN   ( Pay.FormsInfo.FirstAmount*12 * TaxCalculae.TaxFunDay/365) 
				WHEN 3  THEN    Pay.FormsInfo.FirstAmount*12 * (TaxCalculae.TaxFunDay+TaxFunDay_SickDay )/365   END 
		AND 

			CASE (SELECT     TaxKindCalc  FROM         Pay.Config)
				WHEN 0 THEN   Pay.FormsInfo.Amount2 
				WHEN 1  THEN   case when TaxCalculae.CountMounth > @Mounth then @Mounth else TaxCalculae.CountMounth end  * Pay.FormsInfo.Amount2
				WHEN 2  THEN  ( Pay.FormsInfo.Amount2*12 * TaxCalculae.TaxFunDay/365 )
				WHEN 3  THEN  Pay.FormsInfo.Amount2*12 *( ISNULL(TaxCalculae.TaxFunDay,0) + ISNULL(TaxFunDay_SickDay,0) ) /365   END 


)
--------------------------------------------------------------------------------------------------------------------------------------------
GO
-------------------------------------------------------------------------------------------------------------
SET QUOTED_IDENTIFIER ON 
GO
--SET ANSI_NULLS OFF 
GO
CREATE  FUNCTION Pay.Rpt_SumPrice  
			( 
				@FromMounth int =1 , @ToMounth int =12 , 
				@FromPersonelNo int =0 , @ToPersonelNo int =9999999 , 
				@FromProjectID  int =0 , @ToProjectID int =99999999,@YearIDFrom  int=1402,@YearIDTo  int=1402

			)  
RETURNS  table  AS 
return  
(

select wage.* , fun.FunctionDay , fun.FunctionTime , 
	round (( wage.SumWage + wage.sum23Dec ) / fun.FunctionTime  , 0) as UnitePrice 
from 
(
SELECT	FixedCalculated.PersonelNO,PersonelInfo.name_L1 + ' ' + Pay.PersonelInfo.lastName_L1 AS PersonName,
		PersonelInfo.name_L1 , Pay.PersonelInfo.lastName_L1 ,
		SUM(case ShowlistKind when 1 then price else 0 end ) as SumWage ,  
		SUM( case when ( ShowlistKind in(2,4,15,14) and bedbes=1 )  then price else 0 end ) as sum23Dec 
FROM Pay.FixedCalculated INNER JOIN
		Pay.PersonelInfo ON FixedCalculated.PersonelNo = Pay.PersonelInfo.PersonelNo INNER JOIN 
		Pay.FinalArchiveWithPersonelNO Final ON FixedCalculated.PersonelNO=Final.PersonelNO and 
		FixedCalculated.Mounth=Final.Mounth and FixedCalculated.YearID=Final.YearID and 
		FixedCalculated.ArchiveID=final.ArchiveID
WHERE 	(FixedCalculated.Mounth BETWEEN @FromMounth AND @ToMounth) And (FixedCalculated.YearID between @YearIDFrom  and @YearIDTo   ) AND 
		(FixedCalculated.PersonelNO BETWEEN @FromPersonelNo AND @ToPersonelNo)	
GROUP BY FixedCalculated.PersonelNO,PersonelInfo.name_L1,PersonelInfo.lastName_L1 ) Wage 

INNER JOIN 

( 
 SELECT Pay.Functions.PersonelNo,
 SUM(Pay.Functions.FunctionDay) AS FunctionDay, SUM(Pay.Functions.FunctionTime) AS FunctionTime 


FROM Pay.Functions  INNER JOIN  
		 Pay.FormsInfo on Pay.Functions.ProjectID = Pay.FormsInfo.FormInfoID

Where (FormsInfo.InfoID between @FromProjectID and @ToProjectID)And (YearID between @YearIDFrom  and @YearIDTo   )
 GROUP BY  Pay.Functions.PersonelNo
 HAVING (Pay.Functions.PersonelNo between @FromPersonelNo and @ToPersonelNo)    
) Fun on wage.PersonelNo = fun.PersonelNo 


)
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
--------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------
SET QUOTED_IDENTIFIER ON 
GO
--SET ANSI_NULLS OFF 
GO
CREATE  FUNCTION Pay.Rpt_ProjectCostPrice  
			( 
				@FromPersonelNo int =0 , @ToPersonelNo int =9999999 ,
				@FromProjectID  int =0 , @ToProjectID int =99999999 ,
				@OfficeCodeFrom int =1 , @OfficeCodeTo int =12 , 
				@FromMounth int =1 , @ToMounth int =12   ,@YearIDFrom  int=1402,@YearIDTo  int=1402
			)  
RETURNS  table  AS 
return  
(

SELECT	allinfo.PersonelNo, allinfo.name_l1 ,allinfo.lastName_L1, allinfo.ProjectID,ProjectName_L1, 
		allinfo.OfficeCode,allinfo.OfficeName_L1, allinfo.jobCode ,  allinfo.jobName, allinfo.Mounth ,
		allinfo.FunctionDay as FunctionDay , allinfo.FunctionTime as FunctionTime , 
		CASE WHEN Rpt_SumPrice.FunctionTime *allinfo.FunctionTime <> 0 THEN
		ROUND (( Rpt_SumPrice.SumWage + Rpt_SumPrice.sum23Dec ) / Rpt_SumPrice.FunctionTime *allinfo.FunctionTime , 0)
		ELSE 0 END AS Price 
From(
		 SELECT	FormsInfo_1.InfoName_L1,Pay.FunctionsAll.FunctionId ,Pay.FunctionsAll.PersonelNo,
				PersonelInfo.name_L1 , Pay.PersonelInfo.lastName_L1 , 
				Pay.FunctionsAll.FunctionDay AS FunctionDay, Pay.FunctionsAll.FunctionTime AS FunctionTime , 
				FormsInfo_2OfficeCode.InfoID AS OfficeCode, FormsInfo_1.InfoID AS ProjectID , 
				FormsInfo_2OfficeCode.InfoName_L1 AS OfficeName_L1,
				FormsInfo_1.InfoName_L1 AS ProjectName_L1,
				Pay.FunctionsAll.Mounth,
				FormsInfo_jobCode.InfoID as jobCode , FormsInfo_JobCode.InfoName_L1 AS jobName 
		FROM	Pay.FunctionsAll left outer JOIN 
				Pay.FormsInfo ON Pay.FunctionsAll.SalaryID = Pay.FormsInfo.FormInfoID  INNER JOIN  
				Pay.PersonelInfo ON Pay.FunctionsAll.PersonelNo = Pay.PersonelInfo.PersonelNo  INNER JOIN  
				Pay.FormTypes ON Pay.FormsInfo.FormType =Pay.FormTypes.FormType INNER JOIN 
				Pay.FormsInfo FormsInfo_1 ON Pay.FunctionsAll.ProjectID = FormsInfo_1.FormInfoID LEFT OUTER JOIN 
				Pay.FormsInfo FormsInfo_2OfficeCode ON Pay.FunctionsAll.OfficeCode = FormsInfo_2OfficeCode.FormInfoID LEFT OUTER JOIN 
				 Pay.FormsInfo FormsInfo_JobCode ON Pay.FunctionsAll.jobCode = FormsInfo_JobCode.FormInfoID

		where	(Pay.FunctionsAll.PersonelNo between @FromPersonelNo and @ToPersonelNo) and 
				(FormsInfo_1.InfoID between @FromProjectID and @ToProjectID) and 
				(FormsInfo_2OfficeCode.InfoID BETWEEN @OfficeCodeFrom and @OfficeCodeTo)   and  
				(Pay.FunctionsAll.Mounth  between @FromMounth and   @ToMounth)and  
				(Pay.FunctionsAll.YearID  between @YearIDFrom and   @YearIDTo)
	)allinfo inner join 
 Rpt_SumPrice	( @fromMounth , @toMounth , @FromPersonelNo , @ToPersonelNo , @FromProjectID , @ToProjectID ,@YearIDFrom  ,@YearIDTo  )  
 Rpt_SumPrice on allinfo.PersonelNo = Rpt_SumPrice.PersonelNo 

)
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
--------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------
SET QUOTED_IDENTIFIER ON 
GO
--SET ANSI_NULLS OFF 
GO
CREATE FUNCTION Pay.[Fn_DecExtOnMounth] ( @OfficeCodes varchar(8000), @EmployTypFROM int=0,@EmployTypTo int=99999,@MounthFrom int , @MounthTo int, 
                                            @PersonelNoFrom int, @PersonelNoTo int, @InfoIDFrom int, @InfoIDTo int
                                          , @PersonelStateFrom int, @PersonelStateTo int, @ProjectIDFrom int, @ProjectIDTo int ,@FormType int=2  , @insuranceIDs varchar(8000)
										  ,@YearIDFrom  int=1402,@YearIDTo  int=1402 )  
RETURNS table AS 
return
(
SELECT    FormsInfo_OfficeCode.FormInfoID AS OfficeID,  FormsInfo_OfficeCode.InfoID AS OfficeCode, FormsInfo_OfficeCode.InfoName_L1 AS OfficeName, Pay.PersonelInfo.PersonelNo, Pay.PersonelInfo.name_L1, 
                      Pay.PersonelInfo.name_L2, Pay.PersonelInfo.Mobile, Pay.PersonelInfo.lastName_L1, Pay.PersonelInfo.lastName_L2, derivedtbl_OffTime.InfoName_L1, 
                      derivedtbl_OffTime.InfoName_L2, derivedtbl_OffTime.Day, derivedtbl_OffTime.Time, derivedtbl_OffTime.Minute_, derivedtbl_OffTime.AllTime, 
                      derivedtbl_OffTime.AllDay, derivedtbl_OffTime.RemainDay, derivedtbl_OffTime.Talab, derivedtbl_OffTime.TalabPrice, derivedtbl_OffTime.Bedehi, 
                      derivedtbl_OffTime.BedehiPrice,   derivedtbl_Func.SumFunctionDay 
					  ,derivedtbl_OffTime.FormInfoID 

FROM         Pay.PersonelInfo INNER JOIN
                      Pay.Interdicts  I ON Pay.PersonelInfo.PersonelNo = I.PersonelNo INNER JOIN
                       Pay.FormsInfo AS FormsInfo_OfficeCode ON I.OfficeCode = FormsInfo_OfficeCode.FormInfoID 

INNER JOIN
                       Pay.FormsInfo AS FormsInfoPersonelState ON Pay.PersonelInfo.PersonelState = FormsInfoPersonelState.FormInfoID

LEFT JOIN
Pay.FunctionsSUM( @MounthFrom , @MounthTo ,@YearIDFrom ,@YearIDTo ) AS derivedtbl_Func ON Pay.PersonelInfo.PersonelNo = derivedtbl_Func.PersonelNo


LEFT OUTER JOIN
                          (SELECT   derivedtbl_1.FormInfoID , InterdictForUse.PersonelNo, derivedtbl_1.InfoName_L1, derivedtbl_1.InfoName_L2, derivedtbl_1.Day, derivedtbl_1.Time, derivedtbl_1.Minute_, 
                                                   derivedtbl_1.AllTime, derivedtbl_1.AllDay, derivedtbl_1.RemainDay, derivedtbl_1.Talab, CAST(SUM(ROUND((InterdictForUse.Amount / Pay.FormsInfo.Amount)
                                                    * (FormsInfo.StandardDays * derivedtbl_1.Talab) + (InterdictForUse.Amount / Pay.FormsInfo.Amount) * (FormsInfo.StandardTimes * derivedtbl_1.Talab), 0)) 
                                                   AS Money) AS TalabPrice, derivedtbl_1.Bedehi, CAST(SUM(ROUND((InterdictForUse.Amount / Pay.FormsInfo.Amount) 
                                                   * (FormsInfo.StandardDays * derivedtbl_1.Bedehi) + (InterdictForUse.Amount / Pay.FormsInfo.Amount) * (FormsInfo.StandardTimes * derivedtbl_1.Bedehi), 0))
                                                    AS Money) AS BedehiPrice
                             FROM          Pay.FormsInfo INNER JOIN
                                                   Pay.InterdictForUseLast(1, 1, @PersonelNoFrom, @PersonelNoTo) AS InterdictForUse INNER JOIN
                                                       (SELECT     FormInfoID, SalaryID, Kind
                                                          FROM         Pay.SalaryRange
                                                          WHERE     (Kind = 0)) AS SalaryRange4Use ON InterdictForUse.SalaryID = SalaryRange4Use.SalaryID ON 
                                                   Pay.FormsInfo.FormInfoID = SalaryRange4Use.FormInfoID INNER JOIN
                                                       (SELECT   FormInfoID ,  PersonelNo, InfoName_L1, InfoName_L2, Day, Time, Minute_, AllTime, AllDay, RemainDay, 
                                                                                (CASE WHEN OffTime.RemainDay > 0 THEN OffTime.RemainDay ELSE 0 END) AS Talab, 
                                                                                (CASE WHEN OffTime.RemainDay < 0 THEN abs(OffTime.RemainDay) ELSE 0 END) AS Bedehi

                                                          FROM         (SELECT    FormsInfo_1.FormInfoID , Pay.PersonelDecExt.PersonelNo, FormsInfo_1.InfoName_L1, FormsInfo_1.InfoName_L2, 
                                                                                                     SUM((CASE Pay.PersonelDecExt.FirstMounth WHEN 0 THEN ISNULL(PersonelDecExt.DayQuntity,0) ELSE  -1 * ISNULL(PersonelDecExt.DayQuntity,0) END)) AS Day, 
                                                                                                        SUM((CASE Pay.PersonelDecExt.FirstMounth WHEN 0 THEN Pay.PersonelDecExt.DayTime ELSE  -1 * Pay.PersonelDecExt.DayTime END)) AS Time, 
                                                                                                        SUM((CASE Pay.PersonelDecExt.FirstMounth WHEN 0 THEN Pay.PersonelDecExt.Minute_ ELSE  -1 * Pay.PersonelDecExt.Minute_ END)) AS Minute_, 
                                                                                                        ROUND(SUM((CASE Pay.PersonelDecExt.FirstMounth WHEN 0 THEN 0 ELSE -1 * Pay.PersonelDecExt.DayTime END)) 
                                                                                                        + SUM((CASE Pay.PersonelDecExt.FirstMounth WHEN 0 THEN Pay.PersonelDecExt.Minute_ ELSE -1 * Pay.PersonelDecExt.Minute_ END)) 
                                                                                                        / 60, 3) AS AllTime, 
                                                                                                        ROUND(ROUND(SUM((CASE Pay.PersonelDecExt.FirstMounth WHEN 0 THEN ISNULL(PersonelDecExt.DayQuntity,0) ELSE  -1 * ISNULL(PersonelDecExt.DayQuntity,0) END)) 
                                                                                                        + ROUND(SUM((CASE Pay.PersonelDecExt.FirstMounth WHEN 0 THEN Pay.PersonelDecExt.DayTime ELSE  -1 * Pay.PersonelDecExt.DayTime END))
                                                                                                         + SUM((CASE Pay.PersonelDecExt.FirstMounth WHEN 0 THEN Pay.PersonelDecExt.Minute_ ELSE  -1 * Pay.PersonelDecExt.Minute_ END)) 
                                                                                                        / 60, 3) / FormsInfo_1.Amount, 3), 3) AS AllDay, 
                                                                                                        ROUND
                                                                                                            ( 
																											--CASE @FormType WHEN 2 THEN
																											--      (SELECT FormsInfo_1.StandardDays*SUM(FunctionDay)/365 AS FunctionDay FROM Pay.Functions  WHERE (PersonelNo = Pay.PersonelDecExt.PersonelNo))
																											--ELSE FormsInfo_1.StandardTimes END
																											 Pay.getleave (PersonelDecExt.PersonelNo  ,  @MounthFrom ,  @MounthTo   ,FormsInfo_1.forminfoid)
                                                                                                        + ROUND(SUM((CASE Pay.PersonelDecExt.FirstMounth WHEN 0 THEN Pay.PersonelDecExt.DayQuntity ELSE - 1 * Pay.PersonelDecExt.DayQuntity
                                                                                                         END)) 
                                                                                                        + ROUND(SUM((CASE Pay.PersonelDecExt.FirstMounth WHEN 0 THEN Pay.PersonelDecExt.DayTime ELSE - 1 * Pay.PersonelDecExt.DayTime
                                                                                                         END)) 
                                                                                                        + SUM((CASE Pay.PersonelDecExt.FirstMounth WHEN 0 THEN Pay.PersonelDecExt.Minute_ ELSE - 1 * Pay.PersonelDecExt.Minute_ END)) 
                                                                                                        / 60, 3) / FormsInfo_1.Amount, 3), 3) AS RemainDay 
                                                                                  FROM         Pay.PersonelDecExt LEFT OUTER JOIN
                                                                                                         Pay.FormsInfo AS FormsInfo_1 ON Pay.PersonelDecExt.FormInfoID = FormsInfo_1.FormInfoID
                                                                                  WHERE     (PersonelDecExt.FirstMounth BETWEEN @MounthFrom AND @MounthTo) AND (FormsInfo_1.FormType = 16) AND 
                                                                                                        (FormsInfo_1.InfoID BETWEEN @InfoIDFrom AND @InfoIDTo)
                                                                                  GROUP BY FormsInfo_1.FormInfoID ,PersonelDecExt.PersonelNo, FormsInfo_1.InfoName_L1, FormsInfo_1.InfoName_L2, FormsInfo_1.StandardDays, 
                                                                                                        FormsInfo_1.StandardTimes,FormsInfo_1.Amount) AS OffTime) AS derivedtbl_1 ON InterdictForUse.PersonelNo = derivedtbl_1.PersonelNo
                             WHERE     (FormsInfo.FormType = 47) AND (FormsInfo.InfoID = 3)
                             GROUP BY derivedtbl_1.FormInfoID , InterdictForUse.PersonelNo, derivedtbl_1.InfoName_L1, derivedtbl_1.InfoName_L2, derivedtbl_1.Day, derivedtbl_1.Time, derivedtbl_1.Minute_, 
                                                   derivedtbl_1.AllTime, derivedtbl_1.AllDay, derivedtbl_1.RemainDay, derivedtbl_1.Talab, derivedtbl_1.Bedehi) 
                      AS derivedtbl_OffTime ON Pay.PersonelInfo.PersonelNo = derivedtbl_OffTime.PersonelNo
 LEFT OUTER JOIN
                       Pay.FormsInfo AS FormsInfo_EmployType ON I.EmployTypeID = FormsInfo_EmployType.FormInfoID

WHERE (I.State<50)
AND (PersonelInfo.PersonelNo BETWEEN  @PersonelNoFrom AND @PersonelNoTo) 
AND (Pay.ChkTick(@OfficeCodes,I.OfficeCode)=1)
AND ((Pay.ChkTick(@insuranceIDs,I.insuranceID)=1)or(isnull(I.insuranceID,0)=0))			
AND (FormsInfoPersonelState.InfoID BETWEEN @PersonelStateFrom AND @PersonelStateTo)
AND ((I.ProjectID between @ProjectIDFrom and @ProjectIDTo)OR (ProjectID=0))
AND (FormsInfo_EmployType.InfoID BETWEEN @EmployTypFROM AND @EmployTypTo ) 


)
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
--------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------
SET QUOTED_IDENTIFIER ON 
GO
--SET ANSI_NULLS OFF 
GO
CREATE FUNCTION Pay.[MakeDocDecExtOnMounth] (
                                           @OfficeCodes varchar(8000),  @EmployTypFROM int=0,@EmployTypTo int=99999, @Mounth int=12  ,
										   @MounthFrom int , @MounthTo int, @PersonelNoFrom int, @PersonelNoTo int
                                          , @InfoIDFrom int, @InfoIDTo int
                                          , @PersonelStateFrom int, @PersonelStateTo int, @ProjectIDFrom int, @ProjectIDTo int ,@FormType int=2
										  ,@YearMounth char(10)='94/11'  , @insuranceIDs varchar(8000)='0'  )  
RETURNS table AS 
return
(
SELECT	 PersonelDecExt.PersonelNo,
     CAST(   CASE Pay.FormTypes.TopicCodeKind
		WHEN 0 THEN 0
		WHEN 2 THEN FormsInfo_59.AccTopicCode
		WHEN 3 THEN FormsInfo_Project.AccTopicCode
		WHEN 4 THEN FormsInfo_Office.AccTopicCode
		WHEN 6 THEN Pay.PersonelInfo.AccTopicCode
		--WHEN 8 THEN FormsInfo_Proc.AccTopicCode
	end AS bigint)AS AccTopicCode,
	CASE Pay.FormTypes.DetailCodeKind
		WHEN 0 THEN 0
		WHEN 2 THEN FormsInfo_59.AccDetailCode
		WHEN 3 THEN FormsInfo_Project.AccDetailCode
		WHEN 4 THEN FormsInfo_Office.AccDetailCode
		WHEN 6 THEN Pay.PersonelInfo.AccDetailCode
		--WHEN 8 THEN FormsInfo_Proc.AccDetailCode
	end AS AccDetailCode,
	CASE Pay.FormTypes.CTopicCodeKind
		WHEN 0 THEN 0
		WHEN 2 THEN FormsInfo_59.AccCTopicCode
		WHEN 3 THEN FormsInfo_Project.AccCTopicCode
		WHEN 4 THEN FormsInfo_Office.AccCTopicCode
		WHEN 6 THEN Pay.PersonelInfo.AccCTopicCode
		--WHEN 8 THEN FormsInfo_Proc.AccCTopicCode
	end AS AccCTopicCode,
	CASE  Pay.FormTypes.CTopicCode2Kind
		WHEN 0 THEN 0
		WHEN 2 THEN FormsInfo_59.AccCTopicCode2
		WHEN 3 THEN FormsInfo_Project.AccCTopicCode2
		WHEN 4 THEN FormsInfo_Office.AccCTopicCode2
		WHEN 6 THEN Pay.PersonelInfo.AccCTopicCode2
		--WHEN 8 THEN FormsInfo_Proc.AccCTopicCode2
    	WHEN 11 THEN StandardTimes.AccCTopicCode2
    	--WHEN 12 THEN st.AccCTopicCode2
	end AS AccCTopicCode2,
	CASE  Pay.FormTypes.CTopicCode3Kind
		WHEN 0 THEN 0
		WHEN 2 THEN FormsInfo_59.AccCTopicCode3
		WHEN 3 THEN FormsInfo_Project.AccCTopicCode3
		WHEN 4 THEN FormsInfo_Office.AccCTopicCode3
		WHEN 6 THEN Pay.PersonelInfo.AccCTopicCode3
		--WHEN 8 THEN FormsInfo_Proc.AccCTopicCode3
    	WHEN 10 THEN StandardTimes.AccCTopicCode3
	end AS AccCTopicCode3,
	ABS(SUM(ISNULL(PersonelDecExt.TalabPrice,0)-ISNULL(PersonelDecExt.BedehiPrice,0))) AS debt, ---BedehiPrice
	0 AS credit 
FROM            Pay.Fn_DecExtOnMounth(@OfficeCodes, @EmployTypFROM, @EmployTypTo, @MounthFrom, @MounthTo, @PersonelNoFrom, @PersonelNoTo, @InfoIDFrom, @InfoIDTo, @PersonelStateFrom, 
                         @PersonelStateTo, @ProjectIDFrom, @ProjectIDTo, @FormType , @insuranceIDs , left(@YearMounth,4) ,left(@YearMounth,4)  ) AS PersonelDecExt INNER JOIN
                          Pay.FormsInfo ON PersonelDecExt.FormInfoID = Pay.FormsInfo.FormInfoID INNER JOIN
                         Pay.PersonelInfo ON PersonelDecExt.PersonelNo = Pay.PersonelInfo.PersonelNo CROSS JOIN
                             (SELECT     FormType,   AccTopicCode, AccDetailCode, AccCTopicCode, AccCTopicCode2, AccCTopicCode3
                                FROM             Pay.FormsInfo AS FormsInfo_1
                                WHERE        (FormType = 59) AND (InfoID = 3)) AS FormsInfo_59 INNER JOIN
                         Pay.InterdictForUseWithOffice(@YearMounth, 0, 2, @PersonelNoFrom, @PersonelNoTo) AS I ON PersonelDecExt.PersonelNo = I.PersonelNo LEFT OUTER JOIN
                          Pay.FormsInfo AS FormsInfo_Office ON I.OfficeCode = FormsInfo_Office.FormInfoID
						 LEFT OUTER JOIN  Pay.FormsInfo AS FormsInfo_Project ON I.ProjectID = FormsInfo_Project.FormInfoID 
						  INNER JOIN
                         Pay.FormTypes ON FormsInfo_59.FormType =Pay.FormTypes.FormType INNER JOIN
                      Pay.StandardTimes ON @Mounth = Pay.StandardTimes.InfoID 
WHERE        (Pay.ChkTick(@OfficeCodes, FormsInfo_Office.FormInfoID) = 1)
			AND ((Pay.ChkTick(@insuranceIDs,I.insuranceID)=1)or(isnull(I.insuranceID,0)=0))			



Group By  PersonelDecExt.PersonelNo,
        CASE Pay.FormTypes.TopicCodeKind
		WHEN 0 THEN 0
		WHEN 2 THEN FormsInfo_59.AccTopicCode
		WHEN 3 THEN FormsInfo_Project.AccTopicCode
		WHEN 4 THEN FormsInfo_Office.AccTopicCode
		WHEN 6 THEN Pay.PersonelInfo.AccTopicCode
--		WHEN 8 THEN FormsInfo_Proc.AccTopicCode
	end ,
	CASE Pay.FormTypes.DetailCodeKind
		WHEN 0 THEN 0
		WHEN 2 THEN FormsInfo_59.AccDetailCode
		WHEN 3 THEN FormsInfo_Project.AccDetailCode
		WHEN 4 THEN FormsInfo_Office.AccDetailCode
		WHEN 6 THEN Pay.PersonelInfo.AccDetailCode
	--	WHEN 8 THEN FormsInfo_Proc.AccDetailCode
	end ,
	CASE Pay.FormTypes.CTopicCodeKind
		WHEN 0 THEN 0
		WHEN 2 THEN FormsInfo_59.AccCTopicCode
		WHEN 3 THEN FormsInfo_Project.AccCTopicCode
		WHEN 4 THEN FormsInfo_Office.AccCTopicCode
		WHEN 6 THEN Pay.PersonelInfo.AccCTopicCode
	--	WHEN 8 THEN FormsInfo_Proc.AccCTopicCode
	end ,
	CASE  Pay.FormTypes.CTopicCode2Kind
		WHEN 0 THEN 0
		WHEN 2 THEN FormsInfo_59.AccCTopicCode2
		WHEN 3 THEN FormsInfo_Project.AccCTopicCode2
		WHEN 4 THEN FormsInfo_Office.AccCTopicCode2
		WHEN 6 THEN Pay.PersonelInfo.AccCTopicCode2
	--	WHEN 8 THEN FormsInfo_Proc.AccCTopicCode2
    	WHEN 11 THEN StandardTimes.AccCTopicCode2
    	--WHEN 12 THEN st.AccCTopicCode2
	end ,
	CASE  Pay.FormTypes.CTopicCode3Kind
		WHEN 0 THEN 0
		WHEN 2 THEN FormsInfo_59.AccCTopicCode3 
		WHEN 3 THEN FormsInfo_Project.AccCTopicCode3
		WHEN 4 THEN FormsInfo_Office.AccCTopicCode3
		WHEN 6 THEN Pay.PersonelInfo.AccCTopicCode3
	--	WHEN 8 THEN FormsInfo_Proc.AccCTopicCode3
    	WHEN 10 THEN StandardTimes.AccCTopicCode3
		end ,FormTypes.TopicCodeKind,FormsInfo_59.AccTopicCode,FormsInfo_Project.AccTopicCode,FormsInfo_Office.AccTopicCode,PersonelInfo.AccTopicCode 

--------------------------------------------------
UNION ALL
--------------------------------------------------
SELECT	 PersonelDecExt.PersonelNo,
    CASE FormsInfo_47.TopicCodeKind
		WHEN 0 THEN pay_TopicCode 
		WHEN 13 THEN CASE WHEN Pay.PersonelInfo.AccTopicCode =0 THEN  pay_TopicCode  ELSE  Pay.PersonelInfo.AccTopicCode END 
     END AS pay_TopicCode,
	CASE Pay.FormTypes.DetailCodeKind
		WHEN 0 THEN 0 
		WHEN 2 THEN pay_DetailCode 
		WHEN 6 THEN Pay.PersonelInfo.AccDetailCode
		WHEN 10 THEN CASE WHEN pay_DetailCode =0 THEN Pay.PersonelInfo.AccDetailCode  ELSE  pay_DetailCode END  
		ELSE 0 END AS pay_DetailCode,
	CASE Pay.FormTypes.CTopicCodeKind
		WHEN 0 THEN 0
		WHEN 2 THEN pay_CTopicCode
		WHEN 3 THEN FormsInfo_Project.AccCTopicCode 
		WHEN 4 THEN FormsInfo_Office.AccCTopicCode
	ELSE 0 END AS pay_CTopicCode,
		pay_CTopicCode2,pay_CTopicCode3,
	0 AS debt, ABS(SUM(ISNULL(PersonelDecExt.TalabPrice,0)-ISNULL(PersonelDecExt.BedehiPrice,0))) AS credit  ---BedehiPrice

FROM            Pay.Fn_DecExtOnMounth(@OfficeCodes, @EmployTypFROM, @EmployTypTo, @MounthFrom, @MounthTo, @PersonelNoFrom, @PersonelNoTo, @InfoIDFrom, @InfoIDTo, @PersonelStateFrom, 
                         @PersonelStateTo, @ProjectIDFrom, @ProjectIDTo, @FormType, @insuranceIDs ,left(@YearMounth,4)  ,left(@YearMounth,4)  ) AS PersonelDecExt INNER JOIN
                          Pay.FormsInfo ON PersonelDecExt.FormInfoID = Pay.FormsInfo.FormInfoID INNER JOIN
                         Pay.PersonelInfo ON PersonelDecExt.PersonelNo = Pay.PersonelInfo.PersonelNo CROSS JOIN
                             (SELECT        Pay.FormsInfo.FormType, Pay.FormsInfo.AccTopicCode AS pay_TopicCode, Pay.FormsInfo.AccDetailCode AS pay_DetailCode, Pay.FormsInfo.AccCTopicCode AS pay_CTopicCode, Pay.FormsInfo.AccCTopicCode2 AS pay_CTopicCode2, 
                         Pay.FormsInfo.AccCTopicCode3 AS pay_CTopicCode3,Pay.FormTypes.TopicCodeKind
FROM             Pay.FormsInfo INNER JOIN
                         Pay.FormTypes ON Pay.FormsInfo.FormType =Pay.FormTypes.FormType
WHERE        (FormsInfo.FormType = 47) AND (FormsInfo.InfoID = 3)) AS FormsInfo_47 INNER JOIN
                         Pay.InterdictForUseWithOffice(@YearMounth, 0, 2, @PersonelNoFrom, @PersonelNoTo) AS InterdictForUseWithOffice ON PersonelDecExt.PersonelNo = InterdictForUseWithOffice.PersonelNo 
						 LEFT OUTER JOIN  Pay.FormsInfo AS FormsInfo_Office ON InterdictForUseWithOffice.OfficeCode = FormsInfo_Office.FormInfoID 
						 LEFT OUTER JOIN  Pay.FormsInfo AS FormsInfo_Project ON InterdictForUseWithOffice.ProjectID = FormsInfo_Project.FormInfoID 
						 INNER JOIN Pay.FormTypes ON FormsInfo_47.FormType =Pay.FormTypes.FormType
WHERE        (Pay.ChkTick(@OfficeCodes, FormsInfo_Office.FormInfoID) = 1)
			AND ((Pay.ChkTick(@insuranceIDs,InterdictForUseWithOffice.insuranceID)=1)or(isnull(InterdictForUseWithOffice.insuranceID,0)=0))			

group by  PersonelDecExt.PersonelNo,
        CASE FormsInfo_47.TopicCodeKind
		WHEN 0 THEN pay_TopicCode 
		WHEN 13 THEN CASE WHEN Pay.PersonelInfo.AccTopicCode =0 THEN  pay_TopicCode  ELSE  Pay.PersonelInfo.AccTopicCode END 
     END ,	
	CASE Pay.FormTypes.DetailCodeKind
		WHEN 0 THEN 0 
		WHEN 2 THEN pay_DetailCode 
		WHEN 6 THEN Pay.PersonelInfo.AccDetailCode 
		WHEN 10 THEN CASE WHEN pay_DetailCode = 0 THEN Pay.PersonelInfo.AccDetailCode  ELSE  pay_DetailCode END 
		ELSE 0 END,
		CASE Pay.FormTypes.CTopicCodeKind
		WHEN 0 THEN 0
		WHEN 2 THEN pay_CTopicCode
		WHEN 3 THEN FormsInfo_Project.AccCTopicCode 
		WHEN 4 THEN FormsInfo_Office.AccCTopicCode
	ELSE 0 END ,pay_CTopicCode2,pay_CTopicCode3 
)
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
--------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------
SET QUOTED_IDENTIFIER ON 
GO
--SET ANSI_NULLS OFF 
GO

CREATE FUNCTION Pay.Fn_CalculateSalaryRange
	 ( @EmployTypeID int =52 , @FormInfoID varchar(1000)='296,141,2866,111,6,83,38,371,371,20,52,141,447,947,436,1323', @jobCode int =1 )  
RETURNS  table  AS 
return  (
	SELECT        FormInfoItems.SalaryID, Pay.FormsInfo.InfoName_L1, Pay.FormsInfo.InfoName_L2, FormInfoItems.Amount, Pay.FormsInfo.AccTopicCode, Pay.FormsInfo.AccDetailCode, Pay.FormsInfo.AccCTopicCode, Pay.FormsInfo.AccCTopicCode2
	FROM            FormInfoItems INNER JOIN
							  Pay.FormsInfo ON FormInfoItems.SalaryID = Pay.FormsInfo.FormInfoID
	WHERE        (FormInfoItems.FormInfoID IN
								 (SELECT        part
									FROM            Pay.SplitString(@FormInfoID, ',') AS SplitString_1)) AND (FormInfoItems.SalaryID IN
								 (SELECT        Pay.SalaryRange.SalaryID
									FROM             Pay.FormsInfo AS FormsInfo_2 INNER JOIN
															 Pay.SalaryRange ON FormsInfo_2.FormInfoID = Pay.SalaryRange.FormInfoID
									WHERE        (FormsInfo_2.FormInfoID = @EmployTypeID)))
	UNION ALL
	SELECT        jobsSalaryRanges.SalaryID, FormsInfo_1.InfoName_L1, FormsInfo_1.InfoName_L2, jobsSalaryRanges.Amount, FormsInfo_1.AccTopicCode, FormsInfo_1.AccDetailCode, FormsInfo_1.AccCTopicCode, 
							 FormsInfo_1.AccCTopicCode2
	FROM            jobsSalaryRanges INNER JOIN
							  Pay.FormsInfo AS FormsInfo_1 ON jobsSalaryRanges.SalaryID = FormsInfo_1.FormInfoID
	WHERE        (jobsSalaryRanges.jobCode = @jobCode)
)
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
--------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------

SET QUOTED_IDENTIFIER ON 
GO
--SET ANSI_NULLS OFF 
GO

CREATE PROCEDURE Pay.[Sp_SummerySalaryList] 
 @ArchiveIDFrom Bigint,
 @ArchiveIDTo Bigint,
 @FromOfficeCode Bigint,
 @ToOfficeCode Bigint,
 @FromPersonelNO Bigint,
 @ToPersonelNO Bigint,
 @EmployTypeIDs varchar(800),@LabelIDFrom  int=0,@LabelIDTo  int=0 ,@YearIDFrom  int=1402,@YearIDTo  int=1402
 
AS
BEGIN
DECLARE @SQL VARCHAR(MAX)
SET @SQL =''
SELECT      @SQL=@SQL + '['+(Rpt_1.InfoName_L1)+'],'
FROM            Pay.RptComprasionSub(@ArchiveIDFrom, @ArchiveIDTo ,1,12,@EmployTypeIDs ,@LabelIDFrom  ,@LabelIDTo ,@YearIDFrom  ,@YearIDTo   ) AS Rpt_1 INNER JOIN
                          Pay.FormsInfo ON Rpt_1.SalaryID = Pay.FormsInfo.FormInfoID
WHERE (Rpt_1.OfficeCode BETWEEN @FromOfficeCode AND @ToOfficeCode)
AND (Rpt_1.PersonelNO BETWEEN @FromPersonelNO AND @ToPersonelNO)
AND (SalaryID<>0)


GROUP BY Rpt_1.InfoName_L1--,SalaryID--,ShowColumn
order BY min(SalaryID)
  SET @SQL =LEFT(@SQL,LEN(@SQL)-1)


EXEC('SELECT * 
FROM 
(
SELECT        Rpt_1.PersonelNO AS [ش.پرسنل], Pay.PersonelInfo.lastname_L1 + '' '' + Pay.PersonelInfo.Name_L1 AS [مشخصات]
              , Rpt_1.InfoName_L1, Rpt_1.Price 
			  --,  case when ShowColumn = 1 then Price else 0 end as  Price2
			  --,  case when ShowColumn = 6 then Price else 0 end as  Price3
FROM            Pay.RptComprasionSub('+@ArchiveIDFrom+', '+@ArchiveIDTo+' ,1,12,'''+@EmployTypeIDs+''','+@LabelIDFrom  +', '+@LabelIDTo+','+@YearIDFrom  +', '+@YearIDTo+') AS Rpt_1 INNER JOIN
                         Pay.PersonelInfo ON Rpt_1.PersonelNO = Pay.PersonelInfo.PersonelNo INNER JOIN
                          Pay.FormsInfo ON Rpt_1.SalaryID = Pay.FormsInfo.FormInfoID
WHERE (Rpt_1.OfficeCode BETWEEN '+@FromOfficeCode+' AND '+@ToOfficeCode+')
AND (Rpt_1.PersonelNO BETWEEN '+@FromPersonelNO+' AND '+@ToPersonelNO+')


) src  
pivot
(
  SUM(Price) 
  FOR InfoName_L1 in ( '+@SQL+' )    
) PIV
'
)

END

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO


----------------------------------------------------------------------
----------------------------------------------------------------------
SET QUOTED_IDENTIFIER ON 
GO
--SET ANSI_NULLS OFF 
GO
CREATE FUNCTION Pay.FN_CalcleaveCount
------------------------------- پارامتر ها بترتيب  شامل  1- تركيب سال و ماه 2- نوع عوامل حقوق و مزايا  (  در معرفي انواع فرمها  = همان نوع عوامل حقوق و مزايا ميباشد . (‏ - ----------------------
	 ( @FormInfoID int , @PersonelNoFrom int, @PersonelNoTo Bigint, @OfficeInfoIDFrom int, @OfficeInfoIDTo int, @InterTypeFrom int, @InterTypeTo int)  
RETURNS  table  AS 
return  (
SELECT        Pay.PersonelDecExt.DecExtID, Pay.PersonelDecExt.PersonelNo, Pay.PersonelDecExt.EmployeeAmount, Pay.PersonelDecExt.FirstMounth, Pay.PersonelDecExt.EndMounth, Pay.PersonelDecExt.DayQuntity, Pay.PersonelDecExt.EmployerAmount,
                         Pay.PersonelDecExt.FormInfoID2, Pay.PersonelDecExt.PaymentLoan, Pay.PersonelDecExt.OfficeCode, Pay.PersonelDecExt.ProjectInfoID, Pay.PersonelDecExt.OfficeInfoID, Pay.PersonelDecExt.EndDate, Pay.PersonelDecExt.DocNoBonus,
                         Pay.PersonelDecExt.DocDateBonus, Pay.PersonelDecExt.DocNoAnnuity, Pay.PersonelDecExt.DocDateAnnuity, Pay.PersonelDecExt.EmployeeAmount - Pay.PersonelDecExt.PaymentLoan AS BonusPayAble,
                         Pay.PersonelInfo.lastName_L1 + '  ' + Pay.PersonelInfo.name_L1 AS PersonName_L1, Pay.PersonelInfo.name_L1, Pay.PersonelInfo.lastName_L1, FormsInfo__Project.InfoName_L1 AS ProjectName_L1,
                         FormsInfo__Project.InfoName_L2 AS ProjectName_L2, FormsInfo__Office.InfoName_L1 AS OfficeName_L1, FormsInfo__Office.InfoName_L2 AS OfficeName_L2
						 ,PersonelDecExt.leaveCount,PersonelDecExt.leavePrice,Talab, TalabPrice
FROM            Pay.PersonelDecExt INNER JOIN
                         Pay.PersonelInfo ON Pay.PersonelDecExt.PersonelNo = Pay.PersonelInfo.PersonelNo INNER JOIN
                          Pay.FormsInfo AS FormsInfo__Project ON Pay.PersonelDecExt.FormInfoID2 = FormsInfo__Project.FormInfoID INNER JOIN
                          Pay.FormsInfo AS FormsInfo__Office ON Pay.PersonelDecExt.OfficeCode = FormsInfo__Office.FormInfoID
						 left join Pay.Fn_DecExtOnMounth( '' , DEFAULT  , DEFAULT , 0  , 12 ,@PersonelNoFrom , @PersonelNoTo , 1 , 1 , 0 , 999999999 , 0 , 999999999  ,2 , '' ,1300 ,1499 ) AS Fn_Dec on
       Pay.PersonelDecExt.PersonelNo =  Fn_Dec.PersonelNo and Pay.PersonelDecExt.OfficeCode = Fn_Dec.OfficeID
WHERE        (PersonelDecExt.FormInfoID = @FormInfoID) AND (PersonelDecExt.PersonelNo BETWEEN @PersonelNoFrom AND @PersonelNoTo) AND (PersonelDecExt.OfficeInfoID BETWEEN @OfficeInfoIDFrom AND @OfficeInfoIDTo) AND
                         (PersonelDecExt.PersonelNo IN
                             (SELECT        Pay.Interdicts.PersonelNo
                                FROM            Pay.Interdicts LEFT OUTER JOIN
                                                          Pay.FormsInfo AS FormsInfo_1 ON Pay.Interdicts.EmployTypeID = FormsInfo_1.FormInfoID
WHERE        (Interdicts.State < 50) AND (Interdicts.InterdicType = 0)
AND (FormsInfo_1.InfoID BETWEEN @InterTypeFrom AND @InterTypeTo)))


)
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
----------------------------------------------------------------------
----------------------------------------------------------------------


-------------------------------------------------------------------------------------------------------
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
CREATE FUNCTION Pay.[Insourance]   ( @InterdictType int=0 ,@Mounth int =8,@Year int=84,@YearMounth varchar(7) ='81/01' 
	,@PersonelNoFROM int=0,@PersonelNoTo int=9999999 ,@ArchiveID int=0)  
RETURNS  table  AS 
Return  (
--------------------------------------------- شروع محاسبه 30 درصد حق بيمه قابل پرداخت به تامين اجتماعي  --------------------------------------------------------------------------------------
SELECT insuranceID,FormInfoID,PersonelNo,ProjectID,	OfficeCode,JobCode, SalaryID,Mounth, proccode,
round (Price * Employeeshare/100  ,0) +
round (Price * Employershare/100  ,0) +
round (Price * InactionInsuranceShare/100  ,0) +
round (Price * HardShipPercent/100  ,0)  


AS  Price , Bedbes, CalCulateKind,AccTopicCode,AccDetailCode,AccCTopicCode,
	AccCTopicCode2,  AccCTopicCode3,  ShowListKind
FROM 
(

SELECT  IUWP.insuranceID,IUWP.FormInfoID,
		CIWP.PersonelNo,CIWP.ProjectID,
		CIWP.OfficeCode,CIWP.JobCode,
        IUWP.FormInfoID AS SalaryID,CIWP.Mounth,0 AS proccode,

 SUM( CASE 
	WHEN IUWP.insuranceUpPerson < ContainInsourance_Person.AllContainInsourance
		then (CIWP.ContainInsourance *IUWP.insuranceUpPerson ) 
				/ ContainInsourance_Person.AllContainInsourance
		ELSE CIWP.ContainInsourance   END )	AS  Price ,

	2 AS Bedbes,10 AS CalCulateKind,IUWP.AccTopicCode
	--,IUWP.AccDetailCode
	,CASE Max(T.DetailCodeKind) 
	   WHEN  11 THEN case when  IUWP.AccDetailCode = -1 then Max(F.AccDetailCode) else  IUWP.AccDetailCode end
	 ELSE IUWP.AccDetailCode END  AS AccDetailCode

	,	IUWP.AccCTopicCode,
	IUWP.AccCTopicCode2,  IUWP.AccCTopicCode3,5 AS ShowListKind ,
				  MAX( IUWP.Employeeshare ) AS  Employeeshare ,
			  MAX( IUWP.Employershare ) AS Employershare , 
			  MAX( IUWP.InactionInsuranceShare ) AS InactionInsuranceShare ,
			 MAX( IUWP.HardShipPercent ) AS HardShipPercent 
FROM         Pay.InsouranceUpWithPerson(@Mounth,@PersonelNoFrom,@PersonelNoTo , @YearMounth ) IUWP INNER JOIN
                       Pay.ContainInsouranceWithPerson(@Mounth,@Year,@YearMounth,@InterdictType,@PersonelNoFrom,@PersonelNoTo ,@ArchiveID  ) CIWP ON 
                      IUWP.PersonelNo = CIWP.PersonelNO INNER JOIN
                      ContainInsourance_Person(@Mounth,@Year,@YearMounth,@InterdictType,@PersonelNoFrom,@PersonelNoTo ,@ArchiveID ) ContainInsourance_Person ON 
                      CIWP.PersonelNO = ContainInsourance_Person.PersonelNO
					   INNER JOIN  Pay.FormsInfo AS F ON F.FormInfoID = IUWP.FormInfoID
					   INNER JOIN Pay.FormTypes AS T ON T.FormType = F.FormType
					   INNER JOIN Pay.PersonelInfo AS P ON P.PersonelNo = CIWP.PersonelNo

GROUP BY IUWP.insuranceID,IUWP.FormInfoID,CIWP.PersonelNo,
                      CIWP.OfficeCode,CIWP.JobCode,
                      CIWP.ProcCode ,CIWP.Mounth,
                      CIWP.ProjectID,IUWP.AccTopicCode,IUWP.AccDetailCode,IUWP.AccCTopicCode,
                        IUWP.AccCTopicCode2,IUWP.AccCTopicCode3
						,P.AccDetailCode
						) AS SelectTxt)
----------------------------------پايان محاسبه 30 در صد حق بيمه  --------------------------------------------


GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
SET QUOTED_IDENTIFIER OFF 
GO
--SET ANSI_NULLS OFF 
GO
CREATE FUNCTION Pay.[InsouranceContain]   (@InterdictType int=0,@Mounth int =6,@Year int=84,@YearMounth varchar(7) ='81/01' 
	,@PersonelNoFROM int=0,@PersonelNoTo int=9999999 ,@ArchiveID int=0 )  
RETURNS  table  AS 
Return  (
--------------------------------------------------------------------------------------شروع محاسبه مشمول حق بيمه   --------------------------------------------------------------------------------------

SELECT     InsouranceUpWithPerson.insuranceID,InsouranceUpWithPerson.FormInfoID,ContainInsouranceWithPerson.PersonelNo,
                      ContainInsouranceWithPerson.ProjectID,ContainInsouranceWithPerson.OfficeCode,ContainInsouranceWithPerson.JobCode,
                      
                      InsouranceUpWithPerson.FormInfoID AS SalaryID,ContainInsouranceWithPerson.Mounth,ContainInsouranceWithPerson.ProcCode  AS proccode,
round (MAX( CASE 
WHEN InsouranceUpWithPerson.insuranceUpPerson < ContainInsourance_Person.AllContainInsourance
then (ContainInsouranceWithPerson.ContainInsourance *InsouranceUpWithPerson.insuranceUpPerson ) / ContainInsourance_Person.AllContainInsourance
	ELSE ContainInsouranceWithPerson.ContainInsourance   END),0) AS  Price ,

--	 MAX(ContainInsouranceWithPerson.ContainInsourance) AS  Price ,
0 AS Bedbes,10 AS CalCulateKind,0 AS  AccTopicCode,0 AS  AccDetailCode,0 AS  AccCTopicCode,
                      0 AS   AccCTopicCode2, 0 AS   AccCTopicCode3,3 AS ShowListKind

FROM         InsouranceUpWithPerson(@Mounth,@PersonelNoFrom,@PersonelNoTo , @YearMounth ) InsouranceUpWithPerson INNER JOIN
                      ContainInsouranceWithPerson(@Mounth,@Year,@YearMounth,@InterdictType,@PersonelNoFrom,@PersonelNoTo , @ArchiveID  ) ContainInsouranceWithPerson ON 
                      InsouranceUpWithPerson.PersonelNo = ContainInsouranceWithPerson.PersonelNO INNER JOIN
                      ContainInsourance_Person(@Mounth,@Year,@YearMounth,@InterdictType,@PersonelNoFrom,@PersonelNoTo , @ArchiveID  ) ContainInsourance_Person ON 
                      ContainInsouranceWithPerson.PersonelNO = ContainInsourance_Person.PersonelNO

GROUP BY InsouranceUpWithPerson.insuranceID,InsouranceUpWithPerson.FormInfoID,ContainInsouranceWithPerson.PersonelNo,
                      ContainInsouranceWithPerson.OfficeCode,ContainInsouranceWithPerson.JobCode,
                      ContainInsouranceWithPerson.ProcCode ,ContainInsouranceWithPerson.Mounth,
                      ContainInsouranceWithPerson.ProjectID,AccTopicCode,AccDetailCode,AccCTopicCode,
                        AccCTopicCode2 )

------------------------------------------------------------------------------------------------------پايان محاسبه    حق بيمه  -------------------------------------------------------------------------------------
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
SET QUOTED_IDENTIFIER ON 
GO
--SET ANSI_NULLS OFF 
GO
GO
SET QUOTED_IDENTIFIER ON 
GO
--SET ANSI_NULLS OFF 
GO
CREATE FUNCTION Pay.[InsouranceEmployeeshare]   (@InterdictType int=0,@Mounth int =8,@Year int=84,
		@YearMounth varchar(7) ='81/01' ,@PersonelNoFROM int=0,@PersonelNoTo int=9999999 ,@ArchiveID int=00 )  
RETURNS  table  AS 
Return  (
---------------------------------------------------------------------------------------------شروع محاسبه بيمه سهم كارمند ----------------------------------------------------------------------------------------------
SELECT     IUWP.insuranceID,IUWP.FormInfoID,CIWP.PersonelNo,
                      CIWP.ProjectID,CIWP.OfficeCode,CIWP.JobCode,
		 IUWP.FormInfoID AS SalaryID,CIWP.Mounth,0 AS proccode,

round (SUM( CASE 
WHEN IUWP.insuranceUpPerson <ContainInsourance_Person.AllContainInsourance
then (CIWP.ContainInsourance *IUWP.insuranceUpPerson ) / ContainInsourance_Person.AllContainInsourance 
 	 * IUWP.Employeeshare /100
ELSE CIWP.ContainInsourance  * IUWP.Employeeshare /100 END ),0)
 AS  Price ,

2 AS Bedbes,10 AS CalCulateKind,IUWP.AccTopicCode
--,AccDetailCode
	,CASE Max(T.DetailCodeKind) 
	   WHEN  11 THEN case when  IUWP.AccDetailCode = -1 then Max(F.AccDetailCode) else  IUWP.AccDetailCode end
	 ELSE IUWP.AccDetailCode END  AS AccDetailCode
,IUWP.AccCTopicCode,
                       IUWP.AccCTopicCode2,IUWP.AccCTopicCode3,CIWP.ShowListKind  AS ShowListKind--2 AS ShowListKind
FROM         InsouranceUpWithPerson(@Mounth,@PersonelNoFrom,@PersonelNoTo , @YearMounth ) IUWP INNER JOIN
                      ContainInsouranceWithPerson(@Mounth,@Year,@YearMounth,@InterdictType,@PersonelNoFrom,@PersonelNoTo  , @ArchiveID    ) CIWP ON 
                      IUWP.PersonelNo = CIWP.PersonelNO INNER JOIN
                      ContainInsourance_Person(@Mounth,@Year,@YearMounth,@InterdictType,@PersonelNoFrom,@PersonelNoTo , @ArchiveID ) ContainInsourance_Person ON 
                      CIWP.PersonelNO = ContainInsourance_Person.PersonelNO
					   INNER JOIN  Pay.FormsInfo AS F ON F.FormInfoID = IUWP.FormInfoID
					   INNER JOIN Pay.FormTypes AS T ON T.FormType = F.FormType
					   INNER JOIN Pay.PersonelInfo AS P ON P.PersonelNo = CIWP.PersonelNo
GROUP BY IUWP.insuranceID,IUWP.FormInfoID,CIWP.PersonelNo,
                      CIWP.OfficeCode,CIWP.JobCode,CIWP.Mounth,
                      CIWP.ProjectID,IUWP.AccTopicCode,IUWP.AccDetailCode,IUWP.AccCTopicCode, IUWP.AccCTopicCode2, IUWP.AccCTopicCode3 ,
					  CIWP.ShowListKind --new
----------------------------------------------------------------------------------------------پايان محاسبه بيمه سهم كارمند ----------------------------------------------------------------------------------------------
)
  
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 


GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
--SET ANSI_NULLS OFF 
GO
CREATE FUNCTION Pay.TaxInsouranceExport  (@Mounth int=9,@Year int=84,@YearMounth varchar(7) =[84/01],
				@InterdictType int=0,@PersonelNoFROM int=0,@PersonelNoTo int=9999999,
				@bedbes int=0,@ShowListKind int=0  ,@ArchiveID int=00 )  

RETURNS  table  AS 
Return  (
SELECT     FunctionID,FormInfoID,PersonelNo,ProjectID,OfficeCode,JobCode,SalaryID,Mounth,0 AS proccode,ContainTax,bedbes,CalCulateKind,AccTopicCode,
                      AccDetailCode,AccCTopicCode,AccCTopicCode2,AccCTopicCode3,ShowListKind
FROM         Pay.ContainTaxWithPerson(@Mounth,@Year,@YearMounth,@InterdictType,@PersonelNoFrom,@PersonelNoTo,0,3,0) ContainTaxWithPerson
UNION ALL
SELECT     FunctionID,FormInfoID,PersonelNo,ProjectID,OfficeCode,JobCode,SalaryID,Mounth,0 AS proccode,TaxValue,bedbes,CalCulateKind,AccTopicCode,
                      AccDetailCode,AccCTopicCode,AccCTopicCode2, AccCTopicCode3,ShowListKind
FROM         Pay.ContainTaxWithPerson(@Mounth,@Year,@YearMounth,@InterdictType,@PersonelNoFrom,@PersonelNoTo,2,2,0) ContainTaxWithPerson
UNION ALL
SELECT     *
FROM         Pay.Insourance(@Mounth,@Year,@YearMounth,@InterdictType,@PersonelNoFrom,@PersonelNoTo , @ArchiveID) Insourance
UNION ALL
SELECT     *
FROM         Pay.InsouranceContain(@Mounth,@Year,@YearMounth,@InterdictType,@PersonelNoFrom,@PersonelNoTo ,@ArchiveID) InsouranceContain
UNION ALL
SELECT     *
FROM         Pay.InsouranceEmployeeshare(@Mounth,@Year,@YearMounth,@InterdictType,@PersonelNoFrom,@PersonelNoTo ,@ArchiveID) InsouranceEmployeeshare
UNION ALL
SELECT     *
FROM         Pay.InsouranceEmployershare(@Mounth,@Year,@YearMounth,@InterdictType,@PersonelNoFrom,@PersonelNoTo ,@ArchiveID) InsouranceEmployershare
)
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO



--------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------
SET QUOTED_IDENTIFIER ON 
GO
--SET ANSI_NULLS OFF 
GO

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
--------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------
